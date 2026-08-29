Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@ma_channel_map_apply_f32:bb.a
  %i.uv = fadd float %i.uu, 0.000000e+00
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uj, i64 20
  %i.ux = load float, ptr %i.uw, align 4
  %i.uy = tail call float @llvm.fmuladd.f32(float %i.pv, float %i.ux, float %i.uv)
  %i.uz = tail call float @llvm.fmuladd.f32(float %i.uh, float %i.uy, float %.0394.us.us.us) ; 2 uses
  %indvars.iv.next531 = add nuw nsw i64 %indvars.iv530, 1 ; 2 uses
  %exitcond535.not = icmp eq i64 %indvars.iv.next531, %wide.trip.count534
  br i1 %exitcond535.not, label %._crit_edge.us.us, label %.lr.ph.split.us.us.us, !llvm.loop !639

ma_channel_map_get_channel.exit350.us405.us:      ; preds = %ma_channel_map_get_channel.exit350.us405.us, %ma_channel_map_get_channel.exit350.us405.us.preheader186.new
  %indvars.iv561 = phi i64 [ %indvars.iv561.unr, %ma_channel_map_get_channel.exit350.us405.us.preheader186.new ], [ %indvars.iv.next562.3, %ma_channel_map_get_channel.exit350.us405.us ] ; 5 uses
  %i.va = trunc nuw nsw i64 %indvars.iv561 to i32
  %i.vb = add i32 %i.my, %i.va
  %i.vc = zext i32 %i.vb to i64
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.vc
  store float 0.000000e+00, ptr %i.vd, align 4
  %i.ve = trunc i64 %indvars.iv561 to i32
  %.reass367 = add i32 %i.ve, %invariant.op366
  %i.vf = zext i32 %.reass367 to i64
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.vf
  store float 0.000000e+00, ptr %i.vg, align 4
  %i.vh = trunc i64 %indvars.iv561 to i32
  %.reass369 = add i32 %i.vh, %invariant.op368
  %i.vi = zext i32 %.reass369 to i64
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.vi
  store float 0.000000e+00, ptr %i.vj, align 4
  %i.vk = trunc i64 %indvars.iv561 to i32
  %.reass371 = add i32 %i.vk, %invariant.op370
  %i.vl = zext i32 %.reass371 to i64
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.vl
  store float 0.000000e+00, ptr %i.vm, align 4
  %indvars.iv.next562.3 = add nuw nsw i64 %indvars.iv561, 4 ; 2 uses
  %exitcond565.not.3 = icmp eq i64 %indvars.iv.next562.3, %wide.trip.count564
  br i1 %exitcond565.not.3, label %._crit_edge397.us, label %ma_channel_map_get_channel.exit350.us405.us, !llvm.loop !641

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
  %wide.vec = load <8 x float>, ptr %i.zm, align 4, !alias.scope !642 ; 2 uses
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
  store <32 x float> %interleaved.vec, ptr %i.zp, align 4, !alias.scope !645, !noalias !642
  %index.next134 = add nuw i32 %index132, 4       ; 2 uses
  %i.aag = icmp eq i32 %index.next134, %n.vec98
  br i1 %i.aag, label %middle.block135, label %vector.body131, !llvm.loop !647

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
  %.0314454 = phi i32 [ %i.abt, %scalar.ph95 ], [ %.0314454.ph, %scalar.ph95.preheader ] ; 3 uses
  %i.aax = shl i32 %.0314454, 1                   ; 2 uses
  %i.aay = zext i32 %i.aax to i64
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aay
  %i.aba = load float, ptr %i.aaz, align 4
  %i.abb = or disjoint i32 %i.aax, 1
  %i.abc = zext i32 %i.abb to i64
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.abc
  %i.abe = load float, ptr %i.abd, align 4
  %i.abf = shl i32 %.0314454, 3                   ; 2 uses
  %i.abg = zext i32 %i.abf to i64
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.abg
  %i.abi = insertelement <4 x float> poison, float %i.aba, i64 0
  %i.abj = shufflevector <4 x float> %i.abi, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.abk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abj, <4 x float> %i.aal, <4 x float> zeroinitializer)
  %i.abl = insertelement <4 x float> poison, float %i.abe, i64 0
  %i.abm = shufflevector <4 x float> %i.abl, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.abn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abm, <4 x float> %i.aao, <4 x float> %i.abk)
  store <4 x float> %i.abn, ptr %i.abh, align 4
  %i.abo = or disjoint i32 %i.abf, 4
  %i.abp = zext i32 %i.abo to i64
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.abp
  %i.abr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abj, <4 x float> %i.aat, <4 x float> zeroinitializer)
  %i.abs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abm, <4 x float> %i.aaw, <4 x float> %i.abr)
  store <4 x float> %i.abs, ptr %i.abq, align 4
  %i.abt = add i32 %.0314454, 1                   ; 3 uses
  %i.abu = zext i32 %i.abt to i64
  %i.abv = icmp ugt i64 %6, %i.abu
  br i1 %i.abv, label %scalar.ph95, label %.loopexit362, !llvm.loop !648

