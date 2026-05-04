inline.NumInlined: 2801
inline.NumDeleted: 1489
begin_hunk_0_@_ZN2v88internal6maglev31MaglevPhiRepresentationSelector18PreparePhiTaggingsEPNS1_10BasicBlockEPKS3_:bb.a
  %i.df = add i64 %i.de, %.sroa.7.0.i
  br label %bb.n

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE22find_or_prepare_insertIjEESK_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread: ; preds = %bb.j, %bb.l, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE22find_or_prepare_insertIjEESK_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread31
  %i.dg = phi i32 [ %i.m, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE22find_or_prepare_insertIjEESK_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread31 ], [ %i.m, %bb.j ], [ %.pre, %bb.l ]
  %.sroa.418.028 = phi ptr [ %i.dd, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE22find_or_prepare_insertIjEESK_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread31 ], [ %i.bk, %bb.j ], [ %i.br, %bb.l ] ; 2 uses
  store i32 %i.dg, ptr %.sroa.418.028, align 8
end_hunk_0
begin_hunk_1_@_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE2atIjSE_EEDTclsrT0_5valueclL_ZSt9addressofISM_EPT_RSS_EclL_ZSt7declvalIRSM_EDTcl9__declvalISS_ELi0EEEvEEEEERSL_:bb.a

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
end_hunk_1
begin_hunk_2_@_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE2atIjSE_EEDTclsrT0_5valueclL_ZSt9addressofISM_EPT_RSS_EclL_ZSt7declvalIRSM_EDTcl9__declvalISS_ELi0EEEvEEEEERSL_:bb.a
  br i1 %i.ak, label %.thread33.i.i, label %bb.f, !prof !36

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ah ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE10find_largeIjEENSO_8iteratorERSL_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
end_hunk_2
