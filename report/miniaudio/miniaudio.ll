Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 216
loop-unroll.NumUnrolled: 278
begin_hunk_0_@ma_channel_map_apply_f32:bb.a
  %n.vec873 = and i64 %wide.trip.count570, 248    ; 3 uses
  %cmp.n878 = icmp eq i64 %n.vec873, %wide.trip.count570
  %xtraiter1163 = and i64 %wide.trip.count570, 3  ; 2 uses
  %lcmp.mod1164.not = icmp eq i64 %xtraiter1163, 0
  %i.ty = trunc nsw i64 %i.tq to i32
  %i.tz = icmp ugt i64 %i.tq, 4294967295
  %n.vec862 = and i64 %wide.trip.count570, 248    ; 3 uses
  %cmp.n867 = icmp eq i64 %n.vec862, %wide.trip.count570
  %xtraiter1165 = and i64 %wide.trip.count570, 3  ; 2 uses
  %lcmp.mod1166.not = icmp eq i64 %xtraiter1165, 0
  br label %.preheader381

.preheader380:                                    ; preds = %bb.av
  %.not484 = icmp eq i32 %2, 0                    ; 2 uses
  br i1 %.not484, label %.loopexit373, label %.lr.ph431

.lr.ph431:                                        ; preds = %.preheader380
  %i.ua = icmp eq ptr %1, null
  %.not485 = icmp eq i32 %5, 0
  %i.ub = icmp eq ptr %4, null
  %wide.trip.count595 = zext nneg i32 %2 to i64
  %wide.trip.count585 = zext nneg i32 %5 to i64
  %wide.trip.count590 = zext nneg i32 %5 to i64
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph431, %._crit_edge
  %indvars.iv592 = phi i64 [ 0, %.lr.ph431 ], [ %indvars.iv.next593, %._crit_edge ] ; 4 uses
  br i1 %i.ua, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.uc = trunc nuw nsw i64 %indvars.iv592 to i32
  %i.ud = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %2, i32 noundef %i.uc)
  br label %ma_channel_map_get_channel.exit

bb.ay:                                            ; preds = %bb.aw
  %i.ue = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv592
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !119
  br label %ma_channel_map_get_channel.exit

ma_channel_map_get_channel.exit:                  ; preds = %bb.ax, %bb.ay
  %.0.i354 = phi i8 [ %i.ud, %bb.ax ], [ %i.uf, %bb.ay ]
  br i1 %.not485, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %ma_channel_map_get_channel.exit
  %i.ug = zext i8 %.0.i354 to i64
  %i.uh = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %i.ug ; 5 uses
  %i.ui = load float, ptr %i.uh, align 8, !tbaa !349 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uh, i64 4
  %i.uk = load float, ptr %i.uj, align 4, !tbaa !349 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  %i.um = load float, ptr %i.ul, align 8, !tbaa !349 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.uh, i64 12
  %i.uo = load float, ptr %i.un, align 4, !tbaa !349 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uh, i64 20
  %i.uq = load float, ptr %i.up, align 4, !tbaa !349 ; 2 uses
  %i.ur = getelementptr inbounds nuw [128 x i8], ptr %i.c, i64 %indvars.iv592 ; 2 uses
  br i1 %i.ub, label %ma_channel_map_get_channel.exit357.us, label %ma_channel_map_get_channel.exit357

