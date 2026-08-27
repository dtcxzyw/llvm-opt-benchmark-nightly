Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlasd7?download=true
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@dlasd7_:bb.a
  %i.x = add nsw i32 %i.w, 1                      ; 5 uses
  %i.y = load i32, ptr %3, align 4, !tbaa !8      ; 3 uses
  %i.z = add nsw i32 %i.x, %i.y                   ; 4 uses
  %i.aa = load i32, ptr %0, align 4, !tbaa !8     ; 2 uses
  %or.cond = icmp ugt i32 %i.aa, 1
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = icmp slt i32 %i.u, 1
  br i1 %i.ab, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = icmp slt i32 %i.v, 1
  br i1 %i.ac, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %or.cond427 = icmp ugt i32 %i.y, 1
  br i1 %or.cond427, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %21, align 4, !tbaa !8
  %.not = icmp sgt i32 %i.ad, %i.w
  br i1 %.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ae = load i32, ptr %23, align 4, !tbaa !8
  %.not415 = icmp sgt i32 %i.ae, %i.w
  br i1 %.not415, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sink = phi i32 [ -1, %bb.a ], [ -2, %bb.b ], [ -4, %bb.d ], [ -22, %bb.e ], [ -3, %bb.c ], [ -24, %bb.f ]
  %.neg = phi i32 [ 1, %bb.a ], [ 2, %bb.b ], [ 4, %bb.d ], [ 22, %bb.e ], [ 3, %bb.c ], [ 24, %bb.f ]
  store i32 %.sink, ptr %26, align 4, !tbaa !8
  store i32 %.neg, ptr %i.a, align 4, !tbaa !8
  %i.af = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 6) #5 ; 0 uses
  br label %bb.ad

