Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/SemaphoreBase?download=true
inline.NumInlined: 781
inline.NumDeleted: 475
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5folly6fibers13SemaphoreBase11wait_commonEl:bb.a
  br i1 %i.as, label %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit.thread, label %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit: ; preds = %._crit_edge
  %i.at = extractvalue { i64, i1 } %i.ar, 0
  br label %bb.b

_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit.thread: ; preds = %._crit_edge, %.thread
  ret void
}

declare void @_ZN5folly6fibers5Baton4waitEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5folly6fibers13SemaphoreBase15try_wait_commonERNS1_6WaiterEl(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 11 uses
  %3 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit, %bb.a
  %.0 = phi i64 [ %i.d, %bb.a ], [ %i.aq, %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit ] ; 2 uses
  %.not = icmp slt i64 %.0, %2
  br i1 %.not, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5, !noalias !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5, !noalias !153
  %i.j = load atomic i32, ptr %i.e acquire, align 8, !noalias !153 ; 5 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !21, !noalias !153
  %i.k = and i32 %i.j, -1312
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %.critedge.i.i.i.i.i.i.i, !prof !22

bb.c:                                             ; preds = %.lr.ph
  %i.m = or disjoint i32 %i.j, 128
  %i.n = cmpxchg ptr %i.e, i32 %i.j, i32 %i.m seq_cst seq_cst, align 4, !noalias !153 ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.n, 1
  br i1 %i.o, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_.exit, label %.critedge.i.i.i.i.i.i.i.sink.split, !prof !23

.critedge.i.i.i.i.i.i.i.sink.split:               ; preds = %bb.c, %bb.e
  %.sink26 = phi { i32, i1 } [ %i.z, %bb.e ], [ %i.n, %bb.c ]
  %i.p = extractvalue { i32, i1 } %.sink26, 0     ; 2 uses
  store i32 %i.p, ptr %i.b, align 4, !noalias !153
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %.critedge.i.i.i.i.i.i.i.sink.split, %.lr.ph
  %i.q = phi i32 [ %i.j, %.lr.ph ], [ %i.p, %.critedge.i.i.i.i.i.i.i.sink.split ] ; 2 uses
  %i.r = and i32 %i.q, 224
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !22

bb.d:                                             ; preds = %.critedge.i.i.i.i.i.i.i
  %i.s = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, i32 noundef 12, ptr noundef nonnull align 1 dereferenceable(1) %3), !noalias !153 ; 0 uses
  %.pre35.i = load i32, ptr %i.b, align 4, !tbaa !21, !noalias !153
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge.i.i.i.i.i.i.i
  %i.t = phi i32 [ %.pre35.i, %bb.d ], [ %i.q, %.critedge.i.i.i.i.i.i.i ] ; 3 uses
  %i.u = lshr i32 %i.t, 1
  %i.v = and i32 %i.u, 256
  %i.w = and i32 %i.t, -673
  %i.x = or i32 %i.w, %i.v
  %i.y = or disjoint i32 %i.x, 128                ; 3 uses
  %i.z = cmpxchg ptr %i.e, i32 %i.t, i32 %i.y seq_cst seq_cst, align 4, !noalias !153 ; 2 uses
  %i.aa = extractvalue { i32, i1 } %i.z, 1
  br i1 %i.aa, label %bb.f, label %.critedge.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.e
  %i.ab = load i32, ptr %i.b, align 4, !tbaa !21, !noalias !153
  store i32 %i.y, ptr %i.b, align 4, !tbaa !21, !noalias !153
  %i.ac = and i32 %i.ab, 512
  %.not27.i = icmp eq i32 %i.ac, 0
  br i1 %.not27.i, label %bb.h, label %bb.g, !prof !22

bb.g:                                             ; preds = %bb.f
  call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %3), !noalias !153
  %.pr.i = load i32, ptr %i.b, align 4, !tbaa !21, !noalias !153
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ad = phi i32 [ %.pr.i, %bb.g ], [ %i.y, %bb.f ]
  %.not28.i = icmp ult i32 %i.ad, 2048
  br i1 %.not28.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_.exit, label %bb.i, !prof !22

