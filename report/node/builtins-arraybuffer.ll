inline.NumInlined: 1050
inline.NumDeleted: 477
begin_hunk_0_@_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E:bb.a
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8
  %i.c = load ptr, ptr %1, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN2v88internal12BackingStoreESt14default_deleteIS6_EEEOSt10unique_ptrIT_T0_E.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN2v88internal12BackingStoreESt14default_deleteIS6_EEEOSt10unique_ptrIT_T0_E.exit: ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19 ; 13 uses
  %2 = load ptr, ptr %1, align 8
  store ptr null, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store i32 1, ptr %i.f, align 8
end_hunk_0
begin_hunk_1_@_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E:bb.a
  store i32 1, ptr %i.g, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN2v88internal12BackingStoreESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %2, ptr %i.h, align 8
  %i.i = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.e, %i.i
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20, label %bb.b
end_hunk_1
