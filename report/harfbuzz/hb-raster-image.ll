Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-raster-image?download=true
inline.NumInlined: 282
inline.NumDeleted: 140
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN17hb_raster_image_t14composite_fromEPKS_25hb_paint_composite_mode_t:bb.a
bb.ai:                                            ; preds = %bb.b
  %i.tw = and i32 %i.t, 255
  %i.tx = lshr i32 %i.t, 8
  %i.ty = lshr i32 %i.t, 16
  %i.tz = uitofp nneg i32 %i.w to float
  %i.ua = and i32 %i.v, 255
  %i.ub = lshr i32 %i.v, 8
  %i.uc = lshr i32 %i.v, 16
  %i.ud = uitofp nneg i32 %i.x to float
  %i.ue = insertelement <2 x float> poison, float %i.tz, i64 0
  %i.uf = insertelement <2 x float> %i.ue, float %i.ud, i64 1
  %i.ug = fdiv <2 x float> %i.uf, splat (float 2.550000e+02) ; 9 uses
  %i.uh = shufflevector <2 x float> %i.ug, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ui = insertelement <4 x i32> poison, i32 %i.ty, i64 0
  %i.uj = insertelement <4 x i32> %i.ui, i32 %i.uc, i64 1
  %i.uk = insertelement <4 x i32> %i.uj, i32 %i.tx, i64 2
  %i.ul = insertelement <4 x i32> %i.uk, i32 %i.ub, i64 3
  %i.um = and <4 x i32> %i.ul, splat (i32 255)
  %i.un = uitofp nneg <4 x i32> %i.um to <4 x float> ; 2 uses
  %i.uo = shufflevector <4 x float> %i.un, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.up = fdiv <2 x float> %i.uo, splat (float 2.550000e+02)
  %i.uq = fdiv <2 x float> %i.up, %i.uh
  %i.ur = shufflevector <4 x float> %i.un, <4 x float> poison, <2 x i32> <i32 3, i32 1>
  %i.us = fdiv <2 x float> %i.ur, splat (float 2.550000e+02)
  %i.ut = shufflevector <2 x float> %i.ug, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.uu = fdiv <2 x float> %i.us, %i.ut
  %i.uv = uitofp nneg i32 %i.ua to float
  %i.uw = uitofp nneg i32 %i.tw to float
  %i.ux = insertelement <2 x float> poison, float %i.uw, i64 0
  %i.uy = insertelement <2 x float> %i.ux, float %i.uv, i64 1
  %i.uz = fdiv <2 x float> %i.uy, splat (float 2.550000e+02)
  %i.va = fcmp ogt <2 x float> %i.ug, zeroinitializer ; 3 uses
  %i.vb = shufflevector <2 x i1> %i.va, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.vc = select <2 x i1> %i.vb, <2 x float> %i.uq, <2 x float> zeroinitializer ; 5 uses
  %i.vd = fdiv <2 x float> %i.uz, %i.ug
  %i.ve = shufflevector <2 x i1> %i.va, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.vf = select <2 x i1> %i.ve, <2 x float> %i.uu, <2 x float> zeroinitializer ; 4 uses
  %i.vg = select <2 x i1> %i.va, <2 x float> %i.vd, <2 x float> zeroinitializer ; 5 uses
  %i.vh = extractelement <2 x float> %i.vf, i64 1 ; 2 uses
  %i.vi = fcmp ugt float %i.vh, 5.000000e-01
  br i1 %i.vi, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.vj = extractelement <2 x float> %i.vc, i64 1
  %i.vk = fmul float %i.vj, 2.000000e+00
  %i.vl = fmul float %i.vk, %i.vh
  br label %_ZL13blend_overlayff.exit188.i

bb.ak:                                            ; preds = %bb.ai
  %i.vm = shufflevector <2 x float> %i.vc, <2 x float> %i.vf, <2 x i32> <i32 1, i32 3>
  %i.vn = fsub <2 x float> splat (float 1.000000e+00), %i.vm ; 2 uses
  %i.vo = extractelement <2 x float> %i.vn, i64 0
  %i.vp = fmul float %i.vo, -2.000000e+00
  %i.vq = extractelement <2 x float> %i.vn, i64 1
  %i.vr = tail call float @llvm.fmuladd.f32(float %i.vp, float %i.vq, float 1.000000e+00)
  br label %_ZL13blend_overlayff.exit188.i

