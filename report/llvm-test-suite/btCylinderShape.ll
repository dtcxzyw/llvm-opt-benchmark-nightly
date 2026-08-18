inline.NumInlined: 156
inline.NumDeleted: 38
begin_hunk_0_@_ZN16btCylinderShapeXC2ERK9btVector3:bb.a
; Function Attrs: uwtable
define dso_local void @_ZN16btCylinderShapeZC2ERK9btVector3(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(68) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load float, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load float, ptr %i.g, align 8, !tbaa !19
  %i.i = fmul float %i.f, %i.h
  %i.j = load <2 x float>, ptr %1, align 4, !tbaa !19
  %i.k = load <2 x float>, ptr %i.d, align 8, !tbaa !19
  %i.l = fmul <2 x float> %i.j, %i.k
  %i.m = insertelement <2 x float> poison, float %i.c, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fsub <2 x float> %i.l, %i.n
  %i.p = fsub float %i.i, %i.c
  %.sroa.3.12.vec.insert.i12.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.p, i64 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %i.o, ptr %i.q, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %.sroa.3.12.vec.insert.i12.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 13, ptr %i.r, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTV16btCylinderShapeZ, i64 16), ptr %0, align 8, !tbaa !8
  store i32 2, ptr %i.a, align 8, !tbaa !10
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZNK15btCylinderShape7getAabbERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef float %i.d(ptr noundef nonnull align 8 dereferenceable(64) %0) ; 3 uses
  %i.f = load float, ptr %i.a, align 8, !tbaa !19
  %i.g = fadd float %i.e, %i.f                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load float, ptr %i.h, align 4, !tbaa !19
  %i.j = fadd float %i.e, %i.i                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load float, ptr %i.k, align 8, !tbaa !19
  %i.m = fadd float %i.e, %i.l                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !19, !noalias !22
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load float, ptr %i.q, align 4, !tbaa !19, !noalias !22
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load float, ptr %i.s, align 4, !tbaa !19, !noalias !22
  %i.u = tail call noundef float @llvm.fabs.f32(float %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.w = load <2 x float>, ptr %i.v, align 4, !tbaa !19, !noalias !22
  %i.x = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.w) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.7.0.copyload.i = load float, ptr %.sroa.7.0..sroa_idx.i, align 4 ; 2 uses
  %i.z = extractelement <2 x float> %i.x, i64 0
  %i.aa = fmul float %i.j, %i.z
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.u, float %i.g, float %i.aa)
  %i.ac = extractelement <2 x float> %i.x, i64 1
  %i.ad = tail call noundef float @llvm.fmuladd.f32(float %i.ac, float %i.m, float %i.ab) ; 2 uses
  %i.ae = load <2 x float>, ptr %1, align 4, !tbaa !19, !noalias !22 ; 2 uses
  %i.af = load <2 x float>, ptr %i.p, align 4, !tbaa !19, !noalias !22 ; 2 uses
  %i.ag = shufflevector <2 x float> %i.ae, <2 x float> %i.af, <2 x i32> <i32 0, i32 2>
  %i.ah = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ag)
  %i.ai = shufflevector <2 x float> %i.ae, <2 x float> %i.af, <2 x i32> <i32 1, i32 3>
  %i.aj = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ai)
  %i.ak = insertelement <2 x float> poison, float %i.o, i64 0
  %i.al = insertelement <2 x float> %i.ak, float %i.r, i64 1
  %i.am = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.al)
  %i.an = load <2 x float>, ptr %i.y, align 4     ; 2 uses
  %i.ao = insertelement <2 x float> poison, float %i.j, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x float> %i.ap, %i.aj
  %i.ar = insertelement <2 x float> poison, float %i.g, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.as, <2 x float> %i.aq)
  %i.au = insertelement <2 x float> poison, float %i.m, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.av, <2 x float> %i.at) ; 2 uses
  %i.ax = fsub <2 x float> %i.an, %i.aw
  %i.ay = fsub float %.sroa.7.0.copyload.i, %i.ad
  %.sroa.3.12.vec.insert.i9.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ay, i64 0
  store <2 x float> %i.ax, ptr %2, align 4
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i9.i, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !20
  %i.az = fadd <2 x float> %i.aw, %i.an
  %i.ba = fadd float %.sroa.7.0.copyload.i, %i.ad
  %.sroa.3.12.vec.insert.i14.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ba, i64 0
  store <2 x float> %i.az, ptr %3, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i14.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !20
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZNK15btCylinderShape21calculateLocalInertiaEfR9btVector3(ptr noundef nonnull align 8 dereferenceable(68) %0, float noundef %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.a, align 8
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.67.0.copyload.i = load <2 x float>, ptr %.sroa.67.0..sroa_idx.i, align 8, !tbaa !20
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef float %i.d(ptr noundef nonnull align 8 dereferenceable(68) %0), !inline_history !25
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef float %i.h(ptr noundef nonnull align 8 dereferenceable(68) %0), !inline_history !25
  %i.j = load ptr, ptr %0, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef float %i.l(ptr noundef nonnull align 8 dereferenceable(68) %0), !inline_history !25
  %.sroa.67.8.vec.extract.i = extractelement <2 x float> %.sroa.67.0.copyload.i, i64 0
  %i.n = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 poison>
  %i.o = insertelement <4 x float> %i.n, float 1.000000e+00, i64 3
  %i.p = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.i, i64 0
  %i.q = insertelement <4 x float> %i.p, float %i.e, i64 1
  %i.r = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.s = fadd <4 x float> %i.o, %i.r              ; 3 uses
  %i.t = fadd float %.sroa.67.8.vec.extract.i, %i.m
  %i.u = fmul <4 x float> %i.s, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00>
  %i.v = fmul <4 x float> %i.s, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00>
  %i.w = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.t, i64 0
  %i.x = shufflevector <4 x float> %i.w, <4 x float> %i.s, <4 x i32> <i32 0, i32 0, i32 4, i32 3>
  %i.y = fmul <4 x float> %i.x, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00> ; 2 uses
  %i.z = fdiv float %1, 1.200000e+01
  %i.aa = fmul <4 x float> %i.y, %i.y
  %i.ab = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.u, <4 x float> %i.v, <4 x float> %i.aa)
  %i.ac = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.z, i64 0
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ae = fmul <4 x float> %i.ad, %i.ab
  store <4 x float> %i.ae, ptr %2, align 4, !tbaa !19
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK16btCylinderShapeX37localGetSupportingVertexWithoutMarginERK9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load float, ptr %i.b, align 4, !tbaa !19 ; 2 uses
  %i.d = load float, ptr %i.a, align 8, !tbaa !19 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !19 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !19 ; 3 uses
  %i.i = fmul float %i.h, %i.h
  %i.j = tail call float @llvm.fmuladd.f32(float %i.f, float %i.f, float %i.i) ; 2 uses
  %i.k = fcmp une float %i.j, 0.000000e+00
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.j)
  %i.l = fdiv float %i.c, %sqrt.i                 ; 2 uses
  %i.m = fmul float %i.f, %i.l
  %i.n = load float, ptr %1, align 4, !tbaa !19
  %i.o = fcmp olt float %i.n, 0.000000e+00
  %i.p = fneg float %i.d
  %i.q = select i1 %i.o, float %i.p, float %i.d
  %i.r = insertelement <2 x float> poison, float %i.q, i64 0
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> %i.r, float %i.m, i64 1
  %i.s = fmul float %i.h, %i.l
  %.sroa.5.8.vec.insert.i = insertelement <2 x float> <float poison, float undef>, float %i.s, i64 0
  br label %_Z21CylinderLocalSupportXRK9btVector3S1_.exit

