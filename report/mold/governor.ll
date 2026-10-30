Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/governor?download=true
inline.NumInlined: 164
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN3tbb6detail2r112release_implERNS0_2d121task_scheduler_handleE:bb.a

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #15
  unreachable

_ZN3tbb6detail2d114global_controlD2Ev.exit:       ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !116
  tail call void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef %i.d)
  store ptr null, ptr %0, align 8, !tbaa !116
  br label %bb.d

bb.d:                                             ; preds = %_ZN3tbb6detail2d114global_controlD2Ev.exit, %bb.a
  ret void
}

declare void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress sspstrong uwtable
define hidden noundef zeroext i1 @_ZN3tbb6detail2r113finalize_implERNS0_2d121task_scheduler_handleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !116
  %.not8 = icmp eq ptr %i.a, null
  br i1 %.not8, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3tbb6detail2r117assertion_failureEPKciS3_S3_(ptr noundef nonnull @__func__._ZN3tbb6detail2r113finalize_implERNS0_2d121task_scheduler_handleE, i32 noundef 317, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = tail call noundef zeroext i1 @_ZN3tbb6detail2r117threading_control10is_presentEv()
  br i1 %i.b, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.c = load i32, ptr @_ZN3tbb6detail2r18governor6theTLSE, align 4, !tbaa !84
  %i.d = tail call noundef ptr @pthread_getspecific(i32 noundef %i.c) #8 ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load i8, ptr %i.g, align 16, !tbaa !163, !range !86, !noundef !87
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  %i.k = load i8, ptr %i.j, align 2, !tbaa !85, !range !86, !noundef !87
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN3tbb6detail2r18governor14auto_terminateEPv(ptr noundef nonnull %i.d)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.d
  %i.m = load ptr, ptr %0, align 8, !tbaa !116
  %i.n = tail call noundef zeroext i1 @_ZN3tbb6detail2r125remove_and_check_if_emptyERNS0_2d114global_controlE(ptr noundef nonnull align 8 dereferenceable(20) %i.m)
  br i1 %i.n, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.o = tail call noundef zeroext i1 @_ZN3tbb6detail2r117threading_control27unregister_lifetime_controlEb(i1 noundef zeroext true)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.c
  %.1 = phi i1 [ true, %bb.c ], [ %i.o, %bb.i ], [ false, %bb.h ]
  ret i1 %.1
}

