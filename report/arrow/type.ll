inline.NumInlined: 11291
inline.NumDeleted: 4278
begin_hunk_0_@_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE:bb.a
  %.05271 = phi i64 [ %.1, %bb.p ], [ 0, %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_allocate_bucketsEm.exit ] ; 3 uses
  %.05370 = phi i64 [ %i.l, %bb.p ], [ 0, %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.05469 = phi ptr [ %.072, %bb.p ], [ null, %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_allocate_bucketsEm.exit ] ; 5 uses
  %.05568 = phi i8 [ %.2, %bb.p ], [ 0, %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_allocate_bucketsEm.exit ]
  %i.i = load ptr, ptr %.072, align 8, !tbaa !1174 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.072, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1184
  %i.l = urem i64 %i.k, %1                        ; 6 uses
  %.not62 = icmp ne ptr %.05469, null
  %i.m = icmp eq i64 %.05370, %i.l
  %or.cond = and i1 %.not62, %i.m
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE:bb.a
  br label %bb.p

bb.h:                                             ; preds = %.lr.ph
  %2 = trunc nuw i8 %.05568 to i1
  br i1 %2, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %.05469, align 8, !tbaa !1174 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE:bb.a
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o, %bb.g
  %.2 = phi i8 [ 1, %bb.g ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %.1 = phi i64 [ %.05271, %bb.g ], [ %.05271, %bb.o ], [ %i.l, %bb.n ], [ %i.l, %bb.m ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2837

._crit_edge:                                      ; preds = %bb.p
  %3 = trunc nuw i8 %.2 to i1
  br i1 %3, label %bb.q, label %._crit_edge.thread

bb.q:                                             ; preds = %._crit_edge
  %i.aa = load ptr, ptr %.072, align 8, !tbaa !1174 ; 2 uses
end_hunk_2
