Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btSubSimplexConvexCast?download=true
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV22btSubsimplexConvexCast, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !15
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  tail call void @_ZN22btVoronoiSimplexSolver5resetEv(ptr noundef nonnull align 4 dereferenceable(353) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.m = load <2 x float>, ptr %i.j, align 4, !tbaa !19 ; 2 uses
  %i.n = extractelement <2 x float> %i.m, i64 0
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  %.sroa.7201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.7201.0.copyload = load float, ptr %.sroa.7201.0..sroa_idx, align 4 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.14208.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.14208.16.copyload = load float, ptr %.sroa.14208.16..sroa_idx, align 4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.19213.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.s = load <2 x float>, ptr %1, align 4        ; 4 uses
  %i.t = load <2 x float>, ptr %i.q, align 4      ; 4 uses
  %i.u = load <2 x float>, ptr %i.r, align 4      ; 4 uses
  %.sroa.21215.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.21215.32.copyload = load float, ptr %.sroa.21215.32..sroa_idx, align 4 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %.sroa.14.16..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %.sroa.14.16.copyload = load float, ptr %.sroa.14.16..sroa_idx, align 4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %.sroa.19.32..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.x = load <2 x float>, ptr %3, align 4        ; 3 uses
  %i.y = load <2 x float>, ptr %i.v, align 4      ; 3 uses
  %i.z = load <2 x float>, ptr %i.w, align 4      ; 3 uses
  %.sroa.21.32..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %.sroa.21.32.copyload = load float, ptr %.sroa.21.32..sroa_idx, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %16 = load float, ptr %i.e, align 4, !tbaa !19
  %i.af = load float, ptr %i.c, align 4, !tbaa !19
  %i.ag = load float, ptr %i.g, align 4, !tbaa !19
  %17 = load float, ptr %i.f, align 4, !tbaa !19  ; 2 uses
  %i.ah = load float, ptr %i.d, align 4, !tbaa !19 ; 2 uses
  %i.ai = load float, ptr %i.h, align 4, !tbaa !19 ; 2 uses
  %i.aj = fsub float %16, %17
  %18 = fsub float %i.af, %i.ah
  %19 = fsub float %i.ag, %i.ai
  %20 = load float, ptr %i.k, align 4, !tbaa !19
  %i.ak = load float, ptr %i.i, align 4, !tbaa !19
  %21 = load float, ptr %i.o, align 4, !tbaa !19
  %22 = load float, ptr %i.p, align 4, !tbaa !19  ; 2 uses
  %23 = load float, ptr %i.l, align 4, !tbaa !19
  %24 = fsub float %20, %23
  %i.al = fsub float %i.ak, %i.n
  %25 = fsub float %21, %22
  %i.am = fsub float %i.aj, %24                   ; 5 uses
  %26 = fsub float %18, %i.al                     ; 5 uses
  %i.an = fsub float %19, %25                     ; 5 uses
  %i.ao = fneg float %i.am                        ; 2 uses
  %i.ap = fneg float %26                          ; 2 uses
  %i.aq = fneg float %i.an                        ; 2 uses
  %i.ar = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x float> %i.t, %i.as
  %i.au = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.av, <2 x float> %i.at)
  %i.ax = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.ay, <2 x float> %i.aw)
  %i.ba = fmul float %.sroa.14208.16.copyload, %i.ao
  %i.bb = tail call float @llvm.fmuladd.f32(float %.sroa.7201.0.copyload, float %i.ap, float %i.ba)
  %i.bc = tail call noundef float @llvm.fmuladd.f32(float %.sroa.21215.32.copyload, float %i.aq, float %i.bb)
  %.sroa.3.12.vec.insert.i79 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bc, i64 0
  store <2 x float> %i.az, ptr %8, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i79, ptr %i.ac, align 8
  %i.bd = load ptr, ptr %i.ab, align 8, !tbaa !9
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call { <2 x float>, <2 x float> } %i.bf(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 4 dereferenceable(16) %8) ; 2 uses
  %i.bh = extractvalue { <2 x float>, <2 x float> } %i.bg, 0 ; 4 uses
  %i.bi = extractvalue { <2 x float>, <2 x float> } %i.bg, 1 ; 2 uses
  %.sroa.0160.0.vec.extract = extractelement <2 x float> %i.bh, i64 0
  %.sroa.0160.4.vec.extract = extractelement <2 x float> %i.bh, i64 1
  %i.bj = load float, ptr %.sroa.7201.0..sroa_idx, align 4, !tbaa !19
  %.sroa.5161.8.vec.extract = extractelement <2 x float> %i.bi, i64 0
  %i.bk = load float, ptr %.sroa.14208.16..sroa_idx, align 4, !tbaa !19
  %i.bl = load <2 x float>, ptr %1, align 4, !tbaa !19 ; 2 uses
  %i.bm = load <2 x float>, ptr %i.q, align 4, !tbaa !19 ; 2 uses
  %i.bn = shufflevector <2 x float> %i.bl, <2 x float> %i.bm, <2 x i32> <i32 1, i32 3>
  %i.bo = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bp = fmul <2 x float> %i.bn, %i.bo
  %i.bq = shufflevector <2 x float> %i.bl, <2 x float> %i.bm, <2 x i32> <i32 0, i32 2>
  %i.br = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.br, <2 x float> %i.bp)
  %i.bt = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bu = insertelement <2 x float> %i.bt, float %i.bk, i64 1
  %i.bv = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bv, <2 x float> %i.bs)
  %i.bx = load <2 x float>, ptr %i.d, align 4, !tbaa !19
  %i.by = fadd <2 x float> %i.bx, %i.bw           ; 2 uses
  %i.bz = load float, ptr %i.r, align 4, !tbaa !19
  %i.ca = load float, ptr %.sroa.19213.32..sroa_idx, align 4, !tbaa !19
  %i.cb = fmul float %.sroa.0160.4.vec.extract, %i.ca
  %i.cc = call float @llvm.fmuladd.f32(float %i.bz, float %.sroa.0160.0.vec.extract, float %i.cb)
  %i.cd = load float, ptr %.sroa.21215.32..sroa_idx, align 4, !tbaa !19
  %i.ce = call noundef float @llvm.fmuladd.f32(float %i.cd, float %.sroa.5161.8.vec.extract, float %i.cc)
  %i.cf = load float, ptr %i.h, align 4, !tbaa !19
  %i.cg = fadd float %i.cf, %i.ce                 ; 2 uses
  %.sroa.3.12.vec.insert.i84 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cg, i64 0
  store <2 x float> %i.by, ptr %7, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i84, ptr %i.ad, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.ch = load ptr, ptr %i.ae, align 8, !tbaa !17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.ci = load <2 x float>, ptr %3, align 4, !tbaa !19
  %i.cj = load <2 x float>, ptr %i.v, align 4, !tbaa !19
  %i.ck = insertelement <2 x float> poison, float %i.am, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = fmul <2 x float> %i.cl, %i.cj
  %i.cn = insertelement <2 x float> poison, float %26, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.co, <2 x float> %i.cm)
  %i.cq = load <2 x float>, ptr %i.w, align 4, !tbaa !19
  %i.cr = insertelement <2 x float> poison, float %i.an, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> %i.cs, <2 x float> %i.cp)
  %i.cu = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !19
  %i.cv = load float, ptr %.sroa.14.16..sroa_idx, align 4, !tbaa !19
  %i.cw = fmul float %i.am, %i.cv
  %i.cx = call float @llvm.fmuladd.f32(float %i.cu, float %26, float %i.cw)
  %i.cy = load float, ptr %.sroa.21.32..sroa_idx, align 4, !tbaa !19
  %i.cz = call noundef float @llvm.fmuladd.f32(float %i.cy, float %i.an, float %i.cx)
  %.sroa.3.12.vec.insert.i89 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cz, i64 0
  store <2 x float> %i.ct, ptr %10, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i89, ptr %i.da, align 8
  %i.db = load ptr, ptr %i.ch, align 8, !tbaa !9
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 96
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = call { <2 x float>, <2 x float> } %i.dd(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 4 dereferenceable(16) %10) ; 2 uses
  %i.df = extractvalue { <2 x float>, <2 x float> } %i.de, 0 ; 4 uses
  %i.dg = extractvalue { <2 x float>, <2 x float> } %i.de, 1 ; 2 uses
  %.sroa.0156.0.vec.extract = extractelement <2 x float> %i.df, i64 0
  %.sroa.0156.4.vec.extract = extractelement <2 x float> %i.df, i64 1
  %i.dh = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !19
  %.sroa.5157.8.vec.extract = extractelement <2 x float> %i.dg, i64 0
  %i.di = load float, ptr %.sroa.14.16..sroa_idx, align 4, !tbaa !19
  %i.dj = load <2 x float>, ptr %3, align 4, !tbaa !19 ; 2 uses
  %i.dk = load <2 x float>, ptr %i.v, align 4, !tbaa !19 ; 2 uses
  %i.dl = shufflevector <2 x float> %i.dj, <2 x float> %i.dk, <2 x i32> <i32 1, i32 3>
  %i.dm = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dn = fmul <2 x float> %i.dl, %i.dm
  %i.do = shufflevector <2 x float> %i.dj, <2 x float> %i.dk, <2 x i32> <i32 0, i32 2>
  %i.dp = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.do, <2 x float> %i.dp, <2 x float> %i.dn)
  %i.dr = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.ds = insertelement <2 x float> %i.dr, float %i.di, i64 1
  %i.dt = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> %i.dt, <2 x float> %i.dq)
  %i.dv = load <2 x float>, ptr %i.j, align 4, !tbaa !19
  %i.dw = fadd <2 x float> %i.dv, %i.du           ; 2 uses
  %i.dx = load float, ptr %i.w, align 4, !tbaa !19
  %i.dy = load float, ptr %.sroa.19.32..sroa_idx, align 4, !tbaa !19
  %i.dz = fmul float %.sroa.0156.4.vec.extract, %i.dy
  %i.ea = call float @llvm.fmuladd.f32(float %i.dx, float %.sroa.0156.0.vec.extract, float %i.dz)
  %i.eb = load float, ptr %.sroa.21.32..sroa_idx, align 4, !tbaa !19
  %i.ec = call noundef float @llvm.fmuladd.f32(float %i.eb, float %.sroa.5157.8.vec.extract, float %i.ea)
  %i.ed = load float, ptr %i.p, align 4, !tbaa !19
  %i.ee = fadd float %i.ed, %i.ec                 ; 2 uses
  %.sroa.3.12.vec.insert.i94 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ee, i64 0
  store <2 x float> %i.dw, ptr %9, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i94, ptr %i.ef, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  %i.eg = fsub <2 x float> %i.by, %i.dw           ; 4 uses
  %i.eh = fsub float %i.cg, %i.ee                 ; 3 uses
  %.sroa.3.12.vec.insert.i99 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eh, i64 0
  store <2 x float> %i.eg, ptr %6, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store <2 x float> %.sroa.3.12.vec.insert.i99, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !20
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.eg, %i.eg
  %i.ej = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ek = extractelement <2 x float> %i.eg, i64 0 ; 2 uses
  %i.el = call float @llvm.fmuladd.f32(float %i.ek, float %i.ek, float %i.ej)
  %i.em = call noundef float @llvm.fmuladd.f32(float %i.eh, float %i.eh, float %i.el)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.en = fcmp ogt float %i.em, f0x38D1B717
  br i1 %i.en, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.eo = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %27 = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %28 = insertelement <4 x float> %27, float %22, i64 2
  %i.eq = insertelement <4 x float> %28, float %i.ah, i64 3
  %i.er = extractelement <2 x float> %i.u, i64 0
  %i.es = insertelement <2 x float> poison, float %.sroa.7201.0.copyload, i64 0
  %i.et = insertelement <2 x float> %i.es, float %.sroa.14208.16.copyload, i64 1
  %i.eu = shufflevector <2 x float> %i.s, <2 x float> %i.t, <2 x i32> <i32 0, i32 2>
  %i.ev = shufflevector <2 x float> %i.s, <2 x float> %i.t, <2 x i32> <i32 1, i32 3>
  %i.ew = extractelement <2 x float> %i.z, i64 0
  %i.ex = insertelement <2 x float> poison, float %.sroa.7.0.copyload, i64 0
  %i.ey = insertelement <2 x float> %i.ex, float %.sroa.14.16.copyload, i64 1
  %i.ez = shufflevector <2 x float> %i.x, <2 x float> %i.y, <2 x i32> <i32 0, i32 2>
  %i.fa = shufflevector <2 x float> %i.x, <2 x float> %i.y, <2 x i32> <i32 1, i32 3>
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph
  %i.fb = phi i32 [ 31, %.lr.ph ], [ %i.kg, %bb.g ] ; 2 uses
  %.sroa.9.0233264 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.9.1, %bb.g ]
  %.sroa.6153.0234263 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.6153.1, %bb.g ]
  %.sroa.0151.0235262 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.0151.1, %bb.g ]
  %.sroa.26219.0237260 = phi float [ %17, %.lr.ph ], [ %.sroa.26219.1, %bb.g ] ; 2 uses
  %.sroa.28220.0238259 = phi float [ %i.ai, %.lr.ph ], [ %.sroa.28220.1, %bb.g ] ; 2 uses
  %.050240258 = phi float [ 0.000000e+00, %.lr.ph ], [ %.151, %bb.g ] ; 3 uses
  %i.fc = phi <4 x float> [ %i.eq, %.lr.ph ], [ %i.jv, %bb.g ] ; 4 uses
  %i.fd = load ptr, ptr %i.aa, align 8, !tbaa !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  %i.fe = load float, ptr %i.ei, align 4, !tbaa !19
  %29 = load float, ptr %6, align 8, !tbaa !19
  %i.ff = load float, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !19
  %i.fg = fneg float %i.fe                        ; 2 uses
  %30 = fneg float %29                            ; 2 uses
  %i.fh = fneg float %i.ff                        ; 2 uses
  %i.fi = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = fmul <2 x float> %i.t, %i.fj
  %i.fl = insertelement <2 x float> poison, float %30, i64 0
  %i.fm = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.fm, <2 x float> %i.fk)
  %i.fo = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.fp, <2 x float> %i.fn)
  %i.fr = fmul float %.sroa.14208.16.copyload, %i.fg
  %i.fs = call float @llvm.fmuladd.f32(float %.sroa.7201.0.copyload, float %30, float %i.fr)
  %i.ft = call noundef float @llvm.fmuladd.f32(float %.sroa.21215.32.copyload, float %i.fh, float %i.fs)
  %.sroa.3.12.vec.insert.i109 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ft, i64 0
  store <2 x float> %i.fq, ptr %12, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i109, ptr %i.eo, align 8
  %i.fu = load ptr, ptr %i.fd, align 8, !tbaa !9
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 96
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = call { <2 x float>, <2 x float> } %i.fw(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noundef nonnull align 4 dereferenceable(16) %12) ; 2 uses
  %i.fy = extractvalue { <2 x float>, <2 x float> } %i.fx, 0 ; 4 uses
  %i.fz = extractvalue { <2 x float>, <2 x float> } %i.fx, 1 ; 2 uses
  %.sroa.0144.0.vec.extract = extractelement <2 x float> %i.fy, i64 0
  %.sroa.5145.8.vec.extract = extractelement <2 x float> %i.fz, i64 0
  %i.ga = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gb = fmul <2 x float> %i.ev, %i.ga
  %i.gc = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.gc, <2 x float> %i.gb)
  %i.ge = shufflevector <2 x float> %i.fz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.et, <2 x float> %i.ge, <2 x float> %i.gd)
  %i.gg = shufflevector <4 x float> %i.fc, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.gh = insertelement <2 x float> %i.gg, float %.sroa.26219.0237260, i64 1
  %i.gi = fadd <2 x float> %i.gh, %i.gf
  %foldExtExtBinop269 = fmul <2 x float> %i.u, %i.fy
  %i.gj = extractelement <2 x float> %foldExtExtBinop269, i64 1
  %i.gk = call float @llvm.fmuladd.f32(float %i.er, float %.sroa.0144.0.vec.extract, float %i.gj)
  %i.gl = call noundef float @llvm.fmuladd.f32(float %.sroa.21215.32.copyload, float %.sroa.5145.8.vec.extract, float %i.gk)
  %i.gm = fadd float %.sroa.28220.0238259, %i.gl
  %.sroa.3.12.vec.insert.i114 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gm, i64 0
  store <2 x float> %i.gi, ptr %7, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i114, ptr %i.ad, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  %i.gn = load ptr, ptr %i.ae, align 8, !tbaa !17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  %i.go = load float, ptr %i.ei, align 4, !tbaa !19 ; 2 uses
  %i.gp = load float, ptr %6, align 8, !tbaa !19  ; 2 uses
  %i.gq = load float, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !19 ; 2 uses
  %i.gr = insertelement <2 x float> poison, float %i.go, i64 0
  %i.gs = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gt = fmul <2 x float> %i.y, %i.gs
  %i.gu = insertelement <2 x float> poison, float %i.gp, i64 0
  %i.gv = shufflevector <2 x float> %i.gu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.gv, <2 x float> %i.gt)
  %i.gx = insertelement <2 x float> poison, float %i.gq, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.gy, <2 x float> %i.gw)
  %i.ha = fmul float %.sroa.14.16.copyload, %i.go
  %i.hb = call float @llvm.fmuladd.f32(float %.sroa.7.0.copyload, float %i.gp, float %i.ha)
  %i.hc = call noundef float @llvm.fmuladd.f32(float %.sroa.21.32.copyload, float %i.gq, float %i.hb)
  %.sroa.3.12.vec.insert.i119 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hc, i64 0
  store <2 x float> %i.gz, ptr %13, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i119, ptr %i.ep, align 8
  %i.hd = load ptr, ptr %i.gn, align 8, !tbaa !9
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 96
  %i.hf = load ptr, ptr %i.he, align 8
  %i.hg = call { <2 x float>, <2 x float> } %i.hf(ptr noundef nonnull align 8 dereferenceable(24) %i.gn, ptr noundef nonnull align 4 dereferenceable(16) %13) ; 2 uses
  %i.hh = extractvalue { <2 x float>, <2 x float> } %i.hg, 0 ; 4 uses
  %i.hi = extractvalue { <2 x float>, <2 x float> } %i.hg, 1 ; 2 uses
  %.sroa.0140.0.vec.extract = extractelement <2 x float> %i.hh, i64 0
  %.sroa.5141.8.vec.extract = extractelement <2 x float> %i.hi, i64 0
  %i.hj = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hk = fmul <2 x float> %i.fa, %i.hj
  %i.hl = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.hl, <2 x float> %i.hk)
  %i.hn = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ho = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> %i.hn, <2 x float> %i.hm)
  %i.hp = shufflevector <4 x float> %i.fc, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.hq = fadd <2 x float> %i.hp, %i.ho           ; 2 uses
  %foldExtExtBinop271 = fmul <2 x float> %i.z, %i.hh
  %i.hr = extractelement <2 x float> %foldExtExtBinop271, i64 1
  %i.hs = call float @llvm.fmuladd.f32(float %i.ew, float %.sroa.0140.0.vec.extract, float %i.hr)
  %i.ht = call noundef float @llvm.fmuladd.f32(float %.sroa.21.32.copyload, float %.sroa.5141.8.vec.extract, float %i.hs)
  %i.hu = extractelement <4 x float> %i.fc, i64 2
  %i.hv = fadd float %i.hu, %i.ht                 ; 2 uses
  %.sroa.3.12.vec.insert.i124 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hv, i64 0
  store <2 x float> %i.hq, ptr %9, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i124, ptr %i.ef, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  %i.hw = load <2 x float>, ptr %7, align 8, !tbaa !19
  %i.hx = fsub <2 x float> %i.hw, %i.hq           ; 3 uses
  %i.hy = load float, ptr %i.ad, align 8, !tbaa !19
  %i.hz = fsub float %i.hy, %i.hv                 ; 2 uses
  %.sroa.3.12.vec.insert.i129 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hz, i64 0
  store <2 x float> %i.hx, ptr %11, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i129, ptr %.sroa.45.0..sroa_idx, align 8, !tbaa !20
  %i.ia = load float, ptr %6, align 8, !tbaa !19  ; 3 uses
  %i.ib = load float, ptr %i.ei, align 4, !tbaa !19 ; 3 uses
  %i.ic = extractelement <2 x float> %i.hx, i64 1
  %i.id = fmul float %i.ib, %i.ic
  %i.ie = extractelement <2 x float> %i.hx, i64 0
  %i.if = call float @llvm.fmuladd.f32(float %i.ia, float %i.ie, float %i.id)
  %i.ig = load float, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !19 ; 3 uses
  %i.ih = call noundef float @llvm.fmuladd.f32(float %i.ig, float %i.hz, float %i.if) ; 2 uses
  %i.ii = fcmp ogt float %.050240258, 1.000000e+00
  br i1 %i.ii, label %.critedge61, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ij = fcmp ogt float %i.ih, 0.000000e+00
  br i1 %i.ij, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ik = fmul float %i.am, %i.ib
  %i.il = call float @llvm.fmuladd.f32(float %i.ia, float %26, float %i.ik)
  %i.im = call noundef float @llvm.fmuladd.f32(float %i.ig, float %i.an, float %i.il) ; 2 uses
  %i.in = fcmp ult float %i.im, f0xA8800000
  br i1 %i.in, label %bb.e, label %.critedge61

