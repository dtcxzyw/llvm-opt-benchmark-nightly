inline.NumInlined: 1396
inline.NumDeleted: 524
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6Assimp11X3DImporter13readExtrusionERN4pugi8xml_nodeE:bb.a
  %i.sh = insertelement <2 x float> %i.sg, float %i.rw, i64 1
  %i.si = shufflevector <2 x float> %i.se, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.sj = insertelement <2 x float> %i.si, float %i.rx, i64 1 ; 2 uses
  %i.sk = fsub <2 x float> %i.sh, %i.sj           ; 2 uses
  %i.sl = load <2 x float>, ptr %i.sc, align 4    ; 2 uses
  %i.sm = shufflevector <2 x float> %i.sl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.sn = insertelement <2 x float> %i.sm, float %i.sb, i64 1
  %i.so = fsub <2 x float> %i.sn, %i.sj           ; 2 uses
  %i.sp = fsub <2 x float> %i.sl, %i.se           ; 2 uses
  %i.sq = fneg <2 x float> %i.sp
  %i.sr = fmul <2 x float> %i.sk, %i.sq
  %i.ss = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sf, <2 x float> %i.so, <2 x float> %i.sr)
  %i.st = extractelement <2 x float> %i.so, i64 1
  %i.su = fneg float %i.st
  %i.sv = extractelement <2 x float> %i.sf, i64 0
  %i.sw = fmul float %i.sv, %i.su
  %i.sx = extractelement <2 x float> %i.sk, i64 1
  %i.sy = extractelement <2 x float> %i.sp, i64 0
  %i.sz = call float @llvm.fmuladd.f32(float %i.sx, float %i.sy, float %i.sw)
  br label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i

._crit_edge.i:                                    ; preds = %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.i
  br i1 %.not88.i, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i, label %bb.cs

_ZNK10aiVector3tIfE5EqualERKS0_f.exit.i:          ; preds = %bb.cq, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.i
  %.010292.i = phi i64 [ %i.um, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.i ], [ 2, %bb.cq ] ; 2 uses
  %i.ta = getelementptr [12 x i8], ptr %.val, i64 %.010292.i ; 6 uses
  %i.tb = getelementptr i8, ptr %i.ta, i64 -12
  %i.tc = load float, ptr %i.ta, align 4
  %i.td = load float, ptr %i.tb, align 4
  %i.te = getelementptr inbounds nuw i8, ptr %i.ta, i64 4
  %i.tf = getelementptr i8, ptr %i.ta, i64 -8
  %i.tg = getelementptr i8, ptr %i.ta, i64 -24
  %i.th = load float, ptr %i.tg, align 4
  %i.ti = getelementptr i8, ptr %i.ta, i64 -20
  %i.tj = load <2 x float>, ptr %i.te, align 4    ; 2 uses
  %i.tk = load <2 x float>, ptr %i.tf, align 4    ; 3 uses
  %i.tl = fsub <2 x float> %i.tj, %i.tk           ; 2 uses
  %i.tm = shufflevector <2 x float> %i.tj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.tn = insertelement <2 x float> %i.tm, float %i.tc, i64 1
  %i.to = shufflevector <2 x float> %i.tk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.tp = insertelement <2 x float> %i.to, float %i.td, i64 1 ; 2 uses
  %i.tq = fsub <2 x float> %i.tn, %i.tp           ; 2 uses
  %i.tr = load <2 x float>, ptr %i.ti, align 4    ; 2 uses
  %i.ts = shufflevector <2 x float> %i.tr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.tt = insertelement <2 x float> %i.ts, float %i.th, i64 1
  %i.tu = fsub <2 x float> %i.tt, %i.tp           ; 2 uses
  %i.tv = fsub <2 x float> %i.tr, %i.tk           ; 2 uses
  %i.tw = fneg <2 x float> %i.tv
  %i.tx = fmul <2 x float> %i.tq, %i.tw
  %i.ty = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tl, <2 x float> %i.tu, <2 x float> %i.tx) ; 2 uses
  %i.tz = extractelement <2 x float> %i.tu, i64 1
  %i.ua = fneg float %i.tz
  %i.ub = extractelement <2 x float> %i.tl, i64 0
  %i.uc = fmul float %i.ub, %i.ua
  %i.ud = extractelement <2 x float> %i.tq, i64 1
  %i.ue = extractelement <2 x float> %i.tv, i64 0
  %i.uf = call float @llvm.fmuladd.f32(float %i.ud, float %i.ue, float %i.uc) ; 2 uses
  %i.ug = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ty)
  %i.uh = fcmp ugt <2 x float> %i.ug, splat (float f0x358637BD) ; 2 uses
  %i.ui = extractelement <2 x i1> %i.uh, i64 0
  %i.uj = extractelement <2 x i1> %i.uh, i64 1
  %or.cond.not.not91.i = select i1 %i.ui, i1 true, i1 %i.uj
  %i.uk = call float @llvm.fabs.f32(float %i.uf)
  %i.ul = fcmp ugt float %i.uk, f0x358637BD
  %.not88.i = select i1 %or.cond.not.not91.i, i1 true, i1 %i.ul ; 2 uses
  %i.um = add i64 %.010292.i, 1                   ; 2 uses
  %i.un = icmp ugt i64 %i.um, %i.pr
  %.not104.i = or i1 %i.un, %.not88.i
  br i1 %.not104.i, label %._crit_edge.i, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.i, !llvm.loop !41

