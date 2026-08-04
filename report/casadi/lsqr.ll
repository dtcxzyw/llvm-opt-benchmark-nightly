inline.NumInlined: 579
inline.NumDeleted: 289
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6casadi24casadi_lsqr_single_solveIdEEiPKT_PS1_xPKxS4_:bb.a
  %.0710.i.i289 = phi ptr [ %i.f, %.lr.ph.i.i286.preheader.new ], [ %i.fs, %.lr.ph.i.i286 ] ; 5 uses
  %niter760 = phi i64 [ 0, %.lr.ph.i.i286.preheader.new ], [ %niter760.next.3, %.lr.ph.i.i286 ]
  %i.fj = getelementptr i8, ptr %.0710.i.i289, i64 8
  %i.fk = load double, ptr %.0710.i.i289, align 8, !tbaa !30 ; 2 uses
  %i.fl = tail call double @llvm.fmuladd.f64(double %i.fk, double %i.fk, double %.012.i.i287)
  %i.fm = getelementptr i8, ptr %.0710.i.i289, i64 16
  %i.fn = load double, ptr %i.fj, align 8, !tbaa !30 ; 2 uses
  %i.fo = tail call double @llvm.fmuladd.f64(double %i.fn, double %i.fn, double %i.fl)
  %i.fp = getelementptr i8, ptr %.0710.i.i289, i64 24
  %i.fq = load double, ptr %i.fm, align 8, !tbaa !30 ; 2 uses
  %i.fr = tail call double @llvm.fmuladd.f64(double %i.fq, double %i.fq, double %i.fo)
  %i.fs = getelementptr i8, ptr %.0710.i.i289, i64 32 ; 2 uses
  %i.ft = load double, ptr %i.fp, align 8, !tbaa !30 ; 2 uses
  %i.fu = tail call double @llvm.fmuladd.f64(double %i.ft, double %i.ft, double %i.fr) ; 3 uses
  %niter760.next.3 = add i64 %niter760, 4         ; 2 uses
  %niter760.ncmp.3 = icmp eq i64 %niter760.next.3, %unroll_iter759
  br i1 %niter760.ncmp.3, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread.unr-lcssa, label %.lr.ph.i.i286, !llvm.loop !145

_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread.unr-lcssa: ; preds = %.lr.ph.i.i286
  %lcmp.mod756.not = icmp eq i64 %xtraiter754, 0
  br i1 %lcmp.mod756.not, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread, label %.lr.ph.i.i286.epil.preheader

.lr.ph.i.i286.epil.preheader:                     ; preds = %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread.unr-lcssa, %.lr.ph.i.i286.preheader
  %.012.i.i287.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i286.preheader ], [ %i.fu, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread.unr-lcssa ]
  %.0710.i.i289.epil.init = phi ptr [ %i.f, %.lr.ph.i.i286.preheader ], [ %i.fs, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread.unr-lcssa ]
  %lcmp.mod758 = icmp ne i64 %xtraiter754, 0
  tail call void @llvm.assume(i1 %lcmp.mod758)
  br label %.lr.ph.i.i286.epil

.lr.ph.i.i286.epil:                               ; preds = %.lr.ph.i.i286.epil, %.lr.ph.i.i286.epil.preheader
  %.012.i.i287.epil = phi double [ %i.fx, %.lr.ph.i.i286.epil ], [ %.012.i.i287.epil.init, %.lr.ph.i.i286.epil.preheader ]
  %.0710.i.i289.epil = phi ptr [ %i.fv, %.lr.ph.i.i286.epil ], [ %.0710.i.i289.epil.init, %.lr.ph.i.i286.epil.preheader ] ; 2 uses
  %epil.iter755 = phi i64 [ %epil.iter755.next, %.lr.ph.i.i286.epil ], [ 0, %.lr.ph.i.i286.epil.preheader ]
  %i.fv = getelementptr i8, ptr %.0710.i.i289.epil, i64 8
  %i.fw = load double, ptr %.0710.i.i289.epil, align 8, !tbaa !30 ; 2 uses
  %i.fx = tail call double @llvm.fmuladd.f64(double %i.fw, double %i.fw, double %.012.i.i287.epil) ; 2 uses
  %epil.iter755.next = add i64 %epil.iter755, 1   ; 2 uses
  %epil.iter755.cmp.not = icmp eq i64 %epil.iter755.next, %xtraiter754
  br i1 %epil.iter755.cmp.not, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread, label %.lr.ph.i.i286.epil, !llvm.loop !153

_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread: ; preds = %.lr.ph.i.i286.epil, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread.unr-lcssa
  %.lcssa738 = phi double [ %i.fu, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread.unr-lcssa ], [ %i.fx, %.lr.ph.i.i286.epil ]
  %i.fy = tail call noundef double @sqrt(double noundef %.lcssa738) #24 ; 7 uses
  %i.fz = fcmp ogt double %i.fy, 0.000000e+00
  br i1 %i.fz, label %.lr.ph426, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit303

.lr.ph426:                                        ; preds = %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread
  %i.ga = fdiv nnan double 1.000000e+00, %i.fy    ; 2 uses
  %min.iters.check563 = icmp ult i64 %i.e, 4
  br i1 %min.iters.check563, label %scalar.ph562.preheader, label %vector.ph564

vector.ph564:                                     ; preds = %.lr.ph426
  %n.vec566 = and i64 %i.e, -4                    ; 3 uses
  %broadcast.splatinsert567 = insertelement <2 x double> poison, double %i.ga, i64 0
  %broadcast.splat568 = shufflevector <2 x double> %broadcast.splatinsert567, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body569

vector.body569:                                   ; preds = %vector.body569, %vector.ph564
  %index570 = phi i64 [ 0, %vector.ph564 ], [ %index.next573, %vector.body569 ] ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index570 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 2 uses
  %wide.load571 = load <2 x double>, ptr %i.gb, align 8, !tbaa !30
  %wide.load572 = load <2 x double>, ptr %i.gc, align 8, !tbaa !30
  %i.gd = fmul <2 x double> %broadcast.splat568, %wide.load571
  %i.ge = fmul <2 x double> %broadcast.splat568, %wide.load572
  store <2 x double> %i.gd, ptr %i.gb, align 8, !tbaa !30
  store <2 x double> %i.ge, ptr %i.gc, align 8, !tbaa !30
  %index.next573 = add nuw i64 %index570, 4       ; 2 uses
  %i.gf = icmp eq i64 %index.next573, %n.vec566
  br i1 %i.gf, label %middle.block574, label %vector.body569, !llvm.loop !154

middle.block574:                                  ; preds = %vector.body569
  %cmp.n575 = icmp eq i64 %i.e, %n.vec566
  br i1 %cmp.n575, label %._crit_edge427, label %scalar.ph562.preheader

scalar.ph562.preheader:                           ; preds = %.lr.ph426, %middle.block574
  %.1425.ph = phi i64 [ 0, %.lr.ph426 ], [ %n.vec566, %middle.block574 ]
  br label %scalar.ph562

