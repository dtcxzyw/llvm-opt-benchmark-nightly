Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngwutil?download=true
inline.NumInlined: 101
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 19
begin_hunk_0_@png_write_find_filter:bb.a
  br i1 %.not122, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !66, !alias.scope !323 ; 5 uses
  store i8 2, ptr %i.kv, align 1, !tbaa !10, !noalias !323
  %.not.i142 = icmp eq i64 %i.e, 0
  br i1 %.not.i142, label %png_setup_up_row.exit, label %.lr.ph.preheader.i143

.lr.ph.preheader.i143:                            ; preds = %bb.l
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !68, !alias.scope !323
  br label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %.lr.ph.i144, %.lr.ph.preheader.i143
  %.pn.pn.i = phi ptr [ %.02234.i, %.lr.ph.i144 ], [ %i.l, %.lr.ph.preheader.i143 ]
  %.pn25.pn.i = phi ptr [ %.02033.i, %.lr.ph.i144 ], [ %i.kx, %.lr.ph.preheader.i143 ]
  %.pn26.pn.i = phi ptr [ %.02132.i, %.lr.ph.i144 ], [ %i.kv, %.lr.ph.preheader.i143 ]
  %.031.i = phi i64 [ %i.le, %.lr.ph.i144 ], [ 0, %.lr.ph.preheader.i143 ]
  %.01930.i = phi i64 [ %i.lg, %.lr.ph.i144 ], [ 0, %.lr.ph.preheader.i143 ]
  %.02132.i = getelementptr inbounds nuw i8, ptr %.pn26.pn.i, i64 1 ; 2 uses
  %.02033.i = getelementptr inbounds nuw i8, ptr %.pn25.pn.i, i64 1 ; 2 uses
  %.02234.i = getelementptr inbounds nuw i8, ptr %.pn.pn.i, i64 1 ; 2 uses
  %i.ky = load i8, ptr %.02234.i, align 1, !tbaa !10, !noalias !323
  %i.kz = load i8, ptr %.02033.i, align 1, !tbaa !10, !noalias !323
  %.narrow.i145 = sub i8 %i.ky, %i.kz             ; 3 uses
  store i8 %.narrow.i145, ptr %.02132.i, align 1, !tbaa !10, !noalias !323
  %i.la = zext i8 %.narrow.i145 to i64            ; 2 uses
  %i.lb = sub nuw nsw i64 256, %i.la
  %i.lc = icmp slt i8 %.narrow.i145, 0
  %i.ld = select i1 %i.lc, i64 %i.lb, i64 %i.la
  %i.le = add i64 %i.ld, %.031.i                  ; 3 uses
  %i.lf = icmp ugt i64 %i.le, %.2
  %i.lg = add nuw i64 %.01930.i, 1                ; 2 uses
  %exitcond.not.i146 = icmp eq i64 %i.lg, %i.e
  %or.cond.i147 = select i1 %i.lf, i1 true, i1 %exitcond.not.i146
  br i1 %or.cond.i147, label %png_setup_up_row.exit, label %.lr.ph.i144, !llvm.loop !290

png_setup_up_row.exit:                            ; preds = %.lr.ph.i144, %bb.l
  %.1.i = phi i64 [ 0, %bb.l ], [ %i.le, %.lr.ph.i144 ] ; 3 uses
  %i.lh = icmp ult i64 %.1.i, %.2
  br i1 %i.lh, label %bb.m, label %bb.o

bb.m:                                             ; preds = %png_setup_up_row.exit
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !67 ; 2 uses
  %.not123 = icmp eq ptr %i.lj, null
  br i1 %.not123, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.lj, ptr %i.ku, align 8, !tbaa !66
  store ptr %i.kv, ptr %i.li, align 8, !tbaa !67
  br label %bb.o

bb.o:                                             ; preds = %png_setup_up_row.exit, %bb.n, %bb.m, %bb.k
  %.3107 = phi ptr [ %.1105, %png_setup_up_row.exit ], [ %.1105, %bb.k ], [ %i.kv, %bb.n ], [ %i.kv, %bb.m ] ; 2 uses
  %.4 = phi i64 [ %.2, %png_setup_up_row.exit ], [ %.2, %bb.k ], [ %.1.i, %bb.n ], [ %.1.i, %bb.m ] ; 4 uses
  %i.lk = icmp eq i32 %.0111, 64
  br i1 %i.lk, label %bb.p, label %.thread197

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !66, !alias.scope !324 ; 8 uses
  %i.ln = ptrtoaddr ptr %i.lm to i64              ; 2 uses
  store i8 3, ptr %i.lm, align 1, !tbaa !10, !noalias !324
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !68, !alias.scope !324 ; 3 uses
  %i.lq = ptrtoaddr ptr %i.lp to i64
  %.02029.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 1 ; 7 uses
  %.01830.i = getelementptr inbounds nuw i8, ptr %i.lp, i64 1 ; 7 uses
  %.02231.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 7 uses
  %.not.i148 = icmp eq i32 %i.j, 0
  br i1 %.not.i148, label %.preheader.i154, label %iter.check488

iter.check488:                                    ; preds = %bb.p
  %i.lr = zext nneg i32 %i.j to i64               ; 5 uses
  %min.iters.check469 = icmp ult i8 %i.g, 25
  br i1 %min.iters.check469, label %.lr.ph.i149.preheader, label %vector.memcheck470

vector.memcheck470:                               ; preds = %iter.check488
  %i.ls = sub i64 %i.m, %i.ln
  %diff.check471 = icmp ugt i64 %i.ls, -16
  %i.lt = sub i64 %i.lq, %i.ln
  %diff.check472 = icmp ugt i64 %i.lt, -16
  %conflict.rdx473 = or i1 %diff.check471, %diff.check472
  br i1 %conflict.rdx473, label %.lr.ph.i149.preheader, label %vector.main.loop.iter.check474

vector.main.loop.iter.check474:                   ; preds = %vector.memcheck470
  %min.iters.check475 = icmp ult i8 %i.g, 121
  br i1 %min.iters.check475, label %vec.epilog.ph492, label %vector.ph476

vector.ph476:                                     ; preds = %vector.main.loop.iter.check474
  %i.lu = and i64 %i.lr, 12
  %n.vec477 = and i64 %i.lr, 48                   ; 7 uses
  %i.lv = getelementptr i8, ptr %.02231.i, i64 %n.vec477 ; 2 uses
  %i.lw = getelementptr i8, ptr %.01830.i, i64 %n.vec477 ; 2 uses
  %i.lx = getelementptr i8, ptr %.02029.i, i64 %n.vec477 ; 2 uses
  %i.ly = trunc nuw nsw i64 %n.vec477 to i32
  %wide.load483 = load <16 x i8>, ptr %.02231.i, align 1, !tbaa !10, !noalias !324
  %wide.load484 = load <16 x i8>, ptr %.01830.i, align 1, !tbaa !10, !noalias !324
  %i.lz = lshr <16 x i8> %wide.load484, splat (i8 1)
  %i.ma = sub <16 x i8> %wide.load483, %i.lz
  store <16 x i8> %i.ma, ptr %.02029.i, align 1, !tbaa !10, !noalias !324
  %i.mb = icmp eq i64 %n.vec477, 16
  br i1 %i.mb, label %middle.block486, label %vector.body478.1

vector.body478.1:                                 ; preds = %vector.ph476
  %next.gep480.1 = getelementptr i8, ptr %i.l, i64 17
  %next.gep481.1 = getelementptr i8, ptr %i.lp, i64 17
  %next.gep482.1 = getelementptr i8, ptr %i.lm, i64 17
  %wide.load483.1 = load <16 x i8>, ptr %next.gep480.1, align 1, !tbaa !10, !noalias !324
  %wide.load484.1 = load <16 x i8>, ptr %next.gep481.1, align 1, !tbaa !10, !noalias !324
  %i.mc = lshr <16 x i8> %wide.load484.1, splat (i8 1)
  %i.md = sub <16 x i8> %wide.load483.1, %i.mc
  store <16 x i8> %i.md, ptr %next.gep482.1, align 1, !tbaa !10, !noalias !324
  br label %middle.block486

middle.block486:                                  ; preds = %vector.body478.1, %vector.ph476
  %cmp.n487 = icmp eq i64 %n.vec477, %i.lr
  br i1 %cmp.n487, label %.preheader.i154, label %vec.epilog.iter.check489

vec.epilog.iter.check489:                         ; preds = %middle.block486
  %min.epilog.iters.check491 = icmp eq i64 %i.lu, 0
  br i1 %min.epilog.iters.check491, label %.lr.ph.i149.preheader, label %vec.epilog.ph492, !prof !319

vec.epilog.ph492:                                 ; preds = %vector.main.loop.iter.check474, %vec.epilog.iter.check489
  %vec.epilog.resume.val493 = phi i64 [ %n.vec477, %vec.epilog.iter.check489 ], [ 0, %vector.main.loop.iter.check474 ]
  %n.vec494 = and i64 %i.lr, 60                   ; 6 uses
  %i.me = getelementptr i8, ptr %.02231.i, i64 %n.vec494 ; 2 uses
  %i.mf = getelementptr i8, ptr %.01830.i, i64 %n.vec494 ; 2 uses
  %i.mg = getelementptr i8, ptr %.02029.i, i64 %n.vec494 ; 2 uses
  %i.mh = trunc nuw nsw i64 %n.vec494 to i32
  br label %vec.epilog.vector.body495

