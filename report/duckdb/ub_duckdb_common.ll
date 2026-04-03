begin_hunk_0
inline.NumInlined: 29984
inline.NumDeleted: 10454
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.t
  store i8 0, ptr %i.ad, align 1, !tbaa !75
  %i.ae = load i64, ptr %2, align 8, !tbaa !32
  %i.af = add i64 %i.ae, 1                        ; 6 uses
  store i64 %i.af, ptr %2, align 8, !tbaa !32
  %i.ag = load i64, ptr %i.i, align 8, !tbaa !134 ; 2 uses
  %i.ah = icmp ult i64 %i.af, %i.ag
  br i1 %i.ah, label %.lr.ph.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i._ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit_crit_edge, !llvm.loop !3100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i._ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit_crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i
  br label %_ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit, !llvm.loop !3100

.lr.ph.i._ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit_crit_edge: ; preds = %.lr.ph.i
  %i.ai = icmp ult i64 %i.af, %i.ag
  br label %_ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit

_ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit: ; preds = %.lr.ph.i._ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i._ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit_crit_edge, %.lr.ph.i.preheader
  %7 = phi i1 [ %i.ai, %.lr.ph.i._ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit_crit_edge ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i._ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit_crit_edge ], [ true, %.lr.ph.i.preheader ]
  %8 = phi i64 [ %i.af, %.lr.ph.i._ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit_crit_edge ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i._ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit_crit_edge ], [ %i.h, %.lr.ph.i.preheader ] ; 2 uses
  br i1 %7, label %bb.e, label %_ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit.thread

bb.e:                                             ; preds = %_ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit
end_hunk_1
begin_hunk_2
  %.not11.i = icmp eq i8 %i.al, %4
  br i1 %.not11.i, label %_ZN6duckdb20string_util_internal13ConsumeLetterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmc.exit, label %_ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit.thread

_ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit.thread: ; preds = %bb.b, %bb.e, %_ZN6duckdb20string_util_internal9TakeWhileIZNS0_22TakePossiblyQuotedItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmccEUlcE_EEvS9_SA_RKT_RS7_.exit
  %i.am = tail call ptr @__cxa_allocate_exception(i64 16) #60 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #60
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #60
end_hunk_2
begin_hunk_3
  store i64 %i.ck, ptr %i.a, align 8, !tbaa !4542
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread15.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread15.us.i, %bb.j, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i, %bb.h, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.us.i, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit, %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSC_15_Hash_node_baseEPNSC_10_Hash_nodeISA_Lb1EEE.exit
  %.1 = phi i64 [ 1, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13EncryptionKeyEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSC_15_Hash_node_baseEPNSC_10_Hash_nodeISA_Lb1EEE.exit ], [ 0, %bb.j ], [ 0, %bb.b ], [ 0, %bb.h ], [ 0, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread15.us.i ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.us.i ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb13EncryptionKeyEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread15.i ]
  ret i64 %.1
}

end_hunk_3
begin_hunk_4
bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store ptr %i.x, ptr %1, align 8, !tbaa !31
  br label %.critedge

bb.j:                                             ; preds = %bb.h, %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13error_handlerEEEiRPKT_S7_OT0_.exit
  br i1 %i.d, label %bb.k, label %bb.l
end_hunk_4
begin_hunk_5

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not44 = icmp eq i32 %.017.i, 0
  br i1 %.not44, label %.critedge, label %bb.m

.critedge:                                        ; preds = %bb.l, %bb.i
  %.137.ph = phi i32 [ -1, %bb.l ], [ %.017.i, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #60
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %.017.i, ptr %3, align 4, !tbaa !4560
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #60
  br label %bb.x

bb.n:                                             ; preds = %.critedge, %bb.a
  %.2 = phi i32 [ %.137.ph, %.critedge ], [ -1, %bb.a ] ; 4 uses
  tail call void @_ZN10duckdb_fmt2v620basic_printf_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE11parse_flagsERNS0_18basic_format_specsIcEERPKcSC_(ptr noundef nonnull align 4 dereferenceable(17) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2)
  %i.z = load ptr, ptr %1, align 8, !tbaa !31     ; 5 uses
  %.not45 = icmp eq ptr %i.z, %2
end_hunk_5
begin_hunk_6
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #60
  br label %bb.x

bb.x:                                             ; preds = %bb.m, %bb.n, %bb.v, %bb.w, %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13error_handlerEEEiRPKT_S7_OT0_.exit57
  %.1 = phi i32 [ -1, %bb.m ], [ %.2, %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13error_handlerEEEiRPKT_S7_OT0_.exit57 ], [ %.2, %bb.w ], [ %.2, %bb.v ], [ %.2, %bb.n ]
  ret i32 %.1
}