declare void @_ZN3tbb6detail2r117assertion_failureEPKciS3_S3_(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare noundef zeroext i1 @_ZN3tbb6detail2r117threading_control10is_presentEv() local_unnamed_addr #2

declare noundef zeroext i1 @_ZN3tbb6detail2r125remove_and_check_if_emptyERNS0_2d114global_controlE(ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN3tbb6detail2r117threading_control27unregister_lifetime_controlEb(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress sspstrong uwtable
define noundef zeroext i1 @_ZN3tbb6detail2r18finalizeERNS0_2d121task_scheduler_handleEl(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !116    ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN3tbb6detail2r112release_implERNS0_2d121task_scheduler_handleE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d114global_controlE(ptr noundef nonnull align 8 dereferenceable(20) %i.b)
          to label %_ZN3tbb6detail2d114global_controlD2Ev.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #15
  unreachable

_ZN3tbb6detail2d114global_controlD2Ev.exit.i:     ; preds = %bb.c
  %i.e = load ptr, ptr %0, align 8, !tbaa !116
  tail call void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef %i.e)
  store ptr null, ptr %0, align 8, !tbaa !116
  br label %_ZN3tbb6detail2r112release_implERNS0_2d121task_scheduler_handleE.exit

bb.e:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN3tbb6detail2r113finalize_implERNS0_2d121task_scheduler_handleE(ptr noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !116    ; 2 uses
  %.not.i9 = icmp eq ptr %i.g, null
  br i1 %.not.i9, label %_ZN3tbb6detail2r112release_implERNS0_2d121task_scheduler_handleE.exit11, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d114global_controlE(ptr noundef nonnull align 8 dereferenceable(20) %i.g)
          to label %_ZN3tbb6detail2d114global_controlD2Ev.exit.i10 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #15
  unreachable

_ZN3tbb6detail2d114global_controlD2Ev.exit.i10:   ; preds = %bb.f
  %i.j = load ptr, ptr %0, align 8, !tbaa !116
  tail call void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef %i.j)
  store ptr null, ptr %0, align 8, !tbaa !116
  br label %_ZN3tbb6detail2r112release_implERNS0_2d121task_scheduler_handleE.exit11

_ZN3tbb6detail2r112release_implERNS0_2d121task_scheduler_handleE.exit11: ; preds = %bb.e, %_ZN3tbb6detail2d114global_controlD2Ev.exit.i10
  %i.k = icmp ne i64 %1, 2
  %or.cond = or i1 %i.k, %i.f
  br i1 %or.cond, label %_ZN3tbb6detail2r112release_implERNS0_2d121task_scheduler_handleE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN3tbb6detail2r112release_implERNS0_2d121task_scheduler_handleE.exit11
  tail call void @_ZN3tbb6detail2r115throw_exceptionENS0_2d012exception_idE(i32 noundef 11)
  br label %_ZN3tbb6detail2r112release_implERNS0_2d121task_scheduler_handleE.exit

_ZN3tbb6detail2r112release_implERNS0_2d121task_scheduler_handleE.exit: ; preds = %_ZN3tbb6detail2d114global_controlD2Ev.exit.i, %bb.b, %_ZN3tbb6detail2r112release_implERNS0_2d121task_scheduler_handleE.exit11, %bb.h
  %.0 = phi i1 [ %i.f, %_ZN3tbb6detail2r112release_implERNS0_2d121task_scheduler_handleE.exit11 ], [ false, %bb.h ], [ true, %bb.b ], [ true, %_ZN3tbb6detail2d114global_controlD2Ev.exit.i ]
  ret i1 %.0
}

declare void @_ZN3tbb6detail2r115throw_exceptionENS0_2d012exception_idE(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress sspstrong uwtable
define internal noundef i32 @_ZN3tbb6detail2r1L29dummy_get_default_concurrencyEiii(i32 %0, i32 %1, i32 %2) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN3tbb6detail2r18governor19default_num_threadsEvE11num_threads acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN3tbb6detail2r18governor19default_num_threadsEv.exit, !prof !109

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tbb6detail2r18governor19default_num_threadsEvE11num_threads) #8
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN3tbb6detail2r18governor19default_num_threadsEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef i32 @_ZN3tbb6detail2r122AvailableHwConcurrencyEv()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.d, ptr @_ZZN3tbb6detail2r18governor19default_num_threadsEvE11num_threads, align 4, !tbaa !110
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tbb6detail2r18governor19default_num_threadsEvE11num_threads) #8
  br label %_ZN3tbb6detail2r18governor19default_num_threadsEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tbb6detail2r18governor19default_num_threadsEvE11num_threads) #8
  resume { ptr, i32 } %i.e

_ZN3tbb6detail2r18governor19default_num_threadsEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load i32, ptr @_ZZN3tbb6detail2r18governor19default_num_threadsEvE11num_threads, align 4, !tbaa !110
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal void @_ZN3tbb6detail2r1L27dummy_set_assertion_handlerEPFvPKciS3_S3_E(ptr nofree readnone captures(none) %0) #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define hidden void @_ZN3tbb6detail2r115system_topology19initialization_implEv() local_unnamed_addr #1 {
bb.a:
  %0 = alloca [1 x %"struct.tbb::detail::r1::dynamic_link_descriptor"], align 16 ; 4 uses
  %i.a = load atomic i8, ptr @_ZN3tbb6detail2r114__TBB_InitOnce18InitializationDoneE acquire, align 1, !range !86, !noundef !87
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN3tbb6detail2r18governor13one_time_initEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3tbb6detail2r123DoOneTimeInitializationEv()
  br label %_ZN3tbb6detail2r18governor13one_time_initEv.exit

