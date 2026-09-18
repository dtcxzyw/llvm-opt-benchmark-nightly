Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-raster-image?download=true
inline.NumInlined: 282
inline.NumDeleted: 140
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN17hb_raster_image_t14composite_fromEPKS_25hb_paint_composite_mode_t:bb.a
    i8 0, label %bb.y
  ]

bb.y:                                             ; preds = %_ZL19hb_raster_alpha_muljj.exit115.i
  br label %_ZL19hb_raster_alpha_muljj.exit113.i

bb.z:                                             ; preds = %_ZL19hb_raster_alpha_muljj.exit115.i
  %i.iy = and i32 %i.t, 255
  %i.iz = mul nuw nsw i32 %i.ix, %i.iy
  %i.ja = add nuw nsw i32 %i.iz, 255
  %i.jb = lshr i32 %i.ja, 8
  %i.jc = lshr i32 %i.t, 8                        ; 2 uses
  %i.jd = and i32 %i.jc, 255
  %i.je = mul nuw nsw i32 %i.ix, %i.jd
  %i.jf = add nuw nsw i32 %i.je, 255
  %i.jg = and i32 %i.jf, 130816
  %i.jh = or disjoint i32 %i.jg, %i.jb
  %i.ji = and i32 %i.jc, 65280
  %i.jj = mul nuw nsw i32 %i.ix, %i.ji
  %i.jk = add nuw nsw i32 %i.jj, 65280
  %i.jl = and i32 %i.jk, 33488896
  %i.jm = or disjoint i32 %i.jh, %i.jl
  %i.jn = shl nuw nsw i32 %i.w, 16
  %i.jo = mul nuw i32 %i.jn, %i.ix
  %i.jp = add nuw i32 %i.jo, 16711680
  %i.jq = and i32 %i.jp, -16777216
  %i.jr = or disjoint i32 %i.jm, %i.jq
  br label %_ZL19hb_raster_alpha_muljj.exit113.i

