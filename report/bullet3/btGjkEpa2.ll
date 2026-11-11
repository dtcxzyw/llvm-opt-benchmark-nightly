Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btGjkEpa2?download=true
inline.NumInlined: 456
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btVector3 = type { [4 x float] }
%"struct.gjkepa2_impl::MinkowskiDiff" = type { [2 x ptr], %class.btMatrix3x3, %class.btTransform, { i64, i64 } }
%class.btMatrix3x3 = type { [3 x %class.btVector3] }
%class.btTransform = type { %class.btMatrix3x3, %class.btVector3 }
%"struct.gjkepa2_impl::GJK" = type <{ %"struct.gjkepa2_impl::MinkowskiDiff", %class.btVector3, float, [4 x i8], [2 x %"struct.gjkepa2_impl::GJK::sSimplex"], [4 x %"struct.gjkepa2_impl::GJK::sSV"], [4 x ptr], i32, i32, ptr, i32, [4 x i8] }>
%"struct.gjkepa2_impl::GJK::sSimplex" = type { [4 x ptr], [4 x float], i32 }
%"struct.gjkepa2_impl::GJK::sSV" = type { %class.btVector3, %class.btVector3 }
%"struct.gjkepa2_impl::EPA" = type { i32, %"struct.gjkepa2_impl::GJK::sSimplex", %class.btVector3, float, [128 x %"struct.gjkepa2_impl::GJK::sSV"], [4 x i8], [256 x %"struct.gjkepa2_impl::EPA::sFace"], i32, [4 x i8], %"struct.gjkepa2_impl::EPA::sList", %"struct.gjkepa2_impl::EPA::sList" }
%"struct.gjkepa2_impl::EPA::sFace" = type <{ %class.btVector3, float, [4 x i8], [3 x ptr], [3 x ptr], [2 x ptr], [3 x i8], i8, [4 x i8] }>
%"struct.gjkepa2_impl::EPA::sList" = type <{ ptr, i32, [4 x i8] }>
%"struct.gjkepa2_impl::EPA::sHorizon" = type <{ ptr, ptr, i32, [4 x i8] }>
%class.btSphereShape = type { %class.btConvexInternalShape }
%class.btConvexInternalShape = type { %class.btConvexShape, %class.btVector3, %class.btVector3, float, float }
%class.btConvexShape = type { %class.btCollisionShape }
%class.btCollisionShape = type { ptr, i32, ptr, i32, i32 }

$_ZN12gjkepa2_impl3GJK8EvaluateERKNS_13MinkowskiDiffERK9btVector3 = comdat any

$_ZN12gjkepa2_impl3EPA8EvaluateERNS_3GJKERK9btVector3 = comdat any

$_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_PfRj = comdat any

$_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_S3_PfRj = comdat any

$_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE = comdat any

$_ZN12gjkepa2_impl3GJK13EncloseOriginEv = comdat any

$_ZN12gjkepa2_impl3EPA7newfaceEPNS_3GJK3sSVES3_S3_b = comdat any

$_ZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonE = comdat any

$_ZZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonEE4i1m3 = comdat any

$_ZZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonEE4i2m3 = comdat any

@_ZZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonEE4i1m3 = linkonce_odr dso_local local_unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 0], comdat, align 4
@_ZZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonEE4i2m3 = linkonce_odr dso_local local_unnamed_addr constant [3 x i32] [i32 2, i32 0, i32 1], comdat, align 4
@_ZTV13btSphereShape = external constant { [25 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN15btGjkEpaSolver220StackSizeRequirementEv() local_unnamed_addr #0 align 2 {
bb.a:
  ret i32 29264
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN15btGjkEpaSolver28DistanceEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsE(ptr noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(56) initializes((0, 36)) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %class.btVector3, align 8           ; 5 uses
  %7 = alloca %"struct.gjkepa2_impl::MinkowskiDiff", align 8 ; 24 uses
  %8 = alloca %"struct.gjkepa2_impl::GJK", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call fastcc void @_ZN12gjkepa2_implL10InitializeEPK13btConvexShapeRK11btTransformS2_S5_RN15btGjkEpaSolver28sResultsERNS_13MinkowskiDiffEb(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(144) %7, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 440
  store i32 0, ptr %i.b, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store i32 2, ptr %i.c, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 444
  store i32 0, ptr %i.d, align 4, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 160
  store float 0.000000e+00, ptr %i.e, align 8, !tbaa !24
  %i.f = call noundef i32 @_ZN12gjkepa2_impl3GJK8EvaluateERKNS_13MinkowskiDiffERK9btVector3(ptr noundef nonnull align 8 dereferenceable(460) %8, ptr noundef nonnull align 8 dereferenceable(144) %7, ptr noundef nonnull align 4 dereferenceable(16) %4) ; 2 uses
  %i.g = icmp eq i32 %i.f, 0                      ; 2 uses
  br i1 %i.g, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 448 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !27
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 128 ; 2 uses
  %.elt2.i5.i = getelementptr inbounds nuw i8, ptr %7, i64 136 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 52
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 100
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 120
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3j.exit46, %.preheader
  %.sroa.12.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.gy, %_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3j.exit46 ] ; 3 uses
  %.sroa.1281.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.ee, %_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3j.exit46 ] ; 3 uses
  %i.ae = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.ed, %_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3j.exit46 ] ; 5 uses
  %i.af = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.gx, %_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3j.exit46 ] ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ai = extractelement <2 x float> %i.ae, i64 1
  %i.aj = extractelement <2 x float> %i.ae, i64 0
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = load <2 x float>, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !28
  %i.ao = load float, ptr %i.ah, align 4, !tbaa !28
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !28
  %i.ar = fmul float %i.ai, %i.aq
  %i.as = call float @llvm.fmuladd.f32(float %i.aj, float %i.ao, float %i.ar)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !28
  %i.av = call noundef float @llvm.fmuladd.f32(float %.sroa.1281.0.lcssa, float %i.au, float %i.as)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ax = load <2 x float>, ptr %1, align 4, !tbaa !28 ; 2 uses
  %i.ay = load <2 x float>, ptr %i.ag, align 4, !tbaa !28 ; 2 uses
  %i.az = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ba = shufflevector <2 x float> %i.ax, <2 x float> %i.ay, <2 x i32> <i32 1, i32 3>
  %i.bb = fmul <2 x float> %i.az, %i.ba
  %i.bc = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = shufflevector <2 x float> %i.ax, <2 x float> %i.ay, <2 x i32> <i32 0, i32 2>
  %i.be = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.bd, <2 x float> %i.bb)
  %i.bf = insertelement <2 x float> poison, float %.sroa.1281.0.lcssa, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = insertelement <2 x float> %i.al, float %i.an, i64 1
  %i.bi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.bh, <2 x float> %i.be)
  %i.bj = load <2 x float>, ptr %i.aw, align 4, !tbaa !28
  %i.bk = fadd <2 x float> %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !28
  %i.bn = fadd float %i.av, %i.bm
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bn, i64 0
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 4
  store <2 x float> %i.bk, ptr %i.bo, align 4
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.44.0..sroa_idx, align 4, !tbaa !29
  %i.bp = extractelement <2 x float> %i.af, i64 1
  %i.bq = extractelement <2 x float> %i.af, i64 0
  %i.br = load <2 x float>, ptr %i.ak, align 4
  %i.bs = load float, ptr %i.am, align 4, !tbaa !28
  %i.bt = load float, ptr %i.ah, align 4, !tbaa !28
  %i.bu = load float, ptr %i.ap, align 4, !tbaa !28
  %i.bv = fmul float %i.bp, %i.bu
  %i.bw = call float @llvm.fmuladd.f32(float %i.bq, float %i.bt, float %i.bv)
  %i.bx = load float, ptr %i.at, align 4, !tbaa !28
  %i.by = call noundef float @llvm.fmuladd.f32(float %.sroa.12.0.lcssa, float %i.bx, float %i.bw)
  %i.bz = load <2 x float>, ptr %1, align 4, !tbaa !28 ; 2 uses
  %i.ca = load <2 x float>, ptr %i.ag, align 4, !tbaa !28 ; 2 uses
  %i.cb = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cc = shufflevector <2 x float> %i.bz, <2 x float> %i.ca, <2 x i32> <i32 1, i32 3>
  %i.cd = fmul <2 x float> %i.cb, %i.cc
  %i.ce = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = shufflevector <2 x float> %i.bz, <2 x float> %i.ca, <2 x i32> <i32 0, i32 2>
  %i.cg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.cf, <2 x float> %i.cd)
  %i.ch = insertelement <2 x float> poison, float %.sroa.12.0.lcssa, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = insertelement <2 x float> %i.br, float %i.bs, i64 1
  %i.ck = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.cj, <2 x float> %i.cg)
  %i.cl = load <2 x float>, ptr %i.aw, align 4, !tbaa !28
  %i.cm = fadd <2 x float> %i.ck, %i.cl
  %i.cn = load float, ptr %i.bl, align 4, !tbaa !28
  %i.co = fadd float %i.by, %i.cn
  %.sroa.3.12.vec.insert.i4.i.i33 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.co, i64 0
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 20
  store <2 x float> %i.cm, ptr %i.cp, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 28
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i33, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !29
  %i.cq = fsub <2 x float> %i.ae, %i.af           ; 4 uses
  %i.cr = fsub float %.sroa.1281.0.lcssa, %.sroa.12.0.lcssa ; 4 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cr, i64 0
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 36
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !29
  %foldExtExtBinop = fmul <2 x float> %i.cq, %i.cq
  %i.ct = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.cu = extractelement <2 x float> %i.cq, i64 0 ; 2 uses
  %i.cv = call float @llvm.fmuladd.f32(float %i.cu, float %i.cu, float %i.ct)
  %i.cw = call noundef float @llvm.fmuladd.f32(float %i.cr, float %i.cr, float %i.cv)
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.cw) ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 52
  store float %sqrt.i, ptr %i.cx, align 4, !tbaa !32
  %i.cy = fcmp ogt float %sqrt.i, f0x38D1B717
  %i.cz = fdiv float 1.000000e+00, %sqrt.i
  %i.da = select i1 %i.cy, float %i.cz, float 1.000000e+00 ; 2 uses
  %i.db = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = fmul <2 x float> %i.cq, %i.dc
  store <2 x float> %i.dd, ptr %i.cs, align 4, !tbaa !28
  %i.de = fmul float %i.cr, %i.da
  store float %i.de, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !28
  br label %bb.h

