Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSubSimplexConvexCast?download=true
inline.NumInlined: 96
inline.NumDeleted: 32
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btVector3 = type { [4 x float] }

$_ZN22btSubsimplexConvexCastD0Ev = comdat any

@_ZTV22btSubsimplexConvexCast = dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI22btSubsimplexConvexCast, ptr @_ZN12btConvexCastD2Ev, ptr @_ZN22btSubsimplexConvexCastD0Ev, ptr @_ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE] }, align 8
@_ZTI22btSubsimplexConvexCast = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS22btSubsimplexConvexCast, ptr @_ZTI12btConvexCast }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS22btSubsimplexConvexCast = dso_local constant [25 x i8] c"22btSubsimplexConvexCast\00", align 1
@_ZTI12btConvexCast = external constant ptr
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN22btSubsimplexConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN22btSubsimplexConvexCastC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolver

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN22btSubsimplexConvexCastC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolver(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV22btSubsimplexConvexCast, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.c, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) %5) unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %class.btVector3, align 8           ; 11 uses
  %7 = alloca %class.btVector3, align 8           ; 7 uses
  %8 = alloca %class.btVector3, align 8           ; 5 uses
  %9 = alloca %class.btVector3, align 8           ; 6 uses
  %10 = alloca %class.btVector3, align 8          ; 5 uses
  %11 = alloca %class.btVector3, align 8          ; 6 uses
  %12 = alloca %class.btVector3, align 8          ; 5 uses
  %13 = alloca %class.btVector3, align 8          ; 5 uses
  %14 = alloca %class.btVector3, align 4          ; 3 uses
  %15 = alloca %class.btVector3, align 4          ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  tail call void @_ZN22btVoronoiSimplexSolver5resetEv(ptr noundef nonnull align 4 dereferenceable(357) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.k = load <2 x float>, ptr %i.i, align 4, !tbaa !21 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %.sroa.7198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.7198.0.copyload = load float, ptr %.sroa.7198.0..sroa_idx, align 4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.14205.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.14205.16.copyload = load float, ptr %.sroa.14205.16..sroa_idx, align 4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.19210.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.p = load <2 x float>, ptr %1, align 4        ; 4 uses
  %i.q = load <2 x float>, ptr %i.n, align 4      ; 4 uses
  %i.r = load <2 x float>, ptr %i.o, align 4      ; 4 uses
  %.sroa.21212.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.21212.32.copyload = load float, ptr %.sroa.21212.32..sroa_idx, align 4 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %.sroa.14.16..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %.sroa.14.16.copyload = load float, ptr %.sroa.14.16..sroa_idx, align 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %.sroa.19.32..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.u = load <2 x float>, ptr %3, align 4        ; 3 uses
  %i.v = load <2 x float>, ptr %i.s, align 4      ; 3 uses
  %i.w = load <2 x float>, ptr %i.t, align 4      ; 3 uses
  %.sroa.21.32..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %.sroa.21.32.copyload = load float, ptr %.sroa.21.32..sroa_idx, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !17   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.z = load <3 x float>, ptr %i.c, align 4, !tbaa !21
  %i.aa = load float, ptr %i.f, align 4, !tbaa !21
  %i.ab = load <3 x float>, ptr %i.d, align 4, !tbaa !21 ; 3 uses
  %i.ac = fsub <3 x float> %i.z, %i.ab
  %i.ad = load <3 x float>, ptr %i.h, align 4, !tbaa !21
  %i.ae = load <2 x float>, ptr %i.j, align 4, !tbaa !21 ; 2 uses
  %i.af = shufflevector <2 x float> %i.k, <2 x float> %i.ae, <3 x i32> <i32 0, i32 2, i32 3>
  %i.ag = fsub <3 x float> %i.ad, %i.af
  %i.ah = fsub <3 x float> %i.ac, %i.ag           ; 7 uses
  %i.ai = extractelement <3 x float> %i.ah, i64 0 ; 4 uses
  %i.aj = fneg <3 x float> %i.ah                  ; 5 uses
  %i.ak = fneg float %i.ai
  %i.al = shufflevector <3 x float> %i.aj, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.am = fmul <2 x float> %i.q, %i.al
  %i.an = shufflevector <3 x float> %i.aj, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.an, <2 x float> %i.am)
  %i.ap = shufflevector <3 x float> %i.aj, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.ap, <2 x float> %i.ao)
  %i.ar = extractelement <3 x float> %i.aj, i64 1
  %i.as = fmul float %.sroa.14205.16.copyload, %i.ar
  %i.at = tail call float @llvm.fmuladd.f32(float %.sroa.7198.0.copyload, float %i.ak, float %i.as)
  %i.au = extractelement <3 x float> %i.aj, i64 2
  %i.av = tail call noundef float @llvm.fmuladd.f32(float %.sroa.21212.32.copyload, float %i.au, float %i.at)
  %.sroa.3.12.vec.insert.i78 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.av, i64 0
  store <2 x float> %i.aq, ptr %8, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i78, ptr %i.aw, align 8
  %i.ax = load ptr, ptr %i.y, align 8, !tbaa !10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call { <2 x float>, <2 x float> } %i.az(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 4 dereferenceable(16) %8) ; 2 uses
  %i.bb = extractvalue { <2 x float>, <2 x float> } %i.ba, 0 ; 4 uses
  %i.bc = extractvalue { <2 x float>, <2 x float> } %i.ba, 1 ; 2 uses
  %.sroa.0159.0.vec.extract = extractelement <2 x float> %i.bb, i64 0
  %.sroa.0159.4.vec.extract = extractelement <2 x float> %i.bb, i64 1
  %.sroa.5160.8.vec.extract = extractelement <2 x float> %i.bc, i64 0
  %i.bd = load float, ptr %.sroa.7198.0..sroa_idx, align 4, !tbaa !21
  %i.be = load float, ptr %.sroa.14205.16..sroa_idx, align 4, !tbaa !21
  %i.bf = load float, ptr %i.o, align 4, !tbaa !21
  %i.bg = load float, ptr %.sroa.19210.32..sroa_idx, align 4, !tbaa !21
  %i.bh = fmul float %.sroa.0159.4.vec.extract, %i.bg
  %i.bi = call float @llvm.fmuladd.f32(float %.sroa.0159.0.vec.extract, float %i.bf, float %i.bh)
  %i.bj = load float, ptr %.sroa.21212.32..sroa_idx, align 4, !tbaa !21
  %i.bk = call noundef float @llvm.fmuladd.f32(float %.sroa.5160.8.vec.extract, float %i.bj, float %i.bi)
  %i.bl = load <2 x float>, ptr %1, align 4, !tbaa !21 ; 2 uses
  %i.bm = load <2 x float>, ptr %i.n, align 4, !tbaa !21 ; 2 uses
  %i.bn = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bo = shufflevector <2 x float> %i.bl, <2 x float> %i.bm, <2 x i32> <i32 1, i32 3>
  %i.bp = fmul <2 x float> %i.bn, %i.bo
  %i.bq = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = shufflevector <2 x float> %i.bl, <2 x float> %i.bm, <2 x i32> <i32 0, i32 2>
  %i.bs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.br, <2 x float> %i.bp)
  %i.bt = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bv = insertelement <2 x float> %i.bu, float %i.be, i64 1
  %i.bw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.bv, <2 x float> %i.bs)
  %i.bx = load <2 x float>, ptr %i.d, align 4, !tbaa !21
  %i.by = fadd <2 x float> %i.bw, %i.bx           ; 2 uses
  %i.bz = load float, ptr %i.g, align 4, !tbaa !21
  %i.ca = fadd float %i.bk, %i.bz                 ; 2 uses
  %.sroa.3.12.vec.insert.i4.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ca, i64 0
  store <2 x float> %i.by, ptr %7, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i4.i, ptr %i.cb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.ce = extractelement <3 x float> %i.ah, i64 1 ; 3 uses
  %i.cf = extractelement <3 x float> %i.ah, i64 2 ; 3 uses
  %i.cg = load <2 x float>, ptr %3, align 4, !tbaa !21
  %i.ch = load <2 x float>, ptr %i.s, align 4, !tbaa !21
  %i.ci = shufflevector <3 x float> %i.ah, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cj = fmul <2 x float> %i.ci, %i.ch
  %i.ck = shufflevector <3 x float> %i.ah, <3 x float> poison, <2 x i32> zeroinitializer
  %i.cl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.ck, <2 x float> %i.cj)
  %i.cm = load <2 x float>, ptr %i.t, align 4, !tbaa !21
  %i.cn = shufflevector <3 x float> %i.ah, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.co = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %i.cn, <2 x float> %i.cl)
  %i.cp = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !21
  %i.cq = load float, ptr %.sroa.14.16..sroa_idx, align 4, !tbaa !21
  %i.cr = fmul float %i.ce, %i.cq
  %i.cs = call float @llvm.fmuladd.f32(float %i.cp, float %i.ai, float %i.cr)
  %i.ct = load float, ptr %.sroa.21.32..sroa_idx, align 4, !tbaa !21
  %i.cu = call noundef float @llvm.fmuladd.f32(float %i.ct, float %i.cf, float %i.cs)
  %.sroa.3.12.vec.insert.i83 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cu, i64 0
  store <2 x float> %i.co, ptr %10, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i83, ptr %i.cv, align 8
  %i.cw = load ptr, ptr %i.cd, align 8, !tbaa !10
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 128
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = call { <2 x float>, <2 x float> } %i.cy(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull align 4 dereferenceable(16) %10) ; 2 uses
  %i.da = extractvalue { <2 x float>, <2 x float> } %i.cz, 0 ; 4 uses
  %i.db = extractvalue { <2 x float>, <2 x float> } %i.cz, 1 ; 2 uses
  %.sroa.0155.0.vec.extract = extractelement <2 x float> %i.da, i64 0
  %.sroa.0155.4.vec.extract = extractelement <2 x float> %i.da, i64 1
  %.sroa.5156.8.vec.extract = extractelement <2 x float> %i.db, i64 0
  %i.dc = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !21
  %i.dd = load float, ptr %.sroa.14.16..sroa_idx, align 4, !tbaa !21
  %i.de = load float, ptr %i.t, align 4, !tbaa !21
  %i.df = load float, ptr %.sroa.19.32..sroa_idx, align 4, !tbaa !21
  %i.dg = fmul float %.sroa.0155.4.vec.extract, %i.df
  %i.dh = call float @llvm.fmuladd.f32(float %.sroa.0155.0.vec.extract, float %i.de, float %i.dg)
  %i.di = load float, ptr %.sroa.21.32..sroa_idx, align 4, !tbaa !21
  %i.dj = call noundef float @llvm.fmuladd.f32(float %.sroa.5156.8.vec.extract, float %i.di, float %i.dh)
  %i.dk = load <2 x float>, ptr %3, align 4, !tbaa !21 ; 2 uses
  %i.dl = load <2 x float>, ptr %i.s, align 4, !tbaa !21 ; 2 uses
  %i.dm = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dn = shufflevector <2 x float> %i.dk, <2 x float> %i.dl, <2 x i32> <i32 1, i32 3>
  %i.do = fmul <2 x float> %i.dm, %i.dn
  %i.dp = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = shufflevector <2 x float> %i.dk, <2 x float> %i.dl, <2 x i32> <i32 0, i32 2>
  %i.dr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> %i.dq, <2 x float> %i.do)
  %i.ds = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.du = insertelement <2 x float> %i.dt, float %i.dd, i64 1
  %i.dv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> %i.du, <2 x float> %i.dr)
  %i.dw = load <2 x float>, ptr %i.i, align 4, !tbaa !21
  %i.dx = fadd <2 x float> %i.dv, %i.dw           ; 2 uses
  %i.dy = load float, ptr %i.m, align 4, !tbaa !21
  %i.dz = fadd float %i.dj, %i.dy                 ; 2 uses
  %.sroa.3.12.vec.insert.i4.i88 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dz, i64 0
  store <2 x float> %i.dx, ptr %9, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i4.i88, ptr %i.ea, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  %i.eb = fsub <2 x float> %i.by, %i.dx           ; 4 uses
  %i.ec = fsub float %i.ca, %i.dz                 ; 3 uses
  %.sroa.3.12.vec.insert.i93 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ec, i64 0
  store <2 x float> %i.eb, ptr %6, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store <2 x float> %.sroa.3.12.vec.insert.i93, ptr %.sroa.415.0..sroa_idx, align 8, !tbaa !22
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 188
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !28 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.eb, %i.eb
  %i.eg = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.eh = extractelement <2 x float> %i.eb, i64 0 ; 2 uses
  %i.ei = call float @llvm.fmuladd.f32(float %i.eh, float %i.eh, float %i.eg)
  %i.ej = call noundef float @llvm.fmuladd.f32(float %i.ec, float %i.ec, float %i.ei)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %i.ek = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 2 uses
  %i.el = load float, ptr %i.ek, align 8, !tbaa !29
  %i.em = fcmp ogt float %i.ej, %i.el
  br i1 %i.em, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.en = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.not250 = icmp eq i32 %i.ee, 0
  br i1 %.not250, label %.critedge, label %.lr.ph260.preheader