_ZL19hb_raster_alpha_muljj.exit113.i:             ; preds = %bb.z, %bb.y, %_ZL19hb_raster_alpha_muljj.exit115.i
  %.0.i112.i = phi i32 [ %i.jr, %bb.z ], [ 0, %bb.y ], [ %i.t, %_ZL19hb_raster_alpha_muljj.exit115.i ] ; 4 uses
  %i.js = and i32 %.0.i114.i, 255
  %i.jt = and i32 %.0.i112.i, 255
  %i.ju = add nuw nsw i32 %i.jt, %i.js
  %.sroa.speculated270.i = tail call i32 @llvm.umin.i32(i32 %i.ju, i32 255)
  %i.jv = lshr i32 %.0.i114.i, 8
  %i.jw = and i32 %i.jv, 255
  %i.jx = lshr i32 %.0.i112.i, 8
  %i.jy = and i32 %i.jx, 255
  %i.jz = add nuw nsw i32 %i.jy, %i.jw
  %.sroa.speculated265.i = tail call i32 @llvm.umin.i32(i32 %i.jz, i32 255)
  %i.ka = lshr i32 %.0.i114.i, 16
  %i.kb = and i32 %i.ka, 255
  %i.kc = lshr i32 %.0.i112.i, 16
  %i.kd = and i32 %i.kc, 255
  %i.ke = add nuw nsw i32 %i.kd, %i.kb
  %.sroa.speculated260.i = tail call i32 @llvm.umin.i32(i32 %i.ke, i32 255)
  %i.kf = lshr i32 %.0.i114.i, 24
  %i.kg = lshr i32 %.0.i112.i, 24
  %i.kh = add nuw nsw i32 %i.kg, %i.kf
  %.sroa.speculated255.i = tail call i32 @llvm.umin.i32(i32 %i.kh, i32 255)
  %i.ki = shl nuw nsw i32 %.sroa.speculated265.i, 8
  %i.kj = or disjoint i32 %i.ki, %.sroa.speculated270.i
  %i.kk = shl nuw nsw i32 %.sroa.speculated260.i, 16
  %i.kl = or disjoint i32 %i.kj, %i.kk
  %i.km = shl nuw i32 %.sroa.speculated255.i, 24
  %i.kn = or disjoint i32 %i.kl, %i.km
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.aa:                                            ; preds = %bb.b
  %i.ko = xor i32 %i.x, 255                       ; 5 uses
  %trunc.i = trunc nuw i32 %i.ko to i8
  switch i8 %trunc.i, label %bb.ac [
    i8 -1, label %_ZL19hb_raster_alpha_muljj.exit111.i
    i8 0, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  br label %_ZL19hb_raster_alpha_muljj.exit111.i

bb.ac:                                            ; preds = %bb.aa
  %i.kp = and i32 %i.t, 255
  %i.kq = mul nuw nsw i32 %i.ko, %i.kp
  %i.kr = add nuw nsw i32 %i.kq, 255
  %i.ks = lshr i32 %i.kr, 8
  %i.kt = lshr i32 %i.t, 8                        ; 2 uses
  %i.ku = and i32 %i.kt, 255
  %i.kv = mul nuw nsw i32 %i.ko, %i.ku
  %i.kw = add nuw nsw i32 %i.kv, 255
  %i.kx = and i32 %i.kw, 130816
  %i.ky = or disjoint i32 %i.kx, %i.ks
  %i.kz = and i32 %i.kt, 65280
  %i.la = mul nuw nsw i32 %i.ko, %i.kz
  %i.lb = add nuw nsw i32 %i.la, 65280
  %i.lc = and i32 %i.lb, 33488896
  %i.ld = or disjoint i32 %i.ky, %i.lc
  %i.le = shl nuw nsw i32 %i.w, 16
  %i.lf = mul nuw i32 %i.le, %i.ko
  %i.lg = add nuw i32 %i.lf, 16711680
  %i.lh = and i32 %i.lg, -16777216
  %i.li = or disjoint i32 %i.ld, %i.lh
  br label %_ZL19hb_raster_alpha_muljj.exit111.i

_ZL19hb_raster_alpha_muljj.exit111.i:             ; preds = %bb.ac, %bb.ab, %bb.aa
  %.0.i110.i = phi i32 [ %i.li, %bb.ac ], [ 0, %bb.ab ], [ %i.t, %bb.aa ] ; 4 uses
  %i.lj = xor i32 %i.w, 255                       ; 5 uses
  %trunc295.i = trunc nuw i32 %i.lj to i8
  switch i8 %trunc295.i, label %bb.ae [
    i8 -1, label %_ZL19hb_raster_alpha_muljj.exit.i
    i8 0, label %bb.ad
  ]

bb.ad:                                            ; preds = %_ZL19hb_raster_alpha_muljj.exit111.i
  br label %_ZL19hb_raster_alpha_muljj.exit.i

bb.ae:                                            ; preds = %_ZL19hb_raster_alpha_muljj.exit111.i
  %i.lk = and i32 %i.v, 255
  %i.ll = mul nuw nsw i32 %i.lk, %i.lj
  %i.lm = add nuw nsw i32 %i.ll, 255
  %i.ln = lshr i32 %i.lm, 8
  %i.lo = lshr i32 %i.v, 8
  %i.lp = and i32 %i.lo, 255
  %i.lq = mul nuw nsw i32 %i.lp, %i.lj
  %i.lr = add nuw nsw i32 %i.lq, 255
  %i.ls = and i32 %i.lr, 130816
  %i.lt = lshr i32 %i.v, 16
  %i.lu = and i32 %i.lt, 255
  %i.lv = or disjoint i32 %i.ls, %i.ln
  %i.lw = shl nuw nsw i32 %i.lj, 8
  %i.lx = mul nuw nsw i32 %i.lw, %i.lu
  %i.ly = add nuw nsw i32 %i.lx, 65280
  %i.lz = and i32 %i.ly, 33488896
  %i.ma = or disjoint i32 %i.lv, %i.lz
  %i.mb = shl nuw nsw i32 %i.lj, 16
  %i.mc = mul nuw i32 %i.mb, %i.x
  %i.md = add nuw i32 %i.mc, 16711680
  %i.me = and i32 %i.md, -16777216
  %i.mf = or disjoint i32 %i.ma, %i.me
  br label %_ZL19hb_raster_alpha_muljj.exit.i

_ZL19hb_raster_alpha_muljj.exit.i:                ; preds = %bb.ae, %bb.ad, %_ZL19hb_raster_alpha_muljj.exit111.i
  %.0.i109.i = phi i32 [ %i.mf, %bb.ae ], [ 0, %bb.ad ], [ %i.v, %_ZL19hb_raster_alpha_muljj.exit111.i ] ; 4 uses
  %i.mg = and i32 %.0.i110.i, 255
  %i.mh = and i32 %.0.i109.i, 255
  %i.mi = add nuw nsw i32 %i.mh, %i.mg
  %.sroa.speculated250.i = tail call i32 @llvm.umin.i32(i32 %i.mi, i32 255)
  %i.mj = lshr i32 %.0.i110.i, 8
  %i.mk = and i32 %i.mj, 255
  %i.ml = lshr i32 %.0.i109.i, 8
  %i.mm = and i32 %i.ml, 255
  %i.mn = add nuw nsw i32 %i.mm, %i.mk
  %.sroa.speculated245.i = tail call i32 @llvm.umin.i32(i32 %i.mn, i32 255)
  %i.mo = lshr i32 %.0.i110.i, 16
  %i.mp = and i32 %i.mo, 255
  %i.mq = lshr i32 %.0.i109.i, 16
  %i.mr = and i32 %i.mq, 255
  %i.ms = add nuw nsw i32 %i.mr, %i.mp
  %.sroa.speculated240.i = tail call i32 @llvm.umin.i32(i32 %i.ms, i32 255)
  %i.mt = lshr i32 %.0.i110.i, 24
  %i.mu = lshr i32 %.0.i109.i, 24
  %i.mv = add nuw nsw i32 %i.mu, %i.mt
  %.sroa.speculated235.i = tail call i32 @llvm.umin.i32(i32 %i.mv, i32 255)
  %i.mw = shl nuw nsw i32 %.sroa.speculated245.i, 8
  %i.mx = or disjoint i32 %i.mw, %.sroa.speculated250.i
  %i.my = shl nuw nsw i32 %.sroa.speculated240.i, 16
  %i.mz = or disjoint i32 %i.mx, %i.my
  %i.na = shl nuw i32 %.sroa.speculated235.i, 24
  %i.nb = or disjoint i32 %i.mz, %i.na
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.af:                                            ; preds = %bb.b
  %i.nc = and i32 %i.t, 255
  %i.nd = and i32 %i.v, 255
  %i.ne = add nuw nsw i32 %i.nd, %i.nc
  %.sroa.speculated230.i = tail call i32 @llvm.umin.i32(i32 %i.ne, i32 255)
  %i.nf = lshr i32 %i.t, 8
  %i.ng = and i32 %i.nf, 255
  %i.nh = lshr i32 %i.v, 8
  %i.ni = and i32 %i.nh, 255
  %i.nj = add nuw nsw i32 %i.ni, %i.ng
  %.sroa.speculated225.i = tail call i32 @llvm.umin.i32(i32 %i.nj, i32 255)
  %i.nk = lshr i32 %i.t, 16
  %i.nl = and i32 %i.nk, 255
  %i.nm = lshr i32 %i.v, 16
  %i.nn = and i32 %i.nm, 255
  %i.no = add nuw nsw i32 %i.nn, %i.nl
  %.sroa.speculated220.i = tail call i32 @llvm.umin.i32(i32 %i.no, i32 255)
  %i.np = add nuw nsw i32 %i.x, %i.w
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.np, i32 255)
  %i.nq = shl nuw nsw i32 %.sroa.speculated225.i, 8
  %i.nr = or disjoint i32 %i.nq, %.sroa.speculated230.i
  %i.ns = shl nuw nsw i32 %.sroa.speculated220.i, 16
  %i.nt = or disjoint i32 %i.nr, %i.ns
  %i.nu = shl nuw i32 %.sroa.speculated.i, 24
  %i.nv = or disjoint i32 %i.nt, %i.nu
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.ag:                                            ; preds = %bb.b
  %i.nw = and i32 %i.t, 255
  %i.nx = insertelement <2 x i32> poison, i32 %i.t, i64 0
  %i.ny = insertelement <2 x i32> %i.nx, i32 %i.v, i64 1
  %i.nz = lshr <2 x i32> %i.ny, splat (i32 8)
  %i.oa = lshr i32 %i.t, 16
  %i.ob = uitofp nneg i32 %i.w to float
  %i.oc = and i32 %i.v, 255
  %i.od = lshr i32 %i.v, 16
  %i.oe = uitofp nneg i32 %i.x to float
  %i.of = insertelement <2 x float> poison, float %i.ob, i64 0
  %i.og = insertelement <2 x float> %i.of, float %i.oe, i64 1
  %i.oh = fdiv <2 x float> %i.og, splat (float 2.550000e+02) ; 10 uses
  %3 = extractelement <2 x float> %i.oh, i64 1    ; 3 uses
  %4 = extractelement <2 x float> %i.oh, i64 0    ; 2 uses
  %i.oi = and <2 x i32> %i.nz, splat (i32 255)
  %i.oj = uitofp nneg <2 x i32> %i.oi to <2 x float>
  %i.ok = fdiv <2 x float> %i.oj, splat (float 2.550000e+02)
  %i.ol = fcmp ogt <2 x float> %i.oh, zeroinitializer ; 3 uses
  %i.om = and i32 %i.od, 255
  %i.on = and i32 %i.oa, 255
  %i.oo = uitofp nneg i32 %i.om to float
  %i.op = uitofp nneg i32 %i.on to float
  %i.oq = insertelement <2 x float> poison, float %i.op, i64 0
  %i.or = insertelement <2 x float> %i.oq, float %i.oo, i64 1
  %i.os = fdiv <2 x float> %i.or, splat (float 2.550000e+02)
  %i.ot = fdiv <2 x float> %i.os, %i.oh
  %i.ou = select <2 x i1> %i.ol, <2 x float> %i.ot, <2 x float> zeroinitializer ; 4 uses
  %i.ov = fdiv <2 x float> %i.ok, %i.oh
  %i.ow = select <2 x i1> %i.ol, <2 x float> %i.ov, <2 x float> zeroinitializer ; 3 uses
  %i.ox = uitofp nneg i32 %i.oc to float
  %i.oy = uitofp nneg i32 %i.nw to float
  %i.oz = insertelement <2 x float> poison, float %i.oy, i64 0
  %i.pa = insertelement <2 x float> %i.oz, float %i.ox, i64 1
  %i.pb = fdiv <2 x float> %i.pa, splat (float 2.550000e+02)
  %i.pc = fdiv <2 x float> %i.pb, %i.oh
  %i.pd = select <2 x i1> %i.ol, <2 x float> %i.pc, <2 x float> zeroinitializer ; 3 uses
  %shift = shufflevector <2 x float> %i.ou, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.ou, %shift
  %i.pe = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.pf = extractelement <2 x float> %i.ow, i64 0
  %i.pg = extractelement <2 x float> %i.ow, i64 1 ; 2 uses
  %5 = fmul float %i.pf, %i.pg
  %6 = extractelement <2 x float> %i.pd, i64 0
  %7 = extractelement <2 x float> %i.pd, i64 1    ; 2 uses
  %8 = fmul float %6, %7
  %i.ph = fadd float %4, %3
  %9 = fmul float %4, %3                          ; 3 uses
  %i.pi = fsub nnan <2 x float> splat (float 1.000000e+00), %i.oh ; 2 uses
  %shift96 = shufflevector <2 x float> %i.pi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop97 = fmul <2 x float> %i.oh, %shift96 ; 3 uses
  %i.pj = extractelement <2 x float> %i.pi, i64 0
  %i.pk = fmul float %i.pj, %3                    ; 3 uses
  %foldExtExtBinop99 = fmul <2 x float> %foldExtExtBinop97, %i.ou
  %i.pl = extractelement <2 x float> %foldExtExtBinop99, i64 0
  %foldExtExtBinop101 = fmul <2 x float> %foldExtExtBinop97, %i.ow
  %10 = extractelement <2 x float> %foldExtExtBinop101, i64 0
  %foldExtExtBinop103 = fmul <2 x float> %i.pd, %foldExtExtBinop97
  %11 = extractelement <2 x float> %foldExtExtBinop103, i64 0
  %12 = tail call float @llvm.fmuladd.f32(float %9, float %i.pe, float %i.pl)
  %13 = tail call float @llvm.fmuladd.f32(float %9, float %5, float %10)
  %14 = tail call float @llvm.fmuladd.f32(float %9, float %8, float %11)
  %i.pm = insertelement <2 x float> %i.oh, float %i.pk, i64 0
  %i.pn = fneg <2 x float> %i.oh
  %i.po = shufflevector <2 x float> %i.ou, <2 x float> %i.pn, <2 x i32> <i32 1, i32 2>
  %i.pp = insertelement <2 x float> poison, float %12, i64 0
  %i.pq = insertelement <2 x float> %i.pp, float %i.ph, i64 1
  %15 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pm, <2 x float> %i.po, <2 x float> %i.pq)
  %16 = tail call float @llvm.fmuladd.f32(float %i.pk, float %i.pg, float %13)
  %17 = tail call float @llvm.fmuladd.f32(float %i.pk, float %7, float %14)
  %18 = insertelement <4 x float> poison, float %17, i64 0
  %19 = insertelement <4 x float> %18, float %16, i64 1
  %20 = shufflevector <2 x float> %15, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %21 = shufflevector <4 x float> %19, <4 x float> %20, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.pr = fcmp oge <4 x float> %21, zeroinitializer
  %i.ps = select <4 x i1> %i.pr, <4 x float> %21, <4 x float> zeroinitializer ; 2 uses
  %i.pt = fcmp ole <4 x float> %i.ps, splat (float 1.000000e+00)
  %i.pu = select <4 x i1> %i.pt, <4 x float> %i.ps, <4 x float> splat (float 1.000000e+00)
  %i.pv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pu, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.pw = fptoui <4 x float> %i.pv to <4 x i8>
  %i.px = bitcast <4 x i8> %i.pw to i32
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.ah:                                            ; preds = %bb.b
  %i.py = and i32 %i.t, 255
  %i.pz = lshr i32 %i.t, 8
  %i.qa = insertelement <2 x i32> poison, i32 %i.t, i64 0
  %i.qb = insertelement <2 x i32> %i.qa, i32 %i.v, i64 1
  %i.qc = lshr <2 x i32> %i.qb, splat (i32 16)
  %i.qd = uitofp nneg i32 %i.w to float
  %i.qe = and i32 %i.v, 255
  %i.qf = lshr i32 %i.v, 8
  %i.qg = uitofp nneg i32 %i.x to float
  %i.qh = insertelement <2 x float> poison, float %i.qd, i64 0
  %i.qi = insertelement <2 x float> %i.qh, float %i.qg, i64 1
  %i.qj = fdiv <2 x float> %i.qi, splat (float 2.550000e+02) ; 10 uses
  %i.qk = extractelement <2 x float> %i.qj, i64 1 ; 2 uses
  %i.ql = extractelement <2 x float> %i.qj, i64 0 ; 2 uses
  %i.qm = and <2 x i32> %i.qc, splat (i32 255)
  %i.qn = uitofp nneg <2 x i32> %i.qm to <2 x float>
  %i.qo = fdiv <2 x float> %i.qn, splat (float 2.550000e+02)
  %i.qp = fcmp ogt <2 x float> %i.qj, zeroinitializer ; 3 uses
  %i.qq = fdiv <2 x float> %i.qo, %i.qj
  %i.qr = select <2 x i1> %i.qp, <2 x float> %i.qq, <2 x float> zeroinitializer ; 5 uses
  %i.qs = and i32 %i.qf, 255
  %i.qt = and i32 %i.pz, 255
  %i.qu = uitofp nneg i32 %i.qs to float
  %i.qv = uitofp nneg i32 %i.qt to float
  %i.qw = insertelement <2 x float> poison, float %i.qv, i64 0
  %i.qx = insertelement <2 x float> %i.qw, float %i.qu, i64 1
  %i.qy = fdiv <2 x float> %i.qx, splat (float 2.550000e+02)
  %i.qz = fdiv <2 x float> %i.qy, %i.qj
  %i.ra = select <2 x i1> %i.qp, <2 x float> %i.qz, <2 x float> zeroinitializer ; 4 uses
  %i.rb = uitofp nneg i32 %i.qe to float
  %i.rc = uitofp nneg i32 %i.py to float
  %i.rd = insertelement <2 x float> poison, float %i.rc, i64 0
  %i.re = insertelement <2 x float> %i.rd, float %i.rb, i64 1
  %i.rf = fdiv <2 x float> %i.re, splat (float 2.550000e+02)
  %i.rg = fdiv <2 x float> %i.rf, %i.qj
  %i.rh = select <2 x i1> %i.qp, <2 x float> %i.rg, <2 x float> zeroinitializer ; 4 uses
  %i.ri = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.qr)
  %i.rj = extractelement <2 x float> %i.qr, i64 0
  %i.rk = fneg float %i.rj
  %i.rl = extractelement <2 x float> %i.qr, i64 1
  %i.rm = tail call noundef float @llvm.fmuladd.f32(float %i.rk, float %i.rl, float %i.ri)
  %i.rn = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ra)
  %i.ro = extractelement <2 x float> %i.ra, i64 0
  %i.rp = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.rh)
  %i.rq = fsub nnan <2 x float> splat (float 1.000000e+00), %i.qj ; 2 uses
  %i.rr = fneg float %i.ro
  %i.rs = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.qj)
  %i.rt = fneg float %i.ql
  %i.ru = insertelement <2 x float> poison, float %i.rr, i64 0
  %i.rv = fneg <2 x float> %i.rh
  %i.rw = shufflevector <2 x float> %i.ru, <2 x float> %i.rv, <2 x i32> <i32 0, i32 2>
  %i.rx = shufflevector <2 x float> %i.ra, <2 x float> %i.rh, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ry = insertelement <2 x float> poison, float %i.rn, i64 0
  %i.rz = insertelement <2 x float> %i.ry, float %i.rp, i64 1
  %i.sa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rw, <2 x float> %i.rx, <2 x float> %i.rz)
  %shift105 = shufflevector <2 x float> %i.rq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop106.a = fmul <2 x float> %i.qj, %shift105 ; 3 uses
  %i.sb = extractelement <2 x float> %i.rq, i64 0
  %i.sc = fmul float %i.sb, %i.qk                 ; 2 uses
  %i.sd = fmul float %i.ql, %i.qk                 ; 2 uses
  %foldExtExtBinop108.a = fmul <2 x float> %foldExtExtBinop106.a, %i.qr
  %i.se = extractelement <2 x float> %foldExtExtBinop108.a, i64 0
  %foldExtExtBinop110 = fmul <2 x float> %i.rh, %foldExtExtBinop106.a
  %i.sf = extractelement <2 x float> %foldExtExtBinop110, i64 0
  %foldExtExtBinop112 = fmul <2 x float> %foldExtExtBinop106.a, %i.ra
  %i.sg = extractelement <2 x float> %foldExtExtBinop112, i64 0
  %i.sh = tail call float @llvm.fmuladd.f32(float %i.sd, float %i.rm, float %i.se)
  %i.si = insertelement <4 x float> poison, float %i.sd, i64 0
  %i.sj = insertelement <4 x float> %i.si, float %i.rt, i64 2
  %i.sk = insertelement <4 x float> %i.sj, float %i.sc, i64 3
  %i.sl = shufflevector <4 x float> %i.sk, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.sm = shufflevector <2 x float> %i.qj, <2 x float> %i.qr, <4 x i32> <i32 poison, i32 poison, i32 1, i32 3>
  %i.sn = shufflevector <2 x float> %i.sa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.so = shufflevector <4 x float> %i.sn, <4 x float> %i.sm, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.sp = insertelement <4 x float> poison, float %i.sg, i64 0
  %i.sq = insertelement <4 x float> %i.sp, float %i.sf, i64 1
  %i.sr = insertelement <4 x float> %i.sq, float %i.rs, i64 2
  %i.ss = insertelement <4 x float> %i.sr, float %i.sh, i64 3
  %i.st = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sl, <4 x float> %i.so, <4 x float> %i.ss) ; 2 uses
  %i.su = insertelement <2 x float> poison, float %i.sc, i64 0
  %i.sv = shufflevector <2 x float> %i.su, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sw = shufflevector <4 x float> %i.st, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.sx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sv, <2 x float> %i.rx, <2 x float> %i.sw)
  %i.sy = shufflevector <2 x float> %i.sx, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.sz = shufflevector <4 x float> %i.sy, <4 x float> %i.st, <4 x i32> <i32 0, i32 1, i32 7, i32 6> ; 2 uses
  %i.ta = fcmp oge <4 x float> %i.sz, zeroinitializer
  %i.tb = select <4 x i1> %i.ta, <4 x float> %i.sz, <4 x float> zeroinitializer ; 2 uses
  %i.tc = fcmp ole <4 x float> %i.tb, splat (float 1.000000e+00)
  %i.td = select <4 x i1> %i.tc, <4 x float> %i.tb, <4 x float> splat (float 1.000000e+00)
  %i.te = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.td, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.tf = fptoui <4 x float> %i.te to <4 x i8>
  %i.tg = bitcast <4 x i8> %i.tf to i32
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.ai:                                            ; preds = %bb.b
  %i.th = and i32 %i.t, 255
  %i.ti = lshr i32 %i.t, 8
  %i.tj = lshr i32 %i.t, 16
  %i.tk = uitofp nneg i32 %i.w to float
  %i.tl = and i32 %i.v, 255
  %i.tm = lshr i32 %i.v, 8
  %i.tn = lshr i32 %i.v, 16
  %i.to = uitofp nneg i32 %i.x to float
  %i.tp = insertelement <2 x float> poison, float %i.tk, i64 0
  %i.tq = insertelement <2 x float> %i.tp, float %i.to, i64 1
  %i.tr = fdiv <2 x float> %i.tq, splat (float 2.550000e+02) ; 9 uses
  %i.ts = shufflevector <2 x float> %i.tr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tt = insertelement <4 x i32> poison, i32 %i.tj, i64 0
  %i.tu = insertelement <4 x i32> %i.tt, i32 %i.tn, i64 1
  %i.tv = insertelement <4 x i32> %i.tu, i32 %i.ti, i64 2
  %i.tw = insertelement <4 x i32> %i.tv, i32 %i.tm, i64 3
  %i.tx = and <4 x i32> %i.tw, splat (i32 255)
  %i.ty = uitofp nneg <4 x i32> %i.tx to <4 x float> ; 2 uses
  %i.tz = shufflevector <4 x float> %i.ty, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.ua = fdiv <2 x float> %i.tz, splat (float 2.550000e+02)
  %i.ub = fdiv <2 x float> %i.ua, %i.ts
  %i.uc = shufflevector <4 x float> %i.ty, <4 x float> poison, <2 x i32> <i32 3, i32 1>
  %i.ud = fdiv <2 x float> %i.uc, splat (float 2.550000e+02)
  %i.ue = shufflevector <2 x float> %i.tr, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.uf = fdiv <2 x float> %i.ud, %i.ue
  %i.ug = uitofp nneg i32 %i.tl to float
  %i.uh = uitofp nneg i32 %i.th to float
  %i.ui = insertelement <2 x float> poison, float %i.uh, i64 0
  %i.uj = insertelement <2 x float> %i.ui, float %i.ug, i64 1
  %i.uk = fdiv <2 x float> %i.uj, splat (float 2.550000e+02)
  %22 = fcmp ogt <2 x float> %i.tr, zeroinitializer ; 3 uses
  %23 = shufflevector <2 x i1> %22, <2 x i1> poison, <2 x i32> zeroinitializer
  %24 = select <2 x i1> %23, <2 x float> %i.ub, <2 x float> zeroinitializer ; 5 uses
  %i.ul = fdiv <2 x float> %i.uk, %i.tr
  %25 = shufflevector <2 x i1> %22, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %26 = select <2 x i1> %25, <2 x float> %i.uf, <2 x float> zeroinitializer ; 4 uses
  %i.um = select <2 x i1> %22, <2 x float> %i.ul, <2 x float> zeroinitializer ; 5 uses
  %i.un = extractelement <2 x float> %26, i64 1   ; 2 uses
  %i.uo = fcmp ugt float %i.un, 5.000000e-01
  br i1 %i.uo, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.up = extractelement <2 x float> %24, i64 1
  %i.uq = fmul float %i.up, 2.000000e+00
  %i.ur = fmul float %i.uq, %i.un
  br label %_ZL13blend_overlayff.exit188.i

