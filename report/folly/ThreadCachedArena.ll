Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/ThreadCachedArena?download=true
inline.NumInlined: 844
inline.NumDeleted: 495
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@"_ZNSt17_Function_handlerIFvPvN5folly18TLPDestructionModeEEZNS1_18threadlocal_detail14ElementWrapper11makeDeleterIPNS1_8SysArenaEZNS1_17ThreadCachedArena24allocateThreadLocalArenaEvE3$_0EEDaRKT0_EUlS0_S2_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation":bb.a

"_ZNSt14_Function_base13_Base_managerIZN5folly18threadlocal_detail14ElementWrapper11makeDeleterIPNS1_8SysArenaEZNS1_17ThreadCachedArena24allocateThreadLocalArenaEvE3$_0EEDaRKT0_EUlPvNS1_18TLPDestructionModeEE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly17ThreadCachedArena7zombifyEONS_8SysArenaE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %3 = alloca %"class.folly::LockedPtr.70", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !109, !alias.scope !1102
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i8 0, ptr %i.d, align 8, !tbaa !112, !alias.scope !1102
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20, !noalias !1102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20, !noalias !1102
  %i.e = load atomic i32, ptr %i.c acquire, align 8, !noalias !1102 ; 4 uses
  store i32 %i.e, ptr %i.b, align 4, !tbaa !101, !noalias !1102
  %i.f = and i32 %i.e, -1312
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %.critedge.i.i.i.i.i.i, !prof !100

bb.b:                                             ; preds = %bb.a
  %i.h = or disjoint i32 %i.e, 128
  %i.i = cmpxchg ptr %i.c, i32 %i.e, i32 %i.h seq_cst seq_cst, align 4, !noalias !1102 ; 2 uses
  %i.j = extractvalue { i32, i1 } %i.i, 1
  br i1 %i.j, label %bb.c, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, !prof !102

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = extractvalue { i32, i1 } %i.i, 0
  store i32 %i.k, ptr %i.b, align 4, !noalias !1102
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, %bb.a
  %i.l = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %2), !noalias !1102 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20, !noalias !1102
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !1102
  store i8 1, ptr %i.d, align 8, !tbaa !112, !alias.scope !1102
  %i.m = load ptr, ptr %3, align 8, !tbaa !109    ; 4 uses
  %.not.i.i = icmp eq ptr %i.m, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -96
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %.neg.i.i
  invoke void @_ZN5folly5ArenaINS_12SysAllocatorIcEEE5mergeEOS3_(ptr noundef nonnull align 8 dereferenceable(96) %i.n, ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.o = atomicrmw and ptr %i.m, i32 -401 seq_cst, align 4 ; 2 uses
  %i.p = and i32 %i.o, -401
  store i32 %i.p, ptr %i.a, align 4, !tbaa !101
  %i.q = and i32 %i.o, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_8SysArenaENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS8_22SynchronizedMutexLevelE1ELNS8_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.e, !prof !100

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly9LockedPtrINS_12SynchronizedINS_8SysArenaENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS8_22SynchronizedMutexLevelE1ELNS8_23SynchronizedMutexMethodE0EEEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #33
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedINS_8SysArenaENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS8_22SynchronizedMutexLevelE1ELNS8_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.g:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrINS_12SynchronizedINS_8SysArenaENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS8_22SynchronizedMutexLevelE1ELNS8_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN5folly8SysArenaESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1055   ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN5folly8SysArenaEEclEPS1_.exit

_ZNKSt14default_deleteIN5folly8SysArenaEEclEPS1_.exit: ; preds = %bb.a
  tail call void @_ZN5folly5ArenaINS_12SysAllocatorIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.a) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #34
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN5folly8SysArenaEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly5ArenaINS_12SysAllocatorIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.boost::intrusive::detail::node_disposer.58", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.b = ptrtoint ptr %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %i.b, ptr %1, align 8, !tbaa !1105
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !1107
  %i.d = call noundef i64 @_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE24unlink_after_and_disposeINS1_13node_disposerIZN5folly5ArenaINS9_12SysAllocatorIcEEE10freeBlocksEvEUlPNSD_5BlockEE_NS0_8mhtraitsISE_NS0_17slist_member_hookIJEEEXadL_ZNSE_4linkEEEEELNS0_10algo_typesE3EEEEEmPNS0_10slist_nodeIS4_EESP_T_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dead_on_return %1) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  store ptr %i.a, ptr %i.a, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %i.e, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45   ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.g, %i.f
  br i1 %.not11.i.i.i, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit.thread, label %.lr.ph.i.preheader.i.i

_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit.thread: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.f, ptr %i.h, align 8, !tbaa !46
  store ptr null, ptr %i.f, align 8, !tbaa !45
  br label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit

.lr.ph.i.preheader.i.i:                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9intrusive6detail13node_disposerIZN5folly5ArenaINS3_12SysAllocatorIcEEE15freeLargeBlocksEvEUlPNS7_10LargeBlockEE_NS0_8mhtraitsIS8_NS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEELNS0_10algo_typesE3EEclEPNS0_10slist_nodeIPvEE.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.013.i.i.i = phi ptr [ %i.j, %_ZN5boost9intrusive6detail13node_disposerIZN5folly5ArenaINS3_12SysAllocatorIcEEE15freeLargeBlocksEvEUlPNS7_10LargeBlockEE_NS0_8mhtraitsIS8_NS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEELNS0_10algo_typesE3EEclEPNS0_10slist_nodeIPvEE.exit.i.i.i ], [ %i.g, %.lr.ph.i.preheader.i.i ] ; 5 uses
  %i.j = load ptr, ptr %.013.i.i.i, align 8, !tbaa !45 ; 2 uses
  store ptr null, ptr %.013.i.i.i, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1112 ; 2 uses
  %i.m = load i64, ptr %i.i, align 8, !tbaa !1116
  %i.n = sub i64 %i.m, %i.l
  store i64 %i.n, ptr %i.i, align 8, !tbaa !1116
  %i.o = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5folly11canSdallocxEv.exit.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i, !prof !42

.split.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i
  %i.p = icmp sgt i8 %i.o, 0
  br i1 %i.p, label %bb.b, label %bb.c

_ZN5folly11canSdallocxEv.exit.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i
  %i.q = call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #39
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5folly11canSdallocxEv.exit.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i
  call void @sdallocx(ptr noundef nonnull %.013.i.i.i, i64 noundef %i.l, i32 noundef 0) #20
  br label %_ZN5boost9intrusive6detail13node_disposerIZN5folly5ArenaINS3_12SysAllocatorIcEEE15freeLargeBlocksEvEUlPNS7_10LargeBlockEE_NS0_8mhtraitsIS8_NS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEELNS0_10algo_typesE3EEclEPNS0_10slist_nodeIPvEE.exit.i.i.i

bb.c:                                             ; preds = %_ZN5folly11canSdallocxEv.exit.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i
  call void @free(ptr noundef nonnull %.013.i.i.i) #20
  br label %_ZN5boost9intrusive6detail13node_disposerIZN5folly5ArenaINS3_12SysAllocatorIcEEE15freeLargeBlocksEvEUlPNS7_10LargeBlockEE_NS0_8mhtraitsIS8_NS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEELNS0_10algo_typesE3EEclEPNS0_10slist_nodeIPvEE.exit.i.i.i

_ZN5boost9intrusive6detail13node_disposerIZN5folly5ArenaINS3_12SysAllocatorIcEEE15freeLargeBlocksEvEUlPNS7_10LargeBlockEE_NS0_8mhtraitsIS8_NS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEELNS0_10algo_typesE3EEclEPNS0_10slist_nodeIPvEE.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.not.i.i.i = icmp eq ptr %i.j, %i.f
  br i1 %.not.i.i.i, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !1117

