Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/qdmc?download=true
inline.NumInlined: 34
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@qdmc_decode_frame:bb.a
  %i.uu = mul nsw i32 %i.ur, 21
  %i.uv = lshr i32 %.0131240.i, 1
  %i.uw = zext nneg i32 %i.uv to i64
  %invariant.gep.i = getelementptr i8, ptr %i.tz, i64 %i.uw
  %i.ux = sext i32 %i.uu to i64
  %invariant.gep78.i.i = getelementptr [2 x i8], ptr @qdmc_nodes, i64 %i.ux
  %i.uy = icmp sgt i32 %i.ul, 3
  %i.uz = add nsw i32 %i.ul, -1
  %wide.trip.count69.i.i = zext nneg i32 %i.uz to i64
  %wide.trip.count.i = zext nneg i32 %i.ui to i64
  br label %bb.aw

bb.aw:                                            ; preds = %add_noise.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %add_noise.exit.i ] ; 3 uses
  %i.va = getelementptr [65536 x i8], ptr %i.ts, i64 %indvars.iv.i ; 2 uses
  %i.vb = getelementptr inbounds [4 x i8], ptr %i.va, i64 %i.uo ; 3 uses
  %i.vc = getelementptr i8, ptr %i.va, i64 131072
  %i.vd = getelementptr inbounds [4 x i8], ptr %i.vc, i64 %i.uo ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.tx, i8 0, i64 %i.uq, i1 false)
  br i1 %.not64.i.i, label %._crit_edge.i171.i, label %.lr.ph.i167.i

