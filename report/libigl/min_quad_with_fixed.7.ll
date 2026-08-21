Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.7?download=true
inline.NumInlined: 12514
inline.NumDeleted: 4719
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 222
begin_hunk_0_@_ZN5Eigen8SparseQRINS_12SparseMatrixIdLi0EiEENS_14COLAMDOrderingIiEEE9factorizeERKS2_:bb.a
  %.not230 = icmp eq i64 %indvars.iv627, %i.tn
  br i1 %.not230, label %.lr.ph565.1, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph565
  %i.to = add nsw i64 %.5564, 1
  %i.tp = getelementptr inbounds [4 x i8], ptr %.sroa.0380.0471, i64 %.5564
  store i32 %i.tj, ptr %i.tp, align 4, !tbaa !104
  store i32 %i.kn, ptr %i.tl, align 4, !tbaa !104
  br label %.lr.ph565.1

.lr.ph565.1:                                      ; preds = %bb.bh, %.lr.ph565
  %.6 = phi i64 [ %i.to, %bb.bh ], [ %.5564, %.lr.ph565 ] ; 3 uses
  %i.tq = getelementptr [4 x i8], ptr %i.nt, i64 %.sroa.7319.0563
  %i.tr = getelementptr i8, ptr %i.tq, i64 4
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !104 ; 2 uses
  %i.tt = sext i32 %i.ts to i64
  %i.tu = getelementptr inbounds [4 x i8], ptr %.sroa.0403.0454, i64 %i.tt ; 2 uses
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !104
  %i.tw = zext i32 %i.tv to i64
  %.not230.1 = icmp eq i64 %indvars.iv627, %i.tw
  br i1 %.not230.1, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph565.1
  %i.tx = add nsw i64 %.6, 1
  %i.ty = getelementptr inbounds [4 x i8], ptr %.sroa.0380.0471, i64 %.6
  store i32 %i.ts, ptr %i.ty, align 4, !tbaa !104
  store i32 %i.kn, ptr %i.tu, align 4, !tbaa !104
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.lr.ph565.1
  %.6.1 = phi i64 [ %i.tx, %bb.bi ], [ %.6, %.lr.ph565.1 ] ; 2 uses
  %i.tz = add nsw i64 %.sroa.7319.0563, 2         ; 2 uses
  %exitcond621.not.1 = icmp eq i64 %i.tz, %.sink.i284
  br i1 %exitcond621.not.1, label %.loopexit, label %.lr.ph565, !llvm.loop !327

.loopexit:                                        ; preds = %.lr.ph565.prol.loopexit, %bb.bj, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit285, %._crit_edge562
  %.7 = phi i64 [ %.4567, %._crit_edge562 ], [ %.4567, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit285 ], [ %.6.lcssa.unr, %.lr.ph565.prol.loopexit ], [ %.6.1, %bb.bj ] ; 2 uses
  %i.ua = add nsw i64 %.0155568, -1
  %i.ub = icmp sgt i64 %.0155568, 0
  br i1 %i.ub, label %bb.av, label %._crit_edge570, !llvm.loop !328

bb.bk:                                            ; preds = %._crit_edge570
  %.not221 = icmp eq i64 %.4.lcssa, 0
  br i1 %.not221, label %.split, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.uc = load i32, ptr %.sroa.0380.0471, align 4, !tbaa !104
  %i.ud = sext i32 %i.uc to i64
  %i.ue = getelementptr inbounds [8 x i8], ptr %.sroa.0363.0, i64 %i.ud
  %i.uf = load double, ptr %i.ue, align 8, !tbaa !152 ; 7 uses
  %i.ug = icmp sgt i64 %.4.lcssa, 1
  br i1 %i.ug, label %.lr.ph575.preheader, label %.split

.lr.ph575.preheader:                              ; preds = %bb.bl
  %i.uh = add nsw i64 %.4.lcssa, -1               ; 4 uses
  %i.ui = add nsw i64 %.4.lcssa, -2               ; 2 uses
  %xtraiter799 = and i64 %i.uh, 3                 ; 3 uses
  %i.uj = icmp ult i64 %i.ui, 3
  br i1 %i.uj, label %.lr.ph575.epil.preheader, label %.lr.ph575.preheader.new

.lr.ph575.preheader.new:                          ; preds = %.lr.ph575.preheader
  %unroll_iter804 = and i64 %i.uh, -4
  br label %.lr.ph575

._crit_edge576.unr-lcssa:                         ; preds = %.lr.ph575
  %lcmp.mod801.not = icmp eq i64 %xtraiter799, 0
  br i1 %lcmp.mod801.not, label %._crit_edge576, label %.lr.ph575.epil.preheader

.lr.ph575.epil.preheader:                         ; preds = %._crit_edge576.unr-lcssa, %.lr.ph575.preheader
  %.0150573.epil.init = phi i64 [ 1, %.lr.ph575.preheader ], [ %i.vy, %._crit_edge576.unr-lcssa ]
  %.0151572.epil.init = phi double [ 0.000000e+00, %.lr.ph575.preheader ], [ %i.vx, %._crit_edge576.unr-lcssa ]
  %lcmp.mod803 = icmp ne i64 %xtraiter799, 0
  tail call void @llvm.assume(i1 %lcmp.mod803)
  br label %.lr.ph575.epil

.lr.ph575.epil:                                   ; preds = %.lr.ph575.epil, %.lr.ph575.epil.preheader
  %.0150573.epil = phi i64 [ %i.ur, %.lr.ph575.epil ], [ %.0150573.epil.init, %.lr.ph575.epil.preheader ] ; 2 uses
  %.0151572.epil = phi double [ %i.uq, %.lr.ph575.epil ], [ %.0151572.epil.init, %.lr.ph575.epil.preheader ]
  %epil.iter800 = phi i64 [ %epil.iter800.next, %.lr.ph575.epil ], [ 0, %.lr.ph575.epil.preheader ]
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0380.0471, i64 %.0150573.epil
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !104
  %i.um = sext i32 %i.ul to i64
  %i.un = getelementptr inbounds [8 x i8], ptr %.sroa.0363.0, i64 %i.um
  %i.uo = load double, ptr %i.un, align 8, !tbaa !152 ; 2 uses
  %i.up = fmul double %i.uo, %i.uo
  %i.uq = fadd double %.0151572.epil, %i.up       ; 2 uses
  %i.ur = add nuw nsw i64 %.0150573.epil, 1
  %epil.iter800.next = add i64 %epil.iter800, 1   ; 2 uses
  %epil.iter800.cmp.not = icmp eq i64 %epil.iter800.next, %xtraiter799
  br i1 %epil.iter800.cmp.not, label %._crit_edge576, label %.lr.ph575.epil, !llvm.loop !329

._crit_edge576:                                   ; preds = %.lr.ph575.epil, %._crit_edge576.unr-lcssa
  %.lcssa761 = phi double [ %i.vx, %._crit_edge576.unr-lcssa ], [ %i.uq, %.lr.ph575.epil ] ; 2 uses
  %i.us = fcmp oeq double %.lcssa761, 0.000000e+00
  br i1 %i.us, label %.split, label %.lr.ph580

.lr.ph575:                                        ; preds = %.lr.ph575, %.lr.ph575.preheader.new
  %.0150573 = phi i64 [ 1, %.lr.ph575.preheader.new ], [ %i.vy, %.lr.ph575 ] ; 5 uses
  %.0151572 = phi double [ 0.000000e+00, %.lr.ph575.preheader.new ], [ %i.vx, %.lr.ph575 ]
  %niter805 = phi i64 [ 0, %.lr.ph575.preheader.new ], [ %niter805.next.3, %.lr.ph575 ]
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0380.0471, i64 %.0150573
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !104
  %i.uv = sext i32 %i.uu to i64
  %i.uw = getelementptr inbounds [8 x i8], ptr %.sroa.0363.0, i64 %i.uv
  %i.ux = load double, ptr %i.uw, align 8, !tbaa !152 ; 2 uses
  %i.uy = fmul double %i.ux, %i.ux
  %i.uz = fadd double %.0151572, %i.uy
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0380.0471, i64 %.0150573
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 4
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !104
  %i.vd = sext i32 %i.vc to i64
  %i.ve = getelementptr inbounds [8 x i8], ptr %.sroa.0363.0, i64 %i.vd
  %i.vf = load double, ptr %i.ve, align 8, !tbaa !152 ; 2 uses
  %i.vg = fmul double %i.vf, %i.vf
  %i.vh = fadd double %i.uz, %i.vg
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0380.0471, i64 %.0150573
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 8
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !104
  %i.vl = sext i32 %i.vk to i64
  %i.vm = getelementptr inbounds [8 x i8], ptr %.sroa.0363.0, i64 %i.vl
  %i.vn = load double, ptr %i.vm, align 8, !tbaa !152 ; 2 uses
  %i.vo = fmul double %i.vn, %i.vn
  %i.vp = fadd double %i.vh, %i.vo
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0380.0471, i64 %.0150573
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 12
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !104
  %i.vt = sext i32 %i.vs to i64
  %i.vu = getelementptr inbounds [8 x i8], ptr %.sroa.0363.0, i64 %i.vt
  %i.vv = load double, ptr %i.vu, align 8, !tbaa !152 ; 2 uses
  %i.vw = fmul double %i.vv, %i.vv
  %i.vx = fadd double %i.vp, %i.vw                ; 3 uses
  %i.vy = add nuw nsw i64 %.0150573, 4            ; 2 uses
  %niter805.next.3 = add i64 %niter805, 4         ; 2 uses
  %niter805.ncmp.3 = icmp eq i64 %niter805.next.3, %unroll_iter804
  br i1 %niter805.ncmp.3, label %._crit_edge576.unr-lcssa, label %.lr.ph575, !llvm.loop !330

.split:                                           ; preds = %bb.bk, %bb.bl, %._crit_edge576
  %.4.lcssa679684687696 = phi i64 [ %.4.lcssa, %._crit_edge576 ], [ %.4.lcssa, %bb.bl ], [ 0, %bb.bk ] ; 2 uses
  %i.vz = phi double [ %i.uf, %._crit_edge576 ], [ %i.uf, %bb.bl ], [ 0.000000e+00, %bb.bk ] ; 2 uses
  %i.wa = load i32, ptr %.sroa.0380.0471, align 4, !tbaa !104
  %i.wb = sext i32 %i.wa to i64
  %i.wc = getelementptr inbounds [8 x i8], ptr %.sroa.0363.0, i64 %i.wb
  store double 1.000000e+00, ptr %i.wc, align 8, !tbaa !152
  br i1 %i.nr, label %.lr.ph584.preheader, label %._crit_edge585

.lr.ph580:                                        ; preds = %._crit_edge576
  %i.wd = fmul double %i.uf, %i.uf
  %i.we = fadd double %i.wd, %.lcssa761
  %i.wf = tail call double @sqrt(double noundef %i.we) #33 ; 2 uses
  %i.wg = fcmp ult double %i.uf, 0.000000e+00
  %i.wh = fneg double %i.wf
  %.0152 = select i1 %i.wg, double %i.wf, double %i.wh ; 5 uses
  %i.wi = load i32, ptr %.sroa.0380.0471, align 4, !tbaa !104
  %i.wj = sext i32 %i.wi to i64
  %i.wk = getelementptr inbounds [8 x i8], ptr %.sroa.0363.0, i64 %i.wj
  store double 1.000000e+00, ptr %i.wk, align 8, !tbaa !152
  %i.wl = fsub double %i.uf, %.0152               ; 5 uses
  %xtraiter807 = and i64 %i.uh, 3                 ; 3 uses
  %i.wm = icmp ult i64 %i.ui, 3
  br i1 %i.wm, label %.epil.preheader806, label %.lr.ph580.new

.lr.ph580.new:                                    ; preds = %.lr.ph580
  %unroll_iter811 = and i64 %i.uh, -4
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.lr.ph580.new
  %.0149578 = phi i64 [ 1, %.lr.ph580.new ], [ %i.xo, %bb.bm ] ; 5 uses
  %niter812 = phi i64 [ 0, %.lr.ph580.new ], [ %niter812.next.3, %bb.bm ]
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0380.0471, i64 %.0149578
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !104
  %i.wp = sext i32 %i.wo to i64
  %i.wq = getelementptr inbounds [8 x i8], ptr %.sroa.0363.0, i64 %i.wp ; 2 uses
  %i.wr = load double, ptr %i.wq, align 8, !tbaa !152
  %i.ws = fdiv double %i.wr, %i.wl
  store double %i.ws, ptr %i.wq, align 8, !tbaa !152
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0380.0471, i64 %.0149578
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 4
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !104
  %i.ww = sext i32 %i.wv to i64
  %i.wx = getelementptr inbounds [8 x i8], ptr %.sroa.0363.0, i64 %i.ww ; 2 uses
  %i.wy = load double, ptr %i.wx, align 8, !tbaa !152
  %i.wz = fdiv double %i.wy, %i.wl
  store double %i.wz, ptr %i.wx, align 8, !tbaa !152
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0380.0471, i64 %.0149578
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 8
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !104
  %i.xd = sext i32 %i.xc to i64
  %i.xe = getelementptr inbounds [8 x i8], ptr %.sroa.0363.0, i64 %i.xd ; 2 uses
  %i.xf = load double, ptr %i.xe, align 8, !tbaa !152
  %i.xg = fdiv double %i.xf, %i.wl
  store double %i.xg, ptr %i.xe, align 8, !tbaa !152
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0380.0471, i64 %.0149578
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 12
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !104
  %i.xk = sext i32 %i.xj to i64
  %i.xl = getelementptr inbounds [8 x i8], ptr %.sroa.0363.0, i64 %i.xk ; 2 uses
  %i.xm = load double, ptr %i.xl, align 8, !tbaa !152
  %i.xn = fdiv double %i.xm, %i.wl
  store double %i.xn, ptr %i.xl, align 8, !tbaa !152
  %i.xo = add nuw nsw i64 %.0149578, 4            ; 2 uses
  %niter812.next.3 = add nuw i64 %niter812, 4     ; 2 uses
  %niter812.ncmp.3 = icmp eq i64 %niter812.next.3, %unroll_iter811
  br i1 %niter812.ncmp.3, label %._crit_edge581.unr-lcssa, label %bb.bm, !llvm.loop !331

._crit_edge581.unr-lcssa:                         ; preds = %bb.bm
  %lcmp.mod809.not = icmp eq i64 %xtraiter807, 0
  br i1 %lcmp.mod809.not, label %._crit_edge581, label %.epil.preheader806

.epil.preheader806:                               ; preds = %._crit_edge581.unr-lcssa, %.lr.ph580
  %.0149578.epil.init = phi i64 [ 1, %.lr.ph580 ], [ %i.xo, %._crit_edge581.unr-lcssa ]
  %lcmp.mod810 = icmp ne i64 %xtraiter807, 0
  tail call void @llvm.assume(i1 %lcmp.mod810)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %.epil.preheader806
  %.0149578.epil = phi i64 [ %.0149578.epil.init, %.epil.preheader806 ], [ %i.xv, %bb.bn ] ; 2 uses
  %epil.iter808 = phi i64 [ 0, %.epil.preheader806 ], [ %epil.iter808.next, %bb.bn ]
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0380.0471, i64 %.0149578.epil
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !104
  %i.xr = sext i32 %i.xq to i64
  %i.xs = getelementptr inbounds [8 x i8], ptr %.sroa.0363.0, i64 %i.xr ; 2 uses
  %i.xt = load double, ptr %i.xs, align 8, !tbaa !152
  %i.xu = fdiv double %i.xt, %i.wl
  store double %i.xu, ptr %i.xs, align 8, !tbaa !152
  %i.xv = add nuw nsw i64 %.0149578.epil, 1
  %epil.iter808.next = add i64 %epil.iter808, 1   ; 2 uses
  %epil.iter808.cmp.not = icmp eq i64 %epil.iter808.next, %xtraiter807
  br i1 %epil.iter808.cmp.not, label %._crit_edge581, label %bb.bn, !llvm.loop !332

._crit_edge581:                                   ; preds = %bb.bn, %._crit_edge581.unr-lcssa
  %i.xw = fsub double %.0152, %i.uf
  %i.xx = fdiv double %i.xw, %.0152               ; 2 uses
  br i1 %i.nr, label %.lr.ph584.preheader, label %._crit_edge585

bb.bo:                                            ; preds = %._crit_edge570
  br i1 %i.nr, label %.lr.ph584.preheader, label %.preheader514

.lr.ph584.preheader:                              ; preds = %._crit_edge581, %.split, %bb.bo
  %.2708 = phi double [ %i.vz, %.split ], [ 0.000000e+00, %bb.bo ], [ %.0152, %._crit_edge581 ]
  %.1154707 = phi double [ 0.000000e+00, %.split ], [ 0.000000e+00, %bb.bo ], [ %i.xx, %._crit_edge581 ]
  %.4.lcssa680706 = phi i64 [ %.4.lcssa679684687696, %.split ], [ %.4.lcssa, %bb.bo ], [ %.4.lcssa, %._crit_edge581 ]
  br label %.lr.ph584

._crit_edge585:                                   ; preds = %bb.bw, %._crit_edge581, %.split
  %.2703 = phi double [ %i.vz, %.split ], [ %.0152, %._crit_edge581 ], [ %.2708, %bb.bw ] ; 2 uses
  %.1154702 = phi double [ 0.000000e+00, %.split ], [ %i.xx, %._crit_edge581 ], [ %.1154707, %bb.bw ]
  %.4.lcssa680701 = phi i64 [ %.4.lcssa679684687696, %.split ], [ %.4.lcssa, %._crit_edge581 ], [ %.4.lcssa680706, %bb.bw ] ; 2 uses
  %i.xy = phi i1 [ false, %.split ], [ false, %._crit_edge581 ], [ %.not725, %bb.bw ]
  %i.xz = tail call double @llvm.fabs.f64(double %.2703)
  %i.ya = fcmp ult double %i.xz, %.0171
  %or.cond504 = select i1 %i.xy, i1 true, i1 %i.ya
  br i1 %or.cond504, label %.preheader514, label %bb.bx

