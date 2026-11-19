Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/feasiblesqpmethod?download=true
inline.NumInlined: 5575
inline.NumDeleted: 707
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 152
loop-unroll.NumUnrolled: 172
begin_hunk_0_@_ZNK6casadi17Feasiblesqpmethod22feasibility_iterationsEPvd:bb.a
  %lcmp.mod1657.not = icmp eq i64 %xtraiter1656, 0
  br i1 %lcmp.mod1657.not, label %.lr.ph.i259.prol.loopexit, label %.lr.ph.i259.prol

.lr.ph.i259.prol:                                 ; preds = %.lr.ph.i259.preheader1617, %.lr.ph.i259.prol
  %.014.i260.prol = phi i64 [ %i.uv, %.lr.ph.i259.prol ], [ %.014.i260.ph, %.lr.ph.i259.preheader1617 ]
  %.0813.i261.prol = phi ptr [ %i.us, %.lr.ph.i259.prol ], [ %.0813.i261.ph, %.lr.ph.i259.preheader1617 ] ; 3 uses
  %.0912.i262.prol = phi ptr [ %i.uq, %.lr.ph.i259.prol ], [ %.0912.i262.ph, %.lr.ph.i259.preheader1617 ] ; 2 uses
  %prol.iter1658 = phi i64 [ %prol.iter1658.next, %.lr.ph.i259.prol ], [ 0, %.lr.ph.i259.preheader1617 ]
  %i.uq = getelementptr inbounds nuw i8, ptr %.0912.i262.prol, i64 8 ; 2 uses
  %i.ur = load double, ptr %.0912.i262.prol, align 8, !tbaa !155
  %i.us = getelementptr inbounds nuw i8, ptr %.0813.i261.prol, i64 8 ; 2 uses
  %i.ut = load double, ptr %.0813.i261.prol, align 8, !tbaa !155
  %i.uu = fadd double %i.ur, %i.ut
  store double %i.uu, ptr %.0813.i261.prol, align 8, !tbaa !155
  %i.uv = add nuw nsw i64 %.014.i260.prol, 1      ; 2 uses
  %prol.iter1658.next = add i64 %prol.iter1658, 1 ; 2 uses
  %prol.iter1658.cmp.not = icmp eq i64 %prol.iter1658.next, %xtraiter1656
  br i1 %prol.iter1658.cmp.not, label %.lr.ph.i259.prol.loopexit, label %.lr.ph.i259.prol, !llvm.loop !583

.lr.ph.i259.prol.loopexit:                        ; preds = %.lr.ph.i259.prol, %.lr.ph.i259.preheader1617
  %.014.i260.unr = phi i64 [ %.014.i260.ph, %.lr.ph.i259.preheader1617 ], [ %i.uv, %.lr.ph.i259.prol ]
  %.0813.i261.unr = phi ptr [ %.0813.i261.ph, %.lr.ph.i259.preheader1617 ], [ %i.us, %.lr.ph.i259.prol ]
  %.0912.i262.unr = phi ptr [ %.0912.i262.ph, %.lr.ph.i259.preheader1617 ], [ %i.uq, %.lr.ph.i259.prol ]
  %i.uw = sub i64 %.014.i260.ph, %i.po
  %i.ux = icmp ugt i64 %i.uw, -4
  br i1 %i.ux, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit264, label %.lr.ph.i259

.lr.ph.i259:                                      ; preds = %.lr.ph.i259.prol.loopexit, %.lr.ph.i259
  %.014.i260 = phi i64 [ %i.vs, %.lr.ph.i259 ], [ %.014.i260.unr, %.lr.ph.i259.prol.loopexit ]
  %.0813.i261 = phi ptr [ %i.vp, %.lr.ph.i259 ], [ %.0813.i261.unr, %.lr.ph.i259.prol.loopexit ] ; 6 uses
  %.0912.i262 = phi ptr [ %i.vn, %.lr.ph.i259 ], [ %.0912.i262.unr, %.lr.ph.i259.prol.loopexit ] ; 5 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %.0912.i262, i64 8
  %i.uz = load double, ptr %.0912.i262, align 8, !tbaa !155
  %i.va = getelementptr inbounds nuw i8, ptr %.0813.i261, i64 8 ; 2 uses
  %i.vb = load double, ptr %.0813.i261, align 8, !tbaa !155
  %i.vc = fadd double %i.uz, %i.vb
  store double %i.vc, ptr %.0813.i261, align 8, !tbaa !155
  %i.vd = getelementptr inbounds nuw i8, ptr %.0912.i262, i64 16
  %i.ve = load double, ptr %i.uy, align 8, !tbaa !155
  %i.vf = getelementptr inbounds nuw i8, ptr %.0813.i261, i64 16 ; 2 uses
  %i.vg = load double, ptr %i.va, align 8, !tbaa !155
  %i.vh = fadd double %i.ve, %i.vg
  store double %i.vh, ptr %i.va, align 8, !tbaa !155
  %i.vi = getelementptr inbounds nuw i8, ptr %.0912.i262, i64 24
  %i.vj = load double, ptr %i.vd, align 8, !tbaa !155
  %i.vk = getelementptr inbounds nuw i8, ptr %.0813.i261, i64 24 ; 2 uses
  %i.vl = load double, ptr %i.vf, align 8, !tbaa !155
  %i.vm = fadd double %i.vj, %i.vl
  store double %i.vm, ptr %i.vf, align 8, !tbaa !155
  %i.vn = getelementptr inbounds nuw i8, ptr %.0912.i262, i64 32
  %i.vo = load double, ptr %i.vi, align 8, !tbaa !155
  %i.vp = getelementptr inbounds nuw i8, ptr %.0813.i261, i64 32
  %i.vq = load double, ptr %i.vk, align 8, !tbaa !155
  %i.vr = fadd double %i.vo, %i.vq
  store double %i.vr, ptr %i.vk, align 8, !tbaa !155
  %i.vs = add nuw nsw i64 %.014.i260, 4           ; 2 uses
  %exitcond.not.i263.3 = icmp eq i64 %i.vs, %i.po
  br i1 %exitcond.not.i263.3, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit264, label %.lr.ph.i259, !llvm.loop !584

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit264: ; preds = %.lr.ph.i259.prol.loopexit, %.lr.ph.i259, %middle.block972, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit256
  br i1 %i.ub, label %.lr.ph.i.i265.preheader, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit273

.lr.ph.i.i265.preheader:                          ; preds = %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit264
  %i.vt = add i64 %i.po, -1                       ; 2 uses
  %xtraiter1659 = and i64 %i.po, 3                ; 3 uses
  %i.vu = icmp ult i64 %i.vt, 3
  br i1 %i.vu, label %.lr.ph.i.i265.epil.preheader, label %.lr.ph.i.i265.preheader.new

.lr.ph.i.i265.preheader.new:                      ; preds = %.lr.ph.i.i265.preheader
  %unroll_iter = and i64 %i.po, -4
  br label %.lr.ph.i.i265

.lr.ph.i.i265:                                    ; preds = %.lr.ph.i.i265, %.lr.ph.i.i265.preheader.new
  %.012.i.i = phi double [ 0.000000e+00, %.lr.ph.i.i265.preheader.new ], [ %i.wg, %.lr.ph.i.i265 ]
  %.0710.i.i = phi ptr [ %i.qt, %.lr.ph.i.i265.preheader.new ], [ %i.we, %.lr.ph.i.i265 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i265.preheader.new ], [ %niter.next.3, %.lr.ph.i.i265 ]
  %i.vv = getelementptr i8, ptr %.0710.i.i, i64 8
  %i.vw = load double, ptr %.0710.i.i, align 8, !tbaa !155 ; 2 uses
  %i.vx = call double @llvm.fmuladd.f64(double %i.vw, double %i.vw, double %.012.i.i)
  %i.vy = getelementptr i8, ptr %.0710.i.i, i64 16
  %i.vz = load double, ptr %i.vv, align 8, !tbaa !155 ; 2 uses
  %i.wa = call double @llvm.fmuladd.f64(double %i.vz, double %i.vz, double %i.vx)
  %i.wb = getelementptr i8, ptr %.0710.i.i, i64 24
  %i.wc = load double, ptr %i.vy, align 8, !tbaa !155 ; 2 uses
  %i.wd = call double @llvm.fmuladd.f64(double %i.wc, double %i.wc, double %i.wa)
  %i.we = getelementptr i8, ptr %.0710.i.i, i64 32 ; 2 uses
  %i.wf = load double, ptr %i.wb, align 8, !tbaa !155 ; 2 uses
  %i.wg = call double @llvm.fmuladd.f64(double %i.wf, double %i.wf, double %i.wd) ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.unr-lcssa, label %.lr.ph.i.i265, !llvm.loop !4

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.unr-lcssa: ; preds = %.lr.ph.i.i265
  %lcmp.mod1660.not = icmp eq i64 %xtraiter1659, 0
  br i1 %lcmp.mod1660.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit, label %.lr.ph.i.i265.epil.preheader

