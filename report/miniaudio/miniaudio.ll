Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
begin_hunk_0_@ma_pcm_f32_to_s16:bb.a
  %i.e = lshr i64 %2, 2                           ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.preheader57, label %.lr.ph

.preheader57:                                     ; preds = %bb.j, %bb.b
  %g_maLCG.promoted61 = phi i32 [ %g_maLCG.promoted64, %bb.b ], [ %i.bn, %bb.j ]
  %.081.i10.lcssa = phi i64 [ 0, %bb.b ], [ %i.dk, %bb.j ] ; 2 uses
  %i.f = icmp ult i64 %.081.i10.lcssa, %2
  br i1 %i.f, label %.lr.ph63, label %ma_pcm_f32_to_s16__sse2.exit

.lr.ph:                                           ; preds = %bb.b, %bb.j
  %.080.i1160 = phi i64 [ %i.dl, %bb.j ], [ 0, %bb.b ]
  %.081.i1059 = phi i64 [ %i.dk, %bb.j ], [ 0, %bb.b ] ; 6 uses
  %i.g = phi i32 [ %i.bn, %bb.j ], [ %g_maLCG.promoted64, %bb.b ] ; 3 uses
  switch i32 %3, label %ma_dither_f32.exit [
    i32 1, label %ma_dither_f32.exit19.thread
    i32 2, label %ma_dither_f32.exit19.thread27
  ]

ma_dither_f32.exit19.thread:                      ; preds = %.lr.ph
  %i.h = mul i32 %i.g, 48271
  %i.i = urem i32 %i.h, 2147483647                ; 2 uses
  %i.j = mul i32 %i.i, 48271
  %i.k = urem i32 %i.j, 2147483647                ; 2 uses
  %i.l = mul i32 %i.k, 48271
  %i.m = urem i32 %i.l, 2147483647                ; 2 uses
  %i.n = mul i32 %i.m, 48271
  %i.o = urem i32 %i.n, 2147483647                ; 3 uses
  %i.p = uitofp nneg i32 %i.o to double
  %i.q = uitofp nneg i32 %i.k to double
  %i.r = uitofp nneg i32 %i.i to double
  %i.s = uitofp nneg i32 %i.m to double
  %i.t = insertelement <4 x double> poison, double %i.s, i64 0
  %i.u = insertelement <4 x double> %i.t, double %i.r, i64 1
  %i.v = insertelement <4 x double> %i.u, double %i.q, i64 2
  %i.w = insertelement <4 x double> %i.v, double %i.p, i64 3
  %i.x = fdiv <4 x double> %i.w, splat (double f0x41DFFFFFFFC00000)
  %i.y = fptrunc <4 x double> %i.x to <4 x float>
  store i32 %i.o, ptr @g_maLCG.0, align 4, !tbaa !156
  %i.z = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.y, <4 x float> splat (float f0x38800080), <4 x float> splat (float f0xB8000000))
  br label %ma_dither_f32.exit

ma_dither_f32.exit19.thread27:                    ; preds = %.lr.ph
  %i.aa = mul i32 %i.g, 48271
  %i.ab = urem i32 %i.aa, 2147483647              ; 2 uses
  %i.ac = mul i32 %i.ab, 48271
  %i.ad = urem i32 %i.ac, 2147483647              ; 2 uses
  %i.ae = mul i32 %i.ad, 48271
  %i.af = urem i32 %i.ae, 2147483647              ; 2 uses
  %i.ag = mul i32 %i.af, 48271
  %i.ah = urem i32 %i.ag, 2147483647              ; 2 uses
  %i.ai = mul i32 %i.ah, 48271
  %i.aj = urem i32 %i.ai, 2147483647              ; 2 uses
  %i.ak = mul i32 %i.aj, 48271
  %i.al = urem i32 %i.ak, 2147483647              ; 2 uses
  %i.am = mul i32 %i.al, 48271
  %i.an = urem i32 %i.am, 2147483647              ; 2 uses
  %i.ao = uitofp nneg i32 %i.an to double
  %i.ap = uitofp nneg i32 %i.af to double
  %i.aq = uitofp nneg i32 %i.ab to double
  %i.ar = uitofp nneg i32 %i.aj to double
  %i.as = insertelement <4 x double> poison, double %i.ar, i64 0
  %i.at = insertelement <4 x double> %i.as, double %i.aq, i64 1
  %i.au = insertelement <4 x double> %i.at, double %i.ap, i64 2
  %i.av = insertelement <4 x double> %i.au, double %i.ao, i64 3
  %i.aw = fdiv <4 x double> %i.av, splat (double f0x41DFFFFFFFC00000)
  %i.ax = fptrunc <4 x double> %i.aw to <4 x float>
  %i.ay = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ax, <4 x float> splat (float f0x38000000), <4 x float> splat (float f0xB8000000))
  %i.az = mul i32 %i.an, 48271
  %i.ba = urem i32 %i.az, 2147483647              ; 3 uses
  %i.bb = uitofp nneg i32 %i.ba to double
  %i.bc = uitofp nneg i32 %i.ah to double
  %i.bd = uitofp nneg i32 %i.ad to double
  %i.be = uitofp nneg i32 %i.al to double
  %i.bf = insertelement <4 x double> poison, double %i.be, i64 0
  %i.bg = insertelement <4 x double> %i.bf, double %i.bd, i64 1
  %i.bh = insertelement <4 x double> %i.bg, double %i.bc, i64 2
  %i.bi = insertelement <4 x double> %i.bh, double %i.bb, i64 3
  %i.bj = fdiv <4 x double> %i.bi, splat (double f0x41DFFFFFFFC00000)
  %i.bk = fptrunc <4 x double> %i.bj to <4 x float>
  %i.bl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bk, <4 x float> splat (float f0x38000100), <4 x float> zeroinitializer)
  store i32 %i.ba, ptr @g_maLCG.0, align 4, !tbaa !156
  %i.bm = fadd <4 x float> %i.ay, %i.bl
  br label %ma_dither_f32.exit

ma_dither_f32.exit:                               ; preds = %.lr.ph, %ma_dither_f32.exit19.thread, %ma_dither_f32.exit19.thread27
  %i.bn = phi i32 [ %i.o, %ma_dither_f32.exit19.thread ], [ %i.ba, %ma_dither_f32.exit19.thread27 ], [ %i.g, %.lr.ph ] ; 2 uses
  %i.bo = phi <4 x float> [ %i.z, %ma_dither_f32.exit19.thread ], [ %i.bm, %ma_dither_f32.exit19.thread27 ], [ zeroinitializer, %.lr.ph ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.081.i1059
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !349
  %i.br = or disjoint i64 %.081.i1059, 1          ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.br
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !349
  %i.bu = or disjoint i64 %.081.i1059, 2          ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bu
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !349
  %i.bx = or disjoint i64 %.081.i1059, 3          ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bx
  %i.bz = load float, ptr %i.by, align 4, !tbaa !349
  %i.ca = extractelement <4 x float> %i.bo, i64 1
  %i.cb = fadd float %i.ca, %i.bq                 ; 3 uses
  %i.cc = extractelement <4 x float> %i.bo, i64 2
  %i.cd = fadd float %i.cc, %i.bt                 ; 3 uses
  %i.ce = extractelement <4 x float> %i.bo, i64 0
  %i.cf = fadd float %i.ce, %i.bw                 ; 3 uses
  %i.cg = extractelement <4 x float> %i.bo, i64 3
  %i.ch = fadd float %i.cg, %i.bz                 ; 3 uses
  %i.ci = fcmp olt float %i.cb, -1.000000e+00
  br i1 %i.ci, label %bb.d, label %bb.c

bb.c:                                             ; preds = %ma_dither_f32.exit
  %i.cj = fcmp ogt float %i.cb, 1.000000e+00
  %i.ck = select i1 %i.cj, float 1.000000e+00, float %i.cb
  %i.cl = fmul float %i.ck, 3.276700e+04
  %i.cm = fptosi float %i.cl to i16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %ma_dither_f32.exit
  %i.cn = phi i16 [ %i.cm, %bb.c ], [ -32767, %ma_dither_f32.exit ]
  %i.co = fcmp olt float %i.cd, -1.000000e+00
  br i1 %i.co, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cp = fcmp ogt float %i.cd, 1.000000e+00
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
  %.1.i1262 = phi i64 [ %i.ep, %bb.n ], [ %.081.i10.lcssa, %.preheader57 ] ; 3 uses
  %i.dm = phi i32 [ %i.eg, %bb.n ], [ %g_maLCG.promoted61, %.preheader57 ] ; 3 uses
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
  %i.dx = mul i32 %i.dw, 48271
  %i.dy = urem i32 %i.dx, 2147483647              ; 3 uses
  store i32 %i.dy, ptr @g_maLCG.0, align 4, !tbaa !156
  %i.dz = uitofp nneg i32 %i.dy to double
  %i.ea = uitofp nneg i32 %i.dw to double
  %i.eb = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.ec = insertelement <2 x double> %i.eb, double %i.dz, i64 1
  %i.ed = fdiv <2 x double> %i.ec, splat (double f0x41DFFFFFFFC00000)
  %i.ee = fptrunc <2 x double> %i.ed to <2 x float>
  %i.ef = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> <float f0x38000000, float f0x38000100>, <2 x float> <float f0xB8000000, float 0.000000e+00>)
  %4 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ef)
  br label %ma_dither_f32.exit21

ma_dither_f32.exit21:                             ; preds = %.lr.ph63, %bb.k, %bb.l
  %i.eg = phi i32 [ %i.dq, %bb.k ], [ %i.dy, %bb.l ], [ %i.dm, %.lr.ph63 ]
  %.0.i20 = phi float [ %i.du, %bb.k ], [ %4, %bb.l ], [ 0.000000e+00, %.lr.ph63 ]
  %i.eh = fadd float %i.do, %.0.i20               ; 3 uses
  %i.ei = fcmp olt float %i.eh, -1.000000e+00
  br i1 %i.ei, label %bb.n, label %bb.m

