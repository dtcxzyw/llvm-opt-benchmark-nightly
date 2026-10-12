Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dcaenc?download=true
inline.NumInlined: 126
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 38
begin_hunk_0_@encode_frame:bb.a
  %i.ug = getelementptr inbounds nuw i8, ptr %i.k, i64 36304
  %i.uh = getelementptr inbounds nuw i8, ptr %i.k, i64 36320
  store <4 x i32> splat (i32 -2047), ptr %i.ug, align 4, !tbaa !29
  store <4 x i32> splat (i32 -2047), ptr %i.uh, align 4, !tbaa !29
  %i.ui = getelementptr inbounds nuw i8, ptr %i.k, i64 35312
  %i.uj = getelementptr inbounds nuw i8, ptr %i.k, i64 35328
  store <4 x i32> splat (i32 -2047), ptr %i.ui, align 4, !tbaa !29
  store <4 x i32> splat (i32 -2047), ptr %i.uj, align 4, !tbaa !29
  %i.uk = getelementptr inbounds nuw i8, ptr %i.k, i64 36336
  %i.ul = getelementptr inbounds nuw i8, ptr %i.k, i64 36352
  store <4 x i32> splat (i32 -2047), ptr %i.uk, align 4, !tbaa !29
  store <4 x i32> splat (i32 -2047), ptr %i.ul, align 4, !tbaa !29
  %i.um = getelementptr inbounds nuw i8, ptr %i.k, i64 35344
  %i.un = getelementptr inbounds nuw i8, ptr %i.k, i64 35360
  store <4 x i32> splat (i32 -2047), ptr %i.um, align 4, !tbaa !29
  store <4 x i32> splat (i32 -2047), ptr %i.un, align 4, !tbaa !29
  %i.uo = getelementptr inbounds nuw i8, ptr %i.k, i64 36368
  %i.up = getelementptr inbounds nuw i8, ptr %i.k, i64 36384
  store <4 x i32> splat (i32 -2047), ptr %i.uo, align 4, !tbaa !29
  store <4 x i32> splat (i32 -2047), ptr %i.up, align 4, !tbaa !29
  %i.uq = getelementptr inbounds nuw i8, ptr %i.k, i64 35376
  %i.ur = getelementptr inbounds nuw i8, ptr %i.k, i64 35392
  store <4 x i32> splat (i32 -2047), ptr %i.uq, align 4, !tbaa !29
  store <4 x i32> splat (i32 -2047), ptr %i.ur, align 4, !tbaa !29
  %i.us = getelementptr inbounds nuw i8, ptr %i.k, i64 36400
  %i.ut = getelementptr inbounds nuw i8, ptr %i.k, i64 36416
  store <4 x i32> splat (i32 -2047), ptr %i.us, align 4, !tbaa !29
  store <4 x i32> splat (i32 -2047), ptr %i.ut, align 4, !tbaa !29
  %i.uu = getelementptr inbounds nuw i8, ptr %i.k, i64 35408
  %i.uv = getelementptr inbounds nuw i8, ptr %i.k, i64 35424
  store <4 x i32> splat (i32 -2047), ptr %i.uu, align 4, !tbaa !29
  store <4 x i32> splat (i32 -2047), ptr %i.uv, align 4, !tbaa !29
  %i.uw = getelementptr inbounds nuw i8, ptr %i.k, i64 36432
  %i.ux = getelementptr inbounds nuw i8, ptr %i.k, i64 36448
  store <4 x i32> splat (i32 -2047), ptr %i.uw, align 4, !tbaa !29
  store <4 x i32> splat (i32 -2047), ptr %i.ux, align 4, !tbaa !29
  %i.uy = getelementptr inbounds nuw i8, ptr %i.k, i64 35440
  %i.uz = getelementptr inbounds nuw i8, ptr %i.k, i64 35456
  store <4 x i32> splat (i32 -2047), ptr %i.uy, align 4, !tbaa !29
  store <4 x i32> splat (i32 -2047), ptr %i.uz, align 4, !tbaa !29
  %i.va = getelementptr inbounds nuw i8, ptr %i.k, i64 36464
  %i.vb = getelementptr inbounds nuw i8, ptr %i.k, i64 36480
  store <4 x i32> splat (i32 -2047), ptr %i.va, align 4, !tbaa !29
  store <4 x i32> splat (i32 -2047), ptr %i.vb, align 4, !tbaa !29
  %i.vc = getelementptr inbounds nuw i8, ptr %i.k, i64 35472
  %i.vd = getelementptr inbounds nuw i8, ptr %i.k, i64 35488
  store <4 x i32> splat (i32 -2047), ptr %i.vc, align 4, !tbaa !29
  store <4 x i32> splat (i32 -2047), ptr %i.vd, align 4, !tbaa !29
  %i.ve = getelementptr inbounds nuw i8, ptr %i.k, i64 36496
  %i.vf = getelementptr inbounds nuw i8, ptr %i.k, i64 36512
  store <4 x i32> splat (i32 -2047), ptr %i.ve, align 4, !tbaa !29
  store <4 x i32> splat (i32 -2047), ptr %i.vf, align 4, !tbaa !29
  %i.vg = getelementptr inbounds nuw i8, ptr %i.k, i64 35504
  %i.vh = getelementptr inbounds nuw i8, ptr %i.k, i64 35520
  store <4 x i32> splat (i32 -2047), ptr %i.vg, align 4, !tbaa !29
  store <4 x i32> splat (i32 -2047), ptr %i.vh, align 4, !tbaa !29
  %i.vi = getelementptr inbounds nuw i8, ptr %i.k, i64 36528
  %i.vj = getelementptr inbounds nuw i8, ptr %i.k, i64 36544
  store <4 x i32> splat (i32 -2047), ptr %i.vi, align 4, !tbaa !29
  store <4 x i32> splat (i32 -2047), ptr %i.vj, align 4, !tbaa !29
  %i.vk = getelementptr inbounds nuw i8, ptr %i.k, i64 35536
  %i.vl = getelementptr inbounds nuw i8, ptr %i.k, i64 35552
  store <4 x i32> splat (i32 -2047), ptr %i.vk, align 4, !tbaa !29
  store <4 x i32> splat (i32 -2047), ptr %i.vl, align 4, !tbaa !29
  %i.vm = getelementptr inbounds nuw i8, ptr %i.k, i64 36560
  %i.vn = getelementptr inbounds nuw i8, ptr %i.k, i64 36576
  store <4 x i32> splat (i32 -2047), ptr %i.vm, align 4, !tbaa !29
  store <4 x i32> splat (i32 -2047), ptr %i.vn, align 4, !tbaa !29
  %i.vo = getelementptr inbounds nuw i8, ptr %i.k, i64 35568
  %i.vp = getelementptr inbounds nuw i8, ptr %i.k, i64 35584
  store <4 x i32> splat (i32 -2047), ptr %i.vo, align 4, !tbaa !29
  store <4 x i32> splat (i32 -2047), ptr %i.vp, align 4, !tbaa !29
  %i.vq = getelementptr inbounds nuw i8, ptr %i.k, i64 36592
  %i.vr = getelementptr inbounds nuw i8, ptr %i.k, i64 36608
  store <4 x i32> splat (i32 -2047), ptr %i.vq, align 4, !tbaa !29
  store <4 x i32> splat (i32 -2047), ptr %i.vr, align 4, !tbaa !29
  %i.vs = getelementptr inbounds nuw i8, ptr %i.k, i64 35600
  %i.vt = getelementptr inbounds nuw i8, ptr %i.k, i64 35616
  store <4 x i32> splat (i32 -2047), ptr %i.vs, align 4, !tbaa !29
  store <4 x i32> splat (i32 -2047), ptr %i.vt, align 4, !tbaa !29
  %i.vu = getelementptr inbounds nuw i8, ptr %i.k, i64 36624
  %i.vv = getelementptr inbounds nuw i8, ptr %i.k, i64 36640
  store <4 x i32> splat (i32 -2047), ptr %i.vu, align 4, !tbaa !29
  store <4 x i32> splat (i32 -2047), ptr %i.vv, align 4, !tbaa !29
  %i.vw = getelementptr inbounds nuw i8, ptr %i.k, i64 35632
  %i.vx = getelementptr inbounds nuw i8, ptr %i.k, i64 35648
  store <4 x i32> splat (i32 -2047), ptr %i.vw, align 4, !tbaa !29
  store <4 x i32> splat (i32 -2047), ptr %i.vx, align 4, !tbaa !29
  %i.vy = getelementptr inbounds nuw i8, ptr %i.k, i64 36656
  %i.vz = getelementptr inbounds nuw i8, ptr %i.k, i64 36672
  store <4 x i32> splat (i32 -2047), ptr %i.vy, align 4, !tbaa !29
  store <4 x i32> splat (i32 -2047), ptr %i.vz, align 4, !tbaa !29
  %i.wa = getelementptr inbounds nuw i8, ptr %i.k, i64 35664
  %i.wb = getelementptr inbounds nuw i8, ptr %i.k, i64 35680
  store <4 x i32> splat (i32 -2047), ptr %i.wa, align 4, !tbaa !29
  store <4 x i32> splat (i32 -2047), ptr %i.wb, align 4, !tbaa !29
  %i.wc = getelementptr inbounds nuw i8, ptr %i.k, i64 36688
  %i.wd = getelementptr inbounds nuw i8, ptr %i.k, i64 36704
  store <4 x i32> splat (i32 -2047), ptr %i.wc, align 4, !tbaa !29
  store <4 x i32> splat (i32 -2047), ptr %i.wd, align 4, !tbaa !29
  %i.we = getelementptr inbounds nuw i8, ptr %i.k, i64 35696
  %i.wf = getelementptr inbounds nuw i8, ptr %i.k, i64 35712
  store <4 x i32> splat (i32 -2047), ptr %i.we, align 4, !tbaa !29
  store <4 x i32> splat (i32 -2047), ptr %i.wf, align 4, !tbaa !29
  %i.wg = getelementptr inbounds nuw i8, ptr %i.k, i64 36720
  %i.wh = getelementptr inbounds nuw i8, ptr %i.k, i64 36736
  store <4 x i32> splat (i32 -2047), ptr %i.wg, align 4, !tbaa !29
  store <4 x i32> splat (i32 -2047), ptr %i.wh, align 4, !tbaa !29
  %i.wi = getelementptr inbounds nuw i8, ptr %i.k, i64 35728
  %i.wj = getelementptr inbounds nuw i8, ptr %i.k, i64 35744
  store <4 x i32> splat (i32 -2047), ptr %i.wi, align 4, !tbaa !29
  store <4 x i32> splat (i32 -2047), ptr %i.wj, align 4, !tbaa !29
  %i.wk = getelementptr inbounds nuw i8, ptr %i.k, i64 36752
  %i.wl = getelementptr inbounds nuw i8, ptr %i.k, i64 36768
  store <4 x i32> splat (i32 -2047), ptr %i.wk, align 4, !tbaa !29
  store <4 x i32> splat (i32 -2047), ptr %i.wl, align 4, !tbaa !29
  %i.wm = getelementptr inbounds nuw i8, ptr %i.k, i64 136 ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.k, i64 80 ; 3 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.k, i64 88 ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.wq = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.wr = getelementptr inbounds nuw i8, ptr %i.k, i64 285064 ; 40 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.k, i64 289160 ; 4 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.k, i64 284040 ; 4 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.k, i64 53640
  %i.wv = icmp sgt i32 %i.ml, 0
  br i1 %i.wv, label %.preheader82.i.preheader, label %.preheader81.i

