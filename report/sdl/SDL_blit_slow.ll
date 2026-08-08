begin_hunk_0_@SDL_Blit_Slow_Float:bb.a
bb.cg:                                            ; preds = %bb.ce
  %i.ss = load i8, ptr %i.ee, align 4
  %i.st = zext i8 %i.ss to i32
  %i.su = sub nsw i32 8, %i.st
  %i.sv = lshr i32 %i.qm, %i.su
  %i.sw = load i8, ptr %i.ef, align 4
  %i.sx = zext nneg i8 %i.sw to i32
  %i.sy = shl i32 %i.sv, %i.sx
  %i.sz = load i8, ptr %i.eg, align 1
  %i.ta = zext i8 %i.sz to i32
  %i.tb = sub nsw i32 8, %i.ta
  %i.tc = lshr i32 %i.qu, %i.tb
  %i.td = load i8, ptr %i.eh, align 1
  %i.te = zext nneg i8 %i.td to i32
  %i.tf = shl i32 %i.tc, %i.te
  %i.tg = or i32 %i.tf, %i.sy
  %i.th = load i8, ptr %i.ei, align 2
  %i.ti = zext i8 %i.th to i32
  %i.tj = sub nsw i32 8, %i.ti
  %i.tk = lshr i32 %i.rc, %i.tj
  %i.tl = load i8, ptr %i.ej, align 2
  %i.tm = zext nneg i8 %i.tl to i32
  %i.tn = shl i32 %i.tk, %i.tm
  %i.to = or i32 %i.tg, %i.tn
  %i.tp = load i8, ptr %i.ek, align 1
  %i.tq = zext i8 %i.tp to i32
  %i.tr = sub nsw i32 8, %i.tq
  %i.ts = lshr i32 %i.rk, %i.tr
  %i.tt = load i8, ptr %i.el, align 1
  %i.tu = zext nneg i8 %i.tt to i32
  %i.tv = shl i32 %i.ts, %i.tu
  %i.tw = or i32 %i.to, %i.tv
  %i.tx = trunc i32 %i.tw to i16
  store i16 %i.tx, ptr %.0123185, align 2
  br label %WriteFloatPixel.exit

bb.ch:                                            ; preds = %bb.ce
  %i.ty = load i8, ptr %i.ef, align 4
  %i.tz = lshr i8 %i.ty, 3
  %i.ua = zext nneg i8 %i.tz to i64
  %i.ub = getelementptr inbounds nuw i8, ptr %.0123185, i64 %i.ua
  store i8 %i.ql, ptr %i.ub, align 1
  %i.uc = load i8, ptr %i.eh, align 1
  %i.ud = lshr i8 %i.uc, 3
  %i.ue = zext nneg i8 %i.ud to i64
  %i.uf = getelementptr inbounds nuw i8, ptr %.0123185, i64 %i.ue
  store i8 %i.qt, ptr %i.uf, align 1
  %i.ug = load i8, ptr %i.ej, align 2
  %i.uh = lshr i8 %i.ug, 3
  %i.ui = zext nneg i8 %i.uh to i64
  %i.uj = getelementptr inbounds nuw i8, ptr %.0123185, i64 %i.ui
  store i8 %i.rb, ptr %i.uj, align 1
  br label %WriteFloatPixel.exit