.lr.ph260.preheader:                              ; preds = %.lr.ph
  %i.ep = extractelement <3 x float> %i.ab, i64 2
  %i.eq = shufflevector <2 x float> %i.k, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.er = shufflevector <3 x float> %i.eq, <3 x float> %i.ab, <4 x i32> <i32 0, i32 1, i32 poison, i32 3>
  %i.es = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.et = shufflevector <4 x float> %i.er, <4 x float> %i.es, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.eu = extractelement <2 x float> %i.r, i64 0
  %i.ev = shufflevector <2 x float> %i.p, <2 x float> %i.q, <2 x i32> <i32 1, i32 3>
  %i.ew = shufflevector <2 x float> %i.p, <2 x float> %i.q, <2 x i32> <i32 0, i32 2>
  %i.ex = insertelement <2 x float> poison, float %.sroa.7198.0.copyload, i64 0
  %i.ey = insertelement <2 x float> %i.ex, float %.sroa.14205.16.copyload, i64 1
  %i.ez = extractelement <2 x float> %i.w, i64 0
  %i.fa = shufflevector <2 x float> %i.u, <2 x float> %i.v, <2 x i32> <i32 1, i32 3>
  %i.fb = shufflevector <2 x float> %i.u, <2 x float> %i.v, <2 x i32> <i32 0, i32 2>
  %i.fc = insertelement <2 x float> poison, float %.sroa.7.0.copyload, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %.sroa.14.16.copyload, i64 1
  br label %.lr.ph260

