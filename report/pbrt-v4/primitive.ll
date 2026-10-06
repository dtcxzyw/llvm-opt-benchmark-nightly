Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/primitive?download=true
inline.NumInlined: 1903
inline.NumDeleted: 442
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK4pbrt18GeometricPrimitive10IntersectPERKNS_3RayEf:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.g, %bb.b ], [ %i.o, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4pbrt15SimplePrimitiveC2ENS_5ShapeENS_8MaterialE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(8) %1, ptr nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(8) %2) unnamed_addr #3 align 2 {
bb.a:
  store i64 0, ptr %0, align 8, !tbaa !23
  %i.a = load i64, ptr %1, align 8, !tbaa !23
  store i64 %i.a, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !25
  %i.c = load i64, ptr %2, align 8, !tbaa !25
  store i64 %i.c, ptr %i.b, align 8, !tbaa !25
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL15primitiveMemoryE) ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !21
  %i.f = add i64 %i.e, 16
  store i64 %i.f, ptr %i.d, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt15SimplePrimitive6BoundsEv(ptr dead_on_unwind noalias writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %class.anon.24, align 1             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !144
  call void @_ZNK4pbrt13TaggedPointerIJNS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEE8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_EEDcOSA_(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !144
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4pbrt15SimplePrimitive10IntersectPERKNS_3RayEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, float noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %3 = alloca %class.anon.45, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float %2, ptr %i.a, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %1, ptr %3, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !20
  %i.c = load i64, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.d = and i64 %i.c, 144115188075855871
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = lshr i64 %i.c, 57
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = add nsw i32 %i.g, -1
  %i.i = call noundef zeroext i1 @_ZN4pbrt6detail8DispatchIRZNKS_5Shape10IntersectPERKNS_3RayEfEUlT_E_bNS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS6_PKvi(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.e, i32 noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt15SimplePrimitive9IntersectERKNS_3RayEf(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pstd::optional") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, float noundef %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %4 = alloca %class.anon.26, align 8             ; 5 uses
  %5 = alloca %"class.pstd::optional", align 8    ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store float %3, ptr %i.c, align 4, !tbaa !15, !noalias !149
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !149
  store ptr %2, ptr %4, align 8, !tbaa !18, !noalias !149
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !20, !noalias !149
  %i.e = load i64, ptr %1, align 8, !tbaa !23, !noalias !150 ; 2 uses
  %i.f = and i64 %i.e, 144115188075855871
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = lshr i64 %i.e, 57
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = add nsw i32 %i.i, -1
  call void @_ZN4pbrt6detail8DispatchIRZNKS_5Shape9IntersectERKNS_3RayEfEUlT_E_N4pstd8optionalINS_17ShapeIntersectionEEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS6_PKvi(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.g, i32 noundef %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 256
  %i.l = load i8, ptr %i.k, align 8, !tbaa !34, !range !35, !noundef !36
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %0, i8 0, i64 264, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !25   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 192
  store i64 %i.o, ptr %i.r, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 200
  store i64 0, ptr %i.s, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.05.0.copyload.i = load <2 x float>, ptr %i.t, align 8 ; 2 uses
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.26.0.copyload.i = load float, ptr %.sroa.26.0..sroa_idx.i, align 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 128
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.u, align 8 ; 2 uses
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 136
  %.sroa.24.0.copyload.i = load float, ptr %.sroa.24.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %.sroa.05.0.copyload.i, i64 0
  %.sroa.01.0.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 0
  %.sroa.04.4.vec.extract.i.i = extractelement <2 x float> %.sroa.05.0.copyload.i, i64 1
  %.sroa.01.4.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 1
  %i.v = fmul float %.sroa.26.0.copyload.i, %.sroa.24.0.copyload.i ; 2 uses
  %i.w = call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i.i, float %.sroa.01.4.vec.extract.i.i, float %i.v)
  %i.x = fneg float %i.v
  %i.y = call noundef float @llvm.fma.f32(float %.sroa.26.0.copyload.i, float %.sroa.24.0.copyload.i, float %i.x)
  %i.z = fadd float %i.w, %i.y
  %i.aa = call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i.i, float %.sroa.01.0.vec.extract.i.i, float %i.z) ; 2 uses
  store float %i.aa, ptr %i.a, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !57
  %i.ab = fcmp ult float %i.aa, 0.000000e+00
  br i1 %i.ab, label %.noexc5, label %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEC2EOS3_.exit

.noexc5:                                          ; preds = %bb.c
  call void @_ZN4pbrt8LogFatalIJRA18_KcRA3_S1_S3_RfS5_RdEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.27, i32 noundef 223, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(18) @.str.28, ptr noundef nonnull align 1 dereferenceable(3) @.str.29, ptr noundef nonnull align 1 dereferenceable(18) @.str.28, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @.str.29, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #24
  unreachable

_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEC2EOS3_.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i8 1, ptr %i.ac, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(257) %0, ptr noundef nonnull align 8 dereferenceable(257) %5, i64 72, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.q, ptr %i.ad, align 8, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ae, ptr noundef nonnull align 8 dereferenceable(112) %i.af, i64 112, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.o, ptr %i.ag, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 0, ptr %i.ah, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull align 8 dereferenceable(40) %i.aj, i64 40, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 248
  %i.am = load float, ptr %i.al, align 8, !tbaa !55
  store float %i.am, ptr %i.ak, align 8, !tbaa !55
  br label %bb.d

bb.d:                                             ; preds = %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEC2EOS3_.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt20TransformedPrimitive9IntersectERKNS_3RayEf(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pstd::optional") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, float noundef %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %4 = alloca %class.anon.6, align 8              ; 5 uses
  %5 = alloca %"class.pbrt::Point3fi", align 16   ; 11 uses
  %6 = alloca %"class.pbrt::Point3fi", align 8    ; 6 uses
  %7 = alloca %"class.pbrt::Ray", align 8         ; 9 uses
  %8 = alloca %"class.pstd::optional", align 8    ; 17 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %9 = alloca %"class.pbrt::SurfaceInteraction", align 8 ; 9 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !71   ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !157
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !157
  %i.h = load <1 x float>, ptr %2, align 8, !noalias !157
  %.sroa.07.4.vec.insert.i.i = shufflevector <1 x float> %i.h, <1 x float> poison, <2 x i32> zeroinitializer
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load <1 x float>, ptr %i.i, align 4, !noalias !157
  %.sroa.05.4.vec.insert.i.i = shufflevector <1 x float> %i.j, <1 x float> poison, <2 x i32> zeroinitializer
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load <1 x float>, ptr %i.k, align 8, !noalias !157
  %.sroa.0.4.vec.insert.i.i = shufflevector <1 x float> %i.l, <1 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.07.4.vec.insert.i.i, ptr %6, align 8, !tbaa !15, !noalias !157
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %.sroa.05.4.vec.insert.i.i, ptr %i.m, align 8, !tbaa !15, !noalias !157
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.n, align 8, !tbaa !15, !noalias !157
  call void @_ZNK4pbrt9Transform12ApplyInverseERKNS_8Point3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Point3fi") align 4 %5, ptr noundef nonnull align 4 dereferenceable(128) %i.g, ptr noundef nonnull align 4 dereferenceable(24) %6), !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !157
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.040.0.copyload.i = load <2 x float>, ptr %i.o, align 4, !noalias !157 ; 3 uses
  %.sroa.241.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.241.0.copyload.i = load float, ptr %.sroa.241.0..sroa_idx.i, align 4, !noalias !157 ; 2 uses
  %i.p = shufflevector <2 x float> %.sroa.040.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 84
  %10 = call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %i.q, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !15, !noalias !157 ; 3 uses
  %11 = shufflevector <5 x float> %10, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %12 = shufflevector <5 x float> %10, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %13 = fmul <2 x float> %i.p, %12
  %14 = load <2 x float>, ptr %i.r, align 4, !tbaa !15, !noalias !157 ; 2 uses
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %16 = shufflevector <4 x float> %11, <4 x float> %15, <2 x i32> <i32 0, i32 4>
  %17 = fmul <2 x float> %.sroa.040.0.copyload.i, %16
  %18 = fadd <2 x float> %13, %17
  %19 = insertelement <2 x float> poison, float %.sroa.241.0.copyload.i, i64 0
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = shufflevector <2 x float> %14, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %22 = shufflevector <5 x float> %10, <5 x float> %21, <2 x i32> <i32 2, i32 6>
  %i.s = fmul <2 x float> %20, %22
  %23 = fadd <2 x float> %18, %i.s                ; 5 uses
  %24 = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %25 = load <2 x float>, ptr %24, align 4, !tbaa !15, !noalias !157
  %i.t = fmul <2 x float> %.sroa.040.0.copyload.i, %25 ; 2 uses
  %shift = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.t, %shift
  %26 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %27 = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %28 = load float, ptr %27, align 4, !tbaa !15, !noalias !157
  %29 = fmul float %.sroa.241.0.copyload.i, %28
  %30 = fadd float %26, %29                       ; 5 uses
  %31 = fmul <2 x float> %23, %23                 ; 2 uses
  %shift29 = shufflevector <2 x float> %31, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop30 = fadd <2 x float> %31, %shift29
  %32 = extractelement <2 x float> %foldExtExtBinop30, i64 0
  %33 = fmul float %30, %30
  %i.u = fadd float %32, %33                      ; 2 uses
  %i.v = fcmp ogt float %i.u, 0.000000e+00
  br i1 %i.v, label %bb.b, label %_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf.exit

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.y = load float, ptr %i.x, align 4, !tbaa !72, !noalias !157
  %i.z = load float, ptr %i.w, align 16, !tbaa !73, !noalias !157
  %i.aa = fsub float %i.y, %i.z
  %i.ab = fmul float %i.aa, 5.000000e-01
  %i.ac = call <2 x float> @llvm.fabs.v2f32(<2 x float> %23)
  %i.ad = call noundef float @llvm.fabs.f32(float %30)
  %34 = load <4 x float>, ptr %5, align 16, !tbaa !15, !noalias !157 ; 2 uses
  %35 = shufflevector <4 x float> %34, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %36 = shufflevector <4 x float> %34, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ae = fsub <2 x float> %35, %36
  %i.af = fmul <2 x float> %i.ae, splat (float 5.000000e-01)
  %i.ag = fmul <2 x float> %i.ac, %i.af           ; 2 uses
  %shift32 = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop33 = fadd <2 x float> %i.ag, %shift32
  %i.ah = extractelement <2 x float> %foldExtExtBinop33, i64 0
  %37 = fmul float %i.ad, %i.ab
  %38 = fadd float %i.ah, %37
  %39 = fdiv float %38, %i.u                      ; 3 uses
  %40 = insertelement <2 x float> poison, float %39, i64 0
  %41 = shufflevector <2 x float> %40, <2 x float> poison, <2 x i32> zeroinitializer
  %42 = fmul <2 x float> %23, %41
  %i.ai = fmul float %30, %39
  %i.aj = call noundef nonnull align 4 dereferenceable(24) ptr @_ZN4pbrt8Point3fipLIfEERS0_NS_7Vector3IT_EE(ptr noundef nonnull align 4 dereferenceable(24) %5, <2 x float> %42, float %i.ai), !noalias !157 ; 0 uses
  %i.ak = fsub float %3, %39
  br label %_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf.exit

_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf.exit: ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.ak, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %.sroa.060.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.060.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.060.sroa.5.0.copyload.i = load float, ptr %.sroa.060.sroa.5.0..sroa_idx.i, align 16, !noalias !157
  %.sroa.060.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 20
  %.sroa.060.sroa.6.0.copyload.i = load float, ptr %.sroa.060.sroa.6.0..sroa_idx.i, align 4, !noalias !157
  %i.al = load <2 x float>, ptr %.sroa.060.sroa.2.0..sroa_idx.i, align 4, !noalias !157
  %i.am = load <4 x float>, ptr %5, align 16, !noalias !157
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ao = fadd <2 x float> %i.al, %i.an
  %i.ap = fmul <2 x float> %i.ao, splat (float 5.000000e-01)
  %i.aq = fadd float %.sroa.060.sroa.5.0.copyload.i, %.sroa.060.sroa.6.0.copyload.i
  %i.ar = fmul float %i.aq, 5.000000e-01
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.at = load float, ptr %i.as, align 8, !tbaa !77, !noalias !157
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.av = load i64, ptr %i.au, align 8, !tbaa !29, !noalias !157
  store <2 x float> %i.ap, ptr %7, align 8, !alias.scope !157
  %.sroa.27.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %i.ar, ptr %.sroa.27.0..sroa_idx.i.i, align 8, !alias.scope !157
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 12
  store <2 x float> %23, ptr %i.aw, align 4, !alias.scope !157
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 20
  store float %30, ptr %.sroa.23.0..sroa_idx.i.i, align 4, !alias.scope !157
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 24
  store float %i.at, ptr %i.ax, align 8, !tbaa !77, !alias.scope !157
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %i.av, ptr %i.ay, align 8, !tbaa !29, !alias.scope !157
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !157
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float %.0, ptr %i.a, align 4, !tbaa !15, !noalias !158
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !158
  store ptr %7, ptr %4, align 8, !tbaa !18, !noalias !158
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %i.az, align 8, !tbaa !20, !noalias !158
  %i.ba = load i64, ptr %1, align 8, !tbaa !13, !noalias !159 ; 2 uses
  %i.bb = and i64 %i.ba, 144115188075855871
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = lshr i64 %i.ba, 57
  %i.be = trunc nuw nsw i64 %i.bd to i32
  %i.bf = add nsw i32 %i.be, -1
  call fastcc void @"_ZN4pbrt6detail11DispatchCPUIRZNKS_9Primitive9IntersectERKNS_3RayEfE3$_0N4pstd8optionalINS_17ShapeIntersectionEEENS_15SimplePrimitiveENS_18GeometricPrimitiveENS_20TransformedPrimitiveENS_17AnimatedPrimitiveENS_12BVHAggregateENS_15KdTreeAggregateEEEDaOT_PKvi"(ptr dead_on_unwind noalias nonnull writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.bc, i32 noundef %i.bf), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 256 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !34, !range !35, !noundef !36
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %0, i8 0, i64 264, i1 false)
  br label %bb.i

bb.d:                                             ; preds = %_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 248 ; 2 uses
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !55 ; 2 uses
  store float %i.bk, ptr %i.b, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.bl = fpext float %.0 to double
  %i.bm = fmul double %i.bl, 1.001000e+00         ; 2 uses
  store double %i.bm, ptr %i.c, align 8, !tbaa !57
  %i.bn = fpext float %i.bk to double
  %i.bo = fcmp ogt double %i.bm, %i.bn
  br i1 %i.bo, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN4pbrt8LogFatalIJRA9_KcRA13_S1_S3_RfS5_RdEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 119, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(9) @.str.6, ptr noundef nonnull align 1 dereferenceable(13) @.str.7, ptr noundef nonnull align 1 dereferenceable(9) @.str.6, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(13) @.str.7, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #24
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.bp = load ptr, ptr %i.f, align 8, !tbaa !71
  call void @_ZNK4pbrt9TransformclERKNS_18SurfaceInteractionE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::SurfaceInteraction") align 8 %9, ptr noundef nonnull align 4 dereferenceable(128) %i.bp, ptr noundef nonnull align 8 dereferenceable(248) %8)
  %i.bq = load i8, ptr %i.bg, align 8, !tbaa !34, !range !35, !noundef !36
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.g, label %.noexc19

.noexc19:                                         ; preds = %bb.f
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.16, i32 noundef 235, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(4) @.str.17) #24
  unreachable

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %8, ptr noundef nonnull align 8 dereferenceable(248) %9, i64 72, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !29 ; 2 uses
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !29
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bv, ptr noundef nonnull align 8 dereferenceable(112) %i.bw, i64 112, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 192
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 192
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !25 ; 2 uses
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !25
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 200
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 200
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !27 ; 2 uses
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !27
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 208 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cd, ptr noundef nonnull align 8 dereferenceable(40) %i.ce, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 40
  %.sroa.05.0.copyload = load <2 x float>, ptr %i.cf, align 8 ; 2 uses
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 48
  %.sroa.26.0.copyload = load float, ptr %.sroa.26.0..sroa_idx, align 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 128
  %.sroa.03.0.copyload = load <2 x float>, ptr %i.cg, align 8 ; 2 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 136
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 8 ; 2 uses
  %.sroa.04.0.vec.extract.i = extractelement <2 x float> %.sroa.05.0.copyload, i64 0
  %.sroa.01.0.vec.extract.i = extractelement <2 x float> %.sroa.03.0.copyload, i64 0
  %.sroa.04.4.vec.extract.i = extractelement <2 x float> %.sroa.05.0.copyload, i64 1
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %.sroa.03.0.copyload, i64 1
  %i.ch = fmul float %.sroa.26.0.copyload, %.sroa.24.0.copyload ; 2 uses
  %i.ci = call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i, float %.sroa.01.4.vec.extract.i, float %i.ch)
  %i.cj = fneg float %i.ch
  %i.ck = call noundef float @llvm.fma.f32(float %.sroa.26.0.copyload, float %.sroa.24.0.copyload, float %i.cj)
  %i.cl = fadd float %i.ci, %i.ck
  %i.cm = call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i, float %.sroa.01.0.vec.extract.i, float %i.cl) ; 2 uses
  store float %i.cm, ptr %i.d, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i32 0, ptr %i.e, align 4, !tbaa !78
  %i.cn = fcmp ult float %i.cm, 0.000000e+00
  br i1 %i.cn, label %bb.h, label %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEC2EOS3_.exit

