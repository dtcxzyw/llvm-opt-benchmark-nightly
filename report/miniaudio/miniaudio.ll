Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 216
loop-unroll.NumUnrolled: 278
begin_hunk_0_@ma_channel_map_apply_f32:bb.a
  %.not482 = icmp eq i32 %2, 0
  %i.tn = icmp eq ptr %1, null                    ; 2 uses
  %.not483 = icmp eq i32 %5, 0
  %i.to = icmp eq ptr %4, null
  %i.tp = icmp ugt i32 %5, 8
  %wide.trip.count570 = zext nneg i32 %2 to i64   ; 10 uses
  %wide.trip.count = zext i32 %5 to i64
  %wide.trip.count550 = zext i32 %5 to i64
  %exitcond551.peel.not = icmp eq i32 %5, 1
  %wide.trip.count575 = zext nneg i32 %2 to i64
  %wide.trip.count580 = zext nneg i32 %2 to i64
  %i.tq = add nsw i64 %wide.trip.count570, -1     ; 4 uses
  %cond = icmp eq i32 %5, 1
  %spec.select = select i1 %cond, i64 1, i64 2
  %i.tr = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %spec.select ; 5 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 4
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tr, i64 12
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tr, i64 20
  %exitcond551.not.peel1161 = icmp eq i32 %5, 5
  %min.iters.check860 = icmp ult i32 %2, 8        ; 2 uses
  %i.tw = trunc nsw i64 %i.tq to i32
  %i.tx = icmp ugt i64 %i.tq, 4294967295
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
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !9
  br label %ma_channel_map_get_channel.exit

ma_channel_map_get_channel.exit:                  ; preds = %bb.ax, %bb.ay
  %.0.i354 = phi i8 [ %i.ud, %bb.ax ], [ %i.uf, %bb.ay ]
  br i1 %.not485, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %ma_channel_map_get_channel.exit
  %i.ug = zext i8 %.0.i354 to i64
  %i.uh = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %i.ug ; 5 uses
  %i.ui = load float, ptr %i.uh, align 8, !tbaa !336 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uh, i64 4
  %i.uk = load float, ptr %i.uj, align 4, !tbaa !336 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  %i.um = load float, ptr %i.ul, align 8, !tbaa !336 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.uh, i64 12
  %i.uo = load float, ptr %i.un, align 4, !tbaa !336 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uh, i64 20
  %i.uq = load float, ptr %i.up, align 4, !tbaa !336 ; 2 uses
  %i.ur = getelementptr inbounds nuw [128 x i8], ptr %i.c, i64 %indvars.iv592 ; 2 uses
  br i1 %i.ub, label %ma_channel_map_get_channel.exit357.us, label %ma_channel_map_get_channel.exit357

ma_channel_map_get_channel.exit357.us:            ; preds = %.lr.ph, %ma_channel_map_get_channel.exit357.us
  %indvars.iv587 = phi i64 [ %indvars.iv.next588, %ma_channel_map_get_channel.exit357.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.us = trunc nuw i64 %indvars.iv587 to i32
  %i.ut = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %5, i32 noundef %i.us)
  %i.uu = zext nneg i8 %i.ut to i64
  %i.uv = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %i.uu ; 5 uses
  %i.uw = load float, ptr %i.uv, align 8, !tbaa !336
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uv, i64 4
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !336
  %i.uz = fmul float %i.uk, %i.uy
  %i.va = tail call float @llvm.fmuladd.f32(float %i.ui, float %i.uw, float %i.uz)
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uv, i64 8
  %i.vc = load float, ptr %i.vb, align 8, !tbaa !336
  %i.vd = tail call float @llvm.fmuladd.f32(float %i.um, float %i.vc, float %i.va)
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uv, i64 12
  %i.vf = load float, ptr %i.ve, align 4, !tbaa !336
  %i.vg = tail call float @llvm.fmuladd.f32(float %i.uo, float %i.vf, float %i.vd)
  %i.vh = fadd float %i.vg, 0.000000e+00
  %i.vi = getelementptr inbounds nuw i8, ptr %i.uv, i64 20
  %i.vj = load float, ptr %i.vi, align 4, !tbaa !336
  %i.vk = tail call float @llvm.fmuladd.f32(float %i.uq, float %i.vj, float %i.vh)
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %indvars.iv587
  store float %i.vk, ptr %i.vl, align 4, !tbaa !336
  %indvars.iv.next588 = add nuw nsw i64 %indvars.iv587, 1 ; 2 uses
  %exitcond591.not = icmp eq i64 %indvars.iv.next588, %wide.trip.count590
  br i1 %exitcond591.not, label %._crit_edge, label %ma_channel_map_get_channel.exit357.us, !llvm.loop !1211