.preheader82.i.preheader:                         ; preds = %vector.ph559
  %i.ww = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.wx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.wy = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.wz = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.xa = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.xb = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.xc = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.xd = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.xe = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.xf = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.xg = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.xh = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.xi = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.xj = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.xk = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.xl = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.xm = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  %i.xn = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %i.xo = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  %i.xp = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  %i.xq = getelementptr inbounds nuw i8, ptr %i.e, i64 336
  %i.xr = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  %i.xs = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  %i.xt = getelementptr inbounds nuw i8, ptr %i.e, i64 384
  %i.xu = getelementptr inbounds nuw i8, ptr %i.e, i64 400
  %i.xv = getelementptr inbounds nuw i8, ptr %i.e, i64 416
  %i.xw = getelementptr inbounds nuw i8, ptr %i.e, i64 432
  %i.xx = getelementptr inbounds nuw i8, ptr %i.e, i64 448
  %i.xy = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.xz = getelementptr inbounds nuw i8, ptr %i.e, i64 480
  %i.ya = getelementptr inbounds nuw i8, ptr %i.e, i64 496
  %i.yb = getelementptr inbounds nuw i8, ptr %i.e, i64 512
  %i.yc = getelementptr inbounds nuw i8, ptr %i.e, i64 528
  %i.yd = getelementptr inbounds nuw i8, ptr %i.e, i64 544
  %i.ye = getelementptr inbounds nuw i8, ptr %i.e, i64 560
  %i.yf = getelementptr inbounds nuw i8, ptr %i.e, i64 576
  %i.yg = getelementptr inbounds nuw i8, ptr %i.e, i64 592
  %i.yh = getelementptr inbounds nuw i8, ptr %i.e, i64 608
  %i.yi = getelementptr inbounds nuw i8, ptr %i.e, i64 624
  %i.yj = getelementptr inbounds nuw i8, ptr %i.e, i64 640
  %i.yk = getelementptr inbounds nuw i8, ptr %i.e, i64 656
  %i.yl = getelementptr inbounds nuw i8, ptr %i.e, i64 672
  %i.ym = getelementptr inbounds nuw i8, ptr %i.e, i64 688
  %i.yn = getelementptr inbounds nuw i8, ptr %i.e, i64 704
  %i.yo = getelementptr inbounds nuw i8, ptr %i.e, i64 720
  %i.yp = getelementptr inbounds nuw i8, ptr %i.e, i64 736
  %i.yq = getelementptr inbounds nuw i8, ptr %i.e, i64 752
  %i.yr = getelementptr inbounds nuw i8, ptr %i.e, i64 768
  %i.ys = getelementptr inbounds nuw i8, ptr %i.e, i64 784
  %i.yt = getelementptr inbounds nuw i8, ptr %i.e, i64 800
  %i.yu = getelementptr inbounds nuw i8, ptr %i.e, i64 816
  %i.yv = getelementptr inbounds nuw i8, ptr %i.e, i64 832
  %i.yw = getelementptr inbounds nuw i8, ptr %i.e, i64 848
  %i.yx = getelementptr inbounds nuw i8, ptr %i.e, i64 864
  %i.yy = getelementptr inbounds nuw i8, ptr %i.e, i64 880
  %i.yz = getelementptr inbounds nuw i8, ptr %i.e, i64 896
  %i.za = getelementptr inbounds nuw i8, ptr %i.e, i64 912
  %i.zb = getelementptr inbounds nuw i8, ptr %i.e, i64 928
  %i.zc = getelementptr inbounds nuw i8, ptr %i.e, i64 944
  %i.zd = getelementptr inbounds nuw i8, ptr %i.e, i64 960
  %i.ze = getelementptr inbounds nuw i8, ptr %i.e, i64 976
  %i.zf = getelementptr inbounds nuw i8, ptr %i.e, i64 992
  %i.zg = getelementptr inbounds nuw i8, ptr %i.e, i64 1008
  br label %.preheader82.i