.preheader514:                                    ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, %bb.bo, %._crit_edge585
  %i.yb = icmp sgt i64 %i.kg, %i.kl
  %.pre633 = load ptr, ptr %i.jr, align 8, !tbaa !78 ; 12 uses
  br i1 %i.yb, label %.lr.ph591, label %._crit_edge592

.lr.ph591:                                        ; preds = %.preheader514
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %.pre633, i64 %i.kl
  %.pre632 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !104 ; 5 uses
  %i.yc = sub nsw i64 %i.kg, %i.kl
  %xtraiter813 = and i64 %i.yc, 3                 ; 2 uses
  %lcmp.mod814.not = icmp eq i64 %xtraiter813, 0
  br i1 %lcmp.mod814.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph591, %.prol.preheader
  %.0590.prol = phi i64 [ %i.ye, %.prol.preheader ], [ %i.kl, %.lr.ph591 ] ; 2 uses
  %prol.iter815 = phi i64 [ %prol.iter815.next, %.prol.preheader ], [ 0, %.lr.ph591 ]
  %i.yd = getelementptr inbounds [4 x i8], ptr %.pre633, i64 %.0590.prol
  %i.ye = add nsw i64 %.0590.prol, 1              ; 3 uses
  %i.yf = getelementptr inbounds [4 x i8], ptr %.pre633, i64 %i.ye ; 2 uses
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !104
  store i32 %i.yg, ptr %i.yd, align 4, !tbaa !104
  store i32 %.pre632, ptr %i.yf, align 4, !tbaa !104
  %prol.iter815.next = add i64 %prol.iter815, 1   ; 2 uses
  %prol.iter815.cmp.not = icmp eq i64 %prol.iter815.next, %xtraiter813
  br i1 %prol.iter815.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !333

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph591
  %.0590.unr = phi i64 [ %i.kl, %.lr.ph591 ], [ %i.ye, %.prol.preheader ]
  %i.yh = sub nsw i64 %i.kl, %i.kg
  %i.yi = icmp ugt i64 %i.yh, -4
  br i1 %i.yi, label %._crit_edge592, label %.lr.ph591.new

.lr.ph584:                                        ; preds = %.lr.ph584.preheader, %bb.bw
  %.0148582 = phi i64 [ %i.zv, %bb.bw ], [ %i.nq, %.lr.ph584.preheader ] ; 3 uses
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0392.0, i64 %.0148582
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !104 ; 3 uses
  %i.yl = icmp slt i32 %i.yk, %.0165594
  br i1 %i.yl, label %bb.bp, label %bb.bw

bb.bp:                                            ; preds = %.lr.ph584
  %i.ym = sext i32 %i.yk to i64
  %i.yn = getelementptr inbounds [8 x i8], ptr %.sroa.0363.0, i64 %i.ym ; 2 uses
  %i.yo = load double, ptr %i.yn, align 8, !tbaa !152
  %i.yp = load ptr, ptr %i.ai, align 8, !tbaa !145
  %i.yq = getelementptr [4 x i8], ptr %i.yp, i64 %indvars.iv627
  %i.yr = getelementptr i8, ptr %i.yq, i64 4      ; 2 uses
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !104 ; 2 uses
  %i.yt = sext i32 %i.ys to i64
  %i.yu = add nsw i32 %i.ys, 1
  store i32 %i.yu, ptr %i.yr, align 4, !tbaa !104
  %i.yv = load i64, ptr %i.ah, align 8, !tbaa !233 ; 6 uses
  %i.yw = add nsw i64 %i.yv, 1                    ; 3 uses
  %i.yx = load i64, ptr %i.kf, align 8, !tbaa !279
  %.not511 = icmp sgt i64 %i.yx, %i.yv
  br i1 %.not511, label %bb.bv, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.yy = sitofp i64 %i.yw to double
  %i.yz = fptosi double %i.yy to i64
  %i.za = add nsw i64 %i.yw, %i.yz
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.za, i64 2147483647) ; 7 uses
  %.not512 = icmp sgt i64 %.sroa.speculated.i, %i.yv
  br i1 %.not512, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.zb = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.zb, align 8, !tbaa !113
  invoke void @__cxa_throw(ptr nonnull %i.zb, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc304 unwind label %.loopexit.split-lp

.noexc304:                                        ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.zc = icmp ugt i64 %.sroa.speculated.i, 2305843009213693951
  %i.zd = shl nuw i64 %.sroa.speculated.i, 3
  %i.ze = select i1 %i.zc, i64 -1, i64 %i.zd
  %i.zf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ze) #38
          to label %.noexc305 unwind label %.loopexit515 ; 3 uses

.noexc305:                                        ; preds = %bb.bs
  %i.zg = icmp ugt i64 %.sroa.speculated.i, 4611686018427387903
  %i.zh = shl nuw i64 %.sroa.speculated.i, 2
  %i.zi = select i1 %i.zg, i64 -1, i64 %i.zh
  %i.zj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.zi) #38
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i: ; preds = %.noexc305
  %.sroa.speculated.i.i = tail call i64 @llvm.smin.i64(i64 %i.yv, i64 %.sroa.speculated.i) ; 3 uses
  %i.zk = icmp sgt i64 %.sroa.speculated.i.i, 0
  %.pre.i.i = load ptr, ptr %i.ke, align 8, !tbaa !269 ; 3 uses
  br i1 %i.zk, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i
  %.pre23.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !234
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i
  %.idx.i.i = shl nuw nsw i64 %.sroa.speculated.i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.zf, ptr align 8 %.pre.i.i, i64 %.idx.i.i, i1 false)
  %.idx22.i.i = shl nuw nsw i64 %.sroa.speculated.i.i, 2
  %i.zl = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !162 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.zj, ptr align 4 %i.zl, i64 %.idx22.i.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i: ; preds = %.noexc305
  %i.zm = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.zf) #34
  br label %.body268

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i
  %i.zn = phi ptr [ %.pre23.i.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i ], [ %i.zl, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i ] ; 2 uses
  store ptr %i.zf, ptr %i.ke, align 8, !tbaa !269
  store ptr %i.zj, ptr %.phi.trans.insert.i.i, align 8, !tbaa !234
  store i64 %.sroa.speculated.i, ptr %i.kf, align 8, !tbaa !279
  %i.zo = icmp eq ptr %i.zn, null
  br i1 %i.zo, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i, label %bb.bt

bb.bt:                                            ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.zn) #34
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i: ; preds = %bb.bt, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i
  %i.zp = icmp eq ptr %.pre.i.i, null
  br i1 %i.zp, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #34
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i, %bb.bp
  store i64 %i.yw, ptr %i.ah, align 8, !tbaa !233
  %i.zq = load ptr, ptr %i.ke, align 8, !tbaa !161 ; 2 uses
  %i.zr = getelementptr inbounds [8 x i8], ptr %i.zq, i64 %i.yv
  store double 0.000000e+00, ptr %i.zr, align 8, !tbaa !152
  %i.zs = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !162
  %i.zt = getelementptr inbounds [4 x i8], ptr %i.zs, i64 %i.yv
  store i32 %i.yk, ptr %i.zt, align 4, !tbaa !104
  %i.zu = getelementptr inbounds [8 x i8], ptr %i.zq, i64 %i.yt
  store double %i.yo, ptr %i.zu, align 8, !tbaa !152
  store double 0.000000e+00, ptr %i.yn, align 8, !tbaa !152
  br label %bb.bw

.loopexit515:                                     ; preds = %bb.bs
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body268
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal6ColamdL14init_rows_colsIiEET_S3_S3_PNS1_12RowStructureIS3_EEPNS1_12ColStructureIS3_EEPS3_SA_SA_:bb.a
  %lcmp.mod339 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod339)
  br label %.lr.ph212.epil

.lr.ph212.epil:                                   ; preds = %.lr.ph212.epil, %.lr.ph212.epil.preheader
  %indvars.iv261.epil = phi i64 [ %indvars.iv261.epil.init, %.lr.ph212.epil.preheader ], [ %indvars.iv.next262.epil, %.lr.ph212.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph212.epil.preheader ], [ %epil.iter.next, %.lr.ph212.epil ]
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv261.epil ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 0, ptr %i.s, align 4, !tbaa !380
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 -1, ptr %i.t, align 4, !tbaa !52
  %indvars.iv.next262.epil = add nuw nsw i64 %indvars.iv261.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader204, label %.lr.ph212.epil, !llvm.loop !382

.preheader204:                                    ; preds = %.preheader204.loopexit.unr-lcssa, %.lr.ph212.epil, %._crit_edge
  br i1 %.not247, label %._crit_edge219, label %.lr.ph218

.lr.ph218:                                        ; preds = %.preheader204
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %wide.trip.count269 = zext nneg i32 %1 to i64   ; 2 uses
  br label %bb.d

.lr.ph212:                                        ; preds = %.lr.ph212, %.lr.ph212.preheader.new
  %indvars.iv261 = phi i64 [ 0, %.lr.ph212.preheader.new ], [ %indvars.iv.next262.3, %.lr.ph212 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph212.preheader.new ], [ %niter.next.3, %.lr.ph212 ]
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv261 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 0, ptr %i.y, align 4, !tbaa !380
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 -1, ptr %i.z, align 4, !tbaa !52
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv261 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  store i32 0, ptr %i.ab, align 4, !tbaa !380
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  store i32 -1, ptr %i.ac, align 4, !tbaa !52
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv261 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 36
  store i32 0, ptr %i.ae, align 4, !tbaa !380
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  store i32 -1, ptr %i.af, align 4, !tbaa !52
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv261 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 52
  store i32 0, ptr %i.ah, align 4, !tbaa !380
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 60
  store i32 -1, ptr %i.ai, align 4, !tbaa !52
  %indvars.iv.next262.3 = add nuw nsw i64 %indvars.iv261, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader204.loopexit.unr-lcssa, label %.lr.ph212, !llvm.loop !383

.loopexit203:                                     ; preds = %bb.k, %bb.d
  %exitcond270.not = icmp eq i64 %indvars.iv.next267, %wide.trip.count269
  br i1 %exitcond270.not, label %._crit_edge219, label %bb.d, !llvm.loop !384

bb.d:                                             ; preds = %.lr.ph218, %.loopexit203
  %indvars.iv266 = phi i64 [ 0, %.lr.ph218 ], [ %indvars.iv.next267, %.loopexit203 ] ; 8 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv266
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !104 ; 2 uses
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next267
  %i.am = load i32, ptr %i.al, align 4, !tbaa !104 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %4, i64 %i.an
  %i.ap = icmp slt i32 %i.ak, %i.am
  br i1 %i.ap, label %.lr.ph216, label %.loopexit203

