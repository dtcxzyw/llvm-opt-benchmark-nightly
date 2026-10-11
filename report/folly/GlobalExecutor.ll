Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/GlobalExecutor?download=true
inline.NumInlined: 3677
inline.NumDeleted: 1851
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZSt17__throw_bad_allocv

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #25

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_9WaitNeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE21wakeRegisteredWaitersERjj.exit, %bb.a
  %.025 = phi i1 [ undef, %bb.a ], [ %.2, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE21wakeRegisteredWaitersERjj.exit ]
  %i.a = load i32, ptr %1, align 4, !tbaa !604    ; 2 uses
  %i.b = and i32 %i.a, %2
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_9WaitNeverEEEbRjjjRT_.exit.thread, label %bb.c, !prof !734

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef i64 @llvm.x86.rdtsc()
  %i.d = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.d, ptr %1, align 4, !tbaa !604
  %i.e = and i32 %i.d, %2
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_9WaitNeverEEEbRjjjRT_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %i.g = tail call noundef i64 @llvm.x86.rdtsc()
  %i.h = sub i64 %i.g, %i.c
  %i.i = icmp ult i64 %i.h, 4000
  br i1 %i.i, label %bb.d, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_9WaitNeverEEEbRjjjRT_.exit, !prof !734

bb.d:                                             ; preds = %.lr.ph.i
  tail call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !1692
  %i.j = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.j, ptr %1, align 4, !tbaa !604
  %i.k = and i32 %i.j, %2
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_9WaitNeverEEEbRjjjRT_.exit.thread, label %.lr.ph.i, !llvm.loop !9475

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_9WaitNeverEEEbRjjjRT_.exit.thread: ; preds = %bb.d, %bb.c, %bb.b
  %i.m = phi i32 [ %i.a, %bb.b ], [ %i.d, %bb.c ], [ %i.j, %bb.d ] ; 3 uses
  %i.n = lshr i32 %i.m, 1
  %i.o = and i32 %i.n, 256
  %i.p = and i32 %i.m, -673
  %i.q = or i32 %i.p, %i.o
  %i.r = or disjoint i32 %i.q, 128                ; 3 uses
  %i.s = cmpxchg ptr %0, i32 %i.m, i32 %i.r seq_cst seq_cst, align 4 ; 2 uses
  %i.t = extractvalue { i32, i1 } %i.s, 1         ; 2 uses
  br i1 %i.t, label %bb.e, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit: ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_9WaitNeverEEEbRjjjRT_.exit.thread
  %i.u = extractvalue { i32, i1 } %i.s, 0
  store i32 %i.u, ptr %1, align 4
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE21wakeRegisteredWaitersERjj.exit

bb.e:                                             ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_9WaitNeverEEEbRjjjRT_.exit.thread
  %i.v = load i32, ptr %1, align 4, !tbaa !604
  store i32 %i.r, ptr %1, align 4, !tbaa !604
  %i.w = and i32 %i.v, 512
  %.not27 = icmp eq i32 %i.w, 0
  br i1 %.not27, label %bb.g, label %bb.f, !prof !734

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_9WaitNeverEEEvRjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %.pr = load i32, ptr %1, align 4, !tbaa !604
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i32 [ %.pr, %bb.f ], [ %i.r, %bb.e ]
  %.not28 = icmp ult i32 %i.x, 2048
  br i1 %.not28, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_9WaitNeverEEEbRjjjRT_.exit, label %bb.h, !prof !734

bb.h:                                             ; preds = %bb.g
  %i.y = tail call noundef i64 @llvm.x86.rdtsc()
  %i.z = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.z, ptr %1, align 4, !tbaa !604
  %i.aa = icmp ult i32 %i.z, 2048
  br i1 %i.aa, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_9WaitNeverEEEbRjjjRT_.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.h, %bb.i
  %i.ab = tail call noundef i64 @llvm.x86.rdtsc()
  %i.ac = sub i64 %i.ab, %i.y
  %i.ad = icmp ult i64 %i.ac, 4000
  br i1 %i.ad, label %bb.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_9WaitNeverEEEbRjjjRT_.exit31, !prof !734

bb.i:                                             ; preds = %.lr.ph.i29
  tail call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !1692
  %i.ae = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.ae, ptr %1, align 4, !tbaa !604
  %i.af = icmp ult i32 %i.ae, 2048
  br i1 %i.af, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE21wakeRegisteredWaitersERjj.exit, label %.lr.ph.i29, !llvm.loop !9475

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_9WaitNeverEEEbRjjjRT_.exit31: ; preds = %.lr.ph.i29
  %i.ag = atomicrmw and ptr %0, i32 -465 seq_cst, align 4 ; 2 uses
  %i.ah = and i32 %i.ag, -465
  store i32 %i.ah, ptr %1, align 4, !tbaa !604
  %i.ai = and i32 %i.ag, 15
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE21wakeRegisteredWaitersERjj.exit, label %bb.j, !prof !734

bb.j:                                             ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_9WaitNeverEEEbRjjjRT_.exit31
  tail call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 15)
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE21wakeRegisteredWaitersERjj.exit

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE21wakeRegisteredWaitersERjj.exit: ; preds = %bb.i, %bb.j, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_9WaitNeverEEEbRjjjRT_.exit31, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit
  %.2 = phi i1 [ false, %bb.j ], [ false, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_9WaitNeverEEEbRjjjRT_.exit31 ], [ %.025, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit ], [ true, %bb.i ] ; 2 uses
  br i1 %i.t, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_9WaitNeverEEEbRjjjRT_.exit, label %bb.b

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_9WaitNeverEEEbRjjjRT_.exit: ; preds = %bb.h, %bb.g, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE21wakeRegisteredWaitersERjj.exit, %.lr.ph.i
  %.3 = phi i1 [ false, %.lr.ph.i ], [ true, %bb.g ], [ true, %bb.h ], [ %.2, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE21wakeRegisteredWaitersERjj.exit ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_9WaitNeverEEEvRjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load atomic i32, ptr @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit, !prof !538

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache) #42
  br label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit

_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit: ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  %i.d = tail call noundef i64 @llvm.x86.rdtsc()
  %i.e = ptrtoint ptr %0 to i64
  br label %.outer

.outer:                                           ; preds = %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit, %bb.d
  %.1.ph = phi i32 [ 0, %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit ], [ %i.l, %bb.d ] ; 3 uses
  %i.f = shl i32 %.1.ph, 2
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.g
  br label %bb.c

bb.c:                                             ; preds = %.outer, %bb.f
  %i.i = load atomic i64, ptr %i.h acquire, align 32
  %i.j = and i64 %i.i, -2
  %i.k = icmp eq i64 %i.j, %i.e
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i32 %.1.ph, 1                        ; 2 uses
  %i.m = icmp eq i32 %i.l, %i.c
  br i1 %i.m, label %.loopexit, label %.outer, !llvm.loop !9476

bb.e:                                             ; preds = %bb.c
  %i.n = tail call noundef i64 @llvm.x86.rdtsc()
  %i.o = sub i64 %i.n, %i.d
  %i.p = icmp ult i64 %i.o, 4000
  br i1 %i.p, label %bb.f, label %.thread, !prof !734

.thread:                                          ; preds = %bb.e
  tail call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_9WaitNeverEEEvRjRT_j(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %.1.ph)
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !1692
  br label %bb.c, !llvm.loop !9477

.loopexit:                                        ; preds = %bb.d, %.thread
  ret void
}

; Function Attrs: nounwind
declare i64 @llvm.x86.rdtsc() #26

declare noundef i64 @_ZN5folly19shared_mutex_detail45getCurrentThreadInvoluntaryContextSwitchCountEv() local_unnamed_addr #0

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_9WaitNeverEEEvRjRT_j(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit, !prof !538

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache) #42
  br label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit

_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit: ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.b, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = tail call noundef i32 @sched_yield() #26 ; 0 uses
  br label %bb.c

.preheader:                                       ; preds = %bb.c
  %i.f = icmp ult i32 %.235, %i.c
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.g = zext i32 %.235 to i64                    ; 2 uses
  %i.h = add i32 %3, %indvar
  %i.i = sub i32 %i.c, %i.h                       ; 3 uses
  %i.j = xor i32 %3, -1
  %i.k = add i32 %i.c, %i.j
  %i.l = icmp eq i32 %i.k, %indvar
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.i, -2
  br label %bb.e

bb.c:                                             ; preds = %bb.d, %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit
  %indvar = phi i32 [ %indvar.next, %bb.d ], [ 0, %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit ] ; 3 uses
  %.235 = phi i32 [ %i.s, %bb.d ], [ %3, %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit ] ; 4 uses
  %i.m = shl i32 %.235, 2
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.n
  %i.p = load atomic i64, ptr %i.o acquire, align 32
  %i.q = and i64 %i.p, -2
  %i.r = icmp eq i64 %i.q, %i.d
  br i1 %i.r, label %.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = add i32 %.235, 1                         ; 2 uses
  %i.t = icmp eq i32 %i.s, %i.c
  %indvar.next = add i32 %indvar, 1
  br i1 %i.t, label %.critedge, label %bb.c, !llvm.loop !9478

