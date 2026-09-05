Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_spread?download=true
inline.NumInlined: 325
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_Z14spread_on_gridPK9gmx_pme_tP11PmeAtomCommP14PmeAndFftGridsbbb.omp_outlined.1:bb.a
  %wide.load386 = load <8 x float>, ptr %i.vn, align 16, !tbaa !134, !alias.scope !333
  %wide.load387 = load <8 x float>, ptr %i.vo, align 16, !tbaa !134, !alias.scope !333
  %i.vp = getelementptr i8, ptr %i.vk, i64 32
  %i.vq = getelementptr i8, ptr %i.vk, i64 64
  %i.vr = getelementptr i8, ptr %i.vk, i64 96
  %wide.load388 = load <8 x float>, ptr %i.vk, align 4, !tbaa !134, !alias.scope !333
  %wide.load389 = load <8 x float>, ptr %i.vp, align 4, !tbaa !134, !alias.scope !333
  %wide.load390 = load <8 x float>, ptr %i.vq, align 4, !tbaa !134, !alias.scope !333
  %wide.load391 = load <8 x float>, ptr %i.vr, align 4, !tbaa !134, !alias.scope !333
  %i.vs = fsub <8 x float> %wide.load384, %wide.load388
  %i.vt = fsub <8 x float> %wide.load385, %wide.load389
  %i.vu = fsub <8 x float> %wide.load386, %wide.load390
  %i.vv = fsub <8 x float> %wide.load387, %wide.load391
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.vj ; 4 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 32
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vw, i64 64
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vw, i64 96
  store <8 x float> %i.vs, ptr %i.vw, align 4, !tbaa !134, !alias.scope !334, !noalias !333
  store <8 x float> %i.vt, ptr %i.vx, align 4, !tbaa !134, !alias.scope !334, !noalias !333
  store <8 x float> %i.vu, ptr %i.vy, align 4, !tbaa !134, !alias.scope !334, !noalias !333
  store <8 x float> %i.vv, ptr %i.vz, align 4, !tbaa !134, !alias.scope !334, !noalias !333
  %index.next392 = add nuw i64 %index383, 32      ; 2 uses
  %i.wa = icmp eq i64 %index.next392, %n.vec381
  br i1 %i.wa, label %middle.block393, label %vector.body382, !llvm.loop !275

middle.block393:                                  ; preds = %vector.body382
  br i1 %cmp.n394, label %._crit_edge260.i, label %vec.epilog.iter.check399

vec.epilog.iter.check399:                         ; preds = %middle.block393
  br i1 %min.epilog.iters.check400, label %.lr.ph259.i.preheader, label %vec.epilog.ph401, !prof !192

vec.epilog.ph401:                                 ; preds = %vector.main.loop.iter.check378, %vec.epilog.iter.check399
  %vec.epilog.resume.val395 = phi i64 [ %n.vec381, %vec.epilog.iter.check399 ], [ 0, %vector.main.loop.iter.check378 ]
  br label %vec.epilog.vector.body403

vec.epilog.vector.body403:                        ; preds = %vec.epilog.vector.body403, %vec.epilog.ph401
  %index404 = phi i64 [ %vec.epilog.resume.val395, %vec.epilog.ph401 ], [ %index.next407, %vec.epilog.vector.body403 ] ; 2 uses
  %i.wb = or disjoint i64 %index404, 1            ; 2 uses
  %i.wc = getelementptr [4 x i8], ptr %i.d, i64 %i.wb ; 2 uses
  %i.wd = getelementptr i8, ptr %i.wc, i64 -4
  %wide.load405 = load <8 x float>, ptr %i.wd, align 16, !tbaa !134, !alias.scope !333
  %wide.load406 = load <8 x float>, ptr %i.wc, align 4, !tbaa !134, !alias.scope !333
  %i.we = fsub <8 x float> %wide.load405, %wide.load406
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.wb
  store <8 x float> %i.we, ptr %i.wf, align 4, !tbaa !134, !alias.scope !334, !noalias !333
  %index.next407 = add nuw i64 %index404, 8       ; 2 uses
  %i.wg = icmp eq i64 %index.next407, %n.vec402
  br i1 %i.wg, label %vec.epilog.middle.block408, label %vec.epilog.vector.body403, !llvm.loop !276

vec.epilog.middle.block408:                       ; preds = %vec.epilog.vector.body403
  br i1 %cmp.n409, label %._crit_edge260.i, label %.lr.ph259.i.preheader

.lr.ph259.i.preheader:                            ; preds = %vector.memcheck368, %iter.check397, %vec.epilog.iter.check399, %vec.epilog.middle.block408
  %indvars.iv334.i.ph = phi i64 [ 1, %iter.check397 ], [ 1, %vector.memcheck368 ], [ %i.is, %vec.epilog.iter.check399 ], [ %i.it, %vec.epilog.middle.block408 ] ; 4 uses
  %i.wh = sub nsw i64 %i.ij, %indvars.iv334.i.ph
  %xtraiter522 = and i64 %i.wh, 7                 ; 2 uses
  %lcmp.mod523.not = icmp eq i64 %xtraiter522, 0
  br i1 %lcmp.mod523.not, label %.lr.ph259.i.prol.loopexit, label %.lr.ph259.i.prol

.lr.ph259.i.prol:                                 ; preds = %.lr.ph259.i.preheader, %.lr.ph259.i.prol
  %indvars.iv334.i.prol = phi i64 [ %indvars.iv.next335.i.prol, %.lr.ph259.i.prol ], [ %indvars.iv334.i.ph, %.lr.ph259.i.preheader ] ; 3 uses
  %prol.iter524 = phi i64 [ %prol.iter524.next, %.lr.ph259.i.prol ], [ 0, %.lr.ph259.i.preheader ]
  %i.wi = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv334.i.prol ; 2 uses
  %i.wj = getelementptr i8, ptr %i.wi, i64 -4
  %i.wk = load float, ptr %i.wj, align 4, !tbaa !134
  %i.wl = load float, ptr %i.wi, align 4, !tbaa !134
  %i.wm = fsub float %i.wk, %i.wl
  %gep.i.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv334.i.prol
  store float %i.wm, ptr %gep.i.prol, align 4, !tbaa !134
  %indvars.iv.next335.i.prol = add nuw nsw i64 %indvars.iv334.i.prol, 1 ; 2 uses
  %prol.iter524.next = add i64 %prol.iter524, 1   ; 2 uses
  %prol.iter524.cmp.not = icmp eq i64 %prol.iter524.next, %xtraiter522
  br i1 %prol.iter524.cmp.not, label %.lr.ph259.i.prol.loopexit, label %.lr.ph259.i.prol, !llvm.loop !277

.lr.ph259.i.prol.loopexit:                        ; preds = %.lr.ph259.i.prol, %.lr.ph259.i.preheader
  %indvars.iv334.i.unr = phi i64 [ %indvars.iv334.i.ph, %.lr.ph259.i.preheader ], [ %indvars.iv.next335.i.prol, %.lr.ph259.i.prol ]
  %i.wn = sub nsw i64 %indvars.iv334.i.ph, %i.ij
  %i.wo = icmp ugt i64 %i.wn, -8
  br i1 %i.wo, label %._crit_edge260.i, label %.lr.ph259.i

.lr.ph251.preheader.i:                            ; preds = %.lr.ph251.preheader.i.preheader, %._crit_edge252.i
  %indvar411 = phi i64 [ %indvar.next412, %._crit_edge252.i ], [ 0, %.lr.ph251.preheader.i.preheader ] ; 2 uses
  %indvars.iv327.i = phi i64 [ %indvars.iv.next328.i, %._crit_edge252.i ], [ 3, %.lr.ph251.preheader.i.preheader ] ; 5 uses
  %indvars.iv325.i = phi i64 [ %indvars.iv.next326.i, %._crit_edge252.i ], [ 2, %.lr.ph251.preheader.i.preheader ] ; 2 uses
  %i.wp = add i64 %indvar411, 1                   ; 3 uses
  %i.wq = add nsw i64 %indvars.iv327.i, -1        ; 2 uses
  %i.wr = trunc nuw nsw i64 %i.wq to i32
  %i.ws = sitofp i32 %i.wr to double
  %i.wt = fdiv double 1.000000e+00, %i.ws
  %i.wu = fptrunc double %i.wt to float           ; 4 uses
  %i.wv = fmul float %i.vd, %i.wu
  %i.ww = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv327.i
  %i.wx = getelementptr i8, ptr %i.ww, i64 -8
  %i.wy = load float, ptr %i.wx, align 4, !tbaa !134
  %i.wz = fmul float %i.wy, %i.wv
  %i.xa = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.wq
  store float %i.wz, ptr %i.xa, align 4, !tbaa !134
  %min.iters.check414 = icmp ult i64 %i.wp, 8
  br i1 %min.iters.check414, label %.lr.ph251.i.preheader, label %vector.ph415

vector.ph415:                                     ; preds = %.lr.ph251.preheader.i
  %n.vec416 = and i64 %i.wp, -8                   ; 3 uses
  %i.xb = or disjoint i64 %n.vec416, 1
  %broadcast.splatinsert417 = insertelement <8 x i64> poison, i64 %indvars.iv327.i, i64 0
  %broadcast.splat418 = shufflevector <8 x i64> %broadcast.splatinsert417, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert419 = insertelement <8 x float> poison, float %i.wu, i64 0
  %i.xc = shufflevector <8 x float> %broadcast.splatinsert419, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body423

vector.body423:                                   ; preds = %vector.body423, %vector.ph415
  %index424 = phi i64 [ 0, %vector.ph415 ], [ %index.next432, %vector.body423 ]
  %vec.ind425 = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph415 ], [ %vec.ind.next433, %vector.body423 ] ; 2 uses
  %vec.ind426 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph415 ], [ %vec.ind.next434, %vector.body423 ] ; 2 uses
  %i.xd = uitofp nneg <8 x i32> %vec.ind426 to <8 x float>
  %i.xe = fadd <8 x float> %broadcast.splat422, %i.xd
  %i.xf = sub nuw nsw <8 x i64> %broadcast.splat418, %vec.ind425 ; 2 uses
  %i.xg = extractelement <8 x i64> %i.xf, i64 0
  %i.xh = getelementptr [4 x i8], ptr %i.d, i64 %i.xg ; 2 uses
  %i.xi = getelementptr i8, ptr %i.xh, i64 -36
  %wide.load427 = load <8 x float>, ptr %i.xi, align 4, !tbaa !134
  %reverse428 = shufflevector <8 x float> %wide.load427, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.xj = trunc nuw <8 x i64> %i.xf to <8 x i32>
  %i.xk = uitofp nneg <8 x i32> %i.xj to <8 x float>
  %i.xl = fsub <8 x float> %i.xk, %broadcast.splat422
  %i.xm = getelementptr i8, ptr %i.xh, i64 -32    ; 2 uses
  %wide.load429 = load <8 x float>, ptr %i.xm, align 4, !tbaa !134
  %reverse430 = shufflevector <8 x float> %wide.load429, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.xn = fmul <8 x float> %reverse430, %i.xl
  %i.xo = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.xe, <8 x float> %reverse428, <8 x float> %i.xn)
  %i.xp = shufflevector <8 x float> %i.xo, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse431 = fmul <8 x float> %i.xp, %i.xc
  store <8 x float> %reverse431, ptr %i.xm, align 4, !tbaa !134
  %index.next432 = add nuw i64 %index424, 8       ; 2 uses
  %vec.ind.next433 = add nuw nsw <8 x i64> %vec.ind425, splat (i64 8)
  %vec.ind.next434 = add <8 x i32> %vec.ind426, splat (i32 8)
  %i.xq = icmp eq i64 %index.next432, %n.vec416
  br i1 %i.xq, label %middle.block435, label %vector.body423, !llvm.loop !278

middle.block435:                                  ; preds = %vector.body423
  %cmp.n436 = icmp eq i64 %i.wp, %n.vec416
  br i1 %cmp.n436, label %._crit_edge252.i, label %.lr.ph251.i.preheader

.lr.ph251.i.preheader:                            ; preds = %.lr.ph251.preheader.i, %middle.block435
  %indvars.iv318.i.ph = phi i64 [ 1, %.lr.ph251.preheader.i ], [ %i.xb, %middle.block435 ]
  br label %.lr.ph251.i

._crit_edge252.i:                                 ; preds = %.lr.ph251.i, %middle.block435
  %i.xr = fmul float %i.ve, %i.wu
  %i.xs = load float, ptr %i.d, align 16, !tbaa !134
  %i.xt = fmul float %i.xr, %i.xs                 ; 2 uses
  store float %i.xt, ptr %i.d, align 16, !tbaa !134
  %indvars.iv.next328.i = add nuw nsw i64 %indvars.iv327.i, 1 ; 2 uses
  %indvars.iv.next326.i = add nuw nsw i64 %indvars.iv325.i, 1
  %exitcond333.not.i = icmp eq i64 %indvars.iv.next328.i, %i.ij
  %indvar.next412 = add i64 %indvar411, 1
  br i1 %exitcond333.not.i, label %._crit_edge256.i, label %.lr.ph251.preheader.i, !llvm.loop !279

