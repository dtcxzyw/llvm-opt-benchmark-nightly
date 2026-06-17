inline.NumInlined: 1034
inline.NumDeleted: 454
begin_hunk_0_@_ZN2v88internal15TransitionArray31CompactPrototypeTransitionArrayEPNS0_7IsolateENS0_6TaggedINS0_14WeakFixedArrayEEE:bb.a
  br i1 %i.s, label %.lr.ph49, label %._crit_edge50

.lr.ph49:                                         ; preds = %._crit_edge
  %i.t = trunc i64 %i.r to i1
  %i.u = and i64 %i.r, 4294967295
  %i.v = icmp ne i64 %i.u, 3
  %i.w = and i1 %i.v, %i.t
  %i.x = and i64 %i.r, -3                         ; 2 uses
  %i.y = or disjoint i64 %i.a, 1                  ; 2 uses
  %i.z = and i64 %i.a, -262144
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = and i64 %i.r, -262144
  %i.ac = inttoptr i64 %i.ab to ptr
  %.fr = freeze i1 %i.w
  %i.ad = sext i32 %.026.lcssa to i64             ; 4 uses
  %wide.trip.count61 = ashr i64 %i.g, 32          ; 3 uses
  br i1 %.fr, label %.lr.ph49.split.us, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34.preheader

_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34.preheader: ; preds = %.lr.ph49
  %i.ae = sub nsw i64 %wide.trip.count61, %i.ad
  %i.af = freeze i64 %i.ae                        ; 2 uses
  %i.ag = add i64 %i.af, -1
  %xtraiter = and i64 %i.af, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34.prol.loopexit, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34.prol

_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34.prol: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34.preheader, %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34.prol
  %indvars.iv53.prol = phi i64 [ %indvars.iv.next54.prol, %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34.prol ], [ %i.ad, %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34.prol ], [ 0, %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34.preheader ]
  %indvars.iv.next54.prol = add nsw i64 %indvars.iv53.prol, 1 ; 3 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.f, i64 %indvars.iv.next54.prol
  store atomic volatile i64 %i.r, ptr %i.ah monotonic, align 8
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34.prol.loopexit, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34.prol, !llvm.loop !21

_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34.prol.loopexit: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34.prol, %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34.preheader
  %indvars.iv53.unr = phi i64 [ %i.ad, %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34.preheader ], [ %indvars.iv.next54.prol, %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34.prol ]
  %i.ai = icmp ult i64 %i.ag, 7
  br i1 %i.ai, label %._crit_edge50, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34

.lr.ph49.split.us:                                ; preds = %.lr.ph49, %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34.us
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34.us ], [ %i.ad, %.lr.ph49 ]
  %indvars.iv.next59 = add nsw i64 %indvars.iv58, 1 ; 3 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.f, i64 %indvars.iv.next59 ; 2 uses
  store atomic volatile i64 %i.r, ptr %i.aj monotonic, align 8
  %i.ak = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.al = load i64, ptr %i.aa, align 262144       ; 2 uses
  %i.am = and i64 %i.al, 32
  %.not.i.i.i.i.i30.us = icmp eq i64 %i.am, 0
  %i.an = and i64 %i.al, 25
  %.not38.i.i.i.i.i31.us = icmp eq i64 %i.an, 0
  br i1 %.not38.i.i.i.i.i31.us, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph49.split.us
  %.sroa.0.0.copyload.i28.i.i.i.i.i32.us = load i64, ptr %i.ac, align 262144
  %i.ao = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i32.us, 25
  %.not39.i.i.i.i.i33.us = icmp eq i64 %i.ao, 0
  br i1 %.not39.i.i.i.i.i33.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.y, i64 noundef %i.ak, i64 %i.x) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph49.split.us
  br i1 %.not.i.i.i.i.i30.us, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34.us, label %bb.e, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.y, i64 %i.ak, i64 %i.x) #16
  br label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34.us

_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34.us: ; preds = %bb.e, %bb.d
  %exitcond62.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count61
  br i1 %exitcond62.not, label %._crit_edge50, label %.lr.ph49.split.us, !llvm.loop !23

