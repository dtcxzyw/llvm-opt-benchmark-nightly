Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_bind_query_node?download=true
inline.NumInlined: 7150
inline.NumDeleted: 3639
begin_hunk_0_@_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EED2Ev:bb.a
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, %.lr.ph.i.i
  %i.l = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 2 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #25
  br label %_ZSt8_DestroyIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEvPT_.exit.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !46

_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !542
  br label %_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.n = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.n, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.n) #25
  br label %_ZNSt12_Vector_baseIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !547  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !184 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !169  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.e) #25
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #25
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !48

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i, %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !518
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !519
  %i.k = shl i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.h, i8 0, i64 %i.k, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.l = load ptr, ptr %0, align 8, !tbaa !518    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i
  tail call void @_ZdlPv(ptr noundef %i.l) #25
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS7_29CaseInsensitiveStringEqualityESaISt4pairIKS6_mEEESaISE_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !539    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !521  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS7_29CaseInsensitiveStringEqualityESaISt4pairIKS6_mEEESE_EvT_SG_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS7_29CaseInsensitiveStringEqualityESaISt4pairIKS6_mEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.r, %_ZSt8_DestroyISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS7_29CaseInsensitiveStringEqualityESaISt4pairIKS6_mEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !506  ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i ] ; 4 uses
  %i.f = load ptr, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !184 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !169  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 24
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.h) #25
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i.i.i) #25
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !41

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i
  %i.k = load ptr, ptr %.05.i.i, align 8, !tbaa !339
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !340
  %i.n = shl i64 %i.m, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.n, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.o = load ptr, ptr %.05.i.i, align 8, !tbaa !339 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZSt8_DestroyISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS7_29CaseInsensitiveStringEqualityESaISt4pairIKS6_mEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.o) #25
  br label %_ZSt8_DestroyISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS7_29CaseInsensitiveStringEqualityESaISt4pairIKS6_mEEEEvPT_.exit.i.i

_ZSt8_DestroyISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS7_29CaseInsensitiveStringEqualityESaISt4pairIKS6_mEEEEvPT_.exit.i.i: ; preds = %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS7_29CaseInsensitiveStringEqualityESaISt4pairIKS6_mEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !49

_ZSt8_DestroyIPSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS7_29CaseInsensitiveStringEqualityESaISt4pairIKS6_mEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS7_29CaseInsensitiveStringEqualityESaISt4pairIKS6_mEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !539
  br label %_ZSt8_DestroyIPSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS7_29CaseInsensitiveStringEqualityESaISt4pairIKS6_mEEESE_EvT_SG_RSaIT0_E.exit