bb.b:                                             ; preds = %.lr.ph, %_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3j.exit46
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3j.exit46 ] ; 4 uses
  %i.df = phi ptr [ %i.i, %.lr.ph ], [ %i.gz, %_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3j.exit46 ] ; 2 uses
  %.sroa.1281.090 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ee, %_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3j.exit46 ]
  %.sroa.12.085 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.gy, %_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3j.exit46 ]
  %i.dg = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.ed, %_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3j.exit46 ]
  %i.dh = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.gx, %_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3j.exit46 ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !28 ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !34
  %i.dn = load ptr, ptr %7, align 8, !tbaa !36
  %.unpack.i4.i = load i64, ptr %i.l, align 8, !tbaa !37 ; 3 uses
  %.unpack3.i6.i = load i64, ptr %.elt2.i5.i, align 8, !tbaa !37
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 %.unpack3.i6.i ; 2 uses
  %i.dp = and i64 %.unpack.i4.i, 1
  %.not.i7.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i7.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !39
  %i.dr = getelementptr i8, ptr %i.dq, i64 %.unpack.i4.i
  %i.ds = getelementptr i8, ptr %i.dr, i64 -1
  %i.dt = load ptr, ptr %i.ds, align 8, !nosanitize !40
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3j.exit

bb.d:                                             ; preds = %bb.b
  %i.du = inttoptr i64 %.unpack.i4.i to ptr
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3j.exit

end_hunk_0
begin_hunk_1_@_ZN12gjkepa2_impl3GJK13EncloseOriginEv:bb.a
bb.ai:                                            ; preds = %bb.ah
  %i.yz = load ptr, ptr %i.yx, align 8, !tbaa !39
  %i.za = getelementptr i8, ptr %i.yz, i64 %.unpack.i.i.i182
  %i.zb = getelementptr i8, ptr %i.za, i64 -1
  %i.zc = load ptr, ptr %i.zb, align 8, !nosanitize !40
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i186

bb.aj:                                            ; preds = %bb.ah
  %i.zd = inttoptr i64 %.unpack.i.i.i182 to ptr
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i186

_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i186: ; preds = %bb.aj, %bb.ai
  %i.ze = phi ptr [ %i.zc, %bb.ai ], [ %i.zd, %bb.aj ]
  %i.zf = call { <2 x float>, <2 x float> } %i.ze(ptr noundef nonnull align 8 dereferenceable(32) %i.yx, ptr noundef nonnull align 4 dereferenceable(32) %i.ym), !inline_history !1 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.ym, i64 4
  %i.zh = load float, ptr %i.ym, align 4, !tbaa !28
  %i.zi = load float, ptr %i.zg, align 4, !tbaa !28
  %i.zj = load float, ptr %.sroa.42.0..sroa_idx.i181, align 4, !tbaa !28
  %i.zk = load ptr, ptr %i.va, align 8, !tbaa !36
  %.unpack.i3.i.i187 = load i64, ptr %i.um, align 8, !tbaa !37 ; 3 uses
  %.unpack3.i5.i.i188 = load i64, ptr %.elt2.i.i.i156, align 8, !tbaa !37
  %i.zl = getelementptr inbounds i8, ptr %i.zk, i64 %.unpack3.i5.i.i188 ; 2 uses
  %i.zm = and i64 %.unpack.i3.i.i187, 1
  %.not.i6.i.i189 = icmp eq i64 %i.zm, 0
  br i1 %.not.i6.i.i189, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i186
  %i.zn = load ptr, ptr %i.zl, align 8, !tbaa !39
  %i.zo = getelementptr i8, ptr %i.zn, i64 %.unpack.i3.i.i187
  %i.zp = getelementptr i8, ptr %i.zo, i64 -1
  %i.zq = load ptr, ptr %i.zp, align 8, !nosanitize !40
  br label %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit203

bb.al:                                            ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i186
  %i.zr = inttoptr i64 %.unpack.i3.i.i187 to ptr
  br label %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit203

