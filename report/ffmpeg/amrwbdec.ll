inline.NumInlined: 56
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 53
begin_hunk_0_@amrwb_decode_frame:bb.a
  %i.tf = load <2 x double>, ptr %i.tc, align 8, !tbaa !65 ; 3 uses
  %i.tg = load <2 x double>, ptr %i.td, align 8, !tbaa !65 ; 3 uses
  %i.th = fmul nsz <2 x double> %i.tg, splat (double f0x3FDCCCCCC0000000)
  %i.ti = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tf, <2 x double> splat (double f0x3FE19999A0000000), <2 x double> %i.th)
  store <2 x double> %i.ti, ptr %i.te, align 8, !tbaa !65
  %i.tj = getelementptr inbounds nuw i8, ptr %i.dg, i64 856
  %i.tk = getelementptr inbounds nuw i8, ptr %i.dg, i64 728
  %i.tl = getelementptr inbounds nuw i8, ptr %i.dg, i64 344
  %i.tm = load <2 x double>, ptr %i.tj, align 8, !tbaa !65 ; 3 uses
  %i.tn = load <2 x double>, ptr %i.tk, align 8, !tbaa !65 ; 3 uses
  %i.to = fmul nsz <2 x double> %i.tn, splat (double f0x3FDCCCCCC0000000)
  %i.tp = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tm, <2 x double> splat (double f0x3FE19999A0000000), <2 x double> %i.to)
  store <2 x double> %i.tp, ptr %i.tl, align 8, !tbaa !65
  %i.tq = getelementptr inbounds nuw i8, ptr %i.dg, i64 872
  %i.tr = getelementptr inbounds nuw i8, ptr %i.dg, i64 744
  %i.ts = getelementptr inbounds nuw i8, ptr %i.dg, i64 360
  %i.tt = load <2 x double>, ptr %i.tq, align 8, !tbaa !65 ; 3 uses
  %i.tu = load <2 x double>, ptr %i.tr, align 8, !tbaa !65 ; 3 uses
  %i.tv = fmul nsz <2 x double> %i.tu, splat (double f0x3FDCCCCCC0000000)
  %i.tw = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tt, <2 x double> splat (double f0x3FE19999A0000000), <2 x double> %i.tv)
  store <2 x double> %i.tw, ptr %i.ts, align 8, !tbaa !65
  %i.tx = getelementptr inbounds nuw i8, ptr %i.dg, i64 888
  %i.ty = getelementptr inbounds nuw i8, ptr %i.dg, i64 760
  %i.tz = getelementptr inbounds nuw i8, ptr %i.dg, i64 376
  %i.ua = load <2 x double>, ptr %i.tx, align 8, !tbaa !65 ; 3 uses
  %i.ub = load <2 x double>, ptr %i.ty, align 8, !tbaa !65 ; 3 uses
  %i.uc = fmul nsz <2 x double> %i.ub, splat (double f0x3FDCCCCCC0000000)
  %i.ud = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ua, <2 x double> splat (double f0x3FE19999A0000000), <2 x double> %i.uc)
  store <2 x double> %i.ud, ptr %i.tz, align 8, !tbaa !65
  %i.ue = getelementptr inbounds nuw i8, ptr %i.dg, i64 904
  %i.uf = getelementptr inbounds nuw i8, ptr %i.dg, i64 776
  %i.ug = getelementptr inbounds nuw i8, ptr %i.dg, i64 392
  %i.uh = load <2 x double>, ptr %i.ue, align 8, !tbaa !65 ; 3 uses
  %i.ui = load <2 x double>, ptr %i.uf, align 8, !tbaa !65 ; 3 uses
  %i.uj = fmul nsz <2 x double> %i.ui, splat (double f0x3FDCCCCCC0000000)
  %i.uk = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uh, <2 x double> splat (double f0x3FE19999A0000000), <2 x double> %i.uj)
  store <2 x double> %i.uk, ptr %i.ug, align 8, !tbaa !65
  %i.ul = getelementptr inbounds nuw i8, ptr %i.dg, i64 920
  %i.um = getelementptr inbounds nuw i8, ptr %i.dg, i64 792
  %i.un = getelementptr inbounds nuw i8, ptr %i.dg, i64 408
  %i.uo = load <2 x double>, ptr %i.ul, align 8, !tbaa !65 ; 3 uses
  %i.up = load <2 x double>, ptr %i.um, align 8, !tbaa !65 ; 3 uses
  %i.uq = fmul nsz <2 x double> %i.up, splat (double f0x3FDCCCCCC0000000)
  %i.ur = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uo, <2 x double> splat (double f0x3FE19999A0000000), <2 x double> %i.uq)
  store <2 x double> %i.ur, ptr %i.un, align 8, !tbaa !65
  %i.us = getelementptr inbounds nuw i8, ptr %i.dg, i64 936
  %i.ut = getelementptr inbounds nuw i8, ptr %i.dg, i64 808
  %i.uu = getelementptr inbounds nuw i8, ptr %i.dg, i64 424
  %i.uv = load <2 x double>, ptr %i.us, align 8, !tbaa !65 ; 3 uses
  %i.uw = load <2 x double>, ptr %i.ut, align 8, !tbaa !65 ; 3 uses
  %i.ux = fmul nsz <2 x double> %i.uw, splat (double f0x3FDCCCCCC0000000)
  %i.uy = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uv, <2 x double> splat (double f0x3FE19999A0000000), <2 x double> %i.ux)
  store <2 x double> %i.uy, ptr %i.uu, align 8, !tbaa !65
  %i.uz = getelementptr inbounds nuw i8, ptr %i.dg, i64 440
  %i.va = fmul nsz <2 x double> %i.sz, splat (double f0x3FE99999A0000000)
  %i.vb = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sy, <2 x double> splat (double f0x3FC9999980000000), <2 x double> %i.va)
  store <2 x double> %i.vb, ptr %i.uz, align 8, !tbaa !65
  %i.vc = getelementptr inbounds nuw i8, ptr %i.dg, i64 456
  %i.vd = fmul nsz <2 x double> %i.tg, splat (double f0x3FE99999A0000000)
  %i.ve = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tf, <2 x double> splat (double f0x3FC9999980000000), <2 x double> %i.vd)
  store <2 x double> %i.ve, ptr %i.vc, align 8, !tbaa !65
  %i.vf = getelementptr inbounds nuw i8, ptr %i.dg, i64 472
  %i.vg = fmul nsz <2 x double> %i.tn, splat (double f0x3FE99999A0000000)
  %i.vh = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tm, <2 x double> splat (double f0x3FC9999980000000), <2 x double> %i.vg)
  store <2 x double> %i.vh, ptr %i.vf, align 8, !tbaa !65
  %i.vi = getelementptr inbounds nuw i8, ptr %i.dg, i64 488
  %i.vj = fmul nsz <2 x double> %i.tu, splat (double f0x3FE99999A0000000)
  %i.vk = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tt, <2 x double> splat (double f0x3FC9999980000000), <2 x double> %i.vj)
  store <2 x double> %i.vk, ptr %i.vi, align 8, !tbaa !65
  %i.vl = getelementptr inbounds nuw i8, ptr %i.dg, i64 504
  %i.vm = fmul nsz <2 x double> %i.ub, splat (double f0x3FE99999A0000000)
  %i.vn = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ua, <2 x double> splat (double f0x3FC9999980000000), <2 x double> %i.vm)
  store <2 x double> %i.vn, ptr %i.vl, align 8, !tbaa !65
  %i.vo = getelementptr inbounds nuw i8, ptr %i.dg, i64 520
  %i.vp = fmul nsz <2 x double> %i.ui, splat (double f0x3FE99999A0000000)
  %i.vq = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uh, <2 x double> splat (double f0x3FC9999980000000), <2 x double> %i.vp)
  store <2 x double> %i.vq, ptr %i.vo, align 8, !tbaa !65
  %i.vr = getelementptr inbounds nuw i8, ptr %i.dg, i64 536
  %i.vs = fmul nsz <2 x double> %i.up, splat (double f0x3FE99999A0000000)
  %i.vt = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uo, <2 x double> splat (double f0x3FC9999980000000), <2 x double> %i.vs)
  store <2 x double> %i.vt, ptr %i.vr, align 8, !tbaa !65
  %i.vu = getelementptr inbounds nuw i8, ptr %i.dg, i64 552
  %i.vv = fmul nsz <2 x double> %i.uw, splat (double f0x3FE99999A0000000)
  %i.vw = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uv, <2 x double> splat (double f0x3FC9999980000000), <2 x double> %i.vv)
  store <2 x double> %i.vw, ptr %i.vu, align 8, !tbaa !65
  %i.vx = getelementptr inbounds nuw i8, ptr %i.dg, i64 568
  %i.vy = fmul nsz <2 x double> %i.sz, splat (double f0x3FEEB851E0000000)
  %i.vz = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sy, <2 x double> splat (double f0x3FA47AE200000000), <2 x double> %i.vy)
  store <2 x double> %i.vz, ptr %i.vx, align 8, !tbaa !65
  %i.wa = getelementptr inbounds nuw i8, ptr %i.dg, i64 584
  %i.wb = fmul nsz <2 x double> %i.tg, splat (double f0x3FEEB851E0000000)
  %i.wc = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tf, <2 x double> splat (double f0x3FA47AE200000000), <2 x double> %i.wb)
  store <2 x double> %i.wc, ptr %i.wa, align 8, !tbaa !65
  %i.wd = getelementptr inbounds nuw i8, ptr %i.dg, i64 600
  %i.we = fmul nsz <2 x double> %i.tn, splat (double f0x3FEEB851E0000000)
  %i.wf = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tm, <2 x double> splat (double f0x3FA47AE200000000), <2 x double> %i.we)
  store <2 x double> %i.wf, ptr %i.wd, align 8, !tbaa !65
  %i.wg = getelementptr inbounds nuw i8, ptr %i.dg, i64 616
  %i.wh = fmul nsz <2 x double> %i.tu, splat (double f0x3FEEB851E0000000)
  %i.wi = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tt, <2 x double> splat (double f0x3FA47AE200000000), <2 x double> %i.wh)
  store <2 x double> %i.wi, ptr %i.wg, align 8, !tbaa !65
  %i.wj = getelementptr inbounds nuw i8, ptr %i.dg, i64 632
  %i.wk = fmul nsz <2 x double> %i.ub, splat (double f0x3FEEB851E0000000)
  %i.wl = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ua, <2 x double> splat (double f0x3FA47AE200000000), <2 x double> %i.wk)
  store <2 x double> %i.wl, ptr %i.wj, align 8, !tbaa !65
  %i.wm = getelementptr inbounds nuw i8, ptr %i.dg, i64 648
  %i.wn = fmul nsz <2 x double> %i.ui, splat (double f0x3FEEB851E0000000)
  %i.wo = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uh, <2 x double> splat (double f0x3FA47AE200000000), <2 x double> %i.wn)
  store <2 x double> %i.wo, ptr %i.wm, align 8, !tbaa !65
  %i.wp = getelementptr inbounds nuw i8, ptr %i.dg, i64 664
  %i.wq = fmul nsz <2 x double> %i.up, splat (double f0x3FEEB851E0000000)
  %i.wr = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uo, <2 x double> splat (double f0x3FA47AE200000000), <2 x double> %i.wq)
  store <2 x double> %i.wr, ptr %i.wp, align 8, !tbaa !65
  %i.ws = getelementptr inbounds nuw i8, ptr %i.dg, i64 680
  %i.wt = fmul nsz <2 x double> %i.uw, splat (double f0x3FEEB851E0000000)
  %i.wu = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uv, <2 x double> splat (double f0x3FA47AE200000000), <2 x double> %i.wt)
  store <2 x double> %i.wu, ptr %i.ws, align 8, !tbaa !65
  %i.wv = getelementptr inbounds nuw i8, ptr %i.dg, i64 952 ; 2 uses
  call void @ff_amrwb_lsp2lpc(ptr noundef nonnull %i.ss, ptr noundef nonnull %i.wv, i32 noundef 16) #10
  %i.ww = getelementptr inbounds nuw i8, ptr %i.dg, i64 440
  %i.wx = getelementptr inbounds nuw i8, ptr %i.dg, i64 1016
  call void @ff_amrwb_lsp2lpc(ptr noundef nonnull %i.ww, ptr noundef nonnull %i.wx, i32 noundef 16) #10
  %i.wy = getelementptr inbounds nuw i8, ptr %i.dg, i64 568
  %i.wz = getelementptr inbounds nuw i8, ptr %i.dg, i64 1080
  call void @ff_amrwb_lsp2lpc(ptr noundef nonnull %i.wy, ptr noundef nonnull %i.wz, i32 noundef 16) #10
  %i.xa = getelementptr inbounds nuw i8, ptr %i.dg, i64 696
  %i.xb = getelementptr inbounds nuw i8, ptr %i.dg, i64 1144
  call void @ff_amrwb_lsp2lpc(ptr noundef nonnull %i.xa, ptr noundef nonnull %i.xb, i32 noundef 16) #10
  %i.xc = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.xd = getelementptr inbounds nuw i8, ptr %i.dg, i64 2464 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.dg, i64 1208 ; 4 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.dg, i64 1209 ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.dg, i64 4648
  %i.xh = getelementptr inbounds nuw i8, ptr %i.dg, i64 2472 ; 10 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.dg, i64 2728 ; 25 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.dg, i64 3032 ; 3 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.dg, i64 3000 ; 10 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.dg, i64 4688 ; 11 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.dg, i64 2984
  %i.xn = getelementptr inbounds nuw i8, ptr %i.dg, i64 3024 ; 6 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.dg, i64 3044 ; 2 uses
  %i.xp = fpext nsz float %i.sp to double
  %i.xq = select i1 %i.so, double 0.000000e+00, double %i.xp
  %i.xr = getelementptr inbounds nuw i8, ptr %i.dg, i64 3028 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.dg, i64 3004 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.dg, i64 3020
  %i.xu = getelementptr inbounds nuw i8, ptr %i.dg, i64 3040 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.dg, i64 3112 ; 5 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.dg, i64 4664 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.dg, i64 4672 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.dg, i64 3464 ; 7 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.dg, i64 4136 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.dg, i64 3716
  %i.yb = getelementptr inbounds nuw i8, ptr %i.dg, i64 4656 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.dg, i64 4120
  %i.yd = getelementptr inbounds nuw i8, ptr %i.dg, i64 3416
  %i.ye = getelementptr inbounds nuw i8, ptr %i.dg, i64 3372
  %i.yf = getelementptr inbounds nuw i8, ptr %i.dg, i64 4128
  %i.yg = getelementptr inbounds nuw i8, ptr %i.dg, i64 4380 ; 3 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4636 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.dg, i64 3800 ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.dg, i64 4140
  %i.yk = getelementptr inbounds nuw i8, ptr %i.dg, i64 4260
  %i.yl = getelementptr inbounds nuw i8, ptr %i.dg, i64 1212
  %i.ym = getelementptr inbounds nuw i8, ptr %i.dg, i64 1468
  %i.yn = getelementptr inbounds nuw i8, ptr %i.dg, i64 3048
  %i.yo = getelementptr inbounds nuw i8, ptr %i.dg, i64 3304
  %i.yp = getelementptr inbounds nuw i8, ptr %i.dg, i64 3368
  %i.yq = getelementptr inbounds nuw i8, ptr %i.dg, i64 3624
  %i.yr = getelementptr inbounds nuw i8, ptr %i.dg, i64 3720
  %i.ys = getelementptr inbounds nuw i8, ptr %i.dg, i64 4040
  %scevgep = getelementptr i8, ptr %i.dj, i64 1280
  %bound1387 = icmp ult ptr %scevgep382, %scevgep384.a
  %bound0336 = icmp ult ptr %i.f, %scevgep335
  %bound1337 = icmp ult ptr %scevgep334, %scevgep333
  %found.conflict338 = and i1 %bound0336, %bound1337
  %i.yt = getelementptr inbounds nuw i8, ptr %i.dg, i64 2488
  %i.yu = getelementptr inbounds nuw i8, ptr %i.dg, i64 2504
  %i.yv = getelementptr inbounds nuw i8, ptr %i.dg, i64 2520
  %i.yw = getelementptr inbounds nuw i8, ptr %i.dg, i64 2536
  %i.yx = getelementptr inbounds nuw i8, ptr %i.dg, i64 2552
  %i.yy = getelementptr inbounds nuw i8, ptr %i.dg, i64 2568
  %i.yz = getelementptr inbounds nuw i8, ptr %i.dg, i64 2584
  %i.za = getelementptr inbounds nuw i8, ptr %i.dg, i64 2600
  %i.zb = getelementptr inbounds nuw i8, ptr %i.dg, i64 2616
  %i.zc = getelementptr inbounds nuw i8, ptr %i.dg, i64 2632
  %i.zd = getelementptr inbounds nuw i8, ptr %i.dg, i64 2648
  %i.ze = getelementptr inbounds nuw i8, ptr %i.dg, i64 2664
  %i.zf = getelementptr inbounds nuw i8, ptr %i.dg, i64 2680
  %i.zg = getelementptr inbounds nuw i8, ptr %i.dg, i64 2696
  %i.zh = getelementptr inbounds nuw i8, ptr %i.dg, i64 2712
  %bound0 = icmp ult ptr %i.dj, %scevgep326
  %bound1 = icmp ult ptr %i.h, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br label %bb.t