bb.ak:                                            ; preds = %bb.ai
  %i.us = shufflevector <2 x float> %24, <2 x float> %26, <2 x i32> <i32 1, i32 3>
  %i.ut = fsub <2 x float> splat (float 1.000000e+00), %i.us ; 2 uses
  %i.uu = extractelement <2 x float> %i.ut, i64 0
  %i.uv = fmul float %i.uu, -2.000000e+00
  %i.uw = extractelement <2 x float> %i.ut, i64 1
  %i.ux = tail call float @llvm.fmuladd.f32(float %i.uv, float %i.uw, float 1.000000e+00)
  br label %_ZL13blend_overlayff.exit188.i

_ZL13blend_overlayff.exit188.i:                   ; preds = %bb.ak, %bb.aj
  %i.uy = phi float [ %i.ur, %bb.aj ], [ %i.ux, %bb.ak ]
  %i.uz = extractelement <2 x float> %26, i64 0   ; 3 uses
  %i.va = fcmp ugt float %i.uz, 5.000000e-01
  br i1 %i.va, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZL13blend_overlayff.exit188.i
  %i.vb = extractelement <2 x float> %24, i64 0
  %i.vc = fmul float %i.vb, 2.000000e+00
  %i.vd = fmul float %i.vc, %i.uz
  br label %_ZL13blend_overlayff.exit187.i

bb.am:                                            ; preds = %_ZL13blend_overlayff.exit188.i
  %i.ve = extractelement <2 x float> %24, i64 0
  %i.vf = fsub float 1.000000e+00, %i.ve
  %i.vg = fsub float 1.000000e+00, %i.uz
  %i.vh = fmul float %i.vf, -2.000000e+00
  %i.vi = tail call float @llvm.fmuladd.f32(float %i.vh, float %i.vg, float 1.000000e+00)
  br label %_ZL13blend_overlayff.exit187.i

_ZL13blend_overlayff.exit187.i:                   ; preds = %bb.am, %bb.al
  %i.vj = phi float [ %i.vd, %bb.al ], [ %i.vi, %bb.am ]
  %i.vk = extractelement <2 x float> %i.um, i64 1 ; 2 uses
  %i.vl = fcmp ugt float %i.vk, 5.000000e-01
  br i1 %i.vl, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZL13blend_overlayff.exit187.i
  %i.vm = extractelement <2 x float> %i.um, i64 0
  %i.vn = fmul float %i.vm, 2.000000e+00
  %i.vo = fmul float %i.vn, %i.vk
  br label %_ZL13blend_overlayff.exit.i

bb.ao:                                            ; preds = %_ZL13blend_overlayff.exit187.i
  %i.vp = fsub <2 x float> splat (float 1.000000e+00), %i.um ; 2 uses
  %i.vq = extractelement <2 x float> %i.vp, i64 0
  %i.vr = fmul float %i.vq, -2.000000e+00
  %i.vs = extractelement <2 x float> %i.vp, i64 1
  %i.vt = tail call float @llvm.fmuladd.f32(float %i.vr, float %i.vs, float 1.000000e+00)
  br label %_ZL13blend_overlayff.exit.i

