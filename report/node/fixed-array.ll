Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/fixed-array?download=true
inline.NumInlined: 431
inline.NumDeleted: 216
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN2v88internal7Factory20CompactWeakArrayListENS0_12DirectHandleINS0_13WeakArrayListEEEiNS0_14AllocationTypeE
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13WeakArrayList7CompactEPNS0_7IsolateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i, 15
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = lshr i64 %i.c, 32                        ; 2 uses
  %i.e = trunc nuw i64 %i.d to i32
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.i
  %.sroa.02.0.copyload.i.pre = load i64, ptr %0, align 8
  %.pre = add i64 %.sroa.02.0.copyload.i.pre, 15
  %.pre18 = inttoptr i64 %.pre to ptr
  %i.g = sext i32 %.1 to i64
  %i.h = shl nsw i64 %i.g, 32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi19 = phi ptr [ %.pre18, %._crit_edge.loopexit ], [ %i.b, %bb.a ]
  %.010.lcssa = phi i64 [ %i.h, %._crit_edge.loopexit ], [ 0, %bb.a ]
  store atomic volatile i64 %.010.lcssa, ptr %.pre-phi19 monotonic, align 8
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %bb.a ] ; 3 uses
  %.01013 = phi i32 [ %.1, %bb.i ], [ 0, %bb.a ]  ; 4 uses
  %i.i = shl nuw nsw i64 %indvars.iv, 3
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8 ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 23
  %i.k = add i64 %.sroa.0.0.copyload.i.i, %i.j
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8 ; 5 uses
  %i.n = and i64 %i.m, 4294967295
  %i.o = icmp eq i64 %i.n, 3
  br i1 %i.o, label %bb.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.p = zext i32 %.01013 to i64
  %.not = icmp eq i64 %indvars.iv, %i.p
  br i1 %.not, label %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = shl nsw i32 %.01013, 3
  %i.r = sext i32 %i.q to i64
  %i.s = add nsw i64 %i.r, 23                     ; 2 uses
  %i.t = add i64 %.sroa.0.0.copyload.i.i, %i.s
  %i.u = inttoptr i64 %i.t to ptr
  store atomic volatile i64 %i.m, ptr %i.u monotonic, align 8
  %.sroa.02.0.copyload.i.i = load i64, ptr %0, align 8 ; 4 uses
  %i.v = add i64 %.sroa.02.0.copyload.i.i, %i.s   ; 2 uses
  %i.w = trunc i64 %i.m to i1
  br i1 %i.w, label %bb.d, label %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit

bb.d:                                             ; preds = %bb.c
  %i.x = and i64 %i.m, -3                         ; 2 uses
  %i.y = and i64 %.sroa.02.0.copyload.i.i, -262144
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load i64, ptr %i.z, align 262144        ; 2 uses
  %i.ab = and i64 %i.aa, 32
  %.not.i.i.i.i = icmp eq i64 %i.ab, 0
  %i.ac = and i64 %i.aa, 25
  %.not37.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not37.i.i.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ad = and i64 %i.m, -262144
  %i.ae = inttoptr i64 %i.ad to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ae, align 262144
  %i.af = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 25
  %.not38.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not38.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %.sroa.02.0.copyload.i.i, i64 noundef %i.v, i64 %i.x) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  br i1 %.not.i.i.i.i, label %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, label %bb.h, !prof !12

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %.sroa.02.0.copyload.i.i, i64 %i.v, i64 %i.x) #11
  br label %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.h, %bb.g, %bb.c, %bb.b
  %i.ag = add nsw i32 %.01013, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, %.lr.ph
  %.1 = phi i32 [ %.01013, %.lr.ph ], [ %i.ag, %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal13WeakArrayList6IsFullEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8 ; 2 uses
  %i.a = add i64 %.sroa.0.0.copyload.i, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %.sroa.0.0.copyload.i, 7
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8
  %.unshifted = xor i64 %i.f, %i.c
  %i.g = icmp ult i64 %.unshifted, 4294967296
  ret i1 %i.g
}

