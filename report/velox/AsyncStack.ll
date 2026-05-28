inline.NumInlined: 208
inline.NumDeleted: 152
begin_hunk_0_@"_ZZN5folly12_GLOBAL__N_134ensureAsyncRootTlsKeyIsInitialisedEvEN3$_08__invokeEv":bb.a
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
  %i.f = icmp eq i8 %.pre, 0
  %i.g = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE) ; 3 uses
  %i.h = load atomic ptr, ptr %i.g monotonic, align 8 ; 2 uses
  br i1 %i.f, label %bb.b, label %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit2, !prof !17

bb.b:                                             ; preds = %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit
  store i8 1, ptr @__tls_guard, align 1
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  tail call fastcc void @__cxx_global_var_init.1()
  br label %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit2

_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit2: ; preds = %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit.thread, %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit, %bb.b
  %i.j = phi ptr [ %i.d, %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit.thread ], [ %i.h, %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit ], [ %i.h, %bb.b ]
  %i.k = phi ptr [ %i.c, %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit.thread ], [ %i.g, %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit ], [ %i.g, %bb.b ]
  fence syncscope("singlethread") release
  store atomic ptr %0, ptr %i.k monotonic, align 8
  ret ptr %i.j
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
  %i.i = icmp eq i8 %.pre, 0
  %i.j = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE) ; 3 uses
  %i.k = load atomic ptr, ptr %i.j monotonic, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !24
  br i1 %i.i, label %bb.b, label %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit3, !prof !17

bb.b:                                             ; preds = %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit
  store i8 1, ptr @__tls_guard, align 1
  %i.m = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  tail call fastcc void @__cxx_global_var_init.1()
  br label %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit3

_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit3: ; preds = %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit.thread, %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit, %bb.b
  %i.n = phi ptr [ %i.e, %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit.thread ], [ %i.j, %_ZTWN5folly12_GLOBAL__N_127currentThreadAsyncStackRootE.exit ], [ %i.j, %bb.b ]
  fence syncscope("singlethread") release
  store atomic ptr %0, ptr %i.n monotonic, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZN5folly6detail20ScopedAsyncStackRootD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(32) dereferenceable(32) %0) unnamed_addr #7 align 2 {
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
  invoke fastcc void %i.d(ptr nonnull %0)
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
define void @_ZN5folly21activateSuspendedLeafERNS_15AsyncStackFrameE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((16, 24)) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = load volatile i64, ptr @__folly_suspended_frame_cookie, align 8, !tbaa !31
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5folly21isSuspendedLeafActiveERNS_15AsyncStackFrameE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = load volatile i64, ptr @__folly_suspended_frame_cookie, align 8, !tbaa !31
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = icmp eq ptr %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5folly23deactivateSuspendedLeafERNS_15AsyncStackFrameE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((16, 24)) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly24sweepSuspendedLeafFramesENS_11FunctionRefIFvPNS_15AsyncStackFrameEEEE(ptr %0, ptr readonly captures(none) %1) local_unnamed_addr #15 personality ptr @__gxx_personality_v0 {
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
end_hunk_0