_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit203: ; preds = %bb.ak, %bb.al
  %i.zs = phi ptr [ %i.zq, %bb.ak ], [ %i.zr, %bb.al ]
  %i.zt = fneg float %i.zj                        ; 2 uses
  %i.zu = fneg float %i.zi                        ; 2 uses
  %i.zv = fneg float %i.zh                        ; 2 uses
  %i.zw = extractvalue { <2 x float>, <2 x float> } %i.zf, 1
  %i.zx = extractvalue { <2 x float>, <2 x float> } %i.zf, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.zy = load <2 x float>, ptr %i.vr, align 8
  %i.zz = load float, ptr %i.vu, align 8, !tbaa !28
  %i.aaa = load <2 x float>, ptr %i.vq, align 8, !tbaa !28 ; 2 uses
  %i.aab = load <2 x float>, ptr %i.vt, align 8, !tbaa !28 ; 2 uses
  %i.aac = shufflevector <2 x float> %i.aaa, <2 x float> %i.aab, <2 x i32> <i32 1, i32 3>
  %i.aad = insertelement <2 x float> poison, float %i.zu, i64 0
  %i.aae = shufflevector <2 x float> %i.aad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaf = fmul <2 x float> %i.aac, %i.aae
  %i.aag = shufflevector <2 x float> %i.aaa, <2 x float> %i.aab, <2 x i32> <i32 0, i32 2>
  %i.aah = insertelement <2 x float> poison, float %i.zv, i64 0
  %i.aai = shufflevector <2 x float> %i.aah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aag, <2 x float> %i.aai, <2 x float> %i.aaf)
  %i.aak = insertelement <2 x float> %i.zy, float %i.zz, i64 1
  %i.aal = insertelement <2 x float> poison, float %i.zt, i64 0
  %i.aam = shufflevector <2 x float> %i.aal, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aan = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aak, <2 x float> %i.aam, <2 x float> %i.aaj)
  %i.aao = load float, ptr %i.wk, align 8, !tbaa !28
  %i.aap = load float, ptr %i.wm, align 4, !tbaa !28
  %i.aaq = fmul float %i.aap, %i.zu
  %i.aar = call float @llvm.fmuladd.f32(float %i.aao, float %i.zv, float %i.aaq)
  %i.aas = load float, ptr %i.wq, align 8, !tbaa !28
  %i.aat = call noundef float @llvm.fmuladd.f32(float %i.aas, float %i.zt, float %i.aar)
  %.sroa.3.12.vec.insert.i.i.i.i192 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aat, i64 0
  store <2 x float> %i.aan, ptr %1, align 8
  %i.aau = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i.i192, ptr %i.aau, align 8
  %i.aav = call { <2 x float>, <2 x float> } %i.zs(ptr noundef nonnull align 8 dereferenceable(32) %i.zl, ptr noundef nonnull align 4 dereferenceable(16) %1), !inline_history !2 ; 2 uses
  %i.aaw = extractvalue { <2 x float>, <2 x float> } %i.aav, 0 ; 4 uses
  %i.aax = extractvalue { <2 x float>, <2 x float> } %i.aav, 1 ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i193 = extractelement <2 x float> %i.aaw, i64 0
  %.sroa.0.4.vec.extract.i.i.i194 = extractelement <2 x float> %i.aaw, i64 1
  %.sroa.5.8.vec.extract.i.i.i195 = extractelement <2 x float> %i.aax, i64 0
  %i.aay = load <2 x float>, ptr %i.wz, align 8
  %i.aaz = load float, ptr %i.xb, align 8, !tbaa !28
  %i.aba = load float, ptr %i.wy, align 8, !tbaa !28
  %i.abb = load float, ptr %i.xe, align 4, !tbaa !28
  %i.abc = fmul float %.sroa.0.4.vec.extract.i.i.i194, %i.abb
  %i.abd = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i.i.i193, float %i.aba, float %i.abc)
  %i.abe = load float, ptr %i.xi, align 8, !tbaa !28
  %i.abf = call noundef float @llvm.fmuladd.f32(float %.sroa.5.8.vec.extract.i.i.i195, float %i.abe, float %i.abd)
  %i.abg = load float, ptr %i.xm, align 8, !tbaa !28
  %i.abh = fadd float %i.abf, %i.abg
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  %i.abi = load <2 x float>, ptr %i.vp, align 8, !tbaa !28 ; 2 uses
  %i.abj = load <2 x float>, ptr %i.wx, align 8, !tbaa !28 ; 2 uses
  %i.abk = shufflevector <2 x float> %i.aaw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.abl = shufflevector <2 x float> %i.abi, <2 x float> %i.abj, <2 x i32> <i32 1, i32 3>
  %i.abm = fmul <2 x float> %i.abk, %i.abl
  %i.abn = shufflevector <2 x float> %i.aaw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abo = shufflevector <2 x float> %i.abi, <2 x float> %i.abj, <2 x i32> <i32 0, i32 2>
  %i.abp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abn, <2 x float> %i.abo, <2 x float> %i.abm)
  %i.abq = shufflevector <2 x float> %i.aax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abr = insertelement <2 x float> %i.aay, float %i.aaz, i64 1
  %i.abs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abq, <2 x float> %i.abr, <2 x float> %i.abp)
  %i.abt = load <2 x float>, ptr %i.xl, align 8, !tbaa !28
  %i.abu = fadd <2 x float> %i.abs, %i.abt
  %i.abv = fsub <2 x float> %i.zx, %i.abu
  %.sroa.515.8.vec.extract.i.i198 = extractelement <2 x float> %i.zw, i64 0
  %i.abw = fsub float %.sroa.515.8.vec.extract.i.i198, %i.abh
  %.sroa.3.12.vec.insert.i9.i.i201 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.abw, i64 0
  %i.abx = getelementptr inbounds nuw i8, ptr %i.ym, i64 16
  store <2 x float> %i.abv, ptr %i.abx, align 4
  %.sroa.4.0..sroa_idx.i202 = getelementptr inbounds nuw i8, ptr %i.ym, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i9.i.i201, ptr %.sroa.4.0..sroa_idx.i202, align 4, !tbaa !29
  %i.aby = call noundef zeroext i1 @_ZN12gjkepa2_impl3GJK13EncloseOriginEv(ptr noundef nonnull align 8 dereferenceable(460) %0)
  br i1 %i.aby, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit203
  %i.abz = load ptr, ptr %i.a, align 8, !tbaa !25 ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 48 ; 2 uses
  %i.acb = load i32, ptr %i.aca, align 8, !tbaa !27
  %i.acc = add i32 %i.acb, -1                     ; 2 uses
  store i32 %i.acc, ptr %i.aca, align 8, !tbaa !27
  %i.acd = zext i32 %i.acc to i64
  %i.ace = getelementptr inbounds nuw [8 x i8], ptr %i.abz, i64 %i.acd
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !34
  %i.acg = load i32, ptr %i.tz, align 8, !tbaa !21 ; 2 uses
  %i.ach = add i32 %i.acg, 1
  store i32 %i.ach, ptr %i.tz, align 8, !tbaa !21
  %i.aci = zext i32 %i.acg to i64
  %i.acj = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %i.aci
  store ptr %i.acf, ptr %i.acj, align 8, !tbaa !34
  br label %.thread

