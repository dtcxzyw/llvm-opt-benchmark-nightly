inline.NumInlined: 1628
inline.NumDeleted: 793
begin_hunk_0_@_ZN6google8protobuf8compiler4rust10EnumValuesESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanIKSt4pairIS6_iEEE:bb.a
.lr.ph:                                           ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE7reserveEm.exit, %bb.d
  %.idx126 = mul nuw nsw i64 %4, 24
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %.idx126
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 10 uses
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler4rust10EnumValuesESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanIKSt4pairIS6_iEEE:bb.a
  %i.bu = add i64 %.sroa.7.0.i, %i.bt
  %i.bv = and i64 %i.bu, %i.x
  %i.bw = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPN6google8protobuf8compiler4rust13RustEnumValueEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS9_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.at, i64 %i.bv, i64 %.sroa.15.0.i)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPN6google8protobuf8compiler4rust13RustEnumValueEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS9_EEE22find_or_prepare_insertIiEESG_INSK_8iteratorEbERKT_.exit.i.i.thread66 unwind label %bb.z ; 2 uses

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPN6google8protobuf8compiler4rust13RustEnumValueEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS9_EEE22find_or_prepare_insertIiEESG_INSK_8iteratorEbERKT_.exit.i.i.thread66: ; preds = %.thread.i
  %12 = load ptr, ptr %i.d, align 8, !tbaa !31, !noalias !32
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 %i.bw
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.e, align 8, !tbaa !31, !noalias !32
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.bw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %13) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPN6google8protobuf8compiler4rust13RustEnumValueEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS9_EEE22find_or_prepare_insertIiEESG_INSK_8iteratorEbERKT_.exit.i.i.thread

bb.r:                                             ; preds = %.critedge18.i
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8compiler4rust10EnumValuesESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanIKSt4pairIS6_iEEE:bb.a
  %i.bz = add i64 %i.by, %.sroa.7.0.i
  br label %bb.q

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPN6google8protobuf8compiler4rust13RustEnumValueEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS9_EEE22find_or_prepare_insertIiEESG_INSK_8iteratorEbERKT_.exit.i.i.thread: ; preds = %bb.m, %.noexc32, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPN6google8protobuf8compiler4rust13RustEnumValueEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS9_EEE22find_or_prepare_insertIiEESG_INSK_8iteratorEbERKT_.exit.i.i.thread66
  %.sroa.5.061 = phi ptr [ %i.bx, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPN6google8protobuf8compiler4rust13RustEnumValueEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS9_EEE22find_or_prepare_insertIiEESG_INSK_8iteratorEbERKT_.exit.i.i.thread66 ], [ %i.d, %bb.m ], [ %i.ao, %.noexc32 ] ; 2 uses
  store i32 %i.s, ptr %.sroa.5.061, align 8, !tbaa !39
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.5.061, i64 8 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findIS9_EENSE_8iteratorERKT_:bb.a
.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i7, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.az, %.lr.ph.i.us.us ], [ %i.bo, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i7 ]
  %.us-phi12 = phi ptr [ %i.ba, %.lr.ph.i.us.us ], [ %i.bp, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i7 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.us-phi ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bv) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10find_largeIS9_EENSE_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i7, %.lr.ph.i
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE30find_or_prepare_insert_non_sooIS9_EESt4pairINSE_8iteratorEbERKT_:bb.a
  %i.as = add i64 %.sroa.7.0, %i.ar
  %i.at = and i64 %i.as, %i.l
  %i.au = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.h, i64 %i.at, i64 %.sroa.15.0) ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.r, align 8, !tbaa !31
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.au
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE30find_or_prepare_insert_non_sooIS9_EESt4pairINSE_8iteratorEbERKT_:bb.a
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.aw, %.thread ], [ %i.ba, %.critedge20 ] ; 2 uses
  %.sink76 = phi ptr [ %i.ax, %.thread ], [ %i.ag, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink78) ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_5