.preheader363:                                    ; preds = %.preheader363.lr.ph, %._crit_edge443
  %.1315452 = phi i32 [ 0, %.preheader363.lr.ph ], [ %i.ado, %._crit_edge443 ] ; 3 uses
  br i1 %.not476, label %._crit_edge443, label %.lr.ph442

.lr.ph442:                                        ; preds = %.preheader363
  %i.abw = mul i32 %.1315452, %5
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph442, %bb.ac
  %indvars.iv586 = phi i64 [ 0, %.lr.ph442 ], [ %indvars.iv.next587, %bb.ac ] ; 10 uses
  %i.abx = phi <4 x float> [ zeroinitializer, %.lr.ph442 ], [ %i.acs, %bb.ac ]
  %i.aby = phi <4 x float> [ zeroinitializer, %.lr.ph442 ], [ %i.adf, %bb.ac ]
  %i.abz = trunc nuw i64 %indvars.iv586 to i32
  %i.aca = add i32 %i.abw, %i.abz
  %i.acb = zext i32 %i.aca to i64
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.acb
  %i.acd = load float, ptr %i.acc, align 4
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv586
  %i.acf = load float, ptr %i.ace, align 4
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %indvars.iv586
  %i.ach = load float, ptr %i.acg, align 4
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %indvars.iv586
  %i.acj = load float, ptr %i.aci, align 4
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.yb, i64 %indvars.iv586
  %i.acl = load float, ptr %i.ack, align 4
  %i.acm = insertelement <4 x float> poison, float %i.acd, i64 0
  %i.acn = shufflevector <4 x float> %i.acm, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aco = insertelement <4 x float> poison, float %i.acf, i64 0
  %i.acp = insertelement <4 x float> %i.aco, float %i.ach, i64 1
  %i.acq = insertelement <4 x float> %i.acp, float %i.acj, i64 2
  %i.acr = insertelement <4 x float> %i.acq, float %i.acl, i64 3
  %i.acs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acn, <4 x float> %i.acr, <4 x float> %i.abx) ; 2 uses
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %i.yc, i64 %indvars.iv586
  %i.acu = load float, ptr %i.act, align 4
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %indvars.iv586
  %i.acw = load float, ptr %i.acv, align 4
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %indvars.iv586
  %i.acy = load float, ptr %i.acx, align 4
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %indvars.iv586
  %i.ada = load float, ptr %i.acz, align 4
  %i.adb = insertelement <4 x float> poison, float %i.acu, i64 0
  %i.adc = insertelement <4 x float> %i.adb, float %i.acw, i64 1
  %i.add = insertelement <4 x float> %i.adc, float %i.acy, i64 2
  %i.ade = insertelement <4 x float> %i.add, float %i.ada, i64 3
  %i.adf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acn, <4 x float> %i.ade, <4 x float> %i.aby) ; 2 uses
  %indvars.iv.next587 = add nuw nsw i64 %indvars.iv586, 1 ; 2 uses
  %exitcond590.not = icmp eq i64 %indvars.iv.next587, %wide.trip.count589
  br i1 %exitcond590.not, label %._crit_edge443, label %bb.ac

._crit_edge443:                                   ; preds = %bb.ac, %.preheader363
  %i.adg = phi <4 x float> [ zeroinitializer, %.preheader363 ], [ %i.acs, %bb.ac ]
  %i.adh = phi <4 x float> [ zeroinitializer, %.preheader363 ], [ %i.adf, %bb.ac ]
  %i.adi = shl i32 %.1315452, 3                   ; 2 uses
  %i.adj = zext i32 %i.adi to i64
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.adj
  store <4 x float> %i.adg, ptr %i.adk, align 4
  %i.adl = or disjoint i32 %i.adi, 4
  %i.adm = zext i32 %i.adl to i64
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.adm
  store <4 x float> %i.adh, ptr %i.adn, align 4
  %i.ado = add i32 %.1315452, 1                   ; 3 uses
  %i.adp = zext i32 %i.ado to i64
  %i.adq = icmp ugt i64 %6, %i.adp
  br i1 %i.adq, label %.preheader363, label %.loopexit362

.preheader366:                                    ; preds = %.preheader366.lr.ph, %._crit_edge425
  %.2431 = phi i32 [ 0, %.preheader366.lr.ph ], [ %i.afj, %._crit_edge425 ] ; 3 uses
  br i1 %.not474, label %._crit_edge425, label %.lr.ph424

