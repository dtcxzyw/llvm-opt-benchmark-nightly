Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_channelmixerrgb?download=true
inline.NumInlined: 403
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 99
begin_hunk_0_@_loop_switch:bb.a
  %i.ct = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = fmul reassoc nsz arcp contract afn <2 x float> %i.cu, <float 4.012880e-01, float -2.502680e-01>
  %i.cw = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fmul reassoc nsz arcp contract afn <2 x float> %i.cx, <float 6.501730e-01, float f0x3F9A2A3D>
  %i.cz = fadd reassoc nsz arcp contract afn <2 x float> %i.cy, %i.cv
  %i.da = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = fmul reassoc nsz arcp contract afn <2 x float> %i.db, <float -5.146100e-02, float 4.585400e-02>
  %i.dd = fadd reassoc nsz arcp contract afn <2 x float> %i.cq, %i.cs
  %i.de = fadd reassoc nsz arcp contract afn <2 x float> %i.cl, %i.cm
  %i.df = fadd reassoc nsz arcp contract afn <2 x float> %i.cz, %i.dc
  %i.dg = fmul reassoc nsz arcp contract afn float %i.c, -2.079000e-03
  %i.dh = extractelement <2 x float> %i.ce, i64 0
  %i.di = fmul reassoc nsz arcp contract afn float %i.dh, 4.895200e-02
  %i.dj = fadd reassoc nsz arcp contract afn float %i.di, %i.dg
  %i.dk = extractelement <2 x float> %i.cf, i64 0
  %i.dl = fmul reassoc nsz arcp contract afn float %i.dk, 9.531270e-01
  %i.dm = fadd reassoc nsz arcp contract afn float %i.dj, %i.dl
  %i.dn = fmul reassoc nsz arcp contract afn float %i.ca, -2.079000e-03
  %i.do = extractelement <2 x float> %i.ce, i64 1
  %i.dp = fmul reassoc nsz arcp contract afn float %i.do, 4.895200e-02
  %i.dq = fadd reassoc nsz arcp contract afn float %i.dp, %i.dn
  %i.dr = extractelement <2 x float> %i.cf, i64 1
  %i.ds = fmul reassoc nsz arcp contract afn float %i.dr, 9.531270e-01
  %i.dt = fadd reassoc nsz arcp contract afn float %i.dq, %i.ds
  %i.du = fmul reassoc nsz arcp contract afn float %i.cb, -2.079000e-03
  %i.dv = fmul reassoc nsz arcp contract afn float %i.cc, 4.895200e-02
  %i.dw = fadd reassoc nsz arcp contract afn float %i.dv, %i.du
  %i.dx = fmul reassoc nsz arcp contract afn float %i.cd, 9.531270e-01
  %i.dy = fadd reassoc nsz arcp contract afn float %i.dw, %i.dx
  %gep.1.i105 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %gep.2.i106 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %invariant.gep.2.i110 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dz = load float, ptr %invariant.gep.2.i110, align 4, !tbaa !12 ; 2 uses
  %gep.1.2.i111 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ea = load float, ptr %gep.1.2.i111, align 4, !tbaa !12 ; 2 uses
  %gep.2.2.i112 = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.eb = load <2 x float>, ptr %6, align 4, !tbaa !12
  %i.ec = load <2 x float>, ptr %gep.1.i105, align 4, !tbaa !12 ; 2 uses
  %i.ed = load float, ptr %gep.2.2.i112, align 4, !tbaa !12
  %i.ee = load <3 x float>, ptr %gep.2.i106, align 4, !tbaa !12
  %i.ef = shufflevector <3 x float> %i.ee, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.eg = shufflevector <2 x float> %i.eb, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 0, i32 1> ; 2 uses
  %i.eh = insertelement <5 x float> %i.eg, float %i.ea, i64 2
  %i.ei = shufflevector <2 x float> %i.ec, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison>
  %i.ej = shufflevector <5 x float> %i.ei, <5 x float> %i.eh, <8 x i32> <i32 0, i32 1, i32 7, i32 0, i32 1, i32 7, i32 8, i32 9>
  %i.ek = fmul reassoc nsz arcp contract afn <8 x float> %i.ej, <float f0xBF8170CE, float f0xBF8170CE, float f0xBF8170CE, float 6.214470e-01, float 6.214470e-01, float 6.214470e-01, float -1.584100e-02, float -1.584100e-02>
  %i.el = shufflevector <2 x float> %i.ec, <2 x float> poison, <5 x i32> <i32 poison, i32 poison, i32 poison, i32 0, i32 1>
  %i.em = insertelement <5 x float> %i.el, float %i.dz, i64 2
  %i.en = shufflevector <5 x float> %i.eg, <5 x float> %i.em, <8 x i32> <i32 0, i32 1, i32 7, i32 0, i32 1, i32 7, i32 8, i32 9>
  %i.eo = fmul reassoc nsz arcp contract afn <8 x float> %i.en, <float f0x3FEE583F, float f0x3FEE583F, float f0x3FEE583F, float 3.875200e-01, float 3.875200e-01, float 3.875200e-01, float -3.412300e-02, float -3.412300e-02>
  %i.ep = fadd reassoc nsz arcp contract afn <8 x float> %i.eo, %i.ek
  %i.eq = fmul reassoc nsz arcp contract afn <8 x float> %i.ef, <float 1.491870e-01, float 1.491870e-01, float 1.491870e-01, float -8.974000e-03, float -8.974000e-03, float -8.974000e-03, float f0x3F866538, float f0x3F866538>
  %i.er = fadd reassoc nsz arcp contract afn <8 x float> %i.ep, %i.eq
  %i.es = fmul reassoc nsz arcp contract afn float %i.dz, -1.584100e-02
  %i.et = fmul reassoc nsz arcp contract afn float %i.ea, -3.412300e-02
  %i.eu = fadd reassoc nsz arcp contract afn float %i.et, %i.es
  %i.ev = fmul reassoc nsz arcp contract afn float %i.ed, f0x3F866538
  %i.ew = fadd reassoc nsz arcp contract afn float %i.eu, %i.ev
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !12
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !12
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !12
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !12 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !12
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !12
  %i.fk = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !12
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.fn = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.fo = getelementptr inbounds nuw i8, ptr %6, i64 52
  %i.fp = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %i.ex, <5 x i1> <i1 true, i1 true, i1 false, i1 true, i1 true>, <5 x float> poison), !tbaa !12 ; 2 uses
  %i.fq = tail call <10 x float> @llvm.masked.load.v10f32.p0(ptr align 4 %6, <10 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true, i1 true, i1 true, i1 false, i1 true, i1 true>, <10 x float> poison), !tbaa !12
  %i.fr = shufflevector <10 x float> %i.fq, <10 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 4, i32 5, i32 6, i32 8, i32 9>
  %i.fs = load float, ptr %i.fm, align 4, !tbaa !12
  %i.ft = load float, ptr %i.fn, align 4, !tbaa !12
  %i.fu = load <2 x float>, ptr %i.fo, align 4, !tbaa !12
  %i.fv = shufflevector <5 x float> %i.fp, <5 x float> poison, <2 x i32> <i32 1, i32 4> ; 2 uses
  %i.fw = insertelement <2 x float> %i.fv, float %i.c, i64 0
  %i.fx = shufflevector <5 x float> %i.fp, <5 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.fy = insertelement <2 x float> %i.fv, float %i.ez, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 4
  %gep.1.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %gep.2.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  %invariant.gep.2.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %gep.1.2.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  %gep.2.2.i = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ga = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.gd = load float, ptr %invariant.gep.2.i, align 4, !tbaa !12
  %i.ge = load <3 x float>, ptr %6, align 4, !tbaa !12
  %i.gf = shufflevector <3 x float> %i.ge, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.gg = load float, ptr %gep.1.2.i, align 4, !tbaa !12
  %i.gh = load <3 x float>, ptr %gep.1.i, align 4, !tbaa !12
  %i.gi = shufflevector <3 x float> %i.gh, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.gj = load float, ptr %gep.2.2.i, align 4, !tbaa !12
  %i.gk = load <3 x float>, ptr %gep.2.i, align 4, !tbaa !12
  %i.gl = shufflevector <3 x float> %i.gk, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.gm = tail call <10 x float> @llvm.masked.load.v10f32.p0(ptr nonnull align 4 %i.fz, <10 x i1> <i1 true, i1 true, i1 false, i1 true, i1 true, i1 true, i1 false, i1 true, i1 true, i1 true>, <10 x float> poison), !tbaa !12 ; 3 uses
  %i.gn = load float, ptr %i.gc, align 4, !tbaa !12 ; 2 uses
  %i.go = load float, ptr %i.gb, align 4, !tbaa !12
  %i.gp = load float, ptr %i.ga, align 4, !tbaa !12
  %i.gq = shufflevector <10 x float> %i.gm, <10 x float> poison, <3 x i32> <i32 poison, i32 3, i32 7>
  %i.gr = insertelement <3 x float> poison, float %i.c, i64 0
  %i.gs = shufflevector <3 x float> %i.gr, <3 x float> %i.gq, <8 x i32> <i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 5, i32 5>
  %i.gt = fmul reassoc nsz arcp contract afn <8 x float> %i.gf, %i.gs
  %i.gu = shufflevector <10 x float> %i.gm, <10 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 8, i32 8>
  %i.gv = fmul reassoc nsz arcp contract afn <8 x float> %i.gu, %i.gi
  %i.gw = fadd reassoc nsz arcp contract afn <8 x float> %i.gv, %i.gt
  %i.gx = shufflevector <10 x float> %i.gm, <10 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 9, i32 9>
  %i.gy = fmul reassoc nsz arcp contract afn <8 x float> %i.gx, %i.gl
  %i.gz = fadd reassoc nsz arcp contract afn <8 x float> %i.gw, %i.gy
  %i.ha = fmul reassoc nsz arcp contract afn float %i.gp, %i.gd
  %i.hb = fmul reassoc nsz arcp contract afn float %i.go, %i.gg
  %i.hc = fadd reassoc nsz arcp contract afn float %i.hb, %i.ha
  %i.hd = fmul reassoc nsz arcp contract afn float %i.gn, %i.gj
  %i.he = fadd reassoc nsz arcp contract afn float %i.hc, %i.hd
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.hf = phi float [ %i.gn, %bb.e ], [ %i.g, %bb.b ], [ %i.cd, %bb.c ], [ %i.ff, %bb.d ] ; 3 uses
  %.sroa.35225.0 = phi nsz float [ 0.000000e+00, %bb.e ], [ %i.ap, %bb.b ], [ %i.dm, %bb.c ], [ %i.fb, %bb.d ] ; 2 uses
  %.sroa.39226.0 = phi nsz float [ 0.000000e+00, %bb.e ], [ %i.aw, %bb.b ], [ %i.dt, %bb.c ], [ %i.fd, %bb.d ] ; 2 uses
  %.sroa.43227.0 = phi nsz float [ 0.000000e+00, %bb.e ], [ %i.bb, %bb.b ], [ %i.dy, %bb.c ], [ %i.ff, %bb.d ] ; 2 uses
  %.sroa.51228.0 = phi nsz float [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.c ], [ %i.fh, %bb.d ]
  %.sroa.53229.0 = phi nsz float [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.c ], [ %i.fj, %bb.d ]
  %.sroa.55.0 = phi nsz float [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.c ], [ %i.fl, %bb.d ]
  %.sroa.53220.0 = phi nsz float [ %i.he, %bb.e ], [ %i.bz, %bb.b ], [ %i.ew, %bb.c ], [ %i.fs, %bb.d ]
  %.sroa.63.0 = phi nsz float [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.c ], [ %i.ft, %bb.d ]
  %i.hg = phi <2 x float> [ zeroinitializer, %bb.e ], [ %i.ah, %bb.b ], [ %i.de, %bb.c ], [ %i.fw, %bb.d ] ; 2 uses
  %i.hh = phi <2 x float> [ zeroinitializer, %bb.e ], [ %i.ag, %bb.b ], [ %i.dd, %bb.c ], [ %i.fx, %bb.d ] ; 2 uses
  %i.hi = phi <2 x float> [ zeroinitializer, %bb.e ], [ %i.ai, %bb.b ], [ %i.df, %bb.c ], [ %i.fy, %bb.d ] ; 2 uses
  %i.hj = phi <8 x float> [ %i.gz, %bb.e ], [ %i.bu, %bb.b ], [ %i.er, %bb.c ], [ %i.fr, %bb.d ] ; 5 uses
  %i.hk = phi <2 x float> [ zeroinitializer, %bb.e ], [ zeroinitializer, %bb.b ], [ zeroinitializer, %bb.c ], [ %i.fu, %bb.d ] ; 2 uses
  %.not = icmp eq i32 %13, 0                      ; 4 uses
  %i.hl = select reassoc nsz arcp contract afn i1 %.not, float f0xFF7FFFFF, float 0.000000e+00 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.hn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.hp = load <2 x float>, ptr %i.ho, align 4, !tbaa !12 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.hr = load <2 x float>, ptr %i.hm, align 4, !tbaa !12 ; 3 uses
  %i.hs = load float, ptr %i.hn, align 4, !tbaa !12
  %i.ht = load float, ptr %i.hq, align 4, !tbaa !12
  %i.hu = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !12 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !12 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !12 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !12 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.id = load float, ptr %i.ic, align 4, !tbaa !12 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.if = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ig = load float, ptr %i.if, align 4, !tbaa !12 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ii = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !12 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.il = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.im = load float, ptr %i.il, align 4, !tbaa !12 ; 3 uses
  %i.in = load float, ptr %i.ie, align 4, !tbaa !12 ; 2 uses
  %i.io = load float, ptr %i.ih, align 4, !tbaa !12 ; 2 uses
  %i.ip = load float, ptr %i.ik, align 4, !tbaa !12 ; 2 uses
  %i.iq = shl nsw i64 %2, 2
  %i.ir = mul i64 %i.iq, %3                       ; 2 uses
  %.not236 = icmp eq i64 %i.ir, 0
  br i1 %.not236, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.is = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.it = load float, ptr %i.is, align 4, !tbaa !12
  %i.iu = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.iv = load <2 x float>, ptr %i.iu, align 4, !tbaa !12
  %i.iw = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ix = load <2 x float>, ptr %i.iw, align 4, !tbaa !12 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.iz = load <2 x float>, ptr %i.iy, align 4, !tbaa !12 ; 3 uses
  %i.ja = load <2 x float>, ptr %4, align 4, !tbaa !12 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.jc = load <2 x float>, ptr %i.jb, align 4, !tbaa !12 ; 3 uses
  %i.jd = load <2 x float>, ptr %5, align 4, !tbaa !12 ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 9 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 11 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.jh = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.jj = fcmp reassoc nsz arcp contract afn oeq float %12, 0.000000e+00 ; 2 uses
  %switch = icmp samesign ult i32 %15, 4          ; 2 uses
  %.not58 = icmp eq i32 %14, 0
  %i.jk = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.jl = getelementptr inbounds nuw i8, ptr %10, i64 8
  %factor.op.fmul = fmul reassoc nsz arcp contract afn float %i.hf, f0x3F533F8A
  %factor.op.fmul257 = fmul reassoc nsz arcp contract afn float %i.hv, f0x3F533F8A
  %factor.op.fmul259 = fmul reassoc nsz arcp contract afn float %i.hx, f0x3F533F8A
  %factor.op.fmul261 = fmul reassoc nsz arcp contract afn float %.sroa.43227.0, 8.330360e-01
  %factor.op.fmul263 = fmul reassoc nsz arcp contract afn float %.sroa.35225.0, 8.330360e-01
  %factor.op.fmul265 = fmul reassoc nsz arcp contract afn float %.sroa.39226.0, 8.330360e-01
  %factor.op.fmul267 = fmul reassoc nsz arcp contract afn float %.sroa.43227.0, f0x3F51729B
  %factor.op.fmul269 = fmul reassoc nsz arcp contract afn float %.sroa.35225.0, f0x3F51729B
  %factor.op.fmul271 = fmul reassoc nsz arcp contract afn float %.sroa.39226.0, f0x3F51729B
  %i.jm = insertelement <4 x float> poison, float %i.ig, i64 0
  %i.jn = insertelement <4 x float> %i.jm, float %i.ij, i64 1
  %i.jo = insertelement <4 x float> %i.jn, float %i.im, i64 2
  %i.jp = insertelement <4 x float> %i.jo, float %i.it, i64 3
  %i.jq = extractelement <2 x float> %i.ja, i64 0 ; 2 uses
  %i.jr = extractelement <2 x float> %i.iz, i64 0 ; 2 uses
  %i.js = extractelement <2 x float> %i.ix, i64 0 ; 2 uses
  %i.jt = shufflevector <2 x float> %i.ja, <2 x float> %i.iz, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.ju = shufflevector <2 x float> %i.ix, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.jv = shufflevector <4 x float> %i.jt, <4 x float> %i.ju, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.jw = shufflevector <2 x float> %i.iv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.jx = shufflevector <4 x float> %i.jv, <4 x float> %i.jw, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.jy = shufflevector <2 x float> %i.ja, <2 x float> %i.iz, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.jz = shufflevector <4 x float> %i.jy, <4 x float> %i.ju, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ka = shufflevector <4 x float> %i.jz, <4 x float> %i.jw, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.kb = insertelement <2 x float> poison, float %i.hl, i64 0
  %i.kc = shufflevector <2 x float> %i.kb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kd = shufflevector <2 x float> %i.jd, <2 x float> %i.hp, <2 x i32> <i32 0, i32 3>
  %i.ke = shufflevector <2 x float> %i.jd, <2 x float> %i.hp, <2 x i32> <i32 1, i32 2>
  %i.kf = extractelement <2 x float> %i.jd, i64 0
  %i.kg = extractelement <2 x float> %i.hp, i64 0
  %i.kh = shufflevector <2 x float> %i.hr, <2 x float> %i.jc, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ki = extractelement <2 x float> %i.hr, i64 0
  %i.kj = extractelement <2 x float> %i.jc, i64 0
  %i.kk = shufflevector <2 x float> %i.jd, <2 x float> %i.jc, <2 x i32> <i32 0, i32 2>
  %i.kl = shufflevector <8 x float> %i.hj, <8 x float> poison, <2 x i32> <i32 6, i32 poison>
  %i.km = shufflevector <8 x float> %i.hj, <8 x float> poison, <2 x i32> <i32 7, i32 poison>
  %i.kn = shufflevector <2 x float> %i.kl, <2 x float> %i.hk, <2 x i32> <i32 0, i32 2>
  %i.ko = insertelement <2 x float> %i.hk, float %.sroa.53220.0, i64 0
  %i.kp = shufflevector <8 x float> %i.hj, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.kq = shufflevector <8 x float> %i.hj, <8 x float> poison, <2 x i32> <i32 2, i32 5>
  %i.kr = shufflevector <2 x float> %i.hp, <2 x float> %i.hr, <2 x i32> <i32 2, i32 0>
  %i.ks = shufflevector <8 x float> %i.hj, <8 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.kt = insertelement <2 x float> %i.km, float %.sroa.63.0, i64 1
  br label %bb.g

