Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/gridshift?download=true
inline.NumInlined: 813
inline.NumDeleted: 372
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12_GLOBAL__N_113gridshiftData16grid_interpolateEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE5PJ_XYPKN5osgeo4proj16GenericShiftGridERb:bb.a
  %i.uk = icmp sgt i32 %i.sd, -1
  %i.ul = icmp sgt i32 %i.sf, -1
  %or.cond30 = select i1 %i.uk, i1 %i.ul, i1 false
  br i1 %or.cond30, label %bb.ci, label %bb.co

bb.ci:                                            ; preds = %bb.ch
  %i.um = getelementptr inbounds nuw i8, ptr %.sroa.0554.0, i64 112 ; 2 uses
  %.val386 = load i32, ptr %i.um, align 8, !tbaa !170
  %i.un = getelementptr i8, ptr %.sroa.0554.0, i64 116
  %.val387 = load i32, ptr %i.un, align 4
  %.not.i = icmp ne i32 %.val386, %.sroa.0509.0
  %i.uo = icmp ne i32 %.val387, %.sroa.22.0
  %i.up = select i1 %.not.i, i1 true, i1 %i.uo
  %.pre725 = load i32, ptr %i.c, align 4, !tbaa !189 ; 2 uses
  br i1 %i.up, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.uq = icmp sgt i32 %.pre725, -1
  %i.ur = select i1 %i.uq, i32 3, i32 2
  %i.us = getelementptr inbounds nuw i8, ptr %.sroa.0554.0, i64 88
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !105
  %i.uu = getelementptr inbounds nuw i8, ptr %.sroa.0554.0, i64 56
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !109
  %i.uw = load ptr, ptr %6, align 8, !tbaa !84
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 80
  %i.uy = load ptr, ptr %i.ux, align 8
  %i.uz = call noundef zeroext i1 %i.uy(ptr noundef nonnull align 8 dereferenceable(144) %6, i32 noundef %.sroa.0509.0, i32 noundef %.sroa.22.0, i32 noundef 2, i32 noundef 2, i32 noundef %i.ur, ptr noundef %i.ut, ptr noundef %i.uv, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  %.not = xor i1 %i.uz, true
  %i.va = load i8, ptr %i.d, align 1, !range !57
  %i.vb = trunc nuw i8 %i.va to i1
  %or.cond32 = select i1 %.not, i1 true, i1 %i.vb
  br i1 %or.cond32, label %.critedge366, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %.sroa.22.0.insert.ext541 = zext i32 %.sroa.22.0 to i64
  %.sroa.22.0.insert.shift542 = shl nuw i64 %.sroa.22.0.insert.ext541, 32
  %.sroa.0509.0.insert.ext527 = zext i32 %.sroa.0509.0 to i64
  %.sroa.0509.0.insert.insert529 = or disjoint i64 %.sroa.22.0.insert.shift542, %.sroa.0509.0.insert.ext527
  store i64 %.sroa.0509.0.insert.insert529, ptr %i.um, align 8, !tbaa !189
  %.pre724 = load i32, ptr %i.c, align 4, !tbaa !189
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.ci
  %i.vc = phi i32 [ %.pre724, %bb.ck ], [ %.pre725, %bb.ci ]
  %i.vd = icmp sgt i32 %i.vc, -1
  %i.ve = getelementptr inbounds nuw i8, ptr %.sroa.0554.0, i64 56
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !109 ; 12 uses
  %i.vg = load float, ptr %i.vf, align 4, !tbaa !196
  %i.vh = fpext float %i.vg to double             ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vf, i64 4 ; 2 uses
  br i1 %i.vd, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vf, i64 12
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vf, i64 24
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vf, i64 36
  %i.vm = load float, ptr %i.vi, align 4, !tbaa !196
  %i.vn = fpext float %i.vm to double
  %i.vo = load <2 x float>, ptr %i.vj, align 4, !tbaa !196
  %i.vp = fpext <2 x float> %i.vo to <2 x double>
  %i.vq = insertelement <2 x double> poison, double %i.uj, i64 0
  %i.vr = shufflevector <2 x double> %i.vq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vs = fmul <2 x double> %i.vr, %i.vp
  %i.vt = insertelement <2 x double> poison, double %i.ui, i64 0
  %i.vu = shufflevector <2 x double> %i.vt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vv = insertelement <2 x double> poison, double %i.vh, i64 0
  %i.vw = insertelement <2 x double> %i.vv, double %i.vn, i64 1
  %i.vx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vu, <2 x double> %i.vw, <2 x double> %i.vs)
  %i.vy = load <2 x float>, ptr %i.vk, align 4, !tbaa !196
  %i.vz = fpext <2 x float> %i.vy to <2 x double>
  %i.wa = insertelement <2 x double> poison, double %i.ug, i64 0
  %i.wb = shufflevector <2 x double> %i.wa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wb, <2 x double> %i.vz, <2 x double> %i.vx)
  %i.wd = load <2 x float>, ptr %i.vl, align 4, !tbaa !196
  %i.we = fpext <2 x float> %i.wd to <2 x double>
  %i.wf = insertelement <2 x double> poison, double %i.uf, i64 0
  %i.wg = shufflevector <2 x double> %i.wf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wg, <2 x double> %i.we, <2 x double> %i.wc) ; 2 uses
  store <2 x double> %i.wh, ptr %0, align 8, !tbaa !86
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !196
  %i.wk = fpext float %i.wj to double
  %i.wl = getelementptr inbounds nuw i8, ptr %i.vf, i64 20
  %i.wm = load float, ptr %i.wl, align 4, !tbaa !196
  %i.wn = fpext float %i.wm to double
  %i.wo = fmul double %i.uj, %i.wn
  %i.wp = call double @llvm.fmuladd.f64(double %i.ui, double %i.wk, double %i.wo)
  %i.wq = getelementptr inbounds nuw i8, ptr %i.vf, i64 32
  %i.wr = load float, ptr %i.wq, align 4, !tbaa !196
  %i.ws = fpext float %i.wr to double
  %i.wt = call double @llvm.fmuladd.f64(double %i.ug, double %i.ws, double %i.wp)
  %i.wu = getelementptr inbounds nuw i8, ptr %i.vf, i64 44
  %i.wv = load float, ptr %i.wu, align 4, !tbaa !196
  %i.ww = fpext float %i.wv to double
  %i.wx = call double @llvm.fmuladd.f64(double %i.uf, double %i.ww, double %i.wt)
  store double %i.wx, ptr %i.e, align 8, !tbaa !91
  br label %bb.dl