bb.g:                                             ; preds = %bb.f
  %i.ag = add nuw nsw i32 %i.u, 1                 ; 11 uses
  %i.ah = add nuw i32 %i.u, 2                     ; 4 uses
  %i.ai = icmp eq i32 %i.aa, 1
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %19, align 4, !tbaa !8
  %.pre = load i32, ptr %1, align 4, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = phi i32 [ %.pre, %bb.h ], [ %i.u, %bb.g ] ; 3 uses
  %i.ak = load double, ptr %12, align 8, !tbaa !9
  %i.al = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.al ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !9
  %i.ao = fmul double %i.ak, %i.an                ; 3 uses
  store double %i.ao, ptr %i.b, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.am, align 8, !tbaa !9
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.al
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !9
  %i.ar = icmp sgt i32 %i.aj, 0
  br i1 %i.ar, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.as = zext nneg i32 %i.aj to i64              ; 7 uses
  %min.iters.check = icmp ult i32 %i.aj, 28
  br i1 %min.iters.check, label %.lr.ph.preheader658, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %6, i64 8      ; 4 uses
  %i.at = shl nuw nsw i64 %i.as, 3                ; 2 uses
  %i.au = add nuw nsw i64 %i.at, 8                ; 3 uses
  %scevgep536 = getelementptr i8, ptr %6, i64 %i.au ; 4 uses
  %scevgep537 = getelementptr i8, ptr %10, i64 %i.at ; 4 uses
  %scevgep538 = getelementptr i8, ptr %8, i64 %i.au ; 4 uses
  %scevgep539 = getelementptr i8, ptr %5, i64 %i.au ; 4 uses
  %scevgep540 = getelementptr i8, ptr %12, i64 8  ; 4 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep537
  %bound1 = icmp ult ptr %10, %scevgep536
  %found.conflict = and i1 %bound0, %bound1
  %bound0541 = icmp ult ptr %scevgep, %scevgep538
  %bound1542 = icmp ult ptr %8, %scevgep536
  %found.conflict543 = and i1 %bound0541, %bound1542
  %conflict.rdx = or i1 %found.conflict, %found.conflict543
  %bound0544 = icmp ult ptr %scevgep, %scevgep539
  %bound1545 = icmp ult ptr %5, %scevgep536
  %found.conflict546 = and i1 %bound0544, %bound1545
  %conflict.rdx547 = or i1 %conflict.rdx, %found.conflict546
  %bound0548 = icmp ult ptr %scevgep, %scevgep540
  %bound1549 = icmp ult ptr %12, %scevgep536
  %found.conflict550 = and i1 %bound0548, %bound1549
  %conflict.rdx551 = or i1 %conflict.rdx547, %found.conflict550
  %bound0552 = icmp ult ptr %10, %scevgep538
  %bound1553 = icmp ult ptr %8, %scevgep537
  %found.conflict554 = and i1 %bound0552, %bound1553
  %conflict.rdx555 = or i1 %conflict.rdx551, %found.conflict554
  %bound0556 = icmp ult ptr %10, %scevgep539
  %bound1557 = icmp ult ptr %5, %scevgep537
  %found.conflict558 = and i1 %bound0556, %bound1557
  %conflict.rdx559 = or i1 %conflict.rdx555, %found.conflict558
  %bound0560 = icmp ult ptr %10, %scevgep540
  %bound1561 = icmp ult ptr %12, %scevgep537
  %found.conflict562 = and i1 %bound0560, %bound1561
  %conflict.rdx563 = or i1 %conflict.rdx559, %found.conflict562
  %bound0564 = icmp ult ptr %8, %scevgep539
  %bound1565 = icmp ult ptr %5, %scevgep538
  %found.conflict566 = and i1 %bound0564, %bound1565
  %conflict.rdx567 = or i1 %conflict.rdx563, %found.conflict566
  %bound0568 = icmp ult ptr %8, %scevgep540
  %bound1569 = icmp ult ptr %12, %scevgep538
  %found.conflict570 = and i1 %bound0568, %bound1569
  %conflict.rdx571 = or i1 %conflict.rdx567, %found.conflict570
  %bound0572 = icmp ult ptr %5, %scevgep540
  %bound1573 = icmp ult ptr %12, %scevgep539
  %found.conflict574 = and i1 %bound0572, %bound1573
  %conflict.rdx575 = or i1 %conflict.rdx571, %found.conflict574
  br i1 %conflict.rdx575, label %.lr.ph.preheader658, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.as, 2147483644              ; 2 uses
  %i.av = and i64 %i.as, 3
  %i.aw = load double, ptr %12, align 8, !tbaa !9, !alias.scope !11
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.aw, i64 0
  %i.ax = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = sub i64 %i.as, %index                   ; 8 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -24 ; 2 uses
  %wide.load = load <4 x double>, ptr %i.ba, align 8, !tbaa !9, !alias.scope !14, !noalias !16
  %i.bb = getelementptr [8 x i8], ptr %6, i64 %i.ay
  %i.bc = getelementptr i8, ptr %i.bb, i64 -24
  %reverse576 = fmul <4 x double> %i.ax, %wide.load
  store <4 x double> %reverse576, ptr %i.bc, align 8, !tbaa !9, !alias.scope !19, !noalias !21
  store <4 x double> zeroinitializer, ptr %i.ba, align 8, !tbaa !9, !alias.scope !14, !noalias !16
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ay
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -24
  %wide.load577 = load <4 x double>, ptr %i.be, align 8, !tbaa !9, !alias.scope !22, !noalias !23
  %i.bf = getelementptr [8 x i8], ptr %8, i64 %i.ay
  %i.bg = getelementptr i8, ptr %i.bf, i64 -24
  store <4 x double> %wide.load577, ptr %i.bg, align 8, !tbaa !9, !alias.scope !22, !noalias !23
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ay
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -24
  %wide.load578 = load <4 x double>, ptr %i.bi, align 8, !tbaa !9, !alias.scope !24, !noalias !11
  %i.bj = getelementptr [8 x i8], ptr %5, i64 %i.ay
  %i.bk = getelementptr i8, ptr %i.bj, i64 -24
  store <4 x double> %wide.load578, ptr %i.bk, align 8, !tbaa !9, !alias.scope !24, !noalias !11
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ay
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -12
  %wide.load579 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !8, !alias.scope !25
  %i.bn = add nsw <4 x i32> %wide.load579, splat (i32 1)
  %i.bo = getelementptr [4 x i8], ptr %17, i64 %i.ay
  %i.bp = getelementptr i8, ptr %i.bo, i64 -12
  store <4 x i32> %i.bn, ptr %i.bp, align 4, !tbaa !8, !alias.scope !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.as
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader658

