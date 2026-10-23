Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/yuv2rgb?download=true
inline.NumInlined: 42
inline.NumDeleted: 3
begin_hunk_0_@ff_yuv2rgb_c_init_tables:bb.a
bb.aq:                                            ; preds = %bb.e
  %i.tz = insertelement <2 x i1> poison, i1 %i.c, i64 0
  %i.ua = shufflevector <2 x i1> %i.tz, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ub = select <2 x i1> %i.ua, <2 x i32> <i32 20, i32 0>, <2 x i32> <i32 0, i32 20> ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ud = load i32, ptr %i.uc, align 8, !tbaa !31 ; 2 uses
  %i.ue = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.ud) #7 ; 2 uses
  %.not.i449 = icmp eq ptr %i.ue, null
  br i1 %.not.i449, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 901) #7
  tail call void @abort() #8
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.uf = icmp eq i32 %i.ud, 11
  br i1 %i.uf, label %isALPHA.exit451, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  %i.uh = load i64, ptr %i.ug, align 8, !tbaa !34
  %i.ui = and i64 %i.uh, 128
  %i.uj = icmp eq i64 %i.ui, 0
  %i.uk = select i1 %i.uj, i32 -1073741824, i32 0
  br label %isALPHA.exit451

isALPHA.exit451:                                  ; preds = %bb.as, %bb.at
  %.0.i450 = phi i32 [ %i.uk, %bb.at ], [ 0, %bb.as ]
  %i.ul = tail call noalias ptr @av_malloc(i64 noundef 24576) #7 ; 5 uses
  store ptr %i.ul, ptr %i.dw, align 8, !tbaa !123
  %.not439 = icmp eq ptr %i.ul, null
  br i1 %.not439, label %fill_gv_table.exit, label %vector.ph850

vector.ph850:                                     ; preds = %isALPHA.exit451
  %.neg714 = mul nsw i64 %i.bk, -512
  %reass.sub758 = sub nsw i64 %.neg714, %i.ah
  %i.um = add nsw i64 %reass.sub758, -25165824
  %broadcast.splat852 = shufflevector <2 x i32> %i.ub, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert853 = insertelement <4 x i32> poison, i32 %.0.i450, i64 0
  %broadcast.splat854 = shufflevector <4 x i32> %broadcast.splatinsert853, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat856 = shufflevector <2 x i32> %i.ub, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert857 = insertelement <4 x i64> poison, i64 %i.um, i64 0
  %broadcast.splat858 = shufflevector <4 x i64> %broadcast.splatinsert857, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splat860 = shufflevector <4 x i64> %i.by, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.un = mul nsw <4 x i64> %broadcast.splat860, <i64 0, i64 1, i64 2, i64 3>
  %induction861 = add nsw <4 x i64> %broadcast.splat858, %i.un
  %i.uo = shl nsw i64 %i.bk, 2
  %broadcast.splatinsert862 = insertelement <4 x i64> poison, i64 %i.uo, i64 0
  %broadcast.splat863 = shufflevector <4 x i64> %broadcast.splatinsert862, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body864

