Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/feasiblesqpmethod?download=true
inline.NumInlined: 5575
inline.NumDeleted: 707
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 152
loop-unroll.NumUnrolled: 172
begin_hunk_0_@_ZN6casadi30casadi_dense_lsqr_single_solveIdEEiPKT_PS1_xxxS4_:bb.a
  %exitcond460.not.a = icmp eq i64 %i.ff, %4
  br i1 %exitcond460.not.a, label %._crit_edge423, label %scalar.ph561, !llvm.loop !1262

._crit_edge423:                                   ; preds = %scalar.ph561, %middle.block572
  br i1 %or.cond.i509512514, label %.lr.ph.i294.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301

.lr.ph.i294.preheader:                            ; preds = %._crit_edge423
  %min.iters.check578 = icmp ult i64 %4, 8
  br i1 %min.iters.check578, label %.lr.ph.i294.preheader730, label %vector.memcheck575

vector.memcheck575:                               ; preds = %.lr.ph.i294.preheader
  %i.fg = shl i64 %4, 4
  %i.fh = add i64 %i.fg, -1
  %diff.check576 = icmp ult i64 %i.fh, 31
  br i1 %diff.check576, label %.lr.ph.i294.preheader730, label %vector.ph579

vector.ph579:                                     ; preds = %vector.memcheck575
  %n.vec580 = and i64 %4, -4                      ; 4 uses
  %i.fi = shl i64 %n.vec580, 3                    ; 2 uses
  %i.fj = getelementptr i8, ptr %i.be, i64 %i.fi
  %i.fk = getelementptr i8, ptr %i.c, i64 %i.fi
  br label %vector.body581

vector.body581:                                   ; preds = %vector.body581, %vector.ph579
  %index582 = phi i64 [ 0, %vector.ph579 ], [ %index.next587, %vector.body581 ] ; 2 uses
  %i.fl = shl i64 %index582, 3                    ; 2 uses
  %next.gep583 = getelementptr i8, ptr %i.be, i64 %i.fl ; 2 uses
  %next.gep584 = getelementptr i8, ptr %i.c, i64 %i.fl ; 2 uses
  %i.fm = getelementptr i8, ptr %next.gep584, i64 16
  %wide.load585 = load <2 x double>, ptr %next.gep584, align 8, !tbaa !155
  %wide.load586 = load <2 x double>, ptr %i.fm, align 8, !tbaa !155
  %i.fn = getelementptr i8, ptr %next.gep583, i64 16
  store <2 x double> %wide.load585, ptr %next.gep583, align 8, !tbaa !155
  store <2 x double> %wide.load586, ptr %i.fn, align 8, !tbaa !155
  %index.next587 = add nuw i64 %index582, 4       ; 2 uses
  %i.fo = icmp eq i64 %index.next587, %n.vec580
  br i1 %i.fo, label %middle.block588, label %vector.body581, !llvm.loop !1263

middle.block588:                                  ; preds = %vector.body581
  %cmp.n589 = icmp eq i64 %4, %n.vec580
  br i1 %cmp.n589, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301, label %.lr.ph.i294.preheader730

.lr.ph.i294.preheader730:                         ; preds = %vector.memcheck575, %.lr.ph.i294.preheader, %middle.block588
  %.020.i295.ph = phi i64 [ 0, %vector.memcheck575 ], [ 0, %.lr.ph.i294.preheader ], [ %n.vec580, %middle.block588 ] ; 4 uses
  %.01019.i296.ph = phi ptr [ %i.be, %vector.memcheck575 ], [ %i.be, %.lr.ph.i294.preheader ], [ %i.fj, %middle.block588 ] ; 2 uses
  %.01218.i297.ph = phi ptr [ %i.c, %vector.memcheck575 ], [ %i.c, %.lr.ph.i294.preheader ], [ %i.fk, %middle.block588 ] ; 2 uses
  %i.fp = sub i64 %4, %.020.i295.ph
  %xtraiter763 = and i64 %i.fp, 7                 ; 2 uses
  %lcmp.mod764.not = icmp eq i64 %xtraiter763, 0
  br i1 %lcmp.mod764.not, label %.lr.ph.i294.prol.loopexit, label %.lr.ph.i294.prol