bb.h:                                             ; preds = %bb.g
  call void @_ZN4pbrt8LogFatalIJRA36_KcRA2_S1_S3_RfS5_RiEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 123, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(36) @.str.9, ptr noundef nonnull align 1 dereferenceable(2) @.str.10, ptr noundef nonnull align 1 dereferenceable(36) @.str.9, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 1 dereferenceable(2) @.str.10, ptr noundef nonnull align 4 dereferenceable(4) %i.e) #24
  unreachable

_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEC2EOS3_.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i8 1, ptr %i.co, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(257) %0, ptr noundef nonnull align 8 dereferenceable(257) %8, i64 72, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.bu, ptr %i.cp, align 8, !tbaa !29
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cq, ptr noundef nonnull align 8 dereferenceable(112) %i.bv, i64 112, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.bz, ptr %i.cr, align 8, !tbaa !25
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.cc, ptr %i.cs, align 8, !tbaa !27
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ct, ptr noundef nonnull align 8 dereferenceable(40) %i.cd, i64 40, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.cv = load float, ptr %i.bj, align 8, !tbaa !55
  store float %i.cv, ptr %i.cu, align 8, !tbaa !55
  br label %bb.i

bb.i:                                             ; preds = %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEC2EOS3_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret void
}

declare void @_ZNK4pbrt9TransformclERKNS_18SurfaceInteractionE(ptr dead_on_unwind writable sret(%"class.pbrt::SurfaceInteraction") align 8, ptr noundef nonnull align 4 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(248)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA36_KcRA2_S1_S3_RfS5_RiEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(36) %4, ptr noundef nonnull align 1 dereferenceable(2) %5, ptr noundef nonnull align 1 dereferenceable(36) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(2) %8, ptr noundef nonnull align 4 dereferenceable(4) %9) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !63, !alias.scope !162
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !65, !alias.scope !162
  store i8 0, ptr %i.a, align 8, !tbaa !66, !alias.scope !162
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA36_KcJRA2_S2_S4_RfS6_RiEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %10, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(36) %4, ptr noundef nonnull align 1 dereferenceable(2) %5, ptr noundef nonnull align 1 dereferenceable(36) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(2) %8, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %_ZN4pbrt12StringPrintfIJRA36_KcRA2_S1_S3_RfS5_RiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %10, align 8, !tbaa !67, !alias.scope !162 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !66, !alias.scope !162
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #25
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA36_KcRA2_S1_S3_RfS5_RiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %10, align 8, !tbaa !67
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #24
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA36_KcRA2_S1_S3_RfS5_RiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA36_KcRA2_S1_S3_RfS5_RiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %10, align 8, !tbaa !67    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !66
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4pbrt20TransformedPrimitive10IntersectPERKNS_3RayEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, float noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %3 = alloca %class.anon.9, align 8              ; 5 uses
  %4 = alloca %"class.pbrt::Point3fi", align 16   ; 11 uses
  %5 = alloca %"class.pbrt::Point3fi", align 8    ; 6 uses
  %6 = alloca %"class.pbrt::Ray", align 8         ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !71   ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !165
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !165
  %i.d = load <1 x float>, ptr %1, align 8, !noalias !165
  %.sroa.07.4.vec.insert.i.i = shufflevector <1 x float> %i.d, <1 x float> poison, <2 x i32> zeroinitializer
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load <1 x float>, ptr %i.e, align 4, !noalias !165
  %.sroa.05.4.vec.insert.i.i = shufflevector <1 x float> %i.f, <1 x float> poison, <2 x i32> zeroinitializer
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load <1 x float>, ptr %i.g, align 8, !noalias !165
  %.sroa.0.4.vec.insert.i.i = shufflevector <1 x float> %i.h, <1 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.07.4.vec.insert.i.i, ptr %5, align 8, !tbaa !15, !noalias !165
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.05.4.vec.insert.i.i, ptr %i.i, align 8, !tbaa !15, !noalias !165
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.j, align 8, !tbaa !15, !noalias !165
  call void @_ZNK4pbrt9Transform12ApplyInverseERKNS_8Point3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Point3fi") align 4 %4, ptr noundef nonnull align 4 dereferenceable(128) %i.c, ptr noundef nonnull align 4 dereferenceable(24) %5), !noalias !165
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !165
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.040.0.copyload.i = load <2 x float>, ptr %i.k, align 4, !noalias !165 ; 3 uses
  %.sroa.241.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.241.0.copyload.i = load float, ptr %.sroa.241.0..sroa_idx.i, align 4, !noalias !165 ; 2 uses
  %i.l = shufflevector <2 x float> %.sroa.040.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %7 = call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %i.m, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !15, !noalias !165 ; 3 uses
  %8 = shufflevector <5 x float> %7, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %9 = shufflevector <5 x float> %7, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %10 = fmul <2 x float> %i.l, %9
  %11 = load <2 x float>, ptr %i.n, align 4, !tbaa !15, !noalias !165 ; 2 uses
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %13 = shufflevector <4 x float> %8, <4 x float> %12, <2 x i32> <i32 0, i32 4>
  %14 = fmul <2 x float> %.sroa.040.0.copyload.i, %13
  %15 = fadd <2 x float> %10, %14
  %16 = insertelement <2 x float> poison, float %.sroa.241.0.copyload.i, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %18 = shufflevector <2 x float> %11, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %19 = shufflevector <5 x float> %7, <5 x float> %18, <2 x i32> <i32 2, i32 6>
  %i.o = fmul <2 x float> %17, %19
  %20 = fadd <2 x float> %15, %i.o                ; 5 uses
  %21 = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %22 = load <2 x float>, ptr %21, align 4, !tbaa !15, !noalias !165
  %i.p = fmul <2 x float> %.sroa.040.0.copyload.i, %22 ; 2 uses
  %shift = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.p, %shift
  %23 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %24 = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %25 = load float, ptr %24, align 4, !tbaa !15, !noalias !165
  %26 = fmul float %.sroa.241.0.copyload.i, %25
  %27 = fadd float %23, %26                       ; 5 uses
  %28 = fmul <2 x float> %20, %20                 ; 2 uses
  %shift5 = shufflevector <2 x float> %28, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop6 = fadd <2 x float> %28, %shift5
  %29 = extractelement <2 x float> %foldExtExtBinop6, i64 0
  %30 = fmul float %27, %27
  %i.q = fadd float %29, %30                      ; 2 uses
  %i.r = fcmp ogt float %i.q, 0.000000e+00
  br i1 %i.r, label %bb.b, label %_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf.exit

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.u = load float, ptr %i.t, align 4, !tbaa !72, !noalias !165
  %i.v = load float, ptr %i.s, align 16, !tbaa !73, !noalias !165
  %i.w = fsub float %i.u, %i.v
  %i.x = fmul float %i.w, 5.000000e-01
  %i.y = call <2 x float> @llvm.fabs.v2f32(<2 x float> %20)
  %i.z = call noundef float @llvm.fabs.f32(float %27)
  %31 = load <4 x float>, ptr %4, align 16, !tbaa !15, !noalias !165 ; 2 uses
  %32 = shufflevector <4 x float> %31, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %33 = shufflevector <4 x float> %31, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.aa = fsub <2 x float> %32, %33
  %i.ab = fmul <2 x float> %i.aa, splat (float 5.000000e-01)
  %i.ac = fmul <2 x float> %i.y, %i.ab            ; 2 uses
  %shift8 = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9 = fadd <2 x float> %i.ac, %shift8
  %i.ad = extractelement <2 x float> %foldExtExtBinop9, i64 0
  %34 = fmul float %i.z, %i.x
  %35 = fadd float %i.ad, %34
  %36 = fdiv float %35, %i.q                      ; 3 uses
  %37 = insertelement <2 x float> poison, float %36, i64 0
  %38 = shufflevector <2 x float> %37, <2 x float> poison, <2 x i32> zeroinitializer
  %39 = fmul <2 x float> %20, %38
  %i.ae = fmul float %27, %36
  %i.af = call noundef nonnull align 4 dereferenceable(24) ptr @_ZN4pbrt8Point3fipLIfEERS0_NS_7Vector3IT_EE(ptr noundef nonnull align 4 dereferenceable(24) %4, <2 x float> %39, float %i.ae), !noalias !165 ; 0 uses
  %i.ag = fsub float %2, %36
  br label %_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf.exit

