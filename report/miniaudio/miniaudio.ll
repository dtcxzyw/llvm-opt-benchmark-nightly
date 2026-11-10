Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 278
begin_hunk_0_@ma_pcm_f32_to_s16:bb.a
  %i.cq = select i1 %i.cp, float 1.000000e+00, float %i.cd
  %i.cr = fmul float %i.cq, 3.276700e+04
  %i.cs = fptosi float %i.cr to i16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ct = phi i16 [ %i.cs, %bb.e ], [ -32767, %bb.d ]
  %i.cu = fcmp olt float %i.cf, -1.000000e+00
  br i1 %i.cu, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cv = fcmp ogt float %i.cf, 1.000000e+00
  %i.cw = select i1 %i.cv, float 1.000000e+00, float %i.cf
  %i.cx = fmul float %i.cw, 3.276700e+04
  %i.cy = fptosi float %i.cx to i16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cz = phi i16 [ %i.cy, %bb.g ], [ -32767, %bb.f ]
  %i.da = fcmp olt float %i.ch, -1.000000e+00
  br i1 %i.da, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.db = fcmp ogt float %i.ch, 1.000000e+00
  %i.dc = select i1 %i.db, float 1.000000e+00, float %i.ch
  %i.dd = fmul float %i.dc, 3.276700e+04
  %i.de = fptosi float %i.dd to i16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.df = phi i16 [ %i.de, %bb.i ], [ -32767, %bb.h ]
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.081.i1059
  store i16 %i.cn, ptr %i.dg, align 2, !tbaa !122
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.br
  store i16 %i.ct, ptr %i.dh, align 2, !tbaa !122
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bu
  store i16 %i.cz, ptr %i.di, align 2, !tbaa !122
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bx
  store i16 %i.df, ptr %i.dj, align 2, !tbaa !122
  %i.dk = add nuw i64 %.081.i1059, 4              ; 2 uses
  %i.dl = add nuw nsw i64 %.080.i1160, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.dl, %i.e
  br i1 %exitcond.not, label %.preheader57, label %.lr.ph, !llvm.loop !1577

.lr.ph63:                                         ; preds = %.preheader57, %bb.n
  %.1.i1262 = phi i64 [ %i.eq, %bb.n ], [ %.081.i10.lcssa, %.preheader57 ] ; 3 uses
  %i.dm = phi i32 [ %i.eh, %bb.n ], [ %g_maLCG.promoted61, %.preheader57 ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.1.i1262
  %i.do = load float, ptr %i.dn, align 4, !tbaa !349
  switch i32 %3, label %ma_dither_f32.exit21 [
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.k:                                             ; preds = %.lr.ph63
  %i.dp = mul i32 %i.dm, 48271
  %i.dq = urem i32 %i.dp, 2147483647              ; 3 uses
  store i32 %i.dq, ptr @g_maLCG.0, align 4, !tbaa !156
  %i.dr = uitofp nneg i32 %i.dq to double
  %i.ds = fdiv double %i.dr, f0x41DFFFFFFFC00000
  %i.dt = fptrunc double %i.ds to float
  %i.du = tail call float @llvm.fmuladd.f32(float %i.dt, float f0x38800080, float f0xB8000000)
  br label %ma_dither_f32.exit21

bb.l:                                             ; preds = %.lr.ph63
  %i.dv = mul i32 %i.dm, 48271
  %i.dw = urem i32 %i.dv, 2147483647              ; 2 uses
  %i.dx = uitofp nneg i32 %i.dw to double
  %i.dy = mul i32 %i.dw, 48271
  %i.dz = urem i32 %i.dy, 2147483647              ; 3 uses
  store i32 %i.dz, ptr @g_maLCG.0, align 4, !tbaa !156
  %i.ea = uitofp nneg i32 %i.dz to double
  %i.eb = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.ec = insertelement <2 x double> %i.eb, double %i.ea, i64 1
  %i.ed = fdiv <2 x double> %i.ec, splat (double f0x41DFFFFFFFC00000)
  %i.ee = fptrunc <2 x double> %i.ed to <2 x float>
  %i.ef = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> <float f0x38000000, float f0x38000100>, <2 x float> <float f0xB8000000, float 0.000000e+00>)
  %i.eg = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ef)
  br label %ma_dither_f32.exit21