_ZN3tbb6detail2r18governor13one_time_initEv.exit: ; preds = %bb.a, %bb.b
  %i.c = tail call noundef zeroext i1 @_ZN3tbb6detail2r112dynamic_linkEPKcPKNS1_23dynamic_link_descriptorEmPPvi(ptr noundef nonnull @.str.18, ptr noundef nonnull @_ZN3tbb6detail2r1L16TbbBindLinkTableE, i64 noundef 8, ptr noundef null, i32 noundef 26)
  br i1 %i.c, label %_ZN3tbb6detail2r115system_topology12_GLOBAL__N_126load_tbbbind_shared_objectEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3tbb6detail2r18governor13one_time_initEv.exit
  %i.d = tail call noundef zeroext i1 @_ZN3tbb6detail2r112dynamic_linkEPKcPKNS1_23dynamic_link_descriptorEmPPvi(ptr noundef nonnull @.str.19, ptr noundef nonnull @_ZN3tbb6detail2r1L16TbbBindLinkTableE, i64 noundef 8, ptr noundef null, i32 noundef 26)
  br i1 %i.d, label %_ZN3tbb6detail2r115system_topology12_GLOBAL__N_126load_tbbbind_shared_objectEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call noundef zeroext i1 @_ZN3tbb6detail2r112dynamic_linkEPKcPKNS1_23dynamic_link_descriptorEmPPvi(ptr noundef nonnull @.str.20, ptr noundef nonnull @_ZN3tbb6detail2r1L16TbbBindLinkTableE, i64 noundef 8, ptr noundef null, i32 noundef 26)
  %spec.select = select i1 %i.e, ptr @.str.20, ptr null
  br label %_ZN3tbb6detail2r115system_topology12_GLOBAL__N_126load_tbbbind_shared_objectEv.exit

_ZN3tbb6detail2r115system_topology12_GLOBAL__N_126load_tbbbind_shared_objectEv.exit: ; preds = %bb.d, %_ZN3tbb6detail2r18governor13one_time_initEv.exit, %bb.c
  %1 = phi ptr [ @.str.18, %_ZN3tbb6detail2r18governor13one_time_initEv.exit ], [ %spec.select, %bb.d ], [ @.str.19, %bb.c ] ; 3 uses
  %.not.not = icmp eq ptr %1, null
  br i1 %.not.not, label %bb.e, label %_ZN3tbb6detail2r115system_topology12_GLOBAL__N_126load_tbbbind_shared_objectEv.exit.a