declare ptr @_ZN2v88internal7Factory24CopyWeakArrayListAndGrowENS0_12DirectHandleINS0_13WeakArrayListEEEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef i32 @_ZNK2v88internal13WeakArrayList23CountLiveWeakReferencesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8 ; 2 uses
  %i.a = add i64 %.sroa.0.0.copyload.i, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = lshr i64 %.fr, 32                        ; 4 uses
  %i.e = trunc nuw i64 %i.d to i32
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %invariant.op = add i64 %.sroa.0.0.copyload.i, 23 ; 3 uses
  %i.g = icmp eq i64 %i.d, 1
  br i1 %i.g, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.d, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.h = and i64 %.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.h, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.056.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod11 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %i.i = shl nuw nsw i64 %indvars.iv.epil.init, 3
  %.reass.epil = add i64 %i.i, %invariant.op
  %i.j = inttoptr i64 %.reass.epil to ptr
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8 ; 2 uses
  %i.l = and i64 %i.k, 3
  %i.m = icmp eq i64 %i.l, 3
  %i.n = and i64 %i.k, 4294967295
  %i.o = icmp ne i64 %i.n, 3
  %i.p = and i1 %i.m, %i.o
  %i.q = zext i1 %i.p to i32
  %spec.select.epil = add nuw nsw i32 %.056.epil.init, %i.q
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.05.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph.epil.preheader ]
  ret i32 %.05.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.056 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %spec.select.1, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.r = shl nuw nsw i64 %indvars.iv, 3
  %.reass = add i64 %i.r, %invariant.op
  %i.s = inttoptr i64 %.reass to ptr
  %i.t = load atomic volatile i64, ptr %i.s monotonic, align 8 ; 2 uses
  %i.u = and i64 %i.t, 3
  %i.v = icmp eq i64 %i.u, 3
  %i.w = and i64 %i.t, 4294967295
  %i.x = icmp ne i64 %i.w, 3
  %i.y = and i1 %i.v, %i.x
  %i.z = zext i1 %i.y to i32
  %spec.select = add nuw nsw i32 %.056, %i.z
  %indvars.iv.next = shl i64 %indvars.iv, 3
  %i.aa = or disjoint i64 %indvars.iv.next, 8
  %.reass.1 = add i64 %i.aa, %invariant.op
  %i.ab = inttoptr i64 %.reass.1 to ptr
  %i.ac = load atomic volatile i64, ptr %i.ab monotonic, align 8 ; 2 uses
  %i.ad = and i64 %i.ac, 3
  %i.ae = icmp eq i64 %i.ad, 3
  %i.af = and i64 %i.ac, 4294967295
  %i.ag = icmp ne i64 %i.af, 3
  %i.ah = and i1 %i.ae, %i.ag
  %i.ai = zext i1 %i.ah to i32
  %spec.select.1 = add nuw nsw i32 %spec.select, %i.ai ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !26
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal13WeakArrayList9RemoveOneENS0_23MaybeObjectDirectHandleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.fr = freeze ptr %2                            ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8 ; 5 uses
  %i.a = add i64 %.sroa.0.0.copyload.i, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = lshr i64 %i.c, 32                        ; 3 uses
  %i.e = trunc nuw i64 %i.d to i32                ; 4 uses
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %.fr59 = freeze i32 %1
  %i.h = icmp eq i32 %.fr59, 0
  %i.i = icmp eq ptr %.fr, null                   ; 2 uses
  %i.j = shl nsw i32 %i.f, 3                      ; 2 uses
  %narrow.us.us = add nuw i32 %i.j, 23
  %i.k = zext i32 %narrow.us.us to i64            ; 3 uses
  %i.l = add i64 %.sroa.0.0.copyload.i, %i.k
  %i.m = inttoptr i64 %i.l to ptr                 ; 3 uses
  %i.n = load atomic volatile i64, ptr %i.m monotonic, align 8 ; 2 uses
  br i1 %i.h, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.i, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split, !prof !7

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  unreachable

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.o = load i64, ptr %.fr, align 8
  %i.p = or i64 %i.o, 3                           ; 2 uses
  %.not.us54 = icmp eq i64 %i.n, %i.p
  br i1 %.not.us54, label %.split38.us, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %.lr.ph.split.us.split
  %.not80 = icmp eq i64 %i.d, 1
  br i1 %.not80, label %.critedge, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.us.lr.ph, !llvm.loop !27

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.us.lr.ph: ; preds = %.lr.ph55.preheader
  %i.q = add nsw i32 %i.e, -2
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.us, !llvm.loop !27

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.us: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.us.lr.ph, %.lr.ph55
  %i.r = phi i32 [ %i.q, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.us.lr.ph ], [ %i.x, %.lr.ph55 ] ; 3 uses
  %i.s = shl nsw i32 %i.r, 3
  %narrow.us = add nuw i32 %i.s, 23
  %i.t = zext i32 %narrow.us to i64               ; 2 uses
  %i.u = add i64 %.sroa.0.0.copyload.i, %i.t
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8
  %.not.us = icmp eq i64 %i.w, %i.p
  br i1 %.not.us, label %.split38.us, label %.lr.ph55, !llvm.loop !27