._crit_edge:                                      ; preds = %bb.ar, %bb.f
  ret void

bb.g:                                             ; preds = %.lr.ph, %bb.ar
  %.054235 = phi i64 [ 0, %.lr.ph ], [ %i.acq, %bb.ar ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.054235 ; 3 uses
  %i.kv = load <2 x float>, ptr %i.ku, align 4, !tbaa !12
  %i.kw = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.kv, <2 x float> %i.kc) ; 17 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !12
  %i.kz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ky, float %i.hl) ; 12 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.ku, i64 12
  %i.lb = load float, ptr %i.la, align 4, !tbaa !12
  switch i32 %15, label %.preheader.preheader [
    i32 2, label %bb.h
    i32 0, label %bb.i
    i32 1, label %bb.j
    i32 3, label %bb.k
  ]

.preheader.preheader:                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !tbaa !12
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.lc = extractelement <2 x float> %i.kw, i64 0 ; 2 uses
  %i.ld = extractelement <2 x float> %i.kw, i64 1 ; 2 uses
  %i.le = insertelement <2 x float> poison, float %i.kz, i64 0
  %i.lf = shufflevector <2 x float> %i.le, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lg = fmul reassoc nsz arcp contract afn <2 x float> %i.lf, %i.kh
  %i.lh = fmul reassoc nsz arcp contract afn float %i.lc, %i.hv
  %i.li = fmul reassoc nsz arcp contract afn float %i.ld, %i.hx
  %i.lj = fadd reassoc nsz arcp contract afn float %i.li, %i.lh
  %i.lk = fmul reassoc nsz arcp contract afn float %i.kz, %i.hf
  %i.ll = fadd reassoc nsz arcp contract afn float %i.lj, %i.lk ; 2 uses
  %i.lm = fmul reassoc nsz arcp contract afn float %i.lc, %i.hz
  %i.ln = fmul reassoc nsz arcp contract afn float %i.ld, %i.ib
  %i.lo = fadd reassoc nsz arcp contract afn float %i.ln, %i.lm
  %i.lp = fmul reassoc nsz arcp contract afn float %i.kz, %i.id
  %i.lq = fadd reassoc nsz arcp contract afn float %i.lo, %i.lp
  store float %i.lq, ptr %.sink11.i.sroa.gep116, align 4, !tbaa !12
  %i.lr = shufflevector <2 x float> %i.kw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ls = fmul reassoc nsz arcp contract afn <2 x float> %i.lr, %i.kr
  %i.lt = fmul reassoc nsz arcp contract afn <2 x float> %i.kw, %i.kk
  %i.lu = fadd reassoc nsz arcp contract afn <2 x float> %i.lt, %i.ls
  %i.lv = fadd reassoc nsz arcp contract afn <2 x float> %i.lu, %i.lg ; 4 uses
  %i.lw = fmul reassoc nsz arcp contract afn <2 x float> %i.lv, <float f0x3F400D1B, float 2.664000e-01>
  %i.lx = shufflevector <2 x float> %i.lw, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ly = fmul reassoc nsz arcp contract afn <2 x float> %i.lv, <float f0x3F652546, float 1.713500e+00> ; 2 uses
  %i.lz = fadd reassoc nsz arcp contract afn <2 x float> %i.ly, %i.lx
  %i.ma = fsub reassoc nsz arcp contract afn <2 x float> %i.ly, %i.lx
  %i.mb = shufflevector <2 x float> %i.lz, <2 x float> %i.ma, <2 x i32> <i32 0, i32 3>
  %i.mc = insertelement <2 x float> poison, float %i.ll, i64 0
  %i.md = shufflevector <2 x float> %i.mc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.me = fmul reassoc nsz arcp contract afn <2 x float> %i.md, <float -1.614000e-01, float 3.670000e-02>
  %i.mf = fadd reassoc nsz arcp contract afn <2 x float> %i.mb, %i.me ; 2 uses
  %i.mg = extractelement <2 x float> %i.lv, i64 0
  %i.mh = fmul reassoc nsz arcp contract afn float %i.mg, 3.890000e-02
  %i.mi = extractelement <2 x float> %i.lv, i64 1 ; 3 uses
  %i.mj = fmul reassoc nsz arcp contract afn float %i.mi, 6.850000e-02
  %i.mk = fsub reassoc nsz arcp contract afn float %i.mh, %i.mj
  %i.ml = fmul reassoc nsz arcp contract afn float %i.ll, 1.029600e+00
  %i.mm = fadd reassoc nsz arcp contract afn float %i.mk, %i.ml ; 2 uses
  %i.mn = fcmp reassoc nsz arcp contract afn ogt float %i.mi, f0x37800000
  br i1 %i.mn, label %.split.us.preheader.i, label %.split.preheader.i

