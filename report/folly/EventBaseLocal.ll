Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/EventBaseLocal?download=true
inline.NumInlined: 1198
inline.NumDeleted: 603
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_j:bb.a
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
  br i1 %i.m, label %.critedge, label %bb.d, !llvm.loop !115

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noundef i32 @sched_yield() #6  ; 0 uses
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
  br i1 %i.v, label %.critedge, label %bb.g, !llvm.loop !115

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
  br i1 %i.ae, label %.critedge, label %bb.j, !llvm.loop !115

bb.l:                                             ; preds = %bb.j
  %i.af = icmp ult i32 %.235.2, %i.c
  br i1 %i.af, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.l
  %i.ag = zext i32 %.235.2 to i64                 ; 4 uses
  %wide.trip.count = zext i32 %i.c to i64         ; 2 uses
  %i.ah = sub nsw i64 %wide.trip.count, %i.ag     ; 3 uses
  %xtraiter = and i64 %i.ah, 1
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
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.m, !llvm.loop !116

._crit_edge.unr-lcssa:                            ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

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
  store i32 %i.bn, ptr %1, align 4, !tbaa !19
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.h, %bb.k, %bb.l, %._crit_edge, %bb.s
  ret void
}

; Function Attrs: cold
declare noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #5 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE12eraseKeyIntoIS5_RKNS_16variadic_noop_fnEEEmRKT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = icmp ult i64 %i.b, 256
  br i1 %i.c, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE8findImplIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmERKT_NS7_8PrefetchE.exit.thread, label %bb.b, !prof !45

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = zext i64 %i.e to i128
  %i.g = mul nuw i128 %i.f, 14181476777654086739
  %i.h = lshr i128 %i.g, 64
  %i.i = trunc nuw i128 %i.h to i64
  %i.j = mul i64 %i.e, -4265267296055464877
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, -4265267296055464877       ; 2 uses
  %i.m = lshr i64 %i.l, 14
  %i.n = and i64 %i.m, 255
  %i.o = lshr i64 %i.l, 22                        ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1) ; 3 uses
  %i.p = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.q = or disjoint i64 %i.p, 1
  %i.r = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.s = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.u = and i64 %i.b, 255                        ; 2 uses
  %i.v = shl nuw i64 1, %i.u
  %notmask.i = shl nsw i64 -1, %i.u
  %i.w = xor i64 %notmask.i, -1
  %i.x = load ptr, ptr %0, align 8, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.024.i42 = phi i64 [ %i.v, %bb.b ], [ %i.av, %bb.e ]
  %.026.i41 = phi i64 [ %i.o, %bb.b ], [ %i.aw, %bb.e ] ; 2 uses
  %i.y = and i64 %.026.i41, %i.w
  %i.z = shl nuw nsw i64 %i.y, 7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z ; 4 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 80
  tail call void @llvm.prefetch.p0(ptr %i.ab, i32 0, i32 3, i32 1)
  %i.ac = load <16 x i8>, ptr %i.aa, align 16     ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.ac, %i.t
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = zext i16 %i.ae to i32                   ; 2 uses
  %i.ag = and i32 %i.af, 16383
  %.not = icmp eq i32 %i.ag, 0
  %i.ah = extractelement <16 x i8> %i.ac, i64 15
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.ai = icmp ne ptr %i.aa, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ai)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.012.0 = phi i32 [ %i.as, %.critedge.i ], [ %i.af, %.preheader ] ; 4 uses
  %i.aj = icmp ne i32 %.sroa.012.0, 0
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.012.0, i1 true)
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = getelementptr i8, ptr %i.aa, i64 %i.am  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !29
  %i.aq = icmp eq ptr %i.d, %i.ap
  br i1 %i.aq, label %bb.f, label %.critedge.i, !prof !20

.critedge.i:                                      ; preds = %bb.d
  %i.ar = add nsw i32 %.sroa.012.0, -1
  %i.as = and i32 %i.ar, %.sroa.012.0             ; 2 uses
  %i.at = and i32 %i.as, 16382
  %.not36 = icmp eq i32 %i.at, 0
  br i1 %.not36, label %.loopexit, label %bb.d, !llvm.loop !0

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.au = icmp eq i8 %i.ah, 0
  br i1 %i.au, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE8findImplIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmERKT_NS7_8PrefetchE.exit.thread, label %bb.e, !prof !20

bb.e:                                             ; preds = %.loopexit
  %i.av = add i64 %.024.i42, -1                   ; 2 uses
  %i.aw = add i64 %i.q, %.026.i41
  %.not.i = icmp eq i64 %i.av, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE8findImplIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmERKT_NS7_8PrefetchE.exit.thread, label %bb.c, !llvm.loop !1

bb.f:                                             ; preds = %bb.d
  %i.ax = getelementptr i8, ptr %i.an, i64 16
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.ax, i64 %i.al, i64 %i.o, i64 %.sroa.speculated.i.i.i)
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE8findImplIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmERKT_NS7_8PrefetchE.exit.thread

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE8findImplIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmERKT_NS7_8PrefetchE.exit.thread: ; preds = %.loopexit, %bb.e, %bb.f, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ 1, %bb.f ], [ 0, %bb.e ], [ 0, %.loopexit ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24
  %i.c = add i64 %i.b, -256                       ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !24
  %i.d = and i64 %2, 255                          ; 2 uses
  %i.e = icmp samesign ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.e)
  %i.f = lshr i64 %i.d, 1
  %i.g = ptrtoint ptr %1 to i64
  %i.h = or i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !26
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %i.c, 256
  br i1 %i.l, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPNS_9EventBaseEEEE17precheckedAdvanceEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i.i = mul i64 %2, -8
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %.neg.i.i.i.i ; 2 uses
  %.not19.i4.i.i = icmp eq i64 %2, 0
  br i1 %.not19.i4.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

.critedge.i.i.i.preheader:                        ; preds = %bb.d, %bb.c
  br label %.critedge.i.i.i

bb.d:                                             ; preds = %thread-pre-split.i.i
  %.not19.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not19.i.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %bb.c, %bb.d
  %i.o = phi i64 [ %i.q, %bb.d ], [ %2, %bb.c ]
  %i.p = phi ptr [ %i.r, %bb.d ], [ %1, %bb.c ]
  %i.q = add i64 %i.o, -1                         ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.t = load i8, ptr %i.s, align 1, !tbaa !35
  %.not.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPNS_9EventBaseEEEE17precheckedAdvanceEv.exit.i, !prof !45, !llvm.loop !117

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.preheader, %.critedge.i.i.i
  %.017.i.i.i = phi ptr [ %i.u, %.critedge.i.i.i ], [ %i.n, %.critedge.i.i.i.preheader ]
  %i.u = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -128 ; 4 uses
  %i.v = load <16 x i8>, ptr %i.u, align 16, !tbaa !35
  %i.w = icmp eq <16 x i8> %i.v, zeroinitializer
  %i.x = bitcast <16 x i1> %i.w to i16
  %i.y = and i16 %i.x, 16383                      ; 2 uses
  %.not2.i.i = icmp eq i16 %i.y, 16383
  br i1 %.not2.i.i, label %.critedge.i.i.i, label %bb.e, !prof !45, !llvm.loop !118

bb.e:                                             ; preds = %.critedge.i.i.i
  %i.z = xor i16 %i.y, 16383
  %i.aa = zext nneg i16 %i.z to i32
  %i.ab = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aa, i1 true)
  %i.ac = xor i32 %i.ab, 31
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = icmp ne ptr %i.u, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = shl nuw nsw i64 %i.ad, 3
  %i.ag = getelementptr i8, ptr %i.u, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 16
  br label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPNS_9EventBaseEEEE17precheckedAdvanceEv.exit.i

_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPNS_9EventBaseEEEE17precheckedAdvanceEv.exit.i: ; preds = %thread-pre-split.i.i, %bb.e, %bb.b
  %.sroa.01.0.i = phi ptr [ null, %bb.b ], [ %i.ah, %bb.e ], [ %i.r, %thread-pre-split.i.i ]
  %.sroa.7.0.i = phi i64 [ 0, %bb.b ], [ %i.ad, %bb.e ], [ %i.q, %thread-pre-split.i.i ]
  %i.ai = and i64 %.sroa.7.0.i, 255               ; 2 uses
  %i.aj = icmp samesign ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = lshr i64 %i.ai, 1
  %i.al = ptrtoint ptr %.sroa.01.0.i to i64
  %i.am = or i64 %i.ak, %i.al
  store i64 %i.am, ptr %i.i, align 8, !tbaa !34
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEE.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEE.exit: ; preds = %bb.a, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPNS_9EventBaseEEEE17precheckedAdvanceEv.exit.i
  %i.an = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i = mul i64 %2, -8
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %.neg.i.i.i ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %2 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !35
  %.not.i.i7 = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i7, label %bb.f, label %_ZN5folly3f146detail8F14ChunkIPNS_9EventBaseEE8clearTagEm.exit.i

bb.f:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEE.exit
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPNS_9EventBaseEE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.3) #27
  unreachable

_ZN5folly3f146detail8F14ChunkIPNS_9EventBaseEE8clearTagEm.exit.i: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEE.exit
  store i8 0, ptr %i.ap, align 1, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 14
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !48
  %.not.i = icmp ult i8 %i.as, 16
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPNS_9EventBaseEE8clearTagEm.exit.i
  %i.at = shl i64 %4, 1
  %i.au = or disjoint i64 %i.at, 1
  %i.av = load i64, ptr %i.a, align 8, !tbaa !24
  %i.aw = and i64 %i.av, 255
  %notmask.i.i = shl nsw i64 -1, %i.aw
  %i.ax = xor i64 %notmask.i.i, -1                ; 2 uses
  %i.ay = load ptr, ptr %0, align 8, !tbaa !33    ; 4 uses
  %i.az = and i64 %3, %i.ax
  %i.ba = shl nuw nsw i64 %i.az, 7                ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ba
  %i.bc = icmp eq ptr %i.bb, %i.ao
  br i1 %i.bc, label %.thread.i, label %.lr.ph.i

.thread.i:                                        ; preds = %bb.i, %bb.g
  %.010.lcssa.i = phi i8 [ 0, %bb.g ], [ -16, %bb.i ]
  %i.bd = phi i64 [ %i.ba, %bb.g ], [ %i.bp, %bb.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 14 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !48
  %i.bh = add i8 %i.bg, %.010.lcssa.i
  store i8 %i.bh, ptr %i.bf, align 2, !tbaa !48
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %i.bi = phi i64 [ %i.bp, %bb.i ], [ %i.ba, %bb.g ]
  %.01126.i = phi i64 [ %i.bn, %bb.i ], [ %3, %bb.g ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 15 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !49  ; 2 uses
  %.not.i17.i = icmp eq i8 %i.bl, -2
  br i1 %.not.i17.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.bm = add i8 %i.bl, -1
  store i8 %i.bm, ptr %i.bk, align 1, !tbaa !49
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %i.bn = add i64 %i.au, %.01126.i                ; 2 uses
  %i.bo = and i64 %i.bn, %i.ax
  %i.bp = shl nuw nsw i64 %i.bo, 7                ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bp
  %i.br = icmp eq ptr %i.bq, %i.ao
  br i1 %i.br, label %.thread.i, label %.lr.ph.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmE.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPNS_9EventBaseEE8clearTagEm.exit.i, %.thread.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE30cleanupTokenlessSharedDeferredERj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define noundef ptr @_ZN5folly6detail18EventBaseLocalBase7getVoidERNS_9EventBaseE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(632) %1) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 2 uses
  %i.c = shl i64 %.sroa.2.0.copyload.i, 1
  %i.d = or disjoint i64 %i.c, 1
  %i.e = trunc i64 %.sroa.2.0.copyload.i to i8
  %i.f = insertelement <16 x i8> poison, i8 %i.e, i64 0
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.i = load i64, ptr %i.h, align 16, !tbaa !24
  %i.j = and i64 %i.i, 255                        ; 2 uses
  %i.k = shl nuw i64 1, %i.j
  %notmask.i = shl nsw i64 -1, %i.j
  %i.l = xor i64 %notmask.i, -1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55
  %i.o = load ptr, ptr %i.a, align 16
  %i.p = load i64, ptr %0, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %.023.i50 = phi i64 [ %i.k, %bb.a ], [ %i.ap, %bb.d ]
  %.025.i49 = phi i64 [ %.sroa.0.0.copyload.i, %bb.a ], [ %i.aq, %bb.d ] ; 2 uses
  %i.q = and i64 %.025.i49, %i.l
  %i.r = shl nuw nsw i64 %i.q, 6
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.r ; 3 uses
  %i.t = load <16 x i8>, ptr %i.s, align 16       ; 2 uses
  %i.u = icmp eq <16 x i8> %i.t, %i.g
  %i.v = bitcast <16 x i1> %i.u to i16
  %i.w = zext i16 %i.v to i32                     ; 2 uses
  %i.x = and i32 %i.w, 4095
  %.not = icmp eq i32 %i.x, 0
  %i.y = extractelement <16 x i8> %i.t, i64 15
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.z = icmp ne ptr %i.s, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.z)
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.014.0 = phi i32 [ %i.am, %.critedge.i ], [ %i.w, %.preheader ] ; 4 uses
  %i.aa = icmp ne i32 %.sroa.014.0, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.014.0, i1 true)
  %i.ac = shl nuw nsw i32 %i.ab, 2
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr i8, ptr %i.s, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 16
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !19
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.ah ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !34
  %i.ak = icmp eq i64 %i.p, %i.aj
  br i1 %i.ak, label %bb.e, label %.critedge.i, !prof !20

.critedge.i:                                      ; preds = %bb.c
  %i.al = add nsw i32 %.sroa.014.0, -1
  %i.am = and i32 %i.al, %.sroa.014.0             ; 2 uses
  %i.an = and i32 %i.am, 4094
  %.not46 = icmp eq i32 %i.an, 0
  br i1 %.not46, label %.loopexit, label %bb.c, !llvm.loop !2

.loopexit:                                        ; preds = %.critedge.i, %bb.b
  %i.ao = icmp eq i8 %i.y, 0
  br i1 %i.ao, label %.thread25, label %bb.d, !prof !20

bb.d:                                             ; preds = %.loopexit
  %i.ap = add i64 %.023.i50, -1                   ; 2 uses
  %i.aq = add i64 %i.d, %.025.i49
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %.thread25, label %bb.b, !llvm.loop !3

bb.e:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !56
  br label %.thread25

.thread25:                                        ; preds = %bb.d, %.loopexit, %bb.e
  %i.at = phi ptr [ %i.as, %bb.e ], [ null, %.loopexit ], [ null, %bb.d ]
  ret ptr %i.at
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly6detail18EventBaseLocalBase5eraseERNS_9EventBaseE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 16 dereferenceable(632) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %4 = alloca %"class.folly::LockedPtr.132", align 8 ; 7 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %"class.folly::LockedPtr", align 8  ; 7 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.h = tail call noundef i64 @_ZN5folly3f146detail16F14VectorMapImplImSt10unique_ptrIvPFvPvEENS_23HeterogeneousAccessHashImvEENS_26HeterogeneousAccessEqualToImvEESaISt4pairIKmS7_EESt17integral_constantIbLb1EEE18eraseUnderlyingKeyImRKNS_16variadic_noop_fnEEEmRKT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5folly13variadic_noopE) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 592 ; 4 uses
  store ptr %i.i, ptr %4, align 8, !tbaa !42, !alias.scope !123
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i8 0, ptr %i.j, align 8, !tbaa !39, !alias.scope !123
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6, !noalias !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6, !noalias !123
  %i.k = load atomic i32, ptr %i.i acquire, align 16, !noalias !123 ; 4 uses
  store i32 %i.k, ptr %i.d, align 4, !tbaa !19, !noalias !123
  %i.l = and i32 %i.k, -1312
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %.critedge.i.i.i.i.i.i, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.n = or disjoint i32 %i.k, 128
  %i.o = cmpxchg ptr %i.i, i32 %i.k, i32 %i.n seq_cst seq_cst, align 4, !noalias !123 ; 2 uses
  %i.p = extractvalue { i32, i1 } %i.o, 1
  br i1 %i.p, label %bb.c, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, !prof !21

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.q = extractvalue { i32, i1 } %i.o, 0
  store i32 %i.q, ptr %i.d, align 4, !noalias !123
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, %bb.a
  %i.r = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %3), !noalias !123 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6, !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6, !noalias !123
  store i8 1, ptr %i.j, align 8, !tbaa !39, !alias.scope !123
  %i.s = load ptr, ptr %4, align 8, !tbaa !42     ; 4 uses
  %.not.i.i = icmp eq ptr %i.s, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -24
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %.neg.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  store ptr %0, ptr %i.e, align 8, !tbaa !58
  %i.u = invoke noundef i64 @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE12eraseKeyIntoIS6_RKNS_16variadic_noop_fnEEEmRKT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5folly13variadic_noopE)
          to label %bb.d unwind label %bb.l       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.v = atomicrmw and ptr %i.s, i32 -401 seq_cst, align 4 ; 2 uses
  %i.w = and i32 %i.v, -401
  store i32 %i.w, ptr %i.c, align 4, !tbaa !19
  %i.x = and i32 %i.v, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetIPNS_6detail18EventBaseLocalBaseENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaIS5_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE1ELNS3_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.e, !prof !20

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 15)
          to label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetIPNS_6detail18EventBaseLocalBaseENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaIS5_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE1ELNS3_23SynchronizedMutexMethodE0EEEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #25
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetIPNS_6detail18EventBaseLocalBaseENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaIS5_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE1ELNS3_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store ptr %i.aa, ptr %5, align 8, !tbaa !42, !alias.scope !124
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i8 0, ptr %i.ab, align 8, !tbaa !39, !alias.scope !124
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6, !noalias !124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6, !noalias !124
  %i.ac = load atomic i32, ptr %i.aa acquire, align 8, !noalias !124 ; 4 uses
  store i32 %i.ac, ptr %i.b, align 4, !tbaa !19, !noalias !124
  %i.ad = and i32 %i.ac, -1312
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %.critedge.i.i.i.i.i.i13, !prof !20

