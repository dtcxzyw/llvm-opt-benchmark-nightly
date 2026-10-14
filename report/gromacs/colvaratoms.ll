Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvaratoms?download=true
inline.NumInlined: 2814
inline.NumDeleted: 782
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 23
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
  store ptr %i.uu, ptr %i.uk, align 8, !tbaa !116
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge, %bb.de, %bb.df, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  %i.uv = phi i64 [ %.pre415, %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge ], [ %.pre-phi422, %bb.de ], [ %.pre-phi422, %bb.df ], [ %.pre-phi422, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ] ; 31 uses
  %.not411 = icmp eq i64 %i.uv, 0
  br i1 %.not411, label %._crit_edge20.critedge.i, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.uw = load ptr, ptr %10, align 8, !tbaa !113  ; 9 uses
  %i.ux = load ptr, ptr %i.ui, align 8, !tbaa !114 ; 9 uses
  %.idx.i = shl i64 %i.uv, 4                      ; 6 uses
  %min.iters.check = icmp ult i64 %i.uv, 42
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.uy = shl i64 %i.uv, 3
  %i.uz = getelementptr i8, ptr %i.ux, i64 %i.uy  ; 3 uses
  %i.va = getelementptr i8, ptr %i.ux, i64 %.idx.i ; 3 uses
  %i.vb = mul i64 %i.uv, 24                       ; 2 uses
  %i.vc = getelementptr i8, ptr %i.ux, i64 %i.vb  ; 2 uses
  %i.vd = getelementptr i8, ptr %i.uw, i64 %i.vb  ; 3 uses
  %bound0620 = icmp ult ptr %i.ux, %i.vc
  %bound1621 = icmp ult ptr %i.va, %i.uz
  %found.conflict622 = and i1 %bound0620, %bound1621
  %bound0623 = icmp ult ptr %i.ux, %i.vd
  %bound1624 = icmp ult ptr %i.uw, %i.uz
  %found.conflict625 = and i1 %bound0623, %bound1624
  %conflict.rdx626 = or i1 %found.conflict622, %found.conflict625
  %bound0631 = icmp ult ptr %i.uz, %i.vd
  %bound1632 = icmp ult ptr %i.uw, %i.va
  %found.conflict633 = and i1 %bound0631, %bound1632
  %conflict.rdx634 = or i1 %conflict.rdx626, %found.conflict633
  %bound0635 = icmp ult ptr %i.va, %i.vd
  %bound1636 = icmp ult ptr %i.uw, %i.vc
  %found.conflict637 = and i1 %bound0635, %bound1636
  %conflict.rdx638 = or i1 %conflict.rdx634, %found.conflict637
  br i1 %conflict.rdx638, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.uv, -2                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ve = getelementptr inbounds nuw [24 x i8], ptr %i.uw, i64 %index ; 3 uses
  %i.vf = getelementptr inbounds nuw [24 x i8], ptr %i.uw, i64 %index ; 3 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 24
  %i.vh = load double, ptr %i.ve, align 8, !tbaa !117, !alias.scope !571
  %i.vi = load double, ptr %i.vg, align 8, !tbaa !117, !alias.scope !571
  %i.vj = insertelement <2 x double> poison, double %i.vh, i64 0
  %i.vk = insertelement <2 x double> %i.vj, double %i.vi, i64 1
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %index ; 3 uses
  store <2 x double> %i.vk, ptr %i.vl, align 8, !tbaa !109, !alias.scope !572, !noalias !573
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vf, i64 32
  %i.vo = load double, ptr %i.vm, align 8, !tbaa !118, !alias.scope !571
  %i.vp = load double, ptr %i.vn, align 8, !tbaa !118, !alias.scope !571
  %i.vq = insertelement <2 x double> poison, double %i.vo, i64 0
  %i.vr = insertelement <2 x double> %i.vq, double %i.vp, i64 1
  %i.vs = getelementptr [8 x i8], ptr %i.vl, i64 %i.uv
  store <2 x double> %i.vr, ptr %i.vs, align 8, !tbaa !109, !alias.scope !574, !noalias !575
  %i.vt = getelementptr inbounds nuw i8, ptr %i.ve, i64 16
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vf, i64 40
  %i.vv = load double, ptr %i.vt, align 8, !tbaa !119, !alias.scope !571
  %i.vw = load double, ptr %i.vu, align 8, !tbaa !119, !alias.scope !571
  %i.vx = insertelement <2 x double> poison, double %i.vv, i64 0
  %i.vy = insertelement <2 x double> %i.vx, double %i.vw, i64 1
  %i.vz = getelementptr i8, ptr %i.vl, i64 %.idx.i
  store <2 x double> %i.vy, ptr %i.vz, align 8, !tbaa !109, !alias.scope !576, !noalias !571
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.wa = icmp eq i64 %index.next, %n.vec
  br i1 %i.wa, label %middle.block, label %vector.body, !llvm.loop !541

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
  %i.wb = getelementptr inbounds nuw [24 x i8], ptr %i.uw, i64 %.0410.ph ; 3 uses
  %i.wc = load double, ptr %i.wb, align 8, !tbaa !117
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %.0410.ph ; 3 uses
  store double %i.wc, ptr %i.wd, align 8, !tbaa !109
  %i.we = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  %i.wf = load double, ptr %i.we, align 8, !tbaa !118
  %i.wg = getelementptr [8 x i8], ptr %i.wd, i64 %i.uv
  store double %i.wf, ptr %i.wg, align 8, !tbaa !109
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wb, i64 16
  %i.wi = load double, ptr %i.wh, align 8, !tbaa !119
  %i.wj = getelementptr i8, ptr %i.wd, i64 %.idx.i
  store double %i.wi, ptr %i.wj, align 8, !tbaa !109
  %i.wk = or disjoint i64 %.0410.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0410.unr = phi i64 [ %.0410.ph, %scalar.ph.preheader ], [ %i.wk, %scalar.ph.prol ]
  %i.wl = icmp eq i64 %i.uv, %.neg
  br i1 %i.wl, label %.lr.ph.i, label %scalar.ph

.lr.ph.i:                                         ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 1504 ; 10 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1512 ; 5 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1520 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wm, i8 0, i64 24, i1 false)
  %i.wn = load ptr, ptr %i.ui, align 8, !tbaa !114 ; 10 uses
  %.idx.i.i = shl i64 %i.uv, 4                    ; 5 uses
  %xtraiter710 = and i64 %i.uv, 1
  %i.wo = icmp eq i64 %i.uv, 1
  br i1 %i.wo, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.uv, -2
  br label %bb.dg

._crit_edge.i.unr-lcssa:                          ; preds = %bb.dg
  %lcmp.mod715.not = icmp eq i64 %xtraiter710, 0
  br i1 %lcmp.mod715.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.epil.init = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.yn, %._crit_edge.i.unr-lcssa ]
  %.epil.init712 = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.yk, %._crit_edge.i.unr-lcssa ]
  %.01014.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.yo, %._crit_edge.i.unr-lcssa ]
  %.epil.init714 = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.yi, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod719 = trunc i64 %i.uv to i1
  call void @llvm.assume(i1 %lcmp.mod719)
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %i.wn, i64 %.01014.i.epil.init ; 3 uses
  %i.wq = load double, ptr %i.wp, align 8, !tbaa !109
  %i.wr = getelementptr [8 x i8], ptr %i.wp, i64 %i.uv
  %i.ws = fadd double %.epil.init714, %i.wq       ; 2 uses
  store double %i.ws, ptr %i.wm, align 8, !tbaa !204
  %i.wt = load double, ptr %i.wr, align 8, !tbaa !109
  %i.wu = fadd double %.epil.init712, %i.wt       ; 2 uses
  store double %i.wu, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !205
  %i.wv = getelementptr i8, ptr %i.wp, i64 %.idx.i.i
  %i.ww = load double, ptr %i.wv, align 8, !tbaa !109
  %i.wx = fadd double %.epil.init, %i.ww          ; 2 uses
  store double %i.wx, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !206
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa709 = phi double [ %i.yi, %._crit_edge.i.unr-lcssa ], [ %i.ws, %.epil.preheader ]
  %.lcssa708 = phi double [ %i.yk, %._crit_edge.i.unr-lcssa ], [ %i.wu, %.epil.preheader ]
  %.lcssa = phi double [ %i.yn, %._crit_edge.i.unr-lcssa ], [ %i.wx, %.epil.preheader ]
  %i.wy = uitofp i64 %i.uv to double              ; 2 uses
  %i.wz = insertelement <2 x double> poison, double %.lcssa709, i64 0
  %i.xa = insertelement <2 x double> %i.wz, double %.lcssa708, i64 1
  %i.xb = insertelement <2 x double> poison, double %i.wy, i64 0
  %i.xc = shufflevector <2 x double> %i.xb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xd = fdiv <2 x double> %i.xa, %i.xc
  store <2 x double> %i.xd, ptr %i.wm, align 8, !tbaa !109
  %i.xe = fdiv double %.lcssa, %i.wy
  store double %i.xe, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !119
  %min.iters.check661 = icmp ult i64 %i.uv, 12
  br i1 %min.iters.check661, label %scalar.ph660.preheader, label %vector.memcheck662

vector.memcheck662:                               ; preds = %._crit_edge.i
  %i.xf = shl i64 %i.uv, 3
  %i.xg = getelementptr i8, ptr %i.wn, i64 %i.xf  ; 3 uses
  %i.xh = getelementptr i8, ptr %i.wn, i64 %.idx.i ; 3 uses
  %i.xi = mul i64 %i.uv, 24
  %i.xj = getelementptr i8, ptr %i.wn, i64 %i.xi  ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 3 uses
  %bound0666 = icmp ult ptr %i.wn, %i.xj
  %bound1667 = icmp ult ptr %i.xh, %i.xg
  %found.conflict668 = and i1 %bound0666, %bound1667
  %bound0670 = icmp ult ptr %i.wn, %i.xk
  %bound1671 = icmp ult ptr %i.wm, %i.xg
  %found.conflict672 = and i1 %bound0670, %bound1671
  %conflict.rdx673 = or i1 %found.conflict668, %found.conflict672
  %bound0678 = icmp ult ptr %i.xg, %i.xk
  %bound1679 = icmp ult ptr %i.wm, %i.xh
  %found.conflict680 = and i1 %bound0678, %bound1679
  %conflict.rdx681 = or i1 %conflict.rdx673, %found.conflict680
  %bound0682 = icmp ult ptr %i.xh, %i.xk
  %bound1683 = icmp ult ptr %i.wm, %i.xj
  %found.conflict684 = and i1 %bound0682, %bound1683
  %conflict.rdx685 = or i1 %conflict.rdx681, %found.conflict684
  br i1 %conflict.rdx685, label %scalar.ph660.preheader, label %vector.ph686

vector.ph686:                                     ; preds = %vector.memcheck662
  %n.vec687 = and i64 %i.uv, -2                   ; 3 uses
  %29 = load <1 x double>, ptr %i.wm, align 8
  %broadcast.splat = shufflevector <1 x double> %29, <1 x double> poison, <2 x i32> zeroinitializer
  %30 = load <1 x double>, ptr %.sroa.4.0..sroa_idx.i, align 8
  %broadcast.splat692 = shufflevector <1 x double> %30, <1 x double> poison, <2 x i32> zeroinitializer
  %31 = load <1 x double>, ptr %.sroa.5.0..sroa_idx.i, align 8
  %broadcast.splat695 = shufflevector <1 x double> %31, <1 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body688

