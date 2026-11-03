Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Request?download=true
inline.NumInlined: 3280
inline.NumDeleted: 1545
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEEEE14eraseBlankColdEPSD_NS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE:bb.a
  tail call void @__cxa_rethrow() #40
  unreachable
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i = mul i64 %2, -4
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 %.neg.i.i ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %2 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !91
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.3) #39
  unreachable

_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit: ; preds = %bb.a
  store i8 0, ptr %i.c, align 1, !tbaa !91
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.f = load i8, ptr %i.e, align 2, !tbaa !95
  %.not = icmp ult i8 %i.f, 16
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit
  %i.g = shl i64 %4, 1
  %i.h = or disjoint i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !63
  %i.k = and i64 %i.j, 255
  %notmask.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i, -1                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53   ; 4 uses
  %i.o = and i64 %3, %i.l
  %i.p = shl nuw nsw i64 %i.o, 6                  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.r = icmp eq ptr %i.q, %i.b
  br i1 %i.r, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.e, %bb.c
  %.010.lcssa = phi i8 [ 0, %bb.c ], [ -16, %bb.e ]
  %i.s = phi i64 [ %i.p, %bb.c ], [ %i.ae, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 14 ; 2 uses
  %i.v = load i8, ptr %i.u, align 2, !tbaa !95
  %i.w = add i8 %i.v, %.010.lcssa
  store i8 %i.w, ptr %i.u, align 2, !tbaa !95
  br label %bb.f

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %i.x = phi i64 [ %i.ae, %bb.e ], [ %i.p, %bb.c ]
  %.01126 = phi i64 [ %i.ac, %bb.e ], [ %3, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 15 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !94   ; 2 uses
  %.not.i17 = icmp eq i8 %i.aa, -2
  br i1 %.not.i17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ab = add i8 %i.aa, -1
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !94
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.ac = add i64 %i.h, %.01126                   ; 2 uses
  %i.ad = and i64 %i.ac, %i.l
  %i.ae = shl nuw nsw i64 %i.ad, 6                ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ae
  %i.ag = icmp eq ptr %i.af, %i.b
  br i1 %i.ag, label %.thread, label %.lr.ph

bb.f:                                             ; preds = %.thread, %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !82, !range !88, !noundef !87
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !81     ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.f = atomicrmw and ptr %i.e, i32 -401 seq_cst, align 4 ; 2 uses
  %i.g = and i32 %i.f, -401
  store i32 %i.g, ptr %i.a, align 4, !tbaa !62
  %i.h = and i32 %i.f, 15
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i, label %bb.d, !prof !73

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i unwind label %bb.e

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit: ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i, %bb.b, %bb.a
  ret void

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #37
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly12RequestToken14getDebugStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %3 = alloca %"class.folly::LockedPtr", align 8  ; 9 uses
  %i.d = load atomic i8, ptr @_ZGVZN5folly12RequestToken8getCacheB5cxx11EvE5cacheB5cxx11 acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN5folly12RequestToken8getCacheB5cxx11Ev.exit, !prof !45

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly12RequestToken8getCacheB5cxx11EvE5cacheB5cxx11) #12
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN5folly12RequestToken8getCacheB5cxx11Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly12RequestToken8getCacheB5cxx11EvE5cacheB5cxx11, i8 0, i64 32, i1 false)
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly12RequestToken8getCacheB5cxx11EvE5cacheB5cxx11, i64 8), align 8, !tbaa !53
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly12RequestToken8getCacheB5cxx11EvE5cacheB5cxx11) #12
  br label %_ZN5folly12RequestToken8getCacheB5cxx11Ev.exit