_ZL13blend_overlayff.exit188.i:                   ; preds = %bb.ak, %bb.aj
  %i.vs = phi float [ %i.vl, %bb.aj ], [ %i.vr, %bb.ak ]
  %i.vt = extractelement <2 x float> %i.vf, i64 0 ; 3 uses
  %i.vu = fcmp ugt float %i.vt, 5.000000e-01
  br i1 %i.vu, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZL13blend_overlayff.exit188.i
  %i.vv = extractelement <2 x float> %i.vc, i64 0
  %i.vw = fmul float %i.vv, 2.000000e+00
  %i.vx = fmul float %i.vw, %i.vt
  br label %_ZL13blend_overlayff.exit187.i

bb.am:                                            ; preds = %_ZL13blend_overlayff.exit188.i
  %i.vy = extractelement <2 x float> %i.vc, i64 0
  %i.vz = fsub float 1.000000e+00, %i.vy
  %i.wa = fsub float 1.000000e+00, %i.vt
  %i.wb = fmul float %i.vz, -2.000000e+00
  %i.wc = tail call float @llvm.fmuladd.f32(float %i.wb, float %i.wa, float 1.000000e+00)
  br label %_ZL13blend_overlayff.exit187.i

_ZL13blend_overlayff.exit187.i:                   ; preds = %bb.am, %bb.al
  %i.wd = phi float [ %i.vx, %bb.al ], [ %i.wc, %bb.am ]
  %i.we = extractelement <2 x float> %i.vg, i64 1 ; 2 uses
  %i.wf = fcmp ugt float %i.we, 5.000000e-01
  br i1 %i.wf, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZL13blend_overlayff.exit187.i
  %i.wg = extractelement <2 x float> %i.vg, i64 0
  %i.wh = fmul float %i.wg, 2.000000e+00
  %i.wi = fmul float %i.wh, %i.we
  br label %_ZL13blend_overlayff.exit.i

bb.ao:                                            ; preds = %_ZL13blend_overlayff.exit187.i
  %i.wj = fsub <2 x float> splat (float 1.000000e+00), %i.vg ; 2 uses
  %i.wk = extractelement <2 x float> %i.wj, i64 0
  %i.wl = fmul float %i.wk, -2.000000e+00
  %i.wm = extractelement <2 x float> %i.wj, i64 1
  %i.wn = tail call float @llvm.fmuladd.f32(float %i.wl, float %i.wm, float 1.000000e+00)
  br label %_ZL13blend_overlayff.exit.i

