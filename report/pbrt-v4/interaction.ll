Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/interaction?download=true
inline.NumInlined: 2722
inline.NumDeleted: 705
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN4pbrt18SurfaceInteraction20ComputeDifferentialsERKNS_15RayDifferentialENS_6CameraEi:bb.a
  %i.bm = fadd <2 x float> %i.bl, %.sroa.0182.0.copyload
  %i.bn = fsub <2 x float> %i.bm, %i.ak           ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x float> %i.bn, ptr %i.bo, align 8
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bp = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bq = fmul <2 x float> %.sroa.0207.0.copyload, %i.bp
  %i.br = fadd <2 x float> %i.bq, %.sroa.0147.0.copyload
  %i.bs = fsub <2 x float> %i.br, %i.ak           ; 2 uses
  %i.bt = insertelement <2 x float> poison, float %.sroa.2216.0.copyload, i64 0
  %i.bu = insertelement <2 x float> %i.bt, float %.sroa.2208.0.copyload, i64 1
  %i.bv = fmul <2 x float> %i.bu, %i.bj
  %i.bw = fadd <2 x float> %i.at, %i.bv
  %i.bx = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fsub <2 x float> %i.bw, %i.by           ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 220
  store <2 x float> %i.bs, ptr %i.ca, align 4
  %i.cb = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 1>
  tail call void @llvm.masked.store.v4f32.p0(<4 x float> %i.cb, ptr align 8 %.sroa.4116.0..sroa_idx, <4 x i1> <i1 true, i1 false, i1 false, i1 true>)
  br label %bb.g

