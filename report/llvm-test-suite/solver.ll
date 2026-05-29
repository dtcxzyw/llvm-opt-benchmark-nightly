inline.NumInlined: 10
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
  %i.gd = sub i64 %i.e, %i.b
  %diff.check487 = icmp ult i64 %i.gd, 16
  %i.ge = sub i64 %i.h, %i.b
  %diff.check488 = icmp ult i64 %i.ge, 16
  %conflict.rdx489 = or i1 %diff.check487, %diff.check488
  %i.gf = sub i64 %i.b, %i.gc
  %diff.check490 = icmp ult i64 %i.gf, 16
  %conflict.rdx491 = or i1 %conflict.rdx489, %diff.check490
  %i.gg = sub i64 %i.b, %i.gb
  %diff.check492 = icmp ult i64 %i.gg, 16
  %conflict.rdx493 = or i1 %conflict.rdx491, %diff.check492
  %i.gh = sub i64 %i.b, %i.ga
  %diff.check494 = icmp ult i64 %i.gh, 16
  %conflict.rdx495 = or i1 %conflict.rdx493, %diff.check494
  %i.gi = sub i64 %i.h, %i.e
  %diff.check496 = icmp ult i64 %i.gi, 16
  %conflict.rdx497 = or i1 %conflict.rdx495, %diff.check496
  %i.gj = sub i64 %i.e, %i.gc
  %diff.check498 = icmp ult i64 %i.gj, 16
  %conflict.rdx499 = or i1 %conflict.rdx497, %diff.check498
  %i.gk = sub i64 %i.e, %i.gb
  %diff.check500 = icmp ult i64 %i.gk, 16
  %conflict.rdx501 = or i1 %conflict.rdx499, %diff.check500
  %i.gl = sub i64 %i.e, %i.ga
  %diff.check502 = icmp ult i64 %i.gl, 16
  %conflict.rdx503 = or i1 %conflict.rdx501, %diff.check502
  %i.gm = sub i64 %i.h, %i.gc
  %diff.check504 = icmp ult i64 %i.gm, 16
  %conflict.rdx505 = or i1 %conflict.rdx503, %diff.check504
  %i.gn = sub i64 %i.h, %i.gb
  %diff.check506 = icmp ult i64 %i.gn, 16
  %conflict.rdx507 = or i1 %conflict.rdx505, %diff.check506
  %i.go = sub i64 %i.h, %i.ga
  %diff.check508 = icmp ult i64 %i.go, 16
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
  %wide.trip.count377 = zext i32 %.sroa.7246.0.copyload to i64 ; 27 uses
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
  %i.kc = sub i64 %i.w, %i.n
  %diff.check614 = icmp ult i64 %i.kc, 16
  %i.kd = sub i64 %i.w, %i.t
  %diff.check615 = icmp ult i64 %i.kd, 16
  %conflict.rdx616 = or i1 %diff.check614, %diff.check615
  %i.ke = sub i64 %i.w, %i.k
  %diff.check617 = icmp ult i64 %i.ke, 16
  %conflict.rdx618 = or i1 %conflict.rdx616, %diff.check617
  %i.kf = sub i64 %i.w, %i.q
  %diff.check619 = icmp ult i64 %i.kf, 16
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
  %wide.trip.count392 = zext i32 %.sroa.7246.0.copyload to i64 ; 13 uses
  %min.iters.check656 = icmp ult i32 %.sroa.7246.0.copyload, 4
  br i1 %min.iters.check656, label %.lr.ph345.preheader836, label %vector.memcheck636

vector.memcheck636:                               ; preds = %.lr.ph345.preheader
  %i.lv = sub i64 %i.z, %i.b
  %diff.check637 = icmp ult i64 %i.lv, 16
  %i.lw = sub i64 %i.z, %i.n
  %diff.check638 = icmp ult i64 %i.lw, 16
  %conflict.rdx639 = or i1 %diff.check637, %diff.check638
  %i.lx = sub i64 %i.z, %i.k
  %diff.check640 = icmp ult i64 %i.lx, 16
  %conflict.rdx641 = or i1 %conflict.rdx639, %diff.check640
  %i.ly = sub i64 %i.z, %.0309642
  %diff.check643 = icmp ult i64 %i.ly, 16
  %conflict.rdx644 = or i1 %conflict.rdx641, %diff.check643
  %i.lz = sub i64 %i.z, %i.t
  %diff.check645 = icmp ult i64 %i.lz, 16
  %conflict.rdx646 = or i1 %conflict.rdx644, %diff.check645
  %i.ma = sub i64 %i.z, %i.q
  %diff.check647 = icmp ult i64 %i.ma, 16
  %conflict.rdx648 = or i1 %conflict.rdx646, %diff.check647
  %i.mb = sub i64 %i.z, %i.e
  %diff.check649 = icmp ult i64 %i.mb, 16
  %conflict.rdx650 = or i1 %conflict.rdx648, %diff.check649
  %i.mc = sub i64 %i.z, %i.w
  %diff.check651 = icmp ult i64 %i.mc, 16
  %conflict.rdx652 = or i1 %conflict.rdx650, %diff.check651
  %i.md = sub i64 %i.z, %i.h
  %diff.check653 = icmp ult i64 %i.md, 16
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
  %i.oi = sub i64 %i.ac, %i.z
  %diff.check680 = icmp ult i64 %i.oi, 32
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
  %xtraiter842 = and i64 %wide.trip.count392, 3   ; 2 uses
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
  %i.ou = sub nsw i64 %indvars.iv394.ph, %wide.trip.count392
  %i.ov = icmp ugt i64 %i.ou, -4
  br i1 %i.ov, label %.lr.ph349.preheader, label %.lr.ph347

.lr.ph345:                                        ; preds = %.lr.ph345.preheader836, %.lr.ph345
  %indvars.iv389 = phi i64 [ %indvars.iv.next390, %.lr.ph345 ], [ %indvars.iv389.ph, %.lr.ph345.preheader836 ] ; 11 uses
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv389
  %i.ox = load float, ptr %i.ow, align 4, !tbaa !8 ; 2 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv389
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !8 ; 4 uses
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv389
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !8
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %indvars.iv389
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !8
  %i.pe = fneg float %i.ox
  %i.pf = tail call float @llvm.fmuladd.f32(float %i.pb, float %i.pd, float %i.pe)
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv389
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !8 ; 2 uses
  %i.pi = fmul float %i.pf, %i.ph
  %i.pj = tail call float @llvm.fmuladd.f32(float %i.ox, float %i.oz, float %i.pi)
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv389
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !8 ; 3 uses
  %i.pm = fdiv float %i.pj, %i.pl
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv389
  %i.po = load float, ptr %i.pn, align 4, !tbaa !8
  %i.pp = fmul float %6, %i.po
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv389
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !8
  %i.ps = tail call float @llvm.fmuladd.f32(float %i.pp, float %i.pr, float %i.pm)
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv389
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !8
  %i.pv = fmul float %i.be, %i.pu
  %i.pw = fadd float %i.oz, -3.000000e+00
  %i.px = tail call float @llvm.fmuladd.f32(float %i.oz, float %i.pw, float 6.000000e+00)
  %i.py = fmul float %i.ph, -6.000000e+00
  %i.pz = tail call float @llvm.fmuladd.f32(float %i.oz, float %i.px, float %i.py)
  %i.qa = fmul float %i.pz, %i.pv
  %i.qb = fmul float %i.pl, 3.000000e+00
  %i.qc = fmul float %i.pl, %i.qb
  %i.qd = fdiv float %i.qa, %i.qc
  %i.qe = fadd float %i.ps, %i.qd
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv389
  store float %i.qe, ptr %i.qf, align 4, !tbaa !8
  %indvars.iv.next390 = add nuw nsw i64 %indvars.iv389, 1 ; 2 uses
  %exitcond393.not = icmp eq i64 %indvars.iv.next390, %wide.trip.count392
  br i1 %exitcond393.not, label %.lr.ph347.preheader, label %.lr.ph345, !llvm.loop !65

.lr.ph349.preheader:                              ; preds = %.lr.ph347.prol.loopexit, %.lr.ph347, %middle.block693
  %wide.trip.count402 = zext nneg i32 %.sroa.7246.0.copyload to i64
  %min.iters.check703 = icmp ult i32 %.sroa.7246.0.copyload, 8
  br i1 %min.iters.check703, label %.lr.ph349.preheader834, label %vector.memcheck696

vector.memcheck696:                               ; preds = %.lr.ph349.preheader
  %i.qg = shl nuw nsw i64 %wide.trip.count377, 2  ; 2 uses
  %scevgep697 = getelementptr i8, ptr %i.bi, i64 %i.qg
  %scevgep698 = getelementptr i8, ptr %i.ab, i64 %i.qg
  %bound0699 = icmp ult ptr %i.bi, %scevgep698
  %bound1700 = icmp ult ptr %i.ab, %scevgep697
  %found.conflict701 = and i1 %bound0699, %bound1700
  br i1 %found.conflict701, label %.lr.ph349.preheader834, label %vector.ph704

vector.ph704:                                     ; preds = %vector.memcheck696
  %n.vec706 = and i64 %wide.trip.count377, 2147483640 ; 3 uses
  br label %vector.body707

