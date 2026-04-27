inline.NumInlined: 427
inline.NumDeleted: 261
begin_hunk_0_@_ZN5folly22ThreadIdWorkerProvider16collectThreadIdsEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.p = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit unwind label %6 ; 8 uses

_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit
  %i.q = load ptr, ptr %4, align 8, !tbaa !37, !noalias !38
end_hunk_0
begin_hunk_1_@_ZN5folly22ThreadIdWorkerProvider16collectThreadIdsEv:bb.a

bb.i:                                             ; preds = %_ZSt10__distanceINSt8__detail20_Node_const_iteratorIiLb1ELb0EEEENSt15iterator_traitsIT_E15difference_typeES4_S4_St18input_iterator_tag.exit.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
          to label %.noexc.i unwind label %.thread

.noexc.i:                                         ; preds = %bb.i
  unreachable
end_hunk_1
begin_hunk_2_@_ZN5folly22ThreadIdWorkerProvider16collectThreadIdsEv:bb.a
_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i: ; preds = %_ZSt10__distanceINSt8__detail20_Node_const_iteratorIiLb1ELb0EEEENSt15iterator_traitsIT_E15difference_typeES4_S4_St18input_iterator_tag.exit.i.i
  %i.ap = shl nuw nsw i64 %i.am, 2
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #24
          to label %.noexc5.i unwind label %.thread ; 3 uses

.noexc5.i:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  store ptr %i.aq, ptr %i.af, align 8, !tbaa !48
end_hunk_2
begin_hunk_3_@_ZN5folly22ThreadIdWorkerProvider16collectThreadIdsEv:bb.a
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !52

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %bb.h ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, ptr %i.ay, align 8, !tbaa !53
  %i.az = load i16, ptr %i.v, align 8, !tbaa !35
  switch i16 %i.az, label %bb.o [
    i16 0, label %_ZNSt10unique_ptrIN12_GLOBAL__N_115WorkerKeepAliveESt14default_deleteIS1_EED2Ev.exit
end_hunk_3
begin_hunk_4_@_ZN5folly22ThreadIdWorkerProvider16collectThreadIdsEv:bb.a
  %i.bh = and i32 %i.be, 16
  %.not.i.i.i.i26 = icmp eq i32 %i.bh, 0
  %or.cond.i.i.i27 = or i1 %i.bg, %.not.i.i.i.i26
  br i1 %or.cond.i.i.i27, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i28, label %bb.m, !prof !54

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.ag, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
end_hunk_4
begin_hunk_5_@_ZN5folly22ThreadIdWorkerProvider16collectThreadIdsEv:bb.a
  %i.br = and i32 %i.bo, 16
  %.not.i.i.i23 = icmp eq i32 %i.br, 0
  %or.cond.i.i24 = or i1 %i.bq, %.not.i.i.i23
  br i1 %or.cond.i.i24, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i25, label %bb.p, !prof !54

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.ag, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
end_hunk_5
begin_hunk_6_@_ZN5folly22ThreadIdWorkerProvider16collectThreadIdsEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret void

6:                                                ; preds = %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit
  %7 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_115WorkerKeepAliveESt14default_deleteIS1_EED2Ev.exit17

.thread:                                          ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i, %bb.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !11
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre42 = load ptr, ptr %.phi.trans.insert, align 8
  call void %.pre42(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #12, !call_target !55, !inline_history !70
  call void @_ZN5folly9LockedPtrINS_12SynchronizedISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSE_22SynchronizedMutexLevelE2ELNSE_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_115WorkerKeepAliveESt14default_deleteIS1_EED2Ev.exit17

_ZNKSt14default_deleteIN12_GLOBAL__N_115WorkerKeepAliveEEclEPS1_.exit.i16: ; preds = %bb.g
  %i.bv = landingpad { ptr, i32 }
          cleanup
end_hunk_6
begin_hunk_7_@_ZN5folly22ThreadIdWorkerProvider16collectThreadIdsEv:bb.a
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(24) %i.p) #12, !call_target !71, !inline_history !197
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_115WorkerKeepAliveESt14default_deleteIS1_EED2Ev.exit17

_ZNSt10unique_ptrIN12_GLOBAL__N_115WorkerKeepAliveESt14default_deleteIS1_EED2Ev.exit17: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_115WorkerKeepAliveEEclEPS1_.exit.i16, %.thread, %6
  %.pn.pn.pn = phi { ptr, i32 } [ %7, %6 ], [ %i.bu, %.thread ], [ %i.bv, %_ZNKSt14default_deleteIN12_GLOBAL__N_115WorkerKeepAliveEEclEPS1_.exit.i16 ]
  resume { ptr, i32 } %.pn.pn.pn
}

