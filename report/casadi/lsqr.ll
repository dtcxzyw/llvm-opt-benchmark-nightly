Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/lsqr?download=true
inline.NumInlined: 579
inline.NumDeleted: 289
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6casadi24casadi_lsqr_single_solveIdEEiPKT_PS1_xPKxS4_:bb.a
scalar.ph556:                                     ; preds = %scalar.ph556.preheader, %scalar.ph556
  %.1254426 = phi i64 [ %i.gj, %scalar.ph556 ], [ %.1254426.ph, %scalar.ph556.preheader ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.1254426 ; 2 uses
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !26
  %i.gi = fmul double %i.ga, %i.gh
  store double %i.gi, ptr %i.gg, align 8, !tbaa !26
  %i.gj = add nuw nsw i64 %.1254426, 1            ; 2 uses
  %exitcond459.not.a = icmp eq i64 %i.gj, %i.e
  br i1 %exitcond459.not.a, label %._crit_edge428, label %scalar.ph556, !llvm.loop !152

._crit_edge428:                                   ; preds = %scalar.ph556, %middle.block567
  br i1 %or.cond.i516519521, label %.lr.ph.i297.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit304

.lr.ph.i297.preheader:                            ; preds = %._crit_edge428
  %min.iters.check573 = icmp ult i64 %i.e, 8
  br i1 %min.iters.check573, label %.lr.ph.i297.preheader721, label %vector.memcheck570

vector.memcheck570:                               ; preds = %.lr.ph.i297.preheader
  %i.gk = shl i64 %i.e, 4
  %i.gl = add i64 %i.gk, -1
  %diff.check571 = icmp ult i64 %i.gl, 31
  br i1 %diff.check571, label %.lr.ph.i297.preheader721, label %vector.ph574

vector.ph574:                                     ; preds = %vector.memcheck570
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
  br i1 %cmp.n584, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit304, label %.lr.ph.i297.preheader721

.lr.ph.i297.preheader721:                         ; preds = %vector.memcheck570, %.lr.ph.i297.preheader, %middle.block583
  %.020.i298.ph = phi i64 [ 0, %vector.memcheck570 ], [ 0, %.lr.ph.i297.preheader ], [ %n.vec575, %middle.block583 ] ; 4 uses
  %.01019.i299.ph = phi ptr [ %i.bh, %vector.memcheck570 ], [ %i.bh, %.lr.ph.i297.preheader ], [ %i.gn, %middle.block583 ] ; 2 uses
  %.01218.i300.ph = phi ptr [ %i.f, %vector.memcheck570 ], [ %i.f, %.lr.ph.i297.preheader ], [ %i.go, %middle.block583 ] ; 2 uses
  %i.gt = sub i64 %i.e, %.020.i298.ph
  %xtraiter745 = and i64 %i.gt, 7                 ; 2 uses
  %lcmp.mod746.not = icmp eq i64 %xtraiter745, 0
  br i1 %lcmp.mod746.not, label %.lr.ph.i297.prol.loopexit, label %.lr.ph.i297.prol

.lr.ph.i297.prol:                                 ; preds = %.lr.ph.i297.preheader721, %.lr.ph.i297.prol
  %.020.i298.prol = phi i64 [ %i.gx, %.lr.ph.i297.prol ], [ %.020.i298.ph, %.lr.ph.i297.preheader721 ]
  %.01019.i299.prol = phi ptr [ %i.gw, %.lr.ph.i297.prol ], [ %.01019.i299.ph, %.lr.ph.i297.preheader721 ] ; 2 uses
  %.01218.i300.prol = phi ptr [ %i.gu, %.lr.ph.i297.prol ], [ %.01218.i300.ph, %.lr.ph.i297.preheader721 ] ; 2 uses
  %prol.iter747 = phi i64 [ %prol.iter747.next, %.lr.ph.i297.prol ], [ 0, %.lr.ph.i297.preheader721 ]
  %i.gu = getelementptr inbounds nuw i8, ptr %.01218.i300.prol, i64 8 ; 2 uses
  %i.gv = load double, ptr %.01218.i300.prol, align 8, !tbaa !26
  %i.gw = getelementptr inbounds nuw i8, ptr %.01019.i299.prol, i64 8 ; 2 uses
  store double %i.gv, ptr %.01019.i299.prol, align 8, !tbaa !26
  %i.gx = add nuw nsw i64 %.020.i298.prol, 1      ; 2 uses
  %prol.iter747.next = add i64 %prol.iter747, 1   ; 2 uses
  %prol.iter747.cmp.not = icmp eq i64 %prol.iter747.next, %xtraiter745
  br i1 %prol.iter747.cmp.not, label %.lr.ph.i297.prol.loopexit, label %.lr.ph.i297.prol, !llvm.loop !154

.lr.ph.i297.prol.loopexit:                        ; preds = %.lr.ph.i297.prol, %.lr.ph.i297.preheader721
  %.020.i298.unr = phi i64 [ %.020.i298.ph, %.lr.ph.i297.preheader721 ], [ %i.gx, %.lr.ph.i297.prol ]
  %.01019.i299.unr = phi ptr [ %.01019.i299.ph, %.lr.ph.i297.preheader721 ], [ %i.gw, %.lr.ph.i297.prol ]
  %.01218.i300.unr = phi ptr [ %.01218.i300.ph, %.lr.ph.i297.preheader721 ], [ %i.gu, %.lr.ph.i297.prol ]
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

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit304:    ; preds = %.lr.ph.i297.prol.loopexit, %.lr.ph.i297, %middle.block583, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit, %.preheader49.i, %.preheader.i285, %_ZN6casadi12casadi_clearIdEEvPT_x.exit280, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread, %._crit_edge428, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit
  %i.hz = phi double [ %i.cb, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit ], [ 0.000000e+00, %_ZN6casadi12casadi_clearIdEEvPT_x.exit280 ], [ %i.cb, %._crit_edge428 ], [ %i.cb, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread ], [ %i.cb, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit ], [ %i.cb, %.preheader.i285 ], [ %i.cb, %.preheader49.i ], [ %i.cb, %middle.block583 ], [ %i.cb, %.lr.ph.i297 ], [ %i.cb, %.lr.ph.i297.prol.loopexit ] ; 5 uses
  %i.ia = phi i1 [ %i.bd, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit ], [ %i.bd, %_ZN6casadi12casadi_clearIdEEvPT_x.exit280 ], [ true, %._crit_edge428 ], [ true, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread ], [ false, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit ], [ false, %.preheader.i285 ], [ false, %.preheader49.i ], [ true, %middle.block583 ], [ true, %.lr.ph.i297 ], [ true, %.lr.ph.i297.prol.loopexit ] ; 7 uses
  %.0241401 = phi double [ 0.000000e+00, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit ], [ 0.000000e+00, %_ZN6casadi12casadi_clearIdEEvPT_x.exit280 ], [ %i.fy, %._crit_edge428 ], [ %i.fy, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread ], [ 0.000000e+00, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit ], [ 0.000000e+00, %.preheader.i285 ], [ 0.000000e+00, %.preheader49.i ], [ %i.fy, %middle.block583 ], [ %i.fy, %.lr.ph.i297 ], [ %i.fy, %.lr.ph.i297.prol.loopexit ] ; 3 uses
  %i.ib = fmul double %i.hz, %.0241401
  %i.ic = fcmp oeq double %i.ib, 0.000000e+00
  br i1 %i.ic, label %bb.d, label %.preheader417

.preheader417:                                    ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit304
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
  %xtraiter759 = and i64 %i.c, 3                  ; 3 uses
  %i.im = icmp ult i64 %i.ik, 3
  %unroll_iter764 = and i64 %i.c, 9223372036854775804
  %lcmp.mod761.not = icmp eq i64 %xtraiter759, 0
  %lcmp.mod763 = icmp ne i64 %xtraiter759, 0
  %min.iters.check667 = icmp ult i64 %i.c, 4
  %n.vec669 = and i64 %i.c, 9223372036854775804   ; 3 uses
  %cmp.n678 = icmp eq i64 %i.c, %n.vec669
  %min.iters.check653 = icmp ult i64 %i.e, 4
  %n.vec655 = and i64 %i.e, -4                    ; 3 uses
  %cmp.n664 = icmp eq i64 %i.e, %n.vec655
  %xtraiter777 = and i64 %i.e, 3                  ; 3 uses
  %i.in = icmp ult i64 %i.il, 3
  %unroll_iter782 = and i64 %i.e, -4
  %lcmp.mod779.not = icmp eq i64 %xtraiter777, 0
  %lcmp.mod781 = icmp ne i64 %xtraiter777, 0
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
  %xtraiter784 = and i64 %i.e, 1
  %lcmp.mod785.not = icmp eq i64 %xtraiter784, 0
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.e
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.e
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.e
  %min.iters.check590 = icmp ult i64 %i.e, 4
  %bound0 = icmp ult ptr %i.bh, %i.bg
  %bound1 = icmp ult ptr %i.f, %i.bi
  %found.conflict = and i1 %bound0, %bound1
  %n.vec592 = and i64 %i.e, -4                    ; 3 uses
  %cmp.n603 = icmp eq i64 %i.e, %n.vec592
  %xtraiter787 = and i64 %i.e, 1
  %lcmp.mod788.not = icmp eq i64 %xtraiter787, 0
  %xtraiter790 = and i64 %i.e, 3                  ; 3 uses
  %i.is = icmp ult i64 %i.il, 3
  %unroll_iter795 = and i64 %i.e, -4
  %lcmp.mod792.not = icmp eq i64 %xtraiter790, 0
  %lcmp.mod794 = icmp ne i64 %xtraiter790, 0
  br label %bb.e

bb.d:                                             ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit304
  %.not.i305 = icmp ne ptr %1, null
  %or.cond.i306 = and i1 %.not.i305, %i.bj
  br i1 %or.cond.i306, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309.sink.split, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309

bb.e:                                             ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380, %.preheader417
  %.0250 = phi double [ %.1251, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380 ], [ 0.000000e+00, %.preheader417 ] ; 4 uses
  %.0249 = phi double [ %12, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380 ], [ 0.000000e+00, %.preheader417 ]
  %.0246 = phi double [ %i.wb, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380 ], [ 0.000000e+00, %.preheader417 ]
  %.0245 = phi double [ %16, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380 ], [ -1.000000e+00, %.preheader417 ]
  %.0244 = phi double [ %i.xq, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380 ], [ 0.000000e+00, %.preheader417 ]
  %.1242 = phi double [ %.2243, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380 ], [ %.0241401, %.preheader417 ] ; 5 uses
  %.0240 = phi double [ %i.sj, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380 ], [ %.0241401, %.preheader417 ] ; 3 uses
  %.0239 = phi double [ %i.sl, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380 ], [ %i.hz, %.preheader417 ] ; 2 uses
  %.0238 = phi i64 [ %i.iu, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380 ], [ 0, %.preheader417 ] ; 2 uses
  %i.it = phi <2 x double> [ %i.wf, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380 ], [ zeroinitializer, %.preheader417 ] ; 2 uses
  %i.iu = add nuw nsw i64 %.0238, 1
  br i1 %i.bj, label %.lr.ph431, label %._crit_edge432

.lr.ph431:                                        ; preds = %bb.e
  %i.iv = fneg double %.1242                      ; 2 uses
  br i1 %min.iters.check681, label %scalar.ph680.preheader, label %vector.ph682

vector.ph682:                                     ; preds = %.lr.ph431
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
  br i1 %cmp.n692, label %._crit_edge432, label %scalar.ph680.preheader

scalar.ph680.preheader:                           ; preds = %.lr.ph431, %middle.block691
  %.2255429.ph = phi i64 [ 0, %.lr.ph431 ], [ %n.vec683, %middle.block691 ]
  br label %scalar.ph680

scalar.ph680:                                     ; preds = %scalar.ph680.preheader, %scalar.ph680
  %.2255429 = phi i64 [ %i.je, %scalar.ph680 ], [ %.2255429.ph, %scalar.ph680.preheader ] ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.2255429 ; 2 uses
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !26
  %i.jd = fmul double %i.jc, %i.iv
  store double %i.jd, ptr %i.jb, align 8, !tbaa !26
  %i.je = add nuw nsw i64 %.2255429, 1            ; 2 uses
  %exitcond460.not.a = icmp eq i64 %i.je, %i.c
  br i1 %exitcond460.not.a, label %._crit_edge432, label %scalar.ph680, !llvm.loop !157

._crit_edge432:                                   ; preds = %scalar.ph680, %middle.block691, %bb.e
  br i1 %or.cond.i310, label %bb.f, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit334

bb.f:                                             ; preds = %._crit_edge432
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

.loopexit48.i318:                                 ; preds = %.prol.loopexit749, %.lr.ph.i320.new, %.lr.ph54.i316
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
  %.neg801 = add i64 %i.jf, 1
  %xtraiter750 = and i64 %i.jl, 1
  %lcmp.mod751.not = icmp eq i64 %xtraiter750, 0
  br i1 %lcmp.mod751.not, label %.prol.loopexit749, label %.prol.loopexit749.unr-lcssa

.prol.loopexit749.unr-lcssa:                      ; preds = %.lr.ph.i320
  %i.jm = getelementptr inbounds [8 x i8], ptr %0, i64 %i.jf
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !26
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.jf
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !47
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.jp
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !26
  %i.js = tail call double @llvm.fmuladd.f64(double %i.jn, double %i.jr, double %.promoted.i321) ; 2 uses
  store double %i.js, ptr %i.jk, align 8, !tbaa !26
  %i.jt = add nsw i64 %i.jf, 1
  br label %.prol.loopexit749

.prol.loopexit749:                                ; preds = %.prol.loopexit749.unr-lcssa, %.lr.ph.i320
  %.unr753 = phi double [ %.promoted.i321, %.lr.ph.i320 ], [ %i.js, %.prol.loopexit749.unr-lcssa ]
  %.052.i322.unr = phi i64 [ %i.jf, %.lr.ph.i320 ], [ %i.jt, %.prol.loopexit749.unr-lcssa ]
  %i.ju = icmp eq i64 %i.ji, %.neg801
  br i1 %i.ju, label %.loopexit48.i318, label %.lr.ph.i320.new

.lr.ph.i320.new:                                  ; preds = %.prol.loopexit749, %.lr.ph.i320.new
  %i.jv = phi double [ %i.kk, %.lr.ph.i320.new ], [ %.unr753, %.prol.loopexit749 ]
  %.052.i322 = phi i64 [ %i.kl, %.lr.ph.i320.new ], [ %.052.i322.unr, %.prol.loopexit749 ] ; 4 uses
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

.loopexit.i329:                                   ; preds = %.prol.loopexit755, %.lr.ph56.i331.new, %.lr.ph58.i327
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
  %.neg802 = add i64 %i.km, 1
  %xtraiter756 = and i64 %i.ks, 1
  %lcmp.mod757.not = icmp eq i64 %xtraiter756, 0
  br i1 %lcmp.mod757.not, label %.prol.loopexit755, label %.prol.loopexit755.unr-lcssa

.prol.loopexit755.unr-lcssa:                      ; preds = %.lr.ph56.i331
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
  br label %.prol.loopexit755

.prol.loopexit755:                                ; preds = %.prol.loopexit755.unr-lcssa, %.lr.ph56.i331
  %.155.i332.unr = phi i64 [ %i.km, %.lr.ph56.i331 ], [ %i.lb, %.prol.loopexit755.unr-lcssa ]
  %i.lc = icmp eq i64 %i.kp, %.neg802
  br i1 %i.lc, label %.loopexit.i329, label %.lr.ph56.i331.new

.lr.ph56.i331.new:                                ; preds = %.prol.loopexit755, %.lr.ph56.i331.new
  %.155.i332 = phi i64 [ %i.lu, %.lr.ph56.i331.new ], [ %.155.i332.unr, %.prol.loopexit755 ] ; 4 uses
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

_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit334: ; preds = %.loopexit48.i318, %.loopexit.i329, %._crit_edge432, %.preheader49.i313, %.preheader.i324
  br i1 %i.bj, label %.lr.ph.i.i336.preheader, label %.loopexit

.lr.ph.i.i336.preheader:                          ; preds = %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit334
  br i1 %i.im, label %.lr.ph.i.i336.epil.preheader, label %.lr.ph.i.i336

.lr.ph.i.i336:                                    ; preds = %.lr.ph.i.i336.preheader, %.lr.ph.i.i336
  %.012.i.i337 = phi double [ %i.mg, %.lr.ph.i.i336 ], [ 0.000000e+00, %.lr.ph.i.i336.preheader ]
  %.0710.i.i339 = phi ptr [ %i.me, %.lr.ph.i.i336 ], [ %4, %.lr.ph.i.i336.preheader ] ; 5 uses
  %niter765 = phi i64 [ %niter765.next.3, %.lr.ph.i.i336 ], [ 0, %.lr.ph.i.i336.preheader ]
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
  %niter765.next.3 = add nuw nsw i64 %niter765, 4 ; 2 uses
  %niter765.ncmp.3 = icmp eq i64 %niter765.next.3, %unroll_iter764
  br i1 %niter765.ncmp.3, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit341.unr-lcssa, label %.lr.ph.i.i336, !llvm.loop !142

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit341.unr-lcssa: ; preds = %.lr.ph.i.i336
  br i1 %lcmp.mod761.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit341, label %.lr.ph.i.i336.epil.preheader

.lr.ph.i.i336.epil.preheader:                     ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit341.unr-lcssa, %.lr.ph.i.i336.preheader
  %.012.i.i337.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i336.preheader ], [ %i.mg, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit341.unr-lcssa ]
  %.0710.i.i339.epil.init = phi ptr [ %4, %.lr.ph.i.i336.preheader ], [ %i.me, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit341.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod763)
  br label %.lr.ph.i.i336.epil