bb.c:                                             ; preds = %bb.a
  %i.t = load float, ptr %1, align 4, !tbaa !19
  %i.u = fcmp olt float %i.t, 0.000000e+00
  %i.v = fneg float %i.d
  %i.w = select i1 %i.u, float %i.v, float %i.d
  %i.x = insertelement <2 x float> poison, float %i.w, i64 0
  %.sroa.0.0.vec.insert22.i = insertelement <2 x float> %i.x, float %i.c, i64 1
  br label %_Z21CylinderLocalSupportXRK9btVector3S1_.exit

_Z21CylinderLocalSupportXRK9btVector3S1_.exit:    ; preds = %bb.b, %bb.c
  %.sroa.5.0.i = phi <2 x float> [ %.sroa.5.8.vec.insert.i, %bb.b ], [ <float 0.000000e+00, float undef>, %bb.c ]
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i, %bb.b ], [ %.sroa.0.0.vec.insert22.i, %bb.c ]
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %.sroa.5.0.i, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK16btCylinderShapeZ37localGetSupportingVertexWithoutMarginERK9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load float, ptr %i.a, align 8, !tbaa !19 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load float, ptr %i.c, align 8, !tbaa !19 ; 4 uses
  %2 = load float, ptr %1, align 4, !tbaa !19     ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %4 = load float, ptr %3, align 4, !tbaa !19     ; 3 uses
  %5 = fmul float %4, %4
  %i.e = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5) ; 2 uses
  %i.f = fcmp une float %i.e, 0.000000e+00
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.e)
  %i.g = fdiv float %i.b, %sqrt.i                 ; 2 uses
  %6 = fmul float %2, %i.g
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %6, i64 0
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !19
  %i.j = fcmp olt float %i.i, 0.000000e+00
  %i.k = fneg float %i.d
  %i.l = select i1 %i.j, float %i.k, float %i.d
  %.sroa.5.8.vec.insert.i.a = insertelement <2 x float> <float poison, float undef>, float %i.l, i64 0
  %7 = fmul float %4, %i.g
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %7, i64 1
  br label %_Z21CylinderLocalSupportZRK9btVector3S1_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !19
  %i.o = fcmp olt float %i.n, 0.000000e+00
  %i.p = fneg float %i.d
  %i.q = select i1 %i.o, float %i.p, float %i.d
  %.sroa.5.8.vec.insert27.i = insertelement <2 x float> <float poison, float undef>, float %i.q, i64 0
  %.sroa.0.4.vec.insert24.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.b, i64 0
  br label %_Z21CylinderLocalSupportZRK9btVector3S1_.exit

