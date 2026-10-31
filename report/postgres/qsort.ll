Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/qsort?download=true
inline.NumInlined: 8
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @pg_qsort(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = sub i64 0, %2                            ; 7 uses
  %i.b = icmp ult i64 %1, 7
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph274.lr.ph

.lr.ph274.lr.ph:                                  ; preds = %bb.a
  %.not.i199 = icmp eq i64 %2, 0                  ; 4 uses
  %min.iters.check583 = icmp ult i64 %2, 4
  %min.iters.check585 = icmp ult i64 %2, 32
  %i.c = and i64 %2, 28
  %n.vec587 = and i64 %2, -32                     ; 4 uses
  %cmp.n596 = icmp eq i64 %2, %n.vec587
  %min.epilog.iters.check600 = icmp eq i64 %i.c, 0
  %n.vec603 = and i64 %2, -4                      ; 3 uses
  %cmp.n610 = icmp eq i64 %2, %n.vec603
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check549 = icmp ult i64 %2, 4
  %min.iters.check551 = icmp ult i64 %2, 32
  %i.d = and i64 %2, 28
  %n.vec553 = and i64 %2, -32                     ; 4 uses
  %cmp.n562 = icmp eq i64 %2, %n.vec553
  %min.epilog.iters.check566 = icmp eq i64 %i.d, 0
  %n.vec569 = and i64 %2, -4                      ; 3 uses
  %cmp.n576 = icmp eq i64 %2, %n.vec569
  %xtraiter677 = and i64 %2, 1
  %lcmp.mod678.not = icmp eq i64 %xtraiter677, 0
  %min.iters.check512 = icmp ult i64 %2, 4
  %min.iters.check514 = icmp ult i64 %2, 32
  %i.e = and i64 %2, 28
  %n.vec516 = and i64 %2, -32                     ; 4 uses
  %cmp.n525 = icmp eq i64 %2, %n.vec516
  %min.epilog.iters.check529 = icmp eq i64 %i.e, 0
  %n.vec532 = and i64 %2, -4                      ; 3 uses
  %cmp.n539 = icmp eq i64 %2, %n.vec532
  %xtraiter679 = and i64 %2, 1
  %lcmp.mod680.not = icmp eq i64 %xtraiter679, 0
  %min.iters.check477 = icmp ult i64 %2, 4
  %min.iters.check479 = icmp ult i64 %2, 32
  %i.f = and i64 %2, 28
  %n.vec481 = and i64 %2, -32                     ; 4 uses
  %cmp.n490 = icmp eq i64 %2, %n.vec481
  %min.epilog.iters.check494 = icmp eq i64 %i.f, 0
  %n.vec497 = and i64 %2, -4                      ; 3 uses
  %cmp.n504 = icmp eq i64 %2, %n.vec497
  %xtraiter681 = and i64 %2, 1
  %lcmp.mod682.not = icmp eq i64 %xtraiter681, 0
  br label %.lr.ph274

.lr.ph274:                                        ; preds = %.lr.ph274.lr.ph, %.outer
  %.0.ph281 = phi i64 [ %1, %.lr.ph274.lr.ph ], [ %i.im, %.outer ]
  %.0183.ph280 = phi ptr [ %0, %.lr.ph274.lr.ph ], [ %i.il, %.outer ] ; 29 uses
  %i.g = getelementptr i8, ptr %.0183.ph280, i64 %2 ; 4 uses
  %i.h = ptrtoint ptr %.0183.ph280 to i64
  br label %bb.b

.outer._crit_edge:                                ; preds = %.outer, %bb.n, %bb.a
  %.0183.ph.lcssa239 = phi ptr [ %.0183.ph280, %bb.n ], [ %0, %bb.a ], [ %i.il, %.outer ] ; 4 uses
  %.0.lcssa = phi i64 [ %i.ir, %bb.n ], [ %1, %bb.a ], [ %i.im, %.outer ] ; 2 uses
  %i.i = icmp samesign ult i64 %.0.lcssa, 2
  br i1 %i.i, label %.critedge198, label %.preheader230

.preheader230:                                    ; preds = %.outer._crit_edge
  %i.j = mul i64 %.0.lcssa, %2                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0183.ph.lcssa239, i64 %i.j
  %.not390 = icmp samesign ult i64 %2, %i.j
  br i1 %.not390, label %.preheader.preheader, label %.critedge198

.preheader.preheader:                             ; preds = %.preheader230
  %.0170287 = getelementptr inbounds nuw i8, ptr %.0183.ph.lcssa239, i64 %2
  %min.iters.check612 = icmp ult i64 %2, 4
  %min.iters.check614 = icmp ult i64 %2, 32
  %i.l = and i64 %2, 28
  %n.vec616 = and i64 %2, -32                     ; 4 uses
  %cmp.n625 = icmp eq i64 %2, %n.vec616
  %min.epilog.iters.check629 = icmp eq i64 %i.l, 0
  %n.vec632 = and i64 %2, -4                      ; 3 uses
  %cmp.n639 = icmp eq i64 %2, %n.vec632
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.critedge
  %.0170288 = phi ptr [ %.0170, %.critedge ], [ %.0170287, %.preheader.preheader ] ; 3 uses
  %i.m = icmp ugt ptr %.0170288, %.0183.ph.lcssa239
  br i1 %i.m, label %.lr.ph285, label %.critedge

.lr.ph285:                                        ; preds = %.preheader, %pg_qsort_swapn.exit.loopexit
  %.0171284 = phi ptr [ %i.n, %pg_qsort_swapn.exit.loopexit ], [ %.0170288, %.preheader ] ; 5 uses
  %i.n = getelementptr inbounds i8, ptr %.0171284, i64 %i.a ; 6 uses
  %i.o = tail call i32 %3(ptr noundef nonnull %i.n, ptr noundef nonnull %.0171284) #5
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %iter.check626, label %.critedge

iter.check626:                                    ; preds = %.lr.ph285
  br i1 %min.iters.check612, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check613

vector.main.loop.iter.check613:                   ; preds = %iter.check626
  br i1 %min.iters.check614, label %vec.epilog.ph630, label %vector.body617

vector.body617:                                   ; preds = %vector.main.loop.iter.check613, %vector.body617
  %index618 = phi i64 [ %index.next623, %vector.body617 ], [ 0, %vector.main.loop.iter.check613 ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0171284, i64 %index618 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %index618 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %wide.load619 = load <16 x i8>, ptr %i.q, align 1
  %wide.load620 = load <16 x i8>, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %wide.load621 = load <16 x i8>, ptr %i.r, align 1
  %wide.load622 = load <16 x i8>, ptr %i.t, align 1
  store <16 x i8> %wide.load621, ptr %i.q, align 1
  store <16 x i8> %wide.load622, ptr %i.s, align 1
  store <16 x i8> %wide.load619, ptr %i.r, align 1
  store <16 x i8> %wide.load620, ptr %i.t, align 1
  %index.next623 = add nuw i64 %index618, 32      ; 2 uses
  %i.u = icmp eq i64 %index.next623, %n.vec616
  br i1 %i.u, label %middle.block624, label %vector.body617, !llvm.loop !4

middle.block624:                                  ; preds = %vector.body617
  br i1 %cmp.n625, label %pg_qsort_swapn.exit.loopexit, label %vec.epilog.iter.check627

vec.epilog.iter.check627:                         ; preds = %middle.block624
  br i1 %min.epilog.iters.check629, label %.lr.ph.i.preheader, label %vec.epilog.ph630, !prof !51

vec.epilog.ph630:                                 ; preds = %vector.main.loop.iter.check613, %vec.epilog.iter.check627
  %vec.epilog.resume.val631 = phi i64 [ %n.vec616, %vec.epilog.iter.check627 ], [ 0, %vector.main.loop.iter.check613 ]
  br label %vec.epilog.vector.body633

vec.epilog.vector.body633:                        ; preds = %vec.epilog.vector.body633, %vec.epilog.ph630
  %index634 = phi i64 [ %vec.epilog.resume.val631, %vec.epilog.ph630 ], [ %index.next637, %vec.epilog.vector.body633 ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0171284, i64 %index634 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 %index634 ; 2 uses
  %wide.load635 = load <4 x i8>, ptr %i.v, align 1
  %wide.load636 = load <4 x i8>, ptr %i.w, align 1
  store <4 x i8> %wide.load636, ptr %i.v, align 1
  store <4 x i8> %wide.load635, ptr %i.w, align 1
  %index.next637 = add nuw i64 %index634, 4       ; 2 uses
  %i.x = icmp eq i64 %index.next637, %n.vec632
  br i1 %i.x, label %vec.epilog.middle.block638, label %vec.epilog.vector.body633, !llvm.loop !5

vec.epilog.middle.block638:                       ; preds = %vec.epilog.vector.body633
  br i1 %cmp.n639, label %pg_qsort_swapn.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check626, %vec.epilog.iter.check627, %vec.epilog.middle.block638
  %.06.i.ph = phi i64 [ 0, %iter.check626 ], [ %n.vec616, %vec.epilog.iter.check627 ], [ %n.vec632, %vec.epilog.middle.block638 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.06.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %.06.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0171284, i64 %.06.i ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 %.06.i ; 2 uses
  %i.aa = load i8, ptr %i.y, align 1
  %i.ab = load i8, ptr %i.z, align 1
  store i8 %i.ab, ptr %i.y, align 1
  store i8 %i.aa, ptr %i.z, align 1
  %i.ac = add nuw i64 %.06.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, %2
  br i1 %exitcond.not.i, label %pg_qsort_swapn.exit.loopexit, label %.lr.ph.i, !llvm.loop !6

pg_qsort_swapn.exit.loopexit:                     ; preds = %.lr.ph.i, %vec.epilog.middle.block638, %middle.block624
  %i.ad = icmp ugt ptr %i.n, %.0183.ph.lcssa239
  br i1 %i.ad, label %.lr.ph285, label %.critedge, !llvm.loop !7

.critedge:                                        ; preds = %pg_qsort_swapn.exit.loopexit, %.lr.ph285, %.preheader
  %.0170 = getelementptr inbounds nuw i8, ptr %.0170288, i64 %2 ; 2 uses
  %i.ae = icmp ult ptr %.0170, %i.k
  br i1 %i.ae, label %.preheader, label %.critedge198, !llvm.loop !8

bb.b:                                             ; preds = %.lr.ph274, %bb.n
  %.0273 = phi i64 [ %.0.ph281, %.lr.ph274 ], [ %i.ir, %bb.n ] ; 7 uses
  %i.af = mul i64 %.0273, %2                      ; 2 uses
  %i.ag = getelementptr i8, ptr %.0183.ph280, i64 %i.af ; 6 uses
  %i.ah = icmp samesign ult i64 %2, %i.af
  br i1 %i.ah, label %.lr.ph, label %.critedge198

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.1240 = phi ptr [ %i.al, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %i.ai = getelementptr inbounds i8, ptr %.1240, i64 %i.a
  %i.aj = tail call i32 %3(ptr noundef %i.ai, ptr noundef %.1240) #5
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %.1240, i64 %2 ; 2 uses
  %i.am = icmp ult ptr %i.al, %i.ag
  br i1 %i.am, label %.lr.ph, label %.critedge198, !llvm.loop !9

bb.d:                                             ; preds = %.lr.ph
  %i.an = lshr i64 %.0273, 1
  %i.ao = mul i64 %i.an, %2
  %i.ap = getelementptr inbounds nuw i8, ptr %.0183.ph280, i64 %i.ao ; 5 uses
  %.not = icmp eq i64 %.0273, 7
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = add i64 %.0273, -1
  %i.ar = mul i64 %i.aq, %2
  %i.as = getelementptr inbounds nuw i8, ptr %.0183.ph280, i64 %i.ar ; 4 uses
  %i.at = icmp ugt i64 %.0273, 40
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.au = lshr i64 %.0273, 3
  %i.av = mul i64 %i.au, %2                       ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0183.ph280, i64 %i.av
  %i.ax = shl i64 %i.av, 1                        ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0183.ph280, i64 %i.ax
  %i.az = tail call fastcc ptr @pg_qsort_med3(ptr noundef %.0183.ph280, ptr noundef %i.aw, ptr noundef %i.ay, ptr noundef %3)
  %i.ba = sub i64 0, %i.av                        ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ap, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.av
  %i.bd = tail call fastcc ptr @pg_qsort_med3(ptr noundef %i.bb, ptr noundef %i.ap, ptr noundef %i.bc, ptr noundef %3)
  %i.be = sub i64 0, %i.ax
  %i.bf = getelementptr inbounds i8, ptr %i.as, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.as, i64 %i.ba
  %i.bh = tail call fastcc ptr @pg_qsort_med3(ptr noundef %i.bf, ptr noundef %i.bg, ptr noundef %i.as, ptr noundef %3)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1172 = phi ptr [ %i.az, %bb.f ], [ %.0183.ph280, %bb.e ]
  %.2 = phi ptr [ %i.bd, %bb.f ], [ %i.ap, %bb.e ]
  %.0169 = phi ptr [ %i.bh, %bb.f ], [ %i.as, %bb.e ]
  %i.bi = tail call fastcc ptr @pg_qsort_med3(ptr noundef %.1172, ptr noundef %.2, ptr noundef %.0169, ptr noundef %3)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.3 = phi ptr [ %i.bi, %bb.g ], [ %i.ap, %bb.d ] ; 7 uses
  br i1 %.not.i199, label %pg_qsort_swapn.exit203, label %iter.check597

iter.check597:                                    ; preds = %bb.h
  br i1 %min.iters.check583, label %.lr.ph.i200.preheader, label %vector.memcheck578

vector.memcheck578:                               ; preds = %iter.check597
  %scevgep579 = getelementptr i8, ptr %.3, i64 %2
  %bound0580 = icmp ult ptr %.0183.ph280, %scevgep579
  %bound1581 = icmp ult ptr %.3, %i.g
  %found.conflict582 = and i1 %bound0580, %bound1581
  br i1 %found.conflict582, label %.lr.ph.i200.preheader, label %vector.main.loop.iter.check584

vector.main.loop.iter.check584:                   ; preds = %vector.memcheck578
  br i1 %min.iters.check585, label %vec.epilog.ph601, label %vector.body588

vector.body588:                                   ; preds = %vector.main.loop.iter.check584, %vector.body588
  %index589 = phi i64 [ %index.next594, %vector.body588 ], [ 0, %vector.main.loop.iter.check584 ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0183.ph280, i64 %index589 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.3, i64 %index589 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %wide.load590 = load <16 x i8>, ptr %i.bj, align 1, !alias.scope !52, !noalias !53
  %wide.load591 = load <16 x i8>, ptr %i.bl, align 1, !alias.scope !52, !noalias !53
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %wide.load592 = load <16 x i8>, ptr %i.bk, align 1, !alias.scope !53
  %wide.load593 = load <16 x i8>, ptr %i.bm, align 1, !alias.scope !53
  store <16 x i8> %wide.load592, ptr %i.bj, align 1, !alias.scope !52, !noalias !53
  store <16 x i8> %wide.load593, ptr %i.bl, align 1, !alias.scope !52, !noalias !53
  store <16 x i8> %wide.load590, ptr %i.bk, align 1, !alias.scope !53
  store <16 x i8> %wide.load591, ptr %i.bm, align 1, !alias.scope !53
  %index.next594 = add nuw i64 %index589, 32      ; 2 uses
  %i.bn = icmp eq i64 %index.next594, %n.vec587
  br i1 %i.bn, label %middle.block595, label %vector.body588, !llvm.loop !13

middle.block595:                                  ; preds = %vector.body588
  br i1 %cmp.n596, label %pg_qsort_swapn.exit203, label %vec.epilog.iter.check598

vec.epilog.iter.check598:                         ; preds = %middle.block595
  br i1 %min.epilog.iters.check600, label %.lr.ph.i200.preheader, label %vec.epilog.ph601, !prof !51

vec.epilog.ph601:                                 ; preds = %vector.main.loop.iter.check584, %vec.epilog.iter.check598
  %vec.epilog.resume.val602 = phi i64 [ %n.vec587, %vec.epilog.iter.check598 ], [ 0, %vector.main.loop.iter.check584 ]
  br label %vec.epilog.vector.body604

vec.epilog.vector.body604:                        ; preds = %vec.epilog.vector.body604, %vec.epilog.ph601
  %index605 = phi i64 [ %vec.epilog.resume.val602, %vec.epilog.ph601 ], [ %index.next608, %vec.epilog.vector.body604 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0183.ph280, i64 %index605 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.3, i64 %index605 ; 2 uses
  %wide.load606 = load <4 x i8>, ptr %i.bo, align 1, !alias.scope !52, !noalias !53
  %wide.load607 = load <4 x i8>, ptr %i.bp, align 1, !alias.scope !53
  store <4 x i8> %wide.load607, ptr %i.bo, align 1, !alias.scope !52, !noalias !53
  store <4 x i8> %wide.load606, ptr %i.bp, align 1, !alias.scope !53
  %index.next608 = add nuw i64 %index605, 4       ; 2 uses
  %i.bq = icmp eq i64 %index.next608, %n.vec603
  br i1 %i.bq, label %vec.epilog.middle.block609, label %vec.epilog.vector.body604, !llvm.loop !14

vec.epilog.middle.block609:                       ; preds = %vec.epilog.vector.body604
  br i1 %cmp.n610, label %pg_qsort_swapn.exit203, label %.lr.ph.i200.preheader

.lr.ph.i200.preheader:                            ; preds = %iter.check597, %vector.memcheck578, %vec.epilog.iter.check598, %vec.epilog.middle.block609
  %.06.i201.ph = phi i64 [ 0, %iter.check597 ], [ 0, %vector.memcheck578 ], [ %n.vec587, %vec.epilog.iter.check598 ], [ %n.vec603, %vec.epilog.middle.block609 ] ; 5 uses
  %.neg = or disjoint i64 %.06.i201.ph, 1
  br i1 %lcmp.mod.not, label %.lr.ph.i200.prol.loopexit, label %.lr.ph.i200.prol

.lr.ph.i200.prol:                                 ; preds = %.lr.ph.i200.preheader
  %i.br = getelementptr inbounds nuw i8, ptr %.0183.ph280, i64 %.06.i201.ph ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.3, i64 %.06.i201.ph ; 2 uses
  %i.bt = load i8, ptr %i.br, align 1
  %i.bu = load i8, ptr %i.bs, align 1
  store i8 %i.bu, ptr %i.br, align 1
  store i8 %i.bt, ptr %i.bs, align 1
  %i.bv = or disjoint i64 %.06.i201.ph, 1
  br label %.lr.ph.i200.prol.loopexit

.lr.ph.i200.prol.loopexit:                        ; preds = %.lr.ph.i200.prol, %.lr.ph.i200.preheader
  %.06.i201.unr = phi i64 [ %.06.i201.ph, %.lr.ph.i200.preheader ], [ %i.bv, %.lr.ph.i200.prol ]
  %i.bw = icmp eq i64 %2, %.neg
  br i1 %i.bw, label %pg_qsort_swapn.exit203, label %.lr.ph.i200

.lr.ph.i200:                                      ; preds = %.lr.ph.i200.prol.loopexit, %.lr.ph.i200
  %.06.i201 = phi i64 [ %i.cg, %.lr.ph.i200 ], [ %.06.i201.unr, %.lr.ph.i200.prol.loopexit ] ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0183.ph280, i64 %.06.i201 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.3, i64 %.06.i201 ; 2 uses
  %i.bz = load i8, ptr %i.bx, align 1
  %i.ca = load i8, ptr %i.by, align 1
  store i8 %i.ca, ptr %i.bx, align 1
  store i8 %i.bz, ptr %i.by, align 1
  %i.cb = add nuw i64 %.06.i201, 1                ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0183.ph280, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.3, i64 %i.cb ; 2 uses
  %i.ce = load i8, ptr %i.cc, align 1
  %i.cf = load i8, ptr %i.cd, align 1
  store i8 %i.cf, ptr %i.cc, align 1
  store i8 %i.ce, ptr %i.cd, align 1
  %i.cg = add nuw i64 %.06.i201, 2                ; 2 uses
  %exitcond.not.i202.1 = icmp eq i64 %i.cg, %2
  br i1 %exitcond.not.i202.1, label %pg_qsort_swapn.exit203, label %.lr.ph.i200, !llvm.loop !15

pg_qsort_swapn.exit203:                           ; preds = %.lr.ph.i200.prol.loopexit, %.lr.ph.i200, %middle.block595, %vec.epilog.middle.block609, %bb.h
  %i.ch = add i64 %.0273, -1
  %i.ci = mul i64 %i.ch, %2
  %i.cj = getelementptr inbounds nuw i8, ptr %.0183.ph280, i64 %i.ci ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %pg_qsort_swapn.exit218, %pg_qsort_swapn.exit203
  %.0180 = phi ptr [ %i.g, %pg_qsort_swapn.exit203 ], [ %.1181.lcssa, %pg_qsort_swapn.exit218 ] ; 3 uses
  %.0178 = phi ptr [ %i.g, %pg_qsort_swapn.exit203 ], [ %i.fu, %pg_qsort_swapn.exit218 ] ; 6 uses
  %.0176 = phi ptr [ %i.cj, %pg_qsort_swapn.exit203 ], [ %i.fv, %pg_qsort_swapn.exit218 ] ; 7 uses
  %.0173 = phi ptr [ %i.cj, %pg_qsort_swapn.exit203 ], [ %.us-phi268, %pg_qsort_swapn.exit218 ] ; 3 uses
  %.not194242 = icmp ugt ptr %.0178, %.0176
  br i1 %.not194242, label %.critedge2, label %.lr.ph246

.lr.ph246:                                        ; preds = %bb.i
  br i1 %.not.i199, label %.lr.ph246.split.us, label %.lr.ph246.split

.lr.ph246.split.us:                               ; preds = %.lr.ph246, %.lr.ph246.split.us
  %i.ck = tail call i32 %3(ptr noundef %.0178, ptr noundef %.0183.ph280) #5
  %i.cl = icmp slt i32 %i.ck, 1
  br i1 %i.cl, label %.lr.ph246.split.us, label %.critedge2

.lr.ph246.split:                                  ; preds = %.lr.ph246, %bb.k
  %indvar543 = phi i64 [ %indvar.next544, %bb.k ], [ 0, %.lr.ph246 ] ; 2 uses
  %.1179244 = phi ptr [ %i.do, %bb.k ], [ %.0178, %.lr.ph246 ] ; 9 uses
  %.1181243 = phi ptr [ %.2182, %bb.k ], [ %.0180, %.lr.ph246 ] ; 10 uses
  %4 = add i64 %indvar543, 1
  %5 = mul i64 %2, %4
  %scevgep545 = getelementptr i8, ptr %.0178, i64 %5
  %i.cm = tail call i32 %3(ptr noundef %.1179244, ptr noundef %.0183.ph280) #5 ; 2 uses
  %i.cn = icmp slt i32 %i.cm, 1
  br i1 %i.cn, label %bb.j, label %.critedge2

bb.j:                                             ; preds = %.lr.ph246.split
  %i.co = icmp eq i32 %i.cm, 0
  br i1 %i.co, label %iter.check563, label %bb.k

iter.check563:                                    ; preds = %bb.j
  br i1 %min.iters.check549, label %.lr.ph.i205.preheader, label %vector.memcheck541

vector.memcheck541:                               ; preds = %iter.check563
  %scevgep542 = getelementptr i8, ptr %.1181243, i64 %2
  %bound0546 = icmp ult ptr %.1181243, %scevgep545
  %bound1547 = icmp ult ptr %.1179244, %scevgep542
  %found.conflict548 = and i1 %bound0546, %bound1547
  br i1 %found.conflict548, label %.lr.ph.i205.preheader, label %vector.main.loop.iter.check550

vector.main.loop.iter.check550:                   ; preds = %vector.memcheck541
  br i1 %min.iters.check551, label %vec.epilog.ph567, label %vector.body554

vector.body554:                                   ; preds = %vector.main.loop.iter.check550, %vector.body554
  %index555 = phi i64 [ %index.next560, %vector.body554 ], [ 0, %vector.main.loop.iter.check550 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.1181243, i64 %index555 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.1179244, i64 %index555 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %wide.load556 = load <16 x i8>, ptr %i.cp, align 1, !alias.scope !54, !noalias !55
  %wide.load557 = load <16 x i8>, ptr %i.cr, align 1, !alias.scope !54, !noalias !55
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %wide.load558 = load <16 x i8>, ptr %i.cq, align 1, !alias.scope !55
  %wide.load559 = load <16 x i8>, ptr %i.cs, align 1, !alias.scope !55
  store <16 x i8> %wide.load558, ptr %i.cp, align 1, !alias.scope !54, !noalias !55
  store <16 x i8> %wide.load559, ptr %i.cr, align 1, !alias.scope !54, !noalias !55
  store <16 x i8> %wide.load556, ptr %i.cq, align 1, !alias.scope !55
  store <16 x i8> %wide.load557, ptr %i.cs, align 1, !alias.scope !55
  %index.next560 = add nuw i64 %index555, 32      ; 2 uses
  %i.ct = icmp eq i64 %index.next560, %n.vec553
  br i1 %i.ct, label %middle.block561, label %vector.body554, !llvm.loop !19

middle.block561:                                  ; preds = %vector.body554
  br i1 %cmp.n562, label %pg_qsort_swapn.exit208.loopexit, label %vec.epilog.iter.check564

vec.epilog.iter.check564:                         ; preds = %middle.block561
  br i1 %min.epilog.iters.check566, label %.lr.ph.i205.preheader, label %vec.epilog.ph567, !prof !51

vec.epilog.ph567:                                 ; preds = %vector.main.loop.iter.check550, %vec.epilog.iter.check564
  %vec.epilog.resume.val568 = phi i64 [ %n.vec553, %vec.epilog.iter.check564 ], [ 0, %vector.main.loop.iter.check550 ]
  br label %vec.epilog.vector.body570

vec.epilog.vector.body570:                        ; preds = %vec.epilog.vector.body570, %vec.epilog.ph567
  %index571 = phi i64 [ %vec.epilog.resume.val568, %vec.epilog.ph567 ], [ %index.next574, %vec.epilog.vector.body570 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.1181243, i64 %index571 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.1179244, i64 %index571 ; 2 uses
  %wide.load572 = load <4 x i8>, ptr %i.cu, align 1, !alias.scope !54, !noalias !55
  %wide.load573 = load <4 x i8>, ptr %i.cv, align 1, !alias.scope !55
  store <4 x i8> %wide.load573, ptr %i.cu, align 1, !alias.scope !54, !noalias !55
  store <4 x i8> %wide.load572, ptr %i.cv, align 1, !alias.scope !55
  %index.next574 = add nuw i64 %index571, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next574, %n.vec569
  br i1 %i.cw, label %vec.epilog.middle.block575, label %vec.epilog.vector.body570, !llvm.loop !20

vec.epilog.middle.block575:                       ; preds = %vec.epilog.vector.body570
  br i1 %cmp.n576, label %pg_qsort_swapn.exit208.loopexit, label %.lr.ph.i205.preheader

.lr.ph.i205.preheader:                            ; preds = %iter.check563, %vector.memcheck541, %vec.epilog.iter.check564, %vec.epilog.middle.block575
  %.06.i206.ph = phi i64 [ 0, %iter.check563 ], [ 0, %vector.memcheck541 ], [ %n.vec553, %vec.epilog.iter.check564 ], [ %n.vec569, %vec.epilog.middle.block575 ] ; 5 uses
  %.neg687 = or disjoint i64 %.06.i206.ph, 1
  br i1 %lcmp.mod678.not, label %.lr.ph.i205.prol.loopexit, label %.lr.ph.i205.prol

.lr.ph.i205.prol:                                 ; preds = %.lr.ph.i205.preheader
  %i.cx = getelementptr inbounds nuw i8, ptr %.1181243, i64 %.06.i206.ph ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.1179244, i64 %.06.i206.ph ; 2 uses
  %i.cz = load i8, ptr %i.cx, align 1
  %i.da = load i8, ptr %i.cy, align 1
  store i8 %i.da, ptr %i.cx, align 1
  store i8 %i.cz, ptr %i.cy, align 1
  %i.db = or disjoint i64 %.06.i206.ph, 1
  br label %.lr.ph.i205.prol.loopexit

.lr.ph.i205.prol.loopexit:                        ; preds = %.lr.ph.i205.prol, %.lr.ph.i205.preheader
  %.06.i206.unr = phi i64 [ %.06.i206.ph, %.lr.ph.i205.preheader ], [ %i.db, %.lr.ph.i205.prol ]
  %i.dc = icmp eq i64 %2, %.neg687
  br i1 %i.dc, label %pg_qsort_swapn.exit208.loopexit, label %.lr.ph.i205

.lr.ph.i205:                                      ; preds = %.lr.ph.i205.prol.loopexit, %.lr.ph.i205
  %.06.i206 = phi i64 [ %i.dm, %.lr.ph.i205 ], [ %.06.i206.unr, %.lr.ph.i205.prol.loopexit ] ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.1181243, i64 %.06.i206 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.1179244, i64 %.06.i206 ; 2 uses
  %i.df = load i8, ptr %i.dd, align 1
  %i.dg = load i8, ptr %i.de, align 1
  store i8 %i.dg, ptr %i.dd, align 1
  store i8 %i.df, ptr %i.de, align 1
  %i.dh = add nuw i64 %.06.i206, 1                ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.1181243, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.1179244, i64 %i.dh ; 2 uses
  %i.dk = load i8, ptr %i.di, align 1
  %i.dl = load i8, ptr %i.dj, align 1
  store i8 %i.dl, ptr %i.di, align 1
  store i8 %i.dk, ptr %i.dj, align 1
  %i.dm = add nuw i64 %.06.i206, 2                ; 2 uses
  %exitcond.not.i207.1 = icmp eq i64 %i.dm, %2
  br i1 %exitcond.not.i207.1, label %pg_qsort_swapn.exit208.loopexit, label %.lr.ph.i205, !llvm.loop !21

pg_qsort_swapn.exit208.loopexit:                  ; preds = %.lr.ph.i205.prol.loopexit, %.lr.ph.i205, %vec.epilog.middle.block575, %middle.block561
  %i.dn = getelementptr inbounds nuw i8, ptr %.1181243, i64 %2
  br label %bb.k

bb.k:                                             ; preds = %pg_qsort_swapn.exit208.loopexit, %bb.j
  %.2182 = phi ptr [ %i.dn, %pg_qsort_swapn.exit208.loopexit ], [ %.1181243, %bb.j ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.1179244, i64 %2 ; 3 uses
  %.not194 = icmp ugt ptr %i.do, %.0176
  %indvar.next544 = add i64 %indvar543, 1
  br i1 %.not194, label %.critedge2, label %.lr.ph246.split, !llvm.loop !22

.critedge2:                                       ; preds = %.lr.ph246.split, %bb.k, %.lr.ph246.split.us, %bb.i
  %.1181.lcssa = phi ptr [ %.0180, %bb.i ], [ %.0180, %.lr.ph246.split.us ], [ %.1181243, %.lr.ph246.split ], [ %.2182, %bb.k ] ; 2 uses
  %.1179.lcssa = phi ptr [ %.0178, %bb.i ], [ %.0178, %.lr.ph246.split.us ], [ %.1179244, %.lr.ph246.split ], [ %i.do, %bb.k ] ; 21 uses
  %.not195254 = icmp ugt ptr %.1179.lcssa, %.0176
  br i1 %.not195254, label %.critedge2._crit_edge, label %.lr.ph258

.lr.ph258:                                        ; preds = %.critedge2
  br i1 %.not.i199, label %.lr.ph258.split.us, label %.lr.ph258.split

.lr.ph258.split.us:                               ; preds = %.lr.ph258, %pg_qsort_swapn.exit213.us
  %.1174257.us = phi ptr [ %spec.select290, %pg_qsort_swapn.exit213.us ], [ %.0173, %.lr.ph258 ] ; 2 uses
  %.1177255.us = phi ptr [ %i.ds, %pg_qsort_swapn.exit213.us ], [ %.0176, %.lr.ph258 ] ; 3 uses
  %i.dp = tail call i32 %3(ptr noundef %.1177255.us, ptr noundef %.0183.ph280) #5 ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, -1
  br i1 %i.dq, label %pg_qsort_swapn.exit213.us, label %.critedge4

pg_qsort_swapn.exit213.us:                        ; preds = %.lr.ph258.split.us
  %i.dr = icmp eq i32 %i.dp, 0
  %spec.select290.idx = select i1 %i.dr, i64 %i.a, i64 0
  %spec.select290 = getelementptr inbounds nuw i8, ptr %.1174257.us, i64 %spec.select290.idx ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.1177255.us, i64 %i.a ; 3 uses
  %.not195.us = icmp ugt ptr %.1179.lcssa, %i.ds
  br i1 %.not195.us, label %.critedge2._crit_edge, label %.lr.ph258.split.us, !llvm.loop !23

.lr.ph258.split:                                  ; preds = %.lr.ph258, %bb.m
  %indvar = phi i64 [ %indvar.next, %bb.m ], [ 0, %.lr.ph258 ] ; 2 uses
  %.1174257 = phi ptr [ %.2175, %bb.m ], [ %.0173, %.lr.ph258 ] ; 10 uses
  %.1177255 = phi ptr [ %i.ev, %bb.m ], [ %.0176, %.lr.ph258 ] ; 9 uses
  %6 = sub i64 1, %indvar
  %7 = mul i64 %2, %6
  %scevgep507 = getelementptr i8, ptr %.0176, i64 %7
  %i.dt = tail call i32 %3(ptr noundef %.1177255, ptr noundef %.0183.ph280) #5 ; 2 uses
  %i.du = icmp sgt i32 %i.dt, -1
  br i1 %i.du, label %bb.l, label %.critedge4

bb.l:                                             ; preds = %.lr.ph258.split
  %i.dv = icmp eq i32 %i.dt, 0
  br i1 %i.dv, label %iter.check526, label %bb.m

iter.check526:                                    ; preds = %bb.l
  br i1 %min.iters.check512, label %.lr.ph.i210.preheader, label %vector.memcheck506

vector.memcheck506:                               ; preds = %iter.check526
  %scevgep508 = getelementptr i8, ptr %.1174257, i64 %2
  %bound0509 = icmp ult ptr %.1177255, %scevgep508
  %bound1510 = icmp ult ptr %.1174257, %scevgep507
  %found.conflict511 = and i1 %bound0509, %bound1510
  br i1 %found.conflict511, label %.lr.ph.i210.preheader, label %vector.main.loop.iter.check513

vector.main.loop.iter.check513:                   ; preds = %vector.memcheck506
  br i1 %min.iters.check514, label %vec.epilog.ph530, label %vector.body517

vector.body517:                                   ; preds = %vector.main.loop.iter.check513, %vector.body517
  %index518 = phi i64 [ %index.next523, %vector.body517 ], [ 0, %vector.main.loop.iter.check513 ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.1177255, i64 %index518 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.1174257, i64 %index518 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 2 uses
  %wide.load519 = load <16 x i8>, ptr %i.dw, align 1, !alias.scope !56, !noalias !57
  %wide.load520 = load <16 x i8>, ptr %i.dy, align 1, !alias.scope !56, !noalias !57
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  %wide.load521 = load <16 x i8>, ptr %i.dx, align 1, !alias.scope !57
  %wide.load522 = load <16 x i8>, ptr %i.dz, align 1, !alias.scope !57
  store <16 x i8> %wide.load521, ptr %i.dw, align 1, !alias.scope !56, !noalias !57
  store <16 x i8> %wide.load522, ptr %i.dy, align 1, !alias.scope !56, !noalias !57
  store <16 x i8> %wide.load519, ptr %i.dx, align 1, !alias.scope !57
  store <16 x i8> %wide.load520, ptr %i.dz, align 1, !alias.scope !57
  %index.next523 = add nuw i64 %index518, 32      ; 2 uses
  %i.ea = icmp eq i64 %index.next523, %n.vec516
  br i1 %i.ea, label %middle.block524, label %vector.body517, !llvm.loop !27

middle.block524:                                  ; preds = %vector.body517
  br i1 %cmp.n525, label %pg_qsort_swapn.exit213.loopexit, label %vec.epilog.iter.check527

vec.epilog.iter.check527:                         ; preds = %middle.block524
  br i1 %min.epilog.iters.check529, label %.lr.ph.i210.preheader, label %vec.epilog.ph530, !prof !51

vec.epilog.ph530:                                 ; preds = %vector.main.loop.iter.check513, %vec.epilog.iter.check527
  %vec.epilog.resume.val531 = phi i64 [ %n.vec516, %vec.epilog.iter.check527 ], [ 0, %vector.main.loop.iter.check513 ]
  br label %vec.epilog.vector.body533

vec.epilog.vector.body533:                        ; preds = %vec.epilog.vector.body533, %vec.epilog.ph530
  %index534 = phi i64 [ %vec.epilog.resume.val531, %vec.epilog.ph530 ], [ %index.next537, %vec.epilog.vector.body533 ] ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.1177255, i64 %index534 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.1174257, i64 %index534 ; 2 uses
  %wide.load535 = load <4 x i8>, ptr %i.eb, align 1, !alias.scope !56, !noalias !57
  %wide.load536 = load <4 x i8>, ptr %i.ec, align 1, !alias.scope !57
  store <4 x i8> %wide.load536, ptr %i.eb, align 1, !alias.scope !56, !noalias !57
  store <4 x i8> %wide.load535, ptr %i.ec, align 1, !alias.scope !57
  %index.next537 = add nuw i64 %index534, 4       ; 2 uses
  %i.ed = icmp eq i64 %index.next537, %n.vec532
  br i1 %i.ed, label %vec.epilog.middle.block538, label %vec.epilog.vector.body533, !llvm.loop !28

vec.epilog.middle.block538:                       ; preds = %vec.epilog.vector.body533
  br i1 %cmp.n539, label %pg_qsort_swapn.exit213.loopexit, label %.lr.ph.i210.preheader

.lr.ph.i210.preheader:                            ; preds = %iter.check526, %vector.memcheck506, %vec.epilog.iter.check527, %vec.epilog.middle.block538
  %.06.i211.ph = phi i64 [ 0, %iter.check526 ], [ 0, %vector.memcheck506 ], [ %n.vec516, %vec.epilog.iter.check527 ], [ %n.vec532, %vec.epilog.middle.block538 ] ; 5 uses
  %.neg688 = or disjoint i64 %.06.i211.ph, 1
  br i1 %lcmp.mod680.not, label %.lr.ph.i210.prol.loopexit, label %.lr.ph.i210.prol

.lr.ph.i210.prol:                                 ; preds = %.lr.ph.i210.preheader
  %i.ee = getelementptr inbounds nuw i8, ptr %.1177255, i64 %.06.i211.ph ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.1174257, i64 %.06.i211.ph ; 2 uses
  %i.eg = load i8, ptr %i.ee, align 1
  %i.eh = load i8, ptr %i.ef, align 1
  store i8 %i.eh, ptr %i.ee, align 1
  store i8 %i.eg, ptr %i.ef, align 1
  %i.ei = or disjoint i64 %.06.i211.ph, 1
  br label %.lr.ph.i210.prol.loopexit

.lr.ph.i210.prol.loopexit:                        ; preds = %.lr.ph.i210.prol, %.lr.ph.i210.preheader
  %.06.i211.unr = phi i64 [ %.06.i211.ph, %.lr.ph.i210.preheader ], [ %i.ei, %.lr.ph.i210.prol ]
  %i.ej = icmp eq i64 %2, %.neg688
  br i1 %i.ej, label %pg_qsort_swapn.exit213.loopexit, label %.lr.ph.i210

.lr.ph.i210:                                      ; preds = %.lr.ph.i210.prol.loopexit, %.lr.ph.i210
  %.06.i211 = phi i64 [ %i.et, %.lr.ph.i210 ], [ %.06.i211.unr, %.lr.ph.i210.prol.loopexit ] ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.1177255, i64 %.06.i211 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.1174257, i64 %.06.i211 ; 2 uses
  %i.em = load i8, ptr %i.ek, align 1
  %i.en = load i8, ptr %i.el, align 1
  store i8 %i.en, ptr %i.ek, align 1
  store i8 %i.em, ptr %i.el, align 1
  %i.eo = add nuw i64 %.06.i211, 1                ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.1177255, i64 %i.eo ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.1174257, i64 %i.eo ; 2 uses
  %i.er = load i8, ptr %i.ep, align 1
  %i.es = load i8, ptr %i.eq, align 1
  store i8 %i.es, ptr %i.ep, align 1
  store i8 %i.er, ptr %i.eq, align 1
  %i.et = add nuw i64 %.06.i211, 2                ; 2 uses
  %exitcond.not.i212.1 = icmp eq i64 %i.et, %2
  br i1 %exitcond.not.i212.1, label %pg_qsort_swapn.exit213.loopexit, label %.lr.ph.i210, !llvm.loop !29

pg_qsort_swapn.exit213.loopexit:                  ; preds = %.lr.ph.i210.prol.loopexit, %.lr.ph.i210, %vec.epilog.middle.block538, %middle.block524
  %i.eu = getelementptr inbounds i8, ptr %.1174257, i64 %i.a
  br label %bb.m

bb.m:                                             ; preds = %pg_qsort_swapn.exit213.loopexit, %bb.l
  %.2175 = phi ptr [ %i.eu, %pg_qsort_swapn.exit213.loopexit ], [ %.1174257, %bb.l ] ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %.1177255, i64 %i.a ; 3 uses
  %.not195 = icmp ugt ptr %.1179.lcssa, %i.ev
  %indvar.next = add i64 %indvar, 1
  br i1 %.not195, label %.critedge2._crit_edge, label %.lr.ph258.split, !llvm.loop !23

.critedge4:                                       ; preds = %.lr.ph258.split, %.lr.ph258.split.us
  %.us-phi267 = phi ptr [ %.1177255.us, %.lr.ph258.split.us ], [ %.1177255, %.lr.ph258.split ] ; 8 uses
  %.us-phi268 = phi ptr [ %.1174257.us, %.lr.ph258.split.us ], [ %.1174257, %.lr.ph258.split ]
  br i1 %.not.i199, label %pg_qsort_swapn.exit218, label %iter.check491

iter.check491:                                    ; preds = %.critedge4
  br i1 %min.iters.check477, label %.lr.ph.i215.preheader, label %vector.memcheck471

vector.memcheck471:                               ; preds = %iter.check491
  %scevgep472 = getelementptr i8, ptr %.1179.lcssa, i64 %2
  %scevgep473 = getelementptr i8, ptr %.us-phi267, i64 %2
  %bound0474 = icmp ult ptr %.1179.lcssa, %scevgep473
  %bound1475 = icmp ult ptr %.us-phi267, %scevgep472
  %found.conflict476 = and i1 %bound0474, %bound1475
  br i1 %found.conflict476, label %.lr.ph.i215.preheader, label %vector.main.loop.iter.check478

vector.main.loop.iter.check478:                   ; preds = %vector.memcheck471
  br i1 %min.iters.check479, label %vec.epilog.ph495, label %vector.body482

vector.body482:                                   ; preds = %vector.main.loop.iter.check478, %vector.body482
  %index483 = phi i64 [ %index.next488, %vector.body482 ], [ 0, %vector.main.loop.iter.check478 ] ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.1179.lcssa, i64 %index483 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.us-phi267, i64 %index483 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  %wide.load484 = load <16 x i8>, ptr %i.ew, align 1, !alias.scope !58, !noalias !59
  %wide.load485 = load <16 x i8>, ptr %i.ey, align 1, !alias.scope !58, !noalias !59
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 2 uses
  %wide.load486 = load <16 x i8>, ptr %i.ex, align 1, !alias.scope !59
  %wide.load487 = load <16 x i8>, ptr %i.ez, align 1, !alias.scope !59
  store <16 x i8> %wide.load486, ptr %i.ew, align 1, !alias.scope !58, !noalias !59
  store <16 x i8> %wide.load487, ptr %i.ey, align 1, !alias.scope !58, !noalias !59
  store <16 x i8> %wide.load484, ptr %i.ex, align 1, !alias.scope !59
  store <16 x i8> %wide.load485, ptr %i.ez, align 1, !alias.scope !59
  %index.next488 = add nuw i64 %index483, 32      ; 2 uses
  %i.fa = icmp eq i64 %index.next488, %n.vec481
  br i1 %i.fa, label %middle.block489, label %vector.body482, !llvm.loop !33

middle.block489:                                  ; preds = %vector.body482
  br i1 %cmp.n490, label %pg_qsort_swapn.exit218, label %vec.epilog.iter.check492

vec.epilog.iter.check492:                         ; preds = %middle.block489
  br i1 %min.epilog.iters.check494, label %.lr.ph.i215.preheader, label %vec.epilog.ph495, !prof !51

vec.epilog.ph495:                                 ; preds = %vector.main.loop.iter.check478, %vec.epilog.iter.check492
  %vec.epilog.resume.val496 = phi i64 [ %n.vec481, %vec.epilog.iter.check492 ], [ 0, %vector.main.loop.iter.check478 ]
  br label %vec.epilog.vector.body498

vec.epilog.vector.body498:                        ; preds = %vec.epilog.vector.body498, %vec.epilog.ph495
  %index499 = phi i64 [ %vec.epilog.resume.val496, %vec.epilog.ph495 ], [ %index.next502, %vec.epilog.vector.body498 ] ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.1179.lcssa, i64 %index499 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.us-phi267, i64 %index499 ; 2 uses
  %wide.load500 = load <4 x i8>, ptr %i.fb, align 1, !alias.scope !58, !noalias !59
  %wide.load501 = load <4 x i8>, ptr %i.fc, align 1, !alias.scope !59
  store <4 x i8> %wide.load501, ptr %i.fb, align 1, !alias.scope !58, !noalias !59
  store <4 x i8> %wide.load500, ptr %i.fc, align 1, !alias.scope !59
  %index.next502 = add nuw i64 %index499, 4       ; 2 uses
  %i.fd = icmp eq i64 %index.next502, %n.vec497
  br i1 %i.fd, label %vec.epilog.middle.block503, label %vec.epilog.vector.body498, !llvm.loop !34

vec.epilog.middle.block503:                       ; preds = %vec.epilog.vector.body498
  br i1 %cmp.n504, label %pg_qsort_swapn.exit218, label %.lr.ph.i215.preheader

.lr.ph.i215.preheader:                            ; preds = %iter.check491, %vector.memcheck471, %vec.epilog.iter.check492, %vec.epilog.middle.block503
  %.06.i216.ph = phi i64 [ 0, %iter.check491 ], [ 0, %vector.memcheck471 ], [ %n.vec481, %vec.epilog.iter.check492 ], [ %n.vec497, %vec.epilog.middle.block503 ] ; 5 uses
  %.neg689 = or disjoint i64 %.06.i216.ph, 1
  br i1 %lcmp.mod682.not, label %.lr.ph.i215.prol.loopexit, label %.lr.ph.i215.prol

.lr.ph.i215.prol:                                 ; preds = %.lr.ph.i215.preheader
  %i.fe = getelementptr inbounds nuw i8, ptr %.1179.lcssa, i64 %.06.i216.ph ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.us-phi267, i64 %.06.i216.ph ; 2 uses
  %i.fg = load i8, ptr %i.fe, align 1
  %i.fh = load i8, ptr %i.ff, align 1
  store i8 %i.fh, ptr %i.fe, align 1
  store i8 %i.fg, ptr %i.ff, align 1
  %i.fi = or disjoint i64 %.06.i216.ph, 1
  br label %.lr.ph.i215.prol.loopexit

.lr.ph.i215.prol.loopexit:                        ; preds = %.lr.ph.i215.prol, %.lr.ph.i215.preheader
  %.06.i216.unr = phi i64 [ %.06.i216.ph, %.lr.ph.i215.preheader ], [ %i.fi, %.lr.ph.i215.prol ]
  %i.fj = icmp eq i64 %2, %.neg689
  br i1 %i.fj, label %pg_qsort_swapn.exit218, label %.lr.ph.i215

.lr.ph.i215:                                      ; preds = %.lr.ph.i215.prol.loopexit, %.lr.ph.i215
  %.06.i216 = phi i64 [ %i.ft, %.lr.ph.i215 ], [ %.06.i216.unr, %.lr.ph.i215.prol.loopexit ] ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.1179.lcssa, i64 %.06.i216 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.us-phi267, i64 %.06.i216 ; 2 uses
  %i.fm = load i8, ptr %i.fk, align 1
  %i.fn = load i8, ptr %i.fl, align 1
  store i8 %i.fn, ptr %i.fk, align 1
  store i8 %i.fm, ptr %i.fl, align 1
  %i.fo = add nuw i64 %.06.i216, 1                ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.1179.lcssa, i64 %i.fo ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.us-phi267, i64 %i.fo ; 2 uses
  %i.fr = load i8, ptr %i.fp, align 1
  %i.fs = load i8, ptr %i.fq, align 1
  store i8 %i.fs, ptr %i.fp, align 1
  store i8 %i.fr, ptr %i.fq, align 1
  %i.ft = add nuw i64 %.06.i216, 2                ; 2 uses
  %exitcond.not.i217.1 = icmp eq i64 %i.ft, %2
  br i1 %exitcond.not.i217.1, label %pg_qsort_swapn.exit218, label %.lr.ph.i215, !llvm.loop !35

end_hunk_0
