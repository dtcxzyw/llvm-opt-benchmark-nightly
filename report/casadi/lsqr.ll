Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/lsqr?download=true
inline.NumInlined: 579
inline.NumDeleted: 289
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6casadi24casadi_lsqr_single_solveIdEEiPKT_PS1_xPKxS4_:bb.a
scalar.ph554:                                     ; preds = %scalar.ph554.preheader, %scalar.ph554
  %.1254424 = phi i64 [ %i.gj, %scalar.ph554 ], [ %.1254424.ph, %scalar.ph554.preheader ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.1254424 ; 2 uses
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !26
  %i.gi = fmul double %i.ga, %i.gh
  store double %i.gi, ptr %i.gg, align 8, !tbaa !26
  %i.gj = add nuw nsw i64 %.1254424, 1            ; 2 uses
  %exitcond457.not = icmp eq i64 %i.gj, %i.e
  br i1 %exitcond457.not, label %._crit_edge426, label %scalar.ph554, !llvm.loop !152

._crit_edge426:                                   ; preds = %scalar.ph554, %middle.block565
  br i1 %or.cond.i514517519, label %.lr.ph.i297.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit304

.lr.ph.i297.preheader:                            ; preds = %._crit_edge426
  %min.iters.check571 = icmp ult i64 %i.e, 8
  br i1 %min.iters.check571, label %.lr.ph.i297.preheader723, label %vector.memcheck572

vector.memcheck572:                               ; preds = %.lr.ph.i297.preheader
  %i.gk = shl i64 %i.e, 4
  %i.gl = add i64 %i.gk, -1
  %diff.check573 = icmp ult i64 %i.gl, 31
  br i1 %diff.check573, label %.lr.ph.i297.preheader723, label %vector.ph574

vector.ph574:                                     ; preds = %vector.memcheck572
  %n.vec575 = and i64 %i.e, -4                    ; 4 uses
  %i.gm = shl i64 %n.vec575, 3                    ; 2 uses
  %i.gn = getelementptr i8, ptr %i.bh, i64 %i.gm
  %i.go = getelementptr i8, ptr %i.f, i64 %i.gm
  br label %vector.body576

vector.body576:                                   ; preds = %vector.body576, %vector.ph574
  %index577 = phi i64 [ 0, %vector.ph574 ], [ %index.next582, %vector.body576 ] ; 2 uses
  %i.gp = shl i64 %index577, 3                    ; 2 uses
  %next.gep578 = getelementptr i8, ptr %i.bh, i64 %i.gp ; 2 uses
  %next.gep579 = getelementptr i8, ptr %i.f, i64 %i.gp ; 2 uses
  %i.gq = getelementptr i8, ptr %next.gep579, i64 16
  %wide.load580 = load <2 x double>, ptr %next.gep579, align 8, !tbaa !26
  %wide.load581 = load <2 x double>, ptr %i.gq, align 8, !tbaa !26
  %i.gr = getelementptr i8, ptr %next.gep578, i64 16
  store <2 x double> %wide.load580, ptr %next.gep578, align 8, !tbaa !26
  store <2 x double> %wide.load581, ptr %i.gr, align 8, !tbaa !26
  %index.next582 = add nuw i64 %index577, 4       ; 2 uses
  %i.gs = icmp eq i64 %index.next582, %n.vec575
  br i1 %i.gs, label %middle.block583, label %vector.body576, !llvm.loop !153

middle.block583:                                  ; preds = %vector.body576
  %cmp.n584 = icmp eq i64 %i.e, %n.vec575
  br i1 %cmp.n584, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit304, label %.lr.ph.i297.preheader723

.lr.ph.i297.preheader723:                         ; preds = %vector.memcheck572, %.lr.ph.i297.preheader, %middle.block583
  %.020.i298.ph = phi i64 [ 0, %vector.memcheck572 ], [ 0, %.lr.ph.i297.preheader ], [ %n.vec575, %middle.block583 ] ; 4 uses
  %.01019.i299.ph = phi ptr [ %i.bh, %vector.memcheck572 ], [ %i.bh, %.lr.ph.i297.preheader ], [ %i.gn, %middle.block583 ] ; 2 uses
  %.01218.i300.ph = phi ptr [ %i.f, %vector.memcheck572 ], [ %i.f, %.lr.ph.i297.preheader ], [ %i.go, %middle.block583 ] ; 2 uses
  %i.gt = sub i64 %i.e, %.020.i298.ph
  %xtraiter747 = and i64 %i.gt, 7                 ; 2 uses
  %lcmp.mod748.not = icmp eq i64 %xtraiter747, 0
  br i1 %lcmp.mod748.not, label %.lr.ph.i297.prol.loopexit, label %.lr.ph.i297.prol

.lr.ph.i297.prol:                                 ; preds = %.lr.ph.i297.preheader723, %.lr.ph.i297.prol
  %.020.i298.prol = phi i64 [ %i.gx, %.lr.ph.i297.prol ], [ %.020.i298.ph, %.lr.ph.i297.preheader723 ]
  %.01019.i299.prol = phi ptr [ %i.gw, %.lr.ph.i297.prol ], [ %.01019.i299.ph, %.lr.ph.i297.preheader723 ] ; 2 uses
  %.01218.i300.prol = phi ptr [ %i.gu, %.lr.ph.i297.prol ], [ %.01218.i300.ph, %.lr.ph.i297.preheader723 ] ; 2 uses
  %prol.iter749 = phi i64 [ %prol.iter749.next, %.lr.ph.i297.prol ], [ 0, %.lr.ph.i297.preheader723 ]
  %i.gu = getelementptr inbounds nuw i8, ptr %.01218.i300.prol, i64 8 ; 2 uses
  %i.gv = load double, ptr %.01218.i300.prol, align 8, !tbaa !26
  %i.gw = getelementptr inbounds nuw i8, ptr %.01019.i299.prol, i64 8 ; 2 uses
  store double %i.gv, ptr %.01019.i299.prol, align 8, !tbaa !26
  %i.gx = add nuw nsw i64 %.020.i298.prol, 1      ; 2 uses
  %prol.iter749.next = add i64 %prol.iter749, 1   ; 2 uses
  %prol.iter749.cmp.not = icmp eq i64 %prol.iter749.next, %xtraiter747
  br i1 %prol.iter749.cmp.not, label %.lr.ph.i297.prol.loopexit, label %.lr.ph.i297.prol, !llvm.loop !154

.lr.ph.i297.prol.loopexit:                        ; preds = %.lr.ph.i297.prol, %.lr.ph.i297.preheader723
  %.020.i298.unr = phi i64 [ %.020.i298.ph, %.lr.ph.i297.preheader723 ], [ %i.gx, %.lr.ph.i297.prol ]
  %.01019.i299.unr = phi ptr [ %.01019.i299.ph, %.lr.ph.i297.preheader723 ], [ %i.gw, %.lr.ph.i297.prol ]
  %.01218.i300.unr = phi ptr [ %.01218.i300.ph, %.lr.ph.i297.preheader723 ], [ %i.gu, %.lr.ph.i297.prol ]
  %i.gy = sub i64 %.020.i298.ph, %i.e
  %i.gz = icmp ugt i64 %i.gy, -8
  br i1 %i.gz, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit304, label %.lr.ph.i297

.lr.ph.i297:                                      ; preds = %.lr.ph.i297.prol.loopexit, %.lr.ph.i297
  %.020.i298 = phi i64 [ %i.hy, %.lr.ph.i297 ], [ %.020.i298.unr, %.lr.ph.i297.prol.loopexit ]
  %.01019.i299 = phi ptr [ %i.hx, %.lr.ph.i297 ], [ %.01019.i299.unr, %.lr.ph.i297.prol.loopexit ] ; 9 uses
  %.01218.i300 = phi ptr [ %i.hv, %.lr.ph.i297 ], [ %.01218.i300.unr, %.lr.ph.i297.prol.loopexit ] ; 9 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.01218.i300, i64 8
  %i.hb = load double, ptr %.01218.i300, align 8, !tbaa !26
  %i.hc = getelementptr inbounds nuw i8, ptr %.01019.i299, i64 8
  store double %i.hb, ptr %.01019.i299, align 8, !tbaa !26
  %i.hd = getelementptr inbounds nuw i8, ptr %.01218.i300, i64 16
  %i.he = load double, ptr %i.ha, align 8, !tbaa !26
  %i.hf = getelementptr inbounds nuw i8, ptr %.01019.i299, i64 16
  store double %i.he, ptr %i.hc, align 8, !tbaa !26
  %i.hg = getelementptr inbounds nuw i8, ptr %.01218.i300, i64 24
  %i.hh = load double, ptr %i.hd, align 8, !tbaa !26
  %i.hi = getelementptr inbounds nuw i8, ptr %.01019.i299, i64 24
  store double %i.hh, ptr %i.hf, align 8, !tbaa !26
  %i.hj = getelementptr inbounds nuw i8, ptr %.01218.i300, i64 32
  %i.hk = load double, ptr %i.hg, align 8, !tbaa !26
  %i.hl = getelementptr inbounds nuw i8, ptr %.01019.i299, i64 32
  store double %i.hk, ptr %i.hi, align 8, !tbaa !26
  %i.hm = getelementptr inbounds nuw i8, ptr %.01218.i300, i64 40
  %i.hn = load double, ptr %i.hj, align 8, !tbaa !26
  %i.ho = getelementptr inbounds nuw i8, ptr %.01019.i299, i64 40
  store double %i.hn, ptr %i.hl, align 8, !tbaa !26
  %i.hp = getelementptr inbounds nuw i8, ptr %.01218.i300, i64 48
  %i.hq = load double, ptr %i.hm, align 8, !tbaa !26
  %i.hr = getelementptr inbounds nuw i8, ptr %.01019.i299, i64 48
  store double %i.hq, ptr %i.ho, align 8, !tbaa !26
  %i.hs = getelementptr inbounds nuw i8, ptr %.01218.i300, i64 56
  %i.ht = load double, ptr %i.hp, align 8, !tbaa !26
  %i.hu = getelementptr inbounds nuw i8, ptr %.01019.i299, i64 56
  store double %i.ht, ptr %i.hr, align 8, !tbaa !26
  %i.hv = getelementptr inbounds nuw i8, ptr %.01218.i300, i64 64
  %i.hw = load double, ptr %i.hs, align 8, !tbaa !26
  %i.hx = getelementptr inbounds nuw i8, ptr %.01019.i299, i64 64
  store double %i.hw, ptr %i.hu, align 8, !tbaa !26
  %i.hy = add nuw nsw i64 %.020.i298, 8           ; 2 uses
  %exitcond.not.i301.7 = icmp eq i64 %i.hy, %i.e
  br i1 %exitcond.not.i301.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit304, label %.lr.ph.i297, !llvm.loop !155

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit304:    ; preds = %.lr.ph.i297.prol.loopexit, %.lr.ph.i297, %middle.block583, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit, %.preheader49.i, %.preheader.i285, %_ZN6casadi12casadi_clearIdEEvPT_x.exit280, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread, %._crit_edge426, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit
  %i.hz = phi double [ %i.cb, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit ], [ 0.000000e+00, %_ZN6casadi12casadi_clearIdEEvPT_x.exit280 ], [ %i.cb, %._crit_edge426 ], [ %i.cb, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread ], [ %i.cb, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit ], [ %i.cb, %.preheader.i285 ], [ %i.cb, %.preheader49.i ], [ %i.cb, %middle.block583 ], [ %i.cb, %.lr.ph.i297 ], [ %i.cb, %.lr.ph.i297.prol.loopexit ] ; 5 uses
  %i.ia = phi i1 [ %i.bd, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit ], [ %i.bd, %_ZN6casadi12casadi_clearIdEEvPT_x.exit280 ], [ true, %._crit_edge426 ], [ true, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread ], [ false, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit ], [ false, %.preheader.i285 ], [ false, %.preheader49.i ], [ true, %middle.block583 ], [ true, %.lr.ph.i297 ], [ true, %.lr.ph.i297.prol.loopexit ] ; 7 uses
  %.0241401 = phi double [ 0.000000e+00, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit ], [ 0.000000e+00, %_ZN6casadi12casadi_clearIdEEvPT_x.exit280 ], [ %i.fy, %._crit_edge426 ], [ %i.fy, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread ], [ 0.000000e+00, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit ], [ 0.000000e+00, %.preheader.i285 ], [ 0.000000e+00, %.preheader49.i ], [ %i.fy, %middle.block583 ], [ %i.fy, %.lr.ph.i297 ], [ %i.fy, %.lr.ph.i297.prol.loopexit ] ; 3 uses
  %i.ib = fmul double %i.hz, %.0241401
  %i.ic = fcmp oeq double %i.ib, 0.000000e+00
  br i1 %i.ic, label %bb.d, label %.preheader415

.preheader415:                                    ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit304
  %i.id = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.e
  %i.ie = icmp ne ptr %0, null
  %or.cond.i310 = and i1 %i.ie, %.not.i           ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.if, i64 %i.e
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 12 uses
  %.not.i312 = icmp eq i64 %2, 0                  ; 2 uses
  %i.ii = icmp slt i64 %i.e, 1
  %i.ij = shl i64 %i.e, 3
  %scevgep = getelementptr i8, ptr %i.id, i64 %i.ij
  %i.ik = add i64 %i.c, -1
  %i.il = add i64 %i.e, -1                        ; 2 uses
  %min.iters.check681 = icmp ult i64 %i.c, 4
  %n.vec683 = and i64 %i.c, 9223372036854775804   ; 3 uses
  %cmp.n692 = icmp eq i64 %i.c, %n.vec683
  %xtraiter761 = and i64 %i.c, 3                  ; 3 uses
  %i.im = icmp ult i64 %i.ik, 3
  %unroll_iter766 = and i64 %i.c, 9223372036854775804
  %lcmp.mod763.not = icmp eq i64 %xtraiter761, 0
  %lcmp.mod765 = icmp ne i64 %xtraiter761, 0
  %min.iters.check667 = icmp ult i64 %i.c, 4
  %n.vec669 = and i64 %i.c, 9223372036854775804   ; 3 uses
  %cmp.n678 = icmp eq i64 %i.c, %n.vec669
  %min.iters.check653 = icmp ult i64 %i.e, 4
  %n.vec655 = and i64 %i.e, -4                    ; 3 uses
  %cmp.n664 = icmp eq i64 %i.e, %n.vec655
  %xtraiter779 = and i64 %i.e, 3                  ; 3 uses
  %i.in = icmp ult i64 %i.il, 3
  %unroll_iter784 = and i64 %i.e, -4
  %lcmp.mod781.not = icmp eq i64 %xtraiter779, 0
  %lcmp.mod783 = icmp ne i64 %xtraiter779, 0
  %min.iters.check639 = icmp ult i64 %i.e, 4
  %n.vec641 = and i64 %i.e, 9223372036854775804   ; 3 uses
  %cmp.n650 = icmp eq i64 %i.e, %n.vec641
  %min.iters.check626 = icmp ult i64 %i.e, 2
  %n.vec628 = and i64 %i.e, -2                    ; 3 uses
  %cmp.n636 = icmp eq i64 %i.e, %n.vec628
  %min.iters.check610 = icmp ult i64 %i.e, 4
  %bound0606 = icmp ult ptr %i.be, %i.bi
  %bound1607 = icmp ult ptr %i.bh, %scevgep
  %found.conflict608 = and i1 %bound0606, %bound1607
  %n.vec612 = and i64 %i.e, -4                    ; 3 uses
  %i.io = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.e
  %cmp.n623 = icmp eq i64 %i.e, %n.vec612
  %xtraiter786 = and i64 %i.e, 1
  %lcmp.mod787.not = icmp eq i64 %xtraiter786, 0
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.e
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.e
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.e
  %min.iters.check590 = icmp ult i64 %i.e, 4
  %bound0 = icmp ult ptr %i.bh, %i.bg
  %bound1 = icmp ult ptr %i.f, %i.bi
  %found.conflict = and i1 %bound0, %bound1
  %n.vec592 = and i64 %i.e, -4                    ; 3 uses
  %cmp.n603 = icmp eq i64 %i.e, %n.vec592
  %xtraiter789 = and i64 %i.e, 1
  %lcmp.mod790.not = icmp eq i64 %xtraiter789, 0
  %xtraiter792 = and i64 %i.e, 3                  ; 3 uses
  %i.is = icmp ult i64 %i.il, 3
  %unroll_iter797 = and i64 %i.e, -4
  %lcmp.mod794.not = icmp eq i64 %xtraiter792, 0
  %lcmp.mod796 = icmp ne i64 %xtraiter792, 0
  br label %bb.e

bb.d:                                             ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit304
  %.not.i305 = icmp ne ptr %1, null
  %or.cond.i306 = and i1 %.not.i305, %i.bj
  br i1 %or.cond.i306, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309.sink.split, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309

bb.e:                                             ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380, %.preheader415
  %.0250 = phi double [ %.1251, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380 ], [ 0.000000e+00, %.preheader415 ] ; 4 uses
  %.0249 = phi double [ %5, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380 ], [ 0.000000e+00, %.preheader415 ]
  %.0246 = phi double [ %i.wc, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380 ], [ 0.000000e+00, %.preheader415 ]
  %.0245 = phi double [ %13, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380 ], [ -1.000000e+00, %.preheader415 ]
  %.0244 = phi double [ %i.xr, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380 ], [ 0.000000e+00, %.preheader415 ]
  %.1242 = phi double [ %.2243, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380 ], [ %.0241401, %.preheader415 ] ; 5 uses
  %.0240 = phi double [ %i.sk, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380 ], [ %.0241401, %.preheader415 ] ; 3 uses
  %.0239 = phi double [ %i.sm, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380 ], [ %i.hz, %.preheader415 ] ; 2 uses
  %.0238 = phi i64 [ %i.iu, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380 ], [ 0, %.preheader415 ] ; 2 uses
  %i.it = phi <2 x double> [ %i.wg, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380 ], [ zeroinitializer, %.preheader415 ] ; 2 uses
  %i.iu = add nuw nsw i64 %.0238, 1
  br i1 %i.bj, label %.lr.ph429, label %._crit_edge430

.lr.ph429:                                        ; preds = %bb.e
  %i.iv = fneg double %.1242                      ; 2 uses
  br i1 %min.iters.check681, label %scalar.ph680.preheader, label %vector.ph682

vector.ph682:                                     ; preds = %.lr.ph429
  %broadcast.splatinsert684 = insertelement <2 x double> poison, double %i.iv, i64 0
  %broadcast.splat685 = shufflevector <2 x double> %broadcast.splatinsert684, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body686

vector.body686:                                   ; preds = %vector.body686, %vector.ph682
  %index687 = phi i64 [ 0, %vector.ph682 ], [ %index.next690, %vector.body686 ] ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index687 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16 ; 2 uses
  %wide.load688 = load <2 x double>, ptr %i.iw, align 8, !tbaa !26
  %wide.load689 = load <2 x double>, ptr %i.ix, align 8, !tbaa !26
  %i.iy = fmul <2 x double> %wide.load688, %broadcast.splat685
  %i.iz = fmul <2 x double> %wide.load689, %broadcast.splat685
  store <2 x double> %i.iy, ptr %i.iw, align 8, !tbaa !26
  store <2 x double> %i.iz, ptr %i.ix, align 8, !tbaa !26
  %index.next690 = add nuw i64 %index687, 4       ; 2 uses
  %i.ja = icmp eq i64 %index.next690, %n.vec683
  br i1 %i.ja, label %middle.block691, label %vector.body686, !llvm.loop !156

middle.block691:                                  ; preds = %vector.body686
  br i1 %cmp.n692, label %._crit_edge430, label %scalar.ph680.preheader

scalar.ph680.preheader:                           ; preds = %.lr.ph429, %middle.block691
  %.2255427.ph = phi i64 [ 0, %.lr.ph429 ], [ %n.vec683, %middle.block691 ]
  br label %scalar.ph680

scalar.ph680:                                     ; preds = %scalar.ph680.preheader, %scalar.ph680
  %.2255427 = phi i64 [ %i.je, %scalar.ph680 ], [ %.2255427.ph, %scalar.ph680.preheader ] ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.2255427 ; 2 uses
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !26
  %i.jd = fmul double %i.jc, %i.iv
  store double %i.jd, ptr %i.jb, align 8, !tbaa !26
  %i.je = add nuw nsw i64 %.2255427, 1            ; 2 uses
  %exitcond458.not = icmp eq i64 %i.je, %i.c
  br i1 %exitcond458.not, label %._crit_edge430, label %scalar.ph680, !llvm.loop !157

._crit_edge430:                                   ; preds = %scalar.ph680, %middle.block691, %bb.e
  br i1 %or.cond.i310, label %bb.f, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit334

bb.f:                                             ; preds = %._crit_edge430
  br i1 %.not.i312, label %.preheader.i324, label %.preheader49.i313

.preheader49.i313:                                ; preds = %bb.f
  br i1 %i.ia, label %.lr.ph54.preheader.i314, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit334

.lr.ph54.preheader.i314:                          ; preds = %.preheader49.i313
  %.pre.i315 = load i64, ptr %i.if, align 8, !tbaa !47
  br label %.lr.ph54.i316

.preheader.i324:                                  ; preds = %bb.f
  br i1 %i.ia, label %.lr.ph58.preheader.i325, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit334

.lr.ph58.preheader.i325:                          ; preds = %.preheader.i324
  %.pre63.i326 = load i64, ptr %i.if, align 8, !tbaa !47
  br label %.lr.ph58.i327

.loopexit48.i318:                                 ; preds = %.prol.loopexit751, %.lr.ph.i320.new, %.lr.ph54.i316
  %exitcond60.not.i319 = icmp eq i64 %i.jg, %i.e
  br i1 %exitcond60.not.i319, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit334, label %.lr.ph54.i316, !llvm.loop !146

.lr.ph54.i316:                                    ; preds = %.loopexit48.i318, %.lr.ph54.preheader.i314
  %i.jf = phi i64 [ %i.ji, %.loopexit48.i318 ], [ %.pre.i315, %.lr.ph54.preheader.i314 ] ; 7 uses
  %.04253.i317 = phi i64 [ %i.jg, %.loopexit48.i318 ], [ 0, %.lr.ph54.preheader.i314 ] ; 2 uses
  %i.jg = add nuw nsw i64 %.04253.i317, 1         ; 3 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.jg
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !47 ; 5 uses
  %i.jj = icmp slt i64 %i.jf, %i.ji
  br i1 %i.jj, label %.lr.ph.i320, label %.loopexit48.i318

.lr.ph.i320:                                      ; preds = %.lr.ph54.i316
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.04253.i317 ; 4 uses
  %.promoted.i321 = load double, ptr %i.jk, align 8, !tbaa !26 ; 2 uses
  %i.jl = sub i64 %i.ji, %i.jf
  %.neg803 = add i64 %i.jf, 1
  %xtraiter752 = and i64 %i.jl, 1
  %lcmp.mod753.not = icmp eq i64 %xtraiter752, 0
  br i1 %lcmp.mod753.not, label %.prol.loopexit751, label %.prol.loopexit751.unr-lcssa

.prol.loopexit751.unr-lcssa:                      ; preds = %.lr.ph.i320
  %i.jm = getelementptr inbounds [8 x i8], ptr %0, i64 %i.jf
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !26
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.jf
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !47
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.jp
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !26
  %i.js = tail call double @llvm.fmuladd.f64(double %i.jn, double %i.jr, double %.promoted.i321) ; 2 uses
  store double %i.js, ptr %i.jk, align 8, !tbaa !26
  %i.jt = add nsw i64 %i.jf, 1
  br label %.prol.loopexit751

.prol.loopexit751:                                ; preds = %.prol.loopexit751.unr-lcssa, %.lr.ph.i320
  %.unr755 = phi double [ %.promoted.i321, %.lr.ph.i320 ], [ %i.js, %.prol.loopexit751.unr-lcssa ]
  %.052.i322.unr = phi i64 [ %i.jf, %.lr.ph.i320 ], [ %i.jt, %.prol.loopexit751.unr-lcssa ]
  %i.ju = icmp eq i64 %i.ji, %.neg803
  br i1 %i.ju, label %.loopexit48.i318, label %.lr.ph.i320.new

.lr.ph.i320.new:                                  ; preds = %.prol.loopexit751, %.lr.ph.i320.new
  %i.jv = phi double [ %i.kk, %.lr.ph.i320.new ], [ %.unr755, %.prol.loopexit751 ]
  %.052.i322 = phi i64 [ %i.kl, %.lr.ph.i320.new ], [ %.052.i322.unr, %.prol.loopexit751 ] ; 4 uses
  %i.jw = getelementptr inbounds [8 x i8], ptr %0, i64 %.052.i322
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !26
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %.052.i322
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !47
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.jz
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !26
  %i.kc = tail call double @llvm.fmuladd.f64(double %i.jx, double %i.kb, double %i.jv) ; 2 uses
  store double %i.kc, ptr %i.jk, align 8, !tbaa !26
  %i.kd = add nsw i64 %.052.i322, 1               ; 2 uses
  %i.ke = getelementptr inbounds [8 x i8], ptr %0, i64 %i.kd
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !26
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.kd
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !47
  %i.ki = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.kh
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !26
  %i.kk = tail call double @llvm.fmuladd.f64(double %i.kf, double %i.kj, double %i.kc) ; 2 uses
  store double %i.kk, ptr %i.jk, align 8, !tbaa !26
  %i.kl = add nsw i64 %.052.i322, 2               ; 2 uses
  %exitcond.not.i323.1 = icmp eq i64 %i.kl, %i.ji
  br i1 %exitcond.not.i323.1, label %.loopexit48.i318, label %.lr.ph.i320.new, !llvm.loop !147

.loopexit.i329:                                   ; preds = %.prol.loopexit757, %.lr.ph56.i331.new, %.lr.ph58.i327
  %exitcond62.not.i330 = icmp eq i64 %i.kn, %i.e
  br i1 %exitcond62.not.i330, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit334, label %.lr.ph58.i327, !llvm.loop !148

.lr.ph58.i327:                                    ; preds = %.loopexit.i329, %.lr.ph58.preheader.i325
  %i.km = phi i64 [ %i.kp, %.loopexit.i329 ], [ %.pre63.i326, %.lr.ph58.preheader.i325 ] ; 7 uses
  %.14357.i328 = phi i64 [ %i.kn, %.loopexit.i329 ], [ 0, %.lr.ph58.preheader.i325 ] ; 2 uses
  %i.kn = add nuw nsw i64 %.14357.i328, 1         ; 3 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.kn
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !47 ; 5 uses
  %i.kq = icmp slt i64 %i.km, %i.kp
  br i1 %i.kq, label %.lr.ph56.i331, label %.loopexit.i329

.lr.ph56.i331:                                    ; preds = %.lr.ph58.i327
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.14357.i328 ; 3 uses
  %i.ks = sub i64 %i.kp, %i.km
  %.neg804 = add i64 %i.km, 1
  %xtraiter758 = and i64 %i.ks, 1
  %lcmp.mod759.not = icmp eq i64 %xtraiter758, 0
  br i1 %lcmp.mod759.not, label %.prol.loopexit757, label %.prol.loopexit757.unr-lcssa

.prol.loopexit757.unr-lcssa:                      ; preds = %.lr.ph56.i331
  %i.kt = getelementptr inbounds [8 x i8], ptr %0, i64 %i.km
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !26
  %i.kv = load double, ptr %i.kr, align 8, !tbaa !26
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.km
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !47
  %i.ky = getelementptr inbounds [8 x i8], ptr %4, i64 %i.kx ; 2 uses
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !26
  %i.la = tail call double @llvm.fmuladd.f64(double %i.ku, double %i.kv, double %i.kz)
  store double %i.la, ptr %i.ky, align 8, !tbaa !26
  %i.lb = add nsw i64 %i.km, 1
  br label %.prol.loopexit757

.prol.loopexit757:                                ; preds = %.prol.loopexit757.unr-lcssa, %.lr.ph56.i331
  %.155.i332.unr = phi i64 [ %i.km, %.lr.ph56.i331 ], [ %i.lb, %.prol.loopexit757.unr-lcssa ]
  %i.lc = icmp eq i64 %i.kp, %.neg804
  br i1 %i.lc, label %.loopexit.i329, label %.lr.ph56.i331.new

.lr.ph56.i331.new:                                ; preds = %.prol.loopexit757, %.lr.ph56.i331.new
  %.155.i332 = phi i64 [ %i.lu, %.lr.ph56.i331.new ], [ %.155.i332.unr, %.prol.loopexit757 ] ; 4 uses
  %i.ld = getelementptr inbounds [8 x i8], ptr %0, i64 %.155.i332
  %i.le = load double, ptr %i.ld, align 8, !tbaa !26
  %i.lf = load double, ptr %i.kr, align 8, !tbaa !26
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %.155.i332
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !47
  %i.li = getelementptr inbounds [8 x i8], ptr %4, i64 %i.lh ; 2 uses
  %i.lj = load double, ptr %i.li, align 8, !tbaa !26
  %i.lk = tail call double @llvm.fmuladd.f64(double %i.le, double %i.lf, double %i.lj)
  store double %i.lk, ptr %i.li, align 8, !tbaa !26
  %i.ll = add nsw i64 %.155.i332, 1               ; 2 uses
  %i.lm = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ll
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !26
  %i.lo = load double, ptr %i.kr, align 8, !tbaa !26
  %i.lp = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.ll
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !47
  %i.lr = getelementptr inbounds [8 x i8], ptr %4, i64 %i.lq ; 2 uses
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !26
  %i.lt = tail call double @llvm.fmuladd.f64(double %i.ln, double %i.lo, double %i.ls)
  store double %i.lt, ptr %i.lr, align 8, !tbaa !26
  %i.lu = add nsw i64 %.155.i332, 2               ; 2 uses
  %exitcond61.not.i333.1 = icmp eq i64 %i.lu, %i.kp
  br i1 %exitcond61.not.i333.1, label %.loopexit.i329, label %.lr.ph56.i331.new, !llvm.loop !149

_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit334: ; preds = %.loopexit48.i318, %.loopexit.i329, %._crit_edge430, %.preheader49.i313, %.preheader.i324
  br i1 %i.bj, label %.lr.ph.i.i336.preheader, label %.loopexit

.lr.ph.i.i336.preheader:                          ; preds = %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit334
  br i1 %i.im, label %.lr.ph.i.i336.epil.preheader, label %.lr.ph.i.i336

.lr.ph.i.i336:                                    ; preds = %.lr.ph.i.i336.preheader, %.lr.ph.i.i336
  %.012.i.i337 = phi double [ %i.mg, %.lr.ph.i.i336 ], [ 0.000000e+00, %.lr.ph.i.i336.preheader ]
  %.0710.i.i339 = phi ptr [ %i.me, %.lr.ph.i.i336 ], [ %4, %.lr.ph.i.i336.preheader ] ; 5 uses
  %niter767 = phi i64 [ %niter767.next.3, %.lr.ph.i.i336 ], [ 0, %.lr.ph.i.i336.preheader ]
  %i.lv = getelementptr i8, ptr %.0710.i.i339, i64 8
  %i.lw = load double, ptr %.0710.i.i339, align 8, !tbaa !26 ; 2 uses
  %i.lx = tail call double @llvm.fmuladd.f64(double %i.lw, double %i.lw, double %.012.i.i337)
  %i.ly = getelementptr i8, ptr %.0710.i.i339, i64 16
  %i.lz = load double, ptr %i.lv, align 8, !tbaa !26 ; 2 uses
  %i.ma = tail call double @llvm.fmuladd.f64(double %i.lz, double %i.lz, double %i.lx)
  %i.mb = getelementptr i8, ptr %.0710.i.i339, i64 24
  %i.mc = load double, ptr %i.ly, align 8, !tbaa !26 ; 2 uses
  %i.md = tail call double @llvm.fmuladd.f64(double %i.mc, double %i.mc, double %i.ma)
  %i.me = getelementptr i8, ptr %.0710.i.i339, i64 32 ; 2 uses
  %i.mf = load double, ptr %i.mb, align 8, !tbaa !26 ; 2 uses
  %i.mg = tail call double @llvm.fmuladd.f64(double %i.mf, double %i.mf, double %i.md) ; 3 uses
  %niter767.next.3 = add nuw nsw i64 %niter767, 4 ; 2 uses
  %niter767.ncmp.3 = icmp eq i64 %niter767.next.3, %unroll_iter766
  br i1 %niter767.ncmp.3, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit341.unr-lcssa, label %.lr.ph.i.i336, !llvm.loop !142

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit341.unr-lcssa: ; preds = %.lr.ph.i.i336
  br i1 %lcmp.mod763.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit341, label %.lr.ph.i.i336.epil.preheader

.lr.ph.i.i336.epil.preheader:                     ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit341.unr-lcssa, %.lr.ph.i.i336.preheader
  %.012.i.i337.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i336.preheader ], [ %i.mg, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit341.unr-lcssa ]
  %.0710.i.i339.epil.init = phi ptr [ %4, %.lr.ph.i.i336.preheader ], [ %i.me, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit341.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod765)
  br label %.lr.ph.i.i336.epil

