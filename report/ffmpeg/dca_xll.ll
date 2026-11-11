Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dca_xll?download=true
inline.NumInlined: 155
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 13
begin_hunk_0_@ff_dca_xll_filter_frame:bb.a
.preheader.i238:                                  ; preds = %bb.av
  %i.tr = load i32, ptr %i.th, align 16, !tbaa !57
  %i.ts = icmp sgt i32 %i.tr, 0
  br i1 %i.ts, label %.lr.ph.i241, label %.loopexit249

.lr.ph.i241:                                      ; preds = %.preheader.i238
  %i.tt = getelementptr inbounds nuw i8, ptr %i.th, i64 1432
  %i.tu = getelementptr inbounds nuw i8, ptr %i.th, i64 2264
  %i.tv = getelementptr inbounds nuw i8, ptr %i.th, i64 2560
  %i.tw = sext i32 %i.ti to i64
  %i.tx = getelementptr inbounds nuw i8, ptr %i.th, i64 688
  %i.ty = sext i32 %i.tl to i64
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.lr.ph.i241
  %indvars.iv.i242 = phi i64 [ 0, %.lr.ph.i241 ], [ %indvars.iv.next.i243, %bb.aw ] ; 5 uses
  %.02931.i = phi ptr [ %i.tq, %.lr.ph.i241 ], [ %i.um, %bb.aw ] ; 3 uses
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %indvars.iv.i242
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !64 ; 2 uses
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.tu, i64 %indvars.iv.i242
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !64
  %i.ud = getelementptr inbounds i8, ptr %i.ua, i64 -32
  %i.ue = getelementptr inbounds nuw [32 x i8], ptr %i.tv, i64 %indvars.iv.i242
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ud, ptr noundef nonnull align 16 dereferenceable(32) %i.ue, i64 32, i1 false)
  %i.uf = load ptr, ptr %i.tf, align 16, !tbaa !70
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 136
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !163
  tail call void %i.uh(ptr noundef %.02931.i, ptr noundef %i.ua, ptr noundef %i.uc, ptr noundef nonnull @ff_dca_xll_band_coeff, i64 noundef %i.tw) #12, !inline_history !139
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %indvars.iv.i242
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !61
  %i.uk = sext i32 %i.uj to i64
  %i.ul = getelementptr inbounds [8 x i8], ptr %i.tg, i64 %i.uk
  store ptr %.02931.i, ptr %i.ul, align 8, !tbaa !64
  %i.um = getelementptr inbounds [4 x i8], ptr %.02931.i, i64 %i.ty
  %indvars.iv.next.i243 = add nuw nsw i64 %indvars.iv.i242, 1 ; 2 uses
  %i.un = load i32, ptr %i.th, align 16, !tbaa !57
  %i.uo = sext i32 %i.un to i64
  %i.up = icmp slt i64 %indvars.iv.next.i243, %i.uo
  br i1 %i.up, label %bb.aw, label %.loopexit249, !llvm.loop !140

.loopexit249:                                     ; preds = %bb.aw, %.preheader.i238
  %indvars.iv.next369 = add nuw nsw i64 %indvars.iv368, 1 ; 2 uses
  %i.uq = load i32, ptr %i.z, align 8, !tbaa !49
  %i.ur = sext i32 %i.uq to i64
  %i.us = icmp slt i64 %indvars.iv.next369, %i.ur
  br i1 %i.us, label %bb.av, label %.loopexit250, !llvm.loop !141

.loopexit250:                                     ; preds = %.loopexit249, %.preheader, %.loopexit253
  %i.ut = getelementptr inbounds nuw i8, ptr %i.d, i64 77944
  %i.uu = load i32, ptr %i.ut, align 8, !tbaa !73 ; 2 uses
  %.not177 = icmp eq i32 %i.uu, 0
  %.pre386 = load i32, ptr %i.y, align 16, !tbaa !148 ; 4 uses
  br i1 %.not177, label %.thread, label %bb.ax

bb.ax:                                            ; preds = %.loopexit250
  %i.uv = and i32 %.pre386, 512
  %.not178 = icmp eq i32 %i.uv, 0
  br i1 %.not178, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 8816
  %i.ux = load ptr, ptr %i.uw, align 16, !tbaa !64
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 8768
  store ptr %i.ux, ptr %i.uy, align 16, !tbaa !64
  %i.uz = and i32 %.pre386, -521
  %i.va = or disjoint i32 %i.uz, 8                ; 2 uses
  store i32 %i.va, ptr %i.y, align 16, !tbaa !148
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.vb = phi i32 [ %i.va, %bb.ay ], [ %.pre386, %bb.ax ] ; 3 uses
  %i.vc = and i32 %i.vb, 1024
  %.not179 = icmp eq i32 %i.vc, 0
  br i1 %.not179, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 8824
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !64
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 8776
  store ptr %i.ve, ptr %i.vf, align 8, !tbaa !64
  %i.vg = and i32 %i.vb, -1041
  %i.vh = or disjoint i32 %i.vg, 16               ; 2 uses
  store i32 %i.vh, ptr %i.y, align 16, !tbaa !148
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %i.vi = phi i32 [ %i.vb, %bb.az ], [ %i.vh, %bb.ba ] ; 4 uses
  %i.vj = icmp eq i32 %i.uu, 6
  %i.vk = and i32 %i.vi, 6
  %i.vl = icmp eq i32 %i.vk, 6
  %or.cond = select i1 %i.vj, i1 %i.vl, i1 false
  br i1 %or.cond, label %bb.bc, label %.thread

bb.bc:                                            ; preds = %bb.bb
  %i.vm = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !52
  %.not180 = icmp eq i32 %i.vn, 0
  br i1 %.not180, label %.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.vp = load i32, ptr %i.vo, align 16, !tbaa !74
  %.off = add i32 %i.vp, -1
  %switch = icmp ult i32 %.off, 2
  %spec.select476 = select i1 %switch, i32 6, i32 %i.vi
  br label %.thread

