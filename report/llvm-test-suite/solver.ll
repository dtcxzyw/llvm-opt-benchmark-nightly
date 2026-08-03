inline.NumInlined: 10
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@attenuate_fluxes:bb.a
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %index
  %wide.load = load <4 x float>, ptr %i.ex, align 4, !tbaa !8 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %index
  %wide.load484 = load <4 x float>, ptr %i.ey, align 4, !tbaa !8 ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %index
  %wide.load485 = load <4 x float>, ptr %i.ez, align 4, !tbaa !8 ; 2 uses
  %i.fa = fsub <4 x float> %wide.load, %wide.load485
  %i.fb = fdiv <4 x float> %i.fa, %broadcast.splat ; 2 uses
  %i.fc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load484, <4 x float> splat (float -2.000000e+00), <4 x float> %wide.load)
  %i.fd = fadd <4 x float> %i.fc, %wide.load485
  %i.fe = fdiv <4 x float> %i.fd, %broadcast.splat481 ; 3 uses
  %i.ff = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> %broadcast.splat483, <4 x float> %wide.load484)
  %i.fg = fmul <4 x float> %broadcast.splat483, %i.fe
  %i.fh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fg, <4 x float> %broadcast.splat483, <4 x float> %i.ff)
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  store <4 x float> %i.fh, ptr %i.fi, align 4, !tbaa !8
  %i.fj = fmul <4 x float> %i.fe, splat (float 2.000000e+00)
  %i.fk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fj, <4 x float> %broadcast.splat483, <4 x float> %i.fb)
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index
  store <4 x float> %i.fk, ptr %i.fl, align 4, !tbaa !8
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index
  store <4 x float> %i.fe, ptr %i.fm, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fn = icmp eq i64 %index.next, %n.vec
  br i1 %i.fn, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph338, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.d:                                             ; preds = %bb.c
  %i.fo = fadd float %i.as, %i.ba                 ; 5 uses
  %i.fp = icmp sgt i32 %.sroa.7246.0.copyload, 0
  br i1 %i.fp, label %.lr.ph334, label %._crit_edge360

.lr.ph334:                                        ; preds = %bb.d
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !36
  %i.fs = getelementptr [8 x i8], ptr %i.fr, i64 %i.bg ; 3 uses
  %i.ft = getelementptr i8, ptr %i.fs, i64 -16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !10 ; 3 uses
  %i.fv = getelementptr i8, ptr %i.fs, i64 -8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !10 ; 3 uses
  %i.fx = load ptr, ptr %i.fs, align 8, !tbaa !10 ; 3 uses
  %i.fy = fmul float %i.as, 2.000000e+00          ; 3 uses
  %i.fz = fmul float %i.as, %i.fy                 ; 2 uses
  %wide.trip.count367 = zext nneg i32 %.sroa.7246.0.copyload to i64 ; 3 uses
  %min.iters.check511 = icmp ult i32 %.sroa.7246.0.copyload, 8
  br i1 %min.iters.check511, label %scalar.ph510.preheader, label %vector.memcheck486

vector.memcheck486:                               ; preds = %.lr.ph334
  %i.ga = ptrtoaddr ptr %i.fx to i64              ; 3 uses
  %i.gb = ptrtoaddr ptr %i.fw to i64              ; 3 uses
  %i.gc = ptrtoaddr ptr %i.fu to i64              ; 3 uses
  %i.gd = sub i64 %i.b, %i.e
  %diff.check487 = icmp ugt i64 %i.gd, -16
  %i.ge = sub i64 %i.b, %i.h
  %diff.check488 = icmp ugt i64 %i.ge, -16
  %conflict.rdx489 = or i1 %diff.check487, %diff.check488
  %i.gf = sub i64 %i.gc, %i.b
  %diff.check490 = icmp ugt i64 %i.gf, -16
  %conflict.rdx491 = or i1 %conflict.rdx489, %diff.check490
  %i.gg = sub i64 %i.gb, %i.b
  %diff.check492 = icmp ugt i64 %i.gg, -16
  %conflict.rdx493 = or i1 %conflict.rdx491, %diff.check492
  %i.gh = sub i64 %i.ga, %i.b
  %diff.check494 = icmp ugt i64 %i.gh, -16
  %conflict.rdx495 = or i1 %conflict.rdx493, %diff.check494
  %i.gi = sub i64 %i.e, %i.h
  %diff.check496 = icmp ugt i64 %i.gi, -16
  %conflict.rdx497 = or i1 %conflict.rdx495, %diff.check496
  %i.gj = sub i64 %i.gc, %i.e
  %diff.check498 = icmp ugt i64 %i.gj, -16
  %conflict.rdx499 = or i1 %conflict.rdx497, %diff.check498
  %i.gk = sub i64 %i.gb, %i.e
  %diff.check500 = icmp ugt i64 %i.gk, -16
  %conflict.rdx501 = or i1 %conflict.rdx499, %diff.check500
  %i.gl = sub i64 %i.ga, %i.e
  %diff.check502 = icmp ugt i64 %i.gl, -16
  %conflict.rdx503 = or i1 %conflict.rdx501, %diff.check502
  %i.gm = sub i64 %i.gc, %i.h
  %diff.check504 = icmp ugt i64 %i.gm, -16
  %conflict.rdx505 = or i1 %conflict.rdx503, %diff.check504
  %i.gn = sub i64 %i.gb, %i.h
  %diff.check506 = icmp ugt i64 %i.gn, -16
  %conflict.rdx507 = or i1 %conflict.rdx505, %diff.check506
  %i.go = sub i64 %i.ga, %i.h
  %diff.check508 = icmp ugt i64 %i.go, -16
  %conflict.rdx509 = or i1 %conflict.rdx507, %diff.check508
  br i1 %conflict.rdx509, label %scalar.ph510.preheader, label %vector.ph512

vector.ph512:                                     ; preds = %vector.memcheck486
  %n.vec514 = and i64 %wide.trip.count367, 2147483644 ; 3 uses
  %broadcast.splatinsert515 = insertelement <4 x float> poison, float %i.fy, i64 0
  %broadcast.splat516 = shufflevector <4 x float> %broadcast.splatinsert515, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert517 = insertelement <4 x float> poison, float %i.fz, i64 0
  %broadcast.splat518 = shufflevector <4 x float> %broadcast.splatinsert517, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert519 = insertelement <4 x float> poison, float %i.fo, i64 0
  %broadcast.splat520 = shufflevector <4 x float> %broadcast.splatinsert519, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body521

vector.body521:                                   ; preds = %vector.body521, %vector.ph512
  %index522 = phi i64 [ 0, %vector.ph512 ], [ %index.next526, %vector.body521 ] ; 7 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %index522
  %wide.load523 = load <4 x float>, ptr %i.gp, align 4, !tbaa !8 ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %index522
  %wide.load524 = load <4 x float>, ptr %i.gq, align 4, !tbaa !8 ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %index522
  %wide.load525 = load <4 x float>, ptr %i.gr, align 4, !tbaa !8 ; 2 uses
  %i.gs = fsub <4 x float> %wide.load523, %wide.load525
  %i.gt = fdiv <4 x float> %i.gs, %broadcast.splat516 ; 2 uses
  %i.gu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load524, <4 x float> splat (float -2.000000e+00), <4 x float> %wide.load523)
  %i.gv = fadd <4 x float> %i.gu, %wide.load525
  %i.gw = fdiv <4 x float> %i.gv, %broadcast.splat518 ; 3 uses
  %i.gx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gt, <4 x float> %broadcast.splat520, <4 x float> %wide.load524)
  %i.gy = fmul <4 x float> %broadcast.splat520, %i.gw
  %i.gz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gy, <4 x float> %broadcast.splat520, <4 x float> %i.gx)
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index522
  store <4 x float> %i.gz, ptr %i.ha, align 4, !tbaa !8
  %i.hb = fmul <4 x float> %i.gw, splat (float 2.000000e+00)
  %i.hc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hb, <4 x float> %broadcast.splat520, <4 x float> %i.gt)
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index522
  store <4 x float> %i.hc, ptr %i.hd, align 4, !tbaa !8
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index522
  store <4 x float> %i.gw, ptr %i.he, align 4, !tbaa !8
  %index.next526 = add nuw i64 %index522, 4       ; 2 uses
  %i.hf = icmp eq i64 %index.next526, %n.vec514
  br i1 %i.hf, label %middle.block527, label %vector.body521, !llvm.loop !42

middle.block527:                                  ; preds = %vector.body521
  %cmp.n528 = icmp eq i64 %n.vec514, %wide.trip.count367
  br i1 %cmp.n528, label %.lr.ph338, label %scalar.ph510.preheader

scalar.ph510.preheader:                           ; preds = %vector.memcheck486, %.lr.ph334, %middle.block527
  %indvars.iv364.ph = phi i64 [ 0, %vector.memcheck486 ], [ 0, %.lr.ph334 ], [ %n.vec514, %middle.block527 ]
  br label %scalar.ph510

scalar.ph510:                                     ; preds = %scalar.ph510.preheader, %scalar.ph510
  %indvars.iv364 = phi i64 [ %indvars.iv.next365, %scalar.ph510 ], [ %indvars.iv364.ph, %scalar.ph510.preheader ] ; 7 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv364
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !8 ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv364
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !8 ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv364
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !8 ; 2 uses
  %i.hm = fsub float %i.hh, %i.hl
  %i.hn = fdiv float %i.hm, %i.fy                 ; 2 uses
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.hj, float -2.000000e+00, float %i.hh)
  %i.hp = fadd float %i.ho, %i.hl
  %i.hq = fdiv float %i.hp, %i.fz                 ; 3 uses
  %i.hr = tail call float @llvm.fmuladd.f32(float %i.hn, float %i.fo, float %i.hj)
  %i.hs = fmul float %i.fo, %i.hq
  %i.ht = tail call float @llvm.fmuladd.f32(float %i.hs, float %i.fo, float %i.hr)
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv364
  store float %i.ht, ptr %i.hu, align 4, !tbaa !8
  %i.hv = fmul float %i.hq, 2.000000e+00
  %i.hw = tail call float @llvm.fmuladd.f32(float %i.hv, float %i.fo, float %i.hn)
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv364
  store float %i.hw, ptr %i.hx, align 4, !tbaa !8
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv364
  store float %i.hq, ptr %i.hy, align 4, !tbaa !8
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 1 ; 2 uses
  %exitcond368.not = icmp eq i64 %indvars.iv.next365, %wide.trip.count367
  br i1 %exitcond368.not, label %.lr.ph338, label %scalar.ph510, !llvm.loop !43

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 7 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !8 ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !8 ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv
  %i.ie = load float, ptr %i.id, align 4, !tbaa !8 ; 2 uses
  %i.if = fsub float %i.ia, %i.ie
  %i.ig = fdiv float %i.if, %i.eg                 ; 2 uses
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.ic, float -2.000000e+00, float %i.ia)
  %i.ii = fadd float %i.ih, %i.ie
  %i.ij = fdiv float %i.ii, %i.eh                 ; 3 uses
  %i.ik = tail call float @llvm.fmuladd.f32(float %i.ig, float %i.ba, float %i.ic)
  %i.il = fmul float %i.ba, %i.ij
  %i.im = tail call float @llvm.fmuladd.f32(float %i.il, float %i.ba, float %i.ik)
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store float %i.im, ptr %i.in, align 4, !tbaa !8
  %i.io = fmul float %i.ij, 2.000000e+00
  %i.ip = tail call float @llvm.fmuladd.f32(float %i.io, float %i.ba, float %i.ig)
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store float %i.ip, ptr %i.iq, align 4, !tbaa !8
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store float %i.ij, ptr %i.ir, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph338, label %scalar.ph, !llvm.loop !44