._crit_edge:                                      ; preds = %bb.c, %bb.e, %bb.d
  %.sroa.0.sroa.2.0..sroa_idx.i318 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.sroa.5.0..sroa_idx.i324 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.sroa.5.0.copyload.i325 = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i324, align 8
  %.sroa.0.sroa.6.0..sroa_idx.i326 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.sroa.6.0.copyload.i327 = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i326, align 4
  %i.cc = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i318, align 4
  %i.cd = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %0, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.cf = fadd <2 x float> %i.cc, %i.ce
  %i.cg = fmul <2 x float> %i.cf, splat (float 5.000000e-01)
  %i.ch = fadd float %.sroa.0.sroa.5.0.copyload.i325, %.sroa.0.sroa.6.0.copyload.i327
  %i.ci = fmul float %i.ch, 5.000000e-01
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !56
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.cn = load i64, ptr %2, align 8, !tbaa !58
  %i.co = and i64 %i.cn, 144115188075855871
  %i.cp = inttoptr i64 %i.co to ptr
  tail call void @_ZNK4pbrt10CameraBase18Approximate_dp_dxyENS_6Point3IfEENS_7Normal3IfEEfiPNS_7Vector3IfEES7_(ptr noundef nonnull align 8 dereferenceable(896) %i.cp, <2 x float> %i.cg, float %i.ci, <2 x float> %.sroa.0217.0.copyload, float %.sroa.2218.0.copyload, float noundef %i.ck, i32 noundef %3, ptr noundef nonnull %i.cl, ptr noundef nonnull %i.cm)
  %.sroa.032.0.copyload.pre = load <2 x float>, ptr %i.cl, align 8
  %.sroa.233.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.sroa.012.0.copyload.pre = load <2 x float>, ptr %i.cm, align 4
  %i.cq = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %.sroa.233.0..sroa_idx.phi.trans.insert, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %.sroa.012.0.copyload = phi <2 x float> [ %.sroa.012.0.copyload.pre, %._crit_edge ], [ %i.bs, %bb.f ] ; 2 uses
  %.sroa.032.0.copyload = phi <2 x float> [ %.sroa.032.0.copyload.pre, %._crit_edge ], [ %i.bn, %bb.f ] ; 2 uses
  %i.cs = phi <2 x float> [ %i.cr, %._crit_edge ], [ %i.bz, %bb.f ]
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.075.0.copyload = load <2 x float>, ptr %i.cu, align 8 ; 5 uses
  %.sroa.276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.276.0.copyload = load float, ptr %.sroa.276.0..sroa_idx, align 8 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.sroa.059.0.copyload = load <2 x float>, ptr %i.cv, align 4 ; 5 uses
  %.sroa.260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  %.sroa.260.0.copyload = load float, ptr %.sroa.260.0..sroa_idx, align 4 ; 3 uses
  %i.cw = fmul <2 x float> %.sroa.075.0.copyload, %.sroa.059.0.copyload ; 2 uses
  %shift = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.cw, %shift
  %i.cx = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cy = fmul float %.sroa.276.0.copyload, %.sroa.260.0.copyload
  %i.cz = fadd float %i.cy, %i.cx                 ; 5 uses
  %i.da = fmul float %i.cz, %i.cz                 ; 2 uses
  %i.db = fneg float %i.da
  %i.dc = fneg float %i.cz                        ; 2 uses
  %i.dd = tail call noundef float @llvm.fma.f32(float %i.dc, float %i.cz, float %i.da)
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.df = shufflevector <2 x float> %.sroa.059.0.copyload, <2 x float> %.sroa.075.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.dg = fmul <2 x float> %i.df, %i.df
  %i.dh = shufflevector <2 x float> %.sroa.059.0.copyload, <2 x float> %.sroa.075.0.copyload, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.di = fmul <2 x float> %i.dh, %i.dh
  %i.dj = fadd <2 x float> %i.dg, %i.di
  %i.dk = insertelement <2 x float> poison, float %.sroa.260.0.copyload, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %.sroa.276.0.copyload, i64 1 ; 2 uses
  %i.dm = fmul <2 x float> %i.dl, %i.dl
  %i.dn = fadd <2 x float> %i.dm, %i.dj           ; 3 uses
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.dp = extractelement <2 x float> %i.dn, i64 0
  %i.dq = extractelement <2 x float> %i.dn, i64 1
  %i.dr = tail call noundef float @llvm.fma.f32(float %i.dq, float %i.dp, float %i.db)
  %i.ds = fadd float %i.dr, %i.dd
  %i.dt = fdiv float 1.000000e+00, %i.ds          ; 2 uses
  %i.du = tail call float @llvm.fabs.f32(float %i.dt)
  %i.dv = fcmp one float %i.du, +inf
  %i.dw = select i1 %i.dv, float %i.dt, float 0.000000e+00
  %i.dx = shufflevector <2 x float> %.sroa.059.0.copyload, <2 x float> %.sroa.075.0.copyload, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.dy = shufflevector <2 x float> %.sroa.032.0.copyload, <2 x float> %.sroa.012.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dz = fmul <4 x float> %i.dx, %i.dy
  %i.ea = shufflevector <2 x float> %.sroa.059.0.copyload, <2 x float> %.sroa.075.0.copyload, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  %i.eb = shufflevector <2 x float> %.sroa.032.0.copyload, <2 x float> %.sroa.012.0.copyload, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ec = fmul <4 x float> %i.ea, %i.eb
  %i.ed = fadd <4 x float> %i.dz, %i.ec
  %i.ee = insertelement <4 x float> poison, float %.sroa.260.0.copyload, i64 0
  %i.ef = insertelement <4 x float> %i.ee, float %.sroa.276.0.copyload, i64 1
  %i.eg = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.eh = fmul <4 x float> %i.eg, %i.ct
  %i.ei = fadd <4 x float> %i.eh, %i.ed           ; 2 uses
  %i.ej = insertelement <4 x float> poison, float %i.cz, i64 0
  %i.ek = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> zeroinitializer
  %i.el = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.em = fmul <4 x float> %i.ek, %i.el           ; 2 uses
  %i.en = fneg <4 x float> %i.em
  %i.eo = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.do, <4 x float> %i.ei, <4 x float> %i.en)
  %i.ep = insertelement <4 x float> poison, float %i.dc, i64 0
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> zeroinitializer
  %i.er = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.eq, <4 x float> %i.el, <4 x float> %i.em)
  %i.es = fadd <4 x float> %i.eo, %i.er
  %i.et = insertelement <4 x float> poison, float %i.dw, i64 0
  %i.eu = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ev = fmul <4 x float> %i.es, %i.eu           ; 4 uses
  %i.ew = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ev)
  %i.ex = fcmp one <4 x float> %i.ew, splat (float +inf)
  %i.ey = fcmp olt <4 x float> %i.ev, splat (float -1.000000e+08)
  %i.ez = fcmp ogt <4 x float> %i.ev, splat (float 1.000000e+08)
  %i.fa = select <4 x i1> %i.ez, <4 x float> splat (float 1.000000e+08), <4 x float> %i.ev
  %i.fb = select <4 x i1> %i.ey, <4 x float> splat (float -1.000000e+08), <4 x float> %i.fa
  %i.fc = select <4 x i1> %i.ex, <4 x float> %i.fb, <4 x float> zeroinitializer
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x float> %i.fd, ptr %i.de, align 8, !tbaa !59
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt18SurfaceInteraction16SkipIntersectionEPNS_15RayDifferentialEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0, ptr nofree noundef captures(none) initializes((0, 12), (24, 28), (32, 40)) %1, float noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.sroa.034.0.copyload = load <2 x float>, ptr %i.a, align 4 ; 4 uses
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %.sroa.235.0.copyload = load float, ptr %.sroa.235.0..sroa_idx, align 4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.09.0.copyload.i.i = load <2 x float>, ptr %i.b, align 8, !noalias !248
  %.sroa.210.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.210.0.copyload.i.i = load float, ptr %.sroa.210.0..sroa_idx.i.i, align 8, !noalias !248
  %i.c = tail call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %0, <2 x float> %.sroa.09.0.copyload.i.i, float %.sroa.210.0.copyload.i.i, <2 x float> %.sroa.034.0.copyload, float %.sroa.235.0.copyload), !noalias !248 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load float, ptr %i.d, align 8, !tbaa !56, !noalias !248
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40, !noalias !249 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.03.0.copyload.i.i = load <2 x float>, ptr %i.b, align 8, !noalias !249 ; 2 uses
  %.sroa.24.0.copyload.i.i = load float, ptr %.sroa.210.0..sroa_idx.i.i, align 8, !noalias !249 ; 2 uses
  %.sroa.01.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i.i, i64 0
  %.sroa.04.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.034.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i.i, i64 1
  %.sroa.04.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.034.0.copyload, i64 1
  %i.h = fmul float %.sroa.235.0.copyload, %.sroa.24.0.copyload.i.i ; 2 uses
  %i.i = tail call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i.i, float %.sroa.04.4.vec.extract.i.i.i, float %i.h)
  %i.j = fneg float %i.h
  %i.k = tail call noundef float @llvm.fma.f32(float %.sroa.24.0.copyload.i.i, float %.sroa.235.0.copyload, float %i.j)
  %i.l = fadd float %i.i, %i.k
  %i.m = tail call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i.i, float %.sroa.04.0.vec.extract.i.i.i, float %i.l)
  %i.n = fcmp ogt float %i.m, 0.000000e+00
  %spec.select.idx.i.i = select i1 %i.n, i64 8, i64 0
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %spec.select.idx.i.i
  br label %_ZNK4pbrt11Interaction8SpawnRayENS_7Vector3IfEE.exit

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %_ZNK4pbrt11Interaction8SpawnRayENS_7Vector3IfEE.exit