.lr.ph.i167.i:                                    ; preds = %bb.aw
  %i.ve = load i8, ptr %i.ut, align 1, !tbaa !30
  %gep.i = getelementptr [323 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.vf = tail call i8 @llvm.umax.i8(i8 %i.ve, i8 1)
  %wide.trip.count.i168.i = zext i8 %i.vf to i64
  br label %bb.ax

bb.ax:                                            ; preds = %lin_calc.exit.i.i, %.lr.ph.i167.i
  %indvars.iv.i169.i = phi i64 [ 0, %.lr.ph.i167.i ], [ %indvars.iv.next.i173.i, %lin_calc.exit.i.i ] ; 6 uses
  %i.vg = shl nuw nsw i64 %indvars.iv.i169.i, 10  ; 4 uses
  %i.vh = getelementptr i8, ptr %i.b, i64 %i.vg
  %scevgep317 = getelementptr i8, ptr %i.vh, i64 623944 ; 5 uses
  %i.vi = getelementptr i8, ptr %i.b, i64 %i.vg
  %scevgep319 = getelementptr i8, ptr %i.vi, i64 623948 ; 5 uses
  %i.vj = getelementptr i8, ptr %i.b, i64 %i.vg
  %scevgep321 = getelementptr i8, ptr %i.vj, i64 623952 ; 5 uses
  %i.vk = getelementptr i8, ptr %i.b, i64 %i.vg
  %scevgep323 = getelementptr i8, ptr %i.vk, i64 623956
  %i.vl = shl nuw nsw i64 %indvars.iv.i169.i, 10
  %i.vm = getelementptr i8, ptr %i.b, i64 %i.vl
  %scevgep278 = getelementptr i8, ptr %i.vm, i64 623944
  %gep79.i.i = getelementptr [2 x i8], ptr %invariant.gep78.i.i, i64 %indvars.iv.i169.i ; 2 uses
  %i.vn = load i16, ptr %gep79.i.i, align 2, !tbaa !51 ; 2 uses
  %i.vo = zext i16 %i.vn to i32                   ; 5 uses
  %.not.i170.i = icmp sgt i32 %i.ul, %i.vo
  br i1 %.not.i170.i, label %bb.ay, label %._crit_edge.i171.i

bb.ay:                                            ; preds = %bb.ax
  %gep.i.i = getelementptr [17 x i8], ptr %gep.i, i64 %indvars.iv.i169.i
  %i.vp = load i8, ptr %gep.i.i, align 1, !tbaa !30 ; 2 uses
  %.not57.i.i = icmp eq i8 %i.vp, 0
  br i1 %.not57.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.vq = and i8 %i.vp, 63
  %i.vr = zext nneg i8 %i.vq to i64
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr @amplitude_tab, i64 %i.vr
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !29
  %i.vu = fmul nsz float %i.vt, 5.000000e-01
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.vv = phi float [ %i.vu, %bb.az ], [ 0.000000e+00, %bb.ay ] ; 7 uses
  %i.vw = getelementptr i8, ptr %gep79.i.i, i64 4
  %i.vx = load i16, ptr %i.vw, align 2, !tbaa !51
  %i.vy = zext i16 %i.vx to i32
  %i.vz = tail call i32 @llvm.umin.i32(i32 %i.ul, i32 %i.vy) ; 3 uses
  %i.wa = sub nsw i32 %i.vz, %i.vo                ; 4 uses
  %i.wb = and i32 %i.wa, 65532                    ; 12 uses
  %i.wc = shl nuw nsw i64 %indvars.iv.i169.i, 8   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.wb, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ba
  %i.wd = getelementptr [4 x i8], ptr %i.ua, i64 %i.wc ; 11 uses
  %i.we = zext i16 %i.vn to i64                   ; 5 uses
  %i.wf = add nsw i32 %i.wb, -4                   ; 2 uses
  %i.wg = lshr exact i32 %i.wf, 2
  %narrow = add nuw nsw i32 %i.wg, 1
  %i.wh = zext nneg i32 %narrow to i64            ; 2 uses
  %min.iters.check413 = icmp ult i32 %i.wf, 60
  br i1 %min.iters.check413, label %scalar.ph412.preheader, label %vector.memcheck300

vector.memcheck300:                               ; preds = %.lr.ph.i.i.i
  %i.wi = shl nuw nsw i64 %i.we, 2                ; 5 uses
  %scevgep302 = getelementptr i8, ptr %scevgep301, i64 %i.wi ; 7 uses
  %i.wj = add nsw i32 %i.wb, -4
  %i.wk = lshr exact i32 %i.wj, 2
  %i.wl = zext nneg i32 %i.wk to i64
  %i.wm = shl nuw nsw i64 %i.wl, 4                ; 5 uses
  %i.wn = add nuw nsw i64 %i.wm, %i.wi            ; 4 uses
  %scevgep304 = getelementptr i8, ptr %scevgep303, i64 %i.wn ; 7 uses
  %scevgep306 = getelementptr i8, ptr %scevgep305, i64 %i.wi ; 7 uses
  %scevgep308 = getelementptr i8, ptr %scevgep307, i64 %i.wn ; 7 uses
  %scevgep310 = getelementptr i8, ptr %scevgep309, i64 %i.wi ; 7 uses
  %scevgep312 = getelementptr i8, ptr %scevgep311, i64 %i.wn ; 7 uses
  %scevgep314 = getelementptr i8, ptr %scevgep313, i64 %i.wi ; 7 uses
  %scevgep316 = getelementptr i8, ptr %scevgep315, i64 %i.wn ; 7 uses
  %scevgep318 = getelementptr i8, ptr %scevgep317, i64 %i.wm ; 4 uses
  %scevgep320 = getelementptr i8, ptr %scevgep319, i64 %i.wm ; 4 uses
  %scevgep322 = getelementptr i8, ptr %scevgep321, i64 %i.wm ; 4 uses
  %scevgep324 = getelementptr i8, ptr %scevgep323, i64 %i.wm ; 4 uses
  %bound0325 = icmp ult ptr %scevgep302, %scevgep308
  %bound1326 = icmp ult ptr %scevgep306, %scevgep304
  %found.conflict327 = and i1 %bound0325, %bound1326
  %bound0328 = icmp ult ptr %scevgep302, %scevgep312
  %bound1329 = icmp ult ptr %scevgep310, %scevgep304
  %found.conflict330 = and i1 %bound0328, %bound1329
  %conflict.rdx331 = or i1 %found.conflict327, %found.conflict330
  %bound0332 = icmp ult ptr %scevgep302, %scevgep316
  %bound1333 = icmp ult ptr %scevgep314, %scevgep304
  %found.conflict334 = and i1 %bound0332, %bound1333
  %conflict.rdx335 = or i1 %conflict.rdx331, %found.conflict334
  %bound0336 = icmp ult ptr %scevgep302, %scevgep318
  %bound1337 = icmp ult ptr %i.wd, %scevgep304
  %found.conflict338 = and i1 %bound0336, %bound1337
  %conflict.rdx339 = or i1 %conflict.rdx335, %found.conflict338
  %bound0340 = icmp ult ptr %scevgep302, %scevgep320
  %bound1341 = icmp ult ptr %scevgep317, %scevgep304
  %found.conflict342 = and i1 %bound0340, %bound1341
  %conflict.rdx343 = or i1 %conflict.rdx339, %found.conflict342
  %bound0344 = icmp ult ptr %scevgep302, %scevgep322
  %bound1345 = icmp ult ptr %scevgep319, %scevgep304
  %found.conflict346 = and i1 %bound0344, %bound1345
  %conflict.rdx347 = or i1 %conflict.rdx343, %found.conflict346
  %bound0348 = icmp ult ptr %scevgep302, %scevgep324
  %bound1349 = icmp ult ptr %scevgep321, %scevgep304
  %found.conflict350 = and i1 %bound0348, %bound1349
  %conflict.rdx351 = or i1 %conflict.rdx347, %found.conflict350
  %bound0352 = icmp ult ptr %scevgep306, %scevgep312
  %bound1353 = icmp ult ptr %scevgep310, %scevgep308
  %found.conflict354 = and i1 %bound0352, %bound1353
  %conflict.rdx355 = or i1 %conflict.rdx351, %found.conflict354
  %bound0356 = icmp ult ptr %scevgep306, %scevgep316
  %bound1357 = icmp ult ptr %scevgep314, %scevgep308
  %found.conflict358 = and i1 %bound0356, %bound1357
  %conflict.rdx359 = or i1 %conflict.rdx355, %found.conflict358
  %bound0360 = icmp ult ptr %scevgep306, %scevgep318
  %bound1361 = icmp ult ptr %i.wd, %scevgep308
  %found.conflict362 = and i1 %bound0360, %bound1361
  %conflict.rdx363 = or i1 %conflict.rdx359, %found.conflict362
  %bound0364 = icmp ult ptr %scevgep306, %scevgep320
  %bound1365 = icmp ult ptr %scevgep317, %scevgep308
  %found.conflict366 = and i1 %bound0364, %bound1365
  %conflict.rdx367 = or i1 %conflict.rdx363, %found.conflict366
  %bound0368 = icmp ult ptr %scevgep306, %scevgep322
  %bound1369 = icmp ult ptr %scevgep319, %scevgep308
  %found.conflict370 = and i1 %bound0368, %bound1369
  %conflict.rdx371 = or i1 %conflict.rdx367, %found.conflict370
  %bound0372 = icmp ult ptr %scevgep306, %scevgep324
  %bound1373 = icmp ult ptr %scevgep321, %scevgep308
  %found.conflict374 = and i1 %bound0372, %bound1373
  %conflict.rdx375 = or i1 %conflict.rdx371, %found.conflict374
  %bound0376 = icmp ult ptr %scevgep310, %scevgep316
  %bound1377 = icmp ult ptr %scevgep314, %scevgep312
  %found.conflict378 = and i1 %bound0376, %bound1377
  %conflict.rdx379 = or i1 %conflict.rdx375, %found.conflict378
  %bound0380 = icmp ult ptr %scevgep310, %scevgep318
  %bound1381 = icmp ult ptr %i.wd, %scevgep312
  %found.conflict382 = and i1 %bound0380, %bound1381
  %conflict.rdx383 = or i1 %conflict.rdx379, %found.conflict382
  %bound0384 = icmp ult ptr %scevgep310, %scevgep320
  %bound1385 = icmp ult ptr %scevgep317, %scevgep312
  %found.conflict386 = and i1 %bound0384, %bound1385
  %conflict.rdx387 = or i1 %conflict.rdx383, %found.conflict386
  %bound0388 = icmp ult ptr %scevgep310, %scevgep322
  %bound1389 = icmp ult ptr %scevgep319, %scevgep312
  %found.conflict390 = and i1 %bound0388, %bound1389
  %conflict.rdx391 = or i1 %conflict.rdx387, %found.conflict390
  %bound0392 = icmp ult ptr %scevgep310, %scevgep324
  %bound1393 = icmp ult ptr %scevgep321, %scevgep312
  %found.conflict394 = and i1 %bound0392, %bound1393
  %conflict.rdx395 = or i1 %conflict.rdx391, %found.conflict394
  %bound0396 = icmp ult ptr %scevgep314, %scevgep318
  %bound1397 = icmp ult ptr %i.wd, %scevgep316
  %found.conflict398 = and i1 %bound0396, %bound1397
  %conflict.rdx399 = or i1 %conflict.rdx395, %found.conflict398
  %bound0400 = icmp ult ptr %scevgep314, %scevgep320
  %bound1401 = icmp ult ptr %scevgep317, %scevgep316
  %found.conflict402 = and i1 %bound0400, %bound1401
  %conflict.rdx403 = or i1 %conflict.rdx399, %found.conflict402
  %bound0404 = icmp ult ptr %scevgep314, %scevgep322
  %bound1405 = icmp ult ptr %scevgep319, %scevgep316
  %found.conflict406 = and i1 %bound0404, %bound1405
  %conflict.rdx407 = or i1 %conflict.rdx403, %found.conflict406
  %bound0408 = icmp ult ptr %scevgep314, %scevgep324
  %bound1409 = icmp ult ptr %scevgep321, %scevgep316
  %found.conflict410 = and i1 %bound0408, %bound1409
  %conflict.rdx411 = or i1 %conflict.rdx407, %found.conflict410
  br i1 %conflict.rdx411, label %scalar.ph412.preheader, label %vector.ph414

vector.ph414:                                     ; preds = %vector.memcheck300
  %n.vec415 = and i64 %i.wh, 2147483644           ; 5 uses
  %i.wo = shl nuw nsw i64 %n.vec415, 2
  %i.wp = add nuw nsw i64 %i.wo, %i.we
  %i.wq = shl nuw nsw i64 %n.vec415, 4
  %i.wr = getelementptr i8, ptr %i.wd, i64 %i.wq
  %i.ws = trunc nuw nsw i64 %n.vec415 to i32
  %i.wt = shl i32 %i.ws, 2
  %broadcast.splatinsert416 = insertelement <4 x float> poison, float %i.vv, i64 0 ; 2 uses
  %5 = shufflevector <4 x float> %broadcast.splatinsert416, <4 x float> poison, <8 x i32> zeroinitializer
  %i.wu = shufflevector <4 x float> %broadcast.splatinsert416, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body418

vector.body418:                                   ; preds = %vector.body418, %vector.ph414
  %index419 = phi i64 [ 0, %vector.ph414 ], [ %index.next425, %vector.body418 ] ; 3 uses
  %i.wv = shl nuw i64 %index419, 2
  %i.ww = add nuw i64 %i.wv, %i.we                ; 4 uses
  %i.wx = shl i64 %index419, 4                    ; 4 uses
  %next.gep420 = getelementptr i8, ptr %i.wd, i64 %i.wx ; 4 uses
  %i.wy = getelementptr i8, ptr %i.wd, i64 %i.wx  ; 4 uses
  %next.gep421 = getelementptr i8, ptr %i.wy, i64 16
  %i.wz = getelementptr i8, ptr %i.wd, i64 %i.wx  ; 4 uses
  %next.gep422 = getelementptr i8, ptr %i.wz, i64 32
  %i.xa = getelementptr i8, ptr %i.wd, i64 %i.wx  ; 4 uses
  %next.gep423 = getelementptr i8, ptr %i.xa, i64 48
  %i.xb = load float, ptr %next.gep420, align 4, !tbaa !29, !alias.scope !132
  %i.xc = load float, ptr %next.gep421, align 4, !tbaa !29, !alias.scope !132
  %i.xd = load float, ptr %next.gep422, align 4, !tbaa !29, !alias.scope !132
  %i.xe = load float, ptr %next.gep423, align 4, !tbaa !29, !alias.scope !132
  %i.xf = insertelement <4 x float> poison, float %i.xb, i64 0
  %i.xg = insertelement <4 x float> %i.xf, float %i.xc, i64 1
  %i.xh = insertelement <4 x float> %i.xg, float %i.xd, i64 2
  %i.xi = insertelement <4 x float> %i.xh, float %i.xe, i64 3
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.ww ; 5 uses
  %i.xk = getelementptr [4 x i8], ptr %i.tx, i64 %i.ww ; 4 uses
  %i.xl = getelementptr i8, ptr %i.xk, i64 16
  %i.xm = getelementptr [4 x i8], ptr %i.tx, i64 %i.ww ; 4 uses
  %i.xn = getelementptr i8, ptr %i.xm, i64 32
  %i.xo = getelementptr [4 x i8], ptr %i.tx, i64 %i.ww ; 4 uses
  %i.xp = getelementptr i8, ptr %i.xo, i64 48
  %i.xq = load float, ptr %i.xj, align 4, !tbaa !29, !alias.scope !133, !noalias !134
  %i.xr = load float, ptr %i.xl, align 4, !tbaa !29, !alias.scope !133, !noalias !134
  %i.xs = load float, ptr %i.xn, align 4, !tbaa !29, !alias.scope !133, !noalias !134
  %i.xt = load float, ptr %i.xp, align 4, !tbaa !29, !alias.scope !133, !noalias !134
  %i.xu = insertelement <4 x float> poison, float %i.xq, i64 0
  %i.xv = insertelement <4 x float> %i.xu, float %i.xr, i64 1
  %i.xw = insertelement <4 x float> %i.xv, float %i.xs, i64 2
  %i.xx = insertelement <4 x float> %i.xw, float %i.xt, i64 3
  %i.xy = getelementptr inbounds nuw i8, ptr %next.gep420, i64 4
  %i.xz = getelementptr i8, ptr %i.wy, i64 20
  %i.ya = getelementptr i8, ptr %i.wz, i64 36
  %i.yb = getelementptr i8, ptr %i.xa, i64 52
  %i.yc = load float, ptr %i.xy, align 4, !tbaa !29, !alias.scope !135
  %i.yd = load float, ptr %i.xz, align 4, !tbaa !29, !alias.scope !135
  %i.ye = load float, ptr %i.ya, align 4, !tbaa !29, !alias.scope !135
  %i.yf = load float, ptr %i.yb, align 4, !tbaa !29, !alias.scope !135
  %i.yg = insertelement <4 x float> poison, float %i.yc, i64 0
  %i.yh = insertelement <4 x float> %i.yg, float %i.yd, i64 1
  %i.yi = insertelement <4 x float> %i.yh, float %i.ye, i64 2
  %i.yj = insertelement <4 x float> %i.yi, float %i.yf, i64 3
  %i.yk = getelementptr inbounds nuw i8, ptr %i.xj, i64 4
  %i.yl = getelementptr i8, ptr %i.xk, i64 20
  %i.ym = getelementptr i8, ptr %i.xm, i64 36
  %i.yn = getelementptr i8, ptr %i.xo, i64 52
  %i.yo = load float, ptr %i.yk, align 4, !tbaa !29, !alias.scope !136, !noalias !137
  %i.yp = load float, ptr %i.yl, align 4, !tbaa !29, !alias.scope !136, !noalias !137
  %i.yq = load float, ptr %i.ym, align 4, !tbaa !29, !alias.scope !136, !noalias !137
  %i.yr = load float, ptr %i.yn, align 4, !tbaa !29, !alias.scope !136, !noalias !137
  %i.ys = insertelement <4 x float> poison, float %i.yo, i64 0
  %i.yt = insertelement <4 x float> %i.ys, float %i.yp, i64 1
  %i.yu = insertelement <4 x float> %i.yt, float %i.yq, i64 2
  %i.yv = insertelement <4 x float> %i.yu, float %i.yr, i64 3
  %i.yw = getelementptr inbounds nuw i8, ptr %next.gep420, i64 8
  %i.yx = getelementptr i8, ptr %i.wy, i64 24
  %i.yy = getelementptr i8, ptr %i.wz, i64 40
  %i.yz = getelementptr i8, ptr %i.xa, i64 56
  %i.za = load float, ptr %i.yw, align 4, !tbaa !29, !alias.scope !138
  %i.zb = load float, ptr %i.yx, align 4, !tbaa !29, !alias.scope !138
  %i.zc = load float, ptr %i.yy, align 4, !tbaa !29, !alias.scope !138
  %i.zd = load float, ptr %i.yz, align 4, !tbaa !29, !alias.scope !138
  %i.ze = insertelement <4 x float> poison, float %i.za, i64 0
  %i.zf = insertelement <4 x float> %i.ze, float %i.zb, i64 1
  %i.zg = insertelement <4 x float> %i.zf, float %i.zc, i64 2
  %i.zh = insertelement <4 x float> %i.zg, float %i.zd, i64 3
  %i.zi = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  %i.zj = getelementptr i8, ptr %i.xk, i64 24
  %i.zk = getelementptr i8, ptr %i.xm, i64 40
  %i.zl = getelementptr i8, ptr %i.xo, i64 56
  %i.zm = load float, ptr %i.zi, align 4, !tbaa !29, !alias.scope !139, !noalias !140
  %i.zn = load float, ptr %i.zj, align 4, !tbaa !29, !alias.scope !139, !noalias !140
  %i.zo = load float, ptr %i.zk, align 4, !tbaa !29, !alias.scope !139, !noalias !140
  %i.zp = load float, ptr %i.zl, align 4, !tbaa !29, !alias.scope !139, !noalias !140
  %i.zq = insertelement <4 x float> poison, float %i.zm, i64 0
  %i.zr = insertelement <4 x float> %i.zq, float %i.zn, i64 1
  %i.zs = insertelement <4 x float> %i.zr, float %i.zo, i64 2
  %i.zt = insertelement <4 x float> %i.zs, float %i.zp, i64 3
  %i.zu = getelementptr inbounds nuw i8, ptr %next.gep420, i64 12
  %i.zv = getelementptr i8, ptr %i.wy, i64 28
  %i.zw = getelementptr i8, ptr %i.wz, i64 44
  %i.zx = getelementptr i8, ptr %i.xa, i64 60
  %i.zy = load float, ptr %i.zu, align 4, !tbaa !29, !alias.scope !141
  %i.zz = load float, ptr %i.zv, align 4, !tbaa !29, !alias.scope !141
  %i.aaa = load float, ptr %i.zw, align 4, !tbaa !29, !alias.scope !141
  %i.aab = load float, ptr %i.zx, align 4, !tbaa !29, !alias.scope !141
  %i.aac = insertelement <4 x float> poison, float %i.zy, i64 0
  %i.aad = insertelement <4 x float> %i.aac, float %i.zz, i64 1
  %i.aae = insertelement <4 x float> %i.aad, float %i.aaa, i64 2
  %i.aaf = insertelement <4 x float> %i.aae, float %i.aab, i64 3
  %i.aag = getelementptr inbounds nuw i8, ptr %i.xj, i64 12
  %i.aah = getelementptr i8, ptr %i.xk, i64 28
  %i.aai = getelementptr i8, ptr %i.xm, i64 44
  %i.aaj = getelementptr i8, ptr %i.xo, i64 60
  %i.aak = load float, ptr %i.aag, align 4, !tbaa !29, !alias.scope !142, !noalias !143
  %i.aal = load float, ptr %i.aah, align 4, !tbaa !29, !alias.scope !142, !noalias !143
  %i.aam = load float, ptr %i.aai, align 4, !tbaa !29, !alias.scope !142, !noalias !143
  %i.aan = load float, ptr %i.aaj, align 4, !tbaa !29, !alias.scope !142, !noalias !143
  %i.aao = insertelement <4 x float> poison, float %i.aak, i64 0
  %i.aap = insertelement <4 x float> %i.aao, float %i.aal, i64 1
  %i.aaq = insertelement <4 x float> %i.aap, float %i.aam, i64 2
  %i.aar = insertelement <4 x float> %i.aaq, float %i.aan, i64 3
  %6 = shufflevector <4 x float> %i.xi, <4 x float> %i.yj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aas = shufflevector <4 x float> %i.xx, <4 x float> %i.yv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aat = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %5, <8 x float> %6, <8 x float> %i.aas)
  %7 = shufflevector <4 x float> %i.zh, <4 x float> %i.aaf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %8 = shufflevector <4 x float> %i.zt, <4 x float> %i.aar, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aau = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.wu, <8 x float> %7, <8 x float> %8)
  %interleaved.vec424 = shufflevector <8 x float> %i.aat, <8 x float> %i.aau, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec424, ptr %i.xj, align 4, !tbaa !29
  %index.next425 = add nuw i64 %index419, 4       ; 2 uses
  %i.aav = icmp eq i64 %index.next425, %n.vec415
  br i1 %i.aav, label %middle.block426, label %vector.body418, !llvm.loop !79

