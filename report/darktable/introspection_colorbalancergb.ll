Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorbalancergb?download=true
inline.NumInlined: 213
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 49
begin_hunk_0_@process:bb.a
  %i.sh = fmul reassoc nsz arcp contract afn float %i.ry, f0xBD2820C3
  %i.si = fadd reassoc nsz arcp contract afn float %i.sg, %i.sh ; 2 uses
  %.sroa.0404.4.vec.insert = insertelement <4 x float> %.sroa.0404.0.vec.insert, float %i.si, i64 1
  %i.sj = fmul reassoc nsz arcp contract afn float %i.rw, f0x3E007B1A
  %i.sk = fmul reassoc nsz arcp contract afn float %i.rx, f0x3E51B1F3
  %i.sl = fsub reassoc nsz arcp contract afn float %i.sk, %i.sj
  %i.sm = fmul reassoc nsz arcp contract afn float %i.ry, f0x3FDF122A
  %i.sn = fadd reassoc nsz arcp contract afn float %i.sl, %i.sm ; 4 uses
  %.sroa.0404.8.vec.insert = insertelement <4 x float> %.sroa.0404.4.vec.insert, float %i.sn, i64 2
  %i.so = fadd reassoc nsz arcp contract afn float %i.rx, %i.rw
  %i.sp = fadd reassoc nsz arcp contract afn float %i.so, %i.ry
  %i.sq = fmul reassoc nsz arcp contract afn float %i.sp, 0.000000e+00
  %.sroa.0404.12.vec.insert = insertelement <4 x float> %.sroa.0404.8.vec.insert, float %i.sq, i64 3 ; 3 uses
  %i.sr = load i32, ptr %i.fk, align 16, !tbaa !139
  %i.ss = icmp eq i32 %i.sr, 0
  br i1 %i.ss, label %bb.h, label %bb.r

bb.h:                                             ; preds = %gamut_check_Yrg.exit
  %i.st = fmul reassoc nsz arcp contract afn float %i.sd, 1.150000e+00
  %i.su = fmul reassoc nsz arcp contract afn float %i.sn, f0x3E199998
  %i.sv = fmul reassoc nsz arcp contract afn float %i.si, 6.600000e-01
  %i.sw = fmul reassoc nsz arcp contract afn float %i.sd, f0x3EAE147A
  %i.sx = insertelement <2 x float> poison, float %i.sn, i64 0
  %i.sy = shufflevector <2 x float> %i.sx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sz = fmul reassoc nsz arcp contract afn <2 x float> %i.sy, <float 5.310080e-06, float 1.464800e-06>
  %.reass601 = fmul reassoc nsz arcp contract afn float %i.sn, f0x388C30BE
  %i.ta = fsub reassoc nsz arcp contract afn float %i.st, %i.su ; 2 uses
  %i.tb = fadd reassoc nsz arcp contract afn float %i.sv, %i.sw ; 2 uses
  %i.tc = insertelement <2 x float> poison, float %i.ta, i64 0
  %i.td = shufflevector <2 x float> %i.tc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.te = fmul reassoc nsz arcp contract afn <2 x float> %i.td, <float -2.015100e-05, float f0x382DF9B4>
  %i.tf = insertelement <2 x float> poison, float %i.tb, i64 0
  %i.tg = shufflevector <2 x float> %i.tf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.th = fmul reassoc nsz arcp contract afn <2 x float> %i.tg, <float f0x38EB0462, float f0x387344EC>
  %i.ti = fadd reassoc nsz arcp contract afn <2 x float> %i.te, %i.sz
  %i.tj = fadd reassoc nsz arcp contract afn <2 x float> %i.ti, %i.th
  %.reass602 = fmul reassoc nsz arcp contract afn float %i.ta, -1.660080e-06
  %.reass600 = fmul reassoc nsz arcp contract afn float %i.tb, 2.648000e-05
  %i.tk = fadd reassoc nsz arcp contract afn float %.reass602, %.reass601
  %i.tl = fadd reassoc nsz arcp contract afn float %i.tk, %.reass600
  %i.tm = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.tj, <2 x float> zeroinitializer)
  %i.tn = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.tm, <2 x float> splat (float f0x3E232000)) ; 2 uses
  %i.to = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.tn, splat (float f0x4196D000)
  %i.tp = fadd reassoc nsz arcp contract afn <2 x float> %i.to, splat (float f0x3F560000)
  %i.tq = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.tn, splat (float 1.868750e+01)
  %i.tr = fadd reassoc nsz arcp contract afn <2 x float> %i.tq, splat (float 1.000000e+00)
  %i.ts = fdiv reassoc nsz arcp contract afn <2 x float> %i.tp, %i.tr
  %i.tt = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.ts, <2 x float> splat (float f0x430608CD)) ; 2 uses
  %i.tu = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.tl, float 0.000000e+00)
  %i.tv = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.tu, float f0x3E232000) ; 2 uses
  %i.tw = fmul reassoc nnan nsz arcp contract afn float %i.tv, f0x4196D000
  %i.tx = fadd reassoc nsz arcp contract afn float %i.tw, f0x3F560000
  %i.ty = fmul reassoc nnan nsz arcp contract afn float %i.tv, 1.868750e+01
  %i.tz = fadd reassoc nsz arcp contract afn float %i.ty, 1.000000e+00
  %i.ua = fdiv reassoc nsz arcp contract afn float %i.tx, %i.tz
  %i.ub = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ua, float f0x430608CD) ; 3 uses
  %i.uc = extractelement <2 x float> %i.tt, i64 0 ; 3 uses
  %i.ud = extractelement <2 x float> %i.tt, i64 1 ; 3 uses
  %i.ue = fadd reassoc nsz arcp contract afn float %i.uc, %i.ud ; 2 uses
  %i.uf = fmul reassoc nsz arcp contract afn float %i.ue, 5.000000e-01
  %i.ug = fmul reassoc nsz arcp contract afn float %i.ub, 0.000000e+00 ; 2 uses
  %i.uh = fadd reassoc nsz arcp contract afn float %i.uf, %i.ug ; 2 uses
  %i.ui = fmul reassoc nsz arcp contract afn float %i.ud, 3.524000e+00
  %i.uj = fmul reassoc nsz arcp contract afn float %i.uc, f0x40822279
  %i.uk = fsub reassoc nsz arcp contract afn float %i.ui, %i.uj
  %i.ul = fmul reassoc nsz arcp contract afn float %i.ub, 5.427080e-01
  %i.um = fadd reassoc nsz arcp contract afn float %i.uk, %i.ul ; 2 uses
  %i.un = fmul reassoc nsz arcp contract afn float %i.ud, 1.990760e-01
  %i.uo = fmul reassoc nsz arcp contract afn float %i.uc, f0x3F8C63E9
  %i.up = fadd reassoc nsz arcp contract afn float %i.uo, %i.un
  %i.uq = fmul reassoc nsz arcp contract afn float %i.ub, f0xBFA5DF3B
  %i.ur = fadd reassoc nsz arcp contract afn float %i.up, %i.uq ; 2 uses
  %i.us = fmul reassoc nsz arcp contract afn float %i.ue, 0.000000e+00
  %i.ut = fadd reassoc nsz arcp contract afn float %i.us, %i.ug
  %i.uu = fmul reassoc nsz arcp contract afn float %i.uh, 4.400000e-01
  %i.uv = fmul reassoc nsz arcp contract afn float %i.uh, 5.600000e-01
  %i.uw = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.uv
  %i.ux = fdiv reassoc nsz arcp contract afn float %i.uu, %i.uw
  %i.uy = fadd reassoc nsz arcp contract afn float %i.ux, -1.629550e-11
  %i.uz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.uy, float 0.000000e+00) ; 2 uses
  %i.va = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.um, float noundef %i.ur) #25 ; 2 uses
  %i.vb = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.ur, float %i.um) ; 2 uses
  %sincos320 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.vb) ; 2 uses
  %sin321 = extractvalue { float, float } %sincos320, 0 ; 5 uses
  %cos322 = extractvalue { float, float } %sincos320, 1 ; 5 uses
  %i.vc = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.va, float %i.uz) ; 4 uses
  %sincos317 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.vc) ; 2 uses
  %sin318 = extractvalue { float, float } %sincos317, 0 ; 3 uses
  %cos319 = extractvalue { float, float } %sincos317, 1 ; 3 uses
  %i.vd = load float, ptr %i.fo, align 16, !tbaa !242
  %i.ve = load float, ptr %i.dl, align 16, !tbaa !12
  %i.vf = fmul reassoc nsz arcp contract afn float %i.ve, %i.ie
  %i.vg = load float, ptr %i.fp, align 8, !tbaa !12
  %i.vh = fmul reassoc nsz arcp contract afn float %i.vg, %i.in
  %i.vi = load float, ptr %i.fq, align 16, !tbaa !12
  %i.vj = fmul reassoc nsz arcp contract afn float %i.vi, %i.if
  %i.vk = fadd reassoc nsz arcp contract afn float %i.vd, 1.000000e+00
  %i.vl = fadd reassoc nsz arcp contract afn float %i.vk, %i.vf
  %i.vm = fadd reassoc nsz arcp contract afn float %i.vl, %i.vh
  %i.vn = fadd reassoc nsz arcp contract afn float %i.vm, %i.vj
  %i.vo = load float, ptr %i.fl, align 16, !tbaa !243
  %i.vp = load float, ptr %i.dk, align 16, !tbaa !12
  %i.vq = fmul reassoc nsz arcp contract afn float %i.vp, %i.ie
  %i.vr = load float, ptr %i.fm, align 16, !tbaa !12
  %i.vs = fmul reassoc nsz arcp contract afn float %i.vr, %i.in
  %i.vt = load float, ptr %i.fn, align 8, !tbaa !12
  %i.vu = fmul reassoc nsz arcp contract afn float %i.vt, %i.if
  %i.vv = fadd reassoc nsz arcp contract afn float %i.vq, %i.vo
  %i.vw = fadd reassoc nsz arcp contract afn float %i.vv, %i.vs
  %i.vx = fadd reassoc nsz arcp contract afn float %i.vw, %i.vu
  %i.vy = fmul reassoc nsz arcp contract afn float %cos319, %i.uz
  %i.vz = fmul reassoc nsz arcp contract afn float %sin318, %i.va
  %i.wa = fadd reassoc nsz arcp contract afn float %i.vy, %i.vz ; 2 uses
  %i.wb = fmul reassoc nsz arcp contract afn float %i.vx, %i.vc ; 2 uses
  %i.wc = fneg reassoc nsz arcp contract afn float %i.vc ; 2 uses
  %i.wd = fcmp reassoc nsz arcp contract afn ogt float %i.wb, %i.wc
  %. = select reassoc nsz arcp contract afn i1 %i.wd, float %i.wb, float %i.wc ; 2 uses
  %i.we = fsub reassoc nsz arcp contract afn float f0x3FC90FDB, %i.vc ; 2 uses
  %i.wf = fcmp reassoc nsz arcp contract afn olt float %., %i.we
  %i.wg = select reassoc nsz arcp contract afn i1 %i.wf, float %., float %i.we
  %i.wh = fmul reassoc nsz arcp contract afn float %i.wg, %i.wa ; 2 uses
  %i.wi = fmul reassoc nsz arcp contract afn float %i.vn, %i.wa ; 2 uses
  %i.wj = fcmp reassoc nsz arcp contract afn ogt float %i.wi, 0.000000e+00
  %i.wk = select reassoc nsz arcp contract afn i1 %i.wj, float %i.wi, float 0.000000e+00 ; 2 uses
  %i.wl = fmul reassoc nsz arcp contract afn float %i.wk, %cos319
  %i.wm = fmul reassoc nsz arcp contract afn float %i.wh, %sin318
  %i.wn = fsub reassoc nsz arcp contract afn float %i.wl, %i.wm ; 3 uses
  %i.wo = fcmp reassoc nsz arcp contract afn ogt float %i.wn, 0.000000e+00 ; 2 uses
  %i.wp = select reassoc nsz arcp contract afn i1 %i.wo, float %i.wn, float 0.000000e+00 ; 3 uses
  %i.wq = fmul reassoc nsz arcp contract afn float %i.wk, %sin318
  %i.wr = fmul reassoc nsz arcp contract afn float %i.wh, %cos319
  %i.ws = fadd reassoc nsz arcp contract afn float %i.wr, %i.wq ; 2 uses
  %i.wt = fcmp reassoc nsz arcp contract afn ogt float %i.ws, 0.000000e+00
  %i.wu = select reassoc nsz arcp contract afn i1 %i.wt, float %i.ws, float 0.000000e+00 ; 3 uses
  %i.wv = fmul reassoc nsz arcp contract afn float %i.vb, f0x42A2F983
  %i.ww = fadd reassoc nsz arcp contract afn float %i.wv, 2.560000e+02 ; 2 uses
  %i.wx = fpext reassoc nsz arcp contract afn float %i.ww to double ; 2 uses
  %i.wy = tail call reassoc nsz arcp contract afn double @llvm.floor.f64(double %i.wx)
  %i.wz = fptrunc reassoc nsz arcp contract afn double %i.wy to float ; 2 uses
  %i.xa = tail call reassoc nsz arcp contract afn double @llvm.ceil.f64(double %i.wx)
  %i.xb = fptrunc reassoc nsz arcp contract afn double %i.xa to float
  %i.xc = fptosi float %i.wz to i32
  %i.xd = and i32 %i.xc, 511                      ; 2 uses
  %i.xe = fptosi float %i.xb to i32
  %i.xf = and i32 %i.xe, 511                      ; 2 uses
  %i.xg = zext nneg i32 %i.xd to i64
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.xg
  %i.xi = load float, ptr %i.xh, align 4, !tbaa !12 ; 3 uses
  %.not.i = icmp eq i32 %i.xd, %i.xf
  br i1 %.not.i, label %lookup_gamut.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.xj = fsub reassoc nsz arcp contract afn float %i.ww, %i.wz
  %i.xk = zext nneg i32 %i.xf to i64
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.xk
  %i.xm = load float, ptr %i.xl, align 4, !tbaa !12
  %i.xn = fsub reassoc nsz arcp contract afn float %i.xm, %i.xi
  %i.xo = fmul reassoc nsz arcp contract afn float %i.xn, %i.xj
  %i.xp = fadd reassoc nsz arcp contract afn float %i.xo, %i.xi
  br label %lookup_gamut.exit

