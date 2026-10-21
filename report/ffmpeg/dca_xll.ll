Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dca_xll?download=true
inline.NumInlined: 155
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 13
begin_hunk_0_@ff_dca_xll_filter_frame:bb.a
.preheader.i238:                                  ; preds = %bb.av
  %i.tj = load i32, ptr %i.sz, align 16, !tbaa !58
  %i.tk = icmp sgt i32 %i.tj, 0
  br i1 %i.tk, label %.lr.ph.i241, label %.loopexit249

.lr.ph.i241:                                      ; preds = %.preheader.i238
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sz, i64 1432
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sz, i64 2264
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sz, i64 2560
  %i.to = sext i32 %i.ta to i64
  %i.tp = getelementptr inbounds nuw i8, ptr %i.sz, i64 688
  %i.tq = sext i32 %i.td to i64
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.lr.ph.i241
  %indvars.iv.i242 = phi i64 [ 0, %.lr.ph.i241 ], [ %indvars.iv.next.i243, %bb.aw ] ; 5 uses
  %.02931.i = phi ptr [ %i.ti, %.lr.ph.i241 ], [ %i.ue, %bb.aw ] ; 3 uses
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.tl, i64 %indvars.iv.i242
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !65 ; 2 uses
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %i.tm, i64 %indvars.iv.i242
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !65
  %i.tv = getelementptr inbounds i8, ptr %i.ts, i64 -32
  %i.tw = getelementptr inbounds nuw [32 x i8], ptr %i.tn, i64 %indvars.iv.i242
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.tv, ptr noundef nonnull align 16 dereferenceable(32) %i.tw, i64 32, i1 false)
  %i.tx = load ptr, ptr %i.sx, align 16, !tbaa !71
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 136
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !164
  tail call void %i.tz(ptr noundef %.02931.i, ptr noundef %i.ts, ptr noundef %i.tu, ptr noundef nonnull @ff_dca_xll_band_coeff, i64 noundef %i.to) #12, !inline_history !140
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %indvars.iv.i242
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !62
  %i.uc = sext i32 %i.ub to i64
  %i.ud = getelementptr inbounds [8 x i8], ptr %i.sy, i64 %i.uc
  store ptr %.02931.i, ptr %i.ud, align 8, !tbaa !65
  %i.ue = getelementptr inbounds [4 x i8], ptr %.02931.i, i64 %i.tq
  %indvars.iv.next.i243 = add nuw nsw i64 %indvars.iv.i242, 1 ; 2 uses
  %i.uf = load i32, ptr %i.sz, align 16, !tbaa !58
  %i.ug = sext i32 %i.uf to i64
  %i.uh = icmp slt i64 %indvars.iv.next.i243, %i.ug
  br i1 %i.uh, label %bb.aw, label %.loopexit249, !llvm.loop !141

.loopexit249:                                     ; preds = %bb.aw, %.preheader.i238
  %indvars.iv.next369 = add nuw nsw i64 %indvars.iv368, 1 ; 2 uses
  %i.ui = load i32, ptr %i.z, align 8, !tbaa !50
  %i.uj = sext i32 %i.ui to i64
  %i.uk = icmp slt i64 %indvars.iv.next369, %i.uj
  br i1 %i.uk, label %bb.av, label %.loopexit250, !llvm.loop !142

.loopexit250:                                     ; preds = %.loopexit249, %.preheader, %.loopexit253
  %i.ul = getelementptr inbounds nuw i8, ptr %i.d, i64 77944
  %i.um = load i32, ptr %i.ul, align 8, !tbaa !74 ; 2 uses
  %.not177 = icmp eq i32 %i.um, 0
  %.pre386 = load i32, ptr %i.y, align 16, !tbaa !149 ; 4 uses
  br i1 %.not177, label %.thread, label %bb.ax

bb.ax:                                            ; preds = %.loopexit250
  %i.un = and i32 %.pre386, 512
  %.not178 = icmp eq i32 %i.un, 0
  br i1 %.not178, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 8816
  %i.up = load ptr, ptr %i.uo, align 16, !tbaa !65
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 8768
  store ptr %i.up, ptr %i.uq, align 16, !tbaa !65
  %i.ur = and i32 %.pre386, -521
  %i.us = or disjoint i32 %i.ur, 8                ; 2 uses
  store i32 %i.us, ptr %i.y, align 16, !tbaa !149
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.ut = phi i32 [ %i.us, %bb.ay ], [ %.pre386, %bb.ax ] ; 3 uses
  %i.uu = and i32 %i.ut, 1024
  %.not179 = icmp eq i32 %i.uu, 0
  br i1 %.not179, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 8824
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !65
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 8776
  store ptr %i.uw, ptr %i.ux, align 8, !tbaa !65
  %i.uy = and i32 %i.ut, -1041
  %i.uz = or disjoint i32 %i.uy, 16               ; 2 uses
  store i32 %i.uz, ptr %i.y, align 16, !tbaa !149
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %i.va = phi i32 [ %i.ut, %bb.az ], [ %i.uz, %bb.ba ] ; 4 uses
  %i.vb = icmp eq i32 %i.um, 6
  %i.vc = and i32 %i.va, 6
  %i.vd = icmp eq i32 %i.vc, 6
  %or.cond = select i1 %i.vb, i1 %i.vd, i1 false
  br i1 %or.cond, label %bb.bc, label %.thread