scalar.ph562:                                     ; preds = %scalar.ph562.preheader, %scalar.ph562
  %.1425 = phi i64 [ %i.gj, %scalar.ph562 ], [ %.1425.ph, %scalar.ph562.preheader ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.1425 ; 2 uses
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !30
  %i.gi = fmul double %i.ga, %i.gh
  store double %i.gi, ptr %i.gg, align 8, !tbaa !30
  %i.gj = add nuw nsw i64 %.1425, 1               ; 2 uses
  %exitcond458.not = icmp eq i64 %i.gj, %i.e
  br i1 %exitcond458.not, label %._crit_edge427, label %scalar.ph562, !llvm.loop !155

._crit_edge427:                                   ; preds = %scalar.ph562, %middle.block574
  br i1 %or.cond.i516520526, label %.lr.ph.i296.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit303

.lr.ph.i296.preheader:                            ; preds = %._crit_edge427
  %min.iters.check580 = icmp ult i64 %i.e, 8
  br i1 %min.iters.check580, label %.lr.ph.i296.preheader737, label %vector.memcheck577

vector.memcheck577:                               ; preds = %.lr.ph.i296.preheader
  %i.gk = shl i64 %i.e, 4
  %i.gl = add i64 %i.gk, -1
  %diff.check578 = icmp ult i64 %i.gl, 31
  br i1 %diff.check578, label %.lr.ph.i296.preheader737, label %vector.ph581

vector.ph581:                                     ; preds = %vector.memcheck577
  %n.vec583 = and i64 %i.e, -4                    ; 4 uses
  %i.gm = shl i64 %n.vec583, 3                    ; 2 uses
  %i.gn = getelementptr i8, ptr %i.bh, i64 %i.gm
  %i.go = getelementptr i8, ptr %i.f, i64 %i.gm
  br label %vector.body584

vector.body584:                                   ; preds = %vector.body584, %vector.ph581
  %index585 = phi i64 [ 0, %vector.ph581 ], [ %index.next590, %vector.body584 ] ; 2 uses
  %i.gp = shl i64 %index585, 3                    ; 2 uses
  %next.gep586 = getelementptr i8, ptr %i.bh, i64 %i.gp ; 2 uses
  %next.gep587 = getelementptr i8, ptr %i.f, i64 %i.gp ; 2 uses
  %i.gq = getelementptr i8, ptr %next.gep587, i64 16
  %wide.load588 = load <2 x double>, ptr %next.gep587, align 8, !tbaa !30
  %wide.load589 = load <2 x double>, ptr %i.gq, align 8, !tbaa !30
  %i.gr = getelementptr i8, ptr %next.gep586, i64 16
  store <2 x double> %wide.load588, ptr %next.gep586, align 8, !tbaa !30
  store <2 x double> %wide.load589, ptr %i.gr, align 8, !tbaa !30
  %index.next590 = add nuw i64 %index585, 4       ; 2 uses
  %i.gs = icmp eq i64 %index.next590, %n.vec583
  br i1 %i.gs, label %middle.block591, label %vector.body584, !llvm.loop !156

middle.block591:                                  ; preds = %vector.body584
  %cmp.n592 = icmp eq i64 %i.e, %n.vec583
  br i1 %cmp.n592, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit303, label %.lr.ph.i296.preheader737

.lr.ph.i296.preheader737:                         ; preds = %vector.memcheck577, %.lr.ph.i296.preheader, %middle.block591
  %.020.i297.ph = phi i64 [ 0, %vector.memcheck577 ], [ 0, %.lr.ph.i296.preheader ], [ %n.vec583, %middle.block591 ] ; 4 uses
  %.01019.i298.ph = phi ptr [ %i.bh, %vector.memcheck577 ], [ %i.bh, %.lr.ph.i296.preheader ], [ %i.gn, %middle.block591 ] ; 2 uses
  %.01218.i299.ph = phi ptr [ %i.f, %vector.memcheck577 ], [ %i.f, %.lr.ph.i296.preheader ], [ %i.go, %middle.block591 ] ; 2 uses
  %i.gt = sub i64 %i.e, %.020.i297.ph
  %xtraiter761 = and i64 %i.gt, 7                 ; 2 uses
  %lcmp.mod762.not = icmp eq i64 %xtraiter761, 0
  br i1 %lcmp.mod762.not, label %.lr.ph.i296.prol.loopexit, label %.lr.ph.i296.prol

.lr.ph.i296.prol:                                 ; preds = %.lr.ph.i296.preheader737, %.lr.ph.i296.prol
  %.020.i297.prol = phi i64 [ %i.gx, %.lr.ph.i296.prol ], [ %.020.i297.ph, %.lr.ph.i296.preheader737 ]
  %.01019.i298.prol = phi ptr [ %i.gw, %.lr.ph.i296.prol ], [ %.01019.i298.ph, %.lr.ph.i296.preheader737 ] ; 2 uses
  %.01218.i299.prol = phi ptr [ %i.gu, %.lr.ph.i296.prol ], [ %.01218.i299.ph, %.lr.ph.i296.preheader737 ] ; 2 uses
  %prol.iter763 = phi i64 [ %prol.iter763.next, %.lr.ph.i296.prol ], [ 0, %.lr.ph.i296.preheader737 ]
  %i.gu = getelementptr inbounds nuw i8, ptr %.01218.i299.prol, i64 8 ; 2 uses
  %i.gv = load double, ptr %.01218.i299.prol, align 8, !tbaa !30
  %i.gw = getelementptr inbounds nuw i8, ptr %.01019.i298.prol, i64 8 ; 2 uses
  store double %i.gv, ptr %.01019.i298.prol, align 8, !tbaa !30
  %i.gx = add nuw nsw i64 %.020.i297.prol, 1      ; 2 uses
  %prol.iter763.next = add i64 %prol.iter763, 1   ; 2 uses
  %prol.iter763.cmp.not = icmp eq i64 %prol.iter763.next, %xtraiter761
  br i1 %prol.iter763.cmp.not, label %.lr.ph.i296.prol.loopexit, label %.lr.ph.i296.prol, !llvm.loop !157

.lr.ph.i296.prol.loopexit:                        ; preds = %.lr.ph.i296.prol, %.lr.ph.i296.preheader737
  %.020.i297.unr = phi i64 [ %.020.i297.ph, %.lr.ph.i296.preheader737 ], [ %i.gx, %.lr.ph.i296.prol ]
  %.01019.i298.unr = phi ptr [ %.01019.i298.ph, %.lr.ph.i296.preheader737 ], [ %i.gw, %.lr.ph.i296.prol ]
  %.01218.i299.unr = phi ptr [ %.01218.i299.ph, %.lr.ph.i296.preheader737 ], [ %i.gu, %.lr.ph.i296.prol ]
  %i.gy = sub i64 %.020.i297.ph, %i.e
  %i.gz = icmp ugt i64 %i.gy, -8
  br i1 %i.gz, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit303, label %.lr.ph.i296

.lr.ph.i296:                                      ; preds = %.lr.ph.i296.prol.loopexit, %.lr.ph.i296
  %.020.i297 = phi i64 [ %i.hy, %.lr.ph.i296 ], [ %.020.i297.unr, %.lr.ph.i296.prol.loopexit ]
  %.01019.i298 = phi ptr [ %i.hx, %.lr.ph.i296 ], [ %.01019.i298.unr, %.lr.ph.i296.prol.loopexit ] ; 9 uses
  %.01218.i299 = phi ptr [ %i.hv, %.lr.ph.i296 ], [ %.01218.i299.unr, %.lr.ph.i296.prol.loopexit ] ; 9 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.01218.i299, i64 8
  %i.hb = load double, ptr %.01218.i299, align 8, !tbaa !30
  %i.hc = getelementptr inbounds nuw i8, ptr %.01019.i298, i64 8
  store double %i.hb, ptr %.01019.i298, align 8, !tbaa !30
  %i.hd = getelementptr inbounds nuw i8, ptr %.01218.i299, i64 16
  %i.he = load double, ptr %i.ha, align 8, !tbaa !30
  %i.hf = getelementptr inbounds nuw i8, ptr %.01019.i298, i64 16
  store double %i.he, ptr %i.hc, align 8, !tbaa !30
  %i.hg = getelementptr inbounds nuw i8, ptr %.01218.i299, i64 24
  %i.hh = load double, ptr %i.hd, align 8, !tbaa !30
  %i.hi = getelementptr inbounds nuw i8, ptr %.01019.i298, i64 24
  store double %i.hh, ptr %i.hf, align 8, !tbaa !30
  %i.hj = getelementptr inbounds nuw i8, ptr %.01218.i299, i64 32
  %i.hk = load double, ptr %i.hg, align 8, !tbaa !30
  %i.hl = getelementptr inbounds nuw i8, ptr %.01019.i298, i64 32
  store double %i.hk, ptr %i.hi, align 8, !tbaa !30
  %i.hm = getelementptr inbounds nuw i8, ptr %.01218.i299, i64 40
  %i.hn = load double, ptr %i.hj, align 8, !tbaa !30
  %i.ho = getelementptr inbounds nuw i8, ptr %.01019.i298, i64 40
  store double %i.hn, ptr %i.hl, align 8, !tbaa !30
  %i.hp = getelementptr inbounds nuw i8, ptr %.01218.i299, i64 48
  %i.hq = load double, ptr %i.hm, align 8, !tbaa !30
  %i.hr = getelementptr inbounds nuw i8, ptr %.01019.i298, i64 48
  store double %i.hq, ptr %i.ho, align 8, !tbaa !30
  %i.hs = getelementptr inbounds nuw i8, ptr %.01218.i299, i64 56
  %i.ht = load double, ptr %i.hp, align 8, !tbaa !30
  %i.hu = getelementptr inbounds nuw i8, ptr %.01019.i298, i64 56
  store double %i.ht, ptr %i.hr, align 8, !tbaa !30
  %i.hv = getelementptr inbounds nuw i8, ptr %.01218.i299, i64 64
  %i.hw = load double, ptr %i.hs, align 8, !tbaa !30
  %i.hx = getelementptr inbounds nuw i8, ptr %.01019.i298, i64 64
  store double %i.hw, ptr %i.hu, align 8, !tbaa !30
  %i.hy = add nuw nsw i64 %.020.i297, 8           ; 2 uses
  %exitcond.not.i300.7 = icmp eq i64 %i.hy, %i.e
  br i1 %exitcond.not.i300.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit303, label %.lr.ph.i296, !llvm.loop !158

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit303:    ; preds = %.lr.ph.i296.prol.loopexit, %.lr.ph.i296, %middle.block591, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit, %.preheader49.i, %.preheader.i284, %_ZN6casadi12casadi_clearIdEEvPT_x.exit279, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread, %._crit_edge427, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit
  %i.hz = phi double [ %i.cb, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit ], [ 0.000000e+00, %_ZN6casadi12casadi_clearIdEEvPT_x.exit279 ], [ %i.cb, %._crit_edge427 ], [ %i.cb, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread ], [ %i.cb, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit ], [ %i.cb, %.preheader.i284 ], [ %i.cb, %.preheader49.i ], [ %i.cb, %middle.block591 ], [ %i.cb, %.lr.ph.i296 ], [ %i.cb, %.lr.ph.i296.prol.loopexit ] ; 4 uses
  %i.ia = phi i1 [ %i.bd, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit ], [ %i.bd, %_ZN6casadi12casadi_clearIdEEvPT_x.exit279 ], [ true, %._crit_edge427 ], [ true, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread ], [ false, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit ], [ false, %.preheader.i284 ], [ false, %.preheader49.i ], [ true, %middle.block591 ], [ true, %.lr.ph.i296 ], [ true, %.lr.ph.i296.prol.loopexit ] ; 7 uses
  %.0257400 = phi double [ 0.000000e+00, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit ], [ 0.000000e+00, %_ZN6casadi12casadi_clearIdEEvPT_x.exit279 ], [ %i.fy, %._crit_edge427 ], [ %i.fy, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread ], [ 0.000000e+00, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit ], [ 0.000000e+00, %.preheader.i284 ], [ 0.000000e+00, %.preheader49.i ], [ %i.fy, %middle.block591 ], [ %i.fy, %.lr.ph.i296 ], [ %i.fy, %.lr.ph.i296.prol.loopexit ] ; 3 uses
  %i.ib = fmul double %i.hz, %.0257400
  %i.ic = fcmp oeq double %i.ib, 0.000000e+00
  br i1 %i.ic, label %bb.d, label %.preheader416

.preheader416:                                    ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit303
  %i.id = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.e
  %i.ie = icmp ne ptr %0, null
  %or.cond.i309 = and i1 %i.ie, %.not.i.not       ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.if, i64 %i.e
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 12 uses
  %.not.i311 = icmp eq i64 %2, 0                  ; 2 uses
  %i.ii = icmp slt i64 %i.e, 1
  %i.ij = shl i64 %i.e, 3
  %scevgep = getelementptr i8, ptr %i.id, i64 %i.ij
  %5 = insertelement <2 x double> poison, double %i.hz, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ik = add i64 %i.c, -1
  %i.il = add i64 %i.e, -1                        ; 2 uses
  %min.iters.check695 = icmp ult i64 %i.c, 4
  %n.vec698 = and i64 %i.c, 9223372036854775804   ; 3 uses
  %cmp.n707 = icmp eq i64 %i.c, %n.vec698
  %xtraiter775 = and i64 %i.c, 3                  ; 3 uses
  %i.im = icmp ult i64 %i.ik, 3
  %unroll_iter780 = and i64 %i.c, 9223372036854775804
  %lcmp.mod777.not = icmp eq i64 %xtraiter775, 0
  %lcmp.mod779 = icmp ne i64 %xtraiter775, 0
  %min.iters.check680 = icmp ult i64 %i.c, 4
  %n.vec683 = and i64 %i.c, 9223372036854775804   ; 3 uses
  %cmp.n692 = icmp eq i64 %i.c, %n.vec683
  %min.iters.check665 = icmp ult i64 %i.e, 4
  %n.vec668 = and i64 %i.e, -4                    ; 3 uses
  %cmp.n677 = icmp eq i64 %i.e, %n.vec668
  %xtraiter793 = and i64 %i.e, 3                  ; 3 uses
  %i.in = icmp ult i64 %i.il, 3
  %unroll_iter798 = and i64 %i.e, -4
  %lcmp.mod795.not = icmp eq i64 %xtraiter793, 0
  %lcmp.mod797 = icmp ne i64 %xtraiter793, 0
  %min.iters.check650 = icmp ult i64 %i.e, 4
  %n.vec653 = and i64 %i.e, 9223372036854775804   ; 3 uses
  %cmp.n662 = icmp eq i64 %i.e, %n.vec653
  %min.iters.check636 = icmp ult i64 %i.e, 2
  %n.vec639 = and i64 %i.e, -2                    ; 3 uses
  %cmp.n647 = icmp eq i64 %i.e, %n.vec639
  %min.iters.check619 = icmp ult i64 %i.e, 4
  %bound0615 = icmp ult ptr %i.be, %i.bi
  %bound1616 = icmp ult ptr %i.bh, %scevgep
  %found.conflict617 = and i1 %bound0615, %bound1616
  %n.vec622 = and i64 %i.e, -4                    ; 3 uses
  %i.io = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.e
  %cmp.n633 = icmp eq i64 %i.e, %n.vec622
  %xtraiter800 = and i64 %i.e, 1
  %lcmp.mod801.not = icmp eq i64 %xtraiter800, 0
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.e
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.e
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.e
  %min.iters.check598 = icmp ult i64 %i.e, 4
  %bound0 = icmp ult ptr %i.bh, %i.bg
  %bound1 = icmp ult ptr %i.f, %i.bi
  %found.conflict = and i1 %bound0, %bound1
  %n.vec601 = and i64 %i.e, -4                    ; 3 uses
  %cmp.n612 = icmp eq i64 %i.e, %n.vec601
  %xtraiter803 = and i64 %i.e, 1
  %lcmp.mod804.not = icmp eq i64 %xtraiter803, 0
  %xtraiter806 = and i64 %i.e, 3                  ; 3 uses
  %i.is = icmp ult i64 %i.il, 3
  %unroll_iter811 = and i64 %i.e, -4
  %lcmp.mod808.not = icmp eq i64 %xtraiter806, 0
  %lcmp.mod810 = icmp ne i64 %xtraiter806, 0
  br label %bb.e

bb.d:                                             ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit303
  %.not.i304 = icmp ne ptr %1, null
  %or.cond.i305 = and i1 %.not.i304, %i.bj
  br i1 %or.cond.i305, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit308.sink.split, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit308

bb.e:                                             ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit379, %.preheader416
  %.0261 = phi double [ %i.sl, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit379 ], [ %i.hz, %.preheader416 ] ; 2 uses
  %.0260 = phi double [ %i.sj, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit379 ], [ %.0257400, %.preheader416 ] ; 3 uses
  %.1258 = phi double [ %.2259, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit379 ], [ %.0257400, %.preheader416 ] ; 5 uses
  %.0256 = phi double [ %i.xx, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit379 ], [ 0.000000e+00, %.preheader416 ]
  %.0255 = phi double [ %i.wj, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit379 ], [ -1.000000e+00, %.preheader416 ]
  %.0254 = phi double [ %i.wm, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit379 ], [ 0.000000e+00, %.preheader416 ]
  %.0251 = phi double [ %i.we, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit379 ], [ 0.000000e+00, %.preheader416 ]
  %.0250 = phi i64 [ %i.iu, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit379 ], [ 0, %.preheader416 ] ; 2 uses
  %.0240 = phi double [ %.1241, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit379 ], [ 0.000000e+00, %.preheader416 ] ; 4 uses
  %i.it = phi <2 x double> [ %i.wq, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit379 ], [ zeroinitializer, %.preheader416 ] ; 2 uses
  %i.iu = add nuw nsw i64 %.0250, 1
  br i1 %i.bj, label %.lr.ph430, label %._crit_edge431

.lr.ph430:                                        ; preds = %bb.e
  %i.iv = fneg double %.1258                      ; 2 uses
  br i1 %min.iters.check695, label %scalar.ph694.preheader, label %vector.ph696

vector.ph696:                                     ; preds = %.lr.ph430
  %broadcast.splatinsert699 = insertelement <2 x double> poison, double %i.iv, i64 0
  %broadcast.splat700 = shufflevector <2 x double> %broadcast.splatinsert699, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body701

vector.body701:                                   ; preds = %vector.body701, %vector.ph696
  %index702 = phi i64 [ 0, %vector.ph696 ], [ %index.next705, %vector.body701 ] ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index702 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16 ; 2 uses
  %wide.load703 = load <2 x double>, ptr %i.iw, align 8, !tbaa !30
  %wide.load704 = load <2 x double>, ptr %i.ix, align 8, !tbaa !30
  %i.iy = fmul <2 x double> %wide.load703, %broadcast.splat700
  %i.iz = fmul <2 x double> %wide.load704, %broadcast.splat700
  store <2 x double> %i.iy, ptr %i.iw, align 8, !tbaa !30
  store <2 x double> %i.iz, ptr %i.ix, align 8, !tbaa !30
  %index.next705 = add nuw i64 %index702, 4       ; 2 uses
  %i.ja = icmp eq i64 %index.next705, %n.vec698
  br i1 %i.ja, label %middle.block706, label %vector.body701, !llvm.loop !159

middle.block706:                                  ; preds = %vector.body701
  br i1 %cmp.n707, label %._crit_edge431, label %scalar.ph694.preheader

scalar.ph694.preheader:                           ; preds = %.lr.ph430, %middle.block706
  %.2428.ph = phi i64 [ 0, %.lr.ph430 ], [ %n.vec698, %middle.block706 ]
  br label %scalar.ph694

scalar.ph694:                                     ; preds = %scalar.ph694.preheader, %scalar.ph694
  %.2428 = phi i64 [ %i.je, %scalar.ph694 ], [ %.2428.ph, %scalar.ph694.preheader ] ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.2428 ; 2 uses
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !30
  %i.jd = fmul double %i.jc, %i.iv
  store double %i.jd, ptr %i.jb, align 8, !tbaa !30
  %i.je = add nuw nsw i64 %.2428, 1               ; 2 uses
  %exitcond459.not = icmp eq i64 %i.je, %i.c
  br i1 %exitcond459.not, label %._crit_edge431, label %scalar.ph694, !llvm.loop !160

._crit_edge431:                                   ; preds = %scalar.ph694, %middle.block706, %bb.e
  br i1 %or.cond.i309, label %bb.f, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit333

bb.f:                                             ; preds = %._crit_edge431
  br i1 %.not.i311, label %.preheader.i323, label %.preheader49.i312

.preheader49.i312:                                ; preds = %bb.f
  br i1 %i.ia, label %.lr.ph54.preheader.i313, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit333

.lr.ph54.preheader.i313:                          ; preds = %.preheader49.i312
  %.pre.i314 = load i64, ptr %i.if, align 8, !tbaa !67
  br label %.lr.ph54.i315

.preheader.i323:                                  ; preds = %bb.f
  br i1 %i.ia, label %.lr.ph58.preheader.i324, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit333

.lr.ph58.preheader.i324:                          ; preds = %.preheader.i323
  %.pre63.i325 = load i64, ptr %i.if, align 8, !tbaa !67
  br label %.lr.ph58.i326

.loopexit48.i317:                                 ; preds = %.prol.loopexit765, %.lr.ph.i319.new, %.lr.ph54.i315
  %exitcond60.not.i318 = icmp eq i64 %i.jg, %i.e
  br i1 %exitcond60.not.i318, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit333, label %.lr.ph54.i315, !llvm.loop !149

.lr.ph54.i315:                                    ; preds = %.loopexit48.i317, %.lr.ph54.preheader.i313
  %i.jf = phi i64 [ %i.ji, %.loopexit48.i317 ], [ %.pre.i314, %.lr.ph54.preheader.i313 ] ; 7 uses
  %.053.i316 = phi i64 [ %i.jg, %.loopexit48.i317 ], [ 0, %.lr.ph54.preheader.i313 ] ; 2 uses
  %i.jg = add nuw nsw i64 %.053.i316, 1           ; 3 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.jg
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !67 ; 5 uses
  %i.jj = icmp slt i64 %i.jf, %i.ji
  br i1 %i.jj, label %.lr.ph.i319, label %.loopexit48.i317

.lr.ph.i319:                                      ; preds = %.lr.ph54.i315
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.053.i316 ; 4 uses
  %.promoted.i320 = load double, ptr %i.jk, align 8, !tbaa !30 ; 2 uses
  %i.jl = sub i64 %i.ji, %i.jf
  %.neg817 = add i64 %i.jf, 1
  %xtraiter766 = and i64 %i.jl, 1
  %lcmp.mod767.not = icmp eq i64 %xtraiter766, 0
  br i1 %lcmp.mod767.not, label %.prol.loopexit765, label %.prol.loopexit765.unr-lcssa

.prol.loopexit765.unr-lcssa:                      ; preds = %.lr.ph.i319
  %i.jm = getelementptr inbounds [8 x i8], ptr %0, i64 %i.jf
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !30
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.jf
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !67
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.jp
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !30
  %i.js = tail call double @llvm.fmuladd.f64(double %i.jn, double %i.jr, double %.promoted.i320) ; 2 uses
  store double %i.js, ptr %i.jk, align 8, !tbaa !30
  %i.jt = add nsw i64 %i.jf, 1
  br label %.prol.loopexit765

.prol.loopexit765:                                ; preds = %.prol.loopexit765.unr-lcssa, %.lr.ph.i319
  %.unr769 = phi double [ %.promoted.i320, %.lr.ph.i319 ], [ %i.js, %.prol.loopexit765.unr-lcssa ]
  %.04252.i321.unr = phi i64 [ %i.jf, %.lr.ph.i319 ], [ %i.jt, %.prol.loopexit765.unr-lcssa ]
  %i.ju = icmp eq i64 %i.ji, %.neg817
  br i1 %i.ju, label %.loopexit48.i317, label %.lr.ph.i319.new

.lr.ph.i319.new:                                  ; preds = %.prol.loopexit765, %.lr.ph.i319.new
  %i.jv = phi double [ %i.kk, %.lr.ph.i319.new ], [ %.unr769, %.prol.loopexit765 ]
  %.04252.i321 = phi i64 [ %i.kl, %.lr.ph.i319.new ], [ %.04252.i321.unr, %.prol.loopexit765 ] ; 4 uses
  %i.jw = getelementptr inbounds [8 x i8], ptr %0, i64 %.04252.i321
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !30
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %.04252.i321
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !67
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.jz
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !30
  %i.kc = tail call double @llvm.fmuladd.f64(double %i.jx, double %i.kb, double %i.jv) ; 2 uses
  store double %i.kc, ptr %i.jk, align 8, !tbaa !30
  %i.kd = add nsw i64 %.04252.i321, 1             ; 2 uses
  %i.ke = getelementptr inbounds [8 x i8], ptr %0, i64 %i.kd
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !30
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.kd
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !67
  %i.ki = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.kh
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !30
  %i.kk = tail call double @llvm.fmuladd.f64(double %i.kf, double %i.kj, double %i.kc) ; 2 uses
  store double %i.kk, ptr %i.jk, align 8, !tbaa !30
  %i.kl = add nsw i64 %.04252.i321, 2             ; 2 uses
  %exitcond.not.i322.1 = icmp eq i64 %i.kl, %i.ji
  br i1 %exitcond.not.i322.1, label %.loopexit48.i317, label %.lr.ph.i319.new, !llvm.loop !150

.loopexit.i328:                                   ; preds = %.prol.loopexit771, %.lr.ph56.i330.new, %.lr.ph58.i326
  %exitcond62.not.i329 = icmp eq i64 %i.kn, %i.e
  br i1 %exitcond62.not.i329, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit333, label %.lr.ph58.i326, !llvm.loop !151
end_hunk_0
begin_hunk_1_@_ZN6casadi24casadi_lsqr_single_solveIdEEiPKT_PS1_xPKxS4_:bb.a
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.nk
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !67
  %i.nv = getelementptr inbounds [8 x i8], ptr %4, i64 %i.nu
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !30
  %i.nx = tail call double @llvm.fmuladd.f64(double %i.ns, double %i.nw, double %.promoted.i352) ; 2 uses
  store double %i.nx, ptr %i.np, align 8, !tbaa !30
  %i.ny = add nsw i64 %i.nk, 1
  br label %.prol.loopexit788

.prol.loopexit788:                                ; preds = %.prol.loopexit788.unr-lcssa, %.lr.ph.i351
  %.unr792 = phi double [ %.promoted.i352, %.lr.ph.i351 ], [ %i.nx, %.prol.loopexit788.unr-lcssa ]
  %.04252.i353.unr = phi i64 [ %i.nk, %.lr.ph.i351 ], [ %i.ny, %.prol.loopexit788.unr-lcssa ]
  %i.nz = icmp eq i64 %i.nn, %.neg820
  br i1 %i.nz, label %.loopexit48.i349, label %.lr.ph.i351.new

.lr.ph.i351.new:                                  ; preds = %.prol.loopexit788, %.lr.ph.i351.new
  %i.oa = phi double [ %i.op, %.lr.ph.i351.new ], [ %.unr792, %.prol.loopexit788 ]
  %.04252.i353 = phi i64 [ %i.oq, %.lr.ph.i351.new ], [ %.04252.i353.unr, %.prol.loopexit788 ] ; 4 uses
  %i.ob = getelementptr inbounds [8 x i8], ptr %0, i64 %.04252.i353
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !30
  %i.od = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %.04252.i353
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !67
  %i.of = getelementptr inbounds [8 x i8], ptr %4, i64 %i.oe
  %i.og = load double, ptr %i.of, align 8, !tbaa !30
  %i.oh = tail call double @llvm.fmuladd.f64(double %i.oc, double %i.og, double %i.oa) ; 2 uses
  store double %i.oh, ptr %i.np, align 8, !tbaa !30
  %i.oi = add nsw i64 %.04252.i353, 1             ; 2 uses
  %i.oj = getelementptr inbounds [8 x i8], ptr %0, i64 %i.oi
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !30
  %i.ol = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.oi
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !67
  %i.on = getelementptr inbounds [8 x i8], ptr %4, i64 %i.om
  %i.oo = load double, ptr %i.on, align 8, !tbaa !30
  %i.op = tail call double @llvm.fmuladd.f64(double %i.ok, double %i.oo, double %i.oh) ; 2 uses
  store double %i.op, ptr %i.np, align 8, !tbaa !30
  %i.oq = add nsw i64 %.04252.i353, 2             ; 2 uses
  %exitcond.not.i354.1 = icmp eq i64 %i.oq, %i.nn
  br i1 %exitcond.not.i354.1, label %.loopexit48.i349, label %.lr.ph.i351.new, !llvm.loop !150

.loopexit.i360:                                   ; preds = %.prol.loopexit783, %.lr.ph56.i362.new, %.lr.ph58.i358
  %exitcond62.not.i361 = icmp eq i64 %i.os, %i.e
  br i1 %exitcond62.not.i361, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit365, label %.lr.ph58.i358, !llvm.loop !151

.lr.ph58.i358:                                    ; preds = %.loopexit.i360, %.lr.ph58.preheader.i356
  %i.or = phi i64 [ %i.ou, %.loopexit.i360 ], [ %.pre63.i357, %.lr.ph58.preheader.i356 ] ; 7 uses
  %.157.i359 = phi i64 [ %i.os, %.loopexit.i360 ], [ 0, %.lr.ph58.preheader.i356 ] ; 2 uses
  %i.os = add nuw nsw i64 %.157.i359, 1           ; 3 uses
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.os
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !67 ; 5 uses
  %i.ov = icmp slt i64 %i.or, %i.ou
  br i1 %i.ov, label %.lr.ph56.i362, label %.loopexit.i360

.lr.ph56.i362:                                    ; preds = %.lr.ph58.i358
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.157.i359 ; 3 uses
  %i.ox = sub i64 %i.ou, %i.or
  %.neg819 = add i64 %i.or, 1
  %xtraiter784 = and i64 %i.ox, 1
  %lcmp.mod785.not = icmp eq i64 %xtraiter784, 0
  br i1 %lcmp.mod785.not, label %.prol.loopexit783, label %.prol.loopexit783.unr-lcssa

.prol.loopexit783.unr-lcssa:                      ; preds = %.lr.ph56.i362
  %i.oy = getelementptr inbounds [8 x i8], ptr %0, i64 %i.or
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !30
  %i.pa = load double, ptr %i.ow, align 8, !tbaa !30
  %i.pb = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.or
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !67
  %i.pd = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.pc ; 2 uses
  %i.pe = load double, ptr %i.pd, align 8, !tbaa !30
  %i.pf = tail call double @llvm.fmuladd.f64(double %i.oz, double %i.pa, double %i.pe)
  store double %i.pf, ptr %i.pd, align 8, !tbaa !30
  %i.pg = add nsw i64 %i.or, 1
  br label %.prol.loopexit783

.prol.loopexit783:                                ; preds = %.prol.loopexit783.unr-lcssa, %.lr.ph56.i362
  %.14355.i363.unr = phi i64 [ %i.or, %.lr.ph56.i362 ], [ %i.pg, %.prol.loopexit783.unr-lcssa ]
  %i.ph = icmp eq i64 %i.ou, %.neg819
  br i1 %i.ph, label %.loopexit.i360, label %.lr.ph56.i362.new

.lr.ph56.i362.new:                                ; preds = %.prol.loopexit783, %.lr.ph56.i362.new
  %.14355.i363 = phi i64 [ %i.pz, %.lr.ph56.i362.new ], [ %.14355.i363.unr, %.prol.loopexit783 ] ; 4 uses
  %i.pi = getelementptr inbounds [8 x i8], ptr %0, i64 %.14355.i363
  %i.pj = load double, ptr %i.pi, align 8, !tbaa !30
  %i.pk = load double, ptr %i.ow, align 8, !tbaa !30
  %i.pl = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %.14355.i363
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !67
  %i.pn = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.pm ; 2 uses
  %i.po = load double, ptr %i.pn, align 8, !tbaa !30
  %i.pp = tail call double @llvm.fmuladd.f64(double %i.pj, double %i.pk, double %i.po)
  store double %i.pp, ptr %i.pn, align 8, !tbaa !30
  %i.pq = add nsw i64 %.14355.i363, 1             ; 2 uses
  %i.pr = getelementptr inbounds [8 x i8], ptr %0, i64 %i.pq
  %i.ps = load double, ptr %i.pr, align 8, !tbaa !30
  %i.pt = load double, ptr %i.ow, align 8, !tbaa !30
  %i.pu = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.pq
  %i.pv = load i64, ptr %i.pu, align 8, !tbaa !67
  %i.pw = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.pv ; 2 uses
  %i.px = load double, ptr %i.pw, align 8, !tbaa !30
  %i.py = tail call double @llvm.fmuladd.f64(double %i.ps, double %i.pt, double %i.px)
  store double %i.py, ptr %i.pw, align 8, !tbaa !30
  %i.pz = add nsw i64 %.14355.i363, 2             ; 2 uses
  %exitcond61.not.i364.1 = icmp eq i64 %i.pz, %i.ou
  br i1 %exitcond61.not.i364.1, label %.loopexit.i360, label %.lr.ph56.i362.new, !llvm.loop !152

_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit365: ; preds = %.loopexit.i360, %.loopexit48.i349, %._crit_edge438
  br i1 %i.ia, label %.lr.ph.i.i367.preheader, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit372

.lr.ph.i.i367.preheader:                          ; preds = %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit365
  br i1 %i.in, label %.lr.ph.i.i367.epil.preheader, label %.lr.ph.i.i367

.lr.ph.i.i367:                                    ; preds = %.lr.ph.i.i367.preheader, %.lr.ph.i.i367
  %.012.i.i368 = phi double [ %i.ql, %.lr.ph.i.i367 ], [ 0.000000e+00, %.lr.ph.i.i367.preheader ]
  %.0710.i.i370 = phi ptr [ %i.qj, %.lr.ph.i.i367 ], [ %i.f, %.lr.ph.i.i367.preheader ] ; 5 uses
  %niter799 = phi i64 [ %niter799.next.3, %.lr.ph.i.i367 ], [ 0, %.lr.ph.i.i367.preheader ]
  %i.qa = getelementptr i8, ptr %.0710.i.i370, i64 8
  %i.qb = load double, ptr %.0710.i.i370, align 8, !tbaa !30 ; 2 uses
  %i.qc = tail call double @llvm.fmuladd.f64(double %i.qb, double %i.qb, double %.012.i.i368)
  %i.qd = getelementptr i8, ptr %.0710.i.i370, i64 16
  %i.qe = load double, ptr %i.qa, align 8, !tbaa !30 ; 2 uses
  %i.qf = tail call double @llvm.fmuladd.f64(double %i.qe, double %i.qe, double %i.qc)
  %i.qg = getelementptr i8, ptr %.0710.i.i370, i64 24
  %i.qh = load double, ptr %i.qd, align 8, !tbaa !30 ; 2 uses
  %i.qi = tail call double @llvm.fmuladd.f64(double %i.qh, double %i.qh, double %i.qf)
  %i.qj = getelementptr i8, ptr %.0710.i.i370, i64 32 ; 2 uses
  %i.qk = load double, ptr %i.qg, align 8, !tbaa !30 ; 2 uses
  %i.ql = tail call double @llvm.fmuladd.f64(double %i.qk, double %i.qk, double %i.qi) ; 3 uses
  %niter799.next.3 = add i64 %niter799, 4         ; 2 uses
  %niter799.ncmp.3 = icmp eq i64 %niter799.next.3, %unroll_iter798
  br i1 %niter799.ncmp.3, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit372.loopexit.unr-lcssa, label %.lr.ph.i.i367, !llvm.loop !145

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit372.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i367
  br i1 %lcmp.mod795.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit372, label %.lr.ph.i.i367.epil.preheader

.lr.ph.i.i367.epil.preheader:                     ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit372.loopexit.unr-lcssa, %.lr.ph.i.i367.preheader
  %.012.i.i368.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i367.preheader ], [ %i.ql, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit372.loopexit.unr-lcssa ]
  %.0710.i.i370.epil.init = phi ptr [ %i.f, %.lr.ph.i.i367.preheader ], [ %i.qj, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit372.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod797)
  br label %.lr.ph.i.i367.epil

