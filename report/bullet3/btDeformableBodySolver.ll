inline.NumInlined: 1163
inline.NumDeleted: 279
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 123
begin_hunk_0_@_ZN22btDeformableBodySolver15applyTransformsEf:bb.a
  br i1 %niter381.ncmp.3, label %.lr.ph.i92.i.preheader.unr-lcssa, label %.lr.ph.i83.i, !llvm.loop !436

.lr.ph.i92.i.preheader.unr-lcssa:                 ; preds = %.lr.ph.i83.i
  %lcmp.mod377.not = icmp eq i64 %xtraiter375, 0
  br i1 %lcmp.mod377.not, label %.lr.ph.i92.i.preheader, label %.lr.ph.i83.i.epil.preheader

.lr.ph.i83.i.epil.preheader:                      ; preds = %.lr.ph.i92.i.preheader.unr-lcssa, %.lr.ph.i83.i.preheader
  %indvars.iv.i84.i.epil.init = phi i64 [ 0, %.lr.ph.i83.i.preheader ], [ %indvars.iv.next.i86.i.3, %.lr.ph.i92.i.preheader.unr-lcssa ]
  %.089.i85.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i83.i.preheader ], [ %i.tu, %.lr.ph.i92.i.preheader.unr-lcssa ]
  %lcmp.mod379 = icmp ne i64 %xtraiter375, 0
  call void @llvm.assume(i1 %lcmp.mod379)
  br label %.lr.ph.i83.i.epil

.lr.ph.i83.i.epil:                                ; preds = %.lr.ph.i83.i.epil, %.lr.ph.i83.i.epil.preheader
  %indvars.iv.i84.i.epil = phi i64 [ %indvars.iv.next.i86.i.epil, %.lr.ph.i83.i.epil ], [ %indvars.iv.i84.i.epil.init, %.lr.ph.i83.i.epil.preheader ] ; 3 uses
  %.089.i85.i.epil = phi float [ %i.tz, %.lr.ph.i83.i.epil ], [ %.089.i85.i.epil.init, %.lr.ph.i83.i.epil.preheader ]
  %epil.iter376 = phi i64 [ %epil.iter376.next, %.lr.ph.i83.i.epil ], [ 0, %.lr.ph.i83.i.epil.preheader ]
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %indvars.iv.i84.i.epil
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !68, !noalias !433
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %indvars.iv.i84.i.epil
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !68, !noalias !433
  %i.tz = call float @llvm.fmuladd.f32(float %i.tw, float %i.ty, float %.089.i85.i.epil) ; 2 uses
  %indvars.iv.next.i86.i.epil = add nuw nsw i64 %indvars.iv.i84.i.epil, 1
  %epil.iter376.next = add i64 %epil.iter376, 1   ; 2 uses
  %epil.iter376.cmp.not = icmp eq i64 %epil.iter376.next, %xtraiter375
  br i1 %epil.iter376.cmp.not, label %.lr.ph.i92.i.preheader, label %.lr.ph.i83.i.epil, !llvm.loop !444

.lr.ph.i92.i.preheader:                           ; preds = %.lr.ph.i83.i.epil, %.lr.ph.i92.i.preheader.unr-lcssa
  %.lcssa329 = phi float [ %i.tu, %.lr.ph.i92.i.preheader.unr-lcssa ], [ %i.tz, %.lr.ph.i83.i.epil ]
  %xtraiter382 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.ua = icmp ult i64 %i.lz, 3
  br i1 %i.ua, label %.lr.ph.i92.i.epil.preheader, label %.lr.ph.i92.i.preheader.new

.lr.ph.i92.i.preheader.new:                       ; preds = %.lr.ph.i92.i.preheader
  %unroll_iter387 = and i64 %wide.trip.count.i.i, 2147483644
  br label %.lr.ph.i92.i