vector.body688:                                   ; preds = %vector.body688, %vector.ph686
  %index689 = phi i64 [ 0, %vector.ph686 ], [ %index.next696, %vector.body688 ] ; 2 uses
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.wn, i64 %index689 ; 4 uses
  %wide.load = load <2 x double>, ptr %i.xl, align 8, !tbaa !109, !alias.scope !577, !noalias !578
  %i.xm = fsub <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.xm, ptr %i.xl, align 8, !tbaa !109, !alias.scope !577, !noalias !578
  %i.xn = getelementptr [8 x i8], ptr %i.xl, i64 %i.uv ; 2 uses
  %wide.load690 = load <2 x double>, ptr %i.xn, align 8, !tbaa !109, !alias.scope !579, !noalias !580
  %i.xo = fsub <2 x double> %wide.load690, %broadcast.splat692
  store <2 x double> %i.xo, ptr %i.xn, align 8, !tbaa !109, !alias.scope !579, !noalias !580
  %i.xp = getelementptr i8, ptr %i.xl, i64 %.idx.i.i ; 2 uses
  %wide.load693 = load <2 x double>, ptr %i.xp, align 8, !tbaa !109, !alias.scope !581, !noalias !582
  %i.xq = fsub <2 x double> %wide.load693, %broadcast.splat695
  store <2 x double> %i.xq, ptr %i.xp, align 8, !tbaa !109, !alias.scope !581, !noalias !582
  %index.next696 = add nuw i64 %index689, 2       ; 2 uses
  %i.xr = icmp eq i64 %index.next696, %n.vec687
  br i1 %i.xr, label %middle.block697, label %vector.body688, !llvm.loop !547

middle.block697:                                  ; preds = %vector.body688
  %cmp.n698 = icmp eq i64 %i.uv, %n.vec687
  br i1 %cmp.n698, label %_ZN12colvarmodule10atom_group14center_ref_posEv.exit, label %scalar.ph660.preheader

scalar.ph660.preheader:                           ; preds = %vector.memcheck662, %._crit_edge.i, %middle.block697
  %.017.i.ph = phi i64 [ 0, %vector.memcheck662 ], [ 0, %._crit_edge.i ], [ %n.vec687, %middle.block697 ]
  br label %scalar.ph660

bb.dg:                                            ; preds = %bb.dg, %.lr.ph.i.new
  %i.xs = phi double [ 0.000000e+00, %.lr.ph.i.new ], [ %i.yn, %bb.dg ]
  %i.xt = phi double [ 0.000000e+00, %.lr.ph.i.new ], [ %i.yk, %bb.dg ]
  %.01014.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.yo, %bb.dg ] ; 3 uses
  %i.xu = phi double [ 0.000000e+00, %.lr.ph.i.new ], [ %i.yi, %bb.dg ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.dg ]
  %i.xv = getelementptr inbounds nuw [8 x i8], ptr %i.wn, i64 %.01014.i ; 3 uses
  %i.xw = load double, ptr %i.xv, align 8, !tbaa !109
  %i.xx = getelementptr [8 x i8], ptr %i.xv, i64 %i.uv
  %i.xy = fadd double %i.xu, %i.xw                ; 2 uses
  store double %i.xy, ptr %i.wm, align 8, !tbaa !204
  %i.xz = load double, ptr %i.xx, align 8, !tbaa !109
  %i.ya = fadd double %i.xt, %i.xz                ; 2 uses
  store double %i.ya, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !205
  %i.yb = getelementptr i8, ptr %i.xv, i64 %.idx.i.i
  %i.yc = load double, ptr %i.yb, align 8, !tbaa !109
  %i.yd = fadd double %i.xs, %i.yc                ; 2 uses
  store double %i.yd, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !206
  %i.ye = getelementptr inbounds nuw [8 x i8], ptr %i.wn, i64 %.01014.i
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 8 ; 3 uses
  %i.yg = load double, ptr %i.yf, align 8, !tbaa !109
  %i.yh = getelementptr [8 x i8], ptr %i.yf, i64 %i.uv
  %i.yi = fadd double %i.xy, %i.yg                ; 4 uses
  store double %i.yi, ptr %i.wm, align 8, !tbaa !204
  %i.yj = load double, ptr %i.yh, align 8, !tbaa !109
  %i.yk = fadd double %i.ya, %i.yj                ; 4 uses
  store double %i.yk, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !205
  %i.yl = getelementptr i8, ptr %i.yf, i64 %.idx.i.i
  %i.ym = load double, ptr %i.yl, align 8, !tbaa !109
  %i.yn = fadd double %i.yd, %i.ym                ; 4 uses
  store double %i.yn, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !206
  %i.yo = add nuw i64 %.01014.i, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.dg, !llvm.loop !7

._crit_edge20.critedge.i:                         ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %.sroa.5.0..sroa_idx.i597 = getelementptr inbounds nuw i8, ptr %0, i64 1520
  store <2 x double> splat (double +qnan), ptr %i.yp, align 8, !tbaa !109
  store double +qnan, ptr %.sroa.5.0..sroa_idx.i597, align 8, !tbaa !119
  br label %_ZN12colvarmodule10atom_group14center_ref_posEv.exit

scalar.ph660:                                     ; preds = %scalar.ph660.preheader, %scalar.ph660
  %.017.i = phi i64 [ %i.zc, %scalar.ph660 ], [ %.017.i.ph, %scalar.ph660.preheader ] ; 2 uses
  %i.yq = load double, ptr %i.wm, align 8, !tbaa !204
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %i.wn, i64 %.017.i ; 4 uses
  %i.ys = load double, ptr %i.yr, align 8, !tbaa !109
  %i.yt = fsub double %i.ys, %i.yq
  store double %i.yt, ptr %i.yr, align 8, !tbaa !109
  %i.yu = load double, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !205
  %i.yv = getelementptr [8 x i8], ptr %i.yr, i64 %i.uv ; 2 uses
  %i.yw = load double, ptr %i.yv, align 8, !tbaa !109
  %i.yx = fsub double %i.yw, %i.yu
  store double %i.yx, ptr %i.yv, align 8, !tbaa !109
  %i.yy = load double, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !206
  %i.yz = getelementptr i8, ptr %i.yr, i64 %.idx.i.i ; 2 uses
  %i.za = load double, ptr %i.yz, align 8, !tbaa !109
  %i.zb = fsub double %i.za, %i.yy
  store double %i.zb, ptr %i.yz, align 8, !tbaa !109
  %i.zc = add nuw i64 %.017.i, 1                  ; 2 uses
  %exitcond22.not.i = icmp eq i64 %i.zc, %i.uv
  br i1 %exitcond22.not.i, label %_ZN12colvarmodule10atom_group14center_ref_posEv.exit, label %scalar.ph660, !llvm.loop !548

bb.dh:                                            ; preds = %bb.dd
  %i.zd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0410 = phi i64 [ %i.zx, %scalar.ph ], [ %.0410.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ze = getelementptr inbounds nuw [24 x i8], ptr %i.uw, i64 %.0410 ; 3 uses
  %i.zf = load double, ptr %i.ze, align 8, !tbaa !117
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %.0410 ; 3 uses
  store double %i.zf, ptr %i.zg, align 8, !tbaa !109
  %i.zh = getelementptr inbounds nuw i8, ptr %i.ze, i64 8
  %i.zi = load double, ptr %i.zh, align 8, !tbaa !118
  %i.zj = getelementptr [8 x i8], ptr %i.zg, i64 %i.uv
  store double %i.zi, ptr %i.zj, align 8, !tbaa !109
  %i.zk = getelementptr inbounds nuw i8, ptr %i.ze, i64 16
  %i.zl = load double, ptr %i.zk, align 8, !tbaa !119
  %i.zm = getelementptr i8, ptr %i.zg, i64 %.idx.i
  store double %i.zl, ptr %i.zm, align 8, !tbaa !109
  %i.zn = add nuw i64 %.0410, 1                   ; 2 uses
  %i.zo = getelementptr inbounds nuw [24 x i8], ptr %i.uw, i64 %i.zn ; 3 uses
  %i.zp = load double, ptr %i.zo, align 8, !tbaa !117
  %i.zq = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %i.zn ; 3 uses
  store double %i.zp, ptr %i.zq, align 8, !tbaa !109
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zo, i64 8
  %i.zs = load double, ptr %i.zr, align 8, !tbaa !118
  %i.zt = getelementptr [8 x i8], ptr %i.zq, i64 %i.uv
  store double %i.zs, ptr %i.zt, align 8, !tbaa !109
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zo, i64 16
  %i.zv = load double, ptr %i.zu, align 8, !tbaa !119
  %i.zw = getelementptr i8, ptr %i.zq, i64 %.idx.i
  store double %i.zv, ptr %i.zw, align 8, !tbaa !109
  %i.zx = add nuw i64 %.0410, 2                   ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.zx, %i.uv
  br i1 %exitcond.not.1, label %.lr.ph.i, label %scalar.ph, !llvm.loop !549

.noexc.i340:                                      ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  %i.zy = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  store ptr %i.zy, ptr %26, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 40, ptr %i.a, align 8, !tbaa !35
  %i.zz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc341 unwind label %bb.dj ; 3 uses

.noexc341:                                        ; preds = %.noexc.i340
  store ptr %i.zz, ptr %26, align 8, !tbaa !42
  %i.aaa = load i64, ptr %i.a, align 8, !tbaa !35 ; 3 uses
  store i64 %i.aaa, ptr %i.zy, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.zz, ptr noundef nonnull align 1 dereferenceable(40) @.str.96, i64 40, i1 false)
  %i.aab = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %i.aaa, ptr %i.aab, align 8, !tbaa !31
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zz, i64 %i.aaa
  store i8 0, ptr %i.aac, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.aad = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %26, i32 noundef 4)
          to label %bb.di unwind label %bb.dk     ; 0 uses

bb.di:                                            ; preds = %.noexc341
  %i.aae = load ptr, ptr %26, align 8, !tbaa !42  ; 2 uses
  %i.aaf = icmp eq ptr %i.aae, %i.zy
  br i1 %i.aaf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343: ; preds = %bb.di
  %i.aag = load i64, ptr %i.zy, align 8, !tbaa !32
  %i.aah = add i64 %i.aag, 1
  call void @_ZdlPvm(ptr noundef %i.aae, i64 noundef %i.aah) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %bb.dv

bb.dj:                                            ; preds = %.noexc.i340
  %i.aai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348

