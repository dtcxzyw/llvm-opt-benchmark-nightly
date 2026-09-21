Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/lights?download=true
inline.NumInlined: 8455
inline.NumDeleted: 1612
loop-unroll.NumCompletelyUnrolled: 70
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_ZNK4pbrt8Triangle3PDFERKNS_18ShapeSampleContextENS_7Vector3IfEE:bb.a
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !348
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !350  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !353
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !354
  %i.ae = mul nsw i32 %i.ad, 3
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.af ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !355 ; 3 uses
  %i.aj = load i32, ptr %i.ag, align 4, !tbaa !78
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [12 x i8], ptr %i.ai, i64 %i.ak ; 2 uses
  %.sroa.029.0.copyload.i = load <2 x float>, ptr %i.al, align 4 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !78
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [12 x i8], ptr %i.ai, i64 %i.ao ; 2 uses
  %.sroa.453.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !78
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [12 x i8], ptr %i.ai, i64 %i.as ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.au = load <2 x float>, ptr %i.ap, align 4
  %i.av = load <2 x float>, ptr %.sroa.453.0..sroa_idx.i, align 4
  %i.aw = load <2 x float>, ptr %i.at, align 4
  %i.ax = load <2 x float>, ptr %.sroa.4.0..sroa_idx.i, align 4
  %i.ay = fsub <2 x float> %i.au, %.sroa.029.0.copyload.i ; 2 uses
  %i.az = shufflevector <2 x float> %.sroa.029.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ba = insertelement <2 x float> %i.az, float %.sroa.5.0.copyload.i, i64 1 ; 2 uses
  %i.bb = fsub <2 x float> %i.av, %i.ba           ; 3 uses
  %i.bc = fsub <2 x float> %i.aw, %.sroa.029.0.copyload.i ; 3 uses
  %i.bd = fsub <2 x float> %i.ax, %i.ba           ; 2 uses
  %i.be = extractelement <2 x float> %i.ay, i64 0 ; 2 uses
  %i.bf = extractelement <2 x float> %i.bd, i64 1 ; 2 uses
  %i.bg = fmul float %i.be, %i.bf                 ; 2 uses
  %i.bh = fneg float %i.bg
  %i.bi = extractelement <2 x float> %i.bb, i64 1
  %i.bj = extractelement <2 x float> %i.bc, i64 0
  %i.bk = call noundef float @llvm.fma.f32(float %i.bi, float %i.bj, float %i.bh)
  %i.bl = fneg float %i.be
  %i.bm = call noundef float @llvm.fma.f32(float %i.bl, float %i.bf, float %i.bg)
  %i.bn = fadd float %i.bk, %i.bm                 ; 2 uses
  %i.bo = fmul <2 x float> %i.bb, %i.bc           ; 2 uses
  %i.bp = fneg <2 x float> %i.bo
  %i.bq = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ay, <2 x float> %i.bd, <2 x float> %i.bp)
  %i.br = fneg <2 x float> %i.bb
  %i.bs = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.br, <2 x float> %i.bc, <2 x float> %i.bo)
  %i.bt = fadd <2 x float> %i.bq, %i.bs           ; 2 uses
  %i.bu = fmul float %i.bn, %i.bn
  %i.bv = fmul <2 x float> %i.bt, %i.bt           ; 2 uses
  %i.bw = extractelement <2 x float> %i.bv, i64 1
  %i.bx = fadd float %i.bw, %i.bu
  %i.by = extractelement <2 x float> %i.bv, i64 0
  %i.bz = fadd float %i.by, %i.bx
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.bz)
  %i.ca = fmul float %sqrt.i.i, 5.000000e-01
  %i.cb = fdiv float 1.000000e+00, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.0142.0.copyload = load <2 x float>, ptr %i.cc, align 8 ; 2 uses
  %.sroa.2143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.2143.0.copyload = load float, ptr %.sroa.2143.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0339.0.vec.extract = extractelement <2 x float> %2, i64 0
  %i.cd = fneg float %.sroa.0339.0.vec.extract
  %.sroa.0339.4.vec.extract = extractelement <2 x float> %2, i64 1
  %i.ce = fneg float %.sroa.0339.4.vec.extract
  %i.cf = fneg float %3                           ; 2 uses
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0142.0.copyload, i64 0
  %.sroa.04.4.vec.extract.i.i = extractelement <2 x float> %.sroa.0142.0.copyload, i64 1
  %i.cg = fmul float %.sroa.2143.0.copyload, %i.cf ; 2 uses
  %i.ch = call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i.i, float %i.ce, float %i.cg)
  %i.ci = fneg float %i.cg
  %i.cj = call noundef float @llvm.fma.f32(float %.sroa.2143.0.copyload, float %i.cf, float %i.ci)
  %i.ck = fadd float %i.ch, %i.cj
  %i.cl = call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i.i, float %i.cd, float %i.ck)
  %i.cm = call noundef float @llvm.fabs.f32(float %i.cl)
  %.sroa.0.sroa.3.0.copyload.i185 = load float, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 4
  %.sroa.0.sroa.4.0.copyload.i187 = load float, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 4
  %i.cn = fadd float %.sroa.0.sroa.3.0.copyload.i185, %.sroa.0.sroa.4.0.copyload.i187
  %i.co = fmul float %i.cn, 5.000000e-01
  %.sroa.0.sroa.3.0..sroa_idx.i201 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.0.sroa.3.0.copyload.i202 = load float, ptr %.sroa.0.sroa.3.0..sroa_idx.i201, align 8
  %.sroa.0.sroa.4.0..sroa_idx.i203 = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.0.sroa.4.0.copyload.i204 = load float, ptr %.sroa.0.sroa.4.0..sroa_idx.i203, align 4
  %i.cp = fadd float %.sroa.0.sroa.3.0.copyload.i202, %.sroa.0.sroa.4.0.copyload.i204
  %i.cq = fmul float %i.cp, 5.000000e-01
  %i.cr = fsub float %i.co, %i.cq                 ; 2 uses
  %i.cs = fmul float %i.cr, %i.cr
  %i.ct = call <6 x float> @llvm.masked.load.v6f32.p0(ptr nonnull align 4 %1, <6 x i1> <i1 true, i1 true, i1 false, i1 false, i1 true, i1 true>, <6 x float> poison) ; 2 uses
  %i.cu = shufflevector <6 x float> %i.ct, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.cv = shufflevector <6 x float> %i.ct, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.cw = fadd <2 x float> %i.cu, %i.cv
  %i.cx = fmul <2 x float> %i.cw, splat (float 5.000000e-01)
  %i.cy = load <6 x float>, ptr %5, align 8       ; 2 uses
  %i.cz = shufflevector <6 x float> %i.cy, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.da = shufflevector <6 x float> %i.cy, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.db = fadd <2 x float> %i.cz, %i.da
  %i.dc = fmul <2 x float> %i.db, splat (float 5.000000e-01)
  %i.dd = fsub <2 x float> %i.cx, %i.dc           ; 2 uses
  %i.de = fmul <2 x float> %i.dd, %i.dd           ; 2 uses
  %i.df = extractelement <2 x float> %i.de, i64 0
  %i.dg = fadd float %i.df, %i.cs
  %i.dh = extractelement <2 x float> %i.de, i64 1
  %i.di = fadd float %i.dg, %i.dh
  %i.dj = fdiv float %i.cm, %i.di
  %i.dk = fdiv float %i.cb, %i.dj                 ; 2 uses
  %i.dl = call float @llvm.fabs.f32(float %i.dk)
  %i.dm = fcmp oeq float %i.dl, +inf
  %spec.select = select i1 %i.dm, float 0.000000e+00, float %i.dk
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi float [ %spec.select, %bb.c ], [ 0.000000e+00, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.dn = fdiv float 1.000000e+00, %i.h           ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !369
  %i.dq = fcmp une float %i.dp, 0.000000e+00
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ds = load float, ptr %i.dr, align 4
  %i.dt = fcmp une float %i.ds, 0.000000e+00
  %or.cond.i = select i1 %i.dq, i1 true, i1 %i.dt
  br i1 %or.cond.i, label %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread, label %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit

_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit:  ; preds = %bb.e
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.dv = load float, ptr %i.du, align 4, !tbaa !241
  %i.dw = fcmp une float %i.dv, 0.000000e+00
  br i1 %i.dw, label %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread, label %bb.g

_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread: ; preds = %bb.e, %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit
  %i.dx = load ptr, ptr @_ZN4pbrt8Triangle9allMeshesE, align 8, !tbaa !342
  %i.dy = load i32, ptr %0, align 4, !tbaa !344
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !348
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dz
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !350 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !353
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !354
  %i.ei = mul nsw i32 %i.eh, 3
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.ej ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !355 ; 3 uses
  %i.en = load i32, ptr %i.ek, align 4, !tbaa !78
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [12 x i8], ptr %i.em, i64 %i.eo ; 2 uses
  %.sroa.5331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !78
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [12 x i8], ptr %i.em, i64 %i.es ; 2 uses
  %.sroa.5323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !78
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [12 x i8], ptr %i.em, i64 %i.ew ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.ey = load <2 x float>, ptr %i.ep, align 4    ; 3 uses
  %i.ez = load <2 x float>, ptr %i.et, align 4    ; 4 uses
  %i.fa = load <2 x float>, ptr %i.ex, align 4    ; 2 uses
  %i.fb = extractelement <2 x float> %i.ey, i64 0
  %.sroa.4350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.fc = load <2 x float>, ptr %.sroa.5331.0..sroa_idx, align 4 ; 2 uses
  %.sroa.6352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.fd = extractelement <2 x float> %i.ez, i64 0
  %.sroa.7353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fe = load <2 x float>, ptr %.sroa.5323.0..sroa_idx, align 4 ; 2 uses
  %.sroa.9354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ff = extractelement <2 x float> %i.fa, i64 0
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.fg = load <2 x float>, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  store float %i.fb, ptr %6, align 4
  store <2 x float> %i.fc, ptr %.sroa.4350.0..sroa_idx, align 4
  store float %i.fd, ptr %.sroa.6352.0..sroa_idx, align 4
  store <2 x float> %i.fe, ptr %.sroa.7353.0..sroa_idx, align 4
  store float %i.ff, ptr %.sroa.9354.0..sroa_idx, align 4
  store <2 x float> %i.fg, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.0.sroa.5.0.copyload.i223 = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 4
  %.sroa.0.sroa.6.0.copyload.i225 = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %i.fh = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %i.fi = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %1, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.fj = shufflevector <4 x float> %i.fi, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.fk = fadd <2 x float> %i.fh, %i.fj
  %i.fl = fmul <2 x float> %i.fk, splat (float 5.000000e-01)
  %i.fm = fadd float %.sroa.0.sroa.5.0.copyload.i223, %.sroa.0.sroa.6.0.copyload.i225
  %i.fn = fmul float %i.fm, 5.000000e-01
  %i.fo = call <2 x float> @_ZN4pbrt29InvertSphericalTriangleSampleERKN4pstd5arrayINS_6Point3IfEELi3EEES3_NS_7Vector3IfEE(ptr noundef nonnull align 4 dereferenceable(36) %6, <2 x float> %i.fl, float %i.fn, <2 x float> %2, float %3) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %7 = shufflevector <2 x float> %i.fo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %8 = fcmp ogt <4 x float> %7, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %9 = fcmp olt <4 x float> %7, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %10 = shufflevector <4 x i1> %8, <4 x i1> %9, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %11 = freeze <4 x i1> %10
  %12 = bitcast <4 x i1> %11 to i4
  %.not = icmp eq i4 %12, 0
  br i1 %.not, label %bb.f, label %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit

bb.f:                                             ; preds = %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread
  %.sroa.020.4.vec.extract.i = extractelement <2 x float> %i.fo, i64 1 ; 3 uses
  %.sroa.020.0.vec.extract.i = extractelement <2 x float> %i.fo, i64 0 ; 3 uses
  %.sroa.031.0.copyload = load <2 x float>, ptr %i.do, align 4 ; 3 uses
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.232.0.copyload = load float, ptr %.sroa.232.0..sroa_idx, align 4 ; 4 uses
  %i.fp = load <2 x float>, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 4 ; 3 uses
  %i.fq = call <6 x float> @llvm.masked.load.v6f32.p0(ptr nonnull align 4 %1, <6 x i1> <i1 true, i1 true, i1 true, i1 false, i1 false, i1 true>, <6 x float> poison) ; 4 uses
  %i.fr = shufflevector <6 x float> %i.fq, <6 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.fs = shufflevector <2 x float> %i.fr, <2 x float> <float 1.000000e+00, float poison>, <4 x i32> <i32 1, i32 2, i32 1, i32 1>
  %i.ft = shufflevector <2 x float> %i.fp, <2 x float> <float -0.000000e+00, float poison>, <4 x i32> <i32 0, i32 2, i32 0, i32 0>
  %i.fu = fadd <4 x float> %i.fs, %i.ft
  %i.fv = shufflevector <2 x float> %i.fp, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.fw = shufflevector <6 x float> %i.fq, <6 x float> poison, <4 x i32> <i32 5, i32 2, i32 2, i32 2>
  %i.fx = fadd <4 x float> %i.fv, %i.fw
  %i.fy = shufflevector <2 x float> %i.fp, <2 x float> poison, <6 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fz = shufflevector <6 x float> %i.fy, <6 x float> %i.fq, <4 x i32> <i32 6, i32 1, i32 6, i32 6>
  %i.ga = shufflevector <6 x float> %i.fq, <6 x float> poison, <4 x i32> <i32 1, i32 5, i32 1, i32 1>
  %i.gb = fadd <4 x float> %i.fz, %i.ga
  %i.gc = fmul <4 x float> %i.fu, <float 5.000000e-01, float 0.000000e+00, float 5.000000e-01, float 5.000000e-01> ; 3 uses
  %i.gd = fmul <4 x float> %i.gb, splat (float 5.000000e-01) ; 3 uses
  %i.ge = fmul <4 x float> %i.fx, splat (float 5.000000e-01)
  %i.gf = shufflevector <2 x float> %i.ez, <2 x float> %i.fe, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.gg = shufflevector <2 x float> %i.fc, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.gh = shufflevector <4 x float> %i.gf, <4 x float> %i.gg, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.gi = shufflevector <2 x float> %i.fg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.gj = shufflevector <4 x float> %i.gh, <4 x float> %i.gi, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.gk = shufflevector <4 x float> %i.gc, <4 x float> %i.gd, <4 x i32> <i32 0, i32 5, i32 5, i32 5>
  %i.gl = fsub <4 x float> %i.gj, %i.gk           ; 2 uses
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.gn = fmul <2 x float> %i.gm, %i.gm
  %i.go = shufflevector <2 x float> %i.ez, <2 x float> %i.ey, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.gp = shufflevector <2 x float> %i.fa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %i.gq = shufflevector <4 x float> %i.go, <4 x float> %i.gp, <4 x i32> <i32 0, i32 0, i32 1, i32 4> ; 2 uses
  %i.gr = shufflevector <4 x float> %i.gd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gs = fsub <4 x float> %i.gq, %i.gr
  %i.gt = shufflevector <2 x float> %i.ez, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gu = shufflevector <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x float> %i.gt, <4 x i32> <i32 5, i32 1, i32 poison, i32 poison>
  %i.gv = shufflevector <2 x float> %i.ey, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.gw = shufflevector <4 x float> %i.gu, <4 x float> %i.gv, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> %i.gp, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.gy = fsub <4 x float> %i.gx, %i.gc
  %i.gz = shufflevector <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x float> %i.gt, <4 x i32> <i32 5, i32 1, i32 poison, i32 poison>
  %i.ha = shufflevector <4 x float> %i.gz, <4 x float> %i.gv, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.hb = shufflevector <4 x float> %i.ha, <4 x float> %i.gp, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.hc = fsub <4 x float> %i.hb, %i.gc
  %i.hd = shufflevector <4 x float> %i.gj, <4 x float> %i.gv, <4 x i32> <i32 1, i32 0, i32 5, i32 poison>
  %i.he = shufflevector <4 x float> %i.hd, <4 x float> %i.gp, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.hf = fsub <4 x float> %i.he, %i.ge
  %i.hg = fmul <4 x float> %i.gy, %i.hc
  %i.hh = shufflevector <4 x float> %i.gq, <4 x float> %i.he, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.hi = fsub <4 x float> %i.hh, %i.gd           ; 2 uses
  %i.hj = fmul <4 x float> %i.hi, %i.hi           ; 2 uses
  %i.hk = fadd <4 x float> %i.hj, %i.hg           ; 2 uses
  %i.hl = shufflevector <4 x float> %i.hj, <4 x float> %i.hk, <4 x i32> <i32 1, i32 4, i32 poison, i32 poison>
  %i.hm = shufflevector <2 x float> %i.gn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hn = shufflevector <4 x float> %i.hl, <4 x float> %i.hm, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ho = fadd <4 x float> %i.hk, %i.hn
  %i.hp = call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.ho) ; 3 uses
  %i.hq = fdiv <4 x float> %i.gl, %i.hp           ; 2 uses
  %i.hr = insertelement <2 x float> poison, float %.sroa.232.0.copyload, i64 0
  %i.hs = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ht = shufflevector <4 x float> %i.hq, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.hu = fmul <2 x float> %i.hs, %i.ht           ; 2 uses
  %i.hv = fneg <2 x float> %i.hu
  %i.hw = fdiv <4 x float> %i.gs, %i.hp
  %i.hx = fdiv <4 x float> %i.hf, %i.hp           ; 2 uses
  %i.hy = extractelement <4 x float> %i.hx, i64 0
  %i.hz = fmul float %.sroa.232.0.copyload, %i.hy ; 2 uses
  %i.ia = fneg float %i.hz
  %i.ib = shufflevector <2 x float> %.sroa.031.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ic = insertelement <2 x float> %i.ib, float %.sroa.232.0.copyload, i64 1
  %i.id = shufflevector <2 x float> %i.ic, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.ie = shufflevector <2 x float> %i.hu, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.if = insertelement <4 x float> %i.ie, float %i.ia, i64 0
  %i.ig = insertelement <4 x float> %i.if, float %i.hz, i64 1 ; 2 uses
  %i.ih = call <4 x float> @llvm.fma.v4f32(<4 x float> %i.id, <4 x float> %i.hx, <4 x float> %i.ig)
  %i.ii = insertelement <2 x float> %.sroa.031.0.copyload, float %.sroa.232.0.copyload, i64 0
  %i.ij = shufflevector <2 x float> %i.ii, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.ik = shufflevector <4 x float> %i.ig, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.il = shufflevector <2 x float> %i.hv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.im = shufflevector <4 x float> %i.ik, <4 x float> %i.il, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.in = call <4 x float> @llvm.fma.v4f32(<4 x float> %i.ij, <4 x float> %i.hq, <4 x float> %i.im)
  %i.io = fadd <4 x float> %i.ih, %i.in
  %i.ip = shufflevector <2 x float> %.sroa.031.0.copyload, <2 x float> poison, <4 x i32> zeroinitializer
  %i.iq = call <4 x float> @llvm.fma.v4f32(<4 x float> %i.ip, <4 x float> %i.hw, <4 x float> %i.io)
  %i.ir = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.iq) ; 2 uses
  %i.is = fcmp ogt <4 x float> %i.ir, splat (float f0x3C23D70A)
  %i.it = select <4 x i1> %i.is, <4 x float> %i.ir, <4 x float> splat (float f0x3C23D70A) ; 5 uses
  %i.iu = extractelement <4 x float> %i.it, i64 0 ; 2 uses
  %foldExtExtBinop = fadd <4 x float> %i.it, %i.it
  %i.iv = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.iw = extractelement <4 x float> %i.it, i64 2 ; 2 uses
  %i.ix = fadd float %i.iv, %i.iw
  %i.iy = extractelement <4 x float> %i.it, i64 3 ; 2 uses
  %i.iz = fadd float %i.ix, %i.iy
  %i.ja = fsub float 1.000000e+00, %.sroa.020.0.vec.extract.i ; 2 uses
  %i.jb = fsub float 1.000000e+00, %.sroa.020.4.vec.extract.i ; 2 uses
  %i.jc = fmul float %i.ja, %i.jb
  %i.jd = fmul float %i.jc, %i.iu
  %i.je = fmul float %.sroa.020.0.vec.extract.i, %i.jb
  %i.jf = fmul float %i.je, %i.iu
  %i.jg = fadd float %i.jd, %i.jf
  %i.jh = fmul float %.sroa.020.4.vec.extract.i, %i.ja
  %i.ji = fmul float %i.jh, %i.iw
  %i.jj = fadd float %i.jg, %i.ji
  %i.jk = fmul float %.sroa.020.0.vec.extract.i, %.sroa.020.4.vec.extract.i
  %i.jl = fmul float %i.jk, %i.iy
  %i.jm = fadd float %i.jj, %i.jl
  %i.jn = fmul float %i.jm, 4.000000e+00
  %i.jo = fdiv float %i.jn, %i.iz
  br label %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit

_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit: ; preds = %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread, %bb.f
  %.0.i = phi float [ %i.jo, %bb.f ], [ 0.000000e+00, %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread ]
  %i.jp = fmul float %i.dn, %.0.i
  br label %bb.g

bb.g:                                             ; preds = %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit, %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit, %bb.d
  %.1 = phi float [ %.0, %bb.d ], [ %i.jp, %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit ], [ %i.dn, %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit ]
  ret float %.1
}

declare void @_ZNK4pbrt8Triangle9IntersectERKNS_3RayEf(ptr dead_on_unwind writable sret(%"class.pstd::optional.157") align 8, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(40), float noundef) local_unnamed_addr #1

declare <2 x float> @_ZN4pbrt29InvertSphericalTriangleSampleERKN4pstd5arrayINS_6Point3IfEELi3EEES3_NS_7Vector3IfEE(ptr noundef nonnull align 4 dereferenceable(36), <2 x float>, float, <2 x float>, float) local_unnamed_addr #1

declare noundef float @_ZNK4pbrt13BilinearPatch3PDFERKNS_18ShapeSampleContextENS_7Vector3IfEE(ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 4 dereferenceable(52), <2 x float>, float) local_unnamed_addr #1

declare noundef float @_ZNK4pbrt5Curve3PDFERKNS_18ShapeSampleContextENS_7Vector3IfEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(52), <2 x float>, float) local_unnamed_addr #1

