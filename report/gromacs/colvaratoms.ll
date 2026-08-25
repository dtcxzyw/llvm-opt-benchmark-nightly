Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvaratoms?download=true
inline.NumInlined: 2814
inline.NumDeleted: 782
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN12colvarmodule10atom_group21parse_fitting_optionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.de:                                            ; preds = %bb.dc
  %i.ut = icmp ult i64 %i.uj, %i.uq
  br i1 %i.ut, label %bb.df, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.df:                                            ; preds = %bb.de
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.um, i64 %i.uj ; 2 uses
  %.not.i.i336 = icmp eq ptr %i.ul, %i.uu
  br i1 %.not.i.i336, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.df
  store ptr %i.uu, ptr %i.uk, align 8, !tbaa !136
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge, %bb.de, %bb.df, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  %i.uv = phi i64 [ %.pre415, %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge ], [ %.pre-phi422, %bb.de ], [ %.pre-phi422, %bb.df ], [ %.pre-phi422, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ] ; 31 uses
  %.not411 = icmp eq i64 %i.uv, 0
  br i1 %.not411, label %._crit_edge20.critedge.i, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.uw = load ptr, ptr %10, align 8, !tbaa !133  ; 9 uses
  %i.ux = load ptr, ptr %i.ui, align 8, !tbaa !134 ; 9 uses
  %.idx.i = shl i64 %i.uv, 4                      ; 6 uses
  %min.iters.check = icmp ult i64 %i.uv, 42
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.uy = shl i64 %i.uv, 3
  %scevgep = getelementptr i8, ptr %i.ux, i64 %i.uy ; 3 uses
  %scevgep604 = getelementptr i8, ptr %i.ux, i64 %.idx.i ; 3 uses
  %i.uz = mul i64 %i.uv, 24                       ; 2 uses
  %scevgep605 = getelementptr i8, ptr %i.ux, i64 %i.uz ; 2 uses
  %scevgep606 = getelementptr i8, ptr %i.uw, i64 %i.uz ; 3 uses
  %bound0607 = icmp ult ptr %i.ux, %scevgep605
  %bound1 = icmp ult ptr %scevgep604, %scevgep
  %found.conflict = and i1 %bound0607, %bound1
  %bound0608 = icmp ult ptr %i.ux, %scevgep606
  %bound1609 = icmp ult ptr %i.uw, %scevgep
  %found.conflict610 = and i1 %bound0608, %bound1609
  %conflict.rdx = or i1 %found.conflict, %found.conflict610
  %bound0612 = icmp ult ptr %scevgep, %scevgep606
  %bound1613 = icmp ult ptr %i.uw, %scevgep604
  %found.conflict614 = and i1 %bound0612, %bound1613
  %conflict.rdx615 = or i1 %conflict.rdx, %found.conflict614
  %bound0616 = icmp ult ptr %scevgep604, %scevgep606
  %bound1617 = icmp ult ptr %i.uw, %scevgep605
  %found.conflict618 = and i1 %bound0616, %bound1617
  %conflict.rdx619 = or i1 %conflict.rdx615, %found.conflict618
  br i1 %conflict.rdx619, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.uv, -2                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.va = getelementptr inbounds nuw [24 x i8], ptr %i.uw, i64 %index ; 3 uses
  %i.vb = getelementptr inbounds nuw [24 x i8], ptr %i.uw, i64 %index ; 3 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 24
  %i.vd = load double, ptr %i.va, align 8, !tbaa !137, !alias.scope !529
  %i.ve = load double, ptr %i.vc, align 8, !tbaa !137, !alias.scope !529
  %i.vf = insertelement <2 x double> poison, double %i.vd, i64 0
  %i.vg = insertelement <2 x double> %i.vf, double %i.ve, i64 1
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %index ; 3 uses
  store <2 x double> %i.vg, ptr %i.vh, align 8, !tbaa !128, !alias.scope !532, !noalias !534
  %i.vi = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vb, i64 32
  %i.vk = load double, ptr %i.vi, align 8, !tbaa !146, !alias.scope !529
  %i.vl = load double, ptr %i.vj, align 8, !tbaa !146, !alias.scope !529
  %i.vm = insertelement <2 x double> poison, double %i.vk, i64 0
  %i.vn = insertelement <2 x double> %i.vm, double %i.vl, i64 1
  %i.vo = getelementptr [8 x i8], ptr %i.vh, i64 %i.uv
  store <2 x double> %i.vn, ptr %i.vo, align 8, !tbaa !128, !alias.scope !537, !noalias !538
  %i.vp = getelementptr inbounds nuw i8, ptr %i.va, i64 16
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vb, i64 40
  %i.vr = load double, ptr %i.vp, align 8, !tbaa !149, !alias.scope !529
  %i.vs = load double, ptr %i.vq, align 8, !tbaa !149, !alias.scope !529
  %i.vt = insertelement <2 x double> poison, double %i.vr, i64 0
  %i.vu = insertelement <2 x double> %i.vt, double %i.vs, i64 1
  %i.vv = getelementptr i8, ptr %i.vh, i64 %.idx.i
  store <2 x double> %i.vu, ptr %i.vv, align 8, !tbaa !128, !alias.scope !539, !noalias !529
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.vw = icmp eq i64 %index.next, %n.vec
  br i1 %i.vw, label %middle.block, label %vector.body, !llvm.loop !540

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.uv, %n.vec
  br i1 %cmp.n, label %.lr.ph.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.0410.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.0410.ph, 1
  %xtraiter = and i64 %i.uv, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.vx = getelementptr inbounds nuw [24 x i8], ptr %i.uw, i64 %.0410.ph ; 3 uses
  %i.vy = load double, ptr %i.vx, align 8, !tbaa !137
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %.0410.ph ; 3 uses
  store double %i.vy, ptr %i.vz, align 8, !tbaa !128
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vx, i64 8
  %i.wb = load double, ptr %i.wa, align 8, !tbaa !146
  %i.wc = getelementptr [8 x i8], ptr %i.vz, i64 %i.uv
  store double %i.wb, ptr %i.wc, align 8, !tbaa !128
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  %i.we = load double, ptr %i.wd, align 8, !tbaa !149
  %i.wf = getelementptr i8, ptr %i.vz, i64 %.idx.i
  store double %i.we, ptr %i.wf, align 8, !tbaa !128
  %i.wg = or disjoint i64 %.0410.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0410.unr = phi i64 [ %.0410.ph, %scalar.ph.preheader ], [ %i.wg, %scalar.ph.prol ]
  %i.wh = icmp eq i64 %i.uv, %.neg
  br i1 %i.wh, label %.lr.ph.i, label %scalar.ph