_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf.exit: ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.ag, %bb.b ], [ %2, %bb.a ]
  %.sroa.060.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.060.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.060.sroa.5.0.copyload.i = load float, ptr %.sroa.060.sroa.5.0..sroa_idx.i, align 16, !noalias !165
  %.sroa.060.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  %.sroa.060.sroa.6.0.copyload.i = load float, ptr %.sroa.060.sroa.6.0..sroa_idx.i, align 4, !noalias !165
  %i.ah = load <2 x float>, ptr %.sroa.060.sroa.2.0..sroa_idx.i, align 4, !noalias !165
  %i.ai = load <4 x float>, ptr %4, align 16, !noalias !165
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ak = fadd <2 x float> %i.ah, %i.aj
  %i.al = fmul <2 x float> %i.ak, splat (float 5.000000e-01)
  %i.am = fadd float %.sroa.060.sroa.5.0.copyload.i, %.sroa.060.sroa.6.0.copyload.i
  %i.an = fmul float %i.am, 5.000000e-01
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !77, !noalias !165
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !29, !noalias !165
  store <2 x float> %i.al, ptr %6, align 8, !alias.scope !165
  %.sroa.27.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.an, ptr %.sroa.27.0..sroa_idx.i.i, align 8, !alias.scope !165
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 12
  store <2 x float> %20, ptr %i.as, align 4, !alias.scope !165
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %27, ptr %.sroa.23.0..sroa_idx.i.i, align 4, !alias.scope !165
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float %i.ap, ptr %i.at, align 8, !tbaa !77, !alias.scope !165
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.ar, ptr %i.au, align 8, !tbaa !29, !alias.scope !165
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float %.0, ptr %i.a, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %6, ptr %3, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.av, align 8, !tbaa !20
  %i.aw = load i64, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.ax = and i64 %i.aw, 144115188075855871
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = lshr i64 %i.aw, 57
  %i.ba = trunc nuw nsw i64 %i.az to i32
  %i.bb = add nsw i32 %i.ba, -1
  %i.bc = call fastcc noundef zeroext i1 @"_ZN4pbrt6detail11DispatchCPUIRZNKS_9Primitive10IntersectPERKNS_3RayEfE3$_0bNS_15SimplePrimitiveENS_18GeometricPrimitiveENS_20TransformedPrimitiveENS_17AnimatedPrimitiveENS_12BVHAggregateENS_15KdTreeAggregateEEEDaOT_PKvi"(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.ay, i32 noundef %i.bb), !inline_history !1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret i1 %i.bc
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt17AnimatedPrimitiveC2ENS_9PrimitiveERKNS_17AnimatedTransformE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(704) initializes((0, 704)) %0, ptr nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(696) %2) unnamed_addr #2 align 2 {
bb.a:
  store i64 0, ptr %0, align 8, !tbaa !13
  %i.a = load i64, ptr %1, align 8, !tbaa !13
  store i64 %i.a, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(696) %i.b, ptr noundef nonnull align 4 dereferenceable(696) %2, i64 696, i1 false), !tbaa.struct !167
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL15primitiveMemoryE) ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !21
  %i.e = add i64 %i.d, 704
  store i64 %i.e, ptr %i.c, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.g = load i8, ptr %i.f, align 4, !tbaa !171, !range !35, !noundef !36
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt8LogFatalIJRA33_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 137, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(33) @.str.12) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA33_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(33) %4) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !63, !alias.scope !174
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !65, !alias.scope !174
  store i8 0, ptr %i.a, align 8, !tbaa !66, !alias.scope !174
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA33_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(33) %4)
          to label %_ZN4pbrt12StringPrintfIJRA33_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !67, !alias.scope !174 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !66, !alias.scope !174
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #25
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA33_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %5, align 8, !tbaa !67
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #24
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA33_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA33_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %5, align 8, !tbaa !67     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !66
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt17AnimatedPrimitive9IntersectERKNS_3RayEf(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pstd::optional") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(704) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, float noundef %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %4 = alloca %class.anon.6, align 8              ; 5 uses
  %5 = alloca %"class.pbrt::Point3fi", align 16   ; 11 uses
  %6 = alloca %"class.pbrt::Point3fi", align 8    ; 6 uses
  %7 = alloca %"class.pbrt::Transform", align 4   ; 9 uses
  %8 = alloca %"class.pbrt::Ray", align 8         ; 9 uses
  %9 = alloca %"class.pstd::optional", align 8    ; 17 uses
  %10 = alloca %"class.pbrt::SurfaceInteraction", align 8 ; 9 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.f = load float, ptr %i.e, align 8, !tbaa !77
  call void @_ZNK4pbrt17AnimatedTransform11InterpolateEf(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %7, ptr noundef nonnull align 4 dereferenceable(696) %i.d, float noundef %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !181
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !181
  %i.g = load <1 x float>, ptr %2, align 8, !noalias !181
  %.sroa.07.4.vec.insert.i.i = shufflevector <1 x float> %i.g, <1 x float> poison, <2 x i32> zeroinitializer
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load <1 x float>, ptr %i.h, align 4, !noalias !181
  %.sroa.05.4.vec.insert.i.i = shufflevector <1 x float> %i.i, <1 x float> poison, <2 x i32> zeroinitializer
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load <1 x float>, ptr %i.j, align 8, !noalias !181
  %.sroa.0.4.vec.insert.i.i = shufflevector <1 x float> %i.k, <1 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.07.4.vec.insert.i.i, ptr %6, align 8, !tbaa !15, !noalias !181
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %.sroa.05.4.vec.insert.i.i, ptr %i.l, align 8, !tbaa !15, !noalias !181
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.m, align 8, !tbaa !15, !noalias !181
  call void @_ZNK4pbrt9Transform12ApplyInverseERKNS_8Point3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Point3fi") align 4 %5, ptr noundef nonnull align 4 dereferenceable(128) %7, ptr noundef nonnull align 4 dereferenceable(24) %6), !noalias !181
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !181
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.040.0.copyload.i = load <2 x float>, ptr %i.n, align 4, !noalias !181 ; 3 uses
  %.sroa.241.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.241.0.copyload.i = load float, ptr %.sroa.241.0..sroa_idx.i, align 4, !noalias !181 ; 2 uses
  %i.o = shufflevector <2 x float> %.sroa.040.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.r = load <2 x float>, ptr %i.q, align 4, !tbaa !15, !noalias !181
  %i.s = fmul <2 x float> %.sroa.040.0.copyload.i, %i.r ; 2 uses
  %shift = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.s, %shift
  %i.t = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.v = load float, ptr %i.u, align 4, !tbaa !15, !noalias !181
  %i.w = fmul float %.sroa.241.0.copyload.i, %i.v
  %i.x = fadd float %i.t, %i.w                    ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 100
  %i.z = load <9 x float>, ptr %i.p, align 4, !tbaa !15, !noalias !181 ; 3 uses
  %i.aa = shufflevector <9 x float> %i.z, <9 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ab = shufflevector <9 x float> %i.z, <9 x float> poison, <2 x i32> <i32 1, i32 8>
  %i.ac = fmul <2 x float> %i.o, %i.ab
  %i.ad = load <2 x float>, ptr %i.y, align 4, !tbaa !15, !noalias !181 ; 2 uses
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.af = shufflevector <4 x float> %i.aa, <4 x float> %i.ae, <2 x i32> <i32 0, i32 4>
  %i.ag = fmul <2 x float> %.sroa.040.0.copyload.i, %i.af
  %i.ah = fadd <2 x float> %i.ac, %i.ag
  %i.ai = insertelement <2 x float> poison, float %.sroa.241.0.copyload.i, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = shufflevector <2 x float> %i.ad, <2 x float> poison, <9 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.al = shufflevector <9 x float> %i.z, <9 x float> %i.ak, <2 x i32> <i32 2, i32 10>
  %i.am = fmul <2 x float> %i.aj, %i.al
  %i.an = fadd <2 x float> %i.ah, %i.am           ; 7 uses
  %i.ao = fmul float %i.x, %i.x
  %i.ap = fmul <2 x float> %i.an, %i.an           ; 2 uses
  %i.aq = extractelement <2 x float> %i.ap, i64 0
  %i.ar = fadd float %i.aq, %i.ao
  %i.as = extractelement <2 x float> %i.ap, i64 1
  %i.at = fadd float %i.ar, %i.as                 ; 2 uses
  %i.au = fcmp ogt float %i.at, 0.000000e+00
  br i1 %i.au, label %bb.b, label %_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf.exit

bb.b:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !72, !noalias !181
  %i.ay = load float, ptr %i.av, align 8, !tbaa !73, !noalias !181
  %i.az = fsub float %i.ax, %i.ay
  %i.ba = fmul float %i.az, 5.000000e-01
  %i.bb = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.an)
  %i.bc = call noundef float @llvm.fabs.f32(float %i.x)
  %i.bd = fmul float %i.bc, %i.ba
  %i.be = load <6 x float>, ptr %5, align 16, !tbaa !15, !noalias !181 ; 2 uses
  %i.bf = shufflevector <6 x float> %i.be, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.bg = shufflevector <6 x float> %i.be, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.bh = fsub <2 x float> %i.bf, %i.bg
  %i.bi = fmul <2 x float> %i.bh, splat (float 5.000000e-01)
  %i.bj = fmul <2 x float> %i.bb, %i.bi           ; 2 uses
  %i.bk = extractelement <2 x float> %i.bj, i64 0
end_hunk_0
begin_hunk_1_@_ZN4pbrt6detail21stringPrintfRecursiveIRA33_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_:bb.a
  br label %.body26

.body26:                                          ; preds = %.body26.sink.split, %bb.o, %bb.k
  %.pn19 = phi { ptr, i32 } [ %i.am, %bb.k ], [ %i.cb, %bb.o ], [ %.pn19.ph, %.body26.sink.split ] ; 2 uses
  %i.cg = load ptr, ptr %6, align 8, !tbaa !67    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.j
  br i1 %i.ch, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body26, %bb.h
  %.sink86 = phi ptr [ %i.x, %bb.h ], [ %i.cg, %.body26 ]
  %.pn19.pn.ph = phi { ptr, i32 } [ %i.w, %bb.h ], [ %.pn19, %.body26 ]
  %i.ci = load i64, ptr %i.j, align 8, !tbaa !66
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %.sink86, i64 noundef %i.cj) #25
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body26, %bb.h
  %.pn19.pn = phi { ptr, i32 } [ %i.w, %bb.h ], [ %.pn19, %.body26 ], [ %.pn19.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.p

bb.p:                                             ; preds = %.body, %bb.n
  %.pn19.pn.pn = phi { ptr, i32 } [ %.pn19.pn, %.body ], [ %i.ca, %bb.n ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #23
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn19.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn, %bb.p ], [ %i.bz, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.z

bb.r:                                             ; preds = %bb.d
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !65
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %.invoke, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.cn = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !618)
  %i.co = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.cn, ptr noundef nonnull align 1 dereferenceable(33) %2) #23, !noalias !618
  %i.cp = add nsw i32 %i.co, 1
  %i.cq = sext i32 %i.cp to i64                   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.cr, ptr %7, align 8, !tbaa !63, !alias.scope !618
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.cs, align 8, !tbaa !65, !alias.scope !618
  store i8 0, ptr %i.cr, align 8, !tbaa !66, !alias.scope !618
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cq, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41 unwind label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41: ; preds = %bb.s
  %i.ct = load ptr, ptr %7, align 8, !tbaa !67, !alias.scope !618
  %i.cu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ct, i64 noundef %i.cq, ptr noundef %i.cn, ptr noundef nonnull align 1 dereferenceable(33) %2) #23 ; 0 uses
  %i.cv = load i64, ptr %i.cs, align 8, !tbaa !65, !alias.scope !618
  %i.cw = add i64 %i.cv, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cw, i64 noundef 1)
          to label %_ZN4pbrt6detail9formatOneIRA33_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit unwind label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #26
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %7, align 8, !tbaa !67, !alias.scope !618 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cr
  br i1 %i.db, label %.body42, label %.body42.sink.split