bb.i:                                             ; preds = %bb.h
  %i.ae = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef -2048, i32 noundef 16, ptr noundef nonnull align 1 dereferenceable(1) %3), !noalias !153 ; 0 uses
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_.exit

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_.exit: ; preds = %bb.i, %bb.h, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5, !noalias !153
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5, !noalias !153
  %i.af = load atomic i64, ptr %i.c acquire, align 8
  %.not.not.i = icmp slt i64 %i.af, %2            ; 2 uses
  br i1 %.not.not.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_.exit
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !34  ; 2 uses
  store ptr %i.ag, ptr %i.i, align 8, !tbaa !34
  store ptr %i.f, ptr %i.g, align 8, !tbaa !27
  store ptr %i.g, ptr %i.h, align 8, !tbaa !34
  store ptr %i.g, ptr %i.ag, align 8, !tbaa !27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.ah = atomicrmw and ptr %i.e, i32 -401 seq_cst, align 4 ; 2 uses
  %i.ai = and i32 %i.ah, -401
  store i32 %i.ai, ptr %i.a, align 4, !tbaa !21
  %i.aj = and i32 %i.ah, 15
  %.not.i.i.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5folly6fibers13SemaphoreBase8waitSlowERNS1_6WaiterEl.exit, label %bb.l, !prof !22

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly6fibers13SemaphoreBase8waitSlowERNS1_6WaiterEl.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #25
  unreachable

_ZN5folly6fibers13SemaphoreBase8waitSlowERNS1_6WaiterEl.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br i1 %.not.not.i, label %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZN5folly6fibers13SemaphoreBase8waitSlowERNS1_6WaiterEl.exit
  %i.am = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %.not16 = icmp slt i64 %i.am, %2
  br i1 %.not16, label %.lr.ph, label %._crit_edge, !llvm.loop !152

._crit_edge:                                      ; preds = %bb.n, %bb.b
  %.1.lcssa = phi i64 [ %.0, %bb.b ], [ %i.am, %bb.n ] ; 2 uses
  %i.an = sub nsw i64 %.1.lcssa, %2
  %i.ao = cmpxchg weak ptr %i.c, i64 %.1.lcssa, i64 %i.an release acquire, align 8 ; 2 uses
  %i.ap = extractvalue { i64, i1 } %i.ao, 1
  br i1 %i.ap, label %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit.thread, label %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit: ; preds = %._crit_edge
  %i.aq = extractvalue { i64, i1 } %i.ao, 0
  br label %bb.b