bb.ci:                                            ; preds = %bb.ce
  %i.uk = load i8, ptr %i.ee, align 4
  %i.ul = zext i8 %i.uk to i32
  %i.um = sub nsw i32 8, %i.ul
  %i.un = lshr i32 %i.qm, %i.um
  %i.uo = load i8, ptr %i.ef, align 4
  %i.up = zext nneg i8 %i.uo to i32
  %i.uq = shl i32 %i.un, %i.up
  %i.ur = load i8, ptr %i.eg, align 1
  %i.us = zext i8 %i.ur to i32
  %i.ut = sub nsw i32 8, %i.us
  %i.uu = lshr i32 %i.qu, %i.ut
  %i.uv = load i8, ptr %i.eh, align 1
  %i.uw = zext nneg i8 %i.uv to i32
  %i.ux = shl i32 %i.uu, %i.uw
  %i.uy = or i32 %i.ux, %i.uq
  %i.uz = load i8, ptr %i.ei, align 2
  %i.va = zext i8 %i.uz to i32
  %i.vb = sub nsw i32 8, %i.va
  %i.vc = lshr i32 %i.rc, %i.vb
  %i.vd = load i8, ptr %i.ej, align 2
  %i.ve = zext nneg i8 %i.vd to i32
  %i.vf = shl i32 %i.vc, %i.ve
  %i.vg = or i32 %i.uy, %i.vf
  %i.vh = load i8, ptr %i.ek, align 1
  %i.vi = zext i8 %i.vh to i32
  %i.vj = sub nsw i32 8, %i.vi
  %i.vk = lshr i32 %i.rk, %i.vj
  %i.vl = load i8, ptr %i.el, align 1
  %i.vm = zext nneg i8 %i.vl to i32
  %i.vn = shl i32 %i.vk, %i.vm
  %i.vo = or i32 %i.vg, %i.vn
  store i32 %i.vo, ptr %.0123185, align 4
  br label %WriteFloatPixel.exit

bb.cj:                                            ; preds = %bb.bk
  %i.vp = load i32, ptr %i.v, align 4
  %i.vq = add i32 %i.vp, -370614276               ; 2 uses
  %i.vr = call i32 @llvm.fshl.i32(i32 %i.vq, i32 %i.vq, i32 11)
  switch i32 %i.vr, label %bb.dc [
    i32 0, label %bb.ck
    i32 1, label %bb.cl
    i32 2, label %bb.ct
    i32 3, label %bb.cu
  ]

bb.ck:                                            ; preds = %bb.cj
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.0227.i = phi float [ 1.000000e+00, %bb.ck ], [ %i.li, %bb.cj ] ; 3 uses
  %i.vs = fcmp olt float %.0.i165, 0.000000e+00
  br i1 %i.vs, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.vt = fcmp ogt float %.0.i165, 1.000000e+00
  %i.vu = select i1 %i.vt, float 1.000000e+00, float %.0.i165
  %i.vv = fmul float %i.vu, 1.023000e+03
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.vw = phi float [ %i.vv, %bb.cm ], [ 0.000000e+00, %bb.cl ] ; 2 uses
  %i.vx = fcmp olt float %.0225.i, 0.000000e+00
  br i1 %i.vx, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.vy = fcmp ogt float %.0225.i, 1.000000e+00
  %i.vz = select i1 %i.vy, float 1.000000e+00, float %.0225.i
  %i.wa = fmul float %i.vz, 1.023000e+03
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.wb = phi float [ %i.wa, %bb.co ], [ 0.000000e+00, %bb.cn ] ; 2 uses
  %i.wc = fcmp olt float %.0226.i, 0.000000e+00
  br i1 %i.wc, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.wd = fcmp ogt float %.0226.i, 1.000000e+00
  %i.we = select i1 %i.wd, float 1.000000e+00, float %.0226.i
  %i.wf = fmul float %i.we, 1.023000e+03
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.wg = phi float [ %i.wf, %bb.cq ], [ 0.000000e+00, %bb.cp ] ; 2 uses
  %i.wh = fcmp olt float %.0227.i, 0.000000e+00
  br i1 %i.wh, label %.sink.split.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.wi = fcmp ogt float %.0227.i, 1.000000e+00
  %i.wj = select i1 %i.wi, float 1.000000e+00, float %.0227.i
  %i.wk = fmul float %i.wj, 3.000000e+00
  br label %.sink.split.i