ma_dither_f32.exit21:                             ; preds = %.lr.ph63, %bb.k, %bb.l
  %i.eh = phi i32 [ %i.dq, %bb.k ], [ %i.dz, %bb.l ], [ %i.dm, %.lr.ph63 ]
  %.0.i20 = phi float [ %i.du, %bb.k ], [ %i.eg, %bb.l ], [ 0.000000e+00, %.lr.ph63 ]
  %i.ei = fadd float %i.do, %.0.i20               ; 3 uses
  %i.ej = fcmp olt float %i.ei, -1.000000e+00
  br i1 %i.ej, label %bb.n, label %bb.m

bb.m:                                             ; preds = %ma_dither_f32.exit21
  %i.ek = fcmp ogt float %i.ei, 1.000000e+00
  %i.el = select i1 %i.ek, float 1.000000e+00, float %i.ei
  %i.em = fmul float %i.el, 3.276700e+04
  %i.en = fptosi float %i.em to i16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %ma_dither_f32.exit21
  %i.eo = phi i16 [ %i.en, %bb.m ], [ -32767, %ma_dither_f32.exit21 ]
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.1.i1262
  store i16 %i.eo, ptr %i.ep, align 2, !tbaa !122
  %i.eq = add nuw i64 %.1.i1262, 1                ; 2 uses
  %exitcond75.not = icmp eq i64 %i.eq, %2
  br i1 %exitcond75.not, label %ma_pcm_f32_to_s16__sse2.exit, label %.lr.ph63, !llvm.loop !1578

bb.o:                                             ; preds = %bb.a
  %i.er = lshr i64 %2, 3                          ; 2 uses
  %.not72 = icmp eq i64 %i.er, 0
  br i1 %.not72, label %.preheader, label %.lr.ph67

.preheader:                                       ; preds = %bb.r, %bb.o
  %g_maLCG.promoted69 = phi i32 [ %g_maLCG.promoted64, %bb.o ], [ %i.kg, %bb.r ]
  %.081.i.lcssa = phi i64 [ 0, %bb.o ], [ %i.kt, %bb.r ] ; 2 uses
  %i.es = icmp ult i64 %.081.i.lcssa, %2
  br i1 %i.es, label %.lr.ph71, label %ma_pcm_f32_to_s16__sse2.exit

.lr.ph67:                                         ; preds = %bb.o, %bb.r
  %.080.i66 = phi i64 [ %i.ku, %bb.r ], [ 0, %bb.o ]
  %.081.i65 = phi i64 [ %i.kt, %bb.r ], [ 0, %bb.o ] ; 3 uses
  %i.et = phi i32 [ %i.kg, %bb.r ], [ %g_maLCG.promoted64, %bb.o ] ; 3 uses
  switch i32 %3, label %bb.q [
    i32 0, label %bb.r
    i32 1, label %bb.p
  ]