_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit.thread: ; preds = %._crit_edge, %_ZN5folly6fibers13SemaphoreBase8waitSlowERNS1_6WaiterEl.exit
  %i.ar = phi i1 [ false, %_ZN5folly6fibers13SemaphoreBase8waitSlowERNS1_6WaiterEl.exit ], [ true, %._crit_edge ]
  ret i1 %i.ar
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define noundef zeroext i1 @_ZN5folly6fibers13SemaphoreBase15try_wait_commonEl(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %.not = icmp slt i64 %i.b, %1
  br i1 %.not, label %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi i64 [ %i.f, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = sub nsw i64 %.07, %1
  %i.d = cmpxchg weak ptr %i.a, i64 %.07, i64 %i.c release acquire, align 8 ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1         ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.d, 0         ; 2 uses
  %.not10 = icmp slt i64 %i.f, %1
  %or.cond = select i1 %i.e, i1 true, i1 %.not10
  br i1 %or.cond, label %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit.thread, label %.lr.ph

_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit.thread: ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ %i.e, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly6fibers13SemaphoreBase14co_wait_commonEl(ptr dead_on_unwind nofree writable writeonly sret(%"class.folly::coro::Task") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.from.98:
  %i.a = tail call noundef ptr @folly_coro_async_malloc(i64 noundef 320) ; 10 uses
  store ptr @_ZN5folly6fibers13SemaphoreBase14co_wait_commonEl.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN5folly6fibers13SemaphoreBase14co_wait_commonEl.destroy, ptr %destroy.addr, align 8
  %.reload.addr152 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.spill.addr131 = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store i64 %2, ptr %.spill.addr131, align 8
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store ptr %1, ptr %.spill.addr, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr152, i8 0, i64 58, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr null, ptr %i.b, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseIvEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES8_SA_, ptr %i.c, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i8 1, ptr %i.d, align 8, !tbaa !44
  store ptr %i.a, ptr %0, align 8, !tbaa !45, !alias.scope !156
  %index.addr153 = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  store i8 0, ptr %index.addr153, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE13await_suspendINS0_6detail11TaskPromiseIvEEEEvNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.c, align 8, !tbaa !45
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.a, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !49
  tail call void @_ZN5folly4coro6detail12ViaCoroutineILb0EE11saveContextEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53   ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.d, ptr %i.h, align 8, !tbaa !54
  %i.i = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr %i.i, ptr %i.j, align 8, !tbaa !157
  store atomic ptr null, ptr %i.f monotonic, align 8
  store ptr null, ptr %i.e, align 8, !tbaa !53
  %i.k = load ptr, ptr %0, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  tail call void @_ZN5folly21activateSuspendedLeafERNS_15AsyncStackFrameE(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #5
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0.copyload.i, ptr %i.n, align 8, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !160, !nonnull !57, !align !58
  invoke void @_ZN5folly6fibers5Baton9setWaiterERNS1_6WaiterE(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_ZN5folly6detail14ScopeGuardImplIZNS_4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE13await_suspendINS2_6detail11TaskPromiseIvEEEEvNSt7__n486116coroutine_handleIT_EEEUlvE_Lb1EED2Ev.exit unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE13await_suspendINS2_6detail11TaskPromiseIvEEEEvNSt7__n486116coroutine_handleIT_EEEUlvE_Lb1EED2Ev.exit8

_ZN5folly6detail14ScopeGuardImplIZNS_4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE13await_suspendINS2_6detail11TaskPromiseIvEEEEvNSt7__n486116coroutine_handleIT_EEEUlvE_Lb1EED2Ev.exit: ; preds = %bb.a
  ret void

_ZN5folly6detail14ScopeGuardImplIZNS_4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE13await_suspendINS2_6detail11TaskPromiseIvEEEEvNSt7__n486116coroutine_handleIT_EEEUlvE_Lb1EED2Ev.exit8: ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  store ptr %i.f, ptr %i.e, align 8, !tbaa !53
  store atomic ptr %i.d, ptr %i.f release, align 8
  %i.r = load ptr, ptr %0, align 8, !tbaa !47
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  tail call void @_ZN5folly23deactivateSuspendedLeafERNS_15AsyncStackFrameE(ptr noundef nonnull align 8 dereferenceable(24) %i.s) #5
  resume { ptr, i32 } %i.q
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly20CancellationCallbackD2Ev(ptr noundef nonnull align 16 dead_on_return(105) dereferenceable(105) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !68  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail17CancellationState14removeCallbackEPNS_20CancellationCallbackE(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull %0) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN5folly8FunctionIFvvEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = tail call noundef i64 %i.d(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.e, ptr noundef null) #5, !inline_history !161 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit

_ZN5folly8FunctionIFvvEED2Ev.exit:                ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %1 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  call void @_ZN5folly17current_exceptionEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %1) #5
  %i.b = load i64, ptr %1, align 8, !noalias !166 ; 2 uses
  store i64 0, ptr %1, align 8, !noalias !166
  %i.c = load i8, ptr %i.a, align 8, !tbaa !44, !range !70, !noundef !57
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZN5folly17exception_wrapperD2Ev.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN5folly17exception_wrapperD2Ev.exit.thread, label %_ZN5folly17exception_wrapperD2Ev.exit

_ZN5folly17exception_wrapperD2Ev.exit.thread:     ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.b, ptr %i.g, align 8, !alias.scope !167
  store i8 0, ptr %i.a, align 8, !tbaa !44
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZN5folly17exception_wrapperD2Ev.exit:            ; preds = %bb.b
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #5
  %.pre = load ptr, ptr %1, align 8, !tbaa !72
  %i.h = icmp eq ptr %.pre, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.b, ptr %i.i, align 8, !alias.scope !167
  store i8 0, ptr %i.a, align 8, !tbaa !44
  br i1 %i.h, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly17exception_wrapperD2Ev.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #5
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZN5folly17exception_wrapperD2Ev.exit.thread, %_ZN5folly17exception_wrapperD2Ev.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  ret void
}

declare void @__cxa_end_catch() local_unnamed_addr

declare ptr @folly_coro_async_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseIvEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES8_SA_(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #13 comdat align 2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = getelementptr inbounds i8, ptr %1, i64 -72
  tail call void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE27getErrorHandleUncheckedImplINS1_11TaskPromiseIvEEEESt8optionalISt4pairINS0_23ExtendedCoroutineHandleEPNS_15AsyncStackFrameEEERT_RNS_17exception_wrapperE(ptr dead_on_unwind writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE27getErrorHandleUncheckedImplINS1_11TaskPromiseIvEEEESt8optionalISt4pairINS0_23ExtendedCoroutineHandleEPNS_15AsyncStackFrameEEERT_RNS_17exception_wrapperE(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::coro::detail::TaskPromiseBase::FinalAwaiter", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.b = load i8, ptr %i.a, align 1, !tbaa !75
  switch i8 %i.b, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread10 [
    i8 1, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread
    i8 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !72
  %.not6.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not6.i.i.i.i.i, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef ptr @_ZN5folly6detail23exception_ptr_get_type_ERKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(8) %2) #5 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call noundef ptr @_ZN5folly6detail25exception_ptr_get_object_ERKNSt15__exception_ptr13exception_ptrEPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef null) #5 ; 0 uses
  %i.f = icmp eq ptr %i.d, @_ZTIN5folly18OperationCancelledE
  br i1 %i.f, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit

_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.g = tail call noundef ptr @_ZN5folly6detail25exception_ptr_get_object_ERKNSt15__exception_ptr13exception_ptrEPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @_ZTIN5folly18OperationCancelledE) #5
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread10, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread

_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread: ; preds = %bb.d, %bb.a, %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.h = load i64, ptr %2, align 8, !noalias !172
  store i64 0, ptr %2, align 8, !noalias !172
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !44, !range !70, !noundef !57
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5folly4coro8co_errorD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZN5folly4coro8co_errorD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #5
  br label %_ZN5folly4coro8co_errorD2Ev.exit

_ZN5folly4coro8co_errorD2Ev.exit:                 ; preds = %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread, %bb.e, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 %i.h, ptr %i.n, align 8, !alias.scope !173
  store i8 0, ptr %i.i, align 8, !tbaa !44
  %i.o = call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseIvEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(96) %1) #5
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54
  store ptr %i.o, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.r, align 8, !tbaa !77
end_hunk_0
begin_hunk_1_@_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE:bb.a

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5folly7futures6detail16DeferredExecutor6detachEv(ptr noundef nonnull align 16 dereferenceable(112) %i.f)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  resume { ptr, i32 } %i.g

bb.f:                                             ; preds = %bb.d
  %.pr = load ptr, ptr %1, align 8, !tbaa !132    ; 2 uses
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

declare void @_ZN5folly7futures6detail8CoreBase21stealDeferredExecutorEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.49") align 8, ptr noundef nonnull align 16 dereferenceable(136)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN5folly13async_tracing20logSemiFutureDiscardENS0_18DiscardHasDeferredE(i32 noundef) local_unnamed_addr #6

declare void @_ZN5folly7futures6detail16DeferredExecutor6detachEv(ptr noundef nonnull align 16 dereferenceable(112)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !132    ; 2 uses
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
  %i.a = load i64, ptr %0, align 8, !tbaa !460
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
define internal void @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.resume(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0) #11 align 2 personality ptr @__gxx_personality_v0 {
CoroEnd:
  %.reload.addr13 = getelementptr inbounds nuw i8, ptr %0, i64 97
  store ptr null, ptr %0, align 8
  tail call void @_ZN5folly4coro6detail12ViaCoroutineILb0EE12promise_type12FinalAwaiter13await_suspendENSt7__n486116coroutine_handleIS4_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr13, ptr nonnull %0) #5
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.destroy(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(104) initializes((16, 24)) %0) #11 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly4coro6detail23ViaCoroutinePromiseBaseE, i64 16), ptr %.reload.addr14, align 8, !tbaa !83
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.a

bb.a:                                             ; preds = %resume.entry
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !96
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !97
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5, !call_target !102, !inline_history !4
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5, !call_target !104, !inline_history !4
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.c:                                             ; preds = %bb.a
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !105
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from., label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11: ; preds = %bb.c
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.: ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from., %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11
  %.0.i.i.i.i.i = phi i32 [ %i.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11 ], [ %i.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from. ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.d, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !37

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5, !inline_history !110
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.b, %resume.entry
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !79   ; 2 uses
  %i.t = and i64 %i.s, -4                         ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %.not.i.i1.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i1.i, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  store i64 0, ptr %i.r, align 8, !tbaa !81
  %i.v = and i64 %i.s, 3
  %.not3.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not3.i.i.i, label %bb.f, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !83
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #5, !call_target !88, !inline_history !5
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
  %1 = alloca %"class.folly::exception_wrapper", align 8 ; 4 uses
  %2 = alloca %class.anon.30, align 1             ; 3 uses
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 7 uses
  %.reload.addr143 = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %.reload.addr144 = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 7 uses
  %.reload.addr145 = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %.reload.addr149 = getelementptr inbounds nuw i8, ptr %0, i64 313 ; 3 uses
  %.reload.addr152 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 5 uses
  %index = load i8, ptr %index.addr, align 8
  switch i8 %index, label %unreachable [
    i8 0, label %.from.101
    i8 1, label %AfterCoroSuspend86
    i8 2, label %CoroEnd
  ], !prof !486

.from.101:                                        ; preds = %resume.entry
  %.reload.addr129 = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %.reload130 = load ptr, ptr %.reload.addr129, align 8, !tbaa !488 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.reload130, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = getelementptr inbounds nuw i8, ptr %.reload130, i64 32 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.reload130, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.reload130, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.reload.addr138 = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 5 uses
  br label %bb.a

bb.a:                                             ; preds = %.from._ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit, %.from.101
  %.055 = phi i64 [ %i.c, %.from.101 ], [ %i.cu, %.from._ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit ] ; 2 uses
  %.reload139 = load i64, ptr %.reload.addr138, align 16, !tbaa !488 ; 2 uses
  %i.j = icmp slt i64 %.055, %.reload139
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.ab
  %.reload135 = load i64, ptr %.reload.addr138, align 16, !tbaa !488
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.reload.addr143, i8 0, i64 24, i1 false)
  store i64 %.reload135, ptr %i.d, align 8, !tbaa !33
  %i.k = load atomic i32, ptr %i.e acquire, align 8, !noalias !489 ; 4 uses
  store i32 %i.k, ptr %.reload.addr142, align 16, !tbaa !21, !noalias !489
  %i.l = and i32 %i.k, -1312
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %.critedge.i.i.i.i.i.i.i, !prof !22

bb.b:                                             ; preds = %.lr.ph
  %i.n = or disjoint i32 %i.k, 128
  %i.o = cmpxchg ptr %i.e, i32 %i.k, i32 %i.n seq_cst seq_cst, align 4, !noalias !489 ; 2 uses
  %i.p = extractvalue { i32, i1 } %i.o, 1
  br i1 %i.p, label %.noexc, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, !prof !23

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.q = extractvalue { i32, i1 } %i.o, 0
  store i32 %i.q, ptr %.reload.addr142, align 16, !noalias !489
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %.lr.ph
  %i.r = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %.reload.addr142, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr144)
          to label %.noexc unwind label %.from.122 ; 0 uses

.noexc:                                           ; preds = %.critedge.i.i.i.i.i.i.i, %bb.b
  %.reload137 = load i64, ptr %.reload.addr138, align 16, !tbaa !488
  %i.s = load atomic i64, ptr %i.b acquire, align 8
  %.not.not.i = icmp slt i64 %i.s, %.reload137    ; 2 uses
  br i1 %.not.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !34   ; 2 uses
  store ptr %i.t, ptr %i.i, align 16, !tbaa !34
  store ptr %i.f, ptr %i.g, align 8, !tbaa !27
  store ptr %i.g, ptr %i.h, align 8, !tbaa !34
  store ptr %i.g, ptr %i.t, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.u = atomicrmw and ptr %i.e, i32 -401 seq_cst, align 4 ; 2 uses
  %i.v = and i32 %i.u, -401
  store i32 %i.v, ptr %i.a, align 4, !tbaa !21
  %i.w = and i32 %i.u, 15
  %.not.i.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.e, !prof !22

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
  br i1 %.not.not.i, label %bb.h, label %bb.ab

.from.122:                                        ; preds = %.critedge.i.i.i.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ac

bb.h:                                             ; preds = %bb.g
  %.reload = load ptr, ptr %.reload.addr129, align 8, !tbaa !488
  store i8 0, ptr %.reload.addr149, align 1, !tbaa !91
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr142, i8 0, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %.reload, ptr %i.ac, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %.reload.addr143, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.reload.addr149, ptr %.sroa.5.0..sroa_idx, align 16
  store ptr @"_ZN5folly6detail8function5call_IZNS_6fibers13SemaphoreBase14co_wait_commonElE3$_0Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE", ptr %i.ad, align 16, !tbaa !107
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm32EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.ae, align 8, !tbaa !69
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr null, ptr %i.af, align 16, !tbaa !490
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 0, ptr %i.ag, align 8, !tbaa !491
  %i.ah = load ptr, ptr %i.aa, align 16, !tbaa !133 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %.from..i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = call noundef zeroext i1 @_ZN5folly6detail17CancellationState14tryAddCallbackEPNS_20CancellationCallbackEb(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr142, i1 noundef zeroext true) #5
  br i1 %i.ai, label %bb.j, label %.from..i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.aa, align 16, !tbaa !133
  store ptr %i.aj, ptr %i.ab, align 16, !tbaa !68
  br label %.from..i.i.i.i

.from..i.i.i.i:                                   ; preds = %bb.j, %bb.i, %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !75, !noalias !492
  %i.am = icmp eq i8 %i.al, 2
  %i.an = zext i1 %i.am to i8
  store i8 %i.an, ptr %i.ak, align 1, !tbaa !75, !noalias !492
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !79, !noalias !493
  call void @llvm.experimental.noalias.scope.decl(metadata !494)
  call void @llvm.experimental.noalias.scope.decl(metadata !495)
  %i.aq = invoke noundef ptr @folly_coro_async_malloc(i64 noundef 104)
          to label %.from.105 unwind label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit38.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i, !noalias !494 ; 8 uses

_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit38.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i: ; preds = %.from..i.i.i.i
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.121

.from.105:                                        ; preds = %.from..i.i.i.i
  %i.as = or i64 %i.ap, 2
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.resume, ptr %i.aq, align 8, !noalias !496
  %destroy.addr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.destroy, ptr %destroy.addr.i.i.i.i, align 8, !noalias !496
  %.reload.addr14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.au, i8 0, i64 56, i1 false), !noalias !496
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_, ptr %i.av, align 8, !tbaa !41, !noalias !496
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly4coro6detail12ViaCoroutineILb0EE12promise_typeE, i64 16), ptr %.reload.addr14.i.i.i.i, align 8, !tbaa !83, !noalias !496
  store ptr %i.aq, ptr %.reload.addr144, align 16, !tbaa !45, !alias.scope !497
  %index.addr15.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  store i8 0, ptr %index.addr15.i.i.i.i, align 8, !noalias !496
  store i64 %i.as, ptr %i.at, align 8, !tbaa !79, !noalias !496
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly6fibers6detail20BatonAwaitableWaiterE, i64 16), ptr %i.aw, align 8, !tbaa !83, !alias.scope !498
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr null, ptr %i.ax, align 16, !tbaa !111, !alias.scope !498
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %.reload.addr143, ptr %i.ay, align 8, !tbaa !499, !alias.scope !498
  %i.az = load atomic i64, ptr %.reload.addr143 seq_cst, align 16
  %i.ba = icmp eq i64 %i.az, -1
  br i1 %i.ba, label %AfterCoroSuspend86, label %AfterCoroSave84

AfterCoroSave84:                                  ; preds = %.from.105
  store i8 1, ptr %index.addr, align 8
  invoke void @_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE13await_suspendINS0_6detail11TaskPromiseIvEEEEvNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr144, ptr nonnull %0)
          to label %CoroEnd unwind label %bb.k

