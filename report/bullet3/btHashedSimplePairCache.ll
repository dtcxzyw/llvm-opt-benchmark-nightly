Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btHashedSimplePairCache?download=true
inline.NumInlined: 117
inline.NumDeleted: 36
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN23btHashedSimplePairCache8findPairEii:bb.a
bb.c:                                             ; preds = %.lr.ph, %bb.d
  %.017 = phi i32 [ %.015, %.lr.ph ], [ %.0, %bb.d ]
  %i.ad = sext i32 %.017 to i64                   ; 2 uses
  %i.ae = getelementptr inbounds [16 x i8], ptr %i.aa, i64 %i.ad ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !36
  %i.ag = icmp eq i32 %i.af, %1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %i.ai, %2
  %i.ak = select i1 %i.ag, i1 %i.aj, i1 false
  br i1 %i.ak, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ad
  %.0 = load i32, ptr %i.al, align 4, !tbaa !29   ; 2 uses
  %cond = icmp eq i32 %.0, -1
  br i1 %cond, label %.critedge, label %bb.c, !llvm.loop !48

.critedge:                                        ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.d ], [ %i.ae, %bb.c ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN23btHashedSimplePairCache15internalAddPairEii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = shl i32 %2, 16
  %i.b = or i32 %i.a, %1                          ; 2 uses
  %i.c = shl i32 %i.b, 15
  %i.d = xor i32 %i.c, -1
  %i.e = add i32 %i.b, %i.d                       ; 2 uses
  %i.f = lshr i32 %i.e, 10
  %i.g = xor i32 %i.f, %i.e
  %i.h = mul i32 %i.g, 9                          ; 2 uses
  %i.i = lshr i32 %i.h, 6
  %i.j = xor i32 %i.i, %i.h                       ; 2 uses
  %i.k = shl i32 %i.j, 11
  %i.l = xor i32 %i.k, -1
  %i.m = add i32 %i.j, %i.l                       ; 2 uses
  %i.n = lshr i32 %i.m, 16
  %i.o = xor i32 %i.n, %i.m                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !21   ; 8 uses
  %i.r = add nsw i32 %i.q, -1
  %i.s = and i32 %i.r, %i.o
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26
  %i.v = sext i32 %i.s to i64                     ; 3 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.v
  %.010.i = load i32, ptr %i.w, align 4, !tbaa !29 ; 2 uses
  %cond11.i = icmp eq i32 %.010.i, -1
  br i1 %cond11.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = load ptr, ptr %i.z, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.012.i = phi i32 [ %.010.i, %.lr.ph.i ], [ %.0.i, %bb.c ]
  %i.ab = sext i32 %.012.i to i64                 ; 2 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %i.y, i64 %i.ab ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !36
  %i.ae = icmp eq i32 %i.ad, %1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = icmp eq i32 %i.ag, %2
  %i.ai = select i1 %i.ae, i1 %i.ah, i1 false
  br i1 %i.ai, label %_ZN23btHashedSimplePairCache16internalFindPairEiii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ab
  %.0.i = load i32, ptr %i.aj, align 4, !tbaa !29 ; 2 uses
  %cond.i = icmp eq i32 %.0.i, -1
  br i1 %cond.i, label %.loopexit, label %bb.b, !llvm.loop !1

.loopexit:                                        ; preds = %bb.c, %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !20 ; 5 uses
  %i.am = icmp eq i32 %i.al, %i.q
  br i1 %i.am, label %bb.d, label %_ZN20btAlignedObjectArrayI12btSimplePairE21expandNonInitializingEv.exit.thread

bb.d:                                             ; preds = %.loopexit
  %.not.i.i = icmp eq i32 %i.q, 0
  %i.an = shl nsw i32 %i.q, 1
  %i.ao = select i1 %.not.i.i, i32 1, i32 %i.an   ; 5 uses
  %i.ap = icmp slt i32 %i.q, %i.ao
  br i1 %i.ap, label %bb.e, label %_ZN20btAlignedObjectArrayI12btSimplePairE21expandNonInitializingEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI12btSimplePairE8allocateEi.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sext i32 %i.ao to i64
  %i.ar = shl nsw i64 %i.aq, 4
  %i.as = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ar, i32 noundef 16)
  %.pre.i = load i32, ptr %i.ak, align 4, !tbaa !20
  br label %_ZN20btAlignedObjectArrayI12btSimplePairE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI12btSimplePairE8allocateEi.exit.i.i: ; preds = %bb.f, %bb.e
  %i.at = phi i32 [ %.pre.i, %bb.f ], [ %i.q, %bb.e ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.as, %bb.f ], [ null, %bb.e ] ; 4 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI12btSimplePairE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI12btSimplePairE8allocateEi.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.at to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.aw = icmp eq i32 %i.at, 1
  br i1 %i.aw, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.g ]
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !tbaa.struct !31
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !19
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !tbaa.struct !31
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI12btSimplePairE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.g, !llvm.loop !0

