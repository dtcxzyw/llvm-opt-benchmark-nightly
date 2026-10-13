Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-raster-image?download=true
inline.NumInlined: 282
inline.NumDeleted: 140
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN17hb_raster_image_t14composite_fromEPKS_25hb_paint_composite_mode_t:bb.a
  %i.qb = tail call float @llvm.fmuladd.f32(float %i.pl, float %i.pj, float %i.qa)
  %i.qc = tail call float @llvm.fmuladd.f32(float %i.pq, float %i.pi, float %i.qb)
  %i.qd = insertelement <4 x float> poison, float %i.qc, i64 0
  %i.qe = insertelement <4 x float> %i.qd, float %i.pz, i64 1
  %i.qf = shufflevector <2 x float> %i.pw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qg = shufflevector <4 x float> %i.qe, <4 x float> %i.qf, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.qh = fcmp oge <4 x float> %i.qg, zeroinitializer
  %i.qi = select <4 x i1> %i.qh, <4 x float> %i.qg, <4 x float> zeroinitializer ; 2 uses
  %i.qj = fcmp ole <4 x float> %i.qi, splat (float 1.000000e+00)
  %i.qk = select <4 x i1> %i.qj, <4 x float> %i.qi, <4 x float> splat (float 1.000000e+00)
  %i.ql = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qk, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.qm = fptoui <4 x float> %i.ql to <4 x i8>
  %i.qn = bitcast <4 x i8> %i.qm to i32
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.ah:                                            ; preds = %bb.b
  %i.qo = and i32 %i.q, 255
  %i.qp = lshr i32 %i.q, 8
  %i.qq = insertelement <2 x i32> poison, i32 %i.q, i64 0
  %i.qr = insertelement <2 x i32> %i.qq, i32 %i.s, i64 1
  %i.qs = lshr <2 x i32> %i.qr, splat (i32 16)
  %i.qt = uitofp nneg i32 %i.t to float
  %i.qu = and i32 %i.s, 255
  %i.qv = lshr i32 %i.s, 8
  %i.qw = uitofp nneg i32 %i.u to float
  %i.qx = insertelement <2 x float> poison, float %i.qt, i64 0
  %i.qy = insertelement <2 x float> %i.qx, float %i.qw, i64 1
  %i.qz = fdiv <2 x float> %i.qy, splat (float 2.550000e+02) ; 9 uses
  %i.ra = extractelement <2 x float> %i.qz, i64 1 ; 3 uses
  %i.rb = extractelement <2 x float> %i.qz, i64 0 ; 2 uses
  %i.rc = and <2 x i32> %i.qs, splat (i32 255)
  %i.rd = uitofp nneg <2 x i32> %i.rc to <2 x float>
  %i.re = fdiv <2 x float> %i.rd, splat (float 2.550000e+02)
  %i.rf = fcmp ogt <2 x float> %i.qz, zeroinitializer ; 3 uses
  %i.rg = fdiv <2 x float> %i.re, %i.qz
  %i.rh = select <2 x i1> %i.rf, <2 x float> %i.rg, <2 x float> zeroinitializer ; 4 uses
  %i.ri = and i32 %i.qp, 255
  %i.rj = uitofp nneg i32 %i.ri to float
  %i.rk = and i32 %i.qv, 255
  %i.rl = uitofp nneg i32 %i.rk to float
  %i.rm = insertelement <2 x float> poison, float %i.rj, i64 0
  %i.rn = insertelement <2 x float> %i.rm, float %i.rl, i64 1
  %i.ro = fdiv <2 x float> %i.rn, splat (float 2.550000e+02)
  %i.rp = fdiv <2 x float> %i.ro, %i.qz
  %i.rq = select <2 x i1> %i.rf, <2 x float> %i.rp, <2 x float> zeroinitializer ; 4 uses
  %i.rr = uitofp nneg i32 %i.qo to float
  %i.rs = uitofp nneg i32 %i.qu to float
  %i.rt = insertelement <2 x float> poison, float %i.rr, i64 0
  %i.ru = insertelement <2 x float> %i.rt, float %i.rs, i64 1
  %i.rv = fdiv <2 x float> %i.ru, splat (float 2.550000e+02)
  %i.rw = fdiv <2 x float> %i.rv, %i.qz
  %i.rx = select <2 x i1> %i.rf, <2 x float> %i.rw, <2 x float> zeroinitializer ; 4 uses
  %i.ry = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.rh)
  %i.rz = extractelement <2 x float> %i.rh, i64 0
  %i.sa = fneg float %i.rz
  %i.sb = extractelement <2 x float> %i.rh, i64 1 ; 2 uses
  %i.sc = tail call noundef float @llvm.fmuladd.f32(float %i.sa, float %i.sb, float %i.ry)
  %i.sd = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.rq)
  %i.se = extractelement <2 x float> %i.rq, i64 0
  %i.sf = fneg float %i.se
  %i.sg = extractelement <2 x float> %i.rq, i64 1 ; 2 uses
  %i.sh = tail call noundef float @llvm.fmuladd.f32(float %i.sf, float %i.sg, float %i.sd)
  %i.si = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.rx)
  %i.sj = extractelement <2 x float> %i.rx, i64 0
  %i.sk = fneg float %i.sj
  %i.sl = extractelement <2 x float> %i.rx, i64 1 ; 2 uses
  %i.sm = tail call noundef float @llvm.fmuladd.f32(float %i.sk, float %i.sl, float %i.si)
  %i.sn = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.qz)
  %i.so = fneg float %i.rb
  %i.sp = tail call float @llvm.fmuladd.f32(float %i.so, float %i.ra, float %i.sn)
  %i.sq = fmul float %i.rb, %i.ra                 ; 3 uses
  %i.sr = fsub nnan <2 x float> splat (float 1.000000e+00), %i.qz ; 2 uses
  %shift105 = shufflevector <2 x float> %i.sr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop106 = fmul <2 x float> %i.qz, %shift105 ; 3 uses
  %foldExtExtBinop108 = fmul <2 x float> %foldExtExtBinop106, %i.rh
  %i.ss = extractelement <2 x float> %foldExtExtBinop108, i64 0
  %i.st = tail call float @llvm.fmuladd.f32(float %i.sq, float %i.sc, float %i.ss)
  %i.su = extractelement <2 x float> %i.sr, i64 0
  %i.sv = fmul float %i.su, %i.ra                 ; 3 uses
  %i.sw = tail call float @llvm.fmuladd.f32(float %i.sv, float %i.sb, float %i.st)
  %foldExtExtBinop110 = fmul <2 x float> %foldExtExtBinop106, %i.rq
  %i.sx = extractelement <2 x float> %foldExtExtBinop110, i64 0
  %i.sy = tail call float @llvm.fmuladd.f32(float %i.sq, float %i.sh, float %i.sx)
  %i.sz = tail call float @llvm.fmuladd.f32(float %i.sv, float %i.sg, float %i.sy)
  %foldExtExtBinop112 = fmul <2 x float> %i.rx, %foldExtExtBinop106
  %i.ta = extractelement <2 x float> %foldExtExtBinop112, i64 0
  %i.tb = tail call float @llvm.fmuladd.f32(float %i.sq, float %i.sm, float %i.ta)
  %i.tc = tail call float @llvm.fmuladd.f32(float %i.sv, float %i.sl, float %i.tb)
  %i.td = insertelement <4 x float> poison, float %i.tc, i64 0
  %i.te = insertelement <4 x float> %i.td, float %i.sz, i64 1
  %i.tf = insertelement <4 x float> %i.te, float %i.sw, i64 2
  %i.tg = insertelement <4 x float> %i.tf, float %i.sp, i64 3 ; 2 uses
  %i.th = fcmp oge <4 x float> %i.tg, zeroinitializer
  %i.ti = select <4 x i1> %i.th, <4 x float> %i.tg, <4 x float> zeroinitializer ; 2 uses
  %i.tj = fcmp ole <4 x float> %i.ti, splat (float 1.000000e+00)
  %i.tk = select <4 x i1> %i.tj, <4 x float> %i.ti, <4 x float> splat (float 1.000000e+00)
  %i.tl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.tk, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.tm = fptoui <4 x float> %i.tl to <4 x i8>
  %i.tn = bitcast <4 x i8> %i.tm to i32
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.ai:                                            ; preds = %bb.b
  %i.to = and i32 %i.q, 255
  %i.tp = lshr i32 %i.q, 8
  %i.tq = lshr i32 %i.q, 16
  %i.tr = uitofp nneg i32 %i.t to float
  %i.ts = and i32 %i.s, 255
  %i.tt = lshr i32 %i.s, 8
  %i.tu = lshr i32 %i.s, 16
  %i.tv = uitofp nneg i32 %i.u to float
  %i.tw = insertelement <2 x float> poison, float %i.tr, i64 0
  %i.tx = insertelement <2 x float> %i.tw, float %i.tv, i64 1
  %i.ty = fdiv <2 x float> %i.tx, splat (float 2.550000e+02) ; 9 uses
  %i.tz = shufflevector <2 x float> %i.ty, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ua = fcmp ogt <2 x float> %i.ty, zeroinitializer ; 3 uses
  %i.ub = shufflevector <2 x i1> %i.ua, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.uc = insertelement <4 x i32> poison, i32 %i.tp, i64 0
  %i.ud = insertelement <4 x i32> %i.uc, i32 %i.tt, i64 1
  %i.ue = insertelement <4 x i32> %i.ud, i32 %i.tq, i64 2
  %i.uf = insertelement <4 x i32> %i.ue, i32 %i.tu, i64 3
  %i.ug = and <4 x i32> %i.uf, splat (i32 255)
  %i.uh = uitofp nneg <4 x i32> %i.ug to <4 x float> ; 2 uses
  %i.ui = shufflevector <4 x float> %i.uh, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.uj = fdiv <2 x float> %i.ui, splat (float 2.550000e+02)
  %i.uk = fdiv <2 x float> %i.uj, %i.tz
  %i.ul = select <2 x i1> %i.ub, <2 x float> %i.uk, <2 x float> zeroinitializer ; 5 uses
  %i.um = shufflevector <4 x float> %i.uh, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.un = fdiv <2 x float> %i.um, splat (float 2.550000e+02)
  %i.uo = shufflevector <2 x float> %i.ty, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.up = fdiv <2 x float> %i.un, %i.uo
  %i.uq = shufflevector <2 x i1> %i.ua, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.ur = select <2 x i1> %i.uq, <2 x float> %i.up, <2 x float> zeroinitializer ; 4 uses
  %i.us = uitofp nneg i32 %i.to to float
  %i.ut = uitofp nneg i32 %i.ts to float
  %i.uu = insertelement <2 x float> poison, float %i.us, i64 0
  %i.uv = insertelement <2 x float> %i.uu, float %i.ut, i64 1
  %i.uw = fdiv <2 x float> %i.uv, splat (float 2.550000e+02)
  %i.ux = fdiv <2 x float> %i.uw, %i.ty
  %i.uy = select <2 x i1> %i.ua, <2 x float> %i.ux, <2 x float> zeroinitializer ; 5 uses
  %i.uz = extractelement <2 x float> %i.ur, i64 1 ; 2 uses
  %i.va = fcmp ugt float %i.uz, 5.000000e-01
  br i1 %i.va, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.vb = extractelement <2 x float> %i.ul, i64 1
  %i.vc = fmul float %i.vb, 2.000000e+00
  %i.vd = fmul float %i.vc, %i.uz
  br label %_ZL13blend_overlayff.exit189.i

bb.ak:                                            ; preds = %bb.ai
  %i.ve = shufflevector <2 x float> %i.ul, <2 x float> %i.ur, <2 x i32> <i32 1, i32 3>
  %i.vf = fsub <2 x float> splat (float 1.000000e+00), %i.ve ; 2 uses
  %i.vg = extractelement <2 x float> %i.vf, i64 0
  %i.vh = fmul float %i.vg, -2.000000e+00
  %i.vi = extractelement <2 x float> %i.vf, i64 1
  %i.vj = tail call float @llvm.fmuladd.f32(float %i.vh, float %i.vi, float 1.000000e+00)
  br label %_ZL13blend_overlayff.exit189.i

_ZL13blend_overlayff.exit189.i:                   ; preds = %bb.ak, %bb.aj
  %i.vk = phi float [ %i.vd, %bb.aj ], [ %i.vj, %bb.ak ]
  %i.vl = extractelement <2 x float> %i.ur, i64 0 ; 3 uses
  %i.vm = fcmp ugt float %i.vl, 5.000000e-01
  br i1 %i.vm, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZL13blend_overlayff.exit189.i
  %i.vn = extractelement <2 x float> %i.ul, i64 0
  %i.vo = fmul float %i.vn, 2.000000e+00
  %i.vp = fmul float %i.vo, %i.vl
  br label %_ZL13blend_overlayff.exit188.i

bb.am:                                            ; preds = %_ZL13blend_overlayff.exit189.i
  %i.vq = extractelement <2 x float> %i.ul, i64 0
  %i.vr = fsub float 1.000000e+00, %i.vq
  %i.vs = fsub float 1.000000e+00, %i.vl
  %i.vt = fmul float %i.vr, -2.000000e+00
  %i.vu = tail call float @llvm.fmuladd.f32(float %i.vt, float %i.vs, float 1.000000e+00)
  br label %_ZL13blend_overlayff.exit188.i

_ZL13blend_overlayff.exit188.i:                   ; preds = %bb.am, %bb.al
  %i.vv = phi float [ %i.vp, %bb.al ], [ %i.vu, %bb.am ]
  %i.vw = extractelement <2 x float> %i.uy, i64 1 ; 2 uses
  %i.vx = fcmp ugt float %i.vw, 5.000000e-01
  br i1 %i.vx, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZL13blend_overlayff.exit188.i
  %i.vy = extractelement <2 x float> %i.uy, i64 0
  %i.vz = fmul float %i.vy, 2.000000e+00
  %i.wa = fmul float %i.vz, %i.vw
  br label %_ZL13blend_overlayff.exit.i

bb.ao:                                            ; preds = %_ZL13blend_overlayff.exit188.i
  %i.wb = fsub <2 x float> splat (float 1.000000e+00), %i.uy ; 2 uses
  %i.wc = extractelement <2 x float> %i.wb, i64 0
  %i.wd = fmul float %i.wc, -2.000000e+00
  %i.we = extractelement <2 x float> %i.wb, i64 1
  %i.wf = tail call float @llvm.fmuladd.f32(float %i.wd, float %i.we, float 1.000000e+00)
  br label %_ZL13blend_overlayff.exit.i

