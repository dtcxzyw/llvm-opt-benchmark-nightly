Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/SphereTriangleDetector?download=true
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV22SphereTriangleDetector, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %3, ptr %i.c, align 8, !tbaa !18
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN22SphereTriangleDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nofree readnone captures(none) %3, i1 noundef zeroext %4) unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %class.btVector3, align 16          ; 7 uses
  %6 = alloca %class.btVector3, align 4           ; 9 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load float, ptr %i.t, align 8, !tbaa !19, !noalias !26 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.w = load float, ptr %i.v, align 8, !tbaa !19, !noalias !26 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.y = load float, ptr %i.x, align 8, !tbaa !19, !noalias !26 ; 2 uses
  %i.z = load <3 x float>, ptr %i.d, align 8, !tbaa !19, !noalias !25
  %i.aa = load <3 x float>, ptr %i.e, align 8, !tbaa !19, !noalias !25
  %i.ab = fsub <3 x float> %i.z, %i.aa            ; 6 uses
  %i.ac = load <2 x float>, ptr %i.c, align 8, !tbaa !19, !noalias !26 ; 2 uses
  %i.ad = load <2 x float>, ptr %i.g, align 8, !tbaa !19, !noalias !26 ; 2 uses
  %i.ae = load <2 x float>, ptr %i.i, align 8, !tbaa !19, !noalias !26 ; 2 uses
  %i.af = shufflevector <3 x float> %i.ab, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ag = fmul <2 x float> %i.af, %i.ad
  %i.ah = shufflevector <3 x float> %i.ab, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ah, <2 x float> %i.ag)
  %i.aj = shufflevector <3 x float> %i.ab, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.aj, <2 x float> %i.ai)
  %i.al = extractelement <3 x float> %i.ab, i64 1
  %i.am = fmul float %i.al, %i.w
  %i.an = extractelement <3 x float> %i.ab, i64 0
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.u, float %i.an, float %i.am)
  %i.ap = extractelement <3 x float> %i.ab, i64 2
  %i.aq = tail call noundef float @llvm.fmuladd.f32(float %i.y, float %i.ap, float %i.ao)
  %.sroa.3.12.vec.insert.i5.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aq, i64 0
  %i.ar = load <2 x float>, ptr %1, align 8, !tbaa !19, !noalias !26 ; 2 uses
  %i.as = load <2 x float>, ptr %i.h, align 8, !tbaa !19, !noalias !26 ; 2 uses
  %i.at = load <2 x float>, ptr %i.j, align 8, !tbaa !19, !noalias !26 ; 2 uses
  %i.au = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.av = shufflevector <4 x float> %i.au, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.aw = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ax = insertelement <4 x float> %i.aw, float 1.000000e+00, i64 3
  %i.ay = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.az = shufflevector <4 x float> %i.ay, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.ba = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bb = insertelement <4 x float> %i.ba, float -0.000000e+00, i64 3
  %i.bc = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.be = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bf = insertelement <4 x float> %i.be, float -0.000000e+00, i64 3
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bh = load <2 x float>, ptr %i.l, align 4, !tbaa !19, !noalias !26 ; 2 uses
  %i.bi = load float, ptr %i.o, align 8, !tbaa !19, !noalias !26
  %i.bj = load <2 x float>, ptr %i.k, align 4, !tbaa !19, !noalias !26 ; 2 uses
  %i.bk = load float, ptr %i.n, align 8, !tbaa !19, !noalias !26
  %i.bl = load <2 x float>, ptr %i.m, align 4, !tbaa !19, !noalias !26 ; 2 uses
  %i.bm = load float, ptr %i.p, align 8, !tbaa !19, !noalias !26
  %i.bn = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bo = shufflevector <4 x float> %i.ax, <4 x float> %i.bn, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bp = fmul <4 x float> %i.av, %i.bo
  %i.bq = shufflevector <2 x float> %i.bj, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.br = shufflevector <4 x float> %i.bb, <4 x float> %i.bq, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.az, <4 x float> %i.br, <4 x float> %i.bp)
  %i.bt = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bu = shufflevector <4 x float> %i.bf, <4 x float> %i.bt, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bd, <4 x float> %i.bu, <4 x float> %i.bs)
  %i.bw = shufflevector <4 x float> %i.au, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.bx = shufflevector <2 x float> %i.as, <2 x float> %i.bh, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.by = insertelement <4 x float> %i.bx, float 1.000000e+00, i64 3 ; 2 uses
  %i.bz = fmul <4 x float> %i.bw, %i.by
  %i.ca = shufflevector <4 x float> %i.ay, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cb = shufflevector <2 x float> %i.ar, <2 x float> %i.bj, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cc = insertelement <4 x float> %i.cb, float -0.000000e+00, i64 3 ; 2 uses
  %i.cd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> %i.cc, <4 x float> %i.bz)
  %i.ce = shufflevector <4 x float> %i.bc, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cf = shufflevector <2 x float> %i.at, <2 x float> %i.bl, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cg = insertelement <4 x float> %i.cf, float -0.000000e+00, i64 3 ; 2 uses
  %i.ch = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ce, <4 x float> %i.cg, <4 x float> %i.cd)
  store <4 x float> %i.bv, ptr %7, align 16, !alias.scope !25
  store <4 x float> %i.ch, ptr %i.bg, align 16, !alias.scope !25
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.cj = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.w, i64 0
  %i.ck = insertelement <4 x float> %i.cj, float %i.bi, i64 2
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.cm = insertelement <4 x float> %i.by, float %i.w, i64 2
  %i.cn = fmul <4 x float> %i.cl, %i.cm
  %i.co = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.u, i64 0
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cq = insertelement <4 x float> %i.cc, float %i.bk, i64 2
  %i.cr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cp, <4 x float> %i.cq, <4 x float> %i.cn)
  %i.cs = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.y, i64 0
  %i.ct = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cu = insertelement <4 x float> %i.cg, float %i.bm, i64 2
  %i.cv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ct, <4 x float> %i.cu, <4 x float> %i.cr)
  store <4 x float> %i.cv, ptr %i.ci, align 16, !alias.scope !25
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store <2 x float> %i.ak, ptr %i.cw, align 16, !alias.scope !25
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i5.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !20, !alias.scope !25
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cy = load float, ptr %i.cx, align 8, !tbaa !18
  %i.cz = call noundef zeroext i1 @_ZN22SphereTriangleDetector7collideERK9btVector3RS0_S3_RfS4_f(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.cw, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, float noundef %i.cy)
  br i1 %i.cz, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 4
  %12 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %13 = load float, ptr %i.i, align 8, !tbaa !19  ; 2 uses
  %i.db = load float, ptr %i.s, align 4, !tbaa !19 ; 2 uses
  %14 = load float, ptr %i.x, align 8, !tbaa !19  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %15 = load <2 x float>, ptr %i.c, align 8, !tbaa !19
  %16 = load float, ptr %i.da, align 4, !tbaa !19 ; 3 uses
  %17 = load float, ptr %6, align 4, !tbaa !19    ; 2 uses
  %18 = load float, ptr %12, align 4, !tbaa !19   ; 2 uses
  %19 = load <2 x float>, ptr %i.g, align 8, !tbaa !19
  %20 = shufflevector <2 x float> %15, <2 x float> %19, <2 x i32> <i32 0, i32 2> ; 2 uses
  %21 = insertelement <2 x float> poison, float %17, i64 0
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> zeroinitializer
  %23 = insertelement <2 x float> poison, float %18, i64 0
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %25 = fmul float %16, %i.db
  %26 = tail call float @llvm.fmuladd.f32(float %13, float %17, float %25)
  %27 = tail call noundef float @llvm.fmuladd.f32(float %14, float %18, float %26) ; 2 uses
  %28 = fneg float %27
  %.sroa.3.12.vec.insert.i13 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %28, i64 0
  %29 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i13, ptr %29, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %30 = load float, ptr %i.f, align 8, !tbaa !19
  %31 = load float, ptr %i.b, align 4, !tbaa !19  ; 3 uses
  %32 = fmul float %27, %31
  %i.dc = load <2 x float>, ptr %i.q, align 4, !tbaa !19 ; 3 uses
  %33 = load <2 x float>, ptr %i.r, align 4, !tbaa !19 ; 3 uses
  %34 = extractelement <2 x float> %33, i64 0
  %35 = fmul float %16, %34
  %36 = extractelement <2 x float> %i.dc, i64 0
  %37 = fmul float %36, %16
  %38 = insertelement <2 x float> poison, float %37, i64 0
  %39 = insertelement <2 x float> %38, float %35, i64 1
  %40 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> %22, <2 x float> %39)
  %41 = shufflevector <2 x float> %i.dc, <2 x float> %33, <2 x i32> <i32 1, i32 3> ; 2 uses
  %42 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %41, <2 x float> %24, <2 x float> %40) ; 2 uses
  %43 = fneg <2 x float> %42
  store <2 x float> %43, ptr %8, align 8
  %44 = load <3 x float>, ptr %5, align 16, !tbaa !19 ; 5 uses
  %45 = load float, ptr %5, align 16, !tbaa !19
  %46 = shufflevector <2 x float> %i.dc, <2 x float> %33, <2 x i32> <i32 0, i32 2>
  %i.dd = shufflevector <3 x float> %44, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.de = fmul <2 x float> %46, %i.dd
  %i.df = shufflevector <3 x float> %44, <3 x float> poison, <2 x i32> zeroinitializer
  %i.dg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> %i.df, <2 x float> %i.de)
  %47 = shufflevector <3 x float> %44, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.dh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %41, <2 x float> %47, <2 x float> %i.dg)
  %48 = load <2 x float>, ptr %i.e, align 8, !tbaa !19
  %i.di = fadd <2 x float> %48, %i.dh
  %49 = extractelement <3 x float> %44, i64 1
  %50 = fmul float %i.db, %49
  %51 = tail call float @llvm.fmuladd.f32(float %13, float %45, float %50)
  %52 = extractelement <3 x float> %44, i64 2
  %53 = tail call noundef float @llvm.fmuladd.f32(float %14, float %52, float %51)
  %i.dj = fadd float %53, %30
  %54 = insertelement <2 x float> poison, float %31, i64 0
  %55 = shufflevector <2 x float> %54, <2 x float> poison, <2 x i32> zeroinitializer
  %56 = fmul <2 x float> %42, %55
  %57 = fadd <2 x float> %i.di, %56
  %i.dk = fadd float %i.dj, %32
  %.sroa.3.12.vec.insert.i23 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dk, i64 0
  store <2 x float> %57, ptr %9, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i23, ptr %i.dl, align 8
  %i.dm = load ptr, ptr %2, align 8, !tbaa !9
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %9, float noundef %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dr = load <2 x float>, ptr %i.c, align 8, !tbaa !19
  %i.ds = load float, ptr %i.dp, align 4, !tbaa !19 ; 3 uses
  %i.dt = load float, ptr %6, align 4, !tbaa !19  ; 2 uses
  %i.du = load float, ptr %i.dq, align 4, !tbaa !19 ; 2 uses
  %i.dv = load <2 x float>, ptr %i.g, align 8, !tbaa !19
  %i.dw = shufflevector <2 x float> %i.dr, <2 x float> %i.dv, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.dx = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = insertelement <2 x float> poison, float %i.du, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = load float, ptr %i.i, align 8, !tbaa !19 ; 2 uses
  %i.ec = load float, ptr %i.s, align 4, !tbaa !19 ; 2 uses
  %i.ed = fmul float %i.ds, %i.ec
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.eb, float %i.dt, float %i.ed)
  %i.ef = load float, ptr %i.x, align 8, !tbaa !19 ; 2 uses
  %i.eg = tail call noundef float @llvm.fmuladd.f32(float %i.ef, float %i.du, float %i.ee)
  %.sroa.3.12.vec.insert.i28 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eg, i64 0
  %i.eh = getelementptr inbounds nuw i8, ptr %10, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i28, ptr %i.eh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.ei = load <2 x float>, ptr %i.q, align 4, !tbaa !19 ; 3 uses
  %i.ej = load <2 x float>, ptr %i.r, align 4, !tbaa !19 ; 3 uses
  %58 = extractelement <2 x float> %i.ej, i64 0
  %59 = fmul float %i.ds, %58
  %60 = extractelement <2 x float> %i.ei, i64 0
  %61 = fmul float %60, %i.ds
  %62 = insertelement <2 x float> poison, float %61, i64 0
  %63 = insertelement <2 x float> %62, float %59, i64 1
  %64 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dw, <2 x float> %i.dy, <2 x float> %63)
  %65 = shufflevector <2 x float> %i.ei, <2 x float> %i.ej, <2 x i32> <i32 1, i32 3> ; 2 uses
  %66 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %65, <2 x float> %i.ea, <2 x float> %64)
  store <2 x float> %66, ptr %10, align 8
  %67 = load <3 x float>, ptr %5, align 16, !tbaa !19 ; 5 uses
  %68 = load float, ptr %5, align 16, !tbaa !19
  %69 = shufflevector <2 x float> %i.ei, <2 x float> %i.ej, <2 x i32> <i32 0, i32 2>
  %70 = shufflevector <3 x float> %67, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %71 = fmul <2 x float> %69, %70
  %i.ek = shufflevector <3 x float> %67, <3 x float> poison, <2 x i32> zeroinitializer
  %72 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dw, <2 x float> %i.ek, <2 x float> %71)
  %73 = shufflevector <3 x float> %67, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.el = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %65, <2 x float> %73, <2 x float> %72)
  %i.em = load <2 x float>, ptr %i.e, align 8, !tbaa !19
  %i.en = fadd <2 x float> %i.em, %i.el
  %74 = extractelement <3 x float> %67, i64 1
  %i.eo = fmul float %i.ec, %74
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.eb, float %68, float %i.eo)
  %75 = extractelement <3 x float> %67, i64 2
  %i.eq = tail call noundef float @llvm.fmuladd.f32(float %i.ef, float %75, float %i.ep)
  %i.er = load float, ptr %i.f, align 8, !tbaa !19
  %i.es = fadd float %i.eq, %i.er
  %.sroa.3.12.vec.insert.i.i33 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.es, i64 0
  store <2 x float> %i.en, ptr %11, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %11, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i33, ptr %i.et, align 8
  %i.eu = load float, ptr %i.b, align 4, !tbaa !19
  %i.ev = load ptr, ptr %2, align 8, !tbaa !9
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %11, float noundef %i.eu)
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
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 2 uses
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
  %i.aa = fsub <2 x float> %i.x, %i.z             ; 2 uses
  %i.ab = load <2 x float>, ptr %i.r, align 4, !tbaa !19 ; 2 uses
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ad = insertelement <2 x float> %i.ac, float %i.q, i64 1
  %i.ae = fsub <2 x float> %i.ad, %i.z            ; 2 uses
  %i.af = fsub <2 x float> %i.ab, %i.u            ; 2 uses
  %i.ag = fneg <2 x float> %i.af
  %i.ah = fmul <2 x float> %i.aa, %i.ag
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.ae, <2 x float> %i.ah) ; 4 uses
  %i.aj = extractelement <2 x float> %i.ae, i64 1
  %i.ak = fneg float %i.aj
  %i.al = extractelement <2 x float> %i.v, i64 0
  %i.am = fmul float %i.al, %i.ak
  %i.an = extractelement <2 x float> %i.aa, i64 1
  %i.ao = extractelement <2 x float> %i.af, i64 0
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.an, float %i.ao, float %i.am) ; 4 uses
  %.sroa.3.12.vec.insert.i59 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ap, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i59, ptr %i.s, align 8
  %foldExtExtBinop = fmul <2 x float> %i.ai, %i.ai
  %i.aq = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ar = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.aq)
  %i.at = tail call noundef float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.as)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.at)
  %i.au = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.av = insertelement <2 x float> poison, float %i.au, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x float> %i.ai, %i.aw           ; 5 uses
  %i.ay = extractelement <2 x float> %i.ax, i64 1 ; 2 uses
  %i.az = extractelement <2 x float> %i.ax, i64 0 ; 2 uses
  store <2 x float> %i.ax, ptr %7, align 8, !tbaa !19
  %i.ba = fmul float %i.ap, %i.au                 ; 4 uses
  store float %i.ba, ptr %i.s, align 8, !tbaa !19
  %i.bb = load <2 x float>, ptr %1, align 4, !tbaa !19 ; 4 uses
  %i.bc = extractelement <2 x float> %i.bb, i64 0
  %i.bd = fsub float %i.bc, %i.m
  %shift = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop136 = fsub <2 x float> %shift, %i.u
  %i.be = extractelement <2 x float> %foldExtExtBinop136, i64 0
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !19 ; 3 uses
  %i.bh = extractelement <2 x float> %i.u, i64 1
  %i.bi = fsub float %i.bg, %i.bh
  %i.bj = fmul float %i.ay, %i.be
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.az, float %i.bj)
  %i.bl = tail call noundef float @llvm.fmuladd.f32(float %i.bi, float %i.ba, float %i.bk) ; 3 uses
  %i.bm = fcmp olt float %i.bl, 0.000000e+00
  br i1 %i.bm, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bn = fneg float %i.bl
  %i.bo = fneg <2 x float> %i.ax                  ; 4 uses
  %i.bp = extractelement <2 x float> %i.bo, i64 1
  %i.bq = extractelement <2 x float> %i.bo, i64 0
  store <2 x float> %i.bo, ptr %7, align 8, !tbaa !19
  %i.br = fneg float %i.ba                        ; 2 uses
  store float %i.br, ptr %i.s, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bs = phi float [ %i.br, %bb.b ], [ %i.ba, %bb.a ] ; 2 uses
  %i.bt = phi float [ %i.bp, %bb.b ], [ %i.ay, %bb.a ]
  %i.bu = phi float [ %i.bq, %bb.b ], [ %i.az, %bb.a ]
  %.0116 = phi float [ %i.bn, %bb.b ], [ %i.bl, %bb.a ] ; 4 uses
  %i.bv = phi <2 x float> [ %i.bo, %bb.b ], [ %i.ax, %bb.a ]
  %i.bw = fadd float %6, %i.j                     ; 3 uses
  %i.bx = fcmp olt float %.0116, %i.j
  %i.by = fmul float %i.bt, 0.000000e+00
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bu, float 0.000000e+00, float %i.by)
  %i.ca = tail call noundef float @llvm.fmuladd.f32(float %i.bs, float 0.000000e+00, float %i.bz)
  %i.cb = fcmp ult float %i.ca, 0.000000e+00
  %or.cond.not119 = or i1 %i.bx, %i.cb
  %i.cc = fcmp olt float %.0116, %i.bw
  %or.cond117 = and i1 %i.cc, %or.cond.not119
  br i1 %or.cond117, label %bb.d, label %.critedge51

