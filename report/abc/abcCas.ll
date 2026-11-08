Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcCas?download=true
inline.NumInlined: 693
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 37
begin_hunk_0_@Abc_TtGetGuide:bb.a
  %i.e = icmp eq i32 %.04762, %1
  br i1 %i.e, label %._crit_edge.loopexit.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.148 = phi i32 [ %i.d, %bb.b ], [ %.04762, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.f = add nuw nsw i32 %.063, 1                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.h = load i8, ptr %i.g, align 1, !tbaa !67    ; 2 uses
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.b
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit.split.loop.exit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.i, %._crit_edge.loopexit.split.loop.exit ], [ %i.f, %bb.c ] ; 2 uses
  %i.j = sext i32 %.0.lcssa to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !67    ; 3 uses
  %.not5667 = icmp eq i8 %i.m, 0
  br i1 %.not5667, label %.thread, label %.lr.ph71

.lr.ph71:                                         ; preds = %._crit_edge
  %.not76 = icmp eq i32 %3, 0
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = zext i32 %.0.lcssa to i64
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  br i1 %.not76, label %.lr.ph71.split.us, label %.lr.ph71.split

.lr.ph71.split.us:                                ; preds = %.lr.ph71, %Vec_IntFind.exit.us
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %Vec_IntFind.exit.us ], [ %i.q, %.lr.ph71 ]
  %i.r = phi i8 [ %i.aj, %Vec_IntFind.exit.us ], [ %i.m, %.lr.ph71 ] ; 4 uses
  %.04968.us = phi i32 [ %i.ah, %Vec_IntFind.exit.us ], [ 0, %.lr.ph71 ] ; 2 uses
  %i.s = sext i8 %i.r to i32                      ; 2 uses
  %i.t = add i8 %i.r, -48
  %or.cond.us = icmp ult i8 %i.t, 10
  br i1 %or.cond.us, label %.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph71.split.us
  %i.u = add i8 %i.r, -97
  %i.v = icmp ult i8 %i.u, 26
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add i8 %i.r, -65
  %or.cond14.us = icmp ult i8 %i.w, 26
  %i.x = add nsw i32 %i.s, -65
  %spec.select.us = select i1 %or.cond14.us, i32 %i.x, i32 -1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.y = add nsw i32 %i.s, -97
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.045.us = phi i32 [ %i.y, %bb.f ], [ %spec.select.us, %bb.e ]
  %i.z = load i32, ptr %i.n, align 4, !tbaa !80   ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i.us, label %Vec_IntFind.exit.us

.lr.ph.i.us:                                      ; preds = %bb.g
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !82
  %wide.trip.count.i.us = zext nneg i32 %i.z to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.i.us ], [ %indvars.iv.next.i.us, %bb.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.us
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !60
  %i.ae = icmp eq i32 %i.ad, %.045.us
  br i1 %i.ae, label %._crit_edge.loopexit.split.loop.exit12.i.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i.us, label %Vec_IntFind.exit.us, label %bb.h, !llvm.loop !5

._crit_edge.loopexit.split.loop.exit12.i.us:      ; preds = %bb.h
  %i.af = trunc nuw nsw i64 %indvars.iv.i.us to i32
  br label %Vec_IntFind.exit.us

Vec_IntFind.exit.us:                              ; preds = %bb.i, %._crit_edge.loopexit.split.loop.exit12.i.us, %bb.g
  %.07.i.us = phi i32 [ -1, %bb.g ], [ %i.af, %._crit_edge.loopexit.split.loop.exit12.i.us ], [ -1, %bb.i ]
  %i.ag = shl nuw i32 1, %.07.i.us
  %i.ah = or i32 %i.ag, %.04968.us                ; 2 uses
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next84
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !67  ; 2 uses
  %.not56.us = icmp eq i8 %i.aj, 0
  br i1 %.not56.us, label %.thread, label %.lr.ph71.split.us, !llvm.loop !10

.lr.ph71.split:                                   ; preds = %.lr.ph71, %bb.n
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %bb.n ], [ %i.q, %.lr.ph71 ]
  %i.ak = phi i8 [ %i.bb, %bb.n ], [ %i.m, %.lr.ph71 ] ; 4 uses
  %.04968 = phi i32 [ %.150, %bb.n ], [ 0, %.lr.ph71 ] ; 3 uses
  %i.al = sext i8 %i.ak to i32
  %i.am = add i8 %i.ak, -48
  %or.cond = icmp ult i8 %i.am, 10
  br i1 %or.cond, label %.thread, label %bb.j

bb.j:                                             ; preds = %.lr.ph71.split
  %i.an = add i8 %i.ak, -97
  %i.ao = icmp ult i8 %i.an, 26
  br i1 %i.ao, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = add i8 %i.ak, -65
  %or.cond14 = icmp ult i8 %i.ap, 26
  %i.aq = add nsw i32 %i.al, -65
  %spec.select = select i1 %or.cond14, i32 %i.aq, i32 -1
  %i.ar = load i32, ptr %i.n, align 4, !tbaa !80  ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph.i, label %Vec_IntFind.exit

.lr.ph.i:                                         ; preds = %bb.k
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !82
  %wide.trip.count.i = zext nneg i32 %i.ar to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !60
  %i.aw = icmp eq i32 %i.av, %spec.select
  br i1 %i.aw, label %._crit_edge.loopexit.split.loop.exit12.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_IntFind.exit, label %bb.l, !llvm.loop !5

._crit_edge.loopexit.split.loop.exit12.i:         ; preds = %bb.l
  %i.ax = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %Vec_IntFind.exit

Vec_IntFind.exit:                                 ; preds = %bb.m, %bb.k, %._crit_edge.loopexit.split.loop.exit12.i
  %.07.i = phi i32 [ -1, %bb.k ], [ %i.ax, %._crit_edge.loopexit.split.loop.exit12.i ], [ -1, %bb.m ]
  %i.ay = shl nuw i32 1, %.07.i
  %i.az = or i32 %i.ay, %.04968
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %Vec_IntFind.exit
  %.150 = phi i32 [ %i.az, %Vec_IntFind.exit ], [ %.04968, %bb.j ] ; 2 uses
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next82
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !67  ; 2 uses
  %.not56 = icmp eq i8 %i.bb, 0
  br i1 %.not56, label %.thread, label %.lr.ph71.split, !llvm.loop !10

.thread:                                          ; preds = %bb.n, %.lr.ph71.split, %Vec_IntFind.exit.us, %.lr.ph71.split.us, %._crit_edge
  %.049.lcssa = phi i32 [ 0, %._crit_edge ], [ %.04968.us, %.lr.ph71.split.us ], [ %i.ah, %Vec_IntFind.exit.us ], [ %.04968, %.lr.ph71.split ], [ %.150, %bb.n ]
  ret i32 %.049.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Abc_TtPermuteMask(ptr nofree noundef captures(address) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #17 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = add i32 %1, -1                           ; 3 uses
  %i.c = icmp slt i32 %1, 7
  %i.d = add nsw i32 %1, -6
  %i.e = shl nuw i32 1, %i.d
  %.fr = freeze i32 %i.e
  %i.f = select i1 %i.c, i32 1, i32 %.fr          ; 5 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %3, i64 8
  %.val = load ptr, ptr %i.g, align 8, !tbaa !82
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %.val, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.i = icmp sgt i32 %1, 0
  br i1 %i.i, label %.lr.ph43, label %._crit_edge44

.lr.ph43:                                         ; preds = %bb.c
  %i.j = sext i32 %i.f to i64
  %.idx65.i = shl nsw i64 %i.j, 3                 ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %0, i64 %.idx65.i ; 3 uses
  %i.l = icmp sgt i32 %i.f, 0
  %i.m = icmp slt i32 %i.f, 1                     ; 2 uses
  %wide.trip.count73.i = zext i32 %i.f to i64     ; 3 uses
  %.not33 = icmp eq ptr %i.h, null                ; 2 uses
  %i.n = zext nneg i32 %i.b to i64                ; 2 uses
  br i1 %i.l, label %.lr.ph43.split.us.split.us.preheader, label %.lr.ph43.split

.lr.ph43.split.us.split.us.preheader:             ; preds = %.lr.ph43
  %i.o = add i64 %.idx65.i, %i.a
  %min.iters.check = icmp ult i32 %i.f, 4
  %n.vec = and i64 %wide.trip.count73.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count73.i
  br label %.lr.ph43.split.us.split.us

.lr.ph43.split.us.split.us:                       ; preds = %.lr.ph43.split.us.split.us.preheader, %bb.j
  %indvars.iv65.a = phi i64 [ %indvars.iv.next66, %bb.j ], [ %i.n, %.lr.ph43.split.us.split.us.preheader ] ; 3 uses
  %.02937.us.us = phi i32 [ %.1.us.us, %bb.j ], [ %i.b, %.lr.ph43.split.us.split.us.preheader ] ; 6 uses
  %indvars70 = trunc i64 %indvars.iv65.a to i32   ; 4 uses
  %i.p = shl nuw i32 1, %indvars70
  %i.q = and i32 %i.p, %2
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.j, label %bb.d

bb.d:                                             ; preds = %.lr.ph43.split.us.split.us
  %i.s = icmp eq i32 %.02937.us.us, %indvars70
  br i1 %i.s, label %bb.i, label %.preheader.us.us

.preheader.us.us:                                 ; preds = %bb.d
  %4 = icmp sgt i32 %.02937.us.us, %indvars70
  br i1 %4, label %.lr.ph.us.us, label %._crit_edge.split.us.us.split.us.us

.lr.ph.us.us:                                     ; preds = %.preheader.us.us, %bb.h
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %bb.h ], [ %indvars.iv65.a, %.preheader.us.us ] ; 6 uses
  %i.t = trunc nuw i64 %indvars.iv67 to i32       ; 3 uses
  %i.u = icmp slt i32 %i.t, 5
  br i1 %i.u, label %.lr.ph64.i.us.us.us.us, label %bb.e