_ZL13blend_overlayff.exit.i:                      ; preds = %bb.ao, %bb.an
  %i.wo = phi float [ %i.wi, %bb.an ], [ %i.wn, %bb.ao ]
  %i.wp = extractelement <2 x float> %i.ug, i64 1 ; 2 uses
  %i.wq = extractelement <2 x float> %i.ug, i64 0 ; 2 uses
  %i.wr = fsub nnan <2 x float> splat (float 1.000000e+00), %i.ug ; 2 uses
  %i.ws = fneg float %i.wq
  %i.wt = fmul float %i.wq, %i.wp
  %i.wu = shufflevector <2 x float> %i.ug, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.wv = shufflevector <2 x float> <float poison, float 1.000000e+00>, <2 x float> %i.wr, <4 x i32> <i32 3, i32 3, i32 3, i32 1>
  %i.ww = fmul <4 x float> %i.wu, %i.wv
  %i.wx = extractelement <2 x float> %i.wr, i64 0
  %i.wy = fmul float %i.wx, %i.wp
  %i.wz = shufflevector <2 x float> %i.vg, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.xa = insertelement <4 x float> %i.wz, float 1.000000e+00, i64 3
  %i.xb = shufflevector <2 x float> %i.vc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.xc = shufflevector <4 x float> %i.xa, <4 x float> %i.xb, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.xd = fmul <4 x float> %i.ww, %i.xc
  %i.xe = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.wt, i64 0
  %i.xf = shufflevector <4 x float> %i.xe, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.xg = insertelement <4 x float> poison, float %i.wo, i64 0
  %i.xh = insertelement <4 x float> %i.xg, float %i.wd, i64 1
  %i.xi = insertelement <4 x float> %i.xh, float %i.vs, i64 2
  %i.xj = shufflevector <2 x float> %i.ug, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.xk = shufflevector <4 x float> %i.xi, <4 x float> %i.xj, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.xl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xf, <4 x float> %i.xk, <4 x float> %i.xd)
  %i.xm = insertelement <4 x float> poison, float %i.wy, i64 0
  %i.xn = insertelement <4 x float> %i.xm, float %i.ws, i64 1
  %i.xo = shufflevector <4 x float> %i.xn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.xp = shufflevector <2 x float> %i.vg, <2 x float> %i.vf, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.xq = shufflevector <4 x float> %i.xp, <4 x float> %i.xj, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.xr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xo, <4 x float> %i.xq, <4 x float> %i.xl) ; 2 uses
  %i.xs = fcmp oge <4 x float> %i.xr, zeroinitializer
  %i.xt = select <4 x i1> %i.xs, <4 x float> %i.xr, <4 x float> zeroinitializer ; 2 uses
  %i.xu = fcmp ole <4 x float> %i.xt, splat (float 1.000000e+00)
  %i.xv = select <4 x i1> %i.xu, <4 x float> %i.xt, <4 x float> splat (float 1.000000e+00)
  %i.xw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xv, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.xx = fptoui <4 x float> %i.xw to <4 x i8>
  %i.xy = bitcast <4 x i8> %i.xx to i32
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.ap:                                            ; preds = %bb.b
  %i.xz = lshr i32 %i.t, 8
  %i.ya = lshr i32 %i.t, 16
  %i.yb = uitofp nneg i32 %i.w to float
  %i.yc = lshr i32 %i.v, 8
  %i.yd = lshr i32 %i.v, 16
  %i.ye = uitofp nneg i32 %i.x to float
  %i.yf = insertelement <4 x i32> poison, i32 %i.xz, i64 0
  %i.yg = insertelement <4 x i32> %i.yf, i32 %i.t, i64 1
  %i.yh = insertelement <4 x i32> %i.yg, i32 %i.yc, i64 2
  %i.yi = insertelement <4 x i32> %i.yh, i32 %i.v, i64 3
  %i.yj = and <4 x i32> %i.yi, splat (i32 255)
  %i.yk = uitofp nneg <4 x i32> %i.yj to <4 x float> ; 2 uses
  %i.yl = shufflevector <4 x float> %i.yk, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ym = fdiv <2 x float> %i.yl, splat (float 2.550000e+02)
  %i.yn = shufflevector <4 x float> %i.yk, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.yo = fdiv <2 x float> %i.yn, splat (float 2.550000e+02)
  %i.yp = insertelement <2 x float> poison, float %i.ye, i64 0
  %i.yq = insertelement <2 x float> %i.yp, float %i.yb, i64 1
  %i.yr = fdiv <2 x float> %i.yq, splat (float 2.550000e+02) ; 10 uses
  %i.ys = extractelement <2 x float> %i.yr, i64 1 ; 3 uses
  %i.yt = fcmp ogt <2 x float> %i.yr, zeroinitializer ; 3 uses
  %i.yu = shufflevector <2 x float> %i.yr, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.yv = fdiv <2 x float> %i.ym, %i.yu
  %i.yw = shufflevector <2 x i1> %i.yt, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.yx = select <2 x i1> %i.yw, <2 x float> %i.yv, <2 x float> zeroinitializer ; 3 uses
  %i.yy = extractelement <2 x float> %i.yr, i64 0 ; 2 uses
  %i.yz = and i32 %i.yd, 255
  %i.za = and i32 %i.ya, 255
  %i.zb = uitofp nneg i32 %i.yz to float
  %i.zc = uitofp nneg i32 %i.za to float
  %i.zd = insertelement <2 x float> poison, float %i.zb, i64 0
  %i.ze = insertelement <2 x float> %i.zd, float %i.zc, i64 1
  %i.zf = fdiv <2 x float> %i.ze, splat (float 2.550000e+02)
  %i.zg = fdiv <2 x float> %i.zf, %i.yr
  %i.zh = select <2 x i1> %i.yt, <2 x float> %i.zg, <2 x float> zeroinitializer ; 3 uses
  %i.zi = shufflevector <2 x float> %i.yr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zj = fdiv <2 x float> %i.yo, %i.zi
  %i.zk = shufflevector <2 x i1> %i.yt, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.zl = select <2 x i1> %i.zk, <2 x float> %i.zj, <2 x float> zeroinitializer ; 3 uses
  %i.zm = extractelement <2 x float> %i.zh, i64 0 ; 2 uses
  %i.zn = extractelement <2 x float> %i.zh, i64 1 ; 3 uses
  %i.zo = fcmp ole float %i.zn, %i.zm
  %.sroa.speculated.i190.i = select i1 %i.zo, float %i.zn, float %i.zm
  %i.zp = fcmp ole <2 x float> %i.yx, %i.zl
  %i.zq = select <2 x i1> %i.zp, <2 x float> %i.yx, <2 x float> %i.zl
  %i.zr = fadd float %i.ys, %i.yy
  %i.zs = fsub nnan <2 x float> splat (float 1.000000e+00), %i.yr ; 2 uses
  %i.zt = extractelement <2 x float> %i.zs, i64 0
  %i.zu = fmul float %i.ys, %i.zt                 ; 2 uses
  %i.zv = fmul float %i.ys, %i.yy                 ; 2 uses
  %shift105 = shufflevector <2 x float> %i.zs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop106 = fmul <2 x float> %shift105, %i.yr
  %i.zw = fmul float %i.zu, %i.zn
  %i.zx = insertelement <2 x float> poison, float %i.zu, i64 0
  %i.zy = shufflevector <2 x float> %i.zx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zz = fmul <2 x float> %i.yx, %i.zy
  %i.aaa = tail call float @llvm.fmuladd.f32(float %i.zv, float %.sroa.speculated.i190.i, float %i.zw)
  %i.aab = insertelement <2 x float> poison, float %i.zv, i64 0
  %i.aac = shufflevector <2 x float> %i.aab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aac, <2 x float> %i.zq, <2 x float> %i.zz)
  %i.aae = fneg <2 x float> %i.yr
  %i.aaf = shufflevector <2 x float> %i.zh, <2 x float> %i.aae, <2 x i32> <i32 0, i32 3>
  %3 = shufflevector <2 x float> %i.zl, <2 x float> %i.aaf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aag = insertelement <2 x float> poison, float %i.aaa, i64 0
  %4 = insertelement <2 x float> %i.aag, float %i.zr, i64 1
  %i.aah = shufflevector <2 x float> %i.aad, <2 x float> %4, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %5 = shufflevector <2 x float> %foldExtExtBinop106, <2 x float> %i.yr, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.aai = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %5, <4 x float> %3, <4 x float> %i.aah) ; 2 uses
  %i.aaj = fcmp oge <4 x float> %i.aai, zeroinitializer
  %i.aak = select <4 x i1> %i.aaj, <4 x float> %i.aai, <4 x float> zeroinitializer ; 2 uses
  %i.aal = fcmp ole <4 x float> %i.aak, splat (float 1.000000e+00)
  %i.aam = select <4 x i1> %i.aal, <4 x float> %i.aak, <4 x float> splat (float 1.000000e+00)
  %i.aan = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aam, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.aao = fptoui <4 x float> %i.aan to <4 x i8>
  %i.aap = bitcast <4 x i8> %i.aao to i32
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.aq:                                            ; preds = %bb.b
  %i.aaq = lshr i32 %i.t, 8
  %i.aar = lshr i32 %i.t, 16
  %i.aas = uitofp nneg i32 %i.w to float
  %i.aat = lshr i32 %i.v, 8
  %i.aau = lshr i32 %i.v, 16
  %i.aav = uitofp nneg i32 %i.x to float
  %i.aaw = insertelement <4 x i32> poison, i32 %i.aaq, i64 0
  %i.aax = insertelement <4 x i32> %i.aaw, i32 %i.t, i64 1
  %i.aay = insertelement <4 x i32> %i.aax, i32 %i.aat, i64 2
  %i.aaz = insertelement <4 x i32> %i.aay, i32 %i.v, i64 3
  %i.aba = and <4 x i32> %i.aaz, splat (i32 255)
  %i.abb = uitofp nneg <4 x i32> %i.aba to <4 x float> ; 2 uses
  %i.abc = shufflevector <4 x float> %i.abb, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.abd = fdiv <2 x float> %i.abc, splat (float 2.550000e+02)
  %i.abe = shufflevector <4 x float> %i.abb, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.abf = fdiv <2 x float> %i.abe, splat (float 2.550000e+02)
  %i.abg = insertelement <2 x float> poison, float %i.aav, i64 0
  %i.abh = insertelement <2 x float> %i.abg, float %i.aas, i64 1
  %i.abi = fdiv <2 x float> %i.abh, splat (float 2.550000e+02) ; 10 uses
  %i.abj = extractelement <2 x float> %i.abi, i64 1 ; 3 uses
  %i.abk = fcmp ogt <2 x float> %i.abi, zeroinitializer ; 3 uses
  %i.abl = shufflevector <2 x float> %i.abi, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.abm = fdiv <2 x float> %i.abd, %i.abl
  %i.abn = shufflevector <2 x i1> %i.abk, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.abo = select <2 x i1> %i.abn, <2 x float> %i.abm, <2 x float> zeroinitializer ; 3 uses
  %i.abp = extractelement <2 x float> %i.abi, i64 0 ; 2 uses
  %i.abq = and i32 %i.aau, 255
  %i.abr = and i32 %i.aar, 255
  %i.abs = uitofp nneg i32 %i.abq to float
  %i.abt = uitofp nneg i32 %i.abr to float
  %i.abu = insertelement <2 x float> poison, float %i.abs, i64 0
  %i.abv = insertelement <2 x float> %i.abu, float %i.abt, i64 1
  %i.abw = fdiv <2 x float> %i.abv, splat (float 2.550000e+02)
  %i.abx = fdiv <2 x float> %i.abw, %i.abi
  %i.aby = select <2 x i1> %i.abk, <2 x float> %i.abx, <2 x float> zeroinitializer ; 3 uses
  %i.abz = shufflevector <2 x float> %i.abi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aca = fdiv <2 x float> %i.abf, %i.abz
  %i.acb = shufflevector <2 x i1> %i.abk, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.acc = select <2 x i1> %i.acb, <2 x float> %i.aca, <2 x float> zeroinitializer ; 3 uses
  %i.acd = extractelement <2 x float> %i.aby, i64 0 ; 2 uses
  %i.ace = extractelement <2 x float> %i.aby, i64 1 ; 3 uses
  %i.acf = fcmp oge float %i.ace, %i.acd
  %.sroa.speculated.i193.i = select i1 %i.acf, float %i.ace, float %i.acd
  %i.acg = fcmp oge <2 x float> %i.abo, %i.acc
  %i.ach = select <2 x i1> %i.acg, <2 x float> %i.abo, <2 x float> %i.acc
  %i.aci = fadd float %i.abj, %i.abp
  %i.acj = fsub nnan <2 x float> splat (float 1.000000e+00), %i.abi ; 2 uses
  %i.ack = extractelement <2 x float> %i.acj, i64 0
  %i.acl = fmul float %i.abj, %i.ack              ; 2 uses
  %i.acm = fmul float %i.abj, %i.abp              ; 2 uses
  %shift108 = shufflevector <2 x float> %i.acj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop109 = fmul <2 x float> %shift108, %i.abi
  %i.acn = fmul float %i.acl, %i.ace
  %i.aco = insertelement <2 x float> poison, float %i.acl, i64 0
  %i.acp = shufflevector <2 x float> %i.aco, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acq = fmul <2 x float> %i.abo, %i.acp
  %i.acr = tail call float @llvm.fmuladd.f32(float %i.acm, float %.sroa.speculated.i193.i, float %i.acn)
  %i.acs = insertelement <2 x float> poison, float %i.acm, i64 0
  %i.act = shufflevector <2 x float> %i.acs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.act, <2 x float> %i.ach, <2 x float> %i.acq)
  %i.acv = fneg <2 x float> %i.abi
  %i.acw = shufflevector <2 x float> %i.aby, <2 x float> %i.acv, <2 x i32> <i32 0, i32 3>
  %6 = shufflevector <2 x float> %i.acc, <2 x float> %i.acw, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.acx = insertelement <2 x float> poison, float %i.acr, i64 0
  %7 = insertelement <2 x float> %i.acx, float %i.aci, i64 1
  %i.acy = shufflevector <2 x float> %i.acu, <2 x float> %7, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %8 = shufflevector <2 x float> %foldExtExtBinop109, <2 x float> %i.abi, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.acz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %8, <4 x float> %6, <4 x float> %i.acy) ; 2 uses
  %i.ada = fcmp oge <4 x float> %i.acz, zeroinitializer
  %i.adb = select <4 x i1> %i.ada, <4 x float> %i.acz, <4 x float> zeroinitializer ; 2 uses
  %i.adc = fcmp ole <4 x float> %i.adb, splat (float 1.000000e+00)
  %i.add = select <4 x i1> %i.adc, <4 x float> %i.adb, <4 x float> splat (float 1.000000e+00)
  %i.ade = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.add, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.adf = fptoui <4 x float> %i.ade to <4 x i8>
  %i.adg = bitcast <4 x i8> %i.adf to i32
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.ar:                                            ; preds = %bb.b
  %i.adh = and i32 %i.t, 255
  %i.adi = uitofp nneg i32 %i.adh to float
  %i.adj = fdiv float %i.adi, 2.550000e+02
  %i.adk = lshr i32 %i.t, 8
  %i.adl = lshr i32 %i.t, 16
  %i.adm = uitofp nneg i32 %i.w to float
  %i.adn = and i32 %i.v, 255
  %i.ado = uitofp nneg i32 %i.adn to float
  %i.adp = fdiv float %i.ado, 2.550000e+02
  %i.adq = lshr i32 %i.v, 8
  %i.adr = lshr i32 %i.v, 16
  %i.ads = uitofp nneg i32 %i.x to float
  %i.adt = insertelement <2 x float> poison, float %i.adm, i64 0
  %i.adu = insertelement <2 x float> %i.adt, float %i.ads, i64 1
  %i.adv = fdiv <2 x float> %i.adu, splat (float 2.550000e+02) ; 7 uses
  %i.adw = extractelement <2 x float> %i.adv, i64 0 ; 4 uses
  %i.adx = fcmp ogt float %i.adw, 0.000000e+00    ; 2 uses
  %i.ady = and i32 %i.adl, 255
  %i.adz = and i32 %i.adk, 255
  %i.aea = uitofp nneg i32 %i.ady to float
  %i.aeb = uitofp nneg i32 %i.adz to float
  %i.aec = insertelement <2 x float> poison, float %i.aeb, i64 0
  %i.aed = insertelement <2 x float> %i.aec, float %i.aea, i64 1
  %i.aee = fdiv <2 x float> %i.aed, splat (float 2.550000e+02)
  %i.aef = shufflevector <2 x float> %i.adv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aeg = fdiv <2 x float> %i.aee, %i.aef
  %i.aeh = insertelement <2 x i1> poison, i1 %i.adx, i64 0
  %i.aei = shufflevector <2 x i1> %i.aeh, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.aej = select <2 x i1> %i.aei, <2 x float> %i.aeg, <2 x float> zeroinitializer ; 3 uses
  %i.aek = fdiv float %i.adj, %i.adw
  %i.ael = select i1 %i.adx, float %i.aek, float 0.000000e+00 ; 3 uses
  %i.aem = extractelement <2 x float> %i.adv, i64 1 ; 4 uses
  %i.aen = fcmp ogt float %i.aem, 0.000000e+00    ; 2 uses
  %i.aeo = and i32 %i.adr, 255
  %i.aep = and i32 %i.adq, 255
  %i.aeq = uitofp nneg i32 %i.aeo to float
  %i.aer = uitofp nneg i32 %i.aep to float
  %i.aes = insertelement <2 x float> poison, float %i.aer, i64 0
  %i.aet = insertelement <2 x float> %i.aes, float %i.aeq, i64 1
  %i.aeu = fdiv <2 x float> %i.aet, splat (float 2.550000e+02)
  %i.aev = shufflevector <2 x float> %i.adv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aew = fdiv <2 x float> %i.aeu, %i.aev
  %i.aex = insertelement <2 x i1> poison, i1 %i.aen, i64 0
  %i.aey = shufflevector <2 x i1> %i.aex, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.aez = select <2 x i1> %i.aey, <2 x float> %i.aew, <2 x float> zeroinitializer ; 3 uses
  %i.afa = fdiv float %i.adp, %i.aem
  %i.afb = select i1 %i.aen, float %i.afa, float 0.000000e+00 ; 3 uses
  %i.afc = extractelement <2 x float> %i.aez, i64 1 ; 2 uses
  %i.afd = fcmp ugt float %i.afc, 0.000000e+00
  br i1 %i.afd, label %bb.as, label %_ZL17blend_color_dodgeff.exit201.i