.lr.ph.i.i336.epil:                               ; preds = %.lr.ph.i.i336.epil, %.lr.ph.i.i336.epil.preheader
  %.012.i.i337.epil = phi double [ %i.mj, %.lr.ph.i.i336.epil ], [ %.012.i.i337.epil.init, %.lr.ph.i.i336.epil.preheader ]
  %.0710.i.i339.epil = phi ptr [ %i.mh, %.lr.ph.i.i336.epil ], [ %.0710.i.i339.epil.init, %.lr.ph.i.i336.epil.preheader ] ; 2 uses
  %epil.iter760 = phi i64 [ %epil.iter760.next, %.lr.ph.i.i336.epil ], [ 0, %.lr.ph.i.i336.epil.preheader ]
  %i.mh = getelementptr i8, ptr %.0710.i.i339.epil, i64 8
  %i.mi = load double, ptr %.0710.i.i339.epil, align 8, !tbaa !26 ; 2 uses
  %i.mj = tail call double @llvm.fmuladd.f64(double %i.mi, double %i.mi, double %.012.i.i337.epil) ; 2 uses
  %epil.iter760.next = add i64 %epil.iter760, 1   ; 2 uses
  %epil.iter760.cmp.not = icmp eq i64 %epil.iter760.next, %xtraiter759
  br i1 %epil.iter760.cmp.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit341, label %.lr.ph.i.i336.epil, !llvm.loop !158

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit341:    ; preds = %.lr.ph.i.i336.epil, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit341.unr-lcssa
  %.lcssa = phi double [ %i.mg, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit341.unr-lcssa ], [ %i.mj, %.lr.ph.i.i336.epil ]
  %i.mk = tail call noundef double @sqrt(double noundef %.lcssa) #24 ; 10 uses
  %i.ml = fcmp ogt double %i.mk, 0.000000e+00
  br i1 %i.ml, label %.lr.ph434, label %.loopexit