_ZN4pbrt6detail9formatOneIRA33_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41
  %i.dc = load i64, ptr %i.cs, align 8, !tbaa !65 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !65
  %i.df = sub i64 4611686018427387903, %i.de
  %i.dg = icmp ult i64 %i.df, %i.dc
  br i1 %i.dg, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44

bb.v:                                             ; preds = %_ZN4pbrt6detail9formatOneIRA33_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #24
          to label %.noexc45 unwind label %bb.w

.noexc45:                                         ; preds = %bb.v
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44: ; preds = %_ZN4pbrt6detail9formatOneIRA33_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit
  %i.dh = load ptr, ptr %7, align 8, !tbaa !67
  %i.di = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.dh, i64 noundef %i.dc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47 unwind label %bb.w ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44
  %i.dj = load ptr, ptr %7, align 8, !tbaa !67    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.cr
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47
  %i.dl = load i64, ptr %i.cr, align 8, !tbaa !66
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.x

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44, %bb.v
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = load ptr, ptr %7, align 8, !tbaa !67    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.cr
  br i1 %i.dp, label %.body42, label %.body42.sink.split

.body42.sink.split:                               ; preds = %bb.w, %bb.u
  %.sink89 = phi ptr [ %i.da, %bb.u ], [ %i.do, %bb.w ]
  %.pn.ph = phi { ptr, i32 } [ %i.cz, %bb.u ], [ %i.dn, %bb.w ]
  %i.dq = load i64, ptr %i.cr, align 8, !tbaa !66
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %.sink89, i64 noundef %i.dr) #25
  br label %.body42