.lr.ph.i:                                         ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.wi = getelementptr inbounds nuw i8, ptr %0, i64 1504 ; 10 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1512 ; 5 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1520 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wi, i8 0, i64 24, i1 false)
  %i.wj = load ptr, ptr %i.ui, align 8, !tbaa !134 ; 10 uses
  %.idx.i.i = shl i64 %i.uv, 4                    ; 5 uses
  %xtraiter668 = and i64 %i.uv, 1
  %i.wk = icmp eq i64 %i.uv, 1
  br i1 %i.wk, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.uv, -2
  br label %bb.dg

._crit_edge.i.unr-lcssa:                          ; preds = %bb.dg
  %lcmp.mod673.not = icmp eq i64 %xtraiter668, 0
  br i1 %lcmp.mod673.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.epil.init = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.yh, %._crit_edge.i.unr-lcssa ]
  %.epil.init670 = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.ye, %._crit_edge.i.unr-lcssa ]
  %.01014.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.yi, %._crit_edge.i.unr-lcssa ]
  %.epil.init672 = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.yc, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod677 = trunc i64 %i.uv to i1
  call void @llvm.assume(i1 %lcmp.mod677)
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %.01014.i.epil.init ; 3 uses
  %i.wm = load double, ptr %i.wl, align 8, !tbaa !128
  %i.wn = getelementptr [8 x i8], ptr %i.wl, i64 %i.uv
  %i.wo = fadd double %.epil.init672, %i.wm       ; 2 uses
  store double %i.wo, ptr %i.wi, align 8, !tbaa !541
  %i.wp = load double, ptr %i.wn, align 8, !tbaa !128
  %i.wq = fadd double %.epil.init670, %i.wp       ; 2 uses
  store double %i.wq, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !542
  %i.wr = getelementptr i8, ptr %i.wl, i64 %.idx.i.i
  %i.ws = load double, ptr %i.wr, align 8, !tbaa !128
  %i.wt = fadd double %.epil.init, %i.ws          ; 2 uses
  store double %i.wt, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !543
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa667 = phi double [ %i.yc, %._crit_edge.i.unr-lcssa ], [ %i.wo, %.epil.preheader ]
  %.lcssa666 = phi double [ %i.ye, %._crit_edge.i.unr-lcssa ], [ %i.wq, %.epil.preheader ]
  %.lcssa = phi double [ %i.yh, %._crit_edge.i.unr-lcssa ], [ %i.wt, %.epil.preheader ]
  %i.wu = uitofp i64 %i.uv to double              ; 2 uses
  %i.wv = insertelement <2 x double> poison, double %.lcssa667, i64 0
  %i.ww = insertelement <2 x double> %i.wv, double %.lcssa666, i64 1
  %i.wx = insertelement <2 x double> poison, double %i.wu, i64 0
  %i.wy = shufflevector <2 x double> %i.wx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wz = fdiv <2 x double> %i.ww, %i.wy
  store <2 x double> %i.wz, ptr %i.wi, align 8, !tbaa !128
  %i.xa = fdiv double %.lcssa, %i.wu
  store double %i.xa, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !149
  %min.iters.check643 = icmp ult i64 %i.uv, 12
  br i1 %min.iters.check643, label %scalar.ph642.preheader, label %vector.memcheck620

