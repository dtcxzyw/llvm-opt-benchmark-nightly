Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_blend_to_rgb565?download=true
inline.NumInlined: 114
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@lv_draw_sw_blend_image_to_rgb565:bb.a
  %wide.trip.count415.i = zext nneg i32 %i.mo to i64
  br label %.preheader342.i

.preheader342.i:                                  ; preds = %._crit_edge369.i, %.preheader342.preheader.i
  %.2373.i = phi i32 [ %i.tz, %._crit_edge369.i ], [ 0, %.preheader342.preheader.i ]
  %.0293372.i = phi ptr [ %i.ty, %._crit_edge369.i ], [ %i.nb, %.preheader342.preheader.i ] ; 2 uses
  %.2300371.i = phi ptr [ %i.tx, %._crit_edge369.i ], [ %i.mx, %.preheader342.preheader.i ] ; 2 uses
  %.2305370.i = phi ptr [ %i.tw, %._crit_edge369.i ], [ %i.mt, %.preheader342.preheader.i ] ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %lv_color_24_16_mix.exit332.i, %.preheader342.i
  %indvars.iv410.i = phi i64 [ 0, %.preheader342.i ], [ %indvars.iv.next411.i, %lv_color_24_16_mix.exit332.i ] ; 3 uses
  %indvars.iv408.i.a = phi i64 [ 0, %.preheader342.i ], [ %indvars.iv.next409.i.a, %lv_color_24_16_mix.exit332.i ] ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.2300371.i, i64 %indvars.iv408.i.a ; 6 uses
  %i.rx = getelementptr inbounds nuw [2 x i8], ptr %.2305370.i, i64 %indvars.iv410.i ; 2 uses
  %i.ry = load i16, ptr %i.rx, align 2, !tbaa !12 ; 4 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rw, i64 3
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !17
  %i.sb = getelementptr inbounds nuw i8, ptr %.0293372.i, i64 %indvars.iv410.i
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !17
  %i.sd = tail call i8 @llvm.umulh.i8(i8 %i.sa, i8 %i.sc) ; 3 uses
  switch i8 %i.sd, label %bb.bd [
    i8 0, label %lv_color_24_16_mix.exit332.i
    i8 -1, label %bb.bc
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.se = getelementptr inbounds nuw i8, ptr %i.rw, i64 1
  %i.sf = load <2 x i8>, ptr %i.se, align 1, !tbaa !17
  %i.sg = and <2 x i8> %i.sf, <i8 -4, i8 -8>
  %i.sh = zext <2 x i8> %i.sg to <2 x i16>
  %i.si = shl nuw <2 x i16> %i.sh, <i16 3, i16 8> ; 2 uses
  %shift720 = shufflevector <2 x i16> %i.si, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop721 = or disjoint <2 x i16> %i.si, %shift720
  %i.sj = extractelement <2 x i16> %foldExtExtBinop721, i64 0
  %i.sk = load i8, ptr %i.rw, align 1, !tbaa !17
  %i.sl = lshr i8 %i.sk, 3
  %i.sm = zext nneg i8 %i.sl to i16
  %i.sn = or disjoint i16 %i.sj, %i.sm
  br label %lv_color_24_16_mix.exit332.i

bb.bd:                                            ; preds = %bb.bb
  %i.so = zext i8 %i.sd to i16                    ; 3 uses
  %i.sp = xor i8 %i.sd, -1
  %i.sq = getelementptr inbounds nuw i8, ptr %i.rw, i64 2
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !17
  %i.ss = lshr i8 %i.sr, 3
  %i.st = zext nneg i8 %i.ss to i16
  %i.su = mul nuw nsw i16 %i.st, %i.so
  %i.sv = lshr i16 %i.ry, 11
  %i.sw = zext i8 %i.sp to i16                    ; 3 uses
  %i.sx = mul nuw nsw i16 %i.sv, %i.sw
  %i.sy = add nuw nsw i16 %i.su, %i.sx
  %i.sz = shl i16 %i.sy, 3
  %i.ta = and i16 %i.sz, -2048
  %i.tb = getelementptr inbounds nuw i8, ptr %i.rw, i64 1
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !17
  %i.td = lshr i8 %i.tc, 2
  %i.te = zext nneg i8 %i.td to i16
  %i.tf = mul nuw nsw i16 %i.te, %i.so
  %i.tg = lshr i16 %i.ry, 5
  %i.th = and i16 %i.tg, 63
  %i.ti = mul nuw nsw i16 %i.th, %i.sw
  %i.tj = add nuw nsw i16 %i.tf, %i.ti
  %i.tk = lshr i16 %i.tj, 3
  %i.tl = and i16 %i.tk, 2016
  %i.tm = or disjoint i16 %i.tl, %i.ta
  %i.tn = load i8, ptr %i.rw, align 1, !tbaa !17
  %i.to = lshr i8 %i.tn, 3
  %i.tp = zext nneg i8 %i.to to i16
  %i.tq = mul nuw nsw i16 %i.tp, %i.so
  %i.tr = and i16 %i.ry, 31
  %i.ts = mul nuw nsw i16 %i.tr, %i.sw
  %i.tt = add nuw nsw i16 %i.tq, %i.ts
  %i.tu = lshr i16 %i.tt, 8
  %i.tv = add i16 %i.tm, %i.tu
  br label %lv_color_24_16_mix.exit332.i

lv_color_24_16_mix.exit332.i:                     ; preds = %bb.bd, %bb.bc, %bb.bb
  %.0.i331.i = phi i16 [ %i.tv, %bb.bd ], [ %i.sn, %bb.bc ], [ %i.ry, %bb.bb ]
  store i16 %.0.i331.i, ptr %i.rx, align 2, !tbaa !12
  %indvars.iv.next411.i = add nuw nsw i64 %indvars.iv410.i, 1 ; 2 uses
  %indvars.iv.next409.i.a = add nuw nsw i64 %indvars.iv408.i.a, 4
  %exitcond416.not.i.a = icmp eq i64 %indvars.iv.next411.i, %wide.trip.count415.i
  br i1 %exitcond416.not.i.a, label %._crit_edge369.i, label %bb.bb, !llvm.loop !74

._crit_edge369.i:                                 ; preds = %lv_color_24_16_mix.exit332.i
  %i.tw = getelementptr inbounds nuw i8, ptr %.2305370.i, i64 %i.rt
  %i.tx = getelementptr inbounds i8, ptr %.2300371.i, i64 %i.ru
  %i.ty = getelementptr inbounds i8, ptr %.0293372.i, i64 %i.rv
  %i.tz = add nuw nsw i32 %.2373.i, 1             ; 2 uses
  %exitcond417.not.i = icmp eq i32 %i.tz, %i.mq
  br i1 %exitcond417.not.i, label %rgb565_image_blend.exit, label %.preheader342.i, !llvm.loop !75

bb.be:                                            ; preds = %bb.ba
  %or.cond12.i = select i1 %.not.i36, i1 %i.pu, i1 false
  %i.ua = icmp sgt i32 %i.mq, 0
  %or.cond386.i = select i1 %or.cond12.i, i1 %i.ua, i1 false
  br i1 %or.cond386.i, label %.preheader345.lr.ph.i, label %rgb565_image_blend.exit

.preheader345.lr.ph.i:                            ; preds = %bb.be
  %i.ub = icmp sgt i32 %i.mo, 0
  %i.uc = zext i32 %i.mv to i64
  %i.ud = sext i32 %i.mz to i64
  %i.ue = sext i32 %i.nd to i64
  br i1 %i.ub, label %.preheader345.preheader.i, label %rgb565_image_blend.exit

.preheader345.preheader.i:                        ; preds = %.preheader345.lr.ph.i
  %wide.trip.count405.i = zext nneg i32 %i.mo to i64
  br label %.preheader345.i

.preheader345.i:                                  ; preds = %._crit_edge362.i, %.preheader345.preheader.i
  %.3366.i = phi i32 [ %i.wb, %._crit_edge362.i ], [ 0, %.preheader345.preheader.i ]
  %.1294365.i = phi ptr [ %i.wa, %._crit_edge362.i ], [ %i.nb, %.preheader345.preheader.i ] ; 2 uses
  %.3301364.i = phi ptr [ %i.vz, %._crit_edge362.i ], [ %i.mx, %.preheader345.preheader.i ] ; 2 uses
  %.3306363.i = phi ptr [ %i.vy, %._crit_edge362.i ], [ %i.mt, %.preheader345.preheader.i ] ; 2 uses
  br label %bb.bf

bb.bf:                                            ; preds = %lv_color_24_16_mix.exit334.i, %.preheader345.i
  %indvars.iv400.i = phi i64 [ 0, %.preheader345.i ], [ %indvars.iv.next401.i, %lv_color_24_16_mix.exit334.i ] ; 3 uses
  %indvars.iv398.i = phi i64 [ 0, %.preheader345.i ], [ %indvars.iv.next399.i, %lv_color_24_16_mix.exit334.i ] ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %.3301364.i, i64 %indvars.iv398.i ; 4 uses
  %i.ug = getelementptr inbounds nuw [2 x i8], ptr %.3306363.i, i64 %indvars.iv400.i ; 2 uses
  %i.uh = load i16, ptr %i.ug, align 2, !tbaa !12 ; 4 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uf, i64 3
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !17
  %i.uk = zext i8 %i.uj to i32
  %i.ul = getelementptr inbounds nuw i8, ptr %.1294365.i, i64 %indvars.iv400.i
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !17
  %i.un = zext i8 %i.um to i32
  %i.uo = mul nuw nsw i32 %i.uk, %i.no
  %i.up = mul nuw nsw i32 %i.uo, %i.un
  %i.uq = lshr i32 %i.up, 16                      ; 2 uses
  %cond.i = icmp eq i32 %i.uq, 0
  br i1 %cond.i, label %lv_color_24_16_mix.exit334.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ur = trunc nuw nsw i32 %i.uq to i16          ; 4 uses
  %i.us = xor i16 %i.ur, 255                      ; 3 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uf, i64 2
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !17
  %i.uv = lshr i8 %i.uu, 3
  %i.uw = zext nneg i8 %i.uv to i16
  %i.ux = mul nuw nsw i16 %i.uw, %i.ur
  %i.uy = lshr i16 %i.uh, 11
  %i.uz = mul nuw nsw i16 %i.us, %i.uy
  %i.va = add nuw nsw i16 %i.ux, %i.uz
  %i.vb = shl nuw i16 %i.va, 3
  %i.vc = and i16 %i.vb, -2048
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uf, i64 1
  %i.ve = load i8, ptr %i.vd, align 1, !tbaa !17
  %i.vf = lshr i8 %i.ve, 2
  %i.vg = zext nneg i8 %i.vf to i16
  %i.vh = mul nuw nsw i16 %i.vg, %i.ur
  %i.vi = lshr i16 %i.uh, 5
  %i.vj = and i16 %i.vi, 63
  %i.vk = mul nuw nsw i16 %i.us, %i.vj
  %i.vl = add nuw nsw i16 %i.vh, %i.vk
  %i.vm = lshr i16 %i.vl, 3
  %i.vn = and i16 %i.vm, 2016
  %i.vo = or disjoint i16 %i.vn, %i.vc
  %i.vp = load i8, ptr %i.uf, align 1, !tbaa !17
  %i.vq = lshr i8 %i.vp, 3
  %i.vr = zext nneg i8 %i.vq to i16
  %i.vs = mul nuw nsw i16 %i.vr, %i.ur
  %i.vt = and i16 %i.uh, 31
  %i.vu = mul nuw nsw i16 %i.us, %i.vt
  %i.vv = add nuw nsw i16 %i.vs, %i.vu
  %i.vw = lshr i16 %i.vv, 8
  %i.vx = add i16 %i.vo, %i.vw
  br label %lv_color_24_16_mix.exit334.i

lv_color_24_16_mix.exit334.i:                     ; preds = %bb.bg, %bb.bf
  %.0.i333.i = phi i16 [ %i.vx, %bb.bg ], [ %i.uh, %bb.bf ]
  store i16 %.0.i333.i, ptr %i.ug, align 2, !tbaa !12
  %indvars.iv.next401.i = add nuw nsw i64 %indvars.iv400.i, 1 ; 2 uses
  %indvars.iv.next399.i = add nuw nsw i64 %indvars.iv398.i, 4
  %exitcond406.not.i = icmp eq i64 %indvars.iv.next401.i, %wide.trip.count405.i
  br i1 %exitcond406.not.i, label %._crit_edge362.i, label %bb.bf, !llvm.loop !76

._crit_edge362.i:                                 ; preds = %lv_color_24_16_mix.exit334.i
  %i.vy = getelementptr inbounds nuw i8, ptr %.3306363.i, i64 %i.uc
  %i.vz = getelementptr inbounds i8, ptr %.3301364.i, i64 %i.ud
  %i.wa = getelementptr inbounds i8, ptr %.1294365.i, i64 %i.ue
  %i.wb = add nuw nsw i32 %.3366.i, 1             ; 2 uses
  %exitcond407.not.i.a = icmp eq i32 %i.wb, %i.mq
  br i1 %exitcond407.not.i.a, label %rgb565_image_blend.exit, label %.preheader345.i, !llvm.loop !77

.preheader348.i:                                  ; preds = %._crit_edge.i32, %.preheader348.preheader.i
  %.4359.i = phi i32 [ %i.abl, %._crit_edge.i32 ], [ 0, %.preheader348.preheader.i ]
  %.2295358.i = phi ptr [ %.3296.i, %._crit_edge.i32 ], [ %i.nb, %.preheader348.preheader.i ] ; 3 uses
  %.4302357.i = phi ptr [ %i.abj, %._crit_edge.i32 ], [ %i.mx, %.preheader348.preheader.i ] ; 8 uses
  %.4307356.i = phi ptr [ %i.abi, %._crit_edge.i32 ], [ %i.mt, %.preheader348.preheader.i ] ; 6 uses
  %i.wc = icmp eq ptr %.2295358.i, null           ; 3 uses
  %or.cond15.i = select i1 %i.wc, i1 %i.ni, i1 false
  %or.cond18.i = select i1 %i.wc, i1 %i.nj, i1 false
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bs, %.preheader348.i
  %indvars.iv392.i.a = phi i64 [ 0, %.preheader348.i ], [ %indvars.iv.next393.i.a, %bb.bs ] ; 7 uses
  %.4287354.i = phi i32 [ 0, %.preheader348.i ], [ %8, %bb.bs ] ; 8 uses
  %i.wd = load i32, ptr %i.ne, align 4, !tbaa !28
  switch i32 %i.wd, label %rgb565_image_blend.exit [
    i32 1, label %bb.bi
    i32 2, label %bb.bj
    i32 3, label %bb.bk
    i32 4, label %bb.bl
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.we = getelementptr inbounds nuw [2 x i8], ptr %.4307356.i, i64 %indvars.iv392.i.a
  %i.wf = load i16, ptr %i.we, align 2            ; 4 uses
  %i.wg = lshr i16 %i.wf, 11
  %1 = zext nneg i32 %.4287354.i to i64
  %i.wh = getelementptr inbounds nuw i8, ptr %.4302357.i, i64 %1 ; 3 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 2
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !17
  %i.wk = lshr i8 %i.wj, 3
  %i.wl = zext nneg i8 %i.wk to i16
  %i.wm = add nuw nsw i16 %i.wg, %i.wl
  %i.wn = tail call i16 @llvm.umin.i16(i16 %i.wm, i16 31)
  %spec.select.i33 = shl nuw i16 %i.wn, 11
  %i.wo = lshr i16 %i.wf, 5
  %i.wp = and i16 %i.wo, 63
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wh, i64 1
  %i.wr = load i8, ptr %i.wq, align 1, !tbaa !17
  %i.ws = lshr i8 %i.wr, 2
  %i.wt = zext nneg i8 %i.ws to i16
  %i.wu = add nuw nsw i16 %i.wp, %i.wt
  %i.wv = tail call i16 @llvm.umin.i16(i16 %i.wu, i16 63)
  %i.ww = shl nuw nsw i16 %i.wv, 5
  %i.wx = or disjoint i16 %i.ww, %spec.select.i33
  %i.wy = and i16 %i.wf, 31
  %i.wz = load i8, ptr %i.wh, align 1, !tbaa !17
  %i.xa = lshr i8 %i.wz, 3
  %i.xb = zext nneg i8 %i.xa to i16
  %i.xc = add nuw nsw i16 %i.wy, %i.xb
  %i.xd = tail call i16 @llvm.umin.i16(i16 %i.xc, i16 31)
  %i.xe = or disjoint i16 %i.wx, %i.xd
  br label %bb.bm

bb.bj:                                            ; preds = %bb.bh
  %i.xf = getelementptr inbounds nuw [2 x i8], ptr %.4307356.i, i64 %indvars.iv392.i.a
  %i.xg = load i16, ptr %i.xf, align 2            ; 4 uses
  %i.xh = lshr i16 %i.xg, 11
  %2 = zext nneg i32 %.4287354.i to i64
  %i.xi = getelementptr inbounds nuw i8, ptr %.4302357.i, i64 %2 ; 3 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 2
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !17
  %i.xl = lshr i8 %i.xk, 3
  %i.xm = zext nneg i8 %i.xl to i16
  %i.xn = sub nsw i16 %i.xh, %i.xm
  %i.xo = tail call i16 @llvm.smax.i16(i16 %i.xn, i16 0)
  %i.xp = shl nuw i16 %i.xo, 11
  %i.xq = lshr i16 %i.xg, 5
  %i.xr = and i16 %i.xq, 63
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xi, i64 1
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !17
  %i.xu = lshr i8 %i.xt, 2
  %i.xv = zext nneg i8 %i.xu to i16
  %i.xw = sub nsw i16 %i.xr, %i.xv
  %i.xx = tail call i16 @llvm.smax.i16(i16 %i.xw, i16 0)
  %i.xy = shl nuw nsw i16 %i.xx, 5
  %i.xz = add nuw i16 %i.xy, %i.xp
  %i.ya = and i16 %i.xg, 31
  %i.yb = load i8, ptr %i.xi, align 1, !tbaa !17
  %i.yc = lshr i8 %i.yb, 3
  %i.yd = zext nneg i8 %i.yc to i16
  %i.ye = sub nsw i16 %i.ya, %i.yd
  %i.yf = tail call i16 @llvm.smax.i16(i16 %i.ye, i16 0)
  %i.yg = add nuw i16 %i.xz, %i.yf
  br label %bb.bm

bb.bk:                                            ; preds = %bb.bh
  %i.yh = getelementptr inbounds nuw [2 x i8], ptr %.4307356.i, i64 %indvars.iv392.i.a
  %i.yi = load i16, ptr %i.yh, align 2            ; 3 uses
  %3 = zext nneg i32 %.4287354.i to i64
  %i.yj = getelementptr inbounds nuw i8, ptr %.4302357.i, i64 %3 ; 3 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 2
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !17
  %i.ym = lshr i8 %i.yl, 3
  %i.yn = zext nneg i8 %i.ym to i16
  %i.yo = lshr i16 %i.yi, 5                       ; 2 uses
  %i.yp = and i16 %i.yo, 1984
  %i.yq = mul nuw i16 %i.yp, %i.yn
  %i.yr = and i16 %i.yq, -2048
  %i.ys = and i16 %i.yo, 63
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yj, i64 1
  %i.yu = load i8, ptr %i.yt, align 1, !tbaa !17
  %i.yv = lshr i8 %i.yu, 2
  %i.yw = zext nneg i8 %i.yv to i16
  %i.yx = mul nuw nsw i16 %i.ys, %i.yw
  %i.yy = lshr i16 %i.yx, 1
  %i.yz = and i16 %i.yy, 2016
  %i.za = or disjoint i16 %i.yz, %i.yr
  %i.zb = and i16 %i.yi, 31
  %i.zc = load i8, ptr %i.yj, align 1, !tbaa !17
  %i.zd = lshr i8 %i.zc, 3
  %i.ze = zext nneg i8 %i.zd to i16
  %i.zf = mul nuw nsw i16 %i.zb, %i.ze
  %i.zg = lshr i16 %i.zf, 5
  %i.zh = or disjoint i16 %i.za, %i.zg
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bh
  %i.zi = getelementptr inbounds nuw [2 x i8], ptr %.4307356.i, i64 %indvars.iv392.i.a
  %i.zj = load i16, ptr %i.zi, align 2            ; 4 uses
  %i.zk = lshr i16 %i.zj, 11
  %4 = zext nneg i32 %.4287354.i to i64
  %i.zl = getelementptr inbounds nuw i8, ptr %.4302357.i, i64 %4 ; 3 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 2
  %i.zn = load i8, ptr %i.zm, align 1, !tbaa !17
  %i.zo = lshr i8 %i.zn, 3
  %i.zp = zext nneg i8 %i.zo to i16
  %i.zq = sub nsw i16 %i.zk, %i.zp
  %i.zr = tail call i16 @llvm.abs.i16(i16 %i.zq, i1 true)
  %i.zs = shl nuw i16 %i.zr, 11
  %i.zt = lshr i16 %i.zj, 5
  %i.zu = and i16 %i.zt, 63
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zl, i64 1
  %i.zw = load i8, ptr %i.zv, align 1, !tbaa !17
  %i.zx = lshr i8 %i.zw, 2
  %i.zy = zext nneg i8 %i.zx to i16
  %i.zz = sub nsw i16 %i.zu, %i.zy
  %i.aaa = tail call i16 @llvm.abs.i16(i16 %i.zz, i1 true)
  %i.aab = shl nuw nsw i16 %i.aaa, 5
  %i.aac = add nuw i16 %i.aab, %i.zs
  %i.aad = and i16 %i.zj, 31
  %i.aae = load i8, ptr %i.zl, align 1, !tbaa !17
  %i.aaf = lshr i8 %i.aae, 3
  %i.aag = zext nneg i8 %i.aaf to i16
  %i.aah = sub nsw i16 %i.aad, %i.aag
  %i.aai = tail call i16 @llvm.abs.i16(i16 %i.aah, i1 true)
  %i.aaj = add nuw i16 %i.aac, %i.aai
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bi
  %i.aak = phi i16 [ %i.wf, %bb.bi ], [ %i.xg, %bb.bj ], [ %i.yi, %bb.bk ], [ %i.zj, %bb.bl ]
  %.0280.i = phi i16 [ %i.xe, %bb.bi ], [ %i.yg, %bb.bj ], [ %i.zh, %bb.bk ], [ %i.aaj, %bb.bl ]
  %i.aal = getelementptr inbounds nuw [2 x i8], ptr %.4307356.i, i64 %indvars.iv392.i.a
  br i1 %or.cond15.i, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %5 = zext nneg i32 %.4287354.i to i64
  %i.aam = getelementptr inbounds nuw i8, ptr %.4302357.i, i64 %5
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 3
  %i.aao = load i8, ptr %i.aan, align 1, !tbaa !17
  br label %bb.bs

bb.bo:                                            ; preds = %bb.bm
  br i1 %or.cond18.i, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %6 = zext nneg i32 %.4287354.i to i64
  %i.aap = getelementptr inbounds nuw i8, ptr %.4302357.i, i64 %6
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 3
  %i.aar = load i8, ptr %i.aaq, align 1, !tbaa !17
  %i.aas = zext i8 %i.aar to i32
  %i.aat = mul nuw nsw i32 %i.aas, %i.nh
  %i.aau = lshr i32 %i.aat, 8
  %i.aav = trunc nuw i32 %i.aau to i8
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bo
  %i.aaw = getelementptr inbounds nuw i8, ptr %.2295358.i, i64 %indvars.iv392.i.a
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !17 ; 2 uses
  br i1 %i.ni, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.aay = zext i8 %i.aax to i32
  %i.aaz = mul nuw nsw i32 %i.aay, %i.nh
  %7 = zext nneg i32 %.4287354.i to i64
  %i.aba = getelementptr inbounds nuw i8, ptr %.4302357.i, i64 %7
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 3
  %i.abc = load i8, ptr %i.abb, align 1, !tbaa !17
  %i.abd = zext i8 %i.abc to i32
  %i.abe = mul nuw nsw i32 %i.aaz, %i.abd
  %i.abf = lshr i32 %i.abe, 16
  %i.abg = trunc nuw i32 %i.abf to i8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bp, %bb.bn
  %.sink454.i = phi i8 [ %i.aao, %bb.bn ], [ %i.aav, %bb.bp ], [ %i.abg, %bb.br ], [ %i.aax, %bb.bq ]
  %i.abh = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %.0280.i, i16 noundef zeroext %i.aak, i8 noundef zeroext %.sink454.i) #4
  store i16 %i.abh, ptr %i.aal, align 2, !tbaa !12
  %indvars.iv.next393.i.a = add nuw nsw i64 %indvars.iv392.i.a, 1 ; 2 uses
  %8 = add nuw nsw i32 %.4287354.i, 4
  %exitcond.not.i31 = icmp eq i64 %indvars.iv.next393.i.a, %wide.trip.count.i28
  br i1 %exitcond.not.i31, label %._crit_edge.i32, label %bb.bh, !llvm.loop !78

._crit_edge.i32:                                  ; preds = %bb.bs
  %i.abi = getelementptr inbounds nuw i8, ptr %.4307356.i, i64 %i.nk
  %i.abj = getelementptr inbounds i8, ptr %.4302357.i, i64 %i.nl
  %i.abk = getelementptr inbounds i8, ptr %.2295358.i, i64 %i.nm
  %.3296.i = select i1 %i.wc, ptr null, ptr %i.abk
  %i.abl = add nuw nsw i32 %.4359.i, 1            ; 2 uses
  %exitcond397.not.i = icmp eq i32 %i.abl, %i.mq
  br i1 %exitcond397.not.i, label %rgb565_image_blend.exit, label %.preheader348.i, !llvm.loop !79

bb.bt:                                            ; preds = %bb.a
  %i.abm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.abn = load i32, ptr %i.abm, align 8, !tbaa !19 ; 10 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.abp = load i32, ptr %i.abo, align 4, !tbaa !20 ; 10 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.abr = load i8, ptr %i.abq, align 8, !tbaa !21 ; 6 uses
  %i.abs = load ptr, ptr %0, align 8, !tbaa !22   ; 5 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.abu = load i32, ptr %i.abt, align 8, !tbaa !23 ; 5 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !24 ; 5 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aby = load i32, ptr %i.abx, align 8, !tbaa !25 ; 5 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !26 ; 4 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.acc = load i32, ptr %i.acb, align 8, !tbaa !27 ; 3 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.ace = load i32, ptr %i.acd, align 4, !tbaa !28
  %i.acf = icmp eq i32 %i.ace, 0
  br i1 %i.acf, label %bb.bu, label %.preheader408.i

.preheader408.i:                                  ; preds = %bb.bt
  %.not361413.i = icmp sgt i32 %i.abp, 0
  br i1 %.not361413.i, label %.preheader406.lr.ph.i, label %rgb565_image_blend.exit

.preheader406.lr.ph.i:                            ; preds = %.preheader408.i
  %.not360410.i = icmp sgt i32 %i.abn, 0
  %i.acg = zext i8 %i.abr to i32                  ; 2 uses
  %i.ach = icmp ugt i8 %i.abr, -4                 ; 2 uses
  %i.aci = icmp ult i8 %i.abr, -3
  %i.acj = zext i32 %i.abu to i64
  %i.ack = sext i32 %i.aby to i64
  %i.acl = sext i32 %i.acc to i64
  br i1 %.not360410.i, label %.preheader406.preheader.i, label %rgb565_image_blend.exit

.preheader406.preheader.i:                        ; preds = %.preheader406.lr.ph.i
  %wide.trip.count.i41 = zext nneg i32 %i.abn to i64
  br label %.preheader406.i

bb.bu:                                            ; preds = %bb.bt
  %i.acm = icmp eq ptr %i.aca, null               ; 3 uses
  %i.acn = zext i8 %i.abr to i32                  ; 2 uses
  %i.aco = icmp ugt i8 %i.abr, -4                 ; 2 uses
  %or.cond.i49 = select i1 %i.acm, i1 %i.aco, i1 false
  br i1 %or.cond.i49, label %.preheader396.i, label %bb.by

.preheader396.i:                                  ; preds = %bb.bu
  %i.acp = icmp sgt i32 %i.abp, 0
  br i1 %i.acp, label %.preheader.lr.ph.i56, label %rgb565_image_blend.exit

.preheader.lr.ph.i56:                             ; preds = %.preheader396.i
  %i.acq = icmp sgt i32 %i.abn, 0
  %i.acr = zext i32 %i.abu to i64
  %i.acs = sext i32 %i.aby to i64
  br i1 %i.acq, label %.preheader.preheader.i57, label %rgb565_image_blend.exit

.preheader.preheader.i57:                         ; preds = %.preheader.lr.ph.i56
  %wide.trip.count493.i = zext nneg i32 %i.abn to i64
  br label %.preheader.i58

.preheader.i58:                                   ; preds = %._crit_edge440.i, %.preheader.preheader.i57
  %.0314443.i = phi i32 [ %i.aes, %._crit_edge440.i ], [ 0, %.preheader.preheader.i57 ]
  %.0331442.i = phi ptr [ %i.aer, %._crit_edge440.i ], [ %i.abw, %.preheader.preheader.i57 ] ; 2 uses
  %.0336441.i = phi ptr [ %i.aeq, %._crit_edge440.i ], [ %i.abs, %.preheader.preheader.i57 ] ; 2 uses
  br label %bb.bv

bb.bv:                                            ; preds = %lv_color_24_16_mix_premult.exit.i, %.preheader.i58
  %indvars.iv488.i = phi i64 [ 0, %.preheader.i58 ], [ %indvars.iv.next489.i, %lv_color_24_16_mix_premult.exit.i ] ; 2 uses
  %indvars.iv486.i = phi i64 [ 0, %.preheader.i58 ], [ %indvars.iv.next487.i, %lv_color_24_16_mix_premult.exit.i ] ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %.0331442.i, i64 %indvars.iv486.i ; 6 uses
  %i.acu = getelementptr inbounds nuw [2 x i8], ptr %.0336441.i, i64 %indvars.iv488.i ; 2 uses
  %i.acv = load i16, ptr %i.acu, align 2, !tbaa !12 ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.act, i64 3
  %i.acx = load i8, ptr %i.acw, align 1, !tbaa !17 ; 2 uses
  switch i8 %i.acx, label %bb.bx [
    i8 0, label %lv_color_24_16_mix_premult.exit.i
    i8 -1, label %bb.bw
  ]

bb.bw:                                            ; preds = %bb.bv
  %i.acy = getelementptr inbounds nuw i8, ptr %i.act, i64 1
  %i.acz = load <2 x i8>, ptr %i.acy, align 1, !tbaa !17
  %i.ada = and <2 x i8> %i.acz, <i8 -4, i8 -8>
  %i.adb = zext <2 x i8> %i.ada to <2 x i16>
  %i.adc = shl nuw <2 x i16> %i.adb, <i16 3, i16 8> ; 2 uses
  %shift723 = shufflevector <2 x i16> %i.adc, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop724 = or disjoint <2 x i16> %i.adc, %shift723
  %i.add = extractelement <2 x i16> %foldExtExtBinop724, i64 0
  %i.ade = load i8, ptr %i.act, align 1, !tbaa !17
  %i.adf = lshr i8 %i.ade, 3
  %i.adg = zext nneg i8 %i.adf to i16
  %i.adh = or disjoint i16 %i.add, %i.adg
  br label %lv_color_24_16_mix_premult.exit.i

bb.bx:                                            ; preds = %bb.bv
  %i.adi = xor i8 %i.acx, -1
  %i.adj = getelementptr inbounds nuw i8, ptr %i.act, i64 2
  %i.adk = load i8, ptr %i.adj, align 1, !tbaa !17
  %i.adl = lshr i8 %i.adk, 3
  %i.adm = zext i16 %i.acv to i32                 ; 3 uses
  %i.adn = lshr i32 %i.adm, 11
  %i.ado = zext i8 %i.adi to i32                  ; 3 uses
  %i.adp = mul nuw nsw i32 %i.adn, %i.ado
  %i.adq = lshr i32 %i.adp, 8
  %i.adr = trunc nuw nsw i32 %i.adq to i8
  %i.ads = add nuw nsw i8 %i.adl, %i.adr
  %i.adt = getelementptr inbounds nuw i8, ptr %i.act, i64 1
  %i.adu = load i8, ptr %i.adt, align 1, !tbaa !17
  %i.adv = lshr i8 %i.adu, 2
  %i.adw = lshr i32 %i.adm, 5
  %i.adx = and i32 %i.adw, 63
  %i.ady = mul nuw nsw i32 %i.adx, %i.ado
  %i.adz = lshr i32 %i.ady, 8
  %i.aea = trunc nuw nsw i32 %i.adz to i8
  %i.aeb = add nuw nsw i8 %i.adv, %i.aea
  %i.aec = load i8, ptr %i.act, align 1, !tbaa !17
  %i.aed = lshr i8 %i.aec, 3
  %i.aee = and i32 %i.adm, 31
  %i.aef = mul nuw nsw i32 %i.aee, %i.ado
  %i.aeg = lshr i32 %i.aef, 8
  %i.aeh = trunc nuw nsw i32 %i.aeg to i8
  %i.aei = add nuw nsw i8 %i.aed, %i.aeh
  %i.aej = zext nneg i8 %i.ads to i16
  %i.aek = shl i16 %i.aej, 11
  %i.ael = zext nneg i8 %i.aeb to i16
  %i.aem = shl nuw nsw i16 %i.ael, 5
  %i.aen = add i16 %i.aem, %i.aek
  %i.aeo = zext nneg i8 %i.aei to i16
  %i.aep = add i16 %i.aen, %i.aeo
  br label %lv_color_24_16_mix_premult.exit.i

lv_color_24_16_mix_premult.exit.i:                ; preds = %bb.bx, %bb.bw, %bb.bv
  %.0.i.i59 = phi i16 [ %i.aep, %bb.bx ], [ %i.adh, %bb.bw ], [ %i.acv, %bb.bv ]
  store i16 %.0.i.i59, ptr %i.acu, align 2, !tbaa !12
  %indvars.iv.next489.i = add nuw nsw i64 %indvars.iv488.i, 1 ; 2 uses
  %indvars.iv.next487.i = add nuw nsw i64 %indvars.iv486.i, 4
  %exitcond494.not.i = icmp eq i64 %indvars.iv.next489.i, %wide.trip.count493.i
  br i1 %exitcond494.not.i, label %._crit_edge440.i, label %bb.bv, !llvm.loop !80

._crit_edge440.i:                                 ; preds = %lv_color_24_16_mix_premult.exit.i
  %i.aeq = getelementptr inbounds nuw i8, ptr %.0336441.i, i64 %i.acr
  %i.aer = getelementptr inbounds i8, ptr %.0331442.i, i64 %i.acs
  %i.aes = add nuw nsw i32 %.0314443.i, 1         ; 2 uses
  %exitcond495.not.i = icmp eq i32 %i.aes, %i.abp
  br i1 %exitcond495.not.i, label %rgb565_image_blend.exit, label %.preheader.i58, !llvm.loop !81

bb.by:                                            ; preds = %bb.bu
  %i.aet = icmp ult i8 %i.abr, -3                 ; 2 uses
  %or.cond6.i50 = select i1 %i.acm, i1 %i.aet, i1 false
  br i1 %or.cond6.i50, label %.preheader398.i, label %bb.cd

.preheader398.i:                                  ; preds = %bb.by
  %i.aeu = icmp sgt i32 %i.abp, 0
  br i1 %i.aeu, label %.preheader397.lr.ph.i, label %rgb565_image_blend.exit

.preheader397.lr.ph.i:                            ; preds = %.preheader398.i
  %i.aev = icmp sgt i32 %i.abn, 0
  %i.aew = zext i32 %i.abu to i64
  %i.aex = sext i32 %i.aby to i64
  br i1 %i.aev, label %.preheader397.preheader.i, label %rgb565_image_blend.exit

.preheader397.preheader.i:                        ; preds = %.preheader397.lr.ph.i
  %wide.trip.count483.i = zext nneg i32 %i.abn to i64
  br label %.preheader397.i

.preheader397.i:                                  ; preds = %._crit_edge434.i, %.preheader397.preheader.i
  %.1315437.i = phi i32 [ %i.agr, %._crit_edge434.i ], [ 0, %.preheader397.preheader.i ]
  %.1332436.i = phi ptr [ %i.agq, %._crit_edge434.i ], [ %i.abw, %.preheader397.preheader.i ] ; 2 uses
  %.1337435.i = phi ptr [ %i.agp, %._crit_edge434.i ], [ %i.abs, %.preheader397.preheader.i ] ; 2 uses
  br label %bb.bz

bb.bz:                                            ; preds = %bb.cc, %.preheader397.i
  %indvars.iv478.i = phi i64 [ 0, %.preheader397.i ], [ %indvars.iv.next479.i, %bb.cc ] ; 2 uses
  %indvars.iv476.i = phi i64 [ 0, %.preheader397.i ], [ %indvars.iv.next477.i, %bb.cc ] ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %.1332436.i, i64 %indvars.iv476.i ; 4 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 3
  %i.afa = load i8, ptr %i.aez, align 1, !tbaa !17 ; 3 uses
  %.not364.i = icmp eq i8 %i.afa, 0
  br i1 %.not364.i, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.afb = getelementptr inbounds nuw [2 x i8], ptr %.1337435.i, i64 %indvars.iv478.i ; 2 uses
  %i.afc = load i16, ptr %i.afb, align 2, !tbaa !12 ; 4 uses
  %i.afd = zext i8 %i.afa to i32
  %i.afe = mul nuw nsw i32 %i.afd, %i.acn
  %i.aff = lshr i32 %i.afe, 8                     ; 2 uses
end_hunk_0
begin_hunk_1_@lv_draw_sw_blend_image_to_rgb565:bb.a

bb.cf:                                            ; preds = %bb.ce
  %i.aha = zext i8 %i.agz to i16
  %i.ahb = udiv i16 -256, %i.aha                  ; 3 uses
  %i.ahc = load i8, ptr %i.agx, align 1, !tbaa !17
  %i.ahd = zext i8 %i.ahc to i16
  %i.ahe = mul i16 %i.ahb, %i.ahd                 ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.agx, i64 1
  %i.ahg = load i8, ptr %i.ahf, align 1, !tbaa !17
  %i.ahh = zext i8 %i.ahg to i16
  %i.ahi = mul i16 %i.ahb, %i.ahh                 ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.agx, i64 2
  %i.ahk = load i8, ptr %i.ahj, align 1, !tbaa !17
  %i.ahl = zext i8 %i.ahk to i16
  %i.ahm = mul i16 %i.ahb, %i.ahl                 ; 2 uses
  %i.ahn = getelementptr inbounds nuw [2 x i8], ptr %.2338428.i, i64 %indvars.iv468.i ; 2 uses
  %i.aho = load i16, ptr %i.ahn, align 2, !tbaa !12 ; 4 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %.0326430.i, i64 %indvars.iv468.i
  %i.ahq = load i8, ptr %i.ahp, align 1, !tbaa !17
  %i.ahr = tail call i8 @llvm.umulh.i8(i8 %i.agz, i8 %i.ahq) ; 3 uses
  switch i8 %i.ahr, label %bb.ch [
    i8 0, label %lv_color_24_16_mix.exit367.i
    i8 -1, label %bb.cg
  ]

bb.cg:                                            ; preds = %bb.cf
  %i.ahs = and i16 %i.ahm, -2048
  %i.aht = lshr i16 %i.ahi, 5
  %i.ahu = and i16 %i.aht, 2016
  %i.ahv = lshr i16 %i.ahe, 11
  %i.ahw = or disjoint i16 %i.ahs, %i.ahv
  %i.ahx = or disjoint i16 %i.ahw, %i.ahu
  br label %lv_color_24_16_mix.exit367.i

bb.ch:                                            ; preds = %bb.cf
  %i.ahy = zext i8 %i.ahr to i16                  ; 3 uses
  %i.ahz = xor i8 %i.ahr, -1
  %sum.shift390.i = lshr i16 %i.ahm, 11
  %i.aia = mul nuw nsw i16 %sum.shift390.i, %i.ahy
  %i.aib = lshr i16 %i.aho, 11
  %i.aic = zext i8 %i.ahz to i16                  ; 3 uses
  %i.aid = mul nuw nsw i16 %i.aib, %i.aic
  %i.aie = add nuw nsw i16 %i.aia, %i.aid
  %i.aif = shl i16 %i.aie, 3
  %i.aig = and i16 %i.aif, -2048
  %sum.shift391.i = lshr i16 %i.ahi, 10
  %i.aih = mul nuw nsw i16 %sum.shift391.i, %i.ahy
  %i.aii = lshr i16 %i.aho, 5
  %i.aij = and i16 %i.aii, 63
  %i.aik = mul nuw nsw i16 %i.aij, %i.aic
  %i.ail = add nuw nsw i16 %i.aih, %i.aik
  %i.aim = lshr i16 %i.ail, 3
  %i.ain = and i16 %i.aim, 2016
  %sum.shift392.i = lshr i16 %i.ahe, 11
  %i.aio = mul nuw nsw i16 %sum.shift392.i, %i.ahy
  %i.aip = and i16 %i.aho, 31
  %i.aiq = mul nuw nsw i16 %i.aip, %i.aic
  %i.air = add nuw nsw i16 %i.aio, %i.aiq
  %i.ais = lshr i16 %i.air, 8
  %i.ait = or disjoint i16 %i.aig, %i.ais
  %i.aiu = add i16 %i.ait, %i.ain
  br label %lv_color_24_16_mix.exit367.i

lv_color_24_16_mix.exit367.i:                     ; preds = %bb.ch, %bb.cg, %bb.cf
  %.0.i366.i = phi i16 [ %i.aiu, %bb.ch ], [ %i.ahx, %bb.cg ], [ %i.aho, %bb.cf ]
  store i16 %.0.i366.i, ptr %i.ahn, align 2, !tbaa !12
  br label %bb.ci

bb.ci:                                            ; preds = %lv_color_24_16_mix.exit367.i, %bb.ce
  %indvars.iv.next469.i = add nuw nsw i64 %indvars.iv468.i, 1 ; 2 uses
  %indvars.iv.next467.i = add nuw nsw i64 %indvars.iv466.i, 4
  %exitcond474.not.i = icmp eq i64 %indvars.iv.next469.i, %wide.trip.count473.i
  br i1 %exitcond474.not.i, label %._crit_edge427.i, label %bb.ce, !llvm.loop !84

._crit_edge427.i:                                 ; preds = %bb.ci
  %i.aiv = getelementptr inbounds nuw i8, ptr %.2338428.i, i64 %i.agu
  %i.aiw = getelementptr inbounds i8, ptr %.2333429.i, i64 %i.agv
  %i.aix = getelementptr inbounds i8, ptr %.0326430.i, i64 %i.agw
  %i.aiy = add nuw nsw i32 %.2431.i, 1            ; 2 uses
  %exitcond475.not.i = icmp eq i32 %i.aiy, %i.abp
  br i1 %exitcond475.not.i, label %rgb565_image_blend.exit, label %.preheader400.i, !llvm.loop !85

bb.cj:                                            ; preds = %bb.cd
  %or.cond12.i53 = select i1 %.not.i51, i1 %i.aet, i1 false
  %i.aiz = icmp sgt i32 %i.abp, 0
  %or.cond444.i = select i1 %or.cond12.i53, i1 %i.aiz, i1 false
  br i1 %or.cond444.i, label %.preheader403.lr.ph.i, label %rgb565_image_blend.exit

.preheader403.lr.ph.i:                            ; preds = %bb.cj
  %i.aja = icmp sgt i32 %i.abn, 0
  %i.ajb = zext i32 %i.abu to i64
  %i.ajc = sext i32 %i.aby to i64
  %i.ajd = sext i32 %i.acc to i64
  br i1 %i.aja, label %.preheader403.preheader.i, label %rgb565_image_blend.exit

.preheader403.preheader.i:                        ; preds = %.preheader403.lr.ph.i
  %wide.trip.count463.i = zext nneg i32 %i.abn to i64
  br label %.preheader403.i

.preheader403.i:                                  ; preds = %._crit_edge420.i, %.preheader403.preheader.i
  %.3424.i = phi i32 [ %i.alc, %._crit_edge420.i ], [ 0, %.preheader403.preheader.i ]
  %.1327423.i = phi ptr [ %i.alb, %._crit_edge420.i ], [ %i.aca, %.preheader403.preheader.i ] ; 2 uses
  %.3334422.i = phi ptr [ %i.ala, %._crit_edge420.i ], [ %i.abw, %.preheader403.preheader.i ] ; 2 uses
  %.3339421.i = phi ptr [ %i.akz, %._crit_edge420.i ], [ %i.abs, %.preheader403.preheader.i ] ; 2 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cn, %.preheader403.i
  %indvars.iv458.i = phi i64 [ 0, %.preheader403.i ], [ %indvars.iv.next459.i, %bb.cn ] ; 3 uses
  %indvars.iv456.i = phi i64 [ 0, %.preheader403.i ], [ %indvars.iv.next457.i, %bb.cn ] ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %.3334422.i, i64 %indvars.iv456.i ; 4 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aje, i64 3
  %i.ajg = load i8, ptr %i.ajf, align 1, !tbaa !17 ; 3 uses
  %.not362.i = icmp eq i8 %i.ajg, 0
  br i1 %.not362.i, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ajh = getelementptr inbounds nuw [2 x i8], ptr %.3339421.i, i64 %indvars.iv458.i ; 2 uses
  %i.aji = load i16, ptr %i.ajh, align 2, !tbaa !12 ; 4 uses
  %i.ajj = zext i8 %i.ajg to i32
  %i.ajk = getelementptr inbounds nuw i8, ptr %.1327423.i, i64 %indvars.iv458.i
  %i.ajl = load i8, ptr %i.ajk, align 1, !tbaa !17
  %i.ajm = zext i8 %i.ajl to i32
  %i.ajn = mul nuw nsw i32 %i.ajj, %i.acn
  %i.ajo = mul nuw nsw i32 %i.ajn, %i.ajm
  %i.ajp = lshr i32 %i.ajo, 16                    ; 2 uses
  %cond.i54 = icmp eq i32 %i.ajp, 0
  br i1 %cond.i54, label %lv_color_24_16_mix.exit369.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ajq = trunc nuw nsw i32 %i.ajp to i16        ; 4 uses
  %i.ajr = zext i8 %i.ajg to i16
  %i.ajs = udiv i16 -256, %i.ajr                  ; 3 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.aje, i64 2
  %i.aju = load i8, ptr %i.ajt, align 1, !tbaa !17
  %i.ajv = zext i8 %i.aju to i16
  %i.ajw = mul i16 %i.ajs, %i.ajv
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.aje, i64 1
  %i.ajy = load i8, ptr %i.ajx, align 1, !tbaa !17
  %i.ajz = zext i8 %i.ajy to i16
  %i.aka = mul i16 %i.ajs, %i.ajz
  %i.akb = load i8, ptr %i.aje, align 1, !tbaa !17
  %i.akc = zext i8 %i.akb to i16
  %i.akd = mul i16 %i.ajs, %i.akc
  %i.ake = xor i16 %i.ajq, 255                    ; 3 uses
  %sum.shift.i = lshr i16 %i.ajw, 11
  %i.akf = mul nuw nsw i16 %sum.shift.i, %i.ajq
  %i.akg = lshr i16 %i.aji, 11
  %i.akh = mul nuw nsw i16 %i.ake, %i.akg
  %i.aki = add nuw nsw i16 %i.akf, %i.akh
  %i.akj = shl nuw i16 %i.aki, 3
  %i.akk = and i16 %i.akj, -2048
  %sum.shift388.i = lshr i16 %i.aka, 10
  %i.akl = mul nuw nsw i16 %sum.shift388.i, %i.ajq
  %i.akm = lshr i16 %i.aji, 5
  %i.akn = and i16 %i.akm, 63
  %i.ako = mul nuw nsw i16 %i.ake, %i.akn
  %i.akp = add nuw nsw i16 %i.akl, %i.ako
  %i.akq = lshr i16 %i.akp, 3
  %i.akr = and i16 %i.akq, 2016
  %sum.shift389.i = lshr i16 %i.akd, 11
  %i.aks = mul nuw nsw i16 %sum.shift389.i, %i.ajq
  %i.akt = and i16 %i.aji, 31
  %i.aku = mul nuw nsw i16 %i.ake, %i.akt
  %i.akv = add nuw nsw i16 %i.aks, %i.aku
  %i.akw = lshr i16 %i.akv, 8
  %i.akx = or disjoint i16 %i.akw, %i.akk
  %i.aky = add i16 %i.akx, %i.akr
  br label %lv_color_24_16_mix.exit369.i

lv_color_24_16_mix.exit369.i:                     ; preds = %bb.cm, %bb.cl
  %.0.i368.i = phi i16 [ %i.aky, %bb.cm ], [ %i.aji, %bb.cl ]
  store i16 %.0.i368.i, ptr %i.ajh, align 2, !tbaa !12
  br label %bb.cn

bb.cn:                                            ; preds = %lv_color_24_16_mix.exit369.i, %bb.ck
  %indvars.iv.next459.i = add nuw nsw i64 %indvars.iv458.i, 1 ; 2 uses
  %indvars.iv.next457.i = add nuw nsw i64 %indvars.iv456.i, 4
  %exitcond464.not.i = icmp eq i64 %indvars.iv.next459.i, %wide.trip.count463.i
  br i1 %exitcond464.not.i, label %._crit_edge420.i, label %bb.ck, !llvm.loop !86

._crit_edge420.i:                                 ; preds = %bb.cn
  %i.akz = getelementptr inbounds nuw i8, ptr %.3339421.i, i64 %i.ajb
  %i.ala = getelementptr inbounds i8, ptr %.3334422.i, i64 %i.ajc
  %i.alb = getelementptr inbounds i8, ptr %.1327423.i, i64 %i.ajd
  %i.alc = add nuw nsw i32 %.3424.i, 1            ; 2 uses
  %exitcond465.not.i = icmp eq i32 %i.alc, %i.abp
  br i1 %exitcond465.not.i, label %rgb565_image_blend.exit, label %.preheader403.i, !llvm.loop !87

.preheader406.i:                                  ; preds = %._crit_edge.i47, %.preheader406.preheader.i
  %.4417.i = phi i32 [ %i.aqm, %._crit_edge.i47 ], [ 0, %.preheader406.preheader.i ]
  %.2328416.i = phi ptr [ %.3329.i, %._crit_edge.i47 ], [ %i.aca, %.preheader406.preheader.i ] ; 3 uses
  %.4335415.i = phi ptr [ %i.aqk, %._crit_edge.i47 ], [ %i.abw, %.preheader406.preheader.i ] ; 8 uses
  %.4340414.i = phi ptr [ %i.aqj, %._crit_edge.i47 ], [ %i.abs, %.preheader406.preheader.i ] ; 6 uses
  %i.ald = icmp eq ptr %.2328416.i, null          ; 3 uses
  %or.cond15.i42 = select i1 %i.ald, i1 %i.ach, i1 false
  %or.cond18.i43 = select i1 %i.ald, i1 %i.aci, i1 false
  br label %bb.co

bb.co:                                            ; preds = %bb.cz, %.preheader406.i
  %indvars.iv450.i = phi i64 [ 0, %.preheader406.i ], [ %indvars.iv.next451.i, %bb.cz ] ; 7 uses
  %.4320412.i = phi i32 [ 0, %.preheader406.i ], [ %16, %bb.cz ] ; 8 uses
  %i.ale = load i32, ptr %i.acd, align 4, !tbaa !28
  switch i32 %i.ale, label %rgb565_image_blend.exit [
    i32 1, label %bb.cp
    i32 2, label %bb.cq
    i32 3, label %bb.cr
    i32 4, label %bb.cs
  ]

bb.cp:                                            ; preds = %bb.co
  %i.alf = getelementptr inbounds nuw [2 x i8], ptr %.4340414.i, i64 %indvars.iv450.i
  %i.alg = load i16, ptr %i.alf, align 2          ; 4 uses
  %i.alh = lshr i16 %i.alg, 11
  %9 = zext nneg i32 %.4320412.i to i64
  %i.ali = getelementptr inbounds nuw i8, ptr %.4335415.i, i64 %9 ; 3 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 2
  %i.alk = load i8, ptr %i.alj, align 1, !tbaa !17
  %i.all = lshr i8 %i.alk, 3
  %i.alm = zext nneg i8 %i.all to i16
  %i.aln = add nuw nsw i16 %i.alh, %i.alm
  %i.alo = tail call i16 @llvm.umin.i16(i16 %i.aln, i16 31)
  %spec.select.i48 = shl nuw i16 %i.alo, 11
  %i.alp = lshr i16 %i.alg, 5
  %i.alq = and i16 %i.alp, 63
  %i.alr = getelementptr inbounds nuw i8, ptr %i.ali, i64 1
  %i.als = load i8, ptr %i.alr, align 1, !tbaa !17
  %i.alt = lshr i8 %i.als, 2
  %i.alu = zext nneg i8 %i.alt to i16
  %i.alv = add nuw nsw i16 %i.alq, %i.alu
  %i.alw = tail call i16 @llvm.umin.i16(i16 %i.alv, i16 63)
  %i.alx = shl nuw nsw i16 %i.alw, 5
  %i.aly = or disjoint i16 %i.alx, %spec.select.i48
  %i.alz = and i16 %i.alg, 31
  %i.ama = load i8, ptr %i.ali, align 1, !tbaa !17
  %i.amb = lshr i8 %i.ama, 3
  %i.amc = zext nneg i8 %i.amb to i16
  %i.amd = add nuw nsw i16 %i.alz, %i.amc
  %i.ame = tail call i16 @llvm.umin.i16(i16 %i.amd, i16 31)
  %i.amf = or disjoint i16 %i.aly, %i.ame
  br label %bb.ct

bb.cq:                                            ; preds = %bb.co
  %i.amg = getelementptr inbounds nuw [2 x i8], ptr %.4340414.i, i64 %indvars.iv450.i
  %i.amh = load i16, ptr %i.amg, align 2          ; 4 uses
  %i.ami = lshr i16 %i.amh, 11
  %10 = zext nneg i32 %.4320412.i to i64
  %i.amj = getelementptr inbounds nuw i8, ptr %.4335415.i, i64 %10 ; 3 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 2
  %i.aml = load i8, ptr %i.amk, align 1, !tbaa !17
  %i.amm = lshr i8 %i.aml, 3
  %i.amn = zext nneg i8 %i.amm to i16
  %i.amo = sub nsw i16 %i.ami, %i.amn
  %i.amp = tail call i16 @llvm.smax.i16(i16 %i.amo, i16 0)
  %i.amq = shl nuw i16 %i.amp, 11
  %i.amr = lshr i16 %i.amh, 5
  %i.ams = and i16 %i.amr, 63
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amj, i64 1
  %i.amu = load i8, ptr %i.amt, align 1, !tbaa !17
  %i.amv = lshr i8 %i.amu, 2
  %i.amw = zext nneg i8 %i.amv to i16
  %i.amx = sub nsw i16 %i.ams, %i.amw
  %i.amy = tail call i16 @llvm.smax.i16(i16 %i.amx, i16 0)
  %i.amz = shl nuw nsw i16 %i.amy, 5
  %i.ana = add nuw i16 %i.amz, %i.amq
  %i.anb = and i16 %i.amh, 31
  %i.anc = load i8, ptr %i.amj, align 1, !tbaa !17
  %i.and = lshr i8 %i.anc, 3
  %i.ane = zext nneg i8 %i.and to i16
  %i.anf = sub nsw i16 %i.anb, %i.ane
  %i.ang = tail call i16 @llvm.smax.i16(i16 %i.anf, i16 0)
  %i.anh = add nuw i16 %i.ana, %i.ang
  br label %bb.ct

bb.cr:                                            ; preds = %bb.co
  %i.ani = getelementptr inbounds nuw [2 x i8], ptr %.4340414.i, i64 %indvars.iv450.i
  %i.anj = load i16, ptr %i.ani, align 2          ; 3 uses
  %11 = zext nneg i32 %.4320412.i to i64
  %i.ank = getelementptr inbounds nuw i8, ptr %.4335415.i, i64 %11 ; 3 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 2
  %i.anm = load i8, ptr %i.anl, align 1, !tbaa !17
  %i.ann = lshr i8 %i.anm, 3
  %i.ano = zext nneg i8 %i.ann to i16
  %i.anp = lshr i16 %i.anj, 5                     ; 2 uses
  %i.anq = and i16 %i.anp, 1984
  %i.anr = mul nuw i16 %i.anq, %i.ano
  %i.ans = and i16 %i.anr, -2048
  %i.ant = and i16 %i.anp, 63
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ank, i64 1
  %i.anv = load i8, ptr %i.anu, align 1, !tbaa !17
  %i.anw = lshr i8 %i.anv, 2
  %i.anx = zext nneg i8 %i.anw to i16
  %i.any = mul nuw nsw i16 %i.ant, %i.anx
  %i.anz = lshr i16 %i.any, 1
  %i.aoa = and i16 %i.anz, 2016
  %i.aob = or disjoint i16 %i.aoa, %i.ans
  %i.aoc = and i16 %i.anj, 31
  %i.aod = load i8, ptr %i.ank, align 1, !tbaa !17
  %i.aoe = lshr i8 %i.aod, 3
  %i.aof = zext nneg i8 %i.aoe to i16
  %i.aog = mul nuw nsw i16 %i.aoc, %i.aof
  %i.aoh = lshr i16 %i.aog, 5
  %i.aoi = or disjoint i16 %i.aob, %i.aoh
  br label %bb.ct

bb.cs:                                            ; preds = %bb.co
  %i.aoj = getelementptr inbounds nuw [2 x i8], ptr %.4340414.i, i64 %indvars.iv450.i
  %i.aok = load i16, ptr %i.aoj, align 2          ; 4 uses
  %i.aol = lshr i16 %i.aok, 11
  %12 = zext nneg i32 %.4320412.i to i64
  %i.aom = getelementptr inbounds nuw i8, ptr %.4335415.i, i64 %12 ; 3 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 2
  %i.aoo = load i8, ptr %i.aon, align 1, !tbaa !17
  %i.aop = lshr i8 %i.aoo, 3
  %i.aoq = zext nneg i8 %i.aop to i16
  %i.aor = sub nsw i16 %i.aol, %i.aoq
  %i.aos = tail call i16 @llvm.abs.i16(i16 %i.aor, i1 true)
  %i.aot = shl nuw i16 %i.aos, 11
  %i.aou = lshr i16 %i.aok, 5
  %i.aov = and i16 %i.aou, 63
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aom, i64 1
  %i.aox = load i8, ptr %i.aow, align 1, !tbaa !17
  %i.aoy = lshr i8 %i.aox, 2
  %i.aoz = zext nneg i8 %i.aoy to i16
  %i.apa = sub nsw i16 %i.aov, %i.aoz
  %i.apb = tail call i16 @llvm.abs.i16(i16 %i.apa, i1 true)
  %i.apc = shl nuw nsw i16 %i.apb, 5
  %i.apd = add nuw i16 %i.apc, %i.aot
  %i.ape = and i16 %i.aok, 31
  %i.apf = load i8, ptr %i.aom, align 1, !tbaa !17
  %i.apg = lshr i8 %i.apf, 3
  %i.aph = zext nneg i8 %i.apg to i16
  %i.api = sub nsw i16 %i.ape, %i.aph
  %i.apj = tail call i16 @llvm.abs.i16(i16 %i.api, i1 true)
  %i.apk = add nuw i16 %i.apd, %i.apj
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %bb.cq, %bb.cp
  %i.apl = phi i16 [ %i.alg, %bb.cp ], [ %i.amh, %bb.cq ], [ %i.anj, %bb.cr ], [ %i.aok, %bb.cs ]
  %.0313.i = phi i16 [ %i.amf, %bb.cp ], [ %i.anh, %bb.cq ], [ %i.aoi, %bb.cr ], [ %i.apk, %bb.cs ]
  %i.apm = getelementptr inbounds nuw [2 x i8], ptr %.4340414.i, i64 %indvars.iv450.i
  br i1 %or.cond15.i42, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %13 = zext nneg i32 %.4320412.i to i64
  %i.apn = getelementptr inbounds nuw i8, ptr %.4335415.i, i64 %13
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apn, i64 3
  %i.app = load i8, ptr %i.apo, align 1, !tbaa !17
  br label %bb.cz

bb.cv:                                            ; preds = %bb.ct
  br i1 %or.cond18.i43, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %14 = zext nneg i32 %.4320412.i to i64
  %i.apq = getelementptr inbounds nuw i8, ptr %.4335415.i, i64 %14
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apq, i64 3
  %i.aps = load i8, ptr %i.apr, align 1, !tbaa !17
  %i.apt = zext i8 %i.aps to i32
  %i.apu = mul nuw nsw i32 %i.apt, %i.acg
  %i.apv = lshr i32 %i.apu, 8
  %i.apw = trunc nuw i32 %i.apv to i8
  br label %bb.cz

bb.cx:                                            ; preds = %bb.cv
  %i.apx = getelementptr inbounds nuw i8, ptr %.2328416.i, i64 %indvars.iv450.i
  %i.apy = load i8, ptr %i.apx, align 1, !tbaa !17 ; 2 uses
  br i1 %i.ach, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.apz = zext i8 %i.apy to i32
  %i.aqa = mul nuw nsw i32 %i.apz, %i.acg
  %15 = zext nneg i32 %.4320412.i to i64
  %i.aqb = getelementptr inbounds nuw i8, ptr %.4335415.i, i64 %15
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aqb, i64 3
  %i.aqd = load i8, ptr %i.aqc, align 1, !tbaa !17
  %i.aqe = zext i8 %i.aqd to i32
  %i.aqf = mul nuw nsw i32 %i.aqa, %i.aqe
  %i.aqg = lshr i32 %i.aqf, 16
  %i.aqh = trunc nuw i32 %i.aqg to i8
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %bb.cw, %bb.cu
  %.sink515.i = phi i8 [ %i.app, %bb.cu ], [ %i.apw, %bb.cw ], [ %i.aqh, %bb.cy ], [ %i.apy, %bb.cx ]
  %i.aqi = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %.0313.i, i16 noundef zeroext %i.apl, i8 noundef zeroext %.sink515.i) #4
  store i16 %i.aqi, ptr %i.apm, align 2, !tbaa !12
  %indvars.iv.next451.i = add nuw nsw i64 %indvars.iv450.i, 1 ; 2 uses
  %16 = add nuw nsw i32 %.4320412.i, 4
  %exitcond.not.i46 = icmp eq i64 %indvars.iv.next451.i, %wide.trip.count.i41
  br i1 %exitcond.not.i46, label %._crit_edge.i47, label %bb.co, !llvm.loop !88