bb.t:                                             ; preds = %.preheader, %middle.block
  %indvars.iv276 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next277, %middle.block ] ; 8 uses
  %i.zi = getelementptr inbounds nuw [24 x i8], ptr %i.xc, i64 %indvars.iv276 ; 27 uses
  %.idx = mul nuw nsw i64 %indvars.iv276, 320
  %i.zj = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.idx ; 24 uses
  %i.zk = load ptr, ptr %i.xd, align 8, !tbaa !35 ; 9 uses
  %i.zl = load i32, ptr %i.do, align 8, !tbaa !59 ; 2 uses
  %i.zm = icmp ult i32 %i.zl, 2
  %i.zn = load i16, ptr %i.zi, align 2, !tbaa !67 ; 4 uses
  %i.zo = zext i16 %i.zn to i32                   ; 12 uses
  br i1 %i.zm, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t
  %i.zp = icmp eq i64 %indvars.iv276, 0
  br i1 %i.zp, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.zq = icmp eq i64 %indvars.iv276, 2
  %i.zr = icmp ne i32 %i.zl, 0
  %or.cond.i.i = and i1 %i.zq, %i.zr
  br i1 %or.cond.i.i, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.zs = icmp ult i16 %i.zn, 116
  br i1 %i.zs, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.zt = add nuw nsw i32 %i.zo, 69               ; 2 uses
  %i.zu = lshr i32 %i.zt, 1
  %i.zv = and i32 %i.zt, 254
  %i.zw = sub nsw i32 %i.zo, %i.zv
  %i.zx = shl nsw i32 %i.zw, 1
  %i.zy = add nsw i32 %i.zx, 136
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.zz = add nsw i32 %i.zo, -24
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sink.i.i = phi i32 [ %i.zu, %bb.x ], [ %i.zz, %bb.y ] ; 2 uses
  %storemerge.i.i = phi i32 [ %i.zy, %bb.x ], [ 0, %bb.y ] ; 2 uses
  %storemerge.lobit.neg.i.i = ashr i32 %storemerge.i.i, 31
  %i.aaa = add nsw i32 %.sink.i.i, -8
  %i.aab = add nsw i32 %i.aaa, %storemerge.lobit.neg.i.i
  %i.aac = call i32 @llvm.umax.i32(i32 %i.aab, i32 34)
  %i.aad = call i32 @llvm.umin.i32(i32 %i.aac, i32 216)
  %i.aae = trunc nuw i32 %i.aad to i8
  store i8 %i.aae, ptr %i.xe, align 8, !tbaa !31
  br label %decode_pitch_lag_low.exit.i

