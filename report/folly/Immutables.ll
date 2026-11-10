Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Immutables?download=true
inline.NumInlined: 904
inline.NumDeleted: 431
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSK_22SynchronizedMutexLevelE2ELNSK_23SynchronizedMutexMethodE0EEEED2Ev:bb.a
  %.not.i = icmp eq i16 %i.b, 0
  br i1 %.not.i, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !76
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.a)
          to label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #30
  unreachable

_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = load atomic i32, ptr @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit, !prof !66

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache) #34
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
  %i.n = load i32, ptr %1, align 4, !tbaa !34     ; 2 uses
  %i.o = and i32 %i.n, 128
  %.not49 = icmp eq i32 %i.o, 0
  br i1 %.not49, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %bb.d, !prof !35

bb.d:                                             ; preds = %bb.c
  %i.p = call noundef i64 @llvm.x86.rdtsc()
  %i.q = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.q, ptr %1, align 4, !tbaa !34
  %i.r = and i32 %i.q, 128
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %i.t = call noundef i64 @llvm.x86.rdtsc()
  %i.u = sub i64 %i.t, %i.p
  %i.v = icmp ult i64 %i.u, 4000
  br i1 %i.v, label %bb.e, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, !prof !35

bb.e:                                             ; preds = %.lr.ph.i
  call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !71
  %i.w = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.w, ptr %1, align 4, !tbaa !34
  %i.x = and i32 %i.w, 128
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %.lr.ph.i, !llvm.loop !3

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit: ; preds = %.lr.ph.i
  %i.z = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20yieldWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 128, i32 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 0 uses
  %.pre = load i32, ptr %1, align 4, !tbaa !34
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
  br i1 %.not.i59, label %bb.h, label %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit, !prof !66

bb.h:                                             ; preds = %bb.g
  %i.ai = call noundef zeroext i1 @_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE(ptr noundef nonnull align 8 dereferenceable(65800) @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, ptr noundef nonnull @_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv, ptr noundef nonnull @_ZN5folly13CacheLocality6systemISt6atomicEERKS0_v) ; 0 uses
  br label %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit

_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.aj = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 65792) monotonic, align 8
  %i.ak = call noundef i32 %i.aj(ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null), !inline_history !141 ; 0 uses
  %i.al = load i32, ptr %i.c, align 4, !tbaa !34
  %i.am = and i32 %i.al, 255
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.an
  %i.ap = load atomic i8, ptr %i.ao monotonic, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
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
  %.pre91 = load i32, ptr %1, align 4, !tbaa !34
  br label %.loopexit

bb.j:                                             ; preds = %bb.i, %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit
  %.lcssa = phi i32 [ %i.aq, %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit ], [ %i.aw, %bb.i ] ; 2 uses
  store atomic i32 %.lcssa, ptr %i.g monotonic, align 4
  %.pre90 = load i32, ptr %1, align 4, !tbaa !34
  br label %bb.m

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread
  %i.bc = phi i32 [ %.pre91, %.loopexit.loopexit ], [ %i.aa, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread ] ; 2 uses
  %i.bd = add i32 %i.bc, 2048
  %i.be = cmpxchg ptr %0, i32 %i.bc, i32 %i.bd seq_cst seq_cst, align 4 ; 2 uses
  %i.bf = extractvalue { i32, i1 } %i.be, 1
  br i1 %i.bf, label %bb.k, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit: ; preds = %.loopexit
  %i.bg = extractvalue { i32, i1 } %i.be, 0
  store i32 %i.bg, ptr %1, align 4
  br label %.backedge

bb.k:                                             ; preds = %.loopexit
  br i1 %i.j, label %.thread81, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i16 2, ptr %2, align 2, !tbaa !77
  br label %.thread81

bb.m:                                             ; preds = %bb.f, %bb.j
  %i.bh = phi i32 [ %.pre90, %bb.j ], [ %i.aa, %bb.f ] ; 3 uses
  %.2.ph = phi i32 [ %.lcssa, %bb.j ], [ %i.ab, %bb.f ] ; 3 uses
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
  %i.bp = shl i32 %.2.ph, 2
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.bq ; 3 uses
  br i1 %i.j, label %bb.p, label %.thread77

bb.p:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit57.thread
  %i.bs = cmpxchg ptr %i.br, i64 0, i64 %i.l seq_cst seq_cst, align 8
  %i.bt = extractvalue { i64, i1 } %i.bs, 1
  br i1 %i.bt, label %.thread79, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

.thread77:                                        ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit57.thread
  %i.bu = cmpxchg ptr %i.br, i64 0, i64 %i.k seq_cst seq_cst, align 8
  %i.bv = extractvalue { i64, i1 } %i.bu, 1
  br i1 %i.bv, label %bb.q, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit: ; preds = %.thread77, %bb.p
  %i.bw = load atomic i32, ptr %0 acquire, align 4
  store i32 %i.bw, ptr %1, align 4, !tbaa !34
  br label %.backedge

.backedge:                                        ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit, %bb.u, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63, %.thread82, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit, %bb.o
  br label %bb.c, !llvm.loop !142

bb.q:                                             ; preds = %.thread77
  %i.bx = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.bx, ptr %1, align 4, !tbaa !34
  %i.by = and i32 %i.bx, 512
  %.not53 = icmp eq i32 %i.by, 0
  br i1 %.not53, label %bb.u, label %bb.r

.thread79:                                        ; preds = %bb.p
  %i.bz = load atomic i32, ptr %0 acquire, align 4
  store i32 %i.bz, ptr %1, align 4, !tbaa !34
  store atomic i32 %.2.ph, ptr %i.m monotonic, align 4
  %i.ca = load i32, ptr %1, align 4, !tbaa !34
  %i.cb = and i32 %i.ca, 512
  %.not5380 = icmp eq i32 %i.cb, 0
  br i1 %.not5380, label %.thread82, label %.thread81

bb.r:                                             ; preds = %bb.q
  store i16 3, ptr %2, align 2, !tbaa !77
  %i.cc = trunc i32 %.2.ph to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.cc, ptr %i.cd, align 2, !tbaa !78
  br label %.thread81

.thread82:                                        ; preds = %.thread79
  %i.ce = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %0)
  br i1 %i.ce, label %.backedge, label %bb.s

bb.s:                                             ; preds = %.thread82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.cf = atomicrmw add ptr %0, i32 -2048 seq_cst, align 4 ; 2 uses
  %i.cg = add i32 %i.cf, -2048                    ; 2 uses
  store i32 %i.cg, ptr %i.b, align 4, !tbaa !34
  %i.ch = icmp ugt i32 %i.cg, 2047
  %i.ci = and i32 %i.cf, 16
  %.not.i.i = icmp eq i32 %i.ci, 0
  %or.cond.i = or i1 %i.ch, %.not.i.i
  br i1 %or.cond.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit, label %bb.t, !prof !79

bb.t:                                             ; preds = %bb.s
  call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %.backedge

bb.u:                                             ; preds = %bb.q
  %i.cj = cmpxchg ptr %i.br, i64 %i.k, i64 0 seq_cst seq_cst, align 8
  %i.ck = extractvalue { i64, i1 } %i.cj, 1
  br i1 %i.ck, label %.backedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.cl = atomicrmw add ptr %0, i32 -2048 seq_cst, align 4 ; 2 uses
  %i.cm = add i32 %i.cl, -2048                    ; 2 uses
  store i32 %i.cm, ptr %i.a, align 4, !tbaa !34
  %i.cn = icmp ugt i32 %i.cm, 2047
  %i.co = and i32 %i.cl, 16
  %.not.i.i60 = icmp eq i32 %i.co, 0
  %or.cond.i61 = or i1 %i.cn, %.not.i.i60
  br i1 %or.cond.i61, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63, label %bb.w, !prof !79

bb.w:                                             ; preds = %bb.v
  call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.backedge

.thread81:                                        ; preds = %.thread79, %bb.k, %bb.l, %bb.r
  ret i1 true
}

declare noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #9

declare noundef zeroext i1 @_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE(ptr noundef nonnull align 8 dereferenceable(65800), ptr noundef nonnull, ptr noundef nonnull) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv() #7 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5folly6Getcpu15resolveVdsoFuncEv() ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = select i1 %.not, ptr @_ZN5folly14FallbackGetcpuINS_18SequentialThreadIdEE6getcpuEPjS3_Pv, ptr %i.a
  ret ptr %i.b
}

declare noundef nonnull align 8 dereferenceable(80) ptr @_ZN5folly13CacheLocality6systemISt6atomicEERKS0_v() #21

declare noundef ptr @_ZN5folly6Getcpu15resolveVdsoFuncEv() local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5folly14FallbackGetcpuINS_18SequentialThreadIdEE6getcpuEPjS3_Pv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5folly18SequentialThreadId3getEv() ; 2 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.a, ptr %0, align 4, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.a, ptr %1, align 4, !tbaa !34
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 0
}

declare noundef i32 @_ZN5folly18SequentialThreadId3getEv() local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclISt17basic_string_viewIcSt11char_traitsIcEEEEmRKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144  ; 7 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !145    ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c ; 3 uses
  %i.e = icmp ult i64 %i.c, 17
  br i1 %i.e, label %bb.b, label %bb.f, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.f = icmp samesign ugt i64 %i.c, 3
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = xor i64 %i.c, 4766890152743124950        ; 2 uses
  %i.h = icmp samesign ugt i64 %i.c, 7
  br i1 %i.h, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit, label %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 -8
  %.0.copyload.i.i = load i64, ptr %i.b, align 1
  %.0.copyload.i.i15 = load i64, ptr %i.i, align 1
  br label %_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit

_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds i8, ptr %i.d, i64 -4
  %.0.copyload.i.i16 = load i32, ptr %i.b, align 1
  %i.k = zext i32 %.0.copyload.i.i16 to i64
  %.0.copyload.i.i17 = load i32, ptr %i.j, align 1
  %i.l = zext i32 %.0.copyload.i.i17 to i64
  br label %_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %i.b, align 1, !tbaa !43
  %i.n = sext i8 %i.m to i64
  %i.o = shl nsw i64 %i.n, 45
  %i.p = getelementptr i8, ptr %i.d, i64 -1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !43
  %i.r = sext i8 %i.q to i64
  %i.s = or i64 %i.o, %i.r
  %i.t = lshr i64 %i.c, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !43
  %i.w = sext i8 %i.v to i64
  br label %_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit

bb.f:                                             ; preds = %bb.a
  %i.x = icmp ugt i64 %i.c, 48
  br i1 %i.x, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2: ; preds = %bb.f, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2
  %.069.i = phi i64 [ %i.bc, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ %i.c, %bb.f ]
  %.067.i = phi i64 [ %i.ag, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ 4766890152743124950, %bb.f ]
  %.066.i = phi ptr [ %i.bb, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ %i.b, %bb.f ] ; 7 uses
  %.065.i = phi i64 [ %i.aq, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ 4766890152743124950, %bb.f ]
  %.0.i = phi i64 [ %i.ba, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ 4766890152743124950, %bb.f ]
  %.0.copyload.i.i18 = load i64, ptr %.066.i, align 1
  %i.y = xor i64 %.0.copyload.i.i18, 3257665815644502181
  %i.z = getelementptr inbounds nuw i8, ptr %.066.i, i64 8
  %.0.copyload.i.i19 = load i64, ptr %i.z, align 1
  %i.aa = xor i64 %.0.copyload.i.i19, %.067.i
  %i.ab = zext i64 %i.y to i128
  %i.ac = zext i64 %i.aa to i128
  %i.ad = mul nuw i128 %i.ac, %i.ab               ; 2 uses
  %i.ae = lshr i128 %i.ad, 64
  %i.af = xor i128 %i.ae, %i.ad
  %i.ag = trunc i128 %i.af to i64                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.066.i, i64 16
  %.0.copyload.i.i20 = load i64, ptr %i.ah, align 1
  %i.ai = xor i64 %.0.copyload.i.i20, -8378864009470890807
  %i.aj = getelementptr inbounds nuw i8, ptr %.066.i, i64 24
  %.0.copyload.i.i21 = load i64, ptr %i.aj, align 1
  %i.ak = xor i64 %.0.copyload.i.i21, %.065.i
  %i.al = zext i64 %i.ai to i128
  %i.am = zext i64 %i.ak to i128
  %i.an = mul nuw i128 %i.am, %i.al               ; 2 uses
  %i.ao = lshr i128 %i.an, 64
  %i.ap = xor i128 %i.ao, %i.an
  %i.aq = trunc i128 %i.ap to i64                 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.066.i, i64 32
  %.0.copyload.i.i22 = load i64, ptr %i.ar, align 1
  %i.as = xor i64 %.0.copyload.i.i22, 5418857496715711651
  %i.at = getelementptr inbounds nuw i8, ptr %.066.i, i64 40
  %.0.copyload.i.i23 = load i64, ptr %i.at, align 1
  %i.au = xor i64 %.0.copyload.i.i23, %.0.i
  %i.av = zext i64 %i.as to i128
  %i.aw = zext i64 %i.au to i128
  %i.ax = mul nuw i128 %i.aw, %i.av               ; 2 uses
  %i.ay = lshr i128 %i.ax, 64
  %i.az = xor i128 %i.ay, %i.ax
  %i.ba = trunc i128 %i.az to i64                 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.066.i, i64 48 ; 3 uses
  %i.bc = add i64 %.069.i, -48                    ; 5 uses
  %i.bd = icmp ugt i64 %i.bc, 48
  br i1 %i.bd, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2, label %bb.g, !llvm.loop !0

bb.g:                                             ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2
  %i.be = xor i64 %i.aq, %i.ag
  %i.bf = xor i64 %i.be, %i.ba                    ; 2 uses
  %i.bg = icmp samesign ugt i64 %i.bc, 16
  br i1 %i.bg, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10: ; preds = %bb.f, %bb.g
  %.1.i72 = phi ptr [ %i.bb, %bb.g ], [ %i.b, %bb.f ] ; 6 uses
  %.168.i70 = phi i64 [ %i.bf, %bb.g ], [ 4766890152743124950, %bb.f ]
  %.170.i69 = phi i64 [ %i.bc, %bb.g ], [ %i.c, %bb.f ] ; 3 uses
  %.0.copyload.i.i24 = load i64, ptr %.1.i72, align 1
  %i.bh = xor i64 %.0.copyload.i.i24, 5418857496715711651
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.i72, i64 8
  %.0.copyload.i.i25 = load i64, ptr %i.bi, align 1
  %i.bj = xor i64 %.0.copyload.i.i25, %.168.i70
  %i.bk = zext i64 %i.bh to i128
  %i.bl = zext i64 %i.bj to i128
  %i.bm = mul nuw i128 %i.bl, %i.bk               ; 2 uses
  %i.bn = lshr i128 %i.bm, 64
  %i.bo = xor i128 %i.bn, %i.bm
  %i.bp = trunc i128 %i.bo to i64                 ; 2 uses
  %i.bq = icmp samesign ugt i64 %.170.i69, 32
  br i1 %i.bq, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8: ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10
  %i.br = getelementptr inbounds nuw i8, ptr %.1.i72, i64 16
  %.0.copyload.i.i26 = load i64, ptr %i.br, align 1
  %i.bs = xor i64 %.0.copyload.i.i26, 5418857496715711651
  %i.bt = getelementptr inbounds nuw i8, ptr %.1.i72, i64 24
  %.0.copyload.i.i27 = load i64, ptr %i.bt, align 1
  %i.bu = xor i64 %.0.copyload.i.i27, %i.bp
  %i.bv = zext i64 %i.bs to i128
  %i.bw = zext i64 %i.bu to i128
  %i.bx = mul nuw i128 %i.bw, %i.bv               ; 2 uses
  %i.by = lshr i128 %i.bx, 64
  %i.bz = xor i128 %i.by, %i.bx
  %i.ca = trunc i128 %i.bz to i64
  br label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12: ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10, %bb.g
  %.1.i71 = phi ptr [ %.1.i72, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8 ], [ %.1.i72, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10 ], [ %i.bb, %bb.g ]
  %.170.i68 = phi i64 [ %.170.i69, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8 ], [ %.170.i69, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10 ], [ %i.bc, %bb.g ] ; 3 uses
  %.2.i = phi i64 [ %i.ca, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8 ], [ %i.bp, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10 ], [ %i.bf, %bb.g ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.1.i71, i64 %.170.i68 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -16
  %.0.copyload.i.i28 = load i64, ptr %i.cc, align 1
  %i.cd = xor i64 %.0.copyload.i.i28, %.170.i68
  %i.ce = getelementptr inbounds i8, ptr %i.cb, i64 -8
  %.0.copyload.i.i29 = load i64, ptr %i.ce, align 1
  br label %_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit

_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit: ; preds = %bb.d, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit, %bb.e, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12
  %.064 = phi i64 [ %.0.copyload.i.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit ], [ %i.k, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit ], [ %i.cd, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12 ], [ %i.s, %bb.e ], [ 0, %bb.d ]
  %.0 = phi i64 [ %.0.copyload.i.i15, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit ], [ %i.l, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit ], [ %.0.copyload.i.i29, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12 ], [ %i.w, %bb.e ], [ 0, %bb.d ]
  %.271.i = phi i64 [ %i.c, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit ], [ %i.c, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit ], [ %.170.i68, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12 ], [ %i.c, %bb.e ], [ 0, %bb.d ]
  %.3.i = phi i64 [ %i.g, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit ], [ %i.g, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit ], [ %.2.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12 ], [ 4766890152743124950, %bb.e ], [ 4766890152743124950, %bb.d ]
  %i.cf = xor i64 %.064, -8378864009470890807
  %i.cg = xor i64 %.3.i, %.0
  %i.ch = zext i64 %i.cf to i128
  %i.ci = zext i64 %i.cg to i128
  %i.cj = mul nuw i128 %i.ci, %i.ch               ; 2 uses
  %i.ck = trunc i128 %i.cj to i64
  %i.cl = lshr i128 %i.cj, 64
  %i.cm = trunc nuw i128 %i.cl to i64
  %i.cn = xor i64 %i.ck, -6148914691236517206
  %i.co = xor i64 %.271.i, %i.cm
  %i.cp = xor i64 %i.co, -8378864009470890807
  %i.cq = zext i64 %i.cn to i128
  %i.cr = zext i64 %i.cp to i128
  %i.cs = mul nuw i128 %i.cr, %i.cq               ; 2 uses
  %i.ct = lshr i128 %i.cs, 64
  %i.cu = xor i128 %i.ct, %i.cs
  %i.cv = trunc i128 %i.cu to i64
  ret i64 %i.cv
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 2 dereferenceable(4)) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5folly8settings21FrozenSettingProjectsC2ENS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef align 8 captures(none) %1) unnamed_addr #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !80
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !80
  store ptr null, ptr %1, align 8, !tbaa !38
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.c, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54
  store i64 %i.f, ptr %i.b, align 8, !tbaa !54
  store i64 0, ptr %i.e, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5folly8settings21FrozenSettingProjects8containsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  store i64 %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %2, ptr %i.a, align 8