_ZSt8_DestroyIPSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS7_29CaseInsensitiveStringEqualityESaISt4pairIKS6_mEEESE_EvT_SG_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS7_29CaseInsensitiveStringEqualityESaISt4pairIKS6_mEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.s = phi ptr [ %.pr, %_ZSt8_DestroyIPSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS7_29CaseInsensitiveStringEqualityESaISt4pairIKS6_mEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS7_29CaseInsensitiveStringEqualityESaISt4pairIKS6_mEEESaISE_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS7_29CaseInsensitiveStringEqualityESaISt4pairIKS6_mEEESE_EvT_SG_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #25
  br label %_ZNSt12_Vector_baseISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS7_29CaseInsensitiveStringEqualityESaISt4pairIKS6_mEEESaISE_EED2Ev.exit

_ZNSt12_Vector_baseISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS7_29CaseInsensitiveStringEqualityESaISt4pairIKS6_mEEESaISE_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS7_29CaseInsensitiveStringEqualityESaISt4pairIKS6_mEEESE_EvT_SG_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Binder8BindNodeERNS_16SetOperationNodeE(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::BoundStatement") align 8 %0, ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(152) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"struct.duckdb::SetOpAliasGatherer", align 8 ; 5 uses
  %4 = alloca %"class.duckdb::vector.621", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.duckdb::BoundSetOperationNode", align 8 ; 33 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator.11", align 1 ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::allocator.11", align 1 ; 5 uses
  %11 = alloca %"class.duckdb::shared_ptr", align 16 ; 13 uses
  %12 = alloca %"struct.duckdb::BoundStatement", align 8 ; 20 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::allocator.11", align 1 ; 5 uses
  %15 = alloca %"struct.duckdb::LogicalType", align 8 ; 15 uses
  %16 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %17 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %18 = alloca %"class.duckdb::unique_ptr.248", align 8 ; 7 uses
  %19 = alloca %"struct.duckdb::SelectBindState", align 8 ; 38 uses
  %20 = alloca %"class.duckdb::vector", align 8   ; 8 uses
  %21 = alloca %"class.duckdb::OrderBinder", align 8 ; 9 uses
  %22 = alloca %"class.duckdb::vector", align 8   ; 10 uses
  %23 = alloca %"class.duckdb::unique_ptr.635", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, i8 0, i64 72, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb21BoundSetOperationNodeE, i64 16), ptr %6, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 81
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 14 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 3 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !1094
  store i8 %i.i, ptr %i.e, align 8, !tbaa !549
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 121 ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !1095, !range !170, !noundef !156
  store i8 %i.k, ptr %i.f, align 1, !tbaa !1096
  %i.l = invoke noundef i64 @_ZN6duckdb6Binder18GenerateTableIndexEv(ptr noundef nonnull align 8 dereferenceable(472) %1)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !550
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1097 ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !1098 ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = icmp ult i64 %i.t, 9
  br i1 %i.u, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.v = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.ds unwind label %bb.g

bb.f:                                             ; preds = %bb.as, %bb.ar, %bb.aq, %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %.043 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.z = load ptr, ptr %7, align 8, !tbaa !169    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.z) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %.043, label %bb.h, label %bb.dr

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %.043, label %bb.h, label %bb.dr

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn87180 = phi { ptr, i32 } [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.v) #23
  br label %bb.dr

bb.i:                                             ; preds = %bb.b
  %.not = icmp eq i64 %i.t, 16
  br i1 %.not, label %.lr.ph, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load i8, ptr %i.h, align 8, !tbaa !1094
  switch i8 %i.ac, label %bb.k [
    i8 1, label %.lr.ph
    i8 4, label %.lr.ph
  ]

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.l unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.ds unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread: ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %.041 = phi i1 [ false, %bb.m ], [ true, %bb.l ] ; 2 uses
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ag = load ptr, ptr %9, align 8, !tbaa !169   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.ag) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br i1 %.041, label %bb.o, label %bb.dr

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br i1 %.041, label %bb.o, label %bb.dr

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %.pn85183 = phi { ptr, i32 } [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ]
  call void @__cxa_free_exception(ptr %i.ad) #23
  br label %bb.dr

.lr.ph:                                           ; preds = %bb.i, %bb.j, %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 88 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 104
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 112 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  br label %bb.p

._crit_edge:                                      ; preds = %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit
  %i.bb = load i8, ptr %i.e, align 8, !tbaa !549
  %i.bc = icmp eq i8 %i.bb, 4
  br i1 %i.bc, label %bb.aq, label %bb.ar

bb.p:                                             ; preds = %.lr.ph, %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit
  %.sroa.0173.0200 = phi ptr [ %i.q, %.lr.ph ], [ %i.dz, %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.bd = load ptr, ptr %i.aj, align 8, !tbaa !155, !nonnull !156, !align !157
  invoke void @_ZN6duckdb6Binder12CreateBinderERNS_13ClientContextENS_12optional_ptrIS0_Lb1EEENS_10BinderTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr") align 8 %11, ptr noundef nonnull align 8 dereferenceable(512) %i.bd, ptr nonnull %1, i8 noundef zeroext 0)
          to label %bb.q unwind label %bb.aj

bb.q:                                             ; preds = %bb.p
  %i.be = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.r unwind label %bb.ak

bb.r:                                             ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 330
  store i8 1, ptr %i.bf, align 2, !tbaa !422
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.bg = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.s unwind label %bb.al

bb.s:                                             ; preds = %bb.r
  %i.bh = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0173.0200)
          to label %bb.t unwind label %bb.al

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN6duckdb6Binder8BindNodeERNS_9QueryNodeE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::BoundStatement") align 8 %12, ptr noundef nonnull align 8 dereferenceable(472) %i.bg, ptr noundef nonnull align 8 dereferenceable(120) %i.bh)
          to label %bb.u unwind label %bb.al

