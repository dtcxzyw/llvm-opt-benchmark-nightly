Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3GjkEpa?download=true
inline.NumInlined: 376
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.gjkepa2_impl2::b3MinkowskiDiff" = type <{ [2 x ptr], %class.b3Matrix3x3, %class.b3Transform, i8, [15 x i8] }>
%class.b3Matrix3x3 = type { [3 x %class.b3Vector3] }
%class.b3Vector3 = type { %union.anon }
%union.anon = type { [4 x float] }
%class.b3Transform = type { %class.b3Matrix3x3, %class.b3Vector3 }
%"struct.gjkepa2_impl2::b3GJK" = type <{ %"struct.gjkepa2_impl2::b3MinkowskiDiff", ptr, ptr, %class.b3Vector3, float, [4 x i8], [2 x %"struct.gjkepa2_impl2::b3GJK::sSimplex"], [8 x i8], [4 x %"struct.gjkepa2_impl2::b3GJK::sSV"], [4 x ptr], i32, i32, ptr, i32, [12 x i8] }>
%"struct.gjkepa2_impl2::b3GJK::sSimplex" = type { [4 x ptr], [4 x float], i32 }
%"struct.gjkepa2_impl2::b3GJK::sSV" = type { %class.b3Vector3, %class.b3Vector3 }
%"struct.gjkepa2_impl2::b3EPA" = type { i32, %"struct.gjkepa2_impl2::b3GJK::sSimplex", %class.b3Vector3, float, [12 x i8], [64 x %"struct.gjkepa2_impl2::b3GJK::sSV"], [128 x %"struct.gjkepa2_impl2::b3EPA::sFace"], i32, [4 x i8], %"struct.gjkepa2_impl2::b3EPA::sList", %"struct.gjkepa2_impl2::b3EPA::sList", [8 x i8] }
%"struct.gjkepa2_impl2::b3EPA::sFace" = type { %class.b3Vector3, float, [3 x ptr], [3 x ptr], [2 x ptr], [3 x i8], i8 }
%"struct.gjkepa2_impl2::b3EPA::sList" = type <{ ptr, i32, [4 x i8] }>
%"struct.gjkepa2_impl2::b3EPA::sHorizon" = type <{ ptr, ptr, i32, [4 x i8] }>

$_ZN13gjkepa2_impl25b3GJK8EvaluateERKNS_15b3MinkowskiDiffERK9b3Vector3 = comdat any

$_ZN13gjkepa2_impl25b3EPA8EvaluateERNS_5b3GJKERK9b3Vector3 = comdat any

$_ZN13gjkepa2_impl25b3GJK13projectoriginERK9b3Vector3S3_S3_PfRj = comdat any

$_ZN13gjkepa2_impl25b3GJK13projectoriginERK9b3Vector3S3_S3_S3_PfRj = comdat any

$_ZNK13gjkepa2_impl215b3MinkowskiDiff8Support1ERK9b3Vector3RK20b3AlignedObjectArrayIS1_E = comdat any

$_ZN13gjkepa2_impl25b3GJK13EncloseOriginEv = comdat any

$_ZN13gjkepa2_impl25b3EPA7newfaceEPNS_5b3GJK3sSVES3_S3_b = comdat any

$_ZN13gjkepa2_impl25b3EPA6expandEjPNS_5b3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonE = comdat any

$_ZN13gjkepa2_impl25b3EPA11getedgedistEPNS0_5sFaceEPNS_5b3GJK3sSVES5_Rf = comdat any

$_ZZN13gjkepa2_impl25b3EPA6expandEjPNS_5b3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonEE4i1m3 = comdat any

$_ZZN13gjkepa2_impl25b3EPA6expandEjPNS_5b3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonEE4i2m3 = comdat any

