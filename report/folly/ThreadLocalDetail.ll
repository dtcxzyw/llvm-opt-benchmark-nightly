Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/ThreadLocalDetail?download=true
inline.NumInlined: 1463
inline.NumDeleted: 730
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5folly18threadlocal_detail14StaticMetaBase7destroyEPNS1_7EntryIDE:bb.a

bb.bx:                                            ; preds = %bb.bw
  %i.hf = load atomic i32, ptr %i.he acquire, align 4
  %i.hg = and i32 %i.hf, 768
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hi = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.he)
          to label %.noexc70 unwind label %bb.ce

.noexc70:                                         ; preds = %bb.by
  br i1 %i.hi, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit42, label %bb.bz

bb.bz:                                            ; preds = %.noexc70, %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.hj = atomicrmw sub ptr %i.he, i32 2048 seq_cst, align 4 ; 2 uses
  %i.hk = add i32 %i.hj, -2048                    ; 2 uses
  store i32 %i.hk, ptr %i.b, align 4, !tbaa !26
  %i.hl = icmp ugt i32 %i.hk, 2047
  %i.hm = and i32 %i.hj, 16
  %.not.i.i.i.i67 = icmp eq i32 %i.hm, 0
  %or.cond.i.i.i68 = or i1 %i.hl, %.not.i.i.i.i67
  br i1 %or.cond.i.i.i68, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i69, label %bb.ca, !prof !144

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.he, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i69 unwind label %bb.ce

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i69: ; preds = %bb.ca, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit42

bb.cb:                                            ; preds = %bb.bw
  %i.hn = load i16, ptr %i.q, align 2, !tbaa !137
  %i.ho = zext i16 %i.hn to i64
  %i.hp = ptrtoint ptr %i.he to i64
  %.idx.i63 = shl nuw nsw i64 %i.ho, 5
  %i.hq = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i63
  %i.hr = cmpxchg ptr %i.hq, i64 %i.hp, i64 0 seq_cst seq_cst, align 8
  %i.hs = extractvalue { i64, i1 } %i.hr, 1
  br i1 %i.hs, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit42, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.ht = atomicrmw sub ptr %i.he, i32 2048 seq_cst, align 4 ; 2 uses
  %i.hu = add i32 %i.ht, -2048                    ; 2 uses
  store i32 %i.hu, ptr %i.a, align 4, !tbaa !26
  %i.hv = icmp ugt i32 %i.hu, 2047
  %i.hw = and i32 %i.ht, 16
  %.not.i.i.i64 = icmp eq i32 %i.hw, 0
  %or.cond.i.i65 = or i1 %i.hv, %.not.i.i.i64
  br i1 %or.cond.i.i65, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i66, label %bb.cd, !prof !144

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.he, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i66 unwind label %bb.ce

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i66: ; preds = %bb.cd, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit42

bb.ce:                                            ; preds = %bb.cd, %bb.ca, %bb.by
  %i.hx = landingpad { ptr, i32 }
          catch ptr null
  %i.hy = extractvalue { ptr, i32 } %i.hx, 0
  call void @__clang_call_terminate(ptr %i.hy) #40
  unreachable

_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit42: ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i66, %bb.cb, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i69, %.noexc70, %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5folly18threadlocal_detail14ElementWrapper7disposeENS_18TLPDestructionModeE.exit, %bb.ax, %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit42
  %i.hz = load ptr, ptr %i.m, align 8, !tbaa !46  ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 15
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !49
  %i.ic = icmp eq i8 %i.ib, -1
  br i1 %i.ic, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEED2Ev.exit.i44, label %bb.cf

bb.cf:                                            ; preds = %.loopexit
  %i.id = load i64, ptr %i.n, align 16, !tbaa !50
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hz, i64 14
  %i.if = and i64 %i.id, 255                      ; 2 uses
  %i.ig = load i8, ptr %i.ie, align 1, !tbaa !25
  %i.ih = icmp eq i64 %i.if, 0
  %i.ii = shl i8 %i.ig, 4
  %i.ij = zext i8 %i.ii to i64
  %i.ik = add nuw nsw i64 %i.ij, 16
  %i.il = shl i64 256, %i.if
  %.0.i.i.i.i.i.i43 = select i1 %i.ih, i64 %i.ik, i64 %i.il
  call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef %.0.i.i.i.i.i.i43) #31
  br label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEED2Ev.exit.i44

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEED2Ev.exit.i44: ; preds = %bb.cf, %.loopexit
  %i.im = load ptr, ptr %5, align 16, !tbaa !58   ; 3 uses
  %.not.i.i.i.i45 = icmp eq ptr %i.im, null
  br i1 %.not.i.i.i.i45, label %_ZN5folly18threadlocal_detail14ThreadEntrySetD2Ev.exit46, label %bb.cg

bb.cg:                                            ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEED2Ev.exit.i44
  %i.in = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.io = load ptr, ptr %i.in, align 16, !tbaa !68
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = ptrtoint ptr %i.im to i64
  %i.ir = sub i64 %i.ip, %i.iq
  call void @_ZdlPvm(ptr noundef nonnull %i.im, i64 noundef %i.ir) #43
  br label %_ZN5folly18threadlocal_detail14ThreadEntrySetD2Ev.exit46

