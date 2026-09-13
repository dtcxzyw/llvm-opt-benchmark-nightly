Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Benchmark?download=true
inline.NumInlined: 7389
inline.NumDeleted: 2860
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZNSt6vectorISt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESaISI_EED2Ev
define linkonce_odr void @_ZNSt6vectorISt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESaISI_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1788   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1790 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESI_EvT_SK_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.w, %_ZSt8_DestroyISt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !182  ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.g, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i ] ; 4 uses
  %i.g = load ptr, ptr %.06.i.i.i.i.i.i.i.i.i, align 8, !tbaa !159 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !103  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !104
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #43
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i.i.i.i, i64 noundef 72) #43
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !137
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !138
  %i.q = shl i64 %i.p, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.n, i8 0, i64 %i.q, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !137  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZSt8_DestroyISt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i
  %i.u = load i64, ptr %i.o, align 8, !tbaa !138
  %i.v = shl i64 %i.u, 3
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #43
  br label %_ZSt8_DestroyISt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEEEvPT_.exit.i.i: ; preds = %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESI_EvT_SK_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !6741

_ZSt8_DestroyIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESI_EvT_SK_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1788
  br label %_ZSt8_DestroyIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESI_EvT_SK_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESI_EvT_SK_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESI_EvT_SK_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.x = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESI_EvT_SK_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.x, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESaISI_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESI_EvT_SK_RSaIT0_E.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1789
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #43
  br label %_ZNSt12_Vector_baseISt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESaISI_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESaISI_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESI_EvT_SK_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSN_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.g, label %bb.b, !prof !100

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !182  ; 2 uses
  %.not5.i = icmp eq ptr %i.c, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE19_M_deallocate_nodesEPSD_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i
  %.06.i = phi ptr [ %i.d, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i ], [ %i.c, %bb.b ] ; 4 uses
  %i.d = load ptr, ptr %.06.i, align 8, !tbaa !159 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !103  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i, i64 24 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !104
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #43
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i, i64 noundef 72) #43
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE19_M_deallocate_nodesEPSD_.exit, label %.lr.ph.i, !llvm.loop !2

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE19_M_deallocate_nodesEPSD_.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i, %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !137    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE19_M_deallocate_nodesEPSD_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !138
  %i.p = shl i64 %i.o, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.p) #43
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE19_M_deallocate_nodesEPSD_.exit, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !184
  %i.s = load ptr, ptr %1, align 8, !tbaa !137    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !185
  store ptr %i.v, ptr %i.l, align 8, !tbaa !185
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, %bb.d
  %i.w = phi ptr [ %i.l, %bb.d ], [ %i.s, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit ] ; 2 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !137
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !138  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !138
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !182 ; 3 uses
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !182
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !152
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !152
  %.not.i12 = icmp eq ptr %i.ab, null
  br i1 %.not.i12, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !187
  %i.ah = urem i64 %i.ag, %i.y
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ah
  store ptr %i.b, ptr %i.ai, align 8, !tbaa !188
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit: ; preds = %bb.e, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.aj, align 8, !tbaa !189
  store i64 1, ptr %i.x, align 8, !tbaa !138
  store ptr null, ptr %i.t, align 8, !tbaa !185
  store ptr %i.t, ptr %1, align 8, !tbaa !137
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEElNS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair.365", align 8    ; 11 uses
  %4 = alloca %"struct.std::pair.365", align 8    ; 10 uses
  %5 = alloca %"struct.std::__detail::_Prime_rehash_policy", align 8 ; 4 uses
  %6 = alloca %"struct.std::__detail::_Prime_rehash_policy", align 8 ; 4 uses
  %7 = alloca %"struct.std::__detail::_Prime_rehash_policy", align 8 ; 4 uses
  %8 = alloca %"struct.std::__detail::_Prime_rehash_policy", align 8 ; 4 uses
  %9 = alloca %"struct.std::__detail::_Prime_rehash_policy", align 8 ; 4 uses
  %10 = alloca %"struct.std::__detail::_Prime_rehash_policy", align 8 ; 4 uses
  %11 = alloca %"struct.std::__detail::_Prime_rehash_policy", align 8 ; 4 uses
  %12 = alloca %"struct.std::pair.365", align 8   ; 10 uses
  %13 = alloca %"struct.std::pair.365", align 8   ; 10 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 6                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_S11_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 29 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 26 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 22 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.s = icmp eq i64 %2, 0
  br i1 %i.s, label %._crit_edge, label %.lr.ph126

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEET_S11_S11_T0_.exit"
  %i.t = icmp eq i64 %i.fv, 0
  br i1 %i.t, label %._crit_edge, label %.lr.ph126, !llvm.loop !6742

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa120 = phi i64 [ %i.d, %.lr.ph ], [ %i.ni, %bb.b ] ; 2 uses
  %storemerge25.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.u = add nsw i64 %.lcssa120, -2
  %i.v = lshr i64 %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 48
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_RT0_.exit.i.i.a", %._crit_edge
  %.010.i.i.i = phi i64 [ %i.v, %._crit_edge ], [ %i.ca, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_RT0_.exit.i.i.a" ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #42
  %i.aj = getelementptr inbounds [64 x i8], ptr %0, i64 %.010.i.i.i ; 8 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !1784 ; 2 uses
  store double %i.ak, ptr %12, align 8, !tbaa !1784
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !137 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !138 ; 4 uses
  store i64 %i.ao, ptr %i.x, align 8, !tbaa !138
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !182 ; 3 uses
  store ptr %i.aq, ptr %i.y, align 8, !tbaa !159
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !152 ; 2 uses
  store i64 %i.as, ptr %i.z, align 8, !tbaa !152
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !tbaa.struct !184
  store ptr null, ptr %i.ab, align 8, !tbaa !185
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 56 ; 4 uses
  %i.av = icmp eq ptr %i.am, %i.au
  br i1 %i.av, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.ab, ptr %i.w, align 8, !tbaa !137
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !185
  store ptr %i.aw, ptr %i.ab, align 8, !tbaa !185
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ax = phi ptr [ %i.ab, %bb.d ], [ %i.am, %bb.c ] ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEC2EOSH_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !187
  %i.ba = urem i64 %i.az, %i.ao
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ba
  store ptr %i.y, ptr %i.bb, align 8, !tbaa !188
  %.pre.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !182
  br label %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEC2EOSH_.exit.i.i.i

_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEC2EOSH_.exit.i.i.i: ; preds = %bb.f, %bb.e
  %i.bc = phi ptr [ null, %bb.e ], [ %.pre.i.i.i, %bb.f ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  store i64 0, ptr %i.bd, align 8, !tbaa !189
  store i64 1, ptr %i.an, align 8, !tbaa !138
  store ptr null, ptr %i.au, align 8, !tbaa !185
  store ptr %i.au, ptr %i.al, align 8, !tbaa !137
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  store double %i.ak, ptr %13, align 8, !tbaa !1784
  store ptr %i.ax, ptr %i.ac, align 8, !tbaa !137
  store i64 %i.ao, ptr %i.ad, align 8, !tbaa !138
  store ptr %i.bc, ptr %i.ae, align 8, !tbaa !159
  store i64 %i.as, ptr %i.af, align 8, !tbaa !152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !184
  store ptr null, ptr %i.ah, align 8, !tbaa !185
  %i.be = icmp eq ptr %i.ax, %i.ab
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEC2EOSH_.exit.i.i.i
  store ptr %i.ah, ptr %i.ac, align 8, !tbaa !137
  %i.bf = load ptr, ptr %i.ab, align 8, !tbaa !185
  store ptr %i.bf, ptr %i.ah, align 8, !tbaa !185
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEC2EOSH_.exit.i.i.i
  %i.bg = phi ptr [ %i.ah, %bb.g ], [ %i.ax, %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEC2EOSH_.exit.i.i.i ]
  %.not.i.i.i.i.i11.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i11.i.i.i, label %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEC2EOSH_.exit12.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !187
  %i.bj = urem i64 %i.bi, %i.ao
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bj
  store ptr %i.ae, ptr %i.bk, align 8, !tbaa !188
  br label %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEC2EOSH_.exit12.i.i.i

_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEC2EOSH_.exit12.i.i.i: ; preds = %bb.i, %bb.h
  store i64 0, ptr %i.ai, align 8, !tbaa !189
  store i64 1, ptr %i.x, align 8, !tbaa !138
  store ptr null, ptr %i.ab, align 8, !tbaa !185
  store ptr %i.ab, ptr %i.w, align 8, !tbaa !137
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEElSK_NS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_T0_S12_T1_T2_"(ptr nonnull %0, i64 noundef %.010.i.i.i, i64 noundef %.lcssa120, ptr noundef align 8 %13)
  %i.bl = load ptr, ptr %i.ae, align 8, !tbaa !182 ; 2 uses
  %.not5.i.i.i.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not5.i.i.i.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEC2EOSH_.exit12.i.i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i = phi ptr [ %i.bm, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i.i.i.i ], [ %i.bl, %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEC2EOSH_.exit12.i.i.i ] ; 4 uses
  %i.bm = load ptr, ptr %.06.i.i.i.i.i.i.i.i, align 8, !tbaa !159 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !103 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !104
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #43
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i.i.i, i64 noundef 72) #43
  %.not.i.i.i.i.i13.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i13.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i.i.i.i, %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEC2EOSH_.exit12.i.i.i
  %i.bt = load ptr, ptr %i.ac, align 8, !tbaa !137
  %i.bu = load i64, ptr %i.ad, align 8, !tbaa !138
  %i.bv = shl i64 %i.bu, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bt, i8 0, i64 %i.bv, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %i.bw = load ptr, ptr %i.ac, align 8, !tbaa !137 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.ah
  br i1 %i.bx, label %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEED2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i
  %i.by = load i64, ptr %i.ad, align 8, !tbaa !138
  %i.bz = shl i64 %i.by, 3
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #43
  br label %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEED2Ev.exit.i.i.i

_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEED2Ev.exit.i.i.i: ; preds = %bb.j, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.ca = add nsw i64 %.010.i.i.i, -1
  %i.cb = load ptr, ptr %i.y, align 8, !tbaa !182 ; 2 uses
  %.not5.i.i.i.i.i14.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not5.i.i.i.i.i14.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i20.i.i.i, label %.lr.ph.i.i.i.i.i15.i.i.i

.lr.ph.i.i.i.i.i15.i.i.i:                         ; preds = %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEED2Ev.exit.i.i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i18.i.i.i
  %.06.i.i.i.i.i16.i.i.i = phi ptr [ %i.cc, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i18.i.i.i ], [ %i.cb, %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEED2Ev.exit.i.i.i ] ; 4 uses
  %i.cc = load ptr, ptr %.06.i.i.i.i.i16.i.i.i, align 8, !tbaa !159 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i16.i.i.i, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !103 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i16.i.i.i, i64 24 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i18.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i17.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i17.i.i.i: ; preds = %.lr.ph.i.i.i.i.i15.i.i.i
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !104
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #43
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i18.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i18.i.i.i: ; preds = %.lr.ph.i.i.i.i.i15.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i17.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i16.i.i.i, i64 noundef 72) #43
  %.not.i.i.i.i.i19.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i19.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i20.i.i.i, label %.lr.ph.i.i.i.i.i15.i.i.i, !llvm.loop !2

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i20.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i18.i.i.i, %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEED2Ev.exit.i.i.i
  %i.cj = load ptr, ptr %i.w, align 8, !tbaa !137
  %i.ck = load i64, ptr %i.x, align 8, !tbaa !138
  %i.cl = shl i64 %i.ck, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cj, i8 0, i64 %i.cl, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.cm = load ptr, ptr %i.w, align 8, !tbaa !137 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.ab
  br i1 %i.cn, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_RT0_.exit.i.i.a", label %bb.k

