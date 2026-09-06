Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@ma_channel_map_apply_f32:bb.a
  %i.us = load float, ptr %i.ur, align 4
  %i.ut = fmul float %i.pz, %i.us
  %i.uu = tail call float @llvm.fmuladd.f32(float %i.px, float %i.uq, float %i.ut)
  %i.uv = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  %i.uw = load float, ptr %i.uv, align 8
  %i.ux = tail call float @llvm.fmuladd.f32(float %i.qb, float %i.uw, float %i.uu)
  %i.uy = getelementptr inbounds nuw i8, ptr %i.up, i64 12
  %i.uz = load float, ptr %i.uy, align 4
  %i.va = tail call float @llvm.fmuladd.f32(float %i.qd, float %i.uz, float %i.ux)
  %i.vb = fadd float %i.va, 0.000000e+00
  %i.vc = getelementptr inbounds nuw i8, ptr %i.up, i64 20
  %i.vd = load float, ptr %i.vc, align 4
  %i.ve = tail call float @llvm.fmuladd.f32(float %i.qf, float %i.vd, float %i.vb)
  %i.vf = tail call float @llvm.fmuladd.f32(float %i.un, float %i.ve, float %.0394.us.us.us) ; 2 uses
  %indvars.iv.next531 = add nuw nsw i64 %indvars.iv530, 1 ; 2 uses
  %exitcond535.not = icmp eq i64 %indvars.iv.next531, %wide.trip.count534
  br i1 %exitcond535.not, label %._crit_edge.us.us, label %.lr.ph.split.us.us.us, !llvm.loop !678

._crit_edge.us.us:                                ; preds = %ma_channel_map_get_channel.exit353.us.us.us.peel546, %ma_channel_map_get_channel.exit353.us399.us, %ma_channel_map_get_channel.exit353.us.us.us.peel320, %ma_channel_map_get_channel.exit353.us.us.us.peel, %ma_channel_map_get_channel.exit353.us.us.us.peel285, %ma_channel_map_get_channel.exit353.us.us.us, %.lr.ph.split.us.us.us.preheader
  %.us-phi.us.us = phi float [ %i.vf, %ma_channel_map_get_channel.exit353.us.us.us ], [ %i.ra, %ma_channel_map_get_channel.exit353.us.us.us.peel546 ], [ %i.qs, %.lr.ph.split.us.us.us.preheader ], [ %i.tc, %ma_channel_map_get_channel.exit353.us.us.us.peel320 ], [ %i.rs, %ma_channel_map_get_channel.exit353.us.us.us.peel ], [ %i.sk, %ma_channel_map_get_channel.exit353.us.us.us.peel285 ], [ %i.ub, %ma_channel_map_get_channel.exit353.us399.us ]
  %i.vg = trunc nuw nsw i64 %indvars.iv551 to i32
  %i.vh = add i32 %i.my, %i.vg
  %i.vi = zext i32 %i.vh to i64
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.vi
  store float %.us-phi.us.us, ptr %i.vj, align 4
  %indvars.iv.next552 = add nuw nsw i64 %indvars.iv551, 1 ; 2 uses
  %exitcond555.not = icmp eq i64 %indvars.iv.next552, %wide.trip.count554
  br i1 %exitcond555.not, label %._crit_edge397.us, label %.lr.ph396.split.us.us

._crit_edge397.us:                                ; preds = %._crit_edge.us.us, %ma_channel_map_get_channel.exit350.us409.prol.loopexit, %ma_channel_map_get_channel.exit350.us409, %ma_channel_map_get_channel.exit350.us405.us.prol.loopexit, %ma_channel_map_get_channel.exit350.us405.us, %middle.block89, %middle.block78
  %i.vk = add i32 %.5406.us, 1                    ; 2 uses
  %i.vl = zext i32 %i.vk to i64
  %i.vm = icmp ugt i64 %6, %i.vl
  br i1 %i.vm, label %.preheader370.us, label %.loopexit

