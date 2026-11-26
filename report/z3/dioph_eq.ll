Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/dioph_eq?download=true
inline.NumInlined: 4408
inline.NumDeleted: 1901
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj:bb.a
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bj
  store ptr %.020, ptr %i.bk, align 8, !tbaa !262
  br label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS1_15_Hash_node_baseEPNS1_10_Hash_nodeIjLb0EEE.exit

_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS1_15_Hash_node_baseEPNS1_10_Hash_nodeIjLb0EEE.exit: ; preds = %bb.i, %bb.l, %bb.m, %bb.n, %bb.o
  %.11958 = phi ptr [ %.1195967, %bb.i ], [ %.1195968, %bb.l ], [ %.119, %bb.m ], [ %.119, %bb.n ], [ %.119, %bb.o ] ; 2 uses
  %.02056 = phi ptr [ %.0205769, %bb.i ], [ %.0205770, %bb.l ], [ %.020, %bb.m ], [ %.020, %bb.n ], [ %.020, %bb.o ]
  %i.bl = load ptr, ptr %.11958, align 8, !tbaa !216
  store ptr %i.bl, ptr %.02056, align 8, !tbaa !216
  tail call void @_ZdlPvm(ptr noundef nonnull %.11958, i64 noundef 16) #22
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !270
  %i.bn = add i64 %i.bm, -1
  store i64 %i.bn, ptr %i.a, align 8, !tbaa !270
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i, %.lr.ph, %..loopexit_crit_edge21.i, %bb.d, %bb.b, %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS1_15_Hash_node_baseEPNS1_10_Hash_nodeIjLb0EEE.exit
  %.1 = phi i64 [ 1, %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS1_15_Hash_node_baseEPNS1_10_Hash_nodeIjLb0EEE.exit ], [ 0, %.lr.ph ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %..loopexit_crit_edge21.i ], [ 0, %.lr.ph.i ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIjSt4pairIKjSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEESaIS9_ENSt8__detail10_Select1stES6_S4_NSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNSB_15_Hash_node_baseEPNSB_10_Hash_nodeIS9_Lb0EEE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !163    ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %1 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !262  ; 2 uses
  %i.d = icmp eq ptr %2, %i.c
  %i.e = load ptr, ptr %3, align 8, !tbaa !216    ; 4 uses
  %.not18 = icmp eq ptr %i.e, null                ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %.not18, label %._crit_edge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !164
  %i.i = load i32, ptr %i.f, align 4, !tbaa !205
  %i.j = zext i32 %i.i to i64
  %i.k = urem i64 %i.j, %i.h                      ; 2 uses
  %.not9.i = icmp eq i64 %i.k, %1
  br i1 %.not9.i, label %_ZNSt10_HashtableIjSt4pairIKjSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEESaIS9_ENSt8__detail10_Select1stES6_S4_NSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSB_10_Hash_nodeIS9_Lb0EEEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.k
  store ptr %i.c, ptr %i.l, align 8, !tbaa !262
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.m, %2
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  store ptr %i.e, ptr %i.m, align 8, !tbaa !283
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  store ptr null, ptr %i.b, align 8, !tbaa !262
  br label %_ZNSt10_HashtableIjSt4pairIKjSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEESaIS9_ENSt8__detail10_Select1stES6_S4_NSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSB_10_Hash_nodeIS9_Lb0EEEm.exit

bb.g:                                             ; preds = %bb.a
  br i1 %.not18, label %_ZNSt10_HashtableIjSt4pairIKjSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEESaIS9_ENSt8__detail10_Select1stES6_S4_NSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSB_10_Hash_nodeIS9_Lb0EEEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !164
  %i.r = load i32, ptr %i.o, align 4, !tbaa !205
  %i.s = zext i32 %i.r to i64
  %i.t = urem i64 %i.s, %i.q                      ; 2 uses
  %.not17 = icmp eq i64 %i.t, %1
  br i1 %.not17, label %_ZNSt10_HashtableIjSt4pairIKjSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEESaIS9_ENSt8__detail10_Select1stES6_S4_NSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSB_10_Hash_nodeIS9_Lb0EEEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  store ptr %2, ptr %i.u, align 8, !tbaa !262
  br label %_ZNSt10_HashtableIjSt4pairIKjSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEESaIS9_ENSt8__detail10_Select1stES6_S4_NSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSB_10_Hash_nodeIS9_Lb0EEEm.exit

_ZNSt10_HashtableIjSt4pairIKjSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEESaIS9_ENSt8__detail10_Select1stES6_S4_NSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSB_10_Hash_nodeIS9_Lb0EEEm.exit: ; preds = %bb.f, %bb.c, %bb.h, %bb.i, %bb.g
  %i.v = load ptr, ptr %3, align 8, !tbaa !216    ; 2 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !216
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !282  ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt10_HashtableIjSt4pairIKjSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEESaIS9_ENSt8__detail10_Select1stES6_S4_NSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSB_10_Hash_nodeIS9_Lb0EEEm.exit, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i ], [ %i.y, %_ZNSt10_HashtableIjSt4pairIKjSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEESaIS9_ENSt8__detail10_Select1stES6_S4_NSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSB_10_Hash_nodeIS9_Lb0EEEm.exit ] ; 2 uses
  %i.z = load ptr, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !216 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i.i, i64 noundef 16) #22
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !16

_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNSt10_HashtableIjSt4pairIKjSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEESaIS9_ENSt8__detail10_Select1stES6_S4_NSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSB_10_Hash_nodeIS9_Lb0EEEm.exit
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !281
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !280
  %i.ad = shl i64 %i.ac, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.ad, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !281 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEELb0EEEEE18_M_deallocate_nodeEPSC_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !280
  %i.ai = shl i64 %i.ah, 3
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #22
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEELb0EEEEE18_M_deallocate_nodeEPSC_.exit

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEELb0EEEEE18_M_deallocate_nodeEPSC_.exit: ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i, %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef 72) #22
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !268
  %i.al = add i64 %i.ak, -1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !268
  ret ptr %i.v
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !282  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !216 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 16) #22
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !16

_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !281
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !280
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !281    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !280
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #22
  br label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !282  ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIjLb0EEEEE19_M_deallocate_nodesEPS2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.06.i = phi ptr [ %i.c, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i, align 8, !tbaa !216 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i, i64 noundef 16) #22
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIjLb0EEEEE19_M_deallocate_nodesEPS2_.exit, label %.lr.ph.i, !llvm.loop !16

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIjLb0EEEEE19_M_deallocate_nodesEPS2_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !281
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !280
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !261
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !216  ; 4 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.critedge, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !237    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !237  ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %_ZNSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !237  ; 2 uses
  %i.k = icmp eq ptr %i.e, %i.j
  br i1 %i.k, label %_ZNSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit, label %.lr.ph, !llvm.loop !414

.lr.ph:                                           ; preds = %.preheader.i, %bb.c
  %.016.i35 = phi ptr [ %i.l, %bb.c ], [ %i.d, %.preheader.i ] ; 2 uses
  %i.l = load ptr, ptr %.016.i35, align 8, !tbaa !216 ; 4 uses
  %.not14.i = icmp eq ptr %i.l, null
  br i1 %.not14.i, label %.critedge, label %bb.c, !llvm.loop !414

_ZNSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit: ; preds = %bb.c, %.preheader.i
  %2 = phi ptr [ %i.g, %.preheader.i ], [ %i.j, %bb.c ]
  %i.m = phi ptr [ %i.d, %.preheader.i ], [ %i.l, %bb.c ]
  %.01115.i.lcssa = phi ptr [ %i.c, %.preheader.i ], [ %.016.i35, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !172  ; 2 uses
  %i.p = ptrtoint ptr %2 to i64
  %i.q = urem i64 %i.p, %i.o                      ; 2 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !171   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.q
  %.pre40 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !262
  br label %_ZNKSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit

bb.d:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %1, align 8, !tbaa !237    ; 3 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !172  ; 4 uses
  %i.v = urem i64 %i.s, %i.u                      ; 5 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !171    ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !262  ; 7 uses
  %.not.i24 = icmp eq ptr %i.y, null
  br i1 %.not.i24, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !216  ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !237
  %i.ac = icmp eq ptr %i.r, %i.ab
  br i1 %i.ac, label %_ZNKSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread, label %.lr.ph.i

_ZNKSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v ; 2 uses
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !216 ; 2 uses
  %.not18.i2655 = icmp eq ptr %i.ae, null
  br i1 %.not18.i2655, label %._crit_edge.i.i, label %bb.i

bb.f:                                             ; preds = %bb.g
  %i.af = icmp eq ptr %i.r, %i.ai
  br i1 %i.af, label %_ZNKSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit, label %.lr.ph.i, !llvm.loop !8

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.020.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ] ; 2 uses
  %i.ag = load ptr, ptr %.020.i, align 8, !tbaa !216 ; 4 uses
  %.not18.i = icmp eq ptr %i.ag, null
  br i1 %.not18.i, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !237 ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = urem i64 %i.aj, %i.u
  %.not19.i = icmp eq i64 %i.ak, %i.v
  br i1 %.not19.i, label %bb.f, label %..loopexit_crit_edge21.i, !llvm.loop !8

..loopexit_crit_edge21.i:                         ; preds = %bb.g
  br label %.critedge, !llvm.loop !8

_ZNKSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit: ; preds = %bb.f, %_ZNSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit
  %i.al = phi i64 [ %i.o, %_ZNSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit ], [ %i.u, %bb.f ] ; 2 uses
  %i.am = phi ptr [ %.pre40, %_ZNSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit ], [ %i.y, %bb.f ] ; 3 uses
  %i.an = phi ptr [ %.pre, %_ZNSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit ], [ %i.w, %bb.f ] ; 3 uses
  %.020 = phi ptr [ %.01115.i.lcssa, %_ZNSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit ], [ %.020.i, %bb.f ] ; 7 uses
  %.119 = phi ptr [ %i.m, %_ZNSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit ], [ %i.ag, %bb.f ] ; 6 uses
  %.017 = phi i64 [ %i.q, %_ZNSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit ], [ %i.v, %bb.f ] ; 3 uses
  %i.ao = icmp eq ptr %.020, %i.am
  %i.ap = load ptr, ptr %.119, align 8, !tbaa !216 ; 3 uses
  %.not18.i26 = icmp eq ptr %i.ap, null           ; 2 uses
  br i1 %i.ao, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZNKSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.017 ; 2 uses
  br i1 %.not18.i26, label %._crit_edge.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread, %bb.h
  %i.ar = phi i64 [ %i.u, %_ZNKSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %i.al, %bb.h ]
  %i.as = phi ptr [ %i.y, %_ZNKSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %i.am, %bb.h ] ; 2 uses
  %i.at = phi ptr [ %i.w, %_ZNKSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %i.an, %bb.h ]
  %.0205769 = phi ptr [ %i.y, %_ZNKSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %.020, %bb.h ] ; 2 uses
  %.1195967 = phi ptr [ %i.z, %_ZNKSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %.119, %bb.h ] ; 2 uses
  %.0176066 = phi i64 [ %i.v, %_ZNKSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %.017, %bb.h ]
  %i.au = phi ptr [ %i.ad, %_ZNKSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %i.aq, %bb.h ]
  %i.av = phi ptr [ %i.ae, %_ZNKSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %i.ap, %bb.h ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !237
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = urem i64 %i.ay, %i.ar                   ; 2 uses
  %.not9.i.i = icmp eq i64 %i.az, %.0176066
  br i1 %.not9.i.i, label %_ZNSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.az
  store ptr %i.as, ptr %i.ba, align 8, !tbaa !262
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNKSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread, %bb.j, %bb.h
  %i.bb = phi ptr [ %i.y, %_ZNKSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %i.as, %bb.j ], [ %i.am, %bb.h ]
  %.0205770 = phi ptr [ %i.y, %_ZNKSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %.0205769, %bb.j ], [ %.020, %bb.h ]
  %.1195968 = phi ptr [ %i.z, %_ZNKSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %.1195967, %bb.j ], [ %.119, %bb.h ]
  %i.bc = phi ptr [ %i.ad, %_ZNKSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %i.au, %bb.j ], [ %i.aq, %bb.h ]
  %i.bd = phi ptr [ null, %_ZNKSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %i.av, %bb.j ], [ null, %bb.h ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.bb
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !284
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  store ptr null, ptr %i.bc, align 8, !tbaa !262
  br label %_ZNSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit

bb.m:                                             ; preds = %_ZNKSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit
  br i1 %.not18.i26, label %_ZNSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !237
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = urem i64 %i.bi, %i.al                   ; 2 uses
  %.not17.i = icmp eq i64 %i.bj, %.017
  br i1 %.not17.i, label %_ZNSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bj
  store ptr %.020, ptr %i.bk, align 8, !tbaa !262
  br label %_ZNSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit

_ZNSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit: ; preds = %bb.i, %bb.l, %bb.m, %bb.n, %bb.o
  %.11958 = phi ptr [ %.1195967, %bb.i ], [ %.1195968, %bb.l ], [ %.119, %bb.m ], [ %.119, %bb.n ], [ %.119, %bb.o ] ; 2 uses
  %.02056 = phi ptr [ %.0205769, %bb.i ], [ %.0205770, %bb.l ], [ %.020, %bb.m ], [ %.020, %bb.n ], [ %.020, %bb.o ]
  %i.bl = load ptr, ptr %.11958, align 8, !tbaa !216
  store ptr %i.bl, ptr %.02056, align 8, !tbaa !216
  tail call void @_ZdlPvm(ptr noundef nonnull %.11958, i64 noundef 16) #22
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !261
  %i.bn = add i64 %i.bm, -1
  store i64 %i.bn, ptr %i.a, align 8, !tbaa !261
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i, %.lr.ph, %..loopexit_crit_edge21.i, %bb.d, %bb.b, %_ZNSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit
  %.1 = phi i64 [ 1, %_ZNSt10_HashtableIPKN2lp8lar_termES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit ], [ 0, %.lr.ph ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %..loopexit_crit_edge21.i ], [ 0, %.lr.ph.i ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2lp8dioph_eq3imp26eliminate_last_term_columnEv(ptr noundef nonnull align 8 dereferenceable(1328) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.rational, align 8            ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !221
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !220
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24
  %i.j = trunc i64 %i.i to i32
  %i.k = add i32 %i.j, -1                         ; 3 uses
  tail call void @_ZN2lp8dioph_eq3imp42make_sure_j_is_in_the_last_row_of_l_matrixEv(ptr noundef nonnull align 8 dereferenceable(1328) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !285  ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store i32 0, ptr %1, align 8, !tbaa !157
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.q = load i8, ptr %i.p, align 4
  %i.r = and i8 %i.q, -4                          ; 2 uses
  store i8 %i.r, ptr %i.p, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.s, align 8, !tbaa !158
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store i32 1, ptr %i.t, align 8, !tbaa !157
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.v = load i8, ptr %i.u, align 4
  %i.w = and i8 %i.v, -4
  store i8 %i.w, ptr %i.u, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr null, ptr %i.x, align 8, !tbaa !158
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !287  ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.n, i64 -16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !287 ; 2 uses
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %_ZN8rationalaSERKS_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %.sroa.051.065 = phi ptr [ %i.as, %.critedge ], [ %i.y, %bb.a ] ; 6 uses
  %i.ac = load i32, ptr %.sroa.051.065, align 8, !tbaa !289
  %.not = icmp eq i32 %i.ac, %i.k
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.051.065, i64 8 ; 2 uses
  %i.ae = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !213 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.051.065, i64 12
  %i.ag = load i8, ptr %i.af, align 4
  %i.ah = and i8 %i.ag, 1
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aj = load i32, ptr %i.ad, align 8, !tbaa !157
  store i32 %i.aj, ptr %1, align 8, !tbaa !157
  store i8 %i.r, ptr %i.p, align 4
end_hunk_0
begin_hunk_1_@_ZN2lp8dioph_eq3imp21deep_remove_fresh_varEj:bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.jl, align 8, !tbaa !199
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 24 ; 3 uses
  store ptr %i.jn, ptr %i.jm, align 8, !tbaa !257
  %i.jo = load ptr, ptr %4, align 8, !tbaa !235   ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %bb.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.jr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !258 ; 3 uses
  %i.jt = icmp ult i64 %i.js, 16
  call void @llvm.assume(i1 %i.jt)
  %i.ju = add nuw nsw i64 %i.js, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jn, ptr noundef nonnull align 8 dereferenceable(1) %i.jp, i64 %i.ju, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bc
  store ptr %i.jo, ptr %i.jm, align 8, !tbaa !235
  %i.jv = load i64, ptr %i.jp, align 8, !tbaa !174
  store i64 %i.jv, ptr %i.jn, align 8, !tbaa !174
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !258
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.bd
  %i.jw = phi i64 [ %i.js, %bb.bd ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.jx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  store i64 %i.jw, ptr %i.jy, align 8, !tbaa !258
  store ptr %i.jp, ptr %4, align 8, !tbaa !235
  store i64 0, ptr %i.jx, align 8, !tbaa !258
  store i8 0, ptr %i.jp, align 8, !tbaa !174
  invoke void @__cxa_throw(ptr nonnull %i.jl, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #24
          to label %bb.bh unwind label %bb.be

bb.be:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.jz = landingpad { ptr, i32 }
          cleanup
  %i.ka = load ptr, ptr %4, align 8, !tbaa !235   ; 2 uses
  %i.kb = icmp eq ptr %i.ka, %i.jp
  br i1 %i.kb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.be
  %i.kc = load i64, ptr %i.jp, align 8, !tbaa !174
  %i.kd = add i64 %i.kc, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.kd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.body

bb.bf:                                            ; preds = %bb.bb
  %i.ke = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @__cxa_free_exception(ptr %i.jl) #20
  br label %.body

bb.bg:                                            ; preds = %bb.ba
  %i.kf = zext i32 %i.ji to i64
  %i.kg = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.jc, i64 noundef %i.kf)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc49:                                         ; preds = %bb.bg
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 2 uses
  store ptr %i.kh, ptr %i.aw, align 8, !tbaa !204
  store i32 %i.jg, ptr %i.kg, align 4, !tbaa !205
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i.backedge

bb.bh:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

bb.bi:                                            ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i7.i
  %i.ki = getelementptr inbounds i8, ptr %i.iu, i64 -4
  store i32 %i.io, ptr %i.ki, align 4, !tbaa !205
  %.not1218.i.i.i = icmp eq i32 %.0.i16.i.i.i.ph, %i.io
  br i1 %.not1218.i.i.i, label %.noexc43, label %.lr.ph.preheader.i.i8.i

.lr.ph.preheader.i.i8.i:                          ; preds = %bb.bi
  %i.kj = zext i32 %i.io to i64
  %i.kk = zext i32 %.0.i16.i.i.i.ph to i64        ; 2 uses
  %i.kl = getelementptr [4 x i8], ptr %i.iu, i64 %i.kk
  %i.km = sub nsw i64 %i.kj, %i.kk
  %i.kn = shl nsw i64 %i.km, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.kl, i8 0, i64 %i.kn, i1 false), !tbaa !205
  br label %.noexc43

.noexc43:                                         ; preds = %.lr.ph.preheader.i.i8.i, %bb.bi, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i3.i
  %i.ko = phi ptr [ %i.iu, %.lr.ph.preheader.i.i8.i ], [ %i.ip, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i3.i ], [ %i.iu, %bb.bi ]
  %i.kp = load i32, ptr %i.au, align 8, !tbaa !251 ; 2 uses
  %i.kq = load ptr, ptr %i.av, align 8, !tbaa !204 ; 2 uses
  %i.kr = zext i32 %i.fz to i64
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %i.kr
  store i32 %i.kp, ptr %i.ks, align 4, !tbaa !205
  %i.kt = zext i32 %i.kp to i64
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %i.kt
  store i32 %i.fz, ptr %i.ku, align 4, !tbaa !205
  %i.kv = load i32, ptr %i.au, align 8, !tbaa !251
  %i.kw = add i32 %i.kv, 1
  store i32 %i.kw, ptr %i.au, align 8, !tbaa !251
  br label %_ZN16indexed_uint_set6insertEj.exit.i

_ZN16indexed_uint_set6insertEj.exit.i:            ; preds = %.noexc43, %_ZNK16indexed_uint_set8containsEj.exit.i.i
  %i.kx = phi ptr [ %i.kq, %.noexc43 ], [ %i.fy, %_ZNK16indexed_uint_set8containsEj.exit.i.i ]
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i, i64 12 ; 2 uses
  %i.kz = icmp eq ptr %i.ky, %i.fw
  br i1 %i.kz, label %_ZN2lp8dioph_eq3imp26handle_stale_var_in_matrixEj.exit, label %.lr.ph.i

_ZN2lp8dioph_eq3imp26handle_stale_var_in_matrixEj.exit: ; preds = %.lr.ph.i.i.i.i.i.i24, %.preheader130, %_ZN16indexed_uint_set6insertEj.exit.i, %bb.n, %..loopexit_crit_edge21.i.i.i.i.i.i28, %_ZNSt13unordered_mapIjSt6vectorIj13std_allocatorIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE5eraseENSt8__detail14_Node_iteratorISA_Lb0ELb0EEE.exit, %bb.an
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.085.0124, i64 4 ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.af
  br i1 %i.lb, label %._crit_edge.loopexit, label %bb.l

_ZNK2lp7bij_mapISt4pairINS_8lar_termEjEE14has_second_keyEj.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.c, %bb.e, %..loopexit_crit_edge21.i.i.i.i.i.i, %_ZNSt6vectorIj13std_allocatorIjEED2Ev.exit
  ret void

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i57, %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn14.pn.pn.pn = phi { ptr, i32 } [ %i.hy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i57 ], [ %i.ke, %bb.bf ], [ %i.id, %bb.av ], [ %i.jz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIj13std_allocatorIjEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  resume { ptr, i32 } %.pn14.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIj13std_allocatorIjEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !201    ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIj13std_allocatorIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %_ZNSt12_Vector_baseIj13std_allocatorIjEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #21
  unreachable

_ZNSt12_Vector_baseIj13std_allocatorIjEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

declare void @_Z26notify_assertion_violationPKciS0_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z18invoke_exit_actionj(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2lp8dioph_eq3imp28collect_dependent_fresh_varsEjRSt6vectorIj13std_allocatorIjEE(ptr noundef nonnull align 8 dereferenceable(1328) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct._key_data, align 8          ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.std::vector.6", align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 768
  %.sroa.0108.0141 = load ptr, ptr %i.b, align 8, !tbaa !216 ; 2 uses
  %i.c = icmp eq ptr %.sroa.0108.0141, null
  br i1 %i.c, label %_ZNSt6vectorIj13std_allocatorIjEED2Ev.exit, label %.lr.ph143

.lr.ph143:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit
  %.pre = load ptr, ptr %4, align 8, !tbaa !273   ; 4 uses
  %i.n = icmp eq ptr %.pre, %i.fy
  br i1 %i.n, label %._crit_edge147.thread, label %.lr.ph146

.lr.ph146:                                        ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.pre171 = load ptr, ptr %i.o, align 8, !tbaa !200
  %.pre172 = load ptr, ptr %i.p, align 8, !tbaa !298
  br label %bb.aj

bb.b:                                             ; preds = %.lr.ph143, %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit
  %i.q = phi ptr [ null, %.lr.ph143 ], [ %i.fv, %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit ] ; 11 uses
  %i.r = phi ptr [ null, %.lr.ph143 ], [ %i.fw, %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit ] ; 20 uses
  %i.s = phi ptr [ null, %.lr.ph143 ], [ %i.fx, %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit ] ; 9 uses
  %i.t = phi ptr [ null, %.lr.ph143 ], [ %i.fy, %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit ] ; 12 uses
  %.sroa.0108.0142 = phi ptr [ %.sroa.0108.0141, %.lr.ph143 ], [ %.sroa.0108.0, %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit ] ; 2 uses
  %5 = ptrtoaddr ptr %i.s to i64
  %6 = ptrtoaddr ptr %i.q to i64
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0108.0142, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !297  ; 16 uses
  %i.w = icmp eq i32 %i.v, %1
  br i1 %i.w, label %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %2, align 8, !tbaa !273    ; 4 uses
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !273  ; 3 uses
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = ashr i64 %i.ab, 4                       ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.ae = and i64 %i.ab, -16
  %scevgep.i.i.i = getelementptr i8, ptr %i.x, i64 %i.ae ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i ], [ %i.ar, %bb.h ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.aq, %bb.h ] ; 9 uses
  %i.af = load i32, ptr %.sroa.032.051.i.i.i, align 4, !tbaa !205
  %i.ag = icmp eq i32 %i.af, %i.v
  br i1 %i.ag, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !205
  %i.aj = icmp eq i32 %i.ai, %i.v
  br i1 %i.aj, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit.loopexit.split.loop.exit224, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !205
  %i.am = icmp eq i32 %i.al, %i.v
  br i1 %i.am, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit.loopexit.split.loop.exit222, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !205
  %i.ap = icmp eq i32 %i.ao, %i.v
  br i1 %i.ap, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit.loopexit.split.loop.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.ar = add nsw i64 %.052.i.i.i, -1
  %i.as = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.as, label %bb.d, label %._crit_edge.loopexit.i.i.i, !llvm.loop !20

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.h
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.z, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.c
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.ab, %bb.c ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.x, %bb.c ] ; 5 uses
  %i.at = ashr exact i64 %.pre-phi61.i.i.i, 2
  switch i64 %i.at, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit.thread [
    i64 3, label %bb.i
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.au = load i32, ptr %.sroa.032.0.lcssa.i.i.i, align 4, !tbaa !205
  %i.av = icmp eq i32 %i.au, %i.v
  br i1 %i.av, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 4
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.j
  %.sroa.032.1.i.i.i = phi ptr [ %i.aw, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ax = load i32, ptr %.sroa.032.1.i.i.i, align 4, !tbaa !205
  %i.ay = icmp eq i32 %i.ax, %i.v
  br i1 %i.ay, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 4
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.k
  %.sroa.032.2.i.i.i = phi ptr [ %i.az, %bb.k ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.ba = load i32, ptr %.sroa.032.2.i.i.i, align 4, !tbaa !205
  %i.bb = icmp eq i32 %i.ba, %i.v
  %spec.select.i.i.i = select i1 %i.bb, ptr %.sroa.032.2.i.i.i, ptr %i.y
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit.loopexit.split.loop.exit222: ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit.loopexit.split.loop.exit224: ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit: ; preds = %bb.d, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit.loopexit.split.loop.exit222, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit.loopexit.split.loop.exit224, %._crit_edge._crit_edge57.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.i ], [ %i.be, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit.loopexit.split.loop.exit224 ], [ %i.bd, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit.loopexit.split.loop.exit222 ], [ %i.bc, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.d ]
  %i.bf = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.y
  br i1 %i.bf, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit.thread, label %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit
  %i.bg = load i64, ptr %i.e, align 8, !tbaa !299
  %.not.not.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.not.i.i.i, label %.preheader154, label %bb.m

.preheader154:                                    ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit.thread, %bb.l
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.l ], [ %i.h, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit.thread ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !216 ; 4 uses
  %i.bh = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %i.bh, label %.loopexit.i, label %bb.l

bb.l:                                             ; preds = %.preheader154
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !205
  %i.bk = icmp eq i32 %i.v, %i.bj
  br i1 %i.bk, label %.loopexit120, label %.preheader154, !llvm.loop !18

bb.m:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit.thread
  %i.bl = zext i32 %i.v to i64
  %i.bm = load i64, ptr %i.g, align 8, !tbaa !160 ; 2 uses
  %i.bn = urem i64 %i.bl, %i.bm                   ; 2 uses
  %i.bo = load ptr, ptr %i.f, align 8, !tbaa !159
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !262 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !216 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !205
  %i.bu = icmp eq i32 %i.v, %i.bt
  br i1 %i.bu, label %.loopexit120, label %.lr.ph.i.i.i.i.i

bb.o:                                             ; preds = %bb.p
  %i.bv = icmp eq i32 %i.v, %i.by
  br i1 %i.bv, label %.loopexit120, label %.lr.ph.i.i.i.i.i, !llvm.loop !19

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %bb.o
  %.020.i.i.i.i.i = phi ptr [ %i.bw, %bb.o ], [ %i.br, %bb.n ]
  %i.bw = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !216 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !205 ; 2 uses
  %i.bz = zext i32 %i.by to i64
  %i.ca = urem i64 %i.bz, %i.bm
  %.not19.i.i.i.i.i = icmp eq i64 %i.ca, %i.bn
  br i1 %.not19.i.i.i.i.i, label %bb.o, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !19

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.p
  br label %.loopexit.i, !llvm.loop !19

.loopexit.i:                                      ; preds = %bb.m, %.lr.ph.i.i.i.i.i, %.preheader154, %..loopexit_crit_edge21.i.i.i.i.i
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.5, i32 noundef 186, ptr noundef nonnull @.str.6)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit.i
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc40:                                         ; preds = %.noexc
  unreachable

.loopexit120:                                     ; preds = %bb.o, %bb.l, %bb.n
  %.sroa.06.1.i.i5.i = phi ptr [ %i.br, %bb.n ], [ %.sroa.06.0.i.i.i, %bb.l ], [ %i.bw, %bb.o ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i5.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %1, ptr %i.a, align 4, !tbaa !205
  %i.cc = invoke noundef ptr @_ZNK9table2mapI17default_map_entryIj8rationalE6u_hash4u_eqE9find_coreERKj(ptr noundef nonnull align 8 dereferenceable(28) %i.cb, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %.loopexit120
  %.not = icmp eq ptr %i.cc, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 %i.v, ptr %i.t, align 4, !tbaa !205
  %i.cd = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  store ptr %i.cd, ptr %i.i, align 8, !tbaa !200
  br label %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit

bb.t:                                             ; preds = %bb.r
  %i.ce = ptrtoint ptr %i.t to i64
  %i.cf = ptrtoint ptr %i.r to i64                ; 3 uses
  %i.cg = sub i64 %i.ce, %i.cf                    ; 3 uses
  %i.ch = icmp eq i64 %i.cg, 9223372036854775804
  br i1 %i.ch, label %.invoke, label %_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.t
  %i.ci = ashr exact i64 %i.cg, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ci, i64 1)
  %i.cj = add nsw i64 %.sroa.speculated.i.i.i, %i.ci ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ci
  %i.cl = call i64 @llvm.umin.i64(i64 %i.cj, i64 2305843009213693951)
  %i.cm = select i1 %i.ck, i64 2305843009213693951, i64 %i.cl ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cm, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cn = shl nuw nsw i64 %i.cm, 2
  %i.co = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.cn)
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc45:                                         ; preds = %_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cg
  store i32 %i.v, ptr %i.cp, align 4, !tbaa !205
  %.not10.i.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i42.preheader

.lr.ph.i.i.i.i.i42.preheader:                     ; preds = %.noexc45
  %i.cq = ptrtoaddr ptr %i.co to i64
  %i.cr = add i64 %5, -4
  %i.cs = sub i64 %i.cr, %i.cf                    ; 2 uses
  %i.ct = lshr i64 %i.cs, 2
  %i.cu = add nuw nsw i64 %i.ct, 1                ; 2 uses
  %min.iters.check258 = icmp ult i64 %i.cs, 28
  %i.cv = sub i64 %i.cf, %i.cq
  %diff.check260 = icmp ugt i64 %i.cv, -32
  %or.cond = or i1 %min.iters.check258, %diff.check260
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i42.preheader302, label %vector.ph261

vector.ph261:                                     ; preds = %.lr.ph.i.i.i.i.i42.preheader
  %n.vec262 = and i64 %i.cu, 9223372036854775800  ; 3 uses
  %i.cw = shl i64 %n.vec262, 2                    ; 2 uses
  %i.cx = getelementptr i8, ptr %i.co, i64 %i.cw  ; 2 uses
  %i.cy = getelementptr i8, ptr %i.r, i64 %i.cw
  br label %vector.body263

vector.body263:                                   ; preds = %vector.body263, %vector.ph261
  %index264 = phi i64 [ 0, %vector.ph261 ], [ %index.next269, %vector.body263 ] ; 2 uses
  %i.cz = shl i64 %index264, 2                    ; 2 uses
  %next.gep265 = getelementptr i8, ptr %i.co, i64 %i.cz ; 2 uses
  %next.gep266 = getelementptr i8, ptr %i.r, i64 %i.cz ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !456)
  call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.da = getelementptr i8, ptr %next.gep266, i64 16
  %wide.load267 = load <4 x i32>, ptr %next.gep266, align 4, !tbaa !205, !alias.scope !457
  %wide.load268 = load <4 x i32>, ptr %i.da, align 4, !tbaa !205, !alias.scope !457
  %i.db = getelementptr i8, ptr %next.gep265, i64 16
  store <4 x i32> %wide.load267, ptr %next.gep265, align 4, !tbaa !205, !alias.scope !456
  store <4 x i32> %wide.load268, ptr %i.db, align 4, !tbaa !205, !alias.scope !456
  %index.next269 = add nuw i64 %index264, 8       ; 2 uses
  %i.dc = icmp eq i64 %index.next269, %n.vec262
  br i1 %i.dc, label %middle.block270, label %vector.body263, !llvm.loop !444

middle.block270:                                  ; preds = %vector.body263
  %cmp.n271 = icmp eq i64 %i.cu, %n.vec262
  br i1 %cmp.n271, label %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i42.preheader302

.lr.ph.i.i.i.i.i42.preheader302:                  ; preds = %.lr.ph.i.i.i.i.i42.preheader, %middle.block270
  %.012.i.i.i.i.i.ph = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i42.preheader ], [ %i.cx, %middle.block270 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i42.preheader ], [ %i.cy, %middle.block270 ]
  br label %.lr.ph.i.i.i.i.i42

.lr.ph.i.i.i.i.i42:                               ; preds = %.lr.ph.i.i.i.i.i42.preheader302, %.lr.ph.i.i.i.i.i42
  %.012.i.i.i.i.i = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i42 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i42.preheader302 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i42 ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i42.preheader302 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !456)
  call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.dd = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !205, !alias.scope !457
  store i32 %i.dd, ptr %.012.i.i.i.i.i, align 4, !tbaa !205, !alias.scope !456
  %i.de = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i43 = icmp eq ptr %i.de, %i.s
  br i1 %.not.i.i.i.i.i43, label %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i42, !llvm.loop !445

_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i42, %middle.block270, %.noexc45
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.co, %.noexc45 ], [ %i.cx, %middle.block270 ], [ %i.df, %.lr.ph.i.i.i.i.i42 ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.r)
          to label %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i: ; preds = %bb.u, %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i
  store ptr %i.co, ptr %4, align 8, !tbaa !201
  store ptr %i.dg, ptr %i.i, align 8, !tbaa !200
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cm ; 3 uses
  store ptr %i.dh, ptr %i.j, align 8, !tbaa !298
  br label %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit

bb.v:                                             ; preds = %bb.q
  %i.di = load ptr, ptr %2, align 8, !tbaa !273   ; 2 uses
  %i.dj = load ptr, ptr %i.d, align 8, !tbaa !273 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i5.i, i64 24
  br label %bb.x

bb.w:                                             ; preds = %.critedge
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.093.0140, i64 4 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.dj
  br i1 %i.dn, label %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit, label %bb.x

bb.x:                                             ; preds = %.lr.ph, %bb.w
  %.sroa.093.0140 = phi ptr [ %i.di, %.lr.ph ], [ %i.dm, %bb.w ] ; 2 uses
  %i.do = load i32, ptr %.sroa.093.0140, align 4, !tbaa !205 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i32 %i.do, ptr %3, align 8, !tbaa !302
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.l, align 8, !tbaa !157
  store ptr null, ptr %i.m, align 8, !tbaa !158
  %i.dp = load i32, ptr %i.dl, align 8, !tbaa !264 ; 3 uses
  %i.dq = add i32 %i.dp, -1
  %i.dr = and i32 %i.dq, %i.do                    ; 3 uses
  %i.ds = load ptr, ptr %i.cb, align 8, !tbaa !263 ; 3 uses
  %i.dt = zext i32 %i.dr to i64
  %.idx.i.i = mul nuw nsw i64 %i.dt, 48
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.idx.i.i ; 2 uses
  %i.dv = zext i32 %i.dp to i64
  %i.dw = getelementptr inbounds nuw [48 x i8], ptr %i.ds, i64 %i.dv
  %.not30.i.i = icmp eq i32 %i.dr, %i.dp
  br i1 %.not30.i.i, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %bb.aa, %bb.x
  %.not2732.i.i = icmp eq i32 %i.dr, 0
  br i1 %.not2732.i.i, label %_ZNK14core_hashtableI17default_map_entryIj8rationalEN9table2mapIS2_6u_hash4u_eqE15entry_hash_procENS6_13entry_eq_procEE9find_coreERK9_key_dataIjS1_E.exit.i, label %.lr.ph34.i.i

.lr.ph.i.i:                                       ; preds = %bb.x, %bb.aa
  %.031.i.i = phi ptr [ %i.ee, %bb.aa ], [ %i.du, %bb.x ] ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !267
  switch i32 %i.dy, label %bb.aa [
    i32 2, label %bb.y
    i32 0, label %_ZNK14core_hashtableI17default_map_entryIj8rationalEN9table2mapIS2_6u_hash4u_eqE15entry_hash_procENS6_13entry_eq_procEE9find_coreERK9_key_dataIjS1_E.exit.i
  ]

bb.y:                                             ; preds = %.lr.ph.i.i
  %i.dz = load i32, ptr %.031.i.i, align 8, !tbaa !303
  %i.ea = icmp eq i32 %i.dz, %i.do
  br i1 %i.ea, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.eb = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 8
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !302
  %i.ed = icmp eq i32 %i.ec, %i.do
  br i1 %i.ed, label %_ZNK14core_hashtableI17default_map_entryIj8rationalEN9table2mapIS2_6u_hash4u_eqE15entry_hash_procENS6_13entry_eq_procEE9find_coreERK9_key_dataIjS1_E.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %.lr.ph.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ee, %i.dw
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !21

.lr.ph34.i.i:                                     ; preds = %.preheader.i.i, %bb.ad
  %.133.i.i = phi ptr [ %i.em, %bb.ad ], [ %i.ds, %.preheader.i.i ] ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.133.i.i, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !267
  switch i32 %i.eg, label %bb.ad [
    i32 2, label %bb.ab
    i32 0, label %_ZNK14core_hashtableI17default_map_entryIj8rationalEN9table2mapIS2_6u_hash4u_eqE15entry_hash_procENS6_13entry_eq_procEE9find_coreERK9_key_dataIjS1_E.exit.i
  ]

bb.ab:                                            ; preds = %.lr.ph34.i.i
  %i.eh = load i32, ptr %.133.i.i, align 8, !tbaa !303
  %i.ei = icmp eq i32 %i.eh, %i.do
  br i1 %i.ei, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ej = getelementptr inbounds nuw i8, ptr %.133.i.i, i64 8
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !302
  %i.el = icmp eq i32 %i.ek, %i.do
  br i1 %i.el, label %_ZNK14core_hashtableI17default_map_entryIj8rationalEN9table2mapIS2_6u_hash4u_eqE15entry_hash_procENS6_13entry_eq_procEE9find_coreERK9_key_dataIjS1_E.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %.lr.ph34.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %.133.i.i, i64 48 ; 2 uses
  %.not27.i.i = icmp eq ptr %i.em, %i.du
  br i1 %.not27.i.i, label %_ZNK14core_hashtableI17default_map_entryIj8rationalEN9table2mapIS2_6u_hash4u_eqE15entry_hash_procENS6_13entry_eq_procEE9find_coreERK9_key_dataIjS1_E.exit.i, label %.lr.ph34.i.i, !llvm.loop !22

_ZNK14core_hashtableI17default_map_entryIj8rationalEN9table2mapIS2_6u_hash4u_eqE15entry_hash_procENS6_13entry_eq_procEE9find_coreERK9_key_dataIjS1_E.exit.i: ; preds = %bb.z, %.lr.ph.i.i, %bb.ad, %bb.ac, %.lr.ph34.i.i, %.preheader.i.i
  %.026.i.i = phi i1 [ true, %.preheader.i.i ], [ true, %.lr.ph34.i.i ], [ false, %bb.ac ], [ true, %bb.ad ], [ false, %bb.z ], [ true, %.lr.ph.i.i ]
  %i.en = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !213 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.en, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %.noexc.i.i.i unwind label %bb.ae

.noexc.i.i.i:                                     ; preds = %_ZNK14core_hashtableI17default_map_entryIj8rationalEN9table2mapIS2_6u_hash4u_eqE15entry_hash_procENS6_13entry_eq_procEE9find_coreERK9_key_dataIjS1_E.exit.i
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.en, ptr noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %.critedge unwind label %bb.ae

bb.ae:                                            ; preds = %.noexc.i.i.i, %_ZNK14core_hashtableI17default_map_entryIj8rationalEN9table2mapIS2_6u_hash4u_eqE15entry_hash_procENS6_13entry_eq_procEE9find_coreERK9_key_dataIjS1_E.exit.i
  %i.eo = landingpad { ptr, i32 }
          catch ptr null
  %i.ep = extractvalue { ptr, i32 } %i.eo, 0
  call void @__clang_call_terminate(ptr %i.ep) #21
  unreachable

.critedge:                                        ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br i1 %.026.i.i, label %bb.w, label %bb.af

bb.af:                                            ; preds = %.critedge
  %.not.i49 = icmp eq ptr %i.t, %i.q
  br i1 %.not.i49, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 %i.v, ptr %i.t, align 4, !tbaa !205
  %i.eq = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  store ptr %i.eq, ptr %i.i, align 8, !tbaa !200
  br label %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit

bb.ah:                                            ; preds = %bb.af
  %i.er = ptrtoint ptr %i.t to i64
  %i.es = ptrtoint ptr %i.r to i64                ; 3 uses
  %i.et = sub i64 %i.er, %i.es                    ; 3 uses
  %i.eu = icmp eq i64 %i.et, 9223372036854775804
  br i1 %i.eu, label %.invoke, label %_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i50

_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i50: ; preds = %bb.ah
  %i.ev = ashr exact i64 %i.et, 2                 ; 3 uses
  %.sroa.speculated.i.i.i51 = call i64 @llvm.umax.i64(i64 %i.ev, i64 1)
  %i.ew = add nsw i64 %.sroa.speculated.i.i.i51, %i.ev ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.ev
  %i.ey = call i64 @llvm.umin.i64(i64 %i.ew, i64 2305843009213693951)
  %i.ez = select i1 %i.ex, i64 2305843009213693951, i64 %i.ey ; 3 uses
  %.not.i.i.i52 = icmp ne i64 %i.ez, 0
  call void @llvm.assume(i1 %.not.i.i.i52)
  %i.fa = shl nuw nsw i64 %i.ez, 2
  %i.fb = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.fa)
          to label %.noexc63 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc63:                                         ; preds = %_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i50
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.et
  store i32 %i.v, ptr %i.fc, align 4, !tbaa !205
  %.not10.i.i.i.i.i53 = icmp eq ptr %i.r, %i.q
  br i1 %.not10.i.i.i.i.i53, label %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i58, label %.lr.ph.i.i.i.i.i54.preheader

.lr.ph.i.i.i.i.i54.preheader:                     ; preds = %.noexc63
  %i.fd = ptrtoaddr ptr %i.fb to i64
  %i.fe = add i64 %6, -4
  %i.ff = sub i64 %i.fe, %i.es                    ; 2 uses
  %i.fg = lshr i64 %i.ff, 2
  %i.fh = add nuw nsw i64 %i.fg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ff, 28
  %i.fi = sub i64 %i.es, %i.fd
  %diff.check = icmp ugt i64 %i.fi, -32
  %or.cond293 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond293, label %.lr.ph.i.i.i.i.i54.preheader301, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i54.preheader
  %n.vec = and i64 %i.fh, 9223372036854775800     ; 3 uses
  %i.fj = shl i64 %n.vec, 2                       ; 2 uses
  %i.fk = getelementptr i8, ptr %i.fb, i64 %i.fj  ; 2 uses
  %i.fl = getelementptr i8, ptr %i.r, i64 %i.fj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fm = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fb, i64 %i.fm ; 2 uses
  %next.gep252 = getelementptr i8, ptr %i.r, i64 %i.fm ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !458)
  call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %i.fn = getelementptr i8, ptr %next.gep252, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep252, align 4, !tbaa !205, !alias.scope !459
  %wide.load253 = load <4 x i32>, ptr %i.fn, align 4, !tbaa !205, !alias.scope !459
  %i.fo = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !205, !alias.scope !458
  store <4 x i32> %wide.load253, ptr %i.fo, align 4, !tbaa !205, !alias.scope !458
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fp = icmp eq i64 %index.next, %n.vec
  br i1 %i.fp, label %middle.block, label %vector.body, !llvm.loop !449

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fh, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i58, label %.lr.ph.i.i.i.i.i54.preheader301

.lr.ph.i.i.i.i.i54.preheader301:                  ; preds = %.lr.ph.i.i.i.i.i54.preheader, %middle.block
  %.012.i.i.i.i.i55.ph = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.fk, %middle.block ]
  %.0911.i.i.i.i.i56.ph = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.fl, %middle.block ]
  br label %.lr.ph.i.i.i.i.i54

