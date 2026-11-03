Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/interaction?download=true
inline.NumInlined: 2722
inline.NumDeleted: 705
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN4pbrt18SurfaceInteraction20ComputeDifferentialsERKNS_15RayDifferentialENS_6CameraEi:bb.a
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
  %i.v = fmul float %2, %.sroa.227.0.copyload
  %i.w = insertelement <2 x float> poison, float %2, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.y = fmul <2 x float> %i.x, %.sroa.026.0.copyload
  %i.z = load <2 x float>, ptr %i.t, align 4, !tbaa !59
  %i.aa = fadd <2 x float> %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !60
  %i.ad = fadd float %i.v, %i.ac
  store <2 x float> %i.aa, ptr %i.t, align 4
  store float %i.ad, ptr %i.ab, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.09.0.copyload = load <2 x float>, ptr %i.af, align 8, !tbaa !59
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.210.0.copyload = load float, ptr %.sroa.210.0..sroa_idx, align 8, !tbaa !59
  %i.ag = fmul float %2, %.sroa.210.0.copyload
  %i.ah = fmul <2 x float> %i.x, %.sroa.09.0.copyload
  %i.ai = load <2 x float>, ptr %i.ae, align 8, !tbaa !59
  %i.aj = fadd <2 x float> %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.al = load float, ptr %i.ak, align 8, !tbaa !60
  %i.am = fadd float %i.ag, %i.al
  store <2 x float> %i.aj, ptr %i.ae, align 8
  store float %i.am, ptr %i.ak, align 8
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
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0467.0.copyload = load <2 x float>, ptr %i.ae, align 4 ; 9 uses
  %.sroa.2468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.2468.0.copyload = load float, ptr %.sroa.2468.0..sroa_idx, align 4 ; 9 uses
  %.sroa.03.0.vec.extract.i554 = extractelement <2 x float> %.sroa.0467.0.copyload, i64 0 ; 3 uses
  %.sroa.03.4.vec.extract.i555 = extractelement <2 x float> %.sroa.0467.0.copyload, i64 1 ; 3 uses
  %i.af = load float, ptr %i.aa, align 8, !tbaa !61
  %i.ag = load <2 x float>, ptr %i.z, align 8
  %i.ah = load <3 x float>, ptr %i.ab, align 4, !tbaa !59 ; 2 uses
  %i.ai = shufflevector <3 x float> %i.ah, <3 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 2>
  %8 = load <8 x float>, ptr %i.x, align 4        ; 3 uses
  %i.aj = shufflevector <3 x float> %i.ah, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 poison>
  %i.ak = shufflevector <8 x float> %8, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 2, i32 2>
  %i.al = shufflevector <8 x float> %8, <8 x float> poison, <4 x i32> <i32 3, i32 1, i32 5, i32 5>
  %i.am = fmul <4 x float> %i.ai, %i.al
  %i.an = load <2 x float>, ptr %i.y, align 8, !tbaa !59 ; 3 uses
  %i.ao = insertelement <2 x float> %i.ag, float %i.af, i64 1
  %i.ap = fmul <2 x float> %i.an, %i.ao
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ar = shufflevector <8 x float> %8, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.as = fmul <2 x float> %i.an, %i.ar
  %i.at = fadd <2 x float> %i.aq, %i.as           ; 5 uses
  %i.au = shufflevector <2 x float> %i.an, <2 x float> poison, <3 x i32> <i32 poison, i32 poison, i32 0>
  %i.av = shufflevector <3 x float> %i.aj, <3 x float> %i.au, <4 x i32> <i32 0, i32 1, i32 5, i32 0>
  %i.aw = fmul <4 x float> %i.av, %i.ak
  %i.ax = fadd <4 x float> %i.aw, %i.am           ; 7 uses
  %i.ay = load <2 x float>, ptr %i.ac, align 4, !tbaa !59
  %i.az = fneg <2 x float> %i.ay
  %i.ba = fsub <2 x float> %i.az, %.sroa.0467.0.copyload ; 6 uses
  %i.bb = load <4 x float>, ptr %i.ad, align 4, !tbaa !59
  %i.bc = fneg <4 x float> %i.bb
  %i.bd = shufflevector <2 x float> %.sroa.0467.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.be = insertelement <4 x float> poison, float %.sroa.2468.0.copyload, i64 0
  %i.bf = shufflevector <4 x float> %i.be, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> %i.bd, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.bh = fsub <4 x float> %i.bc, %i.bg           ; 7 uses
  %i.bi = shufflevector <4 x float> %i.bh, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3> ; 4 uses
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
  %i.bj = fadd float %.sroa.0.sroa.5.0.copyload.i, %.sroa.0.sroa.6.0.copyload.i
  %i.bk = fmul float %i.bj, 5.000000e-01          ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.0437.0.copyload = load <2 x float>, ptr %i.bl, align 8
  %.sroa.2438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.2438.0.copyload = load float, ptr %.sroa.2438.0..sroa_idx, align 8
  %i.bm = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %i.bn = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %1, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bp = fadd <2 x float> %i.bm, %i.bo
  %i.bq = fmul <2 x float> %i.bp, splat (float 5.000000e-01) ; 2 uses
  %i.br = fadd <2 x float> %i.bq, %.sroa.0437.0.copyload
  %i.bs = fadd float %.sroa.2438.0.copyload, %i.bk
  store <2 x float> %i.br, ptr %i.s, align 4
  %.sroa.4444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.bs, ptr %.sroa.4444.0..sroa_idx, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 220
  %.sroa.0423.0.copyload = load <2 x float>, ptr %i.bt, align 4
  %.sroa.2424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 228
  %.sroa.2424.0.copyload = load float, ptr %.sroa.2424.0..sroa_idx, align 4
  %i.bu = fadd <2 x float> %i.bq, %.sroa.0423.0.copyload
  %i.bv = fadd float %i.bk, %.sroa.2424.0.copyload
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x float> %i.bu, ptr %i.bw, align 8
  %.sroa.4430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %i.bv, ptr %.sroa.4430.0..sroa_idx, align 8
  %.sroa.01.0.vec.extract.i = extractelement <2 x float> %.sroa.0929.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %.sroa.0929.0.copyload, i64 1
  %i.bx = fmul float %.sroa.23.0.copyload, %.sroa.2468.0.copyload ; 2 uses
  %i.by = tail call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i, float %.sroa.03.4.vec.extract.i555, float %i.bx)
  %i.bz = fneg float %i.bx
  %i.ca = tail call noundef float @llvm.fma.f32(float %.sroa.23.0.copyload, float %.sroa.2468.0.copyload, float %i.bz)
  %i.cb = fadd float %i.by, %i.ca
  %i.cc = tail call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i, float %.sroa.03.0.vec.extract.i554, float %i.cb) ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.4382.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ce = shufflevector <4 x float> %i.ax, <4 x float> %i.bh, <2 x i32> <i32 2, i32 4> ; 2 uses
  %i.cf = insertelement <2 x float> poison, float %.sroa.2468.0.copyload, i64 0
  %i.cg = insertelement <2 x float> %i.cf, float %.sroa.23.0.copyload, i64 1 ; 4 uses
  %i.ch = fmul <2 x float> %i.ce, %i.cg           ; 2 uses
  %i.ci = shufflevector <2 x float> %i.at, <2 x float> %.sroa.0929.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.cj = shufflevector <2 x float> %.sroa.0467.0.copyload, <2 x float> %i.ba, <2 x i32> <i32 1, i32 3>
  %i.ck = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ci, <2 x float> %i.cj, <2 x float> %i.ch)
  %i.cl = fneg <2 x float> %i.ch
  %i.cm = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ce, <2 x float> %i.cg, <2 x float> %i.cl)
  %i.cn = fadd <2 x float> %i.ck, %i.cm
  %i.co = shufflevector <2 x float> %i.at, <2 x float> %.sroa.0929.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.cp = shufflevector <2 x float> %.sroa.0467.0.copyload, <2 x float> %i.ba, <2 x i32> <i32 0, i32 2>
  %i.cq = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.co, <2 x float> %i.cp, <2 x float> %i.cn) ; 2 uses
  %shift = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.cq, %shift ; 2 uses
  %i.cr = shufflevector <4 x float> %i.ax, <4 x float> %i.bh, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.cs = fmul <2 x float> %i.cr, %i.cg           ; 2 uses
  %i.ct = shufflevector <2 x float> %.sroa.0929.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.cu = shufflevector <4 x float> %i.ax, <4 x float> %i.ct, <2 x i32> <i32 1, i32 5>
  %i.cv = shufflevector <2 x float> %.sroa.0467.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> %i.bi, <2 x i32> <i32 1, i32 5>
  %i.cx = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.cu, <2 x float> %i.cw, <2 x float> %i.cs)
  %i.cy = fneg <2 x float> %i.cs
  %i.cz = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.cr, <2 x float> %i.cg, <2 x float> %i.cy)
  %i.da = fadd <2 x float> %i.cx, %i.cz
  %i.db = shufflevector <4 x float> %i.ax, <4 x float> %i.ct, <2 x i32> <i32 0, i32 4>
  %i.dc = shufflevector <4 x float> %i.cv, <4 x float> %i.bh, <2 x i32> <i32 0, i32 5>
  %i.dd = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.db, <2 x float> %i.dc, <2 x float> %i.da) ; 2 uses
  %shift987 = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop988 = fadd <2 x float> %i.dd, %shift987
  %i.de = fsub <2 x float> %4, %i.ba
  %i.df = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dh = fmul <2 x float> %i.at, %i.dg
  %i.di = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = fmul <2 x float> %.sroa.0929.0.copyload, %i.di
  %i.dk = fadd <2 x float> %i.dh, %i.dj
  %i.dl = fmul <2 x float> %i.dk, splat (float 2.000000e+00)
  %i.dm = fadd <2 x float> %i.de, %i.dl           ; 2 uses
  store <2 x float> %i.dm, ptr %i.cd, align 4
  %i.dn = shufflevector <2 x float> %4, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.do = insertelement <4 x float> poison, float %5, i64 0
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.dq = shufflevector <4 x float> %i.dn, <4 x float> %i.dp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dr = fsub <4 x float> %i.dq, %i.bi
  %i.ds = insertelement <4 x float> poison, float %i.cc, i64 0
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> poison, <4 x i32> zeroinitializer
  %i.du = fmul <4 x float> %i.ax, %i.dt
  %i.dv = insertelement <4 x float> poison, float %.sroa.23.0.copyload, i64 0
  %i.dw = shufflevector <4 x float> %i.dv, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.dx = shufflevector <4 x float> %i.ct, <4 x float> %i.dw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dy = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %foldExtExtBinop988, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.ea = fmul <4 x float> %i.dx, %i.dz
  %i.eb = fadd <4 x float> %i.du, %i.ea
  %i.ec = fmul <4 x float> %i.eb, splat (float 2.000000e+00)
  %i.ed = fadd <4 x float> %i.dr, %i.ec           ; 2 uses
  %i.ee = extractelement <4 x float> %i.ed, i64 2
  store float %i.ee, ptr %.sroa.4382.0..sroa_idx, align 4
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.ef = shufflevector <4 x float> %i.ax, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  store i8 1, ptr %i.r, align 8, !tbaa !55
  %.sroa.0.sroa.2.0..sroa_idx.i690 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.sroa.5.0..sroa_idx.i696 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.sroa.5.0.copyload.i697 = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i696, align 8
  %.sroa.0.sroa.6.0..sroa_idx.i698 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.sroa.6.0.copyload.i699 = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i698, align 4
  %i.eg = fadd float %.sroa.0.sroa.5.0.copyload.i697, %.sroa.0.sroa.6.0.copyload.i699
  %i.eh = fmul float %i.eg, 5.000000e-01          ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.0251.0.copyload = load <2 x float>, ptr %i.ei, align 8
  %.sroa.2252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.2252.0.copyload = load float, ptr %.sroa.2252.0..sroa_idx, align 8
  %i.ej = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i690, align 4
  %i.ek = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %1, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.em = fadd <2 x float> %i.ej, %i.el
  %i.en = fmul <2 x float> %i.em, splat (float 5.000000e-01) ; 2 uses
  %i.eo = fadd <2 x float> %i.en, %.sroa.0251.0.copyload
  %i.ep = fadd float %.sroa.2252.0.copyload, %i.eh
  store <2 x float> %i.eo, ptr %i.s, align 4
  %.sroa.4258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.ep, ptr %.sroa.4258.0..sroa_idx, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 220
  %.sroa.0237.0.copyload = load <2 x float>, ptr %i.eq, align 4
  %.sroa.2238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 228
  %.sroa.2238.0.copyload = load float, ptr %.sroa.2238.0..sroa_idx, align 4
  %i.er = fadd <2 x float> %i.en, %.sroa.0237.0.copyload
  %i.es = fadd float %i.eh, %.sroa.2238.0.copyload
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x float> %i.er, ptr %i.et, align 8
  %.sroa.4244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %i.es, ptr %.sroa.4244.0..sroa_idx, align 8
  %.sroa.01.0.vec.extract.i731 = extractelement <2 x float> %.sroa.0929.0.copyload, i64 0 ; 2 uses
  %.sroa.01.4.vec.extract.i733 = extractelement <2 x float> %.sroa.0929.0.copyload, i64 1 ; 2 uses
  %i.eu = fmul float %.sroa.23.0.copyload, %.sroa.2468.0.copyload ; 2 uses
  %i.ev = tail call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i733, float %.sroa.03.4.vec.extract.i555, float %i.eu)
  %i.ew = fneg float %i.eu
  %i.ex = tail call noundef float @llvm.fma.f32(float %.sroa.23.0.copyload, float %.sroa.2468.0.copyload, float %i.ew)
  %i.ey = fadd float %i.ev, %i.ex
  %i.ez = tail call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i731, float %.sroa.03.0.vec.extract.i554, float %i.ey) ; 2 uses
  %i.fa = fcmp olt float %i.ez, 0.000000e+00
  %i.fb = shufflevector <2 x float> %.sroa.0929.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> %i.ax, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  br i1 %i.fa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fd = fneg <4 x float> %i.fc                  ; 4 uses
  %i.fe = extractelement <4 x float> %i.fd, i64 1 ; 2 uses
  %i.ff = extractelement <4 x float> %i.fd, i64 0 ; 2 uses
  %i.fg = fneg float %.sroa.23.0.copyload         ; 3 uses
  %i.fh = fneg <2 x float> %i.at
  %i.fi = fneg <2 x float> %i.ef
  %.pre971 = fmul float %.sroa.2468.0.copyload, %i.fg ; 2 uses
  %.pre972 = tail call noundef float @llvm.fma.f32(float %i.fe, float %.sroa.03.4.vec.extract.i555, float %.pre971)
  %.pre974 = fneg float %.pre971
  %.pre976 = tail call noundef float @llvm.fma.f32(float %i.fg, float %.sroa.2468.0.copyload, float %.pre974)
  %.pre978 = fadd float %.pre972, %.pre976
  %.pre980 = tail call noundef float @llvm.fma.f32(float %i.ff, float %.sroa.03.0.vec.extract.i554, float %.pre978)
  %i.fj = shufflevector <4 x float> %i.fd, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi981 = phi float [ %.pre980, %bb.g ], [ %i.ez, %bb.f ] ; 2 uses
  %.sroa.01.4.vec.extract.i749.pre-phi = phi float [ %i.fe, %bb.g ], [ %.sroa.01.4.vec.extract.i733, %bb.f ] ; 2 uses
  %.sroa.01.0.vec.extract.i747.pre-phi = phi float [ %i.ff, %bb.g ], [ %.sroa.01.0.vec.extract.i731, %bb.f ] ; 2 uses
  %.sroa.0916.0 = phi <2 x float> [ %i.fi, %bb.g ], [ %i.ef, %bb.f ]
  %.sroa.0923.0 = phi <2 x float> [ %i.fh, %bb.g ], [ %i.at, %bb.f ] ; 3 uses
  %.sroa.23.0 = phi float [ %i.fg, %bb.g ], [ %.sroa.23.0.copyload, %bb.f ] ; 4 uses
  %i.fk = phi <4 x float> [ %i.fd, %bb.g ], [ %i.fc, %bb.f ] ; 3 uses
  %i.fl = phi <2 x float> [ %i.fj, %bb.g ], [ %.sroa.0929.0.copyload, %bb.f ]
  %i.fm = insertelement <2 x float> poison, float %.sroa.2468.0.copyload, i64 0
  %i.fn = insertelement <2 x float> %i.fm, float %.sroa.23.0, i64 1 ; 4 uses
end_hunk_0