_ZL13blend_overlayff.exit.i:                      ; preds = %bb.ao, %bb.an
  %i.vu = phi float [ %i.vo, %bb.an ], [ %i.vt, %bb.ao ]
  %i.vv = extractelement <2 x float> %i.tr, i64 1 ; 2 uses
  %i.vw = extractelement <2 x float> %i.tr, i64 0 ; 2 uses
  %i.vx = fsub nnan <2 x float> splat (float 1.000000e+00), %i.tr ; 2 uses
  %i.vy = fneg float %i.vw
  %i.vz = fmul float %i.vw, %i.vv
  %i.wa = shufflevector <2 x float> %i.tr, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.wb = shufflevector <2 x float> <float poison, float 1.000000e+00>, <2 x float> %i.vx, <4 x i32> <i32 3, i32 3, i32 3, i32 1>
  %i.wc = fmul <4 x float> %i.wa, %i.wb
  %i.wd = extractelement <2 x float> %i.vx, i64 0
  %i.we = fmul float %i.wd, %i.vv
  %i.wf = shufflevector <2 x float> %i.um, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.wg = insertelement <4 x float> %i.wf, float 1.000000e+00, i64 3
  %i.wh = shufflevector <2 x float> %24, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.wi = shufflevector <4 x float> %i.wg, <4 x float> %i.wh, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.wj = fmul <4 x float> %i.wc, %i.wi
  %i.wk = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.vz, i64 0
  %i.wl = shufflevector <4 x float> %i.wk, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.wm = insertelement <4 x float> poison, float %i.vu, i64 0
  %i.wn = insertelement <4 x float> %i.wm, float %i.vj, i64 1
  %i.wo = insertelement <4 x float> %i.wn, float %i.uy, i64 2
  %i.wp = shufflevector <2 x float> %i.tr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.wq = shufflevector <4 x float> %i.wo, <4 x float> %i.wp, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.wr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wl, <4 x float> %i.wq, <4 x float> %i.wj)
  %i.ws = insertelement <4 x float> poison, float %i.we, i64 0
  %i.wt = insertelement <4 x float> %i.ws, float %i.vy, i64 1
  %i.wu = shufflevector <4 x float> %i.wt, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.wv = shufflevector <2 x float> %i.um, <2 x float> %26, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.ww = shufflevector <4 x float> %i.wv, <4 x float> %i.wp, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.wx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wu, <4 x float> %i.ww, <4 x float> %i.wr) ; 2 uses
  %i.wy = fcmp oge <4 x float> %i.wx, zeroinitializer
  %i.wz = select <4 x i1> %i.wy, <4 x float> %i.wx, <4 x float> zeroinitializer ; 2 uses
  %i.xa = fcmp ole <4 x float> %i.wz, splat (float 1.000000e+00)
  %i.xb = select <4 x i1> %i.xa, <4 x float> %i.wz, <4 x float> splat (float 1.000000e+00)
  %i.xc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xb, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.xd = fptoui <4 x float> %i.xc to <4 x i8>
  %i.xe = bitcast <4 x i8> %i.xd to i32
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.ap:                                            ; preds = %bb.b
  %i.xf = lshr i32 %i.t, 8
  %i.xg = lshr i32 %i.t, 16
  %i.xh = uitofp nneg i32 %i.w to float
  %i.xi = lshr i32 %i.v, 8
  %i.xj = lshr i32 %i.v, 16
  %i.xk = uitofp nneg i32 %i.x to float
  %i.xl = insertelement <4 x i32> poison, i32 %i.xf, i64 0
  %i.xm = insertelement <4 x i32> %i.xl, i32 %i.t, i64 1
  %i.xn = insertelement <4 x i32> %i.xm, i32 %i.xi, i64 2
  %i.xo = insertelement <4 x i32> %i.xn, i32 %i.v, i64 3
  %i.xp = and <4 x i32> %i.xo, splat (i32 255)
  %i.xq = uitofp nneg <4 x i32> %i.xp to <4 x float> ; 2 uses
  %i.xr = shufflevector <4 x float> %i.xq, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xs = fdiv <2 x float> %i.xr, splat (float 2.550000e+02)
  %i.xt = shufflevector <4 x float> %i.xq, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.xu = fdiv <2 x float> %i.xt, splat (float 2.550000e+02)
  %i.xv = insertelement <2 x float> poison, float %i.xk, i64 0
  %i.xw = insertelement <2 x float> %i.xv, float %i.xh, i64 1
  %i.xx = fdiv <2 x float> %i.xw, splat (float 2.550000e+02) ; 10 uses
  %i.xy = extractelement <2 x float> %i.xx, i64 1 ; 3 uses
  %i.xz = fcmp ogt <2 x float> %i.xx, zeroinitializer ; 3 uses
  %i.ya = shufflevector <2 x float> %i.xx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.yb = fdiv <2 x float> %i.xs, %i.ya
  %i.yc = shufflevector <2 x i1> %i.xz, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.yd = select <2 x i1> %i.yc, <2 x float> %i.yb, <2 x float> zeroinitializer ; 3 uses
  %i.ye = extractelement <2 x float> %i.xx, i64 0 ; 2 uses
  %i.yf = and i32 %i.xj, 255
  %i.yg = and i32 %i.xg, 255
  %i.yh = uitofp nneg i32 %i.yf to float
  %i.yi = uitofp nneg i32 %i.yg to float
  %i.yj = insertelement <2 x float> poison, float %i.yh, i64 0
  %i.yk = insertelement <2 x float> %i.yj, float %i.yi, i64 1
  %i.yl = fdiv <2 x float> %i.yk, splat (float 2.550000e+02)
  %i.ym = fdiv <2 x float> %i.yl, %i.xx
  %i.yn = select <2 x i1> %i.xz, <2 x float> %i.ym, <2 x float> zeroinitializer ; 3 uses
  %i.yo = shufflevector <2 x float> %i.xx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yp = fdiv <2 x float> %i.xu, %i.yo
  %i.yq = shufflevector <2 x i1> %i.xz, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.yr = select <2 x i1> %i.yq, <2 x float> %i.yp, <2 x float> zeroinitializer ; 3 uses
  %i.ys = extractelement <2 x float> %i.yn, i64 0 ; 2 uses
  %i.yt = extractelement <2 x float> %i.yn, i64 1 ; 3 uses
  %i.yu = fcmp ole float %i.yt, %i.ys
  %.sroa.speculated.i190.i = select i1 %i.yu, float %i.yt, float %i.ys
  %i.yv = fcmp ole <2 x float> %i.yd, %i.yr
  %i.yw = select <2 x i1> %i.yv, <2 x float> %i.yd, <2 x float> %i.yr
  %i.yx = fadd float %i.xy, %i.ye
  %i.yy = fsub nnan <2 x float> splat (float 1.000000e+00), %i.xx ; 2 uses
  %i.yz = extractelement <2 x float> %i.yy, i64 0
  %i.za = fmul float %i.xy, %i.yz                 ; 2 uses
  %i.zb = fmul float %i.xy, %i.ye                 ; 2 uses
  %shift114 = shufflevector <2 x float> %i.yy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop115 = fmul <2 x float> %shift114, %i.xx
  %i.zc = fmul float %i.za, %i.yt
  %i.zd = insertelement <2 x float> poison, float %i.za, i64 0
  %i.ze = shufflevector <2 x float> %i.zd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zf = fmul <2 x float> %i.yd, %i.ze
  %i.zg = tail call float @llvm.fmuladd.f32(float %i.zb, float %.sroa.speculated.i190.i, float %i.zc)
  %i.zh = insertelement <2 x float> poison, float %i.zb, i64 0
  %i.zi = shufflevector <2 x float> %i.zh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zi, <2 x float> %i.yw, <2 x float> %i.zf)
  %i.zk = fneg <2 x float> %i.xx
  %i.zl = shufflevector <2 x float> %i.yn, <2 x float> %i.zk, <2 x i32> <i32 0, i32 3>
  %i.zm = insertelement <2 x float> poison, float %i.zg, i64 0
  %i.zn = insertelement <2 x float> %i.zm, float %i.yx, i64 1
  %i.zo = shufflevector <2 x float> %foldExtExtBinop115, <2 x float> %i.xx, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.zp = shufflevector <2 x float> %i.yr, <2 x float> %i.zl, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.zq = shufflevector <2 x float> %i.zj, <2 x float> %i.zn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.zr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zo, <4 x float> %i.zp, <4 x float> %i.zq) ; 2 uses
  %i.zs = fcmp oge <4 x float> %i.zr, zeroinitializer
  %i.zt = select <4 x i1> %i.zs, <4 x float> %i.zr, <4 x float> zeroinitializer ; 2 uses
  %i.zu = fcmp ole <4 x float> %i.zt, splat (float 1.000000e+00)
  %i.zv = select <4 x i1> %i.zu, <4 x float> %i.zt, <4 x float> splat (float 1.000000e+00)
  %i.zw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zv, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.zx = fptoui <4 x float> %i.zw to <4 x i8>
  %i.zy = bitcast <4 x i8> %i.zx to i32
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.aq:                                            ; preds = %bb.b
  %i.zz = lshr i32 %i.t, 8
  %i.aaa = lshr i32 %i.t, 16
  %i.aab = uitofp nneg i32 %i.w to float
  %i.aac = lshr i32 %i.v, 8
  %i.aad = lshr i32 %i.v, 16
  %i.aae = uitofp nneg i32 %i.x to float
  %i.aaf = insertelement <4 x i32> poison, i32 %i.zz, i64 0
  %i.aag = insertelement <4 x i32> %i.aaf, i32 %i.t, i64 1
  %i.aah = insertelement <4 x i32> %i.aag, i32 %i.aac, i64 2
  %i.aai = insertelement <4 x i32> %i.aah, i32 %i.v, i64 3
  %i.aaj = and <4 x i32> %i.aai, splat (i32 255)
  %i.aak = uitofp nneg <4 x i32> %i.aaj to <4 x float> ; 2 uses
  %i.aal = shufflevector <4 x float> %i.aak, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aam = fdiv <2 x float> %i.aal, splat (float 2.550000e+02)
  %i.aan = shufflevector <4 x float> %i.aak, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.aao = fdiv <2 x float> %i.aan, splat (float 2.550000e+02)
  %i.aap = insertelement <2 x float> poison, float %i.aae, i64 0
  %i.aaq = insertelement <2 x float> %i.aap, float %i.aab, i64 1
  %i.aar = fdiv <2 x float> %i.aaq, splat (float 2.550000e+02) ; 10 uses
  %i.aas = extractelement <2 x float> %i.aar, i64 1 ; 3 uses
  %i.aat = fcmp ogt <2 x float> %i.aar, zeroinitializer ; 3 uses
  %i.aau = shufflevector <2 x float> %i.aar, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aav = fdiv <2 x float> %i.aam, %i.aau
  %i.aaw = shufflevector <2 x i1> %i.aat, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.aax = select <2 x i1> %i.aaw, <2 x float> %i.aav, <2 x float> zeroinitializer ; 3 uses
  %i.aay = extractelement <2 x float> %i.aar, i64 0 ; 2 uses
  %i.aaz = and i32 %i.aad, 255
  %i.aba = and i32 %i.aaa, 255
  %i.abb = uitofp nneg i32 %i.aaz to float
  %i.abc = uitofp nneg i32 %i.aba to float
  %i.abd = insertelement <2 x float> poison, float %i.abb, i64 0
  %i.abe = insertelement <2 x float> %i.abd, float %i.abc, i64 1
  %i.abf = fdiv <2 x float> %i.abe, splat (float 2.550000e+02)
  %i.abg = fdiv <2 x float> %i.abf, %i.aar
  %i.abh = select <2 x i1> %i.aat, <2 x float> %i.abg, <2 x float> zeroinitializer ; 3 uses
  %i.abi = shufflevector <2 x float> %i.aar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abj = fdiv <2 x float> %i.aao, %i.abi
  %i.abk = shufflevector <2 x i1> %i.aat, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.abl = select <2 x i1> %i.abk, <2 x float> %i.abj, <2 x float> zeroinitializer ; 3 uses
  %i.abm = extractelement <2 x float> %i.abh, i64 0 ; 2 uses
  %i.abn = extractelement <2 x float> %i.abh, i64 1 ; 3 uses
  %i.abo = fcmp oge float %i.abn, %i.abm
  %.sroa.speculated.i193.i = select i1 %i.abo, float %i.abn, float %i.abm
  %i.abp = fcmp oge <2 x float> %i.aax, %i.abl
  %i.abq = select <2 x i1> %i.abp, <2 x float> %i.aax, <2 x float> %i.abl
  %i.abr = fadd float %i.aas, %i.aay
  %i.abs = fsub nnan <2 x float> splat (float 1.000000e+00), %i.aar ; 2 uses
  %i.abt = extractelement <2 x float> %i.abs, i64 0
  %i.abu = fmul float %i.aas, %i.abt              ; 2 uses
  %i.abv = fmul float %i.aas, %i.aay              ; 2 uses
  %shift117 = shufflevector <2 x float> %i.abs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop118 = fmul <2 x float> %shift117, %i.aar
  %i.abw = fmul float %i.abu, %i.abn
  %i.abx = insertelement <2 x float> poison, float %i.abu, i64 0
  %i.aby = shufflevector <2 x float> %i.abx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abz = fmul <2 x float> %i.aax, %i.aby
  %i.aca = tail call float @llvm.fmuladd.f32(float %i.abv, float %.sroa.speculated.i193.i, float %i.abw)
  %i.acb = insertelement <2 x float> poison, float %i.abv, i64 0
  %i.acc = shufflevector <2 x float> %i.acb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acc, <2 x float> %i.abq, <2 x float> %i.abz)
  %i.ace = fneg <2 x float> %i.aar
  %i.acf = shufflevector <2 x float> %i.abh, <2 x float> %i.ace, <2 x i32> <i32 0, i32 3>
  %i.acg = insertelement <2 x float> poison, float %i.aca, i64 0
  %i.ach = insertelement <2 x float> %i.acg, float %i.abr, i64 1
  %i.aci = shufflevector <2 x float> %foldExtExtBinop118, <2 x float> %i.aar, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.acj = shufflevector <2 x float> %i.abl, <2 x float> %i.acf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ack = shufflevector <2 x float> %i.acd, <2 x float> %i.ach, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.acl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aci, <4 x float> %i.acj, <4 x float> %i.ack) ; 2 uses
  %i.acm = fcmp oge <4 x float> %i.acl, zeroinitializer
  %i.acn = select <4 x i1> %i.acm, <4 x float> %i.acl, <4 x float> zeroinitializer ; 2 uses
  %i.aco = fcmp ole <4 x float> %i.acn, splat (float 1.000000e+00)
  %i.acp = select <4 x i1> %i.aco, <4 x float> %i.acn, <4 x float> splat (float 1.000000e+00)
  %i.acq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acp, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.acr = fptoui <4 x float> %i.acq to <4 x i8>
  %i.acs = bitcast <4 x i8> %i.acr to i32
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.ar:                                            ; preds = %bb.b
  %i.act = and i32 %i.t, 255
  %27 = uitofp nneg i32 %i.act to float
  %28 = fdiv float %27, 2.550000e+02
  %i.acu = lshr i32 %i.t, 8
  %i.acv = lshr i32 %i.t, 16
  %i.acw = uitofp nneg i32 %i.w to float
  %i.acx = and i32 %i.v, 255
  %29 = uitofp nneg i32 %i.acx to float
  %30 = fdiv float %29, 2.550000e+02
  %i.acy = lshr i32 %i.v, 8
  %i.acz = lshr i32 %i.v, 16
  %i.ada = uitofp nneg i32 %i.x to float
  %i.adb = insertelement <2 x float> poison, float %i.acw, i64 0
  %i.adc = insertelement <2 x float> %i.adb, float %i.ada, i64 1
  %i.add = fdiv <2 x float> %i.adc, splat (float 2.550000e+02) ; 7 uses
  %i.ade = extractelement <2 x float> %i.add, i64 0 ; 4 uses
  %i.adf = fcmp ogt float %i.ade, 0.000000e+00    ; 2 uses
  %31 = and i32 %i.acv, 255
  %32 = and i32 %i.acu, 255
  %33 = uitofp nneg i32 %31 to float
  %34 = uitofp nneg i32 %32 to float
  %35 = insertelement <2 x float> poison, float %34, i64 0
  %36 = insertelement <2 x float> %35, float %33, i64 1
  %37 = fdiv <2 x float> %36, splat (float 2.550000e+02)
  %38 = shufflevector <2 x float> %i.add, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adg = fdiv <2 x float> %37, %38
  %39 = insertelement <2 x i1> poison, i1 %i.adf, i64 0
  %40 = shufflevector <2 x i1> %39, <2 x i1> poison, <2 x i32> zeroinitializer
  %41 = select <2 x i1> %40, <2 x float> %i.adg, <2 x float> zeroinitializer ; 3 uses
  %42 = fdiv float %28, %i.ade
  %43 = select i1 %i.adf, float %42, float 0.000000e+00 ; 3 uses
  %44 = extractelement <2 x float> %i.add, i64 1  ; 4 uses
  %45 = fcmp ogt float %44, 0.000000e+00          ; 2 uses
  %46 = and i32 %i.acz, 255
  %47 = and i32 %i.acy, 255
  %i.adh = uitofp nneg i32 %46 to float
  %i.adi = uitofp nneg i32 %47 to float
  %i.adj = insertelement <2 x float> poison, float %i.adi, i64 0
  %i.adk = insertelement <2 x float> %i.adj, float %i.adh, i64 1
  %i.adl = fdiv <2 x float> %i.adk, splat (float 2.550000e+02)
  %48 = shufflevector <2 x float> %i.add, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.adm = fdiv <2 x float> %i.adl, %48
  %49 = insertelement <2 x i1> poison, i1 %45, i64 0
  %50 = shufflevector <2 x i1> %49, <2 x i1> poison, <2 x i32> zeroinitializer
  %51 = select <2 x i1> %50, <2 x float> %i.adm, <2 x float> zeroinitializer ; 3 uses
  %52 = fdiv float %30, %44
  %i.adn = select i1 %45, float %52, float 0.000000e+00 ; 3 uses
  %i.ado = extractelement <2 x float> %51, i64 1  ; 2 uses
  %i.adp = fcmp ugt float %i.ado, 0.000000e+00
  br i1 %i.adp, label %bb.as, label %_ZL17blend_color_dodgeff.exit201.i

bb.as:                                            ; preds = %bb.ar
  %i.adq = extractelement <2 x float> %41, i64 1  ; 2 uses
  %i.adr = fcmp ult float %i.adq, 1.000000e+00
  br i1 %i.adr, label %bb.at, label %_ZL17blend_color_dodgeff.exit201.i

bb.at:                                            ; preds = %bb.as
  %i.ads = fsub float 1.000000e+00, %i.adq
  %i.adt = fdiv float %i.ado, %i.ads              ; 2 uses
  %i.adu = fcmp oge float %i.adt, 1.000000e+00
  %.sroa.speculated.i200.i = select i1 %i.adu, float 1.000000e+00, float %i.adt
  br label %_ZL17blend_color_dodgeff.exit201.i