.lr.ph434:                                        ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit341
  %i.mm = fdiv nnan double 1.000000e+00, %i.mk    ; 2 uses
  br i1 %min.iters.check667, label %scalar.ph666.preheader, label %vector.ph668

vector.ph668:                                     ; preds = %.lr.ph434
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
  br i1 %cmp.n678, label %._crit_edge435, label %scalar.ph666.preheader

scalar.ph666.preheader:                           ; preds = %.lr.ph434, %middle.block677
  %.3256433.ph = phi i64 [ 0, %.lr.ph434 ], [ %n.vec669, %middle.block677 ]
  br label %scalar.ph666

scalar.ph666:                                     ; preds = %scalar.ph666.preheader, %scalar.ph666
  %.3256433 = phi i64 [ %i.mv, %scalar.ph666 ], [ %.3256433.ph, %scalar.ph666.preheader ] ; 2 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.3256433 ; 2 uses
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !26
  %i.mu = fmul double %i.mm, %i.mt
  store double %i.mu, ptr %i.ms, align 8, !tbaa !26
  %i.mv = add nuw nsw i64 %.3256433, 1            ; 2 uses
  %exitcond461.not.a = icmp eq i64 %i.mv, %i.c
  br i1 %exitcond461.not.a, label %._crit_edge435, label %scalar.ph666, !llvm.loop !160

._crit_edge435:                                   ; preds = %scalar.ph666, %middle.block677
  %i.mw = fmul double %.1242, %.1242
  %i.mx = tail call double @llvm.fmuladd.f64(double %.0250, double %.0250, double %i.mw)
  %i.my = tail call double @llvm.fmuladd.f64(double %i.mk, double %i.mk, double %i.mx)
  %i.mz = fadd double %i.my, 0.000000e+00
  %sqrt.a = tail call double @llvm.sqrt.f64(double %i.mz) ; 3 uses
  br i1 %i.ia, label %.lr.ph438, label %._crit_edge439

.lr.ph438:                                        ; preds = %._crit_edge435
  %i.na = fneg double %i.mk                       ; 2 uses
  br i1 %min.iters.check653, label %scalar.ph652.preheader, label %vector.ph654

vector.ph654:                                     ; preds = %.lr.ph438
  %broadcast.splatinsert656 = insertelement <2 x double> poison, double %i.na, i64 0
  %broadcast.splat657 = shufflevector <2 x double> %broadcast.splatinsert656, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body658

vector.body658:                                   ; preds = %vector.body658, %vector.ph654
  %index659 = phi i64 [ 0, %vector.ph654 ], [ %index.next662, %vector.body658 ] ; 2 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index659 ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16 ; 2 uses
  %wide.load660 = load <2 x double>, ptr %i.nb, align 8, !tbaa !26
  %wide.load661 = load <2 x double>, ptr %i.nc, align 8, !tbaa !26
  %i.nd = fmul <2 x double> %wide.load660, %broadcast.splat657
  %i.ne = fmul <2 x double> %wide.load661, %broadcast.splat657
  store <2 x double> %i.nd, ptr %i.nb, align 8, !tbaa !26
  store <2 x double> %i.ne, ptr %i.nc, align 8, !tbaa !26
  %index.next662 = add nuw i64 %index659, 4       ; 2 uses
  %i.nf = icmp eq i64 %index.next662, %n.vec655
  br i1 %i.nf, label %middle.block663, label %vector.body658, !llvm.loop !161

middle.block663:                                  ; preds = %vector.body658
  br i1 %cmp.n664, label %._crit_edge439, label %scalar.ph652.preheader

scalar.ph652.preheader:                           ; preds = %.lr.ph438, %middle.block663
  %.4257436.ph = phi i64 [ 0, %.lr.ph438 ], [ %n.vec655, %middle.block663 ]
  br label %scalar.ph652

scalar.ph652:                                     ; preds = %scalar.ph652.preheader, %scalar.ph652
  %.4257436 = phi i64 [ %i.nj, %scalar.ph652 ], [ %.4257436.ph, %scalar.ph652.preheader ] ; 2 uses
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.4257436 ; 2 uses
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !26
  %i.ni = fmul double %i.nh, %i.na
  store double %i.ni, ptr %i.ng, align 8, !tbaa !26
  %i.nj = add nuw nsw i64 %.4257436, 1            ; 2 uses
  %exitcond462.not.a = icmp eq i64 %i.nj, %i.e
  br i1 %exitcond462.not.a, label %._crit_edge439, label %scalar.ph652, !llvm.loop !162

._crit_edge439:                                   ; preds = %scalar.ph652, %middle.block663, %._crit_edge435
  br i1 %or.cond.i310, label %bb.g, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit366

bb.g:                                             ; preds = %._crit_edge439
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

.loopexit48.i350:                                 ; preds = %.prol.loopexit772, %.lr.ph.i352.new, %.lr.ph54.i348
  %exitcond60.not.i351 = icmp eq i64 %i.nl, %i.e
  br i1 %exitcond60.not.i351, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit366, label %.lr.ph54.i348, !llvm.loop !146