@_ZZN13gjkepa2_impl25b3EPA6expandEjPNS_5b3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonEE4i1m3 = linkonce_odr dso_local local_unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 0], comdat, align 4
@_ZZN13gjkepa2_impl25b3EPA6expandEjPNS_5b3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonEE4i2m3 = linkonce_odr dso_local local_unnamed_addr constant [3 x i32] [i32 2, i32 0, i32 1], comdat, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN15b3GjkEpaSolver220StackSizeRequirementEv() local_unnamed_addr #0 align 2 {
bb.a:
  ret i32 14976
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN15b3GjkEpaSolver28DistanceERK11b3TransformS2_PK22b3ConvexPolyhedronDataS5_RK20b3AlignedObjectArrayI9b3Vector3ESA_RKS7_RNS_8sResultsE(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(64) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(25) %4, ptr noundef nonnull align 8 dereferenceable(25) %5, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr nofree noundef nonnull writeonly align 16 captures(none) dereferenceable(80) initializes((0, 4), (16, 48)) %7) local_unnamed_addr #1 align 2 {
bb.a:
  %8 = alloca %"struct.gjkepa2_impl2::b3MinkowskiDiff", align 16 ; 25 uses
  %9 = alloca %"struct.gjkepa2_impl2::b3GJK", align 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call fastcc void @_ZN13gjkepa2_impl2L10InitializeERK11b3TransformS2_PK22b3ConvexPolyhedronDataS5_RK20b3AlignedObjectArrayI9b3Vector3ESA_RN15b3GjkEpaSolver28sResultsERNS_15b3MinkowskiDiffEb(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 16 dereferenceable(80) %7, ptr noundef nonnull align 16 dereferenceable(129) %8, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 144
  store ptr %4, ptr %i.a, align 16, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 152
  store ptr %5, ptr %i.b, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 160
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 464
  store i32 0, ptr %i.d, align 16, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 480
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store i32 2, ptr %i.e, align 16, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 468
  store i32 0, ptr %i.f, align 4, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 176
  store float 0.000000e+00, ptr %i.g, align 16, !tbaa !25
  %i.h = call noundef i32 @_ZN13gjkepa2_impl25b3GJK8EvaluateERKNS_15b3MinkowskiDiffERK9b3Vector3(ptr noundef nonnull align 16 dereferenceable(484) %9, ptr noundef nonnull align 16 dereferenceable(129) %8, ptr noundef nonnull align 16 dereferenceable(16) %6) ; 2 uses
  %i.i = icmp eq i32 %i.h, 0                      ; 2 uses
  br i1 %i.i, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 472
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !28   ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.p = load i8, ptr %i.o, align 16, !tbaa !29, !range !30, !noundef !31
  %i.q = trunc nuw i8 %i.p to i1                  ; 2 uses
  %i.r = load ptr, ptr %8, align 16, !tbaa !33    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 76
  %i.t = load i32, ptr %i.s, align 4, !tbaa !35   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 80 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.x = zext nneg i32 %i.t to i64                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.z = load float, ptr %i.y, align 16, !tbaa !36
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !36
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !36
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.af = load float, ptr %i.ae, align 16, !tbaa !36
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !36
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !36
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.al = load float, ptr %i.ak, align 16, !tbaa !36
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.an = load float, ptr %i.am, align 4, !tbaa !36
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !36
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !33 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 76
  %i.at = load i32, ptr %i.as, align 4, !tbaa !35 ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0                   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 80 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ax = zext nneg i32 %i.at to i64              ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.bc = load <2 x float>, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.be = load float, ptr %i.bd, align 8, !tbaa !36
  %i.bf = load float, ptr %i.ba, align 16, !tbaa !36
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 100
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !36
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !36
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.bl = load <2 x float>, ptr %i.ay, align 16, !tbaa !36 ; 2 uses
  %i.bm = load <2 x float>, ptr %i.az, align 16, !tbaa !36 ; 2 uses
  %i.bn = load <2 x float>, ptr %i.bk, align 16, !tbaa !36
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !36
  %wide.trip.count = zext i32 %i.m to i64
  %i.bq = insertelement <2 x float> %i.bc, float %i.be, i64 1
  %i.br = shufflevector <2 x float> %i.bl, <2 x float> %i.bm, <2 x i32> <i32 0, i32 2>
  %i.bs = shufflevector <2 x float> %i.bl, <2 x float> %i.bm, <2 x i32> <i32 1, i32 3>
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK13gjkepa2_impl215b3MinkowskiDiff8Support1ERK9b3Vector3RK20b3AlignedObjectArrayIS1_E.exit, %.preheader
  %.sroa.095.0.lcssa = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.gg, %_ZNK13gjkepa2_impl215b3MinkowskiDiff8Support1ERK9b3Vector3RK20b3AlignedObjectArrayIS1_E.exit ] ; 5 uses
  %.sroa.11.0.lcssa = phi <2 x float> [ zeroinitializer, %.preheader ], [ %.sroa.11.8.vec.insert, %_ZNK13gjkepa2_impl215b3MinkowskiDiff8Support1ERK9b3Vector3RK20b3AlignedObjectArrayIS1_E.exit ] ; 3 uses
  %.sroa.079.0.lcssa = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.ix, %_ZNK13gjkepa2_impl215b3MinkowskiDiff8Support1ERK9b3Vector3RK20b3AlignedObjectArrayIS1_E.exit ] ; 5 uses
  %.sroa.11106.0.lcssa = phi <2 x float> [ zeroinitializer, %.preheader ], [ %.sroa.11106.8.vec.insert, %_ZNK13gjkepa2_impl215b3MinkowskiDiff8Support1ERK9b3Vector3RK20b3AlignedObjectArrayIS1_E.exit ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.095.0.vec.extract = extractelement <2 x float> %.sroa.095.0.lcssa, i64 0
  %.sroa.095.4.vec.extract = extractelement <2 x float> %.sroa.095.0.lcssa, i64 1 ; 2 uses
  %.sroa.11106.8.vec.extract = extractelement <2 x float> %.sroa.11106.0.lcssa, i64 0
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bw = load <2 x float>, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.by = load float, ptr %i.bx, align 8, !tbaa !36
  %i.bz = load float, ptr %i.bu, align 16, !tbaa !36
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !36
  %i.cc = fmul float %.sroa.095.4.vec.extract, %i.cb
  %i.cd = call float @llvm.fmuladd.f32(float %.sroa.095.0.vec.extract, float %i.bz, float %i.cc)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 8, !tbaa !36
  %i.cg = call noundef float @llvm.fmuladd.f32(float %.sroa.11106.8.vec.extract, float %i.cf, float %i.cd)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ci = load <2 x float>, ptr %0, align 16, !tbaa !36 ; 2 uses
  %i.cj = load <2 x float>, ptr %i.bt, align 16, !tbaa !36 ; 2 uses
  %i.ck = shufflevector <2 x float> %.sroa.095.0.lcssa, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cl = shufflevector <2 x float> %i.ci, <2 x float> %i.cj, <2 x i32> <i32 1, i32 3>
  %i.cm = fmul <2 x float> %i.ck, %i.cl
  %i.cn = shufflevector <2 x float> %.sroa.095.0.lcssa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = shufflevector <2 x float> %i.ci, <2 x float> %i.cj, <2 x i32> <i32 0, i32 2>
  %i.cp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cn, <2 x float> %i.co, <2 x float> %i.cm)
  %i.cq = shufflevector <2 x float> %.sroa.11106.0.lcssa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = insertelement <2 x float> %i.bw, float %i.by, i64 1
  %i.cs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> %i.cr, <2 x float> %i.cp)
  %i.ct = load <2 x float>, ptr %i.ch, align 16, !tbaa !36
  %i.cu = fadd <2 x float> %i.cs, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cw = load float, ptr %i.cv, align 8, !tbaa !36
  %i.cx = fadd float %i.cg, %i.cw
  %.sroa.3.12.vec.insert.i.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cx, i64 0
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 16
  store <2 x float> %i.cu, ptr %i.cy, align 16
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i.i4.i.i, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !36
  %.sroa.079.0.vec.extract = extractelement <2 x float> %.sroa.079.0.lcssa, i64 0
  %.sroa.079.4.vec.extract = extractelement <2 x float> %.sroa.079.0.lcssa, i64 1 ; 2 uses
  %.sroa.11.8.vec.extract = extractelement <2 x float> %.sroa.11.0.lcssa, i64 0
  %i.cz = load <2 x float>, ptr %i.bv, align 8
  %i.da = load float, ptr %i.bx, align 8, !tbaa !36
  %i.db = load float, ptr %i.bu, align 16, !tbaa !36
  %i.dc = load float, ptr %i.ca, align 4, !tbaa !36
  %i.dd = fmul float %.sroa.079.4.vec.extract, %i.dc
  %i.de = call float @llvm.fmuladd.f32(float %.sroa.079.0.vec.extract, float %i.db, float %i.dd)
  %i.df = load float, ptr %i.ce, align 8, !tbaa !36
  %i.dg = call noundef float @llvm.fmuladd.f32(float %.sroa.11.8.vec.extract, float %i.df, float %i.de)
  %i.dh = load <2 x float>, ptr %0, align 16, !tbaa !36 ; 2 uses
  %i.di = load <2 x float>, ptr %i.bt, align 16, !tbaa !36 ; 2 uses
  %i.dj = shufflevector <2 x float> %.sroa.079.0.lcssa, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dk = shufflevector <2 x float> %i.dh, <2 x float> %i.di, <2 x i32> <i32 1, i32 3>
  %i.dl = fmul <2 x float> %i.dj, %i.dk
  %i.dm = shufflevector <2 x float> %.sroa.079.0.lcssa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = shufflevector <2 x float> %i.dh, <2 x float> %i.di, <2 x i32> <i32 0, i32 2>
  %i.do = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.dn, <2 x float> %i.dl)
  %i.dp = shufflevector <2 x float> %.sroa.11.0.lcssa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = insertelement <2 x float> %i.cz, float %i.da, i64 1
  %i.dr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> %i.dq, <2 x float> %i.do)
  %i.ds = load <2 x float>, ptr %i.ch, align 16, !tbaa !36
  %i.dt = fadd <2 x float> %i.dr, %i.ds
  %i.du = load float, ptr %i.cv, align 8, !tbaa !36
  %i.dv = fadd float %i.dg, %i.du
  %.sroa.3.12.vec.insert.i.i4.i.i41 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dv, i64 0
  %i.dw = getelementptr inbounds nuw i8, ptr %7, i64 32
  store <2 x float> %i.dt, ptr %i.dw, align 16
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store <2 x float> %.sroa.3.12.vec.insert.i.i4.i.i41, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !36
  %foldExtExtBinop = fsub <2 x float> %.sroa.095.0.lcssa, %.sroa.079.0.lcssa
  %i.dx = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %i.dy = fsub float %.sroa.095.4.vec.extract, %.sroa.079.4.vec.extract ; 3 uses
  %foldExtExtBinop133 = fsub <2 x float> %.sroa.11106.0.lcssa, %.sroa.11.0.lcssa ; 2 uses
  %i.dz = extractelement <2 x float> %foldExtExtBinop133, i64 0 ; 3 uses
  %.sroa.3.12.vec.insert.i.i135 = insertelement <2 x float> %foldExtExtBinop133, float 0.000000e+00, i64 1
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 48
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i135, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !36
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 52
  %i.ec = fmul float %i.dy, %i.dy
  %i.ed = call float @llvm.fmuladd.f32(float %i.dx, float %i.dx, float %i.ec)
  %i.ee = call noundef float @llvm.fmuladd.f32(float %i.dz, float %i.dz, float %i.ed)
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.ee) ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 64
  store float %sqrt.i, ptr %i.ef, align 16, !tbaa !39