bb.bc:                                            ; preds = %bb.bb
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !53
  %.not180 = icmp eq i32 %i.vf, 0
  br i1 %.not180, label %.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.vh = load i32, ptr %i.vg, align 16, !tbaa !75
  %.off = add i32 %i.vh, -1
  %switch = icmp ult i32 %.off, 2
  %spec.select476 = select i1 %switch, i32 6, i32 %i.va
  br label %.thread

.thread:                                          ; preds = %bb.bd, %bb.bb, %bb.bc, %.loopexit250
  %.0 = phi i32 [ %spec.select476, %bb.bd ], [ %.pre386, %.loopexit250 ], [ %i.va, %bb.bc ], [ %i.va, %bb.bb ] ; 3 uses
  %i.vi = call i32 @ff_dca_set_channel_layout(ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef %.0) #12
  %.not181 = icmp eq i32 %i.vi, 0
  br i1 %.not181, label %chs_assemble_freq_bands.exit, label %bb.be

bb.be:                                            ; preds = %.thread
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.vk = load i32, ptr %i.vj, align 16, !tbaa !60
  %i.vl = load i32, ptr %i.sr, align 4, !tbaa !73
  %i.vm = add nsw i32 %i.vl, -1                   ; 2 uses
  %i.vn = shl i32 %i.vk, %i.vm
  %i.vo = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  store i32 %i.vn, ptr %i.vo, align 8, !tbaa !165
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !76 ; 3 uses
  switch i32 %i.vq, label %chs_assemble_freq_bands.exit [
    i32 16, label %bb.bg
    i32 20, label %bb.bf
    i32 24, label %bb.bf
  ]

bb.bf:                                            ; preds = %bb.be, %bb.be
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %.sink479 = phi i32 [ 7, %bb.bf ], [ 6, %bb.be ]
  %.sink = phi i32 [ 24, %bb.bf ], [ %i.vq, %bb.be ]
  %i.vr = getelementptr inbounds nuw i8, ptr %i.b, i64 348
  store i32 %.sink479, ptr %i.vr, align 4, !tbaa !166
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.vt = load i32, ptr %i.vs, align 8, !tbaa !64
  %i.vu = sub nsw i32 %.sink, %i.vt               ; 6 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 8732
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !77
  %.not182 = icmp eq i32 %i.vw, 0
  br i1 %.not182, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.vx = getelementptr inbounds nuw i8, ptr %i.b, i64 688
  store i32 62, ptr %i.vx, align 8, !tbaa !167
  br label %bb.bl

bb.bi:                                            ; preds = %bb.bg
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 8728
  %i.vz = load i32, ptr %i.vy, align 8, !tbaa !78
  %.not183 = icmp eq i32 %i.vz, 0
  %i.wa = getelementptr inbounds nuw i8, ptr %i.b, i64 688 ; 2 uses
  br i1 %.not183, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i32 61, ptr %i.wa, align 8, !tbaa !167
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  store i32 60, ptr %i.wa, align 8, !tbaa !167
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %bb.bk, %bb.bh
  %i.wb = getelementptr inbounds nuw i8, ptr %i.b, i64 652
  store i32 %i.vq, ptr %i.wb, align 4, !tbaa !168
  %i.wc = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %i.wc, align 8, !tbaa !169
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.we = load i32, ptr %i.wd, align 8, !tbaa !59
  %i.wf = shl i32 %i.we, %i.vm                    ; 7 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %i.wf, ptr %i.wg, align 8, !tbaa !174
  %i.wh = call i32 @ff_get_buffer(ptr noundef nonnull %i.b, ptr noundef %1, i32 noundef 0) #12 ; 2 uses
  %i.wi = icmp slt i32 %i.wh, 0
  br i1 %i.wi, label %chs_assemble_freq_bands.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.wj = load i32, ptr %i.y, align 16, !tbaa !149 ; 2 uses
  %.not184 = icmp eq i32 %.0, %i.wj
  br i1 %.not184, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.wk = getelementptr inbounds nuw i8, ptr %0, i64 8720
  %i.wl = load ptr, ptr %i.wk, align 16, !tbaa !71
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 8744
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 124
  call void @ff_dca_downmix_to_stereo_fixed(ptr noundef %i.wl, ptr noundef nonnull %i.wm, ptr noundef nonnull %i.wn, i32 noundef %i.wf, i32 noundef %i.wj) #12
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.wo = getelementptr inbounds nuw i8, ptr %i.b, i64 356 ; 2 uses
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !175 ; 2 uses
  %i.wq = icmp sgt i32 %i.wp, 0
  br i1 %i.wq, label %.lr.ph325, label %._crit_edge326