.split.preheader.i:                               ; preds = %bb.h
  %i.mo = fmul reassoc nsz arcp contract afn <2 x float> %i.mf, splat (float 6.553600e+04)
  %i.mp = fmul reassoc nsz arcp contract afn float %i.mm, 6.553600e+04
  br label %downscale_vector.exit

.split.us.preheader.i:                            ; preds = %bb.h
  %i.mq = fadd reassoc nsz arcp contract afn float %i.mi, f0x37800000 ; 3 uses
  %i.mr = insertelement <2 x float> poison, float %i.mq, i64 0
  %i.ms = shufflevector <2 x float> %i.mr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mt = fdiv reassoc nsz arcp contract afn <2 x float> %i.mf, %i.ms
  %i.mu = fdiv reassoc nsz arcp contract afn float %i.mm, %i.mq
  br label %downscale_vector.exit

downscale_vector.exit:                            ; preds = %.split.preheader.i, %.split.us.preheader.i
  %.sink22.i = phi float [ f0x37800000, %.split.preheader.i ], [ %i.mq, %.split.us.preheader.i ] ; 2 uses
  %storemerge = phi float [ %i.mp, %.split.preheader.i ], [ %i.mu, %.split.us.preheader.i ]
  %i.mv = phi <2 x float> [ %i.mo, %.split.preheader.i ], [ %i.mt, %.split.us.preheader.i ]
  %i.mw = load float, ptr %i.ji, align 4, !tbaa !12
  %i.mx = fdiv reassoc nsz arcp contract afn float %storemerge, %i.mw ; 3 uses
  %i.my = fcmp reassoc nsz arcp contract afn ogt float %i.mx, 0.000000e+00
  %i.mz = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.mx, float %11)
  %i.na = select reassoc nsz arcp contract afn i1 %i.my, float %i.mz, float %i.mx
  %i.nb = fmul reassoc nsz arcp contract afn <2 x float> %i.mv, <float 9.960780e-01, float f0x3F82A487>
  %i.nc = fmul reassoc nsz arcp contract afn float %i.na, f0x3F51729B
  %i.nd = load <2 x float>, ptr %7, align 4, !tbaa !12
  %i.ne = insertelement <2 x float> poison, float %.sink22.i, i64 0
  %i.nf = shufflevector <2 x float> %i.ne, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ng = fmul reassoc nsz arcp contract afn <2 x float> %i.nb, %i.nf
  %i.nh = fdiv reassoc nsz arcp contract afn <2 x float> %i.ng, %i.nd
  store <2 x float> %i.nh, ptr %i.a, align 16, !tbaa !12
  %i.ni = fmul reassoc nsz arcp contract afn float %i.nc, %.sink22.i
  store float %i.ni, ptr %.sink11.i.sroa.gep, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa !12, !alias.scope !370
  %i.nj = load <2 x float>, ptr %i.b, align 16, !tbaa !12
  %.pre239 = load float, ptr %i.jf, align 8, !tbaa !12
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.nk = fmul reassoc nsz arcp contract afn <2 x float> %i.kw, %i.hg
  %i.nl = shufflevector <2 x float> %i.kw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.nm = fmul reassoc nsz arcp contract afn <2 x float> %i.nl, %i.hh
  %i.nn = insertelement <2 x float> poison, float %i.kz, i64 0
  %i.no = shufflevector <2 x float> %i.nn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.np = fmul reassoc nsz arcp contract afn <2 x float> %i.no, %i.hi
  %i.nq = extractelement <2 x float> %i.kw, i64 0
  %.reass270 = fmul reassoc nsz arcp contract afn float %i.nq, %factor.op.fmul269
  %i.nr = extractelement <2 x float> %i.kw, i64 1
  %.reass272 = fmul reassoc nsz arcp contract afn float %i.nr, %factor.op.fmul271
  %i.ns = fadd reassoc nsz arcp contract afn float %.reass272, %.reass270
  %.reass268 = fmul reassoc nsz arcp contract afn float %i.kz, %factor.op.fmul267
  %i.nt = fadd reassoc nsz arcp contract afn float %i.ns, %.reass268
  %i.nu = load float, ptr %i.ji, align 4, !tbaa !12
  %i.nv = fadd reassoc nsz arcp contract afn <2 x float> %i.nk, %i.nm
  %i.nw = fadd reassoc nsz arcp contract afn <2 x float> %i.nv, %i.np ; 2 uses
  store <2 x float> %i.nw, ptr %i.a, align 16, !tbaa !12
  %i.nx = load <2 x float>, ptr %7, align 4, !tbaa !12
  %i.ny = fmul reassoc nsz arcp contract afn <2 x float> %i.nw, <float 9.960780e-01, float f0x3F82A487>
  %i.nz = fdiv reassoc nsz arcp contract afn <2 x float> %i.ny, %i.nx
  %i.oa = fdiv reassoc nsz arcp contract afn float %i.nt, %i.nu
  br label %.loopexit

