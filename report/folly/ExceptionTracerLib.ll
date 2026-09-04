Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/ExceptionTracerLib?download=true
inline.NumInlined: 847
inline.NumDeleted: 409
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define void @_ZN5folly16exception_tracer26unregisterCxaThrowCallbackERDoFvPvPSt9type_infoPPFvS1_EE(ptr nofree noundef nonnull readnone captures(address) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %i.c = load atomic i8, ptr @_ZGVZN5folly16exception_tracer20getCxaThrowCallbacksEvE9Callbacks acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN5folly16exception_tracer20getCxaThrowCallbacksEv.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly16exception_tracer20getCxaThrowCallbacksEvE9Callbacks) #8, !inline_history !0
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN5folly16exception_tracer20getCxaThrowCallbacksEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly16exception_tracer20getCxaThrowCallbacksEvE9Callbacks, i8 0, i64 32, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly16exception_tracer20getCxaThrowCallbacksEvE9Callbacks) #8, !inline_history !0
  br label %_ZN5folly16exception_tracer20getCxaThrowCallbacksEv.exit

_ZN5folly16exception_tracer20getCxaThrowCallbacksEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8, !noalias !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8, !noalias !80
  %i.f = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer20getCxaThrowCallbacksEvE9Callbacks, i64 24) acquire, align 8, !noalias !80 ; 4 uses
  store i32 %i.f, ptr %i.b, align 4, !tbaa !28, !noalias !80
  %i.g = and i32 %i.f, -1312
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %.critedge.i.i.i.i.i.i.i, !prof !29

bb.d:                                             ; preds = %_ZN5folly16exception_tracer20getCxaThrowCallbacksEv.exit
  %i.i = or disjoint i32 %i.f, 128
  %i.j = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer20getCxaThrowCallbacksEvE9Callbacks, i64 24), i32 %i.f, i32 %i.i seq_cst seq_cst, align 4, !noalias !80 ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 1
  br i1 %i.k, label %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPDoFvPvPSt9type_infoPPFvS3_EESaISA_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, !prof !30

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.l = extractvalue { i32, i1 } %i.j, 0
  store i32 %i.l, ptr %i.b, align 4, !noalias !80
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %_ZN5folly16exception_tracer20getCxaThrowCallbacksEv.exit
  %i.m = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer20getCxaThrowCallbacksEvE9Callbacks, i64 24), ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %1), !noalias !80 ; 0 uses
  br label %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPDoFvPvPSt9type_infoPPFvS3_EESaISA_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit.i

_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPDoFvPvPSt9type_infoPPFvS3_EESaISA_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit.i: ; preds = %.critedge.i.i.i.i.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8, !noalias !80
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8, !noalias !80
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer20getCxaThrowCallbacksEvE9Callbacks, i64 8), align 8, !tbaa !33 ; 7 uses
  %i.o = load ptr, ptr @_ZZN5folly16exception_tracer20getCxaThrowCallbacksEvE9Callbacks, align 8, !tbaa !35 ; 4 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = ashr i64 %i.r, 5                         ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %.lr.ph.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPDoFvPvPSt9type_infoPPFvS3_EESaISA_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit.i
  %i.u = and i64 %i.r, -32
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.o, i64 %i.u ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %.lr.ph.preheader.i.i.i.i.i
  %.052.i.i.i.i.i = phi i64 [ %i.ah, %bb.h ], [ %i.s, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i = phi ptr [ %i.ag, %bb.h ], [ %i.o, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  %i.v = load ptr, ptr %.sroa.032.051.i.i.i.i.i, align 8, !tbaa !34
  %i.w = icmp eq ptr %i.v, %0
  br i1 %i.w, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !34
  %i.z = icmp eq ptr %i.y, %0
  br i1 %i.z, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i.i.loopexit.split.loop.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34
  %i.ac = icmp eq ptr %i.ab, %0
  br i1 %i.ac, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i.i.loopexit.split.loop.exit16, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !34
  %i.af = icmp eq ptr %i.ae, %0
  br i1 %i.af, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i.i.loopexit.split.loop.exit18, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 32
  %i.ah = add nsw i64 %.052.i.i.i.i.i, -1
  %i.ai = icmp sgt i64 %.052.i.i.i.i.i, 1
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !78

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.h
  %.pre.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i to i64
  %.pre57.i.i.i.i.i = sub i64 %i.p, %.pre.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPDoFvPvPSt9type_infoPPFvS3_EESaISA_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit.i
  %.pre-phi58.i.i.i.i.i = phi i64 [ %.pre57.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.r, %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPDoFvPvPSt9type_infoPPFvS3_EESaISA_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit.i ]
  %.sroa.032.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.o, %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPDoFvPvPSt9type_infoPPFvS3_EESaISA_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit.i ] ; 5 uses
  %i.aj = ashr exact i64 %.pre-phi58.i.i.i.i.i, 3
  switch i64 %i.aj, label %_ZSt5eraseIPDoFvPvPSt9type_infoPPFvS0_EESaIS7_ES6_ENSt6vectorIT_T0_E9size_typeERSC_RKT1_.exit.i [
    i64 3, label %bb.i
    i64 2, label %bb.k
    i64 1, label %bb.m
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ak = load ptr, ptr %.sroa.032.0.lcssa.i.i.i.i.i, align 8, !tbaa !34
  %i.al = icmp eq ptr %i.ak, %0
  br i1 %i.al, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i
  %.sroa.032.1.i.i.i.i.i = phi ptr [ %i.am, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.an = load ptr, ptr %.sroa.032.1.i.i.i.i.i, align 8, !tbaa !34
  %i.ao = icmp eq ptr %i.an, %0
  br i1 %i.ao, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i, i64 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i.i.i
  %.sroa.032.2.i.i.i.i.i = phi ptr [ %i.ap, %bb.l ], [ %.sroa.032.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.aq = load ptr, ptr %.sroa.032.2.i.i.i.i.i, align 8, !tbaa !34
  %i.ar = icmp eq ptr %i.aq, %0
  %spec.select.i.i.i.i.i = select i1 %i.ar, ptr %.sroa.032.2.i.i.i.i.i, ptr %i.n
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i.i.loopexit.split.loop.exit: ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i.i.loopexit.split.loop.exit16: ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 16
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i.i.loopexit.split.loop.exit18: ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 24
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i.i.loopexit.split.loop.exit16, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i.i.loopexit.split.loop.exit18, %bb.m, %bb.k, %bb.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i.i, %bb.k ], [ %spec.select.i.i.i.i.i, %bb.m ], [ %.sroa.032.0.lcssa.i.i.i.i.i, %bb.i ], [ %i.au, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i.i.loopexit.split.loop.exit18 ], [ %i.as, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i.i.loopexit.split.loop.exit ], [ %i.at, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i.i.loopexit.split.loop.exit16 ], [ %.sroa.032.051.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.av = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %i.n
  %.sroa.07.026.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, i64 8 ; 2 uses
  %i.aw = icmp eq ptr %.sroa.07.026.i.i.i, %i.n
  %or.cond.i.i.i = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %or.cond.i.i.i, label %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i.i, %bb.o
  %.sroa.07.028.i.i.i = phi ptr [ %.sroa.07.0.i.i.i, %bb.o ], [ %.sroa.07.026.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i.i ] ; 2 uses
  %.sroa.013.027.i.i.i = phi ptr [ %.sroa.013.1.i.i.i, %bb.o ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i.i ] ; 3 uses
  %i.ax = load ptr, ptr %.sroa.07.028.i.i.i, align 8, !tbaa !34 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %0
  br i1 %i.ay, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i
  store ptr %i.ax, ptr %.sroa.013.027.i.i.i, align 8, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.013.027.i.i.i, i64 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.i.i
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.027.i.i.i, %.lr.ph.i.i.i ], [ %i.az, %bb.n ] ; 2 uses
  %.sroa.07.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.028.i.i.i, i64 8 ; 2 uses
  %i.ba = icmp eq ptr %.sroa.07.0.i.i.i, %i.n
  br i1 %i.ba, label %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i.loopexit, label %.lr.ph.i.i.i, !llvm.loop !79

_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i.loopexit: ; preds = %bb.o
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer20getCxaThrowCallbacksEvE9Callbacks, i64 8), align 8
  br label %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i

_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i: ; preds = %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i.loopexit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i.i
  %i.bb = phi ptr [ %i.n, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i.i ], [ %.pre, %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i.loopexit ]
  %.sroa.013.2.i.i.i = phi ptr [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i.i ], [ %.sroa.013.1.i.i.i, %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i.loopexit ] ; 3 uses
  %i.bc = icmp eq ptr %.sroa.013.2.i.i.i, %i.n
  %i.bd = icmp eq ptr %.sroa.013.2.i.i.i, %i.bb
  %or.cond.i = select i1 %i.bc, i1 true, i1 %i.bd
  br i1 %or.cond.i, label %_ZSt5eraseIPDoFvPvPSt9type_infoPPFvS0_EESaIS7_ES6_ENSt6vectorIT_T0_E9size_typeERSC_RKT1_.exit.i, label %_ZSt8_DestroyIPPDoFvPvPSt9type_infoPPFvS0_EES7_EvT_S9_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPPDoFvPvPSt9type_infoPPFvS0_EES7_EvT_S9_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i
  %.pre.i.i = load ptr, ptr @_ZZN5folly16exception_tracer20getCxaThrowCallbacksEvE9Callbacks, align 8, !tbaa !45 ; 2 uses
  %.pre33.i.i = ptrtoint ptr %.pre.i.i to i64
  %.pre33.i.i.a = ptrtoint ptr %.sroa.013.2.i.i.i to i64
  %i.be = sub i64 %.pre33.i.i.a, %.pre33.i.i
  %i.bf = getelementptr inbounds i8, ptr %.pre.i.i, i64 %i.be
  store ptr %i.bf, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer20getCxaThrowCallbacksEvE9Callbacks, i64 8), align 8, !tbaa !33
  br label %_ZSt5eraseIPDoFvPvPSt9type_infoPPFvS0_EESaIS7_ES6_ENSt6vectorIT_T0_E9size_typeERSC_RKT1_.exit.i

_ZSt5eraseIPDoFvPvPSt9type_infoPPFvS0_EESaIS7_ES6_ENSt6vectorIT_T0_E9size_typeERSC_RKT1_.exit.i: ; preds = %_ZSt8_DestroyIPPDoFvPvPSt9type_infoPPFvS0_EES7_EvT_S9_RSaIT0_E.exit.i.i.i.i.i, %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvPSt9type_infoPPFvS2_EESt6vectorIS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SI_SI_T0_.exit.i.i, %._crit_edge.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.bg = atomicrmw and ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer20getCxaThrowCallbacksEvE9Callbacks, i64 24), i32 -401 seq_cst, align 4 ; 2 uses
  %i.bh = and i32 %i.bg, -401
  store i32 %i.bh, ptr %i.a, align 4, !tbaa !28
  %i.bi = and i32 %i.bg, 15
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_114CallbackHolderIDoFvPvPSt9type_infoPPFvS1_EEE18unregisterCallbackERS7_.exit, label %bb.p, !prof !29