vec.epilog.vector.body495:                        ; preds = %vec.epilog.vector.body495, %vec.epilog.ph492
  %index496 = phi i64 [ %vec.epilog.resume.val493, %vec.epilog.ph492 ], [ %index.next502, %vec.epilog.vector.body495 ] ; 4 uses
  %next.gep497 = getelementptr i8, ptr %.02231.i, i64 %index496
  %next.gep498 = getelementptr i8, ptr %.01830.i, i64 %index496
  %next.gep499 = getelementptr i8, ptr %.02029.i, i64 %index496
  %wide.load500 = load <4 x i8>, ptr %next.gep497, align 1, !tbaa !10, !noalias !324
  %wide.load501 = load <4 x i8>, ptr %next.gep498, align 1, !tbaa !10, !noalias !324
  %i.mi = lshr <4 x i8> %wide.load501, splat (i8 1)
  %i.mj = sub <4 x i8> %wide.load500, %i.mi
  store <4 x i8> %i.mj, ptr %next.gep499, align 1, !tbaa !10, !noalias !324
  %index.next502 = add nuw i64 %index496, 4       ; 2 uses
  %i.mk = icmp eq i64 %index.next502, %n.vec494
  br i1 %i.mk, label %vec.epilog.middle.block503, label %vec.epilog.vector.body495, !llvm.loop !293

vec.epilog.middle.block503:                       ; preds = %vec.epilog.vector.body495
  %cmp.n504 = icmp eq i64 %n.vec494, %i.lr
  br i1 %cmp.n504, label %.preheader.i154, label %.lr.ph.i149.preheader

.lr.ph.i149.preheader:                            ; preds = %iter.check488, %vector.memcheck470, %vec.epilog.iter.check489, %vec.epilog.middle.block503
  %.02235.i.ph = phi ptr [ %.02231.i, %iter.check488 ], [ %.02231.i, %vector.memcheck470 ], [ %i.lv, %vec.epilog.iter.check489 ], [ %i.me, %vec.epilog.middle.block503 ] ; 2 uses
  %.01834.i.ph = phi ptr [ %.01830.i, %iter.check488 ], [ %.01830.i, %vector.memcheck470 ], [ %i.lw, %vec.epilog.iter.check489 ], [ %i.mf, %vec.epilog.middle.block503 ] ; 2 uses
  %.02033.i150.ph = phi ptr [ %.02029.i, %iter.check488 ], [ %.02029.i, %vector.memcheck470 ], [ %i.lx, %vec.epilog.iter.check489 ], [ %i.mg, %vec.epilog.middle.block503 ] ; 2 uses
  %.032.i.ph = phi i32 [ 0, %iter.check488 ], [ 0, %vector.memcheck470 ], [ %i.ly, %vec.epilog.iter.check489 ], [ %i.mh, %vec.epilog.middle.block503 ] ; 4 uses
  %i.ml = sub nsw i32 %i.j, %.032.i.ph
  %xtraiter738 = and i32 %i.ml, 3                 ; 2 uses
  %lcmp.mod739.not = icmp eq i32 %xtraiter738, 0
  br i1 %lcmp.mod739.not, label %.lr.ph.i149.prol.loopexit, label %.lr.ph.i149.prol

.lr.ph.i149.prol:                                 ; preds = %.lr.ph.i149.preheader, %.lr.ph.i149.prol
  %.02235.i.prol = phi ptr [ %.022.i152.prol, %.lr.ph.i149.prol ], [ %.02235.i.ph, %.lr.ph.i149.preheader ] ; 2 uses
  %.01834.i.prol = phi ptr [ %.018.i.prol, %.lr.ph.i149.prol ], [ %.01834.i.ph, %.lr.ph.i149.preheader ] ; 2 uses
  %.02033.i150.prol = phi ptr [ %.020.i151.prol, %.lr.ph.i149.prol ], [ %.02033.i150.ph, %.lr.ph.i149.preheader ] ; 2 uses
  %.032.i.prol = phi i32 [ %i.mp, %.lr.ph.i149.prol ], [ %.032.i.ph, %.lr.ph.i149.preheader ]
  %prol.iter740 = phi i32 [ %prol.iter740.next, %.lr.ph.i149.prol ], [ 0, %.lr.ph.i149.preheader ]
  %i.mm = load i8, ptr %.02235.i.prol, align 1, !tbaa !10, !noalias !324
  %i.mn = load i8, ptr %.01834.i.prol, align 1, !tbaa !10, !noalias !324
  %i.mo = lshr i8 %i.mn, 1
  %.narrow27.i.prol = sub i8 %i.mm, %i.mo
  store i8 %.narrow27.i.prol, ptr %.02033.i150.prol, align 1, !tbaa !10, !noalias !324
  %i.mp = add nuw nsw i32 %.032.i.prol, 1         ; 2 uses
  %.020.i151.prol = getelementptr inbounds nuw i8, ptr %.02033.i150.prol, i64 1 ; 3 uses
  %.018.i.prol = getelementptr inbounds nuw i8, ptr %.01834.i.prol, i64 1 ; 3 uses
  %.022.i152.prol = getelementptr inbounds nuw i8, ptr %.02235.i.prol, i64 1 ; 3 uses
  %prol.iter740.next = add i32 %prol.iter740, 1   ; 2 uses
  %prol.iter740.cmp.not = icmp eq i32 %prol.iter740.next, %xtraiter738
  br i1 %prol.iter740.cmp.not, label %.lr.ph.i149.prol.loopexit, label %.lr.ph.i149.prol, !llvm.loop !294

.lr.ph.i149.prol.loopexit:                        ; preds = %.lr.ph.i149.prol, %.lr.ph.i149.preheader
  %.020.i151.lcssa.unr = phi ptr [ poison, %.lr.ph.i149.preheader ], [ %.020.i151.prol, %.lr.ph.i149.prol ]
  %.018.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i149.preheader ], [ %.018.i.prol, %.lr.ph.i149.prol ]
  %.022.i152.lcssa.unr = phi ptr [ poison, %.lr.ph.i149.preheader ], [ %.022.i152.prol, %.lr.ph.i149.prol ]
  %.02235.i.unr = phi ptr [ %.02235.i.ph, %.lr.ph.i149.preheader ], [ %.022.i152.prol, %.lr.ph.i149.prol ]
  %.01834.i.unr = phi ptr [ %.01834.i.ph, %.lr.ph.i149.preheader ], [ %.018.i.prol, %.lr.ph.i149.prol ]
  %.02033.i150.unr = phi ptr [ %.02033.i150.ph, %.lr.ph.i149.preheader ], [ %.020.i151.prol, %.lr.ph.i149.prol ]
  %.032.i.unr = phi i32 [ %.032.i.ph, %.lr.ph.i149.preheader ], [ %i.mp, %.lr.ph.i149.prol ]
  %i.mq = sub nsw i32 %.032.i.ph, %i.j
  %i.mr = icmp ugt i32 %i.mq, -4
  br i1 %i.mr, label %.preheader.i154, label %.lr.ph.i149

.preheader.i154:                                  ; preds = %.lr.ph.i149.prol.loopexit, %.lr.ph.i149, %middle.block486, %vec.epilog.middle.block503, %bb.p
  %.020.lcssa.i155 = phi ptr [ %.02029.i, %bb.p ], [ %i.mg, %vec.epilog.middle.block503 ], [ %i.lx, %middle.block486 ], [ %.020.i151.lcssa.unr, %.lr.ph.i149.prol.loopexit ], [ %.020.i151.3, %.lr.ph.i149 ] ; 8 uses
  %.018.lcssa.i = phi ptr [ %.01830.i, %bb.p ], [ %i.mf, %vec.epilog.middle.block503 ], [ %i.lw, %middle.block486 ], [ %.018.i.lcssa.unr, %.lr.ph.i149.prol.loopexit ], [ %.018.i.3, %.lr.ph.i149 ] ; 8 uses
  %.022.lcssa.i156 = phi ptr [ %.02231.i, %bb.p ], [ %i.me, %vec.epilog.middle.block503 ], [ %i.lv, %middle.block486 ], [ %.022.i152.lcssa.unr, %.lr.ph.i149.prol.loopexit ], [ %.022.i152.3, %.lr.ph.i149 ] ; 8 uses
  %.018.lcssa.i518 = ptrtoaddr ptr %.018.lcssa.i to i64
  %.020.lcssa.i155519 = ptrtoaddr ptr %.020.lcssa.i155 to i64 ; 3 uses
  %.022.lcssa.i156520 = ptrtoaddr ptr %.022.lcssa.i156 to i64
  %i.ms = zext nneg i32 %i.j to i64               ; 3 uses
  %i.mt = icmp ugt i64 %i.e, %i.ms
  br i1 %i.mt, label %iter.check548, label %.thread214.thread

iter.check548:                                    ; preds = %.preheader.i154
  %i.mu = sub nuw i64 %i.e, %i.ms                 ; 7 uses
  %min.iters.check522 = icmp ult i64 %i.mu, 8
  br i1 %min.iters.check522, label %.lr.ph44.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check548
  %i.mv = xor i64 %i.ms, -1
  %i.mw = add i64 %i.e, %i.mv                     ; 2 uses
  %i.mx = trunc i64 %i.mw to i32
  %i.my = sub nuw nsw i32 -2, %i.j
  %i.mz = icmp ult i32 %i.my, %i.mx
  %i.na = icmp ugt i64 %i.mw, 4294967295
  %i.nb = or i1 %i.mz, %i.na
  br i1 %i.nb, label %.lr.ph44.i.preheader, label %vector.memcheck523