end_hunk_7
begin_hunk_8_@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_:bb.a
  %i.ci = and i32 %i.cf, 16
  %.not.i.i = icmp eq i32 %i.ci, 0
  %or.cond.i = or i1 %i.ch, %.not.i.i
  br i1 %or.cond.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit, label %bb.t, !prof !54

bb.t:                                             ; preds = %bb.s
  call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
end_hunk_8
begin_hunk_9_@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_:bb.a
  %i.co = and i32 %i.cl, 16
  %.not.i.i60 = icmp eq i32 %i.co, 0
  %or.cond.i61 = or i1 %i.cn, %.not.i.i60
  br i1 %or.cond.i61, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63, label %bb.w, !prof !54

bb.w:                                             ; preds = %bb.v
  call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
end_hunk_9
begin_hunk_10_@llvm.assume
!50 = !{!"p1 int", !18, i64 0}
!51 = !{!49, !50, i64 16}
!52 = distinct !{!52, !26}
!53 = !{!49, !50, i64 8}
!54 = !{!"branch_weights", i32 4001, i32 1}
!55 = !DISubprogram(name: "~KeepAlive", linkageName: "_ZN5folly14WorkerProvider9KeepAliveD4Ev", scope: !57, file: !56, line: 53, type: !67, scopeLine: 53, containingType: !57, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!56 = !DIFile(filename: "_deps/folly-src/folly/executors/QueueObserver.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "e16f968dae2b19d7fed8b6d46bb84c7f")
!57 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "KeepAlive", scope: !58, file: !56, line: 51, size: 64, flags: DIFlagPublic | DIFlagTypePassByReference | DIFlagNonTrivial, elements: !60, vtableHolder: !57, identifier: "_ZTSN5folly14WorkerProvider9KeepAliveE")
!58 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "WorkerProvider", scope: !59, file: !56, line: 41, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly14WorkerProviderE")
!59 = !DINamespace(name: "folly", scope: null)
!60 = !{!61, !55}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$KeepAlive", scope: !56, file: !56, baseType: !62, size: 64, flags: DIFlagArtificial)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!66}
!66 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !69}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!70 = distinct !{null, null}
!71 = !DISubprogram(name: "~WorkerKeepAlive", linkageName: "_ZN12_GLOBAL__N_115WorkerKeepAliveD4Ev", scope: !73, file: !72, line: 31, type: !195, scopeLine: 31, containingType: !73, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagLocalToUnit | DISPFlagOptimized)
!72 = !DIFile(filename: "_deps/folly-src/folly/executors/QueueObserver.cpp", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "4ca63860980d6822357869f5446f6d86")
!73 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "WorkerKeepAlive", scope: !74, file: !72, line: 27, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !75, vtableHolder: !57)
!74 = !DINamespace(scope: null)
!75 = !{!76, !77, !191, !71}
!76 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !73, baseType: !57, flags: DIFlagPublic, extraData: i32 0)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "threadsExitLock_", scope: !73, file: !72, line: 34, baseType: !78, size: 128, offset: 64)
!78 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "shared_lock<folly::SharedMutexImpl<false, void, std::atomic, folly::SharedMutexPolicyDefault> >", scope: !80, file: !79, line: 1621, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !81, templateParams: !189, identifier: "_ZTSSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE")
!79 = !DIFile(filename: "_deps/folly-src/folly/SharedMutex.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "c3a56b280810b749e2be735c4d69f2af")
end_hunk_10
begin_hunk_11_@llvm.assume
!82 = !DIDerivedType(tag: DW_TAG_member, name: "mutex_", scope: !78, file: !79, line: 1742, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "mutex_type", scope: !78, file: !79, line: 1624, baseType: !85, flags: DIFlagPublic)
!85 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "SharedMutexImpl<false, void, std::atomic, folly::SharedMutexPolicyDefault>", scope: !59, file: !79, line: 1435, size: 32, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEE")
!86 = !DIDerivedType(tag: DW_TAG_member, name: "token_", scope: !78, file: !79, line: 1743, baseType: !87, size: 32, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "token_type", scope: !78, file: !79, line: 1626, baseType: !88, flags: DIFlagPublic)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "Token", scope: !85, file: !79, line: 361, baseType: !89, flags: DIFlagPublic)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SharedMutexToken", scope: !59, file: !79, line: 242, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !90, identifier: "_ZTSN5folly16SharedMutexTokenE")
!90 = !{!91, !103, !104, !108}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "state_", scope: !89, file: !79, line: 250, baseType: !92, size: 16)
!92 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "State", scope: !89, file: !79, line: 243, baseType: !93, size: 16, flags: DIFlagEnumClass, elements: !98, identifier: "_ZTSN5folly16SharedMutexToken5StateE")
end_hunk_11