bb.e:                                             ; preds = %bb.i, %.lr.ph.new
  %indvars.iv = phi i64 [ %i.g, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.i ] ; 3 uses
  %.049 = phi i32 [ 0, %.lr.ph.new ], [ %.1.1, %bb.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.i ]
  %i.u = shl i64 %indvars.iv, 2
  %i.v = and i64 %i.u, 4294967292
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.v ; 2 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 32 ; 2 uses
  %i.y = and i64 %i.x, -2
  %i.z = icmp eq i64 %i.y, %i.d
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = cmpxchg ptr %i.w, i64 %i.x, i64 0 seq_cst seq_cst, align 8
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  %i.ac = zext i1 %i.ab to i32
  %..0 = add i32 %.049, %i.ac
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi i32 [ %.049, %bb.e ], [ %..0, %bb.f ] ; 2 uses
  %indvars.iv.next = shl i64 %indvars.iv, 2
  %i.ad = add i64 %indvars.iv.next, 4
  %i.ae = and i64 %i.ad, 4294967292
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.ae ; 2 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 32 ; 2 uses
  %i.ah = and i64 %i.ag, -2
  %i.ai = icmp eq i64 %i.ah, %i.d
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = cmpxchg ptr %i.af, i64 %i.ag, i64 0 seq_cst seq_cst, align 8
  %i.ak = extractvalue { i64, i1 } %i.aj, 1
  %i.al = zext i1 %i.ak to i32
  %..0.1 = add i32 %.1, %i.al
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.1 = phi i32 [ %.1, %bb.g ], [ %..0.1, %bb.h ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.e, !llvm.loop !9479

._crit_edge.unr-lcssa:                            ; preds = %bb.i
  %lcmp.mod.not = trunc i32 %i.i to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ %i.g, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.049.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod64 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod64)
  %i.am = shl i64 %indvars.iv.epil.init, 2
  %i.an = and i64 %i.am, 4294967292
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.an ; 2 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 32 ; 2 uses
  %i.aq = and i64 %i.ap, -2
  %i.ar = icmp eq i64 %i.aq, %i.d
  br i1 %i.ar, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %.epil.preheader
  %i.as = cmpxchg ptr %i.ao, i64 %i.ap, i64 0 seq_cst seq_cst, align 8
  %i.at = extractvalue { i64, i1 } %i.as, 1
  %i.au = zext i1 %i.at to i32
  %..0.epil = add i32 %.049.epil.init, %i.au
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.j, %._crit_edge.unr-lcssa
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge.unr-lcssa ], [ %.049.epil.init, %.epil.preheader ], [ %..0.epil, %bb.j ] ; 2 uses
  %.not40 = icmp eq i32 %.1.lcssa, 0
  br i1 %.not40, label %.critedge, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.av = shl i32 %.1.lcssa, 11                   ; 2 uses
  %i.aw = atomicrmw add ptr %0, i32 %i.av seq_cst, align 4
  %i.ax = add i32 %i.aw, %i.av
  store i32 %i.ax, ptr %1, align 4, !tbaa !604
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.preheader, %._crit_edge, %bb.k
  ret void
}

; Function Attrs: cold
declare noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #23

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #3 align 2

declare noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.pre = load i32, ptr %1, align 4, !tbaa !604
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %i.a = phi i32 [ %i.p, %bb.i ], [ %.pre, %bb.a ] ; 2 uses
  %i.b = and i32 %i.a, %2
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.c, !prof !734

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, i32 noundef 12, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 0 uses
  %.pre35 = load i32, ptr %1, align 4, !tbaa !604
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = phi i32 [ %.pre35, %bb.c ], [ %i.a, %bb.b ] ; 3 uses
  %i.e = lshr i32 %i.d, 1
  %i.f = and i32 %i.e, 256
  %i.g = and i32 %i.d, -673
  %i.h = or i32 %i.g, %i.f
  %i.i = or disjoint i32 %i.h, 128                ; 3 uses
  %i.j = cmpxchg ptr %0, i32 %i.d, i32 %i.i seq_cst seq_cst, align 4 ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %1, align 4, !tbaa !604
  store i32 %i.i, ptr %1, align 4, !tbaa !604
  %i.m = and i32 %i.l, 512
  %.not27 = icmp eq i32 %i.m, 0
  br i1 %.not27, label %bb.g, label %bb.f, !prof !734

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %.pr = load i32, ptr %1, align 4, !tbaa !604
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = phi i32 [ %.pr, %bb.f ], [ %i.i, %bb.e ]
  %.not28 = icmp ult i32 %i.n, 2048
  br i1 %.not28, label %bb.j, label %bb.h, !prof !734

bb.h:                                             ; preds = %bb.g
  %i.o = tail call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef -2048, i32 noundef 16, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.p = extractvalue { i32, i1 } %i.j, 0         ; 2 uses
  store i32 %i.p, ptr %1, align 4
  br label %bb.b

bb.j:                                             ; preds = %bb.h, %bb.g
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @llvm.x86.rdtsc()
  %i.b = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.b, ptr %1, align 4, !tbaa !604
  %i.c = and i32 %i.b, %2
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.e = tail call noundef i64 @llvm.x86.rdtsc()
  %i.f = sub i64 %i.e, %i.a
  %i.g = icmp ult i64 %i.f, 4000
  br i1 %i.g, label %bb.b, label %.thread, !prof !734

.thread:                                          ; preds = %.lr.ph
  %i.h = tail call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20yieldWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  tail call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !1692
  %i.i = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.i, ptr %1, align 4, !tbaa !604
  %i.j = and i32 %i.i, %2
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.loopexit, label %.lr.ph, !llvm.loop !46

.loopexit:                                        ; preds = %bb.b, %bb.a, %.thread
  %.2 = phi i1 [ %i.h, %.thread ], [ true, %bb.a ], [ true, %bb.b ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load atomic i32, ptr @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit, !prof !538

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache) #42
  br label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit

_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit: ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  %i.d = tail call noundef i64 @llvm.x86.rdtsc()
  %i.e = ptrtoint ptr %0 to i64
  br label %.outer

.outer:                                           ; preds = %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit, %bb.d
  %.1.ph = phi i32 [ 0, %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit ], [ %i.l, %bb.d ] ; 3 uses
  %i.f = shl i32 %.1.ph, 2
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.g
  br label %bb.c

bb.c:                                             ; preds = %.outer, %bb.f
  %i.i = load atomic i64, ptr %i.h acquire, align 32
  %i.j = and i64 %i.i, -2
  %i.k = icmp eq i64 %i.j, %i.e
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i32 %.1.ph, 1                        ; 2 uses
  %i.m = icmp eq i32 %i.l, %i.c
  br i1 %i.m, label %.loopexit, label %.outer, !llvm.loop !9480

bb.e:                                             ; preds = %bb.c
  %i.n = tail call noundef i64 @llvm.x86.rdtsc()
  %i.o = sub i64 %i.n, %i.d
  %i.p = icmp ult i64 %i.o, 4000
  br i1 %i.p, label %bb.f, label %.thread, !prof !734

.thread:                                          ; preds = %bb.e
  tail call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_j(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %.1.ph)
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !1692
  br label %bb.c, !llvm.loop !9481

.loopexit:                                        ; preds = %bb.d, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20yieldWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @sched_yield() #26 ; 0 uses
  %i.b = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.b, ptr %1, align 4, !tbaa !604
  %i.c = and i32 %i.b, %2
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @sched_yield() #26 ; 0 uses
  %i.f = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.f, ptr %1, align 4, !tbaa !604
  %i.g = and i32 %i.f, %2
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_ZN5folly19shared_mutex_detail45getCurrentThreadInvoluntaryContextSwitchCountEv() ; 0 uses
  %i.j = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.j, ptr %1, align 4, !tbaa !604
  %i.k = and i32 %i.j, %2
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load atomic i32, ptr %0 acquire, align 4 ; 4 uses
  store i32 %i.m, ptr %1, align 4, !tbaa !604
  %i.n = and i32 %i.m, %2
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.p = icmp eq i32 %3, 12
  br i1 %i.p, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.g
  %i.q = phi i32 [ %i.y, %bb.g ], [ %i.m, %.lr.ph.i ] ; 6 uses
  %i.r = and i32 %i.q, 4
  %.not.us.i = icmp eq i32 %i.r, 0
  br i1 %.not.us.i, label %.thread.us.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us.i
  %i.s = or i32 %i.q, 8                           ; 2 uses
  %.not22.us.i = icmp eq i32 %i.s, %i.q
  br i1 %.not22.us.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.us.i, label %bb.f

.thread.us.i:                                     ; preds = %.lr.ph.split.us.i
  %i.t = or disjoint i32 %i.q, 4
  br label %bb.f

