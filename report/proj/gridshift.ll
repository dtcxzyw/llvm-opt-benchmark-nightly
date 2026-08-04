begin_hunk_0_@_ZN12_GLOBAL__N_113gridshiftData16grid_interpolateEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE5PJ_XYPKN5osgeo4proj16GenericShiftGridERb:bb.a
  %or.cond25 = select i1 %i.tw, i1 %i.tx, i1 false
  br i1 %or.cond25, label %bb.ci, label %bb.dr

bb.cf:                                            ; preds = %bb.cd
  %i.ty = add nuw nsw i32 %i.th, 1                ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !182 ; 2 uses
  %.not348 = icmp slt i32 %i.ty, %i.ua
  br i1 %.not348, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ub = icmp eq i32 %i.ty, %i.ua
  %i.uc = fcmp olt double %i.tl, 1.000000e-04
  %or.cond28 = select i1 %i.ub, i1 %i.uc, i1 false
  br i1 %or.cond28, label %bb.ch, label %bb.dr

bb.ch:                                            ; preds = %bb.cg
  %i.ud = add nsw i32 %i.th, -1
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ce, %bb.cf, %bb.ch
  %.sroa.22.0 = phi i32 [ %i.ud, %bb.ch ], [ %i.th, %bb.cf ], [ 0, %bb.ce ] ; 10 uses
  %.sroa.18.0 = phi double [ 1.000000e+00, %bb.ch ], [ %i.tl, %bb.cf ], [ 0.000000e+00, %bb.ce ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i8 0, ptr %i.d, align 1, !tbaa !59
  br i1 %i.sk, label %bb.cj, label %bb.cv

bb.cj:                                            ; preds = %bb.ci
  %i.ue = fsub double 1.000000e+00, %.sroa.0.0    ; 2 uses
  %i.uf = fmul double %.sroa.0.0, %.sroa.18.0     ; 4 uses
  %i.ug = fmul double %i.ue, %.sroa.18.0          ; 4 uses
  %i.uh = fsub double 1.000000e+00, %.sroa.18.0   ; 2 uses
  %i.ui = fmul double %i.ue, %i.uh                ; 4 uses
  %i.uj = fmul double %.sroa.0.0, %i.uh           ; 4 uses
  %i.uk = icmp sgt i32 %i.sd, -1
  %i.ul = icmp sgt i32 %i.sf, -1
  %or.cond30 = select i1 %i.uk, i1 %i.ul, i1 false
  br i1 %or.cond30, label %bb.ck, label %bb.cq

bb.ck:                                            ; preds = %bb.cj
  %i.um = getelementptr inbounds nuw i8, ptr %.sroa.0553.0, i64 112 ; 2 uses
  %.val386 = load i32, ptr %i.um, align 8, !tbaa !166
  %i.un = getelementptr i8, ptr %.sroa.0553.0, i64 116
  %.val387 = load i32, ptr %i.un, align 4
  %.not.i = icmp ne i32 %.val386, %.sroa.0508.0
  %i.uo = icmp ne i32 %.val387, %.sroa.22.0
  %i.up = select i1 %.not.i, i1 true, i1 %i.uo
  %.pre724 = load i32, ptr %i.c, align 4, !tbaa !186 ; 2 uses
  br i1 %i.up, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  %i.uq = icmp sgt i32 %.pre724, -1
  %i.ur = select i1 %i.uq, i32 3, i32 2
  %i.us = getelementptr inbounds nuw i8, ptr %.sroa.0553.0, i64 88
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !142
  %i.uu = getelementptr inbounds nuw i8, ptr %.sroa.0553.0, i64 56
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !146
  %i.uw = load ptr, ptr %6, align 8, !tbaa !107
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 80
  %i.uy = load ptr, ptr %i.ux, align 8
  %i.uz = call noundef zeroext i1 %i.uy(ptr noundef nonnull align 8 dereferenceable(144) %6, i32 noundef %.sroa.0508.0, i32 noundef %.sroa.22.0, i32 noundef 2, i32 noundef 2, i32 noundef %i.ur, ptr noundef %i.ut, ptr noundef %i.uv, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  %.not = xor i1 %i.uz, true
  %i.va = load i8, ptr %i.d, align 1, !range !80
  %i.vb = trunc nuw i8 %i.va to i1
  %or.cond32 = select i1 %.not, i1 true, i1 %i.vb
  br i1 %or.cond32, label %.critedge366, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %.sroa.22.0.insert.ext540 = zext i32 %.sroa.22.0 to i64
  %.sroa.22.0.insert.shift541 = shl nuw i64 %.sroa.22.0.insert.ext540, 32
  %.sroa.0508.0.insert.ext526 = zext i32 %.sroa.0508.0 to i64
  %.sroa.0508.0.insert.insert528 = or disjoint i64 %.sroa.22.0.insert.shift541, %.sroa.0508.0.insert.ext526
  store i64 %.sroa.0508.0.insert.insert528, ptr %i.um, align 8
  %.pre723 = load i32, ptr %i.c, align 4, !tbaa !186
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.ck
  %i.vc = phi i32 [ %.pre723, %bb.cm ], [ %.pre724, %bb.ck ]
  %i.vd = icmp sgt i32 %i.vc, -1
  %i.ve = getelementptr inbounds nuw i8, ptr %.sroa.0553.0, i64 56
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !146 ; 12 uses
  %i.vg = load float, ptr %i.vf, align 4, !tbaa !191
  %i.vh = fpext float %i.vg to double             ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vf, i64 4 ; 2 uses
  br i1 %i.vd, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vf, i64 12
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vf, i64 24
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vf, i64 36
  %i.vm = load float, ptr %i.vi, align 4, !tbaa !191
  %i.vn = fpext float %i.vm to double
  %i.vo = load <2 x float>, ptr %i.vj, align 4, !tbaa !191
  %i.vp = fpext <2 x float> %i.vo to <2 x double>
  %i.vq = insertelement <2 x double> poison, double %i.uj, i64 0
  %i.vr = shufflevector <2 x double> %i.vq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vs = fmul <2 x double> %i.vr, %i.vp
  %i.vt = insertelement <2 x double> poison, double %i.ui, i64 0
  %i.vu = shufflevector <2 x double> %i.vt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vv = insertelement <2 x double> poison, double %i.vh, i64 0
  %i.vw = insertelement <2 x double> %i.vv, double %i.vn, i64 1
  %i.vx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vu, <2 x double> %i.vw, <2 x double> %i.vs)
  %i.vy = load <2 x float>, ptr %i.vk, align 4, !tbaa !191
  %i.vz = fpext <2 x float> %i.vy to <2 x double>
  %i.wa = insertelement <2 x double> poison, double %i.ug, i64 0
  %i.wb = shufflevector <2 x double> %i.wa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wb, <2 x double> %i.vz, <2 x double> %i.vx)
  %i.wd = load <2 x float>, ptr %i.vl, align 4, !tbaa !191
  %i.we = fpext <2 x float> %i.wd to <2 x double>
  %i.wf = insertelement <2 x double> poison, double %i.uf, i64 0
  %i.wg = shufflevector <2 x double> %i.wf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wg, <2 x double> %i.we, <2 x double> %i.wc)
  store <2 x double> %i.wh, ptr %0, align 8, !tbaa !115
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !191
  %i.wk = fpext float %i.wj to double
  %i.wl = getelementptr inbounds nuw i8, ptr %i.vf, i64 20
  %i.wm = load float, ptr %i.wl, align 4, !tbaa !191
  %i.wn = fpext float %i.wm to double
  %i.wo = fmul double %i.uj, %i.wn
  %i.wp = call double @llvm.fmuladd.f64(double %i.ui, double %i.wk, double %i.wo)
  %i.wq = getelementptr inbounds nuw i8, ptr %i.vf, i64 32
  %i.wr = load float, ptr %i.wq, align 4, !tbaa !191
  %i.ws = fpext float %i.wr to double
  %i.wt = call double @llvm.fmuladd.f64(double %i.ug, double %i.ws, double %i.wp)
  %i.wu = getelementptr inbounds nuw i8, ptr %i.vf, i64 44
  %i.wv = load float, ptr %i.wu, align 4, !tbaa !191
  %i.ww = fpext float %i.wv to double
  %i.wx = call double @llvm.fmuladd.f64(double %i.uf, double %i.ww, double %i.wt)
  store double %i.wx, ptr %i.e, align 8, !tbaa !118
  br label %bb.dn