bb.cs:                                            ; preds = %._crit_edge.i
  br label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i

bb.ct:                                            ; preds = %bb.cp
  br i1 %i.pt, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  br i1 %i.oz, label %bb.cv, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i

bb.cv:                                            ; preds = %bb.cu
  %i.uo = getelementptr [12 x i8], ptr %.val, i64 %.02241003 ; 4 uses
  %i.up = load float, ptr %.val, align 4
  %i.uq = load float, ptr %i.uo, align 4
  %i.ur = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.us = getelementptr inbounds nuw i8, ptr %i.uo, i64 4
  %i.ut = getelementptr i8, ptr %i.uo, i64 -12
  %i.uu = load float, ptr %i.ut, align 4
  %i.uv = getelementptr i8, ptr %i.uo, i64 -8
  %i.uw = load <2 x float>, ptr %i.ur, align 4    ; 2 uses
  %i.ux = load <2 x float>, ptr %i.us, align 4    ; 3 uses
  %i.uy = fsub <2 x float> %i.uw, %i.ux           ; 2 uses
  %i.uz = shufflevector <2 x float> %i.uw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.va = insertelement <2 x float> %i.uz, float %i.up, i64 1
  %i.vb = shufflevector <2 x float> %i.ux, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.vc = insertelement <2 x float> %i.vb, float %i.uq, i64 1 ; 2 uses
  %i.vd = fsub <2 x float> %i.va, %i.vc           ; 2 uses
  %i.ve = load <2 x float>, ptr %i.uv, align 4    ; 2 uses
  %i.vf = shufflevector <2 x float> %i.ve, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.vg = insertelement <2 x float> %i.vf, float %i.uu, i64 1
  %i.vh = fsub <2 x float> %i.vg, %i.vc           ; 2 uses
  %i.vi = fsub <2 x float> %i.ve, %i.ux           ; 2 uses
  %i.vj = fneg <2 x float> %i.vi
  %i.vk = fmul <2 x float> %i.vd, %i.vj
  %i.vl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uy, <2 x float> %i.vh, <2 x float> %i.vk) ; 2 uses
  %i.vm = extractelement <2 x float> %i.vh, i64 1
  %i.vn = fneg float %i.vm
  %i.vo = extractelement <2 x float> %i.uy, i64 0
  %i.vp = fmul float %i.vo, %i.vn
  %i.vq = extractelement <2 x float> %i.vd, i64 1
  %i.vr = extractelement <2 x float> %i.vi, i64 0
  %i.vs = call float @llvm.fmuladd.f32(float %i.vq, float %i.vr, float %i.vp) ; 2 uses
  %i.vt = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.vl)
  %i.vu = fcmp ole <2 x float> %i.vt, splat (float f0x358637BD) ; 2 uses
  %i.vv = extractelement <2 x i1> %i.vu, i64 0
  %i.vw = extractelement <2 x i1> %i.vu, i64 1
  %or.cond76.not86.i = select i1 %i.vv, i1 %i.vw, i1 false
  %i.vx = call float @llvm.fabs.f32(float %i.vs)
  %i.vy = fcmp ole float %i.vx, f0x358637BD
  %or.cond78.i = select i1 %or.cond76.not86.i, i1 %i.vy, i1 false
  br i1 %or.cond78.i, label %bb.cx, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i

