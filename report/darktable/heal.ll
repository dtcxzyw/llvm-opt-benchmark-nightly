Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/heal?download=true
inline.NumInlined: 7
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"dt_heal: full-color image required\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"dt_heal: error allocating memory for healing\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"_heal_laplace_loop: error allocating memory for healing\00", align 1

; Function Attrs: nounwind uwtable
define void @dt_heal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %.not = icmp eq i32 %5, 4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str) #13
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.e = add nsw i32 %3, 1
  %i.f = sdiv i32 %i.e, 2
  %i.g = shl nsw i32 %i.f, 2
  %i.h = sext i32 %i.g to i64
  %i.i = add nsw i32 %4, 2
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 2
  %i.l = mul i64 %i.k, %i.h                       ; 2 uses
  %i.m = tail call ptr @dt_alloc_aligned(i64 noundef %i.l) #13 ; 18 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.m, i64 64) ]
  %i.n = tail call ptr @dt_alloc_aligned(i64 noundef %i.l) #13 ; 18 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.n, i64 64) ]
  %i.o = icmp eq ptr %i.m, null                   ; 2 uses
  %i.p = icmp eq ptr %i.n, null                   ; 2 uses
  %or.cond = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.1) #13
  br label %_heal_add.exit

bb.e:                                             ; preds = %bb.c
  %i.q = sext i32 %3 to i64                       ; 12 uses
  %i.r = sext i32 %4 to i64                       ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.s = shl nsw i64 %i.q, 1
  %i.t = add nsw i64 %i.s, 2
  %i.u = and i64 %i.t, -4                         ; 13 uses
  %factor.op.mul81.i = shl nsw i64 %i.q, 2        ; 4 uses
  %.not86.i = icmp eq i32 %4, 0                   ; 2 uses
  br i1 %.not86.i, label %_heal_sub.exit, label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %bb.e
  %i.v = lshr i64 %i.q, 1                         ; 9 uses
  %.not87.i = icmp eq i64 %i.v, 0
  %i.w = and i32 %3, 1
  %.not77.i = icmp eq i32 %i.w, 0                 ; 2 uses
  %i.x = add nsw i64 %i.q, -1                     ; 2 uses
  br i1 %.not87.i, label %.lr.ph84.split.i, label %.lr.ph84.split.us.i

.lr.ph84.split.us.i:                              ; preds = %.lr.ph84.i
  br i1 %.not77.i, label %.lr.ph.us.us.i.preheader, label %.lr.ph.us.preheader.i

.lr.ph.us.us.i.preheader:                         ; preds = %.lr.ph84.split.us.i
  %i.y = shl i64 %i.v, 4                          ; 5 uses
  %i.z = add i64 %i.y, -4                         ; 2 uses
  %i.aa = add i64 %i.y, -8                        ; 2 uses
  %i.ab = add i64 %i.y, -12                       ; 2 uses
  %min.iters.check457 = icmp ult i32 %3, 16
  %n.vec571 = and i64 %i.v, 9223372036854775800   ; 3 uses
  %cmp.n614 = icmp eq i64 %i.v, %n.vec571
  br label %.lr.ph.us.us.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph84.split.us.i
  %i.ac = shl nsw i64 %i.q, 3
  %.idx = shl nsw i64 %i.x, 3
  %i.ad = shl i64 %i.v, 4                         ; 5 uses
  %i.ae = add i64 %i.ad, -4                       ; 2 uses
  %i.af = add i64 %i.ad, -8                       ; 2 uses
  %i.ag = add i64 %i.ad, -12                      ; 2 uses
  %min.iters.check = icmp ult i32 %3, 16
  %n.vec = and i64 %i.v, 9223372036854775800      ; 3 uses
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br label %.lr.ph.us.i

.lr.ph.us.us.i:                                   ; preds = %.lr.ph.us.us.i.preheader, %._crit_edge.us.us.i
  %.07582.us.us.i = phi i64 [ %i.ah, %._crit_edge.us.us.i ], [ 0, %.lr.ph.us.us.i.preheader ] ; 3 uses
  %i.ah = add nuw i64 %.07582.us.us.i, 1          ; 3 uses
  %i.ai = mul i64 %i.ah, %i.u                     ; 2 uses
  %i.aj = and i64 %.07582.us.us.i, 1
  %.not.us.us.i = icmp eq i64 %i.aj, 0            ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ai ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ai ; 2 uses
  %i.am = select i1 %.not.us.us.i, ptr %i.al, ptr %i.ak ; 16 uses
  %i.an = select i1 %.not.us.us.i, ptr %i.ak, ptr %i.al ; 16 uses
  %factor.op.mul.reass.us.us.i = mul i64 %.07582.us.us.i, %factor.op.mul81.i ; 2 uses
  br i1 %min.iters.check457, label %scalar.ph456.preheader, label %vector.memcheck458

