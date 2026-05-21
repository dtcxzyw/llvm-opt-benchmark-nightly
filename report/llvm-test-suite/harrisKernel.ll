begin_hunk_0_@_Z12harrisKerneliiPA2052_fPA2048_fPA2050_fS4_S4_S4_S4_S2_S2_S2_S2_S2_:bb.a
  br i1 %exitcond398.3, label %._crit_edge.us328, label %scalar.ph553, !llvm.loop !36

._crit_edge.us328:                                ; preds = %scalar.ph553.prol.loopexit, %scalar.ph553, %middle.block565
  %indvars.iv.next400 = add nuw nsw i64 %indvars.iv399, 1 ; 2 uses
  %exitcond404.not = icmp eq i64 %indvars.iv.next400, %wide.trip.count403
  br i1 %exitcond404.not, label %.preheader309.us.preheader, label %.preheader311.us, !llvm.loop !37

.preheader309.us.preheader:                       ; preds = %._crit_edge.us328
  %i.ga = add i32 %1, 2
  %smax413 = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %wide.trip.count414 = zext nneg i32 %smax413 to i64
  %wide.trip.count408 = zext i32 %i.ga to i64
  %i.gb = sub i64 %i.g, %i.h
  %min.iters.check571 = icmp ult i32 %i.o, 8
  %diff.check569 = icmp ult i64 %i.gb, 32
  %or.cond723 = or i1 %min.iters.check571, %diff.check569
  %n.vec574 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  %cmp.n581 = icmp eq i64 %n.vec574, %wide.trip.count
  %xtraiter728 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod729.not = icmp eq i64 %xtraiter728, 0
  br label %.preheader309.us

.preheader309.us:                                 ; preds = %.preheader309.us.preheader, %._crit_edge.us331
  %indvars.iv410 = phi i64 [ 0, %.preheader309.us.preheader ], [ %indvars.iv.next411, %._crit_edge.us331 ] ; 3 uses
  %i.gc = getelementptr inbounds nuw [8200 x i8], ptr %4, i64 %indvars.iv410 ; 6 uses
  %i.gd = getelementptr inbounds nuw [8200 x i8], ptr %6, i64 %indvars.iv410 ; 6 uses
  br i1 %or.cond723, label %scalar.ph570.preheader, label %vector.body575

vector.body575:                                   ; preds = %.preheader309.us, %vector.body575
  %index576 = phi i64 [ %index.next579, %vector.body575 ], [ 0, %.preheader309.us ] ; 3 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %index576 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %wide.load577 = load <4 x float>, ptr %i.ge, align 4, !tbaa !8 ; 2 uses
  %wide.load578 = load <4 x float>, ptr %i.gf, align 4, !tbaa !8 ; 2 uses
  %i.gg = fmul fast <4 x float> %wide.load577, %wide.load577
  %i.gh = fmul fast <4 x float> %wide.load578, %wide.load578
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %index576 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store <4 x float> %i.gg, ptr %i.gi, align 4, !tbaa !8
  store <4 x float> %i.gh, ptr %i.gj, align 4, !tbaa !8
  %index.next579 = add nuw i64 %index576, 8       ; 2 uses
  %i.gk = icmp eq i64 %index.next579, %n.vec574
  br i1 %i.gk, label %middle.block580, label %vector.body575, !llvm.loop !38

middle.block580:                                  ; preds = %vector.body575
  br i1 %cmp.n581, label %._crit_edge.us331, label %scalar.ph570.preheader

scalar.ph570.preheader:                           ; preds = %.preheader309.us, %middle.block580
  %indvars.iv405.ph = phi i64 [ 0, %.preheader309.us ], [ %n.vec574, %middle.block580 ] ; 3 uses
  br i1 %lcmp.mod729.not, label %scalar.ph570.prol.loopexit, label %scalar.ph570.prol