._crit_edge.i47:                                  ; preds = %bb.cz
  %i.aqj = getelementptr inbounds nuw i8, ptr %.4340414.i, i64 %i.acj
  %i.aqk = getelementptr inbounds i8, ptr %.4335415.i, i64 %i.ack
  %i.aql = getelementptr inbounds i8, ptr %.2328416.i, i64 %i.acl
  %.3329.i = select i1 %i.ald, ptr null, ptr %i.aql
  %i.aqm = add nuw nsw i32 %.4417.i, 1            ; 2 uses
  %exitcond455.not.i = icmp eq i32 %i.aqm, %i.abp
  br i1 %exitcond455.not.i, label %rgb565_image_blend.exit, label %.preheader406.i, !llvm.loop !89

bb.da:                                            ; preds = %bb.a
  %i.aqn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aqo = load i32, ptr %i.aqn, align 8, !tbaa !19 ; 15 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aqq = load i32, ptr %i.aqp, align 4, !tbaa !20 ; 14 uses
  %i.aqr = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aqs = load i8, ptr %i.aqr, align 8, !tbaa !21 ; 11 uses
  %i.aqt = load ptr, ptr %0, align 8, !tbaa !22   ; 15 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aqv = load i32, ptr %i.aqu, align 8, !tbaa !23 ; 5 uses
  %i.aqw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aqx = load ptr, ptr %i.aqw, align 8, !tbaa !24 ; 13 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aqz = load i32, ptr %i.aqy, align 8, !tbaa !25 ; 9 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.arb = load ptr, ptr %i.ara, align 8, !tbaa !26 ; 8 uses
  %i.arc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ard = load i32, ptr %i.arc, align 8, !tbaa !27 ; 5 uses
  %i.are = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.arf = load i32, ptr %i.are, align 4, !tbaa !28
  %i.arg = icmp eq i32 %i.arf, 0
  br i1 %i.arg, label %bb.db, label %.preheader315.i