bb.aa:                                            ; preds = %bb.v
  %i.aaf = add nuw nsw i32 %i.zo, 1               ; 2 uses
  %i.aag = lshr i32 %i.aaf, 1
  %i.aah = and i32 %i.aaf, 131070
  %i.aai = sub nsw i32 %i.zo, %i.aah
  %i.aaj = shl nsw i32 %i.aai, 1
  %i.aak = load i8, ptr %i.xe, align 8, !tbaa !31
  %i.aal = zext i8 %i.aak to i32
  %i.aam = add nuw nsw i32 %i.aag, %i.aal
  br label %decode_pitch_lag_low.exit.i

bb.ab:                                            ; preds = %bb.t
  %i.aan = and i64 %indvars.iv276, 1
  %or.cond.i29.i = icmp eq i64 %i.aan, 0
  br i1 %or.cond.i29.i, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %i.aao = icmp ult i16 %i.zn, 376
  br i1 %i.aao, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.aap = add nuw nsw i32 %i.zo, 137             ; 2 uses
  %i.aaq = lshr i32 %i.aap, 2
  %i.aar = and i32 %i.aap, 1020
  %i.aas = add nuw nsw i32 %i.zo, 136
  %i.aat = sub nsw i32 %i.aas, %i.aar
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  %i.aau = icmp ult i16 %i.zn, 440
  br i1 %i.aau, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.aav = add nsw i32 %i.zo, -119                ; 2 uses
  %i.aaw = lshr i32 %i.aav, 1
  %i.aax = and i32 %i.aav, 2147483646
  %i.aay = sub nuw nsw i32 %i.zo, %i.aax
  %i.aaz = shl nuw nsw i32 %i.aay, 1
  %i.aba = add nsw i32 %i.aaz, -240
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.abb = add nsw i32 %i.zo, -280
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ad
  %.241.i = phi i32 [ %i.aaq, %bb.ad ], [ %i.aaw, %bb.af ], [ %i.abb, %bb.ag ] ; 2 uses
  %.sink.i30.i = phi i32 [ %i.aat, %bb.ad ], [ %i.aba, %bb.af ], [ 0, %bb.ag ] ; 2 uses
  %i.abc = add nsw i32 %.241.i, -8
  %.lobit.neg.i.i = ashr i32 %.sink.i30.i, 31
  %i.abd = add nsw i32 %i.abc, %.lobit.neg.i.i
  %i.abe = call i32 @llvm.umax.i32(i32 %i.abd, i32 34)
  %i.abf = call i32 @llvm.umin.i32(i32 %i.abe, i32 216)
  %i.abg = trunc nuw i32 %i.abf to i8
  store i8 %i.abg, ptr %i.xe, align 8, !tbaa !31
  br label %decode_pitch_lag_low.exit.i

bb.ai:                                            ; preds = %bb.ab
  %i.abh = add nuw nsw i32 %i.zo, 1               ; 2 uses
  %i.abi = lshr i32 %i.abh, 2
  %i.abj = and i32 %i.abh, 131068
  %i.abk = sub nsw i32 %i.zo, %i.abj
  %i.abl = load i8, ptr %i.xe, align 8, !tbaa !31
  %i.abm = zext i8 %i.abl to i32
  %i.abn = add nuw nsw i32 %i.abi, %i.abm
  br label %decode_pitch_lag_low.exit.i

decode_pitch_lag_low.exit.i:                      ; preds = %bb.ai, %bb.ah, %bb.aa, %bb.z
  %.039.i = phi i32 [ %i.aam, %bb.aa ], [ %.sink.i.i, %bb.z ], [ %.241.i, %bb.ah ], [ %i.abn, %bb.ai ] ; 2 uses
  %.038.i = phi i32 [ %i.aaj, %bb.aa ], [ %storemerge.i.i, %bb.z ], [ %.sink.i30.i, %bb.ah ], [ %i.abk, %bb.ai ] ; 2 uses
  %i.abo = trunc i32 %.039.i to i8
  store i8 %i.abo, ptr %i.xf, align 1, !tbaa !69
  %i.abp = icmp sgt i32 %.038.i, 0                ; 2 uses
  %i.abq = zext i1 %i.abp to i32
  %i.abr = add nuw nsw i32 %.039.i, %i.abq
  %i.abs = load ptr, ptr %i.xg, align 8, !tbaa !70
  %i.abt = getelementptr inbounds nuw i8, ptr %i.zk, i64 4
  %i.abu = zext nneg i32 %i.abr to i64
  %i.abv = sub nsw i64 0, %i.abu
  %i.abw = getelementptr inbounds [4 x i8], ptr %i.abt, i64 %i.abv
  %i.abx = select i1 %i.abp, i32 0, i32 4
  %i.aby = add nsw i32 %i.abx, %.038.i
  call void %i.abs(ptr noundef %i.zk, ptr noundef nonnull %i.abw, ptr noundef nonnull @ac_inter, i32 noundef 4, i32 noundef %i.aby, i32 noundef 16, i32 noundef 65) #10, !inline_history !71
  %i.abz = getelementptr inbounds nuw i8, ptr %i.zi, i64 2
  %i.aca = load i16, ptr %i.abz, align 2, !tbaa !72
  %.not.i193 = icmp eq i16 %i.aca, 0
  br i1 %.not.i193, label %vector.memcheck397, label %bb.aj