.preheader369:                                    ; preds = %bb.r
  %.not471 = icmp eq i32 %2, 0
  br i1 %.not471, label %.loopexit362.thread, label %.lr.ph415

.lr.ph415:                                        ; preds = %.preheader369
  %i.vn = icmp eq ptr %1, null
  %.not472 = icmp eq i32 %5, 0
  %i.vo = icmp eq ptr %4, null
  %wide.trip.count579 = zext nneg i32 %2 to i64   ; 6 uses
  %wide.trip.count569 = zext nneg i32 %5 to i64   ; 3 uses
  %wide.trip.count574 = zext nneg i32 %5 to i64
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph415, %._crit_edge
  %indvars.iv576 = phi i64 [ 0, %.lr.ph415 ], [ %indvars.iv.next577, %._crit_edge ] ; 4 uses
  br i1 %i.vn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.vp = trunc nuw nsw i64 %indvars.iv576 to i32
  %i.vq = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %2, i32 noundef %i.vp)
  br label %ma_channel_map_get_channel.exit

bb.aa:                                            ; preds = %bb.y
  %i.vr = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv576
  %i.vs = load i8, ptr %i.vr, align 1
  br label %ma_channel_map_get_channel.exit

ma_channel_map_get_channel.exit:                  ; preds = %bb.z, %bb.aa
  %.0.i344 = phi i8 [ %i.vq, %bb.z ], [ %i.vs, %bb.aa ]
  br i1 %.not472, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %ma_channel_map_get_channel.exit
  %i.vt = zext i8 %.0.i344 to i64
  %i.vu = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %i.vt ; 5 uses
  %i.vv = load float, ptr %i.vu, align 8          ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vu, i64 4
  %i.vx = load float, ptr %i.vw, align 4          ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vu, i64 8
  %i.vz = load float, ptr %i.vy, align 8          ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vu, i64 12
  %i.wb = load float, ptr %i.wa, align 4          ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vu, i64 20
  %i.wd = load float, ptr %i.wc, align 4          ; 2 uses
  %i.we = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %indvars.iv576 ; 2 uses
  br i1 %i.vo, label %ma_channel_map_get_channel.exit347.us, label %ma_channel_map_get_channel.exit347

ma_channel_map_get_channel.exit347.us:            ; preds = %.lr.ph, %ma_channel_map_get_channel.exit347.us
  %indvars.iv571 = phi i64 [ %indvars.iv.next572, %ma_channel_map_get_channel.exit347.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.wf = trunc nuw i64 %indvars.iv571 to i32
  %i.wg = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %5, i32 noundef %i.wf)
  %i.wh = zext nneg i8 %i.wg to i64
  %i.wi = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %i.wh ; 5 uses
  %i.wj = load float, ptr %i.wi, align 8
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wi, i64 4
  %i.wl = load float, ptr %i.wk, align 4
  %i.wm = fmul float %i.vx, %i.wl
  %i.wn = tail call float @llvm.fmuladd.f32(float %i.vv, float %i.wj, float %i.wm)
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wi, i64 8
  %i.wp = load float, ptr %i.wo, align 8
  %i.wq = tail call float @llvm.fmuladd.f32(float %i.vz, float %i.wp, float %i.wn)
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wi, i64 12
  %i.ws = load float, ptr %i.wr, align 4
  %i.wt = tail call float @llvm.fmuladd.f32(float %i.wb, float %i.ws, float %i.wq)
  %i.wu = fadd float %i.wt, 0.000000e+00
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wi, i64 20
  %i.ww = load float, ptr %i.wv, align 4
  %i.wx = tail call float @llvm.fmuladd.f32(float %i.wd, float %i.ww, float %i.wu)
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %indvars.iv571
  store float %i.wx, ptr %i.wy, align 4
  %indvars.iv.next572 = add nuw nsw i64 %indvars.iv571, 1 ; 2 uses
  %exitcond575.not = icmp eq i64 %indvars.iv.next572, %wide.trip.count574
  br i1 %exitcond575.not, label %._crit_edge, label %ma_channel_map_get_channel.exit347.us