vector.body864:                                   ; preds = %vector.body864, %vector.ph850
  %index865 = phi i64 [ 0, %vector.ph850 ], [ %index.next867, %vector.body864 ] ; 2 uses
  %vec.ind866 = phi <4 x i64> [ %induction861, %vector.ph850 ], [ %vec.ind.next868, %vector.body864 ] ; 2 uses
  %i.up = add nsw <4 x i64> %vec.ind866, splat (i64 32768)
  %i.uq = lshr <4 x i64> %i.up, splat (i64 14)
  %i.ur = trunc <4 x i64> %i.uq to <4 x i32>
  %i.us = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ur, <4 x i32> zeroinitializer)
  %i.ut = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.us, <4 x i32> splat (i32 1023)) ; 3 uses
  %i.uu = shl nuw nsw <4 x i32> %i.ut, %broadcast.splat852
  %i.uv = or disjoint <4 x i32> %i.uu, %broadcast.splat854
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %index865 ; 3 uses
  store <4 x i32> %i.uv, ptr %i.uw, align 4, !tbaa !36
  %i.ux = shl nuw nsw <4 x i32> %i.ut, splat (i32 10)
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uw, i64 8192
  store <4 x i32> %i.ux, ptr %i.uy, align 4, !tbaa !36
  %i.uz = shl nuw nsw <4 x i32> %i.ut, %broadcast.splat856
  %i.va = getelementptr inbounds nuw i8, ptr %i.uw, i64 16384
  store <4 x i32> %i.uz, ptr %i.va, align 4, !tbaa !36
  %index.next867 = add nuw i64 %index865, 4       ; 2 uses
  %vec.ind.next868 = add nsw <4 x i64> %vec.ind866, %broadcast.splat863
  %i.vb = icmp eq i64 %index.next867, 2048
  br i1 %i.vb, label %middle.block869, label %vector.body864, !llvm.loop !110

middle.block869:                                  ; preds = %vector.body864
  br i1 %i.d, label %vector.body871, label %.loopexit737

vector.body871:                                   ; preds = %middle.block869, %vector.body871
  %index872 = phi i64 [ %index.next873, %vector.body871 ], [ 0, %middle.block869 ] ; 2 uses
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %index872 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.vc, align 4, !tbaa !36
  %i.vd = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  store <4 x i32> %i.vd, ptr %i.vc, align 4, !tbaa !36
  %index.next873 = add nuw i64 %index872, 4       ; 2 uses
  %i.ve = icmp eq i64 %index.next873, 6144
  br i1 %i.ve, label %.loopexit737, label %vector.body871, !llvm.loop !111

.loopexit737:                                     ; preds = %vector.body871, %middle.block869
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 8832
  %i.vg = zext nneg i32 %i.g to i64
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %i.vg ; 3 uses
  %i.vi = ashr i64 %i.dm, 7
  %i.vj = and i64 %i.vi, -4
  %i.vk = sub nsw i64 0, %i.vj
  %i.vl = getelementptr inbounds i8, ptr %i.vh, i64 %i.vk
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.loopexit737
  %indvars.iv.i649 = phi i64 [ 0, %.loopexit737 ], [ %indvars.iv.next.i653, %bb.au ] ; 5 uses
  %i.vm = and i64 %indvars.iv.i649, 1792
  %.not.i.i650 = icmp eq i64 %i.vm, 512
  %isnotneg.i.i651 = icmp samesign ugt i64 %indvars.iv.i649, 511
  %i.vn = sext i1 %isnotneg.i.i651 to i64
  %.0.i.i652 = select i1 %.not.i.i650, i64 %indvars.iv.i649, i64 %i.vn
  %i.vo = and i64 %.0.i.i652, 255
  %i.vp = mul nsw i64 %i.vo, %i.dm
  %i.vq = ashr i64 %i.vp, 14
  %i.vr = and i64 %i.vq, -4
  %i.vs = getelementptr inbounds i8, ptr %i.vl, i64 %i.vr
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.vf, i64 %indvars.iv.i649
  store ptr %i.vs, ptr %i.vt, align 8, !tbaa !35
  %indvars.iv.next.i653 = add nuw nsw i64 %indvars.iv.i649, 1 ; 2 uses
  %exitcond.not.i654 = icmp eq i64 %indvars.iv.next.i653, 1280
  br i1 %exitcond.not.i654, label %fill_table.exit655, label %bb.au, !llvm.loop !101