vector.memcheck397:                               ; preds = %decode_pitch_lag_low.exit.i
  %scevgep400 = getelementptr i8, ptr %i.zk, i64 -4
  %scevgep401 = getelementptr i8, ptr %i.zk, i64 260
  %bound0402 = icmp ult ptr %scevgep398, %scevgep401
  %bound1403 = icmp ult ptr %scevgep400, %scevgep399
  %found.conflict404 = and i1 %bound0402, %bound1403
  br i1 %found.conflict404, label %.preheader.i, label %vector.body407

vector.body407:                                   ; preds = %vector.memcheck397, %vector.body407
  %index408 = phi i64 [ %index.next412, %vector.body407 ], [ 0, %vector.memcheck397 ] ; 4 uses
  %i.acb = getelementptr [4 x i8], ptr %i.zk, i64 %index408 ; 2 uses
  %i.acc = getelementptr i8, ptr %i.acb, i64 -4
  %wide.load409 = load <4 x float>, ptr %i.acc, align 4, !tbaa !46, !alias.scope !73
  %i.acd = fpext nsz <4 x float> %wide.load409 to <4 x double>
  %wide.load410 = load <4 x float>, ptr %i.acb, align 4, !tbaa !46, !alias.scope !73
  %i.ace = fpext nsz <4 x float> %wide.load410 to <4 x double>
  %i.acf = fmul nsz <4 x double> %i.ace, splat (double 6.400000e-01)
  %i.acg = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.acd, <4 x double> splat (double 1.800000e-01), <4 x double> %i.acf)
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.zk, i64 %index408
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 4
  %wide.load411 = load <4 x float>, ptr %i.aci, align 4, !tbaa !46, !alias.scope !73
  %i.acj = fpext nsz <4 x float> %wide.load411 to <4 x double>
  %i.ack = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.acj, <4 x double> splat (double 1.800000e-01), <4 x double> %i.acg)
  %i.acl = fptrunc nsz <4 x double> %i.ack to <4 x float>
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.xh, i64 %index408
  store <4 x float> %i.acl, ptr %i.acm, align 4, !tbaa !46, !alias.scope !76, !noalias !73
  %index.next412 = add nuw i64 %index408, 4       ; 2 uses
  %i.acn = icmp eq i64 %index.next412, 64
  br i1 %i.acn, label %middle.block413, label %vector.body407, !llvm.loop !78

bb.aj:                                            ; preds = %decode_pitch_lag_low.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.xh, ptr noundef nonnull align 4 dereferenceable(256) %i.zk, i64 256, i1 false)
  br label %decode_pitch_vector.exit

.preheader.i:                                     ; preds = %vector.memcheck397, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 0, %vector.memcheck397 ] ; 3 uses
  %i.aco = getelementptr [4 x i8], ptr %i.zk, i64 %indvars.iv.i ; 2 uses
  %i.acp = getelementptr i8, ptr %i.aco, i64 -4
  %i.acq = load float, ptr %i.acp, align 4, !tbaa !46
  %i.acr = fpext nsz float %i.acq to double
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.acs = load <2 x float>, ptr %i.aco, align 4, !tbaa !46
  %i.act = fpext <2 x float> %i.acs to <2 x double> ; 2 uses
  %i.acu = extractelement <2 x double> %i.act, i64 0
  %i.acv = fmul nsz double %i.acu, 6.400000e-01
  %i.acw = call nsz double @llvm.fmuladd.f64(double %i.acr, double 1.800000e-01, double %i.acv)
  %i.acx = extractelement <2 x double> %i.act, i64 1
  %i.acy = call nsz double @llvm.fmuladd.f64(double %i.acx, double 1.800000e-01, double %i.acw)
  %i.acz = fptrunc nsz double %i.acy to float
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %i.xh, i64 %indvars.iv.i
  store float %i.acz, ptr %i.ada, align 4, !tbaa !46
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 64
  br i1 %exitcond.not.i, label %middle.block413, label %.preheader.i, !llvm.loop !81

middle.block413:                                  ; preds = %vector.body407, %.preheader.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.zk, ptr noundef nonnull align 8 dereferenceable(256) %i.xh, i64 256, i1 false)
  br label %decode_pitch_vector.exit