.lr.ph.i.i336.epil:                               ; preds = %.lr.ph.i.i336.epil, %.lr.ph.i.i336.epil.preheader
  %.012.i.i337.epil = phi double [ %i.mj, %.lr.ph.i.i336.epil ], [ %.012.i.i337.epil.init, %.lr.ph.i.i336.epil.preheader ]
  %.0710.i.i339.epil = phi ptr [ %i.mh, %.lr.ph.i.i336.epil ], [ %.0710.i.i339.epil.init, %.lr.ph.i.i336.epil.preheader ] ; 2 uses
  %epil.iter762 = phi i64 [ %epil.iter762.next, %.lr.ph.i.i336.epil ], [ 0, %.lr.ph.i.i336.epil.preheader ]
  %i.mh = getelementptr i8, ptr %.0710.i.i339.epil, i64 8
  %i.mi = load double, ptr %.0710.i.i339.epil, align 8, !tbaa !26 ; 2 uses
  %i.mj = tail call double @llvm.fmuladd.f64(double %i.mi, double %i.mi, double %.012.i.i337.epil) ; 2 uses
  %epil.iter762.next = add i64 %epil.iter762, 1   ; 2 uses
  %epil.iter762.cmp.not = icmp eq i64 %epil.iter762.next, %xtraiter761
  br i1 %epil.iter762.cmp.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit341, label %.lr.ph.i.i336.epil, !llvm.loop !158

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit341:    ; preds = %.lr.ph.i.i336.epil, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit341.unr-lcssa
  %.lcssa = phi double [ %i.mg, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit341.unr-lcssa ], [ %i.mj, %.lr.ph.i.i336.epil ]
  %i.mk = tail call noundef double @sqrt(double noundef %.lcssa) #24 ; 10 uses
  %i.ml = fcmp ogt double %i.mk, 0.000000e+00
  br i1 %i.ml, label %.lr.ph432, label %.loopexit