bb.dk:                                            ; preds = %.noexc341
  %i.aaj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aak = load ptr, ptr %26, align 8, !tbaa !42  ; 2 uses
  %i.aal = icmp eq ptr %i.aak, %i.zy
  br i1 %i.aal, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346: ; preds = %bb.dk
  %i.aam = load i64, ptr %i.zy, align 8, !tbaa !32
  %i.aan = add i64 %i.aam, 1
  call void @_ZdlPvm(ptr noundef %i.aak, i64 noundef %i.aan) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348: ; preds = %bb.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346, %bb.dj
  %.pn93 = phi { ptr, i32 } [ %i.aai, %bb.dj ], [ %i.aaj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346 ], [ %i.aaj, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %bb.dy

_ZN12colvarmodule10atom_group14center_ref_posEv.exit: ; preds = %scalar.ph660, %middle.block697, %._crit_edge20.critedge.i
  %i.aao = load ptr, ptr %i.n, align 8, !tbaa !46
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 97
  %i.aaq = load i8, ptr %i.aap, align 1, !tbaa !53, !range !55, !noundef !56
  %i.aar = trunc nuw i8 %i.aaq to i1
  br i1 %i.aar, label %bb.dl, label %bb.dv

bb.dl:                                            ; preds = %_ZN12colvarmodule10atom_group14center_ref_posEv.exit
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.aat = load i8, ptr %i.aas, align 8, !tbaa !131, !range !55, !noundef !56
  %i.aau = trunc nuw i8 %i.aat to i1
  br i1 %i.aau, label %bb.dv, label %bb.dm
end_hunk_0
begin_hunk_1_@_ZNK12colvarmodule10atom_group14print_atom_idsB5cxx11Ev:._crit_edge.i.i
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 2
  %i.bd = icmp ult i64 %i.aw, %i.bc
  br i1 %i.bd, label %.lr.ph, label %._crit_edge, !llvm.loop !590

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.be = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.be, ptr %2, align 8, !tbaa !20
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bg = getelementptr i8, ptr %i.be, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %2, i64 %i.bh
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !20
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bj, align 8, !tbaa !20
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !42 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !32
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bj, align 8, !tbaa !20
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bq) #28
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.br) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.i
  %.pn14 = phi { ptr, i32 } [ %i.av, %bb.i ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.x, %bb.c ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #28
  br label %bb.j

bb.j:                                             ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %.pn14.pn = phi { ptr, i32 } [ %.pn14, %.body ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn14.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN12colvarmodule10atom_group25setup_rotation_derivativeEv(ptr noundef nonnull align 8 dereferenceable(1712) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 712) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %.not4 = icmp eq ptr %i.d, null
  %spec.select = select i1 %.not4, ptr %0, ptr %i.d ; 2 uses
  %i.e = tail call noalias noundef nonnull dereferenceable(712) ptr @_Znwm(i64 noundef 712) #30 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.g = getelementptr inbounds nuw i8, ptr %spec.select, i64 1176
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 1144
  %i.j = load i64, ptr %i.i, align 8, !tbaa !108  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.l = load i64, ptr %i.k, align 8, !tbaa !196  ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !198
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !138  ; 2 uses
  store ptr %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.p = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.j ; 2 uses
  store ptr %i.p, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.r = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.j
  store ptr %i.r, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !138  ; 2 uses
  store ptr %i.t, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.v = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.l ; 2 uses
  store ptr %i.v, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.l
  store ptr %i.x, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %i.j, ptr %i.y, align 8, !tbaa !201
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 %i.l, ptr %i.z, align 8, !tbaa !202
  store ptr %i.e, ptr %i.a, align 8, !tbaa !136
  ret void
}

declare noundef i32 @_ZN11colvarparse14check_keywordsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(320), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN11colvarparse10get_keyvalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRSt6vectorIN12colvarmodule7rvectorESaISC_EERKSE_NS_10Parse_ModeE(ptr noundef nonnull align 8 dereferenceable(320), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #0

declare noundef i32 @_ZN12colvarmodule11load_coordsEPKcPSt6vectorINS_7rvectorESaIS3_EEPNS_10atom_groupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), double noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN12colvarmodule10atom_group14center_ref_posEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1712) initializes((1504, 1528)) %0) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1504 ; 11 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1512 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1520 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1496
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.c = load i64, ptr %i.b, align 8, !tbaa !196  ; 20 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge20.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !114  ; 3 uses
  %.idx.i = shl i64 %i.c, 4                       ; 4 uses
  %xtraiter = and i64 %i.c, 1
  %i.f = icmp eq i64 %i.c, 1
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.c, -2
  br label %bb.b

._crit_edge.unr-lcssa:                            ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.bg, %._crit_edge.unr-lcssa ]
  %.epil.init71 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.bd, %._crit_edge.unr-lcssa ]
  %.01014.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bh, %._crit_edge.unr-lcssa ]
  %.epil.init73 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.bb, %._crit_edge.unr-lcssa ]
  %lcmp.mod77 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod77)
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.01014.epil.init ; 3 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !109
  %i.i = getelementptr [8 x i8], ptr %i.g, i64 %i.c
  %i.j = fadd double %i.h, %.epil.init73          ; 2 uses
  store double %i.j, ptr %i.a, align 8, !tbaa !204
  %i.k = load double, ptr %i.i, align 8, !tbaa !109
  %i.l = fadd double %i.k, %.epil.init71          ; 2 uses
  store double %i.l, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !205
  %i.m = getelementptr i8, ptr %i.g, i64 %.idx.i
  %i.n = load double, ptr %i.m, align 8, !tbaa !109
  %i.o = fadd double %i.n, %.epil.init            ; 2 uses
  store double %i.o, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !206
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.lcssa69 = phi double [ %i.bb, %._crit_edge.unr-lcssa ], [ %i.j, %.epil.preheader ]
  %.lcssa68 = phi double [ %i.bd, %._crit_edge.unr-lcssa ], [ %i.l, %.epil.preheader ]
  %.lcssa = phi double [ %i.bg, %._crit_edge.unr-lcssa ], [ %i.o, %.epil.preheader ]
  %i.p = uitofp i64 %i.c to double                ; 2 uses
  %i.q = insertelement <2 x double> poison, double %.lcssa69, i64 0
  %i.r = insertelement <2 x double> %i.q, double %.lcssa68, i64 1
  %i.s = insertelement <2 x double> poison, double %i.p, i64 0
  %i.t = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer
  %i.u = fdiv <2 x double> %i.r, %i.t
  store <2 x double> %i.u, ptr %i.a, align 8, !tbaa !109
  %i.v = fdiv double %.lcssa, %i.p
  store double %i.v, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !119
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !114  ; 7 uses
  %.idx.i11 = shl i64 %i.c, 4                     ; 2 uses
  %min.iters.check = icmp ult i64 %i.c, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %._crit_edge
  %i.y = shl i64 %i.c, 3
  %i.z = getelementptr i8, ptr %i.x, i64 %i.y     ; 3 uses
  %i.aa = getelementptr i8, ptr %i.x, i64 %.idx.i ; 3 uses
  %i.ab = mul i64 %i.c, 24
  %i.ac = getelementptr i8, ptr %i.x, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 3 uses
  %bound043 = icmp ult ptr %i.x, %i.ac
  %bound144 = icmp ult ptr %i.aa, %i.z
  %found.conflict45 = and i1 %bound043, %bound144
  %bound046 = icmp ult ptr %i.x, %i.ad
  %bound147 = icmp ult ptr %i.a, %i.z
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx49 = or i1 %found.conflict45, %found.conflict48
  %bound054 = icmp ult ptr %i.z, %i.ad
  %bound155 = icmp ult ptr %i.a, %i.aa
  %found.conflict56 = and i1 %bound054, %bound155
  %conflict.rdx57 = or i1 %conflict.rdx49, %found.conflict56
  %bound058 = icmp ult ptr %i.aa, %i.ad
  %bound159 = icmp ult ptr %i.a, %i.ac
  %found.conflict60 = and i1 %bound058, %bound159
  %conflict.rdx61 = or i1 %conflict.rdx57, %found.conflict60
  br i1 %conflict.rdx61, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.c, -2                       ; 3 uses
  %1 = load <1 x double>, ptr %i.a, align 8
  %broadcast.splat = shufflevector <1 x double> %1, <1 x double> poison, <2 x i32> zeroinitializer
  %2 = load <1 x double>, ptr %.sroa.4.0..sroa_idx, align 8
  %broadcast.splat64 = shufflevector <1 x double> %2, <1 x double> poison, <2 x i32> zeroinitializer
  %3 = load <1 x double>, ptr %.sroa.5.0..sroa_idx, align 8
  %broadcast.splat67 = shufflevector <1 x double> %3, <1 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index ; 4 uses
  %wide.load = load <2 x double>, ptr %i.ae, align 8, !tbaa !109, !alias.scope !605, !noalias !606
  %i.af = fsub <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.af, ptr %i.ae, align 8, !tbaa !109, !alias.scope !605, !noalias !606
  %i.ag = getelementptr [8 x i8], ptr %i.ae, i64 %i.c ; 2 uses
  %wide.load62 = load <2 x double>, ptr %i.ag, align 8, !tbaa !109, !alias.scope !607, !noalias !608
  %i.ah = fsub <2 x double> %wide.load62, %broadcast.splat64
  store <2 x double> %i.ah, ptr %i.ag, align 8, !tbaa !109, !alias.scope !607, !noalias !608
  %i.ai = getelementptr i8, ptr %i.ae, i64 %.idx.i11 ; 2 uses
  %wide.load65 = load <2 x double>, ptr %i.ai, align 8, !tbaa !109, !alias.scope !609, !noalias !610
  %i.aj = fsub <2 x double> %wide.load65, %broadcast.splat67
  store <2 x double> %i.aj, ptr %i.ai, align 8, !tbaa !109, !alias.scope !609, !noalias !610
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !603

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %._crit_edge20, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %._crit_edge, %middle.block
  %.017.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %._crit_edge ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %i.al = phi double [ 0.000000e+00, %.lr.ph.new ], [ %i.bg, %bb.b ]
  %i.am = phi double [ 0.000000e+00, %.lr.ph.new ], [ %i.bd, %bb.b ]
  %.01014 = phi i64 [ 0, %.lr.ph.new ], [ %i.bh, %bb.b ] ; 3 uses
  %i.an = phi double [ 0.000000e+00, %.lr.ph.new ], [ %i.bb, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.01014 ; 3 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !109
  %i.aq = getelementptr [8 x i8], ptr %i.ao, i64 %i.c
  %i.ar = fadd double %i.ap, %i.an                ; 2 uses
  store double %i.ar, ptr %i.a, align 8, !tbaa !204
  %i.as = load double, ptr %i.aq, align 8, !tbaa !109
  %i.at = fadd double %i.as, %i.am                ; 2 uses
  store double %i.at, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !205
  %i.au = getelementptr i8, ptr %i.ao, i64 %.idx.i
  %i.av = load double, ptr %i.au, align 8, !tbaa !109
  %i.aw = fadd double %i.av, %i.al                ; 2 uses
  store double %i.aw, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !206
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.01014
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !109
  %i.ba = getelementptr [8 x i8], ptr %i.ay, i64 %i.c
  %i.bb = fadd double %i.az, %i.ar                ; 4 uses
  store double %i.bb, ptr %i.a, align 8, !tbaa !204
  %i.bc = load double, ptr %i.ba, align 8, !tbaa !109
  %i.bd = fadd double %i.bc, %i.at                ; 4 uses
  store double %i.bd, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !205
  %i.be = getelementptr i8, ptr %i.ay, i64 %.idx.i
  %i.bf = load double, ptr %i.be, align 8, !tbaa !109
  %i.bg = fadd double %i.bf, %i.aw                ; 4 uses
  store double %i.bg, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !206
  %i.bh = add nuw i64 %.01014, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.b, !llvm.loop !7

._crit_edge20.critedge:                           ; preds = %bb.a
  %i.bi = uitofp i64 %i.c to double               ; 2 uses
  %i.bj = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bk = fdiv <2 x double> <double 0.000000e+00, double poison>, %i.bj
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  store <2 x double> %i.bl, ptr %i.a, align 8, !tbaa !109
  %i.bm = fdiv double 0.000000e+00, %i.bi
  store double %i.bm, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !119
  br label %._crit_edge20

._crit_edge20:                                    ; preds = %scalar.ph, %middle.block, %._crit_edge20.critedge
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.017 = phi i64 [ %i.bz, %scalar.ph ], [ %.017.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bn = load double, ptr %i.a, align 8, !tbaa !204
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.017 ; 4 uses
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !109
  %i.bq = fsub double %i.bp, %i.bn
  store double %i.bq, ptr %i.bo, align 8, !tbaa !109
  %i.br = load double, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !205
  %i.bs = getelementptr [8 x i8], ptr %i.bo, i64 %i.c ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !109
  %i.bu = fsub double %i.bt, %i.br
  store double %i.bu, ptr %i.bs, align 8, !tbaa !109
  %i.bv = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !206
  %i.bw = getelementptr i8, ptr %i.bo, i64 %.idx.i11 ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !109
  %i.by = fsub double %i.bx, %i.bv
  store double %i.by, ptr %i.bw, align 8, !tbaa !109
  %i.bz = add nuw i64 %.017, 1                    ; 2 uses
  %exitcond22.not = icmp eq i64 %i.bz, %i.c
  br i1 %exitcond22.not, label %._crit_edge20, label %scalar.ph, !llvm.loop !604
}

; Function Attrs: mustprogress uwtable
define void @_ZN12colvarmodule10atom_group16print_propertiesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii(ptr noundef nonnull align 8 dereferenceable(1712) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !122
  store i32 %3, ptr %i.b, align 4, !tbaa !122
  %i.d = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !135 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 461
  %i.f = load i8, ptr %i.e, align 1, !tbaa !194, !range !55, !noundef !56
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.bt

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 462
  %i.i = load i8, ptr %i.h, align 2, !tbaa !195, !range !55, !noundef !56
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.bt

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637)
  %i.k = load ptr, ptr %1, align 8, !tbaa !42, !noalias !637
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !31, !noalias !637 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 8 uses
  store ptr %i.n, ptr %15, align 8, !tbaa !28, !alias.scope !638
  %i.o = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  store i64 0, ptr %i.o, align 8, !tbaa !31, !alias.scope !638
  store i8 0, ptr %i.n, align 8, !tbaa !32, !alias.scope !638
  %i.p = add i64 %i.m, 40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef %i.p)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.o, align 8, !tbaa !31, !alias.scope !638
  %i.r = add i64 %i.q, -4611686018427387864
  %i.s = icmp ult i64 %i.r, 40
  br i1 %i.s, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.d
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.107, i64 noundef 40)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.e ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.u = load i64, ptr %i.o, align 8, !tbaa !31, !alias.scope !638
  %i.v = sub i64 4611686018427387903, %i.u
  %i.w = icmp ult i64 %i.v, %i.m
  br i1 %i.w, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #31
          to label %.cont.i.i unwind label %bb.e

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef %i.k, i64 noundef %i.m)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %15, align 8, !tbaa !42, !alias.scope !638 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.n
  br i1 %i.aa, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.ab = load i64, ptr %i.n, align 8, !tbaa !32, !alias.scope !638
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #29
end_hunk_1
begin_hunk_2_@_ZN12colvarmodule10atom_group27calc_apply_roto_translationEv:bb.a
  %i.fc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat111, <2 x double> %wide.load116, <2 x double> %i.fb)
  %i.fd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat113, <2 x double> %wide.load118, <2 x double> %i.fc)
  store <2 x double> %i.ex, ptr %i.es, align 8, !tbaa !109, !alias.scope !707, !noalias !708
  store <2 x double> %i.fa, ptr %i.et, align 8, !tbaa !109, !alias.scope !709, !noalias !710
  store <2 x double> %i.fd, ptr %i.ew, align 8, !tbaa !109, !alias.scope !710
  %index.next119 = add nuw i64 %index115, 2       ; 2 uses
  %i.fe = icmp eq i64 %index.next119, %n.vec95
  br i1 %i.fe, label %middle.block120, label %vector.body114, !llvm.loop !698