bb.an:                                            ; preds = %bb.a
  %i.ack = load ptr, ptr %i.b, align 8, !tbaa !34 ; 3 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 16
  %i.acm = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !34 ; 3 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 16
  %i.acp = load float, ptr %i.acl, align 4, !tbaa !28
  %i.acq = load float, ptr %i.aco, align 4, !tbaa !28 ; 3 uses
  %i.acr = fsub float %i.acp, %i.acq              ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %i.ack, i64 20
  %i.act = load float, ptr %i.acs, align 4, !tbaa !28
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acn, i64 20
  %i.acv = load float, ptr %i.acu, align 4, !tbaa !28 ; 3 uses
  %i.acw = fsub float %i.act, %i.acv              ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %i.ack, i64 24
  %i.acy = load float, ptr %i.acx, align 4, !tbaa !28
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acn, i64 24
  %i.ada = load float, ptr %i.acz, align 4, !tbaa !28 ; 3 uses
  %i.adb = fsub float %i.acy, %i.ada              ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !34 ; 3 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 16
  %i.adf = load float, ptr %i.ade, align 4, !tbaa !28
  %i.adg = fsub float %i.adf, %i.acq              ; 2 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.add, i64 20
  %i.adi = load float, ptr %i.adh, align 4, !tbaa !28
  %i.adj = fsub float %i.adi, %i.acv              ; 2 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.add, i64 24
  %i.adl = load float, ptr %i.adk, align 4, !tbaa !28
  %i.adm = fsub float %i.adl, %i.ada              ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !34 ; 3 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 16
  %i.adq = load float, ptr %i.adp, align 4, !tbaa !28
  %i.adr = fsub float %i.adq, %i.acq              ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.ado, i64 20
  %i.adt = load float, ptr %i.ads, align 4, !tbaa !28
  %i.adu = fsub float %i.adt, %i.acv              ; 2 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.ado, i64 24
  %i.adw = load float, ptr %i.adv, align 4, !tbaa !28
  %i.adx = fsub float %i.adw, %i.ada              ; 2 uses
  %i.ady = fmul float %i.acw, %i.adm
  %i.adz = fmul float %i.adb, %i.adg
  %i.aea = fmul float %i.adz, %i.adu
  %i.aeb = tail call float @llvm.fmuladd.f32(float %i.ady, float %i.adr, float %i.aea)
  %i.aec = fneg float %i.adm
  %i.aed = fmul float %i.acr, %i.aec
  %i.aee = tail call float @llvm.fmuladd.f32(float %i.aed, float %i.adu, float %i.aeb)
  %i.aef = fneg float %i.adg
  %i.aeg = fmul float %i.acw, %i.aef
  %i.aeh = tail call float @llvm.fmuladd.f32(float %i.aeg, float %i.adx, float %i.aee)
  %i.aei = fmul float %i.acr, %i.adj
  %i.aej = tail call float @llvm.fmuladd.f32(float %i.aei, float %i.adx, float %i.aeh)
  %i.aek = fneg float %i.adj
  %i.ael = fmul float %i.adb, %i.aek
  %i.aem = tail call noundef float @llvm.fmuladd.f32(float %i.ael, float %i.adr, float %i.aej)
  %i.aen = fcmp ueq float %i.aem, 0.000000e+00
  br i1 %i.aen, label %.thread, label %bb.ao

.thread:                                          ; preds = %bb.z, %.critedge, %bb.ab, %bb.am, %bb.an, %bb.a
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit176, %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit203, %bb.aa, %bb.l, %bb.an, %.thread
  %.7 = phi i1 [ false, %.thread ], [ true, %bb.l ], [ true, %bb.aa ], [ true, %bb.an ], [ true, %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit203 ], [ true, %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit176 ]
  ret i1 %.7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12gjkepa2_impl3EPA7newfaceEPNS_3GJK3sSVES3_S3_b(ptr noundef nonnull align 8 dereferenceable(28800) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28784 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 18 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 8 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !53 ; 3 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %.pre.i, ptr %i.f, align 8, !tbaa !53
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not12.i = icmp eq ptr %.pre.i, null
  br i1 %.not12.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %.pre.i, i64 80
  store ptr %i.g, ptr %i.h, align 8, !tbaa !53
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %bb.g, label %_ZN12gjkepa2_impl3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit

bb.g:                                             ; preds = %bb.f
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !53
  store ptr %i.k, ptr %i.a, align 8, !tbaa !47
  br label %_ZN12gjkepa2_impl3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit

_ZN12gjkepa2_impl3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit: ; preds = %bb.f, %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28792 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !48
  %i.n = add i32 %i.m, -1
  store i32 %i.n, ptr %i.l, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28768 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !53
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47   ; 3 uses
  store ptr %i.p, ptr %i.d, align 8, !tbaa !53
  %.not.i39 = icmp eq ptr %i.p, null
  br i1 %.not.i39, label %_ZN12gjkepa2_impl3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN12gjkepa2_impl3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store ptr %i.b, ptr %i.q, align 8, !tbaa !53
  br label %_ZN12gjkepa2_impl3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit

_ZN12gjkepa2_impl3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit: ; preds = %_ZN12gjkepa2_impl3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit, %bb.h
  store ptr %i.b, ptr %i.o, align 8, !tbaa !47
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28776 ; 4 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !48
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 91
  store i8 0, ptr %i.u, align 1, !tbaa !57
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %1, ptr %i.v, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %2, ptr %i.w, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %3, ptr %i.x, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = load float, ptr %i.y, align 4, !tbaa !28
  %i.ab = load float, ptr %i.z, align 4, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !28
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ah = load <2 x float>, ptr %i.ac, align 4, !tbaa !28 ; 2 uses
  %i.ai = load <2 x float>, ptr %i.ad, align 4, !tbaa !28 ; 3 uses
  %i.aj = fsub <2 x float> %i.ah, %i.ai           ; 2 uses
  %i.ak = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.al = insertelement <2 x float> %i.ak, float %i.aa, i64 1
  %i.am = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.an = insertelement <2 x float> %i.am, float %i.ab, i64 1 ; 2 uses
  %i.ao = fsub <2 x float> %i.al, %i.an           ; 2 uses
  %i.ap = load <2 x float>, ptr %i.ag, align 4, !tbaa !28 ; 2 uses
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
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.bc, float %i.ba) ; 9 uses
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bd, i64 0
  store <2 x float> %i.aw, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !29
  %6 = extractelement <2 x float> %i.aw, i64 1    ; 7 uses
  %7 = fmul float %6, %6
  %i.be = extractelement <2 x float> %i.aw, i64 0 ; 7 uses
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.be, float %i.be, float %7)
  %i.bg = tail call noundef float @llvm.fmuladd.f32(float %i.bd, float %i.bd, float %i.bf)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.bg) ; 3 uses
  %i.bh = fcmp ogt float %sqrt.i, f0x38D1B717
  br i1 %i.bh, label %bb.i, label %bb.o