vector.memcheck620:                               ; preds = %._crit_edge.i
  %i.xb = shl i64 %i.uv, 3
  %scevgep621 = getelementptr i8, ptr %i.wj, i64 %i.xb ; 3 uses
  %scevgep622 = getelementptr i8, ptr %i.wj, i64 %.idx.i ; 3 uses
  %i.xc = mul i64 %i.uv, 24
  %scevgep623 = getelementptr i8, ptr %i.wj, i64 %i.xc ; 2 uses
  %scevgep624 = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 3 uses
  %bound0626 = icmp ult ptr %i.wj, %scevgep623
  %bound1627 = icmp ult ptr %scevgep622, %scevgep621
  %found.conflict628 = and i1 %bound0626, %bound1627
  %bound0629 = icmp ult ptr %i.wj, %scevgep624
  %bound1630 = icmp ult ptr %i.wi, %scevgep621
  %found.conflict631 = and i1 %bound0629, %bound1630
  %conflict.rdx632 = or i1 %found.conflict628, %found.conflict631
  %bound0634 = icmp ult ptr %scevgep621, %scevgep624
  %bound1635 = icmp ult ptr %i.wi, %scevgep622
  %found.conflict636 = and i1 %bound0634, %bound1635
  %conflict.rdx637 = or i1 %conflict.rdx632, %found.conflict636
  %bound0638 = icmp ult ptr %scevgep622, %scevgep624
  %bound1639 = icmp ult ptr %i.wi, %scevgep623
  %found.conflict640 = and i1 %bound0638, %bound1639
  %conflict.rdx641 = or i1 %conflict.rdx637, %found.conflict640
  br i1 %conflict.rdx641, label %scalar.ph642.preheader, label %vector.ph644