end_hunk_0
begin_hunk_1_@_ZNK5folly12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEESaIS7_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEE4copyEv:bb.a

_ZN5folly10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaIS6_EEC2ERKSC_.exit: ; preds = %_ZN5folly9LockedPtrIKNS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSL_22SynchronizedMutexLevelE2ELNSL_23SynchronizedMutexMethodE0EEEEC2EPSK_.exit
  %i.q = load i16, ptr %i.e, align 8, !tbaa !77   ; 2 uses
  %.not.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.i, label %_ZN5folly9LockedPtrIKNS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSL_22SynchronizedMutexLevelE2ELNSL_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5folly10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaIS6_EEC2ERKSC_.exit
  %i.r = load ptr, ptr %3, align 8, !tbaa !76     ; 7 uses
  switch i16 %i.q, label %bb.k [
    i16 1, label %bb.f
    i16 3, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = load atomic i32, ptr %i.r acquire, align 4
  %i.t = and i32 %i.s, 768
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.r)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.g
  br i1 %i.v, label %_ZN5folly9LockedPtrIKNS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSL_22SynchronizedMutexLevelE2ELNSL_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.noexc, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.w = atomicrmw add ptr %i.r, i32 -2048 seq_cst, align 4 ; 2 uses
  %i.x = add i32 %i.w, -2048                      ; 2 uses
  store i32 %i.x, ptr %i.b, align 4, !tbaa !34
  %i.y = icmp ugt i32 %i.x, 2047
  %i.z = and i32 %i.w, 16
  %.not.i.i.i.i = icmp eq i32 %i.z, 0
  %or.cond.i.i.i = or i1 %i.y, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.i, !prof !79

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.m

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSL_22SynchronizedMutexLevelE2ELNSL_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.j:                                             ; preds = %bb.e
  %i.aa = load i16, ptr %i.f, align 2, !tbaa !78
  %i.ab = zext i16 %i.aa to i64
  %i.ac = ptrtoint ptr %i.r to i64
  %.idx.i = shl nuw nsw i64 %i.ab, 5
  %i.ad = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.ae = cmpxchg ptr %i.ad, i64 %i.ac, i64 0 seq_cst seq_cst, align 8
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  br i1 %i.af, label %_ZN5folly9LockedPtrIKNS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSL_22SynchronizedMutexLevelE2ELNSL_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.ag = atomicrmw add ptr %i.r, i32 -2048 seq_cst, align 4 ; 2 uses
  %i.ah = add i32 %i.ag, -2048                    ; 2 uses
  store i32 %i.ah, ptr %i.a, align 4, !tbaa !34
  %i.ai = icmp ugt i32 %i.ah, 2047
  %i.aj = and i32 %i.ag, 16
  %.not.i.i.i = icmp eq i32 %i.aj, 0
  %or.cond.i.i = or i1 %i.ai, %.not.i.i.i
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.l, !prof !79

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.m

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSL_22SynchronizedMutexLevelE2ELNSL_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.m:                                             ; preds = %bb.l, %bb.i, %bb.g
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #30
  unreachable

_ZN5folly9LockedPtrIKNS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSL_22SynchronizedMutexLevelE2ELNSL_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.j, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc, %_ZN5folly10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaIS6_EEC2ERKSC_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.n:                                             ; preds = %_ZN5folly9LockedPtrIKNS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSL_22SynchronizedMutexLevelE2ELNSL_23SynchronizedMutexMethodE0EEEEC2EPSK_.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrIKNS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSL_22SynchronizedMutexLevelE2ELNSL_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.am
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrIKNS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSL_22SynchronizedMutexLevelE2ELNSL_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !77
  %.not.i = icmp eq i16 %i.b, 0
  br i1 %.not.i, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !76
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.a)
          to label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #30
  unreachable

_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE17buildFromF14TableIRKSD_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37   ; 6 uses
  %i.c = lshr i64 %i.b, 8                         ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE17buildFromF14TableIRKSE_EEvOT_EUlvE_PFvPSE_EJSL_EvEET2_SJ_OT0_DpOT1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i64 %i.b, 3328
  br i1 %i.e, label %bb.c, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i64 %i.b, 768
  br i1 %i.f, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.inv.i = icmp samesign ugt i64 %i.b, 1791
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.b
  %i.g = add nsw i64 %i.c, -1
  %i.h = udiv i64 %i.g, 10
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = trunc nuw nsw i64 %i.i to i32
  %i.k = sub nuw nsw i32 64, %i.j                 ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl nuw nsw i64 1, %i.l                  ; 2 uses
  %i.n = icmp ugt i64 %i.b, 5243135
  %i.o = shl i32 10, %i.k
  %i.p = zext i32 %i.o to i64
  %i.q = select i1 %i.n, i64 40960, i64 %i.p      ; 2 uses
  %i.r = add nsw i64 %i.m, -1
  %i.s = lshr i64 %i.r, 12
  %i.t = add nuw nsw i64 %i.s, 1
  %i.u = mul i64 %i.t, %i.q
  %i.v = icmp ugt i64 %i.u, 4294967295
  br i1 %i.v, label %bb.e, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.e:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #14
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.c, %bb.d
  %.pn22.i = phi i64 [ 1, %bb.c ], [ 1, %bb.d ], [ %i.m, %_ZN5folly11findLastSetImEEjT_.exit.i ] ; 2 uses
  %.0.pn.i = phi i64 [ 2, %bb.c ], [ %spec.select.i, %bb.d ], [ %i.q, %_ZN5folly11findLastSetImEEjT_.exit.i ] ; 2 uses
  %i.w = and i64 %i.b, 255
  %i.x = shl nuw i64 1, %i.w                      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !28
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %.0.copyload.i = load i16, ptr %i.aa, align 1
  %i.ab = zext i16 %.0.copyload.i to i64          ; 2 uses
  %i.ac = icmp ugt i64 %i.x, %.pn22.i
  %i.ad = icmp samesign ult i64 %.0.pn.i, %i.ab
  %or.cond = select i1 %i.ac, i1 true, i1 %i.ad   ; 2 uses
  %.sroa.5.0 = select i1 %or.cond, i64 %.0.pn.i, i64 %i.ab
  %.sroa.09.0 = select i1 %or.cond, i64 %.pn22.i, i64 %i.x
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0, i64 noundef 1, i64 noundef 0, i64 noundef %.sroa.09.0, i64 noundef %.sroa.5.0)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !37
  %i.ag = trunc i64 %i.af to i8
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !37
  %i.ai = trunc i64 %i.ah to i8
  %i.aj = icmp eq i8 %i.ag, %i.ai
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15directBuildFromIRKSD_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE17buildFromF14TableIRKSE_EEvOT_EUlvE_PFvPSE_EJSL_EvEET2_SJ_OT0_DpOT1_.exit unwind label %bb.h

bb.g:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSD_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE17buildFromF14TableIRKSE_EEvOT_EUlvE_PFvPSE_EJSL_EvEET2_SJ_OT0_DpOT1_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  %i.am = tail call ptr @__cxa_begin_catch(ptr %i.al) #20 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE26buildFromF14TableCatchColdEPSD_(ptr noundef nonnull %0)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEEEEJSF_ESG_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit unwind label %bb.i, !inline_history !146

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEEEEJSF_ESG_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit: ; preds = %bb.h
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE17buildFromF14TableIRKSE_EEvOT_EUlvE_PFvPSE_EJSL_EvEET2_SJ_OT0_DpOT1_.exit

bb.i:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.an

bb.k:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #30
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE17buildFromF14TableIRKSE_EEvOT_EUlvE_PFvPSE_EJSL_EvEET2_SJ_OT0_DpOT1_.exit: ; preds = %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEEEEJSF_ESG_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit, %bb.g, %bb.f, %bb.a
  ret void
}

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE26buildFromF14TableCatchColdEPSD_(ptr noundef %0) local_unnamed_addr #24 comdat align 2 {
bb.a:
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE1EE5checkEv() #20
  tail call void @__cxa_rethrow() #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15directBuildFromIRKSD_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.39, align 1             ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37
  %i.c = lshr i64 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.f = call noundef zeroext i1 @_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE15beforeBuildImplIRKSB_ZNSB_11beforeBuildEmmSE_EUlRKS8_E_EEbmOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.g = load i64, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %i.h = and i64 %i.g, 255                        ; 4 uses
  %i.i = icmp eq i64 %i.h, 0                      ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.0.copyload.i.i43 = load i16, ptr %i.k, align 1
  %i.l = zext i16 %.0.copyload.i.i43 to i64
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit

bb.c:                                             ; preds = %bb.a
  %i.m = shl i64 12, %i.h
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.l, %bb.b ], [ %i.m, %bb.c ]
  %i.n = load i64, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.o = and i64 %i.n, 255                        ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %.0.copyload.i.i45 = load i16, ptr %i.s, align 1
  %i.t = zext i16 %.0.copyload.i.i45 to i64
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit46

