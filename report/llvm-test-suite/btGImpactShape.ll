Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btGImpactShape?download=true
inline.NumInlined: 343
inline.NumDeleted: 120
begin_hunk_0_@_ZN23btGImpactShapeInterface9setMarginEf:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %i.f) ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(24) %i.j, float noundef %1)
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 1, ptr %i.n, align 4, !tbaa !62
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef float @_ZNK14btConcaveShape9getMarginEv(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load float, ptr %i.a, align 8, !tbaa !61
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(176) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !91
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN21btGImpactQuantizedBvh8buildSetEv(ptr noundef nonnull align 8 dereferenceable(96) %i.d)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN21btGImpactQuantizedBvh5refitEv(ptr noundef nonnull align 8 dereferenceable(96) %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(176) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59, !noalias !92 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.o = load i16, ptr %i.n, align 2, !tbaa !64, !noalias !92
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.q = load float, ptr %i.p, align 8, !tbaa !24, !noalias !92
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = load float, ptr %i.r, align 8, !tbaa !24, !noalias !92 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.v = load i16, ptr %i.u, align 2, !tbaa !64, !noalias !92
  %i.w = insertelement <2 x i16> poison, i16 %i.o, i64 0
  %i.x = insertelement <2 x i16> %i.w, i16 %i.v, i64 1
  %i.y = uitofp <2 x i16> %i.x to <2 x float>
  %i.z = insertelement <2 x float> poison, float %i.q, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fdiv <2 x float> %i.y, %i.aa            ; 2 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 0
  %i.ad = fadd float %i.ac, %i.s
  %.sroa.7.8.vec.insert19.i.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ad, i64 0
  %i.ae = load <2 x float>, ptr %i.m, align 8, !tbaa !24, !noalias !92 ; 2 uses
  %i.af = load <2 x float>, ptr %i.l, align 8, !tbaa !24, !noalias !92 ; 2 uses
  %i.ag = load <2 x i16>, ptr %i.k, align 2, !tbaa !64, !noalias !92
  %i.ah = uitofp <2 x i16> %i.ag to <2 x float>
  %i.ai = fdiv <2 x float> %i.ah, %i.ae
  %i.aj = fadd <2 x float> %i.ai, %i.af
  %i.ak = load <2 x i16>, ptr %i.t, align 2, !tbaa !64, !noalias !92
  %i.al = uitofp <2 x i16> %i.ak to <2 x float>
  %i.am = fdiv <2 x float> %i.al, %i.ae
  %i.an = fadd <2 x float> %i.af, %i.am
  %i.ao = extractelement <2 x float> %i.ab, i64 1
  %i.ap = fadd float %i.s, %i.ao
  %.sroa.7.8.vec.insert19.i7.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ap, i64 0
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <2 x float> %i.aj, ptr %i.aq, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store <2 x float> %.sroa.7.8.vec.insert19.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !26
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store <2 x float> %i.an, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store <2 x float> %.sroa.7.8.vec.insert19.i7.i.i.i, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !26
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN23btGImpactShapeInterface10postUpdateEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 1, ptr %i.a, align 4, !tbaa !62
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !93
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK22btGImpactCompoundShape20childrenHasTransformEv(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.b = load i32, ptr %i.a, align 4, !tbaa !94
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.g = sext i32 %1 to i64                       ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18   ; 4 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.l = getelementptr inbounds [64 x i8], ptr %i.k, i64 %i.g ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
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
  %i.aa = load float, ptr %i.z, align 4, !tbaa !24, !noalias !100 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %7 = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !24, !noalias !99
  %i.af = load <2 x float>, ptr %2, align 4, !tbaa !24, !noalias !100 ; 4 uses
  %i.ag = load <2 x float>, ptr %i.l, align 4, !tbaa !24, !noalias !100 ; 2 uses
  %i.ah = load <2 x float>, ptr %i.m, align 4, !tbaa !24, !noalias !100 ; 3 uses
  %i.ai = load <2 x float>, ptr %i.o, align 4, !tbaa !24, !noalias !100 ; 2 uses
  %i.aj = shufflevector <2 x float> %i.ah, <2 x float> %i.af, <4 x i32> <i32 0, i32 3, i32 3, i32 poison>
  %i.ak = insertelement <4 x float> %i.aj, float 0.000000e+00, i64 3
  %i.al = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.am = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.al, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.an = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ao = shufflevector <4 x float> %i.am, <4 x float> %i.an, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.ap = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aq = insertelement <4 x float> %i.ap, float 0.000000e+00, i64 3
  %i.ar = shufflevector <2 x float> %i.af, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.as = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.at = insertelement <4 x float> %i.as, float 0.000000e+00, i64 3
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.av = load <2 x float>, ptr %i.v, align 4, !tbaa !24, !noalias !100 ; 3 uses
  %i.aw = load <2 x float>, ptr %i.q, align 4, !tbaa !24, !noalias !100 ; 2 uses
  %i.ax = load float, ptr %i.t, align 4, !tbaa !24, !noalias !100
  %i.ay = load <2 x float>, ptr %i.p, align 4, !tbaa !24, !noalias !100 ; 2 uses
  %i.az = load float, ptr %i.s, align 4, !tbaa !24, !noalias !100
  %i.ba = load <2 x float>, ptr %i.r, align 4, !tbaa !24, !noalias !100 ; 2 uses
  %8 = load float, ptr %i.u, align 4, !tbaa !24, !noalias !100
  %i.bb = load float, ptr %7, align 4, !tbaa !24, !noalias !99 ; 2 uses
  %9 = load float, ptr %6, align 4, !tbaa !24, !noalias !99 ; 2 uses
  %i.bc = load float, ptr %i.ab, align 4, !tbaa !24, !noalias !99 ; 2 uses
  %i.bd = load <2 x float>, ptr %i.ac, align 4, !tbaa !24, !noalias !99
  %i.be = load <2 x float>, ptr %i.n, align 4, !tbaa !24, !noalias !100 ; 3 uses
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.bh = load <2 x float>, ptr %i.w, align 4, !tbaa !24, !noalias !100 ; 3 uses
  %i.bi = shufflevector <2 x float> %i.be, <2 x float> %i.bh, <2 x i32> <i32 0, i32 2>
  %10 = insertelement <2 x float> poison, float %i.bb, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = fmul <2 x float> %i.bi, %11
  %i.bk = shufflevector <2 x float> %i.af, <2 x float> %i.av, <2 x i32> <i32 0, i32 2>
  %12 = insertelement <2 x float> poison, float %9, i64 0
  %i.bl = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.bl, <2 x float> %i.bj)
  %i.bn = shufflevector <2 x float> %i.be, <2 x float> %i.bh, <2 x i32> <i32 1, i32 3>
  %13 = insertelement <2 x float> poison, float %i.bc, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %14, <2 x float> %i.bm)
  %i.bp = fadd <2 x float> %i.bd, %i.bo
  %i.bq = shufflevector <2 x float> %i.aw, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.br = shufflevector <4 x float> %i.ao, <4 x float> %i.bq, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bs = fmul <4 x float> %i.ak, %i.br
  %i.bt = shufflevector <2 x float> %i.ay, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bu = shufflevector <4 x float> %i.aq, <4 x float> %i.bt, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bu, <4 x float> %i.ar, <4 x float> %i.bs)
  %i.bw = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bx = shufflevector <4 x float> %i.at, <4 x float> %i.bw, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.by = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bx, <4 x float> %i.bg, <4 x float> %i.bv)
  %i.bz = shufflevector <2 x float> %i.av, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ca = shufflevector <2 x float> %i.ah, <2 x float> %i.aw, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cb = insertelement <4 x float> %i.ca, float 1.000000e+00, i64 3 ; 2 uses
  %i.cc = fmul <4 x float> %i.bz, %i.cb
  %i.cd = shufflevector <2 x float> %i.ag, <2 x float> %i.ay, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ce = insertelement <4 x float> %i.cd, float 0.000000e+00, i64 3 ; 2 uses
  %i.cf = shufflevector <2 x float> %i.av, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.cg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ce, <4 x float> %i.cf, <4 x float> %i.cc)
  %i.ch = shufflevector <2 x float> %i.ai, <2 x float> %i.ba, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ci = insertelement <4 x float> %i.ch, float 0.000000e+00, i64 3 ; 2 uses
  %i.cj = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ci, <4 x float> %i.ck, <4 x float> %i.cg)
  store <4 x float> %i.by, ptr %5, align 16, !alias.scope !99
  store <4 x float> %i.cl, ptr %i.au, align 16, !alias.scope !99
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cn = load <2 x float>, ptr %i.x, align 4, !tbaa !24, !noalias !100 ; 4 uses
  %i.co = load float, ptr %i.y, align 4, !tbaa !24, !noalias !100
  %i.cp = fmul float %i.co, %i.bb
  %i.cq = extractelement <2 x float> %i.cn, i64 0
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.cq, float %9, float %i.cp)
  %i.cs = tail call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.bc, float %i.cr)
  %i.ct = fadd float %i.cs, %i.ae
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ct, i64 0
  %i.cu = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.cv = insertelement <4 x float> %i.cu, float 0.000000e+00, i64 3
  %i.cw = insertelement <4 x float> %i.cv, float %i.ax, i64 2
  %i.cx = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cy = shufflevector <4 x float> %i.cb, <4 x float> %i.cx, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cz = fmul <4 x float> %i.cw, %i.cy
  %i.da = insertelement <4 x float> %i.ce, float %i.az, i64 2
  %i.db = shufflevector <2 x float> %i.cn, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.dc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.da, <4 x float> %i.db, <4 x float> %i.cz)
  %i.dd = insertelement <4 x float> %i.ci, float %8, i64 2
  %i.de = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.aa, i64 0
  %i.df = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %i.df, <4 x float> %i.dc)
  store <4 x float> %i.dg, ptr %i.cm, align 16, !alias.scope !99
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 48
  store <2 x float> %i.bp, ptr %i.dh, align 16, !alias.scope !99
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !26, !alias.scope !99
  %i.di = load ptr, ptr %i.i, align 8, !tbaa !9
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.dl = load ptr, ptr %i.i, align 8, !tbaa !9
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  tail call void %i.dn(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef ptr @_ZN22btGImpactCompoundShape13getChildShapeEi(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  ret ptr %i.e
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef ptr @_ZNK22btGImpactCompoundShape13getChildShapeEi(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  ret ptr %i.e
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK22btGImpactCompoundShape17getChildTransformEi(ptr dead_on_unwind noalias writable sret(%class.btTransform) align 4 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, i32 noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.c ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %i.d, i64 16, i1 false), !tbaa.struct !27
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !27
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN22btGImpactCompoundShape17setChildTransformEiRK11btTransform(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.c ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.d, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !27
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !27
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !27
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !27
  %i.k = load ptr, ptr %0, align 8, !tbaa !9
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
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTV23btGImpactShapeInterface, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %.not.i.i.i.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i8, ptr %i.c, align 8, !range !58
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.b, label %_ZN23btGImpactShapeInterfaceD2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN23btGImpactShapeInterfaceD2Ev.exit unwind label %bb.c, !inline_history !60

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN14btConcaveShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0)
          to label %bb.d unwind label %bb.e, !inline_history !60

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #17, !inline_history !60
  unreachable

_ZN23btGImpactShapeInterfaceD2Ev.exit:            ; preds = %bb.a, %bb.b
  tail call void @_ZN14btConcaveShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0), !inline_history !60
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN22btGImpactMeshShapePartD0Ev(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTV23btGImpactShapeInterface, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i8, ptr %i.c, align 8, !range !58
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %bb.b, label %_ZN23btGImpactShapeInterfaceD2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN23btGImpactShapeInterfaceD2Ev.exit.i unwind label %bb.c, !inline_history !60

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN14btConcaveShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(272) %0)
          to label %.body unwind label %bb.d, !inline_history !60

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #17, !inline_history !60
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !27
  %i.b = load ptr, ptr %0, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(176) %0)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK22btGImpactMeshShapePart15getLocalScalingEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #7 comdat align 2 {
bb.a:
end_hunk_0