vector.ph644:                                     ; preds = %vector.memcheck620
  %n.vec645 = and i64 %i.uv, -2                   ; 3 uses
  %29 = load double, ptr %i.wi, align 8, !tbaa !541, !alias.scope !544
  %broadcast.splatinsert = insertelement <2 x double> poison, double %29, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xd = load double, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !542, !alias.scope !544
  %broadcast.splatinsert649 = insertelement <2 x double> poison, double %i.xd, i64 0
  %broadcast.splat650 = shufflevector <2 x double> %broadcast.splatinsert649, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xe = load double, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !543, !alias.scope !544
  %broadcast.splatinsert652 = insertelement <2 x double> poison, double %i.xe, i64 0
  %broadcast.splat653 = shufflevector <2 x double> %broadcast.splatinsert652, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body646

vector.body646:                                   ; preds = %vector.body646, %vector.ph644
  %index647 = phi i64 [ 0, %vector.ph644 ], [ %index.next654, %vector.body646 ] ; 2 uses
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %index647 ; 4 uses
  %wide.load = load <2 x double>, ptr %i.xf, align 8, !tbaa !128, !alias.scope !547, !noalias !549
  %i.xg = fsub <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.xg, ptr %i.xf, align 8, !tbaa !128, !alias.scope !547, !noalias !549
  %i.xh = getelementptr [8 x i8], ptr %i.xf, i64 %i.uv ; 2 uses
  %wide.load648 = load <2 x double>, ptr %i.xh, align 8, !tbaa !128, !alias.scope !552, !noalias !553
  %i.xi = fsub <2 x double> %wide.load648, %broadcast.splat650
  store <2 x double> %i.xi, ptr %i.xh, align 8, !tbaa !128, !alias.scope !552, !noalias !553
  %i.xj = getelementptr i8, ptr %i.xf, i64 %.idx.i.i ; 2 uses
  %wide.load651 = load <2 x double>, ptr %i.xj, align 8, !tbaa !128, !alias.scope !554, !noalias !544
  %i.xk = fsub <2 x double> %wide.load651, %broadcast.splat653
  store <2 x double> %i.xk, ptr %i.xj, align 8, !tbaa !128, !alias.scope !554, !noalias !544
  %index.next654 = add nuw i64 %index647, 2       ; 2 uses
  %i.xl = icmp eq i64 %index.next654, %n.vec645
  br i1 %i.xl, label %middle.block655, label %vector.body646, !llvm.loop !555

middle.block655:                                  ; preds = %vector.body646
  %cmp.n656 = icmp eq i64 %i.uv, %n.vec645
  br i1 %cmp.n656, label %_ZN12colvarmodule10atom_group14center_ref_posEv.exit, label %scalar.ph642.preheader

scalar.ph642.preheader:                           ; preds = %vector.memcheck620, %._crit_edge.i, %middle.block655
  %.017.i.ph = phi i64 [ 0, %vector.memcheck620 ], [ 0, %._crit_edge.i ], [ %n.vec645, %middle.block655 ]
  br label %scalar.ph642

bb.dg:                                            ; preds = %bb.dg, %.lr.ph.i.new
  %i.xm = phi double [ 0.000000e+00, %.lr.ph.i.new ], [ %i.yh, %bb.dg ]
  %i.xn = phi double [ 0.000000e+00, %.lr.ph.i.new ], [ %i.ye, %bb.dg ]
  %.01014.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.yi, %bb.dg ] ; 3 uses
  %i.xo = phi double [ 0.000000e+00, %.lr.ph.i.new ], [ %i.yc, %bb.dg ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.dg ]
  %i.xp = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %.01014.i ; 3 uses
  %i.xq = load double, ptr %i.xp, align 8, !tbaa !128
  %i.xr = getelementptr [8 x i8], ptr %i.xp, i64 %i.uv
  %i.xs = fadd double %i.xo, %i.xq                ; 2 uses
  store double %i.xs, ptr %i.wi, align 8, !tbaa !541
  %i.xt = load double, ptr %i.xr, align 8, !tbaa !128
  %i.xu = fadd double %i.xn, %i.xt                ; 2 uses
  store double %i.xu, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !542
  %i.xv = getelementptr i8, ptr %i.xp, i64 %.idx.i.i
  %i.xw = load double, ptr %i.xv, align 8, !tbaa !128
  %i.xx = fadd double %i.xm, %i.xw                ; 2 uses
  store double %i.xx, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !543
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %.01014.i
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 8 ; 3 uses
  %i.ya = load double, ptr %i.xz, align 8, !tbaa !128
  %i.yb = getelementptr [8 x i8], ptr %i.xz, i64 %i.uv
  %i.yc = fadd double %i.xs, %i.ya                ; 4 uses
  store double %i.yc, ptr %i.wi, align 8, !tbaa !541
  %i.yd = load double, ptr %i.yb, align 8, !tbaa !128
  %i.ye = fadd double %i.xu, %i.yd                ; 4 uses
  store double %i.ye, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !542
  %i.yf = getelementptr i8, ptr %i.xz, i64 %.idx.i.i
  %i.yg = load double, ptr %i.yf, align 8, !tbaa !128
  %i.yh = fadd double %i.xx, %i.yg                ; 4 uses
  store double %i.yh, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !543
  %i.yi = add nuw i64 %.01014.i, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.dg, !llvm.loop !556