fill_table.exit655:                               ; preds = %bb.au
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 19072
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vh, i64 8192
  %i.vw = ashr i64 %i.ds, 7
  %i.vx = and i64 %i.vw, -4
  %i.vy = sub nsw i64 0, %i.vx
  %i.vz = getelementptr inbounds i8, ptr %i.vv, i64 %i.vy
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %fill_table.exit655
  %indvars.iv.i656 = phi i64 [ 0, %fill_table.exit655 ], [ %indvars.iv.next.i660, %bb.av ] ; 5 uses
  %i.wa = and i64 %indvars.iv.i656, 1792
  %.not.i.i657 = icmp eq i64 %i.wa, 512
  %isnotneg.i.i658 = icmp samesign ugt i64 %indvars.iv.i656, 511
  %i.wb = sext i1 %isnotneg.i.i658 to i64
  %.0.i.i659 = select i1 %.not.i.i657, i64 %indvars.iv.i656, i64 %i.wb
  %i.wc = and i64 %.0.i.i659, 255
  %i.wd = mul nsw i64 %i.wc, %i.ds
  %i.we = ashr i64 %i.wd, 14
  %i.wf = and i64 %i.we, -4
  %i.wg = getelementptr inbounds i8, ptr %i.vz, i64 %i.wf
  %i.wh = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %indvars.iv.i656
  store ptr %i.wg, ptr %i.wh, align 8, !tbaa !35
  %indvars.iv.next.i660 = add nuw nsw i64 %indvars.iv.i656, 1 ; 2 uses
  %exitcond.not.i661 = icmp eq i64 %indvars.iv.next.i660, 1280
  br i1 %exitcond.not.i661, label %fill_table.exit662, label %bb.av, !llvm.loop !101

fill_table.exit662:                               ; preds = %bb.av
  %i.wi = getelementptr inbounds nuw i8, ptr %0, i64 29312
  %i.wj = getelementptr inbounds nuw i8, ptr %i.vh, i64 16384
  %i.wk = ashr i64 %i.dp, 7
  %i.wl = and i64 %i.wk, -4
  %i.wm = sub nsw i64 0, %i.wl
  %i.wn = getelementptr inbounds i8, ptr %i.wj, i64 %i.wm
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %fill_table.exit662
  %indvars.iv.i663 = phi i64 [ 0, %fill_table.exit662 ], [ %indvars.iv.next.i667, %bb.aw ] ; 5 uses
  %i.wo = and i64 %indvars.iv.i663, 1792
  %.not.i.i664 = icmp eq i64 %i.wo, 512
  %isnotneg.i.i665 = icmp samesign ugt i64 %indvars.iv.i663, 511
  %i.wp = sext i1 %isnotneg.i.i665 to i64
  %.0.i.i666 = select i1 %.not.i.i664, i64 %indvars.iv.i663, i64 %i.wp
  %i.wq = and i64 %.0.i.i666, 255
  %i.wr = mul nsw i64 %i.wq, %i.dp
  %i.ws = ashr i64 %i.wr, 14
  %i.wt = and i64 %i.ws, -4
  %i.wu = getelementptr inbounds i8, ptr %i.wn, i64 %i.wt
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %indvars.iv.i663
  store ptr %i.wu, ptr %i.wv, align 8, !tbaa !35
  %indvars.iv.next.i667 = add nuw nsw i64 %indvars.iv.i663, 1 ; 2 uses
  %exitcond.not.i668 = icmp eq i64 %indvars.iv.next.i667, 1280
  br i1 %exitcond.not.i668, label %fill_table.exit669, label %bb.aw, !llvm.loop !101