end_hunk_6
begin_hunk_7
  store i64 %i.cn, ptr %i.a, align 8, !tbaa !1421
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread15.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread15.us.i, %bb.j, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i, %bb.h, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit, %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSA_15_Hash_node_baseEPNSA_10_Hash_nodeIS8_Lb1EEE.exit
  %.1 = phi i64 [ 1, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSA_15_Hash_node_baseEPNSA_10_Hash_nodeIS8_Lb1EEE.exit ], [ 0, %bb.j ], [ 0, %bb.b ], [ 0, %bb.h ], [ 0, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread15.us.i ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread15.i ]
  ret i64 %.1
}

end_hunk_7
begin_hunk_8
define linkonce_odr noundef double @_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, double noundef %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb_jaro_winkler::common::PatternMatchVector", align 8 ; 18 uses
  %6 = alloca %"struct.duckdb_jaro_winkler::common::BlockPatternMatchVector", align 8 ; 16 uses
  %7 = alloca %"struct.duckdb_jaro_winkler::detail::FlaggedCharsMultiword", align 8 ; 12 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
end_hunk_8
begin_hunk_9
  %i.gp = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.sroa.0.1.lcssa.i)
  %i.gq = add nuw nsw i64 %i.gp, %.0.lcssa.i      ; 3 uses
  %.not.i65 = icmp eq i64 %i.gq, 0
  br i1 %.not.i65, label %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit, label %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit

_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit: ; preds = %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common18PatternMatchVectorEPKcS5_EENS0_16FlaggedCharsWordERKT_T0_SA_T1_SB_i.exit
  %i.gr = uitofp nneg i64 %i.gq to double
end_hunk_9
begin_hunk_10
  %i.hb = fadd double %i.ha, 1.000000e+00
  %i.hc = fdiv double %i.hb, 3.000000e+00
  %i.hd = fcmp ult double %i.hc, %4
  br i1 %i.hd, label %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit, label %bb.v

bb.v:                                             ; preds = %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit
  %.not2.i = icmp eq i64 %.sroa.8.1.lcssa.i, 0
  br i1 %.not2.i, label %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit.a, label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %bb.v, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i76
  %.05.i = phi i64 [ %i.it, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i76 ], [ %.sroa.0.1.lcssa.i, %bb.v ] ; 3 uses
end_hunk_10
begin_hunk_11
  %i.is = and i64 %i.ir, %.0133.i                 ; 2 uses
  %i.it = xor i64 %i.hf, %.05.i
  %.not.i78 = icmp eq i64 %i.is, 0
  br i1 %.not.i78, label %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit.a, label %.lr.ph.i67, !llvm.loop !6343

_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit: ; preds = %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit, %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common18PatternMatchVectorEPKcS5_EENS0_16FlaggedCharsWordERKT_T0_SA_T1_SB_i.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #60
  br label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread

bb.z:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #60
end_hunk_11
begin_hunk_12

_ZNSt6vectorImSaImEE6resizeEm.exit.i:             ; preds = %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorC2IPKcEET_S5_.exit
  %i.js = phi ptr [ %i.jr, %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i ], [ null, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorC2IPKcEET_S5_.exit ] ; 3 uses
  %i.jt = phi ptr [ %i.jn, %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i ], [ null, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorC2IPKcEET_S5_.exit ] ; 13 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.not = icmp eq i64 %i.jh, 0
  br i1 %.not, label %_ZNSt6vectorImSaImEE6resizeEm.exit34.i, label %bb.ae
end_hunk_12
begin_hunk_13

_ZNSt6vectorImSaImEE6resizeEm.exit34.i:           ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit.i, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i
  %i.kd = phi ptr [ %i.kc, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i ], [ null, %_ZNSt6vectorImSaImEE6resizeEm.exit.i ] ; 3 uses
  %i.ke = phi ptr [ %i.jy, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i ], [ null, %_ZNSt6vectorImSaImEE6resizeEm.exit.i ] ; 14 uses
  %i.kf = icmp sgt i64 %i.ay, 0
  br i1 %i.kf, label %.lr.ph.i81, label %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIPKcS3_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_S9_T0_SA_l.exit