.lr.ph432:                                        ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit341
  %i.mm = fdiv nnan double 1.000000e+00, %i.mk    ; 2 uses
  br i1 %min.iters.check667, label %scalar.ph666.preheader, label %vector.ph668

vector.ph668:                                     ; preds = %.lr.ph432
  %broadcast.splatinsert670 = insertelement <2 x double> poison, double %i.mm, i64 0
  %broadcast.splat671 = shufflevector <2 x double> %broadcast.splatinsert670, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body672

vector.body672:                                   ; preds = %vector.body672, %vector.ph668
  %index673 = phi i64 [ 0, %vector.ph668 ], [ %index.next676, %vector.body672 ] ; 2 uses
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index673 ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16 ; 2 uses
  %wide.load674 = load <2 x double>, ptr %i.mn, align 8, !tbaa !26
  %wide.load675 = load <2 x double>, ptr %i.mo, align 8, !tbaa !26
  %i.mp = fmul <2 x double> %broadcast.splat671, %wide.load674
  %i.mq = fmul <2 x double> %broadcast.splat671, %wide.load675
  store <2 x double> %i.mp, ptr %i.mn, align 8, !tbaa !26
  store <2 x double> %i.mq, ptr %i.mo, align 8, !tbaa !26
  %index.next676 = add nuw i64 %index673, 4       ; 2 uses
  %i.mr = icmp eq i64 %index.next676, %n.vec669
  br i1 %i.mr, label %middle.block677, label %vector.body672, !llvm.loop !159

