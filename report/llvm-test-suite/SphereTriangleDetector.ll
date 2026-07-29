inline.NumInlined: 209
inline.NumDeleted: 41
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btVector3 = type { [4 x float] }
%class.btTransform = type { %class.btMatrix3x3, %class.btVector3 }
%class.btMatrix3x3 = type { [3 x %class.btVector3] }

$_ZN36btDiscreteCollisionDetectorInterfaceD2Ev = comdat any

$_ZN22SphereTriangleDetectorD0Ev = comdat any

$_ZTI36btDiscreteCollisionDetectorInterface = comdat any

$_ZTS36btDiscreteCollisionDetectorInterface = comdat any

@_ZTV22SphereTriangleDetector = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI22SphereTriangleDetector, ptr @_ZN36btDiscreteCollisionDetectorInterfaceD2Ev, ptr @_ZN22SphereTriangleDetectorD0Ev, ptr @_ZN22SphereTriangleDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb] }, align 8
@_ZTI22SphereTriangleDetector = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS22SphereTriangleDetector, ptr @_ZTI36btDiscreteCollisionDetectorInterface }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS22SphereTriangleDetector = dso_local constant [25 x i8] c"22SphereTriangleDetector\00", align 1
@_ZTI36btDiscreteCollisionDetectorInterface = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS36btDiscreteCollisionDetectorInterface }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS36btDiscreteCollisionDetectorInterface = linkonce_odr dso_local constant [39 x i8] c"36btDiscreteCollisionDetectorInterface\00", comdat, align 1