vector.memcheck458:                               ; preds = %.lr.ph.us.us.i
  %i.ao = getelementptr i8, ptr %i.am, i64 %i.ab  ; 4 uses
  %i.ap = getelementptr i8, ptr %i.an, i64 %i.ab  ; 4 uses
  %i.aq = getelementptr nuw i8, ptr %i.an, i64 4  ; 4 uses
  %i.ar = getelementptr i8, ptr %i.an, i64 %i.aa  ; 4 uses
  %i.as = getelementptr nuw i8, ptr %i.an, i64 8  ; 4 uses
  %i.at = getelementptr i8, ptr %i.an, i64 %i.z   ; 4 uses
  %i.au = getelementptr nuw i8, ptr %i.an, i64 12 ; 4 uses
  %i.av = getelementptr i8, ptr %i.an, i64 %i.y   ; 4 uses
  %7 = getelementptr nuw i8, ptr %i.am, i64 4     ; 4 uses
  %8 = getelementptr i8, ptr %i.am, i64 %i.aa     ; 4 uses
  %9 = getelementptr nuw i8, ptr %i.am, i64 8     ; 4 uses
  %10 = getelementptr i8, ptr %i.am, i64 %i.z     ; 4 uses
  %11 = getelementptr nuw i8, ptr %i.am, i64 12   ; 4 uses
  %12 = getelementptr i8, ptr %i.am, i64 %i.y     ; 4 uses
  %bound0506 = icmp ult ptr %i.am, %i.ap
  %bound1507 = icmp ult ptr %i.an, %i.ao
  %found.conflict508 = and i1 %bound0506, %bound1507
  %bound0510 = icmp ult ptr %i.am, %i.ar
  %bound1511 = icmp ult ptr %i.aq, %i.ao
  %found.conflict512 = and i1 %bound0510, %bound1511
  %conflict.rdx513 = or i1 %found.conflict508, %found.conflict512
  %bound0514 = icmp ult ptr %i.am, %i.at
  %bound1515 = icmp ult ptr %i.as, %i.ao
  %found.conflict516 = and i1 %bound0514, %bound1515
  %conflict.rdx517 = or i1 %conflict.rdx513, %found.conflict516
  %bound0518 = icmp ult ptr %i.am, %i.av
  %bound1519 = icmp ult ptr %i.au, %i.ao
  %found.conflict520 = and i1 %bound0518, %bound1519
  %conflict.rdx521 = or i1 %conflict.rdx517, %found.conflict520
  %bound0522 = icmp ult ptr %i.an, %8
  %bound1523 = icmp ult ptr %7, %i.ap
  %found.conflict524 = and i1 %bound0522, %bound1523
  %conflict.rdx525 = or i1 %conflict.rdx521, %found.conflict524
  %bound0526 = icmp ult ptr %i.an, %10
  %bound1527 = icmp ult ptr %9, %i.ap
  %found.conflict528 = and i1 %bound0526, %bound1527
  %conflict.rdx529 = or i1 %conflict.rdx525, %found.conflict528
  %bound0530 = icmp ult ptr %i.an, %12
  %bound1531 = icmp ult ptr %11, %i.ap
  %found.conflict532 = and i1 %bound0530, %bound1531
  %conflict.rdx533 = or i1 %conflict.rdx529, %found.conflict532
  %bound0534 = icmp ult ptr %7, %i.ar
  %bound1535 = icmp ult ptr %i.aq, %8
  %found.conflict536 = and i1 %bound0534, %bound1535
  %conflict.rdx537 = or i1 %conflict.rdx533, %found.conflict536
  %bound0538 = icmp ult ptr %7, %i.at
  %bound1539 = icmp ult ptr %i.as, %8
  %found.conflict540 = and i1 %bound0538, %bound1539
  %conflict.rdx541 = or i1 %conflict.rdx537, %found.conflict540
  %bound0542 = icmp ult ptr %7, %i.av
  %bound1543 = icmp ult ptr %i.au, %8
  %found.conflict544 = and i1 %bound0542, %bound1543
  %conflict.rdx545 = or i1 %conflict.rdx541, %found.conflict544
  %bound0546 = icmp ult ptr %i.aq, %10
  %bound1547 = icmp ult ptr %9, %i.ar
  %found.conflict548 = and i1 %bound0546, %bound1547
  %conflict.rdx549 = or i1 %conflict.rdx545, %found.conflict548
  %bound0550 = icmp ult ptr %i.aq, %12
  %bound1551 = icmp ult ptr %11, %i.ar
  %found.conflict552 = and i1 %bound0550, %bound1551
  %conflict.rdx553 = or i1 %conflict.rdx549, %found.conflict552
  %bound0554 = icmp ult ptr %9, %i.at
  %bound1555 = icmp ult ptr %i.as, %10
  %found.conflict556 = and i1 %bound0554, %bound1555
  %conflict.rdx557 = or i1 %conflict.rdx553, %found.conflict556
  %bound0558 = icmp ult ptr %9, %i.av
  %bound1559 = icmp ult ptr %i.au, %10
  %found.conflict560 = and i1 %bound0558, %bound1559
  %conflict.rdx561 = or i1 %conflict.rdx557, %found.conflict560
  %bound0562 = icmp ult ptr %i.as, %12
  %bound1563 = icmp ult ptr %11, %i.at
  %found.conflict564 = and i1 %bound0562, %bound1563
  %conflict.rdx565 = or i1 %conflict.rdx561, %found.conflict564
  %bound0566 = icmp ult ptr %11, %i.av
  %bound1567 = icmp ult ptr %i.au, %12
  %found.conflict568 = and i1 %bound0566, %bound1567
  %conflict.rdx569 = or i1 %conflict.rdx565, %found.conflict568
  br i1 %conflict.rdx569, label %scalar.ph456.preheader, label %vector.ph570