fill_table.exit669:                               ; preds = %bb.aw
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 3712
  %i.wx = shl i64 %i.dv, 23
  %i.wy = and i64 %i.wx, 4611686014132420608
  %sext.i670 = sub nsw i64 0, %i.wy
  %i.wz = lshr exact i64 %sext.i670, 32
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %fill_table.exit669
  %indvars.iv.i671 = phi i64 [ 0, %fill_table.exit669 ], [ %indvars.iv.next.i675, %bb.ax ] ; 5 uses
  %i.xa = and i64 %indvars.iv.i671, 1792
  %.not.i.i672 = icmp eq i64 %i.xa, 512
  %isnotneg.i.i673 = icmp samesign ugt i64 %indvars.iv.i671, 511
  %i.xb = sext i1 %isnotneg.i.i673 to i64
  %.0.i.i674 = select i1 %.not.i.i672, i64 %indvars.iv.i671, i64 %i.xb
  %i.xc = and i64 %.0.i.i674, 255
  %i.xd = mul nsw i64 %i.xc, %i.dv
  %i.xe = lshr i64 %i.xd, 16
  %i.xf = add nuw nsw i64 %i.xe, %i.wz
  %i.xg = trunc i64 %i.xf to i32
  %i.xh = shl i32 %i.xg, 2
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.ww, i64 %indvars.iv.i671
  store i32 %i.xh, ptr %i.xi, align 4, !tbaa !36
  %indvars.iv.next.i675 = add nuw nsw i64 %indvars.iv.i671, 1 ; 2 uses
  %exitcond.not.i676 = icmp eq i64 %indvars.iv.next.i675, 1280
  br i1 %exitcond.not.i676, label %fill_gv_table.exit, label %bb.ax, !llvm.loop !102

bb.ay:                                            ; preds = %bb.e, %bb.e
  %i.xj = load i32, ptr %i.a, align 4, !tbaa !32
  %i.xk = and i32 %i.xj, -3
  %i.xl = icmp eq i32 %i.xk, 25                   ; 2 uses
  %i.xm = select i1 %i.xl, i32 8, i32 0           ; 2 uses
  %i.xn = insertelement <2 x i1> poison, i1 %i.c, i64 0
  %i.xo = shufflevector <2 x i1> %i.xn, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.xp = select <2 x i1> %i.xo, <2 x i32> <i32 16, i32 0>, <2 x i32> <i32 0, i32 16>
  %i.xq = add nuw nsw i32 %i.xm, 8
  %i.xr = insertelement <2 x i32> poison, i32 %i.xm, i64 0
  %i.xs = shufflevector <2 x i32> %i.xr, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.xt = or disjoint <2 x i32> %i.xs, %i.xp      ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.xv = load i32, ptr %i.xu, align 8, !tbaa !31 ; 2 uses
  %i.xw = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.xv) #7 ; 2 uses
  %.not.i = icmp eq ptr %i.xw, null
  br i1 %.not.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 901) #7
  tail call void @abort() #8
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.xx = icmp eq i32 %i.xv, 11
  br i1 %i.xx, label %isALPHA.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xw, i64 16
  %i.xz = load i64, ptr %i.xy, align 8, !tbaa !34
  %i.ya = and i64 %i.xz, 128
  %i.yb = icmp eq i64 %i.ya, 0
  br label %isALPHA.exit

isALPHA.exit:                                     ; preds = %bb.ba, %bb.bb
  %.0.i = phi i1 [ %i.yb, %bb.bb ], [ false, %bb.ba ]
  %i.yc = tail call noalias ptr @av_malloc(i64 noundef 24576) #7 ; 4 uses
  store ptr %i.yc, ptr %i.dw, align 8, !tbaa !123
  %.not437 = icmp eq ptr %i.yc, null
  br i1 %.not437, label %fill_gv_table.exit, label %vector.ph