decode_pitch_vector.exit:                         ; preds = %bb.aj, %middle.block413
  %i.adb = getelementptr inbounds nuw i8, ptr %i.zi, i64 8 ; 3 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.zi, i64 16 ; 8 uses
  %i.add = load i32, ptr %i.do, align 8, !tbaa !59 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.ade = icmp eq i32 %i.add, 0                  ; 2 uses
  switch i32 %i.add, label %bb.ap [
    i32 0, label %.preheader90.preheader.i
end_hunk_0
begin_hunk_1_@amrwb_decode_frame:bb.a
  store <4 x float> %i.bmd, ptr %i.blu, align 4, !tbaa !46
  store <4 x float> %i.bme, ptr %i.bmf, align 4, !tbaa !46
  %vector.recur.extract = extractelement <4 x float> %wide.load358.6, i64 3 ; 2 uses
  %vector.recur.extract361 = extractelement <4 x float> %wide.load358.6, i64 2
  %i.bmg = getelementptr inbounds nuw i8, ptr %.0.i204, i64 228
  %i.bmh = getelementptr inbounds nuw i8, ptr %.0.i204, i64 232
  %i.bmi = load float, ptr %i.bmh, align 4, !tbaa !46 ; 3 uses
  %i.bmj = fadd nsz float %vector.recur.extract361, %i.bmi
  %i.bmk = call nsz float @llvm.fmuladd.f32(float %i.biy, float %i.bmj, float %vector.recur.extract)
  store float %i.bmk, ptr %i.bmg, align 4, !tbaa !46
  %i.bml = getelementptr inbounds nuw i8, ptr %.0.i204, i64 232
  %i.bmm = getelementptr inbounds nuw i8, ptr %.0.i204, i64 236
  %i.bmn = load float, ptr %i.bmm, align 4, !tbaa !46 ; 3 uses
  %i.bmo = fadd nsz float %vector.recur.extract, %i.bmn
  %i.bmp = call nsz float @llvm.fmuladd.f32(float %i.biy, float %i.bmo, float %i.bmi)
  store float %i.bmp, ptr %i.bml, align 4, !tbaa !46
  %i.bmq = getelementptr inbounds nuw i8, ptr %.0.i204, i64 236
  %i.bmr = getelementptr inbounds nuw i8, ptr %.0.i204, i64 240
  %i.bms = load float, ptr %i.bmr, align 4, !tbaa !46 ; 3 uses
  %i.bmt = fadd nsz float %i.bmi, %i.bms
  %i.bmu = call nsz float @llvm.fmuladd.f32(float %i.biy, float %i.bmt, float %i.bmn)
  store float %i.bmu, ptr %i.bmq, align 4, !tbaa !46
  %i.bmv = getelementptr inbounds nuw i8, ptr %.0.i204, i64 240
  %i.bmw = getelementptr inbounds nuw i8, ptr %.0.i204, i64 244
  %i.bmx = load float, ptr %i.bmw, align 4, !tbaa !46 ; 3 uses
  %i.bmy = fadd nsz float %i.bmn, %i.bmx
  %i.bmz = call nsz float @llvm.fmuladd.f32(float %i.biy, float %i.bmy, float %i.bms)
  store float %i.bmz, ptr %i.bmv, align 4, !tbaa !46
  %i.bna = getelementptr inbounds nuw i8, ptr %.0.i204, i64 244
  %i.bnb = getelementptr inbounds nuw i8, ptr %.0.i204, i64 248
  %i.bnc = load float, ptr %i.bnb, align 4, !tbaa !46 ; 3 uses
  %i.bnd = fadd nsz float %i.bms, %i.bnc
  %i.bne = call nsz float @llvm.fmuladd.f32(float %i.biy, float %i.bnd, float %i.bmx)
  store float %i.bne, ptr %i.bna, align 4, !tbaa !46
  %i.bnf = getelementptr inbounds nuw i8, ptr %.0.i204, i64 248
  %i.bng = getelementptr inbounds nuw i8, ptr %.0.i204, i64 252
  %i.bnh = load float, ptr %i.bng, align 4, !tbaa !46 ; 2 uses
  %i.bni = fadd nsz float %i.bmx, %i.bnh
  %i.bnj = call nsz float @llvm.fmuladd.f32(float %i.biy, float %i.bni, float %i.bnc)
  store float %i.bnj, ptr %i.bnf, align 4, !tbaa !46
  %i.bnk = getelementptr inbounds nuw i8, ptr %.0.i204, i64 252
  %i.bnl = call nsz float @llvm.fmuladd.f32(float %i.biy, float %i.bnc, float %i.bnh)
  store float %i.bnl, ptr %i.bnk, align 4, !tbaa !46
  %i.bnm = getelementptr inbounds nuw [64 x i8], ptr %i.wv, i64 %indvars.iv276 ; 17 uses
  %i.bnn = load ptr, ptr %i.xw, align 8, !tbaa !106
  %i.bno = load float, ptr %i.xk, align 8, !tbaa !46
  call void %i.bnn(ptr noundef nonnull %i.f, ptr noundef nonnull %i.xh, ptr noundef nonnull %.0.i204, float noundef %i.bno, float noundef %i.bhf, i32 noundef 64) #10, !inline_history !107
  %i.bnp = load float, ptr %i.xk, align 8, !tbaa !46
  %i.bnq = fcmp nsz ogt float %i.bnp, 5.000000e-01
  br i1 %i.bnq, label %bb.bg, label %synthesis.exit

bb.bg:                                            ; preds = %anti_sparseness.exit
  %i.bnr = load i32, ptr %i.do, align 8, !tbaa !59
  %i.bns = icmp ult i32 %i.bnr, 2
  br i1 %i.bns, label %vector.memcheck332, label %synthesis.exit

vector.memcheck332:                               ; preds = %bb.bg
  %i.bnt = load ptr, ptr %i.xl, align 8, !tbaa !93
  %i.bnu = call nsz float %i.bnt(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, i32 noundef 64) #10, !inline_history !107
  %i.bnv = load float, ptr %i.xk, align 8, !tbaa !46
  %i.bnw = fpext nsz float %i.bnv to double       ; 2 uses
  %i.bnx = fmul nsz double %i.bnw, 2.500000e-01
  %i.bny = fmul nsz double %i.bnx, %i.bnw
  %i.bnz = fptrunc nsz double %i.bny to float     ; 3 uses
  br i1 %found.conflict338, label %scalar.ph339, label %vector.body341

vector.body341:                                   ; preds = %vector.memcheck332
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bnz, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 16 uses
  %wide.load343 = load <4 x float>, ptr %i.xh, align 8, !tbaa !46, !alias.scope !108
  %wide.load344 = load <4 x float>, ptr %i.yt, align 8, !tbaa !46, !alias.scope !108
  %wide.load345 = load <4 x float>, ptr %i.f, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  %wide.load346 = load <4 x float>, ptr %i.bk, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  %i.boa = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load343, <4 x float> %wide.load345)
  %i.bob = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load344, <4 x float> %wide.load346)
  store <4 x float> %i.boa, ptr %i.f, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  store <4 x float> %i.bob, ptr %i.bk, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  %wide.load343.1 = load <4 x float>, ptr %i.yu, align 8, !tbaa !46, !alias.scope !108
  %wide.load344.1 = load <4 x float>, ptr %i.yv, align 8, !tbaa !46, !alias.scope !108
  %wide.load345.1 = load <4 x float>, ptr %i.bl, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  %wide.load346.1 = load <4 x float>, ptr %i.bm, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  %i.boc = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load343.1, <4 x float> %wide.load345.1)
  %i.bod = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load344.1, <4 x float> %wide.load346.1)
  store <4 x float> %i.boc, ptr %i.bl, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  store <4 x float> %i.bod, ptr %i.bm, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  %wide.load343.2 = load <4 x float>, ptr %i.yw, align 8, !tbaa !46, !alias.scope !108
  %wide.load344.2 = load <4 x float>, ptr %i.yx, align 8, !tbaa !46, !alias.scope !108
  %wide.load345.2 = load <4 x float>, ptr %i.bn, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  %wide.load346.2 = load <4 x float>, ptr %i.bo, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  %i.boe = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load343.2, <4 x float> %wide.load345.2)
  %i.bof = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load344.2, <4 x float> %wide.load346.2)
  store <4 x float> %i.boe, ptr %i.bn, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  store <4 x float> %i.bof, ptr %i.bo, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  %wide.load343.3 = load <4 x float>, ptr %i.yy, align 8, !tbaa !46, !alias.scope !108
  %wide.load344.3 = load <4 x float>, ptr %i.yz, align 8, !tbaa !46, !alias.scope !108
  %wide.load345.3 = load <4 x float>, ptr %i.bp, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  %wide.load346.3 = load <4 x float>, ptr %i.bq, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  %i.bog = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load343.3, <4 x float> %wide.load345.3)
  %i.boh = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load344.3, <4 x float> %wide.load346.3)
  store <4 x float> %i.bog, ptr %i.bp, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  store <4 x float> %i.boh, ptr %i.bq, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  %wide.load343.4 = load <4 x float>, ptr %i.za, align 8, !tbaa !46, !alias.scope !108
  %wide.load344.4 = load <4 x float>, ptr %i.zb, align 8, !tbaa !46, !alias.scope !108
  %wide.load345.4 = load <4 x float>, ptr %i.br, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  %wide.load346.4 = load <4 x float>, ptr %i.bs, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  %i.boi = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load343.4, <4 x float> %wide.load345.4)
  %i.boj = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load344.4, <4 x float> %wide.load346.4)
  store <4 x float> %i.boi, ptr %i.br, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  store <4 x float> %i.boj, ptr %i.bs, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  %wide.load343.5 = load <4 x float>, ptr %i.zc, align 8, !tbaa !46, !alias.scope !108
  %wide.load344.5 = load <4 x float>, ptr %i.zd, align 8, !tbaa !46, !alias.scope !108
  %wide.load345.5 = load <4 x float>, ptr %i.bt, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  %wide.load346.5 = load <4 x float>, ptr %i.bu, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  %i.bok = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load343.5, <4 x float> %wide.load345.5)
  %i.bol = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load344.5, <4 x float> %wide.load346.5)
  store <4 x float> %i.bok, ptr %i.bt, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  store <4 x float> %i.bol, ptr %i.bu, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  %wide.load343.6 = load <4 x float>, ptr %i.ze, align 8, !tbaa !46, !alias.scope !108
  %wide.load344.6 = load <4 x float>, ptr %i.zf, align 8, !tbaa !46, !alias.scope !108
  %wide.load345.6 = load <4 x float>, ptr %i.bv, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  %wide.load346.6 = load <4 x float>, ptr %i.bw, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  %i.bom = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load343.6, <4 x float> %wide.load345.6)
  %i.bon = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load344.6, <4 x float> %wide.load346.6)
  store <4 x float> %i.bom, ptr %i.bv, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  store <4 x float> %i.bon, ptr %i.bw, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  %wide.load343.7 = load <4 x float>, ptr %i.zg, align 8, !tbaa !46, !alias.scope !108
  %wide.load344.7 = load <4 x float>, ptr %i.zh, align 8, !tbaa !46, !alias.scope !108
  %wide.load345.7 = load <4 x float>, ptr %i.bx, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  %wide.load346.7 = load <4 x float>, ptr %i.by, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  %i.boo = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load343.7, <4 x float> %wide.load345.7)
  %i.bop = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load344.7, <4 x float> %wide.load346.7)
  store <4 x float> %i.boo, ptr %i.bx, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  store <4 x float> %i.bop, ptr %i.by, align 16, !tbaa !46, !alias.scope !111, !noalias !108
  br label %middle.block348

