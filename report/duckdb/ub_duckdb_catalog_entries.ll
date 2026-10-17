Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_catalog_entries?download=true
inline.NumInlined: 10301
inline.NumDeleted: 5043
begin_hunk_0_@_ZNSt10_HashtableIN6duckdb13PhysicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_25PhysicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_assignIRKSD_NS3_17_ReuseOrAllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEEvOT_RKT0_:bb.a
  invoke void @__cxa_rethrow() #32
          to label %bb.x unwind label %bb.u

bb.v:                                             ; preds = %bb.u
  resume { ptr, i32 } %i.aw

.loopexit:                                        ; preds = %bb.q, %bb.j, %bb.f
  ret void

bb.w:                                             ; preds = %bb.u
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #34
  unreachable

bb.x:                                             ; preds = %_ZNSt10_HashtableIN6duckdb13PhysicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_25PhysicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt8_DestroyIN6duckdb12StorageIndexEEvPT_(ptr noundef %0) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !437  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !438  ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPN6duckdb12StorageIndexEEvT_S3_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i.i.i2 = phi ptr [ %i.e, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZSt8_DestroyIN6duckdb12StorageIndexEEvPT_(ptr noundef %.0.i.i.i2), !inline_history !2099
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i.i.i2, i64 104 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb12StorageIndexEEvT_S3_.exit.i.loopexit, label %.lr.ph, !llvm.loop !19

_ZSt8_DestroyIPN6duckdb12StorageIndexEEvT_S3_.exit.i.loopexit: ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !437
  br label %_ZSt8_DestroyIPN6duckdb12StorageIndexEEvT_S3_.exit.i

_ZSt8_DestroyIPN6duckdb12StorageIndexEEvT_S3_.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb12StorageIndexEEvT_S3_.exit.i.loopexit, %bb.a
  %i.f = phi ptr [ %.pre, %_ZSt8_DestroyIPN6duckdb12StorageIndexEEvT_S3_.exit.i.loopexit ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb12StorageIndexESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb12StorageIndexEEvT_S3_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #31, !inline_history !2100
  br label %_ZNSt6vectorIN6duckdb12StorageIndexESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb12StorageIndexESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb12StorageIndexEEvT_S3_.exit.i, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.g) #30, !inline_history !440
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !104  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN6duckdb12StorageIndexESaIS1_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.i) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb12StorageIndexESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb16ColumnDefinitionESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !359    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !358  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN6duckdb16ColumnDefinitionD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %.05.i.i) #30
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 216 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !16

