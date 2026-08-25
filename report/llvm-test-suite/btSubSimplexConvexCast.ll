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
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.n = load float, ptr %i.m, align 4, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !18 ; 2 uses
  %i.q = fsub float %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.t = load float, ptr %i.r, align 4, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.w = load <2 x float>, ptr %i.s, align 4, !tbaa !18 ; 2 uses
  %i.x = extractelement <2 x float> %i.w, i64 0
  %i.y = fsub float %i.t, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.ab = load <2 x float>, ptr %i.u, align 4, !tbaa !18
  %i.ac = load <2 x float>, ptr %i.v, align 4, !tbaa !18 ; 2 uses
  %i.ad = fsub <2 x float> %i.ab, %i.ac           ; 2 uses
  %.sroa.7201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.7201.0.copyload = load float, ptr %.sroa.7201.0..sroa_idx, align 4 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.14208.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.14208.16.copyload = load float, ptr %.sroa.14208.16..sroa_idx, align 4 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.19213.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ag = load <2 x float>, ptr %1, align 4       ; 4 uses
  %i.ah = load <2 x float>, ptr %i.ae, align 4    ; 4 uses
  %i.ai = load <2 x float>, ptr %i.af, align 4    ; 4 uses
  %.sroa.21215.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.21215.32.copyload = load float, ptr %.sroa.21215.32..sroa_idx, align 4 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %.sroa.14.16..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %.sroa.14.16.copyload = load float, ptr %.sroa.14.16..sroa_idx, align 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %.sroa.19.32..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.al = load <2 x float>, ptr %3, align 4       ; 3 uses
  %i.am = load <2 x float>, ptr %i.aj, align 4    ; 3 uses
  %i.an = load <2 x float>, ptr %i.ak, align 4    ; 3 uses
  %.sroa.21.32..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %.sroa.21.32.copyload = load float, ptr %.sroa.21.32..sroa_idx, align 4 ; 2 uses
  %i.ao = fsub float %i.g, %i.y                   ; 5 uses
  %i.ap = extractelement <2 x float> %i.ad, i64 0
  %i.aq = fsub float %i.l, %i.ap                  ; 5 uses
  %i.ar = extractelement <2 x float> %i.ad, i64 1
  %i.as = fsub float %i.q, %i.ar                  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.av = fneg float %i.ao                        ; 2 uses
  %i.aw = fneg float %i.aq                        ; 2 uses
  %i.ax = fneg float %i.as                        ; 2 uses
  %i.ay = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fmul <2 x float> %i.ah, %i.az
  %i.bb = insertelement <2 x float> poison, float %i.av, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.bc, <2 x float> %i.ba)
  %i.be = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.bf, <2 x float> %i.bd)
  %i.bh = fmul float %.sroa.14208.16.copyload, %i.aw
  %i.bi = tail call float @llvm.fmuladd.f32(float %.sroa.7201.0.copyload, float %i.av, float %i.bh)
  %i.bj = tail call noundef float @llvm.fmuladd.f32(float %.sroa.21215.32.copyload, float %i.ax, float %i.bi)
  %.sroa.3.12.vec.insert.i79 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bj, i64 0
  store <2 x float> %i.bg, ptr %8, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i79, ptr %i.bk, align 8
  %i.bl = load ptr, ptr %i.au, align 8, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call { <2 x float>, <2 x float> } %i.bn(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 4 dereferenceable(16) %8) ; 2 uses
  %i.bp = extractvalue { <2 x float>, <2 x float> } %i.bo, 0 ; 4 uses
  %i.bq = extractvalue { <2 x float>, <2 x float> } %i.bo, 1 ; 2 uses
  %.sroa.0160.0.vec.extract = extractelement <2 x float> %i.bp, i64 0
  %.sroa.0160.4.vec.extract = extractelement <2 x float> %i.bp, i64 1
  %16 = load <4 x float>, ptr %.sroa.7201.0..sroa_idx, align 4
  %17 = shufflevector <4 x float> %16, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.5161.8.vec.extract = extractelement <2 x float> %i.bq, i64 0
  %i.br = load float, ptr %.sroa.14208.16..sroa_idx, align 4, !tbaa !18
  %i.bs = load <2 x float>, ptr %1, align 4, !tbaa !18 ; 2 uses
  %i.bt = load <2 x float>, ptr %i.ae, align 4, !tbaa !18 ; 2 uses
  %i.bu = shufflevector <2 x float> %i.bs, <2 x float> %i.bt, <2 x i32> <i32 1, i32 3>
  %i.bv = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bw = fmul <2 x float> %i.bu, %i.bv
  %i.bx = shufflevector <2 x float> %i.bs, <2 x float> %i.bt, <2 x i32> <i32 0, i32 2>
  %i.by = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.by, <2 x float> %i.bw)
  %i.ca = insertelement <2 x float> %17, float %i.br, i64 1
  %i.cb = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.cb, <2 x float> %i.bz)
  %i.cd = load <2 x float>, ptr %i.d, align 4, !tbaa !18
  %i.ce = fadd <2 x float> %i.cd, %i.cc           ; 2 uses
  %i.cf = load float, ptr %i.af, align 4, !tbaa !18
  %i.cg = load float, ptr %.sroa.19213.32..sroa_idx, align 4, !tbaa !18
  %i.ch = fmul float %.sroa.0160.4.vec.extract, %i.cg
  %i.ci = call float @llvm.fmuladd.f32(float %i.cf, float %.sroa.0160.0.vec.extract, float %i.ch)
  %i.cj = load float, ptr %.sroa.21215.32..sroa_idx, align 4, !tbaa !18
  %i.ck = call noundef float @llvm.fmuladd.f32(float %i.cj, float %.sroa.5161.8.vec.extract, float %i.ci)
  %i.cl = load float, ptr %i.o, align 4, !tbaa !18
  %i.cm = fadd float %i.cl, %i.ck                 ; 2 uses
  %.sroa.3.12.vec.insert.i84 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cm, i64 0
  store <2 x float> %i.ce, ptr %7, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i84, ptr %i.cn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.cq = load <2 x float>, ptr %3, align 4, !tbaa !18
  %i.cr = load <2 x float>, ptr %i.aj, align 4, !tbaa !18
  %i.cs = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = fmul <2 x float> %i.ct, %i.cr
  %i.cv = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> %i.cw, <2 x float> %i.cu)
  %i.cy = load <2 x float>, ptr %i.ak, align 4, !tbaa !18
  %i.cz = insertelement <2 x float> poison, float %i.as, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.da, <2 x float> %i.cx)
  %i.dc = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !18
  %i.dd = load float, ptr %.sroa.14.16..sroa_idx, align 4, !tbaa !18
  %i.de = fmul float %i.aq, %i.dd
  %i.df = call float @llvm.fmuladd.f32(float %i.dc, float %i.ao, float %i.de)
  %i.dg = load float, ptr %.sroa.21.32..sroa_idx, align 4, !tbaa !18
  %i.dh = call noundef float @llvm.fmuladd.f32(float %i.dg, float %i.as, float %i.df)
  %.sroa.3.12.vec.insert.i89 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dh, i64 0
  store <2 x float> %i.db, ptr %10, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i89, ptr %i.di, align 8
  %i.dj = load ptr, ptr %i.cp, align 8, !tbaa !8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 96
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = call { <2 x float>, <2 x float> } %i.dl(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 4 dereferenceable(16) %10) ; 2 uses
  %i.dn = extractvalue { <2 x float>, <2 x float> } %i.dm, 0 ; 4 uses
  %i.do = extractvalue { <2 x float>, <2 x float> } %i.dm, 1 ; 2 uses
  %.sroa.0156.0.vec.extract = extractelement <2 x float> %i.dn, i64 0
  %.sroa.0156.4.vec.extract = extractelement <2 x float> %i.dn, i64 1
  %18 = load <4 x float>, ptr %.sroa.7.0..sroa_idx, align 4
  %19 = shufflevector <4 x float> %18, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.5157.8.vec.extract = extractelement <2 x float> %i.do, i64 0
  %i.dp = load float, ptr %.sroa.14.16..sroa_idx, align 4, !tbaa !18
  %i.dq = load <2 x float>, ptr %3, align 4, !tbaa !18 ; 2 uses
  %i.dr = load <2 x float>, ptr %i.aj, align 4, !tbaa !18 ; 2 uses
  %i.ds = shufflevector <2 x float> %i.dq, <2 x float> %i.dr, <2 x i32> <i32 1, i32 3>
  %i.dt = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.du = fmul <2 x float> %i.ds, %i.dt
  %i.dv = shufflevector <2 x float> %i.dq, <2 x float> %i.dr, <2 x i32> <i32 0, i32 2>
  %i.dw = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dv, <2 x float> %i.dw, <2 x float> %i.du)
  %i.dy = insertelement <2 x float> %19, float %i.dp, i64 1
  %i.dz = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> %i.dz, <2 x float> %i.dx)
  %i.eb = load <2 x float>, ptr %i.s, align 4, !tbaa !18
  %i.ec = fadd <2 x float> %i.eb, %i.ea           ; 2 uses
  %i.ed = load float, ptr %i.ak, align 4, !tbaa !18
  %i.ee = load float, ptr %.sroa.19.32..sroa_idx, align 4, !tbaa !18
  %i.ef = fmul float %.sroa.0156.4.vec.extract, %i.ee
  %i.eg = call float @llvm.fmuladd.f32(float %i.ed, float %.sroa.0156.0.vec.extract, float %i.ef)
  %i.eh = load float, ptr %.sroa.21.32..sroa_idx, align 4, !tbaa !18
  %i.ei = call noundef float @llvm.fmuladd.f32(float %i.eh, float %.sroa.5157.8.vec.extract, float %i.eg)
  %i.ej = load float, ptr %i.aa, align 4, !tbaa !18
  %i.ek = fadd float %i.ej, %i.ei                 ; 2 uses
  %.sroa.3.12.vec.insert.i94 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ek, i64 0
  store <2 x float> %i.ec, ptr %9, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i94, ptr %i.el, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  %i.em = fsub <2 x float> %i.ce, %i.ec           ; 4 uses
  %i.en = fsub float %i.cm, %i.ek                 ; 3 uses
  %.sroa.3.12.vec.insert.i99 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.en, i64 0
  store <2 x float> %i.em, ptr %6, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store <2 x float> %.sroa.3.12.vec.insert.i99, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !20
  %i.eo = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.em, %i.em
  %i.ep = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.eq = extractelement <2 x float> %i.em, i64 0 ; 2 uses
  %i.er = call float @llvm.fmuladd.f32(float %i.eq, float %i.eq, float %i.ep)
  %i.es = call noundef float @llvm.fmuladd.f32(float %i.en, float %i.en, float %i.er)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.et = fcmp ogt float %i.es, f0x38D1B717
  br i1 %i.et, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.eu = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ew = shufflevector <2 x float> %i.w, <2 x float> %i.ac, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %i.ex = insertelement <4 x float> %i.ew, float %i.f, i64 3
  %i.ey = extractelement <2 x float> %i.ai, i64 0
  %i.ez = insertelement <2 x float> poison, float %.sroa.7201.0.copyload, i64 0
  %i.fa = insertelement <2 x float> %i.ez, float %.sroa.14208.16.copyload, i64 1
  %i.fb = shufflevector <2 x float> %i.ag, <2 x float> %i.ah, <2 x i32> <i32 0, i32 2>
  %i.fc = shufflevector <2 x float> %i.ag, <2 x float> %i.ah, <2 x i32> <i32 1, i32 3>
  %i.fd = extractelement <2 x float> %i.an, i64 0
  %i.fe = insertelement <2 x float> poison, float %.sroa.7.0.copyload, i64 0
  %i.ff = insertelement <2 x float> %i.fe, float %.sroa.14.16.copyload, i64 1
  %i.fg = shufflevector <2 x float> %i.al, <2 x float> %i.am, <2 x i32> <i32 0, i32 2>
  %i.fh = shufflevector <2 x float> %i.al, <2 x float> %i.am, <2 x i32> <i32 1, i32 3>
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph
  %i.fi = phi i32 [ 31, %.lr.ph ], [ %i.kl, %bb.g ] ; 2 uses
  %.sroa.9.0233264 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.9.1, %bb.g ]
  %.sroa.6153.0234263 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.6153.1, %bb.g ]
  %.sroa.0151.0235262 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.0151.1, %bb.g ]
  %.sroa.26219.0237260 = phi float [ %i.k, %.lr.ph ], [ %.sroa.26219.1, %bb.g ] ; 2 uses
  %.sroa.28220.0238259 = phi float [ %i.p, %.lr.ph ], [ %.sroa.28220.1, %bb.g ] ; 2 uses
  %.050240258 = phi float [ 0.000000e+00, %.lr.ph ], [ %.151, %bb.g ] ; 3 uses
  %i.fj = phi <4 x float> [ %i.ex, %.lr.ph ], [ %i.ka, %bb.g ] ; 4 uses
  %i.fk = load ptr, ptr %i.at, align 8, !tbaa !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  %i.fl = load float, ptr %6, align 8, !tbaa !18
  %i.fm = fneg float %i.fl                        ; 2 uses
  %i.fn = load float, ptr %i.eo, align 4, !tbaa !18
  %i.fo = fneg float %i.fn                        ; 2 uses
  %i.fp = load float, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !18
  %i.fq = fneg float %i.fp                        ; 2 uses
  %i.fr = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.fs = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ft = fmul <2 x float> %i.ah, %i.fs
  %i.fu = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.fv = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.fv, <2 x float> %i.ft)
  %i.fx = insertelement <2 x float> poison, float %i.fq, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.fy, <2 x float> %i.fw)
  %i.ga = fmul float %.sroa.14208.16.copyload, %i.fo
  %i.gb = call float @llvm.fmuladd.f32(float %.sroa.7201.0.copyload, float %i.fm, float %i.ga)
  %i.gc = call noundef float @llvm.fmuladd.f32(float %.sroa.21215.32.copyload, float %i.fq, float %i.gb)
  %.sroa.3.12.vec.insert.i109 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gc, i64 0
  store <2 x float> %i.fz, ptr %12, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i109, ptr %i.eu, align 8
  %i.gd = load ptr, ptr %i.fk, align 8, !tbaa !8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 96
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = call { <2 x float>, <2 x float> } %i.gf(ptr noundef nonnull align 8 dereferenceable(24) %i.fk, ptr noundef nonnull align 4 dereferenceable(16) %12) ; 2 uses
  %i.gh = extractvalue { <2 x float>, <2 x float> } %i.gg, 0 ; 4 uses
  %i.gi = extractvalue { <2 x float>, <2 x float> } %i.gg, 1 ; 2 uses
  %.sroa.0144.0.vec.extract = extractelement <2 x float> %i.gh, i64 0
  %.sroa.5145.8.vec.extract = extractelement <2 x float> %i.gi, i64 0
  %i.gj = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gk = fmul <2 x float> %i.fc, %i.gj
  %i.gl = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fb, <2 x float> %i.gl, <2 x float> %i.gk)
  %i.gn = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.go = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fa, <2 x float> %i.gn, <2 x float> %i.gm)
  %i.gp = shufflevector <4 x float> %i.fj, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.gq = insertelement <2 x float> %i.gp, float %.sroa.26219.0237260, i64 1
  %i.gr = fadd <2 x float> %i.gq, %i.go
  %foldExtExtBinop269 = fmul <2 x float> %i.ai, %i.gh
  %i.gs = extractelement <2 x float> %foldExtExtBinop269, i64 1
  %i.gt = call float @llvm.fmuladd.f32(float %i.ey, float %.sroa.0144.0.vec.extract, float %i.gs)
  %i.gu = call noundef float @llvm.fmuladd.f32(float %.sroa.21215.32.copyload, float %.sroa.5145.8.vec.extract, float %i.gt)
  %i.gv = fadd float %.sroa.28220.0238259, %i.gu
  %.sroa.3.12.vec.insert.i114 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gv, i64 0
  store <2 x float> %i.gr, ptr %7, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i114, ptr %i.cn, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  %i.gw = load ptr, ptr %i.co, align 8, !tbaa !17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  %i.gx = load float, ptr %6, align 8, !tbaa !18  ; 2 uses
  %i.gy = load float, ptr %i.eo, align 4, !tbaa !18 ; 2 uses
  %i.gz = load float, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !18 ; 2 uses
  %i.ha = insertelement <2 x float> poison, float %i.gy, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = fmul <2 x float> %i.am, %i.hb
  %i.hd = insertelement <2 x float> poison, float %i.gx, i64 0
  %i.he = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.he, <2 x float> %i.hc)
  %i.hg = insertelement <2 x float> poison, float %i.gz, i64 0
  %i.hh = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.hh, <2 x float> %i.hf)
  %i.hj = fmul float %.sroa.14.16.copyload, %i.gy
  %i.hk = call float @llvm.fmuladd.f32(float %.sroa.7.0.copyload, float %i.gx, float %i.hj)
  %i.hl = call noundef float @llvm.fmuladd.f32(float %.sroa.21.32.copyload, float %i.gz, float %i.hk)
  %.sroa.3.12.vec.insert.i119 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hl, i64 0
  store <2 x float> %i.hi, ptr %13, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i119, ptr %i.ev, align 8
  %i.hm = load ptr, ptr %i.gw, align 8, !tbaa !8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 96
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = call { <2 x float>, <2 x float> } %i.ho(ptr noundef nonnull align 8 dereferenceable(24) %i.gw, ptr noundef nonnull align 4 dereferenceable(16) %13) ; 2 uses
  %i.hq = extractvalue { <2 x float>, <2 x float> } %i.hp, 0 ; 4 uses
  %i.hr = extractvalue { <2 x float>, <2 x float> } %i.hp, 1 ; 2 uses
  %.sroa.0140.0.vec.extract = extractelement <2 x float> %i.hq, i64 0
  %.sroa.5141.8.vec.extract = extractelement <2 x float> %i.hr, i64 0
  %i.hs = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ht = fmul <2 x float> %i.fh, %i.hs
  %i.hu = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fg, <2 x float> %i.hu, <2 x float> %i.ht)
  %i.hw = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ff, <2 x float> %i.hw, <2 x float> %i.hv)
  %i.hy = shufflevector <4 x float> %i.fj, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.hz = fadd <2 x float> %i.hy, %i.hx           ; 2 uses
  %foldExtExtBinop271 = fmul <2 x float> %i.an, %i.hq
  %i.ia = extractelement <2 x float> %foldExtExtBinop271, i64 1
  %i.ib = call float @llvm.fmuladd.f32(float %i.fd, float %.sroa.0140.0.vec.extract, float %i.ia)
  %i.ic = call noundef float @llvm.fmuladd.f32(float %.sroa.21.32.copyload, float %.sroa.5141.8.vec.extract, float %i.ib)
  %i.id = extractelement <4 x float> %i.fj, i64 2
  %i.ie = fadd float %i.id, %i.ic                 ; 2 uses
  %.sroa.3.12.vec.insert.i124 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ie, i64 0
  store <2 x float> %i.hz, ptr %9, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i124, ptr %i.el, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  %i.if = load <2 x float>, ptr %7, align 8, !tbaa !18
  %i.ig = fsub <2 x float> %i.if, %i.hz           ; 3 uses
  %i.ih = load float, ptr %i.cn, align 8, !tbaa !18
  %i.ii = fsub float %i.ih, %i.ie                 ; 2 uses
  %.sroa.3.12.vec.insert.i129 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ii, i64 0
  store <2 x float> %i.ig, ptr %11, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i129, ptr %.sroa.45.0..sroa_idx, align 8, !tbaa !20
  %i.ij = load float, ptr %6, align 8, !tbaa !18  ; 3 uses
  %i.ik = load float, ptr %i.eo, align 4, !tbaa !18 ; 3 uses
  %i.il = extractelement <2 x float> %i.ig, i64 1
  %i.im = fmul float %i.ik, %i.il
  %i.in = extractelement <2 x float> %i.ig, i64 0
  %i.io = call float @llvm.fmuladd.f32(float %i.ij, float %i.in, float %i.im)
  %i.ip = load float, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !18 ; 3 uses
  %i.iq = call noundef float @llvm.fmuladd.f32(float %i.ip, float %i.ii, float %i.io) ; 2 uses
  %i.ir = fcmp ogt float %.050240258, 1.000000e+00
  br i1 %i.ir, label %.critedge61, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.is = fcmp ogt float %i.iq, 0.000000e+00
  br i1 %i.is, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.it = fmul float %i.aq, %i.ik
  %i.iu = call float @llvm.fmuladd.f32(float %i.ij, float %i.ao, float %i.it)
  %i.iv = call noundef float @llvm.fmuladd.f32(float %i.ip, float %i.as, float %i.iu) ; 2 uses
  %i.iw = fcmp ult float %i.iv, f0xA8800000
  br i1 %i.iw, label %bb.e, label %.critedge61

