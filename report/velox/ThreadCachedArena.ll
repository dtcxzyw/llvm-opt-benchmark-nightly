inline.NumInlined: 812
inline.NumDeleted: 472
begin_hunk_0_@_ZN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEE9new_arrayEmRPNSB_5arrayE:bb.a
_ZNSt5_BindIFMN5folly17atomic_grow_arrayINS0_12SynchronizedINS0_18threadlocal_detail14ThreadEntrySetENS0_15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEENS0_32atomic_grow_array_policy_defaultIS9_S6_EEEEFvPNSC_5arrayEEPSC_SE_EE6__callIvJEJLm0ELm1EEEET_OSt5tupleIJDpT0_EESt12_Index_tupleIJXspT1_EEE.exit.i.i.i: ; preds = %bb.d
  store ptr %i.bq, ptr %2, align 8, !tbaa !118
  invoke void @_ZN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEE9del_arrayEPNSB_5arrayE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.s)
          to label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultISB_S8_EEEEFvPNSE_5arrayEEPSE_SG_EELb1EED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt5_BindIFMN5folly17atomic_grow_arrayINS0_12SynchronizedINS0_18threadlocal_detail14ThreadEntrySetENS0_15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEENS0_32atomic_grow_array_policy_defaultIS9_S6_EEEEFvPNSC_5arrayEEPSC_SE_EE6__callIvJEJLm0ELm1EEEET_OSt5tupleIJDpT0_EESt12_Index_tupleIJXspT1_EEE.exit.i.i.i
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  %i.ce = tail call ptr @__cxa_begin_catch(ptr %i.cd) #21 ; 0 uses
  tail call void @_ZN5folly6detail18ScopeGuardImplBase9terminateEv() #21, !inline_history !1175
  unreachable

_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultISB_S8_EEEEFvPNSE_5arrayEEPSE_SG_EELb1EED2Ev.exit: ; preds = %.critedge, %.preheader58, %_ZNSt5_BindIFMN5folly17atomic_grow_arrayINS0_12SynchronizedINS0_18threadlocal_detail14ThreadEntrySetENS0_15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEENS0_32atomic_grow_array_policy_defaultIS9_S6_EEEEFvPNSC_5arrayEEPSC_SE_EE6__callIvJEJLm0ELm1EEEET_OSt5tupleIJDpT0_EESt12_Index_tupleIJXspT1_EEE.exit.i.i.i
end_hunk_0
begin_hunk_1_@_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEaSEOS5_:bb.a
  %i.l = load i8, ptr %i.k, align 8, !tbaa !111, !range !1037, !noundef !264
  store ptr null, ptr %1, align 8, !tbaa !108
  store i8 0, ptr %i.k, align 8, !tbaa !111
  %i.m = load ptr, ptr %0, align 8, !tbaa !1176   ; 3 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !1176
  %i.n = load i8, ptr %i.c, align 8, !tbaa !1122, !range !1037, !noundef !264
  store i8 %i.l, ptr %i.c, align 8, !tbaa !1122
  %i.o = trunc nuw i8 %i.n to i1
end_hunk_1
begin_hunk_2_@llvm.umin.i32
!1172 = distinct !{!1172, !"_ZNK5folly32atomic_grow_array_policy_defaultINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEES5_E4makeEv"}
!1173 = !{!1045, !1046, i64 0}
!1174 = distinct !{!1174, !52}
!1175 = distinct !{null, null}
!1176 = !{!110, !110, i64 0}
end_hunk_2
