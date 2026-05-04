inline.NumInlined: 1738
inline.NumDeleted: 917
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer3RunEv:bb.a
  %i.ej = add i64 %i.ei, %.sroa.7.0.i
  br label %bb.t

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.thread: ; preds = %bb.r, %bb.p, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.thread111
  %.sroa.3104.0107 = phi ptr [ %i.eh, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.thread111 ], [ %i.ag, %bb.p ], [ %i.cy, %bb.r ] ; 3 uses
  %i.ek = load ptr, ptr %i.a, align 8, !noalias !32
  store ptr %i.ek, ptr %.sroa.3104.0107, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer3RunEv:bb.a
  br label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEEixIS9_SA_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISI_EPT_RSO_EclL_ZSt7declvalIRSI_EDTcl9__declvalISO_ELi0EEEvEEEEEOSO_.exit

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEEixIS9_SA_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISI_EPT_RSO_EclL_ZSt7declvalIRSI_EDTcl9__declvalISO_ELi0EEEvEEEEEOSO_.exit: ; preds = %.lr.ph.i, %bb.q, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.thread
  %.sroa.3104.0108 = phi ptr [ %.sroa.3104.0107, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.thread ], [ %i.ag, %bb.q ], [ %i.dv, %.lr.ph.i ]
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.3104.0108, i64 8
  store ptr %i.cf, ptr %i.em, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer3RunEv:bb.a
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE4findIS9_EENSK_8iteratorERKT_.exit.i

bb.ag:                                            ; preds = %bb.ad
  %.sroa.0.0.copyload.i.i.i.i.i.i47 = load ptr, ptr %i.am, align 8 ; 4 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i47, i32 0, i32 1, i32 1)
  %i.fk = load i64, ptr %i.al, align 8
  %sext.i.i48 = shl i64 %i.fk, 48
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer3RunEv:bb.a
  br i1 %i.gi, label %.thread33.i.i.i67, label %bb.ai, !prof !31

.thread33.i.i.i67:                                ; preds = %.lr.ph.i.i.i54
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i47, i64 %i.gf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i47) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE4findIS9_EENSK_8iteratorERKT_.exit.i

bb.ai:                                            ; preds = %.lr.ph.i.i.i54
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer3RunEv:bb.a
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE4findIS9_EENSK_8iteratorERKT_.exit.i

bb.at:                                            ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE5eraseIS9_EEmRKT_.exit
  %.sroa.0.0.copyload.i.i.i.i.i.i26 = load ptr, ptr %i.ag, align 8 ; 4 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i26, i32 0, i32 1, i32 1)
  %i.hc = load i64, ptr %i.ah, align 8
  %sext.i.i27 = shl i64 %i.hc, 48
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer3RunEv:bb.a
  br i1 %i.ia, label %.thread33.i.i.i43, label %bb.av, !prof !31

.thread33.i.i.i43:                                ; preds = %.lr.ph.i.i.i31
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i26, i64 %i.hx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i26) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE4findIS9_EENSK_8iteratorERKT_.exit.i

bb.av:                                            ; preds = %.lr.ph.i.i.i31
end_hunk_5
begin_hunk_6_@_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer3RunEv:bb.a
  %i.km = add i64 %i.kl, %.sroa.7.0.i.i
  br label %bb.bl

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE22find_or_prepare_insertIS9_EESt4pairINSI_8iteratorEbERKT_.exit.thread: ; preds = %bb.bj, %bb.bh, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE22find_or_prepare_insertIS9_EESt4pairINSI_8iteratorEbERKT_.exit.thread121
  %.sink81.i.sink.i117 = phi ptr [ %i.kk, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE22find_or_prepare_insertIS9_EESt4pairINSI_8iteratorEbERKT_.exit.thread121 ], [ %i.y, %bb.bh ], [ %i.jb, %bb.bj ]
  %i.kn = load i32, ptr %5, align 4, !noalias !65
  store i32 %i.kn, ptr %.sink81.i.sink.i117, align 4