_ZN5folly18threadlocal_detail14ThreadEntrySetD2Ev.exit46: ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEED2Ev.exit.i44, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.bg

bb.ch:                                            ; preds = %bb.bd
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.ci:                                            ; preds = %bb.bf, %bb.be
  %i.it = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %9) #31
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.pn17 = phi { ptr, i32 } [ %i.it, %bb.ci ], [ %i.is, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  invoke void @__cxa_end_catch()
          to label %bb.ck unwind label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  resume { ptr, i32 } %.pn17

bb.cl:                                            ; preds = %bb.cj
  %i.iu = landingpad { ptr, i32 }
          catch ptr null
  %i.iv = extractvalue { ptr, i32 } %i.iu, 0
  call void @__clang_call_terminate(ptr %i.iv) #40
  unreachable
}

declare void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96)) unnamed_addr #21

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5folly18threadlocal_detail14StaticMetaBase10reallocateEPNS0_11ThreadEntryEjRm(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) initializes((0, 8)) %2) local_unnamed_addr #26 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %i.c = add i32 %1, 5
  %i.d = uitofp i32 %i.c to double                ; 2 uses
  %i.e = fmul nnan double %i.d, 1.100000e+00
  %i.f = fptoui double %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !128  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = fmul nnan double %i.d, 1.700000e+00
  %i.j = fptoui double %i.i to i64                ; 2 uses
  %i.k = load atomic i32, ptr %i.h monotonic, align 4
  %i.l = zext i32 %i.k to i64
  %.not27 = icmp ugt i64 %i.j, %i.l
  br i1 %.not27, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.m = phi i64 [ %i.f, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  store i64 %i.m, ptr %2, align 8, !tbaa !55
  %i.n = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %_ZN5folly13usingJEMallocEv.exit, label %.split, !prof !39

.split:                                           ; preds = %bb.d
  %i.o = icmp sgt i8 %i.n, 0
  br i1 %i.o, label %bb.e, label %_ZN5folly13usingJEMallocEv.exit._crit_edge

_ZN5folly13usingJEMallocEv.exit:                  ; preds = %bb.d
  %i.p = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEv() #48
  %.pre37 = load i64, ptr %2, align 8, !tbaa !55  ; 2 uses
  br i1 %i.p, label %bb.e, label %_ZN5folly13usingJEMallocEv.exit._crit_edge

bb.e:                                             ; preds = %.split, %_ZN5folly13usingJEMallocEv.exit
  %i.q = phi i64 [ %i.m, %.split ], [ %.pre37, %_ZN5folly13usingJEMallocEv.exit ]
  %i.r = shl i64 %i.q, 4
  %i.s = tail call i64 @nallocx(i64 noundef %i.r, i32 noundef 0) #31 ; 4 uses
  %i.t = and i64 %i.b, 1152921504606846720
  %.not29 = icmp eq i64 %i.t, 0
  br i1 %.not29, label %.thread.a, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %0, align 8, !tbaa !147
  %i.v = tail call i64 @xallocx(ptr noundef %i.u, i64 noundef %i.s, i64 noundef 0, i32 noundef 64) #31
  %i.w = icmp eq i64 %i.v, %i.s
  br i1 %i.w, label %.thread32, label %.thread.a

.thread.a:                                        ; preds = %bb.f, %bb.e
  %i.x = tail call ptr @mallocx(i64 noundef %i.s, i32 noundef 64) #31 ; 2 uses
  %.not36 = icmp eq ptr %i.x, null
  br i1 %.not36, label %bb.g, label %.thread32

.thread32:                                        ; preds = %bb.f, %.thread.a
  %.02235 = phi ptr [ %i.x, %.thread.a ], [ null, %bb.f ]
  %i.y = lshr i64 %i.s, 4
  store i64 %i.y, ptr %2, align 8, !tbaa !55
  br label %bb.i

bb.g:                                             ; preds = %.thread.a
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #22
  unreachable

_ZN5folly13usingJEMallocEv.exit._crit_edge:       ; preds = %_ZN5folly13usingJEMallocEv.exit, %.split
  %i.z = phi i64 [ %i.m, %.split ], [ %.pre37, %_ZN5folly13usingJEMallocEv.exit ]
  %i.aa = tail call noalias ptr @calloc(i64 noundef %i.z, i64 noundef 16) #49 ; 2 uses
  %.not28 = icmp eq ptr %i.aa, null
  br i1 %.not28, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN5folly13usingJEMallocEv.exit._crit_edge
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #22
  unreachable

bb.i:                                             ; preds = %_ZN5folly13usingJEMallocEv.exit._crit_edge, %.thread32
  %.123 = phi ptr [ %.02235, %.thread32 ], [ %i.aa, %_ZN5folly13usingJEMallocEv.exit._crit_edge ]
  ret ptr %.123
}

; Function Attrs: nounwind
declare extern_weak i64 @nallocx(i64 noundef, i32 noundef) local_unnamed_addr #21