bb.b:                                             ; preds = %bb.j
  %.not = icmp eq i32 %i.ff, 0
  br i1 %.not, label %.critedge, label %.lr.ph260, !llvm.loop !19

.lr.ph260:                                        ; preds = %.lr.ph260.preheader, %bb.b
  %.in = phi i32 [ %i.ff, %bb.b ], [ %i.ee, %.lr.ph260.preheader ]
  %.sroa.8.0229256 = phi <2 x float> [ %.sroa.8.1, %bb.b ], [ zeroinitializer, %.lr.ph260.preheader ]
  %.sroa.0149.0230255 = phi <2 x float> [ %.sroa.0149.1, %bb.b ], [ zeroinitializer, %.lr.ph260.preheader ]
  %.sroa.26216.0232253 = phi float [ %.sroa.26216.1, %bb.b ], [ %i.aa, %.lr.ph260.preheader ] ; 2 uses
  %.sroa.28217.0233252 = phi float [ %.sroa.28217.1, %bb.b ], [ %i.ep, %.lr.ph260.preheader ] ; 2 uses
  %.049235251 = phi float [ %.150, %bb.b ], [ 0.000000e+00, %.lr.ph260.preheader ] ; 3 uses
  %i.fe = phi <4 x float> [ %i.jl, %bb.b ], [ %i.et, %.lr.ph260.preheader ] ; 4 uses
  %i.ff = add nsw i32 %.in, -1                    ; 2 uses
  %i.fg = load ptr, ptr %i.x, align 8, !tbaa !17  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  %16 = load float, ptr %i.ef, align 4, !tbaa !21
  %17 = load float, ptr %6, align 8, !tbaa !21
  %18 = load float, ptr %.sroa.415.0..sroa_idx, align 8, !tbaa !21
  %19 = fneg float %16                            ; 2 uses
  %20 = fneg float %17                            ; 2 uses
  %21 = fneg float %18                            ; 2 uses
  %22 = insertelement <2 x float> poison, float %19, i64 0
  %i.fh = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  %23 = fmul <2 x float> %i.q, %i.fh
  %24 = insertelement <2 x float> poison, float %20, i64 0
  %25 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %25, <2 x float> %23)
  %26 = insertelement <2 x float> poison, float %21, i64 0
  %27 = shufflevector <2 x float> %26, <2 x float> poison, <2 x i32> zeroinitializer
  %28 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %27, <2 x float> %i.fi)
  %29 = fmul float %.sroa.14205.16.copyload, %19
  %30 = call float @llvm.fmuladd.f32(float %.sroa.7198.0.copyload, float %20, float %29)
  %i.fj = call noundef float @llvm.fmuladd.f32(float %.sroa.21212.32.copyload, float %21, float %30)
  %.sroa.3.12.vec.insert.i103 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fj, i64 0
  store <2 x float> %28, ptr %12, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i103, ptr %i.en, align 8
  %i.fk = load ptr, ptr %i.fg, align 8, !tbaa !10
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 128
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = call { <2 x float>, <2 x float> } %i.fm(ptr noundef nonnull align 8 dereferenceable(32) %i.fg, ptr noundef nonnull align 4 dereferenceable(16) %12) ; 2 uses
  %i.fo = extractvalue { <2 x float>, <2 x float> } %i.fn, 0 ; 4 uses
  %i.fp = extractvalue { <2 x float>, <2 x float> } %i.fn, 1 ; 2 uses
  %.sroa.0142.0.vec.extract = extractelement <2 x float> %i.fo, i64 0
  %.sroa.5143.8.vec.extract = extractelement <2 x float> %i.fp, i64 0
  %foldExtExtBinop268 = fmul <2 x float> %i.r, %i.fo
  %i.fq = extractelement <2 x float> %foldExtExtBinop268, i64 1
  %i.fr = call float @llvm.fmuladd.f32(float %.sroa.0142.0.vec.extract, float %i.eu, float %i.fq)
  %i.fs = call noundef float @llvm.fmuladd.f32(float %.sroa.5143.8.vec.extract, float %.sroa.21212.32.copyload, float %i.fr)
  %i.ft = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fu = fmul <2 x float> %i.ev, %i.ft
  %i.fv = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fv, <2 x float> %i.ew, <2 x float> %i.fu)
  %i.fx = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> %i.ey, <2 x float> %i.fw)
  %i.fz = shufflevector <4 x float> %i.fe, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.ga = insertelement <2 x float> %i.fz, float %.sroa.26216.0232253, i64 1
  %i.gb = fadd <2 x float> %i.ga, %i.fy
  %i.gc = fadd float %.sroa.28217.0233252, %i.fs
  %.sroa.3.12.vec.insert.i4.i108 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gc, i64 0
  store <2 x float> %i.gb, ptr %7, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i108, ptr %i.cb, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %i.gd = load ptr, ptr %i.cc, align 8, !tbaa !18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  %i.ge = load float, ptr %i.ef, align 4, !tbaa !21 ; 2 uses
  %i.gf = load float, ptr %6, align 8, !tbaa !21  ; 2 uses
  %i.gg = load float, ptr %.sroa.415.0..sroa_idx, align 8, !tbaa !21 ; 2 uses
  %i.gh = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.gi = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gj = fmul <2 x float> %i.v, %i.gi
  %i.gk = insertelement <2 x float> poison, float %i.gf, i64 0
  %i.gl = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.gl, <2 x float> %i.gj)
  %i.gn = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.go = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.go, <2 x float> %i.gm)
  %i.gq = fmul float %.sroa.14.16.copyload, %i.ge
  %i.gr = call float @llvm.fmuladd.f32(float %.sroa.7.0.copyload, float %i.gf, float %i.gq)
  %i.gs = call noundef float @llvm.fmuladd.f32(float %.sroa.21.32.copyload, float %i.gg, float %i.gr)
  %.sroa.3.12.vec.insert.i113 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gs, i64 0
  store <2 x float> %i.gp, ptr %13, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i113, ptr %i.eo, align 8
  %i.gt = load ptr, ptr %i.gd, align 8, !tbaa !10
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 128
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = call { <2 x float>, <2 x float> } %i.gv(ptr noundef nonnull align 8 dereferenceable(32) %i.gd, ptr noundef nonnull align 4 dereferenceable(16) %13) ; 2 uses
  %i.gx = extractvalue { <2 x float>, <2 x float> } %i.gw, 0 ; 4 uses
  %i.gy = extractvalue { <2 x float>, <2 x float> } %i.gw, 1 ; 2 uses
  %.sroa.0138.0.vec.extract = extractelement <2 x float> %i.gx, i64 0
  %.sroa.5139.8.vec.extract = extractelement <2 x float> %i.gy, i64 0
  %foldExtExtBinop270 = fmul <2 x float> %i.w, %i.gx
  %i.gz = extractelement <2 x float> %foldExtExtBinop270, i64 1
  %i.ha = call float @llvm.fmuladd.f32(float %.sroa.0138.0.vec.extract, float %i.ez, float %i.gz)
  %i.hb = call noundef float @llvm.fmuladd.f32(float %.sroa.5139.8.vec.extract, float %.sroa.21.32.copyload, float %i.ha)
  %i.hc = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hd = fmul <2 x float> %i.fa, %i.hc
  %i.he = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.he, <2 x float> %i.fb, <2 x float> %i.hd)
  %i.hg = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hg, <2 x float> %i.fd, <2 x float> %i.hf)
  %i.hi = shufflevector <4 x float> %i.fe, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.hj = fadd <2 x float> %i.hi, %i.hh           ; 2 uses
  %i.hk = extractelement <4 x float> %i.fe, i64 2
  %i.hl = fadd float %i.hk, %i.hb                 ; 2 uses
  %.sroa.3.12.vec.insert.i4.i118 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hl, i64 0
  store <2 x float> %i.hj, ptr %9, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i118, ptr %i.ea, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  %i.hm = load <2 x float>, ptr %7, align 8, !tbaa !21
  %i.hn = fsub <2 x float> %i.hm, %i.hj           ; 3 uses
  %i.ho = load float, ptr %i.cb, align 8, !tbaa !21
  %i.hp = fsub float %i.ho, %i.hl                 ; 2 uses
  %.sroa.3.12.vec.insert.i123 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hp, i64 0
  store <2 x float> %i.hn, ptr %11, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i123, ptr %.sroa.45.0..sroa_idx, align 8, !tbaa !22
  %i.hq = load float, ptr %6, align 8, !tbaa !21  ; 2 uses
  %i.hr = load float, ptr %i.ef, align 4, !tbaa !21 ; 2 uses
  %i.hs = extractelement <2 x float> %i.hn, i64 1
  %i.ht = fmul float %i.hr, %i.hs
  %i.hu = extractelement <2 x float> %i.hn, i64 0
  %i.hv = call float @llvm.fmuladd.f32(float %i.hq, float %i.hu, float %i.ht)
  %i.hw = load float, ptr %.sroa.415.0..sroa_idx, align 8, !tbaa !21 ; 2 uses
  %i.hx = call noundef float @llvm.fmuladd.f32(float %i.hw, float %i.hp, float %i.hv) ; 2 uses
  %i.hy = fcmp ogt float %.049235251, 1.000000e+00
  br i1 %i.hy, label %.critedge60, label %bb.c