end_hunk_0
begin_hunk_1_@_ZN13gjkepa2_impl25b3GJK13EncloseOriginEv:bb.a
bb.ai:                                            ; preds = %bb.ah
  br i1 %i.ui, label %.lr.ph.i.i.i.i.i.i260, label %_ZN13gjkepa2_impl25b3GJK13appendverticeERNS0_8sSimplexERK9b3Vector3.exit268

.lr.ph.i.i.i.i.i.i260:                            ; preds = %bb.ai
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uf, i64 80
  %i.uk = load i32, ptr %i.uj, align 16, !tbaa !43 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ub, i64 16
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !47 ; 2 uses
  %i.un = sext i32 %i.uk to i64
  %i.uo = getelementptr inbounds [16 x i8], ptr %i.um, i64 %i.un
  %i.up = zext nneg i32 %i.uh to i64
  %i.uq = extractelement <2 x float> %i.tz, i64 0
  %i.ur = extractelement <2 x float> %i.tz, i64 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph.i.i.i.i.i.i260
  %indvars.iv.i.i.i.i.i.i261 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i260 ], [ %indvars.iv.next.i.i.i.i.i.i266, %bb.aj ] ; 3 uses
  %.020.i.i.i.i.i.i262 = phi i32 [ -1, %.lr.ph.i.i.i.i.i.i260 ], [ %.1.i.i.i.i.i.i265, %bb.aj ]
  %.01418.i.i.i.i.i.i263 = phi float [ f0xFF7FFFFF, %.lr.ph.i.i.i.i.i.i260 ], [ %.115.i.i.i.i.i.i264, %bb.aj ] ; 2 uses
  %i.us = getelementptr inbounds nuw [16 x i8], ptr %i.uo, i64 %indvars.iv.i.i.i.i.i.i261 ; 3 uses
  %i.ut = load float, ptr %i.us, align 16, !tbaa !36
  %i.uu = getelementptr inbounds nuw i8, ptr %i.us, i64 4
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !36
  %i.uw = fmul float %i.ur, %i.uv
  %i.ux = call float @llvm.fmuladd.f32(float %i.ut, float %i.uq, float %i.uw)
  %i.uy = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %i.uz = load float, ptr %i.uy, align 8, !tbaa !36
  %i.va = call noundef float @llvm.fmuladd.f32(float %i.uz, float %i.ua, float %i.ux) ; 2 uses
  %i.vb = fcmp ogt float %i.va, %.01418.i.i.i.i.i.i263 ; 2 uses
  %.115.i.i.i.i.i.i264 = select i1 %i.vb, float %i.va, float %.01418.i.i.i.i.i.i263
  %i.vc = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i.i261 to i32
  %.1.i.i.i.i.i.i265 = select i1 %i.vb, i32 %i.vc, i32 %.020.i.i.i.i.i.i262 ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i266 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i261, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i267 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i266, %i.up
  br i1 %exitcond.not.i.i.i.i.i.i267, label %_Z31localGetSupportVertexWithMarginRK9b3Vector3PK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayIS_Ef.exit.sink.split.i.i.i.i253, label %bb.aj, !llvm.loop !0

bb.ak:                                            ; preds = %bb.ah
  br i1 %i.ui, label %.lr.ph.i.i.i.i.i.i.i245, label %_ZN13gjkepa2_impl25b3GJK13appendverticeERNS0_8sSimplexERK9b3Vector3.exit268

.lr.ph.i.i.i.i.i.i.i245:                          ; preds = %bb.ak
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uf, i64 80
  %i.ve = load i32, ptr %i.vd, align 16, !tbaa !43 ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ub, i64 16
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !47 ; 2 uses
  %i.vh = sext i32 %i.ve to i64
  %i.vi = getelementptr inbounds [16 x i8], ptr %i.vg, i64 %i.vh
  %i.vj = zext nneg i32 %i.uh to i64
  %i.vk = extractelement <2 x float> %i.tz, i64 0
  %i.vl = extractelement <2 x float> %i.tz, i64 1
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.i.i.i.i.i.i.i245
  %indvars.iv.i.i.i.i.i.i.i246 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i245 ], [ %indvars.iv.next.i.i.i.i.i.i.i251, %bb.al ] ; 3 uses
  %.020.i.i.i.i.i.i.i247 = phi i32 [ -1, %.lr.ph.i.i.i.i.i.i.i245 ], [ %.1.i.i.i.i.i.i.i250, %bb.al ]
  %.01418.i.i.i.i.i.i.i248 = phi float [ f0xFF7FFFFF, %.lr.ph.i.i.i.i.i.i.i245 ], [ %.115.i.i.i.i.i.i.i249, %bb.al ] ; 2 uses
  %i.vm = getelementptr inbounds nuw [16 x i8], ptr %i.vi, i64 %indvars.iv.i.i.i.i.i.i.i246 ; 3 uses
  %i.vn = load float, ptr %i.vm, align 16, !tbaa !36
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vm, i64 4
  %i.vp = load float, ptr %i.vo, align 4, !tbaa !36
  %i.vq = fmul float %i.vl, %i.vp
  %i.vr = call float @llvm.fmuladd.f32(float %i.vn, float %i.vk, float %i.vq)
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  %i.vt = load float, ptr %i.vs, align 8, !tbaa !36
  %i.vu = call noundef float @llvm.fmuladd.f32(float %i.vt, float %i.ua, float %i.vr) ; 2 uses
  %i.vv = fcmp ogt float %i.vu, %.01418.i.i.i.i.i.i.i248 ; 2 uses
  %.115.i.i.i.i.i.i.i249 = select i1 %i.vv, float %i.vu, float %.01418.i.i.i.i.i.i.i248
  %i.vw = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i246 to i32
  %.1.i.i.i.i.i.i.i250 = select i1 %i.vv, i32 %i.vw, i32 %.020.i.i.i.i.i.i.i247 ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i.i251 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i246, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i252 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i251, %i.vj
  br i1 %exitcond.not.i.i.i.i.i.i.i252, label %_Z31localGetSupportVertexWithMarginRK9b3Vector3PK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayIS_Ef.exit.sink.split.i.i.i.i253, label %bb.al, !llvm.loop !0