_ZL17blend_color_dodgeff.exit201.i:               ; preds = %bb.at, %bb.as, %bb.ar
  %.0.i199.i = phi float [ %.sroa.speculated.i200.i, %bb.at ], [ 0.000000e+00, %bb.ar ], [ 1.000000e+00, %bb.as ]
  %i.adv = extractelement <2 x float> %51, i64 0  ; 2 uses
  %i.adw = fcmp ugt float %i.adv, 0.000000e+00
  br i1 %i.adw, label %bb.au, label %_ZL17blend_color_dodgeff.exit198.i

bb.au:                                            ; preds = %_ZL17blend_color_dodgeff.exit201.i
  %i.adx = extractelement <2 x float> %41, i64 0  ; 2 uses
  %i.ady = fcmp ult float %i.adx, 1.000000e+00
  br i1 %i.ady, label %bb.av, label %_ZL17blend_color_dodgeff.exit198.i

bb.av:                                            ; preds = %bb.au
  %i.adz = fsub float 1.000000e+00, %i.adx
  %i.aea = fdiv float %i.adv, %i.adz              ; 2 uses
  %i.aeb = fcmp oge float %i.aea, 1.000000e+00
  %.sroa.speculated.i197.i = select i1 %i.aeb, float 1.000000e+00, float %i.aea
  br label %_ZL17blend_color_dodgeff.exit198.i

_ZL17blend_color_dodgeff.exit198.i:               ; preds = %bb.av, %bb.au, %_ZL17blend_color_dodgeff.exit201.i
  %.0.i196.i = phi float [ %.sroa.speculated.i197.i, %bb.av ], [ 0.000000e+00, %_ZL17blend_color_dodgeff.exit201.i ], [ 1.000000e+00, %bb.au ]
  %i.aec = fcmp ugt float %i.adn, 0.000000e+00
  br i1 %i.aec, label %bb.aw, label %_ZL17blend_color_dodgeff.exit.i

bb.aw:                                            ; preds = %_ZL17blend_color_dodgeff.exit198.i
  %i.aed = fcmp ult float %43, 1.000000e+00
  br i1 %i.aed, label %bb.ax, label %_ZL17blend_color_dodgeff.exit.i

bb.ax:                                            ; preds = %bb.aw
  %i.aee = fsub float 1.000000e+00, %43
  %i.aef = fdiv float %i.adn, %i.aee              ; 2 uses
  %i.aeg = fcmp oge float %i.aef, 1.000000e+00
  %.sroa.speculated.i195.i = select i1 %i.aeg, float 1.000000e+00, float %i.aef
  br label %_ZL17blend_color_dodgeff.exit.i

_ZL17blend_color_dodgeff.exit.i:                  ; preds = %bb.ax, %bb.aw, %_ZL17blend_color_dodgeff.exit198.i
  %.0.i194.i = phi float [ %.sroa.speculated.i195.i, %bb.ax ], [ 0.000000e+00, %_ZL17blend_color_dodgeff.exit198.i ], [ 1.000000e+00, %bb.aw ]
  %i.aeh = fsub nnan <2 x float> splat (float 1.000000e+00), %i.add ; 2 uses
  %i.aei = fneg float %i.ade
  %i.aej = fmul float %i.ade, %44
  %i.aek = shufflevector <2 x float> %i.add, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ael = shufflevector <2 x float> <float poison, float 1.000000e+00>, <2 x float> %i.aeh, <4 x i32> <i32 3, i32 3, i32 3, i32 1>
  %i.aem = fmul <4 x float> %i.aek, %i.ael
  %i.aen = extractelement <2 x float> %i.aeh, i64 0
  %i.aeo = fmul float %i.aen, %44
  %i.aep = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %43, i64 0
  %i.aeq = shufflevector <2 x float> %41, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aer = shufflevector <4 x float> %i.aep, <4 x float> %i.aeq, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.aes = fmul <4 x float> %i.aem, %i.aer
  %i.aet = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.aej, i64 0
  %i.aeu = shufflevector <4 x float> %i.aet, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aev = insertelement <4 x float> poison, float %.0.i194.i, i64 0
  %i.aew = insertelement <4 x float> %i.aev, float %.0.i196.i, i64 1
  %i.aex = insertelement <4 x float> %i.aew, float %.0.i199.i, i64 2
  %i.aey = shufflevector <2 x float> %i.add, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aez = shufflevector <4 x float> %i.aex, <4 x float> %i.aey, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.afa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aeu, <4 x float> %i.aez, <4 x float> %i.aes)
  %i.afb = insertelement <4 x float> poison, float %i.aeo, i64 0
  %i.afc = insertelement <4 x float> %i.afb, float %i.aei, i64 1
  %i.afd = shufflevector <4 x float> %i.afc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.afe = insertelement <4 x float> poison, float %i.adn, i64 0
  %i.aff = shufflevector <2 x float> %51, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.afg = shufflevector <4 x float> %i.afe, <4 x float> %i.aff, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.afh = shufflevector <4 x float> %i.afg, <4 x float> %i.aey, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.afi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.afd, <4 x float> %i.afh, <4 x float> %i.afa) ; 2 uses
  %i.afj = fcmp oge <4 x float> %i.afi, zeroinitializer
  %i.afk = select <4 x i1> %i.afj, <4 x float> %i.afi, <4 x float> zeroinitializer ; 2 uses
  %i.afl = fcmp ole <4 x float> %i.afk, splat (float 1.000000e+00)
  %i.afm = select <4 x i1> %i.afl, <4 x float> %i.afk, <4 x float> splat (float 1.000000e+00)
  %i.afn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.afm, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.afo = fptoui <4 x float> %i.afn to <4 x i8>
  %i.afp = bitcast <4 x i8> %i.afo to i32
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.ay:                                            ; preds = %bb.b
  %i.afq = and i32 %i.t, 255
  %53 = uitofp nneg i32 %i.afq to float
  %54 = fdiv float %53, 2.550000e+02
  %i.afr = lshr i32 %i.t, 8
  %i.afs = lshr i32 %i.t, 16
  %i.aft = uitofp nneg i32 %i.w to float
  %i.afu = and i32 %i.v, 255
  %55 = uitofp nneg i32 %i.afu to float
  %56 = fdiv float %55, 2.550000e+02
  %i.afv = lshr i32 %i.v, 8
  %i.afw = lshr i32 %i.v, 16
  %i.afx = uitofp nneg i32 %i.x to float
  %i.afy = insertelement <2 x float> poison, float %i.aft, i64 0
  %i.afz = insertelement <2 x float> %i.afy, float %i.afx, i64 1
  %i.aga = fdiv <2 x float> %i.afz, splat (float 2.550000e+02) ; 7 uses
  %i.agb = extractelement <2 x float> %i.aga, i64 0 ; 4 uses
  %i.agc = fcmp ogt float %i.agb, 0.000000e+00    ; 2 uses
  %57 = and i32 %i.afs, 255
  %58 = and i32 %i.afr, 255
  %59 = uitofp nneg i32 %57 to float
  %60 = uitofp nneg i32 %58 to float
  %61 = insertelement <2 x float> poison, float %60, i64 0
  %62 = insertelement <2 x float> %61, float %59, i64 1
  %63 = fdiv <2 x float> %62, splat (float 2.550000e+02)
  %64 = shufflevector <2 x float> %i.aga, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agd = fdiv <2 x float> %63, %64
  %65 = insertelement <2 x i1> poison, i1 %i.agc, i64 0
  %66 = shufflevector <2 x i1> %65, <2 x i1> poison, <2 x i32> zeroinitializer
  %67 = select <2 x i1> %66, <2 x float> %i.agd, <2 x float> zeroinitializer ; 3 uses
  %68 = fdiv float %54, %i.agb
  %69 = select i1 %i.agc, float %68, float 0.000000e+00 ; 3 uses
  %70 = extractelement <2 x float> %i.aga, i64 1  ; 4 uses
  %71 = fcmp ogt float %70, 0.000000e+00          ; 2 uses
  %72 = and i32 %i.afw, 255
  %73 = and i32 %i.afv, 255
  %i.age = uitofp nneg i32 %72 to float
  %i.agf = uitofp nneg i32 %73 to float
  %i.agg = insertelement <2 x float> poison, float %i.agf, i64 0
  %i.agh = insertelement <2 x float> %i.agg, float %i.age, i64 1
  %i.agi = fdiv <2 x float> %i.agh, splat (float 2.550000e+02)
  %74 = shufflevector <2 x float> %i.aga, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.agj = fdiv <2 x float> %i.agi, %74
  %75 = insertelement <2 x i1> poison, i1 %71, i64 0
  %76 = shufflevector <2 x i1> %75, <2 x i1> poison, <2 x i32> zeroinitializer
  %77 = select <2 x i1> %76, <2 x float> %i.agj, <2 x float> zeroinitializer ; 3 uses
  %78 = fdiv float %56, %70
  %i.agk = select i1 %71, float %78, float 0.000000e+00 ; 3 uses
  %i.agl = extractelement <2 x float> %77, i64 1  ; 2 uses
  %i.agm = fcmp ult float %i.agl, 1.000000e+00
  br i1 %i.agm, label %bb.az, label %_ZL16blend_color_burnff.exit209.i

bb.az:                                            ; preds = %bb.ay
  %i.agn = extractelement <2 x float> %67, i64 1  ; 2 uses
  %i.ago = fcmp ugt float %i.agn, 0.000000e+00
  br i1 %i.ago, label %bb.ba, label %_ZL16blend_color_burnff.exit209.i

bb.ba:                                            ; preds = %bb.az
  %i.agp = fsub float 1.000000e+00, %i.agl
  %i.agq = fdiv float %i.agp, %i.agn              ; 2 uses
  %i.agr = fcmp oge float %i.agq, 1.000000e+00
  %.sroa.speculated.i208.i = select i1 %i.agr, float 1.000000e+00, float %i.agq
  %i.ags = fsub float 1.000000e+00, %.sroa.speculated.i208.i
  br label %_ZL16blend_color_burnff.exit209.i

_ZL16blend_color_burnff.exit209.i:                ; preds = %bb.ba, %bb.az, %bb.ay
  %.0.i207.i = phi float [ %i.ags, %bb.ba ], [ 1.000000e+00, %bb.ay ], [ 0.000000e+00, %bb.az ]
  %i.agt = extractelement <2 x float> %77, i64 0  ; 2 uses
  %i.agu = fcmp ult float %i.agt, 1.000000e+00
  br i1 %i.agu, label %bb.bb, label %_ZL16blend_color_burnff.exit206.i

bb.bb:                                            ; preds = %_ZL16blend_color_burnff.exit209.i
  %i.agv = extractelement <2 x float> %67, i64 0  ; 2 uses
  %i.agw = fcmp ugt float %i.agv, 0.000000e+00
  br i1 %i.agw, label %bb.bc, label %_ZL16blend_color_burnff.exit206.i

bb.bc:                                            ; preds = %bb.bb
  %i.agx = fsub float 1.000000e+00, %i.agt
  %i.agy = fdiv float %i.agx, %i.agv              ; 2 uses
  %i.agz = fcmp oge float %i.agy, 1.000000e+00
  %.sroa.speculated.i205.i = select i1 %i.agz, float 1.000000e+00, float %i.agy
  %i.aha = fsub float 1.000000e+00, %.sroa.speculated.i205.i
  br label %_ZL16blend_color_burnff.exit206.i

_ZL16blend_color_burnff.exit206.i:                ; preds = %bb.bc, %bb.bb, %_ZL16blend_color_burnff.exit209.i
  %.0.i204.i = phi float [ %i.aha, %bb.bc ], [ 1.000000e+00, %_ZL16blend_color_burnff.exit209.i ], [ 0.000000e+00, %bb.bb ]
  %i.ahb = fcmp ult float %i.agk, 1.000000e+00
  br i1 %i.ahb, label %bb.bd, label %_ZL16blend_color_burnff.exit.i

bb.bd:                                            ; preds = %_ZL16blend_color_burnff.exit206.i
  %i.ahc = fcmp ugt float %69, 0.000000e+00
  br i1 %i.ahc, label %bb.be, label %_ZL16blend_color_burnff.exit.i

bb.be:                                            ; preds = %bb.bd
  %i.ahd = fsub float 1.000000e+00, %i.agk
  %i.ahe = fdiv float %i.ahd, %69                 ; 2 uses
  %i.ahf = fcmp oge float %i.ahe, 1.000000e+00
  %.sroa.speculated.i203.i = select i1 %i.ahf, float 1.000000e+00, float %i.ahe
  %i.ahg = fsub float 1.000000e+00, %.sroa.speculated.i203.i
  br label %_ZL16blend_color_burnff.exit.i