bb.cn:                                            ; preds = %bb.cl
  %i.wy = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  %i.wz = getelementptr inbounds nuw i8, ptr %i.vf, i64 16
  %i.xa = getelementptr inbounds nuw i8, ptr %i.vf, i64 24
  %i.xb = load float, ptr %i.vi, align 4, !tbaa !196
  %i.xc = fpext float %i.xb to double
  %i.xd = load <2 x float>, ptr %i.wy, align 4, !tbaa !196
  %i.xe = fpext <2 x float> %i.xd to <2 x double>
  %i.xf = insertelement <2 x double> poison, double %i.uj, i64 0
  %i.xg = shufflevector <2 x double> %i.xf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xh = fmul <2 x double> %i.xg, %i.xe
  %i.xi = insertelement <2 x double> poison, double %i.ui, i64 0
  %i.xj = shufflevector <2 x double> %i.xi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xk = insertelement <2 x double> poison, double %i.vh, i64 0
  %i.xl = insertelement <2 x double> %i.xk, double %i.xc, i64 1
  %i.xm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xj, <2 x double> %i.xl, <2 x double> %i.xh)
  %i.xn = load <2 x float>, ptr %i.wz, align 4, !tbaa !196
  %i.xo = fpext <2 x float> %i.xn to <2 x double>
  %i.xp = insertelement <2 x double> poison, double %i.ug, i64 0
  %i.xq = shufflevector <2 x double> %i.xp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xq, <2 x double> %i.xo, <2 x double> %i.xm)
  %i.xs = load <2 x float>, ptr %i.xa, align 4, !tbaa !196
  %i.xt = fpext <2 x float> %i.xs to <2 x double>
  %i.xu = insertelement <2 x double> poison, double %i.uf, i64 0
  %i.xv = shufflevector <2 x double> %i.xu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xv, <2 x double> %i.xt, <2 x double> %i.xr) ; 2 uses
  store <2 x double> %i.xw, ptr %0, align 8, !tbaa !86
  br label %bb.dl

bb.co:                                            ; preds = %bb.ch
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.xx = load i32, ptr %i.c, align 4, !tbaa !189
  %i.xy = icmp sgt i32 %i.xx, -1
  br i1 %i.xy, label %bb.cp, label %bb.dn