bb.e:                                             ; preds = %.lr.ph.us.us
  %i.v = icmp eq i64 %indvars.iv67, 5
  br i1 %i.v, label %bb.f, label %.preheader.lr.ph.i.us.us.us.us

.preheader.lr.ph.i.us.us.us.us:                   ; preds = %bb.e
  %i.w = icmp samesign ult i64 %indvars.iv67, 7
  %i.x = add nsw i32 %i.t, -6
  %i.y = shl nuw i32 1, %i.x
  %i.z = select i1 %i.w, i32 1, i32 %i.y          ; 7 uses
  %i.aa = icmp sgt i32 %i.z, 0
  %i.ab = shl i32 %i.z, 2                         ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  br i1 %i.aa, label %.preheader.us.preheader.i.us.us.us.us, label %Abc_TtSwapAdjacent.exit.us.us.us.us

.preheader.us.preheader.i.us.us.us.us:            ; preds = %.preheader.lr.ph.i.us.us.us.us
  %i.ad = shl nuw nsw i32 %i.z, 1
  %i.ae = zext nneg i32 %i.z to i64               ; 6 uses
  %i.af = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.ag = shl nsw i64 %i.ac, 3                    ; 4 uses
  %i.ah = add i64 %i.ag, %i.a
  %umax = tail call i64 @llvm.umax.i64(i64 %i.o, i64 %i.ah)
  %i.ai = sub i64 %umax, %i.a                     ; 2 uses
  %i.aj = icmp ne i64 %i.ai, %i.ag
  %umin = zext i1 %i.aj to i64                    ; 2 uses
  %i.ak = or disjoint i64 %i.ag, %umin
  %i.al = sub i64 %i.ai, %i.ak
  %umax97 = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.am = udiv i64 %i.al, %umax97
  %i.an = add i64 %i.am, %umin
  %i.ao = shl i64 %i.an, 3
  %i.ap = mul i64 %i.ao, %i.ac                    ; 2 uses
  %i.aq = shl nuw nsw i64 %i.ae, 3                ; 2 uses
  %i.ar = shl nuw nsw i64 %i.af, 3                ; 2 uses
  %i.as = getelementptr i8, ptr %0, i64 %i.ap
  %i.at = getelementptr i8, ptr %i.as, i64 %i.aq
  %scevgep = getelementptr i8, ptr %i.at, i64 %i.ar
  %scevgep98 = getelementptr i8, ptr %0, i64 %i.ar
  %i.au = shl nuw nsw i64 %i.ae, 4
  %i.av = getelementptr i8, ptr %0, i64 %i.ap
  %scevgep99 = getelementptr i8, ptr %i.av, i64 %i.au
  %scevgep100 = getelementptr i8, ptr %0, i64 %i.aq
  %min.iters.check102 = icmp ult i32 %i.z, 4
  %bound0 = icmp ult ptr %scevgep100, %scevgep
  %bound1 = icmp ult ptr %scevgep98, %scevgep99
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.ab, 0
  %i.aw = or i1 %found.conflict, %stride.check
  %n.vec104 = and i64 %i.ae, 2147483644
  %xtraiter = and i64 %i.ae, 1
  %i.ax = icmp eq i32 %i.z, 1
  %unroll_iter = and i64 %i.ae, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod119 = trunc i32 %i.z to i1
  br label %.preheader.us.i.us.us.us.us

.preheader.us.i.us.us.us.us:                      ; preds = %._crit_edge.us.i.us.us.us.us, %.preheader.us.preheader.i.us.us.us.us
  %.061.us.i.us.us.us.us = phi ptr [ %i.bj, %._crit_edge.us.i.us.us.us.us ], [ %0, %.preheader.us.preheader.i.us.us.us.us ] ; 3 uses
  %invariant.gep.i.us.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us, i64 %i.ae ; 4 uses
  %invariant.gep80.i.us.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us, i64 %i.af ; 4 uses
  %brmerge120 = select i1 %min.iters.check102, i1 true, i1 %i.aw
  br i1 %brmerge120, label %scalar.ph101.preheader, label %vector.body105

scalar.ph101.preheader:                           ; preds = %.preheader.us.i.us.us.us.us
  br i1 %i.ax, label %scalar.ph101.epil.preheader, label %scalar.ph101