bb.ct:                                            ; preds = %bb.cj
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cj
  %.1.i = phi float [ 1.000000e+00, %bb.ct ], [ %i.li, %bb.cj ] ; 3 uses
  %i.wl = fcmp olt float %.0.i165, 0.000000e+00
  br i1 %i.wl, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.wm = fcmp ogt float %.0.i165, 1.000000e+00
  %i.wn = select i1 %i.wm, float 1.000000e+00, float %.0.i165
  %i.wo = fmul float %i.wn, 1.023000e+03
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.wp = phi float [ %i.wo, %bb.cv ], [ 0.000000e+00, %bb.cu ] ; 2 uses
  %i.wq = fcmp olt float %.0225.i, 0.000000e+00
  br i1 %i.wq, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.wr = fcmp ogt float %.0225.i, 1.000000e+00
  %i.ws = select i1 %i.wr, float 1.000000e+00, float %.0225.i
  %i.wt = fmul float %i.ws, 1.023000e+03
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.wu = phi float [ %i.wt, %bb.cx ], [ 0.000000e+00, %bb.cw ] ; 2 uses
  %i.wv = fcmp olt float %.0226.i, 0.000000e+00
  br i1 %i.wv, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ww = fcmp ogt float %.0226.i, 1.000000e+00
  %i.wx = select i1 %i.ww, float 1.000000e+00, float %.0226.i
  %i.wy = fmul float %i.wx, 1.023000e+03
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.wz = phi float [ %i.wy, %bb.cz ], [ 0.000000e+00, %bb.cy ] ; 2 uses
  %i.xa = fcmp olt float %.1.i, 0.000000e+00
  br i1 %i.xa, label %.sink.split.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.xb = fcmp ogt float %.1.i, 1.000000e+00
  %i.xc = select i1 %i.xb, float 1.000000e+00, float %.1.i
  %i.xd = fmul float %i.xc, 3.000000e+00
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.db, %bb.da, %bb.cs, %bb.cr
  %.sink274.i = phi float [ 0.000000e+00, %bb.cr ], [ %i.wk, %bb.cs ], [ %i.xd, %bb.db ], [ 0.000000e+00, %bb.da ]
  %.sink271.i = phi float [ %i.vw, %bb.cr ], [ %i.vw, %bb.cs ], [ %i.wz, %bb.db ], [ %i.wz, %bb.da ]
  %.sink.i166 = phi float [ %i.wb, %bb.cr ], [ %i.wb, %bb.cs ], [ %i.wu, %bb.db ], [ %i.wu, %bb.da ]
  %.sink263.i = phi float [ %i.wg, %bb.cr ], [ %i.wg, %bb.cs ], [ %i.wp, %bb.db ], [ %i.wp, %bb.da ]
  %i.xe = call float @SDL_roundf_REAL(float noundef %.sink274.i) #4
  %1 = fptoui float %i.xe to i32
  %2 = shl i32 %1, 30
  %i.xf = call float @SDL_roundf_REAL(float noundef %.sink271.i) #4
  %3 = fptoui float %i.xf to i32
  %4 = shl i32 %3, 20
  %5 = or i32 %4, %2
  %6 = call float @SDL_roundf_REAL(float noundef %.sink.i166) #4
  %7 = fptoui float %6 to i32
  %8 = shl i32 %7, 10
  %9 = or i32 %5, %8
  %10 = call float @SDL_roundf_REAL(float noundef %.sink263.i) #4
  %11 = fptoui float %10 to i32
  %12 = or i32 %9, %11
  br label %bb.dc

bb.dc:                                            ; preds = %.sink.split.i, %bb.cj
  %.0228.i = phi i32 [ 0, %bb.cj ], [ %12, %.sink.split.i ]
  store i32 %.0228.i, ptr %.0123185, align 4
  br label %WriteFloatPixel.exit

bb.dd:                                            ; preds = %bb.bk
  %i.xg = load i32, ptr %i.v, align 4             ; 2 uses
  %i.xh = lshr i32 %i.xg, 20
  %i.xi = and i32 %i.xh, 15
  switch i32 %i.xi, label %bb.dj [
    i32 1, label %bb.dk
    i32 2, label %bb.de
    i32 3, label %bb.df
    i32 4, label %bb.dg
    i32 5, label %bb.dh
    i32 6, label %bb.di
  ]

bb.de:                                            ; preds = %bb.dd
  br label %bb.dk

bb.df:                                            ; preds = %bb.dd
  br label %bb.dk

bb.dg:                                            ; preds = %bb.dd
  br label %bb.dk

bb.dh:                                            ; preds = %bb.dd
  br label %bb.dk