middle.block677:                                  ; preds = %vector.body672
  br i1 %cmp.n678, label %._crit_edge433, label %scalar.ph666.preheader

scalar.ph666.preheader:                           ; preds = %.lr.ph432, %middle.block677
  %.3256431.ph = phi i64 [ 0, %.lr.ph432 ], [ %n.vec669, %middle.block677 ]
  br label %scalar.ph666

scalar.ph666:                                     ; preds = %scalar.ph666.preheader, %scalar.ph666
  %.3256431 = phi i64 [ %i.mv, %scalar.ph666 ], [ %.3256431.ph, %scalar.ph666.preheader ] ; 2 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.3256431 ; 2 uses
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !26
  %i.mu = fmul double %i.mm, %i.mt
  store double %i.mu, ptr %i.ms, align 8, !tbaa !26
  %i.mv = add nuw nsw i64 %.3256431, 1            ; 2 uses
  %exitcond459.not = icmp eq i64 %i.mv, %i.c
  br i1 %exitcond459.not, label %._crit_edge433, label %scalar.ph666, !llvm.loop !160

._crit_edge433:                                   ; preds = %scalar.ph666, %middle.block677
  %i.mw = fmul double %.1242, %.1242
  %i.mx = tail call double @llvm.fmuladd.f64(double %.0250, double %.0250, double %i.mw)
  %i.my = tail call double @llvm.fmuladd.f64(double %i.mk, double %i.mk, double %i.mx)
  %i.mz = fadd double %i.my, 0.000000e+00
  %i.na = tail call double @sqrt(double noundef %i.mz) #24 ; 3 uses
  br i1 %i.ia, label %.lr.ph436, label %._crit_edge437

.lr.ph436:                                        ; preds = %._crit_edge433
  %i.nb = fneg double %i.mk                       ; 2 uses
  br i1 %min.iters.check653, label %scalar.ph652.preheader, label %vector.ph654

vector.ph654:                                     ; preds = %.lr.ph436
  %broadcast.splatinsert656 = insertelement <2 x double> poison, double %i.nb, i64 0
  %broadcast.splat657 = shufflevector <2 x double> %broadcast.splatinsert656, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body658

vector.body658:                                   ; preds = %vector.body658, %vector.ph654
  %index659 = phi i64 [ 0, %vector.ph654 ], [ %index.next662, %vector.body658 ] ; 2 uses
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index659 ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 16 ; 2 uses
  %wide.load660 = load <2 x double>, ptr %i.nc, align 8, !tbaa !26
  %wide.load661 = load <2 x double>, ptr %i.nd, align 8, !tbaa !26
  %i.ne = fmul <2 x double> %wide.load660, %broadcast.splat657
  %i.nf = fmul <2 x double> %wide.load661, %broadcast.splat657
  store <2 x double> %i.ne, ptr %i.nc, align 8, !tbaa !26
  store <2 x double> %i.nf, ptr %i.nd, align 8, !tbaa !26
  %index.next662 = add nuw i64 %index659, 4       ; 2 uses
  %i.ng = icmp eq i64 %index.next662, %n.vec655
  br i1 %i.ng, label %middle.block663, label %vector.body658, !llvm.loop !161

middle.block663:                                  ; preds = %vector.body658
  br i1 %cmp.n664, label %._crit_edge437, label %scalar.ph652.preheader

scalar.ph652.preheader:                           ; preds = %.lr.ph436, %middle.block663
  %.4257434.ph = phi i64 [ 0, %.lr.ph436 ], [ %n.vec655, %middle.block663 ]
  br label %scalar.ph652

scalar.ph652:                                     ; preds = %scalar.ph652.preheader, %scalar.ph652
  %.4257434 = phi i64 [ %i.nk, %scalar.ph652 ], [ %.4257434.ph, %scalar.ph652.preheader ] ; 2 uses
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.4257434 ; 2 uses
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !26
  %i.nj = fmul double %i.ni, %i.nb
  store double %i.nj, ptr %i.nh, align 8, !tbaa !26
  %i.nk = add nuw nsw i64 %.4257434, 1            ; 2 uses
  %exitcond460.not = icmp eq i64 %i.nk, %i.e
  br i1 %exitcond460.not, label %._crit_edge437, label %scalar.ph652, !llvm.loop !162

._crit_edge437:                                   ; preds = %scalar.ph652, %middle.block663, %._crit_edge433
  br i1 %or.cond.i310, label %bb.g, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit366

bb.g:                                             ; preds = %._crit_edge437
  br i1 %.not.i312, label %.preheader49.i345, label %.preheader.i356

.preheader49.i345:                                ; preds = %bb.g
  br i1 %i.ia, label %.lr.ph54.preheader.i346, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit373

.lr.ph54.preheader.i346:                          ; preds = %.preheader49.i345
  %.pre.i347 = load i64, ptr %i.if, align 8, !tbaa !47
  br label %.lr.ph54.i348

.preheader.i356:                                  ; preds = %bb.g
  br i1 %i.ia, label %.lr.ph58.preheader.i357, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit373

.lr.ph58.preheader.i357:                          ; preds = %.preheader.i356
  %.pre63.i358 = load i64, ptr %i.if, align 8, !tbaa !47
  br label %.lr.ph58.i359

.loopexit48.i350:                                 ; preds = %.prol.loopexit774, %.lr.ph.i352.new, %.lr.ph54.i348
  %exitcond60.not.i351 = icmp eq i64 %i.nm, %i.e
  br i1 %exitcond60.not.i351, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit366, label %.lr.ph54.i348, !llvm.loop !146

.lr.ph54.i348:                                    ; preds = %.loopexit48.i350, %.lr.ph54.preheader.i346
  %i.nl = phi i64 [ %i.no, %.loopexit48.i350 ], [ %.pre.i347, %.lr.ph54.preheader.i346 ] ; 7 uses
  %.04253.i349 = phi i64 [ %i.nm, %.loopexit48.i350 ], [ 0, %.lr.ph54.preheader.i346 ] ; 2 uses
  %i.nm = add nuw nsw i64 %.04253.i349, 1         ; 3 uses
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.nm
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !47 ; 5 uses
  %i.np = icmp slt i64 %i.nl, %i.no
  br i1 %i.np, label %.lr.ph.i352, label %.loopexit48.i350

.lr.ph.i352:                                      ; preds = %.lr.ph54.i348
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.04253.i349 ; 4 uses
  %.promoted.i353 = load double, ptr %i.nq, align 8, !tbaa !26 ; 2 uses
  %i.nr = sub i64 %i.no, %i.nl
  %.neg806 = add i64 %i.nl, 1
  %xtraiter775 = and i64 %i.nr, 1
  %lcmp.mod776.not = icmp eq i64 %xtraiter775, 0
  br i1 %lcmp.mod776.not, label %.prol.loopexit774, label %.prol.loopexit774.unr-lcssa

.prol.loopexit774.unr-lcssa:                      ; preds = %.lr.ph.i352
  %i.ns = getelementptr inbounds [8 x i8], ptr %0, i64 %i.nl
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !26
  %i.nu = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.nl
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !47
  %i.nw = getelementptr inbounds [8 x i8], ptr %4, i64 %i.nv
  %i.nx = load double, ptr %i.nw, align 8, !tbaa !26
  %i.ny = tail call double @llvm.fmuladd.f64(double %i.nt, double %i.nx, double %.promoted.i353) ; 2 uses
  store double %i.ny, ptr %i.nq, align 8, !tbaa !26
  %i.nz = add nsw i64 %i.nl, 1
  br label %.prol.loopexit774

.prol.loopexit774:                                ; preds = %.prol.loopexit774.unr-lcssa, %.lr.ph.i352
  %.unr778 = phi double [ %.promoted.i353, %.lr.ph.i352 ], [ %i.ny, %.prol.loopexit774.unr-lcssa ]
  %.052.i354.unr = phi i64 [ %i.nl, %.lr.ph.i352 ], [ %i.nz, %.prol.loopexit774.unr-lcssa ]
  %i.oa = icmp eq i64 %i.no, %.neg806
  br i1 %i.oa, label %.loopexit48.i350, label %.lr.ph.i352.new