vector.ph570:                                     ; preds = %vector.memcheck458
  %broadcast.splatinsert572 = insertelement <8 x i64> poison, i64 %factor.op.mul.reass.us.us.i, i64 0
  %broadcast.splat573 = shufflevector <8 x i64> %broadcast.splatinsert572, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body574

vector.body574:                                   ; preds = %vector.body574, %vector.ph570
  %index575 = phi i64 [ 0, %vector.ph570 ], [ %index.next611, %vector.body574 ] ; 2 uses
  %vec.ind576 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph570 ], [ %vec.ind.next612, %vector.body574 ] ; 2 uses
  %i.aw = shl <8 x i64> %vec.ind576, splat (i64 3)
  %i.ax = add <8 x i64> %i.aw, %broadcast.splat573 ; 9 uses
  %i.ay = shl i64 %index575, 2                    ; 2 uses
  %i.az = or disjoint <8 x i64> %i.ax, splat (i64 4) ; 2 uses
  %wide.gep577 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.ax
  %wide.masked.gather578 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep577, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %wide.gep579 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.ax
  %wide.masked.gather580 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep579, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ay
  %wide.gep581 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.az
  %wide.masked.gather582 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep581, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %wide.gep583 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.az
  %wide.masked.gather584 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep583, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ay
  %i.bc = or disjoint <8 x i64> %i.ax, splat (i64 1) ; 2 uses
  %wide.gep585 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.bc
  %wide.masked.gather586 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep585, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %wide.gep587 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.bc
  %wide.masked.gather588 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep587, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %i.bd = or disjoint <8 x i64> %i.ax, splat (i64 5) ; 2 uses
  %wide.gep589 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.bd
  %wide.masked.gather590 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep589, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %wide.gep591 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.bd
  %wide.masked.gather592 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep591, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %i.be = or disjoint <8 x i64> %i.ax, splat (i64 2) ; 2 uses
  %wide.gep593 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.be
  %wide.masked.gather594 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep593, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %wide.gep595 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.be
  %wide.masked.gather596 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep595, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %i.bf = or disjoint <8 x i64> %i.ax, splat (i64 6) ; 2 uses
  %wide.gep597 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.bf
  %wide.masked.gather598 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep597, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %wide.gep599 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.bf
  %wide.masked.gather600 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep599, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %i.bg = or disjoint <8 x i64> %i.ax, splat (i64 3) ; 2 uses
  %wide.gep601 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.bg
  %wide.masked.gather602 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep601, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %wide.gep603 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.bg
  %wide.masked.gather604 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep603, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %i.bh = shufflevector <8 x float> %wide.masked.gather578, <8 x float> %wide.masked.gather586, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bi = shufflevector <8 x float> %wide.masked.gather580, <8 x float> %wide.masked.gather588, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bj = fsub reassoc nsz arcp contract afn <16 x float> %i.bh, %i.bi
  %i.bk = shufflevector <8 x float> %wide.masked.gather594, <8 x float> %wide.masked.gather602, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bl = shufflevector <8 x float> %wide.masked.gather596, <8 x float> %wide.masked.gather604, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bm = fsub reassoc nsz arcp contract afn <16 x float> %i.bk, %i.bl
  %interleaved.vec605 = shufflevector <16 x float> %i.bj, <16 x float> %i.bm, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec605, ptr %i.ba, align 16, !tbaa !12, !alias.scope !41
  %i.bn = or disjoint <8 x i64> %i.ax, splat (i64 7) ; 2 uses
  %wide.gep606 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.bn
  %wide.masked.gather607 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep606, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %wide.gep608 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.bn
  %wide.masked.gather609 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep608, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %i.bo = shufflevector <8 x float> %wide.masked.gather582, <8 x float> %wide.masked.gather590, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bp = shufflevector <8 x float> %wide.masked.gather584, <8 x float> %wide.masked.gather592, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bq = fsub reassoc nsz arcp contract afn <16 x float> %i.bo, %i.bp
  %i.br = shufflevector <8 x float> %wide.masked.gather598, <8 x float> %wide.masked.gather607, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bs = shufflevector <8 x float> %wide.masked.gather600, <8 x float> %wide.masked.gather609, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bt = fsub reassoc nsz arcp contract afn <16 x float> %i.br, %i.bs
  %interleaved.vec610 = shufflevector <16 x float> %i.bq, <16 x float> %i.bt, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec610, ptr %i.bb, align 16, !tbaa !12, !alias.scope !41
  %index.next611 = add nuw i64 %index575, 8       ; 2 uses
  %vec.ind.next612 = add nuw nsw <8 x i64> %vec.ind576, splat (i64 8)
  %i.bu = icmp eq i64 %index.next611, %n.vec571
  br i1 %i.bu, label %middle.block613, label %vector.body574, !llvm.loop !21