bb.e:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit
  %i.u = shl i64 12, %i.o
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit46

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit46: ; preds = %bb.d, %bb.e
  %.0.i44 = phi i64 [ %i.t, %bb.d ], [ %i.u, %bb.e ]
  %i.v = icmp eq i64 %.0.i, %.0.i44
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit46
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %.0.copyload.i = load i16, ptr %i.x, align 1    ; 2 uses
  %i.y = zext i16 %.0.copyload.i to i64
  %i.z = shl nuw nsw i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 16
  %i.ab = shl i64 64, %i.h
  %.0.i47 = select i1 %i.i, i64 %i.aa, i64 %i.ab
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %i.w, ptr align 16 %i.ad, i64 %.0.i47, i1 false)
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !37
  %i.af = and i64 %i.ae, -256
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !37
  %i.ah = and i64 %i.ag, 255
  %i.ai = or disjoint i64 %i.ah, %i.af
  store i64 %i.ai, ptr %i.d, align 8, !tbaa !37
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i16 %.0.copyload.i, ptr %i.ak, align 1
  br label %.loopexit

bb.g:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit46
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !28
  %notmask = shl nsw i64 -1, %i.h
  %i.an = xor i64 %notmask, -1
  %i.ao = shl nuw nsw i64 %i.an, 6                ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ao
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %i.as = phi i64 [ %i.cg, %._crit_edge ], [ %i.n, %bb.g ]
  %i.at = phi i64 [ %i.ch, %._crit_edge ], [ %i.g, %bb.g ]
  %.037 = phi ptr [ %i.ci, %._crit_edge ], [ %i.ap, %bb.g ] ; 7 uses
  %.036 = phi ptr [ %i.cj, %._crit_edge ], [ %i.ar, %bb.g ] ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.037, i64 14
  %i.av = load i8, ptr %i.au, align 2, !tbaa !42
  %i.aw = and i8 %i.av, -16
  %i.ax = getelementptr inbounds nuw i8, ptr %.036, i64 14 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !42
  %i.az = add i8 %i.ay, %i.aw
  store i8 %i.az, ptr %i.ax, align 2, !tbaa !42
  %i.ba = getelementptr inbounds nuw i8, ptr %.037, i64 15
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !44
  %i.bc = getelementptr inbounds nuw i8, ptr %.036, i64 15
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !44
  %i.bd = load <16 x i8>, ptr %.037, align 16, !tbaa !43
  %i.be = icmp eq <16 x i8> %i.bd, zeroinitializer
  %i.bf = bitcast <16 x i1> %i.be to i16
  %i.bg = and i16 %i.bf, 4095                     ; 2 uses
  %.not5758 = icmp eq i16 %i.bg, 4095
  br i1 %.not5758, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.bh = xor i16 %i.bg, 4095
  %.sroa.0.0.extract.trunc = zext nneg i16 %i.bh to i32
  %i.bi = icmp ne ptr %.037, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bi)
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.03561 = phi i64 [ 0, %.lr.ph ], [ %i.cf, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ] ; 3 uses
  %.sroa.0.060 = phi i32 [ %.sroa.0.0.extract.trunc, %.lr.ph ], [ %.sroa.0.1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ] ; 3 uses
  %.sroa.8.059 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ] ; 2 uses
  %i.bj = and i32 %.sroa.0.060, 1
  %.not.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i, label %bb.j, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !66

bb.j:                                             ; preds = %bb.i
  %i.bk = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0.060, i1 true) ; 2 uses
  %i.bl = add i32 %i.bk, %.sroa.8.059
  %i.bm = add nuw nsw i32 %i.bk, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.i, %bb.j
  %.sroa.8.1.in = phi i32 [ %i.bl, %bb.j ], [ %.sroa.8.059, %bb.i ] ; 2 uses
  %.pn = phi i32 [ %i.bm, %bb.j ], [ 1, %bb.i ]
  %i.bn = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.bo = shl nuw nsw i64 %i.bn, 2
  %i.bp = getelementptr i8, ptr %.037, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !34
  %i.bs = shl i64 %.03561, 2
  %i.bt = getelementptr i8, ptr %.036, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 16
  store i32 %i.br, ptr %i.bu, align 4, !tbaa !34
  %i.bv = getelementptr inbounds nuw i8, ptr %.036, i64 %.03561 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !43
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.3) #28
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %i.by = getelementptr inbounds nuw i8, ptr %.037, i64 %i.bn
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !43
  %.sroa.0.1 = lshr i32 %.sroa.0.060, %.pn        ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  store i8 %i.bz, ptr %i.bv, align 1, !tbaa !43
  %i.ca = load i64, ptr %i.d, align 8, !tbaa !37  ; 2 uses
  %i.cb = and i64 %i.ca, -256
  %i.cc = add i64 %i.cb, 256
  %i.cd = and i64 %i.ca, 255
  %i.ce = or disjoint i64 %i.cc, %i.cd            ; 2 uses
  store i64 %i.ce, ptr %i.d, align 8, !tbaa !37
  %i.cf = add i64 %.03561, 1
  %.not57 = icmp eq i32 %.sroa.0.1, 0
  br i1 %.not57, label %._crit_edge.loopexit, label %bb.i, !llvm.loop !147

._crit_edge.loopexit:                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !37
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.h
  %i.cg = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.as, %bb.h ] ; 2 uses
  %i.ch = phi i64 [ %i.ce, %._crit_edge.loopexit ], [ %i.at, %bb.h ] ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %.037, i64 -64
  %i.cj = getelementptr inbounds i8, ptr %.036, i64 -64
  %.not.unshifted = xor i64 %i.cg, %i.ch
  %.not = icmp ult i64 %.not.unshifted, 256
  br i1 %.not, label %.loopexit, label %bb.h, !llvm.loop !148

.loopexit:                                        ; preds = %._crit_edge, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSD_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.39, align 1             ; 3 uses
  %3 = alloca %"struct.std::array.17", align 1    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37
  %i.c = and i64 %i.b, 255                        ; 3 uses
  %i.d = shl nuw i64 1, %i.c                      ; 4 uses
  %.not = icmp samesign ugt i64 %i.c, 8           ; 3 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 63
  br i1 %i.e, label %bb.c, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, !prof !66

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit:     ; preds = %bb.b
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit
  %.0129 = phi ptr [ %i.f, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit ], [ %3, %bb.a ] ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0129, i8 0, i64 %i.d, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !37
  %i.i = lshr i64 %i.h, 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.k = invoke noundef zeroext i1 @_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE15beforeBuildImplIRKSB_ZNSB_11beforeBuildEmmSE_EUlRKS8_E_EEbmOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %bb.g       ; 0 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.g, align 8, !tbaa !37
  %i.n = and i64 %i.m, 255
  %notmask.i60 = shl nsw i64 -1, %i.n
  %i.o = xor i64 %notmask.i60, -1
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %bb.e
  %.0121 = phi i64 [ %i.o, %bb.e ], [ %i.is, %.loopexit ] ; 4 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !28
  %i.q = shl nsw i64 %.0121, 6
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 %i.q ; 7 uses
  %i.s = load <16 x i8>, ptr %i.r, align 16       ; 2 uses
  %i.t = icmp eq <16 x i8> %i.s, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16
  %i.v = and i16 %i.u, 4095                       ; 2 uses
  %i.w = xor i16 %i.v, 4095
  %.sroa.093.0.extract.trunc = zext nneg i16 %i.w to i32 ; 3 uses
  %.not132149 = icmp eq i16 %i.v, 4095
  %i.x = extractelement <16 x i8> %i.s, i64 14
  br i1 %.not132149, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.y = icmp ne ptr %i.r, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.y)
  %i.z = load ptr, ptr %0, align 8, !tbaa !38
  br label %bb.h

._crit_edge:                                      ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %i.aa = icmp ult i8 %i.x, 16
  br i1 %i.aa, label %.lr.ph159, label %.lr.ph155

bb.g:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br i1 %.not, label %bb.ac, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSF_EEvOT_EUlvE_Lb1EED2Ev.exit81

bb.h:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.090.0151 = phi i32 [ %.sroa.093.0.extract.trunc, %.lr.ph ], [ %.sroa.090.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %.sroa.8.0150 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %i.ac = and i32 %.sroa.090.0151, 1
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.i, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !66

bb.i:                                             ; preds = %bb.h
  %i.ad = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.090.0151, i1 true) ; 2 uses
  %i.ae = add i32 %i.ad, %.sroa.8.0150
  %i.af = add nuw nsw i32 %i.ad, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.h, %bb.i
  %.sroa.8.1.in = phi i32 [ %i.ae, %bb.i ], [ %.sroa.8.0150, %bb.h ] ; 2 uses
  %.pn136 = phi i32 [ %i.af, %bb.i ], [ 1, %bb.h ]
  %.sroa.090.1 = lshr i32 %.sroa.090.0151, %.pn136 ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %i.ag = zext i32 %.sroa.8.1.in to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = getelementptr i8, ptr %i.r, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 16
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !34
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.al
  call void @llvm.prefetch.p0(ptr %i.am, i32 0, i32 3, i32 1)
  %.not132 = icmp eq i32 %.sroa.090.1, 0
  br i1 %.not132, label %._crit_edge, label %bb.h

