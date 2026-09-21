Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/hash_instantiated_test?download=true
inline.NumInlined: 29463
inline.NumDeleted: 10401
loop-unroll.NumCompletelyUnrolled: 582
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 594
begin_hunk_0_@_ZNSt18unordered_multimapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEED2Ev:bb.a
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.m, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.n = load ptr, ptr %0, align 8, !tbaa !1007   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i
  %i.q = load i64, ptr %i.k, align 8, !tbaa !1008
  %i.r = shl i64 %i.q, 3
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #33
  br label %_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEED2Ev.exit

_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt18unordered_multimapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIiESt8equal_toIiESaISt4pairIKiS6_EEESaISF_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1011   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1013 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt18unordered_multimapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIiESt8equal_toIiESaISt4pairIKiS6_EEESF_EvT_SH_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt18unordered_multimapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIiESt8equal_toIiESaISt4pairIKiS6_EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt18unordered_multimapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIiESt8equal_toIiESaISt4pairIKiS6_EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1014 ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i ] ; 4 uses
  %i.f = load ptr, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !551 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !197  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !200
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #33
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i.i, i64 noundef 48) #33
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !127

_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i.i.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i
  %i.m = load ptr, ptr %.05.i.i, align 8, !tbaa !1007
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1008
  %i.p = shl i64 %i.o, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %i.p, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.q = load ptr, ptr %.05.i.i, align 8, !tbaa !1007 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZSt8_DestroyISt18unordered_multimapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIiESt8equal_toIiESaISt4pairIKiS6_EEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i.i.i.i.i
  %i.t = load i64, ptr %i.n, align 8, !tbaa !1008
  %i.u = shl i64 %i.t, 3
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #33
  br label %_ZSt8_DestroyISt18unordered_multimapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIiESt8equal_toIiESaISt4pairIKiS6_EEEEvPT_.exit.i.i

_ZSt8_DestroyISt18unordered_multimapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIiESt8equal_toIiESaISt4pairIKiS6_EEEEvPT_.exit.i.i: ; preds = %bb.b, %_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt18unordered_multimapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIiESt8equal_toIiESaISt4pairIKiS6_EEESF_EvT_SH_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !160

_ZSt8_DestroyIPSt18unordered_multimapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIiESt8equal_toIiESaISt4pairIKiS6_EEESF_EvT_SH_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt18unordered_multimapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIiESt8equal_toIiESaISt4pairIKiS6_EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1011
  br label %_ZSt8_DestroyIPSt18unordered_multimapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIiESt8equal_toIiESaISt4pairIKiS6_EEESF_EvT_SH_RSaIT0_E.exit

_ZSt8_DestroyIPSt18unordered_multimapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIiESt8equal_toIiESaISt4pairIKiS6_EEESF_EvT_SH_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt18unordered_multimapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIiESt8equal_toIiESaISt4pairIKiS6_EEESF_EvT_SH_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.w = phi ptr [ %.pr, %_ZSt8_DestroyIPSt18unordered_multimapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIiESt8equal_toIiESaISt4pairIKiS6_EEESF_EvT_SH_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.w, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt18unordered_multimapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIiESt8equal_toIiESaISt4pairIKiS6_EEESaISF_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt18unordered_multimapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIiESt8equal_toIiESaISt4pairIKiS6_EEESF_EvT_SH_RSaIT0_E.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1012
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #33
  br label %_ZNSt12_Vector_baseISt18unordered_multimapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIiESt8equal_toIiESaISt4pairIKiS6_EEESaISF_EED2Ev.exit

_ZNSt12_Vector_baseISt18unordered_multimapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIiESt8equal_toIiESaISt4pairIKiS6_EEESaISF_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt18unordered_multimapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIiESt8equal_toIiESaISt4pairIKiS6_EEESF_EvT_SH_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEEC2IPKS8_EET_SP_mRKSF_RKSD_RKS9_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.std::_Hashtable<int, std::pair<const int, std::__cxx11::basic_string<char>>, std::allocator<std::pair<const int, std::__cxx11::basic_string<char>>>, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, false>>::_Scoped_node", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !1007
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 1, ptr %i.b, align 8, !tbaa !1008
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !544
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = ptrtoint ptr %2 to i64
  %i.g = ptrtoint ptr %1 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 40
  %i.j = uitofp i64 %i.i to double
  %i.k = fptoui double %i.j to i64
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.k)
  %i.l = invoke noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef %.sroa.speculated)
          to label %bb.b unwind label %bb.g       ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.b, align 8, !tbaa !1008
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i64 %i.l, 1
  br i1 %i.o, label %bb.d, label %bb.e, !prof !303

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !1018
  br label %_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit

bb.e:                                             ; preds = %bb.c
  %i.p = icmp ugt i64 %i.l, 1152921504606846975
  br i1 %i.p, label %bb.f, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !303

bb.f:                                             ; preds = %bb.e
  %i.q = icmp ugt i64 %i.l, 2305843009213693951
  br i1 %i.q, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

.noexc7.i.i:                                      ; preds = %bb.f
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc21 unwind label %bb.h

.noexc21:                                         ; preds = %.noexc7.i.i
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.e
  %i.r = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #35
          to label %.noexc22 unwind label %bb.h   ; 2 uses

.noexc22:                                         ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE19_M_allocate_bucketsEm.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.s, i8 0, i64 %i.r, i1 false)
  br label %_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit: ; preds = %.noexc22, %bb.d
  %.0.i = phi ptr [ %i.a, %bb.d ], [ %i.s, %.noexc22 ]
  store ptr %.0.i, ptr %0, align 8, !tbaa !1007
  store i64 %i.l, ptr %i.b, align 8, !tbaa !1008
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE19_M_allocate_bucketsEm.exit.i, %.noexc7.i.i, %.noexc.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit, %bb.b
  %.not28 = icmp eq ptr %1, %2
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.m
  %.029 = phi ptr [ %1, %.lr.ph ], [ %i.af, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.x = invoke noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE16_M_allocate_nodeIJRKSA_EEEPSB_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(40) %.029)
          to label %.noexc23 unwind label %bb.n   ; 3 uses

.noexc23:                                         ; preds = %bb.j
  store ptr %0, ptr %7, align 8, !tbaa !10613
  store ptr %i.x, ptr %i.v, align 8, !tbaa !1020
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.w, align 8, !tbaa !1021
  %.not.not.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.not.i.i.i, label %.preheader, label %.thread22.i.i.i

.preheader:                                       ; preds = %.noexc23, %bb.k
  %.sroa.0.0.in.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %bb.k ], [ %i.c, %.noexc23 ]
  %.sroa.0.0.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i, align 8, !tbaa !551 ; 4 uses
  %.not27.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i, null
  br i1 %.not27.i.i.i, label %.thread22.i.i.i, label %bb.k

bb.k:                                             ; preds = %.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8
  %8 = load i32, ptr %i.y, align 4, !tbaa !232    ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !232
  %i.ac = icmp eq i32 %8, %i.ab
  br i1 %i.ac, label %.loopexit.i.i, label %.preheader, !llvm.loop !10611

.thread22.i.i.i:                                  ; preds = %.preheader, %.noexc23
  %9 = load i32, ptr %i.y, align 4, !tbaa !232
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.k, %.thread22.i.i.i
  %.sroa.019.3.i.i.i = phi ptr [ null, %.thread22.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.k ]
  %.sroa.4.3.in.i.i.i = phi i32 [ %9, %.thread22.i.i.i ], [ %8, %bb.k ]
  %.sroa.4.3.i.i.i = sext i32 %.sroa.4.3.in.i.i.i to i64
  %i.ad = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNSA_10_Hash_nodeIS8_Lb0EEEmSO_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %.sroa.019.3.i.i.i, i64 noundef %.sroa.4.3.i.i.i, ptr noundef nonnull %i.x)
          to label %bb.m unwind label %bb.l       ; 0 uses

bb.l:                                             ; preds = %.loopexit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %.body

bb.m:                                             ; preds = %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.af = getelementptr inbounds nuw i8, ptr %.029, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.af, %2
  br i1 %.not, label %._crit_edge, label %bb.j, !llvm.loop !10612

bb.n:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge:                                      ; preds = %bb.m, %bb.i
  ret void

.body:                                            ; preds = %bb.n, %bb.l, %bb.g, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.l ], [ %i.t, %bb.g ], [ %i.u, %bb.h ], [ %i.ag, %bb.n ]
  call void @_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #30
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNSA_10_Hash_nodeIS8_Lb0EEEmSO_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !560
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1008
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1021
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef 1) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #30 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !560
  invoke void @__cxa_rethrow() #32
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #29
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.d, align 8, !tbaa !1008 ; 4 uses
  %i.t = urem i64 %2, %i.s                        ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.i, label %bb.h, !prof !273

bb.h:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i32, ptr %i.r, align 4, !tbaa !232  ; 2 uses
  %i.w = load i32, ptr %i.u, align 4, !tbaa !232
  %i.x = icmp eq i32 %i.v, %i.w
  br i1 %i.x, label %_ZNKSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.thread41, label %bb.i

_ZNKSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.thread41: ; preds = %bb.h
  %i.y = load ptr, ptr %1, align 8, !tbaa !551
  store ptr %i.y, ptr %3, align 8, !tbaa !551
  store ptr %3, ptr %1, align 8, !tbaa !551
  br label %bb.m

bb.i:                                             ; preds = %bb.h, %_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit
  %i.z = load ptr, ptr %0, align 8, !tbaa !1007   ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.t ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !559 ; 4 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %.loopexit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !551 ; 3 uses
  %i.ad = load i32, ptr %i.r, align 4, !tbaa !232 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !232
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %_ZNKSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit, label %.lr.ph.i

bb.k:                                             ; preds = %bb.l
  %i.ah = icmp eq i32 %i.ad, %i.ak
  br i1 %i.ah, label %_ZNKSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit, label %.lr.ph.i, !llvm.loop !10614

.lr.ph.i:                                         ; preds = %bb.j, %bb.k
  %.020.i = phi ptr [ %i.ai, %bb.k ], [ %i.ac, %bb.j ] ; 2 uses
  %i.ai = load ptr, ptr %.020.i, align 8, !tbaa !551 ; 4 uses
  %.not18.i = icmp eq ptr %i.ai, null
  br i1 %.not18.i, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !232 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = urem i64 %i.al, %i.s
  %.not19.i = icmp eq i64 %i.am, %i.t
  br i1 %.not19.i, label %bb.k, label %..loopexit_crit_edge21.i, !llvm.loop !10614

..loopexit_crit_edge21.i:                         ; preds = %bb.l
  br label %.loopexit, !llvm.loop !10614

_ZNKSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit: ; preds = %bb.k, %bb.j
  %i.an = phi ptr [ %i.ac, %bb.j ], [ %i.ai, %bb.k ]
  %i.ao = phi ptr [ %i.ab, %bb.j ], [ %.020.i, %bb.k ] ; 2 uses
  store ptr %i.an, ptr %3, align 8, !tbaa !551
  store ptr %3, ptr %i.ao, align 8, !tbaa !551
  %i.ap = icmp eq ptr %i.ao, %1
  br i1 %i.ap, label %bb.m, label %_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEE.exit, !prof !593

bb.m:                                             ; preds = %_ZNKSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.thread41, %_ZNKSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit
  %i.aq = phi i32 [ %i.v, %_ZNKSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.thread41 ], [ %i.ad, %_ZNKSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit ]
  %i.ar = load ptr, ptr %3, align 8, !tbaa !551   ; 2 uses
  %.not36 = icmp eq ptr %i.ar, null
  br i1 %.not36, label %_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i32, ptr %i.as, align 4, !tbaa !232 ; 2 uses
  %i.au = icmp eq i32 %i.aq, %i.at
  br i1 %i.au, label %_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = sext i32 %i.at to i64
  %i.aw = urem i64 %i.av, %i.s                    ; 2 uses
  %.not37 = icmp eq i64 %i.aw, %i.t
  br i1 %.not37, label %_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = load ptr, ptr %0, align 8, !tbaa !1007
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.aw
  store ptr %3, ptr %i.ay, align 8, !tbaa !559
  br label %_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEE.exit

.loopexit:                                        ; preds = %.lr.ph.i, %..loopexit_crit_edge21.i
  %i.az = load ptr, ptr %i.ab, align 8, !tbaa !551
  store ptr %i.az, ptr %3, align 8, !tbaa !551
  %i.ba = load ptr, ptr %i.aa, align 8, !tbaa !559
  store ptr %3, ptr %i.ba, align 8, !tbaa !551
  br label %_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEE.exit

.loopexit.thread:                                 ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1014
  store ptr %i.bc, ptr %3, align 8, !tbaa !551
  store ptr %3, ptr %i.bb, align 8, !tbaa !1014
  %i.bd = load ptr, ptr %3, align 8, !tbaa !551   ; 2 uses
  %.not11.i = icmp eq ptr %i.bd, null
  br i1 %.not11.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit.thread
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !232
  %i.bg = sext i32 %i.bf to i64
  %i.bh = urem i64 %i.bg, %i.s
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.bh
  store ptr %3, ptr %i.bi, align 8, !tbaa !559
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.loopexit.thread
  store ptr %i.bb, ptr %i.aa, align 8, !tbaa !559
  br label %_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEE.exit

_ZNSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEE.exit: ; preds = %bb.r, %.loopexit, %bb.o, %bb.p, %_ZNKSt10_HashtableIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit, %bb.n, %bb.m
  %i.bj = load i64, ptr %i.f, align 8, !tbaa !1021
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr %i.f, align 8, !tbaa !1021
  ret ptr %3
}
end_hunk_0