_Z31localGetSupportVertexWithMarginRK9b3Vector3PK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayIS_Ef.exit.sink.split.i.i.i.i253: ; preds = %bb.al, %bb.aj
  %.1.i.i.i.lcssa.sink.i.i.i.i254 = phi i32 [ %.1.i.i.i.i.i.i265, %bb.aj ], [ %.1.i.i.i.i.i.i.i250, %bb.al ]
  %.sink11.i.i.i.i255 = phi i32 [ %i.uk, %bb.aj ], [ %i.ve, %bb.al ]
  %.sink8.i.i.i.i256 = phi ptr [ %i.um, %bb.aj ], [ %i.vg, %bb.al ]
  %i.vx = call i32 @llvm.smax.i32(i32 %.1.i.i.i.lcssa.sink.i.i.i.i254, i32 0)
  %i.vy = add nsw i32 %i.vx, %.sink11.i.i.i.i255
  %i.vz = sext i32 %i.vy to i64
  %i.wa = getelementptr inbounds [16 x i8], ptr %.sink8.i.i.i.i256, i64 %i.vz ; 2 uses
  %.sroa.07.0.copyload.i.i.i.i.i.i257 = load <2 x float>, ptr %i.wa, align 16
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i258 = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  %.sroa.3.0.copyload.i.i.i.i.i.i259 = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i258, align 8, !tbaa !36
  %i.wb = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.07.0.copyload.i.i.i.i.i.i257, 0
  %i.wc = insertvalue { <2 x float>, <2 x float> } %i.wb, <2 x float> %.sroa.3.0.copyload.i.i.i.i.i.i259, 1
  br label %_ZN13gjkepa2_impl25b3GJK13appendverticeERNS0_8sSimplexERK9b3Vector3.exit268

_ZN13gjkepa2_impl25b3GJK13appendverticeERNS0_8sSimplexERK9b3Vector3.exit268: ; preds = %bb.ai, %bb.ak, %_Z31localGetSupportVertexWithMarginRK9b3Vector3PK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayIS_Ef.exit.sink.split.i.i.i.i253
  %.pn.i.i.i.i231 = phi { <2 x float>, <2 x float> } [ zeroinitializer, %bb.ai ], [ zeroinitializer, %bb.ak ], [ %i.wc, %_Z31localGetSupportVertexWithMarginRK9b3Vector3PK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayIS_Ef.exit.sink.split.i.i.i.i253 ] ; 2 uses
  %i.wd = extractvalue { <2 x float>, <2 x float> } %.pn.i.i.i.i231, 0
  %i.we = extractvalue { <2 x float>, <2 x float> } %.pn.i.i.i.i231, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.wf = fneg <2 x float> %i.tz
  %i.wg = fneg float %i.ua
  %.sroa.3.12.vec.insert.i.i.i10.i.i234 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.wg, i64 0
  store <2 x float> %i.wf, ptr %1, align 16
  %i.wh = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i10.i.i234, ptr %i.wh, align 8
  %i.wi = call { <2 x float>, <2 x float> } @_ZNK13gjkepa2_impl215b3MinkowskiDiff8Support1ERK9b3Vector3RK20b3AlignedObjectArrayIS1_E(ptr noundef nonnull align 16 dereferenceable(484) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(25) %i.uc) ; 2 uses
  %i.wj = extractvalue { <2 x float>, <2 x float> } %i.wi, 0
  %i.wk = extractvalue { <2 x float>, <2 x float> } %i.wi, 1
  %i.wl = fsub <2 x float> %i.wd, %i.wj
  %foldExtExtBinop392 = fsub <2 x float> %i.we, %i.wk
  %.sroa.3.12.vec.insert.i.i7.i.i.i243395 = insertelement <2 x float> %foldExtExtBinop392, float 0.000000e+00, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  %i.wm = getelementptr inbounds nuw i8, ptr %i.tr, i64 16
  store <2 x float> %i.wl, ptr %i.wm, align 16
  %.sroa.4.0..sroa_idx.i.i244 = getelementptr inbounds nuw i8, ptr %i.tr, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i.i7.i.i.i243395, ptr %.sroa.4.0..sroa_idx.i.i244, align 8, !tbaa !36
  %i.wn = call noundef zeroext i1 @_ZN13gjkepa2_impl25b3GJK13EncloseOriginEv(ptr noundef nonnull align 16 dereferenceable(484) %0)
  br i1 %i.wn, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %_ZN13gjkepa2_impl25b3GJK13appendverticeERNS0_8sSimplexERK9b3Vector3.exit268
  %i.wo = load ptr, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 48 ; 2 uses
  %i.wq = load i32, ptr %i.wp, align 8, !tbaa !28
  %i.wr = add i32 %i.wq, -1                       ; 2 uses
  store i32 %i.wr, ptr %i.wp, align 8, !tbaa !28
  %i.ws = zext i32 %i.wr to i64
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.wo, i64 %i.ws
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !42
  %i.wv = load i32, ptr %i.qj, align 16, !tbaa !22 ; 2 uses
  %i.ww = add i32 %i.wv, 1
  store i32 %i.ww, ptr %i.qj, align 16, !tbaa !22
  %i.wx = zext i32 %i.wv to i64
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.qi, i64 %i.wx
  store ptr %i.wu, ptr %i.wy, align 8, !tbaa !42
  br label %.thread

bb.an:                                            ; preds = %bb.a
  %i.wz = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 16
  %i.xb = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !42
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 16 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !42 ; 3 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 16
  %i.xh = load float, ptr %i.xg, align 16, !tbaa !36
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xf, i64 20
  %i.xj = load float, ptr %i.xi, align 4, !tbaa !36
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xf, i64 24
  %i.xl = load float, ptr %i.xk, align 8, !tbaa !36
  %i.xm = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !42 ; 3 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 16
  %i.xp = load float, ptr %i.xo, align 16, !tbaa !36
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xn, i64 20
  %i.xr = load float, ptr %i.xq, align 4, !tbaa !36
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xn, i64 24
  %i.xt = load float, ptr %i.xs, align 8, !tbaa !36
  %i.xu = load <3 x float>, ptr %i.xa, align 16, !tbaa !36
  %i.xv = shufflevector <3 x float> %i.xu, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.xw = load float, ptr %i.xd, align 16, !tbaa !36
  %i.xx = load <3 x float>, ptr %i.xd, align 16, !tbaa !36 ; 4 uses
  %i.xy = shufflevector <3 x float> %i.xx, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.xz = fsub <4 x float> %i.xv, %i.xy           ; 3 uses
  %i.ya = extractelement <3 x float> %i.xx, i64 1 ; 2 uses
  %i.yb = fsub float %i.xj, %i.ya                 ; 2 uses
  %i.yc = insertelement <2 x float> poison, float %i.xl, i64 0
  %i.yd = insertelement <2 x float> %i.yc, float %i.xh, i64 1
  %i.ye = shufflevector <3 x float> %i.xx, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.yf = fsub <2 x float> %i.yd, %i.ye           ; 2 uses
  %i.yg = fsub float %i.xp, %i.xw                 ; 2 uses
  %i.yh = fsub float %i.xr, %i.ya                 ; 2 uses
  %i.yi = extractelement <3 x float> %i.xx, i64 2
  %i.yj = fsub float %i.xt, %i.yi                 ; 2 uses
  %i.yk = fneg <2 x float> %i.yf
  %i.yl = shufflevector <2 x float> %i.yf, <2 x float> %i.yk, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ym = fmul <4 x float> %i.xz, %i.yl           ; 4 uses
  %i.yn = extractelement <4 x float> %i.ym, i64 1
  %i.yo = fmul float %i.yn, %i.yh
  %i.yp = extractelement <4 x float> %i.ym, i64 0
  %i.yq = tail call float @llvm.fmuladd.f32(float %i.yp, float %i.yg, float %i.yo)
  %i.yr = extractelement <4 x float> %i.ym, i64 2
  %i.ys = tail call float @llvm.fmuladd.f32(float %i.yr, float %i.yh, float %i.yq)
  %i.yt = extractelement <4 x float> %i.ym, i64 3
  %i.yu = tail call float @llvm.fmuladd.f32(float %i.yt, float %i.yj, float %i.ys)
  %i.yv = extractelement <4 x float> %i.xz, i64 2
  %i.yw = fmul float %i.yv, %i.yb
  %i.yx = tail call float @llvm.fmuladd.f32(float %i.yw, float %i.yj, float %i.yu)
  %i.yy = fneg float %i.yb
  %i.yz = extractelement <4 x float> %i.xz, i64 1
  %i.za = fmul float %i.yz, %i.yy
  %i.zb = tail call noundef float @llvm.fmuladd.f32(float %i.za, float %i.yg, float %i.yx)
  %i.zc = fcmp ueq float %i.zb, 0.000000e+00
  br i1 %i.zc, label %.thread, label %bb.ao