middle.block426:                                  ; preds = %vector.body418
  %cmp.n427 = icmp eq i64 %n.vec415, %i.wh
  br i1 %cmp.n427, label %._crit_edge.i.i.i, label %scalar.ph412.preheader

scalar.ph412.preheader:                           ; preds = %vector.memcheck300, %.lr.ph.i.i.i, %middle.block426
  %indvars.iv.i.i.i.ph = phi i64 [ %i.we, %vector.memcheck300 ], [ %i.we, %.lr.ph.i.i.i ], [ %i.wp, %middle.block426 ]
  %.056.i.i.i.ph = phi ptr [ %i.wd, %vector.memcheck300 ], [ %i.wd, %.lr.ph.i.i.i ], [ %i.wr, %middle.block426 ]
  %.04854.i.i.i.ph = phi i32 [ 0, %vector.memcheck300 ], [ 0, %.lr.ph.i.i.i ], [ %i.wt, %middle.block426 ]
  br label %scalar.ph412

scalar.ph412:                                     ; preds = %scalar.ph412.preheader, %scalar.ph412
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph412 ], [ %indvars.iv.i.i.i.ph, %scalar.ph412.preheader ] ; 2 uses
  %.056.i.i.i = phi ptr [ %i.abq, %scalar.ph412 ], [ %.056.i.i.i.ph, %scalar.ph412.preheader ] ; 5 uses
  %.04854.i.i.i = phi i32 [ %i.abp, %scalar.ph412 ], [ %.04854.i.i.i.ph, %scalar.ph412.preheader ]
  %i.aaw = load float, ptr %.056.i.i.i, align 4, !tbaa !29
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %indvars.iv.i.i.i ; 5 uses
  %i.aay = load float, ptr %i.aax, align 4, !tbaa !29
  %i.aaz = tail call nsz float @llvm.fmuladd.f32(float %i.vv, float %i.aaw, float %i.aay)
  store float %i.aaz, ptr %i.aax, align 4, !tbaa !29
  %i.aba = getelementptr inbounds nuw i8, ptr %.056.i.i.i, i64 4
  %i.abb = load float, ptr %i.aba, align 4, !tbaa !29
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aax, i64 4 ; 2 uses
  %i.abd = load float, ptr %i.abc, align 4, !tbaa !29
  %i.abe = tail call nsz float @llvm.fmuladd.f32(float %i.vv, float %i.abb, float %i.abd)
  store float %i.abe, ptr %i.abc, align 4, !tbaa !29
  %i.abf = getelementptr inbounds nuw i8, ptr %.056.i.i.i, i64 8
  %i.abg = load float, ptr %i.abf, align 4, !tbaa !29
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aax, i64 8 ; 2 uses
  %i.abi = load float, ptr %i.abh, align 4, !tbaa !29
  %i.abj = tail call nsz float @llvm.fmuladd.f32(float %i.vv, float %i.abg, float %i.abi)
  store float %i.abj, ptr %i.abh, align 4, !tbaa !29
  %i.abk = getelementptr inbounds nuw i8, ptr %.056.i.i.i, i64 12
  %i.abl = load float, ptr %i.abk, align 4, !tbaa !29
  %i.abm = getelementptr inbounds nuw i8, ptr %i.aax, i64 12 ; 2 uses
  %i.abn = load float, ptr %i.abm, align 4, !tbaa !29
  %i.abo = tail call nsz float @llvm.fmuladd.f32(float %i.vv, float %i.abl, float %i.abn)
  store float %i.abo, ptr %i.abm, align 4, !tbaa !29
  %i.abp = add nuw nsw i32 %.04854.i.i.i, 4       ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 4
  %i.abq = getelementptr inbounds nuw i8, ptr %.056.i.i.i, i64 16
  %i.abr = icmp samesign ult i32 %i.abp, %i.wb
  br i1 %i.abr, label %scalar.ph412, label %._crit_edge.i.i.i, !llvm.loop !80

