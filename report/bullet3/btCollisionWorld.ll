Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btCollisionWorld?download=true
inline.NumInlined: 1116
inline.NumDeleted: 295
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN16btCollisionWorld25objectQuerySingleInternalEPK13btConvexShapeRK11btTransformS5_PK24btCollisionObjectWrapperRNS_20ConvexResultCallbackEf:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !48
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !tbaa.struct !48
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 48
  store float %i.ag, ptr %i.at, align 8, !tbaa !141
  %i.au = load ptr, ptr %4, align 8, !tbaa !11
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = invoke noundef float %i.aw(ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 8 dereferenceable(52) %10, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.k       ; 0 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.l

bb.i:                                             ; preds = %bb.b
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.j:                                             ; preds = %bb.c
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.m

bb.l:                                             ; preds = %bb.e, %bb.h, %bb.f, %bb.d
  call void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.bl

bb.m:                                             ; preds = %bb.k, %bb.j
  %.pn124 = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %i.az, %bb.j ]
  call void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #21
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i
  %.pn124.pn = phi { ptr, i32 } [ %.pn124, %bb.m ], [ %i.ay, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.bm

bb.o:                                             ; preds = %bb.a
  %i.bb = add nsw i32 %i.f, -21
  %i.bc = icmp ult i32 %i.bb, 9
  br i1 %i.bc, label %bb.p, label %bb.ap

bb.p:                                             ; preds = %bb.o
  switch i32 %i.f, label %bb.ah [
    i32 21, label %bb.q
    i32 28, label %bb.u
  ]

bb.q:                                             ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bk = load <3 x float>, ptr %i.d, align 4, !tbaa !57, !noalias !306 ; 7 uses
  %i.bl = shufflevector <3 x float> %i.bk, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.bm = load float, ptr %i.d, align 4, !tbaa !57, !noalias !306 ; 3 uses
  %i.bn = load <3 x float>, ptr %i.bd, align 4, !tbaa !57, !noalias !306 ; 5 uses
  %i.bo = shufflevector <3 x float> %i.bn, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.bp = load float, ptr %i.bd, align 4, !tbaa !57, !noalias !306 ; 3 uses
  %i.bq = extractelement <3 x float> %i.bn, i64 1
  %i.br = extractelement <3 x float> %i.bk, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.bs = load <2 x float>, ptr %i.bi, align 4, !tbaa !57 ; 2 uses
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bu = load float, ptr %i.bj, align 4, !tbaa !57
  %i.bv = load <3 x float>, ptr %i.be, align 4, !tbaa !57, !noalias !306 ; 6 uses
  %i.bw = shufflevector <3 x float> %i.bv, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.bx = load float, ptr %i.be, align 4, !tbaa !57, !noalias !306 ; 3 uses
  %i.by = load float, ptr %i.bf, align 4, !tbaa !57, !noalias !307
  %i.bz = fneg float %i.by                        ; 2 uses
  %i.ca = load float, ptr %i.bg, align 4, !tbaa !57, !noalias !307
  %i.cb = fneg float %i.ca                        ; 2 uses
  %i.cc = load float, ptr %i.bh, align 4, !tbaa !57, !noalias !307
  %i.cd = fneg float %i.cc                        ; 2 uses
  %i.ce = shufflevector <3 x float> %i.bn, <3 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.cf = insertelement <2 x float> %i.ce, float %i.bp, i64 0
  %i.cg = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x float> %i.cf, %i.ch
  %i.cj = shufflevector <3 x float> %i.bk, <3 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.ck = insertelement <2 x float> %i.cj, float %i.bm, i64 0
  %i.cl = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.cm, <2 x float> %i.ci)
  %i.co = insertelement <2 x float> %i.bs, float %i.cb, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.cq = fmul <4 x float> %i.bo, %i.cp
  %i.cr = insertelement <2 x float> %i.bt, float %i.bz, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ct = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bl, <4 x float> %i.cs, <4 x float> %i.cq)
  %i.cu = shufflevector <3 x float> %i.bv, <3 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.cv = insertelement <2 x float> %i.cu, float %i.bx, i64 0
  %i.cw = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.cx, <2 x float> %i.cn) ; 2 uses
  %i.cz = insertelement <4 x float> poison, float %i.cd, i64 0
  %i.da = insertelement <4 x float> %i.cz, float %i.bu, i64 1
  %i.db = shufflevector <4 x float> %i.da, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.dc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bw, <4 x float> %i.db, <4 x float> %i.ct) ; 4 uses
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.de = fadd <2 x float> %i.cy, %i.dd
  %shift = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.dc, %shift
  %i.df = extractelement <4 x float> %foldExtExtBinop, i64 0
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.df, i64 0
  store <2 x float> %i.de, ptr %11, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %i.dg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dj = load float, ptr %i.di, align 4, !tbaa !57
  %i.dk = extractelement <3 x float> %i.bk, i64 2
  %i.dl = extractelement <3 x float> %i.bv, i64 2 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.do = load <2 x float>, ptr %i.dh, align 4, !tbaa !57 ; 2 uses
  %i.dp = shufflevector <3 x float> %i.bn, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %i.dq = insertelement <4 x float> poison, float %i.bp, i64 0
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> %i.dp, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.dt = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.du = shufflevector <3 x float> %i.bk, <3 x float> poison, <4 x i32> <i32 poison, i32 1, i32 2, i32 poison>
  %i.dv = insertelement <4 x float> poison, float %i.bm, i64 0
  %i.dw = shufflevector <4 x float> %i.dv, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.dx = shufflevector <4 x float> %i.dw, <4 x float> %i.du, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dz = insertelement <4 x float> poison, float %i.dj, i64 0
  %i.ea = shufflevector <3 x float> %i.bv, <3 x float> poison, <4 x i32> <i32 poison, i32 1, i32 2, i32 poison>
  %i.eb = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.ed = shufflevector <4 x float> %i.ec, <4 x float> %i.ea, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ej = load float, ptr %i.dn, align 4, !tbaa !57, !noalias !308 ; 3 uses
  %i.ek = insertelement <2 x float> %i.dt, float %i.ej, i64 1
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.em = fmul <4 x float> %i.ds, %i.el
  %i.en = load <2 x float>, ptr %2, align 4, !tbaa !57, !noalias !308 ; 3 uses
  %i.eo = shufflevector <2 x float> %i.do, <2 x float> %i.en, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.ep = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eo, <4 x float> %i.dx, <4 x float> %i.em)
  %i.eq = fmul float %i.bq, %i.ej
  %i.er = extractelement <2 x float> %i.en, i64 0
  %i.es = tail call float @llvm.fmuladd.f32(float %i.er, float %i.br, float %i.eq)
  %i.et = insertelement <4 x float> poison, float %i.es, i64 0
  %i.eu = shufflevector <4 x float> %i.dp, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 1, i32 1, i32 2>
  %i.ev = shufflevector <3 x float> %i.bv, <3 x float> %i.bk, <4 x i32> <i32 1, i32 4, i32 4, i32 5>
  %i.ew = load <2 x float>, ptr %i.dy, align 4, !tbaa !57, !noalias !308 ; 3 uses
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ey = shufflevector <4 x float> %i.dz, <4 x float> %i.ex, <4 x i32> <i32 0, i32 0, i32 0, i32 4>
  %i.ez = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ey, <4 x float> %i.ed, <4 x float> %i.ep) ; 3 uses
  %i.fa = shufflevector <4 x float> %i.ez, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.fb = fadd <2 x float> %i.cy, %i.fa
  %shift363 = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop364 = fadd <4 x float> %i.dc, %shift363
  %i.fc = extractelement <4 x float> %foldExtExtBinop364, i64 0
  %.sroa.3.12.vec.insert.i4.i.i131 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fc, i64 0
  store <2 x float> %i.fb, ptr %12, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i131, ptr %i.dm, align 8
  %i.fd = shufflevector <2 x float> %i.en, <2 x float> %i.ew, <4 x i32> <i32 2, i32 1, i32 poison, i32 0>
  %i.fe = shufflevector <3 x float> %i.bk, <3 x float> %i.bv, <4 x i32> <i32 2, i32 4, i32 4, i32 5>
  %i.ff = extractelement <4 x float> %i.ez, i64 3
  store float %i.ff, ptr %13, align 4
  %.sroa.4285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.fg = load <2 x float>, ptr %i.ee, align 4, !tbaa !57, !noalias !308 ; 2 uses
  %i.fh = load float, ptr %i.eh, align 4, !tbaa !57, !noalias !308
  %i.fi = load <2 x float>, ptr %i.ef, align 4, !tbaa !57, !noalias !308 ; 3 uses
  %i.fj = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.fk = shufflevector <2 x float> %i.fi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fl = shufflevector <4 x float> %i.et, <4 x float> %i.fk, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.fm = insertelement <4 x float> %i.fl, float %i.ej, i64 3
  %i.fn = fmul <4 x float> %i.fm, %i.eu
  %i.fo = load <2 x float>, ptr %i.eg, align 4, !tbaa !57, !noalias !308 ; 2 uses
  %i.fp = load float, ptr %i.ei, align 4, !tbaa !57, !noalias !308
  %i.fq = shufflevector <2 x float> %i.fg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fr = shufflevector <4 x float> %i.fd, <4 x float> %i.fq, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.fs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fr, <4 x float> %i.ev, <4 x float> %i.fn) ; 2 uses
  %36 = insertelement <4 x float> %i.fq, float 0.000000e+00, i64 2
  %i.ft = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, float %i.bm, i64 0
  %37 = shufflevector <4 x float> %i.ft, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 poison>
  %i.fu = shufflevector <4 x float> %i.fs, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 poison, i32 poison, i32 6, i32 0> ; 2 uses
  %i.fv = shufflevector <2 x float> %i.fj, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.fw = shufflevector <2 x float> %i.fi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fx = fmul <4 x float> %i.fv, %i.fw
  %38 = shufflevector <4 x float> %i.fx, <4 x float> %i.fu, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.fy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %36, <4 x float> %37, <4 x float> %38)
  %i.fz = shufflevector <2 x float> %i.fo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %39 = insertelement <4 x float> %i.fz, float 0.000000e+00, i64 2
  %i.ga = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, float %i.bx, i64 0
  %40 = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 poison>
  %i.gb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %39, <4 x float> %40, <4 x float> %i.fy)
  %41 = shufflevector <4 x float> %i.gb, <4 x float> %i.fu, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.gc = shufflevector <2 x float> %i.ew, <2 x float> %i.fg, <4 x i32> <i32 2, i32 1, i32 poison, i32 0>
  %i.gd = shufflevector <4 x float> %i.gc, <4 x float> %i.fz, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ge = extractelement <2 x float> %i.fo, i64 0
  %i.gf = shufflevector <3 x float> %i.bn, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gg = fmul <2 x float> %i.gf, %i.fi           ; 2 uses
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gi = shufflevector <4 x float> %i.gh, <4 x float> %i.fs, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.gj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gd, <4 x float> %i.fe, <4 x float> %i.gi) ; 2 uses
  %i.gk = extractelement <4 x float> %i.gj, i64 0
  %i.gl = tail call noundef float @llvm.fmuladd.f32(float %i.ge, float %i.dl, float %i.gk)
  %i.gm = extractelement <2 x float> %i.gg, i64 1
  %i.gn = tail call float @llvm.fmuladd.f32(float %i.fh, float %i.dk, float %i.gm)
  %i.go = tail call noundef float @llvm.fmuladd.f32(float %i.fp, float %i.dl, float %i.gn)
  store <4 x float> %41, ptr %.sroa.4285.0..sroa_idx, align 4
  %.sroa.9289.16..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 20
  %i.gp = shufflevector <4 x float> %i.gj, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 1, i32 2, i32 6, i32 3>
  store <4 x float> %i.gp, ptr %.sroa.9289.16..sroa_idx, align 4
  %.sroa.14293.32..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 36
  store float %i.gl, ptr %.sroa.14293.32..sroa_idx, align 4
  %.sroa.15294.32..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 40
  store float %i.go, ptr %.sroa.15294.32..sroa_idx, align 4
  %.sroa.16295.32..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.16295.32..sroa_idx, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !66
  %i.gs = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 96
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = tail call noundef float %i.gu(ptr noundef nonnull align 8 dereferenceable(36) %i.b), !inline_history !281
  call void @_ZN28btTriangleConvexcastCallbackC2EPK13btConvexShapeRK11btTransformS5_S5_f(ptr noundef nonnull align 8 dereferenceable(248) %14, ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %i.d, float noundef %i.gv)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVZN16btCollisionWorld25objectQuerySingleInternalEPK13btConvexShapeRK11btTransformS5_PK24btCollisionObjectWrapperRNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback, i64 16), ptr %14, align 8, !tbaa !11
  %i.gw = getelementptr inbounds nuw i8, ptr %14, i64 224
  store ptr %4, ptr %i.gw, align 8, !tbaa !147
  %i.gx = getelementptr inbounds nuw i8, ptr %14, i64 232
  store ptr %i.gr, ptr %i.gx, align 8, !tbaa !148
  %i.gy = getelementptr inbounds nuw i8, ptr %14, i64 240
  store ptr %i.b, ptr %i.gy, align 8, !tbaa !309
  %i.gz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ha = load float, ptr %i.gz, align 8, !tbaa !137
  %i.hb = getelementptr inbounds nuw i8, ptr %14, i64 208
  store float %i.ha, ptr %i.hb, align 8, !tbaa !310
  %i.hc = getelementptr inbounds nuw i8, ptr %14, i64 216
  store float %5, ptr %i.hc, align 8, !tbaa !311
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.hd = load ptr, ptr %0, align 8, !tbaa !11
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load ptr, ptr %i.he, align 8
  invoke void %i.hf(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(64) %13, ptr noundef nonnull align 4 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(16) %16)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(109) %i.b, ptr noundef nonnull %14, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(16) %16)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.bl

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.bm

