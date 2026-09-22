Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
begin_hunk_0_@ma_channel_map_apply_f32:bb.a

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
  %i.us = trunc nuw nsw i64 %indvars.iv587 to i32
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
  %i.xj = add i64 %6, -536870913
  %i.xk = icmp ult i64 %i.xj, -536870912
  %or.cond942 = or i1 %min.iters.check884, %i.xk
  br i1 %or.cond942, label %scalar.ph883.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph471
  %i.xl = shl nuw nsw i64 %6, 5
  %scevgep = getelementptr i8, ptr %0, i64 %i.xl
  %i.xm = shl nuw nsw i64 %6, 3
  %scevgep882 = getelementptr i8, ptr %3, i64 %i.xm
  %bound0 = icmp ult ptr %0, %scevgep882
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph883.preheader, label %vector.ph885

vector.ph885:                                     ; preds = %vector.memcheck
  %n.vec886 = and i32 %i.xi, 1073741820           ; 4 uses
  %i.xn = shufflevector <2 x float> %i.xa, <2 x float> %i.xb, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.xo = shufflevector <2 x float> %i.xa, <2 x float> %i.xb, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.xp = shufflevector <2 x float> %i.xc, <2 x float> %i.xd, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.xq = shufflevector <2 x float> %i.xc, <2 x float> %i.xd, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.xr = shufflevector <2 x float> %i.xe, <2 x float> %i.xf, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.xs = shufflevector <2 x float> %i.xe, <2 x float> %i.xf, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.xt = shufflevector <2 x float> %i.xg, <2 x float> %i.xh, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.xu = shufflevector <2 x float> %i.xg, <2 x float> %i.xh, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.xv = shufflevector <8 x float> %i.xn, <8 x float> %i.xp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.xw = shufflevector <8 x float> %i.xo, <8 x float> %i.xq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.xx = shufflevector <8 x float> %i.xr, <8 x float> %i.xt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.xy = shufflevector <8 x float> %i.xs, <8 x float> %i.xu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body919

vector.body919:                                   ; preds = %vector.body919, %vector.ph885
  %index920 = phi i32 [ 0, %vector.ph885 ], [ %index.next922, %vector.body919 ] ; 3 uses
  %i.xz = shl i32 %index920, 1
  %i.ya = zext i32 %i.xz to i64
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ya
  %wide.vec = load <8 x float>, ptr %i.yb, align 4, !tbaa !349, !alias.scope !2009 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 4 uses
  %strided.vec921 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 4 uses
  %i.yc = shl i32 %index920, 3
  %i.yd = zext i32 %i.yc to i64
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.yd
  %9 = shufflevector <4 x float> %strided.vec921, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %10 = shufflevector <4 x float> %strided.vec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %11 = shufflevector <4 x float> %strided.vec921, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %12 = shufflevector <4 x float> %strided.vec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %13 = shufflevector <4 x float> %strided.vec921, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %14 = shufflevector <4 x float> %strided.vec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.yf = shufflevector <4 x float> %strided.vec921, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.yg = shufflevector <4 x float> %strided.vec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %15 = shufflevector <8 x float> %9, <8 x float> %11, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %16 = shufflevector <8 x float> %10, <8 x float> %12, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yh = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %16, <16 x float> %i.xw, <16 x float> zeroinitializer)
  %i.yi = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %15, <16 x float> %i.xv, <16 x float> %i.yh)
  %17 = shufflevector <8 x float> %13, <8 x float> %i.yf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %18 = shufflevector <8 x float> %14, <8 x float> %i.yg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yj = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %18, <16 x float> %i.xy, <16 x float> zeroinitializer)
  %i.yk = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %17, <16 x float> %i.xx, <16 x float> %i.yj)
  %interleaved.vec = shufflevector <16 x float> %i.yi, <16 x float> %i.yk, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.ye, align 4, !tbaa !349, !alias.scope !2010, !noalias !2009
  %index.next922 = add nuw i32 %index920, 4       ; 2 uses
  %i.yl = icmp eq i32 %index.next922, %n.vec886
  br i1 %i.yl, label %middle.block923, label %vector.body919, !llvm.loop !1983

middle.block923:                                  ; preds = %vector.body919
  %cmp.n924 = icmp eq i32 %n.vec886, %i.xi
  br i1 %cmp.n924, label %.loopexit373, label %scalar.ph883.preheader

