Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/joint?download=true
inline.NumInlined: 154
inline.NumDeleted: 32
begin_hunk_0_@b3Joint_IsAwake:bb.a
; Function Attrs: nounwind uwtable
define hidden void @b3GetJointReaction(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, float noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4) local_unnamed_addr #7 {
bb.a:
  %5 = alloca %struct.b3Transform, align 4        ; 5 uses
  %6 = alloca %struct.b3Transform, align 4        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !137
  switch i32 %i.b, label %bb.k [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.i
    i32 8, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.d = load <2 x float>, ptr %i.c, align 4, !tbaa !9 ; 2 uses
  %i.e = fmul <2 x float> %i.d, %i.d
  %i.f = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.e)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.f)
  %i.g = insertelement <2 x float> <float poison, float 0.000000e+00>, float %sqrt.i, i64 0
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.i = load <2 x float>, ptr %i.h, align 4, !tbaa !9
  %i.j = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.l = load float, ptr %i.k, align 4, !tbaa !310
  %i.m = fsub float %i.j, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.o = load float, ptr %i.n, align 4, !tbaa !311
  %i.p = fadd float %i.m, %i.o                    ; 3 uses
  %i.q = fcmp olt float %i.p, 0.000000e+00
  %i.r = fneg float %i.p
  %i.s = select i1 %i.q, float %i.r, float %i.p
  %i.t = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.s, i64 1
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.sroa.0137.0.copyload = load <2 x float>, ptr %i.u, align 4 ; 2 uses
  %.sroa.2138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.sroa.2138.0.copyload = load float, ptr %.sroa.2138.0..sroa_idx, align 4
  %.sroa.0135.0.copyload = load <2 x float>, ptr %i.v, align 4 ; 2 uses
  %.sroa.2136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.sroa.2136.0.copyload = load float, ptr %.sroa.2136.0..sroa_idx, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 276
  %.sroa.0125.0.copyload = load <2 x float>, ptr %i.w, align 4 ; 2 uses
  %.sroa.2126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 260
  %.sroa.2126.0.copyload = load float, ptr %.sroa.2126.0..sroa_idx, align 4
  %.sroa.0123.0.copyload = load <2 x float>, ptr %i.x, align 4 ; 2 uses
  %.sroa.2124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 284
  %.sroa.2124.0.copyload = load float, ptr %.sroa.2124.0..sroa_idx, align 4
  %i.y = shufflevector <2 x float> %.sroa.0125.0.copyload, <2 x float> %.sroa.0137.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.z = shufflevector <2 x float> %.sroa.0123.0.copyload, <2 x float> %.sroa.0135.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.aa = fadd <2 x float> %i.y, %i.z             ; 2 uses
  %i.ab = shufflevector <2 x float> %.sroa.0125.0.copyload, <2 x float> %.sroa.0137.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.ac = shufflevector <2 x float> %.sroa.0123.0.copyload, <2 x float> %.sroa.0135.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.ad = fadd <2 x float> %i.ab, %i.ac           ; 2 uses
  %i.ae = insertelement <2 x float> poison, float %.sroa.2126.0.copyload, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %.sroa.2138.0.copyload, i64 1
  %i.ag = insertelement <2 x float> poison, float %.sroa.2124.0.copyload, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %.sroa.2136.0.copyload, i64 1
  %i.ai = fadd <2 x float> %i.af, %i.ah           ; 2 uses
  %i.aj = fmul <2 x float> %i.aa, %i.aa
  %i.ak = fmul <2 x float> %i.ad, %i.ad
  %i.al = fadd <2 x float> %i.aj, %i.ak
  %i.am = fmul <2 x float> %i.ai, %i.ai
  %i.an = fadd <2 x float> %i.am, %i.al
  %i.ao = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.an)
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ar = load <2 x float>, ptr %i.aq, align 4, !tbaa !9
  %i.as = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ar)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.au = load float, ptr %i.at, align 4, !tbaa !312
  %i.av = fsub float %i.as, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.sroa.0104.0.copyload = load <2 x float>, ptr %i.aw, align 4 ; 2 uses
  %.sroa.2105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.2105.0.copyload = load float, ptr %.sroa.2105.0..sroa_idx, align 4
  %i.ax = load <2 x float>, ptr %i.ap, align 4, !tbaa !9 ; 2 uses
  %i.ay = insertelement <2 x float> %.sroa.0104.0.copyload, float %i.av, i64 1 ; 2 uses
  %i.az = fmul <2 x float> %i.ay, %i.ay
  %i.ba = shufflevector <2 x float> %.sroa.0104.0.copyload, <2 x float> %i.ax, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bb = fmul <2 x float> %i.ba, %i.ba
  %i.bc = fadd <2 x float> %i.az, %i.bb
  %i.bd = insertelement <2 x float> %i.ax, float %.sroa.2105.0.copyload, i64 0 ; 2 uses
  %i.be = fmul <2 x float> %i.bd, %i.bd
  %i.bf = fadd <2 x float> %i.be, %i.bc
  %i.bg = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.bf)
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.sroa.096.0.copyload = load <2 x float>, ptr %i.bh, align 4 ; 2 uses
  %.sroa.297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !313
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bl = load <2 x float>, ptr %i.bk, align 4, !tbaa !9
  %i.bm = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bl)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !314
  %i.bp = fsub float %i.bm, %i.bo
  %i.bq = load <2 x float>, ptr %.sroa.297.0..sroa_idx, align 4 ; 2 uses
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> %.sroa.096.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bs = fmul <2 x float> %i.br, %i.br
  %i.bt = insertelement <2 x float> %.sroa.096.0.copyload, float %i.bj, i64 0 ; 2 uses
  %i.bu = fmul <2 x float> %i.bt, %i.bt
  %i.bv = fadd <2 x float> %i.bs, %i.bu
  %i.bw = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bx = insertelement <2 x float> %i.bw, float %i.bp, i64 0 ; 2 uses
  %i.by = fmul <2 x float> %i.bx, %i.bx
  %i.bz = fadd <2 x float> %i.bv, %i.by
  %i.ca = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.bz)
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.sroa.083.0.copyload = load <2 x float>, ptr %i.cb, align 4 ; 4 uses
  %.sroa.284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.sroa.284.0.copyload = load float, ptr %.sroa.284.0..sroa_idx, align 4 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.083.0.copyload, %.sroa.083.0.copyload
  %foldExtExtBinop269 = fmul <2 x float> %.sroa.083.0.copyload, %.sroa.083.0.copyload
  %shift = shufflevector <2 x float> %foldExtExtBinop269, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop271 = fadd <2 x float> %foldExtExtBinop, %shift
  %i.cc = extractelement <2 x float> %foldExtExtBinop271, i64 0
  %i.cd = fmul float %.sroa.284.0.copyload, %.sroa.284.0.copyload
  %i.ce = fadd float %i.cd, %i.cc
  %sqrt.i206 = tail call float @llvm.sqrt.f32(float %i.ce)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !133
  call void @b3GetBodyTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %5, ptr noundef %0, i32 noundef %i.cg) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !134
  call void @b3GetBodyTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %6, ptr noundef %0, i32 noundef %i.ci) #11
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cl = load <2 x float>, ptr %i.cj, align 4    ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.cn = load <2 x float>, ptr %i.cm, align 4    ; 6 uses
  %i.co = load <2 x float>, ptr %i.ck, align 4    ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.cq = load <2 x float>, ptr %i.cp, align 4    ; 6 uses
  %.sroa.011.4.vec.extract.i.i = extractelement <2 x float> %i.cl, i64 1 ; 2 uses
  %.sroa.03.4.vec.extract.i.i = extractelement <2 x float> %i.co, i64 1 ; 2 uses
  %.sroa.443.12.vec.extract.i = extractelement <2 x float> %i.cn, i64 1 ; 2 uses
  %.sroa.433.12.vec.extract.i = extractelement <2 x float> %i.cq, i64 1 ; 2 uses
  %foldExtExtBinop273 = fmul <2 x float> %i.cl, %i.co
  %i.cr = extractelement <2 x float> %foldExtExtBinop273, i64 0
  %i.cs = fmul float %.sroa.011.4.vec.extract.i.i, %.sroa.03.4.vec.extract.i.i
  %i.ct = fadd float %i.cr, %i.cs
  %foldExtExtBinop275 = fmul <2 x float> %i.cn, %i.cq
  %i.cu = extractelement <2 x float> %foldExtExtBinop275, i64 0
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cx = load <2 x float>, ptr %i.cv, align 4    ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.cz = load <2 x float>, ptr %i.cy, align 4    ; 5 uses
  %i.da = load <2 x float>, ptr %i.cw, align 4    ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dc = load <2 x float>, ptr %i.db, align 4    ; 5 uses
  %i.dd = fmul <2 x float> %i.cx, %i.da           ; 2 uses
  %shift277 = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop278 = fmul <2 x float> %shift277, %i.dc
  %shift280 = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop281 = fmul <2 x float> %i.cz, %shift280
  %i.de = shufflevector <2 x float> %i.cz, <2 x float> %i.cx, <2 x i32> <i32 0, i32 2>
  %i.df = fmul <2 x float> %i.de, %i.da           ; 2 uses
  %i.dg = shufflevector <2 x float> %i.dc, <2 x float> %i.da, <2 x i32> <i32 0, i32 2>
  %i.dh = fmul <2 x float> %i.cx, %i.dg           ; 2 uses
  %i.di = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dj = shufflevector <2 x float> %foldExtExtBinop278, <2 x float> %i.di, <2 x i32> <i32 0, i32 3>
  %i.dk = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dl = shufflevector <2 x float> %foldExtExtBinop281, <2 x float> %i.dk, <2 x i32> <i32 0, i32 3>
  %i.dm = fsub <2 x float> %i.dj, %i.dl
  %i.dn = fsub <2 x float> %i.df, %i.dh
  %i.do = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dp = fmul <2 x float> %i.do, %i.da
  %i.dq = shufflevector <2 x float> %i.da, <2 x float> %i.dc, <2 x i32> <i32 1, i32 2>
  %i.dr = fmul <2 x float> %i.do, %i.dq
  %i.ds = fadd <2 x float> %i.dp, %i.dm
  %i.dt = fadd <2 x float> %i.dr, %i.dn
  %i.du = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dv = fmul <2 x float> %i.cx, %i.du
  %i.dw = shufflevector <2 x float> %i.cx, <2 x float> %i.cz, <2 x i32> <i32 1, i32 2>
  %i.dx = fmul <2 x float> %i.dw, %i.du
  %7 = fadd <2 x float> %i.dv, %i.ds              ; 3 uses
  %i.dy = fadd <2 x float> %i.dx, %i.dt           ; 2 uses
  %shift283 = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dz = fadd <2 x float> %i.dd, %shift283
  %i.ea = extractelement <2 x float> %i.dy, i64 1 ; 2 uses
  %i.eb = extractelement <2 x float> %7, i64 1    ; 2 uses
  %8 = extractelement <2 x float> %7, i64 0       ; 3 uses
  %9 = fmul float %8, 0.000000e+00
  %i.ec = fmul float %i.eb, 0.000000e+00
  %i.ed = fsub float %9, %i.ec
  %foldExtExtBinop283 = fmul <2 x float> %i.cn, %i.co
  %foldExtExtBinop285 = fmul <2 x float> %i.cl, %i.cq
  %foldExtExtBinop290 = fsub <2 x float> %foldExtExtBinop283, %foldExtExtBinop285
  %10 = extractelement <2 x float> %foldExtExtBinop290, i64 0
  %i.ee = shufflevector <2 x float> %i.co, <2 x float> %i.cq, <2 x i32> <i32 1, i32 2>
  %i.ef = fmul <2 x float> %i.cl, %i.ee
  %11 = shufflevector <2 x float> %i.cl, <2 x float> %i.cn, <2 x i32> <i32 1, i32 2>
  %12 = fmul <2 x float> %11, %i.co
  %i.eg = fsub <2 x float> %i.ef, %12
  %i.eh = fmul float %.sroa.443.12.vec.extract.i, %.sroa.03.4.vec.extract.i.i
  %13 = fadd float %i.eh, %10
  %i.ei = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ej = shufflevector <2 x float> %i.cq, <2 x float> %i.co, <2 x i32> <i32 0, i32 2>
  %i.ek = fmul <2 x float> %i.ei, %i.ej
  %i.el = fadd <2 x float> %i.eg, %i.ek
  %i.em = fmul float %.sroa.011.4.vec.extract.i.i, %.sroa.433.12.vec.extract.i
  %14 = fadd float %i.em, %13                     ; 4 uses
  %i.en = shufflevector <2 x float> %i.cn, <2 x float> %i.cl, <2 x i32> <i32 0, i32 2>
  %i.eo = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ep = fmul <2 x float> %i.en, %i.eo
  %i.eq = fadd <2 x float> %i.ep, %i.el           ; 5 uses
  %15 = fmul float %.sroa.443.12.vec.extract.i, %.sroa.433.12.vec.extract.i
  %16 = fadd float %i.cu, %i.ct
  %17 = fsub float %15, %16                       ; 2 uses
  %i.er = extractelement <2 x float> %i.eq, i64 0
  %i.es = fmul float %i.er, 0.000000e+00          ; 2 uses
  %i.et = insertelement <2 x float> poison, float %14, i64 0
  %i.eu = insertelement <2 x float> %i.et, float %i.es, i64 1
  %i.ev = insertelement <2 x float> %i.eq, float %i.es, i64 0
  %i.ew = fsub <2 x float> %i.eu, %i.ev
  %i.ex = extractelement <2 x float> %i.eq, i64 1 ; 2 uses
  %i.ey = fmul float %i.ex, 0.000000e+00
  %i.ez = fmul float %14, 0.000000e+00
  %i.fa = fsub float %i.ey, %i.ez
  %i.fb = fmul float %17, 0.000000e+00
  %i.fc = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fd = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fe = fadd <2 x float> %i.fd, %i.ew           ; 3 uses
  %18 = fadd float %17, %i.fa                     ; 2 uses
  %i.ff = fmul float %14, %18
  %shift292 = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fg = fmul <2 x float> %i.eq, %shift292
  %19 = extractelement <2 x float> %i.fg, i64 0
  %20 = fsub float %i.ff, %19
  %21 = fmul float %i.ex, %18
  %22 = fmul <2 x float> %i.eq, %i.fe
  %23 = extractelement <2 x float> %i.fe, i64 0
  %i.fh = fmul float %14, %23
  %i.fi = insertelement <2 x float> poison, float %21, i64 0
  %i.fj = insertelement <2 x float> %i.fi, float %i.fh, i64 1
  %i.fk = fsub <2 x float> %22, %i.fj
  %24 = fmul <2 x float> %i.fk, splat (float 2.000000e+00)
  %25 = fadd <2 x float> %24, <float 0.000000e+00, float 1.000000e+00> ; 3 uses
  %i.fl = fmul <2 x float> %i.cz, %i.dc           ; 2 uses
  %i.fm = fadd <2 x float> %i.fl, %i.dz
  %shift297 = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop298 = fsub <2 x float> %shift297, %i.fm
  %26 = extractelement <2 x float> %foldExtExtBinop298, i64 0 ; 2 uses
  %i.fn = fmul float %i.ea, 0.000000e+00          ; 2 uses
  %27 = fsub float %i.eb, %i.fn
  %28 = fsub float %i.fn, %8
  %i.fo = fmul float %26, 0.000000e+00            ; 2 uses
  %29 = fadd float %i.fo, %27                     ; 2 uses
  %30 = fadd float %i.fo, %28                     ; 2 uses
  %31 = fadd float %26, %i.ed                     ; 2 uses
  %i.fp = fmul float %i.ea, %29
  %32 = fmul float %8, %31
  %i.fq = fsub float %i.fp, %32
  %i.fr = insertelement <2 x float> poison, float %30, i64 0
  %i.fs = insertelement <2 x float> %i.fr, float %31, i64 1
  %i.ft = fmul <2 x float> %7, %i.fs
  %i.fu = insertelement <2 x float> poison, float %29, i64 0
  %i.fv = insertelement <2 x float> %i.fu, float %30, i64 1
  %i.fw = fmul <2 x float> %i.dy, %i.fv
  %i.fx = fsub <2 x float> %i.ft, %i.fw
  %i.fy = insertelement <2 x float> poison, float %i.fq, i64 0
  %i.fz = insertelement <2 x float> %i.fy, float %20, i64 1
  %i.ga = fmul <2 x float> %i.fz, splat (float 2.000000e+00)
  %i.gb = fadd <2 x float> %i.ga, zeroinitializer ; 4 uses
  %i.gc = fmul <2 x float> %i.fx, splat (float 2.000000e+00)
  %i.gd = fadd <2 x float> %i.gc, <float 1.000000e+00, float 0.000000e+00> ; 4 uses
  %i.ge = fmul <2 x float> %25, %i.gd
  %i.gf = shufflevector <2 x float> %25, <2 x float> %i.gd, <2 x i32> <i32 1, i32 2>
  %i.gg = fmul <2 x float> %i.gb, %i.gf
  %i.gh = fsub <2 x float> %i.ge, %i.gg           ; 3 uses
  %i.gi = extractelement <2 x float> %i.gb, i64 0
  %shift300 = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop301 = fmul <2 x float> %shift300, %i.gb
  %shift303 = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop304 = fmul <2 x float> %25, %shift303
  %foldExtExtBinop306 = fsub <2 x float> %foldExtExtBinop301, %foldExtExtBinop304 ; 3 uses
  %i.gj = fmul <2 x float> %i.gh, %i.gh           ; 2 uses
  %shift308 = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop309 = fadd <2 x float> %i.gj, %shift308
  %foldExtExtBinop311 = fmul <2 x float> %foldExtExtBinop306, %foldExtExtBinop306
  %foldExtExtBinop313 = fadd <2 x float> %foldExtExtBinop311, %foldExtExtBinop309
  %i.gk = extractelement <2 x float> %foldExtExtBinop313, i64 0 ; 2 uses
  %i.gl = fcmp ogt float %i.gk, f0x057A0000
  br i1 %i.gl, label %bb.h, label %b3Normalize.exit