bb.k:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i20.i.i.i
  %i.co = load i64, ptr %i.x, align 8, !tbaa !138
  %i.cp = shl i64 %i.co, 3
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #43
  br label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_RT0_.exit.i.i.a"

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_RT0_.exit.i.i.a": ; preds = %bb.k, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i20.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #42
  br i1 %.not.i.i.i, label %.lr.ph.i9.i.preheader, label %bb.c, !llvm.loop !6743

.lr.ph.i9.i.preheader:                            ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_RT0_.exit.i.i.a"
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 9 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 48
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.preheader, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_S11_RT0_.exit"
  %.sroa.0.03.i.i = phi ptr [ %i.dd, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_S11_RT0_.exit" ], [ %storemerge25.lcssa, %.lr.ph.i9.i.preheader ] ; 8 uses
  %i.dd = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -64 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #42
  %i.de = load double, ptr %i.dd, align 8, !tbaa !1784
  store double %i.de, ptr %3, align 8, !tbaa !1784
  %i.df = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -56 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !137 ; 3 uses
  store ptr %i.dg, ptr %i.cq, align 8, !tbaa !137
  %i.dh = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -48 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !138 ; 2 uses
  store i64 %i.di, ptr %i.cr, align 8, !tbaa !138
  %i.dj = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -40 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !182 ; 3 uses
  store ptr %i.dk, ptr %i.cs, align 8, !tbaa !159
  %i.dl = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -32
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !152
  store i64 %i.dm, ptr %i.ct, align 8, !tbaa !152
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i64 16, i1 false), !tbaa.struct !184
  store ptr null, ptr %i.cv, align 8, !tbaa !185
  %i.do = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.dp = icmp eq ptr %i.dg, %i.do
  br i1 %i.dp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i9.i
  store ptr %i.cv, ptr %i.cq, align 8, !tbaa !137
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !185
  store ptr %i.dq, ptr %i.cv, align 8, !tbaa !185
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i9.i
  %i.dr = phi ptr [ %i.cv, %bb.l ], [ %i.dg, %.lr.ph.i9.i ]
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEC2EOSH_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 64
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !187
  %i.du = urem i64 %i.dt, %i.di
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.du
  store ptr %i.cs, ptr %i.dv, align 8, !tbaa !188
  br label %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEC2EOSH_.exit.i