ma_channel_map_get_channel.exit357:               ; preds = %.lr.ph, %ma_channel_map_get_channel.exit357
  %indvars.iv582 = phi i64 [ %indvars.iv.next583, %ma_channel_map_get_channel.exit357 ], [ 0, %.lr.ph ] ; 3 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv582
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !9
  %i.vo = zext i8 %i.vn to i64
  %i.vp = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %i.vo ; 5 uses
  %i.vq = load float, ptr %i.vp, align 8, !tbaa !336
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vp, i64 4
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !336
  %i.vt = fmul float %i.uk, %i.vs
  %i.vu = tail call float @llvm.fmuladd.f32(float %i.ui, float %i.vq, float %i.vt)
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.vw = load float, ptr %i.vv, align 8, !tbaa !336
  %i.vx = tail call float @llvm.fmuladd.f32(float %i.um, float %i.vw, float %i.vu)
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vp, i64 12
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !336
  %i.wa = tail call float @llvm.fmuladd.f32(float %i.uo, float %i.vz, float %i.vx)
  %i.wb = fadd float %i.wa, 0.000000e+00
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vp, i64 20
  %i.wd = load float, ptr %i.wc, align 4, !tbaa !336
  %i.we = tail call float @llvm.fmuladd.f32(float %i.uq, float %i.wd, float %i.wb)
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %indvars.iv582
  store float %i.we, ptr %i.wf, align 4, !tbaa !336
  %indvars.iv.next583 = add nuw nsw i64 %indvars.iv582, 1 ; 2 uses
  %exitcond586.not = icmp eq i64 %indvars.iv.next583, %wide.trip.count585
  br i1 %exitcond586.not, label %._crit_edge, label %ma_channel_map_get_channel.exit357, !llvm.loop !1211

._crit_edge:                                      ; preds = %ma_channel_map_get_channel.exit357, %ma_channel_map_get_channel.exit357.us, %ma_channel_map_get_channel.exit
  %indvars.iv.next593 = add nuw nsw i64 %indvars.iv592, 1 ; 2 uses
  %exitcond596.not = icmp eq i64 %indvars.iv.next593, %wide.trip.count595
  br i1 %exitcond596.not, label %._crit_edge432, label %bb.aw, !llvm.loop !1212

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
  %i.xa = load <2 x float>, ptr %i.c, align 16, !tbaa !336 ; 4 uses
  %i.xb = load <2 x float>, ptr %i.wt, align 16, !tbaa !336 ; 4 uses
  %i.xc = load <2 x float>, ptr %i.wu, align 16, !tbaa !336 ; 3 uses
  %i.xd = load <2 x float>, ptr %i.wv, align 16, !tbaa !336 ; 3 uses
  %i.xe = load <2 x float>, ptr %i.ww, align 16, !tbaa !336 ; 4 uses
  %i.xf = load <2 x float>, ptr %i.wx, align 16, !tbaa !336 ; 4 uses
  %i.xg = load <2 x float>, ptr %i.wy, align 16, !tbaa !336 ; 3 uses
  %i.xh = load <2 x float>, ptr %i.wz, align 16, !tbaa !336 ; 3 uses
  %i.xi = trunc i64 %6 to i32                     ; 3 uses
  %min.iters.check884.a = icmp ult i32 %i.xi, 4
  br i1 %min.iters.check884.a, label %scalar.ph883.preheader, label %vector.scevcheck880

vector.scevcheck880:                              ; preds = %.lr.ph471
  %9 = add i64 %6, -1                             ; 2 uses
  %10 = and i64 %9, 4294967295
  %11 = icmp eq i64 %10, 4294967295
  %12 = icmp ugt i64 %9, 536870911
  %13 = or i1 %11, %12
  br i1 %13, label %scalar.ph883.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck880
  %i.xj = shl nuw nsw i64 %6, 5
  %scevgep = getelementptr i8, ptr %0, i64 %i.xj
  %i.xk = shl nuw nsw i64 %6, 3
  %scevgep882 = getelementptr i8, ptr %3, i64 %i.xk
  %bound0 = icmp ult ptr %0, %scevgep882
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph883.preheader, label %vector.ph885

