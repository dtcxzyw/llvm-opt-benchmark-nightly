Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Request?download=true
inline.NumInlined: 3280
inline.NumDeleted: 1545
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_j:bb.a
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.g
  %i.i = load atomic i64, ptr %i.h acquire, align 32
  %i.j = and i64 %i.i, -2
  %i.k = icmp eq i64 %i.j, %i.d
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = add i32 %.235, 1                         ; 2 uses
  %i.m = icmp eq i32 %i.l, %i.c
  br i1 %i.m, label %.critedge, label %bb.d, !llvm.loop !458

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noundef i32 @sched_yield() #12 ; 0 uses
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
  br i1 %i.v, label %.critedge, label %bb.g, !llvm.loop !458

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
  br i1 %i.ae, label %.critedge, label %bb.j, !llvm.loop !458

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
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.m, !llvm.loop !459

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
  store i32 %i.bn, ptr %1, align 4, !tbaa !62
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.h, %bb.k, %bb.l, %._crit_edge, %bb.s
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS9_JRKSt21piecewise_construct_tSt5tupleIJRKS9_EESI_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESN_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.21") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !63   ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread70_crit_edge, label %bb.b

..thread70_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !53
  %.pre109 = shl nuw i64 1, %i.b
  br label %.thread70

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.i = and i64 %i.b, 255                        ; 6 uses
  %i.j = shl nuw i64 1, %i.i                      ; 6 uses
  %notmask.i = shl nsw i64 -1, %i.i
  %i.k = xor i64 %notmask.i, -1                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53   ; 6 uses
  %i.n = load ptr, ptr %1, align 8                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = load i64, ptr %i.o, align 8
  %.fr94 = freeze i64 %i.p                        ; 3 uses
  %i.q = icmp eq i64 %.fr94, 0
  br i1 %i.q, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b, %9
  %.023.i88.us = phi i64 [ %10, %9 ], [ %i.j, %bb.b ]
  %.025.i87.us = phi i64 [ %11, %9 ], [ %2, %bb.b ] ; 2 uses
  %i.r = and i64 %.025.i87.us, %i.k
  %i.s = shl nsw i64 %i.r, 6
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.s ; 3 uses
  %i.u = load <16 x i8>, ptr %i.t, align 16       ; 2 uses
  %i.v = icmp eq <16 x i8> %i.u, %i.h
  %i.w = bitcast <16 x i1> %i.v to i16
  %i.x = zext i16 %i.w to i32                     ; 2 uses
  %i.y = and i32 %i.x, 4095
  %.not72.us = icmp eq i32 %i.y, 0
  %i.z = extractelement <16 x i8> %i.u, i64 15
  br i1 %.not72.us, label %.loopexit.split.us.us, label %.preheader.us

.loopexit.split.us.us:                            ; preds = %.critedge.i.us.us, %.split.us
  %8 = icmp eq i8 %i.z, 0
  br i1 %8, label %.thread70, label %9, !prof !73

9:                                                ; preds = %.loopexit.split.us.us
  %10 = add i64 %.023.i88.us, -1                  ; 2 uses
  %11 = add i64 %i.e, %.025.i87.us
  %.not.i.us = icmp eq i64 %10, 0
  br i1 %.not.i.us, label %.thread70, label %.split.us, !llvm.loop !1

.preheader.us:                                    ; preds = %.split.us
  %i.aa = icmp ne ptr %i.t, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.aa)
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i.us.us, %.preheader.us
  %.sroa.044.0.us.us = phi i32 [ %i.ao, %.critedge.i.us.us ], [ %i.x, %.preheader.us ] ; 4 uses
  %i.ab = icmp ne i32 %.sroa.044.0.us.us, 0
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0.us.us, i1 true)
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = getelementptr i8, ptr %i.t, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !62
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !68
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread, label %.critedge.i.us.us, !prof !69

.critedge.i.us.us:                                ; preds = %bb.c
  %i.an = add nsw i32 %.sroa.044.0.us.us, -1
  %i.ao = and i32 %i.an, %.sroa.044.0.us.us       ; 2 uses
  %i.ap = and i32 %i.ao, 4094
  %.not73.us.us = icmp eq i32 %i.ap, 0
  br i1 %.not73.us.us, label %.loopexit.split.us.us, label %bb.c, !llvm.loop !0