bb.di:                                            ; preds = %bb.dd
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dd
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd
  %.sroa.38.0.i = phi float [ 0.000000e+00, %bb.dj ], [ %.0.i165, %bb.di ], [ %i.li, %bb.de ], [ %.0226.i, %bb.df ], [ 1.000000e+00, %bb.dg ], [ %i.li, %bb.dh ], [ 1.000000e+00, %bb.dd ] ; 6 uses
  %.sroa.26.0.i = phi float [ 0.000000e+00, %bb.dj ], [ %.0225.i, %bb.di ], [ %.0226.i, %bb.de ], [ %.0225.i, %bb.df ], [ %.0.i165, %bb.dg ], [ %.0.i165, %bb.dh ], [ %.0226.i, %bb.dd ] ; 6 uses
  %.sroa.14.0.i = phi float [ 0.000000e+00, %bb.dj ], [ %.0226.i, %bb.di ], [ %.0225.i, %bb.de ], [ %.0.i165, %bb.df ], [ %.0225.i, %bb.dg ], [ %.0225.i, %bb.dh ], [ %.0225.i, %bb.dd ] ; 6 uses
  %.sroa.0.0.i = phi float [ 0.000000e+00, %bb.dj ], [ %i.li, %bb.di ], [ %.0.i165, %bb.de ], [ %i.li, %bb.df ], [ %.0226.i, %bb.dg ], [ %.0226.i, %bb.dh ], [ %.0.i165, %bb.dd ] ; 6 uses
  %i.xj = lshr i32 %i.xg, 24
  %i.xk = and i32 %i.xj, 15
  switch i32 %i.xk, label %WriteFloatPixel.exit [
    i32 8, label %bb.dl
    i32 10, label %bb.dv
    i32 11, label %bb.ft
  ]

bb.dl:                                            ; preds = %bb.dk
  %i.xl = fcmp olt float %.sroa.0.0.i, 0.000000e+00
  br i1 %i.xl, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.xm = fcmp ogt float %.sroa.0.0.i, 1.000000e+00
  %i.xn = select i1 %i.xm, float 1.000000e+00, float %.sroa.0.0.i
  %i.xo = fmul float %i.xn, 6.553500e+04
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.xp = phi float [ %i.xo, %bb.dm ], [ 0.000000e+00, %bb.dl ]
  %i.xq = call float @SDL_roundf_REAL(float noundef %i.xp) #4
  %i.xr = fptoui float %i.xq to i16
  store i16 %i.xr, ptr %.0123185, align 2
  %i.xs = fcmp olt float %.sroa.14.0.i, 0.000000e+00
  br i1 %i.xs, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.xt = fcmp ogt float %.sroa.14.0.i, 1.000000e+00
  %i.xu = select i1 %i.xt, float 1.000000e+00, float %.sroa.14.0.i
  %i.xv = fmul float %i.xu, 6.553500e+04
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.xw = phi float [ %i.xv, %bb.do ], [ 0.000000e+00, %bb.dn ]
  %i.xx = call float @SDL_roundf_REAL(float noundef %i.xw) #4
  %i.xy = fptoui float %i.xx to i16
  %i.xz = getelementptr inbounds nuw i8, ptr %.0123185, i64 2
  store i16 %i.xy, ptr %i.xz, align 2
  %i.ya = fcmp olt float %.sroa.26.0.i, 0.000000e+00
  br i1 %i.ya, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.yb = fcmp ogt float %.sroa.26.0.i, 1.000000e+00
  %i.yc = select i1 %i.yb, float 1.000000e+00, float %.sroa.26.0.i
  %i.yd = fmul float %i.yc, 6.553500e+04
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.ye = phi float [ %i.yd, %bb.dq ], [ 0.000000e+00, %bb.dp ]
  %i.yf = call float @SDL_roundf_REAL(float noundef %i.ye) #4
  %i.yg = fptoui float %i.yf to i16
  %i.yh = getelementptr inbounds nuw i8, ptr %.0123185, i64 4
  store i16 %i.yg, ptr %i.yh, align 2
  %i.yi = load i8, ptr %i.ac, align 1
  %i.yj = icmp eq i8 %i.yi, 8
  br i1 %i.yj, label %bb.ds, label %WriteFloatPixel.exit