.lr.ph.i352.new:                                  ; preds = %.prol.loopexit774, %.lr.ph.i352.new
  %i.ob = phi double [ %i.oq, %.lr.ph.i352.new ], [ %.unr778, %.prol.loopexit774 ]
  %.052.i354 = phi i64 [ %i.or, %.lr.ph.i352.new ], [ %.052.i354.unr, %.prol.loopexit774 ] ; 4 uses
  %i.oc = getelementptr inbounds [8 x i8], ptr %0, i64 %.052.i354
  %i.od = load double, ptr %i.oc, align 8, !tbaa !26
  %i.oe = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %.052.i354
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !47
  %i.og = getelementptr inbounds [8 x i8], ptr %4, i64 %i.of
  %i.oh = load double, ptr %i.og, align 8, !tbaa !26
  %i.oi = tail call double @llvm.fmuladd.f64(double %i.od, double %i.oh, double %i.ob) ; 2 uses
  store double %i.oi, ptr %i.nq, align 8, !tbaa !26
  %i.oj = add nsw i64 %.052.i354, 1               ; 2 uses
  %i.ok = getelementptr inbounds [8 x i8], ptr %0, i64 %i.oj
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !26
  %i.om = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.oj
  %i.on = load i64, ptr %i.om, align 8, !tbaa !47
  %i.oo = getelementptr inbounds [8 x i8], ptr %4, i64 %i.on
  %i.op = load double, ptr %i.oo, align 8, !tbaa !26
  %i.oq = tail call double @llvm.fmuladd.f64(double %i.ol, double %i.op, double %i.oi) ; 2 uses
  store double %i.oq, ptr %i.nq, align 8, !tbaa !26
  %i.or = add nsw i64 %.052.i354, 2               ; 2 uses
  %exitcond.not.i355.1 = icmp eq i64 %i.or, %i.no
  br i1 %exitcond.not.i355.1, label %.loopexit48.i350, label %.lr.ph.i352.new, !llvm.loop !147

.loopexit.i361:                                   ; preds = %.prol.loopexit769, %.lr.ph56.i363.new, %.lr.ph58.i359
  %exitcond62.not.i362 = icmp eq i64 %i.ot, %i.e
  br i1 %exitcond62.not.i362, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit366, label %.lr.ph58.i359, !llvm.loop !148

.lr.ph58.i359:                                    ; preds = %.loopexit.i361, %.lr.ph58.preheader.i357
  %i.os = phi i64 [ %i.ov, %.loopexit.i361 ], [ %.pre63.i358, %.lr.ph58.preheader.i357 ] ; 7 uses
  %.14357.i360 = phi i64 [ %i.ot, %.loopexit.i361 ], [ 0, %.lr.ph58.preheader.i357 ] ; 2 uses
  %i.ot = add nuw nsw i64 %.14357.i360, 1         ; 3 uses
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.ot
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !47 ; 5 uses
  %i.ow = icmp slt i64 %i.os, %i.ov
  br i1 %i.ow, label %.lr.ph56.i363, label %.loopexit.i361

.lr.ph56.i363:                                    ; preds = %.lr.ph58.i359
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.14357.i360 ; 3 uses
  %i.oy = sub i64 %i.ov, %i.os
  %.neg805 = add i64 %i.os, 1
  %xtraiter770 = and i64 %i.oy, 1
  %lcmp.mod771.not = icmp eq i64 %xtraiter770, 0
  br i1 %lcmp.mod771.not, label %.prol.loopexit769, label %.prol.loopexit769.unr-lcssa

.prol.loopexit769.unr-lcssa:                      ; preds = %.lr.ph56.i363
  %i.oz = getelementptr inbounds [8 x i8], ptr %0, i64 %i.os
  %i.pa = load double, ptr %i.oz, align 8, !tbaa !26
  %i.pb = load double, ptr %i.ox, align 8, !tbaa !26
  %i.pc = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.os
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !47
  %i.pe = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.pd ; 2 uses
  %i.pf = load double, ptr %i.pe, align 8, !tbaa !26
  %i.pg = tail call double @llvm.fmuladd.f64(double %i.pa, double %i.pb, double %i.pf)
  store double %i.pg, ptr %i.pe, align 8, !tbaa !26
  %i.ph = add nsw i64 %i.os, 1
  br label %.prol.loopexit769

.prol.loopexit769:                                ; preds = %.prol.loopexit769.unr-lcssa, %.lr.ph56.i363
  %.155.i364.unr = phi i64 [ %i.os, %.lr.ph56.i363 ], [ %i.ph, %.prol.loopexit769.unr-lcssa ]
  %i.pi = icmp eq i64 %i.ov, %.neg805
  br i1 %i.pi, label %.loopexit.i361, label %.lr.ph56.i363.new

.lr.ph56.i363.new:                                ; preds = %.prol.loopexit769, %.lr.ph56.i363.new
  %.155.i364 = phi i64 [ %i.qa, %.lr.ph56.i363.new ], [ %.155.i364.unr, %.prol.loopexit769 ] ; 4 uses
  %i.pj = getelementptr inbounds [8 x i8], ptr %0, i64 %.155.i364
  %i.pk = load double, ptr %i.pj, align 8, !tbaa !26
  %i.pl = load double, ptr %i.ox, align 8, !tbaa !26
  %i.pm = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %.155.i364
  %i.pn = load i64, ptr %i.pm, align 8, !tbaa !47
  %i.po = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.pn ; 2 uses
  %i.pp = load double, ptr %i.po, align 8, !tbaa !26
  %i.pq = tail call double @llvm.fmuladd.f64(double %i.pk, double %i.pl, double %i.pp)
  store double %i.pq, ptr %i.po, align 8, !tbaa !26
  %i.pr = add nsw i64 %.155.i364, 1               ; 2 uses
  %i.ps = getelementptr inbounds [8 x i8], ptr %0, i64 %i.pr
  %i.pt = load double, ptr %i.ps, align 8, !tbaa !26
  %i.pu = load double, ptr %i.ox, align 8, !tbaa !26
  %i.pv = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.pr
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !47
  %i.px = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.pw ; 2 uses
  %i.py = load double, ptr %i.px, align 8, !tbaa !26
  %i.pz = tail call double @llvm.fmuladd.f64(double %i.pt, double %i.pu, double %i.py)
  store double %i.pz, ptr %i.px, align 8, !tbaa !26
  %i.qa = add nsw i64 %.155.i364, 2               ; 2 uses
  %exitcond61.not.i365.1 = icmp eq i64 %i.qa, %i.ov
  br i1 %exitcond61.not.i365.1, label %.loopexit.i361, label %.lr.ph56.i363.new, !llvm.loop !149

_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit366: ; preds = %.loopexit.i361, %.loopexit48.i350, %._crit_edge437
  br i1 %i.ia, label %.lr.ph.i.i368.preheader, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit373

.lr.ph.i.i368.preheader:                          ; preds = %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit366
  br i1 %i.in, label %.lr.ph.i.i368.epil.preheader, label %.lr.ph.i.i368

.lr.ph.i.i368:                                    ; preds = %.lr.ph.i.i368.preheader, %.lr.ph.i.i368
  %.012.i.i369 = phi double [ %i.qm, %.lr.ph.i.i368 ], [ 0.000000e+00, %.lr.ph.i.i368.preheader ]
  %.0710.i.i371 = phi ptr [ %i.qk, %.lr.ph.i.i368 ], [ %i.f, %.lr.ph.i.i368.preheader ] ; 5 uses
  %niter785 = phi i64 [ %niter785.next.3, %.lr.ph.i.i368 ], [ 0, %.lr.ph.i.i368.preheader ]
end_hunk_0
begin_hunk_1_@_ZN6casadi24casadi_lsqr_single_solveIdEEiPKT_PS1_xPKxS4_:bb.a

.lr.ph441.preheader718:                           ; preds = %.lr.ph441.preheader, %middle.block635
  %.6259440.ph = phi i64 [ 0, %.lr.ph441.preheader ], [ %n.vec628, %middle.block635 ]
  br label %.lr.ph441

.lr.ph441:                                        ; preds = %.lr.ph441.preheader718, %.lr.ph441
  %.6259440 = phi i64 [ %i.sz, %.lr.ph441 ], [ %.6259440.ph, %.lr.ph441.preheader718 ] ; 3 uses
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.6259440
  %i.sw = load double, ptr %i.sv, align 8, !tbaa !26
  %i.sx = fdiv double %i.sw, %.sink.i
  %i.sy = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.6259440
  store double %i.sx, ptr %i.sy, align 8, !tbaa !26
  %i.sz = add nuw nsw i64 %.6259440, 1            ; 2 uses
  %exitcond462.not = icmp eq i64 %i.sz, %i.e
  br i1 %exitcond462.not, label %.lr.ph443.preheader, label %.lr.ph441, !llvm.loop !167

.lr.ph443.preheader:                              ; preds = %.lr.ph441, %middle.block635
  %brmerge = select i1 %min.iters.check610, i1 true, i1 %found.conflict608
  br i1 %brmerge, label %.lr.ph443.preheader717, label %vector.ph611

vector.ph611:                                     ; preds = %.lr.ph443.preheader
  %broadcast.splatinsert613 = insertelement <2 x double> poison, double %i.so, i64 0
  %broadcast.splat614 = shufflevector <2 x double> %broadcast.splatinsert613, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body615

vector.body615:                                   ; preds = %vector.body615, %vector.ph611
  %index616 = phi i64 [ 0, %vector.ph611 ], [ %index.next621, %vector.body615 ] ; 3 uses
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index616 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 16
  %wide.load617 = load <2 x double>, ptr %i.ta, align 8, !tbaa !26, !alias.scope !186
  %wide.load618 = load <2 x double>, ptr %i.tb, align 8, !tbaa !26, !alias.scope !186
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %index616 ; 3 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 16 ; 2 uses
  %wide.load619 = load <2 x double>, ptr %i.tc, align 8, !tbaa !26, !alias.scope !187, !noalias !186
  %wide.load620 = load <2 x double>, ptr %i.td, align 8, !tbaa !26, !alias.scope !187, !noalias !186
  %i.te = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat614, <2 x double> %wide.load617, <2 x double> %wide.load619)
  %i.tf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat614, <2 x double> %wide.load618, <2 x double> %wide.load620)
  store <2 x double> %i.te, ptr %i.tc, align 8, !tbaa !26, !alias.scope !187, !noalias !186
  store <2 x double> %i.tf, ptr %i.td, align 8, !tbaa !26, !alias.scope !187, !noalias !186
  %index.next621 = add nuw i64 %index616, 4       ; 2 uses
  %i.tg = icmp eq i64 %index.next621, %n.vec612
  br i1 %i.tg, label %middle.block622, label %vector.body615, !llvm.loop !171

middle.block622:                                  ; preds = %vector.body615
  br i1 %cmp.n623, label %.lr.ph445.preheader, label %.lr.ph443.preheader717

.lr.ph443.preheader717:                           ; preds = %.lr.ph443.preheader, %middle.block622
  %.7260442.ph = phi i64 [ %n.vec612, %middle.block622 ], [ 0, %.lr.ph443.preheader ] ; 5 uses
  %.neg807 = or disjoint i64 %.7260442.ph, 1
  br i1 %lcmp.mod787.not, label %.lr.ph443.prol.loopexit, label %.lr.ph443.prol

.lr.ph443.prol:                                   ; preds = %.lr.ph443.preheader717
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.7260442.ph
  %i.ti = load double, ptr %i.th, align 8, !tbaa !26
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %.7260442.ph ; 2 uses
  %i.tk = load double, ptr %i.tj, align 8, !tbaa !26
  %i.tl = tail call double @llvm.fmuladd.f64(double %i.so, double %i.ti, double %i.tk)
  store double %i.tl, ptr %i.tj, align 8, !tbaa !26
  %i.tm = or disjoint i64 %.7260442.ph, 1
  br label %.lr.ph443.prol.loopexit