scalar.ph339:                                     ; preds = %vector.memcheck332, %scalar.ph339
  %indvars.iv.i211 = phi i64 [ %indvars.iv.next.i212.1, %scalar.ph339 ], [ 0, %vector.memcheck332 ] ; 4 uses
  %i.boq = getelementptr inbounds nuw [4 x i8], ptr %i.xh, i64 %indvars.iv.i211
  %i.bor = load float, ptr %i.boq, align 4, !tbaa !46
  %i.bos = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i211 ; 2 uses
  %i.bot = load float, ptr %i.bos, align 8, !tbaa !46
  %i.bou = call nsz float @llvm.fmuladd.f32(float %i.bnz, float %i.bor, float %i.bot)
  store float %i.bou, ptr %i.bos, align 8, !tbaa !46
  %indvars.iv.next.i212 = or disjoint i64 %indvars.iv.i211, 1 ; 2 uses
  %i.bov = getelementptr inbounds nuw [4 x i8], ptr %i.xh, i64 %indvars.iv.next.i212
  %i.bow = load float, ptr %i.bov, align 4, !tbaa !46
  %i.box = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next.i212 ; 2 uses
  %i.boy = load float, ptr %i.box, align 4, !tbaa !46
  %i.boz = call nsz float @llvm.fmuladd.f32(float %i.bnz, float %i.bow, float %i.boy)
  store float %i.boz, ptr %i.box, align 4, !tbaa !46
  %indvars.iv.next.i212.1 = add nuw nsw i64 %indvars.iv.i211, 2 ; 2 uses
  %exitcond.not.i213.1 = icmp eq i64 %indvars.iv.next.i212.1, 64
  br i1 %exitcond.not.i213.1, label %middle.block348, label %scalar.ph339, !llvm.loop !113

middle.block348:                                  ; preds = %scalar.ph339, %vector.body341
  call void @ff_scale_vector_to_given_sum_of_squares(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, float noundef %i.bnu, i32 noundef 64) #10
  br label %synthesis.exit

synthesis.exit:                                   ; preds = %anti_sparseness.exit, %bb.bg, %middle.block348
  %i.bpa = load ptr, ptr %i.xx, align 8, !tbaa !114
  call void %i.bpa(ptr noundef nonnull %i.xv, ptr noundef nonnull %i.bnm, ptr noundef nonnull %i.f, i32 noundef 64, i32 noundef 16) #10, !inline_history !107
  %i.bpb = load float, ptr %i.xv, align 8, !tbaa !46
  %i.bpc = load float, ptr %i.xz, align 8, !tbaa !46
  %i.bpd = call nsz float @llvm.fmuladd.f32(float %i.bpc, float 6.800000e-01, float %i.bpb)
  store float %i.bpd, ptr %i.xy, align 8, !tbaa !46
  %load_initial = load float, ptr %scevgep417, align 4
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %synthesis.exit
  %store_forwarded = phi float [ %load_initial, %synthesis.exit ], [ %i.bpp, %bb.bh ]
  %indvars.iv.i214 = phi i64 [ 1, %synthesis.exit ], [ %indvars.iv.next.i215.2, %bb.bh ] ; 5 uses
  %i.bpe = getelementptr inbounds nuw [4 x i8], ptr %i.xv, i64 %indvars.iv.i214
  %i.bpf = load float, ptr %i.bpe, align 4, !tbaa !46
  %i.bpg = getelementptr [4 x i8], ptr %i.xy, i64 %indvars.iv.i214
  %i.bph = call nsz float @llvm.fmuladd.f32(float %store_forwarded, float 6.800000e-01, float %i.bpf) ; 2 uses
  store float %i.bph, ptr %i.bpg, align 4, !tbaa !46
  %indvars.iv.next.i215 = add nuw nsw i64 %indvars.iv.i214, 1 ; 2 uses
  %i.bpi = getelementptr inbounds nuw [4 x i8], ptr %i.xv, i64 %indvars.iv.next.i215
  %i.bpj = load float, ptr %i.bpi, align 4, !tbaa !46
  %i.bpk = getelementptr [4 x i8], ptr %i.xy, i64 %indvars.iv.next.i215
  %i.bpl = call nsz float @llvm.fmuladd.f32(float %i.bph, float 6.800000e-01, float %i.bpj) ; 2 uses
  store float %i.bpl, ptr %i.bpk, align 4, !tbaa !46
  %indvars.iv.next.i215.1 = add nuw nsw i64 %indvars.iv.i214, 2 ; 2 uses
  %i.bpm = getelementptr inbounds nuw [4 x i8], ptr %i.xv, i64 %indvars.iv.next.i215.1
  %i.bpn = load float, ptr %i.bpm, align 4, !tbaa !46
  %i.bpo = getelementptr [4 x i8], ptr %i.xy, i64 %indvars.iv.next.i215.1
  %i.bpp = call nsz float @llvm.fmuladd.f32(float %i.bpl, float 6.800000e-01, float %i.bpn) ; 2 uses
  store float %i.bpp, ptr %i.bpo, align 4, !tbaa !46
  %indvars.iv.next.i215.2 = add nuw nsw i64 %indvars.iv.i214, 3 ; 2 uses
  %exitcond.not.i216.2 = icmp eq i64 %indvars.iv.next.i215.2, 64
  br i1 %exitcond.not.i216.2, label %de_emphasis.exit, label %bb.bh, !llvm.loop !115

de_emphasis.exit:                                 ; preds = %bb.bh
  %i.bpq = load float, ptr %i.ya, align 4, !tbaa !46
  store float %i.bpq, ptr %i.xz, align 8, !tbaa !46
  %i.bpr = load ptr, ptr %i.yb, align 8, !tbaa !116
  call void %i.bpr(ptr noundef nonnull %i.xy, ptr noundef nonnull %i.xy, ptr noundef nonnull @hpf_zeros, ptr noundef nonnull @hpf_31_poles, float noundef f0x3F7D5000, ptr noundef nonnull %i.yc, i32 noundef 64) #10
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %de_emphasis.exit
  %indvars.iv42.i = phi i64 [ 0, %de_emphasis.exit ], [ %indvars.iv.next43.i, %bb.bi ] ; 2 uses
  %indvars.iv.i217 = phi i64 [ 0, %de_emphasis.exit ], [ %indvars.iv.next41.i, %bb.bi ] ; 3 uses
  %.02130.i = phi i32 [ 0, %de_emphasis.exit ], [ %i.bqk, %bb.bi ]
  %i.bps = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %indvars.iv.i217
  %i.bpt = load float, ptr %i.bps, align 4, !tbaa !46
  %i.bpu = getelementptr inbounds nuw [4 x i8], ptr %i.zj, i64 %indvars.iv42.i ; 5 uses
  store float %i.bpt, ptr %i.bpu, align 4, !tbaa !46
  %i.bpv = load ptr, ptr %i.xl, align 8, !tbaa !94
  %i.bpw = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %indvars.iv.i217 ; 4 uses
  %i.bpx = call nsz float %i.bpv(ptr noundef nonnull %i.bpw, ptr noundef nonnull @upsample_fir, i32 noundef 24) #10, !inline_history !117
  %4 = getelementptr inbounds nuw i8, ptr %i.bpu, i64 4
  store float %i.bpx, ptr %4, align 4, !tbaa !46
  %i.bpy = load ptr, ptr %i.xl, align 8, !tbaa !94
  %i.bpz = getelementptr inbounds nuw i8, ptr %i.bpw, i64 4
  %i.bqa = call nsz float %i.bpy(ptr noundef nonnull %i.bpz, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @upsample_fir, i64 96), i32 noundef 24) #10, !inline_history !117
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.bpu, i64 8
  store float %i.bqa, ptr %i.bqb, align 4, !tbaa !46
  %i.bqc = load ptr, ptr %i.xl, align 8, !tbaa !94
  %i.bqd = getelementptr inbounds nuw i8, ptr %i.bpw, i64 8
  %i.bqe = call nsz float %i.bqc(ptr noundef nonnull %i.bqd, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @upsample_fir, i64 192), i32 noundef 24) #10, !inline_history !117
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bpu, i64 12
  store float %i.bqe, ptr %i.bqf, align 4, !tbaa !46
  %i.bqg = load ptr, ptr %i.xl, align 8, !tbaa !94
  %i.bqh = getelementptr inbounds nuw i8, ptr %i.bpw, i64 12
  %i.bqi = call nsz float %i.bqg(ptr noundef nonnull %i.bqh, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @upsample_fir, i64 288), i32 noundef 24) #10, !inline_history !117
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bpu, i64 16
  store float %i.bqi, ptr %i.bqj, align 4, !tbaa !46
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv.i217, 4
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 5
  %i.bqk = add nuw nsw i32 %.02130.i, 1           ; 2 uses
  %exitcond.not.i218 = icmp eq i32 %i.bqk, 16
  br i1 %exitcond.not.i218, label %upsample_5_4.exit, label %bb.bi, !llvm.loop !118