bb.p:                                             ; preds = %.lr.ph67
  %i.eu = mul i32 %i.et, 48271
  %i.ev = urem i32 %i.eu, 2147483647              ; 2 uses
  %i.ew = uitofp nneg i32 %i.ev to double
  %i.ex = mul i32 %i.ev, 48271
  %i.ey = urem i32 %i.ex, 2147483647              ; 2 uses
  %i.ez = uitofp nneg i32 %i.ey to double
  %i.fa = mul i32 %i.ey, 48271
  %i.fb = urem i32 %i.fa, 2147483647              ; 2 uses
  %i.fc = uitofp nneg i32 %i.fb to double
  %i.fd = mul i32 %i.fb, 48271
  %i.fe = urem i32 %i.fd, 2147483647              ; 2 uses
  %i.ff = uitofp nneg i32 %i.fe to double
  %i.fg = insertelement <4 x double> poison, double %i.ff, i64 0
  %i.fh = insertelement <4 x double> %i.fg, double %i.fc, i64 1
  %i.fi = insertelement <4 x double> %i.fh, double %i.ez, i64 2
  %i.fj = insertelement <4 x double> %i.fi, double %i.ew, i64 3
  %i.fk = fdiv <4 x double> %i.fj, splat (double f0x41DFFFFFFFC00000)
  %i.fl = fptrunc <4 x double> %i.fk to <4 x float>
  %i.fm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fl, <4 x float> splat (float f0x38800080), <4 x float> splat (float f0xB8000000))
  %i.fn = mul i32 %i.fe, 48271
  %i.fo = urem i32 %i.fn, 2147483647              ; 2 uses
  %i.fp = uitofp nneg i32 %i.fo to double
  %i.fq = mul i32 %i.fo, 48271
  %i.fr = urem i32 %i.fq, 2147483647              ; 2 uses
  %i.fs = uitofp nneg i32 %i.fr to double
  %i.ft = mul i32 %i.fr, 48271
  %i.fu = urem i32 %i.ft, 2147483647              ; 2 uses
  %i.fv = uitofp nneg i32 %i.fu to double
  %i.fw = mul i32 %i.fu, 48271
  %i.fx = urem i32 %i.fw, 2147483647              ; 3 uses
  store i32 %i.fx, ptr @g_maLCG.0, align 4, !tbaa !156
  %i.fy = uitofp nneg i32 %i.fx to double
  %i.fz = insertelement <4 x double> poison, double %i.fy, i64 0
  %i.ga = insertelement <4 x double> %i.fz, double %i.fv, i64 1
  %i.gb = insertelement <4 x double> %i.ga, double %i.fs, i64 2
  %i.gc = insertelement <4 x double> %i.gb, double %i.fp, i64 3
  %i.gd = fdiv <4 x double> %i.gc, splat (double f0x41DFFFFFFFC00000)
  %i.ge = fptrunc <4 x double> %i.gd to <4 x float>
  %i.gf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ge, <4 x float> splat (float f0x38800080), <4 x float> splat (float f0xB8000000))
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph67
  %i.gg = mul i32 %i.et, 48271
  %i.gh = urem i32 %i.gg, 2147483647              ; 2 uses
  %i.gi = uitofp nneg i32 %i.gh to double
  %i.gj = mul i32 %i.gh, 48271
  %i.gk = urem i32 %i.gj, 2147483647              ; 2 uses
  %i.gl = uitofp nneg i32 %i.gk to double
  %i.gm = insertelement <2 x double> poison, double %i.gi, i64 0
  %i.gn = insertelement <2 x double> %i.gm, double %i.gl, i64 1
  %i.go = fdiv <2 x double> %i.gn, splat (double f0x41DFFFFFFFC00000)
  %i.gp = fptrunc <2 x double> %i.go to <2 x float>
  %i.gq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gp, <2 x float> <float f0x38000000, float f0x38000100>, <2 x float> <float f0xB8000000, float 0.000000e+00>)
  %i.gr = mul i32 %i.gk, 48271
  %i.gs = urem i32 %i.gr, 2147483647              ; 2 uses
  %i.gt = uitofp nneg i32 %i.gs to double
  %i.gu = mul i32 %i.gs, 48271
  %i.gv = urem i32 %i.gu, 2147483647              ; 2 uses
  %i.gw = uitofp nneg i32 %i.gv to double
  %i.gx = insertelement <2 x double> poison, double %i.gt, i64 0
  %i.gy = insertelement <2 x double> %i.gx, double %i.gw, i64 1
  %i.gz = fdiv <2 x double> %i.gy, splat (double f0x41DFFFFFFFC00000)
  %i.ha = fptrunc <2 x double> %i.gz to <2 x float>
  %i.hb = mul i32 %i.gv, 48271
  %i.hc = urem i32 %i.hb, 2147483647              ; 2 uses
  %i.hd = uitofp nneg i32 %i.hc to double
  %i.he = mul i32 %i.hc, 48271
  %i.hf = urem i32 %i.he, 2147483647              ; 2 uses
  %i.hg = uitofp nneg i32 %i.hf to double
  %i.hh = mul i32 %i.hf, 48271
  %i.hi = urem i32 %i.hh, 2147483647              ; 2 uses
  %i.hj = uitofp nneg i32 %i.hi to double
  %i.hk = insertelement <2 x double> poison, double %i.hj, i64 0
  %i.hl = insertelement <2 x double> %i.hk, double %i.hd, i64 1
  %i.hm = fdiv <2 x double> %i.hl, splat (double f0x41DFFFFFFFC00000)
  %i.hn = fptrunc <2 x double> %i.hm to <2 x float>
  %i.ho = shufflevector <2 x float> %i.ha, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %4 = shufflevector <4 x float> %i.ho, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 poison, i32 poison, i32 0, i32 7>
  %i.hp = shufflevector <2 x float> %i.hn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hq = shufflevector <4 x float> %i.hp, <4 x float> %4, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hr = shufflevector <2 x float> %i.gq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0> ; 2 uses
  %i.hs = shufflevector <4 x float> <float f0xB8000000, float f0xB8000000, float f0xB8000000, float poison>, <4 x float> %i.hr, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ht = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hq, <4 x float> <float f0x38000000, float f0x38000000, float f0x38000000, float 0.000000e+00>, <4 x float> %i.hs)
  %i.hu = mul i32 %i.hi, 48271
  %i.hv = urem i32 %i.hu, 2147483647              ; 2 uses
  %i.hw = uitofp nneg i32 %i.hv to double
  %i.hx = insertelement <2 x double> poison, double %i.hw, i64 0
  %i.hy = insertelement <2 x double> %i.hx, double %i.hg, i64 1
  %i.hz = fdiv <2 x double> %i.hy, splat (double f0x41DFFFFFFFC00000)
  %i.ia = fptrunc <2 x double> %i.hz to <2 x float>
  %5 = shufflevector <4 x float> %i.ho, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 poison, i32 poison, i32 1, i32 7>
  %i.ib = shufflevector <2 x float> %i.ia, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ic = shufflevector <4 x float> %i.ib, <4 x float> %5, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.id = shufflevector <4 x float> %i.hr, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 1>
  %i.ie = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ic, <4 x float> <float f0x38000100, float f0x38000100, float f0x38000100, float 0.000000e+00>, <4 x float> %i.id)
  %i.if = fadd <4 x float> %i.ht, %i.ie
  %i.ig = mul i32 %i.hv, 48271
  %i.ih = urem i32 %i.ig, 2147483647              ; 2 uses
  %i.ii = uitofp nneg i32 %i.ih to double
  %i.ij = mul i32 %i.ih, 48271
  %i.ik = urem i32 %i.ij, 2147483647              ; 2 uses
  %i.il = uitofp nneg i32 %i.ik to double
  %i.im = insertelement <2 x double> poison, double %i.ii, i64 0
  %i.in = insertelement <2 x double> %i.im, double %i.il, i64 1
  %i.io = fdiv <2 x double> %i.in, splat (double f0x41DFFFFFFFC00000)
  %i.ip = fptrunc <2 x double> %i.io to <2 x float>
  %i.iq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ip, <2 x float> <float f0x38000000, float f0x38000100>, <2 x float> <float f0xB8000000, float 0.000000e+00>)
  %i.ir = mul i32 %i.ik, 48271
  %i.is = urem i32 %i.ir, 2147483647              ; 2 uses
  %i.it = uitofp nneg i32 %i.is to double
  %i.iu = mul i32 %i.is, 48271
  %i.iv = urem i32 %i.iu, 2147483647              ; 2 uses
  %i.iw = uitofp nneg i32 %i.iv to double
  %i.ix = insertelement <2 x double> poison, double %i.it, i64 0
  %i.iy = insertelement <2 x double> %i.ix, double %i.iw, i64 1
  %i.iz = fdiv <2 x double> %i.iy, splat (double f0x41DFFFFFFFC00000)
  %i.ja = fptrunc <2 x double> %i.iz to <2 x float>
  %i.jb = mul i32 %i.iv, 48271
  %i.jc = urem i32 %i.jb, 2147483647              ; 2 uses
  %i.jd = uitofp nneg i32 %i.jc to double
  %i.je = mul i32 %i.jc, 48271
  %i.jf = urem i32 %i.je, 2147483647              ; 2 uses
  %i.jg = uitofp nneg i32 %i.jf to double
  %i.jh = mul i32 %i.jf, 48271
  %i.ji = urem i32 %i.jh, 2147483647              ; 2 uses
  %i.jj = uitofp nneg i32 %i.ji to double
  %i.jk = insertelement <2 x double> poison, double %i.jj, i64 0
  %i.jl = insertelement <2 x double> %i.jk, double %i.jd, i64 1
  %i.jm = fdiv <2 x double> %i.jl, splat (double f0x41DFFFFFFFC00000)
  %i.jn = fptrunc <2 x double> %i.jm to <2 x float>
  %i.jo = shufflevector <2 x float> %i.ja, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %6 = shufflevector <4 x float> %i.jo, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 poison, i32 poison, i32 0, i32 7>
  %i.jp = shufflevector <2 x float> %i.jn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jq = shufflevector <4 x float> %i.jp, <4 x float> %6, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.jr = shufflevector <2 x float> %i.iq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0> ; 2 uses
  %i.js = shufflevector <4 x float> <float f0xB8000000, float f0xB8000000, float f0xB8000000, float poison>, <4 x float> %i.jr, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.jt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jq, <4 x float> <float f0x38000000, float f0x38000000, float f0x38000000, float 0.000000e+00>, <4 x float> %i.js)
  %i.ju = mul i32 %i.ji, 48271
  %i.jv = urem i32 %i.ju, 2147483647              ; 3 uses
  store i32 %i.jv, ptr @g_maLCG.0, align 4, !tbaa !156
  %i.jw = uitofp nneg i32 %i.jv to double
  %i.jx = insertelement <2 x double> poison, double %i.jw, i64 0
  %i.jy = insertelement <2 x double> %i.jx, double %i.jg, i64 1
  %i.jz = fdiv <2 x double> %i.jy, splat (double f0x41DFFFFFFFC00000)
  %i.ka = fptrunc <2 x double> %i.jz to <2 x float>
  %7 = shufflevector <4 x float> %i.jo, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 poison, i32 poison, i32 1, i32 7>
  %i.kb = shufflevector <2 x float> %i.ka, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.kc = shufflevector <4 x float> %i.kb, <4 x float> %7, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.kd = shufflevector <4 x float> %i.jr, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 1>
  %i.ke = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kc, <4 x float> <float f0x38000100, float f0x38000100, float f0x38000100, float 0.000000e+00>, <4 x float> %i.kd)
  %i.kf = fadd <4 x float> %i.jt, %i.ke
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph67, %bb.q, %bb.p
  %i.kg = phi i32 [ %i.jv, %bb.q ], [ %i.fx, %bb.p ], [ %i.et, %.lr.ph67 ] ; 2 uses
  %.077.i = phi <4 x float> [ %i.if, %bb.q ], [ %i.fm, %bb.p ], [ zeroinitializer, %.lr.ph67 ]
  %.0.i = phi <4 x float> [ %i.kf, %bb.q ], [ %i.gf, %bb.p ], [ zeroinitializer, %.lr.ph67 ]
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.081.i65 ; 2 uses
  %i.ki = load <4 x float>, ptr %i.kh, align 16, !tbaa !119
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kk = load <4 x float>, ptr %i.kj, align 16, !tbaa !119
  %i.kl = fadd <4 x float> %.077.i, %i.ki
  %i.km = fadd <4 x float> %.0.i, %i.kk
  %i.kn = fmul <4 x float> %i.kl, splat (float 3.276700e+04)
  %i.ko = fmul <4 x float> %i.km, splat (float 3.276700e+04)
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.081.i65
  %i.kq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.kn)
  %i.kr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ko)
  %i.ks = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.kq, <4 x i32> %i.kr)
  store <8 x i16> %i.ks, ptr %i.kp, align 16, !tbaa !119, !nontemporal !1581
  %i.kt = add nuw i64 %.081.i65, 8                ; 2 uses
  %i.ku = add nuw nsw i64 %.080.i66, 1            ; 2 uses
  %exitcond76.not = icmp eq i64 %i.ku, %i.er
  br i1 %exitcond76.not, label %.preheader, label %.lr.ph67, !llvm.loop !1579

