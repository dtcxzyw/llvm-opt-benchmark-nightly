inline.NumInlined: 208
inline.NumDeleted: 152
begin_hunk_0
target triple = "x86_64-pc-linux-gnu"

%"struct.folly::(anonymous namespace)::AsyncStackRootHolder" = type { %"struct.std::atomic" }
%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { ptr }
%"struct.folly::AsyncStackFrame" = type { ptr, ptr, ptr }
%"struct.std::atomic.13" = type { %"struct.std::__atomic_base.14" }
%"struct.std::__atomic_base.14" = type { i64 }
%"struct.std::atomic.18" = type { %"struct.std::__atomic_base.19" }
%"struct.std::__atomic_base.19" = type { ptr }
%"class.folly::detail::ScopedAsyncStackRoot" = type { %"struct.folly::AsyncStackRoot" }
%"struct.folly::AsyncStackRoot" = type { %"struct.std::atomic.0", ptr, ptr, ptr }
%"struct.std::atomic.0" = type { %"struct.std::__atomic_base.1" }
%"struct.std::__atomic_base.1" = type { ptr }
%"struct.folly::SharedMutexImpl<false>::WaitForever" = type { i8 }
%"class.folly::LockedPtr" = type { %"class.std::shared_lock" }
%"class.std::shared_lock" = type <{ ptr, %"struct.folly::SharedMutexToken", [4 x i8] }>
%"struct.folly::SharedMutexToken" = type { i16, i16 }

$__clang_call_terminate = comdat any

$_ZN5folly9LockedPtrIKNS_12SynchronizedISt13unordered_setIPNS_15AsyncStackFrameESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSH_22SynchronizedMutexLevelE2ELNSH_23SynchronizedMutexMethodE0EEEED2Ev = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_ = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20yieldWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_ = comdat any

$_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv = comdat any

$_ZN5folly14FallbackGetcpuINS_18SequentialThreadIdEE6getcpuEPjS3_Pv = comdat any

$folly_async_stack_root_tls_key = comdat any

$_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache = comdat any

$_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE26tls_lastDeferredReaderSlotEvE2tl = comdat any

$_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state = comdat any

$_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE21tls_lastTokenlessSlotEvE2tl = comdat any

@__folly_suspended_frame_cookie = global i64 0, align 8
@_ZTSN12_GLOBAL__N_117SuspendedFrameTagE = internal constant [36 x i8] c"N12_GLOBAL__N_117SuspendedFrameTagE\00", align 1
@__folly_instrumented_frame_tracking_enabled = local_unnamed_addr global i8 0, align 1
@__folly_leaf_frame_store = local_unnamed_addr global ptr null, align 8
@_ZN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE = internal thread_local global %"struct.folly::(anonymous namespace)::AsyncStackRootHolder" zeroinitializer, align 8
@folly_async_stack_root_tls_key = linkonce_odr global i32 -1, comdat, align 4
@.str = private unnamed_addr constant [79 x i8] c"/opt-bench/work/velox/velox/build/_deps/folly-src/folly/tracing/AsyncStack.cpp\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Failed to set current thread's AsyncStackRoot: (error: %d)\00", align 1
@_ZN5folly12_GLOBAL__N_120initialiseTlsKeyFlagE = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"Failed to initialise folly_async_stack_root_tls_key: (error: %d)\00", align 1
@_ZN5follyL17detachedRootFrameE = internal global %"struct.folly::AsyncStackFrame" zeroinitializer, align 8
@_ZZN5folly12_GLOBAL__N_119suspendedLeafFramesEvE8instance.0 = internal unnamed_addr global ptr null, align 8
@_ZGVZN5folly12_GLOBAL__N_119suspendedLeafFramesEvE8instance = internal global i64 0, align 8
@_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache = linkonce_odr global { i32 } zeroinitializer, comdat, align 4
@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE = external global [2048 x %"struct.std::atomic.13"], align 64
@_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE26tls_lastDeferredReaderSlotEvE2tl = linkonce_odr thread_local local_unnamed_addr global { i32 } zeroinitializer, comdat, align 4
@_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state = linkonce_odr global { [257 x [256 x i8]], %"struct.std::atomic.18" } zeroinitializer, comdat, align 8
@_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE21tls_lastTokenlessSlotEvE2tl = linkonce_odr thread_local local_unnamed_addr global { i32 } zeroinitializer, comdat, align 4
@__tls_guard = internal thread_local global i8 0, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_AsyncStack.cpp, ptr null }]
@llvm.compiler.used = appending global [2 x ptr] [ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj], section "llvm.metadata"