.lr.ph.i294.prol:                                 ; preds = %.lr.ph.i294.preheader730, %.lr.ph.i294.prol
  %.020.i295.prol = phi i64 [ %i.ft, %.lr.ph.i294.prol ], [ %.020.i295.ph, %.lr.ph.i294.preheader730 ]
  %.01019.i296.prol = phi ptr [ %i.fs, %.lr.ph.i294.prol ], [ %.01019.i296.ph, %.lr.ph.i294.preheader730 ] ; 2 uses
  %.01218.i297.prol = phi ptr [ %i.fq, %.lr.ph.i294.prol ], [ %.01218.i297.ph, %.lr.ph.i294.preheader730 ] ; 2 uses
  %prol.iter765 = phi i64 [ %prol.iter765.next, %.lr.ph.i294.prol ], [ 0, %.lr.ph.i294.preheader730 ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.01218.i297.prol, i64 8 ; 2 uses
  %i.fr = load double, ptr %.01218.i297.prol, align 8, !tbaa !155
  %i.fs = getelementptr inbounds nuw i8, ptr %.01019.i296.prol, i64 8 ; 2 uses
  store double %i.fr, ptr %.01019.i296.prol, align 8, !tbaa !155
  %i.ft = add nuw nsw i64 %.020.i295.prol, 1      ; 2 uses
  %prol.iter765.next = add i64 %prol.iter765, 1   ; 2 uses
  %prol.iter765.cmp.not = icmp eq i64 %prol.iter765.next, %xtraiter763
  br i1 %prol.iter765.cmp.not, label %.lr.ph.i294.prol.loopexit, label %.lr.ph.i294.prol, !llvm.loop !1264

.lr.ph.i294.prol.loopexit:                        ; preds = %.lr.ph.i294.prol, %.lr.ph.i294.preheader730
  %.020.i295.unr = phi i64 [ %.020.i295.ph, %.lr.ph.i294.preheader730 ], [ %i.ft, %.lr.ph.i294.prol ]
  %.01019.i296.unr = phi ptr [ %.01019.i296.ph, %.lr.ph.i294.preheader730 ], [ %i.fs, %.lr.ph.i294.prol ]
  %.01218.i297.unr = phi ptr [ %.01218.i297.ph, %.lr.ph.i294.preheader730 ], [ %i.fq, %.lr.ph.i294.prol ]
  %i.fu = sub i64 %.020.i295.ph, %4
  %i.fv = icmp ugt i64 %i.fu, -8
  br i1 %i.fv, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301, label %.lr.ph.i294

.lr.ph.i294:                                      ; preds = %.lr.ph.i294.prol.loopexit, %.lr.ph.i294
  %.020.i295 = phi i64 [ %i.gu, %.lr.ph.i294 ], [ %.020.i295.unr, %.lr.ph.i294.prol.loopexit ]
  %.01019.i296 = phi ptr [ %i.gt, %.lr.ph.i294 ], [ %.01019.i296.unr, %.lr.ph.i294.prol.loopexit ] ; 9 uses
  %.01218.i297 = phi ptr [ %i.gr, %.lr.ph.i294 ], [ %.01218.i297.unr, %.lr.ph.i294.prol.loopexit ] ; 9 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.01218.i297, i64 8
  %i.fx = load double, ptr %.01218.i297, align 8, !tbaa !155
  %i.fy = getelementptr inbounds nuw i8, ptr %.01019.i296, i64 8
  store double %i.fx, ptr %.01019.i296, align 8, !tbaa !155
  %i.fz = getelementptr inbounds nuw i8, ptr %.01218.i297, i64 16
  %i.ga = load double, ptr %i.fw, align 8, !tbaa !155
  %i.gb = getelementptr inbounds nuw i8, ptr %.01019.i296, i64 16
  store double %i.ga, ptr %i.fy, align 8, !tbaa !155
  %i.gc = getelementptr inbounds nuw i8, ptr %.01218.i297, i64 24
  %i.gd = load double, ptr %i.fz, align 8, !tbaa !155
  %i.ge = getelementptr inbounds nuw i8, ptr %.01019.i296, i64 24
  store double %i.gd, ptr %i.gb, align 8, !tbaa !155
  %i.gf = getelementptr inbounds nuw i8, ptr %.01218.i297, i64 32
  %i.gg = load double, ptr %i.gc, align 8, !tbaa !155
  %i.gh = getelementptr inbounds nuw i8, ptr %.01019.i296, i64 32
  store double %i.gg, ptr %i.ge, align 8, !tbaa !155
  %i.gi = getelementptr inbounds nuw i8, ptr %.01218.i297, i64 40
  %i.gj = load double, ptr %i.gf, align 8, !tbaa !155
  %i.gk = getelementptr inbounds nuw i8, ptr %.01019.i296, i64 40
  store double %i.gj, ptr %i.gh, align 8, !tbaa !155
  %i.gl = getelementptr inbounds nuw i8, ptr %.01218.i297, i64 48
  %i.gm = load double, ptr %i.gi, align 8, !tbaa !155
  %i.gn = getelementptr inbounds nuw i8, ptr %.01019.i296, i64 48
  store double %i.gm, ptr %i.gk, align 8, !tbaa !155
  %i.go = getelementptr inbounds nuw i8, ptr %.01218.i297, i64 56
  %i.gp = load double, ptr %i.gl, align 8, !tbaa !155
  %i.gq = getelementptr inbounds nuw i8, ptr %.01019.i296, i64 56
  store double %i.gp, ptr %i.gn, align 8, !tbaa !155
  %i.gr = getelementptr inbounds nuw i8, ptr %.01218.i297, i64 64
  %i.gs = load double, ptr %i.go, align 8, !tbaa !155
  %i.gt = getelementptr inbounds nuw i8, ptr %.01019.i296, i64 64
  store double %i.gs, ptr %i.gq, align 8, !tbaa !155
  %i.gu = add nuw nsw i64 %.020.i295, 8           ; 2 uses
  %exitcond.not.i298.7 = icmp eq i64 %i.gu, %4
  br i1 %exitcond.not.i298.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301, label %.lr.ph.i294, !llvm.loop !1265

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301:    ; preds = %.lr.ph.i294.prol.loopexit, %.lr.ph.i294, %middle.block588, %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit, %.preheader35.i, %.preheader37.i, %_ZN6casadi12casadi_clearIdEEvPT_x.exit279, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit, %._crit_edge423, %.loopexit407
  %i.gv = phi double [ 0.000000e+00, %_ZN6casadi12casadi_clearIdEEvPT_x.exit279 ], [ %i.by, %.loopexit407 ], [ %i.by, %._crit_edge423 ], [ %i.by, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit ], [ %i.by, %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit ], [ %i.by, %.preheader37.i ], [ %i.by, %.preheader35.i ], [ %i.by, %middle.block588 ], [ %i.by, %.lr.ph.i294 ], [ %i.by, %.lr.ph.i294.prol.loopexit ] ; 4 uses
  %.0240390 = phi double [ 0.000000e+00, %_ZN6casadi12casadi_clearIdEEvPT_x.exit279 ], [ %i.eu, %.loopexit407 ], [ %i.eu, %._crit_edge423 ], [ 0.000000e+00, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit ], [ 0.000000e+00, %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit ], [ 0.000000e+00, %.preheader37.i ], [ 0.000000e+00, %.preheader35.i ], [ %i.eu, %middle.block588 ], [ %i.eu, %.lr.ph.i294 ], [ %i.eu, %.lr.ph.i294.prol.loopexit ] ; 2 uses
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  %.not269.not = icmp eq i64 %2, 0                ; 2 uses
  %i.gx = icmp ne ptr %0, null
  %or.cond.i302 = and i1 %i.gx, %.not.i           ; 2 uses
  %or.cond50.i305 = and i1 %i.bg, %i.ba           ; 4 uses
  %i.gy = icmp slt i64 %4, 1
  %i.gz = shl i64 %4, 3
  %scevgep = getelementptr i8, ptr %i.gw, i64 %i.gz
  %i.ha = add i64 %4, -1                          ; 6 uses
  %i.hb = add i64 %3, -1
  %min.iters.check686 = icmp ult i64 %3, 4
  %n.vec688 = and i64 %3, 9223372036854775804     ; 3 uses
  %cmp.n697 = icmp eq i64 %3, %n.vec688
  %xtraiter767 = and i64 %4, 1
  %i.hc = icmp eq i64 %i.ha, 0
  %unroll_iter772 = and i64 %4, -2
  %lcmp.mod769.not = icmp eq i64 %xtraiter767, 0
  %lcmp.mod771 = trunc i64 %4 to i1
  %xtraiter775 = and i64 %4, 1
  %i.hd = icmp eq i64 %i.ha, 0
  %unroll_iter782 = and i64 %4, -2
  %lcmp.mod779.not = icmp eq i64 %xtraiter775, 0
  %lcmp.mod781 = trunc i64 %4 to i1
  %xtraiter784 = and i64 %3, 3                    ; 3 uses
  %i.he = icmp ult i64 %i.hb, 3
  %unroll_iter789 = and i64 %3, 9223372036854775804
  %lcmp.mod786.not = icmp eq i64 %xtraiter784, 0
  %lcmp.mod788 = icmp ne i64 %xtraiter784, 0
  %min.iters.check672 = icmp ult i64 %3, 4
  %n.vec674 = and i64 %3, 9223372036854775804     ; 3 uses
  %cmp.n683 = icmp eq i64 %3, %n.vec674
  %min.iters.check658 = icmp ult i64 %4, 4
  %n.vec660 = and i64 %4, -4                      ; 3 uses
  %cmp.n669 = icmp eq i64 %4, %n.vec660
  %xtraiter792 = and i64 %4, 1
  %i.hf = icmp eq i64 %i.ha, 0
  %unroll_iter797 = and i64 %4, -2
  %lcmp.mod794.not = icmp eq i64 %xtraiter792, 0
  %lcmp.mod796 = trunc i64 %4 to i1
  %xtraiter800 = and i64 %4, 1
  %i.hg = icmp eq i64 %i.ha, 0
  %unroll_iter807 = and i64 %4, -2
  %lcmp.mod804.not = icmp eq i64 %xtraiter800, 0
  %lcmp.mod806 = trunc i64 %4 to i1
  %xtraiter809 = and i64 %4, 3                    ; 3 uses
  %i.hh = icmp ult i64 %i.ha, 3
  %unroll_iter814 = and i64 %4, -4
  %lcmp.mod811.not = icmp eq i64 %xtraiter809, 0
  %lcmp.mod813 = icmp ne i64 %xtraiter809, 0
  %min.iters.check644 = icmp ult i64 %4, 4
  %n.vec646 = and i64 %4, 9223372036854775804     ; 3 uses
  %cmp.n655 = icmp eq i64 %4, %n.vec646
  %min.iters.check631 = icmp ult i64 %4, 2
  %n.vec633 = and i64 %4, -2                      ; 3 uses
  %cmp.n641 = icmp eq i64 %4, %n.vec633
  %min.iters.check615 = icmp ult i64 %4, 4
  %bound0611 = icmp ult ptr %i.bb, %i.bf
  %bound1612 = icmp ult ptr %i.be, %scevgep
  %found.conflict613 = and i1 %bound0611, %bound1612
  %n.vec617 = and i64 %4, -4                      ; 3 uses
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  %cmp.n628 = icmp eq i64 %4, %n.vec617
  %xtraiter816 = and i64 %4, 1
  %lcmp.mod817.not = icmp eq i64 %xtraiter816, 0
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  %min.iters.check595 = icmp ult i64 %4, 4
  %bound0 = icmp ult ptr %i.be, %i.bd
  %bound1 = icmp ult ptr %i.c, %i.bf
  %found.conflict = and i1 %bound0, %bound1
  %n.vec597 = and i64 %4, -4                      ; 3 uses
  %cmp.n608 = icmp eq i64 %4, %n.vec597
  %xtraiter819 = and i64 %4, 1
  %lcmp.mod820.not = icmp eq i64 %xtraiter819, 0
  %xtraiter822 = and i64 %4, 3                    ; 3 uses
  %i.hm = icmp ult i64 %i.ha, 3
  %unroll_iter827 = and i64 %4, -4
  %lcmp.mod824.not = icmp eq i64 %xtraiter822, 0
  %lcmp.mod826 = icmp ne i64 %xtraiter822, 0
  br label %bb.d

bb.d:                                             ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370
  %.0249 = phi double [ 0.000000e+00, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301 ], [ %.1250, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370 ] ; 4 uses
  %.0248 = phi double [ 0.000000e+00, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301 ], [ %6, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370 ]
  %.0245 = phi double [ 0.000000e+00, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301 ], [ %i.sv, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370 ]
  %.0244 = phi double [ -1.000000e+00, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301 ], [ %14, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370 ]
  %.0243 = phi double [ 0.000000e+00, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301 ], [ %i.uk, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370 ]
  %.1241 = phi double [ %.0240390, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301 ], [ %.2242, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370 ] ; 5 uses
  %.0239 = phi double [ %.0240390, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301 ], [ %i.pd, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370 ] ; 3 uses
  %.0238 = phi double [ %i.gv, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301 ], [ %i.pf, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370 ] ; 2 uses
  %.0237 = phi i64 [ 0, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301 ], [ %i.ho, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370 ] ; 2 uses
  %i.hn = phi <2 x double> [ zeroinitializer, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301 ], [ %i.sz, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370 ] ; 2 uses
  %i.ho = add nuw nsw i64 %.0237, 1
  br i1 %i.bg, label %.lr.ph426, label %._crit_edge427

.lr.ph426:                                        ; preds = %bb.d
  %i.hp = fneg double %.1241                      ; 2 uses
  br i1 %min.iters.check686, label %scalar.ph685.preheader, label %vector.ph687

vector.ph687:                                     ; preds = %.lr.ph426
  %broadcast.splatinsert689 = insertelement <2 x double> poison, double %i.hp, i64 0
  %broadcast.splat690 = shufflevector <2 x double> %broadcast.splatinsert689, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body691

vector.body691:                                   ; preds = %vector.body691, %vector.ph687
  %index692 = phi i64 [ 0, %vector.ph687 ], [ %index.next695, %vector.body691 ] ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index692 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16 ; 2 uses
  %wide.load693 = load <2 x double>, ptr %i.hq, align 8, !tbaa !155
  %wide.load694 = load <2 x double>, ptr %i.hr, align 8, !tbaa !155
  %i.hs = fmul <2 x double> %wide.load693, %broadcast.splat690
  %i.ht = fmul <2 x double> %wide.load694, %broadcast.splat690
  store <2 x double> %i.hs, ptr %i.hq, align 8, !tbaa !155
  store <2 x double> %i.ht, ptr %i.hr, align 8, !tbaa !155
  %index.next695 = add nuw i64 %index692, 4       ; 2 uses
  %i.hu = icmp eq i64 %index.next695, %n.vec688
  br i1 %i.hu, label %middle.block696, label %vector.body691, !llvm.loop !1266

middle.block696:                                  ; preds = %vector.body691
  br i1 %cmp.n697, label %._crit_edge427, label %scalar.ph685.preheader

scalar.ph685.preheader:                           ; preds = %.lr.ph426, %middle.block696
  %.2254424.ph = phi i64 [ 0, %.lr.ph426 ], [ %n.vec688, %middle.block696 ]
  br label %scalar.ph685

scalar.ph685:                                     ; preds = %scalar.ph685.preheader, %scalar.ph685
  %.2254424 = phi i64 [ %i.hy, %scalar.ph685 ], [ %.2254424.ph, %scalar.ph685.preheader ] ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.2254424 ; 2 uses
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !155
  %i.hx = fmul double %i.hw, %i.hp
  store double %i.hx, ptr %i.hv, align 8, !tbaa !155
  %i.hy = add nuw nsw i64 %.2254424, 1            ; 2 uses
  %exitcond461.not.a = icmp eq i64 %i.hy, %3
  br i1 %exitcond461.not.a, label %._crit_edge427, label %scalar.ph685, !llvm.loop !1267

._crit_edge427:                                   ; preds = %scalar.ph685, %middle.block696, %bb.d
  br i1 %or.cond.i302, label %bb.e, label %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit325

bb.e:                                             ; preds = %._crit_edge427
  br i1 %.not269.not, label %.preheader37.i306, label %.preheader35.i316

.preheader37.i306:                                ; preds = %bb.e
  br i1 %or.cond50.i305, label %.preheader36.i307, label %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit325

.preheader35.i316:                                ; preds = %bb.e
  br i1 %or.cond50.i305, label %.preheader.i317, label %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit325

.preheader36.i307:                                ; preds = %.preheader37.i306, %._crit_edge.i314
  %.02842.i308 = phi i64 [ %i.is, %._crit_edge.i314 ], [ 0, %.preheader37.i306 ] ; 2 uses
  %.03041.i309 = phi ptr [ %.lcssa724, %._crit_edge.i314 ], [ %0, %.preheader37.i306 ] ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.02842.i308 ; 4 uses
  %.promoted.i310 = load double, ptr %i.hz, align 8, !tbaa !155 ; 2 uses
  br i1 %i.hd, label %.epil.preheader774, label %.preheader36.i307.new

.preheader36.i307.new:                            ; preds = %.preheader36.i307, %.preheader36.i307.new
  %i.ia = phi double [ %i.il, %.preheader36.i307.new ], [ %.promoted.i310, %.preheader36.i307 ]
  %.040.i311 = phi i64 [ %i.im, %.preheader36.i307.new ], [ 0, %.preheader36.i307 ] ; 3 uses
  %.13139.i312 = phi ptr [ %i.ig, %.preheader36.i307.new ], [ %.03041.i309, %.preheader36.i307 ] ; 3 uses
  %niter783 = phi i64 [ %niter783.next.1, %.preheader36.i307.new ], [ 0, %.preheader36.i307 ]
  %i.ib = getelementptr inbounds nuw i8, ptr %.13139.i312, i64 8
  %i.ic = load double, ptr %.13139.i312, align 8, !tbaa !155
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.040.i311
  %i.ie = load double, ptr %i.id, align 8, !tbaa !155
  %i.if = tail call double @llvm.fmuladd.f64(double %i.ic, double %i.ie, double %i.ia) ; 2 uses
  store double %i.if, ptr %i.hz, align 8, !tbaa !155
  %i.ig = getelementptr inbounds nuw i8, ptr %.13139.i312, i64 16 ; 3 uses
  %i.ih = load double, ptr %i.ib, align 8, !tbaa !155
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.040.i311
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !155
  %i.il = tail call double @llvm.fmuladd.f64(double %i.ih, double %i.ik, double %i.if) ; 3 uses
  store double %i.il, ptr %i.hz, align 8, !tbaa !155
  %i.im = add nuw nsw i64 %.040.i311, 2           ; 2 uses
  %niter783.next.1 = add i64 %niter783, 2         ; 2 uses
  %niter783.ncmp.1 = icmp eq i64 %niter783.next.1, %unroll_iter782
  br i1 %niter783.ncmp.1, label %._crit_edge.i314.unr-lcssa, label %.preheader36.i307.new, !llvm.loop !1256

._crit_edge.i314.unr-lcssa:                       ; preds = %.preheader36.i307.new
  br i1 %lcmp.mod779.not, label %._crit_edge.i314, label %.epil.preheader774

.epil.preheader774:                               ; preds = %._crit_edge.i314.unr-lcssa, %.preheader36.i307
  %.epil.init778 = phi double [ %.promoted.i310, %.preheader36.i307 ], [ %i.il, %._crit_edge.i314.unr-lcssa ]
  %.040.i311.epil.init = phi i64 [ 0, %.preheader36.i307 ], [ %i.im, %._crit_edge.i314.unr-lcssa ]
  %.13139.i312.epil.init = phi ptr [ %.03041.i309, %.preheader36.i307 ], [ %i.ig, %._crit_edge.i314.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod781)
  %i.in = getelementptr inbounds nuw i8, ptr %.13139.i312.epil.init, i64 8
  %i.io = load double, ptr %.13139.i312.epil.init, align 8, !tbaa !155
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.040.i311.epil.init
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !155
  %i.ir = tail call double @llvm.fmuladd.f64(double %i.io, double %i.iq, double %.epil.init778)
  store double %i.ir, ptr %i.hz, align 8, !tbaa !155
  br label %._crit_edge.i314

._crit_edge.i314:                                 ; preds = %._crit_edge.i314.unr-lcssa, %.epil.preheader774
  %.lcssa724 = phi ptr [ %i.ig, %._crit_edge.i314.unr-lcssa ], [ %i.in, %.epil.preheader774 ]
  %i.is = add nuw nsw i64 %.02842.i308, 1         ; 2 uses
  %exitcond53.not.i315 = icmp eq i64 %i.is, %3
  br i1 %exitcond53.not.i315, label %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit325, label %.preheader36.i307, !llvm.loop !1257

.preheader.i317:                                  ; preds = %.preheader35.i316, %._crit_edge45.i323
  %.12948.i318 = phi i64 [ %i.jo, %._crit_edge45.i323 ], [ 0, %.preheader35.i316 ] ; 2 uses
  %.247.i319 = phi ptr [ %.lcssa, %._crit_edge45.i323 ], [ %0, %.preheader35.i316 ] ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.12948.i318 ; 3 uses
  br i1 %i.hc, label %.epil.preheader766, label %.preheader.i317.new

.preheader.i317.new:                              ; preds = %.preheader.i317, %.preheader.i317.new
  %.144.i320 = phi i64 [ %i.jh, %.preheader.i317.new ], [ 0, %.preheader.i317 ] ; 3 uses
  %.343.i321 = phi ptr [ %i.ja, %.preheader.i317.new ], [ %.247.i319, %.preheader.i317 ] ; 3 uses
  %niter773 = phi i64 [ %niter773.next.1, %.preheader.i317.new ], [ 0, %.preheader.i317 ]
  %i.iu = getelementptr inbounds nuw i8, ptr %.343.i321, i64 8
  %i.iv = load double, ptr %.343.i321, align 8, !tbaa !155
  %i.iw = load double, ptr %i.it, align 8, !tbaa !155
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.144.i320 ; 2 uses
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !155
  %i.iz = tail call double @llvm.fmuladd.f64(double %i.iv, double %i.iw, double %i.iy)
  store double %i.iz, ptr %i.ix, align 8, !tbaa !155
  %i.ja = getelementptr inbounds nuw i8, ptr %.343.i321, i64 16 ; 3 uses
  %i.jb = load double, ptr %i.iu, align 8, !tbaa !155
  %i.jc = load double, ptr %i.it, align 8, !tbaa !155
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.144.i320
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 2 uses
  %i.jf = load double, ptr %i.je, align 8, !tbaa !155
  %i.jg = tail call double @llvm.fmuladd.f64(double %i.jb, double %i.jc, double %i.jf)
  store double %i.jg, ptr %i.je, align 8, !tbaa !155
  %i.jh = add nuw nsw i64 %.144.i320, 2           ; 2 uses
  %niter773.next.1 = add i64 %niter773, 2         ; 2 uses
  %niter773.ncmp.1 = icmp eq i64 %niter773.next.1, %unroll_iter772
  br i1 %niter773.ncmp.1, label %._crit_edge45.i323.unr-lcssa, label %.preheader.i317.new, !llvm.loop !1258

._crit_edge45.i323.unr-lcssa:                     ; preds = %.preheader.i317.new
  br i1 %lcmp.mod769.not, label %._crit_edge45.i323, label %.epil.preheader766

.epil.preheader766:                               ; preds = %._crit_edge45.i323.unr-lcssa, %.preheader.i317
  %.144.i320.epil.init = phi i64 [ 0, %.preheader.i317 ], [ %i.jh, %._crit_edge45.i323.unr-lcssa ]
  %.343.i321.epil.init = phi ptr [ %.247.i319, %.preheader.i317 ], [ %i.ja, %._crit_edge45.i323.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod771)
  %i.ji = getelementptr inbounds nuw i8, ptr %.343.i321.epil.init, i64 8
  %i.jj = load double, ptr %.343.i321.epil.init, align 8, !tbaa !155
  %i.jk = load double, ptr %i.it, align 8, !tbaa !155
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.144.i320.epil.init ; 2 uses
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !155
  %i.jn = tail call double @llvm.fmuladd.f64(double %i.jj, double %i.jk, double %i.jm)
  store double %i.jn, ptr %i.jl, align 8, !tbaa !155
  br label %._crit_edge45.i323

._crit_edge45.i323:                               ; preds = %._crit_edge45.i323.unr-lcssa, %.epil.preheader766
  %.lcssa = phi ptr [ %i.ja, %._crit_edge45.i323.unr-lcssa ], [ %i.ji, %.epil.preheader766 ]
  %i.jo = add nuw nsw i64 %.12948.i318, 1         ; 2 uses
  %exitcond55.not.i324 = icmp eq i64 %i.jo, %3
  br i1 %exitcond55.not.i324, label %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit325, label %.preheader.i317, !llvm.loop !1259

_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit325: ; preds = %._crit_edge45.i323, %._crit_edge.i314, %._crit_edge427, %.preheader37.i306, %.preheader35.i316
  br i1 %i.bg, label %.lr.ph.i.i327.preheader, label %.loopexit

.lr.ph.i.i327.preheader:                          ; preds = %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit325
  br i1 %i.he, label %.lr.ph.i.i327.epil.preheader, label %.lr.ph.i.i327

.lr.ph.i.i327:                                    ; preds = %.lr.ph.i.i327.preheader, %.lr.ph.i.i327
  %.012.i.i328 = phi double [ %i.ka, %.lr.ph.i.i327 ], [ 0.000000e+00, %.lr.ph.i.i327.preheader ]
  %.0710.i.i330 = phi ptr [ %i.jy, %.lr.ph.i.i327 ], [ %5, %.lr.ph.i.i327.preheader ] ; 5 uses
  %niter790 = phi i64 [ %niter790.next.3, %.lr.ph.i.i327 ], [ 0, %.lr.ph.i.i327.preheader ]
  %i.jp = getelementptr i8, ptr %.0710.i.i330, i64 8
  %i.jq = load double, ptr %.0710.i.i330, align 8, !tbaa !155 ; 2 uses
  %i.jr = tail call double @llvm.fmuladd.f64(double %i.jq, double %i.jq, double %.012.i.i328)
  %i.js = getelementptr i8, ptr %.0710.i.i330, i64 16
  %i.jt = load double, ptr %i.jp, align 8, !tbaa !155 ; 2 uses
  %i.ju = tail call double @llvm.fmuladd.f64(double %i.jt, double %i.jt, double %i.jr)
  %i.jv = getelementptr i8, ptr %.0710.i.i330, i64 24
  %i.jw = load double, ptr %i.js, align 8, !tbaa !155 ; 2 uses
  %i.jx = tail call double @llvm.fmuladd.f64(double %i.jw, double %i.jw, double %i.ju)
  %i.jy = getelementptr i8, ptr %.0710.i.i330, i64 32 ; 2 uses
  %i.jz = load double, ptr %i.jv, align 8, !tbaa !155 ; 2 uses
  %i.ka = tail call double @llvm.fmuladd.f64(double %i.jz, double %i.jz, double %i.jx) ; 3 uses
  %niter790.next.3 = add nuw nsw i64 %niter790, 4 ; 2 uses
  %niter790.ncmp.3 = icmp eq i64 %niter790.next.3, %unroll_iter789
  br i1 %niter790.ncmp.3, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332.unr-lcssa, label %.lr.ph.i.i327, !llvm.loop !4

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332.unr-lcssa: ; preds = %.lr.ph.i.i327
  br i1 %lcmp.mod786.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332, label %.lr.ph.i.i327.epil.preheader

.lr.ph.i.i327.epil.preheader:                     ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332.unr-lcssa, %.lr.ph.i.i327.preheader
  %.012.i.i328.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i327.preheader ], [ %i.ka, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332.unr-lcssa ]
  %.0710.i.i330.epil.init = phi ptr [ %5, %.lr.ph.i.i327.preheader ], [ %i.jy, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod788)
  br label %.lr.ph.i.i327.epil