ma_channel_map_get_channel.exit347:               ; preds = %.lr.ph, %ma_channel_map_get_channel.exit347
  %indvars.iv566 = phi i64 [ %indvars.iv.next567, %ma_channel_map_get_channel.exit347 ], [ 0, %.lr.ph ] ; 3 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv566
  %i.xa = load i8, ptr %i.wz, align 1
  %i.xb = zext i8 %i.xa to i64
  %i.xc = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %i.xb ; 5 uses
  %i.xd = load float, ptr %i.xc, align 8
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xc, i64 4
  %i.xf = load float, ptr %i.xe, align 4
  %i.xg = fmul float %i.vx, %i.xf
  %i.xh = tail call float @llvm.fmuladd.f32(float %i.vv, float %i.xd, float %i.xg)
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xc, i64 8
  %i.xj = load float, ptr %i.xi, align 8
  %i.xk = tail call float @llvm.fmuladd.f32(float %i.vz, float %i.xj, float %i.xh)
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xc, i64 12
  %i.xm = load float, ptr %i.xl, align 4
  %i.xn = tail call float @llvm.fmuladd.f32(float %i.wb, float %i.xm, float %i.xk)
  %i.xo = fadd float %i.xn, 0.000000e+00
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xc, i64 20
  %i.xq = load float, ptr %i.xp, align 4
  %i.xr = tail call float @llvm.fmuladd.f32(float %i.wd, float %i.xq, float %i.xo)
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %indvars.iv566
  store float %i.xr, ptr %i.xs, align 4
  %indvars.iv.next567 = add nuw nsw i64 %indvars.iv566, 1 ; 2 uses
  %exitcond570.not = icmp eq i64 %indvars.iv.next567, %wide.trip.count569
  br i1 %exitcond570.not, label %._crit_edge, label %ma_channel_map_get_channel.exit347

._crit_edge:                                      ; preds = %ma_channel_map_get_channel.exit347, %ma_channel_map_get_channel.exit347.us, %ma_channel_map_get_channel.exit
  %indvars.iv.next577 = add nuw nsw i64 %indvars.iv576, 1 ; 2 uses
  %exitcond580.not = icmp eq i64 %indvars.iv.next577, %wide.trip.count579
  br i1 %exitcond580.not, label %._crit_edge416, label %bb.y

._crit_edge416:                                   ; preds = %._crit_edge
  switch i32 %2, label %.loopexit362 [
    i32 8, label %bb.ab
    i32 6, label %.preheader367
  ]

.preheader367:                                    ; preds = %._crit_edge416
  %.not473 = icmp eq i64 %6, 0
  br i1 %.not473, label %.loopexit362, label %.preheader366.lr.ph

.preheader366.lr.ph:                              ; preds = %.preheader367
  %.not474 = icmp eq i32 %5, 0
  %i.xt = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.xu = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.xv = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.xw = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.xx = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %wide.trip.count584 = zext nneg i32 %5 to i64
  br label %.preheader366

bb.ab:                                            ; preds = %._crit_edge416
  %i.xy = icmp eq i32 %5, 2
  %.not477 = icmp eq i64 %6, 0                    ; 2 uses
  br i1 %i.xy, label %.preheader361, label %.preheader364

.preheader364:                                    ; preds = %bb.ab
  br i1 %.not477, label %.loopexit362, label %.preheader363.lr.ph

.preheader363.lr.ph:                              ; preds = %.preheader364
  %.not476 = icmp eq i32 %5, 0
  %i.xz = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ya = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.yb = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.yc = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.yd = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %i.ye = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  %i.yf = getelementptr inbounds nuw i8, ptr %i.b, i64 896
  %wide.trip.count589 = zext nneg i32 %5 to i64
  br label %.preheader363