lookup_gamut.exit:                                ; preds = %bb.h, %bb.i
  %i.xq = phi float [ %i.xp, %bb.i ], [ %i.xi, %bb.h ] ; 3 uses
  br i1 %i.wo, label %bb.j, label %soft_clip.exit

bb.j:                                             ; preds = %lookup_gamut.exit
  %i.xr = fdiv reassoc nsz arcp contract afn float %i.wu, %i.wn ; 3 uses
  %i.xs = fmul reassoc nsz arcp contract afn float %i.xq, 8.000000e-01 ; 3 uses
  %i.xt = fcmp reassoc nsz arcp contract afn ogt float %i.xr, %i.xs
  br i1 %i.xt, label %bb.k, label %soft_clip.exit

bb.k:                                             ; preds = %bb.j
  %i.xu = fmul reassoc nsz arcp contract afn float %i.xq, f0x3E4CCCCC ; 2 uses
  %i.xv = fsub reassoc nsz arcp contract afn float %i.xs, %i.xr
  %i.xw = fdiv reassoc nsz arcp contract afn float %i.xv, %i.xu
  %i.xx = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.xw)
  %i.xy = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.xx
  %i.xz = fmul reassoc nsz arcp contract afn float %i.xy, %i.xu
  %i.ya = fadd reassoc nsz arcp contract afn float %i.xz, %i.xs
  br label %soft_clip.exit

soft_clip.exit:                                   ; preds = %bb.k, %bb.j, %lookup_gamut.exit
  %i.yb = phi reassoc nsz arcp contract afn float [ %i.xq, %lookup_gamut.exit ], [ %i.ya, %bb.k ], [ %i.xr, %bb.j ] ; 3 uses
  %i.yc = fmul reassoc nsz arcp contract afn float %i.yb, %i.wp
  %i.yd = fcmp reassoc nsz arcp contract afn ogt float %i.yb, 0.000000e+00
  %i.ye = fdiv reassoc nsz arcp contract afn float %i.wu, %i.yb
  %i.yf = select reassoc nsz arcp contract afn i1 %i.yd, float %i.ye, float %i.wp
  %i.yg = fadd reassoc nsz arcp contract afn float %i.yf, %i.wp
  %i.yh = fmul reassoc nsz arcp contract afn float %i.yg, 5.000000e-01
  %i.yi = fadd reassoc nsz arcp contract afn float %i.yc, %i.wu
  %i.yj = fmul reassoc nsz arcp contract afn float %i.yi, 5.000000e-01 ; 5 uses
  %i.yk = fadd reassoc nsz arcp contract afn float %i.yh, 1.629550e-11 ; 2 uses
  %i.yl = fmul reassoc nsz arcp contract afn float %i.yk, 5.600000e-01
  %i.ym = fadd reassoc nsz arcp contract afn float %i.yl, 4.400000e-01
  %i.yn = fdiv reassoc nsz arcp contract afn float %i.yk, %i.ym ; 3 uses
  %i.yo = fcmp reassoc nsz arcp contract afn ogt float %i.yn, 0.000000e+00
  %i.yp = select reassoc nsz arcp contract afn i1 %i.yo, float %i.yn, float 0.000000e+00 ; 6 uses
  %i.yq = fmul reassoc nsz arcp contract afn float %i.yj, %cos322 ; 3 uses
  %i.yr = fmul reassoc nsz arcp contract afn float %i.yj, %sin321 ; 3 uses
  %i.ys = fmul reassoc nsz arcp contract afn float %i.yq, f0x3E0DEE7B
  %6 = fmul reassoc nsz arcp contract afn float %i.yr, f0x3D6DC306
  %7 = fadd reassoc nsz arcp contract afn float %6, %i.ys
  %i.yt = fadd reassoc nsz arcp contract afn float %7, %i.yp
  %i.yu = fmul reassoc nsz arcp contract afn float %i.yq, f0xBE0DEE7B
  %8 = fmul reassoc nsz arcp contract afn float %i.yr, f0xBD6DC306
  %9 = fadd reassoc nsz arcp contract afn float %8, %i.yu
  %i.yv = fadd reassoc nsz arcp contract afn float %9, %i.yp
  %i.yw = fmul reassoc nsz arcp contract afn float %i.yq, f0xBDC4A5BD
  %10 = fmul reassoc nsz arcp contract afn float %i.yr, f0xBF4FD826
  %11 = fadd reassoc nsz arcp contract afn float %10, %i.yw
  %i.yx = fadd reassoc nsz arcp contract afn float %11, %i.yp
  %i.yy = fcmp reassoc nsz arcp contract afn olt float %i.yt, 0.000000e+00
  br i1 %i.yy, label %bb.l, label %bb.m