.lr.ph55:                                         ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.us
  %i.x = add nsw i32 %i.r, -1
  %i.y = icmp sgt i32 %i.r, 0
  br i1 %i.y, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.us, label %.lr.ph48..critedge.loopexit74_crit_edge, !llvm.loop !27

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.i, label %.lr.ph.split.split.us, label %.lr.ph.split.split, !prof !7

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  unreachable

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.z = load i64, ptr %.fr, align 8              ; 2 uses
  %.not47 = icmp eq i64 %i.n, %i.z
  br i1 %.not47, label %.split38.us, label %.lr.ph48.preheader

.lr.ph48.preheader:                               ; preds = %.lr.ph.split.split
  %.not79 = icmp eq i64 %i.d, 1
  br i1 %.not79, label %.critedge, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i.lr.ph, !llvm.loop !27

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i.lr.ph: ; preds = %.lr.ph48.preheader
  %i.aa = add nsw i32 %i.e, -2
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i, !llvm.loop !27

.lr.ph48:                                         ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i
  %i.ab = add nsw i32 %i.ad, -1
  %i.ac = icmp sgt i32 %i.ad, 0
  br i1 %i.ac, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i, label %.lr.ph48..critedge.loopexit74_crit_edge, !llvm.loop !27

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i.lr.ph, %.lr.ph48
  %i.ad = phi i32 [ %i.aa, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i.lr.ph ], [ %i.ab, %.lr.ph48 ] ; 3 uses
  %i.ae = shl nsw i32 %i.ad, 3
  %narrow = add nuw i32 %i.ae, 23
  %i.af = zext i32 %narrow to i64                 ; 2 uses
  %i.ag = add i64 %.sroa.0.0.copyload.i, %i.af
  %i.ah = inttoptr i64 %i.ag to ptr               ; 2 uses
  %i.ai = load atomic volatile i64, ptr %i.ah monotonic, align 8
  %.not = icmp eq i64 %i.ai, %i.z
  br i1 %.not, label %.split38.us, label %.lr.ph48, !llvm.loop !27

.split38.us:                                      ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.us, %.lr.ph.split.split, %.lr.ph.split.us.split
  %.us-phi39 = phi i64 [ %i.t, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.us ], [ %i.k, %.lr.ph.split.us.split ], [ %i.k, %.lr.ph.split.split ], [ %i.af, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i ]
  %.us-phi40 = phi ptr [ %i.v, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.us ], [ %i.m, %.lr.ph.split.us.split ], [ %i.m, %.lr.ph.split.split ], [ %i.ah, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i ]
  %3 = sext i32 %i.j to i64
  %4 = add nsw i64 %3, 23                         ; 2 uses
  %5 = add i64 %4, %.sroa.0.0.copyload.i
  %6 = inttoptr i64 %5 to ptr
  %i.aj = load atomic volatile i64, ptr %6 monotonic, align 8 ; 5 uses
  store atomic volatile i64 %i.aj, ptr %.us-phi40 monotonic, align 8
  %.sroa.02.0.copyload.i.i = load i64, ptr %0, align 8 ; 4 uses
  %i.ak = add i64 %.sroa.02.0.copyload.i.i, %.us-phi39 ; 2 uses
  %i.al = trunc i64 %i.aj to i1
  %i.am = and i64 %i.aj, 4294967295
  %i.an = icmp ne i64 %i.am, 3
  %i.ao = and i1 %i.an, %i.al
  br i1 %i.ao, label %bb.b, label %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit23

