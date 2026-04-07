inline.NumInlined: 16
inline.NumDeleted: 15
begin_hunk_0_@_ZN6apache6thrift11concurrency8Runnable6threadESt10shared_ptrINS1_6ThreadEE:bb.a
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #7, !inline_history !29
  br label %_ZNSt8weak_ptrIN6apache6thrift11concurrency6ThreadEEaSIS3_EENSt9enable_ifIXsr13is_assignableIRSt10__weak_ptrIS3_LN9__gnu_cxx12_Lock_policyE2EERKSt10shared_ptrIT_EEE5valueERS4_E4typeESG_.exit

_ZNSt8weak_ptrIN6apache6thrift11concurrency6ThreadEEaSIS3_EENSt9enable_ifIXsr13is_assignableIRSt10__weak_ptrIS3_LN9__gnu_cxx12_Lock_policyE2EERKSt10shared_ptrIT_EEE5valueERS4_E4typeESG_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
end_hunk_0
begin_hunk_1_@llvm.experimental.noalias.scope.decl
!26 = !{!27, !25, i64 0}
!27 = !{!"_ZTSSt10__weak_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EE", !25, i64 0, !19, i64 8}
!28 = !{!5, !5, i64 0}
!29 = distinct !{null, null, null, null}
end_hunk_1