.preheader361:                                    ; preds = %bb.ab
  br i1 %.not477, label %.loopexit362, label %.lr.ph455

.lr.ph455:                                        ; preds = %.preheader361
  %i.yg = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.yh = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.yi = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.yj = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.yk = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %i.yl = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  %i.ym = getelementptr inbounds nuw i8, ptr %i.b, i64 896
  %i.yn = load <2 x float>, ptr %i.b, align 16    ; 4 uses
  %i.yo = load <2 x float>, ptr %i.yg, align 16   ; 4 uses
  %i.yp = load <2 x float>, ptr %i.yh, align 16   ; 3 uses
  %i.yq = load <2 x float>, ptr %i.yi, align 16   ; 3 uses
  %i.yr = load <2 x float>, ptr %i.yj, align 16   ; 4 uses
  %i.ys = load <2 x float>, ptr %i.yk, align 16   ; 4 uses
  %i.yt = load <2 x float>, ptr %i.yl, align 16   ; 3 uses
  %i.yu = load <2 x float>, ptr %i.ym, align 16   ; 3 uses
  %i.yv = trunc i64 %6 to i32                     ; 3 uses
  %min.iters.check96.a = icmp ult i32 %i.yv, 4
  br i1 %min.iters.check96.a, label %scalar.ph95.preheader, label %vector.scevcheck92

vector.scevcheck92:                               ; preds = %.lr.ph455
  %7 = add i64 %6, -1                             ; 2 uses
  %8 = and i64 %7, 4294967295
  %9 = icmp eq i64 %8, 4294967295
  %10 = icmp ugt i64 %7, 536870911
  %11 = or i1 %9, %10
  br i1 %11, label %scalar.ph95.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck92
  %i.yw = shl nuw nsw i64 %6, 5
  %scevgep = getelementptr i8, ptr %0, i64 %i.yw
  %i.yx = shl nuw nsw i64 %6, 3
  %scevgep94 = getelementptr i8, ptr %3, i64 %i.yx
  %bound0 = icmp ult ptr %0, %scevgep94
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph95.preheader, label %vector.ph97