.lr.ph.i.i327.epil:                               ; preds = %.lr.ph.i.i327.epil, %.lr.ph.i.i327.epil.preheader
  %.012.i.i328.epil = phi double [ %i.kd, %.lr.ph.i.i327.epil ], [ %.012.i.i328.epil.init, %.lr.ph.i.i327.epil.preheader ]
  %.0710.i.i330.epil = phi ptr [ %i.kb, %.lr.ph.i.i327.epil ], [ %.0710.i.i330.epil.init, %.lr.ph.i.i327.epil.preheader ] ; 2 uses
  %epil.iter785 = phi i64 [ %epil.iter785.next, %.lr.ph.i.i327.epil ], [ 0, %.lr.ph.i.i327.epil.preheader ]
  %i.kb = getelementptr i8, ptr %.0710.i.i330.epil, i64 8
  %i.kc = load double, ptr %.0710.i.i330.epil, align 8, !tbaa !155 ; 2 uses
  %i.kd = tail call double @llvm.fmuladd.f64(double %i.kc, double %i.kc, double %.012.i.i328.epil) ; 2 uses
  %epil.iter785.next = add i64 %epil.iter785, 1   ; 2 uses
  %epil.iter785.cmp.not = icmp eq i64 %epil.iter785.next, %xtraiter784
  br i1 %epil.iter785.cmp.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332, label %.lr.ph.i.i327.epil, !llvm.loop !1268

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332:    ; preds = %.lr.ph.i.i327.epil, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332.unr-lcssa
  %.lcssa725 = phi double [ %i.ka, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332.unr-lcssa ], [ %i.kd, %.lr.ph.i.i327.epil ]
  %i.ke = tail call noundef double @sqrt(double noundef %.lcssa725) #29 ; 10 uses
  %i.kf = fcmp ogt double %i.ke, 0.000000e+00
  br i1 %i.kf, label %.lr.ph429, label %.loopexit

.lr.ph429:                                        ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332
  %i.kg = fdiv nnan double 1.000000e+00, %i.ke    ; 2 uses
  br i1 %min.iters.check672, label %scalar.ph671.preheader, label %vector.ph673

vector.ph673:                                     ; preds = %.lr.ph429
  %broadcast.splatinsert675 = insertelement <2 x double> poison, double %i.kg, i64 0
  %broadcast.splat676 = shufflevector <2 x double> %broadcast.splatinsert675, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body677

vector.body677:                                   ; preds = %vector.body677, %vector.ph673
  %index678 = phi i64 [ 0, %vector.ph673 ], [ %index.next681, %vector.body677 ] ; 2 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index678 ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16 ; 2 uses
  %wide.load679 = load <2 x double>, ptr %i.kh, align 8, !tbaa !155
  %wide.load680 = load <2 x double>, ptr %i.ki, align 8, !tbaa !155
  %i.kj = fmul <2 x double> %broadcast.splat676, %wide.load679
  %i.kk = fmul <2 x double> %broadcast.splat676, %wide.load680
  store <2 x double> %i.kj, ptr %i.kh, align 8, !tbaa !155
  store <2 x double> %i.kk, ptr %i.ki, align 8, !tbaa !155
  %index.next681 = add nuw i64 %index678, 4       ; 2 uses
  %i.kl = icmp eq i64 %index.next681, %n.vec674
  br i1 %i.kl, label %middle.block682, label %vector.body677, !llvm.loop !1269

middle.block682:                                  ; preds = %vector.body677
  br i1 %cmp.n683, label %._crit_edge430, label %scalar.ph671.preheader

scalar.ph671.preheader:                           ; preds = %.lr.ph429, %middle.block682
  %.3255428.ph = phi i64 [ 0, %.lr.ph429 ], [ %n.vec674, %middle.block682 ]
  br label %scalar.ph671

scalar.ph671:                                     ; preds = %scalar.ph671.preheader, %scalar.ph671
  %.3255428 = phi i64 [ %i.kp, %scalar.ph671 ], [ %.3255428.ph, %scalar.ph671.preheader ] ; 2 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.3255428 ; 2 uses
  %i.kn = load double, ptr %i.km, align 8, !tbaa !155
  %i.ko = fmul double %i.kg, %i.kn
  store double %i.ko, ptr %i.km, align 8, !tbaa !155
  %i.kp = add nuw nsw i64 %.3255428, 1            ; 2 uses
  %exitcond462.not.a = icmp eq i64 %i.kp, %3
  br i1 %exitcond462.not.a, label %._crit_edge430, label %scalar.ph671, !llvm.loop !1270

._crit_edge430:                                   ; preds = %scalar.ph671, %middle.block682
  %i.kq = fmul double %.1241, %.1241
  %i.kr = tail call double @llvm.fmuladd.f64(double %.0249, double %.0249, double %i.kq)
  %i.ks = tail call double @llvm.fmuladd.f64(double %i.ke, double %i.ke, double %i.kr)
  %i.kt = fadd double %i.ks, 0.000000e+00
  %sqrt.a = tail call double @sqrt(double noundef %i.kt) #29 ; 3 uses
  br i1 %i.ba, label %.lr.ph433, label %._crit_edge434

.lr.ph433:                                        ; preds = %._crit_edge430
  %i.ku = fneg double %i.ke                       ; 2 uses
  br i1 %min.iters.check658, label %scalar.ph657.preheader, label %vector.ph659

vector.ph659:                                     ; preds = %.lr.ph433
  %broadcast.splatinsert661 = insertelement <2 x double> poison, double %i.ku, i64 0
  %broadcast.splat662 = shufflevector <2 x double> %broadcast.splatinsert661, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body663

vector.body663:                                   ; preds = %vector.body663, %vector.ph659
  %index664 = phi i64 [ 0, %vector.ph659 ], [ %index.next667, %vector.body663 ] ; 2 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index664 ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16 ; 2 uses
  %wide.load665 = load <2 x double>, ptr %i.kv, align 8, !tbaa !155
  %wide.load666 = load <2 x double>, ptr %i.kw, align 8, !tbaa !155
  %i.kx = fmul <2 x double> %wide.load665, %broadcast.splat662
  %i.ky = fmul <2 x double> %wide.load666, %broadcast.splat662
  store <2 x double> %i.kx, ptr %i.kv, align 8, !tbaa !155
  store <2 x double> %i.ky, ptr %i.kw, align 8, !tbaa !155
  %index.next667 = add nuw i64 %index664, 4       ; 2 uses
  %i.kz = icmp eq i64 %index.next667, %n.vec660
  br i1 %i.kz, label %middle.block668, label %vector.body663, !llvm.loop !1271

middle.block668:                                  ; preds = %vector.body663
  br i1 %cmp.n669, label %._crit_edge434, label %scalar.ph657.preheader

scalar.ph657.preheader:                           ; preds = %.lr.ph433, %middle.block668
  %.4256431.ph = phi i64 [ 0, %.lr.ph433 ], [ %n.vec660, %middle.block668 ]
  br label %scalar.ph657

scalar.ph657:                                     ; preds = %scalar.ph657.preheader, %scalar.ph657
  %.4256431 = phi i64 [ %i.ld, %scalar.ph657 ], [ %.4256431.ph, %scalar.ph657.preheader ] ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.4256431 ; 2 uses
  %i.lb = load double, ptr %i.la, align 8, !tbaa !155
  %i.lc = fmul double %i.lb, %i.ku
  store double %i.lc, ptr %i.la, align 8, !tbaa !155
  %i.ld = add nuw nsw i64 %.4256431, 1            ; 2 uses
  %exitcond463.not.a = icmp eq i64 %i.ld, %4
  br i1 %exitcond463.not.a, label %._crit_edge434, label %scalar.ph657, !llvm.loop !1272

._crit_edge434:                                   ; preds = %scalar.ph657, %middle.block668, %._crit_edge430
  br i1 %or.cond.i302, label %bb.f, label %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit356

bb.f:                                             ; preds = %._crit_edge434
  br i1 %.not269.not, label %.preheader37.i337, label %.preheader35.i347

.preheader37.i337:                                ; preds = %bb.f
  br i1 %or.cond50.i305, label %.preheader36.i338, label %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit356

.preheader35.i347:                                ; preds = %bb.f
  br i1 %or.cond50.i305, label %.preheader.i348, label %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit356

.preheader36.i338:                                ; preds = %.preheader37.i337, %._crit_edge.i345
  %.02842.i339 = phi i64 [ %i.lx, %._crit_edge.i345 ], [ 0, %.preheader37.i337 ] ; 2 uses
  %.03041.i340 = phi ptr [ %.lcssa727, %._crit_edge.i345 ], [ %0, %.preheader37.i337 ] ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.02842.i339 ; 4 uses
  %.promoted.i341 = load double, ptr %i.le, align 8, !tbaa !155 ; 2 uses
  br i1 %i.hg, label %.epil.preheader799, label %.preheader36.i338.new

.preheader36.i338.new:                            ; preds = %.preheader36.i338, %.preheader36.i338.new
  %i.lf = phi double [ %i.lq, %.preheader36.i338.new ], [ %.promoted.i341, %.preheader36.i338 ]
  %.040.i342 = phi i64 [ %i.lr, %.preheader36.i338.new ], [ 0, %.preheader36.i338 ] ; 3 uses
  %.13139.i343 = phi ptr [ %i.ll, %.preheader36.i338.new ], [ %.03041.i340, %.preheader36.i338 ] ; 3 uses
  %niter808 = phi i64 [ %niter808.next.1, %.preheader36.i338.new ], [ 0, %.preheader36.i338 ]
  %i.lg = getelementptr inbounds nuw i8, ptr %.13139.i343, i64 8
  %i.lh = load double, ptr %.13139.i343, align 8, !tbaa !155
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.040.i342
  %i.lj = load double, ptr %i.li, align 8, !tbaa !155
  %i.lk = tail call double @llvm.fmuladd.f64(double %i.lh, double %i.lj, double %i.lf) ; 2 uses
  store double %i.lk, ptr %i.le, align 8, !tbaa !155
  %i.ll = getelementptr inbounds nuw i8, ptr %.13139.i343, i64 16 ; 3 uses
  %i.lm = load double, ptr %i.lg, align 8, !tbaa !155
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.040.i342
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !155
  %i.lq = tail call double @llvm.fmuladd.f64(double %i.lm, double %i.lp, double %i.lk) ; 3 uses
  store double %i.lq, ptr %i.le, align 8, !tbaa !155
  %i.lr = add nuw nsw i64 %.040.i342, 2           ; 2 uses
  %niter808.next.1 = add i64 %niter808, 2         ; 2 uses
  %niter808.ncmp.1 = icmp eq i64 %niter808.next.1, %unroll_iter807
  br i1 %niter808.ncmp.1, label %._crit_edge.i345.unr-lcssa, label %.preheader36.i338.new, !llvm.loop !1256

._crit_edge.i345.unr-lcssa:                       ; preds = %.preheader36.i338.new
  br i1 %lcmp.mod804.not, label %._crit_edge.i345, label %.epil.preheader799

.epil.preheader799:                               ; preds = %._crit_edge.i345.unr-lcssa, %.preheader36.i338
  %.epil.init803 = phi double [ %.promoted.i341, %.preheader36.i338 ], [ %i.lq, %._crit_edge.i345.unr-lcssa ]
  %.040.i342.epil.init = phi i64 [ 0, %.preheader36.i338 ], [ %i.lr, %._crit_edge.i345.unr-lcssa ]
  %.13139.i343.epil.init = phi ptr [ %.03041.i340, %.preheader36.i338 ], [ %i.ll, %._crit_edge.i345.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod806)
  %i.ls = getelementptr inbounds nuw i8, ptr %.13139.i343.epil.init, i64 8
  %i.lt = load double, ptr %.13139.i343.epil.init, align 8, !tbaa !155
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.040.i342.epil.init
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !155
  %i.lw = tail call double @llvm.fmuladd.f64(double %i.lt, double %i.lv, double %.epil.init803)
  store double %i.lw, ptr %i.le, align 8, !tbaa !155
  br label %._crit_edge.i345

._crit_edge.i345:                                 ; preds = %._crit_edge.i345.unr-lcssa, %.epil.preheader799
  %.lcssa727 = phi ptr [ %i.ll, %._crit_edge.i345.unr-lcssa ], [ %i.ls, %.epil.preheader799 ]
  %i.lx = add nuw nsw i64 %.02842.i339, 1         ; 2 uses
  %exitcond53.not.i346 = icmp eq i64 %i.lx, %3
  br i1 %exitcond53.not.i346, label %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit356, label %.preheader36.i338, !llvm.loop !1257

.preheader.i348:                                  ; preds = %.preheader35.i347, %._crit_edge45.i354
  %.12948.i349 = phi i64 [ %i.mt, %._crit_edge45.i354 ], [ 0, %.preheader35.i347 ] ; 2 uses
  %.247.i350 = phi ptr [ %.lcssa726, %._crit_edge45.i354 ], [ %0, %.preheader35.i347 ] ; 2 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.12948.i349 ; 3 uses
  br i1 %i.hf, label %.epil.preheader791, label %.preheader.i348.new

.preheader.i348.new:                              ; preds = %.preheader.i348, %.preheader.i348.new
  %.144.i351 = phi i64 [ %i.mm, %.preheader.i348.new ], [ 0, %.preheader.i348 ] ; 3 uses
  %.343.i352 = phi ptr [ %i.mf, %.preheader.i348.new ], [ %.247.i350, %.preheader.i348 ] ; 3 uses
  %niter798 = phi i64 [ %niter798.next.1, %.preheader.i348.new ], [ 0, %.preheader.i348 ]
  %i.lz = getelementptr inbounds nuw i8, ptr %.343.i352, i64 8
  %i.ma = load double, ptr %.343.i352, align 8, !tbaa !155
  %i.mb = load double, ptr %i.ly, align 8, !tbaa !155
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.144.i351 ; 2 uses
  %i.md = load double, ptr %i.mc, align 8, !tbaa !155
  %i.me = tail call double @llvm.fmuladd.f64(double %i.ma, double %i.mb, double %i.md)
  store double %i.me, ptr %i.mc, align 8, !tbaa !155
  %i.mf = getelementptr inbounds nuw i8, ptr %.343.i352, i64 16 ; 3 uses
  %i.mg = load double, ptr %i.lz, align 8, !tbaa !155
  %i.mh = load double, ptr %i.ly, align 8, !tbaa !155
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.144.i351
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8 ; 2 uses
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !155
  %i.ml = tail call double @llvm.fmuladd.f64(double %i.mg, double %i.mh, double %i.mk)
  store double %i.ml, ptr %i.mj, align 8, !tbaa !155
  %i.mm = add nuw nsw i64 %.144.i351, 2           ; 2 uses
  %niter798.next.1 = add i64 %niter798, 2         ; 2 uses
  %niter798.ncmp.1 = icmp eq i64 %niter798.next.1, %unroll_iter797
  br i1 %niter798.ncmp.1, label %._crit_edge45.i354.unr-lcssa, label %.preheader.i348.new, !llvm.loop !1258

._crit_edge45.i354.unr-lcssa:                     ; preds = %.preheader.i348.new
  br i1 %lcmp.mod794.not, label %._crit_edge45.i354, label %.epil.preheader791