vector.ph885:                                     ; preds = %vector.memcheck
  %n.vec886 = and i32 %i.xi, 1073741820           ; 4 uses
  %i.xl = shufflevector <2 x float> %i.xa, <2 x float> %i.xb, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.xm = shufflevector <2 x float> %i.xa, <2 x float> %i.xb, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.xn = shufflevector <2 x float> %i.xc, <2 x float> %i.xd, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.xo = shufflevector <2 x float> %i.xc, <2 x float> %i.xd, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.xp = shufflevector <2 x float> %i.xe, <2 x float> %i.xf, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.xq = shufflevector <2 x float> %i.xe, <2 x float> %i.xf, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.xr = shufflevector <2 x float> %i.xg, <2 x float> %i.xh, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.xs = shufflevector <2 x float> %i.xg, <2 x float> %i.xh, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.xt = shufflevector <8 x float> %i.xl, <8 x float> %i.xn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.xu = shufflevector <8 x float> %i.xm, <8 x float> %i.xo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.xv = shufflevector <8 x float> %i.xp, <8 x float> %i.xr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.xw = shufflevector <8 x float> %i.xq, <8 x float> %i.xs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body919

vector.body919:                                   ; preds = %vector.body919, %vector.ph885
  %index920 = phi i32 [ 0, %vector.ph885 ], [ %index.next922, %vector.body919 ] ; 3 uses
  %i.xx = shl i32 %index920, 1
  %i.xy = zext i32 %i.xx to i64
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.xy
  %wide.vec = load <8 x float>, ptr %i.xz, align 4, !tbaa !336, !alias.scope !1213 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 4 uses
  %strided.vec921 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 4 uses
  %i.ya = shl i32 %index920, 3
  %i.yb = zext i32 %i.ya to i64
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.yb
  %i.yd = shufflevector <4 x float> %strided.vec921, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ye = shufflevector <4 x float> %strided.vec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.yf = shufflevector <4 x float> %strided.vec921, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.yg = shufflevector <4 x float> %strided.vec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.yh = shufflevector <4 x float> %strided.vec921, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.yi = shufflevector <4 x float> %strided.vec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.yj = shufflevector <4 x float> %strided.vec921, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.yk = shufflevector <4 x float> %strided.vec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.yl = shufflevector <8 x float> %i.yd, <8 x float> %i.yf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ym = shufflevector <8 x float> %i.ye, <8 x float> %i.yg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yn = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.ym, <16 x float> %i.xu, <16 x float> zeroinitializer)
  %i.yo = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.yl, <16 x float> %i.xt, <16 x float> %i.yn)
  %i.yp = shufflevector <8 x float> %i.yh, <8 x float> %i.yj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yq = shufflevector <8 x float> %i.yi, <8 x float> %i.yk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yr = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.yq, <16 x float> %i.xw, <16 x float> zeroinitializer)
  %i.ys = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.yp, <16 x float> %i.xv, <16 x float> %i.yr)
  %interleaved.vec = shufflevector <16 x float> %i.yo, <16 x float> %i.ys, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.yc, align 4, !tbaa !336, !alias.scope !1216, !noalias !1213
  %index.next922 = add nuw i32 %index920, 4       ; 2 uses
  %i.yt = icmp eq i32 %index.next922, %n.vec886
  br i1 %i.yt, label %middle.block923, label %vector.body919, !llvm.loop !1218

middle.block923:                                  ; preds = %vector.body919
  %cmp.n924 = icmp eq i32 %n.vec886, %i.xi
  br i1 %cmp.n924, label %.loopexit373, label %scalar.ph883.preheader

scalar.ph883.preheader:                           ; preds = %vector.memcheck, %vector.scevcheck880, %.lr.ph471, %middle.block923
  %.0314470.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck880 ], [ 0, %.lr.ph471 ], [ %n.vec886, %middle.block923 ]
  %i.yu = shufflevector <2 x float> %i.xa, <2 x float> %i.xb, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.yv = shufflevector <2 x float> %i.xc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.yw = shufflevector <4 x float> %i.yu, <4 x float> %i.yv, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.yx = shufflevector <2 x float> %i.xd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.yy = shufflevector <4 x float> %i.yw, <4 x float> %i.yx, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.yz = shufflevector <2 x float> %i.xa, <2 x float> %i.xb, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.za = shufflevector <4 x float> %i.yz, <4 x float> %i.yv, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.zb = shufflevector <4 x float> %i.za, <4 x float> %i.yx, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.zc = shufflevector <2 x float> %i.xe, <2 x float> %i.xf, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.zd = shufflevector <2 x float> %i.xg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ze = shufflevector <4 x float> %i.zc, <4 x float> %i.zd, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.zf = shufflevector <2 x float> %i.xh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.zg = shufflevector <4 x float> %i.ze, <4 x float> %i.zf, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.zh = shufflevector <2 x float> %i.xe, <2 x float> %i.xf, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.zi = shufflevector <4 x float> %i.zh, <4 x float> %i.zd, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.zj = shufflevector <4 x float> %i.zi, <4 x float> %i.zf, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  br label %scalar.ph883