vector.memcheck523:                               ; preds = %vector.scevcheck
  %i.nc = sub i64 %.020.lcssa.i155519, %i.m
  %i.nd = add i64 %i.nc, -2
  %diff.check524 = icmp ult i64 %i.nd, 31
  %i.ne = sub i64 %.022.lcssa.i156520, %.020.lcssa.i155519
  %diff.check525 = icmp ugt i64 %i.ne, -32
  %conflict.rdx526 = or i1 %diff.check524, %diff.check525
  %i.nf = sub i64 %.018.lcssa.i518, %.020.lcssa.i155519
  %diff.check527 = icmp ugt i64 %i.nf, -32
  %conflict.rdx528 = or i1 %conflict.rdx526, %diff.check527
  br i1 %conflict.rdx528, label %.lr.ph44.i.preheader, label %vector.main.loop.iter.check529

vector.main.loop.iter.check529:                   ; preds = %vector.memcheck523
  %min.iters.check530 = icmp ult i64 %i.mu, 32
  br i1 %min.iters.check530, label %vec.epilog.ph552, label %vector.ph531

vector.ph531:                                     ; preds = %vector.main.loop.iter.check529
  %i.ng = and i64 %i.mu, 24
  %n.vec532 = and i64 %i.mu, -32                  ; 8 uses
  %i.nh = trunc i64 %n.vec532 to i32
  %i.ni = add i32 %i.j, %i.nh
  %i.nj = getelementptr i8, ptr %i.l, i64 %n.vec532
  %i.nk = getelementptr i8, ptr %.018.lcssa.i, i64 %n.vec532
  %i.nl = getelementptr i8, ptr %.020.lcssa.i155, i64 %n.vec532
  %i.nm = getelementptr i8, ptr %.022.lcssa.i156, i64 %n.vec532
  br label %vector.body533

vector.body533:                                   ; preds = %vector.ph531, %vector.body533
  %index534 = phi i64 [ 0, %vector.ph531 ], [ %index.next545, %vector.body533 ] ; 5 uses
  %next.gep535 = getelementptr i8, ptr %i.l, i64 %index534 ; 2 uses
  %next.gep536 = getelementptr i8, ptr %.018.lcssa.i, i64 %index534 ; 2 uses
  %next.gep537 = getelementptr i8, ptr %.020.lcssa.i155, i64 %index534 ; 2 uses
  %next.gep538 = getelementptr i8, ptr %.022.lcssa.i156, i64 %index534 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %next.gep535, i64 1
  %i.no = getelementptr i8, ptr %next.gep538, i64 16
  %wide.load539 = load <16 x i8>, ptr %next.gep538, align 1, !tbaa !10, !noalias !324
  %wide.load540 = load <16 x i8>, ptr %i.no, align 1, !tbaa !10, !noalias !324
  %i.np = getelementptr i8, ptr %next.gep536, i64 16
  %wide.load541 = load <16 x i8>, ptr %next.gep536, align 1, !tbaa !10, !noalias !324
  %wide.load542 = load <16 x i8>, ptr %i.np, align 1, !tbaa !10, !noalias !324
  %i.nq = zext <16 x i8> %wide.load541 to <16 x i16>
  %i.nr = zext <16 x i8> %wide.load542 to <16 x i16>
  %i.ns = getelementptr inbounds nuw i8, ptr %next.gep535, i64 17
  %wide.load543 = load <16 x i8>, ptr %i.nn, align 1, !tbaa !10, !noalias !324
  %wide.load544 = load <16 x i8>, ptr %i.ns, align 1, !tbaa !10, !noalias !324
  %i.nt = zext <16 x i8> %wide.load543 to <16 x i16>
  %i.nu = zext <16 x i8> %wide.load544 to <16 x i16>
  %i.nv = add nuw nsw <16 x i16> %i.nt, %i.nq
  %i.nw = add nuw nsw <16 x i16> %i.nu, %i.nr
  %i.nx = lshr <16 x i16> %i.nv, splat (i16 1)
  %i.ny = lshr <16 x i16> %i.nw, splat (i16 1)
  %i.nz = trunc nuw <16 x i16> %i.nx to <16 x i8>
  %i.oa = trunc nuw <16 x i16> %i.ny to <16 x i8>
  %i.ob = sub <16 x i8> %wide.load539, %i.nz
  %i.oc = sub <16 x i8> %wide.load540, %i.oa
  %i.od = getelementptr i8, ptr %next.gep537, i64 16
  store <16 x i8> %i.ob, ptr %next.gep537, align 1, !tbaa !10, !noalias !324
  store <16 x i8> %i.oc, ptr %i.od, align 1, !tbaa !10, !noalias !324
  %index.next545 = add nuw i64 %index534, 32      ; 2 uses
  %i.oe = icmp eq i64 %index.next545, %n.vec532
  br i1 %i.oe, label %middle.block546, label %vector.body533, !llvm.loop !295

middle.block546:                                  ; preds = %vector.body533
  %cmp.n547 = icmp eq i64 %i.mu, %n.vec532
  br i1 %cmp.n547, label %.thread214.thread, label %vec.epilog.iter.check549

vec.epilog.iter.check549:                         ; preds = %middle.block546
  %min.epilog.iters.check551 = icmp eq i64 %i.ng, 0
  br i1 %min.epilog.iters.check551, label %.lr.ph44.i.preheader, label %vec.epilog.ph552, !prof !325

vec.epilog.ph552:                                 ; preds = %vector.main.loop.iter.check529, %vec.epilog.iter.check549
  %vec.epilog.resume.val553 = phi i64 [ %n.vec532, %vec.epilog.iter.check549 ], [ 0, %vector.main.loop.iter.check529 ]
  %n.vec554 = and i64 %i.mu, -8                   ; 7 uses
  %i.of = trunc i64 %n.vec554 to i32
  %i.og = add i32 %i.j, %i.of
  %i.oh = getelementptr i8, ptr %i.l, i64 %n.vec554
  %i.oi = getelementptr i8, ptr %.018.lcssa.i, i64 %n.vec554
  %i.oj = getelementptr i8, ptr %.020.lcssa.i155, i64 %n.vec554
  %i.ok = getelementptr i8, ptr %.022.lcssa.i156, i64 %n.vec554
  br label %vec.epilog.vector.body555

vec.epilog.vector.body555:                        ; preds = %vec.epilog.vector.body555, %vec.epilog.ph552
  %index556 = phi i64 [ %vec.epilog.resume.val553, %vec.epilog.ph552 ], [ %index.next564, %vec.epilog.vector.body555 ] ; 5 uses
  %next.gep557 = getelementptr i8, ptr %i.l, i64 %index556
  %next.gep558 = getelementptr i8, ptr %.018.lcssa.i, i64 %index556
  %next.gep559 = getelementptr i8, ptr %.020.lcssa.i155, i64 %index556
  %next.gep560 = getelementptr i8, ptr %.022.lcssa.i156, i64 %index556
  %i.ol = getelementptr inbounds nuw i8, ptr %next.gep557, i64 1
  %wide.load561 = load <8 x i8>, ptr %next.gep560, align 1, !tbaa !10, !noalias !324
  %wide.load562 = load <8 x i8>, ptr %next.gep558, align 1, !tbaa !10, !noalias !324
  %i.om = zext <8 x i8> %wide.load562 to <8 x i16>
  %wide.load563 = load <8 x i8>, ptr %i.ol, align 1, !tbaa !10, !noalias !324
  %i.on = zext <8 x i8> %wide.load563 to <8 x i16>
  %i.oo = add nuw nsw <8 x i16> %i.on, %i.om
  %i.op = lshr <8 x i16> %i.oo, splat (i16 1)
  %i.oq = trunc nuw <8 x i16> %i.op to <8 x i8>
  %i.or = sub <8 x i8> %wide.load561, %i.oq
  store <8 x i8> %i.or, ptr %next.gep559, align 1, !tbaa !10, !noalias !324
  %index.next564 = add nuw i64 %index556, 8       ; 2 uses
  %i.os = icmp eq i64 %index.next564, %n.vec554
  br i1 %i.os, label %vec.epilog.middle.block565, label %vec.epilog.vector.body555, !llvm.loop !296

vec.epilog.middle.block565:                       ; preds = %vec.epilog.vector.body555
  %cmp.n566 = icmp eq i64 %i.mu, %n.vec554
  br i1 %cmp.n566, label %.thread214.thread, label %.lr.ph44.i.preheader