.lr.ph54.i348:                                    ; preds = %.loopexit48.i350, %.lr.ph54.preheader.i346
  %i.nk = phi i64 [ %i.nn, %.loopexit48.i350 ], [ %.pre.i347, %.lr.ph54.preheader.i346 ] ; 7 uses
  %.04253.i349 = phi i64 [ %i.nl, %.loopexit48.i350 ], [ 0, %.lr.ph54.preheader.i346 ] ; 2 uses
  %i.nl = add nuw nsw i64 %.04253.i349, 1         ; 3 uses
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.nl
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !47 ; 5 uses
  %i.no = icmp slt i64 %i.nk, %i.nn
  br i1 %i.no, label %.lr.ph.i352, label %.loopexit48.i350

.lr.ph.i352:                                      ; preds = %.lr.ph54.i348
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.04253.i349 ; 4 uses
  %.promoted.i353 = load double, ptr %i.np, align 8, !tbaa !26 ; 2 uses
  %i.nq = sub i64 %i.nn, %i.nk
  %.neg804 = add i64 %i.nk, 1
  %xtraiter773 = and i64 %i.nq, 1
  %lcmp.mod774.not = icmp eq i64 %xtraiter773, 0
  br i1 %lcmp.mod774.not, label %.prol.loopexit772, label %.prol.loopexit772.unr-lcssa

.prol.loopexit772.unr-lcssa:                      ; preds = %.lr.ph.i352
  %i.nr = getelementptr inbounds [8 x i8], ptr %0, i64 %i.nk
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !26
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.nk
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !47
  %i.nv = getelementptr inbounds [8 x i8], ptr %4, i64 %i.nu
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !26
  %i.nx = tail call double @llvm.fmuladd.f64(double %i.ns, double %i.nw, double %.promoted.i353) ; 2 uses
  store double %i.nx, ptr %i.np, align 8, !tbaa !26
  %i.ny = add nsw i64 %i.nk, 1
  br label %.prol.loopexit772

.prol.loopexit772:                                ; preds = %.prol.loopexit772.unr-lcssa, %.lr.ph.i352
  %.unr776 = phi double [ %.promoted.i353, %.lr.ph.i352 ], [ %i.nx, %.prol.loopexit772.unr-lcssa ]
  %.052.i354.unr = phi i64 [ %i.nk, %.lr.ph.i352 ], [ %i.ny, %.prol.loopexit772.unr-lcssa ]
  %i.nz = icmp eq i64 %i.nn, %.neg804
  br i1 %i.nz, label %.loopexit48.i350, label %.lr.ph.i352.new

.lr.ph.i352.new:                                  ; preds = %.prol.loopexit772, %.lr.ph.i352.new
  %i.oa = phi double [ %i.op, %.lr.ph.i352.new ], [ %.unr776, %.prol.loopexit772 ]
  %.052.i354 = phi i64 [ %i.oq, %.lr.ph.i352.new ], [ %.052.i354.unr, %.prol.loopexit772 ] ; 4 uses
  %i.ob = getelementptr inbounds [8 x i8], ptr %0, i64 %.052.i354
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !26
  %i.od = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %.052.i354
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !47
  %i.of = getelementptr inbounds [8 x i8], ptr %4, i64 %i.oe
  %i.og = load double, ptr %i.of, align 8, !tbaa !26
  %i.oh = tail call double @llvm.fmuladd.f64(double %i.oc, double %i.og, double %i.oa) ; 2 uses
  store double %i.oh, ptr %i.np, align 8, !tbaa !26
  %i.oi = add nsw i64 %.052.i354, 1               ; 2 uses
  %i.oj = getelementptr inbounds [8 x i8], ptr %0, i64 %i.oi
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !26
  %i.ol = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.oi
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !47
  %i.on = getelementptr inbounds [8 x i8], ptr %4, i64 %i.om
  %i.oo = load double, ptr %i.on, align 8, !tbaa !26
  %i.op = tail call double @llvm.fmuladd.f64(double %i.ok, double %i.oo, double %i.oh) ; 2 uses
  store double %i.op, ptr %i.np, align 8, !tbaa !26
  %i.oq = add nsw i64 %.052.i354, 2               ; 2 uses
  %exitcond.not.i355.1 = icmp eq i64 %i.oq, %i.nn
  br i1 %exitcond.not.i355.1, label %.loopexit48.i350, label %.lr.ph.i352.new, !llvm.loop !147

.loopexit.i361:                                   ; preds = %.prol.loopexit767, %.lr.ph56.i363.new, %.lr.ph58.i359
  %exitcond62.not.i362 = icmp eq i64 %i.os, %i.e
  br i1 %exitcond62.not.i362, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit366, label %.lr.ph58.i359, !llvm.loop !148

.lr.ph58.i359:                                    ; preds = %.loopexit.i361, %.lr.ph58.preheader.i357
  %i.or = phi i64 [ %i.ou, %.loopexit.i361 ], [ %.pre63.i358, %.lr.ph58.preheader.i357 ] ; 7 uses
  %.14357.i360 = phi i64 [ %i.os, %.loopexit.i361 ], [ 0, %.lr.ph58.preheader.i357 ] ; 2 uses
  %i.os = add nuw nsw i64 %.14357.i360, 1         ; 3 uses
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.os
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !47 ; 5 uses
  %i.ov = icmp slt i64 %i.or, %i.ou
  br i1 %i.ov, label %.lr.ph56.i363, label %.loopexit.i361

.lr.ph56.i363:                                    ; preds = %.lr.ph58.i359
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.14357.i360 ; 3 uses
  %i.ox = sub i64 %i.ou, %i.or
  %.neg803 = add i64 %i.or, 1
  %xtraiter768 = and i64 %i.ox, 1
  %lcmp.mod769.not = icmp eq i64 %xtraiter768, 0
  br i1 %lcmp.mod769.not, label %.prol.loopexit767, label %.prol.loopexit767.unr-lcssa

.prol.loopexit767.unr-lcssa:                      ; preds = %.lr.ph56.i363
  %i.oy = getelementptr inbounds [8 x i8], ptr %0, i64 %i.or
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !26
  %i.pa = load double, ptr %i.ow, align 8, !tbaa !26
  %i.pb = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.or
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !47
  %i.pd = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.pc ; 2 uses
  %i.pe = load double, ptr %i.pd, align 8, !tbaa !26
  %i.pf = tail call double @llvm.fmuladd.f64(double %i.oz, double %i.pa, double %i.pe)
  store double %i.pf, ptr %i.pd, align 8, !tbaa !26
  %i.pg = add nsw i64 %i.or, 1
  br label %.prol.loopexit767

.prol.loopexit767:                                ; preds = %.prol.loopexit767.unr-lcssa, %.lr.ph56.i363
  %.155.i364.unr = phi i64 [ %i.or, %.lr.ph56.i363 ], [ %i.pg, %.prol.loopexit767.unr-lcssa ]
  %i.ph = icmp eq i64 %i.ou, %.neg803
  br i1 %i.ph, label %.loopexit.i361, label %.lr.ph56.i363.new

.lr.ph56.i363.new:                                ; preds = %.prol.loopexit767, %.lr.ph56.i363.new
  %.155.i364 = phi i64 [ %i.pz, %.lr.ph56.i363.new ], [ %.155.i364.unr, %.prol.loopexit767 ] ; 4 uses
  %i.pi = getelementptr inbounds [8 x i8], ptr %0, i64 %.155.i364
  %i.pj = load double, ptr %i.pi, align 8, !tbaa !26
  %i.pk = load double, ptr %i.ow, align 8, !tbaa !26
  %i.pl = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %.155.i364
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !47
  %i.pn = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.pm ; 2 uses
  %i.po = load double, ptr %i.pn, align 8, !tbaa !26
  %i.pp = tail call double @llvm.fmuladd.f64(double %i.pj, double %i.pk, double %i.po)
  store double %i.pp, ptr %i.pn, align 8, !tbaa !26
  %i.pq = add nsw i64 %.155.i364, 1               ; 2 uses
  %i.pr = getelementptr inbounds [8 x i8], ptr %0, i64 %i.pq
  %i.ps = load double, ptr %i.pr, align 8, !tbaa !26
  %i.pt = load double, ptr %i.ow, align 8, !tbaa !26
  %i.pu = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.pq
  %i.pv = load i64, ptr %i.pu, align 8, !tbaa !47
  %i.pw = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.pv ; 2 uses
  %i.px = load double, ptr %i.pw, align 8, !tbaa !26
  %i.py = tail call double @llvm.fmuladd.f64(double %i.ps, double %i.pt, double %i.px)
  store double %i.py, ptr %i.pw, align 8, !tbaa !26
  %i.pz = add nsw i64 %.155.i364, 2               ; 2 uses
  %exitcond61.not.i365.1 = icmp eq i64 %i.pz, %i.ou
  br i1 %exitcond61.not.i365.1, label %.loopexit.i361, label %.lr.ph56.i363.new, !llvm.loop !149

