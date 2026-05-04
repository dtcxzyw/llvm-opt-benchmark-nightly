inline.NumInlined: 683
inline.NumDeleted: 314
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE26find_or_prepare_insert_sooIPKcEESt4pairINSC_8iteratorEbERKT_:bb.a
  %i.r = add i64 %i.p, 87
  %i.s = add i64 %i.r, %i.q
  %i.t = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.s, i8 noundef signext %i.n) ; 2 uses
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !14, !nonnull !39, !noundef !39
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  %.sroa.0.0.copyload.i.i.i.i5 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i5, i64 %i.t
  br label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaIS7_EE12EqualElementIPKcEEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit

_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaIS7_EE12EqualElementIPKcEEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit: ; preds = %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.e, %bb.b
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE30find_or_prepare_insert_non_sooIPKcEESt4pairINSC_8iteratorEbERKT_:bb.a
  %i.ao = add i64 %.sroa.7.0, %i.an
  %i.ap = and i64 %i.ao, %i.k
  %i.aq = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.g, i64 %i.ap, i64 %.sroa.15.0) ; 2 uses
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !14, !nonnull !39, !noundef !39
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aq
  %.sroa.0.0.copyload.i.i.i.i23 = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i23, i64 %i.aq
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE30find_or_prepare_insert_non_sooIPKcEESt4pairINSC_8iteratorEbERKT_:bb.a
  br label %bb.f

bb.f:                                             ; preds = %.thread, %.critedge20
  %.sink79 = phi ptr [ %i.as, %.thread ], [ %i.aw, %.critedge20 ]
  %.sink77 = phi ptr [ %i.at, %.thread ], [ %i.af, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink79, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink77, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE4findINSt7__cxx1112basic_stringIcS6_SaIcEEEEENSC_8iteratorERKT_:bb.a
.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i10, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.av, %.lr.ph.i.us.us ], [ %i.bi, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i10 ]
  %.us-phi15 = phi ptr [ %i.aw, %.lr.ph.i.us.us ], [ %i.bj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i10 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.us-phi
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE10find_largeINSt7__cxx1112basic_stringIcS6_SaIcEEEEENSC_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i10, %.lr.ph.i
end_hunk_3