_ZL16blend_color_burnff.exit.i:                   ; preds = %bb.be, %bb.bd, %_ZL16blend_color_burnff.exit206.i
  %.0.i202.i = phi float [ %i.ahg, %bb.be ], [ 1.000000e+00, %_ZL16blend_color_burnff.exit206.i ], [ 0.000000e+00, %bb.bd ]
  %i.ahh = fsub nnan <2 x float> splat (float 1.000000e+00), %i.aga ; 2 uses
  %i.ahi = fneg float %i.agb
  %i.ahj = fmul float %i.agb, %70
  %i.ahk = shufflevector <2 x float> %i.aga, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ahl = shufflevector <2 x float> <float poison, float 1.000000e+00>, <2 x float> %i.ahh, <4 x i32> <i32 3, i32 3, i32 3, i32 1>
  %i.ahm = fmul <4 x float> %i.ahk, %i.ahl
  %i.ahn = extractelement <2 x float> %i.ahh, i64 0
  %i.aho = fmul float %i.ahn, %70
  %i.ahp = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %69, i64 0
  %i.ahq = shufflevector <2 x float> %67, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ahr = shufflevector <4 x float> %i.ahp, <4 x float> %i.ahq, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ahs = fmul <4 x float> %i.ahm, %i.ahr
  %i.aht = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ahj, i64 0
  %i.ahu = shufflevector <4 x float> %i.aht, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ahv = insertelement <4 x float> poison, float %.0.i202.i, i64 0
  %i.ahw = insertelement <4 x float> %i.ahv, float %.0.i204.i, i64 1
  %i.ahx = insertelement <4 x float> %i.ahw, float %.0.i207.i, i64 2
  %i.ahy = shufflevector <2 x float> %i.aga, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ahz = shufflevector <4 x float> %i.ahx, <4 x float> %i.ahy, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aia = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ahu, <4 x float> %i.ahz, <4 x float> %i.ahs)
  %i.aib = insertelement <4 x float> poison, float %i.aho, i64 0
  %i.aic = insertelement <4 x float> %i.aib, float %i.ahi, i64 1
  %i.aid = shufflevector <4 x float> %i.aic, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aie = insertelement <4 x float> poison, float %i.agk, i64 0
  %i.aif = shufflevector <2 x float> %77, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aig = shufflevector <4 x float> %i.aie, <4 x float> %i.aif, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.aih = shufflevector <4 x float> %i.aig, <4 x float> %i.ahy, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aii = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aid, <4 x float> %i.aih, <4 x float> %i.aia) ; 2 uses
  %i.aij = fcmp oge <4 x float> %i.aii, zeroinitializer
  %i.aik = select <4 x i1> %i.aij, <4 x float> %i.aii, <4 x float> zeroinitializer ; 2 uses
  %i.ail = fcmp ole <4 x float> %i.aik, splat (float 1.000000e+00)
  %i.aim = select <4 x i1> %i.ail, <4 x float> %i.aik, <4 x float> splat (float 1.000000e+00)
  %i.ain = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aim, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.aio = fptoui <4 x float> %i.ain to <4 x i8>
  %i.aip = bitcast <4 x i8> %i.aio to i32
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.bf:                                            ; preds = %bb.b
  %i.aiq = and i32 %i.t, 255
  %i.air = lshr i32 %i.t, 8
  %i.ais = lshr i32 %i.t, 16
  %i.ait = uitofp nneg i32 %i.w to float
  %i.aiu = and i32 %i.v, 255
  %i.aiv = lshr i32 %i.v, 8
  %i.aiw = lshr i32 %i.v, 16
  %i.aix = uitofp nneg i32 %i.x to float
  %i.aiy = insertelement <2 x float> poison, float %i.ait, i64 0
  %i.aiz = insertelement <2 x float> %i.aiy, float %i.aix, i64 1
  %i.aja = fdiv <2 x float> %i.aiz, splat (float 2.550000e+02) ; 9 uses
  %i.ajb = shufflevector <2 x float> %i.aja, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajc = insertelement <4 x i32> poison, i32 %i.ais, i64 0
  %i.ajd = insertelement <4 x i32> %i.ajc, i32 %i.aiw, i64 1
  %i.aje = insertelement <4 x i32> %i.ajd, i32 %i.air, i64 2
  %i.ajf = insertelement <4 x i32> %i.aje, i32 %i.aiv, i64 3
  %i.ajg = and <4 x i32> %i.ajf, splat (i32 255)
  %i.ajh = uitofp nneg <4 x i32> %i.ajg to <4 x float> ; 2 uses
  %i.aji = shufflevector <4 x float> %i.ajh, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.ajj = fdiv <2 x float> %i.aji, splat (float 2.550000e+02)
  %i.ajk = fdiv <2 x float> %i.ajj, %i.ajb
  %i.ajl = shufflevector <4 x float> %i.ajh, <4 x float> poison, <2 x i32> <i32 3, i32 1>
  %i.ajm = fdiv <2 x float> %i.ajl, splat (float 2.550000e+02)
  %i.ajn = shufflevector <2 x float> %i.aja, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ajo = fdiv <2 x float> %i.ajm, %i.ajn
  %i.ajp = uitofp nneg i32 %i.aiu to float
  %i.ajq = uitofp nneg i32 %i.aiq to float
  %i.ajr = insertelement <2 x float> poison, float %i.ajq, i64 0
  %i.ajs = insertelement <2 x float> %i.ajr, float %i.ajp, i64 1
  %i.ajt = fdiv <2 x float> %i.ajs, splat (float 2.550000e+02)
  %79 = fcmp ogt <2 x float> %i.aja, zeroinitializer ; 3 uses
  %80 = shufflevector <2 x i1> %79, <2 x i1> poison, <2 x i32> zeroinitializer
  %81 = select <2 x i1> %80, <2 x float> %i.ajk, <2 x float> zeroinitializer ; 4 uses
  %i.aju = fdiv <2 x float> %i.ajt, %i.aja
  %82 = shufflevector <2 x i1> %79, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %83 = select <2 x i1> %82, <2 x float> %i.ajo, <2 x float> zeroinitializer ; 5 uses
  %i.ajv = select <2 x i1> %79, <2 x float> %i.aju, <2 x float> zeroinitializer ; 5 uses
  %i.ajw = extractelement <2 x float> %81, i64 1  ; 2 uses
  %i.ajx = fcmp ugt float %i.ajw, 5.000000e-01
  br i1 %i.ajx, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ajy = fmul nnan float %i.ajw, 2.000000e+00
  %i.ajz = extractelement <2 x float> %83, i64 1
  %i.aka = fmul float %i.ajy, %i.ajz
  br label %_ZL16blend_hard_lightff.exit211.i

bb.bh:                                            ; preds = %bb.bf
  %i.akb = shufflevector <2 x float> %81, <2 x float> %83, <2 x i32> <i32 1, i32 3>
  %i.akc = fsub <2 x float> splat (float 1.000000e+00), %i.akb ; 2 uses
  %i.akd = extractelement <2 x float> %i.akc, i64 0
  %i.ake = fmul float %i.akd, -2.000000e+00
  %i.akf = extractelement <2 x float> %i.akc, i64 1
  %i.akg = tail call float @llvm.fmuladd.f32(float %i.ake, float %i.akf, float 1.000000e+00)
  br label %_ZL16blend_hard_lightff.exit211.i

_ZL16blend_hard_lightff.exit211.i:                ; preds = %bb.bh, %bb.bg
  %i.akh = phi float [ %i.aka, %bb.bg ], [ %i.akg, %bb.bh ]
  %i.aki = extractelement <2 x float> %81, i64 0  ; 3 uses
  %i.akj = fcmp ugt float %i.aki, 5.000000e-01
  br i1 %i.akj, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_ZL16blend_hard_lightff.exit211.i
  %i.akk = fmul nnan float %i.aki, 2.000000e+00
  %i.akl = extractelement <2 x float> %83, i64 0
  %i.akm = fmul float %i.akk, %i.akl
  br label %_ZL16blend_hard_lightff.exit210.i

bb.bj:                                            ; preds = %_ZL16blend_hard_lightff.exit211.i
  %i.akn = fsub float 1.000000e+00, %i.aki
  %i.ako = extractelement <2 x float> %83, i64 0
  %i.akp = fsub float 1.000000e+00, %i.ako
  %i.akq = fmul float %i.akn, -2.000000e+00
  %i.akr = tail call float @llvm.fmuladd.f32(float %i.akq, float %i.akp, float 1.000000e+00)
  br label %_ZL16blend_hard_lightff.exit210.i

_ZL16blend_hard_lightff.exit210.i:                ; preds = %bb.bj, %bb.bi
  %i.aks = phi float [ %i.akm, %bb.bi ], [ %i.akr, %bb.bj ]
  %i.akt = extractelement <2 x float> %i.ajv, i64 0 ; 2 uses
  %i.aku = fcmp ugt float %i.akt, 5.000000e-01
  br i1 %i.aku, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_ZL16blend_hard_lightff.exit210.i
  %i.akv = fmul nnan float %i.akt, 2.000000e+00
  %i.akw = extractelement <2 x float> %i.ajv, i64 1
  %i.akx = fmul float %i.akv, %i.akw
  br label %_ZL16blend_hard_lightff.exit.i

bb.bl:                                            ; preds = %_ZL16blend_hard_lightff.exit210.i
  %i.aky = fsub <2 x float> splat (float 1.000000e+00), %i.ajv ; 2 uses
  %i.akz = extractelement <2 x float> %i.aky, i64 0
  %i.ala = fmul float %i.akz, -2.000000e+00
  %i.alb = extractelement <2 x float> %i.aky, i64 1
  %i.alc = tail call float @llvm.fmuladd.f32(float %i.ala, float %i.alb, float 1.000000e+00)
  br label %_ZL16blend_hard_lightff.exit.i