.lr.ph.i92.i:                                     ; preds = %.lr.ph.i92.i, %.lr.ph.i92.i.preheader.new
  %indvars.iv.i93.i = phi i64 [ 0, %.lr.ph.i92.i.preheader.new ], [ %indvars.iv.next.i95.i.3, %.lr.ph.i92.i ] ; 6 uses
  %.089.i94.i = phi float [ 0.000000e+00, %.lr.ph.i92.i.preheader.new ], [ %i.uu, %.lr.ph.i92.i ]
  %niter388 = phi i64 [ 0, %.lr.ph.i92.i.preheader.new ], [ %niter388.next.3, %.lr.ph.i92.i ]
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %indvars.iv.i93.i
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !68, !noalias !433
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %indvars.iv.i93.i
  %i.ue = load float, ptr %i.ud, align 4, !tbaa !68, !noalias !433
  %i.uf = call float @llvm.fmuladd.f32(float %i.uc, float %i.ue, float %.089.i94.i)
  %indvars.iv.next.i95.i = or disjoint i64 %indvars.iv.i93.i, 1 ; 2 uses
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %indvars.iv.next.i95.i
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !68, !noalias !433
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %indvars.iv.next.i95.i
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !68, !noalias !433
  %i.uk = call float @llvm.fmuladd.f32(float %i.uh, float %i.uj, float %i.uf)
  %indvars.iv.next.i95.i.1 = or disjoint i64 %indvars.iv.i93.i, 2 ; 2 uses
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %indvars.iv.next.i95.i.1
  %i.um = load float, ptr %i.ul, align 4, !tbaa !68, !noalias !433
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %indvars.iv.next.i95.i.1
  %i.uo = load float, ptr %i.un, align 4, !tbaa !68, !noalias !433
  %i.up = call float @llvm.fmuladd.f32(float %i.um, float %i.uo, float %i.uk)
  %indvars.iv.next.i95.i.2 = or disjoint i64 %indvars.iv.i93.i, 3 ; 2 uses
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %indvars.iv.next.i95.i.2
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !68, !noalias !433
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %indvars.iv.next.i95.i.2
  %i.ut = load float, ptr %i.us, align 4, !tbaa !68, !noalias !433
  %i.uu = call float @llvm.fmuladd.f32(float %i.ur, float %i.ut, float %i.up) ; 3 uses
  %indvars.iv.next.i95.i.3 = add nuw nsw i64 %indvars.iv.i93.i, 4 ; 2 uses
  %niter388.next.3 = add i64 %niter388, 4         ; 2 uses
  %niter388.ncmp.3 = icmp eq i64 %niter388.next.3, %unroll_iter387
  br i1 %niter388.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i92.i, !llvm.loop !436

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i92.i
  %lcmp.mod384.not = icmp eq i64 %xtraiter382, 0
  br i1 %lcmp.mod384.not, label %.loopexit.loopexit, label %.lr.ph.i92.i.epil.preheader

