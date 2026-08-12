inline.NumInlined: 123
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 42
begin_hunk_0_@process:bb.a
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cj = fmul reassoc nsz arcp contract afn <4 x float> %i.ci, <float f0x3F7D4DA9, float f0xBBB11DFF, float -4.039210e-04, float -0.000000e+00>
  %i.ck = shufflevector <2 x float> %i.cg, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.cm = fmul reassoc nsz arcp contract afn <4 x float> %i.cl, <float f0xBD23F6FB, float f0x3F80DA42, float f0x3C7704B2, float -0.000000e+00>
  %i.cn = fadd reassoc nsz arcp contract afn <4 x float> %i.cm, %i.cj
  %i.co = extractelement <2 x float> %i.cg, i64 0
  %i.cp = fadd reassoc nsz arcp contract afn float %i.co, %i.bt
  %i.cq = extractelement <2 x float> %i.cg, i64 1
  %i.cr = fadd reassoc nsz arcp contract afn float %i.cp, %i.cq
  %i.cs = shufflevector <2 x float> %i.cg, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ct = insertelement <4 x float> %i.cs, float %i.cr, i64 1
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cv = fmul reassoc nsz arcp contract afn <4 x float> %i.cu, <float f0x3D3470F4, float f0xBAE61976, float f0x3FA6AB48, float 0.000000e+00>
  %i.cw = fadd reassoc nsz arcp contract afn <4 x float> %i.cv, %i.cn
  %i.cx = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cw, <4 x float> zeroinitializer) ; 3 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <4 x float> %i.cx, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract4.i.i = extractelement <4 x float> %i.cx, i64 1 ; 3 uses
  %i.cy = fadd reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i.i, %.sroa.0.4.vec.extract4.i.i
  %.sroa.0.8.vec.extract.i.i = extractelement <4 x float> %i.cx, i64 2
  %i.cz = fadd reassoc nsz arcp contract afn float %i.cy, %.sroa.0.8.vec.extract.i.i ; 3 uses
  %i.da = fcmp reassoc nsz arcp contract afn ogt float %i.cz, 0.000000e+00 ; 2 uses
  %i.db = fdiv reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i.i, %i.cz
  %i.dc = select reassoc nsz arcp contract afn i1 %i.da, float %i.db, float 3.127100e-01 ; 2 uses
  %i.dd = fdiv reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract4.i.i, %i.cz
  %i.de = select reassoc nsz arcp contract afn i1 %i.da, float %i.dd, float 3.290200e-01 ; 2 uses
  %i.df = fmul reassoc nsz arcp contract afn float %i.dc, f0x3EA32D9A
  %i.dg = fmul reassoc nsz arcp contract afn float %i.de, f0x400AB749
  %i.dh = fadd reassoc nsz arcp contract afn float %i.df, f0x3E9527F8
  %i.di = fadd reassoc nsz arcp contract afn float %i.dh, %i.dg ; 5 uses
  %i.dj = fcmp reassoc nsz arcp contract afn ult float %i.di, 0.000000e+00
  %i.dk = fcmp reassoc nsz arcp contract afn olt float %i.di, f0x00800000
  %i.dl = select reassoc nsz arcp contract afn i1 %i.dk, float f0x00800000, float %i.di
  %i.dm = fcmp reassoc nsz arcp contract afn ogt float %i.di, f0x80800000
  %i.dn = select reassoc nsz arcp contract afn i1 %i.dm, float f0x80800000, float %i.di
  %i.do = select reassoc nsz arcp contract afn i1 %i.dj, float %i.dn, float %i.dl
  %i.dp = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = fmul reassoc nsz arcp contract afn <2 x float> %i.dq, <float f0xBF48B05C, float f0x3F3ECA3F>
  %i.ds = insertelement <2 x float> poison, float %i.de, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = fmul reassoc nsz arcp contract afn <2 x float> %i.dt, <float 2.775130e-01, float f0xBE524E0D>
  %i.dv = fadd reassoc nsz arcp contract afn <2 x float> %i.dr, <float f0x3E1D8756, float f0xBE29732A>
  %i.dw = fadd reassoc nsz arcp contract afn <2 x float> %i.dv, %i.du
  %i.dx = insertelement <2 x float> poison, float %i.do, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = fdiv reassoc nsz arcp contract afn <2 x float> %i.dw, %i.dy ; 3 uses
  %i.ea = extractelement <2 x float> %i.dz, i64 0
  %i.eb = fmul reassoc nsz arcp contract afn float %i.ea, f0x3FB2C28D
  %i.ec = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dz) ; 2 uses
  %i.ed = extractelement <2 x float> %i.ec, i64 0
  %i.ee = fadd reassoc nsz arcp contract afn float %i.ed, f0x3FBEFF8B
  %i.ef = fdiv reassoc nsz arcp contract afn float %i.eb, %i.ee ; 2 uses
  %i.eg = extractelement <2 x float> %i.dz, i64 1
  %i.eh = fmul reassoc nsz arcp contract afn float %i.eg, f0x3FB9C753
  %i.ei = extractelement <2 x float> %i.ec, i64 1
  %i.ej = fadd reassoc nsz arcp contract afn float %i.ei, f0x3FC32F7A
  %i.ek = fdiv reassoc nsz arcp contract afn float %i.eh, %i.ej ; 2 uses
  %i.el = fmul reassoc nsz arcp contract afn float %i.ef, f0xBF8FFF79
  %i.em = fmul reassoc nsz arcp contract afn float %i.ek, f0x3F7B00FB
  %i.en = fsub reassoc nsz arcp contract afn float %i.el, %i.em ; 3 uses
  %i.eo = fmul reassoc nsz arcp contract afn float %i.ef, f0x3FEE7E6D
  %i.ep = fmul reassoc nsz arcp contract afn float %i.ek, f0x3FFC65AF
  %i.eq = fadd reassoc nsz arcp contract afn float %i.ep, %i.eo ; 3 uses
  %i.er = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.sroa.0.4.vec.extract4.i.i, float f0x3F21B3E7) ; 2 uses
  %i.es = fmul reassoc nsz arcp contract afn float %i.er, f0x4006541D
  %i.et = fadd reassoc nsz arcp contract afn float %i.er, f0x3F8FE801
  %i.eu = fdiv reassoc nsz arcp contract afn float %i.es, %i.et ; 2 uses
  %i.ev = fmul reassoc nsz arcp contract afn float %i.en, %i.en
  %i.ew = fmul reassoc nsz arcp contract afn float %i.eq, %i.eq
  %i.ex = fadd reassoc nsz arcp contract afn float %i.ew, %i.ev
  %i.ey = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.eu, float f0x3F2703AC)
  %i.ez = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ex, float f0x3F19CB20)
  %i.fa = fmul reassoc nsz arcp contract afn float %i.ey, f0x41810168
  %i.fb = fmul reassoc nsz arcp contract afn float %i.fa, %i.ez ; 3 uses
  %i.fc = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.eq, float %i.en)
  %i.fd = fmul reassoc nsz arcp contract afn float %i.fc, f0x3E22F983
  %i.fe = fadd reassoc nsz arcp contract afn float %i.fd, 5.000000e-01 ; 3 uses
  br i1 %i.ar, label %get_weighted_hue_shift.exit, label %.preheader358

.preheader358:                                    ; preds = %bb.d, %bb.h
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.h ], [ 0, %bb.d ] ; 3 uses
  %.04360.i = phi float [ %.1.i, %bb.h ], [ 0.000000e+00, %bb.d ]
  %.04459.i = phi i32 [ %.145.i, %bb.h ], [ 0, %bb.d ]
  %.04658.i = phi float [ %.147.i, %bb.h ], [ 0.000000e+00, %bb.d ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !32 ; 2 uses
  %i.fh = fsub reassoc nsz arcp contract afn float %i.fe, %i.fg
  %i.fi = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.fh) ; 3 uses
  %i.fj = fcmp reassoc nsz arcp contract afn ogt float %i.fi, 5.000000e-01
  %i.fk = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.fi
  %.041.i = select nsz i1 %i.fj, float %i.fk, float %i.fi ; 2 uses
  %i.fl = fmul reassoc nsz arcp contract afn float %.041.i, %.041.i
  %i.fm = fmul reassoc nsz arcp contract afn float %i.fl, -5.000000e-01
  %i.fn = fmul reassoc nsz arcp contract afn float %i.fm, %i.bb
  %i.fo = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.fn) ; 2 uses
  %i.fp = fsub reassoc nsz arcp contract afn float %i.fg, %i.fe ; 5 uses
  %i.fq = fcmp reassoc nsz arcp contract afn ogt float %i.fp, 5.000000e-01
  br i1 %i.fq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.preheader358
  %i.fr = fadd reassoc nsz arcp contract afn float %i.fp, -1.000000e+00
  br label %bb.h

bb.f:                                             ; preds = %.preheader358
  %i.fs = fcmp reassoc nsz arcp contract afn olt float %i.fp, -5.000000e-01
  br i1 %i.fs, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ft = fadd reassoc nsz arcp contract afn float %i.fp, 1.000000e+00
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.0.i = phi nsz float [ %i.fr, %bb.e ], [ %i.ft, %bb.g ], [ %i.fp, %bb.f ]
  %i.fu = fcmp reassoc nsz arcp contract afn ogt float %i.fo, %.04658.i ; 3 uses
  %.147.i = select nsz i1 %i.fu, float %i.fo, float %.04658.i ; 3 uses
  %i.fv = trunc nuw nsw i64 %indvars.iv.i to i32
  %.145.i = select i1 %i.fu, i32 %i.fv, i32 %.04459.i ; 2 uses
  %.1.i = select nsz i1 %i.fu, float %.0.i, float %.04360.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bb.i, label %.preheader358

bb.i:                                             ; preds = %bb.h
  %i.fw = fmul reassoc nsz arcp contract afn float %.1.i, %.147.i
  %i.fx = sext i32 %.145.i to i64
  br label %get_weighted_hue_shift.exit

get_weighted_hue_shift.exit:                      ; preds = %bb.d, %bb.i
  %.0313 = phi nsz float [ %.147.i, %bb.i ], [ 0.000000e+00, %bb.d ]
  %.0312 = phi i64 [ %i.fx, %bb.i ], [ 0, %bb.d ]
  %.040.i = phi nsz float [ %i.fw, %bb.i ], [ 0.000000e+00, %bb.d ]
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.as, i64 %.0312
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !32
  %i.ga = fadd reassoc nsz arcp contract afn float %i.fz, -1.000000e+00
  %i.gb = fadd reassoc nsz arcp contract afn float %i.at, %i.fb
  %i.gc = fdiv reassoc nsz arcp contract afn float %i.fb, %i.gb ; 2 uses
  %i.gd = fmul reassoc nsz arcp contract afn float %i.gc, %i.q
  %i.ge = fmul reassoc nsz arcp contract afn float %i.gd, %.040.i
  %i.gf = fadd reassoc nsz arcp contract afn float %i.ge, %i.fe
  %i.gg = frem reassoc nsz arcp contract afn float %i.gf, 1.000000e+00 ; 3 uses
  %i.gh = fcmp reassoc nsz arcp contract afn olt float %i.gg, 0.000000e+00
  %i.gi = fadd reassoc nsz arcp contract afn float %i.gg, 1.000000e+00
  %.0.i197 = select nsz i1 %i.gh, float %i.gi, float %i.gg
  %i.gj = fmul reassoc nsz arcp contract afn float %.0.i197, f0x40C90FDB
  %i.gk = fadd reassoc nsz arcp contract afn float %i.gj, f0xC0490FDB
  %i.gl = fmul reassoc nsz arcp contract afn float %.0313, %i.gc
  %i.gm = fmul reassoc nsz arcp contract afn float %i.gl, %i.ga
  %i.gn = fadd reassoc nsz arcp contract afn float %i.gm, 1.000000e+00
  %i.go = fmul reassoc nsz arcp contract afn float %i.gn, %i.fb
  %i.gp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.go, float 0.000000e+00)
  %i.gq = fmul reassoc nsz arcp contract afn float %i.eu, f0x3F7FFFFF ; 5 uses
  %i.gr = fcmp reassoc nsz arcp contract afn ult float %i.gq, 0.000000e+00
  br i1 %i.gr, label %dt_UCS_JCH_to_xyY.exit, label %bb.j

bb.j:                                             ; preds = %get_weighted_hue_shift.exit
  %i.gs = fcmp reassoc nsz arcp contract afn ugt float %i.gq, 2.098850e+00
  br i1 %i.gs, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gt = fcmp reassoc nsz arcp contract afn une float %i.gq, 0.000000e+00
  br i1 %i.gt, label %.thread.i, label %dt_UCS_JCH_to_xyY.exit

.thread.i:                                        ; preds = %bb.k, %bb.j
  %i.gu = phi float [ %i.gq, %bb.k ], [ 2.098850e+00, %bb.j ] ; 2 uses
  %i.gv = fmul reassoc nnan nsz arcp contract afn float %i.gp, f0x3F7CF0E2
  %i.gw = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.gu, float f0x3F2703AC)
  %i.gx = fmul reassoc nsz arcp contract afn float %i.gw, f0x417EED8B
  %i.gy = fdiv reassoc nsz arcp contract afn float %i.gv, %i.gx
  %i.gz = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.gy, float f0x3F5510A2)
  br label %dt_UCS_JCH_to_xyY.exit