bb.e:                                             ; preds = %bb.d
  %i.ix = fdiv float %i.iq, %i.iv
  %i.iy = fsub float %.050240258, %i.ix           ; 4 uses
  %i.iz = fsub float 1.000000e+00, %i.iy          ; 2 uses
  %i.ja = load float, ptr %i.d, align 4, !tbaa !18
  %i.jb = load float, ptr %i.c, align 4, !tbaa !18
  %i.jc = load <2 x float>, ptr %i.j, align 4, !tbaa !18
  %i.jd = load <2 x float>, ptr %i.h, align 4, !tbaa !18
  %i.je = insertelement <2 x float> poison, float %i.iy, i64 0
  %i.jf = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jg = fmul <2 x float> %i.jf, %i.jd
  %i.jh = insertelement <2 x float> poison, float %i.iz, i64 0
  %i.ji = shufflevector <2 x float> %i.jh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ji, <2 x float> %i.jc, <2 x float> %i.jg) ; 2 uses
  %i.jk = load float, ptr %i.aa, align 4, !tbaa !18
  %i.jl = load float, ptr %i.z, align 4, !tbaa !18
  %20 = load <4 x float>, ptr %i.r, align 4
  %i.jm = insertelement <4 x float> poison, float %i.iy, i64 0
  %i.jn = shufflevector <4 x float> %i.jm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jo = insertelement <4 x float> poison, float %i.jl, i64 2
  %i.jp = insertelement <4 x float> %i.jo, float %i.jb, i64 3
  %i.jq = shufflevector <4 x float> %20, <4 x float> %i.jp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.jr = fmul <4 x float> %i.jn, %i.jq
  %21 = load <4 x float>, ptr %i.s, align 4
  %i.js = insertelement <4 x float> poison, float %i.iz, i64 0
  %i.jt = shufflevector <4 x float> %i.js, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ju = insertelement <4 x float> poison, float %i.jk, i64 2
  %i.jv = insertelement <4 x float> %i.ju, float %i.ja, i64 3
  %i.jw = shufflevector <4 x float> %21, <4 x float> %i.jv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.jx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jt, <4 x float> %i.jw, <4 x float> %i.jr)
  %i.jy = extractelement <2 x float> %i.jj, i64 0
  %i.jz = extractelement <2 x float> %i.jj, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.9.1 = phi float [ %i.ip, %bb.e ], [ %.sroa.9.0233264, %bb.c ] ; 3 uses
  %.sroa.6153.1 = phi float [ %i.ik, %bb.e ], [ %.sroa.6153.0234263, %bb.c ] ; 3 uses
  %.sroa.0151.1 = phi float [ %i.ij, %bb.e ], [ %.sroa.0151.0235262, %bb.c ] ; 3 uses
  %.sroa.26219.1 = phi float [ %i.jy, %bb.e ], [ %.sroa.26219.0237260, %bb.c ]
  %.sroa.28220.1 = phi float [ %i.jz, %bb.e ], [ %.sroa.28220.0238259, %bb.c ]
  %.151 = phi float [ %i.iy, %bb.e ], [ %.050240258, %bb.c ] ; 3 uses
  %i.ka = phi <4 x float> [ %i.jx, %bb.e ], [ %i.fj, %bb.c ]
  %i.kb = load ptr, ptr %i.a, align 8, !tbaa !10
  call void @_ZN22btVoronoiSimplexSolver9addVertexERK9btVector3S2_S2_(ptr noundef nonnull align 4 dereferenceable(353) %i.kb, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %9)
  %i.kc = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.kd = call noundef zeroext i1 @_ZN22btVoronoiSimplexSolver7closestER9btVector3(ptr noundef nonnull align 4 dereferenceable(353) %i.kc, ptr noundef nonnull align 4 dereferenceable(16) %6)
  br i1 %i.kd, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ke = load float, ptr %6, align 8, !tbaa !18  ; 2 uses
  %i.kf = load float, ptr %i.eo, align 4, !tbaa !18 ; 2 uses
  %i.kg = fmul float %i.kf, %i.kf
  %i.kh = call float @llvm.fmuladd.f32(float %i.ke, float %i.ke, float %i.kg)
  %i.ki = load float, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !18 ; 2 uses
  %i.kj = call noundef float @llvm.fmuladd.f32(float %i.ki, float %i.ki, float %i.kh)
  %i.kk = fcmp ule float %i.kj, f0x38D1B717
  %i.kl = add nsw i32 %i.fi, -1
  %.not = icmp eq i32 %i.fi, 0
  %or.cond = select i1 %i.kk, i1 true, i1 %.not
  br i1 %or.cond, label %.critedge, label %bb.b