declare { <2 x float>, <2 x float> } @_ZNK4pbrt4Disk12NormalBoundsEv(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare { <2 x float>, <2 x float> } @_ZNK4pbrt8Triangle12NormalBoundsEv(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #1

declare { <2 x float>, <2 x float> } @_ZNK4pbrt13BilinearPatch12NormalBoundsEv(ptr noundef nonnull align 4 dereferenceable(12)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt13TaggedPointerIJNS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEE8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_EEDcOSA_(ptr dead_on_unwind noalias writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !213    ; 2 uses
  %i.b = and i64 %i.a, 144115188075855871
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.d = lshr i64 %i.a, 57
  %i.e = trunc nuw nsw i64 %i.d to i32
  switch i32 %i.e, label %bb.g [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt6Sphere6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr noundef nonnull align 8 dereferenceable(42) %i.c)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_NS_7Bounds3IfEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS3_PKvi.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt8Cylinder6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr noundef nonnull align 8 dereferenceable(36) %i.c)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_NS_7Bounds3IfEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS3_PKvi.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt4Disk6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr noundef nonnull align 8 dereferenceable(36) %i.c)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_NS_7Bounds3IfEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS3_PKvi.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt8Triangle6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr noundef nonnull align 4 dereferenceable(8) %i.c)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_NS_7Bounds3IfEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS3_PKvi.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt13BilinearPatch6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr noundef nonnull align 4 dereferenceable(12) %i.c)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_NS_7Bounds3IfEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS3_PKvi.exit

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt5Curve6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_NS_7Bounds3IfEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS3_PKvi.exit

_ZN4pbrt6detail8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_NS_7Bounds3IfEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS3_PKvi.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  ret void
}

declare void @_ZNK4pbrt6Sphere6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4, ptr noundef nonnull align 8 dereferenceable(42)) local_unnamed_addr #1

declare void @_ZNK4pbrt8Cylinder6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare void @_ZNK4pbrt4Disk6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare void @_ZNK4pbrt8Triangle6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZNK4pbrt13BilinearPatch6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4, ptr noundef nonnull align 4 dereferenceable(12)) local_unnamed_addr #1

declare void @_ZNK4pbrt5Curve6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail8DispatchIRZNKS_5Shape6SampleENS_6Point2IfEEEUlT_E_N4pstd8optionalINS_11ShapeSampleEEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS5_PKvi(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional.84") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1341, !noalias !93, !nonnull !93, !align !319
  %.sroa.0.0.copyload.i16 = load <2 x float>, ptr %i.a, align 4, !noalias !93 ; 6 uses
  switch i32 %3, label %bb.g [
end_hunk_0