ma_channel_map_get_channel.exit357.us:            ; preds = %.lr.ph, %ma_channel_map_get_channel.exit357.us
  %indvars.iv587 = phi i64 [ %indvars.iv.next588, %ma_channel_map_get_channel.exit357.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.us = trunc nuw i64 %indvars.iv587 to i32
  %i.ut = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %5, i32 noundef %i.us)
  %i.uu = zext nneg i8 %i.ut to i64
  %i.uv = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %i.uu ; 5 uses
  %i.uw = load float, ptr %i.uv, align 8, !tbaa !349
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uv, i64 4
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !349
  %i.uz = fmul float %i.uk, %i.uy
  %i.va = tail call float @llvm.fmuladd.f32(float %i.ui, float %i.uw, float %i.uz)
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uv, i64 8
  %i.vc = load float, ptr %i.vb, align 8, !tbaa !349
  %i.vd = tail call float @llvm.fmuladd.f32(float %i.um, float %i.vc, float %i.va)
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uv, i64 12
  %i.vf = load float, ptr %i.ve, align 4, !tbaa !349
  %i.vg = tail call float @llvm.fmuladd.f32(float %i.uo, float %i.vf, float %i.vd)
  %i.vh = fadd float %i.vg, 0.000000e+00
  %i.vi = getelementptr inbounds nuw i8, ptr %i.uv, i64 20
  %i.vj = load float, ptr %i.vi, align 4, !tbaa !349
  %i.vk = tail call float @llvm.fmuladd.f32(float %i.uq, float %i.vj, float %i.vh)
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %indvars.iv587
  store float %i.vk, ptr %i.vl, align 4, !tbaa !349
  %indvars.iv.next588 = add nuw nsw i64 %indvars.iv587, 1 ; 2 uses
  %exitcond591.not = icmp eq i64 %indvars.iv.next588, %wide.trip.count590
  br i1 %exitcond591.not, label %._crit_edge, label %ma_channel_map_get_channel.exit357.us, !llvm.loop !1978

ma_channel_map_get_channel.exit357:               ; preds = %.lr.ph, %ma_channel_map_get_channel.exit357
  %indvars.iv582 = phi i64 [ %indvars.iv.next583, %ma_channel_map_get_channel.exit357 ], [ 0, %.lr.ph ] ; 3 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv582
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !119
  %i.vo = zext i8 %i.vn to i64
  %i.vp = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %i.vo ; 5 uses
  %i.vq = load float, ptr %i.vp, align 8, !tbaa !349
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vp, i64 4
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !349
  %i.vt = fmul float %i.uk, %i.vs
  %i.vu = tail call float @llvm.fmuladd.f32(float %i.ui, float %i.vq, float %i.vt)
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.vw = load float, ptr %i.vv, align 8, !tbaa !349
  %i.vx = tail call float @llvm.fmuladd.f32(float %i.um, float %i.vw, float %i.vu)
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vp, i64 12
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !349
  %i.wa = tail call float @llvm.fmuladd.f32(float %i.uo, float %i.vz, float %i.vx)
  %i.wb = fadd float %i.wa, 0.000000e+00
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vp, i64 20
  %i.wd = load float, ptr %i.wc, align 4, !tbaa !349
  %i.we = tail call float @llvm.fmuladd.f32(float %i.uq, float %i.wd, float %i.wb)
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %indvars.iv582
  store float %i.we, ptr %i.wf, align 4, !tbaa !349
  %indvars.iv.next583 = add nuw nsw i64 %indvars.iv582, 1 ; 2 uses
  %exitcond586.not = icmp eq i64 %indvars.iv.next583, %wide.trip.count585
  br i1 %exitcond586.not, label %._crit_edge, label %ma_channel_map_get_channel.exit357, !llvm.loop !1978

._crit_edge:                                      ; preds = %ma_channel_map_get_channel.exit357, %ma_channel_map_get_channel.exit357.us, %ma_channel_map_get_channel.exit
  %indvars.iv.next593 = add nuw nsw i64 %indvars.iv592, 1 ; 2 uses
  %exitcond596.not = icmp eq i64 %indvars.iv.next593, %wide.trip.count595
  br i1 %exitcond596.not, label %._crit_edge432, label %bb.aw, !llvm.loop !1979

._crit_edge432:                                   ; preds = %._crit_edge
  switch i32 %2, label %.loopexit373 [
    i32 8, label %bb.az
    i32 6, label %.preheader378
  ]

.preheader378:                                    ; preds = %._crit_edge432
  %.not486 = icmp eq i64 %6, 0
  br i1 %.not486, label %.loopexit373, label %.preheader377.lr.ph

.preheader377.lr.ph:                              ; preds = %.preheader378
  %.not487 = icmp eq i32 %5, 0
  %i.wg = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.wh = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.wi = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.wj = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  %i.wk = getelementptr inbounds nuw i8, ptr %i.c, i64 640
  %wide.trip.count600 = zext nneg i32 %5 to i64
  br label %.preheader377