.body42:                                          ; preds = %.body42.sink.split, %bb.w, %bb.u
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.u ], [ %i.dn, %bb.w ], [ %.pn.ph, %.body42.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.z

.invoke:                                          ; preds = %bb.a, %bb.r, %bb.c
  %i.ds = phi i32 [ 257, %bb.c ], [ 266, %bb.r ], [ 229, %bb.a ]
  %i.dt = phi ptr [ @.str.20, %bb.c ], [ @.str.21, %bb.r ], [ @.str.19, %bb.a ]
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef %i.ds, ptr noundef nonnull %i.dt) #24
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.x:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !93
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull %0, ptr noundef %i.du)
          to label %bb.y unwind label %bb.b

bb.y:                                             ; preds = %bb.x
  %i.dv = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.y
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !66
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.z:                                             ; preds = %.body42, %bb.q, %bb.b
  %.pn24 = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.pn19.pn.pn.pn, %bb.q ], [ %.pn, %.body42 ]
  %i.ea = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.z
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !66
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn24
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_primitive.cpp() #20 section ".text.startup" {
bb.a:
  store <8 x float> <float f0x3F652546, float 2.664000e-01, float -1.614000e-01, float f0xBF400D1B, float 1.713500e+00, float 3.670000e-02, float 3.890000e-02, float -6.850000e-02>, ptr @_ZN4pbrtL10LMSFromXYZE, align 32, !tbaa !15
  store float 1.029600e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10LMSFromXYZE, i64 32), align 32, !tbaa !15
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10LMSFromXYZE) ; 0 uses
  store <8 x float> <float 9.869930e-01, float -1.470540e-01, float 1.599630e-01, float 4.323050e-01, float 5.183600e-01, float 4.929120e-02, float -8.528660e-03, float 4.004280e-02>, ptr @_ZN4pbrtL10XYZFromLMSE, align 32, !tbaa !15
  store float 9.684870e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10XYZFromLMSE, i64 32), align 32, !tbaa !15
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10XYZFromLMSE) ; 0 uses
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL24STATS_REGprimitiveMemoryE, ptr noundef nonnull @"_ZN4pbrt3$_08__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL29STATS_REGredundantBufferBytesE, ptr noundef nonnull @"_ZN4pbrt3$_18__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL25STATS_REGnBufferCacheHitsE, ptr noundef nonnull @"_ZN4pbrt3$_28__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x float> @llvm.masked.load.v5f32.p0(ptr captures(none), <5 x i1>, <5 x float>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fma.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{ptr @_ZNK4pbrt9Primitive9IntersectERKNS_3RayEf, null}
!1 = distinct !{ptr @_ZNK4pbrt9Primitive10IntersectPERKNS_3RayEf, null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_15SimplePrimitiveENS_18GeometricPrimitiveENS_20TransformedPrimitiveENS_17AnimatedPrimitiveENS_12BVHAggregateENS_15KdTreeAggregateEEEE", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"float", !7, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!"p1 _ZTSN4pbrt3RayE", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"p1 float", !16, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!11, !11, i64 0}
!22 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEEE", !11, i64 0}
!23 = !{!22, !11, i64 0}
!24 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_21CoatedDiffuseMaterialENS_23CoatedConductorMaterialENS_17ConductorMaterialENS_18DielectricMaterialENS_15DiffuseMaterialENS_27DiffuseTransmissionMaterialENS_12HairMaterialENS_16MeasuredMaterialENS_18SubsurfaceMaterialENS_22ThinDielectricMaterialENS_11MixMaterialEEEE", !11, i64 0}
!25 = !{!24, !11, i64 0}
!26 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEEE", !11, i64 0}
!27 = !{!26, !11, i64 0}
!28 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_17HomogeneousMediumENS_10GridMediumENS_13RGBGridMediumENS_11CloudMediumENS_13NanoVDBMediumEEEE", !11, i64 0}
!29 = !{!28, !11, i64 0}
!30 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_17FloatImageTextureENS_20GPUFloatImageTextureENS_15FloatMixTextureENS_24FloatDirectionMixTextureENS_18FloatScaledTextureENS_20FloatConstantTextureENS_18FloatBilerpTextureENS_24FloatCheckerboardTextureENS_16FloatDotsTextureENS_10FBmTextureENS_16FloatPtexTextureENS_19GPUFloatPtexTextureENS_12WindyTextureENS_15WrinkledTextureEEEE", !11, i64 0}
!31 = !{!30, !11, i64 0}
!32 = !{!"bool", !7, i64 0}
!33 = !{!"_ZTSN4pstd8optionalIN4pbrt17ShapeIntersectionEEE", !7, i64 0, !32, i64 256}
!34 = !{!33, !32, i64 256}
!35 = !{i8 0, i8 2}
!36 = !{}
!37 = !{!"_ZTSN4pbrt8IntervalE", !14, i64 0, !14, i64 4}
!38 = !{!"_ZTSN4pbrt6Tuple3INS_6Point3ENS_8IntervalEEE", !37, i64 0, !37, i64 8, !37, i64 16}
!39 = !{!"_ZTSN4pbrt6Point3INS_8IntervalEEE", !38, i64 0}
!40 = !{!"_ZTSN4pbrt8Point3fiE", !39, i64 0}
!41 = !{!"_ZTSN4pbrt6Tuple3INS_7Vector3EfEE", !14, i64 0, !14, i64 4, !14, i64 8}
!42 = !{!"_ZTSN4pbrt7Vector3IfEE", !41, i64 0}
!43 = !{!"_ZTSN4pbrt6Tuple3INS_7Normal3EfEE", !14, i64 0, !14, i64 4, !14, i64 8}
!44 = !{!"_ZTSN4pbrt7Normal3IfEE", !43, i64 0}
!45 = !{!"_ZTSN4pbrt6Tuple2INS_6Point2EfEE", !14, i64 0, !14, i64 4}
!46 = !{!"_ZTSN4pbrt6Point2IfEE", !45, i64 0}
!47 = !{!"p1 _ZTSN4pbrt15MediumInterfaceE", !16, i64 0}
!48 = !{!"_ZTSN4pbrt6MediumE", !28, i64 0}
!49 = !{!"_ZTSN4pbrt11InteractionE", !40, i64 0, !14, i64 24, !42, i64 28, !44, i64 40, !46, i64 52, !47, i64 64, !48, i64 72}
!50 = !{!"_ZTSN4pbrt18SurfaceInteractionUt_E", !44, i64 0, !42, i64 12, !42, i64 24, !44, i64 36, !44, i64 48}
!51 = !{!"_ZTSN4pbrt8MaterialE", !24, i64 0}
!52 = !{!"_ZTSN4pbrt5LightE", !26, i64 0}
!53 = !{!"_ZTSN4pbrt18SurfaceInteractionE", !49, i64 0, !42, i64 80, !42, i64 92, !44, i64 104, !44, i64 116, !50, i64 128, !8, i64 188, !51, i64 192, !52, i64 200, !42, i64 208, !42, i64 220, !14, i64 232, !14, i64 236, !14, i64 240, !14, i64 244}
!54 = !{!"_ZTSN4pbrt17ShapeIntersectionE", !53, i64 0, !14, i64 248}
!55 = !{!54, !14, i64 248}
!56 = !{!"double", !7, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{!"p1 _ZTSN4pbrt18TextureEvalContextE", !16, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!49, !14, i64 24}
!61 = !{!"p1 omnipotent char", !16, i64 0}
!62 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !61, i64 0}
!63 = !{!62, !61, i64 0}
!64 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !62, i64 0, !11, i64 8, !7, i64 16}
!65 = !{!64, !11, i64 8}
!66 = !{!7, !7, i64 0}
!67 = !{!64, !61, i64 0}
!68 = !{!"_ZTSN4pbrt9PrimitiveE", !12, i64 0}
!69 = !{!"p1 _ZTSN4pbrt9TransformE", !16, i64 0}
!70 = !{!"_ZTSN4pbrt20TransformedPrimitiveE", !68, i64 0, !69, i64 8}
!71 = !{!70, !69, i64 8}
!72 = !{!37, !14, i64 4}
!73 = !{!37, !14, i64 0}
!74 = !{!"_ZTSN4pbrt6Tuple3INS_6Point3EfEE", !14, i64 0, !14, i64 4, !14, i64 8}
!75 = !{!"_ZTSN4pbrt6Point3IfEE", !74, i64 0}
!76 = !{!"_ZTSN4pbrt3RayE", !75, i64 0, !42, i64 12, !14, i64 24, !48, i64 32}
!77 = !{!76, !14, i64 24}
!78 = !{!8, !8, i64 0}
!79 = !{i64 8}
!80 = !{i64 4}
!81 = !{!"_ZTSN4pstd8optionalIN4pbrt19QuadricIntersectionEEE", !7, i64 0, !32, i64 20}
!82 = !{!81, !32, i64 20}
!83 = !{!41, !14, i64 8}
!84 = !{!"_ZTSN4pbrt19QuadricIntersectionE", !14, i64 0, !75, i64 4, !14, i64 16}
!85 = !{!84, !14, i64 0}
!86 = !{!"_ZTSN4pbrt6SphereE", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !69, i64 24, !69, i64 32, !32, i64 40, !32, i64 41}
!87 = !{!86, !69, i64 32}
!88 = !{!86, !14, i64 0}
!89 = !{!84, !14, i64 16}
!90 = !{!43, !14, i64 0}
!91 = !{!43, !14, i64 4}
!92 = !{!43, !14, i64 8}
!93 = !{!61, !61, i64 0}
!94 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!95 = !{!"_ZTSSt6locale", !94, i64 0}
!96 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !61, i64 8, !61, i64 16, !61, i64 24, !61, i64 32, !61, i64 40, !61, i64 48, !95, i64 56}
!97 = !{!96, !61, i64 40}
!98 = !{!96, !61, i64 32}
!99 = !{!"vtable pointer", !6, i64 0}
!100 = !{!99, !99, i64 0}
!101 = !{!"_ZTSSi", !11, i64 8}
!102 = !{!101, !11, i64 8}
!103 = !{!"_ZTSN4pbrt8CylinderE", !69, i64 0, !69, i64 8, !32, i64 16, !32, i64 17, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32}
!104 = !{!103, !69, i64 8}
!105 = !{!103, !14, i64 24}
!106 = !{!103, !14, i64 28}
!107 = !{!103, !14, i64 32}
!108 = !{!"_ZTSN4pbrt4DiskE", !69, i64 0, !69, i64 8, !32, i64 16, !32, i64 17, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32}
!109 = !{!108, !69, i64 8}
!110 = !{!108, !14, i64 24}
!111 = !{!108, !14, i64 28}
!112 = !{!108, !14, i64 32}
!113 = distinct !{!113, i1 false, !"_ZNK4pbrt13TaggedPointerIJNS_15SimplePrimitiveENS_18GeometricPrimitiveENS_20TransformedPrimitiveENS_17AnimatedPrimitiveENS_12BVHAggregateENS_15KdTreeAggregateEEE11DispatchCPUIRZNKS_9Primitive6BoundsEvE3$_0EEDcOT_"}
!114 = distinct !{!114, !113, !"_ZNK4pbrt13TaggedPointerIJNS_15SimplePrimitiveENS_18GeometricPrimitiveENS_20TransformedPrimitiveENS_17AnimatedPrimitiveENS_12BVHAggregateENS_15KdTreeAggregateEEE11DispatchCPUIRZNKS_9Primitive6BoundsEvE3$_0EEDcOT_: argument 0"}
!115 = !{!114}
!116 = distinct !{!116, i1 false, !"_ZNK4pbrt13TaggedPointerIJNS_15SimplePrimitiveENS_18GeometricPrimitiveENS_20TransformedPrimitiveENS_17AnimatedPrimitiveENS_12BVHAggregateENS_15KdTreeAggregateEEE11DispatchCPUIRZNKS_9Primitive9IntersectERKNS_3RayEfE3$_0EEDcOT_"}
!117 = distinct !{!117, !116, !"_ZNK4pbrt13TaggedPointerIJNS_15SimplePrimitiveENS_18GeometricPrimitiveENS_20TransformedPrimitiveENS_17AnimatedPrimitiveENS_12BVHAggregateENS_15KdTreeAggregateEEE11DispatchCPUIRZNKS_9Primitive9IntersectERKNS_3RayEfE3$_0EEDcOT_: argument 0"}
!118 = distinct !{null}
!119 = !{!117}
!120 = distinct !{null}
!121 = distinct !{!121, i1 false, !"_ZNK4pbrt5Shape6BoundsEv"}
!122 = distinct !{!122, !121, !"_ZNK4pbrt5Shape6BoundsEv: argument 0"}
!123 = !{!122}
!124 = distinct !{!124, i1 false, !"_ZNK4pbrt5Shape9IntersectERKNS_3RayEf"}
!125 = distinct !{!125, !124, !"_ZNK4pbrt5Shape9IntersectERKNS_3RayEf: argument 0"}
!126 = distinct !{!126, i1 false, !"_ZNK4pbrt13TaggedPointerIJNS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEE8DispatchIRZNKS_5Shape9IntersectERKNS_3RayEfEUlT_E_EEDcOSD_"}
!127 = distinct !{!127, !126, !"_ZNK4pbrt13TaggedPointerIJNS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEE8DispatchIRZNKS_5Shape9IntersectERKNS_3RayEfEUlT_E_EEDcOSD_: argument 0"}
!128 = distinct !{null}
!129 = distinct !{!129, i1 false, !"_ZNK4pbrt11Interaction8SpawnRayENS_7Vector3IfEE"}
!130 = distinct !{!130, !129, !"_ZNK4pbrt11Interaction8SpawnRayENS_7Vector3IfEE: argument 0"}
!131 = distinct !{!131, i1 false, !"_ZNK4pbrt11Interaction9GetMediumENS_7Vector3IfEE"}
!132 = distinct !{!132, !131, !"_ZNK4pbrt11Interaction9GetMediumENS_7Vector3IfEE: argument 0"}
!133 = !{!125}
!134 = !{!127, !125}
!135 = !{!53, !8, i64 188}
!136 = !{!130}
!137 = !{!49, !47, i64 64}
!138 = !{!132, !130}
!139 = distinct !{!139, i1 false, !"_ZN4pbrt12StringPrintfIJRA9_KcRA13_S1_S3_RfS5_RdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_"}
!140 = distinct !{!140, !139, !"_ZN4pbrt12StringPrintfIJRA9_KcRA13_S1_S3_RfS5_RdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_: argument 0"}
!141 = !{!140}
!142 = distinct !{!142, i1 false, !"_ZNK4pbrt5Shape6BoundsEv"}
!143 = distinct !{!143, !142, !"_ZNK4pbrt5Shape6BoundsEv: argument 0"}
!144 = !{!143}
!145 = distinct !{!145, i1 false, !"_ZNK4pbrt5Shape9IntersectERKNS_3RayEf"}
!146 = distinct !{!146, !145, !"_ZNK4pbrt5Shape9IntersectERKNS_3RayEf: argument 0"}
!147 = distinct !{!147, i1 false, !"_ZNK4pbrt13TaggedPointerIJNS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEE8DispatchIRZNKS_5Shape9IntersectERKNS_3RayEfEUlT_E_EEDcOSD_"}
!148 = distinct !{!148, !147, !"_ZNK4pbrt13TaggedPointerIJNS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEE8DispatchIRZNKS_5Shape9IntersectERKNS_3RayEfEUlT_E_EEDcOSD_: argument 0"}
!149 = !{!146}
!150 = !{!148, !146}
!151 = distinct !{!151, i1 false, !"_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf"}
!152 = distinct !{!152, !151, !"_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf: argument 0"}
!153 = distinct !{!153, i1 false, !"_ZNK4pbrt9Primitive9IntersectERKNS_3RayEf"}
!154 = distinct !{!154, !153, !"_ZNK4pbrt9Primitive9IntersectERKNS_3RayEf: argument 0"}
!155 = distinct !{!155, i1 false, !"_ZNK4pbrt13TaggedPointerIJNS_15SimplePrimitiveENS_18GeometricPrimitiveENS_20TransformedPrimitiveENS_17AnimatedPrimitiveENS_12BVHAggregateENS_15KdTreeAggregateEEE11DispatchCPUIRZNKS_9Primitive9IntersectERKNS_3RayEfE3$_0EEDcOT_"}
!156 = distinct !{!156, !155, !"_ZNK4pbrt13TaggedPointerIJNS_15SimplePrimitiveENS_18GeometricPrimitiveENS_20TransformedPrimitiveENS_17AnimatedPrimitiveENS_12BVHAggregateENS_15KdTreeAggregateEEE11DispatchCPUIRZNKS_9Primitive9IntersectERKNS_3RayEfE3$_0EEDcOT_: argument 0"}
!157 = !{!152}
!158 = !{!154}
!159 = !{!156, !154}
!160 = distinct !{!160, i1 false, !"_ZN4pbrt12StringPrintfIJRA36_KcRA2_S1_S3_RfS5_RiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_"}
!161 = distinct !{!161, !160, !"_ZN4pbrt12StringPrintfIJRA36_KcRA2_S1_S3_RfS5_RiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_: argument 0"}
!162 = !{!161}
!163 = distinct !{!163, i1 false, !"_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf"}
!164 = distinct !{!164, !163, !"_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf: argument 0"}
end_hunk_1