bb.c:                                             ; preds = %.lr.ph260
  %i.hz = fcmp ogt float %i.hx, 0.000000e+00
  br i1 %i.hz, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ia = fmul float %i.ce, %i.hr
  %i.ib = call float @llvm.fmuladd.f32(float %i.hq, float %i.ai, float %i.ia)
  %i.ic = call noundef float @llvm.fmuladd.f32(float %i.hw, float %i.cf, float %i.ib) ; 2 uses
  %i.id = fcmp ult float %i.ic, f0xA8800000
  br i1 %i.id, label %bb.e, label %.critedge60

bb.e:                                             ; preds = %bb.d
  %i.ie = fdiv float %i.hx, %i.ic
  %i.if = fsub float %.049235251, %i.ie           ; 4 uses
  %i.ig = fsub float 1.000000e+00, %i.if          ; 2 uses
  %i.ih = load float, ptr %i.d, align 4, !tbaa !21
  %i.ii = load float, ptr %i.c, align 4, !tbaa !21
  %i.ij = load <2 x float>, ptr %i.f, align 4, !tbaa !21
  %i.ik = load <2 x float>, ptr %i.e, align 4, !tbaa !21
  %i.il = insertelement <2 x float> poison, float %i.if, i64 0
  %i.im = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> zeroinitializer
  %i.in = fmul <2 x float> %i.im, %i.ik
  %i.io = insertelement <2 x float> poison, float %i.ig, i64 0
  %i.ip = shufflevector <2 x float> %i.io, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ip, <2 x float> %i.ij, <2 x float> %i.in) ; 2 uses
  %i.ir = load float, ptr %i.m, align 4, !tbaa !21
  %i.is = load float, ptr %i.l, align 4, !tbaa !21
  %i.it = load <2 x float>, ptr %i.h, align 4, !tbaa !21
  %i.iu = insertelement <4 x float> poison, float %i.if, i64 0
  %i.iv = shufflevector <4 x float> %i.iu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iw = insertelement <4 x float> poison, float %i.is, i64 2
  %i.ix = insertelement <4 x float> %i.iw, float %i.ii, i64 3
  %i.iy = shufflevector <2 x float> %i.it, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.iz = shufflevector <4 x float> %i.iy, <4 x float> %i.ix, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ja = fmul <4 x float> %i.iv, %i.iz
  %i.jb = load <2 x float>, ptr %i.i, align 4, !tbaa !21
  %i.jc = insertelement <4 x float> poison, float %i.ig, i64 0
  %i.jd = shufflevector <4 x float> %i.jc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.je = insertelement <4 x float> poison, float %i.ir, i64 2
  %i.jf = insertelement <4 x float> %i.je, float %i.ih, i64 3
  %i.jg = shufflevector <2 x float> %i.jb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jh = shufflevector <4 x float> %i.jg, <4 x float> %i.jf, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ji = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jd, <4 x float> %i.jh, <4 x float> %i.ja)
  %.sroa.0149.0.copyload = load <2 x float>, ptr %6, align 8
  %.sroa.8.0.copyload = load <2 x float>, ptr %.sroa.415.0..sroa_idx, align 8, !tbaa !22
  %i.jj = extractelement <2 x float> %i.iq, i64 0
  %i.jk = extractelement <2 x float> %i.iq, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.8.1 = phi <2 x float> [ %.sroa.8.0.copyload, %bb.e ], [ %.sroa.8.0229256, %bb.c ] ; 3 uses
  %.sroa.0149.1 = phi <2 x float> [ %.sroa.0149.0.copyload, %bb.e ], [ %.sroa.0149.0230255, %bb.c ] ; 3 uses
  %.sroa.26216.1 = phi float [ %i.jj, %bb.e ], [ %.sroa.26216.0232253, %bb.c ]
  %.sroa.28217.1 = phi float [ %i.jk, %bb.e ], [ %.sroa.28217.0233252, %bb.c ]
  %.150 = phi float [ %i.if, %bb.e ], [ %.049235251, %bb.c ] ; 3 uses
  %i.jl = phi <4 x float> [ %i.ji, %bb.e ], [ %i.fe, %bb.c ]
  %i.jm = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.jn = call noundef zeroext i1 @_ZN22btVoronoiSimplexSolver9inSimplexERK9btVector3(ptr noundef nonnull align 4 dereferenceable(357) %i.jm, ptr noundef nonnull align 4 dereferenceable(16) %11)
  br i1 %i.jn, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.jo = load ptr, ptr %i.a, align 8, !tbaa !16
  call void @_ZN22btVoronoiSimplexSolver9addVertexERK9btVector3S2_S2_(ptr noundef nonnull align 4 dereferenceable(357) %i.jo, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %9)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.jp = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.jq = call noundef zeroext i1 @_ZN22btVoronoiSimplexSolver7closestER9btVector3(ptr noundef nonnull align 4 dereferenceable(357) %i.jp, ptr noundef nonnull align 4 dereferenceable(16) %6)
  br i1 %i.jq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.jr = load float, ptr %6, align 8, !tbaa !21  ; 2 uses
  %i.js = load float, ptr %i.ef, align 4, !tbaa !21 ; 2 uses
  %i.jt = fmul float %i.js, %i.js
  %i.ju = call float @llvm.fmuladd.f32(float %i.jr, float %i.jr, float %i.jt)
  %i.jv = load float, ptr %.sroa.415.0..sroa_idx, align 8, !tbaa !21 ; 2 uses
  %i.jw = call noundef float @llvm.fmuladd.f32(float %i.jv, float %i.jv, float %i.ju)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.255 = phi float [ %i.jw, %bb.i ], [ 0.000000e+00, %bb.h ]
  %i.jx = load float, ptr %i.ek, align 8, !tbaa !29
  %i.jy = fcmp ogt float %.255, %i.jx
  br i1 %i.jy, label %bb.b, label %..critedge.loopexit_crit_edge, !llvm.loop !19