vector.ph97:                                      ; preds = %vector.memcheck
  %n.vec98 = and i32 %i.yv, 1073741820            ; 4 uses
  %i.yy = shufflevector <2 x float> %i.yn, <2 x float> %i.yo, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.yz = shufflevector <2 x float> %i.yn, <2 x float> %i.yo, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.za = shufflevector <2 x float> %i.yp, <2 x float> %i.yq, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.zb = shufflevector <2 x float> %i.yp, <2 x float> %i.yq, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.zc = shufflevector <2 x float> %i.yr, <2 x float> %i.ys, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.zd = shufflevector <2 x float> %i.yr, <2 x float> %i.ys, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.ze = shufflevector <2 x float> %i.yt, <2 x float> %i.yu, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.zf = shufflevector <2 x float> %i.yt, <2 x float> %i.yu, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.zg = shufflevector <8 x float> %i.yy, <8 x float> %i.za, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zh = shufflevector <8 x float> %i.yz, <8 x float> %i.zb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zi = shufflevector <8 x float> %i.zc, <8 x float> %i.ze, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zj = shufflevector <8 x float> %i.zd, <8 x float> %i.zf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph97
  %index132 = phi i32 [ 0, %vector.ph97 ], [ %index.next134, %vector.body131 ] ; 3 uses
  %i.zk = shl i32 %index132, 1
  %i.zl = zext i32 %i.zk to i64
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.zl
  %wide.vec = load <8 x float>, ptr %i.zm, align 4, !alias.scope !692 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 4 uses
  %strided.vec133 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 4 uses
  %i.zn = shl i32 %index132, 3
  %i.zo = zext i32 %i.zn to i64
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.zo
  %i.zq = shufflevector <4 x float> %strided.vec133, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.zr = shufflevector <4 x float> %strided.vec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.zs = shufflevector <4 x float> %strided.vec133, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.zt = shufflevector <4 x float> %strided.vec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.zu = shufflevector <4 x float> %strided.vec133, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.zv = shufflevector <4 x float> %strided.vec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.zw = shufflevector <4 x float> %strided.vec133, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.zx = shufflevector <4 x float> %strided.vec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.zy = shufflevector <8 x float> %i.zq, <8 x float> %i.zs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zz = shufflevector <8 x float> %i.zr, <8 x float> %i.zt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aaa = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.zz, <16 x float> %i.zh, <16 x float> zeroinitializer)
  %i.aab = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.zy, <16 x float> %i.zg, <16 x float> %i.aaa)
  %i.aac = shufflevector <8 x float> %i.zu, <8 x float> %i.zw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aad = shufflevector <8 x float> %i.zv, <8 x float> %i.zx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aae = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.aad, <16 x float> %i.zj, <16 x float> zeroinitializer)
  %i.aaf = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.aac, <16 x float> %i.zi, <16 x float> %i.aae)
  %interleaved.vec = shufflevector <16 x float> %i.aab, <16 x float> %i.aaf, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.zp, align 4, !alias.scope !693, !noalias !692
  %index.next134 = add nuw i32 %index132, 4       ; 2 uses
  %i.aag = icmp eq i32 %index.next134, %n.vec98
  br i1 %i.aag, label %middle.block135, label %vector.body131, !llvm.loop !682

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i32 %n.vec98, %i.yv
  br i1 %cmp.n136, label %.loopexit362, label %scalar.ph95.preheader

scalar.ph95.preheader:                            ; preds = %vector.memcheck, %vector.scevcheck92, %.lr.ph455, %middle.block135
  %.0314454.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck92 ], [ 0, %.lr.ph455 ], [ %n.vec98, %middle.block135 ]
  %i.aah = shufflevector <2 x float> %i.yn, <2 x float> %i.yo, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.aai = shufflevector <2 x float> %i.yp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aaj = shufflevector <4 x float> %i.aah, <4 x float> %i.aai, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aak = shufflevector <2 x float> %i.yq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aal = shufflevector <4 x float> %i.aaj, <4 x float> %i.aak, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aam = shufflevector <2 x float> %i.yn, <2 x float> %i.yo, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.aan = shufflevector <4 x float> %i.aam, <4 x float> %i.aai, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aao = shufflevector <4 x float> %i.aan, <4 x float> %i.aak, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aap = shufflevector <2 x float> %i.yr, <2 x float> %i.ys, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.aaq = shufflevector <2 x float> %i.yt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aar = shufflevector <4 x float> %i.aap, <4 x float> %i.aaq, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aas = shufflevector <2 x float> %i.yu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aat = shufflevector <4 x float> %i.aar, <4 x float> %i.aas, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aau = shufflevector <2 x float> %i.yr, <2 x float> %i.ys, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.aav = shufflevector <4 x float> %i.aau, <4 x float> %i.aaq, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aaw = shufflevector <4 x float> %i.aav, <4 x float> %i.aas, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  br label %scalar.ph95