bb.u:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12btConvexCast10CastResultE, i64 16), ptr %17, align 8, !tbaa !11
  %i.hh = getelementptr inbounds nuw i8, ptr %17, i64 168 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %17, i64 176
  store ptr null, ptr %i.hi, align 8, !tbaa !74
  %i.hj = getelementptr inbounds nuw i8, ptr %17, i64 184
  %i.hk = getelementptr inbounds nuw i8, ptr %17, i64 188
  store i32 32, ptr %i.hk, align 4, !tbaa !76
  %i.hl = getelementptr inbounds nuw i8, ptr %17, i64 192
  store float f0x38D1B717, ptr %i.hl, align 8, !tbaa !77
  store float %5, ptr %i.hj, align 8, !tbaa !75
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.hn = load float, ptr %i.hm, align 8, !tbaa !137
  store float %i.hn, ptr %i.hh, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  invoke void @_ZN27btContinuousConvexCollisionC1EPK13btConvexShapePK18btStaticPlaneShape(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef %0, ptr noundef nonnull %i.b)
          to label %bb.v unwind label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.ho = load ptr, ptr %18, align 8, !tbaa !11
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = invoke noundef zeroext i1 %i.hq(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %i.d, ptr noundef nonnull align 4 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(196) %17)
          to label %bb.w unwind label %bb.ac