vector.ph:                                        ; preds = %isALPHA.exit
  %.finite = select i1 %i.xl, i32 255, i32 -16777216
  %i.yd = select i1 %.0.i, i32 %.finite, i32 0
  %.neg712 = mul nsw i64 %i.bk, -512
  %reass.sub = sub nsw i64 %.neg712, %i.ah
  %i.ye = add nsw i64 %reass.sub, -25165824
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.yd, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat839 = shufflevector <2 x i32> %i.xt, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert840 = insertelement <4 x i32> poison, i32 %i.xq, i64 0
  %broadcast.splat841 = shufflevector <4 x i32> %broadcast.splatinsert840, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat843 = shufflevector <2 x i32> %i.xt, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert844 = insertelement <4 x i64> poison, i64 %i.ye, i64 0
  %broadcast.splat845 = shufflevector <4 x i64> %broadcast.splatinsert844, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splat847 = shufflevector <4 x i64> %i.by, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.yf = mul nsw <4 x i64> %broadcast.splat847, <i64 0, i64 1, i64 2, i64 3>
  %induction = add nsw <4 x i64> %broadcast.splat845, %i.yf
  %i.yg = shl nsw i64 %i.bk, 2
  %broadcast.splatinsert848 = insertelement <4 x i64> poison, i64 %i.yg, i64 0
  %broadcast.splat849 = shufflevector <4 x i64> %broadcast.splatinsert848, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.yh = add nsw <4 x i64> %vec.ind, splat (i64 32768)
  %i.yi = lshr <4 x i64> %i.yh, splat (i64 16)
  %i.yj = trunc <4 x i64> %i.yi to <4 x i32>
  %i.yk = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.yj, <4 x i32> zeroinitializer)
  %i.yl = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.yk, <4 x i32> splat (i32 255)) ; 3 uses
  %i.ym = shl nuw <4 x i32> %i.yl, %broadcast.splat839
  %i.yn = add <4 x i32> %i.ym, %broadcast.splat
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.yc, i64 %index ; 3 uses
  store <4 x i32> %i.yn, ptr %i.yo, align 4, !tbaa !36
  %i.yp = shl nuw nsw <4 x i32> %i.yl, %broadcast.splat841
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 8192
  store <4 x i32> %i.yp, ptr %i.yq, align 4, !tbaa !36
  %i.yr = shl nuw <4 x i32> %i.yl, %broadcast.splat843
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yo, i64 16384
  store <4 x i32> %i.yr, ptr %i.ys, align 4, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nsw <4 x i64> %vec.ind, %broadcast.splat849
  %i.yt = icmp eq i64 %index.next, 2048
  br i1 %i.yt, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  %i.yu = getelementptr inbounds nuw i8, ptr %0, i64 8832
  %i.yv = zext nneg i32 %i.g to i64
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.yc, i64 %i.yv ; 3 uses
  %i.yx = ashr i64 %i.dm, 7
  %i.yy = and i64 %i.yx, -4
  %i.yz = sub nsw i64 0, %i.yy
  %i.za = getelementptr inbounds i8, ptr %i.yw, i64 %i.yz
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %middle.block
  %indvars.iv.i678 = phi i64 [ 0, %middle.block ], [ %indvars.iv.next.i682, %bb.bc ] ; 5 uses
  %i.zb = and i64 %indvars.iv.i678, 1792
  %.not.i.i679 = icmp eq i64 %i.zb, 512
  %isnotneg.i.i680 = icmp samesign ugt i64 %indvars.iv.i678, 511
  %i.zc = sext i1 %isnotneg.i.i680 to i64
  %.0.i.i681 = select i1 %.not.i.i679, i64 %indvars.iv.i678, i64 %i.zc
  %i.zd = and i64 %.0.i.i681, 255
  %i.ze = mul nsw i64 %i.zd, %i.dm
  %i.zf = ashr i64 %i.ze, 14
  %i.zg = and i64 %i.zf, -4
  %i.zh = getelementptr inbounds i8, ptr %i.za, i64 %i.zg
  %i.zi = getelementptr inbounds nuw [8 x i8], ptr %i.yu, i64 %indvars.iv.i678
  store ptr %i.zh, ptr %i.zi, align 8, !tbaa !35
  %indvars.iv.next.i682 = add nuw nsw i64 %indvars.iv.i678, 1 ; 2 uses
  %exitcond.not.i683 = icmp eq i64 %indvars.iv.next.i682, 1280
  br i1 %exitcond.not.i683, label %fill_table.exit684, label %bb.bc, !llvm.loop !101