bb.i:                                             ; preds = %_ZN12gjkepa2_impl3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %10 = load float, ptr %i.y, align 4, !tbaa !28  ; 15 uses
  %11 = load float, ptr %i.z, align 4, !tbaa !28  ; 16 uses
  %12 = fsub float %10, %11                       ; 6 uses
  %13 = load float, ptr %i.ac, align 4, !tbaa !28 ; 15 uses
  %14 = load float, ptr %i.ad, align 4, !tbaa !28 ; 16 uses
  %15 = fsub float %13, %14                       ; 6 uses
  %16 = load float, ptr %9, align 4, !tbaa !28    ; 15 uses
  %17 = load float, ptr %8, align 4, !tbaa !28    ; 16 uses
  %18 = fsub float %16, %17                       ; 6 uses
  %19 = fneg float %6                             ; 3 uses
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %i.bd, float %20)
  %22 = fneg float %i.bd                          ; 3 uses
  %23 = fmul float %12, %22
  %24 = tail call float @llvm.fmuladd.f32(float %18, float %i.be, float %23)
  %25 = fneg float %i.be                          ; 3 uses
  %26 = fmul float %15, %25
  %27 = tail call float @llvm.fmuladd.f32(float %12, float %6, float %26)
  %28 = fmul float %14, %24
  %29 = tail call float @llvm.fmuladd.f32(float %11, float %21, float %28)
  %30 = tail call noundef float @llvm.fmuladd.f32(float %17, float %27, float %29)
  %31 = fcmp olt float %30, 0.000000e+00
  br i1 %31, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %32 = fmul float %15, %15
  %33 = tail call float @llvm.fmuladd.f32(float %12, float %12, float %32)
  %34 = tail call noundef float @llvm.fmuladd.f32(float %18, float %18, float %33)
  %35 = fmul float %14, %15
  %36 = tail call float @llvm.fmuladd.f32(float %11, float %12, float %35)
  %37 = tail call noundef float @llvm.fmuladd.f32(float %17, float %18, float %36)
  %38 = fcmp ogt float %37, 0.000000e+00
  br i1 %38, label %39, label %bb.k

39:                                               ; preds = %bb.j
  %40 = fmul float %14, %14
  %41 = tail call float @llvm.fmuladd.f32(float %11, float %11, float %40)
  %42 = tail call noundef float @llvm.fmuladd.f32(float %17, float %17, float %41)
  br label %_ZN12gjkepa2_impl3EPA11getedgedistEPNS0_5sFaceEPNS_3GJK3sSVES5_Rf.exit.thread

bb.k:                                             ; preds = %bb.j
  %43 = fmul float %13, %15
  %44 = tail call float @llvm.fmuladd.f32(float %10, float %12, float %43)
  %45 = tail call noundef float @llvm.fmuladd.f32(float %16, float %18, float %44)
  %46 = fcmp olt float %45, 0.000000e+00
  br i1 %46, label %47, label %51

47:                                               ; preds = %bb.k
  %48 = fmul float %13, %13
  %49 = tail call float @llvm.fmuladd.f32(float %10, float %10, float %48)
  %50 = tail call noundef float @llvm.fmuladd.f32(float %16, float %16, float %49)
  br label %_ZN12gjkepa2_impl3EPA11getedgedistEPNS0_5sFaceEPNS_3GJK3sSVES5_Rf.exit.thread

51:                                               ; preds = %bb.k
  %52 = fmul float %13, %14
  %53 = tail call float @llvm.fmuladd.f32(float %11, float %10, float %52)
  %54 = tail call noundef float @llvm.fmuladd.f32(float %17, float %16, float %53) ; 2 uses
  %55 = fmul float %14, %14
  %56 = tail call float @llvm.fmuladd.f32(float %11, float %11, float %55)
  %57 = tail call noundef float @llvm.fmuladd.f32(float %17, float %17, float %56)
  %58 = fmul float %13, %13
  %59 = tail call float @llvm.fmuladd.f32(float %10, float %10, float %58)
  %60 = tail call noundef float @llvm.fmuladd.f32(float %16, float %16, float %59)
  %61 = fneg float %54
  %62 = fmul float %54, %61
  %63 = tail call float @llvm.fmuladd.f32(float %57, float %60, float %62)
  %64 = fdiv float %63, %34                       ; 2 uses
  %65 = fcmp ogt float %64, 0.000000e+00
  %.sroa.speculated.i = select i1 %65, float %64, float 0.000000e+00
  br label %_ZN12gjkepa2_impl3EPA11getedgedistEPNS0_5sFaceEPNS_3GJK3sSVES5_Rf.exit.thread

_ZN12gjkepa2_impl3EPA11getedgedistEPNS0_5sFaceEPNS_3GJK3sSVES5_Rf.exit.thread: ; preds = %39, %47, %51
  %.sink.i = phi float [ %42, %39 ], [ %.sroa.speculated.i, %51 ], [ %50, %47 ]
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %.sink.i)
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.bj = load float, ptr %i.ae, align 4, !tbaa !28 ; 15 uses
  %66 = fsub float %i.bj, %10                     ; 6 uses
  %i.bk = load float, ptr %i.ag, align 4, !tbaa !28 ; 15 uses
  %67 = fsub float %i.bk, %13                     ; 6 uses
  %i.bl = load float, ptr %5, align 4, !tbaa !28  ; 15 uses
  %68 = fsub float %i.bl, %16                     ; 6 uses
  %69 = fmul float %68, %19
  %70 = tail call float @llvm.fmuladd.f32(float %67, float %i.bd, float %69)
  %i.bm = fmul float %66, %22
  %i.bn = tail call float @llvm.fmuladd.f32(float %68, float %i.be, float %i.bm)
  %71 = fmul float %67, %25
  %72 = tail call float @llvm.fmuladd.f32(float %66, float %6, float %71)
  %73 = fmul float %13, %i.bn
  %i.bo = tail call float @llvm.fmuladd.f32(float %10, float %70, float %73)
  %74 = tail call noundef float @llvm.fmuladd.f32(float %16, float %72, float %i.bo)
  %75 = fcmp olt float %74, 0.000000e+00
  br i1 %75, label %76, label %bb.m

76:                                               ; preds = %bb.l
  %77 = fmul float %67, %67
  %78 = tail call float @llvm.fmuladd.f32(float %66, float %66, float %77)
  %79 = tail call noundef float @llvm.fmuladd.f32(float %68, float %68, float %78)
  %80 = fmul float %13, %67
  %81 = tail call float @llvm.fmuladd.f32(float %10, float %66, float %80)
  %82 = tail call noundef float @llvm.fmuladd.f32(float %16, float %68, float %81)
  %83 = fcmp ogt float %82, 0.000000e+00
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = fmul float %13, %13
  %86 = tail call float @llvm.fmuladd.f32(float %10, float %10, float %85)
  %87 = tail call noundef float @llvm.fmuladd.f32(float %16, float %16, float %86)
  br label %_ZN12gjkepa2_impl3EPA11getedgedistEPNS0_5sFaceEPNS_3GJK3sSVES5_Rf.exit49.thread

88:                                               ; preds = %76
  %89 = fmul float %i.bk, %67
  %90 = tail call float @llvm.fmuladd.f32(float %i.bj, float %66, float %89)
  %91 = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %68, float %90)
  %92 = fcmp olt float %91, 0.000000e+00
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = fmul float %i.bk, %i.bk
  %95 = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bj, float %94)
  %96 = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %i.bl, float %95)
  br label %_ZN12gjkepa2_impl3EPA11getedgedistEPNS0_5sFaceEPNS_3GJK3sSVES5_Rf.exit49.thread

97:                                               ; preds = %88
  %98 = fmul float %i.bk, %13
  %99 = tail call float @llvm.fmuladd.f32(float %10, float %i.bj, float %98)
  %100 = tail call noundef float @llvm.fmuladd.f32(float %16, float %i.bl, float %99) ; 2 uses
  %101 = fmul float %13, %13
  %102 = tail call float @llvm.fmuladd.f32(float %10, float %10, float %101)
  %103 = tail call noundef float @llvm.fmuladd.f32(float %16, float %16, float %102)
  %104 = fmul float %i.bk, %i.bk
  %105 = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bj, float %104)
  %106 = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %i.bl, float %105)
  %107 = fneg float %100
  %108 = fmul float %100, %107
  %109 = tail call float @llvm.fmuladd.f32(float %103, float %106, float %108)
  %110 = fdiv float %109, %79                     ; 2 uses
  %111 = fcmp ogt float %110, 0.000000e+00
  %.sroa.speculated.i45 = select i1 %111, float %110, float 0.000000e+00
  br label %_ZN12gjkepa2_impl3EPA11getedgedistEPNS0_5sFaceEPNS_3GJK3sSVES5_Rf.exit49.thread