bb.cp:                                            ; preds = %bb.cn
  %i.wy = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  %i.wz = getelementptr inbounds nuw i8, ptr %i.vf, i64 16
  %i.xa = getelementptr inbounds nuw i8, ptr %i.vf, i64 24
  %i.xb = load float, ptr %i.vi, align 4, !tbaa !191
  %i.xc = fpext float %i.xb to double
  %i.xd = load <2 x float>, ptr %i.wy, align 4, !tbaa !191
  %i.xe = fpext <2 x float> %i.xd to <2 x double>
  %i.xf = insertelement <2 x double> poison, double %i.uj, i64 0
  %i.xg = shufflevector <2 x double> %i.xf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xh = fmul <2 x double> %i.xg, %i.xe
  %i.xi = insertelement <2 x double> poison, double %i.ui, i64 0
  %i.xj = shufflevector <2 x double> %i.xi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xk = insertelement <2 x double> poison, double %i.vh, i64 0
  %i.xl = insertelement <2 x double> %i.xk, double %i.xc, i64 1
  %i.xm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xj, <2 x double> %i.xl, <2 x double> %i.xh)
  %i.xn = load <2 x float>, ptr %i.wz, align 4, !tbaa !191
  %i.xo = fpext <2 x float> %i.xn to <2 x double>
  %i.xp = insertelement <2 x double> poison, double %i.ug, i64 0
  %i.xq = shufflevector <2 x double> %i.xp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xq, <2 x double> %i.xo, <2 x double> %i.xm)
  %i.xs = load <2 x float>, ptr %i.xa, align 4, !tbaa !191
  %i.xt = fpext <2 x float> %i.xs to <2 x double>
  %i.xu = insertelement <2 x double> poison, double %i.uf, i64 0
  %i.xv = shufflevector <2 x double> %i.xu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xv, <2 x double> %i.xt, <2 x double> %i.xr)
  store <2 x double> %i.xw, ptr %0, align 8, !tbaa !115
  br label %bb.dn