bb.cp:                                            ; preds = %bb.co
  %i.xz = getelementptr inbounds nuw i8, ptr %.sroa.0554.0, i64 112 ; 2 uses
  %.val382 = load i32, ptr %i.xz, align 8, !tbaa !170
  %i.ya = getelementptr i8, ptr %.sroa.0554.0, i64 116
  %.val383 = load i32, ptr %i.ya, align 4
  %.not.i503 = icmp ne i32 %.val382, %.sroa.0509.0
  %i.yb = icmp ne i32 %.val383, %.sroa.22.0
  %i.yc = select i1 %.not.i503, i1 true, i1 %i.yb
  br i1 %i.yc, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  %i.yd = getelementptr inbounds nuw i8, ptr %.sroa.0554.0, i64 56
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !109
  %i.yf = load ptr, ptr %6, align 8, !tbaa !84
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 80
  %i.yh = load ptr, ptr %i.yg, align 8
  %i.yi = call noundef zeroext i1 %i.yh(ptr noundef nonnull align 8 dereferenceable(144) %6, i32 noundef %.sroa.0509.0, i32 noundef %.sroa.22.0, i32 noundef 2, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %i.c, ptr noundef %i.ye, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  %.not33 = xor i1 %i.yi, true
  %i.yj = load i8, ptr %i.d, align 1, !range !57
  %i.yk = trunc nuw i8 %i.yj to i1
  %or.cond35 = select i1 %.not33, i1 true, i1 %i.yk
  br i1 %or.cond35, label %.critedge366, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %.sroa.22.0.insert.ext536 = zext i32 %.sroa.22.0 to i64
  %.sroa.22.0.insert.shift537 = shl nuw i64 %.sroa.22.0.insert.ext536, 32
  %.sroa.0509.0.insert.ext523 = zext i32 %.sroa.0509.0 to i64
  %.sroa.0509.0.insert.insert525 = or disjoint i64 %.sroa.22.0.insert.shift537, %.sroa.0509.0.insert.ext523
  store i64 %.sroa.0509.0.insert.insert525, ptr %i.xz, align 8, !tbaa !189
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cp
  %i.yl = getelementptr inbounds nuw i8, ptr %.sroa.0554.0, i64 56
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !109
  %i.yn = load <4 x float>, ptr %i.ym, align 4, !tbaa !196
  %i.yo = fpext <4 x float> %i.yn to <4 x double> ; 4 uses
  %i.yp = extractelement <4 x double> %i.yo, i64 1
  %i.yq = fmul double %i.uj, %i.yp
  %i.yr = extractelement <4 x double> %i.yo, i64 0
  %i.ys = call double @llvm.fmuladd.f64(double %i.ui, double %i.yr, double %i.yq)
  %i.yt = extractelement <4 x double> %i.yo, i64 2
  %i.yu = call double @llvm.fmuladd.f64(double %i.ug, double %i.yt, double %i.ys)
  %i.yv = extractelement <4 x double> %i.yo, i64 3
  %i.yw = call double @llvm.fmuladd.f64(double %i.uf, double %i.yv, double %i.yu)
  store double %i.yw, ptr %i.e, align 8, !tbaa !91
  br label %bb.dn

bb.ct:                                            ; preds = %bb.cg
  %i.yx = fcmp ole double %.sroa.0.0, 5.000000e-01
  %i.yy = icmp sgt i32 %.sroa.0509.0, 0
  %or.cond38 = select i1 %i.yx, i1 %i.yy, i1 false
  br i1 %or.cond38, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.yz = add nsw i32 %.sroa.0509.0, 2
  %i.za = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.zb = load i32, ptr %i.za, align 8, !tbaa !184
  %i.zc = icmp eq i32 %i.yz, %i.zb
  br i1 %i.zc, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.ct, %bb.cu
  %i.zd = add nsw i32 %.sroa.0509.0, -1
  %i.ze = fadd double %.sroa.0.0, 1.000000e+00
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.sroa.0509.1 = phi i32 [ %i.zd, %bb.cv ], [ %.sroa.0509.0, %bb.cu ] ; 6 uses
  %.sroa.0.1 = phi double [ %i.ze, %bb.cv ], [ %.sroa.0.0, %bb.cu ] ; 8 uses
  %i.zf = fcmp ole double %.sroa.18.0, 5.000000e-01
  %i.zg = icmp sgt i32 %.sroa.22.0, 0
  %or.cond41 = select i1 %i.zf, i1 %i.zg, i1 false
  br i1 %or.cond41, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.zh = add nsw i32 %.sroa.22.0, 2
  %i.zi = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !185
  %i.zk = icmp eq i32 %i.zh, %i.zj
  br i1 %i.zk, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cw, %bb.cx
  %i.zl = add nsw i32 %.sroa.22.0, -1
  %i.zm = fadd double %.sroa.18.0, 1.000000e+00
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.sroa.22.1 = phi i32 [ %i.zl, %bb.cy ], [ %.sroa.22.0, %bb.cx ] ; 6 uses
  %.sroa.18.1 = phi double [ %i.zm, %bb.cy ], [ %.sroa.18.0, %bb.cx ] ; 10 uses
  %i.zn = icmp sgt i32 %i.sd, -1
  %i.zo = icmp sgt i32 %i.sf, -1
  %or.cond43 = select i1 %i.zn, i1 %i.zo, i1 false
  br i1 %or.cond43, label %bb.da, label %bb.dg

bb.da:                                            ; preds = %bb.cz
  %i.zp = getelementptr inbounds nuw i8, ptr %.sroa.0554.0, i64 112 ; 2 uses
  %.val378 = load i32, ptr %i.zp, align 8, !tbaa !170
  %i.zq = getelementptr i8, ptr %.sroa.0554.0, i64 116
  %.val379 = load i32, ptr %i.zq, align 4
  %.not.i504 = icmp ne i32 %.val378, %.sroa.0509.1
  %i.zr = icmp ne i32 %.val379, %.sroa.22.1
  %i.zs = select i1 %.not.i504, i1 true, i1 %i.zr
  %.pre723 = load i32, ptr %i.c, align 4, !tbaa !189 ; 2 uses
  br i1 %i.zs, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %bb.da
  %i.zt = icmp sgt i32 %.pre723, -1
  %i.zu = select i1 %i.zt, i32 3, i32 2
  %i.zv = getelementptr inbounds nuw i8, ptr %.sroa.0554.0, i64 88
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !105
  %i.zx = getelementptr inbounds nuw i8, ptr %.sroa.0554.0, i64 56
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !109
  %i.zz = load ptr, ptr %6, align 8, !tbaa !84
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 80
  %i.aab = load ptr, ptr %i.aaa, align 8
  %i.aac = call noundef zeroext i1 %i.aab(ptr noundef nonnull align 8 dereferenceable(144) %6, i32 noundef %.sroa.0509.1, i32 noundef %.sroa.22.1, i32 noundef 3, i32 noundef 3, i32 noundef %i.zu, ptr noundef %i.zw, ptr noundef %i.zy, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  %.not44 = xor i1 %i.aac, true
  %i.aad = load i8, ptr %i.d, align 1, !range !57
  %i.aae = trunc nuw i8 %i.aad to i1
  %or.cond46 = select i1 %.not44, i1 true, i1 %i.aae
  br i1 %or.cond46, label %.critedge366, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %.sroa.22.0.insert.ext531 = zext i32 %.sroa.22.1 to i64
  %.sroa.22.0.insert.shift532 = shl nuw i64 %.sroa.22.0.insert.ext531, 32
  %.sroa.0509.0.insert.ext519 = zext i32 %.sroa.0509.1 to i64
  %.sroa.0509.0.insert.insert521 = or disjoint i64 %.sroa.22.0.insert.shift532, %.sroa.0509.0.insert.ext519
  store i64 %.sroa.0509.0.insert.insert521, ptr %i.zp, align 8, !tbaa !189
  %.pre722 = load i32, ptr %i.c, align 4, !tbaa !189
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.da
  %i.aaf = phi i32 [ %.pre722, %bb.dc ], [ %.pre723, %bb.da ]
  %i.aag = getelementptr inbounds nuw i8, ptr %.sroa.0554.0, i64 56
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !109 ; 26 uses
  %i.aai = icmp sgt i32 %i.aaf, -1
  %i.aaj = fmul double %.sroa.0.1, 5.000000e-01
  %i.aak = fadd double %.sroa.0.1, -1.000000e+00
  %i.aal = fmul double %i.aaj, %i.aak             ; 3 uses
  %i.aam = load <2 x float>, ptr %i.aah, align 4, !tbaa !196
  %i.aan = fpext <2 x float> %i.aam to <2 x double> ; 4 uses
  br i1 %i.aai, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aah, i64 12
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aah, i64 24
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aah, i64 8
  %i.aar = load float, ptr %i.aaq, align 4, !tbaa !196
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aah, i64 20
  %i.aat = load float, ptr %i.aas, align 4, !tbaa !196
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aah, i64 32
  %i.aav = load float, ptr %i.aau, align 4, !tbaa !196
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aah, i64 36
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aah, i64 48
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aah, i64 60
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aah, i64 44
  %i.aba = load float, ptr %i.aaz, align 4, !tbaa !196
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aah, i64 56
  %i.abc = load float, ptr %i.abb, align 4, !tbaa !196
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aah, i64 68
  %i.abe = load float, ptr %i.abd, align 4, !tbaa !196
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aah, i64 72
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aah, i64 84
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aah, i64 96
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aah, i64 80
  %i.abj = load float, ptr %i.abi, align 4, !tbaa !196
  %i.abk = getelementptr inbounds nuw i8, ptr %i.aah, i64 92
  %i.abl = load float, ptr %i.abk, align 4, !tbaa !196
  %i.abm = getelementptr inbounds nuw i8, ptr %i.aah, i64 104
  %i.abn = load float, ptr %i.abm, align 4, !tbaa !196
  %i.abo = fmul double %.sroa.18.1, 5.000000e-01
  %i.abp = fadd double %.sroa.18.1, -1.000000e+00
  %i.abq = fmul double %i.abo, %i.abp             ; 2 uses
  %i.abr = load <2 x float>, ptr %i.aao, align 4, !tbaa !196
  %i.abs = fpext <2 x float> %i.abr to <2 x double> ; 2 uses
  %i.abt = load <2 x float>, ptr %i.aap, align 4, !tbaa !196
  %i.abu = fpext <2 x float> %i.abt to <2 x double>
  %i.abv = fsub <2 x double> %i.abs, %i.aan       ; 2 uses
  %i.abw = fsub <2 x double> %i.abu, %i.abs
  %i.abx = fsub <2 x double> %i.abw, %i.abv
  %i.aby = insertelement <2 x double> poison, double %.sroa.0.1, i64 0
  %i.abz = shufflevector <2 x double> %i.aby, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.aca = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abz, <2 x double> %i.abv, <2 x double> %i.aan)
  %i.acb = insertelement <2 x double> poison, double %i.aal, i64 0
  %i.acc = shufflevector <2 x double> %i.acb, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.acd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.acc, <2 x double> %i.abx, <2 x double> %i.aca) ; 2 uses
  %i.ace = load <2 x float>, ptr %i.aaw, align 4, !tbaa !196
  %i.acf = fpext <2 x float> %i.ace to <2 x double> ; 2 uses
  %i.acg = load <2 x float>, ptr %i.aax, align 4, !tbaa !196
  %i.ach = fpext <2 x float> %i.acg to <2 x double> ; 2 uses
  %i.aci = load <2 x float>, ptr %i.aay, align 4, !tbaa !196
  %i.acj = fpext <2 x float> %i.aci to <2 x double>
  %i.ack = fsub <2 x double> %i.ach, %i.acf       ; 2 uses
  %i.acl = fsub <2 x double> %i.acj, %i.ach
  %i.acm = fsub <2 x double> %i.acl, %i.ack
  %i.acn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abz, <2 x double> %i.ack, <2 x double> %i.acf)
  %i.aco = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.acc, <2 x double> %i.acm, <2 x double> %i.acn) ; 2 uses
  %i.acp = load <2 x float>, ptr %i.abf, align 4, !tbaa !196
  %i.acq = fpext <2 x float> %i.acp to <2 x double> ; 2 uses
  %i.acr = load <2 x float>, ptr %i.abg, align 4, !tbaa !196
  %i.acs = fpext <2 x float> %i.acr to <2 x double> ; 2 uses
  %i.act = load <2 x float>, ptr %i.abh, align 4, !tbaa !196
  %i.acu = fpext <2 x float> %i.act to <2 x double>
  %i.acv = fsub <2 x double> %i.acs, %i.acq       ; 2 uses
  %i.acw = fsub <2 x double> %i.acu, %i.acs
  %i.acx = fsub <2 x double> %i.acw, %i.acv
  %i.acy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abz, <2 x double> %i.acv, <2 x double> %i.acq)
  %i.acz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.acc, <2 x double> %i.acx, <2 x double> %i.acy)
  %i.ada = fsub <2 x double> %i.aco, %i.acd       ; 2 uses
  %i.adb = fsub <2 x double> %i.acz, %i.aco
  %i.adc = fsub <2 x double> %i.adb, %i.ada
  %i.add = insertelement <2 x double> poison, double %.sroa.18.1, i64 0
  %i.ade = shufflevector <2 x double> %i.add, <2 x double> poison, <2 x i32> zeroinitializer
  %i.adf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ade, <2 x double> %i.ada, <2 x double> %i.acd)
  %i.adg = insertelement <2 x double> poison, double %i.abq, i64 0
  %i.adh = shufflevector <2 x double> %i.adg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.adi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.adh, <2 x double> %i.adc, <2 x double> %i.adf) ; 2 uses
  store <2 x double> %i.adi, ptr %0, align 8, !tbaa !86
  %17 = fpext float %i.aar to double              ; 2 uses
  %18 = fpext float %i.aat to double              ; 2 uses
  %19 = fpext float %i.aav to double
  %20 = fsub double %18, %17                      ; 2 uses
  %i.adj = fsub double %19, %18
  %i.adk = fsub double %i.adj, %20
  %21 = call double @llvm.fmuladd.f64(double %.sroa.0.1, double %20, double %17)
  %22 = call noundef double @llvm.fmuladd.f64(double %i.aal, double %i.adk, double %21) ; 2 uses
  %23 = insertelement <2 x float> poison, float %i.abj, i64 0
  %24 = insertelement <2 x float> %23, float %i.aba, i64 1
  %25 = fpext <2 x float> %24 to <2 x double>     ; 2 uses
  %26 = insertelement <2 x float> poison, float %i.abl, i64 0
  %27 = insertelement <2 x float> %26, float %i.abc, i64 1
  %28 = fpext <2 x float> %27 to <2 x double>     ; 2 uses
  %29 = insertelement <2 x float> poison, float %i.abn, i64 0
  %30 = insertelement <2 x float> %29, float %i.abe, i64 1
  %31 = fpext <2 x float> %30 to <2 x double>
  %32 = fsub <2 x double> %28, %25                ; 2 uses
  %33 = fsub <2 x double> %31, %28
  %34 = fsub <2 x double> %33, %32
  %35 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abz, <2 x double> %32, <2 x double> %25)
  %36 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.acc, <2 x double> %34, <2 x double> %35) ; 2 uses
  %37 = shufflevector <2 x double> %36, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %38 = insertelement <2 x double> %37, double %22, i64 1
  %39 = fsub <2 x double> %36, %38                ; 2 uses
  %40 = extractelement <2 x double> %39, i64 0
  %41 = extractelement <2 x double> %39, i64 1    ; 2 uses
  %i.adl = fsub double %40, %41
  %i.adm = call double @llvm.fmuladd.f64(double %.sroa.18.1, double %41, double %22)
  %i.adn = call noundef double @llvm.fmuladd.f64(double %i.abq, double %i.adl, double %i.adm)
  store double %i.adn, ptr %i.e, align 8, !tbaa !91
  br label %bb.dl