bb.k:                                             ; preds = %AfterCoroSave84
  %i.bb = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.bc = load ptr, ptr %.reload.addr144, align 16, !tbaa !47 ; 3 uses
  %.not.i.i31 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i31, label %.from.121, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  invoke void %i.be(ptr nonnull %i.bc)
          to label %.from.121 unwind label %bb.m, !inline_history !7

bb.m:                                             ; preds = %bb.l
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #25
  unreachable

AfterCoroSuspend86:                               ; preds = %resume.entry, %.from.105
  %i.bh = load ptr, ptr %.reload.addr144, align 16, !tbaa !47 ; 3 uses
  %.not.i.i32 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i32, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %AfterCoroSuspend86
  store i64 0, ptr %.reload.addr144, align 16, !tbaa !45
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  invoke void %i.bj(ptr nonnull %i.bh)
          to label %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE12await_resumeEv.exit unwind label %bb.o, !inline_history !7

bb.o:                                             ; preds = %bb.n
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #25
  unreachable

_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE12await_resumeEv.exit: ; preds = %bb.n
  %.pr = load ptr, ptr %.reload.addr144, align 16, !tbaa !47 ; 3 uses
  %.not.i.i33 = icmp eq ptr %.pr, null
  br i1 %.not.i.i33, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE12await_resumeEv.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  invoke void %i.bn(ptr nonnull %.pr)
          to label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit unwind label %bb.q, !inline_history !7