end_hunk_6
begin_hunk_7_@_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer3RunEv:bb.a
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE4findIS9_EENSI_8iteratorERKS9_.exit.i

bb.bq:                                            ; preds = %bb.bn
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.y, align 8 ; 4 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.ks = load i64, ptr %i.z, align 8
  %sext.i.i = shl i64 %i.ks, 48
end_hunk_7
begin_hunk_8_@_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer3RunEv:bb.a
  br i1 %i.lq, label %.thread33.i.i.i, label %bb.bs, !prof !31

.thread33.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ln
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE4findIS9_EENSI_8iteratorERKS9_.exit.i

bb.bs:                                            ; preds = %.lr.ph.i.i.i
end_hunk_8
begin_hunk_9_@_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer3RunEv:bb.a
  call void @_ZN4absl18container_internal18EraseMetaOnlyLargeERNS0_12CommonFieldsEPKNS0_6ctrl_tEm(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull %.pn.i.i, i64 noundef 4) #17
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE6insertIS9_Li0EEESt4pairINSI_8iteratorEbERKT_.exit.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE6insertIS9_Li0EEESt4pairINSI_8iteratorEbERKT_.exit.i.i: ; preds = %._crit_edge.i.i.i, %.lr.ph.i.i, %bb.bo, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE8iteratorESL_.exit.i, %bb.bz, %bb.ca, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE22find_or_prepare_insertIS9_EESt4pairINSI_8iteratorEbERKT_.exit.thread, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer7ProcessERKNS2_9OperationE.exit

end_hunk_9
begin_hunk_10_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE5eraseIS9_EEmRKT_:bb.a

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
end_hunk_10
begin_hunk_11_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE5eraseIS9_EEmRKT_:bb.a
  br i1 %i.al, label %.thread33.i.i, label %bb.f, !prof !31

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE10find_largeIS9_EENSK_8iteratorERKT_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
end_hunk_11
begin_hunk_12_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE5eraseIS9_EEmRKT_:bb.a

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
end_hunk_12
begin_hunk_13_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE5eraseIS9_EEmRKT_:bb.a
  br i1 %i.al, label %.thread33.i.i, label %bb.f, !prof !31

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE10find_largeIS9_EENSK_8iteratorERKT_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
end_hunk_13
begin_hunk_14_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE5eraseIS9_EEmRKS9_:bb.a

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.h, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8
end_hunk_14
begin_hunk_15_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE5eraseIS9_EEmRKS9_:bb.a

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.af
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE10find_largeIS9_EENSI_8iteratorERKS9_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
end_hunk_15
begin_hunk_16_@_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer22IsPartOfLastAllocationEPKNS2_9OperationE:bb.a

bb.i:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.z, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = load i64, ptr %i.aa, align 8
end_hunk_16
begin_hunk_17_@_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer22IsPartOfLastAllocationEPKNS2_9OperationE:bb.a
  br i1 %i.bb, label %.thread33.i.i, label %bb.k, !prof !31

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ay
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE10find_largeIS9_EENSK_8iteratorERKT_m.exit.i

bb.k:                                             ; preds = %.lr.ph.i.i
end_hunk_17
begin_hunk_18_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE28find_or_prepare_insert_largeIS9_EESG_INSK_8iteratorEbERKT_:bb.a
  %i.al = add i64 %.sroa.7.0, %i.ak
  %i.am = and i64 %i.al, %i.b
  %i.an = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.n, i64 %i.am, i64 %.sroa.15.0) #17 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25 = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25, i64 %i.an
  %.sroa.0.0.copyload.i.i.i2.i26 = load ptr, ptr %i.q, align 8
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26, i64 %i.an
end_hunk_18
begin_hunk_19_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE28find_or_prepare_insert_largeIS9_EESG_INSK_8iteratorEbERKT_:bb.a
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge21
  %.sink83 = phi ptr [ %i.ao, %.thread ], [ %i.as, %.critedge21 ]
  %.sink81 = phi ptr [ %i.ap, %.thread ], [ %i.ac, %.critedge21 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge21 ]
  store ptr %.sink83, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink81, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_19