.lr.ph.i.i265.epil.preheader:                     ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.unr-lcssa, %.lr.ph.i.i265.preheader
  %.012.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i265.preheader ], [ %i.wg, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.unr-lcssa ]
  %.0710.i.i.epil.init = phi ptr [ %i.qt, %.lr.ph.i.i265.preheader ], [ %i.we, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.unr-lcssa ]
  %lcmp.mod1662 = icmp ne i64 %xtraiter1659, 0
  call void @llvm.assume(i1 %lcmp.mod1662)
  br label %.lr.ph.i.i265.epil

.lr.ph.i.i265.epil:                               ; preds = %.lr.ph.i.i265.epil, %.lr.ph.i.i265.epil.preheader
  %.012.i.i.epil = phi double [ %i.wj, %.lr.ph.i.i265.epil ], [ %.012.i.i.epil.init, %.lr.ph.i.i265.epil.preheader ]
  %.0710.i.i.epil = phi ptr [ %i.wh, %.lr.ph.i.i265.epil ], [ %.0710.i.i.epil.init, %.lr.ph.i.i265.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i265.epil ], [ 0, %.lr.ph.i.i265.epil.preheader ]
  %i.wh = getelementptr i8, ptr %.0710.i.i.epil, i64 8
  %i.wi = load double, ptr %.0710.i.i.epil, align 8, !tbaa !155 ; 2 uses
  %i.wj = call double @llvm.fmuladd.f64(double %i.wi, double %i.wi, double %.012.i.i.epil) ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1659
  br i1 %epil.iter.cmp.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit, label %.lr.ph.i.i265.epil, !llvm.loop !585

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit:       ; preds = %.lr.ph.i.i265.epil, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.unr-lcssa
  %.lcssa1616 = phi double [ %i.wg, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.unr-lcssa ], [ %i.wj, %.lr.ph.i.i265.epil ]
  %i.wk = call noundef double @sqrt(double noundef %.lcssa1616) #29 ; 2 uses
  %xtraiter1663 = and i64 %i.po, 3                ; 3 uses
  %i.wl = icmp ult i64 %i.vt, 3
  br i1 %i.wl, label %.lr.ph.i.i268.epil.preheader, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.new

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.new:   ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit
  %unroll_iter1668 = and i64 %i.po, -4
  br label %.lr.ph.i.i268

.lr.ph.i.i268:                                    ; preds = %.lr.ph.i.i268, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.new
  %.012.i.i269 = phi double [ 0.000000e+00, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.new ], [ %i.wx, %.lr.ph.i.i268 ]
  %.0710.i.i271 = phi ptr [ %i.qr, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.new ], [ %i.wv, %.lr.ph.i.i268 ] ; 5 uses
  %niter1669 = phi i64 [ 0, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.new ], [ %niter1669.next.3, %.lr.ph.i.i268 ]
  %i.wm = getelementptr i8, ptr %.0710.i.i271, i64 8
  %i.wn = load double, ptr %.0710.i.i271, align 8, !tbaa !155 ; 2 uses
  %i.wo = call double @llvm.fmuladd.f64(double %i.wn, double %i.wn, double %.012.i.i269)
  %i.wp = getelementptr i8, ptr %.0710.i.i271, i64 16
  %i.wq = load double, ptr %i.wm, align 8, !tbaa !155 ; 2 uses
  %i.wr = call double @llvm.fmuladd.f64(double %i.wq, double %i.wq, double %i.wo)
  %i.ws = getelementptr i8, ptr %.0710.i.i271, i64 24
  %i.wt = load double, ptr %i.wp, align 8, !tbaa !155 ; 2 uses
  %i.wu = call double @llvm.fmuladd.f64(double %i.wt, double %i.wt, double %i.wr)
  %i.wv = getelementptr i8, ptr %.0710.i.i271, i64 32 ; 2 uses
  %i.ww = load double, ptr %i.ws, align 8, !tbaa !155 ; 2 uses
  %i.wx = call double @llvm.fmuladd.f64(double %i.ww, double %i.ww, double %i.wu) ; 3 uses
  %niter1669.next.3 = add i64 %niter1669, 4       ; 2 uses
  %niter1669.ncmp.3 = icmp eq i64 %niter1669.next.3, %unroll_iter1668
  br i1 %niter1669.ncmp.3, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit273.loopexit.unr-lcssa, label %.lr.ph.i.i268, !llvm.loop !4

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit273.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i268
  %lcmp.mod1665.not = icmp eq i64 %xtraiter1663, 0
  br i1 %lcmp.mod1665.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit273, label %.lr.ph.i.i268.epil.preheader

.lr.ph.i.i268.epil.preheader:                     ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit273.loopexit.unr-lcssa, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit
  %.012.i.i269.epil.init = phi double [ 0.000000e+00, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit ], [ %i.wx, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit273.loopexit.unr-lcssa ]
  %.0710.i.i271.epil.init = phi ptr [ %i.qr, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit ], [ %i.wv, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit273.loopexit.unr-lcssa ]
  %lcmp.mod1667 = icmp ne i64 %xtraiter1663, 0
  call void @llvm.assume(i1 %lcmp.mod1667)
  br label %.lr.ph.i.i268.epil

.lr.ph.i.i268.epil:                               ; preds = %.lr.ph.i.i268.epil, %.lr.ph.i.i268.epil.preheader
  %.012.i.i269.epil = phi double [ %i.xa, %.lr.ph.i.i268.epil ], [ %.012.i.i269.epil.init, %.lr.ph.i.i268.epil.preheader ]
  %.0710.i.i271.epil = phi ptr [ %i.wy, %.lr.ph.i.i268.epil ], [ %.0710.i.i271.epil.init, %.lr.ph.i.i268.epil.preheader ] ; 2 uses
  %epil.iter1664 = phi i64 [ %epil.iter1664.next, %.lr.ph.i.i268.epil ], [ 0, %.lr.ph.i.i268.epil.preheader ]
  %i.wy = getelementptr i8, ptr %.0710.i.i271.epil, i64 8
  %i.wz = load double, ptr %.0710.i.i271.epil, align 8, !tbaa !155 ; 2 uses
  %i.xa = call double @llvm.fmuladd.f64(double %i.wz, double %i.wz, double %.012.i.i269.epil) ; 2 uses
  %epil.iter1664.next = add i64 %epil.iter1664, 1 ; 2 uses
  %epil.iter1664.cmp.not = icmp eq i64 %epil.iter1664.next, %xtraiter1663
  br i1 %epil.iter1664.cmp.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit273, label %.lr.ph.i.i268.epil, !llvm.loop !586

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit273:    ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit273.loopexit.unr-lcssa, %.lr.ph.i.i268.epil, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit264
  %i.xb = phi double [ 0.000000e+00, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit264 ], [ %i.wk, %.lr.ph.i.i268.epil ], [ %i.wk, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit273.loopexit.unr-lcssa ]
  %.0.lcssa.i.i267 = phi double [ 0.000000e+00, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit264 ], [ %i.wx, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit273.loopexit.unr-lcssa ], [ %i.xa, %.lr.ph.i.i268.epil ]
  %i.xc = call noundef double @sqrt(double noundef %.0.lcssa.i.i267) #29
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 2440 ; 2 uses
  %i.xe = load i64, ptr %i.xd, align 8, !tbaa !164
  %.not184590 = icmp sgt i64 %i.xe, 0
  br i1 %.not184590, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit273
  %i.xf = fdiv double %i.xb, %i.xc
  %i.xg = getelementptr inbounds nuw i8, ptr %0, i64 2320 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.xi = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 2033 ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 2104
  %i.xm = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.xn = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.xo = fneg double %2                          ; 13 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 2432 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 2424
  %i.xu = getelementptr inbounds nuw i8, ptr %4, i64 21
  %broadcast.splatinsert1368 = insertelement <2 x double> poison, double %i.xo, i64 0
  %broadcast.splat1369 = shufflevector <2 x double> %broadcast.splatinsert1368, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %2, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.cc
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %6, %bb.cc ]
  %.0163596 = phi i32 [ 0, %.lr.ph ], [ %5, %bb.cc ] ; 2 uses
  %.0164595 = phi double [ %.0.lcssa.i, %.lr.ph ], [ %.1, %bb.cc ] ; 2 uses
  %.0165594 = phi double [ 0.000000e+00, %.lr.ph ], [ %.1166, %bb.cc ]
  %.0167593 = phi double [ %i.xf, %.lr.ph ], [ %i.btq, %bb.cc ] ; 2 uses
  %.0168592 = phi double [ %.015.lcssa.i, %.lr.ph ], [ %.015.lcssa.i484, %bb.cc ] ; 2 uses
  %.0174591 = phi double [ %.0.lcssa.i, %.lr.ph ], [ %.0.lcssa.i458, %bb.cc ]
  %i.xv = load double, ptr %i.xg, align 8, !tbaa !172
  %i.xw = fcmp olt double %.0168592, %i.xv
  br i1 %i.xw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.xx = fcmp uge double %.0167593, 5.000000e-01
  %. = sext i1 %i.xx to i32
  br label %.loopexit