bb.df:                                            ; preds = %bb.dd
  %i.ado = getelementptr inbounds nuw i8, ptr %i.aah, i64 8
  %i.adp = getelementptr inbounds nuw i8, ptr %i.aah, i64 16
  %i.adq = getelementptr inbounds nuw i8, ptr %i.aah, i64 24
  %i.adr = getelementptr inbounds nuw i8, ptr %i.aah, i64 32
  %i.ads = getelementptr inbounds nuw i8, ptr %i.aah, i64 40
  %i.adt = getelementptr inbounds nuw i8, ptr %i.aah, i64 48
  %i.adu = getelementptr inbounds nuw i8, ptr %i.aah, i64 56
  %i.adv = getelementptr inbounds nuw i8, ptr %i.aah, i64 64
  %i.adw = fmul double %.sroa.18.1, 5.000000e-01
  %i.adx = fadd double %.sroa.18.1, -1.000000e+00
  %i.ady = fmul double %i.adw, %i.adx
  %i.adz = load <2 x float>, ptr %i.ado, align 4, !tbaa !196
  %i.aea = fpext <2 x float> %i.adz to <2 x double> ; 2 uses
  %i.aeb = load <2 x float>, ptr %i.adp, align 4, !tbaa !196
  %i.aec = fpext <2 x float> %i.aeb to <2 x double>
  %i.aed = fsub <2 x double> %i.aea, %i.aan       ; 2 uses
  %i.aee = fsub <2 x double> %i.aec, %i.aea
  %i.aef = fsub <2 x double> %i.aee, %i.aed
  %i.aeg = insertelement <2 x double> poison, double %.sroa.0.1, i64 0
  %i.aeh = shufflevector <2 x double> %i.aeg, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.aei = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aeh, <2 x double> %i.aed, <2 x double> %i.aan)
  %i.aej = insertelement <2 x double> poison, double %i.aal, i64 0
  %i.aek = shufflevector <2 x double> %i.aej, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ael = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aek, <2 x double> %i.aef, <2 x double> %i.aei) ; 2 uses
  %i.aem = load <2 x float>, ptr %i.adq, align 4, !tbaa !196
  %i.aen = fpext <2 x float> %i.aem to <2 x double> ; 2 uses
  %i.aeo = load <2 x float>, ptr %i.adr, align 4, !tbaa !196
  %i.aep = fpext <2 x float> %i.aeo to <2 x double> ; 2 uses
  %i.aeq = load <2 x float>, ptr %i.ads, align 4, !tbaa !196
  %i.aer = fpext <2 x float> %i.aeq to <2 x double>
  %i.aes = fsub <2 x double> %i.aep, %i.aen       ; 2 uses
  %i.aet = fsub <2 x double> %i.aer, %i.aep
  %i.aeu = fsub <2 x double> %i.aet, %i.aes
  %i.aev = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aeh, <2 x double> %i.aes, <2 x double> %i.aen)
  %i.aew = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aek, <2 x double> %i.aeu, <2 x double> %i.aev) ; 2 uses
  %i.aex = load <2 x float>, ptr %i.adt, align 4, !tbaa !196
  %i.aey = fpext <2 x float> %i.aex to <2 x double> ; 2 uses
  %i.aez = load <2 x float>, ptr %i.adu, align 4, !tbaa !196
  %i.afa = fpext <2 x float> %i.aez to <2 x double> ; 2 uses
  %i.afb = load <2 x float>, ptr %i.adv, align 4, !tbaa !196
  %i.afc = fpext <2 x float> %i.afb to <2 x double>
  %i.afd = fsub <2 x double> %i.afa, %i.aey       ; 2 uses
  %i.afe = fsub <2 x double> %i.afc, %i.afa
  %i.aff = fsub <2 x double> %i.afe, %i.afd
  %i.afg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aeh, <2 x double> %i.afd, <2 x double> %i.aey)
  %i.afh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aek, <2 x double> %i.aff, <2 x double> %i.afg)
  %i.afi = fsub <2 x double> %i.aew, %i.ael       ; 2 uses
  %i.afj = fsub <2 x double> %i.afh, %i.aew
  %i.afk = fsub <2 x double> %i.afj, %i.afi
  %i.afl = insertelement <2 x double> poison, double %.sroa.18.1, i64 0
  %i.afm = shufflevector <2 x double> %i.afl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.afn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afm, <2 x double> %i.afi, <2 x double> %i.ael)
  %i.afo = insertelement <2 x double> poison, double %i.ady, i64 0
  %i.afp = shufflevector <2 x double> %i.afo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.afq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afp, <2 x double> %i.afk, <2 x double> %i.afn) ; 2 uses
  store <2 x double> %i.afq, ptr %0, align 8, !tbaa !86
  br label %bb.dl