bb.u:                                             ; preds = %bb.t
  %i.bi = invoke noundef nonnull align 8 dereferenceable(472) ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.v unwind label %.loopexit191

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6duckdb6Binder25MoveCorrelatedExpressionsERS0_(ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(472) %i.bi)
          to label %bb.w unwind label %.loopexit191

bb.w:                                             ; preds = %bb.v
  %i.bj = load ptr, ptr %i.ak, align 8, !tbaa !472 ; 14 uses
  %i.bk = load ptr, ptr %i.al, align 8, !tbaa !337
  %.not.i.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bl = load i64, ptr %12, align 8, !tbaa !310
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !310
  store ptr null, ptr %12, align 8, !tbaa !310
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bn = load <2 x ptr>, ptr %i.am, align 8, !tbaa !311
  store <2 x ptr> %i.bn, ptr %i.bm, align 8, !tbaa !311
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bp = load ptr, ptr %i.an, align 8, !tbaa !312
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.br = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !313
  store <2 x ptr> %i.br, ptr %i.bq, align 8, !tbaa !313
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bt = load ptr, ptr %i.ap, align 8, !tbaa !314
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !314
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bv = load i8, ptr %i.aq, align 8, !tbaa !333
  store i8 %i.bv, ptr %i.bu, align 8, !tbaa !333
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bx = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !334
  store <2 x ptr> %i.bx, ptr %i.bw, align 8, !tbaa !334
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 80
  %i.bz = load ptr, ptr %i.as, align 8, !tbaa !335
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !335
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bj, i64 88
  %i.cb = load <2 x ptr>, ptr %i.at, align 8, !tbaa !336
  store <2 x ptr> %i.cb, ptr %i.ca, align 8, !tbaa !336
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bj, i64 104
  %i.cd = load ptr, ptr %i.au, align 8, !tbaa !337
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !337
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 112
  %i.cf = load <2 x ptr>, ptr %i.av, align 8, !tbaa !201
  store <2 x ptr> %i.cf, ptr %i.ce, align 8, !tbaa !201
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 128
  %i.ch = load ptr, ptr %i.aw, align 8, !tbaa !216
  store ptr %i.ch, ptr %i.cg, align 8, !tbaa !216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %i.ci = load ptr, ptr %i.ak, align 8, !tbaa !472
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 136
  store ptr %i.cj, ptr %i.ak, align 8, !tbaa !472
  br label %_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EE9push_backEOS1_.exit

bb.y:                                             ; preds = %bb.w
  invoke void @_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr %i.bj, ptr noundef nonnull align 8 dereferenceable(136) %12)
          to label %_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EE9push_backEOS1_.exit unwind label %.loopexit191

_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.x, %bb.y
  %i.ck = load ptr, ptr %i.ay, align 8, !tbaa !474 ; 7 uses
  %i.cl = load ptr, ptr %i.az, align 8, !tbaa !335
  %.not.i.i93 = icmp eq ptr %i.ck, %i.cl
  br i1 %.not.i.i93, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EE9push_backEOS1_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr null, ptr %i.cm, align 8, !tbaa !173
  %i.cn = load <2 x ptr>, ptr %11, align 16, !tbaa !167
  store ptr null, ptr %i.ba, align 8, !tbaa !173
  store <2 x ptr> %i.cn, ptr %i.ck, align 8, !tbaa !167
  store ptr null, ptr %11, align 16, !tbaa !179
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store ptr %i.co, ptr %i.ay, align 8, !tbaa !474
  br label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_6BinderELb1EEESaIS3_EE9push_backEOS3_.exit

bb.aa:                                            ; preds = %_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EE9push_backEOS1_.exit
  %i.cp = load ptr, ptr %i.ax, align 8, !tbaa !473 ; 5 uses
  %i.cq = ptrtoint ptr %i.ck to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr                    ; 3 uses
  %i.ct = icmp eq i64 %i.cs, 9223372036854775792
  br i1 %i.ct, label %bb.ab, label %_ZNKSt6vectorIN6duckdb10shared_ptrINS0_6BinderELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc159 unwind label %.loopexit.split-lp