bb.e:                                             ; preds = %bb.d
  %i.io = fdiv float %i.ih, %i.im
  %i.ip = fsub float %.050240258, %i.io           ; 4 uses
  %i.iq = fsub float 1.000000e+00, %i.ip          ; 2 uses
  %i.ir = load float, ptr %i.d, align 4, !tbaa !19
  %i.is = load float, ptr %i.c, align 4, !tbaa !19
  %i.it = load <2 x float>, ptr %i.f, align 4, !tbaa !19
  %i.iu = load <2 x float>, ptr %i.e, align 4, !tbaa !19
  %i.iv = insertelement <2 x float> poison, float %i.ip, i64 0
  %i.iw = shufflevector <2 x float> %i.iv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ix = fmul <2 x float> %i.iw, %i.iu
  %i.iy = insertelement <2 x float> poison, float %i.iq, i64 0
  %i.iz = shufflevector <2 x float> %i.iy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ja = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iz, <2 x float> %i.it, <2 x float> %i.ix) ; 2 uses
  %i.jb = load float, ptr %i.p, align 4, !tbaa !19
  %i.jc = load float, ptr %i.o, align 4, !tbaa !19
  %i.jd = load <2 x float>, ptr %i.i, align 4, !tbaa !19
  %i.je = insertelement <4 x float> poison, float %i.ip, i64 0
  %i.jf = shufflevector <4 x float> %i.je, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jg = insertelement <4 x float> poison, float %i.jc, i64 2
  %i.jh = insertelement <4 x float> %i.jg, float %i.is, i64 3
  %i.ji = shufflevector <2 x float> %i.jd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jj = shufflevector <4 x float> %i.ji, <4 x float> %i.jh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.jk = fmul <4 x float> %i.jf, %i.jj
  %i.jl = load <2 x float>, ptr %i.j, align 4, !tbaa !19
  %i.jm = insertelement <4 x float> poison, float %i.iq, i64 0
  %i.jn = shufflevector <4 x float> %i.jm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jo = insertelement <4 x float> poison, float %i.jb, i64 2
  %i.jp = insertelement <4 x float> %i.jo, float %i.ir, i64 3
  %i.jq = shufflevector <2 x float> %i.jl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jr = shufflevector <4 x float> %i.jq, <4 x float> %i.jp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.js = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jn, <4 x float> %i.jr, <4 x float> %i.jk)
  %i.jt = extractelement <2 x float> %i.ja, i64 0
  %i.ju = extractelement <2 x float> %i.ja, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.9.1 = phi float [ %i.ig, %bb.e ], [ %.sroa.9.0233264, %bb.c ] ; 3 uses
  %.sroa.6153.1 = phi float [ %i.ib, %bb.e ], [ %.sroa.6153.0234263, %bb.c ] ; 3 uses
  %.sroa.0151.1 = phi float [ %i.ia, %bb.e ], [ %.sroa.0151.0235262, %bb.c ] ; 3 uses
  %.sroa.26219.1 = phi float [ %i.jt, %bb.e ], [ %.sroa.26219.0237260, %bb.c ]
  %.sroa.28220.1 = phi float [ %i.ju, %bb.e ], [ %.sroa.28220.0238259, %bb.c ]
  %.151 = phi float [ %i.ip, %bb.e ], [ %.050240258, %bb.c ] ; 3 uses
  %i.jv = phi <4 x float> [ %i.js, %bb.e ], [ %i.fc, %bb.c ]
  %i.jw = load ptr, ptr %i.a, align 8, !tbaa !15
  call void @_ZN22btVoronoiSimplexSolver9addVertexERK9btVector3S2_S2_(ptr noundef nonnull align 4 dereferenceable(353) %i.jw, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %9)
  %i.jx = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.jy = call noundef zeroext i1 @_ZN22btVoronoiSimplexSolver7closestER9btVector3(ptr noundef nonnull align 4 dereferenceable(353) %i.jx, ptr noundef nonnull align 4 dereferenceable(16) %6)
  br i1 %i.jy, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.jz = load float, ptr %6, align 8, !tbaa !19  ; 2 uses
  %i.ka = load float, ptr %i.ei, align 4, !tbaa !19 ; 2 uses
  %i.kb = fmul float %i.ka, %i.ka
  %i.kc = call float @llvm.fmuladd.f32(float %i.jz, float %i.jz, float %i.kb)
  %i.kd = load float, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !19 ; 2 uses
  %i.ke = call noundef float @llvm.fmuladd.f32(float %i.kd, float %i.kd, float %i.kc)
  %i.kf = fcmp ule float %i.ke, f0x38D1B717
  %i.kg = add nsw i32 %i.fb, -1
  %.not = icmp eq i32 %i.fb, 0
  %or.cond = select i1 %i.kf, i1 true, i1 %.not
  br i1 %or.cond, label %.critedge, label %bb.b