bb.f:                                             ; preds = %.thread.us.i, %bb.e
  %.01925.us.i = phi i32 [ %i.t, %.thread.us.i ], [ %i.s, %bb.e ] ; 2 uses
  %i.u = cmpxchg ptr %0, i32 %i.q, i32 %.01925.us.i seq_cst seq_cst, align 4 ; 2 uses
  %i.v = extractvalue { i32, i1 } %i.u, 1
  br i1 %i.v, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.us.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.us.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.us.i: ; preds = %bb.f
  %i.w = extractvalue { i32, i1 } %i.u, 0
  store i32 %i.w, ptr %1, align 4
  br label %bb.g, !llvm.loop !9482

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.us.i: ; preds = %bb.f, %bb.e
  %.01926.us.i = phi i32 [ %i.q, %bb.e ], [ %.01925.us.i, %bb.f ]
  %i.x = tail call noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %.01926.us.i, ptr noundef null, ptr noundef null, i32 noundef 12) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.us.i, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.us.i
  %i.y = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.y, ptr %1, align 4, !tbaa !604
  %i.z = and i32 %i.y, %2
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, label %.lr.ph.split.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.i
  %i.ab = phi i32 [ %i.ah, %bb.i ], [ %i.m, %.lr.ph.i ] ; 3 uses
  %i.ac = or i32 %i.ab, %3                        ; 3 uses
  %.not22.i = icmp eq i32 %i.ac, %i.ab
  br i1 %.not22.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.i
  %i.ad = cmpxchg ptr %0, i32 %i.ab, i32 %i.ac seq_cst seq_cst, align 4 ; 2 uses
  %i.ae = extractvalue { i32, i1 } %i.ad, 1
  br i1 %i.ae, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i: ; preds = %bb.h
  %i.af = extractvalue { i32, i1 } %i.ad, 0
  store i32 %i.af, ptr %1, align 4
  br label %bb.i, !llvm.loop !9482

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i: ; preds = %bb.h, %.lr.ph.split.i
  %i.ag = tail call noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %i.ac, ptr noundef null, ptr noundef null, i32 noundef %3) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i
  %i.ah = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.ah, ptr %1, align 4, !tbaa !604
  %i.ai = and i32 %i.ah, %2
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, label %.lr.ph.split.i

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit: ; preds = %bb.i, %bb.g, %bb.a, %bb.b, %bb.c, %bb.d
  ret i1 true
}

declare noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_j(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !538

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache) #42
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.b, %bb.b ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 6 uses
  %i.e = tail call noundef i32 @sched_yield() #26 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.235 = phi i32 [ %3, %bb.c ], [ %i.l, %bb.e ]  ; 3 uses
  %i.f = shl i32 %.235, 2
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.g
  %i.i = load atomic i64, ptr %i.h acquire, align 32
  %i.j = and i64 %i.i, -2
  %i.k = icmp eq i64 %i.j, %i.d
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = add i32 %.235, 1                         ; 2 uses
  %i.m = icmp eq i32 %i.l, %i.c
  br i1 %i.m, label %.critedge, label %bb.d, !llvm.loop !9483

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noundef i32 @sched_yield() #26 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.235.1 = phi i32 [ %.235, %bb.f ], [ %i.u, %bb.h ] ; 3 uses
  %i.o = shl i32 %.235.1, 2
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.p
  %i.r = load atomic i64, ptr %i.q acquire, align 32
  %i.s = and i64 %i.r, -2
  %i.t = icmp eq i64 %i.s, %i.d
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = add i32 %.235.1, 1                       ; 2 uses
  %i.v = icmp eq i32 %i.u, %i.c
  br i1 %i.v, label %.critedge, label %bb.g, !llvm.loop !9483

bb.i:                                             ; preds = %bb.g
  %i.w = tail call noundef i64 @_ZN5folly19shared_mutex_detail45getCurrentThreadInvoluntaryContextSwitchCountEv() ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.235.2 = phi i32 [ %.235.1, %bb.i ], [ %i.ad, %bb.k ] ; 4 uses
  %i.x = shl i32 %.235.2, 2
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.y
  %i.aa = load atomic i64, ptr %i.z acquire, align 32
  %i.ab = and i64 %i.aa, -2
  %i.ac = icmp eq i64 %i.ab, %i.d
  br i1 %i.ac, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = add i32 %.235.2, 1                      ; 2 uses
  %i.ae = icmp eq i32 %i.ad, %i.c
  br i1 %i.ae, label %.critedge, label %bb.j, !llvm.loop !9483

bb.l:                                             ; preds = %bb.j
  %i.af = icmp ult i32 %.235.2, %i.c
  br i1 %i.af, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.l
  %i.ag = zext i32 %.235.2 to i64                 ; 4 uses
  %wide.trip.count = zext i32 %i.c to i64         ; 2 uses
  %i.ah = sub nsw i64 %wide.trip.count, %i.ag     ; 3 uses
  %i.ai = add nsw i64 %wide.trip.count, -1
  %i.aj = icmp eq i64 %i.ai, %i.ag
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ah, -2
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %.lr.ph.new
  %indvars.iv = phi i64 [ %i.ag, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.q ] ; 3 uses
  %.052 = phi i32 [ 0, %.lr.ph.new ], [ %.1.1, %bb.q ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.q ]
  %i.ak = shl i64 %indvars.iv, 2
  %i.al = and i64 %i.ak, 4294967292
  %i.am = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.al ; 2 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 32 ; 2 uses
  %i.ao = and i64 %i.an, -2
  %i.ap = icmp eq i64 %i.ao, %i.d
  br i1 %i.ap, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aq = cmpxchg ptr %i.am, i64 %i.an, i64 0 seq_cst seq_cst, align 8
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  %i.as = zext i1 %i.ar to i32
  %..0 = add i32 %.052, %i.as
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1 = phi i32 [ %.052, %bb.m ], [ %..0, %bb.n ] ; 2 uses
  %indvars.iv.next = shl i64 %indvars.iv, 2
  %i.at = add i64 %indvars.iv.next, 4
  %i.au = and i64 %i.at, 4294967292
  %i.av = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.au ; 2 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 32 ; 2 uses
  %i.ax = and i64 %i.aw, -2
  %i.ay = icmp eq i64 %i.ax, %i.d
  br i1 %i.ay, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.az = cmpxchg ptr %i.av, i64 %i.aw, i64 0 seq_cst seq_cst, align 8
  %i.ba = extractvalue { i64, i1 } %i.az, 1
  %i.bb = zext i1 %i.ba to i32
  %..0.1 = add i32 %.1, %i.bb
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1.1 = phi i32 [ %.1, %bb.o ], [ %..0.1, %bb.p ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.m, !llvm.loop !9484

._crit_edge.unr-lcssa:                            ; preds = %bb.q
  %lcmp.mod.not = trunc i64 %i.ah to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ %i.ag, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.052.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod92 = trunc i64 %i.ah to i1
  tail call void @llvm.assume(i1 %lcmp.mod92)
  %i.bc = shl i64 %indvars.iv.epil.init, 2
  %i.bd = and i64 %i.bc, 4294967292
  %i.be = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.bd ; 2 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 32 ; 2 uses
  %i.bg = and i64 %i.bf, -2
  %i.bh = icmp eq i64 %i.bg, %i.d
  br i1 %i.bh, label %bb.r, label %._crit_edge

bb.r:                                             ; preds = %.epil.preheader
  %i.bi = cmpxchg ptr %i.be, i64 %i.bf, i64 0 seq_cst seq_cst, align 8
  %i.bj = extractvalue { i64, i1 } %i.bi, 1
  %i.bk = zext i1 %i.bj to i32
  %..0.epil = add i32 %.052.epil.init, %i.bk
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.r, %._crit_edge.unr-lcssa
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge.unr-lcssa ], [ %.052.epil.init, %.epil.preheader ], [ %..0.epil, %bb.r ] ; 2 uses
  %.not40 = icmp eq i32 %.1.lcssa, 0
  br i1 %.not40, label %.critedge, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.bl = shl i32 %.1.lcssa, 11                   ; 2 uses
  %i.bm = atomicrmw add ptr %0, i32 %i.bl seq_cst, align 4
  %i.bn = add i32 %i.bm, %i.bl
  store i32 %i.bn, ptr %1, align 4, !tbaa !604
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.h, %bb.k, %bb.l, %._crit_edge, %bb.s
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #24

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail8function5call_IPFbvELb1ELb0EbJEEET2_DpT3_RNS1_4DataE(ptr noundef nonnull align 16 dereferenceable(48) %0) #3 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !535
  %i.b = tail call noundef zeroext i1 %i.a()
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_(i32 noundef %0, ptr noundef %1, ptr noundef %2) #9 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.c [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @abort() #39
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.a
  ret i64 0
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt17bad_function_callJEEEvDpT0_() local_unnamed_addr #20 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_function_call", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %0, align 8, !tbaa !381
  invoke void @_ZN5folly15throw_exceptionISt17bad_function_callEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #21
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt17bad_function_callD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt17bad_function_callEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #20 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %i.a, align 8, !tbaa !381
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt17bad_function_call, ptr nonnull @_ZNSt17bad_function_callD1Ev) #38
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt17bad_function_callD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #27

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE(ptr noundef nonnull align 16 dereferenceable(48) %0) #3 comdat align 2 {
bb.a:
  tail call void @_ZN5folly6detail16throw_exception_ISt17bad_function_callJEEEvDpT0_() #21
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail8function5call_IPFvvELb1ELb0EvJEEET2_DpT3_RNS1_4DataE(ptr noundef nonnull align 16 dereferenceable(48) %0) #3 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !535
  tail call void %i.a()
  ret void
}

declare noundef i64 @_ZNK5folly18threadlocal_detail14ThreadEntrySet11getIndexForEPNS0_11ThreadEntryE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #0

declare void @_ZN5folly18threadlocal_detail14ThreadEntrySet5clearEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN5folly18threadlocal_detail14ThreadEntrySet6insertERKNS1_7ElementE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !805, !range !703, !noundef !484
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !804    ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.f = atomicrmw and ptr %i.e, i32 -401 seq_cst, align 4 ; 2 uses
  %i.g = and i32 %i.f, -401
  store i32 %i.g, ptr %i.a, align 4, !tbaa !604
  %i.h = and i32 %i.f, 15
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i, label %bb.d, !prof !734

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i unwind label %bb.e

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #39
  unreachable

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !805, !range !703, !noundef !484
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !804    ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.f = atomicrmw and ptr %i.e, i32 -401 seq_cst, align 4 ; 2 uses
  %i.g = and i32 %i.f, -401
  store i32 %i.g, ptr %i.a, align 4, !tbaa !604
  %i.h = and i32 %i.f, 15
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i, label %bb.d, !prof !734

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i unwind label %bb.e

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit: ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i, %bb.b, %bb.a
  ret void

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #39
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEE9del_arrayEPNSB_5arrayE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !728  ; 5 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !809    ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !728
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]    ; 5 uses
  %i.h = icmp ugt i64 %i.c, %i.g
  br i1 %i.h, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.01822 = phi i64 [ %i.k, %bb.d ], [ %i.c, %bb.c ] ; 3 uses
  %i.i = getelementptr [8 x i8], ptr %i.b, i64 %.01822
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !801
  %.not20 = icmp eq ptr %i.j, null
  br i1 %.not20, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.k = add i64 %.01822, -1                      ; 2 uses
  %i.l = icmp ugt i64 %i.k, %i.g
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !9485