.preheader315.i:                                  ; preds = %bb.da
  %.not293320.i = icmp sgt i32 %i.aqq, 0
  br i1 %.not293320.i, label %.preheader313.lr.ph.i, label %rgb565_image_blend.exit

.preheader313.lr.ph.i:                            ; preds = %.preheader315.i
  %.not292317.i = icmp sgt i32 %i.aqo, 0
  %i.arh = icmp ugt i8 %i.aqs, -4                 ; 2 uses
  %i.ari = icmp ult i8 %i.aqs, -3
  %i.arj = zext i32 %i.aqv to i64
  %i.ark = sext i32 %i.aqz to i64
  %i.arl = sext i32 %i.ard to i64
  br i1 %.not292317.i, label %.preheader313.preheader.i, label %rgb565_image_blend.exit

.preheader313.preheader.i:                        ; preds = %.preheader313.lr.ph.i
  %wide.trip.count.i60 = zext nneg i32 %i.aqo to i64
  br label %.preheader313.i

bb.db:                                            ; preds = %bb.da
  %i.arm = icmp eq ptr %i.arb, null               ; 3 uses
  %i.arn = icmp ugt i8 %i.aqs, -4                 ; 2 uses
  %or.cond.i68 = select i1 %i.arm, i1 %i.arn, i1 false
  br i1 %or.cond.i68, label %.preheader303.i, label %bb.dc

