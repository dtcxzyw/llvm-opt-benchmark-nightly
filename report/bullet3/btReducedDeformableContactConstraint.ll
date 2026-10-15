Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btReducedDeformableContactConstraint?download=true
inline.NumInlined: 225
inline.NumDeleted: 49
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN45btReducedDeformableNodeRigidContactConstraintC2EP23btReducedDeformableBodyRKN10btSoftBody26DeformableNodeRigidContactERK19btContactSolverInfof:bb.a
  %i.dk = load <4 x float>, ptr %i.cp, align 8
  %i.dl = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.cr, i64 2
  %i.dm = shufflevector <4 x float> %i.dj, <4 x float> %i.dl, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dn = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.ct, i64 2
  %i.do = shufflevector <4 x float> %i.dk, <4 x float> %i.dn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dp = fadd <4 x float> %i.dm, %i.do           ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.dr = load <4 x float>, ptr %i.cu, align 16
  %i.ds = load <4 x float>, ptr %i.cv, align 8
  %i.dt = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.cx, i64 2
  %i.du = shufflevector <4 x float> %i.dr, <4 x float> %i.dt, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dv = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.cz, i64 2
  %i.dw = shufflevector <4 x float> %i.ds, <4 x float> %i.dv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dx = fadd <4 x float> %i.du, %i.dw           ; 4 uses
  store <4 x float> %i.dh, ptr %i.da, align 4
  store <4 x float> %i.dp, ptr %i.di, align 4
  store <4 x float> %i.dx, ptr %i.dq, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.dy = extractelement <4 x float> %i.dh, i64 0
  %i.dz = extractelement <4 x float> %i.dh, i64 1
  %i.ea = extractelement <4 x float> %i.dh, i64 2
  %i.eb = extractelement <4 x float> %i.dp, i64 0
  %i.ec = extractelement <4 x float> %i.dp, i64 1
  %i.ed = extractelement <4 x float> %i.dp, i64 2
  %i.ee = extractelement <4 x float> %i.dx, i64 0
  %i.ef = extractelement <4 x float> %i.dx, i64 1
  %i.eg = extractelement <4 x float> %i.dx, i64 2
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.eh = phi float [ %.pre52, %bb.g ], [ %i.eg, %bb.h ]
  %i.ei = phi float [ %.pre50, %bb.g ], [ %i.ef, %bb.h ]
  %i.ej = phi float [ %.pre48, %bb.g ], [ %i.ee, %bb.h ]
  %i.ek = phi float [ %.pre46, %bb.g ], [ %i.ed, %bb.h ]
  %i.el = phi float [ %.pre44, %bb.g ], [ %i.ec, %bb.h ]
  %i.em = phi float [ %.pre42, %bb.g ], [ %i.eb, %bb.h ]
  %i.en = phi float [ %.pre40, %bb.g ], [ %i.ea, %bb.h ]
  %i.eo = phi float [ %.pre38, %bb.g ], [ %i.dz, %bb.h ]
  %i.ep = phi float [ %.pre, %bb.g ], [ %i.dy, %bb.h ]
  %i.eq = load float, ptr %i.ah, align 4, !tbaa !27 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.es = load float, ptr %i.er, align 8, !tbaa !27 ; 4 uses
  %i.et = fmul float %i.eo, %i.es
  %i.eu = call float @llvm.fmuladd.f32(float %i.ep, float %i.eq, float %i.et)
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !27 ; 4 uses
  %i.ex = call noundef float @llvm.fmuladd.f32(float %i.en, float %i.ew, float %i.eu)
  %i.ey = fmul float %i.es, %i.el
  %i.ez = call float @llvm.fmuladd.f32(float %i.em, float %i.eq, float %i.ey)
  %i.fa = call noundef float @llvm.fmuladd.f32(float %i.ek, float %i.ew, float %i.ez)
  %i.fb = fmul float %i.es, %i.ei
  %i.fc = call float @llvm.fmuladd.f32(float %i.ej, float %i.eq, float %i.fb)
  %i.fd = call noundef float @llvm.fmuladd.f32(float %i.eh, float %i.ew, float %i.fc)
  %i.fe = fmul float %i.es, %i.fa
  %i.ff = call float @llvm.fmuladd.f32(float %i.ex, float %i.eq, float %i.fe)
  %i.fg = call noundef float @llvm.fmuladd.f32(float %i.fd, float %i.ew, float %i.ff)
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 144
  store float %i.fg, ptr %i.fh, align 8, !tbaa !87
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 148
  store float 0.000000e+00, ptr %i.fi, align 4, !tbaa !109
  %i.fj = load ptr, ptr %0, align 8, !tbaa !18
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 88
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(448) %0)
  ret void
}