.noexc159:                                        ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIN6duckdb10shared_ptrINS0_6BinderELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.aa
  %i.cu = ashr exact i64 %i.cs, 4                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cu, i64 1)
  %i.cv = add nsw i64 %.sroa.speculated.i.i, %i.cu ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.cu
  %i.cx = call i64 @llvm.umin.i64(i64 %i.cv, i64 576460752303423487)
  %i.cy = select i1 %i.cw, i64 576460752303423487, i64 %i.cx ; 3 uses
  %.not.i.i156 = icmp ne i64 %i.cy, 0
  call void @llvm.assume(i1 %.not.i.i156)
  %i.cz = shl nuw nsw i64 %i.cy, 4
  %i.da = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #26
          to label %.noexc160 unwind label %.loopexit191 ; 5 uses

.noexc160:                                        ; preds = %_ZNKSt6vectorIN6duckdb10shared_ptrINS0_6BinderELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cs
  %i.dc = load <2 x ptr>, ptr %11, align 16, !tbaa !167
  store ptr null, ptr %i.ba, align 8, !tbaa !173
  store <2 x ptr> %i.dc, ptr %i.db, align 8, !tbaa !167
  store ptr null, ptr %11, align 16, !tbaa !179
  %.not10.i.i.i.i.i = icmp eq ptr %i.cp, %i.ck
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_6BinderELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i.i157

.lr.ph.i.i.i.i.i157:                              ; preds = %.noexc160, %.lr.ph.i.i.i.i.i157
  %.012.i.i.i.i.i = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i157 ], [ %i.da, %.noexc160 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i157 ], [ %i.cp, %.noexc160 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  %i.dd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8
  %i.de = load <2 x ptr>, ptr %.0911.i.i.i.i.i, align 8, !tbaa !167, !alias.scope !1100, !noalias !1099
  store ptr null, ptr %i.dd, align 8, !tbaa !173, !alias.scope !1100, !noalias !1099
  store <2 x ptr> %i.de, ptr %.012.i.i.i.i.i, align 8, !tbaa !167, !alias.scope !1099, !noalias !1100
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !179, !alias.scope !1100, !noalias !1099
  %i.df = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i158 = icmp eq ptr %i.df, %i.ck
  br i1 %.not.i.i.i.i.i158, label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_6BinderELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i.i157, !llvm.loop !1078

_ZNSt6vectorIN6duckdb10shared_ptrINS0_6BinderELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i: ; preds = %.lr.ph.i.i.i.i.i157, %.noexc160
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.da, %.noexc160 ], [ %i.dg, %.lr.ph.i.i.i.i.i157 ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i = icmp eq ptr %i.cp, null
  br i1 %.not.i23.i, label %.noexc94, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN6duckdb10shared_ptrINS0_6BinderELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  call void @_ZdlPv(ptr noundef nonnull %i.cp) #25
  br label %.noexc94

.noexc94:                                         ; preds = %bb.ac, %_ZNSt6vectorIN6duckdb10shared_ptrINS0_6BinderELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  store ptr %i.da, ptr %i.ax, align 8, !tbaa !473
  store ptr %i.dh, ptr %i.ay, align 8, !tbaa !474
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %i.cy
  store ptr %i.di, ptr %i.az, align 8, !tbaa !335
  br label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_6BinderELb1EEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN6duckdb10shared_ptrINS0_6BinderELb1EEESaIS3_EE9push_backEOS3_.exit: ; preds = %.noexc94, %bb.z
  call void @_ZN6duckdb14BoundStatementD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.dj = load ptr, ptr %i.ba, align 8, !tbaa !173 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN6duckdb10shared_ptrINS0_6BinderELb1EEESaIS3_EE9push_backEOS3_.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 4 uses
  %i.dl = load atomic i64, ptr %i.dk acquire, align 8 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 4294967297
  %i.dn = trunc i64 %i.dl to i32                  ; 2 uses
  br i1 %i.dm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.dk, align 8, !tbaa !175
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  store i32 0, ptr %i.do, align 4, !tbaa !176
  %i.dp = load ptr, ptr %i.dj, align 8, !tbaa !80
end_hunk_0
