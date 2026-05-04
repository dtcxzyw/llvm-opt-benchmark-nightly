inline.NumInlined: 1835
inline.NumDeleted: 1081
begin_hunk_0_@_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3GetENS2_7OpIndexE:bb.a

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.k = load i64, ptr %i.j, align 8
end_hunk_0
begin_hunk_1_@_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3GetENS2_7OpIndexE:bb.a
  br i1 %i.aj, label %.thread33.i.i.i, label %bb.f, !prof !13

.thread33.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE19GetPredecessorValueENS2_7OpIndexEi:bb.a

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.k = load i64, ptr %i.j, align 8
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE19GetPredecessorValueENS2_7OpIndexEi:bb.a
  br i1 %i.aj, label %.thread33.i.i, label %bb.f, !prof !13

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE14GetOrCreateKeyENS2_7OpIndexE:bb.a

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.k = load i64, ptr %i.j, align 8
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE14GetOrCreateKeyENS2_7OpIndexE:bb.a
  br i1 %i.aj, label %.thread33.i.i, label %bb.f, !prof !13

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
end_hunk_5
begin_hunk_6_@_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE14GetOrCreateKeyENS2_7OpIndexE:bb.a
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE22find_or_prepare_insertIS7_EESK_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread

bb.v:                                             ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE6NewKeyES5_.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.0.0.copyload.i.i.i.i.i2 = load ptr, ptr %i.cl, align 8, !noalias !109 ; 2 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i2, i32 0, i32 1, i32 1), !noalias !109
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 352
end_hunk_6
begin_hunk_7_@_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE14GetOrCreateKeyENS2_7OpIndexE:bb.a
  %i.ds = zext nneg i16 %i.dr to i64
  %i.dt = add i64 %.sroa.7.0.i, %i.ds
  %i.du = and i64 %i.dt, %i.bz
  %i.dv = call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.cv, i64 %i.du, i64 %.sroa.15.0.i) #19, !noalias !109
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.cy, align 8, !noalias !109
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.dv
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE22find_or_prepare_insertIS7_EESK_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread

bb.x:                                             ; preds = %.critedge19.i
end_hunk_7
begin_hunk_8_@_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE14GetOrCreateKeyENS2_7OpIndexE:bb.a
  %i.dy = add i64 %i.dx, %.sroa.7.0.i
  br label %bb.w

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE22find_or_prepare_insertIS7_EESK_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread: ; preds = %bb.u, %bb.s, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE22find_or_prepare_insertIS7_EESK_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread20
  %i.dz = phi i32 [ %1, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE22find_or_prepare_insertIS7_EESK_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread20 ], [ %1, %bb.s ], [ %.pre, %bb.u ]
  %.sroa.4.017 = phi ptr [ %i.dw, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE22find_or_prepare_insertIS7_EESK_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread20 ], [ %i.cd, %bb.s ], [ %i.ck, %bb.u ] ; 2 uses
  store i32 %i.dz, ptr %.sroa.4.017, align 8
end_hunk_8