fill_table.exit684:                               ; preds = %bb.bc
  %i.zj = getelementptr inbounds nuw i8, ptr %0, i64 19072
  %i.zk = getelementptr inbounds nuw i8, ptr %i.yw, i64 8192
  %i.zl = ashr i64 %i.ds, 7
  %i.zm = and i64 %i.zl, -4
  %i.zn = sub nsw i64 0, %i.zm
  %i.zo = getelementptr inbounds i8, ptr %i.zk, i64 %i.zn
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %fill_table.exit684
  %indvars.iv.i685 = phi i64 [ 0, %fill_table.exit684 ], [ %indvars.iv.next.i689, %bb.bd ] ; 5 uses
  %i.zp = and i64 %indvars.iv.i685, 1792
  %.not.i.i686 = icmp eq i64 %i.zp, 512
  %isnotneg.i.i687 = icmp samesign ugt i64 %indvars.iv.i685, 511
  %i.zq = sext i1 %isnotneg.i.i687 to i64
  %.0.i.i688 = select i1 %.not.i.i686, i64 %indvars.iv.i685, i64 %i.zq
  %i.zr = and i64 %.0.i.i688, 255
  %i.zs = mul nsw i64 %i.zr, %i.ds
  %i.zt = ashr i64 %i.zs, 14
  %i.zu = and i64 %i.zt, -4
  %i.zv = getelementptr inbounds i8, ptr %i.zo, i64 %i.zu
  %i.zw = getelementptr inbounds nuw [8 x i8], ptr %i.zj, i64 %indvars.iv.i685
  store ptr %i.zv, ptr %i.zw, align 8, !tbaa !35
  %indvars.iv.next.i689 = add nuw nsw i64 %indvars.iv.i685, 1 ; 2 uses
  %exitcond.not.i690 = icmp eq i64 %indvars.iv.next.i689, 1280
  br i1 %exitcond.not.i690, label %fill_table.exit691, label %bb.bd, !llvm.loop !101

fill_table.exit691:                               ; preds = %bb.bd
  %i.zx = getelementptr inbounds nuw i8, ptr %0, i64 29312
  %i.zy = getelementptr inbounds nuw i8, ptr %i.yw, i64 16384
  %i.zz = ashr i64 %i.dp, 7
  %i.aaa = and i64 %i.zz, -4
  %i.aab = sub nsw i64 0, %i.aaa
  %i.aac = getelementptr inbounds i8, ptr %i.zy, i64 %i.aab
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %fill_table.exit691
  %indvars.iv.i692 = phi i64 [ 0, %fill_table.exit691 ], [ %indvars.iv.next.i696, %bb.be ] ; 5 uses
  %i.aad = and i64 %indvars.iv.i692, 1792
  %.not.i.i693 = icmp eq i64 %i.aad, 512
  %isnotneg.i.i694 = icmp samesign ugt i64 %indvars.iv.i692, 511
  %i.aae = sext i1 %isnotneg.i.i694 to i64
  %.0.i.i695 = select i1 %.not.i.i693, i64 %indvars.iv.i692, i64 %i.aae
  %i.aaf = and i64 %.0.i.i695, 255
  %i.aag = mul nsw i64 %i.aaf, %i.dp
  %i.aah = ashr i64 %i.aag, 14
  %i.aai = and i64 %i.aah, -4
  %i.aaj = getelementptr inbounds i8, ptr %i.aac, i64 %i.aai
  %i.aak = getelementptr inbounds nuw [8 x i8], ptr %i.zx, i64 %indvars.iv.i692
  store ptr %i.aaj, ptr %i.aak, align 8, !tbaa !35
  %indvars.iv.next.i696 = add nuw nsw i64 %indvars.iv.i692, 1 ; 2 uses
  %exitcond.not.i697 = icmp eq i64 %indvars.iv.next.i696, 1280
  br i1 %exitcond.not.i697, label %fill_table.exit698, label %bb.be, !llvm.loop !101