@_ZN22SphereTriangleDetectorC1EP13btSphereShapeP15btTriangleShapef = dso_local unnamed_addr alias void (ptr, ptr, ptr, float), ptr @_ZN22SphereTriangleDetectorC2EP13btSphereShapeP15btTriangleShapef

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN22SphereTriangleDetectorC2EP13btSphereShapeP15btTriangleShapef(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(28) initializes((0, 28)) %0, ptr noundef %1, ptr noundef %2, float noundef %3) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV22SphereTriangleDetector, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %3, ptr %i.c, align 8, !tbaa !18
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN22SphereTriangleDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nofree readnone captures(none) %3, i1 noundef zeroext %4) unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %class.btVector3, align 16          ; 8 uses
  %6 = alloca %class.btVector3, align 8           ; 8 uses
  %i.a = alloca float, align 4                    ; 3 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %7 = alloca %class.btTransform, align 16        ; 7 uses
  %8 = alloca %class.btVector3, align 8           ; 5 uses
  %9 = alloca %class.btVector3, align 8           ; 5 uses
  %10 = alloca %class.btVector3, align 8          ; 5 uses
  %11 = alloca %class.btVector3, align 8          ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.f = load float, ptr %i.d, align 8, !tbaa !19, !noalias !20
  %i.g = load float, ptr %i.e, align 8, !tbaa !19, !noalias !20
  %i.h = fsub float %i.f, %i.g                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.j = load float, ptr %i.i, align 4, !tbaa !19, !noalias !20
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.l = load float, ptr %i.k, align 4, !tbaa !19, !noalias !20
  %i.m = fsub float %i.j, %i.l                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load float, ptr %i.n, align 8, !tbaa !19, !noalias !20
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.q = load float, ptr %i.p, align 8, !tbaa !19, !noalias !20
  %i.r = fsub float %i.o, %i.q                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 36
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !19, !noalias !23 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.af = load float, ptr %i.ae, align 8, !tbaa !19, !noalias !23 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !19, !noalias !23 ; 2 uses
  %15 = load <2 x float>, ptr %i.c, align 8, !tbaa !19, !noalias !23 ; 2 uses
  %16 = load <2 x float>, ptr %i.s, align 8, !tbaa !19, !noalias !23 ; 2 uses
  %17 = load <2 x float>, ptr %i.u, align 8, !tbaa !19, !noalias !23 ; 2 uses
  %18 = insertelement <2 x float> poison, float %i.m, i64 0
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %20 = fmul <2 x float> %19, %16
  %21 = insertelement <2 x float> poison, float %i.h, i64 0
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> zeroinitializer
  %23 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %15, <2 x float> %22, <2 x float> %20)
  %24 = insertelement <2 x float> poison, float %i.r, i64 0
  %25 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %17, <2 x float> %25, <2 x float> %23)
  %27 = fmul float %i.m, %i.af
  %28 = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.h, float %27)
  %i.ai = tail call noundef float @llvm.fmuladd.f32(float %i.ah, float %i.r, float %28)
  %.sroa.3.12.vec.insert.i5.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ai, i64 0
  %29 = load <2 x float>, ptr %1, align 8, !tbaa !19, !noalias !23 ; 2 uses
  %30 = load <2 x float>, ptr %i.t, align 8, !tbaa !19, !noalias !23 ; 2 uses
  %31 = load <2 x float>, ptr %i.v, align 8, !tbaa !19, !noalias !23 ; 2 uses
  %32 = shufflevector <2 x float> %16, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %33 = shufflevector <4 x float> %32, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %34 = shufflevector <2 x float> %30, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %35 = insertelement <4 x float> %34, float 1.000000e+00, i64 3
  %36 = shufflevector <2 x float> %15, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %37 = shufflevector <4 x float> %36, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %38 = shufflevector <2 x float> %29, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %39 = insertelement <4 x float> %38, float -0.000000e+00, i64 3
  %40 = shufflevector <2 x float> %17, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %41 = shufflevector <4 x float> %40, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %42 = shufflevector <2 x float> %31, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %43 = insertelement <4 x float> %42, float -0.000000e+00, i64 3
  %44 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %45 = load <2 x float>, ptr %12, align 4, !tbaa !19, !noalias !23 ; 2 uses
  %46 = load float, ptr %i.y, align 8, !tbaa !19, !noalias !23
  %i.aj = load <2 x float>, ptr %i.w, align 4, !tbaa !19, !noalias !23 ; 2 uses
  %47 = load float, ptr %13, align 8, !tbaa !19, !noalias !23
  %i.ak = load <2 x float>, ptr %i.x, align 4, !tbaa !19, !noalias !23 ; 2 uses
  %48 = load float, ptr %14, align 8, !tbaa !19, !noalias !23
  %49 = shufflevector <2 x float> %45, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %50 = shufflevector <4 x float> %35, <4 x float> %49, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %51 = fmul <4 x float> %33, %50
  %52 = shufflevector <2 x float> %i.aj, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %53 = shufflevector <4 x float> %39, <4 x float> %52, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %54 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %37, <4 x float> %53, <4 x float> %51)
  %55 = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %56 = shufflevector <4 x float> %43, <4 x float> %55, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %57 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %41, <4 x float> %56, <4 x float> %54)
  %58 = shufflevector <4 x float> %32, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %59 = shufflevector <2 x float> %30, <2 x float> %45, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %60 = insertelement <4 x float> %59, float 1.000000e+00, i64 3 ; 2 uses
  %61 = fmul <4 x float> %58, %60
  %62 = shufflevector <4 x float> %36, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %63 = shufflevector <2 x float> %29, <2 x float> %i.aj, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %64 = insertelement <4 x float> %63, float -0.000000e+00, i64 3 ; 2 uses
  %65 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %62, <4 x float> %64, <4 x float> %61)
  %66 = shufflevector <4 x float> %40, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %67 = shufflevector <2 x float> %31, <2 x float> %i.ak, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %68 = insertelement <4 x float> %67, float -0.000000e+00, i64 3 ; 2 uses
  %69 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %66, <4 x float> %68, <4 x float> %65)
  store <4 x float> %57, ptr %7, align 16, !alias.scope !20
  store <4 x float> %69, ptr %44, align 16, !alias.scope !20
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 32
  %70 = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.af, i64 0
  %71 = insertelement <4 x float> %70, float %46, i64 2
  %72 = shufflevector <4 x float> %71, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %73 = insertelement <4 x float> %60, float %i.af, i64 2
  %74 = fmul <4 x float> %72, %73
  %75 = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ad, i64 0
  %76 = shufflevector <4 x float> %75, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %77 = insertelement <4 x float> %64, float %47, i64 2
  %78 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %76, <4 x float> %77, <4 x float> %74)
  %79 = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ah, i64 0
  %80 = shufflevector <4 x float> %79, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %81 = insertelement <4 x float> %68, float %48, i64 2
  %82 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %80, <4 x float> %81, <4 x float> %78)
  store <4 x float> %82, ptr %i.al, align 16, !alias.scope !20
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store <2 x float> %26, ptr %i.am, align 16, !alias.scope !20
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i5.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !26, !alias.scope !20
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load float, ptr %i.an, align 8, !tbaa !18
  %i.ap = call noundef zeroext i1 @_ZN22SphereTriangleDetector7collideERK9btVector3RS0_S3_RfS4_f(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.am, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, float noundef %i.ao)
  br i1 %i.ap, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !19 ; 2 uses
  %i.as = load float, ptr %i.u, align 8, !tbaa !19
  %i.at = load float, ptr %i.ab, align 4, !tbaa !19
  %i.au = load float, ptr %i.ag, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.av = load <2 x float>, ptr %i.c, align 8, !tbaa !19 ; 2 uses
  %i.aw = load <2 x float>, ptr %i.s, align 8, !tbaa !19 ; 2 uses
  %i.ax = shufflevector <2 x float> %i.av, <2 x float> %i.aw, <2 x i32> <i32 1, i32 3>
  %i.ay = shufflevector <2 x float> %i.av, <2 x float> %i.aw, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.az = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.bc = load <4 x float>, ptr %5, align 16      ; 2 uses
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.be = load float, ptr %i.p, align 8, !tbaa !19
  %i.bf = load float, ptr %i.b, align 4, !tbaa !19 ; 3 uses
  %i.bg = load <2 x float>, ptr %6, align 8, !tbaa !19 ; 4 uses
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bi = fmul <2 x float> %i.bh, %i.ax
  %i.bj = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.bj, <2 x float> %i.bi)
  %i.bl = load <2 x float>, ptr %5, align 16, !tbaa !19 ; 4 uses
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> %i.bg, <2 x i32> <i32 1, i32 3>
  %i.bn = insertelement <2 x float> poison, float %i.at, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x float> %i.bm, %i.bo
  %i.bq = insertelement <2 x float> poison, float %i.as, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = shufflevector <2 x float> %i.bl, <2 x float> %i.bg, <2 x i32> <i32 0, i32 2>
  %i.bt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.bs, <2 x float> %i.bp)
  %i.bu = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = insertelement <2 x float> %i.bd, float %i.ar, i64 1
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.bw, <2 x float> %i.bt) ; 3 uses
  %i.by = fneg <2 x float> %i.bx
  %.sroa.3.12.vec.insert.i13 = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.by, <2 x i32> <i32 3, i32 1>
  store <2 x float> %.sroa.3.12.vec.insert.i13, ptr %i.bb, align 8
  %i.bz = load <2 x float>, ptr %i.z, align 4, !tbaa !19 ; 2 uses
  %i.ca = load <2 x float>, ptr %i.aa, align 4, !tbaa !19 ; 2 uses
  %i.cb = shufflevector <2 x float> %i.bz, <2 x float> %i.ca, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.ba, <2 x float> %i.bk) ; 2 uses
  %i.cd = fneg <2 x float> %i.cc
  store <2 x float> %i.cd, ptr %8, align 8
  %i.ce = shufflevector <2 x float> %i.bz, <2 x float> %i.ca, <2 x i32> <i32 0, i32 2>
  %i.cf = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cg = fmul <2 x float> %i.ce, %i.cf
  %i.ch = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.ch, <2 x float> %i.cg)
  %i.cj = shufflevector <4 x float> %i.bc, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.cj, <2 x float> %i.ci)
  %i.cl = load <2 x float>, ptr %i.e, align 8, !tbaa !19
  %i.cm = fadd <2 x float> %i.cl, %i.ck
  %i.cn = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x float> %i.cc, %i.co
  %i.cq = fadd <2 x float> %i.cm, %i.cp
  %i.cr = extractelement <2 x float> %i.bx, i64 0
  %i.cs = fadd float %i.cr, %i.be
  %i.ct = extractelement <2 x float> %i.bx, i64 1
  %i.cu = fmul float %i.ct, %i.bf
  %i.cv = fadd float %i.cs, %i.cu
  %.sroa.3.12.vec.insert.i23 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cv, i64 0
  store <2 x float> %i.cq, ptr %9, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i23, ptr %i.cw, align 8
  %i.cx = load ptr, ptr %2, align 8, !tbaa !8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %9, float noundef %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.da = load float, ptr %6, align 8, !tbaa !19  ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.dc = load float, ptr %i.db, align 4, !tbaa !19 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.de = load float, ptr %i.dd, align 8, !tbaa !19 ; 2 uses
  %i.df = load <2 x float>, ptr %i.c, align 8, !tbaa !19 ; 2 uses
  %i.dg = load <2 x float>, ptr %i.s, align 8, !tbaa !19 ; 2 uses
  %i.dh = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = shufflevector <2 x float> %i.df, <2 x float> %i.dg, <2 x i32> <i32 1, i32 3>
  %i.dk = fmul <2 x float> %i.di, %i.dj
  %i.dl = shufflevector <2 x float> %i.df, <2 x float> %i.dg, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.dm = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.dn, <2 x float> %i.dk)
  %i.dp = insertelement <2 x float> poison, float %i.de, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = load float, ptr %i.u, align 8, !tbaa !19 ; 2 uses
  %i.ds = load float, ptr %i.ab, align 4, !tbaa !19 ; 2 uses
  %i.dt = fmul float %i.dc, %i.ds
  %i.du = tail call float @llvm.fmuladd.f32(float %i.dr, float %i.da, float %i.dt)
  %i.dv = load float, ptr %i.ag, align 8, !tbaa !19 ; 2 uses
  %i.dw = tail call noundef float @llvm.fmuladd.f32(float %i.dv, float %i.de, float %i.du)
  %.sroa.3.12.vec.insert.i28 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dw, i64 0
  %i.dx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i28, ptr %i.dx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.dy = load float, ptr %5, align 16, !tbaa !19 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !19 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ec = load float, ptr %i.eb, align 8, !tbaa !19 ; 2 uses
  %i.ed = load <2 x float>, ptr %i.z, align 4, !tbaa !19 ; 2 uses
  %i.ee = load <2 x float>, ptr %i.aa, align 4, !tbaa !19 ; 2 uses
  %i.ef = shufflevector <2 x float> %i.ed, <2 x float> %i.ee, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.eg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.dq, <2 x float> %i.do)
  store <2 x float> %i.eg, ptr %10, align 8
  %i.eh = shufflevector <2 x float> %i.ed, <2 x float> %i.ee, <2 x i32> <i32 0, i32 2>
  %i.ei = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = fmul <2 x float> %i.eh, %i.ej
  %i.el = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.em, <2 x float> %i.ek)
  %i.eo = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.ep, <2 x float> %i.en)
  %i.er = load <2 x float>, ptr %i.e, align 8, !tbaa !19
  %i.es = fadd <2 x float> %i.er, %i.eq
  %i.et = fmul float %i.ds, %i.ea
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.dr, float %i.dy, float %i.et)
  %i.ev = tail call noundef float @llvm.fmuladd.f32(float %i.dv, float %i.ec, float %i.eu)
  %i.ew = load float, ptr %i.p, align 8, !tbaa !19
  %i.ex = fadd float %i.ev, %i.ew
  %.sroa.3.12.vec.insert.i.i33 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ex, i64 0
  store <2 x float> %i.es, ptr %11, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %11, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i33, ptr %i.ey, align 8
  %i.ez = load float, ptr %i.b, align 4, !tbaa !19
  %i.fa = load ptr, ptr %2, align 8, !tbaa !8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %11, float noundef %i.ez)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZN22SphereTriangleDetector7collideERK9btVector3RS0_S3_RfS4_f(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %5, float noundef %6) local_unnamed_addr #1 align 2 {