.lr.ph.i.i367.epil:                               ; preds = %.lr.ph.i.i367.epil, %.lr.ph.i.i367.epil.preheader
  %.012.i.i368.epil = phi double [ %i.qo, %.lr.ph.i.i367.epil ], [ %.012.i.i368.epil.init, %.lr.ph.i.i367.epil.preheader ]
  %.0710.i.i370.epil = phi ptr [ %i.qm, %.lr.ph.i.i367.epil ], [ %.0710.i.i370.epil.init, %.lr.ph.i.i367.epil.preheader ] ; 2 uses
  %epil.iter794 = phi i64 [ %epil.iter794.next, %.lr.ph.i.i367.epil ], [ 0, %.lr.ph.i.i367.epil.preheader ]
  %i.qm = getelementptr i8, ptr %.0710.i.i370.epil, i64 8
  %i.qn = load double, ptr %.0710.i.i370.epil, align 8, !tbaa !30 ; 2 uses
  %i.qo = tail call double @llvm.fmuladd.f64(double %i.qn, double %i.qn, double %.012.i.i368.epil) ; 2 uses
  %epil.iter794.next = add i64 %epil.iter794, 1   ; 2 uses
  %epil.iter794.cmp.not = icmp eq i64 %epil.iter794.next, %xtraiter793
  br i1 %epil.iter794.cmp.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit372, label %.lr.ph.i.i367.epil, !llvm.loop !166

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit372:    ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit372.loopexit.unr-lcssa, %.lr.ph.i.i367.epil, %.preheader.i355, %.preheader49.i344, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit365
  %.0.lcssa.i.i366 = phi double [ 0.000000e+00, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit365 ], [ 0.000000e+00, %.preheader.i355 ], [ 0.000000e+00, %.preheader49.i344 ], [ %i.ql, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit372.loopexit.unr-lcssa ], [ %i.qo, %.lr.ph.i.i367.epil ]
  %i.qp = tail call noundef double @sqrt(double noundef %.0.lcssa.i.i366) #24 ; 5 uses
  %i.qq = fcmp ule double %i.qp, 0.000000e+00
  %brmerge450 = select i1 %i.qq, i1 true, i1 %i.ii
  br i1 %brmerge450, label %.loopexit, label %.lr.ph440

