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
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load float, ptr %i.t, align 8, !tbaa !19, !noalias !26 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.w = load float, ptr %i.v, align 8, !tbaa !19, !noalias !26 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
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
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.db = load <2 x float>, ptr %i.c, align 8, !tbaa !19 ; 2 uses
  %i.dc = load float, ptr %i.da, align 8, !tbaa !19 ; 2 uses
  %i.dd = load <2 x float>, ptr %i.g, align 8, !tbaa !19 ; 2 uses
  %i.de = shufflevector <2 x float> %i.db, <2 x float> %i.dd, <2 x i32> <i32 1, i32 3>
  %i.df = shufflevector <2 x float> %i.db, <2 x float> %i.dd, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.dg = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.dj = load float, ptr %i.f, align 8, !tbaa !19
  %i.dk = load float, ptr %i.b, align 4, !tbaa !19 ; 3 uses
  %i.dl = load <2 x float>, ptr %i.q, align 4, !tbaa !19 ; 2 uses
  %i.dm = load <2 x float>, ptr %i.r, align 4, !tbaa !19 ; 2 uses
  %i.dn = shufflevector <2 x float> %i.dl, <2 x float> %i.dm, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.do = load <4 x float>, ptr %5, align 16      ; 2 uses
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.dq = shufflevector <2 x float> %i.dl, <2 x float> %i.dm, <2 x i32> <i32 0, i32 2>
  %i.dr = shufflevector <4 x float> %i.do, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ds = load <2 x float>, ptr %i.e, align 8, !tbaa !19
  %12 = load <3 x float>, ptr %i.i, align 8, !tbaa !19 ; 3 uses
  %i.dt = load <2 x float>, ptr %6, align 8, !tbaa !19 ; 4 uses
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dv = fmul <2 x float> %i.du, %i.de
  %i.dw = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.dw, <2 x float> %i.dv)
  %i.dy = load <2 x float>, ptr %5, align 16, !tbaa !19 ; 4 uses
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> %i.dt, <2 x i32> <i32 1, i32 3>
  %13 = shufflevector <3 x float> %12, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ea = fmul <2 x float> %i.dz, %13
  %i.eb = shufflevector <3 x float> %12, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ec = shufflevector <2 x float> %i.dy, <2 x float> %i.dt, <2 x i32> <i32 0, i32 2>
  %i.ed = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> %i.ec, <2 x float> %i.ea)
  %14 = shufflevector <3 x float> %12, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ee = insertelement <2 x float> %i.dp, float %i.dc, i64 1
  %i.ef = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> %i.ee, <2 x float> %i.ed) ; 3 uses
  %i.eg = fneg <2 x float> %i.ef
  %.sroa.3.12.vec.insert.i13 = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.eg, <2 x i32> <i32 3, i32 1>
  store <2 x float> %.sroa.3.12.vec.insert.i13, ptr %i.di, align 8
  %i.eh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %i.dh, <2 x float> %i.dx) ; 2 uses
  %i.ei = fneg <2 x float> %i.eh
  store <2 x float> %i.ei, ptr %8, align 8
  %i.ej = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ek = fmul <2 x float> %i.dq, %i.ej
  %i.el = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.el, <2 x float> %i.ek)
  %i.en = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %i.dr, <2 x float> %i.em)
  %i.eo = fadd <2 x float> %i.ds, %i.en
  %i.ep = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = fmul <2 x float> %i.eh, %i.eq
  %i.es = fadd <2 x float> %i.eo, %i.er
  %i.et = extractelement <2 x float> %i.ef, i64 0
  %i.eu = fadd float %i.et, %i.dj
  %i.ev = extractelement <2 x float> %i.ef, i64 1
  %i.ew = fmul float %i.ev, %i.dk
  %i.ex = fadd float %i.eu, %i.ew
  %.sroa.3.12.vec.insert.i23 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ex, i64 0
  store <2 x float> %i.es, ptr %9, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %9, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i23, ptr %i.ey, align 8
  %i.ez = load ptr, ptr %2, align 8, !tbaa !9
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %9, float noundef %i.dk)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fe = load <2 x float>, ptr %i.c, align 8, !tbaa !19 ; 2 uses
  %i.ff = load float, ptr %i.fc, align 4, !tbaa !19 ; 2 uses
  %i.fg = load float, ptr %6, align 8, !tbaa !19  ; 2 uses
  %i.fh = load float, ptr %i.fd, align 8, !tbaa !19 ; 2 uses
  %i.fi = load <2 x float>, ptr %i.g, align 8, !tbaa !19 ; 2 uses
  %i.fj = insertelement <2 x float> poison, float %i.ff, i64 0
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fl = shufflevector <2 x float> %i.fe, <2 x float> %i.fi, <2 x i32> <i32 1, i32 3>
  %i.fm = fmul <2 x float> %i.fk, %i.fl
  %i.fn = shufflevector <2 x float> %i.fe, <2 x float> %i.fi, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.fo = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> %i.fp, <2 x float> %i.fm)
  %i.fr = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.fs = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ft = load float, ptr %i.i, align 8, !tbaa !19 ; 2 uses
  %i.fu = load float, ptr %i.s, align 4, !tbaa !19 ; 2 uses
  %i.fv = fmul float %i.ff, %i.fu
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.ft, float %i.fg, float %i.fv)
  %i.fx = load float, ptr %i.x, align 8, !tbaa !19 ; 2 uses
  %i.fy = tail call noundef float @llvm.fmuladd.f32(float %i.fx, float %i.fh, float %i.fw)
  %.sroa.3.12.vec.insert.i28 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fy, i64 0
  %i.fz = getelementptr inbounds nuw i8, ptr %10, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i28, ptr %i.fz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.ga = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gc = load <2 x float>, ptr %i.q, align 4, !tbaa !19 ; 2 uses
  %i.gd = load <2 x float>, ptr %i.r, align 4, !tbaa !19 ; 2 uses
  %i.ge = shufflevector <2 x float> %i.gc, <2 x float> %i.gd, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.gf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ge, <2 x float> %i.fs, <2 x float> %i.fq)
  store <2 x float> %i.gf, ptr %10, align 8
  %i.gg = load float, ptr %i.ga, align 4, !tbaa !19 ; 2 uses
  %i.gh = load float, ptr %5, align 16, !tbaa !19 ; 2 uses
  %i.gi = load float, ptr %i.gb, align 8, !tbaa !19 ; 2 uses
  %i.gj = shufflevector <2 x float> %i.gc, <2 x float> %i.gd, <2 x i32> <i32 0, i32 2>
  %i.gk = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.gl = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gm = fmul <2 x float> %i.gj, %i.gl
  %i.gn = insertelement <2 x float> poison, float %i.gh, i64 0
  %i.go = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> %i.go, <2 x float> %i.gm)
  %i.gq = insertelement <2 x float> poison, float %i.gi, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ge, <2 x float> %i.gr, <2 x float> %i.gp)
  %i.gt = load <2 x float>, ptr %i.e, align 8, !tbaa !19
  %i.gu = fadd <2 x float> %i.gt, %i.gs
  %i.gv = fmul float %i.fu, %i.gg
  %i.gw = tail call float @llvm.fmuladd.f32(float %i.ft, float %i.gh, float %i.gv)
  %i.gx = tail call noundef float @llvm.fmuladd.f32(float %i.fx, float %i.gi, float %i.gw)
  %i.gy = load float, ptr %i.f, align 8, !tbaa !19
  %i.gz = fadd float %i.gx, %i.gy
  %.sroa.3.12.vec.insert.i.i33 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gz, i64 0
  store <2 x float> %i.gu, ptr %11, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %11, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i33, ptr %i.ha, align 8
  %i.hb = load float, ptr %i.b, align 4, !tbaa !19
  %i.hc = load ptr, ptr %2, align 8, !tbaa !9
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.he = load ptr, ptr %i.hd, align 8
  call void %i.he(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %11, float noundef %i.hb)
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
end_hunk_0
begin_hunk_1_@_ZN22SphereTriangleDetector7collideERK9btVector3RS0_S3_RfS4_f:bb.a
  %.sroa.17.8.vec.insert.i = insertelement <2 x float> %.sroa.3.12.vec.insert.i.i, float %i.dx, i64 0
  br label %_Z18SegmentSqrDistanceRK9btVector3S1_S1_RS_.exit

