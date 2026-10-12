Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/pixelshuffle_x86_avx512?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4ncnn23PixelShuffle_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a
  %i.aj = mul i64 %i.ad, %i.ai                    ; 2 uses
  %i.ak = trunc nsw i64 %indvars.iv305 to i32
  %broadcast.splatinsert461 = insertelement <8 x i64> poison, i64 %indvars.iv305, i64 0
  %broadcast.splat462 = shufflevector <8 x i64> %broadcast.splatinsert461, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert491 = insertelement <8 x i64> poison, i64 %indvars.iv305, i64 0
  %broadcast.splat492 = shufflevector <8 x i64> %broadcast.splatinsert491, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %bb.c

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.loopexit, %.noexc
  %i.al = phi i32 [ %i.z, %.noexc ], [ %i.lw, %.loopexit ]
  %indvars.iv.next306 = add nsw i64 %indvars.iv305, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next306 to i32
  %exitcond308.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond308.not, label %._crit_edge247, label %.noexc, !llvm.loop !46

bb.c:                                             ; preds = %.lr.ph244, %.loopexit
  %indvars.iv302 = phi i64 [ 0, %.lr.ph244 ], [ %indvars.iv.next303, %.loopexit ] ; 5 uses
  %.pr = phi i32 [ %i.z, %.lr.ph244 ], [ %i.lw, %.loopexit ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.am = icmp sgt i32 %.pr, 0
  br i1 %i.am, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.c
  %i.an = load i32, ptr %i.p, align 4, !tbaa !79
  %i.ao = icmp eq i32 %i.an, 0
  %i.ap = load ptr, ptr %7, align 8, !tbaa !32, !noalias !80 ; 14 uses
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !33, !noalias !80
  %i.ar = load i64, ptr %i.r, align 8, !tbaa !16, !noalias !80
  %factor.op.mul = mul i64 %i.aq, %i.ar           ; 8 uses
  %exitcond263.peel.not = icmp eq i32 %.pr, 1     ; 2 uses
  br i1 %i.ao, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.as = load i32, ptr %6, align 4, !tbaa !15
  %i.at = mul nsw i32 %i.as, %i.ak                ; 2 uses
  %wide.trip.count262 = zext nneg i32 %.pr to i64 ; 2 uses
  %i.au = trunc nuw nsw i64 %indvars.iv302 to i32
  %i.av = mul nuw nsw i32 %.pr, %i.au             ; 2 uses
  %i.aw = add i32 %i.av, %i.at
  %i.ax = sext i32 %i.aw to i64
  %.reass.us.peel = mul i64 %factor.op.mul, %i.ax
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.reass.us.peel ; 5 uses
  store ptr %i.ay, ptr %i.e, align 16, !tbaa !82
  br i1 %exitcond263.peel.not, label %._crit_edge.thread, label %iter.check431

iter.check431:                                    ; preds = %.lr.ph.split.us
  %invariant.op = add i32 %i.av, %i.at            ; 3 uses
  %i.az = add nsw i64 %wide.trip.count262, -1     ; 5 uses
  %min.iters.check415 = icmp ult i32 %.pr, 9
  br i1 %min.iters.check415, label %.noexc172.us.preheader, label %vector.main.loop.iter.check416

vector.main.loop.iter.check416:                   ; preds = %iter.check431
  %min.iters.check417 = icmp ult i32 %.pr, 33
  br i1 %min.iters.check417, label %vec.epilog.ph435, label %vector.ph418

vector.ph418:                                     ; preds = %vector.main.loop.iter.check416
  %i.ba = and i64 %i.az, 24
  %n.vec419 = and i64 %i.az, -32                  ; 4 uses
  %i.bb = or disjoint i64 %n.vec419, 1            ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %invariant.op, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert420 = insertelement <8 x i64> poison, i64 %factor.op.mul, i64 0
  %broadcast.splat421 = shufflevector <8 x i64> %broadcast.splatinsert420, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op523 = add <8 x i32> splat (i32 8), %broadcast.splat
  %invariant.op525 = add <8 x i32> splat (i32 16), %broadcast.splat
  %invariant.op527 = add <8 x i32> splat (i32 24), %broadcast.splat
  br label %vector.body422

vector.body422:                                   ; preds = %vector.ph418, %vector.body422
  %index423 = phi i64 [ 0, %vector.ph418 ], [ %index.next427, %vector.body422 ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph418 ], [ %vec.ind.next, %vector.body422 ] ; 5 uses
  %i.bc = add <8 x i32> %broadcast.splat, %vec.ind
  %.reass524 = add <8 x i32> %vec.ind, %invariant.op523
  %.reass526 = add <8 x i32> %vec.ind, %invariant.op525
  %.reass528 = add <8 x i32> %vec.ind, %invariant.op527
  %i.bd = sext <8 x i32> %i.bc to <8 x i64>
  %i.be = sext <8 x i32> %.reass524 to <8 x i64>
  %i.bf = sext <8 x i32> %.reass526 to <8 x i64>
  %i.bg = sext <8 x i32> %.reass528 to <8 x i64>
  %i.bh = mul <8 x i64> %broadcast.splat421, %i.bd
  %i.bi = mul <8 x i64> %broadcast.splat421, %i.be
  %i.bj = mul <8 x i64> %broadcast.splat421, %i.bf
  %i.bk = mul <8 x i64> %broadcast.splat421, %i.bg
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.ap, <8 x i64> %i.bh
  %wide.gep424 = getelementptr inbounds nuw i8, ptr %i.ap, <8 x i64> %i.bi
  %wide.gep425 = getelementptr inbounds nuw i8, ptr %i.ap, <8 x i64> %i.bj
  %wide.gep426 = getelementptr inbounds nuw i8, ptr %i.ap, <8 x i64> %i.bk
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index423 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 136
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 200
  store <8 x ptr> %wide.gep, ptr %i.bm, align 8, !tbaa !82
  store <8 x ptr> %wide.gep424, ptr %i.bn, align 8, !tbaa !82
  store <8 x ptr> %wide.gep425, ptr %i.bo, align 8, !tbaa !82
  store <8 x ptr> %wide.gep426, ptr %i.bp, align 8, !tbaa !82
  %index.next427 = add nuw i64 %index423, 32      ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.bq = icmp eq i64 %index.next427, %n.vec419
  br i1 %i.bq, label %middle.block428, label %vector.body422, !llvm.loop !49

middle.block428:                                  ; preds = %vector.body422
  %cmp.n429 = icmp eq i64 %i.az, %n.vec419
  br i1 %cmp.n429, label %._crit_edge, label %vec.epilog.iter.check433

vec.epilog.iter.check433:                         ; preds = %middle.block428
  %min.epilog.iters.check434 = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check434, label %.noexc172.us.preheader, label %vec.epilog.ph435, !prof !87

vec.epilog.ph435:                                 ; preds = %vector.main.loop.iter.check416, %vec.epilog.iter.check433
  %vec.epilog.resume.val430 = phi i64 [ %n.vec419, %vec.epilog.iter.check433 ], [ 0, %vector.main.loop.iter.check416 ]
  %bc.resume.val = phi i64 [ %i.bb, %vec.epilog.iter.check433 ], [ 1, %vector.main.loop.iter.check416 ]
  %n.vec436 = and i64 %i.az, -8                   ; 3 uses
  %i.br = or disjoint i64 %n.vec436, 1
  %broadcast.splatinsert437 = insertelement <8 x i32> poison, i32 %invariant.op, i64 0
  %broadcast.splat438 = shufflevector <8 x i32> %broadcast.splatinsert437, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert439 = insertelement <8 x i64> poison, i64 %factor.op.mul, i64 0
  %broadcast.splat440 = shufflevector <8 x i64> %broadcast.splatinsert439, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.bs = trunc nsw i64 %bc.resume.val to i32
  %broadcast.splatinsert441 = insertelement <8 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat442 = shufflevector <8 x i32> %broadcast.splatinsert441, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat442, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body443

vec.epilog.vector.body443:                        ; preds = %vec.epilog.vector.body443, %vec.epilog.ph435
  %index444 = phi i64 [ %vec.epilog.resume.val430, %vec.epilog.ph435 ], [ %index.next447, %vec.epilog.vector.body443 ] ; 2 uses
  %vec.ind445 = phi <8 x i32> [ %induction, %vec.epilog.ph435 ], [ %vec.ind.next448, %vec.epilog.vector.body443 ] ; 2 uses
  %i.bt = add <8 x i32> %broadcast.splat438, %vec.ind445
  %i.bu = sext <8 x i32> %i.bt to <8 x i64>
  %i.bv = mul <8 x i64> %broadcast.splat440, %i.bu
  %wide.gep446 = getelementptr inbounds nuw i8, ptr %i.ap, <8 x i64> %i.bv
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index444
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store <8 x ptr> %wide.gep446, ptr %i.bx, align 8, !tbaa !82
  %index.next447 = add nuw i64 %index444, 8       ; 2 uses
  %vec.ind.next448 = add <8 x i32> %vec.ind445, splat (i32 8)
  %i.by = icmp eq i64 %index.next447, %n.vec436
  br i1 %i.by, label %vec.epilog.middle.block449, label %vec.epilog.vector.body443, !llvm.loop !50

vec.epilog.middle.block449:                       ; preds = %vec.epilog.vector.body443
  %cmp.n450 = icmp eq i64 %i.az, %n.vec436
  br i1 %cmp.n450, label %._crit_edge, label %.noexc172.us.preheader

.noexc172.us.preheader:                           ; preds = %iter.check431, %vec.epilog.iter.check433, %vec.epilog.middle.block449
  %indvars.iv258.ph = phi i64 [ 1, %iter.check431 ], [ %i.bb, %vec.epilog.iter.check433 ], [ %i.br, %vec.epilog.middle.block449 ]
  br label %.noexc172.us

.noexc172.us:                                     ; preds = %.noexc172.us.preheader, %.noexc172.us
  %indvars.iv258 = phi i64 [ %indvars.iv.next259, %.noexc172.us ], [ %indvars.iv258.ph, %.noexc172.us.preheader ] ; 3 uses
  %i.bz = trunc nuw nsw i64 %indvars.iv258 to i32
  %.reass329 = add i32 %invariant.op, %i.bz
  %i.ca = sext i32 %.reass329 to i64
  %.reass.us = mul i64 %factor.op.mul, %i.ca
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.reass.us
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv258
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !82
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next259, %wide.trip.count262
  br i1 %exitcond263.not, label %._crit_edge, label %.noexc172.us, !llvm.loop !51

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cd = load i32, ptr %2, align 4, !tbaa !15    ; 4 uses
  %wide.trip.count = zext nneg i32 %.pr to i64    ; 2 uses
  %i.ce = trunc nuw nsw i64 %indvars.iv302 to i32
  %i.cf = mul nuw nsw i32 %.pr, %i.ce             ; 4 uses
  %i.cg = mul nsw i32 %i.cd, %i.cf
  %i.ch = sext i32 %i.cg to i64
  %i.ci = add nsw i64 %indvars.iv305, %i.ch
  %.reass.peel = mul i64 %factor.op.mul, %i.ci
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.reass.peel ; 5 uses
  store ptr %i.cj, ptr %i.e, align 16, !tbaa !82
  br i1 %exitcond263.peel.not, label %._crit_edge.thread, label %iter.check481

iter.check481:                                    ; preds = %.lr.ph.split
  %i.ck = add nsw i64 %wide.trip.count, -1        ; 5 uses
  %min.iters.check452 = icmp ult i32 %.pr, 9
  br i1 %min.iters.check452, label %.noexc172.preheader, label %vector.main.loop.iter.check453

vector.main.loop.iter.check453:                   ; preds = %iter.check481
  %min.iters.check454 = icmp ult i32 %.pr, 33
  br i1 %min.iters.check454, label %vec.epilog.ph485, label %vector.ph455

vector.ph455:                                     ; preds = %vector.main.loop.iter.check453
  %i.cl = and i64 %i.ck, 24
  %n.vec456 = and i64 %i.ck, -32                  ; 4 uses
  %i.cm = or disjoint i64 %n.vec456, 1            ; 2 uses
  %broadcast.splatinsert457 = insertelement <8 x i32> poison, i32 %i.cf, i64 0
  %broadcast.splat458 = shufflevector <8 x i32> %broadcast.splatinsert457, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert459 = insertelement <8 x i32> poison, i32 %i.cd, i64 0
  %broadcast.splat460 = shufflevector <8 x i32> %broadcast.splatinsert459, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert463 = insertelement <8 x i64> poison, i64 %factor.op.mul, i64 0
  %broadcast.splat464 = shufflevector <8 x i64> %broadcast.splatinsert463, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op517 = add <8 x i32> splat (i32 8), %broadcast.splat458
  %invariant.op519 = add <8 x i32> splat (i32 16), %broadcast.splat458
  %invariant.op521 = add <8 x i32> splat (i32 24), %broadcast.splat458
  br label %vector.body465

vector.body465:                                   ; preds = %vector.ph455, %vector.body465
  %index466 = phi i64 [ 0, %vector.ph455 ], [ %index.next475, %vector.body465 ] ; 2 uses
  %vec.ind467 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph455 ], [ %vec.ind.next476, %vector.body465 ] ; 5 uses
  %i.cn = add nuw nsw <8 x i32> %broadcast.splat458, %vec.ind467
  %.reass518 = add <8 x i32> %vec.ind467, %invariant.op517
  %.reass520 = add <8 x i32> %vec.ind467, %invariant.op519
  %.reass522 = add <8 x i32> %vec.ind467, %invariant.op521
  %i.co = mul nsw <8 x i32> %broadcast.splat460, %i.cn
  %i.cp = mul nsw <8 x i32> %broadcast.splat460, %.reass518
  %i.cq = mul nsw <8 x i32> %broadcast.splat460, %.reass520
  %i.cr = mul nsw <8 x i32> %broadcast.splat460, %.reass522
  %i.cs = sext <8 x i32> %i.co to <8 x i64>
  %i.ct = sext <8 x i32> %i.cp to <8 x i64>
  %i.cu = sext <8 x i32> %i.cq to <8 x i64>
  %i.cv = sext <8 x i32> %i.cr to <8 x i64>
  %i.cw = add nsw <8 x i64> %broadcast.splat462, %i.cs
  %i.cx = add nsw <8 x i64> %broadcast.splat462, %i.ct
  %i.cy = add nsw <8 x i64> %broadcast.splat462, %i.cu
  %i.cz = add nsw <8 x i64> %broadcast.splat462, %i.cv
  %i.da = mul <8 x i64> %broadcast.splat464, %i.cw
  %i.db = mul <8 x i64> %broadcast.splat464, %i.cx
  %i.dc = mul <8 x i64> %broadcast.splat464, %i.cy
  %i.dd = mul <8 x i64> %broadcast.splat464, %i.cz
  %wide.gep471 = getelementptr inbounds nuw i8, ptr %i.ap, <8 x i64> %i.da
  %wide.gep472 = getelementptr inbounds nuw i8, ptr %i.ap, <8 x i64> %i.db
  %wide.gep473 = getelementptr inbounds nuw i8, ptr %i.ap, <8 x i64> %i.dc
  %wide.gep474 = getelementptr inbounds nuw i8, ptr %i.ap, <8 x i64> %i.dd
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index466 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 136
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 200
  store <8 x ptr> %wide.gep471, ptr %i.df, align 8, !tbaa !82
  store <8 x ptr> %wide.gep472, ptr %i.dg, align 8, !tbaa !82
  store <8 x ptr> %wide.gep473, ptr %i.dh, align 8, !tbaa !82
  store <8 x ptr> %wide.gep474, ptr %i.di, align 8, !tbaa !82
  %index.next475 = add nuw i64 %index466, 32      ; 2 uses
  %vec.ind.next476 = add <8 x i32> %vec.ind467, splat (i32 32)
  %i.dj = icmp eq i64 %index.next475, %n.vec456
  br i1 %i.dj, label %middle.block477, label %vector.body465, !llvm.loop !52