.lr.ph440:                                        ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit372
  %i.qr = fdiv nnan double 1.000000e+00, %i.qp    ; 2 uses
  br i1 %min.iters.check650, label %scalar.ph649.preheader, label %vector.ph651

vector.ph651:                                     ; preds = %.lr.ph440
  %broadcast.splatinsert654 = insertelement <2 x double> poison, double %i.qr, i64 0
  %broadcast.splat655 = shufflevector <2 x double> %broadcast.splatinsert654, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body656

vector.body656:                                   ; preds = %vector.body656, %vector.ph651
  %index657 = phi i64 [ 0, %vector.ph651 ], [ %index.next660, %vector.body656 ] ; 2 uses
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index657 ; 3 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 16 ; 2 uses
  %wide.load658 = load <2 x double>, ptr %i.qs, align 8, !tbaa !30
  %wide.load659 = load <2 x double>, ptr %i.qt, align 8, !tbaa !30
  %i.qu = fmul <2 x double> %broadcast.splat655, %wide.load658
  %i.qv = fmul <2 x double> %broadcast.splat655, %wide.load659
  store <2 x double> %i.qu, ptr %i.qs, align 8, !tbaa !30
  store <2 x double> %i.qv, ptr %i.qt, align 8, !tbaa !30
  %index.next660 = add nuw i64 %index657, 4       ; 2 uses
  %i.qw = icmp eq i64 %index.next660, %n.vec653
  br i1 %i.qw, label %middle.block661, label %vector.body656, !llvm.loop !167

