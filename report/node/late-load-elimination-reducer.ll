inline.NumInlined: 4977
inline.NumDeleted: 2626
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft18MemoryContentTable10InvalidateENS2_7OpIndexENS2_15OptionalOpIndexEi:bb.a

bb.e:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.ac, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ae = load i64, ptr %i.ad, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft18MemoryContentTable10InvalidateENS2_7OpIndexENS2_15OptionalOpIndexEi:bb.a
  br i1 %i.bd, label %.thread33.i.i, label %bb.g, !prof !6

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ba
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i

bb.g:                                             ; preds = %.lr.ph.i.i
end_hunk_1
begin_hunk_2_@_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE9HasKeyForENS2_7OpIndexE:bb.a

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.j, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.l = load i64, ptr %i.k, align 8
end_hunk_2
begin_hunk_3_@_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE9HasKeyForENS2_7OpIndexE:bb.a
  br i1 %i.ak, label %.thread33.i.i.i, label %bb.f, !prof !6

.thread33.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i) ]
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_14const_iteratorERSJ_.exit

bb.f:                                             ; preds = %.lr.ph.i.i.i
end_hunk_3
begin_hunk_4_@_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE12TryGetKeyForENS2_7OpIndexE:bb.a

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.k = load i64, ptr %i.j, align 8
end_hunk_4
begin_hunk_5_@_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE12TryGetKeyForENS2_7OpIndexE:bb.a
  br i1 %i.aj, label %.thread33.i.i.i, label %bb.f, !prof !6

.thread33.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
end_hunk_5
begin_hunk_6_@_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3GetENS2_7OpIndexE:bb.a

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.k = load i64, ptr %i.j, align 8
end_hunk_6
begin_hunk_7_@_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3GetENS2_7OpIndexE:bb.a
  br i1 %i.aj, label %.thread33.i.i.i, label %bb.f, !prof !6

.thread33.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE10find_largeIS7_EENSN_8iteratorERSK_m.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
end_hunk_7
begin_hunk_8_@_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE3GetENS2_7OpIndexE:bb.a

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.k = load i64, ptr %i.j, align 8
end_hunk_8
begin_hunk_9_@_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE3GetENS2_7OpIndexE:bb.a
  br i1 %i.aj, label %.thread33.i.i.i, label %bb.f, !prof !6

.thread33.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
end_hunk_9
begin_hunk_10_@_ZN2v88internal8compiler10turboshaft18MemoryContentTable18InvalidateAtOffsetEiNS2_15OptionalOpIndexE:bb.a

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 464
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.n, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.p = load i64, ptr %i.o, align 8
end_hunk_10
begin_hunk_11_@_ZN2v88internal8compiler10turboshaft18MemoryContentTable18InvalidateAtOffsetEiNS2_15OptionalOpIndexE:bb.a
  br i1 %i.ao, label %.thread33.i.i, label %bb.h, !prof !6

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE10find_largeIiEENSQ_8iteratorERSN_m.exit.i

bb.h:                                             ; preds = %.lr.ph.i.i
end_hunk_11
begin_hunk_12_@_ZN2v88internal8compiler10turboshaft18MemoryContentTable22AddKeyInBaseOffsetMapsENS2_16SnapshotTableKeyINS2_7OpIndexENS2_7KeyDataEEE:bb.a

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.j, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.l = load i64, ptr %i.k, align 8
end_hunk_12
begin_hunk_13_@_ZN2v88internal8compiler10turboshaft18MemoryContentTable22AddKeyInBaseOffsetMapsENS2_16SnapshotTableKeyINS2_7OpIndexENS2_7KeyDataEEE:bb.a
  br i1 %i.ak, label %.thread33.i.i, label %bb.f, !prof !6

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
end_hunk_13
begin_hunk_14_@_ZN2v88internal8compiler10turboshaft18MemoryContentTable22AddKeyInBaseOffsetMapsENS2_16SnapshotTableKeyINS2_7OpIndexENS2_7KeyDataEEE:bb.a

bb.ai:                                            ; preds = %bb.af
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 464
  %.sroa.0.0.copyload.i.i.i.i.i20 = load ptr, ptr %i.fe, align 8 ; 4 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i20, i32 0, i32 1, i32 1)
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.fg = load i64, ptr %i.ff, align 8
end_hunk_14
begin_hunk_15_@_ZN2v88internal8compiler10turboshaft18MemoryContentTable22AddKeyInBaseOffsetMapsENS2_16SnapshotTableKeyINS2_7OpIndexENS2_7KeyDataEEE:bb.a
  br i1 %i.gf, label %.thread33.i.i36, label %bb.ak, !prof !6

.thread33.i.i36:                                  ; preds = %.lr.ph.i.i26
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i20, i64 %i.gc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i20) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE10find_largeIiEENSQ_8iteratorERSN_m.exit.i