bb.l:                                             ; preds = %soft_clip.exit
  %i.yz = fneg reassoc nsz arcp contract afn float %i.yp
  %i.za = fmul reassoc nsz arcp contract afn float %cos322, f0x3E0DEE7B
  %i.zb = fmul reassoc nsz arcp contract afn float %sin321, f0x3D6DC306
  %i.zc = fadd reassoc nsz arcp contract afn float %i.za, %i.zb
  %i.zd = fdiv reassoc nsz arcp contract afn float %i.yz, %i.zc ; 2 uses
  %i.ze = fcmp reassoc nsz arcp contract afn olt float %i.zd, %i.yj
  %.324 = select reassoc nsz arcp contract afn i1 %i.ze, float %i.zd, float %i.yj
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %soft_clip.exit
  %.0292 = phi nsz float [ %.324, %bb.l ], [ %i.yj, %soft_clip.exit ] ; 3 uses
  %i.zf = fcmp reassoc nsz arcp contract afn olt float %i.yv, 0.000000e+00
  br i1 %i.zf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.zg = fneg reassoc nsz arcp contract afn float %i.yp
  %i.zh = fmul reassoc nsz arcp contract afn float %cos322, f0xBE0DEE7B
  %i.zi = fmul reassoc nsz arcp contract afn float %sin321, f0x3D6DC306
  %i.zj = fsub reassoc nsz arcp contract afn float %i.zh, %i.zi
  %i.zk = fdiv reassoc nsz arcp contract afn float %i.zg, %i.zj ; 2 uses
  %i.zl = fcmp reassoc nsz arcp contract afn olt float %i.zk, %.0292
  %..0292 = select reassoc nsz arcp contract afn i1 %i.zl, float %i.zk, float %.0292
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1 = phi nsz float [ %..0292, %bb.n ], [ %.0292, %bb.m ] ; 3 uses
  %i.zm = fcmp reassoc nsz arcp contract afn olt float %i.yx, 0.000000e+00
  br i1 %i.zm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.zn = fneg reassoc nsz arcp contract afn float %i.yp
  %i.zo = fmul reassoc nsz arcp contract afn float %cos322, f0xBDC4A5BD
  %i.zp = fmul reassoc nsz arcp contract afn float %sin321, f0x3F4FD826
  %i.zq = fsub reassoc nsz arcp contract afn float %i.zo, %i.zp
  %i.zr = fdiv reassoc nsz arcp contract afn float %i.zn, %i.zq ; 2 uses
  %i.zs = fcmp reassoc nsz arcp contract afn olt float %i.zr, %.1
  %..1 = select reassoc nsz arcp contract afn i1 %i.zs, float %i.zr, float %.1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.2 = phi nsz float [ %..1, %bb.p ], [ %.1, %bb.o ] ; 2 uses
  %i.zt = fmul reassoc nsz arcp contract afn float %.2, %cos322 ; 4 uses
  %i.zu = fmul reassoc nsz arcp contract afn float %.2, %sin321 ; 4 uses
  %i.zv = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.yn, float 0.000000e+00) ; 4 uses
  %i.zw = fmul reassoc nsz arcp contract afn float %i.zt, f0x3E0DEE7B
  %12 = fmul reassoc nsz arcp contract afn float %i.zu, f0x3D6DC306
  %13 = fadd reassoc nsz arcp contract afn float %i.zw, %i.zv
  %i.zx = fadd reassoc nsz arcp contract afn float %13, %12
  %.sroa.0.0.vec.insert.i = insertelement <4 x float> poison, float %i.zx, i64 0
  %i.zy = fmul reassoc nsz arcp contract afn float %i.zt, f0xBE0DEE7B
  %14 = fmul reassoc nsz arcp contract afn float %i.zu, f0xBD6DC306
  %15 = fadd reassoc nsz arcp contract afn float %i.zy, %i.zv
  %i.zz = fadd reassoc nsz arcp contract afn float %15, %14
  %.sroa.0.4.vec.insert.i = insertelement <4 x float> %.sroa.0.0.vec.insert.i, float %i.zz, i64 1
  %i.aaa = fmul reassoc nsz arcp contract afn float %i.zt, f0xBDC4A5BD
  %16 = fmul reassoc nsz arcp contract afn float %i.zu, f0xBF4FD826
  %17 = fadd reassoc nsz arcp contract afn float %i.aaa, %i.zv
  %i.aab = fadd reassoc nsz arcp contract afn float %17, %16
  %.sroa.0.8.vec.insert.i = insertelement <4 x float> %.sroa.0.4.vec.insert.i, float %i.aab, i64 2
  %i.aac = fadd reassoc nsz arcp contract afn float %i.zt, %i.zv
  %i.aad = fadd reassoc nsz arcp contract afn float %i.aac, %i.zu
  %i.aae = fmul reassoc nsz arcp contract afn float %i.aad, 0.000000e+00
  %.sroa.0.12.vec.insert.i = insertelement <4 x float> %.sroa.0.8.vec.insert.i, float %i.aae, i64 3
  %i.aaf = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.0.12.vec.insert.i, <4 x float> zeroinitializer) ; 3 uses
  %.sroa.0.8.vec.extract69.i = extractelement <4 x float> %i.aaf, i64 2
  %i.aag = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.sroa.0.8.vec.extract69.i, float f0x3BF4797F) ; 2 uses
  %.sroa.0.12.vec.extract.i = extractelement <4 x float> %i.aaf, i64 3
  %i.aah = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.sroa.0.12.vec.extract.i, float f0x3BF4797F)
  %i.aai = insertelement <4 x float> <float f0x3F560000, float f0x3F560000, float f0x3F560000, float poison>, float %i.aah, i64 3
  %i.aaj = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.aag, i64 2
  %i.aak = tail call reassoc nsz arcp contract afn <4 x float> @llvm.pow.v4f32(<4 x float> %i.aaf, <4 x float> splat (float f0x3BF4797F)) ; 2 uses
  %i.aal = shufflevector <4 x float> %i.aak, <4 x float> %i.aaj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aam = fsub reassoc nsz arcp contract afn <4 x float> %i.aai, %i.aal
  %i.aan = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.aag, i64 2
  %i.aao = shufflevector <4 x float> %i.aak, <4 x float> %i.aan, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aap = fmul reassoc nsz arcp contract afn <4 x float> %i.aao, <float 1.868750e+01, float 1.868750e+01, float 1.868750e+01, float -0.000000e+00>
  %i.aaq = fadd reassoc nsz arcp contract afn <4 x float> %i.aap, <float f0xC196D000, float f0xC196D000, float f0xC196D000, float 1.000000e+00>
  %i.aar = fdiv reassoc nsz arcp contract afn <4 x float> %i.aam, %i.aaq
  %i.aas = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.aar, <4 x float> zeroinitializer) ; 3 uses
  %.sroa.0.0.vec.extract51.i = extractelement <4 x float> %i.aas, i64 0
  %i.aat = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.sroa.0.0.vec.extract51.i, float f0x40C8E06B) ; 3 uses
  %.sroa.0.4.vec.extract64.i = extractelement <4 x float> %i.aas, i64 1
  %i.aau = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.sroa.0.4.vec.extract64.i, float f0x40C8E06B) ; 3 uses
  %.sroa.0.8.vec.extract77.i = extractelement <4 x float> %i.aas, i64 2
  %i.aav = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.sroa.0.8.vec.extract77.i, float f0x40C8E06B) ; 3 uses
  %i.aaw = fmul reassoc nsz arcp contract afn float %i.aat, f0x46965487
  %i.aax = fmul reassoc nsz arcp contract afn float %i.aau, f0xC61CFFB1
  %i.aay = fadd reassoc nsz arcp contract afn float %i.aax, %i.aaw
  %i.aaz = fmul reassoc nsz arcp contract afn float %i.aav, f0x43BC41CC
  %i.aba = fadd reassoc nsz arcp contract afn float %i.aay, %i.aaz
  %.reass605 = fmul reassoc nsz arcp contract afn float %i.aat, 5.307830e+03
  %.reass606 = fmul reassoc nsz arcp contract afn float %i.aau, f0x462BFD2A
  %i.abb = fadd reassoc nsz arcp contract afn float %.reass606, %.reass605
  %.reass604 = fmul reassoc nsz arcp contract afn float %i.aav, f0xC477AB14
  %i.abc = fadd reassoc nsz arcp contract afn float %i.abb, %.reass604
  %i.abd = fmul reassoc nsz arcp contract afn float %i.aat, f0xC4637500
  %i.abe = fmul reassoc nsz arcp contract afn float %i.aau, f0x45437487
  %i.abf = fsub reassoc nsz arcp contract afn float %i.abd, %i.abe
  %i.abg = fmul reassoc nsz arcp contract afn float %i.aav, f0x466DEEAA
  %i.abh = fadd reassoc nsz arcp contract afn float %i.abf, %i.abg ; 2 uses
  %i.abi = fmul reassoc nsz arcp contract afn float %i.abh, f0x3E199998
  %i.abj = fadd reassoc nsz arcp contract afn float %i.aba, %i.abi ; 2 uses
  %i.abk = fmul reassoc nsz arcp contract afn float %i.abj, f0x3F5E9BD4
  %.sroa.0404.0.vec.insert408 = insertelement <4 x float> poison, float %i.abk, i64 0
  %.reass603 = fmul reassoc nsz arcp contract afn float %i.abj, f0xBEE55ABA
  %i.abl = fadd reassoc nsz arcp contract afn float %i.abc, %.reass603
  %.sroa.0404.4.vec.insert423 = insertelement <4 x float> %.sroa.0404.0.vec.insert408, float %i.abl, i64 1
  %.sroa.0404.8.vec.insert438 = insertelement <4 x float> %.sroa.0404.4.vec.insert423, float %i.abh, i64 2
  %.sroa.0404.12.vec.insert450 = insertelement <4 x float> %.sroa.0404.8.vec.insert438, float %i.ut, i64 3
  br label %bb.x

bb.r:                                             ; preds = %gamut_check_Yrg.exit
  %i.abm = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.0404.12.vec.insert, <4 x float> zeroinitializer) ; 3 uses
  %.sroa.0.0.vec.extract.i = extractelement <4 x float> %i.abm, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract4.i = extractelement <4 x float> %i.abm, i64 1 ; 3 uses
  %i.abn = fadd reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i, %.sroa.0.4.vec.extract4.i
  %.sroa.0.8.vec.extract.i = extractelement <4 x float> %i.abm, i64 2
  %i.abo = fadd reassoc nsz arcp contract afn float %i.abn, %.sroa.0.8.vec.extract.i ; 3 uses
  %i.abp = fcmp reassoc nsz arcp contract afn ogt float %i.abo, 0.000000e+00 ; 2 uses
  %i.abq = fdiv reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i, %i.abo
  %i.abr = fdiv reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract4.i, %i.abo
  %i.abs = select reassoc nsz arcp contract afn i1 %i.abp, float %i.abq, float 3.127100e-01 ; 2 uses
  %i.abt = select reassoc nsz arcp contract afn i1 %i.abp, float %i.abr, float 3.290200e-01 ; 2 uses
  %i.abu = insertelement <2 x float> poison, float %i.abs, i64 0
  %i.abv = shufflevector <2 x float> %i.abu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abw = fmul reassoc nsz arcp contract afn <2 x float> %i.abv, <float f0xBF48B05C, float f0x3F3ECA3F>
  %i.abx = insertelement <2 x float> poison, float %i.abt, i64 0
  %i.aby = shufflevector <2 x float> %i.abx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abz = fmul reassoc nsz arcp contract afn <2 x float> %i.aby, <float 2.775130e-01, float f0xBE524E0D>
  %i.aca = fadd reassoc nsz arcp contract afn <2 x float> %i.abw, <float f0x3E1D8756, float f0xBE29732A>
  %i.acb = fadd reassoc nsz arcp contract afn <2 x float> %i.aca, %i.abz
  %i.acc = fmul reassoc nsz arcp contract afn float %i.abs, f0x3EA32D9A
  %i.acd = fmul reassoc nsz arcp contract afn float %i.abt, f0x400AB749
  %i.ace = fadd reassoc nsz arcp contract afn float %i.acc, f0x3E9527F8
  %i.acf = fadd reassoc nsz arcp contract afn float %i.ace, %i.acd ; 5 uses
  %i.acg = fcmp reassoc nsz arcp contract afn ult float %i.acf, 0.000000e+00
  %i.ach = fcmp reassoc nsz arcp contract afn olt float %i.acf, f0x00800000
  %i.aci = select reassoc nsz arcp contract afn i1 %i.ach, float f0x00800000, float %i.acf
  %i.acj = fcmp reassoc nsz arcp contract afn ogt float %i.acf, f0x80800000
  %i.ack = select reassoc nsz arcp contract afn i1 %i.acj, float f0x80800000, float %i.acf
  %i.acl = select reassoc nsz arcp contract afn i1 %i.acg, float %i.ack, float %i.aci
  %i.acm = insertelement <2 x float> poison, float %i.acl, i64 0
  %i.acn = shufflevector <2 x float> %i.acm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aco = fdiv reassoc nsz arcp contract afn <2 x float> %i.acb, %i.acn ; 3 uses
  %i.acp = extractelement <2 x float> %i.aco, i64 0
  %i.acq = fmul reassoc nsz arcp contract afn float %i.acp, f0x3FB2C28D
  %i.acr = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.aco) ; 2 uses
  %i.acs = extractelement <2 x float> %i.acr, i64 0
  %i.act = fadd reassoc nsz arcp contract afn float %i.acs, f0x3FBEFF8B
  %i.acu = fdiv reassoc nsz arcp contract afn float %i.acq, %i.act ; 2 uses
  %i.acv = extractelement <2 x float> %i.aco, i64 1
  %i.acw = fmul reassoc nsz arcp contract afn float %i.acv, f0x3FB9C753
  %i.acx = extractelement <2 x float> %i.acr, i64 1
  %i.acy = fadd reassoc nsz arcp contract afn float %i.acx, f0x3FC32F7A
  %i.acz = fdiv reassoc nsz arcp contract afn float %i.acw, %i.acy ; 2 uses
  %i.ada = fmul reassoc nsz arcp contract afn float %i.acu, f0xBF8FFF79
  %i.adb = fmul reassoc nsz arcp contract afn float %i.acz, f0x3F7B00FB
  %i.adc = fsub reassoc nsz arcp contract afn float %i.ada, %i.adb ; 3 uses
  %i.add = fmul reassoc nsz arcp contract afn float %i.acu, f0x3FEE7E6D
  %i.ade = fmul reassoc nsz arcp contract afn float %i.acz, f0x3FFC65AF
  %i.adf = fadd reassoc nsz arcp contract afn float %i.ade, %i.add ; 3 uses
  %i.adg = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.sroa.0.4.vec.extract4.i, float f0x3F21B3E7) ; 2 uses
  %i.adh = fmul reassoc nsz arcp contract afn float %i.adg, f0x4006541D
  %i.adi = fadd reassoc nsz arcp contract afn float %i.adg, f0x3F8FE801
  %i.adj = fdiv reassoc nsz arcp contract afn float %i.adh, %i.adi ; 2 uses
  %i.adk = fmul reassoc nsz arcp contract afn float %i.adc, %i.adc
  %i.adl = fmul reassoc nsz arcp contract afn float %i.adf, %i.adf
  %i.adm = fadd reassoc nsz arcp contract afn float %i.adl, %i.adk
  %i.adn = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.adj, float f0x3F2703AC)
  %i.ado = fmul reassoc nsz arcp contract afn float %i.adn, f0x417EED8B
  %i.adp = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.adm, float f0x3F19CB20)
  %i.adq = fmul reassoc nsz arcp contract afn float %i.ado, %i.adp
  %i.adr = fmul reassoc nsz arcp contract afn float %i.adq, %i.fv ; 6 uses
  %i.ads = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.adf, float %i.adc) ; 2 uses
  %i.adt = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.adr, float f0x3FAB13D1)
  %i.adu = fadd reassoc nsz arcp contract afn float %i.adt, 1.000000e+00
  %i.adv = fmul reassoc nsz arcp contract afn float %i.adu, %i.adj
  %i.adw = fmul reassoc nsz arcp contract afn float %i.adv, %i.fw ; 3 uses
  %i.adx = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.adr, float noundef %i.adw) #25 ; 3 uses
  %i.ady = fcmp reassoc nsz arcp contract afn ogt float %i.adx, 0.000000e+00 ; 2 uses
  %i.adz = fdiv reassoc nsz arcp contract afn float %i.adr, %i.adx
  %i.aea = select reassoc nsz arcp contract afn i1 %i.ady, float %i.adz, float 0.000000e+00 ; 3 uses
  %i.aeb = fdiv reassoc nsz arcp contract afn float %i.adw, %i.adx
  %i.aec = select reassoc nsz arcp contract afn i1 %i.ady, float %i.aeb, float 0.000000e+00 ; 3 uses
  %i.aed = fcmp reassoc nsz arcp contract afn olt float %i.adr, f0x00800000
  %i.aee = select reassoc nsz arcp contract afn i1 %i.aed, float f0x00800000, float %i.adr ; 5 uses
  %i.aef = fmul reassoc nsz arcp contract afn float %i.aea, %i.adr
  %i.aeg = fmul reassoc nsz arcp contract afn float %i.aec, %i.adw
  %i.aeh = fadd reassoc nsz arcp contract afn float %i.aeg, %i.aef ; 3 uses
  %i.aei = load float, ptr %i.fl, align 16, !tbaa !243
  %i.aej = load float, ptr %i.dk, align 16, !tbaa !12
  %i.aek = fmul reassoc nsz arcp contract afn float %i.aej, %i.ie
  %i.ael = load float, ptr %i.fm, align 16, !tbaa !12
  %i.aem = fmul reassoc nsz arcp contract afn float %i.ael, %i.in
  %i.aen = load float, ptr %i.fn, align 8, !tbaa !12
  %i.aeo = fmul reassoc nsz arcp contract afn float %i.aen, %i.if
  %i.aep = fadd reassoc nsz arcp contract afn float %i.aei, 1.000000e+00
  %i.aeq = fadd reassoc nsz arcp contract afn float %i.aep, %i.aek
  %i.aer = fadd reassoc nsz arcp contract afn float %i.aeq, %i.aem
  %i.aes = fadd reassoc nsz arcp contract afn float %i.aer, %i.aeo ; 2 uses
  %i.aet = fcmp reassoc nsz arcp contract afn ogt float %i.aes, 0.000000e+00
  %spec.select583 = select reassoc nsz arcp contract afn i1 %i.aet, float %i.aes, float 0.000000e+00 ; 3 uses
  %i.aeu = load float, ptr %i.fo, align 16, !tbaa !242
  %i.aev = load float, ptr %i.dl, align 16, !tbaa !12
  %i.aew = fmul reassoc nsz arcp contract afn float %i.aev, %i.ie
  %i.aex = load float, ptr %i.fp, align 8, !tbaa !12
  %i.aey = fmul reassoc nsz arcp contract afn float %i.aex, %i.in
  %i.aez = load float, ptr %i.fq, align 16, !tbaa !12
  %i.afa = fmul reassoc nsz arcp contract afn float %i.aez, %i.if
  %i.afb = fadd reassoc nsz arcp contract afn float %i.aeu, 1.000000e+00
  %i.afc = fadd reassoc nsz arcp contract afn float %i.afb, %i.aew
  %i.afd = fadd reassoc nsz arcp contract afn float %i.afc, %i.aey
  %i.afe = fadd reassoc nsz arcp contract afn float %i.afd, %i.afa ; 2 uses
  %i.aff = fcmp reassoc nsz arcp contract afn ogt float %i.afe, 0.000000e+00
  %i.afg = select reassoc nsz arcp contract afn i1 %i.aff, float %i.afe, float 0.000000e+00
  %i.afh = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.aee, float noundef %i.aeh) #25
  %i.afi = fmul reassoc nsz arcp contract afn float %i.afh, 5.000000e-01
  %i.afj = fdiv reassoc nsz arcp contract afn float %i.afi, %i.aee ; 5 uses
  %i.afk = fcmp reassoc nsz arcp contract afn ogt float %spec.select583, %i.afj
  br i1 %i.afk, label %bb.s, label %soft_clip.exit342