bb.p:                                             ; preds = %_ZSt5eraseIPDoFvPvPSt9type_infoPPFvS0_EESaIS7_ES6_ENSt6vectorIT_T0_E9size_typeERSC_RKT1_.exit.i
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer20getCxaThrowCallbacksEvE9Callbacks, i64 24), ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN12_GLOBAL__N_114CallbackHolderIDoFvPvPSt9type_infoPPFvS1_EEE18unregisterCallbackERS7_.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #23
  unreachable

_ZN12_GLOBAL__N_114CallbackHolderIDoFvPvPSt9type_infoPPFvS1_EEE18unregisterCallbackERS7_.exit: ; preds = %_ZSt5eraseIPDoFvPvPSt9type_infoPPFvS0_EESaIS7_ES6_ENSt6vectorIT_T0_E9size_typeERSC_RKT1_.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly16exception_tracer29registerCxaBeginCatchCallbackERDoFvPvE(ptr noundef nonnull %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %2 = alloca %"class.folly::LockedPtr.15", align 8 ; 7 uses
  %i.c = load atomic i8, ptr @_ZGVZN5folly16exception_tracer25getCxaBeginCatchCallbacksEvE9Callbacks acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN5folly16exception_tracer25getCxaBeginCatchCallbacksEv.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly16exception_tracer25getCxaBeginCatchCallbacksEvE9Callbacks) #8, !inline_history !1
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN5folly16exception_tracer25getCxaBeginCatchCallbacksEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly16exception_tracer25getCxaBeginCatchCallbacksEvE9Callbacks, i8 0, i64 32, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly16exception_tracer25getCxaBeginCatchCallbacksEvE9Callbacks) #8, !inline_history !1
  br label %_ZN5folly16exception_tracer25getCxaBeginCatchCallbacksEv.exit

_ZN5folly16exception_tracer25getCxaBeginCatchCallbacksEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer25getCxaBeginCatchCallbacksEvE9Callbacks, i64 24), ptr %2, align 8, !tbaa !26, !alias.scope !83
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i8 0, ptr %i.f, align 8, !tbaa !27, !alias.scope !83
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8, !noalias !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8, !noalias !83
  %i.g = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer25getCxaBeginCatchCallbacksEvE9Callbacks, i64 24) acquire, align 8, !noalias !83 ; 4 uses
  store i32 %i.g, ptr %i.b, align 4, !tbaa !28, !noalias !83
  %i.h = and i32 %i.g, -1312
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %.critedge.i.i.i.i.i.i.i, !prof !29

bb.d:                                             ; preds = %_ZN5folly16exception_tracer25getCxaBeginCatchCallbacksEv.exit
  %i.j = or disjoint i32 %i.g, 128
  %i.k = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer25getCxaBeginCatchCallbacksEvE9Callbacks, i64 24), i32 %i.g, i32 %i.j seq_cst seq_cst, align 4, !noalias !83 ; 2 uses
  %i.l = extractvalue { i32, i1 } %i.k, 1
  br i1 %i.l, label %bb.e, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, !prof !30

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.m = extractvalue { i32, i1 } %i.k, 0
  store i32 %i.m, ptr %i.b, align 4, !noalias !83
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %_ZN5folly16exception_tracer25getCxaBeginCatchCallbacksEv.exit
  %i.n = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer25getCxaBeginCatchCallbacksEvE9Callbacks, i64 24), ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %1), !noalias !83 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.critedge.i.i.i.i.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8, !noalias !83
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8, !noalias !83
  store i8 1, ptr %i.f, align 8, !tbaa !27, !alias.scope !83
  %i.o = load ptr, ptr %2, align 8, !tbaa !26     ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  %.neg.i.i.i = select i1 %.not.i.i.i, i64 0, i64 -24
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 %.neg.i.i.i ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !51   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !84
  %.not.i.i5.i = icmp eq ptr %i.r, %i.t
  br i1 %.not.i.i5.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr %i.r, align 8, !tbaa !34
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.v, ptr %i.q, align 8, !tbaa !51
  br label %_ZNSt6vectorIPDoFvPvESaIS2_EE9push_backEOS2_.exit.i

bb.g:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !52   ; 4 uses
  %i.x = ptrtoint ptr %i.r to i64
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = sub i64 %i.x, %i.y                       ; 5 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %bb.h, label %_ZNKSt6vectorIPDoFvPvESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %.noexc.i unwind label %bb.m

.noexc.i:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIPDoFvPvESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.g
  %i.ab = ashr exact i64 %i.z, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = call i64 @llvm.umin.i64(i64 %i.ac, i64 1152921504606846975)
  %i.af = select i1 %i.ad, i64 1152921504606846975, i64 %i.ae ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.af, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #21
          to label %.noexc6.i unwind label %bb.m  ; 4 uses

.noexc6.i:                                        ; preds = %_ZNKSt6vectorIPDoFvPvESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.z ; 2 uses
  store ptr %0, ptr %i.ai, align 8, !tbaa !34
  %i.aj = icmp sgt i64 %i.z, 0
  br i1 %i.aj, label %bb.i, label %_ZNSt6vectorIPDoFvPvESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

bb.i:                                             ; preds = %.noexc6.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.w, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIPDoFvPvESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

_ZNSt6vectorIPDoFvPvESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i: ; preds = %bb.i, %.noexc6.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPDoFvPvESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPDoFvPvESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  %i.al = load ptr, ptr %i.s, align 8, !tbaa !84
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.an) #22
  br label %_ZNSt6vectorIPDoFvPvESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPDoFvPvESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.j, %_ZNSt6vectorIPDoFvPvESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  store ptr %i.ah, ptr %i.p, align 8, !tbaa !52
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !51
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.ao, ptr %i.s, align 8, !tbaa !84
  br label %_ZNSt6vectorIPDoFvPvESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorIPDoFvPvESaIS2_EE9push_backEOS2_.exit.i: ; preds = %_ZNSt6vectorIPDoFvPvESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ap = atomicrmw and ptr %i.o, i32 -401 seq_cst, align 4 ; 2 uses
  %i.aq = and i32 %i.ap, -401
  store i32 %i.aq, ptr %i.a, align 4, !tbaa !28
  %i.ar = and i32 %i.ap, 15
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_114CallbackHolderIDoFvPvEE16registerCallbackERS2_.exit, label %bb.k, !prof !29

bb.k:                                             ; preds = %_ZNSt6vectorIPDoFvPvESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN12_GLOBAL__N_114CallbackHolderIDoFvPvEE16registerCallbackERS2_.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #23
  unreachable