_ZN12gjkepa2_impl3EPA11getedgedistEPNS0_5sFaceEPNS_3GJK3sSVES5_Rf.exit49.thread: ; preds = %84, %93, %97
  %.sink.i47 = phi float [ %87, %84 ], [ %.sroa.speculated.i45, %97 ], [ %96, %93 ]
  %sqrt.i.i48 = tail call float @llvm.sqrt.f32(float %.sink.i47)
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %112 = fsub float %11, %i.bj                    ; 6 uses
  %113 = fsub float %14, %i.bk                    ; 6 uses
  %114 = fsub float %17, %i.bl                    ; 6 uses
  %115 = fmul float %114, %19
  %116 = tail call float @llvm.fmuladd.f32(float %113, float %i.bd, float %115)
  %117 = fmul float %112, %22
  %118 = tail call float @llvm.fmuladd.f32(float %114, float %i.be, float %117)
  %119 = fmul float %113, %25
  %120 = tail call float @llvm.fmuladd.f32(float %112, float %6, float %119)
  %i.bp = fmul float %i.bk, %118
  %121 = tail call float @llvm.fmuladd.f32(float %i.bj, float %116, float %i.bp)
  %122 = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %120, float %121)
  %123 = fcmp olt float %122, 0.000000e+00
  br i1 %123, label %124, label %_ZN12gjkepa2_impl3EPA11getedgedistEPNS0_5sFaceEPNS_3GJK3sSVES5_Rf.exit54

124:                                              ; preds = %bb.m
  %125 = fmul float %113, %113
  %126 = tail call float @llvm.fmuladd.f32(float %112, float %112, float %125)
  %127 = tail call noundef float @llvm.fmuladd.f32(float %114, float %114, float %126)
  %128 = fmul float %i.bk, %113
  %129 = tail call float @llvm.fmuladd.f32(float %i.bj, float %112, float %128)
  %130 = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %114, float %129)
  %131 = fcmp ogt float %130, 0.000000e+00
  br i1 %131, label %132, label %136

132:                                              ; preds = %124
  %133 = fmul float %i.bk, %i.bk
  %134 = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bj, float %133)
  %135 = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %i.bl, float %134)
  br label %_ZN12gjkepa2_impl3EPA11getedgedistEPNS0_5sFaceEPNS_3GJK3sSVES5_Rf.exit54.thread

136:                                              ; preds = %124
  %137 = fmul float %14, %113
  %138 = tail call float @llvm.fmuladd.f32(float %11, float %112, float %137)
  %139 = tail call noundef float @llvm.fmuladd.f32(float %17, float %114, float %138)
  %140 = fcmp olt float %139, 0.000000e+00
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = fmul float %14, %14
  %143 = tail call float @llvm.fmuladd.f32(float %11, float %11, float %142)
  %144 = tail call noundef float @llvm.fmuladd.f32(float %17, float %17, float %143)
  br label %_ZN12gjkepa2_impl3EPA11getedgedistEPNS0_5sFaceEPNS_3GJK3sSVES5_Rf.exit54.thread

145:                                              ; preds = %136
  %146 = fmul float %14, %i.bk
  %147 = tail call float @llvm.fmuladd.f32(float %i.bj, float %11, float %146)
  %148 = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %17, float %147) ; 2 uses
  %149 = fmul float %i.bk, %i.bk
  %150 = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bj, float %149)
  %151 = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %i.bl, float %150)
  %152 = fmul float %14, %14
  %153 = tail call float @llvm.fmuladd.f32(float %11, float %11, float %152)
  %154 = tail call noundef float @llvm.fmuladd.f32(float %17, float %17, float %153)
  %155 = fneg float %148
  %156 = fmul float %148, %155
  %157 = tail call float @llvm.fmuladd.f32(float %151, float %154, float %156)
  %158 = fdiv float %157, %127                    ; 2 uses
  %159 = fcmp ogt float %158, 0.000000e+00
  %.sroa.speculated.i50 = select i1 %159, float %158, float 0.000000e+00
  br label %_ZN12gjkepa2_impl3EPA11getedgedistEPNS0_5sFaceEPNS_3GJK3sSVES5_Rf.exit54.thread

_ZN12gjkepa2_impl3EPA11getedgedistEPNS0_5sFaceEPNS_3GJK3sSVES5_Rf.exit54.thread: ; preds = %132, %141, %145
  %.sink.i52 = phi float [ %135, %132 ], [ %.sroa.speculated.i50, %145 ], [ %144, %141 ]
  %sqrt.i.i53 = tail call float @llvm.sqrt.f32(float %.sink.i52)
  br label %bb.n

_ZN12gjkepa2_impl3EPA11getedgedistEPNS0_5sFaceEPNS_3GJK3sSVES5_Rf.exit54: ; preds = %bb.m
  %160 = fmul float %14, %6
  %161 = tail call float @llvm.fmuladd.f32(float %11, float %i.be, float %160)
  %162 = tail call noundef float @llvm.fmuladd.f32(float %17, float %i.bd, float %161)
  %163 = fdiv float %162, %sqrt.i
  br label %bb.n

bb.n:                                             ; preds = %_ZN12gjkepa2_impl3EPA11getedgedistEPNS0_5sFaceEPNS_3GJK3sSVES5_Rf.exit54.thread, %_ZN12gjkepa2_impl3EPA11getedgedistEPNS0_5sFaceEPNS_3GJK3sSVES5_Rf.exit49.thread, %_ZN12gjkepa2_impl3EPA11getedgedistEPNS0_5sFaceEPNS_3GJK3sSVES5_Rf.exit.thread, %_ZN12gjkepa2_impl3EPA11getedgedistEPNS0_5sFaceEPNS_3GJK3sSVES5_Rf.exit54
  %sqrt.i.i53.sink = phi float [ %sqrt.i.i53, %_ZN12gjkepa2_impl3EPA11getedgedistEPNS0_5sFaceEPNS_3GJK3sSVES5_Rf.exit54.thread ], [ %sqrt.i.i48, %_ZN12gjkepa2_impl3EPA11getedgedistEPNS0_5sFaceEPNS_3GJK3sSVES5_Rf.exit49.thread ], [ %sqrt.i.i, %_ZN12gjkepa2_impl3EPA11getedgedistEPNS0_5sFaceEPNS_3GJK3sSVES5_Rf.exit.thread ], [ %163, %_ZN12gjkepa2_impl3EPA11getedgedistEPNS0_5sFaceEPNS_3GJK3sSVES5_Rf.exit54 ] ; 2 uses
  store float %sqrt.i.i53.sink, ptr %i.bi, align 8, !tbaa !28
  %164 = fdiv float 1.000000e+00, %sqrt.i         ; 2 uses
  %165 = insertelement <2 x float> poison, float %164, i64 0
  %166 = shufflevector <2 x float> %165, <2 x float> poison, <2 x i32> zeroinitializer
  %167 = fmul <2 x float> %i.aw, %166
  store <2 x float> %167, ptr %i.b, align 8, !tbaa !28
  %168 = fmul float %164, %i.bd
  store float %168, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !28
  %169 = fcmp oge float %sqrt.i.i53.sink, f0xB727C5AC
  %or.cond.not = select i1 %4, i1 true, i1 %169
  br i1 %or.cond.not, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN12gjkepa2_impl3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit
  %storemerge = phi i32 [ 3, %bb.n ], [ 2, %_ZN12gjkepa2_impl3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit ]
  store i32 %storemerge, ptr %0, align 8, !tbaa !51
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  %.not.i45 = icmp eq ptr %i.bq, null
  %.pre.i46 = load ptr, ptr %i.c, align 8, !tbaa !53 ; 3 uses
  br i1 %.not.i45, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  store ptr %.pre.i46, ptr %i.br, align 8, !tbaa !53
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.not12.i47 = icmp eq ptr %.pre.i46, null
  br i1 %.not12.i47, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.bt = getelementptr inbounds nuw i8, ptr %.pre.i46, i64 80
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !53
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bu = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.bv = icmp eq ptr %i.b, %i.bu
  br i1 %i.bv, label %bb.t, label %_ZN12gjkepa2_impl3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit48