bb.b:                                             ; preds = %.split38.us
  %i.ap = and i64 %i.aj, -3                       ; 2 uses
  %i.aq = and i64 %.sroa.02.0.copyload.i.i, -262144
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load i64, ptr %i.ar, align 262144       ; 2 uses
  %i.at = and i64 %i.as, 32
  %.not.i.i.i.i = icmp eq i64 %i.at, 0
  %i.au = and i64 %i.as, 25
  %.not37.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not37.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.av = and i64 %i.aj, -262144
  %i.aw = inttoptr i64 %i.av to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.aw, align 262144
  %i.ax = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 25
  %.not38.i.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not38.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %.sroa.02.0.copyload.i.i, i64 noundef %i.ak, i64 %i.ap) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i.i, label %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit23, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %.sroa.02.0.copyload.i.i, i64 %i.ak, i64 %i.ap) #11
  br label %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit23

_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit23: ; preds = %bb.f, %bb.e, %.split38.us
  %.sroa.04.0.copyload.i.i17 = load i64, ptr %0, align 8
  %i.ay = add i64 %.sroa.04.0.copyload.i.i17, %4
  %i.az = inttoptr i64 %i.ay to ptr
  store atomic volatile i64 3, ptr %i.az monotonic, align 8
  %.sroa.02.0.copyload.i = load i64, ptr %0, align 8
  %i.ba = sext i32 %i.f to i64
  %i.bb = shl nsw i64 %i.ba, 32
  %i.bc = add i64 %.sroa.02.0.copyload.i, 15
  %i.bd = inttoptr i64 %i.bc to ptr
  store atomic volatile i64 %i.bb, ptr %i.bd monotonic, align 8
  br label %.critedge

.lr.ph48..critedge.loopexit74_crit_edge:          ; preds = %.lr.ph48, %.lr.ph55
  br label %.critedge, !llvm.loop !27

.critedge:                                        ; preds = %.lr.ph48.preheader, %.lr.ph48..critedge.loopexit74_crit_edge, %.lr.ph55.preheader, %bb.a, %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit23
  %i.be = phi i1 [ true, %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit23 ], [ false, %bb.a ], [ false, %.lr.ph55.preheader ], [ false, %.lr.ph48.preheader ], [ false, %.lr.ph48..critedge.loopexit74_crit_edge ]
  ret i1 %i.be
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal13WeakArrayList8ContainsENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1) local_unnamed_addr #5 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8 ; 2 uses
  %i.a = add i64 %.sroa.0.0.copyload.i, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = lshr i64 %i.c, 32                        ; 2 uses
  %i.e = trunc nuw i64 %i.d to i32
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %invariant.op = add i64 %.sroa.0.0.copyload.i, 23
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.g = shl nuw nsw i64 %indvars.iv, 3
  %.reass = add i64 %i.g, %invariant.op
  %i.h = inttoptr i64 %.reass to ptr
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.j = icmp eq i64 %i.i, %1                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  %or.cond = select i1 %i.j, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge, label %.lr.ph, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ %i.j, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #7

declare void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4), i64, i32 noundef) unnamed_addr #3

declare void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64, i64 noundef, i64) local_unnamed_addr #3

declare void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64, i64, i64) local_unnamed_addr #3

declare i64 @_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8, i8 noundef zeroext) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #3

declare void @_ZN2v88internal4Heap14RightTrimArrayINS0_10FixedArrayEEEvNS0_6TaggedIT_EEii(ptr noundef nonnull align 8 dereferenceable(2992), i64, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN2v88internal4Heap14RightTrimArrayINS0_9ArrayListEEEvNS0_6TaggedIT_EEii(ptr noundef nonnull align 8 dereferenceable(2992), i64, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{i64 14314656}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !6}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = distinct !{!13, !10}
!14 = !{!15, !17}
!15 = distinct !{!15, !16, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!16 = distinct !{!16, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!17 = distinct !{!17, !18, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!18 = distinct !{!18, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!19 = !{!20, !22}
!20 = distinct !{!20, !21, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!21 = distinct !{!21, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!22 = distinct !{!22, !23, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!23 = distinct !{!23, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6}
end_hunk_0