bb.i:                                             ; preds = %bb.g
  %i.dy = fsub <2 x float> %i.dc, %i.de
  %i.dz = fsub float %i.cz, %i.dg
  %.sroa.17.8.vec.insert88.i = insertelement <2 x float> %.sroa.3.12.vec.insert.i.i, float %i.dz, i64 0
  br label %_Z18SegmentSqrDistanceRK9btVector3S1_S1_RS_.exit

_Z18SegmentSqrDistanceRK9btVector3S1_S1_RS_.exit: ; preds = %bb.f, %bb.h, %bb.i
  %.0.i = phi float [ %i.dr, %bb.h ], [ 1.000000e+00, %bb.i ], [ 0.000000e+00, %bb.f ] ; 2 uses
  %.sroa.059.0.i = phi <2 x float> [ %i.dw, %bb.h ], [ %i.dy, %bb.i ], [ %i.dc, %bb.f ] ; 3 uses
  %.sroa.17.0.i = phi <2 x float> [ %.sroa.17.8.vec.insert.i, %bb.h ], [ %.sroa.17.8.vec.insert88.i, %bb.i ], [ %.sroa.3.12.vec.insert.i.i, %bb.f ]
  %i.ea = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ec = fmul <2 x float> %i.de, %i.eb
  %i.ed = fmul float %i.dg, %.0.i
  %i.ee = fadd <2 x float> %i.da, %i.ec
  %i.ef = fadd float %i.cy, %i.ed
  %.sroa.3.12.vec.insert.i21.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ef, i64 0
  %.sroa.059.0.vec.extract68.i = extractelement <2 x float> %.sroa.059.0.i, i64 0 ; 2 uses
  %foldExtExtBinop142 = fmul <2 x float> %.sroa.059.0.i, %.sroa.059.0.i
  %i.eg = extractelement <2 x float> %foldExtExtBinop142, i64 1
  %i.eh = call float @llvm.fmuladd.f32(float %.sroa.059.0.vec.extract68.i, float %.sroa.059.0.vec.extract68.i, float %i.eg)
  %.sroa.17.8.vec.extract90.i = extractelement <2 x float> %.sroa.17.0.i, i64 0 ; 2 uses
  %i.ei = call noundef float @llvm.fmuladd.f32(float %.sroa.17.8.vec.extract90.i, float %.sroa.17.8.vec.extract90.i, float %i.eh)
  %i.ej = fcmp olt float %i.ei, %i.ck             ; 3 uses
  %.sroa.894.1 = select i1 %i.ej, <2 x float> %.sroa.3.12.vec.insert.i21.i, <2 x float> %.sroa.894.0120 ; 2 uses
  %.sroa.092.1 = select i1 %i.ej, <2 x float> %i.ee, <2 x float> %.sroa.092.0121 ; 2 uses
  %.145 = select i1 %i.ej, i1 true, i1 %.044122   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  %i.ek = add nuw nsw i32 %.043123, 1             ; 2 uses
  %i.el = load ptr, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !9
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 152
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = call noundef i32 %i.eo(ptr noundef nonnull align 8 dereferenceable(112) %i.el)
  %i.eq = icmp slt i32 %i.ek, %i.ep
  br i1 %i.eq, label %bb.f, label %._crit_edge