bb.aa:                                            ; preds = %bb.y
  %.not179 = icmp eq i32 %.0163596, 0
  br i1 %.not179, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.xy = fcmp ogt double %.0168592, 1.000000e+00
  %i.xz = fcmp ogt double %.0167593, 1.000000e+00
  %or.cond = or i1 %i.xy, %i.xz
  br i1 %or.cond, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %5 = add nuw nsw i32 %.0163596, 1               ; 2 uses
  %i.ya = load ptr, ptr %i.gz, align 8, !tbaa !248 ; 5 uses
  %i.yb = ptrtoaddr ptr %i.ya to i64
  %i.yc = load i64, ptr %i.d, align 8, !tbaa !158 ; 23 uses
  %i.yd = load ptr, ptr %i.cy, align 8, !tbaa !252 ; 13 uses
  %i.ye = ptrtoaddr ptr %i.yd to i64
  %.not.i274 = icmp eq ptr %i.yd, null
  br i1 %.not.i274, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit284.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not15.i275 = icmp eq ptr %i.ya, null
  %i.yf = icmp sgt i64 %i.yc, 0                   ; 2 uses
  br i1 %.not15.i275, label %.preheader.i282, label %.preheader16.i276

.preheader16.i276:                                ; preds = %bb.ad
  br i1 %i.yf, label %.lr.ph.i277.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit284.thread

.lr.ph.i277.preheader:                            ; preds = %.preheader16.i276
  %min.iters.check1550 = icmp ult i64 %i.yc, 4
  %i.yg = sub i64 %i.yb, %i.ye
  %diff.check1552 = icmp ugt i64 %i.yg, -32
  %or.cond1574 = select i1 %min.iters.check1550, i1 true, i1 %diff.check1552
  br i1 %or.cond1574, label %.lr.ph.i277.preheader1609, label %vector.ph1553

vector.ph1553:                                    ; preds = %.lr.ph.i277.preheader
  %n.vec1554 = and i64 %i.yc, 9223372036854775804 ; 4 uses
  %i.yh = shl i64 %n.vec1554, 3                   ; 2 uses
  %i.yi = getelementptr i8, ptr %i.yd, i64 %i.yh
  %i.yj = getelementptr i8, ptr %i.ya, i64 %i.yh
  br label %vector.body1555

vector.body1555:                                  ; preds = %vector.body1555, %vector.ph1553
  %index1556 = phi i64 [ 0, %vector.ph1553 ], [ %index.next1561, %vector.body1555 ] ; 2 uses
  %i.yk = shl i64 %index1556, 3                   ; 2 uses
  %next.gep1557 = getelementptr i8, ptr %i.yd, i64 %i.yk ; 2 uses
  %next.gep1558 = getelementptr i8, ptr %i.ya, i64 %i.yk ; 2 uses
  %i.yl = getelementptr i8, ptr %next.gep1558, i64 16
  %wide.load1559 = load <2 x double>, ptr %next.gep1558, align 8, !tbaa !155
  %wide.load1560 = load <2 x double>, ptr %i.yl, align 8, !tbaa !155
  %i.ym = getelementptr i8, ptr %next.gep1557, i64 16
  store <2 x double> %wide.load1559, ptr %next.gep1557, align 8, !tbaa !155
  store <2 x double> %wide.load1560, ptr %i.ym, align 8, !tbaa !155
  %index.next1561 = add nuw i64 %index1556, 4     ; 2 uses
  %i.yn = icmp eq i64 %index.next1561, %n.vec1554
  br i1 %i.yn, label %middle.block1562, label %vector.body1555, !llvm.loop !587

middle.block1562:                                 ; preds = %vector.body1555
  %cmp.n1563 = icmp eq i64 %i.yc, %n.vec1554
  br i1 %cmp.n1563, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit284, label %.lr.ph.i277.preheader1609

.lr.ph.i277.preheader1609:                        ; preds = %.lr.ph.i277.preheader, %middle.block1562
  %.020.i278.ph = phi i64 [ 0, %.lr.ph.i277.preheader ], [ %n.vec1554, %middle.block1562 ] ; 4 uses
  %.01019.i279.ph = phi ptr [ %i.yd, %.lr.ph.i277.preheader ], [ %i.yi, %middle.block1562 ] ; 2 uses
  %.01218.i280.ph = phi ptr [ %i.ya, %.lr.ph.i277.preheader ], [ %i.yj, %middle.block1562 ] ; 2 uses
  %i.yo = sub nsw i64 %i.yc, %.020.i278.ph
  %xtraiter1670 = and i64 %i.yo, 7                ; 2 uses
  %lcmp.mod1671.not = icmp eq i64 %xtraiter1670, 0
  br i1 %lcmp.mod1671.not, label %.lr.ph.i277.prol.loopexit, label %.lr.ph.i277.prol

.lr.ph.i277.prol:                                 ; preds = %.lr.ph.i277.preheader1609, %.lr.ph.i277.prol
  %.020.i278.prol = phi i64 [ %i.ys, %.lr.ph.i277.prol ], [ %.020.i278.ph, %.lr.ph.i277.preheader1609 ]
  %.01019.i279.prol = phi ptr [ %i.yr, %.lr.ph.i277.prol ], [ %.01019.i279.ph, %.lr.ph.i277.preheader1609 ] ; 2 uses
  %.01218.i280.prol = phi ptr [ %i.yp, %.lr.ph.i277.prol ], [ %.01218.i280.ph, %.lr.ph.i277.preheader1609 ] ; 2 uses
  %prol.iter1672 = phi i64 [ %prol.iter1672.next, %.lr.ph.i277.prol ], [ 0, %.lr.ph.i277.preheader1609 ]
  %i.yp = getelementptr inbounds nuw i8, ptr %.01218.i280.prol, i64 8 ; 2 uses
  %i.yq = load double, ptr %.01218.i280.prol, align 8, !tbaa !155
  %i.yr = getelementptr inbounds nuw i8, ptr %.01019.i279.prol, i64 8 ; 2 uses
  store double %i.yq, ptr %.01019.i279.prol, align 8, !tbaa !155
  %i.ys = add nuw nsw i64 %.020.i278.prol, 1      ; 2 uses
  %prol.iter1672.next = add i64 %prol.iter1672, 1 ; 2 uses
  %prol.iter1672.cmp.not = icmp eq i64 %prol.iter1672.next, %xtraiter1670
  br i1 %prol.iter1672.cmp.not, label %.lr.ph.i277.prol.loopexit, label %.lr.ph.i277.prol, !llvm.loop !588

.lr.ph.i277.prol.loopexit:                        ; preds = %.lr.ph.i277.prol, %.lr.ph.i277.preheader1609
  %.020.i278.unr = phi i64 [ %.020.i278.ph, %.lr.ph.i277.preheader1609 ], [ %i.ys, %.lr.ph.i277.prol ]
  %.01019.i279.unr = phi ptr [ %.01019.i279.ph, %.lr.ph.i277.preheader1609 ], [ %i.yr, %.lr.ph.i277.prol ]
  %.01218.i280.unr = phi ptr [ %.01218.i280.ph, %.lr.ph.i277.preheader1609 ], [ %i.yp, %.lr.ph.i277.prol ]
  %i.yt = sub nsw i64 %.020.i278.ph, %i.yc
  %i.yu = icmp ugt i64 %i.yt, -8
  br i1 %i.yu, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit284, label %.lr.ph.i277