_ZL13blend_overlayff.exit.i:                      ; preds = %bb.ao, %bb.an
  %i.wg = phi float [ %i.wa, %bb.an ], [ %i.wf, %bb.ao ]
  %i.wh = extractelement <2 x float> %i.ty, i64 0 ; 2 uses
  %3 = fneg float %i.wh
  %i.wi = extractelement <2 x float> %i.ty, i64 1 ; 2 uses
  %i.wj = fsub nnan <2 x float> splat (float 1.000000e+00), %i.ty ; 2 uses
  %i.wk = fmul float %i.wh, %i.wi
  %i.wl = shufflevector <2 x float> %i.ty, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.wm = shufflevector <2 x float> <float poison, float 1.000000e+00>, <2 x float> %i.wj, <4 x i32> <i32 3, i32 3, i32 3, i32 1>
  %i.wn = fmul <4 x float> %i.wl, %i.wm
  %i.wo = extractelement <2 x float> %i.wj, i64 0
  %i.wp = fmul float %i.wo, %i.wi
  %i.wq = shufflevector <2 x float> %i.uy, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.wr = insertelement <4 x float> %i.wq, float 1.000000e+00, i64 3
  %i.ws = shufflevector <2 x float> %i.ul, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.wt = shufflevector <4 x float> %i.wr, <4 x float> %i.ws, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.wu = fmul <4 x float> %i.wn, %i.wt
  %i.wv = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.wk, i64 0
  %i.ww = shufflevector <4 x float> %i.wv, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.wx = insertelement <4 x float> poison, float %i.wg, i64 0
  %i.wy = insertelement <4 x float> %i.wx, float %i.vv, i64 1
  %i.wz = insertelement <4 x float> %i.wy, float %i.vk, i64 2
  %i.xa = shufflevector <2 x float> %i.ty, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.xb = shufflevector <4 x float> %i.wz, <4 x float> %i.xa, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.xc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ww, <4 x float> %i.xb, <4 x float> %i.wu)
  %i.xd = insertelement <4 x float> poison, float %i.wp, i64 0
  %i.xe = insertelement <4 x float> %i.xd, float %3, i64 1
  %i.xf = shufflevector <4 x float> %i.xe, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.xg = shufflevector <2 x float> %i.uy, <2 x float> %i.ur, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.xh = shufflevector <4 x float> %i.xg, <4 x float> %i.xa, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.xi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xf, <4 x float> %i.xh, <4 x float> %i.xc) ; 2 uses
  %i.xj = fcmp oge <4 x float> %i.xi, zeroinitializer
  %i.xk = select <4 x i1> %i.xj, <4 x float> %i.xi, <4 x float> zeroinitializer ; 2 uses
  %i.xl = fcmp ole <4 x float> %i.xk, splat (float 1.000000e+00)
  %i.xm = select <4 x i1> %i.xl, <4 x float> %i.xk, <4 x float> splat (float 1.000000e+00)
  %i.xn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xm, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.xo = fptoui <4 x float> %i.xn to <4 x i8>
  %i.xp = bitcast <4 x i8> %i.xo to i32
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.ap:                                            ; preds = %bb.b
  %i.xq = lshr i32 %i.q, 8
  %i.xr = lshr i32 %i.q, 16
  %i.xs = uitofp nneg i32 %i.t to float
  %i.xt = lshr i32 %i.s, 8
  %i.xu = lshr i32 %i.s, 16
  %i.xv = uitofp nneg i32 %i.u to float
  %i.xw = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %i.xx = insertelement <4 x i32> %i.xw, i32 %i.xq, i64 1
  %i.xy = insertelement <4 x i32> %i.xx, i32 %i.s, i64 2
  %i.xz = insertelement <4 x i32> %i.xy, i32 %i.xt, i64 3
  %i.ya = and <4 x i32> %i.xz, splat (i32 255)
  %i.yb = uitofp nneg <4 x i32> %i.ya to <4 x float> ; 2 uses
  %i.yc = shufflevector <4 x float> %i.yb, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.yd = fdiv <2 x float> %i.yc, splat (float 2.550000e+02)
  %i.ye = shufflevector <4 x float> %i.yb, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.yf = fdiv <2 x float> %i.ye, splat (float 2.550000e+02)
  %i.yg = insertelement <2 x float> poison, float %i.xv, i64 0
  %i.yh = insertelement <2 x float> %i.yg, float %i.xs, i64 1
  %i.yi = fdiv <2 x float> %i.yh, splat (float 2.550000e+02) ; 10 uses
  %i.yj = extractelement <2 x float> %i.yi, i64 1 ; 3 uses
  %i.yk = fcmp ogt <2 x float> %i.yi, zeroinitializer ; 3 uses
  %i.yl = shufflevector <2 x float> %i.yi, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ym = fdiv <2 x float> %i.yd, %i.yl
  %i.yn = shufflevector <2 x i1> %i.yk, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.yo = select <2 x i1> %i.yn, <2 x float> %i.ym, <2 x float> zeroinitializer ; 3 uses
  %i.yp = extractelement <2 x float> %i.yi, i64 0 ; 2 uses
  %i.yq = and i32 %i.xr, 255
  %i.yr = uitofp nneg i32 %i.yq to float
  %i.ys = and i32 %i.xu, 255
  %i.yt = uitofp nneg i32 %i.ys to float
  %i.yu = insertelement <2 x float> poison, float %i.yt, i64 0
  %i.yv = insertelement <2 x float> %i.yu, float %i.yr, i64 1
  %i.yw = fdiv <2 x float> %i.yv, splat (float 2.550000e+02)
  %i.yx = fdiv <2 x float> %i.yw, %i.yi
  %i.yy = select <2 x i1> %i.yk, <2 x float> %i.yx, <2 x float> zeroinitializer ; 3 uses
  %i.yz = shufflevector <2 x float> %i.yi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.za = fdiv <2 x float> %i.yf, %i.yz
  %i.zb = shufflevector <2 x i1> %i.yk, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.zc = select <2 x i1> %i.zb, <2 x float> %i.za, <2 x float> zeroinitializer ; 3 uses
  %i.zd = extractelement <2 x float> %i.yy, i64 0 ; 2 uses
  %i.ze = extractelement <2 x float> %i.yy, i64 1 ; 3 uses
  %i.zf = fcmp ole float %i.ze, %i.zd
  %.sroa.speculated.i191.i = select i1 %i.zf, float %i.ze, float %i.zd
  %i.zg = fcmp ole <2 x float> %i.yo, %i.zc
  %i.zh = select <2 x i1> %i.zg, <2 x float> %i.yo, <2 x float> %i.zc
  %i.zi = fadd float %i.yj, %i.yp
  %i.zj = fmul float %i.yj, %i.yp                 ; 2 uses
  %i.zk = fsub nnan <2 x float> splat (float 1.000000e+00), %i.yi ; 2 uses
  %i.zl = extractelement <2 x float> %i.zk, i64 0
  %i.zm = fmul float %i.yj, %i.zl                 ; 2 uses
  %i.zn = fmul float %i.zm, %i.ze
  %i.zo = tail call float @llvm.fmuladd.f32(float %i.zj, float %.sroa.speculated.i191.i, float %i.zn)
  %shift114 = shufflevector <2 x float> %i.zk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop115 = fmul <2 x float> %shift114, %i.yi
  %i.zp = fneg <2 x float> %i.yi
  %i.zq = shufflevector <2 x float> %i.yy, <2 x float> %i.zp, <2 x i32> <i32 0, i32 3>
  %i.zr = insertelement <2 x float> poison, float %i.zo, i64 0
  %i.zs = insertelement <2 x float> %i.zr, float %i.zi, i64 1
  %i.zt = insertelement <2 x float> poison, float %i.zm, i64 0
  %i.zu = shufflevector <2 x float> %i.zt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zv = fmul <2 x float> %i.yo, %i.zu
  %i.zw = insertelement <2 x float> poison, float %i.zj, i64 0
  %i.zx = shufflevector <2 x float> %i.zw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zx, <2 x float> %i.zh, <2 x float> %i.zv)
  %i.zz = shufflevector <2 x float> %foldExtExtBinop115, <2 x float> %i.yi, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.aaa = shufflevector <2 x float> %i.zc, <2 x float> %i.zq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aab = shufflevector <2 x float> %i.zy, <2 x float> %i.zs, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aac = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zz, <4 x float> %i.aaa, <4 x float> %i.aab) ; 2 uses
  %i.aad = fcmp oge <4 x float> %i.aac, zeroinitializer
  %i.aae = select <4 x i1> %i.aad, <4 x float> %i.aac, <4 x float> zeroinitializer ; 2 uses
  %i.aaf = fcmp ole <4 x float> %i.aae, splat (float 1.000000e+00)
  %i.aag = select <4 x i1> %i.aaf, <4 x float> %i.aae, <4 x float> splat (float 1.000000e+00)
  %i.aah = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aag, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.aai = fptoui <4 x float> %i.aah to <4 x i8>
  %i.aaj = bitcast <4 x i8> %i.aai to i32
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.aq:                                            ; preds = %bb.b
  %i.aak = lshr i32 %i.q, 8
  %i.aal = lshr i32 %i.q, 16
  %i.aam = uitofp nneg i32 %i.t to float
  %i.aan = lshr i32 %i.s, 8
  %i.aao = lshr i32 %i.s, 16
  %i.aap = uitofp nneg i32 %i.u to float
  %i.aaq = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %i.aar = insertelement <4 x i32> %i.aaq, i32 %i.aak, i64 1
  %i.aas = insertelement <4 x i32> %i.aar, i32 %i.s, i64 2
  %i.aat = insertelement <4 x i32> %i.aas, i32 %i.aan, i64 3
  %i.aau = and <4 x i32> %i.aat, splat (i32 255)
  %i.aav = uitofp nneg <4 x i32> %i.aau to <4 x float> ; 2 uses
  %i.aaw = shufflevector <4 x float> %i.aav, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.aax = fdiv <2 x float> %i.aaw, splat (float 2.550000e+02)
  %i.aay = shufflevector <4 x float> %i.aav, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.aaz = fdiv <2 x float> %i.aay, splat (float 2.550000e+02)
  %i.aba = insertelement <2 x float> poison, float %i.aap, i64 0
  %i.abb = insertelement <2 x float> %i.aba, float %i.aam, i64 1
  %i.abc = fdiv <2 x float> %i.abb, splat (float 2.550000e+02) ; 10 uses
  %i.abd = extractelement <2 x float> %i.abc, i64 1 ; 3 uses
  %i.abe = fcmp ogt <2 x float> %i.abc, zeroinitializer ; 3 uses
  %i.abf = shufflevector <2 x float> %i.abc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.abg = fdiv <2 x float> %i.aax, %i.abf
  %i.abh = shufflevector <2 x i1> %i.abe, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.abi = select <2 x i1> %i.abh, <2 x float> %i.abg, <2 x float> zeroinitializer ; 3 uses
  %i.abj = extractelement <2 x float> %i.abc, i64 0 ; 2 uses
  %i.abk = and i32 %i.aal, 255
  %i.abl = uitofp nneg i32 %i.abk to float
  %i.abm = and i32 %i.aao, 255
  %i.abn = uitofp nneg i32 %i.abm to float
  %i.abo = insertelement <2 x float> poison, float %i.abn, i64 0
  %i.abp = insertelement <2 x float> %i.abo, float %i.abl, i64 1
  %i.abq = fdiv <2 x float> %i.abp, splat (float 2.550000e+02)
  %i.abr = fdiv <2 x float> %i.abq, %i.abc
  %i.abs = select <2 x i1> %i.abe, <2 x float> %i.abr, <2 x float> zeroinitializer ; 3 uses
  %i.abt = shufflevector <2 x float> %i.abc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abu = fdiv <2 x float> %i.aaz, %i.abt
  %i.abv = shufflevector <2 x i1> %i.abe, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.abw = select <2 x i1> %i.abv, <2 x float> %i.abu, <2 x float> zeroinitializer ; 3 uses
  %i.abx = extractelement <2 x float> %i.abs, i64 0 ; 2 uses
  %i.aby = extractelement <2 x float> %i.abs, i64 1 ; 3 uses
  %i.abz = fcmp oge float %i.aby, %i.abx
  %.sroa.speculated.i194.i = select i1 %i.abz, float %i.aby, float %i.abx
  %i.aca = fcmp oge <2 x float> %i.abi, %i.abw
  %i.acb = select <2 x i1> %i.aca, <2 x float> %i.abi, <2 x float> %i.abw
  %i.acc = fadd float %i.abd, %i.abj
  %i.acd = fmul float %i.abd, %i.abj              ; 2 uses
  %i.ace = fsub nnan <2 x float> splat (float 1.000000e+00), %i.abc ; 2 uses
  %i.acf = extractelement <2 x float> %i.ace, i64 0
  %i.acg = fmul float %i.abd, %i.acf              ; 2 uses
  %i.ach = fmul float %i.acg, %i.aby
  %i.aci = tail call float @llvm.fmuladd.f32(float %i.acd, float %.sroa.speculated.i194.i, float %i.ach)
  %shift117 = shufflevector <2 x float> %i.ace, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop118 = fmul <2 x float> %shift117, %i.abc
  %i.acj = fneg <2 x float> %i.abc
  %i.ack = shufflevector <2 x float> %i.abs, <2 x float> %i.acj, <2 x i32> <i32 0, i32 3>
  %i.acl = insertelement <2 x float> poison, float %i.aci, i64 0
  %i.acm = insertelement <2 x float> %i.acl, float %i.acc, i64 1
  %i.acn = insertelement <2 x float> poison, float %i.acg, i64 0
  %i.aco = shufflevector <2 x float> %i.acn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acp = fmul <2 x float> %i.abi, %i.aco
  %i.acq = insertelement <2 x float> poison, float %i.acd, i64 0
  %i.acr = shufflevector <2 x float> %i.acq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acr, <2 x float> %i.acb, <2 x float> %i.acp)
  %i.act = shufflevector <2 x float> %foldExtExtBinop118, <2 x float> %i.abc, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.acu = shufflevector <2 x float> %i.abw, <2 x float> %i.ack, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.acv = shufflevector <2 x float> %i.acs, <2 x float> %i.acm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.acw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.act, <4 x float> %i.acu, <4 x float> %i.acv) ; 2 uses
  %i.acx = fcmp oge <4 x float> %i.acw, zeroinitializer
  %i.acy = select <4 x i1> %i.acx, <4 x float> %i.acw, <4 x float> zeroinitializer ; 2 uses
  %i.acz = fcmp ole <4 x float> %i.acy, splat (float 1.000000e+00)
  %i.ada = select <4 x i1> %i.acz, <4 x float> %i.acy, <4 x float> splat (float 1.000000e+00)
  %i.adb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ada, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.adc = fptoui <4 x float> %i.adb to <4 x i8>
  %i.add = bitcast <4 x i8> %i.adc to i32
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.ar:                                            ; preds = %bb.b
  %i.ade = and i32 %i.q, 255
  %i.adf = lshr i32 %i.q, 8
  %i.adg = lshr i32 %i.q, 16
  %i.adh = uitofp nneg i32 %i.t to float
  %i.adi = and i32 %i.s, 255
  %i.adj = lshr i32 %i.s, 8
  %i.adk = lshr i32 %i.s, 16
  %i.adl = uitofp nneg i32 %i.u to float
  %i.adm = insertelement <2 x float> poison, float %i.adh, i64 0
  %i.adn = insertelement <2 x float> %i.adm, float %i.adl, i64 1
  %i.ado = fdiv <2 x float> %i.adn, splat (float 2.550000e+02) ; 8 uses
  %i.adp = extractelement <2 x float> %i.ado, i64 0 ; 3 uses
  %i.adq = fcmp ogt float %i.adp, 0.000000e+00    ; 2 uses
  %i.adr = shufflevector <2 x float> %i.ado, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ads = insertelement <2 x i1> poison, i1 %i.adq, i64 0
  %i.adt = shufflevector <2 x i1> %i.ads, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.adu = extractelement <2 x float> %i.ado, i64 1 ; 3 uses
  %i.adv = fcmp ogt float %i.adu, 0.000000e+00    ; 2 uses
  %i.adw = insertelement <4 x i32> poison, i32 %i.adf, i64 0
  %i.adx = insertelement <4 x i32> %i.adw, i32 %i.adj, i64 1
  %i.ady = insertelement <4 x i32> %i.adx, i32 %i.adg, i64 2
  %i.adz = insertelement <4 x i32> %i.ady, i32 %i.adk, i64 3
  %i.aea = and <4 x i32> %i.adz, splat (i32 255)
  %i.aeb = uitofp nneg <4 x i32> %i.aea to <4 x float> ; 2 uses
  %i.aec = shufflevector <4 x float> %i.aeb, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.aed = fdiv <2 x float> %i.aec, splat (float 2.550000e+02)
  %i.aee = fdiv <2 x float> %i.aed, %i.adr
  %i.aef = select <2 x i1> %i.adt, <2 x float> %i.aee, <2 x float> zeroinitializer ; 3 uses
  %i.aeg = shufflevector <4 x float> %i.aeb, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.aeh = fdiv <2 x float> %i.aeg, splat (float 2.550000e+02)
  %i.aei = shufflevector <2 x float> %i.ado, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aej = fdiv <2 x float> %i.aeh, %i.aei
  %i.aek = insertelement <2 x i1> poison, i1 %i.adv, i64 0
  %i.ael = shufflevector <2 x i1> %i.aek, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.aem = select <2 x i1> %i.ael, <2 x float> %i.aej, <2 x float> zeroinitializer ; 3 uses
  %i.aen = uitofp nneg i32 %i.ade to float
  %i.aeo = uitofp nneg i32 %i.adi to float
  %i.aep = insertelement <2 x float> poison, float %i.aen, i64 0
  %i.aeq = insertelement <2 x float> %i.aep, float %i.aeo, i64 1
  %i.aer = fdiv <2 x float> %i.aeq, splat (float 2.550000e+02)
  %i.aes = fdiv <2 x float> %i.aer, %i.ado        ; 2 uses
  %i.aet = extractelement <2 x float> %i.aes, i64 0
  %i.aeu = select i1 %i.adq, float %i.aet, float 0.000000e+00 ; 3 uses
  %i.aev = extractelement <2 x float> %i.aes, i64 1
  %i.aew = select i1 %i.adv, float %i.aev, float 0.000000e+00 ; 3 uses
  %i.aex = extractelement <2 x float> %i.aem, i64 1 ; 2 uses
  %i.aey = fcmp ugt float %i.aex, 0.000000e+00
  br i1 %i.aey, label %bb.as, label %_ZL17blend_color_dodgeff.exit202.i