.epil.preheader791:                               ; preds = %._crit_edge45.i354.unr-lcssa, %.preheader.i348
  %.144.i351.epil.init = phi i64 [ 0, %.preheader.i348 ], [ %i.mm, %._crit_edge45.i354.unr-lcssa ]
  %.343.i352.epil.init = phi ptr [ %.247.i350, %.preheader.i348 ], [ %i.mf, %._crit_edge45.i354.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod796)
  %i.mn = getelementptr inbounds nuw i8, ptr %.343.i352.epil.init, i64 8
  %i.mo = load double, ptr %.343.i352.epil.init, align 8, !tbaa !155
  %i.mp = load double, ptr %i.ly, align 8, !tbaa !155
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.144.i351.epil.init ; 2 uses
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !155
  %i.ms = tail call double @llvm.fmuladd.f64(double %i.mo, double %i.mp, double %i.mr)
  store double %i.ms, ptr %i.mq, align 8, !tbaa !155
  br label %._crit_edge45.i354

._crit_edge45.i354:                               ; preds = %._crit_edge45.i354.unr-lcssa, %.epil.preheader791
  %.lcssa726 = phi ptr [ %i.mf, %._crit_edge45.i354.unr-lcssa ], [ %i.mn, %.epil.preheader791 ]
  %i.mt = add nuw nsw i64 %.12948.i349, 1         ; 2 uses
  %exitcond55.not.i355 = icmp eq i64 %i.mt, %3
  br i1 %exitcond55.not.i355, label %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit356, label %.preheader.i348, !llvm.loop !1259

_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit356: ; preds = %._crit_edge45.i354, %._crit_edge.i345, %._crit_edge434, %.preheader37.i337, %.preheader35.i347
  br i1 %i.ba, label %.lr.ph.i.i358.preheader, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363

.lr.ph.i.i358.preheader:                          ; preds = %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit356
  br i1 %i.hh, label %.lr.ph.i.i358.epil.preheader, label %.lr.ph.i.i358

.lr.ph.i.i358:                                    ; preds = %.lr.ph.i.i358.preheader, %.lr.ph.i.i358
  %.012.i.i359 = phi double [ %i.nf, %.lr.ph.i.i358 ], [ 0.000000e+00, %.lr.ph.i.i358.preheader ]
  %.0710.i.i361 = phi ptr [ %i.nd, %.lr.ph.i.i358 ], [ %i.c, %.lr.ph.i.i358.preheader ] ; 5 uses
  %niter815 = phi i64 [ %niter815.next.3, %.lr.ph.i.i358 ], [ 0, %.lr.ph.i.i358.preheader ]
  %i.mu = getelementptr i8, ptr %.0710.i.i361, i64 8
  %i.mv = load double, ptr %.0710.i.i361, align 8, !tbaa !155 ; 2 uses
  %i.mw = tail call double @llvm.fmuladd.f64(double %i.mv, double %i.mv, double %.012.i.i359)
  %i.mx = getelementptr i8, ptr %.0710.i.i361, i64 16
  %i.my = load double, ptr %i.mu, align 8, !tbaa !155 ; 2 uses
  %i.mz = tail call double @llvm.fmuladd.f64(double %i.my, double %i.my, double %i.mw)
  %i.na = getelementptr i8, ptr %.0710.i.i361, i64 24
  %i.nb = load double, ptr %i.mx, align 8, !tbaa !155 ; 2 uses
  %i.nc = tail call double @llvm.fmuladd.f64(double %i.nb, double %i.nb, double %i.mz)
  %i.nd = getelementptr i8, ptr %.0710.i.i361, i64 32 ; 2 uses
  %i.ne = load double, ptr %i.na, align 8, !tbaa !155 ; 2 uses
  %i.nf = tail call double @llvm.fmuladd.f64(double %i.ne, double %i.ne, double %i.nc) ; 3 uses
  %niter815.next.3 = add i64 %niter815, 4         ; 2 uses
  %niter815.ncmp.3 = icmp eq i64 %niter815.next.3, %unroll_iter814
  br i1 %niter815.ncmp.3, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363.loopexit.unr-lcssa, label %.lr.ph.i.i358, !llvm.loop !4

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i358
  br i1 %lcmp.mod811.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363, label %.lr.ph.i.i358.epil.preheader

.lr.ph.i.i358.epil.preheader:                     ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363.loopexit.unr-lcssa, %.lr.ph.i.i358.preheader
  %.012.i.i359.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i358.preheader ], [ %i.nf, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363.loopexit.unr-lcssa ]
  %.0710.i.i361.epil.init = phi ptr [ %i.c, %.lr.ph.i.i358.preheader ], [ %i.nd, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod813)
  br label %.lr.ph.i.i358.epil

.lr.ph.i.i358.epil:                               ; preds = %.lr.ph.i.i358.epil, %.lr.ph.i.i358.epil.preheader
  %.012.i.i359.epil = phi double [ %i.ni, %.lr.ph.i.i358.epil ], [ %.012.i.i359.epil.init, %.lr.ph.i.i358.epil.preheader ]
  %.0710.i.i361.epil = phi ptr [ %i.ng, %.lr.ph.i.i358.epil ], [ %.0710.i.i361.epil.init, %.lr.ph.i.i358.epil.preheader ] ; 2 uses
  %epil.iter810 = phi i64 [ %epil.iter810.next, %.lr.ph.i.i358.epil ], [ 0, %.lr.ph.i.i358.epil.preheader ]
  %i.ng = getelementptr i8, ptr %.0710.i.i361.epil, i64 8
  %i.nh = load double, ptr %.0710.i.i361.epil, align 8, !tbaa !155 ; 2 uses
  %i.ni = tail call double @llvm.fmuladd.f64(double %i.nh, double %i.nh, double %.012.i.i359.epil) ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6casadi30casadi_dense_lsqr_single_solveIdEEiPKT_PS1_xxxS4_:bb.a

.lr.ph438.preheader721:                           ; preds = %.lr.ph438.preheader.a, %middle.block640
  %.6258437.ph = phi i64 [ 0, %.lr.ph438.preheader.a ], [ %n.vec633, %middle.block640 ]
  br label %.lr.ph438.a

.lr.ph438.a:                                      ; preds = %.lr.ph438.preheader721, %.lr.ph438.a
  %.6258437 = phi i64 [ %i.ps, %.lr.ph438.a ], [ %.6258437.ph, %.lr.ph438.preheader721 ] ; 3 uses
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.6258437
  %i.pp = load double, ptr %i.po, align 8, !tbaa !155
  %i.pq = fdiv double %i.pp, %.sink.i
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.6258437
  store double %i.pq, ptr %i.pr, align 8, !tbaa !155
  %i.ps = add nuw nsw i64 %.6258437, 1            ; 2 uses
  %exitcond465.not = icmp eq i64 %i.ps, %4
  br i1 %exitcond465.not, label %.lr.ph440.preheader.a, label %.lr.ph438.a, !llvm.loop !1277

.lr.ph440.preheader.a:                            ; preds = %.lr.ph438.a, %middle.block640
  %brmerge = select i1 %min.iters.check615, i1 true, i1 %found.conflict613
  br i1 %brmerge, label %.lr.ph440.preheader720, label %vector.ph616

vector.ph616:                                     ; preds = %.lr.ph440.preheader.a
  %broadcast.splatinsert618 = insertelement <2 x double> poison, double %i.ph, i64 0
  %broadcast.splat619 = shufflevector <2 x double> %broadcast.splatinsert618, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body620

vector.body620:                                   ; preds = %vector.body620, %vector.ph616
  %index621 = phi i64 [ 0, %vector.ph616 ], [ %index.next626, %vector.body620 ] ; 3 uses
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index621 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  %wide.load622 = load <2 x double>, ptr %i.pt, align 8, !tbaa !155, !alias.scope !1293
  %wide.load623 = load <2 x double>, ptr %i.pu, align 8, !tbaa !155, !alias.scope !1293
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %index621 ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16 ; 2 uses
  %wide.load624 = load <2 x double>, ptr %i.pv, align 8, !tbaa !155, !alias.scope !1294, !noalias !1293
  %wide.load625 = load <2 x double>, ptr %i.pw, align 8, !tbaa !155, !alias.scope !1294, !noalias !1293
  %i.px = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat619, <2 x double> %wide.load622, <2 x double> %wide.load624)
  %i.py = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat619, <2 x double> %wide.load623, <2 x double> %wide.load625)
  store <2 x double> %i.px, ptr %i.pv, align 8, !tbaa !155, !alias.scope !1294, !noalias !1293
  store <2 x double> %i.py, ptr %i.pw, align 8, !tbaa !155, !alias.scope !1294, !noalias !1293
  %index.next626 = add nuw i64 %index621, 4       ; 2 uses
  %i.pz = icmp eq i64 %index.next626, %n.vec617
  br i1 %i.pz, label %middle.block627, label %vector.body620, !llvm.loop !1281

middle.block627:                                  ; preds = %vector.body620
  br i1 %cmp.n628, label %.lr.ph442.preheader, label %.lr.ph440.preheader720

.lr.ph440.preheader720:                           ; preds = %.lr.ph440.preheader.a, %middle.block627
  %.7259439.ph = phi i64 [ %n.vec617, %middle.block627 ], [ 0, %.lr.ph440.preheader.a ] ; 5 uses
  %.neg = or disjoint i64 %.7259439.ph, 1
  br i1 %lcmp.mod817.not, label %.lr.ph440.prol.loopexit.a, label %.lr.ph440.prol.a

.lr.ph440.prol.a:                                 ; preds = %.lr.ph440.preheader720
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.7259439.ph
  %i.qb = load double, ptr %i.qa, align 8, !tbaa !155
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %.7259439.ph ; 2 uses
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !155
  %i.qe = tail call double @llvm.fmuladd.f64(double %i.ph, double %i.qb, double %i.qd)
  store double %i.qe, ptr %i.qc, align 8, !tbaa !155
  %i.qf = or disjoint i64 %.7259439.ph, 1
  br label %.lr.ph440.prol.loopexit.a

.lr.ph440.prol.loopexit.a:                        ; preds = %.lr.ph440.prol.a, %.lr.ph440.preheader720
  %.7259439.unr = phi i64 [ %.7259439.ph, %.lr.ph440.preheader720 ], [ %i.qf, %.lr.ph440.prol.a ]
  %i.qg = icmp eq i64 %4, %.neg
  br i1 %i.qg, label %.lr.ph442.preheader, label %.lr.ph440.a

.lr.ph440.a:                                      ; preds = %.lr.ph440.prol.loopexit.a, %.lr.ph440.a
  %.7259439 = phi i64 [ %i.qs, %.lr.ph440.a ], [ %.7259439.unr, %.lr.ph440.prol.loopexit.a ] ; 4 uses
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.7259439
  %i.qi = load double, ptr %i.qh, align 8, !tbaa !155
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %.7259439 ; 2 uses
  %i.qk = load double, ptr %i.qj, align 8, !tbaa !155
  %i.ql = tail call double @llvm.fmuladd.f64(double %i.ph, double %i.qi, double %i.qk)
  store double %i.ql, ptr %i.qj, align 8, !tbaa !155
  %i.qm = add nuw nsw i64 %.7259439, 1            ; 2 uses
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.qm
  %i.qo = load double, ptr %i.qn, align 8, !tbaa !155
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %i.qm ; 2 uses
  %i.qq = load double, ptr %i.qp, align 8, !tbaa !155
  %i.qr = tail call double @llvm.fmuladd.f64(double %i.ph, double %i.qo, double %i.qq)
  store double %i.qr, ptr %i.qp, align 8, !tbaa !155
  %i.qs = add nuw nsw i64 %.7259439, 2            ; 2 uses
  %exitcond466.not.1 = icmp eq i64 %i.qs, %4
  br i1 %exitcond466.not.1, label %.lr.ph442.preheader, label %.lr.ph440.a, !llvm.loop !1282

.lr.ph442.preheader:                              ; preds = %.lr.ph440.prol.loopexit.a, %.lr.ph440.a, %middle.block627
  %brmerge872 = or i1 %min.iters.check595, %found.conflict
  br i1 %brmerge872, label %.lr.ph442.preheader719, label %vector.ph596

vector.ph596:                                     ; preds = %.lr.ph442.preheader
  %broadcast.splatinsert598 = insertelement <2 x double> poison, double %i.pj, i64 0
  %broadcast.splat599 = shufflevector <2 x double> %broadcast.splatinsert598, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body600

vector.body600:                                   ; preds = %vector.body600, %vector.ph596
  %index601 = phi i64 [ 0, %vector.ph596 ], [ %index.next606, %vector.body600 ] ; 3 uses
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index601 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 16
  %wide.load602 = load <2 x double>, ptr %i.qt, align 8, !tbaa !155, !alias.scope !1295
  %wide.load603 = load <2 x double>, ptr %i.qu, align 8, !tbaa !155, !alias.scope !1295
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index601 ; 3 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 16 ; 2 uses
  %wide.load604 = load <2 x double>, ptr %i.qv, align 8, !tbaa !155, !alias.scope !1296, !noalias !1295
  %wide.load605 = load <2 x double>, ptr %i.qw, align 8, !tbaa !155, !alias.scope !1296, !noalias !1295
  %i.qx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat599, <2 x double> %wide.load604, <2 x double> %wide.load602)
  %i.qy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat599, <2 x double> %wide.load605, <2 x double> %wide.load603)
  store <2 x double> %i.qx, ptr %i.qv, align 8, !tbaa !155, !alias.scope !1296, !noalias !1295
  store <2 x double> %i.qy, ptr %i.qw, align 8, !tbaa !155, !alias.scope !1296, !noalias !1295
  %index.next606 = add nuw i64 %index601, 4       ; 2 uses
  %i.qz = icmp eq i64 %index.next606, %n.vec597
  br i1 %i.qz, label %middle.block607, label %vector.body600, !llvm.loop !1286

middle.block607:                                  ; preds = %vector.body600
  br i1 %cmp.n608, label %.lr.ph.i.i365.preheader, label %.lr.ph442.preheader719

.lr.ph442.preheader719:                           ; preds = %.lr.ph442.preheader, %middle.block607
  %.8441.ph = phi i64 [ %n.vec597, %middle.block607 ], [ 0, %.lr.ph442.preheader ] ; 5 uses
  %.neg832 = or disjoint i64 %.8441.ph, 1
  br i1 %lcmp.mod820.not, label %.lr.ph442.prol.loopexit, label %.lr.ph442.prol

.lr.ph442.prol:                                   ; preds = %.lr.ph442.preheader719
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.8441.ph
  %i.rb = load double, ptr %i.ra, align 8, !tbaa !155
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.8441.ph ; 2 uses
  %i.rd = load double, ptr %i.rc, align 8, !tbaa !155
  %i.re = tail call double @llvm.fmuladd.f64(double %i.pj, double %i.rd, double %i.rb)
  store double %i.re, ptr %i.rc, align 8, !tbaa !155
  %i.rf = or disjoint i64 %.8441.ph, 1
  br label %.lr.ph442.prol.loopexit

.lr.ph442.prol.loopexit:                          ; preds = %.lr.ph442.prol, %.lr.ph442.preheader719
  %.8441.unr = phi i64 [ %.8441.ph, %.lr.ph442.preheader719 ], [ %i.rf, %.lr.ph442.prol ]
  %i.rg = icmp eq i64 %4, %.neg832
  br i1 %i.rg, label %.lr.ph.i.i365.preheader, label %.lr.ph442

.lr.ph442:                                        ; preds = %.lr.ph442.prol.loopexit, %.lr.ph442
  %.8441 = phi i64 [ %i.rs, %.lr.ph442 ], [ %.8441.unr, %.lr.ph442.prol.loopexit ] ; 4 uses
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.8441
  %i.ri = load double, ptr %i.rh, align 8, !tbaa !155
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.8441 ; 2 uses
  %i.rk = load double, ptr %i.rj, align 8, !tbaa !155
  %i.rl = tail call double @llvm.fmuladd.f64(double %i.pj, double %i.rk, double %i.ri)
  store double %i.rl, ptr %i.rj, align 8, !tbaa !155
  %i.rm = add nuw nsw i64 %.8441, 1               ; 2 uses
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.rm
  %i.ro = load double, ptr %i.rn, align 8, !tbaa !155
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.rm ; 2 uses
  %i.rq = load double, ptr %i.rp, align 8, !tbaa !155
  %i.rr = tail call double @llvm.fmuladd.f64(double %i.pj, double %i.rq, double %i.ro)
  store double %i.rr, ptr %i.rp, align 8, !tbaa !155
  %i.rs = add nuw nsw i64 %.8441, 2               ; 2 uses
  %exitcond467.not.1 = icmp eq i64 %i.rs, %4
  br i1 %exitcond467.not.1, label %.lr.ph.i.i365.preheader, label %.lr.ph442, !llvm.loop !1287