_ZNK4pbrt11Interaction8SpawnRayENS_7Vector3IfEE.exit: ; preds = %bb.b, %bb.c
  %storemerge.in.i.i = phi ptr [ %spec.select.i.i, %bb.b ], [ %i.o, %bb.c ]
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.c, 1
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.c, 0
  %storemerge.i.i = load i64, ptr %storemerge.in.i.i, align 8, !tbaa !19, !noalias !249
  store <2 x float> %.fca.0.extract.i, ptr %1, align 8
  %.sroa.4.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %.fca.1.extract.i, ptr %.sroa.4.0..sroa_idx59, align 8
  store <2 x float> %.sroa.034.0.copyload, ptr %i.a, align 4
  store float %.sroa.235.0.copyload, ptr %.sroa.235.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %i.e, ptr %.sroa.7.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %storemerge.i.i, ptr %i.p, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load i8, ptr %i.q, align 8, !tbaa !55, !range !49, !noundef !50
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK4pbrt11Interaction8SpawnRayENS_7Vector3IfEE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 68
  %.sroa.026.0.copyload = load <2 x float>, ptr %i.u, align 4, !tbaa !59
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 76
  %.sroa.227.0.copyload = load float, ptr %.sroa.227.0..sroa_idx, align 4, !tbaa !59
  %3 = fmul float %2, %.sroa.227.0.copyload
  %i.v = insertelement <2 x float> poison, float %2, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.x = fmul <2 x float> %i.w, %.sroa.026.0.copyload
  %i.y = load <2 x float>, ptr %i.t, align 4, !tbaa !59
  %i.z = fadd <2 x float> %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %4 = load float, ptr %i.aa, align 4, !tbaa !60
  %5 = fadd float %3, %4
  store <2 x float> %i.z, ptr %i.t, align 4
  store float %5, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.09.0.copyload = load <2 x float>, ptr %i.ac, align 8, !tbaa !59
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.210.0.copyload = load float, ptr %.sroa.210.0..sroa_idx, align 8, !tbaa !59
  %6 = fmul float %2, %.sroa.210.0.copyload
  %7 = fmul <2 x float> %i.w, %.sroa.09.0.copyload
  %8 = load <2 x float>, ptr %i.ab, align 8, !tbaa !59
  %9 = fadd <2 x float> %7, %8
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %11 = load float, ptr %10, align 8, !tbaa !60
  %12 = fadd float %6, %11
  store <2 x float> %9, ptr %i.ab, align 8
  store float %12, ptr %10, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK4pbrt11Interaction8SpawnRayENS_7Vector3IfEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt18SurfaceInteraction8SpawnRayERKNS_15RayDifferentialERKNS_4BSDFENS_7Vector3IfEEif(ptr dead_on_unwind noalias nofree writable sret(%"class.pbrt::RayDifferential") align 8 captures(none) initializes((0, 28), (32, 41), (44, 92)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(92) %2, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(44) %3, <2 x float> %4, float %5, i32 noundef %6, float noundef %7) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.09.0.copyload.i.i = load <2 x float>, ptr %i.a, align 8, !noalias !254
  %.sroa.210.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.210.0.copyload.i.i = load float, ptr %.sroa.210.0..sroa_idx.i.i, align 8, !noalias !254
  %i.b = tail call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %1, <2 x float> %.sroa.09.0.copyload.i.i, float %.sroa.210.0.copyload.i.i, <2 x float> %4, float %5), !noalias !254 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load float, ptr %i.c, align 8, !tbaa !56, !noalias !254
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !255 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.03.0.copyload.i.i = load <2 x float>, ptr %i.a, align 8, !noalias !255 ; 2 uses
  %.sroa.24.0.copyload.i.i = load float, ptr %.sroa.210.0..sroa_idx.i.i, align 8, !noalias !255 ; 2 uses
  %.sroa.01.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i.i, i64 0
  %.sroa.04.0.vec.extract.i.i.i = extractelement <2 x float> %4, i64 0
  %.sroa.01.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i.i, i64 1
  %.sroa.04.4.vec.extract.i.i.i = extractelement <2 x float> %4, i64 1
  %i.g = fmul float %5, %.sroa.24.0.copyload.i.i  ; 2 uses
  %i.h = tail call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i.i, float %.sroa.04.4.vec.extract.i.i.i, float %i.g)
  %i.i = fneg float %i.g
  %i.j = tail call noundef float @llvm.fma.f32(float %.sroa.24.0.copyload.i.i, float %5, float %i.i)
  %i.k = fadd float %i.h, %i.j
  %i.l = tail call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i.i, float %.sroa.04.0.vec.extract.i.i.i, float %i.k)
  %i.m = fcmp ogt float %i.l, 0.000000e+00
  %spec.select.idx.i.i = select i1 %i.m, i64 8, i64 0
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %spec.select.idx.i.i
  br label %_ZNK4pbrt11Interaction8SpawnRayENS_7Vector3IfEE.exit

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  br label %_ZNK4pbrt11Interaction8SpawnRayENS_7Vector3IfEE.exit