bb.h:                                             ; preds = %bb.g
  %i.gm = extractelement <2 x float> %foldExtExtBinop306, i64 0
  %sqrt = call float @llvm.sqrt.f32(float %i.gk)
  %i.gn = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.go = insertelement <2 x float> poison, float %i.gn, i64 0
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gq = fmul <2 x float> %i.gh, %i.gp
  %i.gr = fmul float %i.gm, %i.gn
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.g, %bb.h
  %.sroa.018.0.i = phi <2 x float> [ %i.gq, %bb.h ], [ zeroinitializer, %bb.g ] ; 2 uses
  %.sroa.5.0.i = phi float [ %i.gr, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.039.0.copyload = load <2 x float>, ptr %i.gs, align 4 ; 2 uses
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 204
  %.sroa.240.0.copyload = load float, ptr %.sroa.240.0..sroa_idx, align 4
  %.sroa.037.0.copyload = load <2 x float>, ptr %i.gt, align 4 ; 2 uses
  %.sroa.238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.238.0.copyload = load float, ptr %.sroa.238.0..sroa_idx, align 4
  %foldExtExtBinop315 = fadd <2 x float> %.sroa.039.0.copyload, %.sroa.037.0.copyload
  %i.gu = extractelement <2 x float> %foldExtExtBinop315, i64 1
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !315
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !316
  %i.gz = fsub float %i.gw, %i.gy                 ; 2 uses
  %i.ha = fmul float %i.gi, %i.gz
  %i.hb = fadd float %i.gu, %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !317 ; 2 uses
  %.sroa.05.4.vec.extract.i253 = extractelement <2 x float> %.sroa.018.0.i, i64 1
  %i.he = fmul float %.sroa.05.4.vec.extract.i253, %i.hd
  %i.hf = fadd float %i.he, %i.hb                 ; 2 uses
  %i.hg = fmul float %i.hf, %i.hf
  %foldExtExtBinop317 = fadd <2 x float> %.sroa.039.0.copyload, %.sroa.037.0.copyload
  %i.hh = fadd float %.sroa.240.0.copyload, %.sroa.238.0.copyload
  %i.hi = insertelement <2 x float> poison, float %i.gz, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hk = fmul <2 x float> %i.gd, %i.hj
  %i.hl = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> %foldExtExtBinop317, <2 x i32> <i32 0, i32 2>
  %i.hn = fadd <2 x float> %i.hm, %i.hk
  %i.ho = shufflevector <2 x float> %.sroa.018.0.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hp = insertelement <2 x float> %i.ho, float %.sroa.5.0.i, i64 0
  %i.hq = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.hr = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hs = fmul <2 x float> %i.hp, %i.hr
  %i.ht = fadd <2 x float> %i.hs, %i.hn           ; 2 uses
  %i.hu = fmul <2 x float> %i.ht, %i.ht           ; 2 uses
  %i.hv = extractelement <2 x float> %i.hu, i64 1
  %i.hw = fadd float %i.hv, %i.hg
  %i.hx = extractelement <2 x float> %i.hu, i64 0
  %i.hy = fadd float %i.hx, %i.hw
  %sqrt.i259 = call float @llvm.sqrt.f32(float %i.hy)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.hz = insertelement <2 x float> poison, float %sqrt.i259, i64 0
  %i.ia = insertelement <2 x float> %i.hz, float %sqrt.i206, i64 1
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.sroa.010.0.copyload = load <2 x float>, ptr %i.ib, align 4 ; 2 uses
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.sroa.211.0.copyload = load float, ptr %.sroa.211.0..sroa_idx, align 4
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 236
  %.sroa.09.0.copyload = load <2 x float>, ptr %i.ic, align 4 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 244
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 4
  %i.id = shufflevector <2 x float> %.sroa.09.0.copyload, <2 x float> %.sroa.010.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ie = fmul <2 x float> %i.id, %i.id
  %i.if = shufflevector <2 x float> %.sroa.09.0.copyload, <2 x float> %.sroa.010.0.copyload, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ig = fmul <2 x float> %i.if, %i.if
  %i.ih = fadd <2 x float> %i.ie, %i.ig
  %i.ii = insertelement <2 x float> poison, float %.sroa.2.0.copyload, i64 0
  %i.ij = insertelement <2 x float> %i.ii, float %.sroa.211.0.copyload, i64 1 ; 2 uses
  %i.ik = fmul <2 x float> %i.ij, %i.ij
  %i.il = fadd <2 x float> %i.ik, %i.ih
  %i.im = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.il)
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.ip = load <2 x float>, ptr %i.io, align 4, !tbaa !9
  %i.iq = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ip)
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.is = load float, ptr %i.ir, align 4, !tbaa !318
  %i.it = fsub float %i.iq, %i.is                 ; 2 uses
  %i.iu = load <2 x float>, ptr %i.in, align 4, !tbaa !9 ; 2 uses
  %i.iv = fmul <2 x float> %i.iu, %i.iu           ; 2 uses
  %shift319 = shufflevector <2 x float> %i.iv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop320 = fadd <2 x float> %i.iv, %shift319
  %i.iw = extractelement <2 x float> %foldExtExtBinop320, i64 0
  %i.ix = fmul float %i.it, %i.it
  %i.iy = fadd float %i.iw, %i.ix
  %sqrt266 = tail call float @llvm.sqrt.f32(float %i.iy)
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !319 ; 3 uses
  %i.jb = fcmp olt float %i.ja, 0.000000e+00
  %i.jc = fneg float %i.ja
  %i.jd = select i1 %i.jb, float %i.jc, float %i.ja
  %i.je = insertelement <2 x float> poison, float %i.jd, i64 0
  %i.jf = insertelement <2 x float> %i.je, float %sqrt266, i64 1
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j, %bb.i, %b3Normalize.exit, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.jg = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.g, %bb.b ], [ %i.t, %bb.c ], [ %i.ao, %bb.d ], [ %i.bg, %bb.e ], [ %i.ca, %bb.f ], [ %i.ia, %b3Normalize.exit ], [ %i.im, %bb.i ], [ %i.jf, %bb.j ] ; 2 uses
  %i.jh = extractelement <2 x float> %i.jg, i64 1
  %i.ji = fmul float %2, %i.jh
  store float %i.ji, ptr %3, align 4, !tbaa !9
  %i.jj = extractelement <2 x float> %i.jg, i64 0
  %i.jk = fmul float %2, %i.jj
  store float %i.jk, ptr %4, align 4, !tbaa !9
  ret void
}