scalar.ph570.prol:                                ; preds = %scalar.ph570.preheader, %scalar.ph570.prol
  %indvars.iv405.prol = phi i64 [ %indvars.iv.next406.prol, %scalar.ph570.prol ], [ %indvars.iv405.ph, %scalar.ph570.preheader ] ; 3 uses
  %prol.iter730 = phi i64 [ %prol.iter730.next, %scalar.ph570.prol ], [ 0, %scalar.ph570.preheader ]
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv405.prol
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !8 ; 2 uses
  %i.gn = fmul fast float %i.gm, %i.gm
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv405.prol
  store float %i.gn, ptr %i.go, align 4, !tbaa !8
  %indvars.iv.next406.prol = add nuw nsw i64 %indvars.iv405.prol, 1 ; 2 uses
  %prol.iter730.next = add i64 %prol.iter730, 1   ; 2 uses
  %prol.iter730.cmp.not = icmp eq i64 %prol.iter730.next, %xtraiter728
  br i1 %prol.iter730.cmp.not, label %scalar.ph570.prol.loopexit, label %scalar.ph570.prol, !llvm.loop !39

scalar.ph570.prol.loopexit:                       ; preds = %scalar.ph570.prol, %scalar.ph570.preheader
  %indvars.iv405.unr = phi i64 [ %indvars.iv405.ph, %scalar.ph570.preheader ], [ %indvars.iv.next406.prol, %scalar.ph570.prol ]
  %i.gp = sub nsw i64 %indvars.iv405.ph, %wide.trip.count
  %i.gq = icmp ugt i64 %i.gp, -4
  br i1 %i.gq, label %._crit_edge.us331, label %scalar.ph570

scalar.ph570:                                     ; preds = %scalar.ph570.prol.loopexit, %scalar.ph570
  %indvars.iv405 = phi i64 [ %indvars.iv.next406.3, %scalar.ph570 ], [ %indvars.iv405.unr, %scalar.ph570.prol.loopexit ] ; 6 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv405
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !8 ; 2 uses
  %i.gt = fmul fast float %i.gs, %i.gs
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv405
  store float %i.gt, ptr %i.gu, align 4, !tbaa !8
  %indvars.iv.next406 = add nuw nsw i64 %indvars.iv405, 1 ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.next406
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !8 ; 2 uses
  %i.gx = fmul fast float %i.gw, %i.gw
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv.next406
  store float %i.gx, ptr %i.gy, align 4, !tbaa !8
  %indvars.iv.next406.1 = add nuw nsw i64 %indvars.iv405, 2 ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.next406.1
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !8 ; 2 uses
  %i.hb = fmul fast float %i.ha, %i.ha
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv.next406.1
  store float %i.hb, ptr %i.hc, align 4, !tbaa !8
  %indvars.iv.next406.2 = add nuw nsw i64 %indvars.iv405, 3 ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.next406.2
  %i.he = load float, ptr %i.hd, align 4, !tbaa !8 ; 2 uses
  %i.hf = fmul fast float %i.he, %i.he
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv.next406.2
  store float %i.hf, ptr %i.hg, align 4, !tbaa !8
  %indvars.iv.next406.3 = add nuw nsw i64 %indvars.iv405, 4 ; 2 uses
  %exitcond409.3 = icmp eq i64 %indvars.iv.next406.3, %wide.trip.count408
  br i1 %exitcond409.3, label %._crit_edge.us331, label %scalar.ph570, !llvm.loop !40

._crit_edge.us331:                                ; preds = %scalar.ph570.prol.loopexit, %scalar.ph570, %middle.block580
  %indvars.iv.next411 = add nuw nsw i64 %indvars.iv410, 1 ; 2 uses
  %exitcond415.not = icmp eq i64 %indvars.iv.next411, %wide.trip.count414
  br i1 %exitcond415.not, label %.preheader308, label %.preheader309.us, !llvm.loop !41

.preheader308:                                    ; preds = %._crit_edge.us331, %.preheader317.lr.ph
  %i.hh = icmp sgt i32 %0, 0                      ; 2 uses
  %i.hi = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.hh, %i.hi
  br i1 %or.cond, label %.preheader307.us.preheader, label %._crit_edge349