.preheader82.i:                                   ; preds = %.preheader82.i.preheader, %._crit_edge97.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge97.i ], [ 0, %.preheader82.i.preheader ] ; 2 uses
  %i.zh = phi i32 [ %i.afu, %._crit_edge97.i ], [ %i.ml, %.preheader82.i.preheader ] ; 2 uses
  %indvars.iv117.i = phi i64 [ %indvars.iv.next118.i, %._crit_edge97.i ], [ 384, %.preheader82.i.preheader ] ; 3 uses
  %i.zi = phi i1 [ false, %._crit_edge97.i ], [ true, %.preheader82.i.preheader ]
  %indvar.i = phi i64 [ 1, %._crit_edge97.i ], [ 0, %.preheader82.i.preheader ] ; 2 uses
  %i.zj = shl nuw nsw i64 %indvar.i, 10           ; 2 uses
  %i.zk = sub nuw nsw i64 1536, %i.zj
  %i.zl = icmp sgt i32 %i.zh, 0
  br i1 %i.zl, label %.lr.ph96.i55, label %._crit_edge97.i

.lr.ph96.i55:                                     ; preds = %.preheader82.i
  %i.zm = getelementptr inbounds nuw [1024 x i8], ptr %i.ro, i64 %indvar.i
  %i.zn = getelementptr i8, ptr %i.k, i64 %i.zj
  %i.zo = getelementptr i8, ptr %i.zn, i64 7568
  %4 = shl i64 %indvar, 8
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv117.i
  %i.zq = or disjoint i64 %4, 120
  br label %.lr.ph93.i