bb.s:                                             ; preds = %bb.r
  %i.afl = fsub reassoc nsz arcp contract afn float %i.afj, %spec.select583
  %i.afm = fdiv reassoc nsz arcp contract afn float %i.afl, %i.afj
  %i.afn = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.afm)
  %i.afo = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.afn
  %i.afp = fmul reassoc nsz arcp contract afn float %i.afo, %i.afj
  %i.afq = fadd reassoc nsz arcp contract afn float %i.afp, %i.afj
  br label %soft_clip.exit342

soft_clip.exit342:                                ; preds = %bb.r, %bb.s
  %i.afr = phi reassoc nsz arcp contract afn float [ %i.afq, %bb.s ], [ %spec.select583, %bb.r ] ; 3 uses
  %i.afs = fadd reassoc nsz arcp contract afn float %i.afr, -1.000000e+00
  %i.aft = fmul reassoc nsz arcp contract afn float %i.afs, %i.aee ; 2 uses
  %i.afu = fmul reassoc nsz arcp contract afn float %i.aee, %i.aee
  %i.afv = fmul reassoc nsz arcp contract afn float %i.afr, %i.afr
  %i.afw = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.afv
  %i.afx = fmul reassoc nsz arcp contract afn float %i.afu, %i.afw
  %i.afy = fmul reassoc nsz arcp contract afn float %i.aeh, %i.aeh
  %i.afz = fadd reassoc nsz arcp contract afn float %i.afx, %i.afy
  %i.aga = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.afz)
  %i.agb = fmul reassoc nsz arcp contract afn float %i.aga, %i.afg ; 2 uses
  %i.agc = fmul reassoc nsz arcp contract afn float %i.aft, %i.aec
  %i.agd = fmul reassoc nsz arcp contract afn float %i.agb, %i.aea
  %i.age = fadd reassoc nsz arcp contract afn float %i.agd, %i.agc ; 2 uses
  %i.agf = fcmp reassoc nsz arcp contract afn ogt float %i.age, 0.000000e+00
  %spec.select325 = select reassoc nsz arcp contract afn i1 %i.agf, float %i.age, float 0.000000e+00 ; 2 uses
  %i.agg = fmul reassoc nsz arcp contract afn float %i.agb, %i.aec
  %i.agh = fmul reassoc nsz arcp contract afn float %i.aft, %i.aea
  %i.agi = fsub reassoc nsz arcp contract afn float %i.agg, %i.agh ; 3 uses
  %i.agj = fcmp reassoc nsz arcp contract afn ogt float %i.agi, 0.000000e+00 ; 2 uses
  %i.agk = select reassoc nsz arcp contract afn i1 %i.agj, float %i.agi, float 0.000000e+00 ; 3 uses
  %i.agl = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %spec.select325, float f0x3FAB13D1)
  %i.agm = fadd reassoc nsz arcp contract afn float %i.agl, 1.000000e+00
  %i.agn = fdiv reassoc nsz arcp contract afn float %i.agk, %i.agm ; 2 uses
  %i.ago = fmul reassoc nsz arcp contract afn float %i.ads, f0x42A2F983
  %i.agp = fadd reassoc nsz arcp contract afn float %i.ago, 2.560000e+02 ; 2 uses
  %i.agq = fpext reassoc nsz arcp contract afn float %i.agp to double ; 2 uses
  %i.agr = tail call reassoc nsz arcp contract afn double @llvm.floor.f64(double %i.agq)
  %i.ags = fptrunc reassoc nsz arcp contract afn double %i.agr to float ; 2 uses
  %i.agt = tail call reassoc nsz arcp contract afn double @llvm.ceil.f64(double %i.agq)
  %i.agu = fptrunc reassoc nsz arcp contract afn double %i.agt to float
  %i.agv = fptosi float %i.ags to i32
  %i.agw = and i32 %i.agv, 511                    ; 2 uses
  %i.agx = fptosi float %i.agu to i32
  %i.agy = and i32 %i.agx, 511                    ; 2 uses
  %i.agz = zext nneg i32 %i.agw to i64
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.agz
  %i.ahb = load float, ptr %i.aha, align 4, !tbaa !12 ; 3 uses
  %.not.i343 = icmp eq i32 %i.agw, %i.agy
  br i1 %.not.i343, label %lookup_gamut.exit344, label %bb.t

bb.t:                                             ; preds = %soft_clip.exit342
  %i.ahc = fsub reassoc nsz arcp contract afn float %i.agp, %i.ags
  %i.ahd = zext nneg i32 %i.agy to i64
  %i.ahe = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.ahd
  %i.ahf = load float, ptr %i.ahe, align 4, !tbaa !12
  %i.ahg = fsub reassoc nsz arcp contract afn float %i.ahf, %i.ahb
  %i.ahh = fmul reassoc nsz arcp contract afn float %i.ahg, %i.ahc
  %i.ahi = fadd reassoc nsz arcp contract afn float %i.ahh, %i.ahb
  br label %lookup_gamut.exit344

lookup_gamut.exit344:                             ; preds = %soft_clip.exit342, %bb.t
  %i.ahj = phi float [ %i.ahi, %bb.t ], [ %i.ahb, %soft_clip.exit342 ]
  %i.ahk = fmul reassoc nsz arcp contract afn float %i.agn, %i.em
  %i.ahl = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ahk, float f0x3F2703AC)
  %i.ahm = fmul reassoc nsz arcp contract afn float %i.ahl, f0x417EED8B
  %i.ahn = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ahj, float f0x3F19CB20)
  %i.aho = fmul reassoc nsz arcp contract afn float %i.ahm, %i.ahn
  %i.ahp = fmul reassoc nsz arcp contract afn float %i.aho, %i.fx ; 2 uses
  %i.ahq = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ahp, float f0x3FAB13D1)
  %i.ahr = fadd reassoc nsz arcp contract afn float %i.ahq, 1.000000e+00
  %i.ahs = fmul reassoc nsz arcp contract afn float %i.ahr, %i.agn ; 2 uses
  %i.aht = fcmp reassoc nsz arcp contract afn ogt float %i.ahs, 0.000000e+00
  %i.ahu = fdiv reassoc nsz arcp contract afn float %i.ahp, %i.ahs
  %spec.select584 = select reassoc nsz arcp contract afn i1 %i.aht, float %i.ahu, float 0.000000e+00 ; 2 uses
  %i.ahv = fdiv reassoc nsz arcp contract afn float %spec.select325, %i.agi
  %i.ahw = select reassoc nsz arcp contract afn i1 %i.agj, float %i.ahv, float 0.000000e+00 ; 3 uses
  %i.ahx = fmul reassoc nsz arcp contract afn float %spec.select584, 8.000000e-01 ; 3 uses
  %i.ahy = fcmp reassoc nsz arcp contract afn ogt float %i.ahw, %i.ahx
  br i1 %i.ahy, label %bb.u, label %soft_clip.exit345

bb.u:                                             ; preds = %lookup_gamut.exit344
  %i.ahz = fmul reassoc nsz arcp contract afn float %spec.select584, f0x3E4CCCCC ; 2 uses
  %i.aia = fsub reassoc nsz arcp contract afn float %i.ahx, %i.ahw
  %i.aib = fdiv reassoc nsz arcp contract afn float %i.aia, %i.ahz
  %i.aic = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.aib)
  %i.aid = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aic
  %i.aie = fmul reassoc nsz arcp contract afn float %i.aid, %i.ahz
  %i.aif = fadd reassoc nsz arcp contract afn float %i.aie, %i.ahx
  br label %soft_clip.exit345