.lr.ph216:                                        ; preds = %bb.d
  %i.aq = sext i32 %i.ak to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %4, i64 %i.aq
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %indvars.iv266
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  %i.au = trunc nuw nsw i64 %indvars.iv266 to i32
  %i.av = trunc nuw nsw i64 %indvars.iv266 to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph216, %bb.k
  %.0214 = phi i32 [ -1, %.lr.ph216 ], [ %i.ax, %bb.k ]
  %.0182213 = phi ptr [ %i.ar, %.lr.ph216 ], [ %i.aw, %bb.k ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0182213, i64 4 ; 2 uses
  %i.ax = load i32, ptr %.0182213, align 4, !tbaa !104 ; 6 uses
  %or.cond = icmp ult i32 %i.ax, %0
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = trunc nuw nsw i64 %indvars.iv266 to i32
  store i32 -9, ptr %i.u, align 4, !tbaa !104
  store i32 %i.ay, ptr %i.v, align 4, !tbaa !104
  store i32 %i.ax, ptr %i.w, align 4, !tbaa !104
  store i32 %0, ptr %i.p, align 4, !tbaa !104
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %.not195 = icmp sgt i32 %i.ax, %.0214
  %i.az = zext nneg i32 %i.ax to i64              ; 5 uses
  br i1 %.not195, label %bb.h, label %._crit_edge305

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !52
  %i.bd = zext i32 %i.bc to i64
  %i.be = icmp eq i64 %indvars.iv266, %i.bd
  br i1 %i.be, label %._crit_edge305, label %.thread

.thread:                                          ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.az
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  br label %bb.i

._crit_edge305:                                   ; preds = %bb.g, %bb.h
  store i32 1, ptr %i.u, align 4, !tbaa !104
  store i32 %i.au, ptr %i.v, align 4, !tbaa !104
  store i32 %i.ax, ptr %i.w, align 4, !tbaa !104
  %i.bh = load i32, ptr %i.p, align 4, !tbaa !104
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.p, align 4, !tbaa !104
  %.phi.trans.insert301 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.az
  %.phi.trans.insert302 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert301, i64 12
  %.pre = load i32, ptr %.phi.trans.insert302, align 4, !tbaa !52
  %.pre303 = zext i32 %.pre to i64
  %i.bj = icmp eq i64 %indvars.iv266, %.pre303
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.az
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12 ; 2 uses
  br i1 %i.bj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread, %._crit_edge305
  %i.bm = phi ptr [ %i.bg, %.thread ], [ %i.bl, %._crit_edge305 ]
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.az
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !380
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !380
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge305
  %i.br = load i32, ptr %i.at, align 4, !tbaa !378
  %i.bs = add nsw i32 %i.br, -1
  store i32 %i.bs, ptr %i.at, align 4, !tbaa !378
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bt = phi ptr [ %i.bl, %bb.j ], [ %i.bm, %bb.i ]
  store i32 %i.av, ptr %i.bt, align 4, !tbaa !52
  %i.bu = icmp ult ptr %i.aw, %i.ao
  br i1 %i.bu, label %bb.e, label %.loopexit203, !llvm.loop !385

._crit_edge219:                                   ; preds = %.loopexit203, %.preheader204
  %.pre-phi307 = phi i64 [ 0, %.preheader204 ], [ %wide.trip.count269, %.loopexit203 ] ; 5 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.pre-phi307
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !104 ; 2 uses
  store i32 %i.bw, ptr %2, align 4, !tbaa !386
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !52
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 -1, ptr %i.by, align 4, !tbaa !52
  %i.bz = icmp samesign ugt i32 %0, 1
  br i1 %i.bz, label %.lr.ph222.preheader, label %._crit_edge223

.lr.ph222.preheader:                              ; preds = %._crit_edge219
  %wide.trip.count274 = zext nneg i32 %0 to i64
  %i.ca = add nsw i64 %wide.trip.count274, -1     ; 3 uses
  %xtraiter340 = and i64 %i.ca, 1
  %i.cb = icmp eq i32 %0, 2
  br i1 %i.cb, label %.lr.ph222.epil.preheader, label %.lr.ph222.preheader.new

.lr.ph222.preheader.new:                          ; preds = %.lr.ph222.preheader
  %unroll_iter344 = and i64 %i.ca, -2
  br label %.lr.ph222

.lr.ph222:                                        ; preds = %.lr.ph222, %.lr.ph222.preheader.new
  %indvars.iv271 = phi i64 [ 1, %.lr.ph222.preheader.new ], [ %indvars.iv.next272.1, %.lr.ph222 ] ; 3 uses
  %niter345 = phi i64 [ 0, %.lr.ph222.preheader.new ], [ %niter345.next.1, %.lr.ph222 ]
  %i.cc = getelementptr [16 x i8], ptr %2, i64 %indvars.iv271 ; 5 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 -16
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !386
  %i.cf = getelementptr i8, ptr %i.cc, i64 -12
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !380
  %i.ch = add nsw i32 %i.cg, %i.ce                ; 2 uses
  store i32 %i.ch, ptr %i.cc, align 4, !tbaa !386
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !52
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 -1, ptr %i.cj, align 4, !tbaa !52
  %i.ck = getelementptr [16 x i8], ptr %2, i64 %indvars.iv271 ; 5 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 16
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !386
  %i.cn = getelementptr i8, ptr %i.ck, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !380
  %i.cp = add nsw i32 %i.co, %i.cm                ; 2 uses
  store i32 %i.cp, ptr %i.cl, align 4, !tbaa !386
  %i.cq = getelementptr i8, ptr %i.ck, i64 24
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !52
  %i.cr = getelementptr i8, ptr %i.ck, i64 28
  store i32 -1, ptr %i.cr, align 4, !tbaa !52
  %indvars.iv.next272.1 = add nuw nsw i64 %indvars.iv271, 2 ; 2 uses
  %niter345.next.1 = add nuw i64 %niter345, 2     ; 2 uses
  %niter345.ncmp.1 = icmp eq i64 %niter345.next.1, %unroll_iter344
  br i1 %niter345.ncmp.1, label %._crit_edge223.loopexit.unr-lcssa, label %.lr.ph222, !llvm.loop !387

._crit_edge223.loopexit.unr-lcssa:                ; preds = %.lr.ph222
  %lcmp.mod342.not = icmp eq i64 %xtraiter340, 0
  br i1 %lcmp.mod342.not, label %._crit_edge223, label %.lr.ph222.epil.preheader

.lr.ph222.epil.preheader:                         ; preds = %._crit_edge223.loopexit.unr-lcssa, %.lr.ph222.preheader
  %indvars.iv271.epil.init = phi i64 [ 1, %.lr.ph222.preheader ], [ %indvars.iv.next272.1, %._crit_edge223.loopexit.unr-lcssa ]
  %lcmp.mod343 = trunc i64 %i.ca to i1
  tail call void @llvm.assume(i1 %lcmp.mod343)
  %i.cs = getelementptr [16 x i8], ptr %2, i64 %indvars.iv271.epil.init ; 5 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 -16
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !386
  %i.cv = getelementptr i8, ptr %i.cs, i64 -12
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !380
  %i.cx = add nsw i32 %i.cw, %i.cu                ; 2 uses
  store i32 %i.cx, ptr %i.cs, align 4, !tbaa !386
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !52
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 -1, ptr %i.cz, align 4, !tbaa !52
  br label %._crit_edge223

._crit_edge223:                                   ; preds = %.lr.ph222.epil.preheader, %._crit_edge223.loopexit.unr-lcssa, %._crit_edge219
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !104
  %i.dc = icmp eq i32 %i.db, 1
  br i1 %i.dc, label %.preheader198, label %.preheader201

.preheader201:                                    ; preds = %._crit_edge223
  br i1 %.not247, label %.loopexit199, label %.lr.ph228

.preheader198:                                    ; preds = %._crit_edge223
  br i1 %.not247, label %.loopexit199, label %.lr.ph233

.loopexit197:                                     ; preds = %bb.m, %.lr.ph233
  %exitcond285.not = icmp eq i64 %indvars.iv.next282, %.pre-phi307
  br i1 %exitcond285.not, label %.loopexit199, label %.lr.ph233, !llvm.loop !388

.lr.ph233:                                        ; preds = %.preheader198, %.loopexit197
  %indvars.iv281 = phi i64 [ %indvars.iv.next282, %.loopexit197 ], [ 0, %.preheader198 ] ; 4 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv281
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !104 ; 2 uses
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 3 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next282
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !104 ; 2 uses
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %4, i64 %i.dh
  %i.dj = icmp slt i32 %i.de, %i.dg
  br i1 %i.dj, label %.lr.ph231.preheader, label %.loopexit197

.lr.ph231.preheader:                              ; preds = %.lr.ph233
  %i.dk = sext i32 %i.de to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %4, i64 %i.dk
  %i.dm = trunc nuw nsw i64 %indvars.iv281 to i32 ; 2 uses
  br label %.lr.ph231

.lr.ph231:                                        ; preds = %.lr.ph231.preheader, %bb.m
  %.1229 = phi ptr [ %i.dn, %bb.m ], [ %i.dl, %.lr.ph231.preheader ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.1229, i64 4 ; 2 uses
  %i.do = load i32, ptr %.1229, align 4, !tbaa !104
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [16 x i8], ptr %2, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 12 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !52
  %i.dt = zext i32 %i.ds to i64
  %.not = icmp eq i64 %indvars.iv281, %i.dt
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph231
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !52 ; 2 uses
  %i.dw = add nsw i32 %i.dv, 1
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !52
  %i.dx = sext i32 %i.dv to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %4, i64 %i.dx
  store i32 %i.dm, ptr %i.dy, align 4, !tbaa !104
  store i32 %i.dm, ptr %i.dr, align 4, !tbaa !52
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph231
  %i.dz = icmp ult ptr %i.dn, %i.di
  br i1 %i.dz, label %.lr.ph231, label %.loopexit197, !llvm.loop !389

.loopexit200:                                     ; preds = %.lr.ph226, %.lr.ph228
  %exitcond280.not = icmp eq i64 %indvars.iv.next277, %.pre-phi307
  br i1 %exitcond280.not, label %.loopexit199, label %.lr.ph228, !llvm.loop !390

.lr.ph228:                                        ; preds = %.preheader201, %.loopexit200
  %indvars.iv276 = phi i64 [ %indvars.iv.next277, %.loopexit200 ], [ 0, %.preheader201 ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv276
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !104 ; 2 uses
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1 ; 3 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next277
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !104 ; 2 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ee
  %i.eg = icmp slt i32 %i.eb, %i.ed
  br i1 %i.eg, label %.lr.ph226.preheader, label %.loopexit200

.lr.ph226.preheader:                              ; preds = %.lr.ph228
  %i.eh = sext i32 %i.eb to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %4, i64 %i.eh
  %i.ej = trunc nuw nsw i64 %indvars.iv276 to i32
  br label %.lr.ph226

.lr.ph226:                                        ; preds = %.lr.ph226.preheader, %.lr.ph226
  %.2224 = phi ptr [ %i.ek, %.lr.ph226 ], [ %i.ei, %.lr.ph226.preheader ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.2224, i64 4 ; 2 uses
  %i.el = load i32, ptr %.2224, align 4, !tbaa !104
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [16 x i8], ptr %2, i64 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !52 ; 2 uses
  %i.eq = add nsw i32 %i.ep, 1
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !52
  %i.er = sext i32 %i.ep to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %4, i64 %i.er
  store i32 %i.ej, ptr %i.es, align 4, !tbaa !104
  %i.et = icmp ult ptr %i.ek, %i.ef
  br i1 %i.et, label %.lr.ph226, label %.loopexit200, !llvm.loop !391

.loopexit199:                                     ; preds = %.loopexit200, %.loopexit197, %.preheader201, %.preheader198
  br i1 %.not248, label %._crit_edge237, label %.lr.ph236.preheader

.lr.ph236.preheader:                              ; preds = %.loopexit199
  %wide.trip.count289 = zext nneg i32 %0 to i64   ; 2 uses
  %xtraiter346 = and i64 %wide.trip.count289, 3   ; 3 uses
  %i.eu = icmp samesign ult i32 %0, 4
  br i1 %i.eu, label %.lr.ph236.epil.preheader, label %.lr.ph236.preheader.new

.lr.ph236.preheader.new:                          ; preds = %.lr.ph236.preheader
  %unroll_iter350 = and i64 %wide.trip.count289, 2147483644
  br label %.lr.ph236

.lr.ph236:                                        ; preds = %.lr.ph236, %.lr.ph236.preheader.new
  %indvars.iv286 = phi i64 [ 0, %.lr.ph236.preheader.new ], [ %indvars.iv.next287.3, %.lr.ph236 ] ; 5 uses
  %niter351 = phi i64 [ 0, %.lr.ph236.preheader.new ], [ %niter351.next.3, %.lr.ph236 ]
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv286 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  store i32 0, ptr %i.ew, align 4, !tbaa !52
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !380
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !52
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv286 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 28
  store i32 0, ptr %i.fb, align 4, !tbaa !52
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 20
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !380
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !52
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv286 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 44
  store i32 0, ptr %i.fg, align 4, !tbaa !52
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 36
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !380
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !52
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv286 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 60
  store i32 0, ptr %i.fl, align 4, !tbaa !52
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 52
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !380
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 56
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !52
  %indvars.iv.next287.3 = add nuw nsw i64 %indvars.iv286, 4 ; 2 uses
  %niter351.next.3 = add i64 %niter351, 4         ; 2 uses
  %niter351.ncmp.3 = icmp eq i64 %niter351.next.3, %unroll_iter350
  br i1 %niter351.ncmp.3, label %._crit_edge237.loopexit.unr-lcssa, label %.lr.ph236, !llvm.loop !392

._crit_edge237.loopexit.unr-lcssa:                ; preds = %.lr.ph236
  %lcmp.mod348.not = icmp eq i64 %xtraiter346, 0
  br i1 %lcmp.mod348.not, label %._crit_edge237, label %.lr.ph236.epil.preheader

.lr.ph236.epil.preheader:                         ; preds = %._crit_edge237.loopexit.unr-lcssa, %.lr.ph236.preheader
  %indvars.iv286.epil.init = phi i64 [ 0, %.lr.ph236.preheader ], [ %indvars.iv.next287.3, %._crit_edge237.loopexit.unr-lcssa ]
  %lcmp.mod349 = icmp ne i64 %xtraiter346, 0
  tail call void @llvm.assume(i1 %lcmp.mod349)
  br label %.lr.ph236.epil

.lr.ph236.epil:                                   ; preds = %.lr.ph236.epil, %.lr.ph236.epil.preheader
  %indvars.iv286.epil = phi i64 [ %indvars.iv286.epil.init, %.lr.ph236.epil.preheader ], [ %indvars.iv.next287.epil, %.lr.ph236.epil ] ; 2 uses
  %epil.iter347 = phi i64 [ 0, %.lr.ph236.epil.preheader ], [ %epil.iter347.next, %.lr.ph236.epil ]
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv286.epil ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  store i32 0, ptr %i.fq, align 4, !tbaa !52
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !380
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !52
  %indvars.iv.next287.epil = add nuw nsw i64 %indvars.iv286.epil, 1
  %epil.iter347.next = add i64 %epil.iter347, 1   ; 2 uses
  %epil.iter347.cmp.not = icmp eq i64 %epil.iter347.next, %xtraiter346
  br i1 %epil.iter347.cmp.not, label %._crit_edge237, label %.lr.ph236.epil, !llvm.loop !393

._crit_edge237:                                   ; preds = %._crit_edge237.loopexit.unr-lcssa, %.lr.ph236.epil, %.loopexit199
  %i.fu = load i32, ptr %i.da, align 4, !tbaa !104
  %i.fv = icmp eq i32 %i.fu, 1
  br i1 %i.fv, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %._crit_edge237
  store i32 0, ptr %3, align 4, !tbaa !376
  store i32 0, ptr %5, align 4, !tbaa !104
  %i.fw = icmp samesign ugt i32 %1, 1
  br i1 %i.fw, label %.lr.ph240.preheader, label %.preheader

.lr.ph240.preheader:                              ; preds = %bb.n
  %i.fx = add nsw i64 %.pre-phi307, -1            ; 3 uses
  %xtraiter352 = and i64 %i.fx, 1
  %i.fy = icmp eq i64 %.pre-phi307, 2
  br i1 %i.fy, label %.lr.ph240.epil.preheader, label %.lr.ph240.preheader.new

.lr.ph240.preheader.new:                          ; preds = %.lr.ph240.preheader
  %unroll_iter356 = and i64 %i.fx, -2
  br label %.lr.ph240

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph240
  %lcmp.mod354.not = icmp eq i64 %xtraiter352, 0
  br i1 %lcmp.mod354.not, label %.preheader, label %.lr.ph240.epil.preheader

.lr.ph240.epil.preheader:                         ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph240.preheader
  %indvars.iv291.epil.init = phi i64 [ 1, %.lr.ph240.preheader ], [ %indvars.iv.next292.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod355 = trunc i64 %i.fx to i1
  tail call void @llvm.assume(i1 %lcmp.mod355)
  %i.fz = getelementptr [24 x i8], ptr %3, i64 %indvars.iv291.epil.init ; 3 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 -24
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !376
  %i.gc = getelementptr i8, ptr %i.fz, i64 -20
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !378
  %i.ge = add nsw i32 %i.gd, %i.gb                ; 2 uses
  store i32 %i.ge, ptr %i.fz, align 4, !tbaa !376
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv291.epil.init
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !104
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph240.epil.preheader, %.preheader.loopexit.unr-lcssa, %bb.n
  br i1 %.not248, label %.loopexit, label %.lr.ph246.preheader

.lr.ph246.preheader:                              ; preds = %.preheader
  %wide.trip.count299 = zext nneg i32 %0 to i64
  br label %.lr.ph246

.lr.ph240:                                        ; preds = %.lr.ph240, %.lr.ph240.preheader.new
  %indvars.iv291 = phi i64 [ 1, %.lr.ph240.preheader.new ], [ %indvars.iv.next292.1, %.lr.ph240 ] ; 4 uses
  %niter357 = phi i64 [ 0, %.lr.ph240.preheader.new ], [ %niter357.next.1, %.lr.ph240 ]
  %i.gg = getelementptr [24 x i8], ptr %3, i64 %indvars.iv291 ; 3 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 -24
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !376
  %i.gj = getelementptr i8, ptr %i.gg, i64 -20
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !378
  %i.gl = add nsw i32 %i.gk, %i.gi                ; 2 uses
  store i32 %i.gl, ptr %i.gg, align 4, !tbaa !376
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv291
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !104
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %i.gn = getelementptr [24 x i8], ptr %3, i64 %indvars.iv.next292 ; 3 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 -24
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !376
  %i.gq = getelementptr i8, ptr %i.gn, i64 -20
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !378
  %i.gs = add nsw i32 %i.gr, %i.gp                ; 2 uses
  store i32 %i.gs, ptr %i.gn, align 4, !tbaa !376
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next292
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !104
  %indvars.iv.next292.1 = add nuw nsw i64 %indvars.iv291, 2 ; 2 uses
  %niter357.next.1 = add nuw i64 %niter357, 2     ; 2 uses
  %niter357.ncmp.1 = icmp eq i64 %niter357.next.1, %unroll_iter356
  br i1 %niter357.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph240, !llvm.loop !394

.lr.ph246:                                        ; preds = %.lr.ph246.preheader, %._crit_edge244
  %indvars.iv296 = phi i64 [ 0, %.lr.ph246.preheader ], [ %indvars.iv.next297, %._crit_edge244 ] ; 3 uses
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv296 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !386
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %4, i64 %i.gw ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !380 ; 2 uses
  %i.ha = sext i32 %i.gz to i64
  %.idx = shl nuw nsw i64 %i.ha, 2
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 %.idx
  %i.hc = icmp sgt i32 %i.gz, 0
  br i1 %i.hc, label %.lr.ph243.preheader, label %._crit_edge244

.lr.ph243.preheader:                              ; preds = %.lr.ph246
  %i.hd = trunc nuw nsw i64 %indvars.iv296 to i32
  br label %.lr.ph243

.lr.ph243:                                        ; preds = %.lr.ph243.preheader, %.lr.ph243
  %.0181241 = phi ptr [ %i.he, %.lr.ph243 ], [ %i.gx, %.lr.ph243.preheader ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.0181241, i64 4 ; 2 uses
  %i.hf = load i32, ptr %.0181241, align 4, !tbaa !104
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr %5, i64 %i.hg ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !104 ; 2 uses
  %i.hj = add nsw i32 %i.hi, 1
  store i32 %i.hj, ptr %i.hh, align 4, !tbaa !104
  %i.hk = sext i32 %i.hi to i64
  %i.hl = getelementptr inbounds [4 x i8], ptr %4, i64 %i.hk
  store i32 %i.hd, ptr %i.hl, align 4, !tbaa !104
  %i.hm = icmp ult ptr %i.he, %i.hb
  br i1 %i.hm, label %.lr.ph243, label %._crit_edge244, !llvm.loop !395

._crit_edge244:                                   ; preds = %.lr.ph243, %.lr.ph246
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count299
  br i1 %exitcond300.not, label %.loopexit, label %.lr.ph246, !llvm.loop !396

.loopexit:                                        ; preds = %._crit_edge244, %.preheader, %._crit_edge237, %bb.f, %bb.b
  %.0190 = phi i32 [ 0, %bb.b ], [ 0, %bb.f ], [ 1, %._crit_edge237 ], [ 1, %.preheader ], [ 1, %._crit_edge244 ]
  ret i32 %.0190
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5Eigen8internal6ColamdL12init_scoringIiEEvT_S3_PNS1_12RowStructureIS3_EEPNS1_12ColStructureIS3_EEPS3_SA_PdSA_SA_SA_(i32 noundef range(i32 0, -2147483648) %0, i32 noundef range(i32 0, -2147483648) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr noundef nonnull %4, ptr nofree noundef nonnull captures(none) %5, double nofpclass(nan inf zero sub nnorm) %.0.val, double nofpclass(nan inf zero sub nnorm) %.8.val, ptr nofree noundef nonnull writeonly captures(none) %6, ptr nofree noundef nonnull writeonly captures(none) %7, ptr nofree noundef nonnull writeonly captures(none) %8) unnamed_addr #20 {
bb.a:
  %i.a = uitofp nneg i32 %1 to double
  %i.b = fmul nnan double %.0.val, %i.a
  %i.c = fptosi double %i.b to i32
  %.sroa.speculated9 = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.c)
  %.sroa.speculated13 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated9, i32 0) ; 2 uses
  %i.d = uitofp nneg i32 %0 to double
  %i.e = fmul nnan double %.8.val, %i.d
  %i.f = fptosi double %i.e to i32
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %0, i32 %i.f)
  %.sroa.speculated3 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated, i32 0)
  %.not96 = icmp eq i32 %1, 0                     ; 2 uses
  br i1 %.not96, label %.preheader65, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = zext nneg i32 %1 to i64                  ; 3 uses
  %xtraiter = and i64 %i.g, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next.prol = add nsw i64 %i.g, -1    ; 3 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %indvars.iv.next.prol ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !378
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %.lr.ph.prol.loopexit

bb.b:                                             ; preds = %.lr.ph.prol
  %i.l = add nsw i32 %1, -1                       ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %i.l, ptr %i.m, align 4, !tbaa !52
  store i32 -1, ptr %i.h, align 4, !tbaa !376
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %bb.b, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.g, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %bb.b ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.010370.unr = phi i32 [ %1, %.lr.ph.preheader ], [ %i.l, %bb.b ], [ %1, %.lr.ph.prol ]
  %.1104.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.l, %bb.b ], [ %1, %.lr.ph.prol ]
  %i.n = icmp eq i32 %1, 1
  br i1 %i.n, label %.lr.ph77.preheader, label %.lr.ph

.lr.ph77.preheader:                               ; preds = %bb.e, %.lr.ph.prol.loopexit
  %.1104.lcssa = phi i32 [ %.1104.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.1104.1, %bb.e ]
  %i.o = zext nneg i32 %1 to i64
  br label %.lr.ph77

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.e ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.010370 = phi i32 [ %.1104.1, %bb.e ], [ %.010370.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.p = getelementptr [24 x i8], ptr %3, i64 %indvars.iv ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !378
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.c, label %.lr.ph.1

bb.c:                                             ; preds = %.lr.ph
  %i.t = getelementptr i8, ptr %i.p, i64 -24
  %i.u = add nsw i32 %.010370, -1                 ; 2 uses
  %i.v = getelementptr i8, ptr %i.p, i64 -12
  store i32 %i.u, ptr %i.v, align 4, !tbaa !52
  store i32 -1, ptr %i.t, align 4, !tbaa !376
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.c
  %.1104 = phi i32 [ %i.u, %bb.c ], [ %.010370, %.lr.ph ] ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %indvars.iv.next.1 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !378
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.1
  %i.aa = add nsw i32 %.1104, -1                  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !52
  store i32 -1, ptr %i.w, align 4, !tbaa !376
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.1
  %.1104.1 = phi i32 [ %i.aa, %bb.d ], [ %.1104, %.lr.ph.1 ] ; 2 uses
  %i.ac = icmp sgt i64 %indvars.iv, 2
  br i1 %i.ac, label %.lr.ph, label %.lr.ph77.preheader, !llvm.loop !397

.preheader65:                                     ; preds = %bb.g, %bb.a
  %.2.lcssa = phi i32 [ 0, %bb.a ], [ %.3, %bb.g ] ; 2 uses
  %.not98 = icmp eq i32 %0, 0
  br i1 %.not98, label %.preheader64, label %.lr.ph82.preheader

.lr.ph82.preheader:                               ; preds = %.preheader65
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  %min.iters.check = icmp samesign ult i32 %0, 9
  br i1 %min.iters.check, label %.lr.ph82.preheader161, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph82.preheader
  %i.ad = and i64 %wide.trip.count, 7             ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = select i1 %i.ae, i64 8, i64 %i.ad
  %n.vec = sub nsw i64 %wide.trip.count, %i.af    ; 2 uses
  %i.ag = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %0, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.speculated13, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue154, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue154 ] ; 9 uses
  %vec.phi = phi <4 x i32> [ %i.ag, %vector.ph ], [ %predphi156, %pred.store.continue154 ]
  %vec.phi138 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi157, %pred.store.continue154 ]
  %vec.phi139 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi, %pred.store.continue154 ] ; 2 uses
  %vec.phi140 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi155, %pred.store.continue154 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 104
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %i.ax = load i32, ptr %i.ap, align 4, !tbaa !52
  %i.ay = load i32, ptr %i.aq, align 4, !tbaa !52
  %i.az = load i32, ptr %i.ar, align 4, !tbaa !52
  %i.ba = load i32, ptr %i.as, align 4, !tbaa !52
  %i.bb = insertelement <4 x i32> poison, i32 %i.ax, i64 0
  %i.bc = insertelement <4 x i32> %i.bb, i32 %i.ay, i64 1
  %i.bd = insertelement <4 x i32> %i.bc, i32 %i.az, i64 2
  %i.be = insertelement <4 x i32> %i.bd, i32 %i.ba, i64 3 ; 3 uses
  %i.bf = load i32, ptr %i.at, align 4, !tbaa !52
  %i.bg = load i32, ptr %i.au, align 4, !tbaa !52
  %i.bh = load i32, ptr %i.av, align 4, !tbaa !52
  %i.bi = load i32, ptr %i.aw, align 4, !tbaa !52
  %i.bj = insertelement <4 x i32> poison, i32 %i.bf, i64 0
  %i.bk = insertelement <4 x i32> %i.bj, i32 %i.bg, i64 1
  %i.bl = insertelement <4 x i32> %i.bk, i32 %i.bh, i64 2
  %i.bm = insertelement <4 x i32> %i.bl, i32 %i.bi, i64 3 ; 3 uses
  %i.bn = icmp sgt <4 x i32> %i.be, %broadcast.splat
  %i.bo = icmp sgt <4 x i32> %i.bm, %broadcast.splat
  %i.bp = icmp eq <4 x i32> %i.be, zeroinitializer
  %i.bq = icmp eq <4 x i32> %i.bm, zeroinitializer
  %i.br = or <4 x i1> %i.bn, %i.bp                ; 6 uses
  %i.bs = or <4 x i1> %i.bo, %i.bq                ; 6 uses
  %i.bt = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi139, <4 x i32> %i.be)
  %i.bu = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi140, <4 x i32> %i.bm)
  %i.bv = extractelement <4 x i1> %i.br, i64 0