bb.g:                                             ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetIPNS_6detail18EventBaseLocalBaseENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaIS5_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE1ELNS3_23SynchronizedMutexMethodE0EEEED2Ev.exit
  %i.af = or disjoint i32 %i.ac, 128
  %i.ag = cmpxchg ptr %i.aa, i32 %i.ac, i32 %i.af seq_cst seq_cst, align 4, !noalias !124 ; 2 uses
  %i.ah = extractvalue { i32, i1 } %i.ag, 1
  br i1 %i.ah, label %bb.h, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i14, !prof !21

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i14: ; preds = %bb.g
  %i.ai = extractvalue { i32, i1 } %i.ag, 0
  store i32 %i.ai, ptr %i.b, align 4, !noalias !124
  br label %.critedge.i.i.i.i.i.i13

.critedge.i.i.i.i.i.i13:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i14, %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetIPNS_6detail18EventBaseLocalBaseENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaIS5_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE1ELNS3_23SynchronizedMutexMethodE0EEEED2Ev.exit
  %i.aj = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %2), !noalias !124 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i.i.i.i.i.i13, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6, !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6, !noalias !124
  store i8 1, ptr %i.ab, align 8, !tbaa !39, !alias.scope !124
  %i.ak = load ptr, ptr %5, align 8, !tbaa !42    ; 4 uses
  %.not.i.i15 = icmp eq ptr %i.ak, null
  %.neg.i.i16 = select i1 %.not.i.i15, i64 0, i64 -24
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %.neg.i.i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  store ptr %1, ptr %i.f, align 8, !tbaa !29
  %i.am = invoke noundef i64 @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE12eraseKeyIntoIS5_RKNS_16variadic_noop_fnEEEmRKT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5folly13variadic_noopE)
          to label %bb.i unwind label %bb.m       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.an = atomicrmw and ptr %i.ak, i32 -401 seq_cst, align 4 ; 2 uses
  %i.ao = and i32 %i.an, -401
  store i32 %i.ao, ptr %i.a, align 4, !tbaa !19
  %i.ap = and i32 %i.an, 15
  %.not.i.i.i.i.i18 = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i.i.i18, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetIPNS_9EventBaseENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaIS4_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSG_22SynchronizedMutexLevelE1ELNSG_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.j, !prof !20

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.ak, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetIPNS_9EventBaseENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaIS4_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSG_22SynchronizedMutexLevelE1ELNSG_23SynchronizedMutexMethodE0EEEED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #25
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetIPNS_9EventBaseENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaIS4_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSG_22SynchronizedMutexLevelE1ELNSG_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  ret void

bb.l:                                             ; preds = %bb.c
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetIPNS_6detail18EventBaseLocalBaseENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaIS5_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE1ELNS3_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.n

bb.m:                                             ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetIPNS_9EventBaseENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaIS4_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSG_22SynchronizedMutexLevelE1ELNSG_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn10.pn = phi { ptr, i32 } [ %i.at, %bb.m ], [ %i.as, %bb.l ]
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetIPNS_6detail18EventBaseLocalBaseENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaIS5_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE1ELNS3_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !39, !range !40, !noundef !41
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !42     ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.f = atomicrmw and ptr %i.e, i32 -401 seq_cst, align 4 ; 2 uses
  %i.g = and i32 %i.f, -401
  store i32 %i.g, ptr %i.a, align 4, !tbaa !19
  %i.h = and i32 %i.f, 15
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i unwind label %bb.e

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #25
  unreachable

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly3f146detail16F14VectorMapImplImSt10unique_ptrIvPFvPvEENS_23HeterogeneousAccessHashImvEENS_26HeterogeneousAccessEqualToImvEESaISt4pairIKmS7_EESt17integral_constantIbLb1EEE18eraseUnderlyingKeyImRKNS_16variadic_noop_fnEEEmRKT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = icmp ult i64 %i.b, 256
  br i1 %i.c, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !34     ; 3 uses
  %i.e = zext i64 %i.d to i128
  %i.f = mul nuw i128 %i.e, 14181476777654086739
  %i.g = lshr i128 %i.f, 64
  %i.h = trunc nuw i128 %i.g to i64
  %i.i = mul i64 %i.d, -4265267296055464877
  %i.j = xor i64 %i.i, %i.h
  %i.k = mul i64 %i.j, -4265267296055464877       ; 2 uses
  %i.l = lshr i64 %i.k, 14
  %i.m = and i64 %i.l, 255
  %i.n = lshr i64 %i.k, 22
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1) ; 2 uses
  %i.o = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.p = or disjoint i64 %i.o, 1
  %i.q = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.r = insertelement <16 x i8> poison, i8 %i.q, i64 0
  %i.s = shufflevector <16 x i8> %i.r, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.t = and i64 %i.b, 255                        ; 2 uses
  %i.u = shl nuw i64 1, %i.t
  %notmask.i = shl nsw i64 -1, %i.t
  %i.v = xor i64 %notmask.i, -1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !55
  %i.y = load ptr, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.023.i.i42 = phi i64 [ %i.u, %bb.b ], [ %i.ay, %bb.e ]
  %.025.i.i41 = phi i64 [ %i.n, %bb.b ], [ %i.az, %bb.e ] ; 2 uses
  %i.z = and i64 %.025.i.i41, %i.v
  %i.aa = shl nuw nsw i64 %i.z, 6
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aa ; 3 uses
  %i.ac = load <16 x i8>, ptr %i.ab, align 16     ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.ac, %i.s
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = zext i16 %i.ae to i32                   ; 2 uses
  %i.ag = and i32 %i.af, 4095
  %.not = icmp eq i32 %i.ag, 0
  %i.ah = extractelement <16 x i8> %i.ac, i64 15
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.ai = icmp ne ptr %i.ab, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ai)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i.i
  %.sroa.05.0 = phi i32 [ %i.av, %.critedge.i.i ], [ %i.af, %.preheader ] ; 4 uses
  %i.aj = icmp ne i32 %.sroa.05.0, 0
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.05.0, i1 true)
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 2
  %i.an = getelementptr i8, ptr %i.ab, i64 %i.am  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !19
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !34
  %i.at = icmp eq i64 %i.d, %i.as
  br i1 %i.at, label %bb.f, label %.critedge.i.i, !prof !20

.critedge.i.i:                                    ; preds = %bb.d
  %i.au = add nsw i32 %.sroa.05.0, -1
  %i.av = and i32 %i.au, %.sroa.05.0              ; 2 uses
  %i.aw = and i32 %i.av, 4094
  %.not36 = icmp eq i32 %i.aw, 0
  br i1 %.not36, label %.loopexit, label %bb.d, !llvm.loop !2

.loopexit:                                        ; preds = %.critedge.i.i, %bb.c
  %i.ax = icmp eq i8 %i.ah, 0
  br i1 %i.ax, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.e, !prof !20

bb.e:                                             ; preds = %.loopexit
  %i.ay = add i64 %.023.i.i42, -1                 ; 2 uses
  %i.az = add i64 %i.p, %.025.i.i41
  %.not.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.c, !llvm.loop !3

bb.f:                                             ; preds = %bb.d
  %i.ba = getelementptr i8, ptr %i.an, i64 16
  tail call void @_ZN5folly3f146detail16F14VectorMapImplImSt10unique_ptrIvPFvPvEENS_23HeterogeneousAccessHashImvEENS_26HeterogeneousAccessEqualToImvEESaISt4pairIKmS7_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.ba, i64 %i.al, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread: ; preds = %.loopexit, %bb.e, %bb.a, %bb.f
  %.0 = phi i64 [ 1, %bb.f ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %.loopexit ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail16F14VectorMapImplImSt10unique_ptrIvPFvPvEENS_23HeterogeneousAccessHashImvEENS_26HeterogeneousAccessEqualToImvEESaISt4pairIKmS7_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon, align 8                ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !59     ; 3 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !19     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  store ptr %3, ptr %4, align 8, !tbaa !128
  call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapISB_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKmS8_EE_EEvSO_SQ_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56
  invoke void %i.h(ptr noundef nonnull %i.f)
          to label %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #25
  unreachable

_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit: ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !24   ; 2 uses
  %i.m = lshr i64 %i.l, 8                         ; 5 uses
  %.not = icmp eq i64 %i.m, %i.c
  br i1 %.not, label %_ZN5folly3f146detail21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKmS7_EEPSD_SG_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit
  %i.n = trunc i64 %i.m to i32
  %i.o = icmp ne i64 %i.m, 0
  call void @llvm.assume(i1 %i.o)
  %i.p = load ptr, ptr %0, align 8, !tbaa !59
  %i.q = and i64 %i.m, 4294967295
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !34   ; 2 uses
  %i.t = zext i64 %i.s to i128
  %i.u = mul nuw i128 %i.t, 14181476777654086739
  %i.v = lshr i128 %i.u, 64
  %i.w = trunc nuw i128 %i.v to i64
  %i.x = mul i64 %i.s, -4265267296055464877
  %i.y = xor i64 %i.x, %i.w
  %i.z = mul i64 %i.y, -4265267296055464877       ; 2 uses
  %i.aa = lshr i64 %i.z, 14
  %i.ab = and i64 %i.aa, 255
  %i.ac = lshr i64 %i.z, 22
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ab, i64 1) ; 2 uses
  %i.ad = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.ae = or disjoint i64 %i.ad, 1
  %i.af = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.ag = insertelement <16 x i8> poison, i8 %i.af, i64 0
  %i.ah = shufflevector <16 x i8> %i.ag, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ai = and i64 %i.l, 255
  %notmask.i = shl nsw i64 -1, %i.ai
  %i.aj = xor i64 %notmask.i, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !55
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.d
  %.025.i = phi i64 [ %i.ac, %bb.d ], [ %i.bg, %.loopexit ] ; 2 uses
  %i.am = and i64 %.025.i, %i.aj
  %i.an = shl nuw nsw i64 %i.am, 6
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an ; 3 uses
  %i.ap = load <16 x i8>, ptr %i.ao, align 16
  %i.aq = icmp eq <16 x i8> %i.ap, %i.ah
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = zext i16 %i.ar to i32                   ; 2 uses
  %i.at = and i32 %i.as, 4095
  %.not45 = icmp eq i32 %i.at, 0
  br i1 %.not45, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.au = icmp ne ptr %i.ao, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.au)
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.024.0 = phi i32 [ %i.be, %.critedge.i ], [ %i.as, %.preheader ] ; 4 uses
  %i.av = icmp ne i32 %.sroa.024.0, 0
  call void @llvm.assume(i1 %i.av)
  %i.aw = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.024.0, i1 true)
  %i.ax = shl nuw nsw i32 %i.aw, 2
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr i8, ptr %i.ao, i64 %i.ay  ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !19
  %i.bc = icmp eq i32 %i.bb, %i.n
  br i1 %i.bc, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSC_8PrefetchE.exit, label %.critedge.i, !prof !20

.critedge.i:                                      ; preds = %bb.f
  %i.bd = add nsw i32 %.sroa.024.0, -1
  %i.be = and i32 %i.bd, %.sroa.024.0             ; 2 uses
  %i.bf = and i32 %i.be, 4094
  %.not46 = icmp eq i32 %i.bf, 0
  br i1 %.not46, label %.loopexit, label %bb.f, !llvm.loop !125

.loopexit:                                        ; preds = %.critedge.i, %bb.e
  %i.bg = add i64 %i.ae, %.025.i
  br label %bb.e, !llvm.loop !126

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSC_8PrefetchE.exit: ; preds = %bb.f
  %i.bh = getelementptr i8, ptr %i.az, i64 16
  store i32 %i.b, ptr %i.bh, align 4, !tbaa !19
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.m ; 2 uses
  %i.bj = load <2 x i64>, ptr %i.bi, align 8, !tbaa !35
  store <2 x i64> %i.bj, ptr %i.d, align 8, !tbaa !35
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !56
  store i64 %i.bl, ptr %i.e, align 8, !tbaa !56
  store ptr null, ptr %i.bk, align 8, !tbaa !56
  br label %_ZN5folly3f146detail21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKmS7_EEPSD_SG_m.exit

_ZN5folly3f146detail21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKmS7_EEPSD_SG_m.exit: ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSC_8PrefetchE.exit, %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapISB_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKmS8_EE_EEvSO_SQ_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i = mul i64 %2, -4
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 %.neg.i.i ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 14 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2, !tbaa !61
  %.not = icmp ult i8 %i.d, 16
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !59
  %i.f = load i32, ptr %1, align 4, !tbaa !19
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !34   ; 2 uses
  %i.j = zext i64 %i.i to i128
  %i.k = mul nuw i128 %i.j, 14181476777654086739
  %i.l = lshr i128 %i.k, 64
  %i.m = trunc nuw i128 %i.l to i64
  %i.n = mul i64 %i.i, -4265267296055464877
  %i.o = xor i64 %i.n, %i.m
  %i.p = mul i64 %i.o, -4265267296055464877       ; 2 uses
  %i.q = lshr i64 %i.p, 14
  %i.r = and i64 %i.q, 255
  %i.s = lshr i64 %i.p, 22
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.t = shl nuw nsw i64 %.sroa.speculated.i.i, 1
  %i.u = or disjoint i64 %i.t, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0 = phi i64 [ 1, %bb.a ], [ %i.u, %bb.b ]
  %.sroa.04.0 = phi i64 [ 0, %bb.a ], [ %i.s, %bb.b ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !24
  %i.x = add i64 %i.w, -256
  store i64 %i.x, ptr %i.v, align 8, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 %2 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !35
  %.not.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i, label %bb.d, label %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.3) #27
  unreachable

_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i: ; preds = %bb.c
  store i8 0, ptr %i.y, align 1, !tbaa !35
  %i.aa = load i8, ptr %i.c, align 2, !tbaa !61
  %.not.i.i = icmp ult i8 %i.aa, 16
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !24
  %i.ac = and i64 %i.ab, 255
  %notmask.i.i.i = shl nsw i64 -1, %i.ac
  %i.ad = xor i64 %notmask.i.i.i, -1              ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !55 ; 4 uses
  %i.ag = and i64 %.sroa.04.0, %i.ad
  %i.ah = shl nuw nsw i64 %i.ag, 6                ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ah
  %i.aj = icmp eq ptr %i.ai, %i.b
  br i1 %i.aj, label %.thread.i.i, label %.lr.ph.i.i