.lr.ph.preheader658:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.as, %vector.memcheck ], [ %i.as, %.lr.ph.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader658, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader658 ] ; 10 uses
  %i.br = load double, ptr %12, align 8, !tbaa !9
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !9
  %i.bu = fmul double %i.br, %i.bt
  %i.bv = getelementptr [8 x i8], ptr %6, i64 %indvars.iv
  store double %i.bu, ptr %i.bv, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.bs, align 8, !tbaa !9
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !9
  %i.by = getelementptr [8 x i8], ptr %8, i64 %indvars.iv
  store double %i.bx, ptr %i.by, align 8, !tbaa !9
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !9
  %i.cb = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  store double %i.ca, ptr %i.cb, align 8, !tbaa !9
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !8
  %i.ce = add nsw i32 %i.cd, 1
  %i.cf = getelementptr [4 x i8], ptr %17, i64 %indvars.iv
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !8
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.cg = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.cg, label %.lr.ph, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.i
  store double %i.aq, ptr %8, align 8, !tbaa !9
  store i32 %i.z, ptr %i.a, align 4, !tbaa !8
  %.not417434 = icmp sgt i32 %i.ah, %i.z
  br i1 %.not417434, label %._crit_edge438, label %iter.check

iter.check:                                       ; preds = %._crit_edge
  %i.ch = sext i32 %i.ah to i64                   ; 9 uses
  %i.ci = sext i32 %i.z to i64                    ; 3 uses
  %i.cj = add nsw i64 %i.ci, 1
  %i.ck = sub nsw i64 %i.cj, %i.ch                ; 7 uses
  %min.iters.check600 = icmp ult i64 %i.ck, 4
  br i1 %min.iters.check600, label %.lr.ph437.preheader, label %vector.memcheck580

vector.memcheck580:                               ; preds = %iter.check
  %i.cl = shl nsw i64 %i.ch, 3
  %i.cm = add nsw i64 %i.cl, -8                   ; 2 uses
  %scevgep581 = getelementptr i8, ptr %6, i64 %i.cm ; 2 uses
  %smax582 = tail call i64 @llvm.smax.i64(i64 %i.ci, i64 %i.ch)
  %i.cn = shl nsw i64 %smax582, 3                 ; 2 uses
  %scevgep583.a = getelementptr i8, ptr %6, i64 %i.cn ; 2 uses
  %scevgep584.a = getelementptr i8, ptr %8, i64 %i.cm ; 2 uses
  %scevgep585.a = getelementptr i8, ptr %8, i64 %i.cn ; 2 uses
  %scevgep586 = getelementptr i8, ptr %13, i64 8  ; 2 uses
  %bound0587 = icmp ult ptr %scevgep581, %scevgep585.a
  %bound1588 = icmp ult ptr %scevgep584.a, %scevgep583.a
  %found.conflict589 = and i1 %bound0587, %bound1588
  %bound0590 = icmp ult ptr %scevgep581, %scevgep586
  %bound1591 = icmp ult ptr %13, %scevgep583.a
  %found.conflict592 = and i1 %bound0590, %bound1591
  %conflict.rdx593 = or i1 %found.conflict589, %found.conflict592
  %bound0594 = icmp ult ptr %scevgep584.a, %scevgep586
  %bound1595 = icmp ult ptr %13, %scevgep585.a
  %found.conflict596 = and i1 %bound0594, %bound1595
  %conflict.rdx597 = or i1 %conflict.rdx593, %found.conflict596
  br i1 %conflict.rdx597, label %.lr.ph437.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck580
  %min.iters.check601 = icmp ult i64 %i.ck, 16
  br i1 %min.iters.check601, label %vec.epilog.ph, label %vector.ph602

vector.ph602:                                     ; preds = %vector.main.loop.iter.check
  %i.co = and i64 %i.ck, 12
  %n.vec603 = and i64 %i.ck, -16                  ; 4 uses
  %i.cp = add nsw i64 %n.vec603, %i.ch
  %i.cq = load double, ptr %13, align 8, !tbaa !9, !alias.scope !32
  %broadcast.splatinsert610 = insertelement <4 x double> poison, double %i.cq, i64 0
  %broadcast.splat611 = shufflevector <4 x double> %broadcast.splatinsert610, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body604