.lr.ph443.prol.loopexit:                          ; preds = %.lr.ph443.prol, %.lr.ph443.preheader717
  %.7260442.unr = phi i64 [ %.7260442.ph, %.lr.ph443.preheader717 ], [ %i.tm, %.lr.ph443.prol ]
  %i.tn = icmp eq i64 %i.e, %.neg807
  br i1 %i.tn, label %.lr.ph445.preheader, label %.lr.ph443

.lr.ph443:                                        ; preds = %.lr.ph443.prol.loopexit, %.lr.ph443
  %.7260442 = phi i64 [ %i.tz, %.lr.ph443 ], [ %.7260442.unr, %.lr.ph443.prol.loopexit ] ; 4 uses
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.7260442
  %i.tp = load double, ptr %i.to, align 8, !tbaa !26
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %.7260442 ; 2 uses
  %i.tr = load double, ptr %i.tq, align 8, !tbaa !26
  %i.ts = tail call double @llvm.fmuladd.f64(double %i.so, double %i.tp, double %i.tr)
  store double %i.ts, ptr %i.tq, align 8, !tbaa !26
  %i.tt = add nuw nsw i64 %.7260442, 1            ; 2 uses
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.tt
  %i.tv = load double, ptr %i.tu, align 8, !tbaa !26
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.tt ; 2 uses
  %i.tx = load double, ptr %i.tw, align 8, !tbaa !26
  %i.ty = tail call double @llvm.fmuladd.f64(double %i.so, double %i.tv, double %i.tx)
  store double %i.ty, ptr %i.tw, align 8, !tbaa !26
  %i.tz = add nuw nsw i64 %.7260442, 2            ; 2 uses
  %exitcond463.not.1 = icmp eq i64 %i.tz, %i.e
  br i1 %exitcond463.not.1, label %.lr.ph445.preheader, label %.lr.ph443, !llvm.loop !172

.lr.ph445.preheader:                              ; preds = %.lr.ph443.prol.loopexit, %.lr.ph443, %middle.block622
  %brmerge833 = select i1 %min.iters.check590, i1 true, i1 %found.conflict
  br i1 %brmerge833, label %.lr.ph445.preheader716, label %vector.ph591

vector.ph591:                                     ; preds = %.lr.ph445.preheader
  %broadcast.splatinsert593 = insertelement <2 x double> poison, double %i.sq, i64 0
  %broadcast.splat594 = shufflevector <2 x double> %broadcast.splatinsert593, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body595

vector.body595:                                   ; preds = %vector.body595, %vector.ph591
  %index596 = phi i64 [ 0, %vector.ph591 ], [ %index.next601, %vector.body595 ] ; 3 uses
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index596 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 16
  %wide.load597 = load <2 x double>, ptr %i.ua, align 8, !tbaa !26, !alias.scope !188
  %wide.load598 = load <2 x double>, ptr %i.ub, align 8, !tbaa !26, !alias.scope !188
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index596 ; 3 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 16 ; 2 uses
  %wide.load599 = load <2 x double>, ptr %i.uc, align 8, !tbaa !26, !alias.scope !189, !noalias !188
  %wide.load600 = load <2 x double>, ptr %i.ud, align 8, !tbaa !26, !alias.scope !189, !noalias !188
  %i.ue = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat594, <2 x double> %wide.load599, <2 x double> %wide.load597)
  %i.uf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat594, <2 x double> %wide.load600, <2 x double> %wide.load598)
  store <2 x double> %i.ue, ptr %i.uc, align 8, !tbaa !26, !alias.scope !189, !noalias !188
  store <2 x double> %i.uf, ptr %i.ud, align 8, !tbaa !26, !alias.scope !189, !noalias !188
  %index.next601 = add nuw i64 %index596, 4       ; 2 uses
  %i.ug = icmp eq i64 %index.next601, %n.vec592
  br i1 %i.ug, label %middle.block602, label %vector.body595, !llvm.loop !176

middle.block602:                                  ; preds = %vector.body595
  br i1 %cmp.n603, label %.lr.ph.i.i375.preheader, label %.lr.ph445.preheader716

.lr.ph445.preheader716:                           ; preds = %.lr.ph445.preheader, %middle.block602
  %.8444.ph = phi i64 [ %n.vec592, %middle.block602 ], [ 0, %.lr.ph445.preheader ] ; 5 uses
  %.neg808 = or disjoint i64 %.8444.ph, 1
  br i1 %lcmp.mod790.not, label %.lr.ph445.prol.loopexit, label %.lr.ph445.prol

.lr.ph445.prol:                                   ; preds = %.lr.ph445.preheader716
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.8444.ph
  %i.ui = load double, ptr %i.uh, align 8, !tbaa !26
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.8444.ph ; 2 uses
  %i.uk = load double, ptr %i.uj, align 8, !tbaa !26
  %i.ul = tail call double @llvm.fmuladd.f64(double %i.sq, double %i.uk, double %i.ui)
  store double %i.ul, ptr %i.uj, align 8, !tbaa !26
  %i.um = or disjoint i64 %.8444.ph, 1
  br label %.lr.ph445.prol.loopexit

.lr.ph445.prol.loopexit:                          ; preds = %.lr.ph445.prol, %.lr.ph445.preheader716
  %.8444.unr = phi i64 [ %.8444.ph, %.lr.ph445.preheader716 ], [ %i.um, %.lr.ph445.prol ]
  %i.un = icmp eq i64 %i.e, %.neg808
  br i1 %i.un, label %.lr.ph.i.i375.preheader, label %.lr.ph445

.lr.ph445:                                        ; preds = %.lr.ph445.prol.loopexit, %.lr.ph445
  %.8444 = phi i64 [ %i.uz, %.lr.ph445 ], [ %.8444.unr, %.lr.ph445.prol.loopexit ] ; 4 uses
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.8444
  %i.up = load double, ptr %i.uo, align 8, !tbaa !26
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.8444 ; 2 uses
  %i.ur = load double, ptr %i.uq, align 8, !tbaa !26
  %i.us = tail call double @llvm.fmuladd.f64(double %i.sq, double %i.ur, double %i.up)
  store double %i.us, ptr %i.uq, align 8, !tbaa !26
  %i.ut = add nuw nsw i64 %.8444, 1               ; 2 uses
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ut
  %i.uv = load double, ptr %i.uu, align 8, !tbaa !26
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.ut ; 2 uses
  %i.ux = load double, ptr %i.uw, align 8, !tbaa !26
  %i.uy = tail call double @llvm.fmuladd.f64(double %i.sq, double %i.ux, double %i.uv)
  store double %i.uy, ptr %i.uw, align 8, !tbaa !26
  %i.uz = add nuw nsw i64 %.8444, 2               ; 2 uses
  %exitcond464.not.1 = icmp eq i64 %i.uz, %i.e
  br i1 %exitcond464.not.1, label %.lr.ph.i.i375.preheader, label %.lr.ph445, !llvm.loop !177

.lr.ph.i.i375.preheader:                          ; preds = %.lr.ph445.prol.loopexit, %.lr.ph445, %middle.block602
  br i1 %i.is, label %.lr.ph.i.i375.epil.preheader, label %.lr.ph.i.i375

.lr.ph.i.i375:                                    ; preds = %.lr.ph.i.i375.preheader, %.lr.ph.i.i375
  %.012.i.i376 = phi double [ %i.vl, %.lr.ph.i.i375 ], [ 0.000000e+00, %.lr.ph.i.i375.preheader ]
  %.0710.i.i378 = phi ptr [ %i.vj, %.lr.ph.i.i375 ], [ %i.bi, %.lr.ph.i.i375.preheader ] ; 5 uses
  %niter798 = phi i64 [ %niter798.next.3, %.lr.ph.i.i375 ], [ 0, %.lr.ph.i.i375.preheader ]
  %i.va = getelementptr i8, ptr %.0710.i.i378, i64 8
  %i.vb = load double, ptr %.0710.i.i378, align 8, !tbaa !26 ; 2 uses
  %i.vc = tail call double @llvm.fmuladd.f64(double %i.vb, double %i.vb, double %.012.i.i376)
  %i.vd = getelementptr i8, ptr %.0710.i.i378, i64 16
  %i.ve = load double, ptr %i.va, align 8, !tbaa !26 ; 2 uses
  %i.vf = tail call double @llvm.fmuladd.f64(double %i.ve, double %i.ve, double %i.vc)
  %i.vg = getelementptr i8, ptr %.0710.i.i378, i64 24
  %i.vh = load double, ptr %i.vd, align 8, !tbaa !26 ; 2 uses
  %i.vi = tail call double @llvm.fmuladd.f64(double %i.vh, double %i.vh, double %i.vf)
  %i.vj = getelementptr i8, ptr %.0710.i.i378, i64 32 ; 2 uses
  %i.vk = load double, ptr %i.vg, align 8, !tbaa !26 ; 2 uses
  %i.vl = tail call double @llvm.fmuladd.f64(double %i.vk, double %i.vk, double %i.vi) ; 3 uses
  %niter798.next.3 = add i64 %niter798, 4         ; 2 uses
  %niter798.ncmp.3 = icmp eq i64 %niter798.next.3, %unroll_iter797
  br i1 %niter798.ncmp.3, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380.loopexit.unr-lcssa, label %.lr.ph.i.i375, !llvm.loop !142

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i375
  br i1 %lcmp.mod794.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380, label %.lr.ph.i.i375.epil.preheader

.lr.ph.i.i375.epil.preheader:                     ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380.loopexit.unr-lcssa, %.lr.ph.i.i375.preheader
  %.012.i.i376.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i375.preheader ], [ %i.vl, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380.loopexit.unr-lcssa ]
  %.0710.i.i378.epil.init = phi ptr [ %i.bi, %.lr.ph.i.i375.preheader ], [ %i.vj, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod796)
  br label %.lr.ph.i.i375.epil