.lr.ph.i92.i.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i92.i.preheader
  %indvars.iv.i93.i.epil.init = phi i64 [ 0, %.lr.ph.i92.i.preheader ], [ %indvars.iv.next.i95.i.3, %.loopexit.loopexit.unr-lcssa ]
  %.089.i94.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i92.i.preheader ], [ %i.uu, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod386 = icmp ne i64 %xtraiter382, 0
  call void @llvm.assume(i1 %lcmp.mod386)
  br label %.lr.ph.i92.i.epil

.lr.ph.i92.i.epil:                                ; preds = %.lr.ph.i92.i.epil, %.lr.ph.i92.i.epil.preheader
  %indvars.iv.i93.i.epil = phi i64 [ %indvars.iv.next.i95.i.epil, %.lr.ph.i92.i.epil ], [ %indvars.iv.i93.i.epil.init, %.lr.ph.i92.i.epil.preheader ] ; 3 uses
  %.089.i94.i.epil = phi float [ %i.uz, %.lr.ph.i92.i.epil ], [ %.089.i94.i.epil.init, %.lr.ph.i92.i.epil.preheader ]
  %epil.iter383 = phi i64 [ %epil.iter383.next, %.lr.ph.i92.i.epil ], [ 0, %.lr.ph.i92.i.epil.preheader ]
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %indvars.iv.i93.i.epil
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !68, !noalias !433
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %indvars.iv.i93.i.epil
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !68, !noalias !433
  %i.uz = call float @llvm.fmuladd.f32(float %i.uw, float %i.uy, float %.089.i94.i.epil) ; 2 uses
  %indvars.iv.next.i95.i.epil = add nuw nsw i64 %indvars.iv.i93.i.epil, 1
  %epil.iter383.next = add i64 %epil.iter383, 1   ; 2 uses
  %epil.iter383.cmp.not = icmp eq i64 %epil.iter383.next, %xtraiter382
  br i1 %epil.iter383.cmp.not, label %.loopexit.loopexit, label %.lr.ph.i92.i.epil, !llvm.loop !445

.loopexit.loopexit:                               ; preds = %.lr.ph.i92.i.epil, %.loopexit.loopexit.unr-lcssa
  %.lcssa330 = phi float [ %i.uu, %.loopexit.loopexit.unr-lcssa ], [ %i.uz, %.lr.ph.i92.i.epil ]
  %i.va = insertelement <4 x float> poison, float %.lcssa326, i64 0
  %i.vb = insertelement <4 x float> %i.va, float %.lcssa327, i64 1
  %i.vc = insertelement <4 x float> %i.vb, float %.lcssa323, i64 2
  %i.vd = insertelement <4 x float> %i.vc, float %.lcssa324, i64 3
  %i.ve = fadd <4 x float> %i.vd, <float -0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.vf = fadd float %.lcssa325, 0.000000e+00
  %i.vg = fadd float %.lcssa328, 0.000000e+00
  %i.vh = fadd float %.lcssa329, 0.000000e+00
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.s
  %.08.lcssa.i80220.i = phi float [ 0.000000e+00, %bb.s ], [ %i.vh, %.loopexit.loopexit ] ; 2 uses
  %.08.lcssa.i44142149173186216.i = phi float [ 0.000000e+00, %bb.s ], [ %i.vf, %.loopexit.loopexit ] ; 4 uses
  %.08.lcssa.i115119128138153169190212.i = phi float [ 0.000000e+00, %bb.s ], [ %.lcssa, %.loopexit.loopexit ]
  %.08.lcssa.i71196206.i = phi float [ 0.000000e+00, %bb.s ], [ %i.vg, %.loopexit.loopexit ] ; 3 uses
  %.08.lcssa.i89.i = phi float [ 0.000000e+00, %bb.s ], [ %.lcssa330, %.loopexit.loopexit ]
  %i.vi = phi <4 x float> [ zeroinitializer, %bb.s ], [ %i.ve, %.loopexit.loopexit ] ; 5 uses
  %i.vj = fadd float %i.lw, %.08.lcssa.i115119128138153169190212.i ; 5 uses
  %i.vk = fadd float %i.lw, %.08.lcssa.i89.i      ; 2 uses
  %i.vl = extractelement <4 x float> %i.vi, i64 1 ; 2 uses
  %i.vm = fneg float %i.vl
  %i.vn = fmul float %i.vj, %i.vm
  %i.vo = extractelement <4 x float> %i.vi, i64 3 ; 3 uses
  %i.vp = call noundef float @llvm.fmuladd.f32(float %i.vo, float %.08.lcssa.i44142149173186216.i, float %i.vn)
  %i.vq = fneg float %.08.lcssa.i44142149173186216.i
  %i.vr = extractelement <4 x float> %i.vi, i64 2 ; 3 uses
  %i.vs = fmul float %i.vr, %i.vq
  %i.vt = extractelement <2 x float> %i.ln, i64 0 ; 2 uses
  %i.vu = extractelement <2 x float> %i.lk, i64 0
  %i.vv = extractelement <2 x float> %i.lp, i64 0 ; 3 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.ew, i64 64
  %i.vx = extractelement <2 x float> %i.ll, i64 0 ; 2 uses
  %i.vy = shufflevector <2 x float> %i.lk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.vz = insertelement <4 x float> %i.vy, float 0.000000e+00, i64 3
  %i.wa = shufflevector <2 x float> %i.lp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.wb = shufflevector <4 x float> %i.vz, <4 x float> %i.wa, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.wc = getelementptr inbounds nuw i8, ptr %i.ew, i64 80
  %i.wd = extractelement <2 x float> %i.lm, i64 0 ; 3 uses
  %i.we = insertelement <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, float %i.lw, i64 0
  %i.wf = fadd <4 x float> %i.we, %i.vi           ; 4 uses
  %i.wg = fneg float %.08.lcssa.i80220.i
  %i.wh = insertelement <4 x float> poison, float %.08.lcssa.i71196206.i, i64 0
  %i.wi = insertelement <4 x float> %i.wh, float %.08.lcssa.i80220.i, i64 1
  %i.wj = insertelement <4 x float> %i.wi, float %i.vk, i64 2 ; 2 uses
  %i.wk = shufflevector <4 x float> %i.wj, <4 x float> %i.wf, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.wl = fneg <4 x float> %i.wk                  ; 3 uses
  %i.wm = extractelement <4 x float> %i.wl, i64 2
  %i.wn = fmul float %.08.lcssa.i44142149173186216.i, %i.wm
  %i.wo = call noundef float @llvm.fmuladd.f32(float %i.vl, float %.08.lcssa.i71196206.i, float %i.wn) ; 2 uses
  %i.wp = fmul float %i.vr, %i.wo
  %i.wq = fmul <4 x float> %i.wf, %i.wl
  %i.wr = insertelement <4 x float> poison, float %.08.lcssa.i44142149173186216.i, i64 0
  %i.ws = shufflevector <4 x float> %i.wr, <4 x float> %i.wf, <4 x i32> <i32 0, i32 4, i32 7, i32 6>
  %i.wt = shufflevector <4 x float> %i.wj, <4 x float> %i.vi, <4 x i32> <i32 1, i32 2, i32 1, i32 5>
  %i.wu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ws, <4 x float> %i.wt, <4 x float> %i.wq) ; 3 uses
  %i.wv = extractelement <4 x float> %i.wu, i64 1
  %i.ww = call float @llvm.fmuladd.f32(float %i.vj, float %i.wv, float %i.wp)
  %i.wx = extractelement <4 x float> %i.wu, i64 0
  %i.wy = call noundef float @llvm.fmuladd.f32(float %i.vo, float %i.wx, float %i.ww)
  %i.wz = fdiv float 1.000000e+00, %i.wy          ; 6 uses
  %i.xa = extractelement <4 x float> %i.wl, i64 0
  %i.xb = fmul float %i.vo, %i.xa
  %i.xc = call noundef float @llvm.fmuladd.f32(float %i.vj, float %i.vk, float %i.xb)
  %i.xd = insertelement <4 x float> poison, float %i.wz, i64 0
  %i.xe = shufflevector <4 x float> %i.xd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xf = fmul <4 x float> %i.wu, %i.xe           ; 6 uses
  %i.xg = fmul float %i.vj, %i.wg
  %i.xh = call noundef float @llvm.fmuladd.f32(float %i.vr, float %.08.lcssa.i71196206.i, float %i.xg)
  %i.xi = fmul float %i.xh, %i.wz                 ; 2 uses
  %i.xj = extractelement <4 x float> %i.wf, i64 0
  %i.xk = call noundef float @llvm.fmuladd.f32(float %i.vj, float %i.xj, float %i.vs)
  %i.xl = fmul float %i.xk, %i.wz                 ; 3 uses
  %i.xm = extractelement <4 x float> %i.xf, i64 1
  %i.xn = shufflevector <2 x float> %i.ln, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.xo = shufflevector <2 x float> %i.lk, <2 x float> %i.ll, <4 x i32> <i32 0, i32 poison, i32 2, i32 2>
  %i.xp = insertelement <4 x float> %i.xo, float %i.wd, i64 1
  %i.xq = extractelement <4 x float> %i.xf, i64 0 ; 2 uses
  %i.xr = extractelement <4 x float> %i.xf, i64 2
  %i.xs = extractelement <4 x float> %i.xf, i64 3
  %i.xt = shufflevector <2 x float> %i.lk, <2 x float> %i.lp, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.xu = insertelement <4 x float> %i.xt, float 0.000000e+00, i64 3 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.ew, i64 96
  %i.xw = fmul float %i.wo, %i.wz                 ; 3 uses
  %i.xx = fmul float %i.xc, %i.wz                 ; 3 uses
  %i.xy = fmul float %i.vp, %i.wz                 ; 3 uses
  %i.xz = fmul float %i.lo, %i.xw
  %i.ya = fmul float %i.vt, %i.xx
  %i.yb = fmul float %i.vt, %i.xy
  %i.yc = call float @llvm.fmuladd.f32(float %i.xm, float %i.vx, float %i.xz)
  %i.yd = insertelement <4 x float> %i.xn, float %i.yc, i64 0
  %i.ye = insertelement <4 x float> %i.yd, float %i.lo, i64 2
  %i.yf = shufflevector <4 x float> %i.ye, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.yg = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.xw, i64 1
  %i.yh = insertelement <4 x float> %i.yg, float %i.xx, i64 2
  %i.yi = insertelement <4 x float> %i.yh, float %i.xy, i64 3
  %i.yj = fmul <4 x float> %i.yf, %i.yi
  %i.yk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xf, <4 x float> %i.xp, <4 x float> %i.yj) ; 5 uses
  %i.yl = extractelement <4 x float> %i.yk, i64 3
  %i.ym = call noundef float @llvm.fmuladd.f32(float %i.xl, float %i.vu, float %i.yl)
  %i.yn = shufflevector <4 x float> %i.yk, <4 x float> poison, <2 x i32> zeroinitializer
  %i.yo = extractelement <4 x float> %i.yk, i64 0
  %i.yp = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.ym, i64 0
  %i.yq = shufflevector <4 x float> %i.yp, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.yr = extractelement <4 x float> %i.yk, i64 1
  %10 = call noundef float @llvm.fmuladd.f32(float %i.xq, float %i.vv, float %i.yr) ; 2 uses
  %i.ys = call float @llvm.fmuladd.f32(float %i.xr, float %i.wd, float %i.ya)
  %i.yt = call noundef float @llvm.fmuladd.f32(float %i.xi, float %i.vv, float %i.ys) ; 2 uses
  %i.yu = call float @llvm.fmuladd.f32(float %i.xs, float %i.wd, float %i.yb)
  %i.yv = call noundef float @llvm.fmuladd.f32(float %i.xl, float %i.vv, float %i.yu)
  %i.yw = insertelement <2 x float> %i.ln, float %i.lo, i64 0
  %i.yx = shufflevector <2 x float> %i.yw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.yy = insertelement <4 x float> poison, float %i.yt, i64 0
  %i.yz = insertelement <4 x float> %i.yy, float %i.xw, i64 1
  %i.za = insertelement <4 x float> %i.yz, float %i.xx, i64 2
  %i.zb = insertelement <4 x float> %i.za, float %i.xy, i64 3
  %i.zc = fmul <4 x float> %i.yx, %i.zb
  %i.zd = insertelement <2 x float> poison, float %i.yt, i64 0
  %i.ze = shufflevector <2 x float> %i.zd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zf = fmul <2 x float> %i.ln, %i.ze
  %i.zg = insertelement <2 x float> poison, float %10, i64 0
  %i.zh = shufflevector <2 x float> %i.zg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lm, <2 x float> %i.zh, <2 x float> %i.zf)
  %i.zj = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.yv, i64 0
  %i.zk = shufflevector <4 x float> %i.zj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.zl = shufflevector <2 x float> %i.ll, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.zm = shufflevector <4 x float> %i.zl, <4 x float> %i.xf, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.zn = insertelement <2 x float> %i.lm, float %10, i64 0
  %i.zo = shufflevector <2 x float> %i.zn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.zp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zm, <4 x float> %i.zo, <4 x float> %i.zc) ; 4 uses
  %i.zq = insertelement <4 x float> %i.zp, float 0.000000e+00, i64 3
  %i.zr = shufflevector <2 x float> %i.zi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.zs = shufflevector <4 x float> %i.zq, <4 x float> %i.zr, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.zt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xu, <4 x float> %i.zk, <4 x float> %i.zs)
  store <4 x float> %i.zt, ptr %i.wc, align 8
  %i.zu = extractelement <4 x float> %i.zp, i64 1
  %i.zv = call noundef float @llvm.fmuladd.f32(float %i.xq, float %i.lq, float %i.zu)
  %i.zw = extractelement <4 x float> %i.zp, i64 3
  %i.zx = call noundef float @llvm.fmuladd.f32(float %i.xl, float %i.lq, float %i.zw)
  %i.zy = insertelement <2 x float> poison, float %i.xi, i64 0
  %i.zz = shufflevector <2 x float> %i.zy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaa = insertelement <2 x float> %i.lk, float %i.lq, i64 1
  %i.aab = shufflevector <4 x float> %i.yk, <4 x float> %i.zp, <2 x i32> <i32 2, i32 6>
  %i.aac = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zz, <2 x float> %i.aaa, <2 x float> %i.aab) ; 3 uses
  %i.aad = shufflevector <2 x float> %i.aac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aae = fmul <2 x float> %i.ln, %i.aad
  %i.aaf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lm, <2 x float> %i.yn, <2 x float> %i.aae)
  %i.aag = insertelement <2 x float> poison, float %i.lo, i64 0
  %i.aah = shufflevector <2 x float> %i.aag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aai = fmul <2 x float> %i.aah, %i.aac        ; 2 uses
  %i.aaj = extractelement <2 x float> %i.aai, i64 0
  %i.aak = call float @llvm.fmuladd.f32(float %i.vx, float %i.yo, float %i.aaj)
  %i.aal = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.aak, i64 0
  %i.aam = shufflevector <2 x float> %i.aaf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aan = shufflevector <4 x float> %i.aal, <4 x float> %i.aam, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.aao = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wb, <4 x float> %i.yq, <4 x float> %i.aan)
  store <4 x float> %i.aao, ptr %i.vw, align 8
  %i.aap = insertelement <4 x float> %i.zl, float 0.000000e+00, i64 3
  %i.aaq = shufflevector <2 x float> %i.lm, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aar = shufflevector <4 x float> %i.aap, <4 x float> %i.aaq, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.aas = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.zv, i64 0
  %i.aat = shufflevector <4 x float> %i.aas, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aau = shufflevector <2 x float> %i.aai, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aav = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.aau, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.aaw = shufflevector <2 x float> %i.ln, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aax = shufflevector <2 x float> %i.aac, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.aay = fmul <4 x float> %i.aaw, %i.aax
  %i.aaz = shufflevector <4 x float> %i.aav, <4 x float> %i.aay, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.aba = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aar, <4 x float> %i.aat, <4 x float> %i.aaz)
  %i.abb = insertelement <4 x float> %i.xu, float %i.lq, i64 2
  %i.abc = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.zx, i64 0
  %i.abd = shufflevector <4 x float> %i.abc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.abe = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abb, <4 x float> %i.abd, <4 x float> %i.aba)
  store <4 x float> %i.abe, ptr %i.xv, align 8
  %i.abf = getelementptr inbounds nuw i8, ptr %i.ew, i64 192
  %i.abg = invoke noundef nonnull align 8 dereferenceable(204) ptr @_ZN23btMultiBodyJacobianDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.abf, ptr noundef nonnull align 8 dereferenceable(204) %7)
          to label %bb.t unwind label %bb.bh      ; 0 uses