bb.cw:                                            ; preds = %bb.ct
  %i.vz = getelementptr [12 x i8], ptr %.val, i64 %.02241003 ; 6 uses
  %i.wa = getelementptr i8, ptr %i.vz, i64 12
  %i.wb = load float, ptr %i.wa, align 4
  %i.wc = load float, ptr %i.vz, align 4
  %i.wd = getelementptr i8, ptr %i.vz, i64 16
  %i.we = getelementptr inbounds nuw i8, ptr %i.vz, i64 4
  %i.wf = getelementptr i8, ptr %i.vz, i64 -12
  %i.wg = load float, ptr %i.wf, align 4
  %i.wh = getelementptr i8, ptr %i.vz, i64 -8
  %i.wi = load <2 x float>, ptr %i.wd, align 4    ; 2 uses
  %i.wj = load <2 x float>, ptr %i.we, align 4    ; 3 uses
  %i.wk = fsub <2 x float> %i.wi, %i.wj           ; 2 uses
  %i.wl = shufflevector <2 x float> %i.wi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.wm = insertelement <2 x float> %i.wl, float %i.wb, i64 1
  %i.wn = shufflevector <2 x float> %i.wj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.wo = insertelement <2 x float> %i.wn, float %i.wc, i64 1 ; 2 uses
  %i.wp = fsub <2 x float> %i.wm, %i.wo           ; 2 uses
  %i.wq = load <2 x float>, ptr %i.wh, align 4    ; 2 uses
  %i.wr = shufflevector <2 x float> %i.wq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ws = insertelement <2 x float> %i.wr, float %i.wg, i64 1
  %i.wt = fsub <2 x float> %i.ws, %i.wo           ; 2 uses
  %i.wu = fsub <2 x float> %i.wq, %i.wj           ; 2 uses
  %i.wv = fneg <2 x float> %i.wu
  %i.ww = fmul <2 x float> %i.wp, %i.wv
  %i.wx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wk, <2 x float> %i.wt, <2 x float> %i.ww) ; 2 uses
  %i.wy = extractelement <2 x float> %i.wt, i64 1
  %i.wz = fneg float %i.wy
  %i.xa = extractelement <2 x float> %i.wk, i64 0
  %i.xb = fmul float %i.xa, %i.wz
  %i.xc = extractelement <2 x float> %i.wp, i64 1
  %i.xd = extractelement <2 x float> %i.wu, i64 0
  %i.xe = call float @llvm.fmuladd.f32(float %i.xc, float %i.xd, float %i.xb) ; 2 uses
  %i.xf = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.wx)
  %i.xg = fcmp ole <2 x float> %i.xf, splat (float f0x358637BD) ; 2 uses
  %i.xh = extractelement <2 x i1> %i.xg, i64 0
  %i.xi = extractelement <2 x i1> %i.xg, i64 1
  %or.cond80.not84.i = select i1 %i.xh, i1 %i.xi, i1 false
  %i.xj = call float @llvm.fabs.f32(float %i.xe)
  %i.xk = fcmp ole float %i.xj, f0x358637BD
  %or.cond82.i = select i1 %or.cond80.not84.i, i1 %i.xk, i1 false
  br i1 %or.cond82.i, label %bb.cx, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  br label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i