.lr.ph.i.i375.epil:                               ; preds = %.lr.ph.i.i375.epil, %.lr.ph.i.i375.epil.preheader
  %.012.i.i376.epil = phi double [ %i.vo, %.lr.ph.i.i375.epil ], [ %.012.i.i376.epil.init, %.lr.ph.i.i375.epil.preheader ]
  %.0710.i.i378.epil = phi ptr [ %i.vm, %.lr.ph.i.i375.epil ], [ %.0710.i.i378.epil.init, %.lr.ph.i.i375.epil.preheader ] ; 2 uses
  %epil.iter793 = phi i64 [ %epil.iter793.next, %.lr.ph.i.i375.epil ], [ 0, %.lr.ph.i.i375.epil.preheader ]
  %i.vm = getelementptr i8, ptr %.0710.i.i378.epil, i64 8
  %i.vn = load double, ptr %.0710.i.i378.epil, align 8, !tbaa !26 ; 2 uses
  %i.vo = tail call double @llvm.fmuladd.f64(double %i.vn, double %i.vn, double %.012.i.i376.epil) ; 2 uses
  %epil.iter793.next = add i64 %epil.iter793, 1   ; 2 uses
  %epil.iter793.cmp.not = icmp eq i64 %epil.iter793.next, %xtraiter792
  br i1 %epil.iter793.cmp.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380, label %.lr.ph.i.i375.epil, !llvm.loop !178

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380:    ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380.loopexit.unr-lcssa, %.lr.ph.i.i375.epil, %_ZN6casadi21casadi_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit
  %.0.lcssa.i.i374 = phi double [ 0.000000e+00, %_ZN6casadi21casadi_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit ], [ %i.vl, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380.loopexit.unr-lcssa ], [ %i.vo, %.lr.ph.i.i375.epil ]
  %i.vp = tail call noundef double @sqrt(double noundef %.0.lcssa.i.i374) #24 ; 2 uses
  %5 = tail call double @llvm.fmuladd.f64(double %i.vp, double %i.vp, double %.0249) ; 2 uses
  %i.vq = fneg double %.0245
  %i.vr = fmul double %.sink.i, %i.vq             ; 3 uses
  %i.vs = fneg double %.sink.i
  %i.vt = fmul double %.0244, %i.vs
  %i.vu = fmul double %i.si, %i.si
  %6 = shufflevector <2 x double> %i.it, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %7 = insertelement <2 x double> %6, double %i.vu, i64 1
  %8 = tail call double @llvm.fmuladd.f64(double %i.vt, double %.0246, double %i.sl) ; 2 uses
  %9 = fdiv double %8, %i.vr
  %10 = insertelement <2 x double> poison, double %9, i64 0
  %i.vv = insertelement <2 x double> %10, double %i.vr, i64 1 ; 2 uses
  %i.vw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vv, <2 x double> %i.vv, <2 x double> %7) ; 2 uses
  %i.vx = extractelement <2 x double> %i.vw, i64 0
  %i.vy = tail call double @sqrt(double noundef %i.vx) #24 ; 2 uses
  %11 = extractelement <2 x double> %i.vw, i64 1
  %12 = tail call double @sqrt(double noundef %11) #24 ; 2 uses
  %13 = fdiv double %i.vr, %12
  %i.vz = insertelement <2 x double> poison, double %8, i64 0
  %14 = insertelement <2 x double> %i.vz, double %i.si, i64 1
  %15 = insertelement <2 x double> poison, double %12, i64 0
  %i.wa = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wb = fdiv <2 x double> %14, %i.wa            ; 3 uses
  %i.wc = extractelement <2 x double> %i.wb, i64 0
  %sqrt409 = tail call double @llvm.sqrt.f64(double %5)
  %i.wd = fmul double %i.sm, %i.sm
  %i.we = shufflevector <2 x double> %i.wb, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.wf = insertelement <2 x double> %i.we, double %i.rh, i64 0 ; 2 uses
  %i.wg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wf, <2 x double> %i.wf, <2 x double> %i.it) ; 2 uses
  %i.wh = extractelement <2 x double> %i.wg, i64 0
  %i.wi = fadd double %i.wh, %i.wd
  %i.wj = tail call double @sqrt(double noundef %i.wi) #24 ; 2 uses
  %i.wk = tail call double @llvm.fabs.f64(double %i.sn)
  %i.wl = fmul double %.1251, %sqrt409
  %i.wm = fdiv double 1.000000e+00, %i.wl         ; 2 uses
  %i.wn = fmul double %.1251, %i.vy
  %i.wo = fdiv double %i.wn, %i.hz
  %i.wp = fmul double %.1251, 1.000000e-15
  %i.wq = fmul double %i.wp, %i.vy
  %i.wr = fdiv double %i.wq, %i.hz
  %i.ws = fadd double %i.wr, 1.000000e-15
  %i.wt = icmp ne i64 %.0238, 9999
  %i.wu = fadd double %i.wm, 1.000000e+00
  %i.wv = fcmp ugt double %i.wu, 1.000000e+00
  %i.ww = fmul double %.2243, %i.wk
  %i.wx = fdiv double %i.wj, %i.hz                ; 2 uses
  %i.wy = fmul double %.1251, %i.wj
  %i.wz = fadd double %i.wo, 1.000000e+00
  %i.xa = insertelement <2 x double> poison, double %i.wx, i64 0
  %i.xb = insertelement <2 x double> %i.xa, double %i.ww, i64 1
  %i.xc = insertelement <2 x double> poison, double %i.wz, i64 0
  %i.xd = insertelement <2 x double> %i.xc, double %i.wy, i64 1
  %i.xe = fdiv <2 x double> %i.xb, %i.xd          ; 2 uses
  %i.xf = fadd <2 x double> %i.xe, splat (double 1.000000e+00)
  %i.xg = fcmp ugt <2 x double> %i.xf, splat (double 1.000000e+00) ; 2 uses
  %i.xh = fcmp ugt double %i.wm, 1.000000e-08
  %i.xi = extractelement <2 x double> %i.xe, i64 1
  %i.xj = fcmp ugt double %i.xi, 1.000000e-15
  %i.xk = fcmp ugt double %i.wx, %i.ws
  %.not271402403404405406 = and i1 %i.wt, %i.wv
  %i.xl = select i1 %i.xk, i1 %i.xj, i1 false
  %i.xm = select i1 %i.xl, i1 %i.xh, i1 false
  %i.xn = extractelement <2 x i1> %i.xg, i64 0
  %i.xo = select i1 %i.xm, i1 %i.xn, i1 false
  %i.xp = extractelement <2 x i1> %i.xg, i64 1
  %i.xq = select i1 %i.xo, i1 %i.xp, i1 false
  %.not271 = select i1 %i.xq, i1 %.not271402403404405406, i1 false
  %i.xr = extractelement <2 x double> %i.wb, i64 1
  br i1 %.not271, label %bb.e, label %split, !llvm.loop !179

split:                                            ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380
  %.not.i381 = icmp eq ptr %1, null
  br i1 %.not.i381, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309, label %bb.n

bb.n:                                             ; preds = %split
  br i1 %.not.i, label %.preheader16.i383, label %.preheader.i390

.preheader16.i383:                                ; preds = %bb.n
  br i1 %i.bj, label %.lr.ph.i385.preheader, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309

.lr.ph.i385.preheader:                            ; preds = %.preheader16.i383
  %min.iters.check697 = icmp ult i64 %i.c, 8
  %i.xs = sub i64 %i.bf, %i.a
  %diff.check699 = icmp ugt i64 %i.xs, -32
  %or.cond714 = select i1 %min.iters.check697, i1 true, i1 %diff.check699
  br i1 %or.cond714, label %.lr.ph.i385.preheader715, label %vector.ph700

vector.ph700:                                     ; preds = %.lr.ph.i385.preheader
  %i.xt = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.e
  %n.vec701 = and i64 %i.c, 9223372036854775804   ; 4 uses
  %i.xu = shl i64 %n.vec701, 3                    ; 2 uses
  %i.xv = getelementptr i8, ptr %1, i64 %i.xu
  %i.xw = getelementptr i8, ptr %i.xt, i64 %i.xu
  %i.xx = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.e
  br label %vector.body702

vector.body702:                                   ; preds = %vector.body702, %vector.ph700
  %index703 = phi i64 [ 0, %vector.ph700 ], [ %index.next708, %vector.body702 ] ; 2 uses
  %i.xy = shl i64 %index703, 3                    ; 2 uses
  %next.gep704 = getelementptr i8, ptr %1, i64 %i.xy ; 2 uses
  %next.gep705 = getelementptr i8, ptr %i.xx, i64 %i.xy ; 2 uses
  %i.xz = getelementptr i8, ptr %next.gep705, i64 16
  %wide.load706 = load <2 x double>, ptr %next.gep705, align 8, !tbaa !26
  %wide.load707 = load <2 x double>, ptr %i.xz, align 8, !tbaa !26
  %i.ya = getelementptr i8, ptr %next.gep704, i64 16
  store <2 x double> %wide.load706, ptr %next.gep704, align 8, !tbaa !26
  store <2 x double> %wide.load707, ptr %i.ya, align 8, !tbaa !26
  %index.next708 = add nuw i64 %index703, 4       ; 2 uses
  %i.yb = icmp eq i64 %index.next708, %n.vec701
  br i1 %i.yb, label %middle.block709, label %vector.body702, !llvm.loop !180

middle.block709:                                  ; preds = %vector.body702
  %cmp.n710 = icmp eq i64 %i.c, %n.vec701
  br i1 %cmp.n710, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309, label %.lr.ph.i385.preheader715

.lr.ph.i385.preheader715:                         ; preds = %.lr.ph.i385.preheader, %middle.block709
  %.020.i386.ph = phi i64 [ 0, %.lr.ph.i385.preheader ], [ %n.vec701, %middle.block709 ] ; 4 uses
  %.01019.i387.ph = phi ptr [ %1, %.lr.ph.i385.preheader ], [ %i.xv, %middle.block709 ] ; 2 uses
  %.01218.i388.ph = phi ptr [ %i.be, %.lr.ph.i385.preheader ], [ %i.xw, %middle.block709 ] ; 2 uses
  %i.yc = sub nsw i64 %i.c, %.020.i386.ph
  %xtraiter799 = and i64 %i.yc, 7                 ; 2 uses
  %lcmp.mod800.not = icmp eq i64 %xtraiter799, 0
  br i1 %lcmp.mod800.not, label %.lr.ph.i385.prol.loopexit, label %.lr.ph.i385.prol

.lr.ph.i385.prol:                                 ; preds = %.lr.ph.i385.preheader715, %.lr.ph.i385.prol
  %.020.i386.prol = phi i64 [ %i.yg, %.lr.ph.i385.prol ], [ %.020.i386.ph, %.lr.ph.i385.preheader715 ]
  %.01019.i387.prol = phi ptr [ %i.yf, %.lr.ph.i385.prol ], [ %.01019.i387.ph, %.lr.ph.i385.preheader715 ] ; 2 uses
  %.01218.i388.prol = phi ptr [ %i.yd, %.lr.ph.i385.prol ], [ %.01218.i388.ph, %.lr.ph.i385.preheader715 ] ; 2 uses
  %prol.iter801 = phi i64 [ %prol.iter801.next, %.lr.ph.i385.prol ], [ 0, %.lr.ph.i385.preheader715 ]
  %i.yd = getelementptr inbounds nuw i8, ptr %.01218.i388.prol, i64 8 ; 2 uses
  %i.ye = load double, ptr %.01218.i388.prol, align 8, !tbaa !26
  %i.yf = getelementptr inbounds nuw i8, ptr %.01019.i387.prol, i64 8 ; 2 uses
  store double %i.ye, ptr %.01019.i387.prol, align 8, !tbaa !26
  %i.yg = add nuw nsw i64 %.020.i386.prol, 1      ; 2 uses
  %prol.iter801.next = add i64 %prol.iter801, 1   ; 2 uses
  %prol.iter801.cmp.not = icmp eq i64 %prol.iter801.next, %xtraiter799
  br i1 %prol.iter801.cmp.not, label %.lr.ph.i385.prol.loopexit, label %.lr.ph.i385.prol, !llvm.loop !181