end_hunk_1
begin_hunk_2_@_ZN5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE20factorize_preorderedILb0EEEvRKS3_:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !161  ; 4 uses
  %sext = shl i64 %i.b, 32                        ; 8 uses
  %i.j = icmp slt i64 %sext, 0
  br i1 %i.j, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !113
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.l = lshr exact i64 %sext, 29                 ; 2 uses
  %i.m = icmp samesign ult i64 %sext, 70369281048576
  br i1 %i.m, label %_ZN5Eigen8internal14aligned_mallocEm.exit159, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.l) #35 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.d:                                             ; preds = %bb.c
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !113
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.c
  %i.q = lshr exact i64 %sext, 30                 ; 4 uses
  %i.r = icmp samesign ult i64 %sext, 140738562097152
  br i1 %i.r, label %_ZN5Eigen8internal14aligned_mallocEm.exit159.thread244, label %bb.e

_ZN5Eigen8internal14aligned_mallocEm.exit159.thread244: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.s = add nuw nsw i64 %i.q, 15
  %i.t = alloca i8, i64 %i.s, align 16
  %i.u = icmp samesign ugt i64 %sext, 140737488355328
  br label %bb.g

bb.e:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.q) #35 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !113
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc158 unwind label %.split

.noexc158:                                        ; preds = %bb.f
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit159:     ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.y = add nuw nsw i64 %i.l, 15
  %i.z = alloca i8, i64 %i.y, align 16
  %i.aa = icmp samesign ugt i64 %sext, 70368744177664
  %i.ab = lshr exact i64 %sext, 30                ; 2 uses
  %i.ac = add nuw nsw i64 %i.ab, 15
  %i.ad = alloca i8, i64 %i.ac, align 16
  br label %bb.g

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit159, %_ZN5Eigen8internal14aligned_mallocEm.exit159.thread244
  %i.ae = phi i1 [ %i.u, %_ZN5Eigen8internal14aligned_mallocEm.exit159.thread244 ], [ false, %_ZN5Eigen8internal14aligned_mallocEm.exit159 ]
  %i.af = phi ptr [ %i.t, %_ZN5Eigen8internal14aligned_mallocEm.exit159.thread244 ], [ %i.ad, %_ZN5Eigen8internal14aligned_mallocEm.exit159 ]
  %i.ag = phi ptr [ %i.n, %_ZN5Eigen8internal14aligned_mallocEm.exit159.thread244 ], [ %i.z, %_ZN5Eigen8internal14aligned_mallocEm.exit159 ]
  %i.ah = phi i1 [ true, %_ZN5Eigen8internal14aligned_mallocEm.exit159.thread244 ], [ %i.aa, %_ZN5Eigen8internal14aligned_mallocEm.exit159 ]
  %i.ai = phi i64 [ %i.q, %_ZN5Eigen8internal14aligned_mallocEm.exit159.thread244 ], [ %i.ab, %_ZN5Eigen8internal14aligned_mallocEm.exit159 ]
  %i.aj = add nuw nsw i64 %i.ai, 15
  %i.ak = alloca i8, i64 %i.aj, align 16
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit164

bb.h:                                             ; preds = %bb.e
  %i.al = tail call noalias ptr @malloc(i64 noundef %i.q) #35 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.i, label %_ZN5Eigen8internal14aligned_mallocEm.exit164

bb.i:                                             ; preds = %bb.h
  %i.an = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.an, align 8, !tbaa !113
  invoke void @__cxa_throw(ptr nonnull %i.an, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc163 unwind label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit167

.noexc163:                                        ; preds = %bb.i
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit164:     ; preds = %bb.h, %bb.g
  %i.ao = phi i1 [ %i.ae, %bb.g ], [ true, %bb.h ]
  %i.ap = phi ptr [ %i.af, %bb.g ], [ %i.v, %bb.h ] ; 7 uses
  %i.aq = phi ptr [ %i.ag, %bb.g ], [ %i.n, %bb.h ] ; 5 uses
  %i.ar = phi i1 [ %i.ah, %bb.g ], [ true, %bb.h ]
  %i.as = phi ptr [ %i.ak, %bb.g ], [ %i.al, %bb.h ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !306
  %.not.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit164
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !232
  tail call void @free(ptr noundef %i.aw) #33
  store ptr null, ptr %i.av, align 8, !tbaa !232
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit164, %bb.j
  store i64 0, ptr %i.at, align 8, !tbaa !306
  %i.ax = icmp sgt i32 %i.c, 0
  br i1 %i.ax, label %.lr.ph216, label %._crit_edge217

.lr.ph216:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !78 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !161
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !162
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !145
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !160 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %wide.trip.count233 = and i64 %i.b, 2147483647
  %wide.trip.count = and i64 %i.b, 2147483647
  br label %bb.k

.split:                                           ; preds = %bb.f
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit168

bb.k:                                             ; preds = %.lr.ph216, %bb.p
  %indvars.iv230 = phi i64 [ 0, %.lr.ph216 ], [ %indvars.iv.next231, %bb.p ] ; 11 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv230 ; 4 uses
  store double 0.000000e+00, ptr %i.bn, align 8, !tbaa !152
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv230
  %i.bp = trunc nuw nsw i64 %indvars.iv230 to i32 ; 4 uses
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !104
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv230 ; 3 uses
  store i32 0, ptr %i.bq, align 4, !tbaa !104
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv230 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !104
  %i.bt = sext i32 %i.bs to i64                   ; 3 uses
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr i8, ptr %i.br, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !104
  %i.bw = sext i32 %i.bv to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.m:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv230
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !104
  %i.bz = sext i32 %i.by to i64
  %i.ca = add nsw i64 %i.bz, %i.bt
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.l, %bb.m
  %.sink.i = phi i64 [ %i.bw, %bb.l ], [ %i.ca, %bb.m ] ; 2 uses
  %i.cb = icmp sgt i64 %.sink.i, %i.bt
  br i1 %i.cb, label %.lr.ph202, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.cc = load double, ptr %i.bk, align 8, !tbaa !37
  %i.cd = load double, ptr %i.bl, align 8, !tbaa !553
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.cc, double 0.000000e+00, double %i.cd)
  store double 0.000000e+00, ptr %i.bn, align 8, !tbaa !152
  br label %._crit_edge213

.lr.ph202:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, %.loopexit
  %.0110201 = phi i32 [ %.2, %.loopexit ], [ %i.c, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 3 uses
  %.sroa.8.0200 = phi i64 [ %i.ds, %.loopexit ], [ %i.bt, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 3 uses
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %.sroa.8.0200
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !104 ; 2 uses
  %i.ch = sext i32 %i.cg to i64                   ; 4 uses
  %.not = icmp slt i64 %indvars.iv230, %i.ch
  br i1 %.not, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %.lr.ph202
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %.sroa.8.0200
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !152
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ch ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !152
  %i.cm = fadd double %i.cj, %i.cl
  store double %i.cm, ptr %i.ck, align 8, !tbaa !152
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.ch ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !104
  %i.cp = zext i32 %i.co to i64
  %.not143193 = icmp eq i64 %indvars.iv230, %i.cp
  br i1 %.not143193, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.cq = load ptr, ptr %i.bj, align 8, !tbaa !78
  br label %bb.o

.lr.ph198.preheader:                              ; preds = %bb.o
  %i.cr = sext i32 %.0110201 to i64               ; 5 uses
  %2 = add i64 %.0108195, 2
  %smin = tail call i64 @llvm.smin.i64(i64 %i.dg, i64 1)
  %3 = sub i64 %2, %smin                          ; 3 uses
  %min.iters.check = icmp ult i64 %3, 8
  br i1 %min.iters.check, label %.lr.ph198.preheader257, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph198.preheader
  %i.cs = sub i64 %.0108195, %i.cr
  %reass.sub = shl i64 %i.cs, 2
  %diff.check = icmp ult i64 %reass.sub, 28
  br i1 %diff.check, label %.lr.ph198.preheader257, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -8                         ; 4 uses
  %i.ct = sub i64 %i.cr, %n.vec                   ; 2 uses
  %4 = sub i64 %i.dg, %n.vec
  %invariant.gep = getelementptr [4 x i8], ptr %i.ap, i64 %i.cr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cu = sub i64 %.0108195, %index
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -12
  %i.cx = getelementptr inbounds i8, ptr %i.cv, i64 -28
  %wide.load = load <4 x i32>, ptr %i.cw, align 4, !tbaa !104
  %wide.load255 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !104
  %i.cy = xor i64 %index, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cy ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %gep, i64 -12
  %i.da = getelementptr inbounds i8, ptr %gep, i64 -28
  store <4 x i32> %wide.load, ptr %i.cz, align 4, !tbaa !104
  store <4 x i32> %wide.load255, ptr %i.da, align 4, !tbaa !104
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !554

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %.lr.ph198.preheader257

.lr.ph198.preheader257:                           ; preds = %vector.memcheck, %.lr.ph198.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.cr, %vector.memcheck ], [ %i.cr, %.lr.ph198.preheader ], [ %i.ct, %middle.block ]
  %.1197.ph = phi i64 [ %i.dg, %vector.memcheck ], [ %i.dg, %.lr.ph198.preheader ], [ %4, %middle.block ]
  br label %.lr.ph198

bb.o:                                             ; preds = %.lr.ph, %bb.o
  %i.dc = phi ptr [ %i.cn, %.lr.ph ], [ %i.dj, %bb.o ]
  %i.dd = phi i64 [ %i.ch, %.lr.ph ], [ %i.di, %bb.o ]
  %.0108195 = phi i64 [ 0, %.lr.ph ], [ %i.dg, %bb.o ] ; 5 uses
  %.0109194 = phi i32 [ %i.cg, %.lr.ph ], [ %i.dh, %bb.o ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.0108195
  store i32 %.0109194, ptr %i.de, align 4, !tbaa !104
  store i32 %i.bp, ptr %i.dc, align 4, !tbaa !104
  %i.df = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.dd
  %i.dg = add nuw i64 %.0108195, 1                ; 5 uses
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !104 ; 2 uses
  %i.di = sext i32 %i.dh to i64                   ; 2 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.di ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !104
  %i.dl = zext i32 %i.dk to i64
  %.not143 = icmp eq i64 %indvars.iv230, %i.dl
  br i1 %.not143, label %.lr.ph198.preheader, label %bb.o, !llvm.loop !555

.lr.ph198:                                        ; preds = %.lr.ph198.preheader257, %.lr.ph198
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph198 ], [ %indvars.iv.ph, %.lr.ph198.preheader257 ]
  %.1197 = phi i64 [ %i.dm, %.lr.ph198 ], [ %.1197.ph, %.lr.ph198.preheader257 ] ; 2 uses
  %i.dm = add nsw i64 %.1197, -1                  ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !104
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %indvars.iv.next
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !104
  %i.dq = icmp sgt i64 %.1197, 1
  br i1 %i.dq, label %.lr.ph198, label %.loopexit.loopexit, !llvm.loop !556

.loopexit.loopexit:                               ; preds = %.lr.ph198, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.ct, %middle.block ], [ %indvars.iv.next, %.lr.ph198 ]
  %i.dr = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.loopexit, %.lr.ph202
  %.2 = phi i32 [ %.0110201, %.lr.ph202 ], [ %i.dr, %.loopexit.loopexit ], [ %.0110201, %bb.n ] ; 3 uses
  %i.ds = add nsw i64 %.sroa.8.0200, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ds, %.sink.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph202, !llvm.loop !557

._crit_edge:                                      ; preds = %.loopexit
  %.pre = load double, ptr %i.bn, align 8, !tbaa !152
  %i.dt = load double, ptr %i.bk, align 8, !tbaa !37
  %i.du = load double, ptr %i.bl, align 8, !tbaa !553
  %i.dv = tail call double @llvm.fmuladd.f64(double %.pre, double %i.dt, double %i.du) ; 2 uses
  store double 0.000000e+00, ptr %i.bn, align 8, !tbaa !152
  %i.dw = icmp slt i32 %.2, %i.c
  br i1 %i.dw, label %.lr.ph212.preheader, label %._crit_edge213

.lr.ph212.preheader:                              ; preds = %._crit_edge
  %i.dx = sext i32 %.2 to i64
  br label %.lr.ph212

.lr.ph212:                                        ; preds = %.lr.ph212.preheader, %._crit_edge207
  %indvars.iv226 = phi i64 [ %i.dx, %.lr.ph212.preheader ], [ %indvars.iv.next227, %._crit_edge207 ] ; 2 uses
  %.0107210 = phi double [ %i.dv, %.lr.ph212.preheader ], [ %i.fe, %._crit_edge207 ]
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %indvars.iv226
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !104
  %i.ea = sext i32 %i.dz to i64                   ; 3 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ea ; 2 uses
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !152
  store double 0.000000e+00, ptr %i.eb, align 8, !tbaa !152
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ea
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !104 ; 3 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ef
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !152
  %i.ei = fdiv double %i.ec, %i.eh                ; 4 uses
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ea ; 3 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !104 ; 2 uses
  %i.el = add nsw i32 %i.ek, %i.ee
  %i.em = sext i32 %i.el to i64
  %i.en = add nsw i32 %i.ee, 1
  %i.eo = sext i32 %i.en to i64                   ; 2 uses
  %i.ep = icmp sgt i32 %i.ek, 1
  br i1 %i.ep, label %.lr.ph206, label %._crit_edge207

.lr.ph206:                                        ; preds = %.lr.ph212, %.lr.ph206
  %.0204 = phi i64 [ %i.ez, %.lr.ph206 ], [ %i.eo, %.lr.ph212 ] ; 3 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.0204
  %i.er = load double, ptr %i.eq, align 8, !tbaa !152
  %i.es = getelementptr inbounds [4 x i8], ptr %i.g, i64 %.0204
  %i.et = load i32, ptr %i.es, align 4, !tbaa !104
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.eu ; 2 uses
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !152
  %i.ex = fneg double %i.er
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.ex, double %i.ei, double %i.ew)
  store double %i.ey, ptr %i.ev, align 8, !tbaa !152
  %i.ez = add nsw i64 %.0204, 1                   ; 3 uses
  %i.fa = icmp slt i64 %i.ez, %i.em
  br i1 %i.fa, label %.lr.ph206, label %._crit_edge207, !llvm.loop !558

._crit_edge207:                                   ; preds = %.lr.ph206, %.lr.ph212
  %.0.lcssa = phi i64 [ %i.eo, %.lr.ph212 ], [ %i.ez, %.lr.ph206 ] ; 2 uses
  %i.fb = fmul double %i.ei, %i.ei
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.g, i64 %.0.lcssa
  store i32 %i.bp, ptr %i.fc, align 4, !tbaa !104
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.0.lcssa
  store double %i.ei, ptr %i.fd, align 8, !tbaa !152
  %i.fe = fsub double %.0107210, %i.fb            ; 2 uses
  %i.ff = load i32, ptr %i.ej, align 4, !tbaa !104
  %i.fg = add nsw i32 %i.ff, 1
  store i32 %i.fg, ptr %i.ej, align 4, !tbaa !104
  %indvars.iv.next227 = add nsw i64 %indvars.iv226, 1 ; 2 uses
  %exitcond229.not = icmp eq i64 %indvars.iv.next227, %wide.trip.count
  br i1 %exitcond229.not, label %._crit_edge213.loopexit, label %.lr.ph212, !llvm.loop !559