bb.a:
  %7 = alloca %class.btVector3, align 8           ; 6 uses
  %8 = alloca %class.btVector3, align 8           ; 5 uses
  %9 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load float, ptr %i.f, align 4, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load float, ptr %i.h, align 4, !tbaa !19
  %i.j = fmul float %i.g, %i.i                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.l = load float, ptr %i.k, align 4, !tbaa !19
  %i.m = load float, ptr %i.c, align 4, !tbaa !19 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.q = load float, ptr %i.p, align 4, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.t = load <2 x float>, ptr %i.n, align 4, !tbaa !19 ; 2 uses
  %i.u = load <2 x float>, ptr %i.o, align 4, !tbaa !19 ; 5 uses
  %i.v = fsub <2 x float> %i.t, %i.u              ; 2 uses
  %i.w = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.x = insertelement <2 x float> %i.w, float %i.l, i64 1
  %i.y = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.z = insertelement <2 x float> %i.y, float %i.m, i64 1 ; 2 uses
end_hunk_0
begin_hunk_1_@_Z18SegmentSqrDistanceRK9btVector3S1_S1_RS_:bb.a
  %i.r = tail call noundef float @llvm.fmuladd.f32(float %i.m, float %i.e, float %i.q) ; 3 uses
  %i.s = fcmp ogt float %i.r, 0.000000e+00
  br i1 %i.s, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %foldExtExtBinop96 = fmul <2 x float> %i.j, %i.j
  %i.t = extractelement <2 x float> %foldExtExtBinop96, i64 1
  %i.u = tail call float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.t)
  %i.v = tail call noundef float @llvm.fmuladd.f32(float %i.m, float %i.m, float %i.u) ; 2 uses
  %i.w = fcmp olt float %i.r, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = fdiv float %i.r, %i.v                    ; 3 uses
  %i.y = fmul float %i.m, %i.x
  %i.z = insertelement <2 x float> poison, float %i.x, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x float> %i.j, %i.aa
  %i.ac = fsub <2 x float> %i.h, %i.ab
  %i.ad = fsub float %i.e, %i.y
  %.sroa.17.8.vec.insert = insertelement <2 x float> %.sroa.3.12.vec.insert.i, float %i.ad, i64 0
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ae = fsub <2 x float> %i.h, %i.j
  %i.af = fsub float %i.e, %i.m
  %.sroa.17.8.vec.insert88 = insertelement <2 x float> %.sroa.3.12.vec.insert.i, float %i.af, i64 0
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %.0 = phi float [ %i.x, %bb.c ], [ 1.000000e+00, %bb.d ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %.sroa.059.0 = phi <2 x float> [ %i.ac, %bb.c ], [ %i.ae, %bb.d ], [ %i.h, %bb.a ] ; 3 uses
  %.sroa.17.0 = phi <2 x float> [ %.sroa.17.8.vec.insert, %bb.c ], [ %.sroa.17.8.vec.insert88, %bb.d ], [ %.sroa.3.12.vec.insert.i, %bb.a ]
  %i.ag = insertelement <2 x float> poison, float %.0, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x float> %i.j, %i.ah
  %i.aj = fmul float %i.m, %.0
  %i.ak = fadd <2 x float> %i.f, %i.ai
  %i.al = fadd float %i.d, %i.aj
  %.sroa.3.12.vec.insert.i21 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.al, i64 0
  store <2 x float> %i.ak, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i21, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !26
  %.sroa.059.0.vec.extract68 = extractelement <2 x float> %.sroa.059.0, i64 0 ; 2 uses
  %foldExtExtBinop98 = fmul <2 x float> %.sroa.059.0, %.sroa.059.0
  %i.am = extractelement <2 x float> %foldExtExtBinop98, i64 1
  %i.an = tail call float @llvm.fmuladd.f32(float %.sroa.059.0.vec.extract68, float %.sroa.059.0.vec.extract68, float %i.am)
  %.sroa.17.8.vec.extract90 = extractelement <2 x float> %.sroa.17.0, i64 0 ; 2 uses
  %i.ao = tail call noundef float @llvm.fmuladd.f32(float %.sroa.17.8.vec.extract90, float %.sroa.17.8.vec.extract90, float %i.an)
  ret float %i.ao
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN22SphereTriangleDetector12facecontainsERK9btVector3PS1_RS0_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN22SphereTriangleDetector15pointInTriangleEPK9btVector3RS1_PS0_(ptr nonnull align 8 poison, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN22SphereTriangleDetector15pointInTriangleEPK9btVector3RS1_PS0_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load float, ptr %i.d, align 4, !tbaa !19 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !19 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load float, ptr %i.i, align 4, !tbaa !19 ; 3 uses
  %i.k = fsub float %i.g, %i.j                    ; 2 uses
  %i.l = load float, ptr %3, align 4, !tbaa !19   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !19 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !19 ; 2 uses
  %i.q = fsub float %i.p, %i.j
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !19 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !19 ; 3 uses
  %i.v = fneg float %i.u                          ; 2 uses
  %i.w = load float, ptr %2, align 4, !tbaa !19   ; 3 uses
  %i.x = fneg float %i.s                          ; 2 uses
  %i.y = fneg float %i.w                          ; 2 uses
  %i.z = fmul float %i.k, %i.v
  %i.aa = load <2 x float>, ptr %i.a, align 4, !tbaa !19 ; 4 uses
  %i.ab = load <2 x float>, ptr %1, align 4, !tbaa !19 ; 3 uses
  %i.ac = load float, ptr %i.c, align 4, !tbaa !19
  %i.ad = load <2 x float>, ptr %i.b, align 4, !tbaa !19 ; 4 uses
  %i.ae = load float, ptr %i.h, align 4, !tbaa !19 ; 2 uses
  %i.af = shufflevector <2 x float> %i.aa, <2 x float> %i.ad, <2 x i32> <i32 0, i32 2>
  %i.ag = shufflevector <2 x float> %i.ab, <2 x float> %i.aa, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ah = fsub <2 x float> %i.af, %i.ag           ; 2 uses
  %i.ai = shufflevector <2 x float> %i.aa, <2 x float> %i.ad, <2 x i32> <i32 1, i32 3>
  %i.aj = shufflevector <2 x float> %i.ab, <2 x float> %i.aa, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ak = fsub <2 x float> %i.ai, %i.aj           ; 2 uses
  %i.al = insertelement <2 x float> poison, float %i.e, i64 0
  %i.am = insertelement <2 x float> %i.al, float %i.j, i64 1
  %i.an = insertelement <2 x float> poison, float %i.g, i64 0
  %i.ao = insertelement <2 x float> %i.an, float %i.e, i64 1 ; 2 uses
  %i.ap = fsub <2 x float> %i.am, %i.ao           ; 2 uses
  %i.aq = extractelement <2 x float> %i.ad, i64 0
  %foldExtExtBinop = fsub <2 x float> %i.ab, %i.ad
  %i.ar = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.as = fsub float %i.ac, %i.ae                 ; 2 uses
  %i.at = insertelement <2 x float> poison, float %i.l, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fsub <2 x float> %i.au, %i.ag
  %i.aw = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fsub <2 x float> %i.ax, %i.aj
  %i.az = insertelement <2 x float> poison, float %i.p, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fsub <2 x float> %i.ba, %i.ao
  %i.bc = fsub float %i.l, %i.aq
  %i.bd = fsub float %i.n, %i.ae
  %i.be = insertelement <2 x float> poison, float %i.v, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fmul <2 x float> %i.ap, %i.bf
  %i.bh = insertelement <2 x float> poison, float %i.s, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.bi, <2 x float> %i.bg)
  %i.bk = insertelement <2 x float> poison, float %i.x, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x float> %i.ah, %i.bl
  %i.bn = insertelement <2 x float> poison, float %i.w, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.bo, <2 x float> %i.bm)
  %i.bq = insertelement <2 x float> poison, float %i.y, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x float> %i.ak, %i.br
  %i.bt = insertelement <2 x float> poison, float %i.u, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.bu, <2 x float> %i.bs)
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.as, float %i.s, float %i.z)
  %i.bx = fmul float %i.ar, %i.x
  %i.by = tail call float @llvm.fmuladd.f32(float %i.k, float %i.w, float %i.bx)
  %i.bz = fmul float %i.as, %i.y
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.u, float %i.bz)
  %i.cb = fmul <2 x float> %i.ay, %i.bp
  %i.cc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.av, <2 x float> %i.cb)
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.bb, <2 x float> %i.cc) ; 3 uses
  %i.ce = fmul float %i.bd, %i.by
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.bc, float %i.ce)
  %i.cg = tail call noundef float @llvm.fmuladd.f32(float %i.ca, float %i.q, float %i.cf) ; 2 uses
  %i.ch = extractelement <2 x float> %i.cd, i64 0
  %i.ci = fcmp ogt float %i.ch, 0.000000e+00
  %i.cj = extractelement <2 x float> %i.cd, i64 1
  %i.ck = fcmp ogt float %i.cj, 0.000000e+00
  %or.cond = and i1 %i.ci, %i.ck
  %i.cl = fcmp ogt float %i.cg, 0.000000e+00
  %or.cond3 = and i1 %i.cl, %or.cond
  br i1 %or.cond3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cm = fcmp ugt <2 x float> %i.cd, zeroinitializer
  %i.cn = bitcast <2 x i1> %i.cm to i2
  %or.cond5 = icmp eq i2 %i.cn, 0
  %i.co = fcmp ole float %i.cg, 0.000000e+00
  %or.cond7 = and i1 %i.co, %or.cond5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ %or.cond7, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN36btDiscreteCollisionDetectorInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN22SphereTriangleDetectorD0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }

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
!10 = !{!11, !13, i64 8}
!11 = !{!"_ZTS22SphereTriangleDetector", !12, i64 0, !13, i64 8, !15, i64 16, !16, i64 24}
!12 = !{!"_ZTS36btDiscreteCollisionDetectorInterface"}
!13 = !{!"p1 _ZTS13btSphereShape", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"p1 _ZTS15btTriangleShape", !14, i64 0}
!16 = !{!"float", !6, i64 0}
!17 = !{!11, !15, i64 16}
!18 = !{!11, !16, i64 24}
!19 = !{!16, !16, i64 0}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZNK11btTransform12inverseTimesERKS_: argument 0"}
!22 = distinct !{!22, !"_ZNK11btTransform12inverseTimesERKS_"}
!23 = !{!24, !21}
!24 = distinct !{!24, !25, !"_ZNK11btMatrix3x314transposeTimesERKS_: argument 0"}
!25 = distinct !{!25, !"_ZNK11btMatrix3x314transposeTimesERKS_"}
!26 = !{!6, !6, i64 0}
end_hunk_1