_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEC2EOSH_.exit.i: ; preds = %bb.n, %bb.m
  %i.dw = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16
  store i64 0, ptr %i.dw, align 8, !tbaa !189
  store i64 1, ptr %i.dh, align 8, !tbaa !138
  store ptr null, ptr %i.do, align 8, !tbaa !185
  store ptr %i.do, ptr %i.df, align 8, !tbaa !137
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i8 0, i64 16, i1 false)
  %i.dx = load double, ptr %0, align 8, !tbaa !162
  store double %i.dx, ptr %i.dd, align 8, !tbaa !1784
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSN_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %i.df, ptr noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit.i unwind label %bb.o

bb.o:                                             ; preds = %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEC2EOSH_.exit.i
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  call void @__clang_call_terminate(ptr %i.dz) #46
  unreachable

_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit.i: ; preds = %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEC2EOSH_.exit.i
  %i.ea = ptrtoint ptr %i.dd to i64
  %i.eb = sub i64 %i.ea, %i.a                     ; 2 uses
  %i.ec = ashr exact i64 %i.eb, 6
  %i.ed = load double, ptr %3, align 8, !tbaa !1784
  store double %i.ed, ptr %4, align 8, !tbaa !1784
  %i.ee = load ptr, ptr %i.cq, align 8, !tbaa !137 ; 3 uses
  store ptr %i.ee, ptr %i.cw, align 8, !tbaa !137
  %i.ef = load i64, ptr %i.cr, align 8, !tbaa !138 ; 2 uses
  store i64 %i.ef, ptr %i.cx, align 8, !tbaa !138
  %i.eg = load ptr, ptr %i.cs, align 8, !tbaa !182 ; 3 uses
  store ptr %i.eg, ptr %i.cy, align 8, !tbaa !159
  %i.eh = load i64, ptr %i.ct, align 8, !tbaa !152
  store i64 %i.eh, ptr %i.cz, align 8, !tbaa !152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i64 16, i1 false), !tbaa.struct !184
  store ptr null, ptr %i.db, align 8, !tbaa !185
  %i.ei = icmp eq ptr %i.ee, %i.cv
  br i1 %i.ei, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit.i
  store ptr %i.db, ptr %i.cw, align 8, !tbaa !137
  %i.ej = load ptr, ptr %i.cv, align 8, !tbaa !185
  store ptr %i.ej, ptr %i.db, align 8, !tbaa !185
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit.i
  %i.ek = phi ptr [ %i.db, %bb.p ], [ %i.ee, %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit.i ]
  %.not.i.i.i.i.i3.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i.i.i3.i, label %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEC2EOSH_.exit4.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 64
  %i.em = load i64, ptr %i.el, align 8, !tbaa !187
  %i.en = urem i64 %i.em, %i.ef
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.en
  store ptr %i.cy, ptr %i.eo, align 8, !tbaa !188
  br label %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEC2EOSH_.exit4.i