.lr.ph159:                                        ; preds = %._crit_edge, %bb.m
  %.sroa.093.0158 = phi i32 [ %.sroa.093.2, %bb.m ], [ %.sroa.093.0.extract.trunc, %._crit_edge ] ; 3 uses
  %.sroa.12.0157 = phi i32 [ %.sroa.12.2, %bb.m ], [ 0, %._crit_edge ] ; 2 uses
  %i.an = and i32 %.sroa.093.0158, 1
  %.not.i61 = icmp eq i32 %i.an, 0
  br i1 %.not.i61, label %bb.j, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63, !prof !66

bb.j:                                             ; preds = %.lr.ph159
  %i.ao = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.093.0158, i1 true) ; 2 uses
  %i.ap = add i32 %i.ao, %.sroa.12.0157
  %i.aq = add nuw nsw i32 %i.ao, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63: ; preds = %.lr.ph159, %bb.j
  %.sroa.12.2.in = phi i32 [ %i.ap, %bb.j ], [ %.sroa.12.0157, %.lr.ph159 ] ; 2 uses
  %.pn135 = phi i32 [ %i.aq, %bb.j ], [ 1, %.lr.ph159 ]
  %.sroa.093.2 = lshr i32 %.sroa.093.0158, %.pn135 ; 2 uses
  %.sroa.12.2 = add i32 %.sroa.12.2.in, 1
  %i.ar = zext i32 %.sroa.12.2.in to i64          ; 2 uses
  %i.as = shl nuw nsw i64 %i.ar, 2
  %i.at = getelementptr i8, ptr %i.r, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 16
  %i.av = load i32, ptr %i.au, align 4, !tbaa !34
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ar
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !43  ; 2 uses
  %i.ay = zext i8 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 1
  %i.ba = or disjoint i64 %i.az, 1
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !37
  %i.bc = and i64 %i.bb, 255
  %notmask.i.i = shl nsw i64 -1, %i.bc
  %i.bd = xor i64 %notmask.i.i, -1                ; 2 uses
  %i.be = load ptr, ptr %i.j, align 8, !tbaa !28  ; 2 uses
  %i.bf = and i64 %.0121, %i.bd                   ; 4 uses
  %i.bg = shl nuw nsw i64 %i.bf, 6                ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0129, i64 %i.bf
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !43  ; 2 uses
  %i.bj = icmp ult i8 %i.bi, 12
  br i1 %i.bj, label %._crit_edge.i, label %.lr.ph.i, !prof !67

.lr.ph.i:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i
  %i.bk = phi i64 [ %i.bs, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ], [ %i.bg, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63 ]
  %i.bl = phi i64 [ %i.br, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ], [ %i.bf, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 15 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !44  ; 2 uses
  %.not.i.i = icmp eq i8 %i.bo, -2
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.bp = add i8 %i.bo, 1
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !44
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i: ; preds = %bb.k, %.lr.ph.i
  %i.bq = add nuw i64 %i.ba, %i.bl
  %i.br = and i64 %i.bq, %i.bd                    ; 4 uses
  %i.bs = shl nuw nsw i64 %i.br, 6                ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0129, i64 %i.br
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !43  ; 2 uses
  %i.bv = icmp ult i8 %i.bu, 12
  br i1 %i.bv, label %._crit_edge.i, label %.lr.ph.i, !prof !68, !llvm.loop !2

._crit_edge.i:                                    ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63
  %.lcssa22.i = phi i64 [ %i.bf, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63 ], [ %i.br, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ]
  %.0.lcssa.i = phi i8 [ 0, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63 ], [ 16, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ]
  %.pn.i = phi i64 [ %i.bg, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63 ], [ %i.bs, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ]
  %.lcssa.i = phi i8 [ %i.bi, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63 ], [ %i.bu, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ] ; 2 uses
  %.lcssa21.i = getelementptr inbounds nuw i8, ptr %i.be, i64 %.pn.i ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0129, i64 %.lcssa22.i
  %i.bx = add nuw nsw i8 %.lcssa.i, 1
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !43
  %i.by = zext nneg i8 %.lcssa.i to i64           ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 %i.by ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !43
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.3) #28
  unreachable

bb.m:                                             ; preds = %._crit_edge.i
  store i8 %i.ax, ptr %i.bz, align 1, !tbaa !43
  %i.cc = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 14 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 2, !tbaa !42
  %i.ce = add i8 %i.cd, %.0.lcssa.i
  store i8 %i.ce, ptr %i.cc, align 2, !tbaa !42
  %i.cf = shl nuw nsw i64 %i.by, 2
  %i.cg = getelementptr i8, ptr %.lcssa21.i, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 16     ; 2 uses
  %i.ci = icmp ne ptr %.lcssa21.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ci)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ch) ]
  store i32 %i.av, ptr %i.ch, align 4, !tbaa !34
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %i.ck = and i64 %i.cj, -256
  %i.cl = add i64 %i.ck, 256
  %i.cm = and i64 %i.cj, 255
  %i.cn = or disjoint i64 %i.cl, %i.cm
  store i64 %i.cn, ptr %i.a, align 8, !tbaa !37
  %.not134 = icmp eq i32 %.sroa.093.2, 0
  br i1 %.not134, label %.loopexit, label %.lr.ph159, !llvm.loop !149

.lr.ph155:                                        ; preds = %._crit_edge, %bb.z
  %.sroa.093.1154 = phi i32 [ %.sroa.093.3, %bb.z ], [ %.sroa.093.0.extract.trunc, %._crit_edge ] ; 3 uses
  %.sroa.12.1153 = phi i32 [ %.sroa.12.3, %bb.z ], [ 0, %._crit_edge ] ; 2 uses
  %i.co = and i32 %.sroa.093.1154, 1
  %.not.i64 = icmp eq i32 %i.co, 0
  br i1 %.not.i64, label %bb.n, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit66, !prof !66

bb.n:                                             ; preds = %.lr.ph155
  %i.cp = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.093.1154, i1 true) ; 2 uses
  %i.cq = add i32 %i.cp, %.sroa.12.1153
  %i.cr = add nuw nsw i32 %i.cp, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit66

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit66: ; preds = %.lr.ph155, %bb.n
  %.sroa.12.3.in = phi i32 [ %i.cq, %bb.n ], [ %.sroa.12.1153, %.lr.ph155 ] ; 2 uses
  %.pn = phi i32 [ %i.cr, %bb.n ], [ 1, %.lr.ph155 ]
  %.sroa.093.3 = lshr i32 %.sroa.093.1154, %.pn   ; 2 uses
  %.sroa.12.3 = add i32 %.sroa.12.3.in, 1
  %i.cs = zext i32 %.sroa.12.3.in to i64          ; 2 uses
  %i.ct = shl nuw nsw i64 %i.cs, 2
  %i.cu = getelementptr i8, ptr %i.r, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 16
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !34 ; 2 uses
  %i.cx = load ptr, ptr %1, align 8, !tbaa !38
  %i.cy = zext i32 %i.cw to i64
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.cx, i64 %i.cy ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !48 ; 7 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !50 ; 13 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dc ; 3 uses
  %i.de = icmp ult i64 %i.dc, 17
  br i1 %i.de, label %bb.o, label %bb.s, !prof !35

bb.o:                                             ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit66
  %i.df = icmp samesign ugt i64 %i.dc, 3
  br i1 %i.df, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dg = xor i64 %i.dc, 4766890152743124950      ; 2 uses
  %i.dh = icmp samesign ugt i64 %i.dc, 7
  br i1 %i.dh, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i, label %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i: ; preds = %bb.p
  %i.di = getelementptr inbounds i8, ptr %i.dd, i64 -8
  %.0.copyload.i.i.i = load i64, ptr %i.da, align 1
  %.0.copyload.i.i15.i = load i64, ptr %i.di, align 1
  br label %bb.u

_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i: ; preds = %bb.p
  %i.dj = getelementptr inbounds i8, ptr %i.dd, i64 -4
  %.0.copyload.i.i16.i = load i32, ptr %i.da, align 1
  %i.dk = zext i32 %.0.copyload.i.i16.i to i64
  %.0.copyload.i.i17.i = load i32, ptr %i.dj, align 1
  %i.dl = zext i32 %.0.copyload.i.i17.i to i64
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %.not.i.i83 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i83, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dm = load i8, ptr %i.da, align 1, !tbaa !43
  %i.dn = sext i8 %i.dm to i64
  %i.do = shl nsw i64 %i.dn, 45
  %i.dp = getelementptr i8, ptr %i.dd, i64 -1
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !43
  %i.dr = sext i8 %i.dq to i64
  %i.ds = or i64 %i.do, %i.dr
  %i.dt = lshr i64 %i.dc, 1
  %i.du = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !43
  %i.dw = sext i8 %i.dv to i64
  br label %bb.u