soft_clip.exit345:                                ; preds = %lookup_gamut.exit344, %bb.u
  %i.aig = phi reassoc nsz arcp contract afn float [ %i.aif, %bb.u ], [ %i.ahw, %lookup_gamut.exit344 ]
  %i.aih = fmul reassoc nsz arcp contract afn float %i.aig, %i.agk ; 2 uses
  %i.aii = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aih, float f0x3FAB13D1)
  %i.aij = fadd reassoc nsz arcp contract afn float %i.aii, 1.000000e+00
  %i.aik = fmul reassoc nsz arcp contract afn float %i.agk, %i.em
  %i.ail = fdiv reassoc nsz arcp contract afn float %i.aik, %i.aij ; 3 uses
  %i.aim = fcmp reassoc nsz arcp contract afn ult float %i.ail, 0.000000e+00
  %.inv.i = fcmp reassoc nsz arcp contract afn ole float %i.ail, 2.098850e+00
  %spec.select.i = select reassoc nsz arcp contract afn i1 %.inv.i, float %i.ail, float 2.098850e+00
  %i.ain = select reassoc nsz arcp contract afn i1 %i.aim, float 0.000000e+00, float %spec.select.i ; 4 uses
  %i.aio = fcmp reassoc nsz arcp contract afn une float %i.ain, 0.000000e+00
  br i1 %i.aio, label %bb.v, label %dt_UCS_JCH_to_xyY.exit

bb.v:                                             ; preds = %soft_clip.exit345
  %i.aip = fmul reassoc nsz arcp contract afn float %i.aih, %i.em
  %i.aiq = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ain, float f0x3F2703AC)
  %i.air = fmul reassoc nnan nsz arcp contract afn float %i.aiq, f0x417EED8B
  %i.ais = fdiv reassoc nsz arcp contract afn float %i.aip, %i.air
  %i.ait = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ais, float f0x3F5510A2)
  br label %dt_UCS_JCH_to_xyY.exit

dt_UCS_JCH_to_xyY.exit:                           ; preds = %soft_clip.exit345, %bb.v
  %i.aiu = phi reassoc nsz arcp contract afn float [ %i.ait, %bb.v ], [ 0.000000e+00, %soft_clip.exit345 ] ; 2 uses
  %sincos.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.ads) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0
  %cos.i = extractvalue { float, float } %sincos.i, 1
  %i.aiv = fmul reassoc nsz arcp contract afn float %i.aiu, %cos.i ; 2 uses
  %i.aiw = fmul reassoc nsz arcp contract afn float %i.aiu, %sin.i ; 2 uses
  %i.aix = fmul reassoc nsz arcp contract afn float %i.aiv, f0xC0A13362
  %i.aiy = fmul reassoc nsz arcp contract afn float %i.aiw, f0x40204F91
  %i.aiz = fsub reassoc nsz arcp contract afn float %i.aix, %i.aiy ; 2 uses
  %i.aja = fmul reassoc nsz arcp contract afn float %i.aiv, f0x40985229
  %i.ajb = fmul reassoc nsz arcp contract afn float %i.aiw, f0x4037EFD4
  %i.ajc = fadd reassoc nsz arcp contract afn float %i.aja, %i.ajb ; 2 uses
  %i.ajd = fmul reassoc nsz arcp contract afn float %i.aiz, f0xBFBEFF8B
  %i.aje = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.aiz)
  %i.ajf = fadd reassoc nsz arcp contract afn float %i.aje, f0xBFB2C28D
  %i.ajg = fdiv reassoc nsz arcp contract afn float %i.ajd, %i.ajf ; 3 uses
  %i.ajh = fmul reassoc nsz arcp contract afn float %i.ajc, f0xBFC32F7A
  %i.aji = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ajc)
  %i.ajj = fadd reassoc nsz arcp contract afn float %i.aji, f0xBFB9C753
  %i.ajk = fdiv reassoc nsz arcp contract afn float %i.ajh, %i.ajj ; 3 uses
  %i.ajl = fmul reassoc nsz arcp contract afn float %i.ajg, f0xBE1A9505
  %i.ajm = fmul reassoc nsz arcp contract afn float %i.ajk, f0xBE1EE8D5
  %i.ajn = fadd reassoc nsz arcp contract afn float %i.ajl, f0xBC0A2B16
  %i.ajo = fadd reassoc nsz arcp contract afn float %i.ajn, %i.ajm
  %i.ajp = fmul reassoc nsz arcp contract afn float %i.ajg, f0x3F70B489
  %i.ajq = fadd reassoc nsz arcp contract afn float %i.ajk, f0xBCD1FB74
  %i.ajr = fadd reassoc nsz arcp contract afn float %i.ajq, %i.ajp ; 5 uses
  %i.ajs = fcmp reassoc nsz arcp contract afn ult float %i.ajr, 0.000000e+00
  %i.ajt = fcmp reassoc nsz arcp contract afn olt float %i.ajr, f0x00800000
  %i.aju = select reassoc nsz arcp contract afn i1 %i.ajt, float f0x00800000, float %i.ajr
  %i.ajv = fcmp reassoc nsz arcp contract afn ogt float %i.ajr, f0x80800000
  %i.ajw = select reassoc nsz arcp contract afn i1 %i.ajv, float f0x80800000, float %i.ajr
  %i.ajx = select reassoc nsz arcp contract afn i1 %i.ajs, float %i.ajw, float %i.aju ; 2 uses
  %i.ajy = fdiv reassoc nsz arcp contract afn float %i.ajo, %i.ajx ; 4 uses
  %i.ajz = fcmp reassoc nsz arcp contract afn oeq float %i.ajy, 0.000000e+00
  br i1 %i.ajz, label %.thread.i, label %bb.w

.thread.i:                                        ; preds = %dt_UCS_JCH_to_xyY.exit
  %.sroa.0404.4.vec.insert427 = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x float> %.sroa.0404.12.vec.insert, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %dt_xyY_to_XYZ.exit

bb.w:                                             ; preds = %dt_UCS_JCH_to_xyY.exit
  %i.aka = fmul reassoc nsz arcp contract afn float %i.ain, f0x3F8FE801
  %i.akb = fsub reassoc nsz arcp contract afn float f0x4006541D, %i.ain
  %i.akc = fdiv reassoc nsz arcp contract afn float %i.aka, %i.akb
  %i.akd = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.akc, float f0x3FCAA4B8) ; 3 uses
  %i.ake = fmul reassoc nsz arcp contract afn float %i.ajk, f0x3E10B0E5
  %i.akf = fmul reassoc nsz arcp contract afn float %i.ajg, f0x3E2B2F00
  %i.akg = fadd reassoc nsz arcp contract afn float %i.akf, f0xBC0352A9
  %i.akh = fadd reassoc nsz arcp contract afn float %i.akg, %i.ake
  %i.aki = fdiv reassoc nsz arcp contract afn float %i.akh, %i.ajx ; 2 uses
  %i.akj = fmul reassoc nsz arcp contract afn float %i.aki, %i.akd
  %i.akk = fdiv reassoc nsz arcp contract afn float %i.akj, %i.ajy
  %.sroa.0404.0.vec.insert410 = insertelement <4 x float> %.sroa.0404.12.vec.insert, float %i.akk, i64 0
  %.sroa.0404.4.vec.insert425 = insertelement <4 x float> %.sroa.0404.0.vec.insert410, float %i.akd, i64 1
  %i.akl = fadd reassoc nsz arcp contract afn float %i.ajy, %i.aki
  %i.akm = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.akl
  %i.akn = fmul reassoc nsz arcp contract afn float %i.akm, %i.akd
  %i.ako = fdiv reassoc nsz arcp contract afn float %i.akn, %i.ajy
  br label %dt_xyY_to_XYZ.exit

dt_xyY_to_XYZ.exit:                               ; preds = %.thread.i, %bb.w
  %.sroa.0404.1 = phi nsz <4 x float> [ %.sroa.0404.4.vec.insert427, %.thread.i ], [ %.sroa.0404.4.vec.insert425, %bb.w ]
  %i.akp = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %.thread.i ], [ %i.ako, %bb.w ]
  %.sroa.0404.8.vec.insert440 = insertelement <4 x float> %.sroa.0404.1, float %i.akp, i64 2
  br label %bb.x

bb.x:                                             ; preds = %dt_xyY_to_XYZ.exit, %bb.q
  %.sroa.0404.0 = phi nsz <4 x float> [ %.sroa.0404.12.vec.insert450, %bb.q ], [ %.sroa.0404.8.vec.insert440, %dt_xyY_to_XYZ.exit ] ; 4 uses
  %i.akq = shufflevector <4 x float> %.sroa.0404.0, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 2>
  %i.akr = fmul reassoc nsz arcp contract afn <4 x float> %i.akq, %i.cy
  %i.aks = shufflevector <4 x float> %.sroa.0404.0, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 2, i32 2, i32 7>
  %i.akt = fmul reassoc nsz arcp contract afn <4 x float> %i.aks, %i.dd ; 2 uses
  %i.aku = shufflevector <4 x float> %.sroa.0404.0, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.akv = shufflevector <4 x float> %i.cm, <4 x float> %.sroa.0404.0, <4 x i32> <i32 poison, i32 poison, i32 3, i32 4>
  %i.akw = shufflevector <4 x float> %i.fu, <4 x float> %i.akv, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.akx = fmul reassoc nsz arcp contract afn <4 x float> %i.aku, %i.akw
  %i.aky = fadd reassoc nsz arcp contract afn <4 x float> %i.aku, %i.akw
  %i.akz = shufflevector <4 x float> %i.akx, <4 x float> %i.aky, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ala = fadd reassoc nsz arcp contract afn <4 x float> %i.akz, %i.akr ; 2 uses
  %i.alb = fadd reassoc nsz arcp contract afn <4 x float> %i.ala, %i.akt
  %i.alc = fmul reassoc nsz arcp contract afn <4 x float> %i.ala, %i.akt
  %i.ald = shufflevector <4 x float> %i.alb, <4 x float> %i.alc, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  br i1 %i.ee, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.ale = lshr exact i64 %.0299607, 2            ; 2 uses
  %i.alf = udiv i64 %i.ale, %i.eu                 ; 2 uses
  %i.alg = urem i64 %i.ale, %i.eu                 ; 2 uses
  %i.alh = urem i64 %i.alf, %i.ef
  %i.ali = urem i64 %i.alf, %i.eg
  %i.alj = icmp samesign ult i64 %i.alh, %i.ali
  %i.alk = urem i64 %i.alg, %i.ef
  %i.all = urem i64 %i.alg, %i.eg
  %i.alm = icmp samesign ult i64 %i.alk, %i.all   ; 6 uses
  br i1 %i.alj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.sroa.8.0..sroa_idx..sroa.8.0..sroa_idx618.v = select i1 %i.alm, i64 216, i64 200
  %.sroa.7.0..sroa_idx..sroa.7.0..sroa_idx612.v = select i1 %i.alm, i64 212, i64 196
  %.755 = select i1 %i.alm, ptr %i.fr, ptr %i.fs
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %.sroa.8.0..sroa_idx620..sroa.8.0..sroa_idx622.v = select i1 %i.alm, i64 200, i64 216
  %.sroa.7.0..sroa_idx614..sroa.7.0..sroa_idx616.v = select i1 %i.alm, i64 196, i64 212
  %.756 = select i1 %i.alm, ptr %i.fs, ptr %i.fr
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sroa.8.0..sroa_idx..sroa.8.0..sroa_idx618.v.pn = phi i64 [ %.sroa.8.0..sroa_idx..sroa.8.0..sroa_idx618.v, %bb.z ], [ %.sroa.8.0..sroa_idx620..sroa.8.0..sroa_idx622.v, %bb.aa ]
  %.sroa.7.0..sroa_idx..sroa.7.0..sroa_idx612.v.pn = phi i64 [ %.sroa.7.0..sroa_idx..sroa.7.0..sroa_idx612.v, %bb.z ], [ %.sroa.7.0..sroa_idx614..sroa.7.0..sroa_idx616.v, %bb.aa ]
  %.sroa.0.0.in = phi ptr [ %.755, %bb.z ], [ %.756, %bb.aa ]
  %.sroa.7.0.in = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.7.0..sroa_idx..sroa.7.0..sroa_idx612.v.pn
  %.sroa.8.0.in = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.8.0..sroa_idx..sroa.8.0..sroa_idx618.v.pn
  %.sroa.0.0 = load float, ptr %.sroa.0.0.in, align 4, !tbaa !12 ; 2 uses
  %.sroa.7.0 = load float, ptr %.sroa.7.0.in, align 4, !tbaa !12
  %.sroa.8.0 = load float, ptr %.sroa.8.0.in, align 4, !tbaa !12
  %i.aln = load i32, ptr %i.ft, align 4, !tbaa !140
  %i.alo = zext i32 %i.aln to i64
  %i.alp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.alo
  %i.alq = load float, ptr %i.alp, align 4, !tbaa !12 ; 2 uses
  %i.alr = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ald, <4 x float> zeroinitializer) ; 2 uses
  %.sroa.0630.0.vec.extract = extractelement <4 x float> %i.alr, i64 0
  %i.als = fsub reassoc nsz arcp contract afn float %.sroa.0630.0.vec.extract, %.sroa.0.0
  %i.alt = fmul reassoc nsz arcp contract afn float %i.als, %i.alq
  %i.alu = fadd reassoc nsz arcp contract afn float %i.alt, %.sroa.0.0
  %i.alv = shufflevector <4 x float> %i.alr, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.alw = insertelement <2 x float> poison, float %.sroa.7.0, i64 0
  %i.alx = insertelement <2 x float> %i.alw, float %.sroa.8.0, i64 1 ; 2 uses
  %i.aly = fsub reassoc nsz arcp contract afn <2 x float> %i.alv, %i.alx
  %i.alz = insertelement <2 x float> poison, float %i.alq, i64 0
  %i.ama = shufflevector <2 x float> %i.alz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.amb = fmul reassoc nsz arcp contract afn <2 x float> %i.aly, %i.ama
  %i.amc = fadd reassoc nsz arcp contract afn <2 x float> %i.amb, %i.alx
  %i.amd = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.alu, i64 0
  %i.ame = shufflevector <2 x float> %i.amc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0630.12.vec.insert644757 = shufflevector <4 x float> %i.amd, <4 x float> %i.ame, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %bb.ad

