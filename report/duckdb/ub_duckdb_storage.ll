Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_storage?download=true
inline.NumInlined: 20074
inline.NumDeleted: 9324
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN6duckdb20BoundCreateTableInfoD2Ev:bb.a

_ZNSt6vectorIN6duckdb16IndexStorageInfoESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb16IndexStorageInfoES1_EvT_S3_RSaIT0_E.exit.i, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !4210 ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb16IndexStorageInfoESaIS1_EED2Ev.exit
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !227
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.h) #23, !inline_history !4206
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb16IndexStorageInfoESaIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !865  ; 3 uses
  %.not.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN6duckdb19PersistentTableDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb19PersistentTableDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb19PersistentTableDataEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit
  tail call void @_ZN6duckdb19PersistentTableDataD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.m) #23
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #42
  br label %_ZNSt10unique_ptrIN6duckdb19PersistentTableDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19PersistentTableDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb19PersistentTableDataEEclEPS1_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.n) #23
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1192 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1191 ; 2 uses
  %.not4.i.i.i2 = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i.i2, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i3

.lr.ph.i.i.i3:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb19PersistentTableDataESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i4 = phi ptr [ %i.w, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.p, %_ZNSt10unique_ptrIN6duckdb19PersistentTableDataESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.s = load ptr, ptr %.05.i.i.i4, align 8, !tbaa !1194 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i3
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !227
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.s) #23, !inline_history !4207
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i3
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i4, i64 8 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.w, %i.r
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i3, !llvm.loop !4208

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i6 = load ptr, ptr %i.o, align 8, !tbaa !1192
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN6duckdb19PersistentTableDataESt14default_deleteIS1_EED2Ev.exit
  %i.x = phi ptr [ %.pr.i6, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.p, %_ZNSt10unique_ptrIN6duckdb19PersistentTableDataESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i7 = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i7, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.x) #42
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6duckdb23ColumnDependencyManagerD1Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %i.y) #23
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !728 ; 3 uses
  %.not.i8 = icmp eq ptr %i.aa, null
  br i1 %.not.i8, label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !227
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(320) %i.aa) #23, !inline_history !25
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6duckdb23ColumnDependencyManagerD1Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6duckdb19PersistentTableDataD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2070 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb17LogicalDependencyELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i
  %.06.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb17LogicalDependencyELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i ], [ %i.b, %bb.a ] ; 8 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !529 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !255  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 96
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZdlPv(ptr noundef %i.e) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !255  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 64
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.i) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !255  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 32
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb17LogicalDependencyELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.m) #42
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb17LogicalDependencyELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb17LogicalDependencyELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i) #42
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !155

_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb17LogicalDependencyELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i, %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !2071
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !2072
  %i.s = shl i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.t = load ptr, ptr %0, align 8, !tbaa !2071   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit
  tail call void @_ZdlPv(ptr noundef %i.t) #42
  br label %_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.b, %_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb16IndexStorageInfoESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !775    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !774  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb16IndexStorageInfoES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN6duckdb16IndexStorageInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %.05.i.i) #23
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 160 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb16IndexStorageInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !33

_ZSt8_DestroyIPN6duckdb16IndexStorageInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !775
  br label %_ZSt8_DestroyIPN6duckdb16IndexStorageInfoES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb16IndexStorageInfoES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb16IndexStorageInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb16IndexStorageInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb16IndexStorageInfoESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb16IndexStorageInfoES1_EvT_S3_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #42
  br label %_ZNSt12_Vector_baseIN6duckdb16IndexStorageInfoESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb16IndexStorageInfoESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb16IndexStorageInfoES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4212
  %i.c = load ptr, ptr %1, align 8, !tbaa !862    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !4213
  %i.i = load ptr, ptr %0, align 8, !tbaa !862    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.n, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !252

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #45
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #44 ; 3 uses
  %i.o = add i64 %i.d, -16
  %i.p = sub i64 %i.o, %i.e
  %i.q = and i64 %i.p, -16
  %i.r = add i64 %i.q, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.r, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !862      ; 2 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6duckdb16MetaBlockPointerESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  tail call void @_ZdlPv(ptr noundef nonnull %3) #42
  br label %_ZNSt12_Vector_baseIN6duckdb16MetaBlockPointerESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb16MetaBlockPointerESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !862
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !4213
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb16MetaBlockPointerESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !4212
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = icmp sgt i64 %i.f, 16
  br i1 %i.x, label %bb.h, label %bb.i, !prof !863

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb16MetaBlockPointerESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.y = icmp eq i64 %i.f, 16
  br i1 %i.y, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb16MetaBlockPointerESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !800
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb16MetaBlockPointerESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.z = icmp sgt i64 %i.w, 16
  br i1 %i.z, label %bb.l, label %bb.m, !prof !863

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.w, i1 false)
  br label %_ZSt4copyIPN6duckdb16MetaBlockPointerES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.aa = icmp eq i64 %i.w, 16
  br i1 %i.aa, label %bb.n, label %_ZSt4copyIPN6duckdb16MetaBlockPointerES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !800
  br label %_ZSt4copyIPN6duckdb16MetaBlockPointerES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN6duckdb16MetaBlockPointerES2_ET0_T_S4_S3_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ab = load ptr, ptr %1, align 8, !tbaa !862
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !4212 ; 2 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !862
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag ; 2 uses
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !4212 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb16MetaBlockPointerESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN6duckdb16MetaBlockPointerES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %i.ac, %_ZSt4copyIPN6duckdb16MetaBlockPointerES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %i.ah, %_ZSt4copyIPN6duckdb16MetaBlockPointerES2_ET0_T_S4_S3_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i, i64 16, i1 false), !tbaa.struct !800
  %i.aj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.ai
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb16MetaBlockPointerESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4211

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb16MetaBlockPointerESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN6duckdb16MetaBlockPointerES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN6duckdb16MetaBlockPointerESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !862
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !4212
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb16MetaBlockPointerESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorISt17reference_wrapperIKNS_20TemporaryMemoryStateEELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !909
  %i.e = load ptr, ptr %0, align 8, !tbaa !912    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !248
  store i64 %i.i, ptr %i.b, align 8, !tbaa !248
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZNK6duckdb6vectorISt17reference_wrapperIKNS_20TemporaryMemoryStateEELb1ESaIS4_EE3getILb1EEERKS4_m.exit, label %bb.b, !prof !863

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.230, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #45
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !255    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNK6duckdb6vectorISt17reference_wrapperIKNS_20TemporaryMemoryStateEELb1ESaIS4_EE3getILb1EEERKS4_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !913
  %i.e = load ptr, ptr %0, align 8, !tbaa !547    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !248
  store i64 %i.i, ptr %i.b, align 8, !tbaa !248
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZNK6duckdb6vectorImLb1ESaImEE3getILb1EEERKmm.exit, label %bb.b, !prof !863

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.230, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #45
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
end_hunk_0