scalar.ph95:                                      ; preds = %scalar.ph95.preheader, %scalar.ph95
  %.0314454 = phi i32 [ %i.abn, %scalar.ph95 ], [ %.0314454.ph, %scalar.ph95.preheader ] ; 3 uses
  %i.aax = shl i32 %.0314454, 1
  %i.aay = zext i32 %i.aax to i64
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aay
  %i.aba = shl i32 %.0314454, 3                   ; 2 uses
  %i.abb = zext i32 %i.aba to i64
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.abb
  %i.abd = load <2 x float>, ptr %i.aaz, align 4  ; 2 uses
  %i.abe = shufflevector <2 x float> %i.abd, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.abf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abe, <4 x float> %i.aal, <4 x float> zeroinitializer)
  %i.abg = shufflevector <2 x float> %i.abd, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.abh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abg, <4 x float> %i.aao, <4 x float> %i.abf)
  store <4 x float> %i.abh, ptr %i.abc, align 4
  %i.abi = or disjoint i32 %i.aba, 4
  %i.abj = zext i32 %i.abi to i64
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.abj
  %i.abl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abe, <4 x float> %i.aat, <4 x float> zeroinitializer)
  %i.abm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abg, <4 x float> %i.aaw, <4 x float> %i.abl)
  store <4 x float> %i.abm, ptr %i.abk, align 4
  %i.abn = add i32 %.0314454, 1                   ; 3 uses
  %i.abo = zext i32 %i.abn to i64
  %i.abp = icmp ugt i64 %6, %i.abo
  br i1 %i.abp, label %scalar.ph95, label %.loopexit362, !llvm.loop !683

.preheader363:                                    ; preds = %.preheader363.lr.ph, %._crit_edge443
  %.1315452 = phi i32 [ 0, %.preheader363.lr.ph ], [ %i.adi, %._crit_edge443 ] ; 3 uses
  br i1 %.not476, label %._crit_edge443, label %.lr.ph442

.lr.ph442:                                        ; preds = %.preheader363
  %i.abq = mul i32 %.1315452, %5
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph442, %bb.ac
  %indvars.iv586 = phi i64 [ 0, %.lr.ph442 ], [ %indvars.iv.next587, %bb.ac ] ; 10 uses
  %i.abr = phi <4 x float> [ zeroinitializer, %.lr.ph442 ], [ %i.acm, %bb.ac ]
  %i.abs = phi <4 x float> [ zeroinitializer, %.lr.ph442 ], [ %i.acz, %bb.ac ]
  %i.abt = trunc nuw i64 %indvars.iv586 to i32
  %i.abu = add i32 %i.abq, %i.abt
  %i.abv = zext i32 %i.abu to i64
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.abv
  %i.abx = load float, ptr %i.abw, align 4
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv586
  %i.abz = load float, ptr %i.aby, align 4
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %indvars.iv586
  %i.acb = load float, ptr %i.aca, align 4
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %indvars.iv586
  %i.acd = load float, ptr %i.acc, align 4
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.yb, i64 %indvars.iv586
  %i.acf = load float, ptr %i.ace, align 4
  %i.acg = insertelement <4 x float> poison, float %i.abx, i64 0
  %i.ach = shufflevector <4 x float> %i.acg, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aci = insertelement <4 x float> poison, float %i.abz, i64 0
  %i.acj = insertelement <4 x float> %i.aci, float %i.acb, i64 1
  %i.ack = insertelement <4 x float> %i.acj, float %i.acd, i64 2
  %i.acl = insertelement <4 x float> %i.ack, float %i.acf, i64 3
  %i.acm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ach, <4 x float> %i.acl, <4 x float> %i.abr) ; 2 uses
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %i.yc, i64 %indvars.iv586
  %i.aco = load float, ptr %i.acn, align 4
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %indvars.iv586
  %i.acq = load float, ptr %i.acp, align 4
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %indvars.iv586
  %i.acs = load float, ptr %i.acr, align 4
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %indvars.iv586
  %i.acu = load float, ptr %i.act, align 4
  %i.acv = insertelement <4 x float> poison, float %i.aco, i64 0
  %i.acw = insertelement <4 x float> %i.acv, float %i.acq, i64 1
  %i.acx = insertelement <4 x float> %i.acw, float %i.acs, i64 2
  %i.acy = insertelement <4 x float> %i.acx, float %i.acu, i64 3
  %i.acz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ach, <4 x float> %i.acy, <4 x float> %i.abs) ; 2 uses
  %indvars.iv.next587 = add nuw nsw i64 %indvars.iv586, 1 ; 2 uses
  %exitcond590.not = icmp eq i64 %indvars.iv.next587, %wide.trip.count589
  br i1 %exitcond590.not, label %._crit_edge443, label %bb.ac