.lr.ph.i.i365.preheader:                          ; preds = %.lr.ph442.prol.loopexit, %.lr.ph442, %middle.block607
  br i1 %i.hm, label %.lr.ph.i.i365.epil.preheader, label %.lr.ph.i.i365

.lr.ph.i.i365:                                    ; preds = %.lr.ph.i.i365.preheader, %.lr.ph.i.i365
  %.012.i.i366 = phi double [ %i.se, %.lr.ph.i.i365 ], [ 0.000000e+00, %.lr.ph.i.i365.preheader ]
  %.0710.i.i368 = phi ptr [ %i.sc, %.lr.ph.i.i365 ], [ %i.bf, %.lr.ph.i.i365.preheader ] ; 5 uses
  %niter828 = phi i64 [ %niter828.next.3, %.lr.ph.i.i365 ], [ 0, %.lr.ph.i.i365.preheader ]
  %i.rt = getelementptr i8, ptr %.0710.i.i368, i64 8
  %i.ru = load double, ptr %.0710.i.i368, align 8, !tbaa !155 ; 2 uses
  %i.rv = tail call double @llvm.fmuladd.f64(double %i.ru, double %i.ru, double %.012.i.i366)
  %i.rw = getelementptr i8, ptr %.0710.i.i368, i64 16
  %i.rx = load double, ptr %i.rt, align 8, !tbaa !155 ; 2 uses
  %i.ry = tail call double @llvm.fmuladd.f64(double %i.rx, double %i.rx, double %i.rv)
  %i.rz = getelementptr i8, ptr %.0710.i.i368, i64 24
  %i.sa = load double, ptr %i.rw, align 8, !tbaa !155 ; 2 uses
  %i.sb = tail call double @llvm.fmuladd.f64(double %i.sa, double %i.sa, double %i.ry)
  %i.sc = getelementptr i8, ptr %.0710.i.i368, i64 32 ; 2 uses
  %i.sd = load double, ptr %i.rz, align 8, !tbaa !155 ; 2 uses
  %i.se = tail call double @llvm.fmuladd.f64(double %i.sd, double %i.sd, double %i.sb) ; 3 uses
  %niter828.next.3 = add i64 %niter828, 4         ; 2 uses
  %niter828.ncmp.3 = icmp eq i64 %niter828.next.3, %unroll_iter827
  br i1 %niter828.ncmp.3, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370.loopexit.unr-lcssa, label %.lr.ph.i.i365, !llvm.loop !4

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i365
  br i1 %lcmp.mod824.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370, label %.lr.ph.i.i365.epil.preheader

.lr.ph.i.i365.epil.preheader:                     ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370.loopexit.unr-lcssa, %.lr.ph.i.i365.preheader
  %.012.i.i366.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i365.preheader ], [ %i.se, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370.loopexit.unr-lcssa ]
  %.0710.i.i368.epil.init = phi ptr [ %i.bf, %.lr.ph.i.i365.preheader ], [ %i.sc, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod826)
  br label %.lr.ph.i.i365.epil

.lr.ph.i.i365.epil:                               ; preds = %.lr.ph.i.i365.epil, %.lr.ph.i.i365.epil.preheader
  %.012.i.i366.epil = phi double [ %i.sh, %.lr.ph.i.i365.epil ], [ %.012.i.i366.epil.init, %.lr.ph.i.i365.epil.preheader ]
  %.0710.i.i368.epil = phi ptr [ %i.sf, %.lr.ph.i.i365.epil ], [ %.0710.i.i368.epil.init, %.lr.ph.i.i365.epil.preheader ] ; 2 uses
  %epil.iter823 = phi i64 [ %epil.iter823.next, %.lr.ph.i.i365.epil ], [ 0, %.lr.ph.i.i365.epil.preheader ]
  %i.sf = getelementptr i8, ptr %.0710.i.i368.epil, i64 8
  %i.sg = load double, ptr %.0710.i.i368.epil, align 8, !tbaa !155 ; 2 uses
  %i.sh = tail call double @llvm.fmuladd.f64(double %i.sg, double %i.sg, double %.012.i.i366.epil) ; 2 uses
  %epil.iter823.next = add i64 %epil.iter823, 1   ; 2 uses
  %epil.iter823.cmp.not = icmp eq i64 %epil.iter823.next, %xtraiter822
  br i1 %epil.iter823.cmp.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370, label %.lr.ph.i.i365.epil, !llvm.loop !1288

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370:    ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370.loopexit.unr-lcssa, %.lr.ph.i.i365.epil, %_ZN6casadi27casadi_dense_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit
  %.0.lcssa.i.i364 = phi double [ 0.000000e+00, %_ZN6casadi27casadi_dense_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit ], [ %i.se, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370.loopexit.unr-lcssa ], [ %i.sh, %.lr.ph.i.i365.epil ]
  %i.si = tail call noundef double @sqrt(double noundef %.0.lcssa.i.i364) #29 ; 2 uses
  %6 = tail call double @llvm.fmuladd.f64(double %i.si, double %i.si, double %.0248) ; 2 uses
  %i.sj = fneg double %.0244
  %i.sk = fmul double %.sink.i, %i.sj             ; 3 uses
  %i.sl = fneg double %.sink.i
  %i.sm = fmul double %.0243, %i.sl
  %i.sn = fmul double %i.pb, %i.pb
  %7 = shufflevector <2 x double> %i.hn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %8 = insertelement <2 x double> %7, double %i.sn, i64 1
  %9 = tail call double @llvm.fmuladd.f64(double %i.sm, double %.0245, double %i.pe) ; 2 uses
  %10 = fdiv double %9, %i.sk
  %11 = insertelement <2 x double> poison, double %10, i64 0
  %i.so = insertelement <2 x double> %11, double %i.sk, i64 1 ; 2 uses
  %i.sp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.so, <2 x double> %i.so, <2 x double> %8) ; 2 uses
  %i.sq = extractelement <2 x double> %i.sp, i64 0
  %i.sr = tail call double @sqrt(double noundef %i.sq) #29 ; 2 uses
  %12 = extractelement <2 x double> %i.sp, i64 1
  %13 = tail call double @sqrt(double noundef %12) #29 ; 2 uses
  %14 = fdiv double %i.sk, %13
  %i.ss = insertelement <2 x double> poison, double %9, i64 0
  %15 = insertelement <2 x double> %i.ss, double %i.pb, i64 1
  %16 = insertelement <2 x double> poison, double %13, i64 0
  %i.st = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  %i.su = fdiv <2 x double> %15, %i.st            ; 3 uses
  %i.sv = extractelement <2 x double> %i.su, i64 0
  %sqrt398 = tail call double @llvm.sqrt.f64(double %6)
  %i.sw = fmul double %i.pf, %i.pf
  %i.sx = shufflevector <2 x double> %i.su, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.sy = insertelement <2 x double> %i.sx, double %i.oa, i64 0 ; 2 uses
  %i.sz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sy, <2 x double> %i.sy, <2 x double> %i.hn) ; 2 uses
  %i.ta = extractelement <2 x double> %i.sz, i64 0
  %i.tb = fadd double %i.ta, %i.sw
  %i.tc = tail call double @sqrt(double noundef %i.tb) #29 ; 2 uses
  %i.td = tail call double @llvm.fabs.f64(double %i.pg)
  %i.te = fmul double %.1250, %sqrt398
  %i.tf = fdiv double 1.000000e+00, %i.te         ; 2 uses
  %i.tg = fmul double %.1250, %i.sr
  %i.th = fdiv double %i.tg, %i.gv
  %i.ti = fmul double %.1250, 1.000000e-15
  %i.tj = fmul double %i.ti, %i.sr
  %i.tk = fdiv double %i.tj, %i.gv
  %i.tl = fadd double %i.tk, 1.000000e-15
  %i.tm = icmp ne i64 %.0237, 9999
  %i.tn = fadd double %i.tf, 1.000000e+00
  %i.to = fcmp ugt double %i.tn, 1.000000e+00
  %i.tp = fmul double %.2242, %i.td
  %i.tq = fdiv double %i.tc, %i.gv                ; 2 uses
  %i.tr = fmul double %.1250, %i.tc
  %i.ts = fadd double %i.th, 1.000000e+00
  %i.tt = insertelement <2 x double> poison, double %i.tq, i64 0
  %i.tu = insertelement <2 x double> %i.tt, double %i.tp, i64 1
  %i.tv = insertelement <2 x double> poison, double %i.ts, i64 0
  %i.tw = insertelement <2 x double> %i.tv, double %i.tr, i64 1
  %i.tx = fdiv <2 x double> %i.tu, %i.tw          ; 2 uses
  %i.ty = fadd <2 x double> %i.tx, splat (double 1.000000e+00)
  %i.tz = fcmp ugt <2 x double> %i.ty, splat (double 1.000000e+00) ; 2 uses
  %i.ua = fcmp ugt double %i.tf, 1.000000e-08
  %i.ub = extractelement <2 x double> %i.tx, i64 1
  %i.uc = fcmp ugt double %i.ub, 1.000000e-15
  %i.ud = fcmp ugt double %i.tq, %i.tl
  %.not270391392393394395 = and i1 %i.tm, %i.to
  %i.ue = select i1 %i.ud, i1 %i.uc, i1 false
  %i.uf = select i1 %i.ue, i1 %i.ua, i1 false
  %i.ug = extractelement <2 x i1> %i.tz, i64 0
  %i.uh = select i1 %i.uf, i1 %i.ug, i1 false
  %i.ui = extractelement <2 x i1> %i.tz, i64 1
  %i.uj = select i1 %i.uh, i1 %i.ui, i1 false
  %.not270 = select i1 %i.uj, i1 %.not270391392393394395, i1 false
  %i.uk = extractelement <2 x double> %i.su, i64 1
  br i1 %.not270, label %bb.d, label %split, !llvm.loop !1289

split:                                            ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370
  %.not.i371 = icmp eq ptr %1, null
  br i1 %.not.i371, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit381, label %bb.m

bb.m:                                             ; preds = %split
  br i1 %.not.i, label %.preheader16.i373, label %.preheader.i379

.preheader16.i373:                                ; preds = %bb.m
  br i1 %i.bg, label %.lr.ph.i374.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit381

.lr.ph.i374.preheader:                            ; preds = %.preheader16.i373
  %min.iters.check702 = icmp ult i64 %3, 8
  %i.ul = sub i64 %i.bc, %i.a
  %diff.check700 = icmp ugt i64 %i.ul, -32
  %or.cond717 = select i1 %min.iters.check702, i1 true, i1 %diff.check700
  br i1 %or.cond717, label %.lr.ph.i374.preheader718, label %vector.ph703

vector.ph703:                                     ; preds = %.lr.ph.i374.preheader
  %i.um = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  %n.vec704 = and i64 %3, 9223372036854775804     ; 4 uses
  %i.un = shl i64 %n.vec704, 3                    ; 2 uses
  %i.uo = getelementptr i8, ptr %1, i64 %i.un
  %i.up = getelementptr i8, ptr %i.um, i64 %i.un
  %i.uq = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  br label %vector.body705

vector.body705:                                   ; preds = %vector.body705, %vector.ph703
  %index706 = phi i64 [ 0, %vector.ph703 ], [ %index.next711, %vector.body705 ] ; 2 uses
  %i.ur = shl i64 %index706, 3                    ; 2 uses
  %next.gep707 = getelementptr i8, ptr %1, i64 %i.ur ; 2 uses
  %next.gep708 = getelementptr i8, ptr %i.uq, i64 %i.ur ; 2 uses
  %i.us = getelementptr i8, ptr %next.gep708, i64 16
  %wide.load709 = load <2 x double>, ptr %next.gep708, align 8, !tbaa !155
  %wide.load710 = load <2 x double>, ptr %i.us, align 8, !tbaa !155
  %i.ut = getelementptr i8, ptr %next.gep707, i64 16
  store <2 x double> %wide.load709, ptr %next.gep707, align 8, !tbaa !155
  store <2 x double> %wide.load710, ptr %i.ut, align 8, !tbaa !155
  %index.next711 = add nuw i64 %index706, 4       ; 2 uses
  %i.uu = icmp eq i64 %index.next711, %n.vec704
  br i1 %i.uu, label %middle.block712, label %vector.body705, !llvm.loop !1290

middle.block712:                                  ; preds = %vector.body705
  %cmp.n713 = icmp eq i64 %3, %n.vec704
  br i1 %cmp.n713, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit381, label %.lr.ph.i374.preheader718

.lr.ph.i374.preheader718:                         ; preds = %.lr.ph.i374.preheader, %middle.block712
  %.020.i375.ph = phi i64 [ 0, %.lr.ph.i374.preheader ], [ %n.vec704, %middle.block712 ] ; 4 uses
  %.01019.i376.ph = phi ptr [ %1, %.lr.ph.i374.preheader ], [ %i.uo, %middle.block712 ] ; 2 uses
  %.01218.i377.ph = phi ptr [ %i.bb, %.lr.ph.i374.preheader ], [ %i.up, %middle.block712 ] ; 2 uses
  %i.uv = sub nsw i64 %3, %.020.i375.ph
  %xtraiter829 = and i64 %i.uv, 7                 ; 2 uses
  %lcmp.mod830.not = icmp eq i64 %xtraiter829, 0
  br i1 %lcmp.mod830.not, label %.lr.ph.i374.prol.loopexit, label %.lr.ph.i374.prol

.lr.ph.i374.prol:                                 ; preds = %.lr.ph.i374.preheader718, %.lr.ph.i374.prol
  %.020.i375.prol = phi i64 [ %i.uz, %.lr.ph.i374.prol ], [ %.020.i375.ph, %.lr.ph.i374.preheader718 ]
  %.01019.i376.prol = phi ptr [ %i.uy, %.lr.ph.i374.prol ], [ %.01019.i376.ph, %.lr.ph.i374.preheader718 ] ; 2 uses
  %.01218.i377.prol = phi ptr [ %i.uw, %.lr.ph.i374.prol ], [ %.01218.i377.ph, %.lr.ph.i374.preheader718 ] ; 2 uses
  %prol.iter831 = phi i64 [ %prol.iter831.next, %.lr.ph.i374.prol ], [ 0, %.lr.ph.i374.preheader718 ]
  %i.uw = getelementptr inbounds nuw i8, ptr %.01218.i377.prol, i64 8 ; 2 uses
  %i.ux = load double, ptr %.01218.i377.prol, align 8, !tbaa !155
  %i.uy = getelementptr inbounds nuw i8, ptr %.01019.i376.prol, i64 8 ; 2 uses
  store double %i.ux, ptr %.01019.i376.prol, align 8, !tbaa !155
  %i.uz = add nuw nsw i64 %.020.i375.prol, 1      ; 2 uses
  %prol.iter831.next = add i64 %prol.iter831, 1   ; 2 uses
  %prol.iter831.cmp.not = icmp eq i64 %prol.iter831.next, %xtraiter829
  br i1 %prol.iter831.cmp.not, label %.lr.ph.i374.prol.loopexit, label %.lr.ph.i374.prol, !llvm.loop !1291