_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !359
  br label %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb16ColumnDefinitionESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #31
  br label %_ZNSt12_Vector_baseIN6duckdb16ColumnDefinitionESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb16ColumnDefinitionESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSK_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.g, label %bb.b, !prof !124

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !394  ; 2 uses
  %.not5.i = icmp eq ptr %i.c, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE19_M_deallocate_nodesEPSB_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i
  %.06.i = phi ptr [ %i.d, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i ], [ %i.c, %bb.b ] ; 4 uses
  %i.d = load ptr, ptr %.06.i, align 8, !tbaa !193 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !104  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i, i64 24
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  tail call void @_ZdlPv(ptr noundef %i.f) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i) #31
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE19_M_deallocate_nodesEPSB_.exit, label %.lr.ph.i, !llvm.loop !21

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE19_M_deallocate_nodesEPSB_.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !392    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE19_M_deallocate_nodesEPSB_.exit
  tail call void @_ZdlPv(ptr noundef %i.i) #31
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE19_M_deallocate_nodesEPSB_.exit, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !196
  %i.n = load ptr, ptr %1, align 8, !tbaa !392    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !396
  store ptr %i.q, ptr %i.j, align 8, !tbaa !396
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, %bb.d
  %i.r = phi ptr [ %i.j, %bb.d ], [ %i.n, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit ] ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !392
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !393  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !393
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !394  ; 3 uses
  store ptr %i.w, ptr %i.b, align 8, !tbaa !394
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !395
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.y, ptr %i.z, align 8, !tbaa !395
  %.not.i12 = icmp eq ptr %i.w, null
  br i1 %.not.i12, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !376
  %i.ac = urem i64 %i.ab, %i.t
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ac
  store ptr %i.b, ptr %i.ad, align 8, !tbaa !377
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit: ; preds = %bb.e, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.ae, align 8, !tbaa !378
  store i64 1, ptr %i.s, align 8, !tbaa !393
  store ptr null, ptr %i.o, align 8, !tbaa !396
  store ptr %i.o, ptr %1, align 8, !tbaa !392
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !634  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !456    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !541
  %i.i = load ptr, ptr %0, align 8, !tbaa !456    ; 9 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE11_M_allocateEm.exit.i, !prof !124

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33 ; 4 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE11_M_allocateEm.exit.i
  %i.o = add i64 %i.d, -8
  %i.p = sub i64 %i.o, %i.e
  %i.q = and i64 %i.p, -8
  %i.r = add i64 %i.q, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.r, i1 false), !tbaa !106
  br label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %3 = load ptr, ptr %0, align 8, !tbaa !456      ; 2 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %3) #31
  br label %_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !456
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !541
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb13PhysicalIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !634  ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 5 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = icmp sgt i64 %i.f, 8
  br i1 %i.x, label %bb.h, label %bb.i, !prof !237

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  %.pre28 = load ptr, ptr %0, align 8, !tbaa !456
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb13PhysicalIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.y = icmp eq i64 %i.f, 8
  br i1 %i.y, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb13PhysicalIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  %i.z = load i64, ptr %i.c, align 8, !tbaa !106
  store i64 %i.z, ptr %i.i, align 8, !tbaa !106
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb13PhysicalIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.aa = icmp sgt i64 %i.w, 8
  br i1 %i.aa, label %bb.l, label %bb.m, !prof !237

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.w, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !456
  %.pre25 = load ptr, ptr %i.t, align 8, !tbaa !634 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !456 ; 2 uses
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !634
  %.pre29 = ptrtoint ptr %.pre25 to i64
  %.pre30 = ptrtoint ptr %.pre26 to i64
  %.pre32 = sub i64 %.pre29, %.pre30
  br label %_ZSt4copyIPN6duckdb13PhysicalIndexES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ab = icmp eq i64 %i.w, 8
  br i1 %i.ab, label %bb.n, label %_ZSt4copyIPN6duckdb13PhysicalIndexES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !106
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !106
  br label %_ZSt4copyIPN6duckdb13PhysicalIndexES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN6duckdb13PhysicalIndexES2_ET0_T_S4_S3_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %.pre-phi33 = phi i64 [ %.pre32, %bb.l ], [ %i.w, %bb.m ], [ 8, %bb.n ]
  %i.ad = phi ptr [ %.pre27, %bb.l ], [ %i.b, %bb.m ], [ %i.b, %bb.n ] ; 2 uses
  %i.ae = phi ptr [ %.pre26, %bb.l ], [ %i.i, %bb.m ], [ %i.i, %bb.n ] ; 2 uses
  %i.af = phi ptr [ %.pre25, %bb.l ], [ %i.u, %bb.m ], [ %i.u, %bb.n ]
  %i.ag = phi ptr [ %.pre, %bb.l ], [ %i.c, %bb.m ], [ %i.c, %bb.n ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.pre-phi33 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ah, %i.ad
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb13PhysicalIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN6duckdb13PhysicalIndexES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %i.af, %_ZSt4copyIPN6duckdb13PhysicalIndexES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %i.ah, %_ZSt4copyIPN6duckdb13PhysicalIndexES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %i.ai = load i64, ptr %.0810.i.i.i.i, align 8, !tbaa !106
  store i64 %i.ai, ptr %.011.i.i.i.i, align 8, !tbaa !106
  %i.aj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.ad
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb13PhysicalIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2101

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb13PhysicalIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN6duckdb13PhysicalIndexES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.al = phi ptr [ %2, %_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE13_M_deallocateEPS1_m.exit ], [ %i.ae, %_ZSt4copyIPN6duckdb13PhysicalIndexES2_ET0_T_S4_S3_.exit ], [ %i.i, %bb.j ], [ %i.i, %bb.i ], [ %.pre28, %bb.h ], [ %i.ae, %.lr.ph.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !634
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb13PhysicalIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE18_M_assign_elementsIRKSC_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_ReuseOrAllocNode.1602", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !118  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !378
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !118  ; 5 uses
  %.not = icmp eq i64 %i.b, %i.g
  %i.h = load ptr, ptr %0, align 8, !tbaa !117    ; 2 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.g, 1
  br i1 %i.i, label %bb.c, label %bb.d, !prof !124

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !295
  br label %_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.k, label %bb.e, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb17LogicalDependencyELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !124

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.l, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

.noexc7.i.i:                                      ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb17LogicalDependencyELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.d
  %i.m = shl nuw nsw i64 %i.g, 3                  ; 2 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #33 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.n, i8 0, i64 %i.m, i1 false)
  %.pre = load i64, ptr %i.f, align 8, !tbaa !118
  br label %_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb17LogicalDependencyELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %i.o = phi i64 [ 1, %bb.c ], [ %.pre, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb17LogicalDependencyELb1EEEEE19_M_allocate_bucketsEm.exit.i ]
  %.0.i = phi ptr [ %i.j, %bb.c ], [ %i.n, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb17LogicalDependencyELb1EEEEE19_M_allocate_bucketsEm.exit.i ]
  store ptr %.0.i, ptr %0, align 8, !tbaa !117
  store i64 %i.o, ptr %i.a, align 8, !tbaa !118
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.p = shl i64 %i.b, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.h, i8 0, i64 %i.p, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %.0 = phi ptr [ %i.h, %_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ], [ null, %bb.f ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !294
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.r, ptr %i.s, align 8, !tbaa !294
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !196
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !298
  store ptr %i.v, ptr %2, align 8, !tbaa !742
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.w, align 8, !tbaa !297
  store ptr null, ptr %i.u, align 8, !tbaa !298
  invoke void @_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_assignIRKSC_NS3_17_ReuseOrAllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not18 = icmp eq ptr %.0, null
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = icmp eq ptr %.0, %i.x
  %or.cond = select i1 %.not18, i1 true, i1 %i.y
  br i1 %or.cond, label %_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEPPNS3_15_Hash_node_baseEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdlPv(ptr noundef nonnull %.0) #31
  br label %_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEPPNS3_15_Hash_node_baseEm.exit

bb.j:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeIN6duckdb17LogicalDependencyELb1EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.ab = call ptr @__cxa_begin_catch(ptr %i.aa) #30 ; 0 uses
  %.not19 = icmp eq ptr %.0, null
  %.pre21 = load ptr, ptr %0, align 8, !tbaa !117 ; 3 uses
  br i1 %.not19, label %._crit_edge, label %bb.k

._crit_edge:                                      ; preds = %bb.j
  %.pre22 = load i64, ptr %i.a, align 8, !tbaa !118
  br label %bb.n

_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEPPNS3_15_Hash_node_baseEm.exit: ; preds = %bb.i, %bb.h
  %i.ac = load ptr, ptr %2, align 8, !tbaa !742   ; 2 uses
  %.not5.i.i = icmp eq ptr %i.ac, null
  br i1 %.not5.i.i, label %_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeIN6duckdb17LogicalDependencyELb1EEEEED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEPPNS3_15_Hash_node_baseEm.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb17LogicalDependencyELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i
  %.06.i.i = phi ptr [ %i.ad, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb17LogicalDependencyELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i ], [ %i.ac, %_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEPPNS3_15_Hash_node_baseEm.exit ] ; 8 uses
  %i.ad = load ptr, ptr %.06.i.i, align 8, !tbaa !193 ; 2 uses
end_hunk_0