.lr.ph.i.i.i.i.i54:                               ; preds = %.lr.ph.i.i.i.i.i54.preheader301, %.lr.ph.i.i.i.i.i54
  %.012.i.i.i.i.i55 = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i54 ], [ %.012.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i54.preheader301 ] ; 2 uses
  %.0911.i.i.i.i.i56 = phi ptr [ %i.fr, %.lr.ph.i.i.i.i.i54 ], [ %.0911.i.i.i.i.i56.ph, %.lr.ph.i.i.i.i.i54.preheader301 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !458)
  call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %i.fq = load i32, ptr %.0911.i.i.i.i.i56, align 4, !tbaa !205, !alias.scope !459
  store i32 %i.fq, ptr %.012.i.i.i.i.i55, align 4, !tbaa !205, !alias.scope !458
  %i.fr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i56, i64 4 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i55, i64 4 ; 2 uses
  %.not.i.i.i.i.i57 = icmp eq ptr %i.fr, %i.q
  br i1 %.not.i.i.i.i.i57, label %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i58, label %.lr.ph.i.i.i.i.i54, !llvm.loop !450

_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i58: ; preds = %.lr.ph.i.i.i.i.i54, %middle.block, %.noexc63
  %.0.lcssa.i.i.i.i.i59 = phi ptr [ %i.fb, %.noexc63 ], [ %i.fk, %middle.block ], [ %i.fs, %.lr.ph.i.i.i.i.i54 ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i59, i64 4 ; 2 uses
  %.not.i23.i.i60 = icmp eq ptr %i.r, null
  br i1 %.not.i23.i.i60, label %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i61, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i58
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.r)
          to label %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i61 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i61: ; preds = %bb.ai, %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i58
  store ptr %i.fb, ptr %4, align 8, !tbaa !201
  store ptr %i.ft, ptr %i.i, align 8, !tbaa !200
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.ez ; 3 uses
  store ptr %i.fu, ptr %i.j, align 8, !tbaa !298
  br label %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit

_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit: ; preds = %bb.w, %bb.v, %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i61, %bb.ag, %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i, %bb.s, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit, %bb.b
  %i.fv = phi ptr [ %i.q, %bb.b ], [ %i.q, %bb.v ], [ %i.fu, %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i61 ], [ %i.q, %bb.ag ], [ %i.dh, %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i ], [ %i.q, %bb.s ], [ %i.q, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit ], [ %i.q, %bb.w ]
  %i.fw = phi ptr [ %i.r, %bb.b ], [ %i.r, %bb.v ], [ %i.fb, %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i61 ], [ %i.r, %bb.ag ], [ %i.co, %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i ], [ %i.r, %bb.s ], [ %i.r, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit ], [ %i.r, %bb.w ]
  %i.fx = phi ptr [ %i.s, %bb.b ], [ %i.s, %bb.v ], [ %i.fu, %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i61 ], [ %i.q, %bb.ag ], [ %i.dh, %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i ], [ %i.s, %bb.s ], [ %i.s, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit ], [ %i.s, %bb.w ]
  %i.fy = phi ptr [ %i.t, %bb.b ], [ %i.t, %bb.v ], [ %i.ft, %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i61 ], [ %i.eq, %bb.ag ], [ %i.dg, %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i ], [ %i.cd, %bb.s ], [ %i.t, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEjET_S8_S8_RKT0_.exit ], [ %i.t, %bb.w ] ; 4 uses
  %.sroa.0108.0 = load ptr, ptr %.sroa.0108.0142, align 8, !tbaa !216 ; 2 uses
  %i.fz = icmp eq ptr %.sroa.0108.0, null
  br i1 %i.fz, label %._crit_edge, label %bb.b

bb.aj:                                            ; preds = %.lr.ph146, %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit82
  %i.ga = phi ptr [ %.pre172, %.lr.ph146 ], [ %i.hj, %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit82 ] ; 5 uses
  %i.gb = phi ptr [ %.pre171, %.lr.ph146 ], [ %i.hk, %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit82 ] ; 4 uses
  %.sroa.089.0144 = phi ptr [ %.pre, %.lr.ph146 ], [ %i.hl, %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit82 ] ; 2 uses
  %7 = ptrtoaddr ptr %i.ga to i64
  %i.gc = load i32, ptr %.sroa.089.0144, align 4, !tbaa !205 ; 2 uses
  %.not.i66 = icmp eq ptr %i.gb, %i.ga
  br i1 %.not.i66, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i32 %i.gc, ptr %i.gb, align 4, !tbaa !205
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 4 ; 2 uses
  store ptr %i.gd, ptr %i.o, align 8, !tbaa !200
  br label %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit82

bb.al:                                            ; preds = %bb.aj
  %i.ge = load ptr, ptr %2, align 8, !tbaa !201   ; 7 uses
  %i.gf = ptrtoint ptr %i.gb to i64
  %i.gg = ptrtoint ptr %i.ge to i64               ; 3 uses
  %i.gh = sub i64 %i.gf, %i.gg                    ; 3 uses
  %i.gi = icmp eq i64 %i.gh, 9223372036854775804
  br i1 %i.gi, label %.invoke, label %_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i67

.invoke:                                          ; preds = %bb.ah, %bb.t, %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #24
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i67: ; preds = %bb.al
  %i.gj = ashr exact i64 %i.gh, 2                 ; 3 uses
  %.sroa.speculated.i.i.i68 = call i64 @llvm.umax.i64(i64 %i.gj, i64 1)
  %i.gk = add nsw i64 %.sroa.speculated.i.i.i68, %i.gj ; 2 uses
  %i.gl = icmp ult i64 %i.gk, %i.gj
  %i.gm = call i64 @llvm.umin.i64(i64 %i.gk, i64 2305843009213693951)
  %i.gn = select i1 %i.gl, i64 2305843009213693951, i64 %i.gm ; 3 uses
  %.not.i.i.i69 = icmp ne i64 %i.gn, 0
  call void @llvm.assume(i1 %.not.i.i.i69)
  %i.go = shl nuw nsw i64 %i.gn, 2
  %i.gp = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.go)
          to label %.noexc80 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc80:                                         ; preds = %_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i67
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gh
  store i32 %i.gc, ptr %i.gq, align 4, !tbaa !205
  %.not10.i.i.i.i.i70 = icmp eq ptr %i.ge, %i.ga
  br i1 %.not10.i.i.i.i.i70, label %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i75, label %.lr.ph.i.i.i.i.i71.preheader

.lr.ph.i.i.i.i.i71.preheader:                     ; preds = %.noexc80
  %i.gr = ptrtoaddr ptr %i.gp to i64
  %i.gs = add i64 %7, -4
  %i.gt = sub i64 %i.gs, %i.gg                    ; 2 uses
  %i.gu = lshr i64 %i.gt, 2
  %i.gv = add nuw nsw i64 %i.gu, 1                ; 2 uses
  %min.iters.check277 = icmp ult i64 %i.gt, 28
  %i.gw = sub i64 %i.gg, %i.gr
  %diff.check279 = icmp ugt i64 %i.gw, -32
  %or.cond294 = or i1 %min.iters.check277, %diff.check279
  br i1 %or.cond294, label %.lr.ph.i.i.i.i.i71.preheader296, label %vector.ph280

vector.ph280:                                     ; preds = %.lr.ph.i.i.i.i.i71.preheader
  %n.vec281 = and i64 %i.gv, 9223372036854775800  ; 3 uses
  %i.gx = shl i64 %n.vec281, 2                    ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gp, i64 %i.gx  ; 2 uses
  %i.gz = getelementptr i8, ptr %i.ge, i64 %i.gx
  br label %vector.body282

vector.body282:                                   ; preds = %vector.body282, %vector.ph280
  %index283 = phi i64 [ 0, %vector.ph280 ], [ %index.next288, %vector.body282 ] ; 2 uses
  %i.ha = shl i64 %index283, 2                    ; 2 uses
  %next.gep284 = getelementptr i8, ptr %i.gp, i64 %i.ha ; 2 uses
  %next.gep285 = getelementptr i8, ptr %i.ge, i64 %i.ha ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !460)
  call void @llvm.experimental.noalias.scope.decl(metadata !461)
  %i.hb = getelementptr i8, ptr %next.gep285, i64 16
  %wide.load286 = load <4 x i32>, ptr %next.gep285, align 4, !tbaa !205, !alias.scope !461
  %wide.load287 = load <4 x i32>, ptr %i.hb, align 4, !tbaa !205, !alias.scope !461
  %i.hc = getelementptr i8, ptr %next.gep284, i64 16
  store <4 x i32> %wide.load286, ptr %next.gep284, align 4, !tbaa !205, !alias.scope !460
  store <4 x i32> %wide.load287, ptr %i.hc, align 4, !tbaa !205, !alias.scope !460
  %index.next288 = add nuw i64 %index283, 8       ; 2 uses
  %i.hd = icmp eq i64 %index.next288, %n.vec281
  br i1 %i.hd, label %middle.block289, label %vector.body282, !llvm.loop !454

middle.block289:                                  ; preds = %vector.body282
  %cmp.n290 = icmp eq i64 %i.gv, %n.vec281
  br i1 %cmp.n290, label %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i75, label %.lr.ph.i.i.i.i.i71.preheader296

.lr.ph.i.i.i.i.i71.preheader296:                  ; preds = %.lr.ph.i.i.i.i.i71.preheader, %middle.block289
  %.012.i.i.i.i.i72.ph = phi ptr [ %i.gp, %.lr.ph.i.i.i.i.i71.preheader ], [ %i.gy, %middle.block289 ]
  %.0911.i.i.i.i.i73.ph = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i71.preheader ], [ %i.gz, %middle.block289 ]
  br label %.lr.ph.i.i.i.i.i71

.lr.ph.i.i.i.i.i71:                               ; preds = %.lr.ph.i.i.i.i.i71.preheader296, %.lr.ph.i.i.i.i.i71
  %.012.i.i.i.i.i72 = phi ptr [ %i.hg, %.lr.ph.i.i.i.i.i71 ], [ %.012.i.i.i.i.i72.ph, %.lr.ph.i.i.i.i.i71.preheader296 ] ; 2 uses
  %.0911.i.i.i.i.i73 = phi ptr [ %i.hf, %.lr.ph.i.i.i.i.i71 ], [ %.0911.i.i.i.i.i73.ph, %.lr.ph.i.i.i.i.i71.preheader296 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !460)
  call void @llvm.experimental.noalias.scope.decl(metadata !461)
  %i.he = load i32, ptr %.0911.i.i.i.i.i73, align 4, !tbaa !205, !alias.scope !461
  store i32 %i.he, ptr %.012.i.i.i.i.i72, align 4, !tbaa !205, !alias.scope !460
  %i.hf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i73, i64 4 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i.i.i74 = icmp eq ptr %i.hf, %i.ga
  br i1 %.not.i.i.i.i.i74, label %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i75, label %.lr.ph.i.i.i.i.i71, !llvm.loop !455

_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i75: ; preds = %.lr.ph.i.i.i.i.i71, %middle.block289, %.noexc80
  %.0.lcssa.i.i.i.i.i76 = phi ptr [ %i.gp, %.noexc80 ], [ %i.gy, %middle.block289 ], [ %i.hg, %.lr.ph.i.i.i.i.i71 ]
  %i.hh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i76, i64 4 ; 2 uses
  %.not.i23.i.i77 = icmp eq ptr %i.ge, null
  br i1 %.not.i23.i.i77, label %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i78, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i75
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ge)
          to label %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i78 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i78: ; preds = %bb.am, %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i75
  store ptr %i.gp, ptr %2, align 8, !tbaa !201
  store ptr %i.hh, ptr %i.o, align 8, !tbaa !200
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gn ; 2 uses
  store ptr %i.hi, ptr %i.p, align 8, !tbaa !298
  br label %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit82

_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit82: ; preds = %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i78, %bb.ak
  %i.hj = phi ptr [ %i.hi, %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i78 ], [ %i.ga, %bb.ak ]
  %i.hk = phi ptr [ %i.hh, %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i78 ], [ %i.gd, %bb.ak ]
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.089.0144, i64 4 ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.fy
  br i1 %i.hm, label %.preheader, label %bb.aj

.preheader:                                       ; preds = %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit82, %bb.an
  %.sroa.084.0148 = phi ptr [ %i.ho, %bb.an ], [ %.pre, %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit82 ] ; 2 uses
  %i.hn = load i32, ptr %.sroa.084.0148, align 4, !tbaa !205
  invoke void @_ZN2lp8dioph_eq3imp28collect_dependent_fresh_varsEjRSt6vectorIj13std_allocatorIjEE(ptr noundef nonnull align 8 dereferenceable(1328) %0, i32 noundef %i.hn, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %.preheader
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.084.0148, i64 4 ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %i.fy
  br i1 %i.hp, label %thread-pre-split, label %.preheader

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i67, %bb.am, %.preheader, %_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i50, %bb.ai, %bb.u, %_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i, %.loopexit120, %.invoke, %.noexc, %.loopexit.i
  %lpad.loopexit.split-lp307 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIj13std_allocatorIjEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %lpad.loopexit.split-lp307

thread-pre-split:                                 ; preds = %bb.an
  %.pr = load ptr, ptr %4, align 8, !tbaa !201
  br label %._crit_edge147.thread

._crit_edge147.thread:                            ; preds = %._crit_edge, %thread-pre-split
  %i.hq = phi ptr [ %.pr, %thread-pre-split ], [ %.pre, %._crit_edge ] ; 2 uses
  %.not.i.i.i83 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i83, label %_ZNSt6vectorIj13std_allocatorIjEED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge147.thread
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.hq)
          to label %_ZNSt6vectorIj13std_allocatorIjEED2Ev.exit unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hr = landingpad { ptr, i32 }
          catch ptr null
  %i.hs = extractvalue { ptr, i32 } %i.hr, 0
  call void @__clang_call_terminate(ptr %i.hs) #21
  unreachable

