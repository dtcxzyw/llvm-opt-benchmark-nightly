inline.NumInlined: 3058
inline.NumDeleted: 1555
begin_hunk_0_@_ZNK8facebook5velox6memory13MemoryManager13getAlivePoolsEv:bb.a
  br i1 %i.bb, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox6memory10MemoryPoolEESaIS5_EE7reserveEm.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.t

end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox6memory13MemoryManager13getAlivePoolsEv:bb.a
  br i1 %.not.i.i.i.i12, label %_ZNKSt8weak_ptrIN8facebook5velox6memory10MemoryPoolEE4lockEv.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.cg = load atomic i32, ptr %i.cf monotonic, align 8, !noalias !303
  br label %bb.v

end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox6memory13MemoryManager13getAlivePoolsEv:bb.a
  %i.ci = cmpxchg weak ptr %i.cf, i32 %.06.i.i.i.i.i, i32 %i.ch acq_rel monotonic, align 8, !noalias !303 ; 2 uses
  %i.cj = extractvalue { i32, i1 } %i.ci, 1
  %i.ck = extractvalue { i32, i1 } %i.ci, 0
  br i1 %i.cj, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKSt12__weak_countILS1_2EESt9nothrow_t.exit.i.i.i, label %bb.v, !llvm.loop !306

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.v
  store ptr null, ptr %i.bc, align 8, !tbaa !141, !alias.scope !303
  br label %_ZNKSt8weak_ptrIN8facebook5velox6memory10MemoryPoolEE4lockEv.exit.thread

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKSt12__weak_countILS1_2EESt9nothrow_t.exit.i.i.i: ; preds = %bb.w
  %.pr.i.i.i = load ptr, ptr %i.bc, align 8, !tbaa !141, !alias.scope !303 ; 2 uses
  %.not.i3.i.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i3.i.i.i, label %_ZNKSt8weak_ptrIN8facebook5velox6memory10MemoryPoolEE4lockEv.exit.thread, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i: ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKSt12__weak_countILS1_2EESt9nothrow_t.exit.i.i.i
  %5 = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 8
  %i.cl = load atomic i32, ptr %5 monotonic, align 8, !noalias !303
  %.fr.i.i.i = freeze i32 %i.cl
  %.not.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  %i.cm = load ptr, ptr %i.cc, align 8, !noalias !303 ; 3 uses
  br i1 %.not.i.i.i, label %_ZNKSt8weak_ptrIN8facebook5velox6memory10MemoryPoolEE4lockEv.exit.thread, label %_ZNKSt8weak_ptrIN8facebook5velox6memory10MemoryPoolEE4lockEv.exit

_ZNKSt8weak_ptrIN8facebook5velox6memory10MemoryPoolEE4lockEv.exit.thread: ; preds = %bb.t, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKSt12__weak_countILS1_2EESt9nothrow_t.exit.i.i.i, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i
  store ptr null, ptr %4, align 8, !tbaa !140, !alias.scope !303
  br label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox6memory10MemoryPoolEESaIS5_EE9push_backEOS5_.exit

end_hunk_2
