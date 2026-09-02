Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btConvexShape?download=true
inline.NumInlined: 256
inline.NumDeleted: 61
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btVector3 = type { [4 x float] }

$_ZNK16btCollisionShape38getAnisotropicRollingFrictionDirectionEv = comdat any

$_ZNK16btCollisionShape28calculateSerializeBufferSizeEv = comdat any

@_ZTV13btConvexShape = dso_local constant { [25 x ptr] } { [25 x ptr] [ptr null, ptr @_ZTI13btConvexShape, ptr @_ZN13btConvexShapeD2Ev, ptr @_ZN13btConvexShapeD0Ev, ptr @__cxa_pure_virtual, ptr @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf, ptr @_ZNK16btCollisionShape20getAngularMotionDiscEv, ptr @_ZNK16btCollisionShape27getContactBreakingThresholdEf, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK16btCollisionShape38getAnisotropicRollingFrictionDirectionEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK16btCollisionShape28calculateSerializeBufferSizeEv, ptr @_ZNK16btCollisionShape9serializeEPvP12btSerializer, ptr @_ZNK16btCollisionShape20serializeSingleShapeEP12btSerializer, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK13btConvexShape7projectERK11btTransformRK9btVector3RfS6_RS3_S7_, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@_ZTI13btConvexShape = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13btConvexShape, ptr @_ZTI16btCollisionShape }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13btConvexShape = dso_local constant [16 x i8] c"13btConvexShape\00", align 1
@_ZTI16btCollisionShape = external constant ptr
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN13btConvexShapeD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN13btConvexShapeD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN13btConvexShapeC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 12), (16, 32)) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 35, ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1, ptr %i.c, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 -1, ptr %i.d, align 4, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTV13btConvexShape, i64 16), ptr %0, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN13btConvexShapeD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(32) %0) unnamed_addr #1 align 2 {
bb.a:
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN13btConvexShapeD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @llvm.trap() #11
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK13btConvexShape7projectERK11btTransformRK9btVector3RfS6_RS3_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %5, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %6) unnamed_addr #4 align 2 {
bb.a:
  %7 = alloca %class.btVector3, align 8           ; 6 uses
  %8 = alloca %class.btVector3, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %9 = load <3 x float>, ptr %2, align 4, !tbaa !15 ; 5 uses
  %i.f = load float, ptr %2, align 4, !tbaa !15
  %i.g = load <2 x float>, ptr %1, align 4, !tbaa !15
  %i.h = load <2 x float>, ptr %i.a, align 4, !tbaa !15
  %10 = shufflevector <3 x float> %9, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.i = fmul <2 x float> %10, %i.h
  %i.j = shufflevector <3 x float> %9, <3 x float> poison, <2 x i32> zeroinitializer
  %i.k = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.g, <2 x float> %i.j, <2 x float> %i.i)
  %i.l = load <2 x float>, ptr %i.c, align 4, !tbaa !15
  %11 = shufflevector <3 x float> %9, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.m = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.l, <2 x float> %11, <2 x float> %i.k)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !15
  %12 = extractelement <3 x float> %9, i64 1
  %i.r = fmul float %12, %i.q
  %i.s = tail call float @llvm.fmuladd.f32(float %i.o, float %i.f, float %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !15
  %13 = extractelement <3 x float> %9, i64 2
  %i.v = tail call noundef float @llvm.fmuladd.f32(float %i.u, float %13, float %i.s)
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.v, i64 0
  store <2 x float> %i.m, ptr %7, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.w, align 8
  %i.x = load ptr, ptr %0, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call { <2 x float>, <2 x float> } %i.z(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(16) %7) ; 2 uses
  %i.ab = extractvalue { <2 x float>, <2 x float> } %i.aa, 0 ; 4 uses
  %i.ac = extractvalue { <2 x float>, <2 x float> } %i.aa, 1 ; 2 uses
  %.sroa.035.0.vec.extract = extractelement <2 x float> %i.ab, i64 0
  %.sroa.035.4.vec.extract = extractelement <2 x float> %i.ab, i64 1
  %.sroa.536.8.vec.extract = extractelement <2 x float> %i.ac, i64 0
  %i.ad = load float, ptr %i.n, align 4, !tbaa !15
  %i.ae = load float, ptr %i.p, align 4, !tbaa !15
  %i.af = load float, ptr %i.c, align 4, !tbaa !15
  %i.ag = load float, ptr %i.e, align 4, !tbaa !15
  %i.ah = fmul float %.sroa.035.4.vec.extract, %i.ag
  %i.ai = call float @llvm.fmuladd.f32(float %.sroa.035.0.vec.extract, float %i.af, float %i.ah)
  %i.aj = load float, ptr %i.t, align 4, !tbaa !15
  %i.ak = call noundef float @llvm.fmuladd.f32(float %.sroa.536.8.vec.extract, float %i.aj, float %i.ai)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.am = load <2 x float>, ptr %1, align 4, !tbaa !15 ; 2 uses
  %i.an = load <2 x float>, ptr %i.a, align 4, !tbaa !15 ; 2 uses
  %i.ao = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ap = shufflevector <2 x float> %i.am, <2 x float> %i.an, <2 x i32> <i32 1, i32 3>
  %i.aq = fmul <2 x float> %i.ao, %i.ap
  %i.ar = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = shufflevector <2 x float> %i.am, <2 x float> %i.an, <2 x i32> <i32 0, i32 2>
  %i.at = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %i.as, <2 x float> %i.aq)
  %i.au = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.aw = insertelement <2 x float> %i.av, float %i.ae, i64 1
  %i.ax = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.aw, <2 x float> %i.at)
  %i.ay = load <2 x float>, ptr %i.al, align 4, !tbaa !15
  %i.az = fadd <2 x float> %i.ax, %i.ay           ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !15
  %i.bc = fadd float %i.ak, %i.bb                 ; 2 uses
  %.sroa.3.12.vec.insert.i4.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bc, i64 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.bd = load <2 x float>, ptr %7, align 8, !tbaa !15
  %i.be = fneg <2 x float> %i.bd
  %i.bf = load float, ptr %i.w, align 8, !tbaa !15
  %i.bg = fneg float %i.bf
  %.sroa.3.12.vec.insert.i23 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bg, i64 0
  store <2 x float> %i.be, ptr %8, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i23, ptr %i.bh, align 8
  %i.bi = load ptr, ptr %0, align 8, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 128
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = call { <2 x float>, <2 x float> } %i.bk(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(16) %8) ; 2 uses
  %i.bm = extractvalue { <2 x float>, <2 x float> } %i.bl, 0 ; 4 uses
  %i.bn = extractvalue { <2 x float>, <2 x float> } %i.bl, 1 ; 2 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.bm, i64 0
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.bm, i64 1
  %.sroa.5.8.vec.extract = extractelement <2 x float> %i.bn, i64 0
  %i.bo = load float, ptr %i.n, align 4, !tbaa !15
  %i.bp = load float, ptr %i.p, align 4, !tbaa !15
  %i.bq = load float, ptr %i.c, align 4, !tbaa !15
  %i.br = load float, ptr %i.e, align 4, !tbaa !15
  %i.bs = fmul float %.sroa.0.4.vec.extract, %i.br
  %i.bt = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract, float %i.bq, float %i.bs)
  %i.bu = load float, ptr %i.t, align 4, !tbaa !15
  %i.bv = call noundef float @llvm.fmuladd.f32(float %.sroa.5.8.vec.extract, float %i.bu, float %i.bt)
  %i.bw = load <2 x float>, ptr %1, align 4, !tbaa !15 ; 2 uses
  %i.bx = load <2 x float>, ptr %i.a, align 4, !tbaa !15 ; 2 uses
  %i.by = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bz = shufflevector <2 x float> %i.bw, <2 x float> %i.bx, <2 x i32> <i32 1, i32 3>
  %i.ca = fmul <2 x float> %i.by, %i.bz
  %i.cb = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = shufflevector <2 x float> %i.bw, <2 x float> %i.bx, <2 x i32> <i32 0, i32 2>
  %i.cd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.cc, <2 x float> %i.ca)
  %i.ce = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.cg = insertelement <2 x float> %i.cf, float %i.bp, i64 1
  %i.ch = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.cg, <2 x float> %i.cd)
  %i.ci = load <2 x float>, ptr %i.al, align 4, !tbaa !15
  %i.cj = fadd <2 x float> %i.ch, %i.ci           ; 4 uses
  %i.ck = load float, ptr %i.ba, align 4, !tbaa !15
  %i.cl = fadd float %i.bv, %i.ck                 ; 2 uses
  %.sroa.3.12.vec.insert.i4.i28 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cl, i64 0 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %i.cm = load float, ptr %2, align 4, !tbaa !15
  %i.cn = load float, ptr %i.b, align 4, !tbaa !15
  %i.co = extractelement <2 x float> %i.az, i64 1
  %i.cp = fmul float %i.co, %i.cn
  %i.cq = extractelement <2 x float> %i.az, i64 0
  %i.cr = call float @llvm.fmuladd.f32(float %i.cq, float %i.cm, float %i.cp)
  %i.cs = load float, ptr %i.d, align 4, !tbaa !15
  %i.ct = call noundef float @llvm.fmuladd.f32(float %i.bc, float %i.cs, float %i.cr)
  store float %i.ct, ptr %3, align 4, !tbaa !15
  %i.cu = load float, ptr %2, align 4, !tbaa !15
  %i.cv = load float, ptr %i.b, align 4, !tbaa !15
  %i.cw = extractelement <2 x float> %i.cj, i64 1
  %i.cx = fmul float %i.cw, %i.cv
  %i.cy = extractelement <2 x float> %i.cj, i64 0
  %i.cz = call float @llvm.fmuladd.f32(float %i.cy, float %i.cu, float %i.cx)
  %i.da = load float, ptr %i.d, align 4, !tbaa !15
  %i.db = call noundef float @llvm.fmuladd.f32(float %i.cl, float %i.da, float %i.cz)
  store float %i.db, ptr %4, align 4, !tbaa !15
  store <2 x float> %i.cj, ptr %6, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i4.i28, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !16
  store <2 x float> %i.az, ptr %5, align 4
  %.sroa.739.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i4.i, ptr %.sroa.739.0..sroa_idx, align 4, !tbaa !16
  %i.dc = load float, ptr %3, align 4, !tbaa !15  ; 2 uses
  %i.dd = load float, ptr %4, align 4, !tbaa !15  ; 2 uses
  %i.de = fcmp ogt float %i.dc, %i.dd
  br i1 %i.de, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store float %i.dd, ptr %3, align 4, !tbaa !15
  store float %i.dc, ptr %4, align 4, !tbaa !15
  store <2 x float> %i.az, ptr %6, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i4.i, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !16
  store <2 x float> %i.cj, ptr %5, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i4.i28, ptr %.sroa.739.0..sroa_idx, align 4, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 4           ; 7 uses
  %.sroa.0207 = alloca float, align 4             ; 6 uses
  %.sroa.11 = alloca float, align 4               ; 5 uses
  %.sroa.20 = alloca float, align 4               ; 4 uses
  %.sroa.0173 = alloca float, align 4             ; 6 uses
  %.sroa.10175 = alloca float, align 4            ; 6 uses
  %.sroa.18 = alloca float, align 4               ; 6 uses
  %3 = alloca %class.btVector3, align 8           ; 6 uses
  %4 = alloca %class.btVector3, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  switch i32 %i.b, label %bb.p [
    i32 8, label %bb.q
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 13, label %bb.d
    i32 10, label %bb.k
    i32 5, label %bb.n
    i32 4, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load <2 x float>, ptr %1, align 4, !tbaa !15
  %i.e = load <2 x float>, ptr %i.c, align 8, !tbaa !15 ; 2 uses
  %i.f = fneg <2 x float> %i.e
  %i.g = fcmp oge <2 x float> %i.d, zeroinitializer
  %i.h = select <2 x i1> %i.g, <2 x float> %i.e, <2 x float> %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load float, ptr %i.k, align 8, !tbaa !15 ; 2 uses
  %i.m = fneg float %i.l
  %i.n = fcmp oge float %i.j, 0.000000e+00
  %i.o = select i1 %i.n, float %i.l, float %i.m
  %.sroa.16.12.vec.insert260 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.o, i64 0
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load float, ptr %i.u, align 8, !tbaa !15
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = load float, ptr %i.w, align 8, !tbaa !15
  %i.y = load float, ptr %i.p, align 4, !tbaa !15 ; 3 uses
  %i.z = load float, ptr %1, align 4, !tbaa !15   ; 2 uses
  %i.aa = load float, ptr %i.q, align 4, !tbaa !15 ; 2 uses
  %i.ab = load <2 x float>, ptr %i.r, align 8, !tbaa !15
  %7 = load float, ptr %5, align 4, !tbaa !15
  %8 = load <2 x float>, ptr %i.s, align 8, !tbaa !15
  %9 = load float, ptr %6, align 4, !tbaa !15
  %10 = fmul float %i.y, %9
  %11 = fmul float %i.y, %7
  %i.ac = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = shufflevector <2 x float> %i.ab, <2 x float> %8, <2 x i32> <i32 0, i32 2>
  %12 = insertelement <2 x float> poison, float %11, i64 0
  %13 = insertelement <2 x float> %12, float %10, i64 1
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.ae, <2 x float> %13)
  %i.ag = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = insertelement <2 x float> poison, float %i.v, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.x, i64 1
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.aj, <2 x float> %i.af) ; 2 uses
  %i.al = load float, ptr %i.t, align 8, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.an = load float, ptr %i.am, align 4, !tbaa !15
  %i.ao = fmul float %i.y, %i.an
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.z, float %i.al, float %i.ao)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !15
  %i.as = tail call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.ar, float %i.ap)
  %i.at = extractelement <2 x float> %i.ak, i64 0 ; 2 uses
  %i.au = extractelement <2 x float> %i.ak, i64 1 ; 2 uses
  %i.av = fcmp olt float %i.at, %i.au             ; 2 uses
  %..i = select i1 %i.av, float %i.au, float %i.at
  %i.aw = fcmp olt float %..i, %i.as
  %i.ax = zext i1 %i.av to i64
  %i.ay = select i1 %i.aw, i64 2, i64 %i.ax
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ay ; 2 uses
  %i.ba = load <2 x float>, ptr %i.az, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.16.12.vec.insert262 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.5.0.copyload, i64 0
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %.0.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !tbaa.struct !17
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0207)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load float, ptr %1, align 4, !tbaa !15
  store float %i.be, ptr %.sroa.0207, align 4, !tbaa !15
  %i.bf = load float, ptr %i.bc, align 4, !tbaa !15 ; 2 uses
  store float %i.bf, ptr %.sroa.11, align 4, !tbaa !15
  %i.bg = load float, ptr %i.bd, align 4, !tbaa !15 ; 3 uses
  store float %i.bg, ptr %.sroa.20, align 4, !tbaa !15
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !30 ; 2 uses
  switch i32 %i.bi, label %bb.g [
    i32 2, label %bb.f
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e
  %i.bj = phi float [ %i.bg, %bb.d ], [ %i.bf, %bb.f ], [ %i.bg, %bb.e ] ; 3 uses
  %.081.sroa.phi = phi ptr [ %.sroa.18, %bb.d ], [ %.sroa.10175, %bb.f ], [ %.sroa.18, %bb.e ]
  %.080.sroa.phi = phi ptr [ %.sroa.0173, %bb.d ], [ %.sroa.18, %bb.f ], [ %.sroa.10175, %bb.e ] ; 2 uses
  %.080.sroa.phi196 = phi ptr [ %.sroa.0207, %bb.d ], [ %.sroa.20, %bb.f ], [ %.sroa.11, %bb.e ] ; 2 uses
  %.0.sroa.phi = phi ptr [ %.sroa.10175, %bb.d ], [ %.sroa.0173, %bb.f ], [ %.sroa.0173, %bb.e ] ; 2 uses
  %.0.sroa.phi178 = phi ptr [ %.sroa.11, %bb.d ], [ %.sroa.0207, %bb.f ], [ %.sroa.0207, %bb.e ]
  %.0.sroa.phi208 = phi ptr [ %.0.sroa.gep, %bb.d ], [ %2, %bb.f ], [ %2, %bb.e ]
  %i.bk = load float, ptr %.0.sroa.phi208, align 4, !tbaa !15 ; 2 uses
  %i.bl = sext i32 %i.bi to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bl
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0173)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10175)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18)
  %i.bo = load float, ptr %.0.sroa.phi178, align 4, !tbaa !15 ; 3 uses
  %i.bp = fmul float %i.bj, %i.bj
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.bo, float %i.bp) ; 2 uses
  %i.br = fcmp une float %i.bq, 0.000000e+00
  br i1 %i.br, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %sqrt = tail call float @llvm.sqrt.f32(float %i.bq)
  %i.bs = fdiv float %i.bk, %sqrt                 ; 2 uses
  %i.bt = fmul float %i.bs, %i.bo
  store float %i.bt, ptr %.0.sroa.phi, align 4, !tbaa !15
  %i.bu = load float, ptr %.080.sroa.phi196, align 4, !tbaa !15
  %i.bv = fcmp olt float %i.bu, 0.000000e+00
  %i.bw = fneg float %i.bn
  %i.bx = select i1 %i.bv, float %i.bw, float %i.bn
  store float %i.bx, ptr %.080.sroa.phi, align 4, !tbaa !15
  %i.by = fmul float %i.bs, %i.bj
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store float %i.bk, ptr %.0.sroa.phi, align 4, !tbaa !15
  %i.bz = load float, ptr %.080.sroa.phi196, align 4, !tbaa !15
  %i.ca = fcmp olt float %i.bz, 0.000000e+00
  %i.cb = fneg float %i.bn
  %i.cc = select i1 %i.ca, float %i.cb, float %i.bn
  store float %i.cc, ptr %.080.sroa.phi, align 4, !tbaa !15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink = phi float [ 0.000000e+00, %bb.i ], [ %i.by, %bb.h ]
  store float %.sink, ptr %.081.sroa.phi, align 4, !tbaa !15
  %.sroa.0173.0..sroa.0173.0..sroa.0173.0..sroa.0173.0.174 = load float, ptr %.sroa.0173, align 4, !tbaa !15
  %.sroa.0226.0.vec.insert235 = insertelement <2 x float> poison, float %.sroa.0173.0..sroa.0173.0..sroa.0173.0..sroa.0173.0.174, i64 0
  %.sroa.10175.0..sroa.10175.0..sroa.10175.0..sroa.10175.4.176 = load float, ptr %.sroa.10175, align 4, !tbaa !15
  %.sroa.0226.4.vec.insert245 = insertelement <2 x float> %.sroa.0226.0.vec.insert235, float %.sroa.10175.0..sroa.10175.0..sroa.10175.0..sroa.10175.4.176, i64 1
  %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.8.177 = load float, ptr %.sroa.18, align 4, !tbaa !15
  %.sroa.16.12.vec.insert266 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.8.177, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0173)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10175)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0207)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.q