_ZNK4pbrt11Interaction8SpawnRayENS_7Vector3IfEE.exit: ; preds = %bb.b, %bb.c
  %storemerge.in.i.i = phi ptr [ %spec.select.i.i, %bb.b ], [ %i.n, %bb.c ]
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.b, 1
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.b, 0
  %storemerge.i.i = load i64, ptr %storemerge.in.i.i, align 8, !tbaa !19, !noalias !255
  store <2 x float> %.fca.0.extract.i, ptr %0, align 8, !alias.scope !254
  %.sroa.27.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.fca.1.extract.i, ptr %.sroa.27.0..sroa_idx.i.i.i, align 8, !alias.scope !254
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %4, ptr %i.o, align 4, !alias.scope !254
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %5, ptr %.sroa.23.0..sroa_idx.i.i.i, align 4, !alias.scope !254
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.d, ptr %i.p, align 8, !tbaa !256, !alias.scope !254
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %storemerge.i.i, ptr %i.q, align 8, !tbaa !19, !alias.scope !254
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store i8 0, ptr %i.r, align 8, !tbaa !55, !alias.scope !254
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.s, i8 0, i64 48, i1 false), !alias.scope !254
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = load i8, ptr %i.t, align 8, !tbaa !55, !range !49, !noundef !50
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZNK4pbrt11Interaction8SpawnRayENS_7Vector3IfEE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.0929.0.copyload = load <2 x float>, ptr %i.w, align 8 ; 10 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.23.0.copyload = load float, ptr %.sroa.23.0..sroa_idx, align 8 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 236
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0467.0.copyload = load <2 x float>, ptr %i.af, align 4 ; 9 uses
  %.sroa.2468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.2468.0.copyload = load float, ptr %.sroa.2468.0..sroa_idx, align 4 ; 9 uses
  %.sroa.03.0.vec.extract.i554 = extractelement <2 x float> %.sroa.0467.0.copyload, i64 0 ; 3 uses
  %.sroa.03.4.vec.extract.i555 = extractelement <2 x float> %.sroa.0467.0.copyload, i64 1 ; 3 uses
  %i.ag = load <4 x float>, ptr %i.x, align 4, !tbaa !59 ; 3 uses
  %i.ah = load float, ptr %i.aa, align 8, !tbaa !61
  %i.ai = load float, ptr %i.z, align 8, !tbaa !62
  %i.aj = load <3 x float>, ptr %i.ab, align 4, !tbaa !59 ; 2 uses
  %i.ak = shufflevector <3 x float> %i.aj, <3 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 2>
  %i.al = load <2 x float>, ptr %i.ac, align 4, !tbaa !59
  %i.am = shufflevector <3 x float> %i.aj, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 poison>
  %i.an = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.ao = shufflevector <4 x float> %i.ag, <4 x float> %i.an, <4 x i32> <i32 0, i32 4, i32 2, i32 2>
  %i.ap = shufflevector <4 x float> %i.ag, <4 x float> %i.an, <4 x i32> <i32 3, i32 1, i32 5, i32 5>
  %i.aq = fmul <4 x float> %i.ak, %i.ap
  %i.ar = load <2 x float>, ptr %i.y, align 8, !tbaa !59 ; 3 uses
  %i.as = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.at = insertelement <2 x float> %i.as, float %i.ah, i64 1
  %i.au = fmul <2 x float> %i.ar, %i.at
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aw = shufflevector <4 x float> %i.ag, <4 x float> %i.an, <2 x i32> <i32 0, i32 4>
  %i.ax = fmul <2 x float> %i.ar, %i.aw
  %i.ay = fadd <2 x float> %i.av, %i.ax           ; 5 uses
  %i.az = shufflevector <2 x float> %i.ar, <2 x float> poison, <3 x i32> <i32 poison, i32 poison, i32 0>
  %i.ba = shufflevector <3 x float> %i.am, <3 x float> %i.az, <4 x i32> <i32 0, i32 1, i32 5, i32 0>
  %i.bb = fmul <4 x float> %i.ba, %i.ao
  %i.bc = fadd <4 x float> %i.bb, %i.aq           ; 7 uses
  %i.bd = load <2 x float>, ptr %i.ad, align 4, !tbaa !59
  %i.be = fneg <2 x float> %i.bd
  %i.bf = fsub <2 x float> %i.be, %.sroa.0467.0.copyload ; 6 uses
  %i.bg = load <4 x float>, ptr %i.ae, align 4, !tbaa !59
  %i.bh = fneg <4 x float> %i.bg
  %i.bi = shufflevector <2 x float> %.sroa.0467.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.bj = insertelement <4 x float> poison, float %.sroa.2468.0.copyload, i64 0
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> %i.bi, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.bm = fsub <4 x float> %i.bh, %i.bl           ; 7 uses
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3> ; 4 uses
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
  %i.bo = fadd float %.sroa.0.sroa.5.0.copyload.i, %.sroa.0.sroa.6.0.copyload.i
  %i.bp = fmul float %i.bo, 5.000000e-01          ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.0437.0.copyload = load <2 x float>, ptr %i.bq, align 8
  %.sroa.2438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.2438.0.copyload = load float, ptr %.sroa.2438.0..sroa_idx, align 8
  %i.br = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %i.bs = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %1, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bu = fadd <2 x float> %i.br, %i.bt
  %i.bv = fmul <2 x float> %i.bu, splat (float 5.000000e-01) ; 2 uses
  %i.bw = fadd <2 x float> %i.bv, %.sroa.0437.0.copyload
  %i.bx = fadd float %.sroa.2438.0.copyload, %i.bp
  store <2 x float> %i.bw, ptr %i.s, align 4
  %.sroa.4444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.bx, ptr %.sroa.4444.0..sroa_idx, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 220
  %.sroa.0423.0.copyload = load <2 x float>, ptr %i.by, align 4
  %.sroa.2424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 228
  %.sroa.2424.0.copyload = load float, ptr %.sroa.2424.0..sroa_idx, align 4
  %i.bz = fadd <2 x float> %i.bv, %.sroa.0423.0.copyload
  %i.ca = fadd float %i.bp, %.sroa.2424.0.copyload
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x float> %i.bz, ptr %i.cb, align 8
  %.sroa.4430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %i.ca, ptr %.sroa.4430.0..sroa_idx, align 8
  %.sroa.01.0.vec.extract.i = extractelement <2 x float> %.sroa.0929.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %.sroa.0929.0.copyload, i64 1
  %i.cc = fmul float %.sroa.23.0.copyload, %.sroa.2468.0.copyload ; 2 uses
  %i.cd = tail call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i, float %.sroa.03.4.vec.extract.i555, float %i.cc)
  %i.ce = fneg float %i.cc
  %i.cf = tail call noundef float @llvm.fma.f32(float %.sroa.23.0.copyload, float %.sroa.2468.0.copyload, float %i.ce)
  %i.cg = fadd float %i.cd, %i.cf
  %i.ch = tail call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i, float %.sroa.03.0.vec.extract.i554, float %i.cg) ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.4382.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.cj = shufflevector <4 x float> %i.bc, <4 x float> %i.bm, <2 x i32> <i32 2, i32 4> ; 2 uses
  %i.ck = insertelement <2 x float> poison, float %.sroa.2468.0.copyload, i64 0
  %i.cl = insertelement <2 x float> %i.ck, float %.sroa.23.0.copyload, i64 1 ; 4 uses
  %i.cm = fmul <2 x float> %i.cj, %i.cl           ; 2 uses
  %i.cn = shufflevector <2 x float> %i.ay, <2 x float> %.sroa.0929.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.co = shufflevector <2 x float> %.sroa.0467.0.copyload, <2 x float> %i.bf, <2 x i32> <i32 1, i32 3>
  %i.cp = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.cn, <2 x float> %i.co, <2 x float> %i.cm)
  %i.cq = fneg <2 x float> %i.cm
  %i.cr = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.cj, <2 x float> %i.cl, <2 x float> %i.cq)
  %i.cs = fadd <2 x float> %i.cp, %i.cr
  %i.ct = shufflevector <2 x float> %i.ay, <2 x float> %.sroa.0929.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.cu = shufflevector <2 x float> %.sroa.0467.0.copyload, <2 x float> %i.bf, <2 x i32> <i32 0, i32 2>
  %i.cv = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ct, <2 x float> %i.cu, <2 x float> %i.cs) ; 2 uses
  %shift = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.cv, %shift ; 2 uses
  %i.cw = shufflevector <4 x float> %i.bc, <4 x float> %i.bm, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.cx = fmul <2 x float> %i.cw, %i.cl           ; 2 uses
  %i.cy = shufflevector <2 x float> %.sroa.0929.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.cz = shufflevector <4 x float> %i.bc, <4 x float> %i.cy, <2 x i32> <i32 1, i32 5>
  %i.da = shufflevector <2 x float> %.sroa.0467.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.db = shufflevector <4 x float> %i.da, <4 x float> %i.bn, <2 x i32> <i32 1, i32 5>
  %i.dc = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.cz, <2 x float> %i.db, <2 x float> %i.cx)
  %i.dd = fneg <2 x float> %i.cx
  %i.de = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.cw, <2 x float> %i.cl, <2 x float> %i.dd)
  %i.df = fadd <2 x float> %i.dc, %i.de
  %i.dg = shufflevector <4 x float> %i.bc, <4 x float> %i.cy, <2 x i32> <i32 0, i32 4>
  %i.dh = shufflevector <4 x float> %i.da, <4 x float> %i.bm, <2 x i32> <i32 0, i32 5>
  %i.di = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.dg, <2 x float> %i.dh, <2 x float> %i.df) ; 2 uses
  %shift987 = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop988 = fadd <2 x float> %i.di, %shift987
end_hunk_0