middle.block477:                                  ; preds = %vector.body465
  %cmp.n478 = icmp eq i64 %i.ck, %n.vec456
  br i1 %cmp.n478, label %._crit_edge, label %vec.epilog.iter.check483

vec.epilog.iter.check483:                         ; preds = %middle.block477
  %min.epilog.iters.check484 = icmp eq i64 %i.cl, 0
  br i1 %min.epilog.iters.check484, label %.noexc172.preheader, label %vec.epilog.ph485, !prof !87

vec.epilog.ph485:                                 ; preds = %vector.main.loop.iter.check453, %vec.epilog.iter.check483
  %vec.epilog.resume.val479 = phi i64 [ %n.vec456, %vec.epilog.iter.check483 ], [ 0, %vector.main.loop.iter.check453 ]
  %bc.resume.val480 = phi i64 [ %i.cm, %vec.epilog.iter.check483 ], [ 1, %vector.main.loop.iter.check453 ]
  %n.vec486 = and i64 %i.ck, -8                   ; 3 uses
  %i.dk = or disjoint i64 %n.vec486, 1
  %broadcast.splatinsert487 = insertelement <8 x i32> poison, i32 %i.cf, i64 0
  %broadcast.splat488 = shufflevector <8 x i32> %broadcast.splatinsert487, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert489 = insertelement <8 x i32> poison, i32 %i.cd, i64 0
  %broadcast.splat490 = shufflevector <8 x i32> %broadcast.splatinsert489, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert493 = insertelement <8 x i64> poison, i64 %factor.op.mul, i64 0
  %broadcast.splat494 = shufflevector <8 x i64> %broadcast.splatinsert493, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.dl = trunc nsw i64 %bc.resume.val480 to i32
  %broadcast.splatinsert495 = insertelement <8 x i32> poison, i32 %i.dl, i64 0
  %broadcast.splat496 = shufflevector <8 x i32> %broadcast.splatinsert495, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction497 = add <8 x i32> %broadcast.splat496, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body498