.thread:                                          ; preds = %bb.z, %.critedge, %bb.ab, %bb.am, %bb.an, %bb.a
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN13gjkepa2_impl25b3GJK13appendverticeERNS0_8sSimplexERK9b3Vector3.exit220, %_ZN13gjkepa2_impl25b3GJK13appendverticeERNS0_8sSimplexERK9b3Vector3.exit268, %bb.aa, %bb.l, %bb.an, %.thread
  %.7 = phi i1 [ false, %.thread ], [ true, %bb.l ], [ true, %bb.aa ], [ true, %bb.an ], [ true, %_ZN13gjkepa2_impl25b3GJK13appendverticeERNS0_8sSimplexERK9b3Vector3.exit268 ], [ true, %_ZN13gjkepa2_impl25b3GJK13appendverticeERNS0_8sSimplexERK9b3Vector3.exit220 ]
  ret i1 %.7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN13gjkepa2_impl25b3EPA7newfaceEPNS_5b3GJK3sSVES3_S3_b(ptr noundef nonnull align 16 dereferenceable(14472) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14456 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 25 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 8 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !62 ; 3 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %.pre.i, ptr %i.f, align 8, !tbaa !62
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not12.i = icmp eq ptr %.pre.i, null
  br i1 %.not12.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.h = getelementptr inbounds nuw i8, ptr %.pre.i, i64 80
  store ptr %i.g, ptr %i.h, align 8, !tbaa !62
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %bb.g, label %_ZN13gjkepa2_impl25b3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit

bb.g:                                             ; preds = %bb.f
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !62
  store ptr %i.k, ptr %i.a, align 8, !tbaa !56
  br label %_ZN13gjkepa2_impl25b3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit

_ZN13gjkepa2_impl25b3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit: ; preds = %bb.f, %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 14464 ; 4 uses
  %i.m = load i32, ptr %i.l, align 16, !tbaa !57
  %i.n = add i32 %i.m, -1
  store i32 %i.n, ptr %i.l, align 16, !tbaa !57
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 14440 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !62
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !56   ; 3 uses
  store ptr %i.p, ptr %i.d, align 8, !tbaa !62
  %.not.i39 = icmp eq ptr %i.p, null
  br i1 %.not.i39, label %_ZN13gjkepa2_impl25b3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN13gjkepa2_impl25b3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store ptr %i.b, ptr %i.q, align 8, !tbaa !62
  br label %_ZN13gjkepa2_impl25b3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit

_ZN13gjkepa2_impl25b3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit: ; preds = %_ZN13gjkepa2_impl25b3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit, %bb.h
  store ptr %i.b, ptr %i.o, align 8, !tbaa !56
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 14448 ; 4 uses
  %i.s = load i32, ptr %i.r, align 16, !tbaa !57
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 16, !tbaa !57
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 91
  store i8 0, ptr %i.u, align 1, !tbaa !66
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %1, ptr %i.v, align 8, !tbaa !42
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %2, ptr %i.w, align 8, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %3, ptr %i.x, align 8, !tbaa !42
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = load float, ptr %i.y, align 16, !tbaa !36
  %i.ab = load float, ptr %i.z, align 16, !tbaa !36
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = load float, ptr %i.ae, align 16, !tbaa !36
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ah = load <2 x float>, ptr %i.ac, align 4, !tbaa !36 ; 2 uses
  %i.ai = load <2 x float>, ptr %i.ad, align 4, !tbaa !36 ; 3 uses
  %i.aj = fsub <2 x float> %i.ah, %i.ai           ; 2 uses
  %i.ak = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.al = insertelement <2 x float> %i.ak, float %i.aa, i64 1
  %i.am = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.an = insertelement <2 x float> %i.am, float %i.ab, i64 1 ; 2 uses
  %i.ao = fsub <2 x float> %i.al, %i.an           ; 2 uses
  %i.ap = load <2 x float>, ptr %i.ag, align 4, !tbaa !36 ; 2 uses
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ar = insertelement <2 x float> %i.aq, float %i.af, i64 1
  %i.as = fsub <2 x float> %i.ar, %i.an           ; 2 uses
  %i.at = fsub <2 x float> %i.ap, %i.ai           ; 2 uses
  %i.au = fneg <2 x float> %i.at
  %i.av = fmul <2 x float> %i.ao, %i.au
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> %i.as, <2 x float> %i.av) ; 4 uses
  %i.ax = extractelement <2 x float> %i.as, i64 1
  %i.ay = fneg float %i.ax
  %i.az = extractelement <2 x float> %i.aj, i64 0
  %i.ba = fmul float %i.az, %i.ay
  %i.bb = extractelement <2 x float> %i.ao, i64 1
  %i.bc = extractelement <2 x float> %i.at, i64 0
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.bc, float %i.ba) ; 3 uses
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bd, i64 0
  store <2 x float> %i.aw, ptr %i.b, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !36
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %foldExtExtBinop = fmul <2 x float> %i.aw, %i.aw
  %7 = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.be = extractelement <2 x float> %i.aw, i64 0 ; 2 uses
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.be, float %i.be, float %7)
  %i.bg = tail call noundef float @llvm.fmuladd.f32(float %i.bd, float %i.bd, float %i.bf)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.bg) ; 3 uses
  %i.bh = fcmp ogt float %sqrt.i, f0x38D1B717
  br i1 %i.bh, label %bb.i, label %bb.o

