Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/qsort_arg?download=true
inline.NumInlined: 8
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @qsort_arg(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = sub i64 0, %2                            ; 8 uses
  %i.b = icmp ult i64 %1, 7
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph284.lr.ph

.lr.ph284.lr.ph:                                  ; preds = %bb.a
  %.not.i209 = icmp eq i64 %2, 0                  ; 4 uses
  %min.iters.check593 = icmp ult i64 %2, 4
  %min.iters.check595 = icmp ult i64 %2, 32
  %i.c = and i64 %2, 28
  %n.vec597 = and i64 %2, -32                     ; 4 uses
  %cmp.n606 = icmp eq i64 %2, %n.vec597
  %min.epilog.iters.check610 = icmp eq i64 %i.c, 0
  %n.vec613 = and i64 %2, -4                      ; 3 uses
  %cmp.n620 = icmp eq i64 %2, %n.vec613
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check559 = icmp ult i64 %2, 4
  %min.iters.check561 = icmp ult i64 %2, 32
  %i.d = and i64 %2, 28
  %n.vec563 = and i64 %2, -32                     ; 4 uses
  %cmp.n572 = icmp eq i64 %2, %n.vec563
  %min.epilog.iters.check576 = icmp eq i64 %i.d, 0
  %n.vec579 = and i64 %2, -4                      ; 3 uses
  %cmp.n586 = icmp eq i64 %2, %n.vec579
  %xtraiter687 = and i64 %2, 1
  %lcmp.mod688.not = icmp eq i64 %xtraiter687, 0
  %min.iters.check522 = icmp ult i64 %2, 4
  %min.iters.check524 = icmp ult i64 %2, 32
  %i.e = and i64 %2, 28
  %n.vec526 = and i64 %2, -32                     ; 4 uses
  %cmp.n535 = icmp eq i64 %2, %n.vec526
  %min.epilog.iters.check539 = icmp eq i64 %i.e, 0
  %n.vec542 = and i64 %2, -4                      ; 3 uses
  %cmp.n549 = icmp eq i64 %2, %n.vec542
  %xtraiter689 = and i64 %2, 1
  %lcmp.mod690.not = icmp eq i64 %xtraiter689, 0
  %min.iters.check487 = icmp ult i64 %2, 4
  %min.iters.check489 = icmp ult i64 %2, 32
  %i.f = and i64 %2, 28
  %n.vec491 = and i64 %2, -32                     ; 4 uses
  %cmp.n500 = icmp eq i64 %2, %n.vec491
  %min.epilog.iters.check504 = icmp eq i64 %i.f, 0
  %n.vec507 = and i64 %2, -4                      ; 3 uses
  %cmp.n514 = icmp eq i64 %2, %n.vec507
  %xtraiter691 = and i64 %2, 1
  %lcmp.mod692.not = icmp eq i64 %xtraiter691, 0
  br label %.lr.ph284

.lr.ph284:                                        ; preds = %.lr.ph284.lr.ph, %.outer
  %.0.ph291 = phi i64 [ %1, %.lr.ph284.lr.ph ], [ %i.im, %.outer ]
  %.0193.ph290 = phi ptr [ %0, %.lr.ph284.lr.ph ], [ %i.il, %.outer ] ; 29 uses
  %i.g = getelementptr i8, ptr %.0193.ph290, i64 %2 ; 4 uses
  %i.h = ptrtoint ptr %.0193.ph290 to i64
  br label %bb.b

.outer._crit_edge:                                ; preds = %.outer, %bb.n, %bb.a
  %.0193.ph.lcssa249 = phi ptr [ %.0193.ph290, %bb.n ], [ %0, %bb.a ], [ %i.il, %.outer ] ; 4 uses
  %.0.lcssa = phi i64 [ %i.ir, %bb.n ], [ %1, %bb.a ], [ %i.im, %.outer ] ; 2 uses
  %i.i = icmp samesign ult i64 %.0.lcssa, 2
  br i1 %i.i, label %.critedge208, label %.preheader240

.preheader240:                                    ; preds = %.outer._crit_edge
  %i.j = mul i64 %.0.lcssa, %2                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0193.ph.lcssa249, i64 %i.j
  %.not400 = icmp samesign ult i64 %2, %i.j
  br i1 %.not400, label %.preheader.preheader, label %.critedge208

.preheader.preheader:                             ; preds = %.preheader240
  %.0180297 = getelementptr inbounds nuw i8, ptr %.0193.ph.lcssa249, i64 %2
  %min.iters.check622 = icmp ult i64 %2, 4
  %min.iters.check624 = icmp ult i64 %2, 32
  %i.l = and i64 %2, 28
  %n.vec626 = and i64 %2, -32                     ; 4 uses
  %cmp.n635 = icmp eq i64 %2, %n.vec626
  %min.epilog.iters.check639 = icmp eq i64 %i.l, 0
  %n.vec642 = and i64 %2, -4                      ; 3 uses
  %cmp.n649 = icmp eq i64 %2, %n.vec642
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.critedge
  %.0180298 = phi ptr [ %.0180, %.critedge ], [ %.0180297, %.preheader.preheader ] ; 3 uses
  %i.m = icmp ugt ptr %.0180298, %.0193.ph.lcssa249
  br i1 %i.m, label %.lr.ph295, label %.critedge

.lr.ph295:                                        ; preds = %.preheader, %qsort_arg_swapn.exit.loopexit
  %.0181294 = phi ptr [ %i.n, %qsort_arg_swapn.exit.loopexit ], [ %.0180298, %.preheader ] ; 5 uses
  %i.n = getelementptr inbounds i8, ptr %.0181294, i64 %i.a ; 6 uses
  %i.o = tail call i32 %3(ptr noundef nonnull %i.n, ptr noundef nonnull %.0181294, ptr noundef %4) #3
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %iter.check636, label %.critedge

iter.check636:                                    ; preds = %.lr.ph295
  br i1 %min.iters.check622, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check623

vector.main.loop.iter.check623:                   ; preds = %iter.check636
  br i1 %min.iters.check624, label %vec.epilog.ph640, label %vector.body627

vector.body627:                                   ; preds = %vector.main.loop.iter.check623, %vector.body627
  %index628 = phi i64 [ %index.next633, %vector.body627 ], [ 0, %vector.main.loop.iter.check623 ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0181294, i64 %index628 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %index628 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %wide.load629 = load <16 x i8>, ptr %i.q, align 1
  %wide.load630 = load <16 x i8>, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %wide.load631 = load <16 x i8>, ptr %i.r, align 1
  %wide.load632 = load <16 x i8>, ptr %i.t, align 1
  store <16 x i8> %wide.load631, ptr %i.q, align 1
  store <16 x i8> %wide.load632, ptr %i.s, align 1
  store <16 x i8> %wide.load629, ptr %i.r, align 1
  store <16 x i8> %wide.load630, ptr %i.t, align 1
  %index.next633 = add nuw i64 %index628, 32      ; 2 uses
  %i.u = icmp eq i64 %index.next633, %n.vec626
  br i1 %i.u, label %middle.block634, label %vector.body627, !llvm.loop !4

middle.block634:                                  ; preds = %vector.body627
  br i1 %cmp.n635, label %qsort_arg_swapn.exit.loopexit, label %vec.epilog.iter.check637

vec.epilog.iter.check637:                         ; preds = %middle.block634
  br i1 %min.epilog.iters.check639, label %.lr.ph.i.preheader, label %vec.epilog.ph640, !prof !51

vec.epilog.ph640:                                 ; preds = %vector.main.loop.iter.check623, %vec.epilog.iter.check637
  %vec.epilog.resume.val641 = phi i64 [ %n.vec626, %vec.epilog.iter.check637 ], [ 0, %vector.main.loop.iter.check623 ]
  br label %vec.epilog.vector.body643

vec.epilog.vector.body643:                        ; preds = %vec.epilog.vector.body643, %vec.epilog.ph640
  %index644 = phi i64 [ %vec.epilog.resume.val641, %vec.epilog.ph640 ], [ %index.next647, %vec.epilog.vector.body643 ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0181294, i64 %index644 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 %index644 ; 2 uses
  %wide.load645 = load <4 x i8>, ptr %i.v, align 1
  %wide.load646 = load <4 x i8>, ptr %i.w, align 1
  store <4 x i8> %wide.load646, ptr %i.v, align 1
  store <4 x i8> %wide.load645, ptr %i.w, align 1
  %index.next647 = add nuw i64 %index644, 4       ; 2 uses
  %i.x = icmp eq i64 %index.next647, %n.vec642
  br i1 %i.x, label %vec.epilog.middle.block648, label %vec.epilog.vector.body643, !llvm.loop !5

vec.epilog.middle.block648:                       ; preds = %vec.epilog.vector.body643
  br i1 %cmp.n649, label %qsort_arg_swapn.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check636, %vec.epilog.iter.check637, %vec.epilog.middle.block648
  %.06.i.ph = phi i64 [ 0, %iter.check636 ], [ %n.vec626, %vec.epilog.iter.check637 ], [ %n.vec642, %vec.epilog.middle.block648 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.06.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %.06.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0181294, i64 %.06.i ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 %.06.i ; 2 uses
  %i.aa = load i8, ptr %i.y, align 1
  %i.ab = load i8, ptr %i.z, align 1
  store i8 %i.ab, ptr %i.y, align 1
  store i8 %i.aa, ptr %i.z, align 1
  %i.ac = add nuw i64 %.06.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, %2
  br i1 %exitcond.not.i, label %qsort_arg_swapn.exit.loopexit, label %.lr.ph.i, !llvm.loop !6

qsort_arg_swapn.exit.loopexit:                    ; preds = %.lr.ph.i, %vec.epilog.middle.block648, %middle.block634
  %i.ad = icmp ugt ptr %i.n, %.0193.ph.lcssa249
  br i1 %i.ad, label %.lr.ph295, label %.critedge, !llvm.loop !7

.critedge:                                        ; preds = %qsort_arg_swapn.exit.loopexit, %.lr.ph295, %.preheader
  %.0180 = getelementptr inbounds nuw i8, ptr %.0180298, i64 %2 ; 2 uses
  %i.ae = icmp ult ptr %.0180, %i.k
  br i1 %i.ae, label %.preheader, label %.critedge208, !llvm.loop !8

bb.b:                                             ; preds = %.lr.ph284, %bb.n
  %.0283 = phi i64 [ %.0.ph291, %.lr.ph284 ], [ %i.ir, %bb.n ] ; 7 uses
  %i.af = mul i64 %.0283, %2                      ; 2 uses
  %i.ag = getelementptr i8, ptr %.0193.ph290, i64 %i.af ; 6 uses
  %i.ah = icmp samesign ult i64 %2, %i.af
  br i1 %i.ah, label %.lr.ph, label %.critedge208

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.1250 = phi ptr [ %i.al, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %i.ai = getelementptr inbounds i8, ptr %.1250, i64 %i.a
  %i.aj = tail call i32 %3(ptr noundef %i.ai, ptr noundef %.1250, ptr noundef %4) #3
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %.1250, i64 %2 ; 2 uses
  %i.am = icmp ult ptr %i.al, %i.ag
  br i1 %i.am, label %.lr.ph, label %.critedge208, !llvm.loop !9

bb.d:                                             ; preds = %.lr.ph
  %i.an = lshr i64 %.0283, 1
  %i.ao = mul i64 %i.an, %2
  %i.ap = getelementptr inbounds nuw i8, ptr %.0193.ph290, i64 %i.ao ; 5 uses
  %.not = icmp eq i64 %.0283, 7
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = add i64 %.0283, -1
  %i.ar = mul i64 %i.aq, %2
  %i.as = getelementptr inbounds nuw i8, ptr %.0193.ph290, i64 %i.ar ; 4 uses
  %i.at = icmp ugt i64 %.0283, 40
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.au = lshr i64 %.0283, 3
  %i.av = mul i64 %i.au, %2                       ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0193.ph290, i64 %i.av
  %i.ax = shl i64 %i.av, 1                        ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0193.ph290, i64 %i.ax
  %i.az = tail call fastcc ptr @qsort_arg_med3(ptr noundef %.0193.ph290, ptr noundef %i.aw, ptr noundef %i.ay, ptr noundef %3, ptr noundef %4)
  %i.ba = sub i64 0, %i.av                        ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ap, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.av
  %i.bd = tail call fastcc ptr @qsort_arg_med3(ptr noundef %i.bb, ptr noundef %i.ap, ptr noundef %i.bc, ptr noundef %3, ptr noundef %4)
  %i.be = sub i64 0, %i.ax
  %i.bf = getelementptr inbounds i8, ptr %i.as, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.as, i64 %i.ba
  %i.bh = tail call fastcc ptr @qsort_arg_med3(ptr noundef %i.bf, ptr noundef %i.bg, ptr noundef %i.as, ptr noundef %3, ptr noundef %4)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1182 = phi ptr [ %i.az, %bb.f ], [ %.0193.ph290, %bb.e ]
  %.2 = phi ptr [ %i.bd, %bb.f ], [ %i.ap, %bb.e ]
  %.0179 = phi ptr [ %i.bh, %bb.f ], [ %i.as, %bb.e ]
  %i.bi = tail call fastcc ptr @qsort_arg_med3(ptr noundef %.1182, ptr noundef %.2, ptr noundef %.0179, ptr noundef %3, ptr noundef %4)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.3 = phi ptr [ %i.bi, %bb.g ], [ %i.ap, %bb.d ] ; 7 uses
  br i1 %.not.i209, label %qsort_arg_swapn.exit213, label %iter.check607

iter.check607:                                    ; preds = %bb.h
  br i1 %min.iters.check593, label %.lr.ph.i210.preheader, label %vector.memcheck588

vector.memcheck588:                               ; preds = %iter.check607
  %scevgep589 = getelementptr i8, ptr %.3, i64 %2
  %bound0590 = icmp ult ptr %.0193.ph290, %scevgep589
  %bound1591 = icmp ult ptr %.3, %i.g
  %found.conflict592 = and i1 %bound0590, %bound1591
  br i1 %found.conflict592, label %.lr.ph.i210.preheader, label %vector.main.loop.iter.check594

vector.main.loop.iter.check594:                   ; preds = %vector.memcheck588
  br i1 %min.iters.check595, label %vec.epilog.ph611, label %vector.body598

vector.body598:                                   ; preds = %vector.main.loop.iter.check594, %vector.body598
  %index599 = phi i64 [ %index.next604, %vector.body598 ], [ 0, %vector.main.loop.iter.check594 ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0193.ph290, i64 %index599 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.3, i64 %index599 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %wide.load600 = load <16 x i8>, ptr %i.bj, align 1, !alias.scope !52, !noalias !53
  %wide.load601 = load <16 x i8>, ptr %i.bl, align 1, !alias.scope !52, !noalias !53
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %wide.load602 = load <16 x i8>, ptr %i.bk, align 1, !alias.scope !53
  %wide.load603 = load <16 x i8>, ptr %i.bm, align 1, !alias.scope !53
  store <16 x i8> %wide.load602, ptr %i.bj, align 1, !alias.scope !52, !noalias !53
  store <16 x i8> %wide.load603, ptr %i.bl, align 1, !alias.scope !52, !noalias !53
  store <16 x i8> %wide.load600, ptr %i.bk, align 1, !alias.scope !53
  store <16 x i8> %wide.load601, ptr %i.bm, align 1, !alias.scope !53
  %index.next604 = add nuw i64 %index599, 32      ; 2 uses
  %i.bn = icmp eq i64 %index.next604, %n.vec597
  br i1 %i.bn, label %middle.block605, label %vector.body598, !llvm.loop !13

middle.block605:                                  ; preds = %vector.body598
  br i1 %cmp.n606, label %qsort_arg_swapn.exit213, label %vec.epilog.iter.check608

vec.epilog.iter.check608:                         ; preds = %middle.block605
  br i1 %min.epilog.iters.check610, label %.lr.ph.i210.preheader, label %vec.epilog.ph611, !prof !51

vec.epilog.ph611:                                 ; preds = %vector.main.loop.iter.check594, %vec.epilog.iter.check608
  %vec.epilog.resume.val612 = phi i64 [ %n.vec597, %vec.epilog.iter.check608 ], [ 0, %vector.main.loop.iter.check594 ]
  br label %vec.epilog.vector.body614

vec.epilog.vector.body614:                        ; preds = %vec.epilog.vector.body614, %vec.epilog.ph611
  %index615 = phi i64 [ %vec.epilog.resume.val612, %vec.epilog.ph611 ], [ %index.next618, %vec.epilog.vector.body614 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0193.ph290, i64 %index615 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.3, i64 %index615 ; 2 uses
  %wide.load616 = load <4 x i8>, ptr %i.bo, align 1, !alias.scope !52, !noalias !53
  %wide.load617 = load <4 x i8>, ptr %i.bp, align 1, !alias.scope !53
  store <4 x i8> %wide.load617, ptr %i.bo, align 1, !alias.scope !52, !noalias !53
  store <4 x i8> %wide.load616, ptr %i.bp, align 1, !alias.scope !53
  %index.next618 = add nuw i64 %index615, 4       ; 2 uses
  %i.bq = icmp eq i64 %index.next618, %n.vec613
  br i1 %i.bq, label %vec.epilog.middle.block619, label %vec.epilog.vector.body614, !llvm.loop !14

vec.epilog.middle.block619:                       ; preds = %vec.epilog.vector.body614
  br i1 %cmp.n620, label %qsort_arg_swapn.exit213, label %.lr.ph.i210.preheader

.lr.ph.i210.preheader:                            ; preds = %iter.check607, %vector.memcheck588, %vec.epilog.iter.check608, %vec.epilog.middle.block619
  %.06.i211.ph = phi i64 [ 0, %iter.check607 ], [ 0, %vector.memcheck588 ], [ %n.vec597, %vec.epilog.iter.check608 ], [ %n.vec613, %vec.epilog.middle.block619 ] ; 5 uses
  %.neg = or disjoint i64 %.06.i211.ph, 1
  br i1 %lcmp.mod.not, label %.lr.ph.i210.prol.loopexit, label %.lr.ph.i210.prol

.lr.ph.i210.prol:                                 ; preds = %.lr.ph.i210.preheader
  %i.br = getelementptr inbounds nuw i8, ptr %.0193.ph290, i64 %.06.i211.ph ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.3, i64 %.06.i211.ph ; 2 uses
  %i.bt = load i8, ptr %i.br, align 1
  %i.bu = load i8, ptr %i.bs, align 1
  store i8 %i.bu, ptr %i.br, align 1
  store i8 %i.bt, ptr %i.bs, align 1
  %i.bv = or disjoint i64 %.06.i211.ph, 1
  br label %.lr.ph.i210.prol.loopexit

.lr.ph.i210.prol.loopexit:                        ; preds = %.lr.ph.i210.prol, %.lr.ph.i210.preheader
  %.06.i211.unr = phi i64 [ %.06.i211.ph, %.lr.ph.i210.preheader ], [ %i.bv, %.lr.ph.i210.prol ]
  %i.bw = icmp eq i64 %2, %.neg
  br i1 %i.bw, label %qsort_arg_swapn.exit213, label %.lr.ph.i210

.lr.ph.i210:                                      ; preds = %.lr.ph.i210.prol.loopexit, %.lr.ph.i210
  %.06.i211 = phi i64 [ %i.cg, %.lr.ph.i210 ], [ %.06.i211.unr, %.lr.ph.i210.prol.loopexit ] ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0193.ph290, i64 %.06.i211 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.3, i64 %.06.i211 ; 2 uses
  %i.bz = load i8, ptr %i.bx, align 1
  %i.ca = load i8, ptr %i.by, align 1
  store i8 %i.ca, ptr %i.bx, align 1
  store i8 %i.bz, ptr %i.by, align 1
  %i.cb = add nuw i64 %.06.i211, 1                ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0193.ph290, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.3, i64 %i.cb ; 2 uses
  %i.ce = load i8, ptr %i.cc, align 1
  %i.cf = load i8, ptr %i.cd, align 1
  store i8 %i.cf, ptr %i.cc, align 1
  store i8 %i.ce, ptr %i.cd, align 1
  %i.cg = add nuw i64 %.06.i211, 2                ; 2 uses
  %exitcond.not.i212.1 = icmp eq i64 %i.cg, %2
  br i1 %exitcond.not.i212.1, label %qsort_arg_swapn.exit213, label %.lr.ph.i210, !llvm.loop !15

qsort_arg_swapn.exit213:                          ; preds = %.lr.ph.i210.prol.loopexit, %.lr.ph.i210, %middle.block605, %vec.epilog.middle.block619, %bb.h
  %i.ch = add i64 %.0283, -1
  %i.ci = mul i64 %i.ch, %2
  %i.cj = getelementptr inbounds nuw i8, ptr %.0193.ph290, i64 %i.ci ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %qsort_arg_swapn.exit228, %qsort_arg_swapn.exit213
  %.0190 = phi ptr [ %i.g, %qsort_arg_swapn.exit213 ], [ %.1191.lcssa, %qsort_arg_swapn.exit228 ] ; 3 uses
  %.0188 = phi ptr [ %i.g, %qsort_arg_swapn.exit213 ], [ %i.fu, %qsort_arg_swapn.exit228 ] ; 6 uses
  %.0186 = phi ptr [ %i.cj, %qsort_arg_swapn.exit213 ], [ %i.fv, %qsort_arg_swapn.exit228 ] ; 7 uses
  %.0183 = phi ptr [ %i.cj, %qsort_arg_swapn.exit213 ], [ %.us-phi278, %qsort_arg_swapn.exit228 ] ; 3 uses
  %.not204252 = icmp ugt ptr %.0188, %.0186
  br i1 %.not204252, label %.critedge2, label %.lr.ph256

.lr.ph256:                                        ; preds = %bb.i
  br i1 %.not.i209, label %.lr.ph256.split.us, label %.lr.ph256.split

.lr.ph256.split.us:                               ; preds = %.lr.ph256, %.lr.ph256.split.us
  %i.ck = tail call i32 %3(ptr noundef %.0188, ptr noundef %.0193.ph290, ptr noundef %4) #3
  %i.cl = icmp slt i32 %i.ck, 1
  br i1 %i.cl, label %.lr.ph256.split.us, label %.critedge2

.lr.ph256.split:                                  ; preds = %.lr.ph256, %bb.k
  %indvar553 = phi i64 [ %indvar.next554, %bb.k ], [ 0, %.lr.ph256 ] ; 2 uses
  %.1189254 = phi ptr [ %i.do, %bb.k ], [ %.0188, %.lr.ph256 ] ; 9 uses
  %.1191253 = phi ptr [ %.2192, %bb.k ], [ %.0190, %.lr.ph256 ] ; 10 uses
  %i.cm = tail call i32 %3(ptr noundef %.1189254, ptr noundef %.0193.ph290, ptr noundef %4) #3 ; 2 uses
  %i.cn = icmp slt i32 %i.cm, 1
  br i1 %i.cn, label %bb.j, label %.critedge2

bb.j:                                             ; preds = %.lr.ph256.split
  %i.co = icmp eq i32 %i.cm, 0
  br i1 %i.co, label %iter.check573, label %bb.k

iter.check573:                                    ; preds = %bb.j
  br i1 %min.iters.check559, label %.lr.ph.i215.preheader, label %vector.memcheck551

vector.memcheck551:                               ; preds = %iter.check573
  %scevgep552 = getelementptr i8, ptr %.1191253, i64 %2
  %5 = add i64 %indvar553, 1
  %6 = mul i64 %2, %5
  %7 = getelementptr i8, ptr %.0188, i64 %6
  %bound0556 = icmp ult ptr %.1191253, %7
  %bound1557 = icmp ult ptr %.1189254, %scevgep552
  %found.conflict558 = and i1 %bound0556, %bound1557
  br i1 %found.conflict558, label %.lr.ph.i215.preheader, label %vector.main.loop.iter.check560

vector.main.loop.iter.check560:                   ; preds = %vector.memcheck551
  br i1 %min.iters.check561, label %vec.epilog.ph577, label %vector.body564

vector.body564:                                   ; preds = %vector.main.loop.iter.check560, %vector.body564
  %index565 = phi i64 [ %index.next570, %vector.body564 ], [ 0, %vector.main.loop.iter.check560 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.1191253, i64 %index565 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.1189254, i64 %index565 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %wide.load566 = load <16 x i8>, ptr %i.cp, align 1, !alias.scope !54, !noalias !55
  %wide.load567 = load <16 x i8>, ptr %i.cr, align 1, !alias.scope !54, !noalias !55
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %wide.load568 = load <16 x i8>, ptr %i.cq, align 1, !alias.scope !55
  %wide.load569 = load <16 x i8>, ptr %i.cs, align 1, !alias.scope !55
  store <16 x i8> %wide.load568, ptr %i.cp, align 1, !alias.scope !54, !noalias !55
  store <16 x i8> %wide.load569, ptr %i.cr, align 1, !alias.scope !54, !noalias !55
  store <16 x i8> %wide.load566, ptr %i.cq, align 1, !alias.scope !55
  store <16 x i8> %wide.load567, ptr %i.cs, align 1, !alias.scope !55
  %index.next570 = add nuw i64 %index565, 32      ; 2 uses
  %i.ct = icmp eq i64 %index.next570, %n.vec563
  br i1 %i.ct, label %middle.block571, label %vector.body564, !llvm.loop !19

middle.block571:                                  ; preds = %vector.body564
  br i1 %cmp.n572, label %qsort_arg_swapn.exit218.loopexit, label %vec.epilog.iter.check574

vec.epilog.iter.check574:                         ; preds = %middle.block571
  br i1 %min.epilog.iters.check576, label %.lr.ph.i215.preheader, label %vec.epilog.ph577, !prof !51

vec.epilog.ph577:                                 ; preds = %vector.main.loop.iter.check560, %vec.epilog.iter.check574
  %vec.epilog.resume.val578 = phi i64 [ %n.vec563, %vec.epilog.iter.check574 ], [ 0, %vector.main.loop.iter.check560 ]
  br label %vec.epilog.vector.body580

vec.epilog.vector.body580:                        ; preds = %vec.epilog.vector.body580, %vec.epilog.ph577
  %index581 = phi i64 [ %vec.epilog.resume.val578, %vec.epilog.ph577 ], [ %index.next584, %vec.epilog.vector.body580 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.1191253, i64 %index581 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.1189254, i64 %index581 ; 2 uses
  %wide.load582 = load <4 x i8>, ptr %i.cu, align 1, !alias.scope !54, !noalias !55
  %wide.load583 = load <4 x i8>, ptr %i.cv, align 1, !alias.scope !55
  store <4 x i8> %wide.load583, ptr %i.cu, align 1, !alias.scope !54, !noalias !55
  store <4 x i8> %wide.load582, ptr %i.cv, align 1, !alias.scope !55
  %index.next584 = add nuw i64 %index581, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next584, %n.vec579
  br i1 %i.cw, label %vec.epilog.middle.block585, label %vec.epilog.vector.body580, !llvm.loop !20

vec.epilog.middle.block585:                       ; preds = %vec.epilog.vector.body580
  br i1 %cmp.n586, label %qsort_arg_swapn.exit218.loopexit, label %.lr.ph.i215.preheader

.lr.ph.i215.preheader:                            ; preds = %iter.check573, %vector.memcheck551, %vec.epilog.iter.check574, %vec.epilog.middle.block585
  %.06.i216.ph = phi i64 [ 0, %iter.check573 ], [ 0, %vector.memcheck551 ], [ %n.vec563, %vec.epilog.iter.check574 ], [ %n.vec579, %vec.epilog.middle.block585 ] ; 5 uses
  %.neg697 = or disjoint i64 %.06.i216.ph, 1
  br i1 %lcmp.mod688.not, label %.lr.ph.i215.prol.loopexit, label %.lr.ph.i215.prol

.lr.ph.i215.prol:                                 ; preds = %.lr.ph.i215.preheader
  %i.cx = getelementptr inbounds nuw i8, ptr %.1191253, i64 %.06.i216.ph ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.1189254, i64 %.06.i216.ph ; 2 uses
  %i.cz = load i8, ptr %i.cx, align 1
  %i.da = load i8, ptr %i.cy, align 1
  store i8 %i.da, ptr %i.cx, align 1
  store i8 %i.cz, ptr %i.cy, align 1
  %i.db = or disjoint i64 %.06.i216.ph, 1
  br label %.lr.ph.i215.prol.loopexit

.lr.ph.i215.prol.loopexit:                        ; preds = %.lr.ph.i215.prol, %.lr.ph.i215.preheader
  %.06.i216.unr = phi i64 [ %.06.i216.ph, %.lr.ph.i215.preheader ], [ %i.db, %.lr.ph.i215.prol ]
  %i.dc = icmp eq i64 %2, %.neg697
  br i1 %i.dc, label %qsort_arg_swapn.exit218.loopexit, label %.lr.ph.i215

.lr.ph.i215:                                      ; preds = %.lr.ph.i215.prol.loopexit, %.lr.ph.i215
  %.06.i216 = phi i64 [ %i.dm, %.lr.ph.i215 ], [ %.06.i216.unr, %.lr.ph.i215.prol.loopexit ] ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.1191253, i64 %.06.i216 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.1189254, i64 %.06.i216 ; 2 uses
  %i.df = load i8, ptr %i.dd, align 1
  %i.dg = load i8, ptr %i.de, align 1
  store i8 %i.dg, ptr %i.dd, align 1
  store i8 %i.df, ptr %i.de, align 1
  %i.dh = add nuw i64 %.06.i216, 1                ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.1191253, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.1189254, i64 %i.dh ; 2 uses
  %i.dk = load i8, ptr %i.di, align 1
  %i.dl = load i8, ptr %i.dj, align 1
  store i8 %i.dl, ptr %i.di, align 1
  store i8 %i.dk, ptr %i.dj, align 1
  %i.dm = add nuw i64 %.06.i216, 2                ; 2 uses
  %exitcond.not.i217.1 = icmp eq i64 %i.dm, %2
  br i1 %exitcond.not.i217.1, label %qsort_arg_swapn.exit218.loopexit, label %.lr.ph.i215, !llvm.loop !21

qsort_arg_swapn.exit218.loopexit:                 ; preds = %.lr.ph.i215.prol.loopexit, %.lr.ph.i215, %vec.epilog.middle.block585, %middle.block571
  %i.dn = getelementptr inbounds nuw i8, ptr %.1191253, i64 %2
  br label %bb.k

bb.k:                                             ; preds = %qsort_arg_swapn.exit218.loopexit, %bb.j
  %.2192 = phi ptr [ %i.dn, %qsort_arg_swapn.exit218.loopexit ], [ %.1191253, %bb.j ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.1189254, i64 %2 ; 3 uses
  %.not204 = icmp ugt ptr %i.do, %.0186
  %indvar.next554 = add i64 %indvar553, 1
  br i1 %.not204, label %.critedge2, label %.lr.ph256.split, !llvm.loop !22

.critedge2:                                       ; preds = %.lr.ph256.split, %bb.k, %.lr.ph256.split.us, %bb.i
  %.1191.lcssa = phi ptr [ %.0190, %bb.i ], [ %.0190, %.lr.ph256.split.us ], [ %.1191253, %.lr.ph256.split ], [ %.2192, %bb.k ] ; 2 uses
  %.1189.lcssa = phi ptr [ %.0188, %bb.i ], [ %.0188, %.lr.ph256.split.us ], [ %.1189254, %.lr.ph256.split ], [ %i.do, %bb.k ] ; 21 uses
  %.not205264 = icmp ugt ptr %.1189.lcssa, %.0186
  br i1 %.not205264, label %.critedge2._crit_edge, label %.lr.ph268

.lr.ph268:                                        ; preds = %.critedge2
  br i1 %.not.i209, label %.lr.ph268.split.us, label %.lr.ph268.split.preheader

.lr.ph268.split.preheader:                        ; preds = %.lr.ph268
  %8 = getelementptr i8, ptr %.0186, i64 %2
  br label %.lr.ph268.split

.lr.ph268.split.us:                               ; preds = %.lr.ph268, %qsort_arg_swapn.exit223.us
  %.1184267.us = phi ptr [ %spec.select300, %qsort_arg_swapn.exit223.us ], [ %.0183, %.lr.ph268 ] ; 2 uses
  %.1187265.us = phi ptr [ %i.ds, %qsort_arg_swapn.exit223.us ], [ %.0186, %.lr.ph268 ] ; 3 uses
  %i.dp = tail call i32 %3(ptr noundef %.1187265.us, ptr noundef %.0193.ph290, ptr noundef %4) #3 ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, -1
  br i1 %i.dq, label %qsort_arg_swapn.exit223.us, label %.critedge4

qsort_arg_swapn.exit223.us:                       ; preds = %.lr.ph268.split.us
  %i.dr = icmp eq i32 %i.dp, 0
  %spec.select300.idx = select i1 %i.dr, i64 %i.a, i64 0
  %spec.select300 = getelementptr inbounds nuw i8, ptr %.1184267.us, i64 %spec.select300.idx ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.1187265.us, i64 %i.a ; 3 uses
  %.not205.us = icmp ugt ptr %.1189.lcssa, %i.ds
  br i1 %.not205.us, label %.critedge2._crit_edge, label %.lr.ph268.split.us, !llvm.loop !23

.lr.ph268.split:                                  ; preds = %.lr.ph268.split.preheader, %bb.m
  %indvar = phi i64 [ %indvar.next, %bb.m ], [ 0, %.lr.ph268.split.preheader ] ; 2 uses
  %.1184267 = phi ptr [ %.2185, %bb.m ], [ %.0183, %.lr.ph268.split.preheader ] ; 10 uses
  %.1187265 = phi ptr [ %i.ev, %bb.m ], [ %.0186, %.lr.ph268.split.preheader ] ; 9 uses
  %i.dt = tail call i32 %3(ptr noundef %.1187265, ptr noundef %.0193.ph290, ptr noundef %4) #3 ; 2 uses
  %i.du = icmp sgt i32 %i.dt, -1
  br i1 %i.du, label %bb.l, label %.critedge4

bb.l:                                             ; preds = %.lr.ph268.split
  %i.dv = icmp eq i32 %i.dt, 0
  br i1 %i.dv, label %iter.check536, label %bb.m

iter.check536:                                    ; preds = %bb.l
  br i1 %min.iters.check522, label %.lr.ph.i220.preheader, label %vector.memcheck516

vector.memcheck516:                               ; preds = %iter.check536
  %9 = mul i64 %indvar, %i.a
  %10 = getelementptr i8, ptr %8, i64 %9
  %scevgep518 = getelementptr i8, ptr %.1184267, i64 %2
  %bound0519 = icmp ult ptr %.1187265, %scevgep518
  %bound1520 = icmp ult ptr %.1184267, %10
  %found.conflict521 = and i1 %bound0519, %bound1520
  br i1 %found.conflict521, label %.lr.ph.i220.preheader, label %vector.main.loop.iter.check523

vector.main.loop.iter.check523:                   ; preds = %vector.memcheck516
  br i1 %min.iters.check524, label %vec.epilog.ph540, label %vector.body527

vector.body527:                                   ; preds = %vector.main.loop.iter.check523, %vector.body527
  %index528 = phi i64 [ %index.next533, %vector.body527 ], [ 0, %vector.main.loop.iter.check523 ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.1187265, i64 %index528 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.1184267, i64 %index528 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 2 uses
  %wide.load529 = load <16 x i8>, ptr %i.dw, align 1, !alias.scope !56, !noalias !57
  %wide.load530 = load <16 x i8>, ptr %i.dy, align 1, !alias.scope !56, !noalias !57
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  %wide.load531 = load <16 x i8>, ptr %i.dx, align 1, !alias.scope !57
  %wide.load532 = load <16 x i8>, ptr %i.dz, align 1, !alias.scope !57
  store <16 x i8> %wide.load531, ptr %i.dw, align 1, !alias.scope !56, !noalias !57
  store <16 x i8> %wide.load532, ptr %i.dy, align 1, !alias.scope !56, !noalias !57
  store <16 x i8> %wide.load529, ptr %i.dx, align 1, !alias.scope !57
  store <16 x i8> %wide.load530, ptr %i.dz, align 1, !alias.scope !57
  %index.next533 = add nuw i64 %index528, 32      ; 2 uses
  %i.ea = icmp eq i64 %index.next533, %n.vec526
  br i1 %i.ea, label %middle.block534, label %vector.body527, !llvm.loop !27

middle.block534:                                  ; preds = %vector.body527
  br i1 %cmp.n535, label %qsort_arg_swapn.exit223.loopexit, label %vec.epilog.iter.check537

vec.epilog.iter.check537:                         ; preds = %middle.block534
  br i1 %min.epilog.iters.check539, label %.lr.ph.i220.preheader, label %vec.epilog.ph540, !prof !51

vec.epilog.ph540:                                 ; preds = %vector.main.loop.iter.check523, %vec.epilog.iter.check537
  %vec.epilog.resume.val541 = phi i64 [ %n.vec526, %vec.epilog.iter.check537 ], [ 0, %vector.main.loop.iter.check523 ]
  br label %vec.epilog.vector.body543

vec.epilog.vector.body543:                        ; preds = %vec.epilog.vector.body543, %vec.epilog.ph540
  %index544 = phi i64 [ %vec.epilog.resume.val541, %vec.epilog.ph540 ], [ %index.next547, %vec.epilog.vector.body543 ] ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.1187265, i64 %index544 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.1184267, i64 %index544 ; 2 uses
  %wide.load545 = load <4 x i8>, ptr %i.eb, align 1, !alias.scope !56, !noalias !57
  %wide.load546 = load <4 x i8>, ptr %i.ec, align 1, !alias.scope !57
  store <4 x i8> %wide.load546, ptr %i.eb, align 1, !alias.scope !56, !noalias !57
  store <4 x i8> %wide.load545, ptr %i.ec, align 1, !alias.scope !57
  %index.next547 = add nuw i64 %index544, 4       ; 2 uses
  %i.ed = icmp eq i64 %index.next547, %n.vec542
  br i1 %i.ed, label %vec.epilog.middle.block548, label %vec.epilog.vector.body543, !llvm.loop !28

vec.epilog.middle.block548:                       ; preds = %vec.epilog.vector.body543
  br i1 %cmp.n549, label %qsort_arg_swapn.exit223.loopexit, label %.lr.ph.i220.preheader

.lr.ph.i220.preheader:                            ; preds = %iter.check536, %vector.memcheck516, %vec.epilog.iter.check537, %vec.epilog.middle.block548
  %.06.i221.ph = phi i64 [ 0, %iter.check536 ], [ 0, %vector.memcheck516 ], [ %n.vec526, %vec.epilog.iter.check537 ], [ %n.vec542, %vec.epilog.middle.block548 ] ; 5 uses
  %.neg698 = or disjoint i64 %.06.i221.ph, 1
  br i1 %lcmp.mod690.not, label %.lr.ph.i220.prol.loopexit, label %.lr.ph.i220.prol

.lr.ph.i220.prol:                                 ; preds = %.lr.ph.i220.preheader
  %i.ee = getelementptr inbounds nuw i8, ptr %.1187265, i64 %.06.i221.ph ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.1184267, i64 %.06.i221.ph ; 2 uses
  %i.eg = load i8, ptr %i.ee, align 1
  %i.eh = load i8, ptr %i.ef, align 1
  store i8 %i.eh, ptr %i.ee, align 1
  store i8 %i.eg, ptr %i.ef, align 1
  %i.ei = or disjoint i64 %.06.i221.ph, 1
  br label %.lr.ph.i220.prol.loopexit

.lr.ph.i220.prol.loopexit:                        ; preds = %.lr.ph.i220.prol, %.lr.ph.i220.preheader
  %.06.i221.unr = phi i64 [ %.06.i221.ph, %.lr.ph.i220.preheader ], [ %i.ei, %.lr.ph.i220.prol ]
  %i.ej = icmp eq i64 %2, %.neg698
  br i1 %i.ej, label %qsort_arg_swapn.exit223.loopexit, label %.lr.ph.i220

.lr.ph.i220:                                      ; preds = %.lr.ph.i220.prol.loopexit, %.lr.ph.i220
  %.06.i221 = phi i64 [ %i.et, %.lr.ph.i220 ], [ %.06.i221.unr, %.lr.ph.i220.prol.loopexit ] ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.1187265, i64 %.06.i221 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.1184267, i64 %.06.i221 ; 2 uses
  %i.em = load i8, ptr %i.ek, align 1
  %i.en = load i8, ptr %i.el, align 1
  store i8 %i.en, ptr %i.ek, align 1
  store i8 %i.em, ptr %i.el, align 1
  %i.eo = add nuw i64 %.06.i221, 1                ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.1187265, i64 %i.eo ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.1184267, i64 %i.eo ; 2 uses
  %i.er = load i8, ptr %i.ep, align 1
  %i.es = load i8, ptr %i.eq, align 1
  store i8 %i.es, ptr %i.ep, align 1
  store i8 %i.er, ptr %i.eq, align 1
  %i.et = add nuw i64 %.06.i221, 2                ; 2 uses
  %exitcond.not.i222.1 = icmp eq i64 %i.et, %2
  br i1 %exitcond.not.i222.1, label %qsort_arg_swapn.exit223.loopexit, label %.lr.ph.i220, !llvm.loop !29

qsort_arg_swapn.exit223.loopexit:                 ; preds = %.lr.ph.i220.prol.loopexit, %.lr.ph.i220, %vec.epilog.middle.block548, %middle.block534
  %i.eu = getelementptr inbounds i8, ptr %.1184267, i64 %i.a
  br label %bb.m

bb.m:                                             ; preds = %qsort_arg_swapn.exit223.loopexit, %bb.l
  %.2185 = phi ptr [ %i.eu, %qsort_arg_swapn.exit223.loopexit ], [ %.1184267, %bb.l ] ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %.1187265, i64 %i.a ; 3 uses
  %.not205 = icmp ugt ptr %.1189.lcssa, %i.ev
  %indvar.next = add i64 %indvar, 1
  br i1 %.not205, label %.critedge2._crit_edge, label %.lr.ph268.split, !llvm.loop !23

.critedge4:                                       ; preds = %.lr.ph268.split, %.lr.ph268.split.us
  %.us-phi277 = phi ptr [ %.1187265.us, %.lr.ph268.split.us ], [ %.1187265, %.lr.ph268.split ] ; 8 uses
  %.us-phi278 = phi ptr [ %.1184267.us, %.lr.ph268.split.us ], [ %.1184267, %.lr.ph268.split ]
  br i1 %.not.i209, label %qsort_arg_swapn.exit228, label %iter.check501

iter.check501:                                    ; preds = %.critedge4
  br i1 %min.iters.check487, label %.lr.ph.i225.preheader, label %vector.memcheck481

vector.memcheck481:                               ; preds = %iter.check501
  %scevgep482 = getelementptr i8, ptr %.1189.lcssa, i64 %2
  %scevgep483 = getelementptr i8, ptr %.us-phi277, i64 %2
  %bound0484 = icmp ult ptr %.1189.lcssa, %scevgep483
  %bound1485 = icmp ult ptr %.us-phi277, %scevgep482
  %found.conflict486 = and i1 %bound0484, %bound1485
  br i1 %found.conflict486, label %.lr.ph.i225.preheader, label %vector.main.loop.iter.check488

vector.main.loop.iter.check488:                   ; preds = %vector.memcheck481
  br i1 %min.iters.check489, label %vec.epilog.ph505, label %vector.body492

vector.body492:                                   ; preds = %vector.main.loop.iter.check488, %vector.body492
  %index493 = phi i64 [ %index.next498, %vector.body492 ], [ 0, %vector.main.loop.iter.check488 ] ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.1189.lcssa, i64 %index493 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.us-phi277, i64 %index493 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  %wide.load494 = load <16 x i8>, ptr %i.ew, align 1, !alias.scope !58, !noalias !59
  %wide.load495 = load <16 x i8>, ptr %i.ey, align 1, !alias.scope !58, !noalias !59
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 2 uses
  %wide.load496 = load <16 x i8>, ptr %i.ex, align 1, !alias.scope !59
  %wide.load497 = load <16 x i8>, ptr %i.ez, align 1, !alias.scope !59
  store <16 x i8> %wide.load496, ptr %i.ew, align 1, !alias.scope !58, !noalias !59
  store <16 x i8> %wide.load497, ptr %i.ey, align 1, !alias.scope !58, !noalias !59
  store <16 x i8> %wide.load494, ptr %i.ex, align 1, !alias.scope !59
  store <16 x i8> %wide.load495, ptr %i.ez, align 1, !alias.scope !59
  %index.next498 = add nuw i64 %index493, 32      ; 2 uses
  %i.fa = icmp eq i64 %index.next498, %n.vec491
  br i1 %i.fa, label %middle.block499, label %vector.body492, !llvm.loop !33

middle.block499:                                  ; preds = %vector.body492
  br i1 %cmp.n500, label %qsort_arg_swapn.exit228, label %vec.epilog.iter.check502

vec.epilog.iter.check502:                         ; preds = %middle.block499
  br i1 %min.epilog.iters.check504, label %.lr.ph.i225.preheader, label %vec.epilog.ph505, !prof !51

vec.epilog.ph505:                                 ; preds = %vector.main.loop.iter.check488, %vec.epilog.iter.check502
  %vec.epilog.resume.val506 = phi i64 [ %n.vec491, %vec.epilog.iter.check502 ], [ 0, %vector.main.loop.iter.check488 ]
  br label %vec.epilog.vector.body508

vec.epilog.vector.body508:                        ; preds = %vec.epilog.vector.body508, %vec.epilog.ph505
  %index509 = phi i64 [ %vec.epilog.resume.val506, %vec.epilog.ph505 ], [ %index.next512, %vec.epilog.vector.body508 ] ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.1189.lcssa, i64 %index509 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.us-phi277, i64 %index509 ; 2 uses
  %wide.load510 = load <4 x i8>, ptr %i.fb, align 1, !alias.scope !58, !noalias !59
  %wide.load511 = load <4 x i8>, ptr %i.fc, align 1, !alias.scope !59
  store <4 x i8> %wide.load511, ptr %i.fb, align 1, !alias.scope !58, !noalias !59
  store <4 x i8> %wide.load510, ptr %i.fc, align 1, !alias.scope !59
  %index.next512 = add nuw i64 %index509, 4       ; 2 uses
  %i.fd = icmp eq i64 %index.next512, %n.vec507
  br i1 %i.fd, label %vec.epilog.middle.block513, label %vec.epilog.vector.body508, !llvm.loop !34

vec.epilog.middle.block513:                       ; preds = %vec.epilog.vector.body508
  br i1 %cmp.n514, label %qsort_arg_swapn.exit228, label %.lr.ph.i225.preheader

.lr.ph.i225.preheader:                            ; preds = %iter.check501, %vector.memcheck481, %vec.epilog.iter.check502, %vec.epilog.middle.block513
  %.06.i226.ph = phi i64 [ 0, %iter.check501 ], [ 0, %vector.memcheck481 ], [ %n.vec491, %vec.epilog.iter.check502 ], [ %n.vec507, %vec.epilog.middle.block513 ] ; 5 uses
  %.neg699 = or disjoint i64 %.06.i226.ph, 1
  br i1 %lcmp.mod692.not, label %.lr.ph.i225.prol.loopexit, label %.lr.ph.i225.prol

.lr.ph.i225.prol:                                 ; preds = %.lr.ph.i225.preheader
  %i.fe = getelementptr inbounds nuw i8, ptr %.1189.lcssa, i64 %.06.i226.ph ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.us-phi277, i64 %.06.i226.ph ; 2 uses
  %i.fg = load i8, ptr %i.fe, align 1
  %i.fh = load i8, ptr %i.ff, align 1
  store i8 %i.fh, ptr %i.fe, align 1
  store i8 %i.fg, ptr %i.ff, align 1
  %i.fi = or disjoint i64 %.06.i226.ph, 1
  br label %.lr.ph.i225.prol.loopexit

.lr.ph.i225.prol.loopexit:                        ; preds = %.lr.ph.i225.prol, %.lr.ph.i225.preheader
  %.06.i226.unr = phi i64 [ %.06.i226.ph, %.lr.ph.i225.preheader ], [ %i.fi, %.lr.ph.i225.prol ]
  %i.fj = icmp eq i64 %2, %.neg699
  br i1 %i.fj, label %qsort_arg_swapn.exit228, label %.lr.ph.i225

.lr.ph.i225:                                      ; preds = %.lr.ph.i225.prol.loopexit, %.lr.ph.i225
  %.06.i226 = phi i64 [ %i.ft, %.lr.ph.i225 ], [ %.06.i226.unr, %.lr.ph.i225.prol.loopexit ] ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.1189.lcssa, i64 %.06.i226 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.us-phi277, i64 %.06.i226 ; 2 uses
  %i.fm = load i8, ptr %i.fk, align 1
  %i.fn = load i8, ptr %i.fl, align 1
  store i8 %i.fn, ptr %i.fk, align 1
  store i8 %i.fm, ptr %i.fl, align 1
  %i.fo = add nuw i64 %.06.i226, 1                ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.1189.lcssa, i64 %i.fo ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.us-phi277, i64 %i.fo ; 2 uses
  %i.fr = load i8, ptr %i.fp, align 1
  %i.fs = load i8, ptr %i.fq, align 1
  store i8 %i.fs, ptr %i.fp, align 1
  store i8 %i.fr, ptr %i.fq, align 1
  %i.ft = add nuw i64 %.06.i226, 2                ; 2 uses
  %exitcond.not.i227.1 = icmp eq i64 %i.ft, %2
  br i1 %exitcond.not.i227.1, label %qsort_arg_swapn.exit228, label %.lr.ph.i225, !llvm.loop !35

end_hunk_0