.lr.ph71:                                         ; preds = %.preheader, %bb.v
  %.1.i70 = phi i64 [ %i.lz, %bb.v ], [ %.081.i.lcssa, %.preheader ] ; 3 uses
  %i.kv = phi i32 [ %i.lq, %bb.v ], [ %g_maLCG.promoted69, %.preheader ] ; 3 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.1.i70
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !349
  switch i32 %3, label %ma_dither_f32.exit23 [
    i32 1, label %bb.s
    i32 2, label %bb.t
  ]

bb.s:                                             ; preds = %.lr.ph71
  %i.ky = mul i32 %i.kv, 48271
  %i.kz = urem i32 %i.ky, 2147483647              ; 3 uses
  store i32 %i.kz, ptr @g_maLCG.0, align 4, !tbaa !156
  %i.la = uitofp nneg i32 %i.kz to double
  %i.lb = fdiv double %i.la, f0x41DFFFFFFFC00000
  %i.lc = fptrunc double %i.lb to float
  %i.ld = tail call float @llvm.fmuladd.f32(float %i.lc, float f0x38800080, float f0xB8000000)
  br label %ma_dither_f32.exit23

bb.t:                                             ; preds = %.lr.ph71
  %i.le = mul i32 %i.kv, 48271
  %i.lf = urem i32 %i.le, 2147483647              ; 2 uses
  %i.lg = uitofp nneg i32 %i.lf to double
  %i.lh = mul i32 %i.lf, 48271
  %i.li = urem i32 %i.lh, 2147483647              ; 3 uses
  store i32 %i.li, ptr @g_maLCG.0, align 4, !tbaa !156
  %i.lj = uitofp nneg i32 %i.li to double
  %i.lk = insertelement <2 x double> poison, double %i.lg, i64 0
  %i.ll = insertelement <2 x double> %i.lk, double %i.lj, i64 1
  %i.lm = fdiv <2 x double> %i.ll, splat (double f0x41DFFFFFFFC00000)
  %i.ln = fptrunc <2 x double> %i.lm to <2 x float>
  %i.lo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ln, <2 x float> <float f0x38000000, float f0x38000100>, <2 x float> <float f0xB8000000, float 0.000000e+00>)
  %i.lp = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.lo)
  br label %ma_dither_f32.exit23