.preheader307.us.preheader:                       ; preds = %.preheader308
  %wide.trip.count424 = zext nneg i32 %0 to i64   ; 7 uses
  %wide.trip.count419 = zext nneg i32 %1 to i64   ; 22 uses
  %i.hj = shl nuw nsw i64 %wide.trip.count424, 13
  %i.hk = shl nuw nsw i64 %wide.trip.count419, 2  ; 2 uses
  %i.hl = getelementptr i8, ptr %11, i64 %i.hj
  %i.hm = getelementptr i8, ptr %i.hl, i64 %i.hk
  %scevgep584 = getelementptr i8, ptr %i.hm, i64 -8192
  %scevgep585 = getelementptr i8, ptr %8, i64 4
  %i.hn = mul nuw nsw i64 %wide.trip.count424, 8200
  %i.ho = getelementptr i8, ptr %8, i64 %i.hn
  %i.hp = getelementptr i8, ptr %i.ho, i64 %i.hk
  %scevgep586 = getelementptr i8, ptr %i.hp, i64 8208
  %min.iters.check591 = icmp ult i32 %1, 4
  %bound0587 = icmp ult ptr %11, %scevgep586
  %bound1588 = icmp ult ptr %scevgep585, %scevgep584
  %found.conflict589 = and i1 %bound0587, %bound1588
  %n.vec594 = and i64 %wide.trip.count419, 2147483644 ; 3 uses
  %cmp.n607 = icmp eq i64 %n.vec594, %wide.trip.count419
  br label %.preheader307.us

.preheader307.us:                                 ; preds = %.preheader307.us.preheader, %._crit_edge.us334
  %indvars.iv421 = phi i64 [ 0, %.preheader307.us.preheader ], [ %indvars.iv.next422, %._crit_edge.us334 ] ; 3 uses
  %i.hq = getelementptr inbounds nuw [8200 x i8], ptr %8, i64 %indvars.iv421 ; 5 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8200 ; 5 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 16400 ; 5 uses
  %i.ht = getelementptr inbounds nuw [8192 x i8], ptr %11, i64 %indvars.iv421 ; 2 uses
  %brmerge742 = select i1 %min.iters.check591, i1 true, i1 %found.conflict589
  br i1 %brmerge742, label %scalar.ph590.preheader, label %vector.body595

vector.body595:                                   ; preds = %.preheader307.us, %vector.body595
  %index596 = phi i64 [ %index.next605, %vector.body595 ], [ 0, %.preheader307.us ] ; 6 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %index596
  %wide.load597 = load <4 x float>, ptr %i.hu, align 4, !tbaa !8, !alias.scope !42
  %i.hv = or disjoint i64 %index596, 1            ; 3 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.hv
  %wide.load598 = load <4 x float>, ptr %i.hw, align 4, !tbaa !8, !alias.scope !42
  %i.hx = or disjoint i64 %index596, 2            ; 3 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.hx
  %wide.load599 = load <4 x float>, ptr %i.hy, align 4, !tbaa !8, !alias.scope !42
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.hv
  %wide.load600 = load <4 x float>, ptr %i.hz, align 4, !tbaa !8, !alias.scope !42
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.hx
  %wide.load601 = load <4 x float>, ptr %i.ia, align 4, !tbaa !8, !alias.scope !42
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %index596
  %wide.load602 = load <4 x float>, ptr %i.ib, align 4, !tbaa !8, !alias.scope !42
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.hv
  %wide.load603 = load <4 x float>, ptr %i.ic, align 4, !tbaa !8, !alias.scope !42
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.hx
  %wide.load604 = load <4 x float>, ptr %i.id, align 4, !tbaa !8, !alias.scope !42
  %i.ie = fmul fast <4 x float> %wide.load597, splat (float 2.000000e+00)
  %i.if = fadd fast <4 x float> %i.ie, %wide.load598
  %i.ig = fadd fast <4 x float> %i.if, %wide.load599
  %i.ih = fadd fast <4 x float> %i.ig, %wide.load600
  %i.ii = fadd fast <4 x float> %i.ih, %wide.load601
  %i.ij = fadd fast <4 x float> %i.ii, %wide.load602
  %i.ik = fadd fast <4 x float> %i.ij, %wide.load603
  %i.il = fadd fast <4 x float> %i.ik, %wide.load604
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %index596
  store <4 x float> %i.il, ptr %i.im, align 4, !tbaa !8, !alias.scope !45, !noalias !42
  %index.next605 = add nuw i64 %index596, 4       ; 2 uses
  %i.in = icmp eq i64 %index.next605, %n.vec594
  br i1 %i.in, label %middle.block606, label %vector.body595, !llvm.loop !47