bb.w:                                             ; preds = %bb.v
  br i1 %i.hr, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.hs = getelementptr inbounds nuw i8, ptr %17, i64 136 ; 3 uses
  %i.ht = load float, ptr %i.hs, align 8, !tbaa !57 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %17, i64 140 ; 2 uses
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !57 ; 3 uses
  %i.hw = fmul float %i.hv, %i.hv
  %i.hx = call float @llvm.fmuladd.f32(float %i.ht, float %i.ht, float %i.hw)
  %i.hy = getelementptr inbounds nuw i8, ptr %17, i64 144 ; 2 uses
  %i.hz = load float, ptr %i.hy, align 8, !tbaa !57 ; 3 uses
  %i.ia = call noundef float @llvm.fmuladd.f32(float %i.hz, float %i.hz, float %i.hx) ; 2 uses
  %i.ib = fcmp ogt float %i.ia, f0x38D1B717
  br i1 %i.ib, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.ic = load float, ptr %i.hh, align 8, !tbaa !80 ; 2 uses
  %i.id = load float, ptr %i.hm, align 8, !tbaa !137
  %i.ie = fcmp olt float %i.ic, %i.id
  br i1 %i.ie, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %sqrt.i.i134 = call noundef float @llvm.sqrt.f32(float %i.ia)
  %i.if = fdiv float 1.000000e+00, %sqrt.i.i134   ; 3 uses
  %i.ig = fmul float %i.ht, %i.if
  store float %i.ig, ptr %i.hs, align 8, !tbaa !57
  %i.ih = fmul float %i.hv, %i.if
  store float %i.ih, ptr %i.hu, align 4, !tbaa !57
  %i.ii = fmul float %i.hz, %i.if
  store float %i.ii, ptr %i.hy, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  %i.ij = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !66
  %i.il = getelementptr inbounds nuw i8, ptr %17, i64 152
  store ptr %i.ik, ptr %19, align 8, !tbaa !139
  %i.im = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr null, ptr %i.im, align 8, !tbaa !140
  %i.in = getelementptr inbounds nuw i8, ptr %19, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.in, ptr noundef nonnull align 8 dereferenceable(16) %i.hs, i64 16, i1 false), !tbaa.struct !48
  %i.io = getelementptr inbounds nuw i8, ptr %19, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.io, ptr noundef nonnull align 8 dereferenceable(16) %i.il, i64 16, i1 false), !tbaa.struct !48
  %i.ip = getelementptr inbounds nuw i8, ptr %19, i64 48
  store float %i.ic, ptr %i.ip, align 8, !tbaa !141
  %i.iq = load ptr, ptr %4, align 8, !tbaa !11
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = invoke noundef float %i.is(ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 8 dereferenceable(52) %19, i1 noundef zeroext true)
          to label %bb.aa unwind label %bb.ad     ; 0 uses

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.ae

bb.ab:                                            ; preds = %bb.u
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ac:                                            ; preds = %bb.v
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ad:                                            ; preds = %bb.z
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.af