bb.as:                                            ; preds = %bb.ar
  %i.aez = extractelement <2 x float> %i.aef, i64 1 ; 2 uses
  %i.afa = fcmp ult float %i.aez, 1.000000e+00
  br i1 %i.afa, label %bb.at, label %_ZL17blend_color_dodgeff.exit202.i

bb.at:                                            ; preds = %bb.as
  %i.afb = fsub float 1.000000e+00, %i.aez
  %i.afc = fdiv float %i.aex, %i.afb              ; 2 uses
  %i.afd = fcmp oge float %i.afc, 1.000000e+00
  %.sroa.speculated.i201.i = select i1 %i.afd, float 1.000000e+00, float %i.afc
  br label %_ZL17blend_color_dodgeff.exit202.i

_ZL17blend_color_dodgeff.exit202.i:               ; preds = %bb.at, %bb.as, %bb.ar
  %.0.i200.i = phi float [ %.sroa.speculated.i201.i, %bb.at ], [ 0.000000e+00, %bb.ar ], [ 1.000000e+00, %bb.as ]
  %i.afe = extractelement <2 x float> %i.aem, i64 0 ; 2 uses
  %i.aff = fcmp ugt float %i.afe, 0.000000e+00
  br i1 %i.aff, label %bb.au, label %_ZL17blend_color_dodgeff.exit199.i

bb.au:                                            ; preds = %_ZL17blend_color_dodgeff.exit202.i
  %i.afg = extractelement <2 x float> %i.aef, i64 0 ; 2 uses
  %i.afh = fcmp ult float %i.afg, 1.000000e+00
  br i1 %i.afh, label %bb.av, label %_ZL17blend_color_dodgeff.exit199.i

bb.av:                                            ; preds = %bb.au
  %i.afi = fsub float 1.000000e+00, %i.afg
  %i.afj = fdiv float %i.afe, %i.afi              ; 2 uses
  %i.afk = fcmp oge float %i.afj, 1.000000e+00
  %.sroa.speculated.i198.i = select i1 %i.afk, float 1.000000e+00, float %i.afj
  br label %_ZL17blend_color_dodgeff.exit199.i

_ZL17blend_color_dodgeff.exit199.i:               ; preds = %bb.av, %bb.au, %_ZL17blend_color_dodgeff.exit202.i
  %.0.i197.i = phi float [ %.sroa.speculated.i198.i, %bb.av ], [ 0.000000e+00, %_ZL17blend_color_dodgeff.exit202.i ], [ 1.000000e+00, %bb.au ]
  %i.afl = fcmp ugt float %i.aew, 0.000000e+00
  br i1 %i.afl, label %bb.aw, label %_ZL17blend_color_dodgeff.exit.i

bb.aw:                                            ; preds = %_ZL17blend_color_dodgeff.exit199.i
  %i.afm = fcmp ult float %i.aeu, 1.000000e+00
  br i1 %i.afm, label %bb.ax, label %_ZL17blend_color_dodgeff.exit.i

bb.ax:                                            ; preds = %bb.aw
  %i.afn = fsub float 1.000000e+00, %i.aeu
  %i.afo = fdiv float %i.aew, %i.afn              ; 2 uses
  %i.afp = fcmp oge float %i.afo, 1.000000e+00
  %.sroa.speculated.i196.i = select i1 %i.afp, float 1.000000e+00, float %i.afo
  br label %_ZL17blend_color_dodgeff.exit.i

_ZL17blend_color_dodgeff.exit.i:                  ; preds = %bb.ax, %bb.aw, %_ZL17blend_color_dodgeff.exit199.i
  %.0.i195.i = phi float [ %.sroa.speculated.i196.i, %bb.ax ], [ 0.000000e+00, %_ZL17blend_color_dodgeff.exit199.i ], [ 1.000000e+00, %bb.aw ]
  %4 = fneg float %i.adp
  %5 = fsub nnan <2 x float> splat (float 1.000000e+00), %i.ado ; 2 uses
  %i.afq = fmul float %i.adp, %i.adu
  %i.afr = shufflevector <2 x float> %i.ado, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.afs = shufflevector <2 x float> <float poison, float 1.000000e+00>, <2 x float> %5, <4 x i32> <i32 3, i32 3, i32 3, i32 1>
  %i.aft = fmul <4 x float> %i.afr, %i.afs
  %i.afu = extractelement <2 x float> %5, i64 0
  %i.afv = fmul float %i.afu, %i.adu
  %i.afw = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.aeu, i64 0
  %i.afx = shufflevector <2 x float> %i.aef, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.afy = shufflevector <4 x float> %i.afw, <4 x float> %i.afx, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.afz = fmul <4 x float> %i.aft, %i.afy
  %i.aga = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.afq, i64 0
  %i.agb = shufflevector <4 x float> %i.aga, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.agc = insertelement <4 x float> poison, float %.0.i195.i, i64 0
  %i.agd = insertelement <4 x float> %i.agc, float %.0.i197.i, i64 1
  %i.age = insertelement <4 x float> %i.agd, float %.0.i200.i, i64 2
  %i.agf = shufflevector <2 x float> %i.ado, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.agg = shufflevector <4 x float> %i.age, <4 x float> %i.agf, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.agh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.agb, <4 x float> %i.agg, <4 x float> %i.afz)
  %i.agi = insertelement <4 x float> poison, float %i.afv, i64 0
  %i.agj = insertelement <4 x float> %i.agi, float %4, i64 1
  %i.agk = shufflevector <4 x float> %i.agj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.agl = insertelement <4 x float> poison, float %i.aew, i64 0
  %i.agm = shufflevector <2 x float> %i.aem, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.agn = shufflevector <4 x float> %i.agl, <4 x float> %i.agm, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ago = shufflevector <4 x float> %i.agn, <4 x float> %i.agf, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.agp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.agk, <4 x float> %i.ago, <4 x float> %i.agh) ; 2 uses
  %i.agq = fcmp oge <4 x float> %i.agp, zeroinitializer
  %i.agr = select <4 x i1> %i.agq, <4 x float> %i.agp, <4 x float> zeroinitializer ; 2 uses
  %i.ags = fcmp ole <4 x float> %i.agr, splat (float 1.000000e+00)
  %i.agt = select <4 x i1> %i.ags, <4 x float> %i.agr, <4 x float> splat (float 1.000000e+00)
  %i.agu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.agt, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.agv = fptoui <4 x float> %i.agu to <4 x i8>
  %i.agw = bitcast <4 x i8> %i.agv to i32
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.ay:                                            ; preds = %bb.b
  %i.agx = and i32 %i.q, 255
  %i.agy = lshr i32 %i.q, 8
  %i.agz = lshr i32 %i.q, 16
  %i.aha = uitofp nneg i32 %i.t to float
  %i.ahb = and i32 %i.s, 255
  %i.ahc = lshr i32 %i.s, 8
  %i.ahd = lshr i32 %i.s, 16
  %i.ahe = uitofp nneg i32 %i.u to float
  %i.ahf = insertelement <2 x float> poison, float %i.aha, i64 0
  %i.ahg = insertelement <2 x float> %i.ahf, float %i.ahe, i64 1
  %i.ahh = fdiv <2 x float> %i.ahg, splat (float 2.550000e+02) ; 8 uses
  %i.ahi = extractelement <2 x float> %i.ahh, i64 0 ; 3 uses
  %i.ahj = fcmp ogt float %i.ahi, 0.000000e+00    ; 2 uses
  %i.ahk = shufflevector <2 x float> %i.ahh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahl = insertelement <2 x i1> poison, i1 %i.ahj, i64 0
  %i.ahm = shufflevector <2 x i1> %i.ahl, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ahn = extractelement <2 x float> %i.ahh, i64 1 ; 3 uses
  %i.aho = fcmp ogt float %i.ahn, 0.000000e+00    ; 2 uses
  %i.ahp = insertelement <4 x i32> poison, i32 %i.agy, i64 0
  %i.ahq = insertelement <4 x i32> %i.ahp, i32 %i.ahc, i64 1
  %i.ahr = insertelement <4 x i32> %i.ahq, i32 %i.agz, i64 2
  %i.ahs = insertelement <4 x i32> %i.ahr, i32 %i.ahd, i64 3
  %i.aht = and <4 x i32> %i.ahs, splat (i32 255)
  %i.ahu = uitofp nneg <4 x i32> %i.aht to <4 x float> ; 2 uses
  %i.ahv = shufflevector <4 x float> %i.ahu, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ahw = fdiv <2 x float> %i.ahv, splat (float 2.550000e+02)
  %i.ahx = fdiv <2 x float> %i.ahw, %i.ahk
  %i.ahy = select <2 x i1> %i.ahm, <2 x float> %i.ahx, <2 x float> zeroinitializer ; 3 uses
  %i.ahz = shufflevector <4 x float> %i.ahu, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.aia = fdiv <2 x float> %i.ahz, splat (float 2.550000e+02)
  %i.aib = shufflevector <2 x float> %i.ahh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aic = fdiv <2 x float> %i.aia, %i.aib
  %i.aid = insertelement <2 x i1> poison, i1 %i.aho, i64 0
  %i.aie = shufflevector <2 x i1> %i.aid, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.aif = select <2 x i1> %i.aie, <2 x float> %i.aic, <2 x float> zeroinitializer ; 3 uses
  %i.aig = uitofp nneg i32 %i.agx to float
  %i.aih = uitofp nneg i32 %i.ahb to float
  %i.aii = insertelement <2 x float> poison, float %i.aig, i64 0
  %i.aij = insertelement <2 x float> %i.aii, float %i.aih, i64 1
  %i.aik = fdiv <2 x float> %i.aij, splat (float 2.550000e+02)
  %i.ail = fdiv <2 x float> %i.aik, %i.ahh        ; 2 uses
  %i.aim = extractelement <2 x float> %i.ail, i64 0
  %i.ain = select i1 %i.ahj, float %i.aim, float 0.000000e+00 ; 3 uses
  %i.aio = extractelement <2 x float> %i.ail, i64 1
  %i.aip = select i1 %i.aho, float %i.aio, float 0.000000e+00 ; 3 uses
  %i.aiq = extractelement <2 x float> %i.aif, i64 1 ; 2 uses
  %i.air = fcmp ult float %i.aiq, 1.000000e+00
  br i1 %i.air, label %bb.az, label %_ZL16blend_color_burnff.exit210.i