bb.j:                                             ; preds = %bb.g
  %i.ob = extractelement <2 x float> %i.kw, i64 0 ; 2 uses
  %i.oc = extractelement <2 x float> %i.kw, i64 1 ; 2 uses
  %i.od = insertelement <2 x float> poison, float %i.kz, i64 0
  %i.oe = shufflevector <2 x float> %i.od, <2 x float> poison, <2 x i32> zeroinitializer
  %i.of = fmul reassoc nsz arcp contract afn <2 x float> %i.oe, %i.hi
  %.reass264 = fmul reassoc nsz arcp contract afn float %i.ob, %factor.op.fmul263
  %.reass266 = fmul reassoc nsz arcp contract afn float %i.oc, %factor.op.fmul265
  %i.og = fadd reassoc nsz arcp contract afn float %.reass266, %.reass264
  %.reass262 = fmul reassoc nsz arcp contract afn float %i.kz, %factor.op.fmul261
  %i.oh = fadd reassoc nsz arcp contract afn float %i.og, %.reass262
  %i.oi = fmul reassoc nsz arcp contract afn float %i.ob, %.sroa.51228.0
  %i.oj = fmul reassoc nsz arcp contract afn float %i.oc, %.sroa.53229.0
  %i.ok = fadd reassoc nsz arcp contract afn float %i.oj, %i.oi
  %i.ol = fmul reassoc nsz arcp contract afn float %i.kz, %.sroa.55.0
  %i.om = fadd reassoc nsz arcp contract afn float %i.ok, %i.ol
  store float %i.om, ptr %.sink11.i.sroa.gep116, align 4, !tbaa !12
  %i.on = shufflevector <2 x float> %i.kw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