middle.block606:                                  ; preds = %vector.body595
  br i1 %cmp.n607, label %._crit_edge.us334, label %scalar.ph590.preheader

scalar.ph590.preheader:                           ; preds = %.preheader307.us, %middle.block606
  %indvars.iv416.ph = phi i64 [ %n.vec594, %middle.block606 ], [ 0, %.preheader307.us ]
  br label %scalar.ph590

scalar.ph590:                                     ; preds = %scalar.ph590.preheader, %scalar.ph590
  %indvars.iv416 = phi i64 [ %indvars.iv.next417, %scalar.ph590 ], [ %indvars.iv416.ph, %scalar.ph590.preheader ] ; 5 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %indvars.iv416
  %indvars.iv.next417 = add nuw nsw i64 %indvars.iv416, 1 ; 3 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv.next417
  %i.iq = add nuw nsw i64 %indvars.iv416, 2       ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.iq
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %indvars.iv416
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.iq
  %i.iu = load <2 x float>, ptr %i.ip, align 4, !tbaa !8
  %i.iv = load <2 x float>, ptr %i.io, align 4, !tbaa !8 ; 2 uses
  %i.iw = load float, ptr %i.ir, align 4, !tbaa !8
  %i.ix = load <2 x float>, ptr %i.is, align 4, !tbaa !8
  %i.iy = load float, ptr %i.it, align 4, !tbaa !8
  %i.iz = shufflevector <2 x float> %i.iu, <2 x float> %i.iv, <8 x i32> <i32 0, i32 1, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ja = shufflevector <2 x float> %i.ix, <2 x float> %i.iv, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2>
  %i.jb = shufflevector <8 x float> %i.iz, <8 x float> %i.ja, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 12, i32 13, i32 poison, i32 15>
  %i.jc = insertelement <8 x float> %i.jb, float %i.iw, i64 3
  %i.jd = insertelement <8 x float> %i.jc, float %i.iy, i64 6
  %i.je = fmul <8 x float> %i.jd, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 2.000000e+00>
  %i.jf = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.je)
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv416
  store float %i.jf, ptr %i.jg, align 4, !tbaa !8
  %exitcond420.not = icmp eq i64 %indvars.iv.next417, %wide.trip.count419
  br i1 %exitcond420.not, label %._crit_edge.us334, label %scalar.ph590, !llvm.loop !48

._crit_edge.us334:                                ; preds = %scalar.ph590, %middle.block606
  %indvars.iv.next422 = add nuw nsw i64 %indvars.iv421, 1 ; 2 uses
  %exitcond425.not = icmp eq i64 %indvars.iv.next422, %wide.trip.count424
  br i1 %exitcond425.not, label %.preheader306, label %.preheader307.us, !llvm.loop !49

.preheader306:                                    ; preds = %._crit_edge.us334
  br i1 %i.hh, label %.preheader305.us.preheader, label %._crit_edge349

.preheader305.us.preheader:                       ; preds = %.preheader306
  %wide.trip.count434 = zext nneg i32 %0 to i64
  %wide.trip.count429 = zext nneg i32 %1 to i64
  %i.jh = shl nuw nsw i64 %wide.trip.count424, 13
  %i.ji = shl nuw nsw i64 %wide.trip.count419, 2  ; 2 uses
  %i.jj = getelementptr i8, ptr %10, i64 %i.jh
  %i.jk = getelementptr i8, ptr %i.jj, i64 %i.ji
  %scevgep610 = getelementptr i8, ptr %i.jk, i64 -8192
  %i.jl = mul nuw nsw i64 %wide.trip.count424, 8200
  %i.jm = getelementptr i8, ptr %7, i64 %i.jl
  %i.jn = getelementptr i8, ptr %i.jm, i64 %i.ji
  %scevgep611 = getelementptr i8, ptr %i.jn, i64 8208
  %min.iters.check616 = icmp ult i32 %1, 4
  %bound0612 = icmp ult ptr %10, %scevgep611
  %bound1613 = icmp ult ptr %7, %scevgep610
  %found.conflict614 = and i1 %bound0612, %bound1613
  %n.vec619 = and i64 %wide.trip.count419, 2147483644 ; 3 uses
  %cmp.n633 = icmp eq i64 %n.vec619, %wide.trip.count419
  br label %.preheader305.us