.preheader.i282:                                  ; preds = %bb.ad
  br i1 %i.yf, label %.lr.ph23.preheader.i283, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit284.thread

.lr.ph23.preheader.i283:                          ; preds = %.preheader.i282
  %i.yv = shl nuw i64 %i.yc, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.yd, i8 0, i64 %i.yv, i1 false), !tbaa !155
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit284

.lr.ph.i277:                                      ; preds = %.lr.ph.i277.prol.loopexit, %.lr.ph.i277
  %.020.i278 = phi i64 [ %i.zu, %.lr.ph.i277 ], [ %.020.i278.unr, %.lr.ph.i277.prol.loopexit ]
  %.01019.i279 = phi ptr [ %i.zt, %.lr.ph.i277 ], [ %.01019.i279.unr, %.lr.ph.i277.prol.loopexit ] ; 9 uses
  %.01218.i280 = phi ptr [ %i.zr, %.lr.ph.i277 ], [ %.01218.i280.unr, %.lr.ph.i277.prol.loopexit ] ; 9 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %.01218.i280, i64 8
  %i.yx = load double, ptr %.01218.i280, align 8, !tbaa !155
  %i.yy = getelementptr inbounds nuw i8, ptr %.01019.i279, i64 8
  store double %i.yx, ptr %.01019.i279, align 8, !tbaa !155
  %i.yz = getelementptr inbounds nuw i8, ptr %.01218.i280, i64 16
  %i.za = load double, ptr %i.yw, align 8, !tbaa !155
  %i.zb = getelementptr inbounds nuw i8, ptr %.01019.i279, i64 16
  store double %i.za, ptr %i.yy, align 8, !tbaa !155
  %i.zc = getelementptr inbounds nuw i8, ptr %.01218.i280, i64 24
  %i.zd = load double, ptr %i.yz, align 8, !tbaa !155
  %i.ze = getelementptr inbounds nuw i8, ptr %.01019.i279, i64 24
  store double %i.zd, ptr %i.zb, align 8, !tbaa !155
  %i.zf = getelementptr inbounds nuw i8, ptr %.01218.i280, i64 32
  %i.zg = load double, ptr %i.zc, align 8, !tbaa !155
  %i.zh = getelementptr inbounds nuw i8, ptr %.01019.i279, i64 32
  store double %i.zg, ptr %i.ze, align 8, !tbaa !155
  %i.zi = getelementptr inbounds nuw i8, ptr %.01218.i280, i64 40
  %i.zj = load double, ptr %i.zf, align 8, !tbaa !155
  %i.zk = getelementptr inbounds nuw i8, ptr %.01019.i279, i64 40
  store double %i.zj, ptr %i.zh, align 8, !tbaa !155
  %i.zl = getelementptr inbounds nuw i8, ptr %.01218.i280, i64 48
  %i.zm = load double, ptr %i.zi, align 8, !tbaa !155
  %i.zn = getelementptr inbounds nuw i8, ptr %.01019.i279, i64 48
  store double %i.zm, ptr %i.zk, align 8, !tbaa !155
  %i.zo = getelementptr inbounds nuw i8, ptr %.01218.i280, i64 56
  %i.zp = load double, ptr %i.zl, align 8, !tbaa !155
  %i.zq = getelementptr inbounds nuw i8, ptr %.01019.i279, i64 56
  store double %i.zp, ptr %i.zn, align 8, !tbaa !155
  %i.zr = getelementptr inbounds nuw i8, ptr %.01218.i280, i64 64
  %i.zs = load double, ptr %i.zo, align 8, !tbaa !155
  %i.zt = getelementptr inbounds nuw i8, ptr %.01019.i279, i64 64
  store double %i.zs, ptr %i.zq, align 8, !tbaa !155
  %i.zu = add nuw nsw i64 %.020.i278, 8           ; 2 uses
  %exitcond.not.i281.7 = icmp eq i64 %i.zu, %i.yc
  br i1 %exitcond.not.i281.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit284, label %.lr.ph.i277, !llvm.loop !589

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit284.thread: ; preds = %bb.ac, %.preheader16.i276, %.preheader.i282
  %i.zv = icmp sgt i64 %i.yc, 0
  br label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit292

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit284:    ; preds = %.lr.ph.i277.prol.loopexit, %.lr.ph.i277, %middle.block1562, %.lr.ph23.preheader.i283
  %i.zw = load ptr, ptr %i.gw, align 8, !tbaa !263 ; 7 uses
  %.not573 = icmp eq ptr %i.zw, null
  br i1 %.not573, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit292, label %.lr.ph.i287.preheader

.lr.ph.i287.preheader:                            ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit284
  %min.iters.check1526 = icmp ult i64 %i.yc, 4
  br i1 %min.iters.check1526, label %.lr.ph.i287.preheader1608, label %vector.memcheck1527

vector.memcheck1527:                              ; preds = %.lr.ph.i287.preheader
  %i.zx = shl i64 %i.yc, 3                        ; 2 uses
  %i.zy = getelementptr i8, ptr %i.yd, i64 %i.zx
  %i.zz = getelementptr i8, ptr %i.zw, i64 %i.zx
  %bound01528 = icmp ult ptr %i.yd, %i.zz
  %bound11529 = icmp ult ptr %i.zw, %i.zy
  %found.conflict1530 = and i1 %bound01528, %bound11529
  br i1 %found.conflict1530, label %.lr.ph.i287.preheader1608, label %vector.ph1531

vector.ph1531:                                    ; preds = %vector.memcheck1527
  %n.vec1532 = and i64 %i.yc, -4                  ; 4 uses
  %i.aaa = shl i64 %n.vec1532, 3                  ; 2 uses
  %i.aab = getelementptr i8, ptr %i.yd, i64 %i.aaa
  %i.aac = getelementptr i8, ptr %i.zw, i64 %i.aaa
  br label %vector.body1533

vector.body1533:                                  ; preds = %vector.body1533, %vector.ph1531
  %index1534 = phi i64 [ 0, %vector.ph1531 ], [ %index.next1541, %vector.body1533 ] ; 2 uses
  %i.aad = shl i64 %index1534, 3                  ; 2 uses
  %next.gep1535 = getelementptr i8, ptr %i.yd, i64 %i.aad ; 3 uses
  %next.gep1536 = getelementptr i8, ptr %i.zw, i64 %i.aad ; 2 uses
  %i.aae = getelementptr i8, ptr %next.gep1536, i64 16
  %wide.load1537 = load <2 x double>, ptr %next.gep1536, align 8, !tbaa !155, !alias.scope !711
  %wide.load1538 = load <2 x double>, ptr %i.aae, align 8, !tbaa !155, !alias.scope !711
  %i.aaf = getelementptr i8, ptr %next.gep1535, i64 16 ; 2 uses
  %wide.load1539 = load <2 x double>, ptr %next.gep1535, align 8, !tbaa !155, !alias.scope !712, !noalias !711
  %wide.load1540 = load <2 x double>, ptr %i.aaf, align 8, !tbaa !155, !alias.scope !712, !noalias !711
  %i.aag = fsub <2 x double> %wide.load1539, %wide.load1537
  %i.aah = fsub <2 x double> %wide.load1540, %wide.load1538
  store <2 x double> %i.aag, ptr %next.gep1535, align 8, !tbaa !155, !alias.scope !712, !noalias !711
  store <2 x double> %i.aah, ptr %i.aaf, align 8, !tbaa !155, !alias.scope !712, !noalias !711
  %index.next1541 = add nuw i64 %index1534, 4     ; 2 uses
  %i.aai = icmp eq i64 %index.next1541, %n.vec1532
  br i1 %i.aai, label %middle.block1542, label %vector.body1533, !llvm.loop !593

middle.block1542:                                 ; preds = %vector.body1533
  %cmp.n1543 = icmp eq i64 %i.yc, %n.vec1532
  br i1 %cmp.n1543, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit292, label %.lr.ph.i287.preheader1608