ma_dither_f32.exit23:                             ; preds = %.lr.ph71, %bb.s, %bb.t
  %i.lq = phi i32 [ %i.kz, %bb.s ], [ %i.li, %bb.t ], [ %i.kv, %.lr.ph71 ]
  %.0.i22 = phi float [ %i.ld, %bb.s ], [ %i.lp, %bb.t ], [ 0.000000e+00, %.lr.ph71 ]
  %i.lr = fadd float %i.kx, %.0.i22               ; 3 uses
  %i.ls = fcmp olt float %i.lr, -1.000000e+00
  br i1 %i.ls, label %bb.v, label %bb.u

bb.u:                                             ; preds = %ma_dither_f32.exit23
  %i.lt = fcmp ogt float %i.lr, 1.000000e+00
  %i.lu = select i1 %i.lt, float 1.000000e+00, float %i.lr
  %i.lv = fmul float %i.lu, 3.276700e+04
  %i.lw = fptosi float %i.lv to i16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %ma_dither_f32.exit23
  %i.lx = phi i16 [ %i.lw, %bb.u ], [ -32767, %ma_dither_f32.exit23 ]
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.1.i70
  store i16 %i.lx, ptr %i.ly, align 2, !tbaa !122
  %i.lz = add nuw i64 %.1.i70, 1                  ; 2 uses
  %exitcond77.not = icmp eq i64 %i.lz, %2
  br i1 %exitcond77.not, label %ma_pcm_f32_to_s16__sse2.exit, label %.lr.ph71, !llvm.loop !1580