_ZNSt6vectorIj13std_allocatorIjEED2Ev.exit:       ; preds = %bb.a, %._crit_edge147.thread, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2lp7bij_mapISt4pairINS_8lar_termEjEE19erase_by_second_keyEj(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN2lp9bijection9erase_valEj(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load i64, ptr %i.b, align 8, !tbaa !299
  %.not.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.d, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !216 ; 4 uses
  %i.e = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.e, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !205
  %i.h = icmp eq i32 %1, %i.g
  br i1 %i.h, label %_ZNSt13unordered_mapIjSt4pairIN2lp8lar_termEjESt4hashIjESt8equal_toIjESaIS0_IKjS3_EEE4findERS8_.exit.loopexit, label %bb.c, !llvm.loop !462

bb.e:                                             ; preds = %bb.a
  %i.i = zext i32 %1 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load i64, ptr %i.j, align 8, !tbaa !160  ; 2 uses
  %i.l = urem i64 %i.i, %i.k                      ; 4 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !159  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !262  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !216  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !205
  %i.s = icmp eq i32 %1, %i.r
  br i1 %i.s, label %_ZNSt13unordered_mapIjSt4pairIN2lp8lar_termEjESt4hashIjESt8equal_toIjESaIS0_IKjS3_EEE4findERS8_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.t = icmp eq i32 %1, %i.w
  br i1 %i.t, label %_ZNSt13unordered_mapIjSt4pairIN2lp8lar_termEjESt4hashIjESt8equal_toIjESaIS0_IKjS3_EEE4findERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !19

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.u, %bb.g ], [ %i.p, %bb.f ]
  %i.u = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !216 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !205  ; 2 uses
  %i.x = zext i32 %i.w to i64
  %i.y = urem i64 %i.x, %i.k
  %.not19.i.i.i.i = icmp eq i64 %i.y, %i.l
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !19

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %.loopexit, !llvm.loop !19

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %bb.c, %..loopexit_crit_edge21.i.i.i.i, %bb.e
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.5, i32 noundef 171, ptr noundef nonnull @.str.6)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  unreachable

_ZNSt13unordered_mapIjSt4pairIN2lp8lar_termEjESt4hashIjESt8equal_toIjESaIS0_IKjS3_EEE4findERS8_.exit.loopexit: ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !160
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !159
  %.pre19 = zext i32 %1 to i64
  %.pre20 = urem i64 %.pre19, %.pre
  br label %_ZNSt13unordered_mapIjSt4pairIN2lp8lar_termEjESt4hashIjESt8equal_toIjESaIS0_IKjS3_EEE4findERS8_.exit

_ZNSt13unordered_mapIjSt4pairIN2lp8lar_termEjESt4hashIjESt8equal_toIjESaIS0_IKjS3_EEE4findERS8_.exit: ; preds = %bb.g, %_ZNSt13unordered_mapIjSt4pairIN2lp8lar_termEjESt4hashIjESt8equal_toIjESaIS0_IKjS3_EEE4findERS8_.exit.loopexit, %bb.f
end_hunk_1
begin_hunk_2_@_ZN2lp8dioph_eq3imp27process_m_changed_f_columnsERSt6vectorIj13std_allocatorIjEE:bb.a
  %i.eu = load i64, ptr %i.eh, align 8, !tbaa !174
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %common.resume

bb.w:                                             ; preds = %bb.s
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @__cxa_free_exception(ptr %i.ed) #20
  br label %common.resume

bb.x:                                             ; preds = %bb.r
  %i.ex = zext i32 %i.ea to i64
  %i.ey = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.du, i64 noundef %i.ex) ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  store ptr %i.ez, ptr %i.n, align 8, !tbaa !204
  store i32 %i.dy, ptr %i.ey, align 4, !tbaa !205
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i.backedge

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i.backedge:  ; preds = %bb.x, %bb.q
  %.be = phi ptr [ %i.dt, %bb.q ], [ %i.ez, %bb.x ]
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i, !llvm.loop !7

bb.y:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

bb.z:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i7.i
  %i.fa = getelementptr inbounds i8, ptr %i.dm, i64 -4
  store i32 %i.dg, ptr %i.fa, align 4, !tbaa !205
  %.not1218.i.i.i = icmp eq i32 %.0.i16.i.i.i.ph, %i.dg
  br i1 %.not1218.i.i.i, label %_ZN16indexed_uint_set12insert_freshEj.exit, label %.lr.ph.preheader.i.i8.i

.lr.ph.preheader.i.i8.i:                          ; preds = %bb.z
  %i.fb = zext i32 %i.dg to i64
  %i.fc = zext i32 %.0.i16.i.i.i.ph to i64        ; 2 uses
  %i.fd = getelementptr [4 x i8], ptr %i.dm, i64 %i.fc
  %i.fe = sub nsw i64 %i.fb, %i.fc
  %i.ff = shl nsw i64 %i.fe, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.fd, i8 0, i64 %i.ff, i1 false), !tbaa !205
  br label %_ZN16indexed_uint_set12insert_freshEj.exit

_ZN16indexed_uint_set12insert_freshEj.exit:       ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i3.i, %bb.z, %.lr.ph.preheader.i.i8.i
  %i.fg = phi ptr [ %i.dm, %.lr.ph.preheader.i.i8.i ], [ %i.dh, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i3.i ], [ %i.dm, %bb.z ]
  %i.fh = load i32, ptr %i.l, align 8, !tbaa !251 ; 2 uses
  %i.fi = load ptr, ptr %i.m, align 8, !tbaa !204 ; 2 uses
  %i.fj = zext i32 %i.at to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fj
  store i32 %i.fh, ptr %i.fk, align 4, !tbaa !205
  %i.fl = zext i32 %i.fh to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.fl
  store i32 %i.at, ptr %i.fm, align 4, !tbaa !205
  %i.fn = load i32, ptr %i.l, align 8, !tbaa !251
  %i.fo = add i32 %i.fn, 1
  store i32 %i.fo, ptr %i.l, align 8, !tbaa !251
  br label %_ZN16indexed_uint_set6insertEj.exit64

_ZN16indexed_uint_set6insertEj.exit64:            ; preds = %_ZNK16indexed_uint_set8containsEj.exit.i63, %_ZN16indexed_uint_set12insert_freshEj.exit
  %i.fp = phi ptr [ %i.as, %_ZNK16indexed_uint_set8containsEj.exit.i63 ], [ %i.fi, %_ZN16indexed_uint_set12insert_freshEj.exit ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0130.0163, i64 12 ; 2 uses
  %.not138 = icmp eq ptr %i.fq, %i.ar
  br i1 %.not138, label %.loopexit156, label %.lr.ph

.loopexit156:                                     ; preds = %_ZN16indexed_uint_set6insertEj.exit64, %bb.e, %_ZN16indexed_uint_set6insertEj.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %.044165, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.fr, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.loopexit156, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 7 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 5 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !204 ; 2 uses
  %i.fv = load i32, ptr %i.fs, align 8, !tbaa !251 ; 2 uses
  %i.fw = zext i32 %i.fv to i64
  %.idx190 = shl nuw nsw i64 %i.fw, 2
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 %.idx190
  %.not47176 = icmp eq i32 %i.fv, 0
  br i1 %.not47176, label %._crit_edge184, label %.lr.ph179

.lr.ph179:                                        ; preds = %._crit_edge
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.gd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.aa

._crit_edge180:                                   ; preds = %_ZNSt13unordered_mapIjSt6vectorIj13std_allocatorIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit.thread
  %i.gf = icmp eq ptr %.promoted220, %i.jn
  br i1 %i.gf, label %._crit_edge184, label %.lr.ph183

.lr.ph183:                                        ; preds = %._crit_edge180
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 992
  br label %bb.ak

bb.aa:                                            ; preds = %.lr.ph179, %_ZNSt13unordered_mapIjSt6vectorIj13std_allocatorIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit.thread
  %i.gh = phi ptr [ null, %.lr.ph179 ], [ %i.jm, %_ZNSt13unordered_mapIjSt6vectorIj13std_allocatorIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit.thread ] ; 6 uses
  %i.gi = phi ptr [ null, %.lr.ph179 ], [ %i.jn, %_ZNSt13unordered_mapIjSt6vectorIj13std_allocatorIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit.thread ] ; 6 uses
  %.promoted219 = phi ptr [ null, %.lr.ph179 ], [ %.promoted220, %_ZNSt13unordered_mapIjSt6vectorIj13std_allocatorIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit.thread ] ; 6 uses
  %.043177 = phi ptr [ %i.fu, %.lr.ph179 ], [ %i.jo, %_ZNSt13unordered_mapIjSt6vectorIj13std_allocatorIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit.thread ] ; 2 uses
  %i.gj = load i32, ptr %.043177, align 4, !tbaa !205 ; 4 uses
  %i.gk = load i64, ptr %i.fy, align 8, !tbaa !272
  %.not.not.i.i = icmp eq i64 %i.gk, 0
  br i1 %.not.not.i.i, label %.preheader203, label %bb.ac

.preheader203:                                    ; preds = %bb.aa, %bb.ab
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.ab ], [ %i.gb, %bb.aa ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !216 ; 4 uses
  %i.gl = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.gl, label %_ZNSt13unordered_mapIjSt6vectorIj13std_allocatorIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %.preheader203
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !205
  %i.go = icmp eq i32 %i.gj, %i.gn
  br i1 %i.go, label %_ZNSt13unordered_mapIjSt6vectorIj13std_allocatorIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit, label %.preheader203, !llvm.loop !12

bb.ac:                                            ; preds = %bb.aa
  %i.gp = zext i32 %i.gj to i64
  %i.gq = load i64, ptr %i.ga, align 8, !tbaa !162 ; 2 uses
  %i.gr = urem i64 %i.gp, %i.gq                   ; 2 uses
  %i.gs = load ptr, ptr %i.fz, align 8, !tbaa !161
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.gr
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !262 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapIjSt6vectorIj13std_allocatorIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !216 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !205
  %i.gy = icmp eq i32 %i.gj, %i.gx
  br i1 %i.gy, label %_ZNSt13unordered_mapIjSt6vectorIj13std_allocatorIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit, label %.lr.ph.i.i.i.i

bb.ae:                                            ; preds = %bb.af
  %i.gz = icmp eq i32 %i.gj, %i.hc
  br i1 %i.gz, label %_ZNSt13unordered_mapIjSt6vectorIj13std_allocatorIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !13

.lr.ph.i.i.i.i:                                   ; preds = %bb.ad, %bb.ae
  %.020.i.i.i.i = phi ptr [ %i.ha, %bb.ae ], [ %i.gv, %bb.ad ]
  %i.ha = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !216 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ha, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapIjSt6vectorIj13std_allocatorIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit.thread, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !205 ; 2 uses
  %i.hd = zext i32 %i.hc to i64
  %i.he = urem i64 %i.hd, %i.gq
  %.not19.i.i.i.i = icmp eq i64 %i.he, %i.gr
  br i1 %.not19.i.i.i.i, label %bb.ae, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !13

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.af
  br label %_ZNSt13unordered_mapIjSt6vectorIj13std_allocatorIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit.thread, !llvm.loop !13

_ZNSt13unordered_mapIjSt6vectorIj13std_allocatorIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit: ; preds = %bb.ae, %bb.ab, %bb.ad
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.ab ], [ %i.gv, %bb.ad ], [ %i.ha, %bb.ae ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !273 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !273 ; 2 uses
  %i.hj = icmp eq ptr %i.hg, %i.hi
  br i1 %i.hj, label %_ZNSt13unordered_mapIjSt6vectorIj13std_allocatorIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit.thread, label %.lr.ph175

.lr.ph175:                                        ; preds = %_ZNSt13unordered_mapIjSt6vectorIj13std_allocatorIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit, %._crit_edge173
  %i.hk = phi ptr [ %i.hu, %._crit_edge173 ], [ %i.gh, %_ZNSt13unordered_mapIjSt6vectorIj13std_allocatorIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit ] ; 2 uses
  %i.hl = phi ptr [ %i.hv, %._crit_edge173 ], [ %i.gi, %_ZNSt13unordered_mapIjSt6vectorIj13std_allocatorIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit ] ; 2 uses
  %.promoted = phi ptr [ %.lcssa167, %._crit_edge173 ], [ %.promoted219, %_ZNSt13unordered_mapIjSt6vectorIj13std_allocatorIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit ] ; 2 uses
  %.sroa.0119.0174 = phi ptr [ %i.hw, %._crit_edge173 ], [ %i.hg, %_ZNSt13unordered_mapIjSt6vectorIj13std_allocatorIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit ] ; 2 uses
  %i.hm = load i32, ptr %.sroa.0119.0174, align 4, !tbaa !205
  %i.hn = zext i32 %i.hm to i64
  %i.ho = load ptr, ptr %i.gc, align 8, !tbaa !220
  %i.hp = getelementptr inbounds nuw [24 x i8], ptr %i.ho, i64 %i.hn ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !274 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !274 ; 2 uses
  %i.ht = icmp eq ptr %i.hq, %i.hs
  br i1 %i.ht, label %._crit_edge173, label %.lr.ph172

._crit_edge173:                                   ; preds = %_ZNSt6vectorIj13std_allocatorIjEE9push_backEOj.exit, %.lr.ph175
  %i.hu = phi ptr [ %i.hk, %.lr.ph175 ], [ %i.jh, %_ZNSt6vectorIj13std_allocatorIjEE9push_backEOj.exit ] ; 2 uses
  %i.hv = phi ptr [ %i.hl, %.lr.ph175 ], [ %i.ji, %_ZNSt6vectorIj13std_allocatorIjEE9push_backEOj.exit ] ; 2 uses
  %.lcssa167 = phi ptr [ %.promoted, %.lr.ph175 ], [ %i.jj, %_ZNSt6vectorIj13std_allocatorIjEE9push_backEOj.exit ] ; 3 uses
  store ptr %.lcssa167, ptr %6, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0119.0174, i64 4 ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.hi
  br i1 %i.hx, label %_ZNSt13unordered_mapIjSt6vectorIj13std_allocatorIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit.thread, label %.lr.ph175

.lr.ph172:                                        ; preds = %.lr.ph175, %_ZNSt6vectorIj13std_allocatorIjEE9push_backEOj.exit
  %i.hy = phi ptr [ %i.jh, %_ZNSt6vectorIj13std_allocatorIjEE9push_backEOj.exit ], [ %i.hk, %.lr.ph175 ] ; 5 uses
  %i.hz = phi ptr [ %i.ji, %_ZNSt6vectorIj13std_allocatorIjEE9push_backEOj.exit ], [ %i.hl, %.lr.ph175 ] ; 4 uses
  %.sroa.0115.0170 = phi ptr [ %i.jk, %_ZNSt6vectorIj13std_allocatorIjEE9push_backEOj.exit ], [ %i.hq, %.lr.ph175 ] ; 2 uses
  %i.ia = phi ptr [ %i.jj, %_ZNSt6vectorIj13std_allocatorIjEE9push_backEOj.exit ], [ %.promoted, %.lr.ph175 ] ; 10 uses
  %7 = ptrtoaddr ptr %i.hy to i64
  %i.ib = load i32, ptr %.sroa.0115.0170, align 4, !tbaa !277 ; 2 uses
  %.not.i.i = icmp eq ptr %i.hz, %i.hy
  br i1 %.not.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph172
  store i32 %i.ib, ptr %i.hz, align 4, !tbaa !205
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 4 ; 2 uses
  store ptr %i.ic, ptr %i.gd, align 8, !tbaa !200
  br label %_ZNSt6vectorIj13std_allocatorIjEE9push_backEOj.exit

bb.ah:                                            ; preds = %.lr.ph172
  %i.id = ptrtoint ptr %i.hz to i64
  %i.ie = ptrtoint ptr %i.ia to i64               ; 3 uses
  %i.if = sub i64 %i.id, %i.ie                    ; 3 uses
  %i.ig = icmp eq i64 %i.if, 9223372036854775804
  br i1 %i.ig, label %bb.ai, label %_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.ia, ptr %6, align 8
  br label %.invoke

_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ah
  %i.ih = ashr exact i64 %i.if, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ih, i64 1)
  %i.ii = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ih ; 2 uses
  %i.ij = icmp ult i64 %i.ii, %i.ih
  %i.ik = tail call i64 @llvm.umin.i64(i64 %i.ii, i64 2305843009213693951)
  %i.il = select i1 %i.ij, i64 2305843009213693951, i64 %i.ik ; 3 uses
  %.not.i.i.i.i67 = icmp ne i64 %i.il, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i67)
  %i.im = shl nuw nsw i64 %i.il, 2
  %i.in = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.im)
          to label %.noexc68 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 8 uses

.noexc68:                                         ; preds = %_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.if
  store i32 %i.ib, ptr %i.io, align 4, !tbaa !205
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ia, %i.hy
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc68
  %i.ip = ptrtoaddr ptr %i.in to i64
  %i.iq = add i64 %7, -4
  %i.ir = sub i64 %i.iq, %i.ie                    ; 2 uses
  %i.is = lshr i64 %i.ir, 2
  %i.it = add nuw nsw i64 %i.is, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ir, 28
  %i.iu = sub i64 %i.ie, %i.ip
  %diff.check = icmp ugt i64 %i.iu, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader389, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.it, 9223372036854775800     ; 3 uses
  %i.iv = shl i64 %n.vec, 2                       ; 2 uses
  %i.iw = getelementptr i8, ptr %i.in, i64 %i.iv  ; 2 uses
  %i.ix = getelementptr i8, ptr %i.ia, i64 %i.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iy = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.in, i64 %i.iy ; 2 uses
  %next.gep354 = getelementptr i8, ptr %i.ia, i64 %i.iy ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.iz = getelementptr i8, ptr %next.gep354, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep354, align 4, !tbaa !205, !alias.scope !498
  %wide.load355 = load <4 x i32>, ptr %i.iz, align 4, !tbaa !205, !alias.scope !498
  %i.ja = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !205, !alias.scope !497
  store <4 x i32> %wide.load355, ptr %i.ja, align 4, !tbaa !205, !alias.scope !497
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jb = icmp eq i64 %index.next, %n.vec
  br i1 %i.jb, label %middle.block, label %vector.body, !llvm.loop !490

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader389

.lr.ph.i.i.i.i.i.i.preheader389:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.in, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.iw, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.ia, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ix, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader389, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.je, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader389 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.jd, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader389 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.jc = load i32, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !205, !alias.scope !498
  store i32 %i.jc, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !205, !alias.scope !497
  %i.jd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.jd, %i.hy
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !491

_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc68
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.in, %.noexc68 ], [ %i.iw, %middle.block ], [ %i.je, %.lr.ph.i.i.i.i.i.i ]
  %i.jf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ia, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ia)
          to label %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i.i: ; preds = %bb.aj, %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i.i
  store ptr %i.jf, ptr %i.gd, align 8, !tbaa !200
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.il ; 2 uses
  store ptr %i.jg, ptr %i.ge, align 8, !tbaa !298
  br label %_ZNSt6vectorIj13std_allocatorIjEE9push_backEOj.exit

_ZNSt6vectorIj13std_allocatorIjEE9push_backEOj.exit: ; preds = %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i.i, %bb.ag
  %i.jh = phi ptr [ %i.jg, %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i.i ], [ %i.hy, %bb.ag ] ; 2 uses
  %i.ji = phi ptr [ %i.jf, %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i.i ], [ %i.ic, %bb.ag ] ; 2 uses
  %i.jj = phi ptr [ %i.in, %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i.i ], [ %i.ia, %bb.ag ] ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0115.0170, i64 12 ; 2 uses
  %i.jl = icmp eq ptr %i.jk, %i.hs
  br i1 %i.jl, label %._crit_edge173, label %.lr.ph172