@_ZN5folly6detail20ScopedAsyncStackRootC1EPvS2_ = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN5folly6detail20ScopedAsyncStackRootC2EPvS2_
@_ZN5folly6detail20ScopedAsyncStackRootD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5folly6detail20ScopedAsyncStackRootD2Ev

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @__cxx_global_var_init.1() unnamed_addr #4 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr @_ZN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE, align 8, !tbaa !11
  %i.a = invoke i32 @pthread_once(ptr noundef nonnull @_ZN5folly12_GLOBAL__N_120initialiseTlsKeyFlagE, ptr noundef nonnull @"_ZZN5folly12_GLOBAL__N_134ensureAsyncRootTlsKeyIsInitialisedEvEN3$_08__invokeEv")
          to label %_ZN5folly12_GLOBAL__N_134ensureAsyncRootTlsKeyIsInitialisedEv.exit.i unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #25
  unreachable

_ZN5folly12_GLOBAL__N_134ensureAsyncRootTlsKeyIsInitialisedEv.exit.i: ; preds = %bb.a
  %i.d = load i32, ptr @folly_async_stack_root_tls_key, align 4, !tbaa !7
  %i.e = tail call i32 @pthread_setspecific(i32 noundef %i.d, ptr noundef nonnull @_ZN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE) #21 ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN5folly12_GLOBAL__N_120AsyncStackRootHolderC2Ev.exit, label %bb.c, !prof !15

bb.c:                                             ; preds = %_ZN5folly12_GLOBAL__N_134ensureAsyncRootTlsKeyIsInitialisedEv.exit.i
  invoke void (i32, ptr, i32, ptr, ...) @_ZN6google8RawLog__EiPKciS1_z(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 104, ptr noundef nonnull @.str.2, i32 noundef %i.e)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #25
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #25
  unreachable

_ZN5folly12_GLOBAL__N_120AsyncStackRootHolderC2Ev.exit: ; preds = %_ZN5folly12_GLOBAL__N_134ensureAsyncRootTlsKeyIsInitialisedEv.exit.i
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_setspecific(i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN6google8RawLog__EiPKciS1_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN5folly12_GLOBAL__N_134ensureAsyncRootTlsKeyIsInitialisedEvEN3$_08__invokeEv"() #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call i32 @pthread_key_create(ptr noundef nonnull @folly_async_stack_root_tls_key, ptr noundef null) #21 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %"_ZZN5folly12_GLOBAL__N_134ensureAsyncRootTlsKeyIsInitialisedEvENK3$_0clEv.exit", label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  invoke void (i32, ptr, i32, ptr, ...) @_ZN6google8RawLog__EiPKciS1_z(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 86, ptr noundef nonnull @.str.3, i32 noundef %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #25
  unreachable

"_ZZN5folly12_GLOBAL__N_134ensureAsyncRootTlsKeyIsInitialisedEvENK3$_0clEv.exit": ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_key_create(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define noundef ptr @_ZN5folly27tryGetCurrentAsyncStackRootEv() local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr @__tls_guard, align 1
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @__tls_guard, align 1
  %i.c = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  tail call fastcc void @__cxx_global_var_init.1()
  br label %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit

_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit: ; preds = %bb.a, %bb.b
  %i.d = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE)
  %i.e = load atomic ptr, ptr %i.d monotonic, align 8
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define noundef ptr @_ZN5folly29exchangeCurrentAsyncStackRootEPNS_14AsyncStackRootE(ptr noundef %0) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr @__tls_guard, align 1
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit, label %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit.thread, !prof !16

_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit.thread: ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE) ; 2 uses
  %i.d = load atomic ptr, ptr %i.c monotonic, align 8
  br label %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit2

_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit: ; preds = %bb.a
  store i8 1, ptr @__tls_guard, align 1
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  tail call fastcc void @__cxx_global_var_init.1()
  %.pre = load i8, ptr @__tls_guard, align 1
  %1 = icmp eq i8 %.pre, 0
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE) ; 3 uses
  %i.g = load atomic ptr, ptr %i.f monotonic, align 8 ; 2 uses
  br i1 %1, label %bb.b, label %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit2, !prof !17

bb.b:                                             ; preds = %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit
  store i8 1, ptr @__tls_guard, align 1
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  tail call fastcc void @__cxx_global_var_init.1()
  br label %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit2