bb.m:                                             ; preds = %ma_dither_f32.exit21
  %i.ej = fcmp ogt float %i.eh, 1.000000e+00
  %i.ek = select i1 %i.ej, float 1.000000e+00, float %i.eh
  %i.el = fmul float %i.ek, 3.276700e+04
  %i.em = fptosi float %i.el to i16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %ma_dither_f32.exit21
  %i.en = phi i16 [ %i.em, %bb.m ], [ -32767, %ma_dither_f32.exit21 ]
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.1.i1262
  store i16 %i.en, ptr %i.eo, align 2, !tbaa !122
  %i.ep = add nuw i64 %.1.i1262, 1                ; 2 uses
  %exitcond75.not = icmp eq i64 %i.ep, %2
  br i1 %exitcond75.not, label %ma_pcm_f32_to_s16__sse2.exit, label %.lr.ph63, !llvm.loop !1578

bb.o:                                             ; preds = %bb.a
  %i.eq = lshr i64 %2, 3                          ; 2 uses
  %.not72 = icmp eq i64 %i.eq, 0
  br i1 %.not72, label %.preheader, label %.lr.ph67

.preheader:                                       ; preds = %bb.r, %bb.o
  %g_maLCG.promoted69 = phi i32 [ %g_maLCG.promoted64, %bb.o ], [ %i.kj, %bb.r ]
  %.081.i.lcssa = phi i64 [ 0, %bb.o ], [ %i.kw, %bb.r ] ; 2 uses
  %i.er = icmp ult i64 %.081.i.lcssa, %2
  br i1 %i.er, label %.lr.ph71, label %ma_pcm_f32_to_s16__sse2.exit

.lr.ph67:                                         ; preds = %bb.o, %bb.r
  %.080.i66 = phi i64 [ %i.kx, %bb.r ], [ 0, %bb.o ]
  %.081.i65 = phi i64 [ %i.kw, %bb.r ], [ 0, %bb.o ] ; 3 uses
  %i.es = phi i32 [ %i.kj, %bb.r ], [ %g_maLCG.promoted64, %bb.o ] ; 3 uses
  switch i32 %3, label %bb.q [
    i32 0, label %bb.r
    i32 1, label %bb.p
  ]

bb.p:                                             ; preds = %.lr.ph67
  %i.et = mul i32 %i.es, 48271
  %i.eu = urem i32 %i.et, 2147483647              ; 2 uses
  %i.ev = mul i32 %i.eu, 48271
  %i.ew = urem i32 %i.ev, 2147483647              ; 2 uses
  %i.ex = mul i32 %i.ew, 48271
  %i.ey = urem i32 %i.ex, 2147483647              ; 2 uses
  %i.ez = mul i32 %i.ey, 48271
  %i.fa = urem i32 %i.ez, 2147483647              ; 2 uses
  %i.fb = uitofp nneg i32 %i.eu to double
  %i.fc = uitofp nneg i32 %i.ew to double
  %i.fd = uitofp nneg i32 %i.ey to double
  %i.fe = uitofp nneg i32 %i.fa to double
  %i.ff = insertelement <4 x double> poison, double %i.fe, i64 0
  %i.fg = insertelement <4 x double> %i.ff, double %i.fd, i64 1
  %i.fh = insertelement <4 x double> %i.fg, double %i.fc, i64 2
  %i.fi = insertelement <4 x double> %i.fh, double %i.fb, i64 3
  %i.fj = fdiv <4 x double> %i.fi, splat (double f0x41DFFFFFFFC00000)
  %i.fk = fptrunc <4 x double> %i.fj to <4 x float>
  %i.fl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fk, <4 x float> splat (float f0x38800080), <4 x float> splat (float f0xB8000000))
  %i.fm = mul i32 %i.fa, 48271
  %i.fn = urem i32 %i.fm, 2147483647              ; 2 uses
  %i.fo = mul i32 %i.fn, 48271
  %i.fp = urem i32 %i.fo, 2147483647              ; 2 uses
  %i.fq = mul i32 %i.fp, 48271
  %i.fr = urem i32 %i.fq, 2147483647              ; 2 uses
  %i.fs = mul i32 %i.fr, 48271
  %i.ft = urem i32 %i.fs, 2147483647              ; 3 uses
  store i32 %i.ft, ptr @g_maLCG.0, align 4, !tbaa !156
  %i.fu = uitofp nneg i32 %i.fn to double
  %i.fv = uitofp nneg i32 %i.fp to double
  %i.fw = uitofp nneg i32 %i.fr to double
  %i.fx = uitofp nneg i32 %i.ft to double
  %i.fy = insertelement <4 x double> poison, double %i.fx, i64 0
  %i.fz = insertelement <4 x double> %i.fy, double %i.fw, i64 1
  %i.ga = insertelement <4 x double> %i.fz, double %i.fv, i64 2
  %i.gb = insertelement <4 x double> %i.ga, double %i.fu, i64 3
  %i.gc = fdiv <4 x double> %i.gb, splat (double f0x41DFFFFFFFC00000)
  %i.gd = fptrunc <4 x double> %i.gc to <4 x float>
  %i.ge = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gd, <4 x float> splat (float f0x38800080), <4 x float> splat (float f0xB8000000))
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph67
  %i.gf = mul i32 %i.es, 48271
  %i.gg = urem i32 %i.gf, 2147483647              ; 2 uses
  %i.gh = mul i32 %i.gg, 48271
  %i.gi = urem i32 %i.gh, 2147483647              ; 2 uses
  %i.gj = uitofp nneg i32 %i.gi to double
  %i.gk = uitofp nneg i32 %i.gg to double
  %i.gl = insertelement <2 x double> poison, double %i.gk, i64 0
  %i.gm = insertelement <2 x double> %i.gl, double %i.gj, i64 1
  %i.gn = fdiv <2 x double> %i.gm, splat (double f0x41DFFFFFFFC00000)
  %i.go = fptrunc <2 x double> %i.gn to <2 x float>
  %i.gp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.go, <2 x float> <float f0x38000000, float f0x38000100>, <2 x float> <float f0xB8000000, float 0.000000e+00>)
  %i.gq = mul i32 %i.gi, 48271
  %i.gr = urem i32 %i.gq, 2147483647              ; 2 uses
  %i.gs = mul i32 %i.gr, 48271
  %i.gt = urem i32 %i.gs, 2147483647              ; 2 uses
  %i.gu = uitofp nneg i32 %i.gt to double
  %i.gv = uitofp nneg i32 %i.gr to double
  %i.gw = insertelement <2 x double> poison, double %i.gv, i64 0
  %i.gx = insertelement <2 x double> %i.gw, double %i.gu, i64 1
  %i.gy = fdiv <2 x double> %i.gx, splat (double f0x41DFFFFFFFC00000)
  %i.gz = fptrunc <2 x double> %i.gy to <2 x float>
  %i.ha = mul i32 %i.gt, 48271
  %i.hb = urem i32 %i.ha, 2147483647              ; 2 uses
  %i.hc = mul i32 %i.hb, 48271
  %i.hd = urem i32 %i.hc, 2147483647              ; 2 uses
  %i.he = mul i32 %i.hd, 48271
  %i.hf = urem i32 %i.he, 2147483647              ; 2 uses
  %i.hg = uitofp nneg i32 %i.hb to double
  %i.hh = uitofp nneg i32 %i.hf to double
  %i.hi = insertelement <2 x double> poison, double %i.hh, i64 0
  %i.hj = insertelement <2 x double> %i.hi, double %i.hg, i64 1
  %i.hk = fdiv <2 x double> %i.hj, splat (double f0x41DFFFFFFFC00000)
  %i.hl = fptrunc <2 x double> %i.hk to <2 x float>
  %i.hm = shufflevector <2 x float> %i.gz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.hn = shufflevector <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x float> %i.hm, <4 x i32> <i32 poison, i32 poison, i32 4, i32 3>
  %i.ho = shufflevector <2 x float> %i.hl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hp = shufflevector <4 x float> %i.ho, <4 x float> %i.hn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hq = shufflevector <2 x float> %i.gp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0> ; 2 uses
  %i.hr = shufflevector <4 x float> <float f0xB8000000, float f0xB8000000, float f0xB8000000, float poison>, <4 x float> %i.hq, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.hs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hp, <4 x float> <float f0x38000000, float f0x38000000, float f0x38000000, float 0.000000e+00>, <4 x float> %i.hr)
  %i.ht = mul i32 %i.hf, 48271
  %i.hu = urem i32 %i.ht, 2147483647              ; 2 uses
  %i.hv = uitofp nneg i32 %i.hd to double
  %i.hw = uitofp nneg i32 %i.hu to double
  %i.hx = insertelement <2 x double> poison, double %i.hw, i64 0
  %i.hy = insertelement <2 x double> %i.hx, double %i.hv, i64 1
  %i.hz = fdiv <2 x double> %i.hy, splat (double f0x41DFFFFFFFC00000)
  %i.ia = fptrunc <2 x double> %i.hz to <2 x float>
  %i.ib = shufflevector <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x float> %i.hm, <4 x i32> <i32 poison, i32 poison, i32 5, i32 3>
  %i.ic = shufflevector <2 x float> %i.ia, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.id = shufflevector <4 x float> %i.ic, <4 x float> %i.ib, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ie = shufflevector <4 x float> %i.hq, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 1>
  %i.if = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.id, <4 x float> <float f0x38000100, float f0x38000100, float f0x38000100, float 0.000000e+00>, <4 x float> %i.ie)
  %i.ig = fadd <4 x float> %i.hs, %i.if
  %i.ih = mul i32 %i.hu, 48271
  %i.ii = urem i32 %i.ih, 2147483647              ; 2 uses
  %i.ij = mul i32 %i.ii, 48271
  %i.ik = urem i32 %i.ij, 2147483647              ; 2 uses
  %i.il = uitofp nneg i32 %i.ik to double
  %i.im = uitofp nneg i32 %i.ii to double
  %i.in = insertelement <2 x double> poison, double %i.im, i64 0
  %i.io = insertelement <2 x double> %i.in, double %i.il, i64 1
  %i.ip = fdiv <2 x double> %i.io, splat (double f0x41DFFFFFFFC00000)
  %i.iq = fptrunc <2 x double> %i.ip to <2 x float>
  %i.ir = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iq, <2 x float> <float f0x38000000, float f0x38000100>, <2 x float> <float f0xB8000000, float 0.000000e+00>)
  %i.is = mul i32 %i.ik, 48271
  %i.it = urem i32 %i.is, 2147483647              ; 2 uses
  %i.iu = mul i32 %i.it, 48271
  %i.iv = urem i32 %i.iu, 2147483647              ; 2 uses
  %i.iw = uitofp nneg i32 %i.iv to double
  %i.ix = uitofp nneg i32 %i.it to double
  %i.iy = insertelement <2 x double> poison, double %i.ix, i64 0
  %i.iz = insertelement <2 x double> %i.iy, double %i.iw, i64 1
  %i.ja = fdiv <2 x double> %i.iz, splat (double f0x41DFFFFFFFC00000)
  %i.jb = fptrunc <2 x double> %i.ja to <2 x float>
  %i.jc = mul i32 %i.iv, 48271
  %i.jd = urem i32 %i.jc, 2147483647              ; 2 uses
  %i.je = mul i32 %i.jd, 48271
  %i.jf = urem i32 %i.je, 2147483647              ; 2 uses
  %i.jg = mul i32 %i.jf, 48271
  %i.jh = urem i32 %i.jg, 2147483647              ; 2 uses
  %i.ji = uitofp nneg i32 %i.jd to double
  %i.jj = uitofp nneg i32 %i.jh to double
  %i.jk = insertelement <2 x double> poison, double %i.jj, i64 0
  %i.jl = insertelement <2 x double> %i.jk, double %i.ji, i64 1
  %i.jm = fdiv <2 x double> %i.jl, splat (double f0x41DFFFFFFFC00000)
  %i.jn = fptrunc <2 x double> %i.jm to <2 x float>
  %i.jo = shufflevector <2 x float> %i.jb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.jp = shufflevector <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x float> %i.jo, <4 x i32> <i32 poison, i32 poison, i32 4, i32 3>
  %i.jq = shufflevector <2 x float> %i.jn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jr = shufflevector <4 x float> %i.jq, <4 x float> %i.jp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.js = shufflevector <2 x float> %i.ir, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0> ; 2 uses
  %i.jt = shufflevector <4 x float> <float f0xB8000000, float f0xB8000000, float f0xB8000000, float poison>, <4 x float> %i.js, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ju = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jr, <4 x float> <float f0x38000000, float f0x38000000, float f0x38000000, float 0.000000e+00>, <4 x float> %i.jt)
  %i.jv = mul i32 %i.jh, 48271
  %i.jw = urem i32 %i.jv, 2147483647              ; 3 uses
  store i32 %i.jw, ptr @g_maLCG.0, align 4, !tbaa !156
  %i.jx = uitofp nneg i32 %i.jf to double
  %i.jy = uitofp nneg i32 %i.jw to double
  %i.jz = insertelement <2 x double> poison, double %i.jy, i64 0
  %i.ka = insertelement <2 x double> %i.jz, double %i.jx, i64 1
  %i.kb = fdiv <2 x double> %i.ka, splat (double f0x41DFFFFFFFC00000)
  %i.kc = fptrunc <2 x double> %i.kb to <2 x float>
  %i.kd = shufflevector <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x float> %i.jo, <4 x i32> <i32 poison, i32 poison, i32 5, i32 3>
  %i.ke = shufflevector <2 x float> %i.kc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.kf = shufflevector <4 x float> %i.ke, <4 x float> %i.kd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.kg = shufflevector <4 x float> %i.js, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 1>
  %i.kh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kf, <4 x float> <float f0x38000100, float f0x38000100, float f0x38000100, float 0.000000e+00>, <4 x float> %i.kg)
  %i.ki = fadd <4 x float> %i.ju, %i.kh
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph67, %bb.q, %bb.p
  %i.kj = phi i32 [ %i.jw, %bb.q ], [ %i.ft, %bb.p ], [ %i.es, %.lr.ph67 ] ; 2 uses
  %.077.i = phi <4 x float> [ %i.ig, %bb.q ], [ %i.fl, %bb.p ], [ zeroinitializer, %.lr.ph67 ]
  %.0.i = phi <4 x float> [ %i.ki, %bb.q ], [ %i.ge, %bb.p ], [ zeroinitializer, %.lr.ph67 ]
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.081.i65 ; 2 uses
  %i.kl = load <4 x float>, ptr %i.kk, align 16, !tbaa !119
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.kn = load <4 x float>, ptr %i.km, align 16, !tbaa !119
  %i.ko = fadd <4 x float> %.077.i, %i.kl
  %i.kp = fadd <4 x float> %.0.i, %i.kn
  %i.kq = fmul <4 x float> %i.ko, splat (float 3.276700e+04)
  %i.kr = fmul <4 x float> %i.kp, splat (float 3.276700e+04)
  %i.ks = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.081.i65
  %i.kt = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.kq)
  %i.ku = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.kr)
  %i.kv = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.kt, <4 x i32> %i.ku)
  store <8 x i16> %i.kv, ptr %i.ks, align 16, !tbaa !119, !nontemporal !1581
  %i.kw = add nuw i64 %.081.i65, 8                ; 2 uses
  %i.kx = add nuw nsw i64 %.080.i66, 1            ; 2 uses
  %exitcond76.not = icmp eq i64 %i.kx, %i.eq
  br i1 %exitcond76.not, label %.preheader, label %.lr.ph67, !llvm.loop !1579