middle.block120:                                  ; preds = %vector.body114
  %cmp.n121 = icmp eq i64 %i.ek, %n.vec95
  br i1 %cmp.n121, label %_ZN12colvarmodule10atom_group6rotateERKNS_7rmatrixE.exit17, label %scalar.ph80.preheader

scalar.ph80.preheader:                            ; preds = %vector.memcheck82, %.lr.ph.i13, %middle.block120
  %.029.i15.ph = phi i64 [ 0, %vector.memcheck82 ], [ 0, %.lr.ph.i13 ], [ %n.vec95, %middle.block120 ]
  %i.ff = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.fg = insertelement <2 x double> %i.ff, double %i.by, i64 1
  %i.fh = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.fi = insertelement <2 x double> %i.fh, double %i.cb, i64 1
  %i.fj = extractelement <2 x double> %i.bo, i64 1
  br label %scalar.ph80

scalar.ph80:                                      ; preds = %scalar.ph80.preheader, %scalar.ph80
  %.029.i15 = phi i64 [ %i.ge, %scalar.ph80 ], [ %.029.i15.ph, %scalar.ph80.preheader ] ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %.029.i15 ; 4 uses
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !109 ; 2 uses
  %i.fm = getelementptr [8 x i8], ptr %i.fk, i64 %i.ek ; 2 uses
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !109 ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fk, i64 %.idx.i.i14 ; 2 uses
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !109 ; 2 uses
  %i.fq = insertelement <2 x double> poison, double %i.fn, i64 0
  %i.fr = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fs = fmul <2 x double> %i.fg, %i.fr
  %i.ft = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> %i.fu, <2 x double> %i.fs)
  %i.fw = insertelement <2 x double> poison, double %i.fp, i64 0
  %i.fx = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.fx, <2 x double> %i.fv) ; 2 uses
  %i.fz = fmul double %i.cl, %i.fn
  %i.ga = tail call double @llvm.fmuladd.f64(double %i.cj, double %i.fl, double %i.fz)
  %i.gb = tail call double @llvm.fmuladd.f64(double %i.fj, double %i.fp, double %i.ga)
  %i.gc = extractelement <2 x double> %i.fy, i64 0
  store double %i.gc, ptr %i.fk, align 8, !tbaa !109
  %i.gd = extractelement <2 x double> %i.fy, i64 1
  store double %i.gd, ptr %i.fm, align 8, !tbaa !109
  store double %i.gb, ptr %i.fo, align 8, !tbaa !109
  %i.ge = add nuw i64 %.029.i15, 1                ; 2 uses
  %exitcond.not.i16 = icmp eq i64 %i.ge, %i.ek
  br i1 %exitcond.not.i16, label %_ZN12colvarmodule10atom_group6rotateERKNS_7rmatrixE.exit17, label %scalar.ph80, !llvm.loop !699

_ZN12colvarmodule10atom_group6rotateERKNS_7rmatrixE.exit17: ; preds = %scalar.ph80, %middle.block120, %_ZN12colvarmodule10atom_group6rotateERKNS_7rmatrixE.exit, %bb.k, %bb.i
  %i.gf = load ptr, ptr %i.g, align 8, !tbaa !46  ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 33
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !53, !range !55, !noundef !56
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZN12colvarmodule10atom_group6rotateERKNS_7rmatrixE.exit17
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 65
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !53, !range !55, !noundef !56
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 1504 ; 2 uses
  tail call void @_ZN12colvarmodule10atom_group17apply_translationERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.gm)
  %i.gn = load ptr, ptr %i.c, align 8, !tbaa !107 ; 2 uses
  %.not11 = icmp eq ptr %i.gn, null
  br i1 %.not11, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN12colvarmodule10atom_group17apply_translationERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %i.gn, ptr noundef nonnull align 8 dereferenceable(24) %i.gm)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l, %_ZN12colvarmodule10atom_group6rotateERKNS_7rmatrixE.exit17
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN12colvarmodule10atom_group17apply_translationERKNS_7rvectorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1712) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.d = load i8, ptr %i.c, align 8, !tbaa !130, !range !55, !noundef !56
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.noexc.i, label %bb.e

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 63, ptr %i.b, align 8, !tbaa !35
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.g, ptr %2, align 8, !tbaa !42
  %i.h = load i64, ptr %i.b, align 8, !tbaa !35   ; 3 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %i.g, ptr noundef nonnull align 1 dereferenceable(63) @.str.117, i64 63, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  store i8 0, ptr %i.j, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.k = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 4)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %.noexc
  %i.l = load ptr, ptr %2, align 8, !tbaa !42     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.f
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.f, align 8, !tbaa !32
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.loopexit

bb.c:                                             ; preds = %.noexc.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.d:                                             ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !42     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.f
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.d
  %i.t = load i64, ptr %i.f, align 8, !tbaa !32
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.c
  %.pn15 = phi { ptr, i32 } [ %i.p, %bb.c ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %i.q, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 257
  %i.y = load i8, ptr %i.x, align 1, !tbaa !53, !range !55, !noundef !56
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %.noexc.i22, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !108 ; 10 uses
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !114 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.idx.i = shl i64 %i.ab, 4                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.ab, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ag = shl i64 %i.ab, 3
  %i.ah = getelementptr i8, ptr %i.ad, i64 %i.ag  ; 3 uses
  %i.ai = getelementptr i8, ptr %i.ad, i64 %.idx.i ; 3 uses
  %i.aj = mul i64 %i.ab, 24
  %i.ak = getelementptr i8, ptr %i.ad, i64 %i.aj  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %bound056 = icmp ult ptr %i.ad, %i.ak
  %bound157 = icmp ult ptr %i.ai, %i.ah
  %found.conflict58 = and i1 %bound056, %bound157
  %bound059 = icmp ult ptr %i.ad, %i.al
  %bound160 = icmp ult ptr %1, %i.ah
  %found.conflict61 = and i1 %bound059, %bound160
  %conflict.rdx62 = or i1 %found.conflict58, %found.conflict61
  %bound067 = icmp ult ptr %i.ah, %i.al
  %bound168 = icmp ult ptr %1, %i.ai
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx70 = or i1 %conflict.rdx62, %found.conflict69
  %bound071 = icmp ult ptr %i.ai, %i.al
  %bound172 = icmp ult ptr %1, %i.ak
  %found.conflict73 = and i1 %bound071, %bound172
  %conflict.rdx74 = or i1 %conflict.rdx70, %found.conflict73
  br i1 %conflict.rdx74, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, -2                      ; 3 uses
  %4 = load <1 x double>, ptr %1, align 8
  %broadcast.splat = shufflevector <1 x double> %4, <1 x double> poison, <2 x i32> zeroinitializer
  %5 = load <1 x double>, ptr %i.ae, align 8
  %broadcast.splat77 = shufflevector <1 x double> %5, <1 x double> poison, <2 x i32> zeroinitializer
  %i.am = load double, ptr %i.af, align 8, !tbaa !119, !alias.scope !718
  %broadcast.splatinsert79 = insertelement <2 x double> poison, double %i.am, i64 0
  %broadcast.splat80 = shufflevector <2 x double> %broadcast.splatinsert79, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index ; 4 uses
  %wide.load = load <2 x double>, ptr %i.an, align 8, !tbaa !109, !alias.scope !719, !noalias !720
  %i.ao = fadd <2 x double> %broadcast.splat, %wide.load
  store <2 x double> %i.ao, ptr %i.an, align 8, !tbaa !109, !alias.scope !719, !noalias !720
  %i.ap = getelementptr [8 x i8], ptr %i.an, i64 %i.ab ; 2 uses
  %wide.load75 = load <2 x double>, ptr %i.ap, align 8, !tbaa !109, !alias.scope !721, !noalias !722
  %i.aq = fadd <2 x double> %broadcast.splat77, %wide.load75
  store <2 x double> %i.aq, ptr %i.ap, align 8, !tbaa !109, !alias.scope !721, !noalias !722
  %i.ar = getelementptr i8, ptr %i.an, i64 %.idx.i ; 2 uses
  %wide.load78 = load <2 x double>, ptr %i.ar, align 8, !tbaa !109, !alias.scope !723, !noalias !718
  %i.as = fadd <2 x double> %broadcast.splat80, %wide.load78
  store <2 x double> %i.as, ptr %i.ar, align 8, !tbaa !109, !alias.scope !723, !noalias !718
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !716

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.032.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.noexc.i22:                                       ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.au, ptr %3, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 66, ptr %i.a, align 8, !tbaa !35
  %i.av = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc23 unwind label %bb.g   ; 3 uses

.noexc23:                                         ; preds = %.noexc.i22
  store ptr %i.av, ptr %3, align 8, !tbaa !42
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !35  ; 3 uses
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(66) %i.av, ptr noundef nonnull align 1 dereferenceable(66) @.str.118, i64 66, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !31
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  store i8 0, ptr %i.ay, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.az = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 4)
          to label %bb.f unwind label %bb.h       ; 0 uses

bb.f:                                             ; preds = %.noexc23
  %i.ba = load ptr, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.au
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.f
  %i.bc = load i64, ptr %i.au, align 8, !tbaa !32
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.loopexit