.lr.ph.i374.prol.loopexit:                        ; preds = %.lr.ph.i374.prol, %.lr.ph.i374.preheader718
  %.020.i375.unr = phi i64 [ %.020.i375.ph, %.lr.ph.i374.preheader718 ], [ %i.uz, %.lr.ph.i374.prol ]
  %.01019.i376.unr = phi ptr [ %.01019.i376.ph, %.lr.ph.i374.preheader718 ], [ %i.uy, %.lr.ph.i374.prol ]
  %.01218.i377.unr = phi ptr [ %.01218.i377.ph, %.lr.ph.i374.preheader718 ], [ %i.uw, %.lr.ph.i374.prol ]
  %i.va = sub nsw i64 %.020.i375.ph, %3
  %i.vb = icmp ugt i64 %i.va, -8
  br i1 %i.vb, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit381, label %.lr.ph.i374

.preheader.i379:                                  ; preds = %bb.m
  br i1 %i.bg, label %.lr.ph23.preheader.i380, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit381

.lr.ph23.preheader.i380:                          ; preds = %.preheader.i379
  %i.vc = shl nuw i64 %3, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %1, i8 0, i64 %i.vc, i1 false), !tbaa !155
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit381

.lr.ph.i374:                                      ; preds = %.lr.ph.i374.prol.loopexit, %.lr.ph.i374
  %.020.i375 = phi i64 [ %i.wb, %.lr.ph.i374 ], [ %.020.i375.unr, %.lr.ph.i374.prol.loopexit ]
  %.01019.i376 = phi ptr [ %i.wa, %.lr.ph.i374 ], [ %.01019.i376.unr, %.lr.ph.i374.prol.loopexit ] ; 9 uses
  %.01218.i377 = phi ptr [ %i.vy, %.lr.ph.i374 ], [ %.01218.i377.unr, %.lr.ph.i374.prol.loopexit ] ; 9 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %.01218.i377, i64 8
  %i.ve = load double, ptr %.01218.i377, align 8, !tbaa !155
  %i.vf = getelementptr inbounds nuw i8, ptr %.01019.i376, i64 8
  store double %i.ve, ptr %.01019.i376, align 8, !tbaa !155
  %i.vg = getelementptr inbounds nuw i8, ptr %.01218.i377, i64 16
  %i.vh = load double, ptr %i.vd, align 8, !tbaa !155
  %i.vi = getelementptr inbounds nuw i8, ptr %.01019.i376, i64 16
  store double %i.vh, ptr %i.vf, align 8, !tbaa !155
  %i.vj = getelementptr inbounds nuw i8, ptr %.01218.i377, i64 24
  %i.vk = load double, ptr %i.vg, align 8, !tbaa !155
  %i.vl = getelementptr inbounds nuw i8, ptr %.01019.i376, i64 24
  store double %i.vk, ptr %i.vi, align 8, !tbaa !155
  %i.vm = getelementptr inbounds nuw i8, ptr %.01218.i377, i64 32
  %i.vn = load double, ptr %i.vj, align 8, !tbaa !155
  %i.vo = getelementptr inbounds nuw i8, ptr %.01019.i376, i64 32
  store double %i.vn, ptr %i.vl, align 8, !tbaa !155
  %i.vp = getelementptr inbounds nuw i8, ptr %.01218.i377, i64 40
  %i.vq = load double, ptr %i.vm, align 8, !tbaa !155
  %i.vr = getelementptr inbounds nuw i8, ptr %.01019.i376, i64 40
  store double %i.vq, ptr %i.vo, align 8, !tbaa !155
  %i.vs = getelementptr inbounds nuw i8, ptr %.01218.i377, i64 48
  %i.vt = load double, ptr %i.vp, align 8, !tbaa !155
  %i.vu = getelementptr inbounds nuw i8, ptr %.01019.i376, i64 48
  store double %i.vt, ptr %i.vr, align 8, !tbaa !155
  %i.vv = getelementptr inbounds nuw i8, ptr %.01218.i377, i64 56
  %i.vw = load double, ptr %i.vs, align 8, !tbaa !155
  %i.vx = getelementptr inbounds nuw i8, ptr %.01019.i376, i64 56
  store double %i.vw, ptr %i.vu, align 8, !tbaa !155
  %i.vy = getelementptr inbounds nuw i8, ptr %.01218.i377, i64 64
  %i.vz = load double, ptr %i.vv, align 8, !tbaa !155
  %i.wa = getelementptr inbounds nuw i8, ptr %.01019.i376, i64 64
  store double %i.vz, ptr %i.vx, align 8, !tbaa !155
  %i.wb = add nuw nsw i64 %.020.i375, 8           ; 2 uses
  %exitcond.not.i378.7 = icmp eq i64 %i.wb, %3
  br i1 %exitcond.not.i378.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit381, label %.lr.ph.i374, !llvm.loop !1292

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit381:    ; preds = %.lr.ph.i374.prol.loopexit, %.lr.ph.i374, %middle.block712, %split, %.preheader16.i373, %.preheader.i379, %.lr.ph23.preheader.i380
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #24

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN6casadi10casadi_cvxIdEEixPT_S1_S1_xxS2_Px(i64 noundef %0, ptr noundef %1, double noundef %2, double noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca [100 x double], align 16          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  switch i64 %0, label %bb.c [
    i64 0, label %.loopexit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load double, ptr %1, align 8, !tbaa !155 ; 2 uses
  %.not.i = icmp eq i64 %4, 0
  %i.c = tail call nsz double @llvm.fabs.f64(double %i.b)
  %i.d = select nsz i1 %.not.i, double %i.b, double %i.c
  %i.e = tail call nsz noundef double @llvm.maxnum.f64(double %2, double %i.d)
  store double %i.e, ptr %1, align 8, !tbaa !155
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  call void @_ZN6casadi14casadi_cvx_triIdEEvPT_xS2_S2_(ptr noundef %1, i64 noundef %0, ptr noundef nonnull %i.a, ptr noundef %6)
  %i.f = icmp sgt i64 %0, 0                       ; 2 uses
  br i1 %i.f, label %.preheader133.preheader, label %._crit_edge136.split.thread

.preheader133.preheader:                          ; preds = %bb.c
  %i.g = add nsw i64 %0, -1                       ; 3 uses
  %xtraiter = and i64 %0, 1
  %i.h = icmp eq i64 %i.g, 0
  %unroll_iter = and i64 %0, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_1
begin_hunk_2_@_ZN6casadi27casadi_cvx_house_apply_symmIdEEvxxPT_S2_S2_S1_:bb.a

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %3, i64 %i.bx ; 3 uses
  %next.gep112 = getelementptr i8, ptr %4, i64 %i.bx ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep112, i64 16
  %wide.load = load <2 x double>, ptr %next.gep112, align 8, !tbaa !155, !alias.scope !1368
  %wide.load113 = load <2 x double>, ptr %i.by, align 8, !tbaa !155, !alias.scope !1368
  %i.bz = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load114 = load <2 x double>, ptr %next.gep, align 8, !tbaa !155, !alias.scope !1369, !noalias !1368
  %wide.load115 = load <2 x double>, ptr %i.bz, align 8, !tbaa !155, !alias.scope !1369, !noalias !1368
  %i.ca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load114)
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load113, <2 x double> %wide.load115)
  store <2 x double> %i.ca, ptr %next.gep, align 8, !tbaa !155, !alias.scope !1369, !noalias !1368
  store <2 x double> %i.cb, ptr %i.bz, align 8, !tbaa !155, !alias.scope !1369, !noalias !1368
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !1357

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %.lr.ph99.preheader, label %.lr.ph.i78.preheader161

.lr.ph.i78.preheader161:                          ; preds = %vector.memcheck, %.lr.ph.i78.preheader, %middle.block
  %.014.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i78.preheader ], [ %n.vec, %middle.block ]
  %.0813.i.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph.i78.preheader ], [ %i.bv, %middle.block ]
  %.0912.i.ph = phi ptr [ %4, %vector.memcheck ], [ %4, %.lr.ph.i78.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %.lr.ph.i78.preheader161, %.lr.ph.i78
  %.014.i = phi i64 [ %i.ci, %.lr.ph.i78 ], [ %.014.i.ph, %.lr.ph.i78.preheader161 ]
  %.0813.i = phi ptr [ %i.cf, %.lr.ph.i78 ], [ %.0813.i.ph, %.lr.ph.i78.preheader161 ] ; 3 uses
  %.0912.i = phi ptr [ %i.cd, %.lr.ph.i78 ], [ %.0912.i.ph, %.lr.ph.i78.preheader161 ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0912.i, i64 8
  %i.ce = load double, ptr %.0912.i, align 8, !tbaa !155
  %i.cf = getelementptr inbounds nuw i8, ptr %.0813.i, i64 8
  %i.cg = load double, ptr %.0813.i, align 8, !tbaa !155
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.ce, double %i.cg)
  store double %i.ch, ptr %.0813.i, align 8, !tbaa !155
  %i.ci = add nuw nsw i64 %.014.i, 1              ; 2 uses
  %exitcond.not.i79 = icmp eq i64 %i.ci, %i.f
  br i1 %exitcond.not.i79, label %.lr.ph99.preheader, label %.lr.ph.i78, !llvm.loop !1358

.lr.ph99.preheader:                               ; preds = %.lr.ph.i78, %middle.block, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit
  %i.cj = shl i64 %0, 3
  %i.ck = add i64 %i.cj, -8
  %i.cl = shl i64 %1, 3
  %i.cm = sub i64 %i.ck, %i.cl                    ; 3 uses
  %scevgep121 = getelementptr i8, ptr %4, i64 %i.cm ; 2 uses
  %scevgep122 = getelementptr i8, ptr %3, i64 %i.cm ; 2 uses
  %i.cn = add i64 %0, -2
  br label %.lr.ph99

.lr.ph99:                                         ; preds = %.lr.ph99.preheader, %._crit_edge95
  %.298 = phi ptr [ %i.el, %._crit_edge95 ], [ %i.i, %.lr.ph99.preheader ] ; 9 uses
  %.17497 = phi i64 [ %i.db, %._crit_edge95 ], [ 0, %.lr.ph99.preheader ] ; 7 uses
  %i.co = add i64 %1, %.17497
  %i.cp = sub i64 %i.cn, %i.co                    ; 3 uses
  %i.cq = shl i64 %.17497, 3
  %i.cr = sub i64 %i.cm, %i.cq
  %i.cs = shl i64 %.17497, 3
  %i.ct = add i64 %i.cs, 8                        ; 2 uses
  %scevgep120 = getelementptr i8, ptr %4, i64 %i.ct
  %scevgep123 = getelementptr i8, ptr %3, i64 %i.ct
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.17497 ; 3 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !155
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.17497 ; 3 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !155
  %i.cy = load double, ptr %.298, align 8, !tbaa !155
  %i.cz = fmul double %i.cv, -2.000000e+00
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cz, double %i.cx, double %i.cy)
  store double %i.da, ptr %.298, align 8, !tbaa !155
  %i.db = add nuw nsw i64 %.17497, 1              ; 7 uses
  %i.dc = icmp slt i64 %i.db, %i.f
  br i1 %i.dc, label %.lr.ph94.preheader, label %._crit_edge95

.lr.ph94.preheader:                               ; preds = %.lr.ph99
  %min.iters.check139 = icmp ult i64 %i.cp, 6
  br i1 %min.iters.check139, label %.lr.ph94.preheader160, label %vector.memcheck118

vector.memcheck118:                               ; preds = %.lr.ph94.preheader
  %scevgep = getelementptr i8, ptr %.298, i64 8   ; 4 uses
  %scevgep119 = getelementptr i8, ptr %.298, i64 %i.cr ; 4 uses
  %bound0124 = icmp ult ptr %scevgep, %scevgep121
  %bound1125 = icmp ult ptr %scevgep120, %scevgep119
  %found.conflict126 = and i1 %bound0124, %bound1125
  %bound0127 = icmp ult ptr %scevgep, %scevgep121
  %bound1128 = icmp ult ptr %4, %scevgep119
  %found.conflict129 = and i1 %bound0127, %bound1128
  %conflict.rdx = or i1 %found.conflict126, %found.conflict129
  %bound0130 = icmp ult ptr %scevgep, %scevgep122
  %bound1131 = icmp ult ptr %3, %scevgep119
  %found.conflict132 = and i1 %bound0130, %bound1131
  %conflict.rdx133 = or i1 %conflict.rdx, %found.conflict132
  %bound0134 = icmp ult ptr %scevgep, %scevgep122
  %bound1135 = icmp ult ptr %scevgep123, %scevgep119
  %found.conflict136 = and i1 %bound0134, %bound1135
  %conflict.rdx137 = or i1 %conflict.rdx133, %found.conflict136
  br i1 %conflict.rdx137, label %.lr.ph94.preheader160, label %vector.ph140

vector.ph140:                                     ; preds = %vector.memcheck118
  %n.vec141 = and i64 %i.cp, -4                   ; 4 uses
  %i.dd = shl i64 %n.vec141, 3
  %i.de = getelementptr i8, ptr %.298, i64 %i.dd  ; 2 uses
  %i.df = add i64 %i.db, %n.vec141
  %i.dg = load double, ptr %i.cu, align 8, !tbaa !155, !alias.scope !1370
  %broadcast.splatinsert151 = insertelement <2 x double> poison, double %i.dg, i64 0
  %broadcast.splat152 = shufflevector <2 x double> %broadcast.splatinsert151, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dh = load double, ptr %i.cw, align 8, !tbaa !155, !alias.scope !1371
  %broadcast.splatinsert149 = insertelement <2 x double> poison, double %i.dh, i64 0
  %broadcast.splat150 = shufflevector <2 x double> %broadcast.splatinsert149, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph140
  %index143 = phi i64 [ 0, %vector.ph140 ], [ %index.next155, %vector.body142 ] ; 3 uses
  %i.di = shl i64 %index143, 3
  %next.gep144 = getelementptr i8, ptr %.298, i64 %i.di ; 2 uses
  %i.dj = add nuw i64 %i.db, %index143            ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %next.gep144, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dj ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %wide.load145 = load <2 x double>, ptr %i.dl, align 8, !tbaa !155, !alias.scope !1372
  %wide.load146 = load <2 x double>, ptr %i.dm, align 8, !tbaa !155, !alias.scope !1372
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.dj ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %wide.load147 = load <2 x double>, ptr %i.dn, align 8, !tbaa !155, !alias.scope !1373
  %wide.load148 = load <2 x double>, ptr %i.do, align 8, !tbaa !155, !alias.scope !1373
  %i.dp = fmul <2 x double> %wide.load147, %broadcast.splat150
  %i.dq = fmul <2 x double> %wide.load148, %broadcast.splat150
  %i.dr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat152, <2 x double> %wide.load145, <2 x double> %i.dp)
  %i.ds = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat152, <2 x double> %wide.load146, <2 x double> %i.dq)
  %i.dt = getelementptr inbounds nuw i8, ptr %next.gep144, i64 24 ; 2 uses
  %wide.load153 = load <2 x double>, ptr %i.dk, align 8, !tbaa !155, !alias.scope !1374, !noalias !1375
  %wide.load154 = load <2 x double>, ptr %i.dt, align 8, !tbaa !155, !alias.scope !1374, !noalias !1375
  %i.du = fsub <2 x double> %wide.load153, %i.dr
  %i.dv = fsub <2 x double> %wide.load154, %i.ds
  store <2 x double> %i.du, ptr %i.dk, align 8, !tbaa !155, !alias.scope !1374, !noalias !1375
  store <2 x double> %i.dv, ptr %i.dt, align 8, !tbaa !155, !alias.scope !1374, !noalias !1375
  %index.next155 = add nuw i64 %index143, 4       ; 2 uses
  %i.dw = icmp eq i64 %index.next155, %n.vec141
  br i1 %i.dw, label %middle.block156, label %vector.body142, !llvm.loop !1365

middle.block156:                                  ; preds = %vector.body142
  %cmp.n157 = icmp eq i64 %i.cp, %n.vec141
  br i1 %cmp.n157, label %._crit_edge95, label %.lr.ph94.preheader160