bb.i:                                             ; preds = %_ZN13gjkepa2_impl25b3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %8 = tail call noundef zeroext i1 @_ZN13gjkepa2_impl25b3EPA11getedgedistEPNS0_5sFaceEPNS_5b3GJK3sSVES5_Rf(ptr noundef nonnull align 16 dereferenceable(14472) %0, ptr noundef nonnull %i.b, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull align 4 dereferenceable(4) %i.bi)
  br i1 %8, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %9 = tail call noundef zeroext i1 @_ZN13gjkepa2_impl25b3EPA11getedgedistEPNS0_5sFaceEPNS_5b3GJK3sSVES5_Rf(ptr noundef nonnull align 16 dereferenceable(14472) %0, ptr noundef nonnull %i.b, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull align 4 dereferenceable(4) %i.bi)
  br i1 %9, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %10 = tail call noundef zeroext i1 @_ZN13gjkepa2_impl25b3EPA11getedgedistEPNS0_5sFaceEPNS_5b3GJK3sSVES5_Rf(ptr noundef nonnull align 16 dereferenceable(14472) %0, ptr noundef nonnull %i.b, ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(4) %i.bi)
  br i1 %10, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = load float, ptr %i.z, align 16, !tbaa !36
  %i.bk = load float, ptr %i.b, align 16, !tbaa !36
  %i.bl = load float, ptr %i.ad, align 4, !tbaa !36
  %11 = load float, ptr %6, align 4, !tbaa !36
  %i.bm = fmul float %i.bl, %11
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bk, float %i.bm)
  %12 = load float, ptr %5, align 8, !tbaa !36
  %13 = load float, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !36
  %i.bo = tail call noundef float @llvm.fmuladd.f32(float %12, float %13, float %i.bn)
  %14 = fdiv float %i.bo, %sqrt.i
  store float %14, ptr %i.bi, align 16, !tbaa !65
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %15 = fdiv float 1.000000e+00, %sqrt.i          ; 2 uses
  %16 = load <2 x float>, ptr %i.b, align 16, !tbaa !36
  %17 = insertelement <2 x float> poison, float %15, i64 0
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %19 = fmul <2 x float> %18, %16
  store <2 x float> %19, ptr %i.b, align 16, !tbaa !36
  %20 = load float, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !36
  %i.bp = fmul float %15, %20
  store float %i.bp, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !36
  br i1 %4, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %21 = load float, ptr %i.bi, align 16, !tbaa !65
  %22 = fcmp ult float %21, f0xB727C5AC
  br i1 %22, label %bb.o, label %bb.w

bb.o:                                             ; preds = %_ZN13gjkepa2_impl25b3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit, %bb.n
  %storemerge = phi i32 [ 3, %bb.n ], [ 2, %_ZN13gjkepa2_impl25b3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit ]
  store i32 %storemerge, ptr %0, align 16, !tbaa !60
  %i.bq = load ptr, ptr %i.d, align 16, !tbaa !62 ; 2 uses
  %.not.i45 = icmp eq ptr %i.bq, null
  %.pre.i46 = load ptr, ptr %i.c, align 8, !tbaa !62 ; 3 uses
  br i1 %.not.i45, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  store ptr %.pre.i46, ptr %i.br, align 8, !tbaa !62
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.not12.i47 = icmp eq ptr %.pre.i46, null
  br i1 %.not12.i47, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = load ptr, ptr %i.d, align 16, !tbaa !62
  %i.bt = getelementptr inbounds nuw i8, ptr %.pre.i46, i64 80
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !62
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bu = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.bv = icmp eq ptr %i.b, %i.bu
  br i1 %i.bv, label %bb.t, label %_ZN13gjkepa2_impl25b3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit48

bb.t:                                             ; preds = %bb.s
  %i.bw = load ptr, ptr %i.d, align 16, !tbaa !62
  store ptr %i.bw, ptr %i.o, align 8, !tbaa !56
  br label %_ZN13gjkepa2_impl25b3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit48

_ZN13gjkepa2_impl25b3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit48: ; preds = %bb.s, %bb.t
  %i.bx = load i32, ptr %i.r, align 16, !tbaa !57
  %i.by = add i32 %i.bx, -1
  store i32 %i.by, ptr %i.r, align 16, !tbaa !57
  store ptr null, ptr %i.c, align 8, !tbaa !62
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !56  ; 3 uses
  store ptr %i.bz, ptr %i.d, align 16, !tbaa !62
  %.not.i49 = icmp eq ptr %i.bz, null
  br i1 %.not.i49, label %_ZN13gjkepa2_impl25b3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit50, label %bb.u

bb.u:                                             ; preds = %_ZN13gjkepa2_impl25b3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit48
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  store ptr %i.b, ptr %i.ca, align 8, !tbaa !62
  br label %_ZN13gjkepa2_impl25b3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit50

_ZN13gjkepa2_impl25b3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit50: ; preds = %_ZN13gjkepa2_impl25b3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit48, %bb.u
  store ptr %i.b, ptr %i.a, align 8, !tbaa !56
  %i.cb = load i32, ptr %i.l, align 16, !tbaa !57
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.l, align 16, !tbaa !57
  br label %bb.w

bb.v:                                             ; preds = %bb.a
  store i32 5, ptr %0, align 16, !tbaa !60
  br label %bb.w