_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i: ; preds = %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.cs, %._crit_edge.i, %bb.cr, %bb.co
  %.sroa.015.1.i = phi <2 x float> [ %.sroa.0790.01001, %bb.cu ], [ %i.ss, %bb.cr ], [ %i.ty, %._crit_edge.i ], [ zeroinitializer, %bb.cs ], [ zeroinitializer, %bb.co ], [ %i.wx, %bb.cw ], [ %i.vl, %bb.cv ], [ %.sroa.0790.01001, %bb.cx ] ; 4 uses
  %.sroa.31.1.i = phi float [ %.sroa.10795.01002, %bb.cu ], [ %i.sz, %bb.cr ], [ %i.uf, %._crit_edge.i ], [ 1.000000e+00, %bb.cs ], [ 1.000000e+00, %bb.co ], [ %i.xe, %bb.cw ], [ %i.vs, %bb.cv ], [ %.sroa.10795.01002, %bb.cx ] ; 3 uses
  %.sroa.015.0.vec.extract27.i = extractelement <2 x float> %.sroa.015.1.i, i64 0
  %.sroa.069.0.vec.extract.i = extractelement <2 x float> %.sroa.0790.01001, i64 0
  %foldExtExtBinop1410 = fmul <2 x float> %.sroa.0790.01001, %.sroa.015.1.i
  %i.xl = extractelement <2 x float> %foldExtExtBinop1410, i64 1
  %i.xm = call float @llvm.fmuladd.f32(float %.sroa.015.0.vec.extract27.i, float %.sroa.069.0.vec.extract.i, float %i.xl)
  %i.xn = call noundef float @llvm.fmuladd.f32(float %.sroa.31.1.i, float %.sroa.10795.01002, float %i.xm)
  %i.xo = fcmp olt float %i.xn, 0.000000e+00      ; 2 uses
  %i.xp = fneg <2 x float> %.sroa.015.1.i
  %i.xq = fneg float %.sroa.31.1.i
  %.sroa.31.2.i = select i1 %i.xo, float %i.xq, float %.sroa.31.1.i ; 4 uses
  %i.xr = select i1 %i.xo, <2 x float> %i.xp, <2 x float> %.sroa.015.1.i ; 5 uses
  %foldExtExtBinop1412 = fmul <2 x float> %i.xr, %i.xr
  %i.xs = extractelement <2 x float> %foldExtExtBinop1412, i64 1
  %i.xt = extractelement <2 x float> %i.xr, i64 0 ; 2 uses
  %i.xu = call float @llvm.fmuladd.f32(float %i.xt, float %i.xt, float %i.xs)
  %i.xv = call noundef float @llvm.fmuladd.f32(float %.sroa.31.2.i, float %.sroa.31.2.i, float %i.xu) ; 2 uses
  %i.xw = fcmp oeq float %i.xv, 0.000000e+00
  br i1 %i.xw, label %bb.cy, label %_ZN10aiVector3tIfEdVEf.exit.i.i371

_ZN10aiVector3tIfEdVEf.exit.i.i371:               ; preds = %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i
  %sqrt.i.i.i372 = call noundef float @llvm.sqrt.f32(float %i.xv)
  %i.xx = fdiv float 1.000000e+00, %sqrt.i.i.i372 ; 2 uses
  %i.xy = insertelement <2 x float> poison, float %i.xx, i64 0
  %i.xz = shufflevector <2 x float> %i.xy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ya = fmul <2 x float> %i.xr, %i.xz
  %i.yb = fmul float %.sroa.31.2.i, %i.xx
  br label %bb.cy