dt_UCS_JCH_to_xyY.exit:                           ; preds = %get_weighted_hue_shift.exit, %bb.k, %.thread.i
  %i.ha = phi float [ %i.gu, %.thread.i ], [ %i.gq, %bb.k ], [ 0.000000e+00, %get_weighted_hue_shift.exit ] ; 2 uses
  %i.hb = phi reassoc nsz arcp contract afn float [ %i.gz, %.thread.i ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %get_weighted_hue_shift.exit ]
  %sincos.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.gk) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0
  %cos.i = extractvalue { float, float } %sincos.i, 1
  %i.hc = insertelement <2 x float> poison, float %i.hb, i64 0
  %i.hd = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.he = insertelement <2 x float> poison, float %cos.i, i64 0
  %i.hf = insertelement <2 x float> %i.he, float %sin.i, i64 1
  %i.hg = fmul reassoc nsz arcp contract afn <2 x float> %i.hd, %i.hf ; 2 uses
  %i.hh = fmul reassoc nsz arcp contract afn <2 x float> %i.hg, <float f0x40985229, float f0x40204F91>
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hj = fmul reassoc nsz arcp contract afn <2 x float> %i.hg, <float f0xC0A13362, float f0x4037EFD4> ; 2 uses
  %i.hk = fsub reassoc nsz arcp contract afn <2 x float> %i.hj, %i.hi
  %i.hl = fadd reassoc nsz arcp contract afn <2 x float> %i.hj, %i.hi
  %i.hm = shufflevector <2 x float> %i.hk, <2 x float> %i.hl, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.hn = fmul reassoc nsz arcp contract afn <2 x float> %i.hm, <float f0xBFBEFF8B, float f0xBFC32F7A>
  %i.ho = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.hm)
  %i.hp = fadd reassoc nsz arcp contract afn <2 x float> %i.ho, <float f0xBFB2C28D, float f0xBFB9C753>
  %i.hq = fdiv reassoc nsz arcp contract afn <2 x float> %i.hn, %i.hp ; 3 uses
  %i.hr = extractelement <2 x float> %i.hq, i64 0 ; 2 uses
  %i.hs = fmul reassoc nsz arcp contract afn float %i.hr, f0xBE1A9505
  %i.ht = extractelement <2 x float> %i.hq, i64 1 ; 2 uses
  %i.hu = fmul reassoc nsz arcp contract afn float %i.ht, f0xBE1EE8D5
  %i.hv = fadd reassoc nsz arcp contract afn float %i.hs, f0xBC0A2B16
  %i.hw = fadd reassoc nsz arcp contract afn float %i.hv, %i.hu
  %i.hx = fmul reassoc nsz arcp contract afn float %i.hr, f0x3F70B489
  %i.hy = fadd reassoc nsz arcp contract afn float %i.ht, f0xBCD1FB74
  %i.hz = fadd reassoc nsz arcp contract afn float %i.hy, %i.hx ; 5 uses
  %i.ia = fcmp reassoc nsz arcp contract afn ult float %i.hz, 0.000000e+00
  %i.ib = fcmp reassoc nsz arcp contract afn olt float %i.hz, f0x00800000
  %i.ic = select reassoc nsz arcp contract afn i1 %i.ib, float f0x00800000, float %i.hz
  %i.id = fcmp reassoc nsz arcp contract afn ogt float %i.hz, f0x80800000
  %i.ie = select reassoc nsz arcp contract afn i1 %i.id, float f0x80800000, float %i.hz
  %i.if = select reassoc nsz arcp contract afn i1 %i.ia, float %i.ie, float %i.ic ; 2 uses
  %i.ig = fdiv reassoc nsz arcp contract afn float %i.hw, %i.if ; 4 uses
  %i.ih = fcmp reassoc nsz arcp contract afn oeq float %i.ig, 0.000000e+00
  br i1 %i.ih, label %dt_xyY_to_XYZ.exit, label %bb.l

bb.l:                                             ; preds = %dt_UCS_JCH_to_xyY.exit
  %i.ii = fmul reassoc nsz arcp contract afn float %i.ha, f0x3F8FE801
  %i.ij = fsub reassoc nsz arcp contract afn float f0x4006541D, %i.ha
  %i.ik = fdiv reassoc nsz arcp contract afn float %i.ii, %i.ij
  %i.il = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.ik, float f0x3FCAA4B8) ; 3 uses
  %i.im = fmul reassoc nsz arcp contract afn <2 x float> %i.hq, <float f0x3E2B2F00, float f0x3E10B0E5> ; 2 uses
  %i.in = extractelement <2 x float> %i.im, i64 0
  %i.io = fadd reassoc nsz arcp contract afn float %i.in, f0xBC0352A9
  %i.ip = extractelement <2 x float> %i.im, i64 1
  %i.iq = fadd reassoc nsz arcp contract afn float %i.io, %i.ip
  %i.ir = fdiv reassoc nsz arcp contract afn float %i.iq, %i.if ; 2 uses
  %i.is = fmul reassoc nsz arcp contract afn float %i.ir, %i.il
  %i.it = fdiv reassoc nsz arcp contract afn float %i.is, %i.ig
  %i.iu = fadd reassoc nsz arcp contract afn float %i.ig, %i.ir
  %i.iv = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.iu
  %i.iw = fmul reassoc nsz arcp contract afn float %i.iv, %i.il
  %i.ix = fdiv reassoc nsz arcp contract afn float %i.iw, %i.ig
  br label %dt_xyY_to_XYZ.exit

dt_xyY_to_XYZ.exit:                               ; preds = %dt_UCS_JCH_to_xyY.exit, %bb.l
  %.sroa.0280.0 = phi nsz float [ %i.it, %bb.l ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit ] ; 3 uses
  %.sroa.8284.0 = phi nsz float [ %i.il, %bb.l ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit ] ; 3 uses
  %i.iy = phi reassoc nsz arcp contract afn float [ %i.ix, %bb.l ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit ] ; 3 uses
  %i.iz = fmul reassoc nsz arcp contract afn float %.sroa.0280.0, f0x3F8163AD
  %i.ja = fmul reassoc nsz arcp contract afn float %.sroa.8284.0, f0x3D26BE12
  %i.jb = fadd reassoc nsz arcp contract afn float %i.ja, %i.iz
  %i.jc = fmul reassoc nsz arcp contract afn float %i.iy, f0xBD0BDB31
  %i.jd = fadd reassoc nsz arcp contract afn float %i.jb, %i.jc
  %i.je = fmul reassoc nsz arcp contract afn float %.sroa.0280.0, f0x3BB1DE8E
  %i.jf = fmul reassoc nsz arcp contract afn float %.sroa.8284.0, f0x3F7E5B63
  %i.jg = fadd reassoc nsz arcp contract afn float %i.jf, %i.je
  %i.jh = fmul reassoc nsz arcp contract afn float %i.iy, f0x3A978241
  %i.ji = fadd reassoc nsz arcp contract afn float %i.jg, %i.jh
  %i.jj = fmul reassoc nsz arcp contract afn float %.sroa.0280.0, f0x39837366
  %i.jk = fmul reassoc nsz arcp contract afn float %.sroa.8284.0, f0x3C3C486C
  %i.jl = fsub reassoc nsz arcp contract afn float %i.jj, %i.jk
  %i.jm = fmul reassoc nsz arcp contract afn float %i.iy, f0x3F44995A
  %i.jn = fadd reassoc nsz arcp contract afn float %i.jl, %i.jm
  %.sroa.6384.0..0182327.sroa_idx = getelementptr inbounds nuw i8, ptr %.0182327, i64 12
  %i.jo = load <4 x float>, ptr %i.au, align 4, !tbaa !32
  %i.jp = insertelement <4 x float> poison, float %i.jd, i64 0
  %i.jq = shufflevector <4 x float> %i.jp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jr = fmul reassoc nsz arcp contract afn <4 x float> %i.jq, %i.jo
  %i.js = load <4 x float>, ptr %i.av, align 4, !tbaa !32
  %i.jt = insertelement <4 x float> poison, float %i.ji, i64 0
  %i.ju = shufflevector <4 x float> %i.jt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jv = fmul reassoc nsz arcp contract afn <4 x float> %i.js, %i.ju
  %i.jw = fadd reassoc nsz arcp contract afn <4 x float> %i.jv, %i.jr
  %i.jx = load <4 x float>, ptr %i.aw, align 4, !tbaa !32
  %i.jy = insertelement <4 x float> poison, float %i.jn, i64 0
  %i.jz = shufflevector <4 x float> %i.jy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ka = fmul reassoc nsz arcp contract afn <4 x float> %i.jx, %i.jz
  %i.kb = fadd reassoc nsz arcp contract afn <4 x float> %i.jw, %i.ka
  store <4 x float> %i.kb, ptr %.0182327, align 4, !tbaa !32
  %i.kc = getelementptr inbounds nuw i8, ptr %.0181328, i64 12
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !32
  store float %i.kd, ptr %.sroa.6384.0..0182327.sroa_idx, align 4, !tbaa !32
  %i.ke = add nuw nsw i32 %.0183326, 1            ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.0181328, i64 %i.h
  %i.kg = getelementptr [4 x i8], ptr %.0182327, i64 %i.h
  %exitcond.not = icmp eq i32 %i.ke, %i.ai
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

bb.m:                                             ; preds = %bb.c
  %i.kh = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !57
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !56
  %i.km = sext i32 %i.kl to i64
  %i.kn = mul nsw i64 %i.km, %i.kj                ; 2 uses
  %i.ko = mul i64 %i.kn, 12
  %i.kp = tail call ptr @dt_alloc_aligned(i64 noundef %i.ko) #25 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kp, i64 64) ]
  %i.kq = shl i64 %i.kn, 3
  %i.kr = tail call ptr @dt_alloc_aligned(i64 noundef %i.kq) #25 ; 8 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kr, i64 64) ]
  %i.ks = icmp ne ptr %i.kp, null
  %i.kt = icmp ne ptr %i.kr, null
  %or.cond = select i1 %i.ks, i1 %i.kt, i1 false
  br i1 %or.cond, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.m
  %i.ku = load i32, ptr %i.kk, align 4, !tbaa !56 ; 3 uses
  %i.kv = icmp sgt i32 %i.ku, 0
  %.pre385 = load i32, ptr %i.kh, align 4, !tbaa !57 ; 5 uses
  br i1 %i.kv, label %.lr.ph339, label %._crit_edge340.split

.lr.ph339:                                        ; preds = %.preheader
  %i.kw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !57
  %i.ky = sext i32 %i.kx to i64
  %factor.op.mul341 = mul nsw i64 %i.h, %i.ky
  %i.kz = sext i32 %.pre385 to i64
  %i.la = icmp sgt i32 %.pre385, 0
  %i.lb = getelementptr inbounds nuw i8, ptr %i.o, i64 896
  %i.lc = getelementptr inbounds nuw i8, ptr %i.o, i64 912
  %i.ld = getelementptr inbounds nuw i8, ptr %i.o, i64 928
  %i.le = getelementptr inbounds nuw i8, ptr %i.o, i64 900
  %i.lf = getelementptr inbounds nuw i8, ptr %i.o, i64 916
  %i.lg = getelementptr inbounds nuw i8, ptr %i.o, i64 932
  %i.lh = icmp slt i32 %i.l, 1
  %wide.trip.count.i206 = zext nneg i32 %i.l to i64
  %i.li = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  br i1 %i.la, label %.lr.ph336.preheader, label %._crit_edge340.split

.lr.ph336.preheader:                              ; preds = %.lr.ph339
  %i.lj = fmul reassoc nsz arcp contract afn float %i.s, 5.000000e-01
  %i.lk = uitofp nneg i32 %i.l to float
  %i.ll = fdiv reassoc nsz arcp contract afn float %i.lj, %i.lk ; 2 uses
  %i.lm = fmul reassoc nsz arcp contract afn float %i.ll, %i.ll
  %wide.trip.count369 = zext nneg i32 %i.ku to i64
  %wide.trip.count364 = zext nneg i32 %.pre385 to i64
  %i.ln = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.lm
  br label %.lr.ph336

.thread:                                          ; preds = %bb.m
  tail call void @free(ptr noundef %i.kp) #25
  tail call void @free(ptr noundef %i.kr) #25
  br label %_update_histogram.exit

._crit_edge340.split.loopexit:                    ; preds = %._crit_edge337
  %.pre = load i32, ptr %i.kh, align 4, !tbaa !57
  br label %._crit_edge340.split

._crit_edge340.split:                             ; preds = %._crit_edge340.split.loopexit, %.lr.ph339, %.preheader
  %i.lo = phi i32 [ %.pre, %._crit_edge340.split.loopexit ], [ %.pre385, %.lr.ph339 ], [ %.pre385, %.preheader ]
  %i.lp = load float, ptr %i.y, align 4, !tbaa !55
  %i.lq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !58
  %i.ls = fmul reassoc nsz arcp contract afn float %i.lr, 8.000000e+00
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.lu = load float, ptr %i.lt, align 8, !tbaa !59
  %i.lv = fdiv reassoc nsz arcp contract afn float %i.ls, %i.lu
  %i.lw = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.lv, float 1.500000e+00)
  %i.lx = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.s, float 1.000000e+00)
  %i.ly = fmul reassoc nsz arcp contract afn float %i.lp, %i.lx
  %i.lz = fmul reassoc nsz arcp contract afn float %i.ly, %i.lw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const.dt_gaussian_mean_blur.max, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @__const.dt_gaussian_mean_blur.min, i64 16, i1 false)
  %i.ma = call ptr @dt_gaussian_init(i32 noundef %i.lo, i32 noundef %i.ku, i32 noundef 2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, float noundef %i.lz, i32 noundef 0) #25 ; 3 uses
  %.not.i = icmp eq ptr %i.ma, null
  br i1 %.not.i, label %dt_gaussian_mean_blur.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge340.split
  call void @dt_gaussian_blur(ptr noundef nonnull %i.ma, ptr noundef nonnull %i.kr, ptr noundef nonnull %i.kr) #25
  call void @dt_gaussian_free(ptr noundef nonnull %i.ma) #25
  br label %dt_gaussian_mean_blur.exit

dt_gaussian_mean_blur.exit:                       ; preds = %._crit_edge340.split, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.mb = load i32, ptr %i.kk, align 4, !tbaa !56 ; 2 uses
  %i.mc = icmp sgt i32 %i.mb, 0
  br i1 %i.mc, label %.lr.ph351, label %._crit_edge352.split

.lr.ph351:                                        ; preds = %dt_gaussian_mean_blur.exit
  %i.md = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.me = load i32, ptr %i.md, align 4, !tbaa !57
  %i.mf = sext i32 %i.me to i64
  %factor.op.mul353 = mul nsw i64 %i.h, %i.mf
  %i.mg = load i32, ptr %i.kh, align 4, !tbaa !57 ; 3 uses
  %i.mh = sext i32 %i.mg to i64                   ; 2 uses
  %factor.op.mul355 = mul nsw i64 %i.h, %i.mh
  %i.mi = icmp sgt i32 %i.mg, 0
  %i.mj = fadd reassoc nsz arcp contract afn float %i.x, f0x3727C5AC
  %i.mk = getelementptr inbounds nuw i8, ptr %i.o, i64 960
  %i.ml = getelementptr inbounds nuw i8, ptr %i.o, i64 976
  %i.mm = getelementptr inbounds nuw i8, ptr %i.o, i64 992
  br i1 %i.mi, label %.lr.ph348.preheader, label %._crit_edge352.split

.lr.ph348.preheader:                              ; preds = %.lr.ph351
  %wide.trip.count379 = zext nneg i32 %i.mb to i64
  %wide.trip.count374 = zext nneg i32 %i.mg to i64
  br label %.lr.ph348

.lr.ph336:                                        ; preds = %.lr.ph336.preheader, %._crit_edge337
  %indvars.iv366 = phi i64 [ 0, %.lr.ph336.preheader ], [ %indvars.iv.next367, %._crit_edge337 ] ; 3 uses
  %.reass342 = mul i64 %factor.op.mul341, %indvars.iv366
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.reass342
  %i.mo = mul nuw nsw i64 %indvars.iv366, %i.kz
  br label %bb.o