bb.w:                                             ; preds = %_ZN13gjkepa2_impl25b3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit50, %bb.n, %bb.m, %bb.v
  %.1 = phi ptr [ null, %bb.v ], [ null, %_ZN13gjkepa2_impl25b3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit50 ], [ %i.b, %bb.n ], [ %i.b, %bb.m ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN13gjkepa2_impl25b3EPA6expandEjPNS_5b3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonE(ptr noundef nonnull align 16 dereferenceable(14472) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(20) %5) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 91 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !66
  %i.c = zext i8 %i.b to i32
  %.not = icmp eq i32 %1, %i.c
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i32 %4 to i64                       ; 5 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @_ZZN13gjkepa2_impl25b3EPA6expandEjPNS_5b3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonEE4i1m3, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !53   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load float, ptr %3, align 16, !tbaa !36
  %i.i = load float, ptr %i.g, align 16, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.m = load float, ptr %i.l, align 4, !tbaa !36
  %i.n = fmul float %i.k, %i.m
  %i.o = tail call float @llvm.fmuladd.f32(float %i.h, float %i.i, float %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load float, ptr %i.p, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load float, ptr %i.r, align 8, !tbaa !36
  %i.t = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.s, float %i.o)
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load float, ptr %i.u, align 16, !tbaa !65
  %i.w = fsub float %i.t, %i.v
  %i.x = fcmp olt float %i.w, f0xB727C5AC
  br i1 %i.x, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.z = zext i32 %i.f to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !42
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.d
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !42
  %i.ae = tail call noundef ptr @_ZN13gjkepa2_impl25b3EPA7newfaceEPNS_5b3GJK3sSVES3_S3_b(ptr noundef nonnull align 16 dereferenceable(14472) %0, ptr noundef %i.ab, ptr noundef %i.ad, ptr noundef nonnull %2, i1 noundef zeroext false) ; 9 uses
  %.not53 = icmp eq ptr %i.ae, null
  br i1 %.not53, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = trunc i32 %4 to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !36
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store ptr %3, ptr %i.ah, align 8, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.d
  store i8 0, ptr %i.aj, align 1, !tbaa !36
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.d
  store ptr %i.ae, ptr %i.al, align 8, !tbaa !62
  %i.am = load ptr, ptr %5, align 8, !tbaa !68    ; 4 uses
  %.not54 = icmp eq ptr %i.am, null
  br i1 %.not54, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 89
  store i8 2, ptr %i.an, align 1, !tbaa !36
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  store ptr %i.ae, ptr %i.ao, align 8, !tbaa !62
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 90
  store i8 1, ptr %i.ap, align 2, !tbaa !36
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  store ptr %i.am, ptr %i.aq, align 8, !tbaa !62
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ae, ptr %i.ar, align 8, !tbaa !69
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.ae, ptr %5, align 8, !tbaa !68
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !95
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 8, !tbaa !95
  br label %.critedge

bb.h:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw [4 x i8], ptr @_ZZN13gjkepa2_impl25b3EPA6expandEjPNS_5b3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonEE4i2m3, i64 %i.d
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !53
  %i.ax = trunc i32 %1 to i8
  store i8 %i.ax, ptr %i.a, align 1, !tbaa !66
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.az = zext i32 %i.f to i64                    ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !62
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !36
  %i.bf = zext i8 %i.be to i32
  %i.bg = tail call noundef zeroext i1 @_ZN13gjkepa2_impl25b3EPA6expandEjPNS_5b3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonE(ptr noundef nonnull align 16 dereferenceable(14472) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %i.bb, i32 noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(20) %5)
  br i1 %i.bg, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.bh = zext i32 %i.aw to i64                   ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !62
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bh
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !36
  %i.bm = zext i8 %i.bl to i32
  %i.bn = tail call noundef zeroext i1 @_ZN13gjkepa2_impl25b3EPA6expandEjPNS_5b3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonE(ptr noundef nonnull align 16 dereferenceable(14472) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %i.bj, i32 noundef %i.bm, ptr noundef nonnull align 8 dereferenceable(20) %5)
  br i1 %i.bn, label %.critedge56, label %.critedge

.critedge56:                                      ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 14440 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 4 uses
  %i.br = load ptr, ptr %i.bq, align 16, !tbaa !62 ; 2 uses
  %.not.i = icmp eq ptr %i.br, null
  %.pre.i = load ptr, ptr %i.bp, align 8, !tbaa !62 ; 3 uses
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.critedge56
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 72
  store ptr %.pre.i, ptr %i.bs, align 8, !tbaa !62
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge56
  %.not12.i = icmp eq ptr %.pre.i, null
  br i1 %.not12.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = load ptr, ptr %i.bq, align 16, !tbaa !62
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre.i, i64 80
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !62
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bv = load ptr, ptr %i.bo, align 8, !tbaa !56
  %i.bw = icmp eq ptr %3, %i.bv
  br i1 %i.bw, label %bb.n, label %_ZN13gjkepa2_impl25b3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit

bb.n:                                             ; preds = %bb.m
  %i.bx = load ptr, ptr %i.bq, align 16, !tbaa !62
  store ptr %i.bx, ptr %i.bo, align 8, !tbaa !56
  br label %_ZN13gjkepa2_impl25b3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit

_ZN13gjkepa2_impl25b3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit: ; preds = %bb.m, %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 14448 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 16, !tbaa !57
  %i.ca = add i32 %i.bz, -1
  store i32 %i.ca, ptr %i.by, align 16, !tbaa !57
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 14456 ; 2 uses
  store ptr null, ptr %i.bp, align 8, !tbaa !62
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !56 ; 3 uses
  store ptr %i.cc, ptr %i.bq, align 16, !tbaa !62
  %.not.i57 = icmp eq ptr %i.cc, null
  br i1 %.not.i57, label %_ZN13gjkepa2_impl25b3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit, label %bb.o

bb.o:                                             ; preds = %_ZN13gjkepa2_impl25b3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 72
  store ptr %3, ptr %i.cd, align 8, !tbaa !62
  br label %_ZN13gjkepa2_impl25b3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit

_ZN13gjkepa2_impl25b3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit: ; preds = %_ZN13gjkepa2_impl25b3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit, %bb.o
  store ptr %3, ptr %i.cb, align 8, !tbaa !56
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 14464 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 16, !tbaa !57
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 16, !tbaa !57
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.i, %bb.c, %bb.a, %_ZN13gjkepa2_impl25b3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit, %bb.g
  %.4 = phi i1 [ true, %_ZN13gjkepa2_impl25b3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit ], [ true, %bb.g ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.i ], [ false, %bb.h ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN13gjkepa2_impl25b3EPA11getedgedistEPNS0_5sFaceEPNS_5b3GJK3sSVES5_Rf(ptr noundef nonnull align 16 dereferenceable(14472) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #1 comdat align 2 {
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %8 = load float, ptr %6, align 16, !tbaa !36    ; 7 uses
  %9 = load float, ptr %7, align 16, !tbaa !36    ; 8 uses
  %10 = fsub float %8, %9                         ; 6 uses
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %12 = load float, ptr %11, align 4, !tbaa !36   ; 7 uses
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %14 = load float, ptr %13, align 4, !tbaa !36   ; 8 uses
  %15 = fsub float %12, %14                       ; 6 uses
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %17 = load float, ptr %16, align 8, !tbaa !36   ; 7 uses
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %19 = load float, ptr %18, align 8, !tbaa !36   ; 8 uses
  %20 = fsub float %17, %19                       ; 6 uses
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %22 = load float, ptr %21, align 8, !tbaa !36   ; 2 uses
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %24 = load float, ptr %23, align 4, !tbaa !36   ; 2 uses
  %25 = fneg float %24
  %26 = fmul float %20, %25
  %27 = tail call float @llvm.fmuladd.f32(float %15, float %22, float %26)
  %28 = load float, ptr %1, align 16, !tbaa !36   ; 2 uses
  %29 = fneg float %22
  %30 = fmul float %10, %29
  %31 = tail call float @llvm.fmuladd.f32(float %20, float %28, float %30)
  %32 = fneg float %28
  %33 = fmul float %15, %32
  %34 = tail call float @llvm.fmuladd.f32(float %10, float %24, float %33)
  %35 = fmul float %14, %31
  %36 = tail call float @llvm.fmuladd.f32(float %9, float %27, float %35)
  %37 = tail call noundef float @llvm.fmuladd.f32(float %19, float %34, float %36)
  %38 = fcmp olt float %37, 0.000000e+00          ; 2 uses
  br i1 %38, label %39, label %75

39:                                               ; preds = %5
  %40 = fmul float %15, %15
  %41 = tail call float @llvm.fmuladd.f32(float %10, float %10, float %40)
  %42 = tail call noundef float @llvm.fmuladd.f32(float %20, float %20, float %41)
  %43 = fmul float %14, %15
  %44 = tail call float @llvm.fmuladd.f32(float %9, float %10, float %43)
  %45 = tail call noundef float @llvm.fmuladd.f32(float %19, float %20, float %44)
  %46 = fcmp ogt float %45, 0.000000e+00
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = fmul float %14, %14
  %49 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %48)
  %50 = tail call noundef float @llvm.fmuladd.f32(float %19, float %19, float %49)
  br label %.sink.split

51:                                               ; preds = %39
  %52 = fmul float %12, %15
  %53 = tail call float @llvm.fmuladd.f32(float %8, float %10, float %52)
  %54 = tail call noundef float @llvm.fmuladd.f32(float %17, float %20, float %53)
  %55 = fcmp olt float %54, 0.000000e+00
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = fmul float %12, %12
  %58 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %57)
  %59 = tail call noundef float @llvm.fmuladd.f32(float %17, float %17, float %58)
  br label %.sink.split

60:                                               ; preds = %51
  %61 = fmul float %12, %14
  %62 = tail call float @llvm.fmuladd.f32(float %9, float %8, float %61)
  %63 = tail call noundef float @llvm.fmuladd.f32(float %19, float %17, float %62) ; 2 uses
  %64 = fmul float %14, %14
  %65 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %64)
  %66 = tail call noundef float @llvm.fmuladd.f32(float %19, float %19, float %65)
  %67 = fmul float %12, %12
  %68 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %67)
  %69 = tail call noundef float @llvm.fmuladd.f32(float %17, float %17, float %68)
  %70 = fneg float %63
  %71 = fmul float %63, %70
  %72 = tail call float @llvm.fmuladd.f32(float %66, float %69, float %71)
  %73 = fdiv float %72, %42                       ; 2 uses
  %74 = fcmp ogt float %73, 0.000000e+00
  %.sroa.speculated = select i1 %74, float %73, float 0.000000e+00
  br label %.sink.split

