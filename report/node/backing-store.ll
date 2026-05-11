inline.NumInlined: 803
inline.NumDeleted: 465
begin_hunk_0_@_ZN2v88internal26GlobalBackingStoreRegistry5PurgeEPNS0_7IsolateE:bb.a
  br i1 %i.d, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal12_GLOBAL__N_133GetGlobalBackingStoreRegistryImplEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.k
end_hunk_0
begin_hunk_1_@_ZN2v88internal26GlobalBackingStoreRegistry5PurgeEPNS0_7IsolateE:bb.a
  br i1 %.not.i.i.i.i, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.am = load atomic i32, ptr %i.al monotonic, align 8, !noalias !42
  br label %bb.m

end_hunk_1
begin_hunk_2_@_ZN2v88internal26GlobalBackingStoreRegistry5PurgeEPNS0_7IsolateE:bb.a
  %i.ao = cmpxchg weak ptr %i.al, i32 %.06.i.i.i.i.i, i32 %i.an acq_rel monotonic, align 8, !noalias !42 ; 2 uses
  %i.ap = extractvalue { i32, i1 } %i.ao, 1
  %i.aq = extractvalue { i32, i1 } %i.ao, 0
  br i1 %i.ap, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKSt12__weak_countILS1_2EESt9nothrow_t.exit.i.i.i, label %bb.m, !llvm.loop !45

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.m
  store ptr null, ptr %i.e, align 8, !alias.scope !42
  br label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKSt12__weak_countILS1_2EESt9nothrow_t.exit.i.i.i: ; preds = %bb.n
  %.pr.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !42 ; 2 uses
  %.not.i3.i.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i3.i.i.i, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i: ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKSt12__weak_countILS1_2EESt9nothrow_t.exit.i.i.i
  %3 = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 8
  %i.ar = load atomic i32, ptr %3 monotonic, align 8, !noalias !42
  %.fr.i.i.i = freeze i32 %i.ar
  %.not.i.i.i13 = icmp eq i32 %.fr.i.i.i, 0
  %i.as = load ptr, ptr %i.ai, align 8, !noalias !42
  br i1 %.not.i.i.i13, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i, label %_ZNKSt8weak_ptrIN2v88internal12BackingStoreEE4lockEv.exit

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKSt12__weak_countILS1_2EESt9nothrow_t.exit.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, %bb.k
  br label %_ZNKSt8weak_ptrIN2v88internal12BackingStoreEE4lockEv.exit

_ZNKSt8weak_ptrIN2v88internal12BackingStoreEE4lockEv.exit: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i
end_hunk_2