_ZN3tbb6detail2r115system_topology12_GLOBAL__N_126load_tbbbind_shared_objectEv.exit.a: ; preds = %_ZN3tbb6detail2r115system_topology12_GLOBAL__N_126load_tbbbind_shared_objectEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) @__const._ZN3tbb6detail2r115system_topology19initialization_implEv.optional_set_assertion_handler, i64 24, i1 false)
  %i.f = call noundef zeroext i1 @_ZN3tbb6detail2r112dynamic_linkEPKcPKNS1_23dynamic_link_descriptorEmPPvi(ptr noundef nonnull %1, ptr noundef nonnull %0, i64 noundef 1, ptr noundef null, i32 noundef 26) ; 0 uses
  %i.g = load ptr, ptr @_ZN3tbb6detail2r125set_assertion_handler_ptrE, align 8, !tbaa !108
  call void %i.g(ptr noundef nonnull @_ZN3tbb6detail2r117assertion_failureEPKciS3_S3_)
  %i.h = load ptr, ptr @_ZN3tbb6detail2r1L30initialize_system_topology_ptrE, align 8, !tbaa !108
  call void %i.h(i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) @_ZN3tbb6detail2r115system_topology12_GLOBAL__N_116numa_nodes_countE, ptr noundef nonnull align 8 dereferenceable(8) @_ZN3tbb6detail2r115system_topology12_GLOBAL__N_118numa_nodes_indexesE, ptr noundef nonnull align 4 dereferenceable(4) @_ZN3tbb6detail2r115system_topology12_GLOBAL__N_116core_types_countE, ptr noundef nonnull align 8 dereferenceable(8) @_ZN3tbb6detail2r115system_topology12_GLOBAL__N_118core_types_indexesE)
  call void (ptr, ptr, ...) @_ZN3tbb6detail2r121PrintExtraVersionInfoEPKcS3_z(ptr noundef nonnull @.str.6, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #8
  br label %bb.f

bb.e:                                             ; preds = %_ZN3tbb6detail2r115system_topology12_GLOBAL__N_126load_tbbbind_shared_objectEv.exit
  store i32 1, ptr @_ZN3tbb6detail2r115system_topology12_GLOBAL__N_116numa_nodes_countE, align 4, !tbaa !110
  store ptr @_ZZN3tbb6detail2r115system_topology19initialization_implEvE11dummy_index, ptr @_ZN3tbb6detail2r115system_topology12_GLOBAL__N_118numa_nodes_indexesE, align 8, !tbaa !118
  store i32 1, ptr @_ZN3tbb6detail2r115system_topology12_GLOBAL__N_116core_types_countE, align 4, !tbaa !110
  store ptr @_ZZN3tbb6detail2r115system_topology19initialization_implEvE11dummy_index, ptr @_ZN3tbb6detail2r115system_topology12_GLOBAL__N_118core_types_indexesE, align 8, !tbaa !118
  tail call void (ptr, ptr, ...) @_ZN3tbb6detail2r121PrintExtraVersionInfoEPKcS3_z(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7)
  br label %bb.f

bb.f:                                             ; preds = %_ZN3tbb6detail2r115system_topology12_GLOBAL__N_126load_tbbbind_shared_objectEv.exit.a, %bb.e
  ret void
}