bb.m:                                             ; preds = %_ZNKSt6vectorIPDoFvPvESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.h
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorIPDoFvPvESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSD_22SynchronizedMutexLevelE1ELNSD_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  resume { ptr, i32 } %i.au

_ZN12_GLOBAL__N_114CallbackHolderIDoFvPvEE16registerCallbackERS2_.exit: ; preds = %_ZNSt6vectorIPDoFvPvESaIS2_EE9push_backEOS2_.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorIPDoFvPvESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSD_22SynchronizedMutexLevelE1ELNSD_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !27, !range !36, !noundef !37
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

end_hunk_0
begin_hunk_1_@_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorIPDoFvPvESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSD_22SynchronizedMutexLevelE1ELNSD_23SynchronizedMutexMethodE0EEEED2Ev:bb.a

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #23
  unreachable

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly16exception_tracer31unregisterCxaBeginCatchCallbackERDoFvPvE(ptr nofree noundef nonnull readnone captures(address) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %i.c = load atomic i8, ptr @_ZGVZN5folly16exception_tracer25getCxaBeginCatchCallbacksEvE9Callbacks acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN5folly16exception_tracer25getCxaBeginCatchCallbacksEv.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly16exception_tracer25getCxaBeginCatchCallbacksEvE9Callbacks) #8, !inline_history !1
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN5folly16exception_tracer25getCxaBeginCatchCallbacksEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly16exception_tracer25getCxaBeginCatchCallbacksEvE9Callbacks, i8 0, i64 32, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly16exception_tracer25getCxaBeginCatchCallbacksEvE9Callbacks) #8, !inline_history !1
  br label %_ZN5folly16exception_tracer25getCxaBeginCatchCallbacksEv.exit

_ZN5folly16exception_tracer25getCxaBeginCatchCallbacksEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8, !noalias !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8, !noalias !89
  %i.f = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer25getCxaBeginCatchCallbacksEvE9Callbacks, i64 24) acquire, align 8, !noalias !89 ; 4 uses
  store i32 %i.f, ptr %i.b, align 4, !tbaa !28, !noalias !89
  %i.g = and i32 %i.f, -1312
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %.critedge.i.i.i.i.i.i.i, !prof !29

bb.d:                                             ; preds = %_ZN5folly16exception_tracer25getCxaBeginCatchCallbacksEv.exit
  %i.i = or disjoint i32 %i.f, 128
  %i.j = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer25getCxaBeginCatchCallbacksEvE9Callbacks, i64 24), i32 %i.f, i32 %i.i seq_cst seq_cst, align 4, !noalias !89 ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 1
  br i1 %i.k, label %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPDoFvPvESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, !prof !30

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.l = extractvalue { i32, i1 } %i.j, 0
  store i32 %i.l, ptr %i.b, align 4, !noalias !89
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %_ZN5folly16exception_tracer25getCxaBeginCatchCallbacksEv.exit
  %i.m = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer25getCxaBeginCatchCallbacksEvE9Callbacks, i64 24), ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %1), !noalias !89 ; 0 uses
  br label %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPDoFvPvESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit.i

_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPDoFvPvESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit.i: ; preds = %.critedge.i.i.i.i.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8, !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8, !noalias !89
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer25getCxaBeginCatchCallbacksEvE9Callbacks, i64 8), align 8, !tbaa !51 ; 7 uses
  %i.o = load ptr, ptr @_ZZN5folly16exception_tracer25getCxaBeginCatchCallbacksEvE9Callbacks, align 8, !tbaa !52 ; 4 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = ashr i64 %i.r, 5                         ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %.lr.ph.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPDoFvPvESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit.i
  %i.u = and i64 %i.r, -32
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.o, i64 %i.u ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %.lr.ph.preheader.i.i.i.i.i
  %.052.i.i.i.i.i = phi i64 [ %i.ah, %bb.h ], [ %i.s, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i = phi ptr [ %i.ag, %bb.h ], [ %i.o, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  %i.v = load ptr, ptr %.sroa.032.051.i.i.i.i.i, align 8, !tbaa !34
  %i.w = icmp eq ptr %i.v, %0
  br i1 %i.w, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !34
  %i.z = icmp eq ptr %i.y, %0
  br i1 %i.z, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i.i.loopexit.split.loop.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34
  %i.ac = icmp eq ptr %i.ab, %0
  br i1 %i.ac, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i.i.loopexit.split.loop.exit16, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !34
  %i.af = icmp eq ptr %i.ae, %0
  br i1 %i.af, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i.i.loopexit.split.loop.exit18, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 32
  %i.ah = add nsw i64 %.052.i.i.i.i.i, -1
  %i.ai = icmp sgt i64 %.052.i.i.i.i.i, 1
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !87

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.h
  %.pre.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i to i64
  %.pre57.i.i.i.i.i = sub i64 %i.p, %.pre.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPDoFvPvESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit.i
  %.pre-phi58.i.i.i.i.i = phi i64 [ %.pre57.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.r, %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPDoFvPvESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit.i ]
  %.sroa.032.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.o, %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPDoFvPvESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit.i ] ; 5 uses
  %i.aj = ashr exact i64 %.pre-phi58.i.i.i.i.i, 3
  switch i64 %i.aj, label %_ZSt5eraseIPDoFvPvESaIS2_ES1_ENSt6vectorIT_T0_E9size_typeERS7_RKT1_.exit.i [
    i64 3, label %bb.i
    i64 2, label %bb.k
    i64 1, label %bb.m
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ak = load ptr, ptr %.sroa.032.0.lcssa.i.i.i.i.i, align 8, !tbaa !34
  %i.al = icmp eq ptr %i.ak, %0
  br i1 %i.al, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i
  %.sroa.032.1.i.i.i.i.i = phi ptr [ %i.am, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.an = load ptr, ptr %.sroa.032.1.i.i.i.i.i, align 8, !tbaa !34
  %i.ao = icmp eq ptr %i.an, %0
  br i1 %i.ao, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i, i64 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i.i.i
  %.sroa.032.2.i.i.i.i.i = phi ptr [ %i.ap, %bb.l ], [ %.sroa.032.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.aq = load ptr, ptr %.sroa.032.2.i.i.i.i.i, align 8, !tbaa !34
  %i.ar = icmp eq ptr %i.aq, %0
  %spec.select.i.i.i.i.i = select i1 %i.ar, ptr %.sroa.032.2.i.i.i.i.i, ptr %i.n
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i.i.loopexit.split.loop.exit: ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i.i.loopexit.split.loop.exit16: ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 16
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i.i.loopexit.split.loop.exit18: ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 24
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i.i.loopexit.split.loop.exit16, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i.i.loopexit.split.loop.exit18, %bb.m, %bb.k, %bb.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i.i, %bb.k ], [ %spec.select.i.i.i.i.i, %bb.m ], [ %.sroa.032.0.lcssa.i.i.i.i.i, %bb.i ], [ %i.au, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i.i.loopexit.split.loop.exit18 ], [ %i.as, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i.i.loopexit.split.loop.exit ], [ %i.at, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i.i.loopexit.split.loop.exit16 ], [ %.sroa.032.051.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.av = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %i.n
  %.sroa.07.026.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, i64 8 ; 2 uses
  %i.aw = icmp eq ptr %.sroa.07.026.i.i.i, %i.n
  %or.cond.i.i.i = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %or.cond.i.i.i, label %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i.i, %bb.o
  %.sroa.07.028.i.i.i = phi ptr [ %.sroa.07.0.i.i.i, %bb.o ], [ %.sroa.07.026.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i.i ] ; 2 uses
  %.sroa.013.027.i.i.i = phi ptr [ %.sroa.013.1.i.i.i, %bb.o ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i.i ] ; 3 uses
  %i.ax = load ptr, ptr %.sroa.07.028.i.i.i, align 8, !tbaa !34 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %0
  br i1 %i.ay, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i
  store ptr %i.ax, ptr %.sroa.013.027.i.i.i, align 8, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.013.027.i.i.i, i64 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.i.i
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.027.i.i.i, %.lr.ph.i.i.i ], [ %i.az, %bb.n ] ; 2 uses
  %.sroa.07.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.028.i.i.i, i64 8 ; 2 uses
  %i.ba = icmp eq ptr %.sroa.07.0.i.i.i, %i.n
  br i1 %i.ba, label %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i.loopexit, label %.lr.ph.i.i.i, !llvm.loop !88

_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i.loopexit: ; preds = %bb.o
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer25getCxaBeginCatchCallbacksEvE9Callbacks, i64 8), align 8
  br label %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i

_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i: ; preds = %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i.loopexit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i.i
  %i.bb = phi ptr [ %i.n, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i.i ], [ %.pre, %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i.loopexit ]
  %.sroa.013.2.i.i.i = phi ptr [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i.i ], [ %.sroa.013.1.i.i.i, %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i.loopexit ] ; 3 uses
  %i.bc = icmp eq ptr %.sroa.013.2.i.i.i, %i.n
  %i.bd = icmp eq ptr %.sroa.013.2.i.i.i, %i.bb
  %or.cond.i = select i1 %i.bc, i1 true, i1 %i.bd
  br i1 %or.cond.i, label %_ZSt5eraseIPDoFvPvESaIS2_ES1_ENSt6vectorIT_T0_E9size_typeERS7_RKT1_.exit.i, label %_ZSt8_DestroyIPPDoFvPvES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPPDoFvPvES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i
  %.pre.i.i = load ptr, ptr @_ZZN5folly16exception_tracer25getCxaBeginCatchCallbacksEvE9Callbacks, align 8, !tbaa !45 ; 2 uses
  %.pre33.i.i = ptrtoint ptr %.pre.i.i to i64
  %.pre33.i.i.a = ptrtoint ptr %.sroa.013.2.i.i.i to i64
  %i.be = sub i64 %.pre33.i.i.a, %.pre33.i.i
  %i.bf = getelementptr inbounds i8, ptr %.pre.i.i, i64 %i.be
  store ptr %i.bf, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer25getCxaBeginCatchCallbacksEvE9Callbacks, i64 8), align 8, !tbaa !51
  br label %_ZSt5eraseIPDoFvPvESaIS2_ES1_ENSt6vectorIT_T0_E9size_typeERS7_RKT1_.exit.i

_ZSt5eraseIPDoFvPvESaIS2_ES1_ENSt6vectorIT_T0_E9size_typeERS7_RKT1_.exit.i: ; preds = %_ZSt8_DestroyIPPDoFvPvES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvPvESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_.exit.i.i, %._crit_edge.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.bg = atomicrmw and ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer25getCxaBeginCatchCallbacksEvE9Callbacks, i64 24), i32 -401 seq_cst, align 4 ; 2 uses
  %i.bh = and i32 %i.bg, -401
  store i32 %i.bh, ptr %i.a, align 4, !tbaa !28
  %i.bi = and i32 %i.bg, 15
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_114CallbackHolderIDoFvPvEE18unregisterCallbackERS2_.exit, label %bb.p, !prof !29