bb.g:                                             ; preds = %.noexc.i22
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.h:                                             ; preds = %.noexc23
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.au
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.h
  %i.bi = load i64, ptr %i.au, align 8, !tbaa !32
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.g
  %.pn = phi { ptr, i32 } [ %i.be, %bb.g ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %i.bf, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.032 = phi i64 [ %i.bw, %scalar.ph ], [ %.032.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bk = load double, ptr %1, align 8, !tbaa !117
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.032 ; 4 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !109
  %i.bn = fadd double %i.bk, %i.bm
  store double %i.bn, ptr %i.bl, align 8, !tbaa !109
  %i.bo = load double, ptr %i.ae, align 8, !tbaa !118
  %i.bp = getelementptr [8 x i8], ptr %i.bl, i64 %i.ab ; 2 uses
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !109
  %i.br = fadd double %i.bo, %i.bq
  store double %i.br, ptr %i.bp, align 8, !tbaa !109
  %i.bs = load double, ptr %i.af, align 8, !tbaa !119
  %i.bt = getelementptr i8, ptr %i.bl, i64 %.idx.i ; 2 uses
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !109
  %i.bv = fadd double %i.bs, %i.bu
  store double %i.bv, ptr %i.bt, align 8, !tbaa !109
  %i.bw = add nuw i64 %.032, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bw, %i.ab
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !717

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %.pn15.pn = phi { ptr, i32 } [ %.pn15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ]
  resume { ptr, i32 } %.pn15.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.c = load ptr, ptr %1, align 8, !tbaa !114    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !115
  %i.i = load ptr, ptr %0, align 8, !tbaa !114    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i, !prof !165

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !166

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load double, ptr %i.c, align 8, !tbaa !109
  store double %i.r, ptr %i.o, align 8, !tbaa !109
  br label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit

_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !114    ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !115
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #29
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit: ; preds = %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !114
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !115
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !116  ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 8
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !166

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 8
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load double, ptr %i.c, align 8, !tbaa !109
  store double %i.ae, ptr %i.i, align 8, !tbaa !109
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 8
  br i1 %i.af, label %bb.o, label %bb.p, !prof !166

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !114
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !116 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !114
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !116
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 8
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load double, ptr %i.c, align 8, !tbaa !109
  store double %i.ah, ptr %i.i, align 8, !tbaa !109
  br label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit

_ZSt4copyIPdS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 8, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 8
  br i1 %i.an, label %bb.r, label %bb.s, !prof !166

bb.r:                                             ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ai, ptr align 8 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.am, 8
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load double, ptr %i.ak, align 8, !tbaa !109
  store double %i.ap, ptr %i.ai, align 8, !tbaa !109
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !114
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !116
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

declare void @_ZN12colvarmodule8rotation25calc_optimal_rotation_soaERKSt6vectorIdSaIdEES5_mm(ptr noundef nonnull align 8 dereferenceable(568), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN12colvarmodule10atom_group6rotateERKNS_7rmatrixE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1712) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.b = load i64, ptr %i.a, align 8, !tbaa !108  ; 10 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.idx.i = shl i64 %i.b, 4                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %min.iters.check = icmp ult i64 %i.b, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.m = shl i64 %i.b, 3
  %i.n = getelementptr i8, ptr %i.d, i64 %i.m     ; 3 uses
  %i.o = getelementptr i8, ptr %i.d, i64 %.idx.i  ; 3 uses
  %i.p = mul i64 %i.b, 24
  %i.q = getelementptr i8, ptr %i.d, i64 %i.p     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %bound046 = icmp ult ptr %i.d, %i.q
  %bound147 = icmp ult ptr %i.o, %i.n
  %found.conflict48 = and i1 %bound046, %bound147
  %bound049 = icmp ult ptr %i.d, %i.r
  %bound150 = icmp ult ptr %1, %i.n
  %found.conflict51 = and i1 %bound049, %bound150
  %conflict.rdx52 = or i1 %found.conflict48, %found.conflict51
  %bound057 = icmp ult ptr %i.n, %i.r
  %bound158 = icmp ult ptr %1, %i.o
  %found.conflict59 = and i1 %bound057, %bound158
  %conflict.rdx60 = or i1 %conflict.rdx52, %found.conflict59
  %bound061 = icmp ult ptr %i.o, %i.r
  %bound162 = icmp ult ptr %1, %i.q
  %found.conflict63 = and i1 %bound061, %bound162
  %conflict.rdx64 = or i1 %conflict.rdx60, %found.conflict63
  br i1 %conflict.rdx64, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, -2                       ; 3 uses
  %2 = load <1 x double>, ptr %1, align 8
  %broadcast.splat67 = shufflevector <1 x double> %2, <1 x double> poison, <2 x i32> zeroinitializer
  %3 = load <1 x double>, ptr %i.e, align 8
  %broadcast.splat = shufflevector <1 x double> %3, <1 x double> poison, <2 x i32> zeroinitializer
  %4 = load <1 x double>, ptr %i.f, align 8
  %broadcast.splat70 = shufflevector <1 x double> %4, <1 x double> poison, <2 x i32> zeroinitializer
  %5 = load <1 x double>, ptr %i.g, align 8
  %broadcast.splat74 = shufflevector <1 x double> %5, <1 x double> poison, <2 x i32> zeroinitializer
  %6 = load <1 x double>, ptr %i.h, align 8
  %broadcast.splat72 = shufflevector <1 x double> %6, <1 x double> poison, <2 x i32> zeroinitializer
  %7 = load <1 x double>, ptr %i.i, align 8
  %broadcast.splat76 = shufflevector <1 x double> %7, <1 x double> poison, <2 x i32> zeroinitializer
  %8 = load <1 x double>, ptr %i.j, align 8
  %broadcast.splat80 = shufflevector <1 x double> %8, <1 x double> poison, <2 x i32> zeroinitializer
  %9 = load <1 x double>, ptr %i.k, align 8
  %broadcast.splat78 = shufflevector <1 x double> %9, <1 x double> poison, <2 x i32> zeroinitializer
  %i.s = load double, ptr %i.l, align 8, !tbaa !209, !alias.scope !731
  %broadcast.splatinsert81 = insertelement <2 x double> poison, double %i.s, i64 0
  %broadcast.splat82 = shufflevector <2 x double> %broadcast.splatinsert81, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 4 uses
  %wide.load = load <2 x double>, ptr %i.t, align 8, !tbaa !109, !alias.scope !732, !noalias !733 ; 3 uses
  %i.u = getelementptr [8 x i8], ptr %i.t, i64 %i.b ; 2 uses
  %wide.load65 = load <2 x double>, ptr %i.u, align 8, !tbaa !109, !alias.scope !734, !noalias !735 ; 3 uses
  %i.v = fmul <2 x double> %broadcast.splat, %wide.load65
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat67, <2 x double> %wide.load, <2 x double> %i.v)
  %i.x = getelementptr i8, ptr %i.t, i64 %.idx.i  ; 2 uses
  %wide.load68 = load <2 x double>, ptr %i.x, align 8, !tbaa !109, !alias.scope !736, !noalias !731 ; 3 uses
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat70, <2 x double> %wide.load68, <2 x double> %i.w)
  %i.z = fmul <2 x double> %wide.load65, %broadcast.splat72
  %i.aa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat74, <2 x double> %wide.load, <2 x double> %i.z)
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat76, <2 x double> %wide.load68, <2 x double> %i.aa)
  %i.ac = fmul <2 x double> %wide.load65, %broadcast.splat78
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat80, <2 x double> %wide.load, <2 x double> %i.ac)
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat82, <2 x double> %wide.load68, <2 x double> %i.ad)
  store <2 x double> %i.y, ptr %i.t, align 8, !tbaa !109, !alias.scope !732, !noalias !733
  store <2 x double> %i.ab, ptr %i.u, align 8, !tbaa !109, !alias.scope !734, !noalias !735
  store <2 x double> %i.ae, ptr %i.x, align 8, !tbaa !109, !alias.scope !736, !noalias !731
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !729

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.029.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.029 = phi i64 [ %i.bj, %scalar.ph ], [ %.029.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.029 ; 4 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !109 ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %i.ag, i64 %i.b ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !109 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ag, i64 %.idx.i ; 2 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !109 ; 2 uses
  %i.am = load <4 x double>, ptr %1, align 8, !tbaa !109 ; 3 uses
  %i.an = load <2 x double>, ptr %i.h, align 8, !tbaa !109
  %i.ao = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = shufflevector <2 x double> %i.an, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ar = shufflevector <4 x double> %i.am, <4 x double> %i.aq, <2 x i32> <i32 1, i32 4>
  %i.as = fmul <2 x double> %i.ap, %i.ar
  %i.at = shufflevector <4 x double> %i.am, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.au = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.av, <2 x double> %i.as)
  %i.ax = shufflevector <4 x double> %i.am, <4 x double> %i.aq, <2 x i32> <i32 2, i32 5>
  %i.ay = insertelement <2 x double> poison, double %i.al, i64 0
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.az, <2 x double> %i.aw) ; 2 uses
  %i.bb = load double, ptr %i.j, align 8, !tbaa !737
  %i.bc = load double, ptr %i.k, align 8, !tbaa !738
  %i.bd = fmul double %i.aj, %i.bc
  %i.be = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.ah, double %i.bd)
  %i.bf = load double, ptr %i.l, align 8, !tbaa !209
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.al, double %i.be)
  %i.bh = extractelement <2 x double> %i.ba, i64 0
  store double %i.bh, ptr %i.ag, align 8, !tbaa !109
  %i.bi = extractelement <2 x double> %i.ba, i64 1
  store double %i.bi, ptr %i.ai, align 8, !tbaa !109
  store double %i.bg, ptr %i.ak, align 8, !tbaa !109
  %i.bj = add nuw i64 %.029, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bj, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !730
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #20

; Function Attrs: mustprogress uwtable
define void @_ZN12colvarmodule10atom_group15read_velocitiesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1712) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.d = load i8, ptr %i.c, align 8, !tbaa !130, !range !55, !noundef !56
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 97
  %i.i = load i8, ptr %i.h, align 1, !tbaa !53, !range !55, !noundef !56
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.n = load <2 x double>, ptr %i.k, align 8, !tbaa !109, !noalias !749 ; 8 uses
  %i.o = load <2 x double>, ptr %i.l, align 8, !tbaa !109, !noalias !749 ; 4 uses
  %i.p = load double, ptr %i.m, align 8, !tbaa !210, !noalias !749 ; 7 uses
  %i.q = tail call noundef ptr @_ZN12colvarmodule4mainEv() ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !108
  %.not41 = icmp eq i64 %i.s, 0
  br i1 %.not41, label %.loopexit, label %.lr.ph40

