inline.NumInlined: 233
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 131
loop-unroll.NumUnrolled: 135
begin_hunk_0_@_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iiii:bb.a
.lr.ph139.us:                                     ; preds = %.lr.ph139.us.prol.loopexit, %.lr.ph139.us
  %.13138.us = phi ptr [ %i.fj, %.lr.ph139.us ], [ %.13138.us.unr, %.lr.ph139.us.prol.loopexit ] ; 9 uses
  %.2357137.us = phi i32 [ %i.fo, %.lr.ph139.us ], [ %.2357137.us.unr, %.lr.ph139.us.prol.loopexit ]
  %.2360136.us = phi ptr [ %i.fn, %.lr.ph139.us ], [ %.2360136.us.unr, %.lr.ph139.us.prol.loopexit ] ; 3 uses
  %.2363135.us = phi ptr [ %i.fm, %.lr.ph139.us ], [ %.2363135.us.unr, %.lr.ph139.us.prol.loopexit ] ; 3 uses
  %.2366134.us = phi ptr [ %i.fl, %.lr.ph139.us ], [ %.2366134.us.unr, %.lr.ph139.us.prol.loopexit ] ; 3 uses
  %.2369133.us = phi ptr [ %i.fk, %.lr.ph139.us ], [ %.2369133.us.unr, %.lr.ph139.us.prol.loopexit ] ; 3 uses
  %i.eq = load float, ptr %.2369133.us, align 4, !tbaa !68
  store float %i.eq, ptr %.13138.us, align 4, !tbaa !68
  %i.er = load float, ptr %.2366134.us, align 4, !tbaa !68
  %i.es = getelementptr inbounds nuw i8, ptr %.13138.us, i64 4
  store float %i.er, ptr %i.es, align 4, !tbaa !68
  %i.et = load float, ptr %.2363135.us, align 4, !tbaa !68
  %i.eu = getelementptr inbounds nuw i8, ptr %.13138.us, i64 8
  store float %i.et, ptr %i.eu, align 4, !tbaa !68
  %i.ev = load float, ptr %.2360136.us, align 4, !tbaa !68
  %i.ew = getelementptr inbounds nuw i8, ptr %.13138.us, i64 12
  store float %i.ev, ptr %i.ew, align 4, !tbaa !68
  %i.ex = getelementptr inbounds nuw i8, ptr %.13138.us, i64 16
  %i.ey = getelementptr inbounds nuw i8, ptr %.2369133.us, i64 4
  %i.ez = getelementptr inbounds nuw i8, ptr %.2366134.us, i64 4
  %i.fa = getelementptr inbounds nuw i8, ptr %.2363135.us, i64 4
  %i.fb = getelementptr inbounds nuw i8, ptr %.2360136.us, i64 4
  %i.fc = load float, ptr %i.ey, align 4, !tbaa !68
  store float %i.fc, ptr %i.ex, align 4, !tbaa !68
  %i.fd = load float, ptr %i.ez, align 4, !tbaa !68
  %i.fe = getelementptr inbounds nuw i8, ptr %.13138.us, i64 20
  store float %i.fd, ptr %i.fe, align 4, !tbaa !68
  %i.ff = load float, ptr %i.fa, align 4, !tbaa !68
  %i.fg = getelementptr inbounds nuw i8, ptr %.13138.us, i64 24
  store float %i.ff, ptr %i.fg, align 4, !tbaa !68
  %i.fh = load float, ptr %i.fb, align 4, !tbaa !68
  %i.fi = getelementptr inbounds nuw i8, ptr %.13138.us, i64 28
  store float %i.fh, ptr %i.fi, align 4, !tbaa !68
  %i.fj = getelementptr inbounds nuw i8, ptr %.13138.us, i64 32 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.2369133.us, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %.2366134.us, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %.2363135.us, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %.2360136.us, i64 8
  %i.fo = add nuw nsw i32 %.2357137.us, 2         ; 2 uses
  %exitcond278.not.1 = icmp eq i32 %i.fo, %4
  br i1 %exitcond278.not.1, label %.loopexit.us, label %.lr.ph139.us, !llvm.loop !143

.preheader47.us:                                  ; preds = %.lr.ph126.us, %.preheader48.us
  %.1368.lcssa.us = phi ptr [ %.0367.lcssa.us, %.preheader48.us ], [ %i.ej, %.lr.ph126.us ] ; 6 uses
  %.1365.lcssa.us = phi ptr [ %.0364.lcssa.us, %.preheader48.us ], [ %i.ek, %.lr.ph126.us ] ; 6 uses
  %.1362.lcssa.us = phi ptr [ %.0361.lcssa.us, %.preheader48.us ], [ %i.el, %.lr.ph126.us ] ; 6 uses
  %.1359.lcssa.us = phi ptr [ %.0358.lcssa.us, %.preheader48.us ], [ %i.em, %.lr.ph126.us ] ; 6 uses
  %.1356.lcssa.us = phi i32 [ %.0355.lcssa.us, %.preheader48.us ], [ %i.en, %.lr.ph126.us ] ; 6 uses
  %.12.lcssa.us = phi ptr [ %.11.lcssa.us, %.preheader48.us ], [ %i.ei, %.lr.ph126.us ] ; 10 uses
  %i.fp = icmp slt i32 %.1356.lcssa.us, %4
  br i1 %i.fp, label %.lr.ph139.us.preheader, label %.loopexit.us

.lr.ph139.us.preheader:                           ; preds = %.preheader47.us
  %i.fq = xor i32 %.1356.lcssa.us, -1
  %i.fr = add i32 %4, %i.fq                       ; 2 uses
  %i.fs = zext i32 %i.fr to i64
  %i.ft = add nuw nsw i64 %i.fs, 1                ; 2 uses
  %min.iters.check485 = icmp ult i32 %i.fr, 15
  br i1 %min.iters.check485, label %.lr.ph139.us.preheader592, label %vector.memcheck458

vector.memcheck458:                               ; preds = %.lr.ph139.us.preheader
  %scevgep459 = getelementptr i8, ptr %.12.lcssa.us, i64 16
  %i.fu = xor i32 %.1356.lcssa.us, -1
  %i.fv = add i32 %4, %i.fu
  %i.fw = zext i32 %i.fv to i64                   ; 2 uses
  %i.fx = shl nuw nsw i64 %i.fw, 4
  %scevgep460 = getelementptr i8, ptr %scevgep459, i64 %i.fx ; 4 uses
  %scevgep461 = getelementptr i8, ptr %.1359.lcssa.us, i64 4
  %i.fy = shl nuw nsw i64 %i.fw, 2                ; 4 uses
  %scevgep462 = getelementptr i8, ptr %scevgep461, i64 %i.fy
  %scevgep463 = getelementptr i8, ptr %.1362.lcssa.us, i64 4
  %scevgep464 = getelementptr i8, ptr %scevgep463, i64 %i.fy
  %scevgep465 = getelementptr i8, ptr %.1365.lcssa.us, i64 4
  %scevgep466 = getelementptr i8, ptr %scevgep465, i64 %i.fy
  %scevgep467 = getelementptr i8, ptr %.1368.lcssa.us, i64 4
  %scevgep468 = getelementptr i8, ptr %scevgep467, i64 %i.fy
  %bound0469 = icmp ult ptr %.12.lcssa.us, %scevgep462
  %bound1470 = icmp ult ptr %.1359.lcssa.us, %scevgep460
  %found.conflict471 = and i1 %bound0469, %bound1470
  %bound0472 = icmp ult ptr %.12.lcssa.us, %scevgep464
  %bound1473 = icmp ult ptr %.1362.lcssa.us, %scevgep460
  %found.conflict474 = and i1 %bound0472, %bound1473
  %conflict.rdx475 = or i1 %found.conflict471, %found.conflict474
  %bound0476 = icmp ult ptr %.12.lcssa.us, %scevgep466
  %bound1477 = icmp ult ptr %.1365.lcssa.us, %scevgep460
  %found.conflict478 = and i1 %bound0476, %bound1477
  %conflict.rdx479 = or i1 %conflict.rdx475, %found.conflict478
  %bound0480 = icmp ult ptr %.12.lcssa.us, %scevgep468
  %bound1481 = icmp ult ptr %.1368.lcssa.us, %scevgep460
  %found.conflict482 = and i1 %bound0480, %bound1481
  %conflict.rdx483 = or i1 %conflict.rdx479, %found.conflict482
  br i1 %conflict.rdx483, label %.lr.ph139.us.preheader592, label %vector.ph486

vector.ph486:                                     ; preds = %vector.memcheck458
  %n.vec487 = and i64 %i.ft, 8589934584           ; 5 uses
  %i.fz = shl nuw nsw i64 %n.vec487, 4
  %i.ga = getelementptr i8, ptr %.12.lcssa.us, i64 %i.fz ; 2 uses
  %i.gb = trunc i64 %n.vec487 to i32
  %i.gc = add i32 %.1356.lcssa.us, %i.gb
  %i.gd = shl nuw nsw i64 %n.vec487, 2            ; 4 uses
  %i.ge = getelementptr i8, ptr %.1359.lcssa.us, i64 %i.gd
  %i.gf = getelementptr i8, ptr %.1362.lcssa.us, i64 %i.gd
  %i.gg = getelementptr i8, ptr %.1365.lcssa.us, i64 %i.gd
  %i.gh = getelementptr i8, ptr %.1368.lcssa.us, i64 %i.gd
  br label %vector.body488

vector.body488:                                   ; preds = %vector.body488, %vector.ph486
  %index489 = phi i64 [ 0, %vector.ph486 ], [ %index.next500, %vector.body488 ] ; 3 uses
  %i.gi = shl i64 %index489, 4
  %next.gep490 = getelementptr i8, ptr %.12.lcssa.us, i64 %i.gi
  %i.gj = shl i64 %index489, 2                    ; 4 uses
  %next.gep491 = getelementptr i8, ptr %.1359.lcssa.us, i64 %i.gj
  %next.gep492 = getelementptr i8, ptr %.1362.lcssa.us, i64 %i.gj
  %next.gep493 = getelementptr i8, ptr %.1365.lcssa.us, i64 %i.gj
  %next.gep494 = getelementptr i8, ptr %.1368.lcssa.us, i64 %i.gj
  %wide.load495 = load <8 x float>, ptr %next.gep494, align 4, !tbaa !68, !alias.scope !144
  %wide.load496 = load <8 x float>, ptr %next.gep493, align 4, !tbaa !68, !alias.scope !147
  %wide.load497 = load <8 x float>, ptr %next.gep492, align 4, !tbaa !68, !alias.scope !149
  %wide.load498 = load <8 x float>, ptr %next.gep491, align 4, !tbaa !68, !alias.scope !151
  %i.gk = shufflevector <8 x float> %wide.load495, <8 x float> %wide.load496, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gl = shufflevector <8 x float> %wide.load497, <8 x float> %wide.load498, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec499 = shufflevector <16 x float> %i.gk, <16 x float> %i.gl, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec499, ptr %next.gep490, align 4, !tbaa !68, !alias.scope !153, !noalias !155
  %index.next500 = add nuw i64 %index489, 8       ; 2 uses
  %i.gm = icmp eq i64 %index.next500, %n.vec487
  br i1 %i.gm, label %middle.block501, label %vector.body488, !llvm.loop !156

middle.block501:                                  ; preds = %vector.body488
  %cmp.n502 = icmp eq i64 %i.ft, %n.vec487
  br i1 %cmp.n502, label %.loopexit.us, label %.lr.ph139.us.preheader592

.lr.ph139.us.preheader592:                        ; preds = %vector.memcheck458, %.lr.ph139.us.preheader, %middle.block501
  %.13138.us.ph = phi ptr [ %.12.lcssa.us, %vector.memcheck458 ], [ %.12.lcssa.us, %.lr.ph139.us.preheader ], [ %i.ga, %middle.block501 ] ; 6 uses
  %.2357137.us.ph = phi i32 [ %.1356.lcssa.us, %vector.memcheck458 ], [ %.1356.lcssa.us, %.lr.ph139.us.preheader ], [ %i.gc, %middle.block501 ] ; 4 uses
  %.2360136.us.ph = phi ptr [ %.1359.lcssa.us, %vector.memcheck458 ], [ %.1359.lcssa.us, %.lr.ph139.us.preheader ], [ %i.ge, %middle.block501 ] ; 3 uses
  %.2363135.us.ph = phi ptr [ %.1362.lcssa.us, %vector.memcheck458 ], [ %.1362.lcssa.us, %.lr.ph139.us.preheader ], [ %i.gf, %middle.block501 ] ; 3 uses
  %.2366134.us.ph = phi ptr [ %.1365.lcssa.us, %vector.memcheck458 ], [ %.1365.lcssa.us, %.lr.ph139.us.preheader ], [ %i.gg, %middle.block501 ] ; 3 uses
  %.2369133.us.ph = phi ptr [ %.1368.lcssa.us, %vector.memcheck458 ], [ %.1368.lcssa.us, %.lr.ph139.us.preheader ], [ %i.gh, %middle.block501 ] ; 3 uses
  %i.gn = sub i32 %4, %.2357137.us.ph
  %.neg = add i32 %.2357137.us.ph, 1
  %xtraiter645 = and i32 %i.gn, 1
  %lcmp.mod646.not = icmp eq i32 %xtraiter645, 0
  br i1 %lcmp.mod646.not, label %.lr.ph139.us.prol.loopexit, label %.lr.ph139.us.prol

.lr.ph139.us.prol:                                ; preds = %.lr.ph139.us.preheader592
  %i.go = load float, ptr %.2369133.us.ph, align 4, !tbaa !68
  store float %i.go, ptr %.13138.us.ph, align 4, !tbaa !68
  %i.gp = load float, ptr %.2366134.us.ph, align 4, !tbaa !68
  %i.gq = getelementptr inbounds nuw i8, ptr %.13138.us.ph, i64 4
  store float %i.gp, ptr %i.gq, align 4, !tbaa !68
  %i.gr = load float, ptr %.2363135.us.ph, align 4, !tbaa !68
  %i.gs = getelementptr inbounds nuw i8, ptr %.13138.us.ph, i64 8
  store float %i.gr, ptr %i.gs, align 4, !tbaa !68
  %i.gt = load float, ptr %.2360136.us.ph, align 4, !tbaa !68
  %i.gu = getelementptr inbounds nuw i8, ptr %.13138.us.ph, i64 12
  store float %i.gt, ptr %i.gu, align 4, !tbaa !68
  %i.gv = getelementptr inbounds nuw i8, ptr %.13138.us.ph, i64 16 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.2369133.us.ph, i64 4
  %i.gx = getelementptr inbounds nuw i8, ptr %.2366134.us.ph, i64 4
  %i.gy = getelementptr inbounds nuw i8, ptr %.2363135.us.ph, i64 4
  %i.gz = getelementptr inbounds nuw i8, ptr %.2360136.us.ph, i64 4
  %i.ha = add nuw nsw i32 %.2357137.us.ph, 1
  br label %.lr.ph139.us.prol.loopexit

.lr.ph139.us.prol.loopexit:                       ; preds = %.lr.ph139.us.prol, %.lr.ph139.us.preheader592
  %.lcssa605.unr = phi ptr [ poison, %.lr.ph139.us.preheader592 ], [ %i.gv, %.lr.ph139.us.prol ]
  %.13138.us.unr = phi ptr [ %.13138.us.ph, %.lr.ph139.us.preheader592 ], [ %i.gv, %.lr.ph139.us.prol ]
  %.2357137.us.unr = phi i32 [ %.2357137.us.ph, %.lr.ph139.us.preheader592 ], [ %i.ha, %.lr.ph139.us.prol ]
  %.2360136.us.unr = phi ptr [ %.2360136.us.ph, %.lr.ph139.us.preheader592 ], [ %i.gz, %.lr.ph139.us.prol ]
  %.2363135.us.unr = phi ptr [ %.2363135.us.ph, %.lr.ph139.us.preheader592 ], [ %i.gy, %.lr.ph139.us.prol ]
  %.2366134.us.unr = phi ptr [ %.2366134.us.ph, %.lr.ph139.us.preheader592 ], [ %i.gx, %.lr.ph139.us.prol ]
  %.2369133.us.unr = phi ptr [ %.2369133.us.ph, %.lr.ph139.us.preheader592 ], [ %i.gw, %.lr.ph139.us.prol ]
  %i.hb = icmp eq i32 %4, %.neg
  br i1 %i.hb, label %.loopexit.us, label %.lr.ph139.us

.loopexit.us:                                     ; preds = %.lr.ph139.us.prol.loopexit, %.lr.ph139.us, %middle.block501, %.preheader47.us
  %.13.lcssa.us = phi ptr [ %.12.lcssa.us, %.preheader47.us ], [ %i.ga, %middle.block501 ], [ %.lcssa605.unr, %.lr.ph139.us.prol.loopexit ], [ %i.fj, %.lr.ph139.us ] ; 2 uses
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 4 ; 3 uses
  %i.hc = icmp slt i64 %indvars.iv.next280, %invariant.op347
  br i1 %i.hc, label %.lr.ph143.split.us, label %.preheader46.loopexit, !llvm.loop !157

.preheader48.us:                                  ; preds = %.lr.ph113.us, %.loopexit49.us.thread, %.loopexit49.us
  %.0367.lcssa.us = phi ptr [ %i.cj, %.loopexit49.us ], [ %i.as, %.loopexit49.us.thread ], [ %i.dm, %.lr.ph113.us ] ; 2 uses
  %.0364.lcssa.us = phi ptr [ %i.cn, %.loopexit49.us ], [ %i.aw, %.loopexit49.us.thread ], [ %i.dn, %.lr.ph113.us ] ; 2 uses
  %.0361.lcssa.us = phi ptr [ %i.cr, %.loopexit49.us ], [ %i.ba, %.loopexit49.us.thread ], [ %i.do, %.lr.ph113.us ] ; 2 uses
  %.0358.lcssa.us = phi ptr [ %i.cv, %.loopexit49.us ], [ %i.be, %.loopexit49.us.thread ], [ %i.dp, %.lr.ph113.us ] ; 2 uses
  %.0355.lcssa.us = phi i32 [ 0, %.loopexit49.us ], [ 0, %.loopexit49.us.thread ], [ %i.aj, %.lr.ph113.us ] ; 3 uses
  %.11.lcssa.us = phi ptr [ %.10.us, %.loopexit49.us ], [ %.8142.us, %.loopexit49.us.thread ], [ %i.dl, %.lr.ph113.us ] ; 2 uses
  %i.hd = or disjoint i32 %.0355.lcssa.us, 3
  %i.he = icmp slt i32 %i.hd, %4
  br i1 %i.he, label %.lr.ph126.us, label %.preheader47.us

.lr.ph143.split:                                  ; preds = %.lr.ph143
  br i1 %i.ac, label %.lr.ph143.split.split.us, label %.lr.ph143.split.split.preheader

.lr.ph143.split.split.preheader:                  ; preds = %.lr.ph143.split
  %i.hf = add i32 %2, -4
  %i.hg = sub i32 %i.hf, %.0327.lcssa
  %i.hh = and i32 %i.hg, -4
  %i.hi = add nuw i32 %.0327.lcssa, %i.hh
  %i.hj = add nuw i32 %i.hi, 4
  br label %.preheader46

.lr.ph143.split.split.us:                         ; preds = %.lr.ph143.split
  br i1 %i.af, label %.lr.ph105.us155.us.preheader, label %.loopexit49.us153.preheader

.loopexit49.us153.preheader:                      ; preds = %.lr.ph143.split.split.us
  %i.hk = add i32 %2, -4
  %i.hl = sub i32 %i.hk, %.0327.lcssa
  %i.hm = and i32 %i.hl, -4
  %i.hn = add nuw i32 %.0327.lcssa, %i.hm
  %i.ho = add nuw i32 %i.hn, 4
  br label %.preheader46

.lr.ph105.us155.us.preheader:                     ; preds = %.lr.ph143.split.split.us
  %i.hp = zext nneg i32 %.0327.lcssa to i64
  %i.hq = sext i32 %1 to i64
  %i.hr = sext i32 %2 to i64
  %invariant.op = add nsw i64 %i.hr, -3
  %i.hs = add nsw i32 %4, -1
  %xtraiter631 = and i32 %4, 7                    ; 3 uses
  %i.ht = icmp ult i32 %i.hs, 7
  %unroll_iter636 = and i32 %4, 2147483640
  %lcmp.mod633.not = icmp eq i32 %xtraiter631, 0
  %lcmp.mod635 = icmp ne i32 %xtraiter631, 0
  br label %.lr.ph105.us155.us

.lr.ph105.us155.us:                               ; preds = %.lr.ph105.us155.us.preheader, %..loopexit49_crit_edge.us156.us
  %indvars.iv274 = phi i64 [ %i.hp, %.lr.ph105.us155.us.preheader ], [ %indvars.iv.next275, %..loopexit49_crit_edge.us156.us ] ; 2 uses
  %.8142.us147.us = phi ptr [ %.0324.lcssa, %.lr.ph105.us155.us.preheader ], [ %.lcssa606, %..loopexit49_crit_edge.us156.us ] ; 2 uses
  %i.hu = load ptr, ptr %0, align 8, !tbaa !18
  %i.hv = add nsw i64 %indvars.iv274, %i.hq
  %i.hw = mul i64 %i.k, %i.hv
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.hw
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.ae ; 2 uses
  br i1 %i.ht, label %.epil.preheader, label %.lr.ph105.us155.us.new

.lr.ph105.us155.us.new:                           ; preds = %.lr.ph105.us155.us, %.lr.ph105.us155.us.new
  %.9104.us149.us = phi ptr [ %i.iv, %.lr.ph105.us155.us.new ], [ %.8142.us147.us, %.lr.ph105.us155.us ] ; 9 uses
  %.0371102.us151.us = phi ptr [ %i.iw, %.lr.ph105.us155.us.new ], [ %i.hy, %.lr.ph105.us155.us ] ; 9 uses
  %niter637 = phi i32 [ %niter637.next.7, %.lr.ph105.us155.us.new ], [ 0, %.lr.ph105.us155.us ]
  %i.hz = load <4 x float>, ptr %.0371102.us151.us, align 16, !tbaa !116
  store <4 x float> %i.hz, ptr %.9104.us149.us, align 16, !tbaa !116
  %i.ia = getelementptr inbounds nuw i8, ptr %.9104.us149.us, i64 16
  %i.ib = getelementptr inbounds nuw i8, ptr %.0371102.us151.us, i64 16
  %i.ic = load <4 x float>, ptr %i.ib, align 16, !tbaa !116
  store <4 x float> %i.ic, ptr %i.ia, align 16, !tbaa !116
  %i.id = getelementptr inbounds nuw i8, ptr %.9104.us149.us, i64 32
  %i.ie = getelementptr inbounds nuw i8, ptr %.0371102.us151.us, i64 32
  %i.if = load <4 x float>, ptr %i.ie, align 16, !tbaa !116
  store <4 x float> %i.if, ptr %i.id, align 16, !tbaa !116
  %i.ig = getelementptr inbounds nuw i8, ptr %.9104.us149.us, i64 48
  %i.ih = getelementptr inbounds nuw i8, ptr %.0371102.us151.us, i64 48
  %i.ii = load <4 x float>, ptr %i.ih, align 16, !tbaa !116
  store <4 x float> %i.ii, ptr %i.ig, align 16, !tbaa !116
  %i.ij = getelementptr inbounds nuw i8, ptr %.9104.us149.us, i64 64
  %i.ik = getelementptr inbounds nuw i8, ptr %.0371102.us151.us, i64 64
  %i.il = load <4 x float>, ptr %i.ik, align 16, !tbaa !116
  store <4 x float> %i.il, ptr %i.ij, align 16, !tbaa !116
  %i.im = getelementptr inbounds nuw i8, ptr %.9104.us149.us, i64 80
  %i.in = getelementptr inbounds nuw i8, ptr %.0371102.us151.us, i64 80
  %i.io = load <4 x float>, ptr %i.in, align 16, !tbaa !116
  store <4 x float> %i.io, ptr %i.im, align 16, !tbaa !116
  %i.ip = getelementptr inbounds nuw i8, ptr %.9104.us149.us, i64 96
  %i.iq = getelementptr inbounds nuw i8, ptr %.0371102.us151.us, i64 96
  %i.ir = load <4 x float>, ptr %i.iq, align 16, !tbaa !116
  store <4 x float> %i.ir, ptr %i.ip, align 16, !tbaa !116
  %i.is = getelementptr inbounds nuw i8, ptr %.9104.us149.us, i64 112
  %i.it = getelementptr inbounds nuw i8, ptr %.0371102.us151.us, i64 112
  %i.iu = load <4 x float>, ptr %i.it, align 16, !tbaa !116
  store <4 x float> %i.iu, ptr %i.is, align 16, !tbaa !116
  %i.iv = getelementptr inbounds nuw i8, ptr %.9104.us149.us, i64 128 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.0371102.us151.us, i64 128 ; 2 uses
  %niter637.next.7 = add nuw nsw i32 %niter637, 8 ; 2 uses
  %niter637.ncmp.7 = icmp eq i32 %niter637.next.7, %unroll_iter636
  br i1 %niter637.ncmp.7, label %..loopexit49_crit_edge.us156.us.unr-lcssa, label %.lr.ph105.us155.us.new, !llvm.loop !139

..loopexit49_crit_edge.us156.us.unr-lcssa:        ; preds = %.lr.ph105.us155.us.new
  br i1 %lcmp.mod633.not, label %..loopexit49_crit_edge.us156.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit49_crit_edge.us156.us.unr-lcssa, %.lr.ph105.us155.us
  %.9104.us149.us.epil.init = phi ptr [ %.8142.us147.us, %.lr.ph105.us155.us ], [ %i.iv, %..loopexit49_crit_edge.us156.us.unr-lcssa ]
  %.0371102.us151.us.epil.init = phi ptr [ %i.hy, %.lr.ph105.us155.us ], [ %i.iw, %..loopexit49_crit_edge.us156.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod635)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.9104.us149.us.epil = phi ptr [ %.9104.us149.us.epil.init, %.epil.preheader ], [ %i.iy, %bb.c ] ; 2 uses
  %.0371102.us151.us.epil = phi ptr [ %.0371102.us151.us.epil.init, %.epil.preheader ], [ %i.iz, %bb.c ] ; 2 uses
  %epil.iter632 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter632.next, %bb.c ]
  %i.ix = load <4 x float>, ptr %.0371102.us151.us.epil, align 16, !tbaa !116
  store <4 x float> %i.ix, ptr %.9104.us149.us.epil, align 16, !tbaa !116
  %i.iy = getelementptr inbounds nuw i8, ptr %.9104.us149.us.epil, i64 16 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.0371102.us151.us.epil, i64 16
  %epil.iter632.next = add i32 %epil.iter632, 1   ; 2 uses
  %epil.iter632.cmp.not = icmp eq i32 %epil.iter632.next, %xtraiter631
  br i1 %epil.iter632.cmp.not, label %..loopexit49_crit_edge.us156.us, label %bb.c, !llvm.loop !158

..loopexit49_crit_edge.us156.us:                  ; preds = %bb.c, %..loopexit49_crit_edge.us156.us.unr-lcssa
  %.lcssa606 = phi ptr [ %i.iv, %..loopexit49_crit_edge.us156.us.unr-lcssa ], [ %i.iy, %bb.c ] ; 2 uses
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 4 ; 3 uses
  %i.ja = icmp slt i64 %indvars.iv.next275, %invariant.op
  br i1 %i.ja, label %.lr.ph105.us155.us, label %.preheader46.loopexit218, !llvm.loop !157

bb.d:                                             ; preds = %.lr.ph99, %.loopexit52
  %indvars.iv = phi i64 [ 0, %.lr.ph99 ], [ %indvars.iv.next, %.loopexit52 ] ; 4 uses
  %.032498 = phi ptr [ %.0.val, %.lr.ph99 ], [ %.7, %.loopexit52 ] ; 9 uses
  switch i32 %i.b, label %.loopexit52 [
    i32 8, label %bb.e
    i32 4, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  br i1 %i.o, label %.lr.ph.preheader, label %.loopexit52

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.jb = load ptr, ptr %0, align 8, !tbaa !18
  %i.jc = add nsw i64 %indvars.iv, %i.v
  %i.jd = mul i64 %i.k, %i.jc
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.jd
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.je, i64 %i.n ; 2 uses
  br i1 %i.y, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.132557 = phi ptr [ %i.kc, %.lr.ph ], [ %.032498, %.lr.ph.preheader ] ; 9 uses
  %.033156 = phi ptr [ %i.kd, %.lr.ph ], [ %i.jf, %.lr.ph.preheader ] ; 9 uses
  %niter630 = phi i32 [ %niter630.next.7, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.jg = load <8 x float>, ptr %.033156, align 32, !tbaa !116
  store <8 x float> %i.jg, ptr %.132557, align 32, !tbaa !116
  %i.jh = getelementptr inbounds nuw i8, ptr %.132557, i64 32
  %i.ji = getelementptr inbounds nuw i8, ptr %.033156, i64 32
  %i.jj = load <8 x float>, ptr %i.ji, align 32, !tbaa !116
  store <8 x float> %i.jj, ptr %i.jh, align 32, !tbaa !116
  %i.jk = getelementptr inbounds nuw i8, ptr %.132557, i64 64
  %i.jl = getelementptr inbounds nuw i8, ptr %.033156, i64 64
  %i.jm = load <8 x float>, ptr %i.jl, align 32, !tbaa !116
  store <8 x float> %i.jm, ptr %i.jk, align 32, !tbaa !116
  %i.jn = getelementptr inbounds nuw i8, ptr %.132557, i64 96
  %i.jo = getelementptr inbounds nuw i8, ptr %.033156, i64 96
  %i.jp = load <8 x float>, ptr %i.jo, align 32, !tbaa !116
  store <8 x float> %i.jp, ptr %i.jn, align 32, !tbaa !116
  %i.jq = getelementptr inbounds nuw i8, ptr %.132557, i64 128
  %i.jr = getelementptr inbounds nuw i8, ptr %.033156, i64 128
  %i.js = load <8 x float>, ptr %i.jr, align 32, !tbaa !116
  store <8 x float> %i.js, ptr %i.jq, align 32, !tbaa !116
  %i.jt = getelementptr inbounds nuw i8, ptr %.132557, i64 160
  %i.ju = getelementptr inbounds nuw i8, ptr %.033156, i64 160
  %i.jv = load <8 x float>, ptr %i.ju, align 32, !tbaa !116
  store <8 x float> %i.jv, ptr %i.jt, align 32, !tbaa !116
  %i.jw = getelementptr inbounds nuw i8, ptr %.132557, i64 192
  %i.jx = getelementptr inbounds nuw i8, ptr %.033156, i64 192
  %i.jy = load <8 x float>, ptr %i.jx, align 32, !tbaa !116
  store <8 x float> %i.jy, ptr %i.jw, align 32, !tbaa !116
  %i.jz = getelementptr inbounds nuw i8, ptr %.132557, i64 224
  %i.ka = getelementptr inbounds nuw i8, ptr %.033156, i64 224
  %i.kb = load <8 x float>, ptr %i.ka, align 32, !tbaa !116
  store <8 x float> %i.kb, ptr %i.jz, align 32, !tbaa !116
  %i.kc = getelementptr inbounds nuw i8, ptr %.132557, i64 256 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.033156, i64 256 ; 2 uses
  %niter630.next.7 = add nuw nsw i32 %niter630, 8 ; 2 uses
  %niter630.ncmp.7 = icmp eq i32 %niter630.next.7, %unroll_iter629
  br i1 %niter630.ncmp.7, label %.loopexit52.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !159

bb.f:                                             ; preds = %bb.d
  br i1 %i.o, label %.lr.ph62.preheader, label %.loopexit52

.lr.ph62.preheader:                               ; preds = %bb.f
  %i.ke = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.kf = add nsw i64 %indvars.iv, %i.v           ; 2 uses
  %i.kg = add nsw i64 %i.kf, 4
  %i.kh = mul i64 %i.k, %i.kg
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %i.kh
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %i.q ; 2 uses
  %i.kk = mul i64 %i.k, %i.kf
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %i.kk
  %i.km = getelementptr inbounds [4 x i8], ptr %i.kl, i64 %i.q ; 2 uses
  br i1 %i.x, label %.lr.ph62.epil.preheader, label %.lr.ph62

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %.lr.ph62
  %.361 = phi ptr [ %i.li, %.lr.ph62 ], [ %.032498, %.lr.ph62.preheader ] ; 9 uses
  %.034260 = phi ptr [ %i.lj, %.lr.ph62 ], [ %i.km, %.lr.ph62.preheader ] ; 5 uses
  %.034359 = phi ptr [ %i.lk, %.lr.ph62 ], [ %i.kj, %.lr.ph62.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph62 ], [ 0, %.lr.ph62.preheader ]
  %i.kn = load <4 x float>, ptr %.034260, align 16, !tbaa !116
  store <4 x float> %i.kn, ptr %.361, align 16, !tbaa !116
  %i.ko = getelementptr inbounds nuw i8, ptr %.361, i64 16
  %i.kp = load <4 x float>, ptr %.034359, align 16, !tbaa !116
  store <4 x float> %i.kp, ptr %i.ko, align 16, !tbaa !116
  %i.kq = getelementptr inbounds nuw i8, ptr %.361, i64 32
  %i.kr = getelementptr inbounds nuw i8, ptr %.034260, i64 16
  %i.ks = getelementptr inbounds nuw i8, ptr %.034359, i64 16
  %i.kt = load <4 x float>, ptr %i.kr, align 16, !tbaa !116
  store <4 x float> %i.kt, ptr %i.kq, align 16, !tbaa !116
  %i.ku = getelementptr inbounds nuw i8, ptr %.361, i64 48
  %i.kv = load <4 x float>, ptr %i.ks, align 16, !tbaa !116
  store <4 x float> %i.kv, ptr %i.ku, align 16, !tbaa !116
  %i.kw = getelementptr inbounds nuw i8, ptr %.361, i64 64
  %i.kx = getelementptr inbounds nuw i8, ptr %.034260, i64 32
  %i.ky = getelementptr inbounds nuw i8, ptr %.034359, i64 32
  %i.kz = load <4 x float>, ptr %i.kx, align 16, !tbaa !116
  store <4 x float> %i.kz, ptr %i.kw, align 16, !tbaa !116
  %i.la = getelementptr inbounds nuw i8, ptr %.361, i64 80
  %i.lb = load <4 x float>, ptr %i.ky, align 16, !tbaa !116
  store <4 x float> %i.lb, ptr %i.la, align 16, !tbaa !116
  %i.lc = getelementptr inbounds nuw i8, ptr %.361, i64 96
  %i.ld = getelementptr inbounds nuw i8, ptr %.034260, i64 48
  %i.le = getelementptr inbounds nuw i8, ptr %.034359, i64 48
  %i.lf = load <4 x float>, ptr %i.ld, align 16, !tbaa !116
  store <4 x float> %i.lf, ptr %i.lc, align 16, !tbaa !116
  %i.lg = getelementptr inbounds nuw i8, ptr %.361, i64 112
  %i.lh = load <4 x float>, ptr %i.le, align 16, !tbaa !116
end_hunk_0
begin_hunk_1_@_ZN4ncnnL14gemm_AT_BT_x86ERKNS_3MatES2_S2_RS0_iiiiiiiiiRKNS_6OptionE.omp_outlined:bb.a
  br i1 %i.aw, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = load i32, ptr %10, align 4, !tbaa !45
  %i.ay = icmp eq i32 %i.ax, 3
  br i1 %i.ay, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = load i32, ptr %11, align 4, !tbaa !45
  %.not61 = icmp eq i32 %i.az, 0
  br i1 %.not61, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ba = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc100 unwind label %bb.j

.noexc100:                                        ; preds = %bb.f
  %i.bb = load i32, ptr %i.v, align 4, !tbaa !88, !noalias !361 ; 2 uses
  %i.bc = load i32, ptr %i.w, align 8, !tbaa !90, !noalias !361 ; 2 uses
  %i.bd = load i32, ptr %i.x, align 4, !tbaa !364, !noalias !361
  %i.be = load ptr, ptr %12, align 8, !tbaa !18, !noalias !361
  %i.bf = load i64, ptr %i.y, align 8, !tbaa !20, !noalias !361
  %i.bg = sext i32 %i.ba to i64
  %i.bh = mul i64 %i.bf, %i.bg
  %i.bi = load i64, ptr %i.z, align 8, !tbaa !59, !noalias !361 ; 4 uses
  %i.bj = mul i64 %i.bh, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bj ; 4 uses
  %i.bl = load i32, ptr %i.aa, align 8, !tbaa !60, !noalias !361
  %i.bm = load ptr, ptr %i.ab, align 8, !tbaa !17, !noalias !361
  %i.bn = sext i32 %i.bb to i64
  %i.bo = sext i32 %i.bc to i64
  %i.bp = mul nsw i64 %i.bo, %i.bn                ; 2 uses
  %i.bq = mul i64 %i.bi, %i.bp
  %i.br = add i64 %i.bq, 15
  %i.bs = and i64 %i.br, -16
  %i.bt = udiv i64 %i.bs, %i.bi
  %i.bu = load i32, ptr %i.ac, align 8, !tbaa !87, !noalias !361 ; 2 uses
  %i.bv = add nsw i32 %i.bu, -1
  %i.bw = icmp eq i32 %i.bu, 4
  %spec.select = select i1 %i.bw, i64 %i.bp, i64 %i.bt
  store ptr %i.bk, ptr %17, align 8, !tbaa !18
  store ptr null, ptr %i.l, align 8, !tbaa !11
  store i64 %i.bi, ptr %i.m, align 8, !tbaa !59
  store i32 %i.bl, ptr %i.n, align 8, !tbaa !60
  store ptr %i.bm, ptr %i.o, align 8, !tbaa !17
  store i32 %i.bv, ptr %i.p, align 8, !tbaa !87
  store i32 %i.bb, ptr %i.q, align 4, !tbaa !88
  store i32 %i.bc, ptr %i.r, align 8, !tbaa !90
  store i32 1, ptr %i.s, align 4, !tbaa !364
  store i32 %i.bd, ptr %i.t, align 8, !tbaa !51
  store i64 %spec.select, ptr %i.u, align 8, !tbaa !20
  %.pr = load i32, ptr %10, align 4, !tbaa !45
  %i.bx = icmp eq i32 %.pr, 3
  br i1 %i.bx, label %bb.g, label %.thread

bb.g:                                             ; preds = %.noexc100
  call fastcc void @_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr %i.bk, i32 noundef %i.an, i32 noundef %.sroa.speculated183, i32 noundef %i.ap, i32 noundef %.sroa.speculated179)
  %.pre = load i32, ptr %10, align 4, !tbaa !45
  %i.by = icmp eq i32 %.pre, 3
  %i.bz = select i1 %i.by, ptr %17, ptr %13
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.e, %.noexc100
  %.val107 = phi ptr [ %i.bk, %bb.g ], [ null, %bb.e ], [ %i.bk, %.noexc100 ] ; 2 uses
  %i.ca = phi ptr [ %i.bz, %bb.g ], [ %13, %bb.e ], [ %13, %.noexc100 ]
  %i.cb = load i32, ptr %8, align 4, !tbaa !45    ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %_ZN4ncnn3MatD2Ev.exit67.lr.ph, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit67.lr.ph:                    ; preds = %.thread
  %.pre192 = load i32, ptr %9, align 4, !tbaa !45
  br label %_ZN4ncnn3MatD2Ev.exit67

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit67, %.thread
  %i.cd = load i32, ptr %11, align 4, !tbaa !45
  %.not62 = icmp eq i32 %i.cd, 0
  br i1 %.not62, label %_ZN4ncnn3MatD2Ev.exit, label %bb.h

_ZN4ncnn3MatD2Ev.exit67:                          ; preds = %_ZN4ncnn3MatD2Ev.exit67.lr.ph, %_ZN4ncnn3MatD2Ev.exit67
  %i.ce = phi i32 [ %.pre192, %_ZN4ncnn3MatD2Ev.exit67.lr.ph ], [ %i.dq, %_ZN4ncnn3MatD2Ev.exit67 ] ; 3 uses
  %i.cf = phi i32 [ %i.cb, %_ZN4ncnn3MatD2Ev.exit67.lr.ph ], [ %i.ds, %_ZN4ncnn3MatD2Ev.exit67 ] ; 2 uses
  %.060186 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit67.lr.ph ], [ %i.dr, %_ZN4ncnn3MatD2Ev.exit67 ] ; 5 uses
  %i.cg = sub nsw i32 %i.cf, %.060186
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ce, i32 %i.cg)
  %i.ch = load i32, ptr %4, align 4, !tbaa !45
  %i.ci = sdiv i32 %i.an, %i.ch
  %i.cj = load i32, ptr %i.ad, align 4, !tbaa !88, !noalias !365
  %i.ck = load ptr, ptr %14, align 8, !tbaa !18, !noalias !365
  %i.cl = load i64, ptr %i.ae, align 8, !tbaa !20, !noalias !365
  %i.cm = sext i32 %i.ci to i64
  %i.cn = mul i64 %i.cl, %i.cm
  %i.co = load i64, ptr %i.af, align 8, !tbaa !59, !noalias !365 ; 2 uses
  %i.cp = mul i64 %i.cn, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cp
  %i.cr = sext i32 %i.cj to i64
  %i.cs = sdiv i32 %.060186, %i.ce
  %i.ct = sext i32 %i.cs to i64                   ; 2 uses
  %i.cu = mul i64 %i.co, %i.cr
  %i.cv = mul i64 %i.cu, %i.ct
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cv
  %i.cx = load i32, ptr %5, align 4, !tbaa !45
  %i.cy = sdiv i32 %i.ap, %i.cx
  %i.cz = load i32, ptr %i.ag, align 4, !tbaa !88, !noalias !368
  %i.da = load ptr, ptr %15, align 8, !tbaa !18, !noalias !368
  %i.db = load i64, ptr %i.ah, align 8, !tbaa !20, !noalias !368
  %i.dc = sext i32 %i.cy to i64
  %i.dd = mul i64 %i.db, %i.dc
  %i.de = load i64, ptr %i.ai, align 8, !tbaa !59, !noalias !368 ; 2 uses
  %i.df = mul i64 %i.dd, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.df
  %i.dh = sext i32 %i.cz to i64
  %i.di = mul i64 %i.de, %i.dh
  %i.dj = mul i64 %i.di, %i.ct
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dj
  %i.dl = load i32, ptr %11, align 4, !tbaa !45
  %.not63 = icmp eq i32 %i.dl, 0
  %i.dm = add nsw i32 %i.ce, %.060186
  %i.dn = icmp sge i32 %i.dm, %i.cf
  %i.do = select i1 %.not63, i1 %i.dn, i1 false
  %i.dp = load i32, ptr %10, align 4, !tbaa !45
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_S2_RS0_S3_iiiiiiib(ptr %i.cw, ptr %i.dk, ptr noundef nonnull align 8 dereferenceable(72) %i.ca, ptr %.val107, ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef %i.dp, i32 noundef %i.an, i32 noundef %.sroa.speculated183, i32 noundef %i.ap, i32 noundef %.sroa.speculated179, i32 noundef %.060186, i32 noundef %.sroa.speculated, i1 noundef zeroext %i.do)
  %i.dq = load i32, ptr %9, align 4, !tbaa !45    ; 2 uses
  %i.dr = add nsw i32 %i.dq, %.060186             ; 2 uses
  %i.ds = load i32, ptr %8, align 4, !tbaa !45    ; 2 uses
  %i.dt = icmp slt i32 %i.dr, %i.ds
  br i1 %i.dt, label %_ZN4ncnn3MatD2Ev.exit67, label %._crit_edge, !llvm.loop !371

bb.h:                                             ; preds = %._crit_edge
  call fastcc void @_ZN4ncnnL28transpose_unpack_output_tileERKNS_3MatERS0_iiii(ptr %.val107, ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef %i.an, i32 noundef %.sroa.speculated183, i32 noundef %i.ap, i32 noundef %.sroa.speculated179)
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.h, %._crit_edge
  %.pre196 = load i32, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #9
  %i.du = add nsw i32 %.0188, 1
  %.not.not = icmp slt i32 %.0188, %.pre196
  br i1 %.not.not, label %bb.c, label %._crit_edge190

._crit_edge190:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge190, %bb.a
  ret void

bb.j:                                             ; preds = %bb.f
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #26
  unreachable
}

declare noundef i32 @_ZN4ncnn18get_omp_thread_numEv() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_S2_RS0_S3_iiiiiiib(ptr nofree readonly %.0.val, ptr nofree readonly %.0.val1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree %.0.val3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i1 noundef zeroext %9) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !87
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 27 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.m = icmp sgt i32 %4, 7
  br i1 %i.m, label %.lr.ph1578, label %.preheader1433

.lr.ph1578:                                       ; preds = %bb.a
  %i.n = mul nsw i32 %i.b, %5
  %i.o = sext i32 %i.n to i64
  %i.p = add i32 %2, -1
  %or.cond = icmp ult i32 %i.p, 2                 ; 6 uses
  %i.q = icmp eq i32 %2, 4
  %i.r = sext i32 %5 to i64
  %i.s = sext i32 %3 to i64                       ; 2 uses
  %i.t = icmp sgt i32 %6, 11
  %i.u = icmp eq i32 %7, 0                        ; 5 uses
  %i.v = icmp eq i32 %2, 0                        ; 5 uses
  %i.w = icmp sgt i32 %8, 0                       ; 5 uses
  %.idx2130 = shl i64 %i.k, 3                     ; 5 uses
  %.idx2131 = mul i64 %i.k, 12                    ; 5 uses
  %.idx2132 = shl i64 %i.k, 4                     ; 10 uses
  %.idx2133 = mul i64 %i.k, 20                    ; 5 uses
  %.idx2134 = mul i64 %i.k, 24                    ; 5 uses
  %.idx2135 = mul i64 %i.k, 28                    ; 5 uses
  %i.x = shl nsw i32 %8, 3
  %i.y = sext i32 %i.x to i64
  %i.z = add i32 %6, -12                          ; 2 uses
  %i.aa = urem i32 %i.z, 12
  %i.ab = sub nuw i32 %i.z, %i.aa
  %i.ac = add nuw nsw i32 %i.ab, 12
  %i.ad = add i32 %8, -1                          ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 4 uses
  %i.af = shl nuw nsw i64 %i.ae, 5
  %i.ag = shl nuw nsw i64 %i.ae, 4
  %i.ah = shl nuw nsw i64 %i.ae, 3
  %i.ai = shl nuw nsw i64 %i.ae, 2
  %i.aj = zext nneg i32 %4 to i64
  %xtraiter = and i32 %8, 1
  %i.ak = icmp eq i32 %8, 1
  %unroll_iter = and i32 %8, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod3105 = trunc i32 %8 to i1
  %xtraiter3106 = and i32 %8, 1
  %i.al = icmp eq i32 %i.ad, 0
  %unroll_iter3110 = and i32 %8, 2147483646
  %lcmp.mod3107.not = icmp eq i32 %xtraiter3106, 0
  %lcmp.mod3109 = trunc i32 %8 to i1
  br label %bb.b

.preheader1433.loopexit:                          ; preds = %._crit_edge1570
  %i.am = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader1433

.preheader1433:                                   ; preds = %.preheader1433.loopexit, %bb.a
  %.01954.lcssa = phi i32 [ 0, %bb.a ], [ %i.am, %.preheader1433.loopexit ] ; 3 uses
  %.01930.lcssa = phi ptr [ %.0.val3, %bb.a ], [ %.51935.lcssa, %.preheader1433.loopexit ] ; 2 uses
  %.01913.lcssa = phi ptr [ %i.l, %bb.a ], [ %.15.lcssa, %.preheader1433.loopexit ] ; 2 uses
  %.01909.lcssa = phi ptr [ %.0.val, %bb.a ], [ %i.aed, %.preheader1433.loopexit ] ; 2 uses
  %i.an = or disjoint i32 %.01954.lcssa, 3
  %i.ao = icmp slt i32 %i.an, %4
  br i1 %i.ao, label %.lr.ph1725, label %.preheader1428

.lr.ph1725:                                       ; preds = %.preheader1433
  %i.ap = mul nsw i32 %i.b, %5
  %i.aq = sext i32 %i.ap to i64
  %i.ar = add i32 %2, -1
  %or.cond13 = icmp ult i32 %i.ar, 2              ; 6 uses
  %i.as = icmp eq i32 %2, 4
  %i.at = sext i32 %5 to i64
  %i.au = sext i32 %3 to i64                      ; 2 uses
  %i.av = icmp sgt i32 %6, 11
  %i.aw = icmp eq i32 %7, 0                       ; 5 uses
  %i.ax = icmp eq i32 %2, 0                       ; 5 uses
  %i.ay = icmp sgt i32 %8, 0                      ; 5 uses
  %.idx2099 = shl i64 %i.k, 3                     ; 5 uses
  %.idx2100 = mul i64 %i.k, 12                    ; 5 uses
  %i.az = shl nsw i32 %8, 2
  %i.ba = sext i32 %i.az to i64
  %i.bb = add i32 %6, -12                         ; 2 uses
  %i.bc = urem i32 %i.bb, 12
  %i.bd = sub nuw i32 %i.bb, %i.bc
  %i.be = add nuw nsw i32 %i.bd, 12
  %i.bf = add i32 %8, -1                          ; 2 uses
  %i.bg = zext i32 %i.bf to i64                   ; 4 uses
  %i.bh = shl nuw nsw i64 %i.bg, 5
  %i.bi = shl nuw nsw i64 %i.bg, 4
  %i.bj = shl nuw nsw i64 %i.bg, 3
  %i.bk = shl nuw nsw i64 %i.bg, 2
  %i.bl = zext nneg i32 %.01954.lcssa to i64
  %i.bm = sext i32 %4 to i64
  %invariant.op = add nsw i64 %i.bm, -3
  %xtraiter3112 = and i32 %8, 1
  %i.bn = icmp eq i32 %8, 1
  %unroll_iter3117 = and i32 %8, 2147483646
  %lcmp.mod3113.not = icmp eq i32 %xtraiter3112, 0
  %lcmp.mod3116 = trunc i32 %8 to i1
  %xtraiter3119 = and i32 %8, 3                   ; 3 uses
  %i.bo = icmp ult i32 %i.bf, 3
  %unroll_iter3123 = and i32 %8, 2147483644
  %lcmp.mod3120.not = icmp eq i32 %xtraiter3119, 0
  %lcmp.mod3122 = icmp ne i32 %xtraiter3119, 0
  br label %bb.bo

bb.b:                                             ; preds = %.lr.ph1578, %._crit_edge1570
  %indvars.iv = phi i64 [ 0, %.lr.ph1578 ], [ %indvars.iv.next, %._crit_edge1570 ] ; 3 uses
  %.019091576 = phi ptr [ %.0.val, %.lr.ph1578 ], [ %i.aed, %._crit_edge1570 ] ; 8 uses
  %.019131575 = phi ptr [ %i.l, %.lr.ph1578 ], [ %.15.lcssa, %._crit_edge1570 ] ; 2 uses
  %.019301574 = phi ptr [ %.0.val3, %.lr.ph1578 ], [ %.51935.lcssa, %._crit_edge1570 ] ; 2 uses
  %i.bp = load ptr, ptr %1, align 8, !tbaa !18
  %i.bq = add nsw i64 %indvars.iv, %i.s
  %i.br = mul i64 %i.k, %i.bq
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.br
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.o ; 2 uses
  %.not2101 = icmp eq ptr %.019131575, null
  br i1 %.not2101, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %or.cond, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.bu = load ptr, ptr %0, align 8, !tbaa !18
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.s
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bx = load ptr, ptr %0, align 8, !tbaa !18
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.r
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.d, %bb.e, %bb.b
  %.21915 = phi ptr [ %i.by, %bb.e ], [ %.019131575, %bb.d ], [ null, %bb.b ], [ %i.bw, %.thread ] ; 2 uses
  br i1 %i.t, label %.lr.ph1471, label %.preheader1437

.preheader1437:                                   ; preds = %.thread1084, %bb.f
  %.01988.lcssa = phi i32 [ 0, %bb.f ], [ %i.ac, %.thread1084 ] ; 3 uses
  %.01978.lcssa = phi ptr [ %.0.val1, %bb.f ], [ %.11979.lcssa, %.thread1084 ] ; 2 uses
  %.01958.lcssa = phi ptr [ %i.bt, %bb.f ], [ %.31961, %.thread1084 ] ; 2 uses
  %.11931.lcssa = phi ptr [ %.019301574, %bb.f ], [ %i.na, %.thread1084 ] ; 2 uses
  %.31916.lcssa = phi ptr [ %.21915, %bb.f ], [ %.51918, %.thread1084 ] ; 2 uses
  %i.bz = add nuw nsw i32 %.01988.lcssa, 7
  %i.ca = icmp slt i32 %i.bz, %6
  br i1 %i.ca, label %.lr.ph1504, label %.preheader1436

.lr.ph1471:                                       ; preds = %bb.f, %.thread1084
  %.319161469 = phi ptr [ %.51918, %.thread1084 ], [ %.21915, %bb.f ] ; 33 uses
  %.119311468 = phi ptr [ %i.na, %.thread1084 ], [ %.019301574, %bb.f ] ; 25 uses
  %.019581467 = phi ptr [ %.31961, %.thread1084 ], [ %i.bt, %bb.f ] ; 33 uses
  %.019781466 = phi ptr [ %.11979.lcssa, %.thread1084 ], [ %.0.val1, %bb.f ] ; 2 uses
  %.019881465 = phi i32 [ %i.nb, %.thread1084 ], [ 0, %bb.f ] ; 2 uses
  br i1 %i.u, label %bb.g, label %bb.n

bb.g:                                             ; preds = %.lr.ph1471
  %.not2128 = icmp eq ptr %.319161469, null
  br i1 %.not2128, label %.thread1067, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.v, label %.thread1039, label %bb.i

.thread1039:                                      ; preds = %bb.h
  %i.cb = load float, ptr %.319161469, align 4, !tbaa !68
  %i.cc = insertelement <8 x float> poison, float %i.cb, i64 0
  %i.cd = shufflevector <8 x float> %i.cc, <8 x float> poison, <8 x i32> zeroinitializer ; 12 uses
  br label %.thread1067

bb.i:                                             ; preds = %bb.h
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ce = load <8 x float>, ptr %.319161469, align 1, !tbaa !116 ; 12 uses
  br label %.thread1067

bb.k:                                             ; preds = %bb.i
  switch i32 %2, label %.thread1067 [
    i32 3, label %bb.l
    i32 4, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.cf = load <8 x float>, ptr %.319161469, align 1, !tbaa !116
  %i.cg = getelementptr inbounds nuw i8, ptr %.319161469, i64 32
  %i.ch = load <8 x float>, ptr %i.cg, align 1, !tbaa !116
  %i.ci = getelementptr inbounds nuw i8, ptr %.319161469, i64 64
  %i.cj = load <8 x float>, ptr %i.ci, align 1, !tbaa !116
  %i.ck = getelementptr inbounds nuw i8, ptr %.319161469, i64 96
  %i.cl = load <8 x float>, ptr %i.ck, align 1, !tbaa !116
  %i.cm = getelementptr inbounds nuw i8, ptr %.319161469, i64 128
  %i.cn = load <8 x float>, ptr %i.cm, align 1, !tbaa !116
  %i.co = getelementptr inbounds nuw i8, ptr %.319161469, i64 160
  %i.cp = load <8 x float>, ptr %i.co, align 1, !tbaa !116
  %i.cq = getelementptr inbounds nuw i8, ptr %.319161469, i64 192
  %i.cr = load <8 x float>, ptr %i.cq, align 1, !tbaa !116
  %i.cs = getelementptr inbounds nuw i8, ptr %.319161469, i64 224
  %i.ct = load <8 x float>, ptr %i.cs, align 1, !tbaa !116
  %i.cu = getelementptr inbounds nuw i8, ptr %.319161469, i64 256
  %i.cv = load <8 x float>, ptr %i.cu, align 1, !tbaa !116
  %i.cw = getelementptr inbounds nuw i8, ptr %.319161469, i64 288
  %i.cx = load <8 x float>, ptr %i.cw, align 1, !tbaa !116
  %i.cy = getelementptr inbounds nuw i8, ptr %.319161469, i64 320
  %i.cz = load <8 x float>, ptr %i.cy, align 1, !tbaa !116
  %i.da = getelementptr inbounds nuw i8, ptr %.319161469, i64 352
  %i.db = load <8 x float>, ptr %i.da, align 1, !tbaa !116
  %i.dc = getelementptr inbounds nuw i8, ptr %.319161469, i64 384
  br label %.thread1067

bb.m:                                             ; preds = %bb.k
  %i.dd = load float, ptr %.319161469, align 4, !tbaa !68
  %i.de = insertelement <8 x float> poison, float %i.dd, i64 0
  %i.df = shufflevector <8 x float> %i.de, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dg = getelementptr inbounds nuw i8, ptr %.319161469, i64 4
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !68
  %i.di = insertelement <8 x float> poison, float %i.dh, i64 0
  %i.dj = shufflevector <8 x float> %i.di, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dk = getelementptr inbounds nuw i8, ptr %.319161469, i64 8
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !68
  %i.dm = insertelement <8 x float> poison, float %i.dl, i64 0
  %i.dn = shufflevector <8 x float> %i.dm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.do = getelementptr inbounds nuw i8, ptr %.319161469, i64 12
  %i.dp = load float, ptr %i.do, align 4, !tbaa !68
  %i.dq = insertelement <8 x float> poison, float %i.dp, i64 0
  %i.dr = shufflevector <8 x float> %i.dq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ds = getelementptr inbounds nuw i8, ptr %.319161469, i64 16
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !68
  %i.du = insertelement <8 x float> poison, float %i.dt, i64 0
  %i.dv = shufflevector <8 x float> %i.du, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dw = getelementptr inbounds nuw i8, ptr %.319161469, i64 20
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !68
  %i.dy = insertelement <8 x float> poison, float %i.dx, i64 0
  %i.dz = shufflevector <8 x float> %i.dy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ea = getelementptr inbounds nuw i8, ptr %.319161469, i64 24
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !68
  %i.ec = insertelement <8 x float> poison, float %i.eb, i64 0
  %i.ed = shufflevector <8 x float> %i.ec, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ee = getelementptr inbounds nuw i8, ptr %.319161469, i64 28
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !68
  %i.eg = insertelement <8 x float> poison, float %i.ef, i64 0
  %i.eh = shufflevector <8 x float> %i.eg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ei = getelementptr inbounds nuw i8, ptr %.319161469, i64 32
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !68
  %i.ek = insertelement <8 x float> poison, float %i.ej, i64 0
  %i.el = shufflevector <8 x float> %i.ek, <8 x float> poison, <8 x i32> zeroinitializer
  %i.em = getelementptr inbounds nuw i8, ptr %.319161469, i64 36
  %i.en = load float, ptr %i.em, align 4, !tbaa !68
  %i.eo = insertelement <8 x float> poison, float %i.en, i64 0
  %i.ep = shufflevector <8 x float> %i.eo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.eq = getelementptr inbounds nuw i8, ptr %.319161469, i64 40
  %i.er = load float, ptr %i.eq, align 4, !tbaa !68
  %i.es = insertelement <8 x float> poison, float %i.er, i64 0
  %i.et = shufflevector <8 x float> %i.es, <8 x float> poison, <8 x i32> zeroinitializer
  %i.eu = getelementptr inbounds nuw i8, ptr %.319161469, i64 44
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !68
  %i.ew = insertelement <8 x float> poison, float %i.ev, i64 0
  %i.ex = shufflevector <8 x float> %i.ew, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ey = getelementptr inbounds nuw i8, ptr %.319161469, i64 48
  br label %.thread1067

bb.n:                                             ; preds = %.lr.ph1471
  %i.ez = load <8 x float>, ptr %.119311468, align 32, !tbaa !116
  %i.fa = getelementptr inbounds nuw i8, ptr %.119311468, i64 32
  %i.fb = load <8 x float>, ptr %i.fa, align 32, !tbaa !116
  %i.fc = getelementptr inbounds nuw i8, ptr %.119311468, i64 64
  %i.fd = load <8 x float>, ptr %i.fc, align 32, !tbaa !116
  %i.fe = getelementptr inbounds nuw i8, ptr %.119311468, i64 96
  %i.ff = load <8 x float>, ptr %i.fe, align 32, !tbaa !116
  %i.fg = getelementptr inbounds nuw i8, ptr %.119311468, i64 128
  %i.fh = load <8 x float>, ptr %i.fg, align 32, !tbaa !116
  %i.fi = getelementptr inbounds nuw i8, ptr %.119311468, i64 160
  %i.fj = load <8 x float>, ptr %i.fi, align 32, !tbaa !116
  %i.fk = getelementptr inbounds nuw i8, ptr %.119311468, i64 192
  %i.fl = load <8 x float>, ptr %i.fk, align 32, !tbaa !116
  %i.fm = getelementptr inbounds nuw i8, ptr %.119311468, i64 224
  %i.fn = load <8 x float>, ptr %i.fm, align 32, !tbaa !116
  %i.fo = getelementptr inbounds nuw i8, ptr %.119311468, i64 256
  %i.fp = load <8 x float>, ptr %i.fo, align 32, !tbaa !116
  %i.fq = getelementptr inbounds nuw i8, ptr %.119311468, i64 288
  %i.fr = load <8 x float>, ptr %i.fq, align 32, !tbaa !116
  %i.fs = getelementptr inbounds nuw i8, ptr %.119311468, i64 320
  %i.ft = load <8 x float>, ptr %i.fs, align 32, !tbaa !116
  %i.fu = getelementptr inbounds nuw i8, ptr %.119311468, i64 352
end_hunk_1
begin_hunk_2_@_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_S2_RS0_S3_iiiiiiib:bb.a

bb.bc:                                            ; preds = %.lr.ph1569
  %.not2102 = icmp eq ptr %.151568, null
  br i1 %.not2102, label %.thread1171, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.v, label %.thread1164, label %bb.be

.thread1164:                                      ; preds = %bb.bd
  %i.acg = load float, ptr %.151568, align 4, !tbaa !68
  %i.ach = insertelement <8 x float> poison, float %i.acg, i64 0
  %i.aci = shufflevector <8 x float> %i.ach, <8 x float> poison, <8 x i32> zeroinitializer
  br label %.thread1171

bb.be:                                            ; preds = %bb.bd
  br i1 %or.cond, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.acj = load <8 x float>, ptr %.151568, align 1, !tbaa !116
  br label %.thread1171

bb.bg:                                            ; preds = %bb.be
  switch i32 %2, label %.thread1171 [
    i32 3, label %bb.bh
    i32 4, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.ack = load <8 x float>, ptr %.151568, align 1, !tbaa !116
  %i.acl = getelementptr inbounds nuw i8, ptr %.151568, i64 32
  br label %.thread1171

bb.bi:                                            ; preds = %bb.bg
  %i.acm = load float, ptr %.151568, align 4, !tbaa !68
  %i.acn = insertelement <8 x float> poison, float %i.acm, i64 0
  %i.aco = shufflevector <8 x float> %i.acn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.acp = getelementptr inbounds nuw i8, ptr %.151568, i64 4
  br label %.thread1171

bb.bj:                                            ; preds = %.lr.ph1569
  %i.acq = load <8 x float>, ptr %.519351567, align 32, !tbaa !116
  br label %.thread1171

.thread1171:                                      ; preds = %bb.bg, %bb.bf, %.thread1164, %bb.bh, %bb.bc, %bb.bi, %bb.bj
  %.3820 = phi nsz <8 x float> [ zeroinitializer, %bb.bc ], [ %i.aco, %bb.bi ], [ zeroinitializer, %bb.bg ], [ %i.acq, %bb.bj ], [ %i.ack, %bb.bh ], [ %i.aci, %.thread1164 ], [ %i.acj, %bb.bf ] ; 3 uses
  %.17 = phi ptr [ null, %bb.bc ], [ %i.acp, %bb.bi ], [ %.151568, %bb.bg ], [ %.151568, %bb.bj ], [ %i.acl, %bb.bh ], [ %.151568, %.thread1164 ], [ %.151568, %bb.bf ] ; 2 uses
  br i1 %i.w, label %.lr.ph1560.preheader, label %._crit_edge1561

.lr.ph1560.preheader:                             ; preds = %.thread1171
  br i1 %i.al, label %.lr.ph1560.epil.preheader, label %.lr.ph1560

.lr.ph1560:                                       ; preds = %.lr.ph1560.preheader, %.lr.ph1560
  %.919871559 = phi ptr [ %i.adg, %.lr.ph1560 ], [ %.819861565, %.lr.ph1560.preheader ] ; 3 uses
  %.020031558 = phi ptr [ %i.adf, %.lr.ph1560 ], [ %.019091576, %.lr.ph1560.preheader ] ; 3 uses
  %.48211556 = phi <8 x float> [ %i.ade, %.lr.ph1560 ], [ %.3820, %.lr.ph1560.preheader ]
  %niter3111 = phi i32 [ %niter3111.next.1, %.lr.ph1560 ], [ 0, %.lr.ph1560.preheader ]
  %i.acr = load <8 x float>, ptr %.020031558, align 32, !tbaa !116
  %i.acs = load float, ptr %.919871559, align 4, !tbaa !68
  %i.act = insertelement <8 x float> poison, float %i.acs, i64 0
  %i.acu = shufflevector <8 x float> %i.act, <8 x float> poison, <8 x i32> zeroinitializer
  %i.acv = fmul fast <8 x float> %i.acu, %i.acr
  %i.acw = fadd fast <8 x float> %i.acv, %.48211556
  %i.acx = getelementptr inbounds nuw i8, ptr %.020031558, i64 32
  %i.acy = getelementptr inbounds nuw i8, ptr %.919871559, i64 4
  %i.acz = load <8 x float>, ptr %i.acx, align 32, !tbaa !116
  %i.ada = load float, ptr %i.acy, align 4, !tbaa !68
  %i.adb = insertelement <8 x float> poison, float %i.ada, i64 0
  %i.adc = shufflevector <8 x float> %i.adb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.add = fmul fast <8 x float> %i.adc, %i.acz
  %i.ade = fadd fast <8 x float> %i.add, %i.acw   ; 3 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %.020031558, i64 64 ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %.919871559, i64 8 ; 2 uses
  %niter3111.next.1 = add nuw nsw i32 %niter3111, 2 ; 2 uses
  %niter3111.ncmp.1 = icmp eq i32 %niter3111.next.1, %unroll_iter3110
  br i1 %niter3111.ncmp.1, label %._crit_edge1561.loopexit.unr-lcssa, label %.lr.ph1560, !llvm.loop !380

._crit_edge1561.loopexit.unr-lcssa:               ; preds = %.lr.ph1560
  br i1 %lcmp.mod3107.not, label %._crit_edge1561.loopexit, label %.lr.ph1560.epil.preheader

.lr.ph1560.epil.preheader:                        ; preds = %._crit_edge1561.loopexit.unr-lcssa, %.lr.ph1560.preheader
  %.919871559.epil.init = phi ptr [ %.819861565, %.lr.ph1560.preheader ], [ %i.adg, %._crit_edge1561.loopexit.unr-lcssa ]
  %.020031558.epil.init = phi ptr [ %.019091576, %.lr.ph1560.preheader ], [ %i.adf, %._crit_edge1561.loopexit.unr-lcssa ]
  %.48211556.epil.init = phi <8 x float> [ %.3820, %.lr.ph1560.preheader ], [ %i.ade, %._crit_edge1561.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod3109)
  %i.adh = load <8 x float>, ptr %.020031558.epil.init, align 32, !tbaa !116
  %i.adi = load float, ptr %.919871559.epil.init, align 4, !tbaa !68
  %i.adj = insertelement <8 x float> poison, float %i.adi, i64 0
  %i.adk = shufflevector <8 x float> %i.adj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.adl = fmul fast <8 x float> %i.adk, %i.adh
  %i.adm = fadd fast <8 x float> %i.adl, %.48211556.epil.init
  br label %._crit_edge1561.loopexit

._crit_edge1561.loopexit:                         ; preds = %._crit_edge1561.loopexit.unr-lcssa, %.lr.ph1560.epil.preheader
  %.lcssa3100 = phi <8 x float> [ %i.ade, %._crit_edge1561.loopexit.unr-lcssa ], [ %i.adm, %.lr.ph1560.epil.preheader ]
  %i.adn = getelementptr i8, ptr %.819861565, i64 %i.ai
  %scevgep2287 = getelementptr i8, ptr %i.adn, i64 4
  br label %._crit_edge1561

._crit_edge1561:                                  ; preds = %._crit_edge1561.loopexit, %.thread1171
  %.4821.lcssa = phi <8 x float> [ %.3820, %.thread1171 ], [ %.lcssa3100, %._crit_edge1561.loopexit ] ; 12 uses
  %.91987.lcssa = phi ptr [ %.819861565, %.thread1171 ], [ %scevgep2287, %._crit_edge1561.loopexit ]
  br i1 %9, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %._crit_edge1561
  switch i32 %i.b, label %.thread1177 [
    i32 8, label %.thread1174
    i32 4, label %bb.bl
    i32 1, label %bb.bm
  ]

.thread1174:                                      ; preds = %bb.bk
  store <8 x float> %.4821.lcssa, ptr %.1619741566, align 32, !tbaa !116
  %i.ado = getelementptr inbounds nuw i8, ptr %.1619741566, i64 32
  br label %.thread1177

bb.bl:                                            ; preds = %bb.bk
  %i.adp = shufflevector <8 x float> %.4821.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.adp, ptr %.1619741566, align 16, !tbaa !116
  %i.adq = getelementptr inbounds nuw i8, ptr %.1619741566, i64 %.idx2132
  %i.adr = shufflevector <8 x float> %.4821.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.adr, ptr %i.adq, align 16, !tbaa !116
  %i.ads = getelementptr inbounds nuw i8, ptr %.1619741566, i64 16
  br label %.thread1177

bb.bm:                                            ; preds = %bb.bk
  %.sroa.0440.0.vec.extract = extractelement <8 x float> %.4821.lcssa, i64 0
  store float %.sroa.0440.0.vec.extract, ptr %.1619741566, align 4, !tbaa !68
  %.sroa.0440.4.vec.extract = extractelement <8 x float> %.4821.lcssa, i64 1
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %.1619741566, i64 %i.k
  store float %.sroa.0440.4.vec.extract, ptr %i.adt, align 4, !tbaa !68
  %.sroa.0440.8.vec.extract = extractelement <8 x float> %.4821.lcssa, i64 2
  %i.adu = getelementptr inbounds nuw i8, ptr %.1619741566, i64 %.idx2130
  store float %.sroa.0440.8.vec.extract, ptr %i.adu, align 4, !tbaa !68
  %.sroa.0440.12.vec.extract = extractelement <8 x float> %.4821.lcssa, i64 3
  %i.adv = getelementptr inbounds nuw i8, ptr %.1619741566, i64 %.idx2131
  store float %.sroa.0440.12.vec.extract, ptr %i.adv, align 4, !tbaa !68
  %.sroa.0440.16.vec.extract = extractelement <8 x float> %.4821.lcssa, i64 4
  %i.adw = getelementptr inbounds nuw i8, ptr %.1619741566, i64 %.idx2132
  store float %.sroa.0440.16.vec.extract, ptr %i.adw, align 4, !tbaa !68
  %.sroa.0440.20.vec.extract = extractelement <8 x float> %.4821.lcssa, i64 5
  %i.adx = getelementptr inbounds nuw i8, ptr %.1619741566, i64 %.idx2133
  store float %.sroa.0440.20.vec.extract, ptr %i.adx, align 4, !tbaa !68
  %.sroa.0440.24.vec.extract = extractelement <8 x float> %.4821.lcssa, i64 6
  %i.ady = getelementptr inbounds nuw i8, ptr %.1619741566, i64 %.idx2134
  store float %.sroa.0440.24.vec.extract, ptr %i.ady, align 4, !tbaa !68
  %.sroa.0440.28.vec.extract = extractelement <8 x float> %.4821.lcssa, i64 7
  %i.adz = getelementptr inbounds nuw i8, ptr %.1619741566, i64 %.idx2135
  store float %.sroa.0440.28.vec.extract, ptr %i.adz, align 4, !tbaa !68
  %i.aea = getelementptr inbounds nuw i8, ptr %.1619741566, i64 4
  br label %.thread1177

bb.bn:                                            ; preds = %._crit_edge1561
  store <8 x float> %.4821.lcssa, ptr %.519351567, align 32, !tbaa !116
  br label %.thread1177

.thread1177:                                      ; preds = %bb.bk, %bb.bl, %.thread1174, %bb.bm, %bb.bn
  %.191977 = phi ptr [ %i.aea, %bb.bm ], [ %.1619741566, %bb.bk ], [ %.1619741566, %bb.bn ], [ %i.ado, %.thread1174 ], [ %i.ads, %bb.bl ]
  %i.aeb = getelementptr inbounds nuw i8, ptr %.519351567, i64 32 ; 2 uses
  %i.aec = add nuw nsw i32 %.419921564, 1         ; 2 uses
  %exitcond2289.not = icmp eq i32 %i.aec, %6
  br i1 %exitcond2289.not, label %._crit_edge1570, label %.lr.ph1569, !llvm.loop !381

._crit_edge1570:                                  ; preds = %.thread1177, %.preheader1434
  %.51935.lcssa = phi ptr [ %.41934.lcssa, %.preheader1434 ], [ %i.aeb, %.thread1177 ] ; 2 uses
  %.15.lcssa = phi ptr [ %.121925.lcssa, %.preheader1434 ], [ %.17, %.thread1177 ] ; 2 uses
  %i.aed = getelementptr inbounds [4 x i8], ptr %.019091576, i64 %i.y ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %i.aee = or disjoint i64 %indvars.iv.next, 7
  %i.aef = icmp samesign ult i64 %i.aee, %i.aj
  br i1 %i.aef, label %bb.b, label %.preheader1433.loopexit, !llvm.loop !382

.preheader1428.loopexit:                          ; preds = %._crit_edge1718
  %i.aeg = trunc nuw nsw i64 %indvars.iv.next2302 to i32
  br label %.preheader1428

.preheader1428:                                   ; preds = %.preheader1428.loopexit, %.preheader1433
  %.11955.lcssa = phi i32 [ %.01954.lcssa, %.preheader1433 ], [ %i.aeg, %.preheader1428.loopexit ] ; 3 uses
  %.61936.lcssa = phi ptr [ %.01930.lcssa, %.preheader1433 ], [ %.111941.lcssa, %.preheader1428.loopexit ] ; 2 uses
  %.18.lcssa = phi ptr [ %.01913.lcssa, %.preheader1433 ], [ %.33.lcssa, %.preheader1428.loopexit ] ; 2 uses
  %.11910.lcssa = phi ptr [ %.01909.lcssa, %.preheader1433 ], [ %i.bdz, %.preheader1428.loopexit ] ; 2 uses
  %i.aeh = or disjoint i32 %.11955.lcssa, 1
  %i.aei = icmp slt i32 %i.aeh, %4
  br i1 %i.aei, label %.lr.ph1854, label %.preheader1423

.lr.ph1854:                                       ; preds = %.preheader1428
  %i.aej = sext i32 %5 to i64                     ; 2 uses
  %i.aek = add i32 %2, -1
  %or.cond25 = icmp ult i32 %i.aek, 2             ; 4 uses
  %i.ael = icmp eq i32 %2, 4
  %i.aem = sext i32 %3 to i64                     ; 2 uses
  %i.aen = icmp sgt i32 %6, 11
  %i.aeo = icmp eq i32 %7, 0                      ; 5 uses
  %i.aep = icmp eq i32 %2, 0                      ; 5 uses
  %i.aeq = icmp sgt i32 %8, 0                     ; 5 uses
  %or.cond33 = icmp ult i32 %2, 3                 ; 2 uses
  %i.aer = shl nsw i32 %8, 1
  %i.aes = sext i32 %i.aer to i64
  %i.aet = add i32 %6, -12                        ; 2 uses
  %i.aeu = urem i32 %i.aet, 12
  %i.aev = sub nuw i32 %i.aet, %i.aeu
  %i.aew = add nuw nsw i32 %i.aev, 12
  %i.aex = add i32 %8, -1
  %i.aey = zext i32 %i.aex to i64                 ; 4 uses
  %i.aez = shl nuw nsw i64 %i.aey, 5
  %i.afa = shl nuw nsw i64 %i.aey, 4
  %i.afb = shl nuw nsw i64 %i.aey, 3
  %i.afc = shl nuw nsw i64 %i.aey, 2
  %i.afd = zext nneg i32 %.11955.lcssa to i64
  %i.afe = sext i32 %4 to i64
  %invariant.op2542 = add nsw i64 %i.afe, -1
  %xtraiter3125 = and i32 %8, 1
  %i.aff = icmp eq i32 %8, 1
  %unroll_iter3131 = and i32 %8, 2147483646
  %lcmp.mod3127.not = icmp eq i32 %xtraiter3125, 0
  %lcmp.mod3130 = trunc i32 %8 to i1
  %i.afg = zext nneg i32 %8 to i64                ; 2 uses
  %min.iters.check2723 = icmp ult i32 %8, 4
  %n.vec2725 = and i64 %i.afg, 2147483644         ; 4 uses
  %i.afh = trunc nuw nsw i64 %n.vec2725 to i32
  %i.afi = shl nuw nsw i64 %n.vec2725, 3          ; 2 uses
  %cmp.n2742 = icmp eq i64 %n.vec2725, %i.afg
  %i.afj = zext nneg i32 %8 to i64                ; 2 uses
  %min.iters.check = icmp ult i32 %8, 8
  %n.vec = and i64 %i.afj, 2147483640             ; 5 uses
  %i.afk = trunc nuw nsw i64 %n.vec to i32
  %i.afl = shl nuw nsw i64 %n.vec, 3
  %i.afm = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %i.afj
  br label %bb.eb

bb.bo:                                            ; preds = %.lr.ph1725, %._crit_edge1718
  %indvars.iv2301 = phi i64 [ %i.bl, %.lr.ph1725 ], [ %indvars.iv.next2302, %._crit_edge1718 ] ; 3 uses
  %.119101724 = phi ptr [ %.01909.lcssa, %.lr.ph1725 ], [ %i.bdz, %._crit_edge1718 ] ; 8 uses
  %.181723 = phi ptr [ %.01913.lcssa, %.lr.ph1725 ], [ %.33.lcssa, %._crit_edge1718 ] ; 2 uses
  %.619361722 = phi ptr [ %.01930.lcssa, %.lr.ph1725 ], [ %.111941.lcssa, %._crit_edge1718 ] ; 2 uses
  %i.afn = load ptr, ptr %1, align 8, !tbaa !18
  %i.afo = add nsw i64 %indvars.iv2301, %i.au
  %i.afp = mul i64 %i.k, %i.afo
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %i.afn, i64 %i.afp
  %i.afr = getelementptr inbounds [4 x i8], ptr %i.afq, i64 %i.aq ; 2 uses
  %.not2088 = icmp eq ptr %.181723, null
  br i1 %.not2088, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  br i1 %or.cond13, label %.thread1179, label %bb.bq

.thread1179:                                      ; preds = %bb.bp
  %i.afs = load ptr, ptr %0, align 8, !tbaa !18
  %i.aft = getelementptr inbounds [4 x i8], ptr %i.afs, i64 %i.au
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %indvars.iv2301
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.as, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.afv = load ptr, ptr %0, align 8, !tbaa !18
  %i.afw = getelementptr inbounds [4 x i8], ptr %i.afv, i64 %i.at
  br label %bb.bs

bb.bs:                                            ; preds = %.thread1179, %bb.bq, %bb.br, %bb.bo
  %.20 = phi ptr [ %i.afw, %bb.br ], [ %.181723, %bb.bq ], [ null, %bb.bo ], [ %i.afu, %.thread1179 ] ; 2 uses
  br i1 %i.av, label %.lr.ph1619, label %.preheader1432

.preheader1432:                                   ; preds = %bb.ce, %bb.bs
  %.02030.lcssa = phi i32 [ 0, %bb.bs ], [ %i.be, %bb.ce ] ; 3 uses
  %.02020.lcssa = phi ptr [ %.0.val1, %bb.bs ], [ %.12021.lcssa, %bb.ce ] ; 2 uses
  %.02005.lcssa = phi ptr [ %i.afr, %bb.bs ], [ %.22007, %bb.ce ] ; 2 uses
  %.71937.lcssa = phi ptr [ %.619361722, %bb.bs ], [ %i.aoy, %bb.ce ] ; 2 uses
  %.21.lcssa = phi ptr [ %.20, %bb.bs ], [ %.23, %bb.ce ] ; 2 uses
  %i.afx = add nuw nsw i32 %.02030.lcssa, 7
  %i.afy = icmp slt i32 %i.afx, %6
  br i1 %i.afy, label %.lr.ph1652, label %.preheader1431

.lr.ph1619:                                       ; preds = %bb.bs, %bb.ce
  %.211617 = phi ptr [ %.23, %bb.ce ], [ %.20, %bb.bs ] ; 33 uses
  %.719371616 = phi ptr [ %i.aoy, %bb.ce ], [ %.619361722, %bb.bs ] ; 25 uses
  %.020051615 = phi ptr [ %.22007, %bb.ce ], [ %i.afr, %bb.bs ] ; 22 uses
  %.020201614 = phi ptr [ %.12021.lcssa, %bb.ce ], [ %.0.val1, %bb.bs ] ; 2 uses
  %.020301613 = phi i32 [ %i.aoz, %bb.ce ], [ 0, %bb.bs ] ; 2 uses
  br i1 %i.aw, label %bb.bt, label %bb.ca

bb.bt:                                            ; preds = %.lr.ph1619
  %.not2098 = icmp eq ptr %.211617, null
  br i1 %.not2098, label %.thread1210, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.ax, label %.thread1181, label %bb.bv

.thread1181:                                      ; preds = %bb.bu
  %i.afz = load float, ptr %.211617, align 4, !tbaa !68
  %i.aga = insertelement <4 x float> poison, float %i.afz, i64 0
  %i.agb = shufflevector <4 x float> %i.aga, <4 x float> poison, <4 x i32> zeroinitializer ; 12 uses
  br label %.thread1210

bb.bv:                                            ; preds = %bb.bu
  br i1 %or.cond13, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.agc = load <4 x float>, ptr %.211617, align 1, !tbaa !116 ; 12 uses
  br label %.thread1210

bb.bx:                                            ; preds = %bb.bv
  switch i32 %2, label %.thread1210 [
    i32 3, label %bb.by
    i32 4, label %bb.bz
  ]

bb.by:                                            ; preds = %bb.bx
  %i.agd = load <4 x float>, ptr %.211617, align 1, !tbaa !116
  %i.age = getelementptr inbounds nuw i8, ptr %.211617, i64 16
  %i.agf = load <4 x float>, ptr %i.age, align 1, !tbaa !116
  %i.agg = getelementptr inbounds nuw i8, ptr %.211617, i64 32
  %i.agh = load <4 x float>, ptr %i.agg, align 1, !tbaa !116
  %i.agi = getelementptr inbounds nuw i8, ptr %.211617, i64 48
  %i.agj = load <4 x float>, ptr %i.agi, align 1, !tbaa !116
  %i.agk = getelementptr inbounds nuw i8, ptr %.211617, i64 64
  %i.agl = load <4 x float>, ptr %i.agk, align 1, !tbaa !116
  %i.agm = getelementptr inbounds nuw i8, ptr %.211617, i64 80
  %i.agn = load <4 x float>, ptr %i.agm, align 1, !tbaa !116
  %i.ago = getelementptr inbounds nuw i8, ptr %.211617, i64 96
  %i.agp = load <4 x float>, ptr %i.ago, align 1, !tbaa !116
  %i.agq = getelementptr inbounds nuw i8, ptr %.211617, i64 112
  %i.agr = load <4 x float>, ptr %i.agq, align 1, !tbaa !116
  %i.ags = getelementptr inbounds nuw i8, ptr %.211617, i64 128
  %i.agt = load <4 x float>, ptr %i.ags, align 1, !tbaa !116
  %i.agu = getelementptr inbounds nuw i8, ptr %.211617, i64 144
  %i.agv = load <4 x float>, ptr %i.agu, align 1, !tbaa !116
  %i.agw = getelementptr inbounds nuw i8, ptr %.211617, i64 160
  %i.agx = load <4 x float>, ptr %i.agw, align 1, !tbaa !116
  %i.agy = getelementptr inbounds nuw i8, ptr %.211617, i64 176
  %i.agz = load <4 x float>, ptr %i.agy, align 1, !tbaa !116
  %i.aha = getelementptr inbounds nuw i8, ptr %.211617, i64 192
  br label %.thread1210

bb.bz:                                            ; preds = %bb.bx
  %i.ahb = load float, ptr %.211617, align 4, !tbaa !68
  %i.ahc = insertelement <4 x float> poison, float %i.ahb, i64 0
  %i.ahd = shufflevector <4 x float> %i.ahc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahe = getelementptr inbounds nuw i8, ptr %.211617, i64 4
  %i.ahf = load float, ptr %i.ahe, align 4, !tbaa !68
  %i.ahg = insertelement <4 x float> poison, float %i.ahf, i64 0
  %i.ahh = shufflevector <4 x float> %i.ahg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahi = getelementptr inbounds nuw i8, ptr %.211617, i64 8
  %i.ahj = load float, ptr %i.ahi, align 4, !tbaa !68
  %i.ahk = insertelement <4 x float> poison, float %i.ahj, i64 0
  %i.ahl = shufflevector <4 x float> %i.ahk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahm = getelementptr inbounds nuw i8, ptr %.211617, i64 12
  %i.ahn = load float, ptr %i.ahm, align 4, !tbaa !68
  %i.aho = insertelement <4 x float> poison, float %i.ahn, i64 0
  %i.ahp = shufflevector <4 x float> %i.aho, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahq = getelementptr inbounds nuw i8, ptr %.211617, i64 16
  %i.ahr = load float, ptr %i.ahq, align 4, !tbaa !68
  %i.ahs = insertelement <4 x float> poison, float %i.ahr, i64 0
  %i.aht = shufflevector <4 x float> %i.ahs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahu = getelementptr inbounds nuw i8, ptr %.211617, i64 20
  %i.ahv = load float, ptr %i.ahu, align 4, !tbaa !68
  %i.ahw = insertelement <4 x float> poison, float %i.ahv, i64 0
  %i.ahx = shufflevector <4 x float> %i.ahw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahy = getelementptr inbounds nuw i8, ptr %.211617, i64 24
  %i.ahz = load float, ptr %i.ahy, align 4, !tbaa !68
  %i.aia = insertelement <4 x float> poison, float %i.ahz, i64 0
  %i.aib = shufflevector <4 x float> %i.aia, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aic = getelementptr inbounds nuw i8, ptr %.211617, i64 28
  %i.aid = load float, ptr %i.aic, align 4, !tbaa !68
  %i.aie = insertelement <4 x float> poison, float %i.aid, i64 0
  %i.aif = shufflevector <4 x float> %i.aie, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aig = getelementptr inbounds nuw i8, ptr %.211617, i64 32
  %i.aih = load float, ptr %i.aig, align 4, !tbaa !68
  %i.aii = insertelement <4 x float> poison, float %i.aih, i64 0
  %i.aij = shufflevector <4 x float> %i.aii, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aik = getelementptr inbounds nuw i8, ptr %.211617, i64 36
  %i.ail = load float, ptr %i.aik, align 4, !tbaa !68
  %i.aim = insertelement <4 x float> poison, float %i.ail, i64 0
  %i.ain = shufflevector <4 x float> %i.aim, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aio = getelementptr inbounds nuw i8, ptr %.211617, i64 40
  %i.aip = load float, ptr %i.aio, align 4, !tbaa !68
  %i.aiq = insertelement <4 x float> poison, float %i.aip, i64 0
  %i.air = shufflevector <4 x float> %i.aiq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ais = getelementptr inbounds nuw i8, ptr %.211617, i64 44
  %i.ait = load float, ptr %i.ais, align 4, !tbaa !68
  %i.aiu = insertelement <4 x float> poison, float %i.ait, i64 0
  %i.aiv = shufflevector <4 x float> %i.aiu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aiw = getelementptr inbounds nuw i8, ptr %.211617, i64 48
  br label %.thread1210

bb.ca:                                            ; preds = %.lr.ph1619
  %i.aix = load <4 x float>, ptr %.719371616, align 16, !tbaa !116
  %i.aiy = getelementptr inbounds nuw i8, ptr %.719371616, i64 16
  %i.aiz = load <4 x float>, ptr %i.aiy, align 16, !tbaa !116
  %i.aja = getelementptr inbounds nuw i8, ptr %.719371616, i64 32
  %i.ajb = load <4 x float>, ptr %i.aja, align 16, !tbaa !116
  %i.ajc = getelementptr inbounds nuw i8, ptr %.719371616, i64 48
  %i.ajd = load <4 x float>, ptr %i.ajc, align 16, !tbaa !116
  %i.aje = getelementptr inbounds nuw i8, ptr %.719371616, i64 64
  %i.ajf = load <4 x float>, ptr %i.aje, align 16, !tbaa !116
  %i.ajg = getelementptr inbounds nuw i8, ptr %.719371616, i64 80
  %i.ajh = load <4 x float>, ptr %i.ajg, align 16, !tbaa !116
  %i.aji = getelementptr inbounds nuw i8, ptr %.719371616, i64 96
  %i.ajj = load <4 x float>, ptr %i.aji, align 16, !tbaa !116
  %i.ajk = getelementptr inbounds nuw i8, ptr %.719371616, i64 112
end_hunk_2
begin_hunk_3_@_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_S2_RS0_S3_iiiiiiib:bb.a
  %.not2089 = icmp eq ptr %.331716, null
  br i1 %.not2089, label %.thread1302, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  br i1 %i.ax, label %.thread1295, label %bb.dr

.thread1295:                                      ; preds = %bb.dq
  %i.bbs = load float, ptr %.331716, align 4, !tbaa !68
  %i.bbt = insertelement <4 x float> poison, float %i.bbs, i64 0
  %i.bbu = shufflevector <4 x float> %i.bbt, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.thread1302

bb.dr:                                            ; preds = %bb.dq
  br i1 %or.cond13, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.bbv = load <4 x float>, ptr %.331716, align 1, !tbaa !116
  br label %.thread1302

bb.dt:                                            ; preds = %bb.dr
  switch i32 %2, label %.thread1302 [
    i32 3, label %bb.du
    i32 4, label %bb.dv
  ]

bb.du:                                            ; preds = %bb.dt
  %i.bbw = load <4 x float>, ptr %.331716, align 1, !tbaa !116
  %i.bbx = getelementptr inbounds nuw i8, ptr %.331716, i64 16
  br label %.thread1302

bb.dv:                                            ; preds = %bb.dt
  %i.bby = load float, ptr %.331716, align 4, !tbaa !68
  %i.bbz = insertelement <4 x float> poison, float %i.bby, i64 0
  %i.bca = shufflevector <4 x float> %i.bbz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bcb = getelementptr inbounds nuw i8, ptr %.331716, i64 4
  br label %.thread1302

bb.dw:                                            ; preds = %.lr.ph1717
  %i.bcc = load <4 x float>, ptr %.1119411715, align 16, !tbaa !116
  br label %.thread1302

.thread1302:                                      ; preds = %bb.dt, %bb.ds, %.thread1295, %bb.du, %bb.dp, %bb.dv, %bb.dw
  %.31006 = phi nsz <4 x float> [ zeroinitializer, %bb.dp ], [ %i.bca, %bb.dv ], [ zeroinitializer, %bb.dt ], [ %i.bcc, %bb.dw ], [ %i.bbw, %bb.du ], [ %i.bbu, %.thread1295 ], [ %i.bbv, %bb.ds ] ; 3 uses
  %.35 = phi ptr [ null, %bb.dp ], [ %i.bcb, %bb.dv ], [ %.331716, %bb.dt ], [ %.331716, %bb.dw ], [ %i.bbx, %bb.du ], [ %.331716, %.thread1295 ], [ %.331716, %bb.ds ] ; 2 uses
  br i1 %i.ay, label %.lr.ph1708.preheader, label %._crit_edge1709

.lr.ph1708.preheader:                             ; preds = %.thread1302
  br i1 %i.bo, label %.lr.ph1708.epil.preheader, label %.lr.ph1708

.lr.ph1708:                                       ; preds = %.lr.ph1708.preheader, %.lr.ph1708
  %.920291707 = phi ptr [ %i.bdi, %.lr.ph1708 ], [ %.820281713, %.lr.ph1708.preheader ] ; 5 uses
  %.020451706 = phi ptr [ %i.bdh, %.lr.ph1708 ], [ %.119101724, %.lr.ph1708.preheader ] ; 5 uses
  %.410071704 = phi <4 x float> [ %i.bdg, %.lr.ph1708 ], [ %.31006, %.lr.ph1708.preheader ]
  %niter3124 = phi i32 [ %niter3124.next.3, %.lr.ph1708 ], [ 0, %.lr.ph1708.preheader ]
  %i.bcd = load <4 x float>, ptr %.020451706, align 16, !tbaa !116
  %i.bce = load float, ptr %.920291707, align 4, !tbaa !68
  %i.bcf = insertelement <4 x float> poison, float %i.bce, i64 0
  %i.bcg = shufflevector <4 x float> %i.bcf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bch = fmul fast <4 x float> %i.bcg, %i.bcd
  %i.bci = fadd fast <4 x float> %i.bch, %.410071704
  %i.bcj = getelementptr inbounds nuw i8, ptr %.020451706, i64 16
  %i.bck = getelementptr inbounds nuw i8, ptr %.920291707, i64 4
  %i.bcl = load <4 x float>, ptr %i.bcj, align 16, !tbaa !116
  %i.bcm = load float, ptr %i.bck, align 4, !tbaa !68
  %i.bcn = insertelement <4 x float> poison, float %i.bcm, i64 0
  %i.bco = shufflevector <4 x float> %i.bcn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bcp = fmul fast <4 x float> %i.bco, %i.bcl
  %i.bcq = fadd fast <4 x float> %i.bcp, %i.bci
  %i.bcr = getelementptr inbounds nuw i8, ptr %.020451706, i64 32
  %i.bcs = getelementptr inbounds nuw i8, ptr %.920291707, i64 8
  %i.bct = load <4 x float>, ptr %i.bcr, align 16, !tbaa !116
  %i.bcu = load float, ptr %i.bcs, align 4, !tbaa !68
  %i.bcv = insertelement <4 x float> poison, float %i.bcu, i64 0
  %i.bcw = shufflevector <4 x float> %i.bcv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bcx = fmul fast <4 x float> %i.bcw, %i.bct
  %i.bcy = fadd fast <4 x float> %i.bcx, %i.bcq
  %i.bcz = getelementptr inbounds nuw i8, ptr %.020451706, i64 48
  %i.bda = getelementptr inbounds nuw i8, ptr %.920291707, i64 12
  %i.bdb = load <4 x float>, ptr %i.bcz, align 16, !tbaa !116
  %i.bdc = load float, ptr %i.bda, align 4, !tbaa !68
  %i.bdd = insertelement <4 x float> poison, float %i.bdc, i64 0
  %i.bde = shufflevector <4 x float> %i.bdd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bdf = fmul fast <4 x float> %i.bde, %i.bdb
  %i.bdg = fadd fast <4 x float> %i.bdf, %i.bcy   ; 3 uses
  %i.bdh = getelementptr inbounds nuw i8, ptr %.020451706, i64 64 ; 2 uses
  %i.bdi = getelementptr inbounds nuw i8, ptr %.920291707, i64 16 ; 2 uses
  %niter3124.next.3 = add nuw nsw i32 %niter3124, 4 ; 2 uses
  %niter3124.ncmp.3 = icmp eq i32 %niter3124.next.3, %unroll_iter3123
  br i1 %niter3124.ncmp.3, label %._crit_edge1709.loopexit.unr-lcssa, label %.lr.ph1708, !llvm.loop !391

._crit_edge1709.loopexit.unr-lcssa:               ; preds = %.lr.ph1708
  br i1 %lcmp.mod3120.not, label %._crit_edge1709.loopexit, label %.lr.ph1708.epil.preheader

.lr.ph1708.epil.preheader:                        ; preds = %._crit_edge1709.loopexit.unr-lcssa, %.lr.ph1708.preheader
  %.920291707.epil.init = phi ptr [ %.820281713, %.lr.ph1708.preheader ], [ %i.bdi, %._crit_edge1709.loopexit.unr-lcssa ]
  %.020451706.epil.init = phi ptr [ %.119101724, %.lr.ph1708.preheader ], [ %i.bdh, %._crit_edge1709.loopexit.unr-lcssa ]
  %.410071704.epil.init = phi <4 x float> [ %.31006, %.lr.ph1708.preheader ], [ %i.bdg, %._crit_edge1709.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod3122)
  br label %.lr.ph1708.epil

.lr.ph1708.epil:                                  ; preds = %.lr.ph1708.epil, %.lr.ph1708.epil.preheader
  %.920291707.epil = phi ptr [ %i.bdq, %.lr.ph1708.epil ], [ %.920291707.epil.init, %.lr.ph1708.epil.preheader ] ; 2 uses
  %.020451706.epil = phi ptr [ %i.bdp, %.lr.ph1708.epil ], [ %.020451706.epil.init, %.lr.ph1708.epil.preheader ] ; 2 uses
  %.410071704.epil = phi <4 x float> [ %i.bdo, %.lr.ph1708.epil ], [ %.410071704.epil.init, %.lr.ph1708.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph1708.epil ], [ 0, %.lr.ph1708.epil.preheader ]
  %i.bdj = load <4 x float>, ptr %.020451706.epil, align 16, !tbaa !116
  %i.bdk = load float, ptr %.920291707.epil, align 4, !tbaa !68
  %i.bdl = insertelement <4 x float> poison, float %i.bdk, i64 0
  %i.bdm = shufflevector <4 x float> %i.bdl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bdn = fmul fast <4 x float> %i.bdm, %i.bdj
  %i.bdo = fadd fast <4 x float> %i.bdn, %.410071704.epil ; 2 uses
  %i.bdp = getelementptr inbounds nuw i8, ptr %.020451706.epil, i64 16
  %i.bdq = getelementptr inbounds nuw i8, ptr %.920291707.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter3119
  br i1 %epil.iter.cmp.not, label %._crit_edge1709.loopexit, label %.lr.ph1708.epil, !llvm.loop !392

._crit_edge1709.loopexit:                         ; preds = %.lr.ph1708.epil, %._crit_edge1709.loopexit.unr-lcssa
  %.lcssa3063 = phi <4 x float> [ %i.bdg, %._crit_edge1709.loopexit.unr-lcssa ], [ %i.bdo, %.lr.ph1708.epil ]
  %i.bdr = getelementptr i8, ptr %.820281713, i64 %i.bk
  %scevgep2298 = getelementptr i8, ptr %i.bdr, i64 4
  br label %._crit_edge1709

._crit_edge1709:                                  ; preds = %._crit_edge1709.loopexit, %.thread1302
  %.41007.lcssa = phi <4 x float> [ %.31006, %.thread1302 ], [ %.lcssa3063, %._crit_edge1709.loopexit ] ; 6 uses
  %.92029.lcssa = phi ptr [ %.820281713, %.thread1302 ], [ %scevgep2298, %._crit_edge1709.loopexit ]
  br i1 %9, label %bb.dx, label %bb.dz

bb.dx:                                            ; preds = %._crit_edge1709
  switch i32 %i.b, label %bb.ea [
    i32 4, label %.thread1305
    i32 1, label %bb.dy
  ]

.thread1305:                                      ; preds = %bb.dx
  store <4 x float> %.41007.lcssa, ptr %.1220171714, align 16, !tbaa !116
  %i.bds = getelementptr inbounds nuw i8, ptr %.1220171714, i64 16
  br label %bb.ea

bb.dy:                                            ; preds = %bb.dx
  %.sroa.0.0.vec.extract = extractelement <4 x float> %.41007.lcssa, i64 0
  store float %.sroa.0.0.vec.extract, ptr %.1220171714, align 4, !tbaa !68
  %.sroa.0.4.vec.extract = extractelement <4 x float> %.41007.lcssa, i64 1
  %i.bdt = getelementptr inbounds nuw [4 x i8], ptr %.1220171714, i64 %i.k
  store float %.sroa.0.4.vec.extract, ptr %i.bdt, align 4, !tbaa !68
  %.sroa.0.8.vec.extract = extractelement <4 x float> %.41007.lcssa, i64 2
  %i.bdu = getelementptr inbounds nuw i8, ptr %.1220171714, i64 %.idx2099
  store float %.sroa.0.8.vec.extract, ptr %i.bdu, align 4, !tbaa !68
  %.sroa.0.12.vec.extract = extractelement <4 x float> %.41007.lcssa, i64 3
  %i.bdv = getelementptr inbounds nuw i8, ptr %.1220171714, i64 %.idx2100
  store float %.sroa.0.12.vec.extract, ptr %i.bdv, align 4, !tbaa !68
  %i.bdw = getelementptr inbounds nuw i8, ptr %.1220171714, i64 4
  br label %bb.ea

bb.dz:                                            ; preds = %._crit_edge1709
  store <4 x float> %.41007.lcssa, ptr %.1119411715, align 16, !tbaa !116
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dx, %.thread1305, %bb.dy, %bb.dz
  %.142019 = phi ptr [ %i.bdw, %bb.dy ], [ %.1220171714, %bb.dx ], [ %.1220171714, %bb.dz ], [ %i.bds, %.thread1305 ]
  %i.bdx = getelementptr inbounds nuw i8, ptr %.1119411715, i64 16 ; 2 uses
  %i.bdy = add nuw nsw i32 %.420341712, 1         ; 2 uses
  %exitcond2300.not = icmp eq i32 %i.bdy, %6
  br i1 %exitcond2300.not, label %._crit_edge1718, label %.lr.ph1717, !llvm.loop !393

._crit_edge1718:                                  ; preds = %bb.ea, %.preheader1429
  %.111941.lcssa = phi ptr [ %.101940.lcssa, %.preheader1429 ], [ %i.bdx, %bb.ea ] ; 2 uses
  %.33.lcssa = phi ptr [ %.30.lcssa, %.preheader1429 ], [ %.35, %bb.ea ] ; 2 uses
  %i.bdz = getelementptr inbounds [4 x i8], ptr %.119101724, i64 %i.ba ; 2 uses
  %indvars.iv.next2302 = add nuw nsw i64 %indvars.iv2301, 4 ; 3 uses
  %i.bea = icmp slt i64 %indvars.iv.next2302, %invariant.op
  br i1 %i.bea, label %bb.bo, label %.preheader1428.loopexit, !llvm.loop !394

.preheader1423.loopexit:                          ; preds = %._crit_edge1847
  %i.beb = trunc nsw i64 %indvars.iv.next2315 to i32
  br label %.preheader1423

.preheader1423:                                   ; preds = %.preheader1423.loopexit, %.preheader1428
  %.21956.lcssa = phi i32 [ %.11955.lcssa, %.preheader1428 ], [ %i.beb, %.preheader1423.loopexit ] ; 2 uses
  %.121942.lcssa = phi ptr [ %.61936.lcssa, %.preheader1428 ], [ %.171947.lcssa, %.preheader1423.loopexit ]
  %.36.lcssa = phi ptr [ %.18.lcssa, %.preheader1428 ], [ %.51.lcssa, %.preheader1423.loopexit ]
  %.21911.lcssa = phi ptr [ %.11910.lcssa, %.preheader1428 ], [ %i.btw, %.preheader1423.loopexit ]
  %i.bec = icmp slt i32 %.21956.lcssa, %4
  br i1 %i.bec, label %.lr.ph2087, label %._crit_edge2088

.lr.ph2087:                                       ; preds = %.preheader1423
  %i.bed = sext i32 %5 to i64                     ; 2 uses
  %i.bee = add i32 %2, -1
  %or.cond37 = icmp ult i32 %i.bee, 2
  %i.bef = icmp eq i32 %2, 4
  %i.beg = sext i32 %3 to i64                     ; 2 uses
  %i.beh = icmp sgt i32 %6, 11
  %i.bei = icmp eq i32 %7, 0                      ; 5 uses
  %or.cond41 = icmp ult i32 %2, 3                 ; 5 uses
  %i.bej = add i32 %2, -3
  %or.cond43 = icmp ult i32 %i.bej, 2             ; 5 uses
  %i.bek = icmp sgt i32 %8, 3                     ; 5 uses
  %i.bel = sext i32 %8 to i64
  %i.bem = add i32 %8, -4                         ; 4 uses
  %i.ben = and i32 %i.bem, -4
  %i.beo = add nuw nsw i32 %i.ben, 4              ; 5 uses
  %i.bep = add i32 %6, -12                        ; 2 uses
  %i.beq = urem i32 %i.bep, 12
  %i.ber = sub nuw i32 %i.bep, %i.beq
  %i.bes = add nuw nsw i32 %i.ber, 12
  %i.bet = lshr i32 %i.bem, 2
  %i.beu = zext nneg i32 %i.bet to i64            ; 6 uses
  %i.bev = shl nuw nsw i64 %i.beu, 7
  %i.bew = shl nuw nsw i64 %i.beu, 6
  %i.bex = shl nuw nsw i64 %i.beu, 5
  %i.bey = shl nuw nsw i64 %i.beu, 4
  %i.bez = sext i32 %.21956.lcssa to i64
  %wide.trip.count = sext i32 %4 to i64
  %i.bfa = add nuw nsw i64 %i.beu, 1              ; 2 uses
  %min.iters.check2870 = icmp ult i32 %i.bem, 12
  %n.vec2872 = and i64 %i.bfa, 2147483644         ; 5 uses
  %i.bfb = trunc nuw nsw i64 %n.vec2872 to i32
  %i.bfc = shl i32 %i.bfb, 2
  %i.bfd = shl nuw nsw i64 %n.vec2872, 4
  %i.bfe = shl nuw nsw i64 %n.vec2872, 5
  %cmp.n2893 = icmp eq i64 %i.bfa, %n.vec2872
  %i.bff = add nuw nsw i64 %i.beu, 1              ; 2 uses
  %min.iters.check2795 = icmp ult i32 %i.bem, 28
  %n.vec2797 = and i64 %i.bff, 2147483640         ; 4 uses
  %i.bfg = trunc nuw nsw i64 %n.vec2797 to i32
  %i.bfh = shl i32 %i.bfg, 2
  %i.bfi = shl nuw nsw i64 %n.vec2797, 4          ; 2 uses
  %cmp.n2830 = icmp eq i64 %i.bff, %n.vec2797
  br label %bb.gj

bb.eb:                                            ; preds = %.lr.ph1854, %._crit_edge1847
  %indvars.iv2314 = phi i64 [ %i.afd, %.lr.ph1854 ], [ %indvars.iv.next2315, %._crit_edge1847 ] ; 3 uses
  %.219111853 = phi ptr [ %.11910.lcssa, %.lr.ph1854 ], [ %i.btw, %._crit_edge1847 ] ; 12 uses
  %.361852 = phi ptr [ %.18.lcssa, %.lr.ph1854 ], [ %.51.lcssa, %._crit_edge1847 ] ; 2 uses
  %.1219421851 = phi ptr [ %.61936.lcssa, %.lr.ph1854 ], [ %.171947.lcssa, %._crit_edge1847 ] ; 2 uses
  %i.bfj = load ptr, ptr %1, align 8, !tbaa !18
  %i.bfk = add nsw i64 %indvars.iv2314, %i.aem
  %i.bfl = mul i64 %i.k, %i.bfk
  %i.bfm = getelementptr inbounds nuw [4 x i8], ptr %i.bfj, i64 %i.bfl
  %i.bfn = getelementptr inbounds [4 x i8], ptr %i.bfm, i64 %i.aej ; 2 uses
  %.not2082 = icmp eq ptr %.361852, null
  br i1 %.not2082, label %bb.ef, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  br i1 %or.cond25, label %.thread1307, label %bb.ed

.thread1307:                                      ; preds = %bb.ec
  %i.bfo = load ptr, ptr %0, align 8, !tbaa !18
  %i.bfp = getelementptr inbounds [4 x i8], ptr %i.bfo, i64 %i.aem
  %i.bfq = getelementptr inbounds nuw [4 x i8], ptr %i.bfp, i64 %indvars.iv2314
  br label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  br i1 %i.ael, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.bfr = load ptr, ptr %0, align 8, !tbaa !18
  %i.bfs = getelementptr inbounds [4 x i8], ptr %i.bfr, i64 %i.aej
  br label %bb.ef

bb.ef:                                            ; preds = %.thread1307, %bb.ed, %bb.ee, %bb.eb
  %.38 = phi ptr [ %i.bfs, %bb.ee ], [ %.361852, %bb.ed ], [ null, %bb.eb ], [ %i.bfq, %.thread1307 ] ; 2 uses
  br i1 %i.aen, label %.lr.ph1754, label %.preheader1427

.preheader1427:                                   ; preds = %bb.eq, %bb.ef
  %.02067.lcssa = phi i32 [ 0, %bb.ef ], [ %i.aew, %bb.eq ] ; 3 uses
  %.02057.lcssa = phi ptr [ %.0.val1, %bb.ef ], [ %.12058.lcssa, %bb.eq ] ; 2 uses
  %.02047.lcssa = phi ptr [ %i.bfn, %bb.ef ], [ %.12048, %bb.eq ] ; 2 uses
  %.131943.lcssa = phi ptr [ %.1219421851, %bb.ef ], [ %i.bjm, %bb.eq ] ; 2 uses
  %.39.lcssa = phi ptr [ %.38, %bb.ef ], [ %.41, %bb.eq ] ; 2 uses
  %i.bft = add nuw nsw i32 %.02067.lcssa, 7
  %i.bfu = icmp slt i32 %i.bft, %6
  br i1 %i.bfu, label %.lr.ph1779, label %.preheader1426

.lr.ph1754:                                       ; preds = %bb.ef, %bb.eq
  %.391752 = phi ptr [ %.41, %bb.eq ], [ %.38, %bb.ef ] ; 19 uses
  %.1319431751 = phi ptr [ %i.bjm, %bb.eq ], [ %.1219421851, %bb.ef ] ; 13 uses
  %.020471750 = phi ptr [ %.12048, %bb.eq ], [ %i.bfn, %bb.ef ] ; 6 uses
  %.020571749 = phi ptr [ %.12058.lcssa, %bb.eq ], [ %.0.val1, %bb.ef ] ; 2 uses
  %.020671748 = phi i32 [ %i.bjn, %bb.eq ], [ 0, %bb.ef ] ; 2 uses
  br i1 %i.aeo, label %bb.eg, label %bb.en

bb.eg:                                            ; preds = %.lr.ph1754
  %.not2087 = icmp eq ptr %.391752, null
  br i1 %.not2087, label %.thread1326, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  br i1 %i.aep, label %.thread1309, label %bb.ei

.thread1309:                                      ; preds = %bb.eh
  %i.bfv = load float, ptr %.391752, align 4, !tbaa !68
  %i.bfw = insertelement <4 x float> poison, float %i.bfv, i64 0
  %i.bfx = shufflevector <4 x float> %i.bfw, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  br label %.thread1326

bb.ei:                                            ; preds = %bb.eh
  br i1 %or.cond25, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.bfy = load float, ptr %.391752, align 4, !tbaa !68
  %i.bfz = insertelement <4 x float> poison, float %i.bfy, i64 0
  %i.bga = shufflevector <4 x float> %i.bfz, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.bgb = getelementptr inbounds nuw i8, ptr %.391752, i64 4
  %i.bgc = load float, ptr %i.bgb, align 4, !tbaa !68
  %i.bgd = insertelement <4 x float> poison, float %i.bgc, i64 0
  %i.bge = shufflevector <4 x float> %i.bgd, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %.thread1326

bb.ek:                                            ; preds = %bb.ei
  switch i32 %2, label %.thread1326 [
    i32 3, label %bb.el
    i32 4, label %bb.em
  ]

bb.el:                                            ; preds = %bb.ek
  %i.bgf = load <4 x float>, ptr %.391752, align 1, !tbaa !116 ; 2 uses
  %i.bgg = getelementptr inbounds nuw i8, ptr %.391752, i64 16
  %i.bgh = load <4 x float>, ptr %i.bgg, align 1, !tbaa !116 ; 2 uses
  %i.bgi = getelementptr inbounds nuw i8, ptr %.391752, i64 32
  %i.bgj = load <4 x float>, ptr %i.bgi, align 1, !tbaa !116 ; 2 uses
  %i.bgk = getelementptr inbounds nuw i8, ptr %.391752, i64 48
  %i.bgl = load <4 x float>, ptr %i.bgk, align 1, !tbaa !116 ; 2 uses
  %i.bgm = getelementptr inbounds nuw i8, ptr %.391752, i64 64
  %i.bgn = load <4 x float>, ptr %i.bgm, align 1, !tbaa !116 ; 2 uses
  %i.bgo = getelementptr inbounds nuw i8, ptr %.391752, i64 80
  %i.bgp = load <4 x float>, ptr %i.bgo, align 1, !tbaa !116 ; 2 uses
  %i.bgq = shufflevector <4 x float> %i.bgf, <4 x float> %i.bgh, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bgr = shufflevector <4 x float> %i.bgj, <4 x float> %i.bgl, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bgs = shufflevector <4 x float> %i.bgn, <4 x float> %i.bgp, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bgt = shufflevector <4 x float> %i.bgf, <4 x float> %i.bgh, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bgu = shufflevector <4 x float> %i.bgj, <4 x float> %i.bgl, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bgv = shufflevector <4 x float> %i.bgn, <4 x float> %i.bgp, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bgw = getelementptr inbounds nuw i8, ptr %.391752, i64 96
  br label %.thread1326

bb.em:                                            ; preds = %bb.ek
  %i.bgx = load <4 x float>, ptr %.391752, align 1, !tbaa !116 ; 2 uses
  %i.bgy = getelementptr inbounds nuw i8, ptr %.391752, i64 16
  %i.bgz = load <4 x float>, ptr %i.bgy, align 1, !tbaa !116 ; 2 uses
  %i.bha = getelementptr inbounds nuw i8, ptr %.391752, i64 32
  %i.bhb = load <4 x float>, ptr %i.bha, align 1, !tbaa !116 ; 2 uses
  %i.bhc = getelementptr inbounds nuw i8, ptr %.391752, i64 48
  br label %.thread1326

bb.en:                                            ; preds = %.lr.ph1754
  %i.bhd = load <4 x float>, ptr %.1319431751, align 1, !tbaa !116 ; 2 uses
  %i.bhe = getelementptr inbounds nuw i8, ptr %.1319431751, i64 16
  %i.bhf = load <4 x float>, ptr %i.bhe, align 1, !tbaa !116 ; 2 uses
  %i.bhg = getelementptr inbounds nuw i8, ptr %.1319431751, i64 32
  %i.bhh = load <4 x float>, ptr %i.bhg, align 1, !tbaa !116 ; 2 uses
  %i.bhi = getelementptr inbounds nuw i8, ptr %.1319431751, i64 48
  %i.bhj = load <4 x float>, ptr %i.bhi, align 1, !tbaa !116 ; 2 uses
  %i.bhk = getelementptr inbounds nuw i8, ptr %.1319431751, i64 64
  %i.bhl = load <4 x float>, ptr %i.bhk, align 1, !tbaa !116 ; 2 uses
  %i.bhm = getelementptr inbounds nuw i8, ptr %.1319431751, i64 80
  %i.bhn = load <4 x float>, ptr %i.bhm, align 1, !tbaa !116 ; 2 uses
  %i.bho = shufflevector <4 x float> %i.bhd, <4 x float> %i.bhf, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bhp = shufflevector <4 x float> %i.bhh, <4 x float> %i.bhj, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bhq = shufflevector <4 x float> %i.bhl, <4 x float> %i.bhn, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bhr = shufflevector <4 x float> %i.bhd, <4 x float> %i.bhf, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bhs = shufflevector <4 x float> %i.bhh, <4 x float> %i.bhj, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bht = shufflevector <4 x float> %i.bhl, <4 x float> %i.bhn, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  br label %.thread1326

.thread1326:                                      ; preds = %bb.ek, %bb.ej, %.thread1309, %bb.el, %bb.eg, %bb.em, %bb.en
  %.31036 = phi nsz <4 x float> [ zeroinitializer, %bb.eg ], [ %i.bgx, %bb.em ], [ zeroinitializer, %bb.ek ], [ %i.bhr, %bb.en ], [ %i.bgt, %bb.el ], [ %i.bfx, %.thread1309 ], [ %i.bge, %bb.ej ] ; 2 uses
  %.31031 = phi nsz <4 x float> [ zeroinitializer, %bb.eg ], [ %i.bgz, %bb.em ], [ zeroinitializer, %bb.ek ], [ %i.bhs, %bb.en ], [ %i.bgu, %bb.el ], [ %i.bfx, %.thread1309 ], [ %i.bge, %bb.ej ] ; 2 uses
  %.31026 = phi nsz <4 x float> [ zeroinitializer, %bb.eg ], [ %i.bhb, %bb.em ], [ zeroinitializer, %bb.ek ], [ %i.bht, %bb.en ], [ %i.bgv, %bb.el ], [ %i.bfx, %.thread1309 ], [ %i.bge, %bb.ej ] ; 2 uses
  %.31021 = phi nsz <4 x float> [ zeroinitializer, %bb.eg ], [ %i.bhb, %bb.em ], [ zeroinitializer, %bb.ek ], [ %i.bhq, %bb.en ], [ %i.bgs, %bb.el ], [ %i.bfx, %.thread1309 ], [ %i.bga, %bb.ej ] ; 2 uses
  %.31016 = phi nsz <4 x float> [ zeroinitializer, %bb.eg ], [ %i.bgz, %bb.em ], [ zeroinitializer, %bb.ek ], [ %i.bhp, %bb.en ], [ %i.bgr, %bb.el ], [ %i.bfx, %.thread1309 ], [ %i.bga, %bb.ej ] ; 2 uses
  %.31011 = phi nsz <4 x float> [ zeroinitializer, %bb.eg ], [ %i.bgx, %bb.em ], [ zeroinitializer, %bb.ek ], [ %i.bho, %bb.en ], [ %i.bgq, %bb.el ], [ %i.bfx, %.thread1309 ], [ %i.bga, %bb.ej ] ; 2 uses
  %.41 = phi ptr [ null, %bb.eg ], [ %i.bhc, %bb.em ], [ %.391752, %bb.ek ], [ %.391752, %bb.en ], [ %i.bgw, %bb.el ], [ %.391752, %.thread1309 ], [ %.391752, %bb.ej ] ; 2 uses
  br i1 %i.aeq, label %.lr.ph1739, label %._crit_edge1740

.lr.ph1739:                                       ; preds = %.thread1326, %.lr.ph1739
  %.020391738 = phi i32 [ %i.biu, %.lr.ph1739 ], [ 0, %.thread1326 ]
  %.020401737 = phi ptr [ %i.bis, %.lr.ph1739 ], [ %.219111853, %.thread1326 ] ; 3 uses
  %.120581736 = phi ptr [ %i.bit, %.lr.ph1739 ], [ %.020571749, %.thread1326 ] ; 4 uses
  %.410121735 = phi <4 x float> [ %i.bid, %.lr.ph1739 ], [ %.31011, %.thread1326 ]
  %.410171734 = phi <4 x float> [ %i.bif, %.lr.ph1739 ], [ %.31016, %.thread1326 ]
  %.410221733 = phi <4 x float> [ %i.bih, %.lr.ph1739 ], [ %.31021, %.thread1326 ]
  %.410271732 = phi <4 x float> [ %i.bir, %.lr.ph1739 ], [ %.31026, %.thread1326 ]
  %.410321731 = phi <4 x float> [ %i.bip, %.lr.ph1739 ], [ %.31031, %.thread1326 ]
  %.410371730 = phi <4 x float> [ %i.bin, %.lr.ph1739 ], [ %.31036, %.thread1326 ]
  %i.bhu = load <4 x float>, ptr %.120581736, align 16, !tbaa !116 ; 2 uses
  %i.bhv = getelementptr inbounds nuw i8, ptr %.120581736, i64 16
  %i.bhw = load <4 x float>, ptr %i.bhv, align 16, !tbaa !116 ; 2 uses
  %i.bhx = getelementptr inbounds nuw i8, ptr %.120581736, i64 32
  %i.bhy = load <4 x float>, ptr %i.bhx, align 16, !tbaa !116 ; 2 uses
  %i.bhz = load float, ptr %.020401737, align 4, !tbaa !68
  %i.bia = insertelement <4 x float> poison, float %i.bhz, i64 0
  %i.bib = shufflevector <4 x float> %i.bia, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.bic = fmul fast <4 x float> %i.bib, %i.bhu
  %i.bid = fadd fast <4 x float> %i.bic, %.410121735 ; 2 uses
  %i.bie = fmul fast <4 x float> %i.bib, %i.bhw
  %i.bif = fadd fast <4 x float> %i.bie, %.410171734 ; 2 uses
  %i.big = fmul fast <4 x float> %i.bib, %i.bhy
  %i.bih = fadd fast <4 x float> %i.big, %.410221733 ; 2 uses
  %i.bii = getelementptr inbounds nuw i8, ptr %.020401737, i64 4
  %i.bij = load float, ptr %i.bii, align 4, !tbaa !68
  %i.bik = insertelement <4 x float> poison, float %i.bij, i64 0
  %i.bil = shufflevector <4 x float> %i.bik, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.bim = fmul fast <4 x float> %i.bil, %i.bhu
  %i.bin = fadd fast <4 x float> %i.bim, %.410371730 ; 2 uses
  %i.bio = fmul fast <4 x float> %i.bil, %i.bhw
end_hunk_3
begin_hunk_4_@_ZN4ncnnL19gemm_AT_BT_x86_int8ERKNS_3MatES2_S2_fS2_RS0_iiiiiffiiiiRKNS_6OptionE.omp_outlined:bb.a
bb.g:                                             ; preds = %bb.f
  %i.eh = load ptr, ptr %i.bd, align 8, !tbaa !17 ; 3 uses
  %.not3.i62 = icmp eq ptr %i.eh, null
  %i.ei = load ptr, ptr %16, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i62, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ej = load ptr, ptr %i.eh, align 8, !tbaa !9
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  invoke void %i.el(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr noundef %i.ei)
          to label %_ZN4ncnn3MatD2Ev.exit54 unwind label %bb.k, !inline_history !19

bb.i:                                             ; preds = %bb.g
  %.not.i76 = icmp eq ptr %i.ei, null
  br i1 %.not.i76, label %_ZN4ncnn3MatD2Ev.exit54, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.ei) #9
  br label %_ZN4ncnn3MatD2Ev.exit54

bb.k:                                             ; preds = %bb.h
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %i.em, 0
  call void @__clang_call_terminate(ptr %i.en) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit54:                          ; preds = %bb.f, %bb.e, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #9
  %i.eo = load ptr, ptr %i.ao, align 8, !tbaa !11 ; 2 uses
  %.not.i65 = icmp eq ptr %i.eo, null
  br i1 %.not.i65, label %_ZN4ncnn3MatD2Ev.exit53, label %bb.l

bb.l:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit54
  %i.ep = atomicrmw add ptr %i.eo, i32 -1 acq_rel, align 4
  %i.eq = icmp eq i32 %i.ep, 1
  br i1 %i.eq, label %bb.m, label %_ZN4ncnn3MatD2Ev.exit53

bb.m:                                             ; preds = %bb.l
  %i.er = load ptr, ptr %i.ar, align 8, !tbaa !17 ; 3 uses
  %.not3.i66 = icmp eq ptr %i.er, null
  %i.es = load ptr, ptr %15, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i66, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.et = load ptr, ptr %i.er, align 8, !tbaa !9
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8
  invoke void %i.ev(ptr noundef nonnull align 8 dereferenceable(8) %i.er, ptr noundef %i.es)
          to label %_ZN4ncnn3MatD2Ev.exit53 unwind label %bb.q, !inline_history !19

bb.o:                                             ; preds = %bb.m
  %.not.i74 = icmp eq ptr %i.es, null
  br i1 %.not.i74, label %_ZN4ncnn3MatD2Ev.exit53, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.es) #9
  br label %_ZN4ncnn3MatD2Ev.exit53

bb.q:                                             ; preds = %bb.n
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  call void @__clang_call_terminate(ptr %i.ex) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit53:                          ; preds = %bb.l, %_ZN4ncnn3MatD2Ev.exit54, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  %i.ey = add nsw i32 %.052137, %i.bj             ; 2 uses
  %i.ez = load i32, ptr %8, align 4, !tbaa !45    ; 2 uses
  %i.fa = icmp slt i32 %i.ey, %i.ez
  br i1 %i.fa, label %_ZN4ncnn3MatD2Ev.exit56, label %._crit_edge, !llvm.loop !677

bb.r:                                             ; preds = %._crit_edge
  %i.fb = load ptr, ptr %i.y, align 8, !tbaa !11  ; 2 uses
  %.not.i69 = icmp eq ptr %i.fb, null
  br i1 %.not.i69, label %_ZN4ncnn3MatD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fc = atomicrmw add ptr %i.fb, i32 -1 acq_rel, align 4
  %i.fd = icmp eq i32 %i.fc, 1
  br i1 %i.fd, label %bb.t, label %_ZN4ncnn3MatD2Ev.exit

bb.t:                                             ; preds = %bb.s
  %i.fe = load ptr, ptr %i.ab, align 8, !tbaa !17 ; 3 uses
  %.not3.i70 = icmp eq ptr %i.fe, null
  %i.ff = load ptr, ptr %14, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i70, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fg = load ptr, ptr %i.fe, align 8, !tbaa !9
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8
  invoke void %i.fi(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, ptr noundef %i.ff)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.x, !inline_history !19

bb.v:                                             ; preds = %bb.t
  %.not.i73 = icmp eq ptr %i.ff, null
  br i1 %.not.i73, label %_ZN4ncnn3MatD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef nonnull %i.ff) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.x:                                             ; preds = %bb.u
  %i.fj = landingpad { ptr, i32 }
          catch ptr null
  %i.fk = extractvalue { ptr, i32 } %i.fj, 0
  call void @__clang_call_terminate(ptr %i.fk) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.s, %bb.r, %bb.u, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  %i.fl = add nsw i32 %.0139, 1
  %i.fm = load i32, ptr %i.b, align 4, !tbaa !45
  %.not.not = icmp slt i32 %.0139, %i.fm
  br i1 %.not.not, label %bb.c, label %._crit_edge141

._crit_edge141:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge141, %bb.a
  ret void

.loopexit:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit56
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.z

.loopexit.split-lp:                               ; preds = %bb.c, %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.fn = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.fn) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #14 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn40gemm_transB_packed_tile_int8_avxvnniint8ERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
  %.not828 = icmp eq i32 %i.b, 0
  br i1 %.not828, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4ncnn36gemm_transB_packed_tile_int8_avxvnniERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.c = tail call noundef i32 @_ZN4ncnn20cpu_support_x86_avx2Ev()
  %.not829 = icmp eq i32 %i.c, 0
  br i1 %.not829, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4ncnn33gemm_transB_packed_tile_int8_avx2ERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.d = tail call noundef i32 @_ZN4ncnn19cpu_support_x86_xopEv()
  %.not830 = icmp eq i32 %i.d, 0
  br i1 %.not830, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4ncnn32gemm_transB_packed_tile_int8_xopERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.e = load ptr, ptr %0, align 8, !tbaa !18     ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !18     ; 6 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.h = icmp sgt i32 %4, 3
  br i1 %i.h, label %.preheader1089.lr.ph, label %.preheader1081

.preheader1089.lr.ph:                             ; preds = %bb.i
  %i.i = icmp sgt i32 %6, 7
  %i.j = icmp eq i32 %7, 0                        ; 4 uses
  %i.k = icmp sgt i32 %8, 1                       ; 4 uses
  %i.l = shl i32 %8, 2
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = add i32 %8, -2                           ; 5 uses
  %i.o = and i32 %i.n, -2
  %i.p = add nuw nsw i32 %i.o, 2                  ; 4 uses
  %i.q = and i32 %6, -8
  %i.r = zext i32 %i.n to i64                     ; 2 uses
  %i.s = lshr i64 %i.r, 1                         ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 8                  ; 2 uses
  %scevgep1668 = getelementptr i8, ptr %i.e, i64 %i.u
  %i.v = shl nuw nsw i64 %i.s, 2
  %i.w = and i64 %i.r, 4294967294
  %i.x = lshr i32 %i.n, 1                         ; 3 uses
  %i.y = add nuw i32 %i.x, 1                      ; 4 uses
  %i.z = icmp eq i32 %i.x, 0
  %unroll_iter = and i32 %i.y, -2
  %i.aa = and i32 %i.n, 2
  %lcmp.mod.not.not = icmp eq i32 %i.aa, 0
  %lcmp.mod2372 = trunc i32 %i.y to i1
  %i.ab = icmp eq i32 %i.x, 0
  %unroll_iter2379 = and i32 %i.y, -2
  %i.ac = and i32 %i.n, 2
  %lcmp.mod2376.not.not = icmp eq i32 %i.ac, 0
  %lcmp.mod2378 = trunc i32 %i.y to i1
  br label %.preheader1089

.preheader1089:                                   ; preds = %.preheader1089.lr.ph, %._crit_edge1244
  %indvars.iv = phi ptr [ %scevgep1668, %.preheader1089.lr.ph ], [ %scevgep1669, %._crit_edge1244 ] ; 3 uses
  %.07101248 = phi ptr [ %i.e, %.preheader1089.lr.ph ], [ %i.ph, %._crit_edge1244 ] ; 11 uses
  %.07131247 = phi ptr [ %i.g, %.preheader1089.lr.ph ], [ %.4.lcssa, %._crit_edge1244 ] ; 2 uses
  %.07161246 = phi i32 [ 0, %.preheader1089.lr.ph ], [ %i.pi, %._crit_edge1244 ]
  br i1 %i.i, label %.lr.ph1166, label %.preheader1088

.preheader1081.loopexit:                          ; preds = %._crit_edge1244
  %i.ad = and i32 %4, 2147483644
  br label %.preheader1081

.preheader1081:                                   ; preds = %.preheader1081.loopexit, %bb.i
  %.0716.lcssa = phi i32 [ 0, %bb.i ], [ %i.ad, %.preheader1081.loopexit ] ; 3 uses
  %.0713.lcssa = phi ptr [ %i.g, %bb.i ], [ %.4.lcssa, %.preheader1081.loopexit ] ; 2 uses
  %.0710.lcssa = phi ptr [ %i.e, %bb.i ], [ %i.ph, %.preheader1081.loopexit ] ; 3 uses
  %i.ae = or disjoint i32 %.0716.lcssa, 1
  %i.af = icmp slt i32 %i.ae, %4
  br i1 %i.af, label %.preheader1080.lr.ph, label %.preheader1072

.preheader1080.lr.ph:                             ; preds = %.preheader1081
  %i.ag = icmp sgt i32 %6, 7
  %i.ah = icmp eq i32 %7, 0                       ; 4 uses
  %i.ai = icmp sgt i32 %8, 1                      ; 4 uses
  %i.aj = shl i32 %8, 1
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = add i32 %8, -2                          ; 5 uses
  %i.am = and i32 %i.al, -2
  %i.an = add nuw nsw i32 %i.am, 2                ; 4 uses
  %i.ao = and i32 %6, -8
  %i.ap = zext i32 %i.al to i64                   ; 2 uses
  %i.aq = lshr i64 %i.ap, 1                       ; 3 uses
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = shl nuw nsw i64 %i.aq, 2
  %i.at = add nuw nsw i64 %i.as, 4                ; 2 uses
  %scevgep1678 = getelementptr i8, ptr %.0710.lcssa, i64 %i.at
  %i.au = and i64 %i.ap, 4294967294
  %i.av = lshr i32 %i.al, 1                       ; 2 uses
  %i.aw = add nuw i32 %i.av, 1                    ; 2 uses
  %i.ax = icmp eq i32 %i.av, 0
  %unroll_iter2394 = and i32 %i.aw, -2
  %i.ay = and i32 %i.al, 2
  %lcmp.mod2389.not.not = icmp eq i32 %i.ay, 0
  %lcmp.mod2393 = trunc i32 %i.aw to i1
  %i.az = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check2059 = icmp ult i32 %i.al, 6
  %n.vec2061 = and i64 %i.az, 4294967292          ; 4 uses
  %i.ba = shl nuw nsw i64 %n.vec2061, 2           ; 2 uses
  %i.bb = trunc nuw i64 %n.vec2061 to i32
  %i.bc = shl i32 %i.bb, 1
  %cmp.n2078 = icmp eq i64 %i.az, %n.vec2061
  br label %.preheader1080

.preheader1088:                                   ; preds = %._crit_edge, %.preheader1089
  %.0731.lcssa = phi i32 [ 0, %.preheader1089 ], [ %i.q, %._crit_edge ] ; 3 uses
  %.0719.lcssa = phi ptr [ %i.f, %.preheader1089 ], [ %.2721.lcssa, %._crit_edge ] ; 2 uses
  %.1714.lcssa = phi ptr [ %.07131247, %.preheader1089 ], [ %i.fz, %._crit_edge ] ; 2 uses
  %i.bd = or disjoint i32 %.0731.lcssa, 3
  %i.be = icmp slt i32 %i.bd, %6
  br i1 %i.be, label %.lr.ph1195, label %.preheader1087

.lr.ph1166:                                       ; preds = %.preheader1089, %._crit_edge
  %.17141165 = phi ptr [ %i.fz, %._crit_edge ], [ %.07131247, %.preheader1089 ] ; 17 uses
  %.07191164 = phi ptr [ %.2721.lcssa, %._crit_edge ], [ %i.f, %.preheader1089 ] ; 2 uses
  %.07311163 = phi i32 [ %i.ga, %._crit_edge ], [ 0, %.preheader1089 ]
  br i1 %i.j, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph1166
  %i.bf = load <4 x i32>, ptr %.17141165, align 16, !tbaa !116
  %i.bg = getelementptr inbounds nuw i8, ptr %.17141165, i64 16
  %i.bh = load <4 x i32>, ptr %i.bg, align 16, !tbaa !116
  %i.bi = getelementptr inbounds nuw i8, ptr %.17141165, i64 32
  %i.bj = load <4 x i32>, ptr %i.bi, align 16, !tbaa !116
  %i.bk = getelementptr inbounds nuw i8, ptr %.17141165, i64 48
  %i.bl = load <4 x i32>, ptr %i.bk, align 16, !tbaa !116
  %i.bm = getelementptr inbounds nuw i8, ptr %.17141165, i64 64
  %i.bn = load <4 x i32>, ptr %i.bm, align 16, !tbaa !116
  %i.bo = getelementptr inbounds nuw i8, ptr %.17141165, i64 80
  %i.bp = load <4 x i32>, ptr %i.bo, align 16, !tbaa !116
  %i.bq = getelementptr inbounds nuw i8, ptr %.17141165, i64 96
  %i.br = load <4 x i32>, ptr %i.bq, align 16, !tbaa !116
  %i.bs = getelementptr inbounds nuw i8, ptr %.17141165, i64 112
  %i.bt = load <4 x i32>, ptr %i.bs, align 16, !tbaa !116
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph1166, %bb.j
  %i.bu = phi <4 x i32> [ %i.br, %bb.j ], [ zeroinitializer, %.lr.ph1166 ] ; 2 uses
  %i.bv = phi <4 x i32> [ %i.bp, %bb.j ], [ zeroinitializer, %.lr.ph1166 ] ; 2 uses
  %i.bw = phi <4 x i32> [ %i.bn, %bb.j ], [ zeroinitializer, %.lr.ph1166 ] ; 2 uses
  %i.bx = phi <4 x i32> [ %i.bl, %bb.j ], [ zeroinitializer, %.lr.ph1166 ] ; 2 uses
  %i.by = phi <4 x i32> [ %i.bj, %bb.j ], [ zeroinitializer, %.lr.ph1166 ] ; 2 uses
  %i.bz = phi <4 x i32> [ %i.bh, %bb.j ], [ zeroinitializer, %.lr.ph1166 ] ; 2 uses
  %i.ca = phi <4 x i32> [ %i.bf, %bb.j ], [ zeroinitializer, %.lr.ph1166 ] ; 2 uses
  %i.cb = phi <4 x i32> [ %i.bt, %bb.j ], [ zeroinitializer, %.lr.ph1166 ] ; 2 uses
  br i1 %i.k, label %.lr.ph, label %.preheader1085

.preheader1085:                                   ; preds = %.lr.ph, %bb.k
  %.lcssa1114 = phi <4 x i32> [ %i.cb, %bb.k ], [ %i.dm, %.lr.ph ] ; 2 uses
  %.lcssa1113 = phi <4 x i32> [ %i.bu, %bb.k ], [ %i.dk, %.lr.ph ] ; 2 uses
  %.lcssa1112 = phi <4 x i32> [ %i.bv, %bb.k ], [ %i.di, %.lr.ph ] ; 2 uses
  %.lcssa1111 = phi <4 x i32> [ %i.bw, %bb.k ], [ %i.de, %.lr.ph ] ; 2 uses
  %.lcssa1110 = phi <4 x i32> [ %i.bx, %bb.k ], [ %i.da, %.lr.ph ] ; 2 uses
  %.lcssa1109 = phi <4 x i32> [ %i.by, %bb.k ], [ %i.cy, %.lr.ph ] ; 2 uses
  %.lcssa1108 = phi <4 x i32> [ %i.bz, %bb.k ], [ %i.cv, %.lr.ph ] ; 2 uses
  %.lcssa1107 = phi <4 x i32> [ %i.ca, %bb.k ], [ %i.cs, %.lr.ph ] ; 2 uses
  %.0741.lcssa = phi i32 [ 0, %bb.k ], [ %i.p, %.lr.ph ] ; 2 uses
  %.0735.lcssa = phi ptr [ %.07101248, %bb.k ], [ %i.dn, %.lr.ph ]
  %.1720.lcssa = phi ptr [ %.07191164, %bb.k ], [ %i.do, %.lr.ph ] ; 2 uses
  %i.cc = icmp slt i32 %.0741.lcssa, %8
  br i1 %i.cc, label %.lr.ph1153, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %.17201139 = phi ptr [ %i.do, %.lr.ph ], [ %.07191164, %bb.k ] ; 2 uses
  %.07351138 = phi ptr [ %i.dn, %.lr.ph ], [ %.07101248, %bb.k ] ; 2 uses
  %.07411137 = phi i32 [ %i.dp, %.lr.ph ], [ 0, %bb.k ]
  %i.cd = phi <4 x i32> [ %i.cs, %.lr.ph ], [ %i.ca, %bb.k ]
  %i.ce = phi <4 x i32> [ %i.cv, %.lr.ph ], [ %i.bz, %bb.k ]
  %i.cf = phi <4 x i32> [ %i.cy, %.lr.ph ], [ %i.by, %bb.k ]
  %i.cg = phi <4 x i32> [ %i.da, %.lr.ph ], [ %i.bx, %bb.k ]
  %i.ch = phi <4 x i32> [ %i.de, %.lr.ph ], [ %i.bw, %bb.k ]
  %i.ci = phi <4 x i32> [ %i.di, %.lr.ph ], [ %i.bv, %bb.k ]
  %i.cj = phi <4 x i32> [ %i.dk, %.lr.ph ], [ %i.bu, %bb.k ]
  %i.ck = phi <4 x i32> [ %i.dm, %.lr.ph ], [ %i.cb, %bb.k ]
  %i.cl = load <8 x i8>, ptr %.07351138, align 1, !tbaa !116
  %i.cm = load <16 x i8>, ptr %.17201139, align 1, !tbaa !116 ; 3 uses
  %i.cn = sext <8 x i8> %i.cl to <8 x i16>        ; 5 uses
  %.lobit.i839 = ashr <16 x i8> %i.cm, splat (i8 7) ; 2 uses
  %i.co = shufflevector <16 x i8> %i.cm, <16 x i8> %.lobit.i839, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.cp = shufflevector <16 x i8> %i.cm, <16 x i8> %.lobit.i839, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cq = bitcast <16 x i8> %i.co to <8 x i16>    ; 2 uses
  %i.cr = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cn, <8 x i16> %i.cq)
  %i.cs = add <4 x i32> %i.cr, %i.cd              ; 2 uses
  %i.ct = bitcast <16 x i8> %i.cp to <8 x i16>    ; 2 uses
  %i.cu = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cn, <8 x i16> %i.ct)
  %i.cv = add <4 x i32> %i.cu, %i.ce              ; 2 uses
  %i.cw = shufflevector <8 x i16> %i.cn, <8 x i16> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.cx = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cw, <8 x i16> %i.cq)
  %i.cy = add <4 x i32> %i.cx, %i.cf              ; 2 uses
  %i.cz = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cw, <8 x i16> %i.ct)
  %i.da = add <4 x i32> %i.cz, %i.cg              ; 2 uses
  %i.db = bitcast <16 x i8> %i.co to <8 x i16>
  %i.dc = shufflevector <8 x i16> %i.db, <8 x i16> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1> ; 2 uses
  %i.dd = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cn, <8 x i16> %i.dc)
  %i.de = add <4 x i32> %i.dd, %i.ch              ; 2 uses
  %i.df = bitcast <16 x i8> %i.cp to <8 x i16>
  %i.dg = shufflevector <8 x i16> %i.df, <8 x i16> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1> ; 2 uses
  %i.dh = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cn, <8 x i16> %i.dg)
  %i.di = add <4 x i32> %i.dh, %i.ci              ; 2 uses
  %i.dj = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cw, <8 x i16> %i.dc)
  %i.dk = add <4 x i32> %i.dj, %i.cj              ; 2 uses
  %i.dl = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cw, <8 x i16> %i.dg)
  %i.dm = add <4 x i32> %i.dl, %i.ck              ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.07351138, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.17201139, i64 16 ; 2 uses
  %i.dp = add nuw nsw i32 %.07411137, 2           ; 2 uses
  %i.dq = or disjoint i32 %i.dp, 1
  %i.dr = icmp slt i32 %i.dq, %8
  br i1 %i.dr, label %.lr.ph, label %.preheader1085, !llvm.loop !678

.lr.ph1153:                                       ; preds = %.preheader1085, %.lr.ph1153
  %.27211152 = phi ptr [ %i.fq, %.lr.ph1153 ], [ %.1720.lcssa, %.preheader1085 ] ; 2 uses
  %.17361151 = phi ptr [ %i.fp, %.lr.ph1153 ], [ %.0735.lcssa, %.preheader1085 ] ; 2 uses
  %.17421150 = phi i32 [ %i.fr, %.lr.ph1153 ], [ %.0741.lcssa, %.preheader1085 ]
  %i.ds = phi <4 x i32> [ %i.fa, %.lr.ph1153 ], [ %.lcssa1107, %.preheader1085 ]
  %i.dt = phi <4 x i32> [ %i.fc, %.lr.ph1153 ], [ %.lcssa1108, %.preheader1085 ]
  %i.du = phi <4 x i32> [ %i.fe, %.lr.ph1153 ], [ %.lcssa1109, %.preheader1085 ]
  %i.dv = phi <4 x i32> [ %i.fg, %.lr.ph1153 ], [ %.lcssa1110, %.preheader1085 ]
  %i.dw = phi <4 x i32> [ %i.fi, %.lr.ph1153 ], [ %.lcssa1111, %.preheader1085 ]
  %i.dx = phi <4 x i32> [ %i.fk, %.lr.ph1153 ], [ %.lcssa1112, %.preheader1085 ]
  %i.dy = phi <4 x i32> [ %i.fm, %.lr.ph1153 ], [ %.lcssa1113, %.preheader1085 ]
  %i.dz = phi <4 x i32> [ %i.fo, %.lr.ph1153 ], [ %.lcssa1114, %.preheader1085 ]
  %i.ea = load float, ptr %.17361151, align 1, !tbaa !116
  %i.eb = insertelement <4 x float> poison, float %i.ea, i64 0
  %i.ec = load <8 x i8>, ptr %.27211152, align 1, !tbaa !116
  %i.ed = bitcast <4 x float> %i.eb to <16 x i8>
  %i.ee = shufflevector <16 x i8> %i.ed, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ef = sext <8 x i8> %i.ee to <8 x i16>        ; 5 uses
  %i.eg = sext <8 x i8> %i.ec to <8 x i16>        ; 5 uses
  %i.eh = shufflevector <8 x i16> %i.eg, <8 x i16> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 4 uses
  %i.ei = mul nsw <8 x i16> %i.ef, %i.eg          ; 2 uses
  %i.ej = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.ef, <8 x i16> %i.eg) ; 2 uses
  %i.ek = shufflevector <8 x i16> %i.ef, <8 x i16> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 4 uses
  %i.el = mul nsw <8 x i16> %i.ek, %i.eg          ; 2 uses
  %i.em = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.ek, <8 x i16> %i.eg) ; 2 uses
  %i.en = mul nsw <8 x i16> %i.eh, %i.ef          ; 2 uses
  %i.eo = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.ef, <8 x i16> %i.eh) ; 2 uses
  %i.ep = mul nsw <8 x i16> %i.eh, %i.ek          ; 2 uses
  %i.eq = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.ek, <8 x i16> %i.eh) ; 2 uses
  %i.er = shufflevector <8 x i16> %i.ei, <8 x i16> %i.ej, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.es = shufflevector <8 x i16> %i.ei, <8 x i16> %i.ej, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.et = shufflevector <8 x i16> %i.el, <8 x i16> %i.em, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eu = shufflevector <8 x i16> %i.el, <8 x i16> %i.em, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ev = shufflevector <8 x i16> %i.en, <8 x i16> %i.eo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ew = shufflevector <8 x i16> %i.en, <8 x i16> %i.eo, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ex = shufflevector <8 x i16> %i.ep, <8 x i16> %i.eq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ey = shufflevector <8 x i16> %i.ep, <8 x i16> %i.eq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ez = bitcast <8 x i16> %i.er to <4 x i32>
  %i.fa = add <4 x i32> %i.ds, %i.ez              ; 2 uses
  %i.fb = bitcast <8 x i16> %i.es to <4 x i32>
  %i.fc = add <4 x i32> %i.dt, %i.fb              ; 2 uses
  %i.fd = bitcast <8 x i16> %i.et to <4 x i32>
  %i.fe = add <4 x i32> %i.du, %i.fd              ; 2 uses
  %i.ff = bitcast <8 x i16> %i.eu to <4 x i32>
  %i.fg = add <4 x i32> %i.dv, %i.ff              ; 2 uses
  %i.fh = bitcast <8 x i16> %i.ev to <4 x i32>
  %i.fi = add <4 x i32> %i.dw, %i.fh              ; 2 uses
  %i.fj = bitcast <8 x i16> %i.ew to <4 x i32>
  %i.fk = add <4 x i32> %i.dx, %i.fj              ; 2 uses
  %i.fl = bitcast <8 x i16> %i.ex to <4 x i32>
  %i.fm = add <4 x i32> %i.dy, %i.fl              ; 2 uses
  %i.fn = bitcast <8 x i16> %i.ey to <4 x i32>
  %i.fo = add <4 x i32> %i.dz, %i.fn              ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.17361151, i64 4
  %i.fq = getelementptr inbounds nuw i8, ptr %.27211152, i64 8 ; 2 uses
  %i.fr = add nuw nsw i32 %.17421150, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.fr, %8
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph1153, !llvm.loop !679

._crit_edge:                                      ; preds = %.lr.ph1153, %.preheader1085
  %.lcssa1122 = phi <4 x i32> [ %.lcssa1114, %.preheader1085 ], [ %i.fo, %.lr.ph1153 ]
  %.lcssa1121 = phi <4 x i32> [ %.lcssa1113, %.preheader1085 ], [ %i.fm, %.lr.ph1153 ]
  %.lcssa1120 = phi <4 x i32> [ %.lcssa1112, %.preheader1085 ], [ %i.fk, %.lr.ph1153 ]
  %.lcssa1119 = phi <4 x i32> [ %.lcssa1111, %.preheader1085 ], [ %i.fi, %.lr.ph1153 ]
  %.lcssa1118 = phi <4 x i32> [ %.lcssa1110, %.preheader1085 ], [ %i.fg, %.lr.ph1153 ]
  %.lcssa1117 = phi <4 x i32> [ %.lcssa1109, %.preheader1085 ], [ %i.fe, %.lr.ph1153 ]
  %.lcssa1116 = phi <4 x i32> [ %.lcssa1108, %.preheader1085 ], [ %i.fc, %.lr.ph1153 ]
  %.lcssa1115 = phi <4 x i32> [ %.lcssa1107, %.preheader1085 ], [ %i.fa, %.lr.ph1153 ]
  %.2721.lcssa = phi ptr [ %.1720.lcssa, %.preheader1085 ], [ %i.fq, %.lr.ph1153 ] ; 2 uses
  store <4 x i32> %.lcssa1115, ptr %.17141165, align 16, !tbaa !116
end_hunk_4
begin_hunk_5_@_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii:bb.a
  %.8727.lcssa = phi ptr [ %.7726.lcssa, %.preheader1083 ], [ %i.lw, %.lr.ph1212 ] ; 2 uses
  store <4 x i32> %.lcssa1134, ptr %.31219, align 16, !tbaa !116
  %i.ly = getelementptr inbounds nuw i8, ptr %.31219, i64 16
  store <4 x i32> %.lcssa1133, ptr %i.ly, align 16, !tbaa !116
  %i.lz = getelementptr inbounds nuw i8, ptr %.31219, i64 32 ; 2 uses
  %i.ma = add nuw nsw i32 %.27331217, 2           ; 3 uses
  %i.mb = or disjoint i32 %i.ma, 1
  %i.mc = icmp slt i32 %i.mb, %6
  br i1 %i.mc, label %.lr.ph1220, label %.preheader1086, !llvm.loop !688

.lr.ph1243:                                       ; preds = %.preheader1086, %._crit_edge1237
  %.41242 = phi ptr [ %i.pf, %._crit_edge1237 ], [ %.3.lcssa, %.preheader1086 ] ; 3 uses
  %.97281241 = phi ptr [ %.11730.lcssa, %._crit_edge1237 ], [ %.6725.lcssa, %.preheader1086 ] ; 4 uses
  %.37341240 = phi i32 [ %i.pg, %._crit_edge1237 ], [ %.2733.lcssa, %.preheader1086 ]
  br i1 %i.j, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph1243
  %i.md = load <4 x i32>, ptr %.41242, align 16, !tbaa !116
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph1243, %bb.p
  %i.me = phi <4 x i32> [ %i.md, %bb.p ], [ zeroinitializer, %.lr.ph1243 ] ; 3 uses
  br i1 %i.k, label %.lr.ph1228.preheader, label %.preheader1082

.lr.ph1228.preheader:                             ; preds = %bb.q
  br i1 %i.ab, label %.lr.ph1228.epil.preheader, label %.lr.ph1228

.preheader1082.loopexit.unr-lcssa:                ; preds = %.lr.ph1228
  br i1 %lcmp.mod2376.not.not, label %.lr.ph1228.epil.preheader, label %.preheader1082.loopexit

.lr.ph1228.epil.preheader:                        ; preds = %.preheader1082.loopexit.unr-lcssa, %.lr.ph1228.preheader
  %.107291226.epil.init = phi ptr [ %.97281241, %.lr.ph1228.preheader ], [ %i.oc, %.preheader1082.loopexit.unr-lcssa ]
  %.07511225.epil.init = phi ptr [ %.07101248, %.lr.ph1228.preheader ], [ %i.ob, %.preheader1082.loopexit.unr-lcssa ]
  %.epil.init2375 = phi <4 x i32> [ %i.me, %.lr.ph1228.preheader ], [ %i.oa, %.preheader1082.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2378)
  %i.mf = load <8 x i8>, ptr %.07511225.epil.init, align 1, !tbaa !116
  %i.mg = load i16, ptr %.107291226.epil.init, align 2, !tbaa !685
  %i.mh = insertelement <8 x i16> poison, i16 %i.mg, i64 0
  %i.mi = sext <8 x i8> %i.mf to <8 x i16>
  %i.mj = bitcast <8 x i16> %i.mh to <16 x i8>
  %i.mk = shufflevector <16 x i8> %i.mj, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.ml = sext <8 x i8> %i.mk to <8 x i16>
  %i.mm = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.mi, <8 x i16> %i.ml)
  %i.mn = add <4 x i32> %i.mm, %.epil.init2375
  br label %.preheader1082.loopexit

.preheader1082.loopexit:                          ; preds = %.preheader1082.loopexit.unr-lcssa, %.lr.ph1228.epil.preheader
  %.lcssa2363 = phi <4 x i32> [ %i.oa, %.preheader1082.loopexit.unr-lcssa ], [ %i.mn, %.lr.ph1228.epil.preheader ]
  %i.mo = getelementptr i8, ptr %.97281241, i64 %i.w
  %scevgep1672 = getelementptr i8, ptr %i.mo, i64 2
  br label %.preheader1082

.preheader1082:                                   ; preds = %.preheader1082.loopexit, %bb.q
  %.lcssa1135 = phi <4 x i32> [ %i.me, %bb.q ], [ %.lcssa2363, %.preheader1082.loopexit ] ; 3 uses
  %.0753.lcssa = phi i32 [ 0, %bb.q ], [ %i.p, %.preheader1082.loopexit ] ; 5 uses
  %.0751.lcssa = phi ptr [ %.07101248, %bb.q ], [ %indvars.iv, %.preheader1082.loopexit ] ; 3 uses
  %.10729.lcssa = phi ptr [ %.97281241, %bb.q ], [ %scevgep1672, %.preheader1082.loopexit ] ; 4 uses
  %i.mp = icmp slt i32 %.0753.lcssa, %8
  br i1 %i.mp, label %.lr.ph1236.preheader, label %._crit_edge1237

.lr.ph1236.preheader:                             ; preds = %.preheader1082
  %i.mq = sub i32 %8, %.0753.lcssa
  %.neg = add i32 %.0753.lcssa, 1
  %xtraiter2381 = and i32 %i.mq, 1
  %lcmp.mod2382.not = icmp eq i32 %xtraiter2381, 0
  br i1 %lcmp.mod2382.not, label %.lr.ph1236.prol.loopexit, label %.lr.ph1236.prol

.lr.ph1236.prol:                                  ; preds = %.lr.ph1236.preheader
  %i.mr = load <8 x i8>, ptr %.0751.lcssa, align 1, !tbaa !116
  %i.ms = load i8, ptr %.10729.lcssa, align 1, !tbaa !116
  %i.mt = sext i8 %i.ms to i16
  %i.mu = insertelement <8 x i16> poison, i16 %i.mt, i64 0
  %i.mv = shufflevector <8 x i16> %i.mu, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.mw = sext <8 x i8> %i.mr to <8 x i16>        ; 2 uses
  %i.mx = mul <8 x i16> %i.mv, %i.mw
  %i.my = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.mw, <8 x i16> %i.mv)
  %i.mz = shufflevector <8 x i16> %i.mx, <8 x i16> %i.my, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.na = bitcast <8 x i16> %i.mz to <4 x i32>
  %i.nb = add <4 x i32> %.lcssa1135, %i.na        ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.0751.lcssa, i64 4
  %i.nd = getelementptr inbounds nuw i8, ptr %.10729.lcssa, i64 1 ; 2 uses
  %i.ne = add nuw nsw i32 %.0753.lcssa, 1
  br label %.lr.ph1236.prol.loopexit

.lr.ph1236.prol.loopexit:                         ; preds = %.lr.ph1236.prol, %.lr.ph1236.preheader
  %.lcssa2365.unr = phi <4 x i32> [ poison, %.lr.ph1236.preheader ], [ %i.nb, %.lr.ph1236.prol ]
  %.lcssa2364.unr = phi ptr [ poison, %.lr.ph1236.preheader ], [ %i.nd, %.lr.ph1236.prol ]
  %.117301235.unr = phi ptr [ %.10729.lcssa, %.lr.ph1236.preheader ], [ %i.nd, %.lr.ph1236.prol ]
  %.17521234.unr = phi ptr [ %.0751.lcssa, %.lr.ph1236.preheader ], [ %i.nc, %.lr.ph1236.prol ]
  %.17541233.unr = phi i32 [ %.0753.lcssa, %.lr.ph1236.preheader ], [ %i.ne, %.lr.ph1236.prol ]
  %.unr2383 = phi <4 x i32> [ %.lcssa1135, %.lr.ph1236.preheader ], [ %i.nb, %.lr.ph1236.prol ]
  %i.nf = icmp eq i32 %8, %.neg
  br i1 %i.nf, label %._crit_edge1237, label %.lr.ph1236

.lr.ph1228:                                       ; preds = %.lr.ph1228.preheader, %.lr.ph1228
  %.107291226 = phi ptr [ %i.oc, %.lr.ph1228 ], [ %.97281241, %.lr.ph1228.preheader ] ; 3 uses
  %.07511225 = phi ptr [ %i.ob, %.lr.ph1228 ], [ %.07101248, %.lr.ph1228.preheader ] ; 3 uses
  %i.ng = phi <4 x i32> [ %i.oa, %.lr.ph1228 ], [ %i.me, %.lr.ph1228.preheader ]
  %niter2380 = phi i32 [ %niter2380.next.1, %.lr.ph1228 ], [ 0, %.lr.ph1228.preheader ]
  %i.nh = load <8 x i8>, ptr %.07511225, align 1, !tbaa !116
  %i.ni = load i16, ptr %.107291226, align 2, !tbaa !685
  %i.nj = insertelement <8 x i16> poison, i16 %i.ni, i64 0
  %i.nk = sext <8 x i8> %i.nh to <8 x i16>
  %i.nl = bitcast <8 x i16> %i.nj to <16 x i8>
  %i.nm = shufflevector <16 x i8> %i.nl, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.nn = sext <8 x i8> %i.nm to <8 x i16>
  %i.no = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.nk, <8 x i16> %i.nn)
  %i.np = add <4 x i32> %i.no, %i.ng
  %i.nq = getelementptr inbounds nuw i8, ptr %.07511225, i64 8
  %i.nr = getelementptr inbounds nuw i8, ptr %.107291226, i64 2
  %i.ns = load <8 x i8>, ptr %i.nq, align 1, !tbaa !116
  %i.nt = load i16, ptr %i.nr, align 2, !tbaa !685
  %i.nu = insertelement <8 x i16> poison, i16 %i.nt, i64 0
  %i.nv = sext <8 x i8> %i.ns to <8 x i16>
  %i.nw = bitcast <8 x i16> %i.nu to <16 x i8>
  %i.nx = shufflevector <16 x i8> %i.nw, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.ny = sext <8 x i8> %i.nx to <8 x i16>
  %i.nz = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.nv, <8 x i16> %i.ny)
  %i.oa = add <4 x i32> %i.nz, %i.np              ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.07511225, i64 16 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.107291226, i64 4 ; 2 uses
  %niter2380.next.1 = add nuw nsw i32 %niter2380, 2 ; 2 uses
  %niter2380.ncmp.1.not = icmp eq i32 %niter2380.next.1, %unroll_iter2379
  br i1 %niter2380.ncmp.1.not, label %.preheader1082.loopexit.unr-lcssa, label %.lr.ph1228, !llvm.loop !689

.lr.ph1236:                                       ; preds = %.lr.ph1236.prol.loopexit, %.lr.ph1236
  %.117301235 = phi ptr [ %i.pd, %.lr.ph1236 ], [ %.117301235.unr, %.lr.ph1236.prol.loopexit ] ; 3 uses
  %.17521234 = phi ptr [ %i.pc, %.lr.ph1236 ], [ %.17521234.unr, %.lr.ph1236.prol.loopexit ] ; 3 uses
  %.17541233 = phi i32 [ %i.pe, %.lr.ph1236 ], [ %.17541233.unr, %.lr.ph1236.prol.loopexit ]
  %i.od = phi <4 x i32> [ %i.pb, %.lr.ph1236 ], [ %.unr2383, %.lr.ph1236.prol.loopexit ]
  %i.oe = load <8 x i8>, ptr %.17521234, align 1, !tbaa !116
  %i.of = load i8, ptr %.117301235, align 1, !tbaa !116
  %i.og = sext i8 %i.of to i16
  %i.oh = insertelement <8 x i16> poison, i16 %i.og, i64 0
  %i.oi = shufflevector <8 x i16> %i.oh, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.oj = sext <8 x i8> %i.oe to <8 x i16>        ; 2 uses
  %i.ok = mul <8 x i16> %i.oi, %i.oj
  %i.ol = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.oj, <8 x i16> %i.oi)
  %i.om = shufflevector <8 x i16> %i.ok, <8 x i16> %i.ol, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.on = bitcast <8 x i16> %i.om to <4 x i32>
  %i.oo = add <4 x i32> %i.od, %i.on
  %i.op = getelementptr inbounds nuw i8, ptr %.17521234, i64 4
  %i.oq = getelementptr inbounds nuw i8, ptr %.117301235, i64 1
  %i.or = load <8 x i8>, ptr %i.op, align 1, !tbaa !116
  %i.os = load i8, ptr %i.oq, align 1, !tbaa !116
  %i.ot = sext i8 %i.os to i16
  %i.ou = insertelement <8 x i16> poison, i16 %i.ot, i64 0
  %i.ov = shufflevector <8 x i16> %i.ou, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ow = sext <8 x i8> %i.or to <8 x i16>        ; 2 uses
  %i.ox = mul <8 x i16> %i.ov, %i.ow
  %i.oy = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.ow, <8 x i16> %i.ov)
  %i.oz = shufflevector <8 x i16> %i.ox, <8 x i16> %i.oy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.pa = bitcast <8 x i16> %i.oz to <4 x i32>
  %i.pb = add <4 x i32> %i.oo, %i.pa              ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.17521234, i64 8
  %i.pd = getelementptr inbounds nuw i8, ptr %.117301235, i64 2 ; 2 uses
  %i.pe = add nuw nsw i32 %.17541233, 2           ; 2 uses
  %exitcond1673.not.1 = icmp eq i32 %i.pe, %8
  br i1 %exitcond1673.not.1, label %._crit_edge1237, label %.lr.ph1236, !llvm.loop !690

._crit_edge1237:                                  ; preds = %.lr.ph1236.prol.loopexit, %.lr.ph1236, %.preheader1082
  %.lcssa1136 = phi <4 x i32> [ %.lcssa1135, %.preheader1082 ], [ %.lcssa2365.unr, %.lr.ph1236.prol.loopexit ], [ %i.pb, %.lr.ph1236 ]
  %.11730.lcssa = phi ptr [ %.10729.lcssa, %.preheader1082 ], [ %.lcssa2364.unr, %.lr.ph1236.prol.loopexit ], [ %i.pd, %.lr.ph1236 ]
  store <4 x i32> %.lcssa1136, ptr %.41242, align 16, !tbaa !116
  %i.pf = getelementptr inbounds nuw i8, ptr %.41242, i64 16 ; 2 uses
  %i.pg = add nuw nsw i32 %.37341240, 1           ; 2 uses
  %exitcond1674.not = icmp eq i32 %i.pg, %6
  br i1 %exitcond1674.not, label %._crit_edge1244, label %.lr.ph1243, !llvm.loop !691

._crit_edge1244:                                  ; preds = %._crit_edge1237, %.preheader1086
  %.4.lcssa = phi ptr [ %.3.lcssa, %.preheader1086 ], [ %i.pf, %._crit_edge1237 ] ; 2 uses
  %i.ph = getelementptr inbounds i8, ptr %.07101248, i64 %i.m ; 2 uses
  %i.pi = add nuw nsw i32 %.07161246, 4           ; 2 uses
  %i.pj = or disjoint i32 %i.pi, 3
  %i.pk = icmp slt i32 %i.pj, %4
  %scevgep1669 = getelementptr i8, ptr %indvars.iv, i64 %i.m
  br i1 %i.pk, label %.preheader1089, label %.preheader1081.loopexit, !llvm.loop !692

.preheader1080:                                   ; preds = %.preheader1080.lr.ph, %._crit_edge1369
  %indvars.iv1679 = phi ptr [ %scevgep1678, %.preheader1080.lr.ph ], [ %scevgep1680, %._crit_edge1369 ] ; 3 uses
  %.17111373 = phi ptr [ %.0710.lcssa, %.preheader1080.lr.ph ], [ %i.aso, %._crit_edge1369 ] ; 15 uses
  %.51372 = phi ptr [ %.0713.lcssa, %.preheader1080.lr.ph ], [ %.9.lcssa, %._crit_edge1369 ] ; 2 uses
  %.17171371 = phi i32 [ %.0716.lcssa, %.preheader1080.lr.ph ], [ %i.asp, %._crit_edge1369 ]
  br i1 %i.ag, label %.lr.ph1277, label %.preheader1079

.preheader1072:                                   ; preds = %._crit_edge1369, %.preheader1081
  %.1717.lcssa = phi i32 [ %.0716.lcssa, %.preheader1081 ], [ %i.asp, %._crit_edge1369 ] ; 2 uses
  %.5.lcssa = phi ptr [ %.0713.lcssa, %.preheader1081 ], [ %.9.lcssa, %._crit_edge1369 ]
  %.1711.lcssa = phi ptr [ %.0710.lcssa, %.preheader1081 ], [ %i.aso, %._crit_edge1369 ] ; 2 uses
  %i.pl = icmp slt i32 %.1717.lcssa, %4
  br i1 %i.pl, label %.preheader1071.lr.ph, label %.loopexit

.preheader1071.lr.ph:                             ; preds = %.preheader1072
  %i.pm = icmp sgt i32 %6, 7
  %i.pn = icmp eq i32 %7, 0                       ; 4 uses
  %i.po = icmp sgt i32 %8, 1                      ; 3 uses
  %i.pp = icmp sgt i32 %8, 3
  %i.pq = sext i32 %8 to i64                      ; 2 uses
  %i.pr = add i32 %8, -2                          ; 4 uses
  %i.ps = and i32 %i.pr, -2
  %i.pt = add nuw nsw i32 %i.ps, 2                ; 3 uses
  %i.pu = and i32 %6, -8
  %i.pv = zext i32 %i.pr to i64                   ; 2 uses
  %i.pw = lshr i64 %i.pv, 1                       ; 2 uses
  %i.px = shl nuw nsw i64 %i.pw, 3
  %i.py = and i64 %i.pv, 4294967294
  %i.pz = getelementptr i8, ptr %.1711.lcssa, i64 %i.py
  %scevgep1689 = getelementptr i8, ptr %i.pz, i64 2
  %i.qa = shl nuw nsw i64 %i.pw, 2
  %i.qb = and i32 %8, -4
  %i.qc = lshr i32 %i.pr, 1                       ; 2 uses
  %i.qd = add nuw i32 %i.qc, 1                    ; 2 uses
  %i.qe = add i32 %8, -4                          ; 2 uses
  %i.qf = lshr i32 %i.qe, 2                       ; 2 uses
  %i.qg = add nuw nsw i32 %i.qf, 1                ; 2 uses
  %i.qh = icmp eq i32 %i.qc, 0
  %unroll_iter2403 = and i32 %i.qd, -2
  %i.qi = and i32 %i.pr, 2
  %lcmp.mod2399.not.not = icmp eq i32 %i.qi, 0
  %lcmp.mod2402 = trunc i32 %i.qd to i1
  %i.qj = icmp eq i32 %i.qf, 0
  %unroll_iter2416 = and i32 %i.qg, 2147483646
  %i.qk = and i32 %i.qe, 4
  %lcmp.mod2411.not.not = icmp eq i32 %i.qk, 0
  %lcmp.mod2415 = trunc i32 %i.qg to i1
  br label %.preheader1071

.preheader1079:                                   ; preds = %._crit_edge1268, %.preheader1080
  %.0814.lcssa = phi i32 [ 0, %.preheader1080 ], [ %i.ao, %._crit_edge1268 ] ; 3 uses
  %.0755.lcssa = phi ptr [ %i.f, %.preheader1080 ], [ %.2757.lcssa, %._crit_edge1268 ] ; 2 uses
  %.6.lcssa = phi ptr [ %.51372, %.preheader1080 ], [ %i.tj, %._crit_edge1268 ] ; 2 uses
  %i.ql = or disjoint i32 %.0814.lcssa, 3
  %i.qm = icmp slt i32 %i.ql, %6
  br i1 %i.qm, label %.lr.ph1302, label %.preheader1078

.lr.ph1277:                                       ; preds = %.preheader1080, %._crit_edge1268
  %.61276 = phi ptr [ %i.tj, %._crit_edge1268 ], [ %.51372, %.preheader1080 ] ; 9 uses
  %.07551275 = phi ptr [ %.2757.lcssa, %._crit_edge1268 ], [ %i.f, %.preheader1080 ] ; 2 uses
  %.08141274 = phi i32 [ %i.tk, %._crit_edge1268 ], [ 0, %.preheader1080 ]
  br i1 %i.ah, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph1277
  %i.qn = load <4 x i32>, ptr %.61276, align 16, !tbaa !116
  %i.qo = getelementptr inbounds nuw i8, ptr %.61276, i64 16
  %i.qp = load <4 x i32>, ptr %i.qo, align 16, !tbaa !116
  %i.qq = getelementptr inbounds nuw i8, ptr %.61276, i64 32
  %i.qr = load <4 x i32>, ptr %i.qq, align 16, !tbaa !116
  %i.qs = getelementptr inbounds nuw i8, ptr %.61276, i64 48
  %i.qt = load <4 x i32>, ptr %i.qs, align 16, !tbaa !116
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph1277, %bb.r
  %i.qu = phi <4 x i32> [ %i.qn, %bb.r ], [ zeroinitializer, %.lr.ph1277 ] ; 2 uses
  %i.qv = phi <4 x i32> [ %i.qp, %bb.r ], [ zeroinitializer, %.lr.ph1277 ] ; 2 uses
  %i.qw = phi <4 x i32> [ %i.qr, %bb.r ], [ zeroinitializer, %.lr.ph1277 ] ; 2 uses
  %i.qx = phi <4 x i32> [ %i.qt, %bb.r ], [ zeroinitializer, %.lr.ph1277 ] ; 2 uses
  br i1 %i.ai, label %.lr.ph1256, label %.preheader1076

.preheader1076:                                   ; preds = %.lr.ph1256, %bb.s
  %.lcssa1098 = phi <4 x i32> [ %i.qu, %bb.s ], [ %i.rn, %.lr.ph1256 ] ; 2 uses
  %.lcssa1097 = phi <4 x i32> [ %i.qv, %bb.s ], [ %i.rq, %.lr.ph1256 ] ; 2 uses
  %.lcssa1096 = phi <4 x i32> [ %i.qw, %bb.s ], [ %i.rt, %.lr.ph1256 ] ; 2 uses
  %.lcssa1095 = phi <4 x i32> [ %i.qx, %bb.s ], [ %i.rv, %.lr.ph1256 ] ; 2 uses
  %.0820.lcssa = phi i32 [ 0, %bb.s ], [ %i.an, %.lr.ph1256 ] ; 2 uses
  %.0818.lcssa = phi ptr [ %.17111373, %bb.s ], [ %i.rw, %.lr.ph1256 ]
  %.1756.lcssa = phi ptr [ %.07551275, %bb.s ], [ %i.rx, %.lr.ph1256 ] ; 2 uses
  %i.qy = icmp slt i32 %.0820.lcssa, %8
  br i1 %i.qy, label %.lr.ph1267, label %._crit_edge1268

.lr.ph1256:                                       ; preds = %bb.s, %.lr.ph1256
  %.17561254 = phi ptr [ %i.rx, %.lr.ph1256 ], [ %.07551275, %bb.s ] ; 2 uses
  %.08181253 = phi ptr [ %i.rw, %.lr.ph1256 ], [ %.17111373, %bb.s ] ; 2 uses
  %.08201252 = phi i32 [ %i.ry, %.lr.ph1256 ], [ 0, %bb.s ]
  %i.qz = phi <4 x i32> [ %i.rv, %.lr.ph1256 ], [ %i.qx, %bb.s ]
  %i.ra = phi <4 x i32> [ %i.rt, %.lr.ph1256 ], [ %i.qw, %bb.s ]
  %i.rb = phi <4 x i32> [ %i.rq, %.lr.ph1256 ], [ %i.qv, %bb.s ]
  %i.rc = phi <4 x i32> [ %i.rn, %.lr.ph1256 ], [ %i.qu, %bb.s ]
  %i.rd = load float, ptr %.08181253, align 1, !tbaa !116
  %i.re = insertelement <4 x float> poison, float %i.rd, i64 0
  %i.rf = load <16 x i8>, ptr %.17561254, align 1, !tbaa !116 ; 3 uses
  %i.rg = bitcast <4 x float> %i.re to <16 x i8>
  %i.rh = shufflevector <16 x i8> %i.rg, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ri = sext <8 x i8> %i.rh to <8 x i16>        ; 3 uses
  %.lobit.i838 = ashr <16 x i8> %i.rf, splat (i8 7) ; 2 uses
  %i.rj = shufflevector <16 x i8> %i.rf, <16 x i8> %.lobit.i838, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.rk = shufflevector <16 x i8> %i.rf, <16 x i8> %.lobit.i838, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.rl = bitcast <16 x i8> %i.rj to <8 x i16>    ; 2 uses
  %i.rm = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ri, <8 x i16> %i.rl)
  %i.rn = add <4 x i32> %i.rm, %i.rc              ; 2 uses
  %i.ro = bitcast <16 x i8> %i.rk to <8 x i16>    ; 2 uses
  %i.rp = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ri, <8 x i16> %i.ro)
  %i.rq = add <4 x i32> %i.rp, %i.rb              ; 2 uses
  %i.rr = shufflevector <8 x i16> %i.ri, <8 x i16> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1> ; 2 uses
  %i.rs = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.rr, <8 x i16> %i.rl)
  %i.rt = add <4 x i32> %i.rs, %i.ra              ; 2 uses
  %i.ru = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.rr, <8 x i16> %i.ro)
  %i.rv = add <4 x i32> %i.ru, %i.qz              ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.08181253, i64 4 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.17561254, i64 16 ; 2 uses
  %i.ry = add nuw nsw i32 %.08201252, 2           ; 2 uses
  %i.rz = or disjoint i32 %i.ry, 1
  %i.sa = icmp slt i32 %i.rz, %8
  br i1 %i.sa, label %.lr.ph1256, label %.preheader1076, !llvm.loop !693

.lr.ph1267:                                       ; preds = %.preheader1076, %.lr.ph1267
  %.27571266 = phi ptr [ %i.te, %.lr.ph1267 ], [ %.1756.lcssa, %.preheader1076 ] ; 2 uses
  %.18191265 = phi ptr [ %i.td, %.lr.ph1267 ], [ %.0818.lcssa, %.preheader1076 ] ; 2 uses
  %.18211264 = phi i32 [ %i.tf, %.lr.ph1267 ], [ %.0820.lcssa, %.preheader1076 ]
  %i.sb = phi <4 x i32> [ %i.tc, %.lr.ph1267 ], [ %.lcssa1095, %.preheader1076 ]
  %i.sc = phi <4 x i32> [ %i.ta, %.lr.ph1267 ], [ %.lcssa1096, %.preheader1076 ]
  %i.sd = phi <4 x i32> [ %i.sy, %.lr.ph1267 ], [ %.lcssa1097, %.preheader1076 ]
  %i.se = phi <4 x i32> [ %i.sw, %.lr.ph1267 ], [ %.lcssa1098, %.preheader1076 ]
  %i.sf = load i16, ptr %.18191265, align 2, !tbaa !685
  %i.sg = insertelement <8 x i16> poison, i16 %i.sf, i64 0
  %i.sh = load <8 x i8>, ptr %.27571266, align 1, !tbaa !116
  %i.si = bitcast <8 x i16> %i.sg to <16 x i8>
  %i.sj = shufflevector <16 x i8> %i.si, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.sk = sext <8 x i8> %i.sj to <8 x i16>        ; 3 uses
  %i.sl = sext <8 x i8> %i.sh to <8 x i16>        ; 4 uses
  %i.sm = shufflevector <8 x i16> %i.sk, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6> ; 2 uses
  %i.sn = mul nsw <8 x i16> %i.sk, %i.sl          ; 2 uses
  %i.so = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.sk, <8 x i16> %i.sl) ; 2 uses
  %i.sp = mul nsw <8 x i16> %i.sm, %i.sl          ; 2 uses
  %i.sq = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.sm, <8 x i16> %i.sl) ; 2 uses
  %i.sr = shufflevector <8 x i16> %i.sn, <8 x i16> %i.so, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ss = shufflevector <8 x i16> %i.sn, <8 x i16> %i.so, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.st = shufflevector <8 x i16> %i.sp, <8 x i16> %i.sq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.su = shufflevector <8 x i16> %i.sp, <8 x i16> %i.sq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.sv = bitcast <8 x i16> %i.sr to <4 x i32>
  %i.sw = add <4 x i32> %i.se, %i.sv              ; 2 uses
  %i.sx = bitcast <8 x i16> %i.ss to <4 x i32>
  %i.sy = add <4 x i32> %i.sd, %i.sx              ; 2 uses
  %i.sz = bitcast <8 x i16> %i.st to <4 x i32>
  %i.ta = add <4 x i32> %i.sc, %i.sz              ; 2 uses
  %i.tb = bitcast <8 x i16> %i.su to <4 x i32>
  %i.tc = add <4 x i32> %i.sb, %i.tb              ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.18191265, i64 2
  %i.te = getelementptr inbounds nuw i8, ptr %.27571266, i64 8 ; 2 uses
  %i.tf = add nuw nsw i32 %.18211264, 1           ; 2 uses
  %exitcond1675.not = icmp eq i32 %i.tf, %8
  br i1 %exitcond1675.not, label %._crit_edge1268, label %.lr.ph1267, !llvm.loop !694

._crit_edge1268:                                  ; preds = %.lr.ph1267, %.preheader1076
  %.lcssa1102 = phi <4 x i32> [ %.lcssa1098, %.preheader1076 ], [ %i.sw, %.lr.ph1267 ]
  %.lcssa1101 = phi <4 x i32> [ %.lcssa1097, %.preheader1076 ], [ %i.sy, %.lr.ph1267 ]
  %.lcssa1100 = phi <4 x i32> [ %.lcssa1096, %.preheader1076 ], [ %i.ta, %.lr.ph1267 ]
  %.lcssa1099 = phi <4 x i32> [ %.lcssa1095, %.preheader1076 ], [ %i.tc, %.lr.ph1267 ]
  %.2757.lcssa = phi ptr [ %.1756.lcssa, %.preheader1076 ], [ %i.te, %.lr.ph1267 ] ; 2 uses
  store <4 x i32> %.lcssa1102, ptr %.61276, align 16, !tbaa !116
  %i.tg = getelementptr inbounds nuw i8, ptr %.61276, i64 16
  store <4 x i32> %.lcssa1101, ptr %i.tg, align 16, !tbaa !116
  %i.th = getelementptr inbounds nuw i8, ptr %.61276, i64 32
  store <4 x i32> %.lcssa1100, ptr %i.th, align 16, !tbaa !116
  %i.ti = getelementptr inbounds nuw i8, ptr %.61276, i64 48
  store <4 x i32> %.lcssa1099, ptr %i.ti, align 16, !tbaa !116
  %i.tj = getelementptr inbounds nuw i8, ptr %.61276, i64 64 ; 2 uses
  %i.tk = add nuw nsw i32 %.08141274, 8           ; 2 uses
  %i.tl = or disjoint i32 %i.tk, 7
  %i.tm = icmp slt i32 %i.tl, %6
  br i1 %i.tm, label %.lr.ph1277, label %.preheader1079, !llvm.loop !695

.preheader1078:                                   ; preds = %._crit_edge1295, %.preheader1079
  %.1815.lcssa = phi i32 [ %.0814.lcssa, %.preheader1079 ], [ %i.wn, %._crit_edge1295 ] ; 3 uses
  %.3758.lcssa = phi ptr [ %.0755.lcssa, %.preheader1079 ], [ %.5760.lcssa, %._crit_edge1295 ] ; 2 uses
  %.7.lcssa = phi ptr [ %.6.lcssa, %.preheader1079 ], [ %i.wm, %._crit_edge1295 ] ; 2 uses
  %i.tn = or disjoint i32 %.1815.lcssa, 1
  %i.to = icmp slt i32 %i.tn, %6
  br i1 %i.to, label %.lr.ph1339.preheader, label %.preheader1077

.lr.ph1339.preheader:                             ; preds = %.preheader1078
  %i.tp = getelementptr i8, ptr %.17111373, i64 %i.ba
  br label %.lr.ph1339

.lr.ph1302:                                       ; preds = %.preheader1079, %._crit_edge1295
  %.71301 = phi ptr [ %i.wm, %._crit_edge1295 ], [ %.6.lcssa, %.preheader1079 ] ; 5 uses
  %.37581300 = phi ptr [ %.5760.lcssa, %._crit_edge1295 ], [ %.0755.lcssa, %.preheader1079 ] ; 4 uses
  %.18151299 = phi i32 [ %i.wn, %._crit_edge1295 ], [ %.0814.lcssa, %.preheader1079 ]
  br i1 %i.ah, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph1302
  %i.tq = load <4 x i32>, ptr %.71301, align 16, !tbaa !116
  %i.tr = getelementptr inbounds nuw i8, ptr %.71301, i64 16
  %i.ts = load <4 x i32>, ptr %i.tr, align 16, !tbaa !116
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph1302, %bb.t
  %i.tt = phi <4 x i32> [ %i.tq, %bb.t ], [ zeroinitializer, %.lr.ph1302 ] ; 3 uses
  %i.tu = phi <4 x i32> [ %i.ts, %bb.t ], [ zeroinitializer, %.lr.ph1302 ] ; 3 uses
  br i1 %i.ai, label %.lr.ph1285.preheader, label %.preheader1075

.lr.ph1285.preheader:                             ; preds = %bb.u
  br i1 %i.ax, label %.lr.ph1285.epil.preheader, label %.lr.ph1285

.preheader1075.loopexit.unr-lcssa:                ; preds = %.lr.ph1285
  br i1 %lcmp.mod2389.not.not, label %.lr.ph1285.epil.preheader, label %.preheader1075.loopexit

.lr.ph1285.epil.preheader:                        ; preds = %.preheader1075.loopexit.unr-lcssa, %.lr.ph1285.preheader
  %.47591283.epil.init = phi ptr [ %.37581300, %.lr.ph1285.preheader ], [ %i.vn, %.preheader1075.loopexit.unr-lcssa ]
  %.08221282.epil.init = phi ptr [ %.17111373, %.lr.ph1285.preheader ], [ %i.vm, %.preheader1075.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init2386 = phi <4 x i32> [ %i.tu, %.lr.ph1285.preheader ], [ %i.vl, %.preheader1075.loopexit.unr-lcssa ]
  %.epil.init2388 = phi <4 x i32> [ %i.tt, %.lr.ph1285.preheader ], [ %i.vi, %.preheader1075.loopexit.unr-lcssa ]
end_hunk_5
begin_hunk_6_@_ZN4ncnnL16gemm_AT_x86_int8ERKNS_3MatES2_S2_S2_RS0_iiiiiffiiiiRKNS_6OptionE.omp_outlined:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.av
  store ptr %i.aw, ptr %12, align 8, !tbaa !18
  store ptr null, ptr %i.q, align 8, !tbaa !11
  store i64 %i.an, ptr %i.r, align 8, !tbaa !59
  store i32 %i.aq, ptr %i.s, align 8, !tbaa !60
  store ptr %i.ar, ptr %i.t, align 8, !tbaa !17
  %i.ax = insertelement <4 x i32> <i32 2, i32 poison, i32 1, i32 1>, i32 %i.ai, i64 1
  store <4 x i32> %i.ax, ptr %i.u, align 8, !tbaa !45
  store i32 1, ptr %i.v, align 8, !tbaa !51
  store i64 %i.as, ptr %i.w, align 8, !tbaa !20, !alias.scope !764
  %i.ay = load i32, ptr %9, align 4, !tbaa !45
  %.not37 = icmp eq i32 %i.ay, 0
  %i.az = load float, ptr %11, align 4, !tbaa !68 ; 2 uses
  br i1 %.not37, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc46
  invoke fastcc void @_ZN4ncnnL20pack_B_tile_quantizeERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.ab, i32 noundef %.sroa.speculated59, i32 noundef %i.ad, i32 noundef %.sroa.speculated, float noundef nofpclass(nan inf) %i.az)
          to label %bb.e unwind label %bb.m

bb.d:                                             ; preds = %.noexc46
  invoke fastcc void @_ZN4ncnnL30transpose_pack_B_tile_quantizeERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.ab, i32 noundef %.sroa.speculated59, i32 noundef %i.ad, i32 noundef %.sroa.speculated, float noundef nofpclass(nan inf) %i.az)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ba = load ptr, ptr %i.q, align 8, !tbaa !11  ; 2 uses
  %.not.i39 = icmp eq ptr %i.ba, null
  br i1 %.not.i39, label %_ZN4ncnn3MatD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = atomicrmw add ptr %i.ba, i32 -1 acq_rel, align 4
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %bb.g, label %_ZN4ncnn3MatD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.bd = load ptr, ptr %i.t, align 8, !tbaa !17  ; 3 uses
  %.not3.i40 = icmp eq ptr %i.bd, null
  %i.be = load ptr, ptr %12, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i40, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !9
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  invoke void %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef %i.be)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.k, !inline_history !19

bb.i:                                             ; preds = %bb.g
  %.not.i43 = icmp eq ptr %i.be, null
  br i1 %.not.i43, label %_ZN4ncnn3MatD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.be) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.f, %bb.e, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %i.bk = add nsw i32 %.063, 1
  %i.bl = load i32, ptr %i.b, align 4, !tbaa !45
  %.not.not = icmp slt i32 %.063, %i.bl
  br i1 %.not.not, label %.noexc46, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.m:                                             ; preds = %bb.d, %bb.c
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #26
  unreachable
}

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZN4ncnnL20pack_B_tile_quantizeERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6) unnamed_addr #15 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn36pack_B_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6)
  br label %_ZN4ncnnL24pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
  %.not338.i = icmp eq i32 %i.b, 0
  br i1 %.not338.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4ncnn32pack_B_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6)
  br label %_ZN4ncnnL24pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit

bb.e:                                             ; preds = %bb.c
  %i.c = tail call noundef i32 @_ZN4ncnn20cpu_support_x86_avx2Ev()
  %.not339.i = icmp eq i32 %i.c, 0
  br i1 %.not339.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4ncnn29pack_B_tile_fp32_to_int8_avx2ERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6)
  br label %_ZN4ncnnL24pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit

bb.g:                                             ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !60   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !87
  %i.h = icmp eq i32 %i.g, 3
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i64, ptr %i.i, align 8, !tbaa !20
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !88
  %i.m = sext i32 %i.l to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.n = phi i64 [ %i.j, %bb.h ], [ %i.m, %bb.i ] ; 22 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.p = icmp sgt i32 %3, 7
  br i1 %i.p, label %.lr.ph472.i, label %.preheader424.i

.lr.ph472.i:                                      ; preds = %bb.j
  %i.q = mul nsw i32 %i.e, %4
  %i.r = sext i32 %i.q to i64
  %i.s = insertelement <8 x float> poison, float %6, i64 0
  %i.t = shufflevector <8 x float> %i.s, <8 x float> poison, <8 x i32> zeroinitializer ; 9 uses
  %i.u = icmp sgt i32 %5, 1                       ; 3 uses
  %.idx348.i = shl i64 %i.n, 4                    ; 4 uses
  %.idx408.i = shl i64 %i.n, 3                    ; 2 uses
  %.idx409.i = mul i64 %i.n, 12                   ; 2 uses
  %.idx411.i = mul i64 %i.n, 20                   ; 2 uses
  %.idx412.i = mul i64 %i.n, 24                   ; 2 uses
  %.idx413.i = mul i64 %i.n, 28                   ; 2 uses
  %i.v = and i32 %5, -2                           ; 3 uses
  %i.w = zext nneg i32 %3 to i64
  %i.x = sext i32 %2 to i64
  br label %bb.k

.preheader424.loopexit.i:                         ; preds = %.loopexit426.i
  %i.y = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader424.i

.preheader424.i:                                  ; preds = %.preheader424.loopexit.i, %bb.j
  %.0303.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.y, %.preheader424.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %i.o, %bb.j ], [ %.9.i, %.preheader424.loopexit.i ] ; 4 uses
  %i.z = or disjoint i32 %.0303.lcssa.i, 3
  %i.aa = icmp slt i32 %i.z, %3
  br i1 %i.aa, label %.lr.ph502.i, label %.preheader417.i

.lr.ph502.i:                                      ; preds = %.preheader424.i
  %i.ab = load ptr, ptr %0, align 8, !tbaa !18
  %i.ac = mul nsw i32 %i.e, %4
  %i.ad = sext i32 %i.ac to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.ab, i64 %i.ad ; 2 uses
  %i.ae = insertelement <4 x float> poison, float %6, i64 0
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.ag = icmp sgt i32 %5, 1                      ; 2 uses
  %.idx406.i = shl i64 %i.n, 3                    ; 2 uses
  %.idx407.i = mul i64 %i.n, 12                   ; 2 uses
  %i.ah = and i32 %5, -2                          ; 2 uses
  %i.ai = zext i32 %.0303.lcssa.i to i64          ; 5 uses
  %i.aj = sext i32 %3 to i64
  %i.ak = sext i32 %2 to i64                      ; 2 uses
  %invariant.op.i = add nsw i64 %i.aj, -3         ; 3 uses
  switch i32 %i.e, label %.loopexit419.i.preheader [
    i32 4, label %.preheader423.i.us.preheader
    i32 1, label %.preheader420.i.us
  ]

.preheader423.i.us.preheader:                     ; preds = %.lr.ph502.i
  %xtraiter = and i32 %5, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br label %.preheader423.i.us

.loopexit419.i.preheader:                         ; preds = %.lr.ph502.i
  %i.al = add nuw nsw i64 %i.ai, 4
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.al)
  %i.am = xor i64 %i.ai, -1
  %i.an = add nsw i64 %smax, %i.am
  %i.ao = and i64 %i.an, -4
  %i.ap = add nuw i64 %i.ao, %i.ai
  %i.aq = add nuw i64 %i.ap, 4
  br label %.preheader417.loopexit.i

.preheader423.i.us:                               ; preds = %.preheader423.i.us.preheader, %.loopexit419.i.us
  %indvars.iv587.i.us = phi i64 [ %indvars.iv.next588.i.us, %.loopexit419.i.us ], [ %i.ai, %.preheader423.i.us.preheader ] ; 2 uses
  %.10501.i.us = phi ptr [ %.16.i.us, %.loopexit419.i.us ], [ %.0.lcssa.i, %.preheader423.i.us.preheader ] ; 2 uses
  %i.ar = add nsw i64 %indvars.iv587.i.us, %i.ak
  %i.as = mul i64 %i.ar, %i.n
  %gep.i.us = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.as ; 2 uses
  br i1 %i.ag, label %.lr.ph478.i.us, label %.preheader421.i.us

.lr.ph478.i.us:                                   ; preds = %.preheader423.i.us, %.lr.ph478.i.us
  %.11477.i.us = phi ptr [ %i.bm, %.lr.ph478.i.us ], [ %.10501.i.us, %.preheader423.i.us ] ; 2 uses
  %.0323476.i.us = phi ptr [ %i.bn, %.lr.ph478.i.us ], [ %gep.i.us, %.preheader423.i.us ] ; 3 uses
  %.0328475.i.us = phi i32 [ %i.bo, %.lr.ph478.i.us ], [ 0, %.preheader423.i.us ]
  %i.at = load <4 x float>, ptr %.0323476.i.us, align 16, !tbaa !116
  %i.au = getelementptr inbounds nuw i8, ptr %.0323476.i.us, i64 16
  %i.av = load <4 x float>, ptr %i.au, align 16, !tbaa !116
  %i.aw = fmul fast <4 x float> %i.at, %i.af      ; 2 uses
  %i.ax = fmul fast <4 x float> %i.av, %i.af      ; 2 uses
  %i.ay = shufflevector <4 x float> %i.aw, <4 x float> %i.ax, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.az = shufflevector <4 x float> %i.aw, <4 x float> %i.ax, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ba = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ay)
  %i.bb = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.az)
  %i.bc = fadd fast <4 x float> %i.ba, %i.ay
  %i.bd = fadd fast <4 x float> %i.bb, %i.az
  %i.be = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bc)
  %i.bf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bd)
  %i.bg = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.be, <4 x i32> %i.bf)
  %i.bh = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bg, <8 x i16> splat (i16 -127))
  %i.bi = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bh, <8 x i16> splat (i16 127))
  %i.bj = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bi, <8 x i16> poison)
  %i.bk = bitcast <16 x i8> %i.bj to <2 x i64>
  %i.bl = extractelement <2 x i64> %i.bk, i64 0
  store i64 %i.bl, ptr %.11477.i.us, align 8, !tbaa !767
  %i.bm = getelementptr inbounds nuw i8, ptr %.11477.i.us, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0323476.i.us, i64 32 ; 2 uses
  %i.bo = add nuw nsw i32 %.0328475.i.us, 2       ; 2 uses
  %i.bp = or disjoint i32 %i.bo, 1
  %i.bq = icmp slt i32 %i.bp, %5
  br i1 %i.bq, label %.lr.ph478.i.us, label %.preheader421.i.us, !llvm.loop !768

.preheader421.i.us:                               ; preds = %.lr.ph478.i.us, %.preheader423.i.us
  %.0328.lcssa.i.us = phi i32 [ 0, %.preheader423.i.us ], [ %i.ah, %.lr.ph478.i.us ] ; 4 uses
  %.0323.lcssa.i.us = phi ptr [ %gep.i.us, %.preheader423.i.us ], [ %i.bn, %.lr.ph478.i.us ] ; 3 uses
  %.11.lcssa.i.us = phi ptr [ %.10501.i.us, %.preheader423.i.us ], [ %i.bm, %.lr.ph478.i.us ] ; 4 uses
  %i.br = icmp slt i32 %.0328.lcssa.i.us, %5
  br i1 %i.br, label %.lr.ph485.i.us.preheader, label %.loopexit419.i.us

.lr.ph485.i.us.preheader:                         ; preds = %.preheader421.i.us
  %.neg = or disjoint i32 %.0328.lcssa.i.us, 1
  br i1 %lcmp.mod.not, label %.lr.ph485.i.us.prol.loopexit, label %.lr.ph485.i.us.prol

.lr.ph485.i.us.prol:                              ; preds = %.lr.ph485.i.us.preheader
  %i.bs = load <4 x float>, ptr %.0323.lcssa.i.us, align 16, !tbaa !116
  %i.bt = fmul fast <4 x float> %i.bs, %i.af      ; 2 uses
  %i.bu = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bt)
  %i.bv = fadd fast <4 x float> %i.bu, %i.bt
  %i.bw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bv) ; 2 uses
  %i.bx = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bw, <4 x i32> %i.bw)
  %i.by = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bx, <8 x i16> splat (i16 -127))
  %i.bz = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.by, <8 x i16> splat (i16 127))
  %i.ca = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bz, <8 x i16> poison)
  %i.cb = bitcast <16 x i8> %i.ca to <4 x i32>
  %i.cc = extractelement <4 x i32> %i.cb, i64 0
  store i32 %i.cc, ptr %.11.lcssa.i.us, align 4, !tbaa !45
  %i.cd = getelementptr inbounds nuw i8, ptr %.11.lcssa.i.us, i64 4 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0323.lcssa.i.us, i64 16
  %i.cf = or disjoint i32 %.0328.lcssa.i.us, 1
  br label %.lr.ph485.i.us.prol.loopexit

.lr.ph485.i.us.prol.loopexit:                     ; preds = %.lr.ph485.i.us.prol, %.lr.ph485.i.us.preheader
  %.lcssa177.unr = phi ptr [ poison, %.lr.ph485.i.us.preheader ], [ %i.cd, %.lr.ph485.i.us.prol ]
  %.12484.i.us.unr = phi ptr [ %.11.lcssa.i.us, %.lr.ph485.i.us.preheader ], [ %i.cd, %.lr.ph485.i.us.prol ]
  %.1324483.i.us.unr = phi ptr [ %.0323.lcssa.i.us, %.lr.ph485.i.us.preheader ], [ %i.ce, %.lr.ph485.i.us.prol ]
  %.1329482.i.us.unr = phi i32 [ %.0328.lcssa.i.us, %.lr.ph485.i.us.preheader ], [ %i.cf, %.lr.ph485.i.us.prol ]
  %i.cg = icmp eq i32 %5, %.neg
  br i1 %i.cg, label %.loopexit419.i.us, label %.lr.ph485.i.us

.lr.ph485.i.us:                                   ; preds = %.lr.ph485.i.us.prol.loopexit, %.lr.ph485.i.us
  %.12484.i.us = phi ptr [ %i.df, %.lr.ph485.i.us ], [ %.12484.i.us.unr, %.lr.ph485.i.us.prol.loopexit ] ; 3 uses
  %.1324483.i.us = phi ptr [ %i.dg, %.lr.ph485.i.us ], [ %.1324483.i.us.unr, %.lr.ph485.i.us.prol.loopexit ] ; 3 uses
  %.1329482.i.us = phi i32 [ %i.dh, %.lr.ph485.i.us ], [ %.1329482.i.us.unr, %.lr.ph485.i.us.prol.loopexit ]
  %i.ch = load <4 x float>, ptr %.1324483.i.us, align 16, !tbaa !116
  %i.ci = fmul fast <4 x float> %i.ch, %i.af      ; 2 uses
  %i.cj = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ci)
  %i.ck = fadd fast <4 x float> %i.cj, %i.ci
  %i.cl = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ck) ; 2 uses
  %i.cm = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cl, <4 x i32> %i.cl)
  %i.cn = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.cm, <8 x i16> splat (i16 -127))
  %i.co = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.cn, <8 x i16> splat (i16 127))
  %i.cp = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.co, <8 x i16> poison)
  %i.cq = bitcast <16 x i8> %i.cp to <4 x i32>
  %i.cr = extractelement <4 x i32> %i.cq, i64 0
  store i32 %i.cr, ptr %.12484.i.us, align 4, !tbaa !45
  %i.cs = getelementptr inbounds nuw i8, ptr %.12484.i.us, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %.1324483.i.us, i64 16
  %i.cu = load <4 x float>, ptr %i.ct, align 16, !tbaa !116
  %i.cv = fmul fast <4 x float> %i.cu, %i.af      ; 2 uses
  %i.cw = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.cv)
  %i.cx = fadd fast <4 x float> %i.cw, %i.cv
  %i.cy = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cx) ; 2 uses
  %i.cz = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cy, <4 x i32> %i.cy)
  %i.da = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.cz, <8 x i16> splat (i16 -127))
  %i.db = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.da, <8 x i16> splat (i16 127))
  %i.dc = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.db, <8 x i16> poison)
  %i.dd = bitcast <16 x i8> %i.dc to <4 x i32>
  %i.de = extractelement <4 x i32> %i.dd, i64 0
  store i32 %i.de, ptr %i.cs, align 4, !tbaa !45
  %i.df = getelementptr inbounds nuw i8, ptr %.12484.i.us, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.1324483.i.us, i64 32
  %i.dh = add nuw nsw i32 %.1329482.i.us, 2       ; 2 uses
  %exitcond585.not.i.us.1 = icmp eq i32 %i.dh, %5
  br i1 %exitcond585.not.i.us.1, label %.loopexit419.i.us, label %.lr.ph485.i.us, !llvm.loop !769

.loopexit419.i.us:                                ; preds = %.lr.ph485.i.us.prol.loopexit, %.lr.ph485.i.us, %.preheader421.i.us
  %.16.i.us = phi ptr [ %.11.lcssa.i.us, %.preheader421.i.us ], [ %.lcssa177.unr, %.lr.ph485.i.us.prol.loopexit ], [ %i.df, %.lr.ph485.i.us ] ; 2 uses
  %indvars.iv.next588.i.us = add nuw nsw i64 %indvars.iv587.i.us, 4 ; 3 uses
  %i.di = icmp slt i64 %indvars.iv.next588.i.us, %invariant.op.i
  br i1 %i.di, label %.preheader423.i.us, label %.preheader417.loopexit.i, !llvm.loop !770

.preheader420.i.us:                               ; preds = %.lr.ph502.i, %.loopexit419.i.us37
  %indvars.iv587.i.us34 = phi i64 [ %indvars.iv.next588.i.us39, %.loopexit419.i.us37 ], [ %i.ai, %.lr.ph502.i ] ; 2 uses
  %.10501.i.us35 = phi ptr [ %.16.i.us38, %.loopexit419.i.us37 ], [ %.0.lcssa.i, %.lr.ph502.i ] ; 2 uses
  %i.dj = add nsw i64 %indvars.iv587.i.us34, %i.ak
  %i.dk = mul i64 %i.dj, %i.n
  %gep.i.us36 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.dk ; 2 uses
  br i1 %i.ag, label %.lr.ph491.i.us, label %.preheader418.i.us

.lr.ph491.i.us:                                   ; preds = %.preheader420.i.us, %.lr.ph491.i.us
  %.14490.i.us = phi ptr [ %i.ei, %.lr.ph491.i.us ], [ %.10501.i.us35, %.preheader420.i.us ] ; 2 uses
  %.3326489.i.us = phi ptr [ %i.ej, %.lr.ph491.i.us ], [ %gep.i.us36, %.preheader420.i.us ] ; 5 uses
  %.0333488.i.us = phi i32 [ %i.ek, %.lr.ph491.i.us ], [ 0, %.preheader420.i.us ]
  %i.dl = load <2 x float>, ptr %.3326489.i.us, align 4, !tbaa !68
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.3326489.i.us, i64 %i.n
  %i.dn = load <2 x float>, ptr %i.dm, align 4, !tbaa !68
  %i.do = shufflevector <2 x float> %i.dl, <2 x float> %i.dn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dp = getelementptr inbounds nuw i8, ptr %.3326489.i.us, i64 %.idx406.i
  %i.dq = load <2 x float>, ptr %i.dp, align 4, !tbaa !68
  %i.dr = getelementptr inbounds nuw i8, ptr %.3326489.i.us, i64 %.idx407.i
  %i.ds = load <2 x float>, ptr %i.dr, align 4, !tbaa !68
  %i.dt = shufflevector <2 x float> %i.dq, <2 x float> %i.ds, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.du = fmul fast <4 x float> %i.do, %i.af      ; 2 uses
  %i.dv = fmul fast <4 x float> %i.dt, %i.af      ; 2 uses
  %i.dw = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.du)
  %i.dx = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dv)
  %i.dy = fadd fast <4 x float> %i.dw, %i.du
  %i.dz = fadd fast <4 x float> %i.dx, %i.dv
  %i.ea = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dy)
  %i.eb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dz)
  %i.ec = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ea, <4 x i32> %i.eb)
  %i.ed = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ec, <8 x i16> splat (i16 -127))
  %i.ee = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ed, <8 x i16> splat (i16 127))
  %i.ef = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ee, <8 x i16> poison)
  %i.eg = bitcast <16 x i8> %i.ef to <2 x i64>
  %i.eh = extractelement <2 x i64> %i.eg, i64 0
  store i64 %i.eh, ptr %.14490.i.us, align 8, !tbaa !767
  %i.ei = getelementptr inbounds nuw i8, ptr %.14490.i.us, i64 8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.3326489.i.us, i64 8 ; 2 uses
  %i.ek = add nuw nsw i32 %.0333488.i.us, 2       ; 2 uses
  %i.el = or disjoint i32 %i.ek, 1
  %i.em = icmp slt i32 %i.el, %5
  br i1 %i.em, label %.lr.ph491.i.us, label %.preheader418.i.us, !llvm.loop !771

.preheader418.i.us:                               ; preds = %.lr.ph491.i.us, %.preheader420.i.us
  %.0333.lcssa.i.us = phi i32 [ 0, %.preheader420.i.us ], [ %i.ah, %.lr.ph491.i.us ] ; 2 uses
  %.3326.lcssa.i.us = phi ptr [ %gep.i.us36, %.preheader420.i.us ], [ %i.ej, %.lr.ph491.i.us ]
  %.14.lcssa.i.us = phi ptr [ %.10501.i.us35, %.preheader420.i.us ], [ %i.ei, %.lr.ph491.i.us ] ; 2 uses
  %i.en = icmp slt i32 %.0333.lcssa.i.us, %5
  br i1 %i.en, label %.lr.ph498.i.us, label %.loopexit419.i.us37

.lr.ph498.i.us:                                   ; preds = %.preheader418.i.us, %.lr.ph498.i.us
  %.15497.i.us = phi ptr [ %i.fj, %.lr.ph498.i.us ], [ %.14.lcssa.i.us, %.preheader418.i.us ] ; 2 uses
  %.4327496.i.us = phi ptr [ %i.fk, %.lr.ph498.i.us ], [ %.3326.lcssa.i.us, %.preheader418.i.us ] ; 5 uses
  %.1334495.i.us = phi i32 [ %i.fl, %.lr.ph498.i.us ], [ %.0333.lcssa.i.us, %.preheader418.i.us ]
  %i.eo = load float, ptr %.4327496.i.us, align 4, !tbaa !68
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.4327496.i.us, i64 %i.n
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !68
  %i.er = getelementptr inbounds nuw i8, ptr %.4327496.i.us, i64 %.idx406.i
  %i.es = load float, ptr %i.er, align 4, !tbaa !68
  %i.et = getelementptr inbounds nuw i8, ptr %.4327496.i.us, i64 %.idx407.i
  %i.eu = load float, ptr %i.et, align 4, !tbaa !68
  %i.ev = insertelement <4 x float> poison, float %i.eo, i64 0
  %i.ew = insertelement <4 x float> %i.ev, float %i.eq, i64 1
  %i.ex = insertelement <4 x float> %i.ew, float %i.es, i64 2
  %i.ey = insertelement <4 x float> %i.ex, float %i.eu, i64 3
  %i.ez = fmul fast <4 x float> %i.ey, %i.af      ; 2 uses
  %i.fa = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ez)
  %i.fb = fadd fast <4 x float> %i.fa, %i.ez
  %i.fc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fb) ; 2 uses
  %i.fd = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.fc, <4 x i32> %i.fc)
  %i.fe = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fd, <8 x i16> splat (i16 -127))
  %i.ff = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.fe, <8 x i16> splat (i16 127))
  %i.fg = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ff, <8 x i16> poison)
  %i.fh = bitcast <16 x i8> %i.fg to <4 x i32>
  %i.fi = extractelement <4 x i32> %i.fh, i64 0
  store i32 %i.fi, ptr %.15497.i.us, align 4, !tbaa !45
  %i.fj = getelementptr inbounds nuw i8, ptr %.15497.i.us, i64 4 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.4327496.i.us, i64 4
  %i.fl = add nuw nsw i32 %.1334495.i.us, 1       ; 2 uses
  %exitcond586.not.i.us = icmp eq i32 %i.fl, %5
end_hunk_6
begin_hunk_7_@_ZN4ncnnL30transpose_pack_B_tile_quantizeERKNS_3MatERS0_iiiif:bb.a
  %i.ao = fmul fast <8 x float> %i.am, %i.u       ; 2 uses
  %i.ap = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.an)
  %i.aq = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ao)
  %i.ar = fadd fast <8 x float> %i.ap, %i.an
  %i.as = fadd fast <8 x float> %i.aq, %i.ao
  %i.at = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ar) ; 2 uses
  %i.au = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.as) ; 2 uses
  %i.av = shufflevector <8 x i32> %i.at, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aw = shufflevector <8 x i32> %i.at, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ax = shufflevector <8 x i32> %i.au, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ay = shufflevector <8 x i32> %i.au, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.az = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.av, <4 x i32> %i.aw)
  %i.ba = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ax, <4 x i32> %i.ay)
  %i.bb = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.az, <8 x i16> splat (i16 -127))
  %i.bc = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bb, <8 x i16> splat (i16 127))
  %i.bd = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ba, <8 x i16> splat (i16 -127))
  %i.be = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bd, <8 x i16> splat (i16 127))
  %i.bf = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bc, <8 x i16> %i.be)
  %i.bg = shufflevector <16 x i8> %i.bf, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.bg, ptr %.5601.i.us.us.us, align 1, !tbaa !116
  %i.bh = getelementptr inbounds nuw i8, ptr %.5601.i.us.us.us, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.4399600.i.us.us.us, i64 %.idx450.i ; 2 uses
  %i.bj = add nuw nsw i32 %.0405599.i.us.us.us, 2 ; 2 uses
  %i.bk = or disjoint i32 %i.bj, 1
  %i.bl = icmp slt i32 %i.bk, %5
  br i1 %i.bl, label %.lr.ph602.i.us.us.us, label %.preheader585.i.us.us.us, !llvm.loop !802

.preheader585.i.us.us.us:                         ; preds = %.lr.ph602.i.us.us.us, %.loopexit588.i.us.us.us
  %.0405.lcssa.i.us.us.us = phi i32 [ 0, %.loopexit588.i.us.us.us ], [ %i.y, %.lr.ph602.i.us.us.us ] ; 2 uses
  %.4399.lcssa.i.us.us.us = phi ptr [ %i.aj, %.loopexit588.i.us.us.us ], [ %i.bi, %.lr.ph602.i.us.us.us ]
  %.5.lcssa.i.us.us.us = phi ptr [ %.0612.i.us.us.us, %.loopexit588.i.us.us.us ], [ %i.bh, %.lr.ph602.i.us.us.us ] ; 2 uses
  %i.bm = icmp slt i32 %.0405.lcssa.i.us.us.us, %5
  br i1 %i.bm, label %.lr.ph609.i.us.us.us, label %.loopexit586.i.us.us.us

.lr.ph609.i.us.us.us:                             ; preds = %.preheader585.i.us.us.us, %.lr.ph609.i.us.us.us
  %.6608.i.us.us.us = phi ptr [ %i.ca, %.lr.ph609.i.us.us.us ], [ %.5.lcssa.i.us.us.us, %.preheader585.i.us.us.us ] ; 2 uses
  %.5400607.i.us.us.us = phi ptr [ %i.cb, %.lr.ph609.i.us.us.us ], [ %.4399.lcssa.i.us.us.us, %.preheader585.i.us.us.us ] ; 2 uses
  %.1406606.i.us.us.us = phi i32 [ %i.cc, %.lr.ph609.i.us.us.us ], [ %.0405.lcssa.i.us.us.us, %.preheader585.i.us.us.us ]
  %i.bn = load <8 x float>, ptr %.5400607.i.us.us.us, align 1, !tbaa !116
  %i.bo = fmul fast <8 x float> %i.bn, %i.u       ; 2 uses
  %i.bp = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.bo)
  %i.bq = fadd fast <8 x float> %i.bp, %i.bo
  %i.br = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bq) ; 2 uses
  %i.bs = shufflevector <8 x i32> %i.br, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bt = shufflevector <8 x i32> %i.br, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bu = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bs, <4 x i32> %i.bt)
  %i.bv = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bu, <8 x i16> splat (i16 -127))
  %i.bw = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bv, <8 x i16> splat (i16 127))
  %i.bx = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bw, <8 x i16> poison)
  %i.by = bitcast <16 x i8> %i.bx to <2 x i64>
  %i.bz = extractelement <2 x i64> %i.by, i64 0
  store i64 %i.bz, ptr %.6608.i.us.us.us, align 8, !tbaa !767
  %i.ca = getelementptr inbounds nuw i8, ptr %.6608.i.us.us.us, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.5400607.i.us.us.us, i64 %i.n
  %i.cc = add nuw nsw i32 %.1406606.i.us.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us.us = icmp eq i32 %i.cc, %5
  br i1 %exitcond.not.i.us.us.us, label %.loopexit586.i.us.us.us, label %.lr.ph609.i.us.us.us, !llvm.loop !803

.loopexit586.i.us.us.us:                          ; preds = %.lr.ph609.i.us.us.us, %.preheader585.i.us.us.us
  %.7.i.us.us.us = phi ptr [ %.5.lcssa.i.us.us.us, %.preheader585.i.us.us.us ], [ %i.ca, %.lr.ph609.i.us.us.us ] ; 2 uses
  %indvars.iv.next.i.us.us.us = add nuw nsw i64 %indvars.iv.i.us.us.us, 8 ; 3 uses
  %i.cd = or disjoint i64 %indvars.iv.next.i.us.us.us, 7
  %i.ce = icmp samesign ult i64 %i.cd, %i.z
  br i1 %i.ce, label %.loopexit588.i.us.us.us, label %.preheader584.loopexit.i, !llvm.loop !804

.loopexit588.i.us:                                ; preds = %.lr.ph613.i.split.us, %.loopexit586.i.loopexit12.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.loopexit586.i.loopexit12.us ], [ 0, %.lr.ph613.i.split.us ] ; 2 uses
  %.0612.i.us = phi ptr [ %i.eg, %.loopexit586.i.loopexit12.us ], [ %i.o, %.lr.ph613.i.split.us ]
  %i.cf = load ptr, ptr %0, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.r
  %i.ch = add nsw i64 %indvars.iv.i.us, %i.aa
  %i.ci = mul nsw i64 %i.ch, %i.ab
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.ci
  br label %.lr.ph596.i.us

.lr.ph596.i.us:                                   ; preds = %.loopexit588.i.us, %.lr.ph596.i.us
  %.3595.i.us = phi ptr [ %i.eg, %.lr.ph596.i.us ], [ %.0612.i.us, %.loopexit588.i.us ] ; 3 uses
  %.2397594.i.us = phi ptr [ %i.eh, %.lr.ph596.i.us ], [ %i.cj, %.loopexit588.i.us ] ; 5 uses
  %.0403593.i.us = phi i32 [ %i.ei, %.lr.ph596.i.us ], [ 0, %.loopexit588.i.us ]
  %i.ck = load <8 x float>, ptr %.2397594.i.us, align 1, !tbaa !116
  %i.cl = getelementptr inbounds nuw i8, ptr %.2397594.i.us, i64 32
  %i.cm = load <8 x float>, ptr %i.cl, align 1, !tbaa !116
  %i.cn = getelementptr inbounds nuw i8, ptr %.2397594.i.us, i64 64
  %i.co = load <8 x float>, ptr %i.cn, align 1, !tbaa !116
  %i.cp = getelementptr inbounds nuw i8, ptr %.2397594.i.us, i64 96
  %i.cq = load <8 x float>, ptr %i.cp, align 1, !tbaa !116
  %i.cr = fmul fast <8 x float> %i.ck, %i.u       ; 2 uses
  %i.cs = fmul fast <8 x float> %i.cm, %i.u       ; 2 uses
  %i.ct = fmul fast <8 x float> %i.co, %i.u       ; 2 uses
  %i.cu = fmul fast <8 x float> %i.cq, %i.u       ; 2 uses
  %i.cv = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.cr)
  %i.cw = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.cs)
  %i.cx = fadd fast <8 x float> %i.cv, %i.cr
  %i.cy = fadd fast <8 x float> %i.cw, %i.cs
  %i.cz = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cx) ; 2 uses
  %i.da = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cy) ; 2 uses
  %i.db = shufflevector <8 x i32> %i.cz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dc = shufflevector <8 x i32> %i.cz, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dd = shufflevector <8 x i32> %i.da, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.de = shufflevector <8 x i32> %i.da, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.df = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.db, <4 x i32> %i.dc)
  %i.dg = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dd, <4 x i32> %i.de)
  %i.dh = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.df, <8 x i16> splat (i16 -127))
  %i.di = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.dh, <8 x i16> splat (i16 127))
  %i.dj = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.dg, <8 x i16> splat (i16 -127))
  %i.dk = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.dj, <8 x i16> splat (i16 127))
  %i.dl = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.di, <8 x i16> %i.dk) ; 2 uses
  %i.dm = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ct)
  %i.dn = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.cu)
  %i.do = fadd fast <8 x float> %i.dm, %i.ct
  %i.dp = fadd fast <8 x float> %i.dn, %i.cu
  %i.dq = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.do) ; 2 uses
  %i.dr = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dp) ; 2 uses
  %i.ds = shufflevector <8 x i32> %i.dq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dt = shufflevector <8 x i32> %i.dq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.du = shufflevector <8 x i32> %i.dr, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dv = shufflevector <8 x i32> %i.dr, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dw = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ds, <4 x i32> %i.dt)
  %i.dx = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.du, <4 x i32> %i.dv)
  %i.dy = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.dw, <8 x i16> splat (i16 -127))
  %i.dz = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.dy, <8 x i16> splat (i16 127))
  %i.ea = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.dx, <8 x i16> splat (i16 -127))
  %i.eb = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ea, <8 x i16> splat (i16 127))
  %i.ec = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.dz, <8 x i16> %i.eb) ; 2 uses
  %i.ed = shufflevector <16 x i8> %i.dl, <16 x i8> %i.ec, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29>
  %i.ee = shufflevector <16 x i8> %i.dl, <16 x i8> %i.ec, <16 x i32> <i32 2, i32 3, i32 6, i32 7, i32 10, i32 11, i32 14, i32 15, i32 18, i32 19, i32 22, i32 23, i32 26, i32 27, i32 30, i32 31>
  store <16 x i8> %i.ed, ptr %.3595.i.us, align 16, !tbaa !116
  %i.ef = getelementptr inbounds nuw i8, ptr %.3595.i.us, i64 16
  store <16 x i8> %i.ee, ptr %i.ef, align 16, !tbaa !116
  %i.eg = getelementptr inbounds nuw i8, ptr %.3595.i.us, i64 32 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.2397594.i.us, i64 %.idx451.i
  %i.ei = add nuw nsw i32 %.0403593.i.us, 4       ; 2 uses
  %i.ej = or disjoint i32 %i.ei, 3
  %i.ek = icmp slt i32 %i.ej, %5
  br i1 %i.ek, label %.lr.ph596.i.us, label %.loopexit586.i.loopexit12.us, !llvm.loop !805

.loopexit586.i.loopexit12.us:                     ; preds = %.lr.ph596.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 8 ; 3 uses
  %i.el = or disjoint i64 %indvars.iv.next.i.us, 7
  %i.em = icmp samesign ult i64 %i.el, %i.z
  br i1 %i.em, label %.loopexit588.i.us, label %.preheader584.loopexit.i, !llvm.loop !804

.preheader584.loopexit.i:                         ; preds = %.loopexit586.i.loopexit13, %.loopexit586.i.loopexit12.us, %.loopexit586.i.us.us.us, %.loopexit588.i.us.us.preheader
  %.us-phi = phi ptr [ %i.o, %.loopexit588.i.us.us.preheader ], [ %i.eg, %.loopexit586.i.loopexit12.us ], [ %.7.i.us.us.us, %.loopexit586.i.us.us.us ], [ %i.ow, %.loopexit586.i.loopexit13 ]
  %.us-phi36 = phi i64 [ %i.ae, %.loopexit588.i.us.us.preheader ], [ %indvars.iv.next.i.us, %.loopexit586.i.loopexit12.us ], [ %indvars.iv.next.i.us.us.us, %.loopexit586.i.us.us.us ], [ %indvars.iv.next.i, %.loopexit586.i.loopexit13 ]
  %i.en = trunc nuw nsw i64 %.us-phi36 to i32
  br label %.preheader584.i

.preheader584.i:                                  ; preds = %.preheader584.loopexit.i, %bb.j
  %.0389.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.en, %.preheader584.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %i.o, %bb.j ], [ %.us-phi, %.preheader584.loopexit.i ] ; 5 uses
  %i.eo = or disjoint i32 %.0389.lcssa.i, 3
  %i.ep = icmp slt i32 %i.eo, %3
  br i1 %i.ep, label %.lr.ph642.i, label %.preheader579.i

.lr.ph642.i:                                      ; preds = %.preheader584.i
  %i.eq = sext i32 %4 to i64
  %i.er = mul i64 %i.n, %i.eq                     ; 3 uses
  %i.es = icmp ne i32 %i.e, 8
  %i.et = insertelement <8 x float> poison, float %6, i64 0
  %i.eu = shufflevector <8 x float> %i.et, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ev = icmp slt i32 %5, 8
  %.idx449.i = shl i64 %i.n, 5
  %i.ew = insertelement <4 x float> poison, float %6, i64 0
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> zeroinitializer ; 9 uses
  %.idx448.i = shl i64 %i.n, 4
  %i.ey = icmp eq i32 %i.e, 1
  %i.ez = icmp sgt i32 %5, 1
  %.idx447.i = shl i64 %i.n, 3
  %i.fa = and i32 %5, -2
  %i.fb = zext i32 %.0389.lcssa.i to i64          ; 6 uses
  %i.fc = sext i32 %3 to i64
  %i.fd = sext i32 %2 to i64                      ; 3 uses
  %i.fe = sext i32 %i.e to i64                    ; 3 uses
  %brmerge715.i = or i1 %i.ev, %i.es
  %invariant.op.i = add nsw i64 %i.fc, -3         ; 4 uses
  br i1 %brmerge715.i, label %.lr.ph642.i.split.us, label %.lr.ph619.i.preheader

.lr.ph642.i.split.us:                             ; preds = %.lr.ph642.i
  %i.ff = icmp slt i32 %5, 4
  %i.fg = icmp ne i32 %i.e, 4
  %brmerge718.i = or i1 %i.ff, %i.fg
  br i1 %brmerge718.i, label %.lr.ph642.i.split.us.split.us, label %.loopexit583.i.us

.lr.ph642.i.split.us.split.us:                    ; preds = %.lr.ph642.i.split.us
  %i.fh = load ptr, ptr %0, align 8, !tbaa !18
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.er
  br i1 %i.ey, label %.loopexit583.i.us.us.us.preheader, label %.loopexit583.i.us.us.preheader

.loopexit583.i.us.us.us.preheader:                ; preds = %.lr.ph642.i.split.us.split.us
  %xtraiter = and i32 %5, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br label %.loopexit583.i.us.us.us

.loopexit583.i.us.us.preheader:                   ; preds = %.lr.ph642.i.split.us.split.us
  %i.fj = add nuw nsw i64 %i.fb, 4
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.fj)
  %i.fk = xor i64 %i.fb, -1
  %i.fl = add nsw i64 %smax, %i.fk
  %i.fm = and i64 %i.fl, -4
  %i.fn = add nuw i64 %i.fm, %i.fb
  %i.fo = add nuw i64 %i.fn, 4
  br label %.preheader579.loopexit.i

.loopexit583.i.us.us.us:                          ; preds = %.loopexit583.i.us.us.us.preheader, %.loopexit581.i.us.us.us
  %indvars.iv770.i.us.us.us = phi i64 [ %indvars.iv.next771.i.us.us.us, %.loopexit581.i.us.us.us ], [ %i.fb, %.loopexit583.i.us.us.us.preheader ] ; 2 uses
  %.8641.i.us.us.us = phi ptr [ %.15.i.us.us.us, %.loopexit581.i.us.us.us ], [ %.0.lcssa.i, %.loopexit583.i.us.us.us.preheader ] ; 2 uses
  %i.fp = add nsw i64 %indvars.iv770.i.us.us.us, %i.fd
  %i.fq = mul nuw nsw i64 %i.fp, %i.fe
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.fq ; 2 uses
  br i1 %i.ez, label %.lr.ph631.i.us.us.us, label %.preheader580.i.us.us.us

.lr.ph631.i.us.us.us:                             ; preds = %.loopexit583.i.us.us.us, %.lr.ph631.i.us.us.us
  %.13630.i.us.us.us = phi ptr [ %i.gl, %.lr.ph631.i.us.us.us ], [ %.8641.i.us.us.us, %.loopexit583.i.us.us.us ] ; 2 uses
  %.4417629.i.us.us.us = phi ptr [ %i.gm, %.lr.ph631.i.us.us.us ], [ %i.fr, %.loopexit583.i.us.us.us ] ; 3 uses
  %.0421628.i.us.us.us = phi i32 [ %i.gn, %.lr.ph631.i.us.us.us ], [ 0, %.loopexit583.i.us.us.us ]
  %i.fs = load <4 x float>, ptr %.4417629.i.us.us.us, align 1, !tbaa !116
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.4417629.i.us.us.us, i64 %i.n
  %i.fu = load <4 x float>, ptr %i.ft, align 1, !tbaa !116
  %i.fv = fmul fast <4 x float> %i.fs, %i.ex      ; 2 uses
  %i.fw = fmul fast <4 x float> %i.fu, %i.ex      ; 2 uses
  %i.fx = shufflevector <4 x float> %i.fv, <4 x float> %i.fw, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.fy = shufflevector <4 x float> %i.fv, <4 x float> %i.fw, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.fz = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.fx)
  %i.ga = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.fy)
  %i.gb = fadd fast <4 x float> %i.fz, %i.fx
  %i.gc = fadd fast <4 x float> %i.ga, %i.fy
  %i.gd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gb)
  %i.ge = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gc)
  %i.gf = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.gd, <4 x i32> %i.ge)
  %i.gg = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.gf, <8 x i16> splat (i16 -127))
  %i.gh = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.gg, <8 x i16> splat (i16 127))
  %i.gi = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.gh, <8 x i16> poison)
  %i.gj = bitcast <16 x i8> %i.gi to <2 x i64>
  %i.gk = extractelement <2 x i64> %i.gj, i64 0
  store i64 %i.gk, ptr %.13630.i.us.us.us, align 8, !tbaa !767
  %i.gl = getelementptr inbounds nuw i8, ptr %.13630.i.us.us.us, i64 8 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.4417629.i.us.us.us, i64 %.idx447.i ; 2 uses
  %i.gn = add nuw nsw i32 %.0421628.i.us.us.us, 2 ; 2 uses
  %i.go = or disjoint i32 %i.gn, 1
  %i.gp = icmp slt i32 %i.go, %5
  br i1 %i.gp, label %.lr.ph631.i.us.us.us, label %.preheader580.i.us.us.us, !llvm.loop !806

.preheader580.i.us.us.us:                         ; preds = %.lr.ph631.i.us.us.us, %.loopexit583.i.us.us.us
  %.0421.lcssa.i.us.us.us = phi i32 [ 0, %.loopexit583.i.us.us.us ], [ %i.fa, %.lr.ph631.i.us.us.us ] ; 4 uses
  %.4417.lcssa.i.us.us.us = phi ptr [ %i.fr, %.loopexit583.i.us.us.us ], [ %i.gm, %.lr.ph631.i.us.us.us ] ; 3 uses
  %.13.lcssa.i.us.us.us = phi ptr [ %.8641.i.us.us.us, %.loopexit583.i.us.us.us ], [ %i.gl, %.lr.ph631.i.us.us.us ] ; 4 uses
  %i.gq = icmp slt i32 %.0421.lcssa.i.us.us.us, %5
  br i1 %i.gq, label %.lr.ph638.i.us.us.us.preheader, label %.loopexit581.i.us.us.us

.lr.ph638.i.us.us.us.preheader:                   ; preds = %.preheader580.i.us.us.us
  %.neg = or disjoint i32 %.0421.lcssa.i.us.us.us, 1
  br i1 %lcmp.mod.not, label %.lr.ph638.i.us.us.us.prol.loopexit, label %.lr.ph638.i.us.us.us.prol

.lr.ph638.i.us.us.us.prol:                        ; preds = %.lr.ph638.i.us.us.us.preheader
  %i.gr = load <4 x float>, ptr %.4417.lcssa.i.us.us.us, align 1, !tbaa !116
  %i.gs = fmul fast <4 x float> %i.gr, %i.ex      ; 2 uses
  %i.gt = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.gs)
  %i.gu = fadd fast <4 x float> %i.gt, %i.gs
  %i.gv = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gu) ; 2 uses
  %i.gw = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.gv, <4 x i32> %i.gv)
  %i.gx = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.gw, <8 x i16> splat (i16 -127))
  %i.gy = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.gx, <8 x i16> splat (i16 127))
  %i.gz = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.gy, <8 x i16> poison)
  %i.ha = bitcast <16 x i8> %i.gz to <4 x i32>
  %i.hb = extractelement <4 x i32> %i.ha, i64 0
  store i32 %i.hb, ptr %.13.lcssa.i.us.us.us, align 4, !tbaa !45
  %i.hc = getelementptr inbounds nuw i8, ptr %.13.lcssa.i.us.us.us, i64 4 ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.4417.lcssa.i.us.us.us, i64 %i.n
  %i.he = or disjoint i32 %.0421.lcssa.i.us.us.us, 1
  br label %.lr.ph638.i.us.us.us.prol.loopexit

.lr.ph638.i.us.us.us.prol.loopexit:               ; preds = %.lr.ph638.i.us.us.us.prol, %.lr.ph638.i.us.us.us.preheader
  %.lcssa170.unr = phi ptr [ poison, %.lr.ph638.i.us.us.us.preheader ], [ %i.hc, %.lr.ph638.i.us.us.us.prol ]
  %.14637.i.us.us.us.unr = phi ptr [ %.13.lcssa.i.us.us.us, %.lr.ph638.i.us.us.us.preheader ], [ %i.hc, %.lr.ph638.i.us.us.us.prol ]
  %.5418636.i.us.us.us.unr = phi ptr [ %.4417.lcssa.i.us.us.us, %.lr.ph638.i.us.us.us.preheader ], [ %i.hd, %.lr.ph638.i.us.us.us.prol ]
  %.1422635.i.us.us.us.unr = phi i32 [ %.0421.lcssa.i.us.us.us, %.lr.ph638.i.us.us.us.preheader ], [ %i.he, %.lr.ph638.i.us.us.us.prol ]
  %i.hf = icmp eq i32 %5, %.neg
  br i1 %i.hf, label %.loopexit581.i.us.us.us, label %.lr.ph638.i.us.us.us

.lr.ph638.i.us.us.us:                             ; preds = %.lr.ph638.i.us.us.us.prol.loopexit, %.lr.ph638.i.us.us.us
  %.14637.i.us.us.us = phi ptr [ %i.ie, %.lr.ph638.i.us.us.us ], [ %.14637.i.us.us.us.unr, %.lr.ph638.i.us.us.us.prol.loopexit ] ; 3 uses
  %.5418636.i.us.us.us = phi ptr [ %i.if, %.lr.ph638.i.us.us.us ], [ %.5418636.i.us.us.us.unr, %.lr.ph638.i.us.us.us.prol.loopexit ] ; 2 uses
  %.1422635.i.us.us.us = phi i32 [ %i.ig, %.lr.ph638.i.us.us.us ], [ %.1422635.i.us.us.us.unr, %.lr.ph638.i.us.us.us.prol.loopexit ]
  %i.hg = load <4 x float>, ptr %.5418636.i.us.us.us, align 1, !tbaa !116
  %i.hh = fmul fast <4 x float> %i.hg, %i.ex      ; 2 uses
  %i.hi = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.hh)
  %i.hj = fadd fast <4 x float> %i.hi, %i.hh
  %i.hk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hj) ; 2 uses
  %i.hl = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.hk, <4 x i32> %i.hk)
  %i.hm = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.hl, <8 x i16> splat (i16 -127))
  %i.hn = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.hm, <8 x i16> splat (i16 127))
  %i.ho = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.hn, <8 x i16> poison)
  %i.hp = bitcast <16 x i8> %i.ho to <4 x i32>
  %i.hq = extractelement <4 x i32> %i.hp, i64 0
  store i32 %i.hq, ptr %.14637.i.us.us.us, align 4, !tbaa !45
  %i.hr = getelementptr inbounds nuw i8, ptr %.14637.i.us.us.us, i64 4
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.5418636.i.us.us.us, i64 %i.n ; 2 uses
  %i.ht = load <4 x float>, ptr %i.hs, align 1, !tbaa !116
  %i.hu = fmul fast <4 x float> %i.ht, %i.ex      ; 2 uses
  %i.hv = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.hu)
  %i.hw = fadd fast <4 x float> %i.hv, %i.hu
  %i.hx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hw) ; 2 uses
  %i.hy = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.hx, <4 x i32> %i.hx)
  %i.hz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.hy, <8 x i16> splat (i16 -127))
  %i.ia = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.hz, <8 x i16> splat (i16 127))
  %i.ib = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ia, <8 x i16> poison)
  %i.ic = bitcast <16 x i8> %i.ib to <4 x i32>
  %i.id = extractelement <4 x i32> %i.ic, i64 0
  store i32 %i.id, ptr %i.hr, align 4, !tbaa !45
  %i.ie = getelementptr inbounds nuw i8, ptr %.14637.i.us.us.us, i64 8 ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.n
  %i.ig = add nuw nsw i32 %.1422635.i.us.us.us, 2 ; 2 uses
  %exitcond769.not.i.us.us.us.1 = icmp eq i32 %i.ig, %5
  br i1 %exitcond769.not.i.us.us.us.1, label %.loopexit581.i.us.us.us, label %.lr.ph638.i.us.us.us, !llvm.loop !807

.loopexit581.i.us.us.us:                          ; preds = %.lr.ph638.i.us.us.us.prol.loopexit, %.lr.ph638.i.us.us.us, %.preheader580.i.us.us.us
  %.15.i.us.us.us = phi ptr [ %.13.lcssa.i.us.us.us, %.preheader580.i.us.us.us ], [ %.lcssa170.unr, %.lr.ph638.i.us.us.us.prol.loopexit ], [ %i.ie, %.lr.ph638.i.us.us.us ] ; 2 uses
  %indvars.iv.next771.i.us.us.us = add nuw nsw i64 %indvars.iv770.i.us.us.us, 4 ; 3 uses
  %i.ih = icmp slt i64 %indvars.iv.next771.i.us.us.us, %invariant.op.i
  br i1 %i.ih, label %.loopexit583.i.us.us.us, label %.preheader579.loopexit.i, !llvm.loop !808

.loopexit583.i.us:                                ; preds = %.lr.ph642.i.split.us, %.loopexit581.i.loopexit10.us
  %indvars.iv770.i.us = phi i64 [ %indvars.iv.next771.i.us, %.loopexit581.i.loopexit10.us ], [ %i.fb, %.lr.ph642.i.split.us ] ; 2 uses
  %.8641.i.us = phi ptr [ %i.jv, %.loopexit581.i.loopexit10.us ], [ %.0.lcssa.i, %.lr.ph642.i.split.us ]
  %i.ii = load ptr, ptr %0, align 8, !tbaa !18
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.er
  %i.ik = add nsw i64 %indvars.iv770.i.us, %i.fd
  %i.il = mul nsw i64 %i.ik, %i.fe
  %i.im = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.il
  br label %.lr.ph625.i.us

.lr.ph625.i.us:                                   ; preds = %.loopexit583.i.us, %.lr.ph625.i.us
  %.11624.i.us = phi ptr [ %i.jv, %.lr.ph625.i.us ], [ %.8641.i.us, %.loopexit583.i.us ] ; 2 uses
  %.2415623.i.us = phi ptr [ %i.jw, %.lr.ph625.i.us ], [ %i.im, %.loopexit583.i.us ] ; 5 uses
  %.0420622.i.us = phi i32 [ %i.jx, %.lr.ph625.i.us ], [ 0, %.loopexit583.i.us ]
  %i.in = load <4 x float>, ptr %.2415623.i.us, align 16, !tbaa !116
  %i.io = getelementptr inbounds nuw i8, ptr %.2415623.i.us, i64 16
  %i.ip = load <4 x float>, ptr %i.io, align 16, !tbaa !116
  %i.iq = getelementptr inbounds nuw i8, ptr %.2415623.i.us, i64 32
  %i.ir = load <4 x float>, ptr %i.iq, align 16, !tbaa !116
  %i.is = getelementptr inbounds nuw i8, ptr %.2415623.i.us, i64 48
  %i.it = load <4 x float>, ptr %i.is, align 16, !tbaa !116
  %i.iu = fmul fast <4 x float> %i.in, %i.ex      ; 2 uses
  %i.iv = fmul fast <4 x float> %i.ip, %i.ex      ; 2 uses
  %i.iw = fmul fast <4 x float> %i.ir, %i.ex      ; 2 uses
  %i.ix = fmul fast <4 x float> %i.it, %i.ex      ; 2 uses
  %i.iy = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.iu)
  %i.iz = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.iv)
  %i.ja = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.iw)
  %i.jb = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ix)
  %i.jc = fadd fast <4 x float> %i.iy, %i.iu
  %i.jd = fadd fast <4 x float> %i.iz, %i.iv
  %i.je = fadd fast <4 x float> %i.ja, %i.iw
  %i.jf = fadd fast <4 x float> %i.jb, %i.ix
  %i.jg = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jc)
  %i.jh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jd)
  %i.ji = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.je)
  %i.jj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jf)
  %i.jk = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.jg, <4 x i32> %i.jh)
  %i.jl = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ji, <4 x i32> %i.jj)
  %i.jm = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.jk, <8 x i16> splat (i16 -127))
  %i.jn = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.jm, <8 x i16> splat (i16 127))
  %i.jo = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.jl, <8 x i16> splat (i16 -127))
  %i.jp = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.jo, <8 x i16> splat (i16 127))
  %i.jq = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.jn, <8 x i16> %i.jp)
  %i.jr = bitcast <16 x i8> %i.jq to <8 x i16>
  %i.js = shufflevector <8 x i16> %i.jr, <8 x i16> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  %i.jt = bitcast <8 x i16> %i.js to <4 x i32>
  %i.ju = shufflevector <4 x i32> %i.jt, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.ju, ptr %.11624.i.us, align 16, !tbaa !116
  %i.jv = getelementptr inbounds nuw i8, ptr %.11624.i.us, i64 16 ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.2415623.i.us, i64 %.idx448.i
  %i.jx = add nuw nsw i32 %.0420622.i.us, 4       ; 2 uses
  %i.jy = or disjoint i32 %i.jx, 3
  %i.jz = icmp slt i32 %i.jy, %5
  br i1 %i.jz, label %.lr.ph625.i.us, label %.loopexit581.i.loopexit10.us, !llvm.loop !809

.loopexit581.i.loopexit10.us:                     ; preds = %.lr.ph625.i.us
  %indvars.iv.next771.i.us = add nuw nsw i64 %indvars.iv770.i.us, 4 ; 3 uses
  %i.ka = icmp slt i64 %indvars.iv.next771.i.us, %invariant.op.i
  br i1 %i.ka, label %.loopexit583.i.us, label %.preheader579.loopexit.i, !llvm.loop !808

.lr.ph.i.preheader:                               ; preds = %.lr.ph613.i, %.loopexit586.i.loopexit13
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit586.i.loopexit13 ], [ 0, %.lr.ph613.i ] ; 2 uses
  %.0612.i = phi ptr [ %i.ow, %.loopexit586.i.loopexit13 ], [ %i.o, %.lr.ph613.i ]
  %i.kb = load ptr, ptr %0, align 8, !tbaa !18
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %i.r
  %i.kd = add nsw i64 %indvars.iv.i, %i.aa
  %i.ke = mul nsw i64 %i.kd, %i.ab
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.kc, i64 %i.ke
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.1591.i = phi ptr [ %i.ow, %.lr.ph.i ], [ %.0612.i, %.lr.ph.i.preheader ] ; 3 uses
  %.0395590.i = phi ptr [ %i.ox, %.lr.ph.i ], [ %i.kf, %.lr.ph.i.preheader ] ; 9 uses
  %.0402589.i = phi i32 [ %i.oy, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.kg = load <8 x float>, ptr %.0395590.i, align 32, !tbaa !116
  %i.kh = getelementptr inbounds nuw i8, ptr %.0395590.i, i64 32
  %i.ki = load <8 x float>, ptr %i.kh, align 32, !tbaa !116
  %i.kj = getelementptr inbounds nuw i8, ptr %.0395590.i, i64 64
  %i.kk = load <8 x float>, ptr %i.kj, align 32, !tbaa !116
  %i.kl = getelementptr inbounds nuw i8, ptr %.0395590.i, i64 96
  %i.km = load <8 x float>, ptr %i.kl, align 32, !tbaa !116
  %i.kn = getelementptr inbounds nuw i8, ptr %.0395590.i, i64 128
  %i.ko = load <8 x float>, ptr %i.kn, align 32, !tbaa !116
  %i.kp = getelementptr inbounds nuw i8, ptr %.0395590.i, i64 160
  %i.kq = load <8 x float>, ptr %i.kp, align 32, !tbaa !116
  %i.kr = getelementptr inbounds nuw i8, ptr %.0395590.i, i64 192
  %i.ks = load <8 x float>, ptr %i.kr, align 32, !tbaa !116
  %i.kt = getelementptr inbounds nuw i8, ptr %.0395590.i, i64 224
  %i.ku = load <8 x float>, ptr %i.kt, align 32, !tbaa !116
  %i.kv = fmul fast <8 x float> %i.kg, %i.u       ; 2 uses
  %i.kw = fmul fast <8 x float> %i.ki, %i.u       ; 2 uses
  %i.kx = fmul fast <8 x float> %i.kk, %i.u       ; 2 uses
  %i.ky = fmul fast <8 x float> %i.km, %i.u       ; 2 uses
  %i.kz = fmul fast <8 x float> %i.ko, %i.u       ; 2 uses
  %i.la = fmul fast <8 x float> %i.kq, %i.u       ; 2 uses
  %i.lb = fmul fast <8 x float> %i.ks, %i.u       ; 2 uses
  %i.lc = fmul fast <8 x float> %i.ku, %i.u       ; 2 uses
  %i.ld = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.kv)
  %i.le = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.kx)
  %i.lf = fadd fast <8 x float> %i.ld, %i.kv
  %i.lg = fadd fast <8 x float> %i.le, %i.kx
  %i.lh = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lf) ; 2 uses
  %i.li = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lg) ; 2 uses
  %i.lj = shufflevector <8 x i32> %i.lh, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.lk = shufflevector <8 x i32> %i.lh, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ll = shufflevector <8 x i32> %i.li, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.lm = shufflevector <8 x i32> %i.li, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ln = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.lj, <4 x i32> %i.lk)
  %i.lo = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ll, <4 x i32> %i.lm)
  %i.lp = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ln, <8 x i16> splat (i16 -127))
  %i.lq = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.lp, <8 x i16> splat (i16 127))
  %i.lr = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.lo, <8 x i16> splat (i16 -127))
  %i.ls = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.lr, <8 x i16> splat (i16 127))
  %i.lt = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.lq, <8 x i16> %i.ls) ; 2 uses
  %i.lu = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.kw)
  %i.lv = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ky)
  %i.lw = fadd fast <8 x float> %i.lu, %i.kw
  %i.lx = fadd fast <8 x float> %i.lv, %i.ky
  %i.ly = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lw) ; 2 uses
  %i.lz = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lx) ; 2 uses
  %i.ma = shufflevector <8 x i32> %i.ly, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mb = shufflevector <8 x i32> %i.ly, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.mc = shufflevector <8 x i32> %i.lz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.md = shufflevector <8 x i32> %i.lz, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.me = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ma, <4 x i32> %i.mb)
  %i.mf = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.mc, <4 x i32> %i.md)
  %i.mg = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.me, <8 x i16> splat (i16 -127))
  %i.mh = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.mg, <8 x i16> splat (i16 127))
  %i.mi = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.mf, <8 x i16> splat (i16 -127))
  %i.mj = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.mi, <8 x i16> splat (i16 127))
  %i.mk = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.mh, <8 x i16> %i.mj) ; 2 uses
  %i.ml = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.kz)
  %i.mm = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.lb)
  %i.mn = fadd fast <8 x float> %i.ml, %i.kz
  %i.mo = fadd fast <8 x float> %i.mm, %i.lb
  %i.mp = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mn) ; 2 uses
  %i.mq = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mo) ; 2 uses
  %i.mr = shufflevector <8 x i32> %i.mp, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ms = shufflevector <8 x i32> %i.mp, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.mt = shufflevector <8 x i32> %i.mq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mu = shufflevector <8 x i32> %i.mq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.mv = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.mr, <4 x i32> %i.ms)
  %i.mw = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.mt, <4 x i32> %i.mu)
  %i.mx = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.mv, <8 x i16> splat (i16 -127))
  %i.my = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.mx, <8 x i16> splat (i16 127))
  %i.mz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.mw, <8 x i16> splat (i16 -127))
  %i.na = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.mz, <8 x i16> splat (i16 127))
  %i.nb = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.my, <8 x i16> %i.na) ; 2 uses
  %i.nc = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.la)
  %i.nd = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.lc)
  %i.ne = fadd fast <8 x float> %i.nc, %i.la
  %i.nf = fadd fast <8 x float> %i.nd, %i.lc
  %i.ng = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ne) ; 2 uses
  %i.nh = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.nf) ; 2 uses
  %i.ni = shufflevector <8 x i32> %i.ng, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.nj = shufflevector <8 x i32> %i.ng, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.nk = shufflevector <8 x i32> %i.nh, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.nl = shufflevector <8 x i32> %i.nh, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.nm = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ni, <4 x i32> %i.nj)
  %i.nn = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.nk, <4 x i32> %i.nl)
  %i.no = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.nm, <8 x i16> splat (i16 -127))
  %i.np = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.no, <8 x i16> splat (i16 127))
  %i.nq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.nn, <8 x i16> splat (i16 -127))
  %i.nr = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.nq, <8 x i16> splat (i16 127))
  %i.ns = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.np, <8 x i16> %i.nr) ; 2 uses
  %i.nt = shufflevector <16 x i8> %i.lt, <16 x i8> %i.mk, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>
  %i.nu = shufflevector <16 x i8> %i.lt, <16 x i8> %i.mk, <16 x i32> <i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  %i.nv = shufflevector <16 x i8> %i.nb, <16 x i8> %i.ns, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>
  %i.nw = shufflevector <16 x i8> %i.nb, <16 x i8> %i.ns, <16 x i32> <i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  %i.nx = bitcast <16 x i8> %i.nt to <4 x i32>    ; 2 uses
  %i.ny = bitcast <16 x i8> %i.nu to <4 x i32>    ; 2 uses
  %i.nz = shufflevector <4 x i32> %i.nx, <4 x i32> %i.ny, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.oa = bitcast <4 x i32> %i.nz to <2 x i64>    ; 2 uses
  %i.ob = shufflevector <4 x i32> %i.nx, <4 x i32> %i.ny, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.oc = bitcast <4 x i32> %i.ob to <2 x i64>    ; 2 uses
  %i.od = bitcast <16 x i8> %i.nv to <4 x i32>    ; 2 uses
  %i.oe = bitcast <16 x i8> %i.nw to <4 x i32>    ; 2 uses
  %i.of = shufflevector <4 x i32> %i.od, <4 x i32> %i.oe, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.og = bitcast <4 x i32> %i.of to <2 x i64>    ; 2 uses
  %i.oh = shufflevector <4 x i32> %i.od, <4 x i32> %i.oe, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.oi = bitcast <4 x i32> %i.oh to <2 x i64>    ; 2 uses
  %i.oj = shufflevector <2 x i64> %i.oa, <2 x i64> %i.og, <2 x i32> <i32 1, i32 3>
  %i.ok = shufflevector <2 x i64> %i.oc, <2 x i64> %i.oi, <2 x i32> <i32 1, i32 3>
  %i.ol = shufflevector <2 x i64> %i.oa, <2 x i64> %i.og, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.om = bitcast <4 x i64> %i.ol to <8 x i32>
  %i.on = bitcast <2 x i64> %i.oj to <4 x i32>
  %i.oo = shufflevector <4 x i32> %i.on, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.op = shufflevector <8 x i32> %i.om, <8 x i32> %i.oo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.oq = shufflevector <2 x i64> %i.oc, <2 x i64> %i.oi, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.or = bitcast <4 x i64> %i.oq to <8 x i32>
  %i.os = bitcast <2 x i64> %i.ok to <4 x i32>
  %i.ot = shufflevector <4 x i32> %i.os, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ou = shufflevector <8 x i32> %i.or, <8 x i32> %i.ot, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x i32> %i.op, ptr %.1591.i, align 32, !tbaa !116
  %i.ov = getelementptr inbounds nuw i8, ptr %.1591.i, i64 32
  store <8 x i32> %i.ou, ptr %i.ov, align 32, !tbaa !116
  %i.ow = getelementptr inbounds nuw i8, ptr %.1591.i, i64 64 ; 3 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.0395590.i, i64 %.idx452.i
  %i.oy = add nuw nsw i32 %.0402589.i, 8          ; 2 uses
  %i.oz = or disjoint i32 %i.oy, 7
  %i.pa = icmp slt i32 %i.oz, %5
  br i1 %i.pa, label %.lr.ph.i, label %.loopexit586.i.loopexit13, !llvm.loop !810

.loopexit586.i.loopexit13:                        ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.pb = or disjoint i64 %indvars.iv.next.i, 7
  %i.pc = icmp samesign ult i64 %i.pb, %i.z
  br i1 %i.pc, label %.lr.ph.i.preheader, label %.preheader584.loopexit.i, !llvm.loop !804

.preheader579.loopexit.i:                         ; preds = %.loopexit581.i.loopexit11, %.loopexit581.i.loopexit10.us, %.loopexit581.i.us.us.us, %.loopexit583.i.us.us.preheader
  %.us-phi41 = phi ptr [ %.0.lcssa.i, %.loopexit583.i.us.us.preheader ], [ %i.jv, %.loopexit581.i.loopexit10.us ], [ %.15.i.us.us.us, %.loopexit581.i.us.us.us ], [ %i.ws, %.loopexit581.i.loopexit11 ]
  %.us-phi42 = phi i64 [ %i.fo, %.loopexit583.i.us.us.preheader ], [ %indvars.iv.next771.i.us, %.loopexit581.i.loopexit10.us ], [ %indvars.iv.next771.i.us.us.us, %.loopexit581.i.us.us.us ], [ %indvars.iv.next771.i, %.loopexit581.i.loopexit11 ]
  %i.pd = trunc nuw nsw i64 %.us-phi42 to i32
  br label %.preheader579.i

.preheader579.i:                                  ; preds = %.preheader579.loopexit.i, %.preheader584.i
  %.1390.lcssa.i = phi i32 [ %.0389.lcssa.i, %.preheader584.i ], [ %i.pd, %.preheader579.loopexit.i ] ; 3 uses
  %.8.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader584.i ], [ %.us-phi41, %.preheader579.loopexit.i ] ; 5 uses
  %i.pe = or disjoint i32 %.1390.lcssa.i, 1
  %i.pf = icmp slt i32 %i.pe, %3
  br i1 %i.pf, label %.lr.ph678.i, label %.preheader572.i

.lr.ph678.i:                                      ; preds = %.preheader579.i
  %i.pg = sext i32 %4 to i64
  %i.ph = mul i64 %i.n, %i.pg                     ; 3 uses
  %i.pi = icmp ne i32 %i.e, 8
  %i.pj = insertelement <8 x float> poison, float %6, i64 0
  %i.pk = shufflevector <8 x float> %i.pj, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.pl = icmp slt i32 %5, 8
  %.idx446.i = shl i64 %i.n, 5
  %i.pm = insertelement <4 x float> poison, float %6, i64 0
  %i.pn = shufflevector <4 x float> %i.pm, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %.idx445.i = shl i64 %i.n, 4                    ; 2 uses
  %i.po = icmp eq i32 %i.e, 1
  %i.pp = icmp sgt i32 %5, 3
  %.idx442.i = shl i64 %i.n, 3                    ; 2 uses
  %.idx443.i = mul i64 %i.n, 12
  %i.pq = and i32 %5, -4
  %i.pr = zext i32 %.1390.lcssa.i to i64          ; 6 uses
  %i.ps = sext i32 %3 to i64
  %i.pt = sext i32 %2 to i64                      ; 3 uses
  %i.pu = sext i32 %i.e to i64                    ; 3 uses
  %brmerge721.i = or i1 %i.pl, %i.pi
  %invariant.op842.i = add nsw i64 %i.ps, -1      ; 4 uses
  br i1 %brmerge721.i, label %.lr.ph678.i.split.us, label %.lr.ph648.i.preheader

.lr.ph678.i.split.us:                             ; preds = %.lr.ph678.i
  %i.pv = icmp slt i32 %5, 4
  %i.pw = icmp ne i32 %i.e, 4
  %brmerge724.i = or i1 %i.pv, %i.pw
  br i1 %brmerge724.i, label %.lr.ph678.i.split.us.split.us, label %.loopexit578.i.us.preheader

.loopexit578.i.us.preheader:                      ; preds = %.lr.ph678.i.split.us
  %.pre = load ptr, ptr %0, align 8, !tbaa !18
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ph
  br label %.loopexit578.i.us

.lr.ph678.i.split.us.split.us:                    ; preds = %.lr.ph678.i.split.us
  br i1 %i.po, label %.loopexit578.i.us.us.us, label %.loopexit578.i.us.us.preheader

.loopexit578.i.us.us.preheader:                   ; preds = %.lr.ph678.i.split.us.split.us
  %i.py = add nuw nsw i64 %i.pr, 2
  %smax86 = tail call i64 @llvm.smax.i64(i64 %invariant.op842.i, i64 %i.py)
  %i.pz = xor i64 %i.pr, -1
  %i.qa = add nsw i64 %smax86, %i.pz
  %i.qb = and i64 %i.qa, -2
  %i.qc = add nuw i64 %i.qb, %i.pr
  %i.qd = add nuw i64 %i.qc, 2
  br label %.preheader572.loopexit.i

.loopexit578.i.us.us.us:                          ; preds = %.lr.ph678.i.split.us.split.us, %.loopexit575.i.us.us.us
  %indvars.iv774.i.us.us.us = phi i64 [ %indvars.iv.next775.i.us.us.us, %.loopexit575.i.us.us.us ], [ %i.pr, %.lr.ph678.i.split.us.split.us ] ; 2 uses
  %.16677.i.us.us.us = phi ptr [ %.24.i.us.us.us, %.loopexit575.i.us.us.us ], [ %.8.lcssa.i, %.lr.ph678.i.split.us.split.us ] ; 2 uses
  %i.qe = load ptr, ptr %0, align 8, !tbaa !18
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %i.ph
  %i.qg = add nsw i64 %indvars.iv774.i.us.us.us, %i.pt
  %i.qh = mul nuw nsw i64 %i.qg, %i.pu
  %i.qi = getelementptr inbounds [4 x i8], ptr %i.qf, i64 %i.qh ; 2 uses
  br i1 %i.pp, label %.lr.ph660.i.us.us.us, label %.preheader576.i.us.us.us

.lr.ph660.i.us.us.us:                             ; preds = %.loopexit578.i.us.us.us, %.lr.ph660.i.us.us.us
  %.21659.i.us.us.us = phi ptr [ %i.rs, %.lr.ph660.i.us.us.us ], [ %.16677.i.us.us.us, %.loopexit578.i.us.us.us ] ; 2 uses
  %.4427658.i.us.us.us = phi ptr [ %i.rt, %.lr.ph660.i.us.us.us ], [ %i.qi, %.loopexit578.i.us.us.us ] ; 5 uses
  %.0432657.i.us.us.us = phi i32 [ %i.ru, %.lr.ph660.i.us.us.us ], [ 0, %.loopexit578.i.us.us.us ]
  %i.qj = load i64, ptr %.4427658.i.us.us.us, align 1, !tbaa !116
  %i.qk = insertelement <2 x i64> poison, i64 %i.qj, i64 0
  %i.ql = bitcast <2 x i64> %i.qk to <4 x float>
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %.4427658.i.us.us.us, i64 %i.n
  %i.qn = load i64, ptr %i.qm, align 1, !tbaa !116
  %i.qo = insertelement <2 x i64> poison, i64 %i.qn, i64 0
  %i.qp = bitcast <2 x i64> %i.qo to <4 x float>
  %i.qq = getelementptr inbounds nuw i8, ptr %.4427658.i.us.us.us, i64 %.idx442.i
  %i.qr = load i64, ptr %i.qq, align 1, !tbaa !116
  %i.qs = insertelement <2 x i64> poison, i64 %i.qr, i64 0
  %i.qt = bitcast <2 x i64> %i.qs to <4 x float>
  %i.qu = getelementptr inbounds nuw i8, ptr %.4427658.i.us.us.us, i64 %.idx443.i
  %i.qv = load i64, ptr %i.qu, align 1, !tbaa !116
  %i.qw = insertelement <2 x i64> poison, i64 %i.qv, i64 0
  %i.qx = bitcast <2 x i64> %i.qw to <4 x float>
  %i.qy = shufflevector <4 x float> %i.ql, <4 x float> %i.qp, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.qz = shufflevector <4 x float> %i.qt, <4 x float> %i.qx, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ra = shufflevector <4 x float> %i.qy, <4 x float> %i.qz, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.rb = shufflevector <4 x float> %i.qy, <4 x float> %i.qz, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.rc = fmul fast <4 x float> %i.pn, %i.ra      ; 2 uses
  %i.rd = fmul fast <4 x float> %i.pn, %i.rb      ; 2 uses
  %i.re = shufflevector <4 x float> %i.rc, <4 x float> %i.rd, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.rf = shufflevector <4 x float> %i.rc, <4 x float> %i.rd, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.rg = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.re)
  %i.rh = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.rf)
  %i.ri = fadd fast <4 x float> %i.rg, %i.re
  %i.rj = fadd fast <4 x float> %i.rh, %i.rf
  %i.rk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ri)
  %i.rl = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rj)
  %i.rm = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.rk, <4 x i32> %i.rl)
  %i.rn = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.rm, <8 x i16> splat (i16 -127))
  %i.ro = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.rn, <8 x i16> splat (i16 127))
  %i.rp = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ro, <8 x i16> poison)
  %i.rq = bitcast <16 x i8> %i.rp to <2 x i64>
  %i.rr = extractelement <2 x i64> %i.rq, i64 0
  store i64 %i.rr, ptr %.21659.i.us.us.us, align 8, !tbaa !767
  %i.rs = getelementptr inbounds nuw i8, ptr %.21659.i.us.us.us, i64 8 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.4427658.i.us.us.us, i64 %.idx445.i ; 2 uses
  %i.ru = add nuw nsw i32 %.0432657.i.us.us.us, 4 ; 2 uses
  %i.rv = or disjoint i32 %i.ru, 3
  %i.rw = icmp slt i32 %i.rv, %5
  br i1 %i.rw, label %.lr.ph660.i.us.us.us, label %.preheader576.i.us.us.us, !llvm.loop !811

.preheader576.i.us.us.us:                         ; preds = %.lr.ph660.i.us.us.us, %.loopexit578.i.us.us.us
  %.0432.lcssa.i.us.us.us = phi i32 [ 0, %.loopexit578.i.us.us.us ], [ %i.pq, %.lr.ph660.i.us.us.us ] ; 3 uses
  %.4427.lcssa.i.us.us.us = phi ptr [ %i.qi, %.loopexit578.i.us.us.us ], [ %i.rt, %.lr.ph660.i.us.us.us ] ; 2 uses
  %.21.lcssa.i.us.us.us = phi ptr [ %.16677.i.us.us.us, %.loopexit578.i.us.us.us ], [ %i.rs, %.lr.ph660.i.us.us.us ] ; 2 uses
  %i.rx = or disjoint i32 %.0432.lcssa.i.us.us.us, 1
  %i.ry = icmp slt i32 %i.rx, %5
  br i1 %i.ry, label %.lr.ph667.i.us.us.us, label %.preheader574.i.us.us.us

.lr.ph667.i.us.us.us:                             ; preds = %.preheader576.i.us.us.us, %.lr.ph667.i.us.us.us
  %.22666.i.us.us.us = phi ptr [ %i.sr, %.lr.ph667.i.us.us.us ], [ %.21.lcssa.i.us.us.us, %.preheader576.i.us.us.us ] ; 2 uses
  %.5428665.i.us.us.us = phi ptr [ %i.ss, %.lr.ph667.i.us.us.us ], [ %.4427.lcssa.i.us.us.us, %.preheader576.i.us.us.us ] ; 3 uses
  %.1433664.i.us.us.us = phi i32 [ %i.st, %.lr.ph667.i.us.us.us ], [ %.0432.lcssa.i.us.us.us, %.preheader576.i.us.us.us ]
  %i.rz = load i64, ptr %.5428665.i.us.us.us, align 1, !tbaa !116
  %i.sa = insertelement <2 x i64> poison, i64 %i.rz, i64 0
  %i.sb = bitcast <2 x i64> %i.sa to <4 x float>
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %.5428665.i.us.us.us, i64 %i.n
  %i.sd = load i64, ptr %i.sc, align 1, !tbaa !116
  %i.se = insertelement <2 x i64> poison, i64 %i.sd, i64 0
  %i.sf = bitcast <2 x i64> %i.se to <4 x float>
  %i.sg = shufflevector <4 x float> %i.sb, <4 x float> %i.sf, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.sh = fmul fast <4 x float> %i.sg, %i.pn      ; 2 uses
  %i.si = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.sh)
  %i.sj = fadd fast <4 x float> %i.si, %i.sh
  %i.sk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.sj) ; 2 uses
  %i.sl = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.sk, <4 x i32> %i.sk)
  %i.sm = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.sl, <8 x i16> splat (i16 -127))
  %i.sn = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.sm, <8 x i16> splat (i16 127))
  %i.so = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.sn, <8 x i16> poison)
  %i.sp = bitcast <16 x i8> %i.so to <4 x i32>
  %i.sq = extractelement <4 x i32> %i.sp, i64 0
  store i32 %i.sq, ptr %.22666.i.us.us.us, align 4, !tbaa !45
  %i.sr = getelementptr inbounds nuw i8, ptr %.22666.i.us.us.us, i64 4 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.5428665.i.us.us.us, i64 %.idx442.i ; 2 uses
  %i.st = add nuw nsw i32 %.1433664.i.us.us.us, 2 ; 3 uses
  %i.su = or disjoint i32 %i.st, 1
  %i.sv = icmp slt i32 %i.su, %5
  br i1 %i.sv, label %.lr.ph667.i.us.us.us, label %.preheader574.i.us.us.us, !llvm.loop !812

.preheader574.i.us.us.us:                         ; preds = %.lr.ph667.i.us.us.us, %.preheader576.i.us.us.us
  %.1433.lcssa.i.us.us.us = phi i32 [ %.0432.lcssa.i.us.us.us, %.preheader576.i.us.us.us ], [ %i.st, %.lr.ph667.i.us.us.us ] ; 2 uses
  %.5428.lcssa.i.us.us.us = phi ptr [ %.4427.lcssa.i.us.us.us, %.preheader576.i.us.us.us ], [ %i.ss, %.lr.ph667.i.us.us.us ]
  %.22.lcssa.i.us.us.us = phi ptr [ %.21.lcssa.i.us.us.us, %.preheader576.i.us.us.us ], [ %i.sr, %.lr.ph667.i.us.us.us ] ; 2 uses
  %i.sw = icmp slt i32 %.1433.lcssa.i.us.us.us, %5
  br i1 %i.sw, label %.lr.ph674.i.us.us.us, label %.loopexit575.i.us.us.us

.lr.ph674.i.us.us.us:                             ; preds = %.preheader574.i.us.us.us, %.lr.ph674.i.us.us.us
  %.23673.i.us.us.us = phi ptr [ %i.th, %.lr.ph674.i.us.us.us ], [ %.22.lcssa.i.us.us.us, %.preheader574.i.us.us.us ] ; 3 uses
  %.6429672.i.us.us.us = phi ptr [ %i.ti, %.lr.ph674.i.us.us.us ], [ %.5428.lcssa.i.us.us.us, %.preheader574.i.us.us.us ] ; 3 uses
  %.2434671.i.us.us.us = phi i32 [ %i.tj, %.lr.ph674.i.us.us.us ], [ %.1433.lcssa.i.us.us.us, %.preheader574.i.us.us.us ]
  %i.sx = load float, ptr %.6429672.i.us.us.us, align 4, !tbaa !68
  %i.sy = fmul fast float %i.sx, %6
  %i.sz = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.sy)
  %i.ta = fptosi float %i.sz to i32
  %spec.select.i455566.i.us.us.us = tail call i32 @llvm.smax.i32(i32 %i.ta, i32 -127)
  %.0.i456567.i.us.us.us = tail call i32 @llvm.smin.i32(i32 %spec.select.i455566.i.us.us.us, i32 127)
  %.0.i456.i.us.us.us = trunc nsw i32 %.0.i456567.i.us.us.us to i8
  store i8 %.0.i456.i.us.us.us, ptr %.23673.i.us.us.us, align 1, !tbaa !116
  %i.tb = getelementptr inbounds nuw i8, ptr %.6429672.i.us.us.us, i64 4
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !68
  %i.td = fmul fast float %i.tc, %6
  %i.te = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.td)
  %i.tf = fptosi float %i.te to i32
  %spec.select.i453568.i.us.us.us = tail call i32 @llvm.smax.i32(i32 %i.tf, i32 -127)
  %.0.i454569.i.us.us.us = tail call i32 @llvm.smin.i32(i32 %spec.select.i453568.i.us.us.us, i32 127)
  %.0.i454.i.us.us.us = trunc nsw i32 %.0.i454569.i.us.us.us to i8
  %i.tg = getelementptr inbounds nuw i8, ptr %.23673.i.us.us.us, i64 1
  store i8 %.0.i454.i.us.us.us, ptr %i.tg, align 1, !tbaa !116
  %i.th = getelementptr inbounds nuw i8, ptr %.23673.i.us.us.us, i64 2 ; 2 uses
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %.6429672.i.us.us.us, i64 %i.n
  %i.tj = add nuw nsw i32 %.2434671.i.us.us.us, 1 ; 2 uses
  %exitcond773.not.i.us.us.us = icmp eq i32 %i.tj, %5
  br i1 %exitcond773.not.i.us.us.us, label %.loopexit575.i.us.us.us, label %.lr.ph674.i.us.us.us, !llvm.loop !813

.loopexit575.i.us.us.us:                          ; preds = %.lr.ph674.i.us.us.us, %.preheader574.i.us.us.us
  %.24.i.us.us.us = phi ptr [ %.22.lcssa.i.us.us.us, %.preheader574.i.us.us.us ], [ %i.th, %.lr.ph674.i.us.us.us ] ; 2 uses
  %indvars.iv.next775.i.us.us.us = add nuw nsw i64 %indvars.iv774.i.us.us.us, 2 ; 3 uses
  %i.tk = icmp slt i64 %indvars.iv.next775.i.us.us.us, %invariant.op842.i
  br i1 %i.tk, label %.loopexit578.i.us.us.us, label %.preheader572.loopexit.i, !llvm.loop !814

.loopexit578.i.us:                                ; preds = %.loopexit578.i.us.preheader, %.loopexit575.i.loopexit8.us
  %indvars.iv774.i.us = phi i64 [ %indvars.iv.next775.i.us, %.loopexit575.i.loopexit8.us ], [ %i.pr, %.loopexit578.i.us.preheader ] ; 2 uses
  %.16677.i.us = phi ptr [ %i.uh, %.loopexit575.i.loopexit8.us ], [ %.8.lcssa.i, %.loopexit578.i.us.preheader ]
  %i.tl = add nsw i64 %indvars.iv774.i.us, %i.pt
  %i.tm = mul nsw i64 %i.tl, %i.pu
  %i.tn = getelementptr inbounds [4 x i8], ptr %i.px, i64 %i.tm
  br label %.lr.ph654.i.us

.lr.ph654.i.us:                                   ; preds = %.loopexit578.i.us, %.lr.ph654.i.us
  %.19653.i.us = phi ptr [ %i.uh, %.lr.ph654.i.us ], [ %.16677.i.us, %.loopexit578.i.us ] ; 2 uses
  %.2425652.i.us = phi ptr [ %i.ui, %.lr.ph654.i.us ], [ %i.tn, %.loopexit578.i.us ] ; 3 uses
  %.0431651.i.us = phi i32 [ %i.uj, %.lr.ph654.i.us ], [ 0, %.loopexit578.i.us ]
  %i.to = load <4 x float>, ptr %.2425652.i.us, align 16, !tbaa !116
  %i.tp = getelementptr inbounds nuw i8, ptr %.2425652.i.us, i64 16
  %i.tq = load <4 x float>, ptr %i.tp, align 16, !tbaa !116
  %i.tr = fmul fast <4 x float> %i.to, %i.pn      ; 2 uses
  %i.ts = fmul fast <4 x float> %i.tq, %i.pn      ; 2 uses
  %i.tt = shufflevector <4 x float> %i.tr, <4 x float> %i.ts, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.tu = shufflevector <4 x float> %i.tr, <4 x float> %i.ts, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.tv = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.tt)
  %i.tw = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.tu)
  %i.tx = fadd fast <4 x float> %i.tv, %i.tt
  %i.ty = fadd fast <4 x float> %i.tw, %i.tu
  %i.tz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.tx)
  %i.ua = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ty)
  %i.ub = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.tz, <4 x i32> %i.ua)
  %i.uc = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ub, <8 x i16> splat (i16 -127))
  %i.ud = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.uc, <8 x i16> splat (i16 127))
  %i.ue = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ud, <8 x i16> poison)
  %i.uf = bitcast <16 x i8> %i.ue to <2 x i64>
  %i.ug = extractelement <2 x i64> %i.uf, i64 0
  store i64 %i.ug, ptr %.19653.i.us, align 8, !tbaa !767
  %i.uh = getelementptr inbounds nuw i8, ptr %.19653.i.us, i64 8 ; 3 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %.2425652.i.us, i64 %.idx445.i
  %i.uj = add nuw nsw i32 %.0431651.i.us, 4       ; 2 uses
  %i.uk = or disjoint i32 %i.uj, 3
  %i.ul = icmp slt i32 %i.uk, %5
  br i1 %i.ul, label %.lr.ph654.i.us, label %.loopexit575.i.loopexit8.us, !llvm.loop !815

.loopexit575.i.loopexit8.us:                      ; preds = %.lr.ph654.i.us
  %indvars.iv.next775.i.us = add nuw nsw i64 %indvars.iv774.i.us, 2 ; 3 uses
  %i.um = icmp slt i64 %indvars.iv.next775.i.us, %invariant.op842.i
  br i1 %i.um, label %.loopexit578.i.us, label %.preheader572.loopexit.i, !llvm.loop !814

.lr.ph619.i.preheader:                            ; preds = %.lr.ph642.i, %.loopexit581.i.loopexit11
  %indvars.iv770.i = phi i64 [ %indvars.iv.next771.i, %.loopexit581.i.loopexit11 ], [ %i.fb, %.lr.ph642.i ] ; 2 uses
  %.8641.i = phi ptr [ %i.ws, %.loopexit581.i.loopexit11 ], [ %.0.lcssa.i, %.lr.ph642.i ]
  %i.un = load ptr, ptr %0, align 8, !tbaa !18
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %i.er
  %i.up = add nsw i64 %indvars.iv770.i, %i.fd
  %i.uq = mul nsw i64 %i.up, %i.fe
  %i.ur = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.uq
  br label %.lr.ph619.i

.lr.ph619.i:                                      ; preds = %.lr.ph619.i.preheader, %.lr.ph619.i
  %.9618.i = phi ptr [ %i.ws, %.lr.ph619.i ], [ %.8641.i, %.lr.ph619.i.preheader ] ; 3 uses
  %.0413617.i = phi ptr [ %i.wt, %.lr.ph619.i ], [ %i.ur, %.lr.ph619.i.preheader ] ; 5 uses
  %.0419616.i = phi i32 [ %i.wu, %.lr.ph619.i ], [ 0, %.lr.ph619.i.preheader ]
  %i.us = load <8 x float>, ptr %.0413617.i, align 32, !tbaa !116
  %i.ut = getelementptr inbounds nuw i8, ptr %.0413617.i, i64 32
  %i.uu = load <8 x float>, ptr %i.ut, align 32, !tbaa !116
  %i.uv = getelementptr inbounds nuw i8, ptr %.0413617.i, i64 64
end_hunk_7
begin_hunk_8_@_ZN4ncnnL30transpose_pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_:bb.a
  %.0.i650.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i649.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i650.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.29.lcssa.i, align 1, !tbaa !116
  %i.acw = getelementptr inbounds nuw i8, ptr %.29.lcssa.i, i64 1 ; 2 uses
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %.4484.lcssa.i, i64 %i.n
  %i.acy = or disjoint i32 %.0458.lcssa.i, 1
  br label %.lr.ph797.i.prol.loopexit

.lr.ph797.i.prol.loopexit:                        ; preds = %.lr.ph797.i.prol, %.lr.ph797.i.preheader
  %.lcssa153.unr = phi ptr [ poison, %.lr.ph797.i.preheader ], [ %i.acw, %.lr.ph797.i.prol ]
  %.30796.i.unr = phi ptr [ %.29.lcssa.i, %.lr.ph797.i.preheader ], [ %i.acw, %.lr.ph797.i.prol ]
  %.1459795.i.unr = phi i32 [ %.0458.lcssa.i, %.lr.ph797.i.preheader ], [ %i.acy, %.lr.ph797.i.prol ]
  %.5485794.i.unr = phi ptr [ %.4484.lcssa.i, %.lr.ph797.i.preheader ], [ %i.acx, %.lr.ph797.i.prol ]
  %i.acz = icmp eq i32 %5, %.neg183
  br i1 %i.acz, label %.loopexit.i, label %.lr.ph797.i

.lr.ph790.i:                                      ; preds = %bb.v, %.lr.ph790.i
  %.29789.i = phi ptr [ %i.adv, %.lr.ph790.i ], [ %.24800.i, %bb.v ] ; 2 uses
  %.0458788.i = phi i32 [ %i.adx, %.lr.ph790.i ], [ 0, %bb.v ]
  %.4484787.i = phi ptr [ %i.adw, %.lr.ph790.i ], [ %i.aaz, %bb.v ] ; 5 uses
  %i.ada = load float, ptr %.4484787.i, align 4, !tbaa !68
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %.4484787.i, i64 %i.n
  %i.adc = load float, ptr %i.adb, align 4, !tbaa !68
  %i.add = getelementptr inbounds nuw i8, ptr %.4484787.i, i64 %.idx.i
  %i.ade = load float, ptr %i.add, align 4, !tbaa !68
  %i.adf = getelementptr inbounds nuw i8, ptr %.4484787.i, i64 %.idx510.i
  %i.adg = load float, ptr %i.adf, align 4, !tbaa !68
  %i.adh = insertelement <4 x float> poison, float %i.ada, i64 0
  %i.adi = insertelement <4 x float> %i.adh, float %i.adc, i64 1
  %i.adj = insertelement <4 x float> %i.adi, float %i.ade, i64 2
  %i.adk = insertelement <4 x float> %i.adj, float %i.adg, i64 3
  %i.adl = fmul fast <4 x float> %i.adk, %i.acq   ; 2 uses
  %i.adm = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.adl)
  %i.adn = fadd fast <4 x float> %i.adm, %i.adl
  %i.ado = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.adn) ; 2 uses
  %i.adp = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ado, <4 x i32> %i.ado)
  %i.adq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.adp, <8 x i16> splat (i16 -127))
  %i.adr = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.adq, <8 x i16> splat (i16 127))
  %i.ads = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.adr, <8 x i16> poison)
  %i.adt = bitcast <16 x i8> %i.ads to <4 x i32>
  %i.adu = extractelement <4 x i32> %i.adt, i64 0
  store i32 %i.adu, ptr %.29789.i, align 4, !tbaa !45
  %i.adv = getelementptr inbounds nuw i8, ptr %.29789.i, i64 4 ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %.4484787.i, i64 %.idx512.i ; 2 uses
  %i.adx = add nuw nsw i32 %.0458788.i, 4         ; 2 uses
  %i.ady = or disjoint i32 %i.adx, 3
  %i.adz = icmp slt i32 %i.ady, %5
  br i1 %i.adz, label %.lr.ph790.i, label %.preheader.i, !llvm.loop !902

.lr.ph797.i:                                      ; preds = %.lr.ph797.i.prol.loopexit, %.lr.ph797.i
  %.30796.i = phi ptr [ %i.aek, %.lr.ph797.i ], [ %.30796.i.unr, %.lr.ph797.i.prol.loopexit ] ; 3 uses
  %.1459795.i = phi i32 [ %i.aem, %.lr.ph797.i ], [ %.1459795.i.unr, %.lr.ph797.i.prol.loopexit ]
  %.5485794.i = phi ptr [ %i.ael, %.lr.ph797.i ], [ %.5485794.i.unr, %.lr.ph797.i.prol.loopexit ] ; 2 uses
  %i.aea = load float, ptr %.5485794.i, align 4, !tbaa !68
  %i.aeb = fmul fast float %i.aea, %i.abc
  %i.aec = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.aeb)
  %i.aed = fptosi float %i.aec to i32
  %spec.select.i649.i = tail call i32 @llvm.smax.i32(i32 %i.aed, i32 -127)
  %.0.i650.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i649.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i650.i to i8
  store i8 %.0.i.i, ptr %.30796.i, align 1, !tbaa !116
  %i.aee = getelementptr inbounds nuw i8, ptr %.30796.i, i64 1
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %.5485794.i, i64 %i.n ; 2 uses
  %i.aeg = load float, ptr %i.aef, align 4, !tbaa !68
  %i.aeh = fmul fast float %i.aeg, %i.abc
  %i.aei = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.aeh)
  %i.aej = fptosi float %i.aei to i32
  %spec.select.i649.i.1 = tail call i32 @llvm.smax.i32(i32 %i.aej, i32 -127)
  %.0.i650.i.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i649.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i650.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.aee, align 1, !tbaa !116
  %i.aek = getelementptr inbounds nuw i8, ptr %.30796.i, i64 2 ; 2 uses
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %i.aef, i64 %i.n
  %i.aem = add nuw nsw i32 %.1459795.i, 2         ; 2 uses
  %exitcond853.not.i.1 = icmp eq i32 %i.aem, %5
  br i1 %exitcond853.not.i.1, label %.loopexit.i, label %.lr.ph797.i, !llvm.loop !903

.loopexit.i:                                      ; preds = %.lr.ph797.i.prol.loopexit, %.lr.ph797.i, %.lr.ph784.i, %.lr.ph778.i, %.preheader.i, %bb.u, %bb.t, %bb.s
  %.31.i = phi ptr [ %.24800.i, %bb.s ], [ %.29.lcssa.i, %.preheader.i ], [ %i.abs, %.lr.ph778.i ], [ %i.ack, %.lr.ph784.i ], [ %.24800.i, %bb.u ], [ %.24800.i, %bb.t ], [ %.lcssa153.unr, %.lr.ph797.i.prol.loopexit ], [ %i.aek, %.lr.ph797.i ]
  %indvars.iv.next855.i = add nsw i64 %indvars.iv854.i, 1 ; 2 uses
  %exitcond857.not.i = icmp eq i64 %indvars.iv.next855.i, %wide.trip.count.i
  br i1 %exitcond857.not.i, label %_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit, label %bb.s, !llvm.loop !904

_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit: ; preds = %.loopexit.i, %bb.b, %bb.d, %bb.f, %.preheader657.i
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZN4ncnnL20pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6) unnamed_addr #15 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn36pack_A_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6)
  br label %_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
  %.not399.i = icmp eq i32 %i.b, 0
  br i1 %.not399.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4ncnn32pack_A_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6)
  br label %_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.c = tail call noundef i32 @_ZN4ncnn20cpu_support_x86_avx2Ev()
  %.not400.i = icmp eq i32 %i.c, 0
  br i1 %.not400.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4ncnn29pack_A_tile_fp32_to_int8_avx2ERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6)
  br label %_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !60   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !87
  %i.h = icmp eq i32 %i.g, 3
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i64, ptr %i.i, align 8, !tbaa !20
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !88
  %i.m = sext i32 %i.l to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.n = phi i64 [ %i.j, %bb.h ], [ %i.m, %bb.i ] ; 22 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.p = shl nsw i32 %5, 2
  %i.q = sext i32 %i.p to i64
  %i.r = icmp sgt i32 %3, 7
  br i1 %i.r, label %.lr.ph541.i, label %.preheader482.i

.lr.ph541.i:                                      ; preds = %bb.j
  %i.s = mul nsw i32 %i.e, %4
  %i.t = sext i32 %i.s to i64
  %i.u = sext i32 %2 to i64                       ; 2 uses
  %i.v = icmp sgt i32 %5, 1                       ; 3 uses
  %.idx409.i = shl i64 %i.n, 4                    ; 4 uses
  %.idx466.i = shl i64 %i.n, 3                    ; 2 uses
  %.idx467.i = mul i64 %i.n, 12                   ; 2 uses
  %.idx469.i = mul i64 %i.n, 20                   ; 2 uses
  %.idx470.i = mul i64 %i.n, 24                   ; 2 uses
  %.idx471.i = mul i64 %i.n, 28                   ; 2 uses
  %i.w = and i32 %5, -2                           ; 3 uses
  %i.x = zext nneg i32 %3 to i64
  br label %bb.k

.preheader482.loopexit.i:                         ; preds = %.loopexit484.i
  %i.y = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader482.i

.preheader482.i:                                  ; preds = %.preheader482.loopexit.i, %bb.j
  %.0354.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.y, %.preheader482.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %i.o, %bb.j ], [ %.9367.i, %.preheader482.loopexit.i ] ; 4 uses
  %i.z = or disjoint i32 %.0354.lcssa.i, 3
  %i.aa = icmp slt i32 %i.z, %3
  br i1 %i.aa, label %.lr.ph571.i, label %.preheader475.i

.lr.ph571.i:                                      ; preds = %.preheader482.i
  %i.ab = load ptr, ptr %0, align 8, !tbaa !18
  %i.ac = mul nsw i32 %i.e, %4
  %i.ad = sext i32 %i.ac to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.ab, i64 %i.ad ; 2 uses
  %i.ae = load ptr, ptr %6, align 8, !tbaa !18
  %i.af = sext i32 %2 to i64                      ; 3 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.af ; 2 uses
  %i.ah = icmp sgt i32 %5, 1                      ; 2 uses
  %.idx464.i = shl i64 %i.n, 3                    ; 2 uses
  %.idx465.i = mul i64 %i.n, 12                   ; 2 uses
  %i.ai = and i32 %5, -2                          ; 2 uses
  %i.aj = zext i32 %.0354.lcssa.i to i64          ; 5 uses
  %i.ak = sext i32 %3 to i64
  %invariant.op.i = add nsw i64 %i.ak, -3         ; 3 uses
  switch i32 %i.e, label %.loopexit477.i.preheader [
    i32 4, label %.preheader481.i.us.preheader
    i32 1, label %.preheader478.i.us
  ]

.preheader481.i.us.preheader:                     ; preds = %.lr.ph571.i
  %xtraiter = and i32 %5, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br label %.preheader481.i.us

.loopexit477.i.preheader:                         ; preds = %.lr.ph571.i
  %i.al = add nuw nsw i64 %i.aj, 4
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.al)
  %i.am = xor i64 %i.aj, -1
  %i.an = add nsw i64 %smax, %i.am
  %i.ao = and i64 %i.an, -4
  %i.ap = add nuw i64 %i.ao, %i.aj
  %i.aq = add nuw i64 %i.ap, 4
  br label %.preheader475.loopexit.i

.preheader481.i.us:                               ; preds = %.preheader481.i.us.preheader, %.loopexit477.i.us
  %indvars.iv661.i.us = phi i64 [ %indvars.iv.next662.i.us, %.loopexit477.i.us ], [ %i.aj, %.preheader481.i.us.preheader ] ; 3 uses
  %.9570.i.us = phi ptr [ %.15.i.us, %.loopexit477.i.us ], [ %.0.lcssa.i, %.preheader481.i.us.preheader ] ; 2 uses
  %i.ar = add nsw i64 %indvars.iv661.i.us, %i.af
  %i.as = mul i64 %i.ar, %i.n
  %gep.i.us = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.as ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv661.i.us
  %i.au = load <4 x float>, ptr %i.at, align 16, !tbaa !116 ; 5 uses
  br i1 %i.ah, label %.lr.ph547.i.us, label %.preheader479.i.us

.lr.ph547.i.us:                                   ; preds = %.preheader481.i.us, %.lr.ph547.i.us
  %.10546.i.us = phi ptr [ %i.bo, %.lr.ph547.i.us ], [ %.9570.i.us, %.preheader481.i.us ] ; 2 uses
  %.0384545.i.us = phi ptr [ %i.bp, %.lr.ph547.i.us ], [ %gep.i.us, %.preheader481.i.us ] ; 3 uses
  %.0389544.i.us = phi i32 [ %i.bq, %.lr.ph547.i.us ], [ 0, %.preheader481.i.us ]
  %i.av = load <4 x float>, ptr %.0384545.i.us, align 16, !tbaa !116
  %i.aw = getelementptr inbounds nuw i8, ptr %.0384545.i.us, i64 16
  %i.ax = load <4 x float>, ptr %i.aw, align 16, !tbaa !116
  %i.ay = fmul fast <4 x float> %i.av, %i.au      ; 2 uses
  %i.az = fmul fast <4 x float> %i.ax, %i.au      ; 2 uses
  %i.ba = shufflevector <4 x float> %i.ay, <4 x float> %i.az, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bb = shufflevector <4 x float> %i.ay, <4 x float> %i.az, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bc = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ba)
  %i.bd = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bb)
  %i.be = fadd fast <4 x float> %i.bc, %i.ba
  %i.bf = fadd fast <4 x float> %i.bd, %i.bb
  %i.bg = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.be)
  %i.bh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bf)
  %i.bi = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bg, <4 x i32> %i.bh)
  %i.bj = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bi, <8 x i16> splat (i16 -127))
  %i.bk = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bj, <8 x i16> splat (i16 127))
  %i.bl = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bk, <8 x i16> poison)
  %i.bm = bitcast <16 x i8> %i.bl to <2 x i64>
  %i.bn = extractelement <2 x i64> %i.bm, i64 0
  store i64 %i.bn, ptr %.10546.i.us, align 8, !tbaa !767
  %i.bo = getelementptr inbounds nuw i8, ptr %.10546.i.us, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0384545.i.us, i64 32 ; 2 uses
  %i.bq = add nuw nsw i32 %.0389544.i.us, 2       ; 2 uses
  %i.br = or disjoint i32 %i.bq, 1
  %i.bs = icmp slt i32 %i.br, %5
  br i1 %i.bs, label %.lr.ph547.i.us, label %.preheader479.i.us, !llvm.loop !905

.preheader479.i.us:                               ; preds = %.lr.ph547.i.us, %.preheader481.i.us
  %.0389.lcssa.i.us = phi i32 [ 0, %.preheader481.i.us ], [ %i.ai, %.lr.ph547.i.us ] ; 4 uses
  %.0384.lcssa.i.us = phi ptr [ %gep.i.us, %.preheader481.i.us ], [ %i.bp, %.lr.ph547.i.us ] ; 3 uses
  %.10.lcssa.i.us = phi ptr [ %.9570.i.us, %.preheader481.i.us ], [ %i.bo, %.lr.ph547.i.us ] ; 4 uses
  %i.bt = icmp slt i32 %.0389.lcssa.i.us, %5
  br i1 %i.bt, label %.lr.ph554.i.us.preheader, label %.loopexit477.i.us

.lr.ph554.i.us.preheader:                         ; preds = %.preheader479.i.us
  %.neg = or disjoint i32 %.0389.lcssa.i.us, 1
  br i1 %lcmp.mod.not, label %.lr.ph554.i.us.prol.loopexit, label %.lr.ph554.i.us.prol

.lr.ph554.i.us.prol:                              ; preds = %.lr.ph554.i.us.preheader
  %i.bu = load <4 x float>, ptr %.0384.lcssa.i.us, align 16, !tbaa !116
  %i.bv = fmul fast <4 x float> %i.bu, %i.au      ; 2 uses
  %i.bw = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bv)
  %i.bx = fadd fast <4 x float> %i.bw, %i.bv
  %i.by = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bx) ; 2 uses
  %i.bz = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.by, <4 x i32> %i.by)
  %i.ca = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bz, <8 x i16> splat (i16 -127))
  %i.cb = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ca, <8 x i16> splat (i16 127))
  %i.cc = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.cb, <8 x i16> poison)
  %i.cd = bitcast <16 x i8> %i.cc to <4 x i32>
  %i.ce = extractelement <4 x i32> %i.cd, i64 0
  store i32 %i.ce, ptr %.10.lcssa.i.us, align 4, !tbaa !45
  %i.cf = getelementptr inbounds nuw i8, ptr %.10.lcssa.i.us, i64 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0384.lcssa.i.us, i64 16
  %i.ch = or disjoint i32 %.0389.lcssa.i.us, 1
  br label %.lr.ph554.i.us.prol.loopexit

.lr.ph554.i.us.prol.loopexit:                     ; preds = %.lr.ph554.i.us.prol, %.lr.ph554.i.us.preheader
  %.lcssa191.unr = phi ptr [ poison, %.lr.ph554.i.us.preheader ], [ %i.cf, %.lr.ph554.i.us.prol ]
  %.11553.i.us.unr = phi ptr [ %.10.lcssa.i.us, %.lr.ph554.i.us.preheader ], [ %i.cf, %.lr.ph554.i.us.prol ]
  %.1385552.i.us.unr = phi ptr [ %.0384.lcssa.i.us, %.lr.ph554.i.us.preheader ], [ %i.cg, %.lr.ph554.i.us.prol ]
  %.1390551.i.us.unr = phi i32 [ %.0389.lcssa.i.us, %.lr.ph554.i.us.preheader ], [ %i.ch, %.lr.ph554.i.us.prol ]
  %i.ci = icmp eq i32 %5, %.neg
  br i1 %i.ci, label %.loopexit477.i.us, label %.lr.ph554.i.us

.lr.ph554.i.us:                                   ; preds = %.lr.ph554.i.us.prol.loopexit, %.lr.ph554.i.us
  %.11553.i.us = phi ptr [ %i.dh, %.lr.ph554.i.us ], [ %.11553.i.us.unr, %.lr.ph554.i.us.prol.loopexit ] ; 3 uses
  %.1385552.i.us = phi ptr [ %i.di, %.lr.ph554.i.us ], [ %.1385552.i.us.unr, %.lr.ph554.i.us.prol.loopexit ] ; 3 uses
  %.1390551.i.us = phi i32 [ %i.dj, %.lr.ph554.i.us ], [ %.1390551.i.us.unr, %.lr.ph554.i.us.prol.loopexit ]
  %i.cj = load <4 x float>, ptr %.1385552.i.us, align 16, !tbaa !116
  %i.ck = fmul fast <4 x float> %i.cj, %i.au      ; 2 uses
  %i.cl = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ck)
  %i.cm = fadd fast <4 x float> %i.cl, %i.ck
  %i.cn = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cm) ; 2 uses
  %i.co = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cn, <4 x i32> %i.cn)
  %i.cp = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.co, <8 x i16> splat (i16 -127))
  %i.cq = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.cp, <8 x i16> splat (i16 127))
  %i.cr = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.cq, <8 x i16> poison)
  %i.cs = bitcast <16 x i8> %i.cr to <4 x i32>
  %i.ct = extractelement <4 x i32> %i.cs, i64 0
  store i32 %i.ct, ptr %.11553.i.us, align 4, !tbaa !45
  %i.cu = getelementptr inbounds nuw i8, ptr %.11553.i.us, i64 4
  %i.cv = getelementptr inbounds nuw i8, ptr %.1385552.i.us, i64 16
  %i.cw = load <4 x float>, ptr %i.cv, align 16, !tbaa !116
  %i.cx = fmul fast <4 x float> %i.cw, %i.au      ; 2 uses
  %i.cy = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.cx)
  %i.cz = fadd fast <4 x float> %i.cy, %i.cx
  %i.da = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cz) ; 2 uses
  %i.db = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.da, <4 x i32> %i.da)
  %i.dc = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.db, <8 x i16> splat (i16 -127))
  %i.dd = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.dc, <8 x i16> splat (i16 127))
  %i.de = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.dd, <8 x i16> poison)
  %i.df = bitcast <16 x i8> %i.de to <4 x i32>
  %i.dg = extractelement <4 x i32> %i.df, i64 0
  store i32 %i.dg, ptr %i.cu, align 4, !tbaa !45
  %i.dh = getelementptr inbounds nuw i8, ptr %.11553.i.us, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.1385552.i.us, i64 32
  %i.dj = add nuw nsw i32 %.1390551.i.us, 2       ; 2 uses
  %exitcond659.not.i.us.1 = icmp eq i32 %i.dj, %5
  br i1 %exitcond659.not.i.us.1, label %.loopexit477.i.us, label %.lr.ph554.i.us, !llvm.loop !906

.loopexit477.i.us:                                ; preds = %.lr.ph554.i.us.prol.loopexit, %.lr.ph554.i.us, %.preheader479.i.us
  %.15.i.us = phi ptr [ %.10.lcssa.i.us, %.preheader479.i.us ], [ %.lcssa191.unr, %.lr.ph554.i.us.prol.loopexit ], [ %i.dh, %.lr.ph554.i.us ] ; 2 uses
  %indvars.iv.next662.i.us = add nuw nsw i64 %indvars.iv661.i.us, 4 ; 3 uses
  %i.dk = icmp slt i64 %indvars.iv.next662.i.us, %invariant.op.i
  br i1 %i.dk, label %.preheader481.i.us, label %.preheader475.loopexit.i, !llvm.loop !907

.preheader478.i.us:                               ; preds = %.lr.ph571.i, %.loopexit477.i.us40
  %indvars.iv661.i.us37 = phi i64 [ %indvars.iv.next662.i.us42, %.loopexit477.i.us40 ], [ %i.aj, %.lr.ph571.i ] ; 3 uses
  %.9570.i.us38 = phi ptr [ %.15.i.us41, %.loopexit477.i.us40 ], [ %.0.lcssa.i, %.lr.ph571.i ] ; 2 uses
  %i.dl = add nsw i64 %indvars.iv661.i.us37, %i.af
  %i.dm = mul i64 %i.dl, %i.n
  %gep.i.us39 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.dm ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv661.i.us37
  %i.do = load <4 x float>, ptr %i.dn, align 16, !tbaa !116 ; 3 uses
  br i1 %i.ah, label %.lr.ph560.i.us, label %.preheader476.i.us

.lr.ph560.i.us:                                   ; preds = %.preheader478.i.us, %.lr.ph560.i.us
  %.13559.i.us = phi ptr [ %i.fc, %.lr.ph560.i.us ], [ %.9570.i.us38, %.preheader478.i.us ] ; 2 uses
  %.3387558.i.us = phi ptr [ %i.fd, %.lr.ph560.i.us ], [ %gep.i.us39, %.preheader478.i.us ] ; 6 uses
  %.0394557.i.us = phi i32 [ %i.fe, %.lr.ph560.i.us ], [ 0, %.preheader478.i.us ]
  %i.dp = load float, ptr %.3387558.i.us, align 4, !tbaa !68
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.3387558.i.us, i64 %i.n ; 2 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !68
  %i.ds = getelementptr inbounds nuw i8, ptr %.3387558.i.us, i64 %.idx464.i ; 2 uses
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !68
  %i.du = getelementptr inbounds nuw i8, ptr %.3387558.i.us, i64 %.idx465.i ; 2 uses
  %i.dv = load float, ptr %i.du, align 4, !tbaa !68
  %i.dw = insertelement <4 x float> poison, float %i.dp, i64 0
  %i.dx = insertelement <4 x float> %i.dw, float %i.dr, i64 1
  %i.dy = insertelement <4 x float> %i.dx, float %i.dt, i64 2
  %i.dz = insertelement <4 x float> %i.dy, float %i.dv, i64 3
  %i.ea = getelementptr inbounds nuw i8, ptr %.3387558.i.us, i64 4
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !68
  %i.ec = getelementptr i8, ptr %i.dq, i64 4
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !68
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !68
  %i.eg = getelementptr i8, ptr %i.du, i64 4
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !68
  %i.ei = insertelement <4 x float> poison, float %i.eb, i64 0
  %i.ej = insertelement <4 x float> %i.ei, float %i.ed, i64 1
  %i.ek = insertelement <4 x float> %i.ej, float %i.ef, i64 2
  %i.el = insertelement <4 x float> %i.ek, float %i.eh, i64 3
  %i.em = fmul fast <4 x float> %i.dz, %i.do      ; 2 uses
  %i.en = fmul fast <4 x float> %i.el, %i.do      ; 2 uses
  %i.eo = shufflevector <4 x float> %i.em, <4 x float> %i.en, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ep = shufflevector <4 x float> %i.em, <4 x float> %i.en, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.eq = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.eo)
  %i.er = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ep)
  %i.es = fadd fast <4 x float> %i.eq, %i.eo
  %i.et = fadd fast <4 x float> %i.er, %i.ep
  %i.eu = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.es)
  %i.ev = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.et)
  %i.ew = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.eu, <4 x i32> %i.ev)
  %i.ex = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ew, <8 x i16> splat (i16 -127))
  %i.ey = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ex, <8 x i16> splat (i16 127))
  %i.ez = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ey, <8 x i16> poison)
  %i.fa = bitcast <16 x i8> %i.ez to <2 x i64>
  %i.fb = extractelement <2 x i64> %i.fa, i64 0
  store i64 %i.fb, ptr %.13559.i.us, align 8, !tbaa !767
  %i.fc = getelementptr inbounds nuw i8, ptr %.13559.i.us, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.3387558.i.us, i64 8 ; 2 uses
  %i.fe = add nuw nsw i32 %.0394557.i.us, 2       ; 2 uses
  %i.ff = or disjoint i32 %i.fe, 1
  %i.fg = icmp slt i32 %i.ff, %5
  br i1 %i.fg, label %.lr.ph560.i.us, label %.preheader476.i.us, !llvm.loop !908

.preheader476.i.us:                               ; preds = %.lr.ph560.i.us, %.preheader478.i.us
  %.0394.lcssa.i.us = phi i32 [ 0, %.preheader478.i.us ], [ %i.ai, %.lr.ph560.i.us ] ; 2 uses
  %.3387.lcssa.i.us = phi ptr [ %gep.i.us39, %.preheader478.i.us ], [ %i.fd, %.lr.ph560.i.us ]
  %.13.lcssa.i.us = phi ptr [ %.9570.i.us38, %.preheader478.i.us ], [ %i.fc, %.lr.ph560.i.us ] ; 2 uses
  %i.fh = icmp slt i32 %.0394.lcssa.i.us, %5
  br i1 %i.fh, label %.lr.ph567.i.us, label %.loopexit477.i.us40

.lr.ph567.i.us:                                   ; preds = %.preheader476.i.us, %.lr.ph567.i.us
  %.14566.i.us = phi ptr [ %i.gd, %.lr.ph567.i.us ], [ %.13.lcssa.i.us, %.preheader476.i.us ] ; 2 uses
  %.4388565.i.us = phi ptr [ %i.ge, %.lr.ph567.i.us ], [ %.3387.lcssa.i.us, %.preheader476.i.us ] ; 5 uses
  %.1395564.i.us = phi i32 [ %i.gf, %.lr.ph567.i.us ], [ %.0394.lcssa.i.us, %.preheader476.i.us ]
  %i.fi = load float, ptr %.4388565.i.us, align 4, !tbaa !68
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.4388565.i.us, i64 %i.n
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !68
  %i.fl = getelementptr inbounds nuw i8, ptr %.4388565.i.us, i64 %.idx464.i
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !68
  %i.fn = getelementptr inbounds nuw i8, ptr %.4388565.i.us, i64 %.idx465.i
end_hunk_8
begin_hunk_9_@_ZN4ncnnL16pack_A_tile_bf16ERKNS_3MatERS0_iiii:bb.a
  %i.fc = getelementptr inbounds nuw i8, ptr %.118254.us, i64 4
  %i.fd = add nuw nsw i32 %.118055.us, 2          ; 2 uses
  %exitcond148.not.1 = icmp eq i32 %i.fd, %4
  br i1 %exitcond148.not.1, label %.loopexit.us, label %.lr.ph57.us, !llvm.loop !1059

.preheader2.us:                                   ; preds = %.lr.ph44.us, %.loopexit4.us
  %.2190.lcssa.us = phi ptr [ %.1189.us, %.loopexit4.us ], [ %i.dy, %.lr.ph44.us ] ; 8 uses
  %.0185.lcssa.us = phi ptr [ %i.db, %.loopexit4.us ], [ %i.dz, %.lr.ph44.us ] ; 8 uses
  %.0183.lcssa.us = phi ptr [ %i.dc, %.loopexit4.us ], [ %i.ea, %.lr.ph44.us ] ; 8 uses
  %.0181.lcssa.us = phi ptr [ %i.dd, %.loopexit4.us ], [ %i.eb, %.lr.ph44.us ] ; 8 uses
  %.0179.lcssa.us = phi i32 [ 0, %.loopexit4.us ], [ %i.ah, %.lr.ph44.us ] ; 7 uses
  %.10.lcssa.us = phi ptr [ %.9.us, %.loopexit4.us ], [ %i.dx, %.lr.ph44.us ] ; 12 uses
  %i.fe = icmp slt i32 %.0179.lcssa.us, %4
  br i1 %i.fe, label %iter.check270, label %.loopexit.us

iter.check270:                                    ; preds = %.preheader2.us
  %i.ff = xor i32 %.0179.lcssa.us, -1
  %i.fg = add i32 %4, %i.ff                       ; 3 uses
  %i.fh = zext i32 %i.fg to i64
  %i.fi = add nuw nsw i64 %i.fh, 1                ; 5 uses
  %min.iters.check245 = icmp ult i32 %i.fg, 7
  br i1 %min.iters.check245, label %.lr.ph57.us.preheader, label %vector.memcheck224

vector.memcheck224:                               ; preds = %iter.check270
  %scevgep = getelementptr i8, ptr %.10.lcssa.us, i64 8
  %i.fj = xor i32 %.0179.lcssa.us, -1
  %i.fk = add i32 %4, %i.fj
  %i.fl = zext i32 %i.fk to i64                   ; 2 uses
  %i.fm = shl nuw nsw i64 %i.fl, 3
  %scevgep225 = getelementptr i8, ptr %scevgep, i64 %i.fm ; 4 uses
  %scevgep226 = getelementptr i8, ptr %.0181.lcssa.us, i64 2
  %i.fn = shl nuw nsw i64 %i.fl, 1                ; 4 uses
  %scevgep227 = getelementptr i8, ptr %scevgep226, i64 %i.fn
  %scevgep228 = getelementptr i8, ptr %.0183.lcssa.us, i64 2
  %scevgep229 = getelementptr i8, ptr %scevgep228, i64 %i.fn
  %scevgep230 = getelementptr i8, ptr %.0185.lcssa.us, i64 2
  %scevgep231 = getelementptr i8, ptr %scevgep230, i64 %i.fn
  %scevgep232 = getelementptr i8, ptr %.2190.lcssa.us, i64 2
  %scevgep233 = getelementptr i8, ptr %scevgep232, i64 %i.fn
  %bound0 = icmp ult ptr %.10.lcssa.us, %scevgep227
  %bound1 = icmp ult ptr %.0181.lcssa.us, %scevgep225
  %found.conflict = and i1 %bound0, %bound1
  %bound0234 = icmp ult ptr %.10.lcssa.us, %scevgep229
  %bound1235 = icmp ult ptr %.0183.lcssa.us, %scevgep225
  %found.conflict236 = and i1 %bound0234, %bound1235
  %conflict.rdx = or i1 %found.conflict, %found.conflict236
  %bound0237 = icmp ult ptr %.10.lcssa.us, %scevgep231
  %bound1238 = icmp ult ptr %.0185.lcssa.us, %scevgep225
  %found.conflict239 = and i1 %bound0237, %bound1238
  %conflict.rdx240 = or i1 %conflict.rdx, %found.conflict239
  %bound0241 = icmp ult ptr %.10.lcssa.us, %scevgep233
  %bound1242 = icmp ult ptr %.2190.lcssa.us, %scevgep225
  %found.conflict243 = and i1 %bound0241, %bound1242
  %conflict.rdx244 = or i1 %conflict.rdx240, %found.conflict243
  br i1 %conflict.rdx244, label %.lr.ph57.us.preheader, label %vector.main.loop.iter.check246

vector.main.loop.iter.check246:                   ; preds = %vector.memcheck224
  %min.iters.check247 = icmp ult i32 %i.fg, 15
  br i1 %min.iters.check247, label %vec.epilog.ph274, label %vector.ph248

vector.ph248:                                     ; preds = %vector.main.loop.iter.check246
  %i.fo = and i64 %i.fi, 8
  %n.vec249 = and i64 %i.fi, 8589934576           ; 6 uses
  %i.fp = shl nuw nsw i64 %n.vec249, 3
  %i.fq = getelementptr i8, ptr %.10.lcssa.us, i64 %i.fp ; 2 uses
  %i.fr = trunc i64 %n.vec249 to i32
  %i.fs = add i32 %.0179.lcssa.us, %i.fr
  %i.ft = shl nuw nsw i64 %n.vec249, 1            ; 4 uses
  %i.fu = getelementptr i8, ptr %.0181.lcssa.us, i64 %i.ft
  %i.fv = getelementptr i8, ptr %.0183.lcssa.us, i64 %i.ft
  %i.fw = getelementptr i8, ptr %.0185.lcssa.us, i64 %i.ft
  %i.fx = getelementptr i8, ptr %.2190.lcssa.us, i64 %i.ft
  br label %vector.body250

vector.body250:                                   ; preds = %vector.body250, %vector.ph248
  %index251 = phi i64 [ 0, %vector.ph248 ], [ %index.next261, %vector.body250 ] ; 3 uses
  %i.fy = shl i64 %index251, 3
  %next.gep252 = getelementptr i8, ptr %.10.lcssa.us, i64 %i.fy
  %i.fz = shl i64 %index251, 1                    ; 4 uses
  %next.gep253 = getelementptr i8, ptr %.0181.lcssa.us, i64 %i.fz
  %next.gep254 = getelementptr i8, ptr %.0183.lcssa.us, i64 %i.fz
  %next.gep255 = getelementptr i8, ptr %.0185.lcssa.us, i64 %i.fz
  %next.gep256 = getelementptr i8, ptr %.2190.lcssa.us, i64 %i.fz
  %wide.load257 = load <16 x i16>, ptr %next.gep256, align 2, !tbaa !685, !alias.scope !1060
  %wide.load258 = load <16 x i16>, ptr %next.gep255, align 2, !tbaa !685, !alias.scope !1063
  %wide.load259 = load <16 x i16>, ptr %next.gep254, align 2, !tbaa !685, !alias.scope !1065
  %wide.load260 = load <16 x i16>, ptr %next.gep253, align 2, !tbaa !685, !alias.scope !1067
  %i.ga = shufflevector <16 x i16> %wide.load257, <16 x i16> %wide.load258, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gb = shufflevector <16 x i16> %wide.load259, <16 x i16> %wide.load260, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x i16> %i.ga, <32 x i16> %i.gb, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x i16> %interleaved.vec, ptr %next.gep252, align 2, !tbaa !685, !alias.scope !1069, !noalias !1071
  %index.next261 = add nuw i64 %index251, 16      ; 2 uses
  %i.gc = icmp eq i64 %index.next261, %n.vec249
  br i1 %i.gc, label %middle.block262, label %vector.body250, !llvm.loop !1072

middle.block262:                                  ; preds = %vector.body250
  %cmp.n263 = icmp eq i64 %i.fi, %n.vec249
  br i1 %cmp.n263, label %.loopexit.us, label %vec.epilog.iter.check272

vec.epilog.iter.check272:                         ; preds = %middle.block262
  %min.epilog.iters.check273.not.not = icmp eq i64 %i.fo, 0
  br i1 %min.epilog.iters.check273.not.not, label %.lr.ph57.us.preheader, label %vec.epilog.ph274, !prof !1073

vec.epilog.ph274:                                 ; preds = %vector.main.loop.iter.check246, %vec.epilog.iter.check272
  %vec.epilog.resume.val264 = phi i64 [ %n.vec249, %vec.epilog.iter.check272 ], [ 0, %vector.main.loop.iter.check246 ]
  %n.vec275 = and i64 %i.fi, 8589934584           ; 5 uses
  %i.gd = shl nuw nsw i64 %n.vec275, 3
  %i.ge = getelementptr i8, ptr %.10.lcssa.us, i64 %i.gd ; 2 uses
  %i.gf = trunc i64 %n.vec275 to i32
  %i.gg = add i32 %.0179.lcssa.us, %i.gf
  %i.gh = shl nuw nsw i64 %n.vec275, 1            ; 4 uses
  %i.gi = getelementptr i8, ptr %.0181.lcssa.us, i64 %i.gh
  %i.gj = getelementptr i8, ptr %.0183.lcssa.us, i64 %i.gh
  %i.gk = getelementptr i8, ptr %.0185.lcssa.us, i64 %i.gh
  %i.gl = getelementptr i8, ptr %.2190.lcssa.us, i64 %i.gh
  br label %vec.epilog.vector.body276

vec.epilog.vector.body276:                        ; preds = %vec.epilog.vector.body276, %vec.epilog.ph274
  %index277 = phi i64 [ %vec.epilog.resume.val264, %vec.epilog.ph274 ], [ %index.next288, %vec.epilog.vector.body276 ] ; 3 uses
  %i.gm = shl i64 %index277, 3
  %next.gep278 = getelementptr i8, ptr %.10.lcssa.us, i64 %i.gm
  %i.gn = shl i64 %index277, 1                    ; 4 uses
  %next.gep279 = getelementptr i8, ptr %.0181.lcssa.us, i64 %i.gn
  %next.gep280 = getelementptr i8, ptr %.0183.lcssa.us, i64 %i.gn
  %next.gep281 = getelementptr i8, ptr %.0185.lcssa.us, i64 %i.gn
  %next.gep282 = getelementptr i8, ptr %.2190.lcssa.us, i64 %i.gn
  %wide.load283 = load <8 x i16>, ptr %next.gep282, align 2, !tbaa !685, !alias.scope !1060
  %wide.load284 = load <8 x i16>, ptr %next.gep281, align 2, !tbaa !685, !alias.scope !1063
  %wide.load285 = load <8 x i16>, ptr %next.gep280, align 2, !tbaa !685, !alias.scope !1065
  %wide.load286 = load <8 x i16>, ptr %next.gep279, align 2, !tbaa !685, !alias.scope !1067
  %i.go = shufflevector <8 x i16> %wide.load283, <8 x i16> %wide.load284, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gp = shufflevector <8 x i16> %wide.load285, <8 x i16> %wide.load286, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec287 = shufflevector <16 x i16> %i.go, <16 x i16> %i.gp, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec287, ptr %next.gep278, align 2, !tbaa !685, !alias.scope !1069, !noalias !1071
  %index.next288 = add nuw i64 %index277, 8       ; 2 uses
  %i.gq = icmp eq i64 %index.next288, %n.vec275
  br i1 %i.gq, label %vec.epilog.middle.block289, label %vec.epilog.vector.body276, !llvm.loop !1074

vec.epilog.middle.block289:                       ; preds = %vec.epilog.vector.body276
  %cmp.n290 = icmp eq i64 %i.fi, %n.vec275
  br i1 %cmp.n290, label %.loopexit.us, label %.lr.ph57.us.preheader

.lr.ph57.us.preheader:                            ; preds = %vector.memcheck224, %iter.check270, %vec.epilog.iter.check272, %vec.epilog.middle.block289
  %.1156.us.ph = phi ptr [ %.10.lcssa.us, %iter.check270 ], [ %.10.lcssa.us, %vector.memcheck224 ], [ %i.fq, %vec.epilog.iter.check272 ], [ %i.ge, %vec.epilog.middle.block289 ] ; 6 uses
  %.118055.us.ph = phi i32 [ %.0179.lcssa.us, %iter.check270 ], [ %.0179.lcssa.us, %vector.memcheck224 ], [ %i.fs, %vec.epilog.iter.check272 ], [ %i.gg, %vec.epilog.middle.block289 ] ; 4 uses
  %.118254.us.ph = phi ptr [ %.0181.lcssa.us, %iter.check270 ], [ %.0181.lcssa.us, %vector.memcheck224 ], [ %i.fu, %vec.epilog.iter.check272 ], [ %i.gi, %vec.epilog.middle.block289 ] ; 3 uses
  %.118453.us.ph = phi ptr [ %.0183.lcssa.us, %iter.check270 ], [ %.0183.lcssa.us, %vector.memcheck224 ], [ %i.fv, %vec.epilog.iter.check272 ], [ %i.gj, %vec.epilog.middle.block289 ] ; 3 uses
  %.118652.us.ph = phi ptr [ %.0185.lcssa.us, %iter.check270 ], [ %.0185.lcssa.us, %vector.memcheck224 ], [ %i.fw, %vec.epilog.iter.check272 ], [ %i.gk, %vec.epilog.middle.block289 ] ; 3 uses
  %.319151.us.ph = phi ptr [ %.2190.lcssa.us, %iter.check270 ], [ %.2190.lcssa.us, %vector.memcheck224 ], [ %i.fx, %vec.epilog.iter.check272 ], [ %i.gl, %vec.epilog.middle.block289 ] ; 3 uses
  %i.gr = sub i32 %4, %.118055.us.ph
  %.neg479 = add i32 %.118055.us.ph, 1
  %xtraiter462 = and i32 %i.gr, 1
  %lcmp.mod463.not = icmp eq i32 %xtraiter462, 0
  br i1 %lcmp.mod463.not, label %.lr.ph57.us.prol.loopexit, label %.lr.ph57.us.prol

.lr.ph57.us.prol:                                 ; preds = %.lr.ph57.us.preheader
  %i.gs = load i16, ptr %.319151.us.ph, align 2, !tbaa !685
  store i16 %i.gs, ptr %.1156.us.ph, align 2, !tbaa !685
  %i.gt = load i16, ptr %.118652.us.ph, align 2, !tbaa !685
  %i.gu = getelementptr inbounds nuw i8, ptr %.1156.us.ph, i64 2
  store i16 %i.gt, ptr %i.gu, align 2, !tbaa !685
  %i.gv = load i16, ptr %.118453.us.ph, align 2, !tbaa !685
  %i.gw = getelementptr inbounds nuw i8, ptr %.1156.us.ph, i64 4
  store i16 %i.gv, ptr %i.gw, align 2, !tbaa !685
  %i.gx = load i16, ptr %.118254.us.ph, align 2, !tbaa !685
  %i.gy = getelementptr inbounds nuw i8, ptr %.1156.us.ph, i64 6
  store i16 %i.gx, ptr %i.gy, align 2, !tbaa !685
  %i.gz = getelementptr inbounds nuw i8, ptr %.1156.us.ph, i64 8 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.319151.us.ph, i64 2
  %i.hb = getelementptr inbounds nuw i8, ptr %.118652.us.ph, i64 2
  %i.hc = getelementptr inbounds nuw i8, ptr %.118453.us.ph, i64 2
  %i.hd = getelementptr inbounds nuw i8, ptr %.118254.us.ph, i64 2
  %i.he = add nuw nsw i32 %.118055.us.ph, 1
  br label %.lr.ph57.us.prol.loopexit

.lr.ph57.us.prol.loopexit:                        ; preds = %.lr.ph57.us.prol, %.lr.ph57.us.preheader
  %.lcssa441.unr = phi ptr [ poison, %.lr.ph57.us.preheader ], [ %i.gz, %.lr.ph57.us.prol ]
  %.1156.us.unr = phi ptr [ %.1156.us.ph, %.lr.ph57.us.preheader ], [ %i.gz, %.lr.ph57.us.prol ]
  %.118055.us.unr = phi i32 [ %.118055.us.ph, %.lr.ph57.us.preheader ], [ %i.he, %.lr.ph57.us.prol ]
  %.118254.us.unr = phi ptr [ %.118254.us.ph, %.lr.ph57.us.preheader ], [ %i.hd, %.lr.ph57.us.prol ]
  %.118453.us.unr = phi ptr [ %.118453.us.ph, %.lr.ph57.us.preheader ], [ %i.hc, %.lr.ph57.us.prol ]
  %.118652.us.unr = phi ptr [ %.118652.us.ph, %.lr.ph57.us.preheader ], [ %i.hb, %.lr.ph57.us.prol ]
  %.319151.us.unr = phi ptr [ %.319151.us.ph, %.lr.ph57.us.preheader ], [ %i.ha, %.lr.ph57.us.prol ]
  %i.hf = icmp eq i32 %4, %.neg479
  br i1 %i.hf, label %.loopexit.us, label %.lr.ph57.us

.loopexit.us:                                     ; preds = %.lr.ph57.us.prol.loopexit, %.lr.ph57.us, %middle.block262, %vec.epilog.middle.block289, %.preheader2.us
  %.11.lcssa.us = phi ptr [ %.10.lcssa.us, %.preheader2.us ], [ %i.ge, %vec.epilog.middle.block289 ], [ %i.fq, %middle.block262 ], [ %.lcssa441.unr, %.lr.ph57.us.prol.loopexit ], [ %i.ey, %.lr.ph57.us ] ; 2 uses
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 4 ; 3 uses
  %i.hg = icmp slt i64 %indvars.iv.next150, %invariant.op189
  %indvar.next300 = add i64 %indvar299, 1
  br i1 %i.hg, label %.lr.ph61.split.us, label %.preheader1.loopexit, !llvm.loop !1075

.lr.ph61.split:                                   ; preds = %.lr.ph61
  br i1 %i.ad, label %.lr.ph61.split.split.preheader, label %.lr.ph61.split.split.us

.lr.ph61.split.split.preheader:                   ; preds = %.lr.ph61.split
  %i.hh = add i32 %2, -4
  %i.hi = sub i32 %i.hh, %.0167.lcssa
  %i.hj = and i32 %i.hi, -4
  %i.hk = add nuw i32 %.0167.lcssa, %i.hj
  %i.hl = add nuw i32 %i.hk, 4
  br label %.preheader1

.lr.ph61.split.split.us:                          ; preds = %.lr.ph61.split
  br i1 %i.ae, label %.preheader3.us71.preheader, label %.preheader3.us71.us.preheader

.preheader3.us71.us.preheader:                    ; preds = %.lr.ph61.split.split.us
  %i.hm = zext i32 %.0167.lcssa to i64            ; 2 uses
  %i.hn = sext i32 %1 to i64                      ; 2 uses
  %i.ho = sext i32 %2 to i64
  %invariant.op = add nsw i64 %i.ho, -3
  %i.hp = add nsw i64 %i.hn, %i.hm
  %i.hq = mul i64 %i.k, %i.hp
  %i.hr = mul i64 %i.hq, -2
  %i.hs = shl nsw i64 %i.ac, 1
  %i.ht = sub i64 %i.hr, %i.hs
  %i.hu = mul i64 %i.k, -8
  %i.hv = zext nneg i32 %4 to i64                 ; 5 uses
  %min.iters.check = icmp ult i32 %4, 4
  %min.iters.check207 = icmp ult i32 %4, 16
  %i.hw = and i64 %i.hv, 12
  %n.vec = and i64 %i.hv, 2147483632              ; 5 uses
  %i.hx = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.hy = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.hv
  %min.epilog.iters.check = icmp eq i64 %i.hw, 0
  %n.vec214 = and i64 %i.hv, 2147483644           ; 4 uses
  %i.hz = shl nuw nsw i64 %n.vec214, 3            ; 2 uses
  %i.ia = trunc nuw nsw i64 %n.vec214 to i32
  %cmp.n220 = icmp eq i64 %n.vec214, %i.hv
  br label %iter.check

.preheader3.us71.preheader:                       ; preds = %.lr.ph61.split.split.us
  %i.ib = add i32 %2, -4
  %i.ic = sub i32 %i.ib, %.0167.lcssa
  %i.id = and i32 %i.ic, -4
  %i.ie = add nuw i32 %.0167.lcssa, %i.id
  %i.if = add nuw i32 %i.ie, 4
  br label %.preheader1

iter.check:                                       ; preds = %.preheader3.us71.us.preheader, %..loopexit4_crit_edge.us75.us
  %indvar = phi i64 [ 0, %.preheader3.us71.us.preheader ], [ %indvar.next, %..loopexit4_crit_edge.us75.us ] ; 2 uses
  %indvars.iv144 = phi i64 [ %i.hm, %.preheader3.us71.us.preheader ], [ %indvars.iv.next145, %..loopexit4_crit_edge.us75.us ] ; 2 uses
  %.760.us65.us = phi ptr [ %.0166.lcssa, %.preheader3.us71.us.preheader ], [ %.lcssa202, %..loopexit4_crit_edge.us75.us ] ; 7 uses
  %i.ig = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ih = add nsw i64 %indvars.iv144, %i.hn
  %i.ii = mul i64 %i.k, %i.ih
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.ig, i64 %i.ii
  %i.ik = getelementptr inbounds [2 x i8], ptr %i.ij, i64 %i.ac ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.il = ptrtoaddr ptr %i.ig to i64
  %i.im = mul i64 %i.hu, %indvar
  %i.in = add i64 %i.ht, %i.im
  %.760.us65.us206 = ptrtoaddr ptr %.760.us65.us to i64
  %i.io = add i64 %i.in, %.760.us65.us206
  %i.ip = sub i64 %i.il, %i.io
  %diff.check = icmp ugt i64 %i.ip, -128
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check207, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.iq = getelementptr i8, ptr %.760.us65.us, i64 %i.hx ; 2 uses
  %i.ir = getelementptr i8, ptr %i.ik, i64 %i.hx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.is = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.760.us65.us, i64 %i.is ; 4 uses
  %next.gep208 = getelementptr i8, ptr %i.ik, i64 %i.is ; 4 uses
  %i.it = getelementptr i8, ptr %next.gep208, i64 32
  %i.iu = getelementptr i8, ptr %next.gep208, i64 64
  %i.iv = getelementptr i8, ptr %next.gep208, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep208, align 1, !tbaa !116
  %wide.load209 = load <4 x i64>, ptr %i.it, align 1, !tbaa !116
  %wide.load210 = load <4 x i64>, ptr %i.iu, align 1, !tbaa !116
  %wide.load211 = load <4 x i64>, ptr %i.iv, align 1, !tbaa !116
  %i.iw = getelementptr i8, ptr %next.gep, i64 32
  %i.ix = getelementptr i8, ptr %next.gep, i64 64
  %i.iy = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 1, !tbaa !116
  store <4 x i64> %wide.load209, ptr %i.iw, align 1, !tbaa !116
  store <4 x i64> %wide.load210, ptr %i.ix, align 1, !tbaa !116
  store <4 x i64> %wide.load211, ptr %i.iy, align 1, !tbaa !116
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.iz = icmp eq i64 %index.next, %n.vec
  br i1 %i.iz, label %middle.block, label %vector.body, !llvm.loop !1076

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit4_crit_edge.us75.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !564

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ja = getelementptr i8, ptr %.760.us65.us, i64 %i.hz ; 2 uses
  %i.jb = getelementptr i8, ptr %i.ik, i64 %i.hz
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index215 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next219, %vec.epilog.vector.body ] ; 2 uses
  %i.jc = shl i64 %index215, 3                    ; 2 uses
  %next.gep216 = getelementptr i8, ptr %.760.us65.us, i64 %i.jc
  %next.gep217 = getelementptr i8, ptr %i.ik, i64 %i.jc
  %wide.load218 = load <4 x i64>, ptr %next.gep217, align 1, !tbaa !116
  store <4 x i64> %wide.load218, ptr %next.gep216, align 1, !tbaa !116
  %index.next219 = add nuw i64 %index215, 4       ; 2 uses
  %i.jd = icmp eq i64 %index.next219, %n.vec214
  br i1 %i.jd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1077

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n220, label %..loopexit4_crit_edge.us75.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.834.us67.us.ph = phi ptr [ %.760.us65.us, %iter.check ], [ %.760.us65.us, %vector.memcheck ], [ %i.iq, %vec.epilog.iter.check ], [ %i.ja, %vec.epilog.middle.block ] ; 2 uses
  %.018733.us68.us.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.hy, %vec.epilog.iter.check ], [ %i.ia, %vec.epilog.middle.block ] ; 4 uses
  %.018832.us69.us.ph = phi ptr [ %i.ik, %iter.check ], [ %i.ik, %vector.memcheck ], [ %i.ir, %vec.epilog.iter.check ], [ %i.jb, %vec.epilog.middle.block ] ; 2 uses
  %i.je = sub i32 %4, %.018733.us68.us.ph
  %xtraiter457 = and i32 %i.je, 7                 ; 2 uses
  %lcmp.mod458.not = icmp eq i32 %xtraiter457, 0
  br i1 %lcmp.mod458.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.834.us67.us.prol = phi ptr [ %i.jg, %vec.epilog.scalar.ph.prol ], [ %.834.us67.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.018733.us68.us.prol = phi i32 [ %i.ji, %vec.epilog.scalar.ph.prol ], [ %.018733.us68.us.ph, %vec.epilog.scalar.ph.preheader ]
  %.018832.us69.us.prol = phi ptr [ %i.jh, %vec.epilog.scalar.ph.prol ], [ %.018832.us69.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.jf = load i64, ptr %.018832.us69.us.prol, align 1, !tbaa !116
  store i64 %i.jf, ptr %.834.us67.us.prol, align 1, !tbaa !116
  %i.jg = getelementptr inbounds nuw i8, ptr %.834.us67.us.prol, i64 8 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.018832.us69.us.prol, i64 8 ; 2 uses
  %i.ji = add nuw nsw i32 %.018733.us68.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter457
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1078

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa442.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.jg, %vec.epilog.scalar.ph.prol ]
  %.834.us67.us.unr = phi ptr [ %.834.us67.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.jg, %vec.epilog.scalar.ph.prol ]
  %.018733.us68.us.unr = phi i32 [ %.018733.us68.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ji, %vec.epilog.scalar.ph.prol ]
  %.018832.us69.us.unr = phi ptr [ %.018832.us69.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.jh, %vec.epilog.scalar.ph.prol ]
  %i.jj = sub i32 %.018733.us68.us.ph, %4
  %i.jk = icmp ugt i32 %i.jj, -8
  br i1 %i.jk, label %..loopexit4_crit_edge.us75.us, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.834.us67.us = phi ptr [ %i.kh, %vec.epilog.scalar.ph ], [ %.834.us67.us.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.018733.us68.us = phi i32 [ %i.kj, %vec.epilog.scalar.ph ], [ %.018733.us68.us.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.018832.us69.us = phi ptr [ %i.ki, %vec.epilog.scalar.ph ], [ %.018832.us69.us.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.jl = load i64, ptr %.018832.us69.us, align 1, !tbaa !116
  store i64 %i.jl, ptr %.834.us67.us, align 1, !tbaa !116
  %i.jm = getelementptr inbounds nuw i8, ptr %.834.us67.us, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %.018832.us69.us, i64 8
  %i.jo = load i64, ptr %i.jn, align 1, !tbaa !116
  store i64 %i.jo, ptr %i.jm, align 1, !tbaa !116
  %i.jp = getelementptr inbounds nuw i8, ptr %.834.us67.us, i64 16
  %i.jq = getelementptr inbounds nuw i8, ptr %.018832.us69.us, i64 16
  %i.jr = load i64, ptr %i.jq, align 1, !tbaa !116
  store i64 %i.jr, ptr %i.jp, align 1, !tbaa !116
  %i.js = getelementptr inbounds nuw i8, ptr %.834.us67.us, i64 24
  %i.jt = getelementptr inbounds nuw i8, ptr %.018832.us69.us, i64 24
  %i.ju = load i64, ptr %i.jt, align 1, !tbaa !116
  store i64 %i.ju, ptr %i.js, align 1, !tbaa !116
  %i.jv = getelementptr inbounds nuw i8, ptr %.834.us67.us, i64 32
  %i.jw = getelementptr inbounds nuw i8, ptr %.018832.us69.us, i64 32
  %i.jx = load i64, ptr %i.jw, align 1, !tbaa !116
  store i64 %i.jx, ptr %i.jv, align 1, !tbaa !116
  %i.jy = getelementptr inbounds nuw i8, ptr %.834.us67.us, i64 40
  %i.jz = getelementptr inbounds nuw i8, ptr %.018832.us69.us, i64 40
  %i.ka = load i64, ptr %i.jz, align 1, !tbaa !116
  store i64 %i.ka, ptr %i.jy, align 1, !tbaa !116
  %i.kb = getelementptr inbounds nuw i8, ptr %.834.us67.us, i64 48
  %i.kc = getelementptr inbounds nuw i8, ptr %.018832.us69.us, i64 48
  %i.kd = load i64, ptr %i.kc, align 1, !tbaa !116
  store i64 %i.kd, ptr %i.kb, align 1, !tbaa !116
  %i.ke = getelementptr inbounds nuw i8, ptr %.834.us67.us, i64 56
  %i.kf = getelementptr inbounds nuw i8, ptr %.018832.us69.us, i64 56
  %i.kg = load i64, ptr %i.kf, align 1, !tbaa !116
  store i64 %i.kg, ptr %i.ke, align 1, !tbaa !116
  %i.kh = getelementptr inbounds nuw i8, ptr %.834.us67.us, i64 64 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.018832.us69.us, i64 64
  %i.kj = add nuw nsw i32 %.018733.us68.us, 8     ; 2 uses
  %exitcond143.not.7 = icmp eq i32 %i.kj, %4
  br i1 %exitcond143.not.7, label %..loopexit4_crit_edge.us75.us, label %vec.epilog.scalar.ph, !llvm.loop !1079

..loopexit4_crit_edge.us75.us:                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa202 = phi ptr [ %i.ja, %vec.epilog.middle.block ], [ %i.iq, %middle.block ], [ %.lcssa442.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.kh, %vec.epilog.scalar.ph ] ; 2 uses
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 4 ; 3 uses
  %i.kk = icmp slt i64 %indvars.iv.next145, %invariant.op
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kk, label %iter.check, label %.preheader1.loopexit116, !llvm.loop !1075

bb.b:                                             ; preds = %.lr.ph29, %.loopexit7
  %indvars.iv = phi i64 [ 0, %.lr.ph29 ], [ %indvars.iv.next, %.loopexit7 ] ; 2 uses
  %.016628 = phi ptr [ %.0.val, %.lr.ph29 ], [ %.6, %.loopexit7 ] ; 7 uses
  %i.kl = load ptr, ptr %0, align 8, !tbaa !18
  %i.km = add nsw i64 %indvars.iv, %i.u
  %i.kn = mul i64 %i.k, %i.km
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %i.kl, i64 %i.kn
  %i.kp = getelementptr inbounds [2 x i8], ptr %i.ko, i64 %i.n ; 6 uses
  br i1 %brmerge109, label %.loopexit10, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  br i1 %i.w, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.113 = phi ptr [ %i.lm, %.lr.ph ], [ %.016628, %.lr.ph.preheader ] ; 9 uses
  %.017112 = phi ptr [ %i.ln, %.lr.ph ], [ %i.kp, %.lr.ph.preheader ] ; 9 uses
  %niter = phi i32 [ %niter.next.7, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.kq = load <2 x i64>, ptr %.017112, align 1, !tbaa !116
  store <2 x i64> %i.kq, ptr %.113, align 1, !tbaa !116
  %i.kr = getelementptr inbounds nuw i8, ptr %.113, i64 16
  %i.ks = getelementptr inbounds nuw i8, ptr %.017112, i64 16
  %i.kt = load <2 x i64>, ptr %i.ks, align 1, !tbaa !116
  store <2 x i64> %i.kt, ptr %i.kr, align 1, !tbaa !116
  %i.ku = getelementptr inbounds nuw i8, ptr %.113, i64 32
  %i.kv = getelementptr inbounds nuw i8, ptr %.017112, i64 32
  %i.kw = load <2 x i64>, ptr %i.kv, align 1, !tbaa !116
  store <2 x i64> %i.kw, ptr %i.ku, align 1, !tbaa !116
  %i.kx = getelementptr inbounds nuw i8, ptr %.113, i64 48
  %i.ky = getelementptr inbounds nuw i8, ptr %.017112, i64 48
  %i.kz = load <2 x i64>, ptr %i.ky, align 1, !tbaa !116
  store <2 x i64> %i.kz, ptr %i.kx, align 1, !tbaa !116
  %i.la = getelementptr inbounds nuw i8, ptr %.113, i64 64
  %i.lb = getelementptr inbounds nuw i8, ptr %.017112, i64 64
  %i.lc = load <2 x i64>, ptr %i.lb, align 1, !tbaa !116
  store <2 x i64> %i.lc, ptr %i.la, align 1, !tbaa !116
  %i.ld = getelementptr inbounds nuw i8, ptr %.113, i64 80
  %i.le = getelementptr inbounds nuw i8, ptr %.017112, i64 80
  %i.lf = load <2 x i64>, ptr %i.le, align 1, !tbaa !116
  store <2 x i64> %i.lf, ptr %i.ld, align 1, !tbaa !116
  %i.lg = getelementptr inbounds nuw i8, ptr %.113, i64 96
  %i.lh = getelementptr inbounds nuw i8, ptr %.017112, i64 96
end_hunk_9
begin_hunk_10_@_ZN4ncnnL16pack_B_tile_bf16ERKNS_3MatERS0_iiii:bb.a
  %scevgep = getelementptr i8, ptr %i.dt, i64 8   ; 4 uses
  %i.du = getelementptr i8, ptr %.1.us151, i64 %.idx164
  %i.dv = getelementptr i8, ptr %i.du, i64 %i.an
  %scevgep198 = getelementptr i8, ptr %i.dv, i64 2
  %i.dw = getelementptr i8, ptr %.1.us151, i64 %.idx
  %i.dx = getelementptr i8, ptr %i.dw, i64 %i.an
  %scevgep199 = getelementptr i8, ptr %i.dx, i64 2
  %i.dy = getelementptr i8, ptr %.1.us151, i64 %i.ap
  %scevgep200 = getelementptr i8, ptr %i.dy, i64 2
  %i.dz = getelementptr i8, ptr %.1.us151, i64 %i.an
  %scevgep201 = getelementptr i8, ptr %i.dz, i64 2
  %bound0 = icmp ult ptr %.9.us150, %scevgep198
  %bound1 = icmp ult ptr %i.dq, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0202 = icmp ult ptr %.9.us150, %scevgep199
  %bound1203 = icmp ult ptr %i.dr, %scevgep
  %found.conflict204 = and i1 %bound0202, %bound1203
  %conflict.rdx = or i1 %found.conflict, %found.conflict204
  %bound0205 = icmp ult ptr %.9.us150, %scevgep200
  %bound1206 = icmp ult ptr %i.ds, %scevgep
  %found.conflict207 = and i1 %bound0205, %bound1206
  %conflict.rdx208 = or i1 %conflict.rdx, %found.conflict207
  %bound0209 = icmp ult ptr %.9.us150, %scevgep201
  %bound1210 = icmp ult ptr %.1.us151, %scevgep
  %found.conflict211 = and i1 %bound0209, %bound1210
  %conflict.rdx212 = or i1 %conflict.rdx208, %found.conflict211
  br i1 %conflict.rdx212, label %.lr.ph43.us.preheader, label %vector.main.loop.iter.check214

vector.main.loop.iter.check214:                   ; preds = %vector.memcheck197
  br i1 %min.iters.check215, label %vec.epilog.ph242, label %vector.ph216

vector.ph216:                                     ; preds = %vector.main.loop.iter.check214
  %i.ea = getelementptr i8, ptr %i.dq, i64 %i.bh
  %i.eb = getelementptr i8, ptr %i.dr, i64 %i.bh
  %i.ec = getelementptr i8, ptr %i.ds, i64 %i.bh
  %i.ed = getelementptr i8, ptr %.1.us151, i64 %i.bh
  %i.ee = getelementptr i8, ptr %.9.us150, i64 %i.bi ; 2 uses
  br label %vector.body218

vector.body218:                                   ; preds = %vector.body218, %vector.ph216
  %index219 = phi i64 [ 0, %vector.ph216 ], [ %index.next229, %vector.body218 ] ; 3 uses
  %i.ef = shl i64 %index219, 1                    ; 4 uses
  %next.gep220 = getelementptr i8, ptr %i.dq, i64 %i.ef
  %next.gep221 = getelementptr i8, ptr %i.dr, i64 %i.ef
  %next.gep222 = getelementptr i8, ptr %i.ds, i64 %i.ef
  %next.gep223 = getelementptr i8, ptr %.1.us151, i64 %i.ef
  %i.eg = shl i64 %index219, 3
  %next.gep224 = getelementptr i8, ptr %.9.us150, i64 %i.eg
  %wide.load225 = load <16 x i16>, ptr %next.gep223, align 2, !tbaa !685, !alias.scope !1111
  %wide.load226 = load <16 x i16>, ptr %next.gep222, align 2, !tbaa !685, !alias.scope !1114
  %wide.load227 = load <16 x i16>, ptr %next.gep221, align 2, !tbaa !685, !alias.scope !1116
  %wide.load228 = load <16 x i16>, ptr %next.gep220, align 2, !tbaa !685, !alias.scope !1118
  %i.eh = shufflevector <16 x i16> %wide.load225, <16 x i16> %wide.load226, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ei = shufflevector <16 x i16> %wide.load227, <16 x i16> %wide.load228, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x i16> %i.eh, <32 x i16> %i.ei, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x i16> %interleaved.vec, ptr %next.gep224, align 2, !tbaa !685, !alias.scope !1120, !noalias !1122
  %index.next229 = add nuw i64 %index219, 16      ; 2 uses
  %i.ej = icmp eq i64 %index.next229, %n.vec217
  br i1 %i.ej, label %middle.block230, label %vector.body218, !llvm.loop !1123

middle.block230:                                  ; preds = %vector.body218
  br i1 %cmp.n231, label %.loopexit.us, label %vec.epilog.iter.check240

vec.epilog.iter.check240:                         ; preds = %middle.block230
  br i1 %min.epilog.iters.check241.not.not, label %.lr.ph43.us.preheader, label %vec.epilog.ph242, !prof !1073

vec.epilog.ph242:                                 ; preds = %vector.main.loop.iter.check214, %vec.epilog.iter.check240
  %vec.epilog.resume.val232 = phi i64 [ %n.vec217, %vec.epilog.iter.check240 ], [ 0, %vector.main.loop.iter.check214 ]
  %i.ek = getelementptr i8, ptr %i.dq, i64 %i.bk
  %i.el = getelementptr i8, ptr %i.dr, i64 %i.bk
  %i.em = getelementptr i8, ptr %i.ds, i64 %i.bk
  %i.en = getelementptr i8, ptr %.1.us151, i64 %i.bk
  %i.eo = getelementptr i8, ptr %.9.us150, i64 %i.bl ; 2 uses
  br label %vec.epilog.vector.body244

vec.epilog.vector.body244:                        ; preds = %vec.epilog.vector.body244, %vec.epilog.ph242
  %index245 = phi i64 [ %vec.epilog.resume.val232, %vec.epilog.ph242 ], [ %index.next256, %vec.epilog.vector.body244 ] ; 3 uses
  %i.ep = shl i64 %index245, 1                    ; 4 uses
  %next.gep246 = getelementptr i8, ptr %i.dq, i64 %i.ep
  %next.gep247 = getelementptr i8, ptr %i.dr, i64 %i.ep
  %next.gep248 = getelementptr i8, ptr %i.ds, i64 %i.ep
  %next.gep249 = getelementptr i8, ptr %.1.us151, i64 %i.ep
  %i.eq = shl i64 %index245, 3
  %next.gep250 = getelementptr i8, ptr %.9.us150, i64 %i.eq
  %wide.load251 = load <8 x i16>, ptr %next.gep249, align 2, !tbaa !685, !alias.scope !1111
  %wide.load252 = load <8 x i16>, ptr %next.gep248, align 2, !tbaa !685, !alias.scope !1114
  %wide.load253 = load <8 x i16>, ptr %next.gep247, align 2, !tbaa !685, !alias.scope !1116
  %wide.load254 = load <8 x i16>, ptr %next.gep246, align 2, !tbaa !685, !alias.scope !1118
  %i.er = shufflevector <8 x i16> %wide.load251, <8 x i16> %wide.load252, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.es = shufflevector <8 x i16> %wide.load253, <8 x i16> %wide.load254, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec255 = shufflevector <16 x i16> %i.er, <16 x i16> %i.es, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec255, ptr %next.gep250, align 2, !tbaa !685, !alias.scope !1120, !noalias !1122
  %index.next256 = add nuw i64 %index245, 8       ; 2 uses
  %i.et = icmp eq i64 %index.next256, %n.vec243
  br i1 %i.et, label %vec.epilog.middle.block257, label %vec.epilog.vector.body244, !llvm.loop !1124

vec.epilog.middle.block257:                       ; preds = %vec.epilog.vector.body244
  br i1 %cmp.n258, label %.loopexit.us, label %.lr.ph43.us.preheader

.lr.ph43.us.preheader:                            ; preds = %vector.memcheck197, %iter.check238, %vec.epilog.iter.check240, %vec.epilog.middle.block257
  %.014242.us.ph = phi i32 [ 0, %iter.check238 ], [ 0, %vector.memcheck197 ], [ %i.bg, %vec.epilog.iter.check240 ], [ %i.bj, %vec.epilog.middle.block257 ] ; 4 uses
  %.014341.us.ph = phi ptr [ %i.dq, %iter.check238 ], [ %i.dq, %vector.memcheck197 ], [ %i.ea, %vec.epilog.iter.check240 ], [ %i.ek, %vec.epilog.middle.block257 ] ; 3 uses
  %.014440.us.ph = phi ptr [ %i.dr, %iter.check238 ], [ %i.dr, %vector.memcheck197 ], [ %i.eb, %vec.epilog.iter.check240 ], [ %i.el, %vec.epilog.middle.block257 ] ; 3 uses
  %.014539.us.ph = phi ptr [ %i.ds, %iter.check238 ], [ %i.ds, %vector.memcheck197 ], [ %i.ec, %vec.epilog.iter.check240 ], [ %i.em, %vec.epilog.middle.block257 ] ; 3 uses
  %.238.us.ph = phi ptr [ %.1.us151, %iter.check238 ], [ %.1.us151, %vector.memcheck197 ], [ %i.ed, %vec.epilog.iter.check240 ], [ %i.en, %vec.epilog.middle.block257 ] ; 3 uses
  %.1037.us.ph = phi ptr [ %.9.us150, %iter.check238 ], [ %.9.us150, %vector.memcheck197 ], [ %i.ee, %vec.epilog.iter.check240 ], [ %i.eo, %vec.epilog.middle.block257 ] ; 6 uses
  %i.eu = sub i32 %4, %.014242.us.ph
  %.neg442 = add i32 %.014242.us.ph, 1
  %xtraiter425 = and i32 %i.eu, 1
  %lcmp.mod426.not = icmp eq i32 %xtraiter425, 0
  br i1 %lcmp.mod426.not, label %.lr.ph43.us.prol.loopexit, label %.lr.ph43.us.prol

.lr.ph43.us.prol:                                 ; preds = %.lr.ph43.us.preheader
  %i.ev = load i16, ptr %.238.us.ph, align 2, !tbaa !685
  store i16 %i.ev, ptr %.1037.us.ph, align 2, !tbaa !685
  %i.ew = load i16, ptr %.014539.us.ph, align 2, !tbaa !685
  %i.ex = getelementptr inbounds nuw i8, ptr %.1037.us.ph, i64 2
  store i16 %i.ew, ptr %i.ex, align 2, !tbaa !685
  %i.ey = load i16, ptr %.014440.us.ph, align 2, !tbaa !685
  %i.ez = getelementptr inbounds nuw i8, ptr %.1037.us.ph, i64 4
  store i16 %i.ey, ptr %i.ez, align 2, !tbaa !685
  %i.fa = load i16, ptr %.014341.us.ph, align 2, !tbaa !685
  %i.fb = getelementptr inbounds nuw i8, ptr %.1037.us.ph, i64 6
  store i16 %i.fa, ptr %i.fb, align 2, !tbaa !685
  %i.fc = getelementptr inbounds nuw i8, ptr %.1037.us.ph, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.238.us.ph, i64 2
  %i.fe = getelementptr inbounds nuw i8, ptr %.014539.us.ph, i64 2
  %i.ff = getelementptr inbounds nuw i8, ptr %.014440.us.ph, i64 2
  %i.fg = getelementptr inbounds nuw i8, ptr %.014341.us.ph, i64 2
  %i.fh = add nuw nsw i32 %.014242.us.ph, 1
  br label %.lr.ph43.us.prol.loopexit

.lr.ph43.us.prol.loopexit:                        ; preds = %.lr.ph43.us.prol, %.lr.ph43.us.preheader
  %.lcssa404.unr = phi ptr [ poison, %.lr.ph43.us.preheader ], [ %i.fc, %.lr.ph43.us.prol ]
  %.014242.us.unr = phi i32 [ %.014242.us.ph, %.lr.ph43.us.preheader ], [ %i.fh, %.lr.ph43.us.prol ]
  %.014341.us.unr = phi ptr [ %.014341.us.ph, %.lr.ph43.us.preheader ], [ %i.fg, %.lr.ph43.us.prol ]
  %.014440.us.unr = phi ptr [ %.014440.us.ph, %.lr.ph43.us.preheader ], [ %i.ff, %.lr.ph43.us.prol ]
  %.014539.us.unr = phi ptr [ %.014539.us.ph, %.lr.ph43.us.preheader ], [ %i.fe, %.lr.ph43.us.prol ]
  %.238.us.unr = phi ptr [ %.238.us.ph, %.lr.ph43.us.preheader ], [ %i.fd, %.lr.ph43.us.prol ]
  %.1037.us.unr = phi ptr [ %.1037.us.ph, %.lr.ph43.us.preheader ], [ %i.fc, %.lr.ph43.us.prol ]
  %i.fi = icmp eq i32 %4, %.neg442
  br i1 %i.fi, label %.loopexit.us, label %.lr.ph43.us

.lr.ph43.us:                                      ; preds = %.lr.ph43.us.prol.loopexit, %.lr.ph43.us
  %.014242.us = phi i32 [ %i.gh, %.lr.ph43.us ], [ %.014242.us.unr, %.lr.ph43.us.prol.loopexit ]
  %.014341.us = phi ptr [ %i.gg, %.lr.ph43.us ], [ %.014341.us.unr, %.lr.ph43.us.prol.loopexit ] ; 3 uses
  %.014440.us = phi ptr [ %i.gf, %.lr.ph43.us ], [ %.014440.us.unr, %.lr.ph43.us.prol.loopexit ] ; 3 uses
  %.014539.us = phi ptr [ %i.ge, %.lr.ph43.us ], [ %.014539.us.unr, %.lr.ph43.us.prol.loopexit ] ; 3 uses
  %.238.us = phi ptr [ %i.gd, %.lr.ph43.us ], [ %.238.us.unr, %.lr.ph43.us.prol.loopexit ] ; 3 uses
  %.1037.us = phi ptr [ %i.gc, %.lr.ph43.us ], [ %.1037.us.unr, %.lr.ph43.us.prol.loopexit ] ; 9 uses
  %i.fj = load i16, ptr %.238.us, align 2, !tbaa !685
  store i16 %i.fj, ptr %.1037.us, align 2, !tbaa !685
  %i.fk = load i16, ptr %.014539.us, align 2, !tbaa !685
  %i.fl = getelementptr inbounds nuw i8, ptr %.1037.us, i64 2
  store i16 %i.fk, ptr %i.fl, align 2, !tbaa !685
  %i.fm = load i16, ptr %.014440.us, align 2, !tbaa !685
  %i.fn = getelementptr inbounds nuw i8, ptr %.1037.us, i64 4
  store i16 %i.fm, ptr %i.fn, align 2, !tbaa !685
  %i.fo = load i16, ptr %.014341.us, align 2, !tbaa !685
  %i.fp = getelementptr inbounds nuw i8, ptr %.1037.us, i64 6
  store i16 %i.fo, ptr %i.fp, align 2, !tbaa !685
  %i.fq = getelementptr inbounds nuw i8, ptr %.1037.us, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %.238.us, i64 2
  %i.fs = getelementptr inbounds nuw i8, ptr %.014539.us, i64 2
  %i.ft = getelementptr inbounds nuw i8, ptr %.014440.us, i64 2
  %i.fu = getelementptr inbounds nuw i8, ptr %.014341.us, i64 2
  %i.fv = load i16, ptr %i.fr, align 2, !tbaa !685
  store i16 %i.fv, ptr %i.fq, align 2, !tbaa !685
  %i.fw = load i16, ptr %i.fs, align 2, !tbaa !685
  %i.fx = getelementptr inbounds nuw i8, ptr %.1037.us, i64 10
  store i16 %i.fw, ptr %i.fx, align 2, !tbaa !685
  %i.fy = load i16, ptr %i.ft, align 2, !tbaa !685
  %i.fz = getelementptr inbounds nuw i8, ptr %.1037.us, i64 12
  store i16 %i.fy, ptr %i.fz, align 2, !tbaa !685
  %i.ga = load i16, ptr %i.fu, align 2, !tbaa !685
  %i.gb = getelementptr inbounds nuw i8, ptr %.1037.us, i64 14
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !685
  %i.gc = getelementptr inbounds nuw i8, ptr %.1037.us, i64 16 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.238.us, i64 4
  %i.ge = getelementptr inbounds nuw i8, ptr %.014539.us, i64 4
  %i.gf = getelementptr inbounds nuw i8, ptr %.014440.us, i64 4
  %i.gg = getelementptr inbounds nuw i8, ptr %.014341.us, i64 4
  %i.gh = add nuw nsw i32 %.014242.us, 2          ; 2 uses
  %exitcond128.not.1 = icmp eq i32 %i.gh, %4
  br i1 %exitcond128.not.1, label %.loopexit.us, label %.lr.ph43.us, !llvm.loop !1125

.loopexit.us:                                     ; preds = %.lr.ph43.us.prol.loopexit, %.lr.ph43.us, %middle.block230, %vec.epilog.middle.block257, %.loopexit3.us
  %.10.lcssa.us = phi ptr [ %.745.us, %.loopexit3.us ], [ %i.eo, %vec.epilog.middle.block257 ], [ %i.ee, %middle.block230 ], [ %.lcssa404.unr, %.lr.ph43.us.prol.loopexit ], [ %i.gc, %.lr.ph43.us ] ; 2 uses
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 4 ; 3 uses
  %i.gi = icmp slt i64 %indvars.iv.next130, %invariant.op167
  %indvar.next268 = add i64 %indvar267, 1
  br i1 %i.gi, label %.lr.ph47.split.us, label %.preheader1.loopexit, !llvm.loop !1126

.lr.ph47.split:                                   ; preds = %.lr.ph47
  br i1 %i.ad, label %.lr.ph47.split.split.preheader, label %.lr.ph47.split.split.us

.lr.ph47.split.split.preheader:                   ; preds = %.lr.ph47.split
  %i.gj = add i32 %2, -4
  %i.gk = sub i32 %i.gj, %.0155.lcssa
  %i.gl = and i32 %i.gk, -4
  %i.gm = add nuw i32 %.0155.lcssa, %i.gl
  %i.gn = add nuw i32 %i.gm, 4
  br label %.preheader1

.lr.ph47.split.split.us:                          ; preds = %.lr.ph47.split
  br i1 %i.ae, label %.preheader2.us57.preheader, label %.preheader2.us57.us.preheader

.preheader2.us57.us.preheader:                    ; preds = %.lr.ph47.split.split.us
  %i.go = zext i32 %.0155.lcssa to i64            ; 2 uses
  %i.gp = sext i32 %1 to i64                      ; 2 uses
  %i.gq = sext i32 %2 to i64
  %invariant.op = add nsw i64 %i.gq, -3
  %i.gr = add nsw i64 %i.gp, %i.go
  %i.gs = mul i64 %i.k, %i.gr
  %i.gt = mul i64 %i.gs, -2
  %i.gu = shl nsw i64 %i.ac, 1
  %i.gv = sub i64 %i.gt, %i.gu
  %i.gw = mul i64 %i.k, -8
  %i.gx = zext nneg i32 %4 to i64                 ; 5 uses
  %min.iters.check = icmp ult i32 %4, 4
  %min.iters.check180 = icmp ult i32 %4, 16
  %i.gy = and i64 %i.gx, 12
  %n.vec = and i64 %i.gx, 2147483632              ; 5 uses
  %i.gz = trunc nuw nsw i64 %n.vec to i32
  %i.ha = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.gx
  %min.epilog.iters.check = icmp eq i64 %i.gy, 0
  %n.vec187 = and i64 %i.gx, 2147483644           ; 4 uses
  %i.hb = trunc nuw nsw i64 %n.vec187 to i32
  %i.hc = shl nuw nsw i64 %n.vec187, 3            ; 2 uses
  %cmp.n193 = icmp eq i64 %n.vec187, %i.gx
  br label %iter.check

.preheader2.us57.preheader:                       ; preds = %.lr.ph47.split.split.us
  %i.hd = add i32 %2, -4
  %i.he = sub i32 %i.hd, %.0155.lcssa
  %i.hf = and i32 %i.he, -4
  %i.hg = add nuw i32 %.0155.lcssa, %i.hf
  %i.hh = add nuw i32 %i.hg, 4
  br label %.preheader1

iter.check:                                       ; preds = %.preheader2.us57.us.preheader, %..loopexit3_crit_edge.us61.us
  %indvar = phi i64 [ 0, %.preheader2.us57.us.preheader ], [ %indvar.next, %..loopexit3_crit_edge.us61.us ] ; 2 uses
  %indvars.iv124 = phi i64 [ %i.go, %.preheader2.us57.us.preheader ], [ %indvars.iv.next125, %..loopexit3_crit_edge.us61.us ] ; 2 uses
  %.745.us52.us = phi ptr [ %.0159.lcssa, %.preheader2.us57.us.preheader ], [ %.lcssa175, %..loopexit3_crit_edge.us61.us ] ; 7 uses
  %i.hi = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.hj = add nsw i64 %indvars.iv124, %i.gp
  %i.hk = mul i64 %i.k, %i.hj
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %i.hk
  %i.hm = getelementptr inbounds [2 x i8], ptr %i.hl, i64 %i.ac ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.hn = ptrtoaddr ptr %i.hi to i64
  %i.ho = mul i64 %i.gw, %indvar
  %i.hp = add i64 %i.gv, %i.ho
  %.745.us52.us179 = ptrtoaddr ptr %.745.us52.us to i64
  %i.hq = add i64 %i.hp, %.745.us52.us179
  %i.hr = sub i64 %i.hn, %i.hq
  %diff.check = icmp ugt i64 %i.hr, -128
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check180, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hs = getelementptr i8, ptr %i.hm, i64 %i.ha
  %i.ht = getelementptr i8, ptr %.745.us52.us, i64 %i.ha ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.hm, i64 %i.hu ; 4 uses
  %next.gep181 = getelementptr i8, ptr %.745.us52.us, i64 %i.hu ; 4 uses
  %i.hv = getelementptr i8, ptr %next.gep, i64 32
  %i.hw = getelementptr i8, ptr %next.gep, i64 64
  %i.hx = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep, align 1, !tbaa !116
  %wide.load182 = load <4 x i64>, ptr %i.hv, align 1, !tbaa !116
  %wide.load183 = load <4 x i64>, ptr %i.hw, align 1, !tbaa !116
  %wide.load184 = load <4 x i64>, ptr %i.hx, align 1, !tbaa !116
  %i.hy = getelementptr i8, ptr %next.gep181, i64 32
  %i.hz = getelementptr i8, ptr %next.gep181, i64 64
  %i.ia = getelementptr i8, ptr %next.gep181, i64 96
  store <4 x i64> %wide.load, ptr %next.gep181, align 1, !tbaa !116
  store <4 x i64> %wide.load182, ptr %i.hy, align 1, !tbaa !116
  store <4 x i64> %wide.load183, ptr %i.hz, align 1, !tbaa !116
  store <4 x i64> %wide.load184, ptr %i.ia, align 1, !tbaa !116
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ib = icmp eq i64 %index.next, %n.vec
  br i1 %i.ib, label %middle.block, label %vector.body, !llvm.loop !1127

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit3_crit_edge.us61.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !564

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ic = getelementptr i8, ptr %i.hm, i64 %i.hc
  %i.id = getelementptr i8, ptr %.745.us52.us, i64 %i.hc ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index188 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next192, %vec.epilog.vector.body ] ; 2 uses
  %i.ie = shl i64 %index188, 3                    ; 2 uses
  %next.gep189 = getelementptr i8, ptr %i.hm, i64 %i.ie
  %next.gep190 = getelementptr i8, ptr %.745.us52.us, i64 %i.ie
  %wide.load191 = load <4 x i64>, ptr %next.gep189, align 1, !tbaa !116
  store <4 x i64> %wide.load191, ptr %next.gep190, align 1, !tbaa !116
  %index.next192 = add nuw i64 %index188, 4       ; 2 uses
  %i.if = icmp eq i64 %index.next192, %n.vec187
  br i1 %i.if, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1128

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n193, label %..loopexit3_crit_edge.us61.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.014633.us53.us.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.gz, %vec.epilog.iter.check ], [ %i.hb, %vec.epilog.middle.block ] ; 4 uses
  %.014732.us54.us.ph = phi ptr [ %i.hm, %iter.check ], [ %i.hm, %vector.memcheck ], [ %i.hs, %vec.epilog.iter.check ], [ %i.ic, %vec.epilog.middle.block ] ; 2 uses
  %.831.us55.us.ph = phi ptr [ %.745.us52.us, %iter.check ], [ %.745.us52.us, %vector.memcheck ], [ %i.ht, %vec.epilog.iter.check ], [ %i.id, %vec.epilog.middle.block ] ; 2 uses
  %i.ig = sub i32 %4, %.014633.us53.us.ph
  %xtraiter420 = and i32 %i.ig, 7                 ; 2 uses
  %lcmp.mod421.not = icmp eq i32 %xtraiter420, 0
  br i1 %lcmp.mod421.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.014633.us53.us.prol = phi i32 [ %i.ik, %vec.epilog.scalar.ph.prol ], [ %.014633.us53.us.ph, %vec.epilog.scalar.ph.preheader ]
  %.014732.us54.us.prol = phi ptr [ %i.ij, %vec.epilog.scalar.ph.prol ], [ %.014732.us54.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.831.us55.us.prol = phi ptr [ %i.ii, %vec.epilog.scalar.ph.prol ], [ %.831.us55.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ih = load i64, ptr %.014732.us54.us.prol, align 1, !tbaa !116
  store i64 %i.ih, ptr %.831.us55.us.prol, align 1, !tbaa !116
  %i.ii = getelementptr inbounds nuw i8, ptr %.831.us55.us.prol, i64 8 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.014732.us54.us.prol, i64 8 ; 2 uses
  %i.ik = add nuw nsw i32 %.014633.us53.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter420
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1129

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa405.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ii, %vec.epilog.scalar.ph.prol ]
  %.014633.us53.us.unr = phi i32 [ %.014633.us53.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ik, %vec.epilog.scalar.ph.prol ]
  %.014732.us54.us.unr = phi ptr [ %.014732.us54.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ij, %vec.epilog.scalar.ph.prol ]
  %.831.us55.us.unr = phi ptr [ %.831.us55.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ii, %vec.epilog.scalar.ph.prol ]
  %i.il = sub i32 %.014633.us53.us.ph, %4
  %i.im = icmp ugt i32 %i.il, -8
  br i1 %i.im, label %..loopexit3_crit_edge.us61.us, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.014633.us53.us = phi i32 [ %i.jl, %vec.epilog.scalar.ph ], [ %.014633.us53.us.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.014732.us54.us = phi ptr [ %i.jk, %vec.epilog.scalar.ph ], [ %.014732.us54.us.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.831.us55.us = phi ptr [ %i.jj, %vec.epilog.scalar.ph ], [ %.831.us55.us.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.in = load i64, ptr %.014732.us54.us, align 1, !tbaa !116
  store i64 %i.in, ptr %.831.us55.us, align 1, !tbaa !116
  %i.io = getelementptr inbounds nuw i8, ptr %.831.us55.us, i64 8
  %i.ip = getelementptr inbounds nuw i8, ptr %.014732.us54.us, i64 8
  %i.iq = load i64, ptr %i.ip, align 1, !tbaa !116
  store i64 %i.iq, ptr %i.io, align 1, !tbaa !116
  %i.ir = getelementptr inbounds nuw i8, ptr %.831.us55.us, i64 16
  %i.is = getelementptr inbounds nuw i8, ptr %.014732.us54.us, i64 16
  %i.it = load i64, ptr %i.is, align 1, !tbaa !116
  store i64 %i.it, ptr %i.ir, align 1, !tbaa !116
  %i.iu = getelementptr inbounds nuw i8, ptr %.831.us55.us, i64 24
  %i.iv = getelementptr inbounds nuw i8, ptr %.014732.us54.us, i64 24
  %i.iw = load i64, ptr %i.iv, align 1, !tbaa !116
  store i64 %i.iw, ptr %i.iu, align 1, !tbaa !116
  %i.ix = getelementptr inbounds nuw i8, ptr %.831.us55.us, i64 32
  %i.iy = getelementptr inbounds nuw i8, ptr %.014732.us54.us, i64 32
  %i.iz = load i64, ptr %i.iy, align 1, !tbaa !116
  store i64 %i.iz, ptr %i.ix, align 1, !tbaa !116
  %i.ja = getelementptr inbounds nuw i8, ptr %.831.us55.us, i64 40
  %i.jb = getelementptr inbounds nuw i8, ptr %.014732.us54.us, i64 40
  %i.jc = load i64, ptr %i.jb, align 1, !tbaa !116
  store i64 %i.jc, ptr %i.ja, align 1, !tbaa !116
  %i.jd = getelementptr inbounds nuw i8, ptr %.831.us55.us, i64 48
  %i.je = getelementptr inbounds nuw i8, ptr %.014732.us54.us, i64 48
  %i.jf = load i64, ptr %i.je, align 1, !tbaa !116
  store i64 %i.jf, ptr %i.jd, align 1, !tbaa !116
  %i.jg = getelementptr inbounds nuw i8, ptr %.831.us55.us, i64 56
  %i.jh = getelementptr inbounds nuw i8, ptr %.014732.us54.us, i64 56
  %i.ji = load i64, ptr %i.jh, align 1, !tbaa !116
  store i64 %i.ji, ptr %i.jg, align 1, !tbaa !116
  %i.jj = getelementptr inbounds nuw i8, ptr %.831.us55.us, i64 64 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.014732.us54.us, i64 64
  %i.jl = add nuw nsw i32 %.014633.us53.us, 8     ; 2 uses
  %exitcond123.not.7 = icmp eq i32 %i.jl, %4
  br i1 %exitcond123.not.7, label %..loopexit3_crit_edge.us61.us, label %vec.epilog.scalar.ph, !llvm.loop !1130

..loopexit3_crit_edge.us61.us:                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa175 = phi ptr [ %i.id, %vec.epilog.middle.block ], [ %i.ht, %middle.block ], [ %.lcssa405.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.jj, %vec.epilog.scalar.ph ] ; 2 uses
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 4 ; 3 uses
  %i.jm = icmp slt i64 %indvars.iv.next125, %invariant.op
  %indvar.next = add i64 %indvar, 1
  br i1 %i.jm, label %iter.check, label %.preheader1.loopexit102, !llvm.loop !1126

bb.b:                                             ; preds = %.lr.ph28, %.loopexit6
  %indvars.iv = phi i64 [ 0, %.lr.ph28 ], [ %indvars.iv.next, %.loopexit6 ] ; 2 uses
  %.015926 = phi ptr [ %.0.val, %.lr.ph28 ], [ %.6, %.loopexit6 ] ; 7 uses
  %i.jn = load ptr, ptr %0, align 8, !tbaa !18
  %i.jo = add nsw i64 %indvars.iv, %i.u
  %i.jp = mul i64 %i.k, %i.jo
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %i.jn, i64 %i.jp
  %i.jr = getelementptr inbounds [2 x i8], ptr %i.jq, i64 %i.n ; 6 uses
  br i1 %brmerge95, label %.loopexit9, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  br i1 %i.w, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.015211 = phi ptr [ %i.kp, %.lr.ph ], [ %i.jr, %.lr.ph.preheader ] ; 9 uses
  %.116010 = phi ptr [ %i.ko, %.lr.ph ], [ %.015926, %.lr.ph.preheader ] ; 9 uses
  %niter = phi i32 [ %niter.next.7, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.js = load <2 x i64>, ptr %.015211, align 1, !tbaa !116
  store <2 x i64> %i.js, ptr %.116010, align 1, !tbaa !116
  %i.jt = getelementptr inbounds nuw i8, ptr %.116010, i64 16
  %i.ju = getelementptr inbounds nuw i8, ptr %.015211, i64 16
  %i.jv = load <2 x i64>, ptr %i.ju, align 1, !tbaa !116
  store <2 x i64> %i.jv, ptr %i.jt, align 1, !tbaa !116
  %i.jw = getelementptr inbounds nuw i8, ptr %.116010, i64 32
  %i.jx = getelementptr inbounds nuw i8, ptr %.015211, i64 32
  %i.jy = load <2 x i64>, ptr %i.jx, align 1, !tbaa !116
  store <2 x i64> %i.jy, ptr %i.jw, align 1, !tbaa !116
  %i.jz = getelementptr inbounds nuw i8, ptr %.116010, i64 48
  %i.ka = getelementptr inbounds nuw i8, ptr %.015211, i64 48
  %i.kb = load <2 x i64>, ptr %i.ka, align 1, !tbaa !116
  store <2 x i64> %i.kb, ptr %i.jz, align 1, !tbaa !116
  %i.kc = getelementptr inbounds nuw i8, ptr %.116010, i64 64
  %i.kd = getelementptr inbounds nuw i8, ptr %.015211, i64 64
  %i.ke = load <2 x i64>, ptr %i.kd, align 1, !tbaa !116
  store <2 x i64> %i.ke, ptr %i.kc, align 1, !tbaa !116
  %i.kf = getelementptr inbounds nuw i8, ptr %.116010, i64 80
  %i.kg = getelementptr inbounds nuw i8, ptr %.015211, i64 80
  %i.kh = load <2 x i64>, ptr %i.kg, align 1, !tbaa !116
  store <2 x i64> %i.kh, ptr %i.kf, align 1, !tbaa !116
  %i.ki = getelementptr inbounds nuw i8, ptr %.116010, i64 96
  %i.kj = getelementptr inbounds nuw i8, ptr %.015211, i64 96
end_hunk_10
begin_hunk_11_@_ZN4ncnnL29gemm_transB_packed_tile_bf16sERKNS_3MatES2_RS0_iiiiii:bb.a

.lr.ph353:                                        ; preds = %.preheader307, %._crit_edge344
  %.2458352 = phi ptr [ %i.fl, %._crit_edge344 ], [ %.1457.lcssa, %.preheader307 ] ; 9 uses
  %.2466351 = phi ptr [ %.3467.lcssa, %._crit_edge344 ], [ %.0464.lcssa, %.preheader307 ] ; 3 uses
  %.1473350 = phi i32 [ %i.fm, %._crit_edge344 ], [ %.0472.lcssa, %.preheader307 ]
  br i1 %.not594, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph353
  %i.ec = load <8 x float>, ptr %.2458352, align 32, !tbaa !116
  %i.ed = getelementptr inbounds nuw i8, ptr %.2458352, i64 32
  %i.ee = load <8 x float>, ptr %i.ed, align 32, !tbaa !116
  %i.ef = getelementptr inbounds nuw i8, ptr %.2458352, i64 64
  %i.eg = load <8 x float>, ptr %i.ef, align 32, !tbaa !116
  %i.eh = getelementptr inbounds nuw i8, ptr %.2458352, i64 96
  %i.ei = load <8 x float>, ptr %i.eh, align 32, !tbaa !116
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph353
  %.0241 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph353 ], [ %i.ei, %bb.e ] ; 2 uses
  %.0239 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph353 ], [ %i.eg, %bb.e ] ; 2 uses
  %.0237 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph353 ], [ %i.ee, %bb.e ] ; 2 uses
  %.0235 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph353 ], [ %i.ec, %bb.e ] ; 2 uses
  br i1 %i.c, label %.lr.ph343, label %._crit_edge344

.lr.ph343:                                        ; preds = %bb.f, %.lr.ph343
  %.3467341 = phi ptr [ %i.ff, %.lr.ph343 ], [ %.2466351, %bb.f ] ; 2 uses
  %.0524340 = phi ptr [ %i.fe, %.lr.ph343 ], [ %.0454410, %bb.f ] ; 2 uses
  %.0525339 = phi i32 [ %i.fg, %.lr.ph343 ], [ 0, %bb.f ]
  %.1236338 = phi <8 x float> [ %i.ex, %.lr.ph343 ], [ %.0235, %bb.f ]
  %.1238337 = phi <8 x float> [ %i.ez, %.lr.ph343 ], [ %.0237, %bb.f ]
  %.1240336 = phi <8 x float> [ %i.fb, %.lr.ph343 ], [ %.0239, %bb.f ]
  %.1242335 = phi <8 x float> [ %i.fd, %.lr.ph343 ], [ %.0241, %bb.f ]
  %i.ej = load <8 x i16>, ptr %.0524340, align 1, !tbaa !116 ; 2 uses
  %i.ek = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ej, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.el = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ej, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.em = shufflevector <8 x i16> %i.ek, <8 x i16> %i.el, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.en = bitcast <16 x i16> %i.em to <8 x float> ; 3 uses
  %i.eo = load i64, ptr %.3467341, align 1, !tbaa !116
  %i.ep = insertelement <2 x i64> poison, i64 %i.eo, i64 0
  %i.eq = bitcast <2 x i64> %i.ep to <8 x i16>
  %i.er = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.es = bitcast <8 x i16> %i.er to <4 x float>  ; 2 uses
  %i.et = shufflevector <4 x float> %i.es, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.eu = shufflevector <8 x float> %i.en, <8 x float> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.ev = shufflevector <4 x float> %i.es, <4 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.ew = fmul fast <8 x float> %i.et, %i.en
  %i.ex = fadd fast <8 x float> %i.ew, %.1236338  ; 2 uses
  %i.ey = fmul fast <8 x float> %i.ev, %i.en
  %i.ez = fadd fast <8 x float> %i.ey, %.1238337  ; 2 uses
  %i.fa = fmul fast <8 x float> %i.eu, %i.et
  %i.fb = fadd fast <8 x float> %i.fa, %.1240336  ; 2 uses
  %i.fc = fmul fast <8 x float> %i.eu, %i.ev
  %i.fd = fadd fast <8 x float> %i.fc, %.1242335  ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0524340, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %.3467341, i64 8
  %i.fg = add nuw nsw i32 %.0525339, 1            ; 2 uses
  %exitcond906.not = icmp eq i32 %i.fg, %3
  br i1 %exitcond906.not, label %._crit_edge344.loopexit, label %.lr.ph343, !llvm.loop !1190

._crit_edge344.loopexit:                          ; preds = %.lr.ph343
  %i.fh = getelementptr i8, ptr %.2466351, i64 %i.j
  %scevgep905 = getelementptr i8, ptr %i.fh, i64 8
  br label %._crit_edge344

._crit_edge344:                                   ; preds = %._crit_edge344.loopexit, %bb.f
  %.1242.lcssa = phi <8 x float> [ %.0241, %bb.f ], [ %i.fd, %._crit_edge344.loopexit ]
  %.1240.lcssa = phi <8 x float> [ %.0239, %bb.f ], [ %i.fb, %._crit_edge344.loopexit ]
  %.1238.lcssa = phi <8 x float> [ %.0237, %bb.f ], [ %i.ez, %._crit_edge344.loopexit ]
  %.1236.lcssa = phi <8 x float> [ %.0235, %bb.f ], [ %i.ex, %._crit_edge344.loopexit ]
  %.3467.lcssa = phi ptr [ %.2466351, %bb.f ], [ %scevgep905, %._crit_edge344.loopexit ] ; 2 uses
  store <8 x float> %.1236.lcssa, ptr %.2458352, align 32, !tbaa !116
  %i.fi = getelementptr inbounds nuw i8, ptr %.2458352, i64 32
  store <8 x float> %.1238.lcssa, ptr %i.fi, align 32, !tbaa !116
  %i.fj = getelementptr inbounds nuw i8, ptr %.2458352, i64 64
  store <8 x float> %.1240.lcssa, ptr %i.fj, align 32, !tbaa !116
  %i.fk = getelementptr inbounds nuw i8, ptr %.2458352, i64 96
  store <8 x float> %.1242.lcssa, ptr %i.fk, align 32, !tbaa !116
  %i.fl = getelementptr inbounds nuw i8, ptr %.2458352, i64 128 ; 2 uses
  %i.fm = add nuw nsw i32 %.1473350, 4            ; 3 uses
  %i.fn = or disjoint i32 %i.fm, 3
  %i.fo = icmp slt i32 %i.fn, %1
  br i1 %i.fo, label %.lr.ph353, label %.preheader306, !llvm.loop !1191

.preheader305:                                    ; preds = %.lr.ph371.split.split, %._crit_edge364.us, %.lr.ph371.split.split.us.preheader, %.preheader306
  %.2474.lcssa = phi i32 [ %.1473.lcssa, %.preheader306 ], [ %i.eb, %.lr.ph371.split.split.us.preheader ], [ %i.dp, %._crit_edge364.us ], [ %i.gs, %.lr.ph371.split.split ] ; 4 uses
  %.4468.lcssa = phi ptr [ %.2466.lcssa, %.preheader306 ], [ %.2466.lcssa, %.lr.ph371.split.split.us.preheader ], [ %scevgep910, %._crit_edge364.us ], [ %.2466.lcssa, %.lr.ph371.split.split ]
  %.3459.lcssa = phi ptr [ %.2458.lcssa, %.preheader306 ], [ %scevgep909, %.lr.ph371.split.split.us.preheader ], [ %i.do, %._crit_edge364.us ], [ %i.gr, %.lr.ph371.split.split ] ; 5 uses
  %i.fp = icmp slt i32 %.2474.lcssa, %1
  br i1 %i.fp, label %.lr.ph399, label %._crit_edge400

.lr.ph399:                                        ; preds = %.preheader305
  br i1 %i.c, label %.lr.ph399.split.us, label %.lr.ph399.split

.lr.ph399.split.us:                               ; preds = %.lr.ph399, %._crit_edge393.us
  %.4398.us = phi ptr [ %i.gi, %._crit_edge393.us ], [ %.3459.lcssa, %.lr.ph399 ] ; 3 uses
  %.6470397.us = phi ptr [ %scevgep916, %._crit_edge393.us ], [ %.4468.lcssa, %.lr.ph399 ] ; 2 uses
  %.3475396.us = phi i32 [ %i.gj, %._crit_edge393.us ], [ %.2474.lcssa, %.lr.ph399 ]
  br i1 %.not594, label %.lr.ph392.us.preheader, label %bb.g

bb.g:                                             ; preds = %.lr.ph399.split.us
  %i.fq = load <8 x float>, ptr %.4398.us, align 32, !tbaa !116
  br label %.lr.ph392.us.preheader

.lr.ph392.us.preheader:                           ; preds = %bb.g, %.lr.ph399.split.us
  %.1248387.us.ph = phi <8 x float> [ zeroinitializer, %.lr.ph399.split.us ], [ %i.fq, %bb.g ]
  br label %.lr.ph392.us

.lr.ph392.us:                                     ; preds = %.lr.ph392.us.preheader, %.lr.ph392.us
  %.7471390.us = phi ptr [ %i.gf, %.lr.ph392.us ], [ %.6470397.us, %.lr.ph392.us.preheader ] ; 2 uses
  %.0572389.us = phi i32 [ %i.gg, %.lr.ph392.us ], [ 0, %.lr.ph392.us.preheader ]
  %.0573388.us = phi ptr [ %i.ge, %.lr.ph392.us ], [ %.0454410, %.lr.ph392.us.preheader ] ; 2 uses
  %.1248387.us = phi <8 x float> [ %i.gd, %.lr.ph392.us ], [ %.1248387.us.ph, %.lr.ph392.us.preheader ]
  %i.fr = load <8 x i16>, ptr %.0573388.us, align 1, !tbaa !116 ; 2 uses
  %i.fs = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ft = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.fr, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fu = shufflevector <8 x i16> %i.fs, <8 x i16> %i.ft, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fv = bitcast <16 x i16> %i.fu to <8 x float>
  %i.fw = load i16, ptr %.7471390.us, align 2, !tbaa !685
  %i.fx = zext i16 %i.fw to i32
  %i.fy = shl nuw i32 %i.fx, 16
  %i.fz = insertelement <8 x i32> poison, i32 %i.fy, i64 0
  %i.ga = bitcast <8 x i32> %i.fz to <8 x float>
  %i.gb = shufflevector <8 x float> %i.ga, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gc = fmul fast <8 x float> %i.gb, %i.fv
  %i.gd = fadd fast <8 x float> %i.gc, %.1248387.us ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.0573388.us, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %.7471390.us, i64 2
  %i.gg = add nuw nsw i32 %.0572389.us, 1         ; 2 uses
  %exitcond917.not = icmp eq i32 %i.gg, %3
  br i1 %exitcond917.not, label %._crit_edge393.us, label %.lr.ph392.us, !llvm.loop !1192

._crit_edge393.us:                                ; preds = %.lr.ph392.us
  %i.gh = getelementptr i8, ptr %.6470397.us, i64 %i.m
  %scevgep916 = getelementptr i8, ptr %i.gh, i64 2
  store <8 x float> %i.gd, ptr %.4398.us, align 32, !tbaa !116
  %i.gi = getelementptr inbounds nuw i8, ptr %.4398.us, i64 32 ; 2 uses
  %i.gj = add nuw nsw i32 %.3475396.us, 1         ; 2 uses
  %exitcond918.not = icmp eq i32 %i.gj, %1
  br i1 %exitcond918.not, label %._crit_edge400, label %.lr.ph399.split.us, !llvm.loop !1193

.lr.ph399.split:                                  ; preds = %.lr.ph399
  br i1 %.not594, label %.lr.ph399.split.split.us.preheader, label %.lr.ph399.split.split.preheader

.lr.ph399.split.split.preheader:                  ; preds = %.lr.ph399.split
  %scevgep912 = getelementptr i8, ptr %.3459.lcssa, i64 32
  %i.gk = sub i32 %i.l, %.2474.lcssa
  %i.gl = zext i32 %i.gk to i64
  %i.gm = shl nuw nsw i64 %i.gl, 5
  %scevgep913 = getelementptr i8, ptr %scevgep912, i64 %i.gm
  br label %._crit_edge400

.lr.ph399.split.split.us.preheader:               ; preds = %.lr.ph399.split
  %i.gn = sub i32 %i.l, %.2474.lcssa
  %i.go = zext i32 %i.gn to i64
  %i.gp = shl nuw nsw i64 %i.go, 5                ; 2 uses
  %i.gq = add nuw nsw i64 %i.gp, 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(1) %.3459.lcssa, i8 0, i64 %i.gq, i1 false), !tbaa !116
  %scevgep914 = getelementptr i8, ptr %.3459.lcssa, i64 32
  %scevgep915 = getelementptr i8, ptr %scevgep914, i64 %i.gp
  br label %._crit_edge400

.lr.ph371.split.split:                            ; preds = %.lr.ph371.split, %.lr.ph371.split.split
  %.3459370 = phi ptr [ %i.gr, %.lr.ph371.split.split ], [ %.2458.lcssa, %.lr.ph371.split ]
  %.2474368 = phi i32 [ %i.gs, %.lr.ph371.split.split ], [ %.1473.lcssa, %.lr.ph371.split ]
  %i.gr = getelementptr inbounds nuw i8, ptr %.3459370, i64 64 ; 2 uses
  %i.gs = add nuw nsw i32 %.2474368, 2            ; 3 uses
  %i.gt = or disjoint i32 %i.gs, 1
  %i.gu = icmp slt i32 %i.gt, %1
  br i1 %i.gu, label %.lr.ph371.split.split, label %.preheader305, !llvm.loop !1189

._crit_edge400:                                   ; preds = %._crit_edge393.us, %.lr.ph399.split.split.preheader, %.lr.ph399.split.split.us.preheader, %.preheader305
  %.4.lcssa = phi ptr [ %.3459.lcssa, %.preheader305 ], [ %scevgep915, %.lr.ph399.split.split.us.preheader ], [ %scevgep913, %.lr.ph399.split.split.preheader ], [ %i.gi, %._crit_edge393.us ] ; 2 uses
  %i.gv = getelementptr inbounds [2 x i8], ptr %.0454410, i64 %i.e ; 2 uses
  %i.gw = add nuw nsw i32 %.0460408, 8            ; 2 uses
  %i.gx = or disjoint i32 %i.gw, 7
  %i.gy = icmp slt i32 %i.gx, %0
  br i1 %i.gy, label %.preheader308, label %.preheader304.loopexit, !llvm.loop !1194

.preheader303:                                    ; preds = %.preheader303.lr.ph, %._crit_edge503
  %.1455513 = phi ptr [ %.0454.lcssa, %.preheader303.lr.ph ], [ %i.oy, %._crit_edge503 ] ; 6 uses
  %.5512 = phi ptr [ %.0456.lcssa, %.preheader303.lr.ph ], [ %.9.lcssa, %._crit_edge503 ] ; 2 uses
  %.1461511 = phi i32 [ %.0460.lcssa, %.preheader303.lr.ph ], [ %i.oz, %._crit_edge503 ]
  br i1 %i.q, label %.lr.ph433, label %.preheader302

.preheader299:                                    ; preds = %._crit_edge503, %.preheader304
  %.1461.lcssa = phi i32 [ %.0460.lcssa, %.preheader304 ], [ %i.oz, %._crit_edge503 ] ; 3 uses
  %.5.lcssa = phi ptr [ %.0456.lcssa, %.preheader304 ], [ %.9.lcssa, %._crit_edge503 ] ; 2 uses
  %.1455.lcssa = phi ptr [ %.0454.lcssa, %.preheader304 ], [ %i.oy, %._crit_edge503 ] ; 2 uses
  %i.gz = or disjoint i32 %.1461.lcssa, 1
  %i.ha = icmp slt i32 %i.gz, %0
  br i1 %i.ha, label %.preheader298.lr.ph, label %.preheader294

.preheader298.lr.ph:                              ; preds = %.preheader299
  %i.hb = icmp sgt i32 %1, 7
  %.not586 = icmp eq i32 %2, 0                    ; 5 uses
  %i.hc = icmp sgt i32 %3, 0                      ; 4 uses
  %i.hd = shl nsw i32 %3, 1
  %i.he = sext i32 %i.hd to i64
  %i.hf = add i32 %1, -8                          ; 2 uses
  %i.hg = and i32 %i.hf, -8
  %i.hh = add nuw nsw i32 %i.hg, 8                ; 4 uses
  %i.hi = lshr i32 %i.hf, 3
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = shl nuw nsw i64 %i.hj, 6
  %i.hl = add nuw nsw i64 %i.hk, 64               ; 2 uses
  %i.hm = add i32 %3, -1
  %i.hn = zext i32 %i.hm to i64                   ; 4 uses
  %i.ho = shl nuw nsw i64 %i.hn, 4
  %i.hp = shl nuw nsw i64 %i.hn, 3
  %i.hq = shl nuw nsw i64 %i.hn, 2
  %i.hr = shl nuw nsw i64 %i.hn, 1
  %i.hs = add i32 %1, -8                          ; 2 uses
  %i.ht = lshr i32 %i.hs, 3
  %i.hu = add nuw nsw i32 %i.ht, 1                ; 2 uses
  %xtraiter449 = and i32 %i.hu, 7                 ; 3 uses
  %i.hv = icmp ult i32 %i.hs, 56
  %unroll_iter453 = and i32 %i.hu, 1073741816
  %lcmp.mod450.not = icmp eq i32 %xtraiter449, 0
  %lcmp.mod452 = icmp ne i32 %xtraiter449, 0
  %i.hw = zext nneg i32 %3 to i64                 ; 2 uses
  %min.iters.check122 = icmp ult i32 %3, 4
  %n.vec124 = and i64 %i.hw, 2147483644           ; 4 uses
  %i.hx = trunc nuw nsw i64 %n.vec124 to i32
  %i.hy = shl nuw nsw i64 %n.vec124, 2            ; 2 uses
  %cmp.n141 = icmp eq i64 %n.vec124, %i.hw
  %i.hz = zext nneg i32 %3 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %3, 8
  %n.vec = and i64 %i.hz, 2147483640              ; 5 uses
  %i.ia = trunc nuw nsw i64 %n.vec to i32
  %i.ib = shl nuw nsw i64 %n.vec, 2
  %i.ic = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.hz
  br label %.preheader298

.preheader302:                                    ; preds = %._crit_edge424, %.preheader303
  %.0564.lcssa = phi ptr [ %.0.val1, %.preheader303 ], [ %.1565.lcssa, %._crit_edge424 ] ; 2 uses
  %.0560.lcssa = phi i32 [ 0, %.preheader303 ], [ %i.x, %._crit_edge424 ] ; 3 uses
  %.6.lcssa = phi ptr [ %.5512, %.preheader303 ], [ %i.jo, %._crit_edge424 ] ; 2 uses
  %i.id = or disjoint i32 %.0560.lcssa, 3
  %i.ie = icmp slt i32 %i.id, %1
  br i1 %i.ie, label %.lr.ph455, label %.preheader301

.lr.ph433:                                        ; preds = %.preheader303, %._crit_edge424
  %.6432 = phi ptr [ %i.jo, %._crit_edge424 ], [ %.5512, %.preheader303 ] ; 9 uses
  %.0560431 = phi i32 [ %i.jp, %._crit_edge424 ], [ 0, %.preheader303 ]
  %.0564430 = phi ptr [ %.1565.lcssa, %._crit_edge424 ], [ %.0.val1, %.preheader303 ] ; 3 uses
  br i1 %.not590, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph433
  %i.if = load <8 x float>, ptr %.6432, align 32, !tbaa !116
  %i.ig = getelementptr inbounds nuw i8, ptr %.6432, i64 32
  %i.ih = load <8 x float>, ptr %i.ig, align 32, !tbaa !116
  %i.ii = getelementptr inbounds nuw i8, ptr %.6432, i64 64
  %i.ij = load <8 x float>, ptr %i.ii, align 32, !tbaa !116
  %i.ik = getelementptr inbounds nuw i8, ptr %.6432, i64 96
  %i.il = load <8 x float>, ptr %i.ik, align 32, !tbaa !116
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph433
  %.0261 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph433 ], [ %i.il, %bb.h ] ; 2 uses
  %.0259 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph433 ], [ %i.ij, %bb.h ] ; 2 uses
  %.0257 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph433 ], [ %i.ih, %bb.h ] ; 2 uses
  %.0255 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph433 ], [ %i.if, %bb.h ] ; 2 uses
  br i1 %i.r, label %.lr.ph423, label %._crit_edge424

.lr.ph423:                                        ; preds = %bb.i, %.lr.ph423
  %.0558421 = phi i32 [ %i.jj, %.lr.ph423 ], [ 0, %bb.i ]
  %.0559420 = phi ptr [ %i.jh, %.lr.ph423 ], [ %.1455513, %bb.i ] ; 2 uses
  %.1565419 = phi ptr [ %i.ji, %.lr.ph423 ], [ %.0564430, %bb.i ] ; 2 uses
  %.1256418 = phi <8 x float> [ %i.ja, %.lr.ph423 ], [ %.0255, %bb.i ]
  %.1258417 = phi <8 x float> [ %i.jc, %.lr.ph423 ], [ %.0257, %bb.i ]
  %.1260416 = phi <8 x float> [ %i.je, %.lr.ph423 ], [ %.0259, %bb.i ]
  %.1262415 = phi <8 x float> [ %i.jg, %.lr.ph423 ], [ %.0261, %bb.i ]
  %i.im = load i64, ptr %.0559420, align 1, !tbaa !116
  %i.in = insertelement <2 x i64> poison, i64 %i.im, i64 0
  %i.io = bitcast <2 x i64> %i.in to <8 x i16>
  %i.ip = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.io, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.iq = bitcast <8 x i16> %i.ip to <4 x float>  ; 2 uses
  %i.ir = shufflevector <4 x float> %i.iq, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.is = load <8 x i16>, ptr %.1565419, align 1, !tbaa !116 ; 2 uses
  %i.it = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.is, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.iu = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.is, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.iv = shufflevector <8 x i16> %i.it, <8 x i16> %i.iu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.iw = bitcast <16 x i16> %i.iv to <8 x float> ; 3 uses
  %i.ix = shufflevector <4 x float> %i.iq, <4 x float> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.iy = shufflevector <8 x float> %i.iw, <8 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.iz = fmul fast <8 x float> %i.ir, %i.iw
  %i.ja = fadd fast <8 x float> %i.iz, %.1256418  ; 2 uses
  %i.jb = fmul fast <8 x float> %i.ix, %i.iw
  %i.jc = fadd fast <8 x float> %i.jb, %.1258417  ; 2 uses
  %i.jd = fmul fast <8 x float> %i.iy, %i.ir
  %i.je = fadd fast <8 x float> %i.jd, %.1260416  ; 2 uses
  %i.jf = fmul fast <8 x float> %i.iy, %i.ix
  %i.jg = fadd fast <8 x float> %i.jf, %.1262415  ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.0559420, i64 8
  %i.ji = getelementptr inbounds nuw i8, ptr %.1565419, i64 16
  %i.jj = add nuw nsw i32 %.0558421, 1            ; 2 uses
  %exitcond920.not = icmp eq i32 %i.jj, %3
  br i1 %exitcond920.not, label %._crit_edge424.loopexit, label %.lr.ph423, !llvm.loop !1195

._crit_edge424.loopexit:                          ; preds = %.lr.ph423
  %i.jk = getelementptr i8, ptr %.0564430, i64 %i.w
  %scevgep919 = getelementptr i8, ptr %i.jk, i64 16
  br label %._crit_edge424

._crit_edge424:                                   ; preds = %._crit_edge424.loopexit, %bb.i
  %.1262.lcssa = phi <8 x float> [ %.0261, %bb.i ], [ %i.jg, %._crit_edge424.loopexit ]
  %.1260.lcssa = phi <8 x float> [ %.0259, %bb.i ], [ %i.je, %._crit_edge424.loopexit ]
  %.1258.lcssa = phi <8 x float> [ %.0257, %bb.i ], [ %i.jc, %._crit_edge424.loopexit ]
  %.1256.lcssa = phi <8 x float> [ %.0255, %bb.i ], [ %i.ja, %._crit_edge424.loopexit ]
  %.1565.lcssa = phi ptr [ %.0564430, %bb.i ], [ %scevgep919, %._crit_edge424.loopexit ] ; 2 uses
  store <8 x float> %.1256.lcssa, ptr %.6432, align 32, !tbaa !116
  %i.jl = getelementptr inbounds nuw i8, ptr %.6432, i64 32
  store <8 x float> %.1258.lcssa, ptr %i.jl, align 32, !tbaa !116
  %i.jm = getelementptr inbounds nuw i8, ptr %.6432, i64 64
  store <8 x float> %.1260.lcssa, ptr %i.jm, align 32, !tbaa !116
  %i.jn = getelementptr inbounds nuw i8, ptr %.6432, i64 96
  store <8 x float> %.1262.lcssa, ptr %i.jn, align 32, !tbaa !116
  %i.jo = getelementptr inbounds nuw i8, ptr %.6432, i64 128 ; 2 uses
  %i.jp = add nuw nsw i32 %.0560431, 8            ; 2 uses
  %i.jq = or disjoint i32 %i.jp, 7
  %i.jr = icmp slt i32 %i.jq, %1
  br i1 %i.jr, label %.lr.ph433, label %.preheader302, !llvm.loop !1196

.preheader301:                                    ; preds = %._crit_edge446, %.preheader302
  %.2566.lcssa = phi ptr [ %.0564.lcssa, %.preheader302 ], [ %.3567.lcssa, %._crit_edge446 ] ; 4 uses
  %.1561.lcssa = phi i32 [ %.0560.lcssa, %.preheader302 ], [ %i.mo, %._crit_edge446 ] ; 7 uses
  %.7.lcssa = phi ptr [ %.6.lcssa, %.preheader302 ], [ %i.mn, %._crit_edge446 ] ; 5 uses
  %i.js = or disjoint i32 %.1561.lcssa, 1
  %i.jt = icmp slt i32 %i.js, %1
  br i1 %i.jt, label %.lr.ph473, label %.preheader300

.lr.ph473:                                        ; preds = %.preheader301
  br i1 %i.r, label %.lr.ph473.split.us, label %.lr.ph473.split

.lr.ph473.split.us:                               ; preds = %.lr.ph473, %._crit_edge466.us
  %.8472.us = phi ptr [ %i.kr, %._crit_edge466.us ], [ %.7.lcssa, %.lr.ph473 ] ; 5 uses
  %.2562471.us = phi i32 [ %i.ks, %._crit_edge466.us ], [ %.1561.lcssa, %.lr.ph473 ]
  %.4568470.us = phi ptr [ %scevgep927, %._crit_edge466.us ], [ %.2566.lcssa, %.lr.ph473 ] ; 2 uses
  br i1 %.not590, label %.lr.ph465.us.preheader, label %bb.j

bb.j:                                             ; preds = %.lr.ph473.split.us
  %i.ju = load <4 x float>, ptr %.8472.us, align 16, !tbaa !116
  %i.jv = getelementptr inbounds nuw i8, ptr %.8472.us, i64 16
  %i.jw = load <4 x float>, ptr %i.jv, align 16, !tbaa !116
  br label %.lr.ph465.us.preheader

.lr.ph465.us.preheader:                           ; preds = %bb.j, %.lr.ph473.split.us
  %.1272460.us.ph = phi <4 x float> [ zeroinitializer, %.lr.ph473.split.us ], [ %i.ju, %bb.j ]
  %.1274459.us.ph = phi <4 x float> [ zeroinitializer, %.lr.ph473.split.us ], [ %i.jw, %bb.j ]
  br label %.lr.ph465.us

.lr.ph465.us:                                     ; preds = %.lr.ph465.us.preheader, %.lr.ph465.us
  %.0554463.us = phi i32 [ %i.ko, %.lr.ph465.us ], [ 0, %.lr.ph465.us.preheader ]
  %.0555462.us = phi ptr [ %i.km, %.lr.ph465.us ], [ %.1455513, %.lr.ph465.us.preheader ] ; 2 uses
  %.5569461.us = phi ptr [ %i.kn, %.lr.ph465.us ], [ %.4568470.us, %.lr.ph465.us.preheader ] ; 2 uses
  %.1272460.us = phi <4 x float> [ %i.kj, %.lr.ph465.us ], [ %.1272460.us.ph, %.lr.ph465.us.preheader ]
  %.1274459.us = phi <4 x float> [ %i.kl, %.lr.ph465.us ], [ %.1274459.us.ph, %.lr.ph465.us.preheader ]
  %i.jx = load i64, ptr %.0555462.us, align 1, !tbaa !116
  %i.jy = insertelement <2 x i64> poison, i64 %i.jx, i64 0
  %i.jz = bitcast <2 x i64> %i.jy to <8 x i16>
  %i.ka = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kb = bitcast <8 x i16> %i.ka to <4 x float>  ; 2 uses
  %i.kc = load float, ptr %.5569461.us, align 1, !tbaa !116
  %i.kd = insertelement <4 x float> poison, float %i.kc, i64 0
  %i.ke = bitcast <4 x float> %i.kd to <8 x i16>
  %i.kf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ke, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 8, i32 3, i32 9>
  %i.kg = bitcast <8 x i16> %i.kf to <4 x float>  ; 2 uses
  %i.kh = shufflevector <4 x float> %i.kg, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.ki = fmul fast <4 x float> %i.kg, %i.kb
  %i.kj = fadd fast <4 x float> %i.ki, %.1272460.us ; 2 uses
  %i.kk = fmul fast <4 x float> %i.kh, %i.kb
  %i.kl = fadd fast <4 x float> %i.kk, %.1274459.us ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.0555462.us, i64 8
  %i.kn = getelementptr inbounds nuw i8, ptr %.5569461.us, i64 4
  %i.ko = add nuw nsw i32 %.0554463.us, 1         ; 2 uses
  %exitcond928.not = icmp eq i32 %i.ko, %3
  br i1 %exitcond928.not, label %._crit_edge466.us, label %.lr.ph465.us, !llvm.loop !1197

._crit_edge466.us:                                ; preds = %.lr.ph465.us
  %i.kp = getelementptr i8, ptr %.4568470.us, i64 %i.z
  %scevgep927 = getelementptr i8, ptr %i.kp, i64 4 ; 2 uses
  store <4 x float> %i.kj, ptr %.8472.us, align 16, !tbaa !116
  %i.kq = getelementptr inbounds nuw i8, ptr %.8472.us, i64 16
  store <4 x float> %i.kl, ptr %i.kq, align 16, !tbaa !116
  %i.kr = getelementptr inbounds nuw i8, ptr %.8472.us, i64 32 ; 2 uses
  %i.ks = add nuw nsw i32 %.2562471.us, 2         ; 3 uses
  %i.kt = or disjoint i32 %i.ks, 1
  %i.ku = icmp slt i32 %i.kt, %1
  br i1 %i.ku, label %.lr.ph473.split.us, label %.preheader300, !llvm.loop !1198

.lr.ph473.split:                                  ; preds = %.lr.ph473
  br i1 %.not590, label %.lr.ph473.split.split.us.preheader, label %.lr.ph473.split.split

.lr.ph473.split.split.us.preheader:               ; preds = %.lr.ph473.split
  %i.kv = add i32 %.1561.lcssa, 3
  %smax923 = tail call i32 @llvm.smax.i32(i32 %1, i32 %i.kv)
  %i.kw = add i32 %smax923, -2
  %i.kx = sub i32 %i.kw, %.1561.lcssa             ; 2 uses
  %i.ky = lshr i32 %i.kx, 1
  %i.kz = zext nneg i32 %i.ky to i64
end_hunk_11
begin_hunk_12_@_ZN4ncnnL29gemm_transB_packed_tile_bf16sERKNS_3MatES2_RS0_iiiiii:bb.a
  %.7571491.us = phi ptr [ %i.nw, %.lr.ph495.us ], [ %.6570499.us, %.lr.ph495.us.preheader ] ; 3 uses
  %.1276490.us = phi <4 x float> [ %i.nu, %.lr.ph495.us ], [ %.1276490.us.ph, %.lr.ph495.us.preheader ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph495.us ], [ 0, %.lr.ph495.us.preheader ]
  %i.mt = load i64, ptr %.0553492.us, align 1, !tbaa !116
  %i.mu = insertelement <2 x i64> poison, i64 %i.mt, i64 0
  %i.mv = bitcast <2 x i64> %i.mu to <8 x i16>
  %i.mw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mx = bitcast <8 x i16> %i.mw to <4 x float>
  %i.my = load i16, ptr %.7571491.us, align 2, !tbaa !685
  %i.mz = zext i16 %i.my to i32
  %i.na = shl nuw i32 %i.mz, 16
  %i.nb = insertelement <4 x i32> poison, i32 %i.na, i64 0
  %i.nc = bitcast <4 x i32> %i.nb to <4 x float>
  %i.nd = shufflevector <4 x float> %i.nc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ne = fmul fast <4 x float> %i.nd, %i.mx
  %i.nf = fadd fast <4 x float> %i.ne, %.1276490.us
  %i.ng = getelementptr inbounds nuw i8, ptr %.0553492.us, i64 8
  %i.nh = getelementptr inbounds nuw i8, ptr %.7571491.us, i64 2
  %i.ni = load i64, ptr %i.ng, align 1, !tbaa !116
  %i.nj = insertelement <2 x i64> poison, i64 %i.ni, i64 0
  %i.nk = bitcast <2 x i64> %i.nj to <8 x i16>
  %i.nl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nm = bitcast <8 x i16> %i.nl to <4 x float>
  %i.nn = load i16, ptr %i.nh, align 2, !tbaa !685
  %i.no = zext i16 %i.nn to i32
  %i.np = shl nuw i32 %i.no, 16
  %i.nq = insertelement <4 x i32> poison, i32 %i.np, i64 0
  %i.nr = bitcast <4 x i32> %i.nq to <4 x float>
  %i.ns = shufflevector <4 x float> %i.nr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nt = fmul fast <4 x float> %i.ns, %i.nm
  %i.nu = fadd fast <4 x float> %i.nt, %i.nf      ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.0553492.us, i64 16 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.7571491.us, i64 4 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge496.us.unr-lcssa, label %.lr.ph495.us, !llvm.loop !1201

._crit_edge496.us.unr-lcssa:                      ; preds = %.lr.ph495.us
  br i1 %lcmp.mod.not, label %._crit_edge496.us, label %.lr.ph495.us.epil.preheader

.lr.ph495.us.epil.preheader:                      ; preds = %._crit_edge496.us.unr-lcssa, %.lr.ph495.us.preheader
  %.0553492.us.epil.init = phi ptr [ %.1455513, %.lr.ph495.us.preheader ], [ %i.nv, %._crit_edge496.us.unr-lcssa ]
  %.7571491.us.epil.init = phi ptr [ %.6570499.us, %.lr.ph495.us.preheader ], [ %i.nw, %._crit_edge496.us.unr-lcssa ]
  %.1276490.us.epil.init = phi <4 x float> [ %.1276490.us.ph, %.lr.ph495.us.preheader ], [ %i.nu, %._crit_edge496.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod448)
  %i.nx = load i64, ptr %.0553492.us.epil.init, align 1, !tbaa !116
  %i.ny = insertelement <2 x i64> poison, i64 %i.nx, i64 0
  %i.nz = bitcast <2 x i64> %i.ny to <8 x i16>
  %i.oa = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ob = bitcast <8 x i16> %i.oa to <4 x float>
  %i.oc = load i16, ptr %.7571491.us.epil.init, align 2, !tbaa !685
  %i.od = zext i16 %i.oc to i32
  %i.oe = shl nuw i32 %i.od, 16
  %i.of = insertelement <4 x i32> poison, i32 %i.oe, i64 0
  %i.og = bitcast <4 x i32> %i.of to <4 x float>
  %i.oh = shufflevector <4 x float> %i.og, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oi = fmul fast <4 x float> %i.oh, %i.ob
  %i.oj = fadd fast <4 x float> %i.oi, %.1276490.us.epil.init
  br label %._crit_edge496.us

._crit_edge496.us:                                ; preds = %._crit_edge496.us.unr-lcssa, %.lr.ph495.us.epil.preheader
  %.lcssa418 = phi <4 x float> [ %i.nu, %._crit_edge496.us.unr-lcssa ], [ %i.oj, %.lr.ph495.us.epil.preheader ]
  %i.ok = getelementptr i8, ptr %.6570499.us, i64 %i.ab
  %scevgep933 = getelementptr i8, ptr %i.ok, i64 2
  store <4 x float> %.lcssa418, ptr %.9501.us, align 16, !tbaa !116
  %i.ol = getelementptr inbounds nuw i8, ptr %.9501.us, i64 16 ; 2 uses
  %i.om = add nuw nsw i32 %.3563500.us, 1         ; 2 uses
  %exitcond935.not = icmp eq i32 %i.om, %1
  br i1 %exitcond935.not, label %._crit_edge503, label %.lr.ph502.split.us, !llvm.loop !1202

.lr.ph502.split:                                  ; preds = %.lr.ph502
  br i1 %.not590, label %.lr.ph502.split.split.us.preheader, label %.lr.ph502.split.split.preheader

.lr.ph502.split.split.preheader:                  ; preds = %.lr.ph502.split
  %scevgep929 = getelementptr i8, ptr %.8.lcssa, i64 16
  %i.on = sub i32 %i.aa, %.2562.lcssa
  %i.oo = zext i32 %i.on to i64
  %i.op = shl nuw nsw i64 %i.oo, 4
  %scevgep930 = getelementptr i8, ptr %scevgep929, i64 %i.op
  br label %._crit_edge503

.lr.ph502.split.split.us.preheader:               ; preds = %.lr.ph502.split
  %i.oq = sub i32 %i.aa, %.2562.lcssa
  %i.or = zext i32 %i.oq to i64
  %i.os = shl nuw nsw i64 %i.or, 4                ; 2 uses
  %i.ot = add nuw nsw i64 %i.os, 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %.8.lcssa, i8 0, i64 %i.ot, i1 false), !tbaa !116
  %scevgep931 = getelementptr i8, ptr %.8.lcssa, i64 16
  %scevgep932 = getelementptr i8, ptr %scevgep931, i64 %i.os
  br label %._crit_edge503

.lr.ph473.split.split:                            ; preds = %.lr.ph473.split, %.lr.ph473.split.split
  %.8472 = phi ptr [ %i.ou, %.lr.ph473.split.split ], [ %.7.lcssa, %.lr.ph473.split ]
  %.2562471 = phi i32 [ %i.ov, %.lr.ph473.split.split ], [ %.1561.lcssa, %.lr.ph473.split ]
  %i.ou = getelementptr inbounds nuw i8, ptr %.8472, i64 32 ; 2 uses
  %i.ov = add nuw nsw i32 %.2562471, 2            ; 3 uses
  %i.ow = or disjoint i32 %i.ov, 1
  %i.ox = icmp slt i32 %i.ow, %1
  br i1 %i.ox, label %.lr.ph473.split.split, label %.preheader300, !llvm.loop !1198

._crit_edge503:                                   ; preds = %._crit_edge496.us, %.lr.ph502.split.split.preheader, %.lr.ph502.split.split.us.preheader, %.preheader300
  %.9.lcssa = phi ptr [ %.8.lcssa, %.preheader300 ], [ %scevgep932, %.lr.ph502.split.split.us.preheader ], [ %scevgep930, %.lr.ph502.split.split.preheader ], [ %i.ol, %._crit_edge496.us ] ; 2 uses
  %i.oy = getelementptr inbounds [2 x i8], ptr %.1455513, i64 %i.t ; 2 uses
  %i.oz = add nuw nsw i32 %.1461511, 4            ; 3 uses
  %i.pa = or disjoint i32 %i.oz, 3
  %i.pb = icmp slt i32 %i.pa, %0
  br i1 %i.pb, label %.preheader303, label %.preheader299, !llvm.loop !1203

.preheader298:                                    ; preds = %.preheader298.lr.ph, %._crit_edge604
  %.2608 = phi ptr [ %.1455.lcssa, %.preheader298.lr.ph ], [ %i.xh, %._crit_edge604 ] ; 10 uses
  %.10607 = phi ptr [ %.5.lcssa, %.preheader298.lr.ph ], [ %.14.lcssa, %._crit_edge604 ] ; 6 uses
  %.2462606 = phi i32 [ %.1461.lcssa, %.preheader298.lr.ph ], [ %i.xi, %._crit_edge604 ]
  br i1 %i.hb, label %.lr.ph532, label %.preheader297

.lr.ph532:                                        ; preds = %.preheader298
  br i1 %i.hc, label %.lr.ph532.split.us, label %.lr.ph532.split

.lr.ph532.split.us:                               ; preds = %.lr.ph532, %._crit_edge525.us
  %.11531.us = phi ptr [ %i.qb, %._crit_edge525.us ], [ %.10607, %.lr.ph532 ] ; 5 uses
  %.0540530.us = phi i32 [ %i.qc, %._crit_edge525.us ], [ 0, %.lr.ph532 ]
  %.0544529.us = phi ptr [ %scevgep937, %._crit_edge525.us ], [ %.0.val1, %.lr.ph532 ] ; 2 uses
  br i1 %.not586, label %.lr.ph524.us.preheader, label %bb.n

bb.n:                                             ; preds = %.lr.ph532.split.us
  %i.pc = load <8 x float>, ptr %.11531.us, align 1, !tbaa !116
  %i.pd = getelementptr inbounds nuw i8, ptr %.11531.us, i64 32
  %i.pe = load <8 x float>, ptr %i.pd, align 1, !tbaa !116
  br label %.lr.ph524.us.preheader

.lr.ph524.us.preheader:                           ; preds = %bb.n, %.lr.ph532.split.us
  %.1278519.us.ph = phi <8 x float> [ zeroinitializer, %.lr.ph532.split.us ], [ %i.pc, %bb.n ]
  %.1280518.us.ph = phi <8 x float> [ zeroinitializer, %.lr.ph532.split.us ], [ %i.pe, %bb.n ]
  br label %.lr.ph524.us

.lr.ph524.us:                                     ; preds = %.lr.ph524.us.preheader, %.lr.ph524.us
  %.0538522.us = phi i32 [ %i.py, %.lr.ph524.us ], [ 0, %.lr.ph524.us.preheader ]
  %.0539521.us = phi ptr [ %i.pw, %.lr.ph524.us ], [ %.2608, %.lr.ph524.us.preheader ] ; 2 uses
  %.1545520.us = phi ptr [ %i.px, %.lr.ph524.us ], [ %.0544529.us, %.lr.ph524.us.preheader ] ; 2 uses
  %.1278519.us = phi <8 x float> [ %i.pt, %.lr.ph524.us ], [ %.1278519.us.ph, %.lr.ph524.us.preheader ]
  %.1280518.us = phi <8 x float> [ %i.pv, %.lr.ph524.us ], [ %.1280518.us.ph, %.lr.ph524.us.preheader ]
  %i.pf = load float, ptr %.0539521.us, align 1, !tbaa !116
  %i.pg = insertelement <4 x float> poison, float %i.pf, i64 0
  %i.ph = load <8 x i16>, ptr %.1545520.us, align 1, !tbaa !116 ; 2 uses
  %i.pi = bitcast <4 x float> %i.pg to <8 x i16>  ; 2 uses
  %i.pj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.pi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 8, i32 3, i32 9>
  %i.pk = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.pi, <8 x i32> <i32 4, i32 8, i32 5, i32 9, i32 6, i32 8, i32 7, i32 9>
  %i.pl = shufflevector <8 x i16> %i.pj, <8 x i16> %i.pk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pm = bitcast <16 x i16> %i.pl to <8 x float> ; 2 uses
  %i.pn = shufflevector <8 x float> %i.pm, <8 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.po = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ph, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.pp = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ph, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.pq = shufflevector <8 x i16> %i.po, <8 x i16> %i.pp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pr = bitcast <16 x i16> %i.pq to <8 x float> ; 2 uses
  %i.ps = fmul fast <8 x float> %i.pm, %i.pr
  %i.pt = fadd fast <8 x float> %i.ps, %.1278519.us ; 2 uses
  %i.pu = fmul fast <8 x float> %i.pn, %i.pr
  %i.pv = fadd fast <8 x float> %i.pu, %.1280518.us ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %.0539521.us, i64 4
  %i.px = getelementptr inbounds nuw i8, ptr %.1545520.us, i64 16
  %i.py = add nuw nsw i32 %.0538522.us, 1         ; 2 uses
  %exitcond938.not = icmp eq i32 %i.py, %3
  br i1 %exitcond938.not, label %._crit_edge525.us, label %.lr.ph524.us, !llvm.loop !1204

._crit_edge525.us:                                ; preds = %.lr.ph524.us
  %i.pz = getelementptr i8, ptr %.0544529.us, i64 %i.ho
  %scevgep937 = getelementptr i8, ptr %i.pz, i64 16 ; 2 uses
  store <8 x float> %i.pt, ptr %.11531.us, align 1, !tbaa !116
  %i.qa = getelementptr inbounds nuw i8, ptr %.11531.us, i64 32
  store <8 x float> %i.pv, ptr %i.qa, align 1, !tbaa !116
  %i.qb = getelementptr inbounds nuw i8, ptr %.11531.us, i64 64 ; 2 uses
  %i.qc = add nuw nsw i32 %.0540530.us, 8         ; 2 uses
  %i.qd = or disjoint i32 %i.qc, 7
  %i.qe = icmp slt i32 %i.qd, %1
  br i1 %i.qe, label %.lr.ph532.split.us, label %.preheader297, !llvm.loop !1205

.lr.ph532.split:                                  ; preds = %.lr.ph532
  br i1 %.not586, label %.lr.ph532.split.split.us.preheader, label %.lr.ph532.split.split.preheader

.lr.ph532.split.split.preheader:                  ; preds = %.lr.ph532.split
  br i1 %i.hv, label %.lr.ph532.split.split.epil.preheader, label %.lr.ph532.split.split

.lr.ph532.split.split.us.preheader:               ; preds = %.lr.ph532.split
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.10607, i8 0, i64 %i.hl, i1 false), !tbaa !116
  %scevgep936 = getelementptr i8, ptr %.10607, i64 %i.hl
  br label %.preheader297

.preheader294:                                    ; preds = %._crit_edge604, %.preheader299
  %.2462.lcssa = phi i32 [ %.1461.lcssa, %.preheader299 ], [ %i.xi, %._crit_edge604 ] ; 2 uses
  %.10.lcssa = phi ptr [ %.5.lcssa, %.preheader299 ], [ %.14.lcssa, %._crit_edge604 ]
  %.2.lcssa = phi ptr [ %.1455.lcssa, %.preheader299 ], [ %i.xh, %._crit_edge604 ]
  %i.qf = icmp slt i32 %.2462.lcssa, %0
  br i1 %i.qf, label %.preheader293.lr.ph, label %._crit_edge756

.preheader293.lr.ph:                              ; preds = %.preheader294
  %i.qg = icmp sgt i32 %1, 7
  %.not582 = icmp eq i32 %2, 0                    ; 4 uses
  %i.qh = icmp sgt i32 %3, 3                      ; 4 uses
  %i.qi = sext i32 %3 to i64
  %i.qj = add i32 %3, -4                          ; 4 uses
  %i.qk = and i32 %i.qj, -4
  %i.ql = add nuw nsw i32 %i.qk, 4                ; 4 uses
  %i.qm = and i32 %1, -8
  %i.qn = lshr i32 %i.qj, 2
  %i.qo = zext nneg i32 %i.qn to i64              ; 5 uses
  %i.qp = shl nuw nsw i64 %i.qo, 5
  %i.qq = shl nuw nsw i64 %i.qo, 4
  %i.qr = shl nuw nsw i64 %i.qo, 3
  %i.qs = add nuw nsw i64 %i.qo, 1                ; 2 uses
  %min.iters.check269 = icmp ult i32 %i.qj, 12
  %n.vec271 = and i64 %i.qs, 2147483644           ; 5 uses
  %i.qt = trunc nuw nsw i64 %n.vec271 to i32
  %i.qu = shl i32 %i.qt, 2
  %i.qv = shl nuw nsw i64 %n.vec271, 3
  %i.qw = shl nuw nsw i64 %n.vec271, 4
  %cmp.n292 = icmp eq i64 %i.qs, %n.vec271
  %i.qx = add nuw nsw i64 %i.qo, 1                ; 2 uses
  %min.iters.check194 = icmp ult i32 %i.qj, 28
  %n.vec196 = and i64 %i.qx, 2147483640           ; 4 uses
  %i.qy = trunc nuw nsw i64 %n.vec196 to i32
  %i.qz = shl i32 %i.qy, 2
  %i.ra = shl nuw nsw i64 %n.vec196, 3            ; 2 uses
  %cmp.n229 = icmp eq i64 %i.qx, %n.vec196
  br label %.preheader293

.preheader297.loopexit376.unr-lcssa:              ; preds = %.lr.ph532.split.split
  br i1 %lcmp.mod450.not, label %.preheader297, label %.lr.ph532.split.split.epil.preheader

.lr.ph532.split.split.epil.preheader:             ; preds = %.preheader297.loopexit376.unr-lcssa, %.lr.ph532.split.split.preheader
  %.11531.epil.init = phi ptr [ %.10607, %.lr.ph532.split.split.preheader ], [ %i.re, %.preheader297.loopexit376.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod452)
  br label %.lr.ph532.split.split.epil

.lr.ph532.split.split.epil:                       ; preds = %.lr.ph532.split.split.epil, %.lr.ph532.split.split.epil.preheader
  %.11531.epil = phi ptr [ %i.rb, %.lr.ph532.split.split.epil ], [ %.11531.epil.init, %.lr.ph532.split.split.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph532.split.split.epil ], [ 0, %.lr.ph532.split.split.epil.preheader ]
  %i.rb = getelementptr inbounds nuw i8, ptr %.11531.epil, i64 64 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter449
  br i1 %epil.iter.cmp.not, label %.preheader297, label %.lr.ph532.split.split.epil, !llvm.loop !1206

.preheader297:                                    ; preds = %.preheader297.loopexit376.unr-lcssa, %.lr.ph532.split.split.epil, %._crit_edge525.us, %.lr.ph532.split.split.us.preheader, %.preheader298
  %.0544.lcssa = phi ptr [ %.0.val1, %.preheader298 ], [ %scevgep937, %._crit_edge525.us ], [ %.0.val1, %.lr.ph532.split.split.us.preheader ], [ %.0.val1, %.lr.ph532.split.split.epil ], [ %.0.val1, %.preheader297.loopexit376.unr-lcssa ] ; 2 uses
  %.0540.lcssa = phi i32 [ 0, %.preheader298 ], [ %i.hh, %._crit_edge525.us ], [ %i.hh, %.lr.ph532.split.split.us.preheader ], [ %i.hh, %.lr.ph532.split.split.epil ], [ %i.hh, %.preheader297.loopexit376.unr-lcssa ] ; 3 uses
  %.11.lcssa = phi ptr [ %.10607, %.preheader298 ], [ %i.qb, %._crit_edge525.us ], [ %scevgep936, %.lr.ph532.split.split.us.preheader ], [ %i.re, %.preheader297.loopexit376.unr-lcssa ], [ %i.rb, %.lr.ph532.split.split.epil ] ; 2 uses
  %i.rc = or disjoint i32 %.0540.lcssa, 3
  %i.rd = icmp slt i32 %i.rc, %1
  br i1 %i.rd, label %.lr.ph563, label %.preheader296

.lr.ph532.split.split:                            ; preds = %.lr.ph532.split.split.preheader, %.lr.ph532.split.split
  %.11531 = phi ptr [ %i.re, %.lr.ph532.split.split ], [ %.10607, %.lr.ph532.split.split.preheader ]
  %niter454 = phi i32 [ %niter454.next.7, %.lr.ph532.split.split ], [ 0, %.lr.ph532.split.split.preheader ]
  %i.re = getelementptr inbounds nuw i8, ptr %.11531, i64 512 ; 3 uses
  %niter454.next.7 = add nuw nsw i32 %niter454, 8 ; 2 uses
  %niter454.ncmp.7.not = icmp eq i32 %niter454.next.7, %unroll_iter453
  br i1 %niter454.ncmp.7.not, label %.preheader297.loopexit376.unr-lcssa, label %.lr.ph532.split.split, !llvm.loop !1205

.preheader296:                                    ; preds = %._crit_edge556, %.preheader297
  %.2546.lcssa = phi ptr [ %.0544.lcssa, %.preheader297 ], [ %.3547.lcssa, %._crit_edge556 ] ; 2 uses
  %.1541.lcssa = phi i32 [ %.0540.lcssa, %.preheader297 ], [ %i.sg, %._crit_edge556 ] ; 3 uses
  %.12.lcssa = phi ptr [ %.11.lcssa, %.preheader297 ], [ %i.sf, %._crit_edge556 ] ; 2 uses
  %i.rf = or disjoint i32 %.1541.lcssa, 1
  %i.rg = icmp slt i32 %i.rf, %1
  br i1 %i.rg, label %.lr.ph585.preheader, label %.preheader295

.lr.ph585.preheader:                              ; preds = %.preheader296
  %i.rh = getelementptr i8, ptr %.2608, i64 %i.hy
  br label %.lr.ph585

.lr.ph563:                                        ; preds = %.preheader297, %._crit_edge556
  %.12562 = phi ptr [ %i.sf, %._crit_edge556 ], [ %.11.lcssa, %.preheader297 ] ; 5 uses
  %.1541561 = phi i32 [ %i.sg, %._crit_edge556 ], [ %.0540.lcssa, %.preheader297 ]
  %.2546560 = phi ptr [ %.3547.lcssa, %._crit_edge556 ], [ %.0544.lcssa, %.preheader297 ] ; 3 uses
  br i1 %.not586, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph563
  %i.ri = load <4 x float>, ptr %.12562, align 16, !tbaa !116
  %i.rj = getelementptr inbounds nuw i8, ptr %.12562, i64 16
  %i.rk = load <4 x float>, ptr %i.rj, align 16, !tbaa !116
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph563
  %.0283 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph563 ], [ %i.rk, %bb.o ] ; 2 uses
  %.0281 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph563 ], [ %i.ri, %bb.o ] ; 2 uses
  br i1 %i.hc, label %.lr.ph555, label %._crit_edge556

.lr.ph555:                                        ; preds = %bb.p, %.lr.ph555
  %.0536553 = phi i32 [ %i.sc, %.lr.ph555 ], [ 0, %bb.p ]
  %.0537552 = phi ptr [ %i.sa, %.lr.ph555 ], [ %.2608, %bb.p ] ; 2 uses
  %.3547551 = phi ptr [ %i.sb, %.lr.ph555 ], [ %.2546560, %bb.p ] ; 2 uses
  %.1282550 = phi <4 x float> [ %i.rx, %.lr.ph555 ], [ %.0281, %bb.p ]
  %.1284549 = phi <4 x float> [ %i.rz, %.lr.ph555 ], [ %.0283, %bb.p ]
  %i.rl = load float, ptr %.0537552, align 1, !tbaa !116
  %i.rm = insertelement <4 x float> poison, float %i.rl, i64 0
  %i.rn = bitcast <4 x float> %i.rm to <8 x i16>
  %i.ro = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 8, i32 3, i32 9>
  %i.rp = bitcast <8 x i16> %i.ro to <4 x float>  ; 2 uses
  %i.rq = load i64, ptr %.3547551, align 1, !tbaa !116
  %i.rr = insertelement <2 x i64> poison, i64 %i.rq, i64 0
  %i.rs = bitcast <2 x i64> %i.rr to <8 x i16>
  %i.rt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ru = bitcast <8 x i16> %i.rt to <4 x float>  ; 2 uses
  %i.rv = shufflevector <4 x float> %i.ru, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.rw = fmul fast <4 x float> %i.rp, %i.ru
  %i.rx = fadd fast <4 x float> %i.rw, %.1282550  ; 2 uses
  %i.ry = fmul fast <4 x float> %i.rv, %i.rp
  %i.rz = fadd fast <4 x float> %i.ry, %.1284549  ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.0537552, i64 4
  %i.sb = getelementptr inbounds nuw i8, ptr %.3547551, i64 8
  %i.sc = add nuw nsw i32 %.0536553, 1            ; 2 uses
  %exitcond940.not = icmp eq i32 %i.sc, %3
  br i1 %exitcond940.not, label %._crit_edge556.loopexit, label %.lr.ph555, !llvm.loop !1207

._crit_edge556.loopexit:                          ; preds = %.lr.ph555
  %i.sd = getelementptr i8, ptr %.2546560, i64 %i.hp
  %scevgep939 = getelementptr i8, ptr %i.sd, i64 8
  br label %._crit_edge556

._crit_edge556:                                   ; preds = %._crit_edge556.loopexit, %bb.p
  %.1284.lcssa = phi <4 x float> [ %.0283, %bb.p ], [ %i.rz, %._crit_edge556.loopexit ]
  %.1282.lcssa = phi <4 x float> [ %.0281, %bb.p ], [ %i.rx, %._crit_edge556.loopexit ]
  %.3547.lcssa = phi ptr [ %.2546560, %bb.p ], [ %scevgep939, %._crit_edge556.loopexit ] ; 2 uses
  store <4 x float> %.1282.lcssa, ptr %.12562, align 16, !tbaa !116
  %i.se = getelementptr inbounds nuw i8, ptr %.12562, i64 16
  store <4 x float> %.1284.lcssa, ptr %i.se, align 16, !tbaa !116
  %i.sf = getelementptr inbounds nuw i8, ptr %.12562, i64 32 ; 2 uses
  %i.sg = add nuw nsw i32 %.1541561, 4            ; 3 uses
  %i.sh = or disjoint i32 %i.sg, 3
  %i.si = icmp slt i32 %i.sh, %1
  br i1 %i.si, label %.lr.ph563, label %.preheader296, !llvm.loop !1208

.preheader295:                                    ; preds = %._crit_edge576, %.preheader296
  %.4548.lcssa = phi ptr [ %.2546.lcssa, %.preheader296 ], [ %.5549.lcssa, %._crit_edge576 ]
  %.2542.lcssa = phi i32 [ %.1541.lcssa, %.preheader296 ], [ %i.us, %._crit_edge576 ] ; 2 uses
  %.13.lcssa = phi ptr [ %.12.lcssa, %.preheader296 ], [ %i.ur, %._crit_edge576 ] ; 2 uses
  %i.sj = icmp slt i32 %.2542.lcssa, %1
  br i1 %i.sj, label %.lr.ph603.preheader, label %._crit_edge604

.lr.ph603.preheader:                              ; preds = %.preheader295
  %i.sk = getelementptr i8, ptr %.2608, i64 %i.ib
  br label %.lr.ph603

.lr.ph585:                                        ; preds = %.lr.ph585.preheader, %._crit_edge576
  %.13584 = phi ptr [ %i.ur, %._crit_edge576 ], [ %.12.lcssa, %.lr.ph585.preheader ] ; 3 uses
  %.2542583 = phi i32 [ %i.us, %._crit_edge576 ], [ %.1541.lcssa, %.lr.ph585.preheader ]
  %.4548582 = phi ptr [ %.5549.lcssa, %._crit_edge576 ], [ %.2546.lcssa, %.lr.ph585.preheader ] ; 5 uses
  br i1 %.not586, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph585
  %i.sl = load <4 x float>, ptr %.13584, align 4, !tbaa !68
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph585
  %i.sm = phi <4 x float> [ %i.sl, %bb.q ], [ zeroinitializer, %.lr.ph585 ] ; 6 uses
  br i1 %i.hc, label %.lr.ph575.preheader, label %._crit_edge576

.lr.ph575.preheader:                              ; preds = %bb.r
  br i1 %min.iters.check122, label %.lr.ph575.preheader374, label %vector.ph123

vector.ph123:                                     ; preds = %.lr.ph575.preheader
  %i.sn = getelementptr i8, ptr %.4548582, i64 %i.hy
  %i.so = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.sm, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  %i.sp = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.sm, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %i.sq = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.sm, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.sr = shufflevector <4 x float> %i.sm, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph123
  %index126 = phi i64 [ 0, %vector.ph123 ], [ %index.next139, %vector.body125 ] ; 2 uses
  %vec.phi127 = phi <4 x float> [ %i.so, %vector.ph123 ], [ %i.to, %vector.body125 ]
  %vec.phi128 = phi <4 x float> [ %i.sp, %vector.ph123 ], [ %i.tm, %vector.body125 ]
  %vec.phi129 = phi <4 x float> [ %i.sq, %vector.ph123 ], [ %i.tk, %vector.body125 ]
  %vec.phi130 = phi <4 x float> [ %i.sr, %vector.ph123 ], [ %i.ti, %vector.body125 ]
  %i.ss = shl i64 %index126, 2                    ; 2 uses
  %next.gep131 = getelementptr i8, ptr %.2608, i64 %i.ss
  %next.gep132 = getelementptr i8, ptr %.4548582, i64 %i.ss
  %wide.vec133 = load <8 x i16>, ptr %next.gep131, align 2, !tbaa !685
  %i.st = freeze <8 x i16> %wide.vec133           ; 2 uses
  %i.su = bitcast <8 x i16> %i.st to <4 x i32>
  %i.sv = bitcast <8 x i16> %i.st to <4 x i32>
  %i.sw = and <4 x i32> %i.sv, splat (i32 -65536)
  %i.sx = shl <4 x i32> %i.su, splat (i32 16)
  %i.sy = bitcast <4 x i32> %i.sx to <4 x float>  ; 2 uses
  %i.sz = bitcast <4 x i32> %i.sw to <4 x float>  ; 2 uses
  %wide.vec136 = load <8 x i16>, ptr %next.gep132, align 2, !tbaa !685
  %i.ta = freeze <8 x i16> %wide.vec136           ; 2 uses
  %i.tb = bitcast <8 x i16> %i.ta to <4 x i32>
  %i.tc = bitcast <8 x i16> %i.ta to <4 x i32>
  %i.td = and <4 x i32> %i.tc, splat (i32 -65536)
  %i.te = shl <4 x i32> %i.tb, splat (i32 16)
  %i.tf = bitcast <4 x i32> %i.te to <4 x float>  ; 2 uses
  %i.tg = bitcast <4 x i32> %i.td to <4 x float>  ; 2 uses
  %i.th = fmul fast <4 x float> %i.tf, %i.sy
  %i.ti = fadd fast <4 x float> %i.th, %vec.phi130 ; 2 uses
  %i.tj = fmul fast <4 x float> %i.tg, %i.sy
  %i.tk = fadd fast <4 x float> %i.tj, %vec.phi129 ; 2 uses
  %i.tl = fmul fast <4 x float> %i.tf, %i.sz
  %i.tm = fadd fast <4 x float> %i.tl, %vec.phi128 ; 2 uses
  %i.tn = fmul fast <4 x float> %i.tg, %i.sz
  %i.to = fadd fast <4 x float> %i.tn, %vec.phi127 ; 2 uses
  %index.next139 = add nuw i64 %index126, 4       ; 2 uses
  %i.tp = icmp eq i64 %index.next139, %n.vec124
end_hunk_12