middle.block661:                                  ; preds = %vector.body656
  br i1 %cmp.n662, label %.loopexit, label %scalar.ph649.preheader

scalar.ph649.preheader:                           ; preds = %.lr.ph440, %middle.block661
  %.5439.ph = phi i64 [ 0, %.lr.ph440 ], [ %n.vec653, %middle.block661 ]
  br label %scalar.ph649

scalar.ph649:                                     ; preds = %scalar.ph649.preheader, %scalar.ph649
  %.5439 = phi i64 [ %i.ra, %scalar.ph649 ], [ %.5439.ph, %scalar.ph649.preheader ] ; 2 uses
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.5439 ; 2 uses
  %i.qy = load double, ptr %i.qx, align 8, !tbaa !30
  %i.qz = fmul double %i.qr, %i.qy
  store double %i.qz, ptr %i.qx, align 8, !tbaa !30
  %i.ra = add nuw nsw i64 %.5439, 1               ; 2 uses
  %exitcond462.not = icmp eq i64 %i.ra, %i.e
  br i1 %exitcond462.not, label %.loopexit, label %scalar.ph649, !llvm.loop !168

.loopexit:                                        ; preds = %scalar.ph649, %middle.block661, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit333, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit372, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit340
  %i.rb = phi double [ %i.mk, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit340 ], [ 1.000000e+00, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit372 ], [ 0.000000e+00, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit333 ], [ 1.000000e+00, %middle.block661 ], [ 1.000000e+00, %scalar.ph649 ] ; 2 uses
  %i.rc = phi double [ %i.mk, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit340 ], [ %i.mk, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit372 ], [ 0.000000e+00, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit333 ], [ %i.mk, %middle.block661 ], [ %i.mk, %scalar.ph649 ] ; 8 uses
  %.2259 = phi double [ %.1258, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit340 ], [ %i.qp, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit372 ], [ %.1258, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit333 ], [ %i.qp, %middle.block661 ], [ %i.qp, %scalar.ph649 ] ; 4 uses
  %.1241 = phi double [ %.0240, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit340 ], [ %sqrt, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit372 ], [ %.0240, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit333 ], [ %sqrt, %middle.block661 ], [ %sqrt, %scalar.ph649 ] ; 4 uses
  %i.rd = tail call double @llvm.fmuladd.f64(double %.0260, double %.0260, double 0.000000e+00) ; 4 uses
  %sqrt407 = tail call double @llvm.sqrt.f64(double %i.rd) ; 9 uses
  %i.re = fdiv double %.0260, %sqrt407
  %i.rf = fdiv double 0.000000e+00, %sqrt407
  %i.rg = fmul double %.0261, %i.rf
  %i.rh = fmul double %.0261, %i.re               ; 2 uses
  %i.ri = fcmp oeq double %i.rc, 0.000000e+00
  br i1 %i.ri, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit
  %i.rj = fcmp ogt double %i.rd, 0.000000e+00
  %i.rk = select i1 %i.rj, double 1.000000e+00, double %sqrt407
  %i.rl = tail call double @llvm.fabs.f64(double %sqrt407)
  br label %_ZN6casadi21casadi_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit

bb.i:                                             ; preds = %.loopexit
  %i.rm = fcmp oeq double %i.rd, 0.000000e+00
  br i1 %i.rm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.rn = fcmp olt double %i.rc, 0.000000e+00
  %i.ro = select i1 %i.rn, double -1.000000e+00, double %i.rb
  %i.rp = tail call double @llvm.fabs.f64(double %i.rc)
  br label %_ZN6casadi21casadi_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit

bb.k:                                             ; preds = %bb.i
  %i.rq = tail call double @llvm.fabs.f64(double %i.rc)
  %i.rr = tail call double @llvm.fabs.f64(double %sqrt407)
  %i.rs = fcmp ogt double %i.rq, %i.rr
  br i1 %i.rs, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.rt = fdiv double %sqrt407, %i.rc             ; 3 uses
  %i.ru = fcmp olt double %i.rc, 0.000000e+00
  %i.rv = select i1 %i.ru, double -1.000000e+00, double %i.rb
  %i.rw = tail call double @llvm.fmuladd.f64(double %i.rt, double %i.rt, double 1.000000e+00)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.rw)
  %i.rx = fdiv double %i.rv, %sqrt.i              ; 3 uses
  %i.ry = fmul double %i.rt, %i.rx
  %i.rz = fdiv double %i.rc, %i.rx
  br label %_ZN6casadi21casadi_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit

bb.m:                                             ; preds = %bb.k
  %i.sa = fdiv double %i.rc, %sqrt407             ; 3 uses
  %i.sb = fcmp ogt double %i.rd, 0.000000e+00
  %i.sc = select i1 %i.sb, double 1.000000e+00, double %sqrt407
  %i.sd = tail call double @llvm.fmuladd.f64(double %i.sa, double %i.sa, double 1.000000e+00)
  %sqrt39.i = tail call double @llvm.sqrt.f64(double %i.sd)
  %i.se = fdiv double %i.sc, %sqrt39.i            ; 3 uses
  %i.sf = fmul double %i.sa, %i.se
  %i.sg = fdiv double %sqrt407, %i.se
  br label %_ZN6casadi21casadi_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit

_ZN6casadi21casadi_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit: ; preds = %bb.h, %bb.j, %bb.l, %bb.m
  %.0398 = phi double [ 0.000000e+00, %bb.h ], [ %i.ro, %bb.j ], [ %i.rx, %bb.l ], [ %i.sf, %bb.m ] ; 3 uses
  %.0 = phi double [ %i.rk, %bb.h ], [ 0.000000e+00, %bb.j ], [ %i.ry, %bb.l ], [ %i.se, %bb.m ] ; 2 uses
  %.sink.i = phi double [ %i.rl, %bb.h ], [ %i.rp, %bb.j ], [ %i.rz, %bb.l ], [ %i.sg, %bb.m ] ; 6 uses
  %i.sh = fmul double %.2259, %.0398              ; 4 uses
  %i.si = fneg double %.0
  %i.sj = fmul double %.2259, %i.si
  %i.sk = fmul double %i.rh, %.0                  ; 3 uses
  %i.sl = fmul double %i.rh, %.0398               ; 3 uses
  %i.sm = fmul double %.0398, %i.sk
  %i.sn = fdiv double %i.sk, %.sink.i             ; 4 uses
  %i.so = fneg double %i.sh
  %i.sp = fdiv double %i.so, %.sink.i             ; 4 uses
  br i1 %i.ia, label %.lr.ph442.preheader, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit379

.lr.ph442.preheader:                              ; preds = %_ZN6casadi21casadi_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit
  br i1 %min.iters.check636, label %.lr.ph442.preheader732, label %vector.ph637

vector.ph637:                                     ; preds = %.lr.ph442.preheader
  %broadcast.splatinsert640 = insertelement <2 x double> poison, double %.sink.i, i64 0
  %broadcast.splat641 = shufflevector <2 x double> %broadcast.splatinsert640, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body642