bb.az:                                            ; preds = %bb.ay
  %i.ais = extractelement <2 x float> %i.ahy, i64 1 ; 2 uses
  %i.ait = fcmp ugt float %i.ais, 0.000000e+00
  br i1 %i.ait, label %bb.ba, label %_ZL16blend_color_burnff.exit210.i

bb.ba:                                            ; preds = %bb.az
  %i.aiu = fsub float 1.000000e+00, %i.aiq
  %i.aiv = fdiv float %i.aiu, %i.ais              ; 2 uses
  %i.aiw = fcmp oge float %i.aiv, 1.000000e+00
  %.sroa.speculated.i209.i = select i1 %i.aiw, float 1.000000e+00, float %i.aiv
  %i.aix = fsub float 1.000000e+00, %.sroa.speculated.i209.i
  br label %_ZL16blend_color_burnff.exit210.i

_ZL16blend_color_burnff.exit210.i:                ; preds = %bb.ba, %bb.az, %bb.ay
  %.0.i208.i = phi float [ %i.aix, %bb.ba ], [ 1.000000e+00, %bb.ay ], [ 0.000000e+00, %bb.az ]
  %i.aiy = extractelement <2 x float> %i.aif, i64 0 ; 2 uses
  %i.aiz = fcmp ult float %i.aiy, 1.000000e+00
  br i1 %i.aiz, label %bb.bb, label %_ZL16blend_color_burnff.exit207.i

bb.bb:                                            ; preds = %_ZL16blend_color_burnff.exit210.i
  %i.aja = extractelement <2 x float> %i.ahy, i64 0 ; 2 uses
  %i.ajb = fcmp ugt float %i.aja, 0.000000e+00
  br i1 %i.ajb, label %bb.bc, label %_ZL16blend_color_burnff.exit207.i

bb.bc:                                            ; preds = %bb.bb
  %i.ajc = fsub float 1.000000e+00, %i.aiy
  %i.ajd = fdiv float %i.ajc, %i.aja              ; 2 uses
  %i.aje = fcmp oge float %i.ajd, 1.000000e+00
  %.sroa.speculated.i206.i = select i1 %i.aje, float 1.000000e+00, float %i.ajd
  %i.ajf = fsub float 1.000000e+00, %.sroa.speculated.i206.i
  br label %_ZL16blend_color_burnff.exit207.i

_ZL16blend_color_burnff.exit207.i:                ; preds = %bb.bc, %bb.bb, %_ZL16blend_color_burnff.exit210.i
  %.0.i205.i = phi float [ %i.ajf, %bb.bc ], [ 1.000000e+00, %_ZL16blend_color_burnff.exit210.i ], [ 0.000000e+00, %bb.bb ]
  %i.ajg = fcmp ult float %i.aip, 1.000000e+00
  br i1 %i.ajg, label %bb.bd, label %_ZL16blend_color_burnff.exit.i

bb.bd:                                            ; preds = %_ZL16blend_color_burnff.exit207.i
  %i.ajh = fcmp ugt float %i.ain, 0.000000e+00
  br i1 %i.ajh, label %bb.be, label %_ZL16blend_color_burnff.exit.i

bb.be:                                            ; preds = %bb.bd
  %i.aji = fsub float 1.000000e+00, %i.aip
  %i.ajj = fdiv float %i.aji, %i.ain              ; 2 uses
  %i.ajk = fcmp oge float %i.ajj, 1.000000e+00
  %.sroa.speculated.i204.i = select i1 %i.ajk, float 1.000000e+00, float %i.ajj
  %i.ajl = fsub float 1.000000e+00, %.sroa.speculated.i204.i
  br label %_ZL16blend_color_burnff.exit.i

_ZL16blend_color_burnff.exit.i:                   ; preds = %bb.be, %bb.bd, %_ZL16blend_color_burnff.exit207.i
  %.0.i203.i = phi float [ %i.ajl, %bb.be ], [ 1.000000e+00, %_ZL16blend_color_burnff.exit207.i ], [ 0.000000e+00, %bb.bd ]
  %6 = fneg float %i.ahi
  %7 = fsub nnan <2 x float> splat (float 1.000000e+00), %i.ahh ; 2 uses
  %i.ajm = fmul float %i.ahi, %i.ahn
  %i.ajn = shufflevector <2 x float> %i.ahh, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ajo = shufflevector <2 x float> <float poison, float 1.000000e+00>, <2 x float> %7, <4 x i32> <i32 3, i32 3, i32 3, i32 1>
  %i.ajp = fmul <4 x float> %i.ajn, %i.ajo
  %i.ajq = extractelement <2 x float> %7, i64 0
  %i.ajr = fmul float %i.ajq, %i.ahn
  %i.ajs = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ain, i64 0
  %i.ajt = shufflevector <2 x float> %i.ahy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aju = shufflevector <4 x float> %i.ajs, <4 x float> %i.ajt, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ajv = fmul <4 x float> %i.ajp, %i.aju
  %i.ajw = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ajm, i64 0
  %i.ajx = shufflevector <4 x float> %i.ajw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ajy = insertelement <4 x float> poison, float %.0.i203.i, i64 0
  %i.ajz = insertelement <4 x float> %i.ajy, float %.0.i205.i, i64 1
  %i.aka = insertelement <4 x float> %i.ajz, float %.0.i208.i, i64 2
  %i.akb = shufflevector <2 x float> %i.ahh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.akc = shufflevector <4 x float> %i.aka, <4 x float> %i.akb, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.akd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajx, <4 x float> %i.akc, <4 x float> %i.ajv)
  %i.ake = insertelement <4 x float> poison, float %i.ajr, i64 0
  %i.akf = insertelement <4 x float> %i.ake, float %6, i64 1
  %i.akg = shufflevector <4 x float> %i.akf, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.akh = insertelement <4 x float> poison, float %i.aip, i64 0
  %i.aki = shufflevector <2 x float> %i.aif, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.akj = shufflevector <4 x float> %i.akh, <4 x float> %i.aki, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.akk = shufflevector <4 x float> %i.akj, <4 x float> %i.akb, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.akl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akg, <4 x float> %i.akk, <4 x float> %i.akd) ; 2 uses
  %i.akm = fcmp oge <4 x float> %i.akl, zeroinitializer
  %i.akn = select <4 x i1> %i.akm, <4 x float> %i.akl, <4 x float> zeroinitializer ; 2 uses
  %i.ako = fcmp ole <4 x float> %i.akn, splat (float 1.000000e+00)
  %i.akp = select <4 x i1> %i.ako, <4 x float> %i.akn, <4 x float> splat (float 1.000000e+00)
  %i.akq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akp, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.akr = fptoui <4 x float> %i.akq to <4 x i8>
  %i.aks = bitcast <4 x i8> %i.akr to i32
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.bf:                                            ; preds = %bb.b
  %i.akt = and i32 %i.q, 255
  %i.aku = lshr i32 %i.q, 8
  %i.akv = lshr i32 %i.q, 16
  %i.akw = uitofp nneg i32 %i.t to float
  %i.akx = and i32 %i.s, 255
  %i.aky = lshr i32 %i.s, 8
  %i.akz = lshr i32 %i.s, 16
  %i.ala = uitofp nneg i32 %i.u to float
  %i.alb = insertelement <2 x float> poison, float %i.akw, i64 0
  %i.alc = insertelement <2 x float> %i.alb, float %i.ala, i64 1
  %i.ald = fdiv <2 x float> %i.alc, splat (float 2.550000e+02) ; 9 uses
  %i.ale = shufflevector <2 x float> %i.ald, <2 x float> poison, <2 x i32> zeroinitializer
  %i.alf = fcmp ogt <2 x float> %i.ald, zeroinitializer ; 3 uses
  %i.alg = shufflevector <2 x i1> %i.alf, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.alh = insertelement <4 x i32> poison, i32 %i.aku, i64 0
  %i.ali = insertelement <4 x i32> %i.alh, i32 %i.aky, i64 1
  %i.alj = insertelement <4 x i32> %i.ali, i32 %i.akv, i64 2
  %i.alk = insertelement <4 x i32> %i.alj, i32 %i.akz, i64 3
  %i.all = and <4 x i32> %i.alk, splat (i32 255)
  %i.alm = uitofp nneg <4 x i32> %i.all to <4 x float> ; 2 uses
  %i.aln = shufflevector <4 x float> %i.alm, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.alo = fdiv <2 x float> %i.aln, splat (float 2.550000e+02)
  %i.alp = fdiv <2 x float> %i.alo, %i.ale
  %i.alq = select <2 x i1> %i.alg, <2 x float> %i.alp, <2 x float> zeroinitializer ; 4 uses
  %i.alr = shufflevector <4 x float> %i.alm, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.als = fdiv <2 x float> %i.alr, splat (float 2.550000e+02)
  %i.alt = shufflevector <2 x float> %i.ald, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.alu = fdiv <2 x float> %i.als, %i.alt
  %i.alv = shufflevector <2 x i1> %i.alf, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.alw = select <2 x i1> %i.alv, <2 x float> %i.alu, <2 x float> zeroinitializer ; 5 uses
  %i.alx = uitofp nneg i32 %i.akt to float
  %i.aly = uitofp nneg i32 %i.akx to float
  %i.alz = insertelement <2 x float> poison, float %i.alx, i64 0
  %i.ama = insertelement <2 x float> %i.alz, float %i.aly, i64 1
  %i.amb = fdiv <2 x float> %i.ama, splat (float 2.550000e+02)
  %i.amc = fdiv <2 x float> %i.amb, %i.ald
  %i.amd = select <2 x i1> %i.alf, <2 x float> %i.amc, <2 x float> zeroinitializer ; 5 uses
  %i.ame = extractelement <2 x float> %i.alq, i64 1 ; 2 uses
  %i.amf = fcmp ugt float %i.ame, 5.000000e-01
  br i1 %i.amf, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.amg = fmul nnan float %i.ame, 2.000000e+00
  %i.amh = extractelement <2 x float> %i.alw, i64 1
  %i.ami = fmul float %i.amg, %i.amh
  br label %_ZL16blend_hard_lightff.exit212.i

bb.bh:                                            ; preds = %bb.bf
  %i.amj = shufflevector <2 x float> %i.alq, <2 x float> %i.alw, <2 x i32> <i32 1, i32 3>
  %i.amk = fsub <2 x float> splat (float 1.000000e+00), %i.amj ; 2 uses
  %i.aml = extractelement <2 x float> %i.amk, i64 0
  %i.amm = fmul float %i.aml, -2.000000e+00
  %i.amn = extractelement <2 x float> %i.amk, i64 1
  %i.amo = tail call float @llvm.fmuladd.f32(float %i.amm, float %i.amn, float 1.000000e+00)
  br label %_ZL16blend_hard_lightff.exit212.i

_ZL16blend_hard_lightff.exit212.i:                ; preds = %bb.bh, %bb.bg
  %i.amp = phi float [ %i.ami, %bb.bg ], [ %i.amo, %bb.bh ]
  %i.amq = extractelement <2 x float> %i.alq, i64 0 ; 3 uses
  %i.amr = fcmp ugt float %i.amq, 5.000000e-01
  br i1 %i.amr, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_ZL16blend_hard_lightff.exit212.i
  %i.ams = fmul nnan float %i.amq, 2.000000e+00
  %i.amt = extractelement <2 x float> %i.alw, i64 0
  %i.amu = fmul float %i.ams, %i.amt
  br label %_ZL16blend_hard_lightff.exit211.i

bb.bj:                                            ; preds = %_ZL16blend_hard_lightff.exit212.i
  %i.amv = fsub float 1.000000e+00, %i.amq
  %i.amw = extractelement <2 x float> %i.alw, i64 0
  %i.amx = fsub float 1.000000e+00, %i.amw
  %i.amy = fmul float %i.amv, -2.000000e+00
  %i.amz = tail call float @llvm.fmuladd.f32(float %i.amy, float %i.amx, float 1.000000e+00)
  br label %_ZL16blend_hard_lightff.exit211.i

_ZL16blend_hard_lightff.exit211.i:                ; preds = %bb.bj, %bb.bi
  %i.ana = phi float [ %i.amu, %bb.bi ], [ %i.amz, %bb.bj ]
  %i.anb = extractelement <2 x float> %i.amd, i64 0 ; 2 uses
  %i.anc = fcmp ugt float %i.anb, 5.000000e-01
  br i1 %i.anc, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_ZL16blend_hard_lightff.exit211.i
  %i.and = fmul nnan float %i.anb, 2.000000e+00
  %i.ane = extractelement <2 x float> %i.amd, i64 1
  %i.anf = fmul float %i.and, %i.ane
  br label %_ZL16blend_hard_lightff.exit.i

bb.bl:                                            ; preds = %_ZL16blend_hard_lightff.exit211.i
  %i.ang = fsub <2 x float> splat (float 1.000000e+00), %i.amd ; 2 uses
  %i.anh = extractelement <2 x float> %i.ang, i64 0
  %i.ani = fmul float %i.anh, -2.000000e+00
  %i.anj = extractelement <2 x float> %i.ang, i64 1
  %i.ank = tail call float @llvm.fmuladd.f32(float %i.ani, float %i.anj, float 1.000000e+00)
  br label %_ZL16blend_hard_lightff.exit.i