.thread:                                          ; preds = %bb.bd, %bb.bb, %bb.bc, %.loopexit250
  %.0 = phi i32 [ %spec.select476, %bb.bd ], [ %.pre386, %.loopexit250 ], [ %i.vi, %bb.bc ], [ %i.vi, %bb.bb ] ; 3 uses
  %i.vq = call i32 @ff_dca_set_channel_layout(ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef %.0) #12
  %.not181 = icmp eq i32 %i.vq, 0
  br i1 %.not181, label %chs_assemble_freq_bands.exit, label %bb.be

bb.be:                                            ; preds = %.thread
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.vs = load i32, ptr %i.vr, align 16, !tbaa !59
  %i.vt = load i32, ptr %i.sz, align 4, !tbaa !72
  %i.vu = add nsw i32 %i.vt, -1                   ; 2 uses
  %i.vv = shl i32 %i.vs, %i.vu
  %i.vw = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  store i32 %i.vv, ptr %i.vw, align 8, !tbaa !164
  %i.vx = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !75 ; 3 uses
  switch i32 %i.vy, label %chs_assemble_freq_bands.exit [
    i32 16, label %bb.bg
    i32 20, label %bb.bf
    i32 24, label %bb.bf
  ]

bb.bf:                                            ; preds = %bb.be, %bb.be
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %.sink479 = phi i32 [ 7, %bb.bf ], [ 6, %bb.be ]
  %.sink = phi i32 [ 24, %bb.bf ], [ %i.vy, %bb.be ]
  %i.vz = getelementptr inbounds nuw i8, ptr %i.b, i64 348
  store i32 %.sink479, ptr %i.vz, align 4, !tbaa !165
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.wb = load i32, ptr %i.wa, align 8, !tbaa !63
  %i.wc = sub nsw i32 %.sink, %i.wb               ; 6 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 8732
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !76
  %.not182 = icmp eq i32 %i.we, 0
  br i1 %.not182, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.wf = getelementptr inbounds nuw i8, ptr %i.b, i64 688
  store i32 62, ptr %i.wf, align 8, !tbaa !166
  br label %bb.bl

bb.bi:                                            ; preds = %bb.bg
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 8728
  %i.wh = load i32, ptr %i.wg, align 8, !tbaa !77
  %.not183 = icmp eq i32 %i.wh, 0
  %i.wi = getelementptr inbounds nuw i8, ptr %i.b, i64 688 ; 2 uses
  br i1 %.not183, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i32 61, ptr %i.wi, align 8, !tbaa !166
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  store i32 60, ptr %i.wi, align 8, !tbaa !166
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %bb.bk, %bb.bh
  %i.wj = getelementptr inbounds nuw i8, ptr %i.b, i64 652
  store i32 %i.vy, ptr %i.wj, align 4, !tbaa !167
  %i.wk = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %i.wk, align 8, !tbaa !168
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.wm = load i32, ptr %i.wl, align 8, !tbaa !58
  %i.wn = shl i32 %i.wm, %i.vu                    ; 7 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %i.wn, ptr %i.wo, align 8, !tbaa !173
  %i.wp = call i32 @ff_get_buffer(ptr noundef nonnull %i.b, ptr noundef %1, i32 noundef 0) #12 ; 2 uses
  %i.wq = icmp slt i32 %i.wp, 0
  br i1 %i.wq, label %chs_assemble_freq_bands.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.wr = load i32, ptr %i.y, align 16, !tbaa !148 ; 2 uses
  %.not184 = icmp eq i32 %.0, %i.wr
  br i1 %.not184, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 8720
  %i.wt = load ptr, ptr %i.ws, align 16, !tbaa !70
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 8744
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 124
  call void @ff_dca_downmix_to_stereo_fixed(ptr noundef %i.wt, ptr noundef nonnull %i.wu, ptr noundef nonnull %i.wv, i32 noundef %i.wn, i32 noundef %i.wr) #12
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.ww = getelementptr inbounds nuw i8, ptr %i.b, i64 356 ; 2 uses
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !174 ; 2 uses
  %i.wy = icmp sgt i32 %i.wx, 0
  br i1 %i.wy, label %.lr.ph325, label %._crit_edge326

.lr.ph325:                                        ; preds = %bb.bo
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 8744
  %i.xa = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.xb = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.xc = icmp sgt i32 %i.wn, 0                   ; 2 uses
  %wide.trip.count = zext i32 %i.wn to i64        ; 7 uses
  %wide.trip.count377 = zext nneg i32 %i.wn to i64
  %i.xd = load ptr, ptr %i.xb, align 8, !tbaa !175
  %min.iters.check649 = icmp ult i32 %i.wn, 8
  %n.vec652 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %broadcast.splatinsert653 = insertelement <4 x i32> poison, i32 %i.wc, i64 0
  %broadcast.splat654 = shufflevector <4 x i32> %broadcast.splatinsert653, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n661 = icmp eq i64 %n.vec652, %wide.trip.count
  %xtraiter712 = and i64 %wide.trip.count, 1
  %lcmp.mod713.not = icmp eq i64 %xtraiter712, 0
  %i.xe = add nsw i64 %wide.trip.count, -1
  %min.iters.check634 = icmp ult i32 %i.wn, 8
  %n.vec636 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %broadcast.splatinsert637 = insertelement <4 x i32> poison, i32 %i.wc, i64 0
  %broadcast.splat638 = shufflevector <4 x i32> %broadcast.splatinsert637, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n645 = icmp eq i64 %n.vec636, %wide.trip.count
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph325, %.loopexit
  %i.xf = phi i32 [ %i.wx, %.lr.ph325 ], [ %i.zq, %.loopexit ] ; 4 uses
  %indvars.iv379 = phi i64 [ 0, %.lr.ph325 ], [ %indvars.iv.next380, %.loopexit ] ; 3 uses
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv379
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !61
  %i.xi = sext i32 %i.xh to i64
  %i.xj = getelementptr inbounds [8 x i8], ptr %i.wz, i64 %i.xi
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !64 ; 7 uses
  %i.xl = ptrtoaddr ptr %i.xk to i64
  %2 = load i32, ptr %i.xa, align 4, !tbaa !176
  %i.xm = icmp eq i32 %2, 6
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %indvars.iv379
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !78 ; 7 uses
  %i.xp = ptrtoaddr ptr %i.xo to i64
  br i1 %i.xm, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.xc, label %.lr.ph322.preheader, label %.loopexit