scalar.ph883.preheader:                           ; preds = %vector.memcheck, %.lr.ph471, %middle.block923
  %.0314470.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph471 ], [ %n.vec886, %middle.block923 ]
  %i.ym = shufflevector <2 x float> %i.xa, <2 x float> %i.xb, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.yn = shufflevector <2 x float> %i.xc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.yo = shufflevector <4 x float> %i.ym, <4 x float> %i.yn, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.yp = shufflevector <2 x float> %i.xd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.yq = shufflevector <4 x float> %i.yo, <4 x float> %i.yp, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.yr = shufflevector <2 x float> %i.xa, <2 x float> %i.xb, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ys = shufflevector <4 x float> %i.yr, <4 x float> %i.yn, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.yt = shufflevector <4 x float> %i.ys, <4 x float> %i.yp, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.yu = shufflevector <2 x float> %i.xe, <2 x float> %i.xf, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.yv = shufflevector <2 x float> %i.xg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.yw = shufflevector <4 x float> %i.yu, <4 x float> %i.yv, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.yx = shufflevector <2 x float> %i.xh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.yy = shufflevector <4 x float> %i.yw, <4 x float> %i.yx, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.yz = shufflevector <2 x float> %i.xe, <2 x float> %i.xf, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.za = shufflevector <4 x float> %i.yz, <4 x float> %i.yv, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.zb = shufflevector <4 x float> %i.za, <4 x float> %i.yx, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  br label %scalar.ph883

scalar.ph883:                                     ; preds = %scalar.ph883.preheader, %scalar.ph883
  %.0314470 = phi i32 [ %i.zy, %scalar.ph883 ], [ %.0314470.ph, %scalar.ph883.preheader ] ; 3 uses
  %i.zc = shl i32 %.0314470, 1                    ; 2 uses
  %i.zd = zext i32 %i.zc to i64
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.zd
  %i.zf = or disjoint i32 %i.zc, 1
  %i.zg = zext i32 %i.zf to i64
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.zg
  %i.zi = shl i32 %.0314470, 3                    ; 2 uses
  %i.zj = zext i32 %i.zi to i64
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.zj
  %i.zl = or disjoint i32 %i.zi, 4
  %i.zm = zext i32 %i.zl to i64
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.zm
  %i.zo = load float, ptr %i.ze, align 4, !tbaa !349
  %i.zp = load float, ptr %i.zh, align 4, !tbaa !349
  %i.zq = insertelement <4 x float> poison, float %i.zo, i64 0
  %i.zr = shufflevector <4 x float> %i.zq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.zs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zr, <4 x float> %i.yq, <4 x float> zeroinitializer)
  %i.zt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zr, <4 x float> %i.yy, <4 x float> zeroinitializer)
  %i.zu = insertelement <4 x float> poison, float %i.zp, i64 0
  %i.zv = shufflevector <4 x float> %i.zu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.zw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zv, <4 x float> %i.yt, <4 x float> %i.zs)
  %i.zx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zv, <4 x float> %i.zb, <4 x float> %i.zt)
  store <4 x float> %i.zw, ptr %i.zk, align 4, !tbaa !349
  store <4 x float> %i.zx, ptr %i.zn, align 4, !tbaa !349
  %i.zy = add i32 %.0314470, 1                    ; 3 uses
  %i.zz = zext i32 %i.zy to i64
  %i.aaa = icmp ugt i64 %6, %i.zz
  br i1 %i.aaa, label %scalar.ph883, label %.loopexit373, !llvm.loop !1984

.preheader374:                                    ; preds = %.preheader374.lr.ph, %._crit_edge459
  %.1315468 = phi i32 [ 0, %.preheader374.lr.ph ], [ %i.abt, %._crit_edge459 ] ; 3 uses
  br i1 %.not489, label %._crit_edge459, label %.lr.ph458