bb.t:                                             ; preds = %bb.s
  %i.bw = load ptr, ptr %i.d, align 8, !tbaa !53
  store ptr %i.bw, ptr %i.o, align 8, !tbaa !47
  br label %_ZN12gjkepa2_impl3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit48

_ZN12gjkepa2_impl3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit48: ; preds = %bb.s, %bb.t
  %i.bx = load i32, ptr %i.r, align 8, !tbaa !48
  %i.by = add i32 %i.bx, -1
  store i32 %i.by, ptr %i.r, align 8, !tbaa !48
  store ptr null, ptr %i.c, align 8, !tbaa !53
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !47  ; 3 uses
  store ptr %i.bz, ptr %i.d, align 8, !tbaa !53
  %.not.i49 = icmp eq ptr %i.bz, null
  br i1 %.not.i49, label %_ZN12gjkepa2_impl3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit50, label %bb.u

bb.u:                                             ; preds = %_ZN12gjkepa2_impl3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit48
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  store ptr %i.b, ptr %i.ca, align 8, !tbaa !53
  br label %_ZN12gjkepa2_impl3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit50

_ZN12gjkepa2_impl3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit50: ; preds = %_ZN12gjkepa2_impl3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit48, %bb.u
  store ptr %i.b, ptr %i.a, align 8, !tbaa !47
  %i.cb = load i32, ptr %i.l, align 8, !tbaa !48
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.l, align 8, !tbaa !48
  br label %bb.w

bb.v:                                             ; preds = %bb.a
  store i32 5, ptr %0, align 8, !tbaa !51
  br label %bb.w

bb.w:                                             ; preds = %_ZN12gjkepa2_impl3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit50, %bb.n, %bb.v
  %.1 = phi ptr [ null, %bb.v ], [ null, %_ZN12gjkepa2_impl3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit50 ], [ %i.b, %bb.n ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonE(ptr noundef nonnull align 8 dereferenceable(28800) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(20) %5) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 91 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !57
  %i.c = zext i8 %i.b to i32
  %.not = icmp eq i32 %1, %i.c
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i32 %4 to i64                       ; 5 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonEE4i1m3, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !44   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load float, ptr %3, align 4, !tbaa !28
  %i.i = load float, ptr %i.g, align 4, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.m = load float, ptr %i.l, align 4, !tbaa !28
  %i.n = fmul float %i.k, %i.m
  %i.o = tail call float @llvm.fmuladd.f32(float %i.h, float %i.i, float %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load float, ptr %i.r, align 4, !tbaa !28
  %i.t = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.s, float %i.o)
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load float, ptr %i.u, align 8, !tbaa !56
  %i.w = fsub float %i.t, %i.v
  %i.x = fcmp olt float %i.w, f0xB727C5AC
  br i1 %i.x, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.z = zext i32 %i.f to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.d
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !34
  %i.ae = tail call noundef ptr @_ZN12gjkepa2_impl3EPA7newfaceEPNS_3GJK3sSVES3_S3_b(ptr noundef nonnull align 8 dereferenceable(28800) %0, ptr noundef %i.ab, ptr noundef %i.ad, ptr noundef nonnull %2, i1 noundef zeroext false) ; 9 uses
  %.not53 = icmp eq ptr %i.ae, null
  br i1 %.not53, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = trunc i32 %4 to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store ptr %3, ptr %i.ah, align 8, !tbaa !53
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.d
  store i8 0, ptr %i.aj, align 1, !tbaa !29
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.d
  store ptr %i.ae, ptr %i.al, align 8, !tbaa !53
  %i.am = load ptr, ptr %5, align 8, !tbaa !59    ; 4 uses
  %.not54 = icmp eq ptr %i.am, null
  br i1 %.not54, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 89
  store i8 2, ptr %i.an, align 1, !tbaa !29
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  store ptr %i.ae, ptr %i.ao, align 8, !tbaa !53
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 90
  store i8 1, ptr %i.ap, align 2, !tbaa !29
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  store ptr %i.am, ptr %i.aq, align 8, !tbaa !53
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ae, ptr %i.ar, align 8, !tbaa !60
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.ae, ptr %5, align 8, !tbaa !59
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !96
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 8, !tbaa !96
  br label %.critedge

bb.h:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonEE4i2m3, i64 %i.d
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !44
  %i.ax = trunc i32 %1 to i8
  store i8 %i.ax, ptr %i.a, align 1, !tbaa !57
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.az = zext i32 %i.f to i64                    ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !53
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !29
  %i.bf = zext i8 %i.be to i32
  %i.bg = tail call noundef zeroext i1 @_ZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonE(ptr noundef nonnull align 8 dereferenceable(28800) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %i.bb, i32 noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(20) %5)
  br i1 %i.bg, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.bh = zext i32 %i.aw to i64                   ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !53
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bh
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !29
  %i.bm = zext i8 %i.bl to i32
  %i.bn = tail call noundef zeroext i1 @_ZN12gjkepa2_impl3EPA6expandEjPNS_3GJK3sSVEPNS0_5sFaceEjRNS0_8sHorizonE(ptr noundef nonnull align 8 dereferenceable(28800) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %i.bj, i32 noundef %i.bm, ptr noundef nonnull align 8 dereferenceable(20) %5)
  br i1 %i.bn, label %.critedge56, label %.critedge

.critedge56:                                      ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 28768 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 4 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !53 ; 2 uses
  %.not.i = icmp eq ptr %i.br, null
  %.pre.i = load ptr, ptr %i.bp, align 8, !tbaa !53 ; 3 uses
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.critedge56
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 72
  store ptr %.pre.i, ptr %i.bs, align 8, !tbaa !53
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge56
  %.not12.i = icmp eq ptr %.pre.i, null
  br i1 %.not12.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !53
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre.i, i64 80
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !53
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bv = load ptr, ptr %i.bo, align 8, !tbaa !47
  %i.bw = icmp eq ptr %3, %i.bv
  br i1 %i.bw, label %bb.n, label %_ZN12gjkepa2_impl3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit

bb.n:                                             ; preds = %bb.m
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !53
  store ptr %i.bx, ptr %i.bo, align 8, !tbaa !47
  br label %_ZN12gjkepa2_impl3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit

_ZN12gjkepa2_impl3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit: ; preds = %bb.m, %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 28776 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !48
  %i.ca = add i32 %i.bz, -1
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !48
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 28784 ; 2 uses
  store ptr null, ptr %i.bp, align 8, !tbaa !53
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !47 ; 3 uses
  store ptr %i.cc, ptr %i.bq, align 8, !tbaa !53
  %.not.i57 = icmp eq ptr %i.cc, null
  br i1 %.not.i57, label %_ZN12gjkepa2_impl3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit, label %bb.o

bb.o:                                             ; preds = %_ZN12gjkepa2_impl3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 72
  store ptr %3, ptr %i.cd, align 8, !tbaa !53
  br label %_ZN12gjkepa2_impl3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit

_ZN12gjkepa2_impl3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit: ; preds = %_ZN12gjkepa2_impl3EPA6removeERNS0_5sListEPNS0_5sFaceE.exit, %bb.o
  store ptr %3, ptr %i.cb, align 8, !tbaa !47
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 28792 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !48
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 8, !tbaa !48
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.i, %bb.c, %bb.a, %_ZN12gjkepa2_impl3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit, %bb.g
  %.4 = phi i1 [ true, %_ZN12gjkepa2_impl3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit ], [ true, %bb.g ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.i ], [ false, %bb.h ]
  ret i1 %.4
}