upsample_5_4.exit:                                ; preds = %bb.bi
  %i.bql = load ptr, ptr %i.yb, align 8, !tbaa !116
  call void %i.bql(ptr noundef nonnull %i.h, ptr noundef nonnull %i.xy, ptr noundef nonnull @hpf_zeros, ptr noundef nonnull @hpf_400_poles, float noundef f0x3F64C000, ptr noundef nonnull %i.yf, i32 noundef 64) #10
  %i.bqm = load i16, ptr %i.dg, align 8, !tbaa !119
  %i.bqn = and i16 %i.bqm, 255
  %i.bqo = icmp ne i16 %i.bqn, 0
  %i.bqp = load i32, ptr %i.do, align 8, !tbaa !59
  %i.bqq = icmp eq i32 %i.bqp, 8
  br i1 %i.bqq, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %upsample_5_4.exit
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.zi, i64 6
  %i.bqs = load i16, ptr %i.bqr, align 2, !tbaa !120
  %i.bqt = zext i16 %i.bqs to i64
  %i.bqu = getelementptr inbounds nuw [2 x i8], ptr @qua_hb_gain, i64 %i.bqt
  %i.bqv = load i16, ptr %i.bqu, align 2, !tbaa !61
  %i.bqw = uitofp i16 %i.bqv to float
  %i.bqx = fmul nnan nsz float %i.bqw, f0x38800000
  br label %find_hb_gain.exit

bb.bk:                                            ; preds = %upsample_5_4.exit
  %i.bqy = load ptr, ptr %i.xl, align 8, !tbaa !93
  %i.bqz = call nsz float %i.bqy(ptr noundef nonnull %i.h, ptr noundef nonnull %i.aj, i32 noundef 63) #10, !inline_history !121 ; 2 uses
  %i.bra = fcmp nsz ogt float %i.bqz, 0.000000e+00
  br i1 %i.bra, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.brb = load ptr, ptr %i.xl, align 8, !tbaa !93
  %i.brc = call nsz float %i.brb(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h, i32 noundef 64) #10, !inline_history !121
  %i.brd = fdiv nsz float %i.bqz, %i.brc
  %i.bre = fpext nsz float %i.brd to double
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.013.i = phi double [ %i.bre, %bb.bl ], [ 0.000000e+00, %bb.bk ]
  %i.brf = fsub nsz double 1.000000e+00, %.013.i
  %i.brg = uitofp i1 %i.bqo to double
  %i.brh = call nnan nsz double @llvm.fmuladd.f64(double %i.brg, double -2.500000e-01, double 1.250000e+00)
  %i.bri = fmul nsz double %i.brh, %i.brf
  %i.brj = fptrunc nsz double %i.bri to float     ; 2 uses
  %i.brk = fcmp nsz ogt float %i.brj, 1.000000e-01
  %i.brl = select nsz i1 %i.brk, float %i.brj, float 1.000000e-01 ; 2 uses
  %i.brm = fcmp nsz ogt float %i.brl, 1.000000e+00
  %..i.i = select nsz i1 %i.brm, float 1.000000e+00, float %i.brl
  br label %find_hb_gain.exit

find_hb_gain.exit:                                ; preds = %bb.bj, %bb.bm
  %.0.i219 = phi nsz float [ %i.bqx, %bb.bj ], [ %..i.i, %bb.bm ] ; 2 uses
  %i.brn = load ptr, ptr %i.xl, align 8, !tbaa !93
  %i.bro = call nsz float %i.brn(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, i32 noundef 64) #10, !inline_history !122
  %.promoted.i = load i32, ptr %i.yh, align 4, !tbaa !123
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %find_hb_gain.exit
  %indvars.iv.i220 = phi i64 [ 0, %find_hb_gain.exit ], [ %indvars.iv.next.i221, %bb.bn ] ; 2 uses
  %i.brp = phi i32 [ %.promoted.i, %find_hb_gain.exit ], [ %i.bse, %bb.bn ] ; 4 uses
  %i.brq = add i32 %i.brp, 40
  %i.brr = and i32 %i.brq, 63
  %i.brs = zext nneg i32 %i.brr to i64
  %i.brt = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %i.brs
  %i.bru = load i32, ptr %i.brt, align 4, !tbaa !30
  %i.brv = add i32 %i.brp, 9
  %i.brw = and i32 %i.brv, 63
  %i.brx = zext nneg i32 %i.brw to i64
  %i.bry = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %i.brx
  %i.brz = load i32, ptr %i.bry, align 4, !tbaa !30
  %i.bsa = add i32 %i.brz, %i.bru                 ; 2 uses
  %i.bsb = and i32 %i.brp, 63
  %i.bsc = zext nneg i32 %i.bsb to i64
  %i.bsd = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %i.bsc
  store i32 %i.bsa, ptr %i.bsd, align 4, !tbaa !30
  %i.bse = add i32 %i.brp, 1                      ; 2 uses
  %i.bsf = and i32 %i.bsa, 65535
  %i.bsg = uitofp nneg i32 %i.bsf to float
  %i.bsh = fsub nsz float 3.276800e+04, %i.bsg
  %i.bsi = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i220
  store float %i.bsh, ptr %i.bsi, align 4, !tbaa !46
  %indvars.iv.next.i221 = add nuw nsw i64 %indvars.iv.i220, 1 ; 2 uses
  %exitcond.not.i222 = icmp eq i64 %indvars.iv.next.i221, 80
  br i1 %exitcond.not.i222, label %scaled_hb_excitation.exit, label %bb.bn, !llvm.loop !124

scaled_hb_excitation.exit:                        ; preds = %bb.bn
  store i32 %i.bse, ptr %i.yh, align 4, !tbaa !123
  %i.bsj = fmul nsz float %.0.i219, %i.bro
  %i.bsk = fmul nsz float %.0.i219, %i.bsj
  call void @ff_scale_vector_to_given_sum_of_squares(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g, float noundef %i.bsk, i32 noundef 80) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.bsl = load i32, ptr %i.do, align 8, !tbaa !59
  %i.bsm = icmp eq i32 %i.bsl, 0
  br i1 %i.bsm, label %bb.bo, label %lpc_weighting.exit16.loopexit.i