vec.epilog.vector.body498:                        ; preds = %vec.epilog.vector.body498, %vec.epilog.ph485
  %index499 = phi i64 [ %vec.epilog.resume.val479, %vec.epilog.ph485 ], [ %index.next502, %vec.epilog.vector.body498 ] ; 2 uses
  %vec.ind500 = phi <8 x i32> [ %induction497, %vec.epilog.ph485 ], [ %vec.ind.next503, %vec.epilog.vector.body498 ] ; 2 uses
  %i.dm = add nuw nsw <8 x i32> %broadcast.splat488, %vec.ind500
  %i.dn = mul nsw <8 x i32> %broadcast.splat490, %i.dm
  %i.do = sext <8 x i32> %i.dn to <8 x i64>
  %i.dp = add nsw <8 x i64> %broadcast.splat492, %i.do
  %i.dq = mul <8 x i64> %broadcast.splat494, %i.dp
  %wide.gep501 = getelementptr inbounds nuw i8, ptr %i.ap, <8 x i64> %i.dq
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index499
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store <8 x ptr> %wide.gep501, ptr %i.ds, align 8, !tbaa !82
  %index.next502 = add nuw i64 %index499, 8       ; 2 uses
  %vec.ind.next503 = add <8 x i32> %vec.ind500, splat (i32 8)
  %i.dt = icmp eq i64 %index.next502, %n.vec486
  br i1 %i.dt, label %vec.epilog.middle.block504, label %vec.epilog.vector.body498, !llvm.loop !53