end_hunk_13
begin_hunk_14
  %.2.i = phi i64 [ %i.um, %.lr.ph28.i ], [ 0, %.preheader.i89 ], [ 0, %.preheader20.i ], [ %i.uj, %middle.block507 ], [ %i.tw, %middle.block ], [ %i.uq, %.lr.ph.i87 ] ; 3 uses
  %i.us = add nsw i64 %.2.i, %.0.lcssa.i          ; 3 uses
  %.not.i90 = icmp eq i64 %i.us, 0
  br i1 %.not.i90, label %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit, label %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit92

_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit92: ; preds = %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit
  %i.ut = sitofp i64 %i.us to double
end_hunk_14
begin_hunk_15
  %i.vd = fadd double %i.vc, 1.000000e+00
  %i.ve = fdiv double %i.vd, 3.000000e+00
  %i.vf = fcmp ult double %i.ve, %4
  br i1 %i.vf, label %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit92
  %.not19.i93 = icmp eq i64 %.2.i, 0
end_hunk_15
begin_hunk_16
  %.not41.i = icmp eq i64 %i.xl, 0
  br i1 %.not41.i, label %.loopexit.i, label %.preheader.i95, !llvm.loop !6359

_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit: ; preds = %.loopexit.i, %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, %bb.bb, %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit92
  %.0.i89171 = phi i1 [ false, %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit ], [ false, %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit92 ], [ true, %bb.bb ], [ true, %.loopexit.i ]
  %.143 = phi i64 [ 0, %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit ], [ 0, %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit92 ], [ 0, %bb.bb ], [ %i.xj, %.loopexit.i ]
  %.not.i.i.i.i107.a = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i.i107.a, label %_ZNSt6vectorImSaImEED2Ev.exit.i108.a, label %bb.bf

end_hunk_16
begin_hunk_17
_ZNSt6vectorImSaImEED2Ev.exit.i110:               ; preds = %bb.bh, %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit
  %i.xr = load ptr, ptr %6, align 8, !tbaa !6344  ; 2 uses
  %.not.i.i.i1.i111 = icmp eq ptr %i.xr, null
  br i1 %.not.i.i.i1.i111, label %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i110
  call void @_ZdlPv(ptr noundef nonnull %i.xr) #62
  br label %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit

_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i110, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #60
  br i1 %.0.i89171, label %bb.bj, label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread

_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit.a: ; preds = %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i76, %bb.v
  %.244.ph = phi i64 [ 0, %bb.v ], [ %i.iq, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i76 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #60
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit.a, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit, %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit
  %.244 = phi i64 [ 0, %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit ], [ %.143, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit ], [ %.244.ph, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit.a ]
  %.041 = phi i64 [ %.0.lcssa.i, %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit ], [ %i.us, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit ], [ %i.gq, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit.a ]
  %i.xs = sdiv i64 %.244, 2
  %i.xt = sitofp i64 %.041 to double              ; 3 uses
  %i.xu = insertelement <2 x double> poison, double %i.xt, i64 0
end_hunk_17
begin_hunk_18
  %i.yj = select i1 %i.yi, double %i.yh, double 0.000000e+00
  br label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread

_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread: ; preds = %bb.a, %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit, %bb.bj, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit, %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit, %bb.c
  %.3 = phi double [ %i.z, %bb.c ], [ 0.000000e+00, %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit ], [ %i.yj, %bb.bj ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit ], [ 0.000000e+00, %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit ]
  ret double %.3
}

end_hunk_18
begin_hunk_19
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %.loopexit.i, %bb.i, %bb.h, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit, %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSA_15_Hash_node_baseEPNSA_10_Hash_nodeIS8_Lb1EEE.exit
  %.1 = phi i64 [ 1, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSA_15_Hash_node_baseEPNSA_10_Hash_nodeIS8_Lb1EEE.exit ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i ], [ 0, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ 0, %bb.b ], [ 0, %bb.i ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i ], [ 0, %bb.h ], [ 0, %.loopexit.i ], [ 0, %bb.l ]
  ret i64 %.1
}

end_hunk_19