._crit_edge213.loopexit:                          ; preds = %._crit_edge207
  %.pre235 = load i32, ptr %i.bq, align 4, !tbaa !104
  br label %._crit_edge213

._crit_edge213:                                   ; preds = %._crit_edge.thread, %._crit_edge213.loopexit, %._crit_edge
  %i.fh = phi i32 [ 0, %._crit_edge ], [ %.pre235, %._crit_edge213.loopexit ], [ 0, %._crit_edge.thread ] ; 2 uses
  %.0107.lcssa = phi double [ %i.dv, %._crit_edge ], [ %i.fe, %._crit_edge213.loopexit ], [ %i.ce, %._crit_edge.thread ] ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv230
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !104
  %i.fk = add nsw i32 %i.fh, 1
  store i32 %i.fk, ptr %i.bq, align 4, !tbaa !104
  %i.fl = add nsw i32 %i.fh, %i.fj
  %i.fm = sext i32 %i.fl to i64                   ; 2 uses
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.fm
  store i32 %i.bp, ptr %i.fn, align 4, !tbaa !104
  %i.fo = fcmp ugt double %.0107.lcssa, 0.000000e+00
  br i1 %i.fo, label %bb.p, label %._crit_edge217

bb.p:                                             ; preds = %._crit_edge213
  %i.fp = tail call double @sqrt(double noundef %.0107.lcssa) #33
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.fm
  store double %i.fp, ptr %i.fq, align 8, !tbaa !152
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %indvars.iv.next231, %wide.trip.count233
  br i1 %exitcond234.not, label %._crit_edge217, label %bb.k, !llvm.loop !560

._crit_edge217:                                   ; preds = %bb.p, %._crit_edge213, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %.2116 = phi i32 [ 0, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit ], [ 1, %._crit_edge213 ], [ 0, %bb.p ]
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.2116, ptr %i.fr, align 4, !tbaa !23
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.fs, align 8, !tbaa !34
  br i1 %i.ao, label %bb.q, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit165

bb.q:                                             ; preds = %._crit_edge217
  call void @free(ptr noundef nonnull %i.as) #33
  call void @free(ptr noundef nonnull %i.ap) #33
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit165

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit165: ; preds = %._crit_edge217, %bb.q
  br i1 %i.ar, label %bb.r, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.r:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit165
  call void @free(ptr noundef nonnull %i.aq) #33
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit165, %bb.r
  ret void

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit167: ; preds = %bb.i
  %i.ft = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef nonnull %i.v) #33
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit168

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit168: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit167, %.split
  %.pn144.pn.pn.pn.pn.pn.pn.pn250 = phi { ptr, i32 } [ %i.bm, %.split ], [ %i.ft, %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit167 ]
  tail call void @free(ptr noundef nonnull %i.n) #33
  resume { ptr, i32 } %.pn144.pn.pn.pn.pn.pn.pn.pn250
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen11AMDOrderingIiEclINS_12SparseMatrixIdLi0EiEEEEvRKT_RNS_17PermutationMatrixILin1ELin1EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::SparseMatrix", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store i8 0, ptr %3, align 8, !tbaa !36
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 -1, ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  %i.d = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #35 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !145
  %.not6.i = icmp eq ptr %i.d, null
  br i1 %.not6.i, label %bb.b, label %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !113
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.q, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #33
  br label %common.resume

_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit:         ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.d, align 4
end_hunk_2
begin_hunk_3_@_ZN5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE20factorize_preorderedILb1EEEvRKS3_:bb.a

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.o = add nuw nsw i64 %i.m, 15
  %i.p = alloca i8, i64 %i.o, align 16
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.d:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.m) #35 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.d
  %i.s = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !113
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.d, %bb.c
  %i.t = phi ptr [ %i.p, %bb.c ], [ %i.q, %bb.d ] ; 6 uses
  %i.u = icmp ugt i64 %i.m, 131072                ; 2 uses
  %i.v = ashr exact i64 %sext, 30                 ; 5 uses
  %i.w = icmp ugt i64 %i.v, 131072                ; 3 uses
  br i1 %i.w, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.v) #35 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.z = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.z, align 8, !tbaa !113
  invoke void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc150 unwind label %bb.n

.noexc150:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.aa = add nuw nsw i64 %i.v, 15
  %i.ab = alloca i8, i64 %i.aa, align 16
  %i.ac = add nuw nsw i64 %i.v, 15
  %i.ad = alloca i8, i64 %i.ac, align 16
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit156

bb.i:                                             ; preds = %bb.f
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.v) #35 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.j, label %_ZN5Eigen8internal14aligned_mallocEm.exit156

bb.j:                                             ; preds = %bb.i
  %i.ag = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ag, align 8, !tbaa !113
  invoke void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc155 unwind label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160

.noexc155:                                        ; preds = %bb.j
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit156:     ; preds = %bb.i, %bb.h
  %i.ah = phi ptr [ %i.ab, %bb.h ], [ %i.x, %bb.i ] ; 8 uses
  %i.ai = phi ptr [ %i.ad, %bb.h ], [ %i.ae, %bb.i ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !306
  %.not.i.i = icmp eq i64 %i.j, %i.al
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit156
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !232
  tail call void @free(ptr noundef %i.am) #33
  %.not190 = icmp eq i64 %sext, 0
  br i1 %.not190, label %.sink.split.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.k
  %i.an = tail call noalias ptr @malloc(i64 noundef %i.m) #35 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.l, label %.sink.split.i.i

bb.l:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.ap = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ap, align 8, !tbaa !113
  invoke void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc158 unwind label %bb.o

.noexc158:                                        ; preds = %bb.l
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.k
  %.sink.i.i = phi ptr [ %i.an, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i ], [ null, %bb.k ]
  store ptr %.sink.i.i, ptr %i.aj, align 8, !tbaa !232
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit156, %.sink.split.i.i
  store i64 %i.j, ptr %i.ak, align 8, !tbaa !306
  %i.aq = icmp sgt i32 %i.c, 0
  br i1 %i.aq, label %.lr.ph214, label %._crit_edge215

.lr.ph214:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !78 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !161
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !162
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !145
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !160 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bf = load ptr, ptr %i.aj, align 8, !tbaa !232 ; 2 uses
  %wide.trip.count231 = and i64 %i.b, 2147483647
  %wide.trip.count = and i64 %i.b, 2147483647
  br label %bb.p

bb.m:                                             ; preds = %._crit_edge211
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %exitcond232.not = icmp eq i64 %indvars.iv.next229, %wide.trip.count231
  br i1 %exitcond232.not, label %._crit_edge215, label %bb.p, !llvm.loop !631

bb.n:                                             ; preds = %bb.g
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161

bb.o:                                             ; preds = %bb.l
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.w, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160.thread, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161

bb.p:                                             ; preds = %.lr.ph214, %bb.m
  %indvars.iv228 = phi i64 [ 0, %.lr.ph214 ], [ %indvars.iv.next229, %bb.m ] ; 11 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv228 ; 4 uses
  store double 0.000000e+00, ptr %i.bi, align 8, !tbaa !152
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv228
  %i.bk = trunc nuw nsw i64 %indvars.iv228 to i32 ; 3 uses
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !104
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv228
  store i32 0, ptr %i.bl, align 4, !tbaa !104
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv228 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !104
  %i.bo = sext i32 %i.bn to i64                   ; 3 uses
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr i8, ptr %i.bm, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !104
  %i.br = sext i32 %i.bq to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.r:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv228
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !104
  %i.bu = sext i32 %i.bt to i64
  %i.bv = add nsw i64 %i.bu, %i.bo
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.q, %bb.r
  %.sink.i = phi i64 [ %i.br, %bb.q ], [ %i.bv, %bb.r ] ; 2 uses
  %i.bw = icmp sgt i64 %.sink.i, %i.bo
  br i1 %i.bw, label %.lr.ph200, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.bx = load double, ptr %i.bd, align 8, !tbaa !44
  %i.by = load double, ptr %i.be, align 8, !tbaa !632
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bx, double 0.000000e+00, double %i.by)
  store double 0.000000e+00, ptr %i.bi, align 8, !tbaa !152
  br label %._crit_edge211

.lr.ph200:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, %.loopexit
  %.0100199 = phi i32 [ %.2, %.loopexit ], [ %i.c, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 3 uses
  %.sroa.8.0198 = phi i64 [ %i.dn, %.loopexit ], [ %i.bo, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 3 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %.sroa.8.0198
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !104 ; 2 uses
  %i.cc = sext i32 %i.cb to i64                   ; 4 uses
  %.not = icmp slt i64 %indvars.iv228, %i.cc
  br i1 %.not, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.lr.ph200
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.au, i64 %.sroa.8.0198
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !152
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.cc ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !152
  %i.ch = fadd double %i.ce, %i.cg
  store double %i.ch, ptr %i.cf, align 8, !tbaa !152
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.cc ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !104
  %i.ck = zext i32 %i.cj to i64
  %.not135191 = icmp eq i64 %indvars.iv228, %i.ck
  br i1 %.not135191, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.cl = load ptr, ptr %i.bc, align 8, !tbaa !78
  br label %bb.t

.lr.ph196.preheader:                              ; preds = %bb.t
  %i.cm = sext i32 %.0100199 to i64               ; 5 uses
  %2 = add i64 %.098193, 2
  %smin = tail call i64 @llvm.smin.i64(i64 %i.db, i64 1)
  %3 = sub i64 %2, %smin                          ; 3 uses
  %min.iters.check = icmp ult i64 %3, 8
  br i1 %min.iters.check, label %.lr.ph196.preheader256, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph196.preheader
  %i.cn = sub i64 %.098193, %i.cm
  %reass.sub = shl i64 %i.cn, 2
  %diff.check = icmp ult i64 %reass.sub, 28
  br i1 %diff.check, label %.lr.ph196.preheader256, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -8                         ; 4 uses
  %i.co = sub i64 %i.cm, %n.vec                   ; 2 uses
  %4 = sub i64 %i.db, %n.vec
  %invariant.gep = getelementptr [4 x i8], ptr %i.ah, i64 %i.cm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cp = sub i64 %.098193, %index
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -12
  %i.cs = getelementptr inbounds i8, ptr %i.cq, i64 -28
  %wide.load = load <4 x i32>, ptr %i.cr, align 4, !tbaa !104
  %wide.load254 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !104
  %i.ct = xor i64 %index, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ct ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %gep, i64 -12
  %i.cv = getelementptr inbounds i8, ptr %gep, i64 -28
  store <4 x i32> %wide.load, ptr %i.cu, align 4, !tbaa !104
  store <4 x i32> %wide.load254, ptr %i.cv, align 4, !tbaa !104
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !633

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %.lr.ph196.preheader256

.lr.ph196.preheader256:                           ; preds = %vector.memcheck, %.lr.ph196.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.cm, %vector.memcheck ], [ %i.cm, %.lr.ph196.preheader ], [ %i.co, %middle.block ]
  %.1195.ph = phi i64 [ %i.db, %vector.memcheck ], [ %i.db, %.lr.ph196.preheader ], [ %4, %middle.block ]
  br label %.lr.ph196

bb.t:                                             ; preds = %.lr.ph, %bb.t
  %i.cx = phi ptr [ %i.ci, %.lr.ph ], [ %i.de, %bb.t ]
  %i.cy = phi i64 [ %i.cc, %.lr.ph ], [ %i.dd, %bb.t ]
  %.098193 = phi i64 [ 0, %.lr.ph ], [ %i.db, %bb.t ] ; 5 uses
  %.099192 = phi i32 [ %i.cb, %.lr.ph ], [ %i.dc, %bb.t ]
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.098193
  store i32 %.099192, ptr %i.cz, align 4, !tbaa !104
  store i32 %i.bk, ptr %i.cx, align 4, !tbaa !104
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cy
  %i.db = add nuw i64 %.098193, 1                 ; 5 uses
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !104 ; 2 uses
  %i.dd = sext i32 %i.dc to i64                   ; 2 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.dd ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !104
  %i.dg = zext i32 %i.df to i64
  %.not135 = icmp eq i64 %indvars.iv228, %i.dg
  br i1 %.not135, label %.lr.ph196.preheader, label %bb.t, !llvm.loop !634

.lr.ph196:                                        ; preds = %.lr.ph196.preheader256, %.lr.ph196
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph196 ], [ %indvars.iv.ph, %.lr.ph196.preheader256 ]
  %.1195 = phi i64 [ %i.dh, %.lr.ph196 ], [ %.1195.ph, %.lr.ph196.preheader256 ] ; 2 uses
  %i.dh = add nsw i64 %.1195, -1                  ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !104
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv.next
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !104
  %i.dl = icmp sgt i64 %.1195, 1
  br i1 %i.dl, label %.lr.ph196, label %.loopexit.loopexit, !llvm.loop !635

.loopexit.loopexit:                               ; preds = %.lr.ph196, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.co, %middle.block ], [ %indvars.iv.next, %.lr.ph196 ]
  %i.dm = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %.loopexit.loopexit, %.lr.ph200
  %.2 = phi i32 [ %.0100199, %.lr.ph200 ], [ %i.dm, %.loopexit.loopexit ], [ %.0100199, %bb.s ] ; 3 uses
  %i.dn = add nsw i64 %.sroa.8.0198, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.dn, %.sink.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph200, !llvm.loop !636

._crit_edge:                                      ; preds = %.loopexit
  %.pre = load double, ptr %i.bi, align 8, !tbaa !152
  %i.do = load double, ptr %i.bd, align 8, !tbaa !44
  %i.dp = load double, ptr %i.be, align 8, !tbaa !632
  %i.dq = tail call double @llvm.fmuladd.f64(double %.pre, double %i.do, double %i.dp) ; 2 uses
  store double 0.000000e+00, ptr %i.bi, align 8, !tbaa !152
  %i.dr = icmp slt i32 %.2, %i.c
  br i1 %i.dr, label %.lr.ph210, label %._crit_edge211

.lr.ph210:                                        ; preds = %._crit_edge
  %i.ds = sext i32 %.2 to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph210, %._crit_edge205
  %indvars.iv224 = phi i64 [ %i.ds, %.lr.ph210 ], [ %indvars.iv.next225, %._crit_edge205 ] ; 2 uses
  %.097208 = phi double [ %i.dq, %.lr.ph210 ], [ %i.ex, %._crit_edge205 ]
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv224
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !104
  %i.dv = sext i32 %i.du to i64                   ; 4 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.dv ; 2 uses
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !152 ; 3 uses
  store double 0.000000e+00, ptr %i.dw, align 8, !tbaa !152
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.dv
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !152
  %i.ea = fdiv double %i.dx, %i.dz                ; 2 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.dv
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !104 ; 2 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.dv ; 3 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !104 ; 2 uses
  %i.ef = add nsw i32 %i.ee, %i.ec
  %i.eg = sext i32 %i.ef to i64
  %i.eh = sext i32 %i.ec to i64                   ; 2 uses
  %i.ei = icmp sgt i32 %i.ee, 0
  br i1 %i.ei, label %.lr.ph204, label %._crit_edge205

.lr.ph204:                                        ; preds = %bb.u, %.lr.ph204
  %.0202 = phi i64 [ %i.es, %.lr.ph204 ], [ %i.eh, %bb.u ] ; 3 uses
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.0202
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !152
  %i.el = getelementptr inbounds [4 x i8], ptr %i.g, i64 %.0202
  %i.em = load i32, ptr %i.el, align 4, !tbaa !104
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.en ; 2 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !152
  %i.eq = fneg double %i.ek
  %i.er = tail call double @llvm.fmuladd.f64(double %i.eq, double %i.dx, double %i.ep)
  store double %i.er, ptr %i.eo, align 8, !tbaa !152
  %i.es = add nsw i64 %.0202, 1                   ; 3 uses
  %i.et = icmp slt i64 %i.es, %i.eg
  br i1 %i.et, label %.lr.ph204, label %._crit_edge205, !llvm.loop !637

._crit_edge205:                                   ; preds = %.lr.ph204, %bb.u
  %.0.lcssa = phi i64 [ %i.eh, %bb.u ], [ %i.es, %.lr.ph204 ] ; 2 uses
  %i.eu = fmul double %i.dx, %i.ea
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.g, i64 %.0.lcssa
  store i32 %i.bk, ptr %i.ev, align 4, !tbaa !104
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.0.lcssa
  store double %i.ea, ptr %i.ew, align 8, !tbaa !152
  %i.ex = fsub double %.097208, %i.eu             ; 2 uses
  %i.ey = load i32, ptr %i.ed, align 4, !tbaa !104
  %i.ez = add nsw i32 %i.ey, 1
  store i32 %i.ez, ptr %i.ed, align 4, !tbaa !104
  %indvars.iv.next225 = add nsw i64 %indvars.iv224, 1 ; 2 uses
  %exitcond227.not = icmp eq i64 %indvars.iv.next225, %wide.trip.count
  br i1 %exitcond227.not, label %._crit_edge211, label %bb.u, !llvm.loop !638