bb.ds:                                            ; preds = %bb.dr
  %i.yk = fcmp olt float %.sroa.38.0.i, 0.000000e+00
  br i1 %i.yk, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.yl = fcmp ogt float %.sroa.38.0.i, 1.000000e+00
  %i.ym = select i1 %i.yl, float 1.000000e+00, float %.sroa.38.0.i
  %i.yn = fmul float %i.ym, 6.553500e+04
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.yo = phi float [ %i.yn, %bb.dt ], [ 0.000000e+00, %bb.ds ]
  %i.yp = call float @SDL_roundf_REAL(float noundef %i.yo) #4
  %i.yq = fptoui float %i.yp to i16
  %i.yr = getelementptr inbounds nuw i8, ptr %.0123185, i64 6
  store i16 %i.yq, ptr %i.yr, align 2
  br label %WriteFloatPixel.exit

bb.dv:                                            ; preds = %bb.dk
  %i.ys = bitcast float %.sroa.0.0.i to i32       ; 6 uses
  %i.yt = lshr i32 %i.ys, 16                      ; 5 uses
  %i.yu = and i32 %i.ys, 2139095040               ; 2 uses
  %i.yv = icmp eq i32 %i.yu, 2139095040
  br i1 %i.yv, label %bb.dw, label %bb.dz

bb.dw:                                            ; preds = %bb.dv
  %i.yw = call float @llvm.fabs.f32(float %.sroa.0.0.i)
  %i.yx = fcmp oeq float %i.yw, +inf
  br i1 %i.yx, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.yy = trunc nuw i32 %i.yt to i16
  %i.yz = and i16 %i.yy, -1024
  br label %float_to_half.exit.i

bb.dy:                                            ; preds = %bb.dw
  %i.za = lshr i32 %i.ys, 13
  %i.zb = and i32 %i.za, 511
  %i.zc = and i32 %i.yt, 32768
  %i.zd = or disjoint i32 %i.zb, %i.zc
  %i.ze = trunc nuw i32 %i.zd to i16
  %i.zf = or disjoint i16 %i.ze, 32256
  br label %float_to_half.exit.i

bb.dz:                                            ; preds = %bb.dv
  %i.zg = trunc nuw i32 %i.yt to i16
  %i.zh = and i16 %i.zg, -32768                   ; 2 uses
  %i.zi = icmp samesign ugt i32 %i.yu, 855638015
  br i1 %i.zi, label %bb.ea, label %float_to_half.exit.i

bb.ea:                                            ; preds = %bb.dz
  %i.zj = lshr i32 %i.ys, 23                      ; 2 uses
  %i.zk = and i32 %i.zj, 255                      ; 4 uses
  %i.zl = icmp samesign ugt i32 %i.zk, 142
  br i1 %i.zl, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.zm = or disjoint i16 %i.zh, 31744
  br label %float_to_half.exit.i

bb.ec:                                            ; preds = %bb.ea
  %i.zn = and i32 %i.ys, 8388607
  %i.zo = or disjoint i32 %i.zn, 8388608          ; 3 uses
  %i.zp = icmp samesign ult i32 %i.zk, 113
  br i1 %i.zp, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.zq = sub nuw nsw i32 126, %i.zk
  %i.zr = lshr i32 %i.zo, %i.zq
  %i.zs = and i32 %i.yt, 32768
  %i.zt = or i32 %i.zr, %i.zs
  %i.zu = add nsw i32 %i.zk, -94
  %i.zv = shl i32 %i.zo, %i.zu
  br label %bb.ef

bb.ee:                                            ; preds = %bb.ec
  %i.zw = lshr i32 %i.zo, 13
  %i.zx = and i32 %i.yt, 32768
  %i.zy = shl i32 %i.ys, 19
  %i.zz = shl nuw nsw i32 %i.zj, 10
  %i.aaa = add nuw nsw i32 %i.zz, 15360
  %i.aab = add nuw nsw i32 %i.aaa, %i.zx
  %i.aac = add nuw nsw i32 %i.aab, %i.zw
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %.028.in.i.i = phi i32 [ %i.zt, %bb.ed ], [ %i.aac, %bb.ee ] ; 2 uses
  %.0.i.i = phi i32 [ %i.zv, %bb.ed ], [ %i.zy, %bb.ee ] ; 2 uses
  %.028.i.i = trunc i32 %.028.in.i.i to i16       ; 2 uses
  %i.aad = icmp ugt i32 %.0.i.i, -2147483648
  br i1 %i.aad, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.aae = icmp ne i32 %.0.i.i, -2147483648
  %i.aaf = and i32 %.028.in.i.i, 1
  %.not.i.i = icmp eq i32 %i.aaf, 0
  %or.cond.i.i = select i1 %i.aae, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %float_to_half.exit.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.aag = add nuw i16 %.028.i.i, 1
  br label %float_to_half.exit.i