bb.q:                                             ; preds = %bb.p
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #25
  unreachable

_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit: ; preds = %bb.p, %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE12await_resumeEv.exit, %AfterCoroSuspend86
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.br = load ptr, ptr %i.bq, align 16, !tbaa !68 ; 2 uses
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit
  call void @_ZN5folly6detail17CancellationState14removeCallbackEPNS_20CancellationCallbackE(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr142) #5
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !69 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i35, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bv = call noundef i64 %i.bt(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.bu, ptr noundef null) #5, !inline_history !8 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.bw = load i8, ptr %.reload.addr149, align 1, !tbaa !91, !range !70, !noundef !57
  %i.bx = trunc nuw i8 %i.bw to i1
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  br i1 %i.bx, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !500)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5, !noalias !500
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !501
  call void @_ZN5folly6detail24make_exception_ptr_with_ERKNS0_28make_exception_ptr_with_arg_EPv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeINS_18OperationCancelledEJEEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrES8_E3arg, ptr noundef nonnull %2) #5, !noalias !500
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !501
  call void @llvm.experimental.noalias.scope.decl(metadata !502)
  %i.bz = load i64, ptr %1, align 8, !noalias !503 ; 3 uses
  store i64 %i.bz, ptr %.reload.addr145, align 16, !alias.scope !503
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5, !noalias !500
  %i.ca = load i8, ptr %i.by, align 16, !tbaa !44, !range !70, !noundef !57
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !72
  %.not.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i, label %bb.x, label %.from.116