._crit_edge211:                                   ; preds = %._crit_edge205, %._crit_edge.thread, %._crit_edge
  %.097.lcssa = phi double [ %i.dq, %._crit_edge ], [ %i.bz, %._crit_edge.thread ], [ %i.ex, %._crit_edge205 ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv228
  store double %.097.lcssa, ptr %i.fa, align 8, !tbaa !152
  %i.fb = fcmp une double %.097.lcssa, 0.000000e+00
  br i1 %i.fb, label %bb.m, label %._crit_edge215

._crit_edge215:                                   ; preds = %._crit_edge211, %bb.m, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %.2106 = phi i32 [ 0, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit ], [ 0, %bb.m ], [ 1, %._crit_edge211 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.2106, ptr %i.fc, align 4, !tbaa !40
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.fd, align 8, !tbaa !42
  br i1 %i.w, label %bb.v, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit159

bb.v:                                             ; preds = %._crit_edge215
  call void @free(ptr noundef nonnull %i.ai) #33
  call void @free(ptr noundef nonnull %i.ah) #33
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit159

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit159: ; preds = %._crit_edge215, %bb.v
  br i1 %i.u, label %bb.w, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.w:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit159
  call void @free(ptr noundef nonnull %i.t) #33
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit159, %bb.w
  ret void

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160.thread: ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.ai) #33
  br label %bb.x

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160: ; preds = %bb.j
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160, %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160.thread
  %i.ff = phi ptr [ %i.ah, %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160.thread ], [ %i.x, %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160 ]
  %.pn136.pn.pn.pn.pn.pn187 = phi { ptr, i32 } [ %i.bh, %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160.thread ], [ %i.fe, %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160 ]
  call void @free(ptr noundef nonnull %i.ff) #33
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161: ; preds = %bb.o, %bb.x, %bb.n
  %.pn136.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.n ], [ %i.bh, %bb.o ], [ %.pn136.pn.pn.pn.pn.pn187, %bb.x ]
  br i1 %i.u, label %bb.y, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit162

bb.y:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161
  call void @free(ptr noundef nonnull %i.t) #33
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit162

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit162: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161, %bb.y
  resume { ptr, i32 } %.pn136.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8SparseLUINS_12SparseMatrixIdLi0EiEENS_14COLAMDOrderingIiEEE14analyzePatternERKS2_(ptr noundef nonnull align 8 dereferenceable(584) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::COLAMDOrdering", align 1 ; 4 uses
  %3 = alloca %"class.Eigen::Matrix", align 8     ; 7 uses
  %4 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 5 uses
  call void @_ZN5Eigen14COLAMDOrderingIiEclINS_12SparseMatrixIdLi0EiEEEEvRKT_RNS_17PermutationMatrixILin1ELin1EiEE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !103
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !160  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.c, label %_ZN5Eigen12SparseMatrixIdLi0EiE10uncompressEv.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14   ; 9 uses
  %i.j = shl i64 %i.i, 2
  %i.k = call noalias ptr @malloc(i64 noundef %i.j) #35 ; 13 uses
  store ptr %i.k, ptr %i.f, align 8, !tbaa !160
  %i.l = icmp sgt i64 %i.i, 0
  br i1 %i.l, label %.lr.ph.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE10uncompressEv.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !145  ; 14 uses
  %min.iters.check = icmp ult i64 %i.i, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.o = shl i64 %i.i, 2                          ; 2 uses
  %scevgep146 = getelementptr i8, ptr %i.k, i64 %i.o
  %i.p = getelementptr i8, ptr %i.n, i64 %i.o
  %scevgep147 = getelementptr i8, ptr %i.p, i64 4
  %bound0 = icmp ult ptr %i.k, %scevgep147
  %bound1 = icmp ult ptr %i.n, %scevgep146
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph
end_hunk_3
begin_hunk_4_@_ZN5Eigen8internal12SparseLUImplIdiE16heap_relax_snodeElRNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEElS5_S5_:bb.a

.epil.preheader326:                               ; preds = %._crit_edge191.loopexit.unr-lcssa, %.lr.ph190
  %.073188.epil.init = phi i64 [ 0, %.lr.ph190 ], [ %i.et, %._crit_edge191.loopexit.unr-lcssa ]
  %lcmp.mod330 = icmp ne i64 %xtraiter327, 0
  call void @llvm.assume(i1 %lcmp.mod330)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader326
  %.073188.epil = phi i64 [ %.073188.epil.init, %.epil.preheader326 ], [ %i.bi, %bb.k ] ; 3 uses
  %epil.iter328 = phi i64 [ 0, %.epil.preheader326 ], [ %epil.iter328.next, %bb.k ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.073188.epil
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !104
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !104
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.073188.epil
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !104
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.ph, i64 %i.bg
  store i32 %i.bd, ptr %i.bh, align 4, !tbaa !104
  %i.bi = add nuw nsw i64 %.073188.epil, 1
  %epil.iter328.next = add i64 %epil.iter328, 1   ; 2 uses
  %epil.iter328.cmp.not = icmp eq i64 %epil.iter328.next, %xtraiter327
  br i1 %epil.iter328.cmp.not, label %._crit_edge191, label %bb.k, !llvm.loop !742

._crit_edge191:                                   ; preds = %._crit_edge191.loopexit.unr-lcssa, %bb.k, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit112, %bb.j
  %.pre262 = phi ptr [ %.pre, %bb.j ], [ %.pre258, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit112 ], [ %.pre, %bb.k ], [ %.pre, %._crit_edge191.loopexit.unr-lcssa ] ; 8 uses
  %i.bj = phi i1 [ false, %bb.j ], [ false, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit112 ], [ true, %bb.k ], [ true, %._crit_edge191.loopexit.unr-lcssa ]
  %i.bk = phi ptr [ %i.aw, %bb.j ], [ %i.aq, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit112 ], [ %i.aw, %bb.k ], [ %i.aw, %._crit_edge191.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0.0176260 = phi ptr [ %.sroa.0.0.ph, %bb.j ], [ null, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit112 ], [ %.sroa.0.0.ph, %bb.k ], [ %.sroa.0.0.ph, %._crit_edge191.loopexit.unr-lcssa ] ; 11 uses
  %i.bl = phi ptr [ %i.as, %bb.j ], [ null, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit112 ], [ %i.as, %bb.k ], [ %i.as, %._crit_edge191.loopexit.unr-lcssa ]
  %.sroa.0154.0241249259 = phi ptr [ %i.e, %bb.j ], [ null, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit112 ], [ %i.e, %bb.k ], [ %i.e, %._crit_edge191.loopexit.unr-lcssa ] ; 10 uses
  %.sroa.0.0176260273 = ptrtoaddr ptr %.sroa.0.0176260 to i64
  %.pre262270 = ptrtoaddr ptr %.pre262 to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.b, %i.bn
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.l, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %._crit_edge191
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.bn, i64 noundef 1)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.bk, align 8, !tbaa !103
  %.pre218 = load ptr, ptr %7, align 8, !tbaa !78
  br label %bb.l

bb.l:                                             ; preds = %.noexc, %._crit_edge191
  %i.bo = phi ptr [ %.pre218, %.noexc ], [ %i.bl, %._crit_edge191 ] ; 8 uses
  %i.bp = phi i64 [ %.pr.i.i.i.i.i.i.i, %.noexc ], [ %i.b, %._crit_edge191 ] ; 7 uses
  %i.bq = ptrtoaddr ptr %i.bo to i64
  %i.br = sdiv i64 %i.bp, 4
  %i.bs = shl nsw i64 %i.br, 2                    ; 6 uses
  %i.bt = icmp sgt i64 %i.bp, 3
  br i1 %i.bt, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.l
  %i.bu = icmp slt i64 %i.bs, %i.bp
  br i1 %i.bu, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.bv = sub i64 %i.bp, %i.bs                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.bv, 8
  %i.bw = sub i64 %.pre262270, %i.bq
  %diff.check = icmp ugt i64 %i.bw, -32
  %or.cond315 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond315, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader324, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bv, -8                      ; 3 uses
  %i.bx = add i64 %i.bs, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.by = add i64 %i.bs, %index                   ; 2 uses
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %.pre262, i64 %i.by ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %wide.load = load <4 x i32>, ptr %i.ca, align 4, !tbaa !104
  %wide.load271 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !104
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store <4 x i32> %wide.load, ptr %i.bz, align 4, !tbaa !104
  store <4 x i32> %wide.load271, ptr %i.cc, align 4, !tbaa !104
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !743

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader324

.lr.ph.i.i.i.i.i.i.i.i.i.preheader324:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.bs, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bx, %middle.block ] ; 4 uses
  %i.ce = sub i64 %i.bp, %.05.i.i.i.i.i.i.i.i.i.ph
  %xtraiter333 = and i64 %i.ce, 3                 ; 2 uses
  %lcmp.mod334.not = icmp eq i64 %xtraiter333, 0
  br i1 %lcmp.mod334.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader324, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader324 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader324 ]
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.cg = getelementptr inbounds [4 x i8], ptr %.pre262, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !104
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !104
  %i.ci = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter333
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !744

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader324
  %.05.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader324 ], [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.cj = sub i64 %.05.i.i.i.i.i.i.i.i.i.ph, %i.bp
  %i.ck = icmp ugt i64 %i.cj, -4
  br i1 %i.ck, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.da, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.cm = getelementptr inbounds [4 x i8], ptr %.pre262, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !104
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !104
  %i.co = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.co
  %i.cq = getelementptr inbounds [4 x i8], ptr %.pre262, i64 %i.co
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !104
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !104
  %i.cs = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 2   ; 2 uses
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.cs
  %i.cu = getelementptr inbounds [4 x i8], ptr %.pre262, i64 %i.cs
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !104
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !104
  %i.cw = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.cw
  %i.cy = getelementptr inbounds [4 x i8], ptr %.pre262, i64 %i.cw
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !104
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !104
  %i.da = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.da, %i.bp
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !745

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.l, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.de, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.l ] ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.011.i.i.i.i.i.i.i.i
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.pre262, i64 %.011.i.i.i.i.i.i.i.i
  %i.dd = load <2 x i64>, ptr %i.dc, align 16, !tbaa !52
  store <2 x i64> %i.dd, ptr %i.db, align 16, !tbaa !52
  %i.de = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.df = icmp slt i64 %i.de, %i.bs
  br i1 %i.df, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !746

bb.m:                                             ; preds = %bb.m, %.lr.ph190.new
  %.073188 = phi i64 [ 0, %.lr.ph190.new ], [ %i.et, %bb.m ] ; 6 uses
  %niter332 = phi i64 [ 0, %.lr.ph190.new ], [ %niter332.next.3, %bb.m ]
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.073188
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !104
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !104
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.073188
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !104
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.ph, i64 %i.dn
  store i32 %i.dk, ptr %i.do, align 4, !tbaa !104
  %i.dp = or disjoint i64 %.073188, 1             ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !104
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !104
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.dp
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !104
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.ph, i64 %i.dx
  store i32 %i.du, ptr %i.dy, align 4, !tbaa !104
  %i.dz = or disjoint i64 %.073188, 2             ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !104
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !104
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.dz
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !104
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.ph, i64 %i.eh
  store i32 %i.ee, ptr %i.ei, align 4, !tbaa !104
  %i.ej = or disjoint i64 %.073188, 3             ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !104
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !104
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ej
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !104
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.ph, i64 %i.er
  store i32 %i.eo, ptr %i.es, align 4, !tbaa !104
  %i.et = add nuw nsw i64 %.073188, 4             ; 2 uses
  %niter332.next.3 = add nuw i64 %niter332, 4     ; 2 uses
  %niter332.ncmp.3 = icmp eq i64 %niter332.next.3, %unroll_iter331
  br i1 %niter332.ncmp.3, label %._crit_edge191.loopexit.unr-lcssa, label %bb.m, !llvm.loop !747

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i
  %i.eu = load i64, ptr %i.bm, align 8, !tbaa !103
  %.not.i.i.i.i.i.i.i.i122 = icmp eq i64 %i.eu, %1
  br i1 %.not.i.i.i.i.i.i.i.i122, label %bb.n, label %thread-pre-split.i.i.i.i.i.i.i123

thread-pre-split.i.i.i.i.i.i.i123:                ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %1, i64 noundef 1)
          to label %.noexc131 unwind label %bb.r

.noexc131:                                        ; preds = %thread-pre-split.i.i.i.i.i.i.i123
  %.pr.i.i.i.i.i.i.i124 = load i64, ptr %i.bm, align 8, !tbaa !103
  br label %bb.n

bb.n:                                             ; preds = %.noexc131, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit
  %i.ev = phi i64 [ %.pr.i.i.i.i.i.i.i124, %.noexc131 ], [ %1, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit ] ; 7 uses
  %i.ew = load ptr, ptr %2, align 8, !tbaa !78    ; 8 uses
  %i.ex = ptrtoaddr ptr %i.ew to i64
  %i.ey = sdiv i64 %i.ev, 4
  %i.ez = shl nsw i64 %i.ey, 2                    ; 6 uses
  %i.fa = icmp sgt i64 %i.ev, 3
  br i1 %i.fa, label %.lr.ph.i.i.i.i.i.i.i.i129, label %._crit_edge.i.i.i.i.i.i.i.i125

._crit_edge.i.i.i.i.i.i.i.i125:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i129, %bb.n
  %i.fb = icmp slt i64 %i.ez, %i.ev
  br i1 %i.fb, label %.lr.ph.i.i.i.i.i.i.i.i.i126.preheader, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit132

.lr.ph.i.i.i.i.i.i.i.i.i126.preheader:            ; preds = %._crit_edge.i.i.i.i.i.i.i.i125
  %i.fc = sub i64 %i.ev, %i.ez                    ; 3 uses
  %min.iters.check276 = icmp ult i64 %i.fc, 8
  %i.fd = sub i64 %.sroa.0.0176260273, %i.ex
  %diff.check274 = icmp ugt i64 %i.fd, -32
  %or.cond316 = select i1 %min.iters.check276, i1 true, i1 %diff.check274
  br i1 %or.cond316, label %.lr.ph.i.i.i.i.i.i.i.i.i126.preheader323, label %vector.ph277

vector.ph277:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i126.preheader
  %n.vec278 = and i64 %i.fc, -8                   ; 3 uses
  %i.fe = add i64 %i.ez, %n.vec278
  br label %vector.body279

vector.body279:                                   ; preds = %vector.body279, %vector.ph277
  %index280 = phi i64 [ 0, %vector.ph277 ], [ %index.next283, %vector.body279 ] ; 2 uses
  %i.ff = add i64 %i.ez, %index280                ; 2 uses
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.ff ; 2 uses
  %i.fh = getelementptr inbounds [4 x i8], ptr %.sroa.0.0176260, i64 %i.ff ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %wide.load281 = load <4 x i32>, ptr %i.fh, align 4, !tbaa !104
  %wide.load282 = load <4 x i32>, ptr %i.fi, align 4, !tbaa !104
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store <4 x i32> %wide.load281, ptr %i.fg, align 4, !tbaa !104
  store <4 x i32> %wide.load282, ptr %i.fj, align 4, !tbaa !104
  %index.next283 = add nuw i64 %index280, 8       ; 2 uses
  %i.fk = icmp eq i64 %index.next283, %n.vec278
  br i1 %i.fk, label %middle.block284, label %vector.body279, !llvm.loop !748

middle.block284:                                  ; preds = %vector.body279
  %cmp.n285 = icmp eq i64 %i.fc, %n.vec278
  br i1 %cmp.n285, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit132, label %.lr.ph.i.i.i.i.i.i.i.i.i126.preheader323

.lr.ph.i.i.i.i.i.i.i.i.i126.preheader323:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i126.preheader, %middle.block284
  %.05.i.i.i.i.i.i.i.i.i127.ph = phi i64 [ %i.ez, %.lr.ph.i.i.i.i.i.i.i.i.i126.preheader ], [ %i.fe, %middle.block284 ] ; 4 uses
  %i.fl = sub i64 %i.ev, %.05.i.i.i.i.i.i.i.i.i127.ph
  %xtraiter335 = and i64 %i.fl, 3                 ; 2 uses
  %lcmp.mod336.not = icmp eq i64 %xtraiter335, 0
  br i1 %lcmp.mod336.not, label %.lr.ph.i.i.i.i.i.i.i.i.i126.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i126.prol

.lr.ph.i.i.i.i.i.i.i.i.i126.prol:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i126.preheader323, %.lr.ph.i.i.i.i.i.i.i.i.i126.prol
  %.05.i.i.i.i.i.i.i.i.i127.prol = phi i64 [ %i.fp, %.lr.ph.i.i.i.i.i.i.i.i.i126.prol ], [ %.05.i.i.i.i.i.i.i.i.i127.ph, %.lr.ph.i.i.i.i.i.i.i.i.i126.preheader323 ] ; 3 uses
  %prol.iter337 = phi i64 [ %prol.iter337.next, %.lr.ph.i.i.i.i.i.i.i.i.i126.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i126.preheader323 ]
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %.05.i.i.i.i.i.i.i.i.i127.prol
  %i.fn = getelementptr inbounds [4 x i8], ptr %.sroa.0.0176260, i64 %.05.i.i.i.i.i.i.i.i.i127.prol
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !104
  store i32 %i.fo, ptr %i.fm, align 4, !tbaa !104
  %i.fp = add nsw i64 %.05.i.i.i.i.i.i.i.i.i127.prol, 1 ; 2 uses
  %prol.iter337.next = add i64 %prol.iter337, 1   ; 2 uses
  %prol.iter337.cmp.not = icmp eq i64 %prol.iter337.next, %xtraiter335
  br i1 %prol.iter337.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i126.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i126.prol, !llvm.loop !749

.lr.ph.i.i.i.i.i.i.i.i.i126.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i126.prol, %.lr.ph.i.i.i.i.i.i.i.i.i126.preheader323
  %.05.i.i.i.i.i.i.i.i.i127.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i127.ph, %.lr.ph.i.i.i.i.i.i.i.i.i126.preheader323 ], [ %i.fp, %.lr.ph.i.i.i.i.i.i.i.i.i126.prol ]
  %i.fq = sub i64 %.05.i.i.i.i.i.i.i.i.i127.ph, %i.ev
  %i.fr = icmp ugt i64 %i.fq, -4
  br i1 %i.fr, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit132, label %.lr.ph.i.i.i.i.i.i.i.i.i126