.preheader305.us:                                 ; preds = %.preheader305.us.preheader, %._crit_edge.us337
  %indvars.iv431 = phi i64 [ 0, %.preheader305.us.preheader ], [ %indvars.iv.next432, %._crit_edge.us337 ] ; 3 uses
  %i.jo = getelementptr inbounds nuw [8200 x i8], ptr %7, i64 %indvars.iv431 ; 7 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8200 ; 5 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 16400 ; 5 uses
  %i.jr = getelementptr inbounds nuw [8192 x i8], ptr %10, i64 %indvars.iv431 ; 2 uses
  %brmerge743 = select i1 %min.iters.check616, i1 true, i1 %found.conflict614
  br i1 %brmerge743, label %scalar.ph615.preheader, label %vector.body620

vector.body620:                                   ; preds = %.preheader305.us, %vector.body620
  %index621 = phi i64 [ %index.next631, %vector.body620 ], [ 0, %.preheader305.us ] ; 7 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %index621
  %wide.load622 = load <4 x float>, ptr %i.js, align 4, !tbaa !8, !alias.scope !50
  %i.jt = or disjoint i64 %index621, 1            ; 3 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.jt
  %wide.load623 = load <4 x float>, ptr %i.ju, align 4, !tbaa !8, !alias.scope !50
  %i.jv = fadd fast <4 x float> %wide.load623, %wide.load622
  %i.jw = or disjoint i64 %index621, 2            ; 3 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.jw
  %wide.load624 = load <4 x float>, ptr %i.jx, align 4, !tbaa !8, !alias.scope !50
  %i.jy = fadd fast <4 x float> %i.jv, %wide.load624
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %index621
  %wide.load625 = load <4 x float>, ptr %i.jz, align 4, !tbaa !8, !alias.scope !50
  %i.ka = fadd fast <4 x float> %i.jy, %wide.load625
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %i.jt
  %wide.load626 = load <4 x float>, ptr %i.kb, align 4, !tbaa !8, !alias.scope !50
  %i.kc = fadd fast <4 x float> %i.ka, %wide.load626
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %i.jw
  %wide.load627 = load <4 x float>, ptr %i.kd, align 4, !tbaa !8, !alias.scope !50
  %i.ke = fadd fast <4 x float> %i.kc, %wide.load627
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %index621
  %wide.load628 = load <4 x float>, ptr %i.kf, align 4, !tbaa !8, !alias.scope !50
  %i.kg = fadd fast <4 x float> %i.ke, %wide.load628
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.jt
  %wide.load629 = load <4 x float>, ptr %i.kh, align 4, !tbaa !8, !alias.scope !50
  %i.ki = fadd fast <4 x float> %i.kg, %wide.load629
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.jw
  %wide.load630 = load <4 x float>, ptr %i.kj, align 4, !tbaa !8, !alias.scope !50
  %i.kk = fadd fast <4 x float> %i.ki, %wide.load630
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %index621
  store <4 x float> %i.kk, ptr %i.kl, align 4, !tbaa !8, !alias.scope !53, !noalias !50
  %index.next631 = add nuw i64 %index621, 4       ; 2 uses
  %i.km = icmp eq i64 %index.next631, %n.vec619
  br i1 %i.km, label %middle.block632, label %vector.body620, !llvm.loop !55

middle.block632:                                  ; preds = %vector.body620
  br i1 %cmp.n633, label %._crit_edge.us337, label %scalar.ph615.preheader

