inline.NumInlined: 343
inline.NumDeleted: 120
begin_hunk_0_@_ZNK22btGImpactCompoundShape7getNameEv:bb.a
; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN23btGImpactShapeInterface9setMarginEf(ptr noundef nonnull align 8 dereferenceable(176) %0, float noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %1, ptr %i.a, align 8, !tbaa !80
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(176) %0) ; 2 uses
  %.not5 = icmp eq i32 %i.e, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.06 = phi i32 [ %i.f, %.lr.ph ], [ %i.e, %bb.a ]
  %i.f = add nsw i32 %.06, -1                     ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %i.f) ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(24) %i.j, float noundef %1)
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 1, ptr %i.n, align 4, !tbaa !81
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef float @_ZNK14btConcaveShape9getMarginEv(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load float, ptr %i.a, align 8, !tbaa !80
  ret float %i.b
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNK23btGImpactShapeInterface19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN23btGImpactShapeInterface13calcLocalAABBEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(176) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !82
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN21btGImpactQuantizedBvh8buildSetEv(ptr noundef nonnull align 8 dereferenceable(96) %i.d)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN21btGImpactQuantizedBvh5refitEv(ptr noundef nonnull align 8 dereferenceable(96) %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(176) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !78, !noalias !83 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.o = load i16, ptr %i.n, align 2, !tbaa !86, !noalias !83
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.q = load float, ptr %i.p, align 8, !tbaa !23, !noalias !83
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = load float, ptr %i.r, align 8, !tbaa !23, !noalias !83 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.v = load i16, ptr %i.u, align 2, !tbaa !86, !noalias !83
  %i.w = insertelement <2 x i16> poison, i16 %i.o, i64 0
  %i.x = insertelement <2 x i16> %i.w, i16 %i.v, i64 1
  %i.y = uitofp <2 x i16> %i.x to <2 x float>
  %i.z = insertelement <2 x float> poison, float %i.q, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fdiv <2 x float> %i.y, %i.aa            ; 2 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 0
  %i.ad = fadd float %i.ac, %i.s
  %.sroa.7.8.vec.insert19.i.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ad, i64 0
  %i.ae = load <2 x float>, ptr %i.m, align 8, !tbaa !23, !noalias !83 ; 2 uses
  %i.af = load <2 x float>, ptr %i.l, align 8, !tbaa !23, !noalias !83 ; 2 uses
  %i.ag = load <2 x i16>, ptr %i.k, align 2, !tbaa !86, !noalias !83
  %i.ah = uitofp <2 x i16> %i.ag to <2 x float>
  %i.ai = fdiv <2 x float> %i.ah, %i.ae
  %i.aj = fadd <2 x float> %i.ai, %i.af
  %i.ak = load <2 x i16>, ptr %i.t, align 2, !tbaa !86, !noalias !83
  %i.al = uitofp <2 x i16> %i.ak to <2 x float>
  %i.am = fdiv <2 x float> %i.al, %i.ae
  %i.an = fadd <2 x float> %i.af, %i.am
  %i.ao = extractelement <2 x float> %i.ab, i64 1
  %i.ap = fadd float %i.s, %i.ao
  %.sroa.7.8.vec.insert19.i7.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ap, i64 0
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <2 x float> %i.aj, ptr %i.aq, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store <2 x float> %.sroa.7.8.vec.insert19.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !30
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store <2 x float> %i.an, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store <2 x float> %.sroa.7.8.vec.insert19.i7.i.i.i, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !30
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN23btGImpactShapeInterface10postUpdateEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 1, ptr %i.a, align 4, !tbaa !81
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK23btGImpactShapeInterface12getShapeTypeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i32 25
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN22btGImpactCompoundShape19getGImpactShapeTypeEv(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK22btGImpactCompoundShape19getPrimitiveManagerEv(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK22btGImpactCompoundShape17getNumChildShapesEv(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.b = load i32, ptr %i.a, align 4, !tbaa !88
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK22btGImpactCompoundShape20childrenHasTransformEv(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.b = load i32, ptr %i.a, align 4, !tbaa !89
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK22btGImpactCompoundShape22needsRetrieveTrianglesEv(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK22btGImpactCompoundShape25needsRetrieveTetrahedronsEv(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNK22btGImpactCompoundShape17getBulletTriangleEiR17btTriangleShapeEx(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(112) %2) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNK22btGImpactCompoundShape20getBulletTetrahedronEiR20btTetrahedronShapeEx(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(168) %2) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNK23btGImpactShapeInterface15lockChildShapesEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNK23btGImpactShapeInterface17unlockChildShapesEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK22btGImpactCompoundShape12getChildAabbEiRK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %class.btTransform, align 16        ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.g = sext i32 %1 to i64                       ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 4 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.l = getelementptr inbounds [64 x i8], ptr %i.k, i64 %i.g ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  %6 = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %7 = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 20
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %11 = load float, ptr %i.u, align 4, !tbaa !23, !noalias !93 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.w = load float, ptr %i.v, align 4, !tbaa !23, !noalias !90 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.y = load float, ptr %i.x, align 4, !tbaa !23, !noalias !90 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.aa = load float, ptr %i.z, align 4, !tbaa !23, !noalias !90 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !23, !noalias !90
  %13 = load <2 x float>, ptr %2, align 4, !tbaa !23, !noalias !93 ; 4 uses
  %14 = load <2 x float>, ptr %i.l, align 4, !tbaa !23, !noalias !93 ; 2 uses
  %15 = load <2 x float>, ptr %i.m, align 4, !tbaa !23, !noalias !93 ; 3 uses
  %16 = load <2 x float>, ptr %6, align 4, !tbaa !23, !noalias !93 ; 2 uses
  %17 = shufflevector <2 x float> %15, <2 x float> %13, <4 x i32> <i32 0, i32 3, i32 3, i32 poison>
  %18 = insertelement <4 x float> %17, float 0.000000e+00, i64 3
  %19 = shufflevector <2 x float> %13, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %20 = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %19, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %21 = shufflevector <2 x float> %15, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %22 = shufflevector <4 x float> %20, <4 x float> %21, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %23 = shufflevector <2 x float> %14, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %24 = insertelement <4 x float> %23, float 0.000000e+00, i64 3
  %25 = shufflevector <2 x float> %13, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %26 = shufflevector <2 x float> %16, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %27 = insertelement <4 x float> %26, float 0.000000e+00, i64 3
  %28 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %29 = load <2 x float>, ptr %9, align 4, !tbaa !23, !noalias !93 ; 3 uses
  %i.ad = load <2 x float>, ptr %i.p, align 4, !tbaa !23, !noalias !93 ; 2 uses
  %i.ae = load float, ptr %8, align 4, !tbaa !23, !noalias !93
  %30 = load <2 x float>, ptr %i.o, align 4, !tbaa !23, !noalias !93 ; 2 uses
  %31 = load float, ptr %i.q, align 4, !tbaa !23, !noalias !93
  %32 = load <2 x float>, ptr %7, align 4, !tbaa !23, !noalias !93 ; 2 uses
  %33 = load float, ptr %i.r, align 4, !tbaa !23, !noalias !93
  %34 = load <2 x float>, ptr %12, align 4, !tbaa !23, !noalias !90
  %35 = load <2 x float>, ptr %i.n, align 4, !tbaa !23, !noalias !93 ; 3 uses
  %36 = shufflevector <2 x float> %35, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %37 = shufflevector <4 x float> %36, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %38 = load <2 x float>, ptr %i.s, align 4, !tbaa !23, !noalias !93 ; 3 uses
  %i.af = shufflevector <2 x float> %35, <2 x float> %38, <2 x i32> <i32 0, i32 2>
  %i.ag = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %39 = fmul <2 x float> %i.af, %i.ah
  %40 = shufflevector <2 x float> %13, <2 x float> %29, <2 x i32> <i32 0, i32 2>
  %i.ai = insertelement <2 x float> poison, float %i.w, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %40, <2 x float> %i.aj, <2 x float> %39)
  %41 = shufflevector <2 x float> %35, <2 x float> %38, <2 x i32> <i32 1, i32 3>
  %42 = insertelement <2 x float> poison, float %i.aa, i64 0
  %43 = shufflevector <2 x float> %42, <2 x float> poison, <2 x i32> zeroinitializer
  %44 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %41, <2 x float> %43, <2 x float> %i.ak)
  %45 = fadd <2 x float> %34, %44
  %46 = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %47 = shufflevector <4 x float> %22, <4 x float> %46, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %48 = fmul <4 x float> %18, %47
  %49 = shufflevector <2 x float> %30, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %50 = shufflevector <4 x float> %24, <4 x float> %49, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %51 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %50, <4 x float> %25, <4 x float> %48)
  %52 = shufflevector <2 x float> %32, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %53 = shufflevector <4 x float> %27, <4 x float> %52, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %54 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %53, <4 x float> %37, <4 x float> %51)
  %55 = shufflevector <2 x float> %29, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %56 = shufflevector <2 x float> %15, <2 x float> %i.ad, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %57 = insertelement <4 x float> %56, float 1.000000e+00, i64 3 ; 2 uses
  %58 = fmul <4 x float> %55, %57
  %59 = shufflevector <2 x float> %14, <2 x float> %30, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %60 = insertelement <4 x float> %59, float 0.000000e+00, i64 3 ; 2 uses
  %61 = shufflevector <2 x float> %29, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %62 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %60, <4 x float> %61, <4 x float> %58)
  %63 = shufflevector <2 x float> %16, <2 x float> %32, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %64 = insertelement <4 x float> %63, float 0.000000e+00, i64 3 ; 2 uses
  %65 = shufflevector <2 x float> %38, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %66 = shufflevector <4 x float> %65, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %67 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %64, <4 x float> %66, <4 x float> %62)
  store <4 x float> %54, ptr %5, align 16, !alias.scope !90
  store <4 x float> %67, ptr %28, align 16, !alias.scope !90
  %68 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %69 = load <2 x float>, ptr %10, align 4, !tbaa !23, !noalias !93 ; 4 uses
  %70 = load float, ptr %i.t, align 4, !tbaa !23, !noalias !93
  %71 = fmul float %70, %i.y
  %72 = extractelement <2 x float> %69, i64 0
  %73 = tail call float @llvm.fmuladd.f32(float %72, float %i.w, float %71)
  %74 = tail call noundef float @llvm.fmuladd.f32(float %11, float %i.aa, float %73)
  %75 = fadd float %74, %i.ac
  %i.al = insertelement <2 x float> <float poison, float 0.000000e+00>, float %75, i64 0
  %76 = shufflevector <2 x float> %69, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %77 = insertelement <4 x float> %76, float 0.000000e+00, i64 3
  %78 = insertelement <4 x float> %77, float %i.ae, i64 2
  %79 = shufflevector <2 x float> %69, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %80 = shufflevector <4 x float> %57, <4 x float> %79, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %81 = fmul <4 x float> %78, %80
  %82 = insertelement <4 x float> %60, float %31, i64 2
  %83 = shufflevector <2 x float> %69, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %84 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %82, <4 x float> %83, <4 x float> %81)
  %85 = insertelement <4 x float> %64, float %33, i64 2
  %86 = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %11, i64 0
  %87 = shufflevector <4 x float> %86, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %88 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %85, <4 x float> %87, <4 x float> %84)
  store <4 x float> %88, ptr %68, align 16, !alias.scope !90
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 48
  store <2 x float> %45, ptr %i.am, align 16, !alias.scope !90
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  store <2 x float> %i.al, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !30, !alias.scope !90
  %i.an = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef ptr @_ZN22btGImpactCompoundShape13getChildShapeEi(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  ret ptr %i.e
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef ptr @_ZNK22btGImpactCompoundShape13getChildShapeEi(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  ret ptr %i.e
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK22btGImpactCompoundShape17getChildTransformEi(ptr dead_on_unwind noalias writable sret(%class.btTransform) align 4 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, i32 noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.c ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %i.d, i64 16, i1 false), !tbaa.struct !29
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !29
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !29
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !29
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN22btGImpactCompoundShape17setChildTransformEiRK11btTransform(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.c ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.d, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !29
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !29
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !29
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !29
  %i.k = load ptr, ptr %0, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(176) %0)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNK23btGImpactShapeInterface7rayTestERK9btVector3S2_RN16btCollisionWorld17RayResultCallbackE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN22btGImpactMeshShapePartD2Ev(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTV23btGImpactShapeInterface, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %.not.i.i.i.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i8, ptr %i.c, align 8, !range !77
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.b, label %_ZN23btGImpactShapeInterfaceD2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN23btGImpactShapeInterfaceD2Ev.exit unwind label %bb.c, !inline_history !79

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN14btConcaveShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0)
          to label %bb.d unwind label %bb.e, !inline_history !79

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #17, !inline_history !79
  unreachable

_ZN23btGImpactShapeInterfaceD2Ev.exit:            ; preds = %bb.a, %bb.b
  tail call void @_ZN14btConcaveShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0), !inline_history !79
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN22btGImpactMeshShapePartD0Ev(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTV23btGImpactShapeInterface, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i8, ptr %i.c, align 8, !range !77
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %bb.b, label %_ZN23btGImpactShapeInterfaceD2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN23btGImpactShapeInterfaceD2Ev.exit.i unwind label %bb.c, !inline_history !79

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN14btConcaveShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(272) %0)
          to label %.body unwind label %bb.d, !inline_history !79

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #17, !inline_history !79
  unreachable

_ZN23btGImpactShapeInterfaceD2Ev.exit.i:          ; preds = %bb.b, %bb.a
  invoke void @_ZN14btConcaveShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(272) %0)
          to label %_ZN22btGImpactMeshShapePartD2Ev.exit unwind label %bb.e