_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit2: ; preds = %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit.thread, %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit, %bb.b
  %i.i = phi ptr [ %i.d, %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit.thread ], [ %i.g, %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit ], [ %i.g, %bb.b ]
  %i.j = phi ptr [ %i.c, %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit.thread ], [ %i.f, %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit ], [ %i.f, %bb.b ]
  fence syncscope("singlethread") release
  store atomic ptr %0, ptr %i.j monotonic, align 8
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define void @_ZN5folly6detail20ScopedAsyncStackRootC2EPvS2_(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 32)) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.a, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.b, align 8, !tbaa !23
  %i.c = load i8, ptr @__tls_guard, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit, label %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit.thread, !prof !16

_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit.thread: ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE) ; 2 uses
  %i.f = load atomic ptr, ptr %i.e monotonic, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !24
  br label %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit3

_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit: ; preds = %bb.a
  store i8 1, ptr @__tls_guard, align 1
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  tail call fastcc void @__cxx_global_var_init.1()
  %.pre = load i8, ptr @__tls_guard, align 1
  %3 = icmp eq i8 %.pre, 0
  %i.i = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE) ; 3 uses
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !24
  br i1 %3, label %bb.b, label %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit3, !prof !17

bb.b:                                             ; preds = %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit
  store i8 1, ptr @__tls_guard, align 1
  %i.l = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  tail call fastcc void @__cxx_global_var_init.1()
  br label %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit3

_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit3: ; preds = %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit.thread, %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit, %bb.b
  %i.m = phi ptr [ %i.e, %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit.thread ], [ %i.i, %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit ], [ %i.i, %bb.b ]
  fence syncscope("singlethread") release
  store atomic ptr %0, ptr %i.m monotonic, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZN5folly6detail20ScopedAsyncStackRootD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(32) dereferenceable(32) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i8, ptr @__tls_guard, align 1
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @__tls_guard, align 1
  %i.c = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  tail call fastcc void @__cxx_global_var_init.1()
  br label %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit

_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit: ; preds = %bb.a, %bb.b
  %i.d = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  store atomic ptr %i.f, ptr %i.d monotonic, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN5folly24getCurrentAsyncStackRootEv() local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr @__tls_guard, align 1
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5folly27tryGetCurrentAsyncStackRootEv.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @__tls_guard, align 1
  %i.c = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  tail call fastcc void @__cxx_global_var_init.1()
  br label %_ZN5folly27tryGetCurrentAsyncStackRootEv.exit

_ZN5folly27tryGetCurrentAsyncStackRootEv.exit:    ; preds = %bb.a, %bb.b
  %i.d = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE)
  %i.e = load atomic ptr, ptr %i.d monotonic, align 8
  ret ptr %i.e
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5follyL13detached_taskEv() unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call fastcc noundef ptr @_ZN5follyL18get_return_addressEv() #21
  store ptr %i.b, ptr %i.a, align 8, !tbaa !26
  call void asm sideeffect "", "*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) align 8 dereferenceable(8) %i.a) #21, !srcloc !27
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef ptr @_ZN5follyL18get_return_addressEv() unnamed_addr #9 {
bb.a:
  %i.a = tail call ptr @llvm.returnaddress.p0(i32 0)
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress.p0(i32 immarg) #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN5folly30getDetachedRootAsyncStackFrameEv() local_unnamed_addr #11 {
bb.a:
  ret ptr @_ZN5follyL17detachedRootFrameE
}

; Function Attrs: mustprogress noinline nounwind uwtable
define void @_ZN5folly36resumeCoroutineWithNewAsyncStackRootENSt7__n486116coroutine_handleIvEERNS_15AsyncStackFrameE(ptr %0, ptr noundef nonnull align 8 dereferenceable(24) initializes((16, 24)) %1) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::detail::ScopedAsyncStackRoot", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.b = tail call ptr @llvm.returnaddress.p0(i32 0)
  call void @_ZN5folly6detail20ScopedAsyncStackRootC1EPvS2_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.a, ptr noundef %i.b) #21
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %2, ptr %i.c, align 8, !tbaa !28
  store atomic ptr %1, ptr %2 release, align 8
  %i.d = load ptr, ptr %0, align 8
  invoke void %i.d(ptr nonnull %0)
          to label %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit unwind label %bb.b, !inline_history !30