.lr.ph40:                                         ; preds = %bb.c
  %i.t = extractelement <2 x double> %i.o, i64 0  ; 5 uses
  %i.u = extractelement <2 x double> %i.n, i64 0  ; 4 uses
  %i.v = extractelement <2 x double> %i.n, i64 1  ; 4 uses
  %i.w = fneg double %i.t                         ; 3 uses
  %i.x = shufflevector <2 x double> %i.o, <2 x double> %i.n, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.y = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.z = insertelement <2 x double> %i.y, double %i.w, i64 1
  %i.aa = fmul <2 x double> %i.x, %i.z
  %i.ab = shufflevector <2 x double> %i.n, <2 x double> %i.y, <2 x i32> <i32 1, i32 2>
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.ab, <2 x double> %i.aa)
  %i.ad = fmul <2 x double> %i.ac, splat (double 2.000000e+00) ; 2 uses
  %i.ae = fneg double %i.v                        ; 2 uses
  %i.af = insertelement <2 x double> %i.y, double %i.ae, i64 0
  %i.ag = fmul <2 x double> %i.n, %i.af
  %i.ah = insertelement <2 x double> poison, double %i.p, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.ai, <2 x double> %i.ag) ; 2 uses
  %i.ak = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = fmul double %i.v, %i.ae
  %i.am = fmul double %i.v, %i.v
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.aq = fneg double %i.p                        ; 3 uses
  %i.ar = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.p, i64 1
  %i.at = fmul <2 x double> %i.n, %i.as
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.ak, <2 x double> %i.au) ; 2 uses
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> %i.aj, <2 x i32> <i32 0, i32 2>
  %i.ax = fmul <2 x double> %i.aw, splat (double 2.000000e+00)
  %i.ay = shufflevector <2 x double> %i.aj, <2 x double> %i.av, <2 x i32> <i32 1, i32 3>
  %i.az = fmul <2 x double> %i.ay, splat (double 2.000000e+00) ; 2 uses
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.u, double %i.u, double %i.al) ; 2 uses
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.w, double %i.t, double %i.ba)
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.p, double %i.p, double %i.bb)
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.t, double %i.t, double %i.ba)
  %i.be = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.p, double %i.bd)
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.u, double %i.u, double %i.am)
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.w, double %i.t, double %i.bf)
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.p, double %i.bg)
  %i.bi = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bj = insertelement <2 x double> %i.bi, double %i.be, i64 1
  %i.bk = fmul <2 x double> %i.bj, zeroinitializer
  %i.bl = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> %i.az, <2 x i32> <i32 0, i32 2>
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> zeroinitializer, <2 x double> %i.bk)
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> zeroinitializer, <2 x double> %i.bn) ; 2 uses
  %i.bp = extractelement <2 x double> %i.ad, i64 0
  %i.bq = fmul double %i.bp, 0.000000e+00
  %i.br = extractelement <2 x double> %i.ad, i64 1
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.br, double 0.000000e+00, double %i.bq)
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bc, double 0.000000e+00, double %i.bs)
  %i.bu = extractelement <2 x double> %i.bo, i64 0
  %i.bv = extractelement <2 x double> %i.bo, i64 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph40, %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit
  %.01639 = phi i64 [ 0, %.lr.ph40 ], [ %i.co, %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !750
  store ptr %i.an, ptr %2, align 8, !tbaa !28, !noalias !750
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28, !noalias !750
  store i64 71, ptr %i.b, align 8, !tbaa !35, !noalias !750
  %i.bw = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0), !noalias !750 ; 3 uses
  store ptr %i.bw, ptr %2, align 8, !tbaa !42, !noalias !750
  %i.bx = load i64, ptr %i.b, align 8, !tbaa !35, !noalias !750 ; 3 uses
  store i64 %i.bx, ptr %i.an, align 8, !tbaa !32, !noalias !750
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %i.bw, ptr noundef nonnull align 1 dereferenceable(71) @.str.119, i64 71, i1 false), !noalias !750
  store i64 %i.bx, ptr %i.ao, align 8, !tbaa !31, !noalias !750
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx
  store i8 0, ptr %i.by, align 1, !tbaa !32, !noalias !750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28, !noalias !750
  %i.bz = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2)
          to label %bb.e unwind label %bb.f, !noalias !750 ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.ca = load ptr, ptr %2, align 8, !tbaa !42, !noalias !750 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.an
  br i1 %i.cb, label %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.cc = load i64, ptr %i.an, align 8, !tbaa !32, !noalias !750
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #29, !noalias !750
end_hunk_2
begin_hunk_3_@_ZN12colvarmodule10atom_group23calc_center_of_geometryEv:bb.a
  %i.bd = add nuw i64 %.07, 2                     ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !9

bb.e:                                             ; preds = %._crit_edge, %bb.b
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN12colvarmodule10atom_group11calc_dipoleERKNS_7rvectorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1712) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.c = load i8, ptr %i.b, align 8, !tbaa !130, !range !55, !noundef !56
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 54, ptr %i.a, align 8, !tbaa !35
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !42
  %i.g = load i64, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(54) %i.f, ptr noundef nonnull align 1 dereferenceable(54) @.str.121, i64 54, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  store i8 0, ptr %i.i, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.j = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.noexc.i
  %i.k = load ptr, ptr %2, align 8, !tbaa !42     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.e
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.e, align 8, !tbaa !32
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.loopexit

bb.c:                                             ; preds = %.noexc.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %2, align 8, !tbaa !42     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.e
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.c
  %i.r = load i64, ptr %i.e, align 8, !tbaa !32
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.o

bb.d:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.v = load i64, ptr %i.u, align 8, !tbaa !108  ; 4 uses
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !114
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !114
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %.idx.i = shl i64 %i.v, 4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1664
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %i.ae = phi double [ 0.000000e+00, %.lr.ph ], [ %i.az, %bb.e ]
  %i.af = phi double [ 0.000000e+00, %.lr.ph ], [ %i.at, %bb.e ]
  %i.ag = phi double [ 0.000000e+00, %.lr.ph ], [ %i.an, %bb.e ]
  %.021 = phi i64 [ 0, %.lr.ph ], [ %i.ba, %bb.e ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.021 ; 3 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !109
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.021 ; 3 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !109
  %i.al = load double, ptr %1, align 8, !tbaa !117
  %i.am = fsub double %i.ak, %i.al
  %i.an = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.am, double %i.ag) ; 2 uses
  store double %i.an, ptr %i.t, align 8, !tbaa !775
  %i.ao = load double, ptr %i.ah, align 8, !tbaa !109
  %i.ap = getelementptr [8 x i8], ptr %i.aj, i64 %i.v
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !109
  %i.ar = load double, ptr %i.aa, align 8, !tbaa !118
  %i.as = fsub double %i.aq, %i.ar
  %i.at = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.as, double %i.af) ; 2 uses
  store double %i.at, ptr %i.ab, align 8, !tbaa !776
  %i.au = load double, ptr %i.ah, align 8, !tbaa !109
  %i.av = getelementptr i8, ptr %i.aj, i64 %.idx.i
  %i.aw = load double, ptr %i.av, align 8, !tbaa !109
  %i.ax = load double, ptr %i.ac, align 8, !tbaa !119
  %i.ay = fsub double %i.aw, %i.ax
  %i.az = tail call double @llvm.fmuladd.f64(double %i.au, double %i.ay, double %i.ae) ; 2 uses
  store double %i.az, ptr %i.ad, align 8, !tbaa !777
  %i.ba = add nuw i64 %.021, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ba, %i.v
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !774

.loopexit:                                        ; preds = %bb.e, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.016 = phi i32 [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %bb.d ], [ 0, %bb.e ]
  ret i32 %.016
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN12colvarmodule10atom_group21set_weighted_gradientERKNS_7rvectorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1712) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.b = load i8, ptr %i.a, align 8, !tbaa !130, !range !55, !noundef !56
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1624
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !203
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 257
  %i.h = load i8, ptr %i.g, align 1, !tbaa !53, !range !55, !noundef !56
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.k = load i64, ptr %i.j, align 8, !tbaa !108  ; 10 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !114  ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !114  ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.idx.i = shl i64 %i.k, 4                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.k, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.r = shl i64 %i.k, 3                          ; 2 uses
  %i.s = getelementptr i8, ptr %i.o, i64 %i.r     ; 5 uses
  %i.t = getelementptr i8, ptr %i.o, i64 %.idx.i  ; 5 uses
  %i.u = mul i64 %i.k, 24
  %i.v = getelementptr i8, ptr %i.o, i64 %i.u     ; 3 uses
  %i.w = getelementptr i8, ptr %i.m, i64 %i.r     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %bound042 = icmp ult ptr %i.o, %i.v
  %bound143 = icmp ult ptr %i.t, %i.s
  %found.conflict44 = and i1 %bound042, %bound143
  %bound045 = icmp ult ptr %i.o, %i.w
  %bound146 = icmp ult ptr %i.m, %i.s
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx48 = or i1 %found.conflict44, %found.conflict47
  %bound049 = icmp ult ptr %i.o, %i.x
  %bound150 = icmp ult ptr %1, %i.s
  %found.conflict51 = and i1 %bound049, %bound150
  %conflict.rdx52 = or i1 %conflict.rdx48, %found.conflict51
  %bound057 = icmp ult ptr %i.s, %i.w
  %bound158 = icmp ult ptr %i.m, %i.t
  %found.conflict59 = and i1 %bound057, %bound158
  %conflict.rdx60 = or i1 %conflict.rdx52, %found.conflict59
  %bound061 = icmp ult ptr %i.s, %i.x
  %bound162 = icmp ult ptr %1, %i.t
  %found.conflict63 = and i1 %bound061, %bound162
  %conflict.rdx64 = or i1 %conflict.rdx60, %found.conflict63
  %bound065 = icmp ult ptr %i.t, %i.w
  %bound166 = icmp ult ptr %i.m, %i.v
  %found.conflict67 = and i1 %bound065, %bound166
  %conflict.rdx68 = or i1 %conflict.rdx64, %found.conflict67
  %bound069 = icmp ult ptr %i.t, %i.x
  %bound170 = icmp ult ptr %1, %i.v
  %found.conflict71 = and i1 %bound069, %bound170
  %conflict.rdx72 = or i1 %conflict.rdx68, %found.conflict71
  br i1 %conflict.rdx72, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.k, -2                       ; 3 uses
  %2 = load <1 x double>, ptr %1, align 8
  %broadcast.splat = shufflevector <1 x double> %2, <1 x double> poison, <2 x i32> zeroinitializer
  %3 = load <1 x double>, ptr %i.p, align 8
  %broadcast.splat75 = shufflevector <1 x double> %3, <1 x double> poison, <2 x i32> zeroinitializer
  %i.y = load double, ptr %i.q, align 8, !tbaa !119, !alias.scope !786
  %broadcast.splatinsert77 = insertelement <2 x double> poison, double %i.y, i64 0
  %broadcast.splat78 = shufflevector <2 x double> %broadcast.splatinsert77, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.z, align 8, !tbaa !109, !alias.scope !787 ; 2 uses
  %i.aa = fmul <2 x double> %wide.load, %broadcast.splat
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 3 uses
  store <2 x double> %i.aa, ptr %i.ab, align 8, !tbaa !109, !alias.scope !788, !noalias !789
  %i.ac = fmul <2 x double> %wide.load, %broadcast.splat75
  %i.ad = getelementptr [8 x i8], ptr %i.ab, i64 %i.k
  store <2 x double> %i.ac, ptr %i.ad, align 8, !tbaa !109, !alias.scope !790, !noalias !791
  %wide.load76 = load <2 x double>, ptr %i.z, align 8, !tbaa !109, !alias.scope !787
  %i.ae = fmul <2 x double> %wide.load76, %broadcast.splat78
  %i.af = getelementptr i8, ptr %i.ab, i64 %.idx.i
  store <2 x double> %i.ae, ptr %i.af, align 8, !tbaa !109, !alias.scope !792, !noalias !793
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !784

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.012.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.012 = phi i64 [ %i.au, %scalar.ph ], [ %.012.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.012 ; 3 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !109
  %i.aj = load double, ptr %1, align 8, !tbaa !117
  %i.ak = fmul double %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.012 ; 3 uses
  store double %i.ak, ptr %i.al, align 8, !tbaa !109
  %i.am = load double, ptr %i.ah, align 8, !tbaa !109
  %i.an = load double, ptr %i.p, align 8, !tbaa !118
  %i.ao = fmul double %i.am, %i.an
  %i.ap = getelementptr [8 x i8], ptr %i.al, i64 %i.k
  store double %i.ao, ptr %i.ap, align 8, !tbaa !109
  %i.aq = load double, ptr %i.ah, align 8, !tbaa !109
  %i.ar = load double, ptr %i.q, align 8, !tbaa !119
  %i.as = fmul double %i.aq, %i.ar
  %i.at = getelementptr i8, ptr %i.al, i64 %.idx.i
  store double %i.as, ptr %i.at, align 8, !tbaa !109
  %i.au = add nuw i64 %.012, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.au, %i.k
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !785

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %.preheader, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN12colvarmodule10atom_group18calc_fit_gradientsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1712) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.colvarmodule::quaternion", align 8 ; 6 uses
  %2 = alloca %"class.colvarmodule::rotation", align 8 ; 4 uses
  %3 = alloca %"class.colvarmodule::quaternion", align 8 ; 6 uses
  %4 = alloca %"class.colvarmodule::rotation", align 8 ; 4 uses
  %5 = alloca %"struct.std::array", align 16      ; 5 uses
  %6 = alloca %"class.colvarmodule::rmatrix", align 8 ; 8 uses
  %7 = alloca %"class.colvarmodule::quaternion", align 8 ; 6 uses
  %8 = alloca %"class.colvarmodule::rotation", align 8 ; 4 uses
  %9 = alloca %"class.colvarmodule::quaternion", align 8 ; 6 uses
  %10 = alloca %"class.colvarmodule::rotation", align 8 ; 6 uses
  %11 = alloca %"struct.std::array", align 16     ; 5 uses
  %12 = alloca %"class.colvarmodule::rmatrix", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.b = load i8, ptr %i.a, align 8, !tbaa !130, !range !55, !noundef !56
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %"_ZNK12colvarmodule10atom_group20calc_fit_forces_implILb0ELb0EZNS0_18calc_fit_gradientsEvE3$_0ZNS0_18calc_fit_gradientsEvE3$_1EEvT1_T2_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 193
  %i.g = load i8, ptr %i.f, align 1, !tbaa !53, !range !55, !noundef !56
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %"_ZNK12colvarmodule10atom_group20calc_fit_forces_implILb0ELb0EZNS0_18calc_fit_gradientsEvE3$_0ZNS0_18calc_fit_gradientsEvE3$_1EEvT1_T2_.exit"

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !107  ; 2 uses
  %.not = icmp eq ptr %i.j, null
  %spec.select = select i1 %.not, ptr %0, ptr %i.j ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 33
  %i.l = load i8, ptr %i.k, align 1, !tbaa !53, !range !55, !noundef !56
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %"_ZNK12colvarmodule10atom_group20calc_fit_forces_implILb1ELb0EZNS0_18calc_fit_gradientsEvE3$_0ZNS0_18calc_fit_gradientsEvE3$_1EEvT1_T2_.exit"

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 97
  %i.o = load i8, ptr %i.n, align 1, !tbaa !53, !range !55, !noundef !56
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28, !noalias !837
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !838)
  %i.r = load double, ptr %i.q, align 8, !tbaa !217, !noalias !839
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.v = load double, ptr %i.u, align 8, !tbaa !210, !noalias !839
  %i.w = fneg double %i.v
  store double %i.r, ptr %9, align 8, !tbaa !217, !alias.scope !838, !noalias !837
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.y = load <2 x double>, ptr %i.s, align 8, !tbaa !109, !noalias !839
  %i.z = fneg <2 x double> %i.y
  store <2 x double> %i.z, ptr %i.x, align 8, !tbaa !109, !alias.scope !838, !noalias !837
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 24
  store double %i.w, ptr %i.aa, align 8, !tbaa !210, !alias.scope !838, !noalias !837
  call void @_ZN12colvarmodule8rotationC1ERKNS_10quaternionE(ptr noundef nonnull align 8 dereferenceable(568) %10, ptr noundef nonnull align 8 dereferenceable(32) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !837
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 496
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 512
  %i.ad = load <2 x double>, ptr %i.ab, align 8, !tbaa !109, !noalias !840 ; 9 uses
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.af = extractelement <2 x double> %i.ad, i64 1 ; 4 uses
  %i.ag = fmul double %i.af, %i.af
  %i.ah = extractelement <2 x double> %i.ad, i64 0 ; 4 uses
  %i.ai = call double @llvm.fmuladd.f64(double %i.ah, double %i.ah, double %i.ag)
  %i.aj = load <2 x double>, ptr %i.ac, align 8, !tbaa !109, !noalias !840 ; 9 uses
  %i.ak = extractelement <2 x double> %i.aj, i64 0 ; 5 uses
  %i.al = fneg double %i.ak                       ; 3 uses
  %i.am = call double @llvm.fmuladd.f64(double %i.al, double %i.ak, double %i.ai)
  %i.an = extractelement <2 x double> %i.aj, i64 1 ; 5 uses
  %i.ao = fneg double %i.an                       ; 3 uses
  %i.ap = call double @llvm.fmuladd.f64(double %i.ao, double %i.an, double %i.am)
  %i.aq = fneg double %i.af                       ; 2 uses
  %i.ar = fmul double %i.af, %i.aq
  %i.as = call double @llvm.fmuladd.f64(double %i.ah, double %i.ah, double %i.ar) ; 2 uses
  %i.at = call double @llvm.fmuladd.f64(double %i.ak, double %i.ak, double %i.as)
  %i.au = call double @llvm.fmuladd.f64(double %i.ao, double %i.an, double %i.at)
  %i.av = call double @llvm.fmuladd.f64(double %i.al, double %i.ak, double %i.as)
  %i.aw = call double @llvm.fmuladd.f64(double %i.an, double %i.an, double %i.av)
  %i.ax = insertelement <2 x double> %i.aj, double %i.aq, i64 0
  %i.ay = fmul <2 x double> %i.ad, %i.ax
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ba = shufflevector <2 x double> %i.ad, <2 x double> %i.aj, <2 x i32> <i32 0, i32 2>
  %i.bb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.aj, <2 x double> %i.az)
  %i.bc = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bd = insertelement <2 x double> %i.bc, double %i.ao, i64 0
  %i.be = fmul <2 x double> %i.ad, %i.bd
  %i.bf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.aj, <2 x double> %i.be)
  %i.bg = fmul <2 x double> %i.bf, splat (double 2.000000e+00) ; 2 uses
  %i.bh = fmul <2 x double> %i.bb, splat (double 2.000000e+00)
  %i.bi = shufflevector <2 x double> %i.aj, <2 x double> %i.ad, <2 x i32> <i32 0, i32 2>
  %i.bj = insertelement <2 x double> %i.bc, double %i.al, i64 1
  %i.bk = fmul <2 x double> %i.bi, %i.bj
  %i.bl = shufflevector <2 x double> %i.ad, <2 x double> %i.aj, <2 x i32> <i32 1, i32 3>
  %i.bm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %i.bl, <2 x double> %i.bk)
  %i.bn = fmul <2 x double> %i.bm, splat (double 2.000000e+00) ; 2 uses
  call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !108 ; 5 uses
  %.not115.i = icmp eq i64 %i.bp, 0
  br i1 %.not115.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %.val.val25.i = load ptr, ptr %i.bq, align 8, !tbaa !114
  %.idx.i.i.i = shl i64 %i.bp, 4                  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !114
  br label %bb.f