.critedge:                                        ; preds = %bb.f, %bb.g, %bb.a
  %.sroa.9.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.9.1, %bb.g ], [ %.sroa.9.1, %bb.f ] ; 3 uses
  %.sroa.6153.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.6153.1, %bb.g ], [ %.sroa.6153.1, %bb.f ] ; 3 uses
  %.sroa.0151.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.0151.1, %bb.g ], [ %.sroa.0151.1, %bb.f ] ; 3 uses
  %.050.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.151, %bb.g ], [ %.151, %bb.f ]
  %i.kh = getelementptr inbounds nuw i8, ptr %5, i64 168
  store float %.050.lcssa, ptr %i.kh, align 8, !tbaa !26
  %i.ki = fmul float %.sroa.6153.0.lcssa, %.sroa.6153.0.lcssa
  %i.kj = call float @llvm.fmuladd.f32(float %.sroa.0151.0.lcssa, float %.sroa.0151.0.lcssa, float %i.ki)
  %i.kk = call noundef float @llvm.fmuladd.f32(float %.sroa.9.0.lcssa, float %.sroa.9.0.lcssa, float %i.kj) ; 2 uses
  %i.kl = fcmp ult float %i.kk, f0x28800000
  br i1 %i.kl, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.kk)
  %i.km = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.kn = fmul float %.sroa.0151.0.lcssa, %i.km   ; 2 uses
  %i.ko = fmul float %.sroa.6153.0.lcssa, %i.km   ; 2 uses
  %i.kp = fmul float %.sroa.9.0.lcssa, %i.km      ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %i.kn, i64 0
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i, float %i.ko, i64 1
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kp, i64 0
  %i.kq = getelementptr inbounds nuw i8, ptr %5, i64 136
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i, ptr %i.kq, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 144
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !20
  br label %bb.j