vector.body707:                                   ; preds = %vector.body707, %vector.ph704
  %index708 = phi i64 [ 0, %vector.ph704 ], [ %index.next713, %vector.body707 ] ; 3 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index708 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %wide.load709 = load <4 x float>, ptr %i.qh, align 4, !tbaa !8, !alias.scope !66
  %wide.load710 = load <4 x float>, ptr %i.qi, align 4, !tbaa !8, !alias.scope !66
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %index708 ; 3 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 16 ; 2 uses
  %wide.load711 = load <4 x float>, ptr %i.qj, align 4, !tbaa !8, !alias.scope !69, !noalias !66
  %wide.load712 = load <4 x float>, ptr %i.qk, align 4, !tbaa !8, !alias.scope !69, !noalias !66
  %i.ql = fadd <4 x float> %wide.load709, %wide.load711
  %i.qm = fadd <4 x float> %wide.load710, %wide.load712
  store <4 x float> %i.ql, ptr %i.qj, align 4, !tbaa !8, !alias.scope !69, !noalias !66
  store <4 x float> %i.qm, ptr %i.qk, align 4, !tbaa !8, !alias.scope !69, !noalias !66
  %index.next713 = add nuw i64 %index708, 8       ; 2 uses
  %i.qn = icmp eq i64 %index.next713, %n.vec706
  br i1 %i.qn, label %middle.block714, label %vector.body707, !llvm.loop !71

middle.block714:                                  ; preds = %vector.body707
  %cmp.n715 = icmp eq i64 %n.vec706, %wide.trip.count377
  br i1 %cmp.n715, label %.lr.ph351.preheader, label %.lr.ph349.preheader834

.lr.ph349.preheader834:                           ; preds = %vector.memcheck696, %.lr.ph349.preheader, %middle.block714
  %indvars.iv399.ph = phi i64 [ 0, %vector.memcheck696 ], [ 0, %.lr.ph349.preheader ], [ %n.vec706, %middle.block714 ] ; 3 uses
  %xtraiter844 = and i64 %wide.trip.count392, 3   ; 2 uses
  %lcmp.mod845.not = icmp eq i64 %xtraiter844, 0
  br i1 %lcmp.mod845.not, label %.lr.ph349.prol.loopexit, label %.lr.ph349.prol

.lr.ph349.prol:                                   ; preds = %.lr.ph349.preheader834, %.lr.ph349.prol
  %indvars.iv399.prol = phi i64 [ %indvars.iv.next400.prol, %.lr.ph349.prol ], [ %indvars.iv399.ph, %.lr.ph349.preheader834 ] ; 3 uses
  %prol.iter846 = phi i64 [ %prol.iter846.next, %.lr.ph349.prol ], [ 0, %.lr.ph349.preheader834 ]
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv399.prol
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !8
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv399.prol ; 2 uses
  %i.qr = load float, ptr %i.qq, align 4, !tbaa !8
  %i.qs = fadd float %i.qp, %i.qr
  store float %i.qs, ptr %i.qq, align 4, !tbaa !8
  %indvars.iv.next400.prol = add nuw nsw i64 %indvars.iv399.prol, 1 ; 2 uses
  %prol.iter846.next = add i64 %prol.iter846, 1   ; 2 uses
  %prol.iter846.cmp.not = icmp eq i64 %prol.iter846.next, %xtraiter844
  br i1 %prol.iter846.cmp.not, label %.lr.ph349.prol.loopexit, label %.lr.ph349.prol, !llvm.loop !72

.lr.ph349.prol.loopexit:                          ; preds = %.lr.ph349.prol, %.lr.ph349.preheader834
  %indvars.iv399.unr = phi i64 [ %indvars.iv399.ph, %.lr.ph349.preheader834 ], [ %indvars.iv.next400.prol, %.lr.ph349.prol ]
  %i.qt = sub nsw i64 %indvars.iv399.ph, %wide.trip.count392
  %i.qu = icmp ugt i64 %i.qt, -4
  br i1 %i.qu, label %.lr.ph351.preheader, label %.lr.ph349

.lr.ph347:                                        ; preds = %.lr.ph347.prol.loopexit, %.lr.ph347
  %indvars.iv394 = phi i64 [ %indvars.iv.next395.3, %.lr.ph347 ], [ %indvars.iv394.unr, %.lr.ph347.prol.loopexit ] ; 6 uses
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv394
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !8
  %i.qx = fmul float %i.bd, %i.qw
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv394
  store float %i.qx, ptr %i.qy, align 4, !tbaa !8
  %indvars.iv.next395 = add nuw nsw i64 %indvars.iv394, 1 ; 2 uses
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next395
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !8
  %i.rb = fmul float %i.bd, %i.ra
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next395
  store float %i.rb, ptr %i.rc, align 4, !tbaa !8
  %indvars.iv.next395.1 = add nuw nsw i64 %indvars.iv394, 2 ; 2 uses
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next395.1
  %i.re = load float, ptr %i.rd, align 4, !tbaa !8
  %i.rf = fmul float %i.bd, %i.re
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next395.1
  store float %i.rf, ptr %i.rg, align 4, !tbaa !8
  %indvars.iv.next395.2 = add nuw nsw i64 %indvars.iv394, 3 ; 2 uses
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next395.2
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !8
  %i.rj = fmul float %i.bd, %i.ri
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next395.2
  store float %i.rj, ptr %i.rk, align 4, !tbaa !8
  %indvars.iv.next395.3 = add nuw nsw i64 %indvars.iv394, 4 ; 2 uses
  %exitcond398.not.3 = icmp eq i64 %indvars.iv.next395.3, %wide.trip.count397
  br i1 %exitcond398.not.3, label %.lr.ph349.preheader, label %.lr.ph347, !llvm.loop !73

.lr.ph351.preheader:                              ; preds = %.lr.ph349.prol.loopexit, %.lr.ph349, %middle.block714
  %wide.trip.count407 = zext nneg i32 %.sroa.7246.0.copyload to i64
  %min.iters.check724 = icmp ult i32 %.sroa.7246.0.copyload, 4
  br i1 %min.iters.check724, label %.lr.ph351.preheader833, label %vector.memcheck717

vector.memcheck717:                               ; preds = %.lr.ph351.preheader
  %i.rl = sub i64 %i.af, %i.b
  %diff.check718 = icmp ult i64 %i.rl, 16
  %i.rm = sub i64 %i.af, %i.t
  %diff.check719 = icmp ult i64 %i.rm, 16
  %conflict.rdx720 = or i1 %diff.check718, %diff.check719
  %i.rn = sub i64 %i.af, %i.k
  %diff.check721 = icmp ult i64 %i.rn, 16
  %conflict.rdx722 = or i1 %conflict.rdx720, %diff.check721
  br i1 %conflict.rdx722, label %.lr.ph351.preheader833, label %vector.ph725

vector.ph725:                                     ; preds = %vector.memcheck717
  %n.vec727 = and i64 %wide.trip.count377, 2147483644 ; 3 uses
  br label %vector.body728

vector.body728:                                   ; preds = %vector.body728, %vector.ph725
  %index729 = phi i64 [ 0, %vector.ph725 ], [ %index.next733, %vector.body728 ] ; 5 uses
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index729
  %wide.load730 = load <4 x float>, ptr %i.ro, align 4, !tbaa !8
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index729
  %wide.load731 = load <4 x float>, ptr %i.rp, align 4, !tbaa !8
  %i.rq = fmul <4 x float> %wide.load730, %wide.load731
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index729
  %wide.load732 = load <4 x float>, ptr %i.rr, align 4, !tbaa !8
  %i.rs = fdiv <4 x float> %i.rq, %wide.load732
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index729
  store <4 x float> %i.rs, ptr %i.rt, align 4, !tbaa !8
  %index.next733 = add nuw i64 %index729, 4       ; 2 uses
  %i.ru = icmp eq i64 %index.next733, %n.vec727
  br i1 %i.ru, label %middle.block734, label %vector.body728, !llvm.loop !74

middle.block734:                                  ; preds = %vector.body728
  %cmp.n735 = icmp eq i64 %n.vec727, %wide.trip.count377
  br i1 %cmp.n735, label %.lr.ph353.preheader, label %.lr.ph351.preheader833

.lr.ph351.preheader833:                           ; preds = %vector.memcheck717, %.lr.ph351.preheader, %middle.block734
  %indvars.iv404.ph = phi i64 [ 0, %vector.memcheck717 ], [ 0, %.lr.ph351.preheader ], [ %n.vec727, %middle.block734 ] ; 7 uses
  %xtraiter847 = and i64 %wide.trip.count392, 1
  %lcmp.mod848.not = icmp eq i64 %xtraiter847, 0
  br i1 %lcmp.mod848.not, label %.lr.ph351.prol.loopexit, label %.lr.ph351.prol

.lr.ph351.prol:                                   ; preds = %.lr.ph351.preheader833
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv404.ph
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !8
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv404.ph
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !8
  %i.rz = fmul float %i.rw, %i.ry
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv404.ph
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !8
  %i.sc = fdiv float %i.rz, %i.sb
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv404.ph
  store float %i.sc, ptr %i.sd, align 4, !tbaa !8
  %indvars.iv.next405.prol = or disjoint i64 %indvars.iv404.ph, 1
  br label %.lr.ph351.prol.loopexit

.lr.ph351.prol.loopexit:                          ; preds = %.lr.ph351.prol, %.lr.ph351.preheader833
  %indvars.iv404.unr = phi i64 [ %indvars.iv404.ph, %.lr.ph351.preheader833 ], [ %indvars.iv.next405.prol, %.lr.ph351.prol ]
  %i.se = add nsw i64 %wide.trip.count392, -1
  %i.sf = icmp eq i64 %indvars.iv404.ph, %i.se
  br i1 %i.sf, label %.lr.ph353.preheader, label %.lr.ph351