bb.bo:                                            ; preds = %scaled_hb_excitation.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.bsn = load ptr, ptr %i.xw, align 8, !tbaa !106
  %i.bso = getelementptr inbounds nuw [4 x i8], ptr @isfp_inter, i64 %indvars.iv276
  %i.bsp = load float, ptr %i.bso, align 4, !tbaa !46 ; 2 uses
  %i.bsq = fsub nsz float 1.000000e+00, %i.bsp
  call void %i.bsn(ptr noundef nonnull %i.b, ptr noundef nonnull %i.po, ptr noundef nonnull %i.nl, float noundef %i.bsp, float noundef %i.bsq, i32 noundef 16) #10, !inline_history !125
  %i.bsr = load float, ptr %i.az, align 4, !tbaa !46
  %i.bss = load <2 x float>, ptr %i.bb, align 8, !tbaa !46 ; 2 uses
  %i.bst = load float, ptr %i.bc, align 4, !tbaa !46 ; 3 uses
  %i.bsu = extractelement <2 x float> %i.bss, i64 0 ; 2 uses
  %i.bsv = fsub nsz float %i.bst, %i.bsu
  %i.bsw = load <4 x float>, ptr %i.bd, align 16, !tbaa !46 ; 6 uses
  %i.bsx = extractelement <4 x float> %i.bsw, i64 0 ; 2 uses
  %i.bsy = fsub nsz float %i.bsx, %i.bst          ; 2 uses
  %i.bsz = load <4 x float>, ptr %i.be, align 16, !tbaa !46 ; 6 uses
  %i.bta = load <2 x float>, ptr %i.bg, align 4, !tbaa !46 ; 3 uses
  %i.btb = extractelement <2 x float> %i.bta, i64 1 ; 6 uses
  %i.btc = load float, ptr %i.bf, align 16, !tbaa !46 ; 3 uses
  %i.btd = extractelement <2 x float> %i.bta, i64 0 ; 2 uses
  %i.bte = fsub nsz float %i.btd, %i.btc          ; 2 uses
  %i.btf = fsub nsz float %i.btb, %i.btd          ; 2 uses
  %i.btg = fmul nsz float %i.bsv, f0x3DAAAAAB
  %i.bth = call nsz float @llvm.fmuladd.f32(float %i.bsy, float f0x3DAAAAAB, float %i.btg)
  %i.bti = shufflevector <4 x float> %i.bsw, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.btj = shufflevector <4 x float> %i.bsw, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.btk = fsub nsz <2 x float> %i.bti, %i.btj    ; 2 uses
  %i.btl = shufflevector <4 x float> %i.bsw, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.btm = fsub nsz <2 x float> %i.btl, %i.bti    ; 2 uses
  %i.btn = shufflevector <4 x float> %i.bsw, <4 x float> %i.bsz, <2 x i32> <i32 3, i32 4> ; 2 uses
  %i.bto = fsub nsz <2 x float> %i.btn, %i.btl    ; 2 uses
  %i.btp = shufflevector <4 x float> %i.bsz, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.btq = fsub nsz <2 x float> %i.btp, %i.btn    ; 2 uses
  %i.btr = shufflevector <4 x float> %i.bsz, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bts = fsub nsz <2 x float> %i.btr, %i.btp    ; 2 uses
  %i.btt = shufflevector <4 x float> %i.bsz, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.btu = fsub nsz <2 x float> %i.btt, %i.btr    ; 2 uses
  %i.btv = shufflevector <4 x float> %i.bsz, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.btw = insertelement <2 x float> %i.btv, float %i.btc, i64 1
  %i.btx = fsub nsz <2 x float> %i.btw, %i.btt    ; 3 uses
  %i.bty = extractelement <2 x float> %i.btk, i64 0
  %i.btz = call nsz float @llvm.fmuladd.f32(float %i.bty, float f0x3DAAAAAB, float %i.bth)
  %i.bua = extractelement <2 x float> %i.btm, i64 0
  %i.bub = call nsz float @llvm.fmuladd.f32(float %i.bua, float f0x3DAAAAAB, float %i.btz)
  %i.buc = extractelement <2 x float> %i.bto, i64 0
  %i.bud = call nsz float @llvm.fmuladd.f32(float %i.buc, float f0x3DAAAAAB, float %i.bub)
  %i.bue = extractelement <2 x float> %i.btq, i64 0
  %i.buf = call nsz float @llvm.fmuladd.f32(float %i.bue, float f0x3DAAAAAB, float %i.bud)
  %i.bug = extractelement <2 x float> %i.bts, i64 0
  %i.buh = call nsz float @llvm.fmuladd.f32(float %i.bug, float f0x3DAAAAAB, float %i.buf)
  %i.bui = extractelement <2 x float> %i.btu, i64 0
  %i.buj = call nsz float @llvm.fmuladd.f32(float %i.bui, float f0x3DAAAAAB, float %i.buh)
  %i.buk = extractelement <2 x float> %i.btx, i64 0
  %i.bul = call nsz float @llvm.fmuladd.f32(float %i.buk, float f0x3DAAAAAB, float %i.buj)
  %i.bum = extractelement <2 x float> %i.btx, i64 1
  %i.bun = call nsz float @llvm.fmuladd.f32(float %i.bum, float f0x3DAAAAAB, float %i.bul)
  %i.buo = call nsz float @llvm.fmuladd.f32(float %i.bte, float f0x3DAAAAAB, float %i.bun)
  %i.bup = call nsz float @llvm.fmuladd.f32(float %i.btf, float f0x3DAAAAAB, float %i.buo) ; 4 uses
  %i.buq = insertelement <2 x float> poison, float %i.bup, i64 0
  %i.bur = shufflevector <2 x float> %i.buq, <2 x float> poison, <2 x i32> zeroinitializer ; 7 uses
  %i.bus = fsub nsz <2 x float> %i.bts, %i.bur    ; 4 uses
  %i.but = fsub nsz <2 x float> %i.btq, %i.bur    ; 4 uses
  %i.buu = fsub nsz <2 x float> %i.btu, %i.bur    ; 4 uses
  %i.buv = fsub nsz <2 x float> %i.btx, %i.bur    ; 5 uses
  %i.buw = fsub nsz float %i.bte, %i.bup          ; 2 uses
  %i.bux = fsub nsz float %i.btf, %i.bup          ; 2 uses
  %i.buy = fsub nsz <2 x float> %i.bto, %i.bur    ; 2 uses
  %i.buz = fsub nsz <2 x float> %i.btm, %i.bur    ; 2 uses
  %i.bva = fsub nsz <2 x float> %i.btk, %i.bur    ; 2 uses
  %i.bvb = shufflevector <2 x float> %i.but, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bvc = fmul nsz <2 x float> %i.bvb, %i.bva    ; 2 uses
  %i.bvd = fmul nsz <2 x float> %i.bvc, %i.bvc
  %i.bve = shufflevector <2 x float> %i.bus, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bvf = fmul nsz <2 x float> %i.bve, %i.buz    ; 2 uses
  %i.bvg = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bvf, <2 x float> %i.bvf, <2 x float> %i.bvd)
  %i.bvh = shufflevector <2 x float> %i.buu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bvi = fmul nsz <2 x float> %i.bvh, %i.buy    ; 2 uses
  %i.bvj = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bvi, <2 x float> %i.bvi, <2 x float> %i.bvg)
  %i.bvk = shufflevector <2 x float> %i.buv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bvl = fmul nsz <2 x float> %i.bvk, %i.but    ; 2 uses
  %i.bvm = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bvl, <2 x float> %i.bvl, <2 x float> %i.bvj)
  %i.bvn = shufflevector <2 x float> %i.buv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bvo = fmul nsz <2 x float> %i.bvn, %i.bus    ; 2 uses
  %i.bvp = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bvo, <2 x float> %i.bvo, <2 x float> %i.bvm)
  %i.bvq = insertelement <2 x float> poison, float %i.buw, i64 0
  %i.bvr = shufflevector <2 x float> %i.bvq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bvs = fmul nsz <2 x float> %i.bvr, %i.buu    ; 2 uses
  %i.bvt = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bvs, <2 x float> %i.bvs, <2 x float> %i.bvp)
  %i.bvu = insertelement <2 x float> poison, float %i.bux, i64 0
  %i.bvv = shufflevector <2 x float> %i.bvu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bvw = fmul nsz <2 x float> %i.bvv, %i.buv    ; 2 uses
  %i.bvx = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bvw, <2 x float> %i.bvw, <2 x float> %i.bvt) ; 2 uses
  %i.bvy = extractelement <2 x float> %i.bvx, i64 0 ; 2 uses
  %i.bvz = extractelement <2 x float> %i.bvx, i64 1 ; 2 uses
  %i.bwa = fcmp nsz ogt float %i.bvy, %i.bvz      ; 2 uses
  %.1.1.i.i = zext i1 %i.bwa to i32
  %i.bwb = fsub nsz float %i.bsy, %i.bup
  %i.bwc = extractelement <2 x float> %i.but, i64 0
  %i.bwd = fmul nsz float %i.bwc, %i.bwb          ; 2 uses
  %i.bwe = fmul nsz float %i.bwd, %i.bwd
  %i.bwf = extractelement <2 x float> %i.bus, i64 0
  %foldExtExtBinop = fmul nsz <2 x float> %i.bus, %i.bva
  %i.bwg = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bwh = call nsz float @llvm.fmuladd.f32(float %i.bwg, float %i.bwg, float %i.bwe)
  %i.bwi = extractelement <2 x float> %i.buu, i64 0
end_hunk_1