end_hunk_0
begin_hunk_1_@_loop_switch:bb.a
convert_any_XYZ_to_LMS.exit:                      ; preds = %bb.ab, %bb.ac, %bb.ad
  %i.xd = phi float [ %i.vo, %bb.ad ], [ %i.wu, %bb.ac ], [ %i.wc, %bb.ab ]
  %i.xe = phi float [ %i.vs, %bb.ad ], [ %i.wp, %bb.ac ], [ %i.vx, %bb.ab ]
  %.sink11.i.sroa.phi = phi ptr [ %.sink11.i.sroa.gep, %bb.ad ], [ %.sink11.i.sroa.gep116, %bb.ac ], [ %.sink11.i.sroa.gep116, %bb.ab ]
  %.sink.i69 = phi float [ %i.vr, %bb.ad ], [ %i.xc, %bb.ac ], [ %i.wk, %bb.ab ]
  store float %.sink.i69, ptr %.sink11.i.sroa.phi, align 4, !tbaa !12
  br label %bb.af

bb.ae:                                            ; preds = %_gamut_mapping.exit
  %i.xf = shufflevector <2 x float> %i.vp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.xg = fmul reassoc nsz arcp contract afn <4 x float> %i.xf, %i.jx
  %i.xh = shufflevector <2 x float> %i.vp, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.xi = fmul reassoc nsz arcp contract afn <4 x float> %i.xh, %i.ka
  %i.xj = shufflevector <2 x float> %i.vq, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.xk = fmul reassoc nsz arcp contract afn <4 x float> %i.xj, %i.jp
  %i.xl = fadd reassoc nsz arcp contract afn <4 x float> %i.xg, %i.xi
  %i.xm = fadd reassoc nsz arcp contract afn <4 x float> %i.xl, %i.xk ; 3 uses
  store <4 x float> %i.xm, ptr %i.a, align 16, !tbaa !12
  %i.xn = extractelement <4 x float> %i.xm, i64 0
  %i.xo = extractelement <4 x float> %i.xm, i64 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %convert_any_XYZ_to_LMS.exit
  %i.xp = phi float [ %i.xo, %bb.ae ], [ %i.xd, %convert_any_XYZ_to_LMS.exit ]
  %i.xq = phi float [ %i.xn, %bb.ae ], [ %i.xe, %convert_any_XYZ_to_LMS.exit ]
  br i1 %.not, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.xr = load <2 x float>, ptr %.sink11.i.sroa.gep, align 8, !tbaa !12
  %i.xs = insertelement <4 x float> poison, float %i.xq, i64 0
  %i.xt = insertelement <4 x float> %i.xs, float %i.xp, i64 1
  %i.xu = shufflevector <2 x float> %i.xr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.xv = shufflevector <4 x float> %i.xt, <4 x float> %i.xu, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.xw = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.xv, <4 x float> zeroinitializer)
  store <4 x float> %i.xw, ptr %i.a, align 16, !tbaa !12
  call fastcc void @_luma_chroma(ptr noundef %i.a, ptr noundef %8, ptr noundef %9, ptr noundef %i.b, i32 noundef %16)
  %i.xx = load <2 x float>, ptr %i.b, align 16, !tbaa !12
  %i.xy = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.xx, <2 x float> zeroinitializer)
  store <2 x float> %i.xy, ptr %i.b, align 16, !tbaa !12
  %i.xz = load float, ptr %i.jf, align 8, !tbaa !12
  %i.ya = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.xz, float 0.000000e+00)
  store float %i.ya, ptr %i.jf, align 8, !tbaa !12
  br label %bb.ah

.critedge:                                        ; preds = %bb.af
  call fastcc void @_luma_chroma(ptr noundef %i.a, ptr noundef %8, ptr noundef %9, ptr noundef %i.b, i32 noundef %16)
  br label %bb.ah

