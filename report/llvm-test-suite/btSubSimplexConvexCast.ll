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
  %6 = alloca %class.btVector3, align 16          ; 10 uses
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
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.k = load <2 x float>, ptr %i.i, align 4, !tbaa !19 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %.sroa.7201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.7201.0.copyload = load float, ptr %.sroa.7201.0..sroa_idx, align 4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.14208.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.14208.16.copyload = load float, ptr %.sroa.14208.16..sroa_idx, align 4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.19213.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.p = load <2 x float>, ptr %1, align 4        ; 4 uses
  %i.q = load <2 x float>, ptr %i.n, align 4      ; 4 uses
  %i.r = load <2 x float>, ptr %i.o, align 4      ; 4 uses
  %.sroa.21215.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.21215.32.copyload = load float, ptr %.sroa.21215.32..sroa_idx, align 4 ; 3 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.z = load <3 x float>, ptr %i.c, align 4, !tbaa !19
  %i.aa = load float, ptr %i.f, align 4, !tbaa !19
  %i.ab = load <3 x float>, ptr %i.d, align 4, !tbaa !19 ; 3 uses
  %i.ac = fsub <3 x float> %i.z, %i.ab
  %i.ad = load <3 x float>, ptr %i.h, align 4, !tbaa !19
  %i.ae = load <2 x float>, ptr %i.j, align 4, !tbaa !19 ; 2 uses
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
  %i.as = fmul float %.sroa.14208.16.copyload, %i.ar
  %i.at = tail call float @llvm.fmuladd.f32(float %.sroa.7201.0.copyload, float %i.ak, float %i.as)
  %i.au = extractelement <3 x float> %i.aj, i64 2
  %i.av = tail call noundef float @llvm.fmuladd.f32(float %.sroa.21215.32.copyload, float %i.au, float %i.at)
  %.sroa.3.12.vec.insert.i79 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.av, i64 0
  store <2 x float> %i.aq, ptr %8, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i79, ptr %i.aw, align 8
  %i.ax = load ptr, ptr %i.y, align 8, !tbaa !9
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call { <2 x float>, <2 x float> } %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 4 dereferenceable(16) %8) ; 2 uses
  %i.bb = extractvalue { <2 x float>, <2 x float> } %i.ba, 0 ; 4 uses
  %i.bc = extractvalue { <2 x float>, <2 x float> } %i.ba, 1 ; 2 uses
  %.sroa.0160.0.vec.extract = extractelement <2 x float> %i.bb, i64 0
  %.sroa.0160.4.vec.extract = extractelement <2 x float> %i.bb, i64 1
  %i.bd = load float, ptr %.sroa.7201.0..sroa_idx, align 4, !tbaa !19
  %.sroa.5161.8.vec.extract = extractelement <2 x float> %i.bc, i64 0
  %i.be = load float, ptr %.sroa.14208.16..sroa_idx, align 4, !tbaa !19
  %i.bf = load <2 x float>, ptr %1, align 4, !tbaa !19 ; 2 uses
  %i.bg = load <2 x float>, ptr %i.n, align 4, !tbaa !19 ; 2 uses
  %i.bh = shufflevector <2 x float> %i.bf, <2 x float> %i.bg, <2 x i32> <i32 1, i32 3>
  %i.bi = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bj = fmul <2 x float> %i.bh, %i.bi
  %i.bk = shufflevector <2 x float> %i.bf, <2 x float> %i.bg, <2 x i32> <i32 0, i32 2>
  %i.bl = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.bl, <2 x float> %i.bj)
  %i.bn = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bo = insertelement <2 x float> %i.bn, float %i.be, i64 1
  %i.bp = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.bp, <2 x float> %i.bm)
  %i.br = load <2 x float>, ptr %i.d, align 4, !tbaa !19
  %i.bs = fadd <2 x float> %i.br, %i.bq           ; 2 uses
  %i.bt = load float, ptr %i.o, align 4, !tbaa !19
  %i.bu = load float, ptr %.sroa.19213.32..sroa_idx, align 4, !tbaa !19
  %i.bv = fmul float %.sroa.0160.4.vec.extract, %i.bu
  %i.bw = call float @llvm.fmuladd.f32(float %i.bt, float %.sroa.0160.0.vec.extract, float %i.bv)
  %i.bx = load float, ptr %.sroa.21215.32..sroa_idx, align 4, !tbaa !19
  %i.by = call noundef float @llvm.fmuladd.f32(float %i.bx, float %.sroa.5161.8.vec.extract, float %i.bw)
  %i.bz = load float, ptr %i.g, align 4, !tbaa !19
  %i.ca = fadd float %i.bz, %i.by                 ; 2 uses
  %.sroa.3.12.vec.insert.i84 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ca, i64 0
  store <2 x float> %i.bs, ptr %7, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i84, ptr %i.cb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.ce = extractelement <3 x float> %i.ah, i64 1 ; 3 uses
  %i.cf = extractelement <3 x float> %i.ah, i64 2 ; 3 uses
  %i.cg = load <2 x float>, ptr %3, align 4, !tbaa !19
  %i.ch = load <2 x float>, ptr %i.s, align 4, !tbaa !19
  %i.ci = shufflevector <3 x float> %i.ah, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cj = fmul <2 x float> %i.ci, %i.ch
  %i.ck = shufflevector <3 x float> %i.ah, <3 x float> poison, <2 x i32> zeroinitializer
  %i.cl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.ck, <2 x float> %i.cj)
  %i.cm = load <2 x float>, ptr %i.t, align 4, !tbaa !19
  %i.cn = shufflevector <3 x float> %i.ah, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.co = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %i.cn, <2 x float> %i.cl)
  %i.cp = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !19
  %i.cq = load float, ptr %.sroa.14.16..sroa_idx, align 4, !tbaa !19
  %i.cr = fmul float %i.ce, %i.cq
  %i.cs = call float @llvm.fmuladd.f32(float %i.cp, float %i.ai, float %i.cr)
  %i.ct = load float, ptr %.sroa.21.32..sroa_idx, align 4, !tbaa !19
  %i.cu = call noundef float @llvm.fmuladd.f32(float %i.ct, float %i.cf, float %i.cs)
  %.sroa.3.12.vec.insert.i89 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cu, i64 0
  store <2 x float> %i.co, ptr %10, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i89, ptr %i.cv, align 8
  %i.cw = load ptr, ptr %i.cd, align 8, !tbaa !9
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 96
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = call { <2 x float>, <2 x float> } %i.cy(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 4 dereferenceable(16) %10) ; 2 uses
  %i.da = extractvalue { <2 x float>, <2 x float> } %i.cz, 0 ; 4 uses
  %i.db = extractvalue { <2 x float>, <2 x float> } %i.cz, 1 ; 2 uses
  %.sroa.0156.0.vec.extract = extractelement <2 x float> %i.da, i64 0
  %.sroa.0156.4.vec.extract = extractelement <2 x float> %i.da, i64 1
  %i.dc = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !19
  %.sroa.5157.8.vec.extract = extractelement <2 x float> %i.db, i64 0
  %i.dd = load float, ptr %.sroa.14.16..sroa_idx, align 4, !tbaa !19
  %i.de = load <2 x float>, ptr %3, align 4, !tbaa !19 ; 2 uses
  %i.df = load <2 x float>, ptr %i.s, align 4, !tbaa !19 ; 2 uses
  %i.dg = shufflevector <2 x float> %i.de, <2 x float> %i.df, <2 x i32> <i32 1, i32 3>
  %i.dh = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.di = fmul <2 x float> %i.dg, %i.dh
  %i.dj = shufflevector <2 x float> %i.de, <2 x float> %i.df, <2 x i32> <i32 0, i32 2>
  %i.dk = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.dk, <2 x float> %i.di)
  %i.dm = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.dn = insertelement <2 x float> %i.dm, float %i.dd, i64 1
  %i.do = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %i.do, <2 x float> %i.dl)
  %i.dq = load <2 x float>, ptr %i.i, align 4, !tbaa !19
  %i.dr = fadd <2 x float> %i.dq, %i.dp           ; 2 uses
  %i.ds = load float, ptr %i.t, align 4, !tbaa !19
  %i.dt = load float, ptr %.sroa.19.32..sroa_idx, align 4, !tbaa !19
  %i.du = fmul float %.sroa.0156.4.vec.extract, %i.dt
  %i.dv = call float @llvm.fmuladd.f32(float %i.ds, float %.sroa.0156.0.vec.extract, float %i.du)
  %i.dw = load float, ptr %.sroa.21.32..sroa_idx, align 4, !tbaa !19
  %i.dx = call noundef float @llvm.fmuladd.f32(float %i.dw, float %.sroa.5157.8.vec.extract, float %i.dv)
  %i.dy = load float, ptr %i.m, align 4, !tbaa !19
  %i.dz = fadd float %i.dy, %i.dx                 ; 2 uses
  %.sroa.3.12.vec.insert.i94 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dz, i64 0
  store <2 x float> %i.dr, ptr %9, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i94, ptr %i.ea, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  %i.eb = fsub <2 x float> %i.bs, %i.dr           ; 4 uses
  %i.ec = fsub float %i.ca, %i.dz                 ; 3 uses
  %.sroa.3.12.vec.insert.i99 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ec, i64 0
  store <2 x float> %i.eb, ptr %6, align 16
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store <2 x float> %.sroa.3.12.vec.insert.i99, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !20
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.eb, %i.eb
  %i.ee = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ef = extractelement <2 x float> %i.eb, i64 0 ; 2 uses
  %i.eg = call float @llvm.fmuladd.f32(float %i.ef, float %i.ef, float %i.ee)
  %i.eh = call noundef float @llvm.fmuladd.f32(float %i.ec, float %i.ec, float %i.eg)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.ei = fcmp ogt float %i.eh, f0x38D1B717
  br i1 %i.ei, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.ej = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.el = shufflevector <2 x float> %i.k, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.em = shufflevector <3 x float> %i.el, <3 x float> %i.ab, <4 x i32> <i32 0, i32 1, i32 poison, i32 3>
  %i.en = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.eo = shufflevector <4 x float> %i.em, <4 x float> %i.en, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ep = extractelement <3 x float> %i.ab, i64 2
  %i.eq = extractelement <2 x float> %i.r, i64 0
  %i.er = insertelement <2 x float> poison, float %.sroa.7201.0.copyload, i64 0
  %i.es = insertelement <2 x float> %i.er, float %.sroa.14208.16.copyload, i64 1
  %i.et = shufflevector <2 x float> %i.p, <2 x float> %i.q, <2 x i32> <i32 0, i32 2>
  %i.eu = shufflevector <2 x float> %i.p, <2 x float> %i.q, <2 x i32> <i32 1, i32 3>
  %i.ev = extractelement <2 x float> %i.w, i64 0
  %i.ew = insertelement <2 x float> poison, float %.sroa.7.0.copyload, i64 0
  %i.ex = insertelement <2 x float> %i.ew, float %.sroa.14.16.copyload, i64 1
  %i.ey = shufflevector <2 x float> %i.u, <2 x float> %i.v, <2 x i32> <i32 0, i32 2>
  %i.ez = shufflevector <2 x float> %i.u, <2 x float> %i.v, <2 x i32> <i32 1, i32 3>
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph
  %i.fa = phi i32 [ 31, %.lr.ph ], [ %i.js, %bb.g ] ; 2 uses
  %.sroa.9.0233264 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.9.1, %bb.g ]
  %.sroa.6153.0234263 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.6153.1, %bb.g ]
  %.sroa.0151.0235262 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.0151.1, %bb.g ]
  %.sroa.26219.0237260 = phi float [ %i.aa, %.lr.ph ], [ %.sroa.26219.1, %bb.g ] ; 2 uses
  %.sroa.28220.0238259 = phi float [ %i.ep, %.lr.ph ], [ %.sroa.28220.1, %bb.g ] ; 2 uses
  %.050240258 = phi float [ 0.000000e+00, %.lr.ph ], [ %.151, %bb.g ] ; 3 uses
  %i.fb = phi <4 x float> [ %i.eo, %.lr.ph ], [ %i.jh, %bb.g ] ; 4 uses
  %i.fc = load ptr, ptr %i.x, align 8, !tbaa !16  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  %16 = load <3 x float>, ptr %6, align 16, !tbaa !19
  %17 = fneg <3 x float> %16                      ; 6 uses
  %18 = shufflevector <3 x float> %17, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %19 = fmul <2 x float> %i.q, %18
  %i.fd = shufflevector <3 x float> %17, <3 x float> poison, <2 x i32> zeroinitializer
  %20 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.fd, <2 x float> %19)
  %21 = shufflevector <3 x float> %17, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fe = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %21, <2 x float> %20)
  %22 = extractelement <3 x float> %17, i64 1
  %23 = fmul float %.sroa.14208.16.copyload, %22
  %24 = extractelement <3 x float> %17, i64 0
  %25 = call float @llvm.fmuladd.f32(float %.sroa.7201.0.copyload, float %24, float %23)
  %26 = extractelement <3 x float> %17, i64 2
  %i.ff = call noundef float @llvm.fmuladd.f32(float %.sroa.21215.32.copyload, float %26, float %25)
  %.sroa.3.12.vec.insert.i109 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ff, i64 0
  store <2 x float> %i.fe, ptr %12, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i109, ptr %i.ej, align 8
  %i.fg = load ptr, ptr %i.fc, align 8, !tbaa !9
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 96
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = call { <2 x float>, <2 x float> } %i.fi(ptr noundef nonnull align 8 dereferenceable(24) %i.fc, ptr noundef nonnull align 4 dereferenceable(16) %12) ; 2 uses
  %i.fk = extractvalue { <2 x float>, <2 x float> } %i.fj, 0 ; 4 uses
  %i.fl = extractvalue { <2 x float>, <2 x float> } %i.fj, 1 ; 2 uses
  %.sroa.0144.0.vec.extract = extractelement <2 x float> %i.fk, i64 0
  %.sroa.5145.8.vec.extract = extractelement <2 x float> %i.fl, i64 0
  %i.fm = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fn = fmul <2 x float> %i.eu, %i.fm
  %i.fo = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.et, <2 x float> %i.fo, <2 x float> %i.fn)
  %i.fq = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.fq, <2 x float> %i.fp)
  %i.fs = shufflevector <4 x float> %i.fb, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.ft = insertelement <2 x float> %i.fs, float %.sroa.26219.0237260, i64 1
  %i.fu = fadd <2 x float> %i.ft, %i.fr
  %foldExtExtBinop269 = fmul <2 x float> %i.r, %i.fk
  %i.fv = extractelement <2 x float> %foldExtExtBinop269, i64 1
  %i.fw = call float @llvm.fmuladd.f32(float %i.eq, float %.sroa.0144.0.vec.extract, float %i.fv)
  %i.fx = call noundef float @llvm.fmuladd.f32(float %.sroa.21215.32.copyload, float %.sroa.5145.8.vec.extract, float %i.fw)
  %i.fy = fadd float %.sroa.28220.0238259, %i.fx
  %.sroa.3.12.vec.insert.i114 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fy, i64 0
  store <2 x float> %i.fu, ptr %7, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i114, ptr %i.cb, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  %i.fz = load ptr, ptr %i.cc, align 8, !tbaa !17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  %i.ga = load float, ptr %i.ed, align 4, !tbaa !19 ; 2 uses
  %i.gb = load float, ptr %6, align 16, !tbaa !19 ; 2 uses
  %i.gc = load float, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !19 ; 2 uses
  %i.gd = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.ge = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gf = fmul <2 x float> %i.v, %i.ge
  %i.gg = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.gh, <2 x float> %i.gf)
  %i.gj = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.gk = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.gk, <2 x float> %i.gi)
  %i.gm = fmul float %.sroa.14.16.copyload, %i.ga
  %i.gn = call float @llvm.fmuladd.f32(float %.sroa.7.0.copyload, float %i.gb, float %i.gm)
  %i.go = call noundef float @llvm.fmuladd.f32(float %.sroa.21.32.copyload, float %i.gc, float %i.gn)
  %.sroa.3.12.vec.insert.i119 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.go, i64 0
  store <2 x float> %i.gl, ptr %13, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i119, ptr %i.ek, align 8
  %i.gp = load ptr, ptr %i.fz, align 8, !tbaa !9
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 96
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = call { <2 x float>, <2 x float> } %i.gr(ptr noundef nonnull align 8 dereferenceable(24) %i.fz, ptr noundef nonnull align 4 dereferenceable(16) %13) ; 2 uses
  %i.gt = extractvalue { <2 x float>, <2 x float> } %i.gs, 0 ; 4 uses
  %i.gu = extractvalue { <2 x float>, <2 x float> } %i.gs, 1 ; 2 uses
  %.sroa.0140.0.vec.extract = extractelement <2 x float> %i.gt, i64 0
  %.sroa.5141.8.vec.extract = extractelement <2 x float> %i.gu, i64 0
  %i.gv = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gw = fmul <2 x float> %i.ez, %i.gv
  %i.gx = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> %i.gx, <2 x float> %i.gw)
  %i.gz = shufflevector <2 x float> %i.gu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ha = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ex, <2 x float> %i.gz, <2 x float> %i.gy)
  %i.hb = shufflevector <4 x float> %i.fb, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.hc = fadd <2 x float> %i.hb, %i.ha           ; 2 uses
  %foldExtExtBinop271 = fmul <2 x float> %i.w, %i.gt
  %i.hd = extractelement <2 x float> %foldExtExtBinop271, i64 1
  %i.he = call float @llvm.fmuladd.f32(float %i.ev, float %.sroa.0140.0.vec.extract, float %i.hd)
  %i.hf = call noundef float @llvm.fmuladd.f32(float %.sroa.21.32.copyload, float %.sroa.5141.8.vec.extract, float %i.he)
  %i.hg = extractelement <4 x float> %i.fb, i64 2
  %i.hh = fadd float %i.hg, %i.hf                 ; 2 uses
  %.sroa.3.12.vec.insert.i124 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hh, i64 0
  store <2 x float> %i.hc, ptr %9, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i124, ptr %i.ea, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  %i.hi = load <2 x float>, ptr %7, align 8, !tbaa !19
  %i.hj = fsub <2 x float> %i.hi, %i.hc           ; 3 uses
  %i.hk = load float, ptr %i.cb, align 8, !tbaa !19
  %i.hl = fsub float %i.hk, %i.hh                 ; 2 uses
  %.sroa.3.12.vec.insert.i129 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hl, i64 0
  store <2 x float> %i.hj, ptr %11, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i129, ptr %.sroa.45.0..sroa_idx, align 8, !tbaa !20
  %i.hm = load float, ptr %6, align 16, !tbaa !19 ; 3 uses
  %i.hn = load float, ptr %i.ed, align 4, !tbaa !19 ; 3 uses
  %i.ho = extractelement <2 x float> %i.hj, i64 1
  %i.hp = fmul float %i.hn, %i.ho
  %i.hq = extractelement <2 x float> %i.hj, i64 0
  %i.hr = call float @llvm.fmuladd.f32(float %i.hm, float %i.hq, float %i.hp)
  %i.hs = load float, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !19 ; 3 uses
  %i.ht = call noundef float @llvm.fmuladd.f32(float %i.hs, float %i.hl, float %i.hr) ; 2 uses
  %i.hu = fcmp ogt float %.050240258, 1.000000e+00
  br i1 %i.hu, label %.critedge61, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.hv = fcmp ogt float %i.ht, 0.000000e+00
  br i1 %i.hv, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.hw = fmul float %i.ce, %i.hn
  %i.hx = call float @llvm.fmuladd.f32(float %i.hm, float %i.ai, float %i.hw)
  %i.hy = call noundef float @llvm.fmuladd.f32(float %i.hs, float %i.cf, float %i.hx) ; 2 uses
  %i.hz = fcmp ult float %i.hy, f0xA8800000
  br i1 %i.hz, label %bb.e, label %.critedge61