.lr.ph338:                                        ; preds = %scalar.ph, %scalar.ph510, %scalar.ph554, %middle.block, %middle.block527, %middle.block571
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !45 ; 8 uses
  %wide.trip.count377 = zext i32 %.sroa.7246.0.copyload to i64 ; 41 uses
  %min.iters.check599 = icmp ult i32 %.sroa.7246.0.copyload, 24
  br i1 %min.iters.check599, label %scalar.ph598.preheader, label %vector.memcheck574

vector.memcheck574:                               ; preds = %.lr.ph338
  %i.iu = shl nuw nsw i64 %wide.trip.count377, 2  ; 4 uses
  %scevgep = getelementptr i8, ptr %i.j, i64 %i.iu ; 3 uses
  %scevgep575 = getelementptr i8, ptr %i.m, i64 %i.iu ; 3 uses
  %scevgep576 = getelementptr i8, ptr %i.p, i64 %i.iu ; 3 uses
  %scevgep577 = getelementptr i8, ptr %i.it, i64 %i.iu ; 3 uses
  %bound0 = icmp ult ptr %i.j, %scevgep575
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0578 = icmp ult ptr %i.j, %scevgep576
  %bound1579 = icmp ult ptr %i.p, %scevgep
  %found.conflict580 = and i1 %bound0578, %bound1579
  %conflict.rdx581 = or i1 %found.conflict, %found.conflict580
  %bound0582 = icmp ult ptr %i.j, %scevgep577
  %bound1583 = icmp ult ptr %i.it, %scevgep
  %found.conflict584 = and i1 %bound0582, %bound1583
  %conflict.rdx585 = or i1 %conflict.rdx581, %found.conflict584
  %bound0586 = icmp ult ptr %i.m, %scevgep576
  %bound1587 = icmp ult ptr %i.p, %scevgep575
  %found.conflict588 = and i1 %bound0586, %bound1587
  %conflict.rdx589 = or i1 %conflict.rdx585, %found.conflict588
  %bound0590 = icmp ult ptr %i.m, %scevgep577
  %bound1591 = icmp ult ptr %i.it, %scevgep575
  %found.conflict592 = and i1 %bound0590, %bound1591
  %conflict.rdx593 = or i1 %conflict.rdx589, %found.conflict592
  %bound0594 = icmp ult ptr %i.p, %scevgep577
  %bound1595 = icmp ult ptr %i.it, %scevgep576
  %found.conflict596 = and i1 %bound0594, %bound1595
  %conflict.rdx597 = or i1 %conflict.rdx593, %found.conflict596
  br i1 %conflict.rdx597, label %scalar.ph598.preheader, label %vector.ph600

vector.ph600:                                     ; preds = %vector.memcheck574
  %n.vec602 = and i64 %wide.trip.count377, 2147483644 ; 3 uses
  %broadcast.splatinsert603 = insertelement <4 x float> poison, float %5, i64 0
  %broadcast.splat604 = shufflevector <4 x float> %broadcast.splatinsert603, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body605

vector.body605:                                   ; preds = %vector.body605, %vector.ph600
  %index606 = phi i64 [ 0, %vector.ph600 ], [ %index.next609, %vector.body605 ] ; 5 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %index606
  %wide.load607 = load <4 x float>, ptr %i.iv, align 4, !tbaa !8, !alias.scope !46 ; 4 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index606
  store <4 x float> %wide.load607, ptr %i.iw, align 4, !tbaa !8, !alias.scope !49, !noalias !51
  %i.ix = fmul <4 x float> %broadcast.splat604, %wide.load607
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index606
  store <4 x float> %i.ix, ptr %i.iy, align 4, !tbaa !8, !alias.scope !54, !noalias !55
  %i.iz = fmul <4 x float> %wide.load607, %wide.load607
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index606
  store <4 x float> %i.iz, ptr %i.ja, align 4, !tbaa !8, !alias.scope !56, !noalias !46
  %index.next609 = add nuw i64 %index606, 4       ; 2 uses
  %i.jb = icmp eq i64 %index.next609, %n.vec602
  br i1 %i.jb, label %middle.block610, label %vector.body605, !llvm.loop !57

middle.block610:                                  ; preds = %vector.body605
  %cmp.n611 = icmp eq i64 %n.vec602, %wide.trip.count377
  br i1 %cmp.n611, label %.lr.ph340.preheader, label %scalar.ph598.preheader

scalar.ph598.preheader:                           ; preds = %vector.memcheck574, %.lr.ph338, %middle.block610
  %indvars.iv374.ph = phi i64 [ 0, %vector.memcheck574 ], [ 0, %.lr.ph338 ], [ %n.vec602, %middle.block610 ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count377, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph598.prol.loopexit, label %scalar.ph598.prol

scalar.ph598.prol:                                ; preds = %scalar.ph598.preheader
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %indvars.iv374.ph
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !8 ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv374.ph ; 2 uses
  store float %i.jd, ptr %i.je, align 4, !tbaa !8
  %i.jf = fmul float %5, %i.jd
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv374.ph
  store float %i.jf, ptr %i.jg, align 4, !tbaa !8
  %i.jh = load float, ptr %i.je, align 4, !tbaa !8 ; 2 uses
  %i.ji = fmul float %i.jh, %i.jh
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv374.ph
  store float %i.ji, ptr %i.jj, align 4, !tbaa !8
  %indvars.iv.next375.prol = or disjoint i64 %indvars.iv374.ph, 1
  br label %scalar.ph598.prol.loopexit

scalar.ph598.prol.loopexit:                       ; preds = %scalar.ph598.prol, %scalar.ph598.preheader
  %indvars.iv374.unr = phi i64 [ %indvars.iv374.ph, %scalar.ph598.preheader ], [ %indvars.iv.next375.prol, %scalar.ph598.prol ]
  %i.jk = add nsw i64 %wide.trip.count377, -1
  %i.jl = icmp eq i64 %indvars.iv374.ph, %i.jk
  br i1 %i.jl, label %.lr.ph340.preheader, label %scalar.ph598

.lr.ph340.preheader:                              ; preds = %scalar.ph598.prol.loopexit, %scalar.ph598, %middle.block610
  %wide.trip.count382 = zext nneg i32 %.sroa.7246.0.copyload to i64
  br label %.lr.ph340

scalar.ph598:                                     ; preds = %scalar.ph598.prol.loopexit, %scalar.ph598
  %indvars.iv374 = phi i64 [ %indvars.iv.next375.1, %scalar.ph598 ], [ %indvars.iv374.unr, %scalar.ph598.prol.loopexit ] ; 6 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %indvars.iv374
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !8 ; 2 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv374 ; 2 uses
  store float %i.jn, ptr %i.jo, align 4, !tbaa !8
  %i.jp = fmul float %5, %i.jn
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv374
  store float %i.jp, ptr %i.jq, align 4, !tbaa !8
  %i.jr = load float, ptr %i.jo, align 4, !tbaa !8 ; 2 uses
  %i.js = fmul float %i.jr, %i.jr
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv374
  store float %i.js, ptr %i.jt, align 4, !tbaa !8
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1 ; 4 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %indvars.iv.next375
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !8 ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next375 ; 2 uses
  store float %i.jv, ptr %i.jw, align 4, !tbaa !8
  %i.jx = fmul float %5, %i.jv
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next375
  store float %i.jx, ptr %i.jy, align 4, !tbaa !8
  %i.jz = load float, ptr %i.jw, align 4, !tbaa !8 ; 2 uses
  %i.ka = fmul float %i.jz, %i.jz
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next375
  store float %i.ka, ptr %i.kb, align 4, !tbaa !8
  %indvars.iv.next375.1 = add nuw nsw i64 %indvars.iv374, 2 ; 2 uses
  %exitcond378.not.1 = icmp eq i64 %indvars.iv.next375.1, %wide.trip.count377
  br i1 %exitcond378.not.1, label %.lr.ph340.preheader, label %scalar.ph598, !llvm.loop !58

.lr.ph342.preheader:                              ; preds = %interpolateTable.exit
  %wide.trip.count387 = zext nneg i32 %.sroa.7246.0.copyload to i64
  %min.iters.check622 = icmp ult i32 %.sroa.7246.0.copyload, 4
  br i1 %min.iters.check622, label %.lr.ph342.preheader837, label %vector.memcheck613

vector.memcheck613:                               ; preds = %.lr.ph342.preheader
  %i.kc = sub i64 %i.n, %i.w
  %diff.check614 = icmp ugt i64 %i.kc, -16
  %i.kd = sub i64 %i.t, %i.w
  %diff.check615 = icmp ugt i64 %i.kd, -16
  %conflict.rdx616 = or i1 %diff.check614, %diff.check615
  %i.ke = sub i64 %i.k, %i.w
  %diff.check617 = icmp ugt i64 %i.ke, -16
  %conflict.rdx618 = or i1 %conflict.rdx616, %diff.check617
  %i.kf = sub i64 %i.q, %i.w
  %diff.check619 = icmp ugt i64 %i.kf, -16
  %conflict.rdx620 = or i1 %conflict.rdx618, %diff.check619
  br i1 %conflict.rdx620, label %.lr.ph342.preheader837, label %vector.ph623

vector.ph623:                                     ; preds = %vector.memcheck613
  %n.vec625 = and i64 %wide.trip.count377, 2147483644 ; 3 uses
  br label %vector.body626

vector.body626:                                   ; preds = %vector.body626, %vector.ph623
  %index627 = phi i64 [ 0, %vector.ph623 ], [ %index.next632, %vector.body626 ] ; 6 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index627
  %wide.load628 = load <4 x float>, ptr %i.kg, align 4, !tbaa !8 ; 2 uses
  %i.kh = fadd <4 x float> %wide.load628, splat (float -2.000000e+00)
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index627
  %wide.load629 = load <4 x float>, ptr %i.ki, align 4, !tbaa !8
  %i.kj = fmul <4 x float> %wide.load629, splat (float 2.000000e+00)
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index627
  %wide.load630 = load <4 x float>, ptr %i.kk, align 4, !tbaa !8
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index627
  %wide.load631 = load <4 x float>, ptr %i.kl, align 4, !tbaa !8
  %i.km = fmul <4 x float> %wide.load630, %wide.load631
  %i.kn = fdiv <4 x float> %i.kj, %i.km
  %i.ko = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load628, <4 x float> %i.kh, <4 x float> %i.kn)
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index627
  store <4 x float> %i.ko, ptr %i.kp, align 4, !tbaa !8
  %index.next632 = add nuw i64 %index627, 4       ; 2 uses
  %i.kq = icmp eq i64 %index.next632, %n.vec625
  br i1 %i.kq, label %middle.block633, label %vector.body626, !llvm.loop !59