_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit: ; preds = %_ZN5boost9intrusive6detail13node_disposerIZN5folly5ArenaINS3_12SysAllocatorIcEEE15freeLargeBlocksEvEUlPNS7_10LargeBlockEE_NS0_8mhtraitsIS8_NS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEELNS0_10algo_typesE3EEclEPNS0_10slist_nodeIPvEE.exit.i.i.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !45  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.f, ptr %i.r, align 8, !tbaa !46
  store ptr null, ptr %i.f, align 8, !tbaa !45
  %.not11.i.i.i.i1 = icmp eq ptr %.pre, %i.a
  br i1 %.not11.i.i.i.i1, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit, %.lr.ph.i.i.i.i2
  %.013.i.i.i.i3 = phi ptr [ %i.s, %.lr.ph.i.i.i.i2 ], [ %.pre, %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit ] ; 2 uses
  %i.s = load ptr, ptr %.013.i.i.i.i3, align 8, !tbaa !45 ; 2 uses
  store ptr null, ptr %.013.i.i.i.i3, align 8, !tbaa !45
  %.not.i.i.i.i4 = icmp eq ptr %i.s, %i.a
  br i1 %.not.i.i.i.i4, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit, label %.lr.ph.i.i.i.i2, !llvm.loop !56

_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit: ; preds = %.lr.ph.i.i.i.i2, %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit.thread, %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit
  store ptr %i.a, ptr %i.e, align 8, !tbaa !46
  store ptr null, ptr %i.a, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE24unlink_after_and_disposeINS1_13node_disposerIZN5folly5ArenaINS9_12SysAllocatorIcEEE10freeBlocksEvEUlPNSD_5BlockEE_NS0_8mhtraitsISE_NS0_17slist_member_hookIJEEEXadL_ZNSE_4linkEEEEELNS0_10algo_typesE3EEEEEmPNS0_10slist_nodeIS4_EESP_T_(ptr noundef %0, ptr noundef %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %.not12 = icmp eq ptr %i.a, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN5boost9intrusive6detail13node_disposerIZN5folly5ArenaINS3_12SysAllocatorIcEEE10freeBlocksEvEUlPNS7_5BlockEE_NS0_8mhtraitsIS8_NS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEELNS0_10algo_typesE3EEclEPNS0_10slist_nodeIPvEE.exit
  %.014 = phi ptr [ %i.b, %_ZN5boost9intrusive6detail13node_disposerIZN5folly5ArenaINS3_12SysAllocatorIcEEE10freeBlocksEvEUlPNS7_5BlockEE_NS0_8mhtraitsIS8_NS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEELNS0_10algo_typesE3EEclEPNS0_10slist_nodeIPvEE.exit ], [ %i.a, %bb.a ] ; 4 uses
  %.0913 = phi i64 [ %i.t, %_ZN5boost9intrusive6detail13node_disposerIZN5folly5ArenaINS3_12SysAllocatorIcEEE10freeBlocksEvEUlPNS7_5BlockEE_NS0_8mhtraitsIS8_NS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEELNS0_10algo_typesE3EEclEPNS0_10slist_nodeIPvEE.exit ], [ 0, %bb.a ]
  %i.b = load ptr, ptr %.014, align 8, !tbaa !45  ; 2 uses
  store ptr null, ptr %.014, align 8, !tbaa !45
  %i.c = load ptr, ptr %2, align 8, !tbaa !1118   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load i64, ptr %i.d, align 8, !tbaa !49   ; 2 uses
  %i.f = add i64 %i.e, -1
  %3 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.f, i64 16) ; 2 uses
  %4 = extractvalue { i64, i1 } %3, 1
  br i1 %4, label %_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit.i.i.i, label %_ZNK5folly5ArenaINS_12SysAllocatorIcEEE7roundUpEm.exit.i.i, !prof !42

_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit.i.i.i: ; preds = %.lr.ph
  invoke void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #9
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit.i.i.i
  unreachable

_ZNK5folly5ArenaINS_12SysAllocatorIcEEE7roundUpEm.exit.i.i: ; preds = %.lr.ph
  %5 = extractvalue { i64, i1 } %3, 0
  %i.g = sub i64 0, %i.e
  %i.h = and i64 %5, %i.g
  %i.i = load i64, ptr %i.c, align 8, !tbaa !1119
  %i.j = add i64 %i.i, %i.h                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNK5folly5ArenaINS_12SysAllocatorIcEEE7roundUpEm.exit.i.i
  %i.l = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5folly10canNallocxEv.exit.i.i.i.i, label %.split.i.i.i.i, !prof !42

.split.i.i.i.i:                                   ; preds = %bb.b
  %i.m = icmp sgt i8 %i.l, 0
  br i1 %i.m, label %bb.c, label %_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit.i

_ZN5folly10canNallocxEv.exit.i.i.i.i:             ; preds = %bb.b
  %i.n = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #39
  br i1 %i.n, label %bb.c, label %_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit.i

bb.c:                                             ; preds = %_ZN5folly10canNallocxEv.exit.i.i.i.i, %.split.i.i.i.i
  %i.o = tail call i64 @nallocx(i64 noundef %i.j, i32 noundef 0) #20 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.o, 0
  %i.p = select i1 %.not.i.i.i.i, i64 %i.j, i64 %i.o
  br label %_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit.i

_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit.i: ; preds = %bb.c, %_ZN5folly10canNallocxEv.exit.i.i.i.i, %.split.i.i.i.i, %_ZNK5folly5ArenaINS_12SysAllocatorIcEEE7roundUpEm.exit.i.i
  %.0.i.i.i.i = phi i64 [ 0, %_ZNK5folly5ArenaINS_12SysAllocatorIcEEE7roundUpEm.exit.i.i ], [ %i.p, %bb.c ], [ %i.j, %_ZN5folly10canNallocxEv.exit.i.i.i.i ], [ %i.j, %.split.i.i.i.i ]
  %i.q = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i.i.i3.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i3.i, label %_ZN5folly11canSdallocxEv.exit.i.i.i.i, label %.split.i.i.i4.i, !prof !42

.split.i.i.i4.i:                                  ; preds = %_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit.i
  %i.r = icmp sgt i8 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.e

_ZN5folly11canSdallocxEv.exit.i.i.i.i:            ; preds = %_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit.i
  %i.s = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #39
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5folly11canSdallocxEv.exit.i.i.i.i, %.split.i.i.i4.i
  tail call void @sdallocx(ptr noundef nonnull %.014, i64 noundef %.0.i.i.i.i, i32 noundef 0) #20
  br label %_ZN5boost9intrusive6detail13node_disposerIZN5folly5ArenaINS3_12SysAllocatorIcEEE10freeBlocksEvEUlPNS7_5BlockEE_NS0_8mhtraitsIS8_NS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEELNS0_10algo_typesE3EEclEPNS0_10slist_nodeIPvEE.exit

bb.e:                                             ; preds = %_ZN5folly11canSdallocxEv.exit.i.i.i.i, %.split.i.i.i4.i
  tail call void @free(ptr noundef nonnull %.014) #20
  br label %_ZN5boost9intrusive6detail13node_disposerIZN5folly5ArenaINS3_12SysAllocatorIcEEE10freeBlocksEvEUlPNS7_5BlockEE_NS0_8mhtraitsIS8_NS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEELNS0_10algo_typesE3EEclEPNS0_10slist_nodeIPvEE.exit

_ZN5boost9intrusive6detail13node_disposerIZN5folly5ArenaINS3_12SysAllocatorIcEEE10freeBlocksEvEUlPNS7_5BlockEE_NS0_8mhtraitsIS8_NS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEELNS0_10algo_typesE3EEclEPNS0_10slist_nodeIPvEE.exit: ; preds = %bb.d, %bb.e
  %i.t = add i64 %.0913, 1                        ; 2 uses
  %.not = icmp eq ptr %i.b, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1120