_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit: ; preds = %bb.a
  call void @_ZN5folly6detail20ScopedAsyncStackRootD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #25
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: write, target_mem: none) uwtable
define void @_ZN5folly21activateSuspendedLeafERNS_15AsyncStackFrameE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((16, 24)) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = load volatile i64, ptr @__folly_suspended_frame_cookie, align 8, !tbaa !31
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5folly21isSuspendedLeafActiveERNS_15AsyncStackFrameE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = load volatile i64, ptr @__folly_suspended_frame_cookie, align 8, !tbaa !31
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = icmp eq ptr %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5folly23deactivateSuspendedLeafERNS_15AsyncStackFrameE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((16, 24)) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly24sweepSuspendedLeafFramesENS_11FunctionRefIFvPNS_15AsyncStackFrameEEEE(ptr %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %3 = alloca %"class.folly::LockedPtr", align 8  ; 9 uses
  %i.d = load atomic i8, ptr @_ZGVZN5folly12_GLOBAL__N_119suspendedLeafFramesEvE8instance acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN5folly12_GLOBAL__N_119suspendedLeafFramesEv.exit, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly12_GLOBAL__N_119suspendedLeafFramesEvE8instance) #21
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN5folly12_GLOBAL__N_119suspendedLeafFramesEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @"_ZN5folly14IndestructibleISt10unique_ptrINS_12SynchronizedISt13unordered_setIPNS_15AsyncStackFrameESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEESt14default_deleteISG_EEEC2IZNS_12_GLOBAL__N_119suspendedLeafFramesEvE3$_0EENS_21factory_constructor_tEOT_"()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly12_GLOBAL__N_119suspendedLeafFramesEvE8instance) #21
  br label %_ZN5folly12_GLOBAL__N_119suspendedLeafFramesEv.exit

common.resume:                                    ; preds = %bb.s, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.ax, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5folly12_GLOBAL__N_119suspendedLeafFramesEvE8instance) #21
  br label %common.resume