.lr.ph44.i.preheader:                             ; preds = %iter.check548, %vector.scevcheck, %vector.memcheck523, %vec.epilog.iter.check549, %vec.epilog.middle.block565
  %.143.i.ph = phi i32 [ %i.j, %iter.check548 ], [ %i.j, %vector.scevcheck ], [ %i.j, %vector.memcheck523 ], [ %i.ni, %vec.epilog.iter.check549 ], [ %i.og, %vec.epilog.middle.block565 ]
  %.pn42.i.ph = phi ptr [ %i.l, %iter.check548 ], [ %i.l, %vector.scevcheck ], [ %i.l, %vector.memcheck523 ], [ %i.nj, %vec.epilog.iter.check549 ], [ %i.oh, %vec.epilog.middle.block565 ]
  %.11941.i.ph = phi ptr [ %.018.lcssa.i, %iter.check548 ], [ %.018.lcssa.i, %vector.scevcheck ], [ %.018.lcssa.i, %vector.memcheck523 ], [ %i.nk, %vec.epilog.iter.check549 ], [ %i.oi, %vec.epilog.middle.block565 ]
  %.12140.i.ph = phi ptr [ %.020.lcssa.i155, %iter.check548 ], [ %.020.lcssa.i155, %vector.scevcheck ], [ %.020.lcssa.i155, %vector.memcheck523 ], [ %i.nl, %vec.epilog.iter.check549 ], [ %i.oj, %vec.epilog.middle.block565 ]
  %.12339.i.ph = phi ptr [ %.022.lcssa.i156, %iter.check548 ], [ %.022.lcssa.i156, %vector.scevcheck ], [ %.022.lcssa.i156, %vector.memcheck523 ], [ %i.nm, %vec.epilog.iter.check549 ], [ %i.ok, %vec.epilog.middle.block565 ]
  br label %.lr.ph44.i

.lr.ph.i149:                                      ; preds = %.lr.ph.i149.prol.loopexit, %.lr.ph.i149
  %.02235.i = phi ptr [ %.022.i152.3, %.lr.ph.i149 ], [ %.02235.i.unr, %.lr.ph.i149.prol.loopexit ] ; 5 uses
  %.01834.i = phi ptr [ %.018.i.3, %.lr.ph.i149 ], [ %.01834.i.unr, %.lr.ph.i149.prol.loopexit ] ; 5 uses
  %.02033.i150 = phi ptr [ %.020.i151.3, %.lr.ph.i149 ], [ %.02033.i150.unr, %.lr.ph.i149.prol.loopexit ] ; 5 uses
  %.032.i = phi i32 [ %i.pf, %.lr.ph.i149 ], [ %.032.i.unr, %.lr.ph.i149.prol.loopexit ]
  %i.ot = load i8, ptr %.02235.i, align 1, !tbaa !10, !noalias !324
  %i.ou = load i8, ptr %.01834.i, align 1, !tbaa !10, !noalias !324
  %i.ov = lshr i8 %i.ou, 1
  %.narrow27.i = sub i8 %i.ot, %i.ov
  store i8 %.narrow27.i, ptr %.02033.i150, align 1, !tbaa !10, !noalias !324
  %.020.i151 = getelementptr inbounds nuw i8, ptr %.02033.i150, i64 1
  %.018.i = getelementptr inbounds nuw i8, ptr %.01834.i, i64 1
  %.022.i152 = getelementptr inbounds nuw i8, ptr %.02235.i, i64 1
  %i.ow = load i8, ptr %.022.i152, align 1, !tbaa !10, !noalias !324
  %i.ox = load i8, ptr %.018.i, align 1, !tbaa !10, !noalias !324
  %i.oy = lshr i8 %i.ox, 1
  %.narrow27.i.1 = sub i8 %i.ow, %i.oy
  store i8 %.narrow27.i.1, ptr %.020.i151, align 1, !tbaa !10, !noalias !324
  %.020.i151.1 = getelementptr inbounds nuw i8, ptr %.02033.i150, i64 2
  %.018.i.1 = getelementptr inbounds nuw i8, ptr %.01834.i, i64 2
  %.022.i152.1 = getelementptr inbounds nuw i8, ptr %.02235.i, i64 2
  %i.oz = load i8, ptr %.022.i152.1, align 1, !tbaa !10, !noalias !324
  %i.pa = load i8, ptr %.018.i.1, align 1, !tbaa !10, !noalias !324
  %i.pb = lshr i8 %i.pa, 1
  %.narrow27.i.2 = sub i8 %i.oz, %i.pb
  store i8 %.narrow27.i.2, ptr %.020.i151.1, align 1, !tbaa !10, !noalias !324
  %.020.i151.2 = getelementptr inbounds nuw i8, ptr %.02033.i150, i64 3
  %.018.i.2 = getelementptr inbounds nuw i8, ptr %.01834.i, i64 3
  %.022.i152.2 = getelementptr inbounds nuw i8, ptr %.02235.i, i64 3
  %i.pc = load i8, ptr %.022.i152.2, align 1, !tbaa !10, !noalias !324
  %i.pd = load i8, ptr %.018.i.2, align 1, !tbaa !10, !noalias !324
  %i.pe = lshr i8 %i.pd, 1
  %.narrow27.i.3 = sub i8 %i.pc, %i.pe
  store i8 %.narrow27.i.3, ptr %.020.i151.2, align 1, !tbaa !10, !noalias !324
  %i.pf = add nuw nsw i32 %.032.i, 4              ; 2 uses
  %.020.i151.3 = getelementptr inbounds nuw i8, ptr %.02033.i150, i64 4 ; 2 uses
  %.018.i.3 = getelementptr inbounds nuw i8, ptr %.01834.i, i64 4 ; 2 uses
  %.022.i152.3 = getelementptr inbounds nuw i8, ptr %.02235.i, i64 4 ; 2 uses
  %exitcond.not.i153.3 = icmp eq i32 %i.pf, %i.j
  br i1 %exitcond.not.i153.3, label %.preheader.i154, label %.lr.ph.i149, !llvm.loop !297

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.preheader, %.lr.ph44.i
  %.143.i = phi i32 [ %i.pq, %.lr.ph44.i ], [ %.143.i.ph, %.lr.ph44.i.preheader ]
  %.pn42.i = phi ptr [ %.017.i, %.lr.ph44.i ], [ %.pn42.i.ph, %.lr.ph44.i.preheader ]
  %.11941.i = phi ptr [ %i.pi, %.lr.ph44.i ], [ %.11941.i.ph, %.lr.ph44.i.preheader ] ; 2 uses
  %.12140.i = phi ptr [ %i.pp, %.lr.ph44.i ], [ %.12140.i.ph, %.lr.ph44.i.preheader ] ; 2 uses
  %.12339.i = phi ptr [ %i.pg, %.lr.ph44.i ], [ %.12339.i.ph, %.lr.ph44.i.preheader ] ; 2 uses
  %.017.i = getelementptr inbounds nuw i8, ptr %.pn42.i, i64 1 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.12339.i, i64 1
  %i.ph = load i8, ptr %.12339.i, align 1, !tbaa !10, !noalias !324
  %i.pi = getelementptr inbounds nuw i8, ptr %.11941.i, i64 1
  %i.pj = load i8, ptr %.11941.i, align 1, !tbaa !10, !noalias !324
  %i.pk = zext i8 %i.pj to i16
  %i.pl = load i8, ptr %.017.i, align 1, !tbaa !10, !noalias !324
  %i.pm = zext i8 %i.pl to i16
  %i.pn = add nuw nsw i16 %i.pm, %i.pk
  %i.po = lshr i16 %i.pn, 1
  %.tr.i = trunc nuw i16 %i.po to i8
  %.narrow.i157 = sub i8 %i.ph, %.tr.i
  %i.pp = getelementptr inbounds nuw i8, ptr %.12140.i, i64 1
  store i8 %.narrow.i157, ptr %.12140.i, align 1, !tbaa !10, !noalias !324
  %i.pq = add i32 %.143.i, 1                      ; 2 uses
  %i.pr = zext i32 %i.pq to i64
  %i.ps = icmp ugt i64 %i.e, %i.pr
  br i1 %i.ps, label %.lr.ph44.i, label %.thread214.thread, !llvm.loop !298

.thread197:                                       ; preds = %bb.o
  %i.pt = and i32 %.0111, 64
  %.not124 = icmp eq i32 %i.pt, 0
  br i1 %.not124, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.thread197
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !66, !alias.scope !326 ; 21 uses
  %i.pw = ptrtoaddr ptr %i.pv to i64              ; 2 uses
  store i8 3, ptr %i.pv, align 1, !tbaa !10, !noalias !326
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !68, !alias.scope !326 ; 17 uses
  %i.pz = ptrtoaddr ptr %i.py to i64
  %.03344.i = getelementptr inbounds nuw i8, ptr %i.pv, i64 1 ; 5 uses
  %.03145.i = getelementptr inbounds nuw i8, ptr %i.py, i64 1 ; 5 uses
  %.03546.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 5 uses
  %.not.i158 = icmp eq i32 %i.j, 0
  br i1 %.not.i158, label %.preheader.i164, label %.lr.ph.i159.preheader

.lr.ph.i159.preheader:                            ; preds = %bb.q
  %i.qa = zext nneg i32 %i.j to i64               ; 2 uses
  %min.iters.check301 = icmp ult i8 %i.g, 41
  br i1 %min.iters.check301, label %.lr.ph.i159.preheader718, label %vector.memcheck302

vector.memcheck302:                               ; preds = %.lr.ph.i159.preheader
  %i.qb = sub i64 %i.m, %i.pw
  %diff.check303 = icmp ugt i64 %i.qb, -4