bb.p:                                             ; preds = %_ZSt5eraseIPDoFvPvESaIS2_ES1_ENSt6vectorIT_T0_E9size_typeERS7_RKT1_.exit.i
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer25getCxaBeginCatchCallbacksEvE9Callbacks, i64 24), ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN12_GLOBAL__N_114CallbackHolderIDoFvPvEE18unregisterCallbackERS2_.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #23
  unreachable

_ZN12_GLOBAL__N_114CallbackHolderIDoFvPvEE18unregisterCallbackERS2_.exit: ; preds = %_ZSt5eraseIPDoFvPvESaIS2_ES1_ENSt6vectorIT_T0_E9size_typeERS7_RKT1_.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly16exception_tracer26registerCxaRethrowCallbackERDoFvvE(ptr noundef nonnull %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5folly16exception_tracer22getCxaRethrowCallbacksEvE9Callbacks acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5folly16exception_tracer22getCxaRethrowCallbacksEv.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly16exception_tracer22getCxaRethrowCallbacksEvE9Callbacks) #8
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5folly16exception_tracer22getCxaRethrowCallbacksEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly16exception_tracer22getCxaRethrowCallbacksEvE9Callbacks, i8 0, i64 32, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly16exception_tracer22getCxaRethrowCallbacksEvE9Callbacks) #8
  br label %_ZN5folly16exception_tracer22getCxaRethrowCallbacksEv.exit

_ZN5folly16exception_tracer22getCxaRethrowCallbacksEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call fastcc void @_ZN12_GLOBAL__N_114CallbackHolderIDoFvvEE16registerCallbackERS1_(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly16exception_tracer22getCxaRethrowCallbacksEvE9Callbacks, ptr noundef nonnull %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_114CallbackHolderIDoFvvEE16registerCallbackERS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %3 = alloca %"class.folly::LockedPtr.30", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !26, !alias.scope !92
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i8 0, ptr %i.d, align 8, !tbaa !27, !alias.scope !92
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8, !noalias !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8, !noalias !92
  %i.e = load atomic i32, ptr %i.c acquire, align 8, !noalias !92 ; 4 uses
  store i32 %i.e, ptr %i.b, align 4, !tbaa !28, !noalias !92
  %i.f = and i32 %i.e, -1312
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %.critedge.i.i.i.i.i.i, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.h = or disjoint i32 %i.e, 128
  %i.i = cmpxchg ptr %i.c, i32 %i.e, i32 %i.h seq_cst seq_cst, align 4, !noalias !92 ; 2 uses
  %i.j = extractvalue { i32, i1 } %i.i, 1
  br i1 %i.j, label %bb.c, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, !prof !30

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = extractvalue { i32, i1 } %i.i, 0
  store i32 %i.k, ptr %i.b, align 4, !noalias !92
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, %bb.a
  %i.l = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %2), !noalias !92 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8, !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8, !noalias !92
  store i8 1, ptr %i.d, align 8, !tbaa !27, !alias.scope !92
  %i.m = load ptr, ptr %3, align 8, !tbaa !26     ; 4 uses
  %.not.i.i = icmp eq ptr %i.m, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -24
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %.neg.i.i ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !54   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !93
  %.not.i.i5 = icmp eq ptr %i.p, %i.r
  br i1 %.not.i.i5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %1, ptr %i.p, align 8, !tbaa !34
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !54
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.t, ptr %i.o, align 8, !tbaa !54
  br label %_ZNSt6vectorIPDoFvvESaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !55   ; 4 uses
  %i.v = ptrtoint ptr %i.p to i64
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w                       ; 5 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775800
  br i1 %i.y, label %bb.f, label %_ZNKSt6vectorIPDoFvvESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIPDoFvvESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.z = ashr exact i64 %i.x, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i.i.i, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = call i64 @llvm.umin.i64(i64 %i.aa, i64 1152921504606846975)
  %i.ad = select i1 %i.ab, i64 1152921504606846975, i64 %i.ac ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ad, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #21
          to label %.noexc6 unwind label %bb.k    ; 4 uses

.noexc6:                                          ; preds = %_ZNKSt6vectorIPDoFvvESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 %i.x ; 2 uses
  store ptr %1, ptr %i.ag, align 8, !tbaa !34
  %i.ah = icmp sgt i64 %i.x, 0
  br i1 %i.ah, label %bb.g, label %_ZNSt6vectorIPDoFvvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.g:                                             ; preds = %.noexc6
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %i.u, i64 %i.x, i1 false)
  br label %_ZNSt6vectorIPDoFvvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIPDoFvvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.g, %.noexc6
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPDoFvvESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPDoFvvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !93
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.al) #22
  br label %_ZNSt6vectorIPDoFvvESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIPDoFvvESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIPDoFvvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.af, ptr %i.n, align 8, !tbaa !55
  store ptr %i.ai, ptr %i.o, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ad
  store ptr %i.am, ptr %i.q, align 8, !tbaa !93
  br label %_ZNSt6vectorIPDoFvvESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIPDoFvvESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIPDoFvvESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.an = atomicrmw and ptr %i.m, i32 -401 seq_cst, align 4 ; 2 uses
  %i.ao = and i32 %i.an, -401
  store i32 %i.ao, ptr %i.a, align 4, !tbaa !28
  %i.ap = and i32 %i.an, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorIPDoFvvESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSC_22SynchronizedMutexLevelE1ELNSC_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.i, !prof !29

bb.i:                                             ; preds = %_ZNSt6vectorIPDoFvvESaIS1_EE9push_backEOS1_.exit
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorIPDoFvvESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSC_22SynchronizedMutexLevelE1ELNSC_23SynchronizedMutexMethodE0EEEED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #23
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorIPDoFvvESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSC_22SynchronizedMutexLevelE1ELNSC_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %_ZNSt6vectorIPDoFvvESaIS1_EE9push_backEOS1_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret void

bb.k:                                             ; preds = %_ZNKSt6vectorIPDoFvvESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.f
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorIPDoFvvESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSC_22SynchronizedMutexLevelE1ELNSC_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  resume { ptr, i32 } %i.as
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_1
begin_hunk_2_@_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorIPDoFvvESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSC_22SynchronizedMutexLevelE1ELNSC_23SynchronizedMutexMethodE0EEEED2Ev:bb.a
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #23
  unreachable

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly16exception_tracer28unregisterCxaRethrowCallbackERDoFvvE(ptr nofree noundef nonnull readnone captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5folly16exception_tracer22getCxaRethrowCallbacksEvE9Callbacks acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5folly16exception_tracer22getCxaRethrowCallbacksEv.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly16exception_tracer22getCxaRethrowCallbacksEvE9Callbacks) #8
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5folly16exception_tracer22getCxaRethrowCallbacksEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly16exception_tracer22getCxaRethrowCallbacksEvE9Callbacks, i8 0, i64 32, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly16exception_tracer22getCxaRethrowCallbacksEvE9Callbacks) #8
  br label %_ZN5folly16exception_tracer22getCxaRethrowCallbacksEv.exit

