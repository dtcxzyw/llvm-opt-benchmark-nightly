Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btMinkowskiSumShape?download=true
inline.NumInlined: 58
inline.NumDeleted: 22
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btVector3 = type { [4 x float] }

$__clang_call_terminate = comdat any

$_ZN19btMinkowskiSumShapeD0Ev = comdat any

$_ZNK21btConvexInternalShape7getAabbERK11btTransformR9btVector3S4_ = comdat any

$_ZNK21btConvexInternalShape15getLocalScalingEv = comdat any

$_ZNK19btMinkowskiSumShape7getNameEv = comdat any

$_ZN21btConvexInternalShape9setMarginEf = comdat any

$_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv = comdat any

$_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3 = comdat any

@_ZTV19btMinkowskiSumShape = dso_local unnamed_addr constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTI19btMinkowskiSumShape, ptr @_ZN13btConvexShapeD2Ev, ptr @_ZN19btMinkowskiSumShapeD0Ev, ptr @_ZNK21btConvexInternalShape7getAabbERK11btTransformR9btVector3S4_, ptr @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf, ptr @_ZNK16btCollisionShape20getAngularMotionDiscEv, ptr @_ZNK16btCollisionShape27getContactBreakingThresholdEv, ptr @_ZN21btConvexInternalShape15setLocalScalingERK9btVector3, ptr @_ZNK21btConvexInternalShape15getLocalScalingEv, ptr @_ZNK19btMinkowskiSumShape21calculateLocalInertiaEfR9btVector3, ptr @_ZNK19btMinkowskiSumShape7getNameEv, ptr @_ZN21btConvexInternalShape9setMarginEf, ptr @_ZNK19btMinkowskiSumShape9getMarginEv, ptr @_ZNK21btConvexInternalShape24localGetSupportingVertexERK9btVector3, ptr @_ZNK19btMinkowskiSumShape37localGetSupportingVertexWithoutMarginERK9btVector3, ptr @_ZNK19btMinkowskiSumShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i, ptr @_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_, ptr @_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv, ptr @_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3] }, align 8
@_ZTI19btMinkowskiSumShape = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS19btMinkowskiSumShape, ptr @_ZTI21btConvexInternalShape }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS19btMinkowskiSumShape = dso_local constant [22 x i8] c"19btMinkowskiSumShape\00", align 1
@_ZTI21btConvexInternalShape = external constant ptr
@.str = private unnamed_addr constant [13 x i8] c"MinkowskiSum\00", align 1

@_ZN19btMinkowskiSumShapeC1EPK13btConvexShapeS2_ = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN19btMinkowskiSumShapeC2EPK13btConvexShapeS2_

; Function Attrs: uwtable
define dso_local void @_ZN19btMinkowskiSumShapeC2EPK13btConvexShapeS2_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTV19btMinkowskiSumShape, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %1, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %2, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 16, ptr %i.e, align 8, !tbaa !23
  store float 1.000000e+00, ptr %i.a, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 4, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.i, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 108
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.j, i8 0, i64 20, i1 false)
  store float 1.000000e+00, ptr %i.b, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.l, align 4, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.n, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 172
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.o, i8 0, i64 20, i1 false)
  ret void
}

declare void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #11 ; 0 uses
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