_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit366: ; preds = %.loopexit.i361, %.loopexit48.i350, %._crit_edge439
  br i1 %i.ia, label %.lr.ph.i.i368.preheader, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit373

.lr.ph.i.i368.preheader:                          ; preds = %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit366
  br i1 %i.in, label %.lr.ph.i.i368.epil.preheader, label %.lr.ph.i.i368

.lr.ph.i.i368:                                    ; preds = %.lr.ph.i.i368.preheader, %.lr.ph.i.i368
  %.012.i.i369 = phi double [ %i.ql, %.lr.ph.i.i368 ], [ 0.000000e+00, %.lr.ph.i.i368.preheader ]
  %.0710.i.i371 = phi ptr [ %i.qj, %.lr.ph.i.i368 ], [ %i.f, %.lr.ph.i.i368.preheader ] ; 5 uses
  %niter783 = phi i64 [ %niter783.next.3, %.lr.ph.i.i368 ], [ 0, %.lr.ph.i.i368.preheader ]
end_hunk_0
begin_hunk_1_@_ZN6casadi24casadi_lsqr_single_solveIdEEiPKT_PS1_xPKxS4_:bb.a

.lr.ph443.preheader716:                           ; preds = %.lr.ph443.preheader.a, %middle.block635
  %.6259442.ph = phi i64 [ 0, %.lr.ph443.preheader.a ], [ %n.vec628, %middle.block635 ]
  br label %.lr.ph443.a

.lr.ph443.a:                                      ; preds = %.lr.ph443.preheader716, %.lr.ph443.a
  %.6259442 = phi i64 [ %i.sy, %.lr.ph443.a ], [ %.6259442.ph, %.lr.ph443.preheader716 ] ; 3 uses
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.6259442
  %i.sv = load double, ptr %i.su, align 8, !tbaa !26
  %i.sw = fdiv double %i.sv, %.sink.i
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.6259442
  store double %i.sw, ptr %i.sx, align 8, !tbaa !26
  %i.sy = add nuw nsw i64 %.6259442, 1            ; 2 uses
  %exitcond464.not = icmp eq i64 %i.sy, %i.e
  br i1 %exitcond464.not, label %.lr.ph445.preheader.a, label %.lr.ph443.a, !llvm.loop !167

.lr.ph445.preheader.a:                            ; preds = %.lr.ph443.a, %middle.block635
  %brmerge = select i1 %min.iters.check610, i1 true, i1 %found.conflict608
  br i1 %brmerge, label %.lr.ph445.preheader715, label %vector.ph611

vector.ph611:                                     ; preds = %.lr.ph445.preheader.a
  %broadcast.splatinsert613 = insertelement <2 x double> poison, double %i.sn, i64 0
  %broadcast.splat614 = shufflevector <2 x double> %broadcast.splatinsert613, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body615

vector.body615:                                   ; preds = %vector.body615, %vector.ph611
  %index616 = phi i64 [ 0, %vector.ph611 ], [ %index.next621, %vector.body615 ] ; 3 uses
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index616 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  %wide.load617 = load <2 x double>, ptr %i.sz, align 8, !tbaa !26, !alias.scope !186
  %wide.load618 = load <2 x double>, ptr %i.ta, align 8, !tbaa !26, !alias.scope !186
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %index616 ; 3 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 16 ; 2 uses
  %wide.load619 = load <2 x double>, ptr %i.tb, align 8, !tbaa !26, !alias.scope !187, !noalias !186
  %wide.load620 = load <2 x double>, ptr %i.tc, align 8, !tbaa !26, !alias.scope !187, !noalias !186
  %i.td = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat614, <2 x double> %wide.load617, <2 x double> %wide.load619)
  %i.te = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat614, <2 x double> %wide.load618, <2 x double> %wide.load620)
  store <2 x double> %i.td, ptr %i.tb, align 8, !tbaa !26, !alias.scope !187, !noalias !186
  store <2 x double> %i.te, ptr %i.tc, align 8, !tbaa !26, !alias.scope !187, !noalias !186
  %index.next621 = add nuw i64 %index616, 4       ; 2 uses
  %i.tf = icmp eq i64 %index.next621, %n.vec612
  br i1 %i.tf, label %middle.block622, label %vector.body615, !llvm.loop !171

middle.block622:                                  ; preds = %vector.body615
  br i1 %cmp.n623, label %.lr.ph447.preheader, label %.lr.ph445.preheader715

.lr.ph445.preheader715:                           ; preds = %.lr.ph445.preheader.a, %middle.block622
  %.7260444.ph = phi i64 [ %n.vec612, %middle.block622 ], [ 0, %.lr.ph445.preheader.a ] ; 5 uses
  %.neg805 = or disjoint i64 %.7260444.ph, 1
  br i1 %lcmp.mod785.not, label %.lr.ph445.prol.loopexit.a, label %.lr.ph445.prol.a

.lr.ph445.prol.a:                                 ; preds = %.lr.ph445.preheader715
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.7260444.ph
  %i.th = load double, ptr %i.tg, align 8, !tbaa !26
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %.7260444.ph ; 2 uses
  %i.tj = load double, ptr %i.ti, align 8, !tbaa !26
  %i.tk = tail call double @llvm.fmuladd.f64(double %i.sn, double %i.th, double %i.tj)
  store double %i.tk, ptr %i.ti, align 8, !tbaa !26
  %i.tl = or disjoint i64 %.7260444.ph, 1
  br label %.lr.ph445.prol.loopexit.a

.lr.ph445.prol.loopexit.a:                        ; preds = %.lr.ph445.prol.a, %.lr.ph445.preheader715
  %.7260444.unr = phi i64 [ %.7260444.ph, %.lr.ph445.preheader715 ], [ %i.tl, %.lr.ph445.prol.a ]
  %i.tm = icmp eq i64 %i.e, %.neg805
  br i1 %i.tm, label %.lr.ph447.preheader, label %.lr.ph445.a

.lr.ph445.a:                                      ; preds = %.lr.ph445.prol.loopexit.a, %.lr.ph445.a
  %.7260444 = phi i64 [ %i.ty, %.lr.ph445.a ], [ %.7260444.unr, %.lr.ph445.prol.loopexit.a ] ; 4 uses
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.7260444
  %i.to = load double, ptr %i.tn, align 8, !tbaa !26
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %.7260444 ; 2 uses
  %i.tq = load double, ptr %i.tp, align 8, !tbaa !26
  %i.tr = tail call double @llvm.fmuladd.f64(double %i.sn, double %i.to, double %i.tq)
  store double %i.tr, ptr %i.tp, align 8, !tbaa !26
  %i.ts = add nuw nsw i64 %.7260444, 1            ; 2 uses
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.ts
  %i.tu = load double, ptr %i.tt, align 8, !tbaa !26
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.ts ; 2 uses
  %i.tw = load double, ptr %i.tv, align 8, !tbaa !26
  %i.tx = tail call double @llvm.fmuladd.f64(double %i.sn, double %i.tu, double %i.tw)
  store double %i.tx, ptr %i.tv, align 8, !tbaa !26
  %i.ty = add nuw nsw i64 %.7260444, 2            ; 2 uses
  %exitcond465.not.1 = icmp eq i64 %i.ty, %i.e
  br i1 %exitcond465.not.1, label %.lr.ph447.preheader, label %.lr.ph445.a, !llvm.loop !172

.lr.ph447.preheader:                              ; preds = %.lr.ph445.prol.loopexit.a, %.lr.ph445.a, %middle.block622
  %brmerge831 = select i1 %min.iters.check590, i1 true, i1 %found.conflict
  br i1 %brmerge831, label %.lr.ph447.preheader714, label %vector.ph591

vector.ph591:                                     ; preds = %.lr.ph447.preheader
  %broadcast.splatinsert593 = insertelement <2 x double> poison, double %i.sp, i64 0
  %broadcast.splat594 = shufflevector <2 x double> %broadcast.splatinsert593, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body595