.lr.ph325:                                        ; preds = %bb.bo
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 8744
  %i.ws = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.wt = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.wu = icmp sgt i32 %i.wf, 0                   ; 2 uses
  %wide.trip.count = zext i32 %i.wf to i64        ; 7 uses
  %wide.trip.count377 = zext nneg i32 %i.wf to i64
  %i.wv = load ptr, ptr %i.wt, align 8, !tbaa !176
  %min.iters.check640 = icmp ult i32 %i.wf, 8
  %n.vec642 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %broadcast.splatinsert643 = insertelement <4 x i32> poison, i32 %i.vu, i64 0
  %broadcast.splat644 = shufflevector <4 x i32> %broadcast.splatinsert643, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n651 = icmp eq i64 %n.vec642, %wide.trip.count
  %xtraiter702 = and i64 %wide.trip.count, 1
  %lcmp.mod703.not = icmp eq i64 %xtraiter702, 0
  %i.ww = add nsw i64 %wide.trip.count, -1
  %min.iters.check625 = icmp ult i32 %i.wf, 8
  %n.vec627 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %broadcast.splatinsert628 = insertelement <4 x i32> poison, i32 %i.vu, i64 0
  %broadcast.splat629 = shufflevector <4 x i32> %broadcast.splatinsert628, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n636 = icmp eq i64 %n.vec627, %wide.trip.count
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph325, %.loopexit
  %i.wx = phi i32 [ %i.wp, %.lr.ph325 ], [ %i.zi, %.loopexit ] ; 4 uses
  %indvars.iv379 = phi i64 [ 0, %.lr.ph325 ], [ %indvars.iv.next380, %.loopexit ] ; 3 uses
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv379
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !62
  %i.xa = sext i32 %i.wz to i64
  %i.xb = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.xa
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !65 ; 7 uses
  %i.xd = ptrtoaddr ptr %i.xc to i64
  %2 = load i32, ptr %i.ws, align 4, !tbaa !177
  %i.xe = icmp eq i32 %2, 6
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.wv, i64 %indvars.iv379
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !79 ; 7 uses
  %i.xh = ptrtoaddr ptr %i.xg to i64
  br i1 %i.xe, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.wu, label %.lr.ph322.preheader, label %.loopexit

.lr.ph322.preheader:                              ; preds = %bb.bq
  br i1 %min.iters.check625, label %.lr.ph322.preheader654, label %vector.body630

vector.body630:                                   ; preds = %.lr.ph322.preheader, %vector.body630
  %index631 = phi i64 [ %index.next634, %vector.body630 ], [ 0, %.lr.ph322.preheader ] ; 3 uses
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %index631 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 16
  %wide.load632 = load <4 x i32>, ptr %i.xi, align 4, !tbaa !62
  %wide.load633 = load <4 x i32>, ptr %i.xj, align 4, !tbaa !62
  %i.xk = shl <4 x i32> %wide.load632, %broadcast.splat629
  %i.xl = shl <4 x i32> %wide.load633, %broadcast.splat629
  %i.xm = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.xk, <4 x i32> splat (i32 -32768))
  %i.xn = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.xl, <4 x i32> splat (i32 -32768))
  %i.xo = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.xm, <4 x i32> splat (i32 32767))
  %i.xp = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.xn, <4 x i32> splat (i32 32767))
  %i.xq = trunc nsw <4 x i32> %i.xo to <4 x i16>
  %i.xr = trunc nsw <4 x i32> %i.xp to <4 x i16>
  %i.xs = getelementptr inbounds nuw [2 x i8], ptr %i.xg, i64 %index631 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 8
  store <4 x i16> %i.xq, ptr %i.xs, align 2, !tbaa !81
  store <4 x i16> %i.xr, ptr %i.xt, align 2, !tbaa !81
  %index.next634 = add nuw i64 %index631, 8       ; 2 uses
  %i.xu = icmp eq i64 %index.next634, %n.vec627
  br i1 %i.xu, label %middle.block635, label %vector.body630, !llvm.loop !143

middle.block635:                                  ; preds = %vector.body630
  br i1 %cmp.n636, label %.loopexit, label %.lr.ph322.preheader654

.lr.ph322.preheader654:                           ; preds = %.lr.ph322.preheader, %middle.block635
  %indvars.iv374.ph = phi i64 [ 0, %.lr.ph322.preheader ], [ %n.vec627, %middle.block635 ]
  br label %.lr.ph322

.lr.ph322:                                        ; preds = %.lr.ph322.preheader654, %.lr.ph322
  %indvars.iv374 = phi i64 [ %indvars.iv.next375, %.lr.ph322 ], [ %indvars.iv374.ph, %.lr.ph322.preheader654 ] ; 3 uses
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %indvars.iv374
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !62
  %i.xx = shl i32 %i.xw, %i.vu
  %i.xy = call i32 @llvm.smax.i32(i32 %i.xx, i32 -32768)
  %i.xz = call i32 @llvm.smin.i32(i32 %i.xy, i32 32767)
  %.0.i = trunc nsw i32 %i.xz to i16
  %i.ya = getelementptr inbounds nuw [2 x i8], ptr %i.xg, i64 %indvars.iv374
  store i16 %.0.i, ptr %i.ya, align 2, !tbaa !81
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1 ; 2 uses
  %exitcond378.not = icmp eq i64 %indvars.iv.next375, %wide.trip.count377
  br i1 %exitcond378.not, label %.loopexit, label %.lr.ph322, !llvm.loop !144

bb.br:                                            ; preds = %bb.bp
  br i1 %i.wu, label %.lr.ph319.preheader, label %.loopexit

.lr.ph319.preheader:                              ; preds = %bb.br
  %i.yb = sub i64 %i.xd, %i.xh
  %diff.check = icmp ugt i64 %i.yb, -32
  %or.cond653 = select i1 %min.iters.check640, i1 true, i1 %diff.check
  br i1 %or.cond653, label %.lr.ph319.preheader655, label %vector.body645