.lr.ph.i.i.i.i.i.i.i.i.i126:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i126.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i126
  %.05.i.i.i.i.i.i.i.i.i127 = phi i64 [ %i.gh, %.lr.ph.i.i.i.i.i.i.i.i.i126 ], [ %.05.i.i.i.i.i.i.i.i.i127.unr, %.lr.ph.i.i.i.i.i.i.i.i.i126.prol.loopexit ] ; 6 uses
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %.05.i.i.i.i.i.i.i.i.i127
  %i.ft = getelementptr inbounds [4 x i8], ptr %.sroa.0.0176260, i64 %.05.i.i.i.i.i.i.i.i.i127
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !104
  store i32 %i.fu, ptr %i.fs, align 4, !tbaa !104
  %i.fv = add nsw i64 %.05.i.i.i.i.i.i.i.i.i127, 1 ; 2 uses
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.fv
  %i.fx = getelementptr inbounds [4 x i8], ptr %.sroa.0.0176260, i64 %i.fv
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !104
  store i32 %i.fy, ptr %i.fw, align 4, !tbaa !104
  %i.fz = add nsw i64 %.05.i.i.i.i.i.i.i.i.i127, 2 ; 2 uses
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.fz
  %i.gb = getelementptr inbounds [4 x i8], ptr %.sroa.0.0176260, i64 %i.fz
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !104
  store i32 %i.gc, ptr %i.ga, align 4, !tbaa !104
  %i.gd = add nsw i64 %.05.i.i.i.i.i.i.i.i.i127, 3 ; 2 uses
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.gd
  %i.gf = getelementptr inbounds [4 x i8], ptr %.sroa.0.0176260, i64 %i.gd
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !104
  store i32 %i.gg, ptr %i.ge, align 4, !tbaa !104
  %i.gh = add nsw i64 %.05.i.i.i.i.i.i.i.i.i127, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i128.3 = icmp eq i64 %i.gh, %i.ev
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i128.3, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit132, label %.lr.ph.i.i.i.i.i.i.i.i.i126, !llvm.loop !750

.lr.ph.i.i.i.i.i.i.i.i129:                        ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i.i129
  %.011.i.i.i.i.i.i.i.i130 = phi i64 [ %i.gl, %.lr.ph.i.i.i.i.i.i.i.i129 ], [ 0, %bb.n ] ; 3 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %.011.i.i.i.i.i.i.i.i130
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0176260, i64 %.011.i.i.i.i.i.i.i.i130
  %i.gk = load <2 x i64>, ptr %i.gj, align 16, !tbaa !52
  store <2 x i64> %i.gk, ptr %i.gi, align 16, !tbaa !52
  %i.gl = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i130, 4 ; 2 uses
  %i.gm = icmp slt i64 %i.gl, %i.ez
  br i1 %i.gm, label %.lr.ph.i.i.i.i.i.i.i.i129, label %._crit_edge.i.i.i.i.i.i.i.i125, !llvm.loop !746

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit132: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i126.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i126, %middle.block284, %._crit_edge.i.i.i.i.i.i.i.i125
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !103 ; 2 uses
  %i.gp = icmp slt i64 %i.go, 1
  br i1 %i.gp, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit: ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit132
  %i.gq = load ptr, ptr %5, align 8, !tbaa !78
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.go, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gq, i8 -1, i64 %.idx.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !104
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit132
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !103 ; 2 uses
  %i.gt = icmp slt i64 %i.gs, 1
  br i1 %i.gt, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit
  %i.gu = load ptr, ptr %4, align 8, !tbaa !78
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.gs, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gu, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !104
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i
  br i1 %i.bj, label %.lr.ph193, label %._crit_edge207

.lr.ph193:                                        ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  %i.gv = load ptr, ptr %2, align 8, !tbaa !78    ; 3 uses
  %xtraiter339 = and i64 %1, 1
  %i.gw = icmp eq i64 %1, 1
  br i1 %i.gw, label %.epil.preheader338, label %.lr.ph193.new

.lr.ph193.new:                                    ; preds = %.lr.ph193
  %unroll_iter343 = and i64 %1, -2
  br label %bb.p

.lr.ph206.unr-lcssa:                              ; preds = %bb.u
  %lcmp.mod341.not = icmp eq i64 %xtraiter339, 0
  br i1 %lcmp.mod341.not, label %.lr.ph206, label %.epil.preheader338

.epil.preheader338:                               ; preds = %.lr.ph206.unr-lcssa, %.lr.ph193
  %.069192.epil.init = phi i64 [ 0, %.lr.ph193 ], [ %i.if, %.lr.ph206.unr-lcssa ] ; 2 uses
  %lcmp.mod342 = trunc i64 %1 to i1
  call void @llvm.assume(i1 %lcmp.mod342)
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %.069192.epil.init
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !104
  %i.gz = sext i32 %i.gy to i64                   ; 2 uses
  %.not93.epil = icmp eq i64 %1, %i.gz
  br i1 %.not93.epil, label %.lr.ph206, label %bb.o

bb.o:                                             ; preds = %.epil.preheader338
  %i.ha = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.069192.epil.init
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !104
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.gz ; 2 uses
  %i.he = add nsw i32 %i.hc, 1
  %i.hf = load i32, ptr %i.hd, align 4, !tbaa !104
  %i.hg = add nsw i32 %i.he, %i.hf
  store i32 %i.hg, ptr %i.hd, align 4, !tbaa !104
  br label %.lr.ph206

.lr.ph206:                                        ; preds = %.epil.preheader338, %bb.o, %.lr.ph206.unr-lcssa
  %i.hh = load ptr, ptr %2, align 8, !tbaa !78
  %i.hi = load ptr, ptr %4, align 8, !tbaa !78    ; 5 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.v

bb.p:                                             ; preds = %bb.u, %.lr.ph193.new
  %.069192 = phi i64 [ 0, %.lr.ph193.new ], [ %i.if, %bb.u ] ; 4 uses
  %niter344 = phi i64 [ 0, %.lr.ph193.new ], [ %niter344.next.1, %bb.u ]
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %.069192
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !104
  %i.hl = sext i32 %i.hk to i64                   ; 2 uses
  %.not93 = icmp eq i64 %1, %i.hl
  br i1 %.not93, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
end_hunk_4
begin_hunk_5_@_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi1EEELi1ELb0EdNS2_IdlLi0EEELb0ELi0EE3runEllRKS3_RKS4_Pdld:bb.a
  %.1227.lcssa = phi i64 [ %.0226.lcssa, %.preheader408 ], [ %i.je, %._crit_edge470 ] ; 3 uses
  %i.fw = icmp slt i64 %.1227.lcssa, %i.e
  br i1 %i.fw, label %.preheader405.lr.ph, label %.preheader404

.preheader405.lr.ph:                              ; preds = %.preheader406
  %.not236477 = icmp slt i64 %1, 2
  %i.fx = and i64 %1, -2                          ; 2 uses
  %i.fy = add i64 %1, -2                          ; 2 uses
  %i.fz = lshr i64 %i.fy, 1                       ; 2 uses
  %i.ga = add nuw i64 %i.fz, 1                    ; 2 uses
  %i.gb = icmp eq i64 %i.fz, 0
  %unroll_iter = and i64 %i.ga, -2
  %i.gc = and i64 %i.fy, 2
  %lcmp.mod.not.not = icmp eq i64 %i.gc, 0
  %lcmp.mod671 = trunc i64 %i.ga to i1
  %xtraiter672 = and i64 %1, 1
  %lcmp.mod673.not = icmp eq i64 %xtraiter672, 0
  br label %.preheader405

bb.d:                                             ; preds = %.lr.ph456, %bb.d
  %i.gd = phi i64 [ 2, %.lr.ph456 ], [ %i.gx, %bb.d ] ; 2 uses
  %.0214455 = phi i64 [ 0, %.lr.ph456 ], [ %i.gd, %bb.d ] ; 2 uses
  %.0399454 = phi <2 x double> [ zeroinitializer, %.lr.ph456 ], [ %i.gk, %bb.d ]
  %.0401453 = phi <2 x double> [ zeroinitializer, %.lr.ph456 ], [ %i.go, %bb.d ]
  %.0402452 = phi <2 x double> [ zeroinitializer, %.lr.ph456 ], [ %i.gs, %bb.d ]
  %.0403451 = phi <2 x double> [ zeroinitializer, %.lr.ph456 ], [ %i.gw, %bb.d ]
  %i.ge = getelementptr [8 x i8], ptr %i.fo, i64 %.0214455
  %i.gf = load <2 x double>, ptr %i.ge, align 1, !tbaa !52 ; 4 uses
  %i.gg = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0214455 ; 4 uses
  %i.gh = getelementptr [8 x i8], ptr %i.gg, i64 %i.fp
  %i.gi = load <2 x double>, ptr %i.gh, align 1, !tbaa !52
  %i.gj = fmul <2 x double> %i.gf, %i.gi
  %i.gk = fadd <2 x double> %.0399454, %i.gj      ; 2 uses
  %i.gl = getelementptr [8 x i8], ptr %i.gg, i64 %i.fr
  %i.gm = load <2 x double>, ptr %i.gl, align 1, !tbaa !52
  %i.gn = fmul <2 x double> %i.gf, %i.gm
  %i.go = fadd <2 x double> %.0401453, %i.gn      ; 2 uses
  %i.gp = getelementptr [8 x i8], ptr %i.gg, i64 %i.ft
  %i.gq = load <2 x double>, ptr %i.gp, align 1, !tbaa !52
  %i.gr = fmul <2 x double> %i.gf, %i.gq
  %i.gs = fadd <2 x double> %.0402452, %i.gr      ; 2 uses
  %i.gt = getelementptr [8 x i8], ptr %i.gg, i64 %i.fv
  %i.gu = load <2 x double>, ptr %i.gt, align 1, !tbaa !52
  %i.gv = fmul <2 x double> %i.gf, %i.gu
  %i.gw = fadd <2 x double> %.0403451, %i.gv      ; 2 uses
  %i.gx = add nuw nsw i64 %i.gd, 2                ; 2 uses
  %.not237 = icmp sgt i64 %i.gx, %1
  br i1 %.not237, label %._crit_edge457, label %bb.d, !llvm.loop !1822

._crit_edge457:                                   ; preds = %bb.d, %.preheader407
  %.0403.lcssa = phi <2 x double> [ zeroinitializer, %.preheader407 ], [ %i.gw, %bb.d ] ; 2 uses
  %.0402.lcssa = phi <2 x double> [ zeroinitializer, %.preheader407 ], [ %i.gs, %bb.d ] ; 2 uses
  %.0401.lcssa = phi <2 x double> [ zeroinitializer, %.preheader407 ], [ %i.go, %bb.d ] ; 2 uses
  %.0399.lcssa = phi <2 x double> [ zeroinitializer, %.preheader407 ], [ %i.gk, %bb.d ] ; 2 uses
  %.0214.lcssa = phi i64 [ 0, %.preheader407 ], [ %i.z, %bb.d ] ; 2 uses
  %i.gy = shufflevector <2 x double> %.0399.lcssa, <2 x double> %.0401.lcssa, <2 x i32> <i32 0, i32 2>
  %i.gz = shufflevector <2 x double> %.0402.lcssa, <2 x double> %.0403.lcssa, <2 x i32> <i32 0, i32 2>
  %i.ha = shufflevector <2 x double> %i.gy, <2 x double> %i.gz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hb = shufflevector <2 x double> %.0399.lcssa, <2 x double> %.0401.lcssa, <2 x i32> <i32 1, i32 3>
  %i.hc = shufflevector <2 x double> %.0402.lcssa, <2 x double> %.0403.lcssa, <2 x i32> <i32 1, i32 3>
  %i.hd = shufflevector <2 x double> %i.hb, <2 x double> %i.hc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.he = fadd <4 x double> %i.ha, %i.hd          ; 2 uses
  %i.hf = icmp slt i64 %.0214.lcssa, %1
  br i1 %i.hf, label %.lr.ph469, label %._crit_edge457.._crit_edge470_crit_edge

._crit_edge457.._crit_edge470_crit_edge:          ; preds = %._crit_edge457
  %.pre565 = add nuw nsw i64 %.1227475, 1
  %.pre567 = add nuw nsw i64 %.1227475, 2
  %.pre569 = add nuw nsw i64 %.1227475, 3
  br label %._crit_edge470

.lr.ph469:                                        ; preds = %._crit_edge457
  %i.hg = load ptr, ptr %3, align 8, !tbaa !809
  %i.hh = mul nsw i64 %.1227475, %.sroa.33.0.copyload
  %i.hi = add nuw nsw i64 %.1227475, 1            ; 2 uses
  %i.hj = mul nsw i64 %i.hi, %.sroa.33.0.copyload
  %i.hk = add nuw nsw i64 %.1227475, 2            ; 2 uses
  %i.hl = mul nsw i64 %i.hk, %.sroa.33.0.copyload
  %i.hm = add nuw nsw i64 %.1227475, 3            ; 2 uses
  %i.hn = mul nsw i64 %i.hm, %.sroa.33.0.copyload
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph469, %bb.e
  %.1215463 = phi i64 [ %.0214.lcssa, %.lr.ph469 ], [ %i.ii, %bb.e ] ; 3 uses
  %i.ho = phi <4 x double> [ %i.he, %.lr.ph469 ], [ %i.ih, %bb.e ]
  %i.hp = getelementptr [8 x i8], ptr %i.hg, i64 %.1215463
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !152
  %i.hr = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.1215463 ; 4 uses
  %i.hs = getelementptr [8 x i8], ptr %i.hr, i64 %i.hh
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !152
  %i.hu = getelementptr [8 x i8], ptr %i.hr, i64 %i.hj
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !152
  %i.hw = getelementptr [8 x i8], ptr %i.hr, i64 %i.hl
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !152
  %i.hy = getelementptr [8 x i8], ptr %i.hr, i64 %i.hn
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !152
  %i.ia = insertelement <4 x double> poison, double %i.hq, i64 0
  %i.ib = shufflevector <4 x double> %i.ia, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ic = insertelement <4 x double> poison, double %i.ht, i64 0
  %i.id = insertelement <4 x double> %i.ic, double %i.hv, i64 1
  %i.ie = insertelement <4 x double> %i.id, double %i.hx, i64 2
  %i.if = insertelement <4 x double> %i.ie, double %i.hz, i64 3
  %i.ig = fmul <4 x double> %i.ib, %i.if
  %i.ih = fadd <4 x double> %i.ho, %i.ig          ; 2 uses
  %i.ii = add nuw nsw i64 %.1215463, 1            ; 2 uses
  %exitcond549.not = icmp eq i64 %i.ii, %1
  br i1 %exitcond549.not, label %._crit_edge470, label %bb.e, !llvm.loop !1823

._crit_edge470:                                   ; preds = %bb.e, %._crit_edge457.._crit_edge470_crit_edge
  %.pre-phi570 = phi i64 [ %.pre569, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.hm, %bb.e ]
  %.pre-phi568 = phi i64 [ %.pre567, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.hk, %bb.e ]
  %.pre-phi566 = phi i64 [ %.pre565, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.hi, %bb.e ]
  %i.ij = phi <4 x double> [ %i.he, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.ih, %bb.e ] ; 4 uses
  %i.ik = mul nsw i64 %.1227475, %5
  %i.il = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ik ; 2 uses
  %i.im = load double, ptr %i.il, align 8, !tbaa !152
  %i.in = extractelement <4 x double> %i.ij, i64 0
  %i.io = tail call double @llvm.fmuladd.f64(double %6, double %i.in, double %i.im)
  store double %i.io, ptr %i.il, align 8, !tbaa !152
  %i.ip = mul nsw i64 %.pre-phi566, %5
  %i.iq = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ip ; 2 uses
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !152
  %i.is = extractelement <4 x double> %i.ij, i64 1
  %i.it = tail call double @llvm.fmuladd.f64(double %6, double %i.is, double %i.ir)
  store double %i.it, ptr %i.iq, align 8, !tbaa !152
  %i.iu = mul nsw i64 %.pre-phi568, %5
  %i.iv = getelementptr inbounds [8 x i8], ptr %4, i64 %i.iu ; 2 uses
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !152
  %i.ix = extractelement <4 x double> %i.ij, i64 2
  %i.iy = tail call double @llvm.fmuladd.f64(double %6, double %i.ix, double %i.iw)
  store double %i.iy, ptr %i.iv, align 8, !tbaa !152
  %i.iz = mul nsw i64 %.pre-phi570, %5
  %i.ja = getelementptr inbounds [8 x i8], ptr %4, i64 %i.iz ; 2 uses
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !152
  %i.jc = extractelement <4 x double> %i.ij, i64 3
  %i.jd = tail call double @llvm.fmuladd.f64(double %6, double %i.jc, double %i.jb)
  store double %i.jd, ptr %i.ja, align 8, !tbaa !152
  %i.je = add nuw nsw i64 %.1227475, 4            ; 3 uses
  %i.jf = icmp slt i64 %i.je, %i.d
  br i1 %i.jf, label %.preheader407, label %.preheader406, !llvm.loop !1824

.preheader405:                                    ; preds = %.preheader405.lr.ph, %._crit_edge491
  %.2494 = phi i64 [ %.1227.lcssa, %.preheader405.lr.ph ], [ %i.nl, %._crit_edge491 ] ; 7 uses
  br i1 %.not236477, label %._crit_edge482, label %.lr.ph481

.lr.ph481:                                        ; preds = %.preheader405
  %i.jg = load ptr, ptr %3, align 8, !tbaa !809   ; 3 uses
  %i.jh = mul nsw i64 %.2494, %.sroa.33.0.copyload ; 3 uses
  %i.ji = add nuw nsw i64 %.2494, 1
  %i.jj = mul nsw i64 %i.ji, %.sroa.33.0.copyload ; 3 uses
  br i1 %i.gb, label %.epil.preheader, label %.lr.ph481.new

.preheader404:                                    ; preds = %._crit_edge491, %.preheader406
  %.2.lcssa = phi i64 [ %.1227.lcssa, %.preheader406 ], [ %i.nl, %._crit_edge491 ] ; 2 uses
  %i.jk = icmp slt i64 %.2.lcssa, %0
  br i1 %i.jk, label %.preheader.lr.ph, label %._crit_edge512

.preheader.lr.ph:                                 ; preds = %.preheader404
  %.not496 = icmp slt i64 %1, 2
  %i.jl = and i64 %1, -2                          ; 2 uses
  %i.jm = add i64 %1, -2                          ; 2 uses
  %i.jn = lshr i64 %i.jm, 1
  %i.jo = add nuw i64 %i.jn, 1                    ; 2 uses
  %xtraiter675 = and i64 %i.jo, 3                 ; 3 uses
  %i.jp = icmp ult i64 %i.jm, 6
  %unroll_iter680 = and i64 %i.jo, -4
  %lcmp.mod677.not = icmp eq i64 %xtraiter675, 0
  %lcmp.mod679 = icmp ne i64 %xtraiter675, 0
  br label %.preheader