vector.body604:                                   ; preds = %vector.body604, %vector.ph602
  %index605 = phi i64 [ 0, %vector.ph602 ], [ %index.next612, %vector.body604 ] ; 2 uses
  %i.cr = add i64 %index605, %i.ch                ; 2 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.cr ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 64 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 96 ; 2 uses
  %wide.load606.a = load <4 x double>, ptr %i.cs, align 8, !tbaa !9, !alias.scope !35, !noalias !32
  %wide.load607.a = load <4 x double>, ptr %i.ct, align 8, !tbaa !9, !alias.scope !35, !noalias !32
  %wide.load608 = load <4 x double>, ptr %i.cu, align 8, !tbaa !9, !alias.scope !35, !noalias !32
  %wide.load609 = load <4 x double>, ptr %i.cv, align 8, !tbaa !9, !alias.scope !35, !noalias !32
  %i.cw = fmul <4 x double> %broadcast.splat611, %wide.load606.a
  %i.cx = fmul <4 x double> %broadcast.splat611, %wide.load607.a
  %i.cy = fmul <4 x double> %broadcast.splat611, %wide.load608
  %i.cz = fmul <4 x double> %broadcast.splat611, %wide.load609
  %i.da = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.cr ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 96
  store <4 x double> %i.cw, ptr %i.da, align 8, !tbaa !9, !alias.scope !37, !noalias !39
  store <4 x double> %i.cx, ptr %i.db, align 8, !tbaa !9, !alias.scope !37, !noalias !39
  store <4 x double> %i.cy, ptr %i.dc, align 8, !tbaa !9, !alias.scope !37, !noalias !39
  store <4 x double> %i.cz, ptr %i.dd, align 8, !tbaa !9, !alias.scope !37, !noalias !39
  store <4 x double> zeroinitializer, ptr %i.cs, align 8, !tbaa !9, !alias.scope !35, !noalias !32
  store <4 x double> zeroinitializer, ptr %i.ct, align 8, !tbaa !9, !alias.scope !35, !noalias !32
  store <4 x double> zeroinitializer, ptr %i.cu, align 8, !tbaa !9, !alias.scope !35, !noalias !32
  store <4 x double> zeroinitializer, ptr %i.cv, align 8, !tbaa !9, !alias.scope !35, !noalias !32
  %index.next612 = add nuw i64 %index605, 16      ; 2 uses
  %i.de = icmp eq i64 %index.next612, %n.vec603
  br i1 %i.de, label %middle.block613, label %vector.body604, !llvm.loop !40

middle.block613:                                  ; preds = %vector.body604
  %cmp.n614 = icmp eq i64 %i.ck, %n.vec603
  br i1 %cmp.n614, label %._crit_edge438, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block613
  %min.epilog.iters.check = icmp eq i64 %i.co, 0
  br i1 %min.epilog.iters.check, label %.lr.ph437.preheader, label %vec.epilog.ph, !prof !41

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec603, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec616 = and i64 %i.ck, -4                   ; 3 uses
  %i.df = add nsw i64 %n.vec616, %i.ch
  %i.dg = load double, ptr %13, align 8, !tbaa !9, !alias.scope !32
  %broadcast.splatinsert619 = insertelement <4 x double> poison, double %i.dg, i64 0
  %broadcast.splat620 = shufflevector <4 x double> %broadcast.splatinsert619, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index617 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next621, %vec.epilog.vector.body ] ; 2 uses
  %i.dh = add i64 %index617, %i.ch                ; 2 uses
  %i.di = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.dh ; 2 uses
  %wide.load618 = load <4 x double>, ptr %i.di, align 8, !tbaa !9, !alias.scope !35, !noalias !32
  %i.dj = fmul <4 x double> %broadcast.splat620, %wide.load618
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.dh
  store <4 x double> %i.dj, ptr %i.dk, align 8, !tbaa !9, !alias.scope !37, !noalias !39
  store <4 x double> zeroinitializer, ptr %i.di, align 8, !tbaa !9, !alias.scope !35, !noalias !32
  %index.next621 = add nuw i64 %index617, 4       ; 2 uses
  %i.dl = icmp eq i64 %index.next621, %n.vec616
  br i1 %i.dl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !42

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n622 = icmp eq i64 %i.ck, %n.vec616
  br i1 %cmp.n622, label %._crit_edge438, label %.lr.ph437.preheader

.lr.ph437.preheader:                              ; preds = %vector.memcheck580, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv481.ph = phi i64 [ %i.ch, %iter.check ], [ %i.ch, %vector.memcheck580 ], [ %i.cp, %vec.epilog.iter.check ], [ %i.df, %vec.epilog.middle.block ]
  br label %.lr.ph437