bb.f:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  %.02646 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.n ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next
  %i.aq = load atomic volatile i64, ptr %i.ap monotonic, align 8 ; 5 uses
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = icmp eq i64 %i.ar, 3
  br i1 %i.as, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = zext i32 %.02646 to i64
  %.not29 = icmp eq i64 %indvars.iv, %i.at
  br i1 %.not29, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = sext i32 %.02646 to i64
  %i.av = getelementptr [8 x i8], ptr %i.f, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 8      ; 2 uses
  store atomic volatile i64 %i.aq, ptr %i.aw monotonic, align 8
  %i.ax = trunc i64 %i.aq to i1
  br i1 %i.ax, label %bb.i, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit

bb.i:                                             ; preds = %bb.h
  %i.ay = and i64 %i.aq, -3                       ; 2 uses
  %i.az = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.ba = load i64, ptr %i.p, align 262144        ; 2 uses
  %i.bb = and i64 %i.ba, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.bb, 0
  %i.bc = and i64 %i.ba, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not38.i.i.i.i.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bd = and i64 %i.aq, -262144
  %i.be = inttoptr i64 %i.bd to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.be, align 262144
  %i.bf = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not39.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.n, i64 noundef %i.az, i64 %i.ay) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, label %bb.m, !prof !5

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.n, i64 %i.az, i64 %i.ay) #16
  br label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.m, %bb.l, %bb.h, %bb.g
  %i.bg = add nsw i32 %.02646, 1
  br label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, %bb.f
  %.1 = phi i32 [ %.02646, %bb.f ], [ %i.bg, %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !24

._crit_edge50:                                    ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34.prol.loopexit, %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34, %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34.us, %._crit_edge
  %.not = icmp eq i32 %.026.lcssa, %i.k
  br i1 %.not, label %_ZN2v88internal15TransitionArray28NumberOfPrototypeTransitionsENS0_6TaggedINS0_14WeakFixedArrayEEE.exit.thread, label %bb.o

_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34.prol.loopexit, %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34
  %indvars.iv53 = phi i64 [ %indvars.iv.next54.7, %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34 ], [ %indvars.iv53.unr, %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34.prol.loopexit ] ; 8 uses
  %i.bh = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv53
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  store atomic volatile i64 %i.r, ptr %i.bi monotonic, align 8
  %i.bj = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv53
  %i.bk = getelementptr i8, ptr %i.bj, i64 16
  store atomic volatile i64 %i.r, ptr %i.bk monotonic, align 8
  %i.bl = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv53
  %i.bm = getelementptr i8, ptr %i.bl, i64 24
  store atomic volatile i64 %i.r, ptr %i.bm monotonic, align 8
  %i.bn = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv53
  %i.bo = getelementptr i8, ptr %i.bn, i64 32
  store atomic volatile i64 %i.r, ptr %i.bo monotonic, align 8
  %i.bp = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv53
  %i.bq = getelementptr i8, ptr %i.bp, i64 40
  store atomic volatile i64 %i.r, ptr %i.bq monotonic, align 8
  %i.br = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv53
  %i.bs = getelementptr i8, ptr %i.br, i64 48
  store atomic volatile i64 %i.r, ptr %i.bs monotonic, align 8
  %i.bt = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv53
  %i.bu = getelementptr i8, ptr %i.bt, i64 56
  store atomic volatile i64 %i.r, ptr %i.bu monotonic, align 8
  %indvars.iv.next54.7 = add nsw i64 %indvars.iv53, 8 ; 3 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.f, i64 %indvars.iv.next54.7
  store atomic volatile i64 %i.r, ptr %i.bv monotonic, align 8
  %exitcond57.not.7 = icmp eq i64 %indvars.iv.next54.7, %wide.trip.count61
  br i1 %exitcond57.not.7, label %._crit_edge50, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit34, !llvm.loop !23

bb.o:                                             ; preds = %._crit_edge50
  %i.bw = sext i32 %.026.lcssa to i64
  %i.bx = shl nsw i64 %i.bw, 32
  store atomic volatile i64 %i.bx, ptr %i.f monotonic, align 8
  br label %_ZN2v88internal15TransitionArray28NumberOfPrototypeTransitionsENS0_6TaggedINS0_14WeakFixedArrayEEE.exit.thread

_ZN2v88internal15TransitionArray28NumberOfPrototypeTransitionsENS0_6TaggedINS0_14WeakFixedArrayEEE.exit.thread: ; preds = %._crit_edge50, %bb.o, %bb.a, %_ZN2v88internal15TransitionArray28NumberOfPrototypeTransitionsENS0_6TaggedINS0_14WeakFixedArrayEEE.exit
  %.0 = phi i1 [ false, %bb.a ], [ false, %_ZN2v88internal15TransitionArray28NumberOfPrototypeTransitionsENS0_6TaggedINS0_14WeakFixedArrayEEE.exit ], [ %i.s, %bb.o ], [ %i.s, %._crit_edge50 ]
  ret i1 %.0
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_ZN2v88internal15TransitionArray31SetNumberOfPrototypeTransitionsENS0_6TaggedINS0_14WeakFixedArrayEEEi(i64 %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = add i64 %0, -1
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = sext i32 %1 to i64
  %i.d = shl nsw i64 %i.c, 32
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store atomic volatile i64 %i.d, ptr %i.e monotonic, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal15TransitionArray28GrowPrototypeTransitionArrayENS0_12DirectHandleINS0_14WeakFixedArrayEEEiPNS0_7IsolateE(ptr %0, i32 noundef %1, ptr noundef nonnull %2) local_unnamed_addr #0 align 2 {
.lr.ph.i.i:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %3 = tail call i32 @llvm.smin.i32(i32 %1, i32 256)
  %4 = lshr i64 %i.e, 32
  %5 = trunc nuw i64 %4 to i32                    ; 2 uses
  %reass.sub = sub i32 %3, %5
  %i.f = add i32 %reass.sub, 1
  %i.g = tail call ptr @_ZN2v88internal7Factory25CopyWeakFixedArrayAndGrowENS0_12DirectHandleINS0_14WeakFixedArrayEEEi(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %0, i32 noundef %i.f) #16 ; 2 uses
  %i.h = icmp slt i32 %5, 1
  br i1 %i.h, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph.i.i
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store atomic volatile i64 0, ptr %i.l monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.lr.ph.i.i
  ret ptr %i.g
}

declare ptr @_ZN2v88internal7Factory25CopyWeakFixedArrayAndGrowENS0_12DirectHandleINS0_14WeakFixedArrayEEEi(ptr noundef nonnull align 1 dereferenceable(1), ptr, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal19TransitionsAccessor22PutPrototypeTransitionEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS4_INS0_6ObjectEEES6_(ptr noundef %0, ptr nofree readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readonly captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i32, ptr %i.c acquire, align 4
  %i.e = and i32 %i.d, 1048576
  %.not88 = icmp eq i32 %i.e, 0
  br i1 %.not88, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8                ; 2 uses
  %i.g = add i64 %i.f, 15
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i32, ptr %i.h monotonic, align 4
  %i.j = and i32 %i.i, 2097152
  %i.k = icmp eq i32 %i.j, 0
  %i.l = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1444), align 4, !range !14
  %i.m = trunc nuw i8 %i.l to i1
  %or.cond = select i1 %i.k, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.n = add i64 %i.f, 63
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i64, ptr %i.o acquire, align 8 ; 4 uses
  %i.q = and i64 %i.p, 1
  %i.r = icmp eq i64 %i.q, 0
  %i.s = and i64 %i.p, 4294967295
  %i.t = icmp eq i64 %i.s, 3
  %or.cond.i.i = or i1 %i.r, %i.t
  br i1 %or.cond.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = and i64 %i.p, 3
  switch i64 %i.u, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_7IsolateEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i [
    i64 3, label %bb.g
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.v = add nsw i64 %i.p, -1
  %i.w = inttoptr i64 %i.v to ptr                 ; 3 uses
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8
  %i.y = add i64 %i.x, 11
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i16, ptr %i.z monotonic, align 2
  %i.ab = icmp eq i16 %i.aa, 258
  br i1 %i.ab, label %_ZN2v88internal19TransitionsAccessor11GetEncodingEPNS0_7IsolateENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load atomic volatile i64, ptr %i.w monotonic, align 8
  %i.ad = add i64 %i.ac, 11
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load atomic volatile i16, ptr %i.ae monotonic, align 2 ; 0 uses
  br label %bb.g

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_7IsolateEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i: ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #15
  unreachable

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %i.ah = load i64, ptr %i.ag, align 8
  br label %_ZN2v88internal19TransitionsAccessor23GetPrototypeTransitionsEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit

_ZN2v88internal19TransitionsAccessor11GetEncodingEPNS0_7IsolateENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit.i: ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.aj = load atomic volatile i64, ptr %i.ai acquire, align 8
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN2v88internal19TransitionsAccessor11GetEncodingEPNS0_7IsolateENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %i.al = load i64, ptr %i.ak, align 8
  br label %_ZN2v88internal19TransitionsAccessor23GetPrototypeTransitionsEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit

bb.i:                                             ; preds = %_ZN2v88internal19TransitionsAccessor11GetEncodingEPNS0_7IsolateENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit.i
  %i.am = load atomic volatile i64, ptr %i.ai acquire, align 8
  br label %_ZN2v88internal19TransitionsAccessor23GetPrototypeTransitionsEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit

_ZN2v88internal19TransitionsAccessor23GetPrototypeTransitionsEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit: ; preds = %bb.g, %bb.h, %bb.i
  %.sroa.08.1.i = phi i64 [ %i.ah, %bb.g ], [ %i.am, %bb.i ], [ %i.al, %bb.h ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %bb.j, label %_ZN2v88internal6HandleINS0_14WeakFixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !18

bb.j:                                             ; preds = %_ZN2v88internal19TransitionsAccessor23GetPrototypeTransitionsEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit
  %i.as = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #16
  br label %_ZN2v88internal6HandleINS0_14WeakFixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14WeakFixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal19TransitionsAccessor23GetPrototypeTransitionsEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit, %bb.j
  %.0.i.i = phi ptr [ %i.as, %bb.j ], [ %i.ao, %_ZN2v88internal19TransitionsAccessor23GetPrototypeTransitionsEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit ] ; 6 uses
  %i.at = ptrtoint ptr %.0.i.i to i64
  %i.au = add i64 %i.at, 8
  %i.av = inttoptr i64 %i.au to ptr
  store ptr %i.av, ptr %i.an, align 8
  store i64 %.sroa.08.1.i, ptr %.0.i.i, align 8
  %i.aw = add i64 %.sroa.08.1.i, -1
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.ba = lshr i64 %i.az, 32
  %i.bb = trunc nuw i64 %i.ba to i32
  %i.bc = add nsw i32 %i.bb, -1                   ; 2 uses
  %i.bd = icmp ult i64 %i.az, 4294967296
  br i1 %i.bd, label %_ZN2v88internal15TransitionArray28NumberOfPrototypeTransitionsENS0_6TaggedINS0_14WeakFixedArrayEEE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal6HandleINS0_14WeakFixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bf = load atomic volatile i64, ptr %i.be monotonic, align 8 ; 2 uses
  %i.bg = and i64 %i.bf, 1
  %i.bh = icmp eq i64 %i.bg, 0
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = lshr i64 %i.bf, 32
  %i.bj = trunc nuw i64 %i.bi to i32
  br label %_ZN2v88internal15TransitionArray28NumberOfPrototypeTransitionsENS0_6TaggedINS0_14WeakFixedArrayEEE.exit

_ZN2v88internal15TransitionArray28NumberOfPrototypeTransitionsENS0_6TaggedINS0_14WeakFixedArrayEEE.exit: ; preds = %_ZN2v88internal6HandleINS0_14WeakFixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.k
  %.0.i = phi i32 [ %i.bj, %bb.k ], [ 0, %_ZN2v88internal6HandleINS0_14WeakFixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 2 uses
  %.not = icmp slt i32 %.0.i, %i.bc
  br i1 %.not, label %bb.n, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %_ZN2v88internal15TransitionArray28NumberOfPrototypeTransitionsENS0_6TaggedINS0_14WeakFixedArrayEEE.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 58704 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bk) #16
  %i.bl = load i64, ptr %.0.i.i, align 8
  %i.bm = tail call noundef zeroext i1 @_ZN2v88internal15TransitionArray31CompactPrototypeTransitionArrayEPNS0_7IsolateENS0_6TaggedINS0_14WeakFixedArrayEEE(ptr noundef nonnull %0, i64 %i.bl)
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bk) #16
  br i1 %i.bm, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
  %i.bn = icmp eq i32 %i.bc, 256
  br i1 %i.bn, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = shl i32 %.0.i, 1
  %i.bp = add i32 %i.bo, 2
  %i.bq = tail call ptr @_ZN2v88internal15TransitionArray28GrowPrototypeTransitionArrayENS0_12DirectHandleINS0_14WeakFixedArrayEEEiPNS0_7IsolateE(ptr nonnull %.0.i.i, i32 noundef %i.bp, ptr noundef nonnull %0) ; 2 uses
  tail call void @_ZN2v88internal19TransitionsAccessor23SetPrototypeTransitionsEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS4_INS0_14WeakFixedArrayEEE(ptr noundef nonnull %0, ptr nonnull %1, ptr %i.bq)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, %_ZN2v88internal15TransitionArray28NumberOfPrototypeTransitionsENS0_6TaggedINS0_14WeakFixedArrayEEE.exit
  %.sroa.054.0 = phi ptr [ %.0.i.i, %_ZN2v88internal15TransitionArray28NumberOfPrototypeTransitionsENS0_6TaggedINS0_14WeakFixedArrayEEE.exit ], [ %.0.i.i, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit ], [ %i.bq, %bb.m ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.br = load i64, ptr %3, align 8
  store i64 %i.br, ptr %4, align 8
  %i.bs = load i64, ptr %1, align 8
  call void @_ZN2v88internal3Map14SetBackPointerENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 %i.bs, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.bt = load i64, ptr %.sroa.054.0, align 8
  %i.bu = add i64 %i.bt, -1
  %i.bv = inttoptr i64 %i.bu to ptr               ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = icmp ult i64 %i.bx, 4294967296
  br i1 %i.by, label %_ZN2v88internal15TransitionArray28NumberOfPrototypeTransitionsENS0_6TaggedINS0_14WeakFixedArrayEEE.exit40, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.ca = load atomic volatile i64, ptr %i.bz monotonic, align 8 ; 2 uses
  %i.cb = and i64 %i.ca, 1
  %i.cc = icmp eq i64 %i.cb, 0
  call void @llvm.assume(i1 %i.cc)
  %i.cd = add i64 %i.ca, 4294967296
  %i.ce = ashr i64 %i.cd, 32
  br label %_ZN2v88internal15TransitionArray28NumberOfPrototypeTransitionsENS0_6TaggedINS0_14WeakFixedArrayEEE.exit40

_ZN2v88internal15TransitionArray28NumberOfPrototypeTransitionsENS0_6TaggedINS0_14WeakFixedArrayEEE.exit40: ; preds = %bb.n, %bb.o
  %.0.i39 = phi i64 [ %i.ce, %bb.o ], [ 1, %bb.n ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 58704 ; 2 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cf) #16
  %i.cg = load i64, ptr %.sroa.054.0, align 8
  %i.ch = add i64 %i.cg, -1                       ; 3 uses
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = load i64, ptr %3, align 8               ; 2 uses
  %i.ck = or i64 %i.cj, 3                         ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %.0.i39 ; 2 uses
end_hunk_0
