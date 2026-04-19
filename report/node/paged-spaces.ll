inline.NumInlined: 588
inline.NumDeleted: 339
begin_hunk_0_@_ZN2v88internal14PagedSpaceBase14RefillFreeListEv:bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN2v88internal14PagedSpaceBase25ConcurrentAllocationMutexD2Ev.exit
  %.sroa.0.015 = phi ptr [ undef, %.lr.ph ], [ %.sroa.0.1, %_ZN2v88internal14PagedSpaceBase25ConcurrentAllocationMutexD2Ev.exit ]
  %.sroa.08.014 = phi ptr [ %i.e, %.lr.ph ], [ %i.br, %_ZN2v88internal14PagedSpaceBase25ConcurrentAllocationMutexD2Ev.exit ] ; 2 uses
  %i.u = load ptr, ptr %.sroa.08.014, align 8     ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 88
end_hunk_0
begin_hunk_1_@_ZN2v88internal14PagedSpaceBase14RefillFreeListEv:bb.a
  br label %_ZN2v88internal14PagedSpaceBase25ConcurrentAllocationMutexC2EPKS1_.exit

_ZN2v88internal14PagedSpaceBase25ConcurrentAllocationMutexC2EPKS1_.exit: ; preds = %bb.e, %_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOS9_.exit.i
  %.sroa.0.1 = phi ptr [ %i.l, %_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOS9_.exit.i ], [ %.sroa.0.015, %bb.e ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 248
  %i.ad = load atomic i64, ptr %i.ac seq_cst, align 8
  %i.ae = icmp eq i64 %i.ad, 0
end_hunk_1
begin_hunk_2_@_ZN2v88internal14PagedSpaceBase14RefillFreeListEv:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.bq = atomicrmw add ptr %i.bp, i64 %i.bo monotonic, align 8 ; 0 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1, null
  %or.cond = select i1 %.not13, i1 true, i1 %.not.i.i.i.i.i.i
  br i1 %or.cond, label %_ZN2v88internal14PagedSpaceBase25ConcurrentAllocationMutexD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal14PagedSpaceBase24RelinkFreeListCategoriesEPNS0_12PageMetadataE.exit
end_hunk_2