; Function Attrs: nounwind
declare extern_weak i64 @xallocx(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #21

; Function Attrs: nounwind
declare extern_weak ptr @mallocx(i64 noundef, i32 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEv() local_unnamed_addr #34 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.folly::detail::UsingJEMallocInitializer", align 1 ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !6785

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv) #31
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #31
  %i.d = call noundef zeroext i1 @_ZNK5folly6detail24UsingJEMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #31 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #31
  %i.e = select i1 %i.d, i8 1, i8 -1
  store atomic i8 %i.e, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE5flag_E release, align 1
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !82
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv) #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = load i8, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !82, !range !91, !noundef !92
  %i.h = trunc nuw i8 %i.g to i1
  ret i1 %i.h
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #35

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #35

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK5folly6detail24UsingJEMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define void @_ZN5folly18threadlocal_detail14StaticMetaBase7reserveEPNS1_7EntryIDE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #26 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !119
  %i.d = tail call noundef ptr %i.c()             ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load atomic i64, ptr %i.e monotonic, align 8 ; 4 uses
  %i.g = load atomic i32, ptr %1 acquire, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.g, -1
  br i1 %.not.i, label %bb.b, label %_ZN5folly18threadlocal_detail14StaticMetaBase7EntryID13getOrAllocateERS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #31 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.i) #41
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i:      ; preds = %bb.b
  %i.j = load atomic i32, ptr %1 monotonic, align 4 ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.d, label %_ZN5folly18threadlocal_detail14StaticMetaBase8allocateEPNS1_7EntryIDE.exit.i

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !168
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !168  ; 2 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !26
  store ptr %i.q, ptr %i.n, align 8, !tbaa !169
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw add ptr %0, i32 1 monotonic, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.s, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %i.t = atomicrmw xchg ptr %1, i32 %.0.i.i release, align 4 ; 0 uses
  br label %_ZN5folly18threadlocal_detail14StaticMetaBase8allocateEPNS1_7EntryIDE.exit.i

_ZN5folly18threadlocal_detail14StaticMetaBase8allocateEPNS1_7EntryIDE.exit.i: ; preds = %bb.g, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i
  %.1.i.i = phi i32 [ %.0.i.i, %bb.g ], [ %i.j, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i ]
  %i.u = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #31 ; 0 uses
  br label %_ZN5folly18threadlocal_detail14StaticMetaBase7EntryID13getOrAllocateERS1_.exit

_ZN5folly18threadlocal_detail14StaticMetaBase7EntryID13getOrAllocateERS1_.exit: ; preds = %bb.a, %_ZN5folly18threadlocal_detail14StaticMetaBase8allocateEPNS1_7EntryIDE.exit.i
  %.0.i = phi i32 [ %.1.i.i, %_ZN5folly18threadlocal_detail14StaticMetaBase8allocateEPNS1_7EntryIDE.exit.i ], [ %i.g, %bb.a ] ; 2 uses
  %i.v = zext i32 %.0.i to i64
  %i.w = icmp ugt i64 %i.f, %i.v
  br i1 %i.w, label %bb.n, label %bb.h

bb.h:                                             ; preds = %_ZN5folly18threadlocal_detail14StaticMetaBase7EntryID13getOrAllocateERS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.x = call noundef ptr @_ZN5folly18threadlocal_detail14StaticMetaBase10reallocateEPNS0_11ThreadEntryEjRm(ptr noundef nonnull %i.d, i32 noundef %.0.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.z = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.y) #31 ; 2 uses
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.z) #41
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.h
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %.not16 = icmp eq i64 %i.f, 0
  br i1 %.not16, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !147
  %i.ab = shl nuw nsw i64 %i.f, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.aa, i64 %i.ab, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !6786
  store ptr %i.x, ptr %i.d, align 8, !tbaa !6786
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %.0 = phi ptr [ null, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ], [ %i.ac, %bb.l ]
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !55  ; 2 uses
  store atomic i64 %i.ad, ptr %i.e monotonic, align 8
  %i.ae = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.y) #31 ; 0 uses
  %i.af = sub i64 %i.ad, %i.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ah = atomicrmw add ptr %i.ag, i64 %i.af monotonic, align 8 ; 0 uses
  tail call void @free(ptr noundef %.0) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.n

bb.n:                                             ; preds = %_ZN5folly18threadlocal_detail14StaticMetaBase7EntryID13getOrAllocateERS1_.exit, %bb.m
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define void @_ZN5folly18threadlocal_detail14StaticMetaBase24ensureThreadEntryIsInSetEPNS0_11ThreadEntryERNS_12SynchronizedINS0_14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEERNS_9LockedPtrISA_NS_6detail22SynchronizedLockPolicyILNSD_22SynchronizedMutexLevelE2ELNSD_23SynchronizedMutexMethodE0EEEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(52) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %5 = alloca %"class.folly::LockedPtr.70", align 8 ; 9 uses
  %6 = alloca %"class.folly::LockedPtr.72", align 8 ; 8 uses
  tail call void @_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE2ELNS9_23SynchronizedMutexMethodE0EEEE6unlockEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #31
end_hunk_0