bb.t:                                             ; preds = %.loopexit
  %i.abh = getelementptr inbounds nuw i8, ptr %i.ew, i64 400
  %i.abi = invoke noundef nonnull align 8 dereferenceable(204) ptr @_ZN23btMultiBodyJacobianDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.abh, ptr noundef nonnull align 8 dereferenceable(204) %8)
          to label %bb.u unwind label %bb.bh      ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.abj = getelementptr inbounds nuw i8, ptr %i.ew, i64 608
  %i.abk = invoke noundef nonnull align 8 dereferenceable(204) ptr @_ZN23btMultiBodyJacobianDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.abj, ptr noundef nonnull align 8 dereferenceable(204) %9)
          to label %bb.v unwind label %bb.bh      ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.abl = getelementptr inbounds nuw i8, ptr %i.ew, i64 816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abl, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !50
  %i.abm = getelementptr inbounds nuw i8, ptr %i.ew, i64 832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abm, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !50
  %i.abn = load ptr, ptr %i.cc, align 8, !tbaa !419 ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.abn, null
  %i.abo = load i8, ptr %i.cb, align 8, !range !34
  %i.abp = trunc nuw i8 %i.abo to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 %i.abp, i1 false
  br i1 %or.cond.i.i.i, label %bb.w, label %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit.i