_ZNK20btAlignedObjectArrayI12btSimplePairE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI12btSimplePairE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI12btSimplePairE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayI12btSimplePairE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod35 = trunc i32 %i.at to i1
  tail call void @llvm.assume(i1 %lcmp.mod35)
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !19
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 16, i1 false), !tbaa.struct !31
  br label %_ZNK20btAlignedObjectArrayI12btSimplePairE4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI12btSimplePairE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI12btSimplePairE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI12btSimplePairE8allocateEi.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !19 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayI12btSimplePairE21expandNonInitializingEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK20btAlignedObjectArrayI12btSimplePairE4copyEiiPS0_.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !18, !range !33, !noundef !34
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.i, label %_ZN20btAlignedObjectArrayI12btSimplePairE21expandNonInitializingEv.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bh)
  br label %_ZN20btAlignedObjectArrayI12btSimplePairE21expandNonInitializingEv.exit

_ZN20btAlignedObjectArrayI12btSimplePairE21expandNonInitializingEv.exit.thread: ; preds = %bb.d, %.loopexit
  %.ph = phi i32 [ %i.al, %.loopexit ], [ %i.q, %bb.d ]
  %i.bl = add nsw i32 %.ph, 1
  store i32 %i.bl, ptr %i.ak, align 4, !tbaa !20
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !19
  %i.bo = sext i32 %i.al to i64                   ; 2 uses
  %i.bp = getelementptr inbounds [16 x i8], ptr %i.bn, i64 %i.bo
  br label %bb.k