.preheader303.i:                                  ; preds = %bb.db
  %i.aro = icmp sgt i32 %i.aqq, 0
  br i1 %i.aro, label %.preheader.lr.ph.i76, label %rgb565_image_blend.exit

.preheader.lr.ph.i76:                             ; preds = %.preheader303.i
  %i.arp = icmp sgt i32 %i.aqo, 0
  %i.arq = zext i32 %i.aqv to i64                 ; 2 uses
  %i.arr = sext i32 %i.aqz to i64                 ; 2 uses
  br i1 %i.arp, label %.preheader.preheader.i77, label %rgb565_image_blend.exit

.preheader.preheader.i77:                         ; preds = %.preheader.lr.ph.i76
  %wide.trip.count421.i = zext nneg i32 %i.aqo to i64 ; 10 uses
  %i.ars = add nsw i32 %i.aqq, -1
  %i.art = zext i32 %i.ars to i64                 ; 2 uses
  %i.aru = mul nsw i64 %i.arr, %i.art
  %i.arv = getelementptr i8, ptr %i.aqx, i64 %i.aru
  %scevgep694.a = getelementptr i8, ptr %i.arv, i64 %wide.trip.count421.i
  %i.arw = mul nuw i64 %i.arq, %i.art
  %i.arx = shl nuw nsw i64 %wide.trip.count421.i, 1
  %i.ary = getelementptr i8, ptr %i.aqt, i64 %i.arw
  %scevgep695 = getelementptr i8, ptr %i.ary, i64 %i.arx
  %min.iters.check697 = icmp ult i32 %i.aqo, 4
  %bound0699 = icmp ult ptr %i.aqt, %scevgep694.a
  %bound1700 = icmp ult ptr %i.aqx, %scevgep695
  %found.conflict701 = and i1 %bound0699, %bound1700
  %stride.check702 = icmp slt i32 %i.aqz, 0
  %i.arz = or i1 %found.conflict701, %stride.check702
  %min.iters.check703 = icmp ult i32 %i.aqo, 16
  %i.asa = and i64 %wide.trip.count421.i, 12
  %n.vec705 = and i64 %wide.trip.count421.i, 2147483632 ; 4 uses
  %cmp.n712 = icmp eq i64 %n.vec705, %wide.trip.count421.i
  %min.epilog.iters.check = icmp eq i64 %i.asa, 0
  %n.vec713 = and i64 %wide.trip.count421.i, 2147483644 ; 3 uses
  %cmp.n717 = icmp eq i64 %n.vec713, %wide.trip.count421.i
  %xtraiter = and i64 %wide.trip.count421.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.asb = add nsw i64 %wide.trip.count421.i, -1
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge366.i, %.preheader.preheader.i77
  %.0245369.i = phi i32 [ %i.aus, %._crit_edge366.i ], [ 0, %.preheader.preheader.i77 ]
  %.0263368.i = phi ptr [ %i.aur, %._crit_edge366.i ], [ %i.aqx, %.preheader.preheader.i77 ] ; 6 uses
  %.0268367.i = phi ptr [ %i.auq, %._crit_edge366.i ], [ %i.aqt, %.preheader.preheader.i77 ] ; 6 uses
  %brmerge = select i1 %min.iters.check697, i1 true, i1 %i.arz
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check703, label %vec.epilog.ph, label %vector.body706