.lr.ph.i287.preheader1608:                        ; preds = %vector.memcheck1527, %.lr.ph.i287.preheader, %middle.block1542
  %.014.i288.ph = phi i64 [ 0, %vector.memcheck1527 ], [ 0, %.lr.ph.i287.preheader ], [ %n.vec1532, %middle.block1542 ] ; 3 uses
  %.0813.i289.ph = phi ptr [ %i.yd, %vector.memcheck1527 ], [ %i.yd, %.lr.ph.i287.preheader ], [ %i.aab, %middle.block1542 ] ; 2 uses
  %.0912.i290.ph = phi ptr [ %i.zw, %vector.memcheck1527 ], [ %i.zw, %.lr.ph.i287.preheader ], [ %i.aac, %middle.block1542 ] ; 2 uses
  %xtraiter1673 = and i64 %i.yc, 3                ; 2 uses
  %lcmp.mod1674.not = icmp eq i64 %xtraiter1673, 0
  br i1 %lcmp.mod1674.not, label %.lr.ph.i287.prol.loopexit, label %.lr.ph.i287.prol

.lr.ph.i287.prol:                                 ; preds = %.lr.ph.i287.preheader1608, %.lr.ph.i287.prol
  %.014.i288.prol = phi i64 [ %i.aao, %.lr.ph.i287.prol ], [ %.014.i288.ph, %.lr.ph.i287.preheader1608 ]
  %.0813.i289.prol = phi ptr [ %i.aal, %.lr.ph.i287.prol ], [ %.0813.i289.ph, %.lr.ph.i287.preheader1608 ] ; 3 uses
  %.0912.i290.prol = phi ptr [ %i.aaj, %.lr.ph.i287.prol ], [ %.0912.i290.ph, %.lr.ph.i287.preheader1608 ] ; 2 uses
  %prol.iter1675 = phi i64 [ %prol.iter1675.next, %.lr.ph.i287.prol ], [ 0, %.lr.ph.i287.preheader1608 ]
  %i.aaj = getelementptr inbounds nuw i8, ptr %.0912.i290.prol, i64 8 ; 2 uses
  %i.aak = load double, ptr %.0912.i290.prol, align 8, !tbaa !155
  %i.aal = getelementptr inbounds nuw i8, ptr %.0813.i289.prol, i64 8 ; 2 uses
  %i.aam = load double, ptr %.0813.i289.prol, align 8, !tbaa !155
  %i.aan = fsub double %i.aam, %i.aak
  store double %i.aan, ptr %.0813.i289.prol, align 8, !tbaa !155
  %i.aao = add nuw nsw i64 %.014.i288.prol, 1     ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK6casadi17Feasiblesqpmethod22feasibility_iterationsEPvd:bb.a
  %i.bqx = shl i64 %index991, 3                   ; 2 uses
  %next.gep992 = getelementptr i8, ptr %i.bng, i64 %i.bqx ; 3 uses
  %next.gep993 = getelementptr i8, ptr %i.bqp, i64 %i.bqx ; 2 uses
  %i.bqy = getelementptr i8, ptr %next.gep993, i64 16
  %wide.load994 = load <2 x double>, ptr %next.gep993, align 8, !tbaa !155, !alias.scope !737
  %wide.load995 = load <2 x double>, ptr %i.bqy, align 8, !tbaa !155, !alias.scope !737
  %i.bqz = getelementptr i8, ptr %next.gep992, i64 16 ; 2 uses
  %wide.load996 = load <2 x double>, ptr %next.gep992, align 8, !tbaa !155, !alias.scope !738, !noalias !737
  %wide.load997 = load <2 x double>, ptr %i.bqz, align 8, !tbaa !155, !alias.scope !738, !noalias !737
  %i.bra = fadd <2 x double> %wide.load994, %wide.load996
  %i.brb = fadd <2 x double> %wide.load995, %wide.load997
  store <2 x double> %i.bra, ptr %next.gep992, align 8, !tbaa !155, !alias.scope !738, !noalias !737
  store <2 x double> %i.brb, ptr %i.bqz, align 8, !tbaa !155, !alias.scope !738, !noalias !737
  %index.next998 = add nuw i64 %index991, 4       ; 2 uses
  %i.brc = icmp eq i64 %index.next998, %n.vec989
  br i1 %i.brc, label %middle.block999, label %vector.body990, !llvm.loop !697

middle.block999:                                  ; preds = %vector.body990
  %cmp.n1000 = icmp eq i64 %i.bmc, %n.vec989
  br i1 %cmp.n1000, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit525, label %.lr.ph.i520.preheader1583

.lr.ph.i520.preheader1583:                        ; preds = %vector.memcheck984, %.lr.ph.i520.preheader, %middle.block999
  %.014.i521.ph = phi i64 [ 0, %vector.memcheck984 ], [ 0, %.lr.ph.i520.preheader ], [ %n.vec989, %middle.block999 ] ; 3 uses
  %.0813.i522.ph = phi ptr [ %i.bng, %vector.memcheck984 ], [ %i.bng, %.lr.ph.i520.preheader ], [ %i.bqv, %middle.block999 ] ; 2 uses
  %.0912.i523.ph = phi ptr [ %i.bqp, %vector.memcheck984 ], [ %i.bqp, %.lr.ph.i520.preheader ], [ %i.bqw, %middle.block999 ] ; 2 uses
  %xtraiter1751 = and i64 %i.bmc, 3               ; 2 uses
  %lcmp.mod1752.not = icmp eq i64 %xtraiter1751, 0
  br i1 %lcmp.mod1752.not, label %.lr.ph.i520.prol.loopexit, label %.lr.ph.i520.prol

.lr.ph.i520.prol:                                 ; preds = %.lr.ph.i520.preheader1583, %.lr.ph.i520.prol
  %.014.i521.prol = phi i64 [ %i.bri, %.lr.ph.i520.prol ], [ %.014.i521.ph, %.lr.ph.i520.preheader1583 ]
  %.0813.i522.prol = phi ptr [ %i.brf, %.lr.ph.i520.prol ], [ %.0813.i522.ph, %.lr.ph.i520.preheader1583 ] ; 3 uses
  %.0912.i523.prol = phi ptr [ %i.brd, %.lr.ph.i520.prol ], [ %.0912.i523.ph, %.lr.ph.i520.preheader1583 ] ; 2 uses
  %prol.iter1753 = phi i64 [ %prol.iter1753.next, %.lr.ph.i520.prol ], [ 0, %.lr.ph.i520.preheader1583 ]
  %i.brd = getelementptr inbounds nuw i8, ptr %.0912.i523.prol, i64 8 ; 2 uses
  %i.bre = load double, ptr %.0912.i523.prol, align 8, !tbaa !155
  %i.brf = getelementptr inbounds nuw i8, ptr %.0813.i522.prol, i64 8 ; 2 uses
  %i.brg = load double, ptr %.0813.i522.prol, align 8, !tbaa !155
  %i.brh = fadd double %i.bre, %i.brg
  store double %i.brh, ptr %.0813.i522.prol, align 8, !tbaa !155
  %i.bri = add nuw nsw i64 %.014.i521.prol, 1     ; 2 uses
  %prol.iter1753.next = add i64 %prol.iter1753, 1 ; 2 uses
  %prol.iter1753.cmp.not = icmp eq i64 %prol.iter1753.next, %xtraiter1751
  br i1 %prol.iter1753.cmp.not, label %.lr.ph.i520.prol.loopexit, label %.lr.ph.i520.prol, !llvm.loop !698

.lr.ph.i520.prol.loopexit:                        ; preds = %.lr.ph.i520.prol, %.lr.ph.i520.preheader1583
  %.014.i521.unr = phi i64 [ %.014.i521.ph, %.lr.ph.i520.preheader1583 ], [ %i.bri, %.lr.ph.i520.prol ]
  %.0813.i522.unr = phi ptr [ %.0813.i522.ph, %.lr.ph.i520.preheader1583 ], [ %i.brf, %.lr.ph.i520.prol ]
  %.0912.i523.unr = phi ptr [ %.0912.i523.ph, %.lr.ph.i520.preheader1583 ], [ %i.brd, %.lr.ph.i520.prol ]
  %i.brj = sub i64 %.014.i521.ph, %i.bmc
  %i.brk = icmp ugt i64 %i.brj, -4
  br i1 %i.brk, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit525, label %.lr.ph.i520

