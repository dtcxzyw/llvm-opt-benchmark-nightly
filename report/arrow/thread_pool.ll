inline.NumInlined: 1333
inline.NumDeleted: 686
begin_hunk_0_@"_ZNSt17_Function_handlerIFSt3anyvEZN5arrow8internal10ThreadPoolC1EvE3$_0E9_M_invokeERKSt9_Any_data":bb.a
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt8weak_ptrIN5arrow8internal10ThreadPool5StateEE4lockEv.exit.thread.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 8, !noalias !330
  br label %bb.c

end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFSt3anyvEZN5arrow8internal10ThreadPoolC1EvE3$_0E9_M_invokeERKSt9_Any_data":bb.a
  %i.g = cmpxchg weak ptr %i.d, i32 %.06.i.i.i.i.i.i.i.i, i32 %i.f acq_rel monotonic, align 8, !noalias !330 ; 2 uses
  %i.h = extractvalue { i32, i1 } %i.g, 1
  %i.i = extractvalue { i32, i1 } %i.g, 0
  br i1 %i.h, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKSt12__weak_countILS1_2EESt9nothrow_t.exit.i.i.i.i.i.i, label %bb.c, !llvm.loop !332

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !34, !alias.scope !331, !noalias !318
  br label %_ZNKSt8weak_ptrIN5arrow8internal10ThreadPool5StateEE4lockEv.exit.thread.i.i.i

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKSt12__weak_countILS1_2EESt9nothrow_t.exit.i.i.i.i.i.i: ; preds = %bb.d
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !34, !alias.scope !331, !noalias !318 ; 5 uses
  %.not.i3.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i.i.i, null
  br i1 %.not.i3.i.i.i.i.i.i, label %_ZNKSt8weak_ptrIN5arrow8internal10ThreadPool5StateEE4lockEv.exit.thread.i.i.i, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i.i

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKSt12__weak_countILS1_2EESt9nothrow_t.exit.i.i.i.i.i.i
  %3 = getelementptr inbounds nuw i8, ptr %.pr.i.i.i.i.i.i, i64 8
  %i.j = load atomic i32, ptr %3 monotonic, align 8, !noalias !330
  %.fr.i.i.i.i.i.i = freeze i32 %i.j
  %.not.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i, 0
  %i.k = load ptr, ptr %.val, align 8, !noalias !330 ; 4 uses
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt8weak_ptrIN5arrow8internal10ThreadPool5StateEE4lockEv.exit.thread.i.i.i, label %_ZNKSt8weak_ptrIN5arrow8internal10ThreadPool5StateEE4lockEv.exit.i.i.i

_ZNKSt8weak_ptrIN5arrow8internal10ThreadPool5StateEE4lockEv.exit.thread.i.i.i: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i.i, %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKSt12__weak_countILS1_2EESt9nothrow_t.exit.i.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i.i, %bb.a
  %4 = phi ptr [ %.pr.i.i.i.i.i.i, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i.i ], [ null, %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKSt12__weak_countILS1_2EESt9nothrow_t.exit.i.i.i.i.i.i ], [ null, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i.i ], [ null, %bb.a ]
  store ptr null, ptr %2, align 8, !tbaa !333, !alias.scope !331, !noalias !318
  br label %"_ZSt13__invoke_implISt10shared_ptrIN5arrow8internal10ThreadPool5StateEERZNS3_C1EvE3$_0JEET_St14__invoke_otherOT0_DpOT1_.exit.i"

end_hunk_1
begin_hunk_2_@"_ZNSt17_Function_handlerIFSt3anyvEZN5arrow8internal10ThreadPoolC1EvE3$_0E9_M_invokeERKSt9_Any_data":bb.a
  br label %common.resume.i

"_ZSt13__invoke_implISt10shared_ptrIN5arrow8internal10ThreadPool5StateEERZNS3_C1EvE3$_0JEET_St14__invoke_otherOT0_DpOT1_.exit.i": ; preds = %bb.e, %_ZNKSt8weak_ptrIN5arrow8internal10ThreadPool5StateEE4lockEv.exit.i.i.i, %_ZNKSt8weak_ptrIN5arrow8internal10ThreadPool5StateEE4lockEv.exit.thread.i.i.i
  %5 = phi ptr [ %4, %_ZNKSt8weak_ptrIN5arrow8internal10ThreadPool5StateEE4lockEv.exit.thread.i.i.i ], [ %.pr.i.i.i.i.i.i, %_ZNKSt8weak_ptrIN5arrow8internal10ThreadPool5StateEE4lockEv.exit.i.i.i ], [ %.pr.i.i.i.i.i.i, %bb.e ]
  %i.n = phi ptr [ null, %_ZNKSt8weak_ptrIN5arrow8internal10ThreadPool5StateEE4lockEv.exit.thread.i.i.i ], [ null, %_ZNKSt8weak_ptrIN5arrow8internal10ThreadPool5StateEE4lockEv.exit.i.i.i ], [ %i.k, %bb.e ]
  store ptr @_ZNSt3any17_Manager_externalISt10shared_ptrIN5arrow8internal10ThreadPool5StateEEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, ptr %0, align 8, !tbaa !335, !alias.scope !318
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
end_hunk_2
begin_hunk_3_@"_ZNSt17_Function_handlerIFSt3anyvEZN5arrow8internal10ThreadPoolC1EvE3$_0E9_M_invokeERKSt9_Any_data":bb.a
"_ZSt10__invoke_rISt3anyRZN5arrow8internal10ThreadPoolC1EvE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit": ; preds = %"_ZSt13__invoke_implISt10shared_ptrIN5arrow8internal10ThreadPool5StateEERZNS3_C1EvE3$_0JEET_St14__invoke_otherOT0_DpOT1_.exit.i"
  store ptr %i.n, ptr %i.p, align 8, !tbaa !333, !noalias !318
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %5, ptr %i.r, align 8, !tbaa !34, !noalias !318
  store ptr %i.p, ptr %i.o, align 8, !tbaa !41, !alias.scope !318
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !318
  ret void
end_hunk_3