vector.body595:                                   ; preds = %vector.body595, %vector.ph591
  %index596 = phi i64 [ 0, %vector.ph591 ], [ %index.next601, %vector.body595 ] ; 3 uses
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index596 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  %wide.load597 = load <2 x double>, ptr %i.tz, align 8, !tbaa !26, !alias.scope !188
  %wide.load598 = load <2 x double>, ptr %i.ua, align 8, !tbaa !26, !alias.scope !188
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index596 ; 3 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 16 ; 2 uses
  %wide.load599 = load <2 x double>, ptr %i.ub, align 8, !tbaa !26, !alias.scope !189, !noalias !188
  %wide.load600 = load <2 x double>, ptr %i.uc, align 8, !tbaa !26, !alias.scope !189, !noalias !188
  %i.ud = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat594, <2 x double> %wide.load599, <2 x double> %wide.load597)
  %i.ue = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat594, <2 x double> %wide.load600, <2 x double> %wide.load598)
  store <2 x double> %i.ud, ptr %i.ub, align 8, !tbaa !26, !alias.scope !189, !noalias !188
  store <2 x double> %i.ue, ptr %i.uc, align 8, !tbaa !26, !alias.scope !189, !noalias !188
  %index.next601 = add nuw i64 %index596, 4       ; 2 uses
  %i.uf = icmp eq i64 %index.next601, %n.vec592
  br i1 %i.uf, label %middle.block602, label %vector.body595, !llvm.loop !176

middle.block602:                                  ; preds = %vector.body595
  br i1 %cmp.n603, label %.lr.ph.i.i375.preheader, label %.lr.ph447.preheader714

.lr.ph447.preheader714:                           ; preds = %.lr.ph447.preheader, %middle.block602
  %.8446.ph = phi i64 [ %n.vec592, %middle.block602 ], [ 0, %.lr.ph447.preheader ] ; 5 uses
  %.neg806 = or disjoint i64 %.8446.ph, 1
  br i1 %lcmp.mod788.not, label %.lr.ph447.prol.loopexit, label %.lr.ph447.prol

.lr.ph447.prol:                                   ; preds = %.lr.ph447.preheader714
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.8446.ph
  %i.uh = load double, ptr %i.ug, align 8, !tbaa !26
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.8446.ph ; 2 uses
  %i.uj = load double, ptr %i.ui, align 8, !tbaa !26
  %i.uk = tail call double @llvm.fmuladd.f64(double %i.sp, double %i.uj, double %i.uh)
  store double %i.uk, ptr %i.ui, align 8, !tbaa !26
  %i.ul = or disjoint i64 %.8446.ph, 1
  br label %.lr.ph447.prol.loopexit

.lr.ph447.prol.loopexit:                          ; preds = %.lr.ph447.prol, %.lr.ph447.preheader714
  %.8446.unr = phi i64 [ %.8446.ph, %.lr.ph447.preheader714 ], [ %i.ul, %.lr.ph447.prol ]
  %i.um = icmp eq i64 %i.e, %.neg806
  br i1 %i.um, label %.lr.ph.i.i375.preheader, label %.lr.ph447

.lr.ph447:                                        ; preds = %.lr.ph447.prol.loopexit, %.lr.ph447
  %.8446 = phi i64 [ %i.uy, %.lr.ph447 ], [ %.8446.unr, %.lr.ph447.prol.loopexit ] ; 4 uses
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.8446
  %i.uo = load double, ptr %i.un, align 8, !tbaa !26
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.8446 ; 2 uses
  %i.uq = load double, ptr %i.up, align 8, !tbaa !26
  %i.ur = tail call double @llvm.fmuladd.f64(double %i.sp, double %i.uq, double %i.uo)
  store double %i.ur, ptr %i.up, align 8, !tbaa !26
  %i.us = add nuw nsw i64 %.8446, 1               ; 2 uses
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.us
  %i.uu = load double, ptr %i.ut, align 8, !tbaa !26
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.us ; 2 uses
  %i.uw = load double, ptr %i.uv, align 8, !tbaa !26
  %i.ux = tail call double @llvm.fmuladd.f64(double %i.sp, double %i.uw, double %i.uu)
  store double %i.ux, ptr %i.uv, align 8, !tbaa !26
  %i.uy = add nuw nsw i64 %.8446, 2               ; 2 uses
  %exitcond466.not.1 = icmp eq i64 %i.uy, %i.e
  br i1 %exitcond466.not.1, label %.lr.ph.i.i375.preheader, label %.lr.ph447, !llvm.loop !177

.lr.ph.i.i375.preheader:                          ; preds = %.lr.ph447.prol.loopexit, %.lr.ph447, %middle.block602
  br i1 %i.is, label %.lr.ph.i.i375.epil.preheader, label %.lr.ph.i.i375

.lr.ph.i.i375:                                    ; preds = %.lr.ph.i.i375.preheader, %.lr.ph.i.i375
  %.012.i.i376 = phi double [ %i.vk, %.lr.ph.i.i375 ], [ 0.000000e+00, %.lr.ph.i.i375.preheader ]
  %.0710.i.i378 = phi ptr [ %i.vi, %.lr.ph.i.i375 ], [ %i.bi, %.lr.ph.i.i375.preheader ] ; 5 uses
  %niter796 = phi i64 [ %niter796.next.3, %.lr.ph.i.i375 ], [ 0, %.lr.ph.i.i375.preheader ]
  %i.uz = getelementptr i8, ptr %.0710.i.i378, i64 8
  %i.va = load double, ptr %.0710.i.i378, align 8, !tbaa !26 ; 2 uses
  %i.vb = tail call double @llvm.fmuladd.f64(double %i.va, double %i.va, double %.012.i.i376)
  %i.vc = getelementptr i8, ptr %.0710.i.i378, i64 16
  %i.vd = load double, ptr %i.uz, align 8, !tbaa !26 ; 2 uses
  %i.ve = tail call double @llvm.fmuladd.f64(double %i.vd, double %i.vd, double %i.vb)
  %i.vf = getelementptr i8, ptr %.0710.i.i378, i64 24
  %i.vg = load double, ptr %i.vc, align 8, !tbaa !26 ; 2 uses
  %i.vh = tail call double @llvm.fmuladd.f64(double %i.vg, double %i.vg, double %i.ve)
  %i.vi = getelementptr i8, ptr %.0710.i.i378, i64 32 ; 2 uses
  %i.vj = load double, ptr %i.vf, align 8, !tbaa !26 ; 2 uses
  %i.vk = tail call double @llvm.fmuladd.f64(double %i.vj, double %i.vj, double %i.vh) ; 3 uses
  %niter796.next.3 = add i64 %niter796, 4         ; 2 uses
  %niter796.ncmp.3 = icmp eq i64 %niter796.next.3, %unroll_iter795
  br i1 %niter796.ncmp.3, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380.loopexit.unr-lcssa, label %.lr.ph.i.i375, !llvm.loop !142

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i375
  br i1 %lcmp.mod792.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380, label %.lr.ph.i.i375.epil.preheader

.lr.ph.i.i375.epil.preheader:                     ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380.loopexit.unr-lcssa, %.lr.ph.i.i375.preheader
  %.012.i.i376.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i375.preheader ], [ %i.vk, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380.loopexit.unr-lcssa ]
  %.0710.i.i378.epil.init = phi ptr [ %i.bi, %.lr.ph.i.i375.preheader ], [ %i.vi, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod794)
  br label %.lr.ph.i.i375.epil