bb.cy:                                            ; preds = %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i, %_ZN10aiVector3tIfEdVEf.exit.i.i371
  %.sroa.015.3.i = phi <2 x float> [ %i.xr, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i ], [ %i.ya, %_ZN10aiVector3tIfEdVEf.exit.i.i371 ] ; 5 uses
  %.sroa.31.3.i = phi float [ %.sroa.31.2.i, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i ], [ %i.yb, %_ZN10aiVector3tIfEdVEf.exit.i.i371 ] ; 6 uses
  %.sroa.0796.4.vec.extract = extractelement <2 x float> %.sroa.0.1.i, i64 1 ; 4 uses
  %.sroa.0790.4.vec.extract = extractelement <2 x float> %.sroa.015.3.i, i64 1 ; 4 uses
  %.sroa.0790.0.vec.extract = extractelement <2 x float> %.sroa.015.3.i, i64 0 ; 4 uses
  %.sroa.0796.0.vec.extract = extractelement <2 x float> %.sroa.0.1.i, i64 0 ; 4 uses
  %20 = shufflevector <2 x float> %.sroa.015.3.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %21 = insertelement <2 x float> %20, float %.sroa.31.3.i, i64 1
  %22 = fneg <2 x float> %21
  %23 = shufflevector <2 x float> %.sroa.0.1.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.yc = insertelement <2 x float> %23, float %.sroa.13.1.i, i64 0
  %i.yd = fmul <2 x float> %i.yc, %22
  %i.ye = shufflevector <2 x float> %.sroa.0.1.i, <2 x float> %.sroa.015.3.i, <2 x i32> <i32 1, i32 2>
  %i.yf = insertelement <2 x float> poison, float %.sroa.31.3.i, i64 0
  %i.yg = insertelement <2 x float> %i.yf, float %.sroa.13.1.i, i64 1
  %i.yh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ye, <2 x float> %i.yg, <2 x float> %i.yd) ; 5 uses
  %i.yi = fneg float %.sroa.0790.0.vec.extract
  %i.yj = fmul float %.sroa.0796.4.vec.extract, %i.yi
  %i.yk = call float @llvm.fmuladd.f32(float %.sroa.0796.0.vec.extract, float %.sroa.0790.4.vec.extract, float %i.yj) ; 4 uses
  %foldExtExtBinop1414 = fmul <2 x float> %i.yh, %i.yh
  %i.yl = extractelement <2 x float> %foldExtExtBinop1414, i64 1
  %i.ym = extractelement <2 x float> %i.yh, i64 0 ; 2 uses
  %i.yn = call float @llvm.fmuladd.f32(float %i.ym, float %i.ym, float %i.yl)
  %i.yo = call noundef float @llvm.fmuladd.f32(float %i.yk, float %i.yk, float %i.yn) ; 2 uses
  %i.yp = fcmp oeq float %i.yo, 0.000000e+00
  br i1 %i.yp, label %bb.cz, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.cy
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.yo)
  %i.yq = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.yr = insertelement <2 x float> poison, float %i.yq, i64 0
  %i.ys = shufflevector <2 x float> %i.yr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yt = fmul <2 x float> %i.yh, %i.ys
  %i.yu = fmul float %i.yk, %i.yq
  br label %bb.cz