.lr.ph94.preheader160:                            ; preds = %vector.memcheck118, %.lr.ph94.preheader, %middle.block156
  %.392.pn.ph = phi ptr [ %.298, %vector.memcheck118 ], [ %.298, %.lr.ph94.preheader ], [ %i.de, %middle.block156 ]
  %.17291.ph = phi i64 [ %i.db, %vector.memcheck118 ], [ %i.db, %.lr.ph94.preheader ], [ %i.df, %middle.block156 ]
  br label %.lr.ph94

.lr.ph94:                                         ; preds = %.lr.ph94.preheader160, %.lr.ph94
  %.392.pn = phi ptr [ %.392, %.lr.ph94 ], [ %.392.pn.ph, %.lr.ph94.preheader160 ]
  %.17291 = phi i64 [ %i.eh, %.lr.ph94 ], [ %.17291.ph, %.lr.ph94.preheader160 ] ; 3 uses
  %.392 = getelementptr inbounds nuw i8, ptr %.392.pn, i64 8 ; 4 uses
  %i.dx = load double, ptr %i.cu, align 8, !tbaa !155
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.17291
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !155
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.17291
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !155
  %i.ec = load double, ptr %i.cw, align 8, !tbaa !155
  %i.ed = fmul double %i.eb, %i.ec
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.dx, double %i.dz, double %i.ed)
  %i.ef = load double, ptr %.392, align 8, !tbaa !155
  %i.eg = fsub double %i.ef, %i.ee
  store double %i.eg, ptr %.392, align 8, !tbaa !155
  %i.eh = add nuw nsw i64 %.17291, 1              ; 2 uses
  %exitcond102.not = icmp eq i64 %i.eh, %i.f
  br i1 %exitcond102.not, label %._crit_edge95, label %.lr.ph94, !llvm.loop !1366

._crit_edge95:                                    ; preds = %.lr.ph94, %middle.block156, %.lr.ph99
  %i.ei = phi ptr [ %.298, %.lr.ph99 ], [ %i.de, %middle.block156 ], [ %.392, %.lr.ph94 ]
  %i.ej = getelementptr [8 x i8], ptr %i.ei, i64 %i.a
  %i.ek = getelementptr [8 x i8], ptr %i.ej, i64 %.17497
  %i.el = getelementptr i8, ptr %i.ek, i64 16
  %exitcond103.not = icmp eq i64 %i.db, %i.f
  br i1 %exitcond103.not, label %._crit_edge100, label %.lr.ph99, !llvm.loop !1367

._crit_edge100:                                   ; preds = %._crit_edge95, %_ZN6casadi12casadi_clearIdEEvPT_x.exit, %._crit_edge89
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi22casadi_cvx_implicit_qrIdEEvxPT_S2_S2_(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = add nsw i64 %0, -2                       ; 2 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %1, i64 %i.a
  %i.c = load double, ptr %i.b, align 8, !tbaa !155
  %i.d = add nsw i64 %0, -1                       ; 3 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %1, i64 %i.d
  %i.f = load double, ptr %i.e, align 8, !tbaa !155 ; 2 uses
  %i.g = fsub double %i.c, %i.f
  %i.h = fmul double %i.g, 5.000000e-01           ; 4 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a
  %i.j = load double, ptr %i.i, align 8, !tbaa !155 ; 2 uses
  %i.k = fmul double %i.j, %i.j                   ; 2 uses
  %i.l = fcmp olt double %i.h, 0.000000e+00
  %spec.store.select = select i1 %i.l, double -1.000000e+00, double 1.000000e+00
  %i.m = tail call double @llvm.fmuladd.f64(double %i.h, double %i.h, double %i.k)
  %sqrt = tail call double @sqrt(double noundef %i.m) #29
  %i.n = tail call double @llvm.fmuladd.f64(double %spec.store.select, double %sqrt, double %i.h)
  %i.o = fdiv double %i.k, %i.n
  %i.p = fsub double %i.f, %i.o
  %i.q = load double, ptr %1, align 8, !tbaa !155 ; 3 uses
  %i.r = fsub double %i.q, %i.p                   ; 3 uses
  %i.s = load double, ptr %2, align 8, !tbaa !155 ; 7 uses
  %i.t = icmp sgt i64 %0, 1
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.u = fcmp oeq double %i.s, 0.000000e+00
  br i1 %i.u, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader
  %i.v = tail call double @llvm.fabs.f64(double %i.s)
  %i.w = tail call double @llvm.fabs.f64(double %i.r)
  %i.x = fcmp ogt double %i.v, %i.w
  br i1 %i.x, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = fneg double %i.s
  %i.z = fdiv double %i.y, %i.r                   ; 3 uses
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double %i.z, double 1.000000e+00)
  %sqrt21.i.peel = tail call double @llvm.sqrt.f64(double %i.aa)
  %i.ab = fdiv double 1.000000e+00, %sqrt21.i.peel ; 2 uses
  %i.ac = fmul double %i.z, %i.ab
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ad = fneg double %i.r
  %i.ae = fdiv double %i.ad, %i.s                 ; 3 uses
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ae, double 1.000000e+00)
  %sqrt.i.peel = tail call double @llvm.sqrt.f64(double %i.af)
  %i.ag = fdiv double 1.000000e+00, %sqrt.i.peel  ; 2 uses
  %i.ah = fmul double %i.ae, %i.ag
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.preheader, %bb.c, %bb.d
  %.077.peel = phi double [ %i.ab, %bb.c ], [ %i.ah, %bb.d ], [ 1.000000e+00, %.lr.ph.preheader ] ; 7 uses
  %.076.peel = phi double [ %i.ac, %bb.c ], [ %i.ag, %bb.d ], [ 0.000000e+00, %.lr.ph.preheader ] ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !155 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !155
  %i.am = fneg double %.076.peel                  ; 2 uses
  %i.an = insertelement <2 x double> poison, double %i.s, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.aj, i64 1
  %i.ap = insertelement <2 x double> poison, double %i.am, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x double> %i.ao, %i.aq
  %i.as = insertelement <2 x double> poison, double %i.q, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.s, i64 1
  %i.au = insertelement <2 x double> poison, double %.077.peel, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.av, <2 x double> %i.ar) ; 3 uses
  %i.ax = insertelement <2 x double> poison, double %.076.peel, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %.077.peel, i64 1 ; 2 uses
  %i.az = fneg <2 x double> %i.aw
  %i.ba = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bb = shufflevector <2 x double> %i.aw, <2 x double> %i.az, <2 x i32> <i32 1, i32 3>
  %i.bc = fmul <2 x double> %i.ba, %i.bb
  %i.bd = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.bd, <2 x double> %i.bc) ; 2 uses
  %i.bf = extractelement <2 x double> %i.be, i64 1
  store double %i.bf, ptr %1, align 8, !tbaa !155
  %i.bg = extractelement <2 x double> %i.be, i64 0
  store double %i.bg, ptr %2, align 8, !tbaa !155
  %i.bh = fmul double %.076.peel, %i.q
  %i.bi = fmul double %.076.peel, 2.000000e+00
  %i.bj = fmul double %i.bi, %i.s
  %i.bk = fmul double %.077.peel, %i.bj
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bh, double %.076.peel, double %i.bk)
  %i.bm = fmul double %.077.peel, %i.aj
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bm, double %.077.peel, double %i.bl)
  store double %i.bn, ptr %i.ai, align 8, !tbaa !155
  %i.bo = load double, ptr %i.ak, align 8, !tbaa !155
  %i.bp = fmul double %.077.peel, %i.bo
  store double %i.bp, ptr %i.ak, align 8, !tbaa !155
  %i.bq = load double, ptr %2, align 8, !tbaa !155
  %i.br = fmul double %i.al, %i.am
  %.not66.peel = icmp eq ptr %3, null
  br i1 %.not66.peel, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %.077.peel, ptr %3, align 8, !tbaa !155
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %.076.peel, ptr %i.bs, align 8, !tbaa !155
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.peel = phi ptr [ %i.bt, %bb.f ], [ null, %bb.e ]
  %exitcond.peel.not = icmp eq i64 %i.d, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.m
  %.081 = phi i64 [ %i.cj, %bb.m ], [ 1, %bb.g ]  ; 3 uses
  %.06380 = phi double [ %i.dz, %bb.m ], [ %i.br, %bb.g ] ; 5 uses
  %.06479 = phi double [ %i.dy, %bb.m ], [ %i.bq, %bb.g ] ; 3 uses
  %.06578 = phi ptr [ %.1, %bb.m ], [ %.1.peel, %bb.g ] ; 4 uses
  %i.bu = fcmp oeq double %.06380, 0.000000e+00
  br i1 %i.bu, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.bv = tail call double @llvm.fabs.f64(double %.06380)
  %i.bw = tail call double @llvm.fabs.f64(double %.06479)
  %i.bx = fcmp ogt double %i.bv, %i.bw
  br i1 %i.bx, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.by = fneg double %.06479
  %i.bz = fdiv double %i.by, %.06380              ; 3 uses
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.bz, double 1.000000e+00)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.ca)
  %i.cb = fdiv double 1.000000e+00, %sqrt.i       ; 2 uses
  %i.cc = fmul double %i.bz, %i.cb
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.cd = fneg double %.06380
  %i.ce = fdiv double %i.cd, %.06479              ; 3 uses
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.ce, double 1.000000e+00)
  %sqrt21.i = tail call double @llvm.sqrt.f64(double %i.cf)
  %i.cg = fdiv double 1.000000e+00, %sqrt21.i     ; 2 uses
  %i.ch = fmul double %i.ce, %i.cg
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.i, %bb.j
  %.077 = phi double [ %i.cg, %bb.j ], [ %i.cc, %bb.i ], [ 1.000000e+00, %.lr.ph ] ; 8 uses
  %.076 = phi double [ %i.ch, %bb.j ], [ %i.cb, %bb.i ], [ 0.000000e+00, %.lr.ph ] ; 6 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.081 ; 2 uses
  %i.cj = add nuw nsw i64 %.081, 1                ; 4 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.081 ; 4 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !155 ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cj ; 3 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !155
  %i.cp = fneg double %.076                       ; 3 uses
  %i.cq = load <2 x double>, ptr %i.ci, align 8, !tbaa !155 ; 3 uses
  %i.cr = load double, ptr %i.ck, align 8, !tbaa !155
  %i.cs = insertelement <2 x double> %i.cq, double %i.cm, i64 0
  %i.ct = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = fmul <2 x double> %i.cs, %i.cu
  %i.cw = insertelement <2 x double> %i.cq, double %i.cm, i64 1
  %i.cx = insertelement <2 x double> poison, double %.077, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> %i.cy, <2 x double> %i.cv) ; 3 uses
  %i.da = insertelement <2 x double> poison, double %.076, i64 0
  %i.db = insertelement <2 x double> %i.da, double %.077, i64 1 ; 2 uses
  %i.dc = fneg <2 x double> %i.cz
  %i.dd = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.de = shufflevector <2 x double> %i.cz, <2 x double> %i.dc, <2 x i32> <i32 1, i32 3>
  %i.df = fmul <2 x double> %i.dd, %i.de
  %i.dg = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.db, <2 x double> %i.dg, <2 x double> %i.df) ; 2 uses
  %i.di = extractelement <2 x double> %i.dh, i64 1
  store double %i.di, ptr %i.ci, align 8, !tbaa !155
  %i.dj = extractelement <2 x double> %i.dh, i64 0
  store double %i.dj, ptr %i.cl, align 8, !tbaa !155
  %i.dk = extractelement <2 x double> %i.cq, i64 0
  %i.dl = fmul double %.076, %i.dk
  %i.dm = fmul double %.076, 2.000000e+00
  %i.dn = fmul double %i.dm, %i.cm
  %i.do = fmul double %.077, %i.dn
  %i.dp = tail call double @llvm.fmuladd.f64(double %i.dl, double %.076, double %i.do)
  %i.dq = fmul double %.077, %i.cr
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dq, double %.077, double %i.dp)
  store double %i.dr, ptr %i.ck, align 8, !tbaa !155
  %i.ds = load double, ptr %i.cn, align 8, !tbaa !155
  %i.dt = fmul double %.077, %i.ds
  store double %i.dt, ptr %i.cn, align 8, !tbaa !155
  %i.du = getelementptr i8, ptr %i.cl, i64 -8     ; 2 uses
  %i.dv = load double, ptr %i.du, align 8, !tbaa !155
  %i.dw = fmul double %.06380, %i.cp
  %i.dx = tail call double @llvm.fmuladd.f64(double %i.dv, double %.077, double %i.dw)
  store double %i.dx, ptr %i.du, align 8, !tbaa !155
  %i.dy = load double, ptr %i.cl, align 8, !tbaa !155
  %i.dz = fmul double %i.co, %i.cp
  %.not66 = icmp eq ptr %.06578, null
  br i1 %.not66, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ea = getelementptr inbounds nuw i8, ptr %.06578, i64 8
  store double %.077, ptr %.06578, align 8, !tbaa !155
  %i.eb = getelementptr inbounds nuw i8, ptr %.06578, i64 16
  store double %.076, ptr %i.ea, align 8, !tbaa !155
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.1 = phi ptr [ %i.eb, %bb.l ], [ null, %bb.k ]
  %exitcond.not = icmp eq i64 %i.cj, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1376

._crit_edge:                                      ; preds = %bb.m, %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi3strIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
end_hunk_2
begin_hunk_3_@_GLOBAL__sub_I_feasiblesqpmethod.cpp:bb.a
bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadiL9NL_INPUTSB5cxx11E, i64 16), align 8, !tbaa !37
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.q) #30
  br label %.body.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i
  store ptr %i.k, ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadiL9NL_INPUTSB5cxx11E, i64 8), align 8, !tbaa !35
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.e
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.e, align 8, !tbaa !30
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.v = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.a
  br i1 %i.w, label %__cxx_global_var_init.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !30
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #30
  br label %__cxx_global_var_init.exit

.body.i:                                          ; preds = %bb.c, %bb.b
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.e
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i: ; preds = %.body.i
  %i.ab = load i64, ptr %i.e, align 8, !tbaa !30
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i: ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i
  %i.ad = load ptr, ptr %1, align 8, !tbaa !29    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.a
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i
  %i.af = load i64, ptr %i.a, align 8, !tbaa !30
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i6 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %common.resume

__cxx_global_var_init.exit:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  %i.ah = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZN6casadiL9NL_INPUTSB5cxx11E, ptr nonnull @__dso_handle) #29 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #29
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !25
  store i8 102, ptr %i.ai, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.aj, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.ak, align 1, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !25
  store i8 103, ptr %i.am, align 8, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 1, ptr %i.an, align 8, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i8 0, ptr %i.ao, align 1, !tbaa !30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6casadiL10NL_OUTPUTSB5cxx11E, i8 0, i64 24, i1 false)
  %i.ap = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #31
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i9 unwind label %bb.e ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i9: ; preds = %__cxx_global_var_init.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ap, ptr @_ZN6casadiL10NL_OUTPUTSB5cxx11E, align 8, !tbaa !34
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  store ptr %i.ar, ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadiL10NL_OUTPUTSB5cxx11E, i64 16), align 8, !tbaa !37
  %i.as = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ap)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i9, %__cxx_global_var_init.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load ptr, ptr @_ZN6casadiL10NL_OUTPUTSB5cxx11E, align 8, !tbaa !34 ; 3 uses
  %.not.i.i5.i.i1 = icmp eq ptr %i.au, null
  br i1 %.not.i.i5.i.i1, label %.body.i2, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadiL10NL_OUTPUTSB5cxx11E, i64 16), align 8, !tbaa !37
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #30
  br label %.body.i2