scalar.ph883:                                     ; preds = %scalar.ph883.preheader, %scalar.ph883
  %.0314470 = phi i32 [ %i.aag, %scalar.ph883 ], [ %.0314470.ph, %scalar.ph883.preheader ] ; 3 uses
  %i.zk = shl i32 %.0314470, 1                    ; 2 uses
  %i.zl = zext i32 %i.zk to i64
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.zl
  %i.zn = load float, ptr %i.zm, align 4, !tbaa !336
  %i.zo = or disjoint i32 %i.zk, 1
  %i.zp = zext i32 %i.zo to i64
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.zp
  %i.zr = load float, ptr %i.zq, align 4, !tbaa !336
  %i.zs = shl i32 %.0314470, 3                    ; 2 uses
  %i.zt = zext i32 %i.zs to i64
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.zt
  %i.zv = insertelement <4 x float> poison, float %i.zn, i64 0
  %i.zw = shufflevector <4 x float> %i.zv, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.zx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zw, <4 x float> %i.yy, <4 x float> zeroinitializer)
  %i.zy = insertelement <4 x float> poison, float %i.zr, i64 0
  %i.zz = shufflevector <4 x float> %i.zy, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aaa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zz, <4 x float> %i.zb, <4 x float> %i.zx)
  store <4 x float> %i.aaa, ptr %i.zu, align 4, !tbaa !336
  %i.aab = or disjoint i32 %i.zs, 4
  %i.aac = zext i32 %i.aab to i64
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aac
  %i.aae = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zw, <4 x float> %i.zg, <4 x float> zeroinitializer)
  %i.aaf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zz, <4 x float> %i.zj, <4 x float> %i.aae)
  store <4 x float> %i.aaf, ptr %i.aad, align 4, !tbaa !336
  %i.aag = add i32 %.0314470, 1                   ; 3 uses
  %i.aah = zext i32 %i.aag to i64
  %i.aai = icmp ugt i64 %6, %i.aah
  br i1 %i.aai, label %scalar.ph883, label %.loopexit373, !llvm.loop !1219

.preheader374:                                    ; preds = %.preheader374.lr.ph, %._crit_edge459
  %.1315468 = phi i32 [ 0, %.preheader374.lr.ph ], [ %i.acb, %._crit_edge459 ] ; 3 uses
  br i1 %.not489, label %._crit_edge459, label %.lr.ph458

.lr.ph458:                                        ; preds = %.preheader374
  %i.aaj = mul i32 %.1315468, %5
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph458, %bb.ba
  %indvars.iv602 = phi i64 [ 0, %.lr.ph458 ], [ %indvars.iv.next603, %bb.ba ] ; 10 uses
  %i.aak = phi <4 x float> [ zeroinitializer, %.lr.ph458 ], [ %i.abf, %bb.ba ]
  %i.aal = phi <4 x float> [ zeroinitializer, %.lr.ph458 ], [ %i.abs, %bb.ba ]
  %i.aam = trunc nuw i64 %indvars.iv602 to i32
  %i.aan = add i32 %i.aaj, %i.aam
  %i.aao = zext i32 %i.aan to i64
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aao
  %i.aaq = load float, ptr %i.aap, align 4, !tbaa !336
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv602
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !336
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %indvars.iv602
  %i.aau = load float, ptr %i.aat, align 4, !tbaa !336
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %i.wn, i64 %indvars.iv602
  %i.aaw = load float, ptr %i.aav, align 4, !tbaa !336
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %i.wo, i64 %indvars.iv602
  %i.aay = load float, ptr %i.aax, align 4, !tbaa !336
  %i.aaz = insertelement <4 x float> poison, float %i.aaq, i64 0
  %i.aba = shufflevector <4 x float> %i.aaz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.abb = insertelement <4 x float> poison, float %i.aas, i64 0
  %i.abc = insertelement <4 x float> %i.abb, float %i.aau, i64 1
  %i.abd = insertelement <4 x float> %i.abc, float %i.aaw, i64 2
  %i.abe = insertelement <4 x float> %i.abd, float %i.aay, i64 3
  %i.abf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aba, <4 x float> %i.abe, <4 x float> %i.aak) ; 2 uses
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %indvars.iv602
  %i.abh = load float, ptr %i.abg, align 4, !tbaa !336
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.wq, i64 %indvars.iv602
  %i.abj = load float, ptr %i.abi, align 4, !tbaa !336
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %indvars.iv602
  %i.abl = load float, ptr %i.abk, align 4, !tbaa !336
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %i.ws, i64 %indvars.iv602
  %i.abn = load float, ptr %i.abm, align 4, !tbaa !336
  %i.abo = insertelement <4 x float> poison, float %i.abh, i64 0
  %i.abp = insertelement <4 x float> %i.abo, float %i.abj, i64 1
  %i.abq = insertelement <4 x float> %i.abp, float %i.abl, i64 2
  %i.abr = insertelement <4 x float> %i.abq, float %i.abn, i64 3
  %i.abs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aba, <4 x float> %i.abr, <4 x float> %i.aal) ; 2 uses
  %indvars.iv.next603 = add nuw nsw i64 %indvars.iv602, 1 ; 2 uses
  %exitcond606.not = icmp eq i64 %indvars.iv.next603, %wide.trip.count605
  br i1 %exitcond606.not, label %._crit_edge459, label %bb.ba, !llvm.loop !1220