.lr.ph349:                                        ; preds = %.lr.ph349.prol.loopexit, %.lr.ph349
  %indvars.iv399 = phi i64 [ %indvars.iv.next400.3, %.lr.ph349 ], [ %indvars.iv399.unr, %.lr.ph349.prol.loopexit ] ; 6 uses
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv399
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !8
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv399 ; 2 uses
  %i.sj = load float, ptr %i.si, align 4, !tbaa !8
  %i.sk = fadd float %i.sh, %i.sj
  store float %i.sk, ptr %i.si, align 4, !tbaa !8
  %indvars.iv.next400 = add nuw nsw i64 %indvars.iv399, 1 ; 2 uses
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next400
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !8
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.next400 ; 2 uses
  %i.so = load float, ptr %i.sn, align 4, !tbaa !8
  %i.sp = fadd float %i.sm, %i.so
  store float %i.sp, ptr %i.sn, align 4, !tbaa !8
  %indvars.iv.next400.1 = add nuw nsw i64 %indvars.iv399, 2 ; 2 uses
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next400.1
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !8
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.next400.1 ; 2 uses
  %i.st = load float, ptr %i.ss, align 4, !tbaa !8
  %i.su = fadd float %i.sr, %i.st
  store float %i.su, ptr %i.ss, align 4, !tbaa !8
  %indvars.iv.next400.2 = add nuw nsw i64 %indvars.iv399, 3 ; 2 uses
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next400.2
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !8
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.next400.2 ; 2 uses
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !8
  %i.sz = fadd float %i.sw, %i.sy
  store float %i.sz, ptr %i.sx, align 4, !tbaa !8
  %indvars.iv.next400.3 = add nuw nsw i64 %indvars.iv399, 4 ; 2 uses
  %exitcond403.not.3 = icmp eq i64 %indvars.iv.next400.3, %wide.trip.count402
  br i1 %exitcond403.not.3, label %.lr.ph351.preheader, label %.lr.ph349, !llvm.loop !75

.lr.ph353.preheader:                              ; preds = %.lr.ph351.prol.loopexit, %.lr.ph351, %middle.block734
  %wide.trip.count412 = zext nneg i32 %.sroa.7246.0.copyload to i64
  %min.iters.check746 = icmp ult i32 %.sroa.7246.0.copyload, 4
  br i1 %min.iters.check746, label %.lr.ph353.preheader832, label %vector.memcheck737

vector.memcheck737:                               ; preds = %.lr.ph353.preheader
  %i.ta = sub i64 %i.ai, %i.e
  %diff.check738 = icmp ult i64 %i.ta, 16
  %i.tb = sub i64 %i.ai, %i.n
  %diff.check739 = icmp ult i64 %i.tb, 16
  %conflict.rdx740 = or i1 %diff.check738, %diff.check739
  %i.tc = sub i64 %i.ai, %i.t
  %diff.check741 = icmp ult i64 %i.tc, 16
  %conflict.rdx742 = or i1 %conflict.rdx740, %diff.check741
  %i.td = sub i64 %i.ai, %i.q
  %diff.check743 = icmp ult i64 %i.td, 16
  %conflict.rdx744 = or i1 %conflict.rdx742, %diff.check743
  br i1 %conflict.rdx744, label %.lr.ph353.preheader832, label %vector.ph747

vector.ph747:                                     ; preds = %vector.memcheck737
  %n.vec749 = and i64 %wide.trip.count377, 2147483644 ; 3 uses
  %broadcast.splatinsert750 = insertelement <4 x float> poison, float %6, i64 0
  %broadcast.splat751 = shufflevector <4 x float> %broadcast.splatinsert750, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body752

vector.body752:                                   ; preds = %vector.body752, %vector.ph747
  %index753 = phi i64 [ 0, %vector.ph747 ], [ %index.next758, %vector.body752 ] ; 6 uses
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index753
  %wide.load754 = load <4 x float>, ptr %i.te, align 4, !tbaa !8
  %i.tf = fmul <4 x float> %broadcast.splat751, %wide.load754
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index753
  %wide.load755 = load <4 x float>, ptr %i.tg, align 4, !tbaa !8
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index753
  %wide.load756 = load <4 x float>, ptr %i.th, align 4, !tbaa !8
  %i.ti = fsub <4 x float> %wide.load755, %wide.load756
  %i.tj = fmul <4 x float> %i.tf, %i.ti
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index753
  %wide.load757 = load <4 x float>, ptr %i.tk, align 4, !tbaa !8
  %i.tl = fdiv <4 x float> %i.tj, %wide.load757
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index753
  store <4 x float> %i.tl, ptr %i.tm, align 4, !tbaa !8
  %index.next758 = add nuw i64 %index753, 4       ; 2 uses
  %i.tn = icmp eq i64 %index.next758, %n.vec749
  br i1 %i.tn, label %middle.block759, label %vector.body752, !llvm.loop !76

middle.block759:                                  ; preds = %vector.body752
  %cmp.n760 = icmp eq i64 %n.vec749, %wide.trip.count377
  br i1 %cmp.n760, label %.lr.ph355.preheader, label %.lr.ph353.preheader832

.lr.ph353.preheader832:                           ; preds = %vector.memcheck737, %.lr.ph353.preheader, %middle.block759
  %indvars.iv409.ph = phi i64 [ 0, %vector.memcheck737 ], [ 0, %.lr.ph353.preheader ], [ %n.vec749, %middle.block759 ] ; 8 uses
  %xtraiter850 = and i64 %wide.trip.count392, 1
  %lcmp.mod851.not = icmp eq i64 %xtraiter850, 0
  br i1 %lcmp.mod851.not, label %.lr.ph353.prol.loopexit, label %.lr.ph353.prol

.lr.ph353.prol:                                   ; preds = %.lr.ph353.preheader832
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv409.ph
  %i.tp = load float, ptr %i.to, align 4, !tbaa !8
  %i.tq = fmul float %6, %i.tp
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv409.ph
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !8
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv409.ph
  %i.tu = load float, ptr %i.tt, align 4, !tbaa !8
  %i.tv = fsub float %i.ts, %i.tu
  %i.tw = fmul float %i.tq, %i.tv
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv409.ph
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !8
  %i.tz = fdiv float %i.tw, %i.ty
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv409.ph
  store float %i.tz, ptr %i.ua, align 4, !tbaa !8
  %indvars.iv.next410.prol = or disjoint i64 %indvars.iv409.ph, 1
  br label %.lr.ph353.prol.loopexit

.lr.ph353.prol.loopexit:                          ; preds = %.lr.ph353.prol, %.lr.ph353.preheader832
  %indvars.iv409.unr = phi i64 [ %indvars.iv409.ph, %.lr.ph353.preheader832 ], [ %indvars.iv.next410.prol, %.lr.ph353.prol ]
  %i.ub = add nsw i64 %wide.trip.count392, -1
  %i.uc = icmp eq i64 %indvars.iv409.ph, %i.ub
  br i1 %i.uc, label %.lr.ph355.preheader, label %.lr.ph353

.lr.ph351:                                        ; preds = %.lr.ph351.prol.loopexit, %.lr.ph351
  %indvars.iv404 = phi i64 [ %indvars.iv.next405.1, %.lr.ph351 ], [ %indvars.iv404.unr, %.lr.ph351.prol.loopexit ] ; 6 uses
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv404
  %i.ue = load float, ptr %i.ud, align 4, !tbaa !8
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv404
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !8
  %i.uh = fmul float %i.ue, %i.ug
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv404
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !8
  %i.uk = fdiv float %i.uh, %i.uj
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv404
  store float %i.uk, ptr %i.ul, align 4, !tbaa !8
  %indvars.iv.next405 = add nuw nsw i64 %indvars.iv404, 1 ; 4 uses
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next405
  %i.un = load float, ptr %i.um, align 4, !tbaa !8
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next405
  %i.up = load float, ptr %i.uo, align 4, !tbaa !8
  %i.uq = fmul float %i.un, %i.up
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next405
  %i.us = load float, ptr %i.ur, align 4, !tbaa !8
  %i.ut = fdiv float %i.uq, %i.us
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next405
  store float %i.ut, ptr %i.uu, align 4, !tbaa !8
  %indvars.iv.next405.1 = add nuw nsw i64 %indvars.iv404, 2 ; 2 uses
  %exitcond408.not.1 = icmp eq i64 %indvars.iv.next405.1, %wide.trip.count407
  br i1 %exitcond408.not.1, label %.lr.ph353.preheader, label %.lr.ph351, !llvm.loop !77

.lr.ph355.preheader:                              ; preds = %.lr.ph353.prol.loopexit, %.lr.ph353, %middle.block759
  %wide.trip.count417 = zext nneg i32 %.sroa.7246.0.copyload to i64
  %min.iters.check767 = icmp ult i32 %.sroa.7246.0.copyload, 8
  br i1 %min.iters.check767, label %.lr.ph355.preheader831, label %vector.memcheck762

vector.memcheck762:                               ; preds = %.lr.ph355.preheader
  %i.uv = sub i64 %i.al, %i.h
  %diff.check763 = icmp ult i64 %i.uv, 32
  %i.uw = sub i64 %i.al, %i.w
  %diff.check764 = icmp ult i64 %i.uw, 32
  %conflict.rdx765 = or i1 %diff.check763, %diff.check764
  br i1 %conflict.rdx765, label %.lr.ph355.preheader831, label %vector.ph768

vector.ph768:                                     ; preds = %vector.memcheck762
  %n.vec770 = and i64 %wide.trip.count377, 2147483640 ; 3 uses
  %broadcast.splatinsert771 = insertelement <4 x float> poison, float %i.be, i64 0
  %broadcast.splat772 = shufflevector <4 x float> %broadcast.splatinsert771, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body773