.from.116:                                        ; preds = %bb.w
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cc) #5
  %.pre = load i64, ptr %.reload.addr145, align 16, !noalias !504
  br label %bb.x

bb.x:                                             ; preds = %.from.116, %bb.v, %bb.w
  %i.ce = phi i64 [ %.pre, %.from.116 ], [ %i.bz, %bb.v ], [ %i.bz, %bb.w ]
  %.reload.addr150 = getelementptr inbounds nuw i8, ptr %0, i64 314
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !504)
  store i64 %i.ce, ptr %i.cf, align 8, !alias.scope !504
  store i64 0, ptr %.reload.addr145, align 16, !noalias !504
  store i8 0, ptr %i.by, align 16, !tbaa !44
  store i8 2, ptr %index.addr, align 8
  %i.cg = call noundef ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseIvEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr150, ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr152) #5 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8
  musttail call void %i.ch(ptr nonnull %i.cg)
  ret void

bb.y:                                             ; preds = %bb.u
  %i.ci = load i8, ptr %i.by, align 16, !tbaa !44, !range !70, !noundef !57
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %.thread66, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !72
  %.not.i.i.i.i42 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i42, label %_ZN5folly17exception_wrapperD2Ev.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ck) #5
  br label %_ZN5folly17exception_wrapperD2Ev.exit.i.i