._crit_edge459:                                   ; preds = %bb.ba, %.preheader374
  %i.abt = phi <4 x float> [ zeroinitializer, %.preheader374 ], [ %i.abf, %bb.ba ]
  %i.abu = phi <4 x float> [ zeroinitializer, %.preheader374 ], [ %i.abs, %bb.ba ]
  %i.abv = shl i32 %.1315468, 3                   ; 2 uses
  %i.abw = zext i32 %i.abv to i64
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.abw
  store <4 x float> %i.abt, ptr %i.abx, align 4, !tbaa !336
  %i.aby = or disjoint i32 %i.abv, 4
  %i.abz = zext i32 %i.aby to i64
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.abz
  store <4 x float> %i.abu, ptr %i.aca, align 4, !tbaa !336
  %i.acb = add i32 %.1315468, 1                   ; 3 uses
  %i.acc = zext i32 %i.acb to i64
  %i.acd = icmp ugt i64 %6, %i.acc
  br i1 %i.acd, label %.preheader374, label %.loopexit373, !llvm.loop !1221

.preheader377:                                    ; preds = %.preheader377.lr.ph, %._crit_edge441
  %.2447 = phi i32 [ 0, %.preheader377.lr.ph ], [ %i.adw, %._crit_edge441 ] ; 3 uses
  br i1 %.not487, label %._crit_edge441, label %.lr.ph440

.lr.ph440:                                        ; preds = %.preheader377
  %i.ace = mul i32 %.2447, %5
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph440, %bb.bb
  %indvars.iv597 = phi i64 [ 0, %.lr.ph440 ], [ %indvars.iv.next598, %bb.bb ] ; 8 uses
  %i.acf = phi <2 x float> [ zeroinitializer, %.lr.ph440 ], [ %i.adj, %bb.bb ]
  %i.acg = phi <2 x float> [ zeroinitializer, %.lr.ph440 ], [ %i.adc, %bb.bb ]
  %i.ach = phi <2 x float> [ zeroinitializer, %.lr.ph440 ], [ %i.acv, %bb.bb ]
  %i.aci = trunc nuw i64 %indvars.iv597 to i32
  %i.acj = add i32 %i.ace, %i.aci
  %i.ack = zext i32 %i.acj to i64
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ack
  %i.acm = load float, ptr %i.acl, align 4, !tbaa !336
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv597
  %i.aco = load float, ptr %i.acn, align 4, !tbaa !336
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.wg, i64 %indvars.iv597
  %i.acq = load float, ptr %i.acp, align 4, !tbaa !336
  %i.acr = insertelement <2 x float> poison, float %i.acm, i64 0
  %i.acs = shufflevector <2 x float> %i.acr, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.act = insertelement <2 x float> poison, float %i.aco, i64 0
  %i.acu = insertelement <2 x float> %i.act, float %i.acq, i64 1
  %i.acv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acs, <2 x float> %i.acu, <2 x float> %i.ach) ; 2 uses
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %indvars.iv597
  %i.acx = load float, ptr %i.acw, align 4, !tbaa !336
  %i.acy = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %indvars.iv597
  %i.acz = load float, ptr %i.acy, align 4, !tbaa !336
  %i.ada = insertelement <2 x float> poison, float %i.acx, i64 0
  %i.adb = insertelement <2 x float> %i.ada, float %i.acz, i64 1
  %i.adc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acs, <2 x float> %i.adb, <2 x float> %i.acg) ; 2 uses
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %indvars.iv597
  %i.ade = load float, ptr %i.add, align 4, !tbaa !336
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %indvars.iv597
  %i.adg = load float, ptr %i.adf, align 4, !tbaa !336
  %i.adh = insertelement <2 x float> poison, float %i.ade, i64 0
  %i.adi = insertelement <2 x float> %i.adh, float %i.adg, i64 1
  %i.adj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acs, <2 x float> %i.adi, <2 x float> %i.acf) ; 2 uses
  %indvars.iv.next598 = add nuw nsw i64 %indvars.iv597, 1 ; 2 uses
  %exitcond601.not = icmp eq i64 %indvars.iv.next598, %wide.trip.count600
  br i1 %exitcond601.not, label %._crit_edge441, label %bb.bb, !llvm.loop !1222

