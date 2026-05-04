inline.NumInlined: 2442
inline.NumDeleted: 1339
begin_hunk_0_@_ZNK4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE2atIS5_S6_EEDTclsrT0_5valueclL_ZSt9addressofIKSE_EPT_RSL_EclL_ZSt7declvalIRSK_EDTcl9__declvalISL_ELi0EEEvEEEEERSD_:bb.a

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
end_hunk_0
begin_hunk_1_@_ZNK4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE2atIS5_S6_EEDTclsrT0_5valueclL_ZSt9addressofIKSE_EPT_RSL_EclL_ZSt7declvalIRSK_EDTcl9__declvalISL_ELi0EEEvEEEEERSD_:bb.a

.thread33.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE10find_largeIS5_EENSG_8iteratorERSD_m.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
end_hunk_1