._crit_edge.i.i.i:                                ; preds = %scalar.ph412, %middle.block426, %bb.ba
  %i.abs = icmp slt i32 %i.wb, %i.wa
  br i1 %i.abs, label %.lr.ph61.i.i.i, label %lin_calc.exit.i.i

.lr.ph61.i.i.i:                                   ; preds = %._crit_edge.i.i.i
  %i.abt = zext nneg i32 %i.wb to i64
  %i.abu = getelementptr [4 x i8], ptr %i.ua, i64 %i.abt
  %i.abv = getelementptr [4 x i8], ptr %i.abu, i64 %i.wc ; 5 uses
  %i.abw = add nuw nsw i32 %i.wb, %i.vo
  %i.abx = zext nneg i32 %i.abw to i64            ; 5 uses
  %i.aby = xor i32 %i.vo, -1
  %i.abz = add nsw i32 %i.vz, %i.aby
  %i.aca = sub nsw i32 %i.abz, %i.wb              ; 2 uses
  %i.acb = zext i32 %i.aca to i64
  %i.acc = add nuw nsw i64 %i.acb, 1              ; 2 uses
  %min.iters.check284 = icmp ult i32 %i.aca, 7
  br i1 %min.iters.check284, label %scalar.ph283.preheader, label %vector.memcheck273