.lr.ph.i385.prol.loopexit:                        ; preds = %.lr.ph.i385.prol, %.lr.ph.i385.preheader715
  %.020.i386.unr = phi i64 [ %.020.i386.ph, %.lr.ph.i385.preheader715 ], [ %i.yg, %.lr.ph.i385.prol ]
  %.01019.i387.unr = phi ptr [ %.01019.i387.ph, %.lr.ph.i385.preheader715 ], [ %i.yf, %.lr.ph.i385.prol ]
  %.01218.i388.unr = phi ptr [ %.01218.i388.ph, %.lr.ph.i385.preheader715 ], [ %i.yd, %.lr.ph.i385.prol ]
  %i.yh = sub nsw i64 %.020.i386.ph, %i.c
  %i.yi = icmp ugt i64 %i.yh, -8
  br i1 %i.yi, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309, label %.lr.ph.i385

.preheader.i390:                                  ; preds = %bb.n
  br i1 %i.bj, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309.sink.split, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309

.lr.ph.i385:                                      ; preds = %.lr.ph.i385.prol.loopexit, %.lr.ph.i385
  %.020.i386 = phi i64 [ %i.zh, %.lr.ph.i385 ], [ %.020.i386.unr, %.lr.ph.i385.prol.loopexit ]
  %.01019.i387 = phi ptr [ %i.zg, %.lr.ph.i385 ], [ %.01019.i387.unr, %.lr.ph.i385.prol.loopexit ] ; 9 uses
  %.01218.i388 = phi ptr [ %i.ze, %.lr.ph.i385 ], [ %.01218.i388.unr, %.lr.ph.i385.prol.loopexit ] ; 9 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 8
  %i.yk = load double, ptr %.01218.i388, align 8, !tbaa !26
  %i.yl = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 8
  store double %i.yk, ptr %.01019.i387, align 8, !tbaa !26
  %i.ym = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 16
  %i.yn = load double, ptr %i.yj, align 8, !tbaa !26
  %i.yo = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 16
  store double %i.yn, ptr %i.yl, align 8, !tbaa !26
  %i.yp = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 24
  %i.yq = load double, ptr %i.ym, align 8, !tbaa !26
  %i.yr = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 24
  store double %i.yq, ptr %i.yo, align 8, !tbaa !26
  %i.ys = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 32
  %i.yt = load double, ptr %i.yp, align 8, !tbaa !26
  %i.yu = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 32
  store double %i.yt, ptr %i.yr, align 8, !tbaa !26
  %i.yv = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 40
  %i.yw = load double, ptr %i.ys, align 8, !tbaa !26
  %i.yx = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 40
  store double %i.yw, ptr %i.yu, align 8, !tbaa !26
  %i.yy = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 48
  %i.yz = load double, ptr %i.yv, align 8, !tbaa !26
  %i.za = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 48
  store double %i.yz, ptr %i.yx, align 8, !tbaa !26
  %i.zb = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 56
  %i.zc = load double, ptr %i.yy, align 8, !tbaa !26
  %i.zd = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 56
  store double %i.zc, ptr %i.za, align 8, !tbaa !26
  %i.ze = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 64
  %i.zf = load double, ptr %i.zb, align 8, !tbaa !26
  %i.zg = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 64
  store double %i.zf, ptr %i.zd, align 8, !tbaa !26
  %i.zh = add nuw nsw i64 %.020.i386, 8           ; 2 uses
  %exitcond.not.i389.7 = icmp eq i64 %i.zh, %i.c
  br i1 %exitcond.not.i389.7, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309, label %.lr.ph.i385, !llvm.loop !182

_ZN6casadi12casadi_clearIdEEvPT_x.exit309.sink.split: ; preds = %.preheader.i390, %bb.d
  %i.zi = shl nuw i64 %i.c, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %1, i8 0, i64 %i.zi, i1 false), !tbaa !26
  br label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309

_ZN6casadi12casadi_clearIdEEvPT_x.exit309:        ; preds = %.lr.ph.i385.prol.loopexit, %.lr.ph.i385, %middle.block709, %_ZN6casadi12casadi_clearIdEEvPT_x.exit309.sink.split, %.preheader.i390, %.preheader16.i383, %split, %bb.d
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { builtin nounwind }
attributes #24 = { nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { noreturn }
attributes #27 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !45}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"_ZTSN6casadi14LinsolInternal7ExposedE"}
!12 = !{!"p1 _ZTSN6casadi7OptionsE", !9, i64 0}
!13 = !{!"_ZTSN6casadi15PluginInterfaceINS_14LinsolInternalEE6PluginE", !9, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !11, i64 28, !12, i64 32, !9, i64 40}
!14 = !{!13, !10, i64 8}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !16, i64 8, !5, i64 16}
!18 = !{!17, !10, i64 0}
!19 = !{!"vtable pointer", !4, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"p1 double", !9, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!23 = !{!22, !21, i64 8}
!24 = !{!22, !21, i64 0}
!25 = !{!"double", !5, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!15, !10, i64 0}
!28 = !{!16, !16, i64 0}
!29 = !{!5, !5, i64 0}
!30 = !{!17, !16, i64 8}
!31 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!32 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!33 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !9, i64 0}
!34 = !{!"_ZTSNSt8ios_base6_WordsE", !9, i64 0, !16, i64 8}
!35 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !9, i64 0}
!36 = !{!"p1 _ZTSNSt6locale5_ImplE", !9, i64 0}
!37 = !{!"_ZTSSt6locale", !36, i64 0}
!38 = !{!"_ZTSSt8ios_base", !16, i64 8, !16, i64 16, !31, i64 24, !32, i64 28, !32, i64 32, !33, i64 40, !34, i64 48, !5, i64 64, !6, i64 192, !35, i64 200, !37, i64 208}
!39 = !{!38, !32, i64 32}
!40 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !37, i64 56}
!41 = !{!40, !10, i64 40}
!42 = !{!40, !10, i64 32}
!43 = !{!"_ZTSSi", !16, i64 8}
!44 = !{!43, !16, i64 8}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"long long", !5, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!49 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !9, i64 0}
!50 = !{!"_ZTSSt18_Rb_tree_node_base", !48, i64 0, !49, i64 8, !49, i64 16, !49, i64 24}
!51 = !{!"_ZTSSt15_Rb_tree_header", !50, i64 0, !16, i64 32}
!52 = !{!51, !49, i64 16}
!53 = !{!22, !21, i64 16}
!54 = !{!51, !49, i64 8}
!55 = !{!50, !49, i64 24}
!56 = !{!49, !49, i64 0}
!57 = !{!10, !10, i64 0}
!58 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi15PluginInterfaceINS8_14LinsolInternalEE6PluginEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE", !9, i64 0}
!61 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi15PluginInterfaceINS8_14LinsolInternalEE6PluginEEE", !9, i64 0}
!62 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi15PluginInterfaceINS8_14LinsolInternalEE6PluginEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE10_Auto_nodeE", !60, i64 0, !61, i64 8}
!63 = !{!62, !61, i64 8}
!64 = !{!51, !16, i64 32}
!65 = !{!13, !9, i64 0}
!66 = !{!13, !10, i64 16}
!67 = !{!13, !6, i64 24}
!68 = !{!13, !12, i64 32}
!69 = !{!13, !9, i64 40}
!70 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!71 = distinct !{!71, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!72 = distinct !{!72, !71, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!73 = distinct !{!73, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!74 = distinct !{!74, !73, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!75 = !{!72}
!76 = !{!74}
!77 = !{!74, !72}
!78 = distinct !{!78, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!79 = distinct !{!79, !78, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!80 = distinct !{!80, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!81 = distinct !{!81, !80, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!82 = !{!79}
!83 = !{!81}
!84 = !{!81, !79}
!85 = distinct !{!85, !45}
!86 = !{!21, !21, i64 0}
!87 = !{!51, !49, i64 24}
!88 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!89 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !88, i64 0}
!90 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi6FStatsEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !89, i64 0, !51, i64 8}
!91 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi6FStatsEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !90, i64 0}
!92 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi6FStatsESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !91, i64 0}
!93 = !{!"p1 _ZTSN6casadi6FStatsE", !9, i64 0}
!94 = !{!"_ZTSN6casadi19ProtoFunctionMemoryE", !92, i64 0, !93, i64 48}
!95 = !{!"bool", !5, i64 0}
!96 = !{!"_ZTSN6casadi12LinsolMemoryE", !94, i64 0, !95, i64 56, !95, i64 57}
!97 = !{!96, !95, i64 56}
!98 = !{!"any p2 pointer", !9, i64 0}
!99 = !{!"p2 double", !98, i64 0}
!100 = !{!"_ZTSNSt12_Vector_baseIPKdSaIS1_EE17_Vector_impl_dataE", !99, i64 0, !99, i64 8, !99, i64 16}
!101 = !{!100, !99, i64 0}
!102 = !{!100, !99, i64 16}
!103 = distinct !{!103, !45}
!104 = !{!50, !49, i64 16}
!105 = distinct !{!105, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!106 = distinct !{!106, !105, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!107 = !{!106}
!108 = !{!9, !9, i64 0}
!109 = !{!6, !6, i64 0}
!110 = !{!12, !12, i64 0}
!111 = !{i64 0, i64 8, !108, i64 8, i64 8, !57, i64 16, i64 8, !57, i64 24, i64 4, !109, i64 32, i64 8, !110, i64 40, i64 8, !108}
!112 = distinct !{!112, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!113 = distinct !{!113, !112, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!114 = !{!113}
!115 = distinct !{!115, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!116 = distinct !{!116, !115, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!117 = distinct !{!117, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!118 = distinct !{!118, !117, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!119 = !{!116}
!120 = !{!118, !116}
!121 = distinct !{!121, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!122 = distinct !{!122, !121, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!123 = distinct !{!123, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!124 = distinct !{!124, !123, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!125 = !{!122}
!126 = !{!124}
!127 = !{!124, !122}
!128 = distinct !{!128, !45}
!129 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!130 = !{!129, !58, i64 0}
!131 = !{!129, !58, i64 8}
!132 = !{!129, !58, i64 16}
!133 = distinct !{!133, i1 true, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_"}
!134 = distinct !{!134, !133, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_: argument 0"}
!135 = !{!134}
!136 = !{ptr @_ZN6casadi15CasadiExceptionD2Ev}
!137 = !{!60, !60, i64 0}
!138 = distinct !{!138, !45}
!139 = distinct !{!139, !45, !183, !184}
!140 = distinct !{!140, !185}
!141 = distinct !{!141, !45, !183}
!142 = distinct !{!142, !45}
!143 = distinct !{!143, !185}
!144 = distinct !{!144, !45, !183, !184}
!145 = distinct !{!145, !45, !184, !183}
!146 = distinct !{!146, !45}
!147 = distinct !{!147, !45}
!148 = distinct !{!148, !45}
!149 = distinct !{!149, !45}
!150 = distinct !{!150, !185}
!151 = distinct !{!151, !45, !183, !184}
!152 = distinct !{!152, !45, !184, !183}
!153 = distinct !{!153, !45, !183, !184}
!154 = distinct !{!154, !185}
!155 = distinct !{!155, !45, !183}
!156 = distinct !{!156, !45, !183, !184}
!157 = distinct !{!157, !45, !184, !183}
!158 = distinct !{!158, !185}
!159 = distinct !{!159, !45, !183, !184}
!160 = distinct !{!160, !45, !184, !183}
!161 = distinct !{!161, !45, !183, !184}
!162 = distinct !{!162, !45, !184, !183}
!163 = distinct !{!163, !185}
!164 = distinct !{!164, !45, !183, !184}
!165 = distinct !{!165, !45, !184, !183}
!166 = distinct !{!166, !45, !183, !184}
end_hunk_1