vector.body773:                                   ; preds = %vector.body773, %vector.ph768
  %index774 = phi i64 [ 0, %vector.ph768 ], [ %index.next779, %vector.body773 ] ; 4 uses
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index774 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 16
  %wide.load775 = load <4 x float>, ptr %i.ux, align 4, !tbaa !8
  %wide.load776 = load <4 x float>, ptr %i.uy, align 4, !tbaa !8
  %i.uz = fmul <4 x float> %broadcast.splat772, %wide.load775
  %i.va = fmul <4 x float> %broadcast.splat772, %wide.load776
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index774 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 16
  %wide.load777 = load <4 x float>, ptr %i.vb, align 4, !tbaa !8
  %wide.load778 = load <4 x float>, ptr %i.vc, align 4, !tbaa !8
  %i.vd = fmul <4 x float> %i.uz, %wide.load777
  %i.ve = fmul <4 x float> %i.va, %wide.load778
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index774 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 16
  store <4 x float> %i.vd, ptr %i.vf, align 4, !tbaa !8
  store <4 x float> %i.ve, ptr %i.vg, align 4, !tbaa !8
  %index.next779 = add nuw i64 %index774, 8       ; 2 uses
  %i.vh = icmp eq i64 %index.next779, %n.vec770
  br i1 %i.vh, label %middle.block780, label %vector.body773, !llvm.loop !78

middle.block780:                                  ; preds = %vector.body773
  %cmp.n781 = icmp eq i64 %n.vec770, %wide.trip.count377
  br i1 %cmp.n781, label %.lr.ph357.preheader, label %.lr.ph355.preheader831

.lr.ph355.preheader831:                           ; preds = %vector.memcheck762, %.lr.ph355.preheader, %middle.block780
  %indvars.iv414.ph = phi i64 [ 0, %vector.memcheck762 ], [ 0, %.lr.ph355.preheader ], [ %n.vec770, %middle.block780 ] ; 6 uses
  %xtraiter853 = and i64 %wide.trip.count392, 1
  %lcmp.mod854.not = icmp eq i64 %xtraiter853, 0
  br i1 %lcmp.mod854.not, label %.lr.ph355.prol.loopexit, label %.lr.ph355.prol

.lr.ph355.prol:                                   ; preds = %.lr.ph355.preheader831
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv414.ph
  %i.vj = load float, ptr %i.vi, align 4, !tbaa !8
  %i.vk = fmul float %i.be, %i.vj
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv414.ph
  %i.vm = load float, ptr %i.vl, align 4, !tbaa !8
  %i.vn = fmul float %i.vk, %i.vm
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv414.ph
  store float %i.vn, ptr %i.vo, align 4, !tbaa !8
  %indvars.iv.next415.prol = or disjoint i64 %indvars.iv414.ph, 1
  br label %.lr.ph355.prol.loopexit

.lr.ph355.prol.loopexit:                          ; preds = %.lr.ph355.prol, %.lr.ph355.preheader831
  %indvars.iv414.unr = phi i64 [ %indvars.iv414.ph, %.lr.ph355.preheader831 ], [ %indvars.iv.next415.prol, %.lr.ph355.prol ]
  %i.vp = add nsw i64 %wide.trip.count392, -1
  %i.vq = icmp eq i64 %indvars.iv414.ph, %i.vp
  br i1 %i.vq, label %.lr.ph357.preheader, label %.lr.ph355

.lr.ph353:                                        ; preds = %.lr.ph353.prol.loopexit, %.lr.ph353
  %indvars.iv409 = phi i64 [ %indvars.iv.next410.1, %.lr.ph353 ], [ %indvars.iv409.unr, %.lr.ph353.prol.loopexit ] ; 7 uses
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv409
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !8
  %i.vt = fmul float %6, %i.vs
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv409
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !8
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv409
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !8
  %i.vy = fsub float %i.vv, %i.vx
  %i.vz = fmul float %i.vt, %i.vy
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv409
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !8
  %i.wc = fdiv float %i.vz, %i.wb
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv409
  store float %i.wc, ptr %i.wd, align 4, !tbaa !8
  %indvars.iv.next410 = add nuw nsw i64 %indvars.iv409, 1 ; 5 uses
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next410
  %i.wf = load float, ptr %i.we, align 4, !tbaa !8
  %i.wg = fmul float %6, %i.wf
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next410
  %i.wi = load float, ptr %i.wh, align 4, !tbaa !8
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next410
  %i.wk = load float, ptr %i.wj, align 4, !tbaa !8
  %i.wl = fsub float %i.wi, %i.wk
  %i.wm = fmul float %i.wg, %i.wl
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next410
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !8
  %i.wp = fdiv float %i.wm, %i.wo
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next410
  store float %i.wp, ptr %i.wq, align 4, !tbaa !8
  %indvars.iv.next410.1 = add nuw nsw i64 %indvars.iv409, 2 ; 2 uses
  %exitcond413.not.1 = icmp eq i64 %indvars.iv.next410.1, %wide.trip.count412
  br i1 %exitcond413.not.1, label %.lr.ph355.preheader, label %.lr.ph353, !llvm.loop !79

.lr.ph357.preheader:                              ; preds = %.lr.ph355.prol.loopexit, %.lr.ph355, %middle.block780
  %wide.trip.count422 = zext nneg i32 %.sroa.7246.0.copyload to i64
  %min.iters.check788 = icmp ult i32 %.sroa.7246.0.copyload, 8
  br i1 %min.iters.check788, label %.lr.ph357.preheader830, label %vector.memcheck783

vector.memcheck783:                               ; preds = %.lr.ph357.preheader
  %i.wr = sub i64 %i.ao, %.0309642
  %diff.check784 = icmp ult i64 %i.wr, 32
  %i.ws = sub i64 %i.ao, %i.t
  %diff.check785 = icmp ult i64 %i.ws, 32
  %conflict.rdx786 = or i1 %diff.check784, %diff.check785
  br i1 %conflict.rdx786, label %.lr.ph357.preheader830, label %vector.ph789

vector.ph789:                                     ; preds = %vector.memcheck783
  %n.vec791 = and i64 %wide.trip.count377, 2147483640 ; 3 uses
  br label %vector.body792

vector.body792:                                   ; preds = %vector.body792, %vector.ph789
  %index793 = phi i64 [ 0, %vector.ph789 ], [ %index.next798, %vector.body792 ] ; 4 uses
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %index793 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 16
  %wide.load794 = load <4 x float>, ptr %i.wt, align 4, !tbaa !8
  %wide.load795 = load <4 x float>, ptr %i.wu, align 4, !tbaa !8
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index793 ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 16
  %wide.load796 = load <4 x float>, ptr %i.wv, align 4, !tbaa !8
  %wide.load797 = load <4 x float>, ptr %i.ww, align 4, !tbaa !8
  %i.wx = fsub <4 x float> splat (float 1.000000e+00), %wide.load796
  %i.wy = fsub <4 x float> splat (float 1.000000e+00), %wide.load797
  %i.wz = fmul <4 x float> %wide.load794, %i.wx
  %i.xa = fmul <4 x float> %wide.load795, %i.wy
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index793 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 16
  store <4 x float> %i.wz, ptr %i.xb, align 4, !tbaa !8
  store <4 x float> %i.xa, ptr %i.xc, align 4, !tbaa !8
  %index.next798 = add nuw i64 %index793, 8       ; 2 uses
  %i.xd = icmp eq i64 %index.next798, %n.vec791
  br i1 %i.xd, label %middle.block799, label %vector.body792, !llvm.loop !80

middle.block799:                                  ; preds = %vector.body792
  %cmp.n800 = icmp eq i64 %n.vec791, %wide.trip.count377
  br i1 %cmp.n800, label %.lr.ph359.preheader, label %.lr.ph357.preheader830

.lr.ph357.preheader830:                           ; preds = %vector.memcheck783, %.lr.ph357.preheader, %middle.block799
  %indvars.iv419.ph = phi i64 [ 0, %vector.memcheck783 ], [ 0, %.lr.ph357.preheader ], [ %n.vec791, %middle.block799 ] ; 6 uses
  %xtraiter856 = and i64 %wide.trip.count392, 1
  %lcmp.mod857.not = icmp eq i64 %xtraiter856, 0
  br i1 %lcmp.mod857.not, label %.lr.ph357.prol.loopexit, label %.lr.ph357.prol

.lr.ph357.prol:                                   ; preds = %.lr.ph357.preheader830
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %indvars.iv419.ph
  %i.xf = load float, ptr %i.xe, align 4, !tbaa !8
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv419.ph
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !8
  %i.xi = fsub float 1.000000e+00, %i.xh
  %i.xj = fmul float %i.xf, %i.xi
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv419.ph
  store float %i.xj, ptr %i.xk, align 4, !tbaa !8
  %indvars.iv.next420.prol = or disjoint i64 %indvars.iv419.ph, 1
  br label %.lr.ph357.prol.loopexit

.lr.ph357.prol.loopexit:                          ; preds = %.lr.ph357.prol, %.lr.ph357.preheader830
  %indvars.iv419.unr = phi i64 [ %indvars.iv419.ph, %.lr.ph357.preheader830 ], [ %indvars.iv.next420.prol, %.lr.ph357.prol ]
  %i.xl = add nsw i64 %wide.trip.count392, -1
  %i.xm = icmp eq i64 %indvars.iv419.ph, %i.xl
  br i1 %i.xm, label %.lr.ph359.preheader, label %.lr.ph357