.lr.ph.i.i375.epil:                               ; preds = %.lr.ph.i.i375.epil, %.lr.ph.i.i375.epil.preheader
  %.012.i.i376.epil = phi double [ %i.vn, %.lr.ph.i.i375.epil ], [ %.012.i.i376.epil.init, %.lr.ph.i.i375.epil.preheader ]
  %.0710.i.i378.epil = phi ptr [ %i.vl, %.lr.ph.i.i375.epil ], [ %.0710.i.i378.epil.init, %.lr.ph.i.i375.epil.preheader ] ; 2 uses
  %epil.iter791 = phi i64 [ %epil.iter791.next, %.lr.ph.i.i375.epil ], [ 0, %.lr.ph.i.i375.epil.preheader ]
  %i.vl = getelementptr i8, ptr %.0710.i.i378.epil, i64 8
  %i.vm = load double, ptr %.0710.i.i378.epil, align 8, !tbaa !26 ; 2 uses
  %i.vn = tail call double @llvm.fmuladd.f64(double %i.vm, double %i.vm, double %.012.i.i376.epil) ; 2 uses
  %epil.iter791.next = add i64 %epil.iter791, 1   ; 2 uses
  %epil.iter791.cmp.not = icmp eq i64 %epil.iter791.next, %xtraiter790
  br i1 %epil.iter791.cmp.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380, label %.lr.ph.i.i375.epil, !llvm.loop !178

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380:    ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380.loopexit.unr-lcssa, %.lr.ph.i.i375.epil, %_ZN6casadi21casadi_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit
  %.0.lcssa.i.i374 = phi double [ 0.000000e+00, %_ZN6casadi21casadi_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit ], [ %i.vk, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380.loopexit.unr-lcssa ], [ %i.vn, %.lr.ph.i.i375.epil ]
  %i.vo = tail call noundef double @sqrt(double noundef %.0.lcssa.i.i374) #24 ; 2 uses
  %i.vp = fneg double %.0245
  %i.vq = fmul double %.sink.i, %i.vp             ; 3 uses
  %i.vr = fneg double %.sink.i
  %i.vs = fmul double %.0244, %i.vr
  %i.vt = fmul double %i.sh, %i.sh
  %5 = tail call double @llvm.fmuladd.f64(double %i.vs, double %.0246, double %i.sk) ; 2 uses
  %6 = fdiv double %5, %i.vq
  %7 = insertelement <2 x double> poison, double %6, i64 0
  %8 = insertelement <2 x double> %7, double %i.vq, i64 1 ; 2 uses
  %9 = shufflevector <2 x double> %i.it, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.vu = insertelement <2 x double> %9, double %i.vt, i64 1
  %i.vv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> %8, <2 x double> %i.vu) ; 2 uses
  %i.vw = extractelement <2 x double> %i.vv, i64 0
  %i.vx = tail call double @sqrt(double noundef %i.vw) #24 ; 2 uses
  %10 = insertelement <2 x double> poison, double %5, i64 0
  %11 = insertelement <2 x double> %10, double %i.sh, i64 1
  %12 = tail call double @llvm.fmuladd.f64(double %i.vo, double %i.vo, double %.0249) ; 2 uses
  %13 = shufflevector <2 x double> %i.vv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.vy = insertelement <2 x double> %13, double %12, i64 1
  %14 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.vy) ; 3 uses
  %15 = extractelement <2 x double> %14, i64 0
  %16 = fdiv double %i.vq, %15
  %i.vz = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wa = fdiv <2 x double> %11, %i.vz            ; 3 uses
  %i.wb = extractelement <2 x double> %i.wa, i64 0
  %i.wc = fmul double %i.sl, %i.sl
  %i.wd = shufflevector <2 x double> %i.wa, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.we = insertelement <2 x double> %i.wd, double %i.rg, i64 0 ; 2 uses
  %i.wf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.we, <2 x double> %i.we, <2 x double> %i.it) ; 2 uses
  %i.wg = extractelement <2 x double> %i.wf, i64 0
  %i.wh = fadd double %i.wg, %i.wc
  %i.wi = tail call double @sqrt(double noundef %i.wh) #24 ; 2 uses
  %i.wj = tail call double @llvm.fabs.f64(double %i.sm)
  %17 = extractelement <2 x double> %14, i64 1
  %i.wk = fmul double %.1251, %17
  %i.wl = fdiv double 1.000000e+00, %i.wk         ; 2 uses
  %i.wm = fmul double %.1251, %i.vx
  %i.wn = fdiv double %i.wm, %i.hz
  %i.wo = fmul double %.1251, 1.000000e-15
  %i.wp = fmul double %i.wo, %i.vx
  %i.wq = fdiv double %i.wp, %i.hz
  %i.wr = fadd double %i.wq, 1.000000e-15
  %i.ws = icmp ne i64 %.0238, 9999
  %i.wt = fadd double %i.wl, 1.000000e+00
  %i.wu = fcmp ugt double %i.wt, 1.000000e+00
  %i.wv = fmul double %.2243, %i.wj
  %i.ww = fdiv double %i.wi, %i.hz                ; 2 uses
  %i.wx = fmul double %.1251, %i.wi
  %i.wy = fadd double %i.wn, 1.000000e+00
  %i.wz = insertelement <2 x double> poison, double %i.ww, i64 0
  %i.xa = insertelement <2 x double> %i.wz, double %i.wv, i64 1
  %i.xb = insertelement <2 x double> poison, double %i.wy, i64 0
  %i.xc = insertelement <2 x double> %i.xb, double %i.wx, i64 1
  %i.xd = fdiv <2 x double> %i.xa, %i.xc          ; 2 uses
  %i.xe = fadd <2 x double> %i.xd, splat (double 1.000000e+00)
  %i.xf = fcmp ugt <2 x double> %i.xe, splat (double 1.000000e+00) ; 2 uses
  %i.xg = fcmp ugt double %i.wl, 1.000000e-08
  %i.xh = extractelement <2 x double> %i.xd, i64 1
  %i.xi = fcmp ugt double %i.xh, 1.000000e-15
  %i.xj = fcmp ugt double %i.ww, %i.wr
  %.not271402403404405406 = and i1 %i.ws, %i.wu
  %i.xk = select i1 %i.xj, i1 %i.xi, i1 false
  %i.xl = select i1 %i.xk, i1 %i.xg, i1 false
  %i.xm = extractelement <2 x i1> %i.xf, i64 0
  %i.xn = select i1 %i.xl, i1 %i.xm, i1 false
  %i.xo = extractelement <2 x i1> %i.xf, i64 1
  %i.xp = select i1 %i.xn, i1 %i.xo, i1 false
  %.not271 = select i1 %i.xp, i1 %.not271402403404405406, i1 false
  %i.xq = extractelement <2 x double> %i.wa, i64 1
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
  %i.xr = sub i64 %i.bf, %i.a
  %diff.check695 = icmp ugt i64 %i.xr, -32
  %or.cond712 = select i1 %min.iters.check697, i1 true, i1 %diff.check695
  br i1 %or.cond712, label %.lr.ph.i385.preheader713, label %vector.ph698

vector.ph698:                                     ; preds = %.lr.ph.i385.preheader
  %i.xs = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.e
  %n.vec699 = and i64 %i.c, 9223372036854775804   ; 4 uses
  %i.xt = shl i64 %n.vec699, 3                    ; 2 uses
  %i.xu = getelementptr i8, ptr %1, i64 %i.xt
  %i.xv = getelementptr i8, ptr %i.xs, i64 %i.xt
  %i.xw = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.e
  br label %vector.body700

vector.body700:                                   ; preds = %vector.body700, %vector.ph698
  %index701 = phi i64 [ 0, %vector.ph698 ], [ %index.next706, %vector.body700 ] ; 2 uses
  %i.xx = shl i64 %index701, 3                    ; 2 uses
  %next.gep702 = getelementptr i8, ptr %1, i64 %i.xx ; 2 uses
  %next.gep703 = getelementptr i8, ptr %i.xw, i64 %i.xx ; 2 uses
  %i.xy = getelementptr i8, ptr %next.gep703, i64 16
  %wide.load704 = load <2 x double>, ptr %next.gep703, align 8, !tbaa !26
  %wide.load705 = load <2 x double>, ptr %i.xy, align 8, !tbaa !26
  %i.xz = getelementptr i8, ptr %next.gep702, i64 16
  store <2 x double> %wide.load704, ptr %next.gep702, align 8, !tbaa !26
  store <2 x double> %wide.load705, ptr %i.xz, align 8, !tbaa !26
  %index.next706 = add nuw i64 %index701, 4       ; 2 uses
  %i.ya = icmp eq i64 %index.next706, %n.vec699
  br i1 %i.ya, label %middle.block707, label %vector.body700, !llvm.loop !180

middle.block707:                                  ; preds = %vector.body700
  %cmp.n708 = icmp eq i64 %i.c, %n.vec699
  br i1 %cmp.n708, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309, label %.lr.ph.i385.preheader713