._crit_edge337:                                   ; preds = %get_weighted_hue_shift.exit219
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %exitcond370.not = icmp eq i64 %indvars.iv.next367, %wide.trip.count369
  br i1 %exitcond370.not, label %._crit_edge340.split.loopexit, label %.lr.ph336

end_hunk_0
begin_hunk_1_@process:bb.a
  %i.po = extractelement <2 x float> %i.pn, i64 0
  %i.pp = fadd reassoc nsz arcp contract afn float %i.po, f0x3FBEFF8B
  %i.pq = fdiv reassoc nsz arcp contract afn float %i.pm, %i.pp ; 2 uses
  %i.pr = extractelement <2 x float> %i.pk, i64 1
  %i.ps = fmul reassoc nsz arcp contract afn float %i.pr, f0x3FB9C753
  %i.pt = extractelement <2 x float> %i.pn, i64 1
  %i.pu = fadd reassoc nsz arcp contract afn float %i.pt, f0x3FC32F7A
  %i.pv = fdiv reassoc nsz arcp contract afn float %i.ps, %i.pu ; 2 uses
  %i.pw = fmul reassoc nsz arcp contract afn float %i.pq, f0xBF8FFF79
  %i.px = fmul reassoc nsz arcp contract afn float %i.pv, f0x3F7B00FB
  %i.py = fsub reassoc nsz arcp contract afn float %i.pw, %i.px ; 3 uses
  %i.pz = fmul reassoc nsz arcp contract afn float %i.pq, f0x3FEE7E6D
  %i.qa = fmul reassoc nsz arcp contract afn float %i.pv, f0x3FFC65AF
  %i.qb = fadd reassoc nsz arcp contract afn float %i.qa, %i.pz ; 3 uses
  %i.qc = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.sroa.0.4.vec.extract4.i.i204, float f0x3F21B3E7) ; 2 uses
  %i.qd = fmul reassoc nsz arcp contract afn float %i.qc, f0x4006541D
  %i.qe = fadd reassoc nsz arcp contract afn float %i.qc, f0x3F8FE801
  %i.qf = fdiv reassoc nsz arcp contract afn float %i.qd, %i.qe ; 2 uses
  %i.qg = fmul reassoc nsz arcp contract afn float %i.py, %i.py
  %i.qh = fmul reassoc nsz arcp contract afn float %i.qb, %i.qb
  %i.qi = fadd reassoc nsz arcp contract afn float %i.qh, %i.qg
  %i.qj = fmul reassoc nsz arcp contract afn float %i.qf, f0x3F818C4B
  %i.qk = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.qf, float f0x3F2703AC)
  %i.ql = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.qi, float f0x3F19CB20)
  %i.qm = fmul reassoc nsz arcp contract afn float %i.qk, f0x41810168
  %i.qn = fmul reassoc nsz arcp contract afn float %i.qm, %i.ql
  %i.qo = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.qb, float %i.py)
  %i.qp = fmul reassoc nsz arcp contract afn float %i.qo, f0x3E22F983
  %i.qq = fadd reassoc nsz arcp contract afn float %i.qp, 5.000000e-01 ; 3 uses
  %i.qr = add nuw nsw i64 %i.mo, %indvars.iv361   ; 2 uses
  %.idx317 = mul i64 %i.qr, 12
  %i.qs = getelementptr inbounds nuw i8, ptr %i.kp, i64 %.idx317 ; 3 uses
  store float %i.qj, ptr %i.qs, align 4, !tbaa !32
  %i.qt = getelementptr i8, ptr %i.qs, i64 4
  store float %i.qn, ptr %i.qt, align 4, !tbaa !32
  %i.qu = getelementptr i8, ptr %i.qs, i64 8
  store float %i.qq, ptr %i.qu, align 4, !tbaa !32
  br i1 %i.lh, label %get_weighted_hue_shift.exit219, label %.preheader357

.preheader357:                                    ; preds = %bb.o, %bb.s
  %indvars.iv.i207 = phi i64 [ %indvars.iv.next.i216, %bb.s ], [ 0, %bb.o ] ; 3 uses
  %.04360.i208 = phi float [ %.1.i215, %bb.s ], [ 0.000000e+00, %bb.o ]
  %.04459.i209 = phi i32 [ %.145.i214, %bb.s ], [ 0, %bb.o ]
  %.04658.i210 = phi float [ %.147.i213, %bb.s ], [ 0.000000e+00, %bb.o ] ; 2 uses
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i207
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !32 ; 2 uses
  %i.qx = fsub reassoc nsz arcp contract afn float %i.qq, %i.qw
  %i.qy = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.qx) ; 3 uses
  %i.qz = fcmp reassoc nsz arcp contract afn ogt float %i.qy, 5.000000e-01
  %i.ra = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.qy
  %.041.i211 = select nsz i1 %i.qz, float %i.ra, float %i.qy ; 2 uses
  %i.rb = fmul reassoc nsz arcp contract afn float %.041.i211, %.041.i211
  %i.rc = fmul reassoc nsz arcp contract afn float %i.rb, -5.000000e-01
  %i.rd = fmul reassoc nsz arcp contract afn float %i.rc, %i.ln
  %i.re = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.rd) ; 2 uses
  %i.rf = fsub reassoc nsz arcp contract afn float %i.qw, %i.qq ; 5 uses
  %i.rg = fcmp reassoc nsz arcp contract afn ogt float %i.rf, 5.000000e-01
  br i1 %i.rg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.preheader357
  %i.rh = fadd reassoc nsz arcp contract afn float %i.rf, -1.000000e+00
  br label %bb.s

bb.q:                                             ; preds = %.preheader357
  %i.ri = fcmp reassoc nsz arcp contract afn olt float %i.rf, -5.000000e-01
  br i1 %i.ri, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.rj = fadd reassoc nsz arcp contract afn float %i.rf, 1.000000e+00
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.0.i212 = phi nsz float [ %i.rh, %bb.p ], [ %i.rj, %bb.r ], [ %i.rf, %bb.q ]
  %i.rk = fcmp reassoc nsz arcp contract afn ogt float %i.re, %.04658.i210 ; 3 uses
  %.147.i213 = select nsz i1 %i.rk, float %i.re, float %.04658.i210 ; 3 uses
  %i.rl = trunc nuw nsw i64 %indvars.iv.i207 to i32
  %.145.i214 = select i1 %i.rk, i32 %i.rl, i32 %.04459.i209 ; 2 uses
  %.1.i215 = select nsz i1 %i.rk, float %.0.i212, float %.04360.i208 ; 2 uses
  %indvars.iv.next.i216 = add nuw nsw i64 %indvars.iv.i207, 1 ; 2 uses
  %exitcond.not.i217 = icmp eq i64 %indvars.iv.next.i216, %wide.trip.count.i206
  br i1 %exitcond.not.i217, label %bb.t, label %.preheader357

bb.t:                                             ; preds = %bb.s
  %i.rm = fmul reassoc nsz arcp contract afn float %.1.i215, %.147.i213
  %i.rn = sext i32 %.145.i214 to i64
  br label %get_weighted_hue_shift.exit219

get_weighted_hue_shift.exit219:                   ; preds = %bb.o, %bb.t
  %.0315 = phi nsz float [ %.147.i213, %bb.t ], [ 0.000000e+00, %bb.o ]
  %.0314 = phi i64 [ %i.rn, %bb.t ], [ 0, %bb.o ]
  %.040.i218 = phi nsz float [ %i.rm, %bb.t ], [ 0.000000e+00, %bb.o ]
  %.idx318 = shl i64 %i.qr, 3
  %i.ro = getelementptr inbounds nuw i8, ptr %i.kr, i64 %.idx318 ; 2 uses
  store float %.040.i218, ptr %i.ro, align 8, !tbaa !32
  %i.rp = getelementptr inbounds [4 x i8], ptr %i.li, i64 %.0314
  %i.rq = load float, ptr %i.rp, align 4, !tbaa !32
  %i.rr = fadd reassoc nsz arcp contract afn float %i.rq, -1.000000e+00
  %i.rs = fmul reassoc nsz arcp contract afn float %i.rr, %.0315
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ro, i64 4
  store float %i.rs, ptr %i.rt, align 4, !tbaa !32
  %indvars.iv.next362 = add nuw nsw i64 %indvars.iv361, 1 ; 2 uses
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %.0190334, i64 %i.h
  %exitcond365.not = icmp eq i64 %indvars.iv.next362, %wide.trip.count364
  br i1 %exitcond365.not, label %._crit_edge337, label %bb.o

.lr.ph348:                                        ; preds = %.lr.ph348.preheader, %._crit_edge349
  %indvars.iv376 = phi i64 [ 0, %.lr.ph348.preheader ], [ %indvars.iv.next377, %._crit_edge349 ] ; 4 uses
  %.reass354 = mul i64 %factor.op.mul353, %indvars.iv376
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.reass354
  %.reass356 = mul i64 %factor.op.mul355, %indvars.iv376
  %i.rw = getelementptr [4 x i8], ptr %3, i64 %.reass356
  %i.rx = mul nuw nsw i64 %indvars.iv376, %i.mh
  br label %bb.u

._crit_edge349:                                   ; preds = %dt_xyY_to_XYZ.exit227
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %exitcond380.not = icmp eq i64 %indvars.iv.next377, %wide.trip.count379
  br i1 %exitcond380.not, label %._crit_edge352.split, label %.lr.ph348

bb.u:                                             ; preds = %.lr.ph348, %dt_xyY_to_XYZ.exit227
  %indvars.iv371 = phi i64 [ 0, %.lr.ph348 ], [ %indvars.iv.next372, %dt_xyY_to_XYZ.exit227 ] ; 2 uses
  %.0187345 = phi ptr [ %i.rw, %.lr.ph348 ], [ %i.wm, %dt_xyY_to_XYZ.exit227 ] ; 3 uses
  %.0188344 = phi ptr [ %i.rv, %.lr.ph348 ], [ %i.wl, %dt_xyY_to_XYZ.exit227 ] ; 2 uses
  %i.ry = add nuw nsw i64 %i.rx, %indvars.iv371   ; 2 uses
  %.idx = mul i64 %i.ry, 12
  %i.rz = getelementptr inbounds nuw i8, ptr %i.kp, i64 %.idx ; 3 uses
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !32
  %i.sb = getelementptr i8, ptr %i.rz, i64 4
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !32 ; 3 uses
  %i.sd = getelementptr i8, ptr %i.rz, i64 8
  %i.se = load float, ptr %i.sd, align 4, !tbaa !32
  %i.sf = fadd reassoc nsz arcp contract afn float %i.mj, %i.sc
  %i.sg = fdiv reassoc nsz arcp contract afn float %i.sc, %i.sf ; 2 uses
  %.idx316 = shl i64 %i.ry, 3
  %i.sh = getelementptr inbounds nuw i8, ptr %i.kr, i64 %.idx316 ; 2 uses
  %i.si = load float, ptr %i.sh, align 8, !tbaa !32
  %i.sj = fmul reassoc nsz arcp contract afn float %i.si, %i.q
  %i.sk = fmul reassoc nsz arcp contract afn float %i.sj, %i.sg
  %i.sl = fadd reassoc nsz arcp contract afn float %i.sk, %i.se
  %i.sm = frem reassoc nsz arcp contract afn float %i.sl, 1.000000e+00 ; 3 uses
  %i.sn = fcmp reassoc nsz arcp contract afn olt float %i.sm, 0.000000e+00
  %i.so = fadd reassoc nsz arcp contract afn float %i.sm, 1.000000e+00
  %.0.i220 = select nsz i1 %i.sn, float %i.so, float %i.sm
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sh, i64 4
  %i.sq = load float, ptr %i.sp, align 4, !tbaa !32
  %i.sr = fmul reassoc nsz arcp contract afn float %i.sq, %i.sg
  %i.ss = fadd reassoc nsz arcp contract afn float %i.sr, 1.000000e+00
  %i.st = fmul reassoc nsz arcp contract afn float %i.ss, %i.sc
  %i.su = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.st, float 0.000000e+00)
  %i.sv = fmul reassoc nsz arcp contract afn float %.0.i220, f0x40C90FDB
  %i.sw = fadd reassoc nsz arcp contract afn float %i.sv, f0xC0490FDB
  %i.sx = fmul reassoc nsz arcp contract afn float %i.sa, f0x3F7CF0E2 ; 5 uses
  %i.sy = fcmp reassoc nsz arcp contract afn ult float %i.sx, 0.000000e+00
  br i1 %i.sy, label %dt_UCS_JCH_to_xyY.exit225, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.sz = fcmp reassoc nsz arcp contract afn ugt float %i.sx, 2.098850e+00
  br i1 %i.sz, label %.thread.i224, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ta = fcmp reassoc nsz arcp contract afn une float %i.sx, 0.000000e+00
  br i1 %i.ta, label %.thread.i224, label %dt_UCS_JCH_to_xyY.exit225

.thread.i224:                                     ; preds = %bb.w, %bb.v
  %i.tb = phi float [ %i.sx, %bb.w ], [ 2.098850e+00, %bb.v ] ; 2 uses
  %i.tc = fmul reassoc nnan nsz arcp contract afn float %i.su, f0x3F7CF0E2
  %i.td = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.tb, float f0x3F2703AC)
  %i.te = fmul reassoc nsz arcp contract afn float %i.td, f0x417EED8B
  %i.tf = fdiv reassoc nsz arcp contract afn float %i.tc, %i.te
  %i.tg = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.tf, float f0x3F5510A2)
  br label %dt_UCS_JCH_to_xyY.exit225