middle.block633:                                  ; preds = %vector.body626
  %cmp.n634 = icmp eq i64 %n.vec625, %wide.trip.count377
  br i1 %cmp.n634, label %.lr.ph345.preheader, label %.lr.ph342.preheader837

.lr.ph342.preheader837:                           ; preds = %vector.memcheck613, %.lr.ph342.preheader, %middle.block633
  %indvars.iv384.ph = phi i64 [ 0, %vector.memcheck613 ], [ 0, %.lr.ph342.preheader ], [ %n.vec625, %middle.block633 ] ; 8 uses
  %xtraiter840 = and i64 %wide.trip.count377, 1
  %lcmp.mod841.not = icmp eq i64 %xtraiter840, 0
  br i1 %lcmp.mod841.not, label %.lr.ph342.prol.loopexit, label %.lr.ph342.prol

.lr.ph342.prol:                                   ; preds = %.lr.ph342.preheader837
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv384.ph
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !8 ; 2 uses
  %i.kt = fadd float %i.ks, -2.000000e+00
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv384.ph
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !8
  %i.kw = fmul float %i.kv, 2.000000e+00
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv384.ph
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !8
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv384.ph
  %i.la = load float, ptr %i.kz, align 4, !tbaa !8
  %i.lb = fmul float %i.ky, %i.la
  %i.lc = fdiv float %i.kw, %i.lb
  %i.ld = tail call float @llvm.fmuladd.f32(float %i.ks, float %i.kt, float %i.lc)
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv384.ph
  store float %i.ld, ptr %i.le, align 4, !tbaa !8
  %indvars.iv.next385.prol = or disjoint i64 %indvars.iv384.ph, 1
  br label %.lr.ph342.prol.loopexit

.lr.ph342.prol.loopexit:                          ; preds = %.lr.ph342.prol, %.lr.ph342.preheader837
  %indvars.iv384.unr = phi i64 [ %indvars.iv384.ph, %.lr.ph342.preheader837 ], [ %indvars.iv.next385.prol, %.lr.ph342.prol ]
  %i.lf = add nsw i64 %wide.trip.count377, -1
  %i.lg = icmp eq i64 %indvars.iv384.ph, %i.lf
  br i1 %i.lg, label %.lr.ph345.preheader, label %.lr.ph342

.lr.ph340:                                        ; preds = %.lr.ph340.preheader, %interpolateTable.exit
  %indvars.iv379 = phi i64 [ 0, %.lr.ph340.preheader ], [ %indvars.iv.next380, %interpolateTable.exit ] ; 3 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv379
  %i.li = load float, ptr %i.lh, align 4, !tbaa !8 ; 3 uses
  %i.lj = fcmp ogt float %i.li, %.sroa.5.0.copyload
  br i1 %i.lj, label %interpolateTable.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph340
  %i.lk = fdiv float %i.li, %.sroa.4.0.copyload320
  %i.ll = tail call float @llvm.fmuladd.f32(float %.sroa.4.0.copyload320, float 5.000000e-01, float %i.lk)
  %i.lm = fptosi float %i.ll to i32
  %i.ln = shl nsw i32 %i.lm, 1
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr inbounds [4 x i8], ptr %.sroa.3.0.copyload318, i64 %i.lo ; 2 uses
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !8
  %i.lr = getelementptr i8, ptr %i.lp, i64 4
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !8
  %i.lt = tail call float @llvm.fmuladd.f32(float %i.lq, float %i.li, float %i.ls)
  br label %interpolateTable.exit

interpolateTable.exit:                            ; preds = %.lr.ph340, %bb.e
  %.0.i = phi float [ %i.lt, %bb.e ], [ 1.000000e+00, %.lr.ph340 ]
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv379
  store float %.0.i, ptr %i.lu, align 4, !tbaa !8
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 2 uses
  %exitcond383.not = icmp eq i64 %indvars.iv.next380, %wide.trip.count382
  br i1 %exitcond383.not, label %.lr.ph342.preheader, label %.lr.ph340

.lr.ph345.preheader:                              ; preds = %.lr.ph342.prol.loopexit, %.lr.ph342, %middle.block633
  %.0309.in.v = select i1 %1, i64 24, i64 32
  %.0309.in = getelementptr inbounds nuw i8, ptr %0, i64 %.0309.in.v
  %.0309 = load ptr, ptr %.0309.in, align 8, !tbaa !10 ; 11 uses
  %.0309642 = ptrtoaddr ptr %.0309 to i64         ; 6 uses
  %wide.trip.count392 = zext nneg i32 %.sroa.7246.0.copyload to i64
  %min.iters.check656 = icmp ult i32 %.sroa.7246.0.copyload, 4
  br i1 %min.iters.check656, label %.lr.ph345.preheader836, label %vector.memcheck636

vector.memcheck636:                               ; preds = %.lr.ph345.preheader
  %i.lv = sub i64 %i.b, %i.z
  %diff.check637 = icmp ugt i64 %i.lv, -16
  %i.lw = sub i64 %i.n, %i.z
  %diff.check638 = icmp ugt i64 %i.lw, -16
  %conflict.rdx639 = or i1 %diff.check637, %diff.check638
  %i.lx = sub i64 %i.k, %i.z
  %diff.check640 = icmp ugt i64 %i.lx, -16
  %conflict.rdx641 = or i1 %conflict.rdx639, %diff.check640
  %i.ly = sub i64 %.0309642, %i.z
  %diff.check643 = icmp ugt i64 %i.ly, -16
  %conflict.rdx644 = or i1 %conflict.rdx641, %diff.check643
  %i.lz = sub i64 %i.t, %i.z
  %diff.check645 = icmp ugt i64 %i.lz, -16
  %conflict.rdx646 = or i1 %conflict.rdx644, %diff.check645
  %i.ma = sub i64 %i.q, %i.z
  %diff.check647 = icmp ugt i64 %i.ma, -16
  %conflict.rdx648 = or i1 %conflict.rdx646, %diff.check647
  %i.mb = sub i64 %i.e, %i.z
  %diff.check649 = icmp ugt i64 %i.mb, -16
  %conflict.rdx650 = or i1 %conflict.rdx648, %diff.check649
  %i.mc = sub i64 %i.w, %i.z
  %diff.check651 = icmp ugt i64 %i.mc, -16
  %conflict.rdx652 = or i1 %conflict.rdx650, %diff.check651
  %i.md = sub i64 %i.h, %i.z
  %diff.check653 = icmp ugt i64 %i.md, -16
  %conflict.rdx654 = or i1 %conflict.rdx652, %diff.check653
  br i1 %conflict.rdx654, label %.lr.ph345.preheader836, label %vector.ph657

vector.ph657:                                     ; preds = %vector.memcheck636
  %n.vec659 = and i64 %wide.trip.count377, 2147483644 ; 3 uses
  %broadcast.splatinsert660 = insertelement <4 x float> poison, float %6, i64 0
  %broadcast.splat661 = shufflevector <4 x float> %broadcast.splatinsert660, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert662 = insertelement <4 x float> poison, float %i.be, i64 0
  %broadcast.splat663 = shufflevector <4 x float> %broadcast.splatinsert662, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body664

vector.body664:                                   ; preds = %vector.body664, %vector.ph657
  %index665 = phi i64 [ 0, %vector.ph657 ], [ %index.next675, %vector.body664 ] ; 11 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index665
  %wide.load666 = load <4 x float>, ptr %i.me, align 4, !tbaa !8 ; 2 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index665
  %wide.load667 = load <4 x float>, ptr %i.mf, align 4, !tbaa !8 ; 4 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index665
  %wide.load668 = load <4 x float>, ptr %i.mg, align 4, !tbaa !8
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %index665
  %wide.load669 = load <4 x float>, ptr %i.mh, align 4, !tbaa !8
  %i.mi = fneg <4 x float> %wide.load666
  %i.mj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load668, <4 x float> %wide.load669, <4 x float> %i.mi)
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index665
  %wide.load670 = load <4 x float>, ptr %i.mk, align 4, !tbaa !8 ; 2 uses
  %i.ml = fmul <4 x float> %i.mj, %wide.load670
  %i.mm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load666, <4 x float> %wide.load667, <4 x float> %i.ml)
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index665
  %wide.load671 = load <4 x float>, ptr %i.mn, align 4, !tbaa !8 ; 3 uses
  %i.mo = fdiv <4 x float> %i.mm, %wide.load671
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index665
  %wide.load672 = load <4 x float>, ptr %i.mp, align 4, !tbaa !8
  %i.mq = fmul <4 x float> %broadcast.splat661, %wide.load672
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index665
  %wide.load673 = load <4 x float>, ptr %i.mr, align 4, !tbaa !8
  %i.ms = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mq, <4 x float> %wide.load673, <4 x float> %i.mo)
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index665
  %wide.load674 = load <4 x float>, ptr %i.mt, align 4, !tbaa !8
  %i.mu = fmul <4 x float> %broadcast.splat663, %wide.load674
  %i.mv = fadd <4 x float> %wide.load667, splat (float -3.000000e+00)
  %i.mw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load667, <4 x float> %i.mv, <4 x float> splat (float 6.000000e+00))
  %i.mx = fmul <4 x float> %wide.load670, splat (float -6.000000e+00)
  %i.my = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load667, <4 x float> %i.mw, <4 x float> %i.mx)
  %i.mz = fmul <4 x float> %i.my, %i.mu
  %i.na = fmul <4 x float> %wide.load671, splat (float 3.000000e+00)
  %i.nb = fmul <4 x float> %wide.load671, %i.na
  %i.nc = fdiv <4 x float> %i.mz, %i.nb
  %i.nd = fadd <4 x float> %i.ms, %i.nc
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index665
  store <4 x float> %i.nd, ptr %i.ne, align 4, !tbaa !8
  %index.next675 = add nuw i64 %index665, 4       ; 2 uses
  %i.nf = icmp eq i64 %index.next675, %n.vec659
  br i1 %i.nf, label %middle.block676, label %vector.body664, !llvm.loop !60