_ZL16blend_hard_lightff.exit.i:                   ; preds = %bb.bl, %bb.bk
  %i.anl = phi float [ %i.anf, %bb.bk ], [ %i.ank, %bb.bl ]
  %i.anm = extractelement <2 x float> %i.ald, i64 0 ; 2 uses
  %8 = fneg float %i.anm
  %i.ann = extractelement <2 x float> %i.ald, i64 1 ; 2 uses
  %i.ano = fsub nnan <2 x float> splat (float 1.000000e+00), %i.ald ; 2 uses
  %i.anp = fmul float %i.anm, %i.ann
  %i.anq = shufflevector <2 x float> %i.ald, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.anr = shufflevector <2 x float> <float poison, float 1.000000e+00>, <2 x float> %i.ano, <4 x i32> <i32 3, i32 3, i32 3, i32 1>
  %i.ans = fmul <4 x float> %i.anq, %i.anr
  %i.ant = extractelement <2 x float> %i.ano, i64 0
  %i.anu = fmul float %i.ant, %i.ann
  %i.anv = shufflevector <2 x float> %i.amd, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.anw = insertelement <4 x float> %i.anv, float 1.000000e+00, i64 3
  %i.anx = shufflevector <2 x float> %i.alq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.any = shufflevector <4 x float> %i.anw, <4 x float> %i.anx, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.anz = fmul <4 x float> %i.ans, %i.any
  %i.aoa = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.anp, i64 0
  %i.aob = shufflevector <4 x float> %i.aoa, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aoc = insertelement <4 x float> poison, float %i.anl, i64 0
  %i.aod = insertelement <4 x float> %i.aoc, float %i.ana, i64 1
  %i.aoe = insertelement <4 x float> %i.aod, float %i.amp, i64 2
  %i.aof = shufflevector <2 x float> %i.ald, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aog = shufflevector <4 x float> %i.aoe, <4 x float> %i.aof, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aoh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aob, <4 x float> %i.aog, <4 x float> %i.anz)
  %i.aoi = insertelement <4 x float> poison, float %i.anu, i64 0
  %i.aoj = insertelement <4 x float> %i.aoi, float %8, i64 1
  %i.aok = shufflevector <4 x float> %i.aoj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aol = shufflevector <2 x float> %i.amd, <2 x float> %i.alw, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.aom = shufflevector <4 x float> %i.aol, <4 x float> %i.aof, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aon = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aok, <4 x float> %i.aom, <4 x float> %i.aoh) ; 2 uses
  %i.aoo = fcmp oge <4 x float> %i.aon, zeroinitializer
  %i.aop = select <4 x i1> %i.aoo, <4 x float> %i.aon, <4 x float> zeroinitializer ; 2 uses
  %i.aoq = fcmp ole <4 x float> %i.aop, splat (float 1.000000e+00)
  %i.aor = select <4 x i1> %i.aoq, <4 x float> %i.aop, <4 x float> splat (float 1.000000e+00)
  %i.aos = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aor, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.aot = fptoui <4 x float> %i.aos to <4 x i8>
  %i.aou = bitcast <4 x i8> %i.aot to i32
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.bm:                                            ; preds = %bb.b
  %i.aov = and i32 %i.q, 255
  %i.aow = lshr i32 %i.q, 8
  %i.aox = lshr i32 %i.q, 16
  %i.aoy = uitofp nneg i32 %i.t to float
  %i.aoz = and i32 %i.s, 255
  %i.apa = lshr i32 %i.s, 8
  %i.apb = lshr i32 %i.s, 16
  %i.apc = uitofp nneg i32 %i.u to float
  %i.apd = insertelement <2 x float> poison, float %i.aoy, i64 0
  %i.ape = insertelement <2 x float> %i.apd, float %i.apc, i64 1
  %i.apf = fdiv <2 x float> %i.ape, splat (float 2.550000e+02) ; 8 uses
  %i.apg = extractelement <2 x float> %i.apf, i64 0 ; 3 uses
  %i.aph = fcmp ogt float %i.apg, 0.000000e+00    ; 2 uses
  %i.api = shufflevector <2 x float> %i.apf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.apj = insertelement <2 x i1> poison, i1 %i.aph, i64 0
  %i.apk = shufflevector <2 x i1> %i.apj, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.apl = extractelement <2 x float> %i.apf, i64 1 ; 3 uses
  %i.apm = fcmp ogt float %i.apl, 0.000000e+00    ; 2 uses
  %i.apn = insertelement <4 x i32> poison, i32 %i.aow, i64 0
  %i.apo = insertelement <4 x i32> %i.apn, i32 %i.apa, i64 1
  %i.app = insertelement <4 x i32> %i.apo, i32 %i.aox, i64 2
  %i.apq = insertelement <4 x i32> %i.app, i32 %i.apb, i64 3
  %i.apr = and <4 x i32> %i.apq, splat (i32 255)
  %i.aps = uitofp nneg <4 x i32> %i.apr to <4 x float> ; 2 uses
  %i.apt = shufflevector <4 x float> %i.aps, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.apu = fdiv <2 x float> %i.apt, splat (float 2.550000e+02)
  %i.apv = fdiv <2 x float> %i.apu, %i.api
  %i.apw = select <2 x i1> %i.apk, <2 x float> %i.apv, <2 x float> zeroinitializer ; 3 uses
  %i.apx = shufflevector <4 x float> %i.aps, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.apy = fdiv <2 x float> %i.apx, splat (float 2.550000e+02)
  %i.apz = shufflevector <2 x float> %i.apf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aqa = fdiv <2 x float> %i.apy, %i.apz
  %i.aqb = insertelement <2 x i1> poison, i1 %i.apm, i64 0
  %i.aqc = shufflevector <2 x i1> %i.aqb, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.aqd = select <2 x i1> %i.aqc, <2 x float> %i.aqa, <2 x float> zeroinitializer ; 5 uses
  %i.aqe = uitofp nneg i32 %i.aov to float
  %i.aqf = uitofp nneg i32 %i.aoz to float
  %i.aqg = insertelement <2 x float> poison, float %i.aqe, i64 0
  %i.aqh = insertelement <2 x float> %i.aqg, float %i.aqf, i64 1
  %i.aqi = fdiv <2 x float> %i.aqh, splat (float 2.550000e+02)
  %i.aqj = fdiv <2 x float> %i.aqi, %i.apf        ; 2 uses
  %i.aqk = extractelement <2 x float> %i.aqj, i64 0
  %i.aql = select i1 %i.aph, float %i.aqk, float 0.000000e+00 ; 4 uses
  %i.aqm = extractelement <2 x float> %i.aqj, i64 1
  %i.aqn = select i1 %i.apm, float %i.aqm, float 0.000000e+00 ; 11 uses
  %i.aqo = extractelement <2 x float> %i.apw, i64 1 ; 3 uses
  %i.aqp = fcmp ugt float %i.aqo, 5.000000e-01
  br i1 %i.aqp, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.aqq = tail call nnan float @llvm.fmuladd.f32(float %i.aqo, float -2.000000e+00, float 1.000000e+00)
  %i.aqr = extractelement <2 x float> %i.aqd, i64 1 ; 3 uses
  %i.aqs = fsub float 1.000000e+00, %i.aqr
  %i.aqt = fneg float %i.aqr
  %i.aqu = fmul float %i.aqq, %i.aqt
  %i.aqv = tail call float @llvm.fmuladd.f32(float %i.aqu, float %i.aqs, float %i.aqr)
  br label %_ZL16blend_soft_lightff.exit217.i

bb.bo:                                            ; preds = %bb.bm
  %i.aqw = extractelement <2 x float> %i.aqd, i64 1 ; 7 uses
  %i.aqx = fcmp ugt float %i.aqw, 2.500000e-01
  br i1 %i.aqx, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.aqy = tail call nnan float @llvm.fmuladd.f32(float %i.aqw, float 1.600000e+01, float -1.200000e+01)
  %i.aqz = tail call float @llvm.fmuladd.f32(float %i.aqy, float %i.aqw, float 4.000000e+00)
  %i.ara = fmul float %i.aqw, %i.aqz
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.aqw)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.arb = phi float [ %i.ara, %bb.bp ], [ %sqrt.i, %bb.bq ]
  %i.arc = tail call float @llvm.fmuladd.f32(float %i.aqo, float 2.000000e+00, float -1.000000e+00)
  %i.ard = fsub float %i.arb, %i.aqw
  %i.are = tail call float @llvm.fmuladd.f32(float %i.arc, float %i.ard, float %i.aqw)
  br label %_ZL16blend_soft_lightff.exit217.i

_ZL16blend_soft_lightff.exit217.i:                ; preds = %bb.br, %bb.bn
  %.0.i216.i = phi float [ %i.aqv, %bb.bn ], [ %i.are, %bb.br ]
  %i.arf = extractelement <2 x float> %i.apw, i64 0 ; 3 uses
  %i.arg = fcmp ugt float %i.arf, 5.000000e-01
  br i1 %i.arg, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_ZL16blend_soft_lightff.exit217.i
  %i.arh = tail call nnan float @llvm.fmuladd.f32(float %i.arf, float -2.000000e+00, float 1.000000e+00)
  %i.ari = extractelement <2 x float> %i.aqd, i64 0 ; 3 uses
  %i.arj = fsub float 1.000000e+00, %i.ari
  %i.ark = fneg float %i.ari
  %i.arl = fmul float %i.arh, %i.ark
  %i.arm = tail call float @llvm.fmuladd.f32(float %i.arl, float %i.arj, float %i.ari)
  br label %_ZL16blend_soft_lightff.exit215.i

bb.bt:                                            ; preds = %_ZL16blend_soft_lightff.exit217.i
  %i.arn = extractelement <2 x float> %i.aqd, i64 0 ; 7 uses
  %i.aro = fcmp ugt float %i.arn, 2.500000e-01
  br i1 %i.aro, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.arp = tail call nnan float @llvm.fmuladd.f32(float %i.arn, float 1.600000e+01, float -1.200000e+01)
  %i.arq = tail call float @llvm.fmuladd.f32(float %i.arp, float %i.arn, float 4.000000e+00)
  %i.arr = fmul float %i.arn, %i.arq
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %sqrt308.i = tail call float @llvm.sqrt.f32(float %i.arn)
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.ars = phi float [ %i.arr, %bb.bu ], [ %sqrt308.i, %bb.bv ]
  %i.art = tail call float @llvm.fmuladd.f32(float %i.arf, float 2.000000e+00, float -1.000000e+00)
  %i.aru = fsub float %i.ars, %i.arn
  %i.arv = tail call float @llvm.fmuladd.f32(float %i.art, float %i.aru, float %i.arn)
  br label %_ZL16blend_soft_lightff.exit215.i

_ZL16blend_soft_lightff.exit215.i:                ; preds = %bb.bw, %bb.bs
  %.0.i214.i = phi float [ %i.arm, %bb.bs ], [ %i.arv, %bb.bw ]
  %i.arw = fcmp ugt float %i.aql, 5.000000e-01
  br i1 %i.arw, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %_ZL16blend_soft_lightff.exit215.i
  %i.arx = tail call nnan float @llvm.fmuladd.f32(float %i.aql, float -2.000000e+00, float 1.000000e+00)
  %i.ary = fsub float 1.000000e+00, %i.aqn
  %i.arz = fneg float %i.aqn
  %i.asa = fmul float %i.arx, %i.arz
  %i.asb = tail call float @llvm.fmuladd.f32(float %i.asa, float %i.ary, float %i.aqn)
  br label %_ZL16blend_soft_lightff.exit.i

bb.by:                                            ; preds = %_ZL16blend_soft_lightff.exit215.i
  %i.asc = fcmp ugt float %i.aqn, 2.500000e-01
  br i1 %i.asc, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.asd = tail call nnan float @llvm.fmuladd.f32(float %i.aqn, float 1.600000e+01, float -1.200000e+01)
  %i.ase = tail call float @llvm.fmuladd.f32(float %i.asd, float %i.aqn, float 4.000000e+00)
  %i.asf = fmul float %i.aqn, %i.ase
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %sqrt309.i = tail call float @llvm.sqrt.f32(float %i.aqn)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.asg = phi float [ %i.asf, %bb.bz ], [ %sqrt309.i, %bb.ca ]
  %i.ash = tail call float @llvm.fmuladd.f32(float %i.aql, float 2.000000e+00, float -1.000000e+00)
  %i.asi = fsub float %i.asg, %i.aqn
  %i.asj = tail call float @llvm.fmuladd.f32(float %i.ash, float %i.asi, float %i.aqn)
  br label %_ZL16blend_soft_lightff.exit.i