dt_UCS_JCH_to_xyY.exit225:                        ; preds = %bb.u, %bb.w, %.thread.i224
  %i.th = phi float [ %i.tb, %.thread.i224 ], [ %i.sx, %bb.w ], [ 0.000000e+00, %bb.u ] ; 2 uses
  %i.ti = phi reassoc nsz arcp contract afn float [ %i.tg, %.thread.i224 ], [ 0.000000e+00, %bb.w ], [ 0.000000e+00, %bb.u ]
  %sincos.i221 = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.sw) ; 2 uses
  %sin.i222 = extractvalue { float, float } %sincos.i221, 0
  %cos.i223 = extractvalue { float, float } %sincos.i221, 1
  %i.tj = insertelement <2 x float> poison, float %i.ti, i64 0
  %i.tk = shufflevector <2 x float> %i.tj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tl = insertelement <2 x float> poison, float %cos.i223, i64 0
  %i.tm = insertelement <2 x float> %i.tl, float %sin.i222, i64 1
  %i.tn = fmul reassoc nsz arcp contract afn <2 x float> %i.tk, %i.tm ; 2 uses
  %i.to = fmul reassoc nsz arcp contract afn <2 x float> %i.tn, <float f0x40985229, float f0x40204F91>
  %i.tp = shufflevector <2 x float> %i.to, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.tq = fmul reassoc nsz arcp contract afn <2 x float> %i.tn, <float f0xC0A13362, float f0x4037EFD4> ; 2 uses
  %i.tr = fsub reassoc nsz arcp contract afn <2 x float> %i.tq, %i.tp
  %i.ts = fadd reassoc nsz arcp contract afn <2 x float> %i.tq, %i.tp
  %i.tt = shufflevector <2 x float> %i.tr, <2 x float> %i.ts, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.tu = fmul reassoc nsz arcp contract afn <2 x float> %i.tt, <float f0xBFBEFF8B, float f0xBFC32F7A>
  %i.tv = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.tt)
  %i.tw = fadd reassoc nsz arcp contract afn <2 x float> %i.tv, <float f0xBFB2C28D, float f0xBFB9C753>
  %i.tx = fdiv reassoc nsz arcp contract afn <2 x float> %i.tu, %i.tw ; 3 uses
  %i.ty = extractelement <2 x float> %i.tx, i64 0 ; 2 uses
  %i.tz = fmul reassoc nsz arcp contract afn float %i.ty, f0xBE1A9505
  %i.ua = extractelement <2 x float> %i.tx, i64 1 ; 2 uses
  %i.ub = fmul reassoc nsz arcp contract afn float %i.ua, f0xBE1EE8D5
  %i.uc = fadd reassoc nsz arcp contract afn float %i.tz, f0xBC0A2B16
  %i.ud = fadd reassoc nsz arcp contract afn float %i.uc, %i.ub
  %i.ue = fmul reassoc nsz arcp contract afn float %i.ty, f0x3F70B489
  %i.uf = fadd reassoc nsz arcp contract afn float %i.ua, f0xBCD1FB74
  %i.ug = fadd reassoc nsz arcp contract afn float %i.uf, %i.ue ; 5 uses
  %i.uh = fcmp reassoc nsz arcp contract afn ult float %i.ug, 0.000000e+00
  %i.ui = fcmp reassoc nsz arcp contract afn olt float %i.ug, f0x00800000
  %i.uj = select reassoc nsz arcp contract afn i1 %i.ui, float f0x00800000, float %i.ug
  %i.uk = fcmp reassoc nsz arcp contract afn ogt float %i.ug, f0x80800000
  %i.ul = select reassoc nsz arcp contract afn i1 %i.uk, float f0x80800000, float %i.ug
  %i.um = select reassoc nsz arcp contract afn i1 %i.uh, float %i.ul, float %i.uj ; 2 uses
  %i.un = fdiv reassoc nsz arcp contract afn float %i.ud, %i.um ; 4 uses
  %i.uo = fcmp reassoc nsz arcp contract afn oeq float %i.un, 0.000000e+00
  br i1 %i.uo, label %dt_xyY_to_XYZ.exit227, label %bb.x

bb.x:                                             ; preds = %dt_UCS_JCH_to_xyY.exit225
  %i.up = fmul reassoc nsz arcp contract afn float %i.th, f0x3F8FE801
  %i.uq = fsub reassoc nsz arcp contract afn float f0x4006541D, %i.th
  %i.ur = fdiv reassoc nsz arcp contract afn float %i.up, %i.uq
  %i.us = call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.ur, float f0x3FCAA4B8) ; 3 uses
  %i.ut = fmul reassoc nsz arcp contract afn <2 x float> %i.tx, <float f0x3E2B2F00, float f0x3E10B0E5> ; 2 uses
  %i.uu = extractelement <2 x float> %i.ut, i64 0
  %i.uv = fadd reassoc nsz arcp contract afn float %i.uu, f0xBC0352A9
  %i.uw = extractelement <2 x float> %i.ut, i64 1
  %i.ux = fadd reassoc nsz arcp contract afn float %i.uv, %i.uw
  %i.uy = fdiv reassoc nsz arcp contract afn float %i.ux, %i.um ; 2 uses
  %i.uz = fmul reassoc nsz arcp contract afn float %i.uy, %i.us
  %i.va = fdiv reassoc nsz arcp contract afn float %i.uz, %i.un
  %i.vb = fadd reassoc nsz arcp contract afn float %i.un, %i.uy
  %i.vc = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.vb
  %i.vd = fmul reassoc nsz arcp contract afn float %i.vc, %i.us
  %i.ve = fdiv reassoc nsz arcp contract afn float %i.vd, %i.un
  br label %dt_xyY_to_XYZ.exit227

dt_xyY_to_XYZ.exit227:                            ; preds = %dt_UCS_JCH_to_xyY.exit225, %bb.x
  %.sroa.8.0 = phi nsz float [ %i.us, %bb.x ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit225 ] ; 3 uses
  %.sroa.0242.0 = phi nsz float [ %i.va, %bb.x ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit225 ] ; 3 uses
  %i.vf = phi reassoc nsz arcp contract afn float [ %i.ve, %bb.x ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit225 ] ; 3 uses
  %i.vg = fmul reassoc nsz arcp contract afn float %.sroa.0242.0, f0x3F8163AD
  %i.vh = fmul reassoc nsz arcp contract afn float %.sroa.8.0, f0x3D26BE12
  %i.vi = fadd reassoc nsz arcp contract afn float %i.vg, %i.vh
  %i.vj = fmul reassoc nsz arcp contract afn float %i.vf, f0xBD0BDB31
  %i.vk = fadd reassoc nsz arcp contract afn float %i.vi, %i.vj
  %i.vl = fmul reassoc nsz arcp contract afn float %.sroa.0242.0, f0x3BB1DE8E
  %i.vm = fmul reassoc nsz arcp contract afn float %.sroa.8.0, f0x3F7E5B63
  %i.vn = fadd reassoc nsz arcp contract afn float %i.vl, %i.vm
  %i.vo = fmul reassoc nsz arcp contract afn float %i.vf, f0x3A978241
  %i.vp = fadd reassoc nsz arcp contract afn float %i.vn, %i.vo
  %i.vq = fmul reassoc nsz arcp contract afn float %.sroa.0242.0, f0x39837366
  %i.vr = fmul reassoc nsz arcp contract afn float %.sroa.8.0, f0x3C3C486C
  %i.vs = fsub reassoc nsz arcp contract afn float %i.vq, %i.vr
  %i.vt = fmul reassoc nsz arcp contract afn float %i.vf, f0x3F44995A
  %i.vu = fadd reassoc nsz arcp contract afn float %i.vs, %i.vt
  %.sroa.6.0..0187345.sroa_idx = getelementptr inbounds nuw i8, ptr %.0187345, i64 12
  %i.vv = load <4 x float>, ptr %i.mk, align 4, !tbaa !32
  %i.vw = insertelement <4 x float> poison, float %i.vk, i64 0
  %i.vx = shufflevector <4 x float> %i.vw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vy = fmul reassoc nsz arcp contract afn <4 x float> %i.vx, %i.vv
  %i.vz = load <4 x float>, ptr %i.ml, align 4, !tbaa !32
  %i.wa = insertelement <4 x float> poison, float %i.vp, i64 0
  %i.wb = shufflevector <4 x float> %i.wa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wc = fmul reassoc nsz arcp contract afn <4 x float> %i.vz, %i.wb
  %i.wd = fadd reassoc nsz arcp contract afn <4 x float> %i.wc, %i.vy
  %i.we = load <4 x float>, ptr %i.mm, align 4, !tbaa !32
  %i.wf = insertelement <4 x float> poison, float %i.vu, i64 0
  %i.wg = shufflevector <4 x float> %i.wf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wh = fmul reassoc nsz arcp contract afn <4 x float> %i.we, %i.wg
  %i.wi = fadd reassoc nsz arcp contract afn <4 x float> %i.wd, %i.wh
  store <4 x float> %i.wi, ptr %.0187345, align 4, !tbaa !32
  %i.wj = getelementptr inbounds nuw i8, ptr %.0188344, i64 12
  %i.wk = load float, ptr %i.wj, align 4, !tbaa !32
  store float %i.wk, ptr %.sroa.6.0..0187345.sroa_idx, align 4, !tbaa !32
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1 ; 2 uses
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %.0188344, i64 %i.h
  %i.wm = getelementptr [4 x i8], ptr %.0187345, i64 %i.h
  %exitcond375.not = icmp eq i64 %indvars.iv.next372, %wide.trip.count374
  br i1 %exitcond375.not, label %._crit_edge349, label %bb.u

._crit_edge352.split:                             ; preds = %._crit_edge349, %.lr.ph351, %dt_gaussian_mean_blur.exit
  call void @free(ptr noundef %i.kp) #25
  call void @free(ptr noundef nonnull %i.kr) #25
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %.preheader324, %.lr.ph330, %._crit_edge352.split
  %i.wn = getelementptr i8, ptr %0, i64 704
  %.val = load ptr, ptr %i.wn, align 16, !tbaa !60 ; 5 uses
  %.not.i228 = icmp eq ptr %.val, null
  br i1 %.not.i228, label %_update_histogram.exit, label %bb.y

bb.y:                                             ; preds = %.loopexit
  %i.wo = load ptr, ptr %i.m, align 8, !tbaa !51  ; 2 uses
  %i.wp = getelementptr i8, ptr %i.wo, i64 644
  %.val.i = load i32, ptr %i.wp, align 4, !tbaa !72
  %i.wq = and i32 %.val.i, 4
  %.not38.i = icmp eq i32 %i.wq, 0
  br i1 %.not38.i, label %_update_histogram.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.wr = call ptr @dt_ioppr_get_pipe_work_profile_info(ptr noundef nonnull %i.wo) #25 ; 10 uses
  %.not39.i = icmp eq ptr %i.wr, null
  br i1 %.not39.i, label %_update_histogram.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ws = load i32, ptr %i.f, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1440) %i.a, i8 0, i64 1440, i1 false)
  %i.wt = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !56 ; 2 uses
  %i.wv = icmp sgt i32 %i.wu, 0
  br i1 %i.wv, label %.lr.ph6.i, label %._crit_edge7.split.i

.lr.ph6.i:                                        ; preds = %bb.aa
  %i.ww = sext i32 %i.ws to i64                   ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !57 ; 3 uses
  %i.wz = sext i32 %i.wy to i64
  %factor.op.mul.i = mul nsw i64 %i.wz, %i.ww
  %i.xa = icmp sgt i32 %i.wy, 0
  br i1 %i.xa, label %.lr.ph6.split.i, label %._crit_edge7.split.i

.lr.ph6.split.i:                                  ; preds = %.lr.ph6.i
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wr, i64 936
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wr, i64 920
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wr, i64 904
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wr, i64 932
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wr, i64 916
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wr, i64 900
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wr, i64 928
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wr, i64 912
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wr, i64 896
  %i.xk = load float, ptr %i.xj, align 4, !tbaa !32
  %i.xl = load float, ptr %i.xi, align 4, !tbaa !32
  %i.xm = load float, ptr %i.xh, align 4, !tbaa !32
  %i.xn = load float, ptr %i.xg, align 4, !tbaa !32
  %i.xo = load float, ptr %i.xf, align 4, !tbaa !32
  %i.xp = load float, ptr %i.xe, align 4, !tbaa !32
  %i.xq = load float, ptr %i.xd, align 4, !tbaa !32
  %i.xr = load float, ptr %i.xc, align 4, !tbaa !32
  %i.xs = load float, ptr %i.xb, align 4, !tbaa !32
  %wide.trip.count.i229 = zext nneg i32 %i.wu to i64
  %i.xt = insertelement <2 x float> poison, float %i.xr, i64 0
  %i.xu = insertelement <2 x float> %i.xt, float %i.xs, i64 1
  br label %.lr.ph.i

._crit_edge7.split.i:                             ; preds = %._crit_edge.i, %.lr.ph6.i, %bb.aa
  %i.xv = getelementptr inbounds nuw i8, ptr %.val, i64 1776 ; 2 uses
  %i.xw = load i32, ptr %i.xv, align 8, !tbaa !88
  %.not40.i = icmp eq i32 %i.xw, 0
  %i.xx = getelementptr inbounds nuw i8, ptr %.val, i64 1784 ; 2 uses
  call void @g_mutex_lock(ptr noundef nonnull %i.xx) #25
  %i.xy = getelementptr inbounds nuw i8, ptr %.val, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1440) %i.xy, ptr noundef nonnull align 16 dereferenceable(1440) %i.a, i64 1440, i1 false)
  store i32 1, ptr %i.xv, align 8, !tbaa !88
  call void @g_mutex_unlock(ptr noundef nonnull %i.xx) #25
  br i1 %.not40.i, label %bb.ae, label %bb.af

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph6.split.i
  %indvars.iv.i230 = phi i64 [ 0, %.lr.ph6.split.i ], [ %indvars.iv.next.i232, %._crit_edge.i ] ; 2 uses
  %.reass.i = mul i64 %factor.op.mul.i, %indvars.iv.i230
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.reass.i
  br label %bb.ab

._crit_edge.i:                                    ; preds = %bb.ad
  %indvars.iv.next.i232 = add nuw nsw i64 %indvars.iv.i230, 1 ; 2 uses
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next.i232, %wide.trip.count.i229
  br i1 %exitcond9.not.i, label %._crit_edge7.split.i, label %.lr.ph.i

