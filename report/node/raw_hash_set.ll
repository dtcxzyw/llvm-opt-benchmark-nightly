inline.NumInlined: 984
inline.NumDeleted: 283
begin_hunk_0_@_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm1ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb:bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.by, i8 -128, i64 11, i1 false)
  store i64 %i.bx, ptr %i.y, align 1
  switch i32 %i.i, label %bb.m [
    i32 0, label %5
    i32 1, label %bb.n
  ]

5:                                                ; preds = %_ZN4absl18container_internal12_GLOBAL__N_135InitializeThreeElementsControlBytesEhhmPNS0_6ctrl_tE.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6, i32 noundef 1691, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm1ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb) #16
  unreachable

bb.m:                                             ; preds = %_ZN4absl18container_internal12_GLOBAL__N_135InitializeThreeElementsControlBytesEhhmPNS0_6ctrl_tE.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.6, i32 noundef 1692, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm1ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb) #16
end_hunk_0