.preheader81.i:                                   ; preds = %._crit_edge97.i, %vector.ph559
  %i.zr = phi i32 [ %i.ml, %vector.ph559 ], [ %i.afu, %._crit_edge97.i ] ; 3 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.k, i64 40120 ; 2 uses
  br label %vector.body586

vector.body586:                                   ; preds = %vector.body586, %.preheader81.i
  %index587 = phi i64 [ 0, %.preheader81.i ], [ %index.next592, %vector.body586 ] ; 3 uses
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.ro, i64 %index587 ; 4 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 16
  %wide.load588 = load <4 x i32>, ptr %i.zt, align 4, !tbaa !29
  %wide.load589 = load <4 x i32>, ptr %i.zu, align 4, !tbaa !29
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zt, i64 1024
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zt, i64 1040
  %wide.load590 = load <4 x i32>, ptr %i.zv, align 4, !tbaa !29
  %wide.load591 = load <4 x i32>, ptr %i.zw, align 4, !tbaa !29
  %i.zx = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load588, <4 x i32> %wide.load590)
  %i.zy = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load589, <4 x i32> %wide.load591)
  %i.zz = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.zx, <4 x i32> splat (i32 2048))
  %i.aaa = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.zy, <4 x i32> splat (i32 2048))
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.zs, i64 %index587 ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 16
  store <4 x i32> %i.zz, ptr %i.aab, align 4, !tbaa !29
  store <4 x i32> %i.aaa, ptr %i.aac, align 4, !tbaa !29
  %index.next592 = add nuw i64 %index587, 8       ; 2 uses
  %i.aad = icmp eq i64 %index.next592, 256
  br i1 %i.aad, label %.preheader.i54, label %vector.body586, !llvm.loop !91