vector.memcheck273:                               ; preds = %.lr.ph61.i.i.i
  %i.acd = shl nuw nsw i64 %i.abx, 2              ; 2 uses
  %scevgep275 = getelementptr i8, ptr %scevgep274, i64 %i.acd
  %i.ace = xor i32 %i.vo, -1
  %i.acf = add nsw i32 %i.vz, %i.ace
  %i.acg = sub nsw i32 %i.acf, %i.wb
  %i.ach = zext i32 %i.acg to i64
  %i.aci = shl nuw nsw i64 %i.ach, 2              ; 2 uses
  %i.acj = getelementptr i8, ptr %scevgep276, i64 %i.aci
  %scevgep277 = getelementptr i8, ptr %i.acj, i64 %i.acd
  %i.ack = shl nsw i32 %i.wa, 2
  %i.acl = and i32 %i.ack, 262128
  %i.acm = zext nneg i32 %i.acl to i64
  %i.acn = getelementptr i8, ptr %scevgep278, i64 %i.aci
  %scevgep279 = getelementptr i8, ptr %i.acn, i64 %i.acm
  %bound0280 = icmp ult ptr %scevgep275, %scevgep279
  %bound1281 = icmp ult ptr %i.abv, %scevgep277
  %found.conflict282 = and i1 %bound0280, %bound1281
  br i1 %found.conflict282, label %scalar.ph283.preheader, label %vector.ph285