_ZN5folly16exception_tracer22getCxaRethrowCallbacksEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call fastcc void @_ZN12_GLOBAL__N_114CallbackHolderIDoFvvEE18unregisterCallbackERS1_(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly16exception_tracer22getCxaRethrowCallbacksEvE9Callbacks, ptr noundef nonnull %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_114CallbackHolderIDoFvvEE18unregisterCallbackERS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readnone captures(address) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8, !noalias !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8, !noalias !98
  %i.d = load atomic i32, ptr %i.c acquire, align 8, !noalias !98 ; 4 uses
  store i32 %i.d, ptr %i.b, align 4, !tbaa !28, !noalias !98
  %i.e = and i32 %i.d, -1312
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %.critedge.i.i.i.i.i.i, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.g = or disjoint i32 %i.d, 128
  %i.h = cmpxchg ptr %i.c, i32 %i.d, i32 %i.g seq_cst seq_cst, align 4, !noalias !98 ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPDoFvvESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, !prof !30

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = extractvalue { i32, i1 } %i.h, 0
  store i32 %i.j, ptr %i.b, align 4, !noalias !98
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, %bb.a
  %i.k = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %2), !noalias !98 ; 0 uses
  br label %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPDoFvvESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit

_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPDoFvvESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit: ; preds = %bb.b, %.critedge.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8, !noalias !98
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8, !noalias !98
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54   ; 6 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !55     ; 4 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = ashr i64 %i.q, 5                         ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPDoFvvESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit
  %i.t = and i64 %i.q, -32
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.n, i64 %i.t ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.preheader.i.i.i.i
  %.052.i.i.i.i = phi i64 [ %i.ag, %bb.f ], [ %i.r, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.af, %bb.f ], [ %i.n, %.lr.ph.preheader.i.i.i.i ] ; 9 uses
  %i.u = load ptr, ptr %.sroa.032.051.i.i.i.i, align 8, !tbaa !34
  %i.v = icmp eq ptr %i.u, %1
  br i1 %i.v, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvvESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS2_EEET_SC_SC_T0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !34
  %i.y = icmp eq ptr %i.x, %1
  br i1 %i.y, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvvESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS2_EEET_SC_SC_T0_.exit.i.i.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34
  %i.ab = icmp eq ptr %i.aa, %1
  br i1 %i.ab, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvvESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS2_EEET_SC_SC_T0_.exit.i.i.loopexit.split.loop.exit19, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !34
  %i.ae = icmp eq ptr %i.ad, %1
  br i1 %i.ae, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvvESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS2_EEET_SC_SC_T0_.exit.i.i.loopexit.split.loop.exit21, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 32
  %i.ag = add nsw i64 %.052.i.i.i.i, -1
  %i.ah = icmp sgt i64 %.052.i.i.i.i, 1
  br i1 %i.ah, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !96

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.f
  %.pre.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre57.i.i.i.i = sub i64 %i.o, %.pre.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPDoFvvESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit
  %.pre-phi58.i.i.i.i = phi i64 [ %.pre57.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.q, %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPDoFvvESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit ]
  %.sroa.032.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.n, %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPDoFvvESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit ] ; 5 uses
  %i.ai = ashr exact i64 %.pre-phi58.i.i.i.i, 3
  switch i64 %i.ai, label %_ZSt5eraseIPDoFvvESaIS1_ES0_ENSt6vectorIT_T0_E9size_typeERS6_RKT1_.exit [
    i64 3, label %bb.g
    i64 2, label %bb.i
    i64 1, label %bb.k
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aj = load ptr, ptr %.sroa.032.0.lcssa.i.i.i.i, align 8, !tbaa !34
  %i.ak = icmp eq ptr %i.aj, %1
  br i1 %i.ak, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvvESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS2_EEET_SC_SC_T0_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i
  %.sroa.032.1.i.i.i.i = phi ptr [ %i.al, %bb.h ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.am = load ptr, ptr %.sroa.032.1.i.i.i.i, align 8, !tbaa !34
  %i.an = icmp eq ptr %i.am, %1
  br i1 %i.an, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvvESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS2_EEET_SC_SC_T0_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i
  %.sroa.032.2.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ap = load ptr, ptr %.sroa.032.2.i.i.i.i, align 8, !tbaa !34
  %i.aq = icmp eq ptr %i.ap, %1
  %spec.select.i.i.i.i = select i1 %i.aq, ptr %.sroa.032.2.i.i.i.i, ptr %i.m
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvvESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS2_EEET_SC_SC_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvvESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS2_EEET_SC_SC_T0_.exit.i.i.loopexit.split.loop.exit: ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvvESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS2_EEET_SC_SC_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvvESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS2_EEET_SC_SC_T0_.exit.i.i.loopexit.split.loop.exit19: ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvvESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS2_EEET_SC_SC_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvvESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS2_EEET_SC_SC_T0_.exit.i.i.loopexit.split.loop.exit21: ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvvESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS2_EEET_SC_SC_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvvESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS2_EEET_SC_SC_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvvESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS2_EEET_SC_SC_T0_.exit.i.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvvESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS2_EEET_SC_SC_T0_.exit.i.i.loopexit.split.loop.exit19, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvvESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS2_EEET_SC_SC_T0_.exit.i.i.loopexit.split.loop.exit21, %bb.k, %bb.i, %bb.g
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i, %bb.i ], [ %spec.select.i.i.i.i, %bb.k ], [ %.sroa.032.0.lcssa.i.i.i.i, %bb.g ], [ %i.at, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvvESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS2_EEET_SC_SC_T0_.exit.i.i.loopexit.split.loop.exit21 ], [ %i.as, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvvESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS2_EEET_SC_SC_T0_.exit.i.i.loopexit.split.loop.exit19 ], [ %i.ar, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvvESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS2_EEET_SC_SC_T0_.exit.i.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i.i, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.au = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %i.m
  %.sroa.07.026.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, i64 8 ; 2 uses
  %i.av = icmp eq ptr %.sroa.07.026.i.i, %i.m
  %or.cond.i.i = select i1 %i.au, i1 true, i1 %i.av
  br i1 %or.cond.i.i, label %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvvESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS2_EEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvvESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS2_EEET_SC_SC_T0_.exit.i.i, %bb.m
  %.sroa.07.028.i.i = phi ptr [ %.sroa.07.0.i.i, %bb.m ], [ %.sroa.07.026.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvvESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS2_EEET_SC_SC_T0_.exit.i.i ] ; 2 uses
  %.sroa.013.027.i.i = phi ptr [ %.sroa.013.1.i.i, %bb.m ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvvESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS2_EEET_SC_SC_T0_.exit.i.i ] ; 3 uses
  %i.aw = load ptr, ptr %.sroa.07.028.i.i, align 8, !tbaa !34 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %1
  br i1 %i.ax, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  store ptr %i.aw, ptr %.sroa.013.027.i.i, align 8, !tbaa !34
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.027.i.i, i64 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.027.i.i, %.lr.ph.i.i ], [ %i.ay, %bb.l ] ; 2 uses
  %.sroa.07.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.028.i.i, i64 8 ; 2 uses
  %i.az = icmp eq ptr %.sroa.07.0.i.i, %i.m
  br i1 %i.az, label %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvvESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS2_EEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i, !llvm.loop !97

_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvvESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS2_EEET_SC_SC_T0_.exit.i: ; preds = %bb.m, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvvESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS2_EEET_SC_SC_T0_.exit.i.i
  %.sroa.013.2.i.i = phi ptr [ %.sroa.08.0.in.sroa.speculated.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvvESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS2_EEET_SC_SC_T0_.exit.i.i ], [ %.sroa.013.1.i.i, %bb.m ] ; 3 uses
  %i.ba = icmp eq ptr %.sroa.013.2.i.i, %i.m
  br i1 %i.ba, label %_ZSt5eraseIPDoFvvESaIS1_ES0_ENSt6vectorIT_T0_E9size_typeERS6_RKT1_.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvvESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS2_EEET_SC_SC_T0_.exit.i
  %i.bb = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.bc = icmp eq ptr %.sroa.013.2.i.i, %i.bb
  br i1 %i.bc, label %_ZSt5eraseIPDoFvvESaIS1_ES0_ENSt6vectorIT_T0_E9size_typeERS6_RKT1_.exit, label %_ZSt8_DestroyIPPDoFvvES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPPDoFvvES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.n
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !45  ; 2 uses
  %.pre33.i = ptrtoint ptr %.pre.i to i64
  %.pre33.i.a = ptrtoint ptr %.sroa.013.2.i.i to i64
  %i.bd = sub i64 %.pre33.i.a, %.pre33.i
  %i.be = getelementptr inbounds i8, ptr %.pre.i, i64 %i.bd
  store ptr %i.be, ptr %i.l, align 8, !tbaa !54
  br label %_ZSt5eraseIPDoFvvESaIS1_ES0_ENSt6vectorIT_T0_E9size_typeERS6_RKT1_.exit

_ZSt5eraseIPDoFvvESaIS1_ES0_ENSt6vectorIT_T0_E9size_typeERS6_RKT1_.exit: ; preds = %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvvESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS2_EEET_SC_SC_T0_.exit.i, %._crit_edge.i.i.i.i, %_ZSt8_DestroyIPPDoFvvES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.bf = atomicrmw and ptr %i.c, i32 -401 seq_cst, align 4 ; 2 uses
  %i.bg = and i32 %i.bf, -401
  store i32 %i.bg, ptr %i.a, align 4, !tbaa !28
  %i.bh = and i32 %i.bf, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorIPDoFvvESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSC_22SynchronizedMutexLevelE1ELNSC_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.o, !prof !29

bb.o:                                             ; preds = %_ZSt5eraseIPDoFvvESaIS1_ES0_ENSt6vectorIT_T0_E9size_typeERS6_RKT1_.exit
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorIPDoFvvESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSC_22SynchronizedMutexLevelE1ELNSC_23SynchronizedMutexMethodE0EEEED2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #23
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorIPDoFvvESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSC_22SynchronizedMutexLevelE1ELNSC_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %_ZSt5eraseIPDoFvvESaIS1_ES0_ENSt6vectorIT_T0_E9size_typeERS6_RKT1_.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly16exception_tracer27registerCxaEndCatchCallbackERDoFvvE(ptr noundef nonnull %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5folly16exception_tracer23getCxaEndCatchCallbacksEvE9Callbacks acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5folly16exception_tracer23getCxaEndCatchCallbacksEv.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly16exception_tracer23getCxaEndCatchCallbacksEvE9Callbacks) #8
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5folly16exception_tracer23getCxaEndCatchCallbacksEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly16exception_tracer23getCxaEndCatchCallbacksEvE9Callbacks, i8 0, i64 32, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly16exception_tracer23getCxaEndCatchCallbacksEvE9Callbacks) #8
  br label %_ZN5folly16exception_tracer23getCxaEndCatchCallbacksEv.exit