bb.as:                                            ; preds = %bb.ar
  %i.afe = extractelement <2 x float> %i.aej, i64 1 ; 2 uses
  %i.aff = fcmp ult float %i.afe, 1.000000e+00
  br i1 %i.aff, label %bb.at, label %_ZL17blend_color_dodgeff.exit201.i

bb.at:                                            ; preds = %bb.as
  %i.afg = fsub float 1.000000e+00, %i.afe
  %i.afh = fdiv float %i.afc, %i.afg              ; 2 uses
  %i.afi = fcmp oge float %i.afh, 1.000000e+00
  %.sroa.speculated.i200.i = select i1 %i.afi, float 1.000000e+00, float %i.afh
  br label %_ZL17blend_color_dodgeff.exit201.i

_ZL17blend_color_dodgeff.exit201.i:               ; preds = %bb.at, %bb.as, %bb.ar
  %.0.i199.i = phi float [ %.sroa.speculated.i200.i, %bb.at ], [ 0.000000e+00, %bb.ar ], [ 1.000000e+00, %bb.as ]
  %i.afj = extractelement <2 x float> %i.aez, i64 0 ; 2 uses
  %i.afk = fcmp ugt float %i.afj, 0.000000e+00
  br i1 %i.afk, label %bb.au, label %_ZL17blend_color_dodgeff.exit198.i