vec.epilog.middle.block504:                       ; preds = %vec.epilog.vector.body498
  %cmp.n505 = icmp eq i64 %i.ck, %n.vec486
  br i1 %cmp.n505, label %._crit_edge, label %.noexc172.preheader

.noexc172.preheader:                              ; preds = %iter.check481, %vec.epilog.iter.check483, %vec.epilog.middle.block504
  %indvars.iv.ph = phi i64 [ 1, %iter.check481 ], [ %i.cm, %vec.epilog.iter.check483 ], [ %i.dk, %vec.epilog.middle.block504 ]
  br label %.noexc172

._crit_edge:                                      ; preds = %.noexc172, %.noexc172.us, %middle.block477, %vec.epilog.middle.block504, %middle.block428, %vec.epilog.middle.block449
  %i.du = phi ptr [ %i.ay, %middle.block428 ], [ %i.cj, %middle.block477 ], [ %i.ay, %vec.epilog.middle.block449 ], [ %i.ay, %.noexc172.us ], [ %i.cj, %vec.epilog.middle.block504 ], [ %i.cj, %.noexc172 ] ; 2 uses
  %i.dv = icmp eq i32 %.pr, 2
  br i1 %i.dv, label %bb.d, label %._crit_edge.thread

.noexc172:                                        ; preds = %.noexc172.preheader, %.noexc172
  %indvars.iv = phi i64 [ %indvars.iv.next, %.noexc172 ], [ %indvars.iv.ph, %.noexc172.preheader ] ; 3 uses
  %i.dw = trunc nuw nsw i64 %indvars.iv to i32
  %i.dx = add nuw nsw i32 %i.cf, %i.dw
  %i.dy = mul nsw i32 %i.cd, %i.dx
  %i.dz = sext i32 %i.dy to i64
  %i.ea = add nsw i64 %indvars.iv305, %i.dz
  %.reass = mul i64 %factor.op.mul, %i.ea
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.reass
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !82
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.noexc172, !llvm.loop !54