_ZNSt13unordered_mapIjSt6vectorIj13std_allocatorIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %.preheader203, %._crit_edge173, %_ZNSt13unordered_mapIjSt6vectorIj13std_allocatorIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit, %bb.ac, %..loopexit_crit_edge21.i.i.i.i
  %i.jm = phi ptr [ %i.gh, %.preheader203 ], [ %i.hu, %._crit_edge173 ], [ %i.gh, %..loopexit_crit_edge21.i.i.i.i ], [ %i.gh, %_ZNSt13unordered_mapIjSt6vectorIj13std_allocatorIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit ], [ %i.gh, %bb.ac ], [ %i.gh, %.lr.ph.i.i.i.i ]
  %i.jn = phi ptr [ %i.gi, %.preheader203 ], [ %i.hv, %._crit_edge173 ], [ %i.gi, %..loopexit_crit_edge21.i.i.i.i ], [ %i.gi, %_ZNSt13unordered_mapIjSt6vectorIj13std_allocatorIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit ], [ %i.gi, %bb.ac ], [ %i.gi, %.lr.ph.i.i.i.i ] ; 3 uses
  %.promoted220 = phi ptr [ %.promoted219, %.preheader203 ], [ %.lcssa167, %._crit_edge173 ], [ %.promoted219, %..loopexit_crit_edge21.i.i.i.i ], [ %.promoted219, %_ZNSt13unordered_mapIjSt6vectorIj13std_allocatorIjEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit ], [ %.promoted219, %bb.ac ], [ %.promoted219, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.043177, i64 4 ; 2 uses
  %.not47 = icmp eq ptr %i.jo, %i.fx
  br i1 %.not47, label %._crit_edge180, label %bb.aa

._crit_edge184:                                   ; preds = %_ZN16indexed_uint_set6insertEj.exit76, %._crit_edge, %._crit_edge180
  %i.jp = phi ptr [ null, %._crit_edge ], [ %.promoted220, %._crit_edge180 ], [ %.promoted220, %_ZN16indexed_uint_set6insertEj.exit76 ] ; 2 uses
  invoke void @_ZN2lp8dioph_eq3imp31remove_out_of_bounds_fresh_defsEv(ptr noundef nonnull align 8 dereferenceable(1328) %0)
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc70:                                         ; preds = %._crit_edge184
  %i.jq = load ptr, ptr %i.ft, align 8, !tbaa !204 ; 2 uses
  %i.jr = load i32, ptr %i.fs, align 8, !tbaa !251 ; 2 uses
  %i.js = zext i32 %i.jr to i64
  %.idx.i = shl nuw nsw i64 %i.js, 2
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.idx.i
  %.not7.i = icmp eq i32 %i.jr, 0
  br i1 %.not7.i, label %_ZN2lp8dioph_eq3imp37eliminate_substituted_in_changed_rowsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc70, %.noexc71
  %.08.i = phi ptr [ %i.jv, %.noexc71 ], [ %i.jq, %.noexc70 ] ; 2 uses
  %i.ju = load i32, ptr %.08.i, align 4, !tbaa !205
  invoke void @_ZN2lp8dioph_eq3imp36remove_irrelevant_fresh_defs_for_rowEj(ptr noundef nonnull align 8 dereferenceable(1328) %0, i32 noundef %i.ju)
          to label %.noexc71 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc71:                                         ; preds = %.lr.ph.i
  %i.jv = getelementptr inbounds nuw i8, ptr %.08.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.jv, %i.jt
  br i1 %.not.i, label %.loopexit147, label %.lr.ph.i

bb.ak:                                            ; preds = %.lr.ph183, %_ZN16indexed_uint_set6insertEj.exit76
  %.sroa.0109.0181 = phi ptr [ %.promoted220, %.lr.ph183 ], [ %i.km, %_ZN16indexed_uint_set6insertEj.exit76 ] ; 2 uses
  %i.jw = load i32, ptr %.sroa.0109.0181, align 4, !tbaa !205 ; 4 uses
  %i.jx = load ptr, ptr %i.gg, align 8, !tbaa !204 ; 3 uses
  %i.jy = icmp eq ptr %i.jx, null
  br i1 %i.jy, label %_ZNK16indexed_uint_set8containsEj.exit.thread.i73, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i72

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i72:            ; preds = %bb.ak
  %i.jz = getelementptr inbounds i8, ptr %i.jx, i64 -4
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !205
  %i.kb = icmp ult i32 %i.jw, %i.ka
  br i1 %i.kb, label %bb.al, label %_ZNK16indexed_uint_set8containsEj.exit.thread.i73

bb.al:                                            ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i72
  %i.kc = zext i32 %i.jw to i64
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !205 ; 2 uses
  %i.kf = load i32, ptr %i.fs, align 8, !tbaa !251
  %i.kg = icmp ult i32 %i.ke, %i.kf
  br i1 %i.kg, label %_ZNK16indexed_uint_set8containsEj.exit.i74, label %_ZNK16indexed_uint_set8containsEj.exit.thread.i73

_ZNK16indexed_uint_set8containsEj.exit.i74:       ; preds = %bb.al
  %i.kh = load ptr, ptr %i.ft, align 8, !tbaa !204
  %i.ki = zext i32 %i.ke to i64
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.ki
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !205
  %i.kl = icmp eq i32 %i.kk, %i.jw
  br i1 %i.kl, label %_ZN16indexed_uint_set6insertEj.exit76, label %_ZNK16indexed_uint_set8containsEj.exit.thread.i73

_ZNK16indexed_uint_set8containsEj.exit.thread.i73: ; preds = %_ZNK16indexed_uint_set8containsEj.exit.i74, %bb.al, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i72, %bb.ak
  invoke void @_ZN16indexed_uint_set12insert_freshEj(ptr noundef nonnull align 8 dereferenceable(24) %i.fs, i32 noundef %i.jw)
          to label %_ZN16indexed_uint_set6insertEj.exit76 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN16indexed_uint_set6insertEj.exit76:            ; preds = %_ZNK16indexed_uint_set8containsEj.exit.i74, %_ZNK16indexed_uint_set8containsEj.exit.thread.i73
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0109.0181, i64 4 ; 2 uses
  %i.kn = icmp eq ptr %i.km, %i.jn
  br i1 %i.kn, label %._crit_edge184, label %bb.ak

.loopexit147:                                     ; preds = %.noexc71
  %.pre221 = load ptr, ptr %i.ft, align 8, !tbaa !204 ; 2 uses
  %.pre222 = load i32, ptr %i.fs, align 8, !tbaa !251 ; 2 uses
  %i.ko = zext i32 %.pre222 to i64
  %.idx191 = shl nuw nsw i64 %i.ko, 2
  %i.kp = getelementptr inbounds nuw i8, ptr %.pre221, i64 %.idx191
  %.not48185 = icmp eq i32 %.pre222, 0
  br i1 %.not48185, label %_ZN2lp8dioph_eq3imp37eliminate_substituted_in_changed_rowsEv.exit, label %.lr.ph188

.lr.ph188:                                        ; preds = %.loopexit147
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  br label %bb.am

._crit_edge189:                                   ; preds = %_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE8pop_backEv.exit90
  %.pre225 = load ptr, ptr %i.ft, align 8, !tbaa !204 ; 2 uses
  %.pre226 = load i32, ptr %i.fs, align 8, !tbaa !251 ; 2 uses
  %i.ld = zext i32 %.pre226 to i64
  %.idx.i77 = shl nuw nsw i64 %i.ld, 2
  %i.le = getelementptr inbounds nuw i8, ptr %.pre225, i64 %.idx.i77
  %.not7.i78 = icmp eq i32 %.pre226, 0
  br i1 %.not7.i78, label %_ZN2lp8dioph_eq3imp37eliminate_substituted_in_changed_rowsEv.exit, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %._crit_edge189, %.noexc82
  %.08.i80 = phi ptr [ %i.lg, %.noexc82 ], [ %.pre225, %._crit_edge189 ] ; 2 uses
  %i.lf = load i32, ptr %.08.i80, align 4, !tbaa !205
  invoke void @_ZN2lp8dioph_eq3imp10subs_entryEj(ptr noundef nonnull align 8 dereferenceable(1328) %0, i32 noundef %i.lf)
          to label %.noexc82 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc82:                                         ; preds = %.lr.ph.i79
  %i.lg = getelementptr inbounds nuw i8, ptr %.08.i80, i64 4 ; 2 uses
  %.not.i81 = icmp eq ptr %i.lg, %i.le
  br i1 %.not.i81, label %_ZN2lp8dioph_eq3imp37eliminate_substituted_in_changed_rowsEv.exit, label %.lr.ph.i79

bb.am:                                            ; preds = %.lr.ph188, %_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE8pop_backEv.exit90
  %.0186 = phi ptr [ %.pre221, %.lr.ph188 ], [ %i.ot, %_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE8pop_backEv.exit90 ] ; 2 uses
  %i.lh = load i32, ptr %.0186, align 4, !tbaa !205 ; 8 uses
  %i.li = load ptr, ptr %i.kr, align 8, !tbaa !271
  %i.lj = load ptr, ptr %i.kq, align 8, !tbaa !203
  %i.lk = ptrtoint ptr %i.li to i64
end_hunk_2
begin_hunk_3_@_ZN2lp8dioph_eq3imp11rewrite_eqsERSt6vectorIj13std_allocatorIjEE:bb.a
  %i.jo = select i1 %i.jl, i1 %i.jn, i1 false
  br i1 %i.jo, label %bb.bh, label %_ZNK8rational6is_oneEv.exit136.thread

bb.bh:                                            ; preds = %_ZNK8rational6is_oneEv.exit136
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.jq = extractelement <2 x i32> %i.jb, i64 1   ; 2 uses
  invoke void @_ZN2lp9bijection3addEjj(ptr noundef nonnull align 8 dereferenceable(112) %i.jp, i32 noundef %i.jq, i32 noundef %.488175.ph)
          to label %_ZN2lp8dioph_eq3imp22move_entry_from_f_to_sEjj.exit unwind label %bb.d

_ZN2lp8dioph_eq3imp22move_entry_from_f_to_sEjj.exit: ; preds = %bb.bh
  %i.jr = extractelement <2 x i32> %i.jb, i64 0
  invoke void @_ZN2lp8dioph_eq3imp18eliminate_var_in_fEjji(ptr noundef nonnull align 8 dereferenceable(1328) %0, i32 noundef %.488175.ph, i32 noundef %i.jq, i32 noundef %i.jr)
          to label %bb.bi unwind label %bb.d

bb.bi:                                            ; preds = %_ZN2lp8dioph_eq3imp22move_entry_from_f_to_sEjj.exit
  %i.js = load ptr, ptr %i.a, align 8, !tbaa !273
  %i.jt = getelementptr inbounds i8, ptr %i.js, i64 -4 ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !205
  %i.jv = zext i32 %.466178.ph to i64
  %i.jw = load ptr, ptr %1, align 8, !tbaa !201
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.jv
  store i32 %i.ju, ptr %i.jx, align 4, !tbaa !205
  store ptr %i.jt, ptr %i.a, align 8, !tbaa !200
  br label %.thread179

_ZNK8rational6is_oneEv.exit136.thread:            ; preds = %.thread168.thread, %_ZNK8rational6is_oneEv.exit136
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.jy = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.jz = load i8, ptr %i.jy, align 4
  %i.ka = and i8 %i.jz, -4
  %i.kb = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.kb, align 8, !tbaa !158
  %i.kc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store i32 1, ptr %i.kc, align 8, !tbaa !157
  %i.kd = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 4 uses
  %i.ke = load i8, ptr %i.kd, align 4
  %i.kf = and i8 %i.ke, -4
  store i8 %i.kf, ptr %i.kd, align 4
  %i.kg = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr null, ptr %i.kg, align 8, !tbaa !158
  %i.kh = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !213
  %i.ki = extractelement <2 x i32> %i.jb, i64 0
  store i32 %i.ki, ptr %8, align 8, !tbaa !157
  store i8 %i.ka, ptr %i.jy, align 4
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.kh, ptr noundef nonnull align 8 dereferenceable(16) %i.kc)
          to label %bb.bj unwind label %bb.bo

bb.bj:                                            ; preds = %_ZNK8rational6is_oneEv.exit136.thread
  store i32 1, ptr %i.kc, align 8, !tbaa !157
  %i.kj = load i8, ptr %i.kd, align 4
  %i.kk = and i8 %i.kj, -2
  store i8 %i.kk, ptr %i.kd, align 4
  invoke void @_ZmlRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bk unwind label %bb.bp

bb.bk:                                            ; preds = %bb.bj
  %i.kl = extractelement <2 x i32> %i.jb, i64 1
  invoke void @_ZN2lp8dioph_eq3imp14fresh_var_stepEjjRK8rational(ptr noundef nonnull align 8 dereferenceable(1328) %0, i32 noundef %.488175.ph, i32 noundef %i.kl, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.bl unwind label %bb.bq

bb.bl:                                            ; preds = %bb.bk
  %i.km = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !213 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.km, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc.i140 unwind label %bb.bm

.noexc.i140:                                      ; preds = %bb.bl
  %i.kn = getelementptr inbounds nuw i8, ptr %7, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.km, ptr noundef nonnull align 8 dereferenceable(16) %i.kn)
          to label %_ZN8rationalD2Ev.exit141 unwind label %bb.bm

bb.bm:                                            ; preds = %.noexc.i140, %bb.bl
  %i.ko = landingpad { ptr, i32 }
          catch ptr null
  %i.kp = extractvalue { ptr, i32 } %i.ko, 0
  call void @__clang_call_terminate(ptr %i.kp) #21
  unreachable

_ZN8rationalD2Ev.exit141:                         ; preds = %.noexc.i140
  %i.kq = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !213 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.kq, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc.i142 unwind label %bb.bn

.noexc.i142:                                      ; preds = %_ZN8rationalD2Ev.exit141
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.kq, ptr noundef nonnull align 8 dereferenceable(16) %i.kc)
          to label %_ZN8rationalD2Ev.exit143 unwind label %bb.bn

bb.bn:                                            ; preds = %.noexc.i142, %_ZN8rationalD2Ev.exit141
  %i.kr = landingpad { ptr, i32 }
          catch ptr null
  %i.ks = extractvalue { ptr, i32 } %i.kr, 0
  call void @__clang_call_terminate(ptr %i.ks) #21
  unreachable

_ZN8rationalD2Ev.exit143:                         ; preds = %.noexc.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %.thread179

