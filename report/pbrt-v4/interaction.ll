Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/interaction?download=true
inline.NumInlined: 2722
inline.NumDeleted: 705
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZNK4pbrt18SurfaceInteraction8SpawnRayERKNS_15RayDifferentialERKNS_4BSDFENS_7Vector3IfEEif:bb.a
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.as = shufflevector <8 x float> %i.aj, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.at = fmul <2 x float> %i.ao, %i.as
  %i.au = fadd <2 x float> %i.ar, %i.at           ; 5 uses
  %i.av = shufflevector <2 x float> %i.ao, <2 x float> poison, <3 x i32> <i32 poison, i32 poison, i32 0>
  %i.aw = shufflevector <3 x float> %i.ak, <3 x float> %i.av, <4 x i32> <i32 0, i32 1, i32 5, i32 0>
  %i.ax = fmul <4 x float> %i.aw, %i.al
  %i.ay = fadd <4 x float> %i.ax, %i.an           ; 7 uses
  %i.az = load <2 x float>, ptr %i.ac, align 4, !tbaa !59
  %i.ba = fneg <2 x float> %i.az
  %i.bb = fsub <2 x float> %i.ba, %.sroa.0467.0.copyload ; 6 uses
  %i.bc = load <4 x float>, ptr %i.ad, align 4, !tbaa !59
  %i.bd = fneg <4 x float> %i.bc
  %i.be = shufflevector <2 x float> %.sroa.0467.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.bf = insertelement <4 x float> poison, float %.sroa.2468.0.copyload, i64 0
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> %i.be, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.bi = fsub <4 x float> %i.bd, %i.bh           ; 7 uses
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3> ; 4 uses
  switch i32 %6, label %bb.i [
    i32 17, label %bb.e
    i32 18, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.r, align 8, !tbaa !55
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.sroa.5.0.copyload.i = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.sroa.6.0.copyload.i = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %i.bk = fadd float %.sroa.0.sroa.5.0.copyload.i, %.sroa.0.sroa.6.0.copyload.i
  %i.bl = fmul float %i.bk, 5.000000e-01          ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.0437.0.copyload = load <2 x float>, ptr %i.bm, align 8
  %.sroa.2438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.2438.0.copyload = load float, ptr %.sroa.2438.0..sroa_idx, align 8
  %i.bn = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %i.bo = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %1, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bq = fadd <2 x float> %i.bn, %i.bp
  %i.br = fmul <2 x float> %i.bq, splat (float 5.000000e-01) ; 2 uses
  %i.bs = fadd <2 x float> %i.br, %.sroa.0437.0.copyload
  %i.bt = fadd float %.sroa.2438.0.copyload, %i.bl
  store <2 x float> %i.bs, ptr %i.s, align 4
  %.sroa.4444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.bt, ptr %.sroa.4444.0..sroa_idx, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 220
  %.sroa.0423.0.copyload = load <2 x float>, ptr %i.bu, align 4
  %.sroa.2424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 228
  %.sroa.2424.0.copyload = load float, ptr %.sroa.2424.0..sroa_idx, align 4
  %i.bv = fadd <2 x float> %i.br, %.sroa.0423.0.copyload
  %i.bw = fadd float %i.bl, %.sroa.2424.0.copyload
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x float> %i.bv, ptr %i.bx, align 8
  %.sroa.4430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %i.bw, ptr %.sroa.4430.0..sroa_idx, align 8
  %.sroa.01.0.vec.extract.i = extractelement <2 x float> %.sroa.0929.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %.sroa.0929.0.copyload, i64 1
  %i.by = fmul float %.sroa.23.0.copyload, %.sroa.2468.0.copyload ; 2 uses
  %i.bz = tail call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i, float %.sroa.03.4.vec.extract.i555, float %i.by)
  %i.ca = fneg float %i.by
  %i.cb = tail call noundef float @llvm.fma.f32(float %.sroa.23.0.copyload, float %.sroa.2468.0.copyload, float %i.ca)
  %i.cc = fadd float %i.bz, %i.cb
  %i.cd = tail call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i, float %.sroa.03.0.vec.extract.i554, float %i.cc) ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.4382.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.cf = shufflevector <4 x float> %i.ay, <4 x float> %i.bi, <2 x i32> <i32 2, i32 4> ; 2 uses
  %i.cg = insertelement <2 x float> poison, float %.sroa.2468.0.copyload, i64 0
  %i.ch = insertelement <2 x float> %i.cg, float %.sroa.23.0.copyload, i64 1 ; 4 uses
  %i.ci = fmul <2 x float> %i.cf, %i.ch           ; 2 uses
  %i.cj = shufflevector <2 x float> %i.au, <2 x float> %.sroa.0929.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.ck = shufflevector <2 x float> %.sroa.0467.0.copyload, <2 x float> %i.bb, <2 x i32> <i32 1, i32 3>
  %i.cl = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.cj, <2 x float> %i.ck, <2 x float> %i.ci)
  %i.cm = fneg <2 x float> %i.ci
  %i.cn = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.cf, <2 x float> %i.ch, <2 x float> %i.cm)
  %i.co = fadd <2 x float> %i.cl, %i.cn
  %i.cp = shufflevector <2 x float> %i.au, <2 x float> %.sroa.0929.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.cq = shufflevector <2 x float> %.sroa.0467.0.copyload, <2 x float> %i.bb, <2 x i32> <i32 0, i32 2>
  %i.cr = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.cp, <2 x float> %i.cq, <2 x float> %i.co) ; 2 uses
  %shift = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.cr, %shift ; 2 uses
  %i.cs = shufflevector <4 x float> %i.ay, <4 x float> %i.bi, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.ct = fmul <2 x float> %i.cs, %i.ch           ; 2 uses
  %i.cu = shufflevector <2 x float> %.sroa.0929.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.cv = shufflevector <4 x float> %i.ay, <4 x float> %i.cu, <2 x i32> <i32 1, i32 5>
  %i.cw = shufflevector <2 x float> %.sroa.0467.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> %i.bj, <2 x i32> <i32 1, i32 5>
  %i.cy = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.cv, <2 x float> %i.cx, <2 x float> %i.ct)
  %i.cz = fneg <2 x float> %i.ct
  %i.da = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.cs, <2 x float> %i.ch, <2 x float> %i.cz)
  %i.db = fadd <2 x float> %i.cy, %i.da
  %i.dc = shufflevector <4 x float> %i.ay, <4 x float> %i.cu, <2 x i32> <i32 0, i32 4>
  %i.dd = shufflevector <4 x float> %i.cw, <4 x float> %i.bi, <2 x i32> <i32 0, i32 5>
  %i.de = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.dc, <2 x float> %i.dd, <2 x float> %i.db) ; 2 uses
  %shift987 = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop988 = fadd <2 x float> %i.de, %shift987
  %i.df = fsub <2 x float> %4, %i.bb
  %i.dg = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = fmul <2 x float> %i.au, %i.dh
  %i.dj = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = fmul <2 x float> %.sroa.0929.0.copyload, %i.dj
  %i.dl = fadd <2 x float> %i.di, %i.dk
  %i.dm = fmul <2 x float> %i.dl, splat (float 2.000000e+00)
  %i.dn = fadd <2 x float> %i.df, %i.dm           ; 2 uses
  store <2 x float> %i.dn, ptr %i.ce, align 4
  %i.do = shufflevector <2 x float> %4, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dp = insertelement <4 x float> poison, float %5, i64 0
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.dr = shufflevector <4 x float> %i.do, <4 x float> %i.dq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ds = fsub <4 x float> %i.dr, %i.bj
  %i.dt = insertelement <4 x float> poison, float %i.cd, i64 0
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dv = fmul <4 x float> %i.ay, %i.du
  %i.dw = insertelement <4 x float> poison, float %.sroa.23.0.copyload, i64 0
  %i.dx = shufflevector <4 x float> %i.dw, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.dy = shufflevector <4 x float> %i.cu, <4 x float> %i.dx, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dz = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %foldExtExtBinop988, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.eb = fmul <4 x float> %i.dy, %i.ea
  %i.ec = fadd <4 x float> %i.dv, %i.eb
  %i.ed = fmul <4 x float> %i.ec, splat (float 2.000000e+00)
  %i.ee = fadd <4 x float> %i.ds, %i.ed           ; 2 uses
  %i.ef = extractelement <4 x float> %i.ee, i64 2
  store float %i.ef, ptr %.sroa.4382.0..sroa_idx, align 4
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.eg = shufflevector <4 x float> %i.ay, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  store i8 1, ptr %i.r, align 8, !tbaa !55
  %.sroa.0.sroa.2.0..sroa_idx.i690 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.sroa.5.0..sroa_idx.i696 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.sroa.5.0.copyload.i697 = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i696, align 8
  %.sroa.0.sroa.6.0..sroa_idx.i698 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.sroa.6.0.copyload.i699 = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i698, align 4
  %i.eh = fadd float %.sroa.0.sroa.5.0.copyload.i697, %.sroa.0.sroa.6.0.copyload.i699
  %i.ei = fmul float %i.eh, 5.000000e-01          ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.0251.0.copyload = load <2 x float>, ptr %i.ej, align 8
  %.sroa.2252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.2252.0.copyload = load float, ptr %.sroa.2252.0..sroa_idx, align 8
  %i.ek = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i690, align 4
  %i.el = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %1, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.em = shufflevector <4 x float> %i.el, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.en = fadd <2 x float> %i.ek, %i.em
  %i.eo = fmul <2 x float> %i.en, splat (float 5.000000e-01) ; 2 uses
  %i.ep = fadd <2 x float> %i.eo, %.sroa.0251.0.copyload
  %i.eq = fadd float %.sroa.2252.0.copyload, %i.ei
  store <2 x float> %i.ep, ptr %i.s, align 4
  %.sroa.4258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.eq, ptr %.sroa.4258.0..sroa_idx, align 4
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 220
  %.sroa.0237.0.copyload = load <2 x float>, ptr %i.er, align 4
  %.sroa.2238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 228
  %.sroa.2238.0.copyload = load float, ptr %.sroa.2238.0..sroa_idx, align 4
  %i.es = fadd <2 x float> %i.eo, %.sroa.0237.0.copyload
  %i.et = fadd float %i.ei, %.sroa.2238.0.copyload
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x float> %i.es, ptr %i.eu, align 8
  %.sroa.4244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %i.et, ptr %.sroa.4244.0..sroa_idx, align 8
  %.sroa.01.0.vec.extract.i731 = extractelement <2 x float> %.sroa.0929.0.copyload, i64 0 ; 2 uses
  %.sroa.01.4.vec.extract.i733 = extractelement <2 x float> %.sroa.0929.0.copyload, i64 1 ; 2 uses
  %i.ev = fmul float %.sroa.23.0.copyload, %.sroa.2468.0.copyload ; 2 uses
  %i.ew = tail call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i733, float %.sroa.03.4.vec.extract.i555, float %i.ev)
  %i.ex = fneg float %i.ev
  %i.ey = tail call noundef float @llvm.fma.f32(float %.sroa.23.0.copyload, float %.sroa.2468.0.copyload, float %i.ex)
  %i.ez = fadd float %i.ew, %i.ey
  %i.fa = tail call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i731, float %.sroa.03.0.vec.extract.i554, float %i.ez) ; 2 uses
  %i.fb = fcmp olt float %i.fa, 0.000000e+00
  %i.fc = shufflevector <2 x float> %.sroa.0929.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> %i.ay, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  br i1 %i.fb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fe = fneg <4 x float> %i.fd                  ; 4 uses
  %i.ff = extractelement <4 x float> %i.fe, i64 1 ; 2 uses
  %i.fg = extractelement <4 x float> %i.fe, i64 0 ; 2 uses
  %i.fh = fneg float %.sroa.23.0.copyload         ; 3 uses
  %i.fi = fneg <2 x float> %i.au
  %i.fj = fneg <2 x float> %i.eg
  %.pre971 = fmul float %.sroa.2468.0.copyload, %i.fh ; 2 uses
  %.pre972 = tail call noundef float @llvm.fma.f32(float %i.ff, float %.sroa.03.4.vec.extract.i555, float %.pre971)
  %.pre974 = fneg float %.pre971
  %.pre976 = tail call noundef float @llvm.fma.f32(float %i.fh, float %.sroa.2468.0.copyload, float %.pre974)
  %.pre978 = fadd float %.pre972, %.pre976
  %.pre980 = tail call noundef float @llvm.fma.f32(float %i.fg, float %.sroa.03.0.vec.extract.i554, float %.pre978)
  %i.fk = shufflevector <4 x float> %i.fe, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi981 = phi float [ %.pre980, %bb.g ], [ %i.fa, %bb.f ] ; 2 uses
  %.sroa.01.4.vec.extract.i749.pre-phi = phi float [ %i.ff, %bb.g ], [ %.sroa.01.4.vec.extract.i733, %bb.f ] ; 2 uses
  %.sroa.01.0.vec.extract.i747.pre-phi = phi float [ %i.fg, %bb.g ], [ %.sroa.01.0.vec.extract.i731, %bb.f ] ; 2 uses
  %.sroa.0916.0 = phi <2 x float> [ %i.fj, %bb.g ], [ %i.eg, %bb.f ]
  %.sroa.0923.0 = phi <2 x float> [ %i.fi, %bb.g ], [ %i.au, %bb.f ] ; 3 uses
  %.sroa.23.0 = phi float [ %i.fh, %bb.g ], [ %.sroa.23.0.copyload, %bb.f ] ; 4 uses
  %i.fl = phi <4 x float> [ %i.fe, %bb.g ], [ %i.fd, %bb.f ] ; 3 uses
  %i.fm = phi <2 x float> [ %i.fk, %bb.g ], [ %.sroa.0929.0.copyload, %bb.f ]
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %4, i64 0
  %.sroa.04.4.vec.extract.i.i = extractelement <2 x float> %4, i64 1
  %8 = fmul float %5, %.sroa.23.0                 ; 2 uses
  %9 = tail call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i749.pre-phi, float %.sroa.04.4.vec.extract.i.i, float %8)
  %10 = fneg float %8
  %11 = tail call noundef float @llvm.fma.f32(float %.sroa.23.0, float %5, float %10)
  %12 = fadd float %9, %11
  %13 = tail call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i747.pre-phi, float %.sroa.04.0.vec.extract.i.i, float %12) ; 2 uses
  %14 = tail call noundef float @llvm.fabs.f32(float %13)
  %15 = fdiv float 1.000000e+00, %7
  %16 = fmul float %7, %7
  %17 = fdiv float 1.000000e+00, %16
  %18 = fmul float %17, %.pre-phi981
  %19 = fdiv float %18, %13
  %20 = fadd float %15, %19                       ; 2 uses
  %21 = insertelement <4 x float> poison, float %7, i64 0
  %22 = shufflevector <4 x float> %21, <4 x float> poison, <4 x i32> zeroinitializer
  %23 = fmul <4 x float> %22, %i.bj
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  %25 = insertelement <2 x float> poison, float %.sroa.2468.0.copyload, i64 0
  %26 = insertelement <2 x float> %25, float %.sroa.23.0, i64 1 ; 4 uses
  %27 = shufflevector <4 x float> %i.fl, <4 x float> %i.bi, <2 x i32> <i32 3, i32 7> ; 2 uses
  %28 = fmul <2 x float> %26, %27                 ; 2 uses
  %29 = shufflevector <2 x float> %.sroa.0916.0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %30 = shufflevector <4 x float> %29, <4 x float> %i.bj, <2 x i32> <i32 1, i32 5>
  %31 = shufflevector <2 x float> %.sroa.0467.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %32 = insertelement <2 x float> %31, float %.sroa.01.4.vec.extract.i749.pre-phi, i64 1 ; 2 uses
  %33 = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %30, <2 x float> %32, <2 x float> %28)
  %34 = fneg <2 x float> %28
  %35 = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %27, <2 x float> %26, <2 x float> %34)
  %36 = fadd <2 x float> %33, %35
  %37 = shufflevector <4 x float> %29, <4 x float> %i.bi, <2 x i32> <i32 0, i32 5>
  %38 = insertelement <2 x float> %.sroa.0467.0.copyload, float %.sroa.01.0.vec.extract.i747.pre-phi, i64 1 ; 2 uses
  %39 = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %37, <2 x float> %38, <2 x float> %36) ; 2 uses
  %shift990 = shufflevector <2 x float> %39, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop991 = fadd <2 x float> %39, %shift990
  %40 = extractelement <2 x float> %foldExtExtBinop991, i64 0
  %41 = fmul float %40, %20                       ; 2 uses
  %42 = shufflevector <4 x float> %i.fl, <4 x float> %i.bi, <2 x i32> <i32 2, i32 4> ; 2 uses
  %43 = fmul <2 x float> %26, %42                 ; 2 uses
  %44 = shufflevector <2 x float> %.sroa.0923.0, <2 x float> %i.bb, <2 x i32> <i32 1, i32 3>
  %45 = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %44, <2 x float> %32, <2 x float> %43)
  %46 = fneg <2 x float> %43
  %47 = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %42, <2 x float> %26, <2 x float> %46)
  %foldExtExtBinop991.a = fadd <2 x float> %45, %47
  %48 = shufflevector <2 x float> %.sroa.0923.0, <2 x float> %i.bb, <2 x i32> <i32 0, i32 2>
  %49 = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %48, <2 x float> %38, <2 x float> %foldExtExtBinop991.a) ; 2 uses
  %shift993 = shufflevector <2 x float> %49, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop994 = fadd <2 x float> %49, %shift993
  %i.fn = extractelement <2 x float> %foldExtExtBinop994, i64 0
  %i.fo = fmul float %i.fn, %20                   ; 2 uses
  %i.fp = insertelement <2 x float> poison, float %7, i64 0
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fr = fmul <2 x float> %i.fq, %i.bb
  %i.fs = fsub <2 x float> %4, %i.fr
  %i.ft = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fv = fmul <2 x float> %i.fm, %i.fu
  %i.fw = fdiv float %.pre-phi981, %7
  %i.fx = fsub float %i.fw, %14                   ; 2 uses
  %i.fy = insertelement <2 x float> poison, float %i.fx, i64 0
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ga = fmul <2 x float> %.sroa.0923.0, %i.fz
  %i.gb = fadd <2 x float> %i.ga, %i.fv
  %i.gc = fadd <2 x float> %i.fs, %i.gb           ; 2 uses
  store <2 x float> %i.gc, ptr %24, align 4
  %i.gd = shufflevector <2 x float> %4, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ge = insertelement <4 x float> poison, float %5, i64 0
  %i.gf = shufflevector <4 x float> %i.ge, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.gg = shufflevector <4 x float> %i.gd, <4 x float> %i.gf, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gh = fsub <4 x float> %i.gg, %23
  %i.gi = insertelement <4 x float> poison, float %i.fx, i64 0 ; 2 uses
  %i.gj = insertelement <4 x float> %i.gi, float %41, i64 1
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.gl = fmul <4 x float> %i.fl, %i.gk
  %i.gm = insertelement <4 x float> poison, float %.sroa.23.0, i64 0
  %i.gn = shufflevector <4 x float> %i.gm, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.go = shufflevector <4 x float> %29, <4 x float> %i.gn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gp = insertelement <4 x float> %i.gi, float %i.fo, i64 2
  %i.gq = insertelement <4 x float> %i.gp, float %41, i64 3
  %i.gr = shufflevector <4 x float> %i.gq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.gs = fmul <4 x float> %i.go, %i.gr
  %i.gt = fadd <4 x float> %i.gl, %i.gs
  %i.gu = fadd <4 x float> %i.gh, %i.gt           ; 2 uses
  %i.gv = extractelement <4 x float> %i.gu, i64 2
  store float %i.gv, ptr %.sroa.4119.0..sroa_idx, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.e
  %.sroa.017.0.copyload.ph = phi <2 x float> [ %i.dn, %bb.e ], [ %i.gc, %bb.h ] ; 2 uses
  %i.gw = phi <4 x float> [ %i.ee, %bb.e ], [ %i.gu, %bb.h ] ; 4 uses
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x float> %i.gx, ptr %i.gy, align 8
  %.sroa.4320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gz = extractelement <4 x float> %i.gw, i64 3 ; 3 uses
  store float %i.gz, ptr %.sroa.4320.0..sroa_idx, align 8
  %foldExtExtBinop996 = fmul <4 x float> %i.gw, %i.gw
  %i.ha = extractelement <4 x float> %foldExtExtBinop996, i64 2
  %i.hb = fmul float %i.gz, %i.gz
  %i.hc = fmul <2 x float> %.sroa.017.0.copyload.ph, %.sroa.017.0.copyload.ph
  %i.hd = fmul <2 x float> %i.gx, %i.gx
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.d, %_ZNK4pbrt11Interaction8SpawnRayENS_7Vector3IfEE.exit
  %.sroa.214.0.copyload = phi float [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %_ZNK4pbrt11Interaction8SpawnRayENS_7Vector3IfEE.exit ], [ %i.hb, %.sink.split ]
  %.sroa.013.0.copyload = phi <2 x float> [ zeroinitializer, %bb.d ], [ zeroinitializer, %_ZNK4pbrt11Interaction8SpawnRayENS_7Vector3IfEE.exit ], [ %i.hd, %.sink.split ] ; 2 uses
  %.sroa.218.0.copyload = phi float [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %_ZNK4pbrt11Interaction8SpawnRayENS_7Vector3IfEE.exit ], [ %i.ha, %.sink.split ]
  %.sroa.017.0.copyload = phi <2 x float> [ zeroinitializer, %bb.d ], [ zeroinitializer, %_ZNK4pbrt11Interaction8SpawnRayENS_7Vector3IfEE.exit ], [ %i.hc, %.sink.split ] ; 2 uses
  %shift998 = shufflevector <2 x float> %.sroa.017.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop999 = fadd <2 x float> %.sroa.017.0.copyload, %shift998
  %i.he = extractelement <2 x float> %foldExtExtBinop999, i64 0
  %i.hf = fadd float %.sroa.218.0.copyload, %i.he
  %i.hg = fcmp ogt float %i.hf, 1.000000e+16
  br i1 %i.hg, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %shift1001 = shufflevector <2 x float> %.sroa.013.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1002 = fadd <2 x float> %.sroa.013.0.copyload, %shift1001
  %i.hh = extractelement <2 x float> %foldExtExtBinop1002, i64 0
  %i.hi = fadd float %.sroa.214.0.copyload, %i.hh
  %i.hj = fcmp ogt float %i.hi, 1.000000e+16
  br i1 %i.hj, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.09.0.copyload = load <2 x float>, ptr %i.s, align 4 ; 2 uses
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.210.0.copyload = load float, ptr %.sroa.210.0..sroa_idx, align 4 ; 2 uses
  %i.hk = fmul <2 x float> %.sroa.09.0.copyload, %.sroa.09.0.copyload ; 2 uses
  %shift1004 = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1005 = fadd <2 x float> %i.hk, %shift1004
  %i.hl = extractelement <2 x float> %foldExtExtBinop1005, i64 0
  %i.hm = fmul float %.sroa.210.0.copyload, %.sroa.210.0.copyload
  %i.hn = fadd float %i.hm, %i.hl
  %i.ho = fcmp ogt float %i.hn, 1.000000e+16
  br i1 %i.ho, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.03.0.copyload = load <2 x float>, ptr %i.hp, align 8 ; 2 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 8 ; 2 uses
  %i.hq = fmul <2 x float> %.sroa.03.0.copyload, %.sroa.03.0.copyload ; 2 uses
  %shift1007 = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1008 = fadd <2 x float> %i.hq, %shift1007
  %i.hr = extractelement <2 x float> %foldExtExtBinop1008, i64 0
  %i.hs = fmul float %.sroa.24.0.copyload, %.sroa.24.0.copyload
  %i.ht = fadd float %i.hs, %i.hr
  %i.hu = fcmp ogt float %i.ht, 1.000000e+16
  br i1 %i.hu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  store i8 0, ptr %i.r, align 8, !tbaa !55
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt18SurfaceInteraction7GetBSDFERKNS_15RayDifferentialERNS_18SampledWavelengthsENS_6CameraERNS_13ScratchBufferENS_7SamplerE(ptr dead_on_unwind noalias writable sret(%"class.pbrt::BSDF") align 8 %0, ptr noundef nonnull align 8 dereferenceable(248) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(92) %2, ptr noundef nonnull align 4 dereferenceable(32) %3, ptr nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(8) %4, ptr noundef nonnull align 64 dereferenceable(40) %5, ptr nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(8) %6) local_unnamed_addr #3 align 2 {
bb.a:
  %7 = alloca %class.anon.67, align 1             ; 3 uses
  %8 = alloca %class.anon.63, align 1             ; 3 uses
  %9 = alloca %"class.pbrt::UniversalTextureEvaluator", align 1 ; 3 uses
  %10 = alloca %class.anon.80, align 8            ; 7 uses
  %11 = alloca %"struct.pbrt::MaterialEvalContext", align 8 ; 14 uses
  %.sroa.4.i.i.i = alloca [2 x i64], align 8      ; 7 uses
  %12 = alloca %"class.pbrt::UniversalTextureEvaluator", align 1 ; 3 uses
  %13 = alloca %"class.pbrt::FloatTexture", align 8 ; 4 uses
  %14 = alloca %"struct.pbrt::MaterialEvalContext", align 8 ; 15 uses
  %15 = alloca %"class.pbrt::Camera", align 8     ; 2 uses
  %16 = alloca %"class.pbrt::Vector3", align 8    ; 7 uses
  %17 = alloca %"class.pbrt::Vector3", align 8    ; 7 uses
  %18 = alloca %"struct.pbrt::NormalBumpEvalContext", align 8 ; 16 uses
  %19 = alloca %"class.pbrt::FloatTexture", align 8 ; 2 uses
  %20 = alloca %"struct.pbrt::NormalBumpEvalContext", align 8 ; 16 uses
  %21 = alloca %"class.pbrt::SampledSpectrum", align 8 ; 5 uses
  %i.a = alloca [1 x float], align 4              ; 4 uses
  %22 = alloca [1 x %"class.pbrt::Point2"], align 8 ; 4 uses
  %i.b = load i64, ptr %4, align 8, !tbaa !58
  store i64 %i.b, ptr %15, align 8, !tbaa !58
  %i.c = load i64, ptr %6, align 8, !tbaa !302    ; 2 uses
  %i.d = and i64 %i.c, 144115188075855871
  %i.e = inttoptr i64 %i.d to ptr                 ; 10 uses
  %i.f = lshr i64 %i.c, 57
  %i.g = trunc nuw nsw i64 %i.f to i32
  switch i32 %i.g, label %bb.j [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.e, align 8, !tbaa !66
  br label %_ZNK4pbrt7Sampler15SamplesPerPixelEv.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.e, align 8, !tbaa !304
  br label %_ZNK4pbrt7Sampler15SamplesPerPixelEv.exit

bb.d:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.e, align 8, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !70
  %i.m = mul nsw i32 %i.l, %i.j
  br label %_ZNK4pbrt7Sampler15SamplesPerPixelEv.exit

bb.e:                                             ; preds = %bb.a
  %i.n = load i32, ptr %i.e, align 8, !tbaa !305
  br label %_ZNK4pbrt7Sampler15SamplesPerPixelEv.exit

bb.f:                                             ; preds = %bb.a
  %i.o = load i32, ptr %i.e, align 4, !tbaa !75
  br label %_ZNK4pbrt7Sampler15SamplesPerPixelEv.exit

bb.g:                                             ; preds = %bb.a
  %i.p = load i32, ptr %i.e, align 8, !tbaa !306
  br label %_ZNK4pbrt7Sampler15SamplesPerPixelEv.exit

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !78
  %i.s = shl nuw i32 1, %i.r
  br label %_ZNK4pbrt7Sampler15SamplesPerPixelEv.exit

bb.i:                                             ; preds = %bb.a
  %i.t = load i32, ptr %i.e, align 8, !tbaa !307
  br label %_ZNK4pbrt7Sampler15SamplesPerPixelEv.exit

bb.j:                                             ; preds = %bb.a
  %i.u = load i32, ptr %i.e, align 8, !tbaa !307
  br label %_ZNK4pbrt7Sampler15SamplesPerPixelEv.exit

_ZNK4pbrt7Sampler15SamplesPerPixelEv.exit:        ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i.i.i = phi i32 [ %i.u, %bb.j ], [ %i.h, %bb.b ], [ %i.i, %bb.c ], [ %i.m, %bb.d ], [ %i.n, %bb.e ], [ %i.o, %bb.f ], [ %i.p, %bb.g ], [ %i.s, %bb.h ], [ %i.t, %bb.i ]
  call void @_ZN4pbrt18SurfaceInteraction20ComputeDifferentialsERKNS_15RayDifferentialENS_6CameraEi(ptr noundef nonnull align 8 dereferenceable(248) %1, ptr noundef nonnull align 8 dereferenceable(92) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %15, i32 noundef %.0.i.i.i)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !85   ; 3 uses
  %.mask.i159 = and i64 %i.w, -144115188075855872
  %i.x = icmp eq i64 %.mask.i159, 1585267068834414592
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK4pbrt7Sampler15SamplesPerPixelEv.exit
  %.sroa.0.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 140
  %.sroa.2119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.sroa.3120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 12
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 24
  %.sroa.5122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 36
  %.sroa.6123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 48
  %.sroa.7124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 56
  %.sroa.11128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 72
  %.sroa.12129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 76 ; 2 uses
  %.sroa.13130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 88
  %.sroa.14131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 100
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %14, i64 84
  %.sroa.4.i.i.i.4.i.i.i.4.i.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i, i64 4
  %.sroa.4.i.i.i.12.i.i.i.12.i.i.i.12.i.i.12.i.i.12.i.12.i.12..0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i, i64 12
  %.sroa.4.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..039.i.ptr.2.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %_ZNK4pbrt11MixMaterial14ChooseMaterialINS_25UniversalTextureEvaluatorEEENS_8MaterialET_NS_19MaterialEvalContextE.exit
  %i.ah = phi i64 [ %i.w, %.lr.ph ], [ %.sink.i, %_ZNK4pbrt11MixMaterial14ChooseMaterialINS_25UniversalTextureEvaluatorEEENS_8MaterialET_NS_19MaterialEvalContextE.exit ]
  %i.ai = and i64 %i.ah, 144115188075855871
end_hunk_0