._crit_edge:                                      ; preds = %_ZN5boost9intrusive6detail13node_disposerIZN5folly5ArenaINS3_12SysAllocatorIcEEE10freeBlocksEvEUlPNS7_5BlockEE_NS0_8mhtraitsIS8_NS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEELNS0_10algo_typesE3EEclEPNS0_10slist_nodeIPvEE.exit, %bb.a
  %.09.lcssa = phi i64 [ 0, %bb.a ], [ %i.t, %_ZN5boost9intrusive6detail13node_disposerIZN5folly5ArenaINS3_12SysAllocatorIcEEE10freeBlocksEvEUlPNS7_5BlockEE_NS0_8mhtraitsIS8_NS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEELNS0_10algo_typesE3EEclEPNS0_10slist_nodeIPvEE.exit ]
  store ptr %1, ptr %0, align 8, !tbaa !45
  ret i64 %.09.lcssa

bb.f:                                             ; preds = %_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit.i.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #33
  unreachable
}

; Function Attrs: nounwind
declare extern_weak void @sdallocx(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #24

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() local_unnamed_addr #25 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %class.anon.62, align 1             ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !1121

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv) #20
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  %i.d = invoke noundef zeroext i1 @_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvENKUlvE_clEv(ptr noundef nonnull align 1 dereferenceable(1) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  %i.e = zext i1 %i.d to i8
  store i8 %i.e, ptr @_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv, align 1, !tbaa !1122
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.f = load i8, ptr @_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv, align 1, !tbaa !1122, !range !1038, !noundef !265
  %i.g = trunc nuw i8 %i.f to i1
  ret i1 %i.g

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #33
  unreachable
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #26

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvENKUlvE_clEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #27 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.a, 0
  br i1 %.not.i.i.i, label %_ZN5folly13usingJEMallocEv.exit.i, label %.split.i, !prof !42

.split.i:                                         ; preds = %bb.a
  %i.b = icmp sgt i8 %i.a, 0
  br i1 %i.b, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread, label %bb.b

_ZN5folly13usingJEMallocEv.exit.i:                ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEv() #39
  br i1 %i.c, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN5folly13usingJEMallocEv.exit.i, %.split.i
  %i.d = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i1.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i1.i, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit, label %.split, !prof !42

.split:                                           ; preds = %bb.b
  %i.e = icmp sgt i8 %i.d, 0
  br i1 %i.e, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread, label %bb.c

_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit: ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEv() #39
  br i1 %i.f, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread, label %bb.c

_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread: ; preds = %.split.i, %_ZN5folly13usingJEMallocEv.exit.i, %.split, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit
  br label %bb.c

bb.c:                                             ; preds = %.split, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread
  %i.g = phi i1 [ true, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread ], [ false, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit ], [ false, %.split ]
  %i.h = phi i8 [ 1, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread ], [ -1, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit ], [ -1, %.split ]
  store atomic i8 %i.h, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E release, align 1
  ret i1 %i.g
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #26

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEv() local_unnamed_addr #25 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.folly::detail::UsingJEMallocInitializer", align 1 ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !1121

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv) #20
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  %i.d = call noundef zeroext i1 @_ZNK5folly6detail24UsingJEMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  %i.e = select i1 %i.d, i8 1, i8 -1
  store atomic i8 %i.e, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE5flag_E release, align 1
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !1122
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = load i8, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !1122, !range !1038, !noundef !265
  %i.h = trunc nuw i8 %i.g to i1
  ret i1 %i.h
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK5folly6detail24UsingJEMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #8

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEv() local_unnamed_addr #25 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.folly::detail::UsingTCMallocInitializer", align 1 ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !1121

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv) #20
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  %i.d = call noundef zeroext i1 @_ZNK5folly6detail24UsingTCMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  %i.e = select i1 %i.d, i8 1, i8 -1
  store atomic i8 %i.e, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE5flag_E release, align 1
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !1122
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = load i8, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !1122, !range !1038, !noundef !265
  %i.h = trunc nuw i8 %i.g to i1
  ret i1 %i.h
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK5folly6detail24UsingTCMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #8

; Function Attrs: nounwind
declare extern_weak i64 @nallocx(i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #28

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %0, align 8, !tbaa !61
  invoke void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.a, align 8, !tbaa !61
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

; Function Attrs: noreturn nounwind
declare void @_ZN5folly6detail18ScopeGuardImplBase9terminateEv() local_unnamed_addr #29

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 2 dereferenceable(4)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly5ArenaINS_12SysAllocatorIcEEE5mergeEOS3_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = add i64 %i.b, -1
  %2 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.c, i64 16) ; 2 uses
  %3 = extractvalue { i64, i1 } %2, 1
  br i1 %3, label %_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit.i.i, label %_ZNK5folly5ArenaINS_12SysAllocatorIcEEE7roundUpEm.exit.i, !prof !42

_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit.i.i: ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #9
  unreachable

_ZNK5folly5ArenaINS_12SysAllocatorIcEEE7roundUpEm.exit.i: ; preds = %bb.a
  %4 = extractvalue { i64, i1 } %2, 0
  %i.d = sub i64 0, %i.b
  %i.e = and i64 %4, %i.d
  %i.f = load i64, ptr %0, align 8, !tbaa !1119
  %i.g = add i64 %i.f, %i.e                       ; 5 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK5folly5ArenaINS_12SysAllocatorIcEEE7roundUpEm.exit.i
  %i.i = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5folly10canNallocxEv.exit.i.i.i, label %.split.i.i.i, !prof !42

.split.i.i.i:                                     ; preds = %bb.b
  %i.j = icmp sgt i8 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit

_ZN5folly10canNallocxEv.exit.i.i.i:               ; preds = %bb.b
  %i.k = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #39
  br i1 %i.k, label %bb.c, label %_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit

bb.c:                                             ; preds = %_ZN5folly10canNallocxEv.exit.i.i.i, %.split.i.i.i
  %i.l = tail call i64 @nallocx(i64 noundef %i.g, i32 noundef 0) #20 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.l, 0
  %i.m = select i1 %.not.i.i.i, i64 %i.g, i64 %i.l
  br label %_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit

_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit: ; preds = %_ZNK5folly5ArenaINS_12SysAllocatorIcEEE7roundUpEm.exit.i, %.split.i.i.i, %_ZN5folly10canNallocxEv.exit.i.i.i, %bb.c
  %.0.i.i.i = phi i64 [ 0, %_ZNK5folly5ArenaINS_12SysAllocatorIcEEE7roundUpEm.exit.i ], [ %i.m, %bb.c ], [ %i.g, %_ZN5folly10canNallocxEv.exit.i.i.i ], [ %i.g, %.split.i.i.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.o = load i64, ptr %i.n, align 8, !tbaa !49   ; 2 uses
  %i.p = add i64 %i.o, -1
  %5 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.p, i64 16) ; 2 uses
  %6 = extractvalue { i64, i1 } %5, 1
  br i1 %6, label %_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit.i.i18, label %_ZNK5folly5ArenaINS_12SysAllocatorIcEEE7roundUpEm.exit.i12, !prof !42

_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit.i.i18: ; preds = %_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #9
  unreachable

_ZNK5folly5ArenaINS_12SysAllocatorIcEEE7roundUpEm.exit.i12: ; preds = %_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit
  %7 = extractvalue { i64, i1 } %5, 0
  %i.q = sub i64 0, %i.o
  %i.r = and i64 %7, %i.q
  %i.s = load i64, ptr %1, align 8, !tbaa !1119
  %i.t = add i64 %i.s, %i.r                       ; 5 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit19, label %bb.d