_ZN5folly12RequestToken8getCacheB5cxx11Ev.exit:   ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly12RequestToken8getCacheB5cxx11EvE5cacheB5cxx11, i64 24), ptr %3, align 8, !tbaa !59, !alias.scope !490
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i16 0, ptr %i.g, align 8, !tbaa !60, !alias.scope !490
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 2 uses
  store i16 0, ptr %i.h, align 2, !tbaa !61, !alias.scope !490
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12, !noalias !490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12, !noalias !490
  %i.i = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly12RequestToken8getCacheB5cxx11EvE5cacheB5cxx11, i64 24) monotonic, align 8, !noalias !490 ; 4 uses
  store i32 %i.i, ptr %i.c, align 4, !tbaa !62, !noalias !490
  %i.j = and i32 %i.i, -1408
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN5folly12RequestToken8getCacheB5cxx11Ev.exit
  %i.l = or disjoint i32 %i.i, 2048
  %i.m = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly12RequestToken8getCacheB5cxx11EvE5cacheB5cxx11, i64 24), i32 %i.i, i32 %i.l seq_cst seq_cst, align 4, !noalias !490 ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.n, label %bb.e, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.o = extractvalue { i32, i1 } %i.m, 0
  store i32 %i.o, ptr %i.c, align 4, !noalias !490
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store i16 2, ptr %i.g, align 8, !tbaa !60, !alias.scope !490
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, %_ZN5folly12RequestToken8getCacheB5cxx11Ev.exit
  %i.p = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds nuw (i8, ptr @_ZZN5folly12RequestToken8getCacheB5cxx11EvE5cacheB5cxx11, i64 24), ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12, !noalias !490
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12, !noalias !490
  %i.q = load ptr, ptr %3, align 8, !tbaa !59     ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -24
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !63
  %i.u = lshr i64 %i.t, 8                         ; 2 uses
  %.not.i.i.i.not = icmp eq i64 %i.u, 0
  %i.v = load ptr, ptr %i.r, align 8              ; 2 uses
  br i1 %.not.i.i.i.not, label %.critedge20, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %4 = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %i.u
  %5 = load i32, ptr %1, align 4, !tbaa !77
  br label %.backedge

.backedge:                                        ; preds = %.critedge, %.lr.ph
  %.pn = phi ptr [ %4, %.lr.ph ], [ %.sroa.028.033, %.critedge ] ; 3 uses
  %.sroa.028.033 = getelementptr inbounds i8, ptr %.pn, i64 -40 ; 3 uses
  %i.w = getelementptr inbounds i8, ptr %.pn, i64 -8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !75
  %.not = icmp eq i32 %i.x, %5
  br i1 %.not, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.backedge
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.y, ptr %0, align 8, !tbaa !98
  %i.z = load ptr, ptr %.sroa.028.033, align 8, !tbaa !71 ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.pn, i64 -32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !68 ; 8 uses
  %i.ac = icmp ugt i64 %i.ab, 15
  br i1 %i.ac, label %bb.i, label %._crit_edge.i.i

bb.i:                                             ; preds = %bb.h
  %i.ad = icmp slt i64 %i.ab, 0
  br i1 %i.ad, label %.noexc.i, label %bb.j

.noexc.i:                                         ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #40
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ae = add nuw i64 %i.ab, 1                    ; 2 uses
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !89

.noexc6.i:                                        ; preds = %bb.j
  invoke void @_ZSt17__throw_bad_allocv() #40
          to label %.noexc21 unwind label %bb.o

.noexc21:                                         ; preds = %.noexc6.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.j
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #41
          to label %.noexc22 unwind label %bb.o   ; 2 uses

.noexc22:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.ag, ptr %0, align 8, !tbaa !71
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !91
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc22, %bb.h
  %i.ah = phi ptr [ %i.ag, %.noexc22 ], [ %i.y, %bb.h ] ; 3 uses
  switch i64 %i.ab, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.p
  ]

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.ai = load i8, ptr %i.z, align 1, !tbaa !91
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !91
  br label %bb.p

bb.l:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr align 1 %i.z, i64 %i.ab, i1 false)
  br label %bb.p

.critedge:                                        ; preds = %.backedge
  %i.aj = icmp eq ptr %i.v, %.sroa.028.033
  br i1 %i.aj, label %.critedge20, label %.backedge, !prof !89

.critedge20:                                      ; preds = %.critedge, %bb.g
  %i.ak = call ptr @__cxa_allocate_exception(i64 16) #12 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull @.str.9)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.critedge20
  invoke void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #40
          to label %bb.aa unwind label %bb.o