_Z21CylinderLocalSupportZRK9btVector3S1_.exit:    ; preds = %bb.b, %bb.c
  %.sroa.5.0.i = phi <2 x float> [ %.sroa.5.8.vec.insert.i.a, %bb.b ], [ %.sroa.5.8.vec.insert27.i, %bb.c ]
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i, %bb.b ], [ %.sroa.0.4.vec.insert24.i, %bb.c ]
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %.sroa.5.0.i, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK15btCylinderShape37localGetSupportingVertexWithoutMarginERK9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load float, ptr %i.a, align 8, !tbaa !19 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load float, ptr %i.c, align 4, !tbaa !19 ; 4 uses
  %i.e = load float, ptr %1, align 4, !tbaa !19   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !19 ; 3 uses
  %i.h = fmul float %i.g, %i.g
  %i.i = tail call float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.h) ; 2 uses
  %i.j = fcmp une float %i.i, 0.000000e+00
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.i)
  %i.k = fdiv float %i.b, %sqrt.i                 ; 2 uses
  %i.l = fmul float %i.e, %i.k
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.l, i64 0
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !19
  %i.o = fcmp olt float %i.n, 0.000000e+00
  %i.p = fneg float %i.d
  %i.q = select i1 %i.o, float %i.p, float %i.d
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.q, i64 1
  %i.r = fmul float %i.g, %i.k
  %.sroa.5.8.vec.insert.i = insertelement <2 x float> <float poison, float undef>, float %i.r, i64 0
  br label %_Z21CylinderLocalSupportYRK9btVector3S1_.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.vec.insert22.i = insertelement <2 x float> poison, float %i.b, i64 0
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = load float, ptr %i.s, align 4, !tbaa !19
  %i.u = fcmp olt float %i.t, 0.000000e+00
  %i.v = fneg float %i.d
  %i.w = select i1 %i.u, float %i.v, float %i.d
  %.sroa.0.4.vec.insert24.i = insertelement <2 x float> %.sroa.0.0.vec.insert22.i, float %i.w, i64 1
  br label %_Z21CylinderLocalSupportYRK9btVector3S1_.exit

_Z21CylinderLocalSupportYRK9btVector3S1_.exit:    ; preds = %bb.b, %bb.c
  %.sroa.5.0.i = phi <2 x float> [ %.sroa.5.8.vec.insert.i, %bb.b ], [ <float 0.000000e+00, float undef>, %bb.c ]
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i, %bb.b ], [ %.sroa.0.4.vec.insert24.i, %bb.c ]
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %.sroa.5.0.i, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZNK15btCylinderShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_Z21CylinderLocalSupportYRK9btVector3S1_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_Z21CylinderLocalSupportYRK9btVector3S1_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_Z21CylinderLocalSupportYRK9btVector3S1_.exit ] ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.e = load float, ptr %i.b, align 8, !tbaa !19 ; 2 uses
  %i.f = load float, ptr %i.c, align 4, !tbaa !19 ; 4 uses
  %i.g = load float, ptr %i.d, align 4, !tbaa !19 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !19 ; 3 uses
  %i.j = fmul float %i.i, %i.i
  %i.k = tail call float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.j) ; 2 uses
  %i.l = fcmp une float %i.k, 0.000000e+00
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.k)
  %i.m = fdiv float %i.e, %sqrt.i                 ; 2 uses
  %i.n = fmul float %i.g, %i.m
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.n, i64 0
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !19
  %i.q = fcmp olt float %i.p, 0.000000e+00
  %i.r = fneg float %i.f
  %i.s = select i1 %i.q, float %i.r, float %i.f
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.s, i64 1
  %i.t = fmul float %i.i, %i.m
  %.sroa.5.8.vec.insert.i = insertelement <2 x float> <float poison, float undef>, float %i.t, i64 0
  br label %_Z21CylinderLocalSupportYRK9btVector3S1_.exit

