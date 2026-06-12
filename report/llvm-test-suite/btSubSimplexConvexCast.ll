inline.NumInlined: 96
inline.NumDeleted: 29
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btVector3 = type { [4 x float] }

$_ZN22btSubsimplexConvexCastD0Ev = comdat any

@_ZTV22btSubsimplexConvexCast = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI22btSubsimplexConvexCast, ptr @_ZN12btConvexCastD2Ev, ptr @_ZN22btSubsimplexConvexCastD0Ev, ptr @_ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE] }, align 8
@_ZTI22btSubsimplexConvexCast = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS22btSubsimplexConvexCast, ptr @_ZTI12btConvexCast }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS22btSubsimplexConvexCast = dso_local constant [25 x i8] c"22btSubsimplexConvexCast\00", align 1
@_ZTI12btConvexCast = external constant ptr

@_ZN22btSubsimplexConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN22btSubsimplexConvexCastC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolver

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN22btSubsimplexConvexCastC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolver(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV22btSubsimplexConvexCast, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.c, align 8, !tbaa !17
  ret void
}

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(188) %5) unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %class.btVector3, align 8           ; 10 uses
  %7 = alloca %class.btVector3, align 8           ; 7 uses
  %8 = alloca %class.btVector3, align 8           ; 5 uses
  %9 = alloca %class.btVector3, align 8           ; 6 uses
  %10 = alloca %class.btVector3, align 8          ; 5 uses
  %11 = alloca %class.btVector3, align 8          ; 5 uses
  %12 = alloca %class.btVector3, align 8          ; 5 uses
  %13 = alloca %class.btVector3, align 8          ; 5 uses
  %14 = alloca %class.btVector3, align 4          ; 3 uses
  %15 = alloca %class.btVector3, align 4          ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  tail call void @_ZN22btVoronoiSimplexSolver5resetEv(ptr noundef nonnull align 4 dereferenceable(353) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.e = load float, ptr %i.c, align 4, !tbaa !18
  %i.f = load float, ptr %i.d, align 4, !tbaa !18 ; 2 uses
  %i.g = fsub float %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !18 ; 2 uses
  %i.l = fsub float %i.i, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !18 ; 2 uses
  %i.q = fsub float %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.t = load float, ptr %i.r, align 4, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.v = load float, ptr %i.u, align 4, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.x = load <2 x float>, ptr %i.s, align 4, !tbaa !18 ; 2 uses
  %i.y = load float, ptr %i.w, align 4, !tbaa !18
  %i.z = extractelement <2 x float> %i.x, i64 0
  %i.aa = fsub float %i.t, %i.z
  %i.ab = fsub float %i.v, %i.y
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !18 ; 2 uses
  %i.ag = fsub float %i.ad, %i.af
  %.sroa.5199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.7201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.7201.0.copyload = load float, ptr %.sroa.7201.0..sroa_idx, align 4 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.12206.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ai = load <2 x float>, ptr %1, align 4       ; 3 uses
  %.sroa.5199.0.copyload = load float, ptr %.sroa.5199.0..sroa_idx, align 4 ; 2 uses
  %i.aj = load <2 x float>, ptr %i.ah, align 4    ; 3 uses
  %.sroa.12206.16.copyload = load float, ptr %.sroa.12206.16..sroa_idx, align 4 ; 2 uses
  %.sroa.14208.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.14208.16.copyload = load float, ptr %.sroa.14208.16..sroa_idx, align 4 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.16211.32.copyload = load float, ptr %i.ak, align 4 ; 3 uses
  %.sroa.19213.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %.sroa.19213.32.copyload = load float, ptr %.sroa.19213.32..sroa_idx, align 4 ; 3 uses
  %.sroa.21215.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.21215.32.copyload = load float, ptr %.sroa.21215.32..sroa_idx, align 4 ; 3 uses
  %.sroa.5183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %.sroa.12189.16..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.am = load <2 x float>, ptr %3, align 4       ; 3 uses
  %.sroa.5183.0.copyload = load float, ptr %.sroa.5183.0..sroa_idx, align 4
  %i.an = load <2 x float>, ptr %i.al, align 4    ; 3 uses
  %.sroa.12189.16.copyload = load float, ptr %.sroa.12189.16..sroa_idx, align 4
  %.sroa.14.16..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %.sroa.14.16.copyload = load float, ptr %.sroa.14.16..sroa_idx, align 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %.sroa.16192.32.copyload = load float, ptr %i.ao, align 4 ; 2 uses
  %.sroa.19.32..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %.sroa.19.32.copyload = load float, ptr %.sroa.19.32..sroa_idx, align 4 ; 2 uses
  %.sroa.21.32..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %.sroa.21.32.copyload = load float, ptr %.sroa.21.32..sroa_idx, align 4 ; 2 uses
  %i.ap = fsub float %i.g, %i.aa                  ; 5 uses
  %i.aq = fsub float %i.l, %i.ab                  ; 5 uses
  %i.ar = fsub float %i.q, %i.ag                  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.au = fneg float %i.ap                        ; 3 uses
  %i.av = fneg float %i.aq                        ; 3 uses
  %i.aw = fneg float %i.ar                        ; 3 uses
  %i.ax = extractelement <2 x float> %i.aj, i64 0 ; 2 uses
  %i.ay = fmul float %i.ax, %i.av
  %i.az = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.az, float %i.au, float %i.ay)
  %i.bb = tail call noundef float @llvm.fmuladd.f32(float %.sroa.16211.32.copyload, float %i.aw, float %i.ba)
  %i.bc = fmul float %.sroa.12206.16.copyload, %i.av
  %i.bd = tail call float @llvm.fmuladd.f32(float %.sroa.5199.0.copyload, float %i.au, float %i.bc)
  %i.be = tail call noundef float @llvm.fmuladd.f32(float %.sroa.19213.32.copyload, float %i.aw, float %i.bd)
  %i.bf = fmul float %.sroa.14208.16.copyload, %i.av
  %i.bg = tail call float @llvm.fmuladd.f32(float %.sroa.7201.0.copyload, float %i.au, float %i.bf)
  %i.bh = tail call noundef float @llvm.fmuladd.f32(float %.sroa.21215.32.copyload, float %i.aw, float %i.bg)
  %.sroa.0.0.vec.insert.i77 = insertelement <2 x float> poison, float %i.bb, i64 0
  %.sroa.0.4.vec.insert.i78 = insertelement <2 x float> %.sroa.0.0.vec.insert.i77, float %i.be, i64 1
  %.sroa.3.12.vec.insert.i79 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bh, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i78, ptr %8, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i79, ptr %i.bi, align 8
  %i.bj = load ptr, ptr %i.at, align 8, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = call { <2 x float>, <2 x float> } %i.bl(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 4 dereferenceable(16) %8) ; 2 uses
  %i.bn = extractvalue { <2 x float>, <2 x float> } %i.bm, 0 ; 4 uses
  %i.bo = extractvalue { <2 x float>, <2 x float> } %i.bm, 1 ; 2 uses
  %.sroa.0160.0.vec.extract = extractelement <2 x float> %i.bn, i64 0
  %.sroa.0160.4.vec.extract = extractelement <2 x float> %i.bn, i64 1
  %16 = load float, ptr %.sroa.7201.0..sroa_idx, align 4, !tbaa !18
  %.sroa.5161.8.vec.extract = extractelement <2 x float> %i.bo, i64 0
  %i.bp = load float, ptr %.sroa.14208.16..sroa_idx, align 4, !tbaa !18
  %i.bq = load <2 x float>, ptr %1, align 4, !tbaa !18 ; 2 uses
  %i.br = load <2 x float>, ptr %i.ah, align 4, !tbaa !18 ; 2 uses
  %i.bs = shufflevector <2 x float> %i.bq, <2 x float> %i.br, <2 x i32> <i32 1, i32 3>
  %i.bt = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bu = fmul <2 x float> %i.bs, %i.bt
  %i.bv = shufflevector <2 x float> %i.bq, <2 x float> %i.br, <2 x i32> <i32 0, i32 2>
  %i.bw = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.bw, <2 x float> %i.bu)
  %17 = insertelement <2 x float> poison, float %16, i64 0
  %i.by = insertelement <2 x float> %17, float %i.bp, i64 1
  %i.bz = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.bz, <2 x float> %i.bx)
  %i.cb = load <2 x float>, ptr %i.d, align 4, !tbaa !18
  %i.cc = fadd <2 x float> %i.cb, %i.ca           ; 2 uses
  %i.cd = load float, ptr %i.ak, align 4, !tbaa !18
  %i.ce = load float, ptr %.sroa.19213.32..sroa_idx, align 4, !tbaa !18
  %i.cf = fmul float %.sroa.0160.4.vec.extract, %i.ce
  %i.cg = call float @llvm.fmuladd.f32(float %i.cd, float %.sroa.0160.0.vec.extract, float %i.cf)
  %i.ch = load float, ptr %.sroa.21215.32..sroa_idx, align 4, !tbaa !18
  %i.ci = call noundef float @llvm.fmuladd.f32(float %i.ch, float %.sroa.5161.8.vec.extract, float %i.cg)
  %i.cj = load float, ptr %i.o, align 4, !tbaa !18
  %i.ck = fadd float %i.cj, %i.ci                 ; 2 uses
  %.sroa.3.12.vec.insert.i84 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ck, i64 0
  store <2 x float> %i.cc, ptr %7, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i84, ptr %i.cl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.co = load <2 x float>, ptr %3, align 4, !tbaa !18
  %i.cp = load <2 x float>, ptr %i.al, align 4, !tbaa !18
  %i.cq = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x float> %i.cr, %i.cp
  %i.ct = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.co, <2 x float> %i.cu, <2 x float> %i.cs)
  %i.cw = load <2 x float>, ptr %i.ao, align 4, !tbaa !18
  %i.cx = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> %i.cy, <2 x float> %i.cv)
  %i.da = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !18
  %i.db = load float, ptr %.sroa.14.16..sroa_idx, align 4, !tbaa !18
  %i.dc = fmul float %i.aq, %i.db
  %i.dd = call float @llvm.fmuladd.f32(float %i.da, float %i.ap, float %i.dc)
  %i.de = load float, ptr %.sroa.21.32..sroa_idx, align 4, !tbaa !18
  %i.df = call noundef float @llvm.fmuladd.f32(float %i.de, float %i.ar, float %i.dd)
  %.sroa.3.12.vec.insert.i89 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.df, i64 0
  store <2 x float> %i.cz, ptr %10, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i89, ptr %i.dg, align 8
  %i.dh = load ptr, ptr %i.cn, align 8, !tbaa !8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 96
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = call { <2 x float>, <2 x float> } %i.dj(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 4 dereferenceable(16) %10) ; 2 uses
  %i.dl = extractvalue { <2 x float>, <2 x float> } %i.dk, 0 ; 4 uses
  %i.dm = extractvalue { <2 x float>, <2 x float> } %i.dk, 1 ; 2 uses
  %.sroa.0156.0.vec.extract = extractelement <2 x float> %i.dl, i64 0
  %.sroa.0156.4.vec.extract = extractelement <2 x float> %i.dl, i64 1
  %18 = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !18
  %.sroa.5157.8.vec.extract = extractelement <2 x float> %i.dm, i64 0
  %i.dn = load float, ptr %.sroa.14.16..sroa_idx, align 4, !tbaa !18
  %i.do = load <2 x float>, ptr %3, align 4, !tbaa !18 ; 2 uses
  %i.dp = load <2 x float>, ptr %i.al, align 4, !tbaa !18 ; 2 uses
  %i.dq = shufflevector <2 x float> %i.do, <2 x float> %i.dp, <2 x i32> <i32 1, i32 3>
  %i.dr = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ds = fmul <2 x float> %i.dq, %i.dr
  %i.dt = shufflevector <2 x float> %i.do, <2 x float> %i.dp, <2 x i32> <i32 0, i32 2>
  %i.du = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dt, <2 x float> %i.du, <2 x float> %i.ds)
  %19 = insertelement <2 x float> poison, float %18, i64 0
  %i.dw = insertelement <2 x float> %19, float %i.dn, i64 1
  %i.dx = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dw, <2 x float> %i.dx, <2 x float> %i.dv)
  %i.dz = load <2 x float>, ptr %i.s, align 4, !tbaa !18
  %i.ea = fadd <2 x float> %i.dz, %i.dy           ; 2 uses
  %i.eb = load float, ptr %i.ao, align 4, !tbaa !18
  %i.ec = load float, ptr %.sroa.19.32..sroa_idx, align 4, !tbaa !18
  %i.ed = fmul float %.sroa.0156.4.vec.extract, %i.ec
  %i.ee = call float @llvm.fmuladd.f32(float %i.eb, float %.sroa.0156.0.vec.extract, float %i.ed)
  %i.ef = load float, ptr %.sroa.21.32..sroa_idx, align 4, !tbaa !18
  %i.eg = call noundef float @llvm.fmuladd.f32(float %i.ef, float %.sroa.5157.8.vec.extract, float %i.ee)
  %i.eh = load float, ptr %i.ae, align 4, !tbaa !18
  %i.ei = fadd float %i.eh, %i.eg                 ; 2 uses
  %.sroa.3.12.vec.insert.i94 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ei, i64 0
  store <2 x float> %i.ea, ptr %9, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i94, ptr %i.ej, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  %i.ek = fsub <2 x float> %i.cc, %i.ea           ; 4 uses
  %i.el = fsub float %i.ck, %i.ei                 ; 3 uses
  %.sroa.3.12.vec.insert.i99 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.el, i64 0
  store <2 x float> %i.ek, ptr %6, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store <2 x float> %.sroa.3.12.vec.insert.i99, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !20
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.ek, %i.ek
  %i.en = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.eo = extractelement <2 x float> %i.ek, i64 0 ; 2 uses
  %i.ep = call float @llvm.fmuladd.f32(float %i.eo, float %i.eo, float %i.en)
  %i.eq = call noundef float @llvm.fmuladd.f32(float %i.el, float %i.el, float %i.ep)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.er = fcmp ogt float %i.eq, f0x38D1B717
  br i1 %i.er, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.es = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.eu = shufflevector <2 x float> %i.x, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ev = insertelement <4 x float> %i.eu, float %i.af, i64 2
  %i.ew = insertelement <4 x float> %i.ev, float %i.f, i64 3
  %i.ex = insertelement <2 x float> poison, float %.sroa.7201.0.copyload, i64 0
  %i.ey = insertelement <2 x float> %i.ex, float %.sroa.14208.16.copyload, i64 1
  %i.ez = shufflevector <2 x float> %i.ai, <2 x float> %i.aj, <2 x i32> <i32 0, i32 2>
  %i.fa = shufflevector <2 x float> %i.ai, <2 x float> %i.aj, <2 x i32> <i32 1, i32 3>
  %i.fb = insertelement <2 x float> poison, float %.sroa.7.0.copyload, i64 0
  %i.fc = insertelement <2 x float> %i.fb, float %.sroa.14.16.copyload, i64 1
  %i.fd = extractelement <2 x float> %i.am, i64 0
  %i.fe = extractelement <2 x float> %i.an, i64 0
  %i.ff = shufflevector <2 x float> %i.am, <2 x float> %i.an, <2 x i32> <i32 0, i32 2>
  %i.fg = shufflevector <2 x float> %i.am, <2 x float> %i.an, <2 x i32> <i32 1, i32 3>
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph
  %i.fh = phi i32 [ 31, %.lr.ph ], [ %i.kc, %bb.g ] ; 2 uses
  %.sroa.0151.0230267 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.0151.1, %bb.g ]
  %.sroa.6153.0231266 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.6153.1, %bb.g ]
  %.sroa.9.0232265 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.9.1, %bb.g ]
  %.sroa.26219.0237260 = phi float [ %i.k, %.lr.ph ], [ %.sroa.26219.1, %bb.g ] ; 2 uses
  %.sroa.28220.0238259 = phi float [ %i.p, %.lr.ph ], [ %.sroa.28220.1, %bb.g ] ; 2 uses
  %.050240258 = phi float [ 0.000000e+00, %.lr.ph ], [ %.151, %bb.g ] ; 3 uses
  %i.fi = phi <4 x float> [ %i.ew, %.lr.ph ], [ %i.jr, %bb.g ] ; 4 uses
  %i.fj = load ptr, ptr %i.as, align 8, !tbaa !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  %i.fk = load float, ptr %6, align 8, !tbaa !18
  %i.fl = fneg float %i.fk                        ; 3 uses
  %i.fm = load float, ptr %i.em, align 4, !tbaa !18
  %i.fn = fneg float %i.fm                        ; 3 uses
  %i.fo = load float, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !18
  %i.fp = fneg float %i.fo                        ; 3 uses
  %i.fq = fmul float %i.ax, %i.fn
  %i.fr = call float @llvm.fmuladd.f32(float %i.az, float %i.fl, float %i.fq)
  %i.fs = call noundef float @llvm.fmuladd.f32(float %.sroa.16211.32.copyload, float %i.fp, float %i.fr)
  %i.ft = fmul float %.sroa.12206.16.copyload, %i.fn
  %i.fu = call float @llvm.fmuladd.f32(float %.sroa.5199.0.copyload, float %i.fl, float %i.ft)
  %i.fv = call noundef float @llvm.fmuladd.f32(float %.sroa.19213.32.copyload, float %i.fp, float %i.fu)
  %i.fw = fmul float %.sroa.14208.16.copyload, %i.fn
  %i.fx = call float @llvm.fmuladd.f32(float %.sroa.7201.0.copyload, float %i.fl, float %i.fw)
  %i.fy = call noundef float @llvm.fmuladd.f32(float %.sroa.21215.32.copyload, float %i.fp, float %i.fx)
  %.sroa.0.0.vec.insert.i107 = insertelement <2 x float> poison, float %i.fs, i64 0
  %.sroa.0.4.vec.insert.i108 = insertelement <2 x float> %.sroa.0.0.vec.insert.i107, float %i.fv, i64 1
  %.sroa.3.12.vec.insert.i109 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fy, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i108, ptr %12, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i109, ptr %i.es, align 8
  %i.fz = load ptr, ptr %i.fj, align 8, !tbaa !8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 96
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = call { <2 x float>, <2 x float> } %i.gb(ptr noundef nonnull align 8 dereferenceable(24) %i.fj, ptr noundef nonnull align 4 dereferenceable(16) %12) ; 2 uses
  %i.gd = extractvalue { <2 x float>, <2 x float> } %i.gc, 0 ; 4 uses
  %i.ge = extractvalue { <2 x float>, <2 x float> } %i.gc, 1 ; 2 uses
  %.sroa.0144.0.vec.extract = extractelement <2 x float> %i.gd, i64 0
  %.sroa.0144.4.vec.extract = extractelement <2 x float> %i.gd, i64 1
  %.sroa.5145.8.vec.extract = extractelement <2 x float> %i.ge, i64 0
  %i.gf = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gg = fmul <2 x float> %i.fa, %i.gf
  %i.gh = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.gh, <2 x float> %i.gg)
  %i.gj = shufflevector <2 x float> %i.ge, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> %i.gj, <2 x float> %i.gi)
  %i.gl = shufflevector <4 x float> %i.fi, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.gm = insertelement <2 x float> %i.gl, float %.sroa.26219.0237260, i64 1
  %i.gn = fadd <2 x float> %i.gm, %i.gk
  %i.go = fmul float %.sroa.19213.32.copyload, %.sroa.0144.4.vec.extract
  %i.gp = call float @llvm.fmuladd.f32(float %.sroa.16211.32.copyload, float %.sroa.0144.0.vec.extract, float %i.go)
  %i.gq = call noundef float @llvm.fmuladd.f32(float %.sroa.21215.32.copyload, float %.sroa.5145.8.vec.extract, float %i.gp)
  %i.gr = fadd float %.sroa.28220.0238259, %i.gq
  %.sroa.3.12.vec.insert.i114 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gr, i64 0
  store <2 x float> %i.gn, ptr %7, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i114, ptr %i.cl, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  %i.gs = load ptr, ptr %i.cm, align 8, !tbaa !17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  %i.gt = load float, ptr %6, align 8, !tbaa !18  ; 3 uses
  %i.gu = load float, ptr %i.em, align 4, !tbaa !18 ; 3 uses
  %i.gv = fmul float %i.fe, %i.gu
  %i.gw = call float @llvm.fmuladd.f32(float %i.fd, float %i.gt, float %i.gv)
  %i.gx = load float, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !18 ; 3 uses
  %i.gy = call noundef float @llvm.fmuladd.f32(float %.sroa.16192.32.copyload, float %i.gx, float %i.gw)
  %i.gz = fmul float %.sroa.12189.16.copyload, %i.gu
  %i.ha = call float @llvm.fmuladd.f32(float %.sroa.5183.0.copyload, float %i.gt, float %i.gz)
  %i.hb = call noundef float @llvm.fmuladd.f32(float %.sroa.19.32.copyload, float %i.gx, float %i.ha)
  %i.hc = fmul float %.sroa.14.16.copyload, %i.gu
  %i.hd = call float @llvm.fmuladd.f32(float %.sroa.7.0.copyload, float %i.gt, float %i.hc)
  %i.he = call noundef float @llvm.fmuladd.f32(float %.sroa.21.32.copyload, float %i.gx, float %i.hd)
  %.sroa.0.0.vec.insert.i117 = insertelement <2 x float> poison, float %i.gy, i64 0
  %.sroa.0.4.vec.insert.i118 = insertelement <2 x float> %.sroa.0.0.vec.insert.i117, float %i.hb, i64 1
  %.sroa.3.12.vec.insert.i119 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.he, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i118, ptr %13, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i119, ptr %i.et, align 8
  %i.hf = load ptr, ptr %i.gs, align 8, !tbaa !8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 96
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = call { <2 x float>, <2 x float> } %i.hh(ptr noundef nonnull align 8 dereferenceable(24) %i.gs, ptr noundef nonnull align 4 dereferenceable(16) %13) ; 2 uses
  %i.hj = extractvalue { <2 x float>, <2 x float> } %i.hi, 0 ; 4 uses
  %i.hk = extractvalue { <2 x float>, <2 x float> } %i.hi, 1 ; 2 uses
  %.sroa.0140.0.vec.extract = extractelement <2 x float> %i.hj, i64 0
  %.sroa.0140.4.vec.extract = extractelement <2 x float> %i.hj, i64 1
  %.sroa.5141.8.vec.extract = extractelement <2 x float> %i.hk, i64 0
  %i.hl = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hm = fmul <2 x float> %i.fg, %i.hl
  %i.hn = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ho = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ff, <2 x float> %i.hn, <2 x float> %i.hm)
  %i.hp = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fc, <2 x float> %i.hp, <2 x float> %i.ho)
  %i.hr = shufflevector <4 x float> %i.fi, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.hs = fadd <2 x float> %i.hr, %i.hq           ; 2 uses
  %i.ht = fmul float %.sroa.19.32.copyload, %.sroa.0140.4.vec.extract
  %i.hu = call float @llvm.fmuladd.f32(float %.sroa.16192.32.copyload, float %.sroa.0140.0.vec.extract, float %i.ht)
  %i.hv = call noundef float @llvm.fmuladd.f32(float %.sroa.21.32.copyload, float %.sroa.5141.8.vec.extract, float %i.hu)
  %i.hw = extractelement <4 x float> %i.fi, i64 2
  %i.hx = fadd float %i.hw, %i.hv                 ; 2 uses
  %.sroa.3.12.vec.insert.i124 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hx, i64 0
  store <2 x float> %i.hs, ptr %9, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i124, ptr %i.ej, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  %i.hy = load <2 x float>, ptr %7, align 8, !tbaa !18
  %i.hz = fsub <2 x float> %i.hy, %i.hs           ; 3 uses
  %i.ia = load float, ptr %i.cl, align 8, !tbaa !18
  %i.ib = fsub float %i.ia, %i.hx                 ; 2 uses
  %.sroa.3.12.vec.insert.i129 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ib, i64 0
  store <2 x float> %i.hz, ptr %11, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i129, ptr %.sroa.45.0..sroa_idx, align 8, !tbaa !20
  %i.ic = load float, ptr %6, align 8, !tbaa !18  ; 3 uses
  %i.id = load float, ptr %i.em, align 4, !tbaa !18 ; 3 uses
  %i.ie = extractelement <2 x float> %i.hz, i64 1
  %i.if = fmul float %i.id, %i.ie
  %i.ig = extractelement <2 x float> %i.hz, i64 0
  %i.ih = call float @llvm.fmuladd.f32(float %i.ic, float %i.ig, float %i.if)
  %i.ii = load float, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !18 ; 3 uses
  %i.ij = call noundef float @llvm.fmuladd.f32(float %i.ii, float %i.ib, float %i.ih) ; 2 uses
  %i.ik = fcmp ogt float %.050240258, 1.000000e+00
  br i1 %i.ik, label %.critedge61, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.il = fcmp ogt float %i.ij, 0.000000e+00
  br i1 %i.il, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.im = fmul float %i.aq, %i.id
  %i.in = call float @llvm.fmuladd.f32(float %i.ic, float %i.ap, float %i.im)
  %i.io = call noundef float @llvm.fmuladd.f32(float %i.ii, float %i.ar, float %i.in) ; 2 uses
  %i.ip = fcmp ult float %i.io, f0xA8800000
  br i1 %i.ip, label %bb.e, label %.critedge61