bb.s:                                             ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit66
  %i.dx = icmp ugt i64 %i.dc, 48
  br i1 %i.dx, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i: ; preds = %bb.s, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i
  %.069.i.i = phi i64 [ %i.fc, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i ], [ %i.dc, %bb.s ]
  %.067.i.i = phi i64 [ %i.eg, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i ], [ 4766890152743124950, %bb.s ]
  %.066.i.i = phi ptr [ %i.fb, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i ], [ %i.da, %bb.s ] ; 7 uses
  %.065.i.i = phi i64 [ %i.eq, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i ], [ 4766890152743124950, %bb.s ]
  %.0.i.i = phi i64 [ %i.fa, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i ], [ 4766890152743124950, %bb.s ]
  %.0.copyload.i.i18.i = load i64, ptr %.066.i.i, align 1
  %i.dy = xor i64 %.0.copyload.i.i18.i, 3257665815644502181
  %i.dz = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 8
  %.0.copyload.i.i19.i = load i64, ptr %i.dz, align 1
  %i.ea = xor i64 %.0.copyload.i.i19.i, %.067.i.i
  %i.eb = zext i64 %i.dy to i128
  %i.ec = zext i64 %i.ea to i128
  %i.ed = mul nuw i128 %i.ec, %i.eb               ; 2 uses
  %i.ee = lshr i128 %i.ed, 64
  %i.ef = xor i128 %i.ee, %i.ed
  %i.eg = trunc i128 %i.ef to i64                 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 16
  %.0.copyload.i.i20.i = load i64, ptr %i.eh, align 1
  %i.ei = xor i64 %.0.copyload.i.i20.i, -8378864009470890807
  %i.ej = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 24
  %.0.copyload.i.i21.i = load i64, ptr %i.ej, align 1
  %i.ek = xor i64 %.0.copyload.i.i21.i, %.065.i.i
  %i.el = zext i64 %i.ei to i128
  %i.em = zext i64 %i.ek to i128
  %i.en = mul nuw i128 %i.em, %i.el               ; 2 uses
  %i.eo = lshr i128 %i.en, 64
  %i.ep = xor i128 %i.eo, %i.en
  %i.eq = trunc i128 %i.ep to i64                 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 32
  %.0.copyload.i.i22.i = load i64, ptr %i.er, align 1
  %i.es = xor i64 %.0.copyload.i.i22.i, 5418857496715711651
  %i.et = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 40
  %.0.copyload.i.i23.i = load i64, ptr %i.et, align 1
  %i.eu = xor i64 %.0.copyload.i.i23.i, %.0.i.i
  %i.ev = zext i64 %i.es to i128
  %i.ew = zext i64 %i.eu to i128
  %i.ex = mul nuw i128 %i.ew, %i.ev               ; 2 uses
  %i.ey = lshr i128 %i.ex, 64
  %i.ez = xor i128 %i.ey, %i.ex
  %i.fa = trunc i128 %i.ez to i64                 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 48 ; 3 uses
  %i.fc = add i64 %.069.i.i, -48                  ; 5 uses
  %i.fd = icmp ugt i64 %i.fc, 48
  br i1 %i.fd, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i, label %bb.t, !llvm.loop !0

bb.t:                                             ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i
  %i.fe = xor i64 %i.eq, %i.eg
  %i.ff = xor i64 %i.fe, %i.fa                    ; 2 uses
  %i.fg = icmp samesign ugt i64 %i.fc, 16
  br i1 %i.fg, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i: ; preds = %bb.t, %bb.s
  %.1.i72.i = phi ptr [ %i.fb, %bb.t ], [ %i.da, %bb.s ] ; 6 uses
  %.168.i70.i = phi i64 [ %i.ff, %bb.t ], [ 4766890152743124950, %bb.s ]
  %.170.i69.i = phi i64 [ %i.fc, %bb.t ], [ %i.dc, %bb.s ] ; 3 uses
  %.0.copyload.i.i24.i = load i64, ptr %.1.i72.i, align 1
  %i.fh = xor i64 %.0.copyload.i.i24.i, 5418857496715711651
  %i.fi = getelementptr inbounds nuw i8, ptr %.1.i72.i, i64 8
  %.0.copyload.i.i25.i = load i64, ptr %i.fi, align 1
  %i.fj = xor i64 %.0.copyload.i.i25.i, %.168.i70.i
  %i.fk = zext i64 %i.fh to i128
  %i.fl = zext i64 %i.fj to i128
  %i.fm = mul nuw i128 %i.fl, %i.fk               ; 2 uses
  %i.fn = lshr i128 %i.fm, 64
  %i.fo = xor i128 %i.fn, %i.fm
  %i.fp = trunc i128 %i.fo to i64                 ; 2 uses
  %i.fq = icmp samesign ugt i64 %.170.i69.i, 32
  br i1 %i.fq, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i: ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i
  %i.fr = getelementptr inbounds nuw i8, ptr %.1.i72.i, i64 16
  %.0.copyload.i.i26.i = load i64, ptr %i.fr, align 1
  %i.fs = xor i64 %.0.copyload.i.i26.i, 5418857496715711651
  %i.ft = getelementptr inbounds nuw i8, ptr %.1.i72.i, i64 24
  %.0.copyload.i.i27.i = load i64, ptr %i.ft, align 1
  %i.fu = xor i64 %.0.copyload.i.i27.i, %i.fp
  %i.fv = zext i64 %i.fs to i128
  %i.fw = zext i64 %i.fu to i128
  %i.fx = mul nuw i128 %i.fw, %i.fv               ; 2 uses
  %i.fy = lshr i128 %i.fx, 64
  %i.fz = xor i128 %i.fy, %i.fx
  %i.ga = trunc i128 %i.fz to i64
  br label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i: ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i, %bb.t
  %.1.i71.i = phi ptr [ %.1.i72.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i ], [ %.1.i72.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i ], [ %i.fb, %bb.t ]
  %.170.i68.i = phi i64 [ %.170.i69.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i ], [ %.170.i69.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i ], [ %i.fc, %bb.t ] ; 3 uses
  %.2.i.i = phi i64 [ %i.ga, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i ], [ %i.fp, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i ], [ %i.ff, %bb.t ]
  %i.gb = getelementptr inbounds nuw i8, ptr %.1.i71.i, i64 %.170.i68.i ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 -16
  %.0.copyload.i.i28.i = load i64, ptr %i.gc, align 1
  %i.gd = xor i64 %.0.copyload.i.i28.i, %.170.i68.i
  %i.ge = getelementptr inbounds i8, ptr %i.gb, i64 -8
  %.0.copyload.i.i29.i = load i64, ptr %i.ge, align 1
  br label %bb.u

bb.u:                                             ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i, %bb.q, %bb.r, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i
  %.064.i = phi i64 [ %.0.copyload.i.i.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i ], [ %i.dk, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i ], [ %i.gd, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i ], [ %i.ds, %bb.r ], [ 0, %bb.q ]
  %.0.i82 = phi i64 [ %.0.copyload.i.i15.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i ], [ %i.dl, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i ], [ %.0.copyload.i.i29.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i ], [ %i.dw, %bb.r ], [ 0, %bb.q ]
  %.271.i.i = phi i64 [ %i.dc, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i ], [ %i.dc, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i ], [ %.170.i68.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i ], [ %i.dc, %bb.r ], [ 0, %bb.q ]
  %.3.i.i = phi i64 [ %i.dg, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i ], [ %i.dg, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i ], [ %.2.i.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i ], [ 4766890152743124950, %bb.r ], [ 4766890152743124950, %bb.q ]
  %i.gf = xor i64 %.064.i, -8378864009470890807
  %i.gg = xor i64 %.3.i.i, %.0.i82
  %i.gh = zext i64 %i.gf to i128
  %i.gi = zext i64 %i.gg to i128
  %i.gj = mul nuw i128 %i.gi, %i.gh               ; 2 uses
  %i.gk = trunc i128 %i.gj to i64
  %i.gl = lshr i128 %i.gj, 64
  %i.gm = trunc nuw i128 %i.gl to i64
  %i.gn = xor i64 %i.gk, -6148914691236517206
  %i.go = xor i64 %.271.i.i, %i.gm
  %i.gp = xor i64 %i.go, -8378864009470890807
  %i.gq = zext i64 %i.gn to i128
  %i.gr = zext i64 %i.gp to i128
  %i.gs = mul nuw i128 %i.gr, %i.gq               ; 2 uses
  %i.gt = lshr i128 %i.gs, 64
  %i.gu = xor i128 %i.gt, %i.gs
  %i.gv = trunc i128 %i.gu to i64                 ; 2 uses
  %i.gw = lshr i64 %i.gv, 56
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.gw, i64 1) ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.cs
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !43
  %i.gz = zext i8 %i.gy to i64
  %i.ha = icmp eq i64 %.sroa.speculated.i.i.i, %i.gz
  br i1 %i.ha, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSD_EEvOT_E30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.3) #28
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.hb = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.hc = or disjoint i64 %i.hb, 1
  %i.hd = load i64, ptr %i.a, align 8, !tbaa !37
  %i.he = and i64 %i.hd, 255
  %notmask.i.i67 = shl nsw i64 -1, %i.he
  %i.hf = xor i64 %notmask.i.i67, -1              ; 2 uses
  %i.hg = load ptr, ptr %i.j, align 8, !tbaa !28  ; 2 uses
  %i.hh = and i64 %i.hf, %i.gv                    ; 4 uses
  %i.hi = shl nuw nsw i64 %i.hh, 6                ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.0129, i64 %i.hh
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !43  ; 2 uses
  %i.hl = icmp ult i8 %i.hk, 12
  br i1 %i.hl, label %._crit_edge.i71, label %.lr.ph.i68, !prof !67

.lr.ph.i68:                                       ; preds = %bb.w, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70
  %i.hm = phi i64 [ %i.hu, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70 ], [ %i.hi, %bb.w ]
  %i.hn = phi i64 [ %i.ht, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70 ], [ %i.hh, %bb.w ]
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hm
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 15 ; 2 uses
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !44  ; 2 uses
  %.not.i.i69 = icmp eq i8 %i.hq, -2
  br i1 %.not.i.i69, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i68
  %i.hr = add i8 %i.hq, 1
  store i8 %i.hr, ptr %i.hp, align 1, !tbaa !44
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70: ; preds = %bb.x, %.lr.ph.i68
  %i.hs = add nuw i64 %i.hc, %i.hn
  %i.ht = and i64 %i.hs, %i.hf                    ; 4 uses
  %i.hu = shl nuw nsw i64 %i.ht, 6                ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.0129, i64 %i.ht
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !43  ; 2 uses
  %i.hx = icmp ult i8 %i.hw, 12
  br i1 %i.hx, label %._crit_edge.i71, label %.lr.ph.i68, !prof !68, !llvm.loop !2