bb.au:                                            ; preds = %_ZL17blend_color_dodgeff.exit201.i
  %i.afl = extractelement <2 x float> %i.aej, i64 0 ; 2 uses
  %i.afm = fcmp ult float %i.afl, 1.000000e+00
  br i1 %i.afm, label %bb.av, label %_ZL17blend_color_dodgeff.exit198.i

bb.av:                                            ; preds = %bb.au
  %i.afn = fsub float 1.000000e+00, %i.afl
  %i.afo = fdiv float %i.afj, %i.afn              ; 2 uses
  %i.afp = fcmp oge float %i.afo, 1.000000e+00
  %.sroa.speculated.i197.i = select i1 %i.afp, float 1.000000e+00, float %i.afo
  br label %_ZL17blend_color_dodgeff.exit198.i

_ZL17blend_color_dodgeff.exit198.i:               ; preds = %bb.av, %bb.au, %_ZL17blend_color_dodgeff.exit201.i
  %.0.i196.i = phi float [ %.sroa.speculated.i197.i, %bb.av ], [ 0.000000e+00, %_ZL17blend_color_dodgeff.exit201.i ], [ 1.000000e+00, %bb.au ]
  %i.afq = fcmp ugt float %i.afb, 0.000000e+00
  br i1 %i.afq, label %bb.aw, label %_ZL17blend_color_dodgeff.exit.i