bb.ac:                                            ; preds = %bb.x
  %i.amf = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ald, <4 x float> zeroinitializer)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.0630.0 = phi nsz <4 x float> [ %.sroa.0630.12.vec.insert644757, %bb.ab ], [ %i.amf, %bb.ac ]
  %i.amg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0299607
  store <4 x float> %.sroa.0630.0, ptr %i.amg, align 16, !tbaa !141, !alias.scope !244, !nontemporal !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.amh = add nuw i64 %.0299607, 4               ; 2 uses
  %i.ami = icmp ult i64 %i.amh, %i.ew
  br i1 %i.ami, label %bb.f, label %._crit_edge

bb.ae:                                            ; preds = %bb.a, %._crit_edge
  ret void
}

declare ptr @dt_ioppr_get_pipe_current_profile_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: nounwind uwtable
define void @commit_params(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !41  ; 56 uses
  %i.c = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.11) #19
  %i.d = fcmp reassoc nsz arcp contract afn ogt float %i.c, 1.000000e+00
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.11) #19
  %i.f = fcmp reassoc nsz arcp contract afn olt float %i.e, 0.000000e+00
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.11) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.a ], [ %i.g, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store float %i.h, ptr %i.i, align 16, !tbaa !12
  %i.j = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.12) #19
  %i.k = fcmp reassoc nsz arcp contract afn ogt float %i.j, 1.000000e+00
  br i1 %i.k, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.12) #19
  %i.m = fcmp reassoc nsz arcp contract afn olt float %i.l, 0.000000e+00
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.12) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.o = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.d ], [ %i.n, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  store float %i.o, ptr %i.p, align 4, !tbaa !12
  %i.q = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.13) #19
  %i.r = fcmp reassoc nsz arcp contract afn ogt float %i.q, 1.000000e+00
  br i1 %i.r, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.13) #19
  %i.t = fcmp reassoc nsz arcp contract afn olt float %i.s, 0.000000e+00
  br i1 %i.t, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.13) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