.critedge:                                        ; preds = %.lr.ph, %bb.c
  %.018.lcssa = phi i64 [ %i.c, %bb.c ], [ %.01822, %.lr.ph ] ; 3 uses
  %i.m = sub i64 %.018.lcssa, %i.g
  %.not27 = icmp eq i64 %.018.lcssa, %i.g
  br i1 %.not27, label %._crit_edge, label %.lr.ph26

.lr.ph26:                                         ; preds = %.critedge
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = getelementptr [8 x i8], ptr %i.n, i64 %.018.lcssa
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %_ZN5folly12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEED2Ev.exit
  %.pre = load i64, ptr %i.b, align 8, !tbaa !728
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %._crit_edge.loopexit, %.critedge
  %i.p = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.c, %.critedge ], [ %i.c, %bb.d ] ; 2 uses
  %i.q = shl i64 %i.p, 3
  %i.r = add i64 %i.q, 16                         ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.s, i64 0, i64 8
  %i.u = add i64 %i.t, %i.r
  %i.v = and i64 %i.u, -16
  %i.w = sub i64 %i.p, %i.g
  %i.x = mul i64 %i.w, 56                         ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  %i.z = select i1 %i.y, i64 0, i64 8
  %i.aa = add i64 %i.z, %i.x
  %i.ab = and i64 %i.aa, -16
  %i.ac = add i64 %i.ab, %i.v
  call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %1, i64 noundef %i.ac, i64 noundef 16) #26
  ret void

bb.e:                                             ; preds = %.lr.ph26, %_ZN5folly12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEED2Ev.exit
  %.025 = phi i64 [ 0, %.lr.ph26 ], [ %i.bi, %_ZN5folly12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEED2Ev.exit ] ; 2 uses
  %i.ad = xor i64 %.025, -1
  %i.ae = getelementptr [8 x i8], ptr %i.o, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !801 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ah = load atomic i32, ptr %i.ag monotonic, align 4 ; 2 uses
  store i32 %i.ah, ptr %i.a, align 4, !tbaa !604
  %.not.i.i = icmp ult i32 %i.ah, 2048
  br i1 %.not.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit.i, label %bb.f, !prof !734

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE30cleanupTokenlessSharedDeferredERj(ptr noundef nonnull align 4 dereferenceable(4) %i.ag, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #39
  unreachable

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1698 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 15
  %i.an = load i8, ptr %i.am, align 1, !tbaa !9489
  %i.ao = icmp eq i8 %i.an, -1
  br i1 %i.ao, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !9490 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 14
  %i.as = icmp ult i64 %i.aq, 256
  br i1 %i.as, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = and i64 %i.aq, 255                      ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store i64 0, ptr %i.au, align 8, !tbaa !728
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !9490
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.av = phi i64 [ %i.aq, %bb.h ], [ %i.at, %bb.i ] ; 2 uses
  %i.aw = load i8, ptr %i.ar, align 1, !tbaa !603
  %i.ax = icmp eq i64 %i.av, 0
  %i.ay = shl i8 %i.aw, 4
  %i.az = zext i8 %i.ay to i64
  %i.ba = add nuw nsw i64 %i.az, 16
  %i.bb = shl i64 256, %i.av
  %.0.i.i.i.i.i.i.i = select i1 %i.ax, i64 %i.ba, i64 %i.bb
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.ak, align 8, !tbaa !1698
  store i64 0, ptr %i.ap, align 8, !tbaa !9490
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %.0.i.i.i.i.i.i.i) #26
  br label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEED2Ev.exit.i.i

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEED2Ev.exit.i.i: ; preds = %bb.j, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit.i
  %i.bc = load ptr, ptr %i.af, align 8, !tbaa !808 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEED2Ev.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !9491
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #40
  br label %_ZN5folly12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEED2Ev.exit

_ZN5folly12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEED2Ev.exit.i.i, %bb.k
  %i.bi = add nuw i64 %.025, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bi, %i.m
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.e, !llvm.loop !9486
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvmSt11align_val_t(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE30cleanupTokenlessSharedDeferredERj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE5resetEPS2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"class.folly::detail::ScopeGuardImpl.154", align 8 ; 7 uses
  %3 = alloca %"class.std::reference_wrapper", align 8 ; 5 uses
  %4 = alloca %"struct.folly::threadlocal_detail::ElementWrapper", align 8 ; 8 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %i.e = alloca ptr, align 8                      ; 3 uses
  %6 = alloca %"class.std::shared_lock", align 8  ; 8 uses
  %7 = alloca %"class.folly::detail::ScopeGuardImpl", align 8 ; 7 uses
  store ptr %1, ptr %i.e, align 8, !tbaa !1700
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9498)
  %i.f = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS_18threadlocal_detail10StaticMetaINS_10TLRefCountEvEEvNS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8, !noalias !9498 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE8instanceEv.exit.i, !prof !538

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS_18threadlocal_detail10StaticMetaINS_10TLRefCountEvEEvNS1_9ArgCreateILb0EEEEERT1_vE3arg), !noalias !9498, !inline_history !24
  br label %_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE8instanceEv.exit.i

_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE8instanceEv.exit.i: ; preds = %bb.b, %bb.a
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.f, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 76 ; 4 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !1702, !alias.scope !9498
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i16 0, ptr %i.j, align 8, !tbaa !648, !alias.scope !9498
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 10 ; 2 uses
  store i16 0, ptr %i.k, align 2, !tbaa !649, !alias.scope !9498
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !9498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26, !noalias !9498
  %i.l = load atomic i32, ptr %i.i monotonic, align 4, !noalias !9498 ; 4 uses
  store i32 %i.l, ptr %i.d, align 4, !tbaa !604, !noalias !9498
  %i.m = and i32 %i.l, -1408
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE8instanceEv.exit.i
  %i.o = or disjoint i32 %i.l, 2048
  %i.p = cmpxchg ptr %i.i, i32 %i.l, i32 %i.o seq_cst seq_cst, align 4, !noalias !9498 ; 2 uses
  %i.q = extractvalue { i32, i1 } %i.p, 1
  br i1 %i.q, label %bb.d, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i: ; preds = %bb.c
  %i.r = extractvalue { i32, i1 } %i.p, 0
  store i32 %i.r, ptr %i.d, align 4, !noalias !9498
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i16 2, ptr %i.j, align 8, !tbaa !648, !alias.scope !9498
  br label %_ZN5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE12getForkGuardEv.exit

bb.e:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i, %_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE8instanceEv.exit.i
  %i.s = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 2 dereferenceable(4) %i.j, ptr noundef nonnull align 1 dereferenceable(1) %5) ; 0 uses
  br label %_ZN5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE12getForkGuardEv.exit

_ZN5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE12getForkGuardEv.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26, !noalias !9498
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !9498
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i8 0, ptr %7, align 8, !tbaa !1704, !alias.scope !9499
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.u = ptrtoint ptr %i.e to i64
  store i64 %i.u, ptr %i.t, align 8, !tbaa !9500, !alias.scope !9499
  %i.v = load atomic i32, ptr %0 acquire, align 4
  %i.w = call noundef nonnull align 8 dereferenceable(16) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE13getLocalCacheEvE8instance) ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !760
  %i.z = zext i32 %i.v to i64
  %.not.i = icmp ugt i64 %i.y, %i.z
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !734

bb.f:                                             ; preds = %_ZN5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE12getForkGuardEv.exit
  invoke void @_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE22getSlowReserveAndCacheEPNS0_14StaticMetaBase7EntryIDERNS3_10LocalCacheE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(16) %i.w)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %_ZN5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE12getForkGuardEv.exit, %bb.f
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !761
  %i.ab = load atomic i32, ptr %0 acquire, align 4
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !1700 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZN5folly18threadlocal_detail14ElementWrapper3setIPNS_10TLRefCount13LocalRefCountEEEvT_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = call noundef i64 @_ZN5folly18threadlocal_detail14ElementWrapper15castForgetAlignEPFvPvNS_18TLPDestructionModeEE(ptr noundef nonnull @_ZZN5folly18threadlocal_detail14ElementWrapper3setIPNS_10TLRefCount13LocalRefCountEEEvT_ENUlPvNS_18TLPDestructionModeEE_8__invokeES7_S8_) #26 ; 2 uses
  %.not5.i.i = trunc i64 %i.ad to i1
  br i1 %.not5.i.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr @_ZZN5folly18threadlocal_detail14ElementWrapper3setIPNS_10TLRefCount13LocalRefCountEEEvT_ENUlPvNS_18TLPDestructionModeEE_8__invokeES7_S8_, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ac, ptr %i.c, align 8, !tbaa !1700
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i8 0, ptr %2, align 8, !tbaa !1704, !alias.scope !9501
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %3, ptr %i.ae, align 8, !tbaa !9502
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !9500
  %i.af = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #37
          to label %_ZN5folly18threadlocal_detail14ElementWrapper3setIPNS_10TLRefCount13LocalRefCountESt17reference_wrapperIFvPvNS_18TLPDestructionModeEEEEEvT_RKT0_.exit.i.i unwind label %bb.j ; 5 uses

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_18threadlocal_detail14ElementWrapper3setIPNS_10TLRefCount13LocalRefCountESt17reference_wrapperIFvPvNS_18TLPDestructionModeEEEEEvT_RKT0_EUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %.body