bb.cz:                                            ; preds = %_ZN10aiVector3tIfEdVEf.exit.i, %bb.cy
  %.sroa.0752.0 = phi <2 x float> [ %i.yh, %bb.cy ], [ %i.yt, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 2 uses
  %.sroa.9.0 = phi float [ %i.yk, %bb.cy ], [ %i.yu, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 3 uses
  %i.yv = load ptr, ptr %13, align 8
  %.idx = shl i64 %.02241003, 4
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 %.idx ; 3 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 12
  %i.yy = load float, ptr %i.yx, align 4          ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yw, i64 4
  %i.za = load <2 x float>, ptr %i.yw, align 4    ; 3 uses
  %i.zb = load <2 x float>, ptr %i.yz, align 4    ; 4 uses
  %i.zc = shufflevector <2 x float> %i.zb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.zd = call noundef float @cosf(float noundef %i.yy) #20 ; 4 uses
  %i.ze = call noundef float @sinf(float noundef %i.yy) #20 ; 2 uses
  %i.zf = extractelement <2 x float> %i.za, i64 0
  %i.zg = extractelement <2 x float> %i.zb, i64 1
  %i.zh = fmul float %i.zg, %i.ze                 ; 2 uses
  %i.zi = fneg float %i.zh
  %.scalar = fsub float 1.000000e+00, %i.zd
  %i.zj = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %.scalar, i64 3 ; 2 uses
  %i.zk = shufflevector <4 x float> %i.zj, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.zl = fmul <2 x float> %i.za, %i.zk           ; 3 uses
  %i.zm = shufflevector <2 x float> %i.zl, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.zn = extractelement <2 x float> %i.zl, i64 0
  %i.zo = call float @llvm.fmuladd.f32(float %i.zn, float %i.zf, float %i.zd) ; 3 uses
  %i.zp = insertelement <2 x float> poison, float %i.ze, i64 0
  %i.zq = shufflevector <2 x float> %i.zp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zr = fmul <2 x float> %i.za, %i.zq           ; 2 uses
  %i.zs = shufflevector <2 x float> %i.zr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 poison> ; 2 uses
  %i.zt = insertelement <4 x float> %i.zs, float %i.zi, i64 0
  %i.zu = insertelement <4 x float> %i.zt, float %i.zh, i64 2
  %i.zv = insertelement <4 x float> %i.zu, float %i.zd, i64 3
  %i.zw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zm, <4 x float> %i.zc, <4 x float> %i.zv) ; 4 uses
  %i.zx = fneg <2 x float> %i.zr
  %i.zy = shufflevector <2 x float> %i.zl, <2 x float> %i.zb, <4 x i32> <i32 1, i32 0, i32 1, i32 3>
  %i.zz = fmul <4 x float> %i.zy, %i.zj
  %i.aaa = shufflevector <2 x float> %i.zb, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aab = insertelement <4 x float> %i.zs, float %i.zd, i64 3
  %i.aac = shufflevector <2 x float> %i.zx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aad = shufflevector <4 x float> %i.aac, <4 x float> %i.aab, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aae = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zz, <4 x float> %i.aaa, <4 x float> %i.aad) ; 4 uses
  %.sroa.0755.0.vec.extract762 = extractelement <2 x float> %.sroa.0752.0, i64 0 ; 3 uses
  %.sroa.0755.4.vec.extract775 = extractelement <2 x float> %.sroa.0752.0, i64 1 ; 3 uses
  %i.aaf = extractelement <4 x float> %i.zw, i64 0 ; 3 uses
  %i.aag = fmul float %.sroa.0755.4.vec.extract775, %i.aaf
  %i.aah = call float @llvm.fmuladd.f32(float %i.zo, float %.sroa.0755.0.vec.extract762, float %i.aag)
  %i.aai = extractelement <4 x float> %i.zw, i64 1 ; 3 uses
  %i.aaj = call float @llvm.fmuladd.f32(float %i.aai, float %.sroa.9.0, float %i.aah)
  %i.aak = fadd float %i.aaj, 0.000000e+00
  %i.aal = extractelement <4 x float> %i.zw, i64 3 ; 3 uses
  %i.aam = fmul float %.sroa.0755.4.vec.extract775, %i.aal
  %i.aan = extractelement <4 x float> %i.zw, i64 2 ; 3 uses
  %i.aao = call float @llvm.fmuladd.f32(float %i.aan, float %.sroa.0755.0.vec.extract762, float %i.aam)
  %i.aap = extractelement <4 x float> %i.aae, i64 0 ; 3 uses
  %i.aaq = call float @llvm.fmuladd.f32(float %i.aap, float %.sroa.9.0, float %i.aao)
  %i.aar = fadd float %i.aaq, 0.000000e+00
  %i.aas = extractelement <4 x float> %i.aae, i64 2 ; 3 uses
  %i.aat = fmul float %.sroa.0755.4.vec.extract775, %i.aas
  %i.aau = extractelement <4 x float> %i.aae, i64 1 ; 3 uses
  %i.aav = call float @llvm.fmuladd.f32(float %i.aau, float %.sroa.0755.0.vec.extract762, float %i.aat)
  %i.aaw = extractelement <4 x float> %i.aae, i64 3 ; 3 uses
  %i.aax = call float @llvm.fmuladd.f32(float %i.aaw, float %.sroa.9.0, float %i.aav)
  %i.aay = fadd float %i.aax, 0.000000e+00
  %i.aaz = load ptr, ptr %16, align 8
  %i.aba = getelementptr inbounds nuw [36 x i8], ptr %i.aaz, i64 %.02241003
  store float %i.aak, ptr %i.aba, align 4
  %i.abb = load ptr, ptr %16, align 8
  %i.abc = getelementptr inbounds nuw [36 x i8], ptr %i.abb, i64 %.02241003
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 4
  store float %i.aar, ptr %i.abd, align 4
  %i.abe = load ptr, ptr %16, align 8
  %i.abf = getelementptr inbounds nuw [36 x i8], ptr %i.abe, i64 %.02241003
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 8
  store float %i.aay, ptr %i.abg, align 4
  %i.abh = fmul float %.sroa.0796.4.vec.extract, %i.aaf
  %i.abi = call float @llvm.fmuladd.f32(float %i.zo, float %.sroa.0796.0.vec.extract, float %i.abh)
  %i.abj = call float @llvm.fmuladd.f32(float %i.aai, float %.sroa.13.1.i, float %i.abi)
  %i.abk = fadd float %i.abj, 0.000000e+00
  %i.abl = fmul float %.sroa.0796.4.vec.extract, %i.aal
  %i.abm = call float @llvm.fmuladd.f32(float %i.aan, float %.sroa.0796.0.vec.extract, float %i.abl)
  %i.abn = call float @llvm.fmuladd.f32(float %i.aap, float %.sroa.13.1.i, float %i.abm)
  %i.abo = fadd float %i.abn, 0.000000e+00
  %i.abp = fmul float %.sroa.0796.4.vec.extract, %i.aas
  %i.abq = call float @llvm.fmuladd.f32(float %i.aau, float %.sroa.0796.0.vec.extract, float %i.abp)
  %i.abr = call float @llvm.fmuladd.f32(float %i.aaw, float %.sroa.13.1.i, float %i.abq)
  %i.abs = fadd float %i.abr, 0.000000e+00
  %i.abt = load ptr, ptr %16, align 8
  %i.abu = getelementptr inbounds nuw [36 x i8], ptr %i.abt, i64 %.02241003
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 12
  store float %i.abk, ptr %i.abv, align 4
  %i.abw = load ptr, ptr %16, align 8
  %i.abx = getelementptr inbounds nuw [36 x i8], ptr %i.abw, i64 %.02241003
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 16
  store float %i.abo, ptr %i.aby, align 4
  %i.abz = load ptr, ptr %16, align 8
  %i.aca = getelementptr inbounds nuw [36 x i8], ptr %i.abz, i64 %.02241003
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 20
  store float %i.abs, ptr %i.acb, align 4
  %i.acc = fmul float %.sroa.0790.4.vec.extract, %i.aaf
  %i.acd = call float @llvm.fmuladd.f32(float %i.zo, float %.sroa.0790.0.vec.extract, float %i.acc)
  %i.ace = call float @llvm.fmuladd.f32(float %i.aai, float %.sroa.31.3.i, float %i.acd)
  %i.acf = fadd float %i.ace, 0.000000e+00
  %i.acg = fmul float %.sroa.0790.4.vec.extract, %i.aal
  %i.ach = call float @llvm.fmuladd.f32(float %i.aan, float %.sroa.0790.0.vec.extract, float %i.acg)
  %i.aci = call float @llvm.fmuladd.f32(float %i.aap, float %.sroa.31.3.i, float %i.ach)
  %i.acj = fadd float %i.aci, 0.000000e+00
  %i.ack = fmul float %.sroa.0790.4.vec.extract, %i.aas
  %i.acl = call float @llvm.fmuladd.f32(float %i.aau, float %.sroa.0790.0.vec.extract, float %i.ack)
  %i.acm = call float @llvm.fmuladd.f32(float %i.aaw, float %.sroa.31.3.i, float %i.acl)
  %i.acn = fadd float %i.acm, 0.000000e+00
  %i.aco = load ptr, ptr %16, align 8
  %i.acp = getelementptr inbounds nuw [36 x i8], ptr %i.aco, i64 %.02241003
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 24
  store float %i.acf, ptr %i.acq, align 4
  %i.acr = load ptr, ptr %16, align 8
  %i.acs = getelementptr inbounds nuw [36 x i8], ptr %i.acr, i64 %.02241003
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 28
  store float %i.acj, ptr %i.act, align 4
  %i.acu = load ptr, ptr %16, align 8
  %i.acv = getelementptr inbounds nuw [36 x i8], ptr %i.acu, i64 %.02241003
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 32
  store float %i.acn, ptr %i.acw, align 4
  %i.acx = add nuw i64 %.02241003, 1              ; 2 uses
  %exitcond1054.not = icmp eq i64 %i.acx, %.pre-phi1139
  br i1 %exitcond1054.not, label %._crit_edge, label %.lr.ph1004, !llvm.loop !42

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EEC2EmRKS2_.exit.thread.i: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %.noexc369
  %.sink.i = phi ptr [ %i.pl, %.noexc369 ], [ null, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ]
  %.0.lcssa.i.i.i.i.i367 = phi ptr [ %scevgep.i.i.i.i.i366, %.noexc369 ], [ null, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ]
  %i.acy = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.acz = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %.sink.i, ptr %i.acz, align 8
  store ptr %.0.lcssa.i.i.i.i.i367, ptr %i.acy, align 8
  %i.ada = load ptr, ptr %i.av, align 8
  %i.adb = load ptr, ptr %15, align 8
  %i.adc = ptrtoint ptr %i.ada to i64
  %i.add = ptrtoint ptr %i.adb to i64
  %i.ade = sub i64 %i.adc, %i.add
  %i.adf = sdiv exact i64 %i.ade, 12              ; 5 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 6 uses
  %i.adh = load ptr, ptr %i.adg, align 8          ; 7 uses
  %i.adi = load ptr, ptr %17, align 8             ; 10 uses
  %i.adj = ptrtoint ptr %i.adh to i64             ; 2 uses
  %i.adk = ptrtoint ptr %i.adi to i64             ; 2 uses
  %i.adl = sub i64 %i.adj, %i.adk                 ; 2 uses
  %i.adm = sdiv exact i64 %i.adl, 24              ; 7 uses
  %i.adn = icmp ugt i64 %i.adf, %i.adm
  br i1 %i.adn, label %bb.da, label %bb.de