.lr.ph251.i:                                      ; preds = %.lr.ph251.i.preheader, %.lr.ph251.i
  %indvars.iv318.i = phi i64 [ %indvars.iv.next319.i, %.lr.ph251.i ], [ %indvars.iv318.i.ph, %.lr.ph251.i.preheader ] ; 3 uses
  %i.xu = trunc nuw nsw i64 %indvars.iv318.i to i32
  %i.xv = uitofp nneg i32 %i.xu to float
  %i.xw = fadd float %i.vd, %i.xv
  %i.xx = sub nuw nsw i64 %indvars.iv327.i, %indvars.iv318.i ; 2 uses
  %i.xy = getelementptr [4 x i8], ptr %i.d, i64 %i.xx ; 2 uses
  %i.xz = getelementptr i8, ptr %i.xy, i64 -8
  %i.ya = load float, ptr %i.xz, align 4, !tbaa !134
  %i.yb = trunc nuw i64 %i.xx to i32
  %i.yc = uitofp nneg i32 %i.yb to float
  %i.yd = fsub float %i.yc, %i.vd
  %i.ye = getelementptr i8, ptr %i.xy, i64 -4     ; 2 uses
  %i.yf = load float, ptr %i.ye, align 4, !tbaa !134
  %i.yg = fmul float %i.yf, %i.yd
  %i.yh = call float @llvm.fmuladd.f32(float %i.xw, float %i.ya, float %i.yg)
  %i.yi = fmul float %i.yh, %i.wu
  store float %i.yi, ptr %i.ye, align 4, !tbaa !134
  %indvars.iv.next319.i = add nuw nsw i64 %indvars.iv318.i, 1 ; 2 uses
  %exitcond324.not.i = icmp eq i64 %indvars.iv.next319.i, %indvars.iv325.i
  br i1 %exitcond324.not.i, label %._crit_edge252.i, label %.lr.ph251.i, !llvm.loop !280

._crit_edge260.i:                                 ; preds = %.lr.ph259.i.prol.loopexit, %.lr.ph259.i, %vec.epilog.middle.block408, %middle.block393
  %i.yj = fmul float %i.vd, %i.hv
  %i.yk = load float, ptr %i.hy, align 4, !tbaa !134
  %i.yl = fmul float %i.yj, %i.yk
  store float %i.yl, ptr %i.hq, align 4, !tbaa !134
  br i1 %i.hz, label %.lr.ph263.i.preheader, label %._crit_edge264.thread.i

.lr.ph263.i.preheader:                            ; preds = %._crit_edge260.i
  br i1 %min.iters.check344, label %.lr.ph263.i.preheader509, label %vector.ph345

vector.ph345:                                     ; preds = %.lr.ph263.i.preheader
  %broadcast.splatinsert347 = insertelement <8 x float> poison, float %i.vd, i64 0
  %broadcast.splat348 = shufflevector <8 x float> %broadcast.splatinsert347, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body353

vector.body353:                                   ; preds = %vector.body353, %vector.ph345
  %index354 = phi i64 [ 0, %vector.ph345 ], [ %index.next362, %vector.body353 ]
  %vec.ind355 = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph345 ], [ %vec.ind.next363, %vector.body353 ] ; 2 uses
  %vec.ind356 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph345 ], [ %vec.ind.next364, %vector.body353 ] ; 2 uses
  %i.ym = uitofp nneg <8 x i32> %vec.ind356 to <8 x float>
  %i.yn = fadd <8 x float> %broadcast.splat348, %i.ym
  %i.yo = sub nuw nsw <8 x i64> %broadcast.splat350, %vec.ind355 ; 2 uses
  %i.yp = extractelement <8 x i64> %i.yo, i64 0
  %i.yq = getelementptr [4 x i8], ptr %i.d, i64 %i.yp ; 2 uses
  %i.yr = getelementptr i8, ptr %i.yq, i64 -36
  %wide.load357 = load <8 x float>, ptr %i.yr, align 4, !tbaa !134
  %reverse358 = shufflevector <8 x float> %wide.load357, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ys = trunc nuw nsw <8 x i64> %i.yo to <8 x i32>
  %9 = uitofp nneg <8 x i32> %i.ys to <8 x float>
  %i.yt = fsub <8 x float> %9, %broadcast.splat348
  %i.yu = getelementptr i8, ptr %i.yq, i64 -32    ; 2 uses
  %wide.load359 = load <8 x float>, ptr %i.yu, align 4, !tbaa !134
  %reverse360 = shufflevector <8 x float> %wide.load359, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.yv = fmul <8 x float> %reverse360, %i.yt
  %i.yw = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.yn, <8 x float> %reverse358, <8 x float> %i.yv)
  %i.yx = shufflevector <8 x float> %i.yw, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse361 = fmul <8 x float> %i.yx, %i.iw
  store <8 x float> %reverse361, ptr %i.yu, align 4, !tbaa !134
  %index.next362 = add nuw i64 %index354, 8       ; 2 uses
  %vec.ind.next363 = add nuw nsw <8 x i64> %vec.ind355, splat (i64 8)
  %vec.ind.next364 = add <8 x i32> %vec.ind356, splat (i32 8)
  %i.yy = icmp eq i64 %index.next362, %n.vec346
  br i1 %i.yy, label %middle.block365, label %vector.body353, !llvm.loop !281

middle.block365:                                  ; preds = %vector.body353
  br i1 %cmp.n366, label %._crit_edge264.thread.i, label %.lr.ph263.i.preheader509

.lr.ph263.i.preheader509:                         ; preds = %.lr.ph263.i.preheader, %middle.block365
  %indvars.iv339.i.ph = phi i64 [ 1, %.lr.ph263.i.preheader ], [ %i.iv, %middle.block365 ]
  br label %.lr.ph263.i

.lr.ph259.i:                                      ; preds = %.lr.ph259.i.prol.loopexit, %.lr.ph259.i
  %indvars.iv334.i = phi i64 [ %indvars.iv.next335.i.7, %.lr.ph259.i ], [ %indvars.iv334.i.unr, %.lr.ph259.i.prol.loopexit ] ; 10 uses
  %i.yz = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv334.i ; 2 uses
  %i.za = getelementptr i8, ptr %i.yz, i64 -4
  %i.zb = load float, ptr %i.za, align 4, !tbaa !134
  %i.zc = load float, ptr %i.yz, align 4, !tbaa !134
  %i.zd = fsub float %i.zb, %i.zc
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv334.i
  store float %i.zd, ptr %gep.i, align 4, !tbaa !134
  %indvars.iv.next335.i = add nuw nsw i64 %indvars.iv334.i, 1 ; 2 uses
  %i.ze = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.i ; 2 uses
  %i.zf = getelementptr i8, ptr %i.ze, i64 -4
  %i.zg = load float, ptr %i.zf, align 4, !tbaa !134
  %i.zh = load float, ptr %i.ze, align 4, !tbaa !134
  %i.zi = fsub float %i.zg, %i.zh
  %gep.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next335.i
  store float %i.zi, ptr %gep.i.1, align 4, !tbaa !134
  %indvars.iv.next335.i.1 = add nuw nsw i64 %indvars.iv334.i, 2 ; 2 uses
  %i.zj = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.i.1 ; 2 uses
  %i.zk = getelementptr i8, ptr %i.zj, i64 -4
  %i.zl = load float, ptr %i.zk, align 4, !tbaa !134
  %i.zm = load float, ptr %i.zj, align 4, !tbaa !134
  %i.zn = fsub float %i.zl, %i.zm
  %gep.i.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next335.i.1
  store float %i.zn, ptr %gep.i.2, align 4, !tbaa !134
  %indvars.iv.next335.i.2 = add nuw nsw i64 %indvars.iv334.i, 3 ; 2 uses
  %i.zo = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.i.2 ; 2 uses
  %i.zp = getelementptr i8, ptr %i.zo, i64 -4
  %i.zq = load float, ptr %i.zp, align 4, !tbaa !134
  %i.zr = load float, ptr %i.zo, align 4, !tbaa !134
  %i.zs = fsub float %i.zq, %i.zr
  %gep.i.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next335.i.2
  store float %i.zs, ptr %gep.i.3, align 4, !tbaa !134
  %indvars.iv.next335.i.3 = add nuw nsw i64 %indvars.iv334.i, 4 ; 2 uses
  %i.zt = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.i.3 ; 2 uses
  %i.zu = getelementptr i8, ptr %i.zt, i64 -4
  %i.zv = load float, ptr %i.zu, align 4, !tbaa !134
  %i.zw = load float, ptr %i.zt, align 4, !tbaa !134
  %i.zx = fsub float %i.zv, %i.zw
  %gep.i.4 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next335.i.3
  store float %i.zx, ptr %gep.i.4, align 4, !tbaa !134
  %indvars.iv.next335.i.4 = add nuw nsw i64 %indvars.iv334.i, 5 ; 2 uses
  %i.zy = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.i.4 ; 2 uses
  %i.zz = getelementptr i8, ptr %i.zy, i64 -4
  %i.aaa = load float, ptr %i.zz, align 4, !tbaa !134
  %i.aab = load float, ptr %i.zy, align 4, !tbaa !134
  %i.aac = fsub float %i.aaa, %i.aab
  %gep.i.5 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next335.i.4
  store float %i.aac, ptr %gep.i.5, align 4, !tbaa !134
  %indvars.iv.next335.i.5 = add nuw nsw i64 %indvars.iv334.i, 6 ; 2 uses
  %i.aad = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.i.5 ; 2 uses
  %i.aae = getelementptr i8, ptr %i.aad, i64 -4
  %i.aaf = load float, ptr %i.aae, align 4, !tbaa !134
  %i.aag = load float, ptr %i.aad, align 4, !tbaa !134
  %i.aah = fsub float %i.aaf, %i.aag
  %gep.i.6 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next335.i.5
  store float %i.aah, ptr %gep.i.6, align 4, !tbaa !134
  %indvars.iv.next335.i.6 = add nuw nsw i64 %indvars.iv334.i, 7 ; 2 uses
  %i.aai = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.i.6 ; 2 uses
  %i.aaj = getelementptr i8, ptr %i.aai, i64 -4
  %i.aak = load float, ptr %i.aaj, align 4, !tbaa !134
  %i.aal = load float, ptr %i.aai, align 4, !tbaa !134
  %i.aam = fsub float %i.aak, %i.aal
  %gep.i.7 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next335.i.6
  store float %i.aam, ptr %gep.i.7, align 4, !tbaa !134
  %indvars.iv.next335.i.7 = add nuw nsw i64 %indvars.iv334.i, 8 ; 2 uses
  %exitcond338.not.i.7 = icmp eq i64 %indvars.iv.next335.i.7, %i.ij
  br i1 %exitcond338.not.i.7, label %._crit_edge260.i, label %.lr.ph259.i, !llvm.loop !282

._crit_edge264.thread.i:                          ; preds = %.lr.ph263.i, %middle.block365, %._crit_edge260.i
  %i.aan = fmul float %i.ve, %i.hv
  %i.aao = load float, ptr %i.d, align 16, !tbaa !134
  %i.aap = fmul float %i.aan, %i.aao
  store float %i.aap, ptr %i.d, align 16, !tbaa !134
  br label %._crit_edge268.i

._crit_edge264.i:                                 ; preds = %._crit_edge256.i
  %i.aaq = fmul float %i.vd, %i.hv
  %i.aar = load float, ptr %i.hy, align 4, !tbaa !134
  %i.aas = fmul float %i.aaq, %i.aar
  store float %i.aas, ptr %i.hq, align 4, !tbaa !134
  %i.aat = fmul float %i.ve, %i.hv
  %i.aau = load float, ptr %i.d, align 16, !tbaa !134
  %i.aav = fmul float %i.aat, %i.aau
  store float %i.aav, ptr %i.d, align 16, !tbaa !134
  br i1 %i.ia, label %._crit_edge268.i, label %._crit_edge256.1.thread.i

._crit_edge256.1.thread.i:                        ; preds = %._crit_edge264.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.va, i64 4
  %i.aax = load float, ptr %i.aaw, align 4, !tbaa !134 ; 3 uses
  store float 0.000000e+00, ptr %i.hq, align 4, !tbaa !134
  store float %i.aax, ptr %i.p, align 4, !tbaa !134
  %i.aay = fsub float 1.000000e+00, %i.aax        ; 3 uses
  store float %i.aay, ptr %i.d, align 16, !tbaa !134
  %i.aaz = fneg float %i.aay
  %i.aba = load ptr, ptr %i.il, align 8, !tbaa !332
  %i.abb = getelementptr inbounds [4 x i8], ptr %i.aba, i64 %i.vb
  store float %i.aaz, ptr %i.abb, align 4, !tbaa !134
  br label %._crit_edge264.1.i