scalar.ph615.preheader:                           ; preds = %.preheader305.us, %middle.block632
  %indvars.iv426.ph = phi i64 [ %n.vec619, %middle.block632 ], [ 0, %.preheader305.us ]
  br label %scalar.ph615

scalar.ph615:                                     ; preds = %scalar.ph615.preheader, %scalar.ph615
  %indvars.iv426 = phi i64 [ %indvars.iv.next427, %scalar.ph615 ], [ %indvars.iv426.ph, %scalar.ph615.preheader ] ; 6 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %indvars.iv426
  %indvars.iv.next427 = add nuw nsw i64 %indvars.iv426, 1 ; 3 uses
  %i.ko = add nuw nsw i64 %indvars.iv426, 2       ; 2 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.ko
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !8
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %indvars.iv426
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !8
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %indvars.iv.next427
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv426
  %i.kv = load <2 x float>, ptr %i.kn, align 4, !tbaa !8
  %i.kw = load <2 x float>, ptr %i.kt, align 4, !tbaa !8
  %i.kx = load <2 x float>, ptr %i.ku, align 4, !tbaa !8
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.ko
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !8
  %i.la = insertelement <8 x float> poison, float %i.kq, i64 2
  %i.lb = insertelement <8 x float> %i.la, float %i.ks, i64 3
  %i.lc = shufflevector <2 x float> %i.kv, <2 x float> poison, <8 x i32> <i32 1, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ld = shufflevector <8 x float> %i.lc, <8 x float> %i.lb, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.le = shufflevector <2 x float> %i.kw, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lf = shufflevector <8 x float> %i.ld, <8 x float> %i.le, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.lg = shufflevector <2 x float> %i.kx, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lh = shufflevector <8 x float> %i.lf, <8 x float> %i.lg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %op.rdx724 = tail call fast float @llvm.vector.reduce.fadd.v8f32(float %i.kz, <8 x float> %i.lh)
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %indvars.iv426
  store float %op.rdx724, ptr %i.li, align 4, !tbaa !8
  %exitcond430.not = icmp eq i64 %indvars.iv.next427, %wide.trip.count429
  br i1 %exitcond430.not, label %._crit_edge.us337, label %scalar.ph615, !llvm.loop !56

._crit_edge.us337:                                ; preds = %scalar.ph615, %middle.block632
  %indvars.iv.next432 = add nuw nsw i64 %indvars.iv431, 1 ; 2 uses
  %exitcond435.not = icmp eq i64 %indvars.iv.next432, %wide.trip.count434
  br i1 %exitcond435.not, label %.preheader303.us.preheader, label %.preheader305.us, !llvm.loop !57

.preheader303.us.preheader:                       ; preds = %._crit_edge.us337
  %wide.trip.count444 = zext nneg i32 %0 to i64
  %wide.trip.count439 = zext nneg i32 %1 to i64
  %i.lj = shl nuw nsw i64 %wide.trip.count424, 13
  %i.lk = shl nuw nsw i64 %wide.trip.count419, 2  ; 2 uses
  %i.ll = getelementptr i8, ptr %9, i64 %i.lj
  %i.lm = getelementptr i8, ptr %i.ll, i64 %i.lk
  %scevgep636 = getelementptr i8, ptr %i.lm, i64 -8192
  %i.ln = mul nuw nsw i64 %wide.trip.count424, 8200
  %i.lo = getelementptr i8, ptr %6, i64 %i.ln
  %i.lp = getelementptr i8, ptr %i.lo, i64 %i.lk
  %scevgep637 = getelementptr i8, ptr %i.lp, i64 8208
  %min.iters.check642 = icmp ult i32 %1, 4
  %bound0638 = icmp ult ptr %9, %scevgep637
  %bound1639 = icmp ult ptr %6, %scevgep636
  %found.conflict640 = and i1 %bound0638, %bound1639
  %n.vec645 = and i64 %wide.trip.count419, 2147483644 ; 3 uses
  %cmp.n659 = icmp eq i64 %n.vec645, %wide.trip.count419
  br label %.preheader303.us

