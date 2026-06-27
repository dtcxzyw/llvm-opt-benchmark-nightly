inline.NumInlined: 7467
inline.NumDeleted: 3072
begin_hunk_0_@_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS7_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i4
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !51
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !55
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.g:                                             ; preds = %.noexc.i5
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %0, align 8, !tbaa !55    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.af) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ae
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !113 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !55   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.f) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.i) #25
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #25
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !114

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !115
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !116
  %i.o = shl i64 %i.n, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %i.o, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.p = load ptr, ptr %0, align 8, !tbaa !115    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  tail call void @_ZdlPv(ptr noundef %i.p) #25
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSL_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.g, label %bb.b, !prof !226

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 2 uses
  %.not5.i = icmp eq ptr %i.c, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i
  %.06.i = phi ptr [ %i.d, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i ], [ %i.c, %bb.b ] ; 6 uses
  %i.d = load ptr, ptr %.06.i, align 8, !tbaa !113 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.06.i, i64 56
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  tail call void @_ZdlPv(ptr noundef %i.g) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !55   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.06.i, i64 24
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.j) #25
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i) #25
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit, label %.lr.ph.i, !llvm.loop !114

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, %bb.b
  %i.m = load ptr, ptr %0, align 8, !tbaa !115    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit
  tail call void @_ZdlPv(ptr noundef %i.m) #25
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !122
  %i.r = load ptr, ptr %1, align 8, !tbaa !115    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !124
  store ptr %i.u, ptr %i.n, align 8, !tbaa !124
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, %bb.d
  %i.v = phi ptr [ %i.n, %bb.d ], [ %i.r, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit ] ; 2 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !115
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !116  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !116
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !112 ; 3 uses
  store ptr %i.aa, ptr %i.b, align 8, !tbaa !112
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !121
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !121
  %.not.i12 = icmp eq ptr %i.aa, null
  br i1 %.not.i12, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !125
  %i.ag = urem i64 %i.af, %i.x
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ag
  store ptr %i.b, ptr %i.ah, align 8, !tbaa !127
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit: ; preds = %bb.e, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.ai, align 8, !tbaa !128
  store i64 1, ptr %i.w, align 8, !tbaa !116
  store ptr null, ptr %i.s, align 8, !tbaa !124
  store ptr %i.s, ptr %1, align 8, !tbaa !115
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_L23IsFunctionallyDependentERKS5_RKNS0_6vectorIS5_Lb1ESaIS5_EEEE3$_0E9_M_invokeERKSt9_Any_dataS6_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !187   ; 3 uses
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1634, !nonnull !40
  store i8 1, ptr %i.a, align 1, !tbaa !384
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1636, !nonnull !40, !align !41
  %i.d = tail call fastcc noundef zeroext i1 @_ZN6duckdbL23IsFunctionallyDependentERKNS_10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEERKNS_6vectorIS4_Lb1ESaIS4_EEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c), !inline_history !1637
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1638, !nonnull !40 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !384, !range !82, !noundef !40
  %2 = select i1 %i.d, i8 %i.g, i8 0
  store i8 %2, ptr %i.f, align 1, !tbaa !384
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_L23IsFunctionallyDependentERKS5_RKNS0_6vectorIS5_Lb1ESaIS5_EEEE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL23IsFunctionallyDependentERKNS1_10unique_ptrINS1_10ExpressionESt14default_deleteIS3_ELb1EEERKNS1_6vectorIS6_Lb1ESaIS6_EEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdbL23IsFunctionallyDependentERKNS_10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEERKNS_6vectorIS4_Lb1ESaIS4_EEEE3$_0", ptr %0, align 8, !tbaa !1639
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL23IsFunctionallyDependentERKNS1_10unique_ptrINS1_10ExpressionESt14default_deleteIS3_ELb1EEERKNS1_6vectorIS6_Lb1ESaIS6_EEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !187
  store ptr %.val, ptr %0, align 8, !tbaa !187
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL23IsFunctionallyDependentERKNS1_10unique_ptrINS1_10ExpressionESt14default_deleteIS3_ELb1EEERKNS1_6vectorIS6_Lb1ESaIS6_EEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !1641
  store ptr %i.a, ptr %0, align 8, !tbaa !187
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL23IsFunctionallyDependentERKNS1_10unique_ptrINS1_10ExpressionESt14default_deleteIS3_ELb1EEERKNS1_6vectorIS6_Lb1ESaIS6_EEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !187 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL23IsFunctionallyDependentERKNS1_10unique_ptrINS1_10ExpressionESt14default_deleteIS3_ELb1EEERKNS1_6vectorIS6_Lb1ESaIS6_EEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPv(ptr noundef nonnull %.val7.i) #25
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL23IsFunctionallyDependentERKNS1_10unique_ptrINS1_10ExpressionESt14default_deleteIS3_ELb1EEERKNS1_6vectorIS6_Lb1ESaIS6_EEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdbL23IsFunctionallyDependentERKNS1_10unique_ptrINS1_10ExpressionESt14default_deleteIS3_ELb1EEERKNS1_6vectorIS6_Lb1ESaIS6_EEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb18BaseScalarFunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(236) %0, ptr noundef nonnull align 8 dereferenceable(236) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6duckdb8FunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14SimpleFunctionE, i64 16), ptr %0, align 8, !tbaa !83
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit.i unwind label %bb.b

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit10.i unwind label %bb.c

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit10.i: ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 184
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_ZN6duckdb14SimpleFunctionC2ERKS0_.exit unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.c:                                             ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit10.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  tail call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #23
  br label %bb.f

common.resume:                                    ; preds = %bb.h, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i, %bb.f ], [ %i.o, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e, %bb.b
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.e ], [ %i.g, %bb.b ]
  tail call void @_ZN6duckdb8FunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(208) %0) #23
  br label %common.resume

_ZN6duckdb14SimpleFunctionC2ERKS0_.exit:          ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit10.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb18BaseScalarFunctionE, i64 16), ptr %0, align 8, !tbaa !83
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 208
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN6duckdb14SimpleFunctionC2ERKS0_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.n = load i32, ptr %i.m, align 8
  store i32 %i.n, ptr %i.l, align 8
  ret void

bb.h:                                             ; preds = %_ZN6duckdb14SimpleFunctionC2ERKS0_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb14SimpleFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #23
  br label %common.resume
}

; Function Attrs: nounwind
declare void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(236)) unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(368) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17AggregateFunctionE, i64 16), ptr %0, align 8, !tbaa !83
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb17AggregateFunctionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !222
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !224
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !225
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !225
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb17AggregateFunctionD2Ev.exit, !prof !226

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !227
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit

_ZN6duckdb17AggregateFunctionD2Ev.exit:           ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %0) #23, !inline_history !227
  tail call void @_ZdlPv(ptr noundef nonnull %0) #25
  ret void
}

declare void @_ZNK6duckdb18BaseScalarFunction8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(236)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6duckdb14SimpleFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb8FunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb8FunctionE, i64 16), ptr %0, align 8, !tbaa !83
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !120
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !55   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !51   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 %i.j, ptr %i.d, align 8, !tbaa !7
  %i.k = icmp ugt i64 %i.j, 15
end_hunk_0