middle.block676:                                  ; preds = %vector.body664
  %cmp.n677 = icmp eq i64 %n.vec659, %wide.trip.count377
  br i1 %cmp.n677, label %.lr.ph347.preheader, label %.lr.ph345.preheader836

.lr.ph345.preheader836:                           ; preds = %vector.memcheck636, %.lr.ph345.preheader, %middle.block676
  %indvars.iv389.ph = phi i64 [ 0, %vector.memcheck636 ], [ 0, %.lr.ph345.preheader ], [ %n.vec659, %middle.block676 ]
  br label %.lr.ph345

.lr.ph342:                                        ; preds = %.lr.ph342.prol.loopexit, %.lr.ph342
  %indvars.iv384 = phi i64 [ %indvars.iv.next385.1, %.lr.ph342 ], [ %indvars.iv384.unr, %.lr.ph342.prol.loopexit ] ; 7 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv384
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !8 ; 2 uses
  %i.ni = fadd float %i.nh, -2.000000e+00
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv384
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !8
  %i.nl = fmul float %i.nk, 2.000000e+00
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv384
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !8
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv384
  %i.np = load float, ptr %i.no, align 4, !tbaa !8
  %i.nq = fmul float %i.nn, %i.np
  %i.nr = fdiv float %i.nl, %i.nq
  %i.ns = tail call float @llvm.fmuladd.f32(float %i.nh, float %i.ni, float %i.nr)
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv384
  store float %i.ns, ptr %i.nt, align 4, !tbaa !8
  %indvars.iv.next385 = add nuw nsw i64 %indvars.iv384, 1 ; 5 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next385
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !8 ; 2 uses
  %i.nw = fadd float %i.nv, -2.000000e+00
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next385
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !8
  %i.nz = fmul float %i.ny, 2.000000e+00
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next385
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !8
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next385
  %i.od = load float, ptr %i.oc, align 4, !tbaa !8
  %i.oe = fmul float %i.ob, %i.od
  %i.of = fdiv float %i.nz, %i.oe
  %i.og = tail call float @llvm.fmuladd.f32(float %i.nv, float %i.nw, float %i.of)
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next385
  store float %i.og, ptr %i.oh, align 4, !tbaa !8
  %indvars.iv.next385.1 = add nuw nsw i64 %indvars.iv384, 2 ; 2 uses
  %exitcond388.not.1 = icmp eq i64 %indvars.iv.next385.1, %wide.trip.count387
  br i1 %exitcond388.not.1, label %.lr.ph345.preheader, label %.lr.ph342, !llvm.loop !61

.lr.ph347.preheader:                              ; preds = %.lr.ph345, %middle.block676
  %wide.trip.count397 = zext nneg i32 %.sroa.7246.0.copyload to i64
  %min.iters.check682 = icmp ult i32 %.sroa.7246.0.copyload, 8
  %i.oi = sub i64 %i.z, %i.ac
  %diff.check680 = icmp ugt i64 %i.oi, -32
  %or.cond = select i1 %min.iters.check682, i1 true, i1 %diff.check680
  br i1 %or.cond, label %.lr.ph347.preheader835, label %vector.ph683

vector.ph683:                                     ; preds = %.lr.ph347.preheader
  %n.vec685 = and i64 %wide.trip.count377, 2147483640 ; 3 uses
  %broadcast.splatinsert686 = insertelement <4 x float> poison, float %i.bd, i64 0
  %broadcast.splat687 = shufflevector <4 x float> %broadcast.splatinsert686, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body688

vector.body688:                                   ; preds = %vector.body688, %vector.ph683
  %index689 = phi i64 [ 0, %vector.ph683 ], [ %index.next692, %vector.body688 ] ; 3 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index689 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %wide.load690 = load <4 x float>, ptr %i.oj, align 4, !tbaa !8
  %wide.load691 = load <4 x float>, ptr %i.ok, align 4, !tbaa !8
  %i.ol = fmul <4 x float> %broadcast.splat687, %wide.load690
  %i.om = fmul <4 x float> %broadcast.splat687, %wide.load691
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index689 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  store <4 x float> %i.ol, ptr %i.on, align 4, !tbaa !8
  store <4 x float> %i.om, ptr %i.oo, align 4, !tbaa !8
  %index.next692 = add nuw i64 %index689, 8       ; 2 uses
  %i.op = icmp eq i64 %index.next692, %n.vec685
  br i1 %i.op, label %middle.block693, label %vector.body688, !llvm.loop !62

middle.block693:                                  ; preds = %vector.body688
  %cmp.n694 = icmp eq i64 %n.vec685, %wide.trip.count377
  br i1 %cmp.n694, label %.lr.ph349.preheader, label %.lr.ph347.preheader835

.lr.ph347.preheader835:                           ; preds = %.lr.ph347.preheader, %middle.block693
  %indvars.iv394.ph = phi i64 [ 0, %.lr.ph347.preheader ], [ %n.vec685, %middle.block693 ] ; 3 uses
  %xtraiter842 = and i64 %wide.trip.count377, 3   ; 2 uses
  %lcmp.mod843.not = icmp eq i64 %xtraiter842, 0
  br i1 %lcmp.mod843.not, label %.lr.ph347.prol.loopexit, label %.lr.ph347.prol

.lr.ph347.prol:                                   ; preds = %.lr.ph347.preheader835, %.lr.ph347.prol
  %indvars.iv394.prol = phi i64 [ %indvars.iv.next395.prol, %.lr.ph347.prol ], [ %indvars.iv394.ph, %.lr.ph347.preheader835 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph347.prol ], [ 0, %.lr.ph347.preheader835 ]
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv394.prol
  %i.or = load float, ptr %i.oq, align 4, !tbaa !8
  %i.os = fmul float %i.bd, %i.or
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv394.prol
  store float %i.os, ptr %i.ot, align 4, !tbaa !8
  %indvars.iv.next395.prol = add nuw nsw i64 %indvars.iv394.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter842
  br i1 %prol.iter.cmp.not, label %.lr.ph347.prol.loopexit, label %.lr.ph347.prol, !llvm.loop !63

.lr.ph347.prol.loopexit:                          ; preds = %.lr.ph347.prol, %.lr.ph347.preheader835
  %indvars.iv394.unr = phi i64 [ %indvars.iv394.ph, %.lr.ph347.preheader835 ], [ %indvars.iv.next395.prol, %.lr.ph347.prol ]
  %i.ou = sub nsw i64 %indvars.iv394.ph, %wide.trip.count377
  %i.ov = icmp ugt i64 %i.ou, -4
  br i1 %i.ov, label %.lr.ph349.preheader, label %.lr.ph347

.lr.ph345:                                        ; preds = %.lr.ph345.preheader836, %.lr.ph345
  %indvars.iv389 = phi i64 [ %indvars.iv.next390, %.lr.ph345 ], [ %indvars.iv389.ph, %.lr.ph345.preheader836 ] ; 11 uses
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv389
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv389
  %i.ox = load float, ptr %i.ow, align 4, !tbaa !8 ; 4 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv389
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !8
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %indvars.iv389
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !8
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv389
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !8 ; 2 uses
  %10 = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv389
  %11 = load float, ptr %10, align 4, !tbaa !8    ; 3 uses
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv389
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !8
  %i.pg = fmul float %6, %i.pf
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv389
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !8
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv389
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !8
  %i.pl = fmul float %i.be, %i.pk
  %12 = fadd float %i.ox, -3.000000e+00
  %13 = tail call float @llvm.fmuladd.f32(float %i.ox, float %12, float 6.000000e+00)
  %14 = fmul float %i.pd, -6.000000e+00
  %i.pm = tail call float @llvm.fmuladd.f32(float %i.ox, float %13, float %14)
  %15 = fmul float %i.pm, %i.pl
  %16 = fmul float %11, 3.000000e+00
  %i.pn = fmul float %11, %16
  %17 = load float, ptr %9, align 4, !tbaa !8     ; 2 uses
  %18 = fneg float %17
  %i.po = tail call float @llvm.fmuladd.f32(float %i.oz, float %i.pb, float %18)
  %i.pp = fmul float %i.po, %i.pd
  %i.pq = tail call float @llvm.fmuladd.f32(float %17, float %i.ox, float %i.pp)
  %19 = insertelement <2 x float> poison, float %i.pq, i64 0
  %20 = insertelement <2 x float> %19, float %15, i64 1
  %21 = insertelement <2 x float> poison, float %11, i64 0
  %22 = insertelement <2 x float> %21, float %i.pn, i64 1
  %23 = fdiv <2 x float> %20, %22                 ; 2 uses
  %24 = extractelement <2 x float> %23, i64 0
  %25 = tail call float @llvm.fmuladd.f32(float %i.pg, float %i.pi, float %24)
  %26 = extractelement <2 x float> %23, i64 1
  %i.pr = fadd float %25, %26
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv389
  store float %i.pr, ptr %i.ps, align 4, !tbaa !8
  %indvars.iv.next390 = add nuw nsw i64 %indvars.iv389, 1 ; 2 uses
  %exitcond393.not = icmp eq i64 %indvars.iv.next390, %wide.trip.count392
  br i1 %exitcond393.not, label %.lr.ph347.preheader, label %.lr.ph345, !llvm.loop !65

.lr.ph349.preheader:                              ; preds = %.lr.ph347.prol.loopexit, %.lr.ph347, %middle.block693
  %wide.trip.count402 = zext nneg i32 %.sroa.7246.0.copyload to i64
  %min.iters.check703 = icmp ult i32 %.sroa.7246.0.copyload, 8
  br i1 %min.iters.check703, label %.lr.ph349.preheader834, label %vector.memcheck696

vector.memcheck696:                               ; preds = %.lr.ph349.preheader
  %i.pt = shl nuw nsw i64 %wide.trip.count377, 2  ; 2 uses
  %scevgep697 = getelementptr i8, ptr %i.bi, i64 %i.pt
  %scevgep698 = getelementptr i8, ptr %i.ab, i64 %i.pt
  %bound0699 = icmp ult ptr %i.bi, %scevgep698
  %bound1700 = icmp ult ptr %i.ab, %scevgep697
  %found.conflict701 = and i1 %bound0699, %bound1700
  br i1 %found.conflict701, label %.lr.ph349.preheader834, label %vector.ph704