..critedge.loopexit_crit_edge:                    ; preds = %bb.j
  br label %.critedge, !llvm.loop !19

.critedge:                                        ; preds = %bb.b, %.lr.ph, %..critedge.loopexit_crit_edge, %bb.a
  %.sroa.8.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.a ], [ zeroinitializer, %.lr.ph ], [ %.sroa.8.1, %..critedge.loopexit_crit_edge ], [ %.sroa.8.1, %bb.b ] ; 2 uses
  %.sroa.0149.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.a ], [ zeroinitializer, %.lr.ph ], [ %.sroa.0149.1, %..critedge.loopexit_crit_edge ], [ %.sroa.0149.1, %bb.b ] ; 2 uses
  %.049.lcssa = phi float [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %.lr.ph ], [ %.150, %..critedge.loopexit_crit_edge ], [ %.150, %bb.b ]
  %i.jz = getelementptr inbounds nuw i8, ptr %5, i64 168
  store float %.049.lcssa, ptr %i.jz, align 8, !tbaa !31
  %.sroa.0149.0.vec.extract = extractelement <2 x float> %.sroa.0149.0.lcssa, i64 0 ; 3 uses
  %.sroa.0149.4.vec.extract = extractelement <2 x float> %.sroa.0149.0.lcssa, i64 1 ; 3 uses
  %i.ka = fmul float %.sroa.0149.4.vec.extract, %.sroa.0149.4.vec.extract
  %i.kb = call float @llvm.fmuladd.f32(float %.sroa.0149.0.vec.extract, float %.sroa.0149.0.vec.extract, float %i.ka)
  %.sroa.8.8.vec.extract = extractelement <2 x float> %.sroa.8.0.lcssa, i64 0 ; 3 uses
  %i.kc = call noundef float @llvm.fmuladd.f32(float %.sroa.8.8.vec.extract, float %.sroa.8.8.vec.extract, float %i.kb) ; 2 uses
  %i.kd = fcmp ult float %i.kc, f0x28800000
  br i1 %i.kd, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.kc)
  %i.ke = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 3 uses
  %i.kf = fmul float %.sroa.0149.0.vec.extract, %i.ke ; 2 uses
  %.sroa.0.0.vec.insert.i131 = insertelement <2 x float> poison, float %i.kf, i64 0
  %i.kg = fmul float %.sroa.0149.4.vec.extract, %i.ke ; 2 uses
  %.sroa.0.4.vec.insert.i132 = insertelement <2 x float> %.sroa.0.0.vec.insert.i131, float %i.kg, i64 1
  %i.kh = fmul float %.sroa.8.8.vec.extract, %i.ke ; 2 uses
  %.sroa.8.8.vec.insert.i = insertelement <2 x float> %.sroa.8.0.lcssa, float %i.kh, i64 0
  %i.ki = getelementptr inbounds nuw i8, ptr %5, i64 136
  store <2 x float> %.sroa.0.4.vec.insert.i132, ptr %i.ki, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 144
  store <2 x float> %.sroa.8.8.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !22
  br label %bb.m