bb.e:                                             ; preds = %bb.d
  %i.ia = fdiv float %i.ht, %i.hy
  %i.ib = fsub float %.050240258, %i.ia           ; 4 uses
  %i.ic = fsub float 1.000000e+00, %i.ib          ; 2 uses
  %i.id = load float, ptr %i.d, align 4, !tbaa !19
  %i.ie = load float, ptr %i.c, align 4, !tbaa !19
  %i.if = load <2 x float>, ptr %i.f, align 4, !tbaa !19
  %i.ig = load <2 x float>, ptr %i.e, align 4, !tbaa !19
  %i.ih = insertelement <2 x float> poison, float %i.ib, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = fmul <2 x float> %i.ii, %i.ig
  %i.ik = insertelement <2 x float> poison, float %i.ic, i64 0
  %i.il = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> zeroinitializer
  %i.im = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.il, <2 x float> %i.if, <2 x float> %i.ij) ; 2 uses
  %i.in = load float, ptr %i.m, align 4, !tbaa !19
  %i.io = load float, ptr %i.l, align 4, !tbaa !19
  %i.ip = load <2 x float>, ptr %i.h, align 4, !tbaa !19
  %i.iq = insertelement <4 x float> poison, float %i.ib, i64 0
  %i.ir = shufflevector <4 x float> %i.iq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.is = insertelement <4 x float> poison, float %i.io, i64 2
  %i.it = insertelement <4 x float> %i.is, float %i.ie, i64 3
  %i.iu = shufflevector <2 x float> %i.ip, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.iv = shufflevector <4 x float> %i.iu, <4 x float> %i.it, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.iw = fmul <4 x float> %i.ir, %i.iv
  %i.ix = load <2 x float>, ptr %i.i, align 4, !tbaa !19
  %i.iy = insertelement <4 x float> poison, float %i.ic, i64 0
  %i.iz = shufflevector <4 x float> %i.iy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ja = insertelement <4 x float> poison, float %i.in, i64 2
  %i.jb = insertelement <4 x float> %i.ja, float %i.id, i64 3
  %i.jc = shufflevector <2 x float> %i.ix, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jd = shufflevector <4 x float> %i.jc, <4 x float> %i.jb, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.je = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iz, <4 x float> %i.jd, <4 x float> %i.iw)
  %i.jf = extractelement <2 x float> %i.im, i64 0
  %i.jg = extractelement <2 x float> %i.im, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.9.1 = phi float [ %i.hs, %bb.e ], [ %.sroa.9.0233264, %bb.c ] ; 3 uses
  %.sroa.6153.1 = phi float [ %i.hn, %bb.e ], [ %.sroa.6153.0234263, %bb.c ] ; 3 uses
  %.sroa.0151.1 = phi float [ %i.hm, %bb.e ], [ %.sroa.0151.0235262, %bb.c ] ; 3 uses
  %.sroa.26219.1 = phi float [ %i.jf, %bb.e ], [ %.sroa.26219.0237260, %bb.c ]
  %.sroa.28220.1 = phi float [ %i.jg, %bb.e ], [ %.sroa.28220.0238259, %bb.c ]
  %.151 = phi float [ %i.ib, %bb.e ], [ %.050240258, %bb.c ] ; 3 uses
  %i.jh = phi <4 x float> [ %i.je, %bb.e ], [ %i.fb, %bb.c ]
  %i.ji = load ptr, ptr %i.a, align 8, !tbaa !15
  call void @_ZN22btVoronoiSimplexSolver9addVertexERK9btVector3S2_S2_(ptr noundef nonnull align 4 dereferenceable(353) %i.ji, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %9)
  %i.jj = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.jk = call noundef zeroext i1 @_ZN22btVoronoiSimplexSolver7closestER9btVector3(ptr noundef nonnull align 4 dereferenceable(353) %i.jj, ptr noundef nonnull align 4 dereferenceable(16) %6)
  br i1 %i.jk, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.jl = load float, ptr %6, align 16, !tbaa !19 ; 2 uses
  %i.jm = load float, ptr %i.ed, align 4, !tbaa !19 ; 2 uses
  %i.jn = fmul float %i.jm, %i.jm
  %i.jo = call float @llvm.fmuladd.f32(float %i.jl, float %i.jl, float %i.jn)
  %i.jp = load float, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !19 ; 2 uses
  %i.jq = call noundef float @llvm.fmuladd.f32(float %i.jp, float %i.jp, float %i.jo)
  %i.jr = fcmp ule float %i.jq, f0x38D1B717
  %i.js = add nsw i32 %i.fa, -1
  %.not = icmp eq i32 %i.fa, 0
  %or.cond = select i1 %i.jr, i1 true, i1 %.not
  br i1 %or.cond, label %.critedge, label %bb.b