.lr.ph93.i:                                       ; preds = %.lr.ph96.i55, %adjust_jnd.exit.i
  %indvar109.i = phi i64 [ 0, %.lr.ph96.i55 ], [ %indvar.next110.i, %adjust_jnd.exit.i ] ; 3 uses
  %i.aae = load ptr, ptr %i.wm, align 8, !tbaa !44
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 %indvar109.i
  %i.aag = load i8, ptr %i.aaf, align 1, !tbaa !45
  %i.aah = shl nuw nsw i64 %indvar109.i, 11
  %scevgep.i = getelementptr i8, ptr %i.zo, i64 %i.aah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.f, ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i64 %i.zk, i1 false), !tbaa !29
  %i.aai = load i32, ptr %i.wn, align 8, !tbaa !37 ; 2 uses
  %i.aaj = sext i32 %i.aai to i64                 ; 4 uses
  %i.aak = sext i8 %i.aag to i64
  %invariant.gep195.i = getelementptr [4 x i8], ptr %i.q, i64 %i.aak ; 5 uses
  %ident.check571.not = icmp eq i32 %i.aai, 1
  br i1 %ident.check571.not, label %vector.body575, label %scalar.ph572

vector.body575:                                   ; preds = %.lr.ph93.i, %vector.body575
  %index576 = phi i64 [ %index.next579, %vector.body575 ], [ 0, %.lr.ph93.i ] ; 4 uses
  %i.aal = getelementptr [4 x i8], ptr %invariant.gep195.i, i64 %index576 ; 2 uses
  %i.aam = getelementptr i8, ptr %i.aal, i64 16
  %wide.load577 = load <4 x i32>, ptr %i.aal, align 4, !tbaa !29
  %wide.load578 = load <4 x i32>, ptr %i.aam, align 4, !tbaa !29
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.zp, i64 %index576 ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 16
  store <4 x i32> %wide.load577, ptr %i.aan, align 16, !tbaa !29
  store <4 x i32> %wide.load578, ptr %i.aao, align 16, !tbaa !29
  %index.next579 = add nuw i64 %index576, 8
  %i.aap = icmp eq i64 %index576, %i.zq
  br i1 %i.aap, label %._crit_edge94.i, label %vector.body575, !llvm.loop !92