.lr.ph437:                                        ; preds = %.lr.ph437.preheader, %.lr.ph437
  %indvars.iv481 = phi i64 [ %indvars.iv.next482, %.lr.ph437 ], [ %indvars.iv481.ph, %.lr.ph437.preheader ] ; 4 uses
  %i.dm = load double, ptr %13, align 8, !tbaa !9
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.f, i64 %indvars.iv481 ; 2 uses
  %i.do = load double, ptr %i.dn, align 8, !tbaa !9
  %i.dp = fmul double %i.dm, %i.do
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv481
  store double %i.dp, ptr %i.dq, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.dn, align 8, !tbaa !9
  %indvars.iv.next482 = add nsw i64 %indvars.iv481, 1
  %.not417.not = icmp slt i64 %indvars.iv481, %i.ci
  br i1 %.not417.not, label %.lr.ph437, label %._crit_edge438, !llvm.loop !43

._crit_edge438:                                   ; preds = %.lr.ph437, %middle.block613, %vec.epilog.middle.block, %._crit_edge
  %.not418439 = icmp sgt i32 %i.ah, %i.x
  br i1 %.not418439, label %.lr.ph447.preheader, label %iter.check643

iter.check643:                                    ; preds = %._crit_edge438
  %i.dr = sext i32 %i.ah to i64                   ; 5 uses
  %i.ds = add i32 %i.w, 2
  %i.dt = zext nneg i32 %i.v to i64               ; 5 uses
  %min.iters.check625.a = icmp ult i32 %i.v, 8
  br i1 %min.iters.check625.a, label %.lr.ph442.preheader, label %vector.main.loop.iter.check626

vector.main.loop.iter.check626:                   ; preds = %iter.check643
  %min.iters.check627 = icmp ult i32 %i.v, 32
  br i1 %min.iters.check627, label %vec.epilog.ph647, label %vector.ph628

vector.ph628:                                     ; preds = %vector.main.loop.iter.check626
  %i.du = and i64 %i.dt, 24
  %n.vec629 = and i64 %i.dt, 2147483616           ; 4 uses
  %i.dv = add nsw i64 %n.vec629, %i.dr
  %broadcast.splatinsert630 = insertelement <8 x i32> poison, i32 %i.ag, i64 0
  %broadcast.splat631 = shufflevector <8 x i32> %broadcast.splatinsert630, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.m, i64 %i.dr
  br label %vector.body632