_ZL16blend_soft_lightff.exit.i:                   ; preds = %bb.cb, %bb.bx
  %.0.i213.i = phi float [ %i.asb, %bb.bx ], [ %i.asj, %bb.cb ]
  %9 = fneg float %i.apg
  %10 = fsub nnan <2 x float> splat (float 1.000000e+00), %i.apf ; 2 uses
  %i.ask = fmul float %i.apg, %i.apl
  %i.asl = shufflevector <2 x float> %i.apf, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.asm = shufflevector <2 x float> <float poison, float 1.000000e+00>, <2 x float> %10, <4 x i32> <i32 3, i32 3, i32 3, i32 1>
  %i.asn = fmul <4 x float> %i.asl, %i.asm
  %i.aso = extractelement <2 x float> %10, i64 0
  %i.asp = fmul float %i.aso, %i.apl
  %i.asq = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.aql, i64 0
  %i.asr = shufflevector <2 x float> %i.apw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ass = shufflevector <4 x float> %i.asq, <4 x float> %i.asr, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ast = fmul <4 x float> %i.asn, %i.ass
  %i.asu = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ask, i64 0
  %i.asv = shufflevector <4 x float> %i.asu, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.asw = insertelement <4 x float> poison, float %.0.i213.i, i64 0
  %i.asx = insertelement <4 x float> %i.asw, float %.0.i214.i, i64 1
  %i.asy = insertelement <4 x float> %i.asx, float %.0.i216.i, i64 2
  %i.asz = shufflevector <2 x float> %i.apf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ata = shufflevector <4 x float> %i.asy, <4 x float> %i.asz, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.atb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.asv, <4 x float> %i.ata, <4 x float> %i.ast)
  %i.atc = insertelement <4 x float> poison, float %i.asp, i64 0
  %i.atd = insertelement <4 x float> %i.atc, float %9, i64 1
  %i.ate = shufflevector <4 x float> %i.atd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.atf = insertelement <4 x float> poison, float %i.aqn, i64 0
  %i.atg = shufflevector <2 x float> %i.aqd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ath = shufflevector <4 x float> %i.atf, <4 x float> %i.atg, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ati = shufflevector <4 x float> %i.ath, <4 x float> %i.asz, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.atj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ate, <4 x float> %i.ati, <4 x float> %i.atb) ; 2 uses
  %i.atk = fcmp oge <4 x float> %i.atj, zeroinitializer
  %i.atl = select <4 x i1> %i.atk, <4 x float> %i.atj, <4 x float> zeroinitializer ; 2 uses
  %i.atm = fcmp ole <4 x float> %i.atl, splat (float 1.000000e+00)
  %i.atn = select <4 x i1> %i.atm, <4 x float> %i.atl, <4 x float> splat (float 1.000000e+00)
  %i.ato = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.atn, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.atp = fptoui <4 x float> %i.ato to <4 x i8>
  %i.atq = bitcast <4 x i8> %i.atp to i32
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.cc:                                            ; preds = %bb.b
  %i.atr = lshr i32 %i.q, 8
  %i.ats = lshr i32 %i.q, 16
  %i.att = uitofp nneg i32 %i.t to float
  %i.atu = lshr i32 %i.s, 8
  %i.atv = lshr i32 %i.s, 16
  %i.atw = uitofp nneg i32 %i.u to float
  %i.atx = and i32 %i.q, 255
  %i.aty = uitofp nneg i32 %i.atx to float
  %i.atz = and i32 %i.atr, 255
  %i.aua = uitofp nneg i32 %i.atz to float
  %i.aub = insertelement <2 x float> poison, float %i.aty, i64 0
  %i.auc = insertelement <2 x float> %i.aub, float %i.aua, i64 1
  %i.aud = fdiv <2 x float> %i.auc, splat (float 2.550000e+02)
  %i.aue = and i32 %i.s, 255
  %i.auf = uitofp nneg i32 %i.aue to float
  %i.aug = and i32 %i.atu, 255
  %i.auh = uitofp nneg i32 %i.aug to float
  %i.aui = insertelement <2 x float> poison, float %i.auf, i64 0
  %i.auj = insertelement <2 x float> %i.aui, float %i.auh, i64 1
  %i.auk = fdiv <2 x float> %i.auj, splat (float 2.550000e+02)
  %i.aul = insertelement <2 x float> poison, float %i.atw, i64 0
  %i.aum = insertelement <2 x float> %i.aul, float %i.att, i64 1
  %i.aun = fdiv <2 x float> %i.aum, splat (float 2.550000e+02) ; 10 uses
  %i.auo = extractelement <2 x float> %i.aun, i64 1 ; 2 uses
  %i.aup = shufflevector <2 x float> %i.aun, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.auq = fdiv <2 x float> %i.aud, %i.aup
  %i.aur = and i32 %i.ats, 255
  %i.aus = uitofp nneg i32 %i.aur to float
  %i.aut = and i32 %i.atv, 255
  %i.auu = uitofp nneg i32 %i.aut to float
  %i.auv = insertelement <2 x float> poison, float %i.auu, i64 0
  %i.auw = insertelement <2 x float> %i.auv, float %i.aus, i64 1
  %i.aux = fdiv <2 x float> %i.auw, splat (float 2.550000e+02)
  %i.auy = fcmp ogt <2 x float> %i.aun, zeroinitializer ; 3 uses
  %i.auz = shufflevector <2 x i1> %i.auy, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.ava = select <2 x i1> %i.auz, <2 x float> %i.auq, <2 x float> zeroinitializer ; 2 uses
  %i.avb = fdiv <2 x float> %i.aux, %i.aun
  %i.avc = select <2 x i1> %i.auy, <2 x float> %i.avb, <2 x float> zeroinitializer ; 4 uses
  %i.avd = shufflevector <2 x float> %i.aun, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ave = fdiv <2 x float> %i.auk, %i.avd
  %i.avf = shufflevector <2 x i1> %i.auy, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.avg = select <2 x i1> %i.avf, <2 x float> %i.ave, <2 x float> zeroinitializer ; 2 uses
  %shift120 = shufflevector <2 x float> %i.avc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop121 = fsub <2 x float> %shift120, %i.avc
  %i.avh = extractelement <2 x float> %foldExtExtBinop121, i64 0
  %i.avi = tail call noundef float @llvm.fabs.f32(float %i.avh)
  %i.avj = fsub <2 x float> %i.ava, %i.avg
  %i.avk = fneg float %i.auo
  %i.avl = shufflevector <2 x float> %i.aun, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.avm = shufflevector <2 x float> %i.aun, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.avn = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.avj)
  %i.avo = shufflevector <2 x float> %i.avn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.avp = shufflevector <4 x float> %i.avo, <4 x float> %i.avm, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.avq = shufflevector <4 x float> <float 1.000000e+00, float 1.000000e+00, float poison, float 1.000000e+00>, <4 x float> %i.avl, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.avr = fmul <4 x float> %i.avp, %i.avq        ; 2 uses
  %i.avs = fsub nnan <2 x float> splat (float 1.000000e+00), %i.aun ; 2 uses
  %i.avt = extractelement <2 x float> %i.avs, i64 0
  %i.avu = fmul float %i.auo, %i.avt
  %shift123 = shufflevector <2 x float> %i.avs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop124 = fmul <2 x float> %shift123, %i.aun
  %i.avv = shufflevector <2 x float> %i.aun, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.avw = insertelement <2 x float> %i.avv, float %i.avu, i64 0
  %i.avx = shufflevector <2 x float> %i.avw, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.avy = shufflevector <2 x float> %i.avc, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.avz = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.avy, <4 x i32> <i32 poison, i32 poison, i32 5, i32 3>
  %i.awa = shufflevector <2 x float> %i.ava, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.awb = shufflevector <4 x float> %i.awa, <4 x float> %i.avz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.awc = fmul <4 x float> %i.avx, %i.awb
  %i.awd = shufflevector <4 x float> %i.avr, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 2, i32 poison, i32 7>
  %i.awe = insertelement <4 x float> %i.awd, float %i.avi, i64 2
  %i.awf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.awe, <4 x float> %i.avr, <4 x float> %i.awc)
  %i.awg = shufflevector <2 x float> %foldExtExtBinop124, <2 x float> %i.avc, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison> ; 2 uses
  %i.awh = insertelement <4 x float> %i.awg, float %i.avk, i64 3
  %i.awi = shufflevector <4 x float> %i.awh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.awj = shufflevector <2 x float> %i.avg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.awk = shufflevector <4 x float> %i.awj, <4 x float> %i.awg, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.awl = shufflevector <4 x float> %i.awk, <4 x float> %i.avl, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.awm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.awi, <4 x float> %i.awl, <4 x float> %i.awf) ; 2 uses
  %i.awn = fcmp oge <4 x float> %i.awm, zeroinitializer
  %i.awo = select <4 x i1> %i.awn, <4 x float> %i.awm, <4 x float> zeroinitializer ; 2 uses
  %i.awp = fcmp ole <4 x float> %i.awo, splat (float 1.000000e+00)
  %i.awq = select <4 x i1> %i.awp, <4 x float> %i.awo, <4 x float> splat (float 1.000000e+00)
  %i.awr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.awq, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.aws = fptoui <4 x float> %i.awr to <4 x i8>
  %i.awt = bitcast <4 x i8> %i.aws to i32
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.cd:                                            ; preds = %bb.b
  %i.awu = and i32 %i.q, 255
  %i.awv = lshr i32 %i.q, 8
  %i.aww = insertelement <2 x i32> poison, i32 %i.q, i64 0
  %i.awx = insertelement <2 x i32> %i.aww, i32 %i.s, i64 1
  %i.awy = lshr <2 x i32> %i.awx, splat (i32 16)
  %i.awz = uitofp nneg i32 %i.t to float
  %i.axa = and i32 %i.s, 255
  %i.axb = lshr i32 %i.s, 8
  %i.axc = uitofp nneg i32 %i.u to float
  %i.axd = insertelement <2 x float> poison, float %i.awz, i64 0
  %i.axe = insertelement <2 x float> %i.axd, float %i.axc, i64 1
  %i.axf = fdiv <2 x float> %i.axe, splat (float 2.550000e+02) ; 8 uses
  %i.axg = shufflevector <2 x float> %i.axf, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.axh = extractelement <2 x float> %i.axf, i64 1 ; 3 uses
  %i.axi = extractelement <2 x float> %i.axf, i64 0 ; 4 uses
  %i.axj = and <2 x i32> %i.awy, splat (i32 255)
  %i.axk = uitofp nneg <2 x i32> %i.axj to <2 x float>
  %i.axl = fdiv <2 x float> %i.axk, splat (float 2.550000e+02)
  %i.axm = fcmp ogt <2 x float> %i.axf, zeroinitializer ; 3 uses
  %i.axn = fdiv <2 x float> %i.axl, %i.axf
  %i.axo = select <2 x i1> %i.axm, <2 x float> %i.axn, <2 x float> zeroinitializer ; 5 uses
  %i.axp = and i32 %i.awv, 255
  %i.axq = uitofp nneg i32 %i.axp to float
  %i.axr = and i32 %i.axb, 255
  %i.axs = uitofp nneg i32 %i.axr to float
  %i.axt = insertelement <2 x float> poison, float %i.axq, i64 0
  %i.axu = insertelement <2 x float> %i.axt, float %i.axs, i64 1
  %i.axv = fdiv <2 x float> %i.axu, splat (float 2.550000e+02)
  %i.axw = fdiv <2 x float> %i.axv, %i.axf
  %i.axx = select <2 x i1> %i.axm, <2 x float> %i.axw, <2 x float> zeroinitializer ; 5 uses
  %i.axy = uitofp nneg i32 %i.awu to float
  %i.axz = uitofp nneg i32 %i.axa to float
  %i.aya = insertelement <2 x float> poison, float %i.axy, i64 0
  %i.ayb = insertelement <2 x float> %i.aya, float %i.axz, i64 1
  %i.ayc = fdiv <2 x float> %i.ayb, splat (float 2.550000e+02)
  %i.ayd = fdiv <2 x float> %i.ayc, %i.axf
  %i.aye = select <2 x i1> %i.axm, <2 x float> %i.ayd, <2 x float> zeroinitializer ; 4 uses
  %i.ayf = shufflevector <2 x float> %i.aye, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ayg = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.axo)
  %i.ayh = extractelement <2 x float> %i.axo, i64 0
  %i.ayi = extractelement <2 x float> %i.axo, i64 1
  %i.ayj = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.axx)
  %i.ayk = extractelement <2 x float> %i.axx, i64 0
  %i.ayl = extractelement <2 x float> %i.axx, i64 1
  %i.aym = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.aye)
  %i.ayn = extractelement <2 x float> %i.aye, i64 0 ; 2 uses
  %i.ayo = extractelement <2 x float> %i.aye, i64 1
  %i.ayp = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.axf)
  %i.ayq = fneg float %i.axi
  %i.ayr = shufflevector <2 x float> %i.axo, <2 x float> %i.axx, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ays = insertelement <4 x float> %i.ayr, float %i.ayn, i64 2
  %i.ayt = insertelement <4 x float> %i.ays, float %i.ayq, i64 3
  %i.ayu = fmul <4 x float> %i.ayt, <float -2.000000e+00, float -2.000000e+00, float -2.000000e+00, float 1.000000e+00>
  %i.ayv = shufflevector <2 x float> %i.axo, <2 x float> %i.axx, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ayw = shufflevector <4 x float> %i.ayv, <4 x float> %i.ayf, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ayx = shufflevector <4 x float> %i.ayw, <4 x float> %i.axg, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ayy = insertelement <4 x float> poison, float %i.ayg, i64 0
  %i.ayz = insertelement <4 x float> %i.ayy, float %i.ayj, i64 1
  %i.aza = insertelement <4 x float> %i.ayz, float %i.aym, i64 2
  %i.azb = insertelement <4 x float> %i.aza, float %i.ayp, i64 3
  %i.azc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ayu, <4 x float> %i.ayx, <4 x float> %i.azb) ; 4 uses
  %i.azd = fmul float %i.axi, %i.axh              ; 3 uses
  %i.aze = fsub nnan float 1.000000e+00, %i.axh
  %i.azf = fmul float %i.axi, %i.aze              ; 3 uses
  %i.azg = fmul float %i.azf, %i.ayh
  %i.azh = extractelement <4 x float> %i.azc, i64 0
  %i.azi = tail call float @llvm.fmuladd.f32(float %i.azd, float %i.azh, float %i.azg)
  %i.azj = fsub nnan float 1.000000e+00, %i.axi
  %i.azk = fmul float %i.azj, %i.axh              ; 3 uses
  %i.azl = tail call float @llvm.fmuladd.f32(float %i.azk, float %i.ayi, float %i.azi)
  %i.azm = fmul float %i.azf, %i.ayk
  %i.azn = extractelement <4 x float> %i.azc, i64 1
  %i.azo = tail call float @llvm.fmuladd.f32(float %i.azd, float %i.azn, float %i.azm)
  %i.azp = tail call float @llvm.fmuladd.f32(float %i.azk, float %i.ayl, float %i.azo)
  %i.azq = fmul float %i.ayn, %i.azf
  %i.azr = extractelement <4 x float> %i.azc, i64 2
  %i.azs = tail call float @llvm.fmuladd.f32(float %i.azd, float %i.azr, float %i.azq)
  %i.azt = tail call float @llvm.fmuladd.f32(float %i.azk, float %i.ayo, float %i.azs)
  %i.azu = insertelement <4 x float> poison, float %i.azt, i64 0
  %i.azv = insertelement <4 x float> %i.azu, float %i.azp, i64 1
  %i.azw = insertelement <4 x float> %i.azv, float %i.azl, i64 2
  %i.azx = shufflevector <4 x float> %i.azw, <4 x float> %i.azc, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.azy = fcmp oge <4 x float> %i.azx, zeroinitializer
  %i.azz = select <4 x i1> %i.azy, <4 x float> %i.azx, <4 x float> zeroinitializer ; 2 uses
  %i.baa = fcmp ole <4 x float> %i.azz, splat (float 1.000000e+00)
  %i.bab = select <4 x i1> %i.baa, <4 x float> %i.azz, <4 x float> splat (float 1.000000e+00)
  %i.bac = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bab, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.bad = fptoui <4 x float> %i.bac to <4 x i8>
  %i.bae = bitcast <4 x i8> %i.bad to i32
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.ce:                                            ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.baf = and i32 %i.q, 255
  %i.bag = lshr i32 %i.q, 8
  %i.bah = lshr i32 %i.q, 16
  %i.bai = uitofp nneg i32 %i.t to float