_ZN5folly17exception_wrapperD2Ev.exit.i.i:        ; preds = %bb.aa, %bb.z
  store i8 1, ptr %i.by, align 16, !tbaa !44
  br label %.thread66

.from.121:                                        ; preds = %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit38.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i, %bb.k, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.bb, %bb.k ], [ %i.ar, %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit38.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i ], [ %i.bb, %bb.l ]
  call void @_ZN5folly20CancellationCallbackD2Ev(ptr noundef nonnull align 16 dead_on_return(105) dereferenceable(105) %.reload.addr142) #5
  br label %bb.ac

bb.ab:                                            ; preds = %bb.g
  %.reload133 = load i64, ptr %.reload.addr138, align 16, !tbaa !488
  %i.cm = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.cn = icmp slt i64 %i.cm, %.reload133
  br i1 %i.cn, label %.lr.ph, label %._crit_edge.from., !llvm.loop !485

._crit_edge.from.:                                ; preds = %bb.ab
  %.reload141.pre = load i64, ptr %.reload.addr138, align 16, !tbaa !488
  br label %._crit_edge, !llvm.loop !485

bb.ac:                                            ; preds = %.from.121, %.from.122
  %.pn27.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.from.121 ], [ %i.z, %.from.122 ]
  %.4 = extractvalue { ptr, i32 } %.pn27.pn.pn, 0
  %i.co = call ptr @__cxa_begin_catch(ptr %.4) #5 ; 0 uses
  call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr152) #5
  invoke void @__cxa_end_catch()
          to label %.thread66 unwind label %bb.af

.thread66:                                        ; preds = %bb.y, %_ZN5folly17exception_wrapperD2Ev.exit.i.i, %bb.ac, %.thread65, %_ZN5folly17exception_wrapperD2Ev.exit.i.i44
  %.reload.addr151 = getelementptr inbounds nuw i8, ptr %0, i64 315
  store ptr null, ptr %0, align 16
  store i8 3, ptr %index.addr, align 8
  %i.cp = call noundef ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseIvEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr151, ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr152) #5 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8
  musttail call void %i.cq(ptr nonnull %i.cp)
  ret void

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.from.
  %.reload141 = phi i64 [ %.reload141.pre, %._crit_edge.from. ], [ %.reload139, %bb.a ]
  %.156.lcssa = phi i64 [ %i.cm, %._crit_edge.from. ], [ %.055, %bb.a ] ; 2 uses
  %i.cr = sub nsw i64 %.156.lcssa, %.reload141
  %i.cs = cmpxchg weak ptr %i.b, i64 %.156.lcssa, i64 %i.cr release acquire, align 8 ; 2 uses
  %i.ct = extractvalue { i64, i1 } %i.cs, 1
  br i1 %i.ct, label %.thread65, label %.from._ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit

.from._ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit: ; preds = %._crit_edge
  %i.cu = extractvalue { i64, i1 } %i.cs, 0
  br label %bb.a

.thread65:                                        ; preds = %._crit_edge
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 16, !tbaa !44, !range !70, !noundef !57
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %.thread66, label %bb.ad

bb.ad:                                            ; preds = %.thread65
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !72
  %.not.i.i.i.i43 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i43, label %_ZN5folly17exception_wrapperD2Ev.exit.i.i44, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cy) #5
  br label %_ZN5folly17exception_wrapperD2Ev.exit.i.i44

_ZN5folly17exception_wrapperD2Ev.exit.i.i44:      ; preds = %bb.ae, %bb.ad
  store i8 1, ptr %i.cv, align 16, !tbaa !44
  br label %.thread66

CoroEnd:                                          ; preds = %AfterCoroSave84, %resume.entry
  ret void

bb.af:                                            ; preds = %bb.ac
  %i.da = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 16
  store i8 3, ptr %index.addr, align 8
  resume { ptr, i32 } %i.da

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly6fibers13SemaphoreBase14co_wait_commonEl.destroy(ptr noundef nonnull align 16 dereferenceable(320) %0) #11 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.reload.addr145 = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 312
  %index = load i8, ptr %index.addr, align 8
  switch i8 %index, label %unreachable [
    i8 0, label %AfterCoroSuspend
    i8 1, label %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE12await_resumeEv.exit
    i8 2, label %AfterCoroSuspend90
    i8 3, label %AfterCoroSuspend
  ], !prof !508