.lr.ph.i520:                                      ; preds = %.lr.ph.i520.prol.loopexit, %.lr.ph.i520
  %.014.i521 = phi i64 [ %i.bsf, %.lr.ph.i520 ], [ %.014.i521.unr, %.lr.ph.i520.prol.loopexit ]
  %.0813.i522 = phi ptr [ %i.bsc, %.lr.ph.i520 ], [ %.0813.i522.unr, %.lr.ph.i520.prol.loopexit ] ; 6 uses
  %.0912.i523 = phi ptr [ %i.bsa, %.lr.ph.i520 ], [ %.0912.i523.unr, %.lr.ph.i520.prol.loopexit ] ; 5 uses
  %i.brl = getelementptr inbounds nuw i8, ptr %.0912.i523, i64 8
  %i.brm = load double, ptr %.0912.i523, align 8, !tbaa !155
  %i.brn = getelementptr inbounds nuw i8, ptr %.0813.i522, i64 8 ; 2 uses
  %i.bro = load double, ptr %.0813.i522, align 8, !tbaa !155
  %i.brp = fadd double %i.brm, %i.bro
  store double %i.brp, ptr %.0813.i522, align 8, !tbaa !155
  %i.brq = getelementptr inbounds nuw i8, ptr %.0912.i523, i64 16
  %i.brr = load double, ptr %i.brl, align 8, !tbaa !155
  %i.brs = getelementptr inbounds nuw i8, ptr %.0813.i522, i64 16 ; 2 uses
  %i.brt = load double, ptr %i.brn, align 8, !tbaa !155
  %i.bru = fadd double %i.brr, %i.brt
  store double %i.bru, ptr %i.brn, align 8, !tbaa !155
  %i.brv = getelementptr inbounds nuw i8, ptr %.0912.i523, i64 24
  %i.brw = load double, ptr %i.brq, align 8, !tbaa !155
  %i.brx = getelementptr inbounds nuw i8, ptr %.0813.i522, i64 24 ; 2 uses
  %i.bry = load double, ptr %i.brs, align 8, !tbaa !155
  %i.brz = fadd double %i.brw, %i.bry
  store double %i.brz, ptr %i.brs, align 8, !tbaa !155
  %i.bsa = getelementptr inbounds nuw i8, ptr %.0912.i523, i64 32
  %i.bsb = load double, ptr %i.brv, align 8, !tbaa !155
  %i.bsc = getelementptr inbounds nuw i8, ptr %.0813.i522, i64 32
  %i.bsd = load double, ptr %i.brx, align 8, !tbaa !155
  %i.bse = fadd double %i.bsb, %i.bsd
  store double %i.bse, ptr %i.brx, align 8, !tbaa !155
  %i.bsf = add nuw nsw i64 %.014.i521, 4          ; 2 uses
  %exitcond.not.i524.3 = icmp eq i64 %i.bsf, %i.bmc
  br i1 %exitcond.not.i524.3, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit525, label %.lr.ph.i520, !llvm.loop !699

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit525: ; preds = %.lr.ph.i520.prol.loopexit, %.lr.ph.i520, %middle.block999, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit517
  br i1 %i.bqo, label %.lr.ph.i.i527.preheader, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit539

.lr.ph.i.i527.preheader:                          ; preds = %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit525
  %i.bsg = add i64 %i.bmc, -1                     ; 2 uses
  %xtraiter1754 = and i64 %i.bmc, 3               ; 3 uses
  %i.bsh = icmp ult i64 %i.bsg, 3
  br i1 %i.bsh, label %.lr.ph.i.i527.epil.preheader, label %.lr.ph.i.i527.preheader.new

.lr.ph.i.i527.preheader.new:                      ; preds = %.lr.ph.i.i527.preheader
  %unroll_iter1759 = and i64 %i.bmc, -4
  br label %.lr.ph.i.i527

.lr.ph.i.i527:                                    ; preds = %.lr.ph.i.i527, %.lr.ph.i.i527.preheader.new
  %.012.i.i528 = phi double [ 0.000000e+00, %.lr.ph.i.i527.preheader.new ], [ %i.bst, %.lr.ph.i.i527 ]
  %.0710.i.i530 = phi ptr [ %i.bng, %.lr.ph.i.i527.preheader.new ], [ %i.bsr, %.lr.ph.i.i527 ] ; 5 uses
  %niter1760 = phi i64 [ 0, %.lr.ph.i.i527.preheader.new ], [ %niter1760.next.3, %.lr.ph.i.i527 ]
  %i.bsi = getelementptr i8, ptr %.0710.i.i530, i64 8
  %i.bsj = load double, ptr %.0710.i.i530, align 8, !tbaa !155 ; 2 uses
  %i.bsk = call double @llvm.fmuladd.f64(double %i.bsj, double %i.bsj, double %.012.i.i528)
  %i.bsl = getelementptr i8, ptr %.0710.i.i530, i64 16
  %i.bsm = load double, ptr %i.bsi, align 8, !tbaa !155 ; 2 uses
  %i.bsn = call double @llvm.fmuladd.f64(double %i.bsm, double %i.bsm, double %i.bsk)
  %i.bso = getelementptr i8, ptr %.0710.i.i530, i64 24
  %i.bsp = load double, ptr %i.bsl, align 8, !tbaa !155 ; 2 uses
  %i.bsq = call double @llvm.fmuladd.f64(double %i.bsp, double %i.bsp, double %i.bsn)
  %i.bsr = getelementptr i8, ptr %.0710.i.i530, i64 32 ; 2 uses
  %i.bss = load double, ptr %i.bso, align 8, !tbaa !155 ; 2 uses
  %i.bst = call double @llvm.fmuladd.f64(double %i.bss, double %i.bss, double %i.bsq) ; 3 uses
  %niter1760.next.3 = add i64 %niter1760, 4       ; 2 uses
  %niter1760.ncmp.3 = icmp eq i64 %niter1760.next.3, %unroll_iter1759
  br i1 %niter1760.ncmp.3, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit532.unr-lcssa, label %.lr.ph.i.i527, !llvm.loop !4

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit532.unr-lcssa: ; preds = %.lr.ph.i.i527
  %lcmp.mod1756.not = icmp eq i64 %xtraiter1754, 0
  br i1 %lcmp.mod1756.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit532, label %.lr.ph.i.i527.epil.preheader

.lr.ph.i.i527.epil.preheader:                     ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit532.unr-lcssa, %.lr.ph.i.i527.preheader
  %.012.i.i528.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i527.preheader ], [ %i.bst, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit532.unr-lcssa ]
  %.0710.i.i530.epil.init = phi ptr [ %i.bng, %.lr.ph.i.i527.preheader ], [ %i.bsr, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit532.unr-lcssa ]
  %lcmp.mod1758 = icmp ne i64 %xtraiter1754, 0
  call void @llvm.assume(i1 %lcmp.mod1758)
  br label %.lr.ph.i.i527.epil

.lr.ph.i.i527.epil:                               ; preds = %.lr.ph.i.i527.epil, %.lr.ph.i.i527.epil.preheader
  %.012.i.i528.epil = phi double [ %i.bsw, %.lr.ph.i.i527.epil ], [ %.012.i.i528.epil.init, %.lr.ph.i.i527.epil.preheader ]
  %.0710.i.i530.epil = phi ptr [ %i.bsu, %.lr.ph.i.i527.epil ], [ %.0710.i.i530.epil.init, %.lr.ph.i.i527.epil.preheader ] ; 2 uses
  %epil.iter1755 = phi i64 [ %epil.iter1755.next, %.lr.ph.i.i527.epil ], [ 0, %.lr.ph.i.i527.epil.preheader ]
  %i.bsu = getelementptr i8, ptr %.0710.i.i530.epil, i64 8
  %i.bsv = load double, ptr %.0710.i.i530.epil, align 8, !tbaa !155 ; 2 uses
  %i.bsw = call double @llvm.fmuladd.f64(double %i.bsv, double %i.bsv, double %.012.i.i528.epil) ; 2 uses
  %epil.iter1755.next = add i64 %epil.iter1755, 1 ; 2 uses
  %epil.iter1755.cmp.not = icmp eq i64 %epil.iter1755.next, %xtraiter1754
  br i1 %epil.iter1755.cmp.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit532, label %.lr.ph.i.i527.epil, !llvm.loop !700

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit532:    ; preds = %.lr.ph.i.i527.epil, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit532.unr-lcssa
  %.lcssa1610 = phi double [ %i.bst, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit532.unr-lcssa ], [ %i.bsw, %.lr.ph.i.i527.epil ]
  %i.bsx = call noundef double @sqrt(double noundef %.lcssa1610) #29 ; 2 uses
  %xtraiter1761 = and i64 %i.bmc, 3               ; 3 uses
  %i.bsy = icmp ult i64 %i.bsg, 3
  br i1 %i.bsy, label %.lr.ph.i.i534.epil.preheader, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit532.new

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit532.new: ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit532
  %unroll_iter1766 = and i64 %i.bmc, -4
  br label %.lr.ph.i.i534