_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEC2EOSH_.exit4.i: ; preds = %bb.r, %bb.q
  store i64 0, ptr %i.dc, align 8, !tbaa !189
  store i64 1, ptr %i.cr, align 8, !tbaa !138
  store ptr null, ptr %i.cv, align 8, !tbaa !185
  store ptr %i.cv, ptr %i.cq, align 8, !tbaa !137
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i8 0, i64 16, i1 false)
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEElSK_NS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_T0_S12_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.ec, ptr noundef align 8 %4)
  %i.ep = load ptr, ptr %i.cy, align 8, !tbaa !182 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not5.i.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEC2EOSH_.exit4.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.eq, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i.i ], [ %i.ep, %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEC2EOSH_.exit4.i ] ; 4 uses
  %i.eq = load ptr, ptr %.06.i.i.i.i.i.i, align 8, !tbaa !159 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !103 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ev = load i64, ptr %i.et, align 8, !tbaa !104
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ew) #43
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i, i64 noundef 72) #43
  %.not.i.i.i.i.i5.i = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i.i.i5.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i.i, %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEC2EOSH_.exit4.i
  %i.ex = load ptr, ptr %i.cw, align 8, !tbaa !137
  %i.ey = load i64, ptr %i.cx, align 8, !tbaa !138
  %i.ez = shl i64 %i.ey, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ex, i8 0, i64 %i.ez, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i8 0, i64 16, i1 false)
  %i.fa = load ptr, ptr %i.cw, align 8, !tbaa !137 ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.db
  br i1 %i.fb, label %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEED2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  %i.fc = load i64, ptr %i.cx, align 8, !tbaa !138
  %i.fd = shl i64 %i.fc, 3
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #43
  br label %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEED2Ev.exit.i

_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEED2Ev.exit.i: ; preds = %bb.s, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  %i.fe = load ptr, ptr %i.cs, align 8, !tbaa !182 ; 2 uses
  %.not5.i.i.i.i.i6.i = icmp eq ptr %i.fe, null
  br i1 %.not5.i.i.i.i.i6.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i12.i, label %.lr.ph.i.i.i.i.i7.i

.lr.ph.i.i.i.i.i7.i:                              ; preds = %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEED2Ev.exit.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i10.i
  %.06.i.i.i.i.i8.i = phi ptr [ %i.ff, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i10.i ], [ %i.fe, %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEED2Ev.exit.i ] ; 4 uses
  %i.ff = load ptr, ptr %.06.i.i.i.i.i8.i, align 8, !tbaa !159 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i8.i, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !103 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i8.i, i64 24 ; 2 uses
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i10.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i9.i: ; preds = %.lr.ph.i.i.i.i.i7.i
  %i.fk = load i64, ptr %i.fi, align 8, !tbaa !104
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fl) #43
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i10.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i10.i: ; preds = %.lr.ph.i.i.i.i.i7.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i9.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i8.i, i64 noundef 72) #43
  %.not.i.i.i.i.i11.i = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i.i.i11.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i12.i, label %.lr.ph.i.i.i.i.i7.i, !llvm.loop !2

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i12.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i10.i, %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEED2Ev.exit.i
  %i.fm = load ptr, ptr %i.cq, align 8, !tbaa !137
  %i.fn = load i64, ptr %i.cr, align 8, !tbaa !138
  %i.fo = shl i64 %i.fn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fm, i8 0, i64 %i.fo, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i8 0, i64 16, i1 false)
  %i.fp = load ptr, ptr %i.cq, align 8, !tbaa !137 ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.cv
  br i1 %i.fq, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_S11_RT0_.exit", label %bb.t