.critedge:                                        ; preds = %bb.f, %bb.g, %bb.a
  %.sroa.9.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.9.1, %bb.g ], [ %.sroa.9.1, %bb.f ] ; 3 uses
  %.sroa.6153.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.6153.1, %bb.g ], [ %.sroa.6153.1, %bb.f ] ; 3 uses
  %.sroa.0151.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.0151.1, %bb.g ], [ %.sroa.0151.1, %bb.f ] ; 3 uses
  %.050.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.151, %bb.g ], [ %.151, %bb.f ]
  %i.jt = getelementptr inbounds nuw i8, ptr %5, i64 168
  store float %.050.lcssa, ptr %i.jt, align 8, !tbaa !26
  %i.ju = fmul float %.sroa.6153.0.lcssa, %.sroa.6153.0.lcssa
  %i.jv = call float @llvm.fmuladd.f32(float %.sroa.0151.0.lcssa, float %.sroa.0151.0.lcssa, float %i.ju)
  %i.jw = call noundef float @llvm.fmuladd.f32(float %.sroa.9.0.lcssa, float %.sroa.9.0.lcssa, float %i.jv) ; 2 uses
  %i.jx = fcmp ult float %i.jw, f0x28800000
  br i1 %i.jx, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.jw)
  %i.jy = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.jz = fmul float %.sroa.0151.0.lcssa, %i.jy   ; 2 uses
  %i.ka = fmul float %.sroa.6153.0.lcssa, %i.jy   ; 2 uses
  %i.kb = fmul float %.sroa.9.0.lcssa, %i.jy      ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %i.jz, i64 0
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i, float %i.ka, i64 1
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kb, i64 0
  %i.kc = getelementptr inbounds nuw i8, ptr %5, i64 136
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i, ptr %i.kc, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 144
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !20
  br label %bb.j