_ZN22btGImpactMeshShapePartD2Ev.exit:             ; preds = %_ZN23btGImpactShapeInterfaceD2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %0) #18
  ret void

bb.e:                                             ; preds = %_ZN23btGImpactShapeInterfaceD2Ev.exit.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.f, %bb.c ]
  tail call void @_ZdlPv(ptr noundef nonnull %0) #18
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN22btGImpactMeshShapePart15setLocalScalingERK9btVector3(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !29
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(176) %0)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK22btGImpactMeshShapePart15getLocalScalingEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK22btGImpactMeshShapePart7getNameEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret ptr @.str.1
end_hunk_0
begin_hunk_1_@_ZNK22btGImpactMeshShapePart23TrimeshPrimitiveManager19get_bullet_triangleEiR17btTriangleShapeEx:bb.a
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 %i.i ; 6 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load i16, ptr %i.j, align 2, !tbaa !86
  %i.l = sext i16 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !86
  %i.o = sext i16 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.q = load i16, ptr %i.p, align 2, !tbaa !86
  %i.r = sext i16 %i.q to i32
  br label %_ZNK22btGImpactMeshShapePart23TrimeshPrimitiveManager11get_indicesEiRiS1_S1_.exit

bb.c:                                             ; preds = %bb.a
  %i.s = load i32, ptr %i.j, align 4, !tbaa !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  br label %_ZNK22btGImpactMeshShapePart23TrimeshPrimitiveManager11get_indicesEiRiS1_S1_.exit