middle.block613:                                  ; preds = %vector.body574
  br i1 %cmp.n614, label %._crit_edge.us.us.i, label %scalar.ph456.preheader

scalar.ph456.preheader:                           ; preds = %vector.memcheck458, %.lr.ph.us.us.i, %middle.block613
  %.07479.us.us.i.ph = phi i64 [ 0, %vector.memcheck458 ], [ 0, %.lr.ph.us.us.i ], [ %n.vec571, %middle.block613 ]
  br label %scalar.ph456

scalar.ph456:                                     ; preds = %scalar.ph456.preheader, %scalar.ph456
  %.07479.us.us.i = phi i64 [ %i.cw, %scalar.ph456 ], [ %.07479.us.us.i.ph, %scalar.ph456.preheader ] ; 3 uses
  %i.bv = shl i64 %.07479.us.us.i, 3
  %i.bw = add i64 %i.bv, %factor.op.mul.reass.us.us.i ; 2 uses
  %i.bx = shl i64 %.07479.us.us.i, 2              ; 5 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bw
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bw
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.bx
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.bx
  %i.cc = or disjoint i64 %i.bx, 1                ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.cc
  %i.cf = or disjoint i64 %i.bx, 2                ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.cf
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.cf
  %i.ci = or disjoint i64 %i.bx, 3                ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ci
  %i.ck = load <8 x float>, ptr %i.by, align 4, !tbaa !12, !noalias !41
  %i.cl = load <8 x float>, ptr %i.bz, align 4, !tbaa !12, !noalias !41
  %i.cm = fsub reassoc nsz arcp contract afn <8 x float> %i.ck, %i.cl ; 8 uses
  %i.cn = extractelement <8 x float> %i.cm, i64 0
  store float %i.cn, ptr %i.ca, align 16, !tbaa !12, !alias.scope !41
  %i.co = extractelement <8 x float> %i.cm, i64 4
  store float %i.co, ptr %i.cb, align 16, !tbaa !12, !alias.scope !41
  %i.cp = extractelement <8 x float> %i.cm, i64 1
  store float %i.cp, ptr %i.cd, align 4, !tbaa !12, !alias.scope !41
  %i.cq = extractelement <8 x float> %i.cm, i64 5
  store float %i.cq, ptr %i.ce, align 4, !tbaa !12, !alias.scope !41
  %i.cr = extractelement <8 x float> %i.cm, i64 2
  store float %i.cr, ptr %i.cg, align 8, !tbaa !12, !alias.scope !41
  %i.cs = extractelement <8 x float> %i.cm, i64 6
  store float %i.cs, ptr %i.ch, align 8, !tbaa !12, !alias.scope !41
  %i.ct = extractelement <8 x float> %i.cm, i64 3
  store float %i.ct, ptr %i.cj, align 4, !tbaa !12, !alias.scope !41
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ci
  %i.cv = extractelement <8 x float> %i.cm, i64 7
  store float %i.cv, ptr %i.cu, align 4, !tbaa !12, !alias.scope !41
  %i.cw = add nuw nsw i64 %.07479.us.us.i, 1      ; 2 uses
  %exitcond93.not.i = icmp eq i64 %i.cw, %i.v
  br i1 %exitcond93.not.i, label %._crit_edge.us.us.i, label %scalar.ph456, !llvm.loop !22