end_hunk_0
begin_hunk_1_@_ZN17hb_raster_image_t14composite_fromEPKS_25hb_paint_composite_mode_t:bb.a
  %i.bin = fdiv float %i.bim, %i.bij
  %i.bio = fadd float %i.bhz, %i.bin
  %i.bip = insertelement <2 x float> poison, float %i.bhz, i64 0
  %i.biq = shufflevector <2 x float> %i.bip, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bir = fsub <2 x float> %i.bhu, %i.biq
  %i.bis = fmul <2 x float> %i.biq, %i.bir
  %i.bit = insertelement <2 x float> poison, float %i.bij, i64 0
  %i.biu = shufflevector <2 x float> %i.bit, <2 x float> poison, <2 x i32> zeroinitializer
  %i.biv = fdiv <2 x float> %i.bis, %i.biu
  %i.biw = fadd <2 x float> %i.biq, %i.biv
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds, %_ZL18hsl_set_saturationRfS_S_f.exit52.i.i
  %.5139.i.i = phi float [ %i.bio, %bb.dt ], [ %i.bhq, %bb.ds ], [ %i.bhq, %_ZL18hsl_set_saturationRfS_S_f.exit52.i.i ] ; 3 uses
  %i.bix = phi <2 x float> [ %i.biw, %bb.dt ], [ %i.bhu, %bb.ds ], [ %i.bhu, %_ZL18hsl_set_saturationRfS_S_f.exit52.i.i ] ; 3 uses
  %i.biy = fcmp ogt float %i.bih, 1.000000e+00
  br i1 %i.biy, label %bb.dv, label %_ZL15apply_hsl_blendjj25hb_paint_composite_mode_t.exit.i

bb.dv:                                            ; preds = %bb.du
  %i.biz = fsub float %i.bih, %i.bhz              ; 3 uses
  %i.bja = fcmp ogt float %i.biz, 0.000000e+00
  br i1 %i.bja, label %bb.dw, label %_ZL15apply_hsl_blendjj25hb_paint_composite_mode_t.exit.i

bb.dw:                                            ; preds = %bb.dv
  %i.bjb = fsub float %.5139.i.i, %i.bhz
  %i.bjc = fsub float 1.000000e+00, %i.bhz        ; 2 uses
  %i.bjd = fmul float %i.bjc, %i.bjb
  %i.bje = fdiv float %i.bjd, %i.biz
  %i.bjf = fadd float %i.bhz, %i.bje
  %i.bjg = insertelement <2 x float> poison, float %i.bhz, i64 0
  %i.bjh = shufflevector <2 x float> %i.bjg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bji = fsub <2 x float> %i.bix, %i.bjh
  %i.bjj = insertelement <2 x float> poison, float %i.bjc, i64 0
  %i.bjk = shufflevector <2 x float> %i.bjj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bjl = fmul <2 x float> %i.bjk, %i.bji
  %i.bjm = insertelement <2 x float> poison, float %i.biz, i64 0
  %i.bjn = shufflevector <2 x float> %i.bjm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bjo = fdiv <2 x float> %i.bjl, %i.bjn
  %i.bjp = fadd <2 x float> %i.bjh, %i.bjo
  br label %_ZL15apply_hsl_blendjj25hb_paint_composite_mode_t.exit.i

bb.dx:                                            ; preds = %bb.ce
  %i.bjq = shufflevector <2 x float> %i.bbl, <2 x float> %i.bbq, <2 x i32> <i32 0, i32 2>
  %i.bjr = fmul <2 x float> %i.bjq, splat (float 5.870000e-01)
  %i.bjs = shufflevector <2 x float> %i.bbl, <2 x float> %i.bbq, <2 x i32> <i32 1, i32 3>
  %i.bjt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bjs, <2 x float> splat (float 2.990000e-01), <2 x float> %i.bjr)
  %i.bju = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bbt, <2 x float> splat (float 1.140000e-01), <2 x float> %i.bjt) ; 2 uses
  %shift140 = shufflevector <2 x float> %i.bju, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop141 = fsub <2 x float> %shift140, %i.bju ; 2 uses
  %i.bjv = extractelement <2 x float> %foldExtExtBinop141, i64 0
  %i.bjw = fadd float %i.bbm, %i.bjv              ; 8 uses
  %i.bjx = shufflevector <2 x float> %i.bbl, <2 x float> %i.bbt, <2 x i32> <i32 0, i32 2>
  %i.bjy = shufflevector <2 x float> %foldExtExtBinop141, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bjz = fadd <2 x float> %i.bjx, %i.bjy        ; 5 uses
  %i.bka = extractelement <2 x float> %i.bjz, i64 0 ; 5 uses
  %i.bkb = fmul float %i.bka, 5.870000e-01
  %i.bkc = tail call float @llvm.fmuladd.f32(float %i.bjw, float 2.990000e-01, float %i.bkb)
  %i.bkd = extractelement <2 x float> %i.bjz, i64 1 ; 5 uses
  %i.bke = tail call noundef float @llvm.fmuladd.f32(float %i.bkd, float 1.140000e-01, float %i.bkc) ; 10 uses
  %i.bkf = fcmp ole float %i.bjw, %i.bka
  %i.bkg = select i1 %i.bkf, float %i.bjw, float %i.bka ; 2 uses
  %i.bkh = fcmp ole float %i.bkg, %i.bkd
  %i.bki = select i1 %i.bkh, float %i.bkg, float %i.bkd ; 2 uses
  %i.bkj = fcmp oge float %i.bjw, %i.bka
  %i.bkk = select i1 %i.bkj, float %i.bjw, float %i.bka ; 2 uses
  %i.bkl = fcmp oge float %i.bkk, %i.bkd
  %i.bkm = select i1 %i.bkl, float %i.bkk, float %i.bkd ; 2 uses
  %i.bkn = fcmp olt float %i.bki, 0.000000e+00
  br i1 %i.bkn, label %bb.dy, label %bb.ea

bb.dy:                                            ; preds = %bb.dx
  %i.bko = fsub float %i.bke, %i.bki              ; 3 uses
  %i.bkp = fcmp ogt float %i.bko, 0.000000e+00
  br i1 %i.bkp, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.bkq = fsub float %i.bjw, %i.bke
  %i.bkr = fmul float %i.bke, %i.bkq
  %i.bks = fdiv float %i.bkr, %i.bko
  %i.bkt = fadd float %i.bke, %i.bks
  %i.bku = insertelement <2 x float> poison, float %i.bke, i64 0
  %i.bkv = shufflevector <2 x float> %i.bku, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bkw = fsub <2 x float> %i.bjz, %i.bkv
  %i.bkx = fmul <2 x float> %i.bkv, %i.bkw
  %i.bky = insertelement <2 x float> poison, float %i.bko, i64 0
  %i.bkz = shufflevector <2 x float> %i.bky, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bla = fdiv <2 x float> %i.bkx, %i.bkz
  %i.blb = fadd <2 x float> %i.bkv, %i.bla
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy, %bb.dx
  %.7141.i.i = phi float [ %i.bkt, %bb.dz ], [ %i.bjw, %bb.dy ], [ %i.bjw, %bb.dx ] ; 3 uses
  %i.blc = phi <2 x float> [ %i.blb, %bb.dz ], [ %i.bjz, %bb.dy ], [ %i.bjz, %bb.dx ] ; 3 uses
  %i.bld = fcmp ogt float %i.bkm, 1.000000e+00
  br i1 %i.bld, label %bb.eb, label %_ZL15apply_hsl_blendjj25hb_paint_composite_mode_t.exit.i

bb.eb:                                            ; preds = %bb.ea
  %i.ble = fsub float %i.bkm, %i.bke              ; 3 uses
  %i.blf = fcmp ogt float %i.ble, 0.000000e+00
  br i1 %i.blf, label %bb.ec, label %_ZL15apply_hsl_blendjj25hb_paint_composite_mode_t.exit.i

bb.ec:                                            ; preds = %bb.eb
  %i.blg = fsub float %.7141.i.i, %i.bke
  %i.blh = fsub float 1.000000e+00, %i.bke        ; 2 uses
  %i.bli = fmul float %i.blh, %i.blg
  %i.blj = fdiv float %i.bli, %i.ble
  %i.blk = fadd float %i.bke, %i.blj
  %i.bll = insertelement <2 x float> poison, float %i.bke, i64 0
  %i.blm = shufflevector <2 x float> %i.bll, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bln = fsub <2 x float> %i.blc, %i.blm
  %i.blo = insertelement <2 x float> poison, float %i.blh, i64 0
  %i.blp = shufflevector <2 x float> %i.blo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.blq = fmul <2 x float> %i.blp, %i.bln
  %i.blr = insertelement <2 x float> poison, float %i.ble, i64 0
  %i.bls = shufflevector <2 x float> %i.blr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.blt = fdiv <2 x float> %i.blq, %i.bls
  %i.blu = fadd <2 x float> %i.blm, %i.blt
  br label %_ZL15apply_hsl_blendjj25hb_paint_composite_mode_t.exit.i

bb.ed:                                            ; preds = %bb.ce
  %i.blv = shufflevector <2 x float> %i.bbl, <2 x float> %i.bbq, <2 x i32> <i32 0, i32 2>
  %i.blw = fmul <2 x float> %i.blv, splat (float 5.870000e-01)
  %i.blx = shufflevector <2 x float> %i.bbl, <2 x float> %i.bbq, <2 x i32> <i32 1, i32 3>
  %i.bly = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.blx, <2 x float> splat (float 2.990000e-01), <2 x float> %i.blw)
  %i.blz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bbt, <2 x float> splat (float 1.140000e-01), <2 x float> %i.bly) ; 2 uses
  %shift143 = shufflevector <2 x float> %i.blz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop144 = fsub <2 x float> %i.blz, %shift143 ; 2 uses
  %i.bma = extractelement <2 x float> %foldExtExtBinop144, i64 0
  %i.bmb = fadd float %i.bbr, %i.bma              ; 8 uses
  %i.bmc = shufflevector <2 x float> %i.bbq, <2 x float> %i.bbt, <2 x i32> <i32 0, i32 3>
  %i.bmd = shufflevector <2 x float> %foldExtExtBinop144, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bme = fadd <2 x float> %i.bmc, %i.bmd        ; 5 uses
  %i.bmf = extractelement <2 x float> %i.bme, i64 0 ; 5 uses
  %i.bmg = fmul float %i.bmf, 5.870000e-01
  %i.bmh = tail call float @llvm.fmuladd.f32(float %i.bmb, float 2.990000e-01, float %i.bmg)
  %i.bmi = extractelement <2 x float> %i.bme, i64 1 ; 5 uses
  %i.bmj = tail call noundef float @llvm.fmuladd.f32(float %i.bmi, float 1.140000e-01, float %i.bmh) ; 10 uses
  %i.bmk = fcmp ole float %i.bmb, %i.bmf
  %i.bml = select i1 %i.bmk, float %i.bmb, float %i.bmf ; 2 uses
  %i.bmm = fcmp ole float %i.bml, %i.bmi
  %i.bmn = select i1 %i.bmm, float %i.bml, float %i.bmi ; 2 uses
  %i.bmo = fcmp oge float %i.bmb, %i.bmf
  %i.bmp = select i1 %i.bmo, float %i.bmb, float %i.bmf ; 2 uses
  %i.bmq = fcmp oge float %i.bmp, %i.bmi
  %i.bmr = select i1 %i.bmq, float %i.bmp, float %i.bmi ; 2 uses
  %i.bms = fcmp olt float %i.bmn, 0.000000e+00
  br i1 %i.bms, label %bb.ee, label %bb.eg

bb.ee:                                            ; preds = %bb.ed
  %i.bmt = fsub float %i.bmj, %i.bmn              ; 3 uses
  %i.bmu = fcmp ogt float %i.bmt, 0.000000e+00
  br i1 %i.bmu, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.bmv = fsub float %i.bmb, %i.bmj
  %i.bmw = fmul float %i.bmj, %i.bmv
  %i.bmx = fdiv float %i.bmw, %i.bmt
  %i.bmy = fadd float %i.bmj, %i.bmx
  %i.bmz = insertelement <2 x float> poison, float %i.bmj, i64 0
  %i.bna = shufflevector <2 x float> %i.bmz, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bnb = fsub <2 x float> %i.bme, %i.bna
  %i.bnc = fmul <2 x float> %i.bna, %i.bnb
  %i.bnd = insertelement <2 x float> poison, float %i.bmt, i64 0
  %i.bne = shufflevector <2 x float> %i.bnd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bnf = fdiv <2 x float> %i.bnc, %i.bne
  %i.bng = fadd <2 x float> %i.bna, %i.bnf
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee, %bb.ed
  %.9143.i.i = phi float [ %i.bmy, %bb.ef ], [ %i.bmb, %bb.ee ], [ %i.bmb, %bb.ed ] ; 3 uses
  %i.bnh = phi <2 x float> [ %i.bng, %bb.ef ], [ %i.bme, %bb.ee ], [ %i.bme, %bb.ed ] ; 3 uses
  %i.bni = fcmp ogt float %i.bmr, 1.000000e+00
  br i1 %i.bni, label %bb.eh, label %_ZL15apply_hsl_blendjj25hb_paint_composite_mode_t.exit.i

bb.eh:                                            ; preds = %bb.eg
  %i.bnj = fsub float %i.bmr, %i.bmj              ; 3 uses
  %i.bnk = fcmp ogt float %i.bnj, 0.000000e+00
  br i1 %i.bnk, label %bb.ei, label %_ZL15apply_hsl_blendjj25hb_paint_composite_mode_t.exit.i

bb.ei:                                            ; preds = %bb.eh
  %i.bnl = fsub float %.9143.i.i, %i.bmj
  %i.bnm = fsub float 1.000000e+00, %i.bmj        ; 2 uses
  %i.bnn = fmul float %i.bnm, %i.bnl
  %i.bno = fdiv float %i.bnn, %i.bnj
  %i.bnp = fadd float %i.bmj, %i.bno
  %i.bnq = insertelement <2 x float> poison, float %i.bmj, i64 0
  %i.bnr = shufflevector <2 x float> %i.bnq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bns = fsub <2 x float> %i.bnh, %i.bnr
  %i.bnt = insertelement <2 x float> poison, float %i.bnm, i64 0
  %i.bnu = shufflevector <2 x float> %i.bnt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bnv = fmul <2 x float> %i.bnu, %i.bns
  %i.bnw = insertelement <2 x float> poison, float %i.bnj, i64 0
  %i.bnx = shufflevector <2 x float> %i.bnw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bny = fdiv <2 x float> %i.bnv, %i.bnx
  %i.bnz = fadd <2 x float> %i.bnr, %i.bny
  br label %_ZL15apply_hsl_blendjj25hb_paint_composite_mode_t.exit.i