bb.ab:                                            ; preds = %bb.ad, %.lr.ph.i
  %.0343.i = phi ptr [ %i.xz, %.lr.ph.i ], [ %i.acb, %bb.ad ] ; 3 uses
  %.0352.i = phi i32 [ 0, %.lr.ph.i ], [ %i.aca, %bb.ad ]
  %i.ya = load float, ptr %.0343.i, align 4, !tbaa !32
  %i.yb = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ya, float 0.000000e+00) ; 3 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %.0343.i, i64 4
  %i.yd = fmul reassoc nsz arcp contract afn float %i.yb, %i.xk
  %i.ye = fmul reassoc nsz arcp contract afn float %i.yb, %i.xn
  %i.yf = fmul reassoc nsz arcp contract afn float %i.yb, %i.xq
  %i.yg = load <2 x float>, ptr %i.yc, align 4, !tbaa !32
  %i.yh = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.yg, <2 x float> zeroinitializer) ; 3 uses
  %i.yi = extractelement <2 x float> %i.yh, i64 0 ; 2 uses
  %i.yj = fmul reassoc nsz arcp contract afn float %i.yi, %i.xl
  %i.yk = fadd reassoc nsz arcp contract afn float %i.yj, %i.yd
  %i.yl = extractelement <2 x float> %i.yh, i64 1 ; 2 uses
  %i.ym = fmul reassoc nsz arcp contract afn float %i.yl, %i.xm
  %i.yn = fmul reassoc nsz arcp contract afn float %i.yi, %i.xo
  %i.yo = fadd reassoc nsz arcp contract afn float %i.yn, %i.ye
  %i.yp = fmul reassoc nsz arcp contract afn float %i.yl, %i.xp
  %i.yq = fmul reassoc nsz arcp contract afn <2 x float> %i.yh, %i.xu ; 2 uses
  %i.yr = extractelement <2 x float> %i.yq, i64 0
  %i.ys = fadd reassoc nsz arcp contract afn float %i.yr, %i.yf
  %i.yt = extractelement <2 x float> %i.yq, i64 1
  %i.yu = fadd reassoc nsz arcp contract afn float %i.ys, %i.yt ; 2 uses
  %i.yv = fadd reassoc nsz arcp contract afn float %i.yk, %i.ym ; 2 uses
  %i.yw = fadd reassoc nsz arcp contract afn float %i.yo, %i.yp ; 2 uses
  %i.yx = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.yv, i64 0
  %i.yy = shufflevector <4 x float> %i.yx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.yz = fmul reassoc nsz arcp contract afn <4 x float> %i.yy, <float f0x3F7D4DA9, float f0xBBB11DFF, float -4.039210e-04, float -0.000000e+00>
  %i.za = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.yw, i64 0
  %i.zb = shufflevector <4 x float> %i.za, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.zc = fmul reassoc nsz arcp contract afn <4 x float> %i.zb, <float f0xBD23F6FB, float f0x3F80DA42, float f0x3C7704B2, float -0.000000e+00>
  %i.zd = fadd reassoc nsz arcp contract afn <4 x float> %i.zc, %i.yz
  %i.ze = fadd reassoc nsz arcp contract afn float %i.yw, %i.yv
  %i.zf = fadd reassoc nsz arcp contract afn float %i.ze, %i.yu
  %i.zg = insertelement <4 x float> poison, float %i.yu, i64 0
  %i.zh = insertelement <4 x float> %i.zg, float %i.zf, i64 1
  %i.zi = shufflevector <4 x float> %i.zh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
end_hunk_1
begin_hunk_2_@_sync_custom_sliders:bb.a
  %i.aw = fcmp reassoc nsz arcp contract afn ogt float %i.av, 5.000000e-01
  br i1 %i.aw, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ucs_to_ryb_fast.exit
  %i.ax = fsub reassoc nsz arcp contract afn float %i.ar, %i.au
  %i.ay = fcmp reassoc nsz arcp contract afn ogt float %i.ax, 5.000000e-01
  br i1 %i.ay, label %bb.f, label %_ucs_to_ryb_fast.exit.1

bb.f:                                             ; preds = %bb.e
  %i.az = fadd reassoc nsz arcp contract afn float %i.ar, -1.000000e+00
  br label %_ucs_to_ryb_fast.exit.1

bb.g:                                             ; preds = %_ucs_to_ryb_fast.exit
  %i.ba = fadd reassoc nsz arcp contract afn float %i.au, -1.000000e+00
  br label %_ucs_to_ryb_fast.exit.1

_ucs_to_ryb_fast.exit.1:                          ; preds = %bb.g, %bb.f, %bb.e
  %.014.i.i.1 = phi nsz float [ %i.ba, %bb.g ], [ %i.au, %bb.f ], [ %i.au, %bb.e ]
  %.013.i.i.1 = phi nsz float [ %i.ar, %bb.g ], [ %i.az, %bb.f ], [ %i.ar, %bb.e ] ; 2 uses
  %i.bb = sitofp reassoc nsz arcp contract afn i32 %i.al to float
  %i.bc = fsub reassoc nsz arcp contract afn float %i.ak, %i.bb
  %i.bd = fsub reassoc nsz arcp contract afn float %.014.i.i.1, %.013.i.i.1
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, %i.bc
  %i.bf = fadd reassoc nsz arcp contract afn float %i.be, %.013.i.i.1 ; 3 uses
  %i.bg = fcmp reassoc nsz arcp contract afn olt float %i.bf, 0.000000e+00
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bf, 1.000000e+00
  %.0.i.i.1 = select nsz i1 %i.bg, float %i.bh, float %i.bf
  %i.bi = fmul reassoc nsz arcp contract afn float %.0.i.i.1, 3.600000e+02
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ah, float noundef %i.bi) #25
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !148
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !32
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, 7.200000e+02 ; 2 uses
  %i.bo = fptosi float %i.bn to i32               ; 2 uses
  %i.bp = srem i32 %i.bo, 720                     ; 2 uses
  %i.bq = trunc nsw i32 %i.bp to i16
  %.lhs.trunc.i.2 = add nsw i16 %i.bq, 1
  %i.br = srem i16 %.lhs.trunc.i.2, 720
  %i.bs = sext i32 %i.bp to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !32 ; 5 uses
  %i.bv = sext i16 %i.br to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !32 ; 5 uses
  %i.by = fsub reassoc nsz arcp contract afn float %i.bx, %i.bu
  %i.bz = fcmp reassoc nsz arcp contract afn ogt float %i.by, 5.000000e-01
  br i1 %i.bz, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ucs_to_ryb_fast.exit.1
  %i.ca = fsub reassoc nsz arcp contract afn float %i.bu, %i.bx
  %i.cb = fcmp reassoc nsz arcp contract afn ogt float %i.ca, 5.000000e-01
  br i1 %i.cb, label %bb.i, label %_ucs_to_ryb_fast.exit.2

bb.i:                                             ; preds = %bb.h
  %i.cc = fadd reassoc nsz arcp contract afn float %i.bu, -1.000000e+00
  br label %_ucs_to_ryb_fast.exit.2

bb.j:                                             ; preds = %_ucs_to_ryb_fast.exit.1
  %i.cd = fadd reassoc nsz arcp contract afn float %i.bx, -1.000000e+00
  br label %_ucs_to_ryb_fast.exit.2

_ucs_to_ryb_fast.exit.2:                          ; preds = %bb.j, %bb.i, %bb.h
  %.014.i.i.2 = phi nsz float [ %i.cd, %bb.j ], [ %i.bx, %bb.i ], [ %i.bx, %bb.h ]
  %.013.i.i.2 = phi nsz float [ %i.bu, %bb.j ], [ %i.cc, %bb.i ], [ %i.bu, %bb.h ] ; 2 uses
  %i.ce = sitofp reassoc nsz arcp contract afn i32 %i.bo to float
  %i.cf = fsub reassoc nsz arcp contract afn float %i.bn, %i.ce
  %i.cg = fsub reassoc nsz arcp contract afn float %.014.i.i.2, %.013.i.i.2
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cg, %i.cf
  %i.ci = fadd reassoc nsz arcp contract afn float %i.ch, %.013.i.i.2 ; 3 uses
  %i.cj = fcmp reassoc nsz arcp contract afn olt float %i.ci, 0.000000e+00
  %i.ck = fadd reassoc nsz arcp contract afn float %i.ci, 1.000000e+00
  %.0.i.i.2 = select nsz i1 %i.cj, float %i.ck, float %i.ci
  %i.cl = fmul reassoc nsz arcp contract afn float %.0.i.i.2, 3.600000e+02
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bk, float noundef %i.cl) #25
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !148
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cp = load float, ptr %i.co, align 4, !tbaa !32
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cp, 7.200000e+02 ; 2 uses
  %i.cr = fptosi float %i.cq to i32               ; 2 uses
  %i.cs = srem i32 %i.cr, 720                     ; 2 uses
  %i.ct = trunc nsw i32 %i.cs to i16
  %.lhs.trunc.i.3 = add nsw i16 %i.ct, 1
  %i.cu = srem i16 %.lhs.trunc.i.3, 720
  %i.cv = sext i32 %i.cs to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.cv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !32 ; 5 uses
  %i.cy = sext i16 %i.cu to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.cy
  %i.da = load float, ptr %i.cz, align 4, !tbaa !32 ; 5 uses
  %i.db = fsub reassoc nsz arcp contract afn float %i.da, %i.cx
  %i.dc = fcmp reassoc nsz arcp contract afn ogt float %i.db, 5.000000e-01
  br i1 %i.dc, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ucs_to_ryb_fast.exit.2
  %i.dd = fsub reassoc nsz arcp contract afn float %i.cx, %i.da
  %i.de = fcmp reassoc nsz arcp contract afn ogt float %i.dd, 5.000000e-01
  br i1 %i.de, label %bb.l, label %_ucs_to_ryb_fast.exit.3

bb.l:                                             ; preds = %bb.k
  %i.df = fadd reassoc nsz arcp contract afn float %i.cx, -1.000000e+00
  br label %_ucs_to_ryb_fast.exit.3

bb.m:                                             ; preds = %_ucs_to_ryb_fast.exit.2
  %i.dg = fadd reassoc nsz arcp contract afn float %i.da, -1.000000e+00
  br label %_ucs_to_ryb_fast.exit.3

_ucs_to_ryb_fast.exit.3:                          ; preds = %bb.m, %bb.l, %bb.k
  %.014.i.i.3 = phi nsz float [ %i.dg, %bb.m ], [ %i.da, %bb.l ], [ %i.da, %bb.k ]
  %.013.i.i.3 = phi nsz float [ %i.cx, %bb.m ], [ %i.df, %bb.l ], [ %i.cx, %bb.k ] ; 2 uses
  %i.dh = sitofp reassoc nsz arcp contract afn i32 %i.cr to float
  %i.di = fsub reassoc nsz arcp contract afn float %i.cq, %i.dh
  %i.dj = fsub reassoc nsz arcp contract afn float %.014.i.i.3, %.013.i.i.3
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, %i.di
  %i.dl = fadd reassoc nsz arcp contract afn float %i.dk, %.013.i.i.3 ; 3 uses
  %i.dm = fcmp reassoc nsz arcp contract afn olt float %i.dl, 0.000000e+00
  %i.dn = fadd reassoc nsz arcp contract afn float %i.dl, 1.000000e+00
  %.0.i.i.3 = select nsz i1 %i.dm, float %i.dn, float %i.dl
  %i.do = fmul reassoc nsz arcp contract afn float %.0.i.i.3, 3.600000e+02
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.cn, float noundef %i.do) #25
  %i.dp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !144
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 104
  %i.dr = atomicrmw sub ptr %i.dq, i32 1 seq_cst, align 4 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_paint_all_sat_sliders(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 0, ptr %i.b, align 4, !tbaa !31
  %i.c = load i32, ptr %1, align 4, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !37
  call fastcc void @get_harmony_nodes(i32 noundef %i.c, float noundef %i.e, ptr noundef nonnull %i.f, i32 noundef %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !31   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_paint_sat_slider.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void

bb.b:                                             ; preds = %.lr.ph, %_paint_sat_slider.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_paint_sat_slider.exit ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !148  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.o = load float, ptr %i.n, align 4, !tbaa !32
  %i.p = fmul reassoc nsz arcp contract afn float %i.o, f0x40C90FDB
  %i.q = fadd reassoc nsz arcp contract afn float %i.p, f0xC0490FDB
  %sincos.i.i.i9 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.q) ; 2 uses
  %sin.i.i.i10 = extractvalue { float, float } %sincos.i.i.i9, 0
  %cos.i.i.i11 = extractvalue { float, float } %sincos.i.i.i9, 1
  %i.r = insertelement <2 x float> poison, float %sin.i.i.i10, i64 0
  %i.s = insertelement <2 x float> %i.r, float %cos.i.i.i11, i64 1 ; 2 uses
  %i.t = fmul reassoc nsz arcp contract afn <2 x float> %i.s, <float f0x40204F91, float f0x40985229> ; 2 uses
  %i.u = fmul reassoc nsz arcp contract afn <2 x float> %i.s, <float f0x4037EFD4, float f0xC0A13362>
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.w = fsub reassoc nsz arcp contract afn <2 x float> %i.v, %i.t
  %i.x = fadd reassoc nsz arcp contract afn <2 x float> %i.v, %i.t
  %i.y = shufflevector <2 x float> %i.w, <2 x float> %i.x, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.z = fmul reassoc nsz arcp contract afn <2 x float> %i.y, <float f0xBFBEFF8B, float f0xBFC32F7A>
  br label %dt_UCS_JCH_to_xyY.exit.i.i8

dt_UCS_JCH_to_xyY.exit.i.i8:                      ; preds = %dt_UCS_JCH_to_sRGB.exit16, %bb.b
  %.029.i.i = phi float [ 0.000000e+00, %bb.b ], [ %..0.i.i, %dt_UCS_JCH_to_sRGB.exit16 ] ; 2 uses
  %.02428.i.i = phi i32 [ 0, %bb.b ], [ %i.dc, %dt_UCS_JCH_to_sRGB.exit16 ]
  %.02527.i.i = phi float [ 2.000000e+00, %bb.b ], [ %.025..i.i, %dt_UCS_JCH_to_sRGB.exit16 ] ; 2 uses
  %i.aa = fadd reassoc nsz arcp contract afn float %.02527.i.i, %.029.i.i ; 2 uses
  %i.ab = fmul reassoc nsz arcp contract afn float %i.aa, 5.000000e-01 ; 2 uses
  %i.ac = fmul reassoc nsz arcp contract afn float %i.aa, f0x3D298A54
  %i.ad = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ac, float f0x3F5510A2)
  %i.ae = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ag = fmul reassoc nsz arcp contract afn <2 x float> %i.y, %i.af
  %i.ah = fmul reassoc nsz arcp contract afn <2 x float> %i.af, %i.z
  %i.ai = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ag)
  %i.aj = fadd reassoc nsz arcp contract afn <2 x float> %i.ai, <float f0xBFB2C28D, float f0xBFB9C753>
  %i.ak = fdiv reassoc nsz arcp contract afn <2 x float> %i.ah, %i.aj ; 3 uses
  %i.al = extractelement <2 x float> %i.ak, i64 0 ; 2 uses
  %i.am = fmul reassoc nsz arcp contract afn float %i.al, f0xBE1A9505
  %i.an = extractelement <2 x float> %i.ak, i64 1 ; 2 uses
  %i.ao = fmul reassoc nsz arcp contract afn float %i.an, f0xBE1EE8D5
  %i.ap = fadd reassoc nsz arcp contract afn float %i.am, f0xBC0A2B16
  %i.aq = fadd reassoc nsz arcp contract afn float %i.ap, %i.ao
  %i.ar = fmul reassoc nsz arcp contract afn float %i.al, f0x3F70B489
  %i.as = fadd reassoc nsz arcp contract afn float %i.an, f0xBCD1FB74
  %i.at = fadd reassoc nsz arcp contract afn float %i.as, %i.ar ; 5 uses
  %i.au = fcmp reassoc nsz arcp contract afn ult float %i.at, 0.000000e+00
  %i.av = fcmp reassoc nsz arcp contract afn olt float %i.at, f0x00800000
  %i.aw = select reassoc nsz arcp contract afn i1 %i.av, float f0x00800000, float %i.at
  %i.ax = fcmp reassoc nsz arcp contract afn ogt float %i.at, f0x80800000
  %i.ay = select reassoc nsz arcp contract afn i1 %i.ax, float f0x80800000, float %i.at
  %i.az = select reassoc nsz arcp contract afn i1 %i.au, float %i.ay, float %i.aw ; 2 uses
  %i.ba = fdiv reassoc nsz arcp contract afn float %i.aq, %i.az ; 4 uses
  %i.bb = fcmp reassoc nsz arcp contract afn oeq float %i.ba, 0.000000e+00
  br i1 %i.bb, label %dt_UCS_JCH_to_XYZ.exit.i12, label %bb.c