bb.d:                                             ; preds = %._crit_edge
  %i.ed = load i32, ptr %8, align 4, !tbaa !15
  %i.ee = icmp sgt i32 %i.ed, 0
  br i1 %i.ee, label %.lr.ph240.preheader, label %.loopexit

.lr.ph240.preheader:                              ; preds = %bb.d
  %i.ef = load ptr, ptr %i.s, align 8, !tbaa !82
  %.pre309 = load i32, ptr %9, align 4, !tbaa !15
  br label %.lr.ph240

.lr.ph240:                                        ; preds = %.lr.ph240.preheader, %._crit_edge235
  %i.eg = phi i32 [ %.pre309, %.lr.ph240.preheader ], [ %i.fb, %._crit_edge235 ] ; 2 uses
  %indvars.iv299 = phi i64 [ 0, %.lr.ph240.preheader ], [ %indvars.iv.next300, %._crit_edge235 ] ; 2 uses
  %.0157238 = phi ptr [ %i.du, %.lr.ph240.preheader ], [ %i.hj, %._crit_edge235 ] ; 10 uses
  %.0158237 = phi ptr [ %i.ef, %.lr.ph240.preheader ], [ %i.hk, %._crit_edge235 ] ; 10 uses
  %i.eh = shl nuw nsw i64 %indvars.iv299, 1
  %i.ei = add nuw nsw i64 %i.eh, %indvars.iv302
  %i.ej = mul i64 %i.aj, %i.ei
  %i.ek = getelementptr i8, ptr %i.af, i64 %i.ej  ; 10 uses
  %.not170223 = icmp slt i32 %i.eg, 8
  br i1 %.not170223, label %.preheader201, label %.lr.ph226