bb.az:                                            ; preds = %._crit_edge432
  %i.wl = icmp eq i32 %5, 2
  %.not490 = icmp eq i64 %6, 0                    ; 2 uses
  br i1 %i.wl, label %.preheader372, label %.preheader375

.preheader375:                                    ; preds = %bb.az
  br i1 %.not490, label %.loopexit373, label %.preheader374.lr.ph

.preheader374.lr.ph:                              ; preds = %.preheader375
  %.not489 = icmp eq i32 %5, 0
  %i.wm = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.wn = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.wo = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.wp = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  %i.wq = getelementptr inbounds nuw i8, ptr %i.c, i64 640
  %i.wr = getelementptr inbounds nuw i8, ptr %i.c, i64 768
  %i.ws = getelementptr inbounds nuw i8, ptr %i.c, i64 896
  %wide.trip.count605 = zext nneg i32 %5 to i64
  br label %.preheader374

.preheader372:                                    ; preds = %bb.az
  br i1 %.not490, label %.loopexit373, label %.lr.ph471

.lr.ph471:                                        ; preds = %.preheader372
  %i.wt = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.wu = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.wv = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.ww = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  %i.wx = getelementptr inbounds nuw i8, ptr %i.c, i64 640
  %i.wy = getelementptr inbounds nuw i8, ptr %i.c, i64 768
  %i.wz = getelementptr inbounds nuw i8, ptr %i.c, i64 896
  %i.xa = load <2 x float>, ptr %i.c, align 16, !tbaa !349 ; 4 uses
  %i.xb = load <2 x float>, ptr %i.wt, align 16, !tbaa !349 ; 4 uses
  %i.xc = load <2 x float>, ptr %i.wu, align 16, !tbaa !349 ; 3 uses
  %i.xd = load <2 x float>, ptr %i.wv, align 16, !tbaa !349 ; 3 uses
  %i.xe = load <2 x float>, ptr %i.ww, align 16, !tbaa !349 ; 4 uses
  %i.xf = load <2 x float>, ptr %i.wx, align 16, !tbaa !349 ; 4 uses
  %i.xg = load <2 x float>, ptr %i.wy, align 16, !tbaa !349 ; 3 uses
  %i.xh = load <2 x float>, ptr %i.wz, align 16, !tbaa !349 ; 3 uses
  %i.xi = trunc i64 %6 to i32                     ; 3 uses
  %min.iters.check884 = icmp ult i32 %i.xi, 4
  br i1 %min.iters.check884, label %scalar.ph883.preheader, label %vector.scevcheck880

vector.scevcheck880:                              ; preds = %.lr.ph471
  %i.xj = add i64 %6, -1                          ; 2 uses
  %i.xk = and i64 %i.xj, 4294967295
  %i.xl = icmp eq i64 %i.xk, 4294967295
  %i.xm = icmp ugt i64 %i.xj, 536870911
  %i.xn = or i1 %i.xl, %i.xm
  br i1 %i.xn, label %scalar.ph883.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck880
  %i.xo = shl nuw nsw i64 %6, 5
  %scevgep = getelementptr i8, ptr %0, i64 %i.xo
  %i.xp = shl nuw nsw i64 %6, 3
  %scevgep882 = getelementptr i8, ptr %3, i64 %i.xp
  %bound0 = icmp ult ptr %0, %scevgep882
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph883.preheader, label %vector.ph885

vector.ph885:                                     ; preds = %vector.memcheck
  %n.vec886 = and i32 %i.xi, 1073741820           ; 4 uses
  %9 = shufflevector <2 x float> %i.xa, <2 x float> %i.xb, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.xq = shufflevector <2 x float> %i.xa, <2 x float> %i.xb, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %10 = shufflevector <2 x float> %i.xc, <2 x float> %i.xd, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.xr = shufflevector <2 x float> %i.xc, <2 x float> %i.xd, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %11 = shufflevector <2 x float> %i.xe, <2 x float> %i.xf, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %12 = shufflevector <2 x float> %i.xe, <2 x float> %i.xf, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.xs = shufflevector <2 x float> %i.xg, <2 x float> %i.xh, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %13 = shufflevector <2 x float> %i.xg, <2 x float> %i.xh, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.xt = shufflevector <8 x float> %9, <8 x float> %10, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %14 = shufflevector <8 x float> %i.xq, <8 x float> %i.xr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %15 = shufflevector <8 x float> %11, <8 x float> %i.xs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.xu = shufflevector <8 x float> %12, <8 x float> %13, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body919