.lr.ph263.i:                                      ; preds = %.lr.ph263.i.preheader509, %.lr.ph263.i
  %indvars.iv339.i = phi i64 [ %indvars.iv.next340.i, %.lr.ph263.i ], [ %indvars.iv339.i.ph, %.lr.ph263.i.preheader509 ] ; 3 uses
  %i.abc = trunc nuw nsw i64 %indvars.iv339.i to i32
  %i.abd = uitofp nneg i32 %i.abc to float
  %i.abe = fadd float %i.vd, %i.abd
  %i.abf = sub nuw nsw i64 %i.hw, %indvars.iv339.i ; 2 uses
  %i.abg = getelementptr [4 x i8], ptr %i.d, i64 %i.abf ; 2 uses
  %i.abh = getelementptr i8, ptr %i.abg, i64 -8
  %i.abi = load float, ptr %i.abh, align 4, !tbaa !134
  %i.abj = trunc nuw nsw i64 %i.abf to i32
  %10 = uitofp nneg i32 %i.abj to float
  %i.abk = fsub float %10, %i.vd
  %i.abl = getelementptr i8, ptr %i.abg, i64 -4   ; 2 uses
  %i.abm = load float, ptr %i.abl, align 4, !tbaa !134
  %i.abn = fmul float %i.abm, %i.abk
  %i.abo = call float @llvm.fmuladd.f32(float %i.abe, float %i.abi, float %i.abn)
  %i.abp = fmul float %i.abo, %i.hv
  store float %i.abp, ptr %i.abl, align 4, !tbaa !134
  %indvars.iv.next340.i = add nuw nsw i64 %indvars.iv339.i, 1 ; 2 uses
  %exitcond343.not.i = icmp eq i64 %indvars.iv.next340.i, %wide.trip.count342.i
  br i1 %exitcond343.not.i, label %._crit_edge264.thread.i, label %.lr.ph263.i, !llvm.loop !283

._crit_edge268.i:                                 ; preds = %._crit_edge264.i, %._crit_edge264.thread.i
  %i.abq = load ptr, ptr %i.ha, align 8, !tbaa !332
  %scevgep344.i = getelementptr nuw i8, ptr %i.abq, i64 %i.uu
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep344.i, ptr nonnull align 16 %i.d, i64 %i.ik, i1 false), !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  %i.abr = getelementptr inbounds nuw i8, ptr %i.va, i64 4
  %i.abs = load float, ptr %i.abr, align 4, !tbaa !134 ; 11 uses
  store float 0.000000e+00, ptr %i.hq, align 4, !tbaa !134
  store float %i.abs, ptr %i.p, align 4, !tbaa !134
  %i.abt = fsub float 1.000000e+00, %i.abs        ; 5 uses
  store float %i.abt, ptr %i.d, align 16, !tbaa !134
  br i1 %i.hr, label %.lr.ph251.preheader.1.i.preheader, label %._crit_edge256.1.i

.lr.ph251.preheader.1.i.preheader:                ; preds = %._crit_edge268.i
  %broadcast.splatinsert326 = insertelement <8 x float> poison, float %i.abs, i64 0
  %broadcast.splat327 = shufflevector <8 x float> %broadcast.splatinsert326, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph251.preheader.1.i

.lr.ph251.preheader.1.i:                          ; preds = %.lr.ph251.preheader.1.i.preheader, %._crit_edge252.1.i
  %indvar316 = phi i64 [ %indvar.next317, %._crit_edge252.1.i ], [ 0, %.lr.ph251.preheader.1.i.preheader ] ; 2 uses
  %indvars.iv327.1.i = phi i64 [ %indvars.iv.next328.1.i, %._crit_edge252.1.i ], [ 3, %.lr.ph251.preheader.1.i.preheader ] ; 5 uses
  %indvars.iv325.1.i = phi i64 [ %indvars.iv.next326.1.i, %._crit_edge252.1.i ], [ 2, %.lr.ph251.preheader.1.i.preheader ] ; 2 uses
  %i.abu = add i64 %indvar316, 1                  ; 3 uses
  %i.abv = add nsw i64 %indvars.iv327.1.i, -1     ; 2 uses
  %i.abw = trunc nuw nsw i64 %i.abv to i32
  %i.abx = sitofp i32 %i.abw to double
  %i.aby = fdiv double 1.000000e+00, %i.abx
  %i.abz = fptrunc double %i.aby to float         ; 4 uses
  %i.aca = fmul float %i.abs, %i.abz
  %i.acb = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv327.1.i
  %i.acc = getelementptr i8, ptr %i.acb, i64 -8
  %i.acd = load float, ptr %i.acc, align 4, !tbaa !134
  %i.ace = fmul float %i.acd, %i.aca
  %i.acf = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.abv
  store float %i.ace, ptr %i.acf, align 4, !tbaa !134
  %min.iters.check319 = icmp ult i64 %i.abu, 8
  br i1 %min.iters.check319, label %.lr.ph251.1.i.preheader, label %vector.ph320

vector.ph320:                                     ; preds = %.lr.ph251.preheader.1.i
  %n.vec321 = and i64 %i.abu, -8                  ; 3 uses
  %i.acg = or disjoint i64 %n.vec321, 1
  %broadcast.splatinsert322 = insertelement <8 x i64> poison, i64 %indvars.iv327.1.i, i64 0
  %broadcast.splat323 = shufflevector <8 x i64> %broadcast.splatinsert322, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert324 = insertelement <8 x float> poison, float %i.abz, i64 0
  %i.ach = shufflevector <8 x float> %broadcast.splatinsert324, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body328

vector.body328:                                   ; preds = %vector.body328, %vector.ph320
  %index329 = phi i64 [ 0, %vector.ph320 ], [ %index.next337, %vector.body328 ]
  %vec.ind330 = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph320 ], [ %vec.ind.next338, %vector.body328 ] ; 2 uses
  %vec.ind331 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph320 ], [ %vec.ind.next339, %vector.body328 ] ; 2 uses
  %i.aci = uitofp nneg <8 x i32> %vec.ind331 to <8 x float>
  %i.acj = fadd <8 x float> %broadcast.splat327, %i.aci
  %i.ack = sub nuw nsw <8 x i64> %broadcast.splat323, %vec.ind330 ; 2 uses
  %i.acl = extractelement <8 x i64> %i.ack, i64 0
  %i.acm = getelementptr [4 x i8], ptr %i.d, i64 %i.acl ; 2 uses
  %i.acn = getelementptr i8, ptr %i.acm, i64 -36
  %wide.load332 = load <8 x float>, ptr %i.acn, align 4, !tbaa !134
  %reverse333 = shufflevector <8 x float> %wide.load332, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.aco = trunc nuw <8 x i64> %i.ack to <8 x i32>
  %i.acp = uitofp nneg <8 x i32> %i.aco to <8 x float>
  %i.acq = fsub <8 x float> %i.acp, %broadcast.splat327
  %i.acr = getelementptr i8, ptr %i.acm, i64 -32  ; 2 uses
  %wide.load334 = load <8 x float>, ptr %i.acr, align 4, !tbaa !134
  %reverse335 = shufflevector <8 x float> %wide.load334, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.acs = fmul <8 x float> %reverse335, %i.acq
  %i.act = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.acj, <8 x float> %reverse333, <8 x float> %i.acs)
  %i.acu = shufflevector <8 x float> %i.act, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse336 = fmul <8 x float> %i.acu, %i.ach
  store <8 x float> %reverse336, ptr %i.acr, align 4, !tbaa !134
  %index.next337 = add nuw i64 %index329, 8       ; 2 uses
  %vec.ind.next338 = add nuw nsw <8 x i64> %vec.ind330, splat (i64 8)
  %vec.ind.next339 = add <8 x i32> %vec.ind331, splat (i32 8)
  %i.acv = icmp eq i64 %index.next337, %n.vec321
  br i1 %i.acv, label %middle.block340, label %vector.body328, !llvm.loop !284

middle.block340:                                  ; preds = %vector.body328
  %cmp.n341 = icmp eq i64 %i.abu, %n.vec321
  br i1 %cmp.n341, label %._crit_edge252.1.i, label %.lr.ph251.1.i.preheader

.lr.ph251.1.i.preheader:                          ; preds = %.lr.ph251.preheader.1.i, %middle.block340
  %indvars.iv318.1.i.ph = phi i64 [ 1, %.lr.ph251.preheader.1.i ], [ %i.acg, %middle.block340 ]
  br label %.lr.ph251.1.i

.lr.ph251.1.i:                                    ; preds = %.lr.ph251.1.i.preheader, %.lr.ph251.1.i
  %indvars.iv318.1.i = phi i64 [ %indvars.iv.next319.1.i, %.lr.ph251.1.i ], [ %indvars.iv318.1.i.ph, %.lr.ph251.1.i.preheader ] ; 3 uses
  %i.acw = trunc nuw nsw i64 %indvars.iv318.1.i to i32
  %i.acx = uitofp nneg i32 %i.acw to float
  %i.acy = fadd float %i.abs, %i.acx
  %i.acz = sub nuw nsw i64 %indvars.iv327.1.i, %indvars.iv318.1.i ; 2 uses
  %i.ada = getelementptr [4 x i8], ptr %i.d, i64 %i.acz ; 2 uses
  %i.adb = getelementptr i8, ptr %i.ada, i64 -8
  %i.adc = load float, ptr %i.adb, align 4, !tbaa !134
  %i.add = trunc nuw i64 %i.acz to i32
  %i.ade = uitofp nneg i32 %i.add to float
  %i.adf = fsub float %i.ade, %i.abs
  %i.adg = getelementptr i8, ptr %i.ada, i64 -4   ; 2 uses
  %i.adh = load float, ptr %i.adg, align 4, !tbaa !134
  %i.adi = fmul float %i.adh, %i.adf
  %i.adj = call float @llvm.fmuladd.f32(float %i.acy, float %i.adc, float %i.adi)
  %i.adk = fmul float %i.adj, %i.abz
  store float %i.adk, ptr %i.adg, align 4, !tbaa !134
  %indvars.iv.next319.1.i = add nuw nsw i64 %indvars.iv318.1.i, 1 ; 2 uses
  %exitcond324.1.not.i = icmp eq i64 %indvars.iv.next319.1.i, %indvars.iv325.1.i
  br i1 %exitcond324.1.not.i, label %._crit_edge252.1.i, label %.lr.ph251.1.i, !llvm.loop !285

._crit_edge252.1.i:                               ; preds = %.lr.ph251.1.i, %middle.block340
  %i.adl = fmul float %i.abt, %i.abz
  %i.adm = load float, ptr %i.d, align 16, !tbaa !134
  %i.adn = fmul float %i.adl, %i.adm              ; 2 uses
  store float %i.adn, ptr %i.d, align 16, !tbaa !134
  %indvars.iv.next328.1.i = add nuw nsw i64 %indvars.iv327.1.i, 1 ; 2 uses
  %indvars.iv.next326.1.i = add nuw nsw i64 %indvars.iv325.1.i, 1
  %exitcond333.1.not.i = icmp eq i64 %indvars.iv.next328.1.i, %i.ij
  %indvar.next317 = add i64 %indvar316, 1
  br i1 %exitcond333.1.not.i, label %._crit_edge256.1.i, label %.lr.ph251.preheader.1.i, !llvm.loop !279

._crit_edge256.1.i:                               ; preds = %._crit_edge252.1.i, %._crit_edge268.i
  %i.ado = phi float [ %i.abt, %._crit_edge268.i ], [ %i.adn, %._crit_edge252.1.i ]
  %i.adp = fneg float %i.ado
  %i.adq = load ptr, ptr %i.il, align 8, !tbaa !332 ; 4 uses
  %i.adr = getelementptr inbounds [4 x i8], ptr %i.adq, i64 %i.vb
  store float %i.adp, ptr %i.adr, align 4, !tbaa !134
  br i1 %i.hs, label %iter.check302, label %._crit_edge264.1.i

iter.check302:                                    ; preds = %._crit_edge256.1.i
  %invariant.gep440.i = getelementptr inbounds nuw [4 x i8], ptr %i.adq, i64 %i.vc ; 11 uses
  br i1 %min.iters.check282, label %.lr.ph259.1.i.preheader, label %vector.memcheck273

vector.memcheck273:                               ; preds = %iter.check302
  %scevgep274 = getelementptr i8, ptr %i.adq, i64 4
  %scevgep275 = getelementptr i8, ptr %scevgep274, i64 %i.um
  %scevgep276 = getelementptr i8, ptr %i.adq, i64 %i.ip
  %scevgep277 = getelementptr i8, ptr %scevgep276, i64 %i.um
  %bound0278 = icmp ult ptr %scevgep275, %scevgep184
  %bound1279 = icmp ult ptr %i.d, %scevgep277
  %found.conflict280 = and i1 %bound0278, %bound1279
  br i1 %found.conflict280, label %.lr.ph259.1.i.preheader, label %vector.main.loop.iter.check283

vector.main.loop.iter.check283:                   ; preds = %vector.memcheck273
  br i1 %min.iters.check284, label %vec.epilog.ph306, label %vector.body287