bb.d:                                             ; preds = %_ZNK5folly5ArenaINS_12SysAllocatorIcEEE7roundUpEm.exit.i12
  %i.v = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i.i.i13 = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i13, label %_ZN5folly10canNallocxEv.exit.i.i.i17, label %.split.i.i.i14, !prof !42

.split.i.i.i14:                                   ; preds = %bb.d
  %i.w = icmp sgt i8 %i.v, 0
  br i1 %i.w, label %bb.e, label %_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit19

_ZN5folly10canNallocxEv.exit.i.i.i17:             ; preds = %bb.d
  %i.x = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #39
  br i1 %i.x, label %bb.e, label %_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit19

bb.e:                                             ; preds = %_ZN5folly10canNallocxEv.exit.i.i.i17, %.split.i.i.i14
  %i.y = tail call i64 @nallocx(i64 noundef %i.t, i32 noundef 0) #20 ; 2 uses
  %.not.i.i.i16 = icmp eq i64 %i.y, 0
  %i.z = select i1 %.not.i.i.i16, i64 %i.t, i64 %i.y
  br label %_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit19

_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit19: ; preds = %_ZNK5folly5ArenaINS_12SysAllocatorIcEEE7roundUpEm.exit.i12, %.split.i.i.i14, %_ZN5folly10canNallocxEv.exit.i.i.i17, %bb.e
  %.0.i.i.i15 = phi i64 [ 0, %_ZNK5folly5ArenaINS_12SysAllocatorIcEEE7roundUpEm.exit.i12 ], [ %i.z, %bb.e ], [ %i.t, %_ZN5folly10canNallocxEv.exit.i.i.i17 ], [ %i.t, %.split.i.i.i14 ]
  %i.aa = icmp eq i64 %.0.i.i.i, %.0.i.i.i15
  br i1 %i.aa, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit19
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly5ArenaINS_12SysAllocatorIcEEE5mergeEOS3_E30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.21) #40
  unreachable

bb.g:                                             ; preds = %_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit19
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !45 ; 4 uses
  %i.ae = icmp eq ptr %i.ad, %i.ac
  br i1 %i.ae, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !46, !noalias !1123 ; 5 uses
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !45 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.ab
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !46
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not.i.i = icmp eq ptr %0, %1
  %.not17.i.i = icmp eq ptr %i.ab, %i.ag
  %or.cond.i.i = or i1 %.not.i.i, %.not17.i.i
  %.not18.i.i = icmp eq ptr %i.ac, %i.ag
  %or.cond19.i.i = or i1 %.not18.i.i, %or.cond.i.i
  br i1 %or.cond19.i.i, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !45
  store ptr %i.ak, ptr %i.ac, align 8, !tbaa !45
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !45
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !45
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !45
  br label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit

_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit: ; preds = %bb.j, %bb.k, %bb.g
  %i.al = phi ptr [ %i.ad, %bb.j ], [ %.pre, %bb.k ], [ %i.ad, %bb.g ] ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.al, %i.ac
  br i1 %.not11.i.i.i, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12before_beginEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %i.al, %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit ] ; 2 uses
  %i.am = load ptr, ptr %.013.i.i.i, align 8, !tbaa !45 ; 2 uses
  store ptr null, ptr %.013.i.i.i, align 8, !tbaa !45
  %.not.i.i.i20 = icmp eq ptr %i.am, %i.ac
  br i1 %.not.i.i.i20, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12before_beginEv.exit, label %.lr.ph.i.i.i, !llvm.loop !56

_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12before_beginEv.exit: ; preds = %.lr.ph.i.i.i, %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit
  store ptr %i.ac, ptr %i.ac, align 8, !tbaa !45
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.ac, ptr %i.an, align 8, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 10 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !45 ; 4 uses
  %i.ar = icmp eq ptr %i.aq, %i.ap
  br i1 %i.ar, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12before_beginEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !46, !noalias !1130 ; 5 uses
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !45 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ao
  br i1 %i.av, label %bb.m, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12before_beginEv.exit.i

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !46
  br label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12before_beginEv.exit.i

_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12before_beginEv.exit.i: ; preds = %bb.m, %bb.l
  %.not.i.i21 = icmp eq ptr %0, %1
  %.not17.i.i22 = icmp eq ptr %i.ao, %i.at
  %or.cond.i.i23 = or i1 %.not.i.i21, %.not17.i.i22
  %.not18.i.i24 = icmp eq ptr %i.ap, %i.at
  %or.cond19.i.i25 = or i1 %.not18.i.i24, %or.cond.i.i23
  br i1 %or.cond19.i.i25, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12before_beginEv.exit.i
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !45
  store ptr %i.ax, ptr %i.ap, align 8, !tbaa !45
  store ptr %i.au, ptr %i.at, align 8, !tbaa !45
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !45
  %.pre38 = load ptr, ptr %i.ap, align 8, !tbaa !45
  br label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit

_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit: ; preds = %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12before_beginEv.exit.i, %bb.n, %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12before_beginEv.exit
  %i.ay = phi ptr [ %i.aq, %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12before_beginEv.exit.i ], [ %.pre38, %bb.n ], [ %i.aq, %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12before_beginEv.exit ] ; 2 uses
  %.not11.i.i.i27 = icmp eq ptr %i.ay, %i.ap
  br i1 %.not11.i.i.i27, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE5clearEv.exit, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit, %.lr.ph.i.i.i28
  %.013.i.i.i29 = phi ptr [ %i.az, %.lr.ph.i.i.i28 ], [ %i.ay, %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit ] ; 2 uses
  %i.az = load ptr, ptr %.013.i.i.i29, align 8, !tbaa !45 ; 2 uses
  store ptr null, ptr %.013.i.i.i29, align 8, !tbaa !45
  %.not.i.i.i30 = icmp eq ptr %i.az, %i.ap
  br i1 %.not.i.i.i30, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE5clearEv.exit, label %.lr.ph.i.i.i28, !llvm.loop !54

_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE5clearEv.exit: ; preds = %.lr.ph.i.i.i28, %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit
  store ptr %i.ap, ptr %i.ap, align 8, !tbaa !45
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.ap, ptr %i.ba, align 8, !tbaa !46
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bf = load <2 x i64>, ptr %i.bc, align 8, !tbaa !63
  %i.bg = load <2 x i64>, ptr %i.bd, align 8, !tbaa !63
  %i.bh = add <2 x i64> %i.bg, %i.bf
  store <2 x i64> %i.bh, ptr %i.bd, align 8, !tbaa !63
  store i64 0, ptr %i.bc, align 8, !tbaa !1116
  store i64 0, ptr %i.be, align 8, !tbaa !1137
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrINS_12SynchronizedINS_8SysArenaENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS8_22SynchronizedMutexLevelE1ELNS8_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !112, !range !1038, !noundef !265
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !109    ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.f = atomicrmw and ptr %i.e, i32 -401 seq_cst, align 4 ; 2 uses
  %i.g = and i32 %i.f, -401
  store i32 %i.g, ptr %i.a, align 4, !tbaa !101
  %i.h = and i32 %i.f, 15
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i, label %bb.d, !prof !100

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i unwind label %bb.e

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #33
  unreachable

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i
  ret void
}

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #30

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK5folly17ThreadCachedArena9totalSizeEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %1 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 4 uses
  %2 = alloca %"class.folly::ThreadLocalPtr<folly::SysArena, folly::ThreadCachedArena::ThreadLocalPtrTag>::Accessor", align 8 ; 5 uses
  %3 = alloca %"class.folly::LockedPtr.77", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS_18threadlocal_detail10StaticMetaINS_17ThreadCachedArena17ThreadLocalPtrTagEvEEvNS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8, !noalias !1138 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZN5folly18threadlocal_detail10StaticMetaINS_17ThreadCachedArena17ThreadLocalPtrTagEvE8instanceEv.exit.i, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS_18threadlocal_detail10StaticMetaINS_17ThreadCachedArena17ThreadLocalPtrTagEvEEvNS1_9ArgCreateILb0EEEEERT1_vE3arg), !noalias !1138, !inline_history !43
  br label %_ZN5folly18threadlocal_detail10StaticMetaINS_17ThreadCachedArena17ThreadLocalPtrTagEvE8instanceEv.exit.i