end_hunk_0
begin_hunk_1_@png_write_find_filter:bb.a
  store i8 %.narrow42.i.1, ptr %.033.i160, align 1, !tbaa !10, !noalias !326
  %i.wr = zext i8 %.narrow42.i.1 to i64           ; 2 uses
  %i.ws = sub nuw nsw i64 256, %i.wr
  %i.wt = icmp slt i8 %.narrow42.i.1, 0
  %i.wu = select i1 %i.wt, i64 %i.ws, i64 %i.wr
  %i.wv = add i64 %i.wu, %i.wn                    ; 2 uses
  %i.ww = add nuw nsw i32 %.02847.i, 2            ; 2 uses
  %.033.i160.1 = getelementptr inbounds nuw i8, ptr %.03349.i, i64 2 ; 2 uses
  %.031.i161.1 = getelementptr inbounds nuw i8, ptr %.03150.i, i64 2 ; 2 uses
  %.035.i162.1 = getelementptr inbounds nuw i8, ptr %.03551.i, i64 2 ; 2 uses
  %exitcond.not.i163.1 = icmp eq i32 %i.ww, %i.j
  br i1 %exitcond.not.i163.1, label %.preheader.i164, label %.lr.ph.i159, !llvm.loop !301

.lr.ph63.i:                                       ; preds = %.preheader.i164, %.lr.ph63.i
  %.03062.pn.i = phi ptr [ %.03062.i, %.lr.ph63.i ], [ %i.l, %.preheader.i164 ]
  %.161.i = phi i64 [ %i.xi, %.lr.ph63.i ], [ %.0.lcssa.i165, %.preheader.i164 ]
  %.12960.i = phi i32 [ %i.xn, %.lr.ph63.i ], [ %i.j, %.preheader.i164 ]
  %.13259.i = phi ptr [ %i.xl, %.lr.ph63.i ], [ %.031.lcssa.i, %.preheader.i164 ] ; 2 uses
  %.13458.i = phi ptr [ %i.xk, %.lr.ph63.i ], [ %.033.lcssa.i166, %.preheader.i164 ] ; 2 uses
  %.13657.i = phi ptr [ %i.xm, %.lr.ph63.i ], [ %.035.lcssa.i167, %.preheader.i164 ] ; 2 uses
  %.03062.i = getelementptr inbounds nuw i8, ptr %.03062.pn.i, i64 1 ; 2 uses
  %i.wx = load i8, ptr %.13657.i, align 1, !tbaa !10, !noalias !326
  %i.wy = load i8, ptr %.13259.i, align 1, !tbaa !10, !noalias !326
  %i.wz = zext i8 %i.wy to i16
  %i.xa = load i8, ptr %.03062.i, align 1, !tbaa !10, !noalias !326
  %i.xb = zext i8 %i.xa to i16
  %i.xc = add nuw nsw i16 %i.xb, %i.wz
  %i.xd = lshr i16 %i.xc, 1
  %.tr.i169 = trunc nuw i16 %i.xd to i8
  %.narrow.i170 = sub i8 %i.wx, %.tr.i169         ; 3 uses
  store i8 %.narrow.i170, ptr %.13458.i, align 1, !tbaa !10, !noalias !326
  %i.xe = zext i8 %.narrow.i170 to i64            ; 2 uses
  %i.xf = sub nuw nsw i64 256, %i.xe
  %i.xg = icmp slt i8 %.narrow.i170, 0
  %i.xh = select i1 %i.xg, i64 %i.xf, i64 %i.xe
  %i.xi = add i64 %i.xh, %.161.i                  ; 3 uses
  %i.xj = icmp ule i64 %i.xi, %.4
  %i.xk = getelementptr inbounds nuw i8, ptr %.13458.i, i64 1
  %i.xl = getelementptr inbounds nuw i8, ptr %.13259.i, i64 1
  %i.xm = getelementptr inbounds nuw i8, ptr %.13657.i, i64 1
  %i.xn = add i32 %.12960.i, 1                    ; 2 uses
  %i.xo = zext i32 %i.xn to i64
  %i.xp = icmp ugt i64 %i.e, %i.xo
  %or.cond.i171 = select i1 %i.xj, i1 %i.xp, i1 false
  br i1 %or.cond.i171, label %.lr.ph63.i, label %png_setup_avg_row.exit, !llvm.loop !302

png_setup_avg_row.exit:                           ; preds = %.lr.ph63.i, %.preheader.i164
  %.2.i168 = phi i64 [ %.0.lcssa.i165, %.preheader.i164 ], [ %i.xi, %.lr.ph63.i ] ; 3 uses
  %i.xq = icmp ult i64 %.2.i168, %.4
  br i1 %i.xq, label %bb.r, label %bb.t

bb.r:                                             ; preds = %png_setup_avg_row.exit
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !67 ; 2 uses
  %.not125 = icmp eq ptr %i.xs, null
  br i1 %.not125, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.xs, ptr %i.pu, align 8, !tbaa !66
  store ptr %i.pv, ptr %i.xr, align 8, !tbaa !67
  br label %bb.t

bb.t:                                             ; preds = %png_setup_avg_row.exit, %bb.s, %bb.r, %.thread197
  %.5109 = phi ptr [ %.3107, %png_setup_avg_row.exit ], [ %.3107, %.thread197 ], [ %i.pv, %bb.s ], [ %i.pv, %bb.r ] ; 2 uses
  %.6 = phi i64 [ %.4, %png_setup_avg_row.exit ], [ %.4, %.thread197 ], [ %.2.i168, %bb.s ], [ %.2.i168, %bb.r ] ; 2 uses
  %i.xt = icmp eq i32 %.0111, 128
  br i1 %i.xt, label %bb.u, label %.thread214

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !66, !alias.scope !327 ; 8 uses
  %i.xw = ptrtoaddr ptr %i.xv to i64              ; 2 uses
  store i8 4, ptr %i.xv, align 1, !tbaa !10, !noalias !327
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !68, !alias.scope !327 ; 9 uses
  %i.xz = ptrtoaddr ptr %i.xy to i64              ; 2 uses
  %i.ya = zext nneg i32 %i.j to i64               ; 13 uses
  %.04964.i = getelementptr inbounds nuw i8, ptr %i.xv, i64 1 ; 7 uses
  %.04765.i = getelementptr inbounds nuw i8, ptr %i.xy, i64 1 ; 7 uses
  %.05166.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 7 uses
  %.not81.i = icmp eq i32 %i.j, 0
  br i1 %.not81.i, label %.preheader.i174, label %iter.check

iter.check:                                       ; preds = %bb.u
  %min.iters.check364 = icmp ult i8 %i.g, 25
  br i1 %min.iters.check364, label %.lr.ph.i172.preheader, label %vector.memcheck365

vector.memcheck365:                               ; preds = %iter.check
  %i.yb = sub i64 %i.m, %i.xw
  %diff.check366 = icmp ugt i64 %i.yb, -16
  %i.yc = sub i64 %i.xz, %i.xw
  %diff.check367 = icmp ugt i64 %i.yc, -16
  %conflict.rdx368 = or i1 %diff.check366, %diff.check367
  br i1 %conflict.rdx368, label %.lr.ph.i172.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck365
  %min.iters.check369 = icmp ult i8 %i.g, 121
  br i1 %min.iters.check369, label %vec.epilog.ph, label %vector.ph370

vector.ph370:                                     ; preds = %vector.main.loop.iter.check
  %i.yd = and i64 %i.ya, 12
  %n.vec371 = and i64 %i.ya, 48                   ; 7 uses
  %i.ye = getelementptr i8, ptr %.05166.i, i64 %n.vec371 ; 2 uses
  %i.yf = getelementptr i8, ptr %.04765.i, i64 %n.vec371 ; 2 uses
  %i.yg = getelementptr i8, ptr %.04964.i, i64 %n.vec371 ; 2 uses
  %wide.load377 = load <16 x i8>, ptr %.05166.i, align 1, !tbaa !10, !noalias !327
  %wide.load378 = load <16 x i8>, ptr %.04765.i, align 1, !tbaa !10, !noalias !327
  %i.yh = sub <16 x i8> %wide.load377, %wide.load378
  store <16 x i8> %i.yh, ptr %.04964.i, align 1, !tbaa !10, !noalias !327
  %i.yi = icmp eq i64 %n.vec371, 16
  br i1 %i.yi, label %middle.block380, label %vector.body372.1

vector.body372.1:                                 ; preds = %vector.ph370
  %next.gep374.1 = getelementptr i8, ptr %i.l, i64 17
  %next.gep375.1 = getelementptr i8, ptr %i.xy, i64 17
  %next.gep376.1 = getelementptr i8, ptr %i.xv, i64 17
  %wide.load377.1 = load <16 x i8>, ptr %next.gep374.1, align 1, !tbaa !10, !noalias !327
  %wide.load378.1 = load <16 x i8>, ptr %next.gep375.1, align 1, !tbaa !10, !noalias !327
  %i.yj = sub <16 x i8> %wide.load377.1, %wide.load378.1
  store <16 x i8> %i.yj, ptr %next.gep376.1, align 1, !tbaa !10, !noalias !327
  br label %middle.block380

