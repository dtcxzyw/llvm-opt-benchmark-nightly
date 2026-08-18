inline.NumInlined: 74
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@modify_roi_out:bb.a
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !116
  %i.bc = fmul reassoc nsz arcp contract afn float %i.az, %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store float %i.bc, ptr %i.bd, align 4, !tbaa !87
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.bf = load float, ptr %i.be, align 4, !tbaa !117
  %i.bg = fmul reassoc nsz arcp contract afn float %i.bf, %i.az ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  store float %i.bg, ptr %i.bh, align 4, !tbaa !88
  %i.bi = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.av, splat (float 5.000000e-01) ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.bn = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.as ; 2 uses
  %invariant.op = fmul reassoc nsz arcp contract afn float %i.bn, %i.bg
  %i.bo = shufflevector <2 x float> %i.av, <2 x float> %i.bi, <2 x i32> <i32 0, i32 2>
  %i.bp = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.bo, <float -5.000000e-01, float 1.000000e+00> ; 2 uses
  %i.bq = insertelement <2 x float> poison, float %.sroa.0341.0, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bs = fmul reassoc nsz arcp contract afn <2 x float> %i.bp, %i.br
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bu = insertelement <2 x float> poison, float %.sroa.7.0, i64 0
  %i.bv = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bw = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bx = fmul reassoc nsz arcp contract afn <4 x float> %i.bv, %i.bw
  %i.by = shufflevector <2 x float> %i.av, <2 x float> %i.bi, <2 x i32> <i32 1, i32 3>
  %i.bz = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.by, <float -5.000000e-01, float 1.000000e+00> ; 2 uses
  %i.ca = insertelement <2 x float> poison, float %.sroa.5342.0, i64 0
  %i.cb = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cc = shufflevector <2 x float> %i.ca, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cd = fmul reassoc nsz arcp contract afn <4 x float> %i.cb, %i.cc
  %i.ce = fmul reassoc nsz arcp contract afn <2 x float> %i.bz, %i.br
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cg = fsub reassoc nsz arcp contract afn <4 x float> %i.bt, %i.cd
  %i.ch = insertelement <4 x float> poison, float %i.as, i64 0
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cj = fdiv reassoc nsz arcp contract afn <4 x float> %i.cg, %i.ci ; 2 uses
  %i.ck = fsub reassoc nsz arcp contract afn <4 x float> %i.cf, %i.bx
  %i.cl = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cn = fmul reassoc nsz arcp contract afn <4 x float> %i.cj, %i.cm
  %i.co = fadd reassoc nsz arcp contract afn <4 x float> %i.cn, splat (float 1.000000e+00)
  %i.cp = fmul reassoc nsz arcp contract afn <4 x float> %i.co, %i.ck ; 2 uses
  %i.cq = insertelement <4 x float> poison, float %invariant.op, i64 0
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cs = fmul reassoc nsz arcp contract afn <4 x float> %i.cp, %i.cr
  %i.ct = fadd reassoc nsz arcp contract afn <4 x float> %i.cs, splat (float 1.000000e+00)
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> %i.cp, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cv = shufflevector <4 x float> %i.cj, <4 x float> poison, <5 x i32> <i32 0, i32 poison, i32 1, i32 2, i32 3>
  %i.cw = insertelement <5 x float> %i.cv, float %i.bn, i64 1
  %i.cx = shufflevector <5 x float> %i.cw, <5 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 3, i32 1, i32 4, i32 1>
  %i.cy = fmul reassoc nsz arcp contract afn <8 x float> %i.cu, %i.cx ; 10 uses
  %i.cz = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.cy, zeroinitializer
  %i.da = select <8 x i1> %i.cz, <8 x i64> <i64 2, i64 3, i64 2, i64 3, i64 2, i64 3, i64 2, i64 3>, <8 x i64> <i64 0, i64 1, i64 0, i64 1, i64 0, i64 1, i64 0, i64 1> ; 8 uses
  %i.db = extractelement <8 x i64> %i.da, i64 0
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.db ; 2 uses
  %i.dd = extractelement <8 x i64> %i.da, i64 1
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dd ; 2 uses
  %i.df = extractelement <8 x i64> %i.da, i64 2
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.df ; 2 uses
  %i.dh = extractelement <8 x i64> %i.da, i64 3
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dh ; 2 uses
  %i.dj = extractelement <8 x i64> %i.da, i64 4
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dj ; 2 uses
  %i.dl = extractelement <8 x i64> %i.da, i64 5
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dl ; 2 uses
  %i.dn = extractelement <8 x i64> %i.da, i64 6
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dn ; 2 uses
  %i.dp = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.cy) ; 8 uses
  %i.dq = extractelement <8 x float> %i.dp, i64 0
  %i.dr = fcmp reassoc nsz arcp contract afn ogt float %i.dq, 1.000000e-03 ; 2 uses
  %i.ds = extractelement <8 x float> %i.dp, i64 1
  %i.dt = fcmp reassoc nsz arcp contract afn ogt float %i.ds, 1.000000e-03 ; 2 uses
  %i.du = extractelement <8 x float> %i.dp, i64 2
  %i.dv = fcmp reassoc nsz arcp contract afn ogt float %i.du, 1.000000e-03 ; 2 uses
  %i.dw = extractelement <8 x float> %i.dp, i64 3
  %i.dx = fcmp reassoc nsz arcp contract afn ogt float %i.dw, 1.000000e-03 ; 2 uses
  %i.dy = extractelement <8 x float> %i.dp, i64 4
  %i.dz = fcmp reassoc nsz arcp contract afn ogt float %i.dy, 1.000000e-03 ; 2 uses
  %i.ea = extractelement <8 x float> %i.dp, i64 5
  %i.eb = fcmp reassoc nsz arcp contract afn ogt float %i.ea, 1.000000e-03 ; 2 uses
  %i.ec = extractelement <8 x float> %i.dp, i64 6
  %i.ed = fcmp reassoc nsz arcp contract afn ogt float %i.ec, 1.000000e-03 ; 2 uses
  %i.ee = extractelement <8 x float> %i.dp, i64 7
  %i.ef = fcmp reassoc nsz arcp contract afn ogt float %i.ee, 1.000000e-03 ; 2 uses
  %i.eg = extractelement <8 x i64> %i.da, i64 7
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.eg ; 2 uses
  %i.ei = shufflevector <2 x i32> %i.au, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.ej = extractelement <8 x float> %i.cy, i64 0 ; 2 uses
  %i.ek = extractelement <8 x float> %i.cy, i64 1 ; 2 uses
  %i.el = extractelement <8 x float> %i.cy, i64 2 ; 2 uses
  %i.em = extractelement <8 x float> %i.cy, i64 3 ; 2 uses
  %i.en = extractelement <8 x float> %i.cy, i64 4 ; 2 uses
  %i.eo = extractelement <8 x float> %i.cy, i64 5 ; 2 uses
  %i.ep = extractelement <8 x float> %i.cy, i64 6 ; 2 uses
  %i.eq = extractelement <8 x float> %i.cy, i64 7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.er = shufflevector <2 x i32> %i.au, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.es = sitofp <4 x i32> %i.er to <4 x float>
  %i.et = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.es, <float -5.000000e-01, float -5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  store <4 x float> %i.et, ptr %i.a, align 16, !tbaa !17
  br i1 %i.dr, label %bb.h, label %bb.i