.lr.ph322.preheader:                              ; preds = %bb.bq
  br i1 %min.iters.check634, label %.lr.ph322.preheader664, label %vector.body639

vector.body639:                                   ; preds = %.lr.ph322.preheader, %vector.body639
  %index640 = phi i64 [ %index.next643, %vector.body639 ], [ 0, %.lr.ph322.preheader ] ; 3 uses
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %index640 ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 16
  %wide.load641 = load <4 x i32>, ptr %i.xq, align 4, !tbaa !61
  %wide.load642 = load <4 x i32>, ptr %i.xr, align 4, !tbaa !61
  %i.xs = shl <4 x i32> %wide.load641, %broadcast.splat638
  %i.xt = shl <4 x i32> %wide.load642, %broadcast.splat638
  %i.xu = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.xs, <4 x i32> splat (i32 -32768))
  %i.xv = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.xt, <4 x i32> splat (i32 -32768))
  %i.xw = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.xu, <4 x i32> splat (i32 32767))
  %i.xx = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.xv, <4 x i32> splat (i32 32767))
  %i.xy = trunc nsw <4 x i32> %i.xw to <4 x i16>
  %i.xz = trunc nsw <4 x i32> %i.xx to <4 x i16>
  %i.ya = getelementptr inbounds nuw [2 x i8], ptr %i.xo, i64 %index640 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 8
  store <4 x i16> %i.xy, ptr %i.ya, align 2, !tbaa !80
  store <4 x i16> %i.xz, ptr %i.yb, align 2, !tbaa !80
  %index.next643 = add nuw i64 %index640, 8       ; 2 uses
  %i.yc = icmp eq i64 %index.next643, %n.vec636
  br i1 %i.yc, label %middle.block644, label %vector.body639, !llvm.loop !142

middle.block644:                                  ; preds = %vector.body639
  br i1 %cmp.n645, label %.loopexit, label %.lr.ph322.preheader664

.lr.ph322.preheader664:                           ; preds = %.lr.ph322.preheader, %middle.block644
  %indvars.iv374.ph = phi i64 [ 0, %.lr.ph322.preheader ], [ %n.vec636, %middle.block644 ]
  br label %.lr.ph322

.lr.ph322:                                        ; preds = %.lr.ph322.preheader664, %.lr.ph322
  %indvars.iv374 = phi i64 [ %indvars.iv.next375, %.lr.ph322 ], [ %indvars.iv374.ph, %.lr.ph322.preheader664 ] ; 3 uses
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %indvars.iv374
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !61
  %i.yf = shl i32 %i.ye, %i.wc
  %i.yg = call i32 @llvm.smax.i32(i32 %i.yf, i32 -32768)
  %i.yh = call i32 @llvm.smin.i32(i32 %i.yg, i32 32767)
  %.0.i = trunc nsw i32 %i.yh to i16
  %i.yi = getelementptr inbounds nuw [2 x i8], ptr %i.xo, i64 %indvars.iv374
  store i16 %.0.i, ptr %i.yi, align 2, !tbaa !80
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1 ; 2 uses
  %exitcond378.not = icmp eq i64 %indvars.iv.next375, %wide.trip.count377
  br i1 %exitcond378.not, label %.loopexit, label %.lr.ph322, !llvm.loop !143

bb.br:                                            ; preds = %bb.bp
  br i1 %i.xc, label %.lr.ph319.preheader, label %.loopexit

.lr.ph319.preheader:                              ; preds = %bb.br
  %i.yj = sub i64 %i.xl, %i.xp
  %diff.check = icmp ugt i64 %i.yj, -32
  %or.cond663 = select i1 %min.iters.check649, i1 true, i1 %diff.check
  br i1 %or.cond663, label %.lr.ph319.preheader665, label %vector.body655

vector.body655:                                   ; preds = %.lr.ph319.preheader, %vector.body655
  %index656 = phi i64 [ %index.next659, %vector.body655 ], [ 0, %.lr.ph319.preheader ] ; 3 uses
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %index656 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 16
  %wide.load657 = load <4 x i32>, ptr %i.yk, align 4, !tbaa !61
  %wide.load658 = load <4 x i32>, ptr %i.yl, align 4, !tbaa !61
  %i.ym = shl <4 x i32> %wide.load657, %broadcast.splat654
  %i.yn = shl <4 x i32> %wide.load658, %broadcast.splat654
  %i.yo = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ym, <4 x i32> splat (i32 -8388608))
  %i.yp = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.yn, <4 x i32> splat (i32 -8388608))
  %i.yq = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.yo, <4 x i32> splat (i32 8388607))
  %i.yr = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.yp, <4 x i32> splat (i32 8388607))
  %i.ys = shl nsw <4 x i32> %i.yq, splat (i32 8)
  %i.yt = shl nsw <4 x i32> %i.yr, splat (i32 8)
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %index656 ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 16
  store <4 x i32> %i.ys, ptr %i.yu, align 4, !tbaa !61
  store <4 x i32> %i.yt, ptr %i.yv, align 4, !tbaa !61
  %index.next659 = add nuw i64 %index656, 8       ; 2 uses
  %i.yw = icmp eq i64 %index.next659, %n.vec652
  br i1 %i.yw, label %middle.block660, label %vector.body655, !llvm.loop !144

middle.block660:                                  ; preds = %vector.body655
  br i1 %cmp.n661, label %.loopexit.loopexit327, label %.lr.ph319.preheader665

.lr.ph319.preheader665:                           ; preds = %.lr.ph319.preheader, %middle.block660
  %indvars.iv371.ph = phi i64 [ 0, %.lr.ph319.preheader ], [ %n.vec652, %middle.block660 ] ; 5 uses
  br i1 %lcmp.mod713.not, label %.lr.ph319.prol.loopexit, label %.lr.ph319.prol

