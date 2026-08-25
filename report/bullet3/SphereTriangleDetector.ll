Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/SphereTriangleDetector?download=true
inline.NumInlined: 207
inline.NumDeleted: 42
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

@_ZTV22SphereTriangleDetector = dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI22SphereTriangleDetector, ptr @_ZN36btDiscreteCollisionDetectorInterfaceD2Ev, ptr @_ZN22SphereTriangleDetectorD0Ev, ptr @_ZN22SphereTriangleDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb] }, align 8
@_ZTI22SphereTriangleDetector = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS22SphereTriangleDetector, ptr @_ZTI36btDiscreteCollisionDetectorInterface }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS22SphereTriangleDetector = dso_local constant [25 x i8] c"22SphereTriangleDetector\00", align 1
@_ZTI36btDiscreteCollisionDetectorInterface = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS36btDiscreteCollisionDetectorInterface }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS36btDiscreteCollisionDetectorInterface = linkonce_odr dso_local constant [39 x i8] c"36btDiscreteCollisionDetectorInterface\00", comdat, align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN22SphereTriangleDetectorC1EP13btSphereShapeP15btTriangleShapef = dso_local unnamed_addr alias void (ptr, ptr, ptr, float), ptr @_ZN22SphereTriangleDetectorC2EP13btSphereShapeP15btTriangleShapef

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN22SphereTriangleDetectorC2EP13btSphereShapeP15btTriangleShapef(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(28) initializes((0, 28)) %0, ptr noundef %1, ptr noundef %2, float noundef %3) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV22SphereTriangleDetector, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %3, ptr %i.c, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22SphereTriangleDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(132) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nofree readnone captures(none) %3, i1 noundef zeroext %4) unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %class.btVector3, align 16          ; 8 uses
  %6 = alloca %class.btVector3, align 8           ; 8 uses
  %i.a = alloca float, align 4                    ; 6 uses
  %7 = alloca %class.btTransform, align 16        ; 7 uses
  %8 = alloca %class.btVector3, align 8           ; 5 uses
  %9 = alloca %class.btVector3, align 8           ; 5 uses
  %10 = alloca %class.btVector3, align 8          ; 5 uses
  %11 = alloca %class.btVector3, align 8          ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.e = load float, ptr %i.c, align 4, !tbaa !20, !noalias !21
  %i.f = load float, ptr %i.d, align 4, !tbaa !20, !noalias !21
  %i.g = fsub float %i.e, %i.f                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.i = load float, ptr %i.h, align 4, !tbaa !20, !noalias !21
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.k = load float, ptr %i.j, align 4, !tbaa !20, !noalias !21
  %i.l = fsub float %i.i, %i.k                    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load float, ptr %i.m, align 4, !tbaa !20, !noalias !21
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !20, !noalias !21
  %i.q = fsub float %i.n, %i.p                    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.af = load float, ptr %i.ae, align 4, !tbaa !20, !noalias !24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !20, !noalias !24 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !20, !noalias !24 ; 2 uses
  %i.ak = load <2 x float>, ptr %i.b, align 4, !tbaa !20, !noalias !24 ; 2 uses
  %i.al = load <2 x float>, ptr %i.r, align 4, !tbaa !20, !noalias !24 ; 2 uses
  %i.am = load <2 x float>, ptr %i.t, align 4, !tbaa !20, !noalias !24 ; 2 uses
  %i.an = insertelement <2 x float> poison, float %i.l, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x float> %i.ao, %i.al
  %i.aq = insertelement <2 x float> poison, float %i.g, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.ar, <2 x float> %i.ap)
  %i.at = insertelement <2 x float> poison, float %i.q, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.au, <2 x float> %i.as)
  %i.aw = fmul float %i.l, %i.ah
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.af, float %i.g, float %i.aw)
  %i.ay = tail call noundef float @llvm.fmuladd.f32(float %i.aj, float %i.q, float %i.ax)
  %.sroa.3.12.vec.insert.i5.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ay, i64 0
  %i.az = load <2 x float>, ptr %1, align 4, !tbaa !20, !noalias !24 ; 2 uses
  %i.ba = load <2 x float>, ptr %i.s, align 4, !tbaa !20, !noalias !24 ; 2 uses
  %i.bb = load <2 x float>, ptr %i.u, align 4, !tbaa !20, !noalias !24 ; 2 uses
  %i.bc = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.be = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bf = insertelement <4 x float> %i.be, float 1.000000e+00, i64 3
  %i.bg = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bi = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bj = insertelement <4 x float> %i.bi, float -0.000000e+00, i64 3
  %i.bk = shufflevector <2 x float> %i.am, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bm = shufflevector <2 x float> %i.bb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bn = insertelement <4 x float> %i.bm, float -0.000000e+00, i64 3
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bp = load <2 x float>, ptr %i.w, align 4, !tbaa !20, !noalias !24 ; 2 uses
  %i.bq = load float, ptr %i.z, align 4, !tbaa !20, !noalias !24
  %i.br = load <2 x float>, ptr %i.v, align 4, !tbaa !20, !noalias !24 ; 2 uses
  %i.bs = load float, ptr %i.y, align 4, !tbaa !20, !noalias !24
  %i.bt = load <2 x float>, ptr %i.x, align 4, !tbaa !20, !noalias !24 ; 2 uses
  %i.bu = load float, ptr %i.aa, align 4, !tbaa !20, !noalias !24
  %i.bv = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bw = shufflevector <4 x float> %i.bf, <4 x float> %i.bv, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bx = fmul <4 x float> %i.bd, %i.bw
  %i.by = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bz = shufflevector <4 x float> %i.bj, <4 x float> %i.by, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ca = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> %i.bz, <4 x float> %i.bx)
  %i.cb = shufflevector <2 x float> %i.bt, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cc = shufflevector <4 x float> %i.bn, <4 x float> %i.cb, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bl, <4 x float> %i.cc, <4 x float> %i.ca)
  %i.ce = shufflevector <4 x float> %i.bc, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cf = shufflevector <2 x float> %i.ba, <2 x float> %i.bp, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cg = insertelement <4 x float> %i.cf, float 1.000000e+00, i64 3 ; 2 uses
  %i.ch = fmul <4 x float> %i.ce, %i.cg
  %i.ci = shufflevector <4 x float> %i.bg, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cj = shufflevector <2 x float> %i.az, <2 x float> %i.br, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ck = insertelement <4 x float> %i.cj, float -0.000000e+00, i64 3 ; 2 uses
  %i.cl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ci, <4 x float> %i.ck, <4 x float> %i.ch)
  %i.cm = shufflevector <4 x float> %i.bk, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cn = shufflevector <2 x float> %i.bb, <2 x float> %i.bt, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.co = insertelement <4 x float> %i.cn, float -0.000000e+00, i64 3 ; 2 uses
  %i.cp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cm, <4 x float> %i.co, <4 x float> %i.cl)
  store <4 x float> %i.cd, ptr %7, align 16, !alias.scope !21
  store <4 x float> %i.cp, ptr %i.bo, align 16, !alias.scope !21
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.cr = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ah, i64 0
  %i.cs = insertelement <4 x float> %i.cr, float %i.bq, i64 2
  %i.ct = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.cu = insertelement <4 x float> %i.cg, float %i.ah, i64 2
  %i.cv = fmul <4 x float> %i.ct, %i.cu
  %i.cw = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.af, i64 0
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cy = insertelement <4 x float> %i.ck, float %i.bs, i64 2
  %i.cz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cx, <4 x float> %i.cy, <4 x float> %i.cv)
  %i.da = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.aj, i64 0
  %i.db = shufflevector <4 x float> %i.da, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dc = insertelement <4 x float> %i.co, float %i.bu, i64 2
  %i.dd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> %i.dc, <4 x float> %i.cz)
  store <4 x float> %i.dd, ptr %i.cq, align 16, !alias.scope !21
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store <2 x float> %i.av, ptr %i.de, align 16, !alias.scope !21
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i5.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !27, !alias.scope !21
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dg = load float, ptr %i.df, align 8, !tbaa !19
  %i.dh = call noundef zeroext i1 @_ZN22SphereTriangleDetector7collideERK9btVector3RS0_S3_RfS4_f(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.de, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr nonnull align 4 poison, float noundef %i.dg)
  br i1 %i.dh, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dj = load float, ptr %i.di, align 8, !tbaa !20 ; 2 uses
  %12 = load <4 x float>, ptr %i.t, align 4
  %13 = load <4 x float>, ptr %i.ad, align 4
  %14 = load <4 x float>, ptr %i.ai, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.dk = load <2 x float>, ptr %i.b, align 4, !tbaa !20 ; 2 uses
  %i.dl = load <2 x float>, ptr %i.r, align 4, !tbaa !20 ; 2 uses
  %i.dm = shufflevector <2 x float> %i.dk, <2 x float> %i.dl, <2 x i32> <i32 1, i32 3>
  %i.dn = shufflevector <2 x float> %i.dk, <2 x float> %i.dl, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.do = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %i.dr = load <4 x float>, ptr %5, align 16      ; 2 uses
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.dt = load float, ptr %i.o, align 4, !tbaa !20
  %i.du = load float, ptr %i.a, align 4, !tbaa !20 ; 3 uses
  %i.dv = load <2 x float>, ptr %6, align 8, !tbaa !20 ; 4 uses
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dx = fmul <2 x float> %i.dw, %i.dm
  %i.dy = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %i.dy, <2 x float> %i.dx)
  %i.ea = load <2 x float>, ptr %5, align 16, !tbaa !20 ; 4 uses
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> %i.dv, <2 x i32> <i32 1, i32 3>
  %i.ec = shufflevector <4 x float> %13, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ed = fmul <2 x float> %i.eb, %i.ec
  %i.ee = shufflevector <4 x float> %12, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ef = shufflevector <2 x float> %i.ea, <2 x float> %i.dv, <2 x i32> <i32 0, i32 2>
  %i.eg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.ef, <2 x float> %i.ed)
  %i.eh = shufflevector <4 x float> %14, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ei = insertelement <2 x float> %i.ds, float %i.dj, i64 1
  %i.ej = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eh, <2 x float> %i.ei, <2 x float> %i.eg) ; 3 uses
  %i.ek = fneg <2 x float> %i.ej
  %.sroa.3.12.vec.insert.i13 = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.ek, <2 x i32> <i32 3, i32 1>
  store <2 x float> %.sroa.3.12.vec.insert.i13, ptr %i.dq, align 8
  %i.el = load <2 x float>, ptr %i.ab, align 4, !tbaa !20 ; 2 uses
  %i.em = load <2 x float>, ptr %i.ac, align 4, !tbaa !20 ; 2 uses
  %i.en = shufflevector <2 x float> %i.el, <2 x float> %i.em, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.eo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.en, <2 x float> %i.dp, <2 x float> %i.dz) ; 2 uses
  %i.ep = fneg <2 x float> %i.eo
  store <2 x float> %i.ep, ptr %8, align 8
  %i.eq = shufflevector <2 x float> %i.el, <2 x float> %i.em, <2 x i32> <i32 0, i32 2>
  %i.er = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.es = fmul <2 x float> %i.eq, %i.er
  %i.et = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.et, <2 x float> %i.dn, <2 x float> %i.es)
  %i.ev = shufflevector <4 x float> %i.dr, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ew = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ev, <2 x float> %i.en, <2 x float> %i.eu)
  %i.ex = load <2 x float>, ptr %i.d, align 4, !tbaa !20
  %i.ey = fadd <2 x float> %i.ex, %i.ew
  %i.ez = insertelement <2 x float> poison, float %i.du, i64 0
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = fmul <2 x float> %i.eo, %i.fa
  %i.fc = fadd <2 x float> %i.ey, %i.fb
  %i.fd = extractelement <2 x float> %i.ej, i64 0
  %i.fe = fadd float %i.fd, %i.dt
  %i.ff = extractelement <2 x float> %i.ej, i64 1
  %i.fg = fmul float %i.ff, %i.du
  %i.fh = fadd float %i.fe, %i.fg
  %.sroa.3.12.vec.insert.i23 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fh, i64 0
  store <2 x float> %i.fc, ptr %9, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i23, ptr %i.fi, align 8
  %i.fj = load ptr, ptr %2, align 8, !tbaa !9
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %9, float noundef %i.du)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.fm = load float, ptr %6, align 8, !tbaa !20  ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !20 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fq = load float, ptr %i.fp, align 8, !tbaa !20 ; 2 uses
  %i.fr = load <2 x float>, ptr %i.b, align 4, !tbaa !20 ; 2 uses
  %i.fs = load <2 x float>, ptr %i.r, align 4, !tbaa !20 ; 2 uses
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
  %i.gd = load float, ptr %i.t, align 4, !tbaa !20 ; 2 uses
  %i.ge = load float, ptr %i.ad, align 4, !tbaa !20 ; 2 uses
  %i.gf = fmul float %i.fo, %i.ge
  %i.gg = tail call float @llvm.fmuladd.f32(float %i.gd, float %i.fm, float %i.gf)
  %i.gh = load float, ptr %i.ai, align 4, !tbaa !20 ; 2 uses
  %i.gi = tail call noundef float @llvm.fmuladd.f32(float %i.gh, float %i.fq, float %i.gg)
  %.sroa.3.12.vec.insert.i28 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gi, i64 0
  %i.gj = getelementptr inbounds nuw i8, ptr %10, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i28, ptr %i.gj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  %i.gk = load float, ptr %5, align 16, !tbaa !20 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !20 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.go = load float, ptr %i.gn, align 8, !tbaa !20 ; 2 uses
  %i.gp = fmul float %i.ge, %i.gm
  %i.gq = tail call float @llvm.fmuladd.f32(float %i.gk, float %i.gd, float %i.gp)
  %i.gr = tail call noundef float @llvm.fmuladd.f32(float %i.go, float %i.gh, float %i.gq)
  %i.gs = load <2 x float>, ptr %i.ab, align 4, !tbaa !20 ; 2 uses
  %i.gt = load <2 x float>, ptr %i.ac, align 4, !tbaa !20 ; 2 uses
  %i.gu = shufflevector <2 x float> %i.gs, <2 x float> %i.gt, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.gv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gu, <2 x float> %i.gc, <2 x float> %i.ga)
  store <2 x float> %i.gv, ptr %10, align 8
  %i.gw = shufflevector <2 x float> %i.gs, <2 x float> %i.gt, <2 x i32> <i32 0, i32 2>
  %i.gx = insertelement <2 x float> poison, float %i.gm, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = fmul <2 x float> %i.gw, %i.gy
  %i.ha = insertelement <2 x float> poison, float %i.gk, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hb, <2 x float> %i.fx, <2 x float> %i.gz)
  %i.hd = insertelement <2 x float> poison, float %i.go, i64 0
  %i.he = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.he, <2 x float> %i.gu, <2 x float> %i.hc)
  %i.hg = load <2 x float>, ptr %i.d, align 4, !tbaa !20
  %i.hh = fadd <2 x float> %i.hg, %i.hf
  %i.hi = load float, ptr %i.o, align 4, !tbaa !20
  %i.hj = fadd float %i.gr, %i.hi
  %.sroa.3.12.vec.insert.i4.i.i33 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hj, i64 0
  store <2 x float> %i.hh, ptr %11, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %11, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i33, ptr %i.hk, align 8
  %i.hl = load float, ptr %i.a, align 4, !tbaa !20
  %i.hm = load ptr, ptr %2, align 8, !tbaa !9
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.ho = load ptr, ptr %i.hn, align 8
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %11, float noundef %i.hl)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN22SphereTriangleDetector7collideERK9btVector3RS0_S3_RfS4_f(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 4 captures(none) %5, float noundef %6) local_unnamed_addr #1 align 2 {
bb.a:
  %7 = alloca %class.btVector3, align 8           ; 7 uses
  %8 = alloca %class.btVector3, align 8           ; 5 uses
  %9 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load float, ptr %i.f, align 4, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.i = load float, ptr %i.h, align 4, !tbaa !20
  %i.j = fmul float %i.g, %i.i                    ; 3 uses
  %i.k = fadd float %6, %i.j                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.m = load float, ptr %i.l, align 4, !tbaa !20
  %i.n = load float, ptr %i.c, align 4, !tbaa !20 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.r = load float, ptr %i.q, align 4, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.t = load <2 x float>, ptr %i.o, align 4, !tbaa !20 ; 2 uses
  %i.u = load <2 x float>, ptr %i.p, align 4, !tbaa !20 ; 5 uses
  %i.v = fsub <2 x float> %i.t, %i.u              ; 2 uses
  %i.w = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.x = insertelement <2 x float> %i.w, float %i.m, i64 1
  %i.y = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.z = insertelement <2 x float> %i.y, float %i.n, i64 1 ; 2 uses
  %i.aa = fsub <2 x float> %i.x, %i.z             ; 2 uses
  %i.ab = load <2 x float>, ptr %i.s, align 4, !tbaa !20 ; 2 uses
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ad = insertelement <2 x float> %i.ac, float %i.r, i64 1
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
  %.sroa.3.12.vec.insert.i67 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ap, i64 0
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i67, ptr %i.aq, align 8
  %foldExtExtBinop = fmul <2 x float> %i.ai, %i.ai
  %i.ar = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.as = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float %i.as, float %i.ar)
  %i.au = tail call noundef float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.at) ; 2 uses
  %i.av = fcmp ult float %i.au, f0x28800000
  br i1 %i.av, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %sqrt = tail call float @llvm.sqrt.f32(float %i.au)
  %i.aw = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.ax = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x float> %i.ai, %i.ay           ; 5 uses
  %i.ba = extractelement <2 x float> %i.az, i64 0
  store <2 x float> %i.az, ptr %7, align 8, !tbaa !20
  %i.bb = fmul float %i.ap, %i.aw                 ; 4 uses
  store float %i.bb, ptr %i.aq, align 8, !tbaa !20
  %i.bc = load <2 x float>, ptr %1, align 4, !tbaa !20 ; 4 uses
  %i.bd = extractelement <2 x float> %i.bc, i64 0
  %i.be = fsub float %i.bd, %i.n
  %shift = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop131 = fsub <2 x float> %shift, %i.u
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !20 ; 3 uses
  %i.bh = extractelement <2 x float> %i.u, i64 1
  %i.bi = fsub float %i.bg, %i.bh
end_hunk_0