.thread.i.i:                                      ; preds = %bb.g, %bb.e
  %.010.lcssa.i.i = phi i8 [ 0, %bb.e ], [ -16, %bb.g ]
  %i.ak = phi i64 [ %i.ah, %bb.e ], [ %i.aw, %bb.g ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 14 ; 2 uses
  %i.an = load i8, ptr %i.am, align 2, !tbaa !61
  %i.ao = add i8 %i.an, %.010.lcssa.i.i
  store i8 %i.ao, ptr %i.am, align 2, !tbaa !61
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.g
  %i.ap = phi i64 [ %i.aw, %bb.g ], [ %i.ah, %bb.e ]
  %.01126.i.i = phi i64 [ %i.au, %bb.g ], [ %.sroa.04.0, %bb.e ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 15 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !62  ; 2 uses
  %.not.i17.i.i = icmp eq i8 %i.as, -2
  br i1 %.not.i17.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.at = add i8 %i.as, -1
  store i8 %i.at, ptr %i.ar, align 1, !tbaa !62
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.au = add i64 %.01126.i.i, %.sroa.5.0         ; 2 uses
  %i.av = and i64 %i.au, %i.ad
  %i.aw = shl nuw nsw i64 %i.av, 6                ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aw
  %i.ay = icmp eq ptr %i.ax, %i.b
  br i1 %i.ay, label %.thread.i.i, label %.lr.ph.i.i

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i, %.thread.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE12eraseKeyIntoIS6_RKNS_16variadic_noop_fnEEEmRKT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = icmp ult i64 %i.b, 256
  br i1 %i.c, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE8findImplIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmERKT_NS8_8PrefetchE.exit.thread, label %bb.b, !prof !45

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !58     ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = zext i64 %i.e to i128
  %i.g = mul nuw i128 %i.f, 14181476777654086739
  %i.h = lshr i128 %i.g, 64
  %i.i = trunc nuw i128 %i.h to i64
  %i.j = mul i64 %i.e, -4265267296055464877
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, -4265267296055464877       ; 2 uses
  %i.m = lshr i64 %i.l, 14
  %i.n = and i64 %i.m, 255
  %i.o = lshr i64 %i.l, 22                        ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1) ; 3 uses
  %i.p = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.q = or disjoint i64 %i.p, 1
  %i.r = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.s = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.u = and i64 %i.b, 255                        ; 2 uses
  %i.v = shl nuw i64 1, %i.u
  %notmask.i = shl nsw i64 -1, %i.u
  %i.w = xor i64 %notmask.i, -1
  %i.x = load ptr, ptr %0, align 8, !tbaa !67
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.024.i42 = phi i64 [ %i.v, %bb.b ], [ %i.av, %bb.e ]
  %.026.i41 = phi i64 [ %i.o, %bb.b ], [ %i.aw, %bb.e ] ; 2 uses
  %i.y = and i64 %.026.i41, %i.w
  %i.z = shl nuw nsw i64 %i.y, 7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z ; 4 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 80
  tail call void @llvm.prefetch.p0(ptr %i.ab, i32 0, i32 3, i32 1)
  %i.ac = load <16 x i8>, ptr %i.aa, align 16     ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.ac, %i.t
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = zext i16 %i.ae to i32                   ; 2 uses
  %i.ag = and i32 %i.af, 16383
  %.not = icmp eq i32 %i.ag, 0
  %i.ah = extractelement <16 x i8> %i.ac, i64 15
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.ai = icmp ne ptr %i.aa, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ai)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.012.0 = phi i32 [ %i.as, %.critedge.i ], [ %i.af, %.preheader ] ; 4 uses
  %i.aj = icmp ne i32 %.sroa.012.0, 0
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.012.0, i1 true)
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = getelementptr i8, ptr %i.aa, i64 %i.am  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !58
  %i.aq = icmp eq ptr %i.d, %i.ap
  br i1 %i.aq, label %bb.f, label %.critedge.i, !prof !20

.critedge.i:                                      ; preds = %bb.d
  %i.ar = add nsw i32 %.sroa.012.0, -1
  %i.as = and i32 %i.ar, %.sroa.012.0             ; 2 uses
  %i.at = and i32 %i.as, 16382
  %.not36 = icmp eq i32 %i.at, 0
  br i1 %.not36, label %.loopexit, label %bb.d, !llvm.loop !4

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.au = icmp eq i8 %i.ah, 0
  br i1 %i.au, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE8findImplIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmERKT_NS8_8PrefetchE.exit.thread, label %bb.e, !prof !20

bb.e:                                             ; preds = %.loopexit
  %i.av = add i64 %.024.i42, -1                   ; 2 uses
  %i.aw = add i64 %i.q, %.026.i41
  %.not.i = icmp eq i64 %i.av, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE8findImplIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmERKT_NS8_8PrefetchE.exit.thread, label %bb.c, !llvm.loop !5

bb.f:                                             ; preds = %bb.d
  %i.ax = getelementptr i8, ptr %i.an, i64 16
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.ax, i64 %i.al, i64 %i.o, i64 %.sroa.speculated.i.i.i)
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE8findImplIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmERKT_NS8_8PrefetchE.exit.thread

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE8findImplIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmERKT_NS8_8PrefetchE.exit.thread: ; preds = %.loopexit, %bb.e, %bb.f, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ 1, %bb.f ], [ 0, %bb.e ], [ 0, %.loopexit ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24
  %i.c = add i64 %i.b, -256                       ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !24
  %i.d = and i64 %2, 255                          ; 2 uses
  %i.e = icmp samesign ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.e)
  %i.f = lshr i64 %i.d, 1
  %i.g = ptrtoint ptr %1 to i64
  %i.h = or i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !68
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %i.c, 256
  br i1 %i.l, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPNS_6detail18EventBaseLocalBaseEEEE17precheckedAdvanceEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i.i = mul i64 %2, -8
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %.neg.i.i.i.i ; 2 uses
  %.not19.i4.i.i = icmp eq i64 %2, 0
  br i1 %.not19.i4.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

.critedge.i.i.i.preheader:                        ; preds = %bb.d, %bb.c
  br label %.critedge.i.i.i

bb.d:                                             ; preds = %thread-pre-split.i.i
  %.not19.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not19.i.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %bb.c, %bb.d
  %i.o = phi i64 [ %i.q, %bb.d ], [ %2, %bb.c ]
  %i.p = phi ptr [ %i.r, %bb.d ], [ %1, %bb.c ]
  %i.q = add i64 %i.o, -1                         ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.t = load i8, ptr %i.s, align 1, !tbaa !35
  %.not.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPNS_6detail18EventBaseLocalBaseEEEE17precheckedAdvanceEv.exit.i, !prof !45, !llvm.loop !129

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.preheader, %.critedge.i.i.i
  %.017.i.i.i = phi ptr [ %i.u, %.critedge.i.i.i ], [ %i.n, %.critedge.i.i.i.preheader ]
  %i.u = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -128 ; 4 uses
  %i.v = load <16 x i8>, ptr %i.u, align 16, !tbaa !35
  %i.w = icmp eq <16 x i8> %i.v, zeroinitializer
  %i.x = bitcast <16 x i1> %i.w to i16
  %i.y = and i16 %i.x, 16383                      ; 2 uses
  %.not2.i.i = icmp eq i16 %i.y, 16383
  br i1 %.not2.i.i, label %.critedge.i.i.i, label %bb.e, !prof !45, !llvm.loop !130

bb.e:                                             ; preds = %.critedge.i.i.i
  %i.z = xor i16 %i.y, 16383
  %i.aa = zext nneg i16 %i.z to i32
  %i.ab = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aa, i1 true)
  %i.ac = xor i32 %i.ab, 31
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = icmp ne ptr %i.u, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = shl nuw nsw i64 %i.ad, 3
  %i.ag = getelementptr i8, ptr %i.u, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 16
  br label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPNS_6detail18EventBaseLocalBaseEEEE17precheckedAdvanceEv.exit.i

_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPNS_6detail18EventBaseLocalBaseEEEE17precheckedAdvanceEv.exit.i: ; preds = %thread-pre-split.i.i, %bb.e, %bb.b
  %.sroa.01.0.i = phi ptr [ null, %bb.b ], [ %i.ah, %bb.e ], [ %i.r, %thread-pre-split.i.i ]
  %.sroa.7.0.i = phi i64 [ 0, %bb.b ], [ %i.ad, %bb.e ], [ %i.q, %thread-pre-split.i.i ]
  %i.ai = and i64 %.sroa.7.0.i, 255               ; 2 uses
  %i.aj = icmp samesign ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = lshr i64 %i.ai, 1
  %i.al = ptrtoint ptr %.sroa.01.0.i to i64
  %i.am = or i64 %i.ak, %i.al
  store i64 %i.am, ptr %i.i, align 8, !tbaa !34
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEE.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEE.exit: ; preds = %bb.a, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPNS_6detail18EventBaseLocalBaseEEEE17precheckedAdvanceEv.exit.i
  %i.an = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i = mul i64 %2, -8
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %.neg.i.i.i ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %2 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !35
  %.not.i.i7 = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i7, label %bb.f, label %_ZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE8clearTagEm.exit.i

bb.f:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEE.exit
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.3) #27
  unreachable

_ZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE8clearTagEm.exit.i: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEE.exit
  store i8 0, ptr %i.ap, align 1, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 14
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !70
  %.not.i = icmp ult i8 %i.as, 16
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE8clearTagEm.exit.i
  %i.at = shl i64 %4, 1
  %i.au = or disjoint i64 %i.at, 1
  %i.av = load i64, ptr %i.a, align 8, !tbaa !24
  %i.aw = and i64 %i.av, 255
  %notmask.i.i = shl nsw i64 -1, %i.aw
  %i.ax = xor i64 %notmask.i.i, -1                ; 2 uses
  %i.ay = load ptr, ptr %0, align 8, !tbaa !67    ; 4 uses
  %i.az = and i64 %3, %i.ax
  %i.ba = shl nuw nsw i64 %i.az, 7                ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ba
  %i.bc = icmp eq ptr %i.bb, %i.ao
  br i1 %i.bc, label %.thread.i, label %.lr.ph.i