vector.body287:                                   ; preds = %vector.main.loop.iter.check283, %vector.body287
  %index288 = phi i64 [ %index.next297, %vector.body287 ], [ 0, %vector.main.loop.iter.check283 ] ; 2 uses
  %i.ads = or disjoint i64 %index288, 1           ; 2 uses
  %i.adt = getelementptr [4 x i8], ptr %i.d, i64 %i.ads ; 8 uses
  %i.adu = getelementptr i8, ptr %i.adt, i64 -4
  %i.adv = getelementptr i8, ptr %i.adt, i64 28
  %i.adw = getelementptr i8, ptr %i.adt, i64 60
  %i.adx = getelementptr i8, ptr %i.adt, i64 92
  %wide.load289 = load <8 x float>, ptr %i.adu, align 16, !tbaa !134, !alias.scope !335
  %wide.load290 = load <8 x float>, ptr %i.adv, align 16, !tbaa !134, !alias.scope !335
  %wide.load291 = load <8 x float>, ptr %i.adw, align 16, !tbaa !134, !alias.scope !335
  %wide.load292 = load <8 x float>, ptr %i.adx, align 16, !tbaa !134, !alias.scope !335
  %i.ady = getelementptr i8, ptr %i.adt, i64 32
  %i.adz = getelementptr i8, ptr %i.adt, i64 64
  %i.aea = getelementptr i8, ptr %i.adt, i64 96
  %wide.load293 = load <8 x float>, ptr %i.adt, align 4, !tbaa !134, !alias.scope !335
  %wide.load294 = load <8 x float>, ptr %i.ady, align 4, !tbaa !134, !alias.scope !335
  %wide.load295 = load <8 x float>, ptr %i.adz, align 4, !tbaa !134, !alias.scope !335
  %wide.load296 = load <8 x float>, ptr %i.aea, align 4, !tbaa !134, !alias.scope !335
  %i.aeb = fsub <8 x float> %wide.load289, %wide.load293
  %i.aec = fsub <8 x float> %wide.load290, %wide.load294
  %i.aed = fsub <8 x float> %wide.load291, %wide.load295
  %i.aee = fsub <8 x float> %wide.load292, %wide.load296
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %i.ads ; 4 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 32
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aef, i64 64
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aef, i64 96
  store <8 x float> %i.aeb, ptr %i.aef, align 4, !tbaa !134, !alias.scope !336, !noalias !335
  store <8 x float> %i.aec, ptr %i.aeg, align 4, !tbaa !134, !alias.scope !336, !noalias !335
  store <8 x float> %i.aed, ptr %i.aeh, align 4, !tbaa !134, !alias.scope !336, !noalias !335
  store <8 x float> %i.aee, ptr %i.aei, align 4, !tbaa !134, !alias.scope !336, !noalias !335
  %index.next297 = add nuw i64 %index288, 32      ; 2 uses
  %i.aej = icmp eq i64 %index.next297, %n.vec286
  br i1 %i.aej, label %middle.block298, label %vector.body287, !llvm.loop !289

middle.block298:                                  ; preds = %vector.body287
  br i1 %cmp.n299, label %._crit_edge260.1.i, label %vec.epilog.iter.check304

vec.epilog.iter.check304:                         ; preds = %middle.block298
  br i1 %min.epilog.iters.check305, label %.lr.ph259.1.i.preheader, label %vec.epilog.ph306, !prof !192

vec.epilog.ph306:                                 ; preds = %vector.main.loop.iter.check283, %vec.epilog.iter.check304
  %vec.epilog.resume.val300 = phi i64 [ %n.vec286, %vec.epilog.iter.check304 ], [ 0, %vector.main.loop.iter.check283 ]
  br label %vec.epilog.vector.body308

vec.epilog.vector.body308:                        ; preds = %vec.epilog.vector.body308, %vec.epilog.ph306
  %index309 = phi i64 [ %vec.epilog.resume.val300, %vec.epilog.ph306 ], [ %index.next312, %vec.epilog.vector.body308 ] ; 2 uses
  %i.aek = or disjoint i64 %index309, 1           ; 2 uses
  %i.ael = getelementptr [4 x i8], ptr %i.d, i64 %i.aek ; 2 uses
  %i.aem = getelementptr i8, ptr %i.ael, i64 -4
  %wide.load310 = load <8 x float>, ptr %i.aem, align 16, !tbaa !134, !alias.scope !335
  %wide.load311 = load <8 x float>, ptr %i.ael, align 4, !tbaa !134, !alias.scope !335
  %i.aen = fsub <8 x float> %wide.load310, %wide.load311
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %i.aek
  store <8 x float> %i.aen, ptr %i.aeo, align 4, !tbaa !134, !alias.scope !336, !noalias !335
  %index.next312 = add nuw i64 %index309, 8       ; 2 uses
  %i.aep = icmp eq i64 %index.next312, %n.vec307
  br i1 %i.aep, label %vec.epilog.middle.block313, label %vec.epilog.vector.body308, !llvm.loop !290

vec.epilog.middle.block313:                       ; preds = %vec.epilog.vector.body308
  br i1 %cmp.n314, label %._crit_edge260.1.i, label %.lr.ph259.1.i.preheader

.lr.ph259.1.i.preheader:                          ; preds = %vector.memcheck273, %iter.check302, %vec.epilog.iter.check304, %vec.epilog.middle.block313
  %indvars.iv334.1.i.ph = phi i64 [ 1, %iter.check302 ], [ 1, %vector.memcheck273 ], [ %i.iy, %vec.epilog.iter.check304 ], [ %i.iz, %vec.epilog.middle.block313 ] ; 4 uses
  %i.aeq = sub nsw i64 %i.ij, %indvars.iv334.1.i.ph
  %xtraiter525 = and i64 %i.aeq, 7                ; 2 uses
  %lcmp.mod526.not = icmp eq i64 %xtraiter525, 0
  br i1 %lcmp.mod526.not, label %.lr.ph259.1.i.prol.loopexit, label %.lr.ph259.1.i.prol

.lr.ph259.1.i.prol:                               ; preds = %.lr.ph259.1.i.preheader, %.lr.ph259.1.i.prol
  %indvars.iv334.1.i.prol = phi i64 [ %indvars.iv.next335.1.i.prol, %.lr.ph259.1.i.prol ], [ %indvars.iv334.1.i.ph, %.lr.ph259.1.i.preheader ] ; 3 uses
  %prol.iter527 = phi i64 [ %prol.iter527.next, %.lr.ph259.1.i.prol ], [ 0, %.lr.ph259.1.i.preheader ]
  %i.aer = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv334.1.i.prol ; 2 uses
  %i.aes = getelementptr i8, ptr %i.aer, i64 -4
  %i.aet = load float, ptr %i.aes, align 4, !tbaa !134
  %i.aeu = load float, ptr %i.aer, align 4, !tbaa !134
  %i.aev = fsub float %i.aet, %i.aeu
  %gep441.i.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %indvars.iv334.1.i.prol
  store float %i.aev, ptr %gep441.i.prol, align 4, !tbaa !134
  %indvars.iv.next335.1.i.prol = add nuw nsw i64 %indvars.iv334.1.i.prol, 1 ; 2 uses
  %prol.iter527.next = add i64 %prol.iter527, 1   ; 2 uses
  %prol.iter527.cmp.not = icmp eq i64 %prol.iter527.next, %xtraiter525
  br i1 %prol.iter527.cmp.not, label %.lr.ph259.1.i.prol.loopexit, label %.lr.ph259.1.i.prol, !llvm.loop !291

.lr.ph259.1.i.prol.loopexit:                      ; preds = %.lr.ph259.1.i.prol, %.lr.ph259.1.i.preheader
  %indvars.iv334.1.i.unr = phi i64 [ %indvars.iv334.1.i.ph, %.lr.ph259.1.i.preheader ], [ %indvars.iv.next335.1.i.prol, %.lr.ph259.1.i.prol ]
  %i.aew = sub nsw i64 %indvars.iv334.1.i.ph, %i.ij
  %i.aex = icmp ugt i64 %i.aew, -8
  br i1 %i.aex, label %._crit_edge260.1.i, label %.lr.ph259.1.i

.lr.ph259.1.i:                                    ; preds = %.lr.ph259.1.i.prol.loopexit, %.lr.ph259.1.i
  %indvars.iv334.1.i = phi i64 [ %indvars.iv.next335.1.i.7, %.lr.ph259.1.i ], [ %indvars.iv334.1.i.unr, %.lr.ph259.1.i.prol.loopexit ] ; 10 uses
  %i.aey = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv334.1.i ; 2 uses
  %i.aez = getelementptr i8, ptr %i.aey, i64 -4
  %i.afa = load float, ptr %i.aez, align 4, !tbaa !134
  %i.afb = load float, ptr %i.aey, align 4, !tbaa !134
  %i.afc = fsub float %i.afa, %i.afb
  %gep441.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %indvars.iv334.1.i
  store float %i.afc, ptr %gep441.i, align 4, !tbaa !134
  %indvars.iv.next335.1.i = add nuw nsw i64 %indvars.iv334.1.i, 1 ; 2 uses
  %i.afd = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.1.i ; 2 uses
  %i.afe = getelementptr i8, ptr %i.afd, i64 -4
  %i.aff = load float, ptr %i.afe, align 4, !tbaa !134
  %i.afg = load float, ptr %i.afd, align 4, !tbaa !134
  %i.afh = fsub float %i.aff, %i.afg
  %gep441.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %indvars.iv.next335.1.i
  store float %i.afh, ptr %gep441.i.1, align 4, !tbaa !134
  %indvars.iv.next335.1.i.1 = add nuw nsw i64 %indvars.iv334.1.i, 2 ; 2 uses
  %i.afi = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.1.i.1 ; 2 uses
  %i.afj = getelementptr i8, ptr %i.afi, i64 -4
  %i.afk = load float, ptr %i.afj, align 4, !tbaa !134
  %i.afl = load float, ptr %i.afi, align 4, !tbaa !134
  %i.afm = fsub float %i.afk, %i.afl
  %gep441.i.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %indvars.iv.next335.1.i.1
  store float %i.afm, ptr %gep441.i.2, align 4, !tbaa !134
  %indvars.iv.next335.1.i.2 = add nuw nsw i64 %indvars.iv334.1.i, 3 ; 2 uses
  %i.afn = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.1.i.2 ; 2 uses
  %i.afo = getelementptr i8, ptr %i.afn, i64 -4
  %i.afp = load float, ptr %i.afo, align 4, !tbaa !134
  %i.afq = load float, ptr %i.afn, align 4, !tbaa !134
  %i.afr = fsub float %i.afp, %i.afq
  %gep441.i.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %indvars.iv.next335.1.i.2
  store float %i.afr, ptr %gep441.i.3, align 4, !tbaa !134
  %indvars.iv.next335.1.i.3 = add nuw nsw i64 %indvars.iv334.1.i, 4 ; 2 uses
  %i.afs = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.1.i.3 ; 2 uses
  %i.aft = getelementptr i8, ptr %i.afs, i64 -4
  %i.afu = load float, ptr %i.aft, align 4, !tbaa !134
  %i.afv = load float, ptr %i.afs, align 4, !tbaa !134
  %i.afw = fsub float %i.afu, %i.afv
  %gep441.i.4 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %indvars.iv.next335.1.i.3
  store float %i.afw, ptr %gep441.i.4, align 4, !tbaa !134
  %indvars.iv.next335.1.i.4 = add nuw nsw i64 %indvars.iv334.1.i, 5 ; 2 uses
  %i.afx = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.1.i.4 ; 2 uses
  %i.afy = getelementptr i8, ptr %i.afx, i64 -4
  %i.afz = load float, ptr %i.afy, align 4, !tbaa !134
  %i.aga = load float, ptr %i.afx, align 4, !tbaa !134
  %i.agb = fsub float %i.afz, %i.aga
  %gep441.i.5 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %indvars.iv.next335.1.i.4
  store float %i.agb, ptr %gep441.i.5, align 4, !tbaa !134
  %indvars.iv.next335.1.i.5 = add nuw nsw i64 %indvars.iv334.1.i, 6 ; 2 uses
  %i.agc = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.1.i.5 ; 2 uses
  %i.agd = getelementptr i8, ptr %i.agc, i64 -4
  %i.age = load float, ptr %i.agd, align 4, !tbaa !134
  %i.agf = load float, ptr %i.agc, align 4, !tbaa !134
  %i.agg = fsub float %i.age, %i.agf
  %gep441.i.6 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %indvars.iv.next335.1.i.5
  store float %i.agg, ptr %gep441.i.6, align 4, !tbaa !134
  %indvars.iv.next335.1.i.6 = add nuw nsw i64 %indvars.iv334.1.i, 7 ; 2 uses
  %i.agh = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.1.i.6 ; 2 uses
  %i.agi = getelementptr i8, ptr %i.agh, i64 -4
  %i.agj = load float, ptr %i.agi, align 4, !tbaa !134
  %i.agk = load float, ptr %i.agh, align 4, !tbaa !134
  %i.agl = fsub float %i.agj, %i.agk
  %gep441.i.7 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %indvars.iv.next335.1.i.6
  store float %i.agl, ptr %gep441.i.7, align 4, !tbaa !134
  %indvars.iv.next335.1.i.7 = add nuw nsw i64 %indvars.iv334.1.i, 8 ; 2 uses
  %exitcond338.1.not.i.7 = icmp eq i64 %indvars.iv.next335.1.i.7, %i.ij
  br i1 %exitcond338.1.not.i.7, label %._crit_edge260.1.i, label %.lr.ph259.1.i, !llvm.loop !292