vector.ph704:                                     ; preds = %vector.memcheck696
  %n.vec706 = and i64 %wide.trip.count377, 2147483640 ; 3 uses
  br label %vector.body707

vector.body707:                                   ; preds = %vector.body707, %vector.ph704
  %index708 = phi i64 [ 0, %vector.ph704 ], [ %index.next713, %vector.body707 ] ; 3 uses
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index708 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  %wide.load709 = load <4 x float>, ptr %i.pu, align 4, !tbaa !8, !alias.scope !66
  %wide.load710 = load <4 x float>, ptr %i.pv, align 4, !tbaa !8, !alias.scope !66
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %index708 ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 16 ; 2 uses
  %wide.load711 = load <4 x float>, ptr %i.pw, align 4, !tbaa !8, !alias.scope !69, !noalias !66
  %wide.load712 = load <4 x float>, ptr %i.px, align 4, !tbaa !8, !alias.scope !69, !noalias !66
  %i.py = fadd <4 x float> %wide.load709, %wide.load711
  %i.pz = fadd <4 x float> %wide.load710, %wide.load712
  store <4 x float> %i.py, ptr %i.pw, align 4, !tbaa !8, !alias.scope !69, !noalias !66
  store <4 x float> %i.pz, ptr %i.px, align 4, !tbaa !8, !alias.scope !69, !noalias !66
  %index.next713 = add nuw i64 %index708, 8       ; 2 uses
  %i.qa = icmp eq i64 %index.next713, %n.vec706
  br i1 %i.qa, label %middle.block714, label %vector.body707, !llvm.loop !71

middle.block714:                                  ; preds = %vector.body707
  %cmp.n715 = icmp eq i64 %n.vec706, %wide.trip.count377
  br i1 %cmp.n715, label %.lr.ph351.preheader, label %.lr.ph349.preheader834

.lr.ph349.preheader834:                           ; preds = %vector.memcheck696, %.lr.ph349.preheader, %middle.block714
  %indvars.iv399.ph = phi i64 [ 0, %vector.memcheck696 ], [ 0, %.lr.ph349.preheader ], [ %n.vec706, %middle.block714 ] ; 3 uses
  %xtraiter844 = and i64 %wide.trip.count377, 3   ; 2 uses
  %lcmp.mod845.not = icmp eq i64 %xtraiter844, 0
  br i1 %lcmp.mod845.not, label %.lr.ph349.prol.loopexit, label %.lr.ph349.prol

.lr.ph349.prol:                                   ; preds = %.lr.ph349.preheader834, %.lr.ph349.prol
  %indvars.iv399.prol = phi i64 [ %indvars.iv.next400.prol, %.lr.ph349.prol ], [ %indvars.iv399.ph, %.lr.ph349.preheader834 ] ; 3 uses
  %prol.iter846 = phi i64 [ %prol.iter846.next, %.lr.ph349.prol ], [ 0, %.lr.ph349.preheader834 ]
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv399.prol
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !8
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv399.prol ; 2 uses
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !8
  %i.qf = fadd float %i.qc, %i.qe
  store float %i.qf, ptr %i.qd, align 4, !tbaa !8
  %indvars.iv.next400.prol = add nuw nsw i64 %indvars.iv399.prol, 1 ; 2 uses
  %prol.iter846.next = add i64 %prol.iter846, 1   ; 2 uses
  %prol.iter846.cmp.not = icmp eq i64 %prol.iter846.next, %xtraiter844
  br i1 %prol.iter846.cmp.not, label %.lr.ph349.prol.loopexit, label %.lr.ph349.prol, !llvm.loop !72

.lr.ph349.prol.loopexit:                          ; preds = %.lr.ph349.prol, %.lr.ph349.preheader834
  %indvars.iv399.unr = phi i64 [ %indvars.iv399.ph, %.lr.ph349.preheader834 ], [ %indvars.iv.next400.prol, %.lr.ph349.prol ]
  %i.qg = sub nsw i64 %indvars.iv399.ph, %wide.trip.count377
  %i.qh = icmp ugt i64 %i.qg, -4
  br i1 %i.qh, label %.lr.ph351.preheader, label %.lr.ph349

.lr.ph347:                                        ; preds = %.lr.ph347.prol.loopexit, %.lr.ph347
  %indvars.iv394 = phi i64 [ %indvars.iv.next395.3, %.lr.ph347 ], [ %indvars.iv394.unr, %.lr.ph347.prol.loopexit ] ; 6 uses
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv394
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !8
  %i.qk = fmul float %i.bd, %i.qj
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv394
  store float %i.qk, ptr %i.ql, align 4, !tbaa !8
  %indvars.iv.next395 = add nuw nsw i64 %indvars.iv394, 1 ; 2 uses
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next395
  %i.qn = load float, ptr %i.qm, align 4, !tbaa !8
  %i.qo = fmul float %i.bd, %i.qn
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next395
  store float %i.qo, ptr %i.qp, align 4, !tbaa !8
  %indvars.iv.next395.1 = add nuw nsw i64 %indvars.iv394, 2 ; 2 uses
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next395.1
  %i.qr = load float, ptr %i.qq, align 4, !tbaa !8
  %i.qs = fmul float %i.bd, %i.qr
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next395.1
  store float %i.qs, ptr %i.qt, align 4, !tbaa !8
  %indvars.iv.next395.2 = add nuw nsw i64 %indvars.iv394, 3 ; 2 uses
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next395.2
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !8
  %i.qw = fmul float %i.bd, %i.qv
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next395.2
  store float %i.qw, ptr %i.qx, align 4, !tbaa !8
  %indvars.iv.next395.3 = add nuw nsw i64 %indvars.iv394, 4 ; 2 uses
  %exitcond398.not.3 = icmp eq i64 %indvars.iv.next395.3, %wide.trip.count397
  br i1 %exitcond398.not.3, label %.lr.ph349.preheader, label %.lr.ph347, !llvm.loop !73

.lr.ph351.preheader:                              ; preds = %.lr.ph349.prol.loopexit, %.lr.ph349, %middle.block714
  %wide.trip.count407 = zext nneg i32 %.sroa.7246.0.copyload to i64
  %min.iters.check724 = icmp ult i32 %.sroa.7246.0.copyload, 4
  br i1 %min.iters.check724, label %.lr.ph351.preheader833, label %vector.memcheck717

vector.memcheck717:                               ; preds = %.lr.ph351.preheader
  %i.qy = sub i64 %i.b, %i.af
  %diff.check718 = icmp ugt i64 %i.qy, -16
  %i.qz = sub i64 %i.t, %i.af
  %diff.check719 = icmp ugt i64 %i.qz, -16
  %conflict.rdx720 = or i1 %diff.check718, %diff.check719
  %i.ra = sub i64 %i.k, %i.af
  %diff.check721 = icmp ugt i64 %i.ra, -16
  %conflict.rdx722 = or i1 %conflict.rdx720, %diff.check721
  br i1 %conflict.rdx722, label %.lr.ph351.preheader833, label %vector.ph725

vector.ph725:                                     ; preds = %vector.memcheck717
  %n.vec727 = and i64 %wide.trip.count377, 2147483644 ; 3 uses
  br label %vector.body728

vector.body728:                                   ; preds = %vector.body728, %vector.ph725
  %index729 = phi i64 [ 0, %vector.ph725 ], [ %index.next733, %vector.body728 ] ; 5 uses
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index729
  %wide.load730 = load <4 x float>, ptr %i.rb, align 4, !tbaa !8
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index729
  %wide.load731 = load <4 x float>, ptr %i.rc, align 4, !tbaa !8
  %i.rd = fmul <4 x float> %wide.load730, %wide.load731
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index729
  %wide.load732 = load <4 x float>, ptr %i.re, align 4, !tbaa !8
  %i.rf = fdiv <4 x float> %i.rd, %wide.load732
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index729
  store <4 x float> %i.rf, ptr %i.rg, align 4, !tbaa !8
  %index.next733 = add nuw i64 %index729, 4       ; 2 uses
  %i.rh = icmp eq i64 %index.next733, %n.vec727
  br i1 %i.rh, label %middle.block734, label %vector.body728, !llvm.loop !74

middle.block734:                                  ; preds = %vector.body728
  %cmp.n735 = icmp eq i64 %n.vec727, %wide.trip.count377
  br i1 %cmp.n735, label %.lr.ph353.preheader, label %.lr.ph351.preheader833

.lr.ph351.preheader833:                           ; preds = %vector.memcheck717, %.lr.ph351.preheader, %middle.block734
  %indvars.iv404.ph = phi i64 [ 0, %vector.memcheck717 ], [ 0, %.lr.ph351.preheader ], [ %n.vec727, %middle.block734 ] ; 7 uses
  %xtraiter847 = and i64 %wide.trip.count377, 1
  %lcmp.mod848.not = icmp eq i64 %xtraiter847, 0
  br i1 %lcmp.mod848.not, label %.lr.ph351.prol.loopexit, label %.lr.ph351.prol

.lr.ph351.prol:                                   ; preds = %.lr.ph351.preheader833
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv404.ph
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !8
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv404.ph
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !8
  %i.rm = fmul float %i.rj, %i.rl
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv404.ph
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !8
  %i.rp = fdiv float %i.rm, %i.ro
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv404.ph
  store float %i.rp, ptr %i.rq, align 4, !tbaa !8
  %indvars.iv.next405.prol = or disjoint i64 %indvars.iv404.ph, 1
  br label %.lr.ph351.prol.loopexit

.lr.ph351.prol.loopexit:                          ; preds = %.lr.ph351.prol, %.lr.ph351.preheader833
  %indvars.iv404.unr = phi i64 [ %indvars.iv404.ph, %.lr.ph351.preheader833 ], [ %indvars.iv.next405.prol, %.lr.ph351.prol ]
  %i.rr = add nsw i64 %wide.trip.count377, -1
  %i.rs = icmp eq i64 %indvars.iv404.ph, %i.rr
  br i1 %i.rs, label %.lr.ph353.preheader, label %.lr.ph351