.critedge:                                        ; preds = %bb.f, %bb.g, %bb.a
  %.sroa.9.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.9.1, %bb.g ], [ %.sroa.9.1, %bb.f ] ; 3 uses
  %.sroa.6153.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.6153.1, %bb.g ], [ %.sroa.6153.1, %bb.f ] ; 3 uses
  %.sroa.0151.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.0151.1, %bb.g ], [ %.sroa.0151.1, %bb.f ] ; 3 uses
  %.050.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.151, %bb.g ], [ %.151, %bb.f ]
  %i.km = getelementptr inbounds nuw i8, ptr %5, i64 168
  store float %.050.lcssa, ptr %i.km, align 8, !tbaa !21
  %i.kn = fmul float %.sroa.6153.0.lcssa, %.sroa.6153.0.lcssa
  %i.ko = call float @llvm.fmuladd.f32(float %.sroa.0151.0.lcssa, float %.sroa.0151.0.lcssa, float %i.kn)
  %i.kp = call noundef float @llvm.fmuladd.f32(float %.sroa.9.0.lcssa, float %.sroa.9.0.lcssa, float %i.ko) ; 2 uses
  %i.kq = fcmp ult float %i.kp, f0x28800000
  br i1 %i.kq, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.kp)
  %i.kr = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.ks = fmul float %.sroa.0151.0.lcssa, %i.kr   ; 2 uses
  %i.kt = fmul float %.sroa.6153.0.lcssa, %i.kr   ; 2 uses
  %i.ku = fmul float %.sroa.9.0.lcssa, %i.kr      ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %i.ks, i64 0
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i, float %i.kt, i64 1
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ku, i64 0
  %i.kv = getelementptr inbounds nuw i8, ptr %5, i64 136
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i, ptr %i.kv, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 144
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !20
  br label %bb.j