bb.i:                                             ; preds = %.critedge
  %i.kd = getelementptr inbounds nuw i8, ptr %5, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kd, i8 0, i64 16, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ke = phi float [ 0.000000e+00, %bb.i ], [ %i.kb, %bb.h ]
  %i.kf = phi float [ 0.000000e+00, %bb.i ], [ %i.ka, %bb.h ]
  %i.kg = phi float [ 0.000000e+00, %bb.i ], [ %i.jz, %bb.h ]
  %i.kh = fmul float %i.ce, %i.kf
  %i.ki = call float @llvm.fmuladd.f32(float %i.kg, float %i.ai, float %i.kh)
  %i.kj = call noundef float @llvm.fmuladd.f32(float %i.ke, float %i.cf, float %i.ki)
  %i.kk = getelementptr inbounds nuw i8, ptr %5, i64 184
  %i.kl = load float, ptr %i.kk, align 8, !tbaa !27
  %i.km = fneg float %i.kl
  %i.kn = fcmp ult float %i.kj, %i.km
  br i1 %i.kn, label %bb.k, label %.critedge61

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #8
  %i.ko = load ptr, ptr %i.a, align 8, !tbaa !15
  call void @_ZN22btVoronoiSimplexSolver14compute_pointsER9btVector3S1_(ptr noundef nonnull align 4 dereferenceable(353) %i.ko, ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %15)
  %i.kp = getelementptr inbounds nuw i8, ptr %5, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kp, ptr noundef nonnull align 4 dereferenceable(16) %15, i64 16, i1 false), !tbaa.struct !28
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