bb.t:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i12.i
end_hunk_0
begin_hunk_1_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEElNS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_T0_T1_":bb.a
  %i.kx = getelementptr inbounds nuw i8, ptr %i.fx, i64 56 ; 4 uses
  %i.ky = icmp eq ptr %i.kw, %i.kx                ; 2 uses
  br i1 %i.kv, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  br i1 %i.ky, label %bb.bs, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store ptr %i.kw, ptr %i.g, align 8, !tbaa !137
  store ptr %i.kx, ptr %i.ks, align 8, !tbaa !137
  br label %bb.bs

bb.bp:                                            ; preds = %bb.bm
  br i1 %i.ky, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store ptr %i.ku, ptr %i.ks, align 8, !tbaa !137
  store ptr %i.i, ptr %i.g, align 8, !tbaa !137
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  store ptr %i.kw, ptr %i.g, align 8, !tbaa !6748
  store ptr %i.ku, ptr %i.ks, align 8, !tbaa !6748
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bo, %bb.bn
  %i.kz = getelementptr inbounds nuw i8, ptr %i.fx, i64 16 ; 3 uses
  %i.la = load i64, ptr %i.j, align 8, !tbaa !125
  %i.lb = load i64, ptr %i.kz, align 8, !tbaa !125
  store i64 %i.lb, ptr %i.j, align 8, !tbaa !125
  store i64 %i.la, ptr %i.kz, align 8, !tbaa !125
  %i.lc = getelementptr inbounds nuw i8, ptr %i.fx, i64 24 ; 4 uses
  %i.ld = load ptr, ptr %i.k, align 8, !tbaa !188 ; 2 uses
  %i.le = load ptr, ptr %i.lc, align 8, !tbaa !188
  store ptr %i.le, ptr %i.k, align 8, !tbaa !188
  store ptr %i.ld, ptr %i.lc, align 8, !tbaa !188
  %i.lf = getelementptr inbounds nuw i8, ptr %i.fx, i64 32 ; 2 uses
  %i.lg = load i64, ptr %i.l, align 8, !tbaa !125
  %i.lh = load i64, ptr %i.lf, align 8, !tbaa !125
  store i64 %i.lh, ptr %i.l, align 8, !tbaa !125
  store i64 %i.lg, ptr %i.lf, align 8, !tbaa !125
  %i.li = load ptr, ptr %i.i, align 8, !tbaa !188
  %i.lj = load ptr, ptr %i.kx, align 8, !tbaa !188
  store ptr %i.lj, ptr %i.i, align 8, !tbaa !188
  store ptr %i.li, ptr %i.kx, align 8, !tbaa !188
  %i.lk = load ptr, ptr %i.k, align 8, !tbaa !182 ; 2 uses
  %.not.i.i.i.i.i.i.i50.i.i = icmp eq ptr %i.lk, null
  br i1 %.not.i.i.i.i.i.i.i50.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i51.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ll = load ptr, ptr %i.g, align 8, !tbaa !137
  %i.lm = load i64, ptr %i.j, align 8, !tbaa !138
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 64
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !187
  %i.lp = urem i64 %i.lo, %i.lm
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %i.lp
  store ptr %i.k, ptr %i.lq, align 8, !tbaa !188
  %.pre.i = load ptr, ptr %i.lc, align 8, !tbaa !182
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i51.i.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i51.i.i: ; preds = %bb.bt, %bb.bs
  %i.lr = phi ptr [ %.pre.i, %bb.bt ], [ %i.ld, %bb.bs ] ; 2 uses
  %.not.i16.i.i.i.i.i.i52.i.i = icmp eq ptr %i.lr, null
  br i1 %.not.i16.i.i.i.i.i.i52.i.i, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_S11_S11_T0_.exit.i.preheader", label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_S11_S11_T0_.exit.i.sink.split"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_S11_S11_T0_.exit.i.sink.split": ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i.i.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i31.i.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i35.i.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i41.i.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i47.i.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i51.i.i, %bb.ce
  %.sink135 = phi ptr [ %i.ne, %bb.ce ], [ %i.kr, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i47.i.i ], [ %i.jp, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i41.i.i ], [ %i.iv, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i35.i.i ], [ %i.id, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i31.i.i ], [ %i.hb, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i.i.i ], [ %i.lr, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i51.i.i ]
  %.sink133.in = phi ptr [ %i.nf, %bb.ce ], [ %i.jz, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i47.i.i ], [ %i.p, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i41.i.i ], [ %i.p, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i35.i.i ], [ %i.hl, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i31.i.i ], [ %i.gj, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i.i.i ], [ %i.kz, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i51.i.i ]
  %.sink130.in = phi ptr [ %i.ma, %bb.ce ], [ %i.js, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i47.i.i ], [ %i.m, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i41.i.i ], [ %i.m, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i35.i.i ], [ %i.he, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i31.i.i ], [ %i.gc, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i.i.i ], [ %i.ks, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i51.i.i ]
  %.sink = phi ptr [ %i.mo, %bb.ce ], [ %i.kc, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i47.i.i ], [ %i.q, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i41.i.i ], [ %i.q, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i35.i.i ], [ %i.ho, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i31.i.i ], [ %i.gm, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i.i.i ], [ %i.lc, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i51.i.i ]
  %.sroa.014.0.i.i.ph = phi ptr [ %i.lx, %bb.ce ], [ %i.f, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i51.i.i ], [ %i.f, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i47.i.i ], [ %i.f, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i41.i.i ], [ %i.f, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i35.i.i ], [ %i.f, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i31.i.i ], [ %i.f, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.i.i.ph = phi ptr [ %.sroa.0.1.i.i, %bb.ce ], [ %storemerge25125, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i51.i.i ], [ %storemerge25125, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i47.i.i ], [ %storemerge25125, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i41.i.i ], [ %storemerge25125, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i35.i.i ], [ %storemerge25125, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i31.i.i ], [ %storemerge25125, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i.i.i ]
  %.sink130 = load ptr, ptr %.sink130.in, align 8, !tbaa !137
  %.sink133 = load i64, ptr %.sink133.in, align 8, !tbaa !138
  %i.ls = getelementptr inbounds nuw i8, ptr %.sink135, i64 64
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !187
  %i.lu = urem i64 %i.lt, %.sink133
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %.sink130, i64 %i.lu
  store ptr %.sink, ptr %i.lv, align 8, !tbaa !188
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_S11_S11_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_S11_S11_T0_.exit.i.preheader": ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i51.i.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i47.i.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i41.i.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i35.i.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i31.i.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_S11_S11_T0_.exit.i.sink.split"
  %.sroa.014.0.i.i.ph136 = phi ptr [ %.sroa.014.0.i.i.ph, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_S11_S11_T0_.exit.i.sink.split" ], [ %i.f, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i31.i.i ], [ %i.f, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i35.i.i ], [ %i.f, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i41.i.i ], [ %i.f, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i47.i.i ], [ %i.f, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i51.i.i ], [ %i.f, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.i.i.ph137 = phi ptr [ %.sroa.0.0.i.i.ph, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_S11_S11_T0_.exit.i.sink.split" ], [ %storemerge25125, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i31.i.i ], [ %storemerge25125, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i35.i.i ], [ %storemerge25125, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i41.i.i ], [ %storemerge25125, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i47.i.i ], [ %storemerge25125, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i51.i.i ], [ %storemerge25125, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i.i.i ]
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_S11_S11_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_S11_S11_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_S11_S11_T0_.exit.i.preheader", %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i.i16.i
  %.sroa.014.0.i.i = phi ptr [ %i.lx, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i.i16.i ], [ %.sroa.014.0.i.i.ph136, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_S11_S11_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i.i16.i ], [ %.sroa.0.0.i.i.ph137, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_S11_S11_T0_.exit.i.preheader" ]
  %.val1.i.i13.i = load double, ptr %0, align 8, !tbaa !1784 ; 2 uses
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bu, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_S11_S11_T0_.exit.i"
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_S11_S11_T0_.exit.i" ], [ %i.lx, %bb.bu ] ; 14 uses
  %.val.i.i14.i = load double, ptr %.sroa.014.1.i.i, align 8, !tbaa !1784 ; 2 uses
  %i.lw = fcmp olt double %.val.i.i14.i, %.val1.i.i13.i
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 64 ; 3 uses
  br i1 %i.lw, label %bb.bu, label %.preheader.i.i, !llvm.loop !6745

.preheader.i.i:                                   ; preds = %bb.bu, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.bu ] ; 8 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -64 ; 6 uses
  %.val1.i11.i.i = load double, ptr %.sroa.0.1.i.i, align 8, !tbaa !1784 ; 2 uses
  %i.ly = fcmp olt double %.val1.i.i13.i, %.val1.i11.i.i
  br i1 %i.ly, label %.preheader.i.i, label %bb.bv, !llvm.loop !6746

bb.bv:                                            ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.bw, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEET_S11_S11_T0_.exit"

bb.bw:                                            ; preds = %bb.bv
  store double %.val1.i11.i.i, ptr %.sroa.014.1.i.i, align 8, !tbaa !162
  store double %.val.i.i14.i, ptr %.sroa.0.1.i.i, align 8, !tbaa !162
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 8 ; 5 uses
  %i.ma = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -56 ; 5 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 40 ; 2 uses
  %i.mc = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.mb, i64 16, i1 false), !tbaa.struct !184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mb, ptr noundef nonnull align 8 dereferenceable(16) %i.mc, i64 16, i1 false), !tbaa.struct !184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mc, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !184
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.md = load ptr, ptr %i.lz, align 8, !tbaa !137 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 56 ; 4 uses
  %i.mf = icmp eq ptr %i.md, %i.me
  %i.mg = load ptr, ptr %i.ma, align 8, !tbaa !137 ; 3 uses
  %i.mh = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 4 uses
  %i.mi = icmp eq ptr %i.mg, %i.mh                ; 2 uses
  br i1 %i.mf, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  br i1 %i.mi, label %bb.cc, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store ptr %i.mg, ptr %i.lz, align 8, !tbaa !137
  store ptr %i.mh, ptr %i.ma, align 8, !tbaa !137
  br label %bb.cc