_ZL16blend_hard_lightff.exit.i:                   ; preds = %bb.bl, %bb.bk
  %i.ald = phi float [ %i.akx, %bb.bk ], [ %i.alc, %bb.bl ]
  %i.ale = extractelement <2 x float> %i.aja, i64 1 ; 2 uses
  %i.alf = extractelement <2 x float> %i.aja, i64 0 ; 2 uses
  %i.alg = fsub nnan <2 x float> splat (float 1.000000e+00), %i.aja ; 2 uses
  %i.alh = fneg float %i.alf
  %i.ali = fmul float %i.alf, %i.ale
  %i.alj = shufflevector <2 x float> %i.aja, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.alk = shufflevector <2 x float> <float poison, float 1.000000e+00>, <2 x float> %i.alg, <4 x i32> <i32 3, i32 3, i32 3, i32 1>
  %i.all = fmul <4 x float> %i.alj, %i.alk
  %i.alm = extractelement <2 x float> %i.alg, i64 0
  %i.aln = fmul float %i.alm, %i.ale
  %i.alo = shufflevector <2 x float> %i.ajv, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.alp = insertelement <4 x float> %i.alo, float 1.000000e+00, i64 3
  %i.alq = shufflevector <2 x float> %81, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.alr = shufflevector <4 x float> %i.alp, <4 x float> %i.alq, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.als = fmul <4 x float> %i.all, %i.alr
  %i.alt = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ali, i64 0
  %i.alu = shufflevector <4 x float> %i.alt, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.alv = insertelement <4 x float> poison, float %i.ald, i64 0
  %i.alw = insertelement <4 x float> %i.alv, float %i.aks, i64 1
  %i.alx = insertelement <4 x float> %i.alw, float %i.akh, i64 2
  %i.aly = shufflevector <2 x float> %i.aja, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.alz = shufflevector <4 x float> %i.alx, <4 x float> %i.aly, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ama = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.alu, <4 x float> %i.alz, <4 x float> %i.als)
  %i.amb = insertelement <4 x float> poison, float %i.aln, i64 0
  %i.amc = insertelement <4 x float> %i.amb, float %i.alh, i64 1
  %i.amd = shufflevector <4 x float> %i.amc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ame = shufflevector <2 x float> %i.ajv, <2 x float> %83, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.amf = shufflevector <4 x float> %i.ame, <4 x float> %i.aly, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.amg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.amd, <4 x float> %i.amf, <4 x float> %i.ama) ; 2 uses
  %i.amh = fcmp oge <4 x float> %i.amg, zeroinitializer
  %i.ami = select <4 x i1> %i.amh, <4 x float> %i.amg, <4 x float> zeroinitializer ; 2 uses
  %i.amj = fcmp ole <4 x float> %i.ami, splat (float 1.000000e+00)
  %i.amk = select <4 x i1> %i.amj, <4 x float> %i.ami, <4 x float> splat (float 1.000000e+00)
  %i.aml = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.amk, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.amm = fptoui <4 x float> %i.aml to <4 x i8>
  %i.amn = bitcast <4 x i8> %i.amm to i32
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.bm:                                            ; preds = %bb.b
  %i.amo = and i32 %i.t, 255
  %84 = uitofp nneg i32 %i.amo to float
  %85 = fdiv float %84, 2.550000e+02
  %i.amp = lshr i32 %i.t, 8
  %i.amq = lshr i32 %i.t, 16
  %i.amr = uitofp nneg i32 %i.w to float
  %i.ams = and i32 %i.v, 255
  %86 = uitofp nneg i32 %i.ams to float
  %87 = fdiv float %86, 2.550000e+02
  %i.amt = lshr i32 %i.v, 8
  %i.amu = lshr i32 %i.v, 16
  %i.amv = uitofp nneg i32 %i.x to float
  %i.amw = insertelement <2 x float> poison, float %i.amr, i64 0
  %i.amx = insertelement <2 x float> %i.amw, float %i.amv, i64 1
  %i.amy = fdiv <2 x float> %i.amx, splat (float 2.550000e+02) ; 7 uses
  %i.amz = extractelement <2 x float> %i.amy, i64 0 ; 4 uses
  %i.ana = fcmp ogt float %i.amz, 0.000000e+00    ; 2 uses
  %88 = and i32 %i.amq, 255
  %89 = and i32 %i.amp, 255
  %90 = uitofp nneg i32 %88 to float
  %91 = uitofp nneg i32 %89 to float
  %92 = insertelement <2 x float> poison, float %91, i64 0
  %93 = insertelement <2 x float> %92, float %90, i64 1
  %94 = fdiv <2 x float> %93, splat (float 2.550000e+02)
  %95 = shufflevector <2 x float> %i.amy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.anb = fdiv <2 x float> %94, %95
  %96 = insertelement <2 x i1> poison, i1 %i.ana, i64 0
  %97 = shufflevector <2 x i1> %96, <2 x i1> poison, <2 x i32> zeroinitializer
  %98 = select <2 x i1> %97, <2 x float> %i.anb, <2 x float> zeroinitializer ; 3 uses
  %99 = fdiv float %85, %i.amz
  %100 = select i1 %i.ana, float %99, float 0.000000e+00 ; 4 uses
  %101 = extractelement <2 x float> %i.amy, i64 1 ; 4 uses
  %102 = fcmp ogt float %101, 0.000000e+00        ; 2 uses
  %103 = and i32 %i.amu, 255
  %104 = and i32 %i.amt, 255
  %i.anc = uitofp nneg i32 %103 to float
  %i.and = uitofp nneg i32 %104 to float
  %i.ane = insertelement <2 x float> poison, float %i.and, i64 0
  %i.anf = insertelement <2 x float> %i.ane, float %i.anc, i64 1
  %i.ang = fdiv <2 x float> %i.anf, splat (float 2.550000e+02)
  %105 = shufflevector <2 x float> %i.amy, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.anh = fdiv <2 x float> %i.ang, %105
  %106 = insertelement <2 x i1> poison, i1 %102, i64 0
  %107 = shufflevector <2 x i1> %106, <2 x i1> poison, <2 x i32> zeroinitializer
  %108 = select <2 x i1> %107, <2 x float> %i.anh, <2 x float> zeroinitializer ; 5 uses
  %109 = fdiv float %87, %101
  %i.ani = select i1 %102, float %109, float 0.000000e+00 ; 11 uses
  %i.anj = extractelement <2 x float> %98, i64 1  ; 3 uses
  %i.ank = fcmp ugt float %i.anj, 5.000000e-01
  br i1 %i.ank, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.anl = tail call nnan float @llvm.fmuladd.f32(float %i.anj, float -2.000000e+00, float 1.000000e+00)
  %i.anm = extractelement <2 x float> %108, i64 1 ; 3 uses
  %i.ann = fsub float 1.000000e+00, %i.anm
  %i.ano = fneg float %i.anm
  %i.anp = fmul float %i.anl, %i.ano
  %i.anq = tail call float @llvm.fmuladd.f32(float %i.anp, float %i.ann, float %i.anm)
  br label %_ZL16blend_soft_lightff.exit216.i

bb.bo:                                            ; preds = %bb.bm
  %i.anr = extractelement <2 x float> %108, i64 1 ; 7 uses
  %i.ans = fcmp ugt float %i.anr, 2.500000e-01
  br i1 %i.ans, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ant = tail call nnan float @llvm.fmuladd.f32(float %i.anr, float 1.600000e+01, float -1.200000e+01)
  %i.anu = tail call float @llvm.fmuladd.f32(float %i.ant, float %i.anr, float 4.000000e+00)
  %i.anv = fmul float %i.anr, %i.anu
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.anr)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.anw = phi float [ %i.anv, %bb.bp ], [ %sqrt.i, %bb.bq ]
  %i.anx = tail call float @llvm.fmuladd.f32(float %i.anj, float 2.000000e+00, float -1.000000e+00)
  %i.any = fsub float %i.anw, %i.anr
  %i.anz = tail call float @llvm.fmuladd.f32(float %i.anx, float %i.any, float %i.anr)
  br label %_ZL16blend_soft_lightff.exit216.i

_ZL16blend_soft_lightff.exit216.i:                ; preds = %bb.br, %bb.bn
  %.0.i215.i = phi float [ %i.anq, %bb.bn ], [ %i.anz, %bb.br ]
  %i.aoa = extractelement <2 x float> %98, i64 0  ; 3 uses
  %i.aob = fcmp ugt float %i.aoa, 5.000000e-01
  br i1 %i.aob, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_ZL16blend_soft_lightff.exit216.i
  %i.aoc = tail call nnan float @llvm.fmuladd.f32(float %i.aoa, float -2.000000e+00, float 1.000000e+00)
  %i.aod = extractelement <2 x float> %108, i64 0 ; 3 uses
  %i.aoe = fsub float 1.000000e+00, %i.aod
  %i.aof = fneg float %i.aod
  %i.aog = fmul float %i.aoc, %i.aof
  %i.aoh = tail call float @llvm.fmuladd.f32(float %i.aog, float %i.aoe, float %i.aod)
  br label %_ZL16blend_soft_lightff.exit214.i

bb.bt:                                            ; preds = %_ZL16blend_soft_lightff.exit216.i
  %i.aoi = extractelement <2 x float> %108, i64 0 ; 7 uses
  %i.aoj = fcmp ugt float %i.aoi, 2.500000e-01
  br i1 %i.aoj, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.aok = tail call nnan float @llvm.fmuladd.f32(float %i.aoi, float 1.600000e+01, float -1.200000e+01)
  %i.aol = tail call float @llvm.fmuladd.f32(float %i.aok, float %i.aoi, float 4.000000e+00)
  %i.aom = fmul float %i.aoi, %i.aol
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %sqrt307.i = tail call float @llvm.sqrt.f32(float %i.aoi)
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.aon = phi float [ %i.aom, %bb.bu ], [ %sqrt307.i, %bb.bv ]
  %i.aoo = tail call float @llvm.fmuladd.f32(float %i.aoa, float 2.000000e+00, float -1.000000e+00)
  %i.aop = fsub float %i.aon, %i.aoi
  %i.aoq = tail call float @llvm.fmuladd.f32(float %i.aoo, float %i.aop, float %i.aoi)
  br label %_ZL16blend_soft_lightff.exit214.i

_ZL16blend_soft_lightff.exit214.i:                ; preds = %bb.bw, %bb.bs
  %.0.i213.i = phi float [ %i.aoh, %bb.bs ], [ %i.aoq, %bb.bw ]
  %i.aor = fcmp ugt float %100, 5.000000e-01
  br i1 %i.aor, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %_ZL16blend_soft_lightff.exit214.i
  %i.aos = tail call nnan float @llvm.fmuladd.f32(float %100, float -2.000000e+00, float 1.000000e+00)
  %i.aot = fsub float 1.000000e+00, %i.ani
  %i.aou = fneg float %i.ani
  %i.aov = fmul float %i.aos, %i.aou
  %i.aow = tail call float @llvm.fmuladd.f32(float %i.aov, float %i.aot, float %i.ani)
  br label %_ZL16blend_soft_lightff.exit.i

bb.by:                                            ; preds = %_ZL16blend_soft_lightff.exit214.i
  %i.aox = fcmp ugt float %i.ani, 2.500000e-01
  br i1 %i.aox, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.aoy = tail call nnan float @llvm.fmuladd.f32(float %i.ani, float 1.600000e+01, float -1.200000e+01)
  %i.aoz = tail call float @llvm.fmuladd.f32(float %i.aoy, float %i.ani, float 4.000000e+00)
  %i.apa = fmul float %i.ani, %i.aoz
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %sqrt308.i = tail call float @llvm.sqrt.f32(float %i.ani)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.apb = phi float [ %i.apa, %bb.bz ], [ %sqrt308.i, %bb.ca ]
  %i.apc = tail call float @llvm.fmuladd.f32(float %100, float 2.000000e+00, float -1.000000e+00)
  %i.apd = fsub float %i.apb, %i.ani
  %i.ape = tail call float @llvm.fmuladd.f32(float %i.apc, float %i.apd, float %i.ani)
  br label %_ZL16blend_soft_lightff.exit.i