bb.cq:                                            ; preds = %bb.cj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.xx = load i32, ptr %i.c, align 4, !tbaa !186
  %i.xy = icmp sgt i32 %i.xx, -1
  br i1 %i.xy, label %bb.cr, label %bb.dp

bb.cr:                                            ; preds = %bb.cq
  %i.xz = getelementptr inbounds nuw i8, ptr %.sroa.0553.0, i64 112 ; 2 uses
  %.val382 = load i32, ptr %i.xz, align 8, !tbaa !166
  %i.ya = getelementptr i8, ptr %.sroa.0553.0, i64 116
  %.val383 = load i32, ptr %i.ya, align 4
  %.not.i502 = icmp ne i32 %.val382, %.sroa.0508.0
  %i.yb = icmp ne i32 %.val383, %.sroa.22.0
  %i.yc = select i1 %.not.i502, i1 true, i1 %i.yb
  br i1 %i.yc, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  %i.yd = getelementptr inbounds nuw i8, ptr %.sroa.0553.0, i64 56
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !146
  %i.yf = load ptr, ptr %6, align 8, !tbaa !107
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 80
  %i.yh = load ptr, ptr %i.yg, align 8
  %i.yi = call noundef zeroext i1 %i.yh(ptr noundef nonnull align 8 dereferenceable(144) %6, i32 noundef %.sroa.0508.0, i32 noundef %.sroa.22.0, i32 noundef 2, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %i.c, ptr noundef %i.ye, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  %.not33 = xor i1 %i.yi, true
  %i.yj = load i8, ptr %i.d, align 1, !range !80
  %i.yk = trunc nuw i8 %i.yj to i1
  %or.cond35 = select i1 %.not33, i1 true, i1 %i.yk
  br i1 %or.cond35, label %.critedge366, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %.sroa.22.0.insert.ext535 = zext i32 %.sroa.22.0 to i64
  %.sroa.22.0.insert.shift536 = shl nuw i64 %.sroa.22.0.insert.ext535, 32
  %.sroa.0508.0.insert.ext522 = zext i32 %.sroa.0508.0 to i64
  %.sroa.0508.0.insert.insert524 = or disjoint i64 %.sroa.22.0.insert.shift536, %.sroa.0508.0.insert.ext522
  store i64 %.sroa.0508.0.insert.insert524, ptr %i.xz, align 8
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cr
  %i.yl = getelementptr inbounds nuw i8, ptr %.sroa.0553.0, i64 56
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !146 ; 4 uses
  %17 = load float, ptr %i.ym, align 4, !tbaa !191
  %18 = fpext float %17 to double
  %19 = getelementptr inbounds nuw i8, ptr %i.ym, i64 4
  %20 = load float, ptr %19, align 4, !tbaa !191
  %21 = fpext float %20 to double
  %i.yn = fmul double %i.uj, %21
  %22 = call double @llvm.fmuladd.f64(double %i.ui, double %18, double %i.yn)
  %23 = getelementptr inbounds nuw i8, ptr %i.ym, i64 8
  %24 = load float, ptr %23, align 4, !tbaa !191
  %25 = fpext float %24 to double
  %i.yo = call double @llvm.fmuladd.f64(double %i.ug, double %25, double %22)
  %26 = getelementptr inbounds nuw i8, ptr %i.ym, i64 12
  %27 = load float, ptr %26, align 4, !tbaa !191
  %28 = fpext float %27 to double
  %i.yp = call double @llvm.fmuladd.f64(double %i.uf, double %28, double %i.yo)
  store double %i.yp, ptr %i.e, align 8, !tbaa !118
  br label %bb.dp

bb.cv:                                            ; preds = %bb.ci
  %i.yq = fcmp ole double %.sroa.0.0, 5.000000e-01
  %i.yr = icmp sgt i32 %.sroa.0508.0, 0
  %or.cond38 = select i1 %i.yq, i1 %i.yr, i1 false
  br i1 %or.cond38, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ys = add nsw i32 %.sroa.0508.0, 2
  %i.yt = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.yu = load i32, ptr %i.yt, align 8, !tbaa !180
  %i.yv = icmp eq i32 %i.ys, %i.yu
  br i1 %i.yv, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cv, %bb.cw
  %i.yw = add nsw i32 %.sroa.0508.0, -1
  %i.yx = fadd double %.sroa.0.0, 1.000000e+00
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.sroa.0508.1 = phi i32 [ %i.yw, %bb.cx ], [ %.sroa.0508.0, %bb.cw ] ; 6 uses
  %.sroa.0.1 = phi double [ %i.yx, %bb.cx ], [ %.sroa.0.0, %bb.cw ] ; 10 uses
  %i.yy = fcmp ole double %.sroa.18.0, 5.000000e-01
  %i.yz = icmp sgt i32 %.sroa.22.0, 0
  %or.cond41 = select i1 %i.yy, i1 %i.yz, i1 false
  br i1 %or.cond41, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.za = add nsw i32 %.sroa.22.0, 2
  %i.zb = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !182
  %i.zd = icmp eq i32 %i.za, %i.zc
  br i1 %i.zd, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cy, %bb.cz
  %i.ze = add nsw i32 %.sroa.22.0, -1
  %i.zf = fadd double %.sroa.18.0, 1.000000e+00
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.sroa.22.1 = phi i32 [ %i.ze, %bb.da ], [ %.sroa.22.0, %bb.cz ] ; 6 uses
  %.sroa.18.1 = phi double [ %i.zf, %bb.da ], [ %.sroa.18.0, %bb.cz ] ; 10 uses
  %i.zg = icmp sgt i32 %i.sd, -1
  %i.zh = icmp sgt i32 %i.sf, -1
  %or.cond43 = select i1 %i.zg, i1 %i.zh, i1 false
  br i1 %or.cond43, label %bb.dc, label %bb.di

bb.dc:                                            ; preds = %bb.db
  %i.zi = getelementptr inbounds nuw i8, ptr %.sroa.0553.0, i64 112 ; 2 uses
  %.val378 = load i32, ptr %i.zi, align 8, !tbaa !166
  %i.zj = getelementptr i8, ptr %.sroa.0553.0, i64 116
  %.val379 = load i32, ptr %i.zj, align 4
  %.not.i503 = icmp ne i32 %.val378, %.sroa.0508.1
  %i.zk = icmp ne i32 %.val379, %.sroa.22.1
  %i.zl = select i1 %.not.i503, i1 true, i1 %i.zk
  %.pre722 = load i32, ptr %i.c, align 4, !tbaa !186 ; 2 uses
  br i1 %i.zl, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %i.zm = icmp sgt i32 %.pre722, -1
  %i.zn = select i1 %i.zm, i32 3, i32 2
  %i.zo = getelementptr inbounds nuw i8, ptr %.sroa.0553.0, i64 88
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !142
  %i.zq = getelementptr inbounds nuw i8, ptr %.sroa.0553.0, i64 56
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !146
  %i.zs = load ptr, ptr %6, align 8, !tbaa !107
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 80
  %i.zu = load ptr, ptr %i.zt, align 8
  %i.zv = call noundef zeroext i1 %i.zu(ptr noundef nonnull align 8 dereferenceable(144) %6, i32 noundef %.sroa.0508.1, i32 noundef %.sroa.22.1, i32 noundef 3, i32 noundef 3, i32 noundef %i.zn, ptr noundef %i.zp, ptr noundef %i.zr, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  %.not44 = xor i1 %i.zv, true
  %i.zw = load i8, ptr %i.d, align 1, !range !80
  %i.zx = trunc nuw i8 %i.zw to i1
  %or.cond46 = select i1 %.not44, i1 true, i1 %i.zx
  br i1 %or.cond46, label %.critedge366, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %.sroa.22.0.insert.ext530 = zext i32 %.sroa.22.1 to i64
  %.sroa.22.0.insert.shift531 = shl nuw i64 %.sroa.22.0.insert.ext530, 32
  %.sroa.0508.0.insert.ext518 = zext i32 %.sroa.0508.1 to i64
  %.sroa.0508.0.insert.insert520 = or disjoint i64 %.sroa.22.0.insert.shift531, %.sroa.0508.0.insert.ext518
  store i64 %.sroa.0508.0.insert.insert520, ptr %i.zi, align 8
  %.pre721 = load i32, ptr %i.c, align 4, !tbaa !186
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dc
  %i.zy = phi i32 [ %.pre721, %bb.de ], [ %.pre722, %bb.dc ]
  %i.zz = getelementptr inbounds nuw i8, ptr %.sroa.0553.0, i64 56
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !146 ; 26 uses
  %i.aab = icmp sgt i32 %i.zy, -1
  %i.aac = fmul double %.sroa.0.1, 5.000000e-01
  %i.aad = fadd double %.sroa.0.1, -1.000000e+00
  %i.aae = fmul double %i.aac, %i.aad             ; 5 uses
  %i.aaf = load <2 x float>, ptr %i.aaa, align 4, !tbaa !191
  %i.aag = fpext <2 x float> %i.aaf to <2 x double> ; 4 uses
  br i1 %i.aab, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aaa, i64 12
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aaa, i64 24
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8
  %i.aak = load float, ptr %i.aaj, align 4, !tbaa !191
  %i.aal = fpext float %i.aak to double           ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aaa, i64 20
  %i.aan = load float, ptr %i.aam, align 4, !tbaa !191
  %i.aao = fpext float %i.aan to double           ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aaa, i64 32
  %i.aaq = load float, ptr %i.aap, align 4, !tbaa !191
  %i.aar = fpext float %i.aaq to double
  %i.aas = fsub double %i.aao, %i.aal             ; 2 uses
  %i.aat = fsub double %i.aar, %i.aao
  %i.aau = fsub double %i.aat, %i.aas
  %i.aav = call double @llvm.fmuladd.f64(double %.sroa.0.1, double %i.aas, double %i.aal)
  %i.aaw = call noundef double @llvm.fmuladd.f64(double %i.aae, double %i.aau, double %i.aav) ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaa, i64 36
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aaa, i64 48
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aaa, i64 60
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaa, i64 44
  %i.abb = load float, ptr %i.aba, align 4, !tbaa !191
  %i.abc = fpext float %i.abb to double           ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aaa, i64 56
  %i.abe = load float, ptr %i.abd, align 4, !tbaa !191
  %i.abf = fpext float %i.abe to double           ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aaa, i64 68
  %i.abh = load float, ptr %i.abg, align 4, !tbaa !191
  %i.abi = fpext float %i.abh to double
  %i.abj = fsub double %i.abf, %i.abc             ; 2 uses
  %i.abk = fsub double %i.abi, %i.abf
  %i.abl = fsub double %i.abk, %i.abj
  %i.abm = call double @llvm.fmuladd.f64(double %.sroa.0.1, double %i.abj, double %i.abc)
  %i.abn = call noundef double @llvm.fmuladd.f64(double %i.aae, double %i.abl, double %i.abm) ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.aaa, i64 72
  %i.abp = getelementptr inbounds nuw i8, ptr %i.aaa, i64 84
  %i.abq = getelementptr inbounds nuw i8, ptr %i.aaa, i64 96
  %i.abr = getelementptr inbounds nuw i8, ptr %i.aaa, i64 80
  %i.abs = load float, ptr %i.abr, align 4, !tbaa !191
  %i.abt = fpext float %i.abs to double           ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.aaa, i64 92
  %i.abv = load float, ptr %i.abu, align 4, !tbaa !191
  %i.abw = fpext float %i.abv to double           ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.aaa, i64 104
  %i.aby = load float, ptr %i.abx, align 4, !tbaa !191
  %i.abz = fpext float %i.aby to double
  %i.aca = fsub double %i.abw, %i.abt             ; 2 uses
  %i.acb = fsub double %i.abz, %i.abw
  %i.acc = fsub double %i.acb, %i.aca
  %i.acd = call double @llvm.fmuladd.f64(double %.sroa.0.1, double %i.aca, double %i.abt)
  %i.ace = call noundef double @llvm.fmuladd.f64(double %i.aae, double %i.acc, double %i.acd)
  %i.acf = fmul double %.sroa.18.1, 5.000000e-01
  %i.acg = fadd double %.sroa.18.1, -1.000000e+00
  %i.ach = fmul double %i.acf, %i.acg             ; 2 uses
  %i.aci = load <2 x float>, ptr %i.aah, align 4, !tbaa !191
  %i.acj = fpext <2 x float> %i.aci to <2 x double> ; 2 uses
  %i.ack = load <2 x float>, ptr %i.aai, align 4, !tbaa !191
  %i.acl = fpext <2 x float> %i.ack to <2 x double>
  %i.acm = fsub <2 x double> %i.acj, %i.aag       ; 2 uses
  %i.acn = fsub <2 x double> %i.acl, %i.acj
  %i.aco = fsub <2 x double> %i.acn, %i.acm
  %i.acp = insertelement <2 x double> poison, double %.sroa.0.1, i64 0
  %i.acq = shufflevector <2 x double> %i.acp, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.acr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.acq, <2 x double> %i.acm, <2 x double> %i.aag)
  %i.acs = insertelement <2 x double> poison, double %i.aae, i64 0
  %i.act = shufflevector <2 x double> %i.acs, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.acu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.act, <2 x double> %i.aco, <2 x double> %i.acr) ; 2 uses
  %i.acv = load <2 x float>, ptr %i.aax, align 4, !tbaa !191
  %i.acw = fpext <2 x float> %i.acv to <2 x double> ; 2 uses
  %i.acx = load <2 x float>, ptr %i.aay, align 4, !tbaa !191
  %i.acy = fpext <2 x float> %i.acx to <2 x double> ; 2 uses
  %i.acz = load <2 x float>, ptr %i.aaz, align 4, !tbaa !191
  %i.ada = fpext <2 x float> %i.acz to <2 x double>
  %i.adb = fsub <2 x double> %i.acy, %i.acw       ; 2 uses
  %i.adc = fsub <2 x double> %i.ada, %i.acy
  %i.add = fsub <2 x double> %i.adc, %i.adb
  %i.ade = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.acq, <2 x double> %i.adb, <2 x double> %i.acw)
  %i.adf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.act, <2 x double> %i.add, <2 x double> %i.ade) ; 2 uses
  %i.adg = load <2 x float>, ptr %i.abo, align 4, !tbaa !191
  %i.adh = fpext <2 x float> %i.adg to <2 x double> ; 2 uses
  %i.adi = load <2 x float>, ptr %i.abp, align 4, !tbaa !191
  %i.adj = fpext <2 x float> %i.adi to <2 x double> ; 2 uses
  %i.adk = load <2 x float>, ptr %i.abq, align 4, !tbaa !191
  %i.adl = fpext <2 x float> %i.adk to <2 x double>
  %i.adm = fsub <2 x double> %i.adj, %i.adh       ; 2 uses
  %i.adn = fsub <2 x double> %i.adl, %i.adj
  %i.ado = fsub <2 x double> %i.adn, %i.adm
  %i.adp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.acq, <2 x double> %i.adm, <2 x double> %i.adh)
  %i.adq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.act, <2 x double> %i.ado, <2 x double> %i.adp)
  %i.adr = fsub <2 x double> %i.adf, %i.acu       ; 2 uses
  %i.ads = fsub <2 x double> %i.adq, %i.adf
  %i.adt = fsub <2 x double> %i.ads, %i.adr
  %i.adu = insertelement <2 x double> poison, double %.sroa.18.1, i64 0
  %i.adv = shufflevector <2 x double> %i.adu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.adw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.adv, <2 x double> %i.adr, <2 x double> %i.acu)
  %i.adx = insertelement <2 x double> poison, double %i.ach, i64 0
  %i.ady = shufflevector <2 x double> %i.adx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.adz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ady, <2 x double> %i.adt, <2 x double> %i.adw)
  store <2 x double> %i.adz, ptr %0, align 8, !tbaa !115
  %i.aea = fsub double %i.abn, %i.aaw             ; 2 uses
  %i.aeb = fsub double %i.ace, %i.abn
  %i.aec = fsub double %i.aeb, %i.aea
end_hunk_0