bb.w:                                             ; preds = %bb.v
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.abn)
          to label %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit.i unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.abq = landingpad { ptr, i32 }
          catch ptr null
  %i.abr = extractvalue { ptr, i32 } %i.abq, 0
  call void @__clang_call_terminate(ptr %i.abr) #26
  unreachable

_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit.i: ; preds = %bb.w, %bb.v
  %i.abs = load ptr, ptr %i.by, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i1.i = icmp ne ptr %i.abs, null
  %i.abt = load i8, ptr %i.bx, align 8, !range !34
  %i.abu = trunc nuw i8 %i.abt to i1
  %or.cond.i.i2.i = select i1 %.not.i.i.i1.i, i1 %i.abu, i1 false
  br i1 %or.cond.i.i2.i, label %bb.y, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i

bb.y:                                             ; preds = %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.abs)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.abv = landingpad { ptr, i32 }
          catch ptr null
  %i.abw = extractvalue { ptr, i32 } %i.abv, 0
  call void @__clang_call_terminate(ptr %i.abw) #26
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i: ; preds = %bb.y, %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit.i
  %i.abx = load ptr, ptr %i.bu, align 8, !tbaa !417 ; 2 uses
  %.not.i.i.i3.i = icmp ne ptr %i.abx, null
  %i.aby = load i8, ptr %i.bt, align 8, !range !34
  %i.abz = trunc nuw i8 %i.aby to i1
  %or.cond.i.i4.i = select i1 %.not.i.i.i3.i, i1 %i.abz, i1 false
  br i1 %or.cond.i.i4.i, label %bb.aa, label %_ZN20btAlignedObjectArrayIfED2Ev.exit.i