bb.g:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i9
  store ptr %i.as, ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadiL10NL_OUTPUTSB5cxx11E, i64 8), align 8, !tbaa !35
  %i.az = load ptr, ptr %i.al, align 8, !tbaa !29 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.am
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10: ; preds = %bb.g
  %i.bb = load i64, ptr %i.am, align 8, !tbaa !30
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i11: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10
  %i.bd = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ai
  br i1 %i.be, label %__cxx_global_var_init.2.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i11
  %i.bf = load i64, ptr %i.ai, align 8, !tbaa !30
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #30
  br label %__cxx_global_var_init.2.exit

.body.i2:                                         ; preds = %bb.f, %bb.e
  %i.bh = load ptr, ptr %i.al, align 8, !tbaa !29 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.am
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i3: ; preds = %.body.i2
  %i.bj = load i64, ptr %i.am, align 8, !tbaa !30
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i4: ; preds = %.body.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i3
  %i.bl = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.ai
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.1.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.1.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i4
  %i.bn = load i64, ptr %i.ai, align 8, !tbaa !30
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.1.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #29
  br label %common.resume

__cxx_global_var_init.2.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #29
  %i.bp = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZN6casadiL10NL_OUTPUTSB5cxx11E, ptr nonnull @__dso_handle) #29 ; 0 uses
  call fastcc void @__cxx_global_var_init.6()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.minnum.v2f64(<2 x double>, <2 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #15

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { noreturn }
attributes #29 = { nounwind }
attributes #30 = { builtin nounwind }
attributes #31 = { builtin allocsize(0) }
attributes #32 = { noreturn nounwind }
attributes #33 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!14, !15}
!llvm.ident = !{!16}
!llvm.errno.tbaa = !{!21}

!0 = distinct !{!0, !36}
!1 = distinct !{null, null}
!2 = distinct !{!2, !36}
!3 = distinct !{!3, !36}
!4 = distinct !{!4, !36}
!5 = distinct !{!5, !36}
!6 = distinct !{null, null, null, null}
!7 = distinct !{!7, !36}
!8 = distinct !{!8, !36}
!9 = distinct !{!9, !36}
!10 = distinct !{!10, !36}
!11 = distinct !{!11, !36}
!12 = distinct !{!12, !36}
!13 = distinct !{!13, !36}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 2}
!16 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!17 = !{!"Simple C++ TBAA"}
!18 = !{!"omnipotent char", !17, i64 0}
!19 = !{!"int", !18, i64 0}
!20 = !{!"__libc_errno", !19, i64 0}
!21 = !{!20, !19, i64 0}
!22 = !{!"any pointer", !18, i64 0}
!23 = !{!"p1 omnipotent char", !22, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!25 = !{!24, !23, i64 0}
!26 = !{!"long", !18, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !26, i64 8, !18, i64 16}
!29 = !{!28, !23, i64 0}
!30 = !{!18, !18, i64 0}
!31 = !{!28, !26, i64 8}
!32 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!34 = !{!33, !32, i64 0}
!35 = !{!33, !32, i64 8}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!33, !32, i64 16}
!38 = !{!"_ZTSN6casadi6Nlpsol7ExposedE"}
!39 = !{!"p1 _ZTSN6casadi7OptionsE", !22, i64 0}
!40 = !{!"_ZTSN6casadi15PluginInterfaceINS_6NlpsolEE6PluginE", !22, i64 0, !23, i64 8, !23, i64 16, !19, i64 24, !38, i64 28, !39, i64 32, !22, i64 40}
!41 = !{!40, !23, i64 8}
!42 = !{!"vtable pointer", !17, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"p1 _ZTSN6casadi14GenericWeakRefINS_12SharedObjectENS_20SharedObjectInternalEEE", !22, i64 0}
!45 = !{!"_ZTSN6casadi21GenericSharedInternalINS_12SharedObjectENS_20SharedObjectInternalEEE", !44, i64 8}
!46 = !{!"long long", !18, i64 0}
!47 = !{!"_ZTSN6casadi20SharedObjectInternalE", !45, i64 0, !46, i64 16}
!48 = !{!"bool", !18, i64 0}
!49 = !{!"any p2 pointer", !22, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIPvSaIS0_EE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!51 = !{!"_ZTSNSt12_Vector_baseIPvSaIS0_EE12_Vector_implE", !50, i64 0}
!52 = !{!"_ZTSSt12_Vector_baseIPvSaIS0_EE", !51, i64 0}
!53 = !{!"_ZTSSt6vectorIPvSaIS0_EE", !52, i64 0}
!54 = !{!"p2 int", !49, i64 0}
!55 = !{!"p1 int", !22, i64 0}
!56 = !{!"_ZTSSt15_Deque_iteratorIiRiPiE", !55, i64 0, !55, i64 8, !55, i64 16, !54, i64 24}
!57 = !{!"_ZTSNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataE", !54, i64 0, !26, i64 8, !56, i64 16, !56, i64 48}
!58 = !{!"_ZTSNSt11_Deque_baseIiSaIiEE11_Deque_implE", !57, i64 0}
!59 = !{!"_ZTSSt11_Deque_baseIiSaIiEE", !58, i64 0}
!60 = !{!"_ZTSSt5dequeIiSaIiEE", !59, i64 0}
!61 = !{!"_ZTSSt5stackIiSt5dequeIiSaIiEEE", !60, i64 0}
!62 = !{!"_ZTSN6casadi13ProtoFunctionE", !47, i64 0, !28, i64 24, !48, i64 56, !48, i64 57, !48, i64 58, !48, i64 59, !48, i64 60, !53, i64 64, !61, i64 88}
!63 = !{!"p1 long", !22, i64 0}
!64 = !{!"_ZTSSt18_Bit_iterator_base", !63, i64 0, !19, i64 8}
!65 = !{!"_ZTSSt13_Bit_iterator", !64, i64 0}
!66 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !65, i64 0, !65, i64 16, !63, i64 32}
!67 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !66, i64 0}
!68 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !67, i64 0}
!69 = !{!"_ZTSSt6vectorIbSaIbEE", !68, i64 0}
!70 = !{!"p1 _ZTSN6casadi8SparsityE", !22, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseIN6casadi8SparsityESaIS1_EE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!72 = !{!"_ZTSNSt12_Vector_baseIN6casadi8SparsityESaIS1_EE12_Vector_implE", !71, i64 0}
!73 = !{!"_ZTSSt12_Vector_baseIN6casadi8SparsityESaIS1_EE", !72, i64 0}
!74 = !{!"_ZTSSt6vectorIN6casadi8SparsityESaIS1_EE", !73, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !33, i64 0}
!76 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !75, i64 0}
!77 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !76, i64 0}
!78 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!79 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !78, i64 0}
!80 = !{!"_ZTSSt14_Rb_tree_color", !18, i64 0}
!81 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !22, i64 0}
!82 = !{!"_ZTSSt18_Rb_tree_node_base", !80, i64 0, !81, i64 8, !81, i64 16, !81, i64 24}
!83 = !{!"_ZTSSt15_Rb_tree_header", !82, i64 0, !26, i64 32}
!84 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !79, i64 0, !83, i64 8}
!85 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !84, i64 0}
!86 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !85, i64 0}
!87 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !49, i64 0}
!88 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !22, i64 0}
!89 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !88, i64 0}
!90 = !{!"float", !18, i64 0}
!91 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !90, i64 0, !26, i64 8}
!92 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi14GenericWeakRefINS8_12SharedObjectENS8_20SharedObjectInternalEEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE", !87, i64 0, !26, i64 8, !89, i64 16, !26, i64 24, !91, i64 32, !88, i64 48}
!93 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi14GenericWeakRefINS6_12SharedObjectENS6_20SharedObjectInternalEEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE", !92, i64 0}
!94 = !{!"_ZTSN6casadi9WeakCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FunctionEEE", !93, i64 0}
!95 = !{!"p1 _ZTSN6casadi20SharedObjectInternalE", !22, i64 0}
!96 = !{!"_ZTSN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEE", !95, i64 0}
!97 = !{!"_ZTSN6casadi12SharedObjectE", !96, i64 0}
!98 = !{!"_ZTSN6casadi8FunctionE", !97, i64 0}
!99 = !{!"_ZTSN6casadi8ImporterE", !97, i64 0}
!100 = !{!"double", !18, i64 0}
!101 = !{!"_ZTSN6casadi16FunctionInternalE", !62, i64 0, !48, i64 168, !48, i64 169, !26, i64 176, !26, i64 184, !69, i64 192, !69, i64 232, !74, i64 272, !74, i64 296, !77, i64 320, !77, i64 344, !48, i64 368, !48, i64 369, !28, i64 376, !28, i64 408, !28, i64 440, !48, i64 472, !22, i64 480, !22, i64 488, !22, i64 496, !86, i64 504, !48, i64 552, !86, i64 560, !94, i64 608, !18, i64 664, !98, i64 712, !22, i64 720, !28, i64 728, !99, i64 760, !86, i64 768, !100, i64 816, !48, i64 824, !48, i64 825, !48, i64 826, !48, i64 827, !48, i64 828, !48, i64 829, !48, i64 830, !48, i64 831, !100, i64 832, !100, i64 840, !46, i64 848, !48, i64 856, !86, i64 864, !100, i64 912, !28, i64 920, !48, i64 952, !48, i64 953, !48, i64 954, !46, i64 960, !48, i64 968, !48, i64 969, !48, i64 970, !28, i64 976, !28, i64 1008, !86, i64 1040, !86, i64 1088, !86, i64 1136, !86, i64 1184, !98, i64 1232, !46, i64 1240, !26, i64 1248, !26, i64 1256, !26, i64 1264, !26, i64 1272, !26, i64 1280, !26, i64 1288, !26, i64 1296, !26, i64 1304}
!102 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi14OracleFunction6RegFunEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE13_Rb_tree_implISF_Lb1EEE", !79, i64 0, !83, i64 8}
!103 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi14OracleFunction6RegFunEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE", !102, i64 0}
!104 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi14OracleFunction6RegFunESt4lessIS5_ESaISt4pairIKS5_S8_EEE", !103, i64 0}
!105 = !{!"_ZTSN6casadi14OracleFunctionE", !101, i64 0, !98, i64 1312, !86, i64 1320, !86, i64 1368, !48, i64 1416, !19, i64 1420, !104, i64 1424, !77, i64 1472, !26, i64 1496, !26, i64 1504, !26, i64 1512, !26, i64 1520, !48, i64 1528}
!106 = !{!"_ZTSN6casadi15PluginInterfaceINS_6NlpsolEEE"}
!107 = !{!"p1 long long", !22, i64 0}
!108 = !{!"_ZTSN6casadi32casadi_nlpsol_detect_bounds_probIdEE", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !107, i64 48, !107, i64 56, !23, i64 64, !22, i64 72, !22, i64 80}
!109 = !{!"_ZTSN6casadi18casadi_nlpsol_probIdEE", !46, i64 0, !46, i64 8, !46, i64 16, !108, i64 24}
!110 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!111 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE12_Vector_implE", !110, i64 0}
!112 = !{!"_ZTSSt12_Vector_baseIcSaIcEE", !111, i64 0}
!113 = !{!"_ZTSSt6vectorIcSaIcEE", !112, i64 0}
!114 = !{!"_ZTSNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataE", !107, i64 0, !107, i64 8, !107, i64 16}
!115 = !{!"_ZTSNSt12_Vector_baseIxSaIxEE12_Vector_implE", !114, i64 0}
!116 = !{!"_ZTSSt12_Vector_baseIxSaIxEE", !115, i64 0}
!117 = !{!"_ZTSSt6vectorIxSaIxEE", !116, i64 0}
!118 = !{!"_ZTSN6casadi14GenericWeakRefINS_12SharedObjectENS_20SharedObjectInternalEEE", !96, i64 0}
!119 = !{!"_ZTSN6casadi7WeakRefE", !118, i64 0}
!120 = !{!"_ZTSN6casadi6NlpsolE", !105, i64 0, !106, i64 1536, !109, i64 1544, !46, i64 1656, !46, i64 1664, !46, i64 1672, !98, i64 1680, !46, i64 1688, !28, i64 1696, !86, i64 1728, !113, i64 1776, !98, i64 1800, !117, i64 1808, !117, i64 1832, !48, i64 1856, !48, i64 1857, !48, i64 1858, !48, i64 1859, !48, i64 1860, !48, i64 1861, !48, i64 1862, !48, i64 1863, !48, i64 1864, !100, i64 1872, !48, i64 1880, !69, i64 1888, !69, i64 1928, !48, i64 1968, !119, i64 1976}
!121 = !{!"p1 _ZTSN6casadi18casadi_nlpsol_probIdEE", !22, i64 0}
!122 = !{!"_ZTSN6casadi29casadi_feasiblesqpmethod_probIdEE", !121, i64 0, !107, i64 8, !107, i64 16, !107, i64 24}
!123 = !{!"_ZTSN6casadi8SparsityE", !97, i64 0}
!124 = !{!"_ZTSN6casadi27casadi_convexify_strategy_tE", !18, i64 0}
!125 = !{!"_ZTSN6casadi26casadi_convexify_type_in_tE", !18, i64 0}
!126 = !{!"_ZTSN6casadi23casadi_convexify_configIdEE", !124, i64 0, !125, i64 4, !107, i64 8, !107, i64 16, !100, i64 24, !19, i64 32, !19, i64 36, !107, i64 40, !107, i64 48, !46, i64 56, !46, i64 64, !19, i64 72}
!127 = !{!"p1 double", !22, i64 0}
!128 = !{!"_ZTSN6casadi13ConvexifyDataE", !117, i64 0, !117, i64 24, !123, i64 48, !123, i64 56, !123, i64 64, !126, i64 72, !46, i64 152, !46, i64 160, !107, i64 168, !127, i64 176}
!129 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !127, i64 0, !127, i64 8, !127, i64 16}
!130 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !129, i64 0}
!131 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !130, i64 0}
!132 = !{!"_ZTSSt6vectorIdSaIdEE", !131, i64 0}
!133 = !{!"_ZTSN6casadi17FeasiblesqpmethodE", !120, i64 0, !122, i64 1984, !98, i64 2016, !98, i64 2024, !48, i64 2032, !48, i64 2033, !48, i64 2034, !46, i64 2040, !46, i64 2048, !46, i64 2056, !46, i64 2064, !46, i64 2072, !100, i64 2080, !100, i64 2088, !48, i64 2096, !48, i64 2097, !48, i64 2098, !48, i64 2099, !123, i64 2104, !123, i64 2112, !128, i64 2120, !48, i64 2304, !100, i64 2312, !100, i64 2320, !100, i64 2328, !100, i64 2336, !100, i64 2344, !100, i64 2352, !100, i64 2360, !100, i64 2368, !100, i64 2376, !100, i64 2384, !100, i64 2392, !132, i64 2400, !100, i64 2424, !46, i64 2432, !46, i64 2440}
!134 = !{!133, !46, i64 2040}
!135 = !{!114, !107, i64 0}
!136 = !{!114, !107, i64 16}
!137 = !{!129, !127, i64 0}
!138 = !{!129, !127, i64 16}
!139 = !{!"p2 _ZTSN6casadi7OptionsE", !49, i64 0}
!140 = !{!"_ZTSNSt12_Vector_baseIPKN6casadi7OptionsESaIS3_EE17_Vector_impl_dataE", !139, i64 0, !139, i64 8, !139, i64 16}
!141 = !{!140, !139, i64 0}
!142 = !{!140, !139, i64 16}
!143 = !{!39, !39, i64 0}
!144 = !{!"_ZTSN6casadi6TypeIDE", !18, i64 0}
!145 = !{!"_ZTSN6casadi7Options5EntryE", !144, i64 0, !28, i64 8}
!146 = !{!145, !144, i64 0}
!147 = !{!83, !80, i64 0}
!148 = !{!83, !81, i64 8}
!149 = !{!83, !81, i64 16}
!150 = !{!83, !81, i64 24}
!151 = !{!83, !26, i64 32}
!152 = !{!81, !81, i64 0}
!153 = !{!133, !46, i64 2048}
!154 = !{!133, !46, i64 2064}
!155 = !{!100, !100, i64 0}
end_hunk_3