_ZL15apply_hsl_blendjj25hb_paint_composite_mode_t.exit.i: ; preds = %bb.ei, %bb.eh, %bb.eg, %bb.ec, %bb.eb, %bb.ea, %bb.dw, %bb.dv, %bb.du, %bb.da, %bb.cz, %bb.cy
  %.0134.i.i = phi float [ %.7141.i.i, %bb.ea ], [ %.5139.i.i, %bb.du ], [ %.2136.i.i, %bb.cy ], [ %i.bfi, %bb.da ], [ %.2136.i.i, %bb.cz ], [ %i.bjf, %bb.dw ], [ %.5139.i.i, %bb.dv ], [ %i.blk, %bb.ec ], [ %.7141.i.i, %bb.eb ], [ %i.bnp, %bb.ei ], [ %.9143.i.i, %bb.eh ], [ %.9143.i.i, %bb.eg ]
  %i.boa = phi <2 x float> [ %i.blc, %bb.ea ], [ %i.bix, %bb.du ], [ %i.bfa, %bb.cy ], [ %i.bfs, %bb.da ], [ %i.bfa, %bb.cz ], [ %i.bjp, %bb.dw ], [ %i.bix, %bb.dv ], [ %i.blu, %bb.ec ], [ %i.blc, %bb.eb ], [ %i.bnz, %bb.ei ], [ %i.bnh, %bb.eh ], [ %i.bnh, %bb.eg ]
  %i.bob = extractelement <2 x float> %i.bap, i64 0 ; 2 uses
  %11 = fneg float %i.bob
  %i.boc = extractelement <2 x float> %i.bap, i64 1 ; 2 uses
  %i.bod = fsub nnan <2 x float> splat (float 1.000000e+00), %i.bap ; 2 uses
  %i.boe = fmul float %i.bob, %i.boc
  %i.bof = shufflevector <2 x float> %i.bap, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bog = shufflevector <2 x float> <float poison, float 1.000000e+00>, <2 x float> %i.bod, <4 x i32> <i32 3, i32 3, i32 3, i32 1>
  %i.boh = fmul <4 x float> %i.bof, %i.bog
  %i.boi = extractelement <2 x float> %i.bod, i64 0
  %i.boj = fmul float %i.boi, %i.boc
  %i.bok = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.bbv, i64 0
  %i.bol = shufflevector <2 x float> %i.bbl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bom = shufflevector <4 x float> %i.bok, <4 x float> %i.bol, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.bon = fmul <4 x float> %i.boh, %i.bom
  %i.boo = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.boe, i64 0
  %i.bop = shufflevector <4 x float> %i.boo, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.boq = shufflevector <2 x float> %i.boa, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.bor = insertelement <4 x float> %i.boq, float %.0134.i.i, i64 2
  %i.bos = shufflevector <2 x float> %i.bap, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bot = shufflevector <4 x float> %i.bor, <4 x float> %i.bos, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bou = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bop, <4 x float> %i.bot, <4 x float> %i.bon)
  %i.bov = insertelement <4 x float> poison, float %i.boj, i64 0
  %i.bow = insertelement <4 x float> %i.bov, float %11, i64 1
  %i.box = shufflevector <4 x float> %i.bow, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.boy = shufflevector <2 x float> %i.bbt, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.boz = shufflevector <2 x float> %i.bbq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bpa = shufflevector <4 x float> %i.boy, <4 x float> %i.boz, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.bpb = shufflevector <4 x float> %i.bpa, <4 x float> %i.bos, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bpc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.box, <4 x float> %i.bpb, <4 x float> %i.bou) ; 2 uses
  %i.bpd = fcmp oge <4 x float> %i.bpc, zeroinitializer
  %i.bpe = select <4 x i1> %i.bpd, <4 x float> %i.bpc, <4 x float> zeroinitializer ; 2 uses
  %i.bpf = fcmp ole <4 x float> %i.bpe, splat (float 1.000000e+00)
  %i.bpg = select <4 x i1> %i.bpf, <4 x float> %i.bpe, <4 x float> splat (float 1.000000e+00)
  %i.bph = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bpg, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.bpi = fptoui <4 x float> %i.bph to <4 x i8>
  %i.bpj = bitcast <4 x i8> %i.bpi to i32
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.ej:                                            ; preds = %bb.b
  %trunc307.i = trunc nuw i32 %i.t to i8
  switch i8 %trunc307.i, label %bb.el [
    i8 -1, label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit
    i8 0, label %bb.ek
  ]

bb.ek:                                            ; preds = %bb.ej, %bb.c, %bb.b
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.el:                                            ; preds = %bb.ej
  %i.bpk = xor i32 %i.t, 255                      ; 4 uses
  %i.bpl = and i32 %i.s, 255
  %i.bpm = mul nuw nsw i32 %i.bpl, %i.bpk
  %i.bpn = add nuw nsw i32 %i.bpm, 255
  %i.bpo = lshr i32 %i.bpn, 8
  %i.bpp = add i32 %i.bpo, %i.q
  %i.bpq = lshr i32 %i.s, 8
  %i.bpr = and i32 %i.bpq, 255
  %i.bps = mul nuw nsw i32 %i.bpr, %i.bpk
  %i.bpt = or i32 %i.q, 255
  %i.bpu = add i32 %i.bps, %i.bpt
  %i.bpv = lshr i32 %i.s, 16
  %i.bpw = and i32 %i.bpv, 255
  %i.bpx = mul nuw nsw i32 %i.u, %i.bpk
  %i.bpy = add nuw nsw i32 %i.bpx, 255
  %i.bpz = lshr i32 %i.bpy, 8
  %i.bqa = add nuw nsw i32 %i.bpz, %i.t
  %i.bqb = and i32 %i.bpp, 255
  %i.bqc = and i32 %i.bpu, 65280
  %i.bqd = shl nuw nsw i32 %i.bpk, 8
  %i.bqe = mul nuw nsw i32 %i.bqd, %i.bpw
  %i.bqf = add nuw nsw i32 %i.bqe, 65280
  %i.bqg = and i32 %i.bqf, 16711680
  %i.bqh = add i32 %i.bqg, %i.q
  %i.bqi = and i32 %i.bqh, 16711680
  %i.bqj = shl i32 %i.bqa, 24
  %i.bqk = or disjoint i32 %i.bqc, %i.bqb
  %i.bql = or disjoint i32 %i.bqk, %i.bqj
  %i.bqm = or disjoint i32 %i.bql, %i.bqi
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %_ZL19hb_raster_alpha_muljj.exit117.i, %_ZL19hb_raster_alpha_muljj.exit113.i, %_ZL19hb_raster_alpha_muljj.exit.i, %bb.af, %bb.ag, %bb.ah, %_ZL13blend_overlayff.exit.i, %bb.ap, %bb.aq, %_ZL17blend_color_dodgeff.exit.i, %_ZL16blend_color_burnff.exit.i, %_ZL16blend_hard_lightff.exit.i, %_ZL16blend_soft_lightff.exit.i, %bb.cc, %bb.cd, %_ZL15apply_hsl_blendjj25hb_paint_composite_mode_t.exit.i, %bb.ej, %bb.ek, %bb.el
  %.0.i = phi i32 [ %i.s, %bb.n ], [ %i.bpj, %_ZL15apply_hsl_blendjj25hb_paint_composite_mode_t.exit.i ], [ %i.q, %bb.ej ], [ %i.s, %bb.ek ], [ %2, %bb.b ], [ %i.q, %bb.c ], [ %i.s, %bb.e ], [ %i.q, %bb.h ], [ %i.s, %bb.j ], [ %i.q, %bb.l ], [ %i.hx, %_ZL19hb_raster_alpha_muljj.exit117.i ], [ %i.kk, %_ZL19hb_raster_alpha_muljj.exit113.i ], [ %i.my, %_ZL19hb_raster_alpha_muljj.exit.i ], [ %i.ns, %bb.af ], [ %i.qn, %bb.ag ], [ %i.tn, %bb.ah ], [ %i.xp, %_ZL13blend_overlayff.exit.i ], [ %i.aaj, %bb.ap ], [ %i.add, %bb.aq ], [ %i.agw, %_ZL17blend_color_dodgeff.exit.i ], [ %i.aks, %_ZL16blend_color_burnff.exit.i ], [ %i.aou, %_ZL16blend_hard_lightff.exit.i ], [ %i.atq, %_ZL16blend_soft_lightff.exit.i ], [ %i.awt, %bb.cc ], [ %i.bae, %bb.cd ], [ %i.ax, %bb.d ], [ %i.bqm, %bb.el ], [ %i.by, %bb.g ], [ %i.q, %bb.f ], [ %i.cu, %bb.i ], [ 0, %bb.o ], [ %i.dq, %bb.k ], [ %i.fi, %bb.p ], [ %i.el, %bb.m ]
  store i32 %.0.i, ptr %i.r, align 1, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !118
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Z25hb_raster_image_compositeP17hb_raster_image_tPKS_25hb_paint_composite_mode_t(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #9 {
bb.a:
  tail call void @_ZN17hb_raster_image_t14composite_fromEPKS_25hb_paint_composite_mode_t(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @hb_raster_image_create_or_fail() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @hb_calloc(i64 noundef 1, i64 noundef 56) #16 ; 6 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZL16hb_object_createI17hb_raster_image_tJEEPT_DpT0_.exit, label %_ZL15hb_object_traceI17hb_raster_image_tEvPKT_PKc.exit.i, !prof !16

_ZL15hb_object_traceI17hb_raster_image_tEvPKT_PKc.exit.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.b, i8 0, i64 52, i1 false)
  store atomic i32 1, ptr %i.a monotonic, align 4
  store atomic i8 1, ptr %i.b monotonic, align 4
  store atomic ptr null, ptr %i.c monotonic, align 8
  %i.d = load atomic i32, ptr %i.a monotonic, align 8 ; 0 uses
  br label %_ZL16hb_object_createI17hb_raster_image_tJEEPT_DpT0_.exit

_ZL16hb_object_createI17hb_raster_image_tJEEPT_DpT0_.exit: ; preds = %bb.a, %_ZL15hb_object_traceI17hb_raster_image_tEvPKT_PKc.exit.i
  ret ptr %i.a
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef ptr @hb_raster_image_reference(ptr nofree noundef returned captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #10 {
bb.a:
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %_ZL19hb_object_referenceI17hb_raster_image_tEPT_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i32, ptr %0 monotonic, align 4 ; 0 uses
  %i.b = load atomic i32, ptr %0 monotonic, align 4
  %.not.i7.i = icmp eq i32 %i.b, 0
  br i1 %.not.i7.i, label %_ZL19hb_object_referenceI17hb_raster_image_tEPT_S2_.exit, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.c = atomicrmw add ptr %0, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZL19hb_object_referenceI17hb_raster_image_tEPT_S2_.exit

_ZL19hb_object_referenceI17hb_raster_image_tEPT_S2_.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_raster_image_destroy(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %.not.i.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i.i, label %_ZL17hb_object_destroyI17hb_raster_image_tEbPT_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i32, ptr %0 monotonic, align 4 ; 0 uses
  %i.b = load atomic i32, ptr %0 monotonic, align 4
  %.not.i7.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i7.i.i, label %_ZL17hb_object_destroyI17hb_raster_image_tEbPT_.exit.thread, label %_ZL24hb_object_should_destroyI17hb_raster_image_tEbPT_.exit.i, !prof !16

_ZL24hb_object_should_destroyI17hb_raster_image_tEbPT_.exit.i: ; preds = %bb.b
  %i.c = atomicrmw add ptr %0, i32 -1 acq_rel, align 4
  %.not6.i.i = icmp eq i32 %i.c, 1
  br i1 %.not6.i.i, label %bb.c, label %_ZL17hb_object_destroyI17hb_raster_image_tEbPT_.exit.thread

bb.c:                                             ; preds = %_ZL24hb_object_should_destroyI17hb_raster_image_tEbPT_.exit.i
  store atomic i32 -57005, ptr %0 monotonic, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 5 uses
  %.not.i.i3.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i3.i, label %_ZL14hb_object_finiI17hb_raster_image_tEvPT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.e)
  %i.g = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.e) #16 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.e) #16
  store atomic ptr null, ptr %i.d monotonic, align 8
  br label %_ZL14hb_object_finiI17hb_raster_image_tEvPT_.exit.i.i

_ZL14hb_object_finiI17hb_raster_image_tEvPT_.exit.i.i: ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !15
  %i.j = add i32 %i.i, -1
  %spec.select.i.i.i.i.i.i = icmp ult i32 %i.j, -2
  br i1 %spec.select.i.i.i.i.i.i, label %bb.e, label %_ZL17hb_object_destroyI17hb_raster_image_tEbPT_.exit

bb.e:                                             ; preds = %_ZL14hb_object_finiI17hb_raster_image_tEvPT_.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.k, align 4, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  tail call void @hb_free(ptr noundef %i.m) #16
  br label %_ZL17hb_object_destroyI17hb_raster_image_tEbPT_.exit

_ZL17hb_object_destroyI17hb_raster_image_tEbPT_.exit: ; preds = %bb.e, %_ZL14hb_object_finiI17hb_raster_image_tEvPT_.exit.i.i
  tail call void @hb_free(ptr noundef nonnull %0) #16
  br label %_ZL17hb_object_destroyI17hb_raster_image_tEbPT_.exit.thread

_ZL17hb_object_destroyI17hb_raster_image_tEbPT_.exit.thread: ; preds = %bb.a, %bb.b, %_ZL24hb_object_should_destroyI17hb_raster_image_tEbPT_.exit.i, %_ZL17hb_object_destroyI17hb_raster_image_tEbPT_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @hb_raster_image_set_user_data(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZL23hb_object_set_user_dataI17hb_raster_image_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei.exit, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i32, ptr %0 monotonic, align 4
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZL23hb_object_set_user_dataI17hb_raster_image_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei.exit, label %.preheader.i, !prof !16

.preheader.i:                                     ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 2 uses
  %.not1923.i = icmp eq ptr %i.c, null
  br i1 %.not1923.i, label %.lr.ph.i, label %._crit_edge.i, !prof !121

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.d
  %i.d = tail call ptr @hb_calloc(i64 noundef 1, i64 noundef 56) #16 ; 8 uses
end_hunk_1