scalar.ph572:                                     ; preds = %.lr.ph93.i, %scalar.ph572
  %indvars.iv127.i = phi i64 [ %indvars.iv.next128.i.3, %scalar.ph572 ], [ %indvars.iv117.i, %.lr.ph93.i ] ; 5 uses
  %indvars.iv125.i = phi i64 [ %indvars.iv.next126.i.3, %scalar.ph572 ], [ 0, %.lr.ph93.i ] ; 5 uses
  %i.aaq = mul nsw i64 %indvars.iv125.i, %i.aaj
  %gep.i58 = getelementptr [4 x i8], ptr %invariant.gep195.i, i64 %i.aaq
  %i.aar = load i32, ptr %gep.i58, align 4, !tbaa !29
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv127.i
  store i32 %i.aar, ptr %i.aas, align 16, !tbaa !29
  %indvars.iv.next126.i = or disjoint i64 %indvars.iv125.i, 1
  %i.aat = mul nsw i64 %indvars.iv.next126.i, %i.aaj
  %gep.i58.1 = getelementptr [4 x i8], ptr %invariant.gep195.i, i64 %i.aat
  %i.aau = load i32, ptr %gep.i58.1, align 4, !tbaa !29
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv127.i
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 4
  store i32 %i.aau, ptr %i.aaw, align 4, !tbaa !29
  %indvars.iv.next126.i.1 = or disjoint i64 %indvars.iv125.i, 2
  %i.aax = mul nsw i64 %indvars.iv.next126.i.1, %i.aaj
  %gep.i58.2 = getelementptr [4 x i8], ptr %invariant.gep195.i, i64 %i.aax
  %i.aay = load i32, ptr %gep.i58.2, align 4, !tbaa !29
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv127.i
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 8
  store i32 %i.aay, ptr %i.aba, align 8, !tbaa !29
  %indvars.iv.next126.i.2 = or disjoint i64 %indvars.iv125.i, 3
  %i.abb = mul nsw i64 %indvars.iv.next126.i.2, %i.aaj
  %gep.i58.3 = getelementptr [4 x i8], ptr %invariant.gep195.i, i64 %i.abb
  %i.abc = load i32, ptr %gep.i58.3, align 4, !tbaa !29
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv127.i
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 12
  store i32 %i.abc, ptr %i.abe, align 4, !tbaa !29
  %indvars.iv.next128.i.3 = add nuw nsw i64 %indvars.iv127.i, 4 ; 2 uses
  %indvars.iv.next126.i.3 = add nuw nsw i64 %indvars.iv125.i, 4
  %exitcond132.not.i.3 = icmp eq i64 %indvars.iv.next128.i.3, 512
  br i1 %exitcond132.not.i.3, label %._crit_edge94.i, label %scalar.ph572, !llvm.loop !93