.lr.ph.i.i534:                                    ; preds = %.lr.ph.i.i534, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit532.new
  %.012.i.i535 = phi double [ 0.000000e+00, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit532.new ], [ %i.btk, %.lr.ph.i.i534 ]
  %.0710.i.i537 = phi ptr [ %i.bne, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit532.new ], [ %i.bti, %.lr.ph.i.i534 ] ; 5 uses
  %niter1767 = phi i64 [ 0, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit532.new ], [ %niter1767.next.3, %.lr.ph.i.i534 ]
  %i.bsz = getelementptr i8, ptr %.0710.i.i537, i64 8
  %i.bta = load double, ptr %.0710.i.i537, align 8, !tbaa !155 ; 2 uses
  %i.btb = call double @llvm.fmuladd.f64(double %i.bta, double %i.bta, double %.012.i.i535)
  %i.btc = getelementptr i8, ptr %.0710.i.i537, i64 16
  %i.btd = load double, ptr %i.bsz, align 8, !tbaa !155 ; 2 uses
  %i.bte = call double @llvm.fmuladd.f64(double %i.btd, double %i.btd, double %i.btb)
  %i.btf = getelementptr i8, ptr %.0710.i.i537, i64 24
  %i.btg = load double, ptr %i.btc, align 8, !tbaa !155 ; 2 uses
  %i.bth = call double @llvm.fmuladd.f64(double %i.btg, double %i.btg, double %i.bte)
  %i.bti = getelementptr i8, ptr %.0710.i.i537, i64 32 ; 2 uses
  %i.btj = load double, ptr %i.btf, align 8, !tbaa !155 ; 2 uses
  %i.btk = call double @llvm.fmuladd.f64(double %i.btj, double %i.btj, double %i.bth) ; 3 uses
  %niter1767.next.3 = add i64 %niter1767, 4       ; 2 uses
  %niter1767.ncmp.3 = icmp eq i64 %niter1767.next.3, %unroll_iter1766
  br i1 %niter1767.ncmp.3, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit539.loopexit.unr-lcssa, label %.lr.ph.i.i534, !llvm.loop !4

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit539.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i534
  %lcmp.mod1763.not = icmp eq i64 %xtraiter1761, 0
  br i1 %lcmp.mod1763.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit539, label %.lr.ph.i.i534.epil.preheader

.lr.ph.i.i534.epil.preheader:                     ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit539.loopexit.unr-lcssa, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit532
  %.012.i.i535.epil.init = phi double [ 0.000000e+00, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit532 ], [ %i.btk, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit539.loopexit.unr-lcssa ]
  %.0710.i.i537.epil.init = phi ptr [ %i.bne, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit532 ], [ %i.bti, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit539.loopexit.unr-lcssa ]
  %lcmp.mod1765 = icmp ne i64 %xtraiter1761, 0
  call void @llvm.assume(i1 %lcmp.mod1765)
  br label %.lr.ph.i.i534.epil

.lr.ph.i.i534.epil:                               ; preds = %.lr.ph.i.i534.epil, %.lr.ph.i.i534.epil.preheader
  %.012.i.i535.epil = phi double [ %i.btn, %.lr.ph.i.i534.epil ], [ %.012.i.i535.epil.init, %.lr.ph.i.i534.epil.preheader ]
  %.0710.i.i537.epil = phi ptr [ %i.btl, %.lr.ph.i.i534.epil ], [ %.0710.i.i537.epil.init, %.lr.ph.i.i534.epil.preheader ] ; 2 uses
  %epil.iter1762 = phi i64 [ %epil.iter1762.next, %.lr.ph.i.i534.epil ], [ 0, %.lr.ph.i.i534.epil.preheader ]
  %i.btl = getelementptr i8, ptr %.0710.i.i537.epil, i64 8
  %i.btm = load double, ptr %.0710.i.i537.epil, align 8, !tbaa !155 ; 2 uses
  %i.btn = call double @llvm.fmuladd.f64(double %i.btm, double %i.btm, double %.012.i.i535.epil) ; 2 uses
  %epil.iter1762.next = add i64 %epil.iter1762, 1 ; 2 uses
  %epil.iter1762.cmp.not = icmp eq i64 %epil.iter1762.next, %xtraiter1761
  br i1 %epil.iter1762.cmp.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit539, label %.lr.ph.i.i534.epil, !llvm.loop !701

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit539:    ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit539.loopexit.unr-lcssa, %.lr.ph.i.i534.epil, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit525
  %i.bto = phi double [ 0.000000e+00, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit525 ], [ %i.bsx, %.lr.ph.i.i534.epil ], [ %i.bsx, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit539.loopexit.unr-lcssa ]
  %.0.lcssa.i.i533 = phi double [ 0.000000e+00, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit525 ], [ %i.btk, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit539.loopexit.unr-lcssa ], [ %i.btn, %.lr.ph.i.i534.epil ]
  %i.btp = call noundef double @sqrt(double noundef %.0.lcssa.i.i533) #29
  %i.btq = fdiv double %i.bto, %i.btp             ; 4 uses
  call void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.143, double noundef %i.bnd, ptr noundef nonnull @.str.144, double noundef %.015.lcssa.i484, ptr noundef nonnull @.str.145, double noundef %i.btq)
  %i.btr = fadd double %.0165594, %i.btq          ; 2 uses
  %6 = zext nneg i32 %5 to i64                    ; 3 uses
  %i.bts = load i64, ptr %i.xs, align 8, !tbaa !163
  %i.btt = srem i64 %6, %i.bts
  %i.btu = icmp eq i64 %i.btt, 0
  br i1 %i.btu, label %bb.bz, label %bb.cc

bb.bz:                                            ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit539
  %i.btv = fdiv double %.0.lcssa.i458, %.0164595  ; 2 uses
  call void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.146, double noundef %i.btv)
  %i.btw = load double, ptr %i.xg, align 8, !tbaa !172
  %i.btx = fcmp olt double %.015.lcssa.i484, %i.btw
  %i.bty = fcmp olt double %i.btq, 5.000000e-01
  %or.cond3 = and i1 %i.bty, %i.btx
  br i1 %or.cond3, label %.loopexit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.btz = load double, ptr %i.xt, align 8, !tbaa !162
  %i.bua = fcmp ogt double %i.btv, %i.btz
  br i1 %i.bua, label %.loopexit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.bub = load i64, ptr %i.xs, align 8, !tbaa !163
  %i.buc = sitofp i64 %i.bub to double
  %i.bud = fdiv double %i.btr, %i.buc
  %i.bue = fcmp ogt double %i.bud, 5.000000e-01
  br i1 %i.bue, label %.loopexit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit539
  %.1166 = phi double [ %i.btr, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit539 ], [ 0.000000e+00, %bb.cb ]
  %.1 = phi double [ %.0164595, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit539 ], [ %.0.lcssa.i458, %bb.cb ]
  %i.buf = load i64, ptr %i.xd, align 8, !tbaa !164
  %.not184 = icmp sgt i64 %i.buf, %6
  br i1 %.not184, label %bb.y, label %.loopexit, !llvm.loop !702

.loopexit:                                        ; preds = %bb.cc, %bb.ab, %bb.bz, %bb.cb, %bb.ca, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit273, %bb.z
  %spec.select = phi i32 [ %., %bb.z ], [ -1, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit273 ], [ -1, %bb.cb ], [ 0, %bb.bz ], [ -1, %bb.cc ], [ -1, %bb.ab ], [ -1, %bb.ca ]
  ret i32 %spec.select

bb.cd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233
  %.pn180.pn = phi { ptr, i32 } [ %i.blx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483 ], [ %i.pj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233 ]
  resume { ptr, i32 } %.pn180.pn
}