bb.bo:                                            ; preds = %_ZNK8rational6is_oneEv.exit136.thread
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bp:                                            ; preds = %bb.bj
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %bb.bk
  %i.kv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #20
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pn103 = phi { ptr, i32 } [ %i.kv, %bb.bq ], [ %i.ku, %bb.bp ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #20
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bo
  %.pn103.pn = phi { ptr, i32 } [ %.pn103, %bb.br ], [ %i.kt, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.bu

.thread179:                                       ; preds = %bb.bd, %_ZN8rationalD2Ev.exit119, %_ZN8rationalD2Ev.exit, %bb.bi, %_ZN8rationalD2Ev.exit143, %.thread168
  %.493 = phi i32 [ 3, %_ZN8rationalD2Ev.exit119 ], [ 5, %.thread168 ], [ 4, %_ZN8rationalD2Ev.exit143 ], [ 4, %bb.bi ], [ 3, %_ZN8rationalD2Ev.exit ], [ 3, %bb.bd ]
  %i.kw = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !213 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.kw, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc.i144 unwind label %bb.bt

.noexc.i144:                                      ; preds = %.thread179
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.kw, ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %_ZN8rationalD2Ev.exit145 unwind label %bb.bt

bb.bt:                                            ; preds = %.noexc.i144, %.thread179
  %i.kx = landingpad { ptr, i32 }
          catch ptr null
  %i.ky = extractvalue { ptr, i32 } %i.kx, 0
  call void @__clang_call_terminate(ptr %i.ky) #21
  unreachable

_ZN8rationalD2Ev.exit145:                         ; preds = %.noexc.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.bv

bb.bu:                                            ; preds = %bb.d, %bb.n, %bb.y, %bb.bg, %bb.bs
  %.pn106 = phi { ptr, i32 } [ %.pn, %bb.y ], [ %.pn103.pn, %bb.bs ], [ %.pn100, %bb.n ], [ %i.av, %bb.d ], [ %.pn98, %bb.bg ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn106

bb.bv:                                            ; preds = %bb.a, %_ZN8rationalD2Ev.exit145
  %.594 = phi i32 [ %.493, %_ZN8rationalD2Ev.exit145 ], [ 5, %bb.a ]
  ret i32 %.594
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2lp8dioph_eq3imp22find_minimal_abs_coeffEj(ptr dead_on_unwind noalias writable sret(%"class.std::tuple.287") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1328) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.rational, align 8            ; 19 uses
  %4 = alloca %class.rational, align 8            ; 18 uses
  %5 = alloca %class.rational, align 8            ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i32 0, ptr %3, align 8, !tbaa !157
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 7 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4
  store i8 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !158
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store i32 1, ptr %i.e, align 8, !tbaa !157
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 7 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4
  store i8 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr null, ptr %i.i, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i32 0, ptr %4, align 8, !tbaa !157
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 6 uses
  %i.k = load i8, ptr %i.j, align 4
  %i.l = and i8 %i.k, -4
  store i8 %i.l, ptr %i.j, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr null, ptr %i.m, align 8, !tbaa !158
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store i32 1, ptr %i.n, align 8, !tbaa !157
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 6 uses
  %i.p = load i8, ptr %i.o, align 4
  %i.q = and i8 %i.p, -4
  store i8 %i.q, ptr %i.o, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store ptr null, ptr %i.r, align 8, !tbaa !158
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.t = zext i32 %2 to i64                       ; 2 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !203
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.t ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !287  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !287  ; 3 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK8rational6is_oneEv.exit.thread
  %.01443 = phi i1 [ true, %.lr.ph ], [ false, %_ZNK8rational6is_oneEv.exit.thread ]
  %.sroa.030.042 = phi ptr [ %i.w, %.lr.ph ], [ %i.ed, %_ZNK8rational6is_oneEv.exit.thread ] ; 6 uses
  %.041 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZNK8rational6is_oneEv.exit.thread ] ; 3 uses
  %.03740 = phi i32 [ -1, %.lr.ph ], [ %.138, %_ZNK8rational6is_oneEv.exit.thread ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.030.042, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !657)
  store i32 0, ptr %5, align 8, !tbaa !157, !alias.scope !657
  %i.ag = load i8, ptr %i.aa, align 4, !alias.scope !657
  %i.ah = and i8 %i.ag, -4                        ; 2 uses
  store i8 %i.ah, ptr %i.aa, align 4, !alias.scope !657
  store ptr null, ptr %i.ab, align 8, !tbaa !158, !alias.scope !657
  store i32 1, ptr %i.ac, align 8, !tbaa !157, !alias.scope !657
  %i.ai = load i8, ptr %i.ad, align 4, !alias.scope !657
  %i.aj = and i8 %i.ai, -4
  store i8 %i.aj, ptr %i.ad, align 4, !alias.scope !657
  store ptr null, ptr %i.ae, align 8, !tbaa !158, !alias.scope !657
  %i.ak = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !213, !noalias !657 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.030.042, i64 12
  %i.am = load i8, ptr %i.al, align 4, !noalias !657
  %i.an = and i8 %i.am, 1
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ap = load i32, ptr %i.af, align 8, !tbaa !157, !noalias !657
  store i32 %i.ap, ptr %5, align 8, !tbaa !157, !alias.scope !657
  store i8 %i.ah, ptr %i.aa, align 4, !alias.scope !657
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i unwind label %bb.u

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.030.042, i64 24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.030.042, i64 28
  %i.as = load i8, ptr %i.ar, align 4, !noalias !657
  %i.at = and i8 %i.as, 1
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.av = load i32, ptr %i.aq, align 8, !tbaa !157, !noalias !657
  store i32 %i.av, ptr %i.ac, align 8, !tbaa !157, !alias.scope !657
  %i.aw = load i8, ptr %i.ad, align 4, !alias.scope !657
  %i.ax = and i8 %i.aw, -2
  store i8 %i.ax, ptr %i.ad, align 4, !alias.scope !657
  br label %_ZN8rationalC2ERKS_.exit.i

bb.f:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %_ZN8rationalC2ERKS_.exit.i unwind label %bb.u

_ZN8rationalC2ERKS_.exit.i:                       ; preds = %bb.f, %bb.e
  %i.ay = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !213, !noalias !657
  invoke void @_ZN11mpz_managerILb1EE3absER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_Z3absRK8rational.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZN8rationalC2ERKS_.exit.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #20
  br label %.body

_Z3absRK8rational.exit:                           ; preds = %_ZN8rationalC2ERKS_.exit.i
  %i.ba = load i32, ptr %4, align 8, !tbaa !205
  %i.bb = load i32, ptr %5, align 8, !tbaa !205
  store i32 %i.bb, ptr %4, align 8, !tbaa !205
  store i32 %i.ba, ptr %5, align 8, !tbaa !205
  %i.bc = load ptr, ptr %i.m, align 8, !tbaa !330
  %i.bd = load ptr, ptr %i.ab, align 8, !tbaa !330
  store ptr %i.bd, ptr %i.m, align 8, !tbaa !330
  store ptr %i.bc, ptr %i.ab, align 8, !tbaa !330
  %i.be = load i8, ptr %i.j, align 4              ; 2 uses
  %i.bf = load i8, ptr %i.aa, align 4             ; 2 uses
  %i.bg = and i8 %i.be, -4
  %i.bh = and i8 %i.bf, -4
  %i.bi = and i8 %i.bf, 3
  %i.bj = or disjoint i8 %i.bi, %i.bg
  store i8 %i.bj, ptr %i.j, align 4
  %i.bk = and i8 %i.be, 3
  %i.bl = or disjoint i8 %i.bh, %i.bk
  store i8 %i.bl, ptr %i.aa, align 4
  %i.bm = load i32, ptr %i.n, align 8, !tbaa !205
  %i.bn = load i32, ptr %i.ac, align 8, !tbaa !205
  store i32 %i.bn, ptr %i.n, align 8, !tbaa !205
  store i32 %i.bm, ptr %i.ac, align 8, !tbaa !205
  %i.bo = load ptr, ptr %i.r, align 8, !tbaa !330
  %i.bp = load ptr, ptr %i.ae, align 8, !tbaa !330
  store ptr %i.bp, ptr %i.r, align 8, !tbaa !330
  store ptr %i.bo, ptr %i.ae, align 8, !tbaa !330
  %i.bq = load i8, ptr %i.o, align 4              ; 2 uses
  %i.br = load i8, ptr %i.ad, align 4             ; 2 uses
  %i.bs = and i8 %i.bq, -4
  %i.bt = and i8 %i.br, -4
  %i.bu = and i8 %i.br, 3
  %i.bv = or disjoint i8 %i.bu, %i.bs
  store i8 %i.bv, ptr %i.o, align 4
  %i.bw = and i8 %i.bq, 3
  %i.bx = or disjoint i8 %i.bt, %i.bw
  store i8 %i.bx, ptr %i.ad, align 4
  %i.by = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !213 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.by, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %_Z3absRK8rational.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.by, ptr noundef nonnull align 8 dereferenceable(16) %i.ac)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %.noexc.i, %_Z3absRK8rational.exit
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #21
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.01443, label %bb.o, label %bb.i

bb.i:                                             ; preds = %_ZN8rationalD2Ev.exit
  %i.cb = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !213 ; 2 uses
  %i.cc = load i8, ptr %i.o, align 4
  %i.cd = and i8 %i.cc, 1
  %i.ce = icmp eq i8 %i.cd, 0
  %i.cf = load i32, ptr %i.n, align 8
  %i.cg = icmp eq i32 %i.cf, 1
  %i.ch = select i1 %i.ce, i1 %i.cg, i1 false
  br i1 %i.ch, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ci = load i8, ptr %i.f, align 4
  %i.cj = and i8 %i.ci, 1
  %i.ck = icmp eq i8 %i.cj, 0
  %i.cl = load i32, ptr %i.e, align 8
  %i.cm = icmp eq i32 %i.cl, 1
  %i.cn = select i1 %i.ck, i1 %i.cm, i1 false
  br i1 %i.cn, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.co = load i8, ptr %i.j, align 4
  %i.cp = and i8 %i.co, 1
  %i.cq = icmp eq i8 %i.cp, 0
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cr = load i8, ptr %i.a, align 4
  %i.cs = and i8 %i.cr, 1
  %i.ct = icmp eq i8 %i.cs, 0
  br i1 %i.ct, label %.split, label %bb.m

.split:                                           ; preds = %bb.l
  %i.cu = load i32, ptr %4, align 8, !tbaa !157
  %i.cv = load i32, ptr %3, align 8, !tbaa !157
  %i.cw = icmp slt i32 %i.cu, %i.cv
  br i1 %i.cw, label %bb.o, label %_ZNK8rational6is_oneEv.exit.thread

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cx = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.cb, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc20:                                         ; preds = %bb.m
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %bb.o, label %_ZNK8rational6is_oneEv.exit.thread

bb.n:                                             ; preds = %bb.j, %bb.i
  %i.cz = invoke noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.cb, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZltRK8rationalS1_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZltRK8rationalS1_.exit:                          ; preds = %bb.n
  br i1 %i.cz, label %bb.o, label %_ZNK8rational6is_oneEv.exit.thread

bb.o:                                             ; preds = %.split, %.noexc20, %_ZltRK8rationalS1_.exit, %_ZN8rationalD2Ev.exit
  %i.da = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !213 ; 2 uses
  %i.db = load i8, ptr %i.j, align 4
  %i.dc = and i8 %i.db, 1
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.de = load i32, ptr %4, align 8, !tbaa !157
  store i32 %i.de, ptr %3, align 8, !tbaa !157
  %i.df = load i8, ptr %i.a, align 4
  %i.dg = and i8 %i.df, -2
  store i8 %i.dg, ptr %i.a, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.q:                                             ; preds = %bb.o
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.da, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.q, %bb.p
  %i.dh = load i8, ptr %i.o, align 4
  %i.di = and i8 %i.dh, 1
  %i.dj = icmp eq i8 %i.di, 0
  br i1 %i.dj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.dk = load i32, ptr %i.n, align 8, !tbaa !157
  store i32 %i.dk, ptr %i.e, align 8, !tbaa !157
  %i.dl = load i8, ptr %i.f, align 4
  %i.dm = and i8 %i.dl, -2
  store i8 %i.dm, ptr %i.f, align 4
  br label %bb.t

bb.s:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.da, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dn = load i32, ptr %i.af, align 8, !tbaa !157
  %.inv = icmp slt i32 %i.dn, 1
  %i.do = select i1 %.inv, i32 -1, i32 1          ; 3 uses
  %i.dp = load i32, ptr %.sroa.030.042, align 8, !tbaa !289 ; 3 uses
  %i.dq = load i8, ptr %i.a, align 4              ; 2 uses
  %i.dr = and i8 %i.dq, 1
  %i.ds = icmp eq i8 %i.dr, 0
  %i.dt = load i32, ptr %3, align 8
  %i.du = icmp eq i32 %i.dt, 1
  %i.dv = select i1 %i.ds, i1 %i.du, i1 false
  br i1 %i.dv, label %_ZNK8rational6is_oneEv.exit, label %_ZNK8rational6is_oneEv.exit.thread

_ZNK8rational6is_oneEv.exit:                      ; preds = %bb.t
  %i.dw = load i8, ptr %i.f, align 4
  %i.dx = and i8 %i.dw, 1
  %i.dy = icmp eq i8 %i.dx, 0
  %i.dz = load i32, ptr %i.e, align 8
  %i.ea = icmp eq i32 %i.dz, 1
  %i.eb = select i1 %i.dy, i1 %i.ea, i1 false
  br i1 %i.eb, label %.critedge.loopexit, label %_ZNK8rational6is_oneEv.exit.thread

bb.u:                                             ; preds = %bb.f, %bb.d
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.ec, %bb.u ], [ %i.az, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.loopexit.split-lp

_ZNK8rational6is_oneEv.exit.thread:               ; preds = %bb.t, %.split, %.noexc20, %_ZNK8rational6is_oneEv.exit, %_ZltRK8rationalS1_.exit
  %.138 = phi i32 [ %i.dp, %_ZNK8rational6is_oneEv.exit ], [ %.03740, %_ZltRK8rationalS1_.exit ], [ %.03740, %.noexc20 ], [ %.03740, %.split ], [ %i.dp, %bb.t ] ; 2 uses
  %.1 = phi i32 [ %i.do, %_ZNK8rational6is_oneEv.exit ], [ %.041, %_ZltRK8rationalS1_.exit ], [ %.041, %.noexc20 ], [ %.041, %.split ], [ %i.do, %bb.t ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.030.042, i64 40 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.y
  br i1 %i.ee, label %_ZNK8rational6is_oneEv.exit.thread..critedge.loopexit_crit_edge, label %bb.b

_ZNK8rational6is_oneEv.exit.thread..critedge.loopexit_crit_edge: ; preds = %_ZNK8rational6is_oneEv.exit.thread
  %.pre51.pre = load i8, ptr %i.a, align 4, !noalias !658
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %_ZNK8rational6is_oneEv.exit, %_ZNK8rational6is_oneEv.exit.thread..critedge.loopexit_crit_edge
  %.pre51 = phi i8 [ %.pre51.pre, %_ZNK8rational6is_oneEv.exit.thread..critedge.loopexit_crit_edge ], [ %i.dq, %_ZNK8rational6is_oneEv.exit ]
  %.239.ph = phi i32 [ %.138, %_ZNK8rational6is_oneEv.exit.thread..critedge.loopexit_crit_edge ], [ %i.dp, %_ZNK8rational6is_oneEv.exit ]
  %.236.ph = phi i32 [ %.1, %_ZNK8rational6is_oneEv.exit.thread..critedge.loopexit_crit_edge ], [ %i.do, %_ZNK8rational6is_oneEv.exit ]
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !203
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.t ; 2 uses
  %.phi.trans.insert48 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre49 = load ptr, ptr %.phi.trans.insert48, align 8, !tbaa !293
  %.pre50 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !292
  %i.ef = and i8 %.pre51, 1
  %i.eg = icmp eq i8 %i.ef, 0
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %i.eh = phi i1 [ true, %bb.a ], [ %i.eg, %.critedge.loopexit ]
  %i.ei = phi ptr [ %i.w, %bb.a ], [ %.pre50, %.critedge.loopexit ]
  %i.ej = phi ptr [ %i.y, %bb.a ], [ %.pre49, %.critedge.loopexit ]
  %.239 = phi i32 [ -1, %bb.a ], [ %.239.ph, %.critedge.loopexit ] ; 2 uses
  %.236 = phi i32 [ 0, %bb.a ], [ %.236.ph, %.critedge.loopexit ]
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.el = zext i32 %.239 to i64
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !220
  %i.en = getelementptr inbounds nuw [24 x i8], ptr %i.em, i64 %i.el ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !278
  %i.eq = load ptr, ptr %i.en, align 8, !tbaa !224
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = sdiv exact i64 %i.et, 12
  %i.ev = ptrtoint ptr %i.ej to i64
  %i.ew = ptrtoint ptr %i.ei to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = sdiv exact i64 %i.ex, 40
  %i.ez = add nsw i64 %i.eu, 4294967295
  %i.fa = add nsw i64 %i.ey, 4294967295
  %i.fb = mul i64 %i.fa, %i.ez
  %i.fc = trunc i64 %i.fb to i32
  call void @llvm.experimental.noalias.scope.decl(metadata !658)
  store i32 %i.fc, ptr %0, align 8, !tbaa !660, !alias.scope !658
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.236, ptr %i.fd, align 4, !tbaa !662, !alias.scope !658
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.239, ptr %i.fe, align 8, !tbaa !664, !alias.scope !658
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 0, ptr %i.ff, align 8, !tbaa !157, !alias.scope !658
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.fh = load i8, ptr %i.fg, align 4, !alias.scope !658
  %i.fi = and i8 %i.fh, -4                        ; 2 uses
  store i8 %i.fi, ptr %i.fg, align 4, !alias.scope !658
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.fj, align 8, !tbaa !158, !alias.scope !658
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i32 1, ptr %i.fk, align 8, !tbaa !157, !alias.scope !658
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.fm = load i8, ptr %i.fl, align 4, !alias.scope !658
  %i.fn = and i8 %i.fm, -4
  store i8 %i.fn, ptr %i.fl, align 4, !alias.scope !658
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.fo, align 8, !tbaa !158, !alias.scope !658
  %i.fp = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !213, !noalias !658 ; 2 uses
  br i1 %i.eh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.critedge
  %i.fq = load i32, ptr %3, align 8, !tbaa !157, !noalias !658
  store i32 %i.fq, ptr %i.ff, align 8, !tbaa !157, !alias.scope !658
  store i8 %i.fi, ptr %i.fg, align 4, !alias.scope !658
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %.critedge
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.fp, ptr noundef nonnull align 8 dereferenceable(32) %i.ff, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %i.fr = load i8, ptr %i.f, align 4, !noalias !658
  %i.fs = and i8 %i.fr, 1
  %i.ft = icmp eq i8 %i.fs, 0
  br i1 %i.ft, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i.i.i.i
  %i.fu = load i32, ptr %i.e, align 8, !tbaa !157, !noalias !658
  store i32 %i.fu, ptr %i.fk, align 8, !tbaa !157, !alias.scope !658
  %i.fv = load i8, ptr %i.fl, align 4, !alias.scope !658
  %i.fw = and i8 %i.fv, -2
  store i8 %i.fw, ptr %i.fl, align 4, !alias.scope !658
  br label %_ZSt10make_tupleIJR8rationalRjRijEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOS7_.exit

bb.y:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i.i.i.i
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.fp, ptr noundef nonnull align 8 dereferenceable(16) %i.fk, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZSt10make_tupleIJR8rationalRjRijEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOS7_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt10make_tupleIJR8rationalRjRijEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOS7_.exit: ; preds = %bb.x, %bb.y
  %i.fx = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !213 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fx, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i26 unwind label %bb.z

.noexc.i26:                                       ; preds = %_ZSt10make_tupleIJR8rationalRjRijEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOS7_.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fx, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %_ZN8rationalD2Ev.exit27 unwind label %bb.z

bb.z:                                             ; preds = %.noexc.i26, %_ZSt10make_tupleIJR8rationalRjRijEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOS7_.exit
  %i.fy = landingpad { ptr, i32 }
          catch ptr null
  %i.fz = extractvalue { ptr, i32 } %i.fy, 0
  call void @__clang_call_terminate(ptr %i.fz) #21
  unreachable

_ZN8rationalD2Ev.exit27:                          ; preds = %.noexc.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.ga = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !213 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ga, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i28 unwind label %bb.aa

.noexc.i28:                                       ; preds = %_ZN8rationalD2Ev.exit27
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ga, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZN8rationalD2Ev.exit29 unwind label %bb.aa

bb.aa:                                            ; preds = %.noexc.i28, %_ZN8rationalD2Ev.exit27
  %i.gb = landingpad { ptr, i32 }
          catch ptr null
  %i.gc = extractvalue { ptr, i32 } %i.gb, 0
  call void @__clang_call_terminate(ptr %i.gc) #21
  unreachable

_ZN8rationalD2Ev.exit29:                          ; preds = %.noexc.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.n, %bb.q, %bb.s, %bb.y, %bb.w
  %lpad.loopexit.split-lp60 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %.pn17 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.loopexit.split-lp60, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn17
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2lp8dioph_eq3imp18normalize_e_by_gcdEjR8rational(ptr noundef nonnull align 8 dereferenceable(1328) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.rational, align 8            ; 11 uses
  %4 = alloca %class.rational, align 8            ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = zext i32 %1 to i64                       ; 5 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !225
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !203
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.b
  call void @_ZN2lp8dioph_eq3imp13gcd_of_coeffsISt6vectorINS_8row_cellI8rationalEE13std_allocatorIS6_EEEES5_RKT_b(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %3, ptr noundef nonnull align 8 dereferenceable(1328) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i1 noundef zeroext true)
  %i.h = load i32, ptr %2, align 8, !tbaa !205
  %i.i = load i32, ptr %3, align 8, !tbaa !205
  store i32 %i.i, ptr %2, align 8, !tbaa !205
  store i32 %i.h, ptr %3, align 8, !tbaa !205
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !330
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !330
  store ptr %i.m, ptr %i.j, align 8, !tbaa !330
  store ptr %i.l, ptr %i.k, align 8, !tbaa !330
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.o = load i8, ptr %i.n, align 4               ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.q = load i8, ptr %i.p, align 4               ; 2 uses
  %i.r = and i8 %i.o, -4
  %i.s = and i8 %i.q, -4
  %i.t = and i8 %i.q, 3
  %i.u = or disjoint i8 %i.t, %i.r
  store i8 %i.u, ptr %i.n, align 4
  %i.v = and i8 %i.o, 3
  %i.w = or disjoint i8 %i.s, %i.v
  store i8 %i.w, ptr %i.p, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.z = load i32, ptr %i.x, align 8, !tbaa !205
  %i.aa = load i32, ptr %i.y, align 8, !tbaa !205
  store i32 %i.aa, ptr %i.x, align 8, !tbaa !205
  store i32 %i.z, ptr %i.y, align 8, !tbaa !205
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !330
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !330
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !330
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !330
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 4             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 4             ; 2 uses
  %i.aj = and i8 %i.ag, -4
  %i.ak = and i8 %i.ai, -4
  %i.al = and i8 %i.ai, 3
  %i.am = or disjoint i8 %i.al, %i.aj
  store i8 %i.am, ptr %i.af, align 4
  %i.an = and i8 %i.ag, 3
  %i.ao = or disjoint i8 %i.ak, %i.an
  store i8 %i.ao, ptr %i.ah, align 4
  %i.ap = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !213 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.y)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #21
  unreachable

end_hunk_3
begin_hunk_4_@_ZN2lp8dioph_eq3imp18init_substitutionsERKNS_8lar_termERNS1_15protected_queueE:bb.a
  br i1 %i.gu, label %_ZNK2lp8dioph_eq3imp14can_substituteEj.exit, label %.preheader, !llvm.loop !14

bb.aa:                                            ; preds = %.loopexit.i
  %i.gv = zext i32 %i.fj to i64
  %i.gw = load i64, ptr %i.dm, align 8, !tbaa !146 ; 2 uses
  %i.gx = urem i64 %i.gv, %i.gw                   ; 2 uses
  %i.gy = load ptr, ptr %i.dl, align 8, !tbaa !145
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.gx
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !262 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i.i.i.i.i, label %.thread69, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !216 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !205
  %i.he = icmp eq i32 %i.fj, %i.hd
  br i1 %i.he, label %_ZNK2lp8dioph_eq3imp14can_substituteEj.exit, label %.lr.ph.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.ad
  %i.hf = icmp eq i32 %i.fj, %i.hi
  br i1 %i.hf, label %_ZNK2lp8dioph_eq3imp14can_substituteEj.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !15

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ab, %bb.ac
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.hg, %bb.ac ], [ %i.hb, %bb.ab ]
  %i.hg = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !216 ; 3 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not18.i.i.i.i.i.i.i, label %.thread69, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !205 ; 2 uses
  %i.hj = zext i32 %i.hi to i64
  %i.hk = urem i64 %i.hj, %i.gw
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.hk, %i.gx
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.ac, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !15

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.ad
  br label %.thread69, !llvm.loop !15

_ZNK2lp8dioph_eq3imp14can_substituteEj.exit:      ; preds = %bb.x, %bb.u, %bb.ac, %bb.z, %bb.w, %bb.ab
  call void @_ZN2lp8dioph_eq3imp15protected_queue4pushEj(ptr noundef nonnull align 8 dereferenceable(80) %2, i32 noundef %i.fj)
  br label %.thread69

.thread69:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %.preheader, %bb.aa, %..loopexit_crit_edge21.i.i.i.i.i.i.i, %_ZNK2lp8dioph_eq3imp14can_substituteEj.exit, %.thread
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.061.088, i64 48 ; 3 uses
  %.not1.i.i.i.i = icmp eq ptr %i.hl, %i.cv
  br i1 %.not1.i.i.i.i, label %_ZN2lp8lar_term14const_iteratorppEv.exit, label %.lr.ph.i.i.i.i52

.lr.ph.i.i.i.i52:                                 ; preds = %.thread69, %bb.ae
  %.sroa.061.1 = phi ptr [ %i.hp, %bb.ae ], [ %i.hl, %.thread69 ] ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.061.1, i64 4
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !267
  %i.ho = icmp eq i32 %i.hn, 2
  br i1 %i.ho, label %_ZN2lp8lar_term14const_iteratorppEv.exit, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i52
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.061.1, i64 48 ; 3 uses
  %.not.i.i.i.i53 = icmp eq ptr %i.hp, %i.cv
  br i1 %.not.i.i.i.i53, label %_ZN2lp8lar_term14const_iteratorppEv.exit, label %.lr.ph.i.i.i.i52, !llvm.loop !9

_ZN2lp8lar_term14const_iteratorppEv.exit:         ; preds = %.lr.ph.i.i.i.i52, %bb.ae, %.thread69
  %.sroa.061.2 = phi ptr [ %i.hl, %.thread69 ], [ %i.hp, %bb.ae ], [ %.sroa.061.1, %.lr.ph.i.i.i.i52 ] ; 2 uses
  %.not = icmp eq ptr %.sroa.061.2, %i.da
  br i1 %.not, label %._crit_edge, label %bb.k

._crit_edge:                                      ; preds = %_ZN2lp8lar_term14const_iteratorppEv.exit, %bb.s, %bb.m, %_ZNK2lp8lar_term5beginEv.exit
  %.not.lcssa = phi i1 [ true, %_ZNK2lp8lar_term5beginEv.exit ], [ false, %bb.m ], [ false, %bb.s ], [ true, %_ZN2lp8lar_term14const_iteratorppEv.exit ]
  ret i1 %.not.lcssa

bb.af:                                            ; preds = %bb.p, %bb.j
  %.pn = phi { ptr, i32 } [ %i.en, %bb.p ], [ %i.dq, %bb.j ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2lp8dioph_eq3imp21subs_with_S_and_freshERNS1_15protected_queueEj(ptr noundef nonnull align 8 dereferenceable(1328) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.c = load ptr, ptr %1, align 8, !tbaa !167
  %i.d = icmp eq ptr %i.c, %1
  br i1 %i.d, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN2lp4joinENS_8lia_moveES0_.exit
  %.09 = phi i32 [ %.0.i, %_ZN2lp4joinENS_8lia_moveES0_.exit ], [ 5, %bb.a ] ; 9 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !219
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !218
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 40
  %i.k = load i32, ptr %0, align 8, !tbaa !143
  %i.l = zext i32 %i.k to i64
  %.not = icmp ugt i64 %i.j, %i.l
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = tail call noundef i32 @_ZN2lp8dioph_eq3imp27subs_front_with_S_and_freshERNS1_15protected_queueEj(ptr noundef nonnull align 8 dereferenceable(1328) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2) ; 10 uses
  %i.n = icmp eq i32 %i.m, %.09
  %i.o = icmp eq i32 %i.m, 5
  %or.cond = or i1 %i.n, %i.o
  br i1 %or.cond, label %_ZN2lp4joinENS_8lia_moveES0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp eq i32 %.09, 5
  br i1 %i.p, label %_ZN2lp4joinENS_8lia_moveES0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = icmp eq i32 %i.m, 3
  br i1 %i.q, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i32 %i.m, 6
  %i.s = icmp eq i32 %.09, 6
  %or.cond3.i = or i1 %i.s, %i.r
  br i1 %or.cond3.i, label %_ZN2lp4joinENS_8lia_moveES0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = icmp eq i32 %i.m, 0
  %i.u = icmp eq i32 %.09, 0
  %or.cond5.i = or i1 %i.u, %i.t
  br i1 %or.cond5.i, label %_ZN2lp4joinENS_8lia_moveES0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = icmp eq i32 %i.m, 4
  %i.w = icmp eq i32 %.09, 4
  %or.cond7.i = or i1 %i.w, %i.v
  br i1 %or.cond7.i, label %_ZN2lp4joinENS_8lia_moveES0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = icmp eq i32 %i.m, 2
  %i.y = icmp eq i32 %.09, 2
  %or.cond9.i = or i1 %i.y, %i.x
  br i1 %or.cond9.i, label %_ZN2lp4joinENS_8lia_moveES0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = icmp eq i32 %i.m, 1
  %i.aa = icmp eq i32 %.09, 1
  %or.cond11.i = or i1 %i.aa, %i.z
  br i1 %or.cond11.i, label %_ZN2lp4joinENS_8lia_moveES0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.13, i32 noundef 74, ptr noundef nonnull @.str.12)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %_ZN2lp4joinENS_8lia_moveES0_.exit

_ZN2lp4joinENS_8lia_moveES0_.exit:                ; preds = %bb.b, %bb.c, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i = phi i32 [ %i.m, %bb.j ], [ %.09, %bb.b ], [ 2, %bb.h ], [ %i.m, %bb.c ], [ 1, %bb.i ], [ 6, %bb.e ], [ 0, %bb.f ], [ 4, %bb.g ] ; 3 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !167
  %i.ac = icmp eq ptr %i.ab, %1
  %i.ad = icmp eq i32 %.0.i, 3
  %or.cond.not = or i1 %i.ad, %i.ac
  br i1 %or.cond.not, label %.critedge, label %.lr.ph, !llvm.loop !731

.critedge:                                        ; preds = %bb.d, %.lr.ph, %_ZN2lp4joinENS_8lia_moveES0_.exit, %bb.a
  %.0.lcssa = phi i32 [ 5, %bb.a ], [ 3, %bb.d ], [ %.0.i, %_ZN2lp4joinENS_8lia_moveES0_.exit ], [ %.09, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2lp8dioph_eq3imp23process_fixed_in_espaceEv(ptr noundef nonnull align 8 dereferenceable(1328) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.6", align 8     ; 10 uses
  %2 = alloca %class.rational, align 8            ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !331  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !331  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZNSt6vectorIj13std_allocatorIjEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIj13std_allocatorIjEE9push_backEOj.exit
  store ptr %i.ck, ptr %1, align 8
  %i.n = icmp eq ptr %i.ck, %i.cj
  br i1 %i.n, label %._crit_edge52, label %.lr.ph51

.lr.ph51:                                         ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.p

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIj13std_allocatorIjEE9push_backEOj.exit
  %i.t = phi ptr [ null, %.lr.ph ], [ %i.ci, %_ZNSt6vectorIj13std_allocatorIjEE9push_backEOj.exit ] ; 9 uses
  %i.u = phi ptr [ null, %.lr.ph ], [ %i.cj, %_ZNSt6vectorIj13std_allocatorIjEE9push_backEOj.exit ] ; 8 uses
  %.sroa.035.048 = phi ptr [ %i.b, %.lr.ph ], [ %i.cl, %_ZNSt6vectorIj13std_allocatorIjEE9push_backEOj.exit ] ; 2 uses
  %i.v = phi ptr [ null, %.lr.ph ], [ %i.ck, %_ZNSt6vectorIj13std_allocatorIjEE9push_backEOj.exit ] ; 14 uses
  %3 = ptrtoaddr ptr %i.t to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.035.048, i64 32 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !333  ; 6 uses
  %i.y = load i64, ptr %i.f, align 8, !tbaa !279
  %.not.not.i.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.not.i.i.i.i.i, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.b, %bb.c
  %.sroa.06.0.in.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i, %bb.c ], [ %i.i, %bb.b ]
  %.sroa.06.0.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i, align 8, !tbaa !216 ; 3 uses
  %i.z = icmp eq ptr %.sroa.06.0.i.i.i.i.i, null
  br i1 %i.z, label %.loopexit39, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !205
  %i.ac = icmp eq i32 %i.x, %i.ab
  br i1 %i.ac, label %_ZNSt6vectorIj13std_allocatorIjEE9push_backEOj.exit, label %.preheader, !llvm.loop !14

bb.d:                                             ; preds = %bb.b
  %i.ad = zext i32 %i.x to i64
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !146 ; 2 uses
  %i.af = urem i64 %i.ad, %i.ae                   ; 2 uses
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !145
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !262 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit39, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !216 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !205
  %i.am = icmp eq i32 %i.x, %i.al
  br i1 %i.am, label %_ZNSt6vectorIj13std_allocatorIjEE9push_backEOj.exit, label %.lr.ph.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.g
  %i.an = icmp eq i32 %i.x, %i.aq
  br i1 %i.an, label %_ZNSt6vectorIj13std_allocatorIjEE9push_backEOj.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !15

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.e, %bb.f
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.ao, %bb.f ], [ %i.aj, %bb.e ]
  %i.ao = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !216 ; 3 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not18.i.i.i.i.i.i.i, label %.loopexit39, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !205 ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = urem i64 %i.ar, %i.ae
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.as, %i.af
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.f, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !15

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.g
  br label %.loopexit39, !llvm.loop !15

.loopexit39:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i, %.preheader, %..loopexit_crit_edge21.i.i.i.i.i.i.i, %bb.d
  %i.at = load ptr, ptr %i.j, align 8, !tbaa !231 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZNK2lp8dioph_eq3imp19local_to_lar_solverEj.exit, label %_ZNK6vectorIN2lp12ext_var_infoELb1EjE4sizeEv.exit.i.i

_ZNK6vectorIN2lp12ext_var_infoELb1EjE4sizeEv.exit.i.i: ; preds = %.loopexit39
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !205
  %.not.i.i = icmp ult i32 %i.x, %i.aw
  br i1 %.not.i.i, label %bb.h, label %_ZNK2lp8dioph_eq3imp19local_to_lar_solverEj.exit

bb.h:                                             ; preds = %_ZNK6vectorIN2lp12ext_var_infoELb1EjE4sizeEv.exit.i.i
  %i.ax = zext i32 %i.x to i64
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !295
  br label %_ZNK2lp8dioph_eq3imp19local_to_lar_solverEj.exit

_ZNK2lp8dioph_eq3imp19local_to_lar_solverEj.exit: ; preds = %bb.h, %_ZNK6vectorIN2lp12ext_var_infoELb1EjE4sizeEv.exit.i.i, %.loopexit39
  %.0.i.i = phi i32 [ %i.az, %bb.h ], [ -1, %_ZNK6vectorIN2lp12ext_var_infoELb1EjE4sizeEv.exit.i.i ], [ -1, %.loopexit39 ]
  %i.ba = load ptr, ptr %i.k, align 8, !tbaa !176, !nonnull !45, !align !46
  %i.bb = invoke noundef zeroext i1 @_ZNK2lp10lar_solver15column_is_fixedEj(ptr noundef nonnull align 8 dereferenceable(152) %i.ba, i32 noundef %.0.i.i)
          to label %_ZNK2lp8dioph_eq3imp8is_fixedEj.exit unwind label %.loopexit.split-lp.loopexit

_ZNK2lp8dioph_eq3imp8is_fixedEj.exit:             ; preds = %_ZNK2lp8dioph_eq3imp19local_to_lar_solverEj.exit
  br i1 %i.bb, label %bb.i, label %_ZNSt6vectorIj13std_allocatorIjEE9push_backEOj.exit

bb.i:                                             ; preds = %_ZNK2lp8dioph_eq3imp8is_fixedEj.exit
  %i.bc = load i32, ptr %i.w, align 8, !tbaa !333 ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.u, %i.t
  br i1 %.not.i.i22, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.bc, ptr %i.u, align 4, !tbaa !205
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  store ptr %i.bd, ptr %i.l, align 8, !tbaa !200
  br label %_ZNSt6vectorIj13std_allocatorIjEE9push_backEOj.exit

bb.k:                                             ; preds = %bb.i
  %i.be = ptrtoint ptr %i.u to i64
  %i.bf = ptrtoint ptr %i.v to i64                ; 3 uses
  %i.bg = sub i64 %i.be, %i.bf                    ; 3 uses
  %i.bh = icmp eq i64 %i.bg, 9223372036854775804
  br i1 %i.bh, label %bb.l, label %_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  store ptr %i.v, ptr %1, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #24
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  unreachable

_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %i.bi = ashr exact i64 %i.bg, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bi ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.bi
  %i.bl = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 2305843009213693951)
  %i.bm = select i1 %i.bk, i64 2305843009213693951, i64 %i.bl ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bn = shl nuw nsw i64 %i.bm, 2
  %i.bo = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.bn)
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit ; 8 uses