bb.k:                                             ; preds = %bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cf = load float, ptr %1, align 4, !tbaa !15  ; 3 uses
  %i.cg = load float, ptr %i.cd, align 4, !tbaa !15 ; 3 uses
  %i.ch = load float, ptr %i.ce, align 4, !tbaa !15 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !22
  %i.cl = sext i32 %i.ck to i64                   ; 3 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cl
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !15 ; 2 uses
  %i.co = fmul float %i.cg, %i.cg
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.cf, float %i.co)
  %i.cq = tail call noundef float @llvm.fmuladd.f32(float %i.ch, float %i.ch, float %i.cp) ; 2 uses
  %i.cr = fcmp olt float %i.cq, f0x28800000
  br i1 %i.cr, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %sqrt269 = tail call float @llvm.sqrt.f32(float %i.cq)
  %i.cs = fdiv float 1.000000e+00, %sqrt269       ; 3 uses
  %i.ct = fmul float %i.cf, %i.cs
  %i.cu = fmul float %i.cg, %i.cs
  %i.cv = fmul float %i.ch, %i.cs
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sroa.15.0 = phi float [ %i.cv, %bb.l ], [ 0.000000e+00, %bb.k ] ; 2 uses
  %.sroa.9.0 = phi float [ %i.cu, %bb.l ], [ 0.000000e+00, %bb.k ] ; 2 uses
  %.sroa.0137.0 = phi float [ %i.ct, %bb.l ], [ 1.000000e+00, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cx = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cl
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store float %i.cn, ptr %i.cx, align 4, !tbaa !15
  %i.cy = load <2 x float>, ptr %3, align 8       ; 3 uses
  %.sroa.10.0.copyload = load float, ptr %i.cw, align 8 ; 2 uses
  %i.cz = extractelement <2 x float> %i.cy, i64 1
  %i.da = fmul float %.sroa.9.0, %i.cz
  %i.db = extractelement <2 x float> %i.cy, i64 0
  %i.dc = tail call float @llvm.fmuladd.f32(float %.sroa.0137.0, float %i.db, float %i.da)
  %i.dd = tail call noundef float @llvm.fmuladd.f32(float %.sroa.15.0, float %.sroa.10.0.copyload, float %i.dc) ; 2 uses
  %i.de = fcmp ogt float %i.dd, f0xDD5E0B6B       ; 3 uses
  %.sroa.10151.0 = select i1 %i.de, float %.sroa.10.0.copyload, float 0.000000e+00
  %.082 = select i1 %i.de, float %i.dd, float f0xDD5E0B6B
  %i.df = select i1 %i.de, <2 x float> %i.cy, <2 x float> zeroinitializer
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dh = fneg float %i.cn
  %i.di = getelementptr inbounds [4 x i8], ptr %4, i64 %i.cl
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store float %i.dh, ptr %i.di, align 4, !tbaa !15
  %.sroa.10.0.copyload121 = load float, ptr %i.dg, align 8 ; 2 uses
  %i.dj = load <2 x float>, ptr %4, align 8       ; 3 uses
  %i.dk = extractelement <2 x float> %i.dj, i64 1
  %i.dl = fmul float %.sroa.9.0, %i.dk
  %i.dm = extractelement <2 x float> %i.dj, i64 0
  %i.dn = tail call float @llvm.fmuladd.f32(float %.sroa.0137.0, float %i.dm, float %i.dl)
  %i.do = tail call noundef float @llvm.fmuladd.f32(float %.sroa.15.0, float %.sroa.10.0.copyload121, float %i.dn)
  %i.dp = fcmp ogt float %i.do, %.082             ; 2 uses
  %i.dq = insertelement <2 x i1> poison, i1 %i.dp, i64 0
  %i.dr = shufflevector <2 x i1> %i.dq, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ds = select <2 x i1> %i.dr, <2 x float> %i.dj, <2 x float> %i.df
  %.sroa.10151.1 = select i1 %i.dp, float %.sroa.10.0.copyload121, float %.sroa.10151.0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %.sroa.16.12.vec.insert268 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.10151.1, i64 0
  br label %bb.q

bb.n:                                             ; preds = %bb.a
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !37 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !38 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dy = load float, ptr %1, align 4, !tbaa !15
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !15
  %i.eb = load <2 x float>, ptr %i.dx, align 8, !tbaa !15 ; 3 uses
  %i.ec = extractelement <2 x float> %i.eb, i64 0
  %i.ed = fmul float %i.dy, %i.ec
  %i.ee = extractelement <2 x float> %i.eb, i64 1
  %i.ef = fmul float %i.ea, %i.ee
end_hunk_0