._crit_edge260.1.i:                               ; preds = %.lr.ph259.1.i.prol.loopexit, %.lr.ph259.1.i, %vec.epilog.middle.block313, %middle.block298
  %i.agm = fmul float %i.abs, %i.hv
  %i.agn = load float, ptr %i.hy, align 4, !tbaa !134
  %i.ago = fmul float %i.agm, %i.agn
  store float %i.ago, ptr %i.hq, align 4, !tbaa !134
  br i1 %i.hz, label %.lr.ph263.1.i.preheader, label %._crit_edge264.1.thread.i

.lr.ph263.1.i.preheader:                          ; preds = %._crit_edge260.1.i
  br i1 %min.iters.check249, label %.lr.ph263.1.i.preheader508, label %vector.ph250

vector.ph250:                                     ; preds = %.lr.ph263.1.i.preheader
  %broadcast.splatinsert252 = insertelement <8 x float> poison, float %i.abs, i64 0
  %broadcast.splat253 = shufflevector <8 x float> %broadcast.splatinsert252, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body258

vector.body258:                                   ; preds = %vector.body258, %vector.ph250
  %index259 = phi i64 [ 0, %vector.ph250 ], [ %index.next267, %vector.body258 ]
  %vec.ind260 = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph250 ], [ %vec.ind.next268, %vector.body258 ] ; 2 uses
  %vec.ind261 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph250 ], [ %vec.ind.next269, %vector.body258 ] ; 2 uses
  %i.agp = uitofp nneg <8 x i32> %vec.ind261 to <8 x float>
  %i.agq = fadd <8 x float> %broadcast.splat253, %i.agp
  %i.agr = sub nuw nsw <8 x i64> %broadcast.splat255, %vec.ind260 ; 2 uses
  %i.ags = extractelement <8 x i64> %i.agr, i64 0
  %i.agt = getelementptr [4 x i8], ptr %i.d, i64 %i.ags ; 2 uses
  %i.agu = getelementptr i8, ptr %i.agt, i64 -36
  %wide.load262 = load <8 x float>, ptr %i.agu, align 4, !tbaa !134
  %reverse263 = shufflevector <8 x float> %wide.load262, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.agv = trunc nuw nsw <8 x i64> %i.agr to <8 x i32>
  %11 = uitofp nneg <8 x i32> %i.agv to <8 x float>
  %i.agw = fsub <8 x float> %11, %broadcast.splat253
  %i.agx = getelementptr i8, ptr %i.agt, i64 -32  ; 2 uses
  %wide.load264 = load <8 x float>, ptr %i.agx, align 4, !tbaa !134
  %reverse265 = shufflevector <8 x float> %wide.load264, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.agy = fmul <8 x float> %reverse265, %i.agw
  %i.agz = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.agq, <8 x float> %reverse263, <8 x float> %i.agy)
  %i.aha = shufflevector <8 x float> %i.agz, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse266 = fmul <8 x float> %i.aha, %i.jc
  store <8 x float> %reverse266, ptr %i.agx, align 4, !tbaa !134
  %index.next267 = add nuw i64 %index259, 8       ; 2 uses
  %vec.ind.next268 = add nuw nsw <8 x i64> %vec.ind260, splat (i64 8)
  %vec.ind.next269 = add <8 x i32> %vec.ind261, splat (i32 8)
  %i.ahb = icmp eq i64 %index.next267, %n.vec251
  br i1 %i.ahb, label %middle.block270, label %vector.body258, !llvm.loop !293

middle.block270:                                  ; preds = %vector.body258
  br i1 %cmp.n271, label %._crit_edge264.1.thread.i, label %.lr.ph263.1.i.preheader508

.lr.ph263.1.i.preheader508:                       ; preds = %.lr.ph263.1.i.preheader, %middle.block270
  %indvars.iv339.1.i.ph = phi i64 [ 1, %.lr.ph263.1.i.preheader ], [ %i.jb, %middle.block270 ]
  br label %.lr.ph263.1.i

.lr.ph263.1.i:                                    ; preds = %.lr.ph263.1.i.preheader508, %.lr.ph263.1.i
  %indvars.iv339.1.i = phi i64 [ %indvars.iv.next340.1.i, %.lr.ph263.1.i ], [ %indvars.iv339.1.i.ph, %.lr.ph263.1.i.preheader508 ] ; 3 uses
  %i.ahc = trunc nuw nsw i64 %indvars.iv339.1.i to i32
  %i.ahd = uitofp nneg i32 %i.ahc to float
  %i.ahe = fadd float %i.abs, %i.ahd
  %i.ahf = sub nuw nsw i64 %i.hw, %indvars.iv339.1.i ; 2 uses
  %i.ahg = getelementptr [4 x i8], ptr %i.d, i64 %i.ahf ; 2 uses
  %i.ahh = getelementptr i8, ptr %i.ahg, i64 -8
  %i.ahi = load float, ptr %i.ahh, align 4, !tbaa !134
  %i.ahj = trunc nuw nsw i64 %i.ahf to i32
  %12 = uitofp nneg i32 %i.ahj to float
  %i.ahk = fsub float %12, %i.abs
  %i.ahl = getelementptr i8, ptr %i.ahg, i64 -4   ; 2 uses
  %i.ahm = load float, ptr %i.ahl, align 4, !tbaa !134
  %i.ahn = fmul float %i.ahm, %i.ahk
  %i.aho = call float @llvm.fmuladd.f32(float %i.ahe, float %i.ahi, float %i.ahn)
  %i.ahp = fmul float %i.aho, %i.hv
  store float %i.ahp, ptr %i.ahl, align 4, !tbaa !134
  %indvars.iv.next340.1.i = add nuw nsw i64 %indvars.iv339.1.i, 1 ; 2 uses
  %exitcond343.1.not.i = icmp eq i64 %indvars.iv.next340.1.i, %wide.trip.count342.i
  br i1 %exitcond343.1.not.i, label %._crit_edge264.1.thread.i, label %.lr.ph263.1.i, !llvm.loop !294

._crit_edge264.1.thread.i:                        ; preds = %.lr.ph263.1.i, %middle.block270, %._crit_edge260.1.i
  %i.ahq = fmul float %i.abt, %i.hv
  %i.ahr = load float, ptr %i.d, align 16, !tbaa !134
  %i.ahs = fmul float %i.ahq, %i.ahr
  store float %i.ahs, ptr %i.d, align 16, !tbaa !134
  br label %._crit_edge268.1.i

._crit_edge264.1.i:                               ; preds = %._crit_edge256.1.i, %._crit_edge256.1.thread.i
  %.ph.i = phi float [ %i.abs, %._crit_edge256.1.i ], [ %i.aax, %._crit_edge256.1.thread.i ]
  %.ph433.i = phi float [ %i.abt, %._crit_edge256.1.i ], [ %i.aay, %._crit_edge256.1.thread.i ]
  %i.aht = fmul float %.ph.i, %i.hv
  %i.ahu = load float, ptr %i.hy, align 4, !tbaa !134
  %i.ahv = fmul float %i.aht, %i.ahu
  store float %i.ahv, ptr %i.hq, align 4, !tbaa !134
  %i.ahw = fmul float %.ph433.i, %i.hv
  %i.ahx = load float, ptr %i.d, align 16, !tbaa !134
  %i.ahy = fmul float %i.ahw, %i.ahx
  store float %i.ahy, ptr %i.d, align 16, !tbaa !134
  br i1 %i.ia, label %._crit_edge268.1.i, label %._crit_edge256.2.thread.i

._crit_edge256.2.thread.i:                        ; preds = %._crit_edge264.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.aia = load float, ptr %i.ahz, align 4, !tbaa !134 ; 3 uses
  store float 0.000000e+00, ptr %i.hq, align 4, !tbaa !134
  store float %i.aia, ptr %i.p, align 4, !tbaa !134
  %i.aib = fsub float 1.000000e+00, %i.aia        ; 3 uses
  store float %i.aib, ptr %i.d, align 16, !tbaa !134
  %i.aic = fneg float %i.aib
  %i.aid = load ptr, ptr %i.im, align 8, !tbaa !332
  %i.aie = getelementptr inbounds [4 x i8], ptr %i.aid, i64 %i.vb
  store float %i.aic, ptr %i.aie, align 4, !tbaa !134
  br label %._crit_edge264.2.i

._crit_edge268.1.i:                               ; preds = %._crit_edge264.1.i, %._crit_edge264.1.thread.i
  %i.aif = load ptr, ptr %i.in, align 8, !tbaa !332
  %scevgep344.1.i = getelementptr nuw i8, ptr %i.aif, i64 %i.uu
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep344.1.i, ptr nonnull align 16 %i.d, i64 %i.ik, i1 false), !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  %i.aig = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.aih = load float, ptr %i.aig, align 4, !tbaa !134 ; 11 uses
  store float 0.000000e+00, ptr %i.hq, align 4, !tbaa !134
  store float %i.aih, ptr %i.p, align 4, !tbaa !134
  %i.aii = fsub float 1.000000e+00, %i.aih        ; 5 uses
  store float %i.aii, ptr %i.d, align 16, !tbaa !134
  br i1 %i.hr, label %.lr.ph251.preheader.2.i.preheader, label %._crit_edge256.2.i

.lr.ph251.preheader.2.i.preheader:                ; preds = %._crit_edge268.1.i
  %broadcast.splatinsert231 = insertelement <8 x float> poison, float %i.aih, i64 0
  %broadcast.splat232 = shufflevector <8 x float> %broadcast.splatinsert231, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph251.preheader.2.i

.lr.ph251.preheader.2.i:                          ; preds = %.lr.ph251.preheader.2.i.preheader, %._crit_edge252.2.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge252.2.i ], [ 0, %.lr.ph251.preheader.2.i.preheader ] ; 2 uses
  %indvars.iv327.2.i = phi i64 [ %indvars.iv.next328.2.i, %._crit_edge252.2.i ], [ 3, %.lr.ph251.preheader.2.i.preheader ] ; 5 uses
  %indvars.iv325.2.i = phi i64 [ %indvars.iv.next326.2.i, %._crit_edge252.2.i ], [ 2, %.lr.ph251.preheader.2.i.preheader ] ; 2 uses
  %i.aij = add i64 %indvar, 1                     ; 3 uses
  %i.aik = add nsw i64 %indvars.iv327.2.i, -1     ; 2 uses
  %i.ail = trunc nuw nsw i64 %i.aik to i32
  %i.aim = sitofp i32 %i.ail to double
  %i.ain = fdiv double 1.000000e+00, %i.aim
  %i.aio = fptrunc double %i.ain to float         ; 4 uses
  %i.aip = fmul float %i.aih, %i.aio
  %i.aiq = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv327.2.i
  %i.air = getelementptr i8, ptr %i.aiq, i64 -8
  %i.ais = load float, ptr %i.air, align 4, !tbaa !134
  %i.ait = fmul float %i.ais, %i.aip
  %i.aiu = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.aik
  store float %i.ait, ptr %i.aiu, align 4, !tbaa !134
  %min.iters.check224 = icmp ult i64 %i.aij, 8
  br i1 %min.iters.check224, label %.lr.ph251.2.i.preheader, label %vector.ph225

vector.ph225:                                     ; preds = %.lr.ph251.preheader.2.i
  %n.vec226 = and i64 %i.aij, -8                  ; 3 uses
  %i.aiv = or disjoint i64 %n.vec226, 1
  %broadcast.splatinsert227 = insertelement <8 x i64> poison, i64 %indvars.iv327.2.i, i64 0
  %broadcast.splat228 = shufflevector <8 x i64> %broadcast.splatinsert227, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert229 = insertelement <8 x float> poison, float %i.aio, i64 0
  %i.aiw = shufflevector <8 x float> %broadcast.splatinsert229, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph225
  %index234 = phi i64 [ 0, %vector.ph225 ], [ %index.next242, %vector.body233 ]
  %vec.ind235 = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph225 ], [ %vec.ind.next243, %vector.body233 ] ; 2 uses
  %vec.ind236 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph225 ], [ %vec.ind.next244, %vector.body233 ] ; 2 uses
  %i.aix = uitofp nneg <8 x i32> %vec.ind236 to <8 x float>
  %i.aiy = fadd <8 x float> %broadcast.splat232, %i.aix
  %i.aiz = sub nuw nsw <8 x i64> %broadcast.splat228, %vec.ind235 ; 2 uses
  %i.aja = extractelement <8 x i64> %i.aiz, i64 0
  %i.ajb = getelementptr [4 x i8], ptr %i.d, i64 %i.aja ; 2 uses
  %i.ajc = getelementptr i8, ptr %i.ajb, i64 -36
  %wide.load237 = load <8 x float>, ptr %i.ajc, align 4, !tbaa !134
  %reverse238 = shufflevector <8 x float> %wide.load237, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ajd = trunc nuw <8 x i64> %i.aiz to <8 x i32>
  %i.aje = uitofp nneg <8 x i32> %i.ajd to <8 x float>
  %i.ajf = fsub <8 x float> %i.aje, %broadcast.splat232
  %i.ajg = getelementptr i8, ptr %i.ajb, i64 -32  ; 2 uses
  %wide.load239 = load <8 x float>, ptr %i.ajg, align 4, !tbaa !134
  %reverse240 = shufflevector <8 x float> %wide.load239, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ajh = fmul <8 x float> %reverse240, %i.ajf
  %i.aji = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.aiy, <8 x float> %reverse238, <8 x float> %i.ajh)
  %i.ajj = shufflevector <8 x float> %i.aji, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse241 = fmul <8 x float> %i.ajj, %i.aiw
  store <8 x float> %reverse241, ptr %i.ajg, align 4, !tbaa !134
  %index.next242 = add nuw i64 %index234, 8       ; 2 uses
  %vec.ind.next243 = add nuw nsw <8 x i64> %vec.ind235, splat (i64 8)
  %vec.ind.next244 = add <8 x i32> %vec.ind236, splat (i32 8)
  %i.ajk = icmp eq i64 %index.next242, %n.vec226
  br i1 %i.ajk, label %middle.block245, label %vector.body233, !llvm.loop !295