.split:                                           ; preds = %bb.b, %bb.e
  %.023.i88 = phi i64 [ %i.bt, %bb.e ], [ %i.j, %bb.b ]
  %.025.i87 = phi i64 [ %i.bu, %bb.e ], [ %2, %bb.b ] ; 2 uses
  %i.aq = and i64 %.025.i87, %i.k
  %i.ar = shl nsw i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ar ; 3 uses
  %i.at = load <16 x i8>, ptr %i.as, align 16     ; 2 uses
  %i.au = icmp eq <16 x i8> %i.at, %i.h
  %i.av = bitcast <16 x i1> %i.au to i16
  %i.aw = zext i16 %i.av to i32                   ; 2 uses
  %i.ax = and i32 %i.aw, 4095
  %.not72 = icmp eq i32 %i.ax, 0
  %i.ay = extractelement <16 x i8> %i.at, i64 15
  br i1 %.not72, label %.loopexit.split, label %.preheader

.preheader:                                       ; preds = %.split
  %i.az = icmp ne ptr %i.as, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.az)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.044.0 = phi i32 [ %i.bd, %.critedge.i ], [ %i.aw, %.preheader ] ; 4 uses
  %i.ba = icmp ne i32 %.sroa.044.0, 0
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0, i1 true)
  %i.bc = add nsw i32 %.sroa.044.0, -1
  %i.bd = and i32 %i.bc, %.sroa.044.0             ; 2 uses
  %i.be = zext nneg i32 %i.bb to i64              ; 2 uses
  %i.bf = shl nuw nsw i64 %i.be, 2
  %i.bg = getelementptr i8, ptr %i.as, i64 %i.bf  ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !62
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !68
  %i.bn = icmp eq i64 %.fr94, %i.bm
  br i1 %i.bn, label %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit, label %.critedge.i, !prof !69

_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit: ; preds = %bb.d
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !71
  %i.bp = load ptr, ptr %4, align 8, !tbaa !71
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.bp, ptr %i.bo, i64 %.fr94)
  %i.bq = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bq, label %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread, label %.critedge.i, !prof !72

.critedge.i:                                      ; preds = %bb.d, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit
  %i.br = and i32 %i.bd, 4094
  %.not73 = icmp eq i32 %i.br, 0
  br i1 %.not73, label %.loopexit.split, label %bb.d, !llvm.loop !0

.loopexit.split:                                  ; preds = %.critedge.i, %.split
  %i.bs = icmp eq i8 %i.ay, 0
  br i1 %i.bs, label %.thread70, label %bb.e, !prof !73

bb.e:                                             ; preds = %.loopexit.split
  %i.bt = add i64 %.023.i88, -1                   ; 2 uses
  %i.bu = add i64 %i.e, %.025.i87
  %.not.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i, label %.thread70, label %.split, !llvm.loop !1

_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread: ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit, %bb.c
  %.us-phi = phi ptr [ %i.af, %bb.c ], [ %i.bg, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit ]
  %.us-phi82 = phi i64 [ %i.ad, %bb.c ], [ %i.be, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit ]
  %i.bv = getelementptr i8, ptr %.us-phi, i64 16
  br label %bb.m