declare noundef i32 @_ZNK6casadi14OracleFunction13calc_functionEPNS_12OracleMemoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKPKdi(ptr noundef nonnull align 8 dereferenceable(1529), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZNK6casadi17Feasiblesqpmethod5solveEPv(ptr noundef nonnull align 8 dereferenceable(2448) %0, ptr noundef initializes((640, 644)) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.casadi::ScopedTiming", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.casadi::ScopedTiming", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.casadi::ScopedTiming", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.casadi::ScopedTiming", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.casadi::ScopedTiming", align 8 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.casadi::ScopedTiming", align 8 ; 6 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 10 uses
  store i32 0, ptr %i.c, align 8, !tbaa !260
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2368
  %i.e = load double, ptr %i.d, align 8, !tbaa !173 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2400
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !213  ; 6 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1656 ; 16 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !158  ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !253  ; 7 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2408
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !213
  %i.p = icmp eq ptr %i.g, %i.o
  %.not15.i817 = icmp eq ptr %i.g, null
  %.not15.i = or i1 %.not15.i817, %i.p
  %i.q = icmp sgt i64 %i.j, 0                     ; 2 uses
  br i1 %.not15.i, label %.preheader.i, label %.preheader16.i

.preheader16.i:                                   ; preds = %bb.b
  br i1 %i.q, label %.lr.ph.i.preheader, label %._crit_edge.i.i

.lr.ph.i.preheader:                               ; preds = %.preheader16.i
  %min.iters.check = icmp ult i64 %i.j, 8
  %i.r = sub i64 %i.h, %i.m
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader1520, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.j, 9223372036854775804      ; 4 uses
  %i.s = shl i64 %n.vec, 3                        ; 2 uses
  %i.t = getelementptr i8, ptr %i.l, i64 %i.s
  %i.u = getelementptr i8, ptr %i.g, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.l, i64 %i.v ; 2 uses
  %next.gep1221 = getelementptr i8, ptr %i.g, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep1221, i64 16
  %wide.load = load <2 x double>, ptr %next.gep1221, align 8, !tbaa !155
  %wide.load1222 = load <2 x double>, ptr %i.w, align 8, !tbaa !155
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !155
  store <2 x double> %wide.load1222, ptr %i.x, align 8, !tbaa !155
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !739

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.lr.ph, label %.lr.ph.i.preheader1520

.lr.ph.i.preheader1520:                           ; preds = %.lr.ph.i.preheader, %middle.block
  %.020.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.01019.i.ph = phi ptr [ %i.l, %.lr.ph.i.preheader ], [ %i.t, %middle.block ] ; 2 uses
  %.01218.i.ph = phi ptr [ %i.g, %.lr.ph.i.preheader ], [ %i.u, %middle.block ] ; 2 uses
  %i.z = sub nsw i64 %i.j, %.020.i.ph
  %xtraiter = and i64 %i.z, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader1520, %.lr.ph.i.prol
  %.020.i.prol = phi i64 [ %i.ad, %.lr.ph.i.prol ], [ %.020.i.ph, %.lr.ph.i.preheader1520 ]
  %.01019.i.prol = phi ptr [ %i.ac, %.lr.ph.i.prol ], [ %.01019.i.ph, %.lr.ph.i.preheader1520 ] ; 2 uses
  %.01218.i.prol = phi ptr [ %i.aa, %.lr.ph.i.prol ], [ %.01218.i.ph, %.lr.ph.i.preheader1520 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader1520 ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.01218.i.prol, i64 8 ; 2 uses
  %i.ab = load double, ptr %.01218.i.prol, align 8, !tbaa !155
  %i.ac = getelementptr inbounds nuw i8, ptr %.01019.i.prol, i64 8 ; 2 uses
  store double %i.ab, ptr %.01019.i.prol, align 8, !tbaa !155
  %i.ad = add nuw nsw i64 %.020.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !740

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader1520
  %.020.i.unr = phi i64 [ %.020.i.ph, %.lr.ph.i.preheader1520 ], [ %i.ad, %.lr.ph.i.prol ]
  %.01019.i.unr = phi ptr [ %.01019.i.ph, %.lr.ph.i.preheader1520 ], [ %i.ac, %.lr.ph.i.prol ]
  %.01218.i.unr = phi ptr [ %.01218.i.ph, %.lr.ph.i.preheader1520 ], [ %i.aa, %.lr.ph.i.prol ]
  %i.ae = sub nsw i64 %.020.i.ph, %i.j
  %i.af = icmp ugt i64 %i.ae, -8
  br i1 %i.af, label %.lr.ph, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.b
  br i1 %i.q, label %.lr.ph23.preheader.i, label %._crit_edge.i.i

.lr.ph23.preheader.i:                             ; preds = %.preheader.i
  %i.ag = shl nuw i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.ag, i1 false), !tbaa !155
  br label %.lr.ph

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.020.i = phi i64 [ %i.bf, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01019.i = phi ptr [ %i.be, %.lr.ph.i ], [ %.01019.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.01218.i = phi ptr [ %i.bc, %.lr.ph.i ], [ %.01218.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.01218.i, i64 8
  %i.ai = load double, ptr %.01218.i, align 8, !tbaa !155
  %i.aj = getelementptr inbounds nuw i8, ptr %.01019.i, i64 8
  store double %i.ai, ptr %.01019.i, align 8, !tbaa !155
  %i.ak = getelementptr inbounds nuw i8, ptr %.01218.i, i64 16
  %i.al = load double, ptr %i.ah, align 8, !tbaa !155
  %i.am = getelementptr inbounds nuw i8, ptr %.01019.i, i64 16
  store double %i.al, ptr %i.aj, align 8, !tbaa !155
  %i.an = getelementptr inbounds nuw i8, ptr %.01218.i, i64 24
  %i.ao = load double, ptr %i.ak, align 8, !tbaa !155
  %i.ap = getelementptr inbounds nuw i8, ptr %.01019.i, i64 24
  store double %i.ao, ptr %i.am, align 8, !tbaa !155
  %i.aq = getelementptr inbounds nuw i8, ptr %.01218.i, i64 32
  %i.ar = load double, ptr %i.an, align 8, !tbaa !155
  %i.as = getelementptr inbounds nuw i8, ptr %.01019.i, i64 32
  store double %i.ar, ptr %i.ap, align 8, !tbaa !155
  %i.at = getelementptr inbounds nuw i8, ptr %.01218.i, i64 40
  %i.au = load double, ptr %i.aq, align 8, !tbaa !155
  %i.av = getelementptr inbounds nuw i8, ptr %.01019.i, i64 40
  store double %i.au, ptr %i.as, align 8, !tbaa !155
  %i.aw = getelementptr inbounds nuw i8, ptr %.01218.i, i64 48
  %i.ax = load double, ptr %i.at, align 8, !tbaa !155
  %i.ay = getelementptr inbounds nuw i8, ptr %.01019.i, i64 48
  store double %i.ax, ptr %i.av, align 8, !tbaa !155
  %i.az = getelementptr inbounds nuw i8, ptr %.01218.i, i64 56
  %i.ba = load double, ptr %i.aw, align 8, !tbaa !155
  %i.bb = getelementptr inbounds nuw i8, ptr %.01019.i, i64 56
  store double %i.ba, ptr %i.ay, align 8, !tbaa !155
  %i.bc = getelementptr inbounds nuw i8, ptr %.01218.i, i64 64
  %i.bd = load double, ptr %i.az, align 8, !tbaa !155
  %i.be = getelementptr inbounds nuw i8, ptr %.01019.i, i64 64
  store double %i.bd, ptr %i.bb, align 8, !tbaa !155
  %i.bf = add nuw nsw i64 %.020.i, 8              ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.bf, %i.j
  br i1 %exitcond.not.i.7, label %.lr.ph, label %.lr.ph.i, !llvm.loop !741

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit:       ; preds = %bb.a
  %i.bg = icmp sgt i64 %i.j, 0
  br i1 %i.bg, label %.lr.ph, label %._crit_edge.i.i

.lr.ph:                                           ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %.lr.ph23.preheader.i, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !255
  br label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c, %.preheader.i, %.preheader16.i, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit
  %i.bj = phi i64 [ %i.j, %.preheader.i ], [ %i.j, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit ], [ %i.j, %.preheader16.i ], [ %i.bv, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store double 1.000000e+00, ptr %i.b, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.bk, ptr %2, align 8, !tbaa !25
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.bl, align 8, !tbaa !31
  store i8 0, ptr %i.bk, align 8, !tbaa !30
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 12 uses
end_hunk_1