._crit_edge443:                                   ; preds = %bb.ac, %.preheader363
  %i.ada = phi <4 x float> [ zeroinitializer, %.preheader363 ], [ %i.acm, %bb.ac ]
  %i.adb = phi <4 x float> [ zeroinitializer, %.preheader363 ], [ %i.acz, %bb.ac ]
  %i.adc = shl i32 %.1315452, 3                   ; 2 uses
  %i.add = zext i32 %i.adc to i64
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.add
  store <4 x float> %i.ada, ptr %i.ade, align 4
  %i.adf = or disjoint i32 %i.adc, 4
  %i.adg = zext i32 %i.adf to i64
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.adg
  store <4 x float> %i.adb, ptr %i.adh, align 4
  %i.adi = add i32 %.1315452, 1                   ; 3 uses
  %i.adj = zext i32 %i.adi to i64
  %i.adk = icmp ugt i64 %6, %i.adj
  br i1 %i.adk, label %.preheader363, label %.loopexit362

.preheader366:                                    ; preds = %.preheader366.lr.ph, %._crit_edge425
  %.2431 = phi i32 [ 0, %.preheader366.lr.ph ], [ %i.afd, %._crit_edge425 ] ; 3 uses
  br i1 %.not474, label %._crit_edge425, label %.lr.ph424

.lr.ph424:                                        ; preds = %.preheader366
  %i.adl = mul i32 %.2431, %5
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph424, %bb.ad
  %indvars.iv581 = phi i64 [ 0, %.lr.ph424 ], [ %indvars.iv.next582, %bb.ad ] ; 8 uses
  %i.adm = phi <2 x float> [ zeroinitializer, %.lr.ph424 ], [ %i.aeq, %bb.ad ]
  %i.adn = phi <2 x float> [ zeroinitializer, %.lr.ph424 ], [ %i.aej, %bb.ad ]
  %i.ado = phi <2 x float> [ zeroinitializer, %.lr.ph424 ], [ %i.aec, %bb.ad ]
  %i.adp = trunc nuw i64 %indvars.iv581 to i32
  %i.adq = add i32 %i.adl, %i.adp
  %i.adr = zext i32 %i.adq to i64
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.adr
  %i.adt = load float, ptr %i.ads, align 4
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv581
  %i.adv = load float, ptr %i.adu, align 4
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %i.xt, i64 %indvars.iv581
  %i.adx = load float, ptr %i.adw, align 4
  %i.ady = insertelement <2 x float> poison, float %i.adt, i64 0
  %i.adz = shufflevector <2 x float> %i.ady, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.aea = insertelement <2 x float> poison, float %i.adv, i64 0
  %i.aeb = insertelement <2 x float> %i.aea, float %i.adx, i64 1
  %i.aec = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adz, <2 x float> %i.aeb, <2 x float> %i.ado) ; 2 uses
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.xu, i64 %indvars.iv581
  %i.aee = load float, ptr %i.aed, align 4
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %i.xv, i64 %indvars.iv581
  %i.aeg = load float, ptr %i.aef, align 4
  %i.aeh = insertelement <2 x float> poison, float %i.aee, i64 0
  %i.aei = insertelement <2 x float> %i.aeh, float %i.aeg, i64 1
  %i.aej = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adz, <2 x float> %i.aei, <2 x float> %i.adn) ; 2 uses
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %i.xw, i64 %indvars.iv581
  %i.ael = load float, ptr %i.aek, align 4
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.xx, i64 %indvars.iv581
  %i.aen = load float, ptr %i.aem, align 4
  %i.aeo = insertelement <2 x float> poison, float %i.ael, i64 0
  %i.aep = insertelement <2 x float> %i.aeo, float %i.aen, i64 1
  %i.aeq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adz, <2 x float> %i.aep, <2 x float> %i.adm) ; 2 uses
  %indvars.iv.next582 = add nuw nsw i64 %indvars.iv581, 1 ; 2 uses
  %exitcond585.not = icmp eq i64 %indvars.iv.next582, %wide.trip.count584
  br i1 %exitcond585.not, label %._crit_edge425, label %bb.ad