._crit_edge.us.us.i:                              ; preds = %scalar.ph456, %middle.block613
  %exitcond94.not.i = icmp eq i64 %i.ah, %i.r
  br i1 %exitcond94.not.i, label %_heal_sub.exit, label %.lr.ph.us.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %.07582.us.i = phi i64 [ %i.cx, %._crit_edge.us.i ], [ 0, %.lr.ph.us.preheader.i ] ; 4 uses
  %i.cx = add nuw i64 %.07582.us.i, 1             ; 3 uses
  %i.cy = mul i64 %i.cx, %i.u                     ; 2 uses
  %i.cz = and i64 %.07582.us.i, 1
  %.not.us.i = icmp eq i64 %i.cz, 0               ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.cy ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.cy ; 2 uses
  %i.dc = select i1 %.not.us.i, ptr %i.db, ptr %i.da ; 17 uses
  %i.dd = select i1 %.not.us.i, ptr %i.da, ptr %i.db ; 17 uses
  %factor.op.mul.reass.us.i = mul i64 %.07582.us.i, %factor.op.mul81.i ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us.i
  %i.de = getelementptr i8, ptr %i.dc, i64 %i.ag  ; 4 uses
  %i.df = getelementptr i8, ptr %i.dd, i64 %i.ag  ; 4 uses
  %i.dg = getelementptr nuw i8, ptr %i.dd, i64 4  ; 4 uses
  %i.dh = getelementptr i8, ptr %i.dd, i64 %i.af  ; 4 uses
  %i.di = getelementptr nuw i8, ptr %i.dd, i64 8  ; 4 uses
  %i.dj = getelementptr i8, ptr %i.dd, i64 %i.ae  ; 4 uses
  %i.dk = getelementptr nuw i8, ptr %i.dd, i64 12 ; 4 uses
  %i.dl = getelementptr i8, ptr %i.dd, i64 %i.ad  ; 4 uses
  %13 = getelementptr nuw i8, ptr %i.dc, i64 4    ; 4 uses
  %14 = getelementptr i8, ptr %i.dc, i64 %i.af    ; 4 uses
  %15 = getelementptr nuw i8, ptr %i.dc, i64 8    ; 4 uses
  %16 = getelementptr i8, ptr %i.dc, i64 %i.ae    ; 4 uses
  %17 = getelementptr nuw i8, ptr %i.dc, i64 12   ; 4 uses
  %18 = getelementptr i8, ptr %i.dc, i64 %i.ad    ; 4 uses
  %bound0236 = icmp ult ptr %i.dc, %i.df
  %bound1237 = icmp ult ptr %i.dd, %i.de
  %found.conflict238 = and i1 %bound0236, %bound1237
  %bound0240 = icmp ult ptr %i.dc, %i.dh
  %bound1241 = icmp ult ptr %i.dg, %i.de
  %found.conflict242 = and i1 %bound0240, %bound1241
  %conflict.rdx243 = or i1 %found.conflict238, %found.conflict242
  %bound0244 = icmp ult ptr %i.dc, %i.dj
  %bound1245 = icmp ult ptr %i.di, %i.de
  %found.conflict246 = and i1 %bound0244, %bound1245
  %conflict.rdx247 = or i1 %conflict.rdx243, %found.conflict246
  %bound0248 = icmp ult ptr %i.dc, %i.dl
  %bound1249 = icmp ult ptr %i.dk, %i.de
  %found.conflict250 = and i1 %bound0248, %bound1249
  %conflict.rdx251 = or i1 %conflict.rdx247, %found.conflict250
  %bound0252 = icmp ult ptr %i.dd, %14
  %bound1253 = icmp ult ptr %13, %i.df
  %found.conflict254 = and i1 %bound0252, %bound1253
  %conflict.rdx255 = or i1 %conflict.rdx251, %found.conflict254
  %bound0256 = icmp ult ptr %i.dd, %16
  %bound1257 = icmp ult ptr %15, %i.df
  %found.conflict258 = and i1 %bound0256, %bound1257
  %conflict.rdx259 = or i1 %conflict.rdx255, %found.conflict258
  %bound0260 = icmp ult ptr %i.dd, %18
  %bound1261 = icmp ult ptr %17, %i.df
  %found.conflict262 = and i1 %bound0260, %bound1261
  %conflict.rdx263 = or i1 %conflict.rdx259, %found.conflict262
  %bound0264 = icmp ult ptr %13, %i.dh
  %bound1265 = icmp ult ptr %i.dg, %14
  %found.conflict266 = and i1 %bound0264, %bound1265
  %conflict.rdx267 = or i1 %conflict.rdx263, %found.conflict266
  %bound0268 = icmp ult ptr %13, %i.dj
  %bound1269 = icmp ult ptr %i.di, %14
  %found.conflict270 = and i1 %bound0268, %bound1269
  %conflict.rdx271 = or i1 %conflict.rdx267, %found.conflict270
  %bound0272 = icmp ult ptr %13, %i.dl
  %bound1273 = icmp ult ptr %i.dk, %14
  %found.conflict274 = and i1 %bound0272, %bound1273
  %conflict.rdx275 = or i1 %conflict.rdx271, %found.conflict274
  %bound0276 = icmp ult ptr %i.dg, %16
  %bound1277 = icmp ult ptr %15, %i.dh
  %found.conflict278 = and i1 %bound0276, %bound1277
  %conflict.rdx279 = or i1 %conflict.rdx275, %found.conflict278
  %bound0280 = icmp ult ptr %i.dg, %18
  %bound1281 = icmp ult ptr %17, %i.dh
  %found.conflict282 = and i1 %bound0280, %bound1281
  %conflict.rdx283 = or i1 %conflict.rdx279, %found.conflict282
  %bound0284 = icmp ult ptr %15, %i.dj
  %bound1285 = icmp ult ptr %i.di, %16
  %found.conflict286 = and i1 %bound0284, %bound1285
  %conflict.rdx287 = or i1 %conflict.rdx283, %found.conflict286
  %bound0288 = icmp ult ptr %15, %i.dl
  %bound1289 = icmp ult ptr %i.dk, %16
  %found.conflict290 = and i1 %bound0288, %bound1289
  %conflict.rdx291 = or i1 %conflict.rdx287, %found.conflict290
  %bound0292 = icmp ult ptr %i.di, %18
  %bound1293 = icmp ult ptr %17, %i.dj
  %found.conflict294 = and i1 %bound0292, %bound1293
  %conflict.rdx295 = or i1 %conflict.rdx291, %found.conflict294
  %bound0296 = icmp ult ptr %17, %i.dl
  %bound1297 = icmp ult ptr %i.dk, %18
  %found.conflict298 = and i1 %bound0296, %bound1297
  %conflict.rdx299 = or i1 %conflict.rdx295, %found.conflict298
  br i1 %conflict.rdx299, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %factor.op.mul.reass.us.i, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.dm = shl <8 x i64> %vec.ind, splat (i64 3)
  %i.dn = add <8 x i64> %i.dm, %broadcast.splat   ; 9 uses
  %i.do = shl i64 %index, 2                       ; 2 uses
  %i.dp = add <8 x i64> %i.dn, splat (i64 4)      ; 2 uses
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.dn
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %wide.gep300 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.dn
  %wide.masked.gather301 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep300, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.do
  %wide.gep302 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.dp
  %wide.masked.gather303 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep302, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %wide.gep304 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.dp
  %wide.masked.gather305 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep304, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.do
  %i.ds = or disjoint <8 x i64> %i.dn, splat (i64 1) ; 2 uses
  %wide.gep306 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.ds
  %wide.masked.gather307 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep306, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %wide.gep308 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.ds
  %wide.masked.gather309 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep308, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %i.dt = add <8 x i64> %i.dn, splat (i64 5)      ; 2 uses
  %wide.gep310 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.dt
  %wide.masked.gather311 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep310, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %wide.gep312 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.dt
  %wide.masked.gather313 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep312, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %i.du = or disjoint <8 x i64> %i.dn, splat (i64 2) ; 2 uses
  %wide.gep314 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.du
  %wide.masked.gather315 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep314, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %wide.gep316 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.du
  %wide.masked.gather317 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep316, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %i.dv = add <8 x i64> %i.dn, splat (i64 6)      ; 2 uses
  %wide.gep318 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.dv
  %wide.masked.gather319 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep318, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %wide.gep320 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.dv
  %wide.masked.gather321 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep320, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %i.dw = or disjoint <8 x i64> %i.dn, splat (i64 3) ; 2 uses
  %wide.gep322 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.dw
  %wide.masked.gather323 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep322, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %wide.gep324 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.dw
  %wide.masked.gather325 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep324, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %i.dx = shufflevector <8 x float> %wide.masked.gather, <8 x float> %wide.masked.gather307, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dy = shufflevector <8 x float> %wide.masked.gather301, <8 x float> %wide.masked.gather309, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dz = fsub reassoc nsz arcp contract afn <16 x float> %i.dx, %i.dy
  %i.ea = shufflevector <8 x float> %wide.masked.gather315, <8 x float> %wide.masked.gather323, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eb = shufflevector <8 x float> %wide.masked.gather317, <8 x float> %wide.masked.gather325, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ec = fsub reassoc nsz arcp contract afn <16 x float> %i.ea, %i.eb
  %interleaved.vec = shufflevector <16 x float> %i.dz, <16 x float> %i.ec, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.dq, align 16, !tbaa !12, !alias.scope !41
  %i.ed = add <8 x i64> %i.dn, splat (i64 7)      ; 2 uses
  %wide.gep326 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.ed
  %wide.masked.gather327 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep326, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %wide.gep328 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.ed
  %wide.masked.gather329 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep328, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !41
  %i.ee = shufflevector <8 x float> %wide.masked.gather303, <8 x float> %wide.masked.gather311, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ef = shufflevector <8 x float> %wide.masked.gather305, <8 x float> %wide.masked.gather313, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eg = fsub reassoc nsz arcp contract afn <16 x float> %i.ee, %i.ef
  %i.eh = shufflevector <8 x float> %wide.masked.gather319, <8 x float> %wide.masked.gather327, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ei = shufflevector <8 x float> %wide.masked.gather321, <8 x float> %wide.masked.gather329, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ej = fsub reassoc nsz arcp contract afn <16 x float> %i.eh, %i.ei
  %interleaved.vec330 = shufflevector <16 x float> %i.eg, <16 x float> %i.ej, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec330, ptr %i.dr, align 16, !tbaa !12, !alias.scope !41
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us.i, %middle.block
  %.07479.us.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07479.us.i = phi i64 [ %i.fm, %scalar.ph ], [ %.07479.us.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.el = shl i64 %.07479.us.i, 3
  %i.em = add i64 %i.el, %factor.op.mul.reass.us.i ; 2 uses
  %i.en = shl i64 %.07479.us.i, 2                 ; 5 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.em
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.em
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.en
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.en
  %i.es = or disjoint i64 %i.en, 1                ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.es
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.es
  %i.ev = or disjoint i64 %i.en, 2                ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.ev
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.ev
  %i.ey = or disjoint i64 %i.en, 3                ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.ey
  %i.fa = load <8 x float>, ptr %i.eo, align 4, !tbaa !12, !noalias !41
  %i.fb = load <8 x float>, ptr %i.ep, align 4, !tbaa !12, !noalias !41
  %i.fc = fsub reassoc nsz arcp contract afn <8 x float> %i.fa, %i.fb ; 8 uses
  %i.fd = extractelement <8 x float> %i.fc, i64 0
  store float %i.fd, ptr %i.eq, align 16, !tbaa !12, !alias.scope !41
  %i.fe = extractelement <8 x float> %i.fc, i64 4
  store float %i.fe, ptr %i.er, align 16, !tbaa !12, !alias.scope !41
  %i.ff = extractelement <8 x float> %i.fc, i64 1
  store float %i.ff, ptr %i.et, align 4, !tbaa !12, !alias.scope !41
  %i.fg = extractelement <8 x float> %i.fc, i64 5
  store float %i.fg, ptr %i.eu, align 4, !tbaa !12, !alias.scope !41
  %i.fh = extractelement <8 x float> %i.fc, i64 2
  store float %i.fh, ptr %i.ew, align 8, !tbaa !12, !alias.scope !41
  %i.fi = extractelement <8 x float> %i.fc, i64 6
  store float %i.fi, ptr %i.ex, align 8, !tbaa !12, !alias.scope !41
  %i.fj = extractelement <8 x float> %i.fc, i64 3
  store float %i.fj, ptr %i.ez, align 4, !tbaa !12, !alias.scope !41
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.ey
  %i.fl = extractelement <8 x float> %i.fc, i64 7
  store float %i.fl, ptr %i.fk, align 4, !tbaa !12, !alias.scope !41
  %i.fm = add nuw nsw i64 %.07479.us.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fm, %i.v
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %scalar.ph, !llvm.loop !24

._crit_edge.us.i:                                 ; preds = %scalar.ph, %middle.block
  %i.fn = mul i64 %.07582.us.i, %i.q
  %i.fo = add i64 %i.fn, %i.x
  %i.fp = shl i64 %i.fo, 2                        ; 2 uses
  %i.fq = getelementptr i8, ptr %i.dd, i64 %i.ac
  %scevgep.i = getelementptr i8, ptr %i.fq, i64 -8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %scevgep.i, i8 0, i64 16, i1 false), !tbaa !12, !alias.scope !41
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fp
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fp
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.idx
  %i.fu = load <4 x float>, ptr %i.fr, align 4, !tbaa !12, !noalias !41
  %i.fv = load <4 x float>, ptr %i.fs, align 4, !tbaa !12, !noalias !41
  %i.fw = fsub reassoc nsz arcp contract afn <4 x float> %i.fu, %i.fv
  store <4 x float> %i.fw, ptr %i.ft, align 16, !tbaa !12, !alias.scope !41
  %exitcond91.not.i = icmp eq i64 %i.cx, %i.r
  br i1 %exitcond91.not.i, label %_heal_sub.exit, label %.lr.ph.us.i

