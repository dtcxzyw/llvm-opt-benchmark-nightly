inline.NumInlined: 558
inline.NumDeleted: 303
begin_hunk_0_@_ZN6google8protobuf4util21SimpleFieldComparator20CompareDoubleOrFloatIdEEbRKNS0_15FieldDescriptorET_S7_:bb.a
  br i1 %i.bb, label %.thread32.i.i, label %bb.i, !prof !82

.thread32.i.i:                                    ; preds = %.lr.ph.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ay
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE10find_largeIS8_EENSL_8iteratorERKT_m.exit.i

bb.i:                                             ; preds = %.lr.ph.i.i
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf4util21SimpleFieldComparator20CompareDoubleOrFloatIfEEbRKNS0_15FieldDescriptorET_S7_:bb.a
  br i1 %i.bb, label %.thread32.i.i, label %bb.i, !prof !82

.thread32.i.i:                                    ; preds = %.lr.ph.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ay
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE10find_largeIS8_EENSL_8iteratorERKT_m.exit.i

bb.i:                                             ; preds = %.lr.ph.i.i
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE30find_or_prepare_insert_non_sooIS8_EESH_INSL_8iteratorEbERKT_:bb.a
  %i.an = add i64 %.sroa.7.0, %i.am
  %i.ao = and i64 %i.an, %i.n
  %i.ap = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.j, i64 %i.ao, i64 %.sroa.15.0) ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !28, !nonnull !76, !noundef !76
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ap
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE30find_or_prepare_insert_non_sooIS8_EESH_INSL_8iteratorEbERKT_:bb.a
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge20
  %.sink77 = phi ptr [ %i.ar, %.thread ], [ %i.av, %.critedge20 ]
  %.sink75 = phi ptr [ %i.as, %.thread ], [ %i.ae, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink77, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_3
