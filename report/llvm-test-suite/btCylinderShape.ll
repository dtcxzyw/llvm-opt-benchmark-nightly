inline.NumInlined: 156
inline.NumDeleted: 38
begin_hunk_0_@_ZN15btCylinderShapeC2ERK9btVector3:bb.a
bb.a:
  tail call void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTV15btCylinderShape, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 1, ptr %i.a, align 8, !tbaa !10
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
  %.sroa.3.12.vec.insert.i12 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.p, i64 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %i.o, ptr %i.q, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %.sroa.3.12.vec.insert.i12, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 13, ptr %i.r, align 8, !tbaa !21
  ret void
}

declare void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #9 ; 0 uses
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

; Function Attrs: uwtable
define dso_local void @_ZN16btCylinderShapeXC2ERK9btVector3(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTV16btCylinderShapeX, i64 16), ptr %0, align 8, !tbaa !8
  store i32 0, ptr %i.a, align 8, !tbaa !10
  ret void
}

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
  %i.w = load float, ptr %i.v, align 4, !tbaa !19, !noalias !22
  %i.x = tail call noundef float @llvm.fabs.f32(float %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load float, ptr %i.y, align 4, !tbaa !19, !noalias !22
  %i.aa = tail call noundef float @llvm.fabs.f32(float %i.z)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.7.0.copyload.i = load float, ptr %.sroa.7.0..sroa_idx.i, align 4 ; 2 uses
  %i.ac = fmul float %i.j, %i.x
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.u, float %i.g, float %i.ac)
  %i.ae = tail call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.m, float %i.ad) ; 2 uses
  %i.af = load <2 x float>, ptr %1, align 4, !tbaa !19, !noalias !22 ; 2 uses
  %i.ag = load <2 x float>, ptr %i.p, align 4, !tbaa !19, !noalias !22 ; 2 uses
  %i.ah = shufflevector <2 x float> %i.af, <2 x float> %i.ag, <2 x i32> <i32 0, i32 2>
  %i.ai = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ah)
  %i.aj = shufflevector <2 x float> %i.af, <2 x float> %i.ag, <2 x i32> <i32 1, i32 3>
  %i.ak = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.aj)
  %i.al = insertelement <2 x float> poison, float %i.o, i64 0
  %i.am = insertelement <2 x float> %i.al, float %i.r, i64 1
  %i.an = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.am)
  %i.ao = load <2 x float>, ptr %i.ab, align 4    ; 2 uses
  %i.ap = insertelement <2 x float> poison, float %i.j, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x float> %i.aq, %i.ak
  %i.as = insertelement <2 x float> poison, float %i.g, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.at, <2 x float> %i.ar)
  %i.av = insertelement <2 x float> poison, float %i.m, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.aw, <2 x float> %i.au) ; 2 uses
  %i.ay = fsub <2 x float> %i.ao, %i.ax
  %i.az = fsub float %.sroa.7.0.copyload.i, %i.ae
  %.sroa.3.12.vec.insert.i9.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.az, i64 0
  store <2 x float> %i.ay, ptr %2, align 4
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i9.i, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !20
  %i.ba = fadd <2 x float> %i.ax, %i.ao
  %i.bb = fadd float %.sroa.7.0.copyload.i, %i.ae
  %.sroa.3.12.vec.insert.i14.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bb, i64 0
  store <2 x float> %i.ba, ptr %3, align 4
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
  %3 = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.67.8.vec.extract.i = extractelement <2 x float> %.sroa.67.0.copyload.i, i64 0
  %4 = fadd float %.sroa.67.8.vec.extract.i, %i.m
  %5 = fmul float %4, 2.000000e+00                ; 2 uses
  %6 = fmul float %5, %5
  %7 = insertelement <2 x float> poison, float %i.i, i64 0
  %8 = insertelement <2 x float> %7, float %i.e, i64 1
  %9 = fadd <2 x float> %3, %8
  %10 = fmul <2 x float> %9, splat (float 2.000000e+00) ; 5 uses
  %11 = fdiv float %1, 1.200000e+01
  %12 = insertelement <2 x float> poison, float %6, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %10, <2 x float> %13)
  %foldExtExtBinop = fmul <2 x float> %10, %10
  %15 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %16 = extractelement <2 x float> %10, i64 1     ; 2 uses
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %15)
  %i.n = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %11, i64 0
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %18 = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %17, i64 2
  %19 = shufflevector <2 x float> %14, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %20 = shufflevector <4 x float> %19, <4 x float> %18, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.p = fmul <4 x float> %i.o, %20
  store <4 x float> %i.p, ptr %2, align 4, !tbaa !19
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
  %i.e = load float, ptr %1, align 4, !tbaa !19   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
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
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !19
  %i.o = fcmp olt float %i.n, 0.000000e+00
  %i.p = fneg float %i.d
  %i.q = select i1 %i.o, float %i.p, float %i.d
  %.sroa.5.8.vec.insert.i = insertelement <2 x float> <float poison, float undef>, float %i.q, i64 0
  %i.r = fmul float %i.g, %i.k
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.r, i64 1
  br label %_Z21CylinderLocalSupportZRK9btVector3S1_.exit

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !19
  %i.u = fcmp olt float %i.t, 0.000000e+00
  %i.v = fneg float %i.d
  %i.w = select i1 %i.u, float %i.v, float %i.d
  %.sroa.5.8.vec.insert27.i = insertelement <2 x float> <float poison, float undef>, float %i.w, i64 0
  %.sroa.0.4.vec.insert24.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.b, i64 0
  br label %_Z21CylinderLocalSupportZRK9btVector3S1_.exit