bb.dg:                                            ; preds = %bb.cz
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.afr = load i32, ptr %i.c, align 4, !tbaa !189
  %i.afs = icmp sgt i32 %i.afr, -1
  br i1 %i.afs, label %bb.dh, label %bb.dn

bb.dh:                                            ; preds = %bb.dg
  %i.aft = getelementptr inbounds nuw i8, ptr %.sroa.0554.0, i64 112 ; 2 uses
  %.val374 = load i32, ptr %i.aft, align 8, !tbaa !170
  %i.afu = getelementptr i8, ptr %.sroa.0554.0, i64 116
  %.val375 = load i32, ptr %i.afu, align 4
  %.not.i505 = icmp ne i32 %.val374, %.sroa.0509.1
  %i.afv = icmp ne i32 %.val375, %.sroa.22.1
  %i.afw = select i1 %.not.i505, i1 true, i1 %i.afv
  br i1 %i.afw, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %bb.dh
  %i.afx = getelementptr inbounds nuw i8, ptr %.sroa.0554.0, i64 56
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !109
  %i.afz = load ptr, ptr %6, align 8, !tbaa !84
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 80
  %i.agb = load ptr, ptr %i.aga, align 8
  %i.agc = call noundef zeroext i1 %i.agb(ptr noundef nonnull align 8 dereferenceable(144) %6, i32 noundef %.sroa.0509.1, i32 noundef %.sroa.22.1, i32 noundef 3, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %i.c, ptr noundef %i.afy, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  %.not47 = xor i1 %i.agc, true
  %i.agd = load i8, ptr %i.d, align 1, !range !57
  %i.age = trunc nuw i8 %i.agd to i1
  %or.cond49 = select i1 %.not47, i1 true, i1 %i.age
  br i1 %or.cond49, label %.critedge366, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %.sroa.22.0.insert.ext = zext i32 %.sroa.22.1 to i64
  %.sroa.22.0.insert.shift = shl nuw i64 %.sroa.22.0.insert.ext, 32
  %.sroa.0509.0.insert.ext = zext i32 %.sroa.0509.1 to i64
  %.sroa.0509.0.insert.insert = or disjoint i64 %.sroa.22.0.insert.shift, %.sroa.0509.0.insert.ext
  store i64 %.sroa.0509.0.insert.insert, ptr %i.aft, align 8, !tbaa !189
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.dh
  %i.agf = getelementptr inbounds nuw i8, ptr %.sroa.0554.0, i64 56
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !109 ; 3 uses
  %i.agh = fmul double %.sroa.0.1, 5.000000e-01
  %i.agi = fadd double %.sroa.0.1, -1.000000e+00
  %i.agj = fmul double %i.agh, %i.agi
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agg, i64 16
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agg, i64 32
  %i.agm = load float, ptr %i.agl, align 4, !tbaa !196
  %i.agn = load <4 x float>, ptr %i.agg, align 4, !tbaa !196 ; 4 uses
  %i.ago = shufflevector <4 x float> %i.agn, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.agp = fpext <2 x float> %i.ago to <2 x double> ; 2 uses
  %i.agq = load <4 x float>, ptr %i.agk, align 4, !tbaa !196 ; 5 uses
  %i.agr = shufflevector <4 x float> %i.agq, <4 x float> %i.agn, <2 x i32> <i32 0, i32 5>
  %i.ags = fpext <2 x float> %i.agr to <2 x double> ; 2 uses
  %i.agt = shufflevector <4 x float> %i.agq, <4 x float> %i.agn, <2 x i32> <i32 1, i32 6>
  %i.agu = fpext <2 x float> %i.agt to <2 x double>
  %i.agv = shufflevector <4 x float> %i.agq, <4 x float> %i.agn, <2 x i32> <i32 2, i32 7>
  %i.agw = fpext <2 x float> %i.agv to <2 x double> ; 2 uses
  %i.agx = shufflevector <4 x float> %i.agq, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.agy = fpext <2 x float> %i.agx to <2 x double> ; 2 uses
  %i.agz = fsub <2 x double> %i.ags, %i.agp       ; 2 uses
  %i.aha = shufflevector <4 x float> %i.agq, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.ahb = insertelement <2 x float> %i.aha, float %i.agm, i64 0
  %i.ahc = fpext <2 x float> %i.ahb to <2 x double>
  %i.ahd = fsub <2 x double> %i.agu, %i.ags
  %i.ahe = fsub <2 x double> %i.agy, %i.agw       ; 2 uses
  %i.ahf = fsub <2 x double> %i.ahc, %i.agy
  %i.ahg = fsub <2 x double> %i.ahd, %i.agz
  %i.ahh = insertelement <2 x double> poison, double %.sroa.0.1, i64 0
  %i.ahi = shufflevector <2 x double> %i.ahh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ahj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahi, <2 x double> %i.agz, <2 x double> %i.agp)
  %i.ahk = fsub <2 x double> %i.ahf, %i.ahe
  %i.ahl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahi, <2 x double> %i.ahe, <2 x double> %i.agw)
  %i.ahm = insertelement <2 x double> poison, double %i.agj, i64 0
  %i.ahn = shufflevector <2 x double> %i.ahm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aho = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahn, <2 x double> %i.ahg, <2 x double> %i.ahj) ; 2 uses
  %i.ahp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahn, <2 x double> %i.ahk, <2 x double> %i.ahl)
  %i.ahq = fsub <2 x double> %i.ahp, %i.aho       ; 2 uses
  %i.ahr = extractelement <2 x double> %i.ahq, i64 0
  %i.ahs = extractelement <2 x double> %i.ahq, i64 1 ; 2 uses
  %i.aht = fsub double %i.ahr, %i.ahs
  %i.ahu = extractelement <2 x double> %i.aho, i64 1
  %i.ahv = call double @llvm.fmuladd.f64(double %.sroa.18.1, double %i.ahs, double %i.ahu)
  %i.ahw = fmul double %.sroa.18.1, 5.000000e-01
  %i.ahx = fadd double %.sroa.18.1, -1.000000e+00
  %i.ahy = fmul double %i.ahw, %i.ahx
  %i.ahz = call noundef double @llvm.fmuladd.f64(double %i.ahy, double %i.aht, double %i.ahv)
  store double %i.ahz, ptr %i.e, align 8, !tbaa !91
  br label %bb.dn

