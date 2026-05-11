inline.NumInlined: 358
inline.NumDeleted: 210
begin_hunk_0_@_ZN6hermes2vm16TimeLimitMonitor11getOrCreateEv:bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14, !noalias !11 ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !17, !alias.scope !11
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN6hermes2vm16TimeLimitMonitorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load atomic i32, ptr %i.l monotonic, align 8, !noalias !11
  br label %bb.g

end_hunk_0
begin_hunk_1_@_ZN6hermes2vm16TimeLimitMonitor11getOrCreateEv:bb.a

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.g
  store ptr null, ptr %i.i, align 8, !tbaa !17, !alias.scope !11
  br label %_ZNSt12__shared_ptrIN6hermes2vm16TimeLimitMonitorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKSt12__weak_countILS1_2EESt9nothrow_t.exit.i.i.i: ; preds = %bb.h
  %.pr.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !17, !alias.scope !11 ; 9 uses
  %.not.i3.i.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i3.i.i.i, label %_ZNSt12__shared_ptrIN6hermes2vm16TimeLimitMonitorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i: ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKSt12__weak_countILS1_2EESt9nothrow_t.exit.i.i.i
  %2 = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 8
  %3 = load atomic i32, ptr %2 monotonic, align 8, !noalias !11
  %.fr.i.i.i = freeze i32 %3
  %.not.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.i, label %_ZNKSt8weak_ptrIN6hermes2vm16TimeLimitMonitorEE4lockEv.exit

_ZNKSt8weak_ptrIN6hermes2vm16TimeLimitMonitorEE4lockEv.exit: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i
  %i.r = load ptr, ptr %i.h, align 8, !noalias !11 ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !21, !alias.scope !11
  %.not7 = icmp eq ptr %i.r, null
  br i1 %.not7, label %.thread, label %.critedge

bb.i:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i
  store ptr null, ptr %0, align 8, !tbaa !21, !alias.scope !11
  br label %.thread

.thread:                                          ; preds = %_ZNKSt8weak_ptrIN6hermes2vm16TimeLimitMonitorEE4lockEv.exit, %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm16TimeLimitMonitor11getOrCreateEv:bb.a

bb.j:                                             ; preds = %.thread
  store i32 0, ptr %i.s, align 8, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !26
  %i.x = load ptr, ptr %.pr.i.i.i, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %.pr.i.i.i) #15, !inline_history !29
  %i.aa = load ptr, ptr %.pr.i.i.i, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %.pr.i.i.i) #15, !inline_history !29
  br label %_ZNSt12__shared_ptrIN6hermes2vm16TimeLimitMonitorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %.thread
end_hunk_2
begin_hunk_3_@_ZN6hermes2vm16TimeLimitMonitor11getOrCreateEv:bb.a
  br i1 %i.ag, label %bb.n, label %_ZNSt12__shared_ptrIN6hermes2vm16TimeLimitMonitorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !31

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.i.i.i) #15
  br label %_ZNSt12__shared_ptrIN6hermes2vm16TimeLimitMonitorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6hermes2vm16TimeLimitMonitorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKSt12__weak_countILS1_2EESt9nothrow_t.exit.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15, !noalias !32
  store ptr null, ptr %0, align 8, !tbaa !21, !alias.scope !32
end_hunk_3