.thread.i:                                        ; preds = %bb.i, %bb.g
  %.010.lcssa.i = phi i8 [ 0, %bb.g ], [ -16, %bb.i ]
  %i.bd = phi i64 [ %i.ba, %bb.g ], [ %i.bp, %bb.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 14 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !70
  %i.bh = add i8 %i.bg, %.010.lcssa.i
  store i8 %i.bh, ptr %i.bf, align 2, !tbaa !70
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %i.bi = phi i64 [ %i.bp, %bb.i ], [ %i.ba, %bb.g ]
  %.01126.i = phi i64 [ %i.bn, %bb.i ], [ %3, %bb.g ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 15 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !71  ; 2 uses
  %.not.i17.i = icmp eq i8 %i.bl, -2
  br i1 %.not.i17.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.bm = add i8 %i.bl, -1
  store i8 %i.bm, ptr %i.bk, align 1, !tbaa !71
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %i.bn = add i64 %i.au, %.01126.i                ; 2 uses
  %i.bo = and i64 %i.bn, %i.ax
  %i.bp = shl nuw nsw i64 %i.bo, 7                ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bp
  %i.br = icmp eq ptr %i.bq, %i.ao
  br i1 %i.br, label %.thread.i, label %.lr.ph.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmE.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE8clearTagEm.exit.i, %.thread.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5folly6detail18EventBaseLocalBase13tryDeregisterERNS_9EventBaseE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 16 dereferenceable(632) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %2 = alloca %"struct.folly::SharedMutexImpl<false>::WaitNever", align 1 ; 4 uses
  %3 = alloca %"class.folly::LockedPtr.137", align 8 ; 9 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !42, !alias.scope !133
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6, !noalias !133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6, !noalias !133
  %i.e = load atomic i32, ptr %i.d acquire, align 8, !noalias !133 ; 4 uses
  store i32 %i.e, ptr %i.b, align 4, !tbaa !19, !noalias !133
  %i.f = and i32 %i.e, -1312
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_10F14FastSetIPNS_9EventBaseENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaIS4_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE8tryWLockEv.exit, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.h = or disjoint i32 %i.e, 128
  %i.i = cmpxchg ptr %i.d, i32 %i.e, i32 %i.h seq_cst seq_cst, align 4, !noalias !133 ; 2 uses
  %i.j = extractvalue { i32, i1 } %i.i, 1
  br i1 %i.j, label %_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_10F14FastSetIPNS_9EventBaseENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaIS4_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE8tryWLockEv.exit.thread, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i, !prof !21

_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_10F14FastSetIPNS_9EventBaseENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaIS4_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE8tryWLockEv.exit.thread: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6, !noalias !133
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6, !noalias !133
  store i8 1, ptr %i.k, align 8, !tbaa !39, !alias.scope !133
  br label %bb.c

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.l = extractvalue { i32, i1 } %i.i, 0
  store i32 %i.l, ptr %i.b, align 4, !noalias !133
  br label %_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_10F14FastSetIPNS_9EventBaseENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaIS4_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE8tryWLockEv.exit

_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_10F14FastSetIPNS_9EventBaseENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaIS4_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE8tryWLockEv.exit: ; preds = %bb.a, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i
  %i.m = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_9WaitNeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %2), !noalias !133 ; 2 uses
  %i.n = zext i1 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6, !noalias !133
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6, !noalias !133
  store i8 %i.n, ptr %i.o, align 8, !tbaa !39, !alias.scope !133
  br i1 %i.m, label %bb.c, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetIPNS_9EventBaseENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaIS4_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSG_22SynchronizedMutexLevelE1ELNSG_23SynchronizedMutexMethodE1EEEED2Ev.exit

bb.c:                                             ; preds = %_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_10F14FastSetIPNS_9EventBaseENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaIS4_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE8tryWLockEv.exit, %_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_10F14FastSetIPNS_9EventBaseENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaIS4_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE8tryWLockEv.exit.thread
  %i.p = phi ptr [ %i.k, %_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_10F14FastSetIPNS_9EventBaseENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaIS4_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE8tryWLockEv.exit.thread ], [ %i.o, %_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_10F14FastSetIPNS_9EventBaseENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaIS4_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE8tryWLockEv.exit ]
  %i.q = load ptr, ptr %3, align 8, !tbaa !42     ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -24
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store ptr %1, ptr %i.c, align 8, !tbaa !29
  %i.s = invoke noundef i64 @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE12eraseKeyIntoIS5_RKNS_16variadic_noop_fnEEEmRKT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5folly13variadic_noopE)
          to label %bb.e unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetIPNS_9EventBaseENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaIS4_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSG_22SynchronizedMutexLevelE1ELNSG_23SynchronizedMutexMethodE1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  resume { ptr, i32 } %i.t

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  %.pre = load i8, ptr %i.p, align 8, !tbaa !39, !range !40
  %i.u = trunc nuw i8 %.pre to i1
  br i1 %i.u, label %bb.f, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetIPNS_9EventBaseENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaIS4_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSG_22SynchronizedMutexLevelE1ELNSG_23SynchronizedMutexMethodE1EEEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %3, align 8, !tbaa !42     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetIPNS_9EventBaseENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaIS4_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSG_22SynchronizedMutexLevelE1ELNSG_23SynchronizedMutexMethodE1EEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.w = atomicrmw and ptr %i.v, i32 -401 seq_cst, align 4 ; 2 uses
  %i.x = and i32 %i.w, -401
  store i32 %i.x, ptr %i.a, align 4, !tbaa !19
  %i.y = and i32 %i.w, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i, label %bb.h, !prof !20

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i unwind label %bb.i

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetIPNS_9EventBaseENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaIS4_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSG_22SynchronizedMutexLevelE1ELNSG_23SynchronizedMutexMethodE1EEEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #25
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetIPNS_9EventBaseENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaIS4_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSG_22SynchronizedMutexLevelE1ELNSG_23SynchronizedMutexMethodE1EEEED2Ev.exit: ; preds = %_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_10F14FastSetIPNS_9EventBaseENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaIS4_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE8tryWLockEv.exit, %bb.e, %bb.f, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i
  %i.ab = phi i1 [ true, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i ], [ true, %bb.e ], [ true, %bb.f ], [ false, %_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_10F14FastSetIPNS_9EventBaseENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaIS4_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE8tryWLockEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret i1 %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetIPNS_9EventBaseENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaIS4_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSG_22SynchronizedMutexLevelE1ELNSG_23SynchronizedMutexMethodE1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !39, !range !40, !noundef !41
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !42     ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.f = atomicrmw and ptr %i.e, i32 -401 seq_cst, align 4 ; 2 uses
  %i.g = and i32 %i.f, -401
  store i32 %i.g, ptr %i.a, align 4, !tbaa !19
  %i.h = and i32 %i.f, 15
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i unwind label %bb.e

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #25
  unreachable

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_9WaitNeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE21wakeRegisteredWaitersERjj.exit, %bb.a
  %.025 = phi i1 [ undef, %bb.a ], [ %.2, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE21wakeRegisteredWaitersERjj.exit ]
  %i.a = load i32, ptr %1, align 4, !tbaa !19     ; 2 uses
  %i.b = and i32 %i.a, %2
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_9WaitNeverEEEbRjjjRT_.exit.thread, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef i64 @llvm.x86.rdtsc()
  %i.d = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.d, ptr %1, align 4, !tbaa !19
  %i.e = and i32 %i.d, %2
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_9WaitNeverEEEbRjjjRT_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %i.g = tail call noundef i64 @llvm.x86.rdtsc()
  %i.h = sub i64 %i.g, %i.c
  %i.i = icmp ult i64 %i.h, 4000
  br i1 %i.i, label %bb.d, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_9WaitNeverEEEbRjjjRT_.exit, !prof !20

bb.d:                                             ; preds = %.lr.ph.i
  tail call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !43
  %i.j = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.j, ptr %1, align 4, !tbaa !19
  %i.k = and i32 %i.j, %2
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_9WaitNeverEEEbRjjjRT_.exit.thread, label %.lr.ph.i, !llvm.loop !134

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_9WaitNeverEEEbRjjjRT_.exit.thread: ; preds = %bb.d, %bb.c, %bb.b
  %i.m = phi i32 [ %i.a, %bb.b ], [ %i.d, %bb.c ], [ %i.j, %bb.d ] ; 3 uses
  %i.n = lshr i32 %i.m, 1
  %i.o = and i32 %i.n, 256
  %i.p = and i32 %i.m, -673
  %i.q = or i32 %i.p, %i.o
  %i.r = or disjoint i32 %i.q, 128                ; 3 uses
  %i.s = cmpxchg ptr %0, i32 %i.m, i32 %i.r seq_cst seq_cst, align 4 ; 2 uses
  %i.t = extractvalue { i32, i1 } %i.s, 1         ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5folly6detail18EventBaseLocalBase7setVoidERNS_9EventBaseEPvPFvS4_E:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #6
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 592 ; 4 uses
  store ptr %i.ao, ptr %13, align 8, !tbaa !42, !alias.scope !170
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i8 0, ptr %i.ap, align 8, !tbaa !39, !alias.scope !170
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6, !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6, !noalias !170
  %i.aq = load atomic i32, ptr %i.ao acquire, align 16, !noalias !170 ; 4 uses
  store i32 %i.aq, ptr %i.b, align 4, !tbaa !19, !noalias !170
  %i.ar = and i32 %i.aq, -1312
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.h, label %.critedge.i.i.i.i.i.i21, !prof !20

bb.h:                                             ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetIPNS_9EventBaseENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaIS4_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSG_22SynchronizedMutexLevelE1ELNSG_23SynchronizedMutexMethodE0EEEED2Ev.exit
  %i.at = or disjoint i32 %i.aq, 128
  %i.au = cmpxchg ptr %i.ao, i32 %i.aq, i32 %i.at seq_cst seq_cst, align 4, !noalias !170 ; 2 uses
  %i.av = extractvalue { i32, i1 } %i.au, 1
  br i1 %i.av, label %bb.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i22, !prof !21

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i22: ; preds = %bb.h
  %i.aw = extractvalue { i32, i1 } %i.au, 0
  store i32 %i.aw, ptr %i.b, align 4, !noalias !170
  br label %.critedge.i.i.i.i.i.i21

.critedge.i.i.i.i.i.i21:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i22, %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetIPNS_9EventBaseENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaIS4_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSG_22SynchronizedMutexLevelE1ELNSG_23SynchronizedMutexMethodE0EEEED2Ev.exit
  %i.ax = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.i unwind label %bb.q       ; 0 uses

bb.i:                                             ; preds = %.critedge.i.i.i.i.i.i21, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6, !noalias !170
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6, !noalias !170
  store i8 1, ptr %i.ap, align 8, !tbaa !39, !alias.scope !170
  %i.ay = load ptr, ptr %13, align 8, !tbaa !42   ; 4 uses
  %.not.i.i24 = icmp eq ptr %i.ay, null
  %.neg.i.i25 = select i1 %.not.i.i24, i64 0, i64 -24
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %.neg.i.i25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  store ptr %0, ptr %i.f, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6, !noalias !171
  %i.ba = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.bb = zext i64 %i.ba to i128
  %i.bc = mul nuw i128 %i.bb, 14181476777654086739
  %i.bd = lshr i128 %i.bc, 64
  %i.be = trunc nuw i128 %i.bd to i64
  %i.bf = mul i64 %i.ba, -4265267296055464877
  %i.bg = xor i64 %i.bf, %i.be
  %i.bh = mul i64 %i.bg, -4265267296055464877     ; 2 uses
  %i.bi = lshr i64 %i.bh, 14
  %i.bj = and i64 %i.bi, 255
  %i.bk = lshr i64 %i.bh, 22
  %.sroa.speculated.i.i.i.i.i.i.i.i26 = call i64 @llvm.umax.i64(i64 %i.bj, i64 1)
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE19tryEmplaceValueImplIS6_JS6_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEEbESA_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.179") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 %i.bk, i64 %.sroa.speculated.i.i.i.i.i.i.i.i26, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6, !noalias !171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.bl = atomicrmw and ptr %i.ay, i32 -401 seq_cst, align 4 ; 2 uses
  %i.bm = and i32 %i.bl, -401
  store i32 %i.bm, ptr %i.a, align 4, !tbaa !19
  %i.bn = and i32 %i.bl, 15
  %.not.i.i.i.i.i33 = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i.i.i.i33, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetIPNS_6detail18EventBaseLocalBaseENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaIS5_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE1ELNS3_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.ay, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetIPNS_6detail18EventBaseLocalBaseENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaIS5_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE1ELNS3_23SynchronizedMutexMethodE0EEEED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #25
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetIPNS_6detail18EventBaseLocalBaseENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaIS5_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE1ELNS3_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #6
  br label %bb.t

bb.m:                                             ; preds = %bb.a
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.n:                                             ; preds = %.critedge.i.i.i.i.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.d
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetIPNS_9EventBaseENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaIS4_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSG_22SynchronizedMutexLevelE1ELNSG_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #6
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.bs, %bb.o ], [ %i.br, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  br label %bb.w

bb.q:                                             ; preds = %.critedge.i.i.i.i.i.i21
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetIPNS_6detail18EventBaseLocalBaseENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaIS5_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE1ELNS3_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #6
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn15.pn = phi { ptr, i32 } [ %i.bu, %bb.r ], [ %i.bt, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #6
  br label %bb.w

bb.t:                                             ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetIPNS_6detail18EventBaseLocalBaseENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaIS5_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE1ELNS3_23SynchronizedMutexMethodE0EEEED2Ev.exit, %.noexc
  %i.bv = load ptr, ptr %i.g, align 8, !tbaa !56  ; 2 uses
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIvPFvPvEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = load ptr, ptr %11, align 8, !tbaa !56
  invoke void %i.bw(ptr noundef nonnull %i.bv)
          to label %_ZNSt10unique_ptrIvPFvPvEED2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #25
  unreachable

_ZNSt10unique_ptrIvPFvPvEED2Ev.exit:              ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  ret void

bb.w:                                             ; preds = %bb.s, %bb.p, %bb.m
  %.pn15.pn.pn = phi { ptr, i32 } [ %.pn15.pn, %bb.s ], [ %.pn.pn, %bb.p ], [ %i.bq, %bb.m ]
  %i.bz = load ptr, ptr %i.g, align 8, !tbaa !56  ; 2 uses
  %.not.i35 = icmp eq ptr %i.bz, null
  br i1 %.not.i35, label %_ZNSt10unique_ptrIvPFvPvEED2Ev.exit36, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ca = load ptr, ptr %11, align 8, !tbaa !56
  invoke void %i.ca(ptr noundef nonnull %i.bz)
          to label %_ZNSt10unique_ptrIvPFvPvEED2Ev.exit36 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #25
  unreachable

_ZNSt10unique_ptrIvPFvPvEED2Ev.exit36:            ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  resume { ptr, i32 } %.pn15.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplImJRKSt21piecewise_construct_tSt5tupleIJRKmEESH_IJOS8_EEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESN_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.148") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread69_crit_edge, label %bb.b

..thread69_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !55
  %.pre92 = shl nuw i64 1, %i.b
  br label %.thread69

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %notmask.i = shl nsw i64 -1, %i.i
  %i.k = xor i64 %notmask.i, -1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55   ; 3 uses
  %i.n = load ptr, ptr %1, align 8
  %i.o = load i64, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.023.i82 = phi i64 [ %i.j, %bb.b ], [ %i.ao, %bb.e ]
  %.025.i81 = phi i64 [ %2, %bb.b ], [ %i.ap, %bb.e ] ; 2 uses
  %i.p = and i64 %.025.i81, %i.k
  %i.q = shl nuw nsw i64 %i.p, 6
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.q ; 3 uses
  %i.s = load <16 x i8>, ptr %i.r, align 16       ; 2 uses
  %i.t = icmp eq <16 x i8> %i.s, %i.h
  %i.u = bitcast <16 x i1> %i.t to i16
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = and i32 %i.v, 4095
  %.not71 = icmp eq i32 %i.w, 0
  %i.x = extractelement <16 x i8> %i.s, i64 15
  br i1 %.not71, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.y = icmp ne ptr %i.r, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.y)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.044.0 = phi i32 [ %i.al, %.critedge.i ], [ %i.v, %.preheader ] ; 4 uses
  %i.z = icmp ne i32 %.sroa.044.0, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0, i1 true)
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = shl nuw nsw i64 %i.ab, 2
  %i.ad = getelementptr i8, ptr %i.r, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !19
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !34
  %i.aj = icmp eq i64 %i.o, %i.ai
  br i1 %i.aj, label %bb.f, label %.critedge.i, !prof !20

.critedge.i:                                      ; preds = %bb.d
  %i.ak = add nsw i32 %.sroa.044.0, -1
  %i.al = and i32 %i.ak, %.sroa.044.0             ; 2 uses
  %i.am = and i32 %i.al, 4094
  %.not72 = icmp eq i32 %i.am, 0
  br i1 %.not72, label %.loopexit, label %bb.d, !llvm.loop !2

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.an = icmp eq i8 %i.x, 0
  br i1 %i.an, label %.thread69, label %bb.e, !prof !20

bb.e:                                             ; preds = %.loopexit
  %i.ao = add i64 %.023.i82, -1                   ; 2 uses
  %i.ap = add i64 %i.e, %.025.i81
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %.thread69, label %bb.c, !llvm.loop !3

bb.f:                                             ; preds = %bb.d
  %i.aq = getelementptr i8, ptr %i.ad, i64 16
  br label %bb.n

.thread69:                                        ; preds = %bb.e, %.loopexit, %..thread69_crit_edge
  %.pre-phi93 = phi i64 [ %.pre92, %..thread69_crit_edge ], [ %i.j, %.loopexit ], [ %i.j, %bb.e ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread69_crit_edge ], [ %i.i, %.loopexit ], [ %i.i, %bb.e ]
  %i.ar = phi ptr [ %.pre, %..thread69_crit_edge ], [ %i.m, %.loopexit ], [ %i.m, %bb.e ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %.0.copyload.i.i = load i16, ptr %i.as, align 1
  %i.at = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.au = add i64 %.pre-phi93, -1
  %i.av = lshr i64 %i.au, 12
  %i.aw = add nuw nsw i64 %i.av, 1
  %i.ax = mul i64 %i.aw, %i.at                    ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.ax
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread69
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi93, i64 noundef %i.at, i64 noundef %i.ax)
  %.pre89 = load i64, ptr %i.a, align 8, !tbaa !24
  %.pre90 = load ptr, ptr %i.ay, align 8, !tbaa !55
  %.pre94 = and i64 %.pre89, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread69, %bb.g
  %.pre-phi95 = phi i64 [ %.pre-phi, %.thread69 ], [ %.pre94, %bb.g ]
  %i.az = phi ptr [ %i.ar, %.thread69 ], [ %.pre90, %bb.g ] ; 4 uses
  %notmask.i33 = shl nsw i64 -1, %.pre-phi95
  %i.ba = xor i64 %notmask.i33, -1                ; 2 uses
  %i.bb = and i64 %2, %i.ba
  %i.bc = shl nuw nsw i64 %i.bb, 6                ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bc ; 2 uses
  %i.be = load <16 x i8>, ptr %i.bd, align 16, !tbaa !35
  %i.bf = icmp eq <16 x i8> %i.be, zeroinitializer
  %i.bg = bitcast <16 x i1> %i.bf to i16
  %i.bh = and i16 %i.bg, 4095                     ; 2 uses
  %.not73 = icmp eq i16 %i.bh, 0
  br i1 %.not73, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.bi = shl i64 %3, 1
  %i.bj = or disjoint i64 %i.bi, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bk = phi i64 [ %i.bc, %bb.h ], [ %i.br, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.bp, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 15 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !62  ; 2 uses
  %.not.i34 = icmp eq i8 %i.bn, -2
  br i1 %.not.i34, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = add i8 %i.bn, 1
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !62
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.bp = add i64 %i.bj, %.030                    ; 2 uses
  %i.bq = and i64 %i.bp, %i.ba
  %i.br = shl nuw nsw i64 %i.bq, 6                ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.br
  %i.bt = load <16 x i8>, ptr %i.bs, align 16     ; 2 uses
  %i.bu = icmp eq <16 x i8> %i.bt, zeroinitializer
  %i.bv = bitcast <16 x i1> %i.bu to i16
  %i.bw = and i16 %i.bv, 4095                     ; 2 uses
  %.not74 = icmp eq i16 %i.bw, 0
  br i1 %.not74, label %bb.i, label %bb.k, !llvm.loop !172

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.br ; 2 uses
  %i.by = extractelement <16 x i8> %i.bt, i64 14
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 14
  %i.ca = add i8 %i.by, 16
  store i8 %i.ca, ptr %i.bz, align 2, !tbaa !61
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.038.0.in = phi i16 [ %i.bh, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bw, %bb.k ]
  %.1 = phi ptr [ %i.bd, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bx, %bb.k ] ; 3 uses
  %i.cb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.038.0.in, i1 true)
  %i.cc = zext nneg i16 %i.cb to i64              ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.1, i64 %i.cc ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !35
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.3) #27
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.l
  %i.cg = trunc i64 %3 to i8
  store i8 %i.cg, ptr %i.cd, align 1, !tbaa !35
  %i.ch = shl nuw nsw i64 %i.cc, 2
  %i.ci = getelementptr i8, ptr %.1, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 16     ; 3 uses
  %i.ck = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ck)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cj) ]
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !24  ; 3 uses
  %i.cm = lshr i64 %i.cl, 8                       ; 2 uses
  %i.cn = trunc i64 %i.cm to i32
  store i32 %i.cn, ptr %i.cj, align 4, !tbaa !19
  %i.co = load ptr, ptr %1, align 8, !tbaa !59, !nonnull !41, !noundef !41
  %i.cp = and i64 %i.cm, 4294967295
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %i.cp ; 3 uses
  %i.cr = load i64, ptr %6, align 8, !tbaa !75
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = load i64, ptr %7, align 8, !tbaa !77
  %i.cu = inttoptr i64 %i.ct to ptr               ; 2 uses
  %i.cv = load i64, ptr %i.cs, align 8, !tbaa !34
  store i64 %i.cv, ptr %i.cq, align 8, !tbaa !180
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cx = load i64, ptr %i.cu, align 8, !tbaa !56
  store i64 %i.cx, ptr %i.cw, align 8, !tbaa !56
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !56
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !56
  store ptr null, ptr %i.cz, align 8, !tbaa !56
  %i.db = and i64 %i.cl, -256
  %i.dc = add i64 %i.db, 256
  %i.dd = and i64 %i.cl, 255
  %i.de = or disjoint i64 %i.dc, %i.dd
  store i64 %i.de, ptr %i.a, align 8, !tbaa !24
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink110 = phi ptr [ %i.aq, %bb.f ], [ %i.cj, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa105.sink = phi i64 [ %i.ab, %bb.f ], [ %i.cc, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink110, ptr %0, align 8, !tbaa !182
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa105.sink, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !34
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.df, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !24
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.163", align 1   ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !34
  store i64 %2, ptr %i.b, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55   ; 5 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6                            ; 2 uses
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i53 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i53, ptr %i.g, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  %i.ac = sub i64 0, %.0.i53
  %i.ad = and i64 %i.ac, -8                       ; 2 uses
  %i.ae = mul i64 %i.x, 24
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #28 ; 15 uses
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !81
  %i.ah = load ptr, ptr %0, align 8, !tbaa !59    ; 3 uses
  %i.ai = sub i64 0, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 3 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit.i.i.preheader

_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit.i.i.preheader: ; preds = %bb.a
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.ak = icmp ult i64 %1, 4
  br i1 %i.ak, label %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit.i.i.epil.preheader, label %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit.i.i.preheader.new
end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm:bb.a
bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.3) #27
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.e
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !35
  %i.dg = shl i64 %.042129, 2
  %i.dh = getelementptr i8, ptr %i.ag, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 16
  call void @llvm.assume(i1 %i.da)
  %i.dj = shl i64 %.044128, 2
  %i.dk = getelementptr i8, ptr %i.l, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.dk, i64 16
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !19
  store i32 %i.dm, ptr %i.di, align 4, !tbaa !19
  %i.dn = add nuw i64 %.042129, 1
  br label %bb.g

bb.g:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, %bb.d
  %.143 = phi i64 [ %i.dn, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ], [ %.042129, %bb.d ] ; 2 uses
  %i.do = add i64 %.044128, 1
  %i.dp = icmp ult i64 %.143, %1
  br i1 %i.dp, label %bb.d, label %.loopexit, !llvm.loop !191

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %7, i8 0, i64 %4, i1 false)
  br label %.lr.ph127.preheader