middle.block245:                                  ; preds = %vector.body233
  %cmp.n246 = icmp eq i64 %i.aij, %n.vec226
  br i1 %cmp.n246, label %._crit_edge252.2.i, label %.lr.ph251.2.i.preheader

.lr.ph251.2.i.preheader:                          ; preds = %.lr.ph251.preheader.2.i, %middle.block245
  %indvars.iv318.2.i.ph = phi i64 [ 1, %.lr.ph251.preheader.2.i ], [ %i.aiv, %middle.block245 ]
  br label %.lr.ph251.2.i

.lr.ph251.2.i:                                    ; preds = %.lr.ph251.2.i.preheader, %.lr.ph251.2.i
  %indvars.iv318.2.i = phi i64 [ %indvars.iv.next319.2.i, %.lr.ph251.2.i ], [ %indvars.iv318.2.i.ph, %.lr.ph251.2.i.preheader ] ; 3 uses
  %i.ajl = trunc nuw nsw i64 %indvars.iv318.2.i to i32
  %i.ajm = uitofp nneg i32 %i.ajl to float
  %i.ajn = fadd float %i.aih, %i.ajm
  %i.ajo = sub nuw nsw i64 %indvars.iv327.2.i, %indvars.iv318.2.i ; 2 uses
  %i.ajp = getelementptr [4 x i8], ptr %i.d, i64 %i.ajo ; 2 uses
  %i.ajq = getelementptr i8, ptr %i.ajp, i64 -8
  %i.ajr = load float, ptr %i.ajq, align 4, !tbaa !134
  %i.ajs = trunc nuw i64 %i.ajo to i32
  %i.ajt = uitofp nneg i32 %i.ajs to float
  %i.aju = fsub float %i.ajt, %i.aih
  %i.ajv = getelementptr i8, ptr %i.ajp, i64 -4   ; 2 uses
  %i.ajw = load float, ptr %i.ajv, align 4, !tbaa !134
  %i.ajx = fmul float %i.ajw, %i.aju
  %i.ajy = call float @llvm.fmuladd.f32(float %i.ajn, float %i.ajr, float %i.ajx)
  %i.ajz = fmul float %i.ajy, %i.aio
  store float %i.ajz, ptr %i.ajv, align 4, !tbaa !134
  %indvars.iv.next319.2.i = add nuw nsw i64 %indvars.iv318.2.i, 1 ; 2 uses
  %exitcond324.2.not.i = icmp eq i64 %indvars.iv.next319.2.i, %indvars.iv325.2.i
  br i1 %exitcond324.2.not.i, label %._crit_edge252.2.i, label %.lr.ph251.2.i, !llvm.loop !296

._crit_edge252.2.i:                               ; preds = %.lr.ph251.2.i, %middle.block245
  %i.aka = fmul float %i.aii, %i.aio
  %i.akb = load float, ptr %i.d, align 16, !tbaa !134
  %i.akc = fmul float %i.aka, %i.akb              ; 2 uses
  store float %i.akc, ptr %i.d, align 16, !tbaa !134
  %indvars.iv.next328.2.i = add nuw nsw i64 %indvars.iv327.2.i, 1 ; 2 uses
  %indvars.iv.next326.2.i = add nuw nsw i64 %indvars.iv325.2.i, 1
  %exitcond333.2.not.i = icmp eq i64 %indvars.iv.next328.2.i, %i.ij
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond333.2.not.i, label %._crit_edge256.2.i, label %.lr.ph251.preheader.2.i, !llvm.loop !279

._crit_edge256.2.i:                               ; preds = %._crit_edge252.2.i, %._crit_edge268.1.i
  %i.akd = phi float [ %i.aii, %._crit_edge268.1.i ], [ %i.akc, %._crit_edge252.2.i ]
  %i.ake = fneg float %i.akd
  %i.akf = load ptr, ptr %i.im, align 8, !tbaa !332 ; 4 uses
  %i.akg = getelementptr inbounds [4 x i8], ptr %i.akf, i64 %i.vb
  store float %i.ake, ptr %i.akg, align 4, !tbaa !134
  br i1 %i.hs, label %iter.check209, label %._crit_edge264.2.i

iter.check209:                                    ; preds = %._crit_edge256.2.i
  %invariant.gep442.i = getelementptr inbounds nuw [4 x i8], ptr %i.akf, i64 %i.vc ; 11 uses
  br i1 %min.iters.check189, label %.lr.ph259.2.i.preheader, label %vector.memcheck179

vector.memcheck179:                               ; preds = %iter.check209
  %scevgep180 = getelementptr i8, ptr %i.akf, i64 4
  %scevgep181 = getelementptr i8, ptr %scevgep180, i64 %i.uq
  %scevgep182 = getelementptr i8, ptr %i.akf, i64 %i.ip
  %scevgep183 = getelementptr i8, ptr %scevgep182, i64 %i.uq
  %bound0185 = icmp ult ptr %scevgep181, %scevgep184
  %bound1186 = icmp ult ptr %i.d, %scevgep183
  %found.conflict187 = and i1 %bound0185, %bound1186
  br i1 %found.conflict187, label %.lr.ph259.2.i.preheader, label %vector.main.loop.iter.check190

vector.main.loop.iter.check190:                   ; preds = %vector.memcheck179
  br i1 %min.iters.check191, label %vec.epilog.ph213, label %vector.body194

vector.body194:                                   ; preds = %vector.main.loop.iter.check190, %vector.body194
  %index195 = phi i64 [ %index.next204, %vector.body194 ], [ 0, %vector.main.loop.iter.check190 ] ; 2 uses
  %i.akh = or disjoint i64 %index195, 1           ; 2 uses
  %i.aki = getelementptr [4 x i8], ptr %i.d, i64 %i.akh ; 8 uses
  %i.akj = getelementptr i8, ptr %i.aki, i64 -4
  %i.akk = getelementptr i8, ptr %i.aki, i64 28
  %i.akl = getelementptr i8, ptr %i.aki, i64 60
  %i.akm = getelementptr i8, ptr %i.aki, i64 92
  %wide.load196 = load <8 x float>, ptr %i.akj, align 16, !tbaa !134, !alias.scope !337
  %wide.load197 = load <8 x float>, ptr %i.akk, align 16, !tbaa !134, !alias.scope !337
  %wide.load198 = load <8 x float>, ptr %i.akl, align 16, !tbaa !134, !alias.scope !337
  %wide.load199 = load <8 x float>, ptr %i.akm, align 16, !tbaa !134, !alias.scope !337
  %i.akn = getelementptr i8, ptr %i.aki, i64 32
  %i.ako = getelementptr i8, ptr %i.aki, i64 64
  %i.akp = getelementptr i8, ptr %i.aki, i64 96
  %wide.load200 = load <8 x float>, ptr %i.aki, align 4, !tbaa !134, !alias.scope !337
  %wide.load201 = load <8 x float>, ptr %i.akn, align 4, !tbaa !134, !alias.scope !337
  %wide.load202 = load <8 x float>, ptr %i.ako, align 4, !tbaa !134, !alias.scope !337
  %wide.load203 = load <8 x float>, ptr %i.akp, align 4, !tbaa !134, !alias.scope !337
  %i.akq = fsub <8 x float> %wide.load196, %wide.load200
  %i.akr = fsub <8 x float> %wide.load197, %wide.load201
  %i.aks = fsub <8 x float> %wide.load198, %wide.load202
  %i.akt = fsub <8 x float> %wide.load199, %wide.load203
  %i.aku = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %i.akh ; 4 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aku, i64 32
  %i.akw = getelementptr inbounds nuw i8, ptr %i.aku, i64 64
  %i.akx = getelementptr inbounds nuw i8, ptr %i.aku, i64 96
  store <8 x float> %i.akq, ptr %i.aku, align 4, !tbaa !134, !alias.scope !338, !noalias !337
  store <8 x float> %i.akr, ptr %i.akv, align 4, !tbaa !134, !alias.scope !338, !noalias !337
  store <8 x float> %i.aks, ptr %i.akw, align 4, !tbaa !134, !alias.scope !338, !noalias !337
  store <8 x float> %i.akt, ptr %i.akx, align 4, !tbaa !134, !alias.scope !338, !noalias !337
  %index.next204 = add nuw i64 %index195, 32      ; 2 uses
  %i.aky = icmp eq i64 %index.next204, %n.vec193
  br i1 %i.aky, label %middle.block205, label %vector.body194, !llvm.loop !300

middle.block205:                                  ; preds = %vector.body194
  br i1 %cmp.n206, label %._crit_edge260.2.i, label %vec.epilog.iter.check211

vec.epilog.iter.check211:                         ; preds = %middle.block205
  br i1 %min.epilog.iters.check212, label %.lr.ph259.2.i.preheader, label %vec.epilog.ph213, !prof !192

vec.epilog.ph213:                                 ; preds = %vector.main.loop.iter.check190, %vec.epilog.iter.check211
  %vec.epilog.resume.val207 = phi i64 [ %n.vec193, %vec.epilog.iter.check211 ], [ 0, %vector.main.loop.iter.check190 ]
  br label %vec.epilog.vector.body215

vec.epilog.vector.body215:                        ; preds = %vec.epilog.vector.body215, %vec.epilog.ph213
  %index216 = phi i64 [ %vec.epilog.resume.val207, %vec.epilog.ph213 ], [ %index.next219, %vec.epilog.vector.body215 ] ; 2 uses
  %i.akz = or disjoint i64 %index216, 1           ; 2 uses
  %i.ala = getelementptr [4 x i8], ptr %i.d, i64 %i.akz ; 2 uses
  %i.alb = getelementptr i8, ptr %i.ala, i64 -4
  %wide.load217 = load <8 x float>, ptr %i.alb, align 16, !tbaa !134, !alias.scope !337
  %wide.load218 = load <8 x float>, ptr %i.ala, align 4, !tbaa !134, !alias.scope !337
  %i.alc = fsub <8 x float> %wide.load217, %wide.load218
  %i.ald = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %i.akz
  store <8 x float> %i.alc, ptr %i.ald, align 4, !tbaa !134, !alias.scope !338, !noalias !337
  %index.next219 = add nuw i64 %index216, 8       ; 2 uses
  %i.ale = icmp eq i64 %index.next219, %n.vec214
  br i1 %i.ale, label %vec.epilog.middle.block220, label %vec.epilog.vector.body215, !llvm.loop !301

vec.epilog.middle.block220:                       ; preds = %vec.epilog.vector.body215
  br i1 %cmp.n221, label %._crit_edge260.2.i, label %.lr.ph259.2.i.preheader

.lr.ph259.2.i.preheader:                          ; preds = %vector.memcheck179, %iter.check209, %vec.epilog.iter.check211, %vec.epilog.middle.block220
  %indvars.iv334.2.i.ph = phi i64 [ 1, %iter.check209 ], [ 1, %vector.memcheck179 ], [ %i.je, %vec.epilog.iter.check211 ], [ %i.jf, %vec.epilog.middle.block220 ] ; 4 uses
  %i.alf = sub nsw i64 %i.ij, %indvars.iv334.2.i.ph
  %xtraiter528 = and i64 %i.alf, 7                ; 2 uses
  %lcmp.mod529.not = icmp eq i64 %xtraiter528, 0
  br i1 %lcmp.mod529.not, label %.lr.ph259.2.i.prol.loopexit, label %.lr.ph259.2.i.prol