ma_pcm_f32_to_s16__sse2.exit:                     ; preds = %bb.n, %bb.v, %.preheader57, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_pcm_f32_to_s24(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %ma_pcm_f32_to_s24__reference.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.0.i7 = phi i64 [ %i.r, %bb.c ], [ 0, %bb.a ]  ; 3 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0.i7
  %i.b = load float, ptr %i.a, align 4, !tbaa !349 ; 3 uses
  %i.c = fcmp olt float %i.b, -1.000000e+00
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = fcmp ogt float %i.b, 1.000000e+00
  %i.e = select i1 %i.d, float 1.000000e+00, float %i.b
  %i.f = fmul float %i.e, f0x4AFFFFFE
  %i.g = fptosi float %i.f to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.h = phi i32 [ %i.g, %bb.b ], [ -8388607, %.lr.ph ] ; 3 uses
  %i.i = trunc i32 %i.h to i8
  %i.j = mul i64 %.0.i7, 3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j ; 3 uses
  store i8 %i.i, ptr %i.k, align 1, !tbaa !119
  %i.l = lshr i32 %i.h, 8
  %i.m = trunc i32 %i.l to i8
  %i.n = getelementptr i8, ptr %i.k, i64 1
  store i8 %i.m, ptr %i.n, align 1, !tbaa !119
  %i.o = lshr i32 %i.h, 16
  %i.p = trunc i32 %i.o to i8
  %i.q = getelementptr i8, ptr %i.k, i64 2
  store i8 %i.p, ptr %i.q, align 1, !tbaa !119
  %i.r = add nuw i64 %.0.i7, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %2
  br i1 %exitcond.not, label %ma_pcm_f32_to_s24__reference.exit, label %.lr.ph, !llvm.loop !21

ma_pcm_f32_to_s24__reference.exit:                ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_pcm_f32_to_s32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %ma_pcm_f32_to_s32__reference.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader10, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.a = add i64 %2, -1                           ; 2 uses
  %i.b = and i64 %i.a, 4294967295
  %i.c = icmp eq i64 %i.b, 4294967295
  %i.d = icmp ugt i64 %i.a, 4294967295
  %i.e = or i1 %i.c, %i.d
  br i1 %i.e, label %.lr.ph.preheader10, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %2, 8589934588                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load = load <4 x float>, ptr %i.f, align 4, !tbaa !349 ; 2 uses
  %i.g = fcmp olt <4 x float> %wide.load, splat (float -1.000000e+00)
  %i.h = fpext <4 x float> %wide.load to <4 x double> ; 2 uses
  %i.i = fcmp ogt <4 x double> %i.h, splat (double 1.000000e+00)
  %i.j = select <4 x i1> %i.i, <4 x double> splat (double 1.000000e+00), <4 x double> %i.h
  %i.k = fmul <4 x double> %i.j, splat (double f0x41DFFFFFFFC00000)
  %i.l = fptosi <4 x double> %i.k to <4 x i32>
  %predphi = select <4 x i1> %i.g, <4 x i32> splat (i32 -2147483647), <4 x i32> %i.l
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  store <4 x i32> %predphi, ptr %i.m, align 4, !tbaa !118
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !1582

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %ma_pcm_f32_to_s32__reference.exit, label %.lr.ph.preheader10

.lr.ph.preheader10:                               ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader10, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.ph, %.lr.ph.preheader10 ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.p = load float, ptr %i.o, align 4, !tbaa !349 ; 2 uses
  %i.q = fcmp olt float %i.p, -1.000000e+00
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.r = fpext float %i.p to double               ; 2 uses
  %i.s = fcmp ogt double %i.r, 1.000000e+00
  %i.t = select i1 %i.s, double 1.000000e+00, double %i.r
  %i.u = fmul double %i.t, f0x41DFFFFFFFC00000
  %i.v = fptosi double %i.u to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.w = phi i32 [ %i.v, %bb.b ], [ -2147483647, %.lr.ph ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.w, ptr %i.x, align 4, !tbaa !118
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
end_hunk_0