_ZN20btAlignedObjectArrayI12btSimplePairE21expandNonInitializingEv.exit: ; preds = %_ZNK20btAlignedObjectArrayI12btSimplePairE4copyEiiPS0_.exit.i.i, %bb.h, %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.bq, align 8, !tbaa !18
  store ptr %.0.i.i.i, ptr %i.bg, align 8, !tbaa !19
  store i32 %i.ao, ptr %i.p, align 8, !tbaa !21
  %.pre2.i = load i32, ptr %i.ak, align 4, !tbaa !20
  %i.br = icmp slt i32 %i.q, %i.ao
  %i.bs = add nsw i32 %.pre2.i, 1
  store i32 %i.bs, ptr %i.ak, align 4, !tbaa !20
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.bv = sext i32 %i.al to i64                   ; 3 uses
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.bu, i64 %i.bv ; 2 uses
  br i1 %i.br, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN20btAlignedObjectArrayI12btSimplePairE21expandNonInitializingEv.exit
  tail call void @_ZN23btHashedSimplePairCache10growTablesEv(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.bx = load i32, ptr %i.p, align 8, !tbaa !21
  %i.by = add nsw i32 %i.bx, -1
  %i.bz = and i32 %i.by, %i.o
  %.pre = sext i32 %i.bz to i64
  br label %bb.k

bb.k:                                             ; preds = %_ZN20btAlignedObjectArrayI12btSimplePairE21expandNonInitializingEv.exit.thread, %bb.j, %_ZN20btAlignedObjectArrayI12btSimplePairE21expandNonInitializingEv.exit
  %i.ca = phi ptr [ %i.bw, %bb.j ], [ %i.bw, %_ZN20btAlignedObjectArrayI12btSimplePairE21expandNonInitializingEv.exit ], [ %i.bp, %_ZN20btAlignedObjectArrayI12btSimplePairE21expandNonInitializingEv.exit.thread ] ; 4 uses
  %i.cb = phi i64 [ %i.bv, %bb.j ], [ %i.bv, %_ZN20btAlignedObjectArrayI12btSimplePairE21expandNonInitializingEv.exit ], [ %i.bo, %_ZN20btAlignedObjectArrayI12btSimplePairE21expandNonInitializingEv.exit.thread ]
  %.pre-phi = phi i64 [ %.pre, %bb.j ], [ %i.v, %_ZN20btAlignedObjectArrayI12btSimplePairE21expandNonInitializingEv.exit ], [ %i.v, %_ZN20btAlignedObjectArrayI12btSimplePairE21expandNonInitializingEv.exit.thread ]
  store i32 %1, ptr %i.ca, align 8, !tbaa !36
  %3 = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store i32 %2, ptr %3, align 4, !tbaa !37
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr null, ptr %i.cc, align 8, !tbaa !30
  %i.cd = load ptr, ptr %i.t, align 8, !tbaa !26
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %.pre-phi ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !29
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !26
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.cb
  store i32 %i.cf, ptr %i.ci, align 4, !tbaa !29
  store i32 %i.al, ptr %i.ce, align 4, !tbaa !29
  br label %_ZN23btHashedSimplePairCache16internalFindPairEiii.exit

_ZN23btHashedSimplePairCache16internalFindPairEiii.exit: ; preds = %bb.b, %bb.k
  %.021 = phi ptr [ %i.ca, %bb.k ], [ %i.ac, %bb.b ]
  ret ptr %.021
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN23btHashedSimplePairCache21removeOverlappingPairEii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = shl i32 %2, 16
  %i.b = or i32 %i.a, %1                          ; 2 uses
  %i.c = shl i32 %i.b, 15
  %i.d = xor i32 %i.c, -1
  %i.e = add i32 %i.b, %i.d                       ; 2 uses
  %i.f = lshr i32 %i.e, 10
  %i.g = xor i32 %i.f, %i.e
  %i.h = mul i32 %i.g, 9                          ; 2 uses
  %i.i = lshr i32 %i.h, 6
  %i.j = xor i32 %i.i, %i.h                       ; 2 uses
  %i.k = shl i32 %i.j, 11
  %i.l = xor i32 %i.k, -1
  %i.m = add i32 %i.j, %i.l                       ; 2 uses
  %i.n = lshr i32 %i.m, 16
  %i.o = xor i32 %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !21
  %i.r = add nsw i32 %i.q, -1
  %i.s = and i32 %i.r, %i.o
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26   ; 2 uses
  %i.v = sext i32 %i.s to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %.010.i = load i32, ptr %i.w, align 4, !tbaa !29 ; 4 uses
  %cond11.i = icmp eq i32 %.010.i, -1
  br i1 %cond11.i, label %_ZN23btHashedSimplePairCache16internalFindPairEiii.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 9 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.012.i = phi i32 [ %.010.i, %.lr.ph.i ], [ %.0.i, %bb.c ] ; 6 uses
  %i.ab = sext i32 %.012.i to i64                 ; 6 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %i.y, i64 %i.ab ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !36
  %i.ae = icmp eq i32 %i.ad, %1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = icmp eq i32 %i.ag, %2
  %i.ai = select i1 %i.ae, i1 %i.ah, i1 false
  br i1 %i.ai, label %_ZN23btHashedSimplePairCache16internalFindPairEiii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ab
  %.0.i = load i32, ptr %i.aj, align 4, !tbaa !29 ; 2 uses
  %cond.i = icmp eq i32 %.0.i, -1
  br i1 %cond.i, label %_ZN23btHashedSimplePairCache16internalFindPairEiii.exit.thread, label %bb.b, !llvm.loop !1

_ZN23btHashedSimplePairCache16internalFindPairEiii.exit: ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !30
  %.not57 = icmp eq i32 %.010.i, %.012.i
  br i1 %.not57, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN23btHashedSimplePairCache16internalFindPairEiii.exit, %.lr.ph
  %.04258 = phi i32 [ %.042, %.lr.ph ], [ %.010.i, %_ZN23btHashedSimplePairCache16internalFindPairEiii.exit ] ; 3 uses
  %i.am = sext i32 %.04258 to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.am
  %.042 = load i32, ptr %i.an, align 4, !tbaa !29 ; 2 uses
  %.not = icmp eq i32 %.042, %.012.i
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !49

._crit_edge:                                      ; preds = %.lr.ph
  %.not49 = icmp eq i32 %.04258, -1
  br i1 %.not49, label %._crit_edge.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ab
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !29
  %i.aq = sext i32 %.04258 to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.aq
  store i32 %i.ap, ptr %i.ar, align 4, !tbaa !29
  br label %bb.e

._crit_edge.thread:                               ; preds = %_ZN23btHashedSimplePairCache16internalFindPairEiii.exit, %._crit_edge
  %i.as = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ab
  %i.at = load i32, ptr %i.as, align 4, !tbaa !29
  store i32 %i.at, ptr %i.w, align 4, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread, %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !20
  %i.aw = add nsw i32 %i.av, -1                   ; 4 uses
  %i.ax = icmp eq i32 %i.aw, %.012.i
  br i1 %i.ax, label %_ZN23btHashedSimplePairCache16internalFindPairEiii.exit.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = sext i32 %i.aw to i64                   ; 3 uses
  %i.az = getelementptr inbounds [16 x i8], ptr %i.y, i64 %i.ay ; 3 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !36
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !37
  %i.bd = shl i32 %i.bc, 16
  %i.be = or i32 %i.bd, %i.ba                     ; 2 uses
  %i.bf = shl i32 %i.be, 15
  %i.bg = xor i32 %i.bf, -1
  %i.bh = add i32 %i.be, %i.bg                    ; 2 uses
  %i.bi = lshr i32 %i.bh, 10
  %i.bj = xor i32 %i.bi, %i.bh
  %i.bk = mul i32 %i.bj, 9                        ; 2 uses
  %i.bl = lshr i32 %i.bk, 6
  %i.bm = xor i32 %i.bl, %i.bk                    ; 2 uses
  %i.bn = shl i32 %i.bm, 11
  %i.bo = xor i32 %i.bn, -1
  %i.bp = add i32 %i.bm, %i.bo                    ; 2 uses
  %i.bq = lshr i32 %i.bp, 16
  %i.br = xor i32 %i.bq, %i.bp
  %i.bs = load i32, ptr %i.p, align 8, !tbaa !21
  %i.bt = add nsw i32 %i.bs, -1
  %i.bu = and i32 %i.br, %i.bt
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.bv ; 2 uses
  %.14359 = load i32, ptr %i.bw, align 4, !tbaa !29 ; 2 uses
  %.not5060 = icmp eq i32 %.14359, %i.aw
  br i1 %.not5060, label %._crit_edge64.thread, label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.f, %.lr.ph63
  %.14361 = phi i32 [ %.143, %.lr.ph63 ], [ %.14359, %bb.f ] ; 3 uses
  %i.bx = sext i32 %.14361 to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.bx
  %.143 = load i32, ptr %i.by, align 4, !tbaa !29 ; 2 uses
  %.not50 = icmp eq i32 %.143, %i.aw
  br i1 %.not50, label %._crit_edge64, label %.lr.ph63, !llvm.loop !50

._crit_edge64:                                    ; preds = %.lr.ph63
  %.not51 = icmp eq i32 %.14361, -1
  br i1 %.not51, label %._crit_edge64.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ay
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !29
  %i.cb = sext i32 %.14361 to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.cb
  store i32 %i.ca, ptr %i.cc, align 4, !tbaa !29
  br label %bb.h

._crit_edge64.thread:                             ; preds = %bb.f, %._crit_edge64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ay
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !29
  store i32 %i.ce, ptr %i.bw, align 4, !tbaa !29
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge64.thread, %bb.g
  %i.cf = getelementptr inbounds [16 x i8], ptr %i.y, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !tbaa.struct !31
  %i.cg = load ptr, ptr %i.t, align 8, !tbaa !26
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.bv ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !29
  %i.cj = load ptr, ptr %i.z, align 8, !tbaa !26
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ab
  store i32 %i.ci, ptr %i.ck, align 4, !tbaa !29
  store i32 %.012.i, ptr %i.ch, align 4, !tbaa !29
  %i.cl = load i32, ptr %i.au, align 4, !tbaa !20
  %i.cm = add nsw i32 %i.cl, -1
  br label %_ZN23btHashedSimplePairCache16internalFindPairEiii.exit.thread.sink.split

_ZN23btHashedSimplePairCache16internalFindPairEiii.exit.thread.sink.split: ; preds = %bb.e, %bb.h
  %.012.i.lcssa.sink = phi i32 [ %i.cm, %bb.h ], [ %.012.i, %bb.e ]
  store i32 %.012.i.lcssa.sink, ptr %i.au, align 4, !tbaa !20
  br label %_ZN23btHashedSimplePairCache16internalFindPairEiii.exit.thread

_ZN23btHashedSimplePairCache16internalFindPairEiii.exit.thread: ; preds = %bb.c, %_ZN23btHashedSimplePairCache16internalFindPairEiii.exit.thread.sink.split, %bb.a
  %.145 = phi ptr [ null, %bb.a ], [ %i.al, %_ZN23btHashedSimplePairCache16internalFindPairEiii.exit.thread.sink.split ], [ null, %bb.c ]
  ret ptr %.145
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN23btHashedSimplePairCache18addOverlappingPairEii(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN23btHashedSimplePairCache15internalAddPairEii(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1, i32 noundef %2)
  ret ptr %i.a
}
end_hunk_0