_ZN5folly16exception_tracer23getCxaEndCatchCallbacksEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call fastcc void @_ZN12_GLOBAL__N_114CallbackHolderIDoFvvEE16registerCallbackERS1_(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly16exception_tracer23getCxaEndCatchCallbacksEvE9Callbacks, ptr noundef nonnull %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly16exception_tracer29unregisterCxaEndCatchCallbackERDoFvvE(ptr nofree noundef nonnull readnone captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5folly16exception_tracer23getCxaEndCatchCallbacksEvE9Callbacks acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5folly16exception_tracer23getCxaEndCatchCallbacksEv.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly16exception_tracer23getCxaEndCatchCallbacksEvE9Callbacks) #8
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5folly16exception_tracer23getCxaEndCatchCallbacksEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly16exception_tracer23getCxaEndCatchCallbacksEvE9Callbacks, i8 0, i64 32, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly16exception_tracer23getCxaEndCatchCallbacksEvE9Callbacks) #8
  br label %_ZN5folly16exception_tracer23getCxaEndCatchCallbacksEv.exit

_ZN5folly16exception_tracer23getCxaEndCatchCallbacksEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call fastcc void @_ZN12_GLOBAL__N_114CallbackHolderIDoFvvEE18unregisterCallbackERS1_(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly16exception_tracer23getCxaEndCatchCallbacksEvE9Callbacks, ptr noundef nonnull %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly16exception_tracer32registerRethrowExceptionCallbackERDoFvNSt15__exception_ptr13exception_ptrEE(ptr noundef nonnull %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %2 = alloca %"class.folly::LockedPtr.45", align 8 ; 7 uses
  %i.c = load atomic i8, ptr @_ZGVZN5folly16exception_tracer28getRethrowExceptionCallbacksEvE9Callbacks acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN5folly16exception_tracer28getRethrowExceptionCallbacksEv.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly16exception_tracer28getRethrowExceptionCallbacksEvE9Callbacks) #8
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN5folly16exception_tracer28getRethrowExceptionCallbacksEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly16exception_tracer28getRethrowExceptionCallbacksEvE9Callbacks, i8 0, i64 32, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly16exception_tracer28getRethrowExceptionCallbacksEvE9Callbacks) #8
  br label %_ZN5folly16exception_tracer28getRethrowExceptionCallbacksEv.exit

_ZN5folly16exception_tracer28getRethrowExceptionCallbacksEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer28getRethrowExceptionCallbacksEvE9Callbacks, i64 24), ptr %2, align 8, !tbaa !26, !alias.scope !101
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i8 0, ptr %i.f, align 8, !tbaa !27, !alias.scope !101
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8, !noalias !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8, !noalias !101
  %i.g = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer28getRethrowExceptionCallbacksEvE9Callbacks, i64 24) acquire, align 8, !noalias !101 ; 4 uses
  store i32 %i.g, ptr %i.b, align 4, !tbaa !28, !noalias !101
  %i.h = and i32 %i.g, -1312
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %.critedge.i.i.i.i.i.i.i, !prof !29

bb.d:                                             ; preds = %_ZN5folly16exception_tracer28getRethrowExceptionCallbacksEv.exit
  %i.j = or disjoint i32 %i.g, 128
  %i.k = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer28getRethrowExceptionCallbacksEvE9Callbacks, i64 24), i32 %i.g, i32 %i.j seq_cst seq_cst, align 4, !noalias !101 ; 2 uses
  %i.l = extractvalue { i32, i1 } %i.k, 1
  br i1 %i.l, label %bb.e, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, !prof !30

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.m = extractvalue { i32, i1 } %i.k, 0
  store i32 %i.m, ptr %i.b, align 4, !noalias !101
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %_ZN5folly16exception_tracer28getRethrowExceptionCallbacksEv.exit
  %i.n = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer28getRethrowExceptionCallbacksEvE9Callbacks, i64 24), ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %1), !noalias !101 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.critedge.i.i.i.i.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8, !noalias !101
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8, !noalias !101
  store i8 1, ptr %i.f, align 8, !tbaa !27, !alias.scope !101
  %i.o = load ptr, ptr %2, align 8, !tbaa !26     ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  %.neg.i.i.i = select i1 %.not.i.i.i, i64 0, i64 -24
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 %.neg.i.i.i ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !57   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !102
  %.not.i.i5.i = icmp eq ptr %i.r, %i.t
  br i1 %.not.i.i5.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr %i.r, align 8, !tbaa !34
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !57
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.v, ptr %i.q, align 8, !tbaa !57
  br label %_ZNSt6vectorIPDoFvNSt15__exception_ptr13exception_ptrEESaIS3_EE9push_backEOS3_.exit.i

bb.g:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !58   ; 4 uses
  %i.x = ptrtoint ptr %i.r to i64
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = sub i64 %i.x, %i.y                       ; 5 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %bb.h, label %_ZNKSt6vectorIPDoFvNSt15__exception_ptr13exception_ptrEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %.noexc.i unwind label %bb.m

.noexc.i:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIPDoFvNSt15__exception_ptr13exception_ptrEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.g
  %i.ab = ashr exact i64 %i.z, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = call i64 @llvm.umin.i64(i64 %i.ac, i64 1152921504606846975)
  %i.af = select i1 %i.ad, i64 1152921504606846975, i64 %i.ae ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.af, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #21
          to label %.noexc6.i unwind label %bb.m  ; 4 uses

.noexc6.i:                                        ; preds = %_ZNKSt6vectorIPDoFvNSt15__exception_ptr13exception_ptrEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.z ; 2 uses
  store ptr %0, ptr %i.ai, align 8, !tbaa !34
  %i.aj = icmp sgt i64 %i.z, 0
  br i1 %i.aj, label %bb.i, label %_ZNSt6vectorIPDoFvNSt15__exception_ptr13exception_ptrEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

bb.i:                                             ; preds = %.noexc6.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.w, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIPDoFvNSt15__exception_ptr13exception_ptrEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

