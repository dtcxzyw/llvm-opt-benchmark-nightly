inline.NumInlined: 16
inline.NumDeleted: 15
begin_hunk_0_@_ZN6apache6thrift11concurrency8Runnable6threadEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18, !noalias !15 ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !20, !alias.scope !15
end_hunk_0
begin_hunk_1_@_ZN6apache6thrift11concurrency8Runnable6threadEv:bb.a
  br i1 %.not.i.i.i.i, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load atomic i32, ptr %i.e monotonic, align 8, !noalias !15
  br label %bb.c

end_hunk_1
begin_hunk_2_@_ZN6apache6thrift11concurrency8Runnable6threadEv:bb.a
  %i.h = cmpxchg weak ptr %i.e, i32 %.06.i.i.i.i.i, i32 %i.g acq_rel monotonic, align 8, !noalias !15 ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  %i.j = extractvalue { i32, i1 } %i.h, 0
  br i1 %i.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKSt12__weak_countILS1_2EESt9nothrow_t.exit.i.i.i, label %bb.c, !llvm.loop !21

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.b, align 8, !tbaa !20, !alias.scope !15
  br label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKSt12__weak_countILS1_2EESt9nothrow_t.exit.i.i.i: ; preds = %bb.d
  %.pr.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !20, !alias.scope !15 ; 2 uses
  %.not.i3.i.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i3.i.i.i, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i: ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKSt12__weak_countILS1_2EESt9nothrow_t.exit.i.i.i
  %2 = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 8
  %i.k = load atomic i32, ptr %2 monotonic, align 8, !noalias !15
  %.fr.i.i.i = freeze i32 %i.k
  %.not.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  %i.l = load ptr, ptr %i.a, align 8, !noalias !15
  br i1 %.not.i.i.i, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i, label %_ZNKSt8weak_ptrIN6apache6thrift11concurrency6ThreadEE4lockEv.exit

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKSt12__weak_countILS1_2EESt9nothrow_t.exit.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, %bb.a
  br label %_ZNKSt8weak_ptrIN6apache6thrift11concurrency6ThreadEE4lockEv.exit

_ZNKSt8weak_ptrIN6apache6thrift11concurrency6ThreadEE4lockEv.exit: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i
end_hunk_2