.loopexit:                                        ; preds = %.loopexit.loopexit, %.thread
  %.pre = load i32, ptr %2, align 4, !tbaa !118
  br label %bb.au

bb.h:                                             ; preds = %bb.g
  %i.eu = load float, ptr %i.dc, align 8, !tbaa !17
  %i.ev = fdiv reassoc nsz arcp contract afn float %i.eu, %i.ej
  %i.ew = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ev, float 1.000000e+00)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.2 = phi nsz float [ %i.ew, %bb.h ], [ 1.000000e+00, %bb.g ] ; 2 uses
  br i1 %i.dt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ex = load float, ptr %i.de, align 4, !tbaa !17
  %i.ey = fdiv reassoc nsz arcp contract afn float %i.ex, %i.ek
  %i.ez = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2, float %i.ey)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2.1 = phi nsz float [ %i.ez, %bb.j ], [ %.2, %bb.i ] ; 2 uses
  br i1 %i.dv, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fa = load float, ptr %i.dg, align 8, !tbaa !17
  %i.fb = fdiv reassoc nsz arcp contract afn float %i.fa, %i.el
  %i.fc = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1, float %i.fb)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2.1308 = phi nsz float [ %i.fc, %bb.l ], [ %.2.1, %bb.k ] ; 2 uses
  br i1 %i.dx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fd = load float, ptr %i.di, align 4, !tbaa !17
  %i.fe = fdiv reassoc nsz arcp contract afn float %i.fd, %i.em
  %i.ff = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1308, float %i.fe)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2.1.1 = phi nsz float [ %i.ff, %bb.n ], [ %.2.1308, %bb.m ] ; 2 uses
  br i1 %i.dz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fg = load float, ptr %i.dk, align 8, !tbaa !17
  %i.fh = fdiv reassoc nsz arcp contract afn float %i.fg, %i.en
  %i.fi = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.1, float %i.fh)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.2.2 = phi nsz float [ %i.fi, %bb.p ], [ %.2.1.1, %bb.o ] ; 2 uses
  br i1 %i.eb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fj = load float, ptr %i.dm, align 4, !tbaa !17
  %i.fk = fdiv reassoc nsz arcp contract afn float %i.fj, %i.eo
  %i.fl = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.2, float %i.fk)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2.1.2 = phi nsz float [ %i.fl, %bb.r ], [ %.2.2, %bb.q ] ; 2 uses
  br i1 %i.ed, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fm = load float, ptr %i.do, align 8, !tbaa !17
  %i.fn = fdiv reassoc nsz arcp contract afn float %i.fm, %i.ep
  %i.fo = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.2, float %i.fn)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.2.3 = phi nsz float [ %i.fo, %bb.t ], [ %.2.1.2, %bb.s ] ; 2 uses
  br i1 %i.ef, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fp = load float, ptr %i.eh, align 4, !tbaa !17
  %i.fq = fdiv reassoc nsz arcp contract afn float %i.fp, %i.eq
  %i.fr = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.3, float %i.fq)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.2.1.3 = phi nsz float [ %i.fr, %bb.v ], [ %.2.3, %bb.u ] ; 3 uses
  %i.fs = fcmp reassoc nsz arcp contract afn ult float %.2.1.3, -1.000000e+00
  br i1 %i.fs, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store <2 x float> %i.bi, ptr %i.bj, align 4, !tbaa !17
  store i32 0, ptr %i.bk, align 4, !tbaa !89
  %i.ft = insertelement <2 x float> poison, float %.2.1.3, i64 0
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fv = fmul reassoc nsz arcp contract afn <2 x float> %i.fu, %i.av ; 2 uses
  %i.fw = load <2 x float>, ptr %i.bl, align 4, !tbaa !17
  %i.fx = load <2 x float>, ptr %i.bm, align 4, !tbaa !17 ; 2 uses
  %i.fy = fsub reassoc nsz arcp contract afn <2 x float> %i.fw, %i.fx
  %i.fz = fsub reassoc nsz arcp contract afn <2 x float> splat (float 5.000000e-01), %i.fx
  %i.ga = fmul reassoc nsz arcp contract afn <2 x float> %i.fv, %i.fz
  %5 = shufflevector <2 x float> %i.bi, <2 x float> %i.fv, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> %i.fy, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.gc = fsub reassoc nsz arcp contract afn <4 x float> %5, %i.gb
  %i.gd = fmul reassoc nsz arcp contract afn <4 x float> %5, %i.gb
  %i.ge = shufflevector <4 x float> %i.gc, <4 x float> %i.gd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gf = fptosi <4 x float> %i.ge to <4 x i32>
  store <4 x i32> %i.gf, ptr %2, align 4, !tbaa !27
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1255 = phi nsz float [ -1.000000e+00, %bb.w ], [ %.2.1.3, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.gg = shufflevector <2 x i32> %i.ei, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gh = sitofp <4 x i32> %i.gg to <4 x float>
  %i.gi = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.gh, <float -5.000000e-01, float -5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  store <4 x float> %i.gi, ptr %i.a, align 16, !tbaa !17
  br i1 %i.dr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gj = load float, ptr %i.dc, align 8, !tbaa !17
  %i.gk = fdiv reassoc nsz arcp contract afn float %i.gj, %i.ej
  %i.gl = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.gk, float 1.000000e+00)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.2.1384 = phi nsz float [ %i.gl, %bb.z ], [ 1.000000e+00, %bb.y ] ; 2 uses
  br i1 %i.dt, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gm = load float, ptr %i.de, align 4, !tbaa !17
  %i.gn = fdiv reassoc nsz arcp contract afn float %i.gm, %i.ek
  %i.go = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1384, float %i.gn)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.2.1.1385 = phi nsz float [ %i.go, %bb.ab ], [ %.2.1384, %bb.aa ] ; 2 uses
  br i1 %i.dv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gp = load float, ptr %i.dg, align 8, !tbaa !17
  %i.gq = fdiv reassoc nsz arcp contract afn float %i.gp, %i.el
  %i.gr = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.1385, float %i.gq)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.2.1308.1 = phi nsz float [ %i.gr, %bb.ad ], [ %.2.1.1385, %bb.ac ] ; 2 uses
  br i1 %i.dx, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gs = load float, ptr %i.di, align 4, !tbaa !17
  %i.gt = fdiv reassoc nsz arcp contract afn float %i.gs, %i.em
  %i.gu = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1308.1, float %i.gt)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.2.1.1.1 = phi nsz float [ %i.gu, %bb.af ], [ %.2.1308.1, %bb.ae ] ; 2 uses
  br i1 %i.dz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gv = load float, ptr %i.dk, align 8, !tbaa !17
  %i.gw = fdiv reassoc nsz arcp contract afn float %i.gv, %i.en
  %i.gx = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.1.1, float %i.gw)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.2.2.1 = phi nsz float [ %i.gx, %bb.ah ], [ %.2.1.1.1, %bb.ag ] ; 2 uses
  br i1 %i.eb, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gy = load float, ptr %i.dm, align 4, !tbaa !17
  %i.gz = fdiv reassoc nsz arcp contract afn float %i.gy, %i.eo
  %i.ha = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.2.1, float %i.gz)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2.1.2.1 = phi nsz float [ %i.ha, %bb.aj ], [ %.2.2.1, %bb.ai ] ; 2 uses
  br i1 %i.ed, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.hb = load float, ptr %i.do, align 8, !tbaa !17
  %i.hc = fdiv reassoc nsz arcp contract afn float %i.hb, %i.ep
  %i.hd = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.2.1, float %i.hc)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.2.3.1 = phi nsz float [ %i.hd, %bb.al ], [ %.2.1.2.1, %bb.ak ] ; 2 uses
  br i1 %i.ef, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.he = load float, ptr %i.eh, align 4, !tbaa !17
  %i.hf = fdiv reassoc nsz arcp contract afn float %i.he, %i.eq
  %i.hg = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.3.1, float %i.hf)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.2.1.3.1 = phi nsz float [ %i.hg, %bb.an ], [ %.2.3.1, %bb.am ] ; 2 uses
  %i.hh = fcmp reassoc nsz arcp contract afn ult float %.2.1.3.1, %.1255
  br i1 %i.hh, label %.loopexit.loopexit, label %.thread