.thread70:                                        ; preds = %.loopexit.split, %bb.e, %9, %.loopexit.split.us.us, %..thread70_crit_edge
  %.pre-phi110 = phi i64 [ %.pre109, %..thread70_crit_edge ], [ %i.j, %9 ], [ %i.j, %.loopexit.split.us.us ], [ %i.j, %bb.e ], [ %i.j, %.loopexit.split ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread70_crit_edge ], [ %i.i, %9 ], [ %i.i, %.loopexit.split.us.us ], [ %i.i, %bb.e ], [ %i.i, %.loopexit.split ]
  %i.bw = phi ptr [ %.pre, %..thread70_crit_edge ], [ %i.m, %9 ], [ %i.m, %.loopexit.split.us.us ], [ %i.m, %bb.e ], [ %i.m, %.loopexit.split ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %.0.copyload.i.i = load i16, ptr %i.bx, align 1
  %i.by = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.bz = add i64 %.pre-phi110, -1
  %i.ca = lshr i64 %i.bz, 12
  %i.cb = add nuw nsw i64 %i.ca, 1
  %i.cc = mul i64 %i.cb, %i.by                    ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.cc
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.f

bb.f:                                             ; preds = %.thread70
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi110, i64 noundef %i.by, i64 noundef %i.cc)
  %.pre106 = load i64, ptr %i.a, align 8, !tbaa !63
  %.pre107 = load ptr, ptr %i.cd, align 8, !tbaa !53
  %.pre111 = and i64 %.pre106, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread70, %bb.f
  %.pre-phi112 = phi i64 [ %.pre-phi, %.thread70 ], [ %.pre111, %bb.f ]
  %i.ce = phi ptr [ %i.bw, %.thread70 ], [ %.pre107, %bb.f ] ; 4 uses
  %notmask.i33 = shl nsw i64 -1, %.pre-phi112
  %i.cf = xor i64 %notmask.i33, -1                ; 2 uses
  %i.cg = and i64 %2, %i.cf
  %i.ch = shl nsw i64 %i.cg, 6                    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ch ; 2 uses
  %i.cj = load <16 x i8>, ptr %i.ci, align 16, !tbaa !91
  %i.ck = icmp eq <16 x i8> %i.cj, zeroinitializer
  %i.cl = bitcast <16 x i1> %i.ck to i16
  %i.cm = and i16 %i.cl, 4095                     ; 2 uses
  %.not74 = icmp eq i16 %i.cm, 0
  br i1 %.not74, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.cn = shl i64 %3, 1
  %i.co = or disjoint i64 %i.cn, 1
  br label %bb.h

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.g
  %i.cp = phi i64 [ %i.ch, %bb.g ], [ %i.cw, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.g ], [ %i.cu, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 15 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !94  ; 2 uses
  %.not.i34 = icmp eq i8 %i.cs, -2
  br i1 %.not.i34, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ct = add i8 %i.cs, 1
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !94
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.h, %bb.i
  %i.cu = add i64 %i.co, %.030                    ; 2 uses
  %i.cv = and i64 %i.cu, %i.cf
  %i.cw = shl nsw i64 %i.cv, 6                    ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cw
  %i.cy = load <16 x i8>, ptr %i.cx, align 16     ; 2 uses
  %i.cz = icmp eq <16 x i8> %i.cy, zeroinitializer
  %i.da = bitcast <16 x i1> %i.cz to i16
  %i.db = and i16 %i.da, 4095                     ; 2 uses
  %.not75 = icmp eq i16 %i.db, 0
  br i1 %.not75, label %bb.h, label %bb.j, !llvm.loop !460

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cw ; 2 uses
  %i.dd = extractelement <16 x i8> %i.cy, i64 14
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 14
  %i.df = add i8 %i.dd, 16
  store i8 %i.df, ptr %i.de, align 2, !tbaa !95
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.038.0.in = phi i16 [ %i.cm, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.db, %bb.j ]
  %.1 = phi ptr [ %i.ci, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.dc, %bb.j ] ; 3 uses
  %i.dg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.038.0.in, i1 true)
  %i.dh = zext nneg i16 %i.dg to i64              ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.1, i64 %i.dh ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !91
  %i.dk = icmp eq i8 %i.dj, 0
  br i1 %i.dk, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.3) #39
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.k
  %i.dl = trunc i64 %3 to i8
  store i8 %i.dl, ptr %i.di, align 1, !tbaa !91
  %i.dm = shl nuw nsw i64 %i.dh, 2
  %i.dn = getelementptr i8, ptr %.1, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 16     ; 3 uses
  %i.dp = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.dp)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.do) ]
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESI_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %i.do, i64 %i.dh, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  br label %bb.m

bb.m:                                             ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink133 = phi ptr [ %i.bv, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread ], [ %i.do, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.us-phi82.sink = phi i64 [ %.us-phi82, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread ], [ %i.dh, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink133, ptr %0, align 8, !tbaa !96
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi82.sink, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !97
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.dq, align 8, !tbaa !462
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESI_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !63
  %i.c = lshr i64 %i.b, 8                         ; 2 uses
  %i.d = trunc i64 %i.c to i32
  store i32 %i.d, ptr %1, align 4, !tbaa !62
  %i.e = load ptr, ptr %0, align 8, !tbaa !64, !nonnull !87, !noundef !87
  %i.f = and i64 %i.c, 4294967295
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %i.f ; 5 uses
  %i.h = load i64, ptr %6, align 8, !tbaa !84
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.g, align 8, !tbaa !98
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !71   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !68   ; 8 uses
  %i.n = icmp ugt i64 %i.m, 15
end_hunk_0