bb.i:                                             ; preds = %bb.h
  %i.dq = icmp slt i64 %4, 0
  br i1 %i.dq, label %bb.j, label %bb.k, !prof !45

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt17__throw_bad_allocv() #29
          to label %.noexc unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.dr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #30
          to label %bb.l unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit ; 3 uses

bb.l:                                             ; preds = %bb.k
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !79
  %.pre136 = load i64, ptr %i.b, align 8, !tbaa !34
  %.pre137 = load i64, ptr %i.a, align 8, !tbaa !34 ; 2 uses
  %.pre139 = shl i64 %.pre136, 6
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dr, i8 0, i64 %4, i1 false)
  %.not46124 = icmp eq i64 %.pre137, 0
  br i1 %.not46124, label %._crit_edge.thread, label %.lr.ph127.preheader

.lr.ph127.preheader:                              ; preds = %.thread, %bb.l
  %.0101152 = phi ptr [ %7, %.thread ], [ %i.dr, %bb.l ] ; 4 uses
  %i.ds = phi ptr [ %i.l, %.thread ], [ %.pre, %bb.l ]
  %i.dt = phi i64 [ %1, %.thread ], [ %.pre137, %bb.l ]
  %.pre-phi151 = phi i64 [ %i.t, %.thread ], [ %.pre139, %bb.l ]
  %i.du = getelementptr i8, ptr %i.ds, i64 %.pre-phi151
  br label %.lr.ph127

.loopexit110:                                     ; preds = %bb.u, %.lr.ph127
  %.1.lcssa = phi i64 [ %.0125, %.lr.ph127 ], [ %i.en, %bb.u ] ; 2 uses
  %.not46 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not46, label %._crit_edge, label %.lr.ph127, !llvm.loop !192

.lr.ph127:                                        ; preds = %.lr.ph127.preheader, %.loopexit110
  %.034126.pn = phi ptr [ %.034126, %.loopexit110 ], [ %i.du, %.lr.ph127.preheader ]
  %.0125 = phi i64 [ %.1.lcssa, %.loopexit110 ], [ %i.dt, %.lr.ph127.preheader ] ; 2 uses
  %.034126 = getelementptr i8, ptr %.034126.pn, i64 -64 ; 6 uses
  %i.dv = load <16 x i8>, ptr %.034126, align 16, !tbaa !35
  %i.dw = icmp eq <16 x i8> %i.dv, zeroinitializer
  %i.dx = bitcast <16 x i1> %i.dw to i16
  %i.dy = and i16 %i.dx, 4095                     ; 2 uses
  %i.dz = xor i16 %i.dy, 4095
  %.sroa.070.0.extract.trunc = zext nneg i16 %i.dz to i32 ; 2 uses
  %cond = icmp eq i16 %i.dy, 4095
  br i1 %cond, label %.loopexit110, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph127
  %i.ea = icmp ne ptr %.034126, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ea)
  %i.eb = load ptr, ptr %0, align 8, !tbaa !59
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.067.0117 = phi i32 [ %.sroa.070.0.extract.trunc, %.lr.ph ], [ %.sroa.067.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %.sroa.8.0116 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %i.ec = and i32 %.sroa.067.0117, 1
  %.not.i56 = icmp eq i32 %i.ec, 0
  br i1 %.not.i56, label %bb.n, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !45

bb.n:                                             ; preds = %bb.m
  %i.ed = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.067.0117, i1 true) ; 2 uses
  %i.ee = add i32 %i.ed, %.sroa.8.0116
  %i.ef = add nuw nsw i32 %i.ed, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.m, %bb.n
  %.sroa.8.1.in = phi i32 [ %i.ee, %bb.n ], [ %.sroa.8.0116, %bb.m ] ; 2 uses
  %.pn108 = phi i32 [ %i.ef, %bb.n ], [ 1, %bb.m ]
  %.sroa.067.1 = lshr i32 %.sroa.067.0117, %.pn108 ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %i.eg = zext i32 %.sroa.8.1.in to i64
  %i.eh = shl nuw nsw i64 %i.eg, 2
  %i.ei = getelementptr i8, ptr %.034126, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.ei, i64 16
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !19
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [24 x i8], ptr %i.eb, i64 %i.el
  call void @llvm.prefetch.p0(ptr %i.em, i32 0, i32 3, i32 1)
  %.not105 = icmp eq i32 %.sroa.067.1, 0
  br i1 %.not105, label %.lr.ph122, label %bb.m

.lr.ph122:                                        ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %bb.u
  %.1121 = phi i64 [ %i.en, %bb.u ], [ %.0125, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ]
  %.sroa.070.0120 = phi i32 [ %.sroa.070.1, %bb.u ], [ %.sroa.070.0.extract.trunc, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %.sroa.872.0119 = phi i32 [ %.sroa.872.1, %bb.u ], [ 0, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %i.en = add i64 %.1121, -1                      ; 2 uses
  %i.eo = and i32 %.sroa.070.0120, 1
  %.not.i58 = icmp eq i32 %i.eo, 0
  br i1 %.not.i58, label %bb.o, label %bb.p, !prof !45

bb.o:                                             ; preds = %.lr.ph122
  %i.ep = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.070.0120, i1 true) ; 2 uses
  %i.eq = add i32 %i.ep, %.sroa.872.0119
  %i.er = add nuw nsw i32 %i.ep, 1
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph122, %bb.o
  %.sroa.872.1.in = phi i32 [ %i.eq, %bb.o ], [ %.sroa.872.0119, %.lr.ph122 ] ; 2 uses
  %.pn107 = phi i32 [ %i.er, %bb.o ], [ 1, %.lr.ph122 ]
  %.sroa.070.1 = lshr i32 %.sroa.070.0120, %.pn107 ; 2 uses
  %.sroa.872.1 = add i32 %.sroa.872.1.in, 1
  %i.es = zext i32 %.sroa.872.1.in to i64         ; 2 uses
  %i.et = shl nuw nsw i64 %i.es, 2
  %i.eu = getelementptr i8, ptr %.034126, i64 %i.et
  %i.ev = getelementptr i8, ptr %i.eu, i64 16     ; 2 uses
  %i.ew = load ptr, ptr %0, align 8, !tbaa !59
  %i.ex = load i32, ptr %i.ev, align 4, !tbaa !19
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %i.ew, i64 %i.ey
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !34 ; 2 uses
  %i.fb = zext i64 %i.fa to i128
  %i.fc = mul nuw i128 %i.fb, 14181476777654086739
  %i.fd = lshr i128 %i.fc, 64
  %i.fe = trunc nuw i128 %i.fd to i64
  %i.ff = mul i64 %i.fa, -4265267296055464877
  %i.fg = xor i64 %i.ff, %i.fe
  %i.fh = mul i64 %i.fg, -4265267296055464877     ; 2 uses
  %i.fi = lshr i64 %i.fh, 14
  %i.fj = and i64 %i.fi, 255
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.fj, i64 1) ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.034126, i64 %i.es
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !35
  %i.fm = zext i8 %i.fl to i64
  %i.fn = icmp eq i64 %.sroa.speculated.i.i, %i.fm
  br i1 %i.fn, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.3) #27
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.fo = lshr i64 %i.fh, 22
  %i.fp = shl nuw nsw i64 %.sroa.speculated.i.i, 1
  %i.fq = or disjoint i64 %i.fp, 1
  %i.fr = load i64, ptr %i.ct, align 8, !tbaa !24
  %i.fs = and i64 %i.fr, 255
  %notmask.i.i = shl nsw i64 -1, %i.fs
  %i.ft = xor i64 %notmask.i.i, -1                ; 2 uses
  %i.fu = load ptr, ptr %i.k, align 8, !tbaa !55  ; 2 uses
  %i.fv = and i64 %i.fo, %i.ft                    ; 4 uses
  %i.fw = shl nuw nsw i64 %i.fv, 6                ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.0101152, i64 %i.fv
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !35  ; 2 uses
  %i.fz = icmp ult i8 %i.fy, 12
  br i1 %i.fz, label %._crit_edge.i, label %.lr.ph.i61, !prof !94

.lr.ph.i61:                                       ; preds = %bb.r, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i
  %i.ga = phi i64 [ %i.gi, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ], [ %i.fw, %bb.r ]
  %i.gb = phi i64 [ %i.gh, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ], [ %i.fv, %bb.r ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.ga
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 15 ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !62  ; 2 uses
  %.not.i.i = icmp eq i8 %i.ge, -2
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i61
  %i.gf = add i8 %i.ge, 1
  store i8 %i.gf, ptr %i.gd, align 1, !tbaa !62
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i: ; preds = %bb.s, %.lr.ph.i61
  %i.gg = add i64 %i.fq, %i.gb
  %i.gh = and i64 %i.gg, %i.ft                    ; 4 uses
  %i.gi = shl nuw nsw i64 %i.gh, 6                ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.0101152, i64 %i.gh
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !35  ; 2 uses
  %i.gl = icmp ult i8 %i.gk, 12
  br i1 %i.gl, label %._crit_edge.i, label %.lr.ph.i61, !prof !95, !llvm.loop !193

._crit_edge.i:                                    ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i, %bb.r
  %.lcssa22.i = phi i64 [ %i.fv, %bb.r ], [ %i.gh, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ]
  %.0.lcssa.i = phi i8 [ 0, %bb.r ], [ 16, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ]
  %.pn.i = phi i64 [ %i.fw, %bb.r ], [ %i.gi, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ]
  %.lcssa.i = phi i8 [ %i.fy, %bb.r ], [ %i.gk, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ] ; 2 uses
  %.lcssa21.i = getelementptr inbounds nuw i8, ptr %i.fu, i64 %.pn.i ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.0101152, i64 %.lcssa22.i
  %i.gn = add nuw nsw i8 %.lcssa.i, 1
  store i8 %i.gn, ptr %i.gm, align 1, !tbaa !35
  %i.go = zext nneg i8 %.lcssa.i to i64           ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 %i.go ; 2 uses
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !35
  %i.gr = icmp eq i8 %i.gq, 0
  br i1 %i.gr, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge.i
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.3) #27
  unreachable

bb.u:                                             ; preds = %._crit_edge.i
  %i.gs = trunc nuw i64 %.sroa.speculated.i.i to i8
  store i8 %i.gs, ptr %i.gp, align 1, !tbaa !35
  %i.gt = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 14 ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 2, !tbaa !61
  %i.gv = add i8 %i.gu, %.0.lcssa.i
  store i8 %i.gv, ptr %i.gt, align 2, !tbaa !61
  %i.gw = shl nuw nsw i64 %i.go, 2
  %i.gx = getelementptr i8, ptr %.lcssa21.i, i64 %i.gw
  %i.gy = getelementptr i8, ptr %i.gx, i64 16     ; 2 uses
  %i.gz = icmp ne ptr %.lcssa21.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.gz)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gy) ]
  %i.ha = load i32, ptr %i.ev, align 4, !tbaa !19
  store i32 %i.ha, ptr %i.gy, align 4, !tbaa !19
  %.not106 = icmp eq i32 %.sroa.070.1, 0
  br i1 %.not106, label %.loopexit110, label %.lr.ph122, !llvm.loop !194

._crit_edge:                                      ; preds = %.loopexit110
  br i1 %.not, label %._crit_edge.thread, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

._crit_edge.thread:                               ; preds = %bb.l, %._crit_edge
  %.0101153155 = phi ptr [ %.0101152, %._crit_edge ], [ %i.dr, %bb.l ]
  call void @_ZdlPvm(ptr noundef nonnull %.0101153155, i64 noundef %4) #31
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %._crit_edge, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  br label %.loopexit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.k, %bb.j
  %i.hb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cz) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  resume { ptr, i32 } %i.hb

.loopexit:                                        ; preds = %bb.g, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !78
  %i.hc = load i64, ptr %i.d, align 8, !tbaa !34  ; 2 uses
  %.not.i65 = icmp eq i64 %i.hc, 0
  br i1 %.not.i65, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit63, label %.noexc.i

.noexc.i:                                         ; preds = %.loopexit
  %i.hd = load ptr, ptr %i.c, align 8, !tbaa !79  ; 2 uses
  %.not.i.i64 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i64, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit63, label %bb.v

bb.v:                                             ; preds = %.noexc.i
  %i.he = load i64, ptr %i.e, align 8, !tbaa !34
  %i.hf = sub i64 0, %i.he
  %i.hg = and i64 %i.hf, -8
  %i.hh = mul i64 %i.hc, 24
  %i.hi = sub i64 %i.hh, %i.hg
  call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef %i.hi) #6
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit63

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit63: ; preds = %.loopexit, %bb.v, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() local_unnamed_addr #18 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #6
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %0, align 8, !tbaa !97
  invoke void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #6
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.a, align 8, !tbaa !97
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #19

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #20

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #21

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !201, !nonnull !41
  %i.d = load i8, ptr %i.c, align 1, !tbaa !78, !range !40, !noundef !41
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !202, !nonnull !41, !align !98
  %i.h = load i64, ptr %i.g, align 8, !tbaa !34   ; 3 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.noexc, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !203, !nonnull !41, !align !98
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !79
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !204, !nonnull !41, !align !98
  %i.n = load i64, ptr %i.m, align 8, !tbaa !34
  br label %.noexc

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !205, !nonnull !41, !align !98
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !81   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !206, !nonnull !41, !align !98
  %i.t = load i64, ptr %i.s, align 8, !tbaa !34   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !203, !nonnull !41, !align !98
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !79
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !55
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !207, !nonnull !41, !align !98
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !34 ; 2 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ab, i1 true)
  %i.ad = icmp eq i64 %i.ab, 0
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !24
  %i.af = and i64 %i.ae, -256
  %i.ag = select i1 %i.ad, i64 4294967295, i64 %i.ac
  %i.ah = or i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.y, align 8, !tbaa !24
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE1EE5checkEv() #6
  %.pre = load ptr, ptr %0, align 8, !tbaa !201
  %.pre3 = load i8, ptr %.pre, align 1, !tbaa !78, !range !40
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !202
  %.pre5 = load i64, ptr %.pre4, align 8, !tbaa !34
  %i.ai = trunc nuw i8 %.pre3 to i1
  br i1 %i.ai, label %.noexc, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !208, !nonnull !41, !align !98
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !34
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !209, !nonnull !41, !align !98
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !34
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !210, !nonnull !41, !align !98
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !83
  invoke void @_ZN5folly3f146detail21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEE17afterFailedRehashEPSt4pairIKmS7_Em(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.ar, i64 noundef %i.ao)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %.010 = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ 0, %bb.b ], [ %i.n, %bb.c ]
  %.029 = phi ptr [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ null, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.as = phi i64 [ %.pre5, %bb.d ], [ %i.al, %bb.e ], [ %i.h, %bb.b ], [ %i.h, %bb.c ]
  %.not.i = icmp eq ptr %.029, null
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKmS7_EbmmmPhm.exit, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.at = sub i64 0, %.010
  %i.au = and i64 %i.at, -8
  %i.av = mul i64 %i.as, 24
  %i.aw = sub i64 %i.av, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %.029, i64 noundef %i.aw) #6
  br label %_ZN5folly3f146detail21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKmS7_EbmmmPhm.exit

_ZN5folly3f146detail21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKmS7_EbmmmPhm.exit: ; preds = %bb.f, %.noexc
  ret void