middle.block380:                                  ; preds = %vector.body372.1, %vector.ph370
  %cmp.n381 = icmp eq i64 %n.vec371, %i.ya
  br i1 %cmp.n381, label %.preheader.i174, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block380
  %min.epilog.iters.check = icmp eq i64 %i.yd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i172.preheader, label %vec.epilog.ph, !prof !319

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec371, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec382 = and i64 %i.ya, 60                   ; 6 uses
  %i.yk = getelementptr i8, ptr %.05166.i, i64 %n.vec382 ; 2 uses
  %i.yl = getelementptr i8, ptr %.04765.i, i64 %n.vec382 ; 2 uses
  %i.ym = getelementptr i8, ptr %.04964.i, i64 %n.vec382 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index383 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next389, %vec.epilog.vector.body ] ; 4 uses
  %next.gep384 = getelementptr i8, ptr %.05166.i, i64 %index383
  %next.gep385 = getelementptr i8, ptr %.04765.i, i64 %index383
  %next.gep386 = getelementptr i8, ptr %.04964.i, i64 %index383
  %wide.load387 = load <4 x i8>, ptr %next.gep384, align 1, !tbaa !10, !noalias !327
  %wide.load388 = load <4 x i8>, ptr %next.gep385, align 1, !tbaa !10, !noalias !327
  %i.yn = sub <4 x i8> %wide.load387, %wide.load388
  store <4 x i8> %i.yn, ptr %next.gep386, align 1, !tbaa !10, !noalias !327
  %index.next389 = add nuw i64 %index383, 4       ; 2 uses
  %i.yo = icmp eq i64 %index.next389, %n.vec382
  br i1 %i.yo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !305

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n390 = icmp eq i64 %n.vec382, %i.ya
  br i1 %cmp.n390, label %.preheader.i174, label %.lr.ph.i172.preheader

.lr.ph.i172.preheader:                            ; preds = %iter.check, %vector.memcheck365, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.05170.i.ph = phi ptr [ %.05166.i, %iter.check ], [ %.05166.i, %vector.memcheck365 ], [ %i.ye, %vec.epilog.iter.check ], [ %i.yk, %vec.epilog.middle.block ] ; 2 uses
  %.04769.i.ph = phi ptr [ %.04765.i, %iter.check ], [ %.04765.i, %vector.memcheck365 ], [ %i.yf, %vec.epilog.iter.check ], [ %i.yl, %vec.epilog.middle.block ] ; 2 uses
  %.04968.i.ph = phi ptr [ %.04964.i, %iter.check ], [ %.04964.i, %vector.memcheck365 ], [ %i.yg, %vec.epilog.iter.check ], [ %i.ym, %vec.epilog.middle.block ] ; 2 uses
  %.067.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck365 ], [ %n.vec371, %vec.epilog.iter.check ], [ %n.vec382, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter736 = and i64 %i.ya, 3                 ; 2 uses
  %lcmp.mod737.not = icmp eq i64 %xtraiter736, 0
  br i1 %lcmp.mod737.not, label %.lr.ph.i172.prol.loopexit, label %.lr.ph.i172.prol

.lr.ph.i172.prol:                                 ; preds = %.lr.ph.i172.preheader, %.lr.ph.i172.prol
  %.05170.i.prol = phi ptr [ %.051.i.prol, %.lr.ph.i172.prol ], [ %.05170.i.ph, %.lr.ph.i172.preheader ] ; 2 uses
  %.04769.i.prol = phi ptr [ %.047.i.prol, %.lr.ph.i172.prol ], [ %.04769.i.ph, %.lr.ph.i172.preheader ] ; 2 uses
  %.04968.i.prol = phi ptr [ %.049.i.prol, %.lr.ph.i172.prol ], [ %.04968.i.ph, %.lr.ph.i172.preheader ] ; 2 uses
  %.067.i.prol = phi i64 [ %i.yr, %.lr.ph.i172.prol ], [ %.067.i.ph, %.lr.ph.i172.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i172.prol ], [ 0, %.lr.ph.i172.preheader ]
  %i.yp = load i8, ptr %.05170.i.prol, align 1, !tbaa !10, !noalias !327
  %i.yq = load i8, ptr %.04769.i.prol, align 1, !tbaa !10, !noalias !327
  %.narrow62.i.prol = sub i8 %i.yp, %i.yq
  store i8 %.narrow62.i.prol, ptr %.04968.i.prol, align 1, !tbaa !10, !noalias !327
  %i.yr = add nuw nsw i64 %.067.i.prol, 1         ; 2 uses
  %.049.i.prol = getelementptr inbounds nuw i8, ptr %.04968.i.prol, i64 1 ; 3 uses
  %.047.i.prol = getelementptr inbounds nuw i8, ptr %.04769.i.prol, i64 1 ; 3 uses
  %.051.i.prol = getelementptr inbounds nuw i8, ptr %.05170.i.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter736
  br i1 %prol.iter.cmp.not, label %.lr.ph.i172.prol.loopexit, label %.lr.ph.i172.prol, !llvm.loop !306

.lr.ph.i172.prol.loopexit:                        ; preds = %.lr.ph.i172.prol, %.lr.ph.i172.preheader
  %.049.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i172.preheader ], [ %.049.i.prol, %.lr.ph.i172.prol ]
  %.047.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i172.preheader ], [ %.047.i.prol, %.lr.ph.i172.prol ]
  %.051.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i172.preheader ], [ %.051.i.prol, %.lr.ph.i172.prol ]
  %.05170.i.unr = phi ptr [ %.05170.i.ph, %.lr.ph.i172.preheader ], [ %.051.i.prol, %.lr.ph.i172.prol ]
  %.04769.i.unr = phi ptr [ %.04769.i.ph, %.lr.ph.i172.preheader ], [ %.047.i.prol, %.lr.ph.i172.prol ]
  %.04968.i.unr = phi ptr [ %.04968.i.ph, %.lr.ph.i172.preheader ], [ %.049.i.prol, %.lr.ph.i172.prol ]
  %.067.i.unr = phi i64 [ %.067.i.ph, %.lr.ph.i172.preheader ], [ %i.yr, %.lr.ph.i172.prol ]
  %i.ys = sub nsw i64 %.067.i.ph, %i.ya
  %i.yt = icmp ugt i64 %i.ys, -4
  br i1 %i.yt, label %.preheader.i174, label %.lr.ph.i172

.preheader.i174:                                  ; preds = %.lr.ph.i172.prol.loopexit, %.lr.ph.i172, %middle.block380, %vec.epilog.middle.block, %bb.u
  %.0.lcssa.i175 = phi i64 [ 0, %bb.u ], [ %i.ya, %middle.block380 ], [ %i.ya, %vec.epilog.middle.block ], [ %i.ya, %.lr.ph.i172 ], [ %i.ya, %.lr.ph.i172.prol.loopexit ] ; 5 uses
  %.049.lcssa.i = phi ptr [ %.04964.i, %bb.u ], [ %i.yg, %middle.block380 ], [ %i.ym, %vec.epilog.middle.block ], [ %.049.i.lcssa.unr, %.lr.ph.i172.prol.loopexit ], [ %.049.i.3, %.lr.ph.i172 ] ; 7 uses
  %.047.lcssa.i = phi ptr [ %.04765.i, %bb.u ], [ %i.yf, %middle.block380 ], [ %i.yl, %vec.epilog.middle.block ], [ %.047.i.lcssa.unr, %.lr.ph.i172.prol.loopexit ], [ %.047.i.3, %.lr.ph.i172 ] ; 7 uses
  %.051.lcssa.i = phi ptr [ %.05166.i, %bb.u ], [ %i.ye, %middle.block380 ], [ %i.yk, %vec.epilog.middle.block ], [ %.051.i.lcssa.unr, %.lr.ph.i172.prol.loopexit ], [ %.051.i.3, %.lr.ph.i172 ] ; 7 uses
  %.049.lcssa.i406 = ptrtoaddr ptr %.049.lcssa.i to i64 ; 3 uses
  %.051.lcssa.i407 = ptrtoaddr ptr %.051.lcssa.i to i64
  %.047.lcssa.i408 = ptrtoaddr ptr %.047.lcssa.i to i64
  %i.yu = icmp ult i64 %.0.lcssa.i175, %i.e
  br i1 %i.yu, label %iter.check437, label %.thread214.thread

iter.check437:                                    ; preds = %.preheader.i174
  %i.yv = sub i64 %i.e, %i.ya                     ; 7 uses
  %min.iters.check410 = icmp ult i64 %i.yv, 4
  br i1 %min.iters.check410, label %.lr.ph80.i.preheader, label %vector.memcheck411

vector.memcheck411:                               ; preds = %iter.check437
  %i.yw = add i64 %.049.lcssa.i406, -1            ; 2 uses
  %i.yx = sub i64 %i.xz, %i.yw
  %diff.check412 = icmp ugt i64 %i.yx, -16
  %i.yy = sub i64 %.047.lcssa.i408, %.049.lcssa.i406
  %diff.check413 = icmp ugt i64 %i.yy, -16
  %conflict.rdx414 = or i1 %diff.check412, %diff.check413
  %i.yz = sub i64 %.051.lcssa.i407, %.049.lcssa.i406
  %diff.check415 = icmp ugt i64 %i.yz, -16
  %conflict.rdx416 = or i1 %conflict.rdx414, %diff.check415
  %i.za = sub i64 %i.m, %i.yw
  %diff.check417 = icmp ugt i64 %i.za, -16
  %conflict.rdx418 = or i1 %conflict.rdx416, %diff.check417
  br i1 %conflict.rdx418, label %.lr.ph80.i.preheader, label %vector.main.loop.iter.check419