_ZNSt6vectorIPDoFvNSt15__exception_ptr13exception_ptrEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i: ; preds = %bb.i, %.noexc6.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPDoFvNSt15__exception_ptr13exception_ptrEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPDoFvNSt15__exception_ptr13exception_ptrEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  %i.al = load ptr, ptr %i.s, align 8, !tbaa !102
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.an) #22
  br label %_ZNSt6vectorIPDoFvNSt15__exception_ptr13exception_ptrEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPDoFvNSt15__exception_ptr13exception_ptrEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.j, %_ZNSt6vectorIPDoFvNSt15__exception_ptr13exception_ptrEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  store ptr %i.ah, ptr %i.p, align 8, !tbaa !58
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !57
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.ao, ptr %i.s, align 8, !tbaa !102
end_hunk_2
begin_hunk_3_@_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorIPDoFvNSt15__exception_ptr13exception_ptrEESaIS6_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSE_22SynchronizedMutexLevelE1ELNSE_23SynchronizedMutexMethodE0EEEED2Ev:bb.a

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #23
  unreachable

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly16exception_tracer34unregisterRethrowExceptionCallbackERDoFvNSt15__exception_ptr13exception_ptrEE(ptr nofree noundef nonnull readnone captures(address) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %i.c = load atomic i8, ptr @_ZGVZN5folly16exception_tracer28getRethrowExceptionCallbacksEvE9Callbacks acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN5folly16exception_tracer28getRethrowExceptionCallbacksEv.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly16exception_tracer28getRethrowExceptionCallbacksEvE9Callbacks) #8
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN5folly16exception_tracer28getRethrowExceptionCallbacksEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly16exception_tracer28getRethrowExceptionCallbacksEvE9Callbacks, i8 0, i64 32, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly16exception_tracer28getRethrowExceptionCallbacksEvE9Callbacks) #8
  br label %_ZN5folly16exception_tracer28getRethrowExceptionCallbacksEv.exit

_ZN5folly16exception_tracer28getRethrowExceptionCallbacksEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8, !noalias !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8, !noalias !107
  %i.f = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer28getRethrowExceptionCallbacksEvE9Callbacks, i64 24) acquire, align 8, !noalias !107 ; 4 uses
  store i32 %i.f, ptr %i.b, align 4, !tbaa !28, !noalias !107
  %i.g = and i32 %i.f, -1312
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %.critedge.i.i.i.i.i.i.i, !prof !29

bb.d:                                             ; preds = %_ZN5folly16exception_tracer28getRethrowExceptionCallbacksEv.exit
  %i.i = or disjoint i32 %i.f, 128
  %i.j = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer28getRethrowExceptionCallbacksEvE9Callbacks, i64 24), i32 %i.f, i32 %i.i seq_cst seq_cst, align 4, !noalias !107 ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 1
  br i1 %i.k, label %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPDoFvNSt15__exception_ptr13exception_ptrEESaIS6_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, !prof !30

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.l = extractvalue { i32, i1 } %i.j, 0
  store i32 %i.l, ptr %i.b, align 4, !noalias !107
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %_ZN5folly16exception_tracer28getRethrowExceptionCallbacksEv.exit
  %i.m = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer28getRethrowExceptionCallbacksEvE9Callbacks, i64 24), ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %1), !noalias !107 ; 0 uses
  br label %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPDoFvNSt15__exception_ptr13exception_ptrEESaIS6_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit.i

_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPDoFvNSt15__exception_ptr13exception_ptrEESaIS6_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit.i: ; preds = %.critedge.i.i.i.i.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8, !noalias !107
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8, !noalias !107
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer28getRethrowExceptionCallbacksEvE9Callbacks, i64 8), align 8, !tbaa !57 ; 7 uses
  %i.o = load ptr, ptr @_ZZN5folly16exception_tracer28getRethrowExceptionCallbacksEvE9Callbacks, align 8, !tbaa !58 ; 4 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = ashr i64 %i.r, 5                         ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %.lr.ph.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPDoFvNSt15__exception_ptr13exception_ptrEESaIS6_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit.i
  %i.u = and i64 %i.r, -32
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.o, i64 %i.u ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %.lr.ph.preheader.i.i.i.i.i
  %.052.i.i.i.i.i = phi i64 [ %i.ah, %bb.h ], [ %i.s, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i = phi ptr [ %i.ag, %bb.h ], [ %i.o, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  %i.v = load ptr, ptr %.sroa.032.051.i.i.i.i.i, align 8, !tbaa !34
  %i.w = icmp eq ptr %i.v, %0
  br i1 %i.w, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !34
  %i.z = icmp eq ptr %i.y, %0
  br i1 %i.z, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i.i.loopexit.split.loop.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34
  %i.ac = icmp eq ptr %i.ab, %0
  br i1 %i.ac, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i.i.loopexit.split.loop.exit16, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !34
  %i.af = icmp eq ptr %i.ae, %0
  br i1 %i.af, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i.i.loopexit.split.loop.exit18, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 32
  %i.ah = add nsw i64 %.052.i.i.i.i.i, -1
  %i.ai = icmp sgt i64 %.052.i.i.i.i.i, 1
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !105

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.h
  %.pre.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i to i64
  %.pre57.i.i.i.i.i = sub i64 %i.p, %.pre.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPDoFvNSt15__exception_ptr13exception_ptrEESaIS6_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit.i
  %.pre-phi58.i.i.i.i.i = phi i64 [ %.pre57.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.r, %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPDoFvNSt15__exception_ptr13exception_ptrEESaIS6_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit.i ]
  %.sroa.032.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.o, %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPDoFvNSt15__exception_ptr13exception_ptrEESaIS6_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit.i ] ; 5 uses
  %i.aj = ashr exact i64 %.pre-phi58.i.i.i.i.i, 3
  switch i64 %i.aj, label %_ZSt5eraseIPDoFvNSt15__exception_ptr13exception_ptrEESaIS3_ES2_ENSt6vectorIT_T0_E9size_typeERS8_RKT1_.exit.i [
    i64 3, label %bb.i
    i64 2, label %bb.k
    i64 1, label %bb.m
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ak = load ptr, ptr %.sroa.032.0.lcssa.i.i.i.i.i, align 8, !tbaa !34
  %i.al = icmp eq ptr %i.ak, %0
  br i1 %i.al, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i
  %.sroa.032.1.i.i.i.i.i = phi ptr [ %i.am, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.an = load ptr, ptr %.sroa.032.1.i.i.i.i.i, align 8, !tbaa !34
  %i.ao = icmp eq ptr %i.an, %0
  br i1 %i.ao, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i, i64 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i.i.i
  %.sroa.032.2.i.i.i.i.i = phi ptr [ %i.ap, %bb.l ], [ %.sroa.032.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.aq = load ptr, ptr %.sroa.032.2.i.i.i.i.i, align 8, !tbaa !34
  %i.ar = icmp eq ptr %i.aq, %0
  %spec.select.i.i.i.i.i = select i1 %i.ar, ptr %.sroa.032.2.i.i.i.i.i, ptr %i.n
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i.i.loopexit.split.loop.exit: ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i.i.loopexit.split.loop.exit16: ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 16
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i.i.loopexit.split.loop.exit18: ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 24
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i.i.loopexit.split.loop.exit16, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i.i.loopexit.split.loop.exit18, %bb.m, %bb.k, %bb.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i.i, %bb.k ], [ %spec.select.i.i.i.i.i, %bb.m ], [ %.sroa.032.0.lcssa.i.i.i.i.i, %bb.i ], [ %i.au, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i.i.loopexit.split.loop.exit18 ], [ %i.as, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i.i.loopexit.split.loop.exit ], [ %i.at, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i.i.loopexit.split.loop.exit16 ], [ %.sroa.032.051.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.av = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %i.n
  %.sroa.07.026.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, i64 8 ; 2 uses
  %i.aw = icmp eq ptr %.sroa.07.026.i.i.i, %i.n
  %or.cond.i.i.i = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %or.cond.i.i.i, label %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i.i, %bb.o
  %.sroa.07.028.i.i.i = phi ptr [ %.sroa.07.0.i.i.i, %bb.o ], [ %.sroa.07.026.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i.i ] ; 2 uses
  %.sroa.013.027.i.i.i = phi ptr [ %.sroa.013.1.i.i.i, %bb.o ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i.i ] ; 3 uses
  %i.ax = load ptr, ptr %.sroa.07.028.i.i.i, align 8, !tbaa !34 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %0
  br i1 %i.ay, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i
  store ptr %i.ax, ptr %.sroa.013.027.i.i.i, align 8, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.013.027.i.i.i, i64 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.i.i
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.027.i.i.i, %.lr.ph.i.i.i ], [ %i.az, %bb.n ] ; 2 uses
  %.sroa.07.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.028.i.i.i, i64 8 ; 2 uses
  %i.ba = icmp eq ptr %.sroa.07.0.i.i.i, %i.n
  br i1 %i.ba, label %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i.loopexit, label %.lr.ph.i.i.i, !llvm.loop !106

_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i.loopexit: ; preds = %bb.o
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer28getRethrowExceptionCallbacksEvE9Callbacks, i64 8), align 8
  br label %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i

_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i: ; preds = %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i.loopexit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i.i
  %i.bb = phi ptr [ %i.n, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i.i ], [ %.pre, %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i.loopexit ]
  %.sroa.013.2.i.i.i = phi ptr [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i.i ], [ %.sroa.013.1.i.i.i, %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i.loopexit ] ; 3 uses
  %i.bc = icmp eq ptr %.sroa.013.2.i.i.i, %i.n
  %i.bd = icmp eq ptr %.sroa.013.2.i.i.i, %i.bb
  %or.cond.i = select i1 %i.bc, i1 true, i1 %i.bd
  br i1 %or.cond.i, label %_ZSt5eraseIPDoFvNSt15__exception_ptr13exception_ptrEESaIS3_ES2_ENSt6vectorIT_T0_E9size_typeERS8_RKT1_.exit.i, label %_ZSt8_DestroyIPPDoFvNSt15__exception_ptr13exception_ptrEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPPDoFvNSt15__exception_ptr13exception_ptrEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i
  %.pre.i.i = load ptr, ptr @_ZZN5folly16exception_tracer28getRethrowExceptionCallbacksEvE9Callbacks, align 8, !tbaa !45 ; 2 uses
  %.pre33.i.i = ptrtoint ptr %.pre.i.i to i64
  %.pre33.i.i.a = ptrtoint ptr %.sroa.013.2.i.i.i to i64
  %i.be = sub i64 %.pre33.i.i.a, %.pre33.i.i
  %i.bf = getelementptr inbounds i8, ptr %.pre.i.i, i64 %i.be
  store ptr %i.bf, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer28getRethrowExceptionCallbacksEvE9Callbacks, i64 8), align 8, !tbaa !57
  br label %_ZSt5eraseIPDoFvNSt15__exception_ptr13exception_ptrEESaIS3_ES2_ENSt6vectorIT_T0_E9size_typeERS8_RKT1_.exit.i

_ZSt5eraseIPDoFvNSt15__exception_ptr13exception_ptrEESaIS3_ES2_ENSt6vectorIT_T0_E9size_typeERS8_RKT1_.exit.i: ; preds = %_ZSt8_DestroyIPPDoFvNSt15__exception_ptr13exception_ptrEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i, %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPDoFvNSt15__exception_ptr13exception_ptrEESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SE_SE_T0_.exit.i.i, %._crit_edge.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.bg = atomicrmw and ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer28getRethrowExceptionCallbacksEvE9Callbacks, i64 24), i32 -401 seq_cst, align 4 ; 2 uses
  %i.bh = and i32 %i.bg, -401
  store i32 %i.bh, ptr %i.a, align 4, !tbaa !28
  %i.bi = and i32 %i.bg, 15
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_114CallbackHolderIDoFvNSt15__exception_ptr13exception_ptrEEE18unregisterCallbackERS3_.exit, label %bb.p, !prof !29