_Z21CylinderLocalSupportZRK9btVector3S1_.exit:    ; preds = %bb.b, %bb.c
  %.sroa.5.0.i = phi <2 x float> [ %.sroa.5.8.vec.insert.i, %bb.b ], [ %.sroa.5.8.vec.insert27.i, %bb.c ]
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
end_hunk_0
begin_hunk_1_@_ZNK15btCylinderShape24localGetSupportingVertexERK9btVector3:bb.a
  %i.q = tail call float @llvm.fmuladd.f32(float %.sroa.06.0, float %.sroa.06.0, float %i.p)
  %i.r = tail call noundef float @llvm.fmuladd.f32(float %.sroa.13.0, float %.sroa.13.0, float %i.q)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.r)
  %i.s = fdiv float 1.000000e+00, %sqrt.i.i       ; 3 uses
  %i.t = fmul float %.sroa.06.0, %i.s
  %i.u = fmul float %.sroa.8.0, %i.s
  %i.v = fmul float %.sroa.13.0, %i.s
  %i.w = load ptr, ptr %0, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef float %i.y(ptr noundef nonnull align 8 dereferenceable(64) %0) ; 3 uses
  %i.aa = fmul float %i.z, %i.t
  %i.ab = fmul float %i.z, %i.u
  %i.ac = fmul float %i.z, %i.v
  %.sroa.013.0.vec.extract = extractelement <2 x float> %i.k, i64 0
  %i.ad = fadd float %.sroa.013.0.vec.extract, %i.aa
  %.sroa.013.0.vec.insert = insertelement <2 x float> poison, float %i.ad, i64 0
  %.sroa.013.4.vec.extract = extractelement <2 x float> %i.k, i64 1
  %i.ae = fadd float %.sroa.013.4.vec.extract, %i.ab
  %.sroa.013.4.vec.insert = insertelement <2 x float> %.sroa.013.0.vec.insert, float %i.ae, i64 1
  %.sroa.6.8.vec.extract = extractelement <2 x float> %i.j, i64 0
  %i.af = fadd float %.sroa.6.8.vec.extract, %i.ac
  %.sroa.6.8.vec.insert = insertelement <2 x float> %i.j, float %i.af, i64 0
  %i.ag = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.013.4.vec.insert, 0
  %i.ah = insertvalue { <2 x float>, <2 x float> } %i.ag, <2 x float> %.sroa.6.8.vec.insert, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.fca.1.insert.merged = phi { <2 x float>, <2 x float> } [ %i.ah, %bb.b ], [ %i.d, %bb.a ]
  ret { <2 x float>, <2 x float> } %.fca.1.insert.merged
}