vector.body632:                                   ; preds = %vector.body632, %vector.ph628
  %index633 = phi i64 [ 0, %vector.ph628 ], [ %index.next638, %vector.body632 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index633 ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %gep, i64 32 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %gep, i64 64 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %gep, i64 96 ; 2 uses
  %wide.load634.a = load <8 x i32>, ptr %gep, align 4, !tbaa !8
  %wide.load635.a = load <8 x i32>, ptr %i.dw, align 4, !tbaa !8
  %wide.load636 = load <8 x i32>, ptr %i.dx, align 4, !tbaa !8
  %wide.load637 = load <8 x i32>, ptr %i.dy, align 4, !tbaa !8
  %i.dz = add nsw <8 x i32> %wide.load634.a, %broadcast.splat631
  %i.ea = add nsw <8 x i32> %wide.load635.a, %broadcast.splat631
  %i.eb = add nsw <8 x i32> %wide.load636, %broadcast.splat631
  %i.ec = add nsw <8 x i32> %wide.load637, %broadcast.splat631
  store <8 x i32> %i.dz, ptr %gep, align 4, !tbaa !8
  store <8 x i32> %i.ea, ptr %i.dw, align 4, !tbaa !8
  store <8 x i32> %i.eb, ptr %i.dx, align 4, !tbaa !8
  store <8 x i32> %i.ec, ptr %i.dy, align 4, !tbaa !8
  %index.next638 = add nuw i64 %index633, 32      ; 2 uses
  %i.ed = icmp eq i64 %index.next638, %n.vec629
  br i1 %i.ed, label %middle.block639, label %vector.body632, !llvm.loop !44

middle.block639:                                  ; preds = %vector.body632
  %cmp.n640 = icmp eq i64 %n.vec629, %i.dt
  br i1 %cmp.n640, label %.lr.ph447.preheader, label %vec.epilog.iter.check645

vec.epilog.iter.check645:                         ; preds = %middle.block639
  %min.epilog.iters.check646 = icmp eq i64 %i.du, 0
  br i1 %min.epilog.iters.check646, label %.lr.ph442.preheader, label %vec.epilog.ph647, !prof !45

vec.epilog.ph647:                                 ; preds = %vector.main.loop.iter.check626, %vec.epilog.iter.check645
  %vec.epilog.resume.val641 = phi i64 [ %n.vec629, %vec.epilog.iter.check645 ], [ 0, %vector.main.loop.iter.check626 ]
  %n.vec648 = and i64 %i.dt, 2147483640           ; 3 uses
  %i.ee = add nsw i64 %n.vec648, %i.dr
  %broadcast.splatinsert649 = insertelement <8 x i32> poison, i32 %i.ag, i64 0
  %broadcast.splat650 = shufflevector <8 x i32> %broadcast.splatinsert649, <8 x i32> poison, <8 x i32> zeroinitializer
  %invariant.gep676 = getelementptr [4 x i8], ptr %i.m, i64 %i.dr
  br label %vec.epilog.vector.body651

vec.epilog.vector.body651:                        ; preds = %vec.epilog.vector.body651, %vec.epilog.ph647
  %index652 = phi i64 [ %vec.epilog.resume.val641, %vec.epilog.ph647 ], [ %index.next654, %vec.epilog.vector.body651 ] ; 2 uses
  %gep677 = getelementptr [4 x i8], ptr %invariant.gep676, i64 %index652 ; 2 uses
  %wide.load653 = load <8 x i32>, ptr %gep677, align 4, !tbaa !8
  %i.ef = add nsw <8 x i32> %wide.load653, %broadcast.splat650
  store <8 x i32> %i.ef, ptr %gep677, align 4, !tbaa !8
  %index.next654 = add nuw i64 %index652, 8       ; 2 uses
  %i.eg = icmp eq i64 %index.next654, %n.vec648
  br i1 %i.eg, label %vec.epilog.middle.block655, label %vec.epilog.vector.body651, !llvm.loop !46

vec.epilog.middle.block655:                       ; preds = %vec.epilog.vector.body651
  %cmp.n656 = icmp eq i64 %n.vec648, %i.dt
  br i1 %cmp.n656, label %.lr.ph447.preheader, label %.lr.ph442.preheader

.lr.ph442.preheader:                              ; preds = %iter.check643, %vec.epilog.iter.check645, %vec.epilog.middle.block655
  %indvars.iv484.ph = phi i64 [ %i.dr, %iter.check643 ], [ %i.dv, %vec.epilog.iter.check645 ], [ %i.ee, %vec.epilog.middle.block655 ]
  br label %.lr.ph442

.lr.ph442:                                        ; preds = %.lr.ph442.preheader, %.lr.ph442
  %indvars.iv484 = phi i64 [ %indvars.iv.next485, %.lr.ph442 ], [ %indvars.iv484.ph, %.lr.ph442.preheader ] ; 2 uses
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv484 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !8
  %i.ej = add nsw i32 %i.ei, %i.ag
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !8
  %indvars.iv.next485 = add nsw i64 %indvars.iv484, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@dlasd7_:bb.a
  %i.pu = sext i1 %.not426 to i32
  %spec.select428 = add nsw i32 %i.ps, %i.pu
  store i32 %spec.select428, ptr %i.pt, align 4, !tbaa !8
  %i.pv = getelementptr [4 x i8], ptr %16, i64 %indvars.iv518
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !8
  %i.px = sext i32 %i.pw to i64
  %i.py = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.px
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !8
  %i.qa = sext i32 %i.pz to i64
  %i.qb = getelementptr [4 x i8], ptr %i.m, i64 %i.qa
  %i.qc = getelementptr i8, ptr %i.qb, i64 4
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !8  ; 2 uses
  %i.qe = getelementptr [4 x i8], ptr %18, i64 %indvars.iv518
  %.not426.1 = icmp sle i32 %i.qd, %i.ag
  %i.qf = sext i1 %.not426.1 to i32
  %spec.select428.1 = add nsw i32 %i.qd, %i.qf
  store i32 %spec.select428.1, ptr %i.qe, align 4, !tbaa !8
  %indvars.iv.next519.1 = add nuw nsw i64 %indvars.iv518, 2 ; 2 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next519.1
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !8
  %i.qi = sext i32 %i.qh to i64
  %i.qj = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.qi
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !8
  %i.ql = sext i32 %i.qk to i64
  %i.qm = getelementptr [4 x i8], ptr %i.m, i64 %i.ql
  %i.qn = getelementptr i8, ptr %i.qm, i64 4
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !8  ; 2 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next519.1
  %.not426.2 = icmp sle i32 %i.qo, %i.ag
  %i.qq = sext i1 %.not426.2 to i32
  %spec.select428.2 = add nsw i32 %i.qo, %i.qq
  store i32 %spec.select428.2, ptr %i.qp, align 4, !tbaa !8
  %indvars.iv.next519.2 = add nuw nsw i64 %indvars.iv518, 3 ; 2 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next519.2
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !8
  %i.qt = sext i32 %i.qs to i64
  %i.qu = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.qt
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !8
  %i.qw = sext i32 %i.qv to i64
  %i.qx = getelementptr [4 x i8], ptr %i.m, i64 %i.qw
  %i.qy = getelementptr i8, ptr %i.qx, i64 4
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !8  ; 2 uses
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next519.2
  %.not426.3 = icmp sle i32 %i.qz, %i.ag
  %i.rb = sext i1 %.not426.3 to i32
  %spec.select428.3 = add nsw i32 %i.qz, %i.rb
  store i32 %spec.select428.3, ptr %i.ra, align 4, !tbaa !8
  %indvars.iv.next519.3 = add nuw nsw i64 %indvars.iv518, 4 ; 2 uses
  %niter675.next.3 = add i64 %niter675, 4         ; 2 uses
  %niter675.ncmp.3 = icmp eq i64 %niter675.next.3, %unroll_iter674
  br i1 %niter675.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph478, !llvm.loop !54

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph478
  %lcmp.mod672.not = icmp eq i64 %xtraiter670, 0
  br i1 %lcmp.mod672.not, label %.loopexit, label %.lr.ph478.epil.preheader

.lr.ph478.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph478.preheader
  %indvars.iv518.epil.init = phi i64 [ 2, %.lr.ph478.preheader ], [ %indvars.iv.next519.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod673 = icmp ne i64 %xtraiter670, 0
  tail call void @llvm.assume(i1 %lcmp.mod673)
  br label %.lr.ph478.epil

.lr.ph478.epil:                                   ; preds = %.lr.ph478.epil, %.lr.ph478.epil.preheader
  %indvars.iv518.epil = phi i64 [ %indvars.iv518.epil.init, %.lr.ph478.epil.preheader ], [ %indvars.iv.next519.epil, %.lr.ph478.epil ] ; 3 uses
  %epil.iter671 = phi i64 [ 0, %.lr.ph478.epil.preheader ], [ %epil.iter671.next, %.lr.ph478.epil ]
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv518.epil
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !8
  %i.re = sext i32 %i.rd to i64
  %i.rf = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.re
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !8
  %i.rh = sext i32 %i.rg to i64
  %i.ri = getelementptr [4 x i8], ptr %i.m, i64 %i.rh
  %i.rj = getelementptr i8, ptr %i.ri, i64 4
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !8  ; 2 uses
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv518.epil
  %.not426.epil = icmp sle i32 %i.rk, %i.ag
  %i.rm = sext i1 %.not426.epil to i32
  %spec.select428.epil = add nsw i32 %i.rk, %i.rm
  store i32 %spec.select428.epil, ptr %i.rl, align 4, !tbaa !8
  %indvars.iv.next519.epil = add nuw nsw i64 %indvars.iv518.epil, 1
  %epil.iter671.next = add i64 %epil.iter671, 1   ; 2 uses
  %epil.iter671.cmp.not = icmp eq i64 %epil.iter671.next, %xtraiter670
  br i1 %epil.iter671.cmp.not, label %.loopexit, label %.lr.ph478.epil, !llvm.loop !55

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph478.epil, %._crit_edge474
  %i.rn = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %i.ro = sub nsw i32 %i.x, %i.rn
  store i32 %i.ro, ptr %i.a, align 4, !tbaa !8
  %i.rp = add nsw i32 %i.rn, 1
  %i.rq = sext i32 %i.rp to i64                   ; 2 uses
  %i.rr = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.rq
  %i.rs = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.rq
  call void @dcopy_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.rr, ptr noundef nonnull @c__1, ptr noundef nonnull %i.rs, ptr noundef nonnull @c__1) #5
  store double 0.000000e+00, ptr %14, align 8, !tbaa !9
  %i.rt = fmul double %i.iz, 5.000000e-01         ; 2 uses
  %i.ru = load double, ptr %i.gg, align 8, !tbaa !9
  %i.rv = call double @llvm.fabs.f64(double %i.ru)
  %i.rw = fcmp ugt double %i.rv, %i.rt
  br i1 %i.rw, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.loopexit
  store double %i.rt, ptr %i.gg, align 8, !tbaa !9
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.loopexit
  %i.rx = icmp eq i32 %i.y, 1
  br i1 %i.rx, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.ry = zext nneg i32 %i.z to i64               ; 3 uses
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ry ; 2 uses
  %i.sa = call double @dlapy2_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.rz) #5 ; 3 uses
  store double %i.sa, ptr %6, align 8, !tbaa !9
  %i.sb = fcmp ugt double %i.sa, %i.iz
  br i1 %i.sb, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store double 1.000000e+00, ptr %24, align 8, !tbaa !9
  store double 0.000000e+00, ptr %25, align 8, !tbaa !9
  store double %i.iz, ptr %6, align 8, !tbaa !9
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.sc = load double, ptr %i.b, align 8, !tbaa !9
  %i.sd = fdiv double %i.sc, %i.sa
  store double %i.sd, ptr %24, align 8, !tbaa !9
  %i.se = load double, ptr %i.rz, align 8, !tbaa !9
  %i.sf = fneg double %i.se
  %i.sg = load double, ptr %6, align 8, !tbaa !9
  %i.sh = fdiv double %i.sf, %i.sg
  store double %i.sh, ptr %25, align 8, !tbaa !9
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ry
  call void @drot_(ptr noundef nonnull @c__1, ptr noundef nonnull %i.si, ptr noundef nonnull @c__1, ptr noundef nonnull %8, ptr noundef nonnull @c__1, ptr noundef nonnull %24, ptr noundef nonnull %25) #5
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ry
  call void @drot_(ptr noundef nonnull @c__1, ptr noundef nonnull %i.sj, ptr noundef nonnull @c__1, ptr noundef nonnull %10, ptr noundef nonnull @c__1, ptr noundef nonnull %24, ptr noundef nonnull %25) #5
  br label %bb.ac

