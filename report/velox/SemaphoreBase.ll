inline.NumInlined: 791
inline.NumDeleted: 470
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE:bb.a
bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  resume { ptr, i32 } %i.g

bb.f:                                             ; preds = %bb.d
  %.pr = load ptr, ptr %1, align 8, !tbaa !440    ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5folly7futures6detail13UniqueDeleterclEPNS1_16DeferredExecutorE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.pr)
          to label %_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #25
  unreachable

_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev.exit: ; preds = %bb.c, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.b, %_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev.exit
  ret void
}

declare void @_ZN5folly7futures6detail8CoreBase21stealDeferredExecutorEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.48") align 8, ptr noundef nonnull align 16 dereferenceable(136)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN5folly13async_tracing20logSemiFutureDiscardENS0_18DiscardHasDeferredE(i32 noundef) local_unnamed_addr #6

declare void @_ZN5folly7futures6detail16DeferredExecutor6detachEv(ptr noundef nonnull align 16 dereferenceable(112)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !440    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5folly7futures6detail13UniqueDeleterclEPNS1_16DeferredExecutorE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #25
  unreachable
}

declare void @_ZN5folly7futures6detail13UniqueDeleterclEPNS1_16DeferredExecutorE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK5folly6fibers13SemaphoreBase11getCapacityEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #22 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !442
  ret i64 %i.a
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i64 @_ZNK5folly6fibers13SemaphoreBase18getAvailableTokensEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.resume(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0) #12 align 2 personality ptr @__gxx_personality_v0 {
CoroEnd:
  %.reload.addr13 = getelementptr inbounds nuw i8, ptr %0, i64 97
  store ptr null, ptr %0, align 8
  tail call void @_ZN5folly4coro6detail12ViaCoroutineILb0EE12promise_type12FinalAwaiter13await_suspendENSt7__n486116coroutine_handleIS4_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr13, ptr nonnull %0) #5
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.destroy(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) initializes((16, 24)) %0) #12 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly4coro6detail23ViaCoroutinePromiseBaseE, i64 16), ptr %.reload.addr14, align 8, !tbaa !117
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.a

bb.a:                                             ; preds = %resume.entry
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !151
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !153
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !117
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5, !call_target !154, !inline_history !303
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !117
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5, !call_target !162, !inline_history !303
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.c:                                             ; preds = %bb.a
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !163
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from., label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11: ; preds = %bb.c
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.: ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from., %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11
  %.0.i.i.i.i.i = phi i32 [ %i.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11 ], [ %i.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from. ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.d, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !31

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5, !inline_history !304
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.b, %resume.entry
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !107  ; 2 uses
  %i.t = and i64 %i.s, -4                         ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %.not.i.i1.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i1.i, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  store i64 0, ptr %i.r, align 8, !tbaa !116
  %i.v = and i64 %i.s, 3
  %.not3.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not3.i.i.i, label %bb.f, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !117
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #5, !call_target !119, !inline_history !305
  br label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit

_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.e, %bb.f
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 104)
          to label %CoroEnd unwind label %bb.g

bb.g:                                             ; preds = %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #25
  unreachable

CoroEnd:                                          ; preds = %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5folly6fibers13SemaphoreBase14co_wait_commonEl.resume(ptr noundef nonnull align 16 dereferenceable(320) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"struct.folly::OperationCancelled", align 8 ; 5 uses
  %2 = alloca %class.anon.30, align 8             ; 4 uses
  %.reload.addr131 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 7 uses
  %.reload.addr132 = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %.reload.addr133 = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 7 uses
  %.reload.addr134 = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %.reload.addr138 = getelementptr inbounds nuw i8, ptr %0, i64 313 ; 3 uses
  %.reload.addr141 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 5 uses
  %index = load i2, ptr %index.addr, align 8
  switch i2 %index, label %unreachable [
    i2 0, label %.from..critedge
    i2 1, label %AfterCoroSuspend83
    i2 -2, label %CoroEnd
  ]

.from..critedge:                                  ; preds = %resume.entry
  %.reload.addr118 = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %.reload119 = load ptr, ptr %.reload.addr118, align 8, !tbaa !455 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.reload119, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = getelementptr inbounds nuw i8, ptr %.reload119, i64 32 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.reload119, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.reload119, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.reload.addr127 = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 5 uses
  br label %bb.a

bb.a:                                             ; preds = %.from._ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit, %.from..critedge
  %.054 = phi i64 [ %i.c, %.from..critedge ], [ %i.ct, %.from._ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit ] ; 2 uses
  %.reload128 = load i64, ptr %.reload.addr127, align 16, !tbaa !455 ; 2 uses
  %i.j = icmp slt i64 %.054, %.reload128
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.ac
  %.reload124 = load i64, ptr %.reload.addr127, align 16, !tbaa !455
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.reload.addr132, i8 0, i64 24, i1 false)
  store i64 %.reload124, ptr %i.d, align 8, !tbaa !20
  %i.k = load atomic i32, ptr %i.e acquire, align 8, !noalias !457 ; 4 uses
  store i32 %i.k, ptr %.reload.addr131, align 16, !tbaa !7, !noalias !457
  %i.l = and i32 %i.k, -1312
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %.critedge.i.i.i.i.i.i.i, !prof !14

bb.b:                                             ; preds = %.lr.ph
  %i.n = or disjoint i32 %i.k, 128
  %i.o = cmpxchg ptr %i.e, i32 %i.k, i32 %i.n seq_cst seq_cst, align 4, !noalias !457 ; 2 uses
  %i.p = extractvalue { i32, i1 } %i.o, 1
  br i1 %i.p, label %.noexc, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, !prof !15

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.q = extractvalue { i32, i1 } %i.o, 0
  store i32 %i.q, ptr %.reload.addr131, align 16, !noalias !457
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %.lr.ph
  %i.r = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %.reload.addr131, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr133)
          to label %.noexc unwind label %.from.111 ; 0 uses

.noexc:                                           ; preds = %.critedge.i.i.i.i.i.i.i, %bb.b
  %.reload126 = load i64, ptr %.reload.addr127, align 16, !tbaa !455
  %i.s = load atomic i64, ptr %i.b acquire, align 8
  %.not.not.i = icmp slt i64 %i.s, %.reload126    ; 2 uses
  br i1 %.not.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  store ptr %i.t, ptr %i.i, align 16, !tbaa !26
  store ptr %i.f, ptr %i.g, align 8, !tbaa !16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !26
  store ptr %i.g, ptr %i.t, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.u = atomicrmw and ptr %i.e, i32 -401 seq_cst, align 4 ; 2 uses
  %i.v = and i32 %i.u, -401
  store i32 %i.v, ptr %i.a, align 4, !tbaa !7
  %i.w = and i32 %i.u, 15
  %.not.i.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.e, !prof !14

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #25
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br i1 %.not.not.i, label %bb.h, label %bb.ac

.from.111:                                        ; preds = %.critedge.i.i.i.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ad

