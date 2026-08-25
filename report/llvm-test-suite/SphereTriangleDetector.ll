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
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ag = load float, ptr %i.af, align 8, !tbaa !19, !noalias !23 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !19, !noalias !23 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.ak = load float, ptr %i.aj, align 8, !tbaa !19, !noalias !23 ; 2 uses
  %i.al = load <2 x float>, ptr %i.c, align 8, !tbaa !19, !noalias !23 ; 2 uses
  %i.am = load <2 x float>, ptr %i.s, align 8, !tbaa !19, !noalias !23 ; 2 uses
  %i.an = load <2 x float>, ptr %i.u, align 8, !tbaa !19, !noalias !23 ; 2 uses
  %i.ao = insertelement <2 x float> poison, float %i.m, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x float> %i.ap, %i.am
  %i.ar = insertelement <2 x float> poison, float %i.h, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.as, <2 x float> %i.aq)
  %i.au = insertelement <2 x float> poison, float %i.r, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.av, <2 x float> %i.at)
  %i.ax = fmul float %i.m, %i.ai
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.h, float %i.ax)
  %i.az = tail call noundef float @llvm.fmuladd.f32(float %i.ak, float %i.r, float %i.ay)
  %.sroa.3.12.vec.insert.i5.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.az, i64 0
  %i.ba = load <2 x float>, ptr %1, align 8, !tbaa !19, !noalias !23 ; 2 uses
  %i.bb = load <2 x float>, ptr %i.t, align 8, !tbaa !19, !noalias !23 ; 2 uses
  %i.bc = load <2 x float>, ptr %i.v, align 8, !tbaa !19, !noalias !23 ; 2 uses
  %i.bd = shufflevector <2 x float> %i.am, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bf = shufflevector <2 x float> %i.bb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bg = insertelement <4 x float> %i.bf, float 1.000000e+00, i64 3
  %i.bh = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bi = shufflevector <4 x float> %i.bh, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bj = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bk = insertelement <4 x float> %i.bj, float -0.000000e+00, i64 3
  %i.bl = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bn = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bo = insertelement <4 x float> %i.bn, float -0.000000e+00, i64 3
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bq = load <2 x float>, ptr %i.x, align 4, !tbaa !19, !noalias !23 ; 2 uses
  %i.br = load float, ptr %i.aa, align 8, !tbaa !19, !noalias !23
  %i.bs = load <2 x float>, ptr %i.w, align 4, !tbaa !19, !noalias !23 ; 2 uses
  %i.bt = load float, ptr %i.z, align 8, !tbaa !19, !noalias !23
  %i.bu = load <2 x float>, ptr %i.y, align 4, !tbaa !19, !noalias !23 ; 2 uses
  %i.bv = load float, ptr %i.ab, align 8, !tbaa !19, !noalias !23
  %i.bw = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bx = shufflevector <4 x float> %i.bg, <4 x float> %i.bw, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.by = fmul <4 x float> %i.be, %i.bx
  %i.bz = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ca = shufflevector <4 x float> %i.bk, <4 x float> %i.bz, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bi, <4 x float> %i.ca, <4 x float> %i.by)
  %i.cc = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cd = shufflevector <4 x float> %i.bo, <4 x float> %i.cc, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ce = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %i.cd, <4 x float> %i.cb)
  %i.cf = shufflevector <4 x float> %i.bd, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cg = shufflevector <2 x float> %i.bb, <2 x float> %i.bq, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ch = insertelement <4 x float> %i.cg, float 1.000000e+00, i64 3 ; 2 uses
  %i.ci = fmul <4 x float> %i.cf, %i.ch
  %i.cj = shufflevector <4 x float> %i.bh, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ck = shufflevector <2 x float> %i.ba, <2 x float> %i.bs, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cl = insertelement <4 x float> %i.ck, float -0.000000e+00, i64 3 ; 2 uses
  %i.cm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cj, <4 x float> %i.cl, <4 x float> %i.ci)
  %i.cn = shufflevector <4 x float> %i.bl, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.co = shufflevector <2 x float> %i.bc, <2 x float> %i.bu, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cp = insertelement <4 x float> %i.co, float -0.000000e+00, i64 3 ; 2 uses
  %i.cq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cn, <4 x float> %i.cp, <4 x float> %i.cm)
  store <4 x float> %i.ce, ptr %7, align 16, !alias.scope !20
  store <4 x float> %i.cq, ptr %i.bp, align 16, !alias.scope !20
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.cs = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ai, i64 0
  %i.ct = insertelement <4 x float> %i.cs, float %i.br, i64 2
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.cv = insertelement <4 x float> %i.ch, float %i.ai, i64 2
  %i.cw = fmul <4 x float> %i.cu, %i.cv
  %i.cx = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ag, i64 0
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cz = insertelement <4 x float> %i.cl, float %i.bt, i64 2
  %i.da = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cy, <4 x float> %i.cz, <4 x float> %i.cw)
  %i.db = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ak, i64 0
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dd = insertelement <4 x float> %i.cp, float %i.bv, i64 2
  %i.de = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dc, <4 x float> %i.dd, <4 x float> %i.da)
  store <4 x float> %i.de, ptr %i.cr, align 16, !alias.scope !20
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store <2 x float> %i.aw, ptr %i.df, align 16, !alias.scope !20
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i5.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !26, !alias.scope !20
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dh = load float, ptr %i.dg, align 8, !tbaa !18
  %i.di = call noundef zeroext i1 @_ZN22SphereTriangleDetector7collideERK9btVector3RS0_S3_RfS4_f(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.df, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, float noundef %i.dh)
  br i1 %i.di, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dk = load float, ptr %i.dj, align 8, !tbaa !19 ; 2 uses
  %12 = load float, ptr %i.u, align 8, !tbaa !19
  %13 = load float, ptr %i.ae, align 4, !tbaa !19
  %14 = load float, ptr %i.aj, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.dl = load <2 x float>, ptr %i.c, align 8, !tbaa !19 ; 2 uses
  %i.dm = load <2 x float>, ptr %i.s, align 8, !tbaa !19 ; 2 uses
  %i.dn = shufflevector <2 x float> %i.dl, <2 x float> %i.dm, <2 x i32> <i32 1, i32 3>
  %i.do = shufflevector <2 x float> %i.dl, <2 x float> %i.dm, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.dp = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.ds = load <4 x float>, ptr %5, align 16      ; 2 uses
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %15 = load float, ptr %i.p, align 8, !tbaa !19
  %i.du = load float, ptr %i.b, align 4, !tbaa !19 ; 3 uses
  %i.dv = load <2 x float>, ptr %6, align 8, !tbaa !19 ; 4 uses
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dx = fmul <2 x float> %i.dw, %i.dn
  %i.dy = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.do, <2 x float> %i.dy, <2 x float> %i.dx)
  %i.ea = load <2 x float>, ptr %5, align 16, !tbaa !19 ; 4 uses
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> %i.dv, <2 x i32> <i32 1, i32 3>
  %16 = insertelement <2 x float> poison, float %13, i64 0
  %i.ec = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = fmul <2 x float> %i.eb, %i.ec
  %17 = insertelement <2 x float> poison, float %12, i64 0
  %i.ee = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = shufflevector <2 x float> %i.ea, <2 x float> %i.dv, <2 x i32> <i32 0, i32 2>
  %i.eg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.ef, <2 x float> %i.ed)
  %18 = insertelement <2 x float> poison, float %14, i64 0
  %i.eh = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ei = insertelement <2 x float> %i.dt, float %i.dk, i64 1
  %i.ej = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eh, <2 x float> %i.ei, <2 x float> %i.eg) ; 3 uses
  %i.ek = fneg <2 x float> %i.ej
  %.sroa.3.12.vec.insert.i13 = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.ek, <2 x i32> <i32 3, i32 1>
  store <2 x float> %.sroa.3.12.vec.insert.i13, ptr %i.dr, align 8
  %i.el = load <2 x float>, ptr %i.ac, align 4, !tbaa !19 ; 2 uses
  %i.em = load <2 x float>, ptr %i.ad, align 4, !tbaa !19 ; 2 uses
  %i.en = shufflevector <2 x float> %i.el, <2 x float> %i.em, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.eo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.en, <2 x float> %i.dq, <2 x float> %i.dz) ; 2 uses
  %i.ep = fneg <2 x float> %i.eo
  store <2 x float> %i.ep, ptr %8, align 8
  %i.eq = shufflevector <2 x float> %i.el, <2 x float> %i.em, <2 x i32> <i32 0, i32 2>
  %i.er = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.es = fmul <2 x float> %i.eq, %i.er
  %i.et = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.do, <2 x float> %i.et, <2 x float> %i.es)
  %i.ev = shufflevector <4 x float> %i.ds, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ew = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.en, <2 x float> %i.ev, <2 x float> %i.eu)
  %i.ex = load <2 x float>, ptr %i.e, align 8, !tbaa !19
  %i.ey = fadd <2 x float> %i.ex, %i.ew
  %i.ez = insertelement <2 x float> poison, float %i.du, i64 0
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = fmul <2 x float> %i.eo, %i.fa
  %i.fc = fadd <2 x float> %i.ey, %i.fb
  %i.fd = extractelement <2 x float> %i.ej, i64 0
  %i.fe = fadd float %i.fd, %15
  %i.ff = extractelement <2 x float> %i.ej, i64 1
  %i.fg = fmul float %i.ff, %i.du
  %i.fh = fadd float %i.fe, %i.fg
  %.sroa.3.12.vec.insert.i23 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fh, i64 0
  store <2 x float> %i.fc, ptr %9, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i23, ptr %i.fi, align 8
  %i.fj = load ptr, ptr %2, align 8, !tbaa !8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %9, float noundef %i.du)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.fm = load float, ptr %6, align 8, !tbaa !19  ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !19 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fq = load float, ptr %i.fp, align 8, !tbaa !19 ; 2 uses
  %i.fr = load <2 x float>, ptr %i.c, align 8, !tbaa !19 ; 2 uses
  %i.fs = load <2 x float>, ptr %i.s, align 8, !tbaa !19 ; 2 uses
  %i.ft = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fv = shufflevector <2 x float> %i.fr, <2 x float> %i.fs, <2 x i32> <i32 1, i32 3>
  %i.fw = fmul <2 x float> %i.fu, %i.fv
  %i.fx = shufflevector <2 x float> %i.fr, <2 x float> %i.fs, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.fy = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ga = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> %i.fz, <2 x float> %i.fw)
  %i.gb = insertelement <2 x float> poison, float %i.fq, i64 0
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gd = load float, ptr %i.u, align 8, !tbaa !19 ; 2 uses
  %i.ge = load float, ptr %i.ae, align 4, !tbaa !19 ; 2 uses
  %i.gf = fmul float %i.fo, %i.ge
  %i.gg = tail call float @llvm.fmuladd.f32(float %i.gd, float %i.fm, float %i.gf)
  %i.gh = load float, ptr %i.aj, align 8, !tbaa !19 ; 2 uses
  %i.gi = tail call noundef float @llvm.fmuladd.f32(float %i.gh, float %i.fq, float %i.gg)
  %.sroa.3.12.vec.insert.i28 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gi, i64 0
  %i.gj = getelementptr inbounds nuw i8, ptr %10, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i28, ptr %i.gj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.gk = load float, ptr %5, align 16, !tbaa !19 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !19 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.go = load float, ptr %i.gn, align 8, !tbaa !19 ; 2 uses
  %i.gp = load <2 x float>, ptr %i.ac, align 4, !tbaa !19 ; 2 uses
  %i.gq = load <2 x float>, ptr %i.ad, align 4, !tbaa !19 ; 2 uses
  %i.gr = shufflevector <2 x float> %i.gp, <2 x float> %i.gq, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.gs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gr, <2 x float> %i.gc, <2 x float> %i.ga)
  store <2 x float> %i.gs, ptr %10, align 8
  %i.gt = shufflevector <2 x float> %i.gp, <2 x float> %i.gq, <2 x i32> <i32 0, i32 2>
  %i.gu = insertelement <2 x float> poison, float %i.gm, i64 0
  %i.gv = shufflevector <2 x float> %i.gu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gw = fmul <2 x float> %i.gt, %i.gv
  %i.gx = insertelement <2 x float> poison, float %i.gk, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> %i.gy, <2 x float> %i.gw)
  %i.ha = insertelement <2 x float> poison, float %i.go, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gr, <2 x float> %i.hb, <2 x float> %i.gz)
  %i.hd = load <2 x float>, ptr %i.e, align 8, !tbaa !19
  %i.he = fadd <2 x float> %i.hd, %i.hc
  %i.hf = fmul float %i.ge, %i.gm
  %i.hg = tail call float @llvm.fmuladd.f32(float %i.gd, float %i.gk, float %i.hf)
  %i.hh = tail call noundef float @llvm.fmuladd.f32(float %i.gh, float %i.go, float %i.hg)
  %i.hi = load float, ptr %i.p, align 8, !tbaa !19
  %i.hj = fadd float %i.hh, %i.hi
  %.sroa.3.12.vec.insert.i.i33 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hj, i64 0
  store <2 x float> %i.he, ptr %11, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %11, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i33, ptr %i.hk, align 8
  %i.hl = load float, ptr %i.b, align 4, !tbaa !19
  %i.hm = load ptr, ptr %2, align 8, !tbaa !8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.ho = load ptr, ptr %i.hn, align 8
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %11, float noundef %i.hl)
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
end_hunk_0