.lr.ph319.prol:                                   ; preds = %.lr.ph319.preheader665
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %indvars.iv371.ph
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !61
  %i.yz = shl i32 %i.yy, %i.wc
  %i.za = call i32 @llvm.smax.i32(i32 %i.yz, i32 -8388608)
  %.0.i.i.prol = call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.za, i32 8388607)
  %i.zb = shl nsw i32 %.0.i.i.prol, 8
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %indvars.iv371.ph
  store i32 %i.zb, ptr %i.zc, align 4, !tbaa !61
  %indvars.iv.next372.prol = or disjoint i64 %indvars.iv371.ph, 1
  br label %.lr.ph319.prol.loopexit

.lr.ph319.prol.loopexit:                          ; preds = %.lr.ph319.prol, %.lr.ph319.preheader665
  %indvars.iv371.unr = phi i64 [ %indvars.iv371.ph, %.lr.ph319.preheader665 ], [ %indvars.iv.next372.prol, %.lr.ph319.prol ]
  %i.zd = icmp eq i64 %indvars.iv371.ph, %i.xe
  br i1 %i.zd, label %.loopexit.loopexit327, label %.lr.ph319

.lr.ph319:                                        ; preds = %.lr.ph319.prol.loopexit, %.lr.ph319
  %indvars.iv371 = phi i64 [ %indvars.iv.next372.1, %.lr.ph319 ], [ %indvars.iv371.unr, %.lr.ph319.prol.loopexit ] ; 4 uses
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %indvars.iv371
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !61
  %i.zg = shl i32 %i.zf, %i.wc
  %i.zh = call i32 @llvm.smax.i32(i32 %i.zg, i32 -8388608)
  %.0.i.i = call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.zh, i32 8388607)
  %i.zi = shl nsw i32 %.0.i.i, 8
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %indvars.iv371
  store i32 %i.zi, ptr %i.zj, align 4, !tbaa !61
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1 ; 2 uses
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %indvars.iv.next372
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !61
  %i.zm = shl i32 %i.zl, %i.wc
  %i.zn = call i32 @llvm.smax.i32(i32 %i.zm, i32 -8388608)
  %.0.i.i.1 = call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.zn, i32 8388607)
  %i.zo = shl nsw i32 %.0.i.i.1, 8
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %indvars.iv.next372
  store i32 %i.zo, ptr %i.zp, align 4, !tbaa !61
  %indvars.iv.next372.1 = add nuw nsw i64 %indvars.iv371, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next372.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit.loopexit327, label %.lr.ph319, !llvm.loop !145

.loopexit.loopexit327:                            ; preds = %.lr.ph319.prol.loopexit, %.lr.ph319, %middle.block660
  %.pre387.a = load i32, ptr %i.ww, align 4, !tbaa !174
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph322, %middle.block644, %.loopexit.loopexit327, %bb.br, %bb.bq
  %i.zq = phi i32 [ %.pre387.a, %.loopexit.loopexit327 ], [ %i.xf, %bb.bq ], [ %i.xf, %bb.br ], [ %i.xf, %middle.block644 ], [ %i.xf, %.lr.ph322 ] ; 2 uses
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 2 uses
  %i.zr = sext i32 %i.zq to i64
  %i.zs = icmp slt i64 %indvars.iv.next380, %i.zr
  br i1 %i.zs, label %bb.bp, label %._crit_edge326, !llvm.loop !146

._crit_edge326:                                   ; preds = %.loopexit, %bb.bo
  %i.zt = getelementptr inbounds nuw i8, ptr %i.d, i64 46392
  %i.zu = load i32, ptr %i.zt, align 8, !tbaa !81
  %.not185 = icmp eq i32 %i.zu, 0
  br i1 %.not185, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %._crit_edge326
  %i.zv = getelementptr inbounds nuw i8, ptr %i.d, i64 46412
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !177 ; 2 uses
  %switch.selectcmp = icmp eq i32 %i.zw, 3
  %switch.select = select i1 %switch.selectcmp, i32 6, i32 0
  %switch.selectcmp191 = icmp eq i32 %i.zw, 2
  %switch.select192 = select i1 %switch.selectcmp191, i32 1, i32 %switch.select
  br label %bb.bv

bb.bt:                                            ; preds = %._crit_edge326
  %i.zx = load i32, ptr %i.y, align 16, !tbaa !148
  %.not186 = icmp eq i32 %.0, %i.zx
  br i1 %.not186, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.zy = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.zz = load i32, ptr %i.zy, align 16, !tbaa !74
  %i.aaa = icmp eq i32 %i.zz, 2
  %spec.select = zext i1 %i.aaa to i32
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bs, %bb.bt
  %.0162 = phi i32 [ %spec.select, %bb.bu ], [ %switch.select192, %bb.bs ], [ 0, %bb.bt ]
  %i.aab = call i32 @ff_side_data_update_matrix_encoding(ptr noundef nonnull %1, i32 noundef %.0162) #12
  %. = call i32 @llvm.smin.i32(i32 %i.aab, i32 0)
  br label %chs_assemble_freq_bands.exit