._crit_edge94.i:                                  ; preds = %scalar.ph572, %vector.body575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.abf = load i32, ptr %i.wo, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %._crit_edge94.i
  %indvars.iv.i.i.i = phi i64 [ 0, %._crit_edge94.i ], [ %indvars.iv.next.i.i.i.1, %bb.k ] ; 5 uses
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i.i.i
  %i.abh = load i32, ptr %i.abg, align 8, !tbaa !29
  %.idx.i.i.i = shl nuw nsw i64 %indvars.iv.i.i.i, 4
  %i.abi = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i.i
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 41296
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !29
  %i.abl = ashr i32 %i.abk, 1
  %i.abm = sub nsw i32 1073741823, %i.abl
  %i.abn = sext i32 %i.abh to i64
  %i.abo = zext nneg i32 %i.abm to i64
  %i.abp = mul nsw i64 %i.abo, %i.abn
  %i.abq = add nsw i64 %i.abp, 2147483648
  %i.abr = ashr i64 %i.abq, 32
  %i.abs = add nsw i64 %i.abr, 8
  %i.abt = lshr i64 %i.abs, 4
  %.0.i.i.i.i57 = trunc i64 %i.abt to i32
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i.i
  store i32 %.0.i.i.i.i57, ptr %i.abu, align 8, !tbaa !29
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next.i.i.i
  %i.abw = load i32, ptr %i.abv, align 4, !tbaa !29
  %.idx.i.i.i.1 = shl nuw nsw i64 %indvars.iv.next.i.i.i, 4
  %i.abx = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i.i.1
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 41296
  %i.abz = load i32, ptr %i.aby, align 4, !tbaa !29
  %i.aca = ashr i32 %i.abz, 1
  %i.acb = sub nsw i32 1073741823, %i.aca
  %i.acc = sext i32 %i.abw to i64
  %i.acd = zext nneg i32 %i.acb to i64
  %i.ace = mul nsw i64 %i.acd, %i.acc
  %i.acf = add nsw i64 %i.ace, 2147483648
  %i.acg = ashr i64 %i.acf, 32
  %i.ach = add nsw i64 %i.acg, 8
  %i.aci = lshr i64 %i.ach, 4
  %.0.i.i.i.i57.1 = trunc i64 %i.aci to i32
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i.i.i
  store i32 %.0.i.i.i.i57.1, ptr %i.acj, align 4, !tbaa !29
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.1, 512
  br i1 %exitcond.not.i.i.i.1, label %bb.l, label %bb.k, !llvm.loop !94