bb.c:                                             ; preds = %dt_UCS_JCH_to_xyY.exit.i.i8
  %i.bc = fmul reassoc nsz arcp contract afn <2 x float> %i.ak, <float f0x3E2B2F00, float f0x3E10B0E5> ; 2 uses
  %i.bd = extractelement <2 x float> %i.bc, i64 0
  %i.be = fadd reassoc nsz arcp contract afn float %i.bd, f0xBC0352A9
  %i.bf = extractelement <2 x float> %i.bc, i64 1
  %i.bg = fadd reassoc nsz arcp contract afn float %i.be, %i.bf
  %i.bh = fdiv reassoc nsz arcp contract afn float %i.bg, %i.az ; 2 uses
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bh, f0x3EA88D83
  %i.bj = fdiv reassoc nsz arcp contract afn float %i.bi, %i.ba
  %i.bk = fadd reassoc nsz arcp contract afn float %i.bh, %i.ba
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bk, f0x3EA88D83
  %i.bm = fsub reassoc nsz arcp contract afn float f0x3EA88D83, %i.bl
  %i.bn = fdiv reassoc nsz arcp contract afn float %i.bm, %i.ba
  br label %dt_UCS_JCH_to_XYZ.exit.i12

dt_UCS_JCH_to_XYZ.exit.i12:                       ; preds = %bb.c, %dt_UCS_JCH_to_xyY.exit.i.i8
  %.sink9.i.i13 = phi float [ %i.bj, %bb.c ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i.i8 ] ; 3 uses
  %.sink.i.i14 = phi float [ f0x3EA88D83, %bb.c ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i.i8 ] ; 3 uses
  %i.bo = phi reassoc nsz arcp contract afn float [ %i.bn, %bb.c ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i.i8 ] ; 3 uses
  %i.bp = fmul reassoc nsz arcp contract afn float %.sink9.i.i13, f0x404F639A
  %i.bq = fmul reassoc nnan nsz arcp contract afn float %.sink.i.i14, f0x3FC4C0F4
  %i.br = fsub reassoc nsz arcp contract afn float %i.bp, %i.bq
  %i.bs = fmul reassoc nsz arcp contract afn float %i.bo, f0xBEFF3F82
  %i.bt = fadd reassoc nsz arcp contract afn float %i.br, %i.bs ; 3 uses
  %i.bu = fmul reassoc nsz arcp contract afn float %.sink9.i.i13, f0x3F7821D1
  %i.bv = fmul reassoc nnan nsz arcp contract afn float %.sink.i.i14, f0x3FF0211F
  %i.bw = fsub reassoc nsz arcp contract afn float %i.bv, %i.bu
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bo, 4.155600e-02
  %i.by = fadd reassoc nsz arcp contract afn float %i.bw, %i.bx ; 3 uses
  %i.bz = fmul reassoc nsz arcp contract afn float %.sink9.i.i13, 5.564340e-02
  %i.ca = fmul reassoc nnan nsz arcp contract afn float %.sink.i.i14, f0x3E50EC2A
  %i.cb = fsub reassoc nsz arcp contract afn float %i.bz, %i.ca
  %i.cc = fmul reassoc nsz arcp contract afn float %i.bo, f0x3F875328
  %i.cd = fadd reassoc nsz arcp contract afn float %i.cb, %i.cc ; 3 uses
  %i.ce = fcmp reassoc nsz arcp contract afn ugt float %i.bt, 3.130800e-03
  br i1 %i.ce, label %bb.e, label %bb.d

bb.d:                                             ; preds = %dt_UCS_JCH_to_XYZ.exit.i12
  %i.cf = fmul reassoc nnan nsz arcp contract afn float %i.bt, 1.292000e+01
  br label %bb.f

bb.e:                                             ; preds = %dt_UCS_JCH_to_XYZ.exit.i12
  %i.cg = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bt, float f0x3ED55555)
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cg, 1.055000e+00
  %i.ci = fadd reassoc nsz arcp contract afn float %i.ch, -5.500000e-02
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cj = phi reassoc nsz arcp contract afn float [ %i.cf, %bb.d ], [ %i.ci, %bb.e ] ; 2 uses
  %i.ck = fcmp reassoc nsz arcp contract afn ugt float %i.by, 3.130800e-03
  br i1 %i.ck, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cl = fmul reassoc nnan nsz arcp contract afn float %i.by, 1.292000e+01
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.cm = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.by, float f0x3ED55555)
  %i.cn = fmul reassoc nsz arcp contract afn float %i.cm, 1.055000e+00
  %i.co = fadd reassoc nsz arcp contract afn float %i.cn, -5.500000e-02
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cp = phi reassoc nsz arcp contract afn float [ %i.cl, %bb.g ], [ %i.co, %bb.h ] ; 2 uses
  %i.cq = fcmp reassoc nsz arcp contract afn ugt float %i.cd, 3.130800e-03
  br i1 %i.cq, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cr = fmul reassoc nnan nsz arcp contract afn float %i.cd, 1.292000e+01
  br label %dt_UCS_JCH_to_sRGB.exit16

bb.k:                                             ; preds = %bb.i
  %i.cs = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cd, float f0x3ED55555)
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cs, 1.055000e+00
  %i.cu = fadd reassoc nsz arcp contract afn float %i.ct, -5.500000e-02
  br label %dt_UCS_JCH_to_sRGB.exit16

dt_UCS_JCH_to_sRGB.exit16:                        ; preds = %bb.k, %bb.j
  %i.cv = phi reassoc nsz arcp contract afn float [ %i.cr, %bb.j ], [ %i.cu, %bb.k ] ; 2 uses
  %i.cw = fcmp reassoc nsz arcp contract afn oge float %i.cj, 0.000000e+00
  %i.cx = fcmp reassoc nsz arcp contract afn oge float %i.cp, 0.000000e+00
  %or.cond.i.i = select i1 %i.cw, i1 %i.cx, i1 false
  %i.cy = fcmp reassoc nsz arcp contract afn oge float %i.cv, 0.000000e+00
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %i.cy, i1 false
  %i.cz = fcmp reassoc nsz arcp contract afn ole float %i.cj, 1.000000e+00
  %or.cond8.i.i = and i1 %i.cz, %or.cond5.i.i
  %i.da = fcmp reassoc nsz arcp contract afn ole float %i.cp, 1.000000e+00
  %or.cond11.i.i = select i1 %or.cond8.i.i, i1 %i.da, i1 false
  %i.db = fcmp reassoc nsz arcp contract afn ole float %i.cv, 1.000000e+00
  %or.cond14.i.i = select i1 %or.cond11.i.i, i1 %i.db, i1 false ; 2 uses
  %.025..i.i = select nsz i1 %or.cond14.i.i, float %.02527.i.i, float %i.ab
  %..0.i.i = select nsz i1 %or.cond14.i.i, float %i.ab, float %.029.i.i ; 3 uses
  %i.dc = add nuw nsw i32 %.02428.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.dc, 16
  br i1 %exitcond.not.i.i, label %_find_max_chroma.exit.i, label %dt_UCS_JCH_to_xyY.exit.i.i8

_find_max_chroma.exit.i:                          ; preds = %dt_UCS_JCH_to_sRGB.exit16
  %i.dd = fmul reassoc nsz arcp contract afn float %..0.i.i, f0x3DB73DFB
  %i.de = fmul reassoc nsz arcp contract afn <2 x float> %i.y, <float f0xBFBEFF8B, float f0xBFC32F7A>
  br label %dt_UCS_JCH_to_xyY.exit.i.i

dt_UCS_JCH_to_xyY.exit.i.i:                       ; preds = %dt_UCS_JCH_to_sRGB.exit, %_find_max_chroma.exit.i
  %.019.i = phi i32 [ 0, %_find_max_chroma.exit.i ], [ %i.gr, %dt_UCS_JCH_to_sRGB.exit ] ; 2 uses
  %i.df = uitofp nneg i32 %.019.i to float        ; 3 uses
  %i.dg = fmul reassoc nnan nsz arcp contract afn float %i.df, f0x3D579436 ; 2 uses
  %i.dh = fcmp reassoc nsz arcp contract afn ugt float %i.dg, 5.000000e-01
  %i.di = fmul reassoc nsz arcp contract afn float %i.dd, %i.df
  %i.dj = fmul reassoc nnan nsz arcp contract afn float %i.df, f0x3C8158EC
  %reass.add = fadd reassoc nnan nsz arcp contract afn float %i.dj, f0x3F333334
  %reass.mul = fmul reassoc nsz arcp contract afn float %reass.add, %..0.i.i
  %i.dk = select reassoc nsz arcp contract afn i1 %i.dh, float %reass.mul, float %i.di
  %i.dl = fmul reassoc nsz arcp contract afn float %i.dk, f0x3DA98A54
  %i.dm = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.dl, float f0x3F5510A2)
  %i.dn = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dp = fmul reassoc nsz arcp contract afn <2 x float> %i.y, %i.do
  %i.dq = fmul reassoc nsz arcp contract afn <2 x float> %i.do, %i.de
  %i.dr = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dp)
  %i.ds = fadd reassoc nsz arcp contract afn <2 x float> %i.dr, <float f0xBFB2C28D, float f0xBFB9C753>
  %i.dt = fdiv reassoc nsz arcp contract afn <2 x float> %i.dq, %i.ds ; 3 uses
  %i.du = extractelement <2 x float> %i.dt, i64 0 ; 2 uses
  %i.dv = fmul reassoc nsz arcp contract afn float %i.du, f0xBE1A9505
  %i.dw = extractelement <2 x float> %i.dt, i64 1 ; 2 uses
  %i.dx = fmul reassoc nsz arcp contract afn float %i.dw, f0xBE1EE8D5
  %i.dy = fadd reassoc nsz arcp contract afn float %i.dv, f0xBC0A2B16
  %i.dz = fadd reassoc nsz arcp contract afn float %i.dy, %i.dx
  %i.ea = fmul reassoc nsz arcp contract afn float %i.du, f0x3F70B489
  %i.eb = fadd reassoc nsz arcp contract afn float %i.dw, f0xBCD1FB74
  %i.ec = fadd reassoc nsz arcp contract afn float %i.eb, %i.ea ; 5 uses
  %i.ed = fcmp reassoc nsz arcp contract afn ult float %i.ec, 0.000000e+00
  %i.ee = fcmp reassoc nsz arcp contract afn olt float %i.ec, f0x00800000
  %i.ef = select reassoc nsz arcp contract afn i1 %i.ee, float f0x00800000, float %i.ec
  %i.eg = fcmp reassoc nsz arcp contract afn ogt float %i.ec, f0x80800000
  %i.eh = select reassoc nsz arcp contract afn i1 %i.eg, float f0x80800000, float %i.ec
  %i.ei = select reassoc nsz arcp contract afn i1 %i.ed, float %i.eh, float %i.ef ; 2 uses
  %i.ej = fdiv reassoc nsz arcp contract afn float %i.dz, %i.ei ; 4 uses
  %i.ek = fcmp reassoc nsz arcp contract afn oeq float %i.ej, 0.000000e+00
  br i1 %i.ek, label %dt_UCS_JCH_to_XYZ.exit.i, label %bb.l

bb.l:                                             ; preds = %dt_UCS_JCH_to_xyY.exit.i.i
  %i.el = fmul reassoc nsz arcp contract afn <2 x float> %i.dt, <float f0x3E2B2F00, float f0x3E10B0E5> ; 2 uses
  %i.em = extractelement <2 x float> %i.el, i64 0
  %i.en = fadd reassoc nsz arcp contract afn float %i.em, f0xBC0352A9
  %i.eo = extractelement <2 x float> %i.el, i64 1
  %i.ep = fadd reassoc nsz arcp contract afn float %i.en, %i.eo
  %i.eq = fdiv reassoc nsz arcp contract afn float %i.ep, %i.ei ; 2 uses
  %i.er = fmul reassoc nsz arcp contract afn float %i.eq, f0x3EA88D83
  %i.es = fdiv reassoc nsz arcp contract afn float %i.er, %i.ej
  %i.et = fadd reassoc nsz arcp contract afn float %i.eq, %i.ej
  %i.eu = fmul reassoc nsz arcp contract afn float %i.et, f0x3EA88D83
  %i.ev = fsub reassoc nsz arcp contract afn float f0x3EA88D83, %i.eu
  %i.ew = fdiv reassoc nsz arcp contract afn float %i.ev, %i.ej
  br label %dt_UCS_JCH_to_XYZ.exit.i

dt_UCS_JCH_to_XYZ.exit.i:                         ; preds = %bb.l, %dt_UCS_JCH_to_xyY.exit.i.i
  %.sink9.i.i = phi float [ %i.es, %bb.l ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i.i ] ; 3 uses
  %.sink.i.i = phi float [ f0x3EA88D83, %bb.l ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i.i ] ; 3 uses
  %i.ex = phi reassoc nsz arcp contract afn float [ %i.ew, %bb.l ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i.i ] ; 3 uses
  %i.ey = fmul reassoc nsz arcp contract afn float %.sink9.i.i, f0x404F639A
  %i.ez = fmul reassoc nnan nsz arcp contract afn float %.sink.i.i, f0x3FC4C0F4
  %i.fa = fsub reassoc nsz arcp contract afn float %i.ey, %i.ez
  %i.fb = fmul reassoc nsz arcp contract afn float %i.ex, f0xBEFF3F82
  %i.fc = fadd reassoc nsz arcp contract afn float %i.fa, %i.fb ; 3 uses
  %i.fd = fmul reassoc nsz arcp contract afn float %.sink9.i.i, f0x3F7821D1
  %i.fe = fmul reassoc nnan nsz arcp contract afn float %.sink.i.i, f0x3FF0211F
  %i.ff = fsub reassoc nsz arcp contract afn float %i.fe, %i.fd
  %i.fg = fmul reassoc nsz arcp contract afn float %i.ex, 4.155600e-02
  %i.fh = fadd reassoc nsz arcp contract afn float %i.ff, %i.fg ; 3 uses
  %i.fi = fmul reassoc nsz arcp contract afn float %.sink9.i.i, 5.564340e-02
  %i.fj = fmul reassoc nnan nsz arcp contract afn float %.sink.i.i, f0x3E50EC2A
  %i.fk = fsub reassoc nsz arcp contract afn float %i.fi, %i.fj
  %i.fl = fmul reassoc nsz arcp contract afn float %i.ex, f0x3F875328
  %i.fm = fadd reassoc nsz arcp contract afn float %i.fk, %i.fl ; 3 uses
  %i.fn = fcmp reassoc nsz arcp contract afn ugt float %i.fc, 3.130800e-03
  br i1 %i.fn, label %bb.n, label %bb.m