_ZN5folly12_GLOBAL__N_119suspendedLeafFramesEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.h = load ptr, ptr @_ZZN5folly12_GLOBAL__N_119suspendedLeafFramesEvE8instance.0, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 4 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !39, !alias.scope !36
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i16 0, ptr %i.j, align 8, !tbaa !45, !alias.scope !36
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 2 uses
  store i16 0, ptr %i.k, align 2, !tbaa !46, !alias.scope !36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21, !noalias !36
  %i.l = load atomic i32, ptr %i.i monotonic, align 4, !noalias !36 ; 4 uses
  store i32 %i.l, ptr %i.c, align 4, !tbaa !7, !noalias !36
  %i.m = and i32 %i.l, -1408
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN5folly12_GLOBAL__N_119suspendedLeafFramesEv.exit
  %i.o = or disjoint i32 %i.l, 2048
  %i.p = cmpxchg ptr %i.i, i32 %i.l, i32 %i.o seq_cst seq_cst, align 4, !noalias !36 ; 2 uses
  %i.q = extractvalue { i32, i1 } %i.p, 1
  br i1 %i.q, label %bb.g, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.r = extractvalue { i32, i1 } %i.p, 0
  store i32 %i.r, ptr %i.c, align 4, !noalias !36
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  store i16 2, ptr %i.j, align 8, !tbaa !45, !alias.scope !36
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %_ZN5folly12_GLOBAL__N_119suspendedLeafFramesEv.exit
  %i.s = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.j, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21, !noalias !36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !36
  %i.t = load ptr, ptr %3, align 8, !tbaa !39     ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  %i.u = select i1 %.not.i.i.i, i64 16, i64 -40
  %i.v = getelementptr i8, ptr %i.t, i64 %i.u
  %.val3.i = load ptr, ptr %i.v, align 8, !tbaa !47 ; 2 uses
  %i.w = icmp eq ptr %.val3.i, null
  br i1 %i.w, label %"_ZZN5folly24sweepSuspendedLeafFramesENS_11FunctionRefIFvPNS_15AsyncStackFrameEEEEENK3$_0clIKSt13unordered_setIS2_St4hashIS2_ESt8equal_toIS2_ESaIS2_EEEEDaRT_.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.noexc.i
  %.sroa.02.05.i.i.i = phi ptr [ %i.z, %.noexc.i ], [ %.val3.i, %bb.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !55
  invoke void %1(ptr noundef %i.y, ptr noundef %0)
          to label %.noexc.i unwind label %bb.s, !inline_history !56

.noexc.i:                                         ; preds = %.lr.ph.i.i.i
  %i.z = load ptr, ptr %.sroa.02.05.i.i.i, align 8, !tbaa !57 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %"_ZZN5folly24sweepSuspendedLeafFramesENS_11FunctionRefIFvPNS_15AsyncStackFrameEEEEENK3$_0clIKSt13unordered_setIS2_St4hashIS2_ESt8equal_toIS2_ESaIS2_EEEEDaRT_.exit.i", label %.lr.ph.i.i.i, !llvm.loop !58

"_ZZN5folly24sweepSuspendedLeafFramesENS_11FunctionRefIFvPNS_15AsyncStackFrameEEEEENK3$_0clIKSt13unordered_setIS2_St4hashIS2_ESt8equal_toIS2_ESaIS2_EEEEDaRT_.exit.i": ; preds = %.noexc.i, %bb.i
  %i.ab = load i16, ptr %i.j, align 8, !tbaa !45  ; 2 uses
  %.not.i.i5.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.i5.i, label %"_ZNK5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setIPNS_15AsyncStackFrameESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE9withRLockIZNS_24sweepSuspendedLeafFramesENS_11FunctionRefIFvS4_EEEE3$_0EEDaOT_.exit", label %bb.j

bb.j:                                             ; preds = %"_ZZN5folly24sweepSuspendedLeafFramesENS_11FunctionRefIFvPNS_15AsyncStackFrameEEEEENK3$_0clIKSt13unordered_setIS2_St4hashIS2_ESt8equal_toIS2_ESaIS2_EEEEDaRT_.exit.i"
  %i.ac = load ptr, ptr %3, align 8, !tbaa !39    ; 7 uses
  switch i16 %i.ab, label %bb.p [
    i16 1, label %bb.k
    i16 3, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %i.ad = load atomic i32, ptr %i.ac acquire, align 4
  %i.ae = and i32 %i.ad, 768
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.ac)
          to label %.noexc6.i unwind label %bb.r

.noexc6.i:                                        ; preds = %bb.l
  br i1 %i.ag, label %"_ZNK5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setIPNS_15AsyncStackFrameESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE9withRLockIZNS_24sweepSuspendedLeafFramesENS_11FunctionRefIFvS4_EEEE3$_0EEDaOT_.exit", label %bb.m

bb.m:                                             ; preds = %.noexc6.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.ah = atomicrmw sub ptr %i.ac, i32 2048 seq_cst, align 4 ; 2 uses
  %i.ai = add i32 %i.ah, -2048                    ; 2 uses
  store i32 %i.ai, ptr %i.b, align 4, !tbaa !7
  %i.aj = icmp ugt i32 %i.ai, 2047
  %i.ak = and i32 %i.ah, 16
  %.not.i.i.i.i.i = icmp eq i32 %i.ak, 0
  %or.cond.i.i.i.i = or i1 %i.aj, %.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i.i, label %bb.n, !prof !60

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i.i unwind label %bb.r

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i.i: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %"_ZNK5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setIPNS_15AsyncStackFrameESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE9withRLockIZNS_24sweepSuspendedLeafFramesENS_11FunctionRefIFvS4_EEEE3$_0EEDaOT_.exit"

bb.o:                                             ; preds = %bb.j
  %i.al = load i16, ptr %i.k, align 2, !tbaa !46
  %i.am = zext i16 %i.al to i64
  %i.an = ptrtoint ptr %i.ac to i64
  %.idx.i.i = shl nuw nsw i64 %i.am, 5
  %i.ao = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i.i
  %i.ap = cmpxchg ptr %i.ao, i64 %i.an, i64 0 seq_cst seq_cst, align 8
  %i.aq = extractvalue { i64, i1 } %i.ap, 1
  br i1 %i.aq, label %"_ZNK5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setIPNS_15AsyncStackFrameESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE9withRLockIZNS_24sweepSuspendedLeafFramesENS_11FunctionRefIFvS4_EEEE3$_0EEDaOT_.exit", label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ar = atomicrmw sub ptr %i.ac, i32 2048 seq_cst, align 4 ; 2 uses
  %i.as = add i32 %i.ar, -2048                    ; 2 uses
  store i32 %i.as, ptr %i.a, align 4, !tbaa !7
  %i.at = icmp ugt i32 %i.as, 2047
  %i.au = and i32 %i.ar, 16
  %.not.i.i.i.i = icmp eq i32 %i.au, 0
  %or.cond.i.i.i = or i1 %i.at, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.q, !prof !60

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.r

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %"_ZNK5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setIPNS_15AsyncStackFrameESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE9withRLockIZNS_24sweepSuspendedLeafFramesENS_11FunctionRefIFvS4_EEEE3$_0EEDaOT_.exit"

bb.r:                                             ; preds = %bb.q, %bb.n, %bb.l
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #25
  unreachable

bb.s:                                             ; preds = %.lr.ph.i.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrIKNS_12SynchronizedISt13unordered_setIPNS_15AsyncStackFrameESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSH_22SynchronizedMutexLevelE2ELNSH_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %common.resume

"_ZNK5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setIPNS_15AsyncStackFrameESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE9withRLockIZNS_24sweepSuspendedLeafFramesENS_11FunctionRefIFvS4_EEEE3$_0EEDaOT_.exit": ; preds = %"_ZZN5folly24sweepSuspendedLeafFramesENS_11FunctionRefIFvPNS_15AsyncStackFrameEEEEENK3$_0clIKSt13unordered_setIS2_St4hashIS2_ESt8equal_toIS2_ESaIS2_EEEEDaRT_.exit.i", %.noexc6.i, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i.i, %bb.o, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN5folly14IndestructibleISt10unique_ptrINS_12SynchronizedISt13unordered_setIPNS_15AsyncStackFrameESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEESt14default_deleteISG_EEEC2IZNS_12_GLOBAL__N_119suspendedLeafFramesEvE3$_0EENS_21factory_constructor_tEOT_"() unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26, !noalias !61 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false), !noalias !61
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.c, ptr %i.a, align 8, !tbaa !64, !noalias !61
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.d, align 8, !tbaa !65, !noalias !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !61
  store float 1.000000e+00, ptr %i.b, align 8, !tbaa !66, !noalias !61
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.f, i8 0, i64 20, i1 false), !noalias !61
  store ptr %i.a, ptr @_ZZN5folly12_GLOBAL__N_119suspendedLeafFramesEvE8instance.0, align 8, !tbaa !34, !alias.scope !61
  store ptr %i.a, ptr @__folly_leaf_frame_store, align 8, !tbaa !67
  ret void
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #16

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: cold
declare noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrIKNS_12SynchronizedISt13unordered_setIPNS_15AsyncStackFrameESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSH_22SynchronizedMutexLevelE2ELNSH_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !45
  %.not.i = icmp eq i16 %i.b, 0
  br i1 %.not.i, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !39
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.a)
          to label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #25
  unreachable