bb.ah:                                            ; preds = %.critedge, %bb.ag
  %i.yb = load float, ptr %i.b, align 16, !tbaa !12 ; 14 uses
  br i1 %.not58, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.yc = load float, ptr %10, align 4, !tbaa !12
  %i.yd = fmul reassoc nsz arcp contract afn float %i.yc, %i.yb
  %i.ye = load float, ptr %i.je, align 4, !tbaa !12
  %i.yf = load float, ptr %i.jk, align 4, !tbaa !12
  %i.yg = fmul reassoc nsz arcp contract afn float %i.yf, %i.ye
  %i.yh = fadd reassoc nsz arcp contract afn float %i.yg, %i.yd
  %i.yi = load float, ptr %i.jf, align 8, !tbaa !12
  %i.yj = load float, ptr %i.jl, align 4, !tbaa !12
  %i.yk = fmul reassoc nsz arcp contract afn float %i.yj, %i.yi
  %i.yl = fadd reassoc nsz arcp contract afn float %i.yh, %i.yk
  %i.ym = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.yl, float 0.000000e+00) ; 3 uses
  store float %i.ym, ptr %i.jf, align 8, !tbaa !12
  store float %i.ym, ptr %i.je, align 4, !tbaa !12
  store float %i.ym, ptr %i.b, align 16, !tbaa !12
  br label %bb.ar

bb.aj:                                            ; preds = %bb.ah
  br i1 %switch, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  switch i32 %15, label %bb.an [
    i32 2, label %bb.al
    i32 0, label %bb.al
    i32 1, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak
  %i.yn = fmul reassoc nsz arcp contract afn float %i.yb, f0x3F7CAC08
  %i.yo = load float, ptr %i.je, align 4, !tbaa !12 ; 4 uses
  %i.yp = fmul reassoc nsz arcp contract afn float %i.yo, -1.471000e-01
  %i.yq = fadd reassoc nsz arcp contract afn float %i.yp, %i.yn
  %i.yr = load float, ptr %i.jf, align 8, !tbaa !12 ; 4 uses
  %i.ys = fmul reassoc nsz arcp contract afn float %i.yr, 1.600000e-01
  %i.yt = fadd reassoc nsz arcp contract afn float %i.yq, %i.ys
  %i.yu = fmul reassoc nsz arcp contract afn float %i.yb, 4.323000e-01
  %i.yv = fmul reassoc nsz arcp contract afn float %i.yo, 5.184000e-01
  %i.yw = fadd reassoc nsz arcp contract afn float %i.yv, %i.yu
  %i.yx = fmul reassoc nsz arcp contract afn float %i.yr, 4.930000e-02
  %i.yy = fadd reassoc nsz arcp contract afn float %i.yw, %i.yx
  %i.yz = fmul reassoc nsz arcp contract afn float %i.yb, -8.500000e-03
  %i.za = fmul reassoc nsz arcp contract afn float %i.yo, 4.000000e-02
  %i.zb = fadd reassoc nsz arcp contract afn float %i.za, %i.yz
  %i.zc = fmul reassoc nsz arcp contract afn float %i.yr, 9.685000e-01
  %i.zd = fadd reassoc nsz arcp contract afn float %i.zb, %i.zc
  store float %i.zd, ptr %.sink11.i.sroa.gep, align 8, !tbaa !12
  %i.ze = fadd reassoc nsz arcp contract afn float %i.yo, %i.yb
  %i.zf = fadd reassoc nsz arcp contract afn float %i.ze, %i.yr
  %i.zg = fmul reassoc nsz arcp contract afn float %i.zf, 0.000000e+00
  br label %convert_any_LMS_to_XYZ.exit

bb.am:                                            ; preds = %bb.ak
  %i.zh = fmul reassoc nsz arcp contract afn float %i.yb, f0x3FEE583F
  %i.zi = load float, ptr %i.je, align 4, !tbaa !12 ; 4 uses
  %i.zj = fmul reassoc nsz arcp contract afn float %i.zi, f0xBF8170CE
  %i.zk = fadd reassoc nsz arcp contract afn float %i.zj, %i.zh
  %i.zl = load float, ptr %i.jf, align 8, !tbaa !12 ; 4 uses
  %i.zm = fmul reassoc nsz arcp contract afn float %i.zl, 1.491870e-01
  %i.zn = fadd reassoc nsz arcp contract afn float %i.zk, %i.zm
  %i.zo = fmul reassoc nsz arcp contract afn float %i.yb, 3.875200e-01
  %i.zp = fmul reassoc nsz arcp contract afn float %i.zi, 6.214470e-01
  %i.zq = fadd reassoc nsz arcp contract afn float %i.zp, %i.zo
  %i.zr = fmul reassoc nsz arcp contract afn float %i.zl, -8.974000e-03
  %i.zs = fadd reassoc nsz arcp contract afn float %i.zq, %i.zr
  %i.zt = fmul reassoc nsz arcp contract afn float %i.yb, -1.584100e-02
  %i.zu = fmul reassoc nsz arcp contract afn float %i.zi, -3.412300e-02
  %i.zv = fadd reassoc nsz arcp contract afn float %i.zu, %i.zt
  %i.zw = fmul reassoc nsz arcp contract afn float %i.zl, f0x3F866538
  %i.zx = fadd reassoc nsz arcp contract afn float %i.zv, %i.zw
  store float %i.zx, ptr %.sink11.i.sroa.gep, align 8, !tbaa !12
  %i.zy = fadd reassoc nsz arcp contract afn float %i.zi, %i.yb
  %i.zz = fadd reassoc nsz arcp contract afn float %i.zy, %i.zl
  %i.aaa = fmul reassoc nsz arcp contract afn float %i.zz, 0.000000e+00
  br label %convert_any_LMS_to_XYZ.exit

bb.an:                                            ; preds = %bb.ak
  %i.aab = load float, ptr %i.je, align 4, !tbaa !12
  %i.aac = load float, ptr %i.jf, align 8, !tbaa !12
  br label %convert_any_LMS_to_XYZ.exit

convert_any_LMS_to_XYZ.exit:                      ; preds = %bb.al, %bb.am, %bb.an
  %i.aad = phi float [ %i.aab, %bb.an ], [ %i.zs, %bb.am ], [ %i.yy, %bb.al ]
  %i.aae = phi float [ %i.yb, %bb.an ], [ %i.zn, %bb.am ], [ %i.yt, %bb.al ]
  %.sink11.i70.sroa.phi = phi ptr [ %.sink11.i.sroa.gep, %bb.an ], [ %.sink11.i.sroa.gep116, %bb.am ], [ %.sink11.i.sroa.gep116, %bb.al ]
  %.sink.i71 = phi float [ %i.aac, %bb.an ], [ %i.aaa, %bb.am ], [ %i.zg, %bb.al ]
  store float %.sink.i71, ptr %.sink11.i70.sroa.phi, align 4, !tbaa !12
  br label %bb.ap

bb.ao:                                            ; preds = %bb.aj
  %i.aaf = fmul reassoc nsz arcp contract afn float %i.yb, %i.kf
  %i.aag = load float, ptr %i.je, align 4, !tbaa !12 ; 4 uses
  %i.aah = fmul reassoc nsz arcp contract afn float %i.aag, %i.ki
  %i.aai = fadd reassoc nsz arcp contract afn float %i.aah, %i.aaf
  %i.aaj = load float, ptr %i.jf, align 8, !tbaa !12 ; 4 uses
  %i.aak = fmul reassoc nsz arcp contract afn float %i.aaj, %i.hs
  %i.aal = fadd reassoc nsz arcp contract afn float %i.aai, %i.aak
  %i.aam = fmul reassoc nsz arcp contract afn float %i.yb, %i.kg
  %i.aan = fmul reassoc nsz arcp contract afn float %i.aag, %i.kj
  %i.aao = fadd reassoc nsz arcp contract afn float %i.aan, %i.aam
  %i.aap = fmul reassoc nsz arcp contract afn float %i.aaj, %i.ht
  %i.aaq = fadd reassoc nsz arcp contract afn float %i.aao, %i.aap
  %i.aar = fmul reassoc nsz arcp contract afn float %i.yb, %i.hv
  %i.aas = fmul reassoc nsz arcp contract afn float %i.aag, %i.hx
  %i.aat = fadd reassoc nsz arcp contract afn float %i.aas, %i.aar
  %i.aau = fmul reassoc nsz arcp contract afn float %i.aaj, %i.hf
  %i.aav = fadd reassoc nsz arcp contract afn float %i.aat, %i.aau
  store float %i.aav, ptr %.sink11.i.sroa.gep, align 8, !tbaa !12
  %i.aaw = fmul reassoc nsz arcp contract afn float %i.yb, %i.hz
  %i.aax = fmul reassoc nsz arcp contract afn float %i.aag, %i.ib
  %i.aay = fadd reassoc nsz arcp contract afn float %i.aax, %i.aaw
  %i.aaz = fmul reassoc nsz arcp contract afn float %i.aaj, %i.id
  %i.aba = fadd reassoc nsz arcp contract afn float %i.aay, %i.aaz
  store float %i.aba, ptr %.sink11.i.sroa.gep116, align 4, !tbaa !12
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %convert_any_LMS_to_XYZ.exit
  %i.abb = phi float [ %i.aaq, %bb.ao ], [ %i.aad, %convert_any_LMS_to_XYZ.exit ] ; 4 uses
  %i.abc = phi float [ %i.aal, %bb.ao ], [ %i.aae, %convert_any_LMS_to_XYZ.exit ] ; 4 uses
  br i1 %.not, label %.critedge61, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.abd = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.abc, float 0.000000e+00) ; 4 uses
  store float %i.abd, ptr %i.a, align 16, !tbaa !12
  %i.abe = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.abb, float 0.000000e+00) ; 4 uses
  store float %i.abe, ptr %i.jh, align 4, !tbaa !12
  %i.abf = load float, ptr %.sink11.i.sroa.gep, align 8, !tbaa !12
  %i.abg = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.abf, float 0.000000e+00) ; 4 uses
  store float %i.abg, ptr %.sink11.i.sroa.gep, align 8, !tbaa !12
  %i.abh = fmul reassoc nsz arcp contract afn float %i.abd, %i.jq
  %i.abi = fmul reassoc nsz arcp contract afn float %i.abe, %i.in
  %i.abj = fadd reassoc nsz arcp contract afn float %i.abi, %i.abh
  %i.abk = fmul reassoc nsz arcp contract afn float %i.abg, %i.ig
  %i.abl = fadd reassoc nsz arcp contract afn float %i.abj, %i.abk
  %i.abm = fmul reassoc nsz arcp contract afn float %i.abd, %i.jr
  %i.abn = fmul reassoc nsz arcp contract afn float %i.abe, %i.io
  %i.abo = fadd reassoc nsz arcp contract afn float %i.abn, %i.abm
  %i.abp = fmul reassoc nsz arcp contract afn float %i.abg, %i.ij
  %i.abq = fadd reassoc nsz arcp contract afn float %i.abo, %i.abp
  %i.abr = fmul reassoc nsz arcp contract afn float %i.abd, %i.js
  %i.abs = fmul reassoc nsz arcp contract afn float %i.abe, %i.ip
  %i.abt = fadd reassoc nsz arcp contract afn float %i.abs, %i.abr
  %i.abu = fmul reassoc nsz arcp contract afn float %i.abg, %i.im
  %i.abv = fadd reassoc nsz arcp contract afn float %i.abt, %i.abu
  %i.abw = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.abl, float 0.000000e+00)
  store float %i.abw, ptr %i.b, align 16, !tbaa !12
  %i.abx = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.abq, float 0.000000e+00)
  store float %i.abx, ptr %i.je, align 4, !tbaa !12
  %i.aby = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.abv, float 0.000000e+00)
  br label %.sink.split