bb.m:                                             ; preds = %dt_UCS_JCH_to_XYZ.exit.i
  %i.fo = fmul reassoc nnan nsz arcp contract afn float %i.fc, 1.292000e+01
  br label %bb.o

bb.n:                                             ; preds = %dt_UCS_JCH_to_XYZ.exit.i
  %i.fp = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.fc, float f0x3ED55555)
  %i.fq = fmul reassoc nsz arcp contract afn float %i.fp, 1.055000e+00
  %i.fr = fadd reassoc nsz arcp contract afn float %i.fq, -5.500000e-02
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.fs = phi reassoc nsz arcp contract afn float [ %i.fo, %bb.m ], [ %i.fr, %bb.n ] ; 3 uses
  %i.ft = fcmp reassoc nsz arcp contract afn ugt float %i.fh, 3.130800e-03
  br i1 %i.ft, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fu = fmul reassoc nnan nsz arcp contract afn float %i.fh, 1.292000e+01
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.fv = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.fh, float f0x3ED55555)
  %i.fw = fmul reassoc nsz arcp contract afn float %i.fv, 1.055000e+00
  %i.fx = fadd reassoc nsz arcp contract afn float %i.fw, -5.500000e-02
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.fy = phi reassoc nsz arcp contract afn float [ %i.fu, %bb.p ], [ %i.fx, %bb.q ] ; 3 uses
  %i.fz = fcmp reassoc nsz arcp contract afn ugt float %i.fm, 3.130800e-03
  br i1 %i.fz, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ga = fmul reassoc nnan nsz arcp contract afn float %i.fm, 1.292000e+01
  br label %dt_UCS_JCH_to_sRGB.exit

bb.t:                                             ; preds = %bb.r
  %i.gb = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.fm, float f0x3ED55555)
  %i.gc = fmul reassoc nsz arcp contract afn float %i.gb, 1.055000e+00
  %i.gd = fadd reassoc nsz arcp contract afn float %i.gc, -5.500000e-02
  br label %dt_UCS_JCH_to_sRGB.exit

dt_UCS_JCH_to_sRGB.exit:                          ; preds = %bb.t, %bb.s
  %i.ge = phi reassoc nsz arcp contract afn float [ %i.ga, %bb.s ], [ %i.gd, %bb.t ] ; 3 uses
  %i.gf = fcmp reassoc nsz arcp contract afn ogt float %i.fs, 1.000000e+00
  %i.gg = fcmp reassoc nsz arcp contract afn olt float %i.fs, 0.000000e+00
  %i.gh = select reassoc nsz arcp contract afn i1 %i.gg, float 0.000000e+00, float %i.fs
  %i.gi = select reassoc nsz arcp contract afn i1 %i.gf, float 1.000000e+00, float %i.gh
  %i.gj = fcmp reassoc nsz arcp contract afn ogt float %i.fy, 1.000000e+00
  %i.gk = fcmp reassoc nsz arcp contract afn olt float %i.fy, 0.000000e+00
  %i.gl = select reassoc nsz arcp contract afn i1 %i.gk, float 0.000000e+00, float %i.fy
  %i.gm = select reassoc nsz arcp contract afn i1 %i.gj, float 1.000000e+00, float %i.gl
  %i.gn = fcmp reassoc nsz arcp contract afn ogt float %i.ge, 1.000000e+00
  %i.go = fcmp reassoc nsz arcp contract afn olt float %i.ge, 0.000000e+00
  %i.gp = select reassoc nsz arcp contract afn i1 %i.go, float 0.000000e+00, float %i.ge
  %i.gq = select reassoc nsz arcp contract afn i1 %i.gn, float 1.000000e+00, float %i.gp
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.m, float noundef %i.dg, float noundef %i.gi, float noundef %i.gm, float noundef %i.gq) #25
  %i.gr = add nuw nsw i32 %.019.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.gr, 20
  br i1 %exitcond.not.i, label %_paint_sat_slider.exit, label %dt_UCS_JCH_to_xyY.exit.i.i

_paint_sat_slider.exit:                           ; preds = %dt_UCS_JCH_to_sRGB.exit
  tail call void @gtk_widget_queue_draw(ptr noundef %i.m) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nounwind uwtable
define void @gui_update(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !60  ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95   ; 9 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !144
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = atomicrmw add ptr %i.f, i32 1 seq_cst, align 4 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !146
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !36
  %i.l = fmul reassoc nsz arcp contract afn float %i.k, 7.200000e+02 ; 2 uses
  %i.m = fptosi float %i.l to i32                 ; 2 uses
  %i.n = srem i32 %i.m, 720                       ; 2 uses
  %i.o = trunc nsw i32 %i.n to i16
  %.lhs.trunc.i = add nsw i16 %i.o, 1
  %i.p = srem i16 %.lhs.trunc.i, 720
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.q
  %i.s = load float, ptr %i.r, align 4, !tbaa !32 ; 5 uses
  %i.t = sext i16 %i.p to i64
  %i.u = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !32 ; 5 uses
  %i.w = fsub reassoc nsz arcp contract afn float %i.v, %i.s
  %i.x = fcmp reassoc nsz arcp contract afn ogt float %i.w, 5.000000e-01
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = fadd reassoc nsz arcp contract afn float %i.v, -1.000000e+00
  br label %_ucs_to_ryb_fast.exit

bb.c:                                             ; preds = %bb.a
  %i.z = fsub reassoc nsz arcp contract afn float %i.s, %i.v
  %i.aa = fcmp reassoc nsz arcp contract afn ogt float %i.z, 5.000000e-01
  br i1 %i.aa, label %bb.d, label %_ucs_to_ryb_fast.exit

bb.d:                                             ; preds = %bb.c
  %i.ab = fadd reassoc nsz arcp contract afn float %i.s, -1.000000e+00
  br label %_ucs_to_ryb_fast.exit

_ucs_to_ryb_fast.exit:                            ; preds = %bb.b, %bb.c, %bb.d
  %.014.i.i = phi nsz float [ %i.y, %bb.b ], [ %i.v, %bb.d ], [ %i.v, %bb.c ]
  %.013.i.i = phi nsz float [ %i.s, %bb.b ], [ %i.ab, %bb.d ], [ %i.s, %bb.c ] ; 2 uses
  %i.ac = sitofp reassoc nsz arcp contract afn i32 %i.m to float
  %i.ad = fsub reassoc nsz arcp contract afn float %i.l, %i.ac
  %i.ae = fsub reassoc nsz arcp contract afn float %.014.i.i, %.013.i.i
  %i.af = fmul reassoc nsz arcp contract afn float %i.ae, %i.ad
  %i.ag = fadd reassoc nsz arcp contract afn float %i.af, %.013.i.i ; 3 uses
  %i.ah = fcmp reassoc nsz arcp contract afn olt float %i.ag, 0.000000e+00
  %i.ai = fadd reassoc nsz arcp contract afn float %i.ag, 1.000000e+00
  %.0.i.i = select nsz i1 %i.ah, float %i.ai, float %i.ag
  %i.aj = fmul reassoc nsz arcp contract afn float %.0.i.i, 3.600000e+02
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.i, float noundef %i.aj) #25
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !148
  %i.ap = load float, ptr %i.al, align 4, !tbaa !32
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ap, 7.200000e+02 ; 2 uses
  %i.ar = fptosi float %i.aq to i32               ; 2 uses
  %i.as = srem i32 %i.ar, 720                     ; 2 uses
  %i.at = trunc nsw i32 %i.as to i16
  %.lhs.trunc.i16 = add nsw i16 %i.at, 1
  %i.au = srem i16 %.lhs.trunc.i16, 720
  %i.av = sext i32 %i.as to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !32 ; 5 uses
  %i.ay = sext i16 %i.au to i64
  %i.az = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4, !tbaa !32 ; 5 uses
  %i.bb = fsub reassoc nsz arcp contract afn float %i.ba, %i.ax
  %i.bc = fcmp reassoc nsz arcp contract afn ogt float %i.bb, 5.000000e-01
  br i1 %i.bc, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ucs_to_ryb_fast.exit
  %i.bd = fadd reassoc nsz arcp contract afn float %i.ba, -1.000000e+00
  br label %_ucs_to_ryb_fast.exit20

bb.f:                                             ; preds = %_ucs_to_ryb_fast.exit
  %i.be = fsub reassoc nsz arcp contract afn float %i.ax, %i.ba
  %i.bf = fcmp reassoc nsz arcp contract afn ogt float %i.be, 5.000000e-01
  br i1 %i.bf, label %bb.g, label %_ucs_to_ryb_fast.exit20

end_hunk_2
begin_hunk_3_@get_f:bb.a
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #8

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