.lr.ph481.new:                                    ; preds = %.lr.ph481, %.lr.ph481.new
  %i.jq = phi i64 [ %i.ko, %.lr.ph481.new ], [ 2, %.lr.ph481 ] ; 4 uses
  %.0208480 = phi i64 [ %i.kc, %.lr.ph481.new ], [ 0, %.lr.ph481 ] ; 2 uses
  %.0398479 = phi <2 x double> [ %i.kn, %.lr.ph481.new ], [ zeroinitializer, %.lr.ph481 ]
  %.0400478 = phi <2 x double> [ %i.kj, %.lr.ph481.new ], [ zeroinitializer, %.lr.ph481 ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph481.new ], [ 0, %.lr.ph481 ]
  %i.jr = getelementptr [8 x i8], ptr %i.jg, i64 %.0208480
  %i.js = load <2 x double>, ptr %i.jr, align 1, !tbaa !52 ; 2 uses
  %i.jt = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0208480 ; 2 uses
  %i.ju = getelementptr [8 x i8], ptr %i.jt, i64 %i.jh
  %i.jv = load <2 x double>, ptr %i.ju, align 1, !tbaa !52
  %i.jw = fmul <2 x double> %i.js, %i.jv
  %i.jx = fadd <2 x double> %.0400478, %i.jw
  %i.jy = getelementptr [8 x i8], ptr %i.jt, i64 %i.jj
  %i.jz = load <2 x double>, ptr %i.jy, align 1, !tbaa !52
  %i.ka = fmul <2 x double> %i.js, %i.jz
  %i.kb = fadd <2 x double> %.0398479, %i.ka
  %i.kc = add nuw nsw i64 %i.jq, 2                ; 2 uses
  %i.kd = getelementptr [8 x i8], ptr %i.jg, i64 %i.jq
  %i.ke = load <2 x double>, ptr %i.kd, align 1, !tbaa !52 ; 2 uses
  %i.kf = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.jq ; 2 uses
  %i.kg = getelementptr [8 x i8], ptr %i.kf, i64 %i.jh
  %i.kh = load <2 x double>, ptr %i.kg, align 1, !tbaa !52
  %i.ki = fmul <2 x double> %i.ke, %i.kh
  %i.kj = fadd <2 x double> %i.jx, %i.ki          ; 3 uses
  %i.kk = getelementptr [8 x i8], ptr %i.kf, i64 %i.jj
  %i.kl = load <2 x double>, ptr %i.kk, align 1, !tbaa !52
  %i.km = fmul <2 x double> %i.ke, %i.kl
  %i.kn = fadd <2 x double> %i.kb, %i.km          ; 3 uses
  %i.ko = add nuw nsw i64 %i.jq, 4
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge482.loopexit.unr-lcssa, label %.lr.ph481.new, !llvm.loop !1825

._crit_edge482.loopexit.unr-lcssa:                ; preds = %.lr.ph481.new
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge482

.epil.preheader:                                  ; preds = %._crit_edge482.loopexit.unr-lcssa, %.lr.ph481
  %.0208480.epil.init = phi i64 [ 0, %.lr.ph481 ], [ %i.kc, %._crit_edge482.loopexit.unr-lcssa ] ; 2 uses
  %.0398479.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph481 ], [ %i.kn, %._crit_edge482.loopexit.unr-lcssa ]
  %.0400478.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph481 ], [ %i.kj, %._crit_edge482.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod671)
  %i.kp = getelementptr [8 x i8], ptr %i.jg, i64 %.0208480.epil.init
  %i.kq = load <2 x double>, ptr %i.kp, align 1, !tbaa !52 ; 2 uses
  %i.kr = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0208480.epil.init ; 2 uses
  %i.ks = getelementptr [8 x i8], ptr %i.kr, i64 %i.jh
  %i.kt = load <2 x double>, ptr %i.ks, align 1, !tbaa !52
  %i.ku = fmul <2 x double> %i.kq, %i.kt
  %i.kv = fadd <2 x double> %.0400478.epil.init, %i.ku
  %i.kw = getelementptr [8 x i8], ptr %i.kr, i64 %i.jj
  %i.kx = load <2 x double>, ptr %i.kw, align 1, !tbaa !52
  %i.ky = fmul <2 x double> %i.kq, %i.kx
  %i.kz = fadd <2 x double> %.0398479.epil.init, %i.ky
  br label %._crit_edge482

._crit_edge482:                                   ; preds = %.epil.preheader, %._crit_edge482.loopexit.unr-lcssa, %.preheader405
  %.0400.lcssa = phi <2 x double> [ zeroinitializer, %.preheader405 ], [ %i.kj, %._crit_edge482.loopexit.unr-lcssa ], [ %i.kv, %.epil.preheader ] ; 2 uses
  %.0398.lcssa = phi <2 x double> [ zeroinitializer, %.preheader405 ], [ %i.kn, %._crit_edge482.loopexit.unr-lcssa ], [ %i.kz, %.epil.preheader ] ; 2 uses
  %.0208.lcssa = phi i64 [ 0, %.preheader405 ], [ %i.fx, %._crit_edge482.loopexit.unr-lcssa ], [ %i.fx, %.epil.preheader ] ; 6 uses
  %i.la = shufflevector <2 x double> %.0400.lcssa, <2 x double> %.0398.lcssa, <2 x i32> <i32 0, i32 2>
  %i.lb = shufflevector <2 x double> %.0400.lcssa, <2 x double> %.0398.lcssa, <2 x i32> <i32 1, i32 3>
  %i.lc = fadd <2 x double> %i.la, %i.lb          ; 3 uses
  %i.ld = icmp slt i64 %.0208.lcssa, %1
  br i1 %i.ld, label %.lr.ph490, label %._crit_edge482.._crit_edge491_crit_edge

._crit_edge482.._crit_edge491_crit_edge:          ; preds = %._crit_edge482
  %.pre571 = add nuw nsw i64 %.2494, 1
  br label %._crit_edge491

.lr.ph490:                                        ; preds = %._crit_edge482
  %i.le = load ptr, ptr %3, align 8, !tbaa !809   ; 3 uses
  %i.lf = mul nsw i64 %.2494, %.sroa.33.0.copyload ; 3 uses
  %i.lg = add nuw nsw i64 %.2494, 1               ; 3 uses
  %i.lh = mul nsw i64 %i.lg, %.sroa.33.0.copyload ; 3 uses
  %.neg = or disjoint i64 %.0208.lcssa, 1
  br i1 %lcmp.mod673.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph490
  %i.li = getelementptr [8 x i8], ptr %i.le, i64 %.0208.lcssa
  %i.lj = load double, ptr %i.li, align 8, !tbaa !152
  %i.lk = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0208.lcssa ; 2 uses
  %i.ll = getelementptr [8 x i8], ptr %i.lk, i64 %i.lf
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !152
  %i.ln = getelementptr [8 x i8], ptr %i.lk, i64 %i.lh
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !152
  %i.lp = insertelement <2 x double> poison, double %i.lj, i64 0
  %i.lq = shufflevector <2 x double> %i.lp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lr = insertelement <2 x double> poison, double %i.lm, i64 0
  %i.ls = insertelement <2 x double> %i.lr, double %i.lo, i64 1
  %i.lt = fmul <2 x double> %i.lq, %i.ls
  %i.lu = fadd <2 x double> %i.lc, %i.lt          ; 2 uses
  %i.lv = or disjoint i64 %.0208.lcssa, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph490
  %.lcssa651.unr = phi <2 x double> [ poison, %.lr.ph490 ], [ %i.lu, %.prol.loopexit.unr-lcssa ]
  %.1209486.unr = phi i64 [ %.0208.lcssa, %.lr.ph490 ], [ %i.lv, %.prol.loopexit.unr-lcssa ]
  %.unr = phi <2 x double> [ %i.lc, %.lr.ph490 ], [ %i.lu, %.prol.loopexit.unr-lcssa ]
  %i.lw = icmp eq i64 %1, %.neg
  br i1 %i.lw, label %._crit_edge491, label %.lr.ph490.new

.lr.ph490.new:                                    ; preds = %.prol.loopexit, %.lr.ph490.new
  %.1209486 = phi i64 [ %i.mz, %.lr.ph490.new ], [ %.1209486.unr, %.prol.loopexit ] ; 4 uses
  %i.lx = phi <2 x double> [ %i.my, %.lr.ph490.new ], [ %.unr, %.prol.loopexit ]
  %i.ly = getelementptr [8 x i8], ptr %i.le, i64 %.1209486
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !152
  %i.ma = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.1209486 ; 2 uses
  %i.mb = getelementptr [8 x i8], ptr %i.ma, i64 %i.lf
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !152
  %i.md = getelementptr [8 x i8], ptr %i.ma, i64 %i.lh
  %i.me = load double, ptr %i.md, align 8, !tbaa !152
  %i.mf = insertelement <2 x double> poison, double %i.lz, i64 0
  %i.mg = shufflevector <2 x double> %i.mf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mh = insertelement <2 x double> poison, double %i.mc, i64 0
  %i.mi = insertelement <2 x double> %i.mh, double %i.me, i64 1
  %i.mj = fmul <2 x double> %i.mg, %i.mi
  %i.mk = fadd <2 x double> %i.lx, %i.mj
  %i.ml = add nuw nsw i64 %.1209486, 1            ; 2 uses
  %i.mm = getelementptr [8 x i8], ptr %i.le, i64 %i.ml
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !152
  %i.mo = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.ml ; 2 uses
  %i.mp = getelementptr [8 x i8], ptr %i.mo, i64 %i.lf
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !152
  %i.mr = getelementptr [8 x i8], ptr %i.mo, i64 %i.lh
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !152
  %i.mt = insertelement <2 x double> poison, double %i.mn, i64 0
  %i.mu = shufflevector <2 x double> %i.mt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mv = insertelement <2 x double> poison, double %i.mq, i64 0
  %i.mw = insertelement <2 x double> %i.mv, double %i.ms, i64 1
  %i.mx = fmul <2 x double> %i.mu, %i.mw
  %i.my = fadd <2 x double> %i.mk, %i.mx          ; 2 uses
  %i.mz = add nuw nsw i64 %.1209486, 2            ; 2 uses
  %exitcond550.not.1 = icmp eq i64 %i.mz, %1
  br i1 %exitcond550.not.1, label %._crit_edge491, label %.lr.ph490.new, !llvm.loop !1826

._crit_edge491:                                   ; preds = %.prol.loopexit, %.lr.ph490.new, %._crit_edge482.._crit_edge491_crit_edge
  %.pre-phi572 = phi i64 [ %.pre571, %._crit_edge482.._crit_edge491_crit_edge ], [ %i.lg, %.lr.ph490.new ], [ %i.lg, %.prol.loopexit ]
  %i.na = phi <2 x double> [ %i.lc, %._crit_edge482.._crit_edge491_crit_edge ], [ %.lcssa651.unr, %.prol.loopexit ], [ %i.my, %.lr.ph490.new ] ; 2 uses
  %i.nb = mul nsw i64 %.2494, %5
  %i.nc = getelementptr inbounds [8 x i8], ptr %4, i64 %i.nb ; 2 uses
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !152
  %i.ne = extractelement <2 x double> %i.na, i64 0
  %i.nf = tail call double @llvm.fmuladd.f64(double %6, double %i.ne, double %i.nd)
  store double %i.nf, ptr %i.nc, align 8, !tbaa !152
  %i.ng = mul nsw i64 %.pre-phi572, %5
  %i.nh = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ng ; 2 uses
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !152
  %i.nj = extractelement <2 x double> %i.na, i64 1
  %i.nk = tail call double @llvm.fmuladd.f64(double %6, double %i.nj, double %i.ni)
  store double %i.nk, ptr %i.nh, align 8, !tbaa !152
  %i.nl = add nuw nsw i64 %.2494, 2               ; 3 uses
  %i.nm = icmp slt i64 %i.nl, %i.e
  br i1 %i.nm, label %.preheader405, label %.preheader404, !llvm.loop !1827

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge507
  %.3511 = phi i64 [ %.2.lcssa, %.preheader.lr.ph ], [ %i.qk, %._crit_edge507 ] ; 4 uses
  br i1 %.not496, label %._crit_edge500, label %.lr.ph499

.lr.ph499:                                        ; preds = %.preheader
  %i.nn = load ptr, ptr %3, align 8, !tbaa !809   ; 5 uses
  %i.no = mul nsw i64 %.3511, %.sroa.33.0.copyload
  %invariant.gep = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.no ; 5 uses
  br i1 %i.jp, label %.epil.preheader674, label %.lr.ph499.new

.lr.ph499.new:                                    ; preds = %.lr.ph499, %.lr.ph499.new
  %i.np = phi i64 [ %i.on, %.lr.ph499.new ], [ 2, %.lr.ph499 ] ; 6 uses
  %.0205498 = phi i64 [ %i.oh, %.lr.ph499.new ], [ 0, %.lr.ph499 ] ; 2 uses
  %.0392497 = phi <2 x double> [ %i.om, %.lr.ph499.new ], [ zeroinitializer, %.lr.ph499 ]
  %niter681 = phi i64 [ %niter681.next.3, %.lr.ph499.new ], [ 0, %.lr.ph499 ]
  %i.nq = getelementptr [8 x i8], ptr %i.nn, i64 %.0205498
  %i.nr = load <2 x double>, ptr %i.nq, align 1, !tbaa !52
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0205498
  %i.ns = load <2 x double>, ptr %gep, align 1, !tbaa !52
  %i.nt = fmul <2 x double> %i.nr, %i.ns
  %i.nu = fadd <2 x double> %.0392497, %i.nt
  %i.nv = add nuw nsw i64 %i.np, 2                ; 2 uses
  %i.nw = getelementptr [8 x i8], ptr %i.nn, i64 %i.np
  %i.nx = load <2 x double>, ptr %i.nw, align 1, !tbaa !52
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.np
  %i.ny = load <2 x double>, ptr %gep.1, align 1, !tbaa !52
  %i.nz = fmul <2 x double> %i.nx, %i.ny
  %i.oa = fadd <2 x double> %i.nu, %i.nz
  %i.ob = add nuw nsw i64 %i.np, 4                ; 2 uses
  %i.oc = getelementptr [8 x i8], ptr %i.nn, i64 %i.nv
  %i.od = load <2 x double>, ptr %i.oc, align 1, !tbaa !52
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.nv
  %i.oe = load <2 x double>, ptr %gep.2, align 1, !tbaa !52
  %i.of = fmul <2 x double> %i.od, %i.oe
  %i.og = fadd <2 x double> %i.oa, %i.of
  %i.oh = add nuw nsw i64 %i.np, 6                ; 2 uses
  %i.oi = getelementptr [8 x i8], ptr %i.nn, i64 %i.ob
  %i.oj = load <2 x double>, ptr %i.oi, align 1, !tbaa !52
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ob
  %i.ok = load <2 x double>, ptr %gep.3, align 1, !tbaa !52
  %i.ol = fmul <2 x double> %i.oj, %i.ok
  %i.om = fadd <2 x double> %i.og, %i.ol          ; 3 uses
  %i.on = add nuw nsw i64 %i.np, 8                ; 2 uses
  %niter681.next.3 = add i64 %niter681, 4         ; 2 uses
  %niter681.ncmp.3 = icmp eq i64 %niter681.next.3, %unroll_iter680
  br i1 %niter681.ncmp.3, label %._crit_edge500.loopexit.unr-lcssa, label %.lr.ph499.new, !llvm.loop !1828

._crit_edge500.loopexit.unr-lcssa:                ; preds = %.lr.ph499.new
  br i1 %lcmp.mod677.not, label %._crit_edge500, label %.epil.preheader674

.epil.preheader674:                               ; preds = %._crit_edge500.loopexit.unr-lcssa, %.lr.ph499
  %.epil.init = phi i64 [ 2, %.lr.ph499 ], [ %i.on, %._crit_edge500.loopexit.unr-lcssa ]
  %.0205498.epil.init = phi i64 [ 0, %.lr.ph499 ], [ %i.oh, %._crit_edge500.loopexit.unr-lcssa ]
  %.0392497.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph499 ], [ %i.om, %._crit_edge500.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod679)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader674
  %i.oo = phi i64 [ %.epil.init, %.epil.preheader674 ], [ %i.ou, %bb.f ] ; 2 uses
  %.0205498.epil = phi i64 [ %.0205498.epil.init, %.epil.preheader674 ], [ %i.oo, %bb.f ] ; 2 uses
  %.0392497.epil = phi <2 x double> [ %.0392497.epil.init, %.epil.preheader674 ], [ %i.ot, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader674 ], [ %epil.iter.next, %bb.f ]
  %i.op = getelementptr [8 x i8], ptr %i.nn, i64 %.0205498.epil
  %i.oq = load <2 x double>, ptr %i.op, align 1, !tbaa !52
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0205498.epil
  %i.or = load <2 x double>, ptr %gep.epil, align 1, !tbaa !52
  %i.os = fmul <2 x double> %i.oq, %i.or
  %i.ot = fadd <2 x double> %.0392497.epil, %i.os ; 2 uses
  %i.ou = add nuw nsw i64 %i.oo, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter675
  br i1 %epil.iter.cmp.not, label %._crit_edge500, label %bb.f, !llvm.loop !1829

._crit_edge500:                                   ; preds = %._crit_edge500.loopexit.unr-lcssa, %bb.f, %.preheader
  %.0392.lcssa = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.om, %._crit_edge500.loopexit.unr-lcssa ], [ %i.ot, %bb.f ] ; 2 uses
  %.0205.lcssa = phi i64 [ 0, %.preheader ], [ %i.jl, %bb.f ], [ %i.jl, %._crit_edge500.loopexit.unr-lcssa ] ; 5 uses
  %shift = shufflevector <2 x double> %.0392.lcssa, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
end_hunk_5