.lr.ph71:                                         ; preds = %.preheader, %bb.v
  %.1.i70 = phi i64 [ %i.mb, %bb.v ], [ %.081.i.lcssa, %.preheader ] ; 3 uses
  %i.ky = phi i32 [ %i.ls, %bb.v ], [ %g_maLCG.promoted69, %.preheader ] ; 3 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.1.i70
  %i.la = load float, ptr %i.kz, align 4, !tbaa !349
  switch i32 %3, label %ma_dither_f32.exit23 [
    i32 1, label %bb.s
    i32 2, label %bb.t
  ]

bb.s:                                             ; preds = %.lr.ph71
  %i.lb = mul i32 %i.ky, 48271
  %i.lc = urem i32 %i.lb, 2147483647              ; 3 uses
  store i32 %i.lc, ptr @g_maLCG.0, align 4, !tbaa !156
  %i.ld = uitofp nneg i32 %i.lc to double
  %i.le = fdiv double %i.ld, f0x41DFFFFFFFC00000
  %i.lf = fptrunc double %i.le to float
  %i.lg = tail call float @llvm.fmuladd.f32(float %i.lf, float f0x38800080, float f0xB8000000)
  br label %ma_dither_f32.exit23

bb.t:                                             ; preds = %.lr.ph71
  %i.lh = mul i32 %i.ky, 48271
  %i.li = urem i32 %i.lh, 2147483647              ; 2 uses
  %i.lj = mul i32 %i.li, 48271
  %i.lk = urem i32 %i.lj, 2147483647              ; 3 uses
  store i32 %i.lk, ptr @g_maLCG.0, align 4, !tbaa !156
  %i.ll = uitofp nneg i32 %i.lk to double
  %i.lm = uitofp nneg i32 %i.li to double
  %i.ln = insertelement <2 x double> poison, double %i.lm, i64 0
  %i.lo = insertelement <2 x double> %i.ln, double %i.ll, i64 1
  %i.lp = fdiv <2 x double> %i.lo, splat (double f0x41DFFFFFFFC00000)
  %i.lq = fptrunc <2 x double> %i.lp to <2 x float>
  %i.lr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lq, <2 x float> <float f0x38000000, float f0x38000100>, <2 x float> <float f0xB8000000, float 0.000000e+00>)
  %5 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.lr)
  br label %ma_dither_f32.exit23

ma_dither_f32.exit23:                             ; preds = %.lr.ph71, %bb.s, %bb.t
  %i.ls = phi i32 [ %i.lc, %bb.s ], [ %i.lk, %bb.t ], [ %i.ky, %.lr.ph71 ]
  %.0.i22 = phi float [ %i.lg, %bb.s ], [ %5, %bb.t ], [ 0.000000e+00, %.lr.ph71 ]
  %i.lt = fadd float %i.la, %.0.i22               ; 3 uses
  %i.lu = fcmp olt float %i.lt, -1.000000e+00
  br i1 %i.lu, label %bb.v, label %bb.u

bb.u:                                             ; preds = %ma_dither_f32.exit23
  %i.lv = fcmp ogt float %i.lt, 1.000000e+00
  %i.lw = select i1 %i.lv, float 1.000000e+00, float %i.lt
  %i.lx = fmul float %i.lw, 3.276700e+04
  %i.ly = fptosi float %i.lx to i16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %ma_dither_f32.exit23
  %i.lz = phi i16 [ %i.ly, %bb.u ], [ -32767, %ma_dither_f32.exit23 ]
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.1.i70
  store i16 %i.lz, ptr %i.ma, align 2, !tbaa !122
  %i.mb = add nuw i64 %.1.i70, 1                  ; 2 uses
  %exitcond77.not = icmp eq i64 %i.mb, %2
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
  %i.y = and i64 %indvars.iv.next, 4294967295
  %i.z = icmp ugt i64 %2, %i.y
  br i1 %i.z, label %.lr.ph, label %ma_pcm_f32_to_s32__reference.exit, !llvm.loop !1583