._crit_edge441:                                   ; preds = %bb.bb, %.preheader377
  %i.adk = phi <2 x float> [ zeroinitializer, %.preheader377 ], [ %i.adj, %bb.bb ]
  %i.adl = phi <2 x float> [ zeroinitializer, %.preheader377 ], [ %i.adc, %bb.bb ]
  %i.adm = phi <2 x float> [ zeroinitializer, %.preheader377 ], [ %i.acv, %bb.bb ]
  %i.adn = mul i32 %.2447, 6                      ; 3 uses
  %i.ado = zext i32 %i.adn to i64
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ado
  store <2 x float> %i.adm, ptr %i.adp, align 4, !tbaa !336
  %i.adq = add i32 %i.adn, 2
  %i.adr = zext i32 %i.adq to i64
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.adr
  store <2 x float> %i.adl, ptr %i.ads, align 4, !tbaa !336
  %i.adt = add i32 %i.adn, 4
  %i.adu = zext i32 %i.adt to i64
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.adu
  store <2 x float> %i.adk, ptr %i.adv, align 4, !tbaa !336
  %i.adw = add i32 %.2447, 1                      ; 3 uses
  %i.adx = zext i32 %i.adw to i64
  %i.ady = icmp ugt i64 %6, %i.adx
  br i1 %i.ady, label %.preheader377, label %.loopexit373, !llvm.loop !1223

.loopexit373:                                     ; preds = %._crit_edge441, %._crit_edge459, %scalar.ph883, %middle.block923, %.preheader380, %.preheader378, %.preheader375, %.preheader372, %._crit_edge432
  %.3 = phi i32 [ 0, %._crit_edge432 ], [ %i.aag, %scalar.ph883 ], [ 0, %.preheader380 ], [ 0, %.preheader372 ], [ 0, %.preheader375 ], [ 0, %.preheader378 ], [ %i.acb, %._crit_edge459 ], [ %n.vec886, %middle.block923 ], [ %i.adw, %._crit_edge441 ] ; 2 uses
  %i.adz = zext i32 %.3 to i64
  %i.aea = icmp ugt i64 %6, %i.adz
  br i1 %i.aea, label %.preheader371.lr.ph, label %.loopexit

.preheader371.lr.ph:                              ; preds = %.loopexit373
  %.not492 = icmp eq i32 %5, 0
  %wide.trip.count615 = zext nneg i32 %2 to i64   ; 6 uses
  %wide.trip.count610 = zext nneg i32 %5 to i64   ; 2 uses
  %wide.trip.count620 = zext nneg i32 %2 to i64
  %i.aeb = add nsw i64 %wide.trip.count615, -1    ; 2 uses
  %xtraiter1169 = and i64 %wide.trip.count610, 3  ; 3 uses
  %i.aec = add nsw i32 %5, -1
  %i.aed = icmp ult i32 %i.aec, 3
  %unroll_iter1174 = and i64 %wide.trip.count610, 60
  %lcmp.mod1171.not = icmp eq i64 %xtraiter1169, 0
  %lcmp.mod1173 = icmp ne i64 %xtraiter1169, 0
  %min.iters.check928 = icmp ult i32 %2, 8
  %i.aee = trunc nsw i64 %i.aeb to i32
end_hunk_0