bb.j:                                             ; preds = %._crit_edge._crit_edge, %.critedge
  %i.er = phi float [ %i.bg, %.critedge ], [ %.pre127, %._crit_edge._crit_edge ]
  %.sroa.894.2 = phi <2 x float> [ %.sroa.3.12.vec.insert.i74, %.critedge ], [ %.sroa.894.1, %._crit_edge._crit_edge ] ; 3 uses
  %.sroa.092.2 = phi <2 x float> [ %i.ci, %.critedge ], [ %.sroa.092.1, %._crit_edge._crit_edge ] ; 3 uses
  %i.es = phi <2 x float> [ %i.bb, %.critedge ], [ %i.cs, %._crit_edge._crit_edge ]
  %i.et = fsub <2 x float> %i.es, %.sroa.092.2    ; 3 uses
  %.sroa.894.8.vec.extract = extractelement <2 x float> %.sroa.894.2, i64 0
  %i.eu = fsub float %i.er, %.sroa.894.8.vec.extract ; 7 uses
  %i.ev = extractelement <2 x float> %i.et, i64 1 ; 5 uses
  %i.ew = fmul float %i.ev, %i.ev
  %i.ex = extractelement <2 x float> %i.et, i64 0 ; 5 uses
  %i.ey = call float @llvm.fmuladd.f32(float %i.ex, float %i.ex, float %i.ew)
  %i.ez = call noundef float @llvm.fmuladd.f32(float %i.eu, float %i.eu, float %i.ey) ; 2 uses
  %i.fa = fmul float %i.j, %i.j
  %i.fb = fcmp olt float %i.ez, %i.fa
  br i1 %i.fb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.3.12.vec.insert.i79 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eu, i64 0
  %sqrt = call float @llvm.sqrt.f32(float %i.ez)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i79, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !20
  %i.fc = fmul float %i.ev, %i.ev
  %i.fd = call float @llvm.fmuladd.f32(float %i.ex, float %i.ex, float %i.fc)
  %i.fe = call noundef float @llvm.fmuladd.f32(float %i.eu, float %i.eu, float %i.fd)
  %sqrt.i.i82 = call noundef float @llvm.sqrt.f32(float %i.fe)
  %i.ff = fdiv float 1.000000e+00, %sqrt.i.i82    ; 2 uses
  %i.fg = insertelement <2 x float> poison, float %i.ff, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = fmul <2 x float> %i.et, %i.fh
  store <2 x float> %i.fi, ptr %3, align 4, !tbaa !19
  %i.fj = fmul float %i.eu, %i.ff
  store float %i.fj, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !19
  store <2 x float> %.sroa.092.2, ptr %2, align 4
  %.sroa.894.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.894.2, ptr %.sroa.894.0..sroa_idx, align 4, !tbaa !20
  %i.fk = fsub float %i.j, %sqrt
  %i.fl = fneg float %i.fk
  store float %i.fl, ptr %4, align 4, !tbaa !19
  br label %.critedge51