declare noundef nonnull align 4 dereferenceable(64) ptr @_ZN23btReducedDeformableBody17getRigidTransformEv(ptr noundef nonnull align 8 dereferenceable(3176)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN45btReducedDeformableNodeRigidContactConstraint12warmStartingEv(ptr noundef nonnull align 8 dereferenceable(448) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { <2 x float>, <2 x float> } %i.c(ptr noundef nonnull align 8 dereferenceable(436) %0) ; 2 uses
  %i.e = extractvalue { <2 x float>, <2 x float> } %i.d, 0 ; 3 uses
  %i.f = extractvalue { <2 x float>, <2 x float> } %i.d, 1 ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call { <2 x float>, <2 x float> } %i.i(ptr noundef nonnull align 8 dereferenceable(448) %0) ; 2 uses
  %i.k = extractvalue { <2 x float>, <2 x float> } %i.j, 0 ; 3 uses
  %i.l = extractvalue { <2 x float>, <2 x float> } %i.j, 1 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 340
  store <2 x float> %i.e, ptr %i.m, align 4
  %.sroa.676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 348
  store <2 x float> %i.f, ptr %.sroa.676.0..sroa_idx, align 4, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 356
  store <2 x float> %i.k, ptr %i.n, align 4
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 364
  store <2 x float> %i.l, ptr %.sroa.674.0..sroa_idx, align 4, !tbaa !25
  %foldExtExtBinop = fsub <2 x float> %i.k, %i.e
  %i.o = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %foldExtExtBinop81 = fsub <2 x float> %i.k, %i.e
  %i.p = extractelement <2 x float> %foldExtExtBinop81, i64 1 ; 4 uses
  %foldExtExtBinop83 = fsub <2 x float> %i.l, %i.f
  %i.q = extractelement <2 x float> %foldExtExtBinop83, i64 0 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.s = load float, ptr %i.r, align 4, !tbaa !27 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.u = load float, ptr %i.t, align 8, !tbaa !27 ; 2 uses
  %i.v = fmul float %i.p, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %i.o, float %i.s, float %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.y = load float, ptr %i.x, align 4, !tbaa !27 ; 2 uses
  %i.z = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.y, float %i.w) ; 5 uses
  %i.aa = fmul float %i.s, %i.z
  %i.ab = fmul float %i.u, %i.z
  %i.ac = fmul float %i.y, %i.z
  %i.ad = fsub float %i.o, %i.aa                  ; 3 uses
  %i.ae = fsub float %i.p, %i.ab                  ; 3 uses
  %i.af = fsub float %i.q, %i.ac                  ; 3 uses
  %i.ag = fmul float %i.ae, %i.ae
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ad, float %i.ag)
  %i.ai = tail call noundef float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.ah)
  %i.aj = tail call noundef float @sqrtf(float noundef %i.ai) #17 ; 2 uses
  %i.ak = fcmp olt float %i.aj, f0x34000000
  br i1 %i.ak, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 148
  store float 0.000000e+00, ptr %i.am, align 4, !tbaa !109
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 156
  store float 0.000000e+00, ptr %i.an, align 4, !tbaa !89
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !79, !range !80, !noundef !81
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = fdiv float 1.000000e+00, %i.aj          ; 3 uses
  %i.as = fmul float %i.ar, %i.ad                 ; 6 uses
  %.sroa.0.0.vec.insert.i13 = insertelement <2 x float> poison, float %i.as, i64 0
  %i.at = fmul float %i.ar, %i.ae                 ; 6 uses
  %.sroa.0.4.vec.insert.i14 = insertelement <2 x float> %.sroa.0.0.vec.insert.i13, float %i.at, i64 1
  %i.au = fmul float %i.ar, %i.af                 ; 6 uses
  %.sroa.8.8.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.au, i64 0
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 228
  store <2 x float> %.sroa.0.4.vec.insert.i14, ptr %i.av, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 236
  store <2 x float> %.sroa.8.8.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !25
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 244
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !27
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ba = load float, ptr %i.az, align 8, !tbaa !27
  %i.bb = fmul float %i.ba, %i.at
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.as, float %i.bb)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.be = load float, ptr %i.bd, align 4, !tbaa !27
  %i.bf = tail call noundef float @llvm.fmuladd.f32(float %i.be, float %i.au, float %i.bc)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !27
  %i.bk = fmul float %i.at, %i.bj
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.as, float %i.bk)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !27
  %i.bo = tail call noundef float @llvm.fmuladd.f32(float %i.bn, float %i.au, float %i.bl)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !27
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bs = load float, ptr %i.br, align 8, !tbaa !27
  %i.bt = fmul float %i.at, %i.bs
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.as, float %i.bt)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !27
  %i.bx = tail call noundef float @llvm.fmuladd.f32(float %i.bw, float %i.au, float %i.bu)
  %i.by = fmul float %i.at, %i.bo
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.as, float %i.by)
  %i.ca = tail call noundef float @llvm.fmuladd.f32(float %i.bx, float %i.au, float %i.bz) ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 148
  store float %i.ca, ptr %i.cb, align 4, !tbaa !109
  %i.cc = fdiv float 1.000000e+00, %i.ca          ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 156
  store float %i.cc, ptr %i.cd, align 4, !tbaa !89
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 152
  store float 0.000000e+00, ptr %i.ce, align 8, !tbaa !234
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 160
  store float 0.000000e+00, ptr %i.cf, align 8, !tbaa !91
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !52 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 816
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false), !tbaa.struct !26
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 832
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i64 16, i1 false), !tbaa.struct !26
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 292
  %1 = load <1 x float>, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 296
  %2 = load <1 x float>, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 300
  %3 = load <1 x float>, ptr %i.cp, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !27 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 308
  %4 = load <1 x float>, ptr %i.cs, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 312
  %5 = load <1 x float>, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 316
  %6 = load <1 x float>, ptr %i.cu, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 324
  %7 = load <1 x float>, ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 328
  %8 = load <1 x float>, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 332
  %9 = load <1 x float>, ptr %i.cx, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.db = load float, ptr %i.da, align 4, !tbaa !27
  %i.dc = load <2 x float>, ptr %i.cj, align 4, !tbaa !27 ; 3 uses
  %i.dd = load float, ptr %i.co, align 8, !tbaa !27
  %i.de = load <2 x float>, ptr %i.cl, align 4, !tbaa !27 ; 2 uses
  %10 = shufflevector <1 x float> %2, <1 x float> poison, <2 x i32> zeroinitializer
  %11 = shufflevector <2 x float> %i.dc, <2 x float> %i.de, <2 x i32> <i32 1, i32 3> ; 4 uses
  %12 = fmul <2 x float> %10, %11
  %13 = shufflevector <1 x float> %1, <1 x float> poison, <2 x i32> zeroinitializer
  %14 = shufflevector <2 x float> %i.dc, <2 x float> %i.de, <2 x i32> <i32 0, i32 2> ; 4 uses
  %15 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %13, <2 x float> %14, <2 x float> %12)
  %16 = shufflevector <1 x float> %3, <1 x float> poison, <2 x i32> zeroinitializer
  %17 = insertelement <2 x float> poison, float %i.cr, i64 0
  %18 = insertelement <2 x float> %17, float %i.db, i64 1 ; 4 uses
  %19 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %16, <2 x float> %18, <2 x float> %15)
  %20 = shufflevector <1 x float> %5, <1 x float> poison, <2 x i32> zeroinitializer
  %21 = fmul <2 x float> %20, %11
  %22 = shufflevector <1 x float> %4, <1 x float> poison, <2 x i32> zeroinitializer
  %23 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %22, <2 x float> %14, <2 x float> %21)
  %24 = shufflevector <1 x float> %6, <1 x float> poison, <2 x i32> zeroinitializer
  %25 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %24, <2 x float> %18, <2 x float> %23)
  %26 = shufflevector <1 x float> %8, <1 x float> poison, <2 x i32> zeroinitializer
  %27 = fmul <2 x float> %26, %11
  %28 = shufflevector <1 x float> %7, <1 x float> poison, <2 x i32> zeroinitializer
  %29 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %28, <2 x float> %14, <2 x float> %27)
  %30 = shufflevector <1 x float> %9, <1 x float> poison, <2 x i32> zeroinitializer
  %31 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %30, <2 x float> %18, <2 x float> %29)
  %32 = fmul <2 x float> %11, %25
  %33 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> %14, <2 x float> %32)
  %34 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %31, <2 x float> %18, <2 x float> %33) ; 2 uses
  store <2 x float> %34, ptr %i.cy, align 4, !tbaa !27
  %35 = fdiv <2 x float> splat (float 1.000000e+00), %34 ; 2 uses
  store <2 x float> %35, ptr %i.cz, align 4, !tbaa !27
  %36 = extractelement <2 x float> %35, i64 0
  %i.df = extractelement <2 x float> %i.dc, i64 0
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %i.dg = phi float [ %i.cc, %bb.d ], [ %36, %bb.e ], [ 0.000000e+00, %bb.b ]
  %i.dh = phi float [ %i.au, %bb.d ], [ %i.cr, %bb.e ], [ 0.000000e+00, %bb.b ]
  %i.di = phi float [ %i.at, %bb.d ], [ %i.dd, %bb.e ], [ 0.000000e+00, %bb.b ]
  %i.dj = phi float [ %i.as, %bb.d ], [ %i.df, %bb.e ], [ 0.000000e+00, %bb.b ]
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dl = load float, ptr %i.dk, align 8, !tbaa !110 ; 3 uses
  %i.dm = fcmp ogt float %i.dl, 0.000000e+00
  br i1 %i.dm, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.do = load float, ptr %i.dn, align 8, !tbaa !41
  %i.dp = fdiv float %i.dl, %i.do
  %i.dq = fadd float %i.z, %i.dp
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ds = load float, ptr %i.dr, align 8, !tbaa !48
  %i.dt = fmul float %i.dl, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dv = load float, ptr %i.du, align 8, !tbaa !41
  %i.dw = fdiv float %i.dt, %i.dv
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.06 = phi float [ 0.000000e+00, %bb.g ], [ %i.dw, %bb.h ]
  %.0 = phi float [ %i.dq, %bb.g ], [ %i.z, %bb.h ]
  %i.dx = fadd float %.06, %.0
  %i.dy = fneg float %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ea = load float, ptr %i.dz, align 8, !tbaa !87
  %i.eb = fdiv float %i.dy, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 164
  store float %i.eb, ptr %i.ec, align 4, !tbaa !86
  %i.ed = fmul float %i.p, %i.di
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.o, float %i.dj, float %i.ed)
  %i.ef = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.dh, float %i.ee)
  %i.eg = fmul float %i.dg, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 168
  store float %i.eg, ptr %i.eh, align 8, !tbaa !88
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !79, !range !80, !noundef !81
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.em = load float, ptr %i.el, align 4, !tbaa !27
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.eo = load float, ptr %i.en, align 8, !tbaa !27
  %i.ep = fmul float %i.p, %i.eo
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.o, float %i.em, float %i.ep)
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.es = load float, ptr %i.er, align 4, !tbaa !27
  %i.et = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.es, float %i.eq)
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ev = load float, ptr %i.eu, align 8, !tbaa !91
  %i.ew = fmul float %i.ev, %i.et
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 172
  store float %i.ew, ptr %i.ex, align 4, !tbaa !90
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK45btReducedDeformableNodeRigidContactConstraint5getVbEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.c, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !25
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.0.copyload, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK45btReducedDeformableNodeRigidContactConstraint10getDeltaVaEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i8, ptr %i.a, align 8, !tbaa !77, !range !80, !noundef !81
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.e = load i8, ptr %i.d, align 1, !tbaa !79, !range !80, !noundef !81
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !82   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 84
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.n = load float, ptr %i.k, align 4, !tbaa !27 ; 2 uses
  %i.o = load float, ptr %i.j, align 4, !tbaa !27 ; 2 uses
  %i.p = fneg float %i.n
  %i.q = load <2 x float>, ptr %i.l, align 4, !tbaa !27 ; 3 uses
  %i.r = load <2 x float>, ptr %i.m, align 8, !tbaa !27 ; 3 uses
  %i.s = fneg <2 x float> %i.r
  %i.t = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.u = insertelement <2 x float> %i.t, float %i.o, i64 1
  %i.v = fmul <2 x float> %i.u, %i.s
  %i.w = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.x = insertelement <2 x float> %i.w, float %i.n, i64 1
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.x, <2 x float> %i.v)
  %i.z = extractelement <2 x float> %i.q, i64 0
  %i.aa = fmul float %i.z, %i.p
  %i.ab = extractelement <2 x float> %i.r, i64 0
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.o, float %i.ab, float %i.aa)
  %i.ad = load <2 x float>, ptr %i.i, align 4, !tbaa !27
  %i.ae = fadd <2 x float> %i.y, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.ag = load float, ptr %i.af, align 4, !tbaa !27
  %i.ah = fadd float %i.ac, %i.ag
  %.sroa.3.12.vec.insert.i32 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ah, i64 0
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !52 ; 12 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !67 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 272
  %i.am = load i32, ptr %i.al, align 8, !tbaa !78
  %i.an = and i32 %i.am, 64
  %.not.i = icmp eq i32 %i.an, 0
  %.not87 = icmp eq ptr %i.ak, null
  %.not = or i1 %.not87, %.not.i
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 376
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !95 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 628
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !104 ; 2 uses
  %i.as = add i32 %i.ar, 6                        ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 208
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !92 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 416
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !92 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 624
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !92 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 256
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !92 ; 15 uses
  %i.bb = icmp sgt i32 %i.ar, -6                  ; 2 uses
  br i1 %i.bb, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %smax = tail call i32 @llvm.smax.i32(i32 %i.as, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64   ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.bc = icmp slt i32 %i.as, 4
  br i1 %i.bc, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.be = load <2 x float>, ptr %i.bd, align 8, !tbaa !27
  %i.bf = fmul <2 x float> %i.be, zeroinitializer
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !27
  %i.bi = fmul float %i.bh, 0.000000e+00
  br label %._crit_edge94

.lr.ph93.preheader.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph93.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph93.preheader.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.lr.ph93.preheader.unr-lcssa ]
  %.08688.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.cq, %.lr.ph93.preheader.unr-lcssa ]
  %lcmp.mod125 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod125)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %.08688.epil = phi float [ %.08688.epil.init, %.lr.ph.epil.preheader ], [ %i.bn, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.epil
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !27
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.epil
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !27
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.bm, float %.08688.epil) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph93.preheader, label %.lr.ph.epil, !llvm.loop !235

.lr.ph93.preheader:                               ; preds = %.lr.ph.epil, %.lr.ph93.preheader.unr-lcssa
  %.lcssa123 = phi float [ %i.cq, %.lr.ph93.preheader.unr-lcssa ], [ %i.bn, %.lr.ph.epil ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
end_hunk_0