declare void @b3GetBodyTransform(ptr dead_on_unwind writable sret(%struct.b3Transform) align 4, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define { <2 x float>, float } @b3Joint_GetConstraintForce(i64 %0) local_unnamed_addr #7 {
bb.a:
  %.sroa.26.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.26.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #11 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 3960
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.f = shl i64 %0, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = getelementptr inbounds [72 x i8], ptr %i.e, i64 %i.g ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !87   ; 2 uses
  %i.k = icmp eq i32 %i.j, 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !88
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !89
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr [112 x i8], ptr %i.c, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 1160
  br label %b3GetJointSim.exit.i

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 3920
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !90
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds [88 x i8], ptr %i.t, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  br label %b3GetJointSim.exit.i

b3GetJointSim.exit.i:                             ; preds = %bb.c, %bb.b
  %.sink.in.i.i = phi ptr [ %i.w, %bb.c ], [ %i.r, %bb.b ]
  %.sink.i.i = load ptr, ptr %.sink.in.i.i, align 8, !tbaa !92
  %i.x = sext i32 %i.m to i64
  %i.y = getelementptr inbounds [444 x i8], ptr %.sink.i.i, i64 %i.x ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !117
  switch i32 %i.aa, label %b3GetJointConstraintForce.exit [
    i32 8, label %bb.j
    i32 1, label %bb.d
    i32 7, label %bb.i
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
  ]

bb.d:                                             ; preds = %b3GetJointSim.exit.i
  %i.ab = tail call { <2 x float>, float } @b3GetDistanceJointForce(ptr noundef nonnull %i.c, ptr noundef %i.y) #11 ; 2 uses
  %.fca.0.extract23.i = extractvalue { <2 x float>, float } %i.ab, 0
  %.fca.1.extract24.i = extractvalue { <2 x float>, float } %i.ab, 1
  br label %b3GetJointConstraintForce.exit

bb.e:                                             ; preds = %b3GetJointSim.exit.i
  %i.ac = tail call { <2 x float>, float } @b3GetMotorJointForce(ptr noundef nonnull %i.c, ptr noundef %i.y) #11 ; 2 uses
  %.fca.0.extract19.i = extractvalue { <2 x float>, float } %i.ac, 0
  %.fca.1.extract20.i = extractvalue { <2 x float>, float } %i.ac, 1
  br label %b3GetJointConstraintForce.exit

bb.f:                                             ; preds = %b3GetJointSim.exit.i
  %i.ad = tail call { <2 x float>, float } @b3GetPrismaticJointForce(ptr noundef nonnull %i.c, ptr noundef %i.y) #11 ; 2 uses
  %.fca.0.extract15.i = extractvalue { <2 x float>, float } %i.ad, 0
  %.fca.1.extract16.i = extractvalue { <2 x float>, float } %i.ad, 1
end_hunk_0
begin_hunk_1_@b3SolveJoint:bb.a
  tail call void @b3SolveParallelJoint(ptr noundef nonnull %0, ptr noundef %1) #11
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  tail call void @b3SolveDistanceJoint(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext %2) #11
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  tail call void @b3SolveMotorJoint(ptr noundef nonnull %0, ptr noundef %1) #11
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  tail call void @b3SolvePrismaticJoint(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext %2) #11
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  tail call void @b3SolveRevoluteJoint(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext %2) #11
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  tail call void @b3SolveSphericalJoint(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext %2) #11
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  tail call void @b3SolveWeldJoint(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext %2) #11
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  tail call void @b3SolveWheelJoint(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext %2) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

declare void @b3SolveParallelJoint(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @b3SolveDistanceJoint(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @b3SolveMotorJoint(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @b3SolvePrismaticJoint(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @b3SolveRevoluteJoint(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @b3SolveSphericalJoint(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @b3SolveWeldJoint(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @b3SolveWheelJoint(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @b3PrepareJoints_Overflow(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2592
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !166
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 2600
  %i.f = load i32, ptr %i.e, align 8, !tbaa !167  ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.h = getelementptr inbounds nuw [444 x i8], ptr %i.d, i64 %indvars.iv
  tail call void @b3PrepareJoint(ptr noundef %i.h, ptr noundef nonnull %0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !345
}

; Function Attrs: nounwind uwtable
define hidden void @b3WarmStartJoints_Overflow(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2592
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !166
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 2600
  %i.f = load i32, ptr %i.e, align 8, !tbaa !167  ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.h = getelementptr inbounds nuw [444 x i8], ptr %i.d, i64 %indvars.iv
  tail call void @b3WarmStartJoint(ptr noundef %i.h, ptr noundef nonnull %0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !346
}

; Function Attrs: nounwind uwtable
define hidden void @b3SolveJoints_Overflow(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2592
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !166
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 2600
  %i.f = load i32, ptr %i.e, align 8, !tbaa !167  ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.h = getelementptr inbounds nuw [444 x i8], ptr %i.d, i64 %indvars.iv
  tail call void @b3SolveJoint(ptr noundef %i.h, ptr noundef nonnull %0, i1 noundef zeroext %1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !347
}

; Function Attrs: nounwind uwtable
define hidden void @b3DrawJoint(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %3 = alloca %struct.b3Transform, align 8        ; 15 uses
  %4 = alloca %struct.b3Transform, align 8        ; 15 uses
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 3880
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !139  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !120
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [128 x i8], ptr %i.c, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load i32, ptr %i.h, align 4, !tbaa !120
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [128 x i8], ptr %i.c, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !112
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !112
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.an, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !87   ; 2 uses
  %i.t = icmp eq i32 %i.s, 2
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !88
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !89
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr [112 x i8], ptr %1, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 1160
  br label %b3GetJointSim.exit

bb.e:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 3920
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !90
  %i.ad = sext i32 %i.s to i64
  %i.ae = getelementptr inbounds [88 x i8], ptr %i.ac, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  br label %b3GetJointSim.exit

b3GetJointSim.exit:                               ; preds = %bb.d, %bb.e
  %.sink.in.i = phi ptr [ %i.af, %bb.e ], [ %i.aa, %bb.d ]
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !92
  %i.ag = sext i32 %i.v to i64
  %i.ah = getelementptr inbounds [444 x i8], ptr %.sink.i, i64 %i.ag ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @b3GetBodyTransformQuick(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %3, ptr noundef nonnull %1, ptr noundef nonnull %i.g) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @b3GetBodyTransformQuick(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %4, ptr noundef nonnull %1, ptr noundef nonnull %i.k) #11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.0109.0.copyload = load <2 x float>, ptr %i.ai, align 4 ; 6 uses
  %.sroa.2110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.2110.0.copyload = load float, ptr %.sroa.2110.0..sroa_idx, align 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ak = load <2 x float>, ptr %i.aj, align 4    ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.am = load <2 x float>, ptr %i.al, align 4    ; 6 uses
  %.sroa.03.4.vec.extract.i.i.i.a = extractelement <2 x float> %i.ak, i64 1 ; 2 uses
  %.sroa.011.0.vec.extract.i.i.i.a = extractelement <2 x float> %.sroa.0109.0.copyload, i64 1 ; 2 uses
  %.sroa.03.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.0109.0.copyload, i64 0
  %.sroa.011.0.vec.extract.i.i.i = extractelement <2 x float> %i.ak, i64 0 ; 2 uses
  %5 = fmul float %.sroa.011.0.vec.extract.i.i.i.a, %.sroa.011.0.vec.extract.i.i.i
  %6 = fmul float %.sroa.03.0.vec.extract.i.i.i, %.sroa.03.4.vec.extract.i.i.i.a
  %i.an = fsub float %5, %6
  %.sroa.3.12.vec.extract.i.i = extractelement <2 x float> %i.am, i64 1 ; 2 uses
  %i.ao = fmul float %.sroa.2110.0.copyload, %.sroa.3.12.vec.extract.i.i
  %i.ap = fadd float %i.ao, %i.an                 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !348 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 44
  %.sroa.096.0.copyload = load <2 x float>, ptr %i.as, align 4 ; 6 uses
  %.sroa.297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 52
  %.sroa.297.0.copyload = load float, ptr %.sroa.297.0..sroa_idx, align 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.au = load <2 x float>, ptr %i.at, align 4    ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.aw = load <2 x float>, ptr %i.av, align 4    ; 7 uses
  %i.ax = shufflevector <2 x float> %.sroa.096.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ay = fmul <2 x float> %i.ax, %i.au           ; 2 uses
  %shift231 = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop232 = fsub <2 x float> %i.ay, %shift231
  %i.az = extractelement <2 x float> %foldExtExtBinop232, i64 0
  %.sroa.3.12.vec.extract.i.i182 = extractelement <2 x float> %i.aw, i64 1
  %i.ba = fmul float %.sroa.297.0.copyload, %.sroa.3.12.vec.extract.i.i182
  %foldExtExtBinop234 = fmul <2 x float> %.sroa.0109.0.copyload, %i.am
  %7 = fmul float %.sroa.011.0.vec.extract.i.i.i.a, %.sroa.3.12.vec.extract.i.i
  %foldExtExtBinop236 = fmul <2 x float> %.sroa.096.0.copyload, %i.aw
  %i.bb = insertelement <2 x float> poison, float %.sroa.2110.0.copyload, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %.sroa.297.0.copyload, i64 1 ; 3 uses
  %i.bd = shufflevector <2 x float> %i.ak, <2 x float> %i.au, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.be = fmul <2 x float> %i.bc, %i.bd
  %i.bf = shufflevector <2 x float> %foldExtExtBinop234, <2 x float> %foldExtExtBinop236, <2 x i32> <i32 0, i32 2>
  %i.bg = fsub <2 x float> %i.bf, %i.be
  %foldExtExtBinop238 = fmul <2 x float> %.sroa.096.0.copyload, %i.aw
  %i.bh = insertelement <2 x float> %foldExtExtBinop238, float %7, i64 0
  %i.bi = fadd <2 x float> %i.bh, %i.bg           ; 3 uses
  %i.bj = shufflevector <2 x float> %i.ak, <2 x float> %i.au, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bk = fmul <2 x float> %i.bc, %i.bj
  %i.bl = shufflevector <2 x float> %.sroa.0109.0.copyload, <2 x float> %.sroa.096.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.bm = shufflevector <2 x float> %i.am, <2 x float> %i.aw, <2 x i32> <i32 0, i32 2>
  %i.bn = fmul <2 x float> %i.bl, %i.bm
  %i.bo = fsub <2 x float> %i.bk, %i.bn
  %i.bp = shufflevector <2 x float> %.sroa.0109.0.copyload, <2 x float> %.sroa.096.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.bq = shufflevector <2 x float> %i.am, <2 x float> %i.aw, <2 x i32> <i32 1, i32 3>
  %i.br = fmul <2 x float> %i.bp, %i.bq
  %i.bs = fadd <2 x float> %i.br, %i.bo           ; 3 uses
  %i.bt = fmul <2 x float> %i.bd, %i.bi
  %i.bu = fmul <2 x float> %i.bj, %i.bs
  %i.bv = fsub <2 x float> %i.bt, %i.bu
  %i.bw = fmul <2 x float> %i.bv, splat (float 2.000000e+00)
  %i.bx = fadd <2 x float> %i.bc, %i.bw
  %8 = fmul float %.sroa.03.4.vec.extract.i.i.i.a, %i.ap
  %9 = fmul float %.sroa.011.0.vec.extract.i.i.i, %i.ap
  %10 = load <2 x float>, ptr %3, align 8, !tbaa !9
  %11 = fadd float %i.ba, %i.az                   ; 2 uses
  %foldExtExtBinop237 = fmul <2 x float> %i.am, %i.bi
  %foldExtExtBinop239 = fmul <2 x float> %i.am, %i.bs
  %12 = insertelement <2 x float> poison, float %8, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> %foldExtExtBinop239, <2 x i32> <i32 0, i32 2>
  %14 = insertelement <2 x float> %foldExtExtBinop237, float %9, i64 1
  %i.by = fsub <2 x float> %13, %14
  %i.bz = fmul <2 x float> %i.by, splat (float 2.000000e+00)
  %i.ca = fadd <2 x float> %.sroa.0109.0.copyload, %i.bz
  %i.cb = fadd <2 x float> %10, %i.ca             ; 7 uses
  %i.cc = shufflevector <2 x float> %i.au, <2 x float> %i.aw, <2 x i32> <i32 1, i32 2>
  %i.cd = insertelement <2 x float> %i.bs, float %11, i64 0
  %i.ce = fmul <2 x float> %i.cc, %i.cd
  %i.cf = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cg = shufflevector <2 x float> %i.aw, <2 x float> %i.au, <2 x i32> <i32 0, i32 2>
  %i.ch = insertelement <2 x float> %i.cf, float %11, i64 1
  %i.ci = fmul <2 x float> %i.cg, %i.ch
  %i.cj = fsub <2 x float> %i.ce, %i.ci
  %i.ck = fmul <2 x float> %i.cj, splat (float 2.000000e+00)
  %i.cl = fadd <2 x float> %.sroa.096.0.copyload, %i.ck
  %i.cm = load <2 x float>, ptr %4, align 8, !tbaa !9
  %i.cn = fadd <2 x float> %i.cm, %i.cl           ; 7 uses
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cp = load float, ptr %i.co, align 8, !tbaa !348
  %i.cq = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.cr = insertelement <2 x float> %i.cq, float %i.cp, i64 1
  %i.cs = fadd <2 x float> %i.cr, %i.bx           ; 8 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !350
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cw = load float, ptr %i.cv, align 8, !tbaa !116
  %i.cx = fmul float %i.cu, %i.cw                 ; 2 uses
  %i.cy = fcmp olt float %i.cx, f0x38D1B717
  %i.cz = select i1 %i.cy, float f0x38D1B717, float %i.cx ; 6 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !117
  switch i32 %i.db, label %bb.o [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
    i32 7, label %bb.m
    i32 8, label %bb.n
  ]

bb.f:                                             ; preds = %b3GetJointSim.exit
  call void @b3DrawParallelJoint(ptr noundef nonnull %0, ptr noundef nonnull %i.ah, ptr noundef nonnull byval(%struct.b3Transform) align 8 %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, float noundef %i.cz) #11
  br label %bb.p

bb.g:                                             ; preds = %b3GetJointSim.exit
  call void @b3DrawDistanceJoint(ptr noundef nonnull %0, ptr noundef nonnull %i.ah, ptr noundef nonnull byval(%struct.b3Transform) align 8 %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4) #11
  br label %bb.p

bb.h:                                             ; preds = %b3GetJointSim.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !351
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !352
  %i.dg = extractelement <2 x float> %i.cs, i64 0
  %i.dh = extractelement <2 x float> %i.cs, i64 1
  call void %i.dd(<2 x float> %i.cb, float %i.dg, <2 x float> %i.cn, float %i.dh, i32 noundef 16766720, ptr noundef %i.df) #11
  br label %bb.p

bb.i:                                             ; preds = %b3GetJointSim.exit
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !351
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !352
  %i.dm = extractelement <2 x float> %i.cs, i64 0 ; 2 uses
  %i.dn = extractelement <2 x float> %i.cs, i64 1 ; 2 uses
  call void %i.dj(<2 x float> %i.cb, float %i.dm, <2 x float> %i.cn, float %i.dn, i32 noundef 14524637, ptr noundef %i.dl) #11
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !353
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !352
  call void %i.dp(<2 x float> %i.cb, float %i.dm, float noundef 8.000000e+00, i32 noundef 10145074, ptr noundef %i.dq) #11
  %i.dr = load ptr, ptr %i.do, align 8, !tbaa !353
  %i.ds = load ptr, ptr %i.dk, align 8, !tbaa !352
  call void %i.dr(<2 x float> %i.cn, float %i.dn, float noundef 8.000000e+00, i32 noundef 14524637, ptr noundef %i.ds) #11
  br label %bb.p

bb.j:                                             ; preds = %b3GetJointSim.exit
  call void @b3DrawPrismaticJoint(ptr noundef nonnull %0, ptr noundef nonnull %i.ah, ptr noundef nonnull byval(%struct.b3Transform) align 8 %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, float noundef %i.cz) #11
  br label %bb.p

bb.k:                                             ; preds = %b3GetJointSim.exit
  call void @b3DrawRevoluteJoint(ptr noundef nonnull %0, ptr noundef nonnull %i.ah, ptr noundef nonnull byval(%struct.b3Transform) align 8 %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, float noundef %i.cz) #11
  br label %bb.p

bb.l:                                             ; preds = %b3GetJointSim.exit
  call void @b3DrawSphericalJoint(ptr noundef nonnull %0, ptr noundef nonnull %i.ah, ptr noundef nonnull byval(%struct.b3Transform) align 8 %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, float noundef %i.cz) #11
  br label %bb.p

bb.m:                                             ; preds = %b3GetJointSim.exit
  call void @b3DrawWeldJoint(ptr noundef nonnull %0, ptr noundef nonnull %i.ah, ptr noundef nonnull byval(%struct.b3Transform) align 8 %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, float noundef %i.cz) #11
  br label %bb.p

bb.n:                                             ; preds = %b3GetJointSim.exit
  call void @b3DrawWheelJoint(ptr noundef nonnull %0, ptr noundef nonnull %i.ah, ptr noundef nonnull byval(%struct.b3Transform) align 8 %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, float noundef %i.cz) #11
  br label %bb.p

bb.o:                                             ; preds = %b3GetJointSim.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !351
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !352
  %.sroa.070.0.copyload = load <2 x float>, ptr %3, align 8
  %i.dx = extractelement <2 x float> %i.cs, i64 0 ; 2 uses
  call void %i.du(<2 x float> %.sroa.070.0.copyload, float %i.ar, <2 x float> %i.cb, float %i.dx, i32 noundef 9419919, ptr noundef %i.dw) #11
  %i.dy = load ptr, ptr %i.dt, align 8, !tbaa !351
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !352
  %i.ea = extractelement <2 x float> %i.cs, i64 1 ; 2 uses
  call void %i.dy(<2 x float> %i.cb, float %i.dx, <2 x float> %i.cn, float %i.ea, i32 noundef 9419919, ptr noundef %i.dz) #11
  %i.eb = load ptr, ptr %i.dt, align 8, !tbaa !351
  %i.ec = load ptr, ptr %i.dv, align 8, !tbaa !352
  %.sroa.062.0.copyload = load <2 x float>, ptr %4, align 8
  %.sroa.263.0.copyload = load float, ptr %i.co, align 8
  call void %i.eb(<2 x float> %.sroa.062.0.copyload, float %.sroa.263.0.copyload, <2 x float> %i.cn, float %i.ea, i32 noundef 9419919, ptr noundef %i.ec) #11
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !354, !range !105, !noundef !106
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !89 ; 2 uses
  %.not = icmp eq i32 %i.eh, -1
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ei = fmul <2 x float> %i.cb, splat (float 5.000000e-01)
  %i.ej = fmul <2 x float> %i.cn, splat (float 5.000000e-01)
  %i.ek = fadd <2 x float> %i.ei, %i.ej
  %i.el = fmul <2 x float> %i.cs, splat (float 5.000000e-01)
  %i.em = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.el)
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !353
  %i.ep = sext i32 %i.eh to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr @__const.b3DrawJoint.graphColors, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !13
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !352
  call void %i.eo(<2 x float> %i.ek, float %i.em, float noundef 5.000000e+00, i32 noundef %i.er, ptr noundef %i.et) #11
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 106
  %i.ev = load i8, ptr %i.eu, align 2, !tbaa !355, !range !105, !noundef !106
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.t, label %bb.am

bb.t:                                             ; preds = %bb.s
  %i.ex = load i32, ptr %i.r, align 8, !tbaa !87  ; 2 uses
  %i.ey = icmp eq i32 %i.ex, 2
  %i.ez = load i32, ptr %i.u, align 8, !tbaa !88
  br i1 %i.ey, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !89
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr [112 x i8], ptr %1, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.fd, i64 1160
  br label %b3GetJointSim.exit.i

bb.v:                                             ; preds = %bb.t
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 3920
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !90
  %i.fh = sext i32 %i.ex to i64
  %i.fi = getelementptr inbounds [88 x i8], ptr %i.fg, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  br label %b3GetJointSim.exit.i

b3GetJointSim.exit.i:                             ; preds = %bb.v, %bb.u
  %.sink.in.i.i = phi ptr [ %i.fj, %bb.v ], [ %i.fe, %bb.u ]
  %.sink.i.i = load ptr, ptr %.sink.in.i.i, align 8, !tbaa !92
  %i.fk = sext i32 %i.ez to i64
  %i.fl = getelementptr inbounds [444 x i8], ptr %.sink.i.i, i64 %i.fk ; 7 uses
  %i.fm = load i32, ptr %i.da, align 4, !tbaa !117
  switch i32 %i.fm, label %b3GetJointConstraintForce.exit [
    i32 8, label %bb.ac
    i32 1, label %bb.w
    i32 7, label %bb.ab
    i32 3, label %bb.x
    i32 4, label %bb.y
    i32 5, label %bb.z
    i32 6, label %bb.aa
  ]

bb.w:                                             ; preds = %b3GetJointSim.exit.i
  %i.fn = call { <2 x float>, float } @b3GetDistanceJointForce(ptr noundef nonnull %1, ptr noundef %i.fl) #11 ; 2 uses
  %.fca.0.extract23.i = extractvalue { <2 x float>, float } %i.fn, 0
  %.fca.1.extract24.i = extractvalue { <2 x float>, float } %i.fn, 1
  br label %b3GetJointConstraintForce.exit

bb.x:                                             ; preds = %b3GetJointSim.exit.i
  %i.fo = call { <2 x float>, float } @b3GetMotorJointForce(ptr noundef nonnull %1, ptr noundef %i.fl) #11 ; 2 uses
  %.fca.0.extract19.i = extractvalue { <2 x float>, float } %i.fo, 0
  %.fca.1.extract20.i = extractvalue { <2 x float>, float } %i.fo, 1
  br label %b3GetJointConstraintForce.exit

bb.y:                                             ; preds = %b3GetJointSim.exit.i
  %i.fp = call { <2 x float>, float } @b3GetPrismaticJointForce(ptr noundef nonnull %1, ptr noundef %i.fl) #11 ; 2 uses
  %.fca.0.extract15.i = extractvalue { <2 x float>, float } %i.fp, 0
  %.fca.1.extract16.i = extractvalue { <2 x float>, float } %i.fp, 1
  br label %b3GetJointConstraintForce.exit

bb.z:                                             ; preds = %b3GetJointSim.exit.i
  %i.fq = call { <2 x float>, float } @b3GetRevoluteJointForce(ptr noundef nonnull %1, ptr noundef %i.fl) #11 ; 2 uses
  %.fca.0.extract11.i = extractvalue { <2 x float>, float } %i.fq, 0
  %.fca.1.extract12.i = extractvalue { <2 x float>, float } %i.fq, 1
end_hunk_1