float_to_half.exit.i:                             ; preds = %bb.eh, %bb.eg, %bb.eb, %bb.dz, %bb.dy, %bb.dx
end_hunk_0
begin_hunk_1_@ReadFloatPixel:bb.a
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.rr = load i16, ptr %i.rq, align 2            ; 2 uses
  %i.rs = zext i16 %i.rr to i32
  %i.rt = shl nuw nsw i32 %i.rs, 13
  %i.ru = and i32 %i.rt, 268427264
  %i.rv = bitcast i32 %i.ru to float
  %i.rw = fmul nnan float %i.rv, f0x77800000      ; 2 uses
  %i.rx = bitcast float %i.rw to i32              ; 2 uses
  %i.ry = fcmp ult float %i.rw, 6.553600e+04
  %i.rz = or i32 %i.rx, 2139095040
  %.sroa.0.0.i209 = select i1 %i.ry, i32 %i.rx, i32 %i.rz
  %.signext.i210 = sext i16 %i.rr to i32
  %i.sa = and i32 %.signext.i210, -2147483648
  %i.sb = or i32 %.sroa.0.0.i209, %i.sa
  %i.sc = bitcast i32 %i.sb to float              ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.se = load i16, ptr %i.sd, align 2            ; 2 uses
  %i.sf = insertelement <2 x i16> poison, i16 %i.rp, i64 0
  %i.sg = insertelement <2 x i16> %i.sf, i16 %i.se, i64 1
  %i.sh = zext <2 x i16> %i.sg to <2 x i32>
  %i.si = shl nuw nsw <2 x i32> %i.sh, splat (i32 13)
  %i.sj = and <2 x i32> %i.si, splat (i32 268427264)
  %i.sk = bitcast <2 x i32> %i.sj to <2 x float>
  %i.sl = fmul nnan <2 x float> %i.sk, splat (float f0x77800000) ; 2 uses
  %i.sm = bitcast <2 x float> %i.sl to <2 x i32>  ; 2 uses
  %i.sn = fcmp ult <2 x float> %i.sl, splat (float 6.553600e+04)
  %i.so = or <2 x i32> %i.sm, splat (i32 2139095040)
  %i.sp = select <2 x i1> %i.sn, <2 x i32> %i.sm, <2 x i32> %i.so
  %.signext.i = sext i16 %i.rp to i32
  %.signext.i212 = sext i16 %i.se to i32
  %i.sq = insertelement <2 x i32> poison, i32 %.signext.i, i64 0
  %i.sr = insertelement <2 x i32> %i.sq, i32 %.signext.i212, i64 1
  %i.ss = and <2 x i32> %i.sr, splat (i32 -2147483648)
  %i.st = or <2 x i32> %i.sp, %i.ss
  %i.su = bitcast <2 x i32> %i.st to <2 x float>  ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.sw = load i8, ptr %i.sv, align 1
  %i.sx = icmp eq i8 %i.sw, 8
  br i1 %i.sx, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.sz = load i16, ptr %i.sy, align 2            ; 2 uses
  %i.ta = zext i16 %i.sz to i32
  %i.tb = shl nuw nsw i32 %i.ta, 13
  %i.tc = and i32 %i.tb, 268427264
  %i.td = bitcast i32 %i.tc to float
  %i.te = fmul nnan float %i.td, f0x77800000      ; 2 uses
  %i.tf = bitcast float %i.te to i32              ; 2 uses
  %i.tg = fcmp ult float %i.te, 6.553600e+04
  %i.th = or i32 %i.tf, 2139095040
  %.sroa.0.0.i213 = select i1 %i.tg, i32 %i.tf, i32 %i.th
  %.signext.i214 = sext i16 %i.sz to i32
  %i.ti = and i32 %.signext.i214, -2147483648
  %i.tj = or i32 %.sroa.0.0.i213, %i.ti
  %i.tk = bitcast i32 %i.tj to float
  br label %bb.aa

