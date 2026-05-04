inline.NumInlined: 800
inline.NumDeleted: 468
begin_hunk_0_@_ZN4heap4base18CachedUnorderedMapIPN5cppgc8internal8BasePageElN2v84base4hashIS5_EEEixERKS5_:bb.a
  store ptr %1, ptr %i.x, align 8, !noalias !48
  %i.y = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyIN2v84base4hashIPN5cppgc8internal8BasePageEEESA_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #20, !noalias !48 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !noalias !48, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !noalias !48
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i, i64 %i.y
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE28find_or_prepare_insert_smallIS6_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE28find_or_prepare_insert_smallIS6_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i
end_hunk_0
begin_hunk_1_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE4findIS6_EENSJ_8iteratorERSG_:bb.a

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.i, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
end_hunk_1
begin_hunk_2_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE4findIS6_EENSJ_8iteratorERSG_:bb.a
  br i1 %i.ar, label %.thread33.i, label %bb.f, !prof !11

.thread33.i:                                      ; preds = %.lr.ph.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ao
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE10find_largeIS6_EENSJ_8iteratorERSG_m.exit

bb.f:                                             ; preds = %.lr.ph.i
end_hunk_2
begin_hunk_3_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE28find_or_prepare_insert_largeIS6_EESF_INSJ_8iteratorEbERKT_:bb.a
  %i.ar = add i64 %.sroa.7.0, %i.aq
  %i.as = and i64 %i.ar, %i.b
  %i.at = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.t, i64 %i.as, i64 %.sroa.15.0) #20 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25, i64 %i.at
  %.sroa.0.0.copyload.i.i.i2.i26 = load ptr, ptr %i.w, align 8
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26, i64 %i.at
end_hunk_3
begin_hunk_4_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE28find_or_prepare_insert_largeIS6_EESF_INSJ_8iteratorEbERKT_:bb.a
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge21
  %.sink83 = phi ptr [ %i.au, %.thread ], [ %i.ay, %.critedge21 ]
  %.sink81 = phi ptr [ %i.av, %.thread ], [ %i.ai, %.critedge21 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge21 ]
  store ptr %.sink83, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink81, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_4