.lr.ph.i385.preheader713:                         ; preds = %.lr.ph.i385.preheader, %middle.block707
  %.020.i386.ph = phi i64 [ 0, %.lr.ph.i385.preheader ], [ %n.vec699, %middle.block707 ] ; 4 uses
  %.01019.i387.ph = phi ptr [ %1, %.lr.ph.i385.preheader ], [ %i.xu, %middle.block707 ] ; 2 uses
  %.01218.i388.ph = phi ptr [ %i.be, %.lr.ph.i385.preheader ], [ %i.xv, %middle.block707 ] ; 2 uses
  %i.yb = sub nsw i64 %i.c, %.020.i386.ph
  %xtraiter797 = and i64 %i.yb, 7                 ; 2 uses
  %lcmp.mod798.not = icmp eq i64 %xtraiter797, 0
  br i1 %lcmp.mod798.not, label %.lr.ph.i385.prol.loopexit, label %.lr.ph.i385.prol

.lr.ph.i385.prol:                                 ; preds = %.lr.ph.i385.preheader713, %.lr.ph.i385.prol
  %.020.i386.prol = phi i64 [ %i.yf, %.lr.ph.i385.prol ], [ %.020.i386.ph, %.lr.ph.i385.preheader713 ]
  %.01019.i387.prol = phi ptr [ %i.ye, %.lr.ph.i385.prol ], [ %.01019.i387.ph, %.lr.ph.i385.preheader713 ] ; 2 uses
  %.01218.i388.prol = phi ptr [ %i.yc, %.lr.ph.i385.prol ], [ %.01218.i388.ph, %.lr.ph.i385.preheader713 ] ; 2 uses
  %prol.iter799 = phi i64 [ %prol.iter799.next, %.lr.ph.i385.prol ], [ 0, %.lr.ph.i385.preheader713 ]
  %i.yc = getelementptr inbounds nuw i8, ptr %.01218.i388.prol, i64 8 ; 2 uses
  %i.yd = load double, ptr %.01218.i388.prol, align 8, !tbaa !26
  %i.ye = getelementptr inbounds nuw i8, ptr %.01019.i387.prol, i64 8 ; 2 uses
  store double %i.yd, ptr %.01019.i387.prol, align 8, !tbaa !26
  %i.yf = add nuw nsw i64 %.020.i386.prol, 1      ; 2 uses
  %prol.iter799.next = add i64 %prol.iter799, 1   ; 2 uses
  %prol.iter799.cmp.not = icmp eq i64 %prol.iter799.next, %xtraiter797
  br i1 %prol.iter799.cmp.not, label %.lr.ph.i385.prol.loopexit, label %.lr.ph.i385.prol, !llvm.loop !181

.lr.ph.i385.prol.loopexit:                        ; preds = %.lr.ph.i385.prol, %.lr.ph.i385.preheader713
  %.020.i386.unr = phi i64 [ %.020.i386.ph, %.lr.ph.i385.preheader713 ], [ %i.yf, %.lr.ph.i385.prol ]
  %.01019.i387.unr = phi ptr [ %.01019.i387.ph, %.lr.ph.i385.preheader713 ], [ %i.ye, %.lr.ph.i385.prol ]
  %.01218.i388.unr = phi ptr [ %.01218.i388.ph, %.lr.ph.i385.preheader713 ], [ %i.yc, %.lr.ph.i385.prol ]
  %i.yg = sub nsw i64 %.020.i386.ph, %i.c
  %i.yh = icmp ugt i64 %i.yg, -8
  br i1 %i.yh, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309, label %.lr.ph.i385

.preheader.i390:                                  ; preds = %bb.n
  br i1 %i.bj, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309.sink.split, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309

.lr.ph.i385:                                      ; preds = %.lr.ph.i385.prol.loopexit, %.lr.ph.i385
  %.020.i386 = phi i64 [ %i.zg, %.lr.ph.i385 ], [ %.020.i386.unr, %.lr.ph.i385.prol.loopexit ]
  %.01019.i387 = phi ptr [ %i.zf, %.lr.ph.i385 ], [ %.01019.i387.unr, %.lr.ph.i385.prol.loopexit ] ; 9 uses
  %.01218.i388 = phi ptr [ %i.zd, %.lr.ph.i385 ], [ %.01218.i388.unr, %.lr.ph.i385.prol.loopexit ] ; 9 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 8
  %i.yj = load double, ptr %.01218.i388, align 8, !tbaa !26
  %i.yk = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 8
  store double %i.yj, ptr %.01019.i387, align 8, !tbaa !26
  %i.yl = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 16
  %i.ym = load double, ptr %i.yi, align 8, !tbaa !26
  %i.yn = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 16
  store double %i.ym, ptr %i.yk, align 8, !tbaa !26
  %i.yo = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 24
  %i.yp = load double, ptr %i.yl, align 8, !tbaa !26
  %i.yq = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 24
  store double %i.yp, ptr %i.yn, align 8, !tbaa !26
  %i.yr = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 32
  %i.ys = load double, ptr %i.yo, align 8, !tbaa !26
  %i.yt = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 32
  store double %i.ys, ptr %i.yq, align 8, !tbaa !26
  %i.yu = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 40
  %i.yv = load double, ptr %i.yr, align 8, !tbaa !26
  %i.yw = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 40
  store double %i.yv, ptr %i.yt, align 8, !tbaa !26
  %i.yx = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 48
  %i.yy = load double, ptr %i.yu, align 8, !tbaa !26
  %i.yz = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 48
  store double %i.yy, ptr %i.yw, align 8, !tbaa !26
  %i.za = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 56
  %i.zb = load double, ptr %i.yx, align 8, !tbaa !26
  %i.zc = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 56
  store double %i.zb, ptr %i.yz, align 8, !tbaa !26
  %i.zd = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 64
  %i.ze = load double, ptr %i.za, align 8, !tbaa !26
  %i.zf = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 64
  store double %i.ze, ptr %i.zc, align 8, !tbaa !26
  %i.zg = add nuw nsw i64 %.020.i386, 8           ; 2 uses
  %exitcond.not.i389.7 = icmp eq i64 %i.zg, %i.c
  br i1 %exitcond.not.i389.7, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309, label %.lr.ph.i385, !llvm.loop !182

_ZN6casadi12casadi_clearIdEEvPT_x.exit309.sink.split: ; preds = %.preheader.i390, %bb.d
  %i.zh = shl nuw i64 %i.c, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %1, i8 0, i64 %i.zh, i1 false), !tbaa !26
  br label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309

_ZN6casadi12casadi_clearIdEEvPT_x.exit309:        ; preds = %.lr.ph.i385.prol.loopexit, %.lr.ph.i385, %middle.block707, %_ZN6casadi12casadi_clearIdEEvPT_x.exit309.sink.split, %.preheader.i390, %.preheader16.i383, %split, %bb.d
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #19

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
!71 = distinct !{!71, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!72 = distinct !{!72, !71, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!73 = distinct !{!73, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!74 = distinct !{!74, !73, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!75 = !{!72}
!76 = !{!74}
!77 = !{!74, !72}
!78 = distinct !{!78, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!79 = distinct !{!79, !78, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!80 = distinct !{!80, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
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
!105 = distinct !{!105, i1 false, !"_ZN6casadi6strvecB5cxx11Ev"}
!106 = distinct !{!106, !105, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!107 = !{!106}
!108 = !{!9, !9, i64 0}
!109 = !{!6, !6, i64 0}
!110 = !{!12, !12, i64 0}
!111 = !{i64 0, i64 8, !108, i64 8, i64 8, !57, i64 16, i64 8, !57, i64 24, i64 4, !109, i64 32, i64 8, !110, i64 40, i64 8, !108}
!112 = distinct !{!112, i1 false, !"_ZN6casadi6strvecB5cxx11Ev"}
!113 = distinct !{!113, !112, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!114 = !{!113}
!115 = distinct !{!115, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!116 = distinct !{!116, !115, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!117 = distinct !{!117, i1 false, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!118 = distinct !{!118, !117, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!119 = !{!116}
!120 = !{!118, !116}
!121 = distinct !{!121, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!122 = distinct !{!122, !121, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!123 = distinct !{!123, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!124 = distinct !{!124, !123, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!125 = !{!122}
!126 = !{!124}
!127 = !{!124, !122}
!128 = distinct !{!128, !45}
!129 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!130 = !{!129, !58, i64 0}
!131 = !{!129, !58, i64 8}
!132 = !{!129, !58, i64 16}
!133 = distinct !{!133, i1 false, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_"}
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