declare ptr @dt_gaussian_init(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_gaussian_blur(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_gaussian_free(ptr noundef) local_unnamed_addr #3

declare void @g_mutex_lock(ptr noundef) local_unnamed_addr #3

declare void @g_mutex_unlock(ptr noundef) local_unnamed_addr #3

declare ptr @g_object_ref(ptr noundef) local_unnamed_addr #3

declare i32 @gdk_threads_add_idle(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_auto_detect_button_enable_idle(ptr noundef %0) #1 {
bb.a:
  tail call void @gtk_widget_set_sensitive(ptr noundef %0, i32 noundef 1) #25
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #25
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %0, ptr noundef %i.a) #25
  tail call void @g_object_unref(ptr noundef %0) #25
  ret i32 0
}

declare void @g_object_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @_hue_to_srgb(float noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #22 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = alloca [4 x float], align 16             ; 6 uses
  %i.c = alloca [4 x float], align 16             ; 7 uses
  %i.d = alloca [4 x float], align 16             ; 5 uses
  %i.e = fmul reassoc nsz arcp contract afn float %0, f0x40C90FDB
  %i.f = fadd reassoc nsz arcp contract afn float %i.e, f0xC0490FDB ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store float 6.500000e-01, ptr %i.c, align 16, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.029.i = phi float [ 0.000000e+00, %bb.a ], [ %..0.i, %bb.b ] ; 2 uses
  %.02428.i = phi i32 [ 0, %bb.a ], [ %i.w, %bb.b ]
  %.02527.i = phi float [ 2.000000e+00, %bb.a ], [ %.025..i, %bb.b ] ; 2 uses
  %i.l = fadd reassoc nsz arcp contract afn float %.02527.i, %.029.i
  %i.m = fmul reassoc nsz arcp contract afn float %i.l, 5.000000e-01 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store float 6.500000e-01, ptr %i.a, align 16, !tbaa !32
  store float %i.m, ptr %i.g, align 4, !tbaa !32
  store float %i.f, ptr %i.h, align 8, !tbaa !32
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call fastcc void @dt_UCS_JCH_to_sRGB(ptr noundef %i.a, float noundef f0x3F7CF0E2, ptr noundef %i.b)
  %i.n = load float, ptr %i.b, align 16, !tbaa !32 ; 2 uses
  %i.o = fcmp reassoc nsz arcp contract afn oge float %i.n, 0.000000e+00
  %i.p = load float, ptr %i.j, align 4            ; 2 uses
  %i.q = fcmp reassoc nsz arcp contract afn oge float %i.p, 0.000000e+00
  %or.cond.i = select i1 %i.o, i1 %i.q, i1 false
  %i.r = load float, ptr %i.k, align 8            ; 2 uses
  %i.s = fcmp reassoc nsz arcp contract afn oge float %i.r, 0.000000e+00
  %or.cond5.i = select i1 %or.cond.i, i1 %i.s, i1 false
  %i.t = fcmp reassoc nsz arcp contract afn ole float %i.n, 1.000000e+00
  %or.cond8.i = and i1 %i.t, %or.cond5.i
  %i.u = fcmp reassoc nsz arcp contract afn ole float %i.p, 1.000000e+00
  %or.cond11.i = select i1 %or.cond8.i, i1 %i.u, i1 false
  %i.v = fcmp reassoc nsz arcp contract afn ole float %i.r, 1.000000e+00
  %or.cond14.i = select i1 %or.cond11.i, i1 %i.v, i1 false ; 2 uses
  %.025..i = select nsz i1 %or.cond14.i, float %.02527.i, float %i.m
  %..0.i = select nsz i1 %or.cond14.i, float %i.m, float %.029.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.w = add nuw nsw i32 %.02428.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.w, 16
  br i1 %exitcond.not.i, label %_find_max_chroma.exit, label %bb.b

_find_max_chroma.exit:                            ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.y = fmul reassoc nsz arcp contract afn float %..0.i, 8.500000e-01
  store float %i.y, ptr %i.x, align 4, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float %i.f, ptr %i.z, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store float 0.000000e+00, ptr %i.aa, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call fastcc void @dt_UCS_JCH_to_sRGB(ptr noundef %i.c, float noundef f0x3F7CF0E2, ptr noundef %i.d)
  %i.ab = load float, ptr %i.d, align 16, !tbaa !32 ; 3 uses
  %i.ac = fcmp reassoc nsz arcp contract afn ogt float %i.ab, 1.000000e+00
  %i.ad = fcmp reassoc nsz arcp contract afn olt float %i.ab, 0.000000e+00
  %i.ae = select reassoc nsz arcp contract afn i1 %i.ad, float 0.000000e+00, float %i.ab
  %i.af = select reassoc nsz arcp contract afn i1 %i.ac, float 1.000000e+00, float %i.ae
  store float %i.af, ptr %1, align 4, !tbaa !32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ah = load <2 x float>, ptr %i.ag, align 4, !tbaa !32 ; 3 uses
  %i.ai = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ah, splat (float 1.000000e+00)
  %i.aj = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ah, zeroinitializer
  %i.ak = select <2 x i1> %i.aj, <2 x float> zeroinitializer, <2 x float> %i.ah
  %i.al = select <2 x i1> %i.ai, <2 x float> splat (float 1.000000e+00), <2 x float> %i.ak ; 2 uses
  %i.am = extractelement <2 x float> %i.al, i64 0
  store float %i.am, ptr %2, align 4, !tbaa !32
  %i.an = extractelement <2 x float> %i.al, i64 1
  store float %i.an, ptr %3, align 4, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @dt_UCS_JCH_to_sRGB(ptr nofree noundef nonnull readonly captures(none) %0, float noundef nofpclass(nan inf zero sub nnorm) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %2) unnamed_addr #23 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !32
  %i.b = fmul reassoc nsz arcp contract afn float %i.a, %1 ; 5 uses
  %i.c = fcmp reassoc nsz arcp contract afn ult float %i.b, 0.000000e+00
  br i1 %i.c, label %dt_UCS_JCH_to_xyY.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fcmp reassoc nsz arcp contract afn ugt float %i.b, 2.098850e+00
  br i1 %i.d, label %.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = fcmp reassoc nsz arcp contract afn une float %i.b, 0.000000e+00
  br i1 %i.e, label %.thread.i.i, label %dt_UCS_JCH_to_xyY.exit.i

.thread.i.i:                                      ; preds = %bb.c, %bb.b
  %i.f = phi float [ %i.b, %bb.c ], [ 2.098850e+00, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !32
  %i.i = fmul reassoc nsz arcp contract afn float %i.h, %1
  %i.j = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.f, float f0x3F2703AC)
  %i.k = fmul reassoc nsz arcp contract afn float %i.j, f0x417EED8B
  %i.l = fdiv reassoc nsz arcp contract afn float %i.i, %i.k
  %i.m = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.l, float f0x3F5510A2)
  br label %dt_UCS_JCH_to_xyY.exit.i

dt_UCS_JCH_to_xyY.exit.i:                         ; preds = %.thread.i.i, %bb.c, %bb.a
  %i.n = phi float [ %i.f, %.thread.i.i ], [ %i.b, %bb.c ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.o = phi reassoc nsz arcp contract afn float [ %i.m, %.thread.i.i ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !32
  %sincos.i.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.q) ; 2 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1
  %i.r = insertelement <2 x float> poison, float %cos.i.i, i64 0
  %i.s = insertelement <2 x float> %i.r, float %sin.i.i, i64 1
  %i.t = insertelement <2 x float> poison, float %i.o, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fmul reassoc nsz arcp contract afn <2 x float> %i.s, %i.u ; 2 uses
  %i.w = fmul reassoc nsz arcp contract afn <2 x float> %i.v, <float f0x40985229, float f0x40204F91>
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.y = fmul reassoc nsz arcp contract afn <2 x float> %i.v, <float f0xC0A13362, float f0x4037EFD4> ; 2 uses
  %i.z = fsub reassoc nsz arcp contract afn <2 x float> %i.y, %i.x
  %i.aa = fadd reassoc nsz arcp contract afn <2 x float> %i.y, %i.x
  %i.ab = shufflevector <2 x float> %i.z, <2 x float> %i.aa, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ac = fmul reassoc nsz arcp contract afn <2 x float> %i.ab, <float f0xBFBEFF8B, float f0xBFC32F7A>
  %i.ad = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ab)
  %i.ae = fadd reassoc nsz arcp contract afn <2 x float> %i.ad, <float f0xBFB2C28D, float f0xBFB9C753>
  %i.af = fdiv reassoc nsz arcp contract afn <2 x float> %i.ac, %i.ae ; 3 uses
  %i.ag = extractelement <2 x float> %i.af, i64 0 ; 2 uses
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, f0xBE1A9505
  %i.ai = extractelement <2 x float> %i.af, i64 1 ; 2 uses
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ai, f0xBE1EE8D5
  %i.ak = fadd reassoc nsz arcp contract afn float %i.ah, f0xBC0A2B16
  %i.al = fadd reassoc nsz arcp contract afn float %i.ak, %i.aj
  %i.am = fmul reassoc nsz arcp contract afn float %i.ag, f0x3F70B489
  %i.an = fadd reassoc nsz arcp contract afn float %i.ai, f0xBCD1FB74
  %i.ao = fadd reassoc nsz arcp contract afn float %i.an, %i.am ; 5 uses
  %i.ap = fcmp reassoc nsz arcp contract afn ult float %i.ao, 0.000000e+00
  %i.aq = fcmp reassoc nsz arcp contract afn olt float %i.ao, f0x00800000
  %i.ar = select reassoc nsz arcp contract afn i1 %i.aq, float f0x00800000, float %i.ao
  %i.as = fcmp reassoc nsz arcp contract afn ogt float %i.ao, f0x80800000
  %i.at = select reassoc nsz arcp contract afn i1 %i.as, float f0x80800000, float %i.ao
  %i.au = select reassoc nsz arcp contract afn i1 %i.ap, float %i.at, float %i.ar ; 2 uses
  %i.av = fdiv reassoc nsz arcp contract afn float %i.al, %i.au ; 4 uses
  %i.aw = fcmp reassoc nsz arcp contract afn oeq float %i.av, 0.000000e+00
  br i1 %i.aw, label %dt_UCS_JCH_to_XYZ.exit, label %bb.d

bb.d:                                             ; preds = %dt_UCS_JCH_to_xyY.exit.i
  %i.ax = fmul reassoc nsz arcp contract afn float %i.n, f0x3F8FE801
  %i.ay = fsub reassoc nsz arcp contract afn float f0x4006541D, %i.n
  %i.az = fdiv reassoc nsz arcp contract afn float %i.ax, %i.ay
  %i.ba = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.az, float f0x3FCAA4B8) ; 3 uses
  %i.bb = fmul reassoc nsz arcp contract afn <2 x float> %i.af, <float f0x3E2B2F00, float f0x3E10B0E5> ; 2 uses
  %i.bc = extractelement <2 x float> %i.bb, i64 0
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, f0xBC0352A9
  %i.be = extractelement <2 x float> %i.bb, i64 1
  %i.bf = fadd reassoc nsz arcp contract afn float %i.bd, %i.be
  %i.bg = fdiv reassoc nsz arcp contract afn float %i.bf, %i.au ; 2 uses
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bg, %i.ba
  %i.bi = fdiv reassoc nsz arcp contract afn float %i.bh, %i.av
  %i.bj = fadd reassoc nsz arcp contract afn float %i.bg, %i.av
  %i.bk = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bj
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bk, %i.ba
  %i.bm = fdiv reassoc nsz arcp contract afn float %i.bl, %i.av
  br label %dt_UCS_JCH_to_XYZ.exit

dt_UCS_JCH_to_XYZ.exit:                           ; preds = %dt_UCS_JCH_to_xyY.exit.i, %bb.d
  %.sink9.i = phi float [ %i.bi, %bb.d ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i ]
  %.sink.i = phi float [ %i.ba, %bb.d ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i ]
  %i.bn = phi reassoc nsz arcp contract afn float [ %i.bm, %bb.d ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i ] ; 4 uses
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, f0xBEFF3F82
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bn, 4.155600e-02
  %i.bq = fmul reassoc nsz arcp contract afn float %i.bn, f0x3F875328
  %i.br = insertelement <4 x float> poison, float %.sink9.i, i64 0
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bt = fmul reassoc nsz arcp contract afn <4 x float> %i.bs, <float f0x404F639A, float f0xBF7821D1, float 5.564340e-02, float 1.000000e+00>
  %i.bu = insertelement <4 x float> poison, float %.sink.i, i64 0
  %i.bv = shufflevector <4 x float> %i.bu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bw = fmul reassoc nsz arcp contract afn <4 x float> %i.bv, <float f0xBFC4C0F4, float f0x3FF0211F, float f0xBE50EC2A, float 1.000000e+00>
  %i.bx = fadd reassoc nsz arcp contract afn <4 x float> %i.bw, %i.bt ; 4 uses
  %i.by = extractelement <4 x float> %i.bx, i64 0
  %i.bz = fadd reassoc nsz arcp contract afn float %i.by, %i.bo ; 3 uses
  %i.ca = extractelement <4 x float> %i.bx, i64 1
  %i.cb = fadd reassoc nsz arcp contract afn float %i.ca, %i.bp ; 3 uses
  %i.cc = extractelement <4 x float> %i.bx, i64 2
  %i.cd = fadd reassoc nsz arcp contract afn float %i.cc, %i.bq ; 3 uses
  %i.ce = extractelement <4 x float> %i.bx, i64 3
  %i.cf = fadd reassoc nsz arcp contract afn float %i.ce, %i.bn
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, 0.000000e+00 ; 2 uses
  %i.ch = fcmp reassoc nsz arcp contract afn ugt float %i.bz, 3.130800e-03
  br i1 %i.ch, label %bb.f, label %bb.e

bb.e:                                             ; preds = %dt_UCS_JCH_to_XYZ.exit
  %i.ci = fmul reassoc nnan nsz arcp contract afn float %i.bz, 1.292000e+01
  br label %bb.g

bb.f:                                             ; preds = %dt_UCS_JCH_to_XYZ.exit
  %i.cj = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bz, float f0x3ED55555)
  %i.ck = fmul reassoc nsz arcp contract afn float %i.cj, 1.055000e+00
  %i.cl = fadd reassoc nsz arcp contract afn float %i.ck, -5.500000e-02
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cm = phi reassoc nsz arcp contract afn float [ %i.ci, %bb.e ], [ %i.cl, %bb.f ]
  store float %i.cm, ptr %2, align 4, !tbaa !32
  %i.cn = fcmp reassoc nsz arcp contract afn ugt float %i.cb, 3.130800e-03
  br i1 %i.cn, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.co = fmul reassoc nnan nsz arcp contract afn float %i.cb, 1.292000e+01
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cp = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cb, float f0x3ED55555)
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cp, 1.055000e+00
  %i.cr = fadd reassoc nsz arcp contract afn float %i.cq, -5.500000e-02
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cs = phi reassoc nsz arcp contract afn float [ %i.co, %bb.h ], [ %i.cr, %bb.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.cs, ptr %i.ct, align 4, !tbaa !32
  %i.cu = fcmp reassoc nsz arcp contract afn ugt float %i.cd, 3.130800e-03
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cv = fmul reassoc nnan nsz arcp contract afn float %i.cd, 1.292000e+01
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.cw = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cd, float f0x3ED55555)
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cw, 1.055000e+00
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cx, -5.500000e-02
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cz = phi reassoc nsz arcp contract afn float [ %i.cv, %bb.k ], [ %i.cy, %bb.l ]
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.cz, ptr %i.da, align 4, !tbaa !32
  %i.db = fcmp reassoc nsz arcp contract afn ugt float %i.cg, 3.130800e-03
  br i1 %i.db, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dc = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cg, float f0x3ED55555)
  %i.dd = fmul reassoc nsz arcp contract afn float %i.dc, 1.055000e+00
  %i.de = fadd reassoc nsz arcp contract afn float %i.dd, -5.500000e-02
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.df = phi reassoc nsz arcp contract afn float [ %i.de, %bb.n ], [ 0.000000e+00, %bb.m ]
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %i.df, ptr %i.dg, align 4, !tbaa !32
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #8

declare void @dt_lib_histogram_get_harmony(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_lib_histogram_get_sector_angles(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_visible(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_paint_hue_slider(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %_ryb_to_ucs_fast.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ryb_to_ucs_fast.exit
  %.05 = phi i32 [ 0, %bb.a ], [ %i.ag, %_ryb_to_ucs_fast.exit ] ; 2 uses
  %i.d = uitofp nneg i32 %.05 to float            ; 2 uses
  %i.e = fmul reassoc nnan nsz arcp contract afn float %i.d, f0x3D579436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.f = fmul reassoc nnan nsz arcp contract afn float %i.d, f0x42179436 ; 2 uses
  %i.g = fptosi float %i.f to i32                 ; 2 uses
  %i.h = srem i32 %i.g, 720                       ; 2 uses
  %i.i = trunc nsw i32 %i.h to i16
  %.lhs.trunc.i = add nsw i16 %i.i, 1
  %i.j = srem i16 %.lhs.trunc.i, 720
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr inbounds [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %i.k
  %i.m = load float, ptr %i.l, align 4, !tbaa !32 ; 5 uses
  %i.n = sext i16 %i.j to i64
  %i.o = getelementptr inbounds [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %i.n
  %i.p = load float, ptr %i.o, align 4, !tbaa !32 ; 5 uses
  %i.q = fsub reassoc nsz arcp contract afn float %i.p, %i.m
  %i.r = fcmp reassoc nsz arcp contract afn ogt float %i.q, 5.000000e-01
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = fadd reassoc nsz arcp contract afn float %i.p, -1.000000e+00
  br label %_ryb_to_ucs_fast.exit

bb.e:                                             ; preds = %bb.c
  %i.t = fsub reassoc nsz arcp contract afn float %i.m, %i.p
  %i.u = fcmp reassoc nsz arcp contract afn ogt float %i.t, 5.000000e-01
  br i1 %i.u, label %bb.f, label %_ryb_to_ucs_fast.exit

bb.f:                                             ; preds = %bb.e
  %i.v = fadd reassoc nsz arcp contract afn float %i.m, -1.000000e+00
  br label %_ryb_to_ucs_fast.exit

_ryb_to_ucs_fast.exit:                            ; preds = %bb.d, %bb.e, %bb.f
  %.014.i.i = phi nsz float [ %i.s, %bb.d ], [ %i.p, %bb.f ], [ %i.p, %bb.e ]
  %.013.i.i = phi nsz float [ %i.m, %bb.d ], [ %i.v, %bb.f ], [ %i.m, %bb.e ] ; 2 uses
  %i.w = sitofp reassoc nsz arcp contract afn i32 %i.g to float
  %i.x = fsub reassoc nnan nsz arcp contract afn float %i.f, %i.w
  %i.y = fsub reassoc nsz arcp contract afn float %.014.i.i, %.013.i.i
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, %i.x
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, %.013.i.i ; 3 uses
  %i.ab = fcmp reassoc nsz arcp contract afn olt float %i.aa, 0.000000e+00
  %i.ac = fadd reassoc nsz arcp contract afn float %i.aa, 1.000000e+00
  %.0.i.i = select nsz i1 %i.ab, float %i.ac, float %i.aa
  call fastcc void @_hue_to_srgb(float noundef %.0.i.i, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c)
  %i.ad = load float, ptr %i.a, align 4, !tbaa !32
  %i.ae = load float, ptr %i.b, align 4, !tbaa !32
  %i.af = load float, ptr %i.c, align 4, !tbaa !32
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %0, float noundef %i.e, float noundef %i.ad, float noundef %i.ae, float noundef %i.af) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.ag = add nuw nsw i32 %.05, 1                 ; 2 uses
end_hunk_3