vector.ph285:                                     ; preds = %vector.memcheck273
  %n.vec286 = and i64 %i.acc, 8589934584          ; 5 uses
  %i.aco = add nuw nsw i64 %n.vec286, %i.abx
  %i.acp = shl nuw nsw i64 %n.vec286, 2
  %i.acq = getelementptr i8, ptr %i.abv, i64 %i.acp
  %i.acr = trunc i64 %n.vec286 to i32
  %i.acs = add i32 %i.wb, %i.acr
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.vv, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.tx, i64 %i.abx
  br label %vector.body287

vector.body287:                                   ; preds = %vector.body287, %vector.ph285
  %index288 = phi i64 [ 0, %vector.ph285 ], [ %index.next294, %vector.body287 ] ; 3 uses
  %i.act = shl i64 %index288, 2
  %next.gep289 = getelementptr i8, ptr %i.abv, i64 %i.act ; 2 uses
  %i.acu = getelementptr i8, ptr %next.gep289, i64 16
  %wide.load290 = load <4 x float>, ptr %next.gep289, align 4, !tbaa !29, !alias.scope !144
  %wide.load291 = load <4 x float>, ptr %i.acu, align 4, !tbaa !29, !alias.scope !144
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index288 ; 3 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load292 = load <4 x float>, ptr %gep, align 4, !tbaa !29, !alias.scope !145, !noalias !144
  %wide.load293 = load <4 x float>, ptr %i.acv, align 4, !tbaa !29, !alias.scope !145, !noalias !144
  %i.acw = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load290, <4 x float> %wide.load292)
  %i.acx = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load291, <4 x float> %wide.load293)
  store <4 x float> %i.acw, ptr %gep, align 4, !tbaa !29, !alias.scope !145, !noalias !144
  store <4 x float> %i.acx, ptr %i.acv, align 4, !tbaa !29, !alias.scope !145, !noalias !144
  %index.next294 = add nuw i64 %index288, 8       ; 2 uses
  %i.acy = icmp eq i64 %index.next294, %n.vec286
  br i1 %i.acy, label %middle.block295, label %vector.body287, !llvm.loop !84