_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = load atomic i32, ptr @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit, !prof !69

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache) #27
  br label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit

_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.e, %bb.b ], [ %i.d, %bb.a ]
  %i.g = tail call nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE26tls_lastDeferredReaderSlotEvE2tl) ; 2 uses
  %i.h = tail call i32 @llvm.umin.i32(i32 %i.f, i32 256)
  %.sroa.speculated.i = zext nneg i32 %i.h to i64
  %i.i = getelementptr inbounds nuw [256 x i8], ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 %.sroa.speculated.i
  %i.j = icmp eq ptr %2, null                     ; 2 uses
  %i.k = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.l = or disjoint i64 %i.k, 1
  %i.m = tail call nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE21tls_lastTokenlessSlotEvE2tl)
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit
  %i.n = load i32, ptr %1, align 4, !tbaa !7      ; 2 uses
  %i.o = and i32 %i.n, 128
  %.not49 = icmp eq i32 %i.o, 0
  br i1 %.not49, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %bb.d, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.p = call noundef i64 @llvm.x86.rdtsc()
  %i.q = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.q, ptr %1, align 4, !tbaa !7
  %i.r = and i32 %i.q, 128
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %i.t = call noundef i64 @llvm.x86.rdtsc()
  %i.u = sub i64 %i.t, %i.p
  %i.v = icmp ult i64 %i.u, 4000
  br i1 %i.v, label %bb.e, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, !prof !15

bb.e:                                             ; preds = %.lr.ph.i
  call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !70
  %i.w = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.w, ptr %1, align 4, !tbaa !7
  %i.x = and i32 %i.w, 128
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %.lr.ph.i, !llvm.loop !71

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit: ; preds = %.lr.ph.i
  %i.z = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20yieldWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 128, i32 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 0 uses
  %.pre = load i32, ptr %1, align 4, !tbaa !7
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread: ; preds = %bb.e, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, %bb.d, %bb.c
  %i.aa = phi i32 [ %i.n, %bb.c ], [ %.pre, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit ], [ %i.q, %bb.d ], [ %i.w, %bb.e ] ; 3 uses
  %i.ab = load atomic i32, ptr %i.g monotonic, align 4 ; 2 uses
  %i.ac = and i32 %i.aa, -1536
  %or.cond = icmp eq i32 %i.ac, 0
  br i1 %or.cond, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread
  %i.ad = shl i32 %i.ab, 2
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.ae
  %i.ag = load atomic i64, ptr %i.af monotonic, align 32
  %.not = icmp eq i64 %i.ag, 0
  br i1 %.not, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 65792) acquire, align 8
  %.not.i59 = icmp eq ptr %i.ah, null
  br i1 %.not.i59, label %bb.h, label %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit, !prof !69