bb.p:                                             ; preds = %_ZSt5eraseIPDoFvNSt15__exception_ptr13exception_ptrEESaIS3_ES2_ENSt6vectorIT_T0_E9size_typeERS8_RKT1_.exit.i
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer28getRethrowExceptionCallbacksEvE9Callbacks, i64 24), ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN12_GLOBAL__N_114CallbackHolderIDoFvNSt15__exception_ptr13exception_ptrEEE18unregisterCallbackERS3_.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #23
  unreachable

_ZN12_GLOBAL__N_114CallbackHolderIDoFvNSt15__exception_ptr13exception_ptrEEE18unregisterCallbackERS3_.exit: ; preds = %_ZSt5eraseIPDoFvNSt15__exception_ptr13exception_ptrEESaIS3_ES2_ENSt6vectorIT_T0_E9size_typeERS8_RKT1_.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define void @__cxa_throw(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %4 = alloca %"class.folly::LockedPtr.49", align 8 ; 7 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  store ptr %2, ptr %i.b, align 8, !tbaa !34
  %i.c = load atomic i8, ptr @_ZGVZ11__cxa_throwE14orig_cxa_throw acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ11__cxa_throwE14orig_cxa_throw) #8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @dlsym(ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef nonnull @.str.1) #8
  store ptr %i.f, ptr @_ZZ11__cxa_throwE14orig_cxa_throw, align 8, !tbaa !34
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ11__cxa_throwE14orig_cxa_throw) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = load atomic i8, ptr @_ZGVZN5folly16exception_tracer20getCxaThrowCallbacksEvE9Callbacks acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.e, label %_ZN5folly16exception_tracer20getCxaThrowCallbacksEv.exit, !prof !21

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly16exception_tracer20getCxaThrowCallbacksEvE9Callbacks) #8, !inline_history !0
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZN5folly16exception_tracer20getCxaThrowCallbacksEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly16exception_tracer20getCxaThrowCallbacksEvE9Callbacks, i8 0, i64 32, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly16exception_tracer20getCxaThrowCallbacksEvE9Callbacks) #8, !inline_history !0
  br label %_ZN5folly16exception_tracer20getCxaThrowCallbacksEv.exit

_ZN5folly16exception_tracer20getCxaThrowCallbacksEv.exit: ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer20getCxaThrowCallbacksEvE9Callbacks, i64 24), ptr %4, align 8, !tbaa !42, !alias.scope !112
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i16 0, ptr %i.j, align 8, !tbaa !43, !alias.scope !112
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 0, ptr %i.k, align 2, !tbaa !44, !alias.scope !112
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8, !noalias !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8, !noalias !112
  %i.l = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer20getCxaThrowCallbacksEvE9Callbacks, i64 24) monotonic, align 8, !noalias !112 ; 4 uses
  store i32 %i.l, ptr %i.a, align 4, !tbaa !28, !noalias !112
  %i.m = and i32 %i.l, -1408
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN5folly16exception_tracer20getCxaThrowCallbacksEv.exit
  %i.o = or disjoint i32 %i.l, 2048
  %i.p = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer20getCxaThrowCallbacksEvE9Callbacks, i64 24), i32 %i.l, i32 %i.o seq_cst seq_cst, align 4, !noalias !112 ; 2 uses
  %i.q = extractvalue { i32, i1 } %i.p, 1
  br i1 %i.q, label %bb.h, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.r = extractvalue { i32, i1 } %i.p, 0
  store i32 %i.r, ptr %i.a, align 4, !noalias !112
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  store i16 2, ptr %i.j, align 8, !tbaa !43, !alias.scope !112
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, %_ZN5folly16exception_tracer20getCxaThrowCallbacksEv.exit
  %i.s = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds nuw (i8, ptr @_ZZN5folly16exception_tracer20getCxaThrowCallbacksEvE9Callbacks, i64 24), ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 2 dereferenceable(4) %i.j, ptr noundef nonnull align 1 dereferenceable(1) %3), !inline_history !110 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8, !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8, !noalias !112
  %i.t = load ptr, ptr %4, align 8, !tbaa !42     ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -24
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %.neg.i.i ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !45   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !45   ; 2 uses
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %_ZN12_GLOBAL__N_114CallbackHolderIDoFvPvPSt9type_infoPPFvS1_EEE6invokeIJS1_S3_S6_EEEvDpT_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %.lr.ph
  %.sroa.07.010 = phi ptr [ %i.aa, %.lr.ph ], [ %i.v, %bb.j ] ; 2 uses
  %i.z = load ptr, ptr %.sroa.07.010, align 8, !tbaa !34
  call void %i.z(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.b) #8, !inline_history !111
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.07.010, i64 8 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.x
  br i1 %i.ab, label %_ZN12_GLOBAL__N_114CallbackHolderIDoFvPvPSt9type_infoPPFvS1_EEE6invokeIJS1_S3_S6_EEEvDpT_.exit, label %.lr.ph

_ZN12_GLOBAL__N_114CallbackHolderIDoFvPvPSt9type_infoPPFvS1_EEE6invokeIJS1_S3_S6_EEEvDpT_.exit: ; preds = %.lr.ph, %bb.j
  call void @_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorIPDoFvPvPSt9type_infoPPFvS3_EESaISA_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSI_22SynchronizedMutexLevelE2ELNSI_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.ac = load ptr, ptr @_ZZ11__cxa_throwE14orig_cxa_throw, align 8, !tbaa !34
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !34
  call void %i.ac(ptr noundef %0, ptr noundef %1, ptr noundef %i.ad) #20
  unreachable
}

; Function Attrs: nounwind
declare ptr @dlsym(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorIPDoFvPvPSt9type_infoPPFvS3_EESaISA_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSI_22SynchronizedMutexLevelE2ELNSI_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !43
  %.not.i = icmp eq i16 %i.b, 0
  br i1 %.not.i, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !42
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.a)
          to label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit unwind label %bb.c, !inline_history !5

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #23, !inline_history !5
  unreachable

_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = load atomic i32, ptr @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache) #24
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
  %i.n = load i32, ptr %1, align 4, !tbaa !28     ; 2 uses
  %i.o = and i32 %i.n, 128
  %.not49 = icmp eq i32 %i.o, 0
  br i1 %.not49, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %bb.d, !prof !29

bb.d:                                             ; preds = %bb.c
  %i.p = call noundef i64 @llvm.x86.rdtsc()
  %i.q = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.q, ptr %1, align 4, !tbaa !28
  %i.r = and i32 %i.q, 128
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
end_hunk_3