vector.body642:                                   ; preds = %vector.body642, %vector.ph637
  %index643 = phi i64 [ 0, %vector.ph637 ], [ %index.next645, %vector.body642 ] ; 3 uses
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index643
  %wide.load644 = load <2 x double>, ptr %i.sq, align 8, !tbaa !30
  %i.sr = fdiv <2 x double> %wide.load644, %broadcast.splat641
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %index643
  store <2 x double> %i.sr, ptr %i.ss, align 8, !tbaa !30
  %index.next645 = add nuw i64 %index643, 2       ; 2 uses
  %i.st = icmp eq i64 %index.next645, %n.vec639
  br i1 %i.st, label %middle.block646, label %vector.body642, !llvm.loop !169

middle.block646:                                  ; preds = %vector.body642
  br i1 %cmp.n647, label %.lr.ph444.preheader, label %.lr.ph442.preheader732

.lr.ph442.preheader732:                           ; preds = %.lr.ph442.preheader, %middle.block646
  %.6441.ph = phi i64 [ 0, %.lr.ph442.preheader ], [ %n.vec639, %middle.block646 ]
  br label %.lr.ph442

.lr.ph442:                                        ; preds = %.lr.ph442.preheader732, %.lr.ph442
  %.6441 = phi i64 [ %i.sy, %.lr.ph442 ], [ %.6441.ph, %.lr.ph442.preheader732 ] ; 3 uses
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.6441
  %i.sv = load double, ptr %i.su, align 8, !tbaa !30
  %i.sw = fdiv double %i.sv, %.sink.i
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.6441
  store double %i.sw, ptr %i.sx, align 8, !tbaa !30
  %i.sy = add nuw nsw i64 %.6441, 1               ; 2 uses
  %exitcond463.not = icmp eq i64 %i.sy, %i.e
  br i1 %exitcond463.not, label %.lr.ph444.preheader, label %.lr.ph442, !llvm.loop !170

.lr.ph444.preheader:                              ; preds = %.lr.ph442, %middle.block646
  %brmerge = select i1 %min.iters.check619, i1 true, i1 %found.conflict617
  br i1 %brmerge, label %.lr.ph444.preheader731, label %vector.ph620

vector.ph620:                                     ; preds = %.lr.ph444.preheader
  %broadcast.splatinsert623 = insertelement <2 x double> poison, double %i.sn, i64 0
  %broadcast.splat624 = shufflevector <2 x double> %broadcast.splatinsert623, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body625

vector.body625:                                   ; preds = %vector.body625, %vector.ph620
  %index626 = phi i64 [ 0, %vector.ph620 ], [ %index.next631, %vector.body625 ] ; 3 uses
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index626 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  %wide.load627 = load <2 x double>, ptr %i.sz, align 8, !tbaa !30, !alias.scope !171
  %wide.load628 = load <2 x double>, ptr %i.ta, align 8, !tbaa !30, !alias.scope !171
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %index626 ; 3 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 16 ; 2 uses
  %wide.load629 = load <2 x double>, ptr %i.tb, align 8, !tbaa !30, !alias.scope !174, !noalias !171
  %wide.load630 = load <2 x double>, ptr %i.tc, align 8, !tbaa !30, !alias.scope !174, !noalias !171
  %i.td = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat624, <2 x double> %wide.load627, <2 x double> %wide.load629)
  %i.te = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat624, <2 x double> %wide.load628, <2 x double> %wide.load630)
  store <2 x double> %i.td, ptr %i.tb, align 8, !tbaa !30, !alias.scope !174, !noalias !171
  store <2 x double> %i.te, ptr %i.tc, align 8, !tbaa !30, !alias.scope !174, !noalias !171
  %index.next631 = add nuw i64 %index626, 4       ; 2 uses
  %i.tf = icmp eq i64 %index.next631, %n.vec622
  br i1 %i.tf, label %middle.block632, label %vector.body625, !llvm.loop !176

middle.block632:                                  ; preds = %vector.body625
  br i1 %cmp.n633, label %.lr.ph446.preheader, label %.lr.ph444.preheader731

.lr.ph444.preheader731:                           ; preds = %.lr.ph444.preheader, %middle.block632
  %.7443.ph = phi i64 [ %n.vec622, %middle.block632 ], [ 0, %.lr.ph444.preheader ] ; 5 uses
  %.neg821 = or disjoint i64 %.7443.ph, 1
  br i1 %lcmp.mod801.not, label %.lr.ph444.prol.loopexit, label %.lr.ph444.prol

.lr.ph444.prol:                                   ; preds = %.lr.ph444.preheader731
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.7443.ph
  %i.th = load double, ptr %i.tg, align 8, !tbaa !30
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %.7443.ph ; 2 uses
  %i.tj = load double, ptr %i.ti, align 8, !tbaa !30
  %i.tk = tail call double @llvm.fmuladd.f64(double %i.sn, double %i.th, double %i.tj)
  store double %i.tk, ptr %i.ti, align 8, !tbaa !30
  %i.tl = or disjoint i64 %.7443.ph, 1
  br label %.lr.ph444.prol.loopexit

.lr.ph444.prol.loopexit:                          ; preds = %.lr.ph444.prol, %.lr.ph444.preheader731
  %.7443.unr = phi i64 [ %.7443.ph, %.lr.ph444.preheader731 ], [ %i.tl, %.lr.ph444.prol ]
  %i.tm = icmp eq i64 %i.e, %.neg821
  br i1 %i.tm, label %.lr.ph446.preheader, label %.lr.ph444

.lr.ph444:                                        ; preds = %.lr.ph444.prol.loopexit, %.lr.ph444
  %.7443 = phi i64 [ %i.ty, %.lr.ph444 ], [ %.7443.unr, %.lr.ph444.prol.loopexit ] ; 4 uses
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.7443
  %i.to = load double, ptr %i.tn, align 8, !tbaa !30
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %.7443 ; 2 uses
  %i.tq = load double, ptr %i.tp, align 8, !tbaa !30
  %i.tr = tail call double @llvm.fmuladd.f64(double %i.sn, double %i.to, double %i.tq)
  store double %i.tr, ptr %i.tp, align 8, !tbaa !30
  %i.ts = add nuw nsw i64 %.7443, 1               ; 2 uses
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.ts
  %i.tu = load double, ptr %i.tt, align 8, !tbaa !30
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.ts ; 2 uses
  %i.tw = load double, ptr %i.tv, align 8, !tbaa !30
  %i.tx = tail call double @llvm.fmuladd.f64(double %i.sn, double %i.tu, double %i.tw)
  store double %i.tx, ptr %i.tv, align 8, !tbaa !30
  %i.ty = add nuw nsw i64 %.7443, 2               ; 2 uses
  %exitcond464.not.1 = icmp eq i64 %i.ty, %i.e
  br i1 %exitcond464.not.1, label %.lr.ph446.preheader, label %.lr.ph444, !llvm.loop !177

.lr.ph446.preheader:                              ; preds = %.lr.ph444.prol.loopexit, %.lr.ph444, %middle.block632
  %brmerge847 = select i1 %min.iters.check598, i1 true, i1 %found.conflict
  br i1 %brmerge847, label %.lr.ph446.preheader730, label %vector.ph599

vector.ph599:                                     ; preds = %.lr.ph446.preheader
  %broadcast.splatinsert602 = insertelement <2 x double> poison, double %i.sp, i64 0
  %broadcast.splat603 = shufflevector <2 x double> %broadcast.splatinsert602, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body604

vector.body604:                                   ; preds = %vector.body604, %vector.ph599
  %index605 = phi i64 [ 0, %vector.ph599 ], [ %index.next610, %vector.body604 ] ; 3 uses
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index605 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  %wide.load606 = load <2 x double>, ptr %i.tz, align 8, !tbaa !30, !alias.scope !178
  %wide.load607 = load <2 x double>, ptr %i.ua, align 8, !tbaa !30, !alias.scope !178
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index605 ; 3 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 16 ; 2 uses
  %wide.load608 = load <2 x double>, ptr %i.ub, align 8, !tbaa !30, !alias.scope !181, !noalias !178
  %wide.load609 = load <2 x double>, ptr %i.uc, align 8, !tbaa !30, !alias.scope !181, !noalias !178
  %i.ud = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat603, <2 x double> %wide.load608, <2 x double> %wide.load606)
  %i.ue = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat603, <2 x double> %wide.load609, <2 x double> %wide.load607)
  store <2 x double> %i.ud, ptr %i.ub, align 8, !tbaa !30, !alias.scope !181, !noalias !178
  store <2 x double> %i.ue, ptr %i.uc, align 8, !tbaa !30, !alias.scope !181, !noalias !178
  %index.next610 = add nuw i64 %index605, 4       ; 2 uses
  %i.uf = icmp eq i64 %index.next610, %n.vec601
  br i1 %i.uf, label %middle.block611, label %vector.body604, !llvm.loop !183

middle.block611:                                  ; preds = %vector.body604
  br i1 %cmp.n612, label %.lr.ph.i.i374.preheader, label %.lr.ph446.preheader730

.lr.ph446.preheader730:                           ; preds = %.lr.ph446.preheader, %middle.block611
  %.8445.ph = phi i64 [ %n.vec601, %middle.block611 ], [ 0, %.lr.ph446.preheader ] ; 5 uses
  %.neg822 = or disjoint i64 %.8445.ph, 1
  br i1 %lcmp.mod804.not, label %.lr.ph446.prol.loopexit, label %.lr.ph446.prol

.lr.ph446.prol:                                   ; preds = %.lr.ph446.preheader730
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.8445.ph
  %i.uh = load double, ptr %i.ug, align 8, !tbaa !30
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.8445.ph ; 2 uses
  %i.uj = load double, ptr %i.ui, align 8, !tbaa !30
  %i.uk = tail call double @llvm.fmuladd.f64(double %i.sp, double %i.uj, double %i.uh)
  store double %i.uk, ptr %i.ui, align 8, !tbaa !30
  %i.ul = or disjoint i64 %.8445.ph, 1
  br label %.lr.ph446.prol.loopexit

.lr.ph446.prol.loopexit:                          ; preds = %.lr.ph446.prol, %.lr.ph446.preheader730
  %.8445.unr = phi i64 [ %.8445.ph, %.lr.ph446.preheader730 ], [ %i.ul, %.lr.ph446.prol ]
  %i.um = icmp eq i64 %i.e, %.neg822
  br i1 %i.um, label %.lr.ph.i.i374.preheader, label %.lr.ph446