bb.e:                                             ; preds = %bb.d
  %i.iq = fdiv float %i.ij, %i.io
  %i.ir = fsub float %.050240258, %i.iq           ; 5 uses
  %i.is = fsub float 1.000000e+00, %i.ir          ; 3 uses
  %i.it = load float, ptr %i.d, align 4, !tbaa !18
  %i.iu = load float, ptr %i.c, align 4, !tbaa !18
  %i.iv = load float, ptr %i.j, align 4, !tbaa !18
  %i.iw = load float, ptr %i.h, align 4, !tbaa !18
  %i.ix = fmul float %i.ir, %i.iw
  %i.iy = call float @llvm.fmuladd.f32(float %i.is, float %i.iv, float %i.ix)
  %i.iz = load float, ptr %i.o, align 4, !tbaa !18
  %i.ja = load float, ptr %i.m, align 4, !tbaa !18
  %i.jb = fmul float %i.ir, %i.ja
  %i.jc = call float @llvm.fmuladd.f32(float %i.is, float %i.iz, float %i.jb)
  %i.jd = load float, ptr %i.ae, align 4, !tbaa !18
  %i.je = load float, ptr %i.ac, align 4, !tbaa !18
  %20 = load <2 x float>, ptr %i.r, align 4, !tbaa !18
  %i.jf = insertelement <4 x float> poison, float %i.ir, i64 0
  %i.jg = shufflevector <4 x float> %i.jf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jh = insertelement <4 x float> poison, float %i.je, i64 2
  %i.ji = insertelement <4 x float> %i.jh, float %i.iu, i64 3
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jj = shufflevector <4 x float> %21, <4 x float> %i.ji, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.jk = fmul <4 x float> %i.jg, %i.jj
  %22 = load <2 x float>, ptr %i.s, align 4, !tbaa !18
  %i.jl = insertelement <4 x float> poison, float %i.is, i64 0
  %i.jm = shufflevector <4 x float> %i.jl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jn = insertelement <4 x float> poison, float %i.jd, i64 2
  %i.jo = insertelement <4 x float> %i.jn, float %i.it, i64 3
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jp = shufflevector <4 x float> %23, <4 x float> %i.jo, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.jq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jm, <4 x float> %i.jp, <4 x float> %i.jk)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.0151.1 = phi float [ %i.ic, %bb.e ], [ %.sroa.0151.0230267, %bb.c ] ; 3 uses
  %.sroa.6153.1 = phi float [ %i.id, %bb.e ], [ %.sroa.6153.0231266, %bb.c ] ; 3 uses
  %.sroa.9.1 = phi float [ %i.ii, %bb.e ], [ %.sroa.9.0232265, %bb.c ] ; 3 uses
  %.sroa.26219.1 = phi float [ %i.iy, %bb.e ], [ %.sroa.26219.0237260, %bb.c ]
  %.sroa.28220.1 = phi float [ %i.jc, %bb.e ], [ %.sroa.28220.0238259, %bb.c ]
  %.151 = phi float [ %i.ir, %bb.e ], [ %.050240258, %bb.c ] ; 3 uses
  %i.jr = phi <4 x float> [ %i.jq, %bb.e ], [ %i.fi, %bb.c ]
  %i.js = load ptr, ptr %i.a, align 8, !tbaa !10
  call void @_ZN22btVoronoiSimplexSolver9addVertexERK9btVector3S2_S2_(ptr noundef nonnull align 4 dereferenceable(353) %i.js, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %9)
  %i.jt = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.ju = call noundef zeroext i1 @_ZN22btVoronoiSimplexSolver7closestER9btVector3(ptr noundef nonnull align 4 dereferenceable(353) %i.jt, ptr noundef nonnull align 4 dereferenceable(16) %6)
  br i1 %i.ju, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.jv = load float, ptr %6, align 8, !tbaa !18  ; 2 uses
  %i.jw = load float, ptr %i.em, align 4, !tbaa !18 ; 2 uses
  %i.jx = fmul float %i.jw, %i.jw
  %i.jy = call float @llvm.fmuladd.f32(float %i.jv, float %i.jv, float %i.jx)
  %i.jz = load float, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !18 ; 2 uses
  %i.ka = call noundef float @llvm.fmuladd.f32(float %i.jz, float %i.jz, float %i.jy)
  %i.kb = fcmp ule float %i.ka, f0x38D1B717
  %i.kc = add nsw i32 %i.fh, -1
  %.not = icmp eq i32 %i.fh, 0
  %or.cond = select i1 %i.kb, i1 true, i1 %.not
  br i1 %or.cond, label %.critedge, label %bb.b