bb.bz:                                            ; preds = %bb.bw
  br i1 %i.mi, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store ptr %i.md, ptr %i.ma, align 8, !tbaa !137
  store ptr %i.me, ptr %i.lz, align 8, !tbaa !137
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  store ptr %i.mg, ptr %i.lz, align 8, !tbaa !6748
  store ptr %i.md, ptr %i.ma, align 8, !tbaa !6748
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %bb.by, %bb.bx
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 16 ; 3 uses
  %i.mk = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -48 ; 2 uses
  %i.ml = load i64, ptr %i.mj, align 8, !tbaa !125
  %i.mm = load i64, ptr %i.mk, align 8, !tbaa !125
  store i64 %i.mm, ptr %i.mj, align 8, !tbaa !125
  store i64 %i.ml, ptr %i.mk, align 8, !tbaa !125
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 24 ; 4 uses
  %i.mo = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -40 ; 4 uses
  %i.mp = load ptr, ptr %i.mn, align 8, !tbaa !188
  %i.mq = load ptr, ptr %i.mo, align 8, !tbaa !188
  store ptr %i.mq, ptr %i.mn, align 8, !tbaa !188
  store ptr %i.mp, ptr %i.mo, align 8, !tbaa !188
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 32 ; 2 uses
  %i.ms = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 2 uses
  %i.mt = load i64, ptr %i.mr, align 8, !tbaa !125
  %i.mu = load i64, ptr %i.ms, align 8, !tbaa !125
  store i64 %i.mu, ptr %i.mr, align 8, !tbaa !125
  store i64 %i.mt, ptr %i.ms, align 8, !tbaa !125
  %i.mv = load ptr, ptr %i.me, align 8, !tbaa !188
  %i.mw = load ptr, ptr %i.mh, align 8, !tbaa !188
  store ptr %i.mw, ptr %i.me, align 8, !tbaa !188
  store ptr %i.mv, ptr %i.mh, align 8, !tbaa !188
  %i.mx = load ptr, ptr %i.mn, align 8, !tbaa !182 ; 2 uses
  %.not.i.i.i.i.i.i.i.i15.i = icmp eq ptr %i.mx, null
  br i1 %.not.i.i.i.i.i.i.i.i15.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i.i16.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.my = load ptr, ptr %i.lz, align 8, !tbaa !137
  %i.mz = load i64, ptr %i.mj, align 8, !tbaa !138
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 64
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !187
  %i.nc = urem i64 %i.nb, %i.mz
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %i.nc
  store ptr %i.mn, ptr %i.nd, align 8, !tbaa !188
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i.i16.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i.i16.i: ; preds = %bb.cd, %bb.cc
  %i.ne = load ptr, ptr %i.mo, align 8, !tbaa !182 ; 2 uses
  %.not.i16.i.i.i.i.i.i.i17.i = icmp eq ptr %i.ne, null
  br i1 %.not.i16.i.i.i.i.i.i.i17.i, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_S11_S11_T0_.exit.i", label %bb.ce, !llvm.loop !6747