bb.l:                                             ; preds = %bb.j
  %i.fm = fmul float %i.ev, 0.000000e+00
  %i.fn = call float @llvm.fmuladd.f32(float %i.ex, float 0.000000e+00, float %i.fm)
  %i.fo = call noundef float @llvm.fmuladd.f32(float %i.eu, float 0.000000e+00, float %i.fn)
  %i.fp = fcmp ult float %i.fo, 0.000000e+00
  br i1 %i.fp, label %bb.m, label %.critedge51

bb.m:                                             ; preds = %bb.l
  store <2 x float> %.sroa.092.2, ptr %2, align 4
  %.sroa.894.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.894.2, ptr %.sroa.894.0..sroa_idx95, align 4, !tbaa !20
  store float 0.000000e+00, ptr %5, align 4, !tbaa !19
  br label %.critedge51

.critedge51:                                      ; preds = %bb.e, %._crit_edge, %bb.l, %bb.m, %bb.k, %bb.c
  %.2 = phi i1 [ false, %bb.c ], [ false, %._crit_edge ], [ false, %bb.l ], [ true, %bb.k ], [ true, %bb.m ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef float @_Z18SegmentSqrDistanceRK9btVector3S1_S1_RS_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !19 ; 3 uses
  %i.e = fsub float %i.b, %i.d                    ; 4 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.e, i64 0 ; 3 uses
  %i.f = load <2 x float>, ptr %0, align 4, !tbaa !19 ; 3 uses
  %i.g = load <2 x float>, ptr %2, align 4, !tbaa !19
  %i.h = fsub <2 x float> %i.g, %i.f              ; 5 uses
  %i.i = load <2 x float>, ptr %1, align 4, !tbaa !19
  %i.j = fsub <2 x float> %i.i, %i.f              ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !19
  %i.m = fsub float %i.l, %i.d                    ; 6 uses
  %foldExtExtBinop = fmul <2 x float> %i.h, %i.j
  %i.n = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.o = extractelement <2 x float> %i.j, i64 0   ; 3 uses
  %i.p = extractelement <2 x float> %i.h, i64 0
  %i.q = tail call float @llvm.fmuladd.f32(float %i.o, float %i.p, float %i.n)
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
  store <2 x float> %.sroa.3.12.vec.insert.i21, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !20
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
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load <2 x float>, ptr %i.a, align 4, !tbaa !19 ; 4 uses
  %i.o = load <2 x float>, ptr %1, align 4, !tbaa !19 ; 3 uses
  %i.p = load float, ptr %i.c, align 4, !tbaa !19
  %i.q = load <2 x float>, ptr %i.b, align 4, !tbaa !19 ; 4 uses
  %i.r = load float, ptr %i.h, align 4, !tbaa !19 ; 2 uses
  %i.s = shufflevector <2 x float> %i.n, <2 x float> %i.q, <2 x i32> <i32 0, i32 2>
  %i.t = shufflevector <2 x float> %i.o, <2 x float> %i.n, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.u = fsub <2 x float> %i.s, %i.t              ; 2 uses
  %i.v = shufflevector <2 x float> %i.n, <2 x float> %i.q, <2 x i32> <i32 1, i32 3>
  %i.w = shufflevector <2 x float> %i.o, <2 x float> %i.n, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.x = fsub <2 x float> %i.v, %i.w              ; 2 uses
  %i.y = insertelement <2 x float> poison, float %i.e, i64 0
  %i.z = insertelement <2 x float> %i.y, float %i.j, i64 1
  %i.aa = insertelement <2 x float> poison, float %i.g, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.e, i64 1 ; 2 uses
  %i.ac = fsub <2 x float> %i.z, %i.ab            ; 2 uses
  %i.ad = extractelement <2 x float> %i.q, i64 0
  %foldExtExtBinop = fsub <2 x float> %i.o, %i.q
  %i.ae = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.af = fsub float %i.p, %i.r                   ; 2 uses
  %4 = load <3 x float>, ptr %3, align 4, !tbaa !19 ; 5 uses
  %i.ag = load float, ptr %3, align 4, !tbaa !19
  %i.ah = shufflevector <3 x float> %4, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fsub <2 x float> %i.ah, %i.t
  %5 = shufflevector <3 x float> %4, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %6 = fsub <2 x float> %5, %i.w
  %7 = shufflevector <3 x float> %4, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %8 = fsub <2 x float> %7, %i.ab
  %9 = fsub float %i.ag, %i.ad
  %10 = extractelement <3 x float> %4, i64 1
  %i.aj = fsub float %10, %i.r
  %11 = extractelement <3 x float> %4, i64 2
  %i.ak = fsub float %11, %i.j
  %i.al = load float, ptr %2, align 4, !tbaa !19  ; 3 uses
  %i.am = load float, ptr %i.l, align 4, !tbaa !19 ; 3 uses
  %i.an = load float, ptr %i.m, align 4, !tbaa !19 ; 3 uses
  %i.ao = fneg float %i.am                        ; 2 uses
  %i.ap = fneg float %i.an                        ; 2 uses
  %i.aq = fneg float %i.al                        ; 2 uses
  %i.ar = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x float> %i.ac, %i.as
  %i.au = insertelement <2 x float> poison, float %i.am, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.av, <2 x float> %i.at)
  %i.ax = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x float> %i.u, %i.ay
  %i.ba = insertelement <2 x float> poison, float %i.al, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.bb, <2 x float> %i.az)
  %i.bd = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x float> %i.x, %i.be
  %i.bg = insertelement <2 x float> poison, float %i.an, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.bh, <2 x float> %i.bf)
  %i.bj = fmul float %i.k, %i.ap
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.af, float %i.am, float %i.bj)
  %i.bl = fmul float %i.ae, %i.ao
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.k, float %i.al, float %i.bl)
  %i.bn = fmul float %i.af, %i.aq
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.an, float %i.bn)
  %i.bp = fmul <2 x float> %6, %i.bc
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.ai, <2 x float> %i.bp)
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %8, <2 x float> %i.bq) ; 3 uses
  %i.bs = fmul float %i.aj, %i.bm
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bk, float %9, float %i.bs)
  %i.bu = tail call noundef float @llvm.fmuladd.f32(float %i.bo, float %i.ak, float %i.bt) ; 2 uses
  %i.bv = extractelement <2 x float> %i.br, i64 0
  %i.bw = fcmp ogt float %i.bv, 0.000000e+00
  %i.bx = extractelement <2 x float> %i.br, i64 1
  %i.by = fcmp ogt float %i.bx, 0.000000e+00
  %or.cond = and i1 %i.bw, %i.by
  %i.bz = fcmp ogt float %i.bu, 0.000000e+00
  %or.cond3 = and i1 %i.bz, %or.cond
  br i1 %or.cond3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ca = fcmp ugt <2 x float> %i.br, zeroinitializer
  %i.cb = bitcast <2 x i1> %i.ca to i2
  %or.cond5 = icmp eq i2 %i.cb, 0
  %i.cc = fcmp ole float %i.bu, 0.000000e+00
  %or.cond7 = and i1 %i.cc, %or.cond5
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
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"vtable pointer", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"_ZTS36btDiscreteCollisionDetectorInterface"}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTS13btSphereShape", !11, i64 0}
!13 = !{!"p1 _ZTS15btTriangleShape", !11, i64 0}
!14 = !{!"float", !5, i64 0}
!15 = !{!"_ZTS22SphereTriangleDetector", !10, i64 0, !12, i64 8, !13, i64 16, !14, i64 24}
!16 = !{!15, !12, i64 8}
!17 = !{!15, !13, i64 16}
!18 = !{!15, !14, i64 24}
!19 = !{!14, !14, i64 0}
!20 = !{!5, !5, i64 0}
!21 = distinct !{!21, !"_ZNK11btTransform12inverseTimesERKS_"}
!22 = distinct !{!22, !21, !"_ZNK11btTransform12inverseTimesERKS_: argument 0"}
!23 = distinct !{!23, !"_ZNK11btMatrix3x314transposeTimesERKS_"}
!24 = distinct !{!24, !23, !"_ZNK11btMatrix3x314transposeTimesERKS_: argument 0"}
!25 = !{!22}
!26 = !{!24, !22}
end_hunk_1