vector.main.loop.iter.check419:                   ; preds = %vector.memcheck411
  %min.iters.check420 = icmp ult i64 %i.yv, 16
  br i1 %min.iters.check420, label %vec.epilog.ph441, label %vector.ph421

vector.ph421:                                     ; preds = %vector.main.loop.iter.check419
  %i.zb = and i64 %i.yv, 12
  %n.vec422 = and i64 %i.yv, -16                  ; 9 uses
  %i.zc = add i64 %.0.lcssa.i175, %n.vec422
  %i.zd = getelementptr i8, ptr %i.l, i64 %n.vec422
  %i.ze = getelementptr i8, ptr %i.xy, i64 %n.vec422
  %i.zf = getelementptr i8, ptr %.047.lcssa.i, i64 %n.vec422
  %i.zg = getelementptr i8, ptr %.049.lcssa.i, i64 %n.vec422
  %i.zh = getelementptr i8, ptr %.051.lcssa.i, i64 %n.vec422
  br label %vector.body423

vector.body423:                                   ; preds = %vector.ph421, %vector.body423
  %index424 = phi i64 [ 0, %vector.ph421 ], [ %index.next434, %vector.body423 ] ; 6 uses
  %next.gep425 = getelementptr i8, ptr %i.l, i64 %index424
  %next.gep426 = getelementptr i8, ptr %i.xy, i64 %index424
  %next.gep427 = getelementptr i8, ptr %.047.lcssa.i, i64 %index424
  %next.gep428 = getelementptr i8, ptr %.049.lcssa.i, i64 %index424
  %next.gep429 = getelementptr i8, ptr %.051.lcssa.i, i64 %index424
  %i.zi = getelementptr inbounds nuw i8, ptr %next.gep426, i64 1
  %i.zj = getelementptr inbounds nuw i8, ptr %next.gep425, i64 1
  %wide.load430 = load <16 x i8>, ptr %next.gep427, align 1, !tbaa !10, !noalias !327 ; 2 uses
  %i.zk = zext <16 x i8> %wide.load430 to <16 x i32>
  %wide.load431 = load <16 x i8>, ptr %i.zi, align 1, !tbaa !10, !noalias !327 ; 2 uses
  %i.zl = zext <16 x i8> %wide.load431 to <16 x i32> ; 2 uses
  %wide.load432 = load <16 x i8>, ptr %i.zj, align 1, !tbaa !10, !noalias !327 ; 2 uses
  %i.zm = zext <16 x i8> %wide.load432 to <16 x i32>
  %i.zn = sub nsw <16 x i32> %i.zk, %i.zl         ; 2 uses
  %i.zo = sub nsw <16 x i32> %i.zm, %i.zl         ; 2 uses
  %i.zp = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.zn, i1 true) ; 2 uses
  %i.zq = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.zo, i1 true) ; 2 uses
  %i.zr = add nsw <16 x i32> %i.zo, %i.zn
  %i.zs = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.zr, i1 true) ; 2 uses
  %i.zt = icmp samesign ugt <16 x i32> %i.zp, %i.zq
  %i.zu = icmp samesign ugt <16 x i32> %i.zp, %i.zs
  %i.zv = select <16 x i1> %i.zt, <16 x i1> splat (i1 true), <16 x i1> %i.zu
  %i.zw = icmp samesign ugt <16 x i32> %i.zq, %i.zs
  %i.zx = select <16 x i1> %i.zw, <16 x i8> %wide.load431, <16 x i8> %wide.load430
  %i.zy = select <16 x i1> %i.zv, <16 x i8> %i.zx, <16 x i8> %wide.load432
  %wide.load433 = load <16 x i8>, ptr %next.gep429, align 1, !tbaa !10, !noalias !327
  %i.zz = sub <16 x i8> %wide.load433, %i.zy
  store <16 x i8> %i.zz, ptr %next.gep428, align 1, !tbaa !10, !noalias !327
  %index.next434 = add nuw i64 %index424, 16      ; 2 uses
  %i.aaa = icmp eq i64 %index.next434, %n.vec422
  br i1 %i.aaa, label %middle.block435, label %vector.body423, !llvm.loop !307

middle.block435:                                  ; preds = %vector.body423
  %cmp.n436 = icmp eq i64 %i.yv, %n.vec422
  br i1 %cmp.n436, label %.thread214.thread, label %vec.epilog.iter.check438

vec.epilog.iter.check438:                         ; preds = %middle.block435
  %min.epilog.iters.check440 = icmp eq i64 %i.zb, 0
  br i1 %min.epilog.iters.check440, label %.lr.ph80.i.preheader, label %vec.epilog.ph441, !prof !319

vec.epilog.ph441:                                 ; preds = %vector.main.loop.iter.check419, %vec.epilog.iter.check438
  %vec.epilog.resume.val442 = phi i64 [ %n.vec422, %vec.epilog.iter.check438 ], [ 0, %vector.main.loop.iter.check419 ]
  %n.vec443 = and i64 %i.yv, -4                   ; 8 uses
  %i.aab = add i64 %.0.lcssa.i175, %n.vec443
  %i.aac = getelementptr i8, ptr %i.l, i64 %n.vec443
  %i.aad = getelementptr i8, ptr %i.xy, i64 %n.vec443
  %i.aae = getelementptr i8, ptr %.047.lcssa.i, i64 %n.vec443
  %i.aaf = getelementptr i8, ptr %.049.lcssa.i, i64 %n.vec443
  %i.aag = getelementptr i8, ptr %.051.lcssa.i, i64 %n.vec443
  br label %vec.epilog.vector.body444

vec.epilog.vector.body444:                        ; preds = %vec.epilog.vector.body444, %vec.epilog.ph441
  %index445 = phi i64 [ %vec.epilog.resume.val442, %vec.epilog.ph441 ], [ %index.next455, %vec.epilog.vector.body444 ] ; 6 uses
  %next.gep446 = getelementptr i8, ptr %i.l, i64 %index445
  %next.gep447 = getelementptr i8, ptr %i.xy, i64 %index445
  %next.gep448 = getelementptr i8, ptr %.047.lcssa.i, i64 %index445
  %next.gep449 = getelementptr i8, ptr %.049.lcssa.i, i64 %index445
  %next.gep450 = getelementptr i8, ptr %.051.lcssa.i, i64 %index445
  %i.aah = getelementptr inbounds nuw i8, ptr %next.gep447, i64 1
  %i.aai = getelementptr inbounds nuw i8, ptr %next.gep446, i64 1
  %wide.load451 = load <4 x i8>, ptr %next.gep448, align 1, !tbaa !10, !noalias !327 ; 2 uses
  %i.aaj = zext <4 x i8> %wide.load451 to <4 x i32>
  %wide.load452 = load <4 x i8>, ptr %i.aah, align 1, !tbaa !10, !noalias !327 ; 2 uses
  %i.aak = zext <4 x i8> %wide.load452 to <4 x i32> ; 2 uses
  %wide.load453 = load <4 x i8>, ptr %i.aai, align 1, !tbaa !10, !noalias !327 ; 2 uses
  %i.aal = zext <4 x i8> %wide.load453 to <4 x i32>
  %i.aam = sub nsw <4 x i32> %i.aaj, %i.aak       ; 2 uses
  %i.aan = sub nsw <4 x i32> %i.aal, %i.aak       ; 2 uses
  %i.aao = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.aam, i1 true) ; 2 uses
  %i.aap = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.aan, i1 true) ; 2 uses
  %i.aaq = add nsw <4 x i32> %i.aan, %i.aam
  %i.aar = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.aaq, i1 true) ; 2 uses
  %i.aas = icmp samesign ugt <4 x i32> %i.aao, %i.aap
  %i.aat = icmp samesign ugt <4 x i32> %i.aao, %i.aar
  %i.aau = select <4 x i1> %i.aas, <4 x i1> splat (i1 true), <4 x i1> %i.aat
  %i.aav = icmp samesign ugt <4 x i32> %i.aap, %i.aar
  %i.aaw = select <4 x i1> %i.aav, <4 x i8> %wide.load452, <4 x i8> %wide.load451
  %i.aax = select <4 x i1> %i.aau, <4 x i8> %i.aaw, <4 x i8> %wide.load453
  %wide.load454 = load <4 x i8>, ptr %next.gep450, align 1, !tbaa !10, !noalias !327
  %i.aay = sub <4 x i8> %wide.load454, %i.aax
  store <4 x i8> %i.aay, ptr %next.gep449, align 1, !tbaa !10, !noalias !327
  %index.next455 = add nuw i64 %index445, 4       ; 2 uses
  %i.aaz = icmp eq i64 %index.next455, %n.vec443
  br i1 %i.aaz, label %vec.epilog.middle.block456, label %vec.epilog.vector.body444, !llvm.loop !308

vec.epilog.middle.block456:                       ; preds = %vec.epilog.vector.body444
  %cmp.n457 = icmp eq i64 %i.yv, %n.vec443
  br i1 %cmp.n457, label %.thread214.thread, label %.lr.ph80.i.preheader