._crit_edge.i:                                    ; preds = %bb.f, %bb.e
  %.sroa.054.0.lcssa.i = phi double [ 0.000000e+00, %bb.e ], [ %i.hj, %bb.f ]
  %.sroa.18.0.lcssa.i = phi double [ 0.000000e+00, %bb.e ], [ %i.hg, %bb.f ] ; 2 uses
  %.sroa.1178.0.lcssa.i = phi double [ 0.000000e+00, %bb.e ], [ %i.hf, %bb.f ] ; 2 uses
  %.sroa.074.0.lcssa.i = phi double [ 0.000000e+00, %bb.e ], [ %i.he, %bb.f ] ; 2 uses
  %i.bt = phi <8 x double> [ zeroinitializer, %bb.e ], [ %i.hw, %bb.f ] ; 10 uses
  %i.bu = extractelement <8 x double> %i.bt, i64 7
  %i.bv = fneg double %i.bu                       ; 2 uses
  %i.bw = load <2 x double>, ptr %i.t, align 8, !tbaa !109, !noalias !841 ; 5 uses
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.by = load <2 x double>, ptr %i.q, align 8, !tbaa !109, !noalias !841 ; 5 uses
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 5 uses
  %i.ca = shufflevector <8 x double> %i.bt, <8 x double> poison, <2 x i32> <i32 poison, i32 7>
  %i.cb = insertelement <2 x double> %i.ca, double %i.bv, i64 0
  %i.cc = fmul <2 x double> %i.bx, %i.cb
  %i.cd = insertelement <2 x double> poison, double %.sroa.054.0.lcssa.i, i64 0
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.ce, <2 x double> %i.cc)
  %i.cg = shufflevector <8 x double> %i.bt, <8 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ch = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.cg, <2 x double> %i.cf)
  %i.ci = shufflevector <8 x double> %i.bt, <8 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.ci, <2 x double> %i.ch)
  %i.ck = fneg <2 x double> %i.bz                 ; 2 uses
  %i.cl = shufflevector <2 x double> %i.by, <2 x double> %i.ck, <2 x i32> <i32 0, i32 2> ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN12colvarmodule10atom_group18apply_colvar_forceERKd:bb.a
  %i.hq = fadd <2 x double> %i.ho, %i.hp
  store <2 x double> %i.hq, ptr %i.hj, align 8, !tbaa !109
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hj, i64 16 ; 2 uses
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !119
  %i.ht = fadd double %i.hh, %i.hs
  store double %i.ht, ptr %i.hr, align 8, !tbaa !119
  %i.hu = add nuw i64 %.04796, 1                  ; 2 uses
  %exitcond103.not = icmp eq i64 %i.hu, %i.gm
  br i1 %exitcond103.not, label %.loopexit, label %bb.o, !llvm.loop !897

.loopexit:                                        ; preds = %bb.o, %bb.n, %bb.a, %bb.m, %bb.l, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN12colvarmodule10atom_group11apply_forceERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.colvarmodule::atom_group::group_force_object", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.c = load i8, ptr %i.b, align 8, !tbaa !130, !range !55, !noundef !56
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.f = load i8, ptr %i.e, align 8, !tbaa !131, !range !55, !noundef !56
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %.noexc.i20, label %bb.f

.noexc.i20:                                       ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 70, ptr %i.a, align 8, !tbaa !35
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc21 unwind label %bb.d   ; 3 uses

.noexc21:                                         ; preds = %.noexc.i20
  store ptr %i.i, ptr %2, align 8, !tbaa !42
  %i.j = load i64, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(70) %i.i, ptr noundef nonnull align 1 dereferenceable(70) @.str.130, i64 70, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  store i8 0, ptr %i.l, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.m = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef -1)
          to label %bb.c unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %.noexc21
  %i.n = load ptr, ptr %2, align 8, !tbaa !42     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.h
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.c
  %i.p = load i64, ptr %i.h, align 8, !tbaa !32
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.l