.lr.ph355:                                        ; preds = %.lr.ph355.prol.loopexit, %.lr.ph355
  %indvars.iv414 = phi i64 [ %indvars.iv.next415.1, %.lr.ph355 ], [ %indvars.iv414.unr, %.lr.ph355.prol.loopexit ] ; 5 uses
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv414
  %i.xo = load float, ptr %i.xn, align 4, !tbaa !8
  %i.xp = fmul float %i.be, %i.xo
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv414
  %i.xr = load float, ptr %i.xq, align 4, !tbaa !8
  %i.xs = fmul float %i.xp, %i.xr
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv414
  store float %i.xs, ptr %i.xt, align 4, !tbaa !8
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 1 ; 3 uses
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next415
  %i.xv = load float, ptr %i.xu, align 4, !tbaa !8
  %i.xw = fmul float %i.be, %i.xv
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next415
  %i.xy = load float, ptr %i.xx, align 4, !tbaa !8
  %i.xz = fmul float %i.xw, %i.xy
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next415
  store float %i.xz, ptr %i.ya, align 4, !tbaa !8
  %indvars.iv.next415.1 = add nuw nsw i64 %indvars.iv414, 2 ; 2 uses
  %exitcond418.not.1 = icmp eq i64 %indvars.iv.next415.1, %wide.trip.count417
  br i1 %exitcond418.not.1, label %.lr.ph357.preheader, label %.lr.ph355, !llvm.loop !81

.lr.ph359.preheader:                              ; preds = %.lr.ph357.prol.loopexit, %.lr.ph357, %middle.block799
  %wide.trip.count427 = zext i32 %.sroa.7246.0.copyload to i64 ; 3 uses
  %min.iters.check811 = icmp ult i32 %.sroa.7246.0.copyload, 12
  br i1 %min.iters.check811, label %.lr.ph359.preheader829, label %vector.memcheck802

vector.memcheck802:                               ; preds = %.lr.ph359.preheader
  %i.yb = sub i64 %.0309642, %i.af
  %diff.check803 = icmp ult i64 %i.yb, 32
  %i.yc = sub i64 %.0309642, %i.ai
  %diff.check804 = icmp ult i64 %i.yc, 32
  %conflict.rdx805 = or i1 %diff.check803, %diff.check804
  %i.yd = sub i64 %.0309642, %i.al
  %diff.check806 = icmp ult i64 %i.yd, 32
  %conflict.rdx807 = or i1 %conflict.rdx805, %diff.check806
  %i.ye = sub i64 %.0309642, %i.ao
  %diff.check808 = icmp ult i64 %i.ye, 32
  %conflict.rdx809 = or i1 %conflict.rdx807, %diff.check808
  br i1 %conflict.rdx809, label %.lr.ph359.preheader829, label %vector.ph812

vector.ph812:                                     ; preds = %vector.memcheck802
  %n.vec814 = and i64 %wide.trip.count377, 2147483640 ; 3 uses
  br label %vector.body815

vector.body815:                                   ; preds = %vector.body815, %vector.ph812
  %index816 = phi i64 [ 0, %vector.ph812 ], [ %index.next825, %vector.body815 ] ; 6 uses
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index816 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 16
  %wide.load817 = load <4 x float>, ptr %i.yf, align 4, !tbaa !8
  %wide.load818 = load <4 x float>, ptr %i.yg, align 4, !tbaa !8
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index816 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 16
  %wide.load819 = load <4 x float>, ptr %i.yh, align 4, !tbaa !8
  %wide.load820 = load <4 x float>, ptr %i.yi, align 4, !tbaa !8
  %i.yj = fadd <4 x float> %wide.load817, %wide.load819
  %i.yk = fadd <4 x float> %wide.load818, %wide.load820
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index816 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 16
  %wide.load821 = load <4 x float>, ptr %i.yl, align 4, !tbaa !8
  %wide.load822 = load <4 x float>, ptr %i.ym, align 4, !tbaa !8
  %i.yn = fadd <4 x float> %i.yj, %wide.load821
  %i.yo = fadd <4 x float> %i.yk, %wide.load822
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index816 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 16
  %wide.load823 = load <4 x float>, ptr %i.yp, align 4, !tbaa !8
  %wide.load824 = load <4 x float>, ptr %i.yq, align 4, !tbaa !8
  %i.yr = fadd <4 x float> %i.yn, %wide.load823
  %i.ys = fadd <4 x float> %i.yo, %wide.load824
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %index816 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 16
  store <4 x float> %i.yr, ptr %i.yt, align 4, !tbaa !8
  store <4 x float> %i.ys, ptr %i.yu, align 4, !tbaa !8
  %index.next825 = add nuw i64 %index816, 8       ; 2 uses
  %i.yv = icmp eq i64 %index.next825, %n.vec814
  br i1 %i.yv, label %middle.block826, label %vector.body815, !llvm.loop !82

middle.block826:                                  ; preds = %vector.body815
  %cmp.n827 = icmp eq i64 %n.vec814, %wide.trip.count377
  br i1 %cmp.n827, label %._crit_edge360, label %.lr.ph359.preheader829

.lr.ph359.preheader829:                           ; preds = %vector.memcheck802, %.lr.ph359.preheader, %middle.block826
  %indvars.iv424.ph = phi i64 [ 0, %vector.memcheck802 ], [ 0, %.lr.ph359.preheader ], [ %n.vec814, %middle.block826 ] ; 8 uses
  %xtraiter859 = and i64 %wide.trip.count427, 1
  %lcmp.mod860.not = icmp eq i64 %xtraiter859, 0
  br i1 %lcmp.mod860.not, label %.lr.ph359.prol.loopexit, label %.lr.ph359.prol

.lr.ph359.prol:                                   ; preds = %.lr.ph359.preheader829
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv424.ph
  %i.yx = load float, ptr %i.yw, align 4, !tbaa !8
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv424.ph
  %i.yz = load float, ptr %i.yy, align 4, !tbaa !8
  %i.za = fadd float %i.yx, %i.yz
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv424.ph
  %i.zc = load float, ptr %i.zb, align 4, !tbaa !8
  %i.zd = fadd float %i.za, %i.zc
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv424.ph
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !8
  %i.zg = fadd float %i.zd, %i.zf
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %indvars.iv424.ph
  store float %i.zg, ptr %i.zh, align 4, !tbaa !8
  %indvars.iv.next425.prol = or disjoint i64 %indvars.iv424.ph, 1
  br label %.lr.ph359.prol.loopexit

.lr.ph359.prol.loopexit:                          ; preds = %.lr.ph359.prol, %.lr.ph359.preheader829
  %indvars.iv424.unr = phi i64 [ %indvars.iv424.ph, %.lr.ph359.preheader829 ], [ %indvars.iv.next425.prol, %.lr.ph359.prol ]
  %i.zi = add nsw i64 %wide.trip.count427, -1
  %i.zj = icmp eq i64 %indvars.iv424.ph, %i.zi
  br i1 %i.zj, label %._crit_edge360, label %.lr.ph359

.lr.ph357:                                        ; preds = %.lr.ph357.prol.loopexit, %.lr.ph357
  %indvars.iv419 = phi i64 [ %indvars.iv.next420.1, %.lr.ph357 ], [ %indvars.iv419.unr, %.lr.ph357.prol.loopexit ] ; 5 uses
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %indvars.iv419
  %i.zl = load float, ptr %i.zk, align 4, !tbaa !8
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv419
  %i.zn = load float, ptr %i.zm, align 4, !tbaa !8
  %i.zo = fsub float 1.000000e+00, %i.zn
  %i.zp = fmul float %i.zl, %i.zo
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv419
  store float %i.zp, ptr %i.zq, align 4, !tbaa !8
  %indvars.iv.next420 = add nuw nsw i64 %indvars.iv419, 1 ; 3 uses
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %indvars.iv.next420
  %i.zs = load float, ptr %i.zr, align 4, !tbaa !8
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next420
  %i.zu = load float, ptr %i.zt, align 4, !tbaa !8
  %i.zv = fsub float 1.000000e+00, %i.zu
  %i.zw = fmul float %i.zs, %i.zv
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next420
  store float %i.zw, ptr %i.zx, align 4, !tbaa !8
  %indvars.iv.next420.1 = add nuw nsw i64 %indvars.iv419, 2 ; 2 uses
  %exitcond423.not.1 = icmp eq i64 %indvars.iv.next420.1, %wide.trip.count422
  br i1 %exitcond423.not.1, label %.lr.ph359.preheader, label %.lr.ph357, !llvm.loop !83

._crit_edge360:                                   ; preds = %.lr.ph359.prol.loopexit, %.lr.ph359, %middle.block826, %bb.b, %.preheader330, %bb.d
  ret void