ma_pcm_f32_to_s32__reference.exit:                ; preds = %bb.c, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_pcm_f32_to_f32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = shl i64 %2, 2                            ; 2 uses
  %.not.i2 = icmp eq i64 %i.a, 0
  br i1 %.not.i2, label %ma_copy_memory_64.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i5 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.011.i4 = phi i64 [ %i.b, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %.012.i3 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %.011.i4, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i5, ptr noundef nonnull align 1 dereferenceable(1) %.012.i3, i64 %spec.store.select.i, i1 false)
  %i.b = sub nuw i64 %.011.i4, %spec.store.select.i ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i5, i64 %spec.store.select.i
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i3, i64 %spec.store.select.i
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %ma_copy_memory_64.exit, label %.lr.ph, !llvm.loop !12

ma_copy_memory_64.exit:                           ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ma_pcm_interleave_f32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #18 {
bb.a:
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %ma_pcm_interleave_f32__optimized.exit, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.a
  %.not19.i.i = icmp eq i32 %3, 0
  %i.a = zext i32 %3 to i64                       ; 3 uses
  br i1 %.not19.i.i, label %ma_pcm_interleave_f32__optimized.exit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.preheader.lr.ph.i.i
  %xtraiter = and i64 %i.a, 3                     ; 3 uses
  %i.b = icmp ult i32 %3, 4
  %unroll_iter = and i64 %i.a, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod4 = icmp ne i64 %xtraiter, 0
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %._crit_edge.i.i
  %.01417.i.i = phi i64 [ %i.ad, %._crit_edge.i.i ], [ 0, %.preheader.i.i.preheader ] ; 7 uses
  %i.c = mul i64 %.01417.i.i, %i.a
  %i.d = getelementptr [4 x i8], ptr %0, i64 %i.c ; 5 uses
  br i1 %i.b, label %.epil.preheader, label %.preheader.i.i.new

.preheader.i.i.new:                               ; preds = %.preheader.i.i, %.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.preheader.i.i.new ], [ 0, %.preheader.i.i ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.i.i.new ], [ 0, %.preheader.i.i ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !373
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.01417.i.i
  %i.h = load float, ptr %i.g, align 4, !tbaa !349
end_hunk_0
begin_hunk_1_@ma_dr_mp3dec_decode_frame:bb.a
bb.be:                                            ; preds = %.loopexit.1.i.i.i
  %i.ug = and i32 %.076.i.i, 2
  %.not45.2.i.i.i = icmp eq i32 %i.ug, 0
  br i1 %.not45.2.i.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.uh = zext i8 %i.uf to i64                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ud, ptr nonnull align 1 %i.uc, i64 %i.uh, i1 false)
  br label %.loopexit.2.i.i.i

bb.bg:                                            ; preds = %bb.be
  %i.ui = zext i8 %.sroa.8.0.i.i to i32           ; 3 uses
  %.not46.2.i.i.i = icmp eq i8 %.sroa.8.0.i.i, 0
  br i1 %.not46.2.i.i.i, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %notmask.2.i.i.i = shl nsw i32 -1, %i.ui
  %i.uj = xor i32 %notmask.2.i.i.i, -1
  %.mask.i.i.i158 = and i32 %.076.i.i, 536870912
  %.inv.2.i.i.i = icmp eq i32 %.mask.i.i.i158, 0
  %i.uk = select i1 %.inv.2.i.i.i, i32 -1, i32 %i.uj
  %wide.trip.count.2.i.i.i = zext i8 %i.uf to i64 ; 2 uses
  %i.ul = load i32, ptr %i.nj, align 4, !tbaa !778
  br label %bb.bi

bb.bi:                                            ; preds = %ma_dr_mp3_bs_get_bits.exit.2.i.i.i, %bb.bh
  %i.um = phi i32 [ %.promoted147.i, %bb.bh ], [ %i.un, %ma_dr_mp3_bs_get_bits.exit.2.i.i.i ] ; 3 uses
  %indvars.iv.2.i.i.i = phi i64 [ 0, %bb.bh ], [ %indvars.iv.next.2.i.i.i, %ma_dr_mp3_bs_get_bits.exit.2.i.i.i ] ; 3 uses
  %i.un = add nsw i32 %i.um, %i.ui                ; 4 uses
  store i32 %i.un, ptr %i.nh, align 8, !tbaa !777
  %i.uo = icmp sgt i32 %i.un, %i.ul
  br i1 %i.uo, label %ma_dr_mp3_bs_get_bits.exit.2.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.up = ashr i32 %i.um, 3
  %i.uq = sext i32 %i.up to i64
  %i.ur = getelementptr inbounds i8, ptr %i.om, i64 %i.uq ; 2 uses
  %i.us = and i32 %i.um, 7                        ; 2 uses
  %i.ut = add nuw nsw i32 %i.us, %i.ui            ; 3 uses
  %i.uu = load i8, ptr %i.ur, align 1, !tbaa !119
  %i.uv = zext i8 %i.uu to i32
  %i.uw = lshr i32 255, %i.us
  %i.ux = and i32 %i.uw, %i.uv                    ; 2 uses
  %i.uy = icmp samesign ugt i32 %i.ut, 8
  br i1 %i.uy, label %.lr.ph.i.2.i.i.i, label %._crit_edge.i.2.i.i.i

.lr.ph.i.2.i.i.i:                                 ; preds = %bb.bj, %.lr.ph.i.2.i.i.i
  %.pn26.i.2.i.i.i = phi ptr [ %.0.i.2.i.i.i, %.lr.ph.i.2.i.i.i ], [ %i.ur, %bb.bj ]
  %.01825.i.2.i.i.i = phi i32 [ %i.uz, %.lr.ph.i.2.i.i.i ], [ %i.ut, %bb.bj ] ; 2 uses
  %.01924.i.2.i.i.i = phi i32 [ %i.vb, %.lr.ph.i.2.i.i.i ], [ 0, %bb.bj ]
  %.02023.i.2.i.i.i = phi i32 [ %i.vd, %.lr.ph.i.2.i.i.i ], [ %i.ux, %bb.bj ]
  %.0.i.2.i.i.i = getelementptr inbounds nuw i8, ptr %.pn26.i.2.i.i.i, i64 1 ; 2 uses
  %i.uz = add nsw i32 %.01825.i.2.i.i.i, -8       ; 3 uses
  %i.va = shl i32 %.02023.i.2.i.i.i, %i.uz
  %i.vb = or i32 %i.va, %.01924.i.2.i.i.i         ; 2 uses
  %i.vc = load i8, ptr %.0.i.2.i.i.i, align 1, !tbaa !119
  %i.vd = zext i8 %i.vc to i32                    ; 2 uses
  %i.ve = icmp samesign ugt i32 %.01825.i.2.i.i.i, 16
  br i1 %i.ve, label %.lr.ph.i.2.i.i.i, label %._crit_edge.i.2.i.i.i, !llvm.loop !2977

._crit_edge.i.2.i.i.i:                            ; preds = %.lr.ph.i.2.i.i.i, %bb.bj
  %.020.lcssa.i.2.i.i.i = phi i32 [ %i.ux, %bb.bj ], [ %i.vd, %.lr.ph.i.2.i.i.i ]
  %.019.lcssa.i.2.i.i.i = phi i32 [ 0, %bb.bj ], [ %i.vb, %.lr.ph.i.2.i.i.i ]
  %.018.lcssa.i.2.i.i.i = phi i32 [ %i.ut, %bb.bj ], [ %i.uz, %.lr.ph.i.2.i.i.i ]
  %i.vf = sub nuw nsw i32 8, %.018.lcssa.i.2.i.i.i
  %i.vg = lshr i32 %.020.lcssa.i.2.i.i.i, %i.vf
  %i.vh = or i32 %i.vg, %.019.lcssa.i.2.i.i.i
  br label %ma_dr_mp3_bs_get_bits.exit.2.i.i.i

ma_dr_mp3_bs_get_bits.exit.2.i.i.i:               ; preds = %._crit_edge.i.2.i.i.i, %bb.bi
  %.021.i.2.i.i.i = phi i32 [ %i.vh, %._crit_edge.i.2.i.i.i ], [ 0, %bb.bi ] ; 2 uses
  %i.vi = icmp eq i32 %.021.i.2.i.i.i, %i.uk
  %i.vj = trunc i32 %.021.i.2.i.i.i to i8         ; 2 uses
  %i.vk = select i1 %i.vi, i8 -1, i8 %i.vj
  %i.vl = getelementptr inbounds nuw i8, ptr %i.uc, i64 %indvars.iv.2.i.i.i
  store i8 %i.vk, ptr %i.vl, align 1, !tbaa !119
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ud, i64 %indvars.iv.2.i.i.i
  store i8 %i.vj, ptr %i.vm, align 1, !tbaa !119
  %indvars.iv.next.2.i.i.i = add nuw nsw i64 %indvars.iv.2.i.i.i, 1 ; 2 uses
  %exitcond.2.not.i.i.i = icmp eq i64 %indvars.iv.next.2.i.i.i, %wide.trip.count.2.i.i.i
  br i1 %exitcond.2.not.i.i.i, label %.loopexit.2.i.i.i, label %bb.bi, !llvm.loop !2978

bb.bk:                                            ; preds = %bb.bg
  %i.vn = zext i8 %i.uf to i64                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ud, i8 0, i64 %i.vn, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.uc, i8 0, i64 %i.vn, i1 false)
  br label %.loopexit.2.i.i.i

