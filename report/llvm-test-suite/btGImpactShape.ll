Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btGImpactShape?download=true
inline.NumInlined: 343
inline.NumDeleted: 120
begin_hunk_0_@_ZNK23btGImpactShapeInterface7getAabbERK11btTransformR9btVector3S4_:bb.a
  %.sroa.0.0.copyload4 = load <2 x float>, ptr %i.a, align 4 ; 2 uses
  %.sroa.7.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.7.0.copyload6 = load <2 x float>, ptr %.sroa.7.0..sroa_idx5, align 4, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.9.16.copyload7 = load <2 x float>, ptr %i.b, align 4 ; 4 uses
  %.sroa.14.16..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.14.16.copyload9 = load <2 x float>, ptr %.sroa.14.16..sroa_idx8, align 4, !tbaa !30 ; 2 uses
  %.sroa.9.16.vec.extract = extractelement <2 x float> %.sroa.9.16.copyload7, i64 0
  %foldExtExtBinop = fadd <2 x float> %.sroa.0.0.copyload4, %.sroa.9.16.copyload7
  %i.c = extractelement <2 x float> %foldExtExtBinop, i64 0
  %.sroa.9.20.vec.extract = extractelement <2 x float> %.sroa.9.16.copyload7, i64 1
  %foldExtExtBinop11 = fadd <2 x float> %.sroa.0.0.copyload4, %.sroa.9.16.copyload7
  %i.d = extractelement <2 x float> %foldExtExtBinop11, i64 1
  %.sroa.14.24.vec.extract = extractelement <2 x float> %.sroa.14.16.copyload9, i64 0
  %i.e = extractelement <2 x float> %.sroa.7.0.copyload6, i64 0
  %i.f = extractelement <2 x float> %.sroa.14.16.copyload9, i64 0
  %i.g = fadd float %i.e, %i.f
  %i.h = fmul float %i.c, 5.000000e-01            ; 3 uses
  %i.i = fmul float %i.d, 5.000000e-01            ; 3 uses
  %i.j = fmul float %i.g, 5.000000e-01            ; 3 uses
  %i.k = fsub float %.sroa.9.16.vec.extract, %i.h ; 2 uses
  %i.l = fsub float %.sroa.9.20.vec.extract, %i.i ; 2 uses
  %i.m = fsub float %.sroa.14.24.vec.extract, %i.j ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load <4 x float>, ptr %i.n, align 4
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load float, ptr %i.s, align 4, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load float, ptr %i.u, align 4, !tbaa !23 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.x = load float, ptr %i.w, align 4, !tbaa !23 ; 2 uses
  %i.y = fmul float %i.i, %i.x
  %i.z = tail call float @llvm.fmuladd.f32(float %i.v, float %i.h, float %i.y)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !23 ; 2 uses
  %i.ac = tail call noundef float @llvm.fmuladd.f32(float %i.ab, float %i.j, float %i.z)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !23
  %i.af = fadd float %i.ae, %i.ac                 ; 2 uses
  %i.ag = tail call noundef float @llvm.fabs.f32(float %i.v)
  %i.ah = tail call noundef float @llvm.fabs.f32(float %i.x)
  %i.ai = tail call noundef float @llvm.fabs.f32(float %i.ab)
  %i.aj = fmul float %i.l, %i.ah
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.k, float %i.ag, float %i.aj)
  %i.al = tail call noundef float @llvm.fmuladd.f32(float %i.m, float %i.ai, float %i.ak) ; 2 uses
  %i.am = fsub float %i.af, %i.al
  %.sroa.3.12.vec.insert.i41.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.am, i64 0
  %i.an = load <2 x float>, ptr %1, align 4, !tbaa !23 ; 2 uses
  %i.ao = load <2 x float>, ptr %i.r, align 4, !tbaa !23 ; 2 uses
  %i.ap = insertelement <2 x float> poison, float %i.i, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = shufflevector <2 x float> %i.an, <2 x float> %i.ao, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.as = fmul <2 x float> %i.aq, %i.ar
  %i.at = shufflevector <2 x float> %i.an, <2 x float> %i.ao, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.au = insertelement <2 x float> poison, float %i.h, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.av, <2 x float> %i.as)
  %i.ax = insertelement <2 x float> %i.p, float %i.t, i64 1 ; 2 uses
  %i.ay = insertelement <2 x float> poison, float %i.j, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.az, <2 x float> %i.aw)
  %i.bb = load <2 x float>, ptr %i.q, align 4, !tbaa !23
  %i.bc = fadd <2 x float> %i.bb, %i.ba           ; 2 uses
  %i.bd = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.at)
  %i.be = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ar)
  %i.bf = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ax)
  %i.bg = insertelement <2 x float> poison, float %i.l, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x float> %i.bh, %i.be
  %i.bj = insertelement <2 x float> poison, float %i.k, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.bd, <2 x float> %i.bi)
  %i.bm = insertelement <2 x float> poison, float %i.m, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bf, <2 x float> %i.bl) ; 2 uses
  %i.bp = fsub <2 x float> %i.bc, %i.bo
  %i.bq = fadd <2 x float> %i.bc, %i.bo
  %i.br = fadd float %i.af, %i.al
  %.sroa.3.12.vec.insert.i46.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.br, i64 0
  store <2 x float> %i.bp, ptr %2, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i41.i, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !30
  store <2 x float> %i.bq, ptr %3, align 4
  %.sroa.14.16..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i46.i, ptr %.sroa.14.16..sroa_idx, align 4, !tbaa !30
  ret void
}