.thread:                                          ; preds = %bb.ao
  store <2 x float> %i.bi, ptr %i.bj, align 4, !tbaa !17
  store i32 1, ptr %i.bk, align 4, !tbaa !89
  %i.hi = load <2 x float>, ptr %i.bl, align 4, !tbaa !17
  %i.hj = load <2 x float>, ptr %i.bm, align 4, !tbaa !17 ; 2 uses
  %i.hk = fsub reassoc nsz arcp contract afn <2 x float> %i.hi, %i.hj
  %i.hl = insertelement <2 x float> poison, float %.2.1.3.1, i64 0
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hn = fmul reassoc nsz arcp contract afn <2 x float> %i.hm, %i.av ; 2 uses
  %6 = shufflevector <2 x float> %i.bi, <2 x float> %i.hn, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %7 = shufflevector <2 x float> %i.hk, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %8 = shufflevector <2 x float> %i.hn, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.ho = fsub reassoc nsz arcp contract afn <2 x float> splat (float 5.000000e-01), %i.hj
  %9 = shufflevector <2 x float> %i.ho, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %10 = fmul reassoc nsz arcp contract afn <4 x float> %8, %9
  %11 = shufflevector <4 x float> %10, <4 x float> %7, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %12 = fsub reassoc nsz arcp contract afn <4 x float> %6, %11
  %i.hp = fmul reassoc nsz arcp contract afn <4 x float> %6, %11
  %13 = shufflevector <4 x float> %12, <4 x float> %i.hp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hq = fptosi <4 x float> %13 to <4 x i32>
  store <4 x i32> %i.hq, ptr %2, align 4, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit

bb.ap:                                            ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 16 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !114
  %i.hr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i32 0, ptr %i.hs, align 4, !tbaa !89
  %i.ht = load i32, ptr %i.ak, align 4, !tbaa !84
  %i.hu = icmp eq i32 %i.ht, 1
  %i.hv = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !87 ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !88 ; 5 uses
  %i.hz = load <2 x i32>, ptr %i.hr, align 8, !tbaa !27 ; 2 uses
  %i.ia = sitofp <2 x i32> %i.hz to <2 x float>   ; 11 uses
  %i.ib = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.ia, splat (float 5.000000e-01) ; 7 uses
  %i.ic = load <2 x float>, ptr %i.w, align 4, !tbaa !17 ; 6 uses
  %i.id = load <2 x float>, ptr %i.ac, align 4, !tbaa !17 ; 4 uses
  br i1 %i.hu, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.ap
  %i.ie = extractelement <2 x float> %i.ib, i64 0
  %i.if = fneg reassoc nsz arcp contract afn float %i.ie
  %i.ig = extractelement <2 x float> %i.ib, i64 1
  %i.ih = fneg reassoc nsz arcp contract afn float %i.ig ; 2 uses
  %i.ii = extractelement <2 x float> %i.ic, i64 1 ; 2 uses
  %i.ij = fmul reassoc nsz arcp contract afn float %i.ii, %i.ih
  %i.ik = extractelement <2 x float> %i.ia, i64 0
  %i.il = fmul reassoc nnan nsz arcp contract afn float %i.ik, 5.000000e-01
  %i.im = extractelement <2 x float> %i.ia, i64 1
  %i.in = fmul reassoc nnan nsz arcp contract afn float %i.im, 5.000000e-01 ; 2 uses
  %i.io = fmul reassoc nsz arcp contract afn float %i.ii, %i.in ; 2 uses
  %i.ip = extractelement <2 x float> %i.id, i64 1 ; 2 uses
  %i.iq = fmul reassoc nsz arcp contract afn float %i.ip, %i.in ; 2 uses
  %i.ir = fmul reassoc nsz arcp contract afn float %i.ip, %i.ih
  %i.is = shufflevector <2 x float> %i.ic, <2 x float> poison, <2 x i32> zeroinitializer
  %i.it = insertelement <2 x float> poison, float %i.if, i64 0
  %i.iu = insertelement <2 x float> %i.it, float %i.il, i64 1 ; 2 uses
  %i.iv = fmul reassoc nsz arcp contract afn <2 x float> %i.is, %i.iu ; 3 uses
  %i.iw = insertelement <2 x float> poison, float %i.ij, i64 0
  %i.ix = shufflevector <2 x float> %i.iw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iy = fadd reassoc nsz arcp contract afn <2 x float> %i.ix, %i.iv ; 2 uses
  %i.iz = extractelement <2 x float> %i.iv, i64 1
  %i.ja = fadd reassoc nsz arcp contract afn float %i.io, %i.iz ; 2 uses
  %i.jb = extractelement <2 x float> %i.iv, i64 0
  %i.jc = fadd reassoc nsz arcp contract afn float %i.io, %i.jb
  %i.jd = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> zeroinitializer
  %i.je = fmul reassoc nsz arcp contract afn <2 x float> %i.jd, %i.iu ; 3 uses
  %i.jf = fmul reassoc nsz arcp contract afn float %i.ja, %i.hw
  %i.jg = insertelement <2 x float> poison, float %i.hw, i64 0
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ji = fmul reassoc nsz arcp contract afn <2 x float> %i.iy, %i.jh
  %i.jj = extractelement <2 x float> %i.je, i64 1
  %i.jk = fadd reassoc nsz arcp contract afn float %i.iq, %i.jj
  %i.jl = insertelement <2 x float> poison, float %i.ir, i64 0
  %i.jm = shufflevector <2 x float> %i.jl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jn = fadd reassoc nsz arcp contract afn <2 x float> %i.jm, %i.je
  %i.jo = fadd reassoc nsz arcp contract afn float %i.jf, 1.000000e+00
  %i.jp = fadd reassoc nsz arcp contract afn <2 x float> %i.ji, splat (float 1.000000e+00)
  %i.jq = extractelement <2 x float> %i.je, i64 0
  %i.jr = fadd reassoc nsz arcp contract afn float %i.iq, %i.jq
  %i.js = fmul reassoc nsz arcp contract afn float %i.jk, %i.jo ; 2 uses
  %i.jt = fmul reassoc nsz arcp contract afn <2 x float> %i.jn, %i.jp ; 2 uses
  %i.ju = insertelement <2 x float> poison, float %i.hy, i64 0
  %i.jv = shufflevector <2 x float> %i.ju, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jw = fmul reassoc nsz arcp contract afn <2 x float> %i.jt, %i.jv
  %i.jx = fadd reassoc nsz arcp contract afn <2 x float> %i.jw, splat (float 1.000000e+00)
  %i.jy = fmul reassoc nsz arcp contract afn <2 x float> %i.jx, %i.iy
  %i.jz = fmul reassoc nsz arcp contract afn float %i.js, %i.hy
  %i.ka = fadd reassoc nsz arcp contract afn float %i.jz, 1.000000e+00
  %i.kb = fmul reassoc nsz arcp contract afn float %i.ka, %i.ja
  %i.kc = shufflevector <2 x float> %i.jt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.kd = insertelement <4 x float> %i.kc, float %i.js, i64 2
  %i.ke = insertelement <4 x float> %i.kd, float %i.jr, i64 3
  br label %.split296.us

