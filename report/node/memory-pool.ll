inline.NumInlined: 2403
inline.NumDeleted: 1226
begin_hunk_0_@_ZN2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE17MoveLocalToSharedEPNS0_7IsolateEm:bb.a

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.j, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE17MoveLocalToSharedEPNS0_7IsolateEm:bb.a
  br i1 %i.al, label %.thread33.i.i, label %bb.f, !prof !21

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ai ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
end_hunk_1
begin_hunk_2_@_ZN2v88internal10MemoryPool8PoolImplINS0_13VirtualMemoryEE17MoveLocalToSharedEPNS0_7IsolateEm:bb.a

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
end_hunk_2
begin_hunk_3_@_ZN2v88internal10MemoryPool8PoolImplINS0_13VirtualMemoryEE17MoveLocalToSharedEPNS0_7IsolateEm:bb.a
  br i1 %i.ak, label %.thread33.i.i, label %bb.f, !prof !21

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ah ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE10find_largeIS6_EENSK_8iteratorERKT_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
end_hunk_3
begin_hunk_4_@_ZN2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE12ReleaseLocalEPNS0_7IsolateE:bb.a

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.j, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8
end_hunk_4
begin_hunk_5_@_ZN2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE12ReleaseLocalEPNS0_7IsolateE:bb.a
  br i1 %i.al, label %.thread33.i.i, label %bb.f, !prof !21

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ai ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
end_hunk_5
begin_hunk_6_@_ZN2v88internal10MemoryPool8PoolImplINS0_13VirtualMemoryEE12ReleaseLocalEPNS0_7IsolateE:bb.a

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
end_hunk_6
begin_hunk_7_@_ZN2v88internal10MemoryPool8PoolImplINS0_13VirtualMemoryEE12ReleaseLocalEPNS0_7IsolateE:bb.a
  br i1 %i.ak, label %.thread33.i.i, label %bb.f, !prof !21

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ah ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE10find_largeIS6_EENSK_8iteratorERKT_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
end_hunk_7
begin_hunk_8_@_ZNK2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE9LocalSizeEPNS0_7IsolateE:bb.a

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
end_hunk_8
begin_hunk_9_@_ZNK2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE9LocalSizeEPNS0_7IsolateE:bb.a
  br i1 %i.ak, label %.thread33.i.i.i, label %bb.f, !prof !21

.thread33.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ah ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
end_hunk_9
begin_hunk_10_@_ZN2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE3GetEPNS0_7IsolateE:bb.a

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.l, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE3GetEPNS0_7IsolateE:bb.a
  br i1 %i.an, label %.thread33.i.i, label %bb.f, !prof !21

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ak ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
end_hunk_11
begin_hunk_12_@_ZN2v88internal10MemoryPool8PoolImplINS0_13VirtualMemoryEE3GetEPNS0_7IsolateE:bb.a

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN2v88internal10MemoryPool8PoolImplINS0_13VirtualMemoryEE3GetEPNS0_7IsolateE:bb.a
  br i1 %i.ak, label %.thread33.i.i, label %bb.f, !prof !21

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ah ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE10find_largeIS6_EENSK_8iteratorERKT_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
end_hunk_13