declare void @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #4

declare noundef float @_ZNK16btCollisionShape20getAngularMotionDiscEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

declare noundef float @_ZNK16btCollisionShape27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN23btGImpactShapeInterface15setLocalScalingERK9btVector3(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !29
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(176) %0)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK23btGImpactShapeInterface15getLocalScalingEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK22btGImpactCompoundShape7getNameEv(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret ptr @.str
}

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
  %1 = load <4 x float>, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.r = load float, ptr %i.q, align 8, !tbaa !23, !noalias !83 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.u = load i16, ptr %i.t, align 2, !tbaa !86, !noalias !83
  %i.v = insertelement <2 x i16> poison, i16 %i.o, i64 0
  %i.w = insertelement <2 x i16> %i.v, i16 %i.u, i64 1
  %i.x = uitofp <2 x i16> %i.w to <2 x float>
  %i.y = shufflevector <4 x float> %1, <4 x float> poison, <2 x i32> zeroinitializer
  %i.z = fdiv <2 x float> %i.x, %i.y              ; 2 uses
  %i.aa = extractelement <2 x float> %i.z, i64 0
  %i.ab = fadd float %i.aa, %i.r
  %.sroa.7.8.vec.insert19.i.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ab, i64 0
  %i.ac = load <2 x float>, ptr %i.m, align 8, !tbaa !23, !noalias !83 ; 2 uses
  %i.ad = load <2 x float>, ptr %i.l, align 8, !tbaa !23, !noalias !83 ; 2 uses
  %i.ae = load <2 x i16>, ptr %i.k, align 2, !tbaa !86, !noalias !83
  %i.af = uitofp <2 x i16> %i.ae to <2 x float>
  %i.ag = fdiv <2 x float> %i.af, %i.ac
  %i.ah = fadd <2 x float> %i.ag, %i.ad
  %i.ai = load <2 x i16>, ptr %i.s, align 2, !tbaa !86, !noalias !83
  %i.aj = uitofp <2 x i16> %i.ai to <2 x float>
  %i.ak = fdiv <2 x float> %i.aj, %i.ac
  %i.al = fadd <2 x float> %i.ad, %i.ak
  %i.am = extractelement <2 x float> %i.z, i64 1
  %i.an = fadd float %i.r, %i.am
  %.sroa.7.8.vec.insert19.i7.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.an, i64 0
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <2 x float> %i.ah, ptr %i.ao, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store <2 x float> %.sroa.7.8.vec.insert19.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !30
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store <2 x float> %i.al, ptr %.sroa.5.0..sroa_idx, align 4
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
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aa = load float, ptr %i.z, align 4, !tbaa !23, !noalias !93 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !23, !noalias !90 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !23, !noalias !90 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.ag = load float, ptr %i.af, align 4, !tbaa !23, !noalias !90 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !23, !noalias !90
  %i.ak = load <2 x float>, ptr %2, align 4, !tbaa !23, !noalias !93 ; 4 uses
  %i.al = load <2 x float>, ptr %i.l, align 4, !tbaa !23, !noalias !93 ; 2 uses
  %i.am = load <2 x float>, ptr %i.m, align 4, !tbaa !23, !noalias !93 ; 3 uses
  %i.an = load <2 x float>, ptr %i.o, align 4, !tbaa !23, !noalias !93 ; 2 uses
  %i.ao = shufflevector <2 x float> %i.am, <2 x float> %i.ak, <4 x i32> <i32 0, i32 3, i32 3, i32 poison>
  %i.ap = insertelement <4 x float> %i.ao, float 0.000000e+00, i64 3
  %i.aq = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ar = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.aq, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.as = shufflevector <2 x float> %i.am, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.at = shufflevector <4 x float> %i.ar, <4 x float> %i.as, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.au = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.av = insertelement <4 x float> %i.au, float 0.000000e+00, i64 3
  %i.aw = shufflevector <2 x float> %i.ak, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ax = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ay = insertelement <4 x float> %i.ax, float 0.000000e+00, i64 3
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ba = load <2 x float>, ptr %i.v, align 4, !tbaa !23, !noalias !93 ; 3 uses
  %i.bb = load <2 x float>, ptr %i.q, align 4, !tbaa !23, !noalias !93 ; 2 uses
  %i.bc = load float, ptr %i.t, align 4, !tbaa !23, !noalias !93
  %i.bd = load <2 x float>, ptr %i.p, align 4, !tbaa !23, !noalias !93 ; 2 uses
  %i.be = load float, ptr %i.s, align 4, !tbaa !23, !noalias !93
  %i.bf = load <2 x float>, ptr %i.r, align 4, !tbaa !23, !noalias !93 ; 2 uses
  %i.bg = load float, ptr %i.u, align 4, !tbaa !23, !noalias !93
  %i.bh = load <2 x float>, ptr %i.ah, align 4, !tbaa !23, !noalias !90
  %i.bi = load <2 x float>, ptr %i.n, align 4, !tbaa !23, !noalias !93 ; 3 uses
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.bl = load <2 x float>, ptr %i.w, align 4, !tbaa !23, !noalias !93 ; 3 uses
  %i.bm = shufflevector <2 x float> %i.bi, <2 x float> %i.bl, <2 x i32> <i32 0, i32 2>
  %i.bn = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x float> %i.bm, %i.bo
  %i.bq = shufflevector <2 x float> %i.ak, <2 x float> %i.ba, <2 x i32> <i32 0, i32 2>
  %i.br = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.bs, <2 x float> %i.bp)
  %i.bu = shufflevector <2 x float> %i.bi, <2 x float> %i.bl, <2 x i32> <i32 1, i32 3>
  %i.bv = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bw, <2 x float> %i.bt)
  %i.by = fadd <2 x float> %i.bh, %i.bx
  %i.bz = shufflevector <2 x float> %i.bb, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ca = shufflevector <4 x float> %i.at, <4 x float> %i.bz, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cb = fmul <4 x float> %i.ap, %i.ca
  %i.cc = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cd = shufflevector <4 x float> %i.av, <4 x float> %i.cc, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ce = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cd, <4 x float> %i.aw, <4 x float> %i.cb)
