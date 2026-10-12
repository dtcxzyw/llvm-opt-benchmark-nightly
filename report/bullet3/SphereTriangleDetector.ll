Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/SphereTriangleDetector?download=true
inline.NumInlined: 207
inline.NumDeleted: 42
begin_hunk_0
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV22SphereTriangleDetector, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !17
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.w = load float, ptr %i.v, align 4, !tbaa !20, !noalias !27 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.y = load float, ptr %i.x, align 4, !tbaa !20, !noalias !27 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !20, !noalias !27 ; 2 uses
  %i.ab = load float, ptr %i.c, align 4, !tbaa !20, !noalias !26
  %i.ac = load float, ptr %i.d, align 4, !tbaa !20, !noalias !26
  %i.ad = fsub float %i.ab, %i.ac                 ; 2 uses
  %i.ae = load float, ptr %i.e, align 4, !tbaa !20, !noalias !26
  %i.af = load float, ptr %i.f, align 4, !tbaa !20, !noalias !26
  %i.ag = fsub float %i.ae, %i.af                 ; 2 uses
  %i.ah = load float, ptr %i.g, align 4, !tbaa !20, !noalias !26
  %i.ai = load float, ptr %i.h, align 4, !tbaa !20, !noalias !26
  %i.aj = fsub float %i.ah, %i.ai                 ; 2 uses
  %i.ak = load <2 x float>, ptr %i.b, align 4, !tbaa !20, !noalias !27 ; 2 uses
  %i.al = load <2 x float>, ptr %i.i, align 4, !tbaa !20, !noalias !27 ; 2 uses
  %i.am = load <2 x float>, ptr %i.k, align 4, !tbaa !20, !noalias !27 ; 2 uses
  %i.an = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x float> %i.ao, %i.al
  %i.aq = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.ar, <2 x float> %i.ap)
  %i.at = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.au, <2 x float> %i.as)
  %i.aw = fmul float %i.ag, %i.y
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.w, float %i.ad, float %i.aw)
  %i.ay = tail call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.aj, float %i.ax)
  %.sroa.3.12.vec.insert.i5.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ay, i64 0
  %i.az = load <2 x float>, ptr %1, align 4, !tbaa !20, !noalias !27 ; 2 uses
  %i.ba = load <2 x float>, ptr %i.j, align 4, !tbaa !20, !noalias !27 ; 2 uses
  %i.bb = load <2 x float>, ptr %i.l, align 4, !tbaa !20, !noalias !27 ; 2 uses
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
  %i.bp = load <2 x float>, ptr %i.n, align 4, !tbaa !20, !noalias !27 ; 2 uses
  %i.bq = load float, ptr %i.q, align 4, !tbaa !20, !noalias !27
  %i.br = load <2 x float>, ptr %i.m, align 4, !tbaa !20, !noalias !27 ; 2 uses
  %i.bs = load float, ptr %i.p, align 4, !tbaa !20, !noalias !27
  %i.bt = load <2 x float>, ptr %i.o, align 4, !tbaa !20, !noalias !27 ; 2 uses
  %i.bu = load float, ptr %i.r, align 4, !tbaa !20, !noalias !27
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
  store <4 x float> %i.cd, ptr %7, align 16, !alias.scope !26
  store <4 x float> %i.cp, ptr %i.bo, align 16, !alias.scope !26
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.cr = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.y, i64 0
  %i.cs = insertelement <4 x float> %i.cr, float %i.bq, i64 2
  %i.ct = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.cu = insertelement <4 x float> %i.cg, float %i.y, i64 2
  %i.cv = fmul <4 x float> %i.ct, %i.cu
  %i.cw = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.w, i64 0
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cy = insertelement <4 x float> %i.ck, float %i.bs, i64 2
  %i.cz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cx, <4 x float> %i.cy, <4 x float> %i.cv)
  %i.da = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.aa, i64 0
  %i.db = shufflevector <4 x float> %i.da, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dc = insertelement <4 x float> %i.co, float %i.bu, i64 2
  %i.dd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> %i.dc, <4 x float> %i.cz)
  store <4 x float> %i.dd, ptr %i.cq, align 16, !alias.scope !26
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store <2 x float> %i.av, ptr %i.de, align 16, !alias.scope !26
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i5.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !21, !alias.scope !26
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dg = load float, ptr %i.df, align 8, !tbaa !19
  %i.dh = call noundef zeroext i1 @_ZN22SphereTriangleDetector7collideERK9btVector3RS0_S3_RfS4_f(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.de, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr nonnull align 4 poison, float noundef %i.dg)
  br i1 %i.dh, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.dj = load <2 x float>, ptr %i.b, align 4, !tbaa !20 ; 2 uses
  %i.dk = load float, ptr %i.di, align 8, !tbaa !20 ; 2 uses
  %i.dl = load <2 x float>, ptr %i.i, align 4, !tbaa !20 ; 2 uses
  %i.dm = shufflevector <2 x float> %i.dj, <2 x float> %i.dl, <2 x i32> <i32 1, i32 3>
  %i.dn = shufflevector <2 x float> %i.dj, <2 x float> %i.dl, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.do = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %i.dr = load float, ptr %i.h, align 4, !tbaa !20
  %i.ds = load float, ptr %i.a, align 4, !tbaa !20 ; 3 uses
  %i.dt = load <2 x float>, ptr %i.s, align 4, !tbaa !20 ; 2 uses
  %i.du = load <2 x float>, ptr %i.t, align 4, !tbaa !20 ; 2 uses
  %i.dv = shufflevector <2 x float> %i.dt, <2 x float> %i.du, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.dw = load <4 x float>, ptr %5, align 16      ; 2 uses
  %i.dx = shufflevector <4 x float> %i.dw, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.dy = shufflevector <2 x float> %i.dt, <2 x float> %i.du, <2 x i32> <i32 0, i32 2>
  %i.dz = shufflevector <4 x float> %i.dw, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ea = load <2 x float>, ptr %i.d, align 4, !tbaa !20
  %12 = load float, ptr %i.k, align 4, !tbaa !20
  %13 = load float, ptr %i.u, align 4, !tbaa !20
  %14 = load float, ptr %i.z, align 4, !tbaa !20
  %i.eb = load <2 x float>, ptr %6, align 8, !tbaa !20 ; 4 uses
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ed = fmul <2 x float> %i.ec, %i.dm
  %i.ee = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %i.ee, <2 x float> %i.ed)
  %i.eg = load <2 x float>, ptr %5, align 16, !tbaa !20 ; 4 uses
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> %i.eb, <2 x i32> <i32 1, i32 3>
  %15 = insertelement <2 x float> poison, float %13, i64 0
  %i.ei = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = fmul <2 x float> %i.eh, %i.ei
  %16 = insertelement <2 x float> poison, float %12, i64 0
  %i.ek = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = shufflevector <2 x float> %i.eg, <2 x float> %i.eb, <2 x i32> <i32 0, i32 2>
  %i.em = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.el, <2 x float> %i.ej)
  %17 = insertelement <2 x float> poison, float %14, i64 0
  %i.en = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eo = insertelement <2 x float> %i.dx, float %i.dk, i64 1
  %i.ep = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.en, <2 x float> %i.eo, <2 x float> %i.em) ; 3 uses
  %i.eq = fneg <2 x float> %i.ep
  %.sroa.3.12.vec.insert.i13 = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.eq, <2 x i32> <i32 3, i32 1>
  store <2 x float> %.sroa.3.12.vec.insert.i13, ptr %i.dq, align 8
  %i.er = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dv, <2 x float> %i.dp, <2 x float> %i.ef) ; 2 uses
  %i.es = fneg <2 x float> %i.er
  store <2 x float> %i.es, ptr %8, align 8
  %i.et = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eu = fmul <2 x float> %i.dy, %i.et
  %i.ev = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ev, <2 x float> %i.dn, <2 x float> %i.eu)
  %i.ex = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> %i.dv, <2 x float> %i.ew)
  %i.ey = fadd <2 x float> %i.ea, %i.ex
  %i.ez = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = fmul <2 x float> %i.er, %i.fa
  %i.fc = fadd <2 x float> %i.ey, %i.fb
  %i.fd = extractelement <2 x float> %i.ep, i64 0
  %i.fe = fadd float %i.fd, %i.dr
  %i.ff = extractelement <2 x float> %i.ep, i64 1
  %i.fg = fmul float %i.ff, %i.ds
  %i.fh = fadd float %i.fe, %i.fg
  %.sroa.3.12.vec.insert.i23 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fh, i64 0
  store <2 x float> %i.fc, ptr %9, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i23, ptr %i.fi, align 8
  %i.fj = load ptr, ptr %2, align 8, !tbaa !10
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %9, float noundef %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.fn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fo = load float, ptr %6, align 8, !tbaa !20  ; 2 uses
  %i.fp = load <2 x float>, ptr %i.b, align 4, !tbaa !20 ; 2 uses
  %i.fq = load float, ptr %i.fm, align 4, !tbaa !20 ; 2 uses
  %i.fr = load float, ptr %i.fn, align 8, !tbaa !20 ; 2 uses
  %i.fs = load <2 x float>, ptr %i.i, align 4, !tbaa !20 ; 2 uses
  %i.ft = insertelement <2 x float> poison, float %i.fq, i64 0
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fv = shufflevector <2 x float> %i.fp, <2 x float> %i.fs, <2 x i32> <i32 1, i32 3>
  %i.fw = fmul <2 x float> %i.fu, %i.fv
  %i.fx = shufflevector <2 x float> %i.fp, <2 x float> %i.fs, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.fy = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ga = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> %i.fz, <2 x float> %i.fw)
  %i.gb = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gd = load float, ptr %i.k, align 4, !tbaa !20 ; 2 uses
  %i.ge = load float, ptr %i.u, align 4, !tbaa !20 ; 2 uses
  %i.gf = fmul float %i.fq, %i.ge
  %i.gg = tail call float @llvm.fmuladd.f32(float %i.gd, float %i.fo, float %i.gf)
  %i.gh = load float, ptr %i.z, align 4, !tbaa !20 ; 2 uses
  %i.gi = tail call noundef float @llvm.fmuladd.f32(float %i.gh, float %i.fr, float %i.gg)
  %.sroa.3.12.vec.insert.i28 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gi, i64 0
  %i.gj = getelementptr inbounds nuw i8, ptr %10, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i28, ptr %i.gj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  %i.gk = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.gl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gm = load <2 x float>, ptr %i.s, align 4, !tbaa !20 ; 2 uses
  %i.gn = load <2 x float>, ptr %i.t, align 4, !tbaa !20 ; 2 uses
  %i.go = shufflevector <2 x float> %i.gm, <2 x float> %i.gn, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.gp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.go, <2 x float> %i.gc, <2 x float> %i.ga)
  store <2 x float> %i.gp, ptr %10, align 8
  %i.gq = load float, ptr %5, align 16, !tbaa !20 ; 2 uses
  %i.gr = load float, ptr %i.gk, align 4, !tbaa !20 ; 2 uses
  %i.gs = load float, ptr %i.gl, align 8, !tbaa !20 ; 2 uses
  %i.gt = shufflevector <2 x float> %i.gm, <2 x float> %i.gn, <2 x i32> <i32 0, i32 2>
  %i.gu = insertelement <2 x float> poison, float %i.gr, i64 0
  %i.gv = shufflevector <2 x float> %i.gu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gw = fmul <2 x float> %i.gt, %i.gv
  %i.gx = insertelement <2 x float> poison, float %i.gq, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gy, <2 x float> %i.fx, <2 x float> %i.gw)
  %i.ha = insertelement <2 x float> poison, float %i.gs, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hb, <2 x float> %i.go, <2 x float> %i.gz)
  %i.hd = fmul float %i.ge, %i.gr
  %i.he = tail call float @llvm.fmuladd.f32(float %i.gq, float %i.gd, float %i.hd)
  %i.hf = tail call noundef float @llvm.fmuladd.f32(float %i.gs, float %i.gh, float %i.he)
  %i.hg = load <2 x float>, ptr %i.d, align 4, !tbaa !20
  %i.hh = fadd <2 x float> %i.hg, %i.hc
  %i.hi = load float, ptr %i.h, align 4, !tbaa !20
  %i.hj = fadd float %i.hf, %i.hi
  %.sroa.3.12.vec.insert.i4.i.i33 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hj, i64 0
  store <2 x float> %i.hh, ptr %11, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %11, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i33, ptr %i.hk, align 8
  %i.hl = load float, ptr %i.a, align 4, !tbaa !20
  %i.hm = load ptr, ptr %2, align 8, !tbaa !10
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
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
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
  %shift133 = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop134 = fmul <2 x float> %shift133, %foldExtExtBinop131
  %i.bj = extractelement <2 x float> %foldExtExtBinop134, i64 0
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.be, float %i.ba, float %i.bj)
  %i.bl = tail call noundef float @llvm.fmuladd.f32(float %i.bi, float %i.bb, float %i.bk) ; 3 uses
  %i.bm = fcmp olt float %i.bl, 0.000000e+00
end_hunk_0