_ZN5folly18threadlocal_detail10StaticMetaINS_17ThreadCachedArena17ThreadLocalPtrTagEvE8instanceEv.exit.i: ; preds = %bb.b, %bb.a
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %i.h = load atomic i32, ptr %i.d acquire, align 8, !noalias !1138 ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, -1
  br i1 %.not.i.i, label %bb.c, label %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE16accessAllThreadsEv.exit

bb.c:                                             ; preds = %_ZN5folly18threadlocal_detail10StaticMetaINS_17ThreadCachedArena17ThreadLocalPtrTagEvE8instanceEv.exit.i
  %i.i = tail call noundef i32 @_ZN5folly18threadlocal_detail14StaticMetaBase8allocateEPNS1_7EntryIDE(ptr noundef nonnull align 8 dereferenceable(128) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.d), !noalias !1138
  br label %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE16accessAllThreadsEv.exit

_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE16accessAllThreadsEv.exit: ; preds = %_ZN5folly18threadlocal_detail10StaticMetaINS_17ThreadCachedArena17ThreadLocalPtrTagEvE8instanceEv.exit.i, %bb.c
  %.0.i.i = phi i32 [ %i.i, %bb.c ], [ %i.h, %_ZN5folly18threadlocal_detail10StaticMetaINS_17ThreadCachedArena17ThreadLocalPtrTagEvE8instanceEv.exit.i ]
  call void @_ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8AccessorC2Ej(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %.0.i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !109, !noalias !1141 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  %.neg.i.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 -48
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %.neg.i.i.i.i ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1144, !noalias !1141 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1144, !noalias !1141 ; 6 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor5beginEv.exit, label %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.preheader.i

_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.preheader.i: ; preds = %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE16accessAllThreadsEv.exit
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !1145, !noalias !1141
  %.not.i.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i, label %.lr.ph.i, label %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor5beginEv.exit

_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.i: ; preds = %.lr.ph.i
  %i.r = load ptr, ptr %i.t, align 8, !tbaa !1145, !noalias !1141
  %.not.i.i.i15 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i15, label %.lr.ph.i, label %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor5beginEv.exit, !llvm.loop !1147

.lr.ph.i:                                         ; preds = %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.preheader.i, %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.i
  %i.s = phi ptr [ %i.t, %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.i ], [ %i.m, %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.preheader.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 5 uses
  %i.u = icmp eq ptr %i.t, %i.o
  br i1 %i.u, label %._ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8IteratorC2EPKS5_b.exit.loopexit_crit_edge.i, label %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.i, !llvm.loop !1147

._ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8IteratorC2EPKS5_b.exit.loopexit_crit_edge.i: ; preds = %.lr.ph.i
  br label %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor5beginEv.exit, !llvm.loop !1147

_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor5beginEv.exit: ; preds = %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.i, %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE16accessAllThreadsEv.exit, %._ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8IteratorC2EPKS5_b.exit.loopexit_crit_edge.i, %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.preheader.i
  %.sroa.7.1 = phi ptr [ %i.m, %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE16accessAllThreadsEv.exit ], [ %i.t, %._ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8IteratorC2EPKS5_b.exit.loopexit_crit_edge.i ], [ %i.m, %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.preheader.i ], [ %i.t, %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.i ] ; 2 uses
  %.not31 = icmp eq ptr %.sroa.7.1, %i.o
  br i1 %.not31, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8IteratorppEv.exit, %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor5beginEv.exit
  %.011.lcssa = phi i64 [ 128, %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor5beginEv.exit ], [ %i.an, %_ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8IteratorppEv.exit ]
  call void @_ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8AccessorD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  store ptr %i.v, ptr %3, align 8, !tbaa !1068, !alias.scope !1148
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i16 0, ptr %i.w, align 8, !tbaa !1072, !alias.scope !1148
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 2 uses
  store i16 0, ptr %i.x, align 2, !tbaa !1073, !alias.scope !1148
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20, !noalias !1148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20, !noalias !1148
  %i.y = load atomic i32, ptr %i.v monotonic, align 8, !noalias !1148 ; 4 uses
  store i32 %i.y, ptr %i.c, align 4, !tbaa !101, !noalias !1148
  %i.z = and i32 %i.y, -1408
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.ab = or disjoint i32 %i.y, 2048
  %i.ac = cmpxchg ptr %i.v, i32 %i.y, i32 %i.ab seq_cst seq_cst, align 4, !noalias !1148 ; 2 uses
  %i.ad = extractvalue { i32, i1 } %i.ac, 1
  br i1 %i.ad, label %.thread, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.ae = extractvalue { i32, i1 } %i.ac, 0
  store i32 %i.ae, ptr %i.c, align 4, !noalias !1148
  br label %bb.f

.thread:                                          ; preds = %bb.d
  store i16 2, ptr %i.w, align 8, !tbaa !1072, !alias.scope !1148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20, !noalias !1148
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20, !noalias !1148
  %i.af = load ptr, ptr %3, align 8, !tbaa !1068  ; 3 uses
  %.not.i.i1845 = icmp eq ptr %i.af, null
  %i.ag = select i1 %.not.i.i1845, i64 64, i64 -32
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !1116
  br label %bb.l

.lr.ph:                                           ; preds = %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor5beginEv.exit, %_ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8IteratorppEv.exit
  %.01133 = phi i64 [ %i.an, %_ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8IteratorppEv.exit ], [ 128, %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor5beginEv.exit ]
  %.sroa.7.032 = phi ptr [ %.sroa.7.3, %_ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8IteratorppEv.exit ], [ %.sroa.7.1, %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor5beginEv.exit ] ; 2 uses
  %i.aj = load ptr, ptr %.sroa.7.032, align 8, !tbaa !1145
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1116
  %i.am = add i64 %.01133, 96
  %i.an = add i64 %i.am, %i.al                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.7.032, i64 24 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, %i.o
  br i1 %i.ap, label %_ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8IteratorppEv.exit, label %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.i19

_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.i19: ; preds = %.lr.ph, %bb.e
  %.sroa.7.2 = phi ptr [ %i.ar, %bb.e ], [ %i.ao, %.lr.ph ] ; 3 uses
  %i.aq = load ptr, ptr %.sroa.7.2, align 8, !tbaa !1145
  %.not.i.i.i20 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i20, label %bb.e, label %_ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8IteratorppEv.exit

bb.e:                                             ; preds = %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.i19
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.7.2, i64 24 ; 3 uses
  %i.as = icmp eq ptr %i.ar, %i.o
  br i1 %i.as, label %_ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8IteratorppEv.exit, label %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.i19, !llvm.loop !1147

_ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8IteratorppEv.exit: ; preds = %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.i19, %bb.e, %.lr.ph
  %.sroa.7.3 = phi ptr [ %i.ao, %.lr.ph ], [ %i.ar, %bb.e ], [ %.sroa.7.2, %_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor8Iterator5validEv.exit.i.i.i19 ] ; 2 uses
  %.not = icmp eq ptr %.sroa.7.3, %i.o
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %._crit_edge, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i
  %i.at = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.w, ptr noundef nonnull align 1 dereferenceable(1) %1) ; 0 uses
  %.pre = load i16, ptr %i.w, align 8, !tbaa !1072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20, !noalias !1148
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20, !noalias !1148
  %i.au = load ptr, ptr %3, align 8, !tbaa !1068  ; 9 uses
  %.not.i.i18 = icmp eq ptr %i.au, null
  %i.av = select i1 %.not.i.i18, i64 64, i64 -32
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !1116 ; 6 uses
  switch i16 %.pre, label %bb.l [
    i16 0, label %_ZN5folly9LockedPtrIKNS_12SynchronizedINS_8SysArenaENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE2ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit
    i16 1, label %bb.g
    i16 3, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.ay = load atomic i32, ptr %i.au acquire, align 4
  %i.az = and i32 %i.ay, 768
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.au)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.h
  br i1 %i.bb, label %_ZN5folly9LockedPtrIKNS_12SynchronizedINS_8SysArenaENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE2ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.noexc, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.bc = atomicrmw sub ptr %i.au, i32 2048 seq_cst, align 4 ; 2 uses
  %i.bd = add i32 %i.bc, -2048                    ; 2 uses
  store i32 %i.bd, ptr %i.b, align 4, !tbaa !101
  %i.be = icmp ugt i32 %i.bd, 2047
  %i.bf = and i32 %i.bc, 16
  %.not.i.i.i.i23 = icmp eq i32 %i.bf, 0
  %or.cond.i.i.i = or i1 %i.be, %.not.i.i.i.i23
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.j, !prof !1088

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.au, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.n

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedINS_8SysArenaENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE2ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.k:                                             ; preds = %bb.f
  %i.bg = load i16, ptr %i.x, align 2, !tbaa !1073
  %i.bh = zext i16 %i.bg to i64
  %i.bi = ptrtoint ptr %i.au to i64
  %.idx.i = shl nuw nsw i64 %i.bh, 5
  %i.bj = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.bk = cmpxchg ptr %i.bj, i64 %i.bi, i64 0 seq_cst seq_cst, align 8
  %i.bl = extractvalue { i64, i1 } %i.bk, 1
  br i1 %i.bl, label %_ZN5folly9LockedPtrIKNS_12SynchronizedINS_8SysArenaENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE2ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %.thread, %bb.f, %bb.k
  %i.bm = phi i64 [ %i.ai, %.thread ], [ %i.ax, %bb.f ], [ %i.ax, %bb.k ]
  %i.bn = phi ptr [ %i.af, %.thread ], [ %i.au, %bb.f ], [ %i.au, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
end_hunk_0
begin_hunk_1_@_ZN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEE9new_arrayEmRPNSB_5arrayE:bb.a
; Function Attrs: nobuiltin allocsize(0)
declare noalias noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(9) ptr @_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !112, !range !1038, !noundef !265
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !109    ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.g = atomicrmw and ptr %i.f, i32 -401 seq_cst, align 4 ; 2 uses
  %i.h = and i32 %i.g, -401
  store i32 %i.h, ptr %i.b, align 4, !tbaa !101
  %i.i = and i32 %i.g, 15
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i, label %bb.d, !prof !100

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i unwind label %bb.h

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  store i8 0, ptr %i.c, align 8, !tbaa !112
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit: ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i, %bb.b, %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !109
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !112, !range !1038, !noundef !265
  store ptr null, ptr %1, align 8, !tbaa !109
  store i8 0, ptr %i.k, align 8, !tbaa !112
  %i.m = load ptr, ptr %0, align 8, !tbaa !1174   ; 3 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !1174
  %i.n = load i8, ptr %i.c, align 8, !tbaa !1122, !range !1038, !noundef !265
  store i8 %i.l, ptr %i.c, align 8, !tbaa !1122
  %i.o = trunc nuw i8 %i.n to i1
  %.not.i.i = icmp ne ptr %i.m, null
  %or.cond.not = select i1 %i.o, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %bb.e, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.e:                                             ; preds = %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.p = atomicrmw and ptr %i.m, i32 -401 seq_cst, align 4 ; 2 uses
  %i.q = and i32 %i.p, -401
  store i32 %i.q, ptr %i.a, align 4, !tbaa !101
  %i.r = and i32 %i.p, 15
  %.not.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i, label %bb.f, !prof !100

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i unwind label %bb.g

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #33
  unreachable

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i
  store ptr null, ptr %1, align 8, !tbaa !109
  store i8 0, ptr %i.k, align 8, !tbaa !112
  ret ptr %0

bb.h:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor7releaseEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.std::unique_lock", align 8  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !112, !range !1038, !noundef !265
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store ptr null, ptr %1, align 8, !tbaa !109
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i8 0, ptr %i.h, align 8, !tbaa !112
  %i.i = call noundef nonnull align 8 dereferenceable(9) ptr @_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(9) %1) #20 ; 0 uses
  %i.j = load i8, ptr %i.h, align 8, !tbaa !112, !range !1038, !noundef !265
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEE6unlockEv.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8, !tbaa !109    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEE6unlockEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.m = atomicrmw and ptr %i.l, i32 -401 seq_cst, align 4 ; 2 uses
  %i.n = and i32 %i.m, -401
  store i32 %i.n, ptr %i.b, align 4, !tbaa !101
  %i.o = and i32 %i.m, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i, label %bb.e, !prof !100

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.l, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i unwind label %bb.f

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEE6unlockEv.exit

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #33
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEE6unlockEv.exit: ; preds = %bb.b, %bb.c, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.r = load i8, ptr %i.d, align 8, !tbaa !112, !range !1038, !noundef !265
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEE6unlockEv.exit
  call void @_ZSt20__throw_system_errori(i32 noundef 1) #35
  unreachable

bb.h:                                             ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEE6unlockEv.exit
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !109  ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.u = atomicrmw and ptr %i.t, i32 -401 seq_cst, align 4 ; 2 uses
  %i.v = and i32 %i.u, -401
  store i32 %i.v, ptr %i.a, align 4, !tbaa !101
  %i.w = and i32 %i.u, 15
  %.not.i.i.i1 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i1, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i, label %bb.j, !prof !100

bb.j:                                             ; preds = %bb.i
  call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.d, align 8, !tbaa !112
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit: ; preds = %bb.h, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.y = load i16, ptr %i.x, align 8, !tbaa !1072
  %.not.i2 = icmp eq i16 %i.y, 0
  br i1 %.not.i2, label %bb.k, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit, !prof !42

bb.k:                                             ; preds = %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit
  call void @_ZN5folly19shared_mutex_detail26throwOperationNotPermittedEv() #35
  unreachable

_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit: ; preds = %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1068
  call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4) %i.aa, ptr noundef nonnull align 2 dereferenceable(4) %i.x)
  store i32 0, ptr %i.x, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.ab, align 8, !tbaa !1153
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_var_init() #31 section ".text.startup" comdat($_ZN5folly18threadlocal_detail10StaticMetaINS_17ThreadCachedArena17ThreadLocalPtrTagEvE6uniqueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN5folly18threadlocal_detail10StaticMetaINS_17ThreadCachedArena17ThreadLocalPtrTagEvE6uniqueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN5folly18threadlocal_detail10StaticMetaINS_17ThreadCachedArena17ThreadLocalPtrTagEvE6uniqueE, align 8
  tail call void @_ZN5folly6detail14UniqueInstance7enforceERNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN5folly6detail14UniqueInstanceC1ITtTpTyENS_18threadlocal_detail10StaticMetaEJNS_17ThreadCachedArena17ThreadLocalPtrTagEEJvEEENS_5tag_tIJT_IJDpT0_DpT1_EEEEENS7_IJSA_EEENS7_IJSC_EEEE3arg) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly6detail5thunk4makeINS0_14UniqueInstance5ValueEJEEEPvDpT0_() #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  ret ptr %i.a
}