vector.body919:                                   ; preds = %vector.body919, %vector.ph885
  %index920 = phi i32 [ 0, %vector.ph885 ], [ %index.next922, %vector.body919 ] ; 3 uses
  %i.xv = shl i32 %index920, 1
  %i.xw = zext i32 %i.xv to i64
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.xw
  %wide.vec = load <8 x float>, ptr %i.xx, align 4, !tbaa !349, !alias.scope !2009 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 4 uses
  %strided.vec921 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 4 uses
  %16 = shl i32 %index920, 3
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %17
  %19 = shufflevector <4 x float> %strided.vec921, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %20 = shufflevector <4 x float> %strided.vec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %21 = shufflevector <4 x float> %strided.vec921, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %22 = shufflevector <4 x float> %strided.vec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.xy = shufflevector <4 x float> %strided.vec921, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %23 = shufflevector <4 x float> %strided.vec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %24 = shufflevector <4 x float> %strided.vec921, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.xz = shufflevector <4 x float> %strided.vec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %25 = shufflevector <8 x float> %19, <8 x float> %21, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %26 = shufflevector <8 x float> %20, <8 x float> %22, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ya = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %26, <16 x float> %14, <16 x float> zeroinitializer)
  %27 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %25, <16 x float> %i.xt, <16 x float> %i.ya)
  %28 = shufflevector <8 x float> %i.xy, <8 x float> %24, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %29 = shufflevector <8 x float> %23, <8 x float> %i.xz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yb = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %29, <16 x float> %i.xu, <16 x float> zeroinitializer)
  %i.yc = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %28, <16 x float> %15, <16 x float> %i.yb)
  %interleaved.vec = shufflevector <16 x float> %27, <16 x float> %i.yc, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %18, align 4, !tbaa !349, !alias.scope !2010, !noalias !2009
  %index.next922 = add nuw i32 %index920, 4       ; 2 uses
  %i.yd = icmp eq i32 %index.next922, %n.vec886
  br i1 %i.yd, label %middle.block923, label %vector.body919, !llvm.loop !1983

middle.block923:                                  ; preds = %vector.body919
  %cmp.n924 = icmp eq i32 %n.vec886, %i.xi
  br i1 %cmp.n924, label %.loopexit373, label %scalar.ph883.preheader

scalar.ph883.preheader:                           ; preds = %vector.memcheck, %vector.scevcheck880, %.lr.ph471, %middle.block923
  %.0314470.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck880 ], [ 0, %.lr.ph471 ], [ %n.vec886, %middle.block923 ]
  %i.ye = shufflevector <2 x float> %i.xa, <2 x float> %i.xb, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.yf = shufflevector <2 x float> %i.xc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.yg = shufflevector <4 x float> %i.ye, <4 x float> %i.yf, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.yh = shufflevector <2 x float> %i.xd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.yi = shufflevector <4 x float> %i.yg, <4 x float> %i.yh, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.yj = shufflevector <2 x float> %i.xa, <2 x float> %i.xb, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.yk = shufflevector <4 x float> %i.yj, <4 x float> %i.yf, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.yl = shufflevector <4 x float> %i.yk, <4 x float> %i.yh, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ym = shufflevector <2 x float> %i.xe, <2 x float> %i.xf, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.yn = shufflevector <2 x float> %i.xg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.yo = shufflevector <4 x float> %i.ym, <4 x float> %i.yn, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.yp = shufflevector <2 x float> %i.xh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.yq = shufflevector <4 x float> %i.yo, <4 x float> %i.yp, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.yr = shufflevector <2 x float> %i.xe, <2 x float> %i.xf, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ys = shufflevector <4 x float> %i.yr, <4 x float> %i.yn, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.yt = shufflevector <4 x float> %i.ys, <4 x float> %i.yp, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  br label %scalar.ph883