.lr.ph349:                                        ; preds = %.lr.ph349.prol.loopexit, %.lr.ph349
  %indvars.iv399 = phi i64 [ %indvars.iv.next400.3, %.lr.ph349 ], [ %indvars.iv399.unr, %.lr.ph349.prol.loopexit ] ; 6 uses
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv399
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !8
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv399 ; 2 uses
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !8
  %i.rx = fadd float %i.ru, %i.rw
  store float %i.rx, ptr %i.rv, align 4, !tbaa !8
  %indvars.iv.next400 = add nuw nsw i64 %indvars.iv399, 1 ; 2 uses
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next400
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !8
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.next400 ; 2 uses
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !8
  %i.sc = fadd float %i.rz, %i.sb
  store float %i.sc, ptr %i.sa, align 4, !tbaa !8
  %indvars.iv.next400.1 = add nuw nsw i64 %indvars.iv399, 2 ; 2 uses
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next400.1
  %i.se = load float, ptr %i.sd, align 4, !tbaa !8
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.next400.1 ; 2 uses
  %i.sg = load float, ptr %i.sf, align 4, !tbaa !8
  %i.sh = fadd float %i.se, %i.sg
  store float %i.sh, ptr %i.sf, align 4, !tbaa !8
  %indvars.iv.next400.2 = add nuw nsw i64 %indvars.iv399, 3 ; 2 uses
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next400.2
  %i.sj = load float, ptr %i.si, align 4, !tbaa !8
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.next400.2 ; 2 uses
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !8
  %i.sm = fadd float %i.sj, %i.sl
  store float %i.sm, ptr %i.sk, align 4, !tbaa !8
  %indvars.iv.next400.3 = add nuw nsw i64 %indvars.iv399, 4 ; 2 uses
  %exitcond403.not.3 = icmp eq i64 %indvars.iv.next400.3, %wide.trip.count402
  br i1 %exitcond403.not.3, label %.lr.ph351.preheader, label %.lr.ph349, !llvm.loop !75

.lr.ph353.preheader:                              ; preds = %.lr.ph351.prol.loopexit, %.lr.ph351, %middle.block734
  %wide.trip.count412 = zext nneg i32 %.sroa.7246.0.copyload to i64
  %min.iters.check746 = icmp ult i32 %.sroa.7246.0.copyload, 8
  br i1 %min.iters.check746, label %.lr.ph353.preheader832, label %vector.memcheck737

vector.memcheck737:                               ; preds = %.lr.ph353.preheader
  %i.sn = sub i64 %i.e, %i.ai
  %diff.check738 = icmp ugt i64 %i.sn, -16
  %i.so = sub i64 %i.n, %i.ai
  %diff.check739 = icmp ugt i64 %i.so, -16
  %conflict.rdx740 = or i1 %diff.check738, %diff.check739
  %i.sp = sub i64 %i.t, %i.ai
  %diff.check741 = icmp ugt i64 %i.sp, -16
  %conflict.rdx742 = or i1 %conflict.rdx740, %diff.check741
  %i.sq = sub i64 %i.q, %i.ai
  %diff.check743 = icmp ugt i64 %i.sq, -16
  %conflict.rdx744 = or i1 %conflict.rdx742, %diff.check743
  br i1 %conflict.rdx744, label %.lr.ph353.preheader832, label %vector.ph747

vector.ph747:                                     ; preds = %vector.memcheck737
  %n.vec749 = and i64 %wide.trip.count377, 2147483644 ; 3 uses
  %broadcast.splatinsert750 = insertelement <4 x float> poison, float %6, i64 0
  %broadcast.splat751 = shufflevector <4 x float> %broadcast.splatinsert750, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body752

vector.body752:                                   ; preds = %vector.body752, %vector.ph747
  %index753 = phi i64 [ 0, %vector.ph747 ], [ %index.next758, %vector.body752 ] ; 6 uses
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index753
  %wide.load754 = load <4 x float>, ptr %i.sr, align 4, !tbaa !8
  %i.ss = fmul <4 x float> %broadcast.splat751, %wide.load754
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index753
  %wide.load755 = load <4 x float>, ptr %i.st, align 4, !tbaa !8
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index753
  %wide.load756 = load <4 x float>, ptr %i.su, align 4, !tbaa !8
  %i.sv = fsub <4 x float> %wide.load755, %wide.load756
  %i.sw = fmul <4 x float> %i.ss, %i.sv
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index753
  %wide.load757 = load <4 x float>, ptr %i.sx, align 4, !tbaa !8
  %i.sy = fdiv <4 x float> %i.sw, %wide.load757
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index753
  store <4 x float> %i.sy, ptr %i.sz, align 4, !tbaa !8
  %index.next758 = add nuw i64 %index753, 4       ; 2 uses
  %i.ta = icmp eq i64 %index.next758, %n.vec749
  br i1 %i.ta, label %middle.block759, label %vector.body752, !llvm.loop !76

middle.block759:                                  ; preds = %vector.body752
  %cmp.n760 = icmp eq i64 %n.vec749, %wide.trip.count377
  br i1 %cmp.n760, label %.lr.ph355.preheader, label %.lr.ph353.preheader832

.lr.ph353.preheader832:                           ; preds = %vector.memcheck737, %.lr.ph353.preheader, %middle.block759
  %indvars.iv409.ph = phi i64 [ 0, %vector.memcheck737 ], [ 0, %.lr.ph353.preheader ], [ %n.vec749, %middle.block759 ] ; 8 uses
  %xtraiter850 = and i64 %wide.trip.count377, 1
  %lcmp.mod851.not = icmp eq i64 %xtraiter850, 0
  br i1 %lcmp.mod851.not, label %.lr.ph353.prol.loopexit, label %.lr.ph353.prol

.lr.ph353.prol:                                   ; preds = %.lr.ph353.preheader832
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv409.ph
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !8
  %i.td = fmul float %6, %i.tc
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv409.ph
  %i.tf = load float, ptr %i.te, align 4, !tbaa !8
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv409.ph
  %i.th = load float, ptr %i.tg, align 4, !tbaa !8
  %i.ti = fsub float %i.tf, %i.th
  %i.tj = fmul float %i.td, %i.ti
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv409.ph
  %i.tl = load float, ptr %i.tk, align 4, !tbaa !8
  %i.tm = fdiv float %i.tj, %i.tl
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv409.ph
  store float %i.tm, ptr %i.tn, align 4, !tbaa !8
  %indvars.iv.next410.prol = or disjoint i64 %indvars.iv409.ph, 1
  br label %.lr.ph353.prol.loopexit

.lr.ph353.prol.loopexit:                          ; preds = %.lr.ph353.prol, %.lr.ph353.preheader832
  %indvars.iv409.unr = phi i64 [ %indvars.iv409.ph, %.lr.ph353.preheader832 ], [ %indvars.iv.next410.prol, %.lr.ph353.prol ]
  %i.to = add nsw i64 %wide.trip.count377, -1
  %i.tp = icmp eq i64 %indvars.iv409.ph, %i.to
  br i1 %i.tp, label %.lr.ph355.preheader, label %.lr.ph353

.lr.ph351:                                        ; preds = %.lr.ph351.prol.loopexit, %.lr.ph351
  %indvars.iv404 = phi i64 [ %indvars.iv.next405.1, %.lr.ph351 ], [ %indvars.iv404.unr, %.lr.ph351.prol.loopexit ] ; 6 uses
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv404
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !8
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv404
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !8
  %i.tu = fmul float %i.tr, %i.tt
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv404
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !8
  %i.tx = fdiv float %i.tu, %i.tw
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv404
  store float %i.tx, ptr %i.ty, align 4, !tbaa !8
  %indvars.iv.next405 = add nuw nsw i64 %indvars.iv404, 1 ; 4 uses
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next405
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !8
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next405
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !8
  %i.ud = fmul float %i.ua, %i.uc
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next405
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !8
  %i.ug = fdiv float %i.ud, %i.uf
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next405
  store float %i.ug, ptr %i.uh, align 4, !tbaa !8
  %indvars.iv.next405.1 = add nuw nsw i64 %indvars.iv404, 2 ; 2 uses
  %exitcond408.not.1 = icmp eq i64 %indvars.iv.next405.1, %wide.trip.count407
  br i1 %exitcond408.not.1, label %.lr.ph353.preheader, label %.lr.ph351, !llvm.loop !77

.lr.ph355.preheader:                              ; preds = %.lr.ph353.prol.loopexit, %.lr.ph353, %middle.block759
  %wide.trip.count417 = zext nneg i32 %.sroa.7246.0.copyload to i64
  %min.iters.check767 = icmp ult i32 %.sroa.7246.0.copyload, 8
  br i1 %min.iters.check767, label %.lr.ph355.preheader831, label %vector.memcheck762

vector.memcheck762:                               ; preds = %.lr.ph355.preheader
  %i.ui = sub i64 %i.h, %i.al
  %diff.check763 = icmp ugt i64 %i.ui, -32
  %i.uj = sub i64 %i.w, %i.al
  %diff.check764 = icmp ugt i64 %i.uj, -32
  %conflict.rdx765 = or i1 %diff.check763, %diff.check764
  br i1 %conflict.rdx765, label %.lr.ph355.preheader831, label %vector.ph768

vector.ph768:                                     ; preds = %vector.memcheck762
  %n.vec770 = and i64 %wide.trip.count377, 2147483640 ; 3 uses
  %broadcast.splatinsert771 = insertelement <4 x float> poison, float %i.be, i64 0
  %broadcast.splat772 = shufflevector <4 x float> %broadcast.splatinsert771, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body773

vector.body773:                                   ; preds = %vector.body773, %vector.ph768
  %index774 = phi i64 [ 0, %vector.ph768 ], [ %index.next779, %vector.body773 ] ; 4 uses
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index774 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 16
  %wide.load775 = load <4 x float>, ptr %i.uk, align 4, !tbaa !8
  %wide.load776 = load <4 x float>, ptr %i.ul, align 4, !tbaa !8
  %i.um = fmul <4 x float> %broadcast.splat772, %wide.load775
  %i.un = fmul <4 x float> %broadcast.splat772, %wide.load776
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index774 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  %wide.load777 = load <4 x float>, ptr %i.uo, align 4, !tbaa !8
  %wide.load778 = load <4 x float>, ptr %i.up, align 4, !tbaa !8
  %i.uq = fmul <4 x float> %i.um, %wide.load777
  %i.ur = fmul <4 x float> %i.un, %wide.load778
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index774 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 16
  store <4 x float> %i.uq, ptr %i.us, align 4, !tbaa !8
  store <4 x float> %i.ur, ptr %i.ut, align 4, !tbaa !8
  %index.next779 = add nuw i64 %index774, 8       ; 2 uses
  %i.uu = icmp eq i64 %index.next779, %n.vec770
  br i1 %i.uu, label %middle.block780, label %vector.body773, !llvm.loop !78

middle.block780:                                  ; preds = %vector.body773
  %cmp.n781 = icmp eq i64 %n.vec770, %wide.trip.count377
  br i1 %cmp.n781, label %.lr.ph357.preheader, label %.lr.ph355.preheader831