bb.ak:                                            ; preds = %.lr.ph.i.i26
end_hunk_15
begin_hunk_16_@_ZN2v88internal8compiler10turboshaft18MemoryContentTable22AddKeyInBaseOffsetMapsENS2_16SnapshotTableKeyINS2_7OpIndexENS2_7KeyDataEEE:bb.a
  %i.jd = add i64 %i.jc, %.sroa.7.0.i69
  br label %bb.ax

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE22find_or_prepare_insertIiEESM_INSQ_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread: ; preds = %bb.av, %bb.at, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE22find_or_prepare_insertIiEESM_INSQ_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread117
  %.sroa.4.0114 = phi ptr [ %i.jb, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE22find_or_prepare_insertIiEESM_INSQ_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread117 ], [ %i.hi, %bb.at ], [ %i.hp, %bb.av ] ; 2 uses
  %i.je = load i32, ptr %6, align 8, !noalias !83
  store i32 %i.je, ptr %.sroa.4.0114, align 8
end_hunk_16
begin_hunk_17_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE4findIS7_EENSN_8iteratorERSK_:bb.a

bb.g:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.z, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i, i32 0, i32 1, i32 1)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i64, ptr %i.aa, align 8
end_hunk_17
begin_hunk_18_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE4findIS7_EENSN_8iteratorERSK_:bb.a
  br i1 %i.ct, label %.thread35.i, label %_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEEvE5applyINS0_12EqualElementIS7_St8equal_toIS7_EEEJRSt4pairIKS7_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit.thread.i, !prof !90

.thread35.i:                                      ; preds = %_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEEvE5applyINS0_12EqualElementIS7_St8equal_toIS7_EEEJRSt4pairIKS7_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit.i11
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.cf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE10find_largeIS7_EENSN_8iteratorERSK_m.exit

_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEEvE5applyINS0_12EqualElementIS7_St8equal_toIS7_EEEJRSt4pairIKS7_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit.thread.i: ; preds = %_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEEvE5applyINS0_12EqualElementIS7_St8equal_toIS7_EEEJRSt4pairIKS7_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit.i11, %bb.k, %bb.j, %bb.i, %.lr.ph.i
end_hunk_18
begin_hunk_19_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE28find_or_prepare_insert_largeIS7_EESJ_INSN_8iteratorEbERKT_:bb.a
  %i.cc = add i64 %.sroa.7.0, %i.cb
  %i.cd = and i64 %i.cc, %i.b
  %i.ce = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.at, i64 %i.cd, i64 %.sroa.15.0) #22 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25 = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25, i64 %i.ce
  %.sroa.0.0.copyload.i.i.i2.i26 = load ptr, ptr %i.aw, align 8
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26, i64 %i.ce
end_hunk_19
begin_hunk_20_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE28find_or_prepare_insert_largeIS7_EESJ_INSN_8iteratorEbERKT_:bb.a
  br label %bb.g

bb.g:                                             ; preds = %.thread, %.critedge21
  %.sink83 = phi ptr [ %i.cf, %.thread ], [ %i.cj, %.critedge21 ]
  %.sink81 = phi ptr [ %i.cg, %.thread ], [ %i.bi, %.critedge21 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge21 ]
  store ptr %.sink83, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink81, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_20
begin_hunk_21_@_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE14GetOrCreateKeyENS2_7OpIndexE:bb.a

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.k = load i64, ptr %i.j, align 8
end_hunk_21
begin_hunk_22_@_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE14GetOrCreateKeyENS2_7OpIndexE:bb.a
  br i1 %i.aj, label %.thread33.i.i, label %bb.f, !prof !6

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
end_hunk_22
begin_hunk_23_@_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE14GetOrCreateKeyENS2_7OpIndexE:bb.a
  %i.dy = add i64 %i.dx, %.sroa.7.0.i
  br label %bb.w

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread: ; preds = %bb.u, %bb.s, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread19
  %i.dz = phi i32 [ %1, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread19 ], [ %1, %bb.s ], [ %.pre, %bb.u ]
  %.sroa.4.016 = phi ptr [ %i.dw, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread19 ], [ %i.cd, %bb.s ], [ %i.ck, %bb.u ] ; 2 uses
  store i32 %i.dz, ptr %.sroa.4.016, align 8
end_hunk_23
begin_hunk_24_@_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE14GetOrCreateKeyENS2_7OpIndexE:bb.a

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.k = load i64, ptr %i.j, align 8
end_hunk_24
begin_hunk_25_@_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE14GetOrCreateKeyENS2_7OpIndexE:bb.a
  br i1 %i.aj, label %.thread33.i.i, label %bb.f, !prof !6

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE10find_largeIS7_EENSN_8iteratorERSK_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
end_hunk_25
begin_hunk_26_@_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE14GetOrCreateKeyENS2_7OpIndexE:bb.a
  %i.dw = add i64 %i.dv, %.sroa.7.0.i
  br label %bb.w

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE22find_or_prepare_insertIS7_EESJ_INSN_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread: ; preds = %bb.u, %bb.s, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE22find_or_prepare_insertIS7_EESJ_INSN_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread19
  %i.dx = phi i32 [ %1, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE22find_or_prepare_insertIS7_EESJ_INSN_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread19 ], [ %1, %bb.s ], [ %.pre, %bb.u ]
  %.sroa.4.016 = phi ptr [ %i.du, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE22find_or_prepare_insertIS7_EESJ_INSN_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread19 ], [ %i.cb, %bb.s ], [ %i.ci, %bb.u ] ; 2 uses
  store i32 %i.dx, ptr %.sroa.4.016, align 8
end_hunk_26