.lr.ph80.i.preheader:                             ; preds = %iter.check437, %vector.memcheck411, %vec.epilog.iter.check438, %vec.epilog.middle.block456
  %.179.i.ph = phi i64 [ %.0.lcssa.i175, %iter.check437 ], [ %.0.lcssa.i175, %vector.memcheck411 ], [ %i.zc, %vec.epilog.iter.check438 ], [ %i.aab, %vec.epilog.middle.block456 ]
  %.pn5678.i.ph = phi ptr [ %i.l, %iter.check437 ], [ %i.l, %vector.memcheck411 ], [ %i.zd, %vec.epilog.iter.check438 ], [ %i.aac, %vec.epilog.middle.block456 ]
  %.pn77.i.ph = phi ptr [ %i.xy, %iter.check437 ], [ %i.xy, %vector.memcheck411 ], [ %i.ze, %vec.epilog.iter.check438 ], [ %i.aad, %vec.epilog.middle.block456 ]
  %.14876.i.ph = phi ptr [ %.047.lcssa.i, %iter.check437 ], [ %.047.lcssa.i, %vector.memcheck411 ], [ %i.zf, %vec.epilog.iter.check438 ], [ %i.aae, %vec.epilog.middle.block456 ]
  %.15075.i.ph = phi ptr [ %.049.lcssa.i, %iter.check437 ], [ %.049.lcssa.i, %vector.memcheck411 ], [ %i.zg, %vec.epilog.iter.check438 ], [ %i.aaf, %vec.epilog.middle.block456 ]
  %.15274.i.ph = phi ptr [ %.051.lcssa.i, %iter.check437 ], [ %.051.lcssa.i, %vector.memcheck411 ], [ %i.zh, %vec.epilog.iter.check438 ], [ %i.aag, %vec.epilog.middle.block456 ]
  br label %.lr.ph80.i

.lr.ph.i172:                                      ; preds = %.lr.ph.i172.prol.loopexit, %.lr.ph.i172
  %.05170.i = phi ptr [ %.051.i.3, %.lr.ph.i172 ], [ %.05170.i.unr, %.lr.ph.i172.prol.loopexit ] ; 5 uses
  %.04769.i = phi ptr [ %.047.i.3, %.lr.ph.i172 ], [ %.04769.i.unr, %.lr.ph.i172.prol.loopexit ] ; 5 uses
  %.04968.i = phi ptr [ %.049.i.3, %.lr.ph.i172 ], [ %.04968.i.unr, %.lr.ph.i172.prol.loopexit ] ; 5 uses
  %.067.i = phi i64 [ %i.abi, %.lr.ph.i172 ], [ %.067.i.unr, %.lr.ph.i172.prol.loopexit ]
  %i.aba = load i8, ptr %.05170.i, align 1, !tbaa !10, !noalias !327
  %i.abb = load i8, ptr %.04769.i, align 1, !tbaa !10, !noalias !327
  %.narrow62.i = sub i8 %i.aba, %i.abb
  store i8 %.narrow62.i, ptr %.04968.i, align 1, !tbaa !10, !noalias !327
  %.049.i = getelementptr inbounds nuw i8, ptr %.04968.i, i64 1
  %.047.i = getelementptr inbounds nuw i8, ptr %.04769.i, i64 1
  %.051.i = getelementptr inbounds nuw i8, ptr %.05170.i, i64 1
  %i.abc = load i8, ptr %.051.i, align 1, !tbaa !10, !noalias !327
  %i.abd = load i8, ptr %.047.i, align 1, !tbaa !10, !noalias !327
  %.narrow62.i.1 = sub i8 %i.abc, %i.abd
  store i8 %.narrow62.i.1, ptr %.049.i, align 1, !tbaa !10, !noalias !327
  %.049.i.1 = getelementptr inbounds nuw i8, ptr %.04968.i, i64 2
  %.047.i.1 = getelementptr inbounds nuw i8, ptr %.04769.i, i64 2
  %.051.i.1 = getelementptr inbounds nuw i8, ptr %.05170.i, i64 2
  %i.abe = load i8, ptr %.051.i.1, align 1, !tbaa !10, !noalias !327
  %i.abf = load i8, ptr %.047.i.1, align 1, !tbaa !10, !noalias !327
  %.narrow62.i.2 = sub i8 %i.abe, %i.abf
  store i8 %.narrow62.i.2, ptr %.049.i.1, align 1, !tbaa !10, !noalias !327
  %.049.i.2 = getelementptr inbounds nuw i8, ptr %.04968.i, i64 3
  %.047.i.2 = getelementptr inbounds nuw i8, ptr %.04769.i, i64 3
  %.051.i.2 = getelementptr inbounds nuw i8, ptr %.05170.i, i64 3
  %i.abg = load i8, ptr %.051.i.2, align 1, !tbaa !10, !noalias !327
  %i.abh = load i8, ptr %.047.i.2, align 1, !tbaa !10, !noalias !327
  %.narrow62.i.3 = sub i8 %i.abg, %i.abh
  store i8 %.narrow62.i.3, ptr %.049.i.2, align 1, !tbaa !10, !noalias !327
  %i.abi = add nuw nsw i64 %.067.i, 4             ; 2 uses
  %.049.i.3 = getelementptr inbounds nuw i8, ptr %.04968.i, i64 4 ; 2 uses
  %.047.i.3 = getelementptr inbounds nuw i8, ptr %.04769.i, i64 4 ; 2 uses
  %.051.i.3 = getelementptr inbounds nuw i8, ptr %.05170.i, i64 4 ; 2 uses
  %exitcond.not.i173.3 = icmp eq i64 %i.abi, %i.ya
  br i1 %exitcond.not.i173.3, label %.preheader.i174, label %.lr.ph.i172, !llvm.loop !309

.lr.ph80.i:                                       ; preds = %.lr.ph80.i.preheader, %.lr.ph80.i
  %.179.i = phi i64 [ %i.aca, %.lr.ph80.i ], [ %.179.i.ph, %.lr.ph80.i.preheader ]
  %.pn5678.i = phi ptr [ %.045.i, %.lr.ph80.i ], [ %.pn5678.i.ph, %.lr.ph80.i.preheader ]
  %.pn77.i = phi ptr [ %.046.i, %.lr.ph80.i ], [ %.pn77.i.ph, %.lr.ph80.i.preheader ]
  %.14876.i = phi ptr [ %i.abj, %.lr.ph80.i ], [ %.14876.i.ph, %.lr.ph80.i.preheader ] ; 2 uses
  %.15075.i = phi ptr [ %i.abz, %.lr.ph80.i ], [ %.15075.i.ph, %.lr.ph80.i.preheader ] ; 2 uses
  %.15274.i = phi ptr [ %i.abx, %.lr.ph80.i ], [ %.15274.i.ph, %.lr.ph80.i.preheader ] ; 2 uses
  %.046.i = getelementptr inbounds nuw i8, ptr %.pn77.i, i64 1 ; 2 uses
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn5678.i, i64 1 ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %.14876.i, i64 1
  %i.abk = load i8, ptr %.14876.i, align 1, !tbaa !10, !noalias !327 ; 2 uses
  %i.abl = zext i8 %i.abk to i32
  %i.abm = load i8, ptr %.046.i, align 1, !tbaa !10, !noalias !327 ; 2 uses
  %i.abn = zext i8 %i.abm to i32                  ; 2 uses
  %i.abo = load i8, ptr %.045.i, align 1, !tbaa !10, !noalias !327 ; 2 uses
  %i.abp = zext i8 %i.abo to i32
  %i.abq = sub nsw i32 %i.abl, %i.abn             ; 2 uses
  %i.abr = sub nsw i32 %i.abp, %i.abn             ; 2 uses
  %i.abs = tail call i32 @llvm.abs.i32(i32 %i.abq, i1 true) ; 2 uses
  %i.abt = tail call i32 @llvm.abs.i32(i32 %i.abr, i1 true) ; 2 uses
  %i.abu = add nsw i32 %i.abr, %i.abq
  %i.abv = tail call i32 @llvm.abs.i32(i32 %i.abu, i1 true) ; 2 uses
  %.not.i176 = icmp samesign ugt i32 %i.abs, %i.abt
  %.not57.i = icmp samesign ugt i32 %i.abs, %i.abv
  %or.cond.i177 = select i1 %.not.i176, i1 true, i1 %.not57.i
  %.not58.i = icmp samesign ugt i32 %i.abt, %i.abv
  %i.abw = select i1 %.not58.i, i8 %i.abm, i8 %i.abk
  %.tr.i178 = select i1 %or.cond.i177, i8 %i.abw, i8 %i.abo
  %i.abx = getelementptr inbounds nuw i8, ptr %.15274.i, i64 1
  %i.aby = load i8, ptr %.15274.i, align 1, !tbaa !10, !noalias !327
  %.narrow.i179 = sub i8 %i.aby, %.tr.i178
  %i.abz = getelementptr inbounds nuw i8, ptr %.15075.i, i64 1
  store i8 %.narrow.i179, ptr %.15075.i, align 1, !tbaa !10, !noalias !327
  %i.aca = add nuw i64 %.179.i, 1                 ; 2 uses
  %exitcond85.not.i = icmp eq i64 %i.aca, %i.e
  br i1 %exitcond85.not.i, label %.thread214.thread, label %.lr.ph80.i, !llvm.loop !310

.thread214:                                       ; preds = %bb.t
  %i.acb = and i32 %.0111, 128
  %.not126 = icmp eq i32 %i.acb, 0
  br i1 %.not126, label %.thread214.thread, label %bb.v
end_hunk_1