bb.i:                                             ; preds = %.critedge
  %i.kr = getelementptr inbounds nuw i8, ptr %5, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kr, i8 0, i64 16, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ks = phi float [ 0.000000e+00, %bb.i ], [ %i.kp, %bb.h ]
  %i.kt = phi float [ 0.000000e+00, %bb.i ], [ %i.ko, %bb.h ]
  %i.ku = phi float [ 0.000000e+00, %bb.i ], [ %i.kn, %bb.h ]
  %i.kv = fmul float %i.am, %i.kt
  %i.kw = call float @llvm.fmuladd.f32(float %i.ku, float %26, float %i.kv)
  %i.kx = call noundef float @llvm.fmuladd.f32(float %i.ks, float %i.an, float %i.kw)
  %i.ky = getelementptr inbounds nuw i8, ptr %5, i64 184
  %i.kz = load float, ptr %i.ky, align 8, !tbaa !27
  %i.la = fneg float %i.kz
  %i.lb = fcmp ult float %i.kx, %i.la
  br i1 %i.lb, label %bb.k, label %.critedge61

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #8
  %i.lc = load ptr, ptr %i.a, align 8, !tbaa !15
  call void @_ZN22btVoronoiSimplexSolver14compute_pointsER9btVector3S1_(ptr noundef nonnull align 4 dereferenceable(353) %i.lc, ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %15)
  %i.ld = getelementptr inbounds nuw i8, ptr %5, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ld, ptr noundef nonnull align 4 dereferenceable(16) %15, i64 16, i1 false), !tbaa.struct !28
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
!10 = !{!"_ZTS12btConvexCast"}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTS22btVoronoiSimplexSolver", !11, i64 0}
!13 = !{!"p1 _ZTS13btConvexShape", !11, i64 0}
!14 = !{!"_ZTS22btSubsimplexConvexCast", !10, i64 0, !12, i64 8, !13, i64 16, !13, i64 24}
!15 = !{!14, !12, i64 8}
!16 = !{!14, !13, i64 16}
!17 = !{!14, !13, i64 24}
!18 = !{!"float", !5, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!5, !5, i64 0}
!21 = !{!"_ZTS11btMatrix3x3", !5, i64 0}
!22 = !{!"_ZTS9btVector3", !5, i64 0}
!23 = !{!"_ZTS11btTransform", !21, i64 0, !22, i64 48}
!24 = !{!"p1 _ZTS12btIDebugDraw", !11, i64 0}
!25 = !{!"_ZTSN12btConvexCast10CastResultE", !23, i64 8, !23, i64 72, !22, i64 136, !22, i64 152, !18, i64 168, !24, i64 176, !18, i64 184}
!26 = !{!25, !18, i64 168}
!27 = !{!25, !18, i64 184}
!28 = !{i64 0, i64 16, !20}
end_hunk_0