.critedge:                                        ; preds = %bb.f, %bb.g, %bb.a
  %.sroa.0151.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.0151.1, %bb.g ], [ %.sroa.0151.1, %bb.f ] ; 3 uses
  %.sroa.6153.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.6153.1, %bb.g ], [ %.sroa.6153.1, %bb.f ] ; 3 uses
  %.sroa.9.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.9.1, %bb.g ], [ %.sroa.9.1, %bb.f ] ; 3 uses
  %.050.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.151, %bb.g ], [ %.151, %bb.f ]
  %i.kd = getelementptr inbounds nuw i8, ptr %5, i64 168
  store float %.050.lcssa, ptr %i.kd, align 8, !tbaa !21
  %i.ke = fmul float %.sroa.6153.0.lcssa, %.sroa.6153.0.lcssa
  %i.kf = call float @llvm.fmuladd.f32(float %.sroa.0151.0.lcssa, float %.sroa.0151.0.lcssa, float %i.ke)
  %i.kg = call noundef float @llvm.fmuladd.f32(float %.sroa.9.0.lcssa, float %.sroa.9.0.lcssa, float %i.kf) ; 2 uses
  %i.kh = fcmp ult float %i.kg, f0x28800000
  br i1 %i.kh, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.kg)
  %i.ki = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.kj = fmul float %.sroa.0151.0.lcssa, %i.ki   ; 2 uses
  %i.kk = fmul float %.sroa.6153.0.lcssa, %i.ki   ; 2 uses
  %i.kl = fmul float %.sroa.9.0.lcssa, %i.ki      ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %i.kj, i64 0
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i, float %i.kk, i64 1
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kl, i64 0
  %i.km = getelementptr inbounds nuw i8, ptr %5, i64 136
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i, ptr %i.km, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 144
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !20
  br label %bb.j