bb.h:                                             ; preds = %bb.g
  %i.ai = call noundef zeroext i1 @_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE(ptr noundef nonnull align 8 dereferenceable(65800) @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, ptr noundef nonnull @_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv, ptr noundef nonnull @_ZN5folly13CacheLocality6systemISt6atomicEERKS0_v) ; 0 uses
  br label %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit

_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.aj = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 65792) monotonic, align 8
  %i.ak = call noundef i32 %i.aj(ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null), !inline_history !72 ; 0 uses
  %i.al = load i32, ptr %i.c, align 4, !tbaa !7
  %i.am = and i32 %i.al, 255                      ; 2 uses
  store i32 %i.am, ptr %i.c, align 4, !tbaa !7
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.an
  %i.ap = load atomic i8, ptr %i.ao monotonic, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.aq = zext i8 %i.ap to i32                    ; 3 uses
  %i.ar = shl nuw nsw i32 %i.aq, 2
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.as
  %i.au = load atomic i64, ptr %i.at monotonic, align 32
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit
  %i.aw = xor i32 %i.aq, 1                        ; 2 uses
  %i.ax = shl nuw nsw i32 %i.aw, 2
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.ay
  %i.ba = load atomic i64, ptr %i.az monotonic, align 32
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.j, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.i
  %.pre90 = load i32, ptr %1, align 4, !tbaa !7
  br label %.loopexit

bb.j:                                             ; preds = %bb.i, %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit
  %.lcssa = phi i32 [ %i.aq, %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit ], [ %i.aw, %bb.i ] ; 2 uses
  store atomic i32 %.lcssa, ptr %i.g monotonic, align 4
  %.pre89 = load i32, ptr %1, align 4, !tbaa !7
  br label %bb.m

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread
  %i.bc = phi i32 [ %.pre90, %.loopexit.loopexit ], [ %i.aa, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread ] ; 2 uses
  %i.bd = add i32 %i.bc, 2048
  %i.be = cmpxchg ptr %0, i32 %i.bc, i32 %i.bd seq_cst seq_cst, align 4 ; 2 uses
  %i.bf = extractvalue { i32, i1 } %i.be, 1
  br i1 %i.bf, label %bb.k, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit: ; preds = %.loopexit
  %i.bg = extractvalue { i32, i1 } %i.be, 0
  store i32 %i.bg, ptr %1, align 4
  br label %.backedge

bb.k:                                             ; preds = %.loopexit
  br i1 %i.j, label %.thread80, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i16 2, ptr %2, align 2, !tbaa !45
  br label %.thread80

bb.m:                                             ; preds = %bb.f, %bb.j
  %i.bh = phi i32 [ %.pre89, %bb.j ], [ %i.aa, %bb.f ] ; 3 uses
  %.246.ph = phi i32 [ %.lcssa, %bb.j ], [ %i.ab, %bb.f ] ; 3 uses
  %i.bi = and i32 %i.bh, 512
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.n, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit57.thread

bb.n:                                             ; preds = %bb.m
  %i.bk = or disjoint i32 %i.bh, 512
  %i.bl = cmpxchg ptr %0, i32 %i.bh, i32 %i.bk seq_cst seq_cst, align 4 ; 2 uses
  %i.bm = extractvalue { i32, i1 } %i.bl, 1
  br i1 %i.bm, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit57.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = extractvalue { i32, i1 } %i.bl, 0       ; 2 uses
  store i32 %i.bn, ptr %1, align 4
  %i.bo = and i32 %i.bn, 640
  %.not52 = icmp eq i32 %i.bo, 512
  br i1 %.not52, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit57.thread, label %.backedge

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit57.thread: ; preds = %bb.n, %bb.o, %bb.m
  %i.bp = shl i32 %.246.ph, 2
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.bq ; 3 uses
  br i1 %i.j, label %bb.p, label %.thread76

bb.p:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit57.thread
  %i.bs = cmpxchg ptr %i.br, i64 0, i64 %i.l seq_cst seq_cst, align 8
  %i.bt = extractvalue { i64, i1 } %i.bs, 1
  br i1 %i.bt, label %.thread78, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