.loopexit.2.i.i.i:                                ; preds = %ma_dr_mp3_bs_get_bits.exit.2.i.i.i, %bb.bk, %bb.bf
  %.promoted148.i = phi i32 [ %.promoted147.i, %bb.bk ], [ %.promoted147.i, %bb.bf ], [ %i.un, %ma_dr_mp3_bs_get_bits.exit.2.i.i.i ] ; 4 uses
  %.pre-phi64.i.i.i = phi i64 [ %i.vn, %bb.bk ], [ %i.uh, %bb.bf ], [ %wide.trip.count.2.i.i.i, %ma_dr_mp3_bs_get_bits.exit.2.i.i.i ] ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.uc, i64 %.pre-phi64.i.i.i ; 3 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.ud, i64 %.pre-phi64.i.i.i ; 5 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %.075.i.i, i64 3
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !119 ; 4 uses
  %.not.3.i.i.i = icmp eq i8 %i.vr, 0
  br i1 %.not.3.i.i.i, label %ma_dr_mp3_L3_read_scalefactors.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %.loopexit.2.i.i.i
  %i.vs = and i32 %.076.i.i, 1
  %.not45.3.i.i.i = icmp eq i32 %i.vs, 0
  br i1 %.not45.3.i.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.vt = zext i8 %i.vr to i64                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vp, ptr nonnull align 1 %i.vo, i64 %i.vt, i1 false)
  br label %.loopexit.3.i.i.i

bb.bn:                                            ; preds = %bb.bl
  %i.vu = zext i8 %.sroa.11.0.i.i to i32          ; 3 uses
  %.not46.3.i.i.i = icmp eq i8 %.sroa.11.0.i.i, 0
  br i1 %.not46.3.i.i.i, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %notmask.3.i.i.i = shl nsw i32 -1, %i.vu
  %i.vv = xor i32 %notmask.3.i.i.i, -1
  %.mask77.i.i.i = and i32 %.076.i.i, 268435456
  %.inv.3.i.i.i = icmp eq i32 %.mask77.i.i.i, 0
  %i.vw = select i1 %.inv.3.i.i.i, i32 -1, i32 %i.vv
  %wide.trip.count.3.i.i.i = zext i8 %i.vr to i64 ; 2 uses
  %i.vx = load i32, ptr %i.nj, align 4, !tbaa !778
  br label %bb.bp

bb.bp:                                            ; preds = %ma_dr_mp3_bs_get_bits.exit.3.i.i.i, %bb.bo
  %i.vy = phi i32 [ %.promoted148.i, %bb.bo ], [ %i.vz, %ma_dr_mp3_bs_get_bits.exit.3.i.i.i ] ; 3 uses
  %indvars.iv.3.i.i.i = phi i64 [ 0, %bb.bo ], [ %indvars.iv.next.3.i.i.i, %ma_dr_mp3_bs_get_bits.exit.3.i.i.i ] ; 3 uses
  %i.vz = add nsw i32 %i.vy, %i.vu                ; 4 uses
  store i32 %i.vz, ptr %i.nh, align 8, !tbaa !777
  %i.wa = icmp sgt i32 %i.vz, %i.vx
  br i1 %i.wa, label %ma_dr_mp3_bs_get_bits.exit.3.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.wb = ashr i32 %i.vy, 3
  %i.wc = sext i32 %i.wb to i64
  %i.wd = getelementptr inbounds i8, ptr %i.om, i64 %i.wc ; 2 uses
  %i.we = and i32 %i.vy, 7                        ; 2 uses
  %i.wf = add nuw nsw i32 %i.we, %i.vu            ; 3 uses
  %i.wg = load i8, ptr %i.wd, align 1, !tbaa !119
  %i.wh = zext i8 %i.wg to i32
  %i.wi = lshr i32 255, %i.we
  %i.wj = and i32 %i.wi, %i.wh                    ; 2 uses
  %i.wk = icmp samesign ugt i32 %i.wf, 8
  br i1 %i.wk, label %.lr.ph.i.3.i.i.i, label %._crit_edge.i.3.i.i.i

.lr.ph.i.3.i.i.i:                                 ; preds = %bb.bq, %.lr.ph.i.3.i.i.i
  %.pn26.i.3.i.i.i = phi ptr [ %.0.i.3.i.i.i, %.lr.ph.i.3.i.i.i ], [ %i.wd, %bb.bq ]
  %.01825.i.3.i.i.i = phi i32 [ %i.wl, %.lr.ph.i.3.i.i.i ], [ %i.wf, %bb.bq ] ; 2 uses
  %.01924.i.3.i.i.i = phi i32 [ %i.wn, %.lr.ph.i.3.i.i.i ], [ 0, %bb.bq ]
  %.02023.i.3.i.i.i = phi i32 [ %i.wp, %.lr.ph.i.3.i.i.i ], [ %i.wj, %bb.bq ]
  %.0.i.3.i.i.i = getelementptr inbounds nuw i8, ptr %.pn26.i.3.i.i.i, i64 1 ; 2 uses
  %i.wl = add nsw i32 %.01825.i.3.i.i.i, -8       ; 3 uses
  %i.wm = shl i32 %.02023.i.3.i.i.i, %i.wl
  %i.wn = or i32 %i.wm, %.01924.i.3.i.i.i         ; 2 uses
  %i.wo = load i8, ptr %.0.i.3.i.i.i, align 1, !tbaa !119
  %i.wp = zext i8 %i.wo to i32                    ; 2 uses
  %i.wq = icmp samesign ugt i32 %.01825.i.3.i.i.i, 16
  br i1 %i.wq, label %.lr.ph.i.3.i.i.i, label %._crit_edge.i.3.i.i.i, !llvm.loop !2977

._crit_edge.i.3.i.i.i:                            ; preds = %.lr.ph.i.3.i.i.i, %bb.bq
  %.020.lcssa.i.3.i.i.i = phi i32 [ %i.wj, %bb.bq ], [ %i.wp, %.lr.ph.i.3.i.i.i ]
  %.019.lcssa.i.3.i.i.i = phi i32 [ 0, %bb.bq ], [ %i.wn, %.lr.ph.i.3.i.i.i ]
  %.018.lcssa.i.3.i.i.i = phi i32 [ %i.wf, %bb.bq ], [ %i.wl, %.lr.ph.i.3.i.i.i ]
  %i.wr = sub nuw nsw i32 8, %.018.lcssa.i.3.i.i.i
  %i.ws = lshr i32 %.020.lcssa.i.3.i.i.i, %i.wr
  %i.wt = or i32 %i.ws, %.019.lcssa.i.3.i.i.i
  br label %ma_dr_mp3_bs_get_bits.exit.3.i.i.i

ma_dr_mp3_bs_get_bits.exit.3.i.i.i:               ; preds = %._crit_edge.i.3.i.i.i, %bb.bp
  %.021.i.3.i.i.i = phi i32 [ %i.wt, %._crit_edge.i.3.i.i.i ], [ 0, %bb.bp ] ; 2 uses
  %i.wu = icmp eq i32 %.021.i.3.i.i.i, %i.vw
  %i.wv = trunc i32 %.021.i.3.i.i.i to i8         ; 2 uses
  %i.ww = select i1 %i.wu, i8 -1, i8 %i.wv
  %i.wx = getelementptr inbounds nuw i8, ptr %i.vo, i64 %indvars.iv.3.i.i.i
  store i8 %i.ww, ptr %i.wx, align 1, !tbaa !119
  %i.wy = getelementptr inbounds nuw i8, ptr %i.vp, i64 %indvars.iv.3.i.i.i
  store i8 %i.wv, ptr %i.wy, align 1, !tbaa !119
  %indvars.iv.next.3.i.i.i = add nuw nsw i64 %indvars.iv.3.i.i.i, 1 ; 2 uses
  %exitcond.3.not.i.i.i = icmp eq i64 %indvars.iv.next.3.i.i.i, %wide.trip.count.3.i.i.i
  br i1 %exitcond.3.not.i.i.i, label %.loopexit.3.i.i.i, label %bb.bp, !llvm.loop !2978

bb.br:                                            ; preds = %bb.bn
  %i.wz = zext i8 %i.vr to i64                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.vp, i8 0, i64 %i.wz, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.vo, i8 0, i64 %i.wz, i1 false)
  br label %.loopexit.3.i.i.i

.loopexit.3.i.i.i:                                ; preds = %ma_dr_mp3_bs_get_bits.exit.3.i.i.i, %bb.br, %bb.bm
  %i.xa = phi i32 [ %.promoted148.i, %bb.br ], [ %.promoted148.i, %bb.bm ], [ %i.vz, %ma_dr_mp3_bs_get_bits.exit.3.i.i.i ]
  %.pre-phi66.i.i.i = phi i64 [ %i.wz, %bb.br ], [ %i.vt, %bb.bm ], [ %wide.trip.count.3.i.i.i, %ma_dr_mp3_bs_get_bits.exit.3.i.i.i ]
  %i.xb = getelementptr inbounds nuw i8, ptr %i.vp, i64 %.pre-phi66.i.i.i
  br label %ma_dr_mp3_L3_read_scalefactors.exit.i.i