.noexc23:                                         ; preds = %_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bg
  store i32 %i.bc, ptr %i.bp, align 4, !tbaa !205
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.v, %i.t
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc23
  %i.bq = ptrtoaddr ptr %i.bo to i64
  %i.br = add i64 %3, -4
  %i.bs = sub i64 %i.br, %i.bf                    ; 2 uses
  %i.bt = lshr i64 %i.bs, 2
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bs, 28
  %i.bv = sub i64 %i.bf, %i.bq
  %diff.check = icmp ugt i64 %i.bv, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader94, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bu, 9223372036854775800     ; 3 uses
  %i.bw = shl i64 %n.vec, 2                       ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bo, i64 %i.bw  ; 2 uses
  %i.by = getelementptr i8, ptr %i.v, i64 %i.bw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bz = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bo, i64 %i.bz ; 2 uses
  %next.gep91 = getelementptr i8, ptr %i.v, i64 %i.bz ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !737)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738)
  %i.ca = getelementptr i8, ptr %next.gep91, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep91, align 4, !tbaa !205, !alias.scope !738
  %wide.load92 = load <4 x i32>, ptr %i.ca, align 4, !tbaa !205, !alias.scope !738
  %i.cb = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !205, !alias.scope !737
  store <4 x i32> %wide.load92, ptr %i.cb, align 4, !tbaa !205, !alias.scope !737
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !735

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader94

.lr.ph.i.i.i.i.i.i.preheader94:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bx, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.by, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader94, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader94 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader94 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !737)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738)
  %i.cd = load i32, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !205, !alias.scope !738
  store i32 %i.cd, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !205, !alias.scope !737
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ce, %i.t
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !736

_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc23
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bo, %.noexc23 ], [ %i.bx, %middle.block ], [ %i.cf, %.lr.ph.i.i.i.i.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.v)
          to label %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i.i unwind label %.loopexit.split-lp.loopexit

_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i.i
  store ptr %i.cg, ptr %i.l, align 8, !tbaa !200
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bm ; 2 uses
  store ptr %i.ch, ptr %i.m, align 8, !tbaa !298
  br label %_ZNSt6vectorIj13std_allocatorIjEE9push_backEOj.exit

_ZNSt6vectorIj13std_allocatorIjEE9push_backEOj.exit: ; preds = %bb.f, %bb.c, %bb.j, %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i.i, %bb.e, %_ZNK2lp8dioph_eq3imp8is_fixedEj.exit
  %i.ci = phi ptr [ %i.t, %bb.c ], [ %i.t, %_ZNK2lp8dioph_eq3imp8is_fixedEj.exit ], [ %i.t, %bb.j ], [ %i.ch, %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i.i ], [ %i.t, %bb.e ], [ %i.t, %bb.f ]
  %i.cj = phi ptr [ %i.u, %bb.c ], [ %i.u, %_ZNK2lp8dioph_eq3imp8is_fixedEj.exit ], [ %i.bd, %bb.j ], [ %i.cg, %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i.i ], [ %i.u, %bb.e ], [ %i.u, %bb.f ] ; 3 uses
  %i.ck = phi ptr [ %i.v, %bb.c ], [ %i.v, %_ZNK2lp8dioph_eq3imp8is_fixedEj.exit ], [ %i.v, %bb.j ], [ %i.bo, %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i.i ], [ %i.v, %bb.e ], [ %i.v, %bb.f ] ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.035.048, i64 40 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.d
  br i1 %i.cm, label %._crit_edge, label %bb.b

._crit_edge52:                                    ; preds = %bb.u, %._crit_edge
  %.not.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIj13std_allocatorIjEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge52
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ck)
          to label %_ZNSt6vectorIj13std_allocatorIjEED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #21
  unreachable

_ZNSt6vectorIj13std_allocatorIjEED2Ev.exit:       ; preds = %bb.a, %._crit_edge52, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret void

bb.p:                                             ; preds = %.lr.ph51, %bb.u
  %.sroa.030.049 = phi ptr [ %i.ck, %.lr.ph51 ], [ %i.dj, %bb.u ] ; 2 uses
  %i.cp = load i32, ptr %.sroa.030.049, align 4, !tbaa !205 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = load ptr, ptr %i.o, align 8, !tbaa !217
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cq
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !205
  %i.cu = sext i32 %i.ct to i64
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !218
  %i.cw = getelementptr inbounds nuw [40 x i8], ptr %i.cv, i64 %i.cu
  %i.cx = load ptr, ptr %i.p, align 8, !tbaa !176, !nonnull !45, !align !46
  %i.cy = load ptr, ptr %i.q, align 8, !tbaa !231 ; 3 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %_ZNK2lp8dioph_eq3imp19local_to_lar_solverEj.exit28, label %_ZNK6vectorIN2lp12ext_var_infoELb1EjE4sizeEv.exit.i.i25

_ZNK6vectorIN2lp12ext_var_infoELb1EjE4sizeEv.exit.i.i25: ; preds = %bb.p
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 -4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !205
  %.not.i.i26 = icmp ult i32 %i.cp, %i.db
  br i1 %.not.i.i26, label %bb.q, label %_ZNK2lp8dioph_eq3imp19local_to_lar_solverEj.exit28

bb.q:                                             ; preds = %_ZNK6vectorIN2lp12ext_var_infoELb1EjE4sizeEv.exit.i.i25
  %i.dc = getelementptr inbounds nuw [40 x i8], ptr %i.cy, i64 %i.cq
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !295
  br label %_ZNK2lp8dioph_eq3imp19local_to_lar_solverEj.exit28

_ZNK2lp8dioph_eq3imp19local_to_lar_solverEj.exit28: ; preds = %bb.q, %_ZNK6vectorIN2lp12ext_var_infoELb1EjE4sizeEv.exit.i.i25, %bb.p
  %.0.i.i27 = phi i32 [ %i.dd, %bb.q ], [ -1, %_ZNK6vectorIN2lp12ext_var_infoELb1EjE4sizeEv.exit.i.i25 ], [ -1, %bb.p ]
  %i.de = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK2lp10lar_solver15get_lower_boundEj(ptr noundef nonnull align 8 dereferenceable(152) %i.cx, i32 noundef %.0.i.i27)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK2lp8dioph_eq3imp19local_to_lar_solverEj.exit28
  invoke void @_ZmlRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.cw, ptr noundef nonnull align 8 dereferenceable(32) %i.de)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.df = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !213
  invoke void @_ZN11mpq_managerILb1EE3addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.df, ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_ZN8rationalpLERKS_.exit unwind label %bb.w

_ZN8rationalpLERKS_.exit:                         ; preds = %bb.s
  %i.dg = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !213 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc.i unwind label %bb.t

.noexc.i:                                         ; preds = %_ZN8rationalpLERKS_.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %.noexc.i, %_ZN8rationalpLERKS_.exit
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #21
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  invoke void @_ZN2lp8dioph_eq3imp15term_with_index5eraseEj(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef %i.cp)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %_ZN8rationalD2Ev.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.030.049, i64 4 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.cj
  br i1 %i.dk, label %._crit_edge52, label %bb.p