scalar.ph883:                                     ; preds = %scalar.ph883.preheader, %scalar.ph883
  %.0314470 = phi i32 [ %i.zk, %scalar.ph883 ], [ %.0314470.ph, %scalar.ph883.preheader ] ; 3 uses
  %i.yu = shl i32 %.0314470, 1
  %i.yv = zext i32 %i.yu to i64
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.yv
  %i.yx = shl i32 %.0314470, 3                    ; 2 uses
  %i.yy = zext i32 %i.yx to i64
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.yy
  %i.za = load <2 x float>, ptr %i.yw, align 4, !tbaa !349 ; 2 uses
  %i.zb = shufflevector <2 x float> %i.za, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.zc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zb, <4 x float> %i.yi, <4 x float> zeroinitializer)
  %i.zd = shufflevector <2 x float> %i.za, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.ze = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zd, <4 x float> %i.yl, <4 x float> %i.zc)
  store <4 x float> %i.ze, ptr %i.yz, align 4, !tbaa !349
  %i.zf = or disjoint i32 %i.yx, 4
  %i.zg = zext i32 %i.zf to i64
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.zg
  %i.zi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zb, <4 x float> %i.yq, <4 x float> zeroinitializer)
  %i.zj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zd, <4 x float> %i.yt, <4 x float> %i.zi)
  store <4 x float> %i.zj, ptr %i.zh, align 4, !tbaa !349
  %i.zk = add i32 %.0314470, 1                    ; 3 uses
  %i.zl = zext i32 %i.zk to i64
  %i.zm = icmp ugt i64 %6, %i.zl
  br i1 %i.zm, label %scalar.ph883, label %.loopexit373, !llvm.loop !1984

.preheader374:                                    ; preds = %.preheader374.lr.ph, %._crit_edge459
  %.1315468 = phi i32 [ 0, %.preheader374.lr.ph ], [ %i.abf, %._crit_edge459 ] ; 3 uses
  br i1 %.not489, label %._crit_edge459, label %.lr.ph458

.lr.ph458:                                        ; preds = %.preheader374
  %i.zn = mul i32 %.1315468, %5
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph458, %bb.ba
  %indvars.iv602 = phi i64 [ 0, %.lr.ph458 ], [ %indvars.iv.next603, %bb.ba ] ; 10 uses
  %i.zo = phi <4 x float> [ zeroinitializer, %.lr.ph458 ], [ %i.aaj, %bb.ba ]
  %i.zp = phi <4 x float> [ zeroinitializer, %.lr.ph458 ], [ %i.aaw, %bb.ba ]
  %i.zq = trunc nuw i64 %indvars.iv602 to i32
  %i.zr = add i32 %i.zn, %i.zq
  %i.zs = zext i32 %i.zr to i64
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.zs
  %i.zu = load float, ptr %i.zt, align 4, !tbaa !349
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv602
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !349
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %indvars.iv602
  %i.zy = load float, ptr %i.zx, align 4, !tbaa !349
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.wn, i64 %indvars.iv602
  %i.aaa = load float, ptr %i.zz, align 4, !tbaa !349
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.wo, i64 %indvars.iv602
  %i.aac = load float, ptr %i.aab, align 4, !tbaa !349
  %i.aad = insertelement <4 x float> poison, float %i.zu, i64 0
  %i.aae = shufflevector <4 x float> %i.aad, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aaf = insertelement <4 x float> poison, float %i.zw, i64 0
  %i.aag = insertelement <4 x float> %i.aaf, float %i.zy, i64 1
  %i.aah = insertelement <4 x float> %i.aag, float %i.aaa, i64 2
  %i.aai = insertelement <4 x float> %i.aah, float %i.aac, i64 3
  %i.aaj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aae, <4 x float> %i.aai, <4 x float> %i.zo) ; 2 uses
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %indvars.iv602
  %i.aal = load float, ptr %i.aak, align 4, !tbaa !349
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.wq, i64 %indvars.iv602
  %i.aan = load float, ptr %i.aam, align 4, !tbaa !349
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %indvars.iv602
  %i.aap = load float, ptr %i.aao, align 4, !tbaa !349
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.ws, i64 %indvars.iv602
  %i.aar = load float, ptr %i.aaq, align 4, !tbaa !349
  %i.aas = insertelement <4 x float> poison, float %i.aal, i64 0
  %i.aat = insertelement <4 x float> %i.aas, float %i.aan, i64 1
  %i.aau = insertelement <4 x float> %i.aat, float %i.aap, i64 2
  %i.aav = insertelement <4 x float> %i.aau, float %i.aar, i64 3
  %i.aaw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aae, <4 x float> %i.aav, <4 x float> %i.zp) ; 2 uses
  %indvars.iv.next603 = add nuw nsw i64 %indvars.iv602, 1 ; 2 uses
  %exitcond606.not = icmp eq i64 %indvars.iv.next603, %wide.trip.count605
  br i1 %exitcond606.not, label %._crit_edge459, label %bb.ba, !llvm.loop !1985