begin_hunk_20_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE28find_or_prepare_insert_largeIS9_EESG_INSK_8iteratorEbERKT_:bb.a
  %i.al = add i64 %.sroa.7.0, %i.ak
  %i.am = and i64 %i.al, %i.b
  %i.an = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.n, i64 %i.am, i64 %.sroa.15.0) #17 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25 = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25, i64 %i.an
  %.sroa.0.0.copyload.i.i.i2.i26 = load ptr, ptr %i.q, align 8
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26, i64 %i.an
end_hunk_20
begin_hunk_21_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE28find_or_prepare_insert_largeIS9_EESG_INSK_8iteratorEbERKT_:bb.a
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge21
  %.sink83 = phi ptr [ %i.ao, %.thread ], [ %i.as, %.critedge21 ]
  %.sink81 = phi ptr [ %i.ap, %.thread ], [ %i.ac, %.critedge21 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge21 ]
  store ptr %.sink83, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink81, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_21
begin_hunk_22_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE22find_or_prepare_insertIS9_EESt4pairINSI_8iteratorEbERKT_:bb.a
  store ptr %2, ptr %i.i, align 8, !noalias !162
  %i.j = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft1VINS9_4NoneEEEEESC_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #17, !noalias !162 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !162
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !162, !nonnull !10, !noundef !10
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i2.i.i.i = load ptr, ptr %i.l, align 8, !noalias !162
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i, i64 %i.j
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE28find_or_prepare_insert_smallIS9_EESt4pairINSI_8iteratorEbERKT_.exit

bb.f:                                             ; preds = %bb.a
end_hunk_22
begin_hunk_23_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE22find_or_prepare_insertIS9_EESt4pairINSI_8iteratorEbERKT_:bb.a
  %i.av = add i64 %.sroa.7.0.i, %i.au
  %i.aw = and i64 %i.av, %i.a
  %i.ax = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.x, i64 %i.aw, i64 %.sroa.15.0.i) #17, !noalias !167 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25.i = load ptr, ptr %i.n, align 8, !noalias !167, !nonnull !10, !noundef !10
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25.i, i64 %i.ax
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.aa, align 8, !noalias !167
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.ax
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE28find_or_prepare_insert_smallIS9_EESt4pairINSI_8iteratorEbERKT_.exit

bb.h:                                             ; preds = %.critedge19.i
  %i.ba = add i64 %.sroa.15.0.i, 16               ; 2 uses
end_hunk_23
begin_hunk_24_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE22find_or_prepare_insertIS9_EESt4pairINSI_8iteratorEbERKT_:bb.a
.critedge21.i:                                    ; preds = %.lr.ph.i
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.al
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.al
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE28find_or_prepare_insert_smallIS9_EESt4pairINSI_8iteratorEbERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE28find_or_prepare_insert_smallIS9_EESt4pairINSI_8iteratorEbERKT_.exit: ; preds = %.critedge21.i, %.thread.i, %bb.e, %bb.d, %bb.c
  %.sink82.i.sink = phi ptr [ @_ZN4absl18container_internal11kSooControlE, %bb.d ], [ %i.k, %bb.e ], [ @_ZN4absl18container_internal11kSooControlE, %bb.c ], [ %i.ay, %.thread.i ], [ %i.bd, %.critedge21.i ]
  %.sink81.i.sink = phi ptr [ %i.f, %bb.d ], [ %i.m, %bb.e ], [ %i.e, %bb.c ], [ %i.az, %.thread.i ], [ %i.bc, %.critedge21.i ]
  %.sink.i.sink = phi i8 [ 0, %bb.d ], [ 1, %bb.e ], [ 1, %bb.c ], [ 1, %.thread.i ], [ 0, %.critedge21.i ]
  store ptr %.sink82.i.sink, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink81.i.sink, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_24