bb.d:                                             ; preds = %bb.b
  %.sroa.0.0.vec.insert22.i = insertelement <2 x float> poison, float %i.e, i64 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !19
  %i.w = fcmp olt float %i.v, 0.000000e+00
  %i.x = fneg float %i.f
  %i.y = select i1 %i.w, float %i.x, float %i.f
  %.sroa.0.4.vec.insert24.i = insertelement <2 x float> %.sroa.0.0.vec.insert22.i, float %i.y, i64 1
  br label %_Z21CylinderLocalSupportYRK9btVector3S1_.exit

_Z21CylinderLocalSupportYRK9btVector3S1_.exit:    ; preds = %bb.c, %bb.d
  %.sroa.5.0.i = phi <2 x float> [ %.sroa.5.8.vec.insert.i, %bb.c ], [ <float 0.000000e+00, float undef>, %bb.d ]
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i, %bb.c ], [ %.sroa.0.4.vec.insert24.i, %bb.d ]
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  store <2 x float> %.sroa.0.0.i, ptr %i.z, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store <2 x float> %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZNK16btCylinderShapeZ49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_Z21CylinderLocalSupportZRK9btVector3S1_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_Z21CylinderLocalSupportZRK9btVector3S1_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_Z21CylinderLocalSupportZRK9btVector3S1_.exit ] ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.e = load float, ptr %i.b, align 8, !tbaa !19 ; 2 uses
  %i.f = load float, ptr %i.c, align 8, !tbaa !19 ; 4 uses
  %i.g = load <2 x float>, ptr %i.d, align 4, !tbaa !19 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.g, %i.g
  %i.h = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.i = extractelement <2 x float> %i.g, i64 0   ; 2 uses
  %i.j = tail call float @llvm.fmuladd.f32(float %i.i, float %i.i, float %i.h) ; 2 uses
  %i.k = fcmp une float %i.j, 0.000000e+00
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.j)
  %i.l = fdiv float %i.e, %sqrt.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !19
  %i.o = fcmp olt float %i.n, 0.000000e+00
  %i.p = fneg float %i.f
  %i.q = select i1 %i.o, float %i.p, float %i.f
  %.sroa.5.8.vec.insert.i = insertelement <2 x float> <float poison, float undef>, float %i.q, i64 0
  %i.r = insertelement <2 x float> poison, float %i.l, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x float> %i.g, %i.s
  br label %_Z21CylinderLocalSupportZRK9btVector3S1_.exit

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.v = load float, ptr %i.u, align 4, !tbaa !19
  %i.w = fcmp olt float %i.v, 0.000000e+00
  %i.x = fneg float %i.f
  %i.y = select i1 %i.w, float %i.x, float %i.f
  %.sroa.5.8.vec.insert27.i = insertelement <2 x float> <float poison, float undef>, float %i.y, i64 0
  %.sroa.0.4.vec.insert24.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.e, i64 0
  br label %_Z21CylinderLocalSupportZRK9btVector3S1_.exit

_Z21CylinderLocalSupportZRK9btVector3S1_.exit:    ; preds = %bb.c, %bb.d
  %.sroa.5.0.i = phi <2 x float> [ %.sroa.5.8.vec.insert.i, %bb.c ], [ %.sroa.5.8.vec.insert27.i, %bb.d ]
  %.sroa.0.0.i = phi <2 x float> [ %i.t, %bb.c ], [ %.sroa.0.4.vec.insert24.i, %bb.d ]
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  store <2 x float> %.sroa.0.0.i, ptr %i.z, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store <2 x float> %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZNK16btCylinderShapeX49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_Z21CylinderLocalSupportXRK9btVector3S1_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_Z21CylinderLocalSupportXRK9btVector3S1_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_Z21CylinderLocalSupportXRK9btVector3S1_.exit ] ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 4 uses
end_hunk_0
