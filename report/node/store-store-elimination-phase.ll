inline.NumInlined: 42521
inline.NumDeleted: 14382
begin_hunk_0_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE4findIS9_EENSO_8iteratorERSL_:bb.a

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.l, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i, i32 0, i32 1, i32 1)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8
end_hunk_0
begin_hunk_1_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE4findIS9_EENSO_8iteratorERSL_:bb.a
  br i1 %i.ay, label %.thread33.i, label %bb.f, !prof !11

.thread33.i:                                      ; preds = %.lr.ph.i
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ar ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE10find_largeIS9_EENSO_8iteratorERSL_m.exit

bb.f:                                             ; preds = %.lr.ph.i
end_hunk_1
begin_hunk_2_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE28find_or_prepare_insert_largeIS9_EES3_INSO_8iteratorEbERKT_:bb.a
  %i.av = add i64 %.sroa.7.0, %i.au
  %i.aw = and i64 %i.av, %i.b
  %i.ax = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.t, i64 %i.aw, i64 %.sroa.15.0) #25 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25 = load ptr, ptr %i.a, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25, i64 %i.ax
  %.sroa.0.0.copyload.i.i.i2.i26 = load ptr, ptr %i.w, align 8
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26, i64 %i.ax
end_hunk_2
begin_hunk_3_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE28find_or_prepare_insert_largeIS9_EES3_INSO_8iteratorEbERKT_:bb.a
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge21
  %.sink83 = phi ptr [ %i.ay, %.thread ], [ %i.bc, %.critedge21 ] ; 2 uses
  %.sink81 = phi ptr [ %i.az, %.thread ], [ %i.ai, %.critedge21 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge21 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink83) ]
  store ptr %.sink83, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink81, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockE:bb.a

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.r = load i64, ptr %i.q, align 8
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler10turboshaft28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockE:bb.a
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = icmp eq i32 %i.ap, %.sroa.0.0.copyload.i
  br i1 %i.aq, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE8containsIjEEbRKj.exit.thread8.a, label %bb.h, !prof !11

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ar = add i16 %.sroa.017.048.i.i.i.i, -1
end_hunk_5
begin_hunk_6_@_ZN2v88internal8compiler10turboshaft28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockE:bb.a
  %i.az = icmp eq i32 %i.ay, %.sroa.0.0.copyload.i
  br i1 %i.az, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE8containsIjEEbRKj.exit.thread8.a, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE8containsIjEEbRKj.exit.thread

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE8containsIjEEbRKj.exit.thread8.a: ; preds = %.lr.ph.i.i.i.i, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE8containsIjEEbRKj.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 2432
  store i8 1, ptr %i.ba, align 8
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE8containsIjEEbRKj.exit.thread
end_hunk_6
begin_hunk_7_@_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb:bb.a

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2944
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2936
  %i.k = load i64, ptr %i.j, align 8
end_hunk_7
begin_hunk_8_@_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb:bb.a
  %i.ah = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %i.ai, %i.c
  br i1 %i.aj, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.a, label %bb.f, !prof !11

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ak = add i16 %.sroa.017.047.i.i.i.i, -1
end_hunk_8
begin_hunk_9_@_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_28LoopStackCheckElisionReducerINS2_28StoreStoreEliminationReducerINS2_26LateLoadEliminationReducerINS2_26MachineOptimizationReducerINS2_24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb:bb.a
  %i.as = icmp eq i32 %i.ar, %i.c
  br i1 %i.as, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.a, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.a: ; preds = %.lr.ph.i.i.i.i, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store i32 %i.c, ptr %3, align 4
  %i.at = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEEixIS7_SI_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISQ_EPT_RSW_EclL_ZSt7declvalIRSQ_EDTcl9__declvalISW_ELi0EEEvEEEEEOS7_(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 3 uses
end_hunk_9