chs_assemble_freq_bands.exit:                     ; preds = %bb.av, %bb.v, %bb.j, %ff_dca_core_map_spkr.exit.thread90.i, %bb.n, %bb.l, %bb.bv, %bb.bl, %bb.be, %.thread
  %.0166 = phi i32 [ %i.wp, %bb.bl ], [ -1094995529, %bb.l ], [ -22, %.thread ], [ -22, %bb.be ], [ %., %bb.bv ], [ -1094995529, %bb.v ], [ -22, %bb.j ], [ -1094995529, %ff_dca_core_map_spkr.exit.thread90.i ], [ -1094995529, %bb.n ], [ -12, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0166
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @force_lossy_output(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 720 ; 2 uses
  %i.e = load i32, ptr %i.d, align 16, !tbaa !66
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %i.g = load i32, ptr %1, align 16, !tbaa !57    ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph22, label %._crit_edge

.lr.ph22:                                         ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.k = getelementptr i8, ptr %i.c, i64 156
  %wide.trip.count = zext nneg i32 %i.g to i64
  %.pre = load i32, ptr %i.i, align 4, !tbaa !56
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01620 = phi i32 [ %i.l, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  tail call fastcc void @chs_clear_band_data(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %.01620, i32 noundef -1) #13
  %i.l = add nuw nsw i32 %.01620, 1               ; 2 uses
  %i.m = load i32, ptr %i.d, align 16, !tbaa !66
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %.lr.ph, label %.preheader, !llvm.loop !178

bb.b:                                             ; preds = %.lr.ph22, %ff_dca_core_map_spkr.exit.thread18
  %i.o = phi i32 [ %.pre, %.lr.ph22 ], [ %i.ad, %ff_dca_core_map_spkr.exit.thread18 ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %ff_dca_core_map_spkr.exit.thread18 ] ; 3 uses
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  %i.q = shl nuw i32 1, %i.p                      ; 2 uses
  %i.r = and i32 %i.o, %i.q
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %ff_dca_core_map_spkr.exit.thread18, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !61   ; 4 uses
  %.val = load i32, ptr %i.k, align 4, !tbaa !62  ; 3 uses
  %i.u = shl nuw i32 1, %i.t
  %i.v = and i32 %i.u, %.val
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.d, label %ff_dca_core_map_spkr.exit

bb.d:                                             ; preds = %bb.c
  %i.w = icmp ne i32 %i.t, 9
  %i.x = and i32 %.val, 8
  %.not7.i = icmp eq i32 %i.x, 0
  %or.cond.i = or i1 %i.w, %.not7.i
  br i1 %or.cond.i, label %bb.e, label %ff_dca_core_map_spkr.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.y = icmp ne i32 %i.t, 10
  %i.z = and i32 %.val, 16
  %.not8.i = icmp eq i32 %i.z, 0
  %or.cond1.i = or i1 %i.y, %.not8.i
  br i1 %or.cond1.i, label %ff_dca_core_map_spkr.exit.thread18, label %ff_dca_core_map_spkr.exit.thread

ff_dca_core_map_spkr.exit:                        ; preds = %bb.c
  %i.aa = icmp slt i32 %i.t, 0
  br i1 %i.aa, label %ff_dca_core_map_spkr.exit.thread18, label %ff_dca_core_map_spkr.exit.thread

ff_dca_core_map_spkr.exit.thread:                 ; preds = %bb.d, %bb.e, %ff_dca_core_map_spkr.exit
  %i.ab = xor i32 %i.q, -1
  %i.ac = and i32 %i.o, %i.ab                     ; 2 uses
  store i32 %i.ac, ptr %i.i, align 4, !tbaa !56
  br label %ff_dca_core_map_spkr.exit.thread18

ff_dca_core_map_spkr.exit.thread18:               ; preds = %bb.e, %ff_dca_core_map_spkr.exit, %bb.b, %ff_dca_core_map_spkr.exit.thread
  %i.ad = phi i32 [ %i.o, %bb.e ], [ %i.o, %ff_dca_core_map_spkr.exit ], [ %i.o, %bb.b ], [ %i.ac, %ff_dca_core_map_spkr.exit.thread ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !179

._crit_edge:                                      ; preds = %ff_dca_core_map_spkr.exit.thread18, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @chs_filter_band_data(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 6 uses
  %i.b = alloca [8 x ptr], align 16               ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 728
  %i.d = zext nneg i32 %2 to i64
  %i.e = getelementptr inbounds nuw [832 x i8], ptr %i.c, i64 %i.d ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load i32, ptr %i.f, align 8, !tbaa !58   ; 5 uses
  %i.h = load i32, ptr %1, align 16, !tbaa !57    ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph130, label %._crit_edge131

.lr.ph130:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 704
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.m = icmp slt i32 %i.g, 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %wide.trip.count = zext i32 %i.g to i64
  %i.o = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %xtraiter = and i64 %i.o, 3                     ; 3 uses
  %i.p = add nsw i32 %i.g, -2
  %i.q = icmp ult i32 %i.p, 3
  %unroll_iter = and i64 %i.o, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod209 = icmp ne i64 %xtraiter, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph130, %.loopexit113
  %indvars.iv172 = phi i64 [ 0, %.lr.ph130 ], [ %indvars.iv.next173, %.loopexit113 ] ; 5 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv172
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !64   ; 8 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv172
  %i.u = load i32, ptr %i.t, align 4, !tbaa !61   ; 6 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.c, label %.preheader112

.preheader112:                                    ; preds = %bb.b
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv172 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !61
  %i.y = icmp slt i32 %i.x, 1
  %brmerge = select i1 %i.y, i1 true, i1 %i.m
  br i1 %brmerge, label %.loopexit113, label %.preheader110

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %i.n, i64 %indvars.iv172
  %wide.trip.count160 = zext nneg i32 %i.u to i64 ; 3 uses
  br label %bb.d

.preheader111:                                    ; preds = %._crit_edge119
  %i.aa = sub nsw i32 %i.g, %i.u                  ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.preheader109.lr.ph, label %._crit_edge127

.preheader109.lr.ph:                              ; preds = %.preheader111
  %i.ac = zext nneg i32 %i.u to i64
  %wide.trip.count170 = zext nneg i32 %i.aa to i64
  %i.ad = getelementptr [4 x i8], ptr %i.a, i64 %i.ac ; 5 uses
  %i.ae = zext nneg i32 %i.u to i64
  %invariant.gep201 = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ae
  %xtraiter210 = and i64 %wide.trip.count160, 3   ; 3 uses
  %i.af = icmp ult i32 %i.u, 4
  %unroll_iter215 = and i64 %wide.trip.count160, 2147483644
  %lcmp.mod212.not = icmp eq i64 %xtraiter210, 0
  %lcmp.mod214 = icmp ne i64 %xtraiter210, 0
  br label %.lr.ph123.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge119
  %indvars.iv157 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next158, %._crit_edge119 ] ; 5 uses
  %indvars.iv153 = phi i32 [ 1, %bb.c ], [ %indvars.iv.next154, %._crit_edge119 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv157
end_hunk_0
begin_hunk_1_@llvm.smin.v4i32
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !53}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"override-stack-alignment", i32 16}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS14AVCodecContext", !10, i64 0}
!12 = !{!"p1 omnipotent char", !10, i64 0}
!13 = !{!"GetBitContext", !12, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!14 = !{!"p1 int", !10, i64 0}
!15 = !{!"p1 _ZTS13DCADSPContext", !10, i64 0}
!16 = !{!"DCAXllDecoder", !11, i64 0, !13, i64 8, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !6, i64 80, !14, i64 8672, !7, i64 8680, !7, i64 8684, !7, i64 8688, !7, i64 8692, !7, i64 8696, !7, i64 8700, !12, i64 8704, !7, i64 8712, !7, i64 8716, !15, i64 8720, !7, i64 8728, !7, i64 8732, !7, i64 8736, !6, i64 8744}
!17 = !{!"DCAExssAsset", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116}
!18 = !{!16, !7, i64 32}
!19 = !{!16, !11, i64 0}
!20 = !{!"p1 _ZTS7AVClass", !10, i64 0}
!21 = !{!"p1 _ZTS7AVCodec", !10, i64 0}
!22 = !{!"p1 _ZTS15AVCodecInternal", !10, i64 0}
!23 = !{!"long", !6, i64 0}
!24 = !{!"AVRational", !7, i64 0, !7, i64 4}
!25 = !{!"float", !6, i64 0}
!26 = !{!"p1 short", !10, i64 0}
!27 = !{!"AVChannelLayout", !7, i64 0, !7, i64 4, !6, i64 8, !10, i64 16}
!28 = !{!"p1 _ZTS10RcOverride", !10, i64 0}
!29 = !{!"p1 _ZTS9AVHWAccel", !10, i64 0}
!30 = !{!"p1 _ZTS11AVBufferRef", !10, i64 0}
!31 = !{!"p1 _ZTS17AVCodecDescriptor", !10, i64 0}
!32 = !{!"p1 _ZTS16AVPacketSideData", !10, i64 0}
!33 = !{!"any p2 pointer", !10, i64 0}
!34 = !{!"p2 _ZTS15AVFrameSideData", !33, i64 0}
!35 = !{!"AVCodecContext", !20, i64 0, !7, i64 8, !7, i64 12, !21, i64 16, !7, i64 24, !7, i64 28, !10, i64 32, !22, i64 40, !10, i64 48, !23, i64 56, !7, i64 64, !7, i64 68, !12, i64 72, !7, i64 80, !24, i64 84, !24, i64 92, !24, i64 100, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !24, i64 128, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !10, i64 184, !10, i64 192, !7, i64 200, !25, i64 204, !25, i64 208, !25, i64 212, !25, i64 216, !25, i64 220, !25, i64 224, !25, i64 228, !25, i64 232, !25, i64 236, !7, i64 240, !7, i64 244, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !26, i64 288, !26, i64 296, !26, i64 304, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !7, i64 328, !7, i64 332, !7, i64 336, !7, i64 340, !7, i64 344, !7, i64 348, !27, i64 352, !7, i64 376, !7, i64 380, !7, i64 384, !7, i64 388, !7, i64 392, !7, i64 396, !7, i64 400, !7, i64 404, !10, i64 408, !7, i64 416, !7, i64 420, !7, i64 424, !25, i64 428, !25, i64 432, !7, i64 436, !7, i64 440, !7, i64 444, !7, i64 448, !7, i64 452, !28, i64 456, !23, i64 464, !23, i64 472, !25, i64 480, !25, i64 484, !7, i64 488, !7, i64 492, !12, i64 496, !12, i64 504, !7, i64 512, !7, i64 516, !7, i64 520, !7, i64 524, !7, i64 528, !29, i64 536, !10, i64 544, !30, i64 552, !30, i64 560, !7, i64 568, !7, i64 572, !6, i64 576, !7, i64 640, !7, i64 644, !7, i64 648, !7, i64 652, !7, i64 656, !7, i64 660, !7, i64 664, !10, i64 672, !10, i64 680, !7, i64 688, !7, i64 692, !7, i64 696, !7, i64 700, !7, i64 704, !7, i64 708, !7, i64 712, !7, i64 716, !7, i64 720, !31, i64 728, !12, i64 736, !7, i64 744, !7, i64 748, !12, i64 752, !12, i64 760, !12, i64 768, !32, i64 776, !7, i64 784, !7, i64 788, !23, i64 792, !7, i64 800, !7, i64 804, !23, i64 808, !10, i64 816, !23, i64 824, !14, i64 832, !7, i64 840, !34, i64 848, !7, i64 856, !7, i64 860}
!36 = !{!35, !10, i64 32}
!37 = !{!"DCADCTContext", !6, i64 0}
!38 = !{!"SynthFilterContext", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!39 = !{!"p1 _ZTS17AVFloatDSPContext", !10, i64 0}
!40 = !{!"p1 _ZTS17AVFixedDSPContext", !10, i64 0}
!41 = !{!"DCACoreDecoder", !11, i64 0, !13, i64 8, !13, i64 32, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !6, i64 144, !6, i64 151, !6, i64 158, !6, i64 165, !6, i64 172, !6, i64 179, !6, i64 186, !6, i64 256, !6, i64 536, !6, i64 552, !6, i64 1000, !6, i64 1896, !6, i64 2344, !6, i64 5928, !6, i64 7720, !6, i64 7728, !7, i64 9520, !7, i64 9524, !6, i64 9528, !7, i64 9624, !7, i64 9628, !7, i64 9632, !7, i64 9636, !7, i64 9640, !7, i64 9644, !7, i64 9648, !7, i64 9652, !6, i64 9656, !6, i64 9664, !7, i64 9712, !7, i64 9716, !7, i64 9720, !7, i64 9724, !7, i64 9728, !7, i64 9732, !7, i64 9736, !7, i64 9740, !7, i64 9744, !14, i64 9752, !6, i64 9760, !7, i64 13344, !14, i64 13352, !6, i64 13360, !14, i64 15152, !6, i64 15168, !15, i64 45744, !37, i64 45752, !6, i64 45768, !6, i64 45784, !38, i64 45800, !39, i64 45832, !40, i64 45840, !7, i64 45848, !10, i64 45856, !6, i64 45864, !7, i64 46120, !25, i64 46124, !6, i64 46128, !7, i64 46256, !7, i64 46260, !7, i64 46264, !7, i64 46268}
!42 = !{!"DCAExssParser", !11, i64 0, !13, i64 8, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !6, i64 64, !6, i64 80}
!43 = !{!"p1 float", !10, i64 0}
!44 = !{!"p1 _ZTS11AVTXContext", !10, i64 0}
!45 = !{!"DCALbrDecoder", !11, i64 0, !13, i64 8, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !6, i64 108, !6, i64 204, !6, i64 236, !6, i64 332, !6, i64 428, !6, i64 452, !6, i64 1028, !6, i64 2180, !6, i64 2348, !6, i64 3692, !6, i64 3716, !6, i64 5252, !6, i64 5492, !6, i64 5496, !6, i64 7800, !6, i64 7928, !43, i64 9464, !7, i64 9472, !6, i64 9488, !6, i64 12560, !6, i64 13072, !6, i64 13328, !25, i64 13368, !6, i64 13372, !6, i64 13378, !6, i64 14018, !7, i64 22212, !44, i64 22216, !10, i64 22224, !39, i64 22232, !15, i64 22240}
!46 = !{!"DCADSPContext", !10, i64 0, !10, i64 8, !6, i64 16, !10, i64 32, !6, i64 40, !10, i64 56, !10, i64 64, !6, i64 72, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152}
!47 = !{!"DCAContext", !20, i64 0, !11, i64 8, !41, i64 16, !42, i64 46288, !16, i64 46496, !45, i64 55504, !46, i64 77760, !14, i64 77920, !12, i64 77928, !7, i64 77936, !7, i64 77940, !7, i64 77944, !7, i64 77948, !7, i64 77952, !27, i64 77960}
!48 = !{!16, !7, i64 36}
!49 = !{!16, !7, i64 8696}
!50 = !{!"DCAXllChSet", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !6, i64 44, !6, i64 556, !6, i64 620, !7, i64 684, !6, i64 688, !7, i64 720, !7, i64 724, !6, i64 728, !7, i64 2392, !6, i64 2396, !6, i64 2428, !6, i64 2460, !6, i64 2492, !6, i64 2524, !6, i64 2560, !6, i64 2816, !6, i64 2832}
!51 = !{!50, !7, i64 20}
!52 = !{!50, !7, i64 28}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!16, !7, i64 68}
!55 = !{!16, !7, i64 76}
!56 = !{!50, !7, i64 4}
!57 = !{!50, !7, i64 0}
!58 = !{!16, !7, i64 56}
!59 = !{!50, !7, i64 16}
!60 = !{!50, !7, i64 36}
!61 = !{!7, !7, i64 0}
!62 = !{!41, !7, i64 140}
!63 = !{!50, !7, i64 8}
!64 = !{!14, !14, i64 0}
!65 = !{!50, !7, i64 40}
!66 = !{!50, !7, i64 720}
!67 = !{!50, !7, i64 684}
!68 = !{!"DCAXllBand", !7, i64 0, !6, i64 4, !6, i64 36, !6, i64 52, !7, i64 84, !6, i64 88, !6, i64 120, !7, i64 632, !7, i64 636, !6, i64 640, !6, i64 672, !6, i64 704, !6, i64 768}
!69 = !{!68, !7, i64 632}
!70 = !{!16, !15, i64 8720}
!71 = !{!"llvm.loop.unswitch.partial.disable"}
!72 = !{!16, !7, i64 8684}
!73 = !{!47, !7, i64 77944}
!74 = !{!50, !7, i64 32}
!75 = !{!50, !7, i64 12}
!76 = !{!16, !7, i64 8732}
!77 = !{!16, !7, i64 8728}
!78 = !{!12, !12, i64 0}
!79 = !{!"short", !6, i64 0}
!80 = !{!79, !79, i64 0}
!81 = !{!17, !7, i64 24}
!82 = !{!"llvm.loop.unroll.disable"}
!83 = !{!68, !7, i64 0}
!84 = !{!13, !12, i64 0}
!85 = !{!13, !7, i64 12}
!86 = !{!13, !7, i64 16}
!87 = !{!13, !7, i64 8}
!88 = !{!6, !6, i64 0}
!89 = !{!16, !7, i64 48}
!90 = !{!68, !7, i64 636}
!91 = !{!16, !7, i64 8700}
!92 = !{!17, !7, i64 116}
!93 = !{!16, !7, i64 8712}
!94 = !{!16, !7, i64 8716}
!95 = !{!17, !7, i64 100}
!96 = !{!17, !7, i64 96}
!97 = !{!16, !12, i64 8704}
!98 = !{!17, !7, i64 104}
!99 = !{!17, !7, i64 112}
!100 = !{!17, !7, i64 108}
!101 = distinct !{!101, !53}
!102 = distinct !{!102, i1 false, !"LVerDomain"}
!103 = distinct !{!103, !102}
!104 = distinct !{!104, !102}
!105 = distinct !{!105, !53, !153, !154}
!106 = distinct !{!106, i1 false, !"LVerDomain"}
!107 = distinct !{!107, !106}
!108 = distinct !{!108, !106}
!109 = distinct !{!109, !53, !153, !154}
!110 = distinct !{!110, !53, !153}
!111 = distinct !{!111, !53, !153}
!112 = distinct !{!112, !53}
!113 = distinct !{!113, !53, !153, !154}
!114 = distinct !{!114, i1 false, !"LVerDomain"}
!115 = distinct !{!115, !114}
!116 = distinct !{!116, !114}
!117 = distinct !{!117, !53, !153, !154}
!118 = distinct !{!118, !53, !153}
!119 = distinct !{!119, !53, !154, !153}
!120 = distinct !{!120, !53}
!121 = distinct !{!121, !53, !153, !154}
!122 = distinct !{!122, i1 false, !"LVerDomain"}
!123 = distinct !{!123, !122}
!124 = distinct !{!124, !122}
!125 = distinct !{!125, !53, !153, !154}
!126 = distinct !{!126, !53, !153}
!127 = distinct !{!127, !53, !154, !153}
!128 = distinct !{!128, !53}
!129 = distinct !{null}
!130 = distinct !{!130, !53}
!131 = distinct !{!131, !53}
!132 = distinct !{!132, !53}
!133 = distinct !{null}
!134 = distinct !{!134, !53}
!135 = distinct !{!135, !53, !71}
!136 = distinct !{!136, !53}
!137 = distinct !{!137, !53}
!138 = distinct !{!138, !53}
!139 = distinct !{null}
!140 = distinct !{!140, !53}
!141 = distinct !{!141, !53}
!142 = distinct !{!142, !53, !153, !154}
!143 = distinct !{!143, !53, !154, !153}
!144 = distinct !{!144, !53, !153, !154}
!145 = distinct !{!145, !53, !153}
!146 = distinct !{!146, !53}
!147 = !{!47, !7, i64 77940}
!148 = !{!16, !7, i64 8736}
!149 = !{!47, !7, i64 46280}
!150 = !{!47, !7, i64 46276}
!151 = !{!103}
!152 = !{!104}
!153 = !{!"llvm.loop.isvectorized", i32 1}
!154 = !{!"llvm.loop.unroll.runtime.disable"}
!155 = !{!107}
!156 = !{!108}
!157 = !{!115}
!158 = !{!116}
!159 = !{!123}
!160 = !{!124}
!161 = !{!46, !10, i64 120}
!162 = !{!46, !10, i64 104}
!163 = !{!46, !10, i64 136}
!164 = !{!35, !7, i64 344}
!165 = !{!35, !7, i64 348}
!166 = !{!35, !7, i64 688}
!167 = !{!35, !7, i64 652}
!168 = !{!35, !23, i64 56}
!169 = !{!"p2 omnipotent char", !33, i64 0}
!170 = !{!"p2 _ZTS11AVBufferRef", !33, i64 0}
!171 = !{!"p1 _ZTS12AVDictionary", !10, i64 0}
!172 = !{!"AVFrame", !6, i64 0, !6, i64 64, !169, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !24, i64 124, !23, i64 136, !23, i64 144, !24, i64 152, !7, i64 160, !10, i64 168, !7, i64 176, !7, i64 180, !6, i64 184, !170, i64 248, !7, i64 256, !34, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !7, i64 296, !23, i64 304, !171, i64 312, !7, i64 320, !30, i64 328, !30, i64 336, !23, i64 344, !23, i64 352, !23, i64 360, !23, i64 368, !10, i64 376, !27, i64 384, !23, i64 408, !7, i64 416}
!173 = !{!172, !7, i64 112}
!174 = !{!35, !7, i64 356}
!175 = !{!172, !169, i64 96}
!176 = !{!172, !7, i64 116}
!177 = !{!17, !7, i64 44}
!178 = distinct !{!178, !53}
!179 = distinct !{!179, !53}
!180 = distinct !{!180, !53}
!181 = distinct !{!181, !53}
!182 = distinct !{!182, !53}
!183 = distinct !{!183, !82}
!184 = distinct !{!184, !53}
!185 = distinct !{!185, !53}
!186 = distinct !{!186, !82}
!187 = distinct !{!187, !53}
!188 = distinct !{!188, !53}
!189 = distinct !{!189, !53}
!190 = distinct !{!190, !53}
!191 = distinct !{!191, !82}
!192 = distinct !{!192, !53}
!193 = distinct !{!193, !82}
!194 = !{!46, !10, i64 88}
!195 = distinct !{!195, !53}
!196 = distinct !{!196, !53}
!197 = !{!16, !7, i64 8680}
!198 = distinct !{!198, !53}
!199 = distinct !{!199, !53}
!200 = distinct !{!200, !53}
!201 = distinct !{!201, !53}
!202 = distinct !{!202, !53}
!203 = distinct !{!203, !53}
!204 = distinct !{!204, !53}
!205 = distinct !{!205, !53}
!206 = distinct !{!206, !53}
!207 = distinct !{!207, !53}
!208 = distinct !{!208, !53}
!209 = distinct !{!209, !53}
!210 = distinct !{!210, !53}
!211 = distinct !{!211, !53}
!212 = distinct !{!212, !53}
!213 = distinct !{!213, !53}
!214 = distinct !{!214, !53}
!215 = distinct !{!215, !53}
!216 = distinct !{!216, !53}
!217 = distinct !{!217, !53, !71}
!218 = distinct !{!218, !53}
!219 = distinct !{!219, !53}
!220 = distinct !{!220, !53, !71}
!221 = distinct !{!221, !53, !71}
!222 = distinct !{!222, !53}
!223 = distinct !{!223, !82}
!224 = distinct !{!224, !53}
!225 = distinct !{!225, !53}
!226 = distinct !{!226, !53}
!227 = distinct !{!227, !82}
!228 = distinct !{!228, !53}
!229 = distinct !{!229, !53}
!230 = distinct !{!230, !53}
!231 = distinct !{!231, !53}
!232 = distinct !{!232, !53}
!233 = distinct !{!233, !53}
!234 = distinct !{!234, !53}
!235 = distinct !{!235, !53}
!236 = distinct !{!236, !53}
!237 = distinct !{!237, !53}
!238 = distinct !{!238, !53}
!239 = distinct !{!239, !53}
!240 = distinct !{!240, !53, !71}
!241 = distinct !{!241, !53, !71}
!242 = !{!35, !7, i64 528}
!243 = !{!47, !14, i64 77920}
!244 = !{!16, !7, i64 40}
!245 = !{!16, !7, i64 44}
!246 = !{!16, !7, i64 52}
!247 = !{!16, !7, i64 60}
!248 = !{!16, !7, i64 64}
!249 = !{!16, !7, i64 72}
!250 = !{!16, !7, i64 8688}
!251 = !{!16, !7, i64 8692}
!252 = !{!50, !7, i64 24}
!253 = !{!50, !7, i64 724}
!254 = !{!68, !7, i64 84}
!255 = !{!16, !14, i64 8672}
!256 = !{!16, !7, i64 20}
!257 = !{!50, !7, i64 2392}
!258 = distinct !{!258, !53}
!259 = distinct !{!259, !53}
end_hunk_1