bb.l:                                             ; preds = %.critedge
  %i.kj = getelementptr inbounds nuw i8, ptr %5, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kj, i8 0, i64 16, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.kk = phi float [ 0.000000e+00, %bb.l ], [ %i.kh, %bb.k ]
  %i.kl = phi float [ 0.000000e+00, %bb.l ], [ %i.kg, %bb.k ]
  %i.km = phi float [ 0.000000e+00, %bb.l ], [ %i.kf, %bb.k ]
  %i.kn = fmul float %i.ce, %i.kl
  %i.ko = call float @llvm.fmuladd.f32(float %i.km, float %i.ai, float %i.kn)
  %i.kp = call noundef float @llvm.fmuladd.f32(float %i.kk, float %i.cf, float %i.ko)
  %i.kq = getelementptr inbounds nuw i8, ptr %5, i64 184
  %i.kr = load float, ptr %i.kq, align 8, !tbaa !32
  %i.ks = fneg float %i.kr
  %i.kt = fcmp ult float %i.kp, %i.ks
  br i1 %i.kt, label %bb.n, label %.critedge60

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #9
  %i.ku = load ptr, ptr %i.a, align 8, !tbaa !16
  call void @_ZN22btVoronoiSimplexSolver14compute_pointsER9btVector3S1_(ptr noundef nonnull align 4 dereferenceable(357) %i.ku, ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %15)
  %i.kv = getelementptr inbounds nuw i8, ptr %5, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kv, ptr noundef nonnull align 4 dereferenceable(16) %15, i64 16, i1 false), !tbaa.struct !33
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  br label %.critedge60