._crit_edge20.critedge.i:                         ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.yj = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %.sroa.5.0..sroa_idx.i597 = getelementptr inbounds nuw i8, ptr %0, i64 1520
  store <2 x double> splat (double +qnan), ptr %i.yj, align 8, !tbaa !128
  store double +qnan, ptr %.sroa.5.0..sroa_idx.i597, align 8, !tbaa !149
  br label %_ZN12colvarmodule10atom_group14center_ref_posEv.exit

scalar.ph642:                                     ; preds = %scalar.ph642.preheader, %scalar.ph642
  %.017.i = phi i64 [ %i.yw, %scalar.ph642 ], [ %.017.i.ph, %scalar.ph642.preheader ] ; 2 uses
  %i.yk = load double, ptr %i.wi, align 8, !tbaa !541
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %.017.i ; 4 uses
  %i.ym = load double, ptr %i.yl, align 8, !tbaa !128
  %i.yn = fsub double %i.ym, %i.yk
  store double %i.yn, ptr %i.yl, align 8, !tbaa !128
  %i.yo = load double, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !542
  %i.yp = getelementptr [8 x i8], ptr %i.yl, i64 %i.uv ; 2 uses
  %i.yq = load double, ptr %i.yp, align 8, !tbaa !128
  %i.yr = fsub double %i.yq, %i.yo
  store double %i.yr, ptr %i.yp, align 8, !tbaa !128
  %i.ys = load double, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !543
  %i.yt = getelementptr i8, ptr %i.yl, i64 %.idx.i.i ; 2 uses
  %i.yu = load double, ptr %i.yt, align 8, !tbaa !128
  %i.yv = fsub double %i.yu, %i.ys
  store double %i.yv, ptr %i.yt, align 8, !tbaa !128
  %i.yw = add nuw i64 %.017.i, 1                  ; 2 uses
  %exitcond22.not.i = icmp eq i64 %i.yw, %i.uv
  br i1 %exitcond22.not.i, label %_ZN12colvarmodule10atom_group14center_ref_posEv.exit, label %scalar.ph642, !llvm.loop !557