bb.d:                                             ; preds = %.noexc.i20
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.e:                                             ; preds = %.noexc21
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !42     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.h
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.e
  %i.v = load i64, ptr %i.h, align 8, !tbaa !32
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.d
  %.pn13 = phi { ptr, i32 } [ %i.r, %bb.d ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.s, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.m

bb.f:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !46
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 257
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !53, !range !55, !noundef !56
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !135
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !133
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 616
  %i.ag = sext i32 %i.ae to i64
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !113
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag ; 3 uses
  %i.aj = load <2 x double>, ptr %1, align 8, !tbaa !109
  %i.ak = load <2 x double>, ptr %i.ai, align 8, !tbaa !109
  %i.al = fadd <2 x double> %i.aj, %i.ak
  store <2 x double> %i.al, ptr %i.ai, align 8, !tbaa !109
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load double, ptr %i.am, align 8, !tbaa !119
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !119
  %i.aq = fadd double %i.an, %i.ap
  store double %i.aq, ptr %i.ao, align 8, !tbaa !119
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN12colvarmodule10atom_group18group_force_objectC1EPS0_(ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef nonnull align 8 dereferenceable(1712) %0)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !108 ; 7 uses
  %.not = icmp eq i64 %i.as, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !220, !range !55, !noundef !56
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !114 ; 6 uses
  %i.ba = load ptr, ptr %3, align 8, !tbaa !221   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1448
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !114 ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 1144
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !108 ; 4 uses
  %.idx.i.i.us = shl i64 %i.be, 4                 ; 4 uses
  %min.iters.check = icmp ult i64 %i.as, 18
  br i1 %min.iters.check, label %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us
  %i.bf = shl i64 %i.as, 3                        ; 4 uses
  %i.bg = getelementptr i8, ptr %i.bc, i64 %i.bf
  %i.bh = shl i64 %i.be, 3                        ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bc, i64 %i.bh  ; 4 uses
  %i.bj = getelementptr i8, ptr %i.bc, i64 %i.bh
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.bf  ; 4 uses
  %i.bl = getelementptr i8, ptr %i.bc, i64 %.idx.i.i.us ; 4 uses
  %i.bm = getelementptr i8, ptr %i.bc, i64 %.idx.i.i.us
  %i.bn = getelementptr i8, ptr %i.bm, i64 %i.bf  ; 4 uses
  %i.bo = getelementptr i8, ptr %i.az, i64 %i.bf  ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.bq = insertelement <4 x ptr> poison, ptr %i.bc, i64 0
  %i.br = shufflevector <4 x ptr> %i.bq, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bs = insertelement <4 x ptr> poison, ptr %i.bk, i64 0
  %i.bt = insertelement <4 x ptr> %i.bs, ptr %i.bn, i64 1
  %i.bu = insertelement <4 x ptr> %i.bt, ptr %i.bo, i64 2
  %i.bv = insertelement <4 x ptr> %i.bu, ptr %i.bp, i64 3
  %i.bw = icmp ult <4 x ptr> %i.br, %i.bv
  %i.bx = insertelement <4 x ptr> poison, ptr %i.bi, i64 0
  %i.by = insertelement <4 x ptr> %i.bx, ptr %i.bl, i64 1
  %i.bz = insertelement <4 x ptr> %i.by, ptr %i.az, i64 2
  %i.ca = insertelement <4 x ptr> %i.bz, ptr %1, i64 3
  %i.cb = insertelement <4 x ptr> poison, ptr %i.bg, i64 0
  %i.cc = shufflevector <4 x ptr> %i.cb, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cd = icmp ult <4 x ptr> %i.ca, %i.cc
  %i.ce = and <4 x i1> %i.bw, %i.cd
  %bound092 = icmp ult ptr %i.bi, %i.bn
  %bound193 = icmp ult ptr %i.bl, %i.bk
  %found.conflict94 = and i1 %bound092, %bound193
  %bound096 = icmp ult ptr %i.bi, %i.bo
  %bound197 = icmp ult ptr %i.az, %i.bk
  %found.conflict98 = and i1 %bound096, %bound197
  %bound0100 = icmp ult ptr %i.bi, %i.bp
  %bound1101 = icmp ult ptr %1, %i.bk
  %found.conflict102 = and i1 %bound0100, %bound1101
  %bound0104 = icmp ult ptr %i.bl, %i.bo
  %bound1105 = icmp ult ptr %i.az, %i.bn
  %found.conflict106 = and i1 %bound0104, %bound1105
  %bound0108 = icmp ult ptr %i.bl, %i.bp
  %bound1109 = icmp ult ptr %1, %i.bn
  %found.conflict110 = and i1 %bound0108, %bound1109
  %i.cf = bitcast <4 x i1> %i.ce to i4
  %i.cg = icmp ne i4 %i.cf, 0
  %op.rdx = or i1 %i.cg, %found.conflict94
  %op.rdx119 = or i1 %found.conflict98, %found.conflict102
  %op.rdx120 = or i1 %found.conflict106, %found.conflict110
  %op.rdx121 = or i1 %op.rdx, %op.rdx119
  %op.rdx122 = or i1 %op.rdx121, %op.rdx120
  br i1 %op.rdx122, label %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.as, -2                      ; 3 uses
  %4 = load <1 x double>, ptr %1, align 8
  %broadcast.splat = shufflevector <1 x double> %4, <1 x double> poison, <2 x i32> zeroinitializer
  %5 = load <1 x double>, ptr %i.au, align 8
  %broadcast.splat113 = shufflevector <1 x double> %5, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ch = load double, ptr %i.av, align 8, !tbaa !119, !alias.scope !914, !noalias !915
  %broadcast.splatinsert114 = insertelement <2 x double> poison, double %i.ch, i64 0
  %broadcast.splat115 = shufflevector <2 x double> %broadcast.splatinsert114, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %index
  %wide.load = load <2 x double>, ptr %i.ci, align 8, !tbaa !109, !alias.scope !916 ; 3 uses
  %i.cj = fmul <2 x double> %wide.load, %broadcast.splat
  %i.ck = fmul <2 x double> %wide.load, %broadcast.splat113
  %i.cl = fmul <2 x double> %wide.load, %broadcast.splat115
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %index ; 4 uses
  %wide.load116 = load <2 x double>, ptr %i.cm, align 8, !tbaa !109, !alias.scope !917, !noalias !918
  %i.cn = fadd <2 x double> %i.cj, %wide.load116
  store <2 x double> %i.cn, ptr %i.cm, align 8, !tbaa !109, !alias.scope !917, !noalias !918
  %i.co = getelementptr [8 x i8], ptr %i.cm, i64 %i.be ; 2 uses
  %wide.load117 = load <2 x double>, ptr %i.co, align 8, !tbaa !109, !alias.scope !919, !noalias !920
  %i.cp = fadd <2 x double> %i.ck, %wide.load117
  store <2 x double> %i.cp, ptr %i.co, align 8, !tbaa !109, !alias.scope !919, !noalias !920
  %i.cq = getelementptr i8, ptr %i.cm, i64 %.idx.i.i.us ; 2 uses
  %wide.load118 = load <2 x double>, ptr %i.cq, align 8, !tbaa !109, !alias.scope !921, !noalias !922
  %i.cr = fadd <2 x double> %i.cl, %wide.load118
  store <2 x double> %i.cr, ptr %i.cq, align 8, !tbaa !109, !alias.scope !921, !noalias !922
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !911

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit.us.preheader

_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit.us.preheader: ; preds = %vector.memcheck, %.lr.ph.split.us, %middle.block
  %.035.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us ], [ %n.vec, %middle.block ]
  br label %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit.us

_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit.us: ; preds = %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit.us.preheader, %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit.us
  %.035.us = phi i64 [ %i.dm, %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit.us ], [ %.035.us.ph, %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit.us.preheader ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.035.us
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !109 ; 2 uses
  %i.cv = load <2 x double>, ptr %1, align 8, !tbaa !109, !noalias !915
  %i.cw = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x double> %i.cx, %i.cv          ; 2 uses
  %i.cz = load double, ptr %i.av, align 8, !tbaa !119, !noalias !915
  %i.da = fmul double %i.cu, %i.cz
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.035.us ; 4 uses
  %i.dc = load double, ptr %i.db, align 8, !tbaa !109
  %i.dd = extractelement <2 x double> %i.cy, i64 0
  %i.de = fadd double %i.dd, %i.dc
  store double %i.de, ptr %i.db, align 8, !tbaa !109
  %i.df = getelementptr [8 x i8], ptr %i.db, i64 %i.be ; 2 uses
  %i.dg = load double, ptr %i.df, align 8, !tbaa !109
  %i.dh = extractelement <2 x double> %i.cy, i64 1
  %i.di = fadd double %i.dh, %i.dg
  store double %i.di, ptr %i.df, align 8, !tbaa !109
  %i.dj = getelementptr i8, ptr %i.db, i64 %.idx.i.i.us ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !109
  %i.dl = fadd double %i.da, %i.dk
  store double %i.dl, ptr %i.dj, align 8, !tbaa !109
  %i.dm = add nuw i64 %.035.us, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.dm, %i.as
  br i1 %exitcond.not, label %._crit_edge, label %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit.us, !llvm.loop !912

._crit_edge:                                      ; preds = %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit, %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit.us, %middle.block, %bb.h
  call void @_ZN12colvarmodule10atom_group18group_force_objectD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.l

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit
  %i.dn = phi i64 [ %i.ff, %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit ], [ %i.as, %.lr.ph ]
  %.035 = phi i64 [ %i.fg, %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit ], [ 0, %.lr.ph ] ; 4 uses
  %i.do = load ptr, ptr %i.at, align 8, !tbaa !114
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.035
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !109 ; 2 uses
  %i.dr = load <2 x double>, ptr %1, align 8, !tbaa !109, !noalias !915
  %i.ds = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = fmul <2 x double> %i.dt, %i.dr          ; 3 uses
  %i.dv = load double, ptr %i.av, align 8, !tbaa !119, !noalias !915
  %i.dw = fmul double %i.dq, %i.dv                ; 2 uses
  %i.dx = load i8, ptr %i.aw, align 8, !tbaa !220, !range !55, !noundef !56
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.split
  %i.dz = load ptr, ptr %3, align 8, !tbaa !221   ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 1448
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !114
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.035 ; 4 uses
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !109
  %i.ee = extractelement <2 x double> %i.du, i64 0
  %i.ef = fadd double %i.ee, %i.ed
  store double %i.ef, ptr %i.ec, align 8, !tbaa !109
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 1144
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !108 ; 2 uses
  %i.ei = getelementptr [8 x i8], ptr %i.ec, i64 %i.eh ; 2 uses
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !109
  %i.ek = extractelement <2 x double> %i.du, i64 1
  %i.el = fadd double %i.ek, %i.ej
  store double %i.el, ptr %i.ei, align 8, !tbaa !109
  %.idx.i.i = shl i64 %i.eh, 4
  %i.em = getelementptr i8, ptr %i.ec, i64 %.idx.i.i ; 2 uses
  %i.en = load double, ptr %i.em, align 8, !tbaa !109
  %i.eo = fadd double %i.dw, %i.en
  store double %i.eo, ptr %i.em, align 8, !tbaa !109
  br label %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit

bb.j:                                             ; preds = %.lr.ph.split
  %i.ep = invoke noundef ptr @_ZN12colvarmodule4mainEv()
          to label %.noexc29 unwind label %bb.k   ; 0 uses

.noexc29:                                         ; preds = %bb.j
  %i.eq = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !135
  %i.er = load ptr, ptr %3, align 8, !tbaa !221
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 1152
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !54
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %.035
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !122
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 416
  %i.ex = sext i32 %i.ev to i64
  %i.ey = load ptr, ptr %i.ew, align 8, !tbaa !113
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %i.ey, i64 %i.ex ; 3 uses
  %i.fa = load <2 x double>, ptr %i.ez, align 8, !tbaa !109
  %i.fb = fadd <2 x double> %i.du, %i.fa
  store <2 x double> %i.fb, ptr %i.ez, align 8, !tbaa !109
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !119
  %i.fe = fadd double %i.dw, %i.fd
  store double %i.fe, ptr %i.fc, align 8, !tbaa !119
  %.pre = load i64, ptr %i.ar, align 8, !tbaa !108
  br label %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit

_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit: ; preds = %.noexc29, %bb.i
  %i.ff = phi i64 [ %.pre, %.noexc29 ], [ %i.dn, %bb.i ] ; 2 uses
  %i.fg = add nuw i64 %.035, 1                    ; 2 uses
  %i.fh = icmp ult i64 %i.fg, %i.ff
  br i1 %i.fh, label %.lr.ph.split, label %._crit_edge, !llvm.loop !913

bb.k:                                             ; preds = %bb.j
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12colvarmodule10atom_group18group_force_objectD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.m

bb.l:                                             ; preds = %bb.a, %._crit_edge, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  ret void

bb.m:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.fi, %bb.k ]
  resume { ptr, i32 } %.pn13.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN12colvarmodule10atom_group22get_group_force_objectEv(ptr dead_on_unwind noalias writable sret(%"class.colvarmodule::atom_group::group_force_object") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1712) %1) local_unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN12colvarmodule10atom_group18group_force_objectC1EPS0_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !220, !range !55, !noundef !56
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load double, ptr %2, align 8, !tbaa !117
  %i.e = load ptr, ptr %0, align 8, !tbaa !221    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1448
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %1 ; 4 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !109
  %i.j = fadd double %i.d, %i.i
  store double %i.j, ptr %i.h, align 8, !tbaa !109
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !118
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 1144
  %i.n = load i64, ptr %i.m, align 8, !tbaa !108  ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %i.h, i64 %i.n ; 2 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !109
  %i.q = fadd double %i.l, %i.p
  store double %i.q, ptr %i.o, align 8, !tbaa !109
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !119
  %.idx.i = shl i64 %i.n, 4
  %i.t = getelementptr i8, ptr %i.h, i64 %.idx.i  ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !109
  %i.v = fadd double %i.s, %i.u
  store double %i.v, ptr %i.t, align 8, !tbaa !109
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.w = tail call noundef ptr @_ZN12colvarmodule4mainEv() ; 0 uses
  %i.x = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !135
  %i.y = load ptr, ptr %0, align 8, !tbaa !221
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1152
end_hunk_4