.lr.ph446:                                        ; preds = %.lr.ph446.prol.loopexit, %.lr.ph446
  %.8445 = phi i64 [ %i.uy, %.lr.ph446 ], [ %.8445.unr, %.lr.ph446.prol.loopexit ] ; 4 uses
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.8445
  %i.uo = load double, ptr %i.un, align 8, !tbaa !30
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.8445 ; 2 uses
  %i.uq = load double, ptr %i.up, align 8, !tbaa !30
  %i.ur = tail call double @llvm.fmuladd.f64(double %i.sp, double %i.uq, double %i.uo)
  store double %i.ur, ptr %i.up, align 8, !tbaa !30
  %i.us = add nuw nsw i64 %.8445, 1               ; 2 uses
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.us
  %i.uu = load double, ptr %i.ut, align 8, !tbaa !30
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.us ; 2 uses
  %i.uw = load double, ptr %i.uv, align 8, !tbaa !30
  %i.ux = tail call double @llvm.fmuladd.f64(double %i.sp, double %i.uw, double %i.uu)
  store double %i.ux, ptr %i.uv, align 8, !tbaa !30
  %i.uy = add nuw nsw i64 %.8445, 2               ; 2 uses
  %exitcond465.not.1 = icmp eq i64 %i.uy, %i.e
  br i1 %exitcond465.not.1, label %.lr.ph.i.i374.preheader, label %.lr.ph446, !llvm.loop !184

.lr.ph.i.i374.preheader:                          ; preds = %.lr.ph446.prol.loopexit, %.lr.ph446, %middle.block611
  br i1 %i.is, label %.lr.ph.i.i374.epil.preheader, label %.lr.ph.i.i374

.lr.ph.i.i374:                                    ; preds = %.lr.ph.i.i374.preheader, %.lr.ph.i.i374
  %.012.i.i375 = phi double [ %i.vk, %.lr.ph.i.i374 ], [ 0.000000e+00, %.lr.ph.i.i374.preheader ]
  %.0710.i.i377 = phi ptr [ %i.vi, %.lr.ph.i.i374 ], [ %i.bi, %.lr.ph.i.i374.preheader ] ; 5 uses
  %niter812 = phi i64 [ %niter812.next.3, %.lr.ph.i.i374 ], [ 0, %.lr.ph.i.i374.preheader ]
  %i.uz = getelementptr i8, ptr %.0710.i.i377, i64 8
  %i.va = load double, ptr %.0710.i.i377, align 8, !tbaa !30 ; 2 uses
  %i.vb = tail call double @llvm.fmuladd.f64(double %i.va, double %i.va, double %.012.i.i375)
  %i.vc = getelementptr i8, ptr %.0710.i.i377, i64 16
  %i.vd = load double, ptr %i.uz, align 8, !tbaa !30 ; 2 uses
  %i.ve = tail call double @llvm.fmuladd.f64(double %i.vd, double %i.vd, double %i.vb)
  %i.vf = getelementptr i8, ptr %.0710.i.i377, i64 24
  %i.vg = load double, ptr %i.vc, align 8, !tbaa !30 ; 2 uses
  %i.vh = tail call double @llvm.fmuladd.f64(double %i.vg, double %i.vg, double %i.ve)
  %i.vi = getelementptr i8, ptr %.0710.i.i377, i64 32 ; 2 uses
  %i.vj = load double, ptr %i.vf, align 8, !tbaa !30 ; 2 uses
  %i.vk = tail call double @llvm.fmuladd.f64(double %i.vj, double %i.vj, double %i.vh) ; 3 uses
  %niter812.next.3 = add i64 %niter812, 4         ; 2 uses
  %niter812.ncmp.3 = icmp eq i64 %niter812.next.3, %unroll_iter811
  br i1 %niter812.ncmp.3, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit379.loopexit.unr-lcssa, label %.lr.ph.i.i374, !llvm.loop !145

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit379.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i374
  br i1 %lcmp.mod808.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit379, label %.lr.ph.i.i374.epil.preheader

.lr.ph.i.i374.epil.preheader:                     ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit379.loopexit.unr-lcssa, %.lr.ph.i.i374.preheader
  %.012.i.i375.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i374.preheader ], [ %i.vk, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit379.loopexit.unr-lcssa ]
  %.0710.i.i377.epil.init = phi ptr [ %i.bi, %.lr.ph.i.i374.preheader ], [ %i.vi, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit379.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod810)
  br label %.lr.ph.i.i374.epil

.lr.ph.i.i374.epil:                               ; preds = %.lr.ph.i.i374.epil, %.lr.ph.i.i374.epil.preheader
  %.012.i.i375.epil = phi double [ %i.vn, %.lr.ph.i.i374.epil ], [ %.012.i.i375.epil.init, %.lr.ph.i.i374.epil.preheader ]
  %.0710.i.i377.epil = phi ptr [ %i.vl, %.lr.ph.i.i374.epil ], [ %.0710.i.i377.epil.init, %.lr.ph.i.i374.epil.preheader ] ; 2 uses
  %epil.iter807 = phi i64 [ %epil.iter807.next, %.lr.ph.i.i374.epil ], [ 0, %.lr.ph.i.i374.epil.preheader ]
  %i.vl = getelementptr i8, ptr %.0710.i.i377.epil, i64 8
  %i.vm = load double, ptr %.0710.i.i377.epil, align 8, !tbaa !30 ; 2 uses
  %i.vn = tail call double @llvm.fmuladd.f64(double %i.vm, double %i.vm, double %.012.i.i375.epil) ; 2 uses
  %epil.iter807.next = add i64 %epil.iter807, 1   ; 2 uses
  %epil.iter807.cmp.not = icmp eq i64 %epil.iter807.next, %xtraiter806
  br i1 %epil.iter807.cmp.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit379, label %.lr.ph.i.i374.epil, !llvm.loop !185

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit379:    ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit379.loopexit.unr-lcssa, %.lr.ph.i.i374.epil, %_ZN6casadi21casadi_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit
  %.0.lcssa.i.i373 = phi double [ 0.000000e+00, %_ZN6casadi21casadi_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit ], [ %i.vk, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit379.loopexit.unr-lcssa ], [ %i.vn, %.lr.ph.i.i374.epil ]
  %i.vo = tail call noundef double @sqrt(double noundef %.0.lcssa.i.i373) #24 ; 2 uses
  %i.vp = fneg double %.0255
  %i.vq = fneg double %.sink.i
  %i.vr = fmul double %.0256, %i.vq
  %i.vs = fmul double %i.sh, %i.sh
  %i.vt = tail call double @llvm.fmuladd.f64(double %i.vr, double %.0254, double %i.sk) ; 2 uses
  %7 = fmul double %.sink.i, %i.vp                ; 3 uses
  %i.vu = fdiv double %i.vt, %7
  %i.vv = insertelement <2 x double> poison, double %i.vu, i64 0
  %i.vw = insertelement <2 x double> %i.vv, double %7, i64 1 ; 2 uses
  %i.vx = shufflevector <2 x double> %i.it, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.vy = insertelement <2 x double> %i.vx, double %i.vs, i64 1
  %i.vz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vw, <2 x double> %i.vw, <2 x double> %i.vy) ; 2 uses
  %i.wa = extractelement <2 x double> %i.vz, i64 0
  %i.wb = tail call double @sqrt(double noundef %i.wa) #24
  %i.wc = insertelement <2 x double> poison, double %i.vt, i64 0
  %i.wd = insertelement <2 x double> %i.wc, double %i.sh, i64 1
  %i.we = tail call double @llvm.fmuladd.f64(double %i.vo, double %i.vo, double %.0251) ; 2 uses
  %i.wf = shufflevector <2 x double> %i.vz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.wg = insertelement <2 x double> %i.wf, double %i.we, i64 1
  %i.wh = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.wg) ; 3 uses
  %i.wi = extractelement <2 x double> %i.wh, i64 0
  %i.wj = fdiv double %7, %i.wi
  %i.wk = shufflevector <2 x double> %i.wh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wl = fdiv <2 x double> %i.wd, %i.wk          ; 3 uses
  %i.wm = extractelement <2 x double> %i.wl, i64 0
  %i.wn = fmul double %i.sl, %i.sl
  %i.wo = shufflevector <2 x double> %i.wl, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.wp = insertelement <2 x double> %i.wo, double %i.rg, i64 0 ; 2 uses
  %i.wq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wp, <2 x double> %i.wp, <2 x double> %i.it) ; 2 uses
  %i.wr = extractelement <2 x double> %i.wq, i64 0
  %i.ws = fadd double %i.wr, %i.wn
  %i.wt = tail call double @sqrt(double noundef %i.ws) #24 ; 2 uses
  %i.wu = tail call double @llvm.fabs.f64(double %i.sm)
  %i.wv = extractelement <2 x double> %i.wh, i64 1
  %i.ww = fmul double %.1241, %i.wv
  %i.wx = fdiv double 1.000000e+00, %i.ww         ; 2 uses
  %8 = insertelement <2 x double> poison, double %.1241, i64 0
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %10 = fmul <2 x double> %9, <double 1.000000e+00, double 1.000000e-15>
  %11 = insertelement <2 x double> poison, double %i.wb, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = fmul <2 x double> %10, %12
  %14 = fdiv <2 x double> %13, %6                 ; 2 uses
  %15 = extractelement <2 x double> %14, i64 1
  %i.wy = fadd double %15, 1.000000e-15
  %i.wz = icmp ne i64 %.0250, 9999
  %i.xa = fadd double %i.wx, 1.000000e+00
  %i.xb = fcmp ugt double %i.xa, 1.000000e+00
  %i.xc = fmul double %.2259, %i.wu
  %i.xd = fdiv double %i.wt, %i.hz                ; 2 uses
  %i.xe = fmul double %.1241, %i.wt
  %16 = extractelement <2 x double> %14, i64 0
  %i.xf = fadd double %16, 1.000000e+00
  %i.xg = insertelement <2 x double> poison, double %i.xd, i64 0
  %i.xh = insertelement <2 x double> %i.xg, double %i.xc, i64 1
  %i.xi = insertelement <2 x double> poison, double %i.xf, i64 0
  %i.xj = insertelement <2 x double> %i.xi, double %i.xe, i64 1
  %i.xk = fdiv <2 x double> %i.xh, %i.xj          ; 2 uses
  %i.xl = fadd <2 x double> %i.xk, splat (double 1.000000e+00)
  %i.xm = fcmp ugt <2 x double> %i.xl, splat (double 1.000000e+00) ; 2 uses
  %i.xn = fcmp ugt double %i.wx, 1.000000e-08
  %i.xo = extractelement <2 x double> %i.xk, i64 1
  %i.xp = fcmp ugt double %i.xo, 1.000000e-15
  %i.xq = fcmp ugt double %i.xd, %i.wy
  %.not270401402403404405 = and i1 %i.wz, %i.xb
  %i.xr = select i1 %i.xq, i1 %i.xp, i1 false
  %i.xs = select i1 %i.xr, i1 %i.xn, i1 false
  %i.xt = extractelement <2 x i1> %i.xm, i64 0
  %i.xu = select i1 %i.xs, i1 %i.xt, i1 false
  %i.xv = extractelement <2 x i1> %i.xm, i64 1
  %i.xw = select i1 %i.xu, i1 %i.xv, i1 false
  %.not270 = select i1 %i.xw, i1 %.not270401402403404405, i1 false
  %i.xx = extractelement <2 x double> %i.wl, i64 1
  br i1 %.not270, label %bb.e, label %split, !llvm.loop !186