bb.ae:                                            ; preds = %bb.x, %bb.aa, %bb.y, %bb.w
  call void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %bb.bl

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %.pn121 = phi { ptr, i32 } [ %i.iw, %bb.ad ], [ %i.iv, %bb.ac ]
  call void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %18) #21
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ab
  %.pn121.pn = phi { ptr, i32 } [ %.pn121, %bb.af ], [ %i.iu, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %bb.bm

bb.ah:                                            ; preds = %bb.p
  %i.ix = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.iy = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.iz = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.jb = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.jc = load float, ptr %i.iz, align 4, !tbaa !57, !noalias !312 ; 3 uses
  %i.jd = load float, ptr %i.ja, align 4, !tbaa !57, !noalias !312 ; 3 uses
  %i.je = load float, ptr %i.jb, align 4, !tbaa !57, !noalias !312 ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.jg = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.jh = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.jk = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.jm = load <2 x float>, ptr %i.d, align 4, !tbaa !57, !noalias !312 ; 6 uses
  %i.jn = load <2 x float>, ptr %i.ix, align 4, !tbaa !57, !noalias !312 ; 6 uses
  %i.jo = load <2 x float>, ptr %i.iy, align 4, !tbaa !57, !noalias !312 ; 6 uses
  %i.jp = load float, ptr %i.jf, align 4, !tbaa !57, !noalias !313
  %i.jq = fneg float %i.jp                        ; 2 uses
  %i.jr = load float, ptr %i.jg, align 4, !tbaa !57, !noalias !313
  %i.js = fneg float %i.jr                        ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK16btCollisionWorld15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RNS_20ConvexResultCallbackEf:bb.a
  %i.cy = zext <2 x i1> %i.cx to <2 x i32>
  store <2 x i32> %i.cy, ptr %i.cw, align 8, !tbaa !165
  %i.cz = fcmp olt float %i.cu, 0.000000e+00
  %i.da = zext i1 %i.cz to i32
  %i.db = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i32 %i.da, ptr %i.db, align 8, !tbaa !165
  %foldExtExtBinop = fmul <2 x float> %i.by, %.sroa.0.0.i
  %i.dc = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.dd = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i, float %i.cf, float %i.dc)
  %i.de = call noundef float @llvm.fmuladd.f32(float %.sroa.12.8.vec.extract.i, float %i.cd, float %i.dd)
  %i.df = getelementptr inbounds nuw i8, ptr %16, i64 36
  store float %i.de, ptr %i.df, align 4, !tbaa !166
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !30 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !11
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.dk = load ptr, ptr %i.dj, align 8
  invoke void %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %12)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  ret void

bb.h:                                             ; preds = %bb.a
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.c, %bb.b
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.dm, %bb.i ], [ %i.dl, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn18.pn = phi { ptr, i32 } [ %i.dn, %bb.k ], [ %.pn.pn, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  resume { ptr, i32 } %.pn18.pn
}

declare void @_ZNK16btCollisionShape21calculateTemporalAabbERK11btTransformRK9btVector3S5_fRS3_S6_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), float noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16btCollisionWorld11contactTestEP17btCollisionObjectRNS_21ContactResultCallbackE(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(20) %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.btVector3, align 4           ; 4 uses
  %4 = alloca %class.btVector3, align 4           ; 4 uses
  %5 = alloca %struct.btSingleContactCallback, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 4 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV23btSingleContactCallback, i64 16), ptr %5, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.g, align 8, !tbaa !172
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %0, ptr %i.h, align 8, !tbaa !173
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %2, ptr %i.i, align 8, !tbaa !174
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN24btBroadphaseAabbCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16btCollisionWorld15contactPairTestEP17btCollisionObjectS1_RNS_21ContactResultCallbackE(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(20) %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.btCollisionObjectWrapper, align 8 ; 12 uses
  %5 = alloca %struct.btCollisionObjectWrapper, align 8 ; 12 uses
  %6 = alloca %struct.btBridgedManifoldResult, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %4, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %1, ptr %i.e, align 8, !tbaa !66
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.c, ptr %i.f, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr null, ptr %i.g, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 -1, ptr %i.h, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 -1, ptr %i.i, align 4, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %5, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.k, ptr %i.m, align 8, !tbaa !65
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %2, ptr %i.n, align 8, !tbaa !66
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.l, ptr %i.o, align 8, !tbaa !67
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr null, ptr %i.p, align 8, !tbaa !68
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 -1, ptr %i.q, align 8, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 -1, ptr %i.r, align 4, !tbaa !70
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28   ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call noundef ptr %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null, i32 noundef 2) ; 6 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZN16btManifoldResultC2EPK24btCollisionObjectWrapperS2_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %4, ptr noundef nonnull %5)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV23btBridgedManifoldResult, i64 16), ptr %6, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %3, ptr %i.y, align 8, !tbaa !174
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aa = load float, ptr %i.z, align 8, !tbaa !346
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 48
  store float %i.aa, ptr %i.ab, align 8, !tbaa !347
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(49) %i.ac, ptr noundef nonnull %6)
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !11
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.x) #21
  %i.ai = load ptr, ptr %i.s, align 8, !tbaa !28  ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 120
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16btCollisionWorld15debugDrawObjectERK11btTransformPK16btCollisionShapeRK9btVector3(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.btTransform, align 16        ; 8 uses
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  %6 = alloca %class.btVector3, align 8           ; 5 uses
  %7 = alloca %class.btTransform, align 8         ; 14 uses
  %8 = alloca %class.btVector3, align 8           ; 5 uses
  %9 = alloca %class.btVector3, align 8           ; 5 uses
  %10 = alloca %class.btVector3, align 8          ; 5 uses
  %11 = alloca %class.btVector3, align 16         ; 4 uses
  %12 = alloca %class.btVector3, align 8          ; 5 uses
  %13 = alloca %class.btVector3, align 8          ; 5 uses
  %14 = alloca %class.btVector3, align 16         ; 5 uses
  %15 = alloca %class.btVector3, align 8          ; 5 uses
  %16 = alloca %class.btVector3, align 8          ; 5 uses
  %17 = alloca %class.btVector3, align 8          ; 5 uses
  %18 = alloca %class.btVector3, align 16         ; 5 uses
  %19 = alloca %class.btVector3, align 16         ; 5 uses
  %20 = alloca %class.DebugDrawcallback, align 8  ; 14 uses
  %21 = alloca %class.btVector3, align 16         ; 5 uses
  %22 = alloca %class.btVector3, align 16         ; 5 uses
  %23 = alloca %class.DebugDrawcallback, align 8  ; 13 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(121) %0)
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.m = and i32 %i.l, 32768
  %.not134 = icmp eq i32 %i.m, 0
  br i1 %.not134, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %0, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 4 dereferenceable(64) %1, float noundef 1.000000e-01)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !51   ; 2 uses
  switch i32 %i.v, label %bb.o [
    i32 31, label %bb.e
    i32 0, label %bb.g
    i32 8, label %bb.h
    i32 9, label %bb.i
    i32 10, label %bb.k
    i32 11, label %bb.l
    i32 13, label %bb.m
    i32 28, label %bb.n
  ]

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.x = load i32, ptr %i.w, align 4, !tbaa !120  ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph258, label %.loopexit254