._crit_edge425:                                   ; preds = %bb.ad, %.preheader366
  %i.aer = phi <2 x float> [ zeroinitializer, %.preheader366 ], [ %i.aeq, %bb.ad ]
  %i.aes = phi <2 x float> [ zeroinitializer, %.preheader366 ], [ %i.aej, %bb.ad ]
  %i.aet = phi <2 x float> [ zeroinitializer, %.preheader366 ], [ %i.aec, %bb.ad ]
  %i.aeu = mul i32 %.2431, 6                      ; 3 uses
  %i.aev = zext i32 %i.aeu to i64
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aev
  store <2 x float> %i.aet, ptr %i.aew, align 4
  %i.aex = add i32 %i.aeu, 2
  %i.aey = zext i32 %i.aex to i64
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aey
  store <2 x float> %i.aes, ptr %i.aez, align 4
  %i.afa = add i32 %i.aeu, 4
  %i.afb = zext i32 %i.afa to i64
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.afb
  store <2 x float> %i.aer, ptr %i.afc, align 4
  %i.afd = add i32 %.2431, 1                      ; 3 uses
  %i.afe = zext i32 %i.afd to i64
  %i.aff = icmp ugt i64 %6, %i.afe
  br i1 %i.aff, label %.preheader366, label %.loopexit362

.loopexit362:                                     ; preds = %._crit_edge425, %._crit_edge443, %scalar.ph95, %middle.block135, %.preheader367, %.preheader364, %.preheader361, %._crit_edge416
  %.3 = phi i32 [ 0, %._crit_edge416 ], [ %i.abn, %scalar.ph95 ], [ %i.adi, %._crit_edge443 ], [ 0, %.preheader361 ], [ 0, %.preheader364 ], [ 0, %.preheader367 ], [ %n.vec98, %middle.block135 ], [ %i.afd, %._crit_edge425 ] ; 2 uses
  %i.afg = zext i32 %.3 to i64
  %i.afh = icmp ugt i64 %6, %i.afg
  br i1 %i.afh, label %.preheader360.lr.ph, label %.loopexit

.loopexit362.thread:                              ; preds = %.preheader369
  %.not690 = icmp eq i64 %6, 0
  br i1 %.not690, label %.loopexit, label %.preheader360

.preheader360.lr.ph:                              ; preds = %.loopexit362
  %.not479 = icmp eq i32 %5, 0
  %wide.trip.count599 = zext nneg i32 %2 to i64
  %wide.trip.count604 = zext nneg i32 %2 to i64
  %i.afi = add nsw i64 %wide.trip.count579, -1    ; 2 uses
  %xtraiter331 = and i64 %wide.trip.count569, 3   ; 3 uses
  %i.afj = add nsw i32 %5, -1
  %i.afk = icmp ult i32 %i.afj, 3
  %unroll_iter336 = and i64 %wide.trip.count569, 60
  %lcmp.mod333.not = icmp eq i64 %xtraiter331, 0
  %lcmp.mod335 = icmp ne i64 %xtraiter331, 0
  %min.iters.check140 = icmp ult i32 %2, 8
  %i.afl = trunc nsw i64 %i.afi to i32
  %i.afm = icmp ugt i64 %i.afi, 4294967295
  %n.vec142 = and i64 %wide.trip.count579, 56     ; 3 uses
  %cmp.n147 = icmp eq i64 %n.vec142, %wide.trip.count579
end_hunk_0