declare void @_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef float @_ZNK15btCylinderShape9getRadiusEv(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.a, align 8
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef float %i.d(ptr noundef nonnull align 8 dereferenceable(68) %0), !inline_history !25
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef float %i.h(ptr noundef nonnull align 8 dereferenceable(68) %0), !inline_history !25 ; 0 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef float %i.l(ptr noundef nonnull align 8 dereferenceable(68) %0), !inline_history !25 ; 0 uses
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 0
  %i.n = fadd float %.sroa.03.0.vec.extract.i, %i.e
  ret float %i.n
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN16btCylinderShapeXD0Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(68) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.d

_ZN13btConvexShapedlEPv.exit:                     ; preds = %bb.c
  resume { ptr, i32 } %i.a

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #10
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK16btCylinderShapeX7getNameEv(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret ptr @.str.1
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef float @_ZNK16btCylinderShapeX9getRadiusEv(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.a, align 8
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef float %i.d(ptr noundef nonnull align 8 dereferenceable(68) %0), !inline_history !25 ; 0 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef float %i.h(ptr noundef nonnull align 8 dereferenceable(68) %0), !inline_history !25
  %i.j = load ptr, ptr %0, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef float %i.l(ptr noundef nonnull align 8 dereferenceable(68) %0), !inline_history !25 ; 0 uses
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 1
  %i.n = fadd float %.sroa.03.4.vec.extract.i, %i.i
  ret float %i.n
}

declare void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN16btCylinderShapeZD0Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(68) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.d

_ZN13btConvexShapedlEPv.exit:                     ; preds = %bb.c
  resume { ptr, i32 } %i.a

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #10
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK16btCylinderShapeZ7getNameEv(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret ptr @.str.2
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef float @_ZNK16btCylinderShapeZ9getRadiusEv(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.a, align 8
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef float %i.d(ptr noundef nonnull align 8 dereferenceable(68) %0), !inline_history !25
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef float %i.h(ptr noundef nonnull align 8 dereferenceable(68) %0), !inline_history !25 ; 0 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef float %i.l(ptr noundef nonnull align 8 dereferenceable(68) %0), !inline_history !25 ; 0 uses
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 0
  %i.n = fadd float %.sroa.03.0.vec.extract.i, %i.e
  ret float %i.n
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK16btCylinderShapeZ9getUpAxisEv(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret i32 2
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

attributes #0 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

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
!10 = !{!11, !5, i64 64}
!11 = !{!"_ZTS15btCylinderShape", !12, i64 0, !5, i64 64}
!12 = !{!"_ZTS21btConvexInternalShape", !13, i64 0, !16, i64 24, !16, i64 40, !17, i64 56, !17, i64 60}
!13 = !{!"_ZTS13btConvexShape", !14, i64 0}
!14 = !{!"_ZTS16btCollisionShape", !5, i64 8, !15, i64 16}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"_ZTS9btVector3", !6, i64 0}
!17 = !{!"float", !6, i64 0}
!18 = !{!12, !17, i64 56}
!19 = !{!17, !17, i64 0}
!20 = !{!6, !6, i64 0}
!21 = !{!14, !5, i64 8}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZNK11btMatrix3x38absoluteEv: argument 0"}
!24 = distinct !{!24, !"_ZNK11btMatrix3x38absoluteEv"}
!25 = distinct !{null}
end_hunk_1