vector.body645:                                   ; preds = %.lr.ph319.preheader, %vector.body645
  %index646 = phi i64 [ %index.next649, %vector.body645 ], [ 0, %.lr.ph319.preheader ] ; 3 uses
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %index646 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 16
  %wide.load647 = load <4 x i32>, ptr %i.yc, align 4, !tbaa !62
  %wide.load648 = load <4 x i32>, ptr %i.yd, align 4, !tbaa !62
  %i.ye = shl <4 x i32> %wide.load647, %broadcast.splat644
  %i.yf = shl <4 x i32> %wide.load648, %broadcast.splat644
  %i.yg = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ye, <4 x i32> splat (i32 -8388608))
  %i.yh = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.yf, <4 x i32> splat (i32 -8388608))
  %i.yi = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.yg, <4 x i32> splat (i32 8388607))
  %i.yj = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.yh, <4 x i32> splat (i32 8388607))
  %i.yk = shl nsw <4 x i32> %i.yi, splat (i32 8)
  %i.yl = shl nsw <4 x i32> %i.yj, splat (i32 8)
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.xg, i64 %index646 ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 16
  store <4 x i32> %i.yk, ptr %i.ym, align 4, !tbaa !62
  store <4 x i32> %i.yl, ptr %i.yn, align 4, !tbaa !62
  %index.next649 = add nuw i64 %index646, 8       ; 2 uses
  %i.yo = icmp eq i64 %index.next649, %n.vec642
  br i1 %i.yo, label %middle.block650, label %vector.body645, !llvm.loop !145

middle.block650:                                  ; preds = %vector.body645
  br i1 %cmp.n651, label %.loopexit.loopexit327, label %.lr.ph319.preheader655

.lr.ph319.preheader655:                           ; preds = %.lr.ph319.preheader, %middle.block650
  %indvars.iv371.ph = phi i64 [ 0, %.lr.ph319.preheader ], [ %n.vec642, %middle.block650 ] ; 5 uses
  br i1 %lcmp.mod703.not, label %.lr.ph319.prol.loopexit, label %.lr.ph319.prol

.lr.ph319.prol:                                   ; preds = %.lr.ph319.preheader655
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %indvars.iv371.ph
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !62
  %i.yr = shl i32 %i.yq, %i.vu
  %i.ys = call i32 @llvm.smax.i32(i32 %i.yr, i32 -8388608)
  %.0.i.i.prol = call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.ys, i32 8388607)
  %i.yt = shl nsw i32 %.0.i.i.prol, 8
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %i.xg, i64 %indvars.iv371.ph
  store i32 %i.yt, ptr %i.yu, align 4, !tbaa !62
  %indvars.iv.next372.prol = or disjoint i64 %indvars.iv371.ph, 1
  br label %.lr.ph319.prol.loopexit

.lr.ph319.prol.loopexit:                          ; preds = %.lr.ph319.prol, %.lr.ph319.preheader655
  %indvars.iv371.unr = phi i64 [ %indvars.iv371.ph, %.lr.ph319.preheader655 ], [ %indvars.iv.next372.prol, %.lr.ph319.prol ]
  %i.yv = icmp eq i64 %indvars.iv371.ph, %i.ww
  br i1 %i.yv, label %.loopexit.loopexit327, label %.lr.ph319

.lr.ph319:                                        ; preds = %.lr.ph319.prol.loopexit, %.lr.ph319
  %indvars.iv371 = phi i64 [ %indvars.iv.next372.1, %.lr.ph319 ], [ %indvars.iv371.unr, %.lr.ph319.prol.loopexit ] ; 4 uses
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %indvars.iv371
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !62
  %i.yy = shl i32 %i.yx, %i.vu
  %i.yz = call i32 @llvm.smax.i32(i32 %i.yy, i32 -8388608)
  %.0.i.i = call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.yz, i32 8388607)
  %i.za = shl nsw i32 %.0.i.i, 8
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.xg, i64 %indvars.iv371
  store i32 %i.za, ptr %i.zb, align 4, !tbaa !62
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1 ; 2 uses
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %indvars.iv.next372
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !62
  %i.ze = shl i32 %i.zd, %i.vu
  %i.zf = call i32 @llvm.smax.i32(i32 %i.ze, i32 -8388608)
  %.0.i.i.1 = call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.zf, i32 8388607)
  %i.zg = shl nsw i32 %.0.i.i.1, 8
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %i.xg, i64 %indvars.iv.next372
  store i32 %i.zg, ptr %i.zh, align 4, !tbaa !62
  %indvars.iv.next372.1 = add nuw nsw i64 %indvars.iv371, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next372.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit.loopexit327, label %.lr.ph319, !llvm.loop !146

.loopexit.loopexit327:                            ; preds = %.lr.ph319.prol.loopexit, %.lr.ph319, %middle.block650
  %.pre387.a = load i32, ptr %i.wo, align 4, !tbaa !175
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph322, %middle.block635, %.loopexit.loopexit327, %bb.br, %bb.bq
  %i.zi = phi i32 [ %.pre387.a, %.loopexit.loopexit327 ], [ %i.wx, %bb.bq ], [ %i.wx, %bb.br ], [ %i.wx, %middle.block635 ], [ %i.wx, %.lr.ph322 ] ; 2 uses
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 2 uses
  %i.zj = sext i32 %i.zi to i64
  %i.zk = icmp slt i64 %indvars.iv.next380, %i.zj
  br i1 %i.zk, label %bb.bp, label %._crit_edge326, !llvm.loop !147

._crit_edge326:                                   ; preds = %.loopexit, %bb.bo
  %i.zl = getelementptr inbounds nuw i8, ptr %i.d, i64 46392
  %i.zm = load i32, ptr %i.zl, align 8, !tbaa !82
  %.not185 = icmp eq i32 %i.zm, 0
  br i1 %.not185, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %._crit_edge326
  %i.zn = getelementptr inbounds nuw i8, ptr %i.d, i64 46412
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !178 ; 2 uses
  %switch.selectcmp = icmp eq i32 %i.zo, 3
  %switch.select = select i1 %switch.selectcmp, i32 6, i32 0
  %switch.selectcmp191 = icmp eq i32 %i.zo, 2
  %switch.select192 = select i1 %switch.selectcmp191, i32 1, i32 %switch.select
  br label %bb.bv