bb.i:                                             ; preds = %.critedge
  %i.kn = getelementptr inbounds nuw i8, ptr %5, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kn, i8 0, i64 16, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ko = phi float [ 0.000000e+00, %bb.i ], [ %i.kl, %bb.h ]
  %i.kp = phi float [ 0.000000e+00, %bb.i ], [ %i.kk, %bb.h ]
  %i.kq = phi float [ 0.000000e+00, %bb.i ], [ %i.kj, %bb.h ]
  %i.kr = fmul float %i.aq, %i.kp
  %i.ks = call float @llvm.fmuladd.f32(float %i.kq, float %i.ap, float %i.kr)
  %i.kt = call noundef float @llvm.fmuladd.f32(float %i.ko, float %i.ar, float %i.ks)
  %i.ku = getelementptr inbounds nuw i8, ptr %5, i64 184
  %i.kv = load float, ptr %i.ku, align 8, !tbaa !27
  %i.kw = fneg float %i.kv
  %i.kx = fcmp ult float %i.kt, %i.kw
  br i1 %i.kx, label %bb.k, label %.critedge61

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #8
  %i.ky = load ptr, ptr %i.a, align 8, !tbaa !10
  call void @_ZN22btVoronoiSimplexSolver14compute_pointsER9btVector3S1_(ptr noundef nonnull align 4 dereferenceable(353) %i.ky, ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %15)
  %i.kz = getelementptr inbounds nuw i8, ptr %5, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kz, ptr noundef nonnull align 4 dereferenceable(16) %15, i64 16, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #8
  br label %.critedge61