.critedge60:                                      ; preds = %bb.d, %.lr.ph260, %bb.m, %bb.n
  %.2 = phi i1 [ false, %bb.m ], [ true, %bb.n ], [ false, %.lr.ph260 ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  ret i1 %.2
}

declare void @_ZN22btVoronoiSimplexSolver5resetEv(ptr noundef nonnull align 4 dereferenceable(357)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare noundef zeroext i1 @_ZN22btVoronoiSimplexSolver9inSimplexERK9btVector3(ptr noundef nonnull align 4 dereferenceable(357), ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN22btVoronoiSimplexSolver9addVertexERK9btVector3S2_S2_(ptr noundef nonnull align 4 dereferenceable(357), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN22btVoronoiSimplexSolver7closestER9btVector3(ptr noundef nonnull align 4 dereferenceable(357), ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN22btVoronoiSimplexSolver14compute_pointsER9btVector3S1_(ptr noundef nonnull align 4 dereferenceable(357), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN22btSubsimplexConvexCastD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #9
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #10
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"_ZTS12btConvexCast"}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTS22btVoronoiSimplexSolver", !12, i64 0}
!14 = !{!"p1 _ZTS13btConvexShape", !12, i64 0}
!15 = !{!"_ZTS22btSubsimplexConvexCast", !11, i64 0, !13, i64 8, !14, i64 16, !14, i64 24}
!16 = !{!15, !13, i64 8}
!17 = !{!15, !14, i64 16}
!18 = !{!15, !14, i64 24}
!19 = distinct !{!19, !30}
!20 = !{!"float", !5, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!5, !5, i64 0}
!23 = !{!"_ZTS11btMatrix3x3", !5, i64 0}
!24 = !{!"_ZTS9btVector3", !5, i64 0}
!25 = !{!"_ZTS11btTransform", !23, i64 0, !24, i64 48}
!26 = !{!"p1 _ZTS12btIDebugDraw", !12, i64 0}
!27 = !{!"_ZTSN12btConvexCast10CastResultE", !25, i64 8, !25, i64 72, !24, i64 136, !24, i64 152, !20, i64 168, !26, i64 176, !20, i64 184, !6, i64 188, !20, i64 192}
!28 = !{!27, !6, i64 188}
!29 = !{!27, !20, i64 192}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!27, !20, i64 168}
!32 = !{!27, !20, i64 184}
!33 = !{i64 0, i64 16, !22}
end_hunk_0