vector.body105:                                   ; preds = %.preheader.us.i.us.us.us.us, %vector.body105
  %index106 = phi i64 [ %index.next111, %vector.body105 ], [ 0, %.preheader.us.i.us.us.us.us ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us, i64 %index106 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %wide.load107 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !72, !alias.scope !247, !noalias !248
  %wide.load108 = load <2 x i64>, ptr %i.az, align 8, !tbaa !72, !alias.scope !247, !noalias !248
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us, i64 %index106 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %wide.load109 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !72, !alias.scope !248
  %wide.load110 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !72, !alias.scope !248
  store <2 x i64> %wide.load109, ptr %i.ay, align 8, !tbaa !72, !alias.scope !247, !noalias !248
  store <2 x i64> %wide.load110, ptr %i.az, align 8, !tbaa !72, !alias.scope !247, !noalias !248
  store <2 x i64> %wide.load107, ptr %i.ba, align 8, !tbaa !72, !alias.scope !248
  store <2 x i64> %wide.load108, ptr %i.bb, align 8, !tbaa !72, !alias.scope !248
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.bc, label %._crit_edge.us.i.us.us.us.us, label %vector.body105, !llvm.loop !241

scalar.ph101:                                     ; preds = %scalar.ph101.preheader, %scalar.ph101
  %indvars.iv.i.us.us.us.us = phi i64 [ %indvars.iv.next.i.us.us.us.us.1, %scalar.ph101 ], [ 0, %scalar.ph101.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph101 ], [ 0, %scalar.ph101.preheader ]
  %gep.i.us.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us, i64 %indvars.iv.i.us.us.us.us ; 2 uses
  %i.bd = load i64, ptr %gep.i.us.us.us.us, align 8, !tbaa !72
  %gep81.i.us.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us, i64 %indvars.iv.i.us.us.us.us ; 2 uses
  %i.be = load i64, ptr %gep81.i.us.us.us.us, align 8, !tbaa !72
  store i64 %i.be, ptr %gep.i.us.us.us.us, align 8, !tbaa !72
  store i64 %i.bd, ptr %gep81.i.us.us.us.us, align 8, !tbaa !72
  %indvars.iv.next.i.us.us.us.us = or disjoint i64 %indvars.iv.i.us.us.us.us, 1 ; 2 uses
  %gep.i.us.us.us.us.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us, i64 %indvars.iv.next.i.us.us.us.us ; 2 uses
  %i.bf = load i64, ptr %gep.i.us.us.us.us.1, align 8, !tbaa !72
  %gep81.i.us.us.us.us.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us, i64 %indvars.iv.next.i.us.us.us.us ; 2 uses
  %i.bg = load i64, ptr %gep81.i.us.us.us.us.1, align 8, !tbaa !72
  store i64 %i.bg, ptr %gep.i.us.us.us.us.1, align 8, !tbaa !72
  store i64 %i.bf, ptr %gep81.i.us.us.us.us.1, align 8, !tbaa !72
  %indvars.iv.next.i.us.us.us.us.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.us, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.us.us.us.us.loopexit.unr-lcssa, label %scalar.ph101, !llvm.loop !242

._crit_edge.us.i.us.us.us.us.loopexit.unr-lcssa:  ; preds = %scalar.ph101
  br i1 %lcmp.mod.not, label %._crit_edge.us.i.us.us.us.us, label %scalar.ph101.epil.preheader

scalar.ph101.epil.preheader:                      ; preds = %._crit_edge.us.i.us.us.us.us.loopexit.unr-lcssa, %scalar.ph101.preheader
  %indvars.iv.i.us.us.us.us.epil.init = phi i64 [ 0, %scalar.ph101.preheader ], [ %indvars.iv.next.i.us.us.us.us.1, %._crit_edge.us.i.us.us.us.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod119)
  %gep.i.us.us.us.us.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us, i64 %indvars.iv.i.us.us.us.us.epil.init ; 2 uses
  %i.bh = load i64, ptr %gep.i.us.us.us.us.epil, align 8, !tbaa !72
  %gep81.i.us.us.us.us.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us, i64 %indvars.iv.i.us.us.us.us.epil.init ; 2 uses
  %i.bi = load i64, ptr %gep81.i.us.us.us.us.epil, align 8, !tbaa !72
  store i64 %i.bi, ptr %gep.i.us.us.us.us.epil, align 8, !tbaa !72
  store i64 %i.bh, ptr %gep81.i.us.us.us.us.epil, align 8, !tbaa !72
  br label %._crit_edge.us.i.us.us.us.us

._crit_edge.us.i.us.us.us.us:                     ; preds = %vector.body105, %scalar.ph101.epil.preheader, %._crit_edge.us.i.us.us.us.us.loopexit.unr-lcssa
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us, i64 %i.ac ; 2 uses
  %i.bk = icmp ult ptr %i.bj, %i.k
  br i1 %i.bk, label %.preheader.us.i.us.us.us.us, label %Abc_TtSwapAdjacent.exit.us.us.us.us, !llvm.loop !11

bb.f:                                             ; preds = %bb.e
  br i1 %i.m, label %Abc_TtSwapAdjacent.exit.us.us.us.us, label %.lr.ph.i.us.us.us.us

.lr.ph.i.us.us.us.us:                             ; preds = %bb.f, %.lr.ph.i.us.us.us.us
  %.05462.i.us.us.us.us = phi ptr [ %i.bo, %.lr.ph.i.us.us.us.us ], [ %0, %bb.f ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.05462.i.us.us.us.us, i64 4 ; 2 uses
  %i.bm = load <2 x i32>, ptr %i.bl, align 4, !tbaa !60
  %i.bn = shufflevector <2 x i32> %i.bm, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.bn, ptr %i.bl, align 4, !tbaa !60
  %i.bo = getelementptr inbounds nuw i8, ptr %.05462.i.us.us.us.us, i64 16 ; 2 uses
  %i.bp = icmp ult ptr %i.bo, %i.k
  br i1 %i.bp, label %.lr.ph.i.us.us.us.us, label %Abc_TtSwapAdjacent.exit.us.us.us.us, !llvm.loop !12

.lr.ph64.i.us.us.us.us:                           ; preds = %.lr.ph.us.us
  %i.bq = shl nuw nsw i32 1, %i.t
  %i.br = getelementptr inbounds nuw [24 x i8], ptr @s_PMasks, i64 %indvars.iv67 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !72 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !72 ; 2 uses
  %i.bv = zext nneg i32 %i.bq to i64              ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !72 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph64.i.us.us.us.us
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert86 = insertelement <2 x i64> poison, i64 %i.bu, i64 0
  %broadcast.splat87 = shufflevector <2 x i64> %broadcast.splatinsert86, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert88 = insertelement <2 x i64> poison, i64 %i.bv, i64 0
  %broadcast.splat89 = shufflevector <2 x i64> %broadcast.splatinsert88, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert90 = insertelement <2 x i64> poison, i64 %i.bx, i64 0
  %broadcast.splat91 = shufflevector <2 x i64> %broadcast.splatinsert90, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.by, align 8, !tbaa !72 ; 3 uses
  %wide.load92 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !72 ; 3 uses
  %i.ca = and <2 x i64> %wide.load, %broadcast.splat
  %i.cb = and <2 x i64> %wide.load92, %broadcast.splat
  %i.cc = and <2 x i64> %wide.load, %broadcast.splat87
  %i.cd = and <2 x i64> %wide.load92, %broadcast.splat87
  %i.ce = shl <2 x i64> %i.cc, %broadcast.splat89
  %i.cf = shl <2 x i64> %i.cd, %broadcast.splat89
  %i.cg = or <2 x i64> %i.ce, %i.ca
  %i.ch = or <2 x i64> %i.cf, %i.cb
  %i.ci = and <2 x i64> %wide.load, %broadcast.splat91
  %i.cj = and <2 x i64> %wide.load92, %broadcast.splat91
  %i.ck = lshr <2 x i64> %i.ci, %broadcast.splat89
  %i.cl = lshr <2 x i64> %i.cj, %broadcast.splat89
  %i.cm = or <2 x i64> %i.cg, %i.ck
  %i.cn = or <2 x i64> %i.ch, %i.cl
  store <2 x i64> %i.cm, ptr %i.by, align 8, !tbaa !72
  store <2 x i64> %i.cn, ptr %i.bz, align 8, !tbaa !72
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !243

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %Abc_TtSwapAdjacent.exit.us.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph64.i.us.us.us.us, %middle.block
  %indvars.iv70.i.us.us.us.us.ph = phi i64 [ 0, %.lr.ph64.i.us.us.us.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv70.i.us.us.us.us = phi i64 [ %indvars.iv.next71.i.us.us.us.us, %scalar.ph ], [ %indvars.iv70.i.us.us.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv70.i.us.us.us.us ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !72 ; 3 uses
  %i.cr = and i64 %i.cq, %i.bs
  %i.cs = and i64 %i.cq, %i.bu
  %i.ct = shl i64 %i.cs, %i.bv
  %i.cu = or i64 %i.ct, %i.cr
  %i.cv = and i64 %i.cq, %i.bx
  %i.cw = lshr i64 %i.cv, %i.bv
  %i.cx = or i64 %i.cu, %i.cw
  store i64 %i.cx, ptr %i.cp, align 8, !tbaa !72
  %indvars.iv.next71.i.us.us.us.us = add nuw nsw i64 %indvars.iv70.i.us.us.us.us, 1 ; 2 uses
  %exitcond74.not.i.us.us.us.us = icmp eq i64 %indvars.iv.next71.i.us.us.us.us, %wide.trip.count73.i
  br i1 %exitcond74.not.i.us.us.us.us, label %Abc_TtSwapAdjacent.exit.us.us.us.us, label %scalar.ph, !llvm.loop !244

Abc_TtSwapAdjacent.exit.us.us.us.us:              ; preds = %._crit_edge.us.i.us.us.us.us, %.lr.ph.i.us.us.us.us, %scalar.ph, %middle.block, %bb.f, %.preheader.lr.ph.i.us.us.us.us
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %Abc_TtSwapAdjacent.exit.us.us.us.us
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv67 ; 2 uses
  %i.cz = load <2 x i32>, ptr %i.cy, align 4, !tbaa !60
  %i.da = shufflevector <2 x i32> %i.cz, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.da, ptr %i.cy, align 4, !tbaa !60
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %Abc_TtSwapAdjacent.exit.us.us.us.us
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %i.db = trunc nuw i64 %indvars.iv.next68 to i32
  %i.dc = icmp sgt i32 %.02937.us.us, %i.db
  br i1 %i.dc, label %.lr.ph.us.us, label %._crit_edge.split.us.us.split.us.us, !llvm.loop !245

._crit_edge.split.us.us.split.us.us:              ; preds = %bb.h, %.preheader.us.us
  %i.dd = add nsw i32 %.02937.us.us, -1
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.de = add nsw i32 %.02937.us.us, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.split.us.us.split.us.us, %.lr.ph43.split.us.split.us
  %.1.us.us = phi i32 [ %.02937.us.us, %.lr.ph43.split.us.split.us ], [ %i.de, %bb.i ], [ %i.dd, %._crit_edge.split.us.us.split.us.us ]
  %indvars.iv.next66 = add nsw i64 %indvars.iv65.a, -1
  %i.df = icmp sgt i32 %indvars70, 0
  br i1 %i.df, label %.lr.ph43.split.us.split.us, label %._crit_edge44, !llvm.loop !246

.lr.ph43.split:                                   ; preds = %.lr.ph43, %bb.o
  %indvars.iv.a = phi i64 [ %indvars.iv.next, %bb.o ], [ %i.n, %.lr.ph43 ] ; 3 uses
  %.02937 = phi i32 [ %.1, %bb.o ], [ %i.b, %.lr.ph43 ] ; 6 uses
  %indvars58 = trunc i64 %indvars.iv.a to i32     ; 4 uses
  %i.dg = shl nuw i32 1, %indvars58
  %i.dh = and i32 %i.dg, %2
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.o, label %bb.k

bb.k:                                             ; preds = %.lr.ph43.split
  %i.dj = icmp eq i32 %.02937, %indvars58
  br i1 %i.dj, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.k
  %5 = icmp sgt i32 %.02937, %indvars58
  br i1 %5, label %.lr.ph, label %._crit_edge.split

bb.l:                                             ; preds = %bb.k
  %i.dk = add nsw i32 %.02937, -1
  br label %bb.o

.lr.ph:                                           ; preds = %.preheader, %bb.n
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %bb.n ], [ %indvars.iv.a, %.preheader ] ; 3 uses
  %i.dl = icmp ne i64 %indvars.iv55, 5
  %brmerge = or i1 %i.dl, %i.m
  br i1 %brmerge, label %Abc_TtSwapAdjacent.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %.05462.i = phi ptr [ %i.dp, %.lr.ph.i ], [ %0, %.lr.ph ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.05462.i, i64 4 ; 2 uses
  %i.dn = load <2 x i32>, ptr %i.dm, align 4, !tbaa !60
  %i.do = shufflevector <2 x i32> %i.dn, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.do, ptr %i.dm, align 4, !tbaa !60
  %i.dp = getelementptr inbounds nuw i8, ptr %.05462.i, i64 16 ; 2 uses
  %i.dq = icmp ult ptr %i.dp, %i.k
  br i1 %i.dq, label %.lr.ph.i, label %Abc_TtSwapAdjacent.exit, !llvm.loop !12

Abc_TtSwapAdjacent.exit:                          ; preds = %.lr.ph.i, %.lr.ph
  br i1 %.not33, label %bb.n, label %bb.m

bb.m:                                             ; preds = %Abc_TtSwapAdjacent.exit
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv55 ; 2 uses
  %i.ds = load <2 x i32>, ptr %i.dr, align 4, !tbaa !60
  %i.dt = shufflevector <2 x i32> %i.ds, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.dt, ptr %i.dr, align 4, !tbaa !60
  br label %bb.n

bb.n:                                             ; preds = %Abc_TtSwapAdjacent.exit, %bb.m
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %i.du = trunc nuw i64 %indvars.iv.next56 to i32
  %i.dv = icmp sgt i32 %.02937, %i.du
  br i1 %i.dv, label %.lr.ph, label %._crit_edge.split, !llvm.loop !245

._crit_edge.split:                                ; preds = %bb.n, %.preheader
  %i.dw = add nsw i32 %.02937, -1
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph43.split, %._crit_edge.split, %bb.l
  %.1 = phi i32 [ %.02937, %.lr.ph43.split ], [ %i.dk, %bb.l ], [ %i.dw, %._crit_edge.split ]
  %indvars.iv.next = add nsw i64 %indvars.iv.a, -1
  %i.dx = icmp sgt i32 %indvars58, 0
  br i1 %i.dx, label %.lr.ph43.split, label %._crit_edge44, !llvm.loop !246

._crit_edge44:                                    ; preds = %bb.o, %bb.j, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @Abc_LutCascadeLookup(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #14 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = icmp sgt i32 %3, 0
  %wide.trip.count.i = zext i32 %3 to i64         ; 2 uses
  br i1 %i.d, label %.lr.ph.preheader.i.preheader, label %Abc_TtCopy.exit

.lr.ph.preheader.i.preheader:                     ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %Abc_TtEqual.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.i.preheader ], [ %indvars.iv.next, %Abc_TtEqual.exit ] ; 3 uses
  %i.e = mul nuw nsw i64 %indvars.iv, %wide.trip.count.i
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  br label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Abc_TtCopy.exit.loopexit30, label %.lr.ph.i, !llvm.loop !13

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.h = load i64, ptr %i.g, align 8, !tbaa !72
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.j = load i64, ptr %i.i, align 8, !tbaa !72
  %.not.i = icmp eq i64 %i.h, %i.j
  br i1 %.not.i, label %bb.b, label %Abc_TtEqual.exit

Abc_TtEqual.exit:                                 ; preds = %.lr.ph.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.preheader.i, !llvm.loop !14

._crit_edge:                                      ; preds = %Abc_TtEqual.exit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %1, %Abc_TtEqual.exit ] ; 5 uses
  %i.k = mul i32 %.0.lcssa, %3
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %0, i64 %i.l ; 6 uses
  %i.n = icmp sgt i32 %3, 0
  br i1 %i.n, label %.lr.ph.preheader.i16, label %Abc_TtCopy.exit

.lr.ph.preheader.i16:                             ; preds = %._crit_edge
  %wide.trip.count.i17 = zext nneg i32 %3 to i64  ; 5 uses
  %min.iters.check = icmp ult i32 %3, 14
  br i1 %min.iters.check, label %.lr.ph.i18.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i16
  %i.o = shl nsw i64 %i.l, 3
  %i.p = add i64 %i.o, %i.b
  %i.q = sub i64 %i.a, %i.p
  %diff.check = icmp ugt i64 %i.q, -32
  br i1 %diff.check, label %.lr.ph.i18.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i17, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <2 x i64>, ptr %i.r, align 8, !tbaa !72
  %wide.load36 = load <2 x i64>, ptr %i.s, align 8, !tbaa !72
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <2 x i64> %wide.load, ptr %i.t, align 8, !tbaa !72
  store <2 x i64> %wide.load36, ptr %i.u, align 8, !tbaa !72
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !249

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i17
  br i1 %cmp.n, label %Abc_TtCopy.exit, label %.lr.ph.i18.preheader

.lr.ph.i18.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i16, %middle.block
  %indvars.iv.i19.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i16 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i17, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i18.prol.loopexit, label %.lr.ph.i18.prol

.lr.ph.i18.prol:                                  ; preds = %.lr.ph.i18.preheader, %.lr.ph.i18.prol
  %indvars.iv.i19.prol = phi i64 [ %indvars.iv.next.i20.prol, %.lr.ph.i18.prol ], [ %indvars.iv.i19.ph, %.lr.ph.i18.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i18.prol ], [ 0, %.lr.ph.i18.preheader ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i19.prol
  %i.x = load i64, ptr %i.w, align 8, !tbaa !72
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i19.prol
  store i64 %i.x, ptr %i.y, align 8, !tbaa !72
  %indvars.iv.next.i20.prol = add nuw nsw i64 %indvars.iv.i19.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i18.prol.loopexit, label %.lr.ph.i18.prol, !llvm.loop !250

.lr.ph.i18.prol.loopexit:                         ; preds = %.lr.ph.i18.prol, %.lr.ph.i18.preheader
  %indvars.iv.i19.unr = phi i64 [ %indvars.iv.i19.ph, %.lr.ph.i18.preheader ], [ %indvars.iv.next.i20.prol, %.lr.ph.i18.prol ]
  %i.z = sub nsw i64 %indvars.iv.i19.ph, %wide.trip.count.i17
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %Abc_TtCopy.exit, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %.lr.ph.i18.prol.loopexit, %.lr.ph.i18
  %indvars.iv.i19 = phi i64 [ %indvars.iv.next.i20.3, %.lr.ph.i18 ], [ %indvars.iv.i19.unr, %.lr.ph.i18.prol.loopexit ] ; 6 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i19
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !72
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i19
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !72
  %indvars.iv.next.i20 = add nuw nsw i64 %indvars.iv.i19, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i20
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !72
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i20
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !72
  %indvars.iv.next.i20.1 = add nuw nsw i64 %indvars.iv.i19, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i20.1
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !72
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i20.1
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !72
  %indvars.iv.next.i20.2 = add nuw nsw i64 %indvars.iv.i19, 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i20.2
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !72
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i20.2
  store i64 %i.al, ptr %i.am, align 8, !tbaa !72
  %indvars.iv.next.i20.3 = add nuw nsw i64 %indvars.iv.i19, 4 ; 2 uses
  %exitcond.not.i21.3 = icmp eq i64 %indvars.iv.next.i20.3, %wide.trip.count.i17
  br i1 %exitcond.not.i21.3, label %Abc_TtCopy.exit, label %.lr.ph.i18, !llvm.loop !251

Abc_TtCopy.exit.loopexit30:                       ; preds = %bb.b
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  br label %Abc_TtCopy.exit

Abc_TtCopy.exit:                                  ; preds = %.lr.ph.i18.prol.loopexit, %.lr.ph.i18, %middle.block, %Abc_TtCopy.exit.loopexit30, %.lr.ph, %._crit_edge
  %.028 = phi i32 [ %i.an, %Abc_TtCopy.exit.loopexit30 ], [ 0, %.lr.ph ], [ %.0.lcssa, %._crit_edge ], [ %.0.lcssa, %middle.block ], [ %.0.lcssa, %.lr.ph.i18 ], [ %.0.lcssa, %.lr.ph.i18.prol.loopexit ]
  ret i32 %.028
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Abc_LutCascadeDerive(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #14 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = sub nsw i32 %1, %2                       ; 2 uses
  %i.d = icmp ult i32 %3, 2
  %i.e = add i32 %3, -1
  %i.f = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.e, i1 true)
  %i.g = sub nuw nsw i32 32, %i.f
  %.09.i = select i1 %i.d, i32 %3, i32 %i.g       ; 7 uses
  %i.h = icmp slt i32 %i.c, 7                     ; 3 uses
  %i.i = add nsw i32 %i.c, -6                     ; 3 uses
  %i.j = shl nuw i32 1, %i.i
  %i.k = select i1 %i.h, i32 1, i32 %i.j
  %.fr112 = freeze i32 %i.k                       ; 7 uses
  %i.l = shl nuw nsw i32 1, %2                    ; 2 uses
  %.not = icmp eq i32 %2, 31
  br i1 %.not, label %._crit_edge63, label %.lr.ph62

.lr.ph62:                                         ; preds = %bb.a
  %i.m = select i1 %i.h, i32 0, i32 %i.i          ; 5 uses
  %i.n = icmp sgt i32 %.fr112, 0                  ; 3 uses
  %wide.trip.count.i.i = zext i32 %.fr112 to i64  ; 12 uses
  %i.o = zext nneg i32 %i.m to i64                ; 2 uses
  %.not111 = icmp eq i32 %.09.i, 0
  br i1 %.not111, label %.lr.ph62.split, label %.lr.ph62.split.us.preheader

.lr.ph62.split.us.preheader:                      ; preds = %.lr.ph62
  %i.p = sext i32 %6 to i64                       ; 3 uses
  %wide.trip.count = zext nneg i32 %.09.i to i64  ; 2 uses
  %min.iters.check = icmp ult i32 %.fr112, 8
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %xtraiter186 = and i64 %wide.trip.count, 1
  %i.q = icmp eq i32 %.09.i, 1
  %unroll_iter = and i64 %wide.trip.count, 62
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  %lcmp.mod188 = trunc i32 %.09.i to i1
  br label %.lr.ph62.split.us

.lr.ph62.split.us:                                ; preds = %.lr.ph62.split.us.preheader, %._crit_edge.us
  %.059.us = phi i32 [ %i.ce, %._crit_edge.us ], [ 0, %.lr.ph62.split.us.preheader ] ; 4 uses
  %.04758.us = phi i32 [ %i.cf, %._crit_edge.us ], [ 0, %.lr.ph62.split.us.preheader ] ; 4 uses
  %i.r = shl i32 %.04758.us, %i.m
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s ; 7 uses
  %i.u = icmp sgt i32 %.059.us, 0
  br i1 %i.u, label %.lr.ph.i.us, label %._crit_edge.i.us

end_hunk_0
begin_hunk_1_@Abc_TtMinimumBase:bb.a
Abc_TtHasVar.exit.thread36.us.3:                  ; preds = %Abc_TtHasVar.exit.us.3
  %i.bi = or i32 %.1.us.2, 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !60
  %i.bl = sext i32 %.124.us.2 to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bl
  store i32 %i.bk, ptr %i.bm, align 4, !tbaa !60
  %i.bn = add nsw i32 %.124.us.2, 1
  br label %Abc_TtHasVar.exit.thread.us.3

Abc_TtHasVar.exit.thread.us.3:                    ; preds = %Abc_TtHasVar.exit.thread36.us.3, %Abc_TtHasVar.exit.us.3
  %.124.us.3 = phi i32 [ %i.bn, %Abc_TtHasVar.exit.thread36.us.3 ], [ %.124.us.2, %Abc_TtHasVar.exit.us.3 ] ; 4 uses
  %.1.us.3 = phi i32 [ %i.bi, %Abc_TtHasVar.exit.thread36.us.3 ], [ %.1.us.2, %Abc_TtHasVar.exit.us.3 ] ; 3 uses
  %exitcond99.not.3 = icmp eq i32 %2, 4
  br i1 %exitcond99.not.3, label %._crit_edge, label %Abc_TtHasVar.exit.us.4

Abc_TtHasVar.exit.us.4:                           ; preds = %Abc_TtHasVar.exit.thread.us.3
  %i.bo = lshr i64 %i.h, 16
  %i.bp = xor i64 %i.bo, %i.h
  %i.bq = and i64 %i.bp, 281470681808895
  %.not39.us.4 = icmp eq i64 %i.bq, 0
  br i1 %.not39.us.4, label %Abc_TtHasVar.exit.thread.us.4, label %Abc_TtHasVar.exit.thread36.us.4

Abc_TtHasVar.exit.thread36.us.4:                  ; preds = %Abc_TtHasVar.exit.us.4
  %i.br = or i32 %.1.us.3, 16
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !60
  %i.bu = sext i32 %.124.us.3 to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bu
  store i32 %i.bt, ptr %i.bv, align 4, !tbaa !60
  %i.bw = add nsw i32 %.124.us.3, 1
  br label %Abc_TtHasVar.exit.thread.us.4

Abc_TtHasVar.exit.thread.us.4:                    ; preds = %Abc_TtHasVar.exit.thread36.us.4, %Abc_TtHasVar.exit.us.4
  %.124.us.4 = phi i32 [ %i.bw, %Abc_TtHasVar.exit.thread36.us.4 ], [ %.124.us.3, %Abc_TtHasVar.exit.us.4 ] ; 4 uses
  %.1.us.4 = phi i32 [ %i.br, %Abc_TtHasVar.exit.thread36.us.4 ], [ %.1.us.3, %Abc_TtHasVar.exit.us.4 ] ; 3 uses
  %exitcond99.not.4 = icmp eq i32 %2, 5
  br i1 %exitcond99.not.4, label %._crit_edge, label %Abc_TtHasVar.exit.us.5

Abc_TtHasVar.exit.us.5:                           ; preds = %Abc_TtHasVar.exit.thread.us.4
  %i.bx = lshr i64 %i.h, 32
  %.masked = and i64 %i.h, 4294967295
  %.not39.us.5 = icmp eq i64 %i.bx, %.masked
  br i1 %.not39.us.5, label %._crit_edge, label %Abc_TtHasVar.exit.thread36.us.5

Abc_TtHasVar.exit.thread36.us.5:                  ; preds = %Abc_TtHasVar.exit.us.5
  %i.by = or i32 %.1.us.4, 32
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !60
  %i.cb = sext i32 %.124.us.4 to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cb
  store i32 %i.ca, ptr %i.cc, align 4, !tbaa !60
  %i.cd = add nsw i32 %.124.us.4, 1
  br label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not48.i = icmp eq i32 %i.d, 31
  br i1 %.not48.i, label %._crit_edge.thread, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph.split.split

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %Abc_TtHasVar.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.preheader ], [ %indvars.iv.next, %Abc_TtHasVar.exit.thread ] ; 7 uses
  %.047 = phi i32 [ 0, %.lr.ph.split.split.preheader ], [ %.1, %Abc_TtHasVar.exit.thread ] ; 4 uses
  %.02346 = phi i32 [ 0, %.lr.ph.split.split.preheader ], [ %.124, %Abc_TtHasVar.exit.thread ] ; 5 uses
  %i.ce = icmp samesign ult i64 %indvars.iv, 6
  br i1 %i.ce, label %.lr.ph.i, label %.preheader.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.split.split
  %i.cf = trunc nuw nsw i64 %indvars.iv to i32
  %i.cg = shl nuw nsw i32 1, %i.cf                ; 2 uses
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !72
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next54.i, %wide.trip.count57.i
  br i1 %exitcond58.not.i, label %Abc_TtHasVar.exit.thread, label %bb.c, !llvm.loop !6

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv53.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next54.i, %bb.b ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv53.i
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !72 ; 2 uses
  %i.cm = lshr i64 %i.cl, %i.ch
  %i.cn = xor i64 %i.cm, %i.cl
  %i.co = and i64 %i.cn, %i.cj
  %.not39.i = icmp eq i64 %i.co, 0
  br i1 %.not39.i, label %bb.b, label %Abc_TtHasVar.exit.thread36

.preheader.lr.ph.i:                               ; preds = %.lr.ph.split.split
  %i.cp = add nsw i64 %indvars.iv, -6             ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 31
  %i.cr = trunc nsw i64 %i.cp to i32              ; 2 uses
  %i.cs = shl i32 2, %i.cr
  %i.ct = sext i32 %i.cs to i64
  br i1 %i.cq, label %Abc_TtHasVar.exit.thread, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.cu = shl nuw i32 1, %i.cr                    ; 2 uses
  %i.cv = sext i32 %i.cu to i64
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.cu, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.03343.us.i = phi ptr [ %i.cz, %._crit_edge.us.i ], [ %0, %.preheader.us.preheader.i ] ; 3 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.03343.us.i, i64 %i.cv
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.e, !llvm.loop !7

bb.e:                                             ; preds = %bb.d, %.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i, i64 %indvars.iv.i
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !72
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.cy = load i64, ptr %gep.i, align 8, !tbaa !72
  %.not.us.i = icmp eq i64 %i.cx, %i.cy
  br i1 %.not.us.i, label %bb.d, label %Abc_TtHasVar.exit.thread36.loopexit

._crit_edge.us.i:                                 ; preds = %bb.d
  %i.cz = getelementptr inbounds [8 x i8], ptr %.03343.us.i, i64 %i.ct ; 2 uses
  %i.da = icmp ult ptr %i.cz, %i.g
  br i1 %i.da, label %.preheader.us.i, label %Abc_TtHasVar.exit.thread, !llvm.loop !8

Abc_TtHasVar.exit.thread36.loopexit:              ; preds = %bb.e
  %.pre = trunc nuw nsw i64 %indvars.iv to i32
  %.pre109 = shl nuw i32 1, %.pre
  br label %Abc_TtHasVar.exit.thread36

Abc_TtHasVar.exit.thread36:                       ; preds = %bb.c, %Abc_TtHasVar.exit.thread36.loopexit
  %.pre-phi110 = phi i32 [ %.pre109, %Abc_TtHasVar.exit.thread36.loopexit ], [ %i.cg, %bb.c ]
  %i.db = or i32 %.047, %.pre-phi110
  br i1 %.not32, label %bb.g, label %bb.f

bb.f:                                             ; preds = %Abc_TtHasVar.exit.thread36
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !60
  %i.de = sext i32 %.02346 to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %1, i64 %i.de
  store i32 %i.dd, ptr %i.df, align 4, !tbaa !60
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %Abc_TtHasVar.exit.thread36
  %i.dg = add nsw i32 %.02346, 1
  br label %Abc_TtHasVar.exit.thread

Abc_TtHasVar.exit.thread:                         ; preds = %._crit_edge.us.i, %bb.b, %.preheader.lr.ph.i, %bb.g
  %.124 = phi i32 [ %i.dg, %bb.g ], [ %.02346, %bb.b ], [ %.02346, %.preheader.lr.ph.i ], [ %.02346, %._crit_edge.us.i ] ; 2 uses
  %.1 = phi i32 [ %i.db, %bb.g ], [ %.047, %bb.b ], [ %.047, %.preheader.lr.ph.i ], [ %.047, %._crit_edge.us.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !288

._crit_edge.thread:                               ; preds = %bb.a, %.lr.ph.split
  store i32 0, ptr %3, align 4, !tbaa !60
  br label %Abc_TtShrink.exit

._crit_edge:                                      ; preds = %Abc_TtHasVar.exit.thread, %Abc_TtHasVar.exit.us, %Abc_TtHasVar.exit.thread.us.1, %Abc_TtHasVar.exit.thread.us.2, %Abc_TtHasVar.exit.thread.us.3, %Abc_TtHasVar.exit.thread.us.4, %Abc_TtHasVar.exit.thread36.us.5, %Abc_TtHasVar.exit.us.5, %Abc_TtHasVar.exit.us.us, %Abc_TtHasVar.exit.us.us.1, %Abc_TtHasVar.exit.us.us.2, %Abc_TtHasVar.exit.us.us.3, %Abc_TtHasVar.exit.us.us.4, %Abc_TtHasVar.exit.us.us.5
  %.023.lcssa = phi i32 [ %.124.us.4, %Abc_TtHasVar.exit.us.5 ], [ %.124.us.us.5, %Abc_TtHasVar.exit.us.us.5 ], [ %i.l, %Abc_TtHasVar.exit.us.us ], [ %.124.us.us.1, %Abc_TtHasVar.exit.us.us.1 ], [ %.124.us.us.2, %Abc_TtHasVar.exit.us.us.2 ], [ %.124.us.us.3, %Abc_TtHasVar.exit.us.us.3 ], [ %.124.us.us.4, %Abc_TtHasVar.exit.us.us.4 ], [ %spec.select, %Abc_TtHasVar.exit.us ], [ %.124.us.1, %Abc_TtHasVar.exit.thread.us.1 ], [ %.124.us.2, %Abc_TtHasVar.exit.thread.us.2 ], [ %.124.us.3, %Abc_TtHasVar.exit.thread.us.3 ], [ %.124.us.4, %Abc_TtHasVar.exit.thread.us.4 ], [ %i.cd, %Abc_TtHasVar.exit.thread36.us.5 ], [ %.124, %Abc_TtHasVar.exit.thread ]
  %.0.lcssa = phi i32 [ %.1.us.4, %Abc_TtHasVar.exit.us.5 ], [ %.1.us.us.5, %Abc_TtHasVar.exit.us.us.5 ], [ %i.m, %Abc_TtHasVar.exit.us.us ], [ %.1.us.us.1, %Abc_TtHasVar.exit.us.us.1 ], [ %.1.us.us.2, %Abc_TtHasVar.exit.us.us.2 ], [ %.1.us.us.3, %Abc_TtHasVar.exit.us.us.3 ], [ %.1.us.us.4, %Abc_TtHasVar.exit.us.us.4 ], [ %spec.select, %Abc_TtHasVar.exit.us ], [ %.1.us.1, %Abc_TtHasVar.exit.thread.us.1 ], [ %.1.us.2, %Abc_TtHasVar.exit.thread.us.2 ], [ %.1.us.3, %Abc_TtHasVar.exit.thread.us.3 ], [ %.1.us.4, %Abc_TtHasVar.exit.thread.us.4 ], [ %i.by, %Abc_TtHasVar.exit.thread36.us.5 ], [ %.1, %Abc_TtHasVar.exit.thread ] ; 4 uses
  store i32 %.023.lcssa, ptr %3, align 4, !tbaa !60
  %i.dh = icmp eq i32 %.0.lcssa, 0
  br i1 %i.dh, label %Abc_TtShrink.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.di = add nsw i32 %.0.lcssa, 1
  %i.dj = and i32 %i.di, %.0.lcssa
  %.not.not = icmp eq i32 %i.dj, 0
  br i1 %.not.not, label %Abc_TtShrink.exit, label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %bb.h
  %i.dk = icmp samesign ult i32 %2, 7
  %i.dl = add nsw i32 %2, -6
  %i.dm = shl nuw i32 1, %i.dl
  %.fr.i = freeze i32 %i.dm
  %i.dn = select i1 %i.dk, i32 1, i32 %.fr.i      ; 4 uses
  %i.do = sext i32 %i.dn to i64
  %.idx65.i.i = shl nsw i64 %i.do, 3              ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %0, i64 %.idx65.i.i ; 2 uses
  %i.dq = icmp sgt i32 %i.dn, 0
  %wide.trip.count73.i.i = zext i32 %i.dn to i64  ; 3 uses
  br i1 %i.dq, label %.lr.ph61.split.us.split.us.preheader.i, label %Abc_TtShrink.exit

.lr.ph61.split.us.split.us.preheader.i:           ; preds = %.lr.ph61.i
  %wide.trip.count106.i = zext nneg i32 %2 to i64
  %i.dr = add i64 %.idx65.i.i, %i.a
  %min.iters.check = icmp ult i32 %i.dn, 4
  %n.vec = and i64 %wide.trip.count73.i.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count73.i.i
  br label %.lr.ph61.split.us.split.us.i

.lr.ph61.split.us.split.us.i:                     ; preds = %bb.j, %.lr.ph61.split.us.split.us.preheader.i
  %indvars.iv100.i.a = phi i64 [ 0, %.lr.ph61.split.us.split.us.preheader.i ], [ %indvars.iv.next101.i, %bb.j ] ; 3 uses
  %.056.us.us.i = phi i32 [ 0, %.lr.ph61.split.us.split.us.preheader.i ], [ %.1.us.us.i, %bb.j ] ; 4 uses
  %indvars105.i = trunc i64 %indvars.iv100.i.a to i32 ; 2 uses
  %i.ds = shl nuw i32 1, %indvars105.i
  %i.dt = and i32 %i.ds, %.0.lcssa
  %.not.us.us.i = icmp eq i32 %i.dt, 0
  br i1 %.not.us.us.i, label %bb.j, label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %.lr.ph61.split.us.split.us.i
  %.not15.not18.us.us.i = icmp slt i32 %.056.us.us.i, %indvars105.i
  br i1 %.not15.not18.us.us.i, label %.lr.ph.us.us.preheader.i, label %._crit_edge.split.us.us.split.us.us.i

.lr.ph.us.us.preheader.i:                         ; preds = %.preheader.us.us.i
  %i.du = sext i32 %.056.us.us.i to i64
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %Abc_TtSwapAdjacent.exit.us.us.us.us.i, %.lr.ph.us.us.preheader.i
  %indvars.iv102.i = phi i64 [ %indvars.iv100.i.a, %.lr.ph.us.us.preheader.i ], [ %indvars.iv.next103.i, %Abc_TtSwapAdjacent.exit.us.us.us.us.i ] ; 4 uses
  %indvars.iv.next103.i = add nsw i64 %indvars.iv102.i, -1 ; 5 uses
  %i.dv = icmp slt i64 %indvars.iv102.i, 6
  br i1 %i.dv, label %.lr.ph64.i.us.us.us.us.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.us.us.i
  %i.dw = icmp eq i64 %indvars.iv.next103.i, 5
  br i1 %i.dw, label %.lr.ph.i.us.us.us.us.i, label %.preheader.lr.ph.i.us.us.us.us.i

.preheader.lr.ph.i.us.us.us.us.i:                 ; preds = %bb.i
  %i.dx = icmp samesign ult i64 %indvars.iv102.i, 8
  %i.dy = trunc i64 %indvars.iv102.i to i32
  %i.dz = add i32 %i.dy, -7
  %i.ea = shl nuw i32 1, %i.dz
  %i.eb = select i1 %i.dx, i32 1, i32 %i.ea       ; 7 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  %i.ed = shl i32 %i.eb, 2                        ; 2 uses
  %i.ee = sext i32 %i.ed to i64                   ; 3 uses
  br i1 %i.ec, label %.preheader.us.preheader.i.us.us.us.us.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i

.preheader.us.preheader.i.us.us.us.us.i:          ; preds = %.preheader.lr.ph.i.us.us.us.us.i
  %i.ef = shl nuw nsw i32 %i.eb, 1
  %i.eg = zext nneg i32 %i.eb to i64              ; 6 uses
  %i.eh = zext nneg i32 %i.ef to i64              ; 2 uses
  %i.ei = shl nsw i64 %i.ee, 3                    ; 4 uses
  %i.ej = add i64 %i.ei, %i.a
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dr, i64 %i.ej)
  %i.ek = sub i64 %umax, %i.a                     ; 2 uses
  %i.el = icmp ne i64 %i.ek, %i.ei
  %umin = zext i1 %i.el to i64                    ; 2 uses
  %i.em = or disjoint i64 %i.ei, %umin
  %i.en = sub i64 %i.ek, %i.em
  %umax18 = tail call i64 @llvm.umax.i64(i64 %i.ei, i64 1)
  %i.eo = udiv i64 %i.en, %umax18
  %i.ep = add i64 %i.eo, %umin
  %i.eq = shl i64 %i.ep, 3
  %i.er = mul i64 %i.eq, %i.ee                    ; 2 uses
  %i.es = shl nuw nsw i64 %i.eg, 3                ; 2 uses
  %i.et = shl nuw nsw i64 %i.eh, 3                ; 2 uses
  %i.eu = getelementptr i8, ptr %0, i64 %i.er
  %i.ev = getelementptr i8, ptr %i.eu, i64 %i.es
  %scevgep = getelementptr i8, ptr %i.ev, i64 %i.et
  %scevgep19 = getelementptr i8, ptr %0, i64 %i.et
  %i.ew = shl nuw nsw i64 %i.eg, 4
  %i.ex = getelementptr i8, ptr %0, i64 %i.er
  %scevgep20 = getelementptr i8, ptr %i.ex, i64 %i.ew
  %scevgep21 = getelementptr i8, ptr %0, i64 %i.es
  %min.iters.check23 = icmp ult i32 %i.eb, 4
  %bound0 = icmp ult ptr %scevgep21, %scevgep
  %bound1 = icmp ult ptr %scevgep19, %scevgep20
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.ed, 0
  %i.ey = or i1 %found.conflict, %stride.check
  %n.vec25 = and i64 %i.eg, 2147483644
  %xtraiter = and i64 %i.eg, 1
  %i.ez = icmp eq i32 %i.eb, 1
  %unroll_iter = and i64 %i.eg, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod43 = trunc i32 %i.eb to i1
  br label %.preheader.us.i.us.us.us.us.i

.preheader.us.i.us.us.us.us.i:                    ; preds = %._crit_edge.us.i.us.us.us.us.i, %.preheader.us.preheader.i.us.us.us.us.i
  %.061.us.i.us.us.us.us.i = phi ptr [ %i.fl, %._crit_edge.us.i.us.us.us.us.i ], [ %0, %.preheader.us.preheader.i.us.us.us.us.i ] ; 3 uses
  %invariant.gep.i.us.us.us.us.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us.i, i64 %i.eg ; 4 uses
  %invariant.gep80.i.us.us.us.us.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us.i, i64 %i.eh ; 4 uses
  %brmerge = select i1 %min.iters.check23, i1 true, i1 %i.ey
  br i1 %brmerge, label %scalar.ph22.preheader, label %vector.body26

scalar.ph22.preheader:                            ; preds = %.preheader.us.i.us.us.us.us.i
  br i1 %i.ez, label %scalar.ph22.epil.preheader, label %scalar.ph22

vector.body26:                                    ; preds = %.preheader.us.i.us.us.us.us.i, %vector.body26
  %index27 = phi i64 [ %index.next32, %vector.body26 ], [ 0, %.preheader.us.i.us.us.us.us.i ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i, i64 %index27 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  %wide.load28 = load <2 x i64>, ptr %i.fa, align 8, !tbaa !72, !alias.scope !298, !noalias !299
  %wide.load29 = load <2 x i64>, ptr %i.fb, align 8, !tbaa !72, !alias.scope !298, !noalias !299
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i, i64 %index27 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 2 uses
  %wide.load30 = load <2 x i64>, ptr %i.fc, align 8, !tbaa !72, !alias.scope !299
  %wide.load31 = load <2 x i64>, ptr %i.fd, align 8, !tbaa !72, !alias.scope !299
  store <2 x i64> %wide.load30, ptr %i.fa, align 8, !tbaa !72, !alias.scope !298, !noalias !299
  store <2 x i64> %wide.load31, ptr %i.fb, align 8, !tbaa !72, !alias.scope !298, !noalias !299
  store <2 x i64> %wide.load28, ptr %i.fc, align 8, !tbaa !72, !alias.scope !299
  store <2 x i64> %wide.load29, ptr %i.fd, align 8, !tbaa !72, !alias.scope !299
  %index.next32 = add nuw i64 %index27, 4         ; 2 uses
  %i.fe = icmp eq i64 %index.next32, %n.vec25
  br i1 %i.fe, label %._crit_edge.us.i.us.us.us.us.i, label %vector.body26, !llvm.loop !292

scalar.ph22:                                      ; preds = %scalar.ph22.preheader, %scalar.ph22
  %indvars.iv.i.us.us.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.us.us.i.1, %scalar.ph22 ], [ 0, %scalar.ph22.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph22 ], [ 0, %scalar.ph22.preheader ]
  %gep.i.us.us.us.us.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i, i64 %indvars.iv.i.us.us.us.us.i ; 2 uses
  %i.ff = load i64, ptr %gep.i.us.us.us.us.i, align 8, !tbaa !72
  %gep81.i.us.us.us.us.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i, i64 %indvars.iv.i.us.us.us.us.i ; 2 uses
  %i.fg = load i64, ptr %gep81.i.us.us.us.us.i, align 8, !tbaa !72
  store i64 %i.fg, ptr %gep.i.us.us.us.us.i, align 8, !tbaa !72
  store i64 %i.ff, ptr %gep81.i.us.us.us.us.i, align 8, !tbaa !72
  %indvars.iv.next.i.us.us.us.us.i = or disjoint i64 %indvars.iv.i.us.us.us.us.i, 1 ; 2 uses
  %gep.i.us.us.us.us.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i, i64 %indvars.iv.next.i.us.us.us.us.i ; 2 uses
  %i.fh = load i64, ptr %gep.i.us.us.us.us.i.1, align 8, !tbaa !72
  %gep81.i.us.us.us.us.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i, i64 %indvars.iv.next.i.us.us.us.us.i ; 2 uses
  %i.fi = load i64, ptr %gep81.i.us.us.us.us.i.1, align 8, !tbaa !72
  store i64 %i.fi, ptr %gep.i.us.us.us.us.i.1, align 8, !tbaa !72
  store i64 %i.fh, ptr %gep81.i.us.us.us.us.i.1, align 8, !tbaa !72
  %indvars.iv.next.i.us.us.us.us.i.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa, label %scalar.ph22, !llvm.loop !293

._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa: ; preds = %scalar.ph22
  br i1 %lcmp.mod.not, label %._crit_edge.us.i.us.us.us.us.i, label %scalar.ph22.epil.preheader

scalar.ph22.epil.preheader:                       ; preds = %._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa, %scalar.ph22.preheader
  %indvars.iv.i.us.us.us.us.i.epil.init = phi i64 [ 0, %scalar.ph22.preheader ], [ %indvars.iv.next.i.us.us.us.us.i.1, %._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod43)
  %gep.i.us.us.us.us.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i, i64 %indvars.iv.i.us.us.us.us.i.epil.init ; 2 uses
  %i.fj = load i64, ptr %gep.i.us.us.us.us.i.epil, align 8, !tbaa !72
  %gep81.i.us.us.us.us.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i, i64 %indvars.iv.i.us.us.us.us.i.epil.init ; 2 uses
  %i.fk = load i64, ptr %gep81.i.us.us.us.us.i.epil, align 8, !tbaa !72
  store i64 %i.fk, ptr %gep.i.us.us.us.us.i.epil, align 8, !tbaa !72
  store i64 %i.fj, ptr %gep81.i.us.us.us.us.i.epil, align 8, !tbaa !72
  br label %._crit_edge.us.i.us.us.us.us.i

._crit_edge.us.i.us.us.us.us.i:                   ; preds = %vector.body26, %scalar.ph22.epil.preheader, %._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us.i, i64 %i.ee ; 2 uses
  %i.fm = icmp ult ptr %i.fl, %i.dp
  br i1 %i.fm, label %.preheader.us.i.us.us.us.us.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i, !llvm.loop !11

.lr.ph.i.us.us.us.us.i:                           ; preds = %bb.i, %.lr.ph.i.us.us.us.us.i
  %.05462.i.us.us.us.us.i = phi ptr [ %i.fq, %.lr.ph.i.us.us.us.us.i ], [ %0, %bb.i ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.05462.i.us.us.us.us.i, i64 4 ; 2 uses
  %i.fo = load <2 x i32>, ptr %i.fn, align 4, !tbaa !60
  %i.fp = shufflevector <2 x i32> %i.fo, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.fp, ptr %i.fn, align 4, !tbaa !60
  %i.fq = getelementptr inbounds nuw i8, ptr %.05462.i.us.us.us.us.i, i64 16 ; 2 uses
  %i.fr = icmp ult ptr %i.fq, %i.dp
  br i1 %i.fr, label %.lr.ph.i.us.us.us.us.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i, !llvm.loop !12

.lr.ph64.i.us.us.us.us.i:                         ; preds = %.lr.ph.us.us.i
  %i.fs = trunc nsw i64 %indvars.iv.next103.i to i32
  %i.ft = shl nuw nsw i32 1, %i.fs
  %i.fu = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %indvars.iv.next103.i ; 3 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !72 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !72 ; 2 uses
  %i.fy = zext nneg i32 %i.ft to i64              ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !72 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph64.i.us.us.us.us.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.fv, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert7 = insertelement <2 x i64> poison, i64 %i.fx, i64 0
  %broadcast.splat8 = shufflevector <2 x i64> %broadcast.splatinsert7, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert9 = insertelement <2 x i64> poison, i64 %i.fy, i64 0
  %broadcast.splat10 = shufflevector <2 x i64> %broadcast.splatinsert9, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert11 = insertelement <2 x i64> poison, i64 %i.ga, i64 0
  %broadcast.splat12 = shufflevector <2 x i64> %broadcast.splatinsert11, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.gb, align 8, !tbaa !72 ; 3 uses
  %wide.load13 = load <2 x i64>, ptr %i.gc, align 8, !tbaa !72 ; 3 uses
  %i.gd = and <2 x i64> %wide.load, %broadcast.splat
  %i.ge = and <2 x i64> %wide.load13, %broadcast.splat
  %i.gf = and <2 x i64> %wide.load, %broadcast.splat8
  %i.gg = and <2 x i64> %wide.load13, %broadcast.splat8
  %i.gh = shl <2 x i64> %i.gf, %broadcast.splat10
  %i.gi = shl <2 x i64> %i.gg, %broadcast.splat10
  %i.gj = or <2 x i64> %i.gh, %i.gd
  %i.gk = or <2 x i64> %i.gi, %i.ge
  %i.gl = and <2 x i64> %wide.load, %broadcast.splat12
  %i.gm = and <2 x i64> %wide.load13, %broadcast.splat12
  %i.gn = lshr <2 x i64> %i.gl, %broadcast.splat10
  %i.go = lshr <2 x i64> %i.gm, %broadcast.splat10
  %i.gp = or <2 x i64> %i.gj, %i.gn
  %i.gq = or <2 x i64> %i.gk, %i.go
  store <2 x i64> %i.gp, ptr %i.gb, align 8, !tbaa !72
  store <2 x i64> %i.gq, ptr %i.gc, align 8, !tbaa !72
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gr = icmp eq i64 %index.next, %n.vec
  br i1 %i.gr, label %middle.block, label %vector.body, !llvm.loop !294

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph64.i.us.us.us.us.i, %middle.block
  %indvars.iv70.i.us.us.us.us.i.ph = phi i64 [ 0, %.lr.ph64.i.us.us.us.us.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv70.i.us.us.us.us.i = phi i64 [ %indvars.iv.next71.i.us.us.us.us.i, %scalar.ph ], [ %indvars.iv70.i.us.us.us.us.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv70.i.us.us.us.us.i ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !72 ; 3 uses
  %i.gu = and i64 %i.gt, %i.fv
  %i.gv = and i64 %i.gt, %i.fx
  %i.gw = shl i64 %i.gv, %i.fy
  %i.gx = or i64 %i.gw, %i.gu
  %i.gy = and i64 %i.gt, %i.ga
  %i.gz = lshr i64 %i.gy, %i.fy
  %i.ha = or i64 %i.gx, %i.gz
  store i64 %i.ha, ptr %i.gs, align 8, !tbaa !72
  %indvars.iv.next71.i.us.us.us.us.i = add nuw nsw i64 %indvars.iv70.i.us.us.us.us.i, 1 ; 2 uses
  %exitcond74.not.i.us.us.us.us.i = icmp eq i64 %indvars.iv.next71.i.us.us.us.us.i, %wide.trip.count73.i.i
  br i1 %exitcond74.not.i.us.us.us.us.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i, label %scalar.ph, !llvm.loop !295

Abc_TtSwapAdjacent.exit.us.us.us.us.i:            ; preds = %._crit_edge.us.i.us.us.us.us.i, %.lr.ph.i.us.us.us.us.i, %scalar.ph, %middle.block, %.preheader.lr.ph.i.us.us.us.us.i
  %.not15.not.us.us.us.us.i = icmp sgt i64 %indvars.iv.next103.i, %i.du
  br i1 %.not15.not.us.us.us.us.i, label %.lr.ph.us.us.i, label %._crit_edge.split.us.us.split.us.us.i, !llvm.loop !296

._crit_edge.split.us.us.split.us.us.i:            ; preds = %Abc_TtSwapAdjacent.exit.us.us.us.us.i, %.preheader.us.us.i
  %i.hb = add nsw i32 %.056.us.us.i, 1
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.split.us.us.split.us.us.i, %.lr.ph61.split.us.split.us.i
  %.1.us.us.i = phi i32 [ %i.hb, %._crit_edge.split.us.us.split.us.us.i ], [ %.056.us.us.i, %.lr.ph61.split.us.split.us.i ]
  %indvars.iv.next101.i = add nuw nsw i64 %indvars.iv100.i.a, 1 ; 2 uses
  %exitcond107.not.i = icmp eq i64 %indvars.iv.next101.i, %wide.trip.count106.i
  br i1 %exitcond107.not.i, label %Abc_TtShrink.exit, label %.lr.ph61.split.us.split.us.i, !llvm.loop !297

Abc_TtShrink.exit:                                ; preds = %bb.j, %bb.h, %._crit_edge.thread, %.lr.ph61.i, %._crit_edge
  ret void
}

declare void @Abc_BSEvalFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @Abc_NtkLutCascadeGen(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = mul nsw i32 %1, %0
  %i.b = add nsw i32 %1, -1
  %i.c = add nsw i32 %3, %2
  %i.d = mul nsw i32 %i.c, %i.b
  %i.e = sub nsw i32 %i.a, %i.d                   ; 9 uses
  %i.f = tail call ptr @Abc_LutCascadeGen(i32 noundef %i.e, i32 noundef %0, i32 noundef %2, i32 noundef %3) ; 10 uses
  %i.g = tail call ptr @Abc_NtkLutCascadeFromLuts(ptr noundef %i.f, i32 noundef %i.e, ptr noundef null, i32 poison, i32 poison)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !72
  %i.j = getelementptr [8 x i8], ptr %i.f, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !72
  %i.m = trunc i64 %i.l to i32
  %i.n = load i64, ptr %i.f, align 8, !tbaa !72
  %i.o = trunc i64 %i.n to i32
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.o) ; 0 uses
  %i.q = load i64, ptr %i.f, align 8, !tbaa !72
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %Abc_LutCascadePrint.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %.015.i = phi i32 [ %i.w, %.lr.ph.i ], [ 1, %bb.a ] ; 3 uses
  %i.r = trunc nuw nsw i64 %indvars.iv.i to i32
  tail call void @Abc_LutCascadePrintLut(ptr noundef nonnull readonly %i.f, i32 noundef %i.r, i32 noundef %.015.i, i32 noundef %0, i32 noundef %i.m)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.s = sext i32 %.015.i to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !72
  %i.v = trunc i64 %i.u to i32
  %i.w = add i32 %.015.i, %i.v
  %i.x = load i64, ptr %i.f, align 8, !tbaa !72
  %i.y = icmp ugt i64 %i.x, %indvars.iv.next.i
  br i1 %i.y, label %.lr.ph.i, label %Abc_LutCascadePrint.exit, !llvm.loop !4

Abc_LutCascadePrint.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %Abc_LutCascadePrint.exit
  %i.z = tail call ptr @Abc_LutCascadeTruth(ptr noundef nonnull %i.f, i32 noundef %i.e) ; 5 uses
  %i.aa = icmp slt i32 %i.e, 11
  br i1 %i.aa, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.ab = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38) ; 0 uses
  %i.ac = load ptr, ptr @stdout, align 8, !tbaa !62 ; 2 uses
  %i.ad = icmp slt i32 %i.e, 2
  br i1 %i.ad, label %bb.d, label %.lr.ph.i29

bb.d:                                             ; preds = %bb.c
  %i.ae = load i64, ptr %i.z, align 8, !tbaa !72
  %i.af = trunc i64 %i.ae to i32
  %i.ag = and i32 %i.af, 15                       ; 3 uses
  %i.ah = icmp samesign ult i32 %i.ag, 10
  %i.ai = or disjoint i32 %i.ag, 48
  %i.aj = add nuw nsw i32 %i.ag, 55
  %.0.i.i = select i1 %i.ah, i32 %i.ai, i32 %i.aj
  %fputc17.i = tail call i32 @fputc(i32 %.0.i.i, ptr %i.ac) ; 0 uses
  br label %Abc_TtPrintHexRev.exit

.lr.ph.i29:                                       ; preds = %bb.c
  %i.ak = add nsw i32 %i.e, -2
  %i.al = icmp samesign ugt i32 %i.e, 5
  %i.am = icmp samesign ult i32 %i.e, 7
  %i.an = add nsw i32 %i.e, -6
  %i.ao = shl nuw nsw i32 1, %i.an
  %i.ap = select i1 %i.am, i32 1, i32 %i.ao
  %i.aq = zext nneg i32 %i.ap to i64
  %.idx.i = shl nuw nsw i64 %i.aq, 3
  %i.ar = getelementptr i8, ptr %i.z, i64 %.idx.i
  %.01521.i = getelementptr i8, ptr %i.ar, i64 -8
  %notmask.i = shl nsw i32 -1, %i.ak
  %i.as = xor i32 %notmask.i, -1
  %i.at = select i1 %i.al, i32 15, i32 %i.as
  %i.au = zext nneg i32 %i.at to i64
  br label %bb.e

.loopexit.i:                                      ; preds = %bb.f
  %.015.i32 = getelementptr inbounds i8, ptr %.01523.i, i64 -8 ; 2 uses
  %.not.i33 = icmp ult ptr %.015.i32, %i.z
  br i1 %.not.i33, label %Abc_TtPrintHexRev.exit, label %bb.e, !llvm.loop !2

bb.e:                                             ; preds = %.loopexit.i, %.lr.ph.i29
  %.01523.i = phi ptr [ %.01521.i, %.lr.ph.i29 ], [ %.015.i32, %.loopexit.i ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.i30 = phi i64 [ %i.au, %bb.e ], [ %indvars.iv.next.i31, %bb.f ] ; 3 uses
  %i.av = load i64, ptr %.01523.i, align 8, !tbaa !72
  %i.aw = shl nsw i64 %indvars.iv.i30, 2
  %i.ax = and i64 %i.aw, 4294967292
  %i.ay = lshr i64 %i.av, %i.ax
  %i.az = trunc i64 %i.ay to i32
  %i.ba = and i32 %i.az, 15                       ; 3 uses
  %i.bb = icmp samesign ult i32 %i.ba, 10
  %i.bc = or disjoint i32 %i.ba, 48
  %i.bd = add nuw nsw i32 %i.ba, 55
  %.0.i18.i = select i1 %i.bb, i32 %i.bc, i32 %i.bd
  %fputc.i = tail call i32 @fputc(i32 %.0.i18.i, ptr %i.ac) ; 0 uses
  %indvars.iv.next.i31 = add nsw i64 %indvars.iv.i30, -1
  %i.be = icmp sgt i64 %indvars.iv.i30, 0
  br i1 %i.be, label %bb.f, label %.loopexit.i, !llvm.loop !3

Abc_TtPrintHexRev.exit:                           ; preds = %.loopexit.i, %bb.d
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %Abc_TtPrintHexRev.exit, %bb.b
  %.not27 = icmp eq ptr %i.z, null
  br i1 %.not27, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.z) #30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %Abc_LutCascadePrint.exit
  tail call void @free(ptr noundef %i.f) #30
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define noundef ptr @Abc_NtkReadTruth(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 3 uses
  %.val21 = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.b = getelementptr i8, ptr %.val21, i64 4
  %.val21.val = load i32, ptr %i.b, align 4, !tbaa !51
  %i.c = icmp sgt i32 %.val21.val, 30
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @Abc_NtkStrashToGia(ptr noundef nonnull %0) #30 ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 32
  %.val22 = load ptr, ptr %i.e, align 8, !tbaa !103
  %i.f = getelementptr i8, ptr %i.d, i64 72
  %.val23 = load ptr, ptr %i.f, align 8, !tbaa !104
  %i.g = getelementptr i8, ptr %.val23, i64 8
  %.val23.val = load ptr, ptr %i.g, align 8, !tbaa !82
  %.val23.val.val = load i32, ptr %.val23.val, align 4, !tbaa !60
  %i.h = sext i32 %.val23.val.val to i64
  %i.i = getelementptr inbounds [12 x i8], ptr %.val22, i64 %i.h
  %i.j = tail call ptr @Gia_ObjComputeTruthTable(ptr noundef %i.d, ptr noundef %i.i) #30 ; 4 uses
  %.val20 = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.k = getelementptr i8, ptr %.val20, i64 4
  %.val20.val = load i32, ptr %i.k, align 4, !tbaa !51 ; 2 uses
  %i.l = icmp slt i32 %.val20.val, 7
  %i.m = add nsw i32 %.val20.val, -6
  %i.n = shl nuw i32 1, %i.m
  %i.o = select i1 %i.l, i32 1, i32 %i.n          ; 6 uses
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 3
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #31 ; 7 uses
  %i.s = icmp sgt i32 %i.o, 0
  br i1 %i.s, label %.lr.ph.preheader.i, label %Abc_TtCopy.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %min.iters.check = icmp ult i32 %i.o, 4
  br i1 %min.iters.check, label %.lr.ph.i, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %i.t = and i32 %i.o, 2147483644
  %n.vec = zext nneg i32 %i.t to i64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <2 x i64>, ptr %i.u, align 8, !tbaa !72
  %wide.load26 = load <2 x i64>, ptr %i.v, align 8, !tbaa !72
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x i64> %wide.load, ptr %i.w, align 8, !tbaa !72
  store <2 x i64> %wide.load26, ptr %i.x, align 8, !tbaa !72
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %Abc_TtCopy.exit, label %vector.body, !llvm.loop !300

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i
  %i.z = load i64, ptr %i.j, align 8, !tbaa !72
  store i64 %i.z, ptr %i.r, align 8, !tbaa !72
end_hunk_1