bb.g:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #25
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE1EE5checkEv() local_unnamed_addr #7

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEE17afterFailedRehashEPSt4pairIKmS7_Em(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZN5folly3f146detail21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKmS7_EEPSD_SG_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !59     ; 2 uses
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.b = icmp ult i64 %2, 4
  br i1 %i.b, label %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %2, -4
  br label %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit.i

_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit.i: ; preds = %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit.i, %.new
  %.01418.i = phi ptr [ %i.a, %.new ], [ %i.y, %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit.i ] ; 9 uses
  %.01517.i = phi ptr [ %1, %.new ], [ %i.z, %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit.i ] ; 10 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.c = load <2 x i64>, ptr %.01418.i, align 8, !tbaa !35
  store <2 x i64> %i.c, ptr %.01517.i, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %.01517.i, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %.01418.i, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !56
  store i64 %i.f, ptr %i.d, align 8, !tbaa !56
  store ptr null, ptr %i.e, align 8, !tbaa !56
  %i.g = getelementptr inbounds nuw i8, ptr %.01418.i, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %.01517.i, i64 24
  %i.i = load <2 x i64>, ptr %i.g, align 8, !tbaa !35
  store <2 x i64> %i.i, ptr %i.h, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %.01517.i, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %.01418.i, i64 40 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !56
  store i64 %i.l, ptr %i.j, align 8, !tbaa !56
  store ptr null, ptr %i.k, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %.01418.i, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %.01517.i, i64 48
  %i.o = load <2 x i64>, ptr %i.m, align 8, !tbaa !35
  store <2 x i64> %i.o, ptr %i.n, align 8, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %.01517.i, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %.01418.i, i64 64 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !56
  store i64 %i.r, ptr %i.p, align 8, !tbaa !56
  store ptr null, ptr %i.q, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %.01418.i, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %.01517.i, i64 72
  %i.u = load <2 x i64>, ptr %i.s, align 8, !tbaa !35
  store <2 x i64> %i.u, ptr %i.t, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %.01517.i, i64 88
  %i.w = getelementptr inbounds nuw i8, ptr %.01418.i, i64 88 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !56
  store i64 %i.x, ptr %i.v, align 8, !tbaa !56
  store ptr null, ptr %i.w, align 8, !tbaa !56
  %i.y = getelementptr inbounds nuw i8, ptr %.01418.i, i64 96 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01517.i, i64 96 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5folly3f146detail21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKmS7_EEPSD_SG_m.exit.loopexit.unr-lcssa, label %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit.i, !llvm.loop !6

_ZN5folly3f146detail21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKmS7_EEPSD_SG_m.exit.loopexit.unr-lcssa: ; preds = %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKmS7_EEPSD_SG_m.exit, label %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit.i.epil.preheader

_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit.i.epil.preheader: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKmS7_EEPSD_SG_m.exit.loopexit.unr-lcssa, %bb.b
  %.01418.i.epil.init = phi ptr [ %i.a, %bb.b ], [ %i.y, %_ZN5folly3f146detail21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKmS7_EEPSD_SG_m.exit.loopexit.unr-lcssa ]
  %.01517.i.epil.init = phi ptr [ %1, %bb.b ], [ %i.z, %_ZN5folly3f146detail21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKmS7_EEPSD_SG_m.exit.loopexit.unr-lcssa ]
  %lcmp.mod5 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod5)
  br label %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit.i.epil

_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit.i.epil: ; preds = %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit.i.epil, %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit.i.epil.preheader
  %.01418.i.epil = phi ptr [ %i.ae, %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit.i.epil ], [ %.01418.i.epil.init, %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit.i.epil.preheader ] ; 3 uses
  %.01517.i.epil = phi ptr [ %i.af, %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit.i.epil ], [ %.01517.i.epil.init, %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit.i.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit.i.epil ], [ 0, %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit.i.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.epil) ]
  %i.aa = load <2 x i64>, ptr %.01418.i.epil, align 8, !tbaa !35
  store <2 x i64> %i.aa, ptr %.01517.i.epil, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %.01517.i.epil, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.01418.i.epil, i64 16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !56
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !56
  store ptr null, ptr %i.ac, align 8, !tbaa !56
  %i.ae = getelementptr inbounds nuw i8, ptr %.01418.i.epil, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %.01517.i.epil, i64 24
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKmS7_EEPSD_SG_m.exit, label %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit.i.epil, !llvm.loop !211

_ZN5folly3f146detail21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKmS7_EEPSD_SG_m.exit: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKmS7_EEPSD_SG_m.exit.loopexit.unr-lcssa, %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit.i.epil, %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE19tryEmplaceValueImplIS5_JS5_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEEbES9_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.168") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !33    ; 3 uses
  br i1 %.not, label %.thread67, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  %notmask.i = shl nsw i64 -1, %i.i
  %i.k = xor i64 %notmask.i, -1
  %i.l = load ptr, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.024.i80 = phi i64 [ %i.j, %bb.b ], [ %i.aj, %bb.e ]
  %.026.i79 = phi i64 [ %2, %bb.b ], [ %i.ak, %bb.e ] ; 2 uses
  %i.m = and i64 %.026.i79, %i.k
  %i.n = shl nuw nsw i64 %i.m, 7
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.n ; 4 uses
  %i.p = getelementptr i8, ptr %i.o, i64 80
  tail call void @llvm.prefetch.p0(ptr %i.p, i32 0, i32 3, i32 1)
  %i.q = load <16 x i8>, ptr %i.o, align 16       ; 2 uses
  %i.r = icmp eq <16 x i8> %i.q, %i.h
  %i.s = bitcast <16 x i1> %i.r to i16
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = and i32 %i.t, 16383
  %.not69 = icmp eq i32 %i.u, 0
  %i.v = extractelement <16 x i8> %i.q, i64 15
  br i1 %.not69, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.w = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.w)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.042.0 = phi i32 [ %i.ag, %.critedge.i ], [ %i.t, %.preheader ] ; 4 uses
  %i.x = icmp ne i32 %.sroa.042.0, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0, i1 true)
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = getelementptr i8, ptr %i.o, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !29
  %i.ae = icmp eq ptr %i.l, %i.ad
  br i1 %i.ae, label %bb.f, label %.critedge.i, !prof !20

.critedge.i:                                      ; preds = %bb.d
  %i.af = add nsw i32 %.sroa.042.0, -1
  %i.ag = and i32 %i.af, %.sroa.042.0             ; 2 uses
  %i.ah = and i32 %i.ag, 16382
  %.not70 = icmp eq i32 %i.ah, 0
  br i1 %.not70, label %.loopexit, label %bb.d, !llvm.loop !0

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.ai = icmp eq i8 %i.v, 0
  br i1 %i.ai, label %.thread67, label %bb.e, !prof !20

bb.e:                                             ; preds = %.loopexit
  %i.aj = add i64 %.024.i80, -1                   ; 2 uses
  %i.ak = add i64 %i.e, %.026.i79
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %.thread67, label %bb.c, !llvm.loop !1

bb.f:                                             ; preds = %bb.d
  %i.al = getelementptr i8, ptr %i.ab, i64 16
  br label %bb.o

.thread67:                                        ; preds = %bb.e, %.loopexit, %bb.a
  %.pre-phi91 = phi i64 [ %i.b, %bb.a ], [ %i.i, %.loopexit ], [ %i.i, %bb.e ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.an = load i8, ptr %i.am, align 1, !tbaa !35
  %i.ao = and i8 %i.an, 15
  %i.ap = zext nneg i8 %i.ao to i64               ; 2 uses
  %i.aq = shl i64 %i.ap, %.pre-phi91              ; 2 uses
  %.not.i30 = icmp ult i64 %i.c, %i.aq
  br i1 %.not.i30, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread67
  %i.ar = shl nuw i64 1, %.pre-phi91
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.ar, i64 noundef %i.ap, i64 noundef %i.aq)
  %.pre87 = load i64, ptr %i.a, align 8, !tbaa !24
  %.pre88 = load ptr, ptr %1, align 8, !tbaa !33
  %.pre89 = and i64 %.pre87, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE16reserveForInsertEm.exit: ; preds = %.thread67, %bb.g
  %.pre-phi = phi i64 [ %.pre-phi91, %.thread67 ], [ %.pre89, %bb.g ]
  %i.as = phi ptr [ %.pre, %.thread67 ], [ %.pre88, %bb.g ] ; 4 uses
  %notmask.i31 = shl nsw i64 -1, %.pre-phi
  %i.at = xor i64 %notmask.i31, -1                ; 2 uses
  %i.au = and i64 %2, %i.at
  %i.av = shl nuw nsw i64 %i.au, 7                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av ; 2 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16, !tbaa !35
  %i.ay = icmp eq <16 x i8> %i.ax, zeroinitializer
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = and i16 %i.az, 16383                    ; 2 uses
  %.not71 = icmp eq i16 %i.ba, 0
  br i1 %.not71, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE16reserveForInsertEm.exit
  %i.bb = shl i64 %3, 1
  %i.bc = or disjoint i64 %i.bb, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPNS_9EventBaseEE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bd = phi i64 [ %i.av, %bb.h ], [ %i.bk, %_ZN5folly3f146detail8F14ChunkIPNS_9EventBaseEE25incrOutboundOverflowCountEv.exit ]
  %.028 = phi i64 [ %2, %bb.h ], [ %i.bi, %_ZN5folly3f146detail8F14ChunkIPNS_9EventBaseEE25incrOutboundOverflowCountEv.exit ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 15 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !49  ; 2 uses
  %.not.i32 = icmp eq i8 %i.bg, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIPNS_9EventBaseEE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = add i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !49
  br label %_ZN5folly3f146detail8F14ChunkIPNS_9EventBaseEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIPNS_9EventBaseEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.bi = add i64 %i.bc, %.028                    ; 2 uses
  %i.bj = and i64 %i.bi, %i.at
  %i.bk = shl nuw nsw i64 %i.bj, 7                ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bk
  %i.bm = load <16 x i8>, ptr %i.bl, align 16     ; 2 uses
  %i.bn = icmp eq <16 x i8> %i.bm, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = and i16 %i.bo, 16383                    ; 2 uses
  %.not72 = icmp eq i16 %i.bp, 0
  br i1 %.not72, label %bb.i, label %bb.k, !llvm.loop !212

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPNS_9EventBaseEE25incrOutboundOverflowCountEv.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bk ; 2 uses
  %i.br = extractelement <16 x i8> %i.bm, i64 14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 14
  %i.bt = add i8 %i.br, 16
  store i8 %i.bt, ptr %i.bs, align 2, !tbaa !48
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE16reserveForInsertEm.exit
  %.sroa.036.0.in = phi i16 [ %i.ba, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE16reserveForInsertEm.exit ], [ %i.bp, %bb.k ]
  %.1 = phi ptr [ %i.aw, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE16reserveForInsertEm.exit ], [ %i.bq, %bb.k ] ; 3 uses
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64              ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bv ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !35
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %_ZN5folly3f146detail8F14ChunkIPNS_9EventBaseEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPNS_9EventBaseEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.3) #27
  unreachable

_ZN5folly3f146detail8F14ChunkIPNS_9EventBaseEE6setTagEmm.exit: ; preds = %bb.l
  %i.bz = trunc i64 %3 to i8
  store i8 %i.bz, ptr %i.bw, align 1, !tbaa !35
  %i.ca = shl nuw nsw i64 %i.bv, 3
  %i.cb = getelementptr i8, ptr %.1, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 16     ; 4 uses
  %i.cd = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cd)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %i.ce = load ptr, ptr %5, align 8, !tbaa !29
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !29
  %i.cf = lshr i64 %i.bv, 1
  %i.cg = ptrtoint ptr %i.cc to i64
  %i.ch = or i64 %i.cf, %i.cg                     ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !26
  %i.ck = icmp ult i64 %i.cj, %i.ch
  br i1 %i.ck, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE13insertAtBlankIJS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPNS_9EventBaseEE6setTagEmm.exit
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !34
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE13insertAtBlankIJS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE13insertAtBlankIJS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPNS_9EventBaseEE6setTagEmm.exit, %bb.n
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !24  ; 2 uses
  %i.cm = and i64 %i.cl, -256
  %i.cn = add i64 %i.cm, 256
  %i.co = and i64 %i.cl, 255
  %i.cp = or disjoint i64 %i.cn, %i.co
  store i64 %i.cp, ptr %i.a, align 8, !tbaa !24
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE13insertAtBlankIJS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit
  %.sink107 = phi ptr [ %i.al, %bb.f ], [ %i.cc, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE13insertAtBlankIJS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit ]
  %.lcssa102.sink = phi i64 [ %i.z, %bb.f ], [ %i.bv, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE13insertAtBlankIJS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE13insertAtBlankIJS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink107, ptr %0, align 8, !tbaa !214
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa102.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !34
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cq, align 8, !tbaa !217
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !24
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.172", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.163", align 1   ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !34
  store i64 %2, ptr %i.b, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.k = load ptr, ptr %0, align 8, !tbaa !33     ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 3
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 7                            ; 2 uses
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 3
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 7
  %.0.i70 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i70, ptr %i.g, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i70) #28 ; 16 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !81
  store i8 0, ptr %i.i, align 1, !tbaa !78
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.w = icmp ult i64 %4, 8
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.au, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.x = shl nsw i64 %.08.i, 7
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.z = shl i64 %.08.i, 7
  %i.aa = getelementptr i8, ptr %i.v, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = shl i64 %.08.i, 7
  %i.ad = getelementptr i8, ptr %i.v, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %i.af = shl i64 %.08.i, 7
  %i.ag = getelementptr i8, ptr %i.v, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = shl i64 %.08.i, 7
end_hunk_2
begin_hunk_3_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE10rehashImplEmmmmm:bb.a
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !35
  %i.bo = shl i64 %.054133, 3
  %i.bp = getelementptr i8, ptr %i.v, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 16     ; 2 uses
  call void @llvm.assume(i1 %i.bi)
  %i.br = shl i64 %.056132, 3
  %i.bs = getelementptr i8, ptr %i.k, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bq) ]
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !29
  store ptr %i.bu, ptr %i.bq, align 8, !tbaa !29
  %i.bv = add nuw i64 %.054133, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.155 = phi i64 [ %i.bv, %bb.g ], [ %.054133, %bb.d ] ; 3 uses
  %i.bw = add i64 %.056132, 1
  %i.bx = icmp ult i64 %.155, %1
  br i1 %i.bx, label %bb.d, label %bb.i, !llvm.loop !222

bb.i:                                             ; preds = %bb.h
  %i.by = add i64 %.155, -1                       ; 2 uses
  %i.bz = shl i64 %i.by, 3
  %i.ca = getelementptr i8, ptr %i.v, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 16     ; 2 uses
  %i.cc = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cc)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  %i.cd = and i64 %i.by, 255                      ; 2 uses
  %i.ce = icmp samesign ult i64 %i.cd, 16
  call void @llvm.assume(i1 %i.ce)
  %i.cf = lshr i64 %i.cd, 1
  %i.cg = ptrtoint ptr %i.cb to i64
  %i.ch = or i64 %i.cf, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !34
  br label %bb.aa

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %7, i8 0, i64 %4, i1 false)
  br label %.lr.ph131.preheader

bb.k:                                             ; preds = %bb.j
  %i.cj = icmp slt i64 %4, 0
  br i1 %i.cj, label %bb.l, label %bb.m, !prof !45

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #29
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #30
          to label %bb.o unwind label %bb.n       ; 3 uses

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  resume { ptr, i32 } %i.cl

bb.o:                                             ; preds = %bb.m
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !99
  %.pre141 = load i64, ptr %i.b, align 8, !tbaa !34
  %.pre142 = load i64, ptr %i.a, align 8, !tbaa !34 ; 2 uses
  %.pre143 = shl i64 %.pre141, 7
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ck, i8 0, i64 %4, i1 false)
  %.not58128 = icmp eq i64 %.pre142, 0
  br i1 %.not58128, label %._crit_edge, label %.lr.ph131.preheader

.lr.ph131.preheader:                              ; preds = %.thread, %bb.o
  %.0113157 = phi ptr [ %7, %.thread ], [ %i.ck, %bb.o ] ; 4 uses
  %i.cm = phi ptr [ %i.k, %.thread ], [ %.pre, %bb.o ]
  %i.cn = phi i64 [ %1, %.thread ], [ %.pre142, %bb.o ]
  %.pre-phi156 = phi i64 [ %i.p, %.thread ], [ %.pre143, %bb.o ]
  %i.co = getelementptr i8, ptr %i.cm, i64 %.pre-phi156
  br label %.lr.ph131

.loopexit:                                        ; preds = %bb.w, %.lr.ph131
  %.1.lcssa = phi i64 [ %.041129, %.lr.ph131 ], [ %i.cv, %bb.w ] ; 2 uses
  %.not58 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph131, !llvm.loop !223

.lr.ph131:                                        ; preds = %.lr.ph131.preheader, %.loopexit
  %.042130.pn = phi ptr [ %.042130, %.loopexit ], [ %i.co, %.lr.ph131.preheader ]
  %.041129 = phi i64 [ %.1.lcssa, %.loopexit ], [ %i.cn, %.lr.ph131.preheader ] ; 2 uses
  %.042130 = getelementptr i8, ptr %.042130.pn, i64 -128 ; 5 uses
  %i.cp = load <16 x i8>, ptr %.042130, align 16, !tbaa !35
  %i.cq = icmp eq <16 x i8> %i.cp, zeroinitializer
  %i.cr = bitcast <16 x i1> %i.cq to i16
  %i.cs = and i16 %i.cr, 16383                    ; 2 uses
  %.not114123 = icmp eq i16 %i.cs, 16383
  br i1 %.not114123, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph131
  %i.ct = xor i16 %i.cs, 16383
  %.sroa.079.0.extract.trunc = zext nneg i16 %i.ct to i32
  %i.cu = icmp ne ptr %.042130, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cu)
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.w
  %.1126 = phi i64 [ %.041129, %.lr.ph ], [ %i.cv, %bb.w ]
  %.sroa.079.0125 = phi i32 [ %.sroa.079.0.extract.trunc, %.lr.ph ], [ %.sroa.079.1, %bb.w ] ; 3 uses
  %.sroa.8.0124 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.w ] ; 2 uses
  %i.cv = add i64 %.1126, -1                      ; 2 uses
  %i.cw = and i32 %.sroa.079.0125, 1
  %.not.i72 = icmp eq i32 %i.cw, 0
  br i1 %.not.i72, label %bb.q, label %bb.r, !prof !45