.lr.ph359:                                        ; preds = %.lr.ph359.prol.loopexit, %.lr.ph359
  %indvars.iv424 = phi i64 [ %indvars.iv.next425.1, %.lr.ph359 ], [ %indvars.iv424.unr, %.lr.ph359.prol.loopexit ] ; 7 uses
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv424
  %i.zz = load float, ptr %i.zy, align 4, !tbaa !8
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv424
  %i.aab = load float, ptr %i.aaa, align 4, !tbaa !8
  %i.aac = fadd float %i.zz, %i.aab
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv424
  %i.aae = load float, ptr %i.aad, align 4, !tbaa !8
  %i.aaf = fadd float %i.aac, %i.aae
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv424
  %i.aah = load float, ptr %i.aag, align 4, !tbaa !8
  %i.aai = fadd float %i.aaf, %i.aah
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %indvars.iv424
  store float %i.aai, ptr %i.aaj, align 4, !tbaa !8
  %indvars.iv.next425 = add nuw nsw i64 %indvars.iv424, 1 ; 5 uses
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next425
  %i.aal = load float, ptr %i.aak, align 4, !tbaa !8
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next425
  %i.aan = load float, ptr %i.aam, align 4, !tbaa !8
  %i.aao = fadd float %i.aal, %i.aan
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next425
  %i.aaq = load float, ptr %i.aap, align 4, !tbaa !8
  %i.aar = fadd float %i.aao, %i.aaq
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next425
  %i.aat = load float, ptr %i.aas, align 4, !tbaa !8
  %i.aau = fadd float %i.aar, %i.aat
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %indvars.iv.next425
  store float %i.aau, ptr %i.aav, align 4, !tbaa !8
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
define dso_local float @interpolateTable(ptr noundef readonly byval(%struct.Table) align 8 captures(none) %0, float noundef %1) local_unnamed_addr #3 {
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
define dso_local void @transport_sweep(ptr noundef readonly captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #4 {
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
  %i.y = load i32, ptr %i.r, align 4, !tbaa !97   ; 2 uses
  %i.z = sext i32 %i.y to i64                     ; 17 uses
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
end_hunk_0
begin_hunk_1_@transport_sweep:bb.a
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %index ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16 ; 2 uses
  %wide.load267 = load <4 x float>, ptr %i.ju, align 4, !tbaa !8, !alias.scope !141, !noalias !138
  %wide.load268 = load <4 x float>, ptr %i.jv, align 4, !tbaa !8, !alias.scope !141, !noalias !138
  %i.jw = fadd <4 x float> %wide.load, %wide.load267
  %i.jx = fadd <4 x float> %wide.load266, %wide.load268
  store <4 x float> %i.jw, ptr %i.ju, align 4, !tbaa !8, !alias.scope !141, !noalias !138
  store <4 x float> %i.jx, ptr %i.jv, align 4, !tbaa !8, !alias.scope !141, !noalias !138
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jy = icmp eq i64 %index.next, %n.vec
  br i1 %i.jy, label %middle.block, label %vector.body, !llvm.loop !143

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %attenuate_FSR_fluxes.exit, label %.lr.ph81.i.preheader340

.lr.ph81.i.preheader340:                          ; preds = %vector.memcheck, %.lr.ph81.i.preheader, %middle.block
  %indvars.iv94.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph81.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter348 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod349.not = icmp eq i64 %xtraiter348, 0
  br i1 %lcmp.mod349.not, label %.lr.ph81.i.prol.loopexit, label %.lr.ph81.i.prol

.lr.ph81.i.prol:                                  ; preds = %.lr.ph81.i.preheader340, %.lr.ph81.i.prol
  %indvars.iv94.i.prol = phi i64 [ %indvars.iv.next95.i.prol, %.lr.ph81.i.prol ], [ %indvars.iv94.i.ph, %.lr.ph81.i.preheader340 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph81.i.prol ], [ 0, %.lr.ph81.i.preheader340 ]
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv94.i.prol
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !8
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv94.i.prol ; 2 uses
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !8
  %i.kd = fadd float %i.ka, %i.kc
  store float %i.kd, ptr %i.kb, align 4, !tbaa !8
  %indvars.iv.next95.i.prol = add nuw nsw i64 %indvars.iv94.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter348
  br i1 %prol.iter.cmp.not, label %.lr.ph81.i.prol.loopexit, label %.lr.ph81.i.prol, !llvm.loop !144

.lr.ph81.i.prol.loopexit:                         ; preds = %.lr.ph81.i.prol, %.lr.ph81.i.preheader340
  %indvars.iv94.i.unr = phi i64 [ %indvars.iv94.i.ph, %.lr.ph81.i.preheader340 ], [ %indvars.iv.next95.i.prol, %.lr.ph81.i.prol ]
  %i.ke = sub nsw i64 %indvars.iv94.i.ph, %wide.trip.count.i
  %i.kf = icmp ugt i64 %i.ke, -4
  br i1 %i.kf, label %attenuate_FSR_fluxes.exit, label %.lr.ph81.i

.lr.ph81.i:                                       ; preds = %.lr.ph81.i.prol.loopexit, %.lr.ph81.i
  %indvars.iv94.i = phi i64 [ %indvars.iv.next95.i.3, %.lr.ph81.i ], [ %indvars.iv94.i.unr, %.lr.ph81.i.prol.loopexit ] ; 6 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv94.i
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !8
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv94.i ; 2 uses
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !8
  %i.kk = fadd float %i.kh, %i.kj
  store float %i.kk, ptr %i.ki, align 4, !tbaa !8
  %indvars.iv.next95.i = add nuw nsw i64 %indvars.iv94.i, 1 ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next95.i
  %i.km = load float, ptr %i.kl, align 4, !tbaa !8
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv.next95.i ; 2 uses
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !8
  %i.kp = fadd float %i.km, %i.ko
  store float %i.kp, ptr %i.kn, align 4, !tbaa !8
  %indvars.iv.next95.i.1 = add nuw nsw i64 %indvars.iv94.i, 2 ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next95.i.1
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !8
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv.next95.i.1 ; 2 uses
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !8
  %i.ku = fadd float %i.kr, %i.kt
  store float %i.ku, ptr %i.ks, align 4, !tbaa !8
  %indvars.iv.next95.i.2 = add nuw nsw i64 %indvars.iv94.i, 3 ; 2 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next95.i.2
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !8
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv.next95.i.2 ; 2 uses
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !8
  %i.kz = fadd float %i.kw, %i.ky
  store float %i.kz, ptr %i.kx, align 4, !tbaa !8
  %indvars.iv.next95.i.3 = add nuw nsw i64 %indvars.iv94.i, 4 ; 2 uses
  %exitcond98.not.i.3 = icmp eq i64 %indvars.iv.next95.i.3, %wide.trip.count.i
  br i1 %exitcond98.not.i.3, label %attenuate_FSR_fluxes.exit, label %.lr.ph81.i, !llvm.loop !145

bb.m:                                             ; preds = %bb.i
  %i.la = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1) ; 0 uses
  %puts183 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  tail call void @exit(i32 noundef 1) #18
  unreachable

attenuate_FSR_fluxes.exit:                        ; preds = %.lr.ph81.i.prol.loopexit, %.lr.ph81.i, %middle.block, %bb.k, %bb.j
  %i.lb = phi ptr [ %.pre, %bb.j ], [ %i.fv, %bb.k ], [ %i.fv, %middle.block ], [ %i.fv, %.lr.ph81.i ], [ %i.fv, %.lr.ph81.i.prol.loopexit ] ; 2 uses
  %.5 = add nsw i64 %.4199, 1                     ; 3 uses
  %i.lc = getelementptr inbounds nuw [32 x i8], ptr %i.lb, i64 %.0161220
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !103 ; 2 uses
  %i.lf = add nsw i64 %i.le, -1
  %i.lg = icmp eq i64 %i.lf, %indvars.iv236
  %or.cond = or i1 %.0153, %i.lg
  br i1 %or.cond, label %bb.n, label %bb.q

bb.n:                                             ; preds = %attenuate_FSR_fluxes.exit
  %i.lh = load float, ptr %i.bl, align 8, !tbaa !146 ; 2 uses
  br i1 %spec.select, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.li = fmul float %i.lh, %i.er
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.lj = fmul float %i.lh, %i.ep
  br label %bb.q

bb.q:                                             ; preds = %attenuate_FSR_fluxes.exit, %bb.o, %bb.p
  %.sink = phi float [ %i.li, %bb.o ], [ %i.lj, %bb.p ], [ %.1152, %attenuate_FSR_fluxes.exit ] ; 2 uses
  store float %.sink, ptr %i.en, align 4, !tbaa !28
  br i1 %.2160, label %bb.r, label %bb.f