end_hunk_0
begin_hunk_1_@_ZN22btGImpactMeshShapePart15setLocalScalingERK9btVector3:bb.a

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
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN22btGImpactMeshShapePart9setMarginEf(ptr noundef nonnull align 8 dereferenceable(272) %0, float noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  store float %1, ptr %i.a, align 8, !tbaa !96
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(176) %0)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local noundef float @_ZNK22btGImpactMeshShapePart9getMarginEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load float, ptr %i.a, align 8, !tbaa !96
  ret float %i.b
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN22btGImpactMeshShapePart19getGImpactShapeTypeEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK22btGImpactMeshShapePart19getPrimitiveManagerEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  ret ptr %i.a
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZNK22btGImpactMeshShapePart17getNumChildShapesEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.b = load i32, ptr %i.a, align 4, !tbaa !97
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK22btGImpactMeshShapePart20childrenHasTransformEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK22btGImpactMeshShapePart22needsRetrieveTrianglesEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK22btGImpactMeshShapePart25needsRetrieveTetrahedronsEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK22btGImpactMeshShapePart17getBulletTriangleEiR17btTriangleShapeEx(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(112) %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @_ZNK22btGImpactMeshShapePart23TrimeshPrimitiveManager19get_bullet_triangleEiR17btTriangleShapeEx(ptr noundef nonnull align 8 dereferenceable(92) %i.a, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(112) %2)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNK22btGImpactMeshShapePart20getBulletTetrahedronEiR20btTetrahedronShapeEx(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(168) %2) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK22btGImpactMeshShapePart15lockChildShapesEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !99   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw nsw i32 %i.d, 1
  br label %_ZN22btGImpactMeshShapePart23TrimeshPrimitiveManager4lockEv.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !100  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !101
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.p, i32 noundef %i.r), !inline_history !102
  br label %_ZN22btGImpactMeshShapePart23TrimeshPrimitiveManager4lockEv.exit