.preheader201.loopexit:                           ; preds = %.lr.ph226
  %i.el = trunc nuw nsw i64 %indvars.iv280 to i32
  br label %.preheader201

.preheader201:                                    ; preds = %.preheader201.loopexit, %.lr.ph240
  %i.em = phi i32 [ %i.eg, %.lr.ph240 ], [ %i.ey, %.preheader201.loopexit ] ; 2 uses
  %.0160.lcssa = phi i32 [ 0, %.lr.ph240 ], [ %i.el, %.preheader201.loopexit ] ; 3 uses
  %i.en = or disjoint i32 %.0160.lcssa, 4
  %.not171228 = icmp sgt i32 %i.en, %i.em
  br i1 %.not171228, label %.preheader, label %.lr.ph230.preheader

.lr.ph230.preheader:                              ; preds = %.preheader201
  %i.eo = zext nneg i32 %.0160.lcssa to i64       ; 2 uses
  %i.ep = add nuw nsw i64 %i.eo, 4
  br label %.lr.ph230

.lr.ph226:                                        ; preds = %.lr.ph240, %.lr.ph226
  %indvars.iv282 = phi i64 [ %indvars.iv.next283, %.lr.ph226 ], [ 0, %.lr.ph240 ] ; 4 uses
  %indvars.iv280 = phi i64 [ %indvars.iv.next281, %.lr.ph226 ], [ 8, %.lr.ph240 ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.0157238, i64 %indvars.iv282
  %i.er = load <8 x float>, ptr %i.eq, align 1, !tbaa !88 ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.0158237, i64 %indvars.iv282
  %i.et = load <8 x float>, ptr %i.es, align 1, !tbaa !88 ; 2 uses
  %i.eu = shufflevector <8 x float> %i.er, <8 x float> %i.et, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ev = shufflevector <8 x float> %i.er, <8 x float> %i.et, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %.idx321 = shl nuw nsw i64 %indvars.iv282, 3
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.idx321 ; 2 uses
  store <8 x float> %i.eu, ptr %i.ew, align 1, !tbaa !88
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  store <8 x float> %i.ev, ptr %i.ex, align 1, !tbaa !88
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 8 ; 2 uses
  %i.ey = load i32, ptr %9, align 4, !tbaa !15    ; 2 uses
  %i.ez = sext i32 %i.ey to i64
  %.not170 = icmp sgt i64 %indvars.iv.next281, %i.ez
  %indvars.iv.next283 = add nuw nsw i64 %indvars.iv282, 8
  br i1 %.not170, label %.preheader201.loopexit, label %.lr.ph226, !llvm.loop !55

.preheader.loopexit:                              ; preds = %.lr.ph230
  %i.fa = trunc nuw nsw i64 %indvars.iv287 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader201
  %i.fb = phi i32 [ %i.em, %.preheader201 ], [ %i.gu, %.preheader.loopexit ] ; 4 uses
  %.1161.lcssa = phi i32 [ %.0160.lcssa, %.preheader201 ], [ %i.fa, %.preheader.loopexit ] ; 2 uses
  %i.fc = icmp slt i32 %.1161.lcssa, %i.fb
  br i1 %i.fc, label %iter.check400, label %._crit_edge235

iter.check400:                                    ; preds = %.preheader
  %i.fd = zext i32 %.1161.lcssa to i64            ; 9 uses
  %wide.trip.count297 = zext i32 %i.fb to i64     ; 6 uses
  %i.fe = sub nsw i64 %wide.trip.count297, %i.fd  ; 7 uses
  %min.iters.check383 = icmp ult i64 %i.fe, 8
  br i1 %min.iters.check383, label %.lr.ph234.preheader, label %vector.memcheck369

vector.memcheck369:                               ; preds = %iter.check400
  %i.ff = shl nuw nsw i64 %i.fd, 3
  %scevgep370 = getelementptr i8, ptr %i.ek, i64 %i.ff ; 2 uses
  %i.fg = shl nuw nsw i64 %wide.trip.count297, 3
  %scevgep371 = getelementptr i8, ptr %i.ek, i64 %i.fg ; 2 uses
  %i.fh = shl nuw nsw i64 %i.fd, 2                ; 2 uses
  %scevgep372 = getelementptr i8, ptr %.0157238, i64 %i.fh
  %i.fi = shl nuw nsw i64 %wide.trip.count297, 2  ; 2 uses
  %scevgep373 = getelementptr i8, ptr %.0157238, i64 %i.fi
  %scevgep374 = getelementptr i8, ptr %.0158237, i64 %i.fh
  %scevgep375 = getelementptr i8, ptr %.0158237, i64 %i.fi
  %bound0376 = icmp ult ptr %scevgep370, %scevgep373
  %bound1377 = icmp ult ptr %scevgep372, %scevgep371
  %found.conflict378 = and i1 %bound0376, %bound1377
  %bound0379 = icmp ult ptr %scevgep370, %scevgep375
  %bound1380 = icmp ult ptr %scevgep374, %scevgep371
  %found.conflict381 = and i1 %bound0379, %bound1380
  %conflict.rdx382 = or i1 %found.conflict378, %found.conflict381
  br i1 %conflict.rdx382, label %.lr.ph234.preheader, label %vector.main.loop.iter.check384

vector.main.loop.iter.check384:                   ; preds = %vector.memcheck369
  %min.iters.check385 = icmp ult i64 %i.fe, 32
  br i1 %min.iters.check385, label %vec.epilog.ph404, label %vector.ph386

vector.ph386:                                     ; preds = %vector.main.loop.iter.check384
  %i.fj = and i64 %i.fe, 24
  %n.vec387 = and i64 %i.fe, -32                  ; 4 uses
  %i.fk = add nsw i64 %n.vec387, %i.fd
  br label %vector.body388

vector.body388:                                   ; preds = %vector.ph386, %vector.body388
  %index389 = phi i64 [ 0, %vector.ph386 ], [ %index.next396, %vector.body388 ] ; 2 uses
  %i.fl = add nuw i64 %index389, %i.fd            ; 4 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.0157238, i64 %i.fl ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 64
  %wide.load390 = load <16 x float>, ptr %i.fm, align 4, !tbaa !90, !alias.scope !91
  %wide.load391 = load <16 x float>, ptr %i.fn, align 4, !tbaa !90, !alias.scope !91
  %i.fo = shl nuw nsw i64 %i.fl, 3
  %i.fp = shl i64 %i.fl, 3
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.fo
  %i.fr = getelementptr i8, ptr %i.ek, i64 %i.fp
  %i.fs = getelementptr i8, ptr %i.fr, i64 128
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.0158237, i64 %i.fl ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 64
  %wide.load392 = load <16 x float>, ptr %i.ft, align 4, !tbaa !90, !alias.scope !92
  %wide.load393 = load <16 x float>, ptr %i.fu, align 4, !tbaa !90, !alias.scope !92
  %interleaved.vec394 = shufflevector <16 x float> %wide.load390, <16 x float> %wide.load392, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <32 x float> %interleaved.vec394, ptr %i.fq, align 4, !tbaa !90, !alias.scope !93, !noalias !94
  %interleaved.vec395 = shufflevector <16 x float> %wide.load391, <16 x float> %wide.load393, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <32 x float> %interleaved.vec395, ptr %i.fs, align 4, !tbaa !90, !alias.scope !93, !noalias !94
  %index.next396 = add nuw i64 %index389, 32      ; 2 uses
  %i.fv = icmp eq i64 %index.next396, %n.vec387
  br i1 %i.fv, label %middle.block397, label %vector.body388, !llvm.loop !60

middle.block397:                                  ; preds = %vector.body388
  %cmp.n398 = icmp eq i64 %i.fe, %n.vec387
  br i1 %cmp.n398, label %._crit_edge235, label %vec.epilog.iter.check402

vec.epilog.iter.check402:                         ; preds = %middle.block397
  %min.epilog.iters.check403 = icmp eq i64 %i.fj, 0
  br i1 %min.epilog.iters.check403, label %.lr.ph234.preheader, label %vec.epilog.ph404, !prof !87

vec.epilog.ph404:                                 ; preds = %vector.main.loop.iter.check384, %vec.epilog.iter.check402
  %vec.epilog.resume.val399 = phi i64 [ %n.vec387, %vec.epilog.iter.check402 ], [ 0, %vector.main.loop.iter.check384 ]
  %n.vec405 = and i64 %i.fe, -8                   ; 3 uses
  %i.fw = add nsw i64 %n.vec405, %i.fd
  br label %vec.epilog.vector.body406

vec.epilog.vector.body406:                        ; preds = %vec.epilog.vector.body406, %vec.epilog.ph404
  %index407 = phi i64 [ %vec.epilog.resume.val399, %vec.epilog.ph404 ], [ %index.next411, %vec.epilog.vector.body406 ] ; 2 uses
  %i.fx = add nuw i64 %index407, %i.fd            ; 3 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.0157238, i64 %i.fx
  %wide.load408 = load <8 x float>, ptr %i.fy, align 4, !tbaa !90, !alias.scope !91
  %i.fz = shl nuw nsw i64 %i.fx, 3
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.fz
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.0158237, i64 %i.fx
  %wide.load409 = load <8 x float>, ptr %i.gb, align 4, !tbaa !90, !alias.scope !92
  %interleaved.vec410 = shufflevector <8 x float> %wide.load408, <8 x float> %wide.load409, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec410, ptr %i.ga, align 4, !tbaa !90, !alias.scope !93, !noalias !94
  %index.next411 = add nuw i64 %index407, 8       ; 2 uses
  %i.gc = icmp eq i64 %index.next411, %n.vec405
  br i1 %i.gc, label %vec.epilog.middle.block412, label %vec.epilog.vector.body406, !llvm.loop !61

vec.epilog.middle.block412:                       ; preds = %vec.epilog.vector.body406
  %cmp.n413 = icmp eq i64 %i.fe, %n.vec405
  br i1 %cmp.n413, label %._crit_edge235, label %.lr.ph234.preheader

.lr.ph234.preheader:                              ; preds = %iter.check400, %vector.memcheck369, %vec.epilog.iter.check402, %vec.epilog.middle.block412
  %indvars.iv294.ph = phi i64 [ %i.fd, %iter.check400 ], [ %i.fd, %vector.memcheck369 ], [ %i.fk, %vec.epilog.iter.check402 ], [ %i.fw, %vec.epilog.middle.block412 ] ; 7 uses
  %i.gd = sub nsw i64 %wide.trip.count297, %indvars.iv294.ph
  %xtraiter = and i64 %i.gd, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph234.prol.loopexit, label %.lr.ph234.prol

.lr.ph234.prol:                                   ; preds = %.lr.ph234.preheader
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.0157238, i64 %indvars.iv294.ph
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !90
  %.idx323.prol = shl nuw nsw i64 %indvars.iv294.ph, 3
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.idx323.prol ; 2 uses
  store float %i.gf, ptr %i.gg, align 4, !tbaa !90
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.0158237, i64 %indvars.iv294.ph
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !90
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  store float %i.gi, ptr %i.gj, align 4, !tbaa !90
  %indvars.iv.next295.prol = add nuw nsw i64 %indvars.iv294.ph, 1
  br label %.lr.ph234.prol.loopexit

.lr.ph234.prol.loopexit:                          ; preds = %.lr.ph234.prol, %.lr.ph234.preheader
  %indvars.iv294.unr = phi i64 [ %indvars.iv294.ph, %.lr.ph234.preheader ], [ %indvars.iv.next295.prol, %.lr.ph234.prol ]
  %i.gk = add nsw i64 %wide.trip.count297, -1
  %i.gl = icmp eq i64 %indvars.iv294.ph, %i.gk
  br i1 %i.gl, label %._crit_edge235, label %.lr.ph234

end_hunk_0