bb.dl:                                            ; preds = %bb.de, %bb.df, %bb.cm, %bb.cn
  %i.aia = phi <2 x double> [ %i.xw, %bb.cn ], [ %i.wh, %bb.cm ], [ %i.afq, %bb.df ], [ %i.adi, %bb.de ]
  %i.aib = getelementptr inbounds nuw i8, ptr %.sroa.0554.0, i64 52
  %i.aic = load i8, ptr %i.aib, align 4, !tbaa !182, !range !57, !noundef !58
  %i.aid = trunc nuw i8 %i.aic to i1
  br i1 %i.aid, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.aie = fmul <2 x double> %i.aia, splat (double f0x3ED455A5B2FF8F9D)
  store <2 x double> %i.aie, ptr %0, align 8, !tbaa !86
  br label %bb.dn

bb.dn:                                            ; preds = %bb.cs, %bb.co, %bb.dk, %bb.dg, %bb.dm, %bb.dl
  %i.aif = getelementptr inbounds nuw i8, ptr %.sroa.0554.0, i64 80
  %i.aig = load i8, ptr %i.aif, align 8, !tbaa !188, !range !57, !noundef !58
  %i.aih = trunc nuw i8 %i.aig to i1
  br i1 %i.aih, label %bb.do, label %.critedge366

bb.do:                                            ; preds = %bb.dn
  %i.aii = load <2 x double>, ptr %0, align 8, !tbaa !86
  %i.aij = shufflevector <2 x double> %i.aii, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.aij, ptr %0, align 8, !tbaa !86
  br label %.critedge366

.critedge366:                                     ; preds = %bb.db, %bb.di, %bb.cj, %bb.cq, %bb.dn, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.dp

bb.dp:                                            ; preds = %bb.ce, %bb.cc, %bb.bz, %bb.bx, %.critedge366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %.critedge364

.critedge364:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499, %bb.aa, %bb.ab, %bb.dp
  ret void
}

declare void @_Z6pj_logP6pj_ctxiPKcz(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

declare noundef double @_Z6adjlond(double noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
end_hunk_0