middle.block295:                                  ; preds = %vector.body287
  %cmp.n296 = icmp eq i64 %i.acc, %n.vec286
  br i1 %cmp.n296, label %lin_calc.exit.i.i, label %scalar.ph283.preheader

scalar.ph283.preheader:                           ; preds = %vector.memcheck273, %.lr.ph61.i.i.i, %middle.block295
  %indvars.iv64.i.i.i.ph = phi i64 [ %i.abx, %vector.memcheck273 ], [ %i.abx, %.lr.ph61.i.i.i ], [ %i.aco, %middle.block295 ]
  %.159.i.i.i.ph = phi ptr [ %i.abv, %vector.memcheck273 ], [ %i.abv, %.lr.ph61.i.i.i ], [ %i.acq, %middle.block295 ]
  %.14957.i.i.i.ph = phi i32 [ %i.wb, %vector.memcheck273 ], [ %i.wb, %.lr.ph61.i.i.i ], [ %i.acs, %middle.block295 ]
  br label %scalar.ph283

scalar.ph283:                                     ; preds = %scalar.ph283.preheader, %scalar.ph283
  %indvars.iv64.i.i.i = phi i64 [ %indvars.iv.next65.i.i.i, %scalar.ph283 ], [ %indvars.iv64.i.i.i.ph, %scalar.ph283.preheader ] ; 2 uses
  %.159.i.i.i = phi ptr [ %i.ade, %scalar.ph283 ], [ %.159.i.i.i.ph, %scalar.ph283.preheader ] ; 2 uses
  %.14957.i.i.i = phi i32 [ %i.add, %scalar.ph283 ], [ %.14957.i.i.i.ph, %scalar.ph283.preheader ]
  %i.acz = load float, ptr %.159.i.i.i, align 4, !tbaa !29
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %indvars.iv64.i.i.i ; 2 uses
  %i.adb = load float, ptr %i.ada, align 4, !tbaa !29
  %i.adc = tail call nsz float @llvm.fmuladd.f32(float %i.vv, float %i.acz, float %i.adb)
  store float %i.adc, ptr %i.ada, align 4, !tbaa !29
  %i.add = add nuw nsw i32 %.14957.i.i.i, 1       ; 2 uses
  %indvars.iv.next65.i.i.i = add nuw nsw i64 %indvars.iv64.i.i.i, 1
  %i.ade = getelementptr inbounds nuw i8, ptr %.159.i.i.i, i64 4
  %i.adf = icmp slt i32 %i.add, %i.wa
  br i1 %i.adf, label %scalar.ph283, label %lin_calc.exit.i.i, !llvm.loop !85