.sink.split:                                      ; preds = %56, %60, %47
  %.sink = phi float [ %50, %47 ], [ %.sroa.speculated, %60 ], [ %59, %56 ]
  %sqrt.i = tail call float @llvm.sqrt.f32(float %.sink)
  store float %sqrt.i, ptr %4, align 4, !tbaa !40
  br label %75

75:                                               ; preds = %.sink.split, %5
  ret i1 %38
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !48}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS20b3AlignedObjectArrayI9b3Vector3E", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"_ZTS11b3Matrix3x3", !6, i64 0}
!14 = !{!"_ZTS9b3Vector3", !6, i64 0}
!15 = !{!"_ZTS11b3Transform", !13, i64 0, !14, i64 48}
!16 = !{!"bool", !6, i64 0}
!17 = !{!"_ZTSN13gjkepa2_impl215b3MinkowskiDiffE", !6, i64 0, !13, i64 16, !15, i64 64, !16, i64 128}
!18 = !{!"float", !6, i64 0}
!19 = !{!"p1 _ZTSN13gjkepa2_impl25b3GJK8sSimplexE", !10, i64 0}
!20 = !{!"_ZTSN13gjkepa2_impl25b3GJK7eStatus1_E", !6, i64 0}
!21 = !{!"_ZTSN13gjkepa2_impl25b3GJKE", !17, i64 0, !11, i64 144, !11, i64 152, !14, i64 160, !18, i64 176, !6, i64 184, !6, i64 304, !6, i64 432, !7, i64 464, !7, i64 468, !19, i64 472, !20, i64 480}
!22 = !{!21, !7, i64 464}
!23 = !{!21, !20, i64 480}
!24 = !{!21, !7, i64 468}
!25 = !{!21, !18, i64 176}
!26 = !{!21, !19, i64 472}
!27 = !{!"_ZTSN13gjkepa2_impl25b3GJK8sSimplexE", !6, i64 0, !6, i64 32, !7, i64 48}
!28 = !{!27, !7, i64 48}
!29 = !{!17, !16, i64 128}
!30 = !{i8 0, i8 2}
!31 = !{}
!32 = !{!"p1 _ZTS22b3ConvexPolyhedronData", !10, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!"_ZTS22b3ConvexPolyhedronData", !14, i64 0, !14, i64 16, !14, i64 32, !14, i64 48, !18, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92}
!35 = !{!34, !7, i64 76}
!36 = !{!6, !6, i64 0}
!37 = !{!"_ZTSN15b3GjkEpaSolver28sResults7eStatusE", !6, i64 0}
!38 = !{!"_ZTSN15b3GjkEpaSolver28sResultsE", !37, i64 0, !6, i64 16, !14, i64 48, !18, i64 64}
!39 = !{!38, !18, i64 64}
!40 = !{!18, !18, i64 0}
!41 = !{!"p1 _ZTSN13gjkepa2_impl25b3GJK3sSVE", !10, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!34, !7, i64 80}
!44 = !{!"_ZTS18b3AlignedAllocatorI9b3Vector3Lj16EE"}
!45 = !{!"p1 _ZTS9b3Vector3", !10, i64 0}
!46 = !{!"_ZTS20b3AlignedObjectArrayI9b3Vector3E", !44, i64 0, !7, i64 4, !7, i64 8, !45, i64 16, !16, i64 24}
!47 = !{!46, !45, i64 16}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!38, !37, i64 0}
!50 = !{!21, !11, i64 144}
!51 = !{i64 8}
!52 = !{!21, !11, i64 152}
!53 = !{!7, !7, i64 0}
!54 = !{!"p1 _ZTSN13gjkepa2_impl25b3EPA5sFaceE", !10, i64 0}
!55 = !{!"_ZTSN13gjkepa2_impl25b3EPA5sListE", !54, i64 0, !7, i64 8}
!56 = !{!55, !54, i64 0}
!57 = !{!55, !7, i64 8}
!58 = !{!"_ZTSN13gjkepa2_impl25b3EPA7eStatus1_E", !6, i64 0}
!59 = !{!"_ZTSN13gjkepa2_impl25b3EPAE", !58, i64 0, !27, i64 8, !14, i64 64, !18, i64 80, !6, i64 96, !6, i64 2144, !7, i64 14432, !55, i64 14440, !55, i64 14456}
!60 = !{!59, !58, i64 0}
!61 = !{!59, !7, i64 14432}
!62 = !{!54, !54, i64 0}
!63 = !{!59, !7, i64 56}
!64 = !{!"_ZTSN13gjkepa2_impl25b3EPA5sFaceE", !14, i64 0, !18, i64 16, !6, i64 24, !6, i64 48, !6, i64 72, !6, i64 88, !6, i64 91}
!65 = !{!64, !18, i64 16}
!66 = !{!64, !6, i64 91}
!67 = !{!"_ZTSN13gjkepa2_impl25b3EPA8sHorizonE", !54, i64 0, !54, i64 8, !7, i64 16}
!68 = !{!67, !54, i64 0}
!69 = !{!67, !54, i64 8}
!70 = distinct !{!70, !48}
!71 = distinct !{!71, i1 true, !"_ZNK11b3Matrix3x314transposeTimesERKS_"}
!72 = distinct !{!72, !71, !"_ZNK11b3Matrix3x314transposeTimesERKS_: argument 0"}
!73 = distinct !{!73, i1 true, !"_ZNK11b3Transform12inverseTimesERKS_"}
!74 = distinct !{!74, !73, !"_ZNK11b3Transform12inverseTimesERKS_: argument 0"}
!75 = distinct !{!75, i1 true, !"_ZNK11b3Matrix3x314transposeTimesERKS_"}
!76 = distinct !{!76, !75, !"_ZNK11b3Matrix3x314transposeTimesERKS_: argument 0"}
!77 = !{!72}
!78 = !{!76, !74}
!79 = !{!74}
!80 = distinct !{!80, !48}
!81 = distinct !{!81, !48}
!82 = !{i64 0, i64 16, !36}
!83 = distinct !{!83, !48}
!84 = distinct !{!84, !48}
!85 = distinct !{!85, !48}
!86 = distinct !{!86, !48}
!87 = distinct !{!87, !48}
!88 = distinct !{!88, !48}
!89 = !{!59, !54, i64 14440}
!90 = !{!59, !7, i64 14448}
!91 = !{!59, !18, i64 80}
!92 = distinct !{!92, !48}
!93 = distinct !{!93, !48}
!94 = !{!59, !54, i64 14456}
!95 = !{!67, !7, i64 16}
end_hunk_1