bb.i:                                             ; preds = %.critedge
  %i.kw = getelementptr inbounds nuw i8, ptr %5, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kw, i8 0, i64 16, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.kx = phi float [ 0.000000e+00, %bb.i ], [ %i.ku, %bb.h ]
  %i.ky = phi float [ 0.000000e+00, %bb.i ], [ %i.kt, %bb.h ]
  %i.kz = phi float [ 0.000000e+00, %bb.i ], [ %i.ks, %bb.h ]
  %i.la = fmul float %i.aq, %i.ky
  %i.lb = call float @llvm.fmuladd.f32(float %i.kz, float %i.ao, float %i.la)
  %i.lc = call noundef float @llvm.fmuladd.f32(float %i.kx, float %i.as, float %i.lb)
  %i.ld = getelementptr inbounds nuw i8, ptr %5, i64 184
  %i.le = load float, ptr %i.ld, align 8, !tbaa !27
  %i.lf = fneg float %i.le
  %i.lg = fcmp ult float %i.lc, %i.lf
  br i1 %i.lg, label %bb.k, label %.critedge61

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #8
  %i.lh = load ptr, ptr %i.a, align 8, !tbaa !10
  call void @_ZN22btVoronoiSimplexSolver14compute_pointsER9btVector3S1_(ptr noundef nonnull align 4 dereferenceable(353) %i.lh, ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %15)
  %i.li = getelementptr inbounds nuw i8, ptr %5, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.li, ptr noundef nonnull align 4 dereferenceable(16) %15, i64 16, i1 false), !tbaa.struct !28
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