lin_calc.exit.i.i:                                ; preds = %scalar.ph283, %middle.block295, %._crit_edge.i.i.i
  %indvars.iv.next.i173.i = add nuw nsw i64 %indvars.iv.i169.i, 1 ; 2 uses
  %exitcond.not.i174.i = icmp eq i64 %indvars.iv.next.i173.i, %wide.trip.count.i168.i
  br i1 %exitcond.not.i174.i, label %._crit_edge.i171.i, label %bb.ax, !llvm.loop !86

._crit_edge.i171.i:                               ; preds = %lin_calc.exit.i.i, %bb.ax, %bb.aw
  br i1 %i.uy, label %.lr.ph62.i.i, label %add_noise.exit.i

.lr.ph62.i.i:                                     ; preds = %._crit_edge.i171.i
  %.promoted.i.i = load i32, ptr %i.ub, align 16, !tbaa !146
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  %.pre.i172.i = load float, ptr %.phi.trans.insert.i.i, align 4, !tbaa !29
  %.phi.trans.insert71.i.i = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  %.pre72.i.i = load float, ptr %.phi.trans.insert71.i.i, align 4, !tbaa !29
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.lr.ph62.i.i
  %i.adg = phi float [ %.pre72.i.i, %.lr.ph62.i.i ], [ %i.aei, %bb.bb ]
  %i.adh = phi float [ %.pre.i172.i, %.lr.ph62.i.i ], [ %i.aef, %bb.bb ]
  %indvars.iv66.i.i = phi i64 [ 2, %.lr.ph62.i.i ], [ %indvars.iv.next67.i.i, %bb.bb ] ; 4 uses
  %i.adi = phi i32 [ %.promoted.i.i, %.lr.ph62.i.i ], [ %i.adt, %bb.bb ]
  %i.adj = mul i32 %i.adi, 214013
  %i.adk = add i32 %i.adj, 2531011                ; 2 uses
  %i.adl = and i32 %i.adk, 32767
  %i.adm = add nsw i32 %i.adl, -16384
  %i.adn = sitofp i32 %i.adm to float
  %i.ado = fmul nnan nsz float %i.adn, f0x38000000
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %indvars.iv66.i.i
  %i.adq = load float, ptr %i.adp, align 4, !tbaa !29 ; 2 uses
  %i.adr = fmul nsz float %i.adq, %i.ado          ; 2 uses
  %i.ads = mul i32 %i.adk, 214013
  %i.adt = add i32 %i.ads, 2531011                ; 3 uses
  %i.adu = and i32 %i.adt, 32767
  %i.adv = add nsw i32 %i.adu, -16384
  %i.adw = sitofp i32 %i.adv to float
  %i.adx = fmul nnan nsz float %i.adw, f0x38000000
  %i.ady = fmul nsz float %i.adq, %i.adx          ; 2 uses
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %indvars.iv66.i.i
  %i.aea = fadd nsz float %i.adh, %i.adr
  store float %i.aea, ptr %i.adz, align 4, !tbaa !29
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %indvars.iv66.i.i
  %i.aec = fadd nsz float %i.adg, %i.ady
  store float %i.aec, ptr %i.aeb, align 4, !tbaa !29
  %indvars.iv.next67.i.i = add nuw nsw i64 %indvars.iv66.i.i, 1 ; 4 uses
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %indvars.iv.next67.i.i ; 2 uses
  %i.aee = load float, ptr %i.aed, align 4, !tbaa !29
  %i.aef = fsub nsz float %i.aee, %i.adr          ; 2 uses
  store float %i.aef, ptr %i.aed, align 4, !tbaa !29
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %indvars.iv.next67.i.i ; 2 uses
  %i.aeh = load float, ptr %i.aeg, align 4, !tbaa !29
  %i.aei = fsub nsz float %i.aeh, %i.ady          ; 2 uses
  store float %i.aei, ptr %i.aeg, align 4, !tbaa !29
  %exitcond70.not.i.i = icmp eq i64 %indvars.iv.next67.i.i, %wide.trip.count69.i.i
  br i1 %exitcond70.not.i.i, label %._crit_edge63.i.i, label %bb.bb, !llvm.loop !87

._crit_edge63.i.i:                                ; preds = %bb.bb
  store i32 %i.adt, ptr %i.ub, align 16, !tbaa !146
end_hunk_0