bb.z:                                             ; preds = %bb.u
  %i.sk = call double @llvm.fabs.f64(double %i.ao)
  %i.sl = fcmp ugt double %i.sk, %i.iz
  br i1 %i.sl, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store double %i.iz, ptr %6, align 8, !tbaa !9
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  store double %i.ao, ptr %6, align 8, !tbaa !9
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.y
  %i.sm = load i32, ptr %4, align 4, !tbaa !8
  %i.sn = add nsw i32 %i.sm, -1
  store i32 %i.sn, ptr %i.a, align 4, !tbaa !8
  %i.so = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.sp = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @dcopy_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.so, ptr noundef nonnull @c__1, ptr noundef nonnull %i.sp, ptr noundef nonnull @c__1) #5
  store i32 %i.w, ptr %i.a, align 4, !tbaa !8
  %i.sq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.sr = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @dcopy_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.sq, ptr noundef nonnull @c__1, ptr noundef nonnull %i.sr, ptr noundef nonnull @c__1) #5
  store i32 %i.w, ptr %i.a, align 4, !tbaa !8
  %i.ss = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.st = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @dcopy_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ss, ptr noundef nonnull @c__1, ptr noundef nonnull %i.st, ptr noundef nonnull @c__1) #5
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dlamrg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

declare double @dlapy2_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @drot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = !{!12}
!12 = distinct !{!12, !13}
!13 = distinct !{!13, !"LVerDomain"}
!14 = !{!15}
!15 = distinct !{!15, !13}
!16 = !{!17, !18, !12}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = !{!20}
!20 = distinct !{!20, !13}
!21 = !{!15, !17, !18, !12}
!22 = !{!17}
!23 = !{!18, !12}
!24 = !{!18}
!25 = !{!26}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !28, !29, !30}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = distinct !{!31, !28, !29}
!32 = !{!33}
!33 = distinct !{!33, !34}
!34 = distinct !{!34, !"LVerDomain"}
!35 = !{!36}
!36 = distinct !{!36, !34}
!37 = !{!38}
!38 = distinct !{!38, !34}
!39 = !{!36, !33}
!40 = distinct !{!40, !28, !29, !30}
!41 = !{!"branch_weights", i32 4, i32 12}
!42 = distinct !{!42, !28, !29, !30}
!43 = distinct !{!43, !28, !29}
!44 = distinct !{!44, !28, !29, !30}
!45 = !{!"branch_weights", i32 8, i32 24}
!46 = distinct !{!46, !28, !29, !30}
!47 = distinct !{!47, !28, !30, !29}
!48 = distinct !{!48, !28}
!49 = distinct !{!49, !28}
!50 = distinct !{!50, !28}
!51 = distinct !{!51, !28}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = distinct !{!54, !28}
!55 = distinct !{!55, !53}
end_hunk_1
