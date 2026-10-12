Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/primitive?download=true
inline.NumInlined: 1903
inline.NumDeleted: 442
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK4pbrt13TaggedPointerIJNS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEE8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_EEDcOSA_:bb.a
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !23     ; 2 uses
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
define linkonce_odr dso_local void @_ZN4pbrt6detail8DispatchIRZNKS_5Shape9IntersectERKNS_3RayEfEUlT_E_N4pstd8optionalINS_17ShapeIntersectionEEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS6_PKvi(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !228, !noalias !36, !nonnull !36, !align !79 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !229, !noalias !36, !nonnull !36, !align !80
  %i.d = load float, ptr %i.c, align 4, !tbaa !15, !noalias !36 ; 6 uses
  switch i32 %3, label %bb.g [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt6Sphere9IntersectERKNS_3RayEf(ptr dead_on_unwind writable sret(%"class.pstd::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(42) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.a, float noundef %i.d)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt8Cylinder9IntersectERKNS_3RayEf(ptr dead_on_unwind writable sret(%"class.pstd::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.a, float noundef %i.d)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt4Disk9IntersectERKNS_3RayEf(ptr dead_on_unwind writable sret(%"class.pstd::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.a, float noundef %i.d)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt8Triangle9IntersectERKNS_3RayEf(ptr dead_on_unwind writable sret(%"class.pstd::optional") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.a, float noundef %i.d)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt13BilinearPatch9IntersectERKNS_3RayEf(ptr dead_on_unwind writable sret(%"class.pstd::optional") align 8 %0, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.a, float noundef %i.d)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt5Curve9IntersectERKNS_3RayEf(ptr dead_on_unwind writable sret(%"class.pstd::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.a, float noundef %i.d)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt6Sphere9IntersectERKNS_3RayEf(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(42) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, float noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pstd::optional.27", align 4 ; 6 uses
  %5 = alloca %"class.pbrt::SurfaceInteraction", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZNK4pbrt6Sphere14BasicIntersectERKNS_3RayEf(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.27") align 4 %4, ptr noundef nonnull align 8 dereferenceable(42) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, float noundef %3)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !82, !range !35, !noundef !36
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %0, i8 0, i64 264, i1 false)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.e = load <2 x float>, ptr %i.d, align 4, !tbaa !15
  %i.f = fneg <2 x float> %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = load float, ptr %i.g, align 4, !tbaa !83
  %i.i = fneg float %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load float, ptr %i.j, align 8, !tbaa !77
  call void @_ZNK4pbrt6Sphere27InteractionFromIntersectionERKNS_19QuadricIntersectionENS_7Vector3IfEEf(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::SurfaceInteraction") align 8 %5, ptr noundef nonnull align 8 dereferenceable(42) %1, ptr noundef nonnull align 4 dereferenceable(20) %4, <2 x float> %i.f, float %i.i, float noundef %i.k)
  %i.l = load i8, ptr %i.a, align 4, !tbaa !82, !range !35, !noundef !36
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %.noexc12

.noexc12:                                         ; preds = %bb.c
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.16, i32 noundef 235, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(4) @.str.17) #24
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 192
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.r = load i64, ptr %i.q, align 8, !tbaa !29
  %i.s = load float, ptr %4, align 4, !tbaa !85
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i8 1, ptr %i.t, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %5, i64 72, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.r, ptr %i.u, align 8, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.v, ptr noundef nonnull align 8 dereferenceable(112) %i.p, i64 112, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.x = load <2 x i64>, ptr %i.o, align 8, !tbaa !21
  store <2 x i64> %i.x, ptr %i.w, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 248
  store float %i.s, ptr %i.z, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt6Sphere14BasicIntersectERKNS_3RayEf(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional.27") align 4 %0, ptr noundef nonnull align 8 dereferenceable(42) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, float noundef %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %4 = alloca %"class.pbrt::Vector3.30", align 8  ; 6 uses
  %5 = alloca %"class.pbrt::Interval", align 8    ; 6 uses
  %6 = alloca %"class.pbrt::Point3fi", align 16   ; 12 uses
  %7 = alloca %"class.pbrt::Point3fi", align 8    ; 6 uses
  %8 = alloca %"class.pbrt::Vector3fi", align 16  ; 11 uses
  %9 = alloca %"class.pbrt::Vector3fi", align 8   ; 6 uses
  %10 = alloca %"class.pbrt::Interval", align 8   ; 6 uses
  %11 = alloca %"class.pbrt::Interval", align 8   ; 4 uses
  %12 = alloca %"class.pbrt::Interval", align 8   ; 4 uses
  %13 = alloca %"class.pbrt::Interval", align 8   ; 4 uses
  %14 = alloca %"class.pbrt::Interval", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.c = load <1 x float>, ptr %2, align 8
  %.sroa.07.4.vec.insert.i = shufflevector <1 x float> %i.c, <1 x float> poison, <2 x i32> zeroinitializer
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load <1 x float>, ptr %i.d, align 4
  %.sroa.05.4.vec.insert.i = shufflevector <1 x float> %i.e, <1 x float> poison, <2 x i32> zeroinitializer
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load <1 x float>, ptr %i.f, align 8
  %.sroa.0.4.vec.insert.i = shufflevector <1 x float> %i.g, <1 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.07.4.vec.insert.i, ptr %7, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.05.4.vec.insert.i, ptr %i.h, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.i, align 8, !tbaa !15
  call void @_ZNK4pbrt9TransformclERKNS_8Point3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Point3fi") align 4 %6, ptr noundef nonnull align 4 dereferenceable(128) %i.b, ptr noundef nonnull align 4 dereferenceable(24) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.095.0.copyload = load <2 x float>, ptr %i.k, align 4 ; 2 uses
  %.sroa.296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.296.0.copyload = load float, ptr %.sroa.296.0..sroa_idx, align 4
  %.sroa.05.4.vec.insert.i127 = shufflevector <2 x float> %.sroa.095.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.03.4.vec.insert.i = shufflevector <2 x float> %.sroa.095.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %.sroa.0.0.vec.insert.i128 = insertelement <2 x float> poison, float %.sroa.296.0.copyload, i64 0
  %.sroa.0.4.vec.insert.i129 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i128, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.05.4.vec.insert.i127, ptr %9, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 8
  store <2 x float> %.sroa.03.4.vec.insert.i, ptr %i.l, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i129, ptr %i.m, align 8, !tbaa !15
  call void @_ZNK4pbrt9TransformclERKNS_9Vector3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Vector3fi") align 4 %8, ptr noundef nonnull align 4 dereferenceable(128) %i.j, ptr noundef nonnull align 4 dereferenceable(24) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %.sroa.089.0.copyload = load <2 x float>, ptr %8, align 16, !tbaa !15 ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.089.0.copyload, i64 0 ; 2 uses
  %i.n = call noundef float @llvm.fabs.f32(float %.sroa.0.0.vec.extract.i) ; 3 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.089.0.copyload, i64 1 ; 2 uses
  %i.o = call noundef float @llvm.fabs.f32(float %.sroa.0.4.vec.extract.i) ; 3 uses
  %i.p = fcmp ogt float %i.n, %i.o                ; 2 uses
  %spec.select26.i = select i1 %i.p, float %i.n, float %i.o ; 4 uses
  %i.q = fcmp ole float %.sroa.0.0.vec.extract.i, 0.000000e+00
  %i.r = fcmp oge float %.sroa.0.4.vec.extract.i, 0.000000e+00
  %i.s = select i1 %i.q, i1 %i.r, i1 false
  br i1 %i.s, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.t = fmul float %spec.select26.i, %spec.select26.i ; 3 uses
  %or.cond.i.i.i = fcmp oeq float %i.t, +inf
  br i1 %or.cond.i.i.i, label %_ZN4pbrt10MulRoundUpEff.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = fcmp oeq float %i.t, 0.000000e+00
  %i.v = bitcast float %i.t to i32
  %i.w = add nuw i32 %i.v, 1
  %i.x = bitcast i32 %i.w to float
  %i.y = select i1 %i.u, float 1.401300e-45, float %i.x
  br label %_ZN4pbrt10MulRoundUpEff.exit.i

_ZN4pbrt10MulRoundUpEff.exit.i:                   ; preds = %bb.c, %bb.b
  %.010.i.i.i = phi float [ %i.y, %bb.c ], [ +inf, %bb.b ] ; 4 uses
  %i.z = fcmp olt float %.010.i.i.i, 0.000000e+00
  %.sroa.speculated5.i.i = select i1 %i.z, float %.010.i.i.i, float 0.000000e+00
  %.sroa.019.0.vec.insert.i = insertelement <2 x float> poison, float %.sroa.speculated5.i.i, i64 0
  %i.aa = fcmp ogt float %.010.i.i.i, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.aa, float %.010.i.i.i, float 0.000000e+00
  %.sroa.019.4.vec.insert.i = insertelement <2 x float> %.sroa.019.0.vec.insert.i, float %.sroa.speculated.i.i, i64 1
  br label %_ZN4pbrt3SqrENS_8IntervalE.exit

bb.d:                                             ; preds = %bb.a
  %spec.select.i = select i1 %i.p, float %i.o, float %i.n ; 2 uses
  %i.ab = fmul float %spec.select.i, %spec.select.i ; 2 uses
  %i.ac = fcmp oeq float %i.ab, 0.000000e+00
  %spec.store.select.i.i2.i = select i1 %i.ac, float -0.000000e+00, float %i.ab ; 2 uses
  %i.ad = bitcast float %spec.store.select.i.i2.i to i32
  %i.ae = fcmp ogt float %spec.store.select.i.i2.i, 0.000000e+00
  %.0.v.i.i3.i = select i1 %i.ae, i32 -1, i32 1
  %.0.i.i4.i = add i32 %.0.v.i.i3.i, %i.ad
  %i.af = bitcast i32 %.0.i.i4.i to float         ; 4 uses
  %i.ag = fmul float %spec.select26.i, %spec.select26.i ; 3 uses
  %or.cond.i.i5.i = fcmp oeq float %i.ag, +inf
  br i1 %or.cond.i.i5.i, label %_ZN4pbrt10MulRoundUpEff.exit10.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = fcmp oeq float %i.ag, 0.000000e+00
  %spec.store.select.i.i6.i = select i1 %i.ah, float 0.000000e+00, float %i.ag ; 2 uses
  %i.ai = bitcast float %spec.store.select.i.i6.i to i32
  %i.aj = fcmp ult float %spec.store.select.i.i6.i, 0.000000e+00
  %.0.v.i.i7.i = select i1 %i.aj, i32 -1, i32 1
  %.0.i.i8.i = add i32 %.0.v.i.i7.i, %i.ai
  %i.ak = bitcast i32 %.0.i.i8.i to float
  br label %_ZN4pbrt10MulRoundUpEff.exit10.i

_ZN4pbrt10MulRoundUpEff.exit10.i:                 ; preds = %bb.e, %bb.d
  %.010.i.i9.i = phi float [ %i.ak, %bb.e ], [ +inf, %bb.d ] ; 4 uses
  %i.al = fcmp olt float %.010.i.i9.i, %i.af
  %.sroa.speculated5.i11.i = select i1 %i.al, float %.010.i.i9.i, float %i.af
  %.sroa.019.0.vec.insert22.i = insertelement <2 x float> poison, float %.sroa.speculated5.i11.i, i64 0
  %i.am = fcmp ogt float %.010.i.i9.i, %i.af
  %.sroa.speculated.i12.i = select i1 %i.am, float %.010.i.i9.i, float %i.af
  %.sroa.019.4.vec.insert24.i = insertelement <2 x float> %.sroa.019.0.vec.insert22.i, float %.sroa.speculated.i12.i, i64 1
  br label %_ZN4pbrt3SqrENS_8IntervalE.exit

_ZN4pbrt3SqrENS_8IntervalE.exit:                  ; preds = %_ZN4pbrt10MulRoundUpEff.exit.i, %_ZN4pbrt10MulRoundUpEff.exit10.i
  %.sroa.019.0.i = phi <2 x float> [ %.sroa.019.4.vec.insert.i, %_ZN4pbrt10MulRoundUpEff.exit.i ], [ %.sroa.019.4.vec.insert24.i, %_ZN4pbrt10MulRoundUpEff.exit10.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %.sroa.087.0.copyload = load <2 x float>, ptr %i.an, align 8, !tbaa !15 ; 2 uses
  %.sroa.0.0.vec.extract.i130 = extractelement <2 x float> %.sroa.087.0.copyload, i64 0 ; 2 uses
  %i.ao = call noundef float @llvm.fabs.f32(float %.sroa.0.0.vec.extract.i130) ; 3 uses
  %.sroa.0.4.vec.extract.i131 = extractelement <2 x float> %.sroa.087.0.copyload, i64 1 ; 2 uses
  %i.ap = call noundef float @llvm.fabs.f32(float %.sroa.0.4.vec.extract.i131) ; 3 uses
  %i.aq = fcmp ogt float %i.ao, %i.ap             ; 2 uses
  %spec.select26.i132 = select i1 %i.aq, float %i.ao, float %i.ap ; 4 uses
  %i.ar = fcmp ole float %.sroa.0.0.vec.extract.i130, 0.000000e+00
  %i.as = fcmp oge float %.sroa.0.4.vec.extract.i131, 0.000000e+00
  %i.at = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %i.at, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN4pbrt3SqrENS_8IntervalE.exit
  %i.au = fmul float %spec.select26.i132, %spec.select26.i132 ; 3 uses
  %or.cond.i.i.i148 = fcmp oeq float %i.au, +inf
  br i1 %or.cond.i.i.i148, label %_ZN4pbrt10MulRoundUpEff.exit.i149, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = fcmp oeq float %i.au, 0.000000e+00
  %i.aw = bitcast float %i.au to i32
  %i.ax = add nuw i32 %i.aw, 1
  %i.ay = bitcast i32 %i.ax to float
  %i.az = select i1 %i.av, float 1.401300e-45, float %i.ay
  br label %_ZN4pbrt10MulRoundUpEff.exit.i149

_ZN4pbrt10MulRoundUpEff.exit.i149:                ; preds = %bb.g, %bb.f
  %.010.i.i.i150 = phi float [ %i.az, %bb.g ], [ +inf, %bb.f ] ; 4 uses
  %i.ba = fcmp olt float %.010.i.i.i150, 0.000000e+00
  %.sroa.speculated5.i.i151 = select i1 %i.ba, float %.010.i.i.i150, float 0.000000e+00
  %.sroa.019.0.vec.insert.i152 = insertelement <2 x float> poison, float %.sroa.speculated5.i.i151, i64 0
  %i.bb = fcmp ogt float %.010.i.i.i150, 0.000000e+00
  %.sroa.speculated.i.i153 = select i1 %i.bb, float %.010.i.i.i150, float 0.000000e+00
  %.sroa.019.4.vec.insert.i154 = insertelement <2 x float> %.sroa.019.0.vec.insert.i152, float %.sroa.speculated.i.i153, i64 1
  br label %_ZN4pbrt3SqrENS_8IntervalE.exit155

bb.h:                                             ; preds = %_ZN4pbrt3SqrENS_8IntervalE.exit
  %spec.select.i133 = select i1 %i.aq, float %i.ap, float %i.ao ; 2 uses
  %i.bc = fmul float %spec.select.i133, %spec.select.i133 ; 2 uses
  %i.bd = fcmp oeq float %i.bc, 0.000000e+00
  %spec.store.select.i.i2.i134 = select i1 %i.bd, float -0.000000e+00, float %i.bc ; 2 uses
  %i.be = bitcast float %spec.store.select.i.i2.i134 to i32
  %i.bf = fcmp ogt float %spec.store.select.i.i2.i134, 0.000000e+00
  %.0.v.i.i3.i135 = select i1 %i.bf, i32 -1, i32 1
  %.0.i.i4.i136 = add i32 %.0.v.i.i3.i135, %i.be
  %i.bg = bitcast i32 %.0.i.i4.i136 to float      ; 4 uses
  %i.bh = fmul float %spec.select26.i132, %spec.select26.i132 ; 3 uses
  %or.cond.i.i5.i137 = fcmp oeq float %i.bh, +inf
  br i1 %or.cond.i.i5.i137, label %_ZN4pbrt10MulRoundUpEff.exit10.i141, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = fcmp oeq float %i.bh, 0.000000e+00
  %spec.store.select.i.i6.i138 = select i1 %i.bi, float 0.000000e+00, float %i.bh ; 2 uses
  %i.bj = bitcast float %spec.store.select.i.i6.i138 to i32
  %i.bk = fcmp ult float %spec.store.select.i.i6.i138, 0.000000e+00
  %.0.v.i.i7.i139 = select i1 %i.bk, i32 -1, i32 1
  %.0.i.i8.i140 = add i32 %.0.v.i.i7.i139, %i.bj
  %i.bl = bitcast i32 %.0.i.i8.i140 to float
  br label %_ZN4pbrt10MulRoundUpEff.exit10.i141

_ZN4pbrt10MulRoundUpEff.exit10.i141:              ; preds = %bb.i, %bb.h
  %.010.i.i9.i142 = phi float [ %i.bl, %bb.i ], [ +inf, %bb.h ] ; 4 uses
  %i.bm = fcmp olt float %.010.i.i9.i142, %i.bg
  %.sroa.speculated5.i11.i143 = select i1 %i.bm, float %.010.i.i9.i142, float %i.bg
  %.sroa.019.0.vec.insert22.i144 = insertelement <2 x float> poison, float %.sroa.speculated5.i11.i143, i64 0
  %i.bn = fcmp ogt float %.010.i.i9.i142, %i.bg
  %.sroa.speculated.i12.i145 = select i1 %i.bn, float %.010.i.i9.i142, float %i.bg
  %.sroa.019.4.vec.insert24.i146 = insertelement <2 x float> %.sroa.019.0.vec.insert22.i144, float %.sroa.speculated.i12.i145, i64 1
  br label %_ZN4pbrt3SqrENS_8IntervalE.exit155

_ZN4pbrt3SqrENS_8IntervalE.exit155:               ; preds = %_ZN4pbrt10MulRoundUpEff.exit.i149, %_ZN4pbrt10MulRoundUpEff.exit10.i141
  %.sroa.019.0.i147 = phi <2 x float> [ %.sroa.019.4.vec.insert.i154, %_ZN4pbrt10MulRoundUpEff.exit.i149 ], [ %.sroa.019.4.vec.insert24.i146, %_ZN4pbrt10MulRoundUpEff.exit10.i141 ] ; 2 uses
  %foldExtExtBinop = fadd <2 x float> %.sroa.019.0.i, %.sroa.019.0.i147
  %i.bo = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %or.cond.i.i.i157 = fcmp oeq float %i.bo, -inf
  br i1 %or.cond.i.i.i157, label %_ZN4pbrt12AddRoundDownEff.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN4pbrt3SqrENS_8IntervalE.exit155
  %i.bp = fcmp oeq float %i.bo, 0.000000e+00
  %spec.store.select.i.i.i = select i1 %i.bp, float -0.000000e+00, float %i.bo ; 2 uses
  %i.bq = bitcast float %spec.store.select.i.i.i to i32
  %i.br = fcmp ogt float %spec.store.select.i.i.i, 0.000000e+00
  %.0.v.i.i.i = select i1 %i.br, i32 -1, i32 1
  %.0.i.i.i = add i32 %.0.v.i.i.i, %i.bq
  %i.bs = bitcast i32 %.0.i.i.i to float
  br label %_ZN4pbrt12AddRoundDownEff.exit.i

_ZN4pbrt12AddRoundDownEff.exit.i:                 ; preds = %bb.j, %_ZN4pbrt3SqrENS_8IntervalE.exit155
  %.09.i.i.i = phi float [ %i.bs, %bb.j ], [ -inf, %_ZN4pbrt3SqrENS_8IntervalE.exit155 ] ; 4 uses
  %foldExtExtBinop801 = fadd <2 x float> %.sroa.019.0.i, %.sroa.019.0.i147
  %i.bt = extractelement <2 x float> %foldExtExtBinop801, i64 1 ; 3 uses
  %or.cond.i.i1.i = fcmp oeq float %i.bt, +inf
  br i1 %or.cond.i.i1.i, label %_ZNK4pbrt8IntervalplES0_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4pbrt12AddRoundDownEff.exit.i
  %i.bu = fcmp oeq float %i.bt, 0.000000e+00
  %spec.store.select.i.i2.i159 = select i1 %i.bu, float 0.000000e+00, float %i.bt ; 2 uses
  %i.bv = bitcast float %spec.store.select.i.i2.i159 to i32
  %i.bw = fcmp ult float %spec.store.select.i.i2.i159, 0.000000e+00
  %.0.v.i.i3.i160 = select i1 %i.bw, i32 -1, i32 1
  %.0.i.i4.i161 = add i32 %.0.v.i.i3.i160, %i.bv
  %i.bx = bitcast i32 %.0.i.i4.i161 to float
  br label %_ZNK4pbrt8IntervalplES0_.exit

_ZNK4pbrt8IntervalplES0_.exit:                    ; preds = %_ZN4pbrt12AddRoundDownEff.exit.i, %bb.k
  %.010.i.i.i162 = phi float [ %i.bx, %bb.k ], [ +inf, %_ZN4pbrt12AddRoundDownEff.exit.i ] ; 4 uses
  %i.by = fcmp olt float %.010.i.i.i162, %.09.i.i.i
  %.sroa.speculated5.i.i163 = select i1 %i.by, float %.010.i.i.i162, float %.09.i.i.i
  %i.bz = fcmp olt float %.09.i.i.i, %.010.i.i.i162
  %.sroa.speculated.i.i165 = select i1 %i.bz, float %.010.i.i.i162, float %.09.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %.sroa.085.0.copyload = load <2 x float>, ptr %i.ca, align 16, !tbaa !15 ; 2 uses
  %.sroa.0.0.vec.extract.i167 = extractelement <2 x float> %.sroa.085.0.copyload, i64 0 ; 2 uses
  %i.cb = call noundef float @llvm.fabs.f32(float %.sroa.0.0.vec.extract.i167) ; 3 uses
  %.sroa.0.4.vec.extract.i168 = extractelement <2 x float> %.sroa.085.0.copyload, i64 1 ; 2 uses
  %i.cc = call noundef float @llvm.fabs.f32(float %.sroa.0.4.vec.extract.i168) ; 3 uses
  %i.cd = fcmp ogt float %i.cb, %i.cc             ; 2 uses
  %spec.select26.i169 = select i1 %i.cd, float %i.cb, float %i.cc ; 4 uses
  %i.ce = fcmp ole float %.sroa.0.0.vec.extract.i167, 0.000000e+00
  %i.cf = fcmp oge float %.sroa.0.4.vec.extract.i168, 0.000000e+00
  %i.cg = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %i.cg, label %bb.l, label %bb.n
end_hunk_0
begin_hunk_1_@_ZN4pbrt6detail21stringPrintfRecursiveIRA4_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_:bb.a
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

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

declare void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #16 align 2

declare void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #18

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #12

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt8Cylinder9IntersectERKNS_3RayEf(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, float noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pstd::optional.27", align 4 ; 6 uses
  %5 = alloca %"class.pbrt::SurfaceInteraction", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZNK4pbrt8Cylinder14BasicIntersectERKNS_3RayEf(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.27") align 4 %4, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, float noundef %3)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !82, !range !35, !noundef !36
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %0, i8 0, i64 264, i1 false)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.e = load <2 x float>, ptr %i.d, align 4, !tbaa !15
  %i.f = fneg <2 x float> %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = load float, ptr %i.g, align 4, !tbaa !83
  %i.i = fneg float %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load float, ptr %i.j, align 8, !tbaa !77
  call void @_ZNK4pbrt8Cylinder27InteractionFromIntersectionERKNS_19QuadricIntersectionENS_7Vector3IfEEf(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::SurfaceInteraction") align 8 %5, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(20) %4, <2 x float> %i.f, float %i.i, float noundef %i.k)
  %i.l = load i8, ptr %i.a, align 4, !tbaa !82, !range !35, !noundef !36
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %.noexc12

.noexc12:                                         ; preds = %bb.c
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.16, i32 noundef 235, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(4) @.str.17) #24
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 192
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.r = load i64, ptr %i.q, align 8, !tbaa !29
  %i.s = load float, ptr %4, align 4, !tbaa !85
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i8 1, ptr %i.t, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %5, i64 72, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.r, ptr %i.u, align 8, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.v, ptr noundef nonnull align 8 dereferenceable(112) %i.p, i64 112, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.x = load <2 x i64>, ptr %i.o, align 8, !tbaa !21
  store <2 x i64> %i.x, ptr %i.w, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 248
  store float %i.s, ptr %i.z, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt8Cylinder14BasicIntersectERKNS_3RayEf(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional.27") align 4 %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, float noundef %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %4 = alloca %"class.pbrt::Point3fi", align 16   ; 12 uses
  %5 = alloca %"class.pbrt::Point3fi", align 8    ; 6 uses
  %6 = alloca %"class.pbrt::Vector3fi", align 16  ; 11 uses
  %7 = alloca %"class.pbrt::Vector3fi", align 8   ; 6 uses
  %8 = alloca %"class.pbrt::Interval", align 8    ; 6 uses
  %9 = alloca %"class.pbrt::Interval", align 8    ; 4 uses
  %10 = alloca %"class.pbrt::Interval", align 8   ; 5 uses
  %11 = alloca %"class.pbrt::Interval", align 8   ; 4 uses
  %12 = alloca %"class.pbrt::Interval", align 8   ; 4 uses
  %13 = alloca %"class.pbrt::Interval", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.c = load <1 x float>, ptr %2, align 8
  %.sroa.07.4.vec.insert.i = shufflevector <1 x float> %i.c, <1 x float> poison, <2 x i32> zeroinitializer
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load <1 x float>, ptr %i.d, align 4
  %.sroa.05.4.vec.insert.i = shufflevector <1 x float> %i.e, <1 x float> poison, <2 x i32> zeroinitializer
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load <1 x float>, ptr %i.f, align 8
  %.sroa.0.4.vec.insert.i = shufflevector <1 x float> %i.g, <1 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.07.4.vec.insert.i, ptr %5, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.05.4.vec.insert.i, ptr %i.h, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.i, align 8, !tbaa !15
  call void @_ZNK4pbrt9TransformclERKNS_8Point3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Point3fi") align 4 %4, ptr noundef nonnull align 4 dereferenceable(128) %i.b, ptr noundef nonnull align 4 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.084.0.copyload = load <2 x float>, ptr %i.k, align 4 ; 2 uses
  %.sroa.285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.285.0.copyload = load float, ptr %.sroa.285.0..sroa_idx, align 4
  %.sroa.05.4.vec.insert.i108 = shufflevector <2 x float> %.sroa.084.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.03.4.vec.insert.i = shufflevector <2 x float> %.sroa.084.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %.sroa.0.0.vec.insert.i109 = insertelement <2 x float> poison, float %.sroa.285.0.copyload, i64 0
  %.sroa.0.4.vec.insert.i110 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i109, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.05.4.vec.insert.i108, ptr %7, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.03.4.vec.insert.i, ptr %i.l, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i110, ptr %i.m, align 8, !tbaa !15
  call void @_ZNK4pbrt9TransformclERKNS_9Vector3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Vector3fi") align 4 %6, ptr noundef nonnull align 4 dereferenceable(128) %i.j, ptr noundef nonnull align 4 dereferenceable(24) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %.sroa.078.0.copyload = load <2 x float>, ptr %6, align 16, !tbaa !15 ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.078.0.copyload, i64 0 ; 2 uses
  %i.n = call noundef float @llvm.fabs.f32(float %.sroa.0.0.vec.extract.i) ; 3 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.078.0.copyload, i64 1 ; 2 uses
  %i.o = call noundef float @llvm.fabs.f32(float %.sroa.0.4.vec.extract.i) ; 3 uses
  %i.p = fcmp ogt float %i.n, %i.o                ; 2 uses
  %spec.select26.i = select i1 %i.p, float %i.n, float %i.o ; 4 uses
  %i.q = fcmp ole float %.sroa.0.0.vec.extract.i, 0.000000e+00
  %i.r = fcmp oge float %.sroa.0.4.vec.extract.i, 0.000000e+00
  %i.s = select i1 %i.q, i1 %i.r, i1 false
  br i1 %i.s, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.t = fmul float %spec.select26.i, %spec.select26.i ; 3 uses
  %or.cond.i.i.i = fcmp oeq float %i.t, +inf
  br i1 %or.cond.i.i.i, label %_ZN4pbrt10MulRoundUpEff.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = fcmp oeq float %i.t, 0.000000e+00
  %i.v = bitcast float %i.t to i32
  %i.w = add nuw i32 %i.v, 1
  %i.x = bitcast i32 %i.w to float
  %i.y = select i1 %i.u, float 1.401300e-45, float %i.x
  br label %_ZN4pbrt10MulRoundUpEff.exit.i

_ZN4pbrt10MulRoundUpEff.exit.i:                   ; preds = %bb.c, %bb.b
  %.010.i.i.i = phi float [ %i.y, %bb.c ], [ +inf, %bb.b ] ; 4 uses
  %i.z = fcmp olt float %.010.i.i.i, 0.000000e+00
  %.sroa.speculated5.i.i = select i1 %i.z, float %.010.i.i.i, float 0.000000e+00
  %.sroa.019.0.vec.insert.i = insertelement <2 x float> poison, float %.sroa.speculated5.i.i, i64 0
  %i.aa = fcmp ogt float %.010.i.i.i, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.aa, float %.010.i.i.i, float 0.000000e+00
  %.sroa.019.4.vec.insert.i = insertelement <2 x float> %.sroa.019.0.vec.insert.i, float %.sroa.speculated.i.i, i64 1
  br label %_ZN4pbrt3SqrENS_8IntervalE.exit

bb.d:                                             ; preds = %bb.a
  %spec.select.i = select i1 %i.p, float %i.o, float %i.n ; 2 uses
  %i.ab = fmul float %spec.select.i, %spec.select.i ; 2 uses
  %i.ac = fcmp oeq float %i.ab, 0.000000e+00
  %spec.store.select.i.i2.i = select i1 %i.ac, float -0.000000e+00, float %i.ab ; 2 uses
  %i.ad = bitcast float %spec.store.select.i.i2.i to i32
  %i.ae = fcmp ogt float %spec.store.select.i.i2.i, 0.000000e+00
  %.0.v.i.i3.i = select i1 %i.ae, i32 -1, i32 1
  %.0.i.i4.i = add i32 %.0.v.i.i3.i, %i.ad
  %i.af = bitcast i32 %.0.i.i4.i to float         ; 4 uses
  %i.ag = fmul float %spec.select26.i, %spec.select26.i ; 3 uses
  %or.cond.i.i5.i = fcmp oeq float %i.ag, +inf
  br i1 %or.cond.i.i5.i, label %_ZN4pbrt10MulRoundUpEff.exit10.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = fcmp oeq float %i.ag, 0.000000e+00
  %spec.store.select.i.i6.i = select i1 %i.ah, float 0.000000e+00, float %i.ag ; 2 uses
  %i.ai = bitcast float %spec.store.select.i.i6.i to i32
  %i.aj = fcmp ult float %spec.store.select.i.i6.i, 0.000000e+00
  %.0.v.i.i7.i = select i1 %i.aj, i32 -1, i32 1
  %.0.i.i8.i = add i32 %.0.v.i.i7.i, %i.ai
  %i.ak = bitcast i32 %.0.i.i8.i to float
  br label %_ZN4pbrt10MulRoundUpEff.exit10.i

_ZN4pbrt10MulRoundUpEff.exit10.i:                 ; preds = %bb.e, %bb.d
  %.010.i.i9.i = phi float [ %i.ak, %bb.e ], [ +inf, %bb.d ] ; 4 uses
  %i.al = fcmp olt float %.010.i.i9.i, %i.af
  %.sroa.speculated5.i11.i = select i1 %i.al, float %.010.i.i9.i, float %i.af
  %.sroa.019.0.vec.insert22.i = insertelement <2 x float> poison, float %.sroa.speculated5.i11.i, i64 0
  %i.am = fcmp ogt float %.010.i.i9.i, %i.af
  %.sroa.speculated.i12.i = select i1 %i.am, float %.010.i.i9.i, float %i.af
  %.sroa.019.4.vec.insert24.i = insertelement <2 x float> %.sroa.019.0.vec.insert22.i, float %.sroa.speculated.i12.i, i64 1
  br label %_ZN4pbrt3SqrENS_8IntervalE.exit

_ZN4pbrt3SqrENS_8IntervalE.exit:                  ; preds = %_ZN4pbrt10MulRoundUpEff.exit.i, %_ZN4pbrt10MulRoundUpEff.exit10.i
  %.sroa.019.0.i = phi <2 x float> [ %.sroa.019.4.vec.insert.i, %_ZN4pbrt10MulRoundUpEff.exit.i ], [ %.sroa.019.4.vec.insert24.i, %_ZN4pbrt10MulRoundUpEff.exit10.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %.sroa.076.0.copyload = load <2 x float>, ptr %i.an, align 8, !tbaa !15 ; 2 uses
  %.sroa.0.0.vec.extract.i111 = extractelement <2 x float> %.sroa.076.0.copyload, i64 0 ; 2 uses
  %i.ao = call noundef float @llvm.fabs.f32(float %.sroa.0.0.vec.extract.i111) ; 3 uses
  %.sroa.0.4.vec.extract.i112 = extractelement <2 x float> %.sroa.076.0.copyload, i64 1 ; 2 uses
  %i.ap = call noundef float @llvm.fabs.f32(float %.sroa.0.4.vec.extract.i112) ; 3 uses
  %i.aq = fcmp ogt float %i.ao, %i.ap             ; 2 uses
  %spec.select26.i113 = select i1 %i.aq, float %i.ao, float %i.ap ; 4 uses
  %i.ar = fcmp ole float %.sroa.0.0.vec.extract.i111, 0.000000e+00
  %i.as = fcmp oge float %.sroa.0.4.vec.extract.i112, 0.000000e+00
  %i.at = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %i.at, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN4pbrt3SqrENS_8IntervalE.exit
  %i.au = fmul float %spec.select26.i113, %spec.select26.i113 ; 3 uses
  %or.cond.i.i.i129 = fcmp oeq float %i.au, +inf
  br i1 %or.cond.i.i.i129, label %_ZN4pbrt10MulRoundUpEff.exit.i130, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = fcmp oeq float %i.au, 0.000000e+00
  %i.aw = bitcast float %i.au to i32
  %i.ax = add nuw i32 %i.aw, 1
  %i.ay = bitcast i32 %i.ax to float
  %i.az = select i1 %i.av, float 1.401300e-45, float %i.ay
  br label %_ZN4pbrt10MulRoundUpEff.exit.i130

_ZN4pbrt10MulRoundUpEff.exit.i130:                ; preds = %bb.g, %bb.f
  %.010.i.i.i131 = phi float [ %i.az, %bb.g ], [ +inf, %bb.f ] ; 4 uses
  %i.ba = fcmp olt float %.010.i.i.i131, 0.000000e+00
  %.sroa.speculated5.i.i132 = select i1 %i.ba, float %.010.i.i.i131, float 0.000000e+00
  %.sroa.019.0.vec.insert.i133 = insertelement <2 x float> poison, float %.sroa.speculated5.i.i132, i64 0
  %i.bb = fcmp ogt float %.010.i.i.i131, 0.000000e+00
  %.sroa.speculated.i.i134 = select i1 %i.bb, float %.010.i.i.i131, float 0.000000e+00
  %.sroa.019.4.vec.insert.i135 = insertelement <2 x float> %.sroa.019.0.vec.insert.i133, float %.sroa.speculated.i.i134, i64 1
  br label %_ZN4pbrt3SqrENS_8IntervalE.exit136

bb.h:                                             ; preds = %_ZN4pbrt3SqrENS_8IntervalE.exit
  %spec.select.i114 = select i1 %i.aq, float %i.ap, float %i.ao ; 2 uses
  %i.bc = fmul float %spec.select.i114, %spec.select.i114 ; 2 uses
  %i.bd = fcmp oeq float %i.bc, 0.000000e+00
  %spec.store.select.i.i2.i115 = select i1 %i.bd, float -0.000000e+00, float %i.bc ; 2 uses
  %i.be = bitcast float %spec.store.select.i.i2.i115 to i32
  %i.bf = fcmp ogt float %spec.store.select.i.i2.i115, 0.000000e+00
  %.0.v.i.i3.i116 = select i1 %i.bf, i32 -1, i32 1
  %.0.i.i4.i117 = add i32 %.0.v.i.i3.i116, %i.be
  %i.bg = bitcast i32 %.0.i.i4.i117 to float      ; 4 uses
  %i.bh = fmul float %spec.select26.i113, %spec.select26.i113 ; 3 uses
  %or.cond.i.i5.i118 = fcmp oeq float %i.bh, +inf
  br i1 %or.cond.i.i5.i118, label %_ZN4pbrt10MulRoundUpEff.exit10.i122, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = fcmp oeq float %i.bh, 0.000000e+00
  %spec.store.select.i.i6.i119 = select i1 %i.bi, float 0.000000e+00, float %i.bh ; 2 uses
  %i.bj = bitcast float %spec.store.select.i.i6.i119 to i32
  %i.bk = fcmp ult float %spec.store.select.i.i6.i119, 0.000000e+00
  %.0.v.i.i7.i120 = select i1 %i.bk, i32 -1, i32 1
  %.0.i.i8.i121 = add i32 %.0.v.i.i7.i120, %i.bj
  %i.bl = bitcast i32 %.0.i.i8.i121 to float
  br label %_ZN4pbrt10MulRoundUpEff.exit10.i122

_ZN4pbrt10MulRoundUpEff.exit10.i122:              ; preds = %bb.i, %bb.h
  %.010.i.i9.i123 = phi float [ %i.bl, %bb.i ], [ +inf, %bb.h ] ; 4 uses
  %i.bm = fcmp olt float %.010.i.i9.i123, %i.bg
  %.sroa.speculated5.i11.i124 = select i1 %i.bm, float %.010.i.i9.i123, float %i.bg
  %.sroa.019.0.vec.insert22.i125 = insertelement <2 x float> poison, float %.sroa.speculated5.i11.i124, i64 0
  %i.bn = fcmp ogt float %.010.i.i9.i123, %i.bg
  %.sroa.speculated.i12.i126 = select i1 %i.bn, float %.010.i.i9.i123, float %i.bg
  %.sroa.019.4.vec.insert24.i127 = insertelement <2 x float> %.sroa.019.0.vec.insert22.i125, float %.sroa.speculated.i12.i126, i64 1
  br label %_ZN4pbrt3SqrENS_8IntervalE.exit136

_ZN4pbrt3SqrENS_8IntervalE.exit136:               ; preds = %_ZN4pbrt10MulRoundUpEff.exit.i130, %_ZN4pbrt10MulRoundUpEff.exit10.i122
  %.sroa.019.0.i128 = phi <2 x float> [ %.sroa.019.4.vec.insert.i135, %_ZN4pbrt10MulRoundUpEff.exit.i130 ], [ %.sroa.019.4.vec.insert24.i127, %_ZN4pbrt10MulRoundUpEff.exit10.i122 ] ; 2 uses
  %foldExtExtBinop = fadd <2 x float> %.sroa.019.0.i, %.sroa.019.0.i128
  %i.bo = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %or.cond.i.i.i138 = fcmp oeq float %i.bo, -inf
  br i1 %or.cond.i.i.i138, label %_ZN4pbrt12AddRoundDownEff.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN4pbrt3SqrENS_8IntervalE.exit136
  %i.bp = fcmp oeq float %i.bo, 0.000000e+00
  %spec.store.select.i.i.i = select i1 %i.bp, float -0.000000e+00, float %i.bo ; 2 uses
  %i.bq = bitcast float %spec.store.select.i.i.i to i32
  %i.br = fcmp ogt float %spec.store.select.i.i.i, 0.000000e+00
  %.0.v.i.i.i = select i1 %i.br, i32 -1, i32 1
  %.0.i.i.i = add i32 %.0.v.i.i.i, %i.bq
  %i.bs = bitcast i32 %.0.i.i.i to float
  br label %_ZN4pbrt12AddRoundDownEff.exit.i

_ZN4pbrt12AddRoundDownEff.exit.i:                 ; preds = %bb.j, %_ZN4pbrt3SqrENS_8IntervalE.exit136
  %.09.i.i.i = phi float [ %i.bs, %bb.j ], [ -inf, %_ZN4pbrt3SqrENS_8IntervalE.exit136 ] ; 4 uses
  %foldExtExtBinop732 = fadd <2 x float> %.sroa.019.0.i, %.sroa.019.0.i128
  %i.bt = extractelement <2 x float> %foldExtExtBinop732, i64 1 ; 3 uses
  %or.cond.i.i1.i = fcmp oeq float %i.bt, +inf
  br i1 %or.cond.i.i1.i, label %_ZNK4pbrt8IntervalplES0_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4pbrt12AddRoundDownEff.exit.i
  %i.bu = fcmp oeq float %i.bt, 0.000000e+00
  %spec.store.select.i.i2.i140 = select i1 %i.bu, float 0.000000e+00, float %i.bt ; 2 uses
  %i.bv = bitcast float %spec.store.select.i.i2.i140 to i32
  %i.bw = fcmp ult float %spec.store.select.i.i2.i140, 0.000000e+00
  %.0.v.i.i3.i141 = select i1 %i.bw, i32 -1, i32 1
  %.0.i.i4.i142 = add i32 %.0.v.i.i3.i141, %i.bv
  %i.bx = bitcast i32 %.0.i.i4.i142 to float
  br label %_ZNK4pbrt8IntervalplES0_.exit

_ZNK4pbrt8IntervalplES0_.exit:                    ; preds = %_ZN4pbrt12AddRoundDownEff.exit.i, %bb.k
  %.010.i.i.i143 = phi float [ %i.bx, %bb.k ], [ +inf, %_ZN4pbrt12AddRoundDownEff.exit.i ] ; 4 uses
  %i.by = fcmp olt float %.010.i.i.i143, %.09.i.i.i
  %.sroa.speculated5.i.i144 = select i1 %i.by, float %.010.i.i.i143, float %.09.i.i.i ; 3 uses
  %.sroa.0.0.vec.insert.i145 = insertelement <2 x float> poison, float %.sroa.speculated5.i.i144, i64 0
  %i.bz = fcmp olt float %.09.i.i.i, %.010.i.i.i143
  %.sroa.speculated.i.i146 = select i1 %i.bz, float %.010.i.i.i143, float %.09.i.i.i ; 3 uses
  %.sroa.0.4.vec.insert.i147 = insertelement <2 x float> %.sroa.0.0.vec.insert.i145, float %.sroa.speculated.i.i146, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %.sroa.074.0.copyload = load <2 x float>, ptr %4, align 16, !tbaa !15
  %i.ca = call <2 x float> @_ZNK4pbrt8IntervalmlES0_(ptr noundef nonnull align 4 dereferenceable(8) %6, <2 x float> %.sroa.074.0.copyload) ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %.sroa.072.0.copyload = load <2 x float>, ptr %i.cb, align 8, !tbaa !15
  %i.cc = call <2 x float> @_ZNK4pbrt8IntervalmlES0_(ptr noundef nonnull align 4 dereferenceable(8) %i.an, <2 x float> %.sroa.072.0.copyload) ; 2 uses
  %foldExtExtBinop734 = fadd <2 x float> %i.ca, %i.cc
  %i.cd = extractelement <2 x float> %foldExtExtBinop734, i64 0 ; 3 uses
  %or.cond.i.i.i149 = fcmp oeq float %i.cd, -inf
  br i1 %or.cond.i.i.i149, label %_ZN4pbrt12AddRoundDownEff.exit.i153, label %bb.l
end_hunk_1
begin_hunk_2_@_ZNK4pbrt8Cylinder27InteractionFromIntersectionERKNS_19QuadricIntersectionENS_7Vector3IfEEf:bb.a

_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit: ; preds = %_ZN4pbrt10AddRoundUpEff.exit.i20.i, %bb.f
  %.sroa.0.0.i23.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i24.i, %bb.f ], [ %.sroa.0.4.vec.insert10.i22.i, %_ZN4pbrt10AddRoundUpEff.exit.i20.i ]
  %i.fg = insertelement <2 x float> poison, float %.sroa.10.0.copyload, i64 0
  %.sroa.0.0.vec.insert.i41.i = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.0.0.i.i, ptr %6, align 8
  %.sroa.4353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %.sroa.0.0.i23.i, ptr %.sroa.4353.0..sroa_idx, align 8
  %.sroa.5354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store <2 x float> %.sroa.0.0.vec.insert.i41.i, ptr %.sroa.5354.0..sroa_idx, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float %5, ptr %i.fh, align 8, !tbaa !60
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.fj = fmul <2 x float> %i.dw, %i.dw           ; 2 uses
  %shift = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.fj, %shift
  %i.fk = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fl = fmul float %i.ei, %i.ei
  %i.fm = fadd float %i.fk, %i.fl
  %sqrt.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.fm) ; 2 uses
  %i.fn = insertelement <2 x float> poison, float %sqrt.i.i.i.i, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = fdiv <2 x float> %i.dw, %i.fo
  %i.fq = fdiv float %i.ei, %sqrt.i.i.i.i
  store <2 x float> %i.fp, ptr %i.fi, align 4
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 36
  store float %i.fq, ptr %.sroa.2.0..sroa_idx.i.i, align 4
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i238, ptr %i.fr, align 8
  %.sroa.214.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store float %i.az, ptr %.sroa.214.0..sroa_idx.i.i, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %6, i64 52
  store <2 x float> %i.p, ptr %i.fs, align 4
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, i8 0, i64 16, i1 false)
  %i.fu = getelementptr inbounds nuw i8, ptr %6, i64 80
  store <2 x float> %.sroa.0344.4.vec.insert, ptr %i.fu, align 8
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 88
  store float 0.000000e+00, ptr %.sroa.439.0..sroa_idx.i, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %6, i64 92
  store <2 x float> zeroinitializer, ptr %i.fv, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 100
  store float %i.k, ptr %.sroa.4.0..sroa_idx.i, align 4
  %i.fw = getelementptr inbounds nuw i8, ptr %6, i64 104
  store float %i.cg, ptr %i.fw, align 8
  %.sroa.5357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 108
  store float %i.ch, ptr %.sroa.5357.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 112
  store float %i.ci, ptr %.sroa.6.0..sroa_idx, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %6, i64 116
  store float %i.ct, ptr %i.fx, align 4
  %.sroa.5364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 120
  store float %i.cu, ptr %.sroa.5364.0..sroa_idx, align 8
  %.sroa.6367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 124
  store float %i.cv, ptr %.sroa.6367.0..sroa_idx, align 4
  %i.fy = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %6, i64 188
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.fz, i8 0, i64 60, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.fy, ptr noundef nonnull align 8 dereferenceable(12) %i.fr, i64 12, i1 false)
  %i.ga = getelementptr inbounds nuw i8, ptr %6, i64 140
  store <2 x float> %.sroa.0344.4.vec.insert, ptr %i.ga, align 4
  %.sroa.439.0..sroa_idx40.i = getelementptr inbounds nuw i8, ptr %6, i64 148
  store float 0.000000e+00, ptr %.sroa.439.0..sroa_idx40.i, align 4
  %i.gb = getelementptr inbounds nuw i8, ptr %6, i64 152
  store <2 x float> zeroinitializer, ptr %i.gb, align 8
  %.sroa.4.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %6, i64 160
  store float %i.k, ptr %.sroa.4.0..sroa_idx33.i, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %6, i64 164
  store float %i.cg, ptr %i.gc, align 4
  %.sroa.5357.0..sroa_idx358 = getelementptr inbounds nuw i8, ptr %6, i64 168
  store float %i.ch, ptr %.sroa.5357.0..sroa_idx358, align 8
  %.sroa.6.0..sroa_idx360 = getelementptr inbounds nuw i8, ptr %6, i64 172
  store float %i.ci, ptr %.sroa.6.0..sroa_idx360, align 4
  %i.gd = getelementptr inbounds nuw i8, ptr %6, i64 176
  store float %i.ct, ptr %i.gd, align 8
  %.sroa.5364.0..sroa_idx365 = getelementptr inbounds nuw i8, ptr %6, i64 180
  store float %i.cu, ptr %.sroa.5364.0..sroa_idx365, align 4
  %.sroa.6367.0..sroa_idx368 = getelementptr inbounds nuw i8, ptr %6, i64 184
  store float %i.cv, ptr %.sroa.6367.0..sroa_idx368, align 8
  br i1 %.not, label %_ZN4pbrt18SurfaceInteractionC2ENS_8Point3fiENS_6Point2IfEENS_7Vector3IfEES5_S5_NS_7Normal3IfEES7_fb.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit
  %i.ge = fneg float %i.ax
  store float %i.ge, ptr %i.fr, align 8, !tbaa !90
  %i.gf = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.gg = fneg float %i.ay
  store float %i.gg, ptr %i.gf, align 4, !tbaa !91
  %i.gh = fneg float %i.az
  store float %i.gh, ptr %.sroa.214.0..sroa_idx.i.i, align 8, !tbaa !92
  %i.gi = load <2 x float>, ptr %i.fy, align 8, !tbaa !15
  %i.gj = fneg <2 x float> %i.gi
  store <2 x float> %i.gj, ptr %i.fy, align 8, !tbaa !15
  %i.gk = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  %i.gl = load float, ptr %i.gk, align 8, !tbaa !92
  %i.gm = fneg float %i.gl
  store float %i.gm, ptr %i.gk, align 8, !tbaa !92
  br label %_ZN4pbrt18SurfaceInteractionC2ENS_8Point3fiENS_6Point2IfEENS_7Vector3IfEES5_S5_NS_7Normal3IfEES7_fb.exit

_ZN4pbrt18SurfaceInteractionC2ENS_8Point3fiENS_6Point2IfEENS_7Vector3IfEES5_S5_NS_7Normal3IfEES7_fb.exit: ; preds = %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit, %bb.j
  call void @_ZNK4pbrt9TransformclERKNS_18SurfaceInteractionE(ptr dead_on_unwind writable sret(%"class.pbrt::SurfaceInteraction") align 8 %0, ptr noundef nonnull align 4 dereferenceable(128) %i.ej, ptr noundef nonnull align 8 dereferenceable(248) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt4Disk9IntersectERKNS_3RayEf(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, float noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pstd::optional.27", align 4 ; 6 uses
  %5 = alloca %"class.pbrt::SurfaceInteraction", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZNK4pbrt4Disk14BasicIntersectERKNS_3RayEf(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.27") align 4 %4, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, float noundef %3)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !82, !range !35, !noundef !36
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %0, i8 0, i64 264, i1 false)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.e = load <2 x float>, ptr %i.d, align 4, !tbaa !15
  %i.f = fneg <2 x float> %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = load float, ptr %i.g, align 4, !tbaa !83
  %i.i = fneg float %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load float, ptr %i.j, align 8, !tbaa !77
  call void @_ZNK4pbrt4Disk27InteractionFromIntersectionERKNS_19QuadricIntersectionENS_7Vector3IfEEf(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::SurfaceInteraction") align 8 %5, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(20) %4, <2 x float> %i.f, float %i.i, float noundef %i.k)
  %i.l = load i8, ptr %i.a, align 4, !tbaa !82, !range !35, !noundef !36
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %.noexc12

.noexc12:                                         ; preds = %bb.c
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.16, i32 noundef 235, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(4) @.str.17) #24
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 192
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.r = load i64, ptr %i.q, align 8, !tbaa !29
  %i.s = load float, ptr %4, align 4, !tbaa !85
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i8 1, ptr %i.t, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %5, i64 72, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.r, ptr %i.u, align 8, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.v, ptr noundef nonnull align 8 dereferenceable(112) %i.p, i64 112, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.x = load <2 x i64>, ptr %i.o, align 8, !tbaa !21
  store <2 x i64> %i.x, ptr %i.w, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 248
  store float %i.s, ptr %i.z, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt4Disk14BasicIntersectERKNS_3RayEf(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional.27") align 4 %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, float noundef %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %4 = alloca %"class.pbrt::Point3fi", align 16   ; 7 uses
  %5 = alloca %"class.pbrt::Point3fi", align 8    ; 6 uses
  %6 = alloca %"class.pbrt::Vector3fi", align 16  ; 7 uses
  %7 = alloca %"class.pbrt::Vector3fi", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.c = load <1 x float>, ptr %2, align 8
  %.sroa.07.4.vec.insert.i = shufflevector <1 x float> %i.c, <1 x float> poison, <2 x i32> zeroinitializer
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load <1 x float>, ptr %i.d, align 4
  %.sroa.05.4.vec.insert.i = shufflevector <1 x float> %i.e, <1 x float> poison, <2 x i32> zeroinitializer
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load <1 x float>, ptr %i.f, align 8
  %.sroa.0.4.vec.insert.i = shufflevector <1 x float> %i.g, <1 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.07.4.vec.insert.i, ptr %5, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.05.4.vec.insert.i, ptr %i.h, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.i, align 8, !tbaa !15
  call void @_ZNK4pbrt9TransformclERKNS_8Point3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Point3fi") align 4 %4, ptr noundef nonnull align 4 dereferenceable(128) %i.b, ptr noundef nonnull align 4 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.029.0.copyload = load <2 x float>, ptr %i.k, align 4 ; 2 uses
  %.sroa.230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.230.0.copyload = load float, ptr %.sroa.230.0..sroa_idx, align 4
  %.sroa.05.4.vec.insert.i38 = shufflevector <2 x float> %.sroa.029.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.03.4.vec.insert.i = shufflevector <2 x float> %.sroa.029.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %.sroa.0.0.vec.insert.i39 = insertelement <2 x float> poison, float %.sroa.230.0.copyload, i64 0
  %.sroa.0.4.vec.insert.i40 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i39, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.05.4.vec.insert.i38, ptr %7, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.03.4.vec.insert.i, ptr %i.l, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i40, ptr %i.m, align 8, !tbaa !15
  call void @_ZNK4pbrt9TransformclERKNS_9Vector3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Vector3fi") align 4 %6, ptr noundef nonnull align 4 dereferenceable(128) %i.j, ptr noundef nonnull align 4 dereferenceable(24) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.o = load float, ptr %i.n, align 16, !tbaa !73
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.q = load float, ptr %i.p, align 4, !tbaa !72
  %i.r = fadd float %i.o, %i.q
  %i.s = fmul float %i.r, 5.000000e-01            ; 3 uses
  %i.t = fcmp oeq float %i.s, 0.000000e+00
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.v = load float, ptr %i.u, align 4, !tbaa !266
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load float, ptr %i.w, align 16, !tbaa !73
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.z = load float, ptr %i.y, align 4, !tbaa !72
  %i.aa = fadd float %i.x, %i.z
  %i.ab = fmul float %i.aa, 5.000000e-01          ; 2 uses
  %i.ac = fsub float %i.v, %i.ab
  %i.ad = fdiv float %i.ac, %i.s                  ; 5 uses
  %i.ae = fcmp ugt float %i.ad, 0.000000e+00
  %i.af = fcmp ult float %i.ad, %3
  %or.cond = and i1 %i.ae, %i.af
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %.sroa.047.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.043.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ag = fmul float %i.ad, %i.s
  %i.ah = load <2 x float>, ptr %.sroa.047.sroa.2.0..sroa_idx, align 4
  %i.ai = load <4 x float>, ptr %4, align 16
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ak = fadd <2 x float> %i.ah, %i.aj
  %i.al = fmul <2 x float> %i.ak, splat (float 5.000000e-01)
  %i.am = load <2 x float>, ptr %.sroa.043.sroa.2.0..sroa_idx, align 4
  %i.an = load <4 x float>, ptr %6, align 16
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ap = fadd <2 x float> %i.am, %i.ao
  %i.aq = fmul <2 x float> %i.ap, splat (float 5.000000e-01)
  %i.ar = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x float> %i.as, %i.aq
  %i.au = fadd <2 x float> %i.al, %i.at           ; 5 uses
  %i.av = fadd float %i.ab, %i.ag
  %i.aw = fmul <2 x float> %i.au, %i.au           ; 2 uses
  %shift = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.aw, %shift
  %i.ax = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = load float, ptr %i.ay, align 8, !tbaa !110 ; 2 uses
  %i.ba = fmul float %i.az, %i.az
  %i.bb = fcmp ogt float %i.ax, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !111 ; 2 uses
  %i.be = fmul float %i.bd, %i.bd
  %i.bf = fcmp olt float %i.ax, %i.be
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.bg = extractelement <2 x float> %i.au, i64 0
  %i.bh = extractelement <2 x float> %i.au, i64 1
  %i.bi = call noundef float @atan2f(float noundef %i.bh, float noundef %i.bg) #23 ; 3 uses
  %i.bj = fcmp olt float %i.bi, 0.000000e+00
  %i.bk = fadd float %i.bi, f0x40C90FDB
  %spec.select = select i1 %i.bj, float %i.bk, float %i.bi ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !112
  %i.bn = fcmp ogt float %spec.select, %i.bm
  br i1 %i.bn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %i.bo, align 4, !tbaa !82
  store float %i.ad, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <2 x float> %i.au, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.av, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %spec.select, ptr %.sroa.6.0..sroa_idx, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.i, %bb.j, %bb.g, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt4Disk27InteractionFromIntersectionERKNS_19QuadricIntersectionENS_7Vector3IfEEf(ptr dead_on_unwind noalias writable sret(%"class.pbrt::SurfaceInteraction") align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(20) %2, <2 x float> %3, float %4, float noundef %5) local_unnamed_addr #5 comdat align 2 {
_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit:
  %6 = alloca %"class.pbrt::SurfaceInteraction", align 8 ; 27 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.040.0.copyload = load <2 x float>, ptr %i.a, align 4 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load float, ptr %i.b, align 4, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load float, ptr %i.d, align 8, !tbaa !112 ; 2 uses
  %i.f = fmul <2 x float> %.sroa.040.0.copyload, %.sroa.040.0.copyload ; 2 uses
  %shift = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.f, %shift
  %i.g = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load float, ptr %i.h, align 8, !tbaa !110 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.k = load float, ptr %i.j, align 4, !tbaa !111 ; 2 uses
  %i.l = fsub float %i.i, %i.k
  %i.m = fneg float %i.e
  %i.n = fsub float %i.k, %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %7 = load <4 x float>, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i8, ptr %i.p, align 8, !tbaa !267, !range !35, !noundef !36
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.s = load i8, ptr %i.r, align 1, !tbaa !268, !range !35, !noundef !36
  %.not = icmp eq i8 %i.q, %i.s
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !109  ; 4 uses
  %i.v = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.y = load <2 x float>, ptr %i.x, align 4, !tbaa !15
  %i.z = fmul <2 x float> %3, %i.y                ; 2 uses
  %shift103 = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop104 = fadd <2 x float> %i.z, %shift103
  %i.aa = extractelement <2 x float> %foldExtExtBinop104, i64 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !15
  %i.ad = fmul float %4, %i.ac
  %i.ae = fadd float %i.aa, %i.ad                 ; 3 uses
  %i.af = load ptr, ptr %1, align 8, !tbaa !269
  %.sroa.0.0.vec.insert.i.i = shufflevector <2 x float> %.sroa.040.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.0.0.vec.insert.i24.i = shufflevector <2 x float> %.sroa.040.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %.sroa.0.0.vec.insert.i41.i = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> zeroinitializer
  %sqrt = tail call float @llvm.sqrt.f32(float %i.g) ; 2 uses
  %i.ag = fsub float %i.i, %sqrt
  %i.ah = insertelement <2 x float> poison, float %i.c, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.ag, i64 1
  %i.aj = insertelement <2 x float> poison, float %i.e, i64 0 ; 2 uses
  %i.ak = insertelement <2 x float> %i.aj, float %i.l, i64 1
  %i.al = fdiv <2 x float> %i.ai, %i.ak
  %i.am = insertelement <2 x float> %i.aj, float %i.m, i64 1
  %i.an = fmul <2 x float> %.sroa.040.0.copyload, %i.am ; 3 uses
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.ap = insertelement <2 x float> poison, float %i.n, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ar = fmul <2 x float> %.sroa.040.0.copyload, %i.aq
  %i.as = shufflevector <2 x float> %.sroa.040.0.copyload, <2 x float> <float 0.000000e+00, float poison>, <2 x i32> <i32 2, i32 0>
  %i.at = fmul <2 x float> %i.as, %i.aq
  %i.au = insertelement <2 x float> poison, float %sqrt, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aw = fdiv <2 x float> %i.ar, %i.av           ; 4 uses
  %i.ax = fdiv <2 x float> %i.at, %i.av           ; 3 uses
  %i.ay = extractelement <2 x float> %i.aw, i64 1 ; 2 uses
  %i.az = fmul float %i.ay, 0.000000e+00          ; 2 uses
  %i.ba = fneg float %i.az
  %i.bb = extractelement <2 x float> %i.an, i64 0
  %i.bc = extractelement <2 x float> %i.ax, i64 0 ; 3 uses
  %i.bd = tail call noundef float @llvm.fma.f32(float %i.bb, float %i.bc, float %i.ba)
  %i.be = tail call noundef float @llvm.fma.f32(float %i.ay, float -0.000000e+00, float %i.az)
  %i.bf = fadd float %i.bd, %i.be                 ; 3 uses
  %i.bg = fmul <2 x float> %i.ao, %i.ax           ; 2 uses
  %i.bh = fneg <2 x float> %i.bg
  %i.bi = insertelement <2 x float> %i.an, float 0.000000e+00, i64 0
  %i.bj = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.aw, <2 x float> %i.bi, <2 x float> %i.bh)
  %i.bk = fneg <2 x float> %i.ao
  %i.bl = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.bk, <2 x float> %i.ax, <2 x float> %i.bg)
  %i.bm = fadd <2 x float> %i.bj, %i.bl           ; 3 uses
  %i.bn = fmul float %i.bf, %i.bf
  %i.bo = fmul <2 x float> %i.bm, %i.bm           ; 2 uses
  %i.bp = extractelement <2 x float> %i.bo, i64 0
  %i.bq = fadd float %i.bn, %i.bp
  %i.br = extractelement <2 x float> %i.bo, i64 1
  %i.bs = fadd float %i.br, %i.bq
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.bs) ; 2 uses
  %i.bt = fdiv float %i.bf, %sqrt.i.i.i           ; 2 uses
  %i.bu = insertelement <2 x float> poison, float %sqrt.i.i.i, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = fdiv <2 x float> %i.bm, %i.bv           ; 3 uses
  %.sroa.0.0.vec.insert.i64 = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.bx = shufflevector <2 x float> %.sroa.0.0.vec.insert.i64, <2 x float> %i.bw, <2 x i32> <i32 0, i32 2>
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.ca = fmul float %i.ae, %i.ae
  %i.cb = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr align 4 %i.u, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !15 ; 3 uses
  %i.cc = shufflevector <5 x float> %i.cb, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cd = shufflevector <5 x float> %i.cb, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.ce = fmul <2 x float> %i.v, %i.cd
  %i.cf = load <2 x float>, ptr %i.w, align 4, !tbaa !15 ; 2 uses
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ch = shufflevector <4 x float> %i.cc, <4 x float> %i.cg, <2 x i32> <i32 0, i32 4>
  %i.ci = fmul <2 x float> %3, %i.ch
  %i.cj = fadd <2 x float> %i.ce, %i.ci
  %i.ck = insertelement <2 x float> poison, float %4, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = shufflevector <2 x float> %i.cf, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.cn = shufflevector <5 x float> %i.cb, <5 x float> %i.cm, <2 x i32> <i32 2, i32 6>
  %i.co = fmul <2 x float> %i.cl, %i.cn
  %i.cp = fadd <2 x float> %i.cj, %i.co           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store <2 x float> %.sroa.0.0.vec.insert.i.i, ptr %6, align 8
  store <2 x float> %.sroa.0.0.vec.insert.i24.i, ptr %.sroa.484.0..sroa_idx, align 8
  store <2 x float> %.sroa.0.0.vec.insert.i41.i, ptr %.sroa.585.0..sroa_idx, align 8
  store float %5, ptr %i.by, align 8, !tbaa !60
  %i.cq = fmul <2 x float> %i.cp, %i.cp           ; 2 uses
  %shift106 = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop107 = fadd <2 x float> %i.cq, %shift106
  %i.cr = extractelement <2 x float> %foldExtExtBinop107, i64 0
  %i.cs = fadd float %i.cr, %i.ca
  %sqrt.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.cs) ; 2 uses
  %i.ct = insertelement <2 x float> poison, float %sqrt.i.i.i.i, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = fdiv <2 x float> %i.cp, %i.cu
  %i.cw = fdiv float %i.ae, %sqrt.i.i.i.i
  store <2 x float> %i.cv, ptr %i.bz, align 4
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 36
  store float %i.cw, ptr %.sroa.2.0..sroa_idx.i.i, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  store <2 x float> %i.bx, ptr %i.cx, align 8
  %.sroa.214.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.cy = extractelement <2 x float> %i.bw, i64 1
  store float %i.cy, ptr %.sroa.214.0..sroa_idx.i.i, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 52
  store <2 x float> %i.al, ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, i8 0, i64 16, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 80
  store <2 x float> %i.ao, ptr %i.db, align 8
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 88
  store float 0.000000e+00, ptr %.sroa.439.0..sroa_idx.i, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 92
  store <2 x float> %i.aw, ptr %i.dc, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 100
  store float %i.bc, ptr %.sroa.4.0..sroa_idx.i, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 188
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.df, i8 0, i64 60, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.de, ptr noundef nonnull align 8 dereferenceable(12) %i.cx, i64 12, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 140
  store <2 x float> %i.ao, ptr %i.dg, align 4
  %.sroa.439.0..sroa_idx40.i = getelementptr inbounds nuw i8, ptr %6, i64 148
  store float 0.000000e+00, ptr %.sroa.439.0..sroa_idx40.i, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 152
  store <2 x float> %i.aw, ptr %i.dh, align 8
  %.sroa.4.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %6, i64 160
  store float %i.bc, ptr %.sroa.4.0..sroa_idx33.i, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.di, i8 0, i64 24, i1 false)
  br i1 %.not, label %_ZN4pbrt18SurfaceInteractionC2ENS_8Point3fiENS_6Point2IfEENS_7Vector3IfEES5_S5_NS_7Normal3IfEES7_fb.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit
  %i.dj = fneg float %i.bt
  store float %i.dj, ptr %i.cx, align 8, !tbaa !90
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.dl = fneg <2 x float> %i.bw
  store <2 x float> %i.dl, ptr %i.dk, align 4, !tbaa !15
  %i.dm = load <2 x float>, ptr %i.de, align 8, !tbaa !15
  %i.dn = fneg <2 x float> %i.dm
  store <2 x float> %i.dn, ptr %i.de, align 8, !tbaa !15
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  %i.dp = load float, ptr %i.do, align 8, !tbaa !92
  %i.dq = fneg float %i.dp
  store float %i.dq, ptr %i.do, align 8, !tbaa !92
  br label %_ZN4pbrt18SurfaceInteractionC2ENS_8Point3fiENS_6Point2IfEENS_7Vector3IfEES5_S5_NS_7Normal3IfEES7_fb.exit

_ZN4pbrt18SurfaceInteractionC2ENS_8Point3fiENS_6Point2IfEENS_7Vector3IfEES5_S5_NS_7Normal3IfEES7_fb.exit: ; preds = %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit, %bb.a
  call void @_ZNK4pbrt9TransformclERKNS_18SurfaceInteractionE(ptr dead_on_unwind writable sret(%"class.pbrt::SurfaceInteraction") align 8 %0, ptr noundef nonnull align 4 dereferenceable(128) %i.af, ptr noundef nonnull align 8 dereferenceable(248) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret void
}

declare void @_ZNK4pbrt8Triangle9IntersectERKNS_3RayEf(ptr dead_on_unwind writable sret(%"class.pstd::optional") align 8, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(40), float noundef) local_unnamed_addr #1

declare void @_ZNK4pbrt13BilinearPatch9IntersectERKNS_3RayEf(ptr dead_on_unwind writable sret(%"class.pstd::optional") align 8, ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(40), float noundef) local_unnamed_addr #1

declare void @_ZNK4pbrt5Curve9IntersectERKNS_3RayEf(ptr dead_on_unwind writable sret(%"class.pstd::optional") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(40), float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZN4pbrt6detail8DispatchIRZNKS_12FloatTexture8EvaluateENS_18TextureEvalContextEEUlT_E_fNS_17FloatImageTextureENS_20GPUFloatImageTextureENS_15FloatMixTextureENS_24FloatDirectionMixTextureENS_18FloatScaledTextureENS_20FloatConstantTextureENS_18FloatBilerpTextureENS_24FloatCheckerboardTextureEJNS_16FloatDotsTextureENS_10FBmTextureENS_16FloatPtexTextureENS_19GPUFloatPtexTextureENS_12WindyTextureENS_15WrinkledTextureEEvEET0_OS4_PKvi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 comdat {
bb.a:
  %3 = alloca %class.anon.36, align 8             ; 4 uses
  %4 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %5 = alloca %class.anon.36, align 8             ; 4 uses
  %6 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %7 = alloca %"class.pbrt::TextureMapping2D", align 8 ; 4 uses
  %8 = alloca %"class.pbrt::TextureMapping3D", align 8 ; 4 uses
  %9 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 6 uses
  %10 = alloca %class.anon.36, align 8            ; 4 uses
  %11 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 7 uses
  %12 = alloca %class.anon.36, align 8            ; 4 uses
  %13 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 7 uses
  %.sroa.0 = alloca { %"class.pbrt::Point3", %"class.pbrt::Vector3", %"class.pbrt::Vector3" }, align 8 ; 4 uses
  %.sroa.7 = alloca { %"class.pbrt::Point2", float, float, float, float, i32 }, align 8 ; 4 uses
  %14 = alloca %class.anon.36, align 8            ; 4 uses
  %15 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %16 = alloca %class.anon.36, align 8            ; 4 uses
  %17 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %18 = alloca %class.anon.36, align 8            ; 4 uses
  %19 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %20 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 5 uses
  %21 = alloca %class.anon.39, align 8            ; 4 uses
  %22 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %23 = alloca %class.anon.36, align 8            ; 4 uses
  %24 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %25 = alloca %class.anon.36, align 8            ; 4 uses
  %26 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %27 = alloca %"struct.pbrt::TexCoord2D", align 8 ; 4 uses
  %28 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 5 uses
  %29 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %30 = alloca %class.anon.36, align 8            ; 4 uses
  %31 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %32 = alloca %class.anon.36, align 8            ; 4 uses
  %33 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %34 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %35 = alloca %class.anon.39, align 8            ; 4 uses
  %36 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %37 = alloca %"struct.pbrt::TexCoord2D", align 8 ; 4 uses
  %38 = alloca %class.anon.39, align 8            ; 4 uses
  %39 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %40 = alloca %"struct.pbrt::TexCoord2D", align 8 ; 6 uses
  switch i32 %2, label %bb.aa [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.h
    i32 4, label %bb.l
    i32 5, label %bb.n
    i32 6, label %bb.o
    i32 7, label %bb.p
    i32 8, label %bb.t
end_hunk_2
