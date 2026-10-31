Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/qsort_interruptible?download=true
inline.NumInlined: 8
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@InterruptPending = external global i32, align 4

; Function Attrs: nounwind uwtable
define dso_local void @qsort_interruptible(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = sub i64 0, %2                            ; 5 uses
  %.not.i214 = icmp eq i64 %2, 0                  ; 4 uses
  %min.iters.check532 = icmp ult i64 %2, 4
  %min.iters.check534 = icmp ult i64 %2, 32
  %i.b = and i64 %2, 28
  %n.vec536 = and i64 %2, -32                     ; 4 uses
  %cmp.n545 = icmp eq i64 %2, %n.vec536
  %min.epilog.iters.check549 = icmp eq i64 %i.b, 0
  %n.vec552 = and i64 %2, -4                      ; 3 uses
  %cmp.n559 = icmp eq i64 %2, %n.vec552
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check498 = icmp ult i64 %2, 4
  %min.iters.check500 = icmp ult i64 %2, 32
  %i.c = and i64 %2, 28
  %n.vec502 = and i64 %2, -32                     ; 4 uses
  %cmp.n511 = icmp eq i64 %2, %n.vec502
  %min.epilog.iters.check515 = icmp eq i64 %i.c, 0
  %n.vec518 = and i64 %2, -4                      ; 3 uses
  %cmp.n525 = icmp eq i64 %2, %n.vec518
  %xtraiter615 = and i64 %2, 1
  %lcmp.mod616.not = icmp eq i64 %xtraiter615, 0
  %min.iters.check461 = icmp ult i64 %2, 4
  %min.iters.check463 = icmp ult i64 %2, 32
  %i.d = and i64 %2, 28
  %n.vec465 = and i64 %2, -32                     ; 4 uses
  %cmp.n474 = icmp eq i64 %2, %n.vec465
  %min.epilog.iters.check478 = icmp eq i64 %i.d, 0
  %n.vec481 = and i64 %2, -4                      ; 3 uses
  %cmp.n488 = icmp eq i64 %2, %n.vec481
  %xtraiter617 = and i64 %2, 1
  %lcmp.mod618.not = icmp eq i64 %xtraiter617, 0
  %min.iters.check426 = icmp ult i64 %2, 4
  %min.iters.check428 = icmp ult i64 %2, 32
  %i.e = and i64 %2, 28
  %n.vec430 = and i64 %2, -32                     ; 4 uses
  %cmp.n439 = icmp eq i64 %2, %n.vec430
  %min.epilog.iters.check443 = icmp eq i64 %i.e, 0
  %n.vec446 = and i64 %2, -4                      ; 3 uses
  %cmp.n453 = icmp eq i64 %2, %n.vec446
  %xtraiter619 = and i64 %2, 1
  %lcmp.mod620.not = icmp eq i64 %xtraiter619, 0
  br label %.outer

.outer:                                           ; preds = %bb.z, %bb.a
  %.0193.ph = phi ptr [ %i.ij, %bb.z ], [ %0, %bb.a ] ; 29 uses
  %.0.ph = phi i64 [ %i.ik, %bb.z ], [ %1, %bb.a ]
  %i.f = getelementptr i8, ptr %.0193.ph, i64 %2  ; 5 uses
  %i.g = ptrtoint ptr %.0193.ph to i64
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.aa
  %.0 = phi i64 [ %i.io, %bb.aa ], [ %.0.ph, %.outer ] ; 10 uses
  %i.h = load volatile i32, ptr @InterruptPending, align 4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.c, !prof !48

bb.c:                                             ; preds = %bb.b
  tail call void @ProcessInterrupts() #4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = icmp ult i64 %.0, 7
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = icmp samesign ult i64 %.0, 2
  br i1 %i.j, label %.critedge213, label %.preheader245

.preheader245:                                    ; preds = %bb.e
  %i.k = mul i64 %.0, %2                          ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0193.ph, i64 %i.k
  %.not351 = icmp samesign ult i64 %2, %i.k
  br i1 %.not351, label %.preheader.preheader, label %.critedge213

.preheader.preheader:                             ; preds = %.preheader245
  %min.iters.check561 = icmp ult i64 %2, 4
  %min.iters.check563 = icmp ult i64 %2, 32
  %i.m = and i64 %2, 28
  %n.vec565 = and i64 %2, -32                     ; 4 uses
  %cmp.n574 = icmp eq i64 %2, %n.vec565
  %min.epilog.iters.check578 = icmp eq i64 %i.m, 0
  %n.vec581 = and i64 %2, -4                      ; 3 uses
  %cmp.n588 = icmp eq i64 %2, %n.vec581
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.critedge
  %.0180283 = phi ptr [ %.0180, %.critedge ], [ %i.f, %.preheader.preheader ] ; 3 uses
  %i.n = icmp ugt ptr %.0180283, %.0193.ph
  br i1 %i.n, label %.lr.ph280, label %.critedge

.lr.ph280:                                        ; preds = %.preheader, %qsort_interruptible_swapn.exit.loopexit
  %.0181279 = phi ptr [ %i.o, %qsort_interruptible_swapn.exit.loopexit ], [ %.0180283, %.preheader ] ; 5 uses
  %i.o = getelementptr inbounds i8, ptr %.0181279, i64 %i.a ; 6 uses
  %i.p = tail call i32 %3(ptr noundef nonnull %i.o, ptr noundef nonnull %.0181279, ptr noundef %4) #4
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %iter.check575, label %.critedge

iter.check575:                                    ; preds = %.lr.ph280
  br i1 %min.iters.check561, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check562

vector.main.loop.iter.check562:                   ; preds = %iter.check575
  br i1 %min.iters.check563, label %vec.epilog.ph579, label %vector.body566

vector.body566:                                   ; preds = %vector.main.loop.iter.check562, %vector.body566
  %index567 = phi i64 [ %index.next572, %vector.body566 ], [ 0, %vector.main.loop.iter.check562 ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0181279, i64 %index567 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %index567 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %wide.load568 = load <16 x i8>, ptr %i.r, align 1
  %wide.load569 = load <16 x i8>, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %wide.load570 = load <16 x i8>, ptr %i.s, align 1
  %wide.load571 = load <16 x i8>, ptr %i.u, align 1
  store <16 x i8> %wide.load570, ptr %i.r, align 1
  store <16 x i8> %wide.load571, ptr %i.t, align 1
  store <16 x i8> %wide.load568, ptr %i.s, align 1
  store <16 x i8> %wide.load569, ptr %i.u, align 1
  %index.next572 = add nuw i64 %index567, 32      ; 2 uses
  %i.v = icmp eq i64 %index.next572, %n.vec565
  br i1 %i.v, label %middle.block573, label %vector.body566, !llvm.loop !4

middle.block573:                                  ; preds = %vector.body566
  br i1 %cmp.n574, label %qsort_interruptible_swapn.exit.loopexit, label %vec.epilog.iter.check576

vec.epilog.iter.check576:                         ; preds = %middle.block573
  br i1 %min.epilog.iters.check578, label %.lr.ph.i.preheader, label %vec.epilog.ph579, !prof !52

vec.epilog.ph579:                                 ; preds = %vector.main.loop.iter.check562, %vec.epilog.iter.check576
  %vec.epilog.resume.val580 = phi i64 [ %n.vec565, %vec.epilog.iter.check576 ], [ 0, %vector.main.loop.iter.check562 ]
  br label %vec.epilog.vector.body582

vec.epilog.vector.body582:                        ; preds = %vec.epilog.vector.body582, %vec.epilog.ph579
  %index583 = phi i64 [ %vec.epilog.resume.val580, %vec.epilog.ph579 ], [ %index.next586, %vec.epilog.vector.body582 ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0181279, i64 %index583 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %index583 ; 2 uses
  %wide.load584 = load <4 x i8>, ptr %i.w, align 1
  %wide.load585 = load <4 x i8>, ptr %i.x, align 1
  store <4 x i8> %wide.load585, ptr %i.w, align 1
  store <4 x i8> %wide.load584, ptr %i.x, align 1
  %index.next586 = add nuw i64 %index583, 4       ; 2 uses
  %i.y = icmp eq i64 %index.next586, %n.vec581
  br i1 %i.y, label %vec.epilog.middle.block587, label %vec.epilog.vector.body582, !llvm.loop !5

vec.epilog.middle.block587:                       ; preds = %vec.epilog.vector.body582
  br i1 %cmp.n588, label %qsort_interruptible_swapn.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check575, %vec.epilog.iter.check576, %vec.epilog.middle.block587
  %.06.i.ph = phi i64 [ 0, %iter.check575 ], [ %n.vec565, %vec.epilog.iter.check576 ], [ %n.vec581, %vec.epilog.middle.block587 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.06.i = phi i64 [ %i.ad, %.lr.ph.i ], [ %.06.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0181279, i64 %.06.i ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 %.06.i ; 2 uses
  %i.ab = load i8, ptr %i.z, align 1
  %i.ac = load i8, ptr %i.aa, align 1
  store i8 %i.ac, ptr %i.z, align 1
  store i8 %i.ab, ptr %i.aa, align 1
  %i.ad = add nuw i64 %.06.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %2
  br i1 %exitcond.not.i, label %qsort_interruptible_swapn.exit.loopexit, label %.lr.ph.i, !llvm.loop !6

qsort_interruptible_swapn.exit.loopexit:          ; preds = %.lr.ph.i, %vec.epilog.middle.block587, %middle.block573
  %i.ae = icmp ugt ptr %i.o, %.0193.ph
  br i1 %i.ae, label %.lr.ph280, label %.critedge, !llvm.loop !7

.critedge:                                        ; preds = %qsort_interruptible_swapn.exit.loopexit, %.lr.ph280, %.preheader
  %.0180 = getelementptr inbounds nuw i8, ptr %.0180283, i64 %2 ; 2 uses
  %i.af = icmp ult ptr %.0180, %i.l
  br i1 %i.af, label %.preheader, label %.critedge213, !llvm.loop !8

bb.f:                                             ; preds = %bb.d
  %i.ag = mul i64 %.0, %2                         ; 2 uses
  %i.ah = getelementptr i8, ptr %.0193.ph, i64 %i.ag ; 6 uses
  %i.ai = icmp samesign ult i64 %2, %i.ag
  br i1 %i.ai, label %.lr.ph, label %.critedge213

.lr.ph:                                           ; preds = %bb.f, %bb.i
  %.1255 = phi ptr [ %i.an, %bb.i ], [ %i.f, %bb.f ] ; 3 uses
  %i.aj = load volatile i32, ptr @InterruptPending, align 4
  %.not204 = icmp eq i32 %i.aj, 0
  br i1 %.not204, label %bb.h, label %bb.g, !prof !48

bb.g:                                             ; preds = %.lr.ph
  tail call void @ProcessInterrupts() #4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %i.ak = getelementptr inbounds i8, ptr %.1255, i64 %i.a
  %i.al = tail call i32 %3(ptr noundef %i.ak, ptr noundef %.1255, ptr noundef %4) #4
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %.1255, i64 %2 ; 2 uses
  %i.ao = icmp ult ptr %i.an, %i.ah
  br i1 %i.ao, label %.lr.ph, label %.critedge213, !llvm.loop !9

bb.j:                                             ; preds = %bb.h
  %i.ap = lshr i64 %.0, 1
  %i.aq = mul i64 %i.ap, %2
  %i.ar = getelementptr inbounds nuw i8, ptr %.0193.ph, i64 %i.aq ; 5 uses
  %.not206 = icmp eq i64 %.0, 7
  br i1 %.not206, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = add i64 %.0, -1
  %i.at = mul i64 %i.as, %2
  %i.au = getelementptr inbounds nuw i8, ptr %.0193.ph, i64 %i.at ; 4 uses
  %i.av = icmp ugt i64 %.0, 40
  br i1 %i.av, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aw = lshr i64 %.0, 3
  %i.ax = mul i64 %i.aw, %2                       ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0193.ph, i64 %i.ax
  %i.az = shl i64 %i.ax, 1                        ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0193.ph, i64 %i.az
  %i.bb = tail call fastcc ptr @qsort_interruptible_med3(ptr noundef %.0193.ph, ptr noundef %i.ay, ptr noundef %i.ba, ptr noundef %3, ptr noundef %4)
  %i.bc = sub i64 0, %i.ax                        ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.ar, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ax
  %i.bf = tail call fastcc ptr @qsort_interruptible_med3(ptr noundef %i.bd, ptr noundef %i.ar, ptr noundef %i.be, ptr noundef %3, ptr noundef %4)
  %i.bg = sub i64 0, %i.az
  %i.bh = getelementptr inbounds i8, ptr %i.au, i64 %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.au, i64 %i.bc
  %i.bj = tail call fastcc ptr @qsort_interruptible_med3(ptr noundef %i.bh, ptr noundef %i.bi, ptr noundef %i.au, ptr noundef %3, ptr noundef %4)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1182 = phi ptr [ %i.bb, %bb.l ], [ %.0193.ph, %bb.k ]
  %.2 = phi ptr [ %i.bf, %bb.l ], [ %i.ar, %bb.k ]
  %.0179 = phi ptr [ %i.bj, %bb.l ], [ %i.au, %bb.k ]
  %i.bk = tail call fastcc ptr @qsort_interruptible_med3(ptr noundef %.1182, ptr noundef %.2, ptr noundef %.0179, ptr noundef %3, ptr noundef %4)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.3 = phi ptr [ %i.bk, %bb.m ], [ %i.ar, %bb.j ] ; 7 uses
  br i1 %.not.i214, label %qsort_interruptible_swapn.exit218, label %iter.check546

iter.check546:                                    ; preds = %bb.n
  br i1 %min.iters.check532, label %.lr.ph.i215.preheader, label %vector.memcheck527

vector.memcheck527:                               ; preds = %iter.check546
  %scevgep528 = getelementptr i8, ptr %.3, i64 %2
  %bound0529 = icmp ult ptr %.0193.ph, %scevgep528
  %bound1530 = icmp ult ptr %.3, %i.f
  %found.conflict531 = and i1 %bound0529, %bound1530
  br i1 %found.conflict531, label %.lr.ph.i215.preheader, label %vector.main.loop.iter.check533

vector.main.loop.iter.check533:                   ; preds = %vector.memcheck527
  br i1 %min.iters.check534, label %vec.epilog.ph550, label %vector.body537

vector.body537:                                   ; preds = %vector.main.loop.iter.check533, %vector.body537
  %index538 = phi i64 [ %index.next543, %vector.body537 ], [ 0, %vector.main.loop.iter.check533 ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0193.ph, i64 %index538 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.3, i64 %index538 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %wide.load539 = load <16 x i8>, ptr %i.bl, align 1, !alias.scope !53, !noalias !54
  %wide.load540 = load <16 x i8>, ptr %i.bn, align 1, !alias.scope !53, !noalias !54
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %wide.load541 = load <16 x i8>, ptr %i.bm, align 1, !alias.scope !54
  %wide.load542 = load <16 x i8>, ptr %i.bo, align 1, !alias.scope !54
  store <16 x i8> %wide.load541, ptr %i.bl, align 1, !alias.scope !53, !noalias !54
  store <16 x i8> %wide.load542, ptr %i.bn, align 1, !alias.scope !53, !noalias !54
  store <16 x i8> %wide.load539, ptr %i.bm, align 1, !alias.scope !54
  store <16 x i8> %wide.load540, ptr %i.bo, align 1, !alias.scope !54
  %index.next543 = add nuw i64 %index538, 32      ; 2 uses
  %i.bp = icmp eq i64 %index.next543, %n.vec536
  br i1 %i.bp, label %middle.block544, label %vector.body537, !llvm.loop !13

middle.block544:                                  ; preds = %vector.body537
  br i1 %cmp.n545, label %qsort_interruptible_swapn.exit218, label %vec.epilog.iter.check547

vec.epilog.iter.check547:                         ; preds = %middle.block544
  br i1 %min.epilog.iters.check549, label %.lr.ph.i215.preheader, label %vec.epilog.ph550, !prof !52

vec.epilog.ph550:                                 ; preds = %vector.main.loop.iter.check533, %vec.epilog.iter.check547
  %vec.epilog.resume.val551 = phi i64 [ %n.vec536, %vec.epilog.iter.check547 ], [ 0, %vector.main.loop.iter.check533 ]
  br label %vec.epilog.vector.body553

vec.epilog.vector.body553:                        ; preds = %vec.epilog.vector.body553, %vec.epilog.ph550
  %index554 = phi i64 [ %vec.epilog.resume.val551, %vec.epilog.ph550 ], [ %index.next557, %vec.epilog.vector.body553 ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0193.ph, i64 %index554 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.3, i64 %index554 ; 2 uses
  %wide.load555 = load <4 x i8>, ptr %i.bq, align 1, !alias.scope !53, !noalias !54
  %wide.load556 = load <4 x i8>, ptr %i.br, align 1, !alias.scope !54
  store <4 x i8> %wide.load556, ptr %i.bq, align 1, !alias.scope !53, !noalias !54
  store <4 x i8> %wide.load555, ptr %i.br, align 1, !alias.scope !54
  %index.next557 = add nuw i64 %index554, 4       ; 2 uses
  %i.bs = icmp eq i64 %index.next557, %n.vec552
  br i1 %i.bs, label %vec.epilog.middle.block558, label %vec.epilog.vector.body553, !llvm.loop !14

vec.epilog.middle.block558:                       ; preds = %vec.epilog.vector.body553
  br i1 %cmp.n559, label %qsort_interruptible_swapn.exit218, label %.lr.ph.i215.preheader

.lr.ph.i215.preheader:                            ; preds = %iter.check546, %vector.memcheck527, %vec.epilog.iter.check547, %vec.epilog.middle.block558
  %.06.i216.ph = phi i64 [ 0, %iter.check546 ], [ 0, %vector.memcheck527 ], [ %n.vec536, %vec.epilog.iter.check547 ], [ %n.vec552, %vec.epilog.middle.block558 ] ; 5 uses
  %.neg = or disjoint i64 %.06.i216.ph, 1
  br i1 %lcmp.mod.not, label %.lr.ph.i215.prol.loopexit, label %.lr.ph.i215.prol

.lr.ph.i215.prol:                                 ; preds = %.lr.ph.i215.preheader
  %i.bt = getelementptr inbounds nuw i8, ptr %.0193.ph, i64 %.06.i216.ph ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.3, i64 %.06.i216.ph ; 2 uses
  %i.bv = load i8, ptr %i.bt, align 1
  %i.bw = load i8, ptr %i.bu, align 1
  store i8 %i.bw, ptr %i.bt, align 1
  store i8 %i.bv, ptr %i.bu, align 1
  %i.bx = or disjoint i64 %.06.i216.ph, 1
  br label %.lr.ph.i215.prol.loopexit

.lr.ph.i215.prol.loopexit:                        ; preds = %.lr.ph.i215.prol, %.lr.ph.i215.preheader
  %.06.i216.unr = phi i64 [ %.06.i216.ph, %.lr.ph.i215.preheader ], [ %i.bx, %.lr.ph.i215.prol ]
  %i.by = icmp eq i64 %2, %.neg
  br i1 %i.by, label %qsort_interruptible_swapn.exit218, label %.lr.ph.i215

.lr.ph.i215:                                      ; preds = %.lr.ph.i215.prol.loopexit, %.lr.ph.i215
  %.06.i216 = phi i64 [ %i.ci, %.lr.ph.i215 ], [ %.06.i216.unr, %.lr.ph.i215.prol.loopexit ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0193.ph, i64 %.06.i216 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.3, i64 %.06.i216 ; 2 uses
  %i.cb = load i8, ptr %i.bz, align 1
  %i.cc = load i8, ptr %i.ca, align 1
  store i8 %i.cc, ptr %i.bz, align 1
  store i8 %i.cb, ptr %i.ca, align 1
  %i.cd = add nuw i64 %.06.i216, 1                ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0193.ph, i64 %i.cd ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.3, i64 %i.cd ; 2 uses
  %i.cg = load i8, ptr %i.ce, align 1
  %i.ch = load i8, ptr %i.cf, align 1
  store i8 %i.ch, ptr %i.ce, align 1
  store i8 %i.cg, ptr %i.cf, align 1
  %i.ci = add nuw i64 %.06.i216, 2                ; 2 uses
  %exitcond.not.i217.1 = icmp eq i64 %i.ci, %2
  br i1 %exitcond.not.i217.1, label %qsort_interruptible_swapn.exit218, label %.lr.ph.i215, !llvm.loop !15

qsort_interruptible_swapn.exit218:                ; preds = %.lr.ph.i215.prol.loopexit, %.lr.ph.i215, %middle.block544, %vec.epilog.middle.block558, %bb.n
  %i.cj = add i64 %.0, -1
  %i.ck = mul i64 %i.cj, %2
  %i.cl = getelementptr inbounds nuw i8, ptr %.0193.ph, i64 %i.ck ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %qsort_interruptible_swapn.exit233, %qsort_interruptible_swapn.exit218
  %.0190 = phi ptr [ %i.f, %qsort_interruptible_swapn.exit218 ], [ %.1191.lcssa, %qsort_interruptible_swapn.exit233 ] ; 2 uses
  %.0188 = phi ptr [ %i.f, %qsort_interruptible_swapn.exit218 ], [ %i.fs, %qsort_interruptible_swapn.exit233 ] ; 4 uses
  %.0186 = phi ptr [ %i.cl, %qsort_interruptible_swapn.exit218 ], [ %i.ft, %qsort_interruptible_swapn.exit233 ] ; 7 uses
  %.0183 = phi ptr [ %i.cl, %qsort_interruptible_swapn.exit218 ], [ %.1184269, %qsort_interruptible_swapn.exit233 ] ; 2 uses
  %.not207257 = icmp ugt ptr %.0188, %.0186
  br i1 %.not207257, label %.critedge2, label %.lr.ph261

.lr.ph261:                                        ; preds = %bb.o, %bb.t
  %indvar492 = phi i64 [ %indvar.next493, %bb.t ], [ 0, %bb.o ] ; 2 uses
  %.1189259 = phi ptr [ %i.do, %bb.t ], [ %.0188, %bb.o ] ; 9 uses
  %.1191258 = phi ptr [ %.2192, %bb.t ], [ %.0190, %bb.o ] ; 10 uses
  %5 = add i64 %indvar492, 1
  %6 = mul i64 %2, %5
  %scevgep494 = getelementptr i8, ptr %.0188, i64 %6
  %i.cm = tail call i32 %3(ptr noundef %.1189259, ptr noundef %.0193.ph, ptr noundef %4) #4 ; 2 uses
  %i.cn = icmp slt i32 %i.cm, 1
  br i1 %i.cn, label %bb.p, label %.critedge2

bb.p:                                             ; preds = %.lr.ph261
  %i.co = icmp eq i32 %i.cm, 0
  br i1 %i.co, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  br i1 %.not.i214, label %qsort_interruptible_swapn.exit223, label %iter.check512

iter.check512:                                    ; preds = %bb.q
  br i1 %min.iters.check498, label %.lr.ph.i220.preheader, label %vector.memcheck490

vector.memcheck490:                               ; preds = %iter.check512
  %scevgep491 = getelementptr i8, ptr %.1191258, i64 %2
  %bound0495 = icmp ult ptr %.1191258, %scevgep494
  %bound1496 = icmp ult ptr %.1189259, %scevgep491
  %found.conflict497 = and i1 %bound0495, %bound1496
  br i1 %found.conflict497, label %.lr.ph.i220.preheader, label %vector.main.loop.iter.check499

vector.main.loop.iter.check499:                   ; preds = %vector.memcheck490
  br i1 %min.iters.check500, label %vec.epilog.ph516, label %vector.body503

vector.body503:                                   ; preds = %vector.main.loop.iter.check499, %vector.body503
  %index504 = phi i64 [ %index.next509, %vector.body503 ], [ 0, %vector.main.loop.iter.check499 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.1191258, i64 %index504 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.1189259, i64 %index504 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %wide.load505 = load <16 x i8>, ptr %i.cp, align 1, !alias.scope !55, !noalias !56
  %wide.load506 = load <16 x i8>, ptr %i.cr, align 1, !alias.scope !55, !noalias !56
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %wide.load507 = load <16 x i8>, ptr %i.cq, align 1, !alias.scope !56
  %wide.load508 = load <16 x i8>, ptr %i.cs, align 1, !alias.scope !56
  store <16 x i8> %wide.load507, ptr %i.cp, align 1, !alias.scope !55, !noalias !56
  store <16 x i8> %wide.load508, ptr %i.cr, align 1, !alias.scope !55, !noalias !56
  store <16 x i8> %wide.load505, ptr %i.cq, align 1, !alias.scope !56
  store <16 x i8> %wide.load506, ptr %i.cs, align 1, !alias.scope !56
  %index.next509 = add nuw i64 %index504, 32      ; 2 uses
  %i.ct = icmp eq i64 %index.next509, %n.vec502
  br i1 %i.ct, label %middle.block510, label %vector.body503, !llvm.loop !19

middle.block510:                                  ; preds = %vector.body503
  br i1 %cmp.n511, label %qsort_interruptible_swapn.exit223, label %vec.epilog.iter.check513

vec.epilog.iter.check513:                         ; preds = %middle.block510
  br i1 %min.epilog.iters.check515, label %.lr.ph.i220.preheader, label %vec.epilog.ph516, !prof !52

vec.epilog.ph516:                                 ; preds = %vector.main.loop.iter.check499, %vec.epilog.iter.check513
  %vec.epilog.resume.val517 = phi i64 [ %n.vec502, %vec.epilog.iter.check513 ], [ 0, %vector.main.loop.iter.check499 ]
  br label %vec.epilog.vector.body519

vec.epilog.vector.body519:                        ; preds = %vec.epilog.vector.body519, %vec.epilog.ph516
  %index520 = phi i64 [ %vec.epilog.resume.val517, %vec.epilog.ph516 ], [ %index.next523, %vec.epilog.vector.body519 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.1191258, i64 %index520 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.1189259, i64 %index520 ; 2 uses
  %wide.load521 = load <4 x i8>, ptr %i.cu, align 1, !alias.scope !55, !noalias !56
  %wide.load522 = load <4 x i8>, ptr %i.cv, align 1, !alias.scope !56
  store <4 x i8> %wide.load522, ptr %i.cu, align 1, !alias.scope !55, !noalias !56
  store <4 x i8> %wide.load521, ptr %i.cv, align 1, !alias.scope !56
  %index.next523 = add nuw i64 %index520, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next523, %n.vec518
  br i1 %i.cw, label %vec.epilog.middle.block524, label %vec.epilog.vector.body519, !llvm.loop !20

vec.epilog.middle.block524:                       ; preds = %vec.epilog.vector.body519
  br i1 %cmp.n525, label %qsort_interruptible_swapn.exit223, label %.lr.ph.i220.preheader

.lr.ph.i220.preheader:                            ; preds = %iter.check512, %vector.memcheck490, %vec.epilog.iter.check513, %vec.epilog.middle.block524
  %.06.i221.ph = phi i64 [ 0, %iter.check512 ], [ 0, %vector.memcheck490 ], [ %n.vec502, %vec.epilog.iter.check513 ], [ %n.vec518, %vec.epilog.middle.block524 ] ; 5 uses
  %.neg625 = or disjoint i64 %.06.i221.ph, 1
  br i1 %lcmp.mod616.not, label %.lr.ph.i220.prol.loopexit, label %.lr.ph.i220.prol

.lr.ph.i220.prol:                                 ; preds = %.lr.ph.i220.preheader
  %i.cx = getelementptr inbounds nuw i8, ptr %.1191258, i64 %.06.i221.ph ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.1189259, i64 %.06.i221.ph ; 2 uses
  %i.cz = load i8, ptr %i.cx, align 1
  %i.da = load i8, ptr %i.cy, align 1
  store i8 %i.da, ptr %i.cx, align 1
  store i8 %i.cz, ptr %i.cy, align 1
  %i.db = or disjoint i64 %.06.i221.ph, 1
  br label %.lr.ph.i220.prol.loopexit

.lr.ph.i220.prol.loopexit:                        ; preds = %.lr.ph.i220.prol, %.lr.ph.i220.preheader
  %.06.i221.unr = phi i64 [ %.06.i221.ph, %.lr.ph.i220.preheader ], [ %i.db, %.lr.ph.i220.prol ]
  %i.dc = icmp eq i64 %2, %.neg625
  br i1 %i.dc, label %qsort_interruptible_swapn.exit223, label %.lr.ph.i220

.lr.ph.i220:                                      ; preds = %.lr.ph.i220.prol.loopexit, %.lr.ph.i220
  %.06.i221 = phi i64 [ %i.dm, %.lr.ph.i220 ], [ %.06.i221.unr, %.lr.ph.i220.prol.loopexit ] ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.1191258, i64 %.06.i221 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.1189259, i64 %.06.i221 ; 2 uses
  %i.df = load i8, ptr %i.dd, align 1
  %i.dg = load i8, ptr %i.de, align 1
  store i8 %i.dg, ptr %i.dd, align 1
  store i8 %i.df, ptr %i.de, align 1
  %i.dh = add nuw i64 %.06.i221, 1                ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.1191258, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.1189259, i64 %i.dh ; 2 uses
  %i.dk = load i8, ptr %i.di, align 1
  %i.dl = load i8, ptr %i.dj, align 1
  store i8 %i.dl, ptr %i.di, align 1
  store i8 %i.dk, ptr %i.dj, align 1
  %i.dm = add nuw i64 %.06.i221, 2                ; 2 uses
  %exitcond.not.i222.1 = icmp eq i64 %i.dm, %2
  br i1 %exitcond.not.i222.1, label %qsort_interruptible_swapn.exit223, label %.lr.ph.i220, !llvm.loop !21

qsort_interruptible_swapn.exit223:                ; preds = %.lr.ph.i220.prol.loopexit, %.lr.ph.i220, %middle.block510, %vec.epilog.middle.block524, %bb.q
  %i.dn = getelementptr inbounds nuw i8, ptr %.1191258, i64 %2
  br label %bb.r

bb.r:                                             ; preds = %qsort_interruptible_swapn.exit223, %bb.p
  %.2192 = phi ptr [ %i.dn, %qsort_interruptible_swapn.exit223 ], [ %.1191258, %bb.p ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.1189259, i64 %2 ; 3 uses
  %i.dp = load volatile i32, ptr @InterruptPending, align 4
  %.not211 = icmp eq i32 %i.dp, 0
  br i1 %.not211, label %bb.t, label %bb.s, !prof !48

bb.s:                                             ; preds = %bb.r
  tail call void @ProcessInterrupts() #4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.not207 = icmp ugt ptr %i.do, %.0186
  %indvar.next493 = add i64 %indvar492, 1
  br i1 %.not207, label %.critedge2, label %.lr.ph261, !llvm.loop !22

.critedge2:                                       ; preds = %.lr.ph261, %bb.t, %bb.o
  %.1191.lcssa = phi ptr [ %.0190, %bb.o ], [ %.2192, %bb.t ], [ %.1191258, %.lr.ph261 ] ; 2 uses
  %.1189.lcssa = phi ptr [ %.0188, %bb.o ], [ %i.do, %bb.t ], [ %.1189259, %.lr.ph261 ] ; 20 uses
  %.not208266 = icmp ugt ptr %.1189.lcssa, %.0186
  br i1 %.not208266, label %.critedge2._crit_edge, label %.lr.ph270

.lr.ph270:                                        ; preds = %.critedge2, %bb.y
  %indvar = phi i64 [ %indvar.next, %bb.y ], [ 0, %.critedge2 ] ; 3 uses
  %.1184269 = phi ptr [ %.2185, %bb.y ], [ %.0183, %.critedge2 ] ; 10 uses
  %.1187267 = phi ptr [ %i.es, %bb.y ], [ %.0186, %.critedge2 ] ; 15 uses
  %7 = sub i64 1, %indvar
  %8 = mul i64 %2, %7
  %scevgep456 = getelementptr i8, ptr %.0186, i64 %8
  %i.dq = tail call i32 %3(ptr noundef %.1187267, ptr noundef %.0193.ph, ptr noundef %4) #4 ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, -1
  br i1 %i.dr, label %bb.u, label %.critedge4

bb.u:                                             ; preds = %.lr.ph270
  %i.ds = icmp eq i32 %i.dq, 0
  br i1 %i.ds, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  br i1 %.not.i214, label %qsort_interruptible_swapn.exit228, label %iter.check475

iter.check475:                                    ; preds = %bb.v
  br i1 %min.iters.check461, label %.lr.ph.i225.preheader, label %vector.memcheck455

vector.memcheck455:                               ; preds = %iter.check475
  %scevgep457 = getelementptr i8, ptr %.1184269, i64 %2
  %bound0458 = icmp ult ptr %.1187267, %scevgep457
  %bound1459 = icmp ult ptr %.1184269, %scevgep456
  %found.conflict460 = and i1 %bound0458, %bound1459
  br i1 %found.conflict460, label %.lr.ph.i225.preheader, label %vector.main.loop.iter.check462

vector.main.loop.iter.check462:                   ; preds = %vector.memcheck455
  br i1 %min.iters.check463, label %vec.epilog.ph479, label %vector.body466

vector.body466:                                   ; preds = %vector.main.loop.iter.check462, %vector.body466
  %index467 = phi i64 [ %index.next472, %vector.body466 ], [ 0, %vector.main.loop.iter.check462 ] ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.1187267, i64 %index467 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.1184269, i64 %index467 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %wide.load468 = load <16 x i8>, ptr %i.dt, align 1, !alias.scope !57, !noalias !58
  %wide.load469 = load <16 x i8>, ptr %i.dv, align 1, !alias.scope !57, !noalias !58
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %wide.load470 = load <16 x i8>, ptr %i.du, align 1, !alias.scope !58
  %wide.load471 = load <16 x i8>, ptr %i.dw, align 1, !alias.scope !58
  store <16 x i8> %wide.load470, ptr %i.dt, align 1, !alias.scope !57, !noalias !58
  store <16 x i8> %wide.load471, ptr %i.dv, align 1, !alias.scope !57, !noalias !58
  store <16 x i8> %wide.load468, ptr %i.du, align 1, !alias.scope !58
  store <16 x i8> %wide.load469, ptr %i.dw, align 1, !alias.scope !58
  %index.next472 = add nuw i64 %index467, 32      ; 2 uses
  %i.dx = icmp eq i64 %index.next472, %n.vec465
  br i1 %i.dx, label %middle.block473, label %vector.body466, !llvm.loop !26

middle.block473:                                  ; preds = %vector.body466
  br i1 %cmp.n474, label %qsort_interruptible_swapn.exit228, label %vec.epilog.iter.check476

vec.epilog.iter.check476:                         ; preds = %middle.block473
  br i1 %min.epilog.iters.check478, label %.lr.ph.i225.preheader, label %vec.epilog.ph479, !prof !52

vec.epilog.ph479:                                 ; preds = %vector.main.loop.iter.check462, %vec.epilog.iter.check476
  %vec.epilog.resume.val480 = phi i64 [ %n.vec465, %vec.epilog.iter.check476 ], [ 0, %vector.main.loop.iter.check462 ]
  br label %vec.epilog.vector.body482

vec.epilog.vector.body482:                        ; preds = %vec.epilog.vector.body482, %vec.epilog.ph479
  %index483 = phi i64 [ %vec.epilog.resume.val480, %vec.epilog.ph479 ], [ %index.next486, %vec.epilog.vector.body482 ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.1187267, i64 %index483 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.1184269, i64 %index483 ; 2 uses
  %wide.load484 = load <4 x i8>, ptr %i.dy, align 1, !alias.scope !57, !noalias !58
  %wide.load485 = load <4 x i8>, ptr %i.dz, align 1, !alias.scope !58
  store <4 x i8> %wide.load485, ptr %i.dy, align 1, !alias.scope !57, !noalias !58
  store <4 x i8> %wide.load484, ptr %i.dz, align 1, !alias.scope !58
  %index.next486 = add nuw i64 %index483, 4       ; 2 uses
  %i.ea = icmp eq i64 %index.next486, %n.vec481
  br i1 %i.ea, label %vec.epilog.middle.block487, label %vec.epilog.vector.body482, !llvm.loop !27

vec.epilog.middle.block487:                       ; preds = %vec.epilog.vector.body482
  br i1 %cmp.n488, label %qsort_interruptible_swapn.exit228, label %.lr.ph.i225.preheader

.lr.ph.i225.preheader:                            ; preds = %iter.check475, %vector.memcheck455, %vec.epilog.iter.check476, %vec.epilog.middle.block487
  %.06.i226.ph = phi i64 [ 0, %iter.check475 ], [ 0, %vector.memcheck455 ], [ %n.vec465, %vec.epilog.iter.check476 ], [ %n.vec481, %vec.epilog.middle.block487 ] ; 5 uses
  %.neg627 = or disjoint i64 %.06.i226.ph, 1
  br i1 %lcmp.mod618.not, label %.lr.ph.i225.prol.loopexit, label %.lr.ph.i225.prol

.lr.ph.i225.prol:                                 ; preds = %.lr.ph.i225.preheader
  %i.eb = getelementptr inbounds nuw i8, ptr %.1187267, i64 %.06.i226.ph ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.1184269, i64 %.06.i226.ph ; 2 uses
  %i.ed = load i8, ptr %i.eb, align 1
  %i.ee = load i8, ptr %i.ec, align 1
  store i8 %i.ee, ptr %i.eb, align 1
  store i8 %i.ed, ptr %i.ec, align 1
  %i.ef = or disjoint i64 %.06.i226.ph, 1
  br label %.lr.ph.i225.prol.loopexit

.lr.ph.i225.prol.loopexit:                        ; preds = %.lr.ph.i225.prol, %.lr.ph.i225.preheader
  %.06.i226.unr = phi i64 [ %.06.i226.ph, %.lr.ph.i225.preheader ], [ %i.ef, %.lr.ph.i225.prol ]
  %i.eg = icmp eq i64 %2, %.neg627
  br i1 %i.eg, label %qsort_interruptible_swapn.exit228, label %.lr.ph.i225

.lr.ph.i225:                                      ; preds = %.lr.ph.i225.prol.loopexit, %.lr.ph.i225
  %.06.i226 = phi i64 [ %i.eq, %.lr.ph.i225 ], [ %.06.i226.unr, %.lr.ph.i225.prol.loopexit ] ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.1187267, i64 %.06.i226 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.1184269, i64 %.06.i226 ; 2 uses
  %i.ej = load i8, ptr %i.eh, align 1
  %i.ek = load i8, ptr %i.ei, align 1
  store i8 %i.ek, ptr %i.eh, align 1
  store i8 %i.ej, ptr %i.ei, align 1
  %i.el = add nuw i64 %.06.i226, 1                ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.1187267, i64 %i.el ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.1184269, i64 %i.el ; 2 uses
  %i.eo = load i8, ptr %i.em, align 1
  %i.ep = load i8, ptr %i.en, align 1
  store i8 %i.ep, ptr %i.em, align 1
  store i8 %i.eo, ptr %i.en, align 1
  %i.eq = add nuw i64 %.06.i226, 2                ; 2 uses
  %exitcond.not.i227.1 = icmp eq i64 %i.eq, %2
  br i1 %exitcond.not.i227.1, label %qsort_interruptible_swapn.exit228, label %.lr.ph.i225, !llvm.loop !28

qsort_interruptible_swapn.exit228:                ; preds = %.lr.ph.i225.prol.loopexit, %.lr.ph.i225, %middle.block473, %vec.epilog.middle.block487, %bb.v
  %i.er = getelementptr inbounds i8, ptr %.1184269, i64 %i.a
  br label %bb.w

bb.w:                                             ; preds = %qsort_interruptible_swapn.exit228, %bb.u
  %.2185 = phi ptr [ %i.er, %qsort_interruptible_swapn.exit228 ], [ %.1184269, %bb.u ] ; 2 uses
  %i.es = getelementptr inbounds i8, ptr %.1187267, i64 %i.a ; 3 uses
  %i.et = load volatile i32, ptr @InterruptPending, align 4
  %.not210 = icmp eq i32 %i.et, 0
  br i1 %.not210, label %bb.y, label %bb.x, !prof !48

bb.x:                                             ; preds = %bb.w
  tail call void @ProcessInterrupts() #4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.not208 = icmp ugt ptr %.1189.lcssa, %i.es
  %indvar.next = add i64 %indvar, 1
  br i1 %.not208, label %.critedge2._crit_edge, label %.lr.ph270, !llvm.loop !29

.critedge4:                                       ; preds = %.lr.ph270
  br i1 %.not.i214, label %qsort_interruptible_swapn.exit233, label %iter.check440

iter.check440:                                    ; preds = %.critedge4
  br i1 %min.iters.check426, label %.lr.ph.i230.preheader, label %vector.memcheck420

vector.memcheck420:                               ; preds = %iter.check440
  %scevgep421 = getelementptr i8, ptr %.1189.lcssa, i64 %2
  %9 = sub i64 1, %indvar
  %10 = mul i64 %2, %9
  %scevgep422 = getelementptr i8, ptr %.0186, i64 %10
  %bound0423 = icmp ult ptr %.1189.lcssa, %scevgep422
  %bound1424 = icmp ult ptr %.1187267, %scevgep421
  %found.conflict425 = and i1 %bound0423, %bound1424
  br i1 %found.conflict425, label %.lr.ph.i230.preheader, label %vector.main.loop.iter.check427

vector.main.loop.iter.check427:                   ; preds = %vector.memcheck420
  br i1 %min.iters.check428, label %vec.epilog.ph444, label %vector.body431

vector.body431:                                   ; preds = %vector.main.loop.iter.check427, %vector.body431
  %index432 = phi i64 [ %index.next437, %vector.body431 ], [ 0, %vector.main.loop.iter.check427 ] ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.1189.lcssa, i64 %index432 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.1187267, i64 %index432 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 16 ; 2 uses
  %wide.load433 = load <16 x i8>, ptr %i.eu, align 1, !alias.scope !59, !noalias !60
  %wide.load434 = load <16 x i8>, ptr %i.ew, align 1, !alias.scope !59, !noalias !60
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 2 uses
  %wide.load435 = load <16 x i8>, ptr %i.ev, align 1, !alias.scope !60
  %wide.load436 = load <16 x i8>, ptr %i.ex, align 1, !alias.scope !60
  store <16 x i8> %wide.load435, ptr %i.eu, align 1, !alias.scope !59, !noalias !60
  store <16 x i8> %wide.load436, ptr %i.ew, align 1, !alias.scope !59, !noalias !60
  store <16 x i8> %wide.load433, ptr %i.ev, align 1, !alias.scope !60
  store <16 x i8> %wide.load434, ptr %i.ex, align 1, !alias.scope !60
  %index.next437 = add nuw i64 %index432, 32      ; 2 uses
  %i.ey = icmp eq i64 %index.next437, %n.vec430
  br i1 %i.ey, label %middle.block438, label %vector.body431, !llvm.loop !33

middle.block438:                                  ; preds = %vector.body431
  br i1 %cmp.n439, label %qsort_interruptible_swapn.exit233, label %vec.epilog.iter.check441

vec.epilog.iter.check441:                         ; preds = %middle.block438
  br i1 %min.epilog.iters.check443, label %.lr.ph.i230.preheader, label %vec.epilog.ph444, !prof !52

vec.epilog.ph444:                                 ; preds = %vector.main.loop.iter.check427, %vec.epilog.iter.check441
  %vec.epilog.resume.val445 = phi i64 [ %n.vec430, %vec.epilog.iter.check441 ], [ 0, %vector.main.loop.iter.check427 ]
  br label %vec.epilog.vector.body447

vec.epilog.vector.body447:                        ; preds = %vec.epilog.vector.body447, %vec.epilog.ph444
  %index448 = phi i64 [ %vec.epilog.resume.val445, %vec.epilog.ph444 ], [ %index.next451, %vec.epilog.vector.body447 ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.1189.lcssa, i64 %index448 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.1187267, i64 %index448 ; 2 uses
  %wide.load449 = load <4 x i8>, ptr %i.ez, align 1, !alias.scope !59, !noalias !60
  %wide.load450 = load <4 x i8>, ptr %i.fa, align 1, !alias.scope !60
  store <4 x i8> %wide.load450, ptr %i.ez, align 1, !alias.scope !59, !noalias !60
  store <4 x i8> %wide.load449, ptr %i.fa, align 1, !alias.scope !60
  %index.next451 = add nuw i64 %index448, 4       ; 2 uses
  %i.fb = icmp eq i64 %index.next451, %n.vec446
  br i1 %i.fb, label %vec.epilog.middle.block452, label %vec.epilog.vector.body447, !llvm.loop !34

vec.epilog.middle.block452:                       ; preds = %vec.epilog.vector.body447
  br i1 %cmp.n453, label %qsort_interruptible_swapn.exit233, label %.lr.ph.i230.preheader

.lr.ph.i230.preheader:                            ; preds = %iter.check440, %vector.memcheck420, %vec.epilog.iter.check441, %vec.epilog.middle.block452
  %.06.i231.ph = phi i64 [ 0, %iter.check440 ], [ 0, %vector.memcheck420 ], [ %n.vec430, %vec.epilog.iter.check441 ], [ %n.vec446, %vec.epilog.middle.block452 ] ; 5 uses
  %.neg626 = or disjoint i64 %.06.i231.ph, 1
  br i1 %lcmp.mod620.not, label %.lr.ph.i230.prol.loopexit, label %.lr.ph.i230.prol

.lr.ph.i230.prol:                                 ; preds = %.lr.ph.i230.preheader
  %i.fc = getelementptr inbounds nuw i8, ptr %.1189.lcssa, i64 %.06.i231.ph ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.1187267, i64 %.06.i231.ph ; 2 uses
  %i.fe = load i8, ptr %i.fc, align 1
  %i.ff = load i8, ptr %i.fd, align 1
  store i8 %i.ff, ptr %i.fc, align 1
  store i8 %i.fe, ptr %i.fd, align 1
  %i.fg = or disjoint i64 %.06.i231.ph, 1
  br label %.lr.ph.i230.prol.loopexit

.lr.ph.i230.prol.loopexit:                        ; preds = %.lr.ph.i230.prol, %.lr.ph.i230.preheader
  %.06.i231.unr = phi i64 [ %.06.i231.ph, %.lr.ph.i230.preheader ], [ %i.fg, %.lr.ph.i230.prol ]
  %i.fh = icmp eq i64 %2, %.neg626
  br i1 %i.fh, label %qsort_interruptible_swapn.exit233, label %.lr.ph.i230

.lr.ph.i230:                                      ; preds = %.lr.ph.i230.prol.loopexit, %.lr.ph.i230
  %.06.i231 = phi i64 [ %i.fr, %.lr.ph.i230 ], [ %.06.i231.unr, %.lr.ph.i230.prol.loopexit ] ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.1189.lcssa, i64 %.06.i231 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.1187267, i64 %.06.i231 ; 2 uses
  %i.fk = load i8, ptr %i.fi, align 1
  %i.fl = load i8, ptr %i.fj, align 1
  store i8 %i.fl, ptr %i.fi, align 1
  store i8 %i.fk, ptr %i.fj, align 1
  %i.fm = add nuw i64 %.06.i231, 1                ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.1189.lcssa, i64 %i.fm ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.1187267, i64 %i.fm ; 2 uses
  %i.fp = load i8, ptr %i.fn, align 1
  %i.fq = load i8, ptr %i.fo, align 1
  store i8 %i.fq, ptr %i.fn, align 1
  store i8 %i.fp, ptr %i.fo, align 1
  %i.fr = add nuw i64 %.06.i231, 2                ; 2 uses
  %exitcond.not.i232.1 = icmp eq i64 %i.fr, %2
  br i1 %exitcond.not.i232.1, label %qsort_interruptible_swapn.exit233, label %.lr.ph.i230, !llvm.loop !35

qsort_interruptible_swapn.exit233:                ; preds = %.lr.ph.i230.prol.loopexit, %.lr.ph.i230, %middle.block438, %vec.epilog.middle.block452, %.critedge4
  %i.fs = getelementptr inbounds nuw i8, ptr %.1189.lcssa, i64 %2
  %i.ft = getelementptr inbounds i8, ptr %.1187267, i64 %i.a
  br label %bb.o

.critedge2._crit_edge:                            ; preds = %.critedge2, %bb.y
  %.1187.lcssa = phi ptr [ %i.es, %bb.y ], [ %.0186, %.critedge2 ]
  %.1184.lcssa = phi ptr [ %.2185, %bb.y ], [ %.0183, %.critedge2 ]
  %i.fu = ptrtoint ptr %.1191.lcssa to i64        ; 2 uses
  %i.fv = sub i64 %i.fu, %i.g
  %i.fw = ptrtoint ptr %.1189.lcssa to i64
  %i.fx = sub i64 %i.fw, %i.fu                    ; 4 uses
  %. = tail call i64 @llvm.smin.i64(i64 %i.fv, i64 %i.fx) ; 13 uses
  %i.fy = sub i64 0, %.
  %i.fz = getelementptr i8, ptr %.1189.lcssa, i64 %i.fy ; 6 uses
  %.not.i234 = icmp eq i64 %., 0
  br i1 %.not.i234, label %qsort_interruptible_swapn.exit238, label %iter.check405

iter.check405:                                    ; preds = %.critedge2._crit_edge
  %min.iters.check391 = icmp ult i64 %., 4
  br i1 %min.iters.check391, label %.lr.ph.i235.preheader, label %vector.memcheck386

vector.memcheck386:                               ; preds = %iter.check405
  %scevgep387 = getelementptr i8, ptr %.0193.ph, i64 %.
  %bound0388 = icmp ult ptr %.0193.ph, %.1189.lcssa
  %bound1389 = icmp ult ptr %i.fz, %scevgep387
  %found.conflict390 = and i1 %bound0388, %bound1389
  br i1 %found.conflict390, label %.lr.ph.i235.preheader, label %vector.main.loop.iter.check392

vector.main.loop.iter.check392:                   ; preds = %vector.memcheck386
  %min.iters.check393 = icmp ult i64 %., 32
  br i1 %min.iters.check393, label %vec.epilog.ph409, label %vector.ph394

vector.ph394:                                     ; preds = %vector.main.loop.iter.check392
  %i.ga = and i64 %., 28
  %n.vec395 = and i64 %., -32                     ; 4 uses
  br label %vector.body396

vector.body396:                                   ; preds = %vector.ph394, %vector.body396
  %index397 = phi i64 [ 0, %vector.ph394 ], [ %index.next402, %vector.body396 ] ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.0193.ph, i64 %index397 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 %index397 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 2 uses
  %wide.load398 = load <16 x i8>, ptr %i.gb, align 1, !alias.scope !61, !noalias !62
  %wide.load399 = load <16 x i8>, ptr %i.gd, align 1, !alias.scope !61, !noalias !62
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 16 ; 2 uses
  %wide.load400 = load <16 x i8>, ptr %i.gc, align 1, !alias.scope !62
  %wide.load401 = load <16 x i8>, ptr %i.ge, align 1, !alias.scope !62
  store <16 x i8> %wide.load400, ptr %i.gb, align 1, !alias.scope !61, !noalias !62
  store <16 x i8> %wide.load401, ptr %i.gd, align 1, !alias.scope !61, !noalias !62
  store <16 x i8> %wide.load398, ptr %i.gc, align 1, !alias.scope !62
  store <16 x i8> %wide.load399, ptr %i.ge, align 1, !alias.scope !62
  %index.next402 = add nuw i64 %index397, 32      ; 2 uses
  %i.gf = icmp eq i64 %index.next402, %n.vec395
  br i1 %i.gf, label %middle.block403, label %vector.body396, !llvm.loop !39

middle.block403:                                  ; preds = %vector.body396
  %cmp.n404 = icmp eq i64 %., %n.vec395
  br i1 %cmp.n404, label %qsort_interruptible_swapn.exit238, label %vec.epilog.iter.check406

vec.epilog.iter.check406:                         ; preds = %middle.block403
  %min.epilog.iters.check408 = icmp eq i64 %i.ga, 0
  br i1 %min.epilog.iters.check408, label %.lr.ph.i235.preheader, label %vec.epilog.ph409, !prof !52

vec.epilog.ph409:                                 ; preds = %vector.main.loop.iter.check392, %vec.epilog.iter.check406
  %vec.epilog.resume.val410 = phi i64 [ %n.vec395, %vec.epilog.iter.check406 ], [ 0, %vector.main.loop.iter.check392 ]
  %n.vec411 = and i64 %., -4                      ; 3 uses
  br label %vec.epilog.vector.body412

vec.epilog.vector.body412:                        ; preds = %vec.epilog.vector.body412, %vec.epilog.ph409
  %index413 = phi i64 [ %vec.epilog.resume.val410, %vec.epilog.ph409 ], [ %index.next416, %vec.epilog.vector.body412 ] ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.0193.ph, i64 %index413 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fz, i64 %index413 ; 2 uses
  %wide.load414 = load <4 x i8>, ptr %i.gg, align 1, !alias.scope !61, !noalias !62
  %wide.load415 = load <4 x i8>, ptr %i.gh, align 1, !alias.scope !62
  store <4 x i8> %wide.load415, ptr %i.gg, align 1, !alias.scope !61, !noalias !62
  store <4 x i8> %wide.load414, ptr %i.gh, align 1, !alias.scope !62
  %index.next416 = add nuw i64 %index413, 4       ; 2 uses
  %i.gi = icmp eq i64 %index.next416, %n.vec411
  br i1 %i.gi, label %vec.epilog.middle.block417, label %vec.epilog.vector.body412, !llvm.loop !40

vec.epilog.middle.block417:                       ; preds = %vec.epilog.vector.body412
  %cmp.n418 = icmp eq i64 %., %n.vec411
  br i1 %cmp.n418, label %qsort_interruptible_swapn.exit238, label %.lr.ph.i235.preheader

.lr.ph.i235.preheader:                            ; preds = %iter.check405, %vector.memcheck386, %vec.epilog.iter.check406, %vec.epilog.middle.block417
  %.06.i236.ph = phi i64 [ 0, %iter.check405 ], [ 0, %vector.memcheck386 ], [ %n.vec395, %vec.epilog.iter.check406 ], [ %n.vec411, %vec.epilog.middle.block417 ] ; 5 uses
  %.neg628 = or disjoint i64 %.06.i236.ph, 1
  %xtraiter621 = and i64 %., 1
  %lcmp.mod622.not = icmp eq i64 %xtraiter621, 0
  br i1 %lcmp.mod622.not, label %.lr.ph.i235.prol.loopexit, label %.lr.ph.i235.prol

.lr.ph.i235.prol:                                 ; preds = %.lr.ph.i235.preheader
  %i.gj = getelementptr inbounds nuw i8, ptr %.0193.ph, i64 %.06.i236.ph ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.06.i236.ph ; 2 uses
  %i.gl = load i8, ptr %i.gj, align 1
  %i.gm = load i8, ptr %i.gk, align 1
  store i8 %i.gm, ptr %i.gj, align 1
  store i8 %i.gl, ptr %i.gk, align 1
  %i.gn = or disjoint i64 %.06.i236.ph, 1
  br label %.lr.ph.i235.prol.loopexit

.lr.ph.i235.prol.loopexit:                        ; preds = %.lr.ph.i235.prol, %.lr.ph.i235.preheader
  %.06.i236.unr = phi i64 [ %.06.i236.ph, %.lr.ph.i235.preheader ], [ %i.gn, %.lr.ph.i235.prol ]
  %i.go = icmp eq i64 %., %.neg628
  br i1 %i.go, label %qsort_interruptible_swapn.exit238, label %.lr.ph.i235

.lr.ph.i235:                                      ; preds = %.lr.ph.i235.prol.loopexit, %.lr.ph.i235
  %.06.i236 = phi i64 [ %i.gy, %.lr.ph.i235 ], [ %.06.i236.unr, %.lr.ph.i235.prol.loopexit ] ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.0193.ph, i64 %.06.i236 ; 2 uses
end_hunk_0