_ZNK22btGImpactMeshShapePart23TrimeshPrimitiveManager11get_indicesEiRiS1_S1_.exit: ; preds = %bb.b, %bb.c
  %.sroa.5.0 = phi i32 [ %i.o, %bb.b ], [ %i.u, %bb.c ] ; 2 uses
  %.sroa.0.0 = phi i32 [ %i.l, %bb.b ], [ %i.s, %bb.c ]
  %storemerge.i = phi i32 [ %i.r, %bb.b ], [ %i.w, %bb.c ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.z = load i32, ptr %i.y, align 4, !tbaa !41
  %i.aa = icmp eq i32 %i.z, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !43 ; 5 uses
  %i.af = mul nsw i32 %i.ae, %.sroa.0.0
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %i.ac, i64 %i.ag ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !23 ; 2 uses
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK22btGImpactMeshShapePart23TrimeshPrimitiveManager11get_indicesEiRiS1_S1_.exit
  %i.ak = load double, ptr %i.ah, align 8, !tbaa !44
  %i.al = fpext float %i.aj to double
  %i.am = fmul double %i.ak, %i.al
  %i.an = fptrunc double %i.am to float
  store float %i.an, ptr %i.x, align 8, !tbaa !23
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !44
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !23
  %i.as = fpext float %i.ar to double
  %i.at = fmul double %i.ap, %i.as
  %i.au = fptrunc double %i.at to float
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 68
  store float %i.au, ptr %i.av, align 4, !tbaa !23
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !44
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.az = load float, ptr %i.ay, align 8, !tbaa !23
  %i.ba = fpext float %i.az to double
  %i.bb = fmul double %i.ax, %i.ba
  %i.bc = fptrunc double %i.bb to float
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 72
  store float %i.bc, ptr %i.bd, align 8, !tbaa !23
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bf = mul nsw i32 %i.ae, %.sroa.5.0
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %i.ac, i64 %i.bg ; 3 uses
  %i.bi = load float, ptr %i.ai, align 8, !tbaa !23
  %i.bj = load double, ptr %i.bh, align 8, !tbaa !44
  %i.bk = fpext float %i.bi to double
  %i.bl = fmul double %i.bj, %i.bk
  %i.bm = fptrunc double %i.bl to float
  store float %i.bm, ptr %i.be, align 8, !tbaa !23
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !44
  %i.bp = load float, ptr %i.aq, align 4, !tbaa !23
  %i.bq = fpext float %i.bp to double
  %i.br = fmul double %i.bo, %i.bq
  %i.bs = fptrunc double %i.br to float
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 84
  store float %i.bs, ptr %i.bt, align 4, !tbaa !23
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !44
  %i.bw = load float, ptr %i.ay, align 8, !tbaa !23
  %i.bx = fpext float %i.bw to double
  %i.by = fmul double %i.bv, %i.bx
  %i.bz = fptrunc double %i.by to float
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 88
  store float %i.bz, ptr %i.ca, align 8, !tbaa !23
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.cc = mul nsw i32 %i.ae, %storemerge.i
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds i8, ptr %i.ac, i64 %i.cd ; 3 uses
  %i.cf = load float, ptr %i.ai, align 8, !tbaa !23
  %i.cg = load double, ptr %i.ce, align 8, !tbaa !44
  %i.ch = fpext float %i.cf to double
  %i.ci = fmul double %i.cg, %i.ch
  %i.cj = fptrunc double %i.ci to float
  store float %i.cj, ptr %i.cb, align 8, !tbaa !23
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !44
  %i.cm = load float, ptr %i.aq, align 4, !tbaa !23
  %i.cn = fpext float %i.cm to double
  %i.co = fmul double %i.cl, %i.cn
  %i.cp = fptrunc double %i.co to float
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 100
  store float %i.cp, ptr %i.cq, align 4, !tbaa !23
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !44
  %i.ct = load float, ptr %i.ay, align 8, !tbaa !23
  %i.cu = fpext float %i.ct to double
  %i.cv = fmul double %i.cs, %i.cu
  %i.cw = fptrunc double %i.cv to float
  br label %_ZNK22btGImpactMeshShapePart23TrimeshPrimitiveManager10get_vertexEiR9btVector3.exit8

bb.e:                                             ; preds = %_ZNK22btGImpactMeshShapePart23TrimeshPrimitiveManager11get_indicesEiRiS1_S1_.exit
  %i.cx = load float, ptr %i.ah, align 4, !tbaa !23
  %i.cy = fmul float %i.aj, %i.cx
  store float %i.cy, ptr %i.x, align 8, !tbaa !23
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.da = load float, ptr %i.cz, align 4, !tbaa !23
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !23
  %i.dd = fmul float %i.da, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 68
  store float %i.dd, ptr %i.de, align 4, !tbaa !23
  %i.df = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.dg = load float, ptr %i.df, align 4, !tbaa !23
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.di = load float, ptr %i.dh, align 8, !tbaa !23
  %i.dj = fmul float %i.dg, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 72
  store float %i.dj, ptr %i.dk, align 8, !tbaa !23
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.dm = mul nsw i32 %i.ae, %.sroa.5.0
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr %i.ac, i64 %i.dn ; 3 uses
  %i.dp = load float, ptr %i.ai, align 8, !tbaa !23
  %i.dq = load float, ptr %i.do, align 4, !tbaa !23
  %i.dr = fmul float %i.dp, %i.dq
  store float %i.dr, ptr %i.dl, align 8, !tbaa !23
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !23
  %i.du = load float, ptr %i.db, align 4, !tbaa !23
  %i.dv = fmul float %i.dt, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 84
  store float %i.dv, ptr %i.dw, align 4, !tbaa !23
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !23
  %i.dz = load float, ptr %i.dh, align 8, !tbaa !23
  %i.ea = fmul float %i.dy, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 88
  store float %i.ea, ptr %i.eb, align 8, !tbaa !23
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ed = mul nsw i32 %i.ae, %storemerge.i
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds i8, ptr %i.ac, i64 %i.ee ; 3 uses
  %i.eg = load float, ptr %i.ai, align 8, !tbaa !23
  %i.eh = load float, ptr %i.ef, align 4, !tbaa !23
  %i.ei = fmul float %i.eg, %i.eh
  store float %i.ei, ptr %i.ec, align 8, !tbaa !23
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !23
  %i.el = load float, ptr %i.db, align 4, !tbaa !23
  %i.em = fmul float %i.ek, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 100
  store float %i.em, ptr %i.en, align 4, !tbaa !23
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !23
  %i.eq = load float, ptr %i.dh, align 8, !tbaa !23
  %i.er = fmul float %i.ep, %i.eq
  br label %_ZNK22btGImpactMeshShapePart23TrimeshPrimitiveManager10get_vertexEiR9btVector3.exit8

_ZNK22btGImpactMeshShapePart23TrimeshPrimitiveManager10get_vertexEiR9btVector3.exit8: ; preds = %bb.d, %bb.e
  %.sink.i7 = phi float [ %i.cw, %bb.d ], [ %i.er, %bb.e ]
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 104
  store float %.sink.i7, ptr %i.es, align 8, !tbaa !23
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eu = load float, ptr %i.et, align 8, !tbaa !111
  %i.ev = load ptr, ptr %2, align 8, !tbaa !8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 80
  %i.ex = load ptr, ptr %i.ew, align 8
  tail call void %i.ex(ptr noundef nonnull align 8 dereferenceable(64) %2, float noundef %i.eu)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #10

attributes #0 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree nounwind }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !13, i64 16}
!11 = !{!"_ZTS20btAlignedObjectArrayIP16btCollisionShapeE", !12, i64 0, !5, i64 4, !5, i64 8, !13, i64 16, !16, i64 24}
!12 = !{!"_ZTS18btAlignedAllocatorIP16btCollisionShapeLj16EE"}
!13 = !{!"p2 _ZTS16btCollisionShape", !14, i64 0}
!14 = !{!"any p2 pointer", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"bool", !6, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 _ZTS16btCollisionShape", !15, i64 0}
!19 = !{!20, !22, i64 16}
!20 = !{!"_ZTS20btAlignedObjectArrayI11btTransformE", !21, i64 0, !5, i64 4, !5, i64 8, !22, i64 16, !16, i64 24}
!21 = !{!"_ZTS18btAlignedAllocatorI11btTransformLj16EE"}
!22 = !{!"p1 _ZTS11btTransform", !15, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"float", !6, i64 0}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZNK11btMatrix3x36scaledERK9btVector3: argument 0"}
!27 = distinct !{!27, !"_ZNK11btMatrix3x36scaledERK9btVector3"}
!28 = !{!"branch_weights", i32 1, i32 1048575}
!29 = !{i64 0, i64 16, !30}
!30 = !{!6, !6, i64 0}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZNK11btMatrix3x36scaledERK9btVector3: argument 0"}
!33 = distinct !{!33, !"_ZNK11btMatrix3x36scaledERK9btVector3"}
!34 = !{!35, !5, i64 56}
!35 = !{!"_ZTSN22btGImpactMeshShapePart23TrimeshPrimitiveManagerE", !36, i64 0, !24, i64 8, !37, i64 16, !38, i64 24, !5, i64 40, !5, i64 44, !39, i64 48, !5, i64 56, !40, i64 60, !5, i64 64, !39, i64 72, !5, i64 80, !5, i64 84, !40, i64 88}
!36 = !{!"_ZTS22btPrimitiveManagerBase"}
!37 = !{!"p1 _ZTS23btStridingMeshInterface", !15, i64 0}
!38 = !{!"_ZTS9btVector3", !6, i64 0}
!39 = !{!"p1 omnipotent char", !15, i64 0}
!40 = !{!"_ZTS14PHY_ScalarType", !6, i64 0}
!41 = !{!35, !40, i64 60}
!42 = !{!35, !39, i64 48}
!43 = !{!35, !5, i64 64}
!44 = !{!45, !45, i64 0}
!45 = !{!"double", !6, i64 0}
!46 = !{!47, !5, i64 4}
!47 = !{!"_ZTS20btAlignedObjectArrayIP22btGImpactMeshShapePartE", !48, i64 0, !5, i64 4, !5, i64 8, !49, i64 16, !16, i64 24}
!48 = !{!"_ZTS18btAlignedAllocatorIP22btGImpactMeshShapePartLj16EE"}
!49 = !{!"p2 _ZTS22btGImpactMeshShapePart", !14, i64 0}
!50 = !{!47, !49, i64 16}
!51 = !{!52, !52, i64 0}
!52 = !{!"p1 _ZTS22btGImpactMeshShapePart", !15, i64 0}
!53 = !{!54, !16, i64 24}
!54 = !{!"_ZTS20btAlignedObjectArrayIiE", !55, i64 0, !5, i64 4, !5, i64 8, !56, i64 16, !16, i64 24}
!55 = !{!"_ZTS18btAlignedAllocatorIiLj16EE"}
!56 = !{!"p1 int", !15, i64 0}
!57 = !{!54, !56, i64 16}
!58 = !{!54, !5, i64 4}
!59 = !{!54, !5, i64 8}
!60 = !{!61, !5, i64 216}
!61 = !{!"_ZTS22btGImpactMeshShapePart", !62, i64 0, !35, i64 176}
!62 = !{!"_ZTS23btGImpactShapeInterface", !63, i64 0, !65, i64 28, !16, i64 60, !38, i64 64, !66, i64 80}
!63 = !{!"_ZTS14btConcaveShape", !64, i64 0, !24, i64 24}
!64 = !{!"_ZTS16btCollisionShape", !5, i64 8, !15, i64 16}
!65 = !{!"_ZTS6btAABB", !38, i64 0, !38, i64 16}
!66 = !{!"_ZTS21btGImpactQuantizedBvh", !67, i64 0, !72, i64 88}
!67 = !{!"_ZTS18btQuantizedBvhTree", !5, i64 0, !68, i64 8, !65, i64 40, !38, i64 72}
!68 = !{!"_ZTS28GIM_QUANTIZED_BVH_NODE_ARRAY", !69, i64 0}
!69 = !{!"_ZTS20btAlignedObjectArrayI21BT_QUANTIZED_BVH_NODEE", !70, i64 0, !5, i64 4, !5, i64 8, !71, i64 16, !16, i64 24}
!70 = !{!"_ZTS18btAlignedAllocatorI21BT_QUANTIZED_BVH_NODELj16EE"}
!71 = !{!"p1 _ZTS21BT_QUANTIZED_BVH_NODE", !15, i64 0}
!72 = !{!"p1 _ZTS22btPrimitiveManagerBase", !15, i64 0}
!73 = !{!74, !24, i64 64}
!74 = !{!"_ZTS19btPrimitiveTriangle", !6, i64 0, !75, i64 48, !24, i64 64, !24, i64 68}
!75 = !{!"_ZTS9btVector4", !38, i64 0}
!76 = distinct !{null}
!77 = !{i8 0, i8 2}
!78 = !{!69, !71, i64 16}
!79 = !{ptr @_ZN23btGImpactShapeInterfaceD2Ev}
!80 = !{!63, !24, i64 24}
!81 = !{!62, !16, i64 60}
!82 = !{!67, !5, i64 0}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZNK21btGImpactQuantizedBvh12getGlobalBoxEv: argument 0"}
!85 = distinct !{!85, !"_ZNK21btGImpactQuantizedBvh12getGlobalBoxEv"}
!86 = !{!87, !87, i64 0}
!87 = !{!"short", !6, i64 0}
!88 = !{!11, !5, i64 4}
!89 = !{!20, !5, i64 4}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZNK11btTransformmlERKS_: argument 0"}
!92 = distinct !{!92, !"_ZNK11btTransformmlERKS_"}
!93 = !{!94, !91}
!94 = distinct !{!94, !95, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!95 = distinct !{!95, !"_ZmlRK11btMatrix3x3S1_"}
!96 = !{!61, !24, i64 184}
!97 = !{!35, !5, i64 84}
!98 = !{!66, !72, i64 88}
!99 = !{!35, !5, i64 44}
!100 = !{!35, !37, i64 16}
!101 = !{!35, !5, i64 40}
!102 = distinct !{null}
!103 = distinct !{null}
!104 = !{!47, !16, i64 24}
!105 = !{!47, !5, i64 8}
!106 = !{}
!107 = distinct !{null}
!108 = !{!35, !40, i64 88}
!109 = !{!35, !39, i64 72}
!110 = !{!35, !5, i64 80}
!111 = !{!35, !24, i64 8}
end_hunk_1