bb.d:                                             ; preds = %bb.c
  %i.cd = call noundef zeroext i1 @_ZN22SphereTriangleDetector15pointInTriangleEPK9btVector3RS1_PS0_(ptr nonnull readnone align 8 poison, ptr noundef nonnull readonly %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %7, ptr noundef nonnull readonly align 4 dereferenceable(16) %1)
  br i1 %i.cd, label %.critedge, label %bb.e

.critedge:                                        ; preds = %bb.d
  %i.ce = insertelement <2 x float> poison, float %.0116, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = fmul <2 x float> %i.cf, %i.bv
  %i.ch = fmul float %.0116, %i.bs
  %i.ci = fsub <2 x float> %i.bb, %i.cg
  %i.cj = fsub float %i.bg, %i.ch
  %.sroa.3.12.vec.insert.i74 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cj, i64 0
  br label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.ck = fmul float %i.bw, %i.bw
  %i.cl = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 152
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = tail call noundef i32 %i.cn(ptr noundef nonnull align 8 dereferenceable(112) %i.b)
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph, label %.critedge51

.lr.ph:                                           ; preds = %bb.e
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.f

._crit_edge:                                      ; preds = %_Z18SegmentSqrDistanceRK9btVector3S1_S1_RS_.exit
  br i1 %.145, label %._crit_edge._crit_edge, label %.critedge51

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %i.cs = load <2 x float>, ptr %1, align 4, !tbaa !19
  %.pre127 = load float, ptr %i.bf, align 4, !tbaa !19
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph, %_Z18SegmentSqrDistanceRK9btVector3S1_S1_RS_.exit
  %.043123 = phi i32 [ 0, %.lr.ph ], [ %i.ek, %_Z18SegmentSqrDistanceRK9btVector3S1_S1_RS_.exit ] ; 2 uses
  %.044122 = phi i1 [ false, %.lr.ph ], [ %.145, %_Z18SegmentSqrDistanceRK9btVector3S1_S1_RS_.exit ]
  %.sroa.092.0121 = phi <2 x float> [ undef, %.lr.ph ], [ %.sroa.092.1, %_Z18SegmentSqrDistanceRK9btVector3S1_S1_RS_.exit ]
  %.sroa.894.0120 = phi <2 x float> [ undef, %.lr.ph ], [ %.sroa.894.1, %_Z18SegmentSqrDistanceRK9btVector3S1_S1_RS_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.ct = load ptr, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !9
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 160
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(112) %i.ct, i32 noundef %.043123, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %9)
  %i.cx = load float, ptr %i.bf, align 4, !tbaa !19
  %i.cy = load float, ptr %i.cq, align 8, !tbaa !19 ; 3 uses
  %i.cz = fsub float %i.cx, %i.cy                 ; 4 uses
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cz, i64 0 ; 3 uses
  %i.da = load <2 x float>, ptr %8, align 8, !tbaa !19 ; 3 uses
  %i.db = load <2 x float>, ptr %1, align 4, !tbaa !19
  %i.dc = fsub <2 x float> %i.db, %i.da           ; 5 uses
  %i.dd = load <2 x float>, ptr %9, align 8, !tbaa !19
  %i.de = fsub <2 x float> %i.dd, %i.da           ; 7 uses
  %i.df = load float, ptr %i.cr, align 8, !tbaa !19
  %i.dg = fsub float %i.df, %i.cy                 ; 6 uses
  %foldExtExtBinop138 = fmul <2 x float> %i.dc, %i.de
  %i.dh = extractelement <2 x float> %foldExtExtBinop138, i64 1
  %i.di = extractelement <2 x float> %i.de, i64 0 ; 3 uses
  %i.dj = extractelement <2 x float> %i.dc, i64 0
  %i.dk = call float @llvm.fmuladd.f32(float %i.di, float %i.dj, float %i.dh)
end_hunk_0