bb.h:                                             ; preds = %bb.g
  %.reload = load ptr, ptr %.reload.addr118, align 8, !tbaa !455
  store i8 0, ptr %.reload.addr138, align 1, !tbaa !141
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr131, i8 0, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %.reload, ptr %i.ac, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %.reload.addr132, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.reload.addr138, ptr %.sroa.5.0..sroa_idx, align 16
  store ptr @"_ZN5folly6detail8function5call_IZNS_6fibers13SemaphoreBase14co_wait_commonElE3$_0Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE", ptr %i.ad, align 16, !tbaa !167
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm32EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.ae, align 8, !tbaa !85
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr null, ptr %i.af, align 16, !tbaa !460
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 0, ptr %i.ag, align 8, !tbaa !461
  %i.ah = load ptr, ptr %i.aa, align 16, !tbaa !462 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %.from..i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = call noundef zeroext i1 @_ZN5folly6detail17CancellationState14tryAddCallbackEPNS_20CancellationCallbackEb(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr131, i1 noundef zeroext true) #5
  br i1 %i.ai, label %bb.j, label %.from..i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.aa, align 16, !tbaa !462
  store ptr %i.aj, ptr %i.ab, align 16, !tbaa !75
  br label %.from..i.i.i.i

.from..i.i.i.i:                                   ; preds = %bb.j, %bb.i, %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !96, !noalias !463
  %i.am = icmp eq i8 %i.al, 2
  %i.an = zext i1 %i.am to i8
  store i8 %i.an, ptr %i.ak, align 1, !tbaa !96, !noalias !463
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !107, !noalias !466
  call void @llvm.experimental.noalias.scope.decl(metadata !469)
  call void @llvm.experimental.noalias.scope.decl(metadata !472)
  %i.aq = invoke noundef ptr @folly_coro_async_malloc(i64 noundef 104)
          to label %.from.100 unwind label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit38.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i, !noalias !469 ; 8 uses

_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit38.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i: ; preds = %.from..i.i.i.i
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.110

.from.100:                                        ; preds = %.from..i.i.i.i
  %i.as = or i64 %i.ap, 2
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.resume, ptr %i.aq, align 8, !noalias !475
  %destroy.addr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.destroy, ptr %destroy.addr.i.i.i.i, align 8, !noalias !475
  %.reload.addr14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.au, i8 0, i64 56, i1 false), !noalias !475
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_, ptr %i.av, align 8, !tbaa !49, !noalias !475
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly4coro6detail12ViaCoroutineILb0EE12promise_typeE, i64 16), ptr %.reload.addr14.i.i.i.i, align 8, !tbaa !117, !noalias !475
  store ptr %i.aq, ptr %.reload.addr133, align 16, !tbaa !54, !alias.scope !476
  %index.addr15.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  store i1 false, ptr %index.addr15.i.i.i.i, align 8, !noalias !475
  store i64 %i.as, ptr %i.at, align 8, !tbaa !107, !noalias !475
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly6fibers6detail20BatonAwaitableWaiterE, i64 16), ptr %i.aw, align 8, !tbaa !117, !alias.scope !479
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr null, ptr %i.ax, align 16, !tbaa !321, !alias.scope !479
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %.reload.addr132, ptr %i.ay, align 8, !tbaa !484, !alias.scope !479
  %i.az = load atomic i64, ptr %.reload.addr132 seq_cst, align 16
  %i.ba = icmp eq i64 %i.az, -1
  br i1 %i.ba, label %AfterCoroSuspend83, label %AfterCoroSave81

AfterCoroSave81:                                  ; preds = %.from.100
  store i2 1, ptr %index.addr, align 8
  invoke void @_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE13await_suspendINS0_6detail11TaskPromiseIvEEEEvNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr133, ptr nonnull %0)
          to label %CoroEnd unwind label %bb.k

bb.k:                                             ; preds = %AfterCoroSave81
  %i.bb = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.bc = load ptr, ptr %.reload.addr133, align 16, !tbaa !58 ; 3 uses
  %.not.i.i31 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i31, label %.from.110, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  invoke void %i.be(ptr nonnull %i.bc)
          to label %.from.110 unwind label %bb.m, !inline_history !485

bb.m:                                             ; preds = %bb.l
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #25
  unreachable

AfterCoroSuspend83:                               ; preds = %resume.entry, %.from.100
  %i.bh = load ptr, ptr %.reload.addr133, align 16, !tbaa !58 ; 3 uses
  %.not.i.i32 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i32, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %AfterCoroSuspend83
  store i64 0, ptr %.reload.addr133, align 16, !tbaa !54
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  invoke void %i.bj(ptr nonnull %i.bh)
          to label %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE12await_resumeEv.exit unwind label %bb.o, !inline_history !485

bb.o:                                             ; preds = %bb.n
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #25
  unreachable

_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE12await_resumeEv.exit: ; preds = %bb.n
  %.pr = load ptr, ptr %.reload.addr133, align 16, !tbaa !58 ; 3 uses
  %.not.i.i33 = icmp eq ptr %.pr, null
  br i1 %.not.i.i33, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE12await_resumeEv.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  invoke void %i.bn(ptr nonnull %.pr)
          to label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit unwind label %bb.q, !inline_history !485

bb.q:                                             ; preds = %bb.p
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #25
  unreachable

_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit: ; preds = %bb.p, %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE12await_resumeEv.exit, %AfterCoroSuspend83
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.br = load ptr, ptr %i.bq, align 16, !tbaa !75 ; 2 uses
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit
  call void @_ZN5folly6detail17CancellationState14removeCallbackEPNS_20CancellationCallbackE(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr131) #5
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !85 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i35, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bv = call noundef i64 %i.bt(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.bu, ptr noundef null) #5, !inline_history !486 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.bw = load i8, ptr %.reload.addr138, align 1, !tbaa !141, !range !90, !noundef !73
  %i.bx = trunc nuw i8 %i.bw to i1
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  br i1 %i.bx, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5, !noalias !487
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly18OperationCancelledE, i64 16), ptr %1, align 8, !tbaa !117, !noalias !487
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !487
  store ptr %1, ptr %2, align 8, !noalias !490
  call void @_ZN5folly6detail24make_exception_ptr_with_ERKNS0_28make_exception_ptr_with_arg_EPv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 dereferenceable(8) %.reload.addr134, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeINS_18OperationCancelledEJOS3_EEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrES9_E3arg, ptr noundef nonnull %2) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !487
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5, !noalias !487
  %i.bz = load i8, ptr %i.by, align 16, !tbaa !51, !range !90, !noundef !73
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !91
  %.not.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cb) #5
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.w, %bb.x
  %.reload.addr139 = getelementptr inbounds nuw i8, ptr %0, i64 314
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !493)
  %i.ce = load i64, ptr %.reload.addr134, align 16, !noalias !493
  store i64 %i.ce, ptr %i.cd, align 8, !alias.scope !493
  store i64 0, ptr %.reload.addr134, align 16, !noalias !493
  store i8 0, ptr %i.by, align 16, !tbaa !51
  store i2 -2, ptr %index.addr, align 8
  %i.cf = call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseIvEEEENSt7__n486116coroutine_handleIvEENS8_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr139, ptr nonnull %0) #5 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8
  musttail call void %i.cg(ptr nonnull %i.cf)
  ret void

bb.z:                                             ; preds = %bb.u
  %i.ch = load i8, ptr %i.by, align 16, !tbaa !51, !range !90, !noundef !73
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %.thread64, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !91
  %.not.i.i.i.i42 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i42, label %_ZN5folly17exception_wrapperD2Ev.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cj) #5
  br label %_ZN5folly17exception_wrapperD2Ev.exit.i.i