split:                                            ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit379
  %.not.i380 = icmp eq ptr %1, null
  br i1 %.not.i380, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit308, label %bb.n

bb.n:                                             ; preds = %split
  br i1 %.not.i.not, label %.preheader16.i382, label %.preheader.i389

.preheader16.i382:                                ; preds = %bb.n
  br i1 %i.bj, label %.lr.ph.i384.preheader, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit308

.lr.ph.i384.preheader:                            ; preds = %.preheader16.i382
  %min.iters.check712 = icmp ult i64 %i.c, 8
  %i.xy = sub i64 %i.bf, %i.a
  %diff.check710 = icmp ugt i64 %i.xy, -32
  %or.cond728 = select i1 %min.iters.check712, i1 true, i1 %diff.check710
  br i1 %or.cond728, label %.lr.ph.i384.preheader729, label %vector.ph713

vector.ph713:                                     ; preds = %.lr.ph.i384.preheader
  %i.xz = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.e
  %n.vec715 = and i64 %i.c, 9223372036854775804   ; 4 uses
  %i.ya = shl i64 %n.vec715, 3                    ; 2 uses
  %i.yb = getelementptr i8, ptr %1, i64 %i.ya
  %i.yc = getelementptr i8, ptr %i.xz, i64 %i.ya
  %i.yd = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.e
  br label %vector.body716

vector.body716:                                   ; preds = %vector.body716, %vector.ph713
  %index717 = phi i64 [ 0, %vector.ph713 ], [ %index.next722, %vector.body716 ] ; 2 uses
  %i.ye = shl i64 %index717, 3                    ; 2 uses
  %next.gep718 = getelementptr i8, ptr %1, i64 %i.ye ; 2 uses
  %next.gep719 = getelementptr i8, ptr %i.yd, i64 %i.ye ; 2 uses
  %i.yf = getelementptr i8, ptr %next.gep719, i64 16
  %wide.load720 = load <2 x double>, ptr %next.gep719, align 8, !tbaa !30
  %wide.load721 = load <2 x double>, ptr %i.yf, align 8, !tbaa !30
  %i.yg = getelementptr i8, ptr %next.gep718, i64 16
  store <2 x double> %wide.load720, ptr %next.gep718, align 8, !tbaa !30
  store <2 x double> %wide.load721, ptr %i.yg, align 8, !tbaa !30
  %index.next722 = add nuw i64 %index717, 4       ; 2 uses
  %i.yh = icmp eq i64 %index.next722, %n.vec715
  br i1 %i.yh, label %middle.block723, label %vector.body716, !llvm.loop !187

middle.block723:                                  ; preds = %vector.body716
  %cmp.n724 = icmp eq i64 %i.c, %n.vec715
  br i1 %cmp.n724, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit308, label %.lr.ph.i384.preheader729

.lr.ph.i384.preheader729:                         ; preds = %.lr.ph.i384.preheader, %middle.block723
  %.020.i385.ph = phi i64 [ 0, %.lr.ph.i384.preheader ], [ %n.vec715, %middle.block723 ] ; 4 uses
  %.01019.i386.ph = phi ptr [ %1, %.lr.ph.i384.preheader ], [ %i.yb, %middle.block723 ] ; 2 uses
  %.01218.i387.ph = phi ptr [ %i.be, %.lr.ph.i384.preheader ], [ %i.yc, %middle.block723 ] ; 2 uses
  %i.yi = sub nsw i64 %i.c, %.020.i385.ph
  %xtraiter813 = and i64 %i.yi, 7                 ; 2 uses
  %lcmp.mod814.not = icmp eq i64 %xtraiter813, 0
  br i1 %lcmp.mod814.not, label %.lr.ph.i384.prol.loopexit, label %.lr.ph.i384.prol

.lr.ph.i384.prol:                                 ; preds = %.lr.ph.i384.preheader729, %.lr.ph.i384.prol
  %.020.i385.prol = phi i64 [ %i.ym, %.lr.ph.i384.prol ], [ %.020.i385.ph, %.lr.ph.i384.preheader729 ]
  %.01019.i386.prol = phi ptr [ %i.yl, %.lr.ph.i384.prol ], [ %.01019.i386.ph, %.lr.ph.i384.preheader729 ] ; 2 uses
  %.01218.i387.prol = phi ptr [ %i.yj, %.lr.ph.i384.prol ], [ %.01218.i387.ph, %.lr.ph.i384.preheader729 ] ; 2 uses
  %prol.iter815 = phi i64 [ %prol.iter815.next, %.lr.ph.i384.prol ], [ 0, %.lr.ph.i384.preheader729 ]
  %i.yj = getelementptr inbounds nuw i8, ptr %.01218.i387.prol, i64 8 ; 2 uses
  %i.yk = load double, ptr %.01218.i387.prol, align 8, !tbaa !30
  %i.yl = getelementptr inbounds nuw i8, ptr %.01019.i386.prol, i64 8 ; 2 uses
  store double %i.yk, ptr %.01019.i386.prol, align 8, !tbaa !30
  %i.ym = add nuw nsw i64 %.020.i385.prol, 1      ; 2 uses
  %prol.iter815.next = add i64 %prol.iter815, 1   ; 2 uses
  %prol.iter815.cmp.not = icmp eq i64 %prol.iter815.next, %xtraiter813
  br i1 %prol.iter815.cmp.not, label %.lr.ph.i384.prol.loopexit, label %.lr.ph.i384.prol, !llvm.loop !188

.lr.ph.i384.prol.loopexit:                        ; preds = %.lr.ph.i384.prol, %.lr.ph.i384.preheader729
  %.020.i385.unr = phi i64 [ %.020.i385.ph, %.lr.ph.i384.preheader729 ], [ %i.ym, %.lr.ph.i384.prol ]
  %.01019.i386.unr = phi ptr [ %.01019.i386.ph, %.lr.ph.i384.preheader729 ], [ %i.yl, %.lr.ph.i384.prol ]
  %.01218.i387.unr = phi ptr [ %.01218.i387.ph, %.lr.ph.i384.preheader729 ], [ %i.yj, %.lr.ph.i384.prol ]
  %i.yn = sub nsw i64 %.020.i385.ph, %i.c
  %i.yo = icmp ugt i64 %i.yn, -8
  br i1 %i.yo, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit308, label %.lr.ph.i384

.preheader.i389:                                  ; preds = %bb.n
  br i1 %i.bj, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit308.sink.split, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit308

.lr.ph.i384:                                      ; preds = %.lr.ph.i384.prol.loopexit, %.lr.ph.i384
  %.020.i385 = phi i64 [ %i.zn, %.lr.ph.i384 ], [ %.020.i385.unr, %.lr.ph.i384.prol.loopexit ]
  %.01019.i386 = phi ptr [ %i.zm, %.lr.ph.i384 ], [ %.01019.i386.unr, %.lr.ph.i384.prol.loopexit ] ; 9 uses
  %.01218.i387 = phi ptr [ %i.zk, %.lr.ph.i384 ], [ %.01218.i387.unr, %.lr.ph.i384.prol.loopexit ] ; 9 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.01218.i387, i64 8
  %i.yq = load double, ptr %.01218.i387, align 8, !tbaa !30
  %i.yr = getelementptr inbounds nuw i8, ptr %.01019.i386, i64 8
  store double %i.yq, ptr %.01019.i386, align 8, !tbaa !30
  %i.ys = getelementptr inbounds nuw i8, ptr %.01218.i387, i64 16
  %i.yt = load double, ptr %i.yp, align 8, !tbaa !30
  %i.yu = getelementptr inbounds nuw i8, ptr %.01019.i386, i64 16
  store double %i.yt, ptr %i.yr, align 8, !tbaa !30
  %i.yv = getelementptr inbounds nuw i8, ptr %.01218.i387, i64 24
  %i.yw = load double, ptr %i.ys, align 8, !tbaa !30
  %i.yx = getelementptr inbounds nuw i8, ptr %.01019.i386, i64 24
  store double %i.yw, ptr %i.yu, align 8, !tbaa !30
  %i.yy = getelementptr inbounds nuw i8, ptr %.01218.i387, i64 32
  %i.yz = load double, ptr %i.yv, align 8, !tbaa !30
  %i.za = getelementptr inbounds nuw i8, ptr %.01019.i386, i64 32
  store double %i.yz, ptr %i.yx, align 8, !tbaa !30
  %i.zb = getelementptr inbounds nuw i8, ptr %.01218.i387, i64 40
  %i.zc = load double, ptr %i.yy, align 8, !tbaa !30
  %i.zd = getelementptr inbounds nuw i8, ptr %.01019.i386, i64 40
  store double %i.zc, ptr %i.za, align 8, !tbaa !30
  %i.ze = getelementptr inbounds nuw i8, ptr %.01218.i387, i64 48
  %i.zf = load double, ptr %i.zb, align 8, !tbaa !30
  %i.zg = getelementptr inbounds nuw i8, ptr %.01019.i386, i64 48
  store double %i.zf, ptr %i.zd, align 8, !tbaa !30
  %i.zh = getelementptr inbounds nuw i8, ptr %.01218.i387, i64 56
  %i.zi = load double, ptr %i.ze, align 8, !tbaa !30
  %i.zj = getelementptr inbounds nuw i8, ptr %.01019.i386, i64 56
  store double %i.zi, ptr %i.zg, align 8, !tbaa !30
  %i.zk = getelementptr inbounds nuw i8, ptr %.01218.i387, i64 64
  %i.zl = load double, ptr %i.zh, align 8, !tbaa !30
  %i.zm = getelementptr inbounds nuw i8, ptr %.01019.i386, i64 64
  store double %i.zl, ptr %i.zj, align 8, !tbaa !30
  %i.zn = add nuw nsw i64 %.020.i385, 8           ; 2 uses
  %exitcond.not.i388.7 = icmp eq i64 %i.zn, %i.c
  br i1 %exitcond.not.i388.7, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit308, label %.lr.ph.i384, !llvm.loop !189

_ZN6casadi12casadi_clearIdEEvPT_x.exit308.sink.split: ; preds = %.preheader.i389, %bb.d
  %i.zo = shl nuw i64 %i.c, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %1, i8 0, i64 %i.zo, i1 false), !tbaa !30
  br label %_ZN6casadi12casadi_clearIdEEvPT_x.exit308

_ZN6casadi12casadi_clearIdEEvPT_x.exit308:        ; preds = %.lr.ph.i384.prol.loopexit, %.lr.ph.i384, %middle.block723, %_ZN6casadi12casadi_clearIdEEvPT_x.exit308.sink.split, %.preheader.i389, %.preheader16.i382, %split, %bb.d
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
end_hunk_1