.lr.ph259.2.i.prol:                               ; preds = %.lr.ph259.2.i.preheader, %.lr.ph259.2.i.prol
  %indvars.iv334.2.i.prol = phi i64 [ %indvars.iv.next335.2.i.prol, %.lr.ph259.2.i.prol ], [ %indvars.iv334.2.i.ph, %.lr.ph259.2.i.preheader ] ; 3 uses
  %prol.iter530 = phi i64 [ %prol.iter530.next, %.lr.ph259.2.i.prol ], [ 0, %.lr.ph259.2.i.preheader ]
  %i.alg = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv334.2.i.prol ; 2 uses
  %i.alh = getelementptr i8, ptr %i.alg, i64 -4
  %i.ali = load float, ptr %i.alh, align 4, !tbaa !134
  %i.alj = load float, ptr %i.alg, align 4, !tbaa !134
  %i.alk = fsub float %i.ali, %i.alj
  %gep443.i.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %indvars.iv334.2.i.prol
  store float %i.alk, ptr %gep443.i.prol, align 4, !tbaa !134
  %indvars.iv.next335.2.i.prol = add nuw nsw i64 %indvars.iv334.2.i.prol, 1 ; 2 uses
  %prol.iter530.next = add i64 %prol.iter530, 1   ; 2 uses
  %prol.iter530.cmp.not = icmp eq i64 %prol.iter530.next, %xtraiter528
  br i1 %prol.iter530.cmp.not, label %.lr.ph259.2.i.prol.loopexit, label %.lr.ph259.2.i.prol, !llvm.loop !302

.lr.ph259.2.i.prol.loopexit:                      ; preds = %.lr.ph259.2.i.prol, %.lr.ph259.2.i.preheader
  %indvars.iv334.2.i.unr = phi i64 [ %indvars.iv334.2.i.ph, %.lr.ph259.2.i.preheader ], [ %indvars.iv.next335.2.i.prol, %.lr.ph259.2.i.prol ]
  %i.all = sub nsw i64 %indvars.iv334.2.i.ph, %i.ij
  %i.alm = icmp ugt i64 %i.all, -8
  br i1 %i.alm, label %._crit_edge260.2.i, label %.lr.ph259.2.i

.lr.ph259.2.i:                                    ; preds = %.lr.ph259.2.i.prol.loopexit, %.lr.ph259.2.i
  %indvars.iv334.2.i = phi i64 [ %indvars.iv.next335.2.i.7, %.lr.ph259.2.i ], [ %indvars.iv334.2.i.unr, %.lr.ph259.2.i.prol.loopexit ] ; 10 uses
  %i.aln = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv334.2.i ; 2 uses
  %i.alo = getelementptr i8, ptr %i.aln, i64 -4
  %i.alp = load float, ptr %i.alo, align 4, !tbaa !134
  %i.alq = load float, ptr %i.aln, align 4, !tbaa !134
  %i.alr = fsub float %i.alp, %i.alq
  %gep443.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %indvars.iv334.2.i
  store float %i.alr, ptr %gep443.i, align 4, !tbaa !134
  %indvars.iv.next335.2.i = add nuw nsw i64 %indvars.iv334.2.i, 1 ; 2 uses
  %i.als = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.2.i ; 2 uses
  %i.alt = getelementptr i8, ptr %i.als, i64 -4
  %i.alu = load float, ptr %i.alt, align 4, !tbaa !134
  %i.alv = load float, ptr %i.als, align 4, !tbaa !134
  %i.alw = fsub float %i.alu, %i.alv
  %gep443.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %indvars.iv.next335.2.i
  store float %i.alw, ptr %gep443.i.1, align 4, !tbaa !134
  %indvars.iv.next335.2.i.1 = add nuw nsw i64 %indvars.iv334.2.i, 2 ; 2 uses
  %i.alx = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.2.i.1 ; 2 uses
  %i.aly = getelementptr i8, ptr %i.alx, i64 -4
  %i.alz = load float, ptr %i.aly, align 4, !tbaa !134
  %i.ama = load float, ptr %i.alx, align 4, !tbaa !134
  %i.amb = fsub float %i.alz, %i.ama
  %gep443.i.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %indvars.iv.next335.2.i.1
  store float %i.amb, ptr %gep443.i.2, align 4, !tbaa !134
  %indvars.iv.next335.2.i.2 = add nuw nsw i64 %indvars.iv334.2.i, 3 ; 2 uses
  %i.amc = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.2.i.2 ; 2 uses
  %i.amd = getelementptr i8, ptr %i.amc, i64 -4
  %i.ame = load float, ptr %i.amd, align 4, !tbaa !134
  %i.amf = load float, ptr %i.amc, align 4, !tbaa !134
  %i.amg = fsub float %i.ame, %i.amf
  %gep443.i.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %indvars.iv.next335.2.i.2
  store float %i.amg, ptr %gep443.i.3, align 4, !tbaa !134
  %indvars.iv.next335.2.i.3 = add nuw nsw i64 %indvars.iv334.2.i, 4 ; 2 uses
  %i.amh = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.2.i.3 ; 2 uses
  %i.ami = getelementptr i8, ptr %i.amh, i64 -4
  %i.amj = load float, ptr %i.ami, align 4, !tbaa !134
  %i.amk = load float, ptr %i.amh, align 4, !tbaa !134
  %i.aml = fsub float %i.amj, %i.amk
  %gep443.i.4 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %indvars.iv.next335.2.i.3
  store float %i.aml, ptr %gep443.i.4, align 4, !tbaa !134
  %indvars.iv.next335.2.i.4 = add nuw nsw i64 %indvars.iv334.2.i, 5 ; 2 uses
  %i.amm = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.2.i.4 ; 2 uses
  %i.amn = getelementptr i8, ptr %i.amm, i64 -4
  %i.amo = load float, ptr %i.amn, align 4, !tbaa !134
  %i.amp = load float, ptr %i.amm, align 4, !tbaa !134
  %i.amq = fsub float %i.amo, %i.amp
  %gep443.i.5 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %indvars.iv.next335.2.i.4
  store float %i.amq, ptr %gep443.i.5, align 4, !tbaa !134
  %indvars.iv.next335.2.i.5 = add nuw nsw i64 %indvars.iv334.2.i, 6 ; 2 uses
  %i.amr = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.2.i.5 ; 2 uses
  %i.ams = getelementptr i8, ptr %i.amr, i64 -4
  %i.amt = load float, ptr %i.ams, align 4, !tbaa !134
  %i.amu = load float, ptr %i.amr, align 4, !tbaa !134
  %i.amv = fsub float %i.amt, %i.amu
  %gep443.i.6 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %indvars.iv.next335.2.i.5
  store float %i.amv, ptr %gep443.i.6, align 4, !tbaa !134
  %indvars.iv.next335.2.i.6 = add nuw nsw i64 %indvars.iv334.2.i, 7 ; 2 uses
  %i.amw = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.2.i.6 ; 2 uses
  %i.amx = getelementptr i8, ptr %i.amw, i64 -4
  %i.amy = load float, ptr %i.amx, align 4, !tbaa !134
  %i.amz = load float, ptr %i.amw, align 4, !tbaa !134
  %i.ana = fsub float %i.amy, %i.amz
  %gep443.i.7 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %indvars.iv.next335.2.i.6
  store float %i.ana, ptr %gep443.i.7, align 4, !tbaa !134
  %indvars.iv.next335.2.i.7 = add nuw nsw i64 %indvars.iv334.2.i, 8 ; 2 uses
  %exitcond338.2.not.i.7 = icmp eq i64 %indvars.iv.next335.2.i.7, %i.ij
  br i1 %exitcond338.2.not.i.7, label %._crit_edge260.2.i, label %.lr.ph259.2.i, !llvm.loop !303

._crit_edge260.2.i:                               ; preds = %.lr.ph259.2.i.prol.loopexit, %.lr.ph259.2.i, %vec.epilog.middle.block220, %middle.block205
  %i.anb = fmul float %i.aih, %i.hv
  %i.anc = load float, ptr %i.hy, align 4, !tbaa !134
  %i.and = fmul float %i.anb, %i.anc
  store float %i.and, ptr %i.hq, align 4, !tbaa !134
  br i1 %i.hz, label %.lr.ph263.2.i.preheader, label %._crit_edge264.2.thread.i

.lr.ph263.2.i.preheader:                          ; preds = %._crit_edge260.2.i
  br i1 %min.iters.check158, label %.lr.ph263.2.i.preheader507, label %vector.ph159

vector.ph159:                                     ; preds = %.lr.ph263.2.i.preheader
  %broadcast.splatinsert161 = insertelement <8 x float> poison, float %i.aih, i64 0
  %broadcast.splat162 = shufflevector <8 x float> %broadcast.splatinsert161, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph159
  %index168 = phi i64 [ 0, %vector.ph159 ], [ %index.next174, %vector.body167 ]
  %vec.ind = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph159 ], [ %vec.ind.next, %vector.body167 ] ; 2 uses
  %vec.ind169 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph159 ], [ %vec.ind.next175, %vector.body167 ] ; 2 uses
  %i.ane = uitofp nneg <8 x i32> %vec.ind169 to <8 x float>
  %i.anf = fadd <8 x float> %broadcast.splat162, %i.ane
  %i.ang = sub nuw nsw <8 x i64> %broadcast.splat164, %vec.ind ; 2 uses
  %i.anh = extractelement <8 x i64> %i.ang, i64 0
  %i.ani = getelementptr [4 x i8], ptr %i.d, i64 %i.anh ; 2 uses
  %i.anj = getelementptr i8, ptr %i.ani, i64 -36
  %wide.load170 = load <8 x float>, ptr %i.anj, align 4, !tbaa !134
  %reverse = shufflevector <8 x float> %wide.load170, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ank = trunc nuw nsw <8 x i64> %i.ang to <8 x i32>
  %13 = uitofp nneg <8 x i32> %i.ank to <8 x float>
  %i.anl = fsub <8 x float> %13, %broadcast.splat162
  %i.anm = getelementptr i8, ptr %i.ani, i64 -32  ; 2 uses
  %wide.load171 = load <8 x float>, ptr %i.anm, align 4, !tbaa !134
  %reverse172 = shufflevector <8 x float> %wide.load171, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ann = fmul <8 x float> %reverse172, %i.anl
  %i.ano = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.anf, <8 x float> %reverse, <8 x float> %i.ann)
  %i.anp = shufflevector <8 x float> %i.ano, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse173 = fmul <8 x float> %i.anp, %i.ji
  store <8 x float> %reverse173, ptr %i.anm, align 4, !tbaa !134
  %index.next174 = add nuw i64 %index168, 8       ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %vec.ind.next175 = add <8 x i32> %vec.ind169, splat (i32 8)
  %i.anq = icmp eq i64 %index.next174, %n.vec160
  br i1 %i.anq, label %middle.block176, label %vector.body167, !llvm.loop !304

middle.block176:                                  ; preds = %vector.body167
  br i1 %cmp.n177, label %._crit_edge264.2.thread.i, label %.lr.ph263.2.i.preheader507

.lr.ph263.2.i.preheader507:                       ; preds = %.lr.ph263.2.i.preheader, %middle.block176
  %indvars.iv339.2.i.ph = phi i64 [ 1, %.lr.ph263.2.i.preheader ], [ %i.jh, %middle.block176 ]
  br label %.lr.ph263.2.i

.lr.ph263.2.i:                                    ; preds = %.lr.ph263.2.i.preheader507, %.lr.ph263.2.i
  %indvars.iv339.2.i = phi i64 [ %indvars.iv.next340.2.i, %.lr.ph263.2.i ], [ %indvars.iv339.2.i.ph, %.lr.ph263.2.i.preheader507 ] ; 3 uses
  %i.anr = trunc nuw nsw i64 %indvars.iv339.2.i to i32
  %i.ans = uitofp nneg i32 %i.anr to float
  %i.ant = fadd float %i.aih, %i.ans
  %i.anu = sub nuw nsw i64 %i.hw, %indvars.iv339.2.i ; 2 uses
  %i.anv = getelementptr [4 x i8], ptr %i.d, i64 %i.anu ; 2 uses
  %i.anw = getelementptr i8, ptr %i.anv, i64 -8
  %i.anx = load float, ptr %i.anw, align 4, !tbaa !134
  %i.any = trunc nuw nsw i64 %i.anu to i32
  %14 = uitofp nneg i32 %i.any to float
  %i.anz = fsub float %14, %i.aih
  %i.aoa = getelementptr i8, ptr %i.anv, i64 -4   ; 2 uses
  %i.aob = load float, ptr %i.aoa, align 4, !tbaa !134
  %i.aoc = fmul float %i.aob, %i.anz
  %i.aod = call float @llvm.fmuladd.f32(float %i.ant, float %i.anx, float %i.aoc)
  %i.aoe = fmul float %i.aod, %i.hv
  store float %i.aoe, ptr %i.aoa, align 4, !tbaa !134
  %indvars.iv.next340.2.i = add nuw nsw i64 %indvars.iv339.2.i, 1 ; 2 uses
  %exitcond343.2.not.i = icmp eq i64 %indvars.iv.next340.2.i, %wide.trip.count342.i
  br i1 %exitcond343.2.not.i, label %._crit_edge264.2.thread.i, label %.lr.ph263.2.i, !llvm.loop !305

._crit_edge264.2.thread.i:                        ; preds = %.lr.ph263.2.i, %middle.block176, %._crit_edge260.2.i
  %i.aof = fmul float %i.aii, %i.hv
  %i.aog = load float, ptr %i.d, align 16, !tbaa !134
  %i.aoh = fmul float %i.aof, %i.aog
  store float %i.aoh, ptr %i.d, align 16, !tbaa !134
  br label %.lr.ph267.2.i