_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE12await_resumeEv.exit: ; preds = %resume.entry
  %.reload.addr144 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.pr = load ptr, ptr %.reload.addr144, align 16, !tbaa !47 ; 3 uses
  %.not.i.i33 = icmp eq ptr %.pr, null
  br i1 %.not.i.i33, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit unwind label %bb.b, !inline_history !7

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #25
  unreachable

_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit: ; preds = %bb.a, %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE12await_resumeEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !68  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit
  tail call void @_ZN5folly6detail17CancellationState14removeCallbackEPNS_20CancellationCallbackE(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr142) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69   ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i35, label %AfterCoroSuspend, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = tail call noundef i64 %i.h(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.i, ptr noundef null) #5, !inline_history !8 ; 0 uses
  br label %AfterCoroSuspend

AfterCoroSuspend90:                               ; preds = %resume.entry
  %i.k = load ptr, ptr %.reload.addr145, align 16, !tbaa !72
  %.not.i.i.i40 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i40, label %AfterCoroSuspend, label %bb.f

bb.f:                                             ; preds = %AfterCoroSuspend90
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr145) #5
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %bb.d, %bb.e, %resume.entry, %AfterCoroSuspend90, %bb.f, %resume.entry
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load i8, ptr %i.l, align 16, !tbaa !44, !range !70, !noundef !57
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZN5folly3TryIvED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %AfterCoroSuspend
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72
  %.not.i.i.i.i47 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i47, label %_ZN5folly3TryIvED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #5
  br label %_ZN5folly3TryIvED2Ev.exit.i

_ZN5folly3TryIvED2Ev.exit.i:                      ; preds = %bb.h, %bb.g, %AfterCoroSuspend
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !133 ; 5 uses
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
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !83
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(32) %i.r) #5, !call_target !513, !inline_history !506
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

_ZN5folly17CancellationTokenD2Ev.exit.i.i:        ; preds = %bb.l, %bb.k, %bb.i, %_ZN5folly3TryIvED2Ev.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !79  ; 2 uses
  %i.ab = and i64 %i.aa, -4                       ; 2 uses
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %.not.i.i1.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i1.i.i, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i
  store i64 0, ptr %i.z, align 8, !tbaa !81
  %i.ad = and i64 %i.aa, 3
  %.not3.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not3.i.i.i.i, label %bb.n, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !83
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #5, !call_target !88, !inline_history !507
  br label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit

_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit: ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i, %bb.m, %bb.n
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 320)
          to label %_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit unwind label %bb.o

bb.o:                                             ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #25
  unreachable

_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit: ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { cold noreturn }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #21 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { noreturn nounwind }
attributes #26 = { cold }
attributes #27 = { noreturn }
attributes #28 = { builtin nounwind }
attributes #29 = { builtin allocsize(0) }

!llvm.module.flags = !{!9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}
!llvm.errno.tbaa = !{!20}

!0 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Executor", scope: !89, file: !84, line: 185, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly8ExecutorE")
!1 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>", scope: !103, file: !98, line: 125, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE")
!2 = distinct !{null, null, null, null, null, null}
!3 = distinct !{null, null, null}
!4 = distinct !{ptr @_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev, null, null, null}
!5 = distinct !{ptr @_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev, null, null}
!6 = distinct !{null, null, null}
!7 = distinct !{null}
!8 = distinct !{ptr @_ZN5folly20CancellationCallbackD2Ev, null, null}
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 7, !"openmp", i32 51}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!15 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!16 = !{!"Simple C++ TBAA"}
!17 = !{!"omnipotent char", !16, i64 0}
!18 = !{!"int", !17, i64 0}
!19 = !{!"__libc_errno", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!18, !18, i64 0}
!22 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = !{!"branch_weights", i32 2146410443, i32 1073205}
!24 = !{!"any pointer", !17, i64 0}
!25 = !{!"p1 _ZTSN5boost9intrusive9list_nodeIPvEE", !24, i64 0}
!26 = !{!"_ZTSN5boost9intrusive9list_nodeIPvEE", !25, i64 0, !25, i64 8}
!27 = !{!26, !25, i64 0}
!28 = !{!"_ZTSN5folly6fibers5BatonE", !17, i64 0}
!29 = !{!"_ZTSN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_10member_tagELNS0_14link_mode_typeE1ELNS0_14base_hook_typeE0EEE", !26, i64 0}
!30 = !{!"_ZTSN5boost9intrusive16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE1EEEEEE", !29, i64 0}
end_hunk_1