bb.r:                                             ; preds = %bb.q
  %i.lk = sext i32 %.4171 to i64
  %i.ll = icmp slt i64 %indvars.iv.next234, %i.lk
  br i1 %i.ll, label %.lr.ph, label %._crit_edge
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @get_pos_interval(float noundef %0, float noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = fdiv float %0, %1
  %i.b = fptosi float %i.a to i32
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @get_neg_interval(float noundef %0, float noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = fdiv float %0, %1
  %i.b = tail call float @llvm.ceil.f32(float %i.a)
  %i.c = fptosi float %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

declare i32 @glibc_compat_rand() local_unnamed_addr #9

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @attenuate_FSR_fluxes(ptr noundef readonly captures(none) %0, i1 noundef zeroext %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, ptr noundef readonly captures(none) %4, float noundef %5, float noundef %6, float noundef %7, ptr noundef readonly captures(none) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 10 uses
  %i.g = ptrtoaddr ptr %i.f to i64                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18   ; 6 uses
  %i.j = ptrtoaddr ptr %i.i to i64                ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !10
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 52
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.l = load float, ptr %i.k, align 4, !tbaa !93
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !96   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !94
  %i.q = mul nsw i32 %i.p, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !95
  %i.t = mul nsw i32 %i.q, %i.s
  %i.u = sitofp i32 %i.t to float
  %i.v = fdiv float %i.l, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !28
  %i.y = fdiv float %i.x, %i.v
  %i.z = fptosi float %i.y to i32
  %i.aa = srem i32 %i.z, %i.n
  %i.ab = load float, ptr %0, align 8, !tbaa !31
  %i.ac = fmul float %7, %i.ab
  %i.ad = fmul float %6, %i.ac                    ; 2 uses
  %i.ae = load ptr, ptr %2, align 8, !tbaa !32
  %i.af = sext i32 %i.aa to i64                   ; 2 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !10 ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !97 ; 8 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge82

.lr.ph:                                           ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !45 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.aj to i64   ; 13 uses
  %min.iters.check = icmp ult i32 %i.aj, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.an = ptrtoaddr ptr %i.am to i64              ; 2 uses
  %i.ao = sub i64 %i.j, %i.g
  %diff.check = icmp ult i64 %i.ao, 32
  %i.ap = sub i64 %i.g, %i.an
  %diff.check103 = icmp ult i64 %i.ap, 32
  %conflict.rdx = or i1 %diff.check, %diff.check103
  %i.aq = sub i64 %i.j, %i.an
  %diff.check104 = icmp ult i64 %i.aq, 32
  %conflict.rdx105 = or i1 %conflict.rdx, %diff.check104
  br i1 %conflict.rdx105, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %5, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %wide.load = load <4 x float>, ptr %i.ar, align 4, !tbaa !8 ; 2 uses
  %wide.load106 = load <4 x float>, ptr %i.as, align 4, !tbaa !8 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <4 x float> %wide.load, ptr %i.at, align 4, !tbaa !8
  store <4 x float> %wide.load106, ptr %i.au, align 4, !tbaa !8
  %i.av = fmul <4 x float> %broadcast.splat, %wide.load
  %i.aw = fmul <4 x float> %broadcast.splat, %wide.load106
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <4 x float> %i.av, ptr %i.ax, align 4, !tbaa !8
  store <4 x float> %i.aw, ptr %i.ay, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph76.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.ph
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !8 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.ph
  store float %i.bb, ptr %i.bc, align 4, !tbaa !8
  %i.bd = fmul float %5, %i.bb
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.ph
  store float %i.bd, ptr %i.be, align 4, !tbaa !8
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bf = add nsw i64 %wide.trip.count, -1
  %i.bg = icmp eq i64 %indvars.iv.ph, %i.bf
  br i1 %i.bg, label %.lr.ph76.preheader, label %scalar.ph

.lr.ph76.preheader:                               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %wide.trip.count87 = zext nneg i32 %i.aj to i64
  br label %.lr.ph76

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !8 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  store float %i.bi, ptr %i.bj, align 4, !tbaa !8
  %i.bk = fmul float %5, %i.bi
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store float %i.bk, ptr %i.bl, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !8 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next
  store float %i.bn, ptr %i.bo, align 4, !tbaa !8
  %i.bp = fmul float %5, %i.bn
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  store float %i.bp, ptr %i.bq, align 4, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.lr.ph76.preheader, label %scalar.ph, !llvm.loop !148

._crit_edge:                                      ; preds = %interpolateTable.exit
  %.072.in.v = select i1 %1, i64 24, i64 32
  %.072.in = getelementptr inbounds nuw i8, ptr %0, i64 %.072.in.v
  %.072 = load ptr, ptr %.072.in, align 8, !tbaa !10 ; 7 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !36
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.af
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !10 ; 5 uses
  %wide.trip.count92 = zext nneg i32 %i.aj to i64
  %min.iters.check137 = icmp ult i32 %i.aj, 8
  br i1 %min.iters.check137, label %scalar.ph136.preheader, label %vector.memcheck107

vector.memcheck107:                               ; preds = %._crit_edge
  %i.bv = shl nuw nsw i64 %wide.trip.count, 2     ; 5 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.bv
  %scevgep108 = getelementptr i8, ptr %.072, i64 %i.bv ; 4 uses
  %scevgep109 = getelementptr i8, ptr %i.bu, i64 %i.bv ; 2 uses
  %scevgep110 = getelementptr i8, ptr %i.f, i64 %i.bv ; 2 uses
  %scevgep111 = getelementptr i8, ptr %i.d, i64 %i.bv ; 2 uses
  %i.bw = insertelement <4 x ptr> poison, ptr %i.b, i64 0
  %i.bx = shufflevector <4 x ptr> %i.bw, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.by = insertelement <4 x ptr> poison, ptr %scevgep108, i64 0
  %i.bz = insertelement <4 x ptr> %i.by, ptr %scevgep109, i64 1
  %i.ca = insertelement <4 x ptr> %i.bz, ptr %scevgep110, i64 2
  %i.cb = insertelement <4 x ptr> %i.ca, ptr %scevgep111, i64 3
  %i.cc = icmp ult <4 x ptr> %i.bx, %i.cb
  %i.cd = insertelement <4 x ptr> poison, ptr %.072, i64 0
  %i.ce = insertelement <4 x ptr> %i.cd, ptr %i.bu, i64 1
  %i.cf = insertelement <4 x ptr> %i.ce, ptr %i.f, i64 2
  %i.cg = insertelement <4 x ptr> %i.cf, ptr %i.d, i64 3
  %i.ch = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.ci = shufflevector <4 x ptr> %i.ch, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cj = icmp ult <4 x ptr> %i.cg, %i.ci
  %i.ck = and <4 x i1> %i.cc, %i.cj
  %bound0124 = icmp ult ptr %.072, %scevgep109
  %bound1125 = icmp ult ptr %i.bu, %scevgep108
  %found.conflict126 = and i1 %bound0124, %bound1125
  %bound0128 = icmp ult ptr %.072, %scevgep110
  %bound1129 = icmp ult ptr %i.f, %scevgep108
  %found.conflict130 = and i1 %bound0128, %bound1129
  %bound0132 = icmp ult ptr %.072, %scevgep111
  %bound1133 = icmp ult ptr %i.d, %scevgep108
  %found.conflict134 = and i1 %bound0132, %bound1133
  %i.cl = bitcast <4 x i1> %i.ck to i4
  %i.cm = icmp ne i4 %i.cl, 0
  %op.rdx = or i1 %i.cm, %found.conflict126
  %op.rdx175 = or i1 %found.conflict130, %found.conflict134
  %op.rdx176 = or i1 %op.rdx, %op.rdx175
  br i1 %op.rdx176, label %scalar.ph136.preheader, label %vector.ph138

vector.ph138:                                     ; preds = %vector.memcheck107
  %n.vec140 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert141 = insertelement <4 x float> poison, float %i.ad, i64 0
  %broadcast.splat142 = shufflevector <4 x float> %broadcast.splatinsert141, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph138
  %index144 = phi i64 [ 0, %vector.ph138 ], [ %index.next150, %vector.body143 ] ; 6 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %index144
  %wide.load145 = load <4 x float>, ptr %i.cn, align 4, !tbaa !8, !alias.scope !149
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index144
  %wide.load146 = load <4 x float>, ptr %i.co, align 4, !tbaa !8, !alias.scope !152
  %i.cp = fdiv <4 x float> %wide.load145, %wide.load146
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.072, i64 %index144 ; 3 uses
  %wide.load147 = load <4 x float>, ptr %i.cq, align 4, !tbaa !8, !alias.scope !154, !noalias !156
  %i.cr = fsub <4 x float> %wide.load147, %i.cp
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index144
  %wide.load148 = load <4 x float>, ptr %i.cs, align 4, !tbaa !8, !alias.scope !158
  %i.ct = fmul <4 x float> %i.cr, %wide.load148   ; 2 uses
  %i.cu = fmul <4 x float> %broadcast.splat142, %i.ct
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index144
  store <4 x float> %i.cu, ptr %i.cv, align 4, !tbaa !8, !alias.scope !159, !noalias !161
  %wide.load149 = load <4 x float>, ptr %i.cq, align 4, !tbaa !8, !alias.scope !154, !noalias !156
  %i.cw = fsub <4 x float> %wide.load149, %i.ct
  store <4 x float> %i.cw, ptr %i.cq, align 4, !tbaa !8, !alias.scope !154, !noalias !156
  %index.next150 = add nuw i64 %index144, 4       ; 2 uses
  %i.cx = icmp eq i64 %index.next150, %n.vec140
  br i1 %i.cx, label %middle.block151, label %vector.body143, !llvm.loop !162

middle.block151:                                  ; preds = %vector.body143
  %cmp.n152 = icmp eq i64 %n.vec140, %wide.trip.count
  br i1 %cmp.n152, label %.lr.ph81.preheader, label %scalar.ph136.preheader

scalar.ph136.preheader:                           ; preds = %vector.memcheck107, %._crit_edge, %middle.block151
  %indvars.iv89.ph = phi i64 [ 0, %vector.memcheck107 ], [ 0, %._crit_edge ], [ %n.vec140, %middle.block151 ]
  br label %scalar.ph136

.lr.ph76:                                         ; preds = %.lr.ph76.preheader, %interpolateTable.exit
  %indvars.iv84 = phi i64 [ 0, %.lr.ph76.preheader ], [ %indvars.iv.next85, %interpolateTable.exit ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv84
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !8 ; 3 uses
  %i.da = fcmp ogt float %i.cz, %.sroa.5.0.copyload
  br i1 %i.da, label %interpolateTable.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph76
  %i.db = fdiv float %i.cz, %.sroa.4.0.copyload
  %i.dc = tail call float @llvm.fmuladd.f32(float %.sroa.4.0.copyload, float 5.000000e-01, float %i.db)
  %i.dd = fptosi float %i.dc to i32
  %i.de = shl nsw i32 %i.dd, 1
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %.sroa.3.0.copyload, i64 %i.df ; 2 uses
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !8
  %i.di = getelementptr i8, ptr %i.dg, i64 4
  %i.dj = load float, ptr %i.di, align 4, !tbaa !8
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.cz, float %i.dj)
  br label %interpolateTable.exit

interpolateTable.exit:                            ; preds = %.lr.ph76, %bb.b
  %.0.i = phi float [ %i.dk, %bb.b ], [ 1.000000e+00, %.lr.ph76 ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv84
  store float %.0.i, ptr %i.dl, align 4, !tbaa !8
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next85, %wide.trip.count87
  br i1 %exitcond88.not, label %._crit_edge, label %.lr.ph76

.lr.ph81.preheader:                               ; preds = %scalar.ph136, %middle.block151
  %wide.trip.count97 = zext nneg i32 %i.aj to i64
  %min.iters.check161 = icmp ult i32 %i.aj, 8
  br i1 %min.iters.check161, label %.lr.ph81.preheader177, label %vector.memcheck154

vector.memcheck154:                               ; preds = %.lr.ph81.preheader
  %i.dm = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %scevgep155 = getelementptr i8, ptr %i.ah, i64 %i.dm
  %scevgep156 = getelementptr i8, ptr %i.b, i64 %i.dm
  %bound0157 = icmp ult ptr %i.ah, %scevgep156
  %bound1158 = icmp ult ptr %i.b, %scevgep155
  %found.conflict159 = and i1 %bound0157, %bound1158
  br i1 %found.conflict159, label %.lr.ph81.preheader177, label %vector.ph162

vector.ph162:                                     ; preds = %vector.memcheck154
  %n.vec164 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph162
  %index166 = phi i64 [ 0, %vector.ph162 ], [ %index.next171, %vector.body165 ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index166 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %wide.load167 = load <4 x float>, ptr %i.dn, align 4, !tbaa !8, !alias.scope !163
  %wide.load168 = load <4 x float>, ptr %i.do, align 4, !tbaa !8, !alias.scope !163
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index166 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %wide.load169 = load <4 x float>, ptr %i.dp, align 4, !tbaa !8, !alias.scope !166, !noalias !163
  %wide.load170 = load <4 x float>, ptr %i.dq, align 4, !tbaa !8, !alias.scope !166, !noalias !163
  %i.dr = fadd <4 x float> %wide.load167, %wide.load169
  %i.ds = fadd <4 x float> %wide.load168, %wide.load170
  store <4 x float> %i.dr, ptr %i.dp, align 4, !tbaa !8, !alias.scope !166, !noalias !163
  store <4 x float> %i.ds, ptr %i.dq, align 4, !tbaa !8, !alias.scope !166, !noalias !163
  %index.next171 = add nuw i64 %index166, 8       ; 2 uses
  %i.dt = icmp eq i64 %index.next171, %n.vec164
  br i1 %i.dt, label %middle.block172, label %vector.body165, !llvm.loop !168

middle.block172:                                  ; preds = %vector.body165
  %cmp.n173 = icmp eq i64 %n.vec164, %wide.trip.count
  br i1 %cmp.n173, label %._crit_edge82, label %.lr.ph81.preheader177

.lr.ph81.preheader177:                            ; preds = %vector.memcheck154, %.lr.ph81.preheader, %middle.block172
  %indvars.iv94.ph = phi i64 [ 0, %vector.memcheck154 ], [ 0, %.lr.ph81.preheader ], [ %n.vec164, %middle.block172 ] ; 3 uses
  %xtraiter178 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod179.not = icmp eq i64 %xtraiter178, 0
  br i1 %lcmp.mod179.not, label %.lr.ph81.prol.loopexit, label %.lr.ph81.prol

.lr.ph81.prol:                                    ; preds = %.lr.ph81.preheader177, %.lr.ph81.prol
  %indvars.iv94.prol = phi i64 [ %indvars.iv.next95.prol, %.lr.ph81.prol ], [ %indvars.iv94.ph, %.lr.ph81.preheader177 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph81.prol ], [ 0, %.lr.ph81.preheader177 ]
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv94.prol
  %i.dv = load float, ptr %i.du, align 4, !tbaa !8
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv94.prol ; 2 uses
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !8
  %i.dy = fadd float %i.dv, %i.dx
  store float %i.dy, ptr %i.dw, align 4, !tbaa !8
  %indvars.iv.next95.prol = add nuw nsw i64 %indvars.iv94.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter178
  br i1 %prol.iter.cmp.not, label %.lr.ph81.prol.loopexit, label %.lr.ph81.prol, !llvm.loop !169

.lr.ph81.prol.loopexit:                           ; preds = %.lr.ph81.prol, %.lr.ph81.preheader177
  %indvars.iv94.unr = phi i64 [ %indvars.iv94.ph, %.lr.ph81.preheader177 ], [ %indvars.iv.next95.prol, %.lr.ph81.prol ]
  %i.dz = sub nsw i64 %indvars.iv94.ph, %wide.trip.count
  %i.ea = icmp ugt i64 %i.dz, -4
  br i1 %i.ea, label %._crit_edge82, label %.lr.ph81

scalar.ph136:                                     ; preds = %scalar.ph136.preheader, %scalar.ph136
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %scalar.ph136 ], [ %indvars.iv89.ph, %scalar.ph136.preheader ] ; 6 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv89
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !8
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv89
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !8
  %i.ef = fdiv float %i.ec, %i.ee
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.072, i64 %indvars.iv89 ; 3 uses
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !8
  %i.ei = fsub float %i.eh, %i.ef
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv89
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !8
  %i.el = fmul float %i.ei, %i.ek                 ; 2 uses
  %i.em = fmul float %i.ad, %i.el
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv89
  store float %i.em, ptr %i.en, align 4, !tbaa !8
  %i.eo = load float, ptr %i.eg, align 4, !tbaa !8
  %i.ep = fsub float %i.eo, %i.el
  store float %i.ep, ptr %i.eg, align 4, !tbaa !8
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next90, %wide.trip.count92
  br i1 %exitcond93.not, label %.lr.ph81.preheader, label %scalar.ph136, !llvm.loop !170

._crit_edge82:                                    ; preds = %.lr.ph81.prol.loopexit, %.lr.ph81, %middle.block172, %bb.a
  ret void

.lr.ph81:                                         ; preds = %.lr.ph81.prol.loopexit, %.lr.ph81
  %indvars.iv94 = phi i64 [ %indvars.iv.next95.3, %.lr.ph81 ], [ %indvars.iv94.unr, %.lr.ph81.prol.loopexit ] ; 6 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv94
  %i.er = load float, ptr %i.eq, align 4, !tbaa !8
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv94 ; 2 uses
  %i.et = load float, ptr %i.es, align 4, !tbaa !8
  %i.eu = fadd float %i.er, %i.et
  store float %i.eu, ptr %i.es, align 4, !tbaa !8
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next95
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !8
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next95 ; 2 uses
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !8
  %i.ez = fadd float %i.ew, %i.ey
  store float %i.ez, ptr %i.ex, align 4, !tbaa !8
  %indvars.iv.next95.1 = add nuw nsw i64 %indvars.iv94, 2 ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next95.1
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !8
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next95.1 ; 2 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !8
  %i.fe = fadd float %i.fb, %i.fd
  store float %i.fe, ptr %i.fc, align 4, !tbaa !8
  %indvars.iv.next95.2 = add nuw nsw i64 %indvars.iv94, 3 ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next95.2
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !8
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next95.2 ; 2 uses
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !8
  %i.fj = fadd float %i.fg, %i.fi
  store float %i.fj, ptr %i.fh, align 4, !tbaa !8
  %indvars.iv.next95.3 = add nuw nsw i64 %indvars.iv94, 4 ; 2 uses
  %exitcond98.not.3 = icmp eq i64 %indvars.iv.next95.3, %wide.trip.count97
  br i1 %exitcond98.not.3, label %._crit_edge82, label %.lr.ph81, !llvm.loop !171
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local void @two_way_transport_sweep(ptr noundef readonly captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.AttenuateVars, align 8      ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !89
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 3 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !93
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !94
  %i.h = sitofp i32 %i.g to float
  %i.i = fdiv float %i.e, %i.h
  %i.j = fpext float %i.i to double               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !95
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !96
  %i.o = mul nsw i32 %i.n, %i.l                   ; 2 uses
  %i.p = sitofp i32 %i.o to double
  %i.q = fdiv double %i.j, %i.p                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !97
  %i.t = mul nsw i32 %i.s, 14
  %i.u = sext i32 %i.t to i64
  %i.v = shl nsw i64 %i.u, 2
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #17 ; 11 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !13
  %i.x = load i32, ptr %i.r, align 4, !tbaa !97   ; 3 uses
  %i.y = sext i32 %i.x to i64                     ; 21 uses
  %i.z = getelementptr [4 x i8], ptr %i.w, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !15
  %i.ab = getelementptr [4 x i8], ptr %i.z, i64 %i.y ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !16
  %i.ad = getelementptr [4 x i8], ptr %i.ab, i64 %i.y ; 18 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !17
  %i.af = getelementptr [4 x i8], ptr %i.ad, i64 %i.y ; 12 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !18
  %i.ah = getelementptr [4 x i8], ptr %i.af, i64 %i.y ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !19
  %i.aj = getelementptr [4 x i8], ptr %i.ah, i64 %i.y ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !20
  %i.al = getelementptr [4 x i8], ptr %i.aj, i64 %i.y ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.al, ptr %i.am, align 8, !tbaa !21
  %i.an = getelementptr [4 x i8], ptr %i.al, i64 %i.y ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !22
  %i.ap = getelementptr [4 x i8], ptr %i.an, i64 %i.y ; 28 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !23
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.y ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !24
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.y ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %i.at, ptr %i.au, align 8, !tbaa !25
  %i.av = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.y ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 96
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !26
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.y
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 104
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !27
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !98 ; 2 uses
  %i.bb = icmp sgt i64 %i.ba, 0
  br i1 %i.bb, label %.lr.ph406, label %._crit_edge407

.lr.ph406:                                        ; preds = %bb.c
  %i.bc = ptrtoaddr ptr %i.w to i64               ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 10 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bm = mul nsw i64 %i.y, 36                    ; 2 uses
  %scevgep486 = getelementptr i8, ptr %i.w, i64 %i.bm
  %scevgep503 = getelementptr i8, ptr %i.w, i64 %i.bm
  %i.bn = mul nsw i64 %i.y, 12                    ; 2 uses
  %scevgep507 = getelementptr i8, ptr %i.w, i64 %i.bn
  %i.bo = mul nsw i64 %i.y, 24
  %scevgep509 = getelementptr i8, ptr %i.w, i64 %i.bo
  %i.bp = add i64 %i.bn, %i.bc
  %i.bq = shl nsw i64 %i.y, 4
  %i.br = add i64 %i.bq, %i.bc
  %i.bs = mul nsw i64 %i.y, 36                    ; 2 uses
  %scevgep577 = getelementptr i8, ptr %i.w, i64 %i.bs
  %scevgep598 = getelementptr i8, ptr %i.w, i64 %i.bs
end_hunk_1