.critedge61:                                      ; preds = %bb.ap
  %i.abz = fmul reassoc nsz arcp contract afn float %i.abc, %i.jq
  %i.aca = fmul reassoc nsz arcp contract afn float %i.abb, %i.in
  %i.acb = fadd reassoc nsz arcp contract afn float %i.aca, %i.abz
  %i.acc = load float, ptr %.sink11.i.sroa.gep, align 8, !tbaa !12 ; 3 uses
  %i.acd = fmul reassoc nsz arcp contract afn float %i.acc, %i.ig
  %i.ace = fadd reassoc nsz arcp contract afn float %i.acb, %i.acd
  store float %i.ace, ptr %i.b, align 16, !tbaa !12
  %i.acf = fmul reassoc nsz arcp contract afn float %i.abc, %i.jr
  %i.acg = fmul reassoc nsz arcp contract afn float %i.abb, %i.io
  %i.ach = fadd reassoc nsz arcp contract afn float %i.acg, %i.acf
  %i.aci = fmul reassoc nsz arcp contract afn float %i.acc, %i.ij
  %i.acj = fadd reassoc nsz arcp contract afn float %i.ach, %i.aci
  store float %i.acj, ptr %i.je, align 4, !tbaa !12
  %i.ack = fmul reassoc nsz arcp contract afn float %i.abc, %i.js
  %i.acl = fmul reassoc nsz arcp contract afn float %i.abb, %i.ip
  %i.acm = fadd reassoc nsz arcp contract afn float %i.acl, %i.ack
  %i.acn = fmul reassoc nsz arcp contract afn float %i.acc, %i.im
  %i.aco = fadd reassoc nsz arcp contract afn float %i.acm, %i.acn
  br label %.sink.split

