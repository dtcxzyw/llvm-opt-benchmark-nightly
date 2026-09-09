Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMinkowskiSumShape?download=true
inline.NumInlined: 72
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btVector3 = type { [4 x float] }
%class.btTransform = type { %class.btMatrix3x3, %class.btVector3 }
%class.btMatrix3x3 = type { [3 x %class.btVector3] }

$_ZN19btMinkowskiSumShapeD0Ev = comdat any

$_ZNK21btConvexInternalShape7getAabbERK11btTransformR9btVector3S4_ = comdat any

$_ZNK21btConvexInternalShape15getLocalScalingEv = comdat any

$_ZNK19btMinkowskiSumShape7getNameEv = comdat any

$_ZNK16btCollisionShape38getAnisotropicRollingFrictionDirectionEv = comdat any

$_ZN21btConvexInternalShape9setMarginEf = comdat any

$_ZNK21btConvexInternalShape28calculateSerializeBufferSizeEv = comdat any

$_ZNK21btConvexInternalShape9serializeEPvP12btSerializer = comdat any

$_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv = comdat any

$_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3 = comdat any

$__clang_call_terminate = comdat any

@_ZTV19btMinkowskiSumShape = dso_local constant { [25 x ptr] } { [25 x ptr] [ptr null, ptr @_ZTI19btMinkowskiSumShape, ptr @_ZN13btConvexShapeD2Ev, ptr @_ZN19btMinkowskiSumShapeD0Ev, ptr @_ZNK21btConvexInternalShape7getAabbERK11btTransformR9btVector3S4_, ptr @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf, ptr @_ZNK16btCollisionShape20getAngularMotionDiscEv, ptr @_ZNK16btCollisionShape27getContactBreakingThresholdEf, ptr @_ZN21btConvexInternalShape15setLocalScalingERK9btVector3, ptr @_ZNK21btConvexInternalShape15getLocalScalingEv, ptr @_ZNK19btMinkowskiSumShape21calculateLocalInertiaEfR9btVector3, ptr @_ZNK19btMinkowskiSumShape7getNameEv, ptr @_ZNK16btCollisionShape38getAnisotropicRollingFrictionDirectionEv, ptr @_ZN21btConvexInternalShape9setMarginEf, ptr @_ZNK19btMinkowskiSumShape9getMarginEv, ptr @_ZNK21btConvexInternalShape28calculateSerializeBufferSizeEv, ptr @_ZNK21btConvexInternalShape9serializeEPvP12btSerializer, ptr @_ZNK16btCollisionShape20serializeSingleShapeEP12btSerializer, ptr @_ZNK21btConvexInternalShape24localGetSupportingVertexERK9btVector3, ptr @_ZNK19btMinkowskiSumShape37localGetSupportingVertexWithoutMarginERK9btVector3, ptr @_ZNK13btConvexShape7projectERK11btTransformRK9btVector3RfS6_RS3_S7_, ptr @_ZNK19btMinkowskiSumShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i, ptr @_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_, ptr @_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv, ptr @_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3] }, align 8
@_ZTI19btMinkowskiSumShape = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS19btMinkowskiSumShape, ptr @_ZTI21btConvexInternalShape }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS19btMinkowskiSumShape = dso_local constant [22 x i8] c"19btMinkowskiSumShape\00", align 1
@_ZTI21btConvexInternalShape = external constant ptr
@.str = private unnamed_addr constant [13 x i8] c"MinkowskiSum\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"btConvexInternalShapeData\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN19btMinkowskiSumShapeC1EPK13btConvexShapeS2_ = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN19btMinkowskiSumShapeC2EPK13btConvexShapeS2_

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN19btMinkowskiSumShapeC2EPK13btConvexShapeS2_(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTV19btMinkowskiSumShape, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %1, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %2, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 16, ptr %i.e, align 8, !tbaa !26
  store float 1.000000e+00, ptr %i.a, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 4, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.i, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.j, i8 0, i64 20, i1 false)
  store float 1.000000e+00, ptr %i.b, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 156
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.l, align 4, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.n, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 180
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.o, i8 0, i64 20, i1 false)
  ret void
}