._crit_edge.i71:                                  ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70, %bb.w
  %.lcssa22.i72 = phi i64 [ %i.hh, %bb.w ], [ %i.ht, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70 ]
  %.0.lcssa.i73 = phi i8 [ 0, %bb.w ], [ 16, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70 ]
  %.pn.i74 = phi i64 [ %i.hi, %bb.w ], [ %i.hu, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70 ]
  %.lcssa.i75 = phi i8 [ %i.hk, %bb.w ], [ %i.hw, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70 ] ; 2 uses
  %.lcssa21.i76 = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.pn.i74 ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.0129, i64 %.lcssa22.i72
  %i.hz = add nuw nsw i8 %.lcssa.i75, 1
  store i8 %i.hz, ptr %i.hy, align 1, !tbaa !43
  %i.ia = zext nneg i8 %.lcssa.i75 to i64         ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.lcssa21.i76, i64 %i.ia ; 2 uses
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !43
  %i.id = icmp eq i8 %i.ic, 0
  br i1 %i.id, label %bb.z, label %bb.y

bb.y:                                             ; preds = %._crit_edge.i71
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.3) #28
  unreachable

bb.z:                                             ; preds = %._crit_edge.i71
  %i.ie = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  store i8 %i.ie, ptr %i.ib, align 1, !tbaa !43
  %i.if = getelementptr inbounds nuw i8, ptr %.lcssa21.i76, i64 14 ; 2 uses
  %i.ig = load i8, ptr %i.if, align 2, !tbaa !42
  %i.ih = add i8 %i.ig, %.0.lcssa.i73
  store i8 %i.ih, ptr %i.if, align 2, !tbaa !42
  %i.ii = shl nuw nsw i64 %i.ia, 2
  %i.ij = getelementptr i8, ptr %.lcssa21.i76, i64 %i.ii
  %i.ik = getelementptr i8, ptr %i.ij, i64 16     ; 2 uses
  %i.il = icmp ne ptr %.lcssa21.i76, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.il)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ik) ]
  store i32 %i.cw, ptr %i.ik, align 4, !tbaa !34
  %i.im = load i64, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %i.in = and i64 %i.im, -256
  %i.io = add i64 %i.in, 256
  %i.ip = and i64 %i.im, 255
  %i.iq = or disjoint i64 %i.io, %i.ip
  store i64 %i.iq, ptr %i.a, align 8, !tbaa !37
  %.not133 = icmp eq i32 %.sroa.093.3, 0
  br i1 %.not133, label %.loopexit, label %.lr.ph155, !llvm.loop !150

.loopexit:                                        ; preds = %bb.z, %bb.m, %bb.f
  %i.ir = icmp eq i64 %.0121, 0
  %i.is = add nsw i64 %.0121, -1
  br i1 %i.ir, label %bb.aa, label %bb.f