.thread76:                                        ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit57.thread
  %i.bu = cmpxchg ptr %i.br, i64 0, i64 %i.k seq_cst seq_cst, align 8
  %i.bv = extractvalue { i64, i1 } %i.bu, 1
  br i1 %i.bv, label %bb.q, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit: ; preds = %.thread76, %bb.p
  %i.bw = load atomic i32, ptr %0 acquire, align 4
  store i32 %i.bw, ptr %1, align 4, !tbaa !7
  br label %.backedge

.backedge:                                        ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit, %bb.u, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63, %.thread81, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit, %bb.o
  br label %bb.c, !llvm.loop !73

bb.q:                                             ; preds = %.thread76
  %i.bx = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.bx, ptr %1, align 4, !tbaa !7
  %i.by = and i32 %i.bx, 512
  %.not53 = icmp eq i32 %i.by, 0
  br i1 %.not53, label %bb.u, label %bb.r

.thread78:                                        ; preds = %bb.p
  %i.bz = load atomic i32, ptr %0 acquire, align 4
  store i32 %i.bz, ptr %1, align 4, !tbaa !7
  store atomic i32 %.246.ph, ptr %i.m monotonic, align 4
  %i.ca = load i32, ptr %1, align 4, !tbaa !7
  %i.cb = and i32 %i.ca, 512
  %.not5379 = icmp eq i32 %i.cb, 0
  br i1 %.not5379, label %.thread81, label %.thread80

bb.r:                                             ; preds = %bb.q
  store i16 3, ptr %2, align 2, !tbaa !45
  %i.cc = trunc i32 %.246.ph to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.cc, ptr %i.cd, align 2, !tbaa !46
  br label %.thread80

.thread81:                                        ; preds = %.thread78
  %i.ce = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %0)
  br i1 %i.ce, label %.backedge, label %bb.s

bb.s:                                             ; preds = %.thread81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.cf = atomicrmw sub ptr %0, i32 2048 seq_cst, align 4 ; 2 uses
  %i.cg = add i32 %i.cf, -2048                    ; 2 uses
  store i32 %i.cg, ptr %i.b, align 4, !tbaa !7
  %i.ch = icmp ugt i32 %i.cg, 2047
  %i.ci = and i32 %i.cf, 16
  %.not.i.i = icmp eq i32 %i.ci, 0
  %or.cond.i = or i1 %i.ch, %.not.i.i
  br i1 %or.cond.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit, label %bb.t, !prof !60

bb.t:                                             ; preds = %bb.s
  call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.backedge

bb.u:                                             ; preds = %bb.q
  %i.cj = cmpxchg ptr %i.br, i64 %i.k, i64 0 seq_cst seq_cst, align 8
  %i.ck = extractvalue { i64, i1 } %i.cj, 1
  br i1 %i.ck, label %.backedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.cl = atomicrmw sub ptr %0, i32 2048 seq_cst, align 4 ; 2 uses
  %i.cm = add i32 %i.cl, -2048                    ; 2 uses
  store i32 %i.cm, ptr %i.a, align 4, !tbaa !7
  %i.cn = icmp ugt i32 %i.cm, 2047
  %i.co = and i32 %i.cl, 16
  %.not.i.i60 = icmp eq i32 %i.co, 0
  %or.cond.i61 = or i1 %i.cn, %.not.i.i60
  br i1 %or.cond.i61, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63, label %bb.w, !prof !60

bb.w:                                             ; preds = %bb.v
  call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.backedge

.thread80:                                        ; preds = %.thread78, %bb.k, %bb.l, %bb.r
  ret i1 true
}

declare noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20yieldWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @sched_yield() #21 ; 0 uses
  %i.b = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.b, ptr %1, align 4, !tbaa !7
  %i.c = and i32 %i.b, %2
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @sched_yield() #21 ; 0 uses
  %i.f = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.f, ptr %1, align 4, !tbaa !7
  %i.g = and i32 %i.f, %2
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_ZN5folly19shared_mutex_detail45getCurrentThreadInvoluntaryContextSwitchCountEv() ; 0 uses
  %i.j = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.j, ptr %1, align 4, !tbaa !7
  %i.k = and i32 %i.j, %2
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load atomic i32, ptr %0 acquire, align 4 ; 4 uses
  store i32 %i.m, ptr %1, align 4, !tbaa !7
  %i.n = and i32 %i.m, %2
end_hunk_0