.lr.ph458:                                        ; preds = %.preheader374
  %i.aab = mul i32 %.1315468, %5
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph458, %bb.ba
  %indvars.iv602 = phi i64 [ 0, %.lr.ph458 ], [ %indvars.iv.next603, %bb.ba ] ; 10 uses
  %i.aac = phi <4 x float> [ zeroinitializer, %.lr.ph458 ], [ %i.aax, %bb.ba ]
  %i.aad = phi <4 x float> [ zeroinitializer, %.lr.ph458 ], [ %i.abk, %bb.ba ]
  %i.aae = trunc nuw nsw i64 %indvars.iv602 to i32
  %i.aaf = add i32 %i.aab, %i.aae
  %i.aag = zext i32 %i.aaf to i64
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aag
  %i.aai = load float, ptr %i.aah, align 4, !tbaa !349
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv602
  %i.aak = load float, ptr %i.aaj, align 4, !tbaa !349
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %indvars.iv602
  %i.aam = load float, ptr %i.aal, align 4, !tbaa !349
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.wn, i64 %indvars.iv602
  %i.aao = load float, ptr %i.aan, align 4, !tbaa !349
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.wo, i64 %indvars.iv602
  %i.aaq = load float, ptr %i.aap, align 4, !tbaa !349
  %i.aar = insertelement <4 x float> poison, float %i.aai, i64 0
  %i.aas = shufflevector <4 x float> %i.aar, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aat = insertelement <4 x float> poison, float %i.aak, i64 0
  %i.aau = insertelement <4 x float> %i.aat, float %i.aam, i64 1
  %i.aav = insertelement <4 x float> %i.aau, float %i.aao, i64 2
  %i.aaw = insertelement <4 x float> %i.aav, float %i.aaq, i64 3
  %i.aax = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aas, <4 x float> %i.aaw, <4 x float> %i.aac) ; 2 uses
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %indvars.iv602
  %i.aaz = load float, ptr %i.aay, align 4, !tbaa !349
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.wq, i64 %indvars.iv602
  %i.abb = load float, ptr %i.aba, align 4, !tbaa !349
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %indvars.iv602
  %i.abd = load float, ptr %i.abc, align 4, !tbaa !349
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %i.ws, i64 %indvars.iv602
  %i.abf = load float, ptr %i.abe, align 4, !tbaa !349
  %i.abg = insertelement <4 x float> poison, float %i.aaz, i64 0
  %i.abh = insertelement <4 x float> %i.abg, float %i.abb, i64 1
  %i.abi = insertelement <4 x float> %i.abh, float %i.abd, i64 2
  %i.abj = insertelement <4 x float> %i.abi, float %i.abf, i64 3
  %i.abk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aas, <4 x float> %i.abj, <4 x float> %i.aad) ; 2 uses
  %indvars.iv.next603 = add nuw nsw i64 %indvars.iv602, 1 ; 2 uses
  %exitcond606.not = icmp eq i64 %indvars.iv.next603, %wide.trip.count605
  br i1 %exitcond606.not, label %._crit_edge459, label %bb.ba, !llvm.loop !1985

._crit_edge459:                                   ; preds = %bb.ba, %.preheader374
  %i.abl = phi <4 x float> [ zeroinitializer, %.preheader374 ], [ %i.aax, %bb.ba ]
  %i.abm = phi <4 x float> [ zeroinitializer, %.preheader374 ], [ %i.abk, %bb.ba ]
  %i.abn = shl i32 %.1315468, 3                   ; 2 uses
  %i.abo = zext i32 %i.abn to i64
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.abo
  store <4 x float> %i.abl, ptr %i.abp, align 4, !tbaa !349
  %i.abq = or disjoint i32 %i.abn, 4
  %i.abr = zext i32 %i.abq to i64
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.abr
  store <4 x float> %i.abm, ptr %i.abs, align 4, !tbaa !349
  %i.abt = add i32 %.1315468, 1                   ; 3 uses
  %i.abu = zext i32 %i.abt to i64
  %i.abv = icmp ugt i64 %6, %i.abu
  br i1 %i.abv, label %.preheader374, label %.loopexit373, !llvm.loop !1986

.preheader377:                                    ; preds = %.preheader377.lr.ph, %._crit_edge441
  %.2447 = phi i32 [ 0, %.preheader377.lr.ph ], [ %i.ado, %._crit_edge441 ] ; 3 uses
  br i1 %.not487, label %._crit_edge441, label %.lr.ph440