bb.da:                                            ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EEC2EmRKS2_.exit.thread.i
  %i.ado = sub nuw nsw i64 %i.adf, %i.adm         ; 5 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.adq = load ptr, ptr %i.adp, align 8
  %i.adr = ptrtoint ptr %i.adq to i64             ; 2 uses
  %i.ads = sub i64 %i.adr, %i.adj
  %i.adt = sdiv exact i64 %i.ads, 24              ; 2 uses
  %i.adu = icmp ult i64 %i.adm, 384307168202282326
  call void @llvm.assume(i1 %i.adu)
  %i.adv = sub nuw nsw i64 384307168202282325, %i.adm
  %i.adw = icmp ule i64 %i.adt, %i.adv
  call void @llvm.assume(i1 %i.adw)
  %.not28.i667 = icmp ult i64 %i.adt, %i.ado
  br i1 %.not28.i667, label %bb.db, label %_ZSt27__uninitialized_default_n_aIPSt6vectorI10aiVector3tIfESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPSt6vectorI10aiVector3tIfESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit.i: ; preds = %bb.da
  %i.adx = mul nuw nsw i64 %i.ado, 24             ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.adh, i8 0, i64 %i.adx, i1 false)
  %scevgep.i.i.i.i668 = getelementptr i8, ptr %i.adh, i64 %i.adx
  store ptr %scevgep.i.i.i.i668, ptr %i.adg, align 8
  br label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit

bb.db:                                            ; preds = %bb.da
  %i.ady = icmp ugt i64 %i.adf, 384307168202282325
  br i1 %i.ady, label %bb.dc, label %_ZNKSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.dc:                                            ; preds = %bb.db
end_hunk_0