bb.q:                                             ; preds = %bb.p
  %i.cx = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.079.0125, i1 true) ; 2 uses
  %i.cy = add i32 %i.cx, %.sroa.8.0124
  %i.cz = add nuw nsw i32 %i.cx, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.sroa.8.1.in = phi i32 [ %i.cy, %bb.q ], [ %.sroa.8.0124, %bb.p ] ; 2 uses
  %.pn115 = phi i32 [ %i.cz, %bb.q ], [ 1, %bb.p ]
  %.sroa.079.1 = lshr i32 %.sroa.079.0125, %.pn115 ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %i.da = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.db = shl nuw nsw i64 %i.da, 3
  %i.dc = getelementptr i8, ptr %.042130, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 16     ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !29
  %i.df = ptrtoint ptr %i.de to i64               ; 2 uses
  %i.dg = zext i64 %i.df to i128
  %i.dh = mul nuw i128 %i.dg, 14181476777654086739
  %i.di = lshr i128 %i.dh, 64
  %i.dj = trunc nuw i128 %i.di to i64
  %i.dk = mul i64 %i.df, -4265267296055464877
  %i.dl = xor i64 %i.dk, %i.dj
  %i.dm = mul i64 %i.dl, -4265267296055464877     ; 2 uses
  %i.dn = lshr i64 %i.dm, 14
  %i.do = and i64 %i.dn, 255
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.do, i64 1) ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.042130, i64 %i.da
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !35
  %i.dr = zext i8 %i.dq to i64
  %i.ds = icmp eq i64 %.sroa.speculated.i.i, %i.dr
  br i1 %i.ds, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE10rehashImplEmmmmmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.3) #27
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.dt = lshr i64 %i.dm, 22
  %i.du = shl nuw nsw i64 %.sroa.speculated.i.i, 1
  %i.dv = or disjoint i64 %i.du, 1
  %i.dw = load i64, ptr %i.ba, align 8, !tbaa !24
  %i.dx = and i64 %i.dw, 255
  %notmask.i.i = shl nsw i64 -1, %i.dx
  %i.dy = xor i64 %notmask.i.i, -1                ; 2 uses
  %i.dz = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.ea = and i64 %i.dt, %i.dy                    ; 4 uses
  %i.eb = shl nuw nsw i64 %i.ea, 7                ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.0113157, i64 %i.ea
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !35  ; 2 uses
  %i.ee = icmp ult i8 %i.ed, 14
  br i1 %i.ee, label %._crit_edge.i, label %.lr.ph.i74, !prof !94

.lr.ph.i74:                                       ; preds = %bb.t, %_ZN5folly3f146detail8F14ChunkIPNS_9EventBaseEE25incrOutboundOverflowCountEv.exit.i
  %i.ef = phi i64 [ %i.en, %_ZN5folly3f146detail8F14ChunkIPNS_9EventBaseEE25incrOutboundOverflowCountEv.exit.i ], [ %i.eb, %bb.t ]
  %i.eg = phi i64 [ %i.em, %_ZN5folly3f146detail8F14ChunkIPNS_9EventBaseEE25incrOutboundOverflowCountEv.exit.i ], [ %i.ea, %bb.t ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ef
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 15 ; 2 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !49  ; 2 uses
  %.not.i.i = icmp eq i8 %i.ej, -2
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14ChunkIPNS_9EventBaseEE25incrOutboundOverflowCountEv.exit.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i74
  %i.ek = add i8 %i.ej, 1
  store i8 %i.ek, ptr %i.ei, align 1, !tbaa !49
  br label %_ZN5folly3f146detail8F14ChunkIPNS_9EventBaseEE25incrOutboundOverflowCountEv.exit.i

_ZN5folly3f146detail8F14ChunkIPNS_9EventBaseEE25incrOutboundOverflowCountEv.exit.i: ; preds = %bb.u, %.lr.ph.i74
  %i.el = add i64 %i.dv, %i.eg
  %i.em = and i64 %i.el, %i.dy                    ; 4 uses
  %i.en = shl nuw nsw i64 %i.em, 7                ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0113157, i64 %i.em
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !35  ; 2 uses
  %i.eq = icmp ult i8 %i.ep, 14
  br i1 %i.eq, label %._crit_edge.i, label %.lr.ph.i74, !prof !95, !llvm.loop !224

._crit_edge.i:                                    ; preds = %_ZN5folly3f146detail8F14ChunkIPNS_9EventBaseEE25incrOutboundOverflowCountEv.exit.i, %bb.t
  %.lcssa22.i = phi i64 [ %i.ea, %bb.t ], [ %i.em, %_ZN5folly3f146detail8F14ChunkIPNS_9EventBaseEE25incrOutboundOverflowCountEv.exit.i ]
  %.0.lcssa.i = phi i8 [ 0, %bb.t ], [ 16, %_ZN5folly3f146detail8F14ChunkIPNS_9EventBaseEE25incrOutboundOverflowCountEv.exit.i ]
  %.pn.i = phi i64 [ %i.eb, %bb.t ], [ %i.en, %_ZN5folly3f146detail8F14ChunkIPNS_9EventBaseEE25incrOutboundOverflowCountEv.exit.i ]
  %.lcssa.i = phi i8 [ %i.ed, %bb.t ], [ %i.ep, %_ZN5folly3f146detail8F14ChunkIPNS_9EventBaseEE25incrOutboundOverflowCountEv.exit.i ] ; 2 uses
  %.lcssa21.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.pn.i ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0113157, i64 %.lcssa22.i
  %i.es = add nuw nsw i8 %.lcssa.i, 1
  store i8 %i.es, ptr %i.er, align 1, !tbaa !35
  %i.et = zext nneg i8 %.lcssa.i to i64           ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 %i.et ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !35
  %i.ew = icmp eq i8 %i.ev, 0
  br i1 %i.ew, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPNS_9EventBaseEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.3) #27
  unreachable

bb.w:                                             ; preds = %._crit_edge.i
  %i.ex = trunc nuw i64 %.sroa.speculated.i.i to i8
  store i8 %i.ex, ptr %i.eu, align 1, !tbaa !35
  %i.ey = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 14 ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 2, !tbaa !48
  %i.fa = add i8 %i.ez, %.0.lcssa.i
  store i8 %i.fa, ptr %i.ey, align 2, !tbaa !48
  %i.fb = shl nuw nsw i64 %i.et, 3
  %i.fc = getelementptr i8, ptr %.lcssa21.i, i64 %i.fb
  %i.fd = getelementptr i8, ptr %i.fc, i64 16     ; 2 uses
  %i.fe = icmp ne ptr %.lcssa21.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.fe)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fd) ]
  %i.ff = load ptr, ptr %i.dd, align 8, !tbaa !29
  store ptr %i.ff, ptr %i.fd, align 8, !tbaa !29
  %.not114 = icmp eq i32 %.sroa.079.1, 0
  br i1 %.not114, label %.loopexit, label %bb.p, !llvm.loop !225

._crit_edge:                                      ; preds = %.loopexit, %bb.o
  %.0113158 = phi ptr [ %i.ck, %bb.o ], [ %.0113157, %.loopexit ] ; 2 uses
  %i.fg = load i64, ptr %i.ba, align 8, !tbaa !24
  %i.fh = and i64 %i.fg, 255
  %i.fi = shl nuw i64 1, %i.fh
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge, %bb.x
  %.0.in = phi i64 [ %i.fi, %._crit_edge ], [ %.0, %bb.x ]
  %.0 = add i64 %.0.in, -1                        ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.0113158, i64 %.0
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !35  ; 3 uses
  %i.fl = icmp eq i8 %i.fk, 0
  br i1 %i.fl, label %bb.x, label %bb.y, !llvm.loop !226

bb.y:                                             ; preds = %bb.x
  %i.fm = load ptr, ptr %0, align 8, !tbaa !33
  %i.fn = shl nsw i64 %.0, 7
  %i.fo = getelementptr inbounds i8, ptr %i.fm, i64 %i.fn ; 2 uses
  %i.fp = zext nneg i8 %i.fk to i64
  %i.fq = add nsw i64 %i.fp, -1                   ; 2 uses
  %i.fr = shl nuw nsw i64 %i.fq, 3
  %i.fs = getelementptr i8, ptr %i.fo, i64 %i.fr
  %i.ft = getelementptr i8, ptr %i.fs, i64 16     ; 2 uses
  %i.fu = icmp ne ptr %i.fo, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.fu)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ft) ]
  %i.fv = icmp ult i8 %i.fk, 17
  call void @llvm.assume(i1 %i.fv)
  %i.fw = lshr i64 %i.fq, 1
  %i.fx = ptrtoint ptr %i.ft to i64
  %i.fy = or i64 %i.fw, %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !34
  br i1 %.not, label %bb.z, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

bb.z:                                             ; preds = %bb.y
  call void @_ZdlPvm(ptr noundef nonnull %.0113158, i64 noundef %4) #31
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  br label %bb.aa

bb.aa:                                            ; preds = %bb.i, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !78
  %i.ga = load i64, ptr %i.d, align 8, !tbaa !34
  %.not.i.i.i = icmp eq i64 %i.ga, 0
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gb = load ptr, ptr %i.c, align 8, !tbaa !99  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gc = load i64, ptr %i.e, align 8, !tbaa !34
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.gc) #6
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.aa, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !85, !range !40, !noundef !41
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !231, !nonnull !41
  %i.e = load i8, ptr %i.d, align 1, !tbaa !78, !range !40, !noundef !41
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !232, !nonnull !41, !align !98
  %i.i = load i64, ptr %i.h, align 8, !tbaa !34
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !233, !nonnull !41, !align !98
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !99
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !234, !nonnull !41, !align !98
  %i.o = load i64, ptr %i.n, align 8, !tbaa !34
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !235  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !236, !nonnull !41, !align !98
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !81
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !237, !nonnull !41, !align !98
  %i.w = load i64, ptr %i.v, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !233, !nonnull !41, !align !98
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !99
  store ptr %i.z, ptr %i.q, align 8, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !238, !nonnull !41, !align !98
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !34 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !24
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !24
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE1EE5checkEv() #6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #6
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE19tryEmplaceValueImplIS6_JS6_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEEbESA_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.179") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !67    ; 3 uses
  br i1 %.not, label %.thread67, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  %notmask.i = shl nsw i64 -1, %i.i
  %i.k = xor i64 %notmask.i, -1
  %i.l = load ptr, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.024.i80 = phi i64 [ %i.j, %bb.b ], [ %i.aj, %bb.e ]
  %.026.i79 = phi i64 [ %2, %bb.b ], [ %i.ak, %bb.e ] ; 2 uses
  %i.m = and i64 %.026.i79, %i.k
  %i.n = shl nuw nsw i64 %i.m, 7
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.n ; 4 uses
  %i.p = getelementptr i8, ptr %i.o, i64 80
  tail call void @llvm.prefetch.p0(ptr %i.p, i32 0, i32 3, i32 1)
  %i.q = load <16 x i8>, ptr %i.o, align 16       ; 2 uses
  %i.r = icmp eq <16 x i8> %i.q, %i.h
  %i.s = bitcast <16 x i1> %i.r to i16
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = and i32 %i.t, 16383
  %.not69 = icmp eq i32 %i.u, 0
  %i.v = extractelement <16 x i8> %i.q, i64 15
  br i1 %.not69, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.w = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.w)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.042.0 = phi i32 [ %i.ag, %.critedge.i ], [ %i.t, %.preheader ] ; 4 uses
  %i.x = icmp ne i32 %.sroa.042.0, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0, i1 true)
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = getelementptr i8, ptr %i.o, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !58
  %i.ae = icmp eq ptr %i.l, %i.ad
  br i1 %i.ae, label %bb.f, label %.critedge.i, !prof !20

.critedge.i:                                      ; preds = %bb.d
  %i.af = add nsw i32 %.sroa.042.0, -1
  %i.ag = and i32 %i.af, %.sroa.042.0             ; 2 uses
  %i.ah = and i32 %i.ag, 16382
  %.not70 = icmp eq i32 %i.ah, 0
  br i1 %.not70, label %.loopexit, label %bb.d, !llvm.loop !4

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.ai = icmp eq i8 %i.v, 0
  br i1 %i.ai, label %.thread67, label %bb.e, !prof !20

bb.e:                                             ; preds = %.loopexit
  %i.aj = add i64 %.024.i80, -1                   ; 2 uses
  %i.ak = add i64 %i.e, %.026.i79
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %.thread67, label %bb.c, !llvm.loop !5

bb.f:                                             ; preds = %bb.d
  %i.al = getelementptr i8, ptr %i.ab, i64 16
  br label %bb.o

.thread67:                                        ; preds = %bb.e, %.loopexit, %bb.a
  %.pre-phi91 = phi i64 [ %i.b, %bb.a ], [ %i.i, %.loopexit ], [ %i.i, %bb.e ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.an = load i8, ptr %i.am, align 1, !tbaa !35
  %i.ao = and i8 %i.an, 15
  %i.ap = zext nneg i8 %i.ao to i64               ; 2 uses
  %i.aq = shl i64 %i.ap, %.pre-phi91              ; 2 uses
  %.not.i30 = icmp ult i64 %i.c, %i.aq
  br i1 %.not.i30, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread67
  %i.ar = shl nuw i64 1, %.pre-phi91
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.ar, i64 noundef %i.ap, i64 noundef %i.aq)
  %.pre87 = load i64, ptr %i.a, align 8, !tbaa !24
  %.pre88 = load ptr, ptr %1, align 8, !tbaa !67
  %.pre89 = and i64 %.pre87, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE16reserveForInsertEm.exit: ; preds = %.thread67, %bb.g
  %.pre-phi = phi i64 [ %.pre-phi91, %.thread67 ], [ %.pre89, %bb.g ]
  %i.as = phi ptr [ %.pre, %.thread67 ], [ %.pre88, %bb.g ] ; 4 uses
  %notmask.i31 = shl nsw i64 -1, %.pre-phi
  %i.at = xor i64 %notmask.i31, -1                ; 2 uses
  %i.au = and i64 %2, %i.at
  %i.av = shl nuw nsw i64 %i.au, 7                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av ; 2 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16, !tbaa !35
  %i.ay = icmp eq <16 x i8> %i.ax, zeroinitializer
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = and i16 %i.az, 16383                    ; 2 uses
  %.not71 = icmp eq i16 %i.ba, 0
  br i1 %.not71, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE16reserveForInsertEm.exit
  %i.bb = shl i64 %3, 1
  %i.bc = or disjoint i64 %i.bb, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bd = phi i64 [ %i.av, %bb.h ], [ %i.bk, %_ZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE25incrOutboundOverflowCountEv.exit ]
  %.028 = phi i64 [ %2, %bb.h ], [ %i.bi, %_ZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE25incrOutboundOverflowCountEv.exit ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 15 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !71  ; 2 uses
  %.not.i32 = icmp eq i8 %i.bg, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = add i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !71
  br label %_ZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.bi = add i64 %i.bc, %.028                    ; 2 uses
  %i.bj = and i64 %i.bi, %i.at
  %i.bk = shl nuw nsw i64 %i.bj, 7                ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bk
  %i.bm = load <16 x i8>, ptr %i.bl, align 16     ; 2 uses
  %i.bn = icmp eq <16 x i8> %i.bm, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = and i16 %i.bo, 16383                    ; 2 uses
  %.not72 = icmp eq i16 %i.bp, 0
  br i1 %.not72, label %bb.i, label %bb.k, !llvm.loop !239

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE25incrOutboundOverflowCountEv.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bk ; 2 uses
  %i.br = extractelement <16 x i8> %i.bm, i64 14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 14
  %i.bt = add i8 %i.br, 16
  store i8 %i.bt, ptr %i.bs, align 2, !tbaa !70
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE16reserveForInsertEm.exit
  %.sroa.036.0.in = phi i16 [ %i.ba, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE16reserveForInsertEm.exit ], [ %i.bp, %bb.k ]
  %.1 = phi ptr [ %i.aw, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE16reserveForInsertEm.exit ], [ %i.bq, %bb.k ] ; 3 uses
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64              ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bv ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !35
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %_ZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.3) #27
  unreachable

_ZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE6setTagEmm.exit: ; preds = %bb.l
  %i.bz = trunc i64 %3 to i8
  store i8 %i.bz, ptr %i.bw, align 1, !tbaa !35
  %i.ca = shl nuw nsw i64 %i.bv, 3
  %i.cb = getelementptr i8, ptr %.1, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 16     ; 4 uses
  %i.cd = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cd)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %i.ce = load ptr, ptr %5, align 8, !tbaa !58
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !58
  %i.cf = lshr i64 %i.bv, 1
  %i.cg = ptrtoint ptr %i.cc to i64
  %i.ch = or i64 %i.cf, %i.cg                     ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !68
  %i.ck = icmp ult i64 %i.cj, %i.ch
  br i1 %i.ck, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE6setTagEmm.exit
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !34
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE6setTagEmm.exit, %bb.n
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !24  ; 2 uses
  %i.cm = and i64 %i.cl, -256
  %i.cn = add i64 %i.cm, 256
  %i.co = and i64 %i.cl, 255
  %i.cp = or disjoint i64 %i.cn, %i.co
  store i64 %i.cp, ptr %i.a, align 8, !tbaa !24
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit
  %.sink107 = phi ptr [ %i.al, %bb.f ], [ %i.cc, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit ]
  %.lcssa102.sink = phi i64 [ %i.z, %bb.f ], [ %i.bv, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink107, ptr %0, align 8, !tbaa !241
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa102.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !34
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cq, align 8, !tbaa !244
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !24
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.183", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.163", align 1   ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !34
  store i64 %2, ptr %i.b, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.k = load ptr, ptr %0, align 8, !tbaa !67     ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 3
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 7                            ; 2 uses
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 3
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 7
  %.0.i70 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i70, ptr %i.g, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i70) #28 ; 16 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !81
  store i8 0, ptr %i.i, align 1, !tbaa !78
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.w = icmp ult i64 %4, 8
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.au, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.x = shl nsw i64 %.08.i, 7
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.z = shl i64 %.08.i, 7
  %i.aa = getelementptr i8, ptr %i.v, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = shl i64 %.08.i, 7
  %i.ad = getelementptr i8, ptr %i.v, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %i.af = shl i64 %.08.i, 7
  %i.ag = getelementptr i8, ptr %i.v, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = shl i64 %.08.i, 7
end_hunk_3
begin_hunk_4_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE10rehashImplEmmmmm:bb.a
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !35
  %i.bo = shl i64 %.054133, 3
  %i.bp = getelementptr i8, ptr %i.v, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 16     ; 2 uses
  call void @llvm.assume(i1 %i.bi)
  %i.br = shl i64 %.056132, 3
  %i.bs = getelementptr i8, ptr %i.k, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bq) ]
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !58
  store ptr %i.bu, ptr %i.bq, align 8, !tbaa !58
  %i.bv = add nuw i64 %.054133, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.155 = phi i64 [ %i.bv, %bb.g ], [ %.054133, %bb.d ] ; 3 uses
  %i.bw = add i64 %.056132, 1
  %i.bx = icmp ult i64 %.155, %1
  br i1 %i.bx, label %bb.d, label %bb.i, !llvm.loop !249

bb.i:                                             ; preds = %bb.h
  %i.by = add i64 %.155, -1                       ; 2 uses
  %i.bz = shl i64 %i.by, 3
  %i.ca = getelementptr i8, ptr %i.v, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 16     ; 2 uses
  %i.cc = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cc)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  %i.cd = and i64 %i.by, 255                      ; 2 uses
  %i.ce = icmp samesign ult i64 %i.cd, 16
  call void @llvm.assume(i1 %i.ce)
  %i.cf = lshr i64 %i.cd, 1
  %i.cg = ptrtoint ptr %i.cb to i64
  %i.ch = or i64 %i.cf, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !34
  br label %bb.aa

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %7, i8 0, i64 %4, i1 false)
  br label %.lr.ph131.preheader

bb.k:                                             ; preds = %bb.j
  %i.cj = icmp slt i64 %4, 0
  br i1 %i.cj, label %bb.l, label %bb.m, !prof !45

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #29
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #30
          to label %bb.o unwind label %bb.n       ; 3 uses

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS0_18EventBaseLocalBaseEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  resume { ptr, i32 } %i.cl

bb.o:                                             ; preds = %bb.m
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !102
  %.pre141 = load i64, ptr %i.b, align 8, !tbaa !34
  %.pre142 = load i64, ptr %i.a, align 8, !tbaa !34 ; 2 uses
  %.pre143 = shl i64 %.pre141, 7
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ck, i8 0, i64 %4, i1 false)
  %.not58128 = icmp eq i64 %.pre142, 0
  br i1 %.not58128, label %._crit_edge, label %.lr.ph131.preheader

.lr.ph131.preheader:                              ; preds = %.thread, %bb.o
  %.0113157 = phi ptr [ %7, %.thread ], [ %i.ck, %bb.o ] ; 4 uses
  %i.cm = phi ptr [ %i.k, %.thread ], [ %.pre, %bb.o ]
  %i.cn = phi i64 [ %1, %.thread ], [ %.pre142, %bb.o ]
  %.pre-phi156 = phi i64 [ %i.p, %.thread ], [ %.pre143, %bb.o ]
  %i.co = getelementptr i8, ptr %i.cm, i64 %.pre-phi156
  br label %.lr.ph131

.loopexit:                                        ; preds = %bb.w, %.lr.ph131
  %.1.lcssa = phi i64 [ %.041129, %.lr.ph131 ], [ %i.cv, %bb.w ] ; 2 uses
  %.not58 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph131, !llvm.loop !250

.lr.ph131:                                        ; preds = %.lr.ph131.preheader, %.loopexit
  %.042130.pn = phi ptr [ %.042130, %.loopexit ], [ %i.co, %.lr.ph131.preheader ]
  %.041129 = phi i64 [ %.1.lcssa, %.loopexit ], [ %i.cn, %.lr.ph131.preheader ] ; 2 uses
  %.042130 = getelementptr i8, ptr %.042130.pn, i64 -128 ; 5 uses
  %i.cp = load <16 x i8>, ptr %.042130, align 16, !tbaa !35
  %i.cq = icmp eq <16 x i8> %i.cp, zeroinitializer
  %i.cr = bitcast <16 x i1> %i.cq to i16
  %i.cs = and i16 %i.cr, 16383                    ; 2 uses
  %.not114123 = icmp eq i16 %i.cs, 16383
  br i1 %.not114123, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph131
  %i.ct = xor i16 %i.cs, 16383
  %.sroa.079.0.extract.trunc = zext nneg i16 %i.ct to i32
  %i.cu = icmp ne ptr %.042130, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cu)
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.w
  %.1126 = phi i64 [ %.041129, %.lr.ph ], [ %i.cv, %bb.w ]
  %.sroa.079.0125 = phi i32 [ %.sroa.079.0.extract.trunc, %.lr.ph ], [ %.sroa.079.1, %bb.w ] ; 3 uses
  %.sroa.8.0124 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.w ] ; 2 uses
  %i.cv = add i64 %.1126, -1                      ; 2 uses
  %i.cw = and i32 %.sroa.079.0125, 1
  %.not.i72 = icmp eq i32 %i.cw, 0
  br i1 %.not.i72, label %bb.q, label %bb.r, !prof !45

bb.q:                                             ; preds = %bb.p
  %i.cx = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.079.0125, i1 true) ; 2 uses
  %i.cy = add i32 %i.cx, %.sroa.8.0124
  %i.cz = add nuw nsw i32 %i.cx, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.sroa.8.1.in = phi i32 [ %i.cy, %bb.q ], [ %.sroa.8.0124, %bb.p ] ; 2 uses
  %.pn115 = phi i32 [ %i.cz, %bb.q ], [ 1, %bb.p ]
  %.sroa.079.1 = lshr i32 %.sroa.079.0125, %.pn115 ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %i.da = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.db = shl nuw nsw i64 %i.da, 3
  %i.dc = getelementptr i8, ptr %.042130, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 16     ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !58
  %i.df = ptrtoint ptr %i.de to i64               ; 2 uses
  %i.dg = zext i64 %i.df to i128
  %i.dh = mul nuw i128 %i.dg, 14181476777654086739
  %i.di = lshr i128 %i.dh, 64
  %i.dj = trunc nuw i128 %i.di to i64
  %i.dk = mul i64 %i.df, -4265267296055464877
  %i.dl = xor i64 %i.dk, %i.dj
  %i.dm = mul i64 %i.dl, -4265267296055464877     ; 2 uses
  %i.dn = lshr i64 %i.dm, 14
  %i.do = and i64 %i.dn, 255
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.do, i64 1) ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.042130, i64 %i.da
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !35
  %i.dr = zext i8 %i.dq to i64
  %i.ds = icmp eq i64 %.sroa.speculated.i.i, %i.dr
  br i1 %i.ds, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE10rehashImplEmmmmmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.3) #27
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.dt = lshr i64 %i.dm, 22
  %i.du = shl nuw nsw i64 %.sroa.speculated.i.i, 1
  %i.dv = or disjoint i64 %i.du, 1
  %i.dw = load i64, ptr %i.ba, align 8, !tbaa !24
  %i.dx = and i64 %i.dw, 255
  %notmask.i.i = shl nsw i64 -1, %i.dx
  %i.dy = xor i64 %notmask.i.i, -1                ; 2 uses
  %i.dz = load ptr, ptr %0, align 8, !tbaa !67    ; 2 uses
  %i.ea = and i64 %i.dt, %i.dy                    ; 4 uses
  %i.eb = shl nuw nsw i64 %i.ea, 7                ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.0113157, i64 %i.ea
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !35  ; 2 uses
  %i.ee = icmp ult i8 %i.ed, 14
  br i1 %i.ee, label %._crit_edge.i, label %.lr.ph.i74, !prof !94

.lr.ph.i74:                                       ; preds = %bb.t, %_ZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE25incrOutboundOverflowCountEv.exit.i
  %i.ef = phi i64 [ %i.en, %_ZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE25incrOutboundOverflowCountEv.exit.i ], [ %i.eb, %bb.t ]
  %i.eg = phi i64 [ %i.em, %_ZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE25incrOutboundOverflowCountEv.exit.i ], [ %i.ea, %bb.t ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ef
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 15 ; 2 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !71  ; 2 uses
  %.not.i.i = icmp eq i8 %i.ej, -2
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE25incrOutboundOverflowCountEv.exit.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i74
  %i.ek = add i8 %i.ej, 1
  store i8 %i.ek, ptr %i.ei, align 1, !tbaa !71
  br label %_ZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE25incrOutboundOverflowCountEv.exit.i

_ZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE25incrOutboundOverflowCountEv.exit.i: ; preds = %bb.u, %.lr.ph.i74
  %i.el = add i64 %i.dv, %i.eg
  %i.em = and i64 %i.el, %i.dy                    ; 4 uses
  %i.en = shl nuw nsw i64 %i.em, 7                ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0113157, i64 %i.em
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !35  ; 2 uses
  %i.eq = icmp ult i8 %i.ep, 14
  br i1 %i.eq, label %._crit_edge.i, label %.lr.ph.i74, !prof !95, !llvm.loop !251

._crit_edge.i:                                    ; preds = %_ZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE25incrOutboundOverflowCountEv.exit.i, %bb.t
  %.lcssa22.i = phi i64 [ %i.ea, %bb.t ], [ %i.em, %_ZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE25incrOutboundOverflowCountEv.exit.i ]
  %.0.lcssa.i = phi i8 [ 0, %bb.t ], [ 16, %_ZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE25incrOutboundOverflowCountEv.exit.i ]
  %.pn.i = phi i64 [ %i.eb, %bb.t ], [ %i.en, %_ZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE25incrOutboundOverflowCountEv.exit.i ]
  %.lcssa.i = phi i8 [ %i.ed, %bb.t ], [ %i.ep, %_ZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE25incrOutboundOverflowCountEv.exit.i ] ; 2 uses
  %.lcssa21.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.pn.i ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0113157, i64 %.lcssa22.i
  %i.es = add nuw nsw i8 %.lcssa.i, 1
  store i8 %i.es, ptr %i.er, align 1, !tbaa !35
  %i.et = zext nneg i8 %.lcssa.i to i64           ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 %i.et ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !35
  %i.ew = icmp eq i8 %i.ev, 0
  br i1 %i.ew, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.3) #27
  unreachable

bb.w:                                             ; preds = %._crit_edge.i
  %i.ex = trunc nuw i64 %.sroa.speculated.i.i to i8
  store i8 %i.ex, ptr %i.eu, align 1, !tbaa !35
  %i.ey = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 14 ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 2, !tbaa !70
  %i.fa = add i8 %i.ez, %.0.lcssa.i
  store i8 %i.fa, ptr %i.ey, align 2, !tbaa !70
  %i.fb = shl nuw nsw i64 %i.et, 3
  %i.fc = getelementptr i8, ptr %.lcssa21.i, i64 %i.fb
  %i.fd = getelementptr i8, ptr %i.fc, i64 16     ; 2 uses
  %i.fe = icmp ne ptr %.lcssa21.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.fe)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fd) ]
  %i.ff = load ptr, ptr %i.dd, align 8, !tbaa !58
  store ptr %i.ff, ptr %i.fd, align 8, !tbaa !58
  %.not114 = icmp eq i32 %.sroa.079.1, 0
  br i1 %.not114, label %.loopexit, label %bb.p, !llvm.loop !252

._crit_edge:                                      ; preds = %.loopexit, %bb.o
  %.0113158 = phi ptr [ %i.ck, %bb.o ], [ %.0113157, %.loopexit ] ; 2 uses
  %i.fg = load i64, ptr %i.ba, align 8, !tbaa !24
  %i.fh = and i64 %i.fg, 255
  %i.fi = shl nuw i64 1, %i.fh
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge, %bb.x
  %.0.in = phi i64 [ %i.fi, %._crit_edge ], [ %.0, %bb.x ]
  %.0 = add i64 %.0.in, -1                        ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.0113158, i64 %.0
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !35  ; 3 uses
  %i.fl = icmp eq i8 %i.fk, 0
  br i1 %i.fl, label %bb.x, label %bb.y, !llvm.loop !253

bb.y:                                             ; preds = %bb.x
  %i.fm = load ptr, ptr %0, align 8, !tbaa !67
  %i.fn = shl nsw i64 %.0, 7
  %i.fo = getelementptr inbounds i8, ptr %i.fm, i64 %i.fn ; 2 uses
  %i.fp = zext nneg i8 %i.fk to i64
  %i.fq = add nsw i64 %i.fp, -1                   ; 2 uses
  %i.fr = shl nuw nsw i64 %i.fq, 3
  %i.fs = getelementptr i8, ptr %i.fo, i64 %i.fr
  %i.ft = getelementptr i8, ptr %i.fs, i64 16     ; 2 uses
  %i.fu = icmp ne ptr %i.fo, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.fu)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ft) ]
  %i.fv = icmp ult i8 %i.fk, 17
  call void @llvm.assume(i1 %i.fv)
  %i.fw = lshr i64 %i.fq, 1
  %i.fx = ptrtoint ptr %i.ft to i64
  %i.fy = or i64 %i.fw, %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !34
  br i1 %.not, label %bb.z, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS0_18EventBaseLocalBaseEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

bb.z:                                             ; preds = %bb.y
  call void @_ZdlPvm(ptr noundef nonnull %.0113158, i64 noundef %4) #31
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS0_18EventBaseLocalBaseEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS0_18EventBaseLocalBaseEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  br label %bb.aa

bb.aa:                                            ; preds = %bb.i, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS0_18EventBaseLocalBaseEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !78
  %i.ga = load i64, ptr %i.d, align 8, !tbaa !34
  %.not.i.i.i = icmp eq i64 %i.ga, 0
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS0_18EventBaseLocalBaseEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gb = load ptr, ptr %i.c, align 8, !tbaa !102 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS0_18EventBaseLocalBaseEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gc = load i64, ptr %i.e, align 8, !tbaa !34
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.gc) #6
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS0_18EventBaseLocalBaseEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS0_18EventBaseLocalBaseEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.aa, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS0_18EventBaseLocalBaseEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !85, !range !40, !noundef !41
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS0_18EventBaseLocalBaseEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !258, !nonnull !41
  %i.e = load i8, ptr %i.d, align 1, !tbaa !78, !range !40, !noundef !41
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !259, !nonnull !41, !align !98
  %i.i = load i64, ptr %i.h, align 8, !tbaa !34
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS0_18EventBaseLocalBaseEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !260, !nonnull !41, !align !98
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !102
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !261, !nonnull !41, !align !98
  %i.o = load i64, ptr %i.n, align 8, !tbaa !34
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !262  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !263, !nonnull !41, !align !98
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !81
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !264, !nonnull !41, !align !98
  %i.w = load i64, ptr %i.v, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !260, !nonnull !41, !align !98
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !102
  store ptr %i.z, ptr %i.q, align 8, !tbaa !67
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !265, !nonnull !41, !align !98
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !34 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !24
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !24
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE1EE5checkEv() #6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS0_18EventBaseLocalBaseEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #6
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS0_18EventBaseLocalBaseEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS0_18EventBaseLocalBaseEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #5 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #11

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_4