fill_table.exit698:                               ; preds = %bb.be
  %i.aal = getelementptr inbounds nuw i8, ptr %0, i64 3712
  %i.aam = shl i64 %i.dv, 23
  %i.aan = and i64 %i.aam, 4611686014132420608
  %sext.i699 = sub nsw i64 0, %i.aan
  %i.aao = lshr exact i64 %sext.i699, 32
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %fill_table.exit698
  %indvars.iv.i700 = phi i64 [ 0, %fill_table.exit698 ], [ %indvars.iv.next.i704, %bb.bf ] ; 5 uses
  %i.aap = and i64 %indvars.iv.i700, 1792
  %.not.i.i701 = icmp eq i64 %i.aap, 512
  %isnotneg.i.i702 = icmp samesign ugt i64 %indvars.iv.i700, 511
  %i.aaq = sext i1 %isnotneg.i.i702 to i64
  %.0.i.i703 = select i1 %.not.i.i701, i64 %indvars.iv.i700, i64 %i.aaq
  %i.aar = and i64 %.0.i.i703, 255
  %i.aas = mul nsw i64 %i.aar, %i.dv
  %i.aat = lshr i64 %i.aas, 16
  %i.aau = add nuw nsw i64 %i.aat, %i.aao
  %i.aav = trunc i64 %i.aau to i32
  %i.aaw = shl i32 %i.aav, 2
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %i.aal, i64 %indvars.iv.i700
  store i32 %i.aaw, ptr %i.aax, align 4, !tbaa !36
  %indvars.iv.next.i704 = add nuw nsw i64 %indvars.iv.i700, 1 ; 2 uses
  %exitcond.not.i705 = icmp eq i64 %indvars.iv.next.i704, 1280
  br i1 %exitcond.not.i705, label %fill_gv_table.exit, label %bb.bf, !llvm.loop !102

bb.bg:                                            ; preds = %bb.e
  %i.aay = load i32, ptr %i.a, align 4, !tbaa !32
  %i.aaz = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.aay) #7 ; 3 uses
  %.not.i474 = icmp eq ptr %i.aaz, null
  br i1 %.not.i474, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 919) #7
  tail call void @abort() #8
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 8
  %i.abb = load i8, ptr %i.aba, align 8, !tbaa !126
  %i.abc = icmp ugt i8 %i.abb, 1
  br i1 %i.abc, label %isPlanar.exit, label %isPlanar.exit.thread

isPlanar.exit:                                    ; preds = %bb.bi
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aaz, i64 16
  %i.abe = load i64, ptr %i.abd, align 8, !tbaa !34
  %i.abf = and i64 %i.abe, 16
  %i.abg = icmp eq i64 %i.abf, 0
  %i.abh = icmp slt i32 %i.f, 25
  %or.cond = select i1 %i.abg, i1 true, i1 %i.abh
  br i1 %or.cond, label %isPlanar.exit.thread, label %fill_gv_table.exit

isPlanar.exit.thread:                             ; preds = %bb.bi, %isPlanar.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %i.f) #7
  br label %fill_gv_table.exit

fill_gv_table.exit:                               ; preds = %bb.bf, %bb.ax, %bb.ap, %bb.ak, %bb.af, %bb.aa, %bb.s, %bb.k, %isPlanar.exit.thread, %isPlanar.exit, %isALPHA.exit, %isALPHA.exit451, %bb.al, %bb.ag, %bb.ab, %bb.t, %bb.l, %bb.f
  %.0 = phi i32 [ -12, %isALPHA.exit ], [ -22, %isPlanar.exit.thread ], [ -12, %isALPHA.exit451 ], [ -12, %bb.f ], [ -12, %bb.l ], [ -12, %bb.t ], [ -12, %bb.ab ], [ -12, %bb.ag ], [ -12, %bb.al ], [ -22, %isPlanar.exit ], [ 0, %bb.af ], [ 0, %bb.aa ], [ 0, %bb.s ], [ 0, %bb.k ], [ 0, %bb.ax ], [ 0, %bb.ap ], [ 0, %bb.ak ], [ 0, %bb.bf ]
  ret i32 %.0
}

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #2

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6
end_hunk_0