bb.aa:                                            ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.abx)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aca = landingpad { ptr, i32 }
          catch ptr null
  %i.acb = extractvalue { ptr, i32 } %i.aca, 0
  call void @__clang_call_terminate(ptr %i.acb) #26
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit.i:          ; preds = %bb.aa, %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i
  %i.acc = load ptr, ptr %i.bq, align 8, !tbaa !417 ; 2 uses
  %.not.i.i.i5.i = icmp ne ptr %i.acc, null
  %i.acd = load i8, ptr %i.bp, align 8, !range !34
  %i.ace = trunc nuw i8 %i.acd to i1
  %or.cond.i.i6.i = select i1 %.not.i.i.i5.i, i1 %i.ace, i1 false
  br i1 %or.cond.i.i6.i, label %bb.ac, label %_ZN20btAlignedObjectArrayIfED2Ev.exit7.i

bb.ac:                                            ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.acc)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit7.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.acf = landingpad { ptr, i32 }
          catch ptr null
  %i.acg = extractvalue { ptr, i32 } %i.acf, 0
  call void @__clang_call_terminate(ptr %i.acg) #26
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit7.i:         ; preds = %bb.ac, %_ZN20btAlignedObjectArrayIfED2Ev.exit.i
  %i.ach = load ptr, ptr %i.bm, align 8, !tbaa !417 ; 2 uses
  %.not.i.i.i8.i = icmp ne ptr %i.ach, null
  %i.aci = load i8, ptr %i.bl, align 8, !range !34
  %i.acj = trunc nuw i8 %i.aci to i1
  %or.cond.i.i9.i = select i1 %.not.i.i.i8.i, i1 %i.acj, i1 false
  br i1 %or.cond.i.i9.i, label %bb.ae, label %_ZN20btAlignedObjectArrayIfED2Ev.exit10.i