_ZN5folly18threadlocal_detail14ElementWrapper3setIPNS_10TLRefCount13LocalRefCountESt17reference_wrapperIFvPvNS_18TLPDestructionModeEEEEEvT_RKT0_.exit.i.i: ; preds = %bb.i
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !535
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 0, ptr %i.aj, align 8
  %i.ak = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i to i64
  store i64 %i.ak, ptr %i.af, align 8, !tbaa !535
  store ptr @_ZNSt17_Function_handlerIFvPvN5folly18TLPDestructionModeEEZNS1_18threadlocal_detail14ElementWrapper11makeDeleterIPNS1_10TLRefCount13LocalRefCountESt17reference_wrapperIS3_EEEDaRKT0_EUlS0_S2_E_E9_M_invokeERKSt9_Any_dataOS0_OS2_, ptr %i.ai, align 8, !tbaa !9504
  store ptr @_ZNSt17_Function_handlerIFvPvN5folly18TLPDestructionModeEEZNS1_18threadlocal_detail14ElementWrapper11makeDeleterIPNS1_10TLRefCount13LocalRefCountESt17reference_wrapperIS3_EEEDaRKT0_EUlS0_S2_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation, ptr %i.ah, align 8, !tbaa !606
  %i.al = ptrtoint ptr %i.af to i64
  %i.am = or i64 %i.al, 1
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !9505
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !1700
  store ptr %i.ao, ptr %4, align 8, !tbaa !771
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN5folly18threadlocal_detail14ElementWrapper3setIPNS_10TLRefCount13LocalRefCountEEEvT_.exit.i

bb.k:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ad, ptr %i.ap, align 8, !tbaa !9505
  store ptr %i.ac, ptr %4, align 8, !tbaa !771
  br label %_ZN5folly18threadlocal_detail14ElementWrapper3setIPNS_10TLRefCount13LocalRefCountEEEvT_.exit.i

_ZN5folly18threadlocal_detail14ElementWrapper3setIPNS_10TLRefCount13LocalRefCountEEEvT_.exit.i: ; preds = %bb.k, %_ZN5folly18threadlocal_detail14ElementWrapper3setIPNS_10TLRefCount13LocalRefCountESt17reference_wrapperIFvPvNS_18TLPDestructionModeEEEEEvT_RKT0_.exit.i.i, %bb.g
  invoke void @_ZN5folly18threadlocal_detail11ThreadEntry24resetElementImplAfterSetERKNS0_14ElementWrapperEj(ptr noundef nonnull align 8 dereferenceable(64) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.ab)
          to label %_ZN5folly6detail14ScopeGuardImplIZNS_14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES3_vE5resetEPS4_EUlvE_Lb1EED2Ev.exit unwind label %bb.v

bb.l:                                             ; preds = %bb.f
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5folly6detail14ScopeGuardImplIZNS_14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES3_vE5resetEPS4_EUlvE_Lb1EED2Ev.exit: ; preds = %_ZN5folly18threadlocal_detail14ElementWrapper3setIPNS_10TLRefCount13LocalRefCountEEEvT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.ar = load i16, ptr %i.j, align 8, !tbaa !648 ; 2 uses
  %.not.i7 = icmp eq i16 %i.ar, 0
  br i1 %.not.i7, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN5folly6detail14ScopeGuardImplIZNS_14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES3_vE5resetEPS4_EUlvE_Lb1EED2Ev.exit
  %i.as = load ptr, ptr %6, align 8, !tbaa !1702  ; 7 uses
  switch i16 %i.ar, label %bb.s [
    i16 1, label %bb.n
    i16 3, label %bb.r
  ]

bb.n:                                             ; preds = %bb.m
  %i.at = load atomic i32, ptr %i.as acquire, align 4
  %i.au = and i32 %i.at, 768
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.as)
          to label %.noexc10 unwind label %bb.u

.noexc10:                                         ; preds = %bb.o
  br i1 %i.aw, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %.noexc10, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.ax = atomicrmw sub ptr %i.as, i32 2048 seq_cst, align 4 ; 2 uses
  %i.ay = add i32 %i.ax, -2048                    ; 2 uses
  store i32 %i.ay, ptr %i.b, align 4, !tbaa !604
  %i.az = icmp ugt i32 %i.ay, 2047
  %i.ba = and i32 %i.ax, 16
  %.not.i.i.i.i = icmp eq i32 %i.ba, 0
  %or.cond.i.i.i = or i1 %i.az, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.q, !prof !740

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.as, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.u

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.r:                                             ; preds = %bb.m
  %i.bb = load i16, ptr %i.k, align 2, !tbaa !649
  %i.bc = zext i16 %i.bb to i64
  %i.bd = ptrtoint ptr %i.as to i64
  %.idx.i = shl nuw nsw i64 %i.bc, 5
  %i.be = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.bf = cmpxchg ptr %i.be, i64 %i.bd, i64 0 seq_cst seq_cst, align 8
  %i.bg = extractvalue { i64, i1 } %i.bf, 1
  br i1 %i.bg, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.bh = atomicrmw sub ptr %i.as, i32 2048 seq_cst, align 4 ; 2 uses
  %i.bi = add i32 %i.bh, -2048                    ; 2 uses
  store i32 %i.bi, ptr %i.a, align 4, !tbaa !604
  %i.bj = icmp ugt i32 %i.bi, 2047
  %i.bk = and i32 %i.bh, 16
  %.not.i.i.i9 = icmp eq i32 %i.bk, 0
  %or.cond.i.i = or i1 %i.bj, %.not.i.i.i9
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.t, !prof !740

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.as, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.u

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.u:                                             ; preds = %bb.t, %bb.q, %bb.o
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #39
  unreachable

_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.r, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc10, %_ZN5folly6detail14ScopeGuardImplIZNS_14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES3_vE5resetEPS4_EUlvE_Lb1EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret void

bb.v:                                             ; preds = %_ZN5folly18threadlocal_detail14ElementWrapper3setIPNS_10TLRefCount13LocalRefCountEEEvT_.exit.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.v, %bb.j, %bb.l
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.l ], [ %i.bn, %bb.v ], [ %i.ag, %bb.j ]
  %i.bo = load i8, ptr %7, align 8, !tbaa !1704, !range !703, !noundef !484
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %_ZN5folly6detail14ScopeGuardImplIZNS_14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES3_vE5resetEPS4_EUlvE_Lb1EED2Ev.exit8, label %bb.w

bb.w:                                             ; preds = %.body
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES3_vE5resetEPS4_EUlvE_Lb1EE7executeEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #26
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES3_vE5resetEPS4_EUlvE_Lb1EED2Ev.exit8

_ZN5folly6detail14ScopeGuardImplIZNS_14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES3_vE5resetEPS4_EUlvE_Lb1EED2Ev.exit8: ; preds = %.body, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #24

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !648
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !1702
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #39
  unreachable
}

; Function Attrs: noreturn
declare void @_ZN5folly19shared_mutex_detail26throwOperationNotPermittedEv() local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8AccessorC2Ej:bb.a

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #39
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.o, %bb.p, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

bb.t:                                             ; preds = %.invoke, %.critedge.i.i.i, %bb.e
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %.critedge.i.i.i.i.i.i, %bb.l
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.u ], [ %i.br, %bb.t ]
  call void @_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.p) #26
  call void @_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.k) #26
  call void @_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.h) #26
  resume { ptr, i32 } %.pn
}

declare noundef i32 @_ZN5folly18threadlocal_detail14StaticMetaBase8allocateEPNS1_7EntryIDE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEE7at_slowEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !809
  %.not.i.i = icmp eq i64 %1, -1
  br i1 %.not.i.i, label %_ZNK5folly32atomic_grow_array_policy_defaultINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEES5_E4growEmm.exit, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 false)
  %i.e = sub nuw nsw i64 64, %i.d
  %i.f = shl nuw i64 1, %i.e
  br label %_ZNK5folly32atomic_grow_array_policy_defaultINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEES5_E4growEmm.exit

_ZNK5folly32atomic_grow_array_policy_defaultINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEES5_E4growEmm.exit: ; preds = %bb.a, %.noexc.i
  %i.g = phi i64 [ %i.f, %.noexc.i ], [ 1, %bb.a ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %_ZNK5folly32atomic_grow_array_policy_defaultINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEES5_E4growEmm.exit
  %i.h = phi ptr [ %.pre, %bb.h ], [ %i.c, %_ZNK5folly32atomic_grow_array_policy_defaultINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEES5_E4growEmm.exit ] ; 3 uses
  %.not12 = icmp eq ptr %i.h, null
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !728
  %i.k = icmp ult i64 %1, %i.j
  br i1 %i.k, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = call noundef ptr @_ZN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEE9new_arrayEmRPNSB_5arrayE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 4 uses
  %.not13 = icmp eq ptr %i.l, null
  br i1 %.not13, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = cmpxchg ptr %i.b, ptr %i.m, ptr %i.l acq_rel acquire, align 8 ; 2 uses
  %i.o = extractvalue { ptr, i1 } %i.n, 1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store atomic i64 %i.g, ptr %0 release, align 8
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.p = extractvalue { ptr, i1 } %i.n, 0
  store ptr %i.p, ptr %i.a, align 8
  call void @_ZN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEE9del_arrayEPNSB_5arrayE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l)
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !809
  br label %bb.b, !llvm.loop !9555