bb.bt:                                            ; preds = %._crit_edge326
  %i.zp = load i32, ptr %i.y, align 16, !tbaa !149
  %.not186 = icmp eq i32 %.0, %i.zp
  br i1 %.not186, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.zq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.zr = load i32, ptr %i.zq, align 16, !tbaa !75
  %i.zs = icmp eq i32 %i.zr, 2
  %spec.select = zext i1 %i.zs to i32
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bs, %bb.bt
  %.0162 = phi i32 [ %spec.select, %bb.bu ], [ %switch.select192, %bb.bs ], [ 0, %bb.bt ]
  %i.zt = call i32 @ff_side_data_update_matrix_encoding(ptr noundef nonnull %1, i32 noundef %.0162) #12
  %. = call i32 @llvm.smin.i32(i32 %i.zt, i32 0)
  br label %chs_assemble_freq_bands.exit

chs_assemble_freq_bands.exit:                     ; preds = %bb.av, %bb.v, %bb.j, %ff_dca_core_map_spkr.exit.thread90.i, %bb.n, %bb.l, %bb.bv, %bb.bl, %bb.be, %.thread
  %.0166 = phi i32 [ %i.wh, %bb.bl ], [ -1094995529, %bb.l ], [ -22, %.thread ], [ -22, %bb.be ], [ %., %bb.bv ], [ -1094995529, %bb.v ], [ -22, %bb.j ], [ -1094995529, %ff_dca_core_map_spkr.exit.thread90.i ], [ -1094995529, %bb.n ], [ -12, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0166
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @force_lossy_output(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 720 ; 2 uses
  %i.e = load i32, ptr %i.d, align 16, !tbaa !67
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %i.g = load i32, ptr %1, align 16, !tbaa !58    ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph22, label %._crit_edge

.lr.ph22:                                         ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.k = getelementptr i8, ptr %i.c, i64 156
  %wide.trip.count = zext nneg i32 %i.g to i64
  %.pre = load i32, ptr %i.i, align 4, !tbaa !57
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01620 = phi i32 [ %i.l, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  tail call fastcc void @chs_clear_band_data(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %.01620, i32 noundef -1) #13
  %i.l = add nuw nsw i32 %.01620, 1               ; 2 uses
  %i.m = load i32, ptr %i.d, align 16, !tbaa !67
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %.lr.ph, label %.preheader, !llvm.loop !179

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
  %i.t = load i32, ptr %i.s, align 4, !tbaa !62   ; 4 uses
  %.val = load i32, ptr %i.k, align 4, !tbaa !63  ; 3 uses
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
  store i32 %i.ac, ptr %i.i, align 4, !tbaa !57
  br label %ff_dca_core_map_spkr.exit.thread18

ff_dca_core_map_spkr.exit.thread18:               ; preds = %bb.e, %ff_dca_core_map_spkr.exit, %bb.b, %ff_dca_core_map_spkr.exit.thread
  %i.ad = phi i32 [ %i.o, %bb.e ], [ %i.o, %ff_dca_core_map_spkr.exit ], [ %i.o, %bb.b ], [ %i.ac, %ff_dca_core_map_spkr.exit.thread ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !180

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
  %i.g = load i32, ptr %i.f, align 8, !tbaa !59   ; 5 uses
  %i.h = load i32, ptr %1, align 16, !tbaa !58    ; 2 uses
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
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !65   ; 8 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv172
  %i.u = load i32, ptr %i.t, align 4, !tbaa !62   ; 6 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.c, label %.preheader112

.preheader112:                                    ; preds = %bb.b
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv172 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !62
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

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !54}
!1 = distinct !{!1, !54}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"override-stack-alignment", i32 16}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS14AVCodecContext", !11, i64 0}
!13 = !{!"p1 omnipotent char", !11, i64 0}
!14 = !{!"GetBitContext", !13, i64 0, !8, i64 8, !8, i64 12, !8, i64 16}
!15 = !{!"p1 int", !11, i64 0}
!16 = !{!"p1 _ZTS13DCADSPContext", !11, i64 0}
!17 = !{!"DCAXllDecoder", !12, i64 0, !14, i64 8, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !7, i64 80, !15, i64 8672, !8, i64 8680, !8, i64 8684, !8, i64 8688, !8, i64 8692, !8, i64 8696, !8, i64 8700, !13, i64 8704, !8, i64 8712, !8, i64 8716, !16, i64 8720, !8, i64 8728, !8, i64 8732, !8, i64 8736, !7, i64 8744}
!18 = !{!"DCAExssAsset", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116}
!19 = !{!17, !8, i64 32}
!20 = !{!17, !12, i64 0}
!21 = !{!"p1 _ZTS7AVClass", !11, i64 0}
!22 = !{!"p1 _ZTS7AVCodec", !11, i64 0}
!23 = !{!"p1 _ZTS15AVCodecInternal", !11, i64 0}
!24 = !{!"long", !7, i64 0}
!25 = !{!"AVRational", !8, i64 0, !8, i64 4}
!26 = !{!"float", !7, i64 0}
!27 = !{!"p1 short", !11, i64 0}
!28 = !{!"AVChannelLayout", !8, i64 0, !8, i64 4, !7, i64 8, !11, i64 16}
!29 = !{!"p1 _ZTS10RcOverride", !11, i64 0}
!30 = !{!"p1 _ZTS9AVHWAccel", !11, i64 0}
!31 = !{!"p1 _ZTS11AVBufferRef", !11, i64 0}
!32 = !{!"p1 _ZTS17AVCodecDescriptor", !11, i64 0}
!33 = !{!"p1 _ZTS16AVPacketSideData", !11, i64 0}
!34 = !{!"any p2 pointer", !11, i64 0}
!35 = !{!"p2 _ZTS15AVFrameSideData", !34, i64 0}
!36 = !{!"AVCodecContext", !21, i64 0, !8, i64 8, !8, i64 12, !22, i64 16, !8, i64 24, !8, i64 28, !11, i64 32, !23, i64 40, !11, i64 48, !24, i64 56, !8, i64 64, !8, i64 68, !13, i64 72, !8, i64 80, !25, i64 84, !25, i64 92, !25, i64 100, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !25, i64 128, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !11, i64 184, !11, i64 192, !8, i64 200, !26, i64 204, !26, i64 208, !26, i64 212, !26, i64 216, !26, i64 220, !26, i64 224, !26, i64 228, !26, i64 232, !26, i64 236, !8, i64 240, !8, i64 244, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !27, i64 288, !27, i64 296, !27, i64 304, !8, i64 312, !8, i64 316, !8, i64 320, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !8, i64 348, !28, i64 352, !8, i64 376, !8, i64 380, !8, i64 384, !8, i64 388, !8, i64 392, !8, i64 396, !8, i64 400, !8, i64 404, !11, i64 408, !8, i64 416, !8, i64 420, !8, i64 424, !26, i64 428, !26, i64 432, !8, i64 436, !8, i64 440, !8, i64 444, !8, i64 448, !8, i64 452, !29, i64 456, !24, i64 464, !24, i64 472, !26, i64 480, !26, i64 484, !8, i64 488, !8, i64 492, !13, i64 496, !13, i64 504, !8, i64 512, !8, i64 516, !8, i64 520, !8, i64 524, !8, i64 528, !30, i64 536, !11, i64 544, !31, i64 552, !31, i64 560, !8, i64 568, !8, i64 572, !7, i64 576, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !8, i64 656, !8, i64 660, !8, i64 664, !11, i64 672, !11, i64 680, !8, i64 688, !8, i64 692, !8, i64 696, !8, i64 700, !8, i64 704, !8, i64 708, !8, i64 712, !8, i64 716, !8, i64 720, !32, i64 728, !13, i64 736, !8, i64 744, !8, i64 748, !13, i64 752, !13, i64 760, !13, i64 768, !33, i64 776, !8, i64 784, !8, i64 788, !24, i64 792, !8, i64 800, !8, i64 804, !24, i64 808, !11, i64 816, !24, i64 824, !15, i64 832, !8, i64 840, !35, i64 848, !8, i64 856, !8, i64 860}
!37 = !{!36, !11, i64 32}
!38 = !{!"DCADCTContext", !7, i64 0}
!39 = !{!"SynthFilterContext", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!40 = !{!"p1 _ZTS17AVFloatDSPContext", !11, i64 0}
!41 = !{!"p1 _ZTS17AVFixedDSPContext", !11, i64 0}
!42 = !{!"DCACoreDecoder", !12, i64 0, !14, i64 8, !14, i64 32, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !7, i64 144, !7, i64 151, !7, i64 158, !7, i64 165, !7, i64 172, !7, i64 179, !7, i64 186, !7, i64 256, !7, i64 536, !7, i64 552, !7, i64 1000, !7, i64 1896, !7, i64 2344, !7, i64 5928, !7, i64 7720, !7, i64 7728, !8, i64 9520, !8, i64 9524, !7, i64 9528, !8, i64 9624, !8, i64 9628, !8, i64 9632, !8, i64 9636, !8, i64 9640, !8, i64 9644, !8, i64 9648, !8, i64 9652, !7, i64 9656, !7, i64 9664, !8, i64 9712, !8, i64 9716, !8, i64 9720, !8, i64 9724, !8, i64 9728, !8, i64 9732, !8, i64 9736, !8, i64 9740, !8, i64 9744, !15, i64 9752, !7, i64 9760, !8, i64 13344, !15, i64 13352, !7, i64 13360, !15, i64 15152, !7, i64 15168, !16, i64 45744, !38, i64 45752, !7, i64 45768, !7, i64 45784, !39, i64 45800, !40, i64 45832, !41, i64 45840, !8, i64 45848, !11, i64 45856, !7, i64 45864, !8, i64 46120, !26, i64 46124, !7, i64 46128, !8, i64 46256, !8, i64 46260, !8, i64 46264, !8, i64 46268}
!43 = !{!"DCAExssParser", !12, i64 0, !14, i64 8, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !7, i64 64, !7, i64 80}
!44 = !{!"p1 float", !11, i64 0}
!45 = !{!"p1 _ZTS11AVTXContext", !11, i64 0}
!46 = !{!"DCALbrDecoder", !12, i64 0, !14, i64 8, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !7, i64 108, !7, i64 204, !7, i64 236, !7, i64 332, !7, i64 428, !7, i64 452, !7, i64 1028, !7, i64 2180, !7, i64 2348, !7, i64 3692, !7, i64 3716, !7, i64 5252, !7, i64 5492, !7, i64 5496, !7, i64 7800, !7, i64 7928, !44, i64 9464, !8, i64 9472, !7, i64 9488, !7, i64 12560, !7, i64 13072, !7, i64 13328, !26, i64 13368, !7, i64 13372, !7, i64 13378, !7, i64 14018, !8, i64 22212, !45, i64 22216, !11, i64 22224, !40, i64 22232, !16, i64 22240}
!47 = !{!"DCADSPContext", !11, i64 0, !11, i64 8, !7, i64 16, !11, i64 32, !7, i64 40, !11, i64 56, !11, i64 64, !7, i64 72, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152}
!48 = !{!"DCAContext", !21, i64 0, !12, i64 8, !42, i64 16, !43, i64 46288, !17, i64 46496, !46, i64 55504, !47, i64 77760, !15, i64 77920, !13, i64 77928, !8, i64 77936, !8, i64 77940, !8, i64 77944, !8, i64 77948, !8, i64 77952, !28, i64 77960}
!49 = !{!17, !8, i64 36}
!50 = !{!17, !8, i64 8696}
!51 = !{!"DCAXllChSet", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !7, i64 44, !7, i64 556, !7, i64 620, !8, i64 684, !7, i64 688, !8, i64 720, !8, i64 724, !7, i64 728, !8, i64 2392, !7, i64 2396, !7, i64 2428, !7, i64 2460, !7, i64 2492, !7, i64 2524, !7, i64 2560, !7, i64 2816, !7, i64 2832}
!52 = !{!51, !8, i64 20}
!53 = !{!51, !8, i64 28}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!17, !8, i64 68}
!56 = !{!17, !8, i64 76}
!57 = !{!51, !8, i64 4}
!58 = !{!51, !8, i64 0}
!59 = !{!17, !8, i64 56}
!60 = !{!51, !8, i64 16}
!61 = !{!51, !8, i64 36}
!62 = !{!8, !8, i64 0}
!63 = !{!42, !8, i64 140}
!64 = !{!51, !8, i64 8}
!65 = !{!15, !15, i64 0}
!66 = !{!51, !8, i64 40}
!67 = !{!51, !8, i64 720}
!68 = !{!51, !8, i64 684}
!69 = !{!"DCAXllBand", !8, i64 0, !7, i64 4, !7, i64 36, !7, i64 52, !8, i64 84, !7, i64 88, !7, i64 120, !8, i64 632, !8, i64 636, !7, i64 640, !7, i64 672, !7, i64 704, !7, i64 768}
!70 = !{!69, !8, i64 632}
!71 = !{!17, !16, i64 8720}
!72 = !{!"llvm.loop.unswitch.partial.disable"}
!73 = !{!17, !8, i64 8684}
!74 = !{!48, !8, i64 77944}
!75 = !{!51, !8, i64 32}
!76 = !{!51, !8, i64 12}
!77 = !{!17, !8, i64 8732}
!78 = !{!17, !8, i64 8728}
!79 = !{!13, !13, i64 0}
!80 = !{!"short", !7, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{!18, !8, i64 24}
!83 = !{!"llvm.loop.unroll.disable"}
!84 = !{!69, !8, i64 0}
!85 = !{!14, !13, i64 0}
!86 = !{!14, !8, i64 12}
!87 = !{!14, !8, i64 16}
!88 = !{!14, !8, i64 8}
!89 = !{!7, !7, i64 0}
!90 = !{!17, !8, i64 48}
!91 = !{!69, !8, i64 636}
!92 = !{!17, !8, i64 8700}
!93 = !{!18, !8, i64 116}
!94 = !{!17, !8, i64 8712}
!95 = !{!17, !8, i64 8716}
!96 = !{!18, !8, i64 100}
!97 = !{!18, !8, i64 96}
!98 = !{!17, !13, i64 8704}
!99 = !{!18, !8, i64 104}
!100 = !{!18, !8, i64 112}
!101 = !{!18, !8, i64 108}
!102 = distinct !{!102, !54}
!103 = distinct !{!103, i1 false, !"LVerDomain"}
!104 = distinct !{!104, !103}
!105 = distinct !{!105, !103}
!106 = distinct !{!106, !54, !154, !155}
!107 = distinct !{!107, i1 false, !"LVerDomain"}
!108 = distinct !{!108, !107}
!109 = distinct !{!109, !107}
!110 = distinct !{!110, !54, !154, !155}
!111 = distinct !{!111, !54, !154}
!112 = distinct !{!112, !54, !154}
!113 = distinct !{!113, !54}
!114 = distinct !{!114, !54, !154, !155}
!115 = distinct !{!115, i1 false, !"LVerDomain"}
!116 = distinct !{!116, !115}
!117 = distinct !{!117, !115}
!118 = distinct !{!118, !54, !154, !155}
!119 = distinct !{!119, !54, !154}
!120 = distinct !{!120, !54, !155, !154}
!121 = distinct !{!121, !54}
!122 = distinct !{!122, !54, !154, !155}
!123 = distinct !{!123, i1 false, !"LVerDomain"}
!124 = distinct !{!124, !123}
!125 = distinct !{!125, !123}
!126 = distinct !{!126, !54, !154, !155}
!127 = distinct !{!127, !54, !154}
!128 = distinct !{!128, !54, !155, !154}
!129 = distinct !{!129, !54}
!130 = distinct !{null}
!131 = distinct !{!131, !54}
!132 = distinct !{!132, !54}
!133 = distinct !{!133, !54}
!134 = distinct !{null}
!135 = distinct !{!135, !54}
!136 = distinct !{!136, !54, !72}
!137 = distinct !{!137, !54}
!138 = distinct !{!138, !54}
!139 = distinct !{!139, !54}
!140 = distinct !{null}
!141 = distinct !{!141, !54}
!142 = distinct !{!142, !54}
!143 = distinct !{!143, !54, !154, !155}
!144 = distinct !{!144, !54, !155, !154}
!145 = distinct !{!145, !54, !154, !155}
!146 = distinct !{!146, !54, !154}
!147 = distinct !{!147, !54}
!148 = !{!48, !8, i64 77940}
!149 = !{!17, !8, i64 8736}
!150 = !{!48, !8, i64 46280}
!151 = !{!48, !8, i64 46276}
!152 = !{!104}
!153 = !{!105}
!154 = !{!"llvm.loop.isvectorized", i32 1}
!155 = !{!"llvm.loop.unroll.runtime.disable"}
!156 = !{!108}
!157 = !{!109}
!158 = !{!116}
!159 = !{!117}
!160 = !{!124}
!161 = !{!125}
!162 = !{!47, !11, i64 120}
!163 = !{!47, !11, i64 104}
!164 = !{!47, !11, i64 136}
!165 = !{!36, !8, i64 344}
!166 = !{!36, !8, i64 348}
!167 = !{!36, !8, i64 688}
!168 = !{!36, !8, i64 652}
!169 = !{!36, !24, i64 56}
!170 = !{!"p2 omnipotent char", !34, i64 0}
!171 = !{!"p2 _ZTS11AVBufferRef", !34, i64 0}
!172 = !{!"p1 _ZTS12AVDictionary", !11, i64 0}
!173 = !{!"AVFrame", !7, i64 0, !7, i64 64, !170, i64 96, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !25, i64 124, !24, i64 136, !24, i64 144, !25, i64 152, !8, i64 160, !11, i64 168, !8, i64 176, !8, i64 180, !7, i64 184, !171, i64 248, !8, i64 256, !35, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292, !8, i64 296, !24, i64 304, !172, i64 312, !8, i64 320, !31, i64 328, !31, i64 336, !24, i64 344, !24, i64 352, !24, i64 360, !24, i64 368, !11, i64 376, !28, i64 384, !24, i64 408, !8, i64 416}
!174 = !{!173, !8, i64 112}
!175 = !{!36, !8, i64 356}
!176 = !{!173, !170, i64 96}
!177 = !{!173, !8, i64 116}
!178 = !{!18, !8, i64 44}
!179 = distinct !{!179, !54}
!180 = distinct !{!180, !54}
!181 = distinct !{!181, !54}
!182 = distinct !{!182, !54}
!183 = distinct !{!183, !54}
!184 = distinct !{!184, !83}
!185 = distinct !{!185, !54}
!186 = distinct !{!186, !54}
!187 = distinct !{!187, !83}
!188 = distinct !{!188, !54}
!189 = distinct !{!189, !54}
!190 = distinct !{!190, !54}
!191 = distinct !{!191, !54}
!192 = distinct !{!192, !83}
!193 = distinct !{!193, !54}
!194 = distinct !{!194, !83}
!195 = !{!47, !11, i64 88}
!196 = distinct !{!196, !54}
!197 = distinct !{!197, !54}
!198 = !{!17, !8, i64 8680}
!199 = distinct !{!199, !54}
!200 = distinct !{!200, !54}
!201 = distinct !{!201, !54}
!202 = distinct !{!202, !54}
!203 = distinct !{!203, !54}
!204 = distinct !{!204, !54}
!205 = distinct !{!205, !54}
!206 = distinct !{!206, !54}
!207 = distinct !{!207, !54}
!208 = distinct !{!208, !54}
!209 = distinct !{!209, !54}
!210 = distinct !{!210, !54}
!211 = distinct !{!211, !54}
!212 = distinct !{!212, !54}
!213 = distinct !{!213, !54}
!214 = distinct !{!214, !54}
!215 = distinct !{!215, !54}
!216 = distinct !{!216, !54}
!217 = distinct !{!217, !54}
!218 = distinct !{!218, !54, !72}
!219 = distinct !{!219, !54}
!220 = distinct !{!220, !54}
!221 = distinct !{!221, !54, !72}
!222 = distinct !{!222, !54, !72}
!223 = distinct !{!223, !54}
!224 = distinct !{!224, !83}
!225 = distinct !{!225, !54}
!226 = distinct !{!226, !54}
!227 = distinct !{!227, !54}
!228 = distinct !{!228, !83}
!229 = distinct !{!229, !54}
!230 = distinct !{!230, !54}
!231 = distinct !{!231, !54}
!232 = distinct !{!232, !54}
!233 = distinct !{!233, !54}
!234 = distinct !{!234, !54}
!235 = distinct !{!235, !54}
!236 = distinct !{!236, !54}
!237 = distinct !{!237, !54}
!238 = distinct !{!238, !54}
!239 = distinct !{!239, !54}
!240 = distinct !{!240, !54}
!241 = distinct !{!241, !54, !72}
!242 = distinct !{!242, !54, !72}
!243 = !{!36, !8, i64 528}
!244 = !{!48, !15, i64 77920}
!245 = !{!17, !8, i64 40}
!246 = !{!17, !8, i64 44}
!247 = !{!17, !8, i64 52}
!248 = !{!17, !8, i64 60}
!249 = !{!17, !8, i64 64}
!250 = !{!17, !8, i64 72}
!251 = !{!17, !8, i64 8688}
!252 = !{!17, !8, i64 8692}
!253 = !{!51, !8, i64 24}
!254 = !{!51, !8, i64 724}
!255 = !{!69, !8, i64 84}
!256 = !{!17, !15, i64 8672}
!257 = !{!17, !8, i64 20}
!258 = !{!51, !8, i64 2392}
!259 = distinct !{!259, !54}
!260 = distinct !{!260, !54}
end_hunk_1