.split.us:                                        ; preds = %bb.ap
  %i.kf = shufflevector <2 x float> %i.ib, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.kg = shufflevector <2 x float> %i.ia, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.kh = shufflevector <4 x float> %i.kg, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 0, i32 1, i32 7>
  %i.ki = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.kj = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.kk = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.kl = getelementptr inbounds nuw i8, ptr %i.c, i64 164
  %i.km = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  %i.kn = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.ko = load float, ptr %i.kl, align 4, !tbaa !119
  %i.kp = load float, ptr %i.kk, align 4, !tbaa !120
  %i.kq = load float, ptr %i.kj, align 4, !tbaa !102
  %i.kr = load float, ptr %i.ki, align 4, !tbaa !103
  %i.ks = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kt = shufflevector <2 x float> <float 0.000000e+00, float poison>, <2 x float> %i.ia, <2 x i32> <i32 0, i32 2>
  %i.ku = fdiv reassoc nsz arcp contract afn <2 x float> %i.kt, %i.ks
  %i.kv = insertelement <2 x float> %i.ia, float 0.000000e+00, i64 0
  %i.kw = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kx = fdiv reassoc nsz arcp contract afn <2 x float> %i.kv, %i.kw
  %i.ky = insertelement <2 x float> poison, float %i.kr, i64 0
  %i.kz = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> zeroinitializer
  %i.la = fsub reassoc nsz arcp contract afn <2 x float> %i.kx, %i.kz ; 2 uses
  %i.lb = load <4 x float>, ptr %i.km, align 4, !tbaa !17 ; 4 uses
  %i.lc = load <2 x float>, ptr %i.kn, align 4, !tbaa !17
  %i.ld = shufflevector <2 x float> %i.lc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.le = insertelement <2 x float> poison, float %i.kq, i64 0
  %i.lf = shufflevector <2 x float> %i.le, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lg = fsub reassoc nsz arcp contract afn <2 x float> %i.ku, %i.lf ; 2 uses
  %i.lh = insertelement <2 x float> poison, float %i.ko, i64 0
  %i.li = shufflevector <2 x float> %i.lh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lj = fmul reassoc nsz arcp contract afn <2 x float> %i.lg, %i.li ; 2 uses
  %i.lk = fadd reassoc nsz arcp contract afn <2 x float> %i.lj, splat (float 1.000000e+00)
  %i.ll = shufflevector <2 x float> %i.lk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.lm = shufflevector <2 x float> %i.lj, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.ln = shufflevector <3 x float> %i.lm, <3 x float> <float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 1, i32 5>
  %i.lo = fadd reassoc nsz arcp contract afn <4 x float> %i.ln, splat (float 1.000000e+00)
  %i.lp = shufflevector <2 x float> %i.lg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0> ; 2 uses
  %i.lq = shufflevector <4 x float> %i.lb, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.lr = fmul reassoc nsz arcp contract afn <4 x float> %i.lp, %i.lq ; 2 uses
  %i.ls = shufflevector <4 x float> %i.lb, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 2, i32 7>
  %i.lt = shufflevector <4 x float> %i.lp, <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x i32> <i32 0, i32 1, i32 1, i32 6>
  %i.lu = fmul reassoc nsz arcp contract afn <4 x float> %i.ls, %i.lt
  %i.lv = insertelement <2 x float> poison, float %i.kp, i64 0
  %i.lw = shufflevector <2 x float> %i.lv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lx = fmul reassoc nsz arcp contract afn <2 x float> %i.la, %i.lw ; 2 uses
  %i.ly = shufflevector <2 x float> %i.lx, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.lz = shufflevector <2 x float> %i.la, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.ma = shufflevector <4 x float> %i.lb, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.mb = fmul reassoc nsz arcp contract afn <4 x float> %i.lz, %i.ma ; 2 uses
  %i.mc = shufflevector <2 x float> %i.lx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.md = shufflevector <4 x float> %i.mc, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 1, i32 7>
  %i.me = fadd reassoc nsz arcp contract afn <4 x float> %i.lo, %i.md
  %i.mf = shufflevector <4 x float> %i.lb, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 3, i32 1, i32 3, i32 7>
  %i.mg = shufflevector <4 x float> %i.lz, <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x i32> <i32 0, i32 0, i32 2, i32 6>
  %i.mh = fmul reassoc nsz arcp contract afn <4 x float> %i.mf, %i.mg
  %i.mi = fadd reassoc nsz arcp contract afn <4 x float> %i.ll, %i.ly ; 2 uses
  %i.mj = fadd reassoc nsz arcp contract afn <4 x float> %i.mb, %i.lr
  %i.mk = fdiv reassoc nsz arcp contract afn <4 x float> %i.mj, %i.mi
  %i.ml = fadd reassoc nsz arcp contract afn <4 x float> %i.mh, %i.lu
  %i.mm = fdiv reassoc nsz arcp contract afn <4 x float> %i.ml, %i.me
  %i.mn = fadd reassoc nsz arcp contract afn <4 x float> %i.mk, %i.ld
  %i.mo = shufflevector <4 x float> %i.ld, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 0, i32 1, i32 7>
  %i.mp = fadd reassoc nsz arcp contract afn <4 x float> %i.mo, %i.mm
  %shift = shufflevector <4 x float> %i.mb, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd reassoc nsz arcp contract afn <4 x float> %shift, %i.lr
  %i.mq = fmul reassoc nsz arcp contract afn <4 x float> %i.mn, %i.kg
  %shift372 = shufflevector <4 x float> %i.mi, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop373 = fdiv reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop, %shift372
  %i.mr = fsub reassoc nsz arcp contract afn <4 x float> %i.mq, %i.kf ; 4 uses
  %i.ms = fadd reassoc nsz arcp contract afn <4 x float> %i.mp, <float -5.000000e-01, float -5.000000e-01, float -5.000000e-01, float -0.000000e+00>
  %i.mt = fmul reassoc nsz arcp contract afn <4 x float> %i.ms, %i.kh ; 3 uses
  %i.mu = extractelement <4 x float> %i.mr, i64 2
  %i.mv = extractelement <2 x float> %i.ic, i64 0 ; 2 uses
  %i.mw = fmul reassoc nsz arcp contract afn float %i.mv, %i.mu
  %foldExtExtBinop375 = fadd reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop373, %i.ld
  %i.mx = shufflevector <2 x float> %i.id, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.my = shufflevector <4 x float> %i.mx, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 0, i32 1, i32 7>
  %i.mz = fmul reassoc nsz arcp contract afn <4 x float> %i.my, %i.mt
  %foldExtExtBinop377 = fmul reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop375, %i.kg
  %i.na = extractelement <4 x float> %i.mt, i64 2
  %i.nb = extractelement <2 x float> %i.ic, i64 1 ; 2 uses
  %i.nc = fmul reassoc nsz arcp contract afn float %i.nb, %i.na
  %foldExtExtBinop379 = fsub reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop377, %i.kf ; 2 uses
  %i.nd = extractelement <4 x float> %foldExtExtBinop379, i64 0
  %i.ne = fadd reassoc nsz arcp contract afn float %i.nc, %i.mw ; 2 uses
  %i.nf = shufflevector <2 x float> %i.id, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ng = fmul reassoc nsz arcp contract afn <4 x float> %i.nf, %i.mr
  %i.nh = fadd reassoc nsz arcp contract afn <4 x float> %i.ng, %i.mz ; 2 uses
  %i.ni = shufflevector <4 x float> %i.mr, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.nj = fmul reassoc nsz arcp contract afn <2 x float> %i.ic, %i.ni
  %i.nk = shufflevector <2 x float> %i.ic, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.nl = shufflevector <4 x float> %i.mt, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.nm = fmul reassoc nsz arcp contract afn <2 x float> %i.nk, %i.nl
  %i.nn = fadd reassoc nsz arcp contract afn <2 x float> %i.nj, %i.nm ; 2 uses
  %i.no = shufflevector <2 x float> %i.nn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.np = insertelement <4 x float> %i.no, float %i.ne, i64 2
  %i.nq = shufflevector <4 x float> %i.np, <4 x float> %foldExtExtBinop379, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.nr = insertelement <4 x float> poison, float %i.hw, i64 0
  %i.ns = shufflevector <4 x float> %i.nr, <4 x float> %i.mx, <4 x i32> <i32 0, i32 0, i32 0, i32 4>
  %i.nt = fmul reassoc nsz arcp contract afn <4 x float> %i.nq, %i.ns
  %i.nu = fadd reassoc nsz arcp contract afn <4 x float> %i.nt, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -0.000000e+00> ; 2 uses
  %i.nv = fmul reassoc nsz arcp contract afn <4 x float> %i.nh, %i.nu ; 3 uses
  %i.nw = fadd reassoc nsz arcp contract afn <4 x float> %i.nh, %i.nu
  %i.nx = shufflevector <4 x float> %i.nv, <4 x float> %i.nw, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ny = shufflevector <4 x float> %i.nv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.nz = insertelement <2 x float> poison, float %i.hy, i64 0
  %i.oa = shufflevector <2 x float> %i.nz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ob = fmul reassoc nsz arcp contract afn <2 x float> %i.ny, %i.oa
  %i.oc = fadd reassoc nsz arcp contract afn <2 x float> %i.ob, splat (float 1.000000e+00)
  %i.od = fmul reassoc nsz arcp contract afn <2 x float> %i.oc, %i.nn
  %i.oe = extractelement <4 x float> %i.nv, i64 2
  %i.of = fmul reassoc nsz arcp contract afn float %i.oe, %i.hy
  %i.og = fadd reassoc nsz arcp contract afn float %i.of, 1.000000e+00
  %i.oh = fmul reassoc nsz arcp contract afn float %i.og, %i.ne
  %i.oi = fmul reassoc nsz arcp contract afn float %i.mv, %i.nd
  %i.oj = extractelement <4 x float> %i.mr, i64 3
  %i.ok = fmul reassoc nsz arcp contract afn float %i.nb, %i.oj
end_hunk_0