._crit_edge264.2.i:                               ; preds = %._crit_edge256.2.i, %._crit_edge256.2.thread.i
  %.ph434.i = phi float [ %i.aih, %._crit_edge256.2.i ], [ %i.aia, %._crit_edge256.2.thread.i ]
  %.ph435.i = phi float [ %i.aii, %._crit_edge256.2.i ], [ %i.aib, %._crit_edge256.2.thread.i ]
  %i.aoi = fmul float %.ph434.i, %i.hv
  %i.aoj = load float, ptr %i.hy, align 4, !tbaa !134
  %i.aok = fmul float %i.aoi, %i.aoj
  store float %i.aok, ptr %i.hq, align 4, !tbaa !134
  %i.aol = fmul float %.ph435.i, %i.hv
  %i.aom = load float, ptr %i.d, align 16, !tbaa !134
  %i.aon = fmul float %i.aol, %i.aom
  store float %i.aon, ptr %i.d, align 16, !tbaa !134
  br i1 %i.ia, label %.lr.ph267.2.i, label %._crit_edge268.2.i

.lr.ph267.2.i:                                    ; preds = %._crit_edge264.2.i, %._crit_edge264.2.thread.i
  %i.aoo = load ptr, ptr %i.io, align 8, !tbaa !332
  %scevgep344.2.i = getelementptr nuw i8, ptr %i.aoo, i64 %i.uu
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep344.2.i, ptr nonnull align 16 %i.d, i64 %i.ik, i1 false), !tbaa !134
  br label %._crit_edge268.2.i

._crit_edge268.2.i:                               ; preds = %.lr.ph267.2.i, %._crit_edge264.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %._crit_edge268.2.i, %bb.m
  %indvars.iv.next353.i = add nuw nsw i64 %indvars.iv352.i, 1 ; 2 uses
  %exitcond356.not.i = icmp eq i64 %indvars.iv.next353.i, %wide.trip.count355.i
  br i1 %exitcond356.not.i, label %_ZL13make_bsplinesN3gmx8ArrayRefIPfEES2_iPA3_fiPKiPKfb.exit, label %.lr.ph272.split.i, !llvm.loop !271

_ZL13make_bsplinesN3gmx8ArrayRefIPfEES2_iPA3_fiPKiPKfb.exit: ; preds = %.loopexit232.us.i, %.loopexit230.us.i, %.loopexit.i, %bb.j, %bb.i
  %i.aop = load i8, ptr %8, align 1, !tbaa !17, !range !106, !noundef !107
  %i.aoq = trunc nuw i8 %i.aop to i1
  br i1 %i.aoq, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZL13make_bsplinesN3gmx8ArrayRefIPfEES2_iPA3_fiPKiPKfb.exit
  %i.aor = load ptr, ptr %4, align 8, !tbaa !11   ; 2 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aor, i64 80
  %i.aot = load i8, ptr %i.aos, align 8, !tbaa !108, !range !106, !noundef !107
  %i.aou = trunc nuw i8 %i.aot to i1
  %i.aov = load ptr, ptr %3, align 8, !tbaa !15   ; 2 uses
  br i1 %i.aou, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 88
  %i.aox = load ptr, ptr %i.aow, align 8, !tbaa !193
  %i.aoy = getelementptr inbounds nuw [72 x i8], ptr %i.aox, i64 %indvars.iv
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.aoz = phi ptr [ %i.aoy, %bb.o ], [ %i.aov, %bb.n ] ; 6 uses
  %i.apa = load ptr, ptr %5, align 8, !tbaa !13   ; 2 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aor, i64 192
  %i.apc = load ptr, ptr %i.apb, align 8, !tbaa !339 ; 2 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %i.aoz, i64 40
  %i.ape = load i32, ptr %i.apd, align 8, !tbaa !105
  %i.apf = getelementptr inbounds nuw i8, ptr %i.aoz, i64 44
  %i.apg = getelementptr inbounds nuw i8, ptr %i.aoz, i64 24
  %i.aph = load <2 x i32>, ptr %i.apf, align 4, !tbaa !105 ; 5 uses
  %i.api = load <2 x i32>, ptr %i.apg, align 8, !tbaa !105 ; 4 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aoz, i64 32
  %i.apk = load i32, ptr %i.apj, align 8, !tbaa !105 ; 4 uses
  %i.apl = extractelement <2 x i32> %i.aph, i64 0 ; 5 uses
  %i.apm = extractelement <2 x i32> %i.aph, i64 1 ; 13 uses
  %i.apn = mul i32 %i.apm, %i.apl                 ; 5 uses
  %i.apo = mul i32 %i.apn, %i.ape                 ; 2 uses
  %i.app = getelementptr inbounds nuw i8, ptr %i.aoz, i64 56
  %i.apq = load ptr, ptr %i.app, align 8, !tbaa !194
  %i.apr = load ptr, ptr %i.apq, align 8, !tbaa !195 ; 19 uses
  %i.aps = icmp sgt i32 %i.apo, 0
  br i1 %i.aps, label %.lr.ph.preheader.i, label %._crit_edge.i41

.lr.ph.preheader.i:                               ; preds = %bb.p
  %i.apt = zext nneg i32 %i.apo to i64
  %i.apu = shl nuw nsw i64 %i.apt, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.apr, i8 0, i64 %i.apu, i1 false), !tbaa !134
  br label %._crit_edge.i41

._crit_edge.i41:                                  ; preds = %.lr.ph.preheader.i, %bb.p
  %i.apv = getelementptr inbounds nuw i8, ptr %i.aoz, i64 36
  %i.apw = load i32, ptr %i.apv, align 4, !tbaa !196
  %.fr.i = freeze i32 %i.apw                      ; 6 uses
  %i.apx = load i32, ptr %.035, align 8, !tbaa !329 ; 4 uses
  %i.apy = icmp sgt i32 %i.apx, 0
  br i1 %i.apy, label %.lr.ph423.i, label %_ZL35spread_coefficients_bsplines_threadP9pmegrid_tPK11PmeAtomCommP12splinedata_tRK15pme_spline_work.exit

.lr.ph423.i:                                      ; preds = %._crit_edge.i41
  %i.apz = getelementptr inbounds nuw i8, ptr %.035, i64 8 ; 3 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apa, i64 152 ; 3 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.apa, i64 264 ; 3 uses
  %i.aqc = getelementptr inbounds nuw i8, ptr %.035, i64 32 ; 3 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %.035, i64 40 ; 3 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %.035, i64 48 ; 3 uses
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.apc, i64 12
  %i.aqg = sext i32 %i.apm to i64                 ; 5 uses
  %i.aqh = shl nsw i32 %i.apm, 1
  %i.aqi = sext i32 %i.aqh to i64                 ; 5 uses
  %i.aqj = mul nsw i32 %i.apm, 3
  %i.aqk = sext i32 %i.aqj to i64                 ; 5 uses
  %i.aql = shl nsw i32 %i.apm, 2
  %i.aqm = sext i32 %i.aql to i64                 ; 5 uses
  %i.aqn = icmp sgt i32 %.fr.i, 0
  switch i32 %.fr.i, label %.lr.ph423.split.preheader.i [
    i32 4, label %.lr.ph423.split.us.i
    i32 5, label %.lr.ph423.split.us425.i.preheader
  ]

.lr.ph423.split.us425.i.preheader:                ; preds = %.lr.ph423.i
  %i.aqo = shufflevector <2 x i32> %i.aph, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.aqp = shufflevector <2 x i32> %i.aph, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %.lr.ph423.split.us425.i

.lr.ph423.split.preheader.i:                      ; preds = %.lr.ph423.i
  %i.aqq = sext i32 %.fr.i to i64                 ; 2 uses
  %.pre455.i = load ptr, ptr %i.apz, align 8, !tbaa !183
  %wide.trip.count449.i = zext i32 %.fr.i to i64  ; 12 uses
  %i.aqr = zext nneg i32 %i.apx to i64
  %i.aqs = add nsw i64 %wide.trip.count449.i, -1  ; 2 uses
  %i.aqt = shl nuw nsw i64 %wide.trip.count449.i, 2 ; 2 uses
  %i.aqu = shl nsw i64 %i.aqq, 2
  %i.aqv = mul i32 %i.apl, %i.apm
  %i.aqw = zext i32 %i.aqv to i64
  %i.aqx = zext i32 %i.apm to i64
  %scevgep121 = getelementptr i8, ptr %i.apr, i64 %i.aqt
  %i.aqy = extractelement <2 x i32> %i.api, i64 0
  %i.aqz = extractelement <2 x i32> %i.api, i64 1 ; 2 uses
  %min.iters.check123 = icmp ult i32 %.fr.i, 4
  %i.ara = trunc i64 %i.aqs to i32
  %i.arb = icmp ugt i64 %i.aqs, 4294967295
  %min.iters.check125 = icmp ult i32 %.fr.i, 32
  %i.arc = and i64 %wide.trip.count449.i, 28
  %n.vec127 = and i64 %wide.trip.count449.i, 2147483616 ; 4 uses
  %cmp.n140 = icmp eq i64 %n.vec127, %wide.trip.count449.i
  %min.epilog.iters.check145 = icmp eq i64 %i.arc, 0
  %n.vec147 = and i64 %wide.trip.count449.i, 2147483644 ; 3 uses
  %cmp.n156 = icmp eq i64 %n.vec147, %wide.trip.count449.i
  %xtraiter531 = and i64 %wide.trip.count449.i, 3 ; 2 uses
  %lcmp.mod532.not = icmp eq i64 %xtraiter531, 0
  br label %.lr.ph423.split.i

.lr.ph423.split.us.i:                             ; preds = %.lr.ph423.i, %.loopexit406.us.i
  %i.ard = phi i32 [ %i.awm, %.loopexit406.us.i ], [ %i.apx, %.lr.ph423.i ]
  %indvars.iv435.i = phi i64 [ %indvars.iv.next436.i, %.loopexit406.us.i ], [ 0, %.lr.ph423.i ] ; 3 uses
  %i.are = load ptr, ptr %i.apz, align 8, !tbaa !183
  %i.arf = getelementptr inbounds nuw [4 x i8], ptr %i.are, i64 %indvars.iv435.i
  %i.arg = load i32, ptr %i.arf, align 4, !tbaa !105
  %i.arh = sext i32 %i.arg to i64                 ; 2 uses
  %i.ari = load i64, ptr %i.aqa, align 8
  %i.arj = inttoptr i64 %i.ari to ptr
  %i.ark = getelementptr inbounds [4 x i8], ptr %i.arj, i64 %i.arh
  %i.arl = load float, ptr %i.ark, align 4, !tbaa !134 ; 5 uses
  %i.arm = fcmp une float %i.arl, 0.000000e+00
  br i1 %i.arm, label %.loopexit406.us.loopexit.i, label %.loopexit406.us.i

.loopexit406.us.loopexit.i:                       ; preds = %.lr.ph423.split.us.i
  %i.arn = load ptr, ptr %i.aqb, align 8, !tbaa !187
  %i.aro = getelementptr inbounds nuw [12 x i8], ptr %i.arn, i64 %i.arh ; 2 uses
  %i.arp = shl nuw nsw i64 %indvars.iv435.i, 2    ; 3 uses
  %i.arq = getelementptr inbounds nuw i8, ptr %i.aro, i64 8
  %i.arr = load i32, ptr %i.arq, align 4, !tbaa !105
  %i.ars = sub nsw i32 %i.arr, %i.apk
  %i.art = load ptr, ptr %i.aqc, align 8, !tbaa !332
  %i.aru = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.arp ; 4 uses
  %i.arv = load ptr, ptr %i.aqd, align 8, !tbaa !332
  %i.arw = getelementptr inbounds nuw [4 x i8], ptr %i.arv, i64 %i.arp ; 4 uses
  %i.arx = load ptr, ptr %i.aqe, align 8, !tbaa !332
  %i.ary = getelementptr inbounds nuw [4 x i8], ptr %i.arx, i64 %i.arp
  %i.arz = load float, ptr %i.arw, align 4, !tbaa !134
  %i.asa = insertelement <4 x float> poison, float %i.arz, i64 0
  %i.asb = shufflevector <4 x float> %i.asa, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.asc = getelementptr inbounds nuw i8, ptr %i.arw, i64 4
  %i.asd = load float, ptr %i.asc, align 4, !tbaa !134
  %i.ase = insertelement <4 x float> poison, float %i.asd, i64 0
  %i.asf = shufflevector <4 x float> %i.ase, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.asg = getelementptr inbounds nuw i8, ptr %i.arw, i64 8
  %i.ash = load float, ptr %i.asg, align 4, !tbaa !134
  %i.asi = insertelement <4 x float> poison, float %i.ash, i64 0
  %i.asj = shufflevector <4 x float> %i.asi, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %i.arw, i64 12
  %i.asl = load float, ptr %i.ask, align 4, !tbaa !134
  %i.asm = insertelement <4 x float> poison, float %i.asl, i64 0
  %i.asn = shufflevector <4 x float> %i.asm, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %.val330.us.i = load <4 x float>, ptr %i.ary, align 16, !tbaa !340 ; 4 uses
  %i.aso = sext i32 %i.ars to i64                 ; 16 uses
end_hunk_0