.lr.ph440:                                        ; preds = %.preheader377
  %i.abw = mul i32 %.2447, %5
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph440, %bb.bb
  %indvars.iv597 = phi i64 [ 0, %.lr.ph440 ], [ %indvars.iv.next598, %bb.bb ] ; 8 uses
  %i.abx = phi <2 x float> [ zeroinitializer, %.lr.ph440 ], [ %i.adb, %bb.bb ]
  %i.aby = phi <2 x float> [ zeroinitializer, %.lr.ph440 ], [ %i.acu, %bb.bb ]
  %i.abz = phi <2 x float> [ zeroinitializer, %.lr.ph440 ], [ %i.acn, %bb.bb ]
  %i.aca = trunc nuw nsw i64 %indvars.iv597 to i32
  %i.acb = add i32 %i.abw, %i.aca
  %i.acc = zext i32 %i.acb to i64
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.acc
  %i.ace = load float, ptr %i.acd, align 4, !tbaa !349
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv597
  %i.acg = load float, ptr %i.acf, align 4, !tbaa !349
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.wg, i64 %indvars.iv597
  %i.aci = load float, ptr %i.ach, align 4, !tbaa !349
  %i.acj = insertelement <2 x float> poison, float %i.ace, i64 0
  %i.ack = shufflevector <2 x float> %i.acj, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.acl = insertelement <2 x float> poison, float %i.acg, i64 0
  %i.acm = insertelement <2 x float> %i.acl, float %i.aci, i64 1
  %i.acn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ack, <2 x float> %i.acm, <2 x float> %i.abz) ; 2 uses
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %indvars.iv597
  %i.acp = load float, ptr %i.aco, align 4, !tbaa !349
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %indvars.iv597
  %i.acr = load float, ptr %i.acq, align 4, !tbaa !349
  %i.acs = insertelement <2 x float> poison, float %i.acp, i64 0
  %i.act = insertelement <2 x float> %i.acs, float %i.acr, i64 1
  %i.acu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ack, <2 x float> %i.act, <2 x float> %i.aby) ; 2 uses
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %indvars.iv597
  %i.acw = load float, ptr %i.acv, align 4, !tbaa !349
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %indvars.iv597
  %i.acy = load float, ptr %i.acx, align 4, !tbaa !349
  %i.acz = insertelement <2 x float> poison, float %i.acw, i64 0
  %i.ada = insertelement <2 x float> %i.acz, float %i.acy, i64 1
  %i.adb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ack, <2 x float> %i.ada, <2 x float> %i.abx) ; 2 uses
  %indvars.iv.next598 = add nuw nsw i64 %indvars.iv597, 1 ; 2 uses
  %exitcond601.not = icmp eq i64 %indvars.iv.next598, %wide.trip.count600
  br i1 %exitcond601.not, label %._crit_edge441, label %bb.bb, !llvm.loop !1987

._crit_edge441:                                   ; preds = %bb.bb, %.preheader377
  %i.adc = phi <2 x float> [ zeroinitializer, %.preheader377 ], [ %i.adb, %bb.bb ]
  %i.add = phi <2 x float> [ zeroinitializer, %.preheader377 ], [ %i.acu, %bb.bb ]
  %i.ade = phi <2 x float> [ zeroinitializer, %.preheader377 ], [ %i.acn, %bb.bb ]
  %i.adf = mul i32 %.2447, 6                      ; 3 uses
  %i.adg = zext i32 %i.adf to i64
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.adg
  store <2 x float> %i.ade, ptr %i.adh, align 4, !tbaa !349
  %i.adi = add i32 %i.adf, 2
  %i.adj = zext i32 %i.adi to i64
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.adj
  store <2 x float> %i.add, ptr %i.adk, align 4, !tbaa !349
  %i.adl = add i32 %i.adf, 4
  %i.adm = zext i32 %i.adl to i64
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.adm
  store <2 x float> %i.adc, ptr %i.adn, align 4, !tbaa !349
  %i.ado = add i32 %.2447, 1                      ; 3 uses
  %i.adp = zext i32 %i.ado to i64
  %i.adq = icmp ugt i64 %6, %i.adp
  br i1 %i.adq, label %.preheader377, label %.loopexit373, !llvm.loop !1988

.loopexit373:                                     ; preds = %._crit_edge441, %._crit_edge459, %scalar.ph883, %middle.block923, %.preheader380, %.preheader378, %.preheader375, %.preheader372, %._crit_edge432
  %.3 = phi i32 [ 0, %._crit_edge432 ], [ %i.zy, %scalar.ph883 ], [ 0, %.preheader380 ], [ 0, %.preheader372 ], [ 0, %.preheader375 ], [ 0, %.preheader378 ], [ %i.abt, %._crit_edge459 ], [ %n.vec886, %middle.block923 ], [ %i.ado, %._crit_edge441 ] ; 2 uses
  %i.adr = zext i32 %.3 to i64
  %i.ads = icmp ugt i64 %6, %i.adr
  br i1 %i.ads, label %.preheader371.lr.ph, label %.loopexit

.preheader371.lr.ph:                              ; preds = %.loopexit373
  %.not492 = icmp eq i32 %5, 0
end_hunk_0