ma_dr_mp3_L3_read_scalefactors.exit.i.i:          ; preds = %.loopexit.3.i.i.i, %.loopexit.2.i.i.i, %.loopexit.1.i.i.i, %.loopexit.i.i.i, %bb.ap
  %i.xc = phi i32 [ %i.xa, %.loopexit.3.i.i.i ], [ %.promoted.i, %bb.ap ], [ %.promoted146.i, %.loopexit.i.i.i ], [ %.promoted148.i, %.loopexit.2.i.i.i ], [ %.promoted147.i, %.loopexit.1.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i = phi ptr [ %i.xb, %.loopexit.3.i.i.i ], [ %i.b, %bb.ap ], [ %i.sr, %.loopexit.i.i.i ], [ %i.vp, %.loopexit.2.i.i.i ], [ %i.ud, %.loopexit.1.i.i.i ] ; 3 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 2
  store i8 0, ptr %i.xd, align 1, !tbaa !119
  %i.xe = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 1
  store i8 0, ptr %i.xe, align 1, !tbaa !119
  store i8 0, ptr %.0.lcssa.i.i.i, align 1, !tbaa !119
  %i.xf = load i8, ptr %i.ou, align 2, !tbaa !1122 ; 3 uses
  %.not79.i.i = icmp eq i8 %i.xf, 0
  br i1 %.not79.i.i, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %ma_dr_mp3_L3_read_scalefactors.exit.i.i
  %i.xg = sub nsw i32 2, %i.pf                    ; 3 uses
  %i.xh = load i8, ptr %i.oy, align 1, !tbaa !1123
  %i.xi = getelementptr inbounds nuw i8, ptr %i.oo, i64 25
  %i.xj = load i8, ptr %i.xi, align 1, !tbaa !119
  %i.xk = zext i8 %i.xj to i32
  %i.xl = shl nuw nsw i32 %i.xk, %i.xg
  %i.xm = trunc i32 %i.xl to i8
  %i.xn = getelementptr inbounds nuw i8, ptr %i.oo, i64 26
  %i.xo = load i8, ptr %i.xn, align 2, !tbaa !119
  %i.xp = zext i8 %i.xo to i32
  %i.xq = shl nuw nsw i32 %i.xp, %i.xg
  %i.xr = trunc i32 %i.xq to i8
  %i.xs = getelementptr inbounds nuw i8, ptr %i.oo, i64 27
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !119
  %i.xu = zext i8 %i.xt to i32
  %i.xv = shl nuw nsw i32 %i.xu, %i.xg
  %i.xw = trunc i32 %i.xv to i8
  %i.xx = zext i8 %i.xh to i64
  %i.xy = zext i8 %i.xf to i64
  %invariant.gep.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.xx
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %bb.bs
  %niter760 = phi i64 [ 0, %bb.bs ], [ %niter760.next.1, %bb.bt ] ; 2 uses
  %gep.i.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %niter760 ; 4 uses
  %i.xz = load i8, ptr %gep.i.i.1, align 1, !tbaa !119
  %i.ya = add i8 %i.xz, %i.xm
  store i8 %i.ya, ptr %gep.i.i.1, align 1, !tbaa !119
  %i.yb = getelementptr inbounds nuw i8, ptr %gep.i.i.1, i64 1 ; 2 uses
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !119
  %i.yd = add i8 %i.yc, %i.xr
  store i8 %i.yd, ptr %i.yb, align 1, !tbaa !119
  %i.ye = getelementptr inbounds nuw i8, ptr %gep.i.i.1, i64 2 ; 2 uses
  %i.yf = load i8, ptr %i.ye, align 1, !tbaa !119
  %i.yg = add i8 %i.yf, %i.xw
  store i8 %i.yg, ptr %i.ye, align 1, !tbaa !119
  %niter760.next.1 = add nuw nsw i64 %niter760, 3 ; 2 uses
  %7 = icmp samesign ult i64 %niter760.next.1, %i.xy
  br i1 %7, label %bb.bt, label %.loopexit.i.i, !llvm.loop !2979

bb.bu:                                            ; preds = %ma_dr_mp3_L3_read_scalefactors.exit.i.i
  %i.yh = getelementptr inbounds nuw i8, ptr %i.oo, i64 28
  %i.yi = load i8, ptr %i.yh, align 4, !tbaa !1127
  %.not80.i.i = icmp eq i8 %i.yi, 0
  br i1 %.not80.i.i, label %.loopexit.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.bu
  %i.yj = load <8 x i8>, ptr %i.nt, align 1, !tbaa !119
  %i.yk = add <8 x i8> %i.yj, <i8 1, i8 1, i8 1, i8 1, i8 2, i8 2, i8 3, i8 3>
  store <8 x i8> %i.yk, ptr %i.nt, align 1, !tbaa !119
  %i.yl = load i8, ptr %i.nu, align 1, !tbaa !119
  %i.ym = add i8 %i.yl, 3
  store i8 %i.ym, ptr %i.nu, align 1, !tbaa !119
  %i.yn = load i8, ptr %i.nv, align 4, !tbaa !119
  %i.yo = add i8 %i.yn, 2
  store i8 %i.yo, ptr %i.nv, align 4, !tbaa !119
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.bt, %.preheader.preheader.i.i, %bb.bu
  %i.yp = getelementptr inbounds nuw i8, ptr %i.oo, i64 14
  %i.yq = load i8, ptr %i.yp, align 2, !tbaa !1128
  %i.yr = zext i8 %i.yq to i32
  %i.ys = load i8, ptr %i.np, align 1, !tbaa !119
  %i.yt = and i8 %i.ys, -32
  %i.yu = icmp eq i8 %i.yt, 96
  %.neg.neg109.i.i = select i1 %i.yu, i32 2, i32 0
  %reass.sub = sub nsw i32 %.neg.neg109.i.i, %i.yr
  %i.yv = add nsw i32 %reass.sub, 258
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %.loopexit.i.i
  %.07.i.i.i = phi float [ 2.048000e+03, %.loopexit.i.i ], [ %i.zf, %bb.bv ]
  %.0.i.i.i = phi i32 [ %i.yv, %.loopexit.i.i ], [ %i.zg, %bb.bv ] ; 2 uses
  %i.yw = tail call i32 @llvm.umin.i32(i32 %.0.i.i.i, i32 120) ; 3 uses
  %i.yx = and i32 %i.yw, 3
  %i.yy = zext nneg i32 %i.yx to i64
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_mp3_L3_ldexp_q2.g_expfrac, i64 %i.yy
  %i.za = load float, ptr %i.yz, align 4, !tbaa !349
  %i.zb = lshr i32 %i.yw, 2
  %i.zc = lshr i32 1073741824, %i.zb
  %i.zd = uitofp nneg i32 %i.zc to float
  %i.ze = fmul float %i.za, %i.zd
  %i.zf = fmul float %.07.i.i.i, %i.ze            ; 2 uses
  %i.zg = sub nuw nsw i32 %.0.i.i.i, %i.yw        ; 2 uses
  %.not169.i.i = icmp eq i32 %i.zg, 0
  br i1 %.not169.i.i, label %ma_dr_mp3_L3_ldexp_q2.exit.preheader.i.i, label %bb.bv, !llvm.loop !2980

ma_dr_mp3_L3_ldexp_q2.exit.preheader.i.i:         ; preds = %bb.bv
  %i.zh = load i8, ptr %i.oy, align 1, !tbaa !1123
  %i.zi = zext i8 %i.zh to i32
  %i.zj = zext i8 %i.xf to i32
  %i.zk = add nuw nsw i32 %i.zi, %i.zj            ; 2 uses
  %.not110.i.i = icmp eq i32 %i.zk, 0
  br i1 %.not110.i.i, label %ma_dr_mp3_L3_decode_scalefactors.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %ma_dr_mp3_L3_ldexp_q2.exit.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.zk to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %ma_dr_mp3_L3_ldexp_q2.exit83.i.i, %.lr.ph.preheader.i.i
  %indvars.iv135.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next136.i.i, %ma_dr_mp3_L3_ldexp_q2.exit83.i.i ] ; 3 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv135.i.i
  %i.zm = load i8, ptr %i.zl, align 1, !tbaa !119
  %i.zn = zext i8 %i.zm to i32
  %i.zo = shl i32 %i.zn, %i.pg
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bw, %.lr.ph.i.i
  %.07.i81.i.i = phi float [ %i.zf, %.lr.ph.i.i ], [ %i.zy, %bb.bw ]
  %.0.i82.i.i = phi i32 [ %i.zo, %.lr.ph.i.i ], [ %i.zz, %bb.bw ] ; 2 uses
  %i.zp = tail call i32 @llvm.smin.i32(i32 %.0.i82.i.i, i32 120) ; 3 uses
  %i.zq = and i32 %i.zp, 3
  %i.zr = zext nneg i32 %i.zq to i64
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_mp3_L3_ldexp_q2.g_expfrac, i64 %i.zr
  %i.zt = load float, ptr %i.zs, align 4, !tbaa !349
  %i.zu = ashr i32 %i.zp, 2
  %i.zv = lshr i32 1073741824, %i.zu
  %i.zw = uitofp nneg i32 %i.zv to float
  %i.zx = fmul float %i.zt, %i.zw
  %i.zy = fmul float %.07.i81.i.i, %i.zx          ; 2 uses
  %i.zz = sub nsw i32 %.0.i82.i.i, %i.zp          ; 2 uses
  %i.aaa = icmp sgt i32 %i.zz, 0
  br i1 %i.aaa, label %bb.bw, label %ma_dr_mp3_L3_ldexp_q2.exit83.i.i, !llvm.loop !2980

ma_dr_mp3_L3_ldexp_q2.exit83.i.i:                 ; preds = %bb.bw
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %indvars.iv135.i.i
  store float %i.zy, ptr %i.aab, align 4, !tbaa !349
  %indvars.iv.next136.i.i = add nuw nsw i64 %indvars.iv135.i.i, 1 ; 2 uses
  %exitcond.not.i.i154 = icmp eq i64 %indvars.iv.next136.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i154, label %ma_dr_mp3_L3_decode_scalefactors.exit.i, label %.lr.ph.i.i, !llvm.loop !2981