.lr.ph258:                                        ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ak = zext nneg i32 %i.x to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph258, %bb.f
  %indvars.iv276 = phi i64 [ %i.ak, %.lr.ph258 ], [ %indvars.iv.next277, %bb.f ] ; 2 uses
  %indvars.iv.next277 = add nsw i64 %indvars.iv276, -1 ; 2 uses
  %i.al = load ptr, ptr %i.z, align 8, !tbaa !129
  %i.am = getelementptr inbounds nuw [88 x i8], ptr %i.al, i64 %indvars.iv.next277 ; 13 uses
  %.sroa.4237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %.sroa.5238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.8241.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 20
  %.sroa.9242.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %.sroa.12245.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 36
  %.sroa.13246.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %.sroa.16249.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 52
  %.sroa.17250.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !131
  %i.as = load <2 x float>, ptr %i.am, align 8    ; 2 uses
  %i.at = load <2 x float>, ptr %i.an, align 8    ; 2 uses
  %i.au = load <2 x float>, ptr %i.ap, align 8    ; 3 uses
  %i.av = shufflevector <2 x float> %i.at, <2 x float> %i.au, <4 x i32> <i32 0, i32 1, i32 poison, i32 3>
  %i.aw = shufflevector <2 x float> %i.as, <2 x float> %i.au, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.ax = load <2 x float>, ptr %i.ao, align 8    ; 2 uses
  %i.ay = load <2 x float>, ptr %.sroa.4237.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5238.0.copyload = load float, ptr %.sroa.5238.0..sroa_idx, align 8
  %i.az = load <2 x float>, ptr %.sroa.8241.16..sroa_idx, align 4 ; 2 uses
  %.sroa.9242.16.copyload = load float, ptr %.sroa.9242.16..sroa_idx, align 8
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bb = shufflevector <4 x float> %i.av, <4 x float> %i.ba, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bc = shufflevector <2 x float> %i.ay, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bd = shufflevector <4 x float> %i.aw, <4 x float> %i.bc, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.be = load <2 x float>, ptr %.sroa.12245.32..sroa_idx, align 4 ; 2 uses
  %.sroa.13246.32.copyload = load float, ptr %.sroa.13246.32..sroa_idx, align 8
  %i.bf = shufflevector <2 x float> %i.at, <2 x float> %i.az, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.bg = insertelement <4 x float> %i.bf, float 1.000000e+00, i64 3 ; 2 uses
  %i.bh = shufflevector <2 x float> %i.as, <2 x float> %i.ay, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.bi = insertelement <4 x float> %i.bh, float 0.000000e+00, i64 3 ; 2 uses
  %i.bj = shufflevector <2 x float> %i.ax, <2 x float> %i.be, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.bk = insertelement <4 x float> %i.bj, float 0.000000e+00, i64 3 ; 2 uses
  %i.bl = shufflevector <2 x float> %i.ax, <2 x float> %i.be, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %i.bm = insertelement <4 x float> %i.bi, float %.sroa.5238.0.copyload, i64 2
  %i.bn = insertelement <4 x float> %i.bk, float %.sroa.13246.32.copyload, i64 2
  %.sroa.17250.48.copyload = load float, ptr %.sroa.17250.48..sroa_idx, align 8 ; 2 uses
  %.sroa.16249.48.copyload = load float, ptr %.sroa.16249.48..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.bo = load <2 x float>, ptr %1, align 4, !tbaa !57, !noalias !364 ; 3 uses
  %i.bp = load <2 x float>, ptr %i.aa, align 4, !tbaa !57, !noalias !364 ; 3 uses
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.br = fmul <4 x float> %i.bq, %i.bg
  %i.bs = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.bt = insertelement <4 x float> %i.bs, float -0.000000e+00, i64 3
  %i.bu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bi, <4 x float> %i.bt, <4 x float> %i.br)
  %i.bv = shufflevector <2 x float> %i.bp, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.bw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bk, <4 x float> %i.bv, <4 x float> %i.bu)
  %i.bx = load <2 x float>, ptr %i.ad, align 4, !tbaa !57, !noalias !364 ; 3 uses
  %i.by = load <2 x float>, ptr %i.ae, align 4, !tbaa !57, !noalias !364 ; 3 uses
  %i.bz = shufflevector <2 x float> %i.bx, <2 x float> %i.bo, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ca = fmul <4 x float> %i.bb, %i.bz
  %i.cb = shufflevector <2 x float> %i.bx, <2 x float> %i.bo, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.cc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bd, <4 x float> %i.cb, <4 x float> %i.ca)
  %i.cd = insertelement <4 x float> %i.bl, float %.sroa.17250.48.copyload, i64 3
  %i.ce = shufflevector <2 x float> %i.by, <2 x float> %i.bp, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.cf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cd, <4 x float> %i.ce, <4 x float> %i.cc) ; 2 uses
  %i.cg = load float, ptr %i.af, align 4, !tbaa !57, !noalias !363
  %i.ch = extractelement <4 x float> %i.cf, i64 3
  %i.ci = fadd float %i.ch, %i.cg
  %i.cj = load <2 x float>, ptr %i.ag, align 4, !tbaa !57, !noalias !363
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cl = load <2 x float>, ptr %i.ab, align 4, !tbaa !57, !noalias !364 ; 4 uses
  %i.cm = load <2 x float>, ptr %i.ac, align 4, !tbaa !57, !noalias !364 ; 3 uses
  %i.cn = insertelement <2 x float> poison, float %.sroa.16249.48.copyload, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = shufflevector <2 x float> %i.by, <2 x float> %i.cm, <2 x i32> <i32 0, i32 2>
  %i.cq = fmul <2 x float> %i.co, %i.cp
  %i.cr = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = shufflevector <2 x float> %i.bx, <2 x float> %i.cl, <2 x i32> <i32 0, i32 2>
  %i.ct = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %i.cs, <2 x float> %i.cq)
  %i.cu = insertelement <2 x float> poison, float %.sroa.17250.48.copyload, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = shufflevector <2 x float> %i.by, <2 x float> %i.cm, <2 x i32> <i32 1, i32 3>
  %i.cx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.cw, <2 x float> %i.ct)
  %i.cy = fadd <2 x float> %i.cx, %i.ck           ; 2 uses
  %i.cz = insertelement <2 x float> %i.cy, float 0.000000e+00, i64 1
  store <4 x float> %i.bw, ptr %4, align 16, !alias.scope !363
  %i.da = shufflevector <2 x float> %i.cl, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.db = insertelement <4 x float> %i.da, float 0.000000e+00, i64 3
  %i.dc = insertelement <4 x float> %i.db, float %.sroa.9242.16.copyload, i64 2
  %i.dd = shufflevector <2 x float> %i.cl, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.de = shufflevector <4 x float> %i.bg, <4 x float> %i.dd, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.df = fmul <4 x float> %i.dc, %i.de
  %i.dg = shufflevector <2 x float> %i.cl, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.dh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %i.dg, <4 x float> %i.df)
  %i.di = shufflevector <2 x float> %i.cm, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.dk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> %i.dj, <4 x float> %i.dh)
  %i.dl = insertelement <2 x float> %i.cy, float %i.ci, i64 0
  store <4 x float> %i.dk, ptr %i.ah, align 16, !alias.scope !363
  %i.dm = insertelement <4 x float> %i.cf, float 0.000000e+00, i64 3
  store <4 x float> %i.dm, ptr %i.ai, align 16, !alias.scope !363
  store <2 x float> %i.dl, ptr %i.aj, align 16, !alias.scope !363
  store <2 x float> %i.cz, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !47, !alias.scope !363
  %i.dn = load ptr, ptr %0, align 8, !tbaa !11
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef %i.ar, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.dq = icmp samesign ugt i64 %indvars.iv276, 1
  br i1 %i.dq, label %bb.f, label %.loopexit254, !llvm.loop !352

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.dr, align 8
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.67.0.copyload.i = load <2 x float>, ptr %.sroa.67.0..sroa_idx.i, align 8, !tbaa !47 ; 2 uses
  %i.ds = load ptr, ptr %2, align 8, !tbaa !11
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 96
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = tail call noundef float %i.du(ptr noundef nonnull align 8 dereferenceable(80) %2), !inline_history !353
  %i.dw = load ptr, ptr %2, align 8, !tbaa !11
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = tail call noundef float %i.dy(ptr noundef nonnull align 8 dereferenceable(80) %2), !inline_history !353
  %i.ea = load ptr, ptr %2, align 8, !tbaa !11
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 96
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = tail call noundef float %i.ec(ptr noundef nonnull align 8 dereferenceable(80) %2), !inline_history !353
  %i.ee = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.ef = insertelement <2 x float> %i.ee, float %i.dz, i64 1
  %i.eg = fadd <2 x float> %.sroa.03.0.copyload.i, %i.ef ; 2 uses
  %.sroa.67.8.vec.extract.i = extractelement <2 x float> %.sroa.67.0.copyload.i, i64 0
  %i.eh = fadd float %.sroa.67.8.vec.extract.i, %i.ed ; 2 uses
  %.sroa.67.8.vec.insert.i = insertelement <2 x float> %.sroa.67.0.copyload.i, float %i.eh, i64 0
  store <2 x float> %i.eg, ptr %5, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.67.8.vec.insert.i, ptr %i.ei, align 8
  %i.ej = load ptr, ptr %0, align 8, !tbaa !11
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = tail call noundef ptr %i.el(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.en = fneg <2 x float> %i.eg
  %i.eo = fneg float %i.eh
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eo, i64 0
  store <2 x float> %i.en, ptr %6, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.ep, align 8
  %i.eq = load ptr, ptr %i.em, align 8, !tbaa !11
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 160
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(8) %i.em, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.loopexit254

bb.h:                                             ; preds = %bb.d
  %i.et = load ptr, ptr %2, align 8, !tbaa !11
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 96
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = tail call noundef float %i.ev(ptr noundef nonnull align 8 dereferenceable(72) %2)
  %i.ex = load ptr, ptr %0, align 8, !tbaa !11
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = tail call noundef ptr %i.ez(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !11
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 48
  %i.fd = load ptr, ptr %i.fc, align 8
  tail call void %i.fd(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, float noundef %i.ew, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %3)
  br label %.loopexit254

bb.i:                                             ; preds = %bb.d
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 116
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !368 ; 2 uses
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %.lr.ph, label %.loopexit254

.lr.ph:                                           ; preds = %bb.i
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.5.0..sroa_idx.i145 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.6.0..sroa_idx.i146 = getelementptr inbounds nuw i8, ptr %7, i64 12
  %24 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.10.16..sroa_idx.i148 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.11.16..sroa_idx.i149 = getelementptr inbounds nuw i8, ptr %7, i64 28
  %25 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.fu = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 48
  %.sroa.4.0..sroa_idx.i153 = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.fw = zext nneg i32 %i.ff to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ %i.fw, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.fx = load ptr, ptr %i.fh, align 8, !tbaa !369
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %i.fx, i64 %indvars.iv.next ; 3 uses
  %.sroa.19.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %.sroa.20.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.fz = load ptr, ptr %0, align 8, !tbaa !11
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  %i.gb = load ptr, ptr %i.ga, align 8
  %.sroa.17.48.copyload = load float, ptr %i.fy, align 4 ; 2 uses
  %.sroa.19.48.copyload = load float, ptr %.sroa.19.48..sroa_idx, align 4 ; 2 uses
  %.sroa.20.48.copyload = load float, ptr %.sroa.20.48..sroa_idx, align 4 ; 2 uses
  %i.gc = call noundef ptr %i.gb(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  %i.gd = load ptr, ptr %i.fi, align 8, !tbaa !373
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv.next
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %26 = load float, ptr %i.fk, align 4, !tbaa !57, !noalias !375 ; 2 uses
  %27 = load float, ptr %i.fn, align 4, !tbaa !57, !noalias !375 ; 3 uses
  %i.gg = load float, ptr %i.fq, align 4, !tbaa !57, !noalias !375 ; 3 uses
  %i.gh = load <2 x float>, ptr %i.fr, align 4, !tbaa !57, !noalias !374
  %28 = load float, ptr %i.fs, align 4, !tbaa !57, !noalias !374
  %29 = load <2 x float>, ptr %1, align 4, !tbaa !57, !noalias !375 ; 4 uses
  %30 = extractelement <2 x float> %29, i64 0
  %31 = insertelement <2 x float> poison, float %26, i64 0 ; 2 uses
  %32 = shufflevector <2 x float> %31, <2 x float> poison, <2 x i32> zeroinitializer
  %33 = load <2 x float>, ptr %i.fl, align 4, !tbaa !57, !noalias !375 ; 4 uses
  %34 = insertelement <2 x float> poison, float %.sroa.19.48.copyload, i64 0
  %35 = shufflevector <2 x float> %34, <2 x float> poison, <2 x i32> zeroinitializer
  %36 = shufflevector <2 x float> %29, <2 x float> %33, <2 x i32> <i32 1, i32 3>
  %37 = fmul <2 x float> %35, %36
  %38 = insertelement <2 x float> poison, float %.sroa.17.48.copyload, i64 0
  %39 = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> zeroinitializer
  %40 = shufflevector <2 x float> %29, <2 x float> %33, <2 x i32> <i32 0, i32 2>
  %41 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %39, <2 x float> %40, <2 x float> %37)
  %42 = insertelement <2 x float> poison, float %.sroa.20.48.copyload, i64 0
  %43 = shufflevector <2 x float> %42, <2 x float> poison, <2 x i32> zeroinitializer
  %44 = insertelement <2 x float> %31, float %27, i64 1
  %45 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %43, <2 x float> %44, <2 x float> %41)
  %46 = fadd <2 x float> %45, %i.gh
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.i146, align 4, !tbaa !47, !alias.scope !374
  %47 = extractelement <2 x float> %33, i64 0
  %i.gi = insertelement <2 x float> poison, float %27, i64 0
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> zeroinitializer
  %48 = load <4 x float>, ptr %i.fj, align 4
  %49 = load float, ptr %i.fm, align 4, !tbaa !57, !noalias !375
  %50 = insertelement <4 x float> %48, float %49, i64 1
  %51 = shufflevector <4 x float> %50, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %52 = fmul <4 x float> %51, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00> ; 3 uses
  %53 = extractelement <4 x float> %52, i64 2
  %54 = fadd float %30, %53
  %55 = insertelement <4 x float> poison, float %54, i64 0
  %56 = shufflevector <2 x float> %29, <2 x float> %33, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %57 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %56, <4 x float> zeroinitializer, <4 x float> %52) ; 4 uses
  %58 = shufflevector <4 x float> %55, <4 x float> %57, <2 x i32> <i32 0, i32 4>
  %59 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %32, <2 x float> zeroinitializer, <2 x float> %58)
  %60 = extractelement <4 x float> %57, i64 2
  %61 = fadd float %26, %60
  store <2 x float> %59, ptr %7, align 8, !alias.scope !374
  store float %61, ptr %.sroa.5.0..sroa_idx.i145, align 8, !alias.scope !374
  %62 = extractelement <4 x float> %52, i64 3
  %i.gk = fadd float %47, %62
  %63 = insertelement <4 x float> poison, float %i.gk, i64 0
  %64 = shufflevector <4 x float> %63, <4 x float> %57, <2 x i32> <i32 0, i32 5>
  %65 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gj, <2 x float> zeroinitializer, <2 x float> %64)
  %66 = extractelement <4 x float> %57, i64 3
  %67 = fadd float %27, %66
  store <2 x float> %65, ptr %24, align 8, !alias.scope !374
  store float %67, ptr %.sroa.10.16..sroa_idx.i148, align 8, !alias.scope !374
  store float 0.000000e+00, ptr %.sroa.11.16..sroa_idx.i149, align 4, !tbaa !47, !alias.scope !374
  %68 = load float, ptr %i.fo, align 4, !tbaa !57, !noalias !375 ; 4 uses
  %69 = load float, ptr %i.fp, align 4, !tbaa !57, !noalias !375 ; 3 uses
  %70 = fmul float %69, 0.000000e+00              ; 2 uses
  %i.gl = fadd float %68, %70
  %71 = call float @llvm.fmuladd.f32(float %68, float 0.000000e+00, float %69)
  %72 = insertelement <2 x float> poison, float %i.gg, i64 0
  %73 = shufflevector <2 x float> %72, <2 x float> poison, <2 x i32> zeroinitializer
  %74 = insertelement <2 x float> poison, float %i.gl, i64 0
  %75 = insertelement <2 x float> %74, float %71, i64 1
  %76 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %73, <2 x float> zeroinitializer, <2 x float> %75)
  %77 = call float @llvm.fmuladd.f32(float %68, float 0.000000e+00, float %70)
  %i.gm = fadd float %i.gg, %77
  %78 = fmul float %.sroa.19.48.copyload, %69
  %79 = call float @llvm.fmuladd.f32(float %.sroa.17.48.copyload, float %68, float %78)
  %80 = call noundef float @llvm.fmuladd.f32(float %.sroa.20.48.copyload, float %i.gg, float %79)
  %81 = fadd float %80, %28
  %.sroa.3.12.vec.insert.i4.i.i143 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %81, i64 0
  store <2 x float> %76, ptr %25, align 8, !alias.scope !374
  store float %i.gm, ptr %i.ft, align 8, !alias.scope !374
  store float 0.000000e+00, ptr %i.fu, align 4, !tbaa !47, !alias.scope !374
  store <2 x float> %46, ptr %i.fv, align 8, !alias.scope !374
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i143, ptr %.sroa.4.0..sroa_idx.i153, align 8, !tbaa !47, !alias.scope !374
  %i.gn = load ptr, ptr %i.gc, align 8, !tbaa !11
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 48
  %i.gp = load ptr, ptr %i.go, align 8
  call void %i.gp(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, float noundef %i.gf, ptr noundef nonnull align 4 dereferenceable(64) %7, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.gq = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.gq, label %bb.j, label %.loopexit254, !llvm.loop !358

bb.k:                                             ; preds = %bb.d
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !379 ; 3 uses
  %i.gt = add nsw i32 %i.gs, 2
  %i.gu = srem i32 %i.gt, 3
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.gw = sext i32 %i.gu to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.gw
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !57
  %i.gz = sext i32 %i.gs to i64
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.gz
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !57
  %i.hc = load ptr, ptr %0, align 8, !tbaa !11
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 40
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = tail call noundef ptr %i.he(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !11
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 168
  %i.hi = load ptr, ptr %i.hh, align 8
  tail call void %i.hi(ptr noundef nonnull align 8 dereferenceable(8) %i.hf, float noundef %i.gy, float noundef %i.hb, i32 noundef %i.gs, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %3)
  br label %.loopexit254

bb.l:                                             ; preds = %bb.d
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !381
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.hm = load float, ptr %i.hl, align 8, !tbaa !382
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !165
  %i.hp = load ptr, ptr %0, align 8, !tbaa !11
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 40
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = tail call noundef ptr %i.hr(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !11
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 184
  %i.hv = load ptr, ptr %i.hu, align 8
  tail call void %i.hv(ptr noundef nonnull align 8 dereferenceable(8) %i.hs, float noundef %i.hk, float noundef %i.hm, i32 noundef %i.ho, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %3)
  br label %.loopexit254

bb.m:                                             ; preds = %bb.d
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !384 ; 2 uses
  %i.hy = load ptr, ptr %2, align 8, !tbaa !11
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 184
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = tail call noundef float %i.ia(ptr noundef nonnull align 8 dereferenceable(76) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.03.0.copyload.i154 = load <2 x float>, ptr %i.ic, align 8
  %.sroa.67.0..sroa_idx.i155 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.67.0.copyload.i156 = load <2 x float>, ptr %.sroa.67.0..sroa_idx.i155, align 8, !tbaa !47 ; 2 uses
  %i.id = load ptr, ptr %2, align 8, !tbaa !11
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 96
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = tail call noundef float %i.if(ptr noundef nonnull align 8 dereferenceable(76) %2), !inline_history !359
  %i.ih = load ptr, ptr %2, align 8, !tbaa !11
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 96
  %i.ij = load ptr, ptr %i.ii, align 8
  %i.ik = tail call noundef float %i.ij(ptr noundef nonnull align 8 dereferenceable(76) %2), !inline_history !359
  %i.il = load ptr, ptr %2, align 8, !tbaa !11
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 96
  %i.in = load ptr, ptr %i.im, align 8
  %i.io = tail call noundef float %i.in(ptr noundef nonnull align 8 dereferenceable(76) %2), !inline_history !359
  %i.ip = insertelement <2 x float> poison, float %i.ig, i64 0
  %i.iq = insertelement <2 x float> %i.ip, float %i.ik, i64 1
  %i.ir = fadd <2 x float> %.sroa.03.0.copyload.i154, %i.iq
  %.sroa.67.8.vec.extract.i161 = extractelement <2 x float> %.sroa.67.0.copyload.i156, i64 0
  %i.is = fadd float %.sroa.67.8.vec.extract.i161, %i.io
  %.sroa.67.8.vec.insert.i162 = insertelement <2 x float> %.sroa.67.0.copyload.i156, float %i.is, i64 0
  store <2 x float> %i.ir, ptr %8, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %.sroa.67.8.vec.insert.i162, ptr %i.it, align 8
  %i.iu = sext i32 %i.hx to i64
  %i.iv = getelementptr inbounds [4 x i8], ptr %8, i64 %i.iu
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.ix = load ptr, ptr %0, align 8, !tbaa !11
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 40
  %i.iz = load ptr, ptr %i.iy, align 8
  %i.ja = tail call noundef ptr %i.iz(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !11
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 176
  %i.jd = load ptr, ptr %i.jc, align 8
  tail call void %i.jd(ptr noundef nonnull align 8 dereferenceable(8) %i.ja, float noundef %i.ib, float noundef %i.iw, i32 noundef %i.hx, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %3)
  br label %.loopexit254

bb.n:                                             ; preds = %bb.d
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.jf = load float, ptr %i.je, align 4, !tbaa !57
  %i.jg = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.jh = load ptr, ptr %0, align 8, !tbaa !11
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 40
  %i.jj = load ptr, ptr %i.ji, align 8
  %i.jk = tail call noundef ptr %i.jj(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !11
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 192
  %i.jn = load ptr, ptr %i.jm, align 8
  tail call void %i.jn(ptr noundef nonnull align 8 dereferenceable(8) %i.jk, ptr noundef nonnull align 4 dereferenceable(16) %i.jg, float noundef %i.jf, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %3)
  br label %.loopexit254

bb.o:                                             ; preds = %bb.d
  %i.jo = icmp slt i32 %i.v, 7
  br i1 %i.jo, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.jp = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !387 ; 4 uses
  %.not135 = icmp eq ptr %i.jq, null
  br i1 %.not135, label %.preheader, label %.preheader252

.preheader252:                                    ; preds = %bb.p
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 44 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !391
  %i.jt = icmp sgt i32 %i.js, 0
  br i1 %i.jt, label %.lr.ph268, label %.loopexit

.lr.ph268:                                        ; preds = %.preheader252
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 56 ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 24 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.kf = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.kg = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.kh = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.q

.preheader:                                       ; preds = %bb.p
  %i.ki = load ptr, ptr %2, align 8, !tbaa !11
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 208
  %i.kk = load ptr, ptr %i.kj, align 8
  %i.kl = tail call noundef i32 %i.kk(ptr noundef nonnull align 8 dereferenceable(80) %2)
  %i.km = icmp sgt i32 %i.kl, 0
  br i1 %i.km, label %.lr.ph270, label %.loopexit

.lr.ph270:                                        ; preds = %.preheader
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.kv = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.kw = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.kx = getelementptr inbounds nuw i8, ptr %17, i64 8
  br label %bb.t

bb.q:                                             ; preds = %.lr.ph268, %bb.s
  %indvars.iv282 = phi i64 [ 0, %.lr.ph268 ], [ %indvars.iv.next283, %bb.s ] ; 5 uses
  %i.ky = load ptr, ptr %i.ju, align 8, !tbaa !392 ; 2 uses
  %i.kz = getelementptr inbounds nuw [48 x i8], ptr %i.ky, i64 %indvars.iv282 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 4
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !181 ; 3 uses
  %i.lc = icmp sgt i32 %i.lb, 0
  br i1 %i.lc, label %.lr.ph264.preheader, label %.loopexit251

.lr.ph264.preheader:                              ; preds = %bb.q
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !182
  %i.lf = zext nneg i32 %i.lb to i64
  %i.lg = getelementptr [4 x i8], ptr %i.le, i64 %i.lf
  %i.lh = getelementptr i8, ptr %i.lg, i64 -4
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !165
  br label %.lr.ph264

.lr.ph264:                                        ; preds = %.lr.ph264.preheader, %.lr.ph264
  %indvars.iv279 = phi i64 [ 0, %.lr.ph264.preheader ], [ %indvars.iv.next280, %.lr.ph264 ] ; 2 uses
  %i.lj = phi ptr [ %i.ky, %.lr.ph264.preheader ], [ %i.og, %.lr.ph264 ]
  %.0129262 = phi i32 [ %i.li, %.lr.ph264.preheader ], [ %i.lp, %.lr.ph264 ]
  %i.lk = phi <3 x float> [ zeroinitializer, %.lr.ph264.preheader ], [ %i.lv, %.lr.ph264 ]
  %i.ll = getelementptr inbounds nuw [48 x i8], ptr %i.lj, i64 %indvars.iv282
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !182
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %indvars.iv279
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !165 ; 2 uses
  %i.lq = load ptr, ptr %i.jv, align 8, !tbaa !369
  %i.lr = sext i32 %i.lp to i64                   ; 2 uses
  %i.ls = getelementptr inbounds [16 x i8], ptr %i.lq, i64 %i.lr
  %i.lt = load <3 x float>, ptr %i.ls, align 4, !tbaa !57
  %i.lu = shufflevector <3 x float> %i.lt, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.lv = fadd <3 x float> %i.lk, %i.lu           ; 2 uses
  %i.lw = load ptr, ptr %0, align 8, !tbaa !11
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 40
end_hunk_1