bb.aa:                                            ; preds = %.loopexit
  br i1 %.not, label %bb.ab, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSF_EEvOT_EUlvE_Lb1EED2Ev.exit

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdlPvm(ptr noundef nonnull %.0129, i64 noundef %i.d) #29
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSF_EEvOT_EUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSF_EEvOT_EUlvE_Lb1EED2Ev.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.ac:                                            ; preds = %bb.g
  call void @_ZdlPvm(ptr noundef nonnull %.0129, i64 noundef %i.d) #29
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSF_EEvOT_EUlvE_Lb1EED2Ev.exit81

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSF_EEvOT_EUlvE_Lb1EED2Ev.exit81: ; preds = %bb.g, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.ab
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE15beforeBuildImplIRKSB_ZNSB_11beforeBuildEmmSE_EUlRKS8_E_EEbmOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %.not39 = icmp eq i64 %1, 0
  br i1 %.not39, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !38
  %i.b = load ptr, ptr %2, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret i1 true

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.02033 = phi i64 [ 0, %.lr.ph ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.02132 = phi ptr [ %i.a, %.lr.ph ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 8 uses
  %.02231 = phi ptr [ %i.b, %.lr.ph ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.02132) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  store ptr %i.c, ptr %4, align 8, !tbaa !49, !alias.scope !155
  %i.e = load ptr, ptr %.02231, align 8, !tbaa !48, !noalias !155 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02231, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !50, !noalias !155 ; 8 uses
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = icmp slt i64 %i.g, 0
  br i1 %i.i, label %.noexc.i.i, label %bb.d

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #32
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !66

.noexc6.i.i:                                      ; preds = %bb.d
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc23:                                         ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.d
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #33
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc24:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.l, ptr %4, align 8, !tbaa !48, !alias.scope !155
  store i64 %i.g, ptr %i.c, align 8, !tbaa !43, !alias.scope !155
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc24, %bb.b
  %i.m = phi ptr [ %i.l, %.noexc24 ], [ %i.c, %bb.b ] ; 3 uses
  switch i64 %i.g, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.e, align 1, !tbaa !43
  store i8 %i.n, ptr %i.m, align 1, !tbaa !43
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  store i64 %i.g, ptr %i.d, align 8, !tbaa !50, !alias.scope !155
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store i8 0, ptr %i.o, align 1, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %.02132, i64 16 ; 3 uses
  store ptr %i.p, ptr %.02132, align 8, !tbaa !49
  %i.q = load ptr, ptr %4, align 8, !tbaa !48     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.s = load i64, ptr %i.d, align 8, !tbaa !50   ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  store ptr %i.q, ptr %.02132, align 8, !tbaa !48
  %i.v = load i64, ptr %i.c, align 8, !tbaa !43
  store i64 %i.v, ptr %i.p, align 8, !tbaa !43
  %.pre = load i64, ptr %i.d, align 8, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.w = phi i64 [ %i.s, %bb.h ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.02132, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.y = add nuw i64 %.02033, 1                   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.02231, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %.02132, i64 32
  %exitcond.not = icmp eq i64 %i.y, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !153

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc6.i.i, %.noexc.i.i
  %lpad.loopexit.split-lp65 = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.019 = extractvalue { ptr, i32 } %lpad.loopexit.split-lp65, 0
  %i.ab = call ptr @__cxa_begin_catch(ptr %.019) #20 ; 0 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %.not34 = icmp eq ptr %i.ac, %.02132
  br i1 %.not34, label %._crit_edge38, label %.lr.ph37

._crit_edge38:                                    ; preds = %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit, %.loopexit.split-lp.loopexit.split-lp
  invoke void @__cxa_rethrow() #32
          to label %bb.l unwind label %bb.i

.lr.ph37:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit
  %.035 = phi ptr [ %i.ai, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit ], [ %i.ac, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %i.ad = load ptr, ptr %.035, align 8, !tbaa !48 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.035, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.lr.ph37
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !43
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #29
  br label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit

_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit: ; preds = %.lr.ph37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.035, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.ai, %.02132
  br i1 %.not, label %._crit_edge38, label %.lr.ph37, !llvm.loop !154

bb.i:                                             ; preds = %._crit_edge38
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.aj

bb.k:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #30
  unreachable

bb.l:                                             ; preds = %._crit_edge38
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.d = load i8, ptr %i.c, align 1, !tbaa !83
  %i.e = icmp eq i8 %i.d, -1
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !37   ; 3 uses
  %i.h = lshr i64 %i.g, 8                         ; 2 uses
  %i.i = and i64 %i.g, 255
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.0.copyload.i.i = load i16, ptr %i.j, align 1
  %i.k = zext i16 %.0.copyload.i.i to i64
  %notmask.i = shl nsw i64 -1, %i.i
  %i.l = xor i64 %notmask.i, -1
  %i.m = lshr i64 %i.l, 12
  %i.n = add nuw nsw i64 %i.m, 1
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi i64 [ %i.v, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !38
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.05.i.i ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !48   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !43
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #29
  br label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.v = add nuw nsw i64 %.05.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.v, %i.h
  br i1 %exitcond.not.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !6

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit: ; preds = %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pre = load i64, ptr %i.f, align 8, !tbaa !37
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit, %bb.b
  %i.w = phi i64 [ %.pre, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit ], [ %i.g, %bb.b ] ; 3 uses
  %i.x = icmp ult i64 %i.w, 256
  br i1 %i.x, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit
  %i.y = and i64 %i.w, 255                        ; 2 uses
  store i64 %i.y, ptr %i.f, align 8, !tbaa !37
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit, %bb.c
  %i.z = phi i64 [ %i.w, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit ], [ %i.y, %bb.c ] ; 2 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %.0.copyload.i = load i16, ptr %i.ab, align 1
  %i.ac = zext i16 %.0.copyload.i to i64
  %i.ad = icmp eq i64 %i.z, 0
  %i.ae = shl nuw nsw i64 %i.ac, 2
  %.neg17 = sub nuw nsw i64 -16, %i.ae
  %.neg18 = shl i64 -64, %i.z
  %.0.i.neg = select i1 %i.ad, i64 %.neg17, i64 %.neg18
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !28
  store i64 0, ptr %i.f, align 8, !tbaa !37
  %i.af = and i64 %.0.i.neg, -8
  %i.ag = shl nuw nsw i64 %i.k, 5
  %i.ah = mul i64 %i.ag, %i.n
  %i.ai = sub i64 %i.ah, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ai) #20
  store ptr null, ptr %0, align 8, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #7 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #26

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind }
attributes #21 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { cold noreturn nounwind }
attributes #29 = { builtin nounwind }
attributes #30 = { noreturn nounwind }
attributes #31 = { allocsize(0) }
attributes #32 = { noreturn }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { cold }

!llvm.module.flags = !{!7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{!0, !39}
!1 = distinct !{!1, !39}
!2 = distinct !{!2, !39}
!3 = distinct !{!3, !39}
!4 = distinct !{!4, !39}
!5 = distinct !{!5, !39}
!6 = distinct !{!6, !39}
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 7, !"openmp", i32 51}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!14 = !{!"Simple C++ TBAA"}
!15 = !{!"omnipotent char", !14, i64 0}
!16 = !{!"int", !15, i64 0}
!17 = !{!"__libc_errno", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"branch_weights", i32 1, i32 1048575}
!20 = !{!"any pointer", !15, i64 0}
!21 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0}
!22 = !{!"_ZTSN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEE", !21, i64 0}
!23 = !{!"p1 _ZTSN5folly3f146detail8F14ChunkIjEE", !20, i64 0}
!24 = !{!"long", !15, i64 0}
!25 = !{!"_ZTSN5folly3f146detail23PackedSizeAndChunkShiftE", !24, i64 0}
!26 = !{!"_ZTSN5folly3f146detail31SizeAndChunkShiftAndPackedBeginINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEELb0EEE", !25, i64 0}
!27 = !{!"_ZTSN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEEE", !22, i64 0, !23, i64 8, !26, i64 16}
!28 = !{!27, !23, i64 8}
!29 = !{!"p1 _ZTSN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEE", !20, i64 0}
!30 = !{!"bool", !15, i64 0}
!31 = !{!"_ZTSSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE", !29, i64 0, !30, i64 8}
!32 = !{!31, !29, i64 0}
!33 = !{!31, !30, i64 8}
!34 = !{!16, !16, i64 0}
!35 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!36 = !{!"branch_weights", i32 2146410443, i32 1073205}
!37 = !{!25, !24, i64 0}
!38 = !{!22, !21, i64 0}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"_ZTSSt5arrayIhLm14EE", !15, i64 0}
!41 = !{!"_ZTSN5folly3f146detail8F14ChunkIjEE", !40, i64 0, !15, i64 14, !15, i64 15}
!42 = !{!41, !15, i64 14}
!43 = !{!15, !15, i64 0}
!44 = !{!41, !15, i64 15}
!45 = !{!"p1 omnipotent char", !20, i64 0}
!46 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !45, i64 0}
!47 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !46, i64 0, !24, i64 8, !15, i64 16}
!48 = !{!47, !45, i64 0}
!49 = !{!46, !45, i64 0}
!50 = !{!47, !24, i64 8}
!51 = !{i8 0, i8 2}
!52 = !{}
!53 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!54 = !{!24, !24, i64 0}
!55 = !{!23, !23, i64 0}
!56 = !{!45, !45, i64 0}
!57 = !{!21, !21, i64 0}
!58 = !{!30, !30, i64 0}
!59 = !{!"p1 bool", !20, i64 0}
!60 = !{!"p1 long", !20, i64 0}
!61 = !{!"any p2 pointer", !20, i64 0}
!62 = !{!"p2 _ZTSN5folly3f146detail8F14ChunkIjEE", !61, i64 0}
!63 = !{!"p2 omnipotent char", !61, i64 0}
!64 = !{!"p1 _ZTSN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEEE", !20, i64 0}
!65 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !61, i64 0}
!66 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!67 = !{!"branch_weights", i32 1999, i32 1}
!68 = !{!"branch_weights", i32 1, i32 0}
!69 = !{!"vtable pointer", !14, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{i64 13478960}
!72 = !{!"_ZTSN5folly16SharedMutexToken5StateE", !15, i64 0}
!73 = !{!"short", !15, i64 0}
!74 = !{!"_ZTSN5folly16SharedMutexTokenE", !72, i64 0, !73, i64 2}
!75 = !{!"_ZTSSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE", !29, i64 0, !74, i64 8}
!76 = !{!75, !29, i64 0}
!77 = !{!74, !72, i64 0}
!78 = !{!74, !73, i64 2}
!79 = !{!"branch_weights", i32 4001, i32 1}
!80 = !{!20, !20, i64 0}
!81 = !{!"_ZTSSt5arrayIhLm15EE", !15, i64 0}
!82 = !{!"_ZTSN5folly3f146detail17F14EmptyTagVectorE", !81, i64 0, !15, i64 15}
!83 = !{!82, !15, i64 15}
!84 = distinct !{!84, i1 true, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv"}
!85 = distinct !{!85, !84, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv: argument 0"}
!86 = distinct !{!86, !39}
!87 = distinct !{!87, !39}
!88 = distinct !{!88, i1 true, !"_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE6insertEOS9_"}
!89 = distinct !{!89, !88, !"_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE6insertEOS9_: argument 0"}
!90 = distinct !{!90, i1 true, !"_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE7emplaceIJS9_EEESt4pairINS1_23VectorContainerIteratorIPKS9_EEbEDpOT_"}
!91 = distinct !{!91, !90, !"_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE7emplaceIJS9_EEESt4pairINS1_23VectorContainerIteratorIPKS9_EEbEDpOT_: argument 0"}
!92 = distinct !{!92, !39}
!93 = !{!85}
!94 = !{!91, !89}
!95 = distinct !{!95, !39}
!96 = distinct !{!96, !39}
!97 = distinct !{!97, !39}
!98 = !{!"p1 int", !20, i64 0}
!99 = !{!98, !98, i64 0}
!100 = !{!"_ZTSN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIjEEEE", !98, i64 0, !24, i64 8}
!101 = !{!"_ZTSSt4pairIN5folly3f146detail11F14ItemIterIPNS2_8F14ChunkIjEEEEbE", !100, i64 0, !30, i64 16}
!102 = !{!101, !30, i64 16}
!103 = distinct !{!103, !39}
!104 = distinct !{!104, !110}
!105 = distinct !{!105, i1 true, !"_ZN5folly6detailplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_EENS0_14ScopeGuardImplINSt5decayIT_E4typeELb1EEENS0_16ScopeGuardOnExitEOSJ_"}
!106 = distinct !{!106, !105, !"_ZN5folly6detailplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_EENS0_14ScopeGuardImplINSt5decayIT_E4typeELb1EEENS0_16ScopeGuardOnExitEOSJ_: argument 0"}
!107 = distinct !{!107, !39}
!108 = distinct !{!108, !39}
!109 = distinct !{!109, !39}
!110 = !{!"llvm.loop.unroll.disable"}
!111 = !{!"_ZTSN5folly6detail18ScopeGuardImplBaseE", !30, i64 0}
!112 = !{!111, !30, i64 0}
!113 = !{!106}
!114 = !{!59, !59, i64 0}
!115 = !{!60, !60, i64 0}
!116 = !{!62, !62, i64 0}
!117 = !{!63, !63, i64 0}
!118 = !{!64, !64, i64 0}
!119 = !{!65, !65, i64 0}
!120 = !{!"_ZTSZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_", !59, i64 0, !60, i64 8, !62, i64 16, !60, i64 24, !63, i64 32, !60, i64 40, !64, i64 48, !60, i64 56, !65, i64 64, !60, i64 72, !60, i64 80}
!121 = !{!120, !64, i64 48}
!122 = !{!120, !59, i64 0}
!123 = !{!120, !60, i64 8}
!124 = !{i64 8}
!125 = !{!120, !62, i64 16}
!126 = !{!120, !60, i64 24}
!127 = !{!120, !63, i64 32}
!128 = !{!120, !60, i64 40}
!129 = !{!120, !60, i64 56}
!130 = !{!120, !60, i64 80}
!131 = !{!120, !60, i64 72}
!132 = !{!120, !65, i64 64}
!133 = distinct !{!133, !39}
!134 = distinct !{!134, !39}
!135 = distinct !{!135, !39}
!136 = distinct !{!136, !39}
!137 = distinct !{!137, !39}
!138 = distinct !{!138, i1 true, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5rlockEv"}
!139 = distinct !{!139, !138, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5rlockEv: argument 0"}
!140 = !{!139}
!141 = distinct !{null}
!142 = distinct !{!142, !39}
!143 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !24, i64 0, !45, i64 8}
!144 = !{!143, !45, i64 8}
!145 = !{!143, !24, i64 0}
!146 = distinct !{null}
!147 = distinct !{!147, !39}
!148 = distinct !{!148, !39}
!149 = distinct !{!149, !39}
!150 = distinct !{!150, !39}
!151 = distinct !{!151, i1 true, !"_ZZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeBuildEmmRKSB_ENKUlRKS8_E_clB5cxx11ESF_"}
!152 = distinct !{!152, !151, !"_ZZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeBuildEmmRKSB_ENKUlRKS8_E_clB5cxx11ESF_: argument 0"}
!153 = distinct !{!153, !39}
!154 = distinct !{!154, !39}
!155 = !{!152}
end_hunk_1