ma_dr_mp3_L3_decode_scalefactors.exit.i:          ; preds = %ma_dr_mp3_L3_ldexp_q2.exit83.i.i, %ma_dr_mp3_L3_ldexp_q2.exit.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  %i.aac = getelementptr inbounds nuw [2304 x i8], ptr %i.no, i64 %indvars.iv.i151 ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.oo, i64 10
  %i.aae = load i16, ptr %i.aad, align 2, !tbaa !1129 ; 2 uses
  %i.aaf = load ptr, ptr %i.oo, align 8, !tbaa !1130 ; 2 uses
  %i.aag = sdiv i32 %i.xc, 8
  %i.aah = sext i32 %i.aag to i64
  %i.aai = getelementptr inbounds i8, ptr %i.om, i64 %i.aah ; 5 uses
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !119
  %i.aak = zext i8 %i.aaj to i32
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aai, i64 1
  %i.aam = load i8, ptr %i.aal, align 1, !tbaa !119
  %i.aan = zext i8 %i.aam to i32
  %i.aao = shl nuw nsw i32 %i.aak, 16
  %i.aap = shl nuw nsw i32 %i.aan, 8
  %i.aaq = or disjoint i32 %i.aap, %i.aao
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aai, i64 2
  %i.aas = load i8, ptr %i.aar, align 1, !tbaa !119
  %i.aat = zext i8 %i.aas to i32
  %i.aau = or disjoint i32 %i.aaq, %i.aat
  %i.aav = shl nuw i32 %i.aau, 8
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aai, i64 3
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !119
  %i.aay = zext i8 %i.aax to i32
  %i.aaz = or disjoint i32 %i.aav, %i.aay
  %i.aba = and i32 %i.xc, 7
  %i.abb = shl i32 %i.aaz, %i.aba                 ; 2 uses
  %i.abc = or i32 %i.xc, -8                       ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aai, i64 4 ; 2 uses
  %.not421.i.i = icmp eq i16 %i.aae, 0
  br i1 %.not421.i.i, label %._crit_edge403.i.i, label %.lr.ph402.i.i

.lr.ph402.i.i:                                    ; preds = %ma_dr_mp3_L3_decode_scalefactors.exit.i
  %i.abe = zext i16 %i.aae to i32
  %i.abf = getelementptr inbounds nuw i8, ptr %i.oo, i64 19
  %i.abg = getelementptr inbounds nuw i8, ptr %i.oo, i64 22
  br label %bb.bx

bb.bx:                                            ; preds = %.critedge.i.i, %.lr.ph402.i.i
  %indvars.iv.i59.i = phi i64 [ 0, %.lr.ph402.i.i ], [ %indvars.iv.next.i60.i, %.critedge.i.i ] ; 3 uses
  %.0190400.i.i = phi ptr [ %i.aac, %.lr.ph402.i.i ], [ %.7.i.i, %.critedge.i.i ] ; 2 uses
  %.0202399.i.i = phi i32 [ %i.abc, %.lr.ph402.i.i ], [ %.13.i.i, %.critedge.i.i ] ; 2 uses
  %.0217398.i.i = phi i32 [ %i.abb, %.lr.ph402.i.i ], [ %.13230.i.i, %.critedge.i.i ] ; 2 uses
  %.0238397.i.i = phi ptr [ %i.abd, %.lr.ph402.i.i ], [ %.10248.i.i, %.critedge.i.i ] ; 2 uses
  %.0252396.i.i = phi ptr [ %i.aaf, %.lr.ph402.i.i ], [ %.3255.i.i, %.critedge.i.i ] ; 2 uses
  %.0260395.i.i = phi i32 [ %i.abe, %.lr.ph402.i.i ], [ %.3263.i.i, %.critedge.i.i ] ; 2 uses
  %.0271393.i.i = phi ptr [ %i.nr, %.lr.ph402.i.i ], [ %.3274.i.i, %.critedge.i.i ] ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abf, i64 %indvars.iv.i59.i
  %i.abi = load i8, ptr %i.abh, align 1, !tbaa !119 ; 2 uses
  %indvars.iv.next.i60.i = add nuw nsw i64 %indvars.iv.i59.i, 1
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abg, i64 %indvars.iv.i59.i
  %i.abk = load i8, ptr %i.abj, align 1, !tbaa !119
  %i.abl = zext i8 %i.abk to i32                  ; 2 uses
  %i.abm = zext i8 %i.abi to i64                  ; 2 uses
  %i.abn = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_mp3_L3_huffman.tabindex, i64 %i.abm
  %i.abo = load i16, ptr %i.abn, align 2, !tbaa !122
  %i.abp = sext i16 %i.abo to i64
  %i.abq = getelementptr inbounds [2 x i8], ptr @ma_dr_mp3_L3_huffman.tabs, i64 %i.abp ; 4 uses
  %i.abr = getelementptr inbounds nuw i8, ptr @ma_dr_mp3_L3_huffman.g_linbits, i64 %i.abm
  %i.abs = load i8, ptr %i.abr, align 1, !tbaa !119
  %i.abt = zext i8 %i.abs to i32                  ; 5 uses
  %.not304.i.i = icmp ult i8 %i.abi, 16
  br i1 %.not304.i.i, label %.preheader323.i.i, label %.preheader324.i.i

.preheader324.i.i:                                ; preds = %bb.bx
  %i.abu = sub nsw i32 32, %i.abt                 ; 2 uses
  br label %bb.by

bb.by:                                            ; preds = %bb.cj, %.preheader324.i.i
  %.1272.i.i = phi ptr [ %i.akn, %bb.cj ], [ %.0271393.i.i, %.preheader324.i.i ] ; 2 uses
  %.1261.i.i = phi i32 [ %i.ako, %bb.cj ], [ %.0260395.i.i, %.preheader324.i.i ] ; 2 uses
  %.1253.i.i = phi ptr [ %i.akm, %bb.cj ], [ %.0252396.i.i, %.preheader324.i.i ] ; 2 uses
  %.1239.i.i = phi ptr [ %.6244.lcssa.i.i, %bb.cj ], [ %.0238397.i.i, %.preheader324.i.i ]
  %.1218.i.i = phi i32 [ %.7224.lcssa.i.i, %bb.cj ], [ %.0217398.i.i, %.preheader324.i.i ]
  %.1203.i.i = phi i32 [ %.7209.lcssa.i.i, %bb.cj ], [ %.0202399.i.i, %.preheader324.i.i ]
  %.0200.i.i = phi i32 [ %i.akq, %bb.cj ], [ %i.abl, %.preheader324.i.i ] ; 2 uses
  %.1.i.i = phi ptr [ %i.aiz, %bb.cj ], [ %.0190400.i.i, %.preheader324.i.i ]
  %i.abv = load i8, ptr %.1253.i.i, align 1, !tbaa !119
  %i.abw = lshr i8 %i.abv, 1
  %i.abx = zext nneg i8 %i.abw to i32             ; 2 uses
  %i.aby = tail call i32 @llvm.umin.i32(i32 %.1261.i.i, i32 %i.abx)
  %i.abz = load float, ptr %.1272.i.i, align 4, !tbaa !349 ; 5 uses
  br label %bb.bz

bb.bz:                                            ; preds = %._crit_edge362.i.i, %bb.by
  %.2240.i.i = phi ptr [ %.1239.i.i, %bb.by ], [ %.6244.lcssa.i.i, %._crit_edge362.i.i ] ; 5 uses
  %.2219.i.i = phi i32 [ %.1218.i.i, %bb.by ], [ %.7224.lcssa.i.i, %._crit_edge362.i.i ] ; 3 uses
  %.0215.i.i = phi i32 [ %i.aby, %bb.by ], [ %i.akl, %._crit_edge362.i.i ]
  %.2204.i.i = phi i32 [ %.1203.i.i, %bb.by ], [ %.7209.lcssa.i.i, %._crit_edge362.i.i ] ; 2 uses
  %.2.i.i = phi ptr [ %.1.i.i, %bb.by ], [ %i.aiz, %._crit_edge362.i.i ] ; 3 uses
  %i.aca = lshr i32 %.2219.i.i, 27
  %.pn333.i.i = zext nneg i32 %i.aca to i64
  %.0196.in.in334.i.i = getelementptr inbounds nuw [2 x i8], ptr %i.abq, i64 %.pn333.i.i
  %.0196.in335.i.i = load i16, ptr %.0196.in.in334.i.i, align 2, !tbaa !122 ; 2 uses
  %.0196336.i.i = sext i16 %.0196.in335.i.i to i32 ; 2 uses
  %i.acb = icmp slt i16 %.0196.in335.i.i, 0
  br i1 %i.acb, label %.lr.ph.i63.i, label %._crit_edge.i.i

.lr.ph.i63.i:                                     ; preds = %bb.bz, %.lr.ph.i63.i
  %.0196340.i.i = phi i32 [ %.0196.i.i, %.lr.ph.i63.i ], [ %.0196336.i.i, %bb.bz ] ; 2 uses
  %.0198339.i.i = phi i32 [ %i.ace, %.lr.ph.i63.i ], [ 5, %bb.bz ] ; 2 uses
  %.3205338.i.i = phi i32 [ %i.acd, %.lr.ph.i63.i ], [ %.2204.i.i, %bb.bz ]
  %.3220337.i.i = phi i32 [ %i.acc, %.lr.ph.i63.i ], [ %.2219.i.i, %bb.bz ]
  %i.acc = shl i32 %.3220337.i.i, %.0198339.i.i   ; 3 uses
  %i.acd = add nsw i32 %.3205338.i.i, %.0198339.i.i ; 2 uses
  %i.ace = and i32 %.0196340.i.i, 7               ; 2 uses
  %i.acf = sub nuw nsw i32 32, %i.ace
  %i.acg = lshr i32 %i.acc, %i.acf
  %i.ach = ashr i32 %.0196340.i.i, 3
  %i.aci = sub nsw i32 %i.acg, %i.ach
  %.pn.i.i = zext nneg i32 %i.aci to i64
  %.0196.in.in.i.i = getelementptr inbounds nuw [2 x i8], ptr %i.abq, i64 %.pn.i.i
  %.0196.in.i.i = load i16, ptr %.0196.in.in.i.i, align 2, !tbaa !122 ; 2 uses
  %.0196.i.i = sext i16 %.0196.in.i.i to i32      ; 2 uses
  %i.acj = icmp slt i16 %.0196.in.i.i, 0
  br i1 %i.acj, label %.lr.ph.i63.i, label %._crit_edge.i.i, !llvm.loop !2982

