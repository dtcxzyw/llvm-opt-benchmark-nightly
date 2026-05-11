inline.NumInlined: 985
inline.NumDeleted: 561
begin_hunk_0_@_ZNSt17_Function_handlerIFSt3anyvEZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlvE_E9_M_invokeERKSt9_Any_data:bb.a
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt8weak_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEE4lockEv.exit.thread.i.i.i, label %_ZNKSt8weak_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEE4lockEv.exit.i.i.i

_ZNKSt8weak_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEE4lockEv.exit.thread.i.i.i: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i.i, %bb.a
  %i.l = phi ptr [ %i.c, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i.i ], [ null, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i.i ], [ null, %bb.a ]
  store ptr null, ptr %2, align 8, !tbaa !58, !alias.scope !188, !noalias !175
  br label %_ZSt13__invoke_implISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEERZNS3_4InitEvEUlvE_JEET_St14__invoke_otherOT0_DpOT1_.exit.i

end_hunk_0