; Function Attrs: nounwind
declare void @_ZN5folly6detail14UniqueInstance7enforceERNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #28

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind }
attributes #21 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { cold mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree nounwind }
attributes #27 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { cold noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #33 = { noreturn nounwind }
attributes #34 = { builtin nounwind }
attributes #35 = { noreturn }
attributes #36 = { builtin allocsize(0) }
attributes #37 = { nounwind willreturn memory(none) }
attributes #38 = { cold }
attributes #39 = { cold nounwind }
attributes #40 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTSN5folly17ThreadCachedArenaE", !14, i64 0, !14, i64 8, !15, i64 16, !19, i64 24}
!14 = !{!"long", !10, i64 0}
!15 = !{!"_ZTSN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvEE", !16, i64 0}
!16 = !{!"_ZTSN5folly18threadlocal_detail14StaticMetaBase7EntryIDE", !17, i64 0}
!17 = !{!"_ZTSSt6atomicIjE", !18, i64 0}
!18 = !{!"_ZTSSt13__atomic_baseIjE", !9, i64 0}
!19 = !{!"_ZTSN5folly12SynchronizedINS_8SysArenaENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEE", !20, i64 0, !39, i64 96}
!20 = !{!"_ZTSN5folly8SysArenaE", !21, i64 0}
!21 = !{!"_ZTSN5folly5ArenaINS_12SysAllocatorIcEEEE", !22, i64 0, !23, i64 8, !32, i64 24, !34, i64 32, !38, i64 48, !38, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88}
!22 = !{!"_ZTSN5folly5ArenaINS_12SysAllocatorIcEEE12AllocAndSizeE", !14, i64 0}
!23 = !{!"_ZTSN5boost9intrusive5slistIN5folly5ArenaINS2_12SysAllocatorIcEEE5BlockEJNS0_11member_hookIS7_NS0_17slist_member_hookIJEEEXadL_ZNS7_4linkEEEEENS0_18constant_time_sizeILb0EEENS0_10cache_lastILb1EEEEEE", !24, i64 0}
!24 = !{!"_ZTSN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvEE", !25, i64 0}
!25 = !{!"_ZTSN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE6data_tE", !26, i64 0}
!26 = !{!"_ZTSN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE14root_plus_sizeE", !27, i64 0}
!27 = !{!"_ZTSN5boost9intrusive23header_holder_plus_lastINS0_6detail21default_header_holderINS0_17slist_node_traitsIPvEEEEPNS0_10slist_nodeIS5_EELb1EEE", !28, i64 0, !30, i64 8}
!28 = !{!"_ZTSN5boost9intrusive6detail21default_header_holderINS0_17slist_node_traitsIPvEEEE", !29, i64 0}
!29 = !{!"_ZTSN5boost9intrusive10slist_nodeIPvEE", !30, i64 0}
!30 = !{!"p1 _ZTSN5boost9intrusive10slist_nodeIPvEE", !31, i64 0}
!31 = !{!"any pointer", !10, i64 0}
!32 = !{!"_ZTSN5boost9intrusive14slist_iteratorINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEELb0EEE", !33, i64 0}
!33 = !{!"_ZTSN5boost9intrusive17iiterator_membersIPNS0_10slist_nodeIPvEEPKNS0_8mhtraitsIN5folly5ArenaINS7_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNSC_4linkEEEEELb0EEE", !30, i64 0}
!34 = !{!"_ZTSN5boost9intrusive5slistIN5folly5ArenaINS2_12SysAllocatorIcEEE10LargeBlockEJNS0_11member_hookIS7_NS0_17slist_member_hookIJEEEXadL_ZNS7_4linkEEEEENS0_18constant_time_sizeILb0EEENS0_10cache_lastILb1EEEEEE", !35, i64 0}
!35 = !{!"_ZTSN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvEE", !36, i64 0}
!36 = !{!"_ZTSN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE6data_tE", !37, i64 0}
!37 = !{!"_ZTSN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE14root_plus_sizeE", !27, i64 0}
!38 = !{!"p1 omnipotent char", !31, i64 0}
!39 = !{!"_ZTSN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEE", !17, i64 0}
!40 = !{!13, !14, i64 8}
!41 = !{!18, !9, i64 0}
!42 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!43 = distinct !{null}
!44 = !{!22, !14, i64 0}
!45 = !{!29, !30, i64 0}
!46 = !{!27, !30, i64 8}
!47 = !{!33, !30, i64 0}
!48 = !{!21, !14, i64 80}
!49 = !{!21, !14, i64 88}
!50 = !{!51, !38, i64 0}
!51 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !52, i64 0, !14, i64 8, !10, i64 16}
!52 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !38, i64 0}
!53 = !{!10, !10, i64 0}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = distinct !{!56, !55}
!57 = !{!52, !38, i64 0}
!58 = !{!51, !14, i64 8}
!59 = !{!60, !60, i64 0}
!60 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !31, i64 0}
!61 = !{!62, !62, i64 0}
!62 = !{!"vtable pointer", !11, i64 0}
!63 = !{!14, !14, i64 0}
!64 = !{!65, !65, i64 0}
!65 = !{!"short", !10, i64 0}
!66 = distinct !{!66, !55}
!67 = !{!31, !31, i64 0}
!68 = !{!69, !31, i64 48}
!69 = !{!"_ZTSN5folly8FunctionIFbvEEE", !10, i64 0, !31, i64 48, !31, i64 56}
!70 = !{!69, !31, i64 56}
!71 = !{!72, !31, i64 48}
!72 = !{!"_ZTSN5folly8FunctionIFvvEEE", !10, i64 0, !31, i64 48, !31, i64 56}
!73 = !{!72, !31, i64 56}
!74 = distinct !{null, null}
!75 = distinct !{null, null}
!76 = !{!77, !9, i64 80}
!77 = !{!"_ZTSN5folly18threadlocal_detail14StaticMetaBaseE", !78, i64 0, !81, i64 8, !86, i64 32, !39, i64 72, !39, i64 76, !9, i64 80, !31, i64 88, !88, i64 96, !89, i64 104, !94, i64 112}
!78 = !{!"_ZTSN5folly14relaxed_atomicIjEE", !79, i64 0}
!79 = !{!"_ZTSN5folly6detail28relaxed_atomic_integral_baseIjEE", !80, i64 0}
!80 = !{!"_ZTSN5folly6detail19relaxed_atomic_baseIjEE", !17, i64 0}
!81 = !{!"_ZTSSt6vectorIjSaIjEE", !82, i64 0}
!82 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !83, i64 0}
!83 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !84, i64 0}
!84 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!85 = !{!"p1 int", !31, i64 0}
!86 = !{!"_ZTSSt5mutex", !87, i64 0}
!87 = !{!"_ZTSSt12__mutex_base", !10, i64 0}
!88 = !{!"bool", !10, i64 0}
!89 = !{!"_ZTSN5folly14relaxed_atomicIlEE", !90, i64 0}
!90 = !{!"_ZTSN5folly6detail28relaxed_atomic_integral_baseIlEE", !91, i64 0}
!91 = !{!"_ZTSN5folly6detail19relaxed_atomic_baseIlEE", !92, i64 0}
!92 = !{!"_ZTSSt6atomicIlE", !93, i64 0}
!93 = !{!"_ZTSSt13__atomic_baseIlE", !14, i64 0}
!94 = !{!"_ZTSN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEEE", !95, i64 0, !97, i64 8}
!95 = !{!"_ZTSSt6atomicImE", !96, i64 0}
!96 = !{!"_ZTSSt13__atomic_baseImE", !14, i64 0}
!97 = !{!"_ZTSSt6atomicIPN5folly17atomic_grow_arrayINS0_12SynchronizedINS0_18threadlocal_detail14ThreadEntrySetENS0_15SharedMutexImplILb0EvS_NS0_24SharedMutexPolicyDefaultEEEEENS0_32atomic_grow_array_policy_defaultIS8_S_EEE5arrayEE", !98, i64 0}
!98 = !{!"_ZTSSt13__atomic_baseIPN5folly17atomic_grow_arrayINS0_12SynchronizedINS0_18threadlocal_detail14ThreadEntrySetENS0_15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEENS0_32atomic_grow_array_policy_defaultIS9_S6_EEE5arrayEE", !99, i64 0}
!99 = !{!"p1 _ZTSN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEE5arrayE", !31, i64 0}
!100 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!101 = !{!9, !9, i64 0}
!102 = !{!"branch_weights", i32 2146410443, i32 1073205}
!103 = !{!77, !31, i64 88}
!104 = !{!105, !105, i64 0}
!105 = !{!"p1 _ZTSN5folly12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEE", !31, i64 0}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv: argument 0"}
!108 = distinct !{!108, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv"}
!109 = !{!110, !111, i64 0}
!110 = !{!"_ZTSSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE", !111, i64 0, !88, i64 8}
!111 = !{!"p1 _ZTSN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEE", !31, i64 0}
!112 = !{!110, !88, i64 8}
!113 = !{!114, !115, i64 0}
!114 = !{!"_ZTSNSt12_Vector_baseIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE17_Vector_impl_dataE", !115, i64 0, !115, i64 8, !115, i64 16}
!115 = !{!"p1 _ZTSN5folly18threadlocal_detail14ThreadEntrySet7ElementE", !31, i64 0}
!116 = !{i64 0, i64 8, !67, i64 8, i64 8, !63, i64 16, i64 8, !117}
!117 = !{!118, !118, i64 0}
!118 = !{!"p1 _ZTSN5folly18threadlocal_detail11ThreadEntryE", !31, i64 0}
!119 = !{!99, !99, i64 0}
!120 = distinct !{!120, !55}
!121 = !{!84, !85, i64 0}
!122 = !{!84, !85, i64 16}
!123 = !{i64 0, i64 4, !101, i64 8, i64 8, !124}
!124 = !{!125, !125, i64 0}
!125 = !{!"p1 _ZTSNSt3_V214error_categoryE", !31, i64 0}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!128 = distinct !{!128, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!129 = !DISubprogram(name: "message", linkageName: "_ZNKSt3_V214error_category7messageB5cxx11Ei", scope: !131, file: !130, line: 134, type: !134, scopeLine: 134, containingType: !131, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!130 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/system_error", directory: "")
!131 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "error_category", scope: !132, file: !130, line: 106, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt3_V214error_categoryE")
!132 = !DINamespace(name: "_V2", scope: !133, exportSymbols: true)
!133 = !DINamespace(name: "std", scope: null)
!134 = !DISubroutineType(types: !135)
!135 = !{!136, !1017, !382}
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "string", scope: !133, file: !137, line: 77, baseType: !138)
!137 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/stringfwd.h", directory: "")
!138 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string<char, std::char_traits<char>, std::allocator<char> >", scope: !140, file: !139, line: 87, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !141, templateParams: !1015, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE")
!139 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/basic_string.h", directory: "")
!140 = !DINamespace(name: "__cxx11", scope: !133, exportSymbols: true)
!141 = !{!142, !257, !278, !279, !287, !291, !500, !505, !508, !511, !516, !519, !525, !526, !527, !530, !535, !538, !539, !542, !546, !551, !552, !553, !556, !559, !562, !565, !568, !569, !572, !634, !692, !695, !698, !701, !705, !708, !711, !712, !715, !716, !719, !722, !725, !728, !732, !737, !740, !743, !744, !748, !751, !754, !757, !760, !763, !766, !769, !770, !771, !776, !781, !782, !783, !784, !785, !786, !787, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !809, !815, !816, !817, !820, !823, !824, !825, !826, !827, !828, !829, !830, !833, !836, !837, !840, !841, !844, !845, !846, !847, !848, !849, !850, !851, !854, !857, !860, !863, !866, !869, !872, !876, !879, !882, !885, !886, !889, !892, !895, !898, !901, !904, !907, !910, !913, !916, !919, !922, !925, !928, !929, !932, !935, !936, !939, !942, !945, !946, !949, !952, !955, !958, !961, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !987, !990, !993, !996, !999, !1002, !1005, !1008, !1011, !1012, !1013, !1014}
!142 = !DIDerivedType(tag: DW_TAG_variable, name: "npos", scope: !138, file: !139, line: 112, baseType: !143, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 -1)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !138, file: !139, line: 99, baseType: !145, flags: DIFlagPublic)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !147, file: !146, line: 56, baseType: !233)
!146 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/ext/alloc_traits.h", directory: "")
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<char>, char>", scope: !148, file: !146, line: 45, size: 8, flags: DIFlagTypePassByValue, elements: !149, templateParams: !255, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIcEcEE")
!148 = !DINamespace(name: "__gnu_cxx", scope: null)
!149 = !{!150, !241, !244, !247, !251, !252, !253, !254}
!150 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !147, baseType: !151, extraData: i32 0)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<char> >", scope: !133, file: !152, line: 428, size: 8, flags: DIFlagTypePassByValue, elements: !153, templateParams: !239, identifier: "_ZTSSt16allocator_traitsISaIcEE")
!152 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/alloc_traits.h", directory: "", checksumkind: CSK_MD5, checksum: "ba5569b3568669c1c77efc18640dd1aa")
!153 = !{!154, !223, !227, !230, !236}
!154 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIcEE8allocateERS0_m", scope: !151, file: !152, line: 481, type: !155, scopeLine: 481, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!155 = !DISubroutineType(types: !156)
!156 = !{!157, !160, !222}
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !151, file: !152, line: 437, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!160 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !151, file: !152, line: 431, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<char>", scope: !133, file: !163, line: 287, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !164, templateParams: !200, identifier: "_ZTSSaIcE")
!163 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "9c5b773ad00830bea46f2a8fa4ac22e7")
!164 = !{!165, !202, !206, !211, !215, !216, !219}
!165 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !162, baseType: !166, flags: DIFlagPublic, extraData: i32 0)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__allocator_base<char>", scope: !133, file: !167, line: 47, baseType: !168)
!167 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/x86_64-linux-gnu/c++/13/bits/c++allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "f56d3b48d132e35738b60e08703928ec")
!168 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__new_allocator<char>", scope: !133, file: !169, line: 63, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !170, templateParams: !200, identifier: "_ZTSSt15__new_allocatorIcE")
!169 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/new_allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "c7892ebb1170c1f49c5be98396a83230")
!170 = !{!171, !175, !180, !184, !193, !196}
!171 = !DISubprogram(name: "__new_allocator", linkageName: "_ZNSt15__new_allocatorIcEC4Ev", scope: !168, file: !169, line: 88, type: !172, scopeLine: 88, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !174}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!175 = !DISubprogram(name: "__new_allocator", linkageName: "_ZNSt15__new_allocatorIcEC4ERKS0_", scope: !168, file: !169, line: 92, type: !176, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !174, !178}
!178 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!180 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__new_allocatorIcEaSERKS0_", scope: !168, file: !169, line: 100, type: !181, scopeLine: 100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!181 = !DISubroutineType(types: !182)
!182 = !{!183, !174, !178}
!183 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !168, size: 64)
!184 = !DISubprogram(name: "allocate", linkageName: "_ZNSt15__new_allocatorIcE8allocateEmPKv", scope: !168, file: !169, line: 126, type: !185, scopeLine: 126, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!185 = !DISubroutineType(types: !186)
end_hunk_1