bb.dh:                                            ; preds = %bb.dd
  %i.yx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0410 = phi i64 [ %i.zr, %scalar.ph ], [ %.0410.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.yy = getelementptr inbounds nuw [24 x i8], ptr %i.uw, i64 %.0410 ; 3 uses
  %i.yz = load double, ptr %i.yy, align 8, !tbaa !137
  %i.za = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %.0410 ; 3 uses
  store double %i.yz, ptr %i.za, align 8, !tbaa !128
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yy, i64 8
  %i.zc = load double, ptr %i.zb, align 8, !tbaa !146
  %i.zd = getelementptr [8 x i8], ptr %i.za, i64 %i.uv
  store double %i.zc, ptr %i.zd, align 8, !tbaa !128
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yy, i64 16
  %i.zf = load double, ptr %i.ze, align 8, !tbaa !149
  %i.zg = getelementptr i8, ptr %i.za, i64 %.idx.i
  store double %i.zf, ptr %i.zg, align 8, !tbaa !128
  %i.zh = add nuw i64 %.0410, 1                   ; 2 uses
  %i.zi = getelementptr inbounds nuw [24 x i8], ptr %i.uw, i64 %i.zh ; 3 uses
  %i.zj = load double, ptr %i.zi, align 8, !tbaa !137
  %i.zk = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %i.zh ; 3 uses
  store double %i.zj, ptr %i.zk, align 8, !tbaa !128
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zi, i64 8
  %i.zm = load double, ptr %i.zl, align 8, !tbaa !146
  %i.zn = getelementptr [8 x i8], ptr %i.zk, i64 %i.uv
  store double %i.zm, ptr %i.zn, align 8, !tbaa !128
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zi, i64 16
  %i.zp = load double, ptr %i.zo, align 8, !tbaa !149
  %i.zq = getelementptr i8, ptr %i.zk, i64 %.idx.i
  store double %i.zp, ptr %i.zq, align 8, !tbaa !128
  %i.zr = add nuw i64 %.0410, 2                   ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.zr, %i.uv
  br i1 %exitcond.not.1, label %.lr.ph.i, label %scalar.ph, !llvm.loop !558

.noexc.i340:                                      ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  %i.zs = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  store ptr %i.zs, ptr %26, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 40, ptr %i.a, align 8, !tbaa !29
  %i.zt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc341 unwind label %bb.dj ; 3 uses

.noexc341:                                        ; preds = %.noexc.i340
  store ptr %i.zt, ptr %26, align 8, !tbaa !47
  %i.zu = load i64, ptr %i.a, align 8, !tbaa !29  ; 3 uses
  store i64 %i.zu, ptr %i.zs, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.zt, ptr noundef nonnull align 1 dereferenceable(40) @.str.96, i64 40, i1 false)
  %i.zv = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %i.zu, ptr %i.zv, align 8, !tbaa !20
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zt, i64 %i.zu
  store i8 0, ptr %i.zw, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.zx = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %26, i32 noundef 4)
          to label %bb.di unwind label %bb.dk     ; 0 uses

bb.di:                                            ; preds = %.noexc341
  %i.zy = load ptr, ptr %26, align 8, !tbaa !47   ; 2 uses
  %i.zz = icmp eq ptr %i.zy, %i.zs
  br i1 %i.zz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343: ; preds = %bb.di
  %i.aaa = load i64, ptr %i.zs, align 8, !tbaa !23
  %i.aab = add i64 %i.aaa, 1
  call void @_ZdlPvm(ptr noundef %i.zy, i64 noundef %i.aab) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %bb.dv

bb.dj:                                            ; preds = %.noexc.i340
  %i.aac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348

bb.dk:                                            ; preds = %.noexc341
  %i.aad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aae = load ptr, ptr %26, align 8, !tbaa !47  ; 2 uses
  %i.aaf = icmp eq ptr %i.aae, %i.zs
  br i1 %i.aaf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346: ; preds = %bb.dk
  %i.aag = load i64, ptr %i.zs, align 8, !tbaa !23
  %i.aah = add i64 %i.aag, 1
  call void @_ZdlPvm(ptr noundef %i.aae, i64 noundef %i.aah) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348: ; preds = %bb.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346, %bb.dj
  %.pn93 = phi { ptr, i32 } [ %i.aac, %bb.dj ], [ %i.aad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346 ], [ %i.aad, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %bb.dy

_ZN12colvarmodule10atom_group14center_ref_posEv.exit: ; preds = %scalar.ph642, %middle.block655, %._crit_edge20.critedge.i
  %i.aai = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 97
  %i.aak = load i8, ptr %i.aaj, align 1, !tbaa !71, !range !74, !noundef !75
  %i.aal = trunc nuw i8 %i.aak to i1
  br i1 %i.aal, label %bb.dl, label %bb.dv
end_hunk_0
