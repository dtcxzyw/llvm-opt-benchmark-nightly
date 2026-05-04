inline.NumInlined: 35377
inline.NumDeleted: 10640
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb:bb.a

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 480
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.o = load i64, ptr %i.n, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb:bb.a
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4
  %i.an = icmp eq i32 %i.am, %i.g
  br i1 %i.an, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread32, label %bb.f, !prof !6

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread32: ; preds = %.lr.ph.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i) ]
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread32.a

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ao = add i16 %.sroa.017.047.i.i.i.i, -1
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb:bb.a
  %i.aw = icmp eq i32 %i.av, %i.g
  br i1 %i.aw, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread32.a, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread32.a: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread32, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i32 %i.g, ptr %3, align 4
  %i.ax = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEEixIS7_SI_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISQ_EPT_RSW_EclL_ZSt7declvalIRSQ_EDTcl9__declvalISW_ELi0EEEvEEEEEOS7_(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_30LoadStoreSimplificationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb:bb.a

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 488
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.o = load i64, ptr %i.n, align 8
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_30LoadStoreSimplificationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb:bb.a
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4
  %i.an = icmp eq i32 %i.am, %i.g
  br i1 %i.an, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread32, label %bb.f, !prof !6

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread32: ; preds = %.lr.ph.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i) ]
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread32.a

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ao = add i16 %.sroa.017.047.i.i.i.i, -1
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_30LoadStoreSimplificationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb:bb.a
  %i.aw = icmp eq i32 %i.av, %i.g
  br i1 %i.aw, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread32.a, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread32.a: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread32, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i32 %i.g, ptr %3, align 4
  %i.ax = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEEixIS7_SI_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISQ_EPT_RSW_EclL_ZSt7declvalIRSQ_EDTcl9__declvalISW_ELi0EEEvEEEEEOS7_(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 3 uses
end_hunk_5