.lr.ph424:                                        ; preds = %.preheader366
  %i.adr = mul i32 %.2431, %5
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph424, %bb.ad
  %indvars.iv581 = phi i64 [ 0, %.lr.ph424 ], [ %indvars.iv.next582, %bb.ad ] ; 8 uses
  %i.ads = phi <2 x float> [ zeroinitializer, %.lr.ph424 ], [ %i.aew, %bb.ad ]
  %i.adt = phi <2 x float> [ zeroinitializer, %.lr.ph424 ], [ %i.aep, %bb.ad ]
  %i.adu = phi <2 x float> [ zeroinitializer, %.lr.ph424 ], [ %i.aei, %bb.ad ]
  %i.adv = trunc nuw i64 %indvars.iv581 to i32
  %i.adw = add i32 %i.adr, %i.adv
  %i.adx = zext i32 %i.adw to i64
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.adx
  %i.adz = load float, ptr %i.ady, align 4
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv581
  %i.aeb = load float, ptr %i.aea, align 4
  %i.aec = getelementptr inbounds nuw [4 x i8], ptr %i.xt, i64 %indvars.iv581
  %i.aed = load float, ptr %i.aec, align 4
  %i.aee = insertelement <2 x float> poison, float %i.adz, i64 0
  %i.aef = shufflevector <2 x float> %i.aee, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.aeg = insertelement <2 x float> poison, float %i.aeb, i64 0
  %i.aeh = insertelement <2 x float> %i.aeg, float %i.aed, i64 1
  %i.aei = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aef, <2 x float> %i.aeh, <2 x float> %i.adu) ; 2 uses
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %i.xu, i64 %indvars.iv581
  %i.aek = load float, ptr %i.aej, align 4
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %i.xv, i64 %indvars.iv581
  %i.aem = load float, ptr %i.ael, align 4
  %i.aen = insertelement <2 x float> poison, float %i.aek, i64 0
  %i.aeo = insertelement <2 x float> %i.aen, float %i.aem, i64 1
  %i.aep = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aef, <2 x float> %i.aeo, <2 x float> %i.adt) ; 2 uses
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %i.xw, i64 %indvars.iv581
  %i.aer = load float, ptr %i.aeq, align 4
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %i.xx, i64 %indvars.iv581
  %i.aet = load float, ptr %i.aes, align 4
  %i.aeu = insertelement <2 x float> poison, float %i.aer, i64 0
  %i.aev = insertelement <2 x float> %i.aeu, float %i.aet, i64 1
  %i.aew = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aef, <2 x float> %i.aev, <2 x float> %i.ads) ; 2 uses
  %indvars.iv.next582 = add nuw nsw i64 %indvars.iv581, 1 ; 2 uses
  %exitcond585.not = icmp eq i64 %indvars.iv.next582, %wide.trip.count584
  br i1 %exitcond585.not, label %._crit_edge425, label %bb.ad

._crit_edge425:                                   ; preds = %bb.ad, %.preheader366
  %i.aex = phi <2 x float> [ zeroinitializer, %.preheader366 ], [ %i.aew, %bb.ad ]
  %i.aey = phi <2 x float> [ zeroinitializer, %.preheader366 ], [ %i.aep, %bb.ad ]
  %i.aez = phi <2 x float> [ zeroinitializer, %.preheader366 ], [ %i.aei, %bb.ad ]
  %i.afa = mul i32 %.2431, 6                      ; 3 uses
  %i.afb = zext i32 %i.afa to i64
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.afb
  store <2 x float> %i.aez, ptr %i.afc, align 4
  %i.afd = add i32 %i.afa, 2
  %i.afe = zext i32 %i.afd to i64
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.afe
  store <2 x float> %i.aey, ptr %i.aff, align 4
  %i.afg = add i32 %i.afa, 4
  %i.afh = zext i32 %i.afg to i64
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.afh
  store <2 x float> %i.aex, ptr %i.afi, align 4
  %i.afj = add i32 %.2431, 1                      ; 3 uses
  %i.afk = zext i32 %i.afj to i64
  %i.afl = icmp ugt i64 %6, %i.afk
  br i1 %i.afl, label %.preheader366, label %.loopexit362

.loopexit362:                                     ; preds = %._crit_edge425, %._crit_edge443, %scalar.ph95, %middle.block135, %.preheader367, %.preheader364, %.preheader361, %._crit_edge416
  %.3 = phi i32 [ 0, %._crit_edge416 ], [ %i.abt, %scalar.ph95 ], [ %i.ado, %._crit_edge443 ], [ 0, %.preheader361 ], [ 0, %.preheader364 ], [ 0, %.preheader367 ], [ %n.vec98, %middle.block135 ], [ %i.afj, %._crit_edge425 ] ; 2 uses
  %i.afm = zext i32 %.3 to i64
  %i.afn = icmp ugt i64 %6, %i.afm
  br i1 %i.afn, label %.preheader360.lr.ph, label %.loopexit

.loopexit362.thread:                              ; preds = %.preheader369
  %.not690 = icmp eq i64 %6, 0
  br i1 %.not690, label %.loopexit, label %.preheader360

.preheader360.lr.ph:                              ; preds = %.loopexit362
  %.not479 = icmp eq i32 %5, 0
  %wide.trip.count599 = zext nneg i32 %2 to i64
  %wide.trip.count604 = zext nneg i32 %2 to i64
  %i.afo = add nsw i64 %wide.trip.count579, -1    ; 2 uses
  %xtraiter331 = and i64 %wide.trip.count569, 3   ; 3 uses
  %i.afp = add nsw i32 %5, -1
  %i.afq = icmp ult i32 %i.afp, 3
  %unroll_iter336 = and i64 %wide.trip.count569, 60
  %lcmp.mod333.not = icmp eq i64 %xtraiter331, 0
end_hunk_0