bb.aw:                                            ; preds = %_ZL17blend_color_dodgeff.exit198.i
  %i.afr = fcmp ult float %i.ael, 1.000000e+00
  br i1 %i.afr, label %bb.ax, label %_ZL17blend_color_dodgeff.exit.i

bb.ax:                                            ; preds = %bb.aw
  %i.afs = fsub float 1.000000e+00, %i.ael
  %i.aft = fdiv float %i.afb, %i.afs              ; 2 uses
  %i.afu = fcmp oge float %i.aft, 1.000000e+00
  %.sroa.speculated.i195.i = select i1 %i.afu, float 1.000000e+00, float %i.aft
  br label %_ZL17blend_color_dodgeff.exit.i

_ZL17blend_color_dodgeff.exit.i:                  ; preds = %bb.ax, %bb.aw, %_ZL17blend_color_dodgeff.exit198.i
  %.0.i194.i = phi float [ %.sroa.speculated.i195.i, %bb.ax ], [ 0.000000e+00, %_ZL17blend_color_dodgeff.exit198.i ], [ 1.000000e+00, %bb.aw ]
  %i.afv = fsub nnan <2 x float> splat (float 1.000000e+00), %i.adv ; 2 uses
  %i.afw = fneg float %i.adw
  %i.afx = fmul float %i.adw, %i.aem
  %i.afy = shufflevector <2 x float> %i.adv, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.afz = shufflevector <2 x float> <float poison, float 1.000000e+00>, <2 x float> %i.afv, <4 x i32> <i32 3, i32 3, i32 3, i32 1>
  %i.aga = fmul <4 x float> %i.afy, %i.afz
  %i.agb = extractelement <2 x float> %i.afv, i64 0
  %i.agc = fmul float %i.agb, %i.aem
  %i.agd = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ael, i64 0
  %i.age = shufflevector <2 x float> %i.aej, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.agf = shufflevector <4 x float> %i.agd, <4 x float> %i.age, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.agg = fmul <4 x float> %i.aga, %i.agf
  %i.agh = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.afx, i64 0
  %i.agi = shufflevector <4 x float> %i.agh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.agj = insertelement <4 x float> poison, float %.0.i194.i, i64 0
  %i.agk = insertelement <4 x float> %i.agj, float %.0.i196.i, i64 1
  %i.agl = insertelement <4 x float> %i.agk, float %.0.i199.i, i64 2
  %i.agm = shufflevector <2 x float> %i.adv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.agn = shufflevector <4 x float> %i.agl, <4 x float> %i.agm, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ago = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.agi, <4 x float> %i.agn, <4 x float> %i.agg)
  %i.agp = insertelement <4 x float> poison, float %i.agc, i64 0
  %i.agq = insertelement <4 x float> %i.agp, float %i.afw, i64 1
  %i.agr = shufflevector <4 x float> %i.agq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ags = insertelement <4 x float> poison, float %i.afb, i64 0
  %i.agt = shufflevector <2 x float> %i.aez, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.agu = shufflevector <4 x float> %i.ags, <4 x float> %i.agt, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.agv = shufflevector <4 x float> %i.agu, <4 x float> %i.agm, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.agw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.agr, <4 x float> %i.agv, <4 x float> %i.ago) ; 2 uses
  %i.agx = fcmp oge <4 x float> %i.agw, zeroinitializer
  %i.agy = select <4 x i1> %i.agx, <4 x float> %i.agw, <4 x float> zeroinitializer ; 2 uses
  %i.agz = fcmp ole <4 x float> %i.agy, splat (float 1.000000e+00)
  %i.aha = select <4 x i1> %i.agz, <4 x float> %i.agy, <4 x float> splat (float 1.000000e+00)
  %i.ahb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aha, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.ahc = fptoui <4 x float> %i.ahb to <4 x i8>
  %i.ahd = bitcast <4 x i8> %i.ahc to i32
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.ay:                                            ; preds = %bb.b
  %i.ahe = and i32 %i.t, 255
  %i.ahf = uitofp nneg i32 %i.ahe to float
  %i.ahg = fdiv float %i.ahf, 2.550000e+02
  %i.ahh = lshr i32 %i.t, 8
  %i.ahi = lshr i32 %i.t, 16
  %i.ahj = uitofp nneg i32 %i.w to float
  %i.ahk = and i32 %i.v, 255
  %i.ahl = uitofp nneg i32 %i.ahk to float
  %i.ahm = fdiv float %i.ahl, 2.550000e+02
  %i.ahn = lshr i32 %i.v, 8
  %i.aho = lshr i32 %i.v, 16
  %i.ahp = uitofp nneg i32 %i.x to float
  %i.ahq = insertelement <2 x float> poison, float %i.ahj, i64 0
  %i.ahr = insertelement <2 x float> %i.ahq, float %i.ahp, i64 1
  %i.ahs = fdiv <2 x float> %i.ahr, splat (float 2.550000e+02) ; 7 uses
  %i.aht = extractelement <2 x float> %i.ahs, i64 0 ; 4 uses
  %i.ahu = fcmp ogt float %i.aht, 0.000000e+00    ; 2 uses
  %i.ahv = and i32 %i.ahi, 255
  %i.ahw = and i32 %i.ahh, 255
  %i.ahx = uitofp nneg i32 %i.ahv to float
  %i.ahy = uitofp nneg i32 %i.ahw to float
  %i.ahz = insertelement <2 x float> poison, float %i.ahy, i64 0
  %i.aia = insertelement <2 x float> %i.ahz, float %i.ahx, i64 1
  %i.aib = fdiv <2 x float> %i.aia, splat (float 2.550000e+02)
  %i.aic = shufflevector <2 x float> %i.ahs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aid = fdiv <2 x float> %i.aib, %i.aic
  %i.aie = insertelement <2 x i1> poison, i1 %i.ahu, i64 0
  %i.aif = shufflevector <2 x i1> %i.aie, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.aig = select <2 x i1> %i.aif, <2 x float> %i.aid, <2 x float> zeroinitializer ; 3 uses
  %i.aih = fdiv float %i.ahg, %i.aht
  %i.aii = select i1 %i.ahu, float %i.aih, float 0.000000e+00 ; 3 uses
  %i.aij = extractelement <2 x float> %i.ahs, i64 1 ; 4 uses
  %i.aik = fcmp ogt float %i.aij, 0.000000e+00    ; 2 uses
  %i.ail = and i32 %i.aho, 255
  %i.aim = and i32 %i.ahn, 255
  %i.ain = uitofp nneg i32 %i.ail to float
  %i.aio = uitofp nneg i32 %i.aim to float
  %i.aip = insertelement <2 x float> poison, float %i.aio, i64 0
  %i.aiq = insertelement <2 x float> %i.aip, float %i.ain, i64 1
  %i.air = fdiv <2 x float> %i.aiq, splat (float 2.550000e+02)
  %i.ais = shufflevector <2 x float> %i.ahs, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ait = fdiv <2 x float> %i.air, %i.ais
  %i.aiu = insertelement <2 x i1> poison, i1 %i.aik, i64 0
  %i.aiv = shufflevector <2 x i1> %i.aiu, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.aiw = select <2 x i1> %i.aiv, <2 x float> %i.ait, <2 x float> zeroinitializer ; 3 uses
  %i.aix = fdiv float %i.ahm, %i.aij
  %i.aiy = select i1 %i.aik, float %i.aix, float 0.000000e+00 ; 3 uses
  %i.aiz = extractelement <2 x float> %i.aiw, i64 1 ; 2 uses
  %i.aja = fcmp ult float %i.aiz, 1.000000e+00
  br i1 %i.aja, label %bb.az, label %_ZL16blend_color_burnff.exit209.i

bb.az:                                            ; preds = %bb.ay
  %i.ajb = extractelement <2 x float> %i.aig, i64 1 ; 2 uses
end_hunk_0