_ZN22btGImpactMeshShapePart23TrimeshPrimitiveManager4lockEv.exit: ; preds = %bb.b, %bb.c
  %storemerge.i = phi i32 [ 1, %bb.c ], [ %i.f, %bb.b ]
  store i32 %storemerge.i, ptr %i.c, align 4, !tbaa !99
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK22btGImpactMeshShapePart17unlockChildShapesEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !99   ; 3 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN22btGImpactMeshShapePart23TrimeshPrimitiveManager6unlockEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %i.d, 1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %i.d, -1
  br label %.sink.split.i

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !100  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !101
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i32 noundef %i.k), !inline_history !103
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr null, ptr %i.o, align 8, !tbaa !42
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.d, %bb.c
  %.sink.i = phi i32 [ 0, %bb.d ], [ %i.g, %bb.c ]
  store i32 %.sink.i, ptr %i.c, align 4, !tbaa !99
  br label %_ZN22btGImpactMeshShapePart23TrimeshPrimitiveManager6unlockEv.exit

_ZN22btGImpactMeshShapePart23TrimeshPrimitiveManager6unlockEv.exit: ; preds = %bb.a, %.sink.split.i
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK23btGImpactShapeInterface12getChildAabbEiRK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %class.btAABB, align 8              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(176) %0) ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(32) %5)
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.i = load float, ptr %i.h, align 8, !tbaa !23 ; 2 uses
  %i.j = load float, ptr %5, align 8, !tbaa !23
  %i.k = fadd float %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.m = load float, ptr %i.l, align 4, !tbaa !23 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !23
  %i.p = fadd float %i.m, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.r = load float, ptr %i.q, align 8, !tbaa !23 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.t = load float, ptr %i.s, align 8, !tbaa !23
  %i.u = fadd float %i.r, %i.t
  %i.v = fmul float %i.k, 5.000000e-01            ; 3 uses
  %i.w = fmul float %i.p, 5.000000e-01            ; 3 uses
  %i.x = fmul float %i.u, 5.000000e-01            ; 3 uses
  %i.y = fsub float %i.i, %i.v                    ; 2 uses
  %i.z = fsub float %i.m, %i.w                    ; 2 uses
  %i.aa = fsub float %i.r, %i.x                   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %6 = load <4 x float>, ptr %i.ab, align 4
  %7 = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.af = load float, ptr %i.ae, align 4, !tbaa !23
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !23 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !23 ; 2 uses
  %i.ak = fmul float %i.w, %i.aj
  %i.al = call float @llvm.fmuladd.f32(float %i.ah, float %i.v, float %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.an = load float, ptr %i.am, align 4, !tbaa !23 ; 2 uses
  %i.ao = call noundef float @llvm.fmuladd.f32(float %i.an, float %i.x, float %i.al)
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !23
  %i.ar = fadd float %i.aq, %i.ao                 ; 2 uses
  %i.as = call noundef float @llvm.fabs.f32(float %i.ah)
  %i.at = call noundef float @llvm.fabs.f32(float %i.aj)
  %i.au = call noundef float @llvm.fabs.f32(float %i.an)
  %i.av = fmul float %i.z, %i.at
  %i.aw = call float @llvm.fmuladd.f32(float %i.y, float %i.as, float %i.av)
  %i.ax = call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.au, float %i.aw) ; 2 uses
  %i.ay = load <2 x float>, ptr %2, align 4, !tbaa !23 ; 2 uses
  %i.az = load <2 x float>, ptr %i.ad, align 4, !tbaa !23 ; 2 uses
  %i.ba = insertelement <2 x float> poison, float %i.w, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = shufflevector <2 x float> %i.ay, <2 x float> %i.az, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bd = fmul <2 x float> %i.bb, %i.bc
  %i.be = shufflevector <2 x float> %i.ay, <2 x float> %i.az, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bf = insertelement <2 x float> poison, float %i.v, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.bg, <2 x float> %i.bd)
  %i.bi = insertelement <2 x float> %7, float %i.af, i64 1 ; 2 uses
  %i.bj = insertelement <2 x float> poison, float %i.x, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bk, <2 x float> %i.bh)
  %i.bm = load <2 x float>, ptr %i.ac, align 4, !tbaa !23
  %i.bn = fadd <2 x float> %i.bm, %i.bl           ; 2 uses
  %i.bo = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.be)
  %i.bp = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bc)
  %i.bq = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bi)
  %i.br = insertelement <2 x float> poison, float %i.z, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = fmul <2 x float> %i.bs, %i.bp
  %i.bu = insertelement <2 x float> poison, float %i.y, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.bo, <2 x float> %i.bt)
  %i.bx = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.bq, <2 x float> %i.bw) ; 2 uses
  %i.ca = fsub <2 x float> %i.bn, %i.bz
  %i.cb = fsub float %i.ar, %i.ax
  %.sroa.3.12.vec.insert.i41.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cb, i64 0
  store <2 x float> %i.ca, ptr %5, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i41.i, ptr %i.s, align 8, !tbaa !30
  %i.cc = fadd <2 x float> %i.bn, %i.bz
  %i.cd = fadd float %i.ar, %i.ax
  %.sroa.3.12.vec.insert.i46.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cd, i64 0
  store <2 x float> %i.cc, ptr %i.h, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i46.i, ptr %i.q, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN22btGImpactMeshShapePart13getChildShapeEi(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK22btGImpactMeshShapePart13getChildShapeEi(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK22btGImpactMeshShapePart17getChildTransformEi(ptr dead_on_unwind noalias writable sret(%class.btTransform) align 4 %0, ptr noundef nonnull align 8 dereferenceable(272) %1, i32 noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN22btGImpactMeshShapePart17setChildTransformEiRK11btTransform(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %2) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN18btGImpactMeshShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTV18btGImpactMeshShape, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !46   ; 2 uses
  %.not16 = icmp eq i32 %i.b, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = sext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.d, %.lr.ph ], [ %indvars.iv.next, %bb.d ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.f = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !51   ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(272) %i.g)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not, label %._crit_edge, label %bb.b

bb.e:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !50   ; 2 uses
  %.not.i.i = icmp ne ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !range !77
  %i.r = trunc nuw i8 %i.q to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.r, i1 false
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.o)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %._crit_edge, %bb.g
  store i8 1, ptr %i.p, align 8, !tbaa !104
  store ptr null, ptr %i.n, align 8, !tbaa !50
  store i32 0, ptr %i.a, align 4, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 0, ptr %i.s, align 8, !tbaa !105
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTV23btGImpactShapeInterface, i64 16), ptr %0, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !78   ; 2 uses
  %.not.i.i.i.i.i.i = icmp ne ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.w = load i8, ptr %i.v, align 8, !range !77
  %i.x = trunc nuw i8 %i.w to i1
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %i.x, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.i, label %_ZN23btGImpactShapeInterfaceD2Ev.exit