._crit_edge459:                                   ; preds = %bb.ba, %.preheader374
  %i.aax = phi <4 x float> [ zeroinitializer, %.preheader374 ], [ %i.aaj, %bb.ba ]
  %i.aay = phi <4 x float> [ zeroinitializer, %.preheader374 ], [ %i.aaw, %bb.ba ]
  %i.aaz = shl i32 %.1315468, 3                   ; 2 uses
  %i.aba = zext i32 %i.aaz to i64
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aba
  store <4 x float> %i.aax, ptr %i.abb, align 4, !tbaa !349
  %i.abc = or disjoint i32 %i.aaz, 4
  %i.abd = zext i32 %i.abc to i64
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.abd
  store <4 x float> %i.aay, ptr %i.abe, align 4, !tbaa !349
  %i.abf = add i32 %.1315468, 1                   ; 3 uses
  %i.abg = zext i32 %i.abf to i64
  %i.abh = icmp ugt i64 %6, %i.abg
  br i1 %i.abh, label %.preheader374, label %.loopexit373, !llvm.loop !1986

.preheader377:                                    ; preds = %.preheader377.lr.ph, %._crit_edge441
  %.2447 = phi i32 [ 0, %.preheader377.lr.ph ], [ %i.ada, %._crit_edge441 ] ; 3 uses
  br i1 %.not487, label %._crit_edge441, label %.lr.ph440

.lr.ph440:                                        ; preds = %.preheader377
  %i.abi = mul i32 %.2447, %5
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph440, %bb.bb
  %indvars.iv597 = phi i64 [ 0, %.lr.ph440 ], [ %indvars.iv.next598, %bb.bb ] ; 8 uses
  %i.abj = phi <2 x float> [ zeroinitializer, %.lr.ph440 ], [ %i.acn, %bb.bb ]
  %i.abk = phi <2 x float> [ zeroinitializer, %.lr.ph440 ], [ %i.acg, %bb.bb ]
  %i.abl = phi <2 x float> [ zeroinitializer, %.lr.ph440 ], [ %i.abz, %bb.bb ]
  %i.abm = trunc nuw i64 %indvars.iv597 to i32
  %i.abn = add i32 %i.abi, %i.abm
  %i.abo = zext i32 %i.abn to i64
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.abo
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !349
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv597
  %i.abs = load float, ptr %i.abr, align 4, !tbaa !349
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.wg, i64 %indvars.iv597
  %i.abu = load float, ptr %i.abt, align 4, !tbaa !349
  %i.abv = insertelement <2 x float> poison, float %i.abq, i64 0
  %i.abw = shufflevector <2 x float> %i.abv, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.abx = insertelement <2 x float> poison, float %i.abs, i64 0
  %i.aby = insertelement <2 x float> %i.abx, float %i.abu, i64 1
  %i.abz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abw, <2 x float> %i.aby, <2 x float> %i.abl) ; 2 uses
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %indvars.iv597
  %i.acb = load float, ptr %i.aca, align 4, !tbaa !349
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %indvars.iv597
  %i.acd = load float, ptr %i.acc, align 4, !tbaa !349
  %i.ace = insertelement <2 x float> poison, float %i.acb, i64 0
  %i.acf = insertelement <2 x float> %i.ace, float %i.acd, i64 1
  %i.acg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abw, <2 x float> %i.acf, <2 x float> %i.abk) ; 2 uses
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %indvars.iv597
  %i.aci = load float, ptr %i.ach, align 4, !tbaa !349
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %indvars.iv597
  %i.ack = load float, ptr %i.acj, align 4, !tbaa !349
  %i.acl = insertelement <2 x float> poison, float %i.aci, i64 0
  %i.acm = insertelement <2 x float> %i.acl, float %i.ack, i64 1
  %i.acn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abw, <2 x float> %i.acm, <2 x float> %i.abj) ; 2 uses
  %indvars.iv.next598 = add nuw nsw i64 %indvars.iv597, 1 ; 2 uses
  %exitcond601.not = icmp eq i64 %indvars.iv.next598, %wide.trip.count600
  br i1 %exitcond601.not, label %._crit_edge441, label %bb.bb, !llvm.loop !1987