.critedge61:                                      ; preds = %bb.d, %bb.b, %bb.j, %bb.k
  %.2 = phi i1 [ false, %bb.j ], [ true, %bb.k ], [ false, %bb.b ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  ret i1 %.2
}

declare void @_ZN22btVoronoiSimplexSolver5resetEv(ptr noundef nonnull align 4 dereferenceable(353)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @_ZN22btVoronoiSimplexSolver9addVertexERK9btVector3S2_S2_(ptr noundef nonnull align 4 dereferenceable(353), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN22btVoronoiSimplexSolver7closestER9btVector3(ptr noundef nonnull align 4 dereferenceable(353), ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN22btVoronoiSimplexSolver14compute_pointsER9btVector3S1_(ptr noundef nonnull align 4 dereferenceable(353), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN22btSubsimplexConvexCastD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  resume { ptr, i32 } %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { builtin nounwind }

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
!11 = !{!"_ZTS22btSubsimplexConvexCast", !12, i64 0, !13, i64 8, !15, i64 16, !15, i64 24}
!12 = !{!"_ZTS12btConvexCast"}
!13 = !{!"p1 _ZTS22btVoronoiSimplexSolver", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"p1 _ZTS13btConvexShape", !14, i64 0}
!16 = !{!11, !15, i64 16}
!17 = !{!11, !15, i64 24}
!18 = !{!19, !19, i64 0}
!19 = !{!"float", !6, i64 0}
!20 = !{!6, !6, i64 0}
!21 = !{!22, !19, i64 168}
!22 = !{!"_ZTSN12btConvexCast10CastResultE", !23, i64 8, !23, i64 72, !25, i64 136, !25, i64 152, !19, i64 168, !26, i64 176, !19, i64 184}
!23 = !{!"_ZTS11btTransform", !24, i64 0, !25, i64 48}
!24 = !{!"_ZTS11btMatrix3x3", !6, i64 0}
!25 = !{!"_ZTS9btVector3", !6, i64 0}
!26 = !{!"p1 _ZTS12btIDebugDraw", !14, i64 0}
!27 = !{!22, !19, i64 184}
!28 = !{i64 0, i64 16, !20}
end_hunk_0