end_hunk_0
begin_hunk_1_@color_picker_apply:bb.a
bb.i:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !181 ; 2 uses
  %i.bp = icmp eq ptr %1, %i.bo
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bq = load float, ptr %i.b, align 16, !tbaa !12
  %i.br = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.bq) ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  store float %i.br, ptr %i.bs, align 4, !tbaa !164
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bo, float noundef %i.br) #19
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !182 ; 2 uses
  %i.bv = icmp eq ptr %1, %i.bu
  br i1 %i.bv, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bw = load float, ptr %i.a, align 16, !tbaa !12 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store float %i.bw, ptr %i.bx, align 4, !tbaa !19
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bu, float noundef %i.bw) #19
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.18) #19
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.h, %bb.l, %bb.m, %bb.j, %bb.f, %bb.b
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !123
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 104
  %i.ca = atomicrmw sub ptr %i.bz, i32 1 seq_cst, align 4 ; 0 uses
  tail call void @gui_changed(ptr noundef nonnull %0, ptr noundef %1, ptr poison)
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !260
  tail call void @dt_dev_add_history_item(ptr noundef %i.cb, ptr noundef nonnull %0, i32 noundef 1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

declare i32 @dt_key_modifier_state(...) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log2.f32(float) #10

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_changed(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %i.b = alloca [4 x [4 x float]], align 64       ; 22 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !52  ; 21 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !172  ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2760
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !261  ; 2 uses
  %.not62 = icmp eq ptr %i.j, null
  br i1 %.not62, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @dt_ioppr_get_pipe_output_profile_info(ptr noundef nonnull %i.j) #19 ; 3 uses
  %.not63 = icmp eq ptr %i.k, null
  br i1 %.not63, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 640
  %i.m = load float, ptr %i.l, align 64, !tbaa !12 ; 2 uses
  %i.n = tail call float @llvm.fabs.f32(float %i.m)
  %i.o = fcmp ueq float %i.n, +inf
  br i1 %i.o, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.a, %bb.b, %bb.d, %bb.c
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !64
  %i.q = tail call ptr @dt_ioppr_add_profile_info_to_list(ptr noundef %i.p, i32 noundef 1, ptr noundef nonnull @.str.19, i32 noundef 1) #19 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.q, i64 640
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %i.r = phi float [ %i.m, %bb.d ], [ %.pre, %.thread ] ; 2 uses
  %.1 = phi ptr [ %i.k, %bb.d ], [ %i.q, %.thread ] ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.1, i64 644
  %i.t = getelementptr inbounds nuw i8, ptr %.1, i64 648
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %.1, i64 656
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.1, i64 660
  %i.aa = getelementptr inbounds nuw i8, ptr %.1, i64 664
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !12 ; 2 uses
  %i.ac = load <2 x float>, ptr %i.s, align 4, !tbaa !12 ; 3 uses
  %i.ad = load float, ptr %i.t, align 4, !tbaa !12
  %i.ae = load <2 x float>, ptr %i.x, align 4, !tbaa !12 ; 3 uses
  %i.af = load float, ptr %i.z, align 4, !tbaa !12
  %i.ag = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ah = insertelement <2 x float> %i.ag, float %i.r, i64 0 ; 3 uses
  %i.ai = fmul reassoc nsz arcp contract afn <2 x float> %i.ah, splat (float f0x3FEDB261)
  %i.aj = shufflevector <2 x float> %i.ac, <2 x float> %i.ae, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.ak = fmul reassoc nsz arcp contract afn <2 x float> %i.aj, splat (float 6.235430e-01)
  %i.al = fadd reassoc nsz arcp contract afn <2 x float> %i.ak, %i.ai
  %i.am = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.an = insertelement <2 x float> %i.am, float %i.ab, i64 1 ; 3 uses
  %i.ao = fmul reassoc nsz arcp contract afn <2 x float> %i.an, splat (float f0xBDD2F349)
  %i.ap = fadd reassoc nsz arcp contract afn <2 x float> %i.al, %i.ao ; 4 uses
  %i.aq = extractelement <2 x float> %i.ap, i64 0
  store float %i.aq, ptr %i.b, align 64, !tbaa !12
  %i.ar = fmul reassoc nsz arcp contract afn <2 x float> %i.ah, splat (float f0x3FA70054)
  %i.as = fmul reassoc nsz arcp contract afn <2 x float> %i.aj, splat (float f0x3EC5EFC6)
  %i.at = fsub reassoc nsz arcp contract afn <2 x float> %i.as, %i.ar
  %i.au = fmul reassoc nsz arcp contract afn <2 x float> %i.an, splat (float f0x3E1C0B9C)
  %i.av = fadd reassoc nsz arcp contract afn <2 x float> %i.at, %i.au ; 4 uses
  %i.aw = extractelement <2 x float> %i.av, i64 0
  store float %i.aw, ptr %i.u, align 4, !tbaa !12
  %i.ax = fmul reassoc nsz arcp contract afn <2 x float> %i.ah, splat (float f0x3E94B6F7)
  %i.ay = fmul reassoc nsz arcp contract afn <2 x float> %i.aj, splat (float f0x3D171040)
  %i.az = fsub reassoc nsz arcp contract afn <2 x float> %i.ax, %i.ay
  %i.ba = fmul reassoc nsz arcp contract afn <2 x float> %i.an, splat (float f0x3FAB61D9)
  %i.bb = fadd reassoc nsz arcp contract afn <2 x float> %i.az, %i.ba ; 4 uses
  %i.bc = extractelement <2 x float> %i.bb, i64 0
  store float %i.bc, ptr %i.v, align 8, !tbaa !12
  %i.bd = extractelement <2 x float> %i.ac, i64 0
  %i.be = fadd reassoc nsz arcp contract afn float %i.bd, %i.r
  %i.bf = fadd reassoc nsz arcp contract afn float %i.be, %i.ad
  %i.bg = fmul reassoc nsz arcp contract afn float %i.bf, 0.000000e+00
  store float %i.bg, ptr %i.w, align 4, !tbaa !12
  %i.bh = shufflevector <2 x float> %i.ap, <2 x float> %i.av, <2 x i32> <i32 1, i32 3>
  store <2 x float> %i.bh, ptr %i.y, align 16, !tbaa !12
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bj = extractelement <2 x float> %i.bb, i64 1
  store float %i.bj, ptr %i.bi, align 8, !tbaa !12
  %i.bk = extractelement <2 x float> %i.ae, i64 0
  %i.bl = fadd reassoc nsz arcp contract afn float %i.af, %i.bk
  %i.bm = fadd reassoc nsz arcp contract afn float %i.bl, %i.ab
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, 0.000000e+00
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store float %i.bn, ptr %i.bo, align 4, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %.1, i64 672
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.br = load float, ptr %i.bp, align 4, !tbaa !12 ; 4 uses
  %i.bs = fmul reassoc nsz arcp contract afn float %i.br, f0x3FEDB261
  %i.bt = getelementptr inbounds nuw i8, ptr %.1, i64 676
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !12 ; 4 uses
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, 6.235430e-01
  %i.bw = fadd reassoc nsz arcp contract afn float %i.bv, %i.bs
  %i.bx = getelementptr inbounds nuw i8, ptr %.1, i64 680
  %i.by = load float, ptr %i.bx, align 4, !tbaa !12 ; 4 uses
  %i.bz = fmul reassoc nsz arcp contract afn float %i.by, f0xBDD2F349
  %i.ca = fadd reassoc nsz arcp contract afn float %i.bw, %i.bz ; 3 uses
  store float %i.ca, ptr %i.bq, align 32, !tbaa !12
  %i.cb = fmul reassoc nsz arcp contract afn float %i.br, f0x3FA70054
  %i.cc = fmul reassoc nsz arcp contract afn float %i.bu, f0x3EC5EFC6
  %i.cd = fsub reassoc nsz arcp contract afn float %i.cc, %i.cb
  %i.ce = fmul reassoc nsz arcp contract afn float %i.by, f0x3E1C0B9C
  %i.cf = fadd reassoc nsz arcp contract afn float %i.cd, %i.ce ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store float %i.cf, ptr %i.cg, align 4, !tbaa !12
  %i.ch = fmul reassoc nsz arcp contract afn float %i.br, f0x3E94B6F7
  %i.ci = fmul reassoc nsz arcp contract afn float %i.bu, f0x3D171040
  %i.cj = fsub reassoc nsz arcp contract afn float %i.ch, %i.ci
  %i.ck = fmul reassoc nsz arcp contract afn float %i.by, f0x3FAB61D9
  %i.cl = fadd reassoc nsz arcp contract afn float %i.cj, %i.ck ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store float %i.cl, ptr %i.cm, align 8, !tbaa !12
  %i.cn = fadd reassoc nsz arcp contract afn float %i.bu, %i.br
  %i.co = fadd reassoc nsz arcp contract afn float %i.cn, %i.by
  %i.cp = fmul reassoc nsz arcp contract afn float %i.co, 0.000000e+00
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store float %i.cp, ptr %i.cq, align 4, !tbaa !12
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 312 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !262
  %i.ct = icmp ne ptr %.1, %i.cs                  ; 5 uses
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !123
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 104
  %i.cw = atomicrmw add ptr %i.cv, i32 1 seq_cst, align 4 ; 0 uses
  br i1 %i.ct, label %bb.f, label %paint_hue_sliders.exit

bb.f:                                             ; preds = %bb.e
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dc = fmul reassoc nsz arcp contract afn <2 x float> %i.av, splat (float f0x3F5B4315)
  %i.dd = fmul reassoc nsz arcp contract afn <2 x float> %i.bb, splat (float f0x3F0E1437)
  %i.de = fadd reassoc nsz arcp contract afn <2 x float> %i.dc, %i.ap
  %i.df = fadd reassoc nsz arcp contract afn <2 x float> %i.de, %i.dd
  %i.dg = fmul reassoc nsz arcp contract afn <2 x float> %i.df, splat (float f0xBEDAE22E)
  %i.dh = fmul reassoc nsz arcp contract afn float %i.cf, f0x3F5B4315
  %i.di = fadd reassoc nsz arcp contract afn float %i.dh, %i.ca
  %i.dj = fmul reassoc nsz arcp contract afn float %i.cl, f0x3F0E1437
  %i.dk = fadd reassoc nsz arcp contract afn float %i.di, %i.dj
  %i.dl = fmul reassoc nsz arcp contract afn float %i.dk, f0xBEDAE22E
  br label %_clip_chroma_black.exit.i.i

_clip_chroma_black.exit.i.i:                      ; preds = %_clip_chroma_black.exit.i.i, %bb.f
  %.021.i = phi i32 [ 0, %bb.f ], [ %i.fj, %_clip_chroma_black.exit.i.i ] ; 2 uses
  %i.dm = uitofp nsz nneg i32 %.021.i to float    ; 2 uses
  %i.dn = fmul reassoc nnan nsz arcp contract afn float %i.dm, f0x3D579436 ; 4 uses
  %i.do = fmul reassoc nnan nsz arcp contract afn float %i.dm, 3.306940e-01
  %i.dp = fadd reassoc nsz arcp contract afn float %i.do, f0xBF060A93 ; 2 uses
  %sincos.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.dp) ; 2 uses
  %cos.i = extractvalue { float, float } %sincos.i, 1 ; 3 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0 ; 3 uses
  %i.dq = fmul reassoc nsz arcp contract afn float %cos.i, f0x3F7AB8BE
  %i.dr = fmul reassoc nsz arcp contract afn float %sin.i, f0x3EC893CB
  %i.ds = fadd reassoc nsz arcp contract afn float %i.dr, %i.dq ; 2 uses
  %i.dt = fmul reassoc nsz arcp contract afn float %cos.i, f0x3CA8E83F
  %i.du = fmul reassoc nsz arcp contract afn float %sin.i, f0x3F1BB61A
  %i.dv = fadd reassoc nsz arcp contract afn float %i.du, %i.dt ; 2 uses
  %i.dw = fadd reassoc nsz arcp contract afn float %sin.i, %cos.i ; 2 uses
  %i.dx = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = fmul reassoc nsz arcp contract afn <2 x float> %i.dy, %i.ap
  %i.ea = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ec = fmul reassoc nsz arcp contract afn <2 x float> %i.eb, %i.av
  %i.ed = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = fmul reassoc nsz arcp contract afn <2 x float> %i.ee, %i.bb
  %i.eg = fsub reassoc nsz arcp contract afn <2 x float> %i.dz, %i.ef
  %i.eh = fadd reassoc nsz arcp contract afn <2 x float> %i.eg, %i.ec ; 2 uses
  %i.ei = fcmp reassoc nsz arcp contract afn oeq <2 x float> %i.eh, zeroinitializer
  %i.ej = fdiv reassoc nsz arcp contract afn <2 x float> %i.dg, %i.eh ; 2 uses
  %i.ek = fcmp reassoc nsz arcp contract afn ult <2 x float> %i.ej, zeroinitializer
  %i.el = select <2 x i1> %i.ei, <2 x i1> splat (i1 true), <2 x i1> %i.ek
  %i.em = select <2 x i1> %i.el, <2 x float> splat (float f0x7F7FFFFF), <2 x float> %i.ej ; 2 uses
  %i.en = fmul reassoc nsz arcp contract afn float %i.ds, %i.ca
  %i.eo = fmul reassoc nsz arcp contract afn float %i.dv, %i.cf
  %.neg150 = fmul reassoc nsz arcp contract afn float %i.dw, %i.cl
  %i.ep = fsub reassoc nsz arcp contract afn float %i.en, %.neg150
  %i.eq = fadd reassoc nsz arcp contract afn float %i.ep, %i.eo ; 2 uses
  %i.er = fcmp reassoc nsz arcp contract afn oeq float %i.eq, 0.000000e+00
  %i.es = fdiv reassoc nsz arcp contract afn float %i.dl, %i.eq ; 2 uses
  %i.et = fcmp reassoc nsz arcp contract afn ult float %i.es, 0.000000e+00
  %i.eu = select i1 %i.er, i1 true, i1 %i.et
  %.0.i22.i.i = select nsz i1 %i.eu, float f0x7F7FFFFF, float %i.es ; 2 uses
  %i.ev = extractelement <2 x float> %i.em, i64 0 ; 2 uses
  %i.ew = extractelement <2 x float> %i.em, i64 1 ; 2 uses
  %i.ex = fcmp reassoc nsz arcp contract afn olt float %i.ev, %i.ew
  %i.ey = select reassoc nsz arcp contract afn i1 %i.ex, float %i.ev, float %i.ew ; 2 uses
  %i.ez = fcmp reassoc nsz arcp contract afn olt float %i.ey, %.0.i22.i.i
  %..i.i = select reassoc nsz arcp contract afn i1 %i.ez, float %i.ey, float %.0.i22.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.fa = fcmp reassoc nsz arcp contract afn ogt float %..i.i, 2.000000e-01
  %i.fb = select reassoc nsz arcp contract afn i1 %i.fa, float 2.000000e-01, float %..i.i
  call fastcc void @_YchToRGB(ptr noundef %i.a, float noundef %i.fb, float noundef %i.dp, ptr noundef nonnull readonly %.1)
  %i.fc = load ptr, ptr %i.cx, align 8, !tbaa !173
  %i.fd = load float, ptr %i.a, align 16, !tbaa !12 ; 4 uses
  %i.fe = load float, ptr %i.cy, align 4, !tbaa !12 ; 4 uses
  %i.ff = load float, ptr %i.cz, align 8, !tbaa !12 ; 4 uses
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.fc, float noundef %i.dn, float noundef %i.fd, float noundef %i.fe, float noundef %i.ff) #19
  %i.fg = load ptr, ptr %i.d, align 8, !tbaa !175
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.fg, float noundef %i.dn, float noundef %i.fd, float noundef %i.fe, float noundef %i.ff) #19
  %i.fh = load ptr, ptr %i.da, align 8, !tbaa !179
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.fh, float noundef %i.dn, float noundef %i.fd, float noundef %i.fe, float noundef %i.ff) #19
  %i.fi = load ptr, ptr %i.db, align 8, !tbaa !177
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.fi, float noundef %i.dn, float noundef %i.fd, float noundef %i.fe, float noundef %i.ff) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.fj = add nuw nsw i32 %.021.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.fj, 20
  br i1 %exitcond.not.i, label %paint_hue_sliders.exit, label %_clip_chroma_black.exit.i.i

paint_hue_sliders.exit:                           ; preds = %_clip_chroma_black.exit.i.i, %bb.e
  %.not65 = icmp eq ptr %1, null
  br i1 %.not65, label %.thread148, label %bb.g

.thread148:                                       ; preds = %paint_hue_sliders.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !174
  %i.fm = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !153
  call fastcc void @paint_chroma_slider(ptr noundef nonnull %.1, ptr noundef %i.b, ptr noundef %i.fl, float noundef %i.fn)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !176
  %i.fq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !156
  call fastcc void @paint_chroma_slider(ptr noundef nonnull %.1, ptr noundef %i.b, ptr noundef %i.fp, float noundef %i.fr)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !178
  %i.fu = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !162
  call fastcc void @paint_chroma_slider(ptr noundef nonnull %.1, ptr noundef %i.b, ptr noundef %i.ft, float noundef %i.fv)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !180
  %i.fy = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !159
  call fastcc void @paint_chroma_slider(ptr noundef nonnull %.1, ptr noundef %i.b, ptr noundef %i.fx, float noundef %i.fz)
  br label %bb.n

bb.g:                                             ; preds = %paint_hue_sliders.exit
  %i.ga = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !173
  %i.gc = icmp eq ptr %1, %i.gb
  %or.cond = or i1 %i.ct, %i.gc
  br i1 %or.cond, label %bb.h, label %.thread141

bb.h:                                             ; preds = %bb.g
  %i.gd = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !174
  %i.gf = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !153
  call fastcc void @paint_chroma_slider(ptr noundef nonnull %.1, ptr noundef %i.b, ptr noundef %i.ge, float noundef %i.gg)
  br label %.thread141

.thread141:                                       ; preds = %bb.g, %bb.h
  %i.gh = load ptr, ptr %i.d, align 8, !tbaa !175
  %i.gi = icmp eq ptr %1, %i.gh
  %or.cond3 = or i1 %i.ct, %i.gi
  br i1 %or.cond3, label %bb.i, label %.thread143

bb.i:                                             ; preds = %.thread141
  %i.gj = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !176
  %i.gl = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !156
  call fastcc void @paint_chroma_slider(ptr noundef nonnull %.1, ptr noundef %i.b, ptr noundef %i.gk, float noundef %i.gm)
  br label %.thread143

.thread143:                                       ; preds = %.thread141, %bb.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !177
  %i.gp = icmp eq ptr %1, %i.go
  %or.cond5 = or i1 %i.ct, %i.gp
  br i1 %or.cond5, label %bb.j, label %.thread145

bb.j:                                             ; preds = %.thread143
  %i.gq = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !178
  %i.gs = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !162
  call fastcc void @paint_chroma_slider(ptr noundef nonnull %.1, ptr noundef %i.b, ptr noundef %i.gr, float noundef %i.gt)
  br label %.thread145

.thread145:                                       ; preds = %.thread143, %bb.j
  %i.gu = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !179
  %i.gw = icmp eq ptr %1, %i.gv
  %or.cond7 = or i1 %i.ct, %i.gw
  br i1 %or.cond7, label %bb.k, label %.thread147

bb.k:                                             ; preds = %.thread145
  %i.gx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !180
  %i.gz = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !159
  call fastcc void @paint_chroma_slider(ptr noundef nonnull %.1, ptr noundef %i.b, ptr noundef %i.gy, float noundef %i.ha)
  br label %.thread147