vector.body706:                                   ; preds = %vector.main.loop.iter.check, %vector.body706
  %index707 = phi i64 [ %index.next710, %vector.body706 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.asc = getelementptr inbounds nuw i8, ptr %.0263368.i, i64 %index707 ; 2 uses
  %i.asd = getelementptr inbounds nuw i8, ptr %i.asc, i64 8
  %wide.load708.a = load <8 x i8>, ptr %i.asc, align 1, !tbaa !17, !alias.scope !164
  %wide.load709 = load <8 x i8>, ptr %i.asd, align 1, !tbaa !17, !alias.scope !164
  %i.ase = zext <8 x i8> %wide.load708.a to <8 x i16> ; 3 uses
  %i.asf = zext <8 x i8> %wide.load709 to <8 x i16> ; 3 uses
  %i.asg = shl nuw <8 x i16> %i.ase, splat (i16 8)
  %i.ash = shl nuw <8 x i16> %i.asf, splat (i16 8)
  %i.asi = and <8 x i16> %i.asg, splat (i16 -2048)
  %i.asj = and <8 x i16> %i.ash, splat (i16 -2048)
  %i.ask = shl nuw nsw <8 x i16> %i.ase, splat (i16 3)
  %i.asl = shl nuw nsw <8 x i16> %i.asf, splat (i16 3)
  %i.asm = and <8 x i16> %i.ask, splat (i16 2016)
  %i.asn = and <8 x i16> %i.asl, splat (i16 2016)
  %i.aso = lshr <8 x i16> %i.ase, splat (i16 3)
  %i.asp = lshr <8 x i16> %i.asf, splat (i16 3)
  %i.asq = or disjoint <8 x i16> %i.asm, %i.aso
  %i.asr = or disjoint <8 x i16> %i.asn, %i.asp
  %i.ass = or disjoint <8 x i16> %i.asq, %i.asi
  %i.ast = or disjoint <8 x i16> %i.asr, %i.asj
  %i.asu = getelementptr inbounds nuw [2 x i8], ptr %.0268367.i, i64 %index707 ; 2 uses
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asu, i64 16
  store <8 x i16> %i.ass, ptr %i.asu, align 2, !tbaa !12, !alias.scope !165, !noalias !164
  store <8 x i16> %i.ast, ptr %i.asv, align 2, !tbaa !12, !alias.scope !165, !noalias !164
  %index.next710 = add nuw i64 %index707, 16      ; 2 uses
  %i.asw = icmp eq i64 %index.next710, %n.vec705
  br i1 %i.asw, label %middle.block711, label %vector.body706, !llvm.loop !93

middle.block711:                                  ; preds = %vector.body706
  br i1 %cmp.n712, label %._crit_edge366.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block711
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec705, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index714 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next716, %vec.epilog.vector.body ] ; 3 uses
  %i.asx = getelementptr inbounds nuw i8, ptr %.0263368.i, i64 %index714
  %wide.load715 = load <4 x i8>, ptr %i.asx, align 1, !tbaa !17, !alias.scope !164
  %i.asy = zext <4 x i8> %wide.load715 to <4 x i16> ; 3 uses
  %i.asz = shl nuw <4 x i16> %i.asy, splat (i16 8)
  %i.ata = and <4 x i16> %i.asz, splat (i16 -2048)
  %i.atb = shl nuw nsw <4 x i16> %i.asy, splat (i16 3)
  %i.atc = and <4 x i16> %i.atb, splat (i16 2016)
  %i.atd = lshr <4 x i16> %i.asy, splat (i16 3)
  %i.ate = or disjoint <4 x i16> %i.atc, %i.atd
  %i.atf = or disjoint <4 x i16> %i.ate, %i.ata
  %i.atg = getelementptr inbounds nuw [2 x i8], ptr %.0268367.i, i64 %index714
  store <4 x i16> %i.atf, ptr %i.atg, align 2, !tbaa !12, !alias.scope !165, !noalias !164
  %index.next716 = add nuw i64 %index714, 4       ; 2 uses
  %i.ath = icmp eq i64 %index.next716, %n.vec713
  br i1 %i.ath, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !94

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n717, label %._crit_edge366.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv416.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec713, %vec.epilog.middle.block ], [ %n.vec705, %vec.epilog.iter.check ] ; 5 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ati = getelementptr inbounds nuw i8, ptr %.0263368.i, i64 %indvars.iv416.i.ph
  %i.atj = load i8, ptr %i.ati, align 1, !tbaa !17
  %i.atk = zext i8 %i.atj to i16                  ; 3 uses
  %i.atl = shl nuw i16 %i.atk, 8
  %i.atm = and i16 %i.atl, -2048
  %i.atn = shl nuw nsw i16 %i.atk, 3
  %i.ato = and i16 %i.atn, 2016
  %i.atp = lshr i16 %i.atk, 3
  %i.atq = or disjoint i16 %i.ato, %i.atp
  %i.atr = or disjoint i16 %i.atq, %i.atm
  %i.ats = getelementptr inbounds nuw [2 x i8], ptr %.0268367.i, i64 %indvars.iv416.i.ph
  store i16 %i.atr, ptr %i.ats, align 2, !tbaa !12
  %indvars.iv.next417.i.prol = or disjoint i64 %indvars.iv416.i.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv416.i.unr = phi i64 [ %indvars.iv416.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next417.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.att = icmp eq i64 %indvars.iv416.i.ph, %i.asb
  br i1 %i.att, label %._crit_edge366.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv416.i = phi i64 [ %indvars.iv.next417.i.1, %vec.epilog.scalar.ph ], [ %indvars.iv416.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %.0263368.i, i64 %indvars.iv416.i
  %i.atv = load i8, ptr %i.atu, align 1, !tbaa !17
  %i.atw = zext i8 %i.atv to i16                  ; 3 uses
  %i.atx = shl nuw i16 %i.atw, 8
  %i.aty = and i16 %i.atx, -2048
end_hunk_1
begin_hunk_2_@lv_draw_sw_blend_image_to_rgb565:bb.a
  %i.cqv = getelementptr inbounds nuw i8, ptr %.3215255.i, i64 %i.cmr
  %i.cqw = getelementptr inbounds i8, ptr %.1209256.i, i64 %i.cms
  %i.cqx = add nuw nsw i32 %.3196257.i, 1         ; 2 uses
  %exitcond315.not.i = icmp eq i32 %i.cqx, %i.cbv
  br i1 %exitcond315.not.i, label %rgb565_image_blend.exit, label %.preheader239.i, !llvm.loop !160

.preheader242.i:                                  ; preds = %._crit_edge.i112, %.preheader242.preheader.i
  %.4251.i = phi ptr [ %i.ctx, %._crit_edge.i112 ], [ %i.cby, %.preheader242.preheader.i ] ; 6 uses
  %.4197250.i = phi i32 [ %i.cua, %._crit_edge.i112 ], [ 0, %.preheader242.preheader.i ]
  %.2210249.i = phi ptr [ %.3211.i, %._crit_edge.i112 ], [ %i.ccg, %.preheader242.preheader.i ] ; 3 uses
  %.4216248.i = phi ptr [ %i.cty, %._crit_edge.i112 ], [ %i.ccc, %.preheader242.preheader.i ] ; 2 uses
  %i.cqy = icmp eq ptr %.2210249.i, null          ; 3 uses
  %or.cond14.i = select i1 %i.cqy, i1 %i.cco, i1 false
  %or.cond17.i = select i1 %i.cqy, i1 %i.ccp, i1 false
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fm, %.preheader242.i
  %indvars.iv.i106 = phi i64 [ 0, %.preheader242.i ], [ %indvars.iv.next.i110, %bb.fm ] ; 7 uses
  %.4202247.i = phi i32 [ 0, %.preheader242.i ], [ %i.ctw, %bb.fm ] ; 3 uses
  %i.cqz = lshr i32 %.4202247.i, 3
  %i.cra = zext nneg i32 %i.cqz to i64
  %i.crb = getelementptr inbounds nuw i8, ptr %.4216248.i, i64 %i.cra
  %i.crc = load i8, ptr %i.crb, align 1, !tbaa !17
  %i.crd = zext i8 %i.crc to i32
  %i.cre = and i32 %.4202247.i, 4
  %i.crf = xor i32 %i.cre, 7
  %i.crg = lshr i32 %i.crd, %i.crf
  %i.crh = trunc nuw nsw i32 %i.crg to i8
  %i.cri = and i8 %i.crh, 1
  %narrow.i107 = sub nsw i8 0, %i.cri             ; 4 uses
  %i.crj = load i32, ptr %i.ccj, align 4, !tbaa !28
  switch i32 %i.crj, label %rgb565_image_blend.exit [
    i32 1, label %bb.fc
    i32 2, label %bb.fd
    i32 3, label %bb.fe
    i32 4, label %bb.ff
  ]

bb.fc:                                            ; preds = %bb.fb
  %i.crk = getelementptr inbounds nuw [2 x i8], ptr %.4251.i, i64 %indvars.iv.i106
  %i.crl = load i16, ptr %i.crk, align 2, !tbaa !12 ; 3 uses
  %i.crm = zext i16 %i.crl to i32
  %i.crn = zext i8 %narrow.i107 to i16            ; 3 uses
  %i.cro = shl nuw i16 %i.crn, 8
  %i.crp = and i16 %i.cro, -2048
  %i.crq = shl nuw nsw i16 %i.crn, 3
  %i.crr = and i16 %i.crq, 2016
  %i.crs = lshr i16 %i.crn, 3
  %i.crt = or disjoint i16 %i.crr, %i.crs
  %i.cru = or disjoint i16 %i.crt, %i.crp         ; 2 uses
  %i.crv = zext i16 %i.cru to i32
  %i.crw = add nuw nsw i32 %i.crm, %i.crv
  %i.crx = icmp samesign ult i32 %i.crw, 65535
  %i.cry = add i16 %i.crl, %i.cru
  %spec.select.i113 = select i1 %i.crx, i16 %i.cry, i16 -1
  br label %bb.fi

bb.fd:                                            ; preds = %bb.fb
  %i.crz = getelementptr inbounds nuw [2 x i8], ptr %.4251.i, i64 %indvars.iv.i106
  %i.csa = load i16, ptr %i.crz, align 2, !tbaa !12 ; 2 uses
  %i.csb = zext i8 %narrow.i107 to i16            ; 3 uses
  %i.csc = shl nuw i16 %i.csb, 8
  %i.csd = and i16 %i.csc, -2048
  %i.cse = shl nuw nsw i16 %i.csb, 3
  %i.csf = and i16 %i.cse, 2016
  %i.csg = lshr i16 %i.csb, 3
  %i.csh = or disjoint i16 %i.csf, %i.csg
  %i.csi = or disjoint i16 %i.csh, %i.csd
  %spec.select231.i = tail call i16 @llvm.usub.sat.i16(i16 %i.csa, i16 %i.csi)
  br label %bb.fi

bb.fe:                                            ; preds = %bb.fb
  %i.csj = getelementptr inbounds nuw [2 x i8], ptr %.4251.i, i64 %indvars.iv.i106
  %i.csk = load i16, ptr %i.csj, align 2, !tbaa !12 ; 4 uses
  %i.csl = lshr i16 %i.csk, 11
  %i.csm = zext i8 %narrow.i107 to i16            ; 2 uses
  %i.csn = shl nuw nsw i16 %i.csm, 3
  %i.cso = and i16 %i.csn, 2016
  %i.csp = lshr i16 %i.csm, 3                     ; 2 uses
  %i.csq = or disjoint i16 %i.cso, %i.csp         ; 2 uses
  %i.csr = shl i16 %i.csq, 8
  %i.css = and i16 %i.csr, -2048
  %i.cst = mul i16 %i.csl, %i.css
  %i.csu = lshr i16 %i.csk, 5
  %i.csv = and i16 %i.csu, 63
  %i.csw = lshr i16 %i.csq, 2
  %i.csx = and i16 %i.csw, 63
  %narrow221.i = mul nuw nsw i16 %i.csv, %i.csx
  %i.csy = lshr i16 %narrow221.i, 1
  %i.csz = and i16 %i.csy, 2016
  %i.cta = or disjoint i16 %i.csz, %i.cst
  %i.ctb = and i16 %i.csk, 31
  %narrow222.i = mul nuw nsw i16 %i.ctb, %i.csp
  %i.ctc = lshr i16 %narrow222.i, 5
  %i.ctd = or disjoint i16 %i.cta, %i.ctc
  br label %bb.fi

bb.ff:                                            ; preds = %bb.fb
  %i.cte = getelementptr inbounds nuw [2 x i8], ptr %.4251.i, i64 %indvars.iv.i106
  %i.ctf = load i16, ptr %i.cte, align 2, !tbaa !12 ; 5 uses
  %i.ctg = zext i8 %narrow.i107 to i16            ; 3 uses
  %i.cth = shl nuw i16 %i.ctg, 8
  %i.cti = and i16 %i.cth, -2048
  %i.ctj = shl nuw nsw i16 %i.ctg, 3
  %i.ctk = and i16 %i.ctj, 2016
  %i.ctl = lshr i16 %i.ctg, 3
  %i.ctm = or disjoint i16 %i.ctk, %i.ctl
  %i.ctn = or disjoint i16 %i.ctm, %i.cti         ; 3 uses
  %i.cto = icmp ugt i16 %i.ctf, %i.ctn
  br i1 %i.cto, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.ctp = sub nuw i16 %i.ctf, %i.ctn
  br label %bb.fi

bb.fh:                                            ; preds = %bb.ff
  %.neg.i = sub nuw i16 %i.ctn, %i.ctf
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg, %bb.fe, %bb.fd, %bb.fc
  %i.ctq = phi i16 [ %i.ctf, %bb.fg ], [ %i.csa, %bb.fd ], [ %i.csk, %bb.fe ], [ %i.ctf, %bb.fh ], [ %i.crl, %bb.fc ]
  %.0191.i = phi i16 [ %i.ctp, %bb.fg ], [ %spec.select231.i, %bb.fd ], [ %i.ctd, %bb.fe ], [ %.neg.i, %bb.fh ], [ %spec.select.i113, %bb.fc ] ; 2 uses
  %i.ctr = getelementptr inbounds nuw [2 x i8], ptr %.4251.i, i64 %indvars.iv.i106
  br i1 %or.cond14.i, label %bb.fm, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  br i1 %or.cond17.i, label %.sink.split.i108, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.cts = getelementptr inbounds nuw i8, ptr %.2210249.i, i64 %indvars.iv.i106
  %i.ctt = load i8, ptr %i.cts, align 1, !tbaa !17 ; 2 uses
  br i1 %i.cco, label %.sink.split.i108, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.ctu = tail call i8 @llvm.umulh.i8(i8 %i.ctt, i8 %i.cbx)
  br label %.sink.split.i108

.sink.split.i108:                                 ; preds = %bb.fl, %bb.fk, %bb.fj
  %.sink373.i = phi i8 [ %i.cbx, %bb.fj ], [ %i.ctu, %bb.fl ], [ %i.ctt, %bb.fk ]
  %i.ctv = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %.0191.i, i16 noundef zeroext %i.ctq, i8 noundef zeroext %.sink373.i) #4
  br label %bb.fm

bb.fm:                                            ; preds = %.sink.split.i108, %bb.fi
  %.sink.i109 = phi i16 [ %.0191.i, %bb.fi ], [ %i.ctv, %.sink.split.i108 ]
  store i16 %.sink.i109, ptr %i.ctr, align 2, !tbaa !12
  %indvars.iv.next.i110 = add nuw nsw i64 %indvars.iv.i106, 1 ; 2 uses
  %i.ctw = add nuw nsw i32 %.4202247.i, 4
  %exitcond.not.i111 = icmp eq i64 %indvars.iv.next.i110, %wide.trip.count.i105
  br i1 %exitcond.not.i111, label %._crit_edge.i112, label %bb.fb, !llvm.loop !161

._crit_edge.i112:                                 ; preds = %bb.fm
  %i.ctx = getelementptr inbounds nuw i8, ptr %.4251.i, i64 %i.ccq
  %i.cty = getelementptr inbounds nuw i8, ptr %.4216248.i, i64 %i.ccr
  %i.ctz = getelementptr inbounds i8, ptr %.2210249.i, i64 %i.ccs
  %.3211.i = select i1 %i.cqy, ptr null, ptr %i.ctz
  %i.cua = add nuw nsw i32 %.4197250.i, 1         ; 2 uses
  %exitcond307.not.i = icmp eq i32 %i.cua, %i.cbv
  br i1 %exitcond307.not.i, label %rgb565_image_blend.exit, label %.preheader242.i, !llvm.loop !162

rgb565_image_blend.exit.sink.split:               ; preds = %bb.a, %bb.ar
  %.sink = phi i8 [ 4, %bb.ar ], [ 3, %bb.a ]
  tail call fastcc void @rgb888_image_blend(ptr noundef nonnull %0, i8 noundef zeroext %.sink)
  br label %rgb565_image_blend.exit

rgb565_image_blend.exit:                          ; preds = %._crit_edge.i112, %bb.fb, %._crit_edge254.i, %._crit_edge261.i, %._crit_edge268.split.split.i, %._crit_edge294.i, %._crit_edge.i85, %bb.eg, %._crit_edge349.i, %._crit_edge356.i, %._crit_edge363.i, %._crit_edge369.i103, %._crit_edge.i66, %bb.dj, %._crit_edge327.i, %._crit_edge334.i, %._crit_edge341.split.split.i, %._crit_edge366.i, %._crit_edge.i47, %bb.co, %._crit_edge420.i, %._crit_edge427.i, %._crit_edge434.i, %._crit_edge440.i, %._crit_edge.i32, %bb.bh, %._crit_edge362.i, %._crit_edge369.i, %._crit_edge376.i, %._crit_edge382.i, %._crit_edge.i15, %bb.af, %._crit_edge298.i, %._crit_edge304.i, %._crit_edge310.i, %bb.z, %._crit_edge.i, %bb.k, %._crit_edge311.i, %._crit_edge317.i, %._crit_edge323.i, %bb.e, %rgb565_image_blend.exit.sink.split, %.preheader239.lr.ph.i, %bb.ey, %.preheader236.lr.ph.i, %.preheader237.i, %.preheader233.lr.ph.i, %.preheader234.i, %.preheader.lr.ph.i118, %.preheader232.i, %.preheader242.lr.ph.i, %.preheader244.i, %.preheader332.lr.ph.i, %bb.ed, %.preheader329.lr.ph.i, %.preheader330.i, %.preheader326.lr.ph.i, %.preheader327.i, %.preheader.lr.ph.i97, %.preheader325.i, %.preheader335.lr.ph.i, %.preheader337.i, %.preheader310.lr.ph.i, %bb.dg, %.preheader307.lr.ph.i, %.preheader308.i, %.preheader304.lr.ph.i, %.preheader305.i, %.preheader.lr.ph.i76, %.preheader303.i, %.preheader313.lr.ph.i, %.preheader315.i, %.preheader403.lr.ph.i, %bb.cj, %.preheader400.lr.ph.i, %.preheader401.i, %.preheader397.lr.ph.i, %.preheader398.i, %.preheader.lr.ph.i56, %.preheader396.i, %.preheader406.lr.ph.i, %.preheader408.i, %.preheader345.lr.ph.i, %bb.be, %.preheader342.lr.ph.i, %.preheader343.i, %.preheader339.lr.ph.i, %.preheader340.i, %.preheader.lr.ph.i38, %.preheader338.i, %.preheader348.lr.ph.i, %.preheader350.i, %.preheader281.lr.ph.i, %.preheader282.i, %.preheader284.lr.ph.i, %.preheader285.i, %.preheader.lr.ph.i22, %.preheader279.i, %bb.y, %.preheader287.lr.ph.i, %.preheader289.i, %.preheader293.lr.ph.i, %.preheader294.i, %.preheader296.lr.ph.i, %.preheader297.i, %.preheader.lr.ph.i, %.preheader291.i, %bb.d, %.preheader299.lr.ph.i, %.preheader301.i, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rgb888_image_blend(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext range(i8 3, 5) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i8, ptr %i.e, align 8, !tbaa !21    ; 10 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !22     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !23   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !25   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !27   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !28
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.b, label %.preheader326

.preheader326:                                    ; preds = %bb.a
  %.not307331 = icmp sgt i32 %i.d, 0
  br i1 %.not307331, label %.preheader324.lr.ph, label %.critedge

.preheader324.lr.ph:                              ; preds = %.preheader326
  %.not306328 = icmp sgt i32 %i.b, 0
  %i.u = icmp ugt i8 %i.f, -4
  %2 = zext nneg i8 %1 to i32
  %i.v = zext i32 %i.i to i64
  %i.w = sext i32 %i.m to i64
  %i.x = sext i32 %i.q to i64
  br i1 %.not306328, label %.preheader324.preheader, label %.critedge

.preheader324.preheader:                          ; preds = %.preheader324.lr.ph
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.preheader324

bb.b:                                             ; preds = %bb.a
  %i.y = icmp eq ptr %i.o, null                   ; 3 uses
  %i.z = icmp ugt i8 %i.f, -4                     ; 2 uses
  %or.cond = select i1 %i.y, i1 %i.z, i1 false
  br i1 %or.cond, label %.preheader319, label %bb.d

.preheader319:                                    ; preds = %bb.b
  %i.aa = icmp sgt i32 %i.d, 0
  br i1 %i.aa, label %.preheader318.lr.ph, label %.critedge

.preheader318.lr.ph:                              ; preds = %.preheader319
  %i.ab = icmp sgt i32 %i.b, 0
  %i.ac = zext i32 %i.i to i64
  %i.ad = sext i32 %i.m to i64
  br i1 %i.ab, label %.preheader318.us.preheader, label %.critedge

.preheader318.us.preheader:                       ; preds = %.preheader318.lr.ph
  %i.ae = zext nneg i8 %1 to i64
  %wide.trip.count468 = zext nneg i32 %i.b to i64
  br label %.preheader318.us

.preheader318.us:                                 ; preds = %.preheader318.us.preheader, %._crit_edge374.us
  %.0260377.us = phi i32 [ %i.at, %._crit_edge374.us ], [ 0, %.preheader318.us.preheader ]
  %.0277376.us = phi ptr [ %i.as, %._crit_edge374.us ], [ %i.k, %.preheader318.us.preheader ] ; 2 uses
  %.0283375.us = phi ptr [ %i.ar, %._crit_edge374.us ], [ %i.g, %.preheader318.us.preheader ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader318.us, %bb.c
  %indvars.iv463 = phi i64 [ 0, %.preheader318.us ], [ %indvars.iv.next464, %bb.c ] ; 2 uses
  %indvars.iv461 = phi i64 [ 0, %.preheader318.us ], [ %indvars.iv.next462, %bb.c ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0277376.us, i64 %indvars.iv461 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ah = load <2 x i8>, ptr %i.ag, align 1, !tbaa !17
  %i.ai = and <2 x i8> %i.ah, <i8 -4, i8 -8>
  %i.aj = zext <2 x i8> %i.ai to <2 x i16>
  %i.ak = shl nuw <2 x i16> %i.aj, <i16 3, i16 8> ; 2 uses
  %shift = shufflevector <2 x i16> %i.ak, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or disjoint <2 x i16> %i.ak, %shift
  %i.al = extractelement <2 x i16> %foldExtExtBinop, i64 0
  %i.am = load i8, ptr %i.af, align 1, !tbaa !17
  %i.an = lshr i8 %i.am, 3
  %i.ao = zext nneg i8 %i.an to i16
  %i.ap = or disjoint i16 %i.al, %i.ao
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %.0283375.us, i64 %indvars.iv463
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !12
  %indvars.iv.next464 = add nuw nsw i64 %indvars.iv463, 1 ; 2 uses
  %indvars.iv.next462 = add nuw nsw i64 %indvars.iv461, %i.ae
  %exitcond469.not = icmp eq i64 %indvars.iv.next464, %wide.trip.count468
  br i1 %exitcond469.not, label %._crit_edge374.us, label %bb.c, !llvm.loop !195

._crit_edge374.us:                                ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %.0283375.us, i64 %i.ac ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.0277376.us, i64 %i.ad ; 2 uses
  %i.at = add nuw nsw i32 %.0260377.us, 1         ; 2 uses
  %exitcond470.not = icmp eq i32 %i.at, %i.d
  br i1 %exitcond470.not, label %.loopexit320, label %.preheader318.us, !llvm.loop !196

bb.d:                                             ; preds = %bb.b
  %i.au = icmp ult i8 %i.f, -3
  %or.cond6 = select i1 %i.y, i1 %i.au, i1 false
  %i.av = icmp sgt i32 %i.d, 0
  %or.cond402 = select i1 %or.cond6, i1 %i.av, i1 false
  br i1 %or.cond402, label %.preheader321.lr.ph, label %.loopexit320

.preheader321.lr.ph:                              ; preds = %bb.d
  %i.aw = icmp slt i32 %i.b, 1
  %i.ax = zext i8 %i.f to i16                     ; 3 uses
  %i.ay = xor i8 %i.f, -1
  %i.az = zext i8 %i.ay to i16                    ; 3 uses
  %i.ba = zext i32 %i.i to i64
  %i.bb = sext i32 %i.m to i64
  %cond = icmp eq i8 %i.f, 0
  %or.cond527 = select i1 %i.aw, i1 true, i1 %cond
  br i1 %or.cond527, label %.critedge, label %.preheader321.us.preheader

.preheader321.us.preheader:                       ; preds = %.preheader321.lr.ph
  %i.bc = zext nneg i8 %1 to i64
  %wide.trip.count456 = zext nneg i32 %i.b to i64
  br label %.preheader321.us

.preheader321.us:                                 ; preds = %.preheader321.us.preheader, %._crit_edge338.split.split.us356
  %.1261350.us = phi i32 [ %i.cn, %._crit_edge338.split.split.us356 ], [ 0, %.preheader321.us.preheader ]
  %.1278347.us = phi ptr [ %i.cm, %._crit_edge338.split.split.us356 ], [ %i.k, %.preheader321.us.preheader ] ; 2 uses
  %.1284344.us = phi ptr [ %i.cl, %._crit_edge338.split.split.us356 ], [ %i.g, %.preheader321.us.preheader ] ; 2 uses
  br label %lv_color_24_16_mix.exit.us353

lv_color_24_16_mix.exit.us353:                    ; preds = %lv_color_24_16_mix.exit.us353, %.preheader321.us
  %indvars.iv451 = phi i64 [ %indvars.iv.next452, %lv_color_24_16_mix.exit.us353 ], [ 0, %.preheader321.us ] ; 2 uses
  %indvars.iv449 = phi i64 [ %indvars.iv.next450, %lv_color_24_16_mix.exit.us353 ], [ 0, %.preheader321.us ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.1278347.us, i64 %indvars.iv449 ; 3 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %.1284344.us, i64 %indvars.iv451 ; 2 uses
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !12 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !17
  %i.bi = lshr i8 %i.bh, 3
  %i.bj = zext nneg i8 %i.bi to i16
  %i.bk = mul nuw nsw i16 %i.bj, %i.ax
  %i.bl = lshr i16 %i.bf, 11
  %i.bm = mul nuw nsw i16 %i.bl, %i.az
  %i.bn = add nuw nsw i16 %i.bk, %i.bm
  %i.bo = shl i16 %i.bn, 3
  %i.bp = and i16 %i.bo, -2048
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !17
  %i.bs = lshr i8 %i.br, 2
  %i.bt = zext nneg i8 %i.bs to i16
  %i.bu = mul nuw nsw i16 %i.bt, %i.ax
  %i.bv = lshr i16 %i.bf, 5
  %i.bw = and i16 %i.bv, 63
  %i.bx = mul nuw nsw i16 %i.bw, %i.az
  %i.by = add nuw nsw i16 %i.bu, %i.bx
  %i.bz = lshr i16 %i.by, 3
  %i.ca = and i16 %i.bz, 2016
  %i.cb = or disjoint i16 %i.ca, %i.bp
  %i.cc = load i8, ptr %i.bd, align 1, !tbaa !17
  %i.cd = lshr i8 %i.cc, 3
  %i.ce = zext nneg i8 %i.cd to i16
  %i.cf = mul nuw nsw i16 %i.ce, %i.ax
  %i.cg = and i16 %i.bf, 31
  %i.ch = mul nuw nsw i16 %i.cg, %i.az
  %i.ci = add nuw nsw i16 %i.cf, %i.ch
  %i.cj = lshr i16 %i.ci, 8
  %i.ck = add i16 %i.cb, %i.cj
  store i16 %i.ck, ptr %i.be, align 2, !tbaa !12
  %indvars.iv.next452 = add nuw nsw i64 %indvars.iv451, 1 ; 2 uses
  %indvars.iv.next450 = add nuw nsw i64 %indvars.iv449, %i.bc
  %exitcond457.not = icmp eq i64 %indvars.iv.next452, %wide.trip.count456
  br i1 %exitcond457.not, label %._crit_edge338.split.split.us356, label %lv_color_24_16_mix.exit.us353, !llvm.loop !197

._crit_edge338.split.split.us356:                 ; preds = %lv_color_24_16_mix.exit.us353
  %i.cl = getelementptr inbounds nuw i8, ptr %.1284344.us, i64 %i.ba ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %.1278347.us, i64 %i.bb ; 2 uses
  %i.cn = add nuw nsw i32 %.1261350.us, 1         ; 2 uses
  %exitcond458.not = icmp eq i32 %i.cn, %i.d
  br i1 %exitcond458.not, label %.loopexit320, label %.preheader321.us, !llvm.loop !198

.loopexit320:                                     ; preds = %._crit_edge338.split.split.us356, %._crit_edge374.us, %bb.d
  %.2285 = phi ptr [ %i.g, %bb.d ], [ %i.ar, %._crit_edge374.us ], [ %i.cl, %._crit_edge338.split.split.us356 ] ; 2 uses
  %.2279 = phi ptr [ %i.k, %bb.d ], [ %i.as, %._crit_edge374.us ], [ %i.cm, %._crit_edge338.split.split.us356 ] ; 2 uses
  %.not = xor i1 %i.y, true
  %or.cond9 = select i1 %.not, i1 %i.z, i1 false
  %i.co = icmp sgt i32 %i.d, 0                    ; 2 uses
  %or.cond403 = select i1 %or.cond9, i1 %i.co, i1 false
  br i1 %or.cond403, label %.preheader316.lr.ph, label %.loopexit

.preheader316.lr.ph:                              ; preds = %.loopexit320
  %i.cp = icmp sgt i32 %i.b, 0
  %3 = zext nneg i8 %1 to i32
  %i.cq = zext i32 %i.i to i64
  %i.cr = sext i32 %i.m to i64
  %i.cs = sext i32 %i.q to i64
  br i1 %i.cp, label %.preheader316.us.preheader, label %.critedge

.preheader316.us.preheader:                       ; preds = %.preheader316.lr.ph
  %wide.trip.count481 = zext nneg i32 %i.b to i64
  br label %.preheader316.us

.preheader316.us:                                 ; preds = %.preheader316.us.preheader, %._crit_edge384.us
  %.2388.us = phi i32 [ %i.et, %._crit_edge384.us ], [ 0, %.preheader316.us.preheader ]
  %.0272387.us = phi ptr [ %i.es, %._crit_edge384.us ], [ %i.o, %.preheader316.us.preheader ] ; 2 uses
  %.3280386.us = phi ptr [ %i.er, %._crit_edge384.us ], [ %.2279, %.preheader316.us.preheader ] ; 2 uses
  %.3286385.us = phi ptr [ %i.eq, %._crit_edge384.us ], [ %.2285, %.preheader316.us.preheader ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader316.us, %lv_color_24_16_mix.exit309.us
  %indvars.iv476.a = phi i64 [ 0, %.preheader316.us ], [ %indvars.iv.next477.a, %lv_color_24_16_mix.exit309.us ] ; 3 uses
  %.2264383.us = phi i32 [ 0, %.preheader316.us ], [ %5, %lv_color_24_16_mix.exit309.us ] ; 2 uses
  %4 = zext nneg i32 %.2264383.us to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %.3280386.us, i64 %4 ; 5 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %.3286385.us, i64 %indvars.iv476.a ; 2 uses
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !12 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0272387.us, i64 %indvars.iv476.a
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !17  ; 3 uses
  switch i8 %i.cx, label %bb.g [
    i8 0, label %lv_color_24_16_mix.exit309.us
    i8 -1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.cz = load <2 x i8>, ptr %i.cy, align 1, !tbaa !17
  %i.da = and <2 x i8> %i.cz, <i8 -4, i8 -8>
  %i.db = zext <2 x i8> %i.da to <2 x i16>
  %i.dc = shl nuw <2 x i16> %i.db, <i16 3, i16 8> ; 2 uses
  %shift541 = shufflevector <2 x i16> %i.dc, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop542 = or disjoint <2 x i16> %i.dc, %shift541
  %i.dd = extractelement <2 x i16> %foldExtExtBinop542, i64 0
  %i.de = load i8, ptr %i.ct, align 1, !tbaa !17
  %i.df = lshr i8 %i.de, 3
  %i.dg = zext nneg i8 %i.df to i16
  %i.dh = or disjoint i16 %i.dd, %i.dg
  br label %lv_color_24_16_mix.exit309.us

bb.g:                                             ; preds = %bb.e
  %i.di = zext i8 %i.cx to i16                    ; 3 uses
  %i.dj = xor i8 %i.cx, -1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !17
  %i.dm = lshr i8 %i.dl, 3
  %i.dn = zext nneg i8 %i.dm to i16
  %i.do = mul nuw nsw i16 %i.dn, %i.di
  %i.dp = lshr i16 %i.cv, 11
  %i.dq = zext i8 %i.dj to i16                    ; 3 uses
  %i.dr = mul nuw nsw i16 %i.dp, %i.dq
  %i.ds = add nuw nsw i16 %i.do, %i.dr
  %i.dt = shl i16 %i.ds, 3
  %i.du = and i16 %i.dt, -2048
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !17
  %i.dx = lshr i8 %i.dw, 2
  %i.dy = zext nneg i8 %i.dx to i16
  %i.dz = mul nuw nsw i16 %i.dy, %i.di
  %i.ea = lshr i16 %i.cv, 5
  %i.eb = and i16 %i.ea, 63
  %i.ec = mul nuw nsw i16 %i.eb, %i.dq
  %i.ed = add nuw nsw i16 %i.dz, %i.ec
  %i.ee = lshr i16 %i.ed, 3
  %i.ef = and i16 %i.ee, 2016
  %i.eg = or disjoint i16 %i.ef, %i.du
  %i.eh = load i8, ptr %i.ct, align 1, !tbaa !17
  %i.ei = lshr i8 %i.eh, 3
  %i.ej = zext nneg i8 %i.ei to i16
  %i.ek = mul nuw nsw i16 %i.ej, %i.di
  %i.el = and i16 %i.cv, 31
  %i.em = mul nuw nsw i16 %i.el, %i.dq
  %i.en = add nuw nsw i16 %i.ek, %i.em
  %i.eo = lshr i16 %i.en, 8
  %i.ep = add i16 %i.eg, %i.eo
  br label %lv_color_24_16_mix.exit309.us

lv_color_24_16_mix.exit309.us:                    ; preds = %bb.g, %bb.f, %bb.e
  %.0.i308.us = phi i16 [ %i.ep, %bb.g ], [ %i.dh, %bb.f ], [ %i.cv, %bb.e ]
  store i16 %.0.i308.us, ptr %i.cu, align 2, !tbaa !12
  %indvars.iv.next477.a = add nuw nsw i64 %indvars.iv476.a, 1 ; 2 uses
  %5 = add nuw nsw i32 %.2264383.us, %3
  %exitcond482.not = icmp eq i64 %indvars.iv.next477.a, %wide.trip.count481
  br i1 %exitcond482.not, label %._crit_edge384.us, label %bb.e, !llvm.loop !199

._crit_edge384.us:                                ; preds = %lv_color_24_16_mix.exit309.us
  %i.eq = getelementptr inbounds nuw i8, ptr %.3286385.us, i64 %i.cq ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %.3280386.us, i64 %i.cr ; 2 uses
  %i.es = getelementptr inbounds i8, ptr %.0272387.us, i64 %i.cs ; 2 uses
  %i.et = add nuw nsw i32 %.2388.us, 1            ; 2 uses
  %exitcond483.not = icmp eq i32 %i.et, %i.d
  br i1 %exitcond483.not, label %.loopexit, label %.preheader316.us, !llvm.loop !200

.loopexit:                                        ; preds = %._crit_edge384.us, %.loopexit320
  %.4287 = phi ptr [ %.2285, %.loopexit320 ], [ %i.eq, %._crit_edge384.us ]
  %.4281 = phi ptr [ %.2279, %.loopexit320 ], [ %i.er, %._crit_edge384.us ]
  %.1273 = phi ptr [ %i.o, %.loopexit320 ], [ %i.es, %._crit_edge384.us ] ; 2 uses
  %i.eu = icmp ne ptr %.1273, null
  %i.ev = icmp ult i8 %i.f, -3
  %or.cond12 = select i1 %i.eu, i1 %i.ev, i1 false
  %or.cond404 = select i1 %or.cond12, i1 %i.co, i1 false
  br i1 %or.cond404, label %.preheader.lr.ph, label %.critedge

.preheader.lr.ph:                                 ; preds = %.loopexit
  %i.ew = icmp sgt i32 %i.b, 0
  %6 = zext nneg i8 %1 to i32
  %i.ex = zext i32 %i.i to i64
  %i.ey = sext i32 %i.m to i64
  %i.ez = sext i32 %i.q to i64
  br i1 %i.ew, label %.preheader.preheader, label %.critedge

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count491 = zext nneg i32 %i.b to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge397
  %.3401 = phi i32 [ %i.hb, %._crit_edge397 ], [ 0, %.preheader.preheader ]
  %.2274400 = phi ptr [ %i.ha, %._crit_edge397 ], [ %.1273, %.preheader.preheader ] ; 2 uses
  %.5282399 = phi ptr [ %i.gz, %._crit_edge397 ], [ %.4281, %.preheader.preheader ] ; 2 uses
  %.5288398 = phi ptr [ %i.gy, %._crit_edge397 ], [ %.4287, %.preheader.preheader ] ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %lv_color_24_16_mix.exit311
  %indvars.iv486 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next487, %lv_color_24_16_mix.exit311 ] ; 3 uses
  %.3265396 = phi i32 [ 0, %.preheader ], [ %8, %lv_color_24_16_mix.exit311 ] ; 2 uses
  %7 = zext nneg i32 %.3265396 to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %.5282399, i64 %7 ; 5 uses
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %.5288398, i64 %indvars.iv486 ; 2 uses
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !12 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.2274400, i64 %indvars.iv486
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !17
  %i.ff = tail call i8 @llvm.umulh.i8(i8 %i.fe, i8 %i.f) ; 3 uses
  switch i8 %i.ff, label %bb.j [
    i8 0, label %lv_color_24_16_mix.exit311
    i8 -1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  %i.fh = load <2 x i8>, ptr %i.fg, align 1, !tbaa !17
  %i.fi = and <2 x i8> %i.fh, <i8 -4, i8 -8>
  %i.fj = zext <2 x i8> %i.fi to <2 x i16>
  %i.fk = shl nuw <2 x i16> %i.fj, <i16 3, i16 8> ; 2 uses
  %shift544 = shufflevector <2 x i16> %i.fk, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop545 = or disjoint <2 x i16> %i.fk, %shift544
  %i.fl = extractelement <2 x i16> %foldExtExtBinop545, i64 0
  %i.fm = load i8, ptr %i.fa, align 1, !tbaa !17
  %i.fn = lshr i8 %i.fm, 3
  %i.fo = zext nneg i8 %i.fn to i16
  %i.fp = or disjoint i16 %i.fl, %i.fo
  br label %lv_color_24_16_mix.exit311

bb.j:                                             ; preds = %bb.h
  %i.fq = zext i8 %i.ff to i16                    ; 3 uses
  %i.fr = xor i8 %i.ff, -1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fa, i64 2
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !17
  %i.fu = lshr i8 %i.ft, 3
  %i.fv = zext nneg i8 %i.fu to i16
  %i.fw = mul nuw nsw i16 %i.fv, %i.fq
  %i.fx = lshr i16 %i.fc, 11
  %i.fy = zext i8 %i.fr to i16                    ; 3 uses
  %i.fz = mul nuw nsw i16 %i.fx, %i.fy
  %i.ga = add nuw nsw i16 %i.fw, %i.fz
  %i.gb = shl i16 %i.ga, 3
  %i.gc = and i16 %i.gb, -2048
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !17
  %i.gf = lshr i8 %i.ge, 2
  %i.gg = zext nneg i8 %i.gf to i16
  %i.gh = mul nuw nsw i16 %i.gg, %i.fq
  %i.gi = lshr i16 %i.fc, 5
  %i.gj = and i16 %i.gi, 63
  %i.gk = mul nuw nsw i16 %i.gj, %i.fy
  %i.gl = add nuw nsw i16 %i.gh, %i.gk
  %i.gm = lshr i16 %i.gl, 3
  %i.gn = and i16 %i.gm, 2016
  %i.go = or disjoint i16 %i.gn, %i.gc
  %i.gp = load i8, ptr %i.fa, align 1, !tbaa !17
  %i.gq = lshr i8 %i.gp, 3
  %i.gr = zext nneg i8 %i.gq to i16
  %i.gs = mul nuw nsw i16 %i.gr, %i.fq
  %i.gt = and i16 %i.fc, 31
  %i.gu = mul nuw nsw i16 %i.gt, %i.fy
  %i.gv = add nuw nsw i16 %i.gs, %i.gu
  %i.gw = lshr i16 %i.gv, 8
  %i.gx = add i16 %i.go, %i.gw
  br label %lv_color_24_16_mix.exit311

lv_color_24_16_mix.exit311:                       ; preds = %bb.h, %bb.i, %bb.j
  %.0.i310 = phi i16 [ %i.gx, %bb.j ], [ %i.fp, %bb.i ], [ %i.fc, %bb.h ]
  store i16 %.0.i310, ptr %i.fb, align 2, !tbaa !12
  %indvars.iv.next487 = add nuw nsw i64 %indvars.iv486, 1 ; 2 uses
  %8 = add nuw nsw i32 %.3265396, %6
  %exitcond492.not = icmp eq i64 %indvars.iv.next487, %wide.trip.count491
  br i1 %exitcond492.not, label %._crit_edge397, label %bb.h, !llvm.loop !201

._crit_edge397:                                   ; preds = %lv_color_24_16_mix.exit311
  %i.gy = getelementptr inbounds nuw i8, ptr %.5288398, i64 %i.ex
  %i.gz = getelementptr inbounds i8, ptr %.5282399, i64 %i.ey
  %i.ha = getelementptr inbounds i8, ptr %.2274400, i64 %i.ez
  %i.hb = add nuw nsw i32 %.3401, 1               ; 2 uses
  %exitcond493.not = icmp eq i32 %i.hb, %i.d
  br i1 %exitcond493.not, label %.critedge, label %.preheader, !llvm.loop !202

.preheader324:                                    ; preds = %.preheader324.preheader, %._crit_edge
  %.4335 = phi i32 [ %i.lt, %._crit_edge ], [ 0, %.preheader324.preheader ]
  %.3275334 = phi ptr [ %.4276, %._crit_edge ], [ %i.o, %.preheader324.preheader ] ; 3 uses
  %.6333 = phi ptr [ %i.lr, %._crit_edge ], [ %i.k, %.preheader324.preheader ] ; 5 uses
  %.6289332 = phi ptr [ %i.lq, %._crit_edge ], [ %i.g, %.preheader324.preheader ] ; 6 uses
  %i.hc = icmp eq ptr %.3275334, null             ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.preheader324, %bb.s
  %indvars.iv430 = phi i64 [ 0, %.preheader324 ], [ %indvars.iv.next431, %bb.s ] ; 7 uses
  %.4266330 = phi i32 [ 0, %.preheader324 ], [ %13, %bb.s ] ; 5 uses
  %i.hd = load i32, ptr %i.r, align 4, !tbaa !28
  switch i32 %i.hd, label %.critedge [
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.n
    i32 4, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %.6289332, i64 %indvars.iv430
  %i.hf = load i16, ptr %i.he, align 2            ; 4 uses
  %i.hg = lshr i16 %i.hf, 11
  %9 = zext nneg i32 %.4266330 to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %.6333, i64 %9 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 2
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !17
  %i.hk = lshr i8 %i.hj, 3
  %i.hl = zext nneg i8 %i.hk to i16
  %i.hm = add nuw nsw i16 %i.hg, %i.hl
  %i.hn = tail call i16 @llvm.umin.i16(i16 %i.hm, i16 31)
  %spec.select = shl nuw i16 %i.hn, 11
  %i.ho = lshr i16 %i.hf, 5
  %i.hp = and i16 %i.ho, 63
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hh, i64 1
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !17
  %i.hs = lshr i8 %i.hr, 2
  %i.ht = zext nneg i8 %i.hs to i16
  %i.hu = add nuw nsw i16 %i.hp, %i.ht
  %i.hv = tail call i16 @llvm.umin.i16(i16 %i.hu, i16 63)
  %i.hw = shl nuw nsw i16 %i.hv, 5
  %i.hx = or disjoint i16 %i.hw, %spec.select
  %i.hy = and i16 %i.hf, 31
  %i.hz = load i8, ptr %i.hh, align 1, !tbaa !17
  %i.ia = lshr i8 %i.hz, 3
  %i.ib = zext nneg i8 %i.ia to i16
  %i.ic = add nuw nsw i16 %i.hy, %i.ib
  %i.id = tail call i16 @llvm.umin.i16(i16 %i.ic, i16 31)
  %i.ie = or disjoint i16 %i.hx, %i.id
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %.6289332, i64 %indvars.iv430
  %i.ig = load i16, ptr %i.if, align 2            ; 4 uses
  %i.ih = lshr i16 %i.ig, 11
  %10 = zext nneg i32 %.4266330 to i64
  %i.ii = getelementptr inbounds nuw i8, ptr %.6333, i64 %10 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 2
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !17
  %i.il = lshr i8 %i.ik, 3
  %i.im = zext nneg i8 %i.il to i16
  %i.in = sub nsw i16 %i.ih, %i.im
  %i.io = tail call i16 @llvm.smax.i16(i16 %i.in, i16 0)
  %i.ip = shl nuw i16 %i.io, 11
  %i.iq = lshr i16 %i.ig, 5
  %i.ir = and i16 %i.iq, 63
  %i.is = getelementptr inbounds nuw i8, ptr %i.ii, i64 1
  %i.it = load i8, ptr %i.is, align 1, !tbaa !17
  %i.iu = lshr i8 %i.it, 2
  %i.iv = zext nneg i8 %i.iu to i16
  %i.iw = sub nsw i16 %i.ir, %i.iv
  %i.ix = tail call i16 @llvm.smax.i16(i16 %i.iw, i16 0)
  %i.iy = shl nuw nsw i16 %i.ix, 5
  %i.iz = add nuw i16 %i.iy, %i.ip
  %i.ja = and i16 %i.ig, 31
  %i.jb = load i8, ptr %i.ii, align 1, !tbaa !17
  %i.jc = lshr i8 %i.jb, 3
  %i.jd = zext nneg i8 %i.jc to i16
  %i.je = sub nsw i16 %i.ja, %i.jd
  %i.jf = tail call i16 @llvm.smax.i16(i16 %i.je, i16 0)
  %i.jg = add nuw i16 %i.iz, %i.jf
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %.6289332, i64 %indvars.iv430
  %i.ji = load i16, ptr %i.jh, align 2            ; 3 uses
  %11 = zext nneg i32 %.4266330 to i64
  %i.jj = getelementptr inbounds nuw i8, ptr %.6333, i64 %11 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 2
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !17
  %i.jm = lshr i8 %i.jl, 3
  %i.jn = zext nneg i8 %i.jm to i16
  %i.jo = lshr i16 %i.ji, 5                       ; 2 uses
  %i.jp = and i16 %i.jo, 1984
  %i.jq = mul nuw i16 %i.jp, %i.jn
  %i.jr = and i16 %i.jq, -2048
  %i.js = and i16 %i.jo, 63
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jj, i64 1
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !17
  %i.jv = lshr i8 %i.ju, 2
  %i.jw = zext nneg i8 %i.jv to i16
  %i.jx = mul nuw nsw i16 %i.js, %i.jw
  %i.jy = lshr i16 %i.jx, 1
  %i.jz = and i16 %i.jy, 2016
  %i.ka = or disjoint i16 %i.jz, %i.jr
  %i.kb = and i16 %i.ji, 31
  %i.kc = load i8, ptr %i.jj, align 1, !tbaa !17
  %i.kd = lshr i8 %i.kc, 3
  %i.ke = zext nneg i8 %i.kd to i16
  %i.kf = mul nuw nsw i16 %i.kb, %i.ke
  %i.kg = lshr i16 %i.kf, 5
  %i.kh = or disjoint i16 %i.ka, %i.kg
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %.6289332, i64 %indvars.iv430
  %i.kj = load i16, ptr %i.ki, align 2            ; 4 uses
  %i.kk = lshr i16 %i.kj, 11
  %12 = zext nneg i32 %.4266330 to i64
  %i.kl = getelementptr inbounds nuw i8, ptr %.6333, i64 %12 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 2
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !17
  %i.ko = lshr i8 %i.kn, 3
  %i.kp = zext nneg i8 %i.ko to i16
  %i.kq = sub nsw i16 %i.kk, %i.kp
  %i.kr = tail call i16 @llvm.abs.i16(i16 %i.kq, i1 true)
  %i.ks = shl nuw i16 %i.kr, 11
  %i.kt = lshr i16 %i.kj, 5
  %i.ku = and i16 %i.kt, 63
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kl, i64 1
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !17
  %i.kx = lshr i8 %i.kw, 2
  %i.ky = zext nneg i8 %i.kx to i16
  %i.kz = sub nsw i16 %i.ku, %i.ky
  %i.la = tail call i16 @llvm.abs.i16(i16 %i.kz, i1 true)
  %i.lb = shl nuw nsw i16 %i.la, 5
  %i.lc = add nuw i16 %i.lb, %i.ks
  %i.ld = and i16 %i.kj, 31
  %i.le = load i8, ptr %i.kl, align 1, !tbaa !17
  %i.lf = lshr i8 %i.le, 3
  %i.lg = zext nneg i8 %i.lf to i16
  %i.lh = sub nsw i16 %i.ld, %i.lg
  %i.li = tail call i16 @llvm.abs.i16(i16 %i.lh, i1 true)
  %i.lj = add nuw i16 %i.lc, %i.li
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %i.lk = phi i16 [ %i.hf, %bb.l ], [ %i.ig, %bb.m ], [ %i.ji, %bb.n ], [ %i.kj, %bb.o ]
  %.0259 = phi i16 [ %i.ie, %bb.l ], [ %i.jg, %bb.m ], [ %i.kh, %bb.n ], [ %i.lj, %bb.o ]
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %.6289332, i64 %indvars.iv430
  br i1 %i.hc, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.lm = getelementptr inbounds nuw i8, ptr %.3275334, i64 %indvars.iv430
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !17  ; 2 uses
  br i1 %i.u, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.lo = tail call i8 @llvm.umulh.i8(i8 %i.ln, i8 %i.f)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.r
  %.sink528 = phi i8 [ %i.f, %bb.p ], [ %i.lo, %bb.r ], [ %i.ln, %bb.q ]
  %i.lp = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %.0259, i16 noundef zeroext %i.lk, i8 noundef zeroext %.sink528) #4
  store i16 %i.lp, ptr %i.ll, align 2, !tbaa !12
  %indvars.iv.next431 = add nuw nsw i64 %indvars.iv430, 1 ; 2 uses
  %13 = add nuw nsw i32 %.4266330, %2
  %exitcond.not = icmp eq i64 %indvars.iv.next431, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.k, !llvm.loop !203

._crit_edge:                                      ; preds = %bb.s
  %i.lq = getelementptr inbounds nuw i8, ptr %.6289332, i64 %i.v
  %i.lr = getelementptr inbounds i8, ptr %.6333, i64 %i.w
  %i.ls = getelementptr inbounds i8, ptr %.3275334, i64 %i.x
  %.4276 = select i1 %i.hc, ptr null, ptr %i.ls
  %i.lt = add nuw nsw i32 %.4335, 1               ; 2 uses
  %exitcond435.not = icmp eq i32 %i.lt, %i.d
  br i1 %exitcond435.not, label %.critedge, label %.preheader324, !llvm.loop !204

.critedge:                                        ; preds = %._crit_edge, %bb.k, %._crit_edge397, %.preheader316.lr.ph, %.preheader321.lr.ph, %.preheader318.lr.ph, %.preheader319, %.preheader326, %.preheader324.lr.ph, %.preheader.lr.ph, %.loopexit
  ret void
}

declare ptr @lv_memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @lv_draw_sw_rgb565_swap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umulh.i8(i8, i8) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.usub.sat.i16(i16, i16) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.umulh.v8i8(<8 x i8>, <8 x i8>) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!11 = !{!"short", !4, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = !{!"branch_weights", i32 4, i32 12}
!17 = !{!4, !4, i64 0}
!18 = !{!"_lv_draw_sw_blend_image_dsc_t", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24, !5, i64 32, !8, i64 40, !5, i64 48, !5, i64 52, !4, i64 56, !5, i64 60, !10, i64 64, !10, i64 80}
!19 = !{!18, !5, i64 8}
!20 = !{!18, !5, i64 12}
!21 = !{!18, !4, i64 56}
!22 = !{!18, !8, i64 0}
!23 = !{!18, !5, i64 16}
!24 = !{!18, !8, i64 40}
!25 = !{!18, !5, i64 48}
!26 = !{!18, !9, i64 24}
!27 = !{!18, !5, i64 32}
!28 = !{!18, !5, i64 60}
!29 = distinct !{!29, !13, !14, !15}
!30 = distinct !{!30, !13, !14, !15}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13, !15, !14}
!33 = distinct !{!33, !13}
!34 = distinct !{!34, !13}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13}
!41 = distinct !{!41, !13}
!42 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!43 = !{!"_lv_draw_sw_blend_fill_dsc_t", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24, !5, i64 32, !42, i64 36, !4, i64 39, !10, i64 40}
!44 = !{!43, !5, i64 8}
!45 = !{!43, !5, i64 12}
!46 = !{!43, !4, i64 39}
!47 = !{!43, !9, i64 24}
!48 = !{!43, !5, i64 32}
!49 = !{!43, !8, i64 0}
!50 = !{!43, !5, i64 16}
!51 = !{!5, !5, i64 0}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13}
!54 = distinct !{!54, !13}
!55 = distinct !{!55, !13}
!56 = distinct !{!56, !13}
!57 = distinct !{!57, !13}
!58 = distinct !{!58, !13}
!59 = distinct !{!59, !13}
!60 = distinct !{!60, !13}
!61 = distinct !{!61, !13}
!62 = distinct !{!62, !13}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !13}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !13}
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !13}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !13}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, i1 false, !"LVerDomain"}
!91 = distinct !{!91, !90}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !13, !14, !15}
!94 = distinct !{!94, !13, !14, !15}
!95 = distinct !{!95, !13, !14}
!96 = distinct !{!96, !13}
!97 = distinct !{!97, i1 false, !"LVerDomain"}
!98 = distinct !{!98, !97}
!99 = distinct !{!99, !97}
!100 = distinct !{!100, !13, !14, !15}
!101 = distinct !{!101, !13, !14}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, i1 false, !"LVerDomain"}
!104 = distinct !{!104, !103}
!105 = distinct !{!105, !103}
!106 = distinct !{!106, !103}
!107 = distinct !{!107, !13, !14, !15}
!108 = distinct !{!108, !13, !14}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, i1 false, !"LVerDomain"}
!111 = distinct !{!111, !110}
!112 = distinct !{!112, !110}
!113 = distinct !{!113, !110}
!114 = distinct !{!114, !13, !14, !15}
!115 = distinct !{!115, !13, !14}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !13}
!119 = distinct !{!119, !13, !14, !15}
!120 = distinct !{!120, !13, !15, !14}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, i1 false, !"LVerDomain"}
!125 = distinct !{!125, !124}
!126 = distinct !{!126, !124}
!127 = distinct !{!127, !124}
!128 = distinct !{!128, !13, !14, !15}
!129 = distinct !{!129, !13, !14}
!130 = distinct !{!130, !13}
!131 = distinct !{!131, !13}
!132 = distinct !{!132, !13}
!133 = distinct !{!133, !13}
!134 = distinct !{!134, !13}
!135 = distinct !{!135, i1 false, !"LVerDomain"}
!136 = distinct !{!136, !135}
!137 = distinct !{!137, !135}
!138 = distinct !{!138, !13, !14, !15}
!139 = distinct !{!139, !13, !14}
!140 = distinct !{!140, !13}
!141 = distinct !{!141, i1 false, !"LVerDomain"}
!142 = distinct !{!142, !141}
!143 = distinct !{!143, !141}
!144 = distinct !{!144, !13, !14, !15}
!145 = distinct !{!145, !13, !14}
!146 = distinct !{!146, !13}
!147 = distinct !{!147, i1 false, !"LVerDomain"}
!148 = distinct !{!148, !147}
end_hunk_2