.loopexit:                                        ; preds = %bb.c, %bb.f
  %.0 = phi ptr [ %i.l, %bb.f ], [ %i.h, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEE9new_arrayEmRPNSB_5arrayE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !809    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !728
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]    ; 10 uses
  %i.e = shl i64 %1, 3                            ; 2 uses
  %i.f = add i64 %i.e, 16                         ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  %i.h = select i1 %i.g, i64 0, i64 8
  %i.i = add i64 %i.h, %i.f
  %i.j = and i64 %i.i, -16
  %i.k = sub i64 %1, %i.d
  %i.l = mul i64 %i.k, 56                         ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %i.n = select i1 %i.m, i64 0, i64 8
  %i.o = add i64 %i.n, %i.l
  %i.p = and i64 %i.o, -16
  %i.q = add i64 %i.p, %i.j
  %i.r = tail call noalias noundef nonnull align 16 ptr @_ZnwmSt11align_val_t(i64 noundef %i.q, i64 noundef 16) #37 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %1, ptr %i.s, align 8, !tbaa !728
  %i.t = load ptr, ptr %2, align 8, !tbaa !809    ; 2 uses
  store ptr %i.t, ptr %i.r, align 16, !tbaa !809
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %1
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = add i64 %i.w, 8
  %i.y = and i64 %i.x, -16
  %i.z = inttoptr i64 %i.y to ptr
  %.not65 = icmp eq i64 %i.d, 0
  br i1 %.not65, label %.preheader58, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %min.iters.check = icmp ult i64 %i.d, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.d, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !801
  %wide.load78 = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !801
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <2 x ptr> %wide.load, ptr %i.ad, align 16, !tbaa !801
  store <2 x ptr> %wide.load78, ptr %i.ae, align 16, !tbaa !801
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !9556

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %.preheader58, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.03759.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader58:                                     ; preds = %scalar.ph, %middle.block, %bb.c
  %i.ag = icmp ult i64 %i.d, %1
  br i1 %i.ag, label %.lr.ph64, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultISB_S8_EEEEFvPNSE_5arrayEEPSE_SG_EELb1EED2Ev.exit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03759 = phi i64 [ %i.ak, %scalar.ph ], [ %.03759.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.03759
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !801
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.03759
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !801
  %i.ak = add nuw i64 %.03759, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ak, %i.d
  br i1 %exitcond.not, label %.preheader58, label %scalar.ph, !llvm.loop !9557

.lr.ph64:                                         ; preds = %.preheader58
  %i.al = shl i64 %i.d, 3                         ; 2 uses
  %i.am = getelementptr i8, ptr %i.r, i64 %i.al
  %scevgep = getelementptr i8, ptr %i.am, i64 16
  %i.an = sub i64 %i.e, %i.al
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.an, i1 false), !tbaa !801
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph64, %.critedge
  %.03563 = phi i64 [ %i.d, %.lr.ph64 ], [ %i.aw, %.critedge ] ; 3 uses
  %i.ap = load atomic ptr, ptr %i.ao acquire, align 8 ; 2 uses
  %i.aq = load ptr, ptr %2, align 8, !tbaa !809
  %.not44 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not44, label %.critedge, label %3

.critedge:                                        ; preds = %bb.d
  %i.ar = sub nuw i64 %.03563, %i.d
  %i.as = getelementptr inbounds nuw [56 x i8], ptr %i.z, i64 %i.ar ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.as, i8 0, i64 56, i1 false), !alias.scope !9563
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.at, align 8, !tbaa !1698, !alias.scope !9563
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.au, i8 0, i64 20, i1 false), !alias.scope !9563
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.03563
  store ptr %i.as, ptr %i.av, align 8, !tbaa !801
  %i.aw = add i64 %.03563, 1                      ; 2 uses
  %exitcond67.not = icmp eq i64 %i.aw, %1
  br i1 %exitcond67.not, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultISB_S8_EEEEFvPNSE_5arrayEEPSE_SG_EELb1EED2Ev.exit, label %bb.d, !llvm.loop !9560

3:                                                ; preds = %bb.d
  store ptr %i.ap, ptr %2, align 8, !tbaa !809
  br i1 ptrtoint (ptr @_ZN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEE9del_arrayEPNSB_5arrayE to i1), label %4, label %_ZNSt5_BindIFMN5folly17atomic_grow_arrayINS0_12SynchronizedINS0_18threadlocal_detail14ThreadEntrySetENS0_15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEENS0_32atomic_grow_array_policy_defaultIS9_S6_EEEEFvPNSC_5arrayEEPSC_SE_EE6__callIvJEJLm0ELm1EEEET_OSt5tupleIJDpT0_EESt12_Index_tupleIJXspT1_EEE.exit.i.i.i

4:                                                ; preds = %3
  %5 = load ptr, ptr %0, align 8, !tbaa !381
  %6 = getelementptr i8, ptr %5, i64 add (i64 ptrtoint (ptr @_ZN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEE9del_arrayEPNSB_5arrayE to i64), i64 -1)
  %7 = load ptr, ptr %6, align 8, !nosanitize !484
  br label %_ZNSt5_BindIFMN5folly17atomic_grow_arrayINS0_12SynchronizedINS0_18threadlocal_detail14ThreadEntrySetENS0_15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEENS0_32atomic_grow_array_policy_defaultIS9_S6_EEEEFvPNSC_5arrayEEPSC_SE_EE6__callIvJEJLm0ELm1EEEET_OSt5tupleIJDpT0_EESt12_Index_tupleIJXspT1_EEE.exit.i.i.i

_ZNSt5_BindIFMN5folly17atomic_grow_arrayINS0_12SynchronizedINS0_18threadlocal_detail14ThreadEntrySetENS0_15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEENS0_32atomic_grow_array_policy_defaultIS9_S6_EEEEFvPNSC_5arrayEEPSC_SE_EE6__callIvJEJLm0ELm1EEEET_OSt5tupleIJDpT0_EESt12_Index_tupleIJXspT1_EEE.exit.i.i.i: ; preds = %3, %4
  %8 = phi ptr [ %7, %4 ], [ @_ZN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEE9del_arrayEPNSB_5arrayE, %3 ]
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.r)
          to label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultISB_S8_EEEEFvPNSE_5arrayEEPSE_SG_EELb1EED2Ev.exit unwind label %bb.e, !inline_history !9561

bb.e:                                             ; preds = %_ZNSt5_BindIFMN5folly17atomic_grow_arrayINS0_12SynchronizedINS0_18threadlocal_detail14ThreadEntrySetENS0_15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEENS0_32atomic_grow_array_policy_defaultIS9_S6_EEEEFvPNSC_5arrayEEPSC_SE_EE6__callIvJEJLm0ELm1EEEET_OSt5tupleIJDpT0_EESt12_Index_tupleIJXspT1_EEE.exit.i.i.i
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  %i.az = tail call ptr @__cxa_begin_catch(ptr %i.ay) #26 ; 0 uses
  tail call void @_ZN5folly6detail18ScopeGuardImplBase9terminateEv() #26, !inline_history !9562
  unreachable

_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultISB_S8_EEEEFvPNSE_5arrayEEPSE_SG_EELb1EED2Ev.exit: ; preds = %.critedge, %.preheader58, %_ZNSt5_BindIFMN5folly17atomic_grow_arrayINS0_12SynchronizedINS0_18threadlocal_detail14ThreadEntrySetENS0_15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEENS0_32atomic_grow_array_policy_defaultIS9_S6_EEEEFvPNSC_5arrayEEPSC_SE_EE6__callIvJEJLm0ELm1EEEET_OSt5tupleIJDpT0_EESt12_Index_tupleIJXspT1_EEE.exit.i.i.i
  %.375 = phi ptr [ null, %_ZNSt5_BindIFMN5folly17atomic_grow_arrayINS0_12SynchronizedINS0_18threadlocal_detail14ThreadEntrySetENS0_15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEENS0_32atomic_grow_array_policy_defaultIS9_S6_EEEEFvPNSC_5arrayEEPSC_SE_EE6__callIvJEJLm0ELm1EEEET_OSt5tupleIJDpT0_EESt12_Index_tupleIJXspT1_EEE.exit.i.i.i ], [ %i.r, %.preheader58 ], [ %i.r, %.critedge ]
  ret ptr %.375
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