_ZN5folly17exception_wrapperD2Ev.exit.i.i:        ; preds = %bb.ab, %bb.aa
  store i8 1, ptr %i.by, align 16, !tbaa !51
  br label %.thread64

.from.110:                                        ; preds = %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit38.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i, %bb.k, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.bb, %bb.k ], [ %i.ar, %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit38.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i ], [ %i.bb, %bb.l ]
  call void @_ZN5folly20CancellationCallbackD2Ev(ptr noundef nonnull align 16 dead_on_return(105) dereferenceable(105) %.reload.addr131) #5
  br label %bb.ad

bb.ac:                                            ; preds = %bb.g
  %.reload122 = load i64, ptr %.reload.addr127, align 16, !tbaa !455
  %i.cl = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.cm = icmp slt i64 %i.cl, %.reload122
  br i1 %i.cm, label %.lr.ph, label %._crit_edge.from., !llvm.loop !496

._crit_edge.from.:                                ; preds = %bb.ac
  %.reload130.pre = load i64, ptr %.reload.addr127, align 16, !tbaa !455
  br label %._crit_edge, !llvm.loop !496

bb.ad:                                            ; preds = %.from.110, %.from.111
  %.pn27.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.from.110 ], [ %i.z, %.from.111 ]
  %.4 = extractvalue { ptr, i32 } %.pn27.pn.pn, 0
  %i.cn = call ptr @__cxa_begin_catch(ptr %.4) #5 ; 0 uses
  call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr141) #5
  invoke void @__cxa_end_catch()
          to label %.thread64 unwind label %_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit49

.thread64:                                        ; preds = %bb.z, %_ZN5folly17exception_wrapperD2Ev.exit.i.i, %bb.ad, %.thread63, %_ZN5folly17exception_wrapperD2Ev.exit.i.i44
  %.reload.addr140 = getelementptr inbounds nuw i8, ptr %0, i64 315
  store ptr null, ptr %0, align 16
  store i2 -1, ptr %index.addr, align 8
  %i.co = call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseIvEEEENSt7__n486116coroutine_handleIvEENS8_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr140, ptr nonnull %0) #5 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8
  musttail call void %i.cp(ptr nonnull %i.co)
  ret void

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.from.
  %.reload130 = phi i64 [ %.reload130.pre, %._crit_edge.from. ], [ %.reload128, %bb.a ]
  %.155.lcssa = phi i64 [ %i.cl, %._crit_edge.from. ], [ %.054, %bb.a ] ; 2 uses
  %i.cq = sub nsw i64 %.155.lcssa, %.reload130
  %i.cr = cmpxchg weak ptr %i.b, i64 %.155.lcssa, i64 %i.cq release acquire, align 8 ; 2 uses
  %i.cs = extractvalue { i64, i1 } %i.cr, 1
  br i1 %i.cs, label %.thread63, label %.from._ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit

.from._ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit: ; preds = %._crit_edge
  %i.ct = extractvalue { i64, i1 } %i.cr, 0
  br label %bb.a

.thread63:                                        ; preds = %._crit_edge
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 16, !tbaa !51, !range !90, !noundef !73
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %.thread64, label %bb.ae

bb.ae:                                            ; preds = %.thread63
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !91
  %.not.i.i.i.i43 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i43, label %_ZN5folly17exception_wrapperD2Ev.exit.i.i44, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cx) #5
  br label %_ZN5folly17exception_wrapperD2Ev.exit.i.i44

_ZN5folly17exception_wrapperD2Ev.exit.i.i44:      ; preds = %bb.af, %bb.ae
  store i8 1, ptr %i.cu, align 16, !tbaa !51
  br label %.thread64

CoroEnd:                                          ; preds = %AfterCoroSave81, %resume.entry
  ret void

_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit49: ; preds = %bb.ad
  %i.cz = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 16
  store i2 -1, ptr %index.addr, align 8
  resume { ptr, i32 } %i.cz

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly6fibers13SemaphoreBase14co_wait_commonEl.destroy(ptr noundef nonnull align 16 dereferenceable(320) %0) #12 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr131 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.reload.addr134 = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 312
  %index = load i2, ptr %index.addr, align 8
  switch i2 %index, label %unreachable [
    i2 0, label %AfterCoroSuspend
    i2 1, label %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE12await_resumeEv.exit
    i2 -2, label %AfterCoroSuspend87
    i2 -1, label %AfterCoroSuspend
  ]

_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE12await_resumeEv.exit: ; preds = %resume.entry
  %.reload.addr133 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.pr = load ptr, ptr %.reload.addr133, align 16, !tbaa !58 ; 3 uses
  %.not.i.i33 = icmp eq ptr %.pr, null
  br i1 %.not.i.i33, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit unwind label %bb.b, !inline_history !485

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #25
  unreachable

_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit: ; preds = %bb.a, %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE12await_resumeEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !75  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit
  tail call void @_ZN5folly6detail17CancellationState14removeCallbackEPNS_20CancellationCallbackE(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr131) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !85   ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i35, label %AfterCoroSuspend, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = tail call noundef i64 %i.h(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.i, ptr noundef null) #5, !inline_history !486 ; 0 uses
  br label %AfterCoroSuspend

AfterCoroSuspend87:                               ; preds = %resume.entry
  %i.k = load ptr, ptr %.reload.addr134, align 16, !tbaa !91
  %.not.i.i.i40 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i40, label %AfterCoroSuspend, label %bb.f

bb.f:                                             ; preds = %AfterCoroSuspend87
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr134) #5
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %bb.d, %bb.e, %resume.entry, %AfterCoroSuspend87, %bb.f, %resume.entry
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load i8, ptr %i.l, align 16, !tbaa !51, !range !90, !noundef !73
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZN5folly3TryIvED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %AfterCoroSuspend
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !91
  %.not.i.i.i.i47 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i47, label %_ZN5folly3TryIvED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #5
  br label %_ZN5folly3TryIvED2Ev.exit.i

_ZN5folly3TryIvED2Ev.exit.i:                      ; preds = %bb.h, %bb.g, %AfterCoroSuspend
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !462 ; 5 uses
  %.not.i.i.i1.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i1.i, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN5folly3TryIvED2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = atomicrmw sub ptr %i.s, i64 8 acq_rel, align 8 ; 2 uses
  %i.u = icmp ult i64 %i.t, 16
  br i1 %i.u, label %bb.j, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.v = and i64 %i.t, 4
  %.not.i.i.i.i.i.i48 = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i.i.i48, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.r) #5
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !117
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.r) #5, !call_target !497, !inline_history !503
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

_ZN5folly17CancellationTokenD2Ev.exit.i.i:        ; preds = %bb.l, %bb.k, %bb.i, %_ZN5folly3TryIvED2Ev.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !107 ; 2 uses
  %i.ab = and i64 %i.aa, -4                       ; 2 uses
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %.not.i.i1.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i1.i.i, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i
  store i64 0, ptr %i.z, align 8, !tbaa !116
  %i.ad = and i64 %i.aa, 3
  %.not3.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not3.i.i.i.i, label %bb.n, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !117
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #5, !call_target !119, !inline_history !504
  br label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit

_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit: ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i, %bb.m, %bb.n
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 320)
          to label %CoroEnd unwind label %bb.o

bb.o:                                             ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #25
  unreachable

CoroEnd:                                          ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { cold noreturn }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #21 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #23 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { noreturn nounwind }
attributes #26 = { cold }
attributes #27 = { noreturn }
attributes #28 = { builtin nounwind }
attributes #29 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedIN5boost9intrusive4listINS_6fibers13SemaphoreBase6WaiterEJNS3_11member_hookIS7_NS3_16list_member_hookIJNS3_9link_modeILNS3_14link_mode_typeE1EEEEEEXadL_ZNS7_5hook_EEEEENS3_18constant_time_sizeILb0EEEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv: argument 0"}
!13 = distinct !{!13, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedIN5boost9intrusive4listINS_6fibers13SemaphoreBase6WaiterEJNS3_11member_hookIS7_NS3_16list_member_hookIJNS3_9link_modeILNS3_14link_mode_typeE1EEEEEEXadL_ZNS7_5hook_EEEEENS3_18constant_time_sizeILb0EEEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv"}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!15 = !{!"branch_weights", i32 2146410443, i32 1073205}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSN5boost9intrusive9list_nodeIPvEE", !18, i64 0, !18, i64 8}
!18 = !{!"p1 _ZTSN5boost9intrusive9list_nodeIPvEE", !19, i64 0}
!19 = !{!"any pointer", !9, i64 0}
!20 = !{!21, !25, i64 24}
!21 = !{!"_ZTSN5folly6fibers13SemaphoreBase6WaiterE", !22, i64 0, !23, i64 8, !25, i64 24}
!22 = !{!"_ZTSN5folly6fibers5BatonE", !9, i64 0}
!23 = !{!"_ZTSN5boost9intrusive16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE1EEEEEE", !24, i64 0}
!24 = !{!"_ZTSN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_10member_tagELNS0_14link_mode_typeE1ELNS0_14base_hook_typeE0EEE", !17, i64 0}
!25 = !{!"long", !9, i64 0}
!26 = !{!17, !18, i64 8}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{i64 12677058}
!30 = distinct !{!30, !28}
!31 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!32 = distinct !{!32, !28}
!33 = distinct !{!33, !28}
!34 = distinct !{!34, !28}
!35 = distinct !{!35, !28}
!36 = distinct !{!36, !28}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedIN5boost9intrusive4listINS_6fibers13SemaphoreBase6WaiterEJNS3_11member_hookIS7_NS3_16list_member_hookIJNS3_9link_modeILNS3_14link_mode_typeE1EEEEEEXadL_ZNS7_5hook_EEEEENS3_18constant_time_sizeILb0EEEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv: argument 0"}
!39 = distinct !{!39, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedIN5boost9intrusive4listINS_6fibers13SemaphoreBase6WaiterEJNS3_11member_hookIS7_NS3_16list_member_hookIJNS3_9link_modeILNS3_14link_mode_typeE1EEEEEEXadL_ZNS7_5hook_EEEEENS3_18constant_time_sizeILb0EEEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedIN5boost9intrusive4listINS_6fibers13SemaphoreBase6WaiterEJNS3_11member_hookIS7_NS3_16list_member_hookIJNS3_9link_modeILNS3_14link_mode_typeE1EEEEEEXadL_ZNS7_5hook_EEEEENS3_18constant_time_sizeILb0EEEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv: argument 0"}
!42 = distinct !{!42, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedIN5boost9intrusive4listINS_6fibers13SemaphoreBase6WaiterEJNS3_11member_hookIS7_NS3_16list_member_hookIJNS3_9link_modeILNS3_14link_mode_typeE1EEEEEEXadL_ZNS7_5hook_EEEEENS3_18constant_time_sizeILb0EEEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedIN5boost9intrusive4listINS_6fibers13SemaphoreBase6WaiterEJNS3_11member_hookIS7_NS3_16list_member_hookIJNS3_9link_modeILNS3_14link_mode_typeE1EEEEEEXadL_ZNS7_5hook_EEEEENS3_18constant_time_sizeILb0EEEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv: argument 0"}
!45 = distinct !{!45, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedIN5boost9intrusive4listINS_6fibers13SemaphoreBase6WaiterEJNS3_11member_hookIS7_NS3_16list_member_hookIJNS3_9link_modeILNS3_14link_mode_typeE1EEEEEEXadL_ZNS7_5hook_EEEEENS3_18constant_time_sizeILb0EEEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv"}
!46 = distinct !{!46, !28}
!47 = !{!48, !19, i64 0}
!48 = !{!"_ZTSNSt7__n486116coroutine_handleIN5folly4coro6detail24ScopeExitTaskPromiseBaseEEE", !19, i64 0}
!49 = !{!50, !19, i64 0}
!50 = !{!"_ZTSN5folly4coro23ExtendedCoroutineHandle11PromiseBaseE", !19, i64 0}
!51 = !{!52, !53, i64 0}
!52 = !{!"_ZTSN5folly3TryIvEE", !53, i64 0, !9, i64 8}
!53 = !{!"bool", !9, i64 0}
!54 = !{!19, !19, i64 0}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvE17get_return_objectEv: argument 0"}
!57 = distinct !{!57, !"_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvE17get_return_objectEv"}
!58 = !{!59, !19, i64 0}
!59 = !{!"_ZTSNSt7__n486116coroutine_handleIN5folly4coro6detail12ViaCoroutineILb0EE12promise_typeEEE", !19, i64 0}
!60 = !{!61, !61, i64 0}
!61 = !{!"p1 _ZTSN5folly4coro23ExtendedCoroutineHandle11PromiseBaseE", !19, i64 0}
!62 = !{!63, !65, i64 16}
!63 = !{!"_ZTSN5folly15AsyncStackFrameE", !64, i64 0, !19, i64 8, !65, i64 16}
!64 = !{!"p1 _ZTSN5folly15AsyncStackFrameE", !19, i64 0}
!65 = !{!"p1 _ZTSN5folly14AsyncStackRootE", !19, i64 0}
!66 = !{!63, !64, i64 0}
!67 = !{!63, !19, i64 8}
!68 = !{!69, !72, i64 16}
!69 = !{!"_ZTSN5folly6fibers6detail20BatonAwaitableWaiterE", !70, i64 0, !71, i64 8, !72, i64 16}
!70 = !{!"_ZTSN5folly6fibers5Baton6WaiterE"}
!71 = !{!"_ZTSNSt7__n486116coroutine_handleIvEE", !19, i64 0}
!72 = !{!"p1 _ZTSN5folly6fibers5BatonE", !19, i64 0}
!73 = !{}
!74 = !{i64 8}
!75 = !{!76, !80, i64 16}
!76 = !{!"_ZTSN5folly20CancellationCallbackE", !77, i64 0, !78, i64 8, !80, i64 16, !81, i64 32, !82, i64 96, !83, i64 104}
!77 = !{!"p1 _ZTSN5folly20CancellationCallbackE", !19, i64 0}
!78 = !{!"p2 _ZTSN5folly20CancellationCallbackE", !79, i64 0}
!79 = !{!"any p2 pointer", !19, i64 0}
!80 = !{!"p1 _ZTSN5folly6detail17CancellationStateE", !19, i64 0}
!81 = !{!"_ZTSN5folly8FunctionIFvvEEE", !9, i64 0, !19, i64 48, !19, i64 56}
!82 = !{!"p1 bool", !19, i64 0}
!83 = !{!"_ZTSSt6atomicIbE", !84, i64 0}
!84 = !{!"_ZTSSt13__atomic_baseIbE", !53, i64 0}
!85 = !{!81, !19, i64 56}
!86 = distinct !{null, null}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE: argument 0"}
!89 = distinct !{!89, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE"}
!90 = !{i8 0, i8 2}
!91 = !{!92, !19, i64 0}
!92 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !19, i64 0}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE: argument 0"}
!95 = distinct !{!95, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE"}
!96 = !{!97, !98, i64 0}
!97 = !{!"_ZTSN5folly4coro6detail23BypassExceptionThrowingE", !98, i64 0}
!98 = !{!"_ZTSN5folly4coro6detail23BypassExceptionThrowing10BypassModeE", !9, i64 0}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE: argument 0"}
!101 = distinct !{!101, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE: argument 0"}
!104 = distinct !{!104, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE"}
!105 = !{!106, !53, i64 24}
!106 = !{!"_ZTSSt22_Optional_payload_baseISt4pairIN5folly4coro23ExtendedCoroutineHandleEPNS1_15AsyncStackFrameEEE", !9, i64 0, !53, i64 24}
!107 = !{!108, !25, i64 0}
!108 = !{!"_ZTSN5folly17ExecutorKeepAliveINS_8ExecutorEEE", !25, i64 0}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE9get_aliasEv: argument 0"}
!111 = distinct !{!111, !"_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE9get_aliasEv"}
!112 = !{!113, !64, i64 16}
!113 = !{!"_ZTSN5folly4coro6detail24ScopeExitTaskPromiseBaseE", !114, i64 0, !64, i64 16, !108, i64 24, !115, i64 32, !48, i64 40}
!114 = !{!"_ZTSN5folly4coro23ExtendedCoroutineHandleE", !71, i64 0, !61, i64 8}
!115 = !{!"_ZTSN5folly17exception_wrapperE", !92, i64 0}
!116 = !{!25, !25, i64 0}
!117 = !{!118, !118, i64 0}
!118 = !{!"vtable pointer", !10, i64 0}
!119 = !DISubprogram(name: "keepAliveRelease", linkageName: "_ZN5folly8Executor16keepAliveReleaseEv", scope: !121, file: !120, line: 261, type: !123, scopeLine: 261, containingType: !121, virtualIndex: 6, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!120 = !DIFile(filename: "_deps/folly-src/folly/Executor.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "e2252a484f750b6d785f8426d640a0b4")
!121 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Executor", scope: !122, file: !120, line: 185, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly8ExecutorE")
!122 = !DINamespace(name: "folly", scope: null)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !125}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!126 = distinct !{null, null, null}
!127 = !{!114, !61, i64 8}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZN5folly4coro23ExtendedCoroutineHandle14getErrorHandleERNS_17exception_wrapperE: argument 0"}
!130 = distinct !{!130, !"_ZN5folly4coro23ExtendedCoroutineHandle14getErrorHandleERNS_17exception_wrapperE"}
!131 = distinct !{null}
!132 = !{!133, !134, i64 0}
!133 = !{!"_ZTSZN5folly6fibers13SemaphoreBase14co_wait_commonElE3$_0", !134, i64 0, !135, i64 8, !82, i64 16}
!134 = !{!"p1 _ZTSN5folly6fibers13SemaphoreBaseE", !19, i64 0}
!135 = !{!"p1 _ZTSN5folly6fibers13SemaphoreBase6WaiterE", !19, i64 0}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedIN5boost9intrusive4listINS_6fibers13SemaphoreBase6WaiterEJNS3_11member_hookIS7_NS3_16list_member_hookIJNS3_9link_modeILNS3_14link_mode_typeE1EEEEEEXadL_ZNS7_5hook_EEEEENS3_18constant_time_sizeILb0EEEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv: argument 0"}
!138 = distinct !{!138, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedIN5boost9intrusive4listINS_6fibers13SemaphoreBase6WaiterEJNS3_11member_hookIS7_NS3_16list_member_hookIJNS3_9link_modeILNS3_14link_mode_typeE1EEEEEEXadL_ZNS7_5hook_EEEEENS3_18constant_time_sizeILb0EEEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv"}
!139 = !{!133, !135, i64 8}
!140 = !{!133, !82, i64 16}
!141 = !{!53, !53, i64 0}
!142 = !{!143}
!143 = distinct !{!143, !144, !"_ZN5boost9intrusive9list_implINS0_8mhtraitsIN5folly6fibers13SemaphoreBase6WaiterENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE1EEEEEEXadL_ZNS6_5hook_EEEEEmLb0EvE17erase_and_disposeINS0_6detail13null_disposerEEENS0_13list_iteratorISC_Lb0EEENSH_ISC_Lb1EEET_: argument 0"}
!144 = distinct !{!144, !"_ZN5boost9intrusive9list_implINS0_8mhtraitsIN5folly6fibers13SemaphoreBase6WaiterENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE1EEEEEEXadL_ZNS6_5hook_EEEEEmLb0EvE17erase_and_disposeINS0_6detail13null_disposerEEENS0_13list_iteratorISC_Lb0EEENSH_ISC_Lb1EEET_"}
end_hunk_0
begin_hunk_1_@_ZN5folly6fibers13SemaphoreBase14co_wait_commonEl.destroy:resume.entry
!255 = !DISubroutineType(types: !256)
!256 = !{null, !249}
!257 = !DISubprogram(name: "Function", linkageName: "_ZN5folly8FunctionIFvvEEC4ERKS2_", scope: !172, file: !173, line: 686, type: !258, scopeLine: 686, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !249, !260}
!260 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !245, size: 64)
!261 = !DISubprogram(name: "Function", linkageName: "_ZN5folly8FunctionIFvvEEC4EOS2_", scope: !172, file: !173, line: 699, type: !262, scopeLine: 699, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !249, !264}
!264 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !172, size: 64)
!265 = !DISubprogram(name: "Function", linkageName: "_ZN5folly8FunctionIFvvEEC4EDn", scope: !172, file: !173, line: 709, type: !266, scopeLine: 709, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !249, !268}
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !157, file: !197, line: 312, baseType: !269)
!269 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!270 = !DISubprogram(name: "~Function", linkageName: "_ZN5folly8FunctionIFvvEED4Ev", scope: !172, file: !173, line: 798, type: !255, scopeLine: 798, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!271 = !DISubprogram(name: "operator=", linkageName: "_ZN5folly8FunctionIFvvEEaSERKS2_", scope: !172, file: !173, line: 800, type: !272, scopeLine: 800, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!272 = !DISubroutineType(types: !273)
!273 = !{!274, !249, !260}
!274 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !172, size: 64)
!275 = !DISubprogram(name: "operator=", linkageName: "_ZN5folly8FunctionIFvvEEaSEOS2_", scope: !172, file: !173, line: 820, type: !276, scopeLine: 820, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!276 = !DISubroutineType(types: !277)
!277 = !{!274, !249, !264}
!278 = !DISubprogram(name: "operator=", linkageName: "_ZN5folly8FunctionIFvvEEaSEDn", scope: !172, file: !173, line: 873, type: !279, scopeLine: 873, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!279 = !DISubroutineType(types: !280)
!280 = !{!274, !249, !268}
!281 = !DISubprogram(name: "swap", linkageName: "_ZN5folly8FunctionIFvvEE4swapERS2_", scope: !172, file: !173, line: 897, type: !282, scopeLine: 897, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !249, !274}
!284 = !DISubprogram(name: "operator bool", linkageName: "_ZNK5folly8FunctionIFvvEEcvbEv", scope: !172, file: !173, line: 903, type: !285, scopeLine: 903, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!285 = !DISubroutineType(types: !286)
!286 = !{!287, !244}
!287 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!288 = !DISubprogram(name: "heapAllocatedMemory", linkageName: "_ZNK5folly8FunctionIFvvEE19heapAllocatedMemoryEv", scope: !172, file: !173, line: 910, type: !289, scopeLine: 910, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!289 = !DISubroutineType(types: !290)
!290 = !{!196, !244}
!291 = !DISubprogram(name: "asSharedProxy", linkageName: "_ZNO5folly8FunctionIFvvEE13asSharedProxyEv", scope: !172, file: !173, line: 920, type: !292, scopeLine: 920, flags: DIFlagPublic | DIFlagPrototyped | DIFlagRValueReference, spFlags: DISPFlagOptimized)
!292 = !DISubroutineType(flags: DIFlagRValueReference, types: !293)
!293 = !{!294, !249}
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "SharedProxy", scope: !176, file: !173, line: 373, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "FunctionTraitsSharedProxy<void (), false, void>", scope: !177, file: !173, line: 296, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly6detail8function25FunctionTraitsSharedProxyIFvvELb0EvJEEE")
!296 = !DISubprogram(name: "asStdFunction", linkageName: "_ZNO5folly8FunctionIFvvEE13asStdFunctionEv", scope: !172, file: !173, line: 927, type: !297, scopeLine: 927, flags: DIFlagPublic | DIFlagPrototyped | DIFlagRValueReference, spFlags: DISPFlagOptimized)
!297 = !DISubroutineType(flags: DIFlagRValueReference, types: !298)
!298 = !{!299, !249}
!299 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "function<void ()>", scope: !157, file: !300, line: 334, size: 256, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt8functionIFvvEE")
!300 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/std_function.h", directory: "")
!301 = distinct !{null, null, null}
!302 = distinct !{null, null}
!303 = distinct !{ptr @_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev, null, null, null}
!304 = !{ptr @_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev}
!305 = distinct !{ptr @_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev, null, null}
!306 = !{!307}
!307 = distinct !{!307, !308, !"_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENKUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_clES9_SB_: argument 0"}
!308 = distinct !{!308, !"_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENKUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_clES9_SB_"}
!309 = !{!310}
!310 = distinct !{!310, !311, !"_ZN5folly4coro6detail12ViaCoroutineILb0EE12promise_type18getErrorHandleImplERS4_RNS_17exception_wrapperE: argument 0"}
!311 = distinct !{!311, !"_ZN5folly4coro6detail12ViaCoroutineILb0EE12promise_type18getErrorHandleImplERS4_RNS_17exception_wrapperE"}
!312 = !{!313, !310, !307}
!313 = distinct !{!313, !314, !"_ZN5folly4coro23ExtendedCoroutineHandle14getErrorHandleERNS_17exception_wrapperE: argument 0"}
!314 = distinct !{!314, !"_ZN5folly4coro23ExtendedCoroutineHandle14getErrorHandleERNS_17exception_wrapperE"}
!315 = distinct !{null, null, null}
!316 = !{!310, !307}
!317 = distinct !{null}
!318 = !{!319, !166, i64 0}
!319 = !{!"_ZTSZN5folly4coro6detail23ViaCoroutinePromiseBase20scheduleContinuationEvEUlvE_", !166, i64 0}
!320 = distinct !{null}
!321 = !{!71, !19, i64 0}
!322 = distinct !{null, null}
!323 = !{!324}
!324 = distinct !{!324, !325, !"_ZZNK5folly26make_exception_ptr_with_fn4makeINS_18OperationCancelledEJOS2_EEEDaDpOT0_ENKUlvE_clEv: argument 0"}
!325 = distinct !{!325, !"_ZZNK5folly26make_exception_ptr_with_fn4makeINS_18OperationCancelledEJOS2_EEEDaDpOT0_ENKUlvE_clEv"}
!326 = !{!327}
!327 = distinct !{!327, !328, !"_ZSt11make_uniqueIN5folly6fibers12_GLOBAL__N_112FutureWaiterEJRlEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!328 = distinct !{!328, !"_ZSt11make_uniqueIN5folly6fibers12_GLOBAL__N_112FutureWaiterEJRlEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!329 = !{!330, !53, i64 0}
!330 = !{!"_ZTSN5folly7PromiseINS_4UnitEEE", !53, i64 0, !331, i64 8}
!331 = !{!"p1 _ZTSN5folly7futures6detail4CoreINS_4UnitEEE", !19, i64 0}
!332 = !{!333, !334, i64 0}
!333 = !{!"_ZTSSt6atomicIN5folly7futures6detail5StateEE", !334, i64 0}
!334 = !{!"_ZTSN5folly7futures6detail5StateE", !9, i64 0}
!335 = !{!336, !9, i64 0}
!336 = !{!"_ZTSSt13__atomic_baseIhE", !9, i64 0}
!337 = !{!338, !339, i64 0}
!338 = !{!"_ZTSN5folly7futures6detail19KeepAliveOrDeferredE", !339, i64 0, !9, i64 8}
!339 = !{!"_ZTSN5folly7futures6detail19KeepAliveOrDeferred5StateE", !9, i64 0}
!340 = !{!330, !331, i64 8}
!341 = !{!342, !342, i64 0}
!342 = !{!"p1 _ZTSN5folly6fibers12_GLOBAL__N_112FutureWaiterE", !19, i64 0}
!343 = !{!344}
!344 = distinct !{!344, !345, !"_ZN5folly7PromiseINS_4UnitEE13getSemiFutureEv: argument 0"}
!345 = distinct !{!345, !"_ZN5folly7PromiseINS_4UnitEE13getSemiFutureEv"}
!346 = !{!347, !331, i64 0}
!347 = !{!"_ZTSN5folly7futures6detail10FutureBaseINS_4UnitEEE", !331, i64 0}
!348 = !{!349}
!349 = distinct !{!349, !350, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedIN5boost9intrusive4listINS_6fibers13SemaphoreBase6WaiterEJNS3_11member_hookIS7_NS3_16list_member_hookIJNS3_9link_modeILNS3_14link_mode_typeE1EEEEEEXadL_ZNS7_5hook_EEEEENS3_18constant_time_sizeILb0EEEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv: argument 0"}
!350 = distinct !{!350, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedIN5boost9intrusive4listINS_6fibers13SemaphoreBase6WaiterEJNS3_11member_hookIS7_NS3_16list_member_hookIJNS3_9link_modeILNS3_14link_mode_typeE1EEEEEEXadL_ZNS7_5hook_EEEEENS3_18constant_time_sizeILb0EEEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv"}
!351 = distinct !{!351, !28}
!352 = !{!353}
!353 = distinct !{!353, !354, !"_ZN5folly14makeSemiFutureEv: argument 0"}
!354 = distinct !{!354, !"_ZN5folly14makeSemiFutureEv"}
!355 = !{!356}
!356 = distinct !{!356, !357, !"_ZN5folly14makeSemiFutureINS_4UnitEEENS_10SemiFutureINSt5decayIT_E4typeEEEOS4_: argument 0"}
!357 = distinct !{!357, !"_ZN5folly14makeSemiFutureINS_4UnitEEENS_10SemiFutureINSt5decayIT_E4typeEEEOS4_"}
!358 = !{!359}
!359 = distinct !{!359, !360, !"_ZN5folly14makeSemiFutureINS_4UnitEEENS_10SemiFutureIT_EENS_3TryIS3_EE: argument 0"}
!360 = distinct !{!360, !"_ZN5folly14makeSemiFutureINS_4UnitEEENS_10SemiFutureIT_EENS_3TryIS3_EE"}
!361 = !{!356, !353}
!362 = !{!359, !356, !353}
!363 = !{!364, !19, i64 48}
!364 = !{!"_ZTSN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEEE", !9, i64 0, !19, i64 48, !19, i64 56}
!365 = !{!364, !19, i64 56}
!366 = !{!367, !368, i64 0}
!367 = !{!"_ZTSN5folly6detail7TryBaseINS_4UnitEEE", !368, i64 0, !9, i64 8}
!368 = !{!"_ZTSN5folly6detail7TryBaseINS_4UnitEE8ContainsE", !9, i64 0}
!369 = !{!"branch_weights", i32 1, i32 4004000}
!370 = !{!371, !376, i64 16}
!371 = !{!"_ZTSN5folly13BrokenPromiseE", !372, i64 0, !376, i64 16}
!372 = !{!"_ZTSN5folly16PromiseExceptionE", !373, i64 0}
!373 = !{!"_ZTSSt11logic_error", !374, i64 0, !375, i64 8}
!374 = !{!"_ZTSSt9exception"}
!375 = !{!"_ZTSSt12__cow_string", !9, i64 0}
!376 = !{!"p1 omnipotent char", !19, i64 0}
!377 = !{!378}
!378 = distinct !{!378, !379, !"_ZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeINS_13BrokenPromiseEJOS3_EEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrES9_: argument 0"}
!379 = distinct !{!379, !"_ZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeINS_13BrokenPromiseEJOS3_EEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrES9_"}
!380 = !{!381}
!381 = distinct !{!381, !382, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE: argument 0"}
!382 = distinct !{!382, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE"}
!383 = !{!384}
!384 = distinct !{!384, !385, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE: argument 0"}
!385 = distinct !{!385, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE"}
!386 = !{!"branch_weights", i32 536, i32 2147483112}
!387 = !{!"branch_weights", i32 2147483112, i32 536}
!388 = distinct !{null, null, null}
!389 = !{!"branch_weights", i32 0, i32 -2147483648}
!390 = !{!391}
!391 = distinct !{!391, !392, !"_ZZNK5folly26make_exception_ptr_with_fn4makeINS_13BrokenPromiseEJOS2_EEEDaDpOT0_ENKUlvE_clEv: argument 0"}
!392 = distinct !{!392, !"_ZZNK5folly26make_exception_ptr_with_fn4makeINS_13BrokenPromiseEJOS2_EEEDaDpOT0_ENKUlvE_clEv"}
!393 = !{!394, !395, i64 0}
!394 = !{!"_ZTSZNK5folly26make_exception_ptr_with_fn4makeINS_13BrokenPromiseEJOS2_EEEDaDpOT0_EUlvE_", !395, i64 0}
!395 = !{!"p1 _ZTSN5folly13BrokenPromiseE", !19, i64 0}
!396 = !DISubprogram(name: "~BrokenPromise", linkageName: "_ZN5folly13BrokenPromiseD4Ev", scope: !397, type: !434, containingType: !397, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!397 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "BrokenPromise", scope: !122, file: !398, line: 58, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !399, vtableHolder: !410, identifier: "_ZTSN5folly13BrokenPromiseE")
!398 = !DIFile(filename: "_deps/folly-src/folly/futures/Promise.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "1e791b94391f01558b67ec9da2b7922d")
!399 = !{!400, !412, !417, !429}
!400 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !397, baseType: !401, flags: DIFlagPublic, extraData: i32 0)
!401 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "PromiseException", scope: !122, file: !398, line: 30, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !402, vtableHolder: !410, identifier: "_ZTSN5folly16PromiseExceptionE")
!402 = !{!403, !406}
!403 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !401, baseType: !404, flags: DIFlagPublic, extraData: i32 0)
!404 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "logic_error", scope: !157, file: !405, line: 113, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt11logic_error")
!405 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/stdexcept", directory: "")
!406 = !DISubprogram(name: "PromiseException", linkageName: "_ZN5folly16PromiseExceptionC4Ev", scope: !401, file: !398, line: 33, type: !407, scopeLine: 33, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !409}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!410 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception", scope: !157, file: !411, line: 59, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt9exception")
!411 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/exception.h", directory: "")
!412 = !DIDerivedType(tag: DW_TAG_member, name: "what_", scope: !397, file: !398, line: 77, baseType: !413, size: 64, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!416 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!417 = !DIDerivedType(tag: DW_TAG_variable, name: "error_message", scope: !397, file: !398, line: 75, baseType: !418, flags: DIFlagStaticMember)
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "c_array<char, 43UL>", scope: !122, file: !420, line: 30, size: 344, flags: DIFlagTypePassByValue, elements: !421, templateParams: !426, identifier: "_ZTSN5folly7c_arrayIcLm43EEE")
!420 = !DIFile(filename: "_deps/folly-src/folly/lang/CArray.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "8800fddff9c34bb4bb59061df120a9db")
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !419, file: !420, line: 31, baseType: !423, size: 344)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 344, elements: !424)
!424 = !{!425}
!425 = !DISubrange(count: 43)
!426 = !{!427, !428}
!427 = !DITemplateTypeParameter(name: "V", type: !416)
!428 = !DITemplateValueParameter(name: "N", type: !198, value: i64 43)
!429 = !DISubprogram(name: "what", linkageName: "_ZNK5folly13BrokenPromise4whatEv", scope: !397, file: !398, line: 82, type: !430, scopeLine: 82, containingType: !397, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!430 = !DISubroutineType(types: !431)
!431 = !{!414, !432}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !436}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!437 = !{!438}
!438 = distinct !{!438, !439, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE: argument 0"}
!439 = distinct !{!439, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE"}
!440 = !{!441, !441, i64 0}
!441 = !{!"p1 _ZTSN5folly7futures6detail16DeferredExecutorE", !19, i64 0}
!442 = !{!443, !25, i64 0}
!443 = !{!"_ZTSN5folly6fibers13SemaphoreBaseE", !25, i64 0, !444, i64 8, !446, i64 16}
!444 = !{!"_ZTSSt6atomicIlE", !445, i64 0}
!445 = !{!"_ZTSSt13__atomic_baseIlE", !25, i64 0}
!446 = !{!"_ZTSN5folly12SynchronizedIN5boost9intrusive4listINS_6fibers13SemaphoreBase6WaiterEJNS2_11member_hookIS6_NS2_16list_member_hookIJNS2_9link_modeILNS2_14link_mode_typeE1EEEEEEXadL_ZNS6_5hook_EEEEENS2_18constant_time_sizeILb0EEEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEE", !447, i64 0, !452, i64 16}
!447 = !{!"_ZTSN5boost9intrusive4listIN5folly6fibers13SemaphoreBase6WaiterEJNS0_11member_hookIS5_NS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE1EEEEEEXadL_ZNS5_5hook_EEEEENS0_18constant_time_sizeILb0EEEEEE", !448, i64 0}
!448 = !{!"_ZTSN5boost9intrusive9list_implINS0_8mhtraitsIN5folly6fibers13SemaphoreBase6WaiterENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE1EEEEEEXadL_ZNS6_5hook_EEEEEmLb0EvEE", !449, i64 0}
!449 = !{!"_ZTSN5boost9intrusive9list_implINS0_8mhtraitsIN5folly6fibers13SemaphoreBase6WaiterENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE1EEEEEEXadL_ZNS6_5hook_EEEEEmLb0EvE6data_tE", !450, i64 0}
!450 = !{!"_ZTSN5boost9intrusive9list_implINS0_8mhtraitsIN5folly6fibers13SemaphoreBase6WaiterENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE1EEEEEEXadL_ZNS6_5hook_EEEEEmLb0EvE14root_plus_sizeE", !451, i64 0}
!451 = !{!"_ZTSN5boost9intrusive6detail21default_header_holderINS0_16list_node_traitsIPvEEEE", !17, i64 0}
!452 = !{!"_ZTSN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEE", !453, i64 0}
!453 = !{!"_ZTSSt6atomicIjE", !454, i64 0}
!454 = !{!"_ZTSSt13__atomic_baseIjE", !8, i64 0}
!455 = !{!456, !456, i64 0}
!456 = !{!"_ZN5folly6fibers13SemaphoreBase14co_wait_commonEl.Frame Slot", !10, i64 0}
!457 = !{!458}
!458 = distinct !{!458, !459, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedIN5boost9intrusive4listINS_6fibers13SemaphoreBase6WaiterEJNS3_11member_hookIS7_NS3_16list_member_hookIJNS3_9link_modeILNS3_14link_mode_typeE1EEEEEEXadL_ZNS7_5hook_EEEEENS3_18constant_time_sizeILb0EEEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv: argument 0"}
!459 = distinct !{!459, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedIN5boost9intrusive4listINS_6fibers13SemaphoreBase6WaiterEJNS3_11member_hookIS7_NS3_16list_member_hookIJNS3_9link_modeILNS3_14link_mode_typeE1EEEEEEXadL_ZNS7_5hook_EEEEENS3_18constant_time_sizeILb0EEEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv"}
!460 = !{!76, !82, i64 96}
!461 = !{!84, !53, i64 0}
!462 = !{!80, !80, i64 0}
!463 = !{!464}
!464 = distinct !{!464, !465, !"_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformIRNS_6fibers5BatonETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOSA_: argument 0"}
!465 = distinct !{!465, !"_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformIRNS_6fibers5BatonETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOSA_"}
!466 = !{!467, !464}
!467 = distinct !{!467, !468, !"_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE9get_aliasEv: argument 0"}
!468 = distinct !{!468, !"_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE9get_aliasEv"}
!469 = !{!470}
!470 = distinct !{!470, !471, !"_ZNO5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEEawEv: argument 0"}
!471 = distinct !{!471, !"_ZNO5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEEawEv"}
!472 = !{!473}
!473 = distinct !{!473, !474, !"_ZN5folly4coro6detail12ViaCoroutineILb0EE6createENS_17ExecutorKeepAliveINS_8ExecutorEEE: argument 0"}
!474 = distinct !{!474, !"_ZN5folly4coro6detail12ViaCoroutineILb0EE6createENS_17ExecutorKeepAliveINS_8ExecutorEEE"}
!475 = !{!473, !470}
!476 = !{!477, !473, !470}
!477 = distinct !{!477, !478, !"_ZN5folly4coro6detail12ViaCoroutineILb0EE12promise_type17get_return_objectEv: argument 0"}
!478 = distinct !{!478, !"_ZN5folly4coro6detail12ViaCoroutineILb0EE12promise_type17get_return_objectEv"}
!479 = !{!480, !482, !470}
!480 = distinct !{!480, !481, !"_ZN5folly6fibersawERNS0_5BatonE: argument 0"}
!481 = distinct !{!481, !"_ZN5folly6fibersawERNS0_5BatonE"}
!482 = distinct !{!482, !483, !"_ZNK5folly4coro14get_awaiter_fnclIRNS_6fibers5BatonETnNSt9enable_ifIXsr5folly11ConjunctionINS0_6detail27_has_free_operator_co_awaitIT_vEENS_8NegationINS7_29_has_member_operator_co_awaitIS9_vEEEEEE5valueEiE4typeELi0EEEDcOS9_: argument 0"}
!483 = distinct !{!483, !"_ZNK5folly4coro14get_awaiter_fnclIRNS_6fibers5BatonETnNSt9enable_ifIXsr5folly11ConjunctionINS0_6detail27_has_free_operator_co_awaitIT_vEENS_8NegationINS7_29_has_member_operator_co_awaitIS9_vEEEEEE5valueEiE4typeELi0EEEDcOS9_"}
!484 = !{!72, !72, i64 0}
!485 = distinct !{null}
!486 = distinct !{ptr @_ZN5folly20CancellationCallbackD2Ev, null, null}
!487 = !{!488}
!488 = distinct !{!488, !489, !"_ZNK5folly4coro14co_cancelled_tcvNS0_8co_errorEEv: argument 0"}
!489 = distinct !{!489, !"_ZNK5folly4coro14co_cancelled_tcvNS0_8co_errorEEv"}
!490 = !{!491, !488}
!491 = distinct !{!491, !492, !"_ZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeINS_18OperationCancelledEJOS3_EEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrES9_: argument 0"}
!492 = distinct !{!492, !"_ZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeINS_18OperationCancelledEJOS3_EEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrES9_"}
!493 = !{!494}
!494 = distinct !{!494, !495, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE: argument 0"}
!495 = distinct !{!495, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE"}
!496 = distinct !{!496, !28}
!497 = !DISubprogram(name: "~CancellationState", linkageName: "_ZN5folly6detail17CancellationStateD4Ev", scope: !499, file: !498, line: 43, type: !500, scopeLine: 43, containingType: !499, virtualIndex: 0, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!498 = !DIFile(filename: "_deps/folly-src/folly/CancellationToken-inl.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "0fe5390f30e4d65ce495e93960df2e48")
!499 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "CancellationState", scope: !178, file: !498, line: 33, size: 256, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly6detail17CancellationStateE")
!500 = !DISubroutineType(types: !501)
!501 = !{null, !502}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!503 = distinct !{null, null, null, null, null, null}
!504 = distinct !{null, null, null, null}
end_hunk_1