.sink.split:                                      ; preds = %bb.aq, %.critedge61
  %.sink273 = phi float [ %i.aco, %.critedge61 ], [ %i.aby, %bb.aq ]
  store float %.sink273, ptr %i.jf, align 8, !tbaa !12
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split, %bb.ai
  store float %i.lb, ptr %i.jg, align 4, !tbaa !12
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.054235
  %.val = load <4 x float>, ptr %i.b, align 16, !tbaa !103
  store <4 x float> %.val, ptr %i.acp, align 16, !tbaa !103, !alias.scope !371, !nontemporal !372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.acq = add nuw i64 %.054235, 4                ; 2 uses
  %i.acr = icmp ult i64 %i.acq, %i.ir
  br i1 %i.acr, label %bb.g, label %._crit_edge
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mouse_moved(ptr noundef %0, float noundef %1, float noundef %2, double noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca float, align 4                    ; 6 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.d = load i32, ptr %i.c, align 16, !tbaa !120
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !57  ; 22 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.y, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 640
  %i.i = load i32, ptr %i.h, align 64, !tbaa !161
  %.not44 = icmp eq i32 %i.i, 0
  br i1 %.not44, label %bb.y, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 328 ; 2 uses
  %i.k = load float, ptr %i.j, align 8, !tbaa !162
  %i.l = fcmp reassoc nsz arcp contract afn oeq float %i.k, -1.000000e+00
  br i1 %i.l, label %bb.y, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 340
  %i.n = load float, ptr %i.m, align 4, !tbaa !163
  %i.o = fcmp reassoc nsz arcp contract afn oeq float %i.n, -1.000000e+00
  br i1 %i.o, label %bb.y, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !73
  %i.r = call i32 @dt_dev_get_preview_size(ptr noundef %i.q, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #31
  %.not45 = icmp eq i32 %i.r, 0
  br i1 %.not45, label %bb.x, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 420
  %i.t = load i32, ptr %i.s, align 4, !tbaa !164
  %.not46 = icmp eq i32 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 3 uses
  %i.v = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.u) #31 ; 0 uses
  br i1 %.not46, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load float, ptr %i.a, align 4, !tbaa !12
  %i.x = fmul reassoc nsz arcp contract afn float %i.w, %1 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 432
  store float %i.x, ptr %i.y, align 16, !tbaa !165
  %i.z = load float, ptr %i.b, align 4, !tbaa !12
  %i.aa = fmul reassoc nsz arcp contract afn float %i.z, %2 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 436
  store float %i.aa, ptr %i.ab, align 4, !tbaa !166
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 424 ; 2 uses
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !167
  %i.ae = fsub reassoc nsz arcp contract afn float %i.x, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 428 ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !168
  %i.ah = fsub reassoc nsz arcp contract afn float %i.aa, %i.ag
  call fastcc void @_update_bounding_box(ptr noundef nonnull %i.f, float noundef %i.ae, float noundef %i.ah)
  %i.ai = load float, ptr %i.a, align 4, !tbaa !12
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ai, %1
  store float %i.aj, ptr %i.ac, align 8, !tbaa !167
  %i.ak = load float, ptr %i.b, align 4, !tbaa !12
  %i.al = fmul reassoc nsz arcp contract afn float %i.ak, %2
  store float %i.al, ptr %i.af, align 4, !tbaa !168
  %i.am = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.u) #31 ; 0 uses
  br label %.sink.split

bb.i:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 416 ; 6 uses
  store i32 0, ptr %i.an, align 32, !tbaa !169
  %i.ao = load float, ptr %i.a, align 4, !tbaa !12
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ao, %1 ; 4 uses
  %i.aq = load float, ptr %i.b, align 4, !tbaa !12
  %i.ar = fmul reassoc nsz arcp contract afn float %i.aq, %2 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.at = load float, ptr %i.j, align 8, !tbaa !162
  %i.au = fsub reassoc nsz arcp contract afn float %i.ap, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 332
  %i.aw = load float, ptr %i.av, align 4, !tbaa !163
  %i.ax = fsub reassoc nsz arcp contract afn float %i.ar, %i.aw
  %i.ay = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.au, float noundef %i.ax) #33
  %i.az = fcmp reassoc nsz arcp contract afn olt float %i.ay, 1.500000e+01
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.as, align 16, !tbaa !15
  store i32 1, ptr %i.an, align 32, !tbaa !169
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 0, ptr %i.as, align 16, !tbaa !15
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 336
  %i.bb = load float, ptr %i.ba, align 16, !tbaa !162
  %i.bc = fsub reassoc nsz arcp contract afn float %i.ap, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 340
  %i.be = load float, ptr %i.bd, align 4, !tbaa !163
  %i.bf = fsub reassoc nsz arcp contract afn float %i.ar, %i.be
  %i.bg = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.bc, float noundef %i.bf) #33
  %i.bh = fcmp reassoc nsz arcp contract afn olt float %i.bg, 1.500000e+01
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 404 ; 2 uses
  br i1 %i.bh, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.bi, align 4, !tbaa !15
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  store i32 1, ptr %i.bi, align 4, !tbaa !15
  store i32 1, ptr %i.an, align 32, !tbaa !169
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 344
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !162
  %i.bl = fsub reassoc nsz arcp contract afn float %i.ap, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 348
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !163
  %i.bo = fsub reassoc nsz arcp contract afn float %i.ar, %i.bn
  %i.bp = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.bl, float noundef %i.bo) #33
  %i.bq = fcmp reassoc nsz arcp contract afn olt float %i.bp, 1.500000e+01
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 408 ; 2 uses
  br i1 %i.bq, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.br, align 8, !tbaa !15
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  store i32 1, ptr %i.br, align 8, !tbaa !15
  store i32 1, ptr %i.an, align 32, !tbaa !169
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 352
  %i.bt = load float, ptr %i.bs, align 32, !tbaa !162
  %i.bu = fsub reassoc nsz arcp contract afn float %i.ap, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 356
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !163
  %i.bx = fsub reassoc nsz arcp contract afn float %i.ar, %i.bw
  %i.by = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.bu, float noundef %i.bx) #33
  %i.bz = fcmp reassoc nsz arcp contract afn olt float %i.by, 1.500000e+01
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 412 ; 2 uses
  br i1 %i.bz, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.ca, align 4, !tbaa !15
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  store i32 1, ptr %i.ca, align 4, !tbaa !15
  store i32 1, ptr %i.an, align 32, !tbaa !169
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cb = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.u) #31 ; 0 uses
  %i.cc = load i32, ptr %i.an, align 32, !tbaa !169
  %.not47 = icmp eq i32 %i.cc, 0
  br i1 %.not47, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @dt_control_change_cursor(ptr noundef nonnull @.str.82) #31
  br label %.sink.split

bb.w:                                             ; preds = %bb.u
  %i.cd = call ptr @gdk_display_get_default() #31
  %i.ce = call ptr @gdk_cursor_new_from_name(ptr noundef %i.cd, ptr noundef nonnull @.str.83) #31 ; 2 uses
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !170
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !373
  %i.ch = call ptr @dt_ui_main_window(ptr noundef %i.cg) #31
  %i.ci = call ptr @gtk_widget_get_window(ptr noundef %i.ch) #31
  call void @gdk_window_set_cursor(ptr noundef %i.ci, ptr noundef %i.ce) #31
  call void @g_object_unref(ptr noundef %i.ce) #31
  br label %.sink.split

.sink.split:                                      ; preds = %bb.v, %bb.w, %bb.h
  call void @dt_control_queue_redraw_center() #31
  br label %bb.x
end_hunk_1