bb.n:                                             ; preds = %.critedge20
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ak) #12
  br label %bb.z

bb.o:                                             ; preds = %.noexc.i, %.noexc6.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.m
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.p:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ab, ptr %i.an, align 8, !tbaa !68
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ab
  store i8 0, ptr %i.ao, align 1, !tbaa !91
  %i.ap = load i16, ptr %i.g, align 8, !tbaa !60  ; 2 uses
  %.not.i.i23 = icmp eq i16 %i.ap, 0
  br i1 %.not.i.i23, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_jEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSN_22SynchronizedMutexLevelE2ELNSN_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = load ptr, ptr %3, align 8, !tbaa !59    ; 7 uses
  switch i16 %i.ap, label %bb.w [
    i16 1, label %bb.r
    i16 3, label %bb.v
  ]

bb.r:                                             ; preds = %bb.q
  %i.ar = load atomic i32, ptr %i.aq acquire, align 4
  %i.as = and i32 %i.ar, 768
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.aq)
          to label %.noexc25 unwind label %bb.y

.noexc25:                                         ; preds = %bb.s
  br i1 %i.au, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_jEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSN_22SynchronizedMutexLevelE2ELNSN_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %.noexc25, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.av = atomicrmw add ptr %i.aq, i32 -2048 seq_cst, align 4 ; 2 uses
  %i.aw = add i32 %i.av, -2048                    ; 2 uses
  store i32 %i.aw, ptr %i.b, align 4, !tbaa !62
  %i.ax = icmp ugt i32 %i.aw, 2047
  %i.ay = and i32 %i.av, 16
  %.not.i.i.i.i = icmp eq i32 %i.ay, 0
  %or.cond.i.i.i = or i1 %i.ax, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.u, !prof !78

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.y

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_jEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSN_22SynchronizedMutexLevelE2ELNSN_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.v:                                             ; preds = %bb.q
  %i.az = load i16, ptr %i.h, align 2, !tbaa !61
  %i.ba = zext i16 %i.az to i64
  %i.bb = ptrtoint ptr %i.aq to i64
  %.idx.i = shl nuw nsw i64 %i.ba, 5
  %i.bc = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.bd = cmpxchg ptr %i.bc, i64 %i.bb, i64 0 seq_cst seq_cst, align 8
  %i.be = extractvalue { i64, i1 } %i.bd, 1
  br i1 %i.be, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_jEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSN_22SynchronizedMutexLevelE2ELNSN_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.bf = atomicrmw add ptr %i.aq, i32 -2048 seq_cst, align 4 ; 2 uses
  %i.bg = add i32 %i.bf, -2048                    ; 2 uses
  store i32 %i.bg, ptr %i.a, align 4, !tbaa !62
  %i.bh = icmp ugt i32 %i.bg, 2047
  %i.bi = and i32 %i.bf, 16
  %.not.i.i.i24 = icmp eq i32 %i.bi, 0
  %or.cond.i.i = or i1 %i.bh, %.not.i.i.i24
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.x, !prof !78

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.y

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_jEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSN_22SynchronizedMutexLevelE2ELNSN_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.y:                                             ; preds = %bb.x, %bb.u, %bb.s
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #37
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_jEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSN_22SynchronizedMutexLevelE2ELNSN_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.v, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc25, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void

bb.z:                                             ; preds = %bb.o, %bb.n
  %.pn17 = phi { ptr, i32 } [ %i.am, %bb.o ], [ %i.al, %bb.n ]
  call void @_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_jEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSN_22SynchronizedMutexLevelE2ELNSN_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %.pn17

bb.aa:                                            ; preds = %bb.m
  unreachable
}

declare void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #10

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #13

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #25

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #25

; Function Attrs: mustprogress uwtable
define void @_ZN5folly11RequestData19releaseRefClearOnlyEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = atomicrmw add ptr %i.a, i32 -4096 acq_rel, align 4
  %i.c = icmp slt i32 %i.b, 8192
end_hunk_0