bb.ae:                                            ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit7.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ach)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit10.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ack = landingpad { ptr, i32 }
          catch ptr null
  %i.acl = extractvalue { ptr, i32 } %i.ack, 0
  call void @__clang_call_terminate(ptr %i.acl) #26
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit10.i:        ; preds = %bb.ae, %_ZN20btAlignedObjectArrayIfED2Ev.exit7.i
  %i.acm = load ptr, ptr %i.bi, align 8, !tbaa !417 ; 2 uses
  %.not.i.i.i11.i = icmp ne ptr %i.acm, null
  %i.acn = load i8, ptr %i.bh, align 8, !range !34
  %i.aco = trunc nuw i8 %i.acn to i1
  %or.cond.i.i12.i = select i1 %.not.i.i.i11.i, i1 %i.aco, i1 false
  br i1 %or.cond.i.i12.i, label %bb.ag, label %_ZN23btMultiBodyJacobianDataD2Ev.exit

bb.ag:                                            ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit10.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.acm)
          to label %_ZN23btMultiBodyJacobianDataD2Ev.exit unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.acp = landingpad { ptr, i32 }
          catch ptr null
  %i.acq = extractvalue { ptr, i32 } %i.acp, 0
  call void @__clang_call_terminate(ptr %i.acq) #26
  unreachable

_ZN23btMultiBodyJacobianDataD2Ev.exit:            ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit10.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.acr = load ptr, ptr %i.be, align 8, !tbaa !419 ; 2 uses
  %.not.i.i.i.i120 = icmp ne ptr %i.acr, null
  %i.acs = load i8, ptr %i.bd, align 8, !range !34
  %i.act = trunc nuw i8 %i.acs to i1
  %or.cond.i.i.i121 = select i1 %.not.i.i.i.i120, i1 %i.act, i1 false
  br i1 %or.cond.i.i.i121, label %bb.ai, label %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit.i122

bb.ai:                                            ; preds = %_ZN23btMultiBodyJacobianDataD2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.acr)
end_hunk_0