; Function Attrs: nobuiltin allocsize(0)
declare noalias noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(9) ptr @_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !805, !range !703, !noundef !484
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !804    ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.g = atomicrmw and ptr %i.f, i32 -401 seq_cst, align 4 ; 2 uses
  %i.h = and i32 %i.g, -401
  store i32 %i.h, ptr %i.b, align 4, !tbaa !604
  %i.i = and i32 %i.g, 15
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i, label %bb.d, !prof !734

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i unwind label %bb.h

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  store i8 0, ptr %i.c, align 8, !tbaa !805
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit: ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i, %bb.b, %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !804
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !805, !range !703, !noundef !484
  store ptr null, ptr %1, align 8, !tbaa !804
  store i8 0, ptr %i.k, align 8, !tbaa !805
  %i.m = load ptr, ptr %0, align 8, !tbaa !1720   ; 3 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !1720
  %i.n = load i8, ptr %i.c, align 8, !tbaa !755, !range !703, !noundef !484
  store i8 %i.l, ptr %i.c, align 8, !tbaa !755
  %i.o = trunc nuw i8 %i.n to i1
  %.not.i.i = icmp ne ptr %i.m, null
  %or.cond.not = select i1 %i.o, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %bb.e, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.e:                                             ; preds = %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.p = atomicrmw and ptr %i.m, i32 -401 seq_cst, align 4 ; 2 uses
  %i.q = and i32 %i.p, -401
  store i32 %i.q, ptr %i.a, align 4, !tbaa !604
  %i.r = and i32 %i.p, 15
  %.not.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i, label %bb.f, !prof !734

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i unwind label %bb.g

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #39
  unreachable

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i
  store ptr null, ptr %1, align 8, !tbaa !804
  store i8 0, ptr %i.k, align 8, !tbaa !805
  ret ptr %0

bb.h:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #39
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8Accessor7releaseEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.std::unique_lock", align 8  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !805, !range !703, !noundef !484
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr null, ptr %1, align 8, !tbaa !804
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i8 0, ptr %i.h, align 8, !tbaa !805
  %i.i = call noundef nonnull align 8 dereferenceable(9) ptr @_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(9) %1) #26 ; 0 uses
  %i.j = load i8, ptr %i.h, align 8, !tbaa !805, !range !703, !noundef !484
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEE6unlockEv.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8, !tbaa !804    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEE6unlockEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.m = atomicrmw and ptr %i.l, i32 -401 seq_cst, align 4 ; 2 uses
  %i.n = and i32 %i.m, -401
  store i32 %i.n, ptr %i.b, align 4, !tbaa !604
  %i.o = and i32 %i.m, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i, label %bb.e, !prof !734

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.l, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i unwind label %bb.f

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEE6unlockEv.exit

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #39
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEE6unlockEv.exit: ; preds = %bb.b, %bb.c, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.r = load i8, ptr %i.d, align 8, !tbaa !805, !range !703, !noundef !484
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEE6unlockEv.exit
  call void @_ZSt20__throw_system_errori(i32 noundef 1) #38
  unreachable

bb.h:                                             ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEE6unlockEv.exit
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !804  ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.u = atomicrmw and ptr %i.t, i32 -401 seq_cst, align 4 ; 2 uses
  %i.v = and i32 %i.u, -401
  store i32 %i.v, ptr %i.a, align 4, !tbaa !604
  %i.w = and i32 %i.u, 15
  %.not.i.i.i1 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i1, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i, label %bb.j, !prof !734

bb.j:                                             ; preds = %bb.i
  call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  store i8 0, ptr %i.d, align 8, !tbaa !805
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit: ; preds = %bb.h, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.y = load i16, ptr %i.x, align 8, !tbaa !648
  %.not.i2 = icmp eq i16 %i.y, 0
  br i1 %.not.i2, label %bb.k, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit, !prof !538

bb.k:                                             ; preds = %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit
  call void @_ZN5folly19shared_mutex_detail26throwOperationNotPermittedEv() #38
  unreachable
end_hunk_1
begin_hunk_2_@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE20applyDeferredReadersINS4_11WaitForeverEEEvRjRT_:bb.a
  %i.o = sub i64 %i.n, %i.d
  %i.p = icmp ult i64 %i.o, 4000
  br i1 %i.p, label %bb.f, label %.thread, !prof !734

.thread:                                          ; preds = %bb.e
  tail call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE20applyDeferredReadersINS4_11WaitForeverEEEvRjRT_j(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %.1.ph)
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !1692
  br label %bb.c, !llvm.loop !9594

.loopexit:                                        ; preds = %bb.d, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE20yieldWaitForZeroBitsINS4_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @sched_yield() #26 ; 0 uses
  %i.b = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.b, ptr %1, align 4, !tbaa !604
  %i.c = and i32 %i.b, %2
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE20futexWaitForZeroBitsINS4_11WaitForeverEEEbRjjjRT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @sched_yield() #26 ; 0 uses
  %i.f = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.f, ptr %1, align 4, !tbaa !604
  %i.g = and i32 %i.f, %2
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE20futexWaitForZeroBitsINS4_11WaitForeverEEEbRjjjRT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_ZN5folly19shared_mutex_detail45getCurrentThreadInvoluntaryContextSwitchCountEv() ; 0 uses
  %i.j = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.j, ptr %1, align 4, !tbaa !604
  %i.k = and i32 %i.j, %2
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE20futexWaitForZeroBitsINS4_11WaitForeverEEEbRjjjRT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load atomic i32, ptr %0 acquire, align 4 ; 4 uses
  store i32 %i.m, ptr %1, align 4, !tbaa !604
  %i.n = and i32 %i.m, %2
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE20futexWaitForZeroBitsINS4_11WaitForeverEEEbRjjjRT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.p = icmp eq i32 %3, 12
  br i1 %i.p, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.g
  %i.q = phi i32 [ %i.y, %bb.g ], [ %i.m, %.lr.ph.i ] ; 6 uses
  %i.r = and i32 %i.q, 4
  %.not.us.i = icmp eq i32 %i.r, 0
  br i1 %.not.us.i, label %.thread.us.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us.i
  %i.s = or i32 %i.q, 8                           ; 2 uses
  %.not22.us.i = icmp eq i32 %i.s, %i.q
  br i1 %.not22.us.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.us.i, label %bb.f

.thread.us.i:                                     ; preds = %.lr.ph.split.us.i
  %i.t = or disjoint i32 %i.q, 4
  br label %bb.f

bb.f:                                             ; preds = %.thread.us.i, %bb.e
  %.01925.us.i = phi i32 [ %i.t, %.thread.us.i ], [ %i.s, %bb.e ] ; 2 uses
  %i.u = cmpxchg ptr %0, i32 %i.q, i32 %.01925.us.i seq_cst seq_cst, align 4 ; 2 uses
  %i.v = extractvalue { i32, i1 } %i.u, 1
  br i1 %i.v, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.us.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.us.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.us.i: ; preds = %bb.f
  %i.w = extractvalue { i32, i1 } %i.u, 0
  store i32 %i.w, ptr %1, align 4
  br label %bb.g, !llvm.loop !9595

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.us.i: ; preds = %bb.f, %bb.e
  %.01926.us.i = phi i32 [ %i.q, %bb.e ], [ %.01925.us.i, %bb.f ]
  %i.x = tail call noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %.01926.us.i, ptr noundef null, ptr noundef null, i32 noundef 12) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.us.i, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.us.i
  %i.y = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.y, ptr %1, align 4, !tbaa !604
  %i.z = and i32 %i.y, %2
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE20futexWaitForZeroBitsINS4_11WaitForeverEEEbRjjjRT_.exit, label %.lr.ph.split.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.i
  %i.ab = phi i32 [ %i.ah, %bb.i ], [ %i.m, %.lr.ph.i ] ; 3 uses
  %i.ac = or i32 %i.ab, %3                        ; 3 uses
  %.not22.i = icmp eq i32 %i.ac, %i.ab
  br i1 %.not22.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.i
  %i.ad = cmpxchg ptr %0, i32 %i.ab, i32 %i.ac seq_cst seq_cst, align 4 ; 2 uses
  %i.ae = extractvalue { i32, i1 } %i.ad, 1
  br i1 %i.ae, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i: ; preds = %bb.h
  %i.af = extractvalue { i32, i1 } %i.ad, 0
  store i32 %i.af, ptr %1, align 4
  br label %bb.i, !llvm.loop !9595

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i: ; preds = %bb.h, %.lr.ph.split.i
  %i.ag = tail call noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %i.ac, ptr noundef null, ptr noundef null, i32 noundef %3) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i
  %i.ah = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.ah, ptr %1, align 4, !tbaa !604
  %i.ai = and i32 %i.ah, %2
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE20futexWaitForZeroBitsINS4_11WaitForeverEEEbRjjjRT_.exit, label %.lr.ph.split.i

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE20futexWaitForZeroBitsINS4_11WaitForeverEEEbRjjjRT_.exit: ; preds = %bb.i, %bb.g, %bb.a, %bb.b, %bb.c, %bb.d
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE20applyDeferredReadersINS4_11WaitForeverEEEvRjRT_j(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !538

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache) #42
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.b, %bb.b ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 6 uses
  %i.e = tail call noundef i32 @sched_yield() #26 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.235 = phi i32 [ %3, %bb.c ], [ %i.l, %bb.e ]  ; 3 uses
  %i.f = shl i32 %.235, 2
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE15deferredReadersE, i64 %i.g
  %i.i = load atomic i64, ptr %i.h acquire, align 32
  %i.j = and i64 %i.i, -2
  %i.k = icmp eq i64 %i.j, %i.d
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = add i32 %.235, 1                         ; 2 uses
  %i.m = icmp eq i32 %i.l, %i.c
  br i1 %i.m, label %.critedge, label %bb.d, !llvm.loop !9596

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noundef i32 @sched_yield() #26 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.235.1 = phi i32 [ %.235, %bb.f ], [ %i.u, %bb.h ] ; 3 uses
  %i.o = shl i32 %.235.1, 2
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE15deferredReadersE, i64 %i.p
  %i.r = load atomic i64, ptr %i.q acquire, align 32
  %i.s = and i64 %i.r, -2
  %i.t = icmp eq i64 %i.s, %i.d
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = add i32 %.235.1, 1                       ; 2 uses
  %i.v = icmp eq i32 %i.u, %i.c
  br i1 %i.v, label %.critedge, label %bb.g, !llvm.loop !9596