_ZL16blend_soft_lightff.exit.i:                   ; preds = %bb.cb, %bb.bx
  %.0.i212.i = phi float [ %i.aow, %bb.bx ], [ %i.ape, %bb.cb ]
  %i.apf = fsub nnan <2 x float> splat (float 1.000000e+00), %i.amy ; 2 uses
  %i.apg = fneg float %i.amz
  %i.aph = fmul float %i.amz, %101
  %i.api = shufflevector <2 x float> %i.amy, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.apj = shufflevector <2 x float> <float poison, float 1.000000e+00>, <2 x float> %i.apf, <4 x i32> <i32 3, i32 3, i32 3, i32 1>
  %i.apk = fmul <4 x float> %i.api, %i.apj
  %i.apl = extractelement <2 x float> %i.apf, i64 0
  %i.apm = fmul float %i.apl, %101
  %i.apn = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %100, i64 0
  %i.apo = shufflevector <2 x float> %98, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.app = shufflevector <4 x float> %i.apn, <4 x float> %i.apo, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.apq = fmul <4 x float> %i.apk, %i.app
  %i.apr = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.aph, i64 0
  %i.aps = shufflevector <4 x float> %i.apr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.apt = insertelement <4 x float> poison, float %.0.i212.i, i64 0
  %i.apu = insertelement <4 x float> %i.apt, float %.0.i213.i, i64 1
  %i.apv = insertelement <4 x float> %i.apu, float %.0.i215.i, i64 2
  %i.apw = shufflevector <2 x float> %i.amy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.apx = shufflevector <4 x float> %i.apv, <4 x float> %i.apw, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.apy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aps, <4 x float> %i.apx, <4 x float> %i.apq)
  %i.apz = insertelement <4 x float> poison, float %i.apm, i64 0
  %i.aqa = insertelement <4 x float> %i.apz, float %i.apg, i64 1
  %i.aqb = shufflevector <4 x float> %i.aqa, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aqc = insertelement <4 x float> poison, float %i.ani, i64 0
  %i.aqd = shufflevector <2 x float> %108, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aqe = shufflevector <4 x float> %i.aqc, <4 x float> %i.aqd, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.aqf = shufflevector <4 x float> %i.aqe, <4 x float> %i.apw, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aqg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqb, <4 x float> %i.aqf, <4 x float> %i.apy) ; 2 uses
  %i.aqh = fcmp oge <4 x float> %i.aqg, zeroinitializer
  %i.aqi = select <4 x i1> %i.aqh, <4 x float> %i.aqg, <4 x float> zeroinitializer ; 2 uses
  %i.aqj = fcmp ole <4 x float> %i.aqi, splat (float 1.000000e+00)
  %i.aqk = select <4 x i1> %i.aqj, <4 x float> %i.aqi, <4 x float> splat (float 1.000000e+00)
  %i.aql = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqk, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.aqm = fptoui <4 x float> %i.aql to <4 x i8>
  %i.aqn = bitcast <4 x i8> %i.aqm to i32
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.cc:                                            ; preds = %bb.b
  %i.aqo = lshr i32 %i.t, 8
  %i.aqp = lshr i32 %i.t, 16
  %i.aqq = uitofp nneg i32 %i.w to float
  %i.aqr = lshr i32 %i.v, 8
  %i.aqs = lshr i32 %i.v, 16
  %i.aqt = uitofp nneg i32 %i.x to float
  %i.aqu = and i32 %i.aqo, 255
  %i.aqv = and i32 %i.t, 255
  %i.aqw = uitofp nneg i32 %i.aqu to float
  %i.aqx = uitofp nneg i32 %i.aqv to float
  %i.aqy = insertelement <2 x float> poison, float %i.aqx, i64 0
  %i.aqz = insertelement <2 x float> %i.aqy, float %i.aqw, i64 1
  %i.ara = fdiv <2 x float> %i.aqz, splat (float 2.550000e+02)
  %i.arb = and i32 %i.aqr, 255
  %i.arc = and i32 %i.v, 255
  %i.ard = uitofp nneg i32 %i.arb to float
  %i.are = uitofp nneg i32 %i.arc to float
  %i.arf = insertelement <2 x float> poison, float %i.are, i64 0
  %i.arg = insertelement <2 x float> %i.arf, float %i.ard, i64 1
  %i.arh = fdiv <2 x float> %i.arg, splat (float 2.550000e+02)
  %i.ari = insertelement <2 x float> poison, float %i.aqt, i64 0
  %i.arj = insertelement <2 x float> %i.ari, float %i.aqq, i64 1
  %i.ark = fdiv <2 x float> %i.arj, splat (float 2.550000e+02) ; 10 uses
  %i.arl = extractelement <2 x float> %i.ark, i64 1 ; 2 uses
  %i.arm = shufflevector <2 x float> %i.ark, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.arn = fdiv <2 x float> %i.ara, %i.arm
  %i.aro = and i32 %i.aqs, 255
  %i.arp = and i32 %i.aqp, 255
  %i.arq = uitofp nneg i32 %i.aro to float
  %i.arr = uitofp nneg i32 %i.arp to float
  %i.ars = insertelement <2 x float> poison, float %i.arq, i64 0
  %i.art = insertelement <2 x float> %i.ars, float %i.arr, i64 1
  %i.aru = fdiv <2 x float> %i.art, splat (float 2.550000e+02)
  %i.arv = fcmp ogt <2 x float> %i.ark, zeroinitializer ; 3 uses
  %i.arw = shufflevector <2 x i1> %i.arv, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.arx = select <2 x i1> %i.arw, <2 x float> %i.arn, <2 x float> zeroinitializer ; 2 uses
  %i.ary = fdiv <2 x float> %i.aru, %i.ark
  %i.arz = select <2 x i1> %i.arv, <2 x float> %i.ary, <2 x float> zeroinitializer ; 4 uses
  %i.asa = shufflevector <2 x float> %i.ark, <2 x float> poison, <2 x i32> zeroinitializer
  %i.asb = fdiv <2 x float> %i.arh, %i.asa
  %i.asc = shufflevector <2 x i1> %i.arv, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.asd = select <2 x i1> %i.asc, <2 x float> %i.asb, <2 x float> zeroinitializer ; 2 uses
  %shift120 = shufflevector <2 x float> %i.arz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop121 = fsub <2 x float> %shift120, %i.arz
  %i.ase = extractelement <2 x float> %foldExtExtBinop121, i64 0
  %i.asf = tail call noundef float @llvm.fabs.f32(float %i.ase)
  %i.asg = fsub <2 x float> %i.arx, %i.asd
  %i.ash = fneg float %i.arl
  %i.asi = shufflevector <2 x float> %i.ark, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.asj = shufflevector <2 x float> %i.ark, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.ask = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.asg)
  %i.asl = shufflevector <2 x float> %i.ask, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.asm = shufflevector <4 x float> %i.asl, <4 x float> %i.asj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.asn = shufflevector <4 x float> <float 1.000000e+00, float 1.000000e+00, float poison, float 1.000000e+00>, <4 x float> %i.asi, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.aso = fmul <4 x float> %i.asm, %i.asn        ; 2 uses
  %i.asp = fsub nnan <2 x float> splat (float 1.000000e+00), %i.ark ; 2 uses
  %i.asq = extractelement <2 x float> %i.asp, i64 0
  %i.asr = fmul float %i.arl, %i.asq
  %shift123 = shufflevector <2 x float> %i.asp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop124.a = fmul <2 x float> %shift123, %i.ark
  %i.ass = shufflevector <2 x float> %i.ark, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ast = insertelement <2 x float> %i.ass, float %i.asr, i64 0
  %i.asu = shufflevector <2 x float> %i.ast, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.asv = shufflevector <2 x float> %i.arz, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.asw = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.asv, <4 x i32> <i32 poison, i32 poison, i32 5, i32 3>
  %i.asx = shufflevector <2 x float> %i.arx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.asy = shufflevector <4 x float> %i.asx, <4 x float> %i.asw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.asz = fmul <4 x float> %i.asu, %i.asy
  %i.ata = shufflevector <4 x float> %i.aso, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 2, i32 poison, i32 7>
  %i.atb = insertelement <4 x float> %i.ata, float %i.asf, i64 2
  %i.atc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.atb, <4 x float> %i.aso, <4 x float> %i.asz)
  %i.atd = shufflevector <2 x float> %foldExtExtBinop124.a, <2 x float> %i.arz, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison> ; 2 uses
  %i.ate = insertelement <4 x float> %i.atd, float %i.ash, i64 3
  %i.atf = shufflevector <4 x float> %i.ate, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.atg = shufflevector <2 x float> %i.asd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ath = shufflevector <4 x float> %i.atg, <4 x float> %i.atd, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ati = shufflevector <4 x float> %i.ath, <4 x float> %i.asi, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.atj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.atf, <4 x float> %i.ati, <4 x float> %i.atc) ; 2 uses
  %i.atk = fcmp oge <4 x float> %i.atj, zeroinitializer
  %i.atl = select <4 x i1> %i.atk, <4 x float> %i.atj, <4 x float> zeroinitializer ; 2 uses
  %i.atm = fcmp ole <4 x float> %i.atl, splat (float 1.000000e+00)
  %i.atn = select <4 x i1> %i.atm, <4 x float> %i.atl, <4 x float> splat (float 1.000000e+00)
  %i.ato = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.atn, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.atp = fptoui <4 x float> %i.ato to <4 x i8>
  %i.atq = bitcast <4 x i8> %i.atp to i32
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.cd:                                            ; preds = %bb.b
  %i.atr = and i32 %i.t, 255
  %i.ats = lshr i32 %i.t, 8
  %i.att = insertelement <2 x i32> poison, i32 %i.t, i64 0
  %i.atu = insertelement <2 x i32> %i.att, i32 %i.v, i64 1
  %i.atv = lshr <2 x i32> %i.atu, splat (i32 16)
  %i.atw = uitofp nneg i32 %i.w to float
  %i.atx = and i32 %i.v, 255
  %i.aty = lshr i32 %i.v, 8
  %i.atz = uitofp nneg i32 %i.x to float
  %i.aua = insertelement <2 x float> poison, float %i.atw, i64 0
  %i.aub = insertelement <2 x float> %i.aua, float %i.atz, i64 1
  %i.auc = fdiv <2 x float> %i.aub, splat (float 2.550000e+02) ; 8 uses
  %i.aud = shufflevector <2 x float> %i.auc, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aue = extractelement <2 x float> %i.auc, i64 1 ; 3 uses
  %i.auf = extractelement <2 x float> %i.auc, i64 0 ; 4 uses
  %i.aug = and <2 x i32> %i.atv, splat (i32 255)
  %i.auh = uitofp nneg <2 x i32> %i.aug to <2 x float>
  %i.aui = fdiv <2 x float> %i.auh, splat (float 2.550000e+02)
  %i.auj = fcmp ogt <2 x float> %i.auc, zeroinitializer ; 3 uses
  %i.auk = fdiv <2 x float> %i.aui, %i.auc
  %i.aul = select <2 x i1> %i.auj, <2 x float> %i.auk, <2 x float> zeroinitializer ; 5 uses
  %i.aum = and i32 %i.aty, 255
  %i.aun = and i32 %i.ats, 255
  %i.auo = uitofp nneg i32 %i.aum to float
  %i.aup = uitofp nneg i32 %i.aun to float
  %i.auq = insertelement <2 x float> poison, float %i.aup, i64 0
  %i.aur = insertelement <2 x float> %i.auq, float %i.auo, i64 1
  %i.aus = fdiv <2 x float> %i.aur, splat (float 2.550000e+02)
  %i.aut = fdiv <2 x float> %i.aus, %i.auc
  %i.auu = select <2 x i1> %i.auj, <2 x float> %i.aut, <2 x float> zeroinitializer ; 5 uses
  %i.auv = uitofp nneg i32 %i.atx to float
  %i.auw = uitofp nneg i32 %i.atr to float
  %i.aux = insertelement <2 x float> poison, float %i.auw, i64 0
  %i.auy = insertelement <2 x float> %i.aux, float %i.auv, i64 1
  %i.auz = fdiv <2 x float> %i.auy, splat (float 2.550000e+02)
  %i.ava = fdiv <2 x float> %i.auz, %i.auc
  %i.avb = select <2 x i1> %i.auj, <2 x float> %i.ava, <2 x float> zeroinitializer ; 4 uses
  %i.avc = shufflevector <2 x float> %i.avb, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.avd = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.aul)
  %i.ave = extractelement <2 x float> %i.aul, i64 0
  %i.avf = extractelement <2 x float> %i.aul, i64 1
  %i.avg = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.auu)
  %i.avh = extractelement <2 x float> %i.auu, i64 0
  %i.avi = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.avb)
  %i.avj = extractelement <2 x float> %i.avb, i64 0 ; 2 uses
  %i.avk = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.auc)
  %i.avl = fmul float %i.auf, %i.aue              ; 3 uses
  %i.avm = extractelement <2 x float> %i.auu, i64 1
  %i.avn = extractelement <2 x float> %i.avb, i64 1
  %i.avo = fsub nnan float 1.000000e+00, %i.aue
  %i.avp = fmul float %i.auf, %i.avo              ; 3 uses
  %i.avq = fsub nnan float 1.000000e+00, %i.auf
  %i.avr = fmul float %i.avq, %i.aue              ; 3 uses
  %i.avs = fmul float %i.avp, %i.ave
  %i.avt = fmul float %i.avp, %i.avh
  %i.avu = fmul float %i.avj, %i.avp
  %i.avv = fneg float %i.auf
  %i.avw = shufflevector <2 x float> %i.aul, <2 x float> %i.auu, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.avx = insertelement <4 x float> %i.avw, float %i.avj, i64 2
  %i.avy = insertelement <4 x float> %i.avx, float %i.avv, i64 3
  %i.avz = fmul <4 x float> %i.avy, <float -2.000000e+00, float -2.000000e+00, float -2.000000e+00, float 1.000000e+00>
  %i.awa = shufflevector <2 x float> %i.aul, <2 x float> %i.auu, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.awb = shufflevector <4 x float> %i.awa, <4 x float> %i.avc, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.awc = shufflevector <4 x float> %i.awb, <4 x float> %i.aud, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.awd = insertelement <4 x float> poison, float %i.avd, i64 0
  %i.awe = insertelement <4 x float> %i.awd, float %i.avg, i64 1
  %i.awf = insertelement <4 x float> %i.awe, float %i.avi, i64 2
  %i.awg = insertelement <4 x float> %i.awf, float %i.avk, i64 3
  %i.awh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.avz, <4 x float> %i.awc, <4 x float> %i.awg) ; 4 uses
  %i.awi = extractelement <4 x float> %i.awh, i64 0
  %i.awj = tail call float @llvm.fmuladd.f32(float %i.avl, float %i.awi, float %i.avs)
  %i.awk = extractelement <4 x float> %i.awh, i64 1
  %i.awl = tail call float @llvm.fmuladd.f32(float %i.avl, float %i.awk, float %i.avt)
  %i.awm = extractelement <4 x float> %i.awh, i64 2
  %i.awn = tail call float @llvm.fmuladd.f32(float %i.avl, float %i.awm, float %i.avu)
  %i.awo = tail call float @llvm.fmuladd.f32(float %i.avr, float %i.avf, float %i.awj)
  %i.awp = tail call float @llvm.fmuladd.f32(float %i.avr, float %i.avm, float %i.awl)
  %i.awq = tail call float @llvm.fmuladd.f32(float %i.avr, float %i.avn, float %i.awn)
  %i.awr = insertelement <4 x float> poison, float %i.awq, i64 0
  %i.aws = insertelement <4 x float> %i.awr, float %i.awp, i64 1
  %i.awt = insertelement <4 x float> %i.aws, float %i.awo, i64 2
  %i.awu = shufflevector <4 x float> %i.awt, <4 x float> %i.awh, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.awv = fcmp oge <4 x float> %i.awu, zeroinitializer
  %i.aww = select <4 x i1> %i.awv, <4 x float> %i.awu, <4 x float> zeroinitializer ; 2 uses
  %i.awx = fcmp ole <4 x float> %i.aww, splat (float 1.000000e+00)
  %i.awy = select <4 x i1> %i.awx, <4 x float> %i.aww, <4 x float> splat (float 1.000000e+00)
  %i.awz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.awy, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.axa = fptoui <4 x float> %i.awz to <4 x i8>
  %i.axb = bitcast <4 x i8> %i.axa to i32
  br label %_ZL15composite_pixeljj25hb_paint_composite_mode_t.exit

bb.ce:                                            ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.axc = insertelement <2 x i32> poison, i32 %i.t, i64 0
  %i.axd = insertelement <2 x i32> %i.axc, i32 %i.v, i64 1
  %i.axe = and <2 x i32> %i.axd, splat (i32 255)
  %i.axf = lshr i32 %i.t, 8
  %i.axg = lshr i32 %i.t, 16
  %i.axh = uitofp nneg i32 %i.w to float
  %i.axi = lshr i32 %i.v, 8
end_hunk_0
