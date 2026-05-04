inline.NumInlined: 24169
inline.NumDeleted: 6162
begin_hunk_0_@_ZN2v88internal20MarkCompactCollector22ProcessMarkingWorklistILNS1_29MarkingWorklistProcessingModeE1EEESt4pairImmENS_4base9TimeDeltaEm:bb.a
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE4findIS7_EENSK_8iteratorERSH_.exit

bb.p:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.r, align 8 ; 3 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.bq = load i64, ptr %i.s, align 8
  %sext.i = shl i64 %i.bq, 48
end_hunk_0
begin_hunk_1_@_ZN2v88internal20MarkCompactCollector22ProcessMarkingWorklistILNS1_29MarkingWorklistProcessingModeE1EEESt4pairImmENS_4base9TimeDeltaEm:bb.a
  br i1 %i.ch, label %.thread33.i.i, label %bb.r, !prof !10

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.cf ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i

bb.r:                                             ; preds = %.lr.ph.i.i
end_hunk_1
begin_hunk_2_@_ZN2v88internal20MarkCompactCollector48ReportAbortedEvacuationCandidateDueToRunningCodeEPNS0_12PageMetadataE:bb.a
  %i.bc = add i64 %i.bb, %.sroa.7.0.i
  br label %bb.g

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE22find_or_prepare_insertIS6_EESt4pairINSD_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread: ; preds = %bb.c, %bb.e, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE22find_or_prepare_insertIS6_EESt4pairINSD_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread5
  %i.bd = phi ptr [ %1, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE22find_or_prepare_insertIS6_EESt4pairINSD_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread5 ], [ %1, %bb.c ], [ %.pre, %bb.e ]
  %.sroa.4.02 = phi ptr [ %i.ba, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE22find_or_prepare_insertIS6_EESt4pairINSD_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread5 ], [ %i.g, %bb.c ], [ %i.n, %bb.e ]
  store ptr %i.bd, ptr %.sroa.4.02, align 8
end_hunk_2
begin_hunk_3_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE22find_or_prepare_insertIS7_EESG_INSK_8iteratorEbERKT_:bb.a
  %i.an = add i64 %.sroa.7.0.i, %i.am
  %i.ao = and i64 %i.an, %i.a
  %i.ap = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.q, i64 %i.ao, i64 %.sroa.15.0.i) #31, !noalias !752 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i26.i = load ptr, ptr %i.m, align 8, !noalias !752
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i26.i, i64 %i.ap
  %.sroa.0.0.copyload.i.i.i2.i27.i = load ptr, ptr %i.t, align 8, !noalias !752
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i27.i, i64 %i.ap
end_hunk_3
begin_hunk_4_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE22find_or_prepare_insertIS7_EESG_INSK_8iteratorEbERKT_:bb.a
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE28find_or_prepare_insert_largeIS7_EESG_INSK_8iteratorEbERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE28find_or_prepare_insert_largeIS7_EESG_INSK_8iteratorEbERKT_.exit: ; preds = %.thread.i, %.critedge21.i
  %.sink84.i = phi ptr [ %i.aq, %.thread.i ], [ %i.au, %.critedge21.i ] ; 2 uses
  %.sink82.i = phi ptr [ %i.ar, %.thread.i ], [ %i.af, %.critedge21.i ]
  %.sink.i = phi i8 [ 1, %.thread.i ], [ 0, %.critedge21.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink84.i) ]
  store ptr %.sink84.i, ptr %0, align 8, !alias.scope !752
  %.sroa.4.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink82.i, ptr %.sroa.4.0..sroa_idx.i6, align 8, !alias.scope !752
end_hunk_4