bb.ce:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i.i16.i
  %i.nf = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -48
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_S11_S11_T0_.exit.i.sink.split", !llvm.loop !6747

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEET_S11_S11_T0_.exit": ; preds = %bb.bv
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEElNS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_T0_T1_"(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge25125, i64 noundef %i.fv)
  %i.ng = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.nh = sub i64 %i.ng, %i.a
  %i.ni = ashr exact i64 %i.nh, 6                 ; 3 uses
  %i.nj = icmp sgt i64 %i.ni, 16
  br i1 %i.nj, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_S11_T0_.exit", !llvm.loop !6742

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_S11_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEET_S11_S11_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_S11_S11_RT0_.exit", %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEElSK_NS0_5__ops15_Iter_comp_iterIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_T0_S12_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::pair.365", align 8    ; 8 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2
  br label %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit

_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit: ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 8 uses
  %i.c = icmp slt i64 %.0, %i.b
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit
  %i.d = shl i64 %.0, 1                           ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [64 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [64 x i8], ptr %0, i64 %i.g
  %.val.i = load double, ptr %i.f, align 8, !tbaa !1784
  %.val1.i = load double, ptr %i.h, align 8, !tbaa !1784
  %i.i = fcmp olt double %.val.i, %.val1.i
  %spec.select = select i1 %i.i, i64 %i.g, i64 %i.e ; 2 uses
  %i.j = getelementptr inbounds [64 x i8], ptr %0, i64 %spec.select ; 2 uses
  %i.k = getelementptr inbounds [64 x i8], ptr %0, i64 %.0 ; 2 uses
  %i.l = load double, ptr %i.j, align 8, !tbaa !162
  store double %i.l, ptr %i.k, align 8, !tbaa !1784
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSN_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %i.m)
          to label %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit unwind label %bb.c, !llvm.loop !6749

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #46
  unreachable