bb.l:                                             ; preds = %bb.k
  %i.ack = load ptr, ptr %i.wp, align 8, !tbaa !141
  %i.acl = load ptr, ptr %i.wq, align 8, !tbaa !142
  call void %i.ack(ptr noundef %i.acl, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i64 noundef 4) #11, !inline_history !95
  %i.acm = load i32, ptr %i.ws, align 8, !tbaa !29
  %i.acn = load i32, ptr %i.wt, align 8, !tbaa !29
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %indvars.iv26.i.i.i = phi i64 [ 0, %bb.l ], [ %indvars.iv.next27.i.i.i, %bb.m ] ; 3 uses
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv26.i.i.i
  %i.acp = load i32, ptr %i.aco, align 4, !tbaa !29
  %i.acq = call i32 @llvm.abs.i32(i32 %i.acp, i1 true) ; 11 uses
  %.not12.i.i.i.i = icmp slt i32 %i.acm, %i.acq
  %spec.select.i.i.i.i = select i1 %.not12.i.i.i.i, i32 0, i32 1024 ; 2 uses
  %i.acr = or disjoint i32 %spec.select.i.i.i.i, 512 ; 2 uses
  %i.acs = zext nneg i32 %i.acr to i64
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %i.acs
  %i.acu = load i32, ptr %i.act, align 4, !tbaa !29
  %.not12.1.i.i.i.i = icmp slt i32 %i.acu, %i.acq
  %spec.select.1.i.i.i.i = select i1 %.not12.1.i.i.i.i, i32 %spec.select.i.i.i.i, i32 %i.acr ; 2 uses
  %i.acv = or disjoint i32 %spec.select.1.i.i.i.i, 256 ; 2 uses
  %i.acw = zext nneg i32 %i.acv to i64
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %i.acw
  %i.acy = load i32, ptr %i.acx, align 4, !tbaa !29
  %.not12.2.i.i.i.i = icmp slt i32 %i.acy, %i.acq
  %spec.select.2.i.i.i.i = select i1 %.not12.2.i.i.i.i, i32 %spec.select.1.i.i.i.i, i32 %i.acv ; 2 uses
  %i.acz = or disjoint i32 %spec.select.2.i.i.i.i, 128 ; 2 uses
  %i.ada = zext nneg i32 %i.acz to i64
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %i.ada
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !29
  %.not12.3.i.i.i.i = icmp slt i32 %i.adc, %i.acq
  %spec.select.3.i.i.i.i = select i1 %.not12.3.i.i.i.i, i32 %spec.select.2.i.i.i.i, i32 %i.acz ; 2 uses
  %i.add = add nuw nsw i32 %spec.select.3.i.i.i.i, 64 ; 2 uses
  %i.ade = zext nneg i32 %i.add to i64
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %i.ade
  %i.adg = load i32, ptr %i.adf, align 4, !tbaa !29
  %.not12.4.i.i.i.i = icmp slt i32 %i.adg, %i.acq
  %spec.select.4.i.i.i.i = select i1 %.not12.4.i.i.i.i, i32 %spec.select.3.i.i.i.i, i32 %i.add ; 2 uses
  %i.adh = add nuw nsw i32 %spec.select.4.i.i.i.i, 32 ; 2 uses
  %i.adi = zext nneg i32 %i.adh to i64
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %i.adi
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !29
  %.not12.5.i.i.i.i = icmp slt i32 %i.adk, %i.acq
  %spec.select.5.i.i.i.i = select i1 %.not12.5.i.i.i.i, i32 %spec.select.4.i.i.i.i, i32 %i.adh ; 2 uses
  %i.adl = add nuw nsw i32 %spec.select.5.i.i.i.i, 16 ; 2 uses
  %i.adm = zext nneg i32 %i.adl to i64
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %i.adm
  %i.ado = load i32, ptr %i.adn, align 4, !tbaa !29
  %.not12.6.i.i.i.i = icmp slt i32 %i.ado, %i.acq
  %spec.select.6.i.i.i.i = select i1 %.not12.6.i.i.i.i, i32 %spec.select.5.i.i.i.i, i32 %i.adl ; 2 uses
  %i.adp = add nuw nsw i32 %spec.select.6.i.i.i.i, 8 ; 2 uses
  %i.adq = zext nneg i32 %i.adp to i64
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %i.adq
  %i.ads = load i32, ptr %i.adr, align 4, !tbaa !29
end_hunk_0