declare void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null, null}
!1 = distinct !{ptr @_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE, null, null}
!2 = distinct !{ptr @_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE, null, null}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"_ZTS11btMatrix3x3", !8, i64 0}
!13 = !{!"_ZTS9btVector3", !8, i64 0}
!14 = !{!"_ZTS11btTransform", !12, i64 0, !13, i64 48}
!15 = !{!"_ZTSN12gjkepa2_impl13MinkowskiDiffE", !8, i64 0, !12, i64 16, !14, i64 64, !8, i64 128}
!16 = !{!"float", !8, i64 0}
!17 = !{!"any pointer", !8, i64 0}
!18 = !{!"p1 _ZTSN12gjkepa2_impl3GJK8sSimplexE", !17, i64 0}
!19 = !{!"_ZTSN12gjkepa2_impl3GJK7eStatus1_E", !8, i64 0}
!20 = !{!"_ZTSN12gjkepa2_impl3GJKE", !15, i64 0, !13, i64 144, !16, i64 160, !8, i64 168, !8, i64 280, !8, i64 408, !9, i64 440, !9, i64 444, !18, i64 448, !19, i64 456}
!21 = !{!20, !9, i64 440}
!22 = !{!20, !19, i64 456}
!23 = !{!20, !9, i64 444}
!24 = !{!20, !16, i64 160}
!25 = !{!20, !18, i64 448}
!26 = !{!"_ZTSN12gjkepa2_impl3GJK8sSimplexE", !8, i64 0, !8, i64 32, !9, i64 48}
!27 = !{!26, !9, i64 48}
!28 = !{!16, !16, i64 0}
!29 = !{!8, !8, i64 0}
!30 = !{!"_ZTSN15btGjkEpaSolver28sResults7eStatusE", !8, i64 0}
!31 = !{!"_ZTSN15btGjkEpaSolver28sResultsE", !30, i64 0, !8, i64 4, !13, i64 36, !16, i64 52}
!32 = !{!31, !16, i64 52}
!33 = !{!"p1 _ZTSN12gjkepa2_impl3GJK3sSVE", !17, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"p1 _ZTS13btConvexShape", !17, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!15, !8, i64 128}
!38 = !{!"vtable pointer", !7, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!31, !30, i64 0}
!43 = !{i64 0, i64 16, !29}
!44 = !{!9, !9, i64 0}
!45 = !{!"p1 _ZTSN12gjkepa2_impl3EPA5sFaceE", !17, i64 0}
!46 = !{!"_ZTSN12gjkepa2_impl3EPA5sListE", !45, i64 0, !9, i64 8}
!47 = !{!46, !45, i64 0}
!48 = !{!46, !9, i64 8}
!49 = !{!"_ZTSN12gjkepa2_impl3EPA7eStatus1_E", !8, i64 0}
!50 = !{!"_ZTSN12gjkepa2_impl3EPAE", !49, i64 0, !26, i64 8, !13, i64 64, !16, i64 80, !8, i64 84, !8, i64 4184, !9, i64 28760, !46, i64 28768, !46, i64 28784}
!51 = !{!50, !49, i64 0}
!52 = !{!50, !9, i64 28760}
!53 = !{!45, !45, i64 0}
!54 = !{!50, !9, i64 56}
!55 = !{!"_ZTSN12gjkepa2_impl3EPA5sFaceE", !13, i64 0, !16, i64 16, !8, i64 24, !8, i64 48, !8, i64 72, !8, i64 88, !8, i64 91}
!56 = !{!55, !16, i64 16}
!57 = !{!55, !8, i64 91}
!58 = !{!"_ZTSN12gjkepa2_impl3EPA8sHorizonE", !45, i64 0, !45, i64 8, !9, i64 16}
!59 = !{!58, !45, i64 0}
!60 = !{!58, !45, i64 8}
!61 = distinct !{null, null}
!62 = distinct !{!62, !41}
!63 = distinct !{!63, i1 true, !"_ZNK11btMatrix3x314transposeTimesERKS_"}
!64 = distinct !{!64, !63, !"_ZNK11btMatrix3x314transposeTimesERKS_: argument 0"}
!65 = distinct !{!65, i1 true, !"_ZNK11btTransform12inverseTimesERKS_"}
!66 = distinct !{!66, !65, !"_ZNK11btTransform12inverseTimesERKS_: argument 0"}
!67 = distinct !{!67, i1 true, !"_ZNK11btMatrix3x314transposeTimesERKS_"}
!68 = distinct !{!68, !67, !"_ZNK11btMatrix3x314transposeTimesERKS_: argument 0"}
!69 = !{!64}
!70 = !{!68, !66}
!71 = !{!66}
!72 = distinct !{!72, !41}
!73 = distinct !{!73, !41}
!74 = distinct !{!74, !41}
!75 = distinct !{!75, !41}
!76 = distinct !{!76, !41}
!77 = distinct !{!77, !41}
!78 = distinct !{!78, !41}
!79 = distinct !{!79, !41}
!80 = !{!50, !45, i64 28768}
!81 = !{!50, !9, i64 28776}
!82 = !{!50, !16, i64 80}
!83 = distinct !{null}
!84 = distinct !{!84, !41}
!85 = !{!"_ZTS16btCollisionShape", !9, i64 8, !17, i64 16, !9, i64 24, !9, i64 28}
!86 = !{!85, !9, i64 8}
!87 = !{!"_ZTS13btConvexShape", !85, i64 0}
!88 = !{!"_ZTS21btConvexInternalShape", !87, i64 0, !13, i64 32, !13, i64 48, !16, i64 64, !16, i64 68}
!89 = !{!88, !16, i64 64}
!90 = !{!88, !16, i64 68}
!91 = distinct !{null, null}
!92 = distinct !{null, null}
!93 = distinct !{!93, !41}
!94 = distinct !{!94, !41}
!95 = !{!50, !45, i64 28784}
!96 = !{!58, !9, i64 16}
end_hunk_1