bb.v:                                             ; preds = %bb.r, %_ZNK2lp8dioph_eq3imp19local_to_lar_solverEj.exit28
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #20
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.dm, %bb.w ], [ %i.dl, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i.i, %bb.m, %_ZNK2lp8dioph_eq3imp19local_to_lar_solverEj.exit
  %lpad.loopexit42 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.v, ptr %1, align 8
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN8rationalD2Ev.exit, %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.x
  %.pn19.pn = phi { ptr, i32 } [ %.pn, %bb.x ], [ %lpad.loopexit42, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIj13std_allocatorIjEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %.pn19.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2lp8dioph_eq3imp17tighten_on_espaceEj(ptr noundef nonnull align 8 dereferenceable(1328) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_4
begin_hunk_5_@_ZN2lp8dioph_eq3imp15protected_queueD2Ev:bb.a
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !169  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt13unordered_mapIjSt14_List_iteratorIjESt4hashIjESt8equal_toIjESaISt4pairIKjS1_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIjSt4pairIKjSt14_List_iteratorIjEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !170
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #22
  br label %_ZNSt13unordered_mapIjSt14_List_iteratorIjESt4hashIjESt8equal_toIjESaISt4pairIKjS1_EEED2Ev.exit

_ZNSt13unordered_mapIjSt14_List_iteratorIjESt4hashIjESt8equal_toIjESaISt4pairIKjS1_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIjSt4pairIKjSt14_List_iteratorIjEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.b
  %i.n = load ptr, ptr %0, align 8, !tbaa !167    ; 2 uses
  %.not8.i.i = icmp eq ptr %i.n, %0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIjSaIjEED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt13unordered_mapIjSt14_List_iteratorIjESt4hashIjESt8equal_toIjESaISt4pairIKjS1_EEED2Ev.exit, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.n, %_ZNSt13unordered_mapIjSt14_List_iteratorIjESt4hashIjESt8equal_toIjESaISt4pairIKjS1_EEED2Ev.exit ] ; 2 uses
  %i.o = load ptr, ptr %.09.i.i, align 8, !tbaa !167 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #22
  %.not.i.i = icmp eq ptr %i.o, %0
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIjSaIjEED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !29

_ZNSt7__cxx1110_List_baseIjSaIjEED2Ev.exit:       ; preds = %.lr.ph.i.i, %_ZNSt13unordered_mapIjSt14_List_iteratorIjESt4hashIjESt8equal_toIjESaISt4pairIKjS1_EEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2lp8dioph_eq3imp27subs_front_with_S_and_freshERNS1_15protected_queueEj(ptr noundef nonnull align 8 dereferenceable(1328) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN2lp8dioph_eq3imp23process_fixed_in_espaceEv(ptr noundef nonnull align 8 dereferenceable(1328) %0)
  %i.a = tail call noundef i32 @_ZN2lp8dioph_eq3imp17tighten_on_espaceEj(ptr noundef nonnull align 8 dereferenceable(1328) %0, i32 noundef %2) ; 9 uses
  %i.b = icmp eq i32 %i.a, 3
  br i1 %i.b, label %_ZN2lp4joinENS_8lia_moveES0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZN2lp8dioph_eq3imp32find_var_to_substitute_on_espaceERNS1_15protected_queueE(ptr noundef nonnull align 8 dereferenceable(1328) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) ; 7 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %_ZN2lp4joinENS_8lia_moveES0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.f = load i64, ptr %i.e, align 8, !tbaa !279
  %.not.not.i.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.not.i.i.i.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 768
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.06.0.in.i.i.i.i.i = phi ptr [ %i.g, %bb.d ], [ %.sroa.06.0.i.i.i.i.i, %bb.f ]
  %.sroa.06.0.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i, align 8, !tbaa !216 ; 3 uses
  %i.h = icmp eq ptr %.sroa.06.0.i.i.i.i.i, null
  br i1 %i.h, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !205
  %i.k = icmp eq i32 %i.c, %i.j
  br i1 %i.k, label %_ZNK2lp8dioph_eq3imp23is_substituted_by_freshEj.exit, label %bb.e, !llvm.loop !14

bb.g:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.m = zext i32 %i.c to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.o = load i64, ptr %i.n, align 8, !tbaa !146  ; 2 uses
  %i.p = urem i64 %i.m, %i.o                      ; 2 uses
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !145
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !262  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !216  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !205
  %i.w = icmp eq i32 %i.c, %i.v
  br i1 %i.w, label %_ZNK2lp8dioph_eq3imp23is_substituted_by_freshEj.exit, label %.lr.ph.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.j
  %i.x = icmp eq i32 %i.c, %i.aa
  br i1 %i.x, label %_ZNK2lp8dioph_eq3imp23is_substituted_by_freshEj.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !15

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.h, %bb.i
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.y, %bb.i ], [ %i.t, %bb.h ]
  %i.y = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !216 ; 3 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not18.i.i.i.i.i.i.i, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !205 ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = urem i64 %i.ab, %i.o
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.ac, %i.p
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.i, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !15

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.j
  br label %.loopexit, !llvm.loop !15

_ZNK2lp8dioph_eq3imp23is_substituted_by_freshEj.exit: ; preds = %bb.i, %bb.f, %bb.h
  %i.ad = tail call noundef i32 @_ZN2lp8dioph_eq3imp20subs_qfront_by_freshEjRNS1_15protected_queueEj(ptr noundef nonnull align 8 dereferenceable(1328) %0, i32 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2)
  br label %bb.k

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.e, %..loopexit_crit_edge21.i.i.i.i.i.i.i, %bb.g
  %i.ae = tail call noundef i32 @_ZN2lp8dioph_eq3imp16subs_qfront_by_SEjRNS1_15protected_queueEj(ptr noundef nonnull align 8 dereferenceable(1328) %0, i32 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2)
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %_ZNK2lp8dioph_eq3imp23is_substituted_by_freshEj.exit
  %.0 = phi i32 [ %i.ad, %_ZNK2lp8dioph_eq3imp23is_substituted_by_freshEj.exit ], [ %i.ae, %.loopexit ] ; 10 uses
  %i.af = icmp eq i32 %.0, %i.a
  %i.ag = icmp eq i32 %.0, 5
  %or.cond = or i1 %i.af, %i.ag
  br i1 %or.cond, label %_ZN2lp4joinENS_8lia_moveES0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = icmp eq i32 %i.a, 5
  br i1 %i.ah, label %_ZN2lp4joinENS_8lia_moveES0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = icmp eq i32 %.0, 3
  br i1 %i.ai, label %_ZN2lp4joinENS_8lia_moveES0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = icmp eq i32 %.0, 6
  %i.ak = icmp eq i32 %i.a, 6
  %or.cond3.i = or i1 %i.ak, %i.aj
  br i1 %or.cond3.i, label %_ZN2lp4joinENS_8lia_moveES0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = icmp eq i32 %.0, 0
  %i.am = icmp eq i32 %i.a, 0
  %or.cond5.i = or i1 %i.am, %i.al
  br i1 %or.cond5.i, label %_ZN2lp4joinENS_8lia_moveES0_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = icmp eq i32 %.0, 4
  %i.ao = icmp eq i32 %i.a, 4
  %or.cond7.i = or i1 %i.ao, %i.an
  br i1 %or.cond7.i, label %_ZN2lp4joinENS_8lia_moveES0_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = icmp eq i32 %.0, 2
  %i.aq = icmp eq i32 %i.a, 2
  %or.cond9.i = or i1 %i.aq, %i.ap
  br i1 %or.cond9.i, label %_ZN2lp4joinENS_8lia_moveES0_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = icmp eq i32 %.0, 1
  %i.as = icmp eq i32 %i.a, 1
  %or.cond11.i = or i1 %i.as, %i.ar
  br i1 %or.cond11.i, label %_ZN2lp4joinENS_8lia_moveES0_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.13, i32 noundef 74, ptr noundef nonnull @.str.12)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %_ZN2lp4joinENS_8lia_moveES0_.exit

_ZN2lp4joinENS_8lia_moveES0_.exit:                ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.b, %bb.a
  %.1 = phi i32 [ 3, %bb.a ], [ 5, %bb.b ], [ %.0, %bb.s ], [ %i.a, %bb.k ], [ 1, %bb.r ], [ %.0, %bb.l ], [ 3, %bb.m ], [ 6, %bb.n ], [ 0, %bb.o ], [ 4, %bb.p ], [ 2, %bb.q ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2lp8dioph_eq3imp32find_var_to_substitute_on_espaceERNS1_15protected_queueE(ptr noundef nonnull align 8 dereferenceable(1328) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0109.0192 = load ptr, ptr %1, align 8, !tbaa !167 ; 2 uses
  %i.a = icmp eq ptr %.sroa.0109.0192, %1
  br i1 %i.a, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %.lr.ph202

.lr.ph202:                                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 472
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %.not = icmp eq i32 %.2, -1
  br i1 %.not, label %bb.ag, label %bb.af

bb.b:                                             ; preds = %.lr.ph202, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %.sroa.0109.0201 = phi ptr [ %.sroa.0109.0192, %.lr.ph202 ], [ %.sroa.0109.0, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 2 uses
  %.0200 = phi i32 [ -1, %.lr.ph202 ], [ %.2, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 4 uses
  %.033199 = phi i64 [ -1, %.lr.ph202 ], [ %.235, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 6 uses
  %.050198 = phi i32 [ 0, %.lr.ph202 ], [ %.252, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 4 uses
  %.sroa.0112.0196 = phi ptr [ null, %.lr.ph202 ], [ %.sroa.0112.1, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 12 uses
  %.sroa.13.0194 = phi ptr [ null, %.lr.ph202 ], [ %.sroa.13.1, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 10 uses
  %.sroa.9116.0193 = phi ptr [ null, %.lr.ph202 ], [ %.sroa.9116.1, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0109.0201, i64 16
  %i.o = load i32, ptr %i.n, align 4, !tbaa !205  ; 17 uses
  %i.p = zext i32 %i.o to i64                     ; 5 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !334
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !217  ; 3 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2                   ; 2 uses
  %i.w = icmp ugt i64 %i.v, %i.p
  br i1 %i.w, label %_ZNK2lp8dioph_eq3imp15term_with_index3hasEj.exit, label %_ZNK2lp8dioph_eq3imp15term_with_index3hasEj.exit.thread

_ZNK2lp8dioph_eq3imp15term_with_index3hasEj.exit: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.p
  %i.y = load i32, ptr %i.x, align 4, !tbaa !205
  %i.z = icmp sgt i32 %i.y, -1
  br i1 %i.z, label %bb.h, label %_ZNK2lp8dioph_eq3imp15term_with_index3hasEj.exit.thread

_ZNK2lp8dioph_eq3imp15term_with_index3hasEj.exit.thread: ; preds = %bb.b, %_ZNK2lp8dioph_eq3imp15term_with_index3hasEj.exit
  %.not.i = icmp eq ptr %.sroa.9116.0193, %.sroa.13.0194
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK2lp8dioph_eq3imp15term_with_index3hasEj.exit.thread
  store i32 %i.o, ptr %.sroa.9116.0193, align 4, !tbaa !205
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.9116.0193, i64 4
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.d:                                             ; preds = %_ZNK2lp8dioph_eq3imp15term_with_index3hasEj.exit.thread
  %i.ab = ptrtoint ptr %.sroa.9116.0193 to i64
  %i.ac = ptrtoint ptr %.sroa.0112.0196 to i64    ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 5 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775804
  br i1 %i.ae, label %bb.e, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #24
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.af = ashr exact i64 %i.ad, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 2305843009213693951)
  %i.aj = select i1 %i.ah, i64 2305843009213693951, i64 %i.ai ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 2
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #23
          to label %.noexc63 unwind label %.loopexit.split-lp.loopexit ; 4 uses

.noexc63:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ad ; 2 uses
  store i32 %i.o, ptr %i.am, align 4, !tbaa !205
  %i.an = icmp sgt i64 %i.ad, 0
  br i1 %i.an, label %bb.f, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.f:                                             ; preds = %.noexc63
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.al, ptr align 4 %.sroa.0112.0196, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.f, %.noexc63
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %.not.i17.i.i = icmp eq ptr %.sroa.0112.0196, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %2 = ptrtoint ptr %.sroa.13.0194 to i64
  %3 = sub i64 %2, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0112.0196, i64 noundef %3) #22
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.aj
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.h:                                             ; preds = %_ZNK2lp8dioph_eq3imp15term_with_index3hasEj.exit
  %i.aq = load i64, ptr %i.e, align 8, !tbaa !279
  %.not.not.i.i.i = icmp eq i64 %i.aq, 0          ; 2 uses
  br i1 %.not.not.i.i.i, label %.preheader218, label %bb.j

.preheader218:                                    ; preds = %bb.h, %bb.i
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.i ], [ %i.g, %bb.h ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !216 ; 3 uses
  %i.ar = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %i.ar, label %.loopexit142, label %bb.i

bb.i:                                             ; preds = %.preheader218
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.at = load i32, ptr %i.as, align 4, !tbaa !205
  %i.au = icmp eq i32 %i.o, %i.at
  br i1 %i.au, label %.loopexit143, label %.preheader218, !llvm.loop !14

bb.j:                                             ; preds = %bb.h
  %i.av = load i64, ptr %i.f, align 8, !tbaa !146 ; 3 uses
  %i.aw = urem i64 %i.p, %i.av                    ; 3 uses
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !145
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.aw
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !262 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i, label %.loopexit142, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !216 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !205
  %i.bd = icmp eq i32 %i.o, %i.bc
  br i1 %i.bd, label %.thread122.thread, label %.lr.ph.i.i.i.i.i

bb.l:                                             ; preds = %bb.m
  %i.be = icmp eq i32 %i.o, %i.bh
  br i1 %i.be, label %.loopexit143, label %.lr.ph.i.i.i.i.i, !llvm.loop !15

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k, %bb.l
  %.020.i.i.i.i.i = phi ptr [ %i.bf, %bb.l ], [ %i.ba, %bb.k ]
  %i.bf = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !216 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit142, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !205 ; 2 uses
  %i.bi = zext i32 %i.bh to i64
  %i.bj = urem i64 %i.bi, %i.av
  %.not19.i.i.i.i.i = icmp eq i64 %i.bj, %i.aw
  br i1 %.not19.i.i.i.i.i, label %bb.l, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !15

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.m
  br label %.loopexit142, !llvm.loop !15

.loopexit143:                                     ; preds = %bb.l, %bb.i
  br i1 %.not.not.i.i.i, label %.preheader215, label %.thread122

.preheader215:                                    ; preds = %.loopexit143, %bb.n
  %.sroa.06.0.in.i.i.i71 = phi ptr [ %.sroa.06.0.i.i.i72, %bb.n ], [ %i.g, %.loopexit143 ]
  %.sroa.06.0.i.i.i72 = load ptr, ptr %.sroa.06.0.in.i.i.i71, align 8, !tbaa !216 ; 4 uses
  %i.bk = icmp eq ptr %.sroa.06.0.i.i.i72, null
  br i1 %i.bk, label %.loopexit.i, label %bb.n

bb.n:                                             ; preds = %.preheader215
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i72, i64 8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !205
  %i.bn = icmp eq i32 %i.o, %i.bm
  br i1 %i.bn, label %.loopexit139, label %.preheader215, !llvm.loop !14

.thread122:                                       ; preds = %.loopexit143
  %.pre = load i64, ptr %i.f, align 8, !tbaa !146 ; 2 uses
  %.pre239 = load ptr, ptr %i.d, align 8, !tbaa !145
  %.pre240 = urem i64 %i.p, %.pre                 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre239, i64 %.pre240
  %.pre241 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !262 ; 2 uses
  %.not.i.i.i.i.i65 = icmp eq ptr %.pre241, null
  br i1 %.not.i.i.i.i.i65, label %.loopexit.i, label %.thread122.thread

.thread122.thread:                                ; preds = %bb.k, %.thread122
  %i.bo = phi i64 [ %.pre, %.thread122 ], [ %i.av, %bb.k ]
  %.pre-phi280 = phi i64 [ %.pre240, %.thread122 ], [ %i.aw, %bb.k ]
  %i.bp = phi ptr [ %.pre241, %.thread122 ], [ %i.az, %bb.k ]
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !216 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !205
  %i.bt = icmp eq i32 %i.o, %i.bs
  br i1 %i.bt, label %.loopexit139, label %.lr.ph.i.i.i.i.i66

bb.o:                                             ; preds = %bb.p
  %i.bu = icmp eq i32 %i.o, %i.bx
  br i1 %i.bu, label %.loopexit139, label %.lr.ph.i.i.i.i.i66, !llvm.loop !15

.lr.ph.i.i.i.i.i66:                               ; preds = %.thread122.thread, %bb.o
  %.020.i.i.i.i.i67 = phi ptr [ %i.bv, %bb.o ], [ %i.bq, %.thread122.thread ]
  %i.bv = load ptr, ptr %.020.i.i.i.i.i67, align 8, !tbaa !216 ; 4 uses
  %.not18.i.i.i.i.i68 = icmp eq ptr %i.bv, null
  br i1 %.not18.i.i.i.i.i68, label %.loopexit.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i66
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !205 ; 2 uses
  %i.by = zext i32 %i.bx to i64
  %i.bz = urem i64 %i.by, %i.bo
  %.not19.i.i.i.i.i69 = icmp eq i64 %i.bz, %.pre-phi280
  br i1 %.not19.i.i.i.i.i69, label %bb.o, label %..loopexit_crit_edge21.i.i.i.i.i70, !llvm.loop !15

..loopexit_crit_edge21.i.i.i.i.i70:               ; preds = %bb.p
  br label %.loopexit.i, !llvm.loop !15

.loopexit.i:                                      ; preds = %.thread122, %.lr.ph.i.i.i.i.i66, %.preheader215, %..loopexit_crit_edge21.i.i.i.i.i70
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.5, i32 noundef 142, ptr noundef nonnull @.str.10)
          to label %.noexc73 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc73:                                         ; preds = %.loopexit.i
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %.noexc74 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc74:                                         ; preds = %.noexc73
  unreachable

.loopexit139:                                     ; preds = %bb.o, %bb.n, %.thread122.thread
  %.sroa.06.1.i.i5.i = phi ptr [ %i.bq, %.thread122.thread ], [ %.sroa.06.0.i.i.i72, %bb.n ], [ %i.bv, %bb.o ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i5.i, i64 12
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !297
  %i.cc = zext i32 %i.cb to i64
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !203
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %i.cc ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !287 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !287 ; 2 uses
  %i.ci = icmp eq ptr %i.cf, %i.ch
  br i1 %i.ci, label %.thread126, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit139, %bb.r
  %.044186 = phi i64 [ %.145, %bb.r ], [ 0, %.loopexit139 ] ; 3 uses
  %.sroa.096.0185 = phi ptr [ %i.cq, %bb.r ], [ %i.cf, %.loopexit139 ] ; 2 uses
  %i.cj = load i32, ptr %.sroa.096.0185, align 8, !tbaa !289 ; 2 uses
  %.not60 = icmp eq i32 %i.cj, %i.o
  br i1 %.not60, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = icmp ugt i64 %i.v, %i.ck
  br i1 %i.cl, label %_ZNK2lp8dioph_eq3imp15term_with_index3hasEj.exit75, label %_ZNK2lp8dioph_eq3imp15term_with_index3hasEj.exit75.thread

_ZNK2lp8dioph_eq3imp15term_with_index3hasEj.exit75.thread: ; preds = %bb.q
  %i.cm = add i64 %.044186, 1
  br label %bb.r

_ZNK2lp8dioph_eq3imp15term_with_index3hasEj.exit75: ; preds = %bb.q
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ck
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !205
  %.fr = freeze i32 %i.co
  %.fr.lobit = lshr i32 %.fr, 31
  %i.cp = zext nneg i32 %.fr.lobit to i64
  %spec.select = add i64 %.044186, %i.cp
  br label %bb.r

bb.r:                                             ; preds = %_ZNK2lp8dioph_eq3imp15term_with_index3hasEj.exit75, %_ZNK2lp8dioph_eq3imp15term_with_index3hasEj.exit75.thread, %.lr.ph
  %.145 = phi i64 [ %.044186, %.lr.ph ], [ %i.cm, %_ZNK2lp8dioph_eq3imp15term_with_index3hasEj.exit75.thread ], [ %spec.select, %_ZNK2lp8dioph_eq3imp15term_with_index3hasEj.exit75 ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.096.0185, i64 40 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.ch
  br i1 %i.cr, label %.thread126, label %.lr.ph

.loopexit142:                                     ; preds = %.lr.ph.i.i.i.i.i, %.preheader218, %..loopexit_crit_edge21.i.i.i.i.i, %bb.j
  %i.cs = load i64, ptr %i.j, align 8, !tbaa !279
  %.not.not.i.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not.not.i.i.i.i, label %.preheader, label %bb.t

.preheader:                                       ; preds = %.loopexit142, %bb.s
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.s ], [ %i.l, %.loopexit142 ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !216 ; 3 uses
  %i.ct = icmp eq ptr %.sroa.06.0.i.i.i.i, null
  br i1 %i.ct, label %.thread126, label %bb.s

bb.s:                                             ; preds = %.preheader
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !205
  %i.cw = icmp eq i32 %i.o, %i.cv
  br i1 %i.cw, label %.loopexit135, label %.preheader, !llvm.loop !14

bb.t:                                             ; preds = %.loopexit142
  %i.cx = load i64, ptr %i.k, align 8, !tbaa !146 ; 2 uses
  %i.cy = urem i64 %i.p, %i.cx                    ; 2 uses
  %i.cz = load ptr, ptr %i.i, align 8, !tbaa !145
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cy
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !262 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i.i.i, label %.thread126, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !216 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !205
end_hunk_5