bb.d:                                             ; preds = %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit
  %i.q = and i64 %2, 1
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.e, label %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit25

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i64 %2, -2
  %i.t = ashr exact i64 %i.s, 1
  %i.u = icmp eq i64 %.0, %i.t
  br i1 %i.u, label %bb.f, label %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit25

bb.f:                                             ; preds = %bb.e
  %i.v = shl nsw i64 %.0, 1
  %i.w = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.x = getelementptr inbounds [64 x i8], ptr %0, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds [64 x i8], ptr %0, i64 %.0 ; 2 uses
  %i.z = load double, ptr %i.x, align 8, !tbaa !162
  store double %i.z, ptr %i.y, align 8, !tbaa !1784
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSN_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(56) %i.aa)
          to label %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit25 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #46
  unreachable

_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit25: ; preds = %bb.f, %bb.e, %bb.d
  %.1 = phi i64 [ %.0, %bb.d ], [ %.0, %bb.e ], [ %i.w, %bb.f ]
  %i.ae = load double, ptr %3, align 8, !tbaa !1784
  store double %i.ae, ptr %4, align 8, !tbaa !1784
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !137 ; 3 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !137
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !138 ; 2 uses
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !138
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !182 ; 3 uses
  store ptr %i.an, ptr %i.al, align 8, !tbaa !159
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !152
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !152
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !tbaa.struct !184
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 5 uses
  store ptr null, ptr %i.at, align 8, !tbaa !185
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.av = icmp eq ptr %i.ah, %i.au
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit25
  store ptr %i.at, ptr %i.af, align 8, !tbaa !137
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !185
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !185
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit25
  %i.ax = phi ptr [ %i.at, %bb.h ], [ %i.ah, %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit25 ]
  %.not.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEC2EOSH_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !187
  %i.ba = urem i64 %i.az, %i.ak
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ba
  store ptr %i.al, ptr %i.bb, align 8, !tbaa !188
  br label %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEC2EOSH_.exit

_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEC2EOSH_.exit: ; preds = %bb.i, %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 0, ptr %i.bc, align 8, !tbaa !189
  store i64 1, ptr %i.aj, align 8, !tbaa !138
  store ptr null, ptr %i.au, align 8, !tbaa !185
  store ptr %i.au, ptr %i.ag, align 8, !tbaa !137
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  br label %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit.i

_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit.i: ; preds = %bb.l, %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEC2EOSH_.exit
  %.0.i = phi i64 [ %.1, %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEC2EOSH_.exit ], [ %.09.i, %bb.l ] ; 4 uses
  %.09.in.i = add nsw i64 %.0.i, -1
  %.09.i = sdiv i64 %.09.in.i, 2                  ; 2 uses
  %i.bd = icmp sgt i64 %.0.i, %1
  %.pre.i = load double, ptr %4, align 8, !tbaa !162 ; 2 uses
  br i1 %i.bd, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit.i
  %i.be = getelementptr inbounds [64 x i8], ptr %0, i64 %.09.i ; 2 uses
  %.val.i.i = load double, ptr %i.be, align 8, !tbaa !1784 ; 2 uses
  %i.bf = fcmp olt double %.val.i.i, %.pre.i
  br i1 %i.bf, label %bb.l, label %.critedge.i

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds [64 x i8], ptr %0, i64 %.0.i ; 2 uses
  store double %.val.i.i, ptr %i.bg, align 8, !tbaa !1784
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSN_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(56) %i.bh)
          to label %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit.i unwind label %bb.m, !llvm.loop !6750

bb.m:                                             ; preds = %bb.l
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #46
  unreachable

.critedge.i:                                      ; preds = %bb.k, %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit.i
  %i.bl = getelementptr inbounds [64 x i8], ptr %0, i64 %.0.i ; 2 uses
  store double %.pre.i, ptr %i.bl, align 8, !tbaa !1784
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSN_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %i.bm, ptr noundef nonnull align 8 dereferenceable(56) %i.af)
          to label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEElSK_NS0_5__ops14_Iter_comp_valIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_T0_S12_T1_RT2_.exit" unwind label %bb.n

bb.n:                                             ; preds = %.critedge.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #46
  unreachable

"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEElSK_NS0_5__ops14_Iter_comp_valIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_T0_S12_T1_RT2_.exit": ; preds = %.critedge.i
  %i.bp = load ptr, ptr %i.al, align 8, !tbaa !182 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEElSK_NS0_5__ops14_Iter_comp_valIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_T0_S12_T1_RT2_.exit", %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.bq, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i ], [ %i.bp, %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEElSK_NS0_5__ops14_Iter_comp_valIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_T0_S12_T1_RT2_.exit" ] ; 4 uses
  %i.bq = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !159 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !103 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !104
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #43
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 72) #43
  %.not.i.i.i.i.i26 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i26, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i, %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEElSK_NS0_5__ops14_Iter_comp_valIZNSA_L37runBenchmarkGetNSPerIterationEstimateERKSt8functionIFNSA_6detail12TimeIterDataEjEEdE3$_0EEEvT_T0_S12_T1_RT2_.exit"
  %i.bx = load ptr, ptr %i.af, align 8, !tbaa !137
  %i.by = load i64, ptr %i.ai, align 8, !tbaa !138
end_hunk_1