declare void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK19btMinkowskiSumShape37localGetSupportingVertexWithoutMarginERK9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 8           ; 5 uses
  %3 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.e, align 4, !tbaa !23 ; 2 uses
  %i.i = load float, ptr %1, align 4, !tbaa !23   ; 2 uses
  %i.j = load float, ptr %i.g, align 4, !tbaa !23 ; 2 uses
  %i.k = load <2 x float>, ptr %i.a, align 8, !tbaa !23
  %i.l = load <2 x float>, ptr %i.d, align 8, !tbaa !23
  %i.m = insertelement <2 x float> poison, float %i.h, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x float> %i.n, %i.l
  %i.p = insertelement <2 x float> poison, float %i.i, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %i.q, <2 x float> %i.o)
  %i.s = load <2 x float>, ptr %i.f, align 8, !tbaa !23
  %i.t = insertelement <2 x float> poison, float %i.j, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.u, <2 x float> %i.r)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.x = load float, ptr %i.w, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.z = load float, ptr %i.y, align 8, !tbaa !23
  %i.aa = fmul float %i.h, %i.z
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.x, float %i.i, float %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !23
  %i.ae = tail call noundef float @llvm.fmuladd.f32(float %i.ad, float %i.j, float %i.ab)
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ae, i64 0
  store <2 x float> %i.v, ptr %2, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.af, align 8
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 136
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call { <2 x float>, <2 x float> } %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %2) ; 2 uses
  %i.ak = extractvalue { <2 x float>, <2 x float> } %i.aj, 0 ; 4 uses
  %i.al = extractvalue { <2 x float>, <2 x float> } %i.aj, 1 ; 2 uses
  %i.am = load float, ptr %i.w, align 8, !tbaa !23
  %i.an = load float, ptr %i.y, align 8, !tbaa !23
  %i.ao = load float, ptr %i.ac, align 8, !tbaa !23
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 124
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %4 = load <3 x float>, ptr %1, align 4, !tbaa !23
  %5 = fneg <3 x float> %4                        ; 6 uses
  %i.ax = load <2 x float>, ptr %i.as, align 8, !tbaa !23
  %i.ay = load <2 x float>, ptr %i.av, align 8, !tbaa !23
  %6 = shufflevector <3 x float> %5, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.az = fmul <2 x float> %i.ay, %6
  %i.ba = shufflevector <3 x float> %5, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.ba, <2 x float> %i.az)
  %i.bc = load <2 x float>, ptr %i.aw, align 8, !tbaa !23
  %7 = shufflevector <3 x float> %5, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %7, <2 x float> %i.bb)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bf = load float, ptr %i.be, align 8, !tbaa !23
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !23
  %8 = extractelement <3 x float> %5, i64 1
  %i.bi = fmul float %i.bh, %8
  %9 = extractelement <3 x float> %5, i64 0
  %i.bj = call float @llvm.fmuladd.f32(float %i.bf, float %9, float %i.bi)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !23
  %10 = extractelement <3 x float> %5, i64 2
  %i.bm = call noundef float @llvm.fmuladd.f32(float %i.bl, float %10, float %i.bj)
  %.sroa.3.12.vec.insert.i10 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bm, i64 0
  store <2 x float> %i.bd, ptr %3, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i10, ptr %i.bn, align 8
  %i.bo = load ptr, ptr %i.au, align 8, !tbaa !10
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 136
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.bt = load <2 x float>, ptr %i.d, align 8, !tbaa !23 ; 2 uses
  %i.bu = load <2 x float>, ptr %i.f, align 8, !tbaa !23 ; 2 uses
  %i.bv = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bw = shufflevector <2 x float> %i.bt, <2 x float> %i.bu, <2 x i32> <i32 1, i32 3>
  %i.bx = fmul <2 x float> %i.bv, %i.bw
  %i.by = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = shufflevector <2 x float> %i.bt, <2 x float> %i.bu, <2 x i32> <i32 0, i32 2>
  %i.ca = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.bz, <2 x float> %i.bx)
  %i.cb = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = insertelement <2 x float> poison, float %i.an, i64 0
  %i.cd = insertelement <2 x float> %i.cc, float %i.ao, i64 1
  %i.ce = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.cd, <2 x float> %i.ca)
  %i.cf = load <2 x float>, ptr %i.ar, align 4, !tbaa !23
  %i.cg = fadd <2 x float> %i.ce, %i.cf
  %i.ch = load <2 x float>, ptr %i.a, align 8, !tbaa !23 ; 2 uses
  %i.ci = call { <2 x float>, <2 x float> } %i.bq(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 4 dereferenceable(16) %3) ; 2 uses
  %i.cj = extractvalue { <2 x float>, <2 x float> } %i.ci, 0 ; 4 uses
  %i.ck = extractvalue { <2 x float>, <2 x float> } %i.ci, 1 ; 2 uses
  %i.cl = load <2 x float>, ptr %i.as, align 8, !tbaa !23 ; 2 uses
  %i.cm = shufflevector <2 x float> %i.ak, <2 x float> %i.cj, <2 x i32> <i32 1, i32 3>
  %i.cn = shufflevector <2 x float> %i.ch, <2 x float> %i.cl, <2 x i32> <i32 1, i32 3>
  %i.co = fmul <2 x float> %i.cm, %i.cn
  %i.cp = shufflevector <2 x float> %i.ak, <2 x float> %i.cj, <2 x i32> <i32 0, i32 2>
  %i.cq = shufflevector <2 x float> %i.ch, <2 x float> %i.cl, <2 x i32> <i32 0, i32 2>
  %i.cr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cp, <2 x float> %i.cq, <2 x float> %i.co)
  %i.cs = load float, ptr %i.be, align 8, !tbaa !23
  %i.ct = shufflevector <2 x float> %i.al, <2 x float> %i.ck, <2 x i32> <i32 0, i32 2>
  %i.cu = insertelement <2 x float> poison, float %i.am, i64 0
  %i.cv = insertelement <2 x float> %i.cu, float %i.cs, i64 1
  %i.cw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.cv, <2 x float> %i.cr)
  %i.cx = load <2 x float>, ptr %i.av, align 8, !tbaa !23 ; 2 uses
  %i.cy = load float, ptr %i.bg, align 8, !tbaa !23
  %i.cz = load <2 x float>, ptr %i.aw, align 8, !tbaa !23 ; 2 uses
  %i.da = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.db = shufflevector <2 x float> %i.cx, <2 x float> %i.cz, <2 x i32> <i32 1, i32 3>
  %i.dc = fmul <2 x float> %i.da, %i.db
  %i.dd = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = shufflevector <2 x float> %i.cx, <2 x float> %i.cz, <2 x i32> <i32 0, i32 2>
  %i.df = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.de, <2 x float> %i.dc)
  %i.dg = load float, ptr %i.bk, align 8, !tbaa !23
  %i.dh = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.dj = insertelement <2 x float> %i.di, float %i.dg, i64 1
  %i.dk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.dj, <2 x float> %i.df)
  %i.dl = load float, ptr %i.br, align 8, !tbaa !23
  %i.dm = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.dn = insertelement <2 x float> %i.dm, float %i.dl, i64 1
  %i.do = fadd <2 x float> %i.cw, %i.dn           ; 2 uses
  %i.dp = load <2 x float>, ptr %i.bs, align 4, !tbaa !23
  %i.dq = fadd <2 x float> %i.dk, %i.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %shift = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.do, %shift
  %i.dr = fsub <2 x float> %i.cg, %i.dq           ; 2 uses
  %i.ds = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.dr, <2 x i32> <i32 0, i32 2>
  %i.dt = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.dr, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i21 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.ds, 0
  %.fca.1.insert.i22 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i21, <2 x float> %i.dt, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i22
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK19btMinkowskiSumShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv
  %i.c = load ptr, ptr %0, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call { <2 x float>, <2 x float> } %i.e(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.b) ; 2 uses
  %i.g = extractvalue { <2 x float>, <2 x float> } %i.f, 0
  %i.h = extractvalue { <2 x float>, <2 x float> } %i.f, 1
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  store <2 x float> %i.g, ptr %i.i, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store <2 x float> %i.h, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !27
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZNK19btMinkowskiSumShape9getMarginEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef float %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef float %i.k(ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  %i.m = fadd float %i.f, %i.l
  ret float %i.m
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK19btMinkowskiSumShape21calculateLocalInertiaEfR9btVector3(ptr noundef nonnull align 8 dereferenceable(216) %0, float noundef %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %2) unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %class.btTransform, align 4         ; 9 uses
  %4 = alloca %class.btVector3, align 4           ; 5 uses
  %5 = alloca %class.btVector3, align 4           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store float 1.000000e+00, ptr %3, align 4, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.f = load ptr, ptr %0, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %i.i = load float, ptr %5, align 4, !tbaa !23
  %i.j = load float, ptr %4, align 4, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.m = load ptr, ptr %0, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = fmul float %1, f0x3DAAAAAA               ; 2 uses
  %i.q = load <2 x float>, ptr %i.k, align 4, !tbaa !23 ; 2 uses
  %i.r = load <2 x float>, ptr %i.l, align 4, !tbaa !23 ; 2 uses
  %i.s = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.t = insertelement <2 x float> %i.s, float %i.i, i64 1
  %i.u = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.v = insertelement <2 x float> %i.u, float %i.j, i64 1
  %i.w = fsub <2 x float> %i.t, %i.v
  %i.x = fsub <2 x float> %i.q, %i.r
  %i.y = fmul <2 x float> %i.w, splat (float 5.000000e-01)
  %i.z = fmul <2 x float> %i.x, splat (float 5.000000e-01)
  %i.aa = call noundef float %i.o(ptr noundef nonnull align 8 dereferenceable(216) %0)
  %i.ab = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ad = fadd <2 x float> %i.y, %i.ac
  %i.ae = fadd <2 x float> %i.z, %i.ac
  %i.af = fmul <2 x float> %i.ad, splat (float 2.000000e+00) ; 2 uses
  %i.ag = fmul <2 x float> %i.ae, splat (float 2.000000e+00) ; 2 uses
  %i.ah = fmul <2 x float> %i.af, %i.af           ; 2 uses
  %i.ai = fmul <2 x float> %i.ag, %i.ag           ; 2 uses
  %i.aj = fadd <2 x float> %i.ah, %i.ai
  %shift = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %shift, %i.ai
  %i.ak = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.al = insertelement <2 x float> poison, float %i.p, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %i.am, %i.aj
  %i.ao = fmul float %i.p, %i.ak
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ao, i64 0
  store <2 x float> %i.an, ptr %2, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void
}

; Function Attrs: nounwind
declare void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN19btMinkowskiSumShapeD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