bb.i:                                             ; preds = %bb.h
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.u)
          to label %_ZN23btGImpactShapeInterfaceD2Ev.exit unwind label %bb.j, !inline_history !79

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN14btConcaveShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0)
          to label %common.resume unwind label %bb.k, !inline_history !79

common.resume:                                    ; preds = %_ZN20btAlignedObjectArrayIP22btGImpactMeshShapePartED2Ev.exit15, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.j ], [ %.pn, %_ZN20btAlignedObjectArrayIP22btGImpactMeshShapePartED2Ev.exit15 ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #17, !inline_history !79
  unreachable

_ZN23btGImpactShapeInterfaceD2Ev.exit:            ; preds = %bb.h, %bb.i
  tail call void @_ZN14btConcaveShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0), !inline_history !79
  ret void

bb.l:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.l, %bb.e ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i12 = icmp ne ptr %i.ac, null
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ae = load i8, ptr %i.ad, align 8, !range !77
  %i.af = trunc nuw i8 %i.ae to i1
  %or.cond.i.i13 = select i1 %.not.i.i.i12, i1 %i.af, i1 false
  br i1 %or.cond.i.i13, label %bb.m, label %_ZN20btAlignedObjectArrayIP22btGImpactMeshShapePartED2Ev.exit15

bb.m:                                             ; preds = %bb.l
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ac)
          to label %_ZN20btAlignedObjectArrayIP22btGImpactMeshShapePartED2Ev.exit15 unwind label %bb.n

_ZN20btAlignedObjectArrayIP22btGImpactMeshShapePartED2Ev.exit15: ; preds = %bb.l, %bb.m
  invoke void @_ZN23btGImpactShapeInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN20btAlignedObjectArrayIP22btGImpactMeshShapePartED2Ev.exit15
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #17
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN18btGImpactMeshShapeD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN18btGImpactMeshShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(216) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #18
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #18
  resume { ptr, i32 } %i.a
}
end_hunk_1