declare extern_weak void @__TBB_internal_set_tbbbind_assertion_handler(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

declare noundef zeroext i1 @_ZN3tbb6detail2r112dynamic_linkEPKcPKNS1_23dynamic_link_descriptorEmPPvi(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN3tbb6detail2r121PrintExtraVersionInfoEPKcS3_z(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress sspstrong uwtable
define hidden void @_ZN3tbb6detail2r115system_topology10initializeEv() local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN3tbb6detail2r115system_topologyL20initialization_stateE acquire, align 4
  %.not9.i = icmp eq i32 %i.a, 2
  br i1 %.not9.i, label %_ZN3tbb6detail2d014atomic_do_onceIFvvEEEvRKT_RSt6atomicINS1_13do_once_stateEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN3tbb6detail2d015spin_wait_whileINS1_13do_once_stateEZNS1_18spin_wait_while_eqIS3_S3_EET_RKSt6atomicIS5_ET0_St12memory_orderEUlS3_E_EES5_S9_SA_SB_.exit.i
  %i.b = load atomic i32, ptr @_ZN3tbb6detail2r115system_topologyL20initialization_stateE monotonic, align 4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZNSt6atomicIN3tbb6detail2d013do_once_stateEE23compare_exchange_strongERS3_S3_St12memory_orderS6_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = cmpxchg ptr @_ZN3tbb6detail2r115system_topologyL20initialization_stateE, i32 0, i32 1 seq_cst seq_cst, align 4
  %i.e = extractvalue { i32, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZNSt6atomicIN3tbb6detail2d013do_once_stateEE23compare_exchange_strongERS3_S3_St12memory_orderS6_.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3tbb6detail2r115system_topology19initialization_implEv(), !inline_history !0
  store atomic i32 2, ptr @_ZN3tbb6detail2r115system_topologyL20initialization_stateE release, align 4
  br label %_ZN3tbb6detail2d014atomic_do_onceIFvvEEEvRKT_RSt6atomicINS1_13do_once_stateEE.exit

_ZNSt6atomicIN3tbb6detail2d013do_once_stateEE23compare_exchange_strongERS3_S3_St12memory_orderS6_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.f = load atomic i32, ptr @_ZN3tbb6detail2r115system_topologyL20initialization_stateE acquire, align 4
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %.lr.ph.i.i, label %_ZN3tbb6detail2d015spin_wait_whileINS1_13do_once_stateEZNS1_18spin_wait_while_eqIS3_S3_EET_RKSt6atomicIS5_ET0_St12memory_orderEUlS3_E_EES5_S9_SA_SB_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6atomicIN3tbb6detail2d013do_once_stateEE23compare_exchange_strongERS3_S3_St12memory_orderS6_.exit.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i
  %.sroa.0.09.us.i.i = phi i32 [ %.sroa.0.1.us.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i ], [ 1, %_ZNSt6atomicIN3tbb6detail2d013do_once_stateEE23compare_exchange_strongERS3_S3_St12memory_orderS6_.exit.i ] ; 8 uses
  %i.h = icmp slt i32 %.sroa.0.09.us.i.i, 17
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.i = tail call noundef i32 @sched_yield() #8  ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.j = icmp sgt i32 %.sroa.0.09.us.i.i, 0
  br i1 %i.j, label %.lr.ph.i.i.us.i.i.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i

.lr.ph.i.i.us.i.i.preheader:                      ; preds = %bb.e
  %xtraiter = and i32 %.sroa.0.09.us.i.i, 7       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.us.i.i.prol.loopexit, label %.lr.ph.i.i.us.i.i.prol

.lr.ph.i.i.us.i.i.prol:                           ; preds = %.lr.ph.i.i.us.i.i.preheader, %.lr.ph.i.i.us.i.i.prol
  %.01.i.i.us.i.i.prol = phi i32 [ %i.k, %.lr.ph.i.i.us.i.i.prol ], [ %.sroa.0.09.us.i.i, %.lr.ph.i.i.us.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.us.i.i.prol ], [ 0, %.lr.ph.i.i.us.i.i.preheader ]
  %i.k = add nsw i32 %.01.i.i.us.i.i.prol, -1     ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.us.i.i.prol.loopexit, label %.lr.ph.i.i.us.i.i.prol, !llvm.loop !164

.lr.ph.i.i.us.i.i.prol.loopexit:                  ; preds = %.lr.ph.i.i.us.i.i.prol, %.lr.ph.i.i.us.i.i.preheader
  %.01.i.i.us.i.i.unr = phi i32 [ %.sroa.0.09.us.i.i, %.lr.ph.i.i.us.i.i.preheader ], [ %i.k, %.lr.ph.i.i.us.i.i.prol ]
  %i.l = icmp ult i32 %.sroa.0.09.us.i.i, 8
  br i1 %i.l, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i, label %.lr.ph.i.i.us.i.i

.lr.ph.i.i.us.i.i:                                ; preds = %.lr.ph.i.i.us.i.i.prol.loopexit, %.lr.ph.i.i.us.i.i
  %.01.i.i.us.i.i = phi i32 [ %i.m, %.lr.ph.i.i.us.i.i ], [ %.01.i.i.us.i.i.unr, %.lr.ph.i.i.us.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.m = add nsw i32 %.01.i.i.us.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.n = icmp sgt i32 %.01.i.i.us.i.i, 8
  br i1 %i.n, label %.lr.ph.i.i.us.i.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i, !llvm.loop !1

_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i: ; preds = %.lr.ph.i.i.us.i.i.prol.loopexit, %.lr.ph.i.i.us.i.i, %bb.e
  %i.o = shl i32 %.sroa.0.09.us.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i, %bb.d
  %.sroa.0.1.us.i.i = phi i32 [ %i.o, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i ], [ %.sroa.0.09.us.i.i, %bb.d ]
  %i.p = load atomic i32, ptr @_ZN3tbb6detail2r115system_topologyL20initialization_stateE acquire, align 4
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %.lr.ph.i.i, label %_ZN3tbb6detail2d015spin_wait_whileINS1_13do_once_stateEZNS1_18spin_wait_while_eqIS3_S3_EET_RKSt6atomicIS5_ET0_St12memory_orderEUlS3_E_EES5_S9_SA_SB_.exit.i, !llvm.loop !2

_ZN3tbb6detail2d015spin_wait_whileINS1_13do_once_stateEZNS1_18spin_wait_while_eqIS3_S3_EET_RKSt6atomicIS5_ET0_St12memory_orderEUlS3_E_EES5_S9_SA_SB_.exit.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i, %_ZNSt6atomicIN3tbb6detail2d013do_once_stateEE23compare_exchange_strongERS3_S3_St12memory_orderS6_.exit.i
  %i.r = load atomic i32, ptr @_ZN3tbb6detail2r115system_topologyL20initialization_stateE acquire, align 4
  %.not.i = icmp eq i32 %i.r, 2
  br i1 %.not.i, label %_ZN3tbb6detail2d014atomic_do_onceIFvvEEEvRKT_RSt6atomicINS1_13do_once_stateEE.exit, label %.lr.ph.i, !llvm.loop !3

_ZN3tbb6detail2d014atomic_do_onceIFvvEEEvRKT_RSt6atomicINS1_13do_once_stateEE.exit: ; preds = %_ZN3tbb6detail2d015spin_wait_whileINS1_13do_once_stateEZNS1_18spin_wait_while_eqIS3_S3_EET_RKSt6atomicIS5_ET0_St12memory_orderEUlS3_E_EES5_S9_SA_SB_.exit.i, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define hidden noundef ptr @_ZN3tbb6detail2r125construct_binding_handlerEiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN3tbb6detail2r115system_topologyL20initialization_stateE acquire, align 4
  %.not9.i.i = icmp eq i32 %i.a, 2
  br i1 %.not9.i.i, label %_ZN3tbb6detail2r115system_topology10initializeEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN3tbb6detail2d015spin_wait_whileINS1_13do_once_stateEZNS1_18spin_wait_while_eqIS3_S3_EET_RKSt6atomicIS5_ET0_St12memory_orderEUlS3_E_EES5_S9_SA_SB_.exit.i.i
  %i.b = load atomic i32, ptr @_ZN3tbb6detail2r115system_topologyL20initialization_stateE monotonic, align 4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZNSt6atomicIN3tbb6detail2d013do_once_stateEE23compare_exchange_strongERS3_S3_St12memory_orderS6_.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.d = cmpxchg ptr @_ZN3tbb6detail2r115system_topologyL20initialization_stateE, i32 0, i32 1 seq_cst seq_cst, align 4
  %i.e = extractvalue { i32, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZNSt6atomicIN3tbb6detail2d013do_once_stateEE23compare_exchange_strongERS3_S3_St12memory_orderS6_.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3tbb6detail2r115system_topology19initialization_implEv(), !inline_history !0
  store atomic i32 2, ptr @_ZN3tbb6detail2r115system_topologyL20initialization_stateE release, align 4
  br label %_ZN3tbb6detail2r115system_topology10initializeEv.exit

_ZNSt6atomicIN3tbb6detail2d013do_once_stateEE23compare_exchange_strongERS3_S3_St12memory_orderS6_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.f = load atomic i32, ptr @_ZN3tbb6detail2r115system_topologyL20initialization_stateE acquire, align 4
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d015spin_wait_whileINS1_13do_once_stateEZNS1_18spin_wait_while_eqIS3_S3_EET_RKSt6atomicIS5_ET0_St12memory_orderEUlS3_E_EES5_S9_SA_SB_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6atomicIN3tbb6detail2d013do_once_stateEE23compare_exchange_strongERS3_S3_St12memory_orderS6_.exit.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i.i
  %.sroa.0.09.us.i.i.i = phi i32 [ %.sroa.0.1.us.i.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i.i ], [ 1, %_ZNSt6atomicIN3tbb6detail2d013do_once_stateEE23compare_exchange_strongERS3_S3_St12memory_orderS6_.exit.i.i ] ; 8 uses
  %i.h = icmp slt i32 %.sroa.0.09.us.i.i.i, 17
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.i = tail call noundef i32 @sched_yield() #8  ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.j = icmp sgt i32 %.sroa.0.09.us.i.i.i, 0
  br i1 %i.j, label %.lr.ph.i.i.us.i.i.i.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i.i

.lr.ph.i.i.us.i.i.i.preheader:                    ; preds = %bb.e
  %xtraiter = and i32 %.sroa.0.09.us.i.i.i, 7     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.us.i.i.i.prol.loopexit, label %.lr.ph.i.i.us.i.i.i.prol

.lr.ph.i.i.us.i.i.i.prol:                         ; preds = %.lr.ph.i.i.us.i.i.i.preheader, %.lr.ph.i.i.us.i.i.i.prol
  %.01.i.i.us.i.i.i.prol = phi i32 [ %i.k, %.lr.ph.i.i.us.i.i.i.prol ], [ %.sroa.0.09.us.i.i.i, %.lr.ph.i.i.us.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.us.i.i.i.prol ], [ 0, %.lr.ph.i.i.us.i.i.i.preheader ]
  %i.k = add nsw i32 %.01.i.i.us.i.i.i.prol, -1   ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.us.i.i.i.prol.loopexit, label %.lr.ph.i.i.us.i.i.i.prol, !llvm.loop !165

.lr.ph.i.i.us.i.i.i.prol.loopexit:                ; preds = %.lr.ph.i.i.us.i.i.i.prol, %.lr.ph.i.i.us.i.i.i.preheader
  %.01.i.i.us.i.i.i.unr = phi i32 [ %.sroa.0.09.us.i.i.i, %.lr.ph.i.i.us.i.i.i.preheader ], [ %i.k, %.lr.ph.i.i.us.i.i.i.prol ]
  %i.l = icmp ult i32 %.sroa.0.09.us.i.i.i, 8
  br i1 %i.l, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i.i, label %.lr.ph.i.i.us.i.i.i

.lr.ph.i.i.us.i.i.i:                              ; preds = %.lr.ph.i.i.us.i.i.i.prol.loopexit, %.lr.ph.i.i.us.i.i.i
  %.01.i.i.us.i.i.i = phi i32 [ %i.m, %.lr.ph.i.i.us.i.i.i ], [ %.01.i.i.us.i.i.i.unr, %.lr.ph.i.i.us.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.m = add nsw i32 %.01.i.i.us.i.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.n = icmp sgt i32 %.01.i.i.us.i.i.i, 8
  br i1 %i.n, label %.lr.ph.i.i.us.i.i.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i.i, !llvm.loop !1

_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i.i: ; preds = %.lr.ph.i.i.us.i.i.i.prol.loopexit, %.lr.ph.i.i.us.i.i.i, %bb.e
  %i.o = shl i32 %.sroa.0.09.us.i.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i.i: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i.i, %bb.d
  %.sroa.0.1.us.i.i.i = phi i32 [ %i.o, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i.i ], [ %.sroa.0.09.us.i.i.i, %bb.d ]
  %i.p = load atomic i32, ptr @_ZN3tbb6detail2r115system_topologyL20initialization_stateE acquire, align 4
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d015spin_wait_whileINS1_13do_once_stateEZNS1_18spin_wait_while_eqIS3_S3_EET_RKSt6atomicIS5_ET0_St12memory_orderEUlS3_E_EES5_S9_SA_SB_.exit.i.i, !llvm.loop !2

_ZN3tbb6detail2d015spin_wait_whileINS1_13do_once_stateEZNS1_18spin_wait_while_eqIS3_S3_EET_RKSt6atomicIS5_ET0_St12memory_orderEUlS3_E_EES5_S9_SA_SB_.exit.i.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i.i, %_ZNSt6atomicIN3tbb6detail2d013do_once_stateEE23compare_exchange_strongERS3_S3_St12memory_orderS6_.exit.i.i
  %i.r = load atomic i32, ptr @_ZN3tbb6detail2r115system_topologyL20initialization_stateE acquire, align 4
  %.not.i.i = icmp eq i32 %i.r, 2
  br i1 %.not.i.i, label %_ZN3tbb6detail2r115system_topology10initializeEv.exit, label %.lr.ph.i.i, !llvm.loop !3

end_hunk_0