bb.i:                                             ; preds = %bb.g
  %i.w = tail call noundef i64 @_ZN5folly19shared_mutex_detail45getCurrentThreadInvoluntaryContextSwitchCountEv() ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.235.2 = phi i32 [ %.235.1, %bb.i ], [ %i.ad, %bb.k ] ; 4 uses
  %i.x = shl i32 %.235.2, 2
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE15deferredReadersE, i64 %i.y
  %i.aa = load atomic i64, ptr %i.z acquire, align 32
  %i.ab = and i64 %i.aa, -2
  %i.ac = icmp eq i64 %i.ab, %i.d
  br i1 %i.ac, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = add i32 %.235.2, 1                      ; 2 uses
  %i.ae = icmp eq i32 %i.ad, %i.c
  br i1 %i.ae, label %.critedge, label %bb.j, !llvm.loop !9596

bb.l:                                             ; preds = %bb.j
  %i.af = icmp ult i32 %.235.2, %i.c
  br i1 %i.af, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.l
  %i.ag = zext i32 %.235.2 to i64                 ; 4 uses
  %wide.trip.count = zext i32 %i.c to i64         ; 2 uses
  %i.ah = sub nsw i64 %wide.trip.count, %i.ag     ; 3 uses
  %i.ai = add nsw i64 %wide.trip.count, -1
  %i.aj = icmp eq i64 %i.ai, %i.ag
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ah, -2
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %.lr.ph.new
  %indvars.iv = phi i64 [ %i.ag, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.q ] ; 3 uses
  %.052 = phi i32 [ 0, %.lr.ph.new ], [ %.1.1, %bb.q ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.q ]
  %i.ak = shl i64 %indvars.iv, 2
  %i.al = and i64 %i.ak, 4294967292
  %i.am = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE15deferredReadersE, i64 %i.al ; 2 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 32 ; 2 uses
  %i.ao = and i64 %i.an, -2
  %i.ap = icmp eq i64 %i.ao, %i.d
  br i1 %i.ap, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aq = cmpxchg ptr %i.am, i64 %i.an, i64 0 seq_cst seq_cst, align 8
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  %i.as = zext i1 %i.ar to i32
  %..0 = add i32 %.052, %i.as
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1 = phi i32 [ %.052, %bb.m ], [ %..0, %bb.n ] ; 2 uses
  %indvars.iv.next = shl i64 %indvars.iv, 2
  %i.at = add i64 %indvars.iv.next, 4
  %i.au = and i64 %i.at, 4294967292
  %i.av = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE15deferredReadersE, i64 %i.au ; 2 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 32 ; 2 uses
  %i.ax = and i64 %i.aw, -2
  %i.ay = icmp eq i64 %i.ax, %i.d
  br i1 %i.ay, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.az = cmpxchg ptr %i.av, i64 %i.aw, i64 0 seq_cst seq_cst, align 8
  %i.ba = extractvalue { i64, i1 } %i.az, 1
  %i.bb = zext i1 %i.ba to i32
  %..0.1 = add i32 %.1, %i.bb
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1.1 = phi i32 [ %.1, %bb.o ], [ %..0.1, %bb.p ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.m, !llvm.loop !9597

._crit_edge.unr-lcssa:                            ; preds = %bb.q
  %lcmp.mod.not = trunc i64 %i.ah to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ %i.ag, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.052.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod92 = trunc i64 %i.ah to i1
  tail call void @llvm.assume(i1 %lcmp.mod92)
  %i.bc = shl i64 %indvars.iv.epil.init, 2
  %i.bd = and i64 %i.bc, 4294967292
  %i.be = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE15deferredReadersE, i64 %i.bd ; 2 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 32 ; 2 uses
  %i.bg = and i64 %i.bf, -2
  %i.bh = icmp eq i64 %i.bg, %i.d
  br i1 %i.bh, label %bb.r, label %._crit_edge

bb.r:                                             ; preds = %.epil.preheader
  %i.bi = cmpxchg ptr %i.be, i64 %i.bf, i64 0 seq_cst seq_cst, align 8
  %i.bj = extractvalue { i64, i1 } %i.bi, 1
  %i.bk = zext i1 %i.bj to i32
  %..0.epil = add i32 %.052.epil.init, %i.bk
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.r, %._crit_edge.unr-lcssa
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge.unr-lcssa ], [ %.052.epil.init, %.epil.preheader ], [ %..0.epil, %bb.r ] ; 2 uses
  %.not40 = icmp eq i32 %.1.lcssa, 0
  br i1 %.not40, label %.critedge, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.bl = shl i32 %.1.lcssa, 11                   ; 2 uses
  %i.bm = atomicrmw add ptr %0, i32 %i.bl seq_cst, align 4
  %i.bn = add i32 %i.bm, %i.bl
  store i32 %i.bn, ptr %1, align 4, !tbaa !604
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.h, %bb.k, %bb.l, %._crit_edge, %bb.s
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2) #3 comdat align 2 {
bb.a:
  %i.a = and i32 %2, 12
  %i.b = icmp eq i32 %i.a, 12
  %.pre13 = load i32, ptr %1, align 4, !tbaa !604 ; 2 uses
  %i.c = and i32 %.pre13, %2
  %i.d = icmp eq i32 %i.c, 12
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 12)
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i32, ptr %1, align 4, !tbaa !604
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.g = phi i32 [ %.pre, %._crit_edge ], [ %.pre13, %bb.a ]
  %i.h = and i32 %i.g, %2
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = xor i32 %2, -1                           ; 2 uses
  %i.j = atomicrmw and ptr %0, i32 %i.i seq_cst, align 4 ; 2 uses
  %i.k = and i32 %i.j, %2
  %.not12 = icmp eq i32 %i.k, 0
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef 2147483647, i32 noundef %2) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = and i32 %i.j, %i.i
  store i32 %i.m, ptr %1, align 4, !tbaa !604
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5folly6detail14TypeDescriptorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !736  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !9605   ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5folly6detail14TypeDescriptorESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #38
  unreachable

_ZNKSt6vectorIN5folly6detail14TypeDescriptorESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #37 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load <2 x i64>, ptr %2, align 8, !tbaa !540
  store <2 x i64> %i.r, ptr %i.q, align 8, !tbaa !540
  %.not13.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5folly6detail14TypeDescriptorES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN5folly6detail14TypeDescriptorESaIS2_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -16
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
  %i.u = lshr i64 %i.t, 4
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 48
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader73, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 2305843009213693950      ; 3 uses
  %i.w = shl i64 %n.vec, 4                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w     ; 2 uses
  %i.y = getelementptr i8, ptr %i.c, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 4                        ; 3 uses
  %i.aa = or disjoint i64 %i.z, 16                ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.z
  %next.gep49 = getelementptr i8, ptr %i.p, i64 %i.aa
  %next.gep50 = getelementptr i8, ptr %i.c, i64 %i.z
  %next.gep51 = getelementptr i8, ptr %i.c, i64 %i.aa
  %wide.load = load <2 x i64>, ptr %next.gep50, align 8, !tbaa !540
  %wide.load52 = load <2 x i64>, ptr %next.gep51, align 8, !tbaa !540
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !540
  store <2 x i64> %wide.load52, ptr %next.gep49, align 8, !tbaa !540
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !9598

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5folly6detail14TypeDescriptorES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader73

.lr.ph.i.i.i.i.i.preheader73:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.015.i.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.01214.i.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader73, %.lr.ph.i.i.i.i.i
  %.015.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.015.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader73 ] ; 3 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.01214.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader73 ] ; 3 uses
  %i.ac = load i64, ptr %.01214.i.i.i.i.i, align 8, !tbaa !540
  store i64 %i.ac, ptr %.015.i.i.i.i.i, align 8, !tbaa !540
  %i.ad = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !540
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !540
  %i.ag = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5folly6detail14TypeDescriptorES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !9599

_ZSt34__uninitialized_move_if_noexcept_aIPN5folly6detail14TypeDescriptorES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN5folly6detail14TypeDescriptorESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN5folly6detail14TypeDescriptorESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.x, %middle.block ], [ %i.ah, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ai = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 7 uses
  %.not13.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5folly6detail14TypeDescriptorES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, label %.lr.ph.i.i.i.i.i29.preheader

.lr.ph.i.i.i.i.i29.preheader:                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5folly6detail14TypeDescriptorES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.aj = add i64 %i.d, -16
  %i.ak = sub i64 %i.aj, %i.m                     ; 3 uses
  %i.al = lshr i64 %i.ak, 4
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check56 = icmp ult i64 %i.ak, 240
  br i1 %min.iters.check56, label %.lr.ph.i.i.i.i.i29.preheader72, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i29.preheader
  %i.an = and i64 %i.ak, -16                      ; 2 uses
  %i.ao = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 32
  %i.aq = getelementptr i8, ptr %1, i64 %i.an
  %i.ar = getelementptr i8, ptr %i.aq, i64 16
  %bound0 = icmp ult ptr %i.ai, %i.ar
  %bound1 = icmp ult ptr %1, %i.ap
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i29.preheader72, label %vector.ph57

vector.ph57:                                      ; preds = %vector.memcheck
  %n.vec58 = and i64 %i.am, 2305843009213693950   ; 3 uses
  %i.as = shl i64 %n.vec58, 4                     ; 2 uses
end_hunk_2