.lr.ph355.preheader831:                           ; preds = %vector.memcheck762, %.lr.ph355.preheader, %middle.block780
  %indvars.iv414.ph = phi i64 [ 0, %vector.memcheck762 ], [ 0, %.lr.ph355.preheader ], [ %n.vec770, %middle.block780 ] ; 6 uses
  %xtraiter853 = and i64 %wide.trip.count377, 1
  %lcmp.mod854.not = icmp eq i64 %xtraiter853, 0
  br i1 %lcmp.mod854.not, label %.lr.ph355.prol.loopexit, label %.lr.ph355.prol

.lr.ph355.prol:                                   ; preds = %.lr.ph355.preheader831
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv414.ph
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !8
  %i.ux = fmul float %i.be, %i.uw
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv414.ph
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !8
  %i.va = fmul float %i.ux, %i.uz
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv414.ph
  store float %i.va, ptr %i.vb, align 4, !tbaa !8
  %indvars.iv.next415.prol = or disjoint i64 %indvars.iv414.ph, 1
  br label %.lr.ph355.prol.loopexit

.lr.ph355.prol.loopexit:                          ; preds = %.lr.ph355.prol, %.lr.ph355.preheader831
  %indvars.iv414.unr = phi i64 [ %indvars.iv414.ph, %.lr.ph355.preheader831 ], [ %indvars.iv.next415.prol, %.lr.ph355.prol ]
  %i.vc = add nsw i64 %wide.trip.count377, -1
  %i.vd = icmp eq i64 %indvars.iv414.ph, %i.vc
  br i1 %i.vd, label %.lr.ph357.preheader, label %.lr.ph355

.lr.ph353:                                        ; preds = %.lr.ph353.prol.loopexit, %.lr.ph353
  %indvars.iv409 = phi i64 [ %indvars.iv.next410.1, %.lr.ph353 ], [ %indvars.iv409.unr, %.lr.ph353.prol.loopexit ] ; 7 uses
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv409
  %i.vf = load float, ptr %i.ve, align 4, !tbaa !8
  %i.vg = fmul float %6, %i.vf
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv409
  %i.vi = load float, ptr %i.vh, align 4, !tbaa !8
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv409
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !8
  %i.vl = fsub float %i.vi, %i.vk
  %i.vm = fmul float %i.vg, %i.vl
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv409
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !8
  %i.vp = fdiv float %i.vm, %i.vo
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv409
  store float %i.vp, ptr %i.vq, align 4, !tbaa !8
  %indvars.iv.next410 = add nuw nsw i64 %indvars.iv409, 1 ; 5 uses
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next410
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !8
  %i.vt = fmul float %6, %i.vs
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next410
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !8
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next410
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !8
  %i.vy = fsub float %i.vv, %i.vx
  %i.vz = fmul float %i.vt, %i.vy
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next410
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !8
  %i.wc = fdiv float %i.vz, %i.wb
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next410
  store float %i.wc, ptr %i.wd, align 4, !tbaa !8
  %indvars.iv.next410.1 = add nuw nsw i64 %indvars.iv409, 2 ; 2 uses
  %exitcond413.not.1 = icmp eq i64 %indvars.iv.next410.1, %wide.trip.count412
  br i1 %exitcond413.not.1, label %.lr.ph355.preheader, label %.lr.ph353, !llvm.loop !79

.lr.ph357.preheader:                              ; preds = %.lr.ph355.prol.loopexit, %.lr.ph355, %middle.block780
  %wide.trip.count422 = zext nneg i32 %.sroa.7246.0.copyload to i64
  %min.iters.check788 = icmp ult i32 %.sroa.7246.0.copyload, 8
  br i1 %min.iters.check788, label %.lr.ph357.preheader830, label %vector.memcheck783

vector.memcheck783:                               ; preds = %.lr.ph357.preheader
  %i.we = sub i64 %.0309642, %i.ao
  %diff.check784 = icmp ugt i64 %i.we, -32
  %i.wf = sub i64 %i.t, %i.ao
  %diff.check785 = icmp ugt i64 %i.wf, -32
  %conflict.rdx786 = or i1 %diff.check784, %diff.check785
  br i1 %conflict.rdx786, label %.lr.ph357.preheader830, label %vector.ph789

vector.ph789:                                     ; preds = %vector.memcheck783
  %n.vec791 = and i64 %wide.trip.count377, 2147483640 ; 3 uses
  br label %vector.body792

vector.body792:                                   ; preds = %vector.body792, %vector.ph789
  %index793 = phi i64 [ 0, %vector.ph789 ], [ %index.next798, %vector.body792 ] ; 4 uses
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %index793 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 16
  %wide.load794 = load <4 x float>, ptr %i.wg, align 4, !tbaa !8
  %wide.load795 = load <4 x float>, ptr %i.wh, align 4, !tbaa !8
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index793 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  %wide.load796 = load <4 x float>, ptr %i.wi, align 4, !tbaa !8
  %wide.load797 = load <4 x float>, ptr %i.wj, align 4, !tbaa !8
  %i.wk = fsub <4 x float> splat (float 1.000000e+00), %wide.load796
  %i.wl = fsub <4 x float> splat (float 1.000000e+00), %wide.load797
  %i.wm = fmul <4 x float> %wide.load794, %i.wk
  %i.wn = fmul <4 x float> %wide.load795, %i.wl
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index793 ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 16
  store <4 x float> %i.wm, ptr %i.wo, align 4, !tbaa !8
  store <4 x float> %i.wn, ptr %i.wp, align 4, !tbaa !8
  %index.next798 = add nuw i64 %index793, 8       ; 2 uses
  %i.wq = icmp eq i64 %index.next798, %n.vec791
  br i1 %i.wq, label %middle.block799, label %vector.body792, !llvm.loop !80

middle.block799:                                  ; preds = %vector.body792
  %cmp.n800 = icmp eq i64 %n.vec791, %wide.trip.count377
  br i1 %cmp.n800, label %.lr.ph359.preheader, label %.lr.ph357.preheader830

.lr.ph357.preheader830:                           ; preds = %vector.memcheck783, %.lr.ph357.preheader, %middle.block799
  %indvars.iv419.ph = phi i64 [ 0, %vector.memcheck783 ], [ 0, %.lr.ph357.preheader ], [ %n.vec791, %middle.block799 ] ; 6 uses
  %xtraiter856 = and i64 %wide.trip.count377, 1
  %lcmp.mod857.not = icmp eq i64 %xtraiter856, 0
  br i1 %lcmp.mod857.not, label %.lr.ph357.prol.loopexit, label %.lr.ph357.prol

.lr.ph357.prol:                                   ; preds = %.lr.ph357.preheader830
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %indvars.iv419.ph
  %i.ws = load float, ptr %i.wr, align 4, !tbaa !8
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv419.ph
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !8
  %i.wv = fsub float 1.000000e+00, %i.wu
  %i.ww = fmul float %i.ws, %i.wv
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv419.ph
  store float %i.ww, ptr %i.wx, align 4, !tbaa !8
  %indvars.iv.next420.prol = or disjoint i64 %indvars.iv419.ph, 1
  br label %.lr.ph357.prol.loopexit

.lr.ph357.prol.loopexit:                          ; preds = %.lr.ph357.prol, %.lr.ph357.preheader830
  %indvars.iv419.unr = phi i64 [ %indvars.iv419.ph, %.lr.ph357.preheader830 ], [ %indvars.iv.next420.prol, %.lr.ph357.prol ]
  %i.wy = add nsw i64 %wide.trip.count377, -1
  %i.wz = icmp eq i64 %indvars.iv419.ph, %i.wy
  br i1 %i.wz, label %.lr.ph359.preheader, label %.lr.ph357

.lr.ph355:                                        ; preds = %.lr.ph355.prol.loopexit, %.lr.ph355
  %indvars.iv414 = phi i64 [ %indvars.iv.next415.1, %.lr.ph355 ], [ %indvars.iv414.unr, %.lr.ph355.prol.loopexit ] ; 5 uses
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv414
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !8
  %i.xc = fmul float %i.be, %i.xb
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv414
  %i.xe = load float, ptr %i.xd, align 4, !tbaa !8
  %i.xf = fmul float %i.xc, %i.xe
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv414
  store float %i.xf, ptr %i.xg, align 4, !tbaa !8
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 1 ; 3 uses
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next415
  %i.xi = load float, ptr %i.xh, align 4, !tbaa !8
  %i.xj = fmul float %i.be, %i.xi
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next415
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !8
  %i.xm = fmul float %i.xj, %i.xl
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next415
  store float %i.xm, ptr %i.xn, align 4, !tbaa !8
  %indvars.iv.next415.1 = add nuw nsw i64 %indvars.iv414, 2 ; 2 uses
  %exitcond418.not.1 = icmp eq i64 %indvars.iv.next415.1, %wide.trip.count417
  br i1 %exitcond418.not.1, label %.lr.ph357.preheader, label %.lr.ph355, !llvm.loop !81

.lr.ph359.preheader:                              ; preds = %.lr.ph357.prol.loopexit, %.lr.ph357, %middle.block799
  %wide.trip.count427 = zext nneg i32 %.sroa.7246.0.copyload to i64
  %min.iters.check811 = icmp ult i32 %.sroa.7246.0.copyload, 12
  br i1 %min.iters.check811, label %.lr.ph359.preheader829, label %vector.memcheck802

vector.memcheck802:                               ; preds = %.lr.ph359.preheader
  %i.xo = sub i64 %i.af, %.0309642
  %diff.check803 = icmp ugt i64 %i.xo, -32
  %i.xp = sub i64 %i.ai, %.0309642
  %diff.check804 = icmp ugt i64 %i.xp, -32
  %conflict.rdx805 = or i1 %diff.check803, %diff.check804
  %i.xq = sub i64 %i.al, %.0309642
  %diff.check806 = icmp ugt i64 %i.xq, -32
  %conflict.rdx807 = or i1 %conflict.rdx805, %diff.check806
  %i.xr = sub i64 %i.ao, %.0309642
  %diff.check808 = icmp ugt i64 %i.xr, -32
  %conflict.rdx809 = or i1 %conflict.rdx807, %diff.check808
  br i1 %conflict.rdx809, label %.lr.ph359.preheader829, label %vector.ph812

vector.ph812:                                     ; preds = %vector.memcheck802
  %n.vec814 = and i64 %wide.trip.count377, 2147483640 ; 3 uses
  br label %vector.body815