; Function Attrs: uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK19btMinkowskiSumShape37localGetSupportingVertexWithoutMarginERK9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 8           ; 5 uses
  %3 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load float, ptr %4, align 4, !tbaa !22     ; 2 uses
  %i.f = load float, ptr %1, align 4, !tbaa !22   ; 2 uses
  %7 = load float, ptr %5, align 4, !tbaa !22     ; 2 uses
  %i.g = load <2 x float>, ptr %i.a, align 8, !tbaa !22
  %i.h = load <2 x float>, ptr %i.d, align 8, !tbaa !22
  %8 = insertelement <2 x float> poison, float %6, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %i.i = fmul <2 x float> %9, %i.h
  %10 = insertelement <2 x float> poison, float %i.f, i64 0
  %i.j = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.g, <2 x float> %i.j, <2 x float> %i.i)
  %i.l = load <2 x float>, ptr %i.e, align 8, !tbaa !22
  %11 = insertelement <2 x float> poison, float %7, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.l, <2 x float> %12, <2 x float> %i.k)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.o = load float, ptr %i.n, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.q = load float, ptr %i.p, align 8, !tbaa !22
  %i.r = fmul float %6, %i.q
  %i.s = tail call float @llvm.fmuladd.f32(float %i.o, float %i.f, float %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.u = load float, ptr %i.t, align 8, !tbaa !22
  %i.v = tail call noundef float @llvm.fmuladd.f32(float %i.u, float %7, float %i.s)
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.v, i64 0
  store <2 x float> %i.m, ptr %2, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.w, align 8
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call { <2 x float>, <2 x float> } %i.z(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %2) ; 2 uses
  %i.ab = extractvalue { <2 x float>, <2 x float> } %i.aa, 0 ; 4 uses
  %i.ac = extractvalue { <2 x float>, <2 x float> } %i.aa, 1 ; 2 uses
  %i.ad = load float, ptr %i.n, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.af = load float, ptr %i.ae, align 8, !tbaa !22
  %i.ag = load float, ptr %i.p, align 8, !tbaa !22
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ai = load float, ptr %i.t, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ao = load <3 x float>, ptr %1, align 4, !tbaa !22
  %i.ap = fneg <3 x float> %i.ao                  ; 6 uses
  %i.aq = load <2 x float>, ptr %i.aj, align 8, !tbaa !22
  %i.ar = load <2 x float>, ptr %i.am, align 8, !tbaa !22
  %i.as = shufflevector <3 x float> %i.ap, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.at = fmul <2 x float> %i.ar, %i.as
  %i.au = shufflevector <3 x float> %i.ap, <3 x float> poison, <2 x i32> zeroinitializer
  %i.av = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> %i.au, <2 x float> %i.at)
  %i.aw = load <2 x float>, ptr %i.an, align 8, !tbaa !22
  %i.ax = shufflevector <3 x float> %i.ap, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ay = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.ax, <2 x float> %i.av)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ba = load float, ptr %i.az, align 8, !tbaa !22
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bc = load float, ptr %i.bb, align 8, !tbaa !22
  %i.bd = extractelement <3 x float> %i.ap, i64 1
  %i.be = fmul float %i.bc, %i.bd
  %i.bf = extractelement <3 x float> %i.ap, i64 0
  %i.bg = call float @llvm.fmuladd.f32(float %i.ba, float %i.bf, float %i.be)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bi = load float, ptr %i.bh, align 8, !tbaa !22
  %i.bj = extractelement <3 x float> %i.ap, i64 2
  %i.bk = call noundef float @llvm.fmuladd.f32(float %i.bi, float %i.bj, float %i.bg)
  %.sroa.3.12.vec.insert.i15 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bk, i64 0
  store <2 x float> %i.ay, ptr %3, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i15, ptr %i.bl, align 8
  %i.bm = load ptr, ptr %i.al, align 8, !tbaa !9
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 104
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.br = load <2 x float>, ptr %i.d, align 8, !tbaa !22 ; 2 uses
  %i.bs = load <2 x float>, ptr %i.e, align 8, !tbaa !22 ; 2 uses
  %i.bt = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bu = shufflevector <2 x float> %i.br, <2 x float> %i.bs, <2 x i32> <i32 1, i32 3>
  %i.bv = fmul <2 x float> %i.bt, %i.bu
  %i.bw = shufflevector <2 x float> %i.br, <2 x float> %i.bs, <2 x i32> <i32 0, i32 2>
  %i.bx = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.bx, <2 x float> %i.bv)
  %i.bz = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ca = insertelement <2 x float> %i.bz, float %i.ai, i64 1
  %i.cb = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.cb, <2 x float> %i.by)
  %i.cd = load <2 x float>, ptr %i.ah, align 4, !tbaa !22
  %i.ce = fadd <2 x float> %i.cd, %i.cc
  %i.cf = load <2 x float>, ptr %i.a, align 8, !tbaa !22 ; 2 uses
  %i.cg = call { <2 x float>, <2 x float> } %i.bo(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 4 dereferenceable(16) %3) ; 2 uses
  %i.ch = extractvalue { <2 x float>, <2 x float> } %i.cg, 0 ; 4 uses
  %i.ci = extractvalue { <2 x float>, <2 x float> } %i.cg, 1 ; 2 uses
  %i.cj = load <2 x float>, ptr %i.aj, align 8, !tbaa !22 ; 2 uses
  %i.ck = shufflevector <2 x float> %i.cf, <2 x float> %i.cj, <2 x i32> <i32 1, i32 3>
  %i.cl = shufflevector <2 x float> %i.ab, <2 x float> %i.ch, <2 x i32> <i32 1, i32 3>
  %i.cm = fmul <2 x float> %i.ck, %i.cl
  %i.cn = shufflevector <2 x float> %i.cf, <2 x float> %i.cj, <2 x i32> <i32 0, i32 2>
  %i.co = shufflevector <2 x float> %i.ab, <2 x float> %i.ch, <2 x i32> <i32 0, i32 2>
  %i.cp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cn, <2 x float> %i.co, <2 x float> %i.cm)
  %i.cq = load float, ptr %i.az, align 8, !tbaa !22
  %i.cr = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.cs = insertelement <2 x float> %i.cr, float %i.cq, i64 1
  %i.ct = shufflevector <2 x float> %i.ac, <2 x float> %i.ci, <2 x i32> <i32 0, i32 2>
  %i.cu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.ct, <2 x float> %i.cp)
  %i.cv = load float, ptr %i.bp, align 8, !tbaa !22
  %i.cw = insertelement <2 x float> poison, float %i.af, i64 0
  %i.cx = insertelement <2 x float> %i.cw, float %i.cv, i64 1
  %i.cy = fadd <2 x float> %i.cx, %i.cu           ; 2 uses
  %i.cz = load <2 x float>, ptr %i.am, align 8, !tbaa !22 ; 2 uses
  %i.da = load float, ptr %i.bb, align 8, !tbaa !22
  %i.db = load <2 x float>, ptr %i.an, align 8, !tbaa !22 ; 2 uses
  %i.dc = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dd = shufflevector <2 x float> %i.cz, <2 x float> %i.db, <2 x i32> <i32 1, i32 3>
  %i.de = fmul <2 x float> %i.dc, %i.dd
  %i.df = shufflevector <2 x float> %i.cz, <2 x float> %i.db, <2 x i32> <i32 0, i32 2>
  %i.dg = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.dg, <2 x float> %i.de)
  %i.di = load float, ptr %i.bh, align 8, !tbaa !22
  %i.dj = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dk = insertelement <2 x float> %i.dj, float %i.di, i64 1
  %i.dl = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> %i.dl, <2 x float> %i.dh)
  %i.dn = load <2 x float>, ptr %i.bq, align 4, !tbaa !22
  %i.do = fadd <2 x float> %i.dn, %i.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %shift = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.cy, %shift
  %i.dp = fsub <2 x float> %i.ce, %i.do           ; 2 uses
  %i.dq = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.dp, <2 x i32> <i32 0, i32 2>
  %i.dr = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.dp, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i26 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.dq, 0
  %.fca.1.insert.i27 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i26, <2 x float> %i.dr, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i27
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: uwtable
define dso_local void @_ZNK19btMinkowskiSumShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) unnamed_addr #4 align 2 {
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
  %i.c = load ptr, ptr %0, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call { <2 x float>, <2 x float> } %i.e(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.b) ; 2 uses
  %i.g = extractvalue { <2 x float>, <2 x float> } %i.f, 0
  %i.h = extractvalue { <2 x float>, <2 x float> } %i.f, 1
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  store <2 x float> %i.g, ptr %i.i, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store <2 x float> %i.h, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: uwtable
define dso_local noundef float @_ZNK19btMinkowskiSumShape9getMarginEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef float %i.e(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef float %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.h)
  %i.m = fadd float %i.f, %i.l
  ret float %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZNK19btMinkowskiSumShape21calculateLocalInertiaEfR9btVector3(ptr nofree nonnull readnone align 8 captures(none) %0, float %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %2) unnamed_addr #6 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  ret void
}

declare void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN19btMinkowskiSumShapeD0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.d

_ZN13btConvexShapedlEPv.exit:                     ; preds = %bb.c
  resume { ptr, i32 } %i.a

end_hunk_0