.lr.ph84.split.i:                                 ; preds = %.lr.ph84.i
  br i1 %.not77.i, label %_heal_sub.exit, label %.lr.ph84.split.split.i.preheader

.lr.ph84.split.split.i.preheader:                 ; preds = %.lr.ph84.split.i
  %xtraiter = and i64 %i.r, 3
  %i.fx = icmp ult i32 %4, 4
  br i1 %i.fx, label %.lr.ph84.split.split.i.epil.preheader, label %.lr.ph84.split.split.i.preheader.new

.lr.ph84.split.split.i.preheader.new:             ; preds = %.lr.ph84.split.split.i.preheader
  %unroll_iter = and i64 %i.r, -4
  br label %.lr.ph84.split.split.i

.lr.ph84.split.split.i:                           ; preds = %.lr.ph84.split.split.i, %.lr.ph84.split.split.i.preheader.new
  %.07582.i = phi i64 [ 0, %.lr.ph84.split.split.i.preheader.new ], [ %i.hc, %.lr.ph84.split.split.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph84.split.split.i.preheader.new ], [ %niter.next.3, %.lr.ph84.split.split.i ]
  %i.fy = or disjoint i64 %.07582.i, 1            ; 2 uses
  %i.fz = mul i64 %i.fy, %i.u                     ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.fz
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.fz
  %i.gc = shl i64 %.07582.i, 2                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ga, i8 0, i64 16, i1 false), !tbaa !12, !alias.scope !41
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gc
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gc
  %i.gf = load <4 x float>, ptr %i.gd, align 4, !tbaa !12, !noalias !41
  %i.gg = load <4 x float>, ptr %i.ge, align 4, !tbaa !12, !noalias !41
  %i.gh = fsub reassoc nsz arcp contract afn <4 x float> %i.gf, %i.gg
  store <4 x float> %i.gh, ptr %i.gb, align 16, !tbaa !12, !alias.scope !41
  %i.gi = or disjoint i64 %.07582.i, 2            ; 2 uses
  %i.gj = mul i64 %i.gi, %i.u                     ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.gj
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.gj
  %i.gm = shl i64 %i.fy, 2                        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(16) %i.gl, i8 0, i64 16, i1 false), !tbaa !12, !alias.scope !41
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gm
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gm
  %i.gp = load <4 x float>, ptr %i.gn, align 4, !tbaa !12, !noalias !41
  %i.gq = load <4 x float>, ptr %i.go, align 4, !tbaa !12, !noalias !41
  %i.gr = fsub reassoc nsz arcp contract afn <4 x float> %i.gp, %i.gq
  store <4 x float> %i.gr, ptr %i.gk, align 32, !tbaa !12, !alias.scope !41
  %i.gs = or disjoint i64 %.07582.i, 3            ; 2 uses
  %i.gt = mul i64 %i.gs, %i.u                     ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.gt
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.gt
  %i.gw = shl i64 %i.gi, 2                        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.gu, i8 0, i64 16, i1 false), !tbaa !12, !alias.scope !41
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gw
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gw
  %i.gz = load <4 x float>, ptr %i.gx, align 4, !tbaa !12, !noalias !41
  %i.ha = load <4 x float>, ptr %i.gy, align 4, !tbaa !12, !noalias !41
  %i.hb = fsub reassoc nsz arcp contract afn <4 x float> %i.gz, %i.ha
  store <4 x float> %i.hb, ptr %i.gv, align 16, !tbaa !12, !alias.scope !41
  %i.hc = add nuw i64 %.07582.i, 4                ; 3 uses
  %i.hd = mul i64 %i.hc, %i.u                     ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.hd
end_hunk_0