.thread147:                                       ; preds = %.thread145, %bb.k
  %i.hb = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !183
  %i.hd = icmp eq ptr %1, %i.hc
  br i1 %i.hd, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.thread147
  %i.he = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !184
  %i.hg = icmp eq ptr %1, %i.hf
  br i1 %i.hg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hh = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !185
  %i.hj = icmp eq ptr %1, %i.hi
  br i1 %i.hj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread148, %bb.m, %bb.l, %.thread147
  %i.hk = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !186
  tail call void @gtk_widget_queue_draw(ptr noundef %i.hl) #19
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.hm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !123
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 104
  %i.ho = atomicrmw sub ptr %i.hn, i32 1 seq_cst, align 4 ; 0 uses
  store ptr %.1, ptr %i.cr, align 8, !tbaa !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret void
}

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @dt_ioppr_get_pipe_output_profile_info(ptr noundef) local_unnamed_addr #3

declare ptr @dt_ioppr_add_profile_info_to_list(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @paint_chroma_slider(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2, float noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %i.b = fmul reassoc nsz arcp contract afn float %3, f0x3C8EFA36
  %i.c = fadd reassoc nsz arcp contract afn float %i.b, f0xBF060A93 ; 2 uses
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.c) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 3 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 3 uses
  %i.d = load float, ptr %1, align 4, !tbaa !12   ; 2 uses
  %i.e = fmul reassoc nsz arcp contract afn float %cos, f0x3F7AB8BE
  %i.f = fmul reassoc nsz arcp contract afn float %sin, f0x3EC893CB
  %i.g = fadd reassoc nsz arcp contract afn float %i.f, %i.e ; 3 uses
  %i.h = fmul reassoc nsz arcp contract afn float %i.d, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !12 ; 2 uses
  %i.k = fmul reassoc nsz arcp contract afn float %cos, f0x3CA8E83F
  %i.l = fmul reassoc nsz arcp contract afn float %sin, f0x3F1BB61A
  %i.m = fadd reassoc nsz arcp contract afn float %i.l, %i.k ; 3 uses
  %i.n = fmul reassoc nsz arcp contract afn float %i.j, %i.m
  %i.o = fadd reassoc nsz arcp contract afn float %i.n, %i.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !12 ; 2 uses
  %i.r = fadd reassoc nsz arcp contract afn float %sin, %cos ; 3 uses
  %i.s = fmul reassoc nsz arcp contract afn float %i.r, %i.q
  %i.t = fsub reassoc nsz arcp contract afn float %i.o, %i.s ; 2 uses
  %i.u = fcmp reassoc nsz arcp contract afn oeq float %i.t, 0.000000e+00
  br i1 %i.u, label %_clip_chroma_black.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = fmul reassoc nsz arcp contract afn float %i.j, f0x3F5B4315
  %i.w = fadd reassoc nsz arcp contract afn float %i.v, %i.d
  %i.x = fmul reassoc nsz arcp contract afn float %i.q, f0x3F0E1437
  %i.y = fadd reassoc nsz arcp contract afn float %i.w, %i.x
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, f0xBEDAE22E
  %i.aa = fdiv reassoc nsz arcp contract afn float %i.z, %i.t ; 2 uses
  %i.ab = fcmp reassoc nsz arcp contract afn oge float %i.aa, 0.000000e+00
  %i.ac = select reassoc nsz arcp contract afn i1 %i.ab, float %i.aa, float f0x7F7FFFFF
  br label %_clip_chroma_black.exit.i

_clip_chroma_black.exit.i:                        ; preds = %bb.b, %bb.a
  %.0.i.i = phi nsz float [ %i.ac, %bb.b ], [ f0x7F7FFFFF, %bb.a ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !12 ; 2 uses
  %i.af = fmul reassoc nsz arcp contract afn float %i.ae, %i.g
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !12 ; 2 uses
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ah, %i.m
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ai, %i.af
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load float, ptr %i.ak, align 4, !tbaa !12 ; 2 uses
  %i.am = fmul reassoc nsz arcp contract afn float %i.r, %i.al
  %i.an = fsub reassoc nsz arcp contract afn float %i.aj, %i.am ; 2 uses
  %i.ao = fcmp reassoc nsz arcp contract afn oeq float %i.an, 0.000000e+00
  br i1 %i.ao, label %_clip_chroma_black.exit21.i, label %bb.c

bb.c:                                             ; preds = %_clip_chroma_black.exit.i
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ah, f0x3F5B4315
  %i.aq = fadd reassoc nsz arcp contract afn float %i.ap, %i.ae
  %i.ar = fmul reassoc nsz arcp contract afn float %i.al, f0x3F0E1437
  %i.as = fadd reassoc nsz arcp contract afn float %i.aq, %i.ar
  %i.at = fmul reassoc nsz arcp contract afn float %i.as, f0xBEDAE22E
  %i.au = fdiv reassoc nsz arcp contract afn float %i.at, %i.an ; 2 uses
  %i.av = fcmp reassoc nsz arcp contract afn oge float %i.au, 0.000000e+00
  %i.aw = select reassoc nsz arcp contract afn i1 %i.av, float %i.au, float f0x7F7FFFFF
  br label %_clip_chroma_black.exit21.i

_clip_chroma_black.exit21.i:                      ; preds = %bb.c, %_clip_chroma_black.exit.i
  %.0.i20.i = phi nsz float [ %i.aw, %bb.c ], [ f0x7F7FFFFF, %_clip_chroma_black.exit.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !12 ; 2 uses
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, %i.g
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !12 ; 2 uses
  %i.bc = fmul reassoc nsz arcp contract afn float %i.bb, %i.m
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.az
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bf = load float, ptr %i.be, align 4, !tbaa !12 ; 2 uses
  %i.bg = fmul reassoc nsz arcp contract afn float %i.r, %i.bf
  %i.bh = fsub reassoc nsz arcp contract afn float %i.bd, %i.bg ; 2 uses
  %i.bi = fcmp reassoc nsz arcp contract afn oeq float %i.bh, 0.000000e+00
  br i1 %i.bi, label %Ych_max_chroma_without_negatives.exit, label %bb.d

bb.d:                                             ; preds = %_clip_chroma_black.exit21.i
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bb, f0x3F5B4315
  %i.bk = fadd reassoc nsz arcp contract afn float %i.bj, %i.ay
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bf, f0x3F0E1437
  %i.bm = fadd reassoc nsz arcp contract afn float %i.bk, %i.bl
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, f0xBEDAE22E
  %i.bo = fdiv reassoc nsz arcp contract afn float %i.bn, %i.bh ; 2 uses
  %i.bp = fcmp reassoc nsz arcp contract afn oge float %i.bo, 0.000000e+00
  %i.bq = select reassoc nsz arcp contract afn i1 %i.bp, float %i.bo, float f0x7F7FFFFF
  br label %Ych_max_chroma_without_negatives.exit

Ych_max_chroma_without_negatives.exit:            ; preds = %_clip_chroma_black.exit21.i, %bb.d
  %.0.i22.i = phi nsz float [ %i.bq, %bb.d ], [ f0x7F7FFFFF, %_clip_chroma_black.exit21.i ] ; 2 uses
  %i.br = fcmp reassoc nsz arcp contract afn olt float %.0.i.i, %.0.i20.i
  %i.bs = select reassoc nsz arcp contract afn i1 %i.br, float %.0.i.i, float %.0.i20.i ; 2 uses
  %i.bt = fcmp reassoc nsz arcp contract afn olt float %i.bs, %.0.i22.i
  %..i = select reassoc nsz arcp contract afn i1 %i.bt, float %i.bs, float %.0.i22.i ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  tail call void @gtk_widget_queue_draw(ptr noundef %2) #19
  ret void

bb.f:                                             ; preds = %Ych_max_chroma_without_negatives.exit, %bb.f
  %.021 = phi i32 [ 0, %Ych_max_chroma_without_negatives.exit ], [ %i.cd, %bb.f ] ; 2 uses
  %i.bw = uitofp nsz nneg i32 %.021 to float
  %i.bx = fmul reassoc nnan nsz arcp contract afn float %i.bw, f0x3D579436 ; 3 uses
  %i.by = fcmp reassoc nsz arcp contract afn olt float %i.bx, %..i
  %i.bz = select reassoc nsz arcp contract afn i1 %i.by, float %i.bx, float %..i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call fastcc void @_YchToRGB(ptr noundef %i.a, float noundef %i.bz, float noundef %i.c, ptr noundef %0)
  %i.ca = load float, ptr %i.a, align 16, !tbaa !12
  %i.cb = load float, ptr %i.bu, align 4, !tbaa !12
  %i.cc = load float, ptr %i.bv, align 8, !tbaa !12
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %2, float noundef %i.bx, float noundef %i.ca, float noundef %i.cb, float noundef %i.cc) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.cd = add nuw nsw i32 %.021, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cd, 20
  br i1 %exitcond.not, label %bb.e, label %bb.f
}

declare void @gtk_widget_queue_draw(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_update(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct._GdkRGBA, align 16          ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !52  ; 38 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !172  ; 33 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  %i.h = load float, ptr %i.g, align 4, !tbaa !151
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.f, float noundef %i.h) #19
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !188
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 116
  %i.l = load float, ptr %i.k, align 4, !tbaa !144
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.j, float noundef %i.l) #19
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !189
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  %i.p = load float, ptr %i.o, align 4, !tbaa !142
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.n, float noundef %i.p) #19
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !190
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.t = load float, ptr %i.s, align 4, !tbaa !21
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.r, float noundef %i.t) #19
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !191
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.x = load float, ptr %i.w, align 4, !tbaa !146
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.v, float noundef %i.x) #19
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !192
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !145
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.z, float noundef %i.ab) #19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !193
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.af = load float, ptr %i.ae, align 4, !tbaa !143
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ad, float noundef %i.af) #19
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !194
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !263
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ah, float noundef %i.aj) #19
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !195
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.an = load float, ptr %i.am, align 4, !tbaa !148
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.al, float noundef %i.an) #19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !196
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !147
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ap, float noundef %i.ar) #19
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !197
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.av = load float, ptr %i.au, align 4, !tbaa !22
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.at, float noundef %i.av) #19
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !198
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.az = load float, ptr %i.ay, align 4, !tbaa !264
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ax, float noundef %i.az) #19
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !199
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !150
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bb, float noundef %i.bd) #19
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !200
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !149
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bf, float noundef %i.bh) #19
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !201
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !265
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bj, float noundef %i.bl) #19
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !174
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !152
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bn, float noundef %i.bp) #19
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !173
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !153
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.br, float noundef %i.bt) #19
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !202
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !154
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bv, float noundef %i.bx) #19
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !176
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !155
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bz, float noundef %i.cb) #19
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !175
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !156
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.cc, float noundef %i.ce) #19
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !203
  %i.ch = load float, ptr %i.d, align 4, !tbaa !157
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.cg, float noundef %i.ch) #19
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !183
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !16
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.cj, float noundef %i.cl) #19
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !178
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cp = load float, ptr %i.co, align 4, !tbaa !161
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.cn, float noundef %i.cp) #19
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !177
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !162
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.cr, float noundef %i.ct) #19
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !204
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !163
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.cv, float noundef %i.cx) #19
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !181
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.db = load float, ptr %i.da, align 4, !tbaa !164
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.cz, float noundef %i.db) #19
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !180
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.df = load float, ptr %i.de, align 4, !tbaa !158
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.dd, float noundef %i.df) #19
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !179
  %i.di = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.dj = load float, ptr %i.di, align 4, !tbaa !159
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.dh, float noundef %i.dj) #19
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !205
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !160
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.dl, float noundef %i.dn) #19
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !184
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !17
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.dp, float noundef %i.dr) #19
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !185
end_hunk_1