._crit_edge441:                                   ; preds = %bb.bb, %.preheader377
  %i.aco = phi <2 x float> [ zeroinitializer, %.preheader377 ], [ %i.acn, %bb.bb ]
  %i.acp = phi <2 x float> [ zeroinitializer, %.preheader377 ], [ %i.acg, %bb.bb ]
  %i.acq = phi <2 x float> [ zeroinitializer, %.preheader377 ], [ %i.abz, %bb.bb ]
  %i.acr = mul i32 %.2447, 6                      ; 3 uses
  %i.acs = zext i32 %i.acr to i64
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.acs
  store <2 x float> %i.acq, ptr %i.act, align 4, !tbaa !349
  %i.acu = add i32 %i.acr, 2
  %i.acv = zext i32 %i.acu to i64
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.acv
  store <2 x float> %i.acp, ptr %i.acw, align 4, !tbaa !349
  %i.acx = add i32 %i.acr, 4
  %i.acy = zext i32 %i.acx to i64
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.acy
  store <2 x float> %i.aco, ptr %i.acz, align 4, !tbaa !349
  %i.ada = add i32 %.2447, 1                      ; 3 uses
  %i.adb = zext i32 %i.ada to i64
  %i.adc = icmp ugt i64 %6, %i.adb
  br i1 %i.adc, label %.preheader377, label %.loopexit373, !llvm.loop !1988

.loopexit373:                                     ; preds = %._crit_edge441, %._crit_edge459, %scalar.ph883, %middle.block923, %.preheader380, %.preheader378, %.preheader375, %.preheader372, %._crit_edge432
  %.3 = phi i32 [ 0, %._crit_edge432 ], [ %i.zk, %scalar.ph883 ], [ 0, %.preheader380 ], [ 0, %.preheader372 ], [ 0, %.preheader375 ], [ 0, %.preheader378 ], [ %i.abf, %._crit_edge459 ], [ %n.vec886, %middle.block923 ], [ %i.ada, %._crit_edge441 ] ; 2 uses
  %i.add = zext i32 %.3 to i64
  %i.ade = icmp ugt i64 %6, %i.add
  br i1 %i.ade, label %.preheader371.lr.ph, label %.loopexit

.preheader371.lr.ph:                              ; preds = %.loopexit373
  %.not492 = icmp eq i32 %5, 0
  %wide.trip.count615 = zext nneg i32 %2 to i64   ; 6 uses
  %wide.trip.count610 = zext nneg i32 %5 to i64   ; 2 uses
  %wide.trip.count620 = zext nneg i32 %2 to i64
  %i.adf = add nsw i64 %wide.trip.count615, -1    ; 2 uses
  %xtraiter1169 = and i64 %wide.trip.count610, 3  ; 3 uses
  %i.adg = add nsw i32 %5, -1
  %i.adh = icmp ult i32 %i.adg, 3
  %unroll_iter1174 = and i64 %wide.trip.count610, 60
end_hunk_0
