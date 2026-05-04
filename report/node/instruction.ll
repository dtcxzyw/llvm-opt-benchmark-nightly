inline.NumInlined: 2270
inline.NumDeleted: 946
begin_hunk_0_@_ZNK2v88internal8compiler19InstructionSequence17GetSourcePositionEPKNS1_11InstructionEPNS0_14SourcePositionE:bb.a

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8
end_hunk_0
begin_hunk_1_@_ZNK2v88internal8compiler19InstructionSequence17GetSourcePositionEPKNS1_11InstructionEPNS0_14SourcePositionE:bb.a
  br i1 %i.ak, label %.thread33.i.i.i, label %bb.f, !prof !7

.thread33.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE10find_largeIS8_EENSK_8iteratorERKT_m.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler19InstructionSequence17SetSourcePositionEPKNS1_11InstructionENS0_14SourcePositionE:bb.a
  %i.bc = add i64 %i.bb, %.sroa.7.0.i
  br label %bb.g

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE22find_or_prepare_insertIS8_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread: ; preds = %bb.e, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE22find_or_prepare_insertIS8_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread6
  %i.bd = phi ptr [ %1, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE22find_or_prepare_insertIS8_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread6 ], [ %1, %bb.c ], [ %.pre, %bb.e ]
  %.sroa.4.03 = phi ptr [ %i.ba, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE22find_or_prepare_insertIS8_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread6 ], [ %i.g, %bb.c ], [ %i.n, %bb.e ] ; 2 uses
  store ptr %i.bd, ptr %.sroa.4.03, align 8
end_hunk_2