._crit_edge.i.i:                                  ; preds = %.lr.ph.i63.i, %bb.bz
  %.3220.lcssa.i.i = phi i32 [ %.2219.i.i, %bb.bz ], [ %i.acc, %.lr.ph.i63.i ]
  %.3205.lcssa.i.i = phi i32 [ %.2204.i.i, %bb.bz ], [ %i.acd, %.lr.ph.i63.i ]
  %.0196.lcssa.i.i = phi i32 [ %.0196336.i.i, %bb.bz ], [ %.0196.i.i, %.lr.ph.i63.i ] ; 3 uses
  %i.ack = lshr i32 %.0196.lcssa.i.i, 8           ; 2 uses
  %i.acl = shl i32 %.3220.lcssa.i.i, %i.ack       ; 4 uses
  %i.acm = add nsw i32 %i.ack, %.3205.lcssa.i.i   ; 2 uses
  %i.acn = and i32 %.0196.lcssa.i.i, 15           ; 3 uses
  %i.aco = icmp eq i32 %i.acn, 15
  br i1 %i.aco, label %bb.ca, label %bb.cd
end_hunk_1
begin_hunk_2_@ma_dr_mp3d_synth_pair:bb.a
  %i.ab = fsub float %i.y, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float 5.153000e+03, float %i.w)
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 1280
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !349
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 2304
  %i.ag = load float, ptr %i.af, align 4, !tbaa !349
  %i.ah = fadd float %i.ae, %i.ag
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float 6.574000e+03, float %i.ac)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 2048
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !349
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 1536
  %i.am = load float, ptr %i.al, align 4, !tbaa !349
  %i.an = fsub float %i.ak, %i.am
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float 3.748900e+04, float %i.ai)
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 1792
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !349
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float 7.503800e+04, float %i.ao) ; 3 uses
  %i.as = fcmp ult float %i.ar, 3.276650e+04
  br i1 %i.as, label %bb.b, label %ma_dr_mp3d_scale_pcm.exit

bb.b:                                             ; preds = %bb.a
  %i.at = fcmp ugt float %i.ar, -3.276750e+04
  br i1 %i.at, label %bb.c, label %ma_dr_mp3d_scale_pcm.exit

bb.c:                                             ; preds = %bb.b
  %i.au = fadd float %i.ar, 5.000000e-01
  %i.av = fptosi float %i.au to i16               ; 2 uses
  %.lobit.neg.i = ashr i16 %i.av, 15
  %i.aw = add i16 %.lobit.neg.i, %i.av
  br label %ma_dr_mp3d_scale_pcm.exit

ma_dr_mp3d_scale_pcm.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i16 [ %i.aw, %bb.c ], [ 32767, %bb.a ], [ -32768, %bb.b ]
  store i16 %.0.i, ptr %0, align 2, !tbaa !122
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 3592
  %i.az = load float, ptr %i.ay, align 4, !tbaa !349
  %i.ba = fmul float %i.az, 1.040000e+02
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 3080
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !349
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bc, float 1.567000e+03, float %i.ba)
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 2568
  %i.bf = load float, ptr %i.be, align 4, !tbaa !349
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float 9.727000e+03, float %i.bd)
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 2056
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !349
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float 6.401900e+04, float %i.bg)
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 1544
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !349
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bl, float -9.975000e+03, float %i.bj)
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 1032
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !349
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bo, float -4.500000e+01, float %i.bm)
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 520
  %i.br = load float, ptr %i.bq, align 4, !tbaa !349
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.br, float 1.460000e+02, float %i.bp)
  %i.bt = load float, ptr %i.ax, align 4, !tbaa !349
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bt, float -5.000000e+00, float %i.bs) ; 3 uses
  %i.bv = fcmp ult float %i.bu, 3.276650e+04
  br i1 %i.bv, label %bb.d, label %ma_dr_mp3d_scale_pcm.exit44

bb.d:                                             ; preds = %ma_dr_mp3d_scale_pcm.exit
  %i.bw = fcmp ugt float %i.bu, -3.276750e+04
  br i1 %i.bw, label %bb.e, label %ma_dr_mp3d_scale_pcm.exit44

bb.e:                                             ; preds = %bb.d
  %i.bx = fadd float %i.bu, 5.000000e-01
  %i.by = fptosi float %i.bx to i16               ; 2 uses
  %.lobit.neg.i43 = ashr i16 %i.by, 15
  %i.bz = add i16 %.lobit.neg.i43, %i.by
  br label %ma_dr_mp3d_scale_pcm.exit44

ma_dr_mp3d_scale_pcm.exit44:                      ; preds = %ma_dr_mp3d_scale_pcm.exit, %bb.d, %bb.e
  %.0.i42 = phi i16 [ %i.bz, %bb.e ], [ 32767, %ma_dr_mp3d_scale_pcm.exit ], [ -32768, %bb.d ]
  %i.ca = shl nsw i32 %1, 4
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [2 x i8], ptr %0, i64 %i.cb
  store i16 %.0.i42, ptr %i.cc, align 2, !tbaa !122
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #57

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float>) #57

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #57

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #57

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define internal noalias noundef ptr @ma_dr_mp3__realloc_default(ptr noundef captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2) #42 {
bb.a:
  %i.a = tail call ptr @realloc(ptr noundef %0, i64 noundef %1) #69
  ret ptr %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #63

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #33

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #64

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #63

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr captures(none)) local_unnamed_addr #65

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #63

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #63

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smin.v8i16(<8 x i16>, <8 x i16>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smax.v4i16(<4 x i16>, <4 x i16>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smin.v4i16(<4 x i16>, <4 x i16>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fmuladd.v16f32(<16 x float>, <16 x float>, <16 x float>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.bswap.v2i64(<2 x i64>) #33

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #34 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #47 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #48 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #49 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #50 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #51 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #52 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #53 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #54 = { nounwind memory(argmem: write) }
attributes #55 = { nounwind }
attributes #56 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #57 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #58 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #59 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #60 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #61 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #62 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #63 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #64 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #65 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #66 = { nounwind willreturn memory(read) }
attributes #67 = { nounwind allocsize(0) }
attributes #68 = { nounwind willreturn memory(none) }
attributes #69 = { nounwind allocsize(1) }

!llvm.module.flags = !{!110, !111}
!llvm.ident = !{!112}
!llvm.errno.tbaa = !{!117}

!0 = distinct !{!0, !120}
!1 = distinct !{!1, !120}
!2 = distinct !{!2, !120}
!3 = distinct !{!3, !120}
!4 = distinct !{!4, !120}
!5 = distinct !{!5, !120}
!6 = distinct !{null}
!7 = distinct !{!7, !120}
!8 = distinct !{null, null}
!9 = distinct !{!9, !120}
!10 = distinct !{!10, !120}
!11 = distinct !{null, null}
!12 = distinct !{!12, !120}
!13 = distinct !{!13, !120}
!14 = distinct !{!14, !120}
!15 = distinct !{!15, !120}
!16 = distinct !{!16, !120}
!17 = distinct !{!17, !120}
!18 = distinct !{!18, !120}
!19 = distinct !{!19, !120}
!20 = distinct !{!20, !120}
!21 = distinct !{!21, !120}
!22 = distinct !{!22, !120}
!23 = distinct !{!23, !120}
!24 = distinct !{!24, !120}
!25 = distinct !{!25, !120}
!26 = distinct !{!26, !120}
!27 = distinct !{!27, !120}
!28 = distinct !{!28, !120, !424}
!29 = distinct !{!29, !120, !424}
!30 = distinct !{!30, !120}
!31 = distinct !{!31, !120}
!32 = distinct !{!32, !120}
!33 = distinct !{!33, !120}
!34 = distinct !{!34, !120}
!35 = distinct !{!35, !120}
!36 = distinct !{!36, !120}
!37 = distinct !{!37, !120}
!38 = distinct !{!38, !120}
!39 = distinct !{!39, !120}
!40 = distinct !{!40, !120}
!41 = distinct !{!41, !120}
!42 = distinct !{!42, !120}
!43 = distinct !{null, ptr @ma_free}
!44 = distinct !{!44, !120}
!45 = distinct !{!45, !120}
!46 = distinct !{!46, !120}
!47 = distinct !{null}
!48 = distinct !{null, null}
!49 = distinct !{null, null}
!50 = distinct !{ptr @ma_dr_wav_free, null}
!51 = distinct !{!51, !120}
!52 = distinct !{!52, !120}
!53 = distinct !{!53, !120}
!54 = distinct !{!54, !120}
!55 = distinct !{!55, !120}
!56 = distinct !{!56, !120}
!57 = distinct !{!57, !120}
!58 = distinct !{null}
!59 = distinct !{!59, !120}
!60 = distinct !{null, ptr @ma_dr_flac__seek_to_byte}
!61 = distinct !{!61, !120}
!62 = distinct !{!62, !120}
!63 = distinct !{ptr @ma_dr_mp3_init_internal, null}
!64 = distinct !{null, null, ptr @ma_malloc}
!65 = distinct !{null, null, ptr @ma_free}
!66 = distinct !{ptr @ma_dr_mp3_uninit, null}
!67 = distinct !{null}
!68 = distinct !{null, null, null}
!69 = distinct !{null, null}
!70 = distinct !{null, null}
!71 = distinct !{null, null}
!72 = distinct !{null, null}
!73 = distinct !{null, null}
!74 = distinct !{!74, !120}
!75 = distinct !{!75, !120}
!76 = distinct !{!76, !120}
!77 = distinct !{!77, !120}
!78 = distinct !{null, ptr @ma_async_notification_signal}
!79 = distinct !{null}
!80 = distinct !{null, null, ptr @ma_audio_buffer_uninit, null, ptr @ma_free}
!81 = distinct !{!81, !120}
!82 = distinct !{!82, !120}
!83 = distinct !{!83, !120}
!84 = distinct !{!84, !120}
!85 = distinct !{!85, !120}
!86 = distinct !{!86, !120}
!87 = distinct !{!87, !120}
!88 = distinct !{ptr @ma_node_graph_uninit, null, ptr @ma_free}
!89 = distinct !{!89, !120}
end_hunk_2