vector.body815:                                   ; preds = %vector.body815, %vector.ph812
  %index816 = phi i64 [ 0, %vector.ph812 ], [ %index.next825, %vector.body815 ] ; 6 uses
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index816 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 16
  %wide.load817 = load <4 x float>, ptr %i.xs, align 4, !tbaa !8
  %wide.load818 = load <4 x float>, ptr %i.xt, align 4, !tbaa !8
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index816 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 16
  %wide.load819 = load <4 x float>, ptr %i.xu, align 4, !tbaa !8
  %wide.load820 = load <4 x float>, ptr %i.xv, align 4, !tbaa !8
  %i.xw = fadd <4 x float> %wide.load817, %wide.load819
  %i.xx = fadd <4 x float> %wide.load818, %wide.load820
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index816 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 16
  %wide.load821 = load <4 x float>, ptr %i.xy, align 4, !tbaa !8
  %wide.load822 = load <4 x float>, ptr %i.xz, align 4, !tbaa !8
  %i.ya = fadd <4 x float> %i.xw, %wide.load821
  %i.yb = fadd <4 x float> %i.xx, %wide.load822
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index816 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 16
  %wide.load823 = load <4 x float>, ptr %i.yc, align 4, !tbaa !8
  %wide.load824 = load <4 x float>, ptr %i.yd, align 4, !tbaa !8
  %i.ye = fadd <4 x float> %i.ya, %wide.load823
  %i.yf = fadd <4 x float> %i.yb, %wide.load824
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %index816 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 16
  store <4 x float> %i.ye, ptr %i.yg, align 4, !tbaa !8
  store <4 x float> %i.yf, ptr %i.yh, align 4, !tbaa !8
  %index.next825 = add nuw i64 %index816, 8       ; 2 uses
  %i.yi = icmp eq i64 %index.next825, %n.vec814
  br i1 %i.yi, label %middle.block826, label %vector.body815, !llvm.loop !82

middle.block826:                                  ; preds = %vector.body815
  %cmp.n827 = icmp eq i64 %n.vec814, %wide.trip.count377
  br i1 %cmp.n827, label %._crit_edge360, label %.lr.ph359.preheader829

.lr.ph359.preheader829:                           ; preds = %vector.memcheck802, %.lr.ph359.preheader, %middle.block826
  %indvars.iv424.ph = phi i64 [ 0, %vector.memcheck802 ], [ 0, %.lr.ph359.preheader ], [ %n.vec814, %middle.block826 ] ; 8 uses
  %xtraiter859 = and i64 %wide.trip.count377, 1
  %lcmp.mod860.not = icmp eq i64 %xtraiter859, 0
  br i1 %lcmp.mod860.not, label %.lr.ph359.prol.loopexit, label %.lr.ph359.prol

.lr.ph359.prol:                                   ; preds = %.lr.ph359.preheader829
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv424.ph
  %i.yk = load float, ptr %i.yj, align 4, !tbaa !8
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv424.ph
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !8
  %i.yn = fadd float %i.yk, %i.ym
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv424.ph
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !8
  %i.yq = fadd float %i.yn, %i.yp
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv424.ph
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !8
  %i.yt = fadd float %i.yq, %i.ys
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %indvars.iv424.ph
  store float %i.yt, ptr %i.yu, align 4, !tbaa !8
  %indvars.iv.next425.prol = or disjoint i64 %indvars.iv424.ph, 1
  br label %.lr.ph359.prol.loopexit

.lr.ph359.prol.loopexit:                          ; preds = %.lr.ph359.prol, %.lr.ph359.preheader829
  %indvars.iv424.unr = phi i64 [ %indvars.iv424.ph, %.lr.ph359.preheader829 ], [ %indvars.iv.next425.prol, %.lr.ph359.prol ]
  %i.yv = add nsw i64 %wide.trip.count377, -1
  %i.yw = icmp eq i64 %indvars.iv424.ph, %i.yv
  br i1 %i.yw, label %._crit_edge360, label %.lr.ph359

.lr.ph357:                                        ; preds = %.lr.ph357.prol.loopexit, %.lr.ph357
  %indvars.iv419 = phi i64 [ %indvars.iv.next420.1, %.lr.ph357 ], [ %indvars.iv419.unr, %.lr.ph357.prol.loopexit ] ; 5 uses
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %indvars.iv419
  %i.yy = load float, ptr %i.yx, align 4, !tbaa !8
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv419
  %i.za = load float, ptr %i.yz, align 4, !tbaa !8
  %i.zb = fsub float 1.000000e+00, %i.za
  %i.zc = fmul float %i.yy, %i.zb
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv419
  store float %i.zc, ptr %i.zd, align 4, !tbaa !8
  %indvars.iv.next420 = add nuw nsw i64 %indvars.iv419, 1 ; 3 uses
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %indvars.iv.next420
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !8
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next420
  %i.zh = load float, ptr %i.zg, align 4, !tbaa !8
  %i.zi = fsub float 1.000000e+00, %i.zh
  %i.zj = fmul float %i.zf, %i.zi
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next420
  store float %i.zj, ptr %i.zk, align 4, !tbaa !8
  %indvars.iv.next420.1 = add nuw nsw i64 %indvars.iv419, 2 ; 2 uses
  %exitcond423.not.1 = icmp eq i64 %indvars.iv.next420.1, %wide.trip.count422
  br i1 %exitcond423.not.1, label %.lr.ph359.preheader, label %.lr.ph357, !llvm.loop !83

._crit_edge360:                                   ; preds = %.lr.ph359.prol.loopexit, %.lr.ph359, %middle.block826, %bb.b, %.preheader330, %bb.d
  ret void

.lr.ph359:                                        ; preds = %.lr.ph359.prol.loopexit, %.lr.ph359
  %indvars.iv424 = phi i64 [ %indvars.iv.next425.1, %.lr.ph359 ], [ %indvars.iv424.unr, %.lr.ph359.prol.loopexit ] ; 7 uses
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv424
  %i.zm = load float, ptr %i.zl, align 4, !tbaa !8
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv424
  %i.zo = load float, ptr %i.zn, align 4, !tbaa !8
  %i.zp = fadd float %i.zm, %i.zo
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv424
  %i.zr = load float, ptr %i.zq, align 4, !tbaa !8
  %i.zs = fadd float %i.zp, %i.zr
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv424
  %i.zu = load float, ptr %i.zt, align 4, !tbaa !8
  %i.zv = fadd float %i.zs, %i.zu
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %indvars.iv424
  store float %i.zv, ptr %i.zw, align 4, !tbaa !8
  %indvars.iv.next425 = add nuw nsw i64 %indvars.iv424, 1 ; 5 uses
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next425
  %i.zy = load float, ptr %i.zx, align 4, !tbaa !8
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next425
  %i.aaa = load float, ptr %i.zz, align 4, !tbaa !8
  %i.aab = fadd float %i.zy, %i.aaa
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next425
  %i.aad = load float, ptr %i.aac, align 4, !tbaa !8
  %i.aae = fadd float %i.aab, %i.aad
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next425
  %i.aag = load float, ptr %i.aaf, align 4, !tbaa !8
  %i.aah = fadd float %i.aae, %i.aag
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %indvars.iv.next425
  store float %i.aah, ptr %i.aai, align 4, !tbaa !8
  %indvars.iv.next425.1 = add nuw nsw i64 %indvars.iv424, 2 ; 2 uses
  %exitcond428.not.1 = icmp eq i64 %indvars.iv.next425.1, %wide.trip.count427
  br i1 %exitcond428.not.1, label %._crit_edge360, label %.lr.ph359, !llvm.loop !84
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local float @interpolateTable(ptr nofree noundef readonly byval(%struct.Table) align 8 captures(none) %0, float noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load float, ptr %i.a, align 4, !tbaa !85
  %i.c = fcmp ogt float %1, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load float, ptr %i.d, align 8, !tbaa !87 ; 2 uses
  %i.f = fdiv float %1, %i.e
  %i.g = tail call float @llvm.fmuladd.f32(float %i.e, float 5.000000e-01, float %i.f)
  %i.h = fptosi float %i.g to i32
  %i.i = load ptr, ptr %0, align 8, !tbaa !88
  %i.j = shl nsw i32 %i.h, 1
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.k ; 2 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !8
  %i.n = getelementptr i8, ptr %i.l, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !8
  %i.p = tail call float @llvm.fmuladd.f32(float %i.m, float %1, float %i.o)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.p, %bb.b ], [ 1.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @transport_sweep(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.AttenuateVars, align 8      ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !89
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !93
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !94
  %i.h = sitofp i32 %i.g to float
  %i.i = fdiv float %i.e, %i.h                    ; 2 uses
  %i.j = fpext float %i.i to double
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !95
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !96
  %i.o = mul nsw i32 %i.n, %i.l
  %i.p = sitofp i32 %i.o to double
  %i.q = fdiv double %i.j, %i.p                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !97
  %i.t = mul nsw i32 %i.s, 14
  %i.u = sext i32 %i.t to i64
  %i.v = shl nsw i64 %i.u, 2
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #17 ; 7 uses
  %i.x = ptrtoaddr ptr %i.w to i64                ; 2 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !13
  %i.y = load i32, ptr %i.r, align 4, !tbaa !97
  %i.z = sext i32 %i.y to i64                     ; 18 uses
  %i.aa = getelementptr [4 x i8], ptr %i.w, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !15
  %i.ac = getelementptr [4 x i8], ptr %i.aa, i64 %i.z ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !16
  %i.ae = getelementptr [4 x i8], ptr %i.ac, i64 %i.z ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !17
  %i.ag = getelementptr [4 x i8], ptr %i.ae, i64 %i.z ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !18
  %i.ai = getelementptr [4 x i8], ptr %i.ag, i64 %i.z ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !19
  %i.ak = getelementptr [4 x i8], ptr %i.ai, i64 %i.z ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !20
  %i.am = getelementptr [4 x i8], ptr %i.ak, i64 %i.z ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.am, ptr %i.an, align 8, !tbaa !21
  %i.ao = getelementptr [4 x i8], ptr %i.am, i64 %i.z ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !22
  %i.aq = getelementptr [4 x i8], ptr %i.ao, i64 %i.z ; 15 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !23
  %i.as = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.z ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr %i.as, ptr %i.at, align 8, !tbaa !24
  %i.au = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.z ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %i.au, ptr %i.av, align 8, !tbaa !25
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.z ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 96
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !26
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.z
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 104
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !98 ; 2 uses
  %i.bc = icmp sgt i64 %i.bb, 0
  br i1 %i.bc, label %.preheader.lr.ph, label %._crit_edge223

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = fptrunc double %i.q to float            ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bm = load i32, ptr %i.bd, align 8, !tbaa !99 ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.preheader.preheader, label %._crit_edge223
end_hunk_0