.preheader303.us:                                 ; preds = %.preheader303.us.preheader, %._crit_edge.us340
  %indvars.iv441 = phi i64 [ 0, %.preheader303.us.preheader ], [ %indvars.iv.next442, %._crit_edge.us340 ] ; 3 uses
  %i.lq = getelementptr inbounds nuw [8200 x i8], ptr %6, i64 %indvars.iv441 ; 7 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8200 ; 5 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 16400 ; 5 uses
  %i.lt = getelementptr inbounds nuw [8192 x i8], ptr %9, i64 %indvars.iv441 ; 2 uses
  %brmerge744 = select i1 %min.iters.check642, i1 true, i1 %found.conflict640
  br i1 %brmerge744, label %scalar.ph641.preheader, label %vector.body646

vector.body646:                                   ; preds = %.preheader303.us, %vector.body646
  %index647 = phi i64 [ %index.next657, %vector.body646 ], [ 0, %.preheader303.us ] ; 7 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %index647
  %wide.load648 = load <4 x float>, ptr %i.lu, align 4, !tbaa !8, !alias.scope !58
  %i.lv = or disjoint i64 %index647, 1            ; 3 uses
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %i.lv
  %wide.load649 = load <4 x float>, ptr %i.lw, align 4, !tbaa !8, !alias.scope !58
  %i.lx = fadd fast <4 x float> %wide.load649, %wide.load648
  %i.ly = or disjoint i64 %index647, 2            ; 3 uses
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %i.ly
  %wide.load650 = load <4 x float>, ptr %i.lz, align 4, !tbaa !8, !alias.scope !58
  %i.ma = fadd fast <4 x float> %i.lx, %wide.load650
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %index647
  %wide.load651 = load <4 x float>, ptr %i.mb, align 4, !tbaa !8, !alias.scope !58
  %i.mc = fadd fast <4 x float> %i.ma, %wide.load651
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.lv
  %wide.load652 = load <4 x float>, ptr %i.md, align 4, !tbaa !8, !alias.scope !58
  %i.me = fadd fast <4 x float> %i.mc, %wide.load652
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.ly
  %wide.load653 = load <4 x float>, ptr %i.mf, align 4, !tbaa !8, !alias.scope !58
  %i.mg = fadd fast <4 x float> %i.me, %wide.load653
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %index647
  %wide.load654 = load <4 x float>, ptr %i.mh, align 4, !tbaa !8, !alias.scope !58
  %i.mi = fadd fast <4 x float> %i.mg, %wide.load654
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.lv
  %wide.load655 = load <4 x float>, ptr %i.mj, align 4, !tbaa !8, !alias.scope !58
  %i.mk = fadd fast <4 x float> %i.mi, %wide.load655
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.ly
  %wide.load656 = load <4 x float>, ptr %i.ml, align 4, !tbaa !8, !alias.scope !58
  %i.mm = fadd fast <4 x float> %i.mk, %wide.load656
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %index647
  store <4 x float> %i.mm, ptr %i.mn, align 4, !tbaa !8, !alias.scope !61, !noalias !58
  %index.next657 = add nuw i64 %index647, 4       ; 2 uses
  %i.mo = icmp eq i64 %index.next657, %n.vec645
  br i1 %i.mo, label %middle.block658, label %vector.body646, !llvm.loop !63

middle.block658:                                  ; preds = %vector.body646
  br i1 %cmp.n659, label %._crit_edge.us340, label %scalar.ph641.preheader

scalar.ph641.preheader:                           ; preds = %.preheader303.us, %middle.block658
  %indvars.iv436.ph = phi i64 [ %n.vec645, %middle.block658 ], [ 0, %.preheader303.us ]
  br label %scalar.ph641

scalar.ph641:                                     ; preds = %scalar.ph641.preheader, %scalar.ph641
  %indvars.iv436 = phi i64 [ %indvars.iv.next437, %scalar.ph641 ], [ %indvars.iv436.ph, %scalar.ph641.preheader ] ; 6 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %indvars.iv436
  %indvars.iv.next437 = add nuw nsw i64 %indvars.iv436, 1 ; 3 uses
  %i.mq = add nuw nsw i64 %indvars.iv436, 2       ; 2 uses
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %i.mq
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !8
end_hunk_0