bb.y:                                             ; preds = %bb.t
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.tm = load <2 x float>, ptr %0, align 4
  %i.tn = load float, ptr %i.tl, align 4          ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.tp = load float, ptr %i.to, align 4
  %i.tq = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.tr = load i8, ptr %i.tq, align 1
  %i.ts = icmp eq i8 %i.tr, 16
  %i.tt = insertelement <2 x float> %i.tm, float %i.tp, i64 1 ; 2 uses
  br i1 %i.ts, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.tv = load float, ptr %i.tu, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.t, %bb.y, %bb.w, %bb.u, %bb.z, %bb.x, %bb.v
  %.sroa.32.0 = phi float [ 1.000000e+00, %bb.y ], [ %i.ro, %bb.v ], [ 1.000000e+00, %bb.w ], [ %i.tk, %bb.x ], [ 1.000000e+00, %bb.u ], [ %i.tv, %bb.z ], [ 0.000000e+00, %bb.t ] ; 4 uses
  %.sroa.12.0 = phi float [ %i.tn, %bb.y ], [ %i.rb, %bb.v ], [ %i.sc, %bb.w ], [ %i.sc, %bb.x ], [ %i.rb, %bb.u ], [ %i.tn, %bb.z ], [ 0.000000e+00, %bb.t ] ; 3 uses
  %i.tw = phi <2 x float> [ %i.tt, %bb.y ], [ %i.rh, %bb.v ], [ %i.su, %bb.w ], [ %i.su, %bb.x ], [ %i.rh, %bb.u ], [ %i.tt, %bb.z ], [ zeroinitializer, %bb.t ] ; 3 uses
  %i.tx = lshr i32 %i.qu, 20
  %i.ty = and i32 %i.tx, 15
  %i.tz = shufflevector <2 x float> %i.tw, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.ua = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.sroa.12.0, i64 0 ; 4 uses
  switch i32 %i.ty, label %bb.ag [
    i32 1, label %bb.ah
    i32 2, label %bb.ab
    i32 3, label %bb.ac
    i32 4, label %bb.ad
    i32 5, label %bb.ae
    i32 6, label %bb.af
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.ub = insertelement <2 x float> %i.ua, float %.sroa.32.0, i64 1
  br label %bb.ah

bb.ac:                                            ; preds = %bb.aa
  %i.uc = insertelement <2 x float> poison, float %.sroa.32.0, i64 0
  %i.ud = insertelement <2 x float> %i.uc, float %.sroa.12.0, i64 1
  br label %bb.ah

bb.ad:                                            ; preds = %bb.aa
  br label %bb.ah

bb.ae:                                            ; preds = %bb.aa
  %i.ue = insertelement <2 x float> %i.ua, float %.sroa.32.0, i64 1
  br label %bb.ah

bb.af:                                            ; preds = %bb.aa
  %i.uf = insertelement <2 x float> poison, float %.sroa.12.0, i64 0
  %i.ug = insertelement <2 x float> %i.uf, float %.sroa.32.0, i64 1
  br label %bb.ah

bb.ag:                                            ; preds = %bb.aa
  br label %bb.ah

default.unreachable215:                           ; preds = %bb.a
  unreachable

bb.ah:                                            ; preds = %bb.aa, %bb.o, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.p, %bb.q, %bb.r, %bb.s, %bb.n, %bb.h, %bb.b
  %i.uh = phi <2 x float> [ %i.ug, %bb.af ], [ %i.n, %bb.b ], [ %i.gd, %bb.h ], [ %i.oi, %bb.n ], [ %i.tw, %bb.ae ], [ %i.oz, %bb.p ], [ %i.pm, %bb.q ], [ %i.pw, %bb.r ], [ %i.qm, %bb.s ], [ zeroinitializer, %bb.ag ], [ zeroinitializer, %bb.o ], [ %i.tz, %bb.ab ], [ %i.ud, %bb.ac ], [ %i.tw, %bb.ad ], [ %i.tz, %bb.aa ] ; 6 uses
  %i.ui = phi <2 x float> [ %i.tz, %bb.af ], [ %i.t, %bb.b ], [ %i.ge, %bb.h ], [ %i.oj, %bb.n ], [ %i.ue, %bb.ae ], [ %i.pa, %bb.p ], [ %i.pn, %bb.q ], [ %i.qd, %bb.r ], [ %i.qt, %bb.s ], [ zeroinitializer, %bb.ag ], [ zeroinitializer, %bb.o ], [ %i.ub, %bb.ab ], [ %i.tz, %bb.ac ], [ %i.ua, %bb.ad ], [ %i.ua, %bb.aa ] ; 2 uses
  %i.uj = lshr i32 %4, 5
  %i.uk = and i32 %i.uj, 31
  %i.ul = extractelement <2 x float> %i.ui, i64 0 ; 4 uses
  switch i32 %i.uk, label %bb.al [
    i32 13, label %bb.ai
    i32 16, label %bb.aj
    i32 8, label %bb.ak
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.um = extractelement <2 x float> %i.uh, i64 1
  %i.un = tail call float @SDL_sRGBtoLinear(float noundef %i.um) #4
  %i.uo = tail call float @SDL_sRGBtoLinear(float noundef %i.ul) #4
  %i.up = extractelement <2 x float> %i.uh, i64 0
  %i.uq = tail call float @SDL_sRGBtoLinear(float noundef %i.up) #4
  %i.ur = insertelement <2 x float> poison, float %i.uq, i64 0
  %i.us = insertelement <2 x float> %i.ur, float %i.un, i64 1
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.ut = extractelement <2 x float> %i.uh, i64 1
  %i.uu = tail call float @SDL_PQtoNits(float noundef %i.ut) #4
  %i.uv = tail call float @SDL_PQtoNits(float noundef %i.ul) #4
  %i.uw = fdiv float %i.uv, %5
  %i.ux = extractelement <2 x float> %i.uh, i64 0
  %i.uy = tail call float @SDL_PQtoNits(float noundef %i.ux) #4
  %i.uz = insertelement <2 x float> poison, float %i.uy, i64 0
  %i.va = insertelement <2 x float> %i.uz, float %i.uu, i64 1
  %i.vb = insertelement <2 x float> poison, float %5, i64 0
  %i.vc = shufflevector <2 x float> %i.vb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vd = fdiv <2 x float> %i.va, %i.vc
  br label %bb.al

bb.ak:                                            ; preds = %bb.ah
  %i.ve = fdiv float %i.ul, %5
  %i.vf = insertelement <2 x float> poison, float %5, i64 0
  %i.vg = shufflevector <2 x float> %i.vf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vh = fdiv <2 x float> %i.uh, %i.vg
  br label %bb.al

bb.al:                                            ; preds = %bb.ah, %bb.ak, %bb.aj, %bb.ai
  %.1199 = phi float [ %i.ul, %bb.ah ], [ %i.uo, %bb.ai ], [ %i.uw, %bb.aj ], [ %i.ve, %bb.ak ]
  %i.vi = phi <2 x float> [ %i.uh, %bb.ah ], [ %i.us, %bb.ai ], [ %i.vd, %bb.aj ], [ %i.vh, %bb.ak ] ; 2 uses
  %i.vj = extractelement <2 x float> %i.vi, i64 1
  store float %i.vj, ptr %6, align 4
  store float %.1199, ptr %7, align 4
  %i.vk = extractelement <2 x float> %i.vi, i64 0
  store float %i.vk, ptr %8, align 4
  %i.vl = extractelement <2 x float> %i.ui, i64 1
  store float %i.vl, ptr %9, align 4
  ret void
}

declare void @SDL_ConvertColorPrimaries(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare float @SDL_roundf_REAL(float noundef) local_unnamed_addr #2

declare float @SDL_sRGBfromLinear(float noundef) local_unnamed_addr #2

declare float @SDL_sRGBtoLinear(float noundef) local_unnamed_addr #2

declare float @SDL_PQtoNits(float noundef) local_unnamed_addr #2

declare float @SDL_PQfromNits(float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4, !6}
!6 = !{!"llvm.loop.unswitch.partial.disable"}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !4, !6}
end_hunk_1
