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
  tail call void @llvm.trap() #12
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK13btConvexShape7projectERK11btTransformRK9btVector3RfS6_RS3_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %5, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %6) unnamed_addr #4 align 2 {
bb.a:
  %7 = alloca %class.btVector3, align 8           ; 6 uses
  %8 = alloca %class.btVector3, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.f = load float, ptr %2, align 4, !tbaa !15   ; 2 uses
  %i.g = load float, ptr %i.b, align 4, !tbaa !15 ; 2 uses
  %i.h = load float, ptr %i.d, align 4, !tbaa !15 ; 2 uses
  %i.i = load <2 x float>, ptr %1, align 4, !tbaa !15
  %i.j = load <2 x float>, ptr %i.a, align 4, !tbaa !15
  %i.k = insertelement <2 x float> poison, float %i.g, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = fmul <2 x float> %i.l, %i.j
  %i.n = insertelement <2 x float> poison, float %i.f, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.i, <2 x float> %i.o, <2 x float> %i.m)
  %i.q = load <2 x float>, ptr %i.c, align 4, !tbaa !15
  %i.r = insertelement <2 x float> poison, float %i.h, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.s, <2 x float> %i.p)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !15
  %i.y = fmul float %i.g, %i.x
  %i.z = tail call float @llvm.fmuladd.f32(float %i.v, float %i.f, float %i.y)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !15
  %i.ac = tail call noundef float @llvm.fmuladd.f32(float %i.ab, float %i.h, float %i.z)
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ac, i64 0
  store <2 x float> %i.t, ptr %7, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.ad, align 8
  %i.ae = load ptr, ptr %0, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call { <2 x float>, <2 x float> } %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(16) %7) ; 2 uses
  %i.ai = extractvalue { <2 x float>, <2 x float> } %i.ah, 0 ; 4 uses
  %i.aj = extractvalue { <2 x float>, <2 x float> } %i.ah, 1 ; 2 uses
  %.sroa.035.0.vec.extract = extractelement <2 x float> %i.ai, i64 0
  %.sroa.035.4.vec.extract = extractelement <2 x float> %i.ai, i64 1
  %.sroa.536.8.vec.extract = extractelement <2 x float> %i.aj, i64 0
  %9 = load <2 x float>, ptr %i.u, align 4
  %10 = load float, ptr %i.w, align 4, !tbaa !15
  %11 = load float, ptr %i.c, align 4, !tbaa !15
  %i.ak = load float, ptr %i.e, align 4, !tbaa !15
  %12 = fmul float %.sroa.035.4.vec.extract, %i.ak
  %13 = call float @llvm.fmuladd.f32(float %.sroa.035.0.vec.extract, float %11, float %12)
  %i.al = load float, ptr %i.aa, align 4, !tbaa !15
  %14 = call noundef float @llvm.fmuladd.f32(float %.sroa.536.8.vec.extract, float %i.al, float %13)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %15 = load <2 x float>, ptr %1, align 4, !tbaa !15 ; 2 uses
  %16 = load <2 x float>, ptr %i.a, align 4, !tbaa !15 ; 2 uses
  %17 = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %18 = shufflevector <2 x float> %15, <2 x float> %16, <2 x i32> <i32 1, i32 3>
  %19 = fmul <2 x float> %17, %18
  %20 = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = shufflevector <2 x float> %15, <2 x float> %16, <2 x i32> <i32 0, i32 2>
  %22 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> %21, <2 x float> %19)
  %23 = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %24 = insertelement <2 x float> %9, float %10, i64 1
  %25 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %23, <2 x float> %24, <2 x float> %22)
  %26 = load <2 x float>, ptr %i.am, align 4, !tbaa !15
  %27 = fadd <2 x float> %25, %26                 ; 4 uses
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %29 = load float, ptr %28, align 4, !tbaa !15
  %30 = fadd float %14, %29                       ; 2 uses
  %.sroa.3.12.vec.insert.i4.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %30, i64 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.an = load <2 x float>, ptr %7, align 8, !tbaa !15
  %31 = fneg <2 x float> %i.an
  %i.ao = load float, ptr %i.ad, align 8, !tbaa !15
  %32 = fneg float %i.ao
  %.sroa.3.12.vec.insert.i23 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %32, i64 0
  store <2 x float> %31, ptr %8, align 8
  %33 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i23, ptr %33, align 8
  %34 = load ptr, ptr %0, align 8, !tbaa !13
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 128
  %36 = load ptr, ptr %35, align 8
  %37 = call { <2 x float>, <2 x float> } %36(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(16) %8) ; 2 uses
  %38 = extractvalue { <2 x float>, <2 x float> } %37, 0 ; 4 uses
  %i.ap = extractvalue { <2 x float>, <2 x float> } %37, 1 ; 2 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %38, i64 0
  %.sroa.0.4.vec.extract = extractelement <2 x float> %38, i64 1
  %.sroa.5.8.vec.extract = extractelement <2 x float> %i.ap, i64 0
  %39 = load <2 x float>, ptr %i.u, align 4
  %40 = load float, ptr %i.w, align 4, !tbaa !15
  %41 = load float, ptr %i.c, align 4, !tbaa !15
  %42 = load float, ptr %i.e, align 4, !tbaa !15
  %43 = fmul float %.sroa.0.4.vec.extract, %42
  %44 = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract, float %41, float %43)
  %45 = load float, ptr %i.aa, align 4, !tbaa !15
  %46 = call noundef float @llvm.fmuladd.f32(float %.sroa.5.8.vec.extract, float %45, float %44)
  %47 = load <2 x float>, ptr %1, align 4, !tbaa !15 ; 2 uses
  %48 = load <2 x float>, ptr %i.a, align 4, !tbaa !15 ; 2 uses
  %49 = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %50 = shufflevector <2 x float> %47, <2 x float> %48, <2 x i32> <i32 1, i32 3>
  %51 = fmul <2 x float> %49, %50
  %52 = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> zeroinitializer
  %53 = shufflevector <2 x float> %47, <2 x float> %48, <2 x i32> <i32 0, i32 2>
  %54 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %52, <2 x float> %53, <2 x float> %51)
  %55 = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %56 = insertelement <2 x float> %39, float %40, i64 1
  %57 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %55, <2 x float> %56, <2 x float> %54)
  %i.aq = load <2 x float>, ptr %i.am, align 4, !tbaa !15
  %i.ar = fadd <2 x float> %57, %i.aq             ; 4 uses
  %i.as = load float, ptr %28, align 4, !tbaa !15
  %i.at = fadd float %46, %i.as                   ; 2 uses
  %.sroa.3.12.vec.insert.i4.i28 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.at, i64 0 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.au = load float, ptr %2, align 4, !tbaa !15
  %i.av = load float, ptr %i.b, align 4, !tbaa !15
  %i.aw = extractelement <2 x float> %27, i64 1
  %i.ax = fmul float %i.aw, %i.av
  %i.ay = extractelement <2 x float> %27, i64 0
  %i.az = call float @llvm.fmuladd.f32(float %i.ay, float %i.au, float %i.ax)
  %i.ba = load float, ptr %i.d, align 4, !tbaa !15
  %i.bb = call noundef float @llvm.fmuladd.f32(float %30, float %i.ba, float %i.az)
  store float %i.bb, ptr %3, align 4, !tbaa !15
  %i.bc = load float, ptr %2, align 4, !tbaa !15
  %i.bd = load float, ptr %i.b, align 4, !tbaa !15
  %i.be = extractelement <2 x float> %i.ar, i64 1
  %i.bf = fmul float %i.be, %i.bd
  %i.bg = extractelement <2 x float> %i.ar, i64 0
  %i.bh = call float @llvm.fmuladd.f32(float %i.bg, float %i.bc, float %i.bf)
  %i.bi = load float, ptr %i.d, align 4, !tbaa !15
  %i.bj = call noundef float @llvm.fmuladd.f32(float %i.at, float %i.bi, float %i.bh)
  store float %i.bj, ptr %4, align 4, !tbaa !15
  store <2 x float> %i.ar, ptr %6, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i4.i28, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !16
  store <2 x float> %27, ptr %5, align 4
  %.sroa.739.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i4.i, ptr %.sroa.739.0..sroa_idx, align 4, !tbaa !16
  %i.bk = load float, ptr %3, align 4, !tbaa !15  ; 2 uses
  %i.bl = load float, ptr %4, align 4, !tbaa !15  ; 2 uses
  %i.bm = fcmp ogt float %i.bk, %i.bl
  br i1 %i.bm, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store float %i.bl, ptr %3, align 4, !tbaa !15
  store float %i.bk, ptr %4, align 4, !tbaa !15
  store <2 x float> %27, ptr %6, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i4.i, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !16
  store <2 x float> %i.ar, ptr %5, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i4.i28, ptr %.sroa.739.0..sroa_idx, align 4, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
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
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load float, ptr %i.u, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = load float, ptr %i.w, align 8, !tbaa !15
  %i.y = load float, ptr %1, align 4, !tbaa !15   ; 2 uses
  %i.z = load float, ptr %i.p, align 4, !tbaa !15 ; 2 uses
  %i.aa = load float, ptr %i.q, align 4, !tbaa !15 ; 2 uses
  %i.ab = load <2 x float>, ptr %i.r, align 8, !tbaa !15 ; 2 uses
  %i.ac = load <2 x float>, ptr %i.s, align 8, !tbaa !15 ; 2 uses
  %i.ad = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = shufflevector <2 x float> %i.ab, <2 x float> %i.ac, <2 x i32> <i32 1, i32 3>
  %i.ag = fmul <2 x float> %i.ae, %i.af
  %i.ah = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = shufflevector <2 x float> %i.ab, <2 x float> %i.ac, <2 x i32> <i32 0, i32 2>
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.aj, <2 x float> %i.ag)
  %i.al = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ao = insertelement <2 x float> %i.an, float %i.x, i64 1
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.ao, <2 x float> %i.ak) ; 2 uses
  %i.aq = load float, ptr %i.t, align 8, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.as = load float, ptr %i.ar, align 4, !tbaa !15
  %i.at = fmul float %i.z, %i.as
  %i.au = tail call float @llvm.fmuladd.f32(float %i.y, float %i.aq, float %i.at)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aw = load float, ptr %i.av, align 8, !tbaa !15
  %i.ax = tail call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.aw, float %i.au)
  %i.ay = extractelement <2 x float> %i.ap, i64 0 ; 2 uses
  %i.az = extractelement <2 x float> %i.ap, i64 1 ; 2 uses
  %i.ba = fcmp olt float %i.ay, %i.az             ; 2 uses
  %..i = select i1 %i.ba, float %i.az, float %i.ay
  %i.bb = fcmp olt float %..i, %i.ax
  %i.bc = zext i1 %i.ba to i64
  %i.bd = select i1 %i.bb, i64 2, i64 %i.bc
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.bd ; 2 uses
  %i.bf = load <2 x float>, ptr %i.be, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.16.12.vec.insert262 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.5.0.copyload, i64 0
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %.0.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 16, i1 false), !tbaa.struct !17
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0207)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bj = load float, ptr %1, align 4, !tbaa !15
  store float %i.bj, ptr %.sroa.0207, align 4, !tbaa !15
  %i.bk = load float, ptr %i.bh, align 4, !tbaa !15 ; 2 uses
  store float %i.bk, ptr %.sroa.11, align 4, !tbaa !15
  %i.bl = load float, ptr %i.bi, align 4, !tbaa !15 ; 3 uses
  store float %i.bl, ptr %.sroa.20, align 4, !tbaa !15
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !30 ; 2 uses
  switch i32 %i.bn, label %bb.g [
    i32 2, label %bb.f
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e
  %i.bo = phi float [ %i.bl, %bb.d ], [ %i.bk, %bb.f ], [ %i.bl, %bb.e ] ; 3 uses
  %.081.sroa.phi = phi ptr [ %.sroa.18, %bb.d ], [ %.sroa.10175, %bb.f ], [ %.sroa.18, %bb.e ]
  %.080.sroa.phi = phi ptr [ %.sroa.0173, %bb.d ], [ %.sroa.18, %bb.f ], [ %.sroa.10175, %bb.e ] ; 2 uses
  %.080.sroa.phi196 = phi ptr [ %.sroa.0207, %bb.d ], [ %.sroa.20, %bb.f ], [ %.sroa.11, %bb.e ] ; 2 uses
  %.0.sroa.phi = phi ptr [ %.sroa.10175, %bb.d ], [ %.sroa.0173, %bb.f ], [ %.sroa.0173, %bb.e ] ; 2 uses
  %.0.sroa.phi178 = phi ptr [ %.sroa.11, %bb.d ], [ %.sroa.0207, %bb.f ], [ %.sroa.0207, %bb.e ]
  %.0.sroa.phi208 = phi ptr [ %.0.sroa.gep, %bb.d ], [ %2, %bb.f ], [ %2, %bb.e ]
  %i.bp = load float, ptr %.0.sroa.phi208, align 4, !tbaa !15 ; 2 uses
  %i.bq = sext i32 %i.bn to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bq
  %i.bs = load float, ptr %i.br, align 4, !tbaa !15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0173)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10175)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18)
  %i.bt = load float, ptr %.0.sroa.phi178, align 4, !tbaa !15 ; 3 uses
  %i.bu = fmul float %i.bo, %i.bo
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.bt, float %i.bu)
  %i.bw = tail call noundef float @sqrtf(float noundef %i.bv) #13 ; 2 uses
  %i.bx = fcmp une float %i.bw, 0.000000e+00
  br i1 %i.bx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.by = fdiv float %i.bp, %i.bw                 ; 2 uses
  %i.bz = fmul float %i.by, %i.bt
  store float %i.bz, ptr %.0.sroa.phi, align 4, !tbaa !15
  %i.ca = load float, ptr %.080.sroa.phi196, align 4, !tbaa !15
  %i.cb = fcmp olt float %i.ca, 0.000000e+00
  %i.cc = fneg float %i.bs
  %i.cd = select i1 %i.cb, float %i.cc, float %i.bs
  store float %i.cd, ptr %.080.sroa.phi, align 4, !tbaa !15
  %i.ce = fmul float %i.by, %i.bo
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store float %i.bp, ptr %.0.sroa.phi, align 4, !tbaa !15
  %i.cf = load float, ptr %.080.sroa.phi196, align 4, !tbaa !15
  %i.cg = fcmp olt float %i.cf, 0.000000e+00
  %i.ch = fneg float %i.bs
  %i.ci = select i1 %i.cg, float %i.ch, float %i.bs
  store float %i.ci, ptr %.080.sroa.phi, align 4, !tbaa !15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink = phi float [ 0.000000e+00, %bb.i ], [ %i.ce, %bb.h ]
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
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.q

end_hunk_0
begin_hunk_1_@_ZNK13btConvexShape17getAabbNonVirtualERK11btTransformR9btVector3S4_:bb.a
  %i.gb = add nsw i32 %i.ga, 2
  %i.gc = srem i32 %i.gb, 3
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ge = sext i32 %i.gc to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.ge
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !15 ; 4 uses
  store float %i.gg, ptr %8, align 4, !tbaa !15
  %i.gh = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  store float %i.gg, ptr %i.gh, align 4, !tbaa !15
  %i.gi = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store float %i.gg, ptr %i.gi, align 4, !tbaa !15
  %i.gj = sext i32 %i.ga to i64                   ; 2 uses
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.gj
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !15
  %i.gm = fadd float %i.gg, %i.gl
  %i.gn = getelementptr inbounds [4 x i8], ptr %8, i64 %i.gj
  store float %i.gm, ptr %i.gn, align 4, !tbaa !15
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gp = load <2 x float>, ptr %i.go, align 4
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !15, !noalias !52
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !15, !noalias !52
  %i.gv = tail call noundef float @llvm.fabs.f32(float %i.gu)
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.gx = load <2 x float>, ptr %i.gw, align 4, !tbaa !15, !noalias !52
  %i.gy = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.gx) ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.7128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.7128.0.copyload = load float, ptr %.sroa.7128.0..sroa_idx, align 4 ; 2 uses
  %i.ha = load <2 x float>, ptr %1, align 4, !tbaa !15, !noalias !52 ; 2 uses
  %i.hb = load <2 x float>, ptr %i.gq, align 4, !tbaa !15, !noalias !52 ; 2 uses
  %i.hc = shufflevector <2 x float> %i.ha, <2 x float> %i.hb, <2 x i32> <i32 0, i32 2>
  %i.hd = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.hc)
  %i.he = shufflevector <2 x float> %i.ha, <2 x float> %i.hb, <2 x i32> <i32 1, i32 3>
  %i.hf = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.he)
  %i.hg = insertelement <2 x float> %i.gp, float %i.gs, i64 1
  %i.hh = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.hg)
  %i.hi = load <2 x float>, ptr %i.gz, align 4    ; 2 uses
  %i.hj = load float, ptr %8, align 4, !tbaa !15  ; 2 uses
  %i.hk = load float, ptr %i.gh, align 4, !tbaa !15 ; 2 uses
  %i.hl = load float, ptr %i.gi, align 4, !tbaa !15 ; 2 uses
  %i.hm = insertelement <2 x float> poison, float %i.hk, i64 0
  %i.hn = shufflevector <2 x float> %i.hm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ho = fmul <2 x float> %i.hf, %i.hn
  %i.hp = insertelement <2 x float> poison, float %i.hj, i64 0
  %i.hq = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hq, <2 x float> %i.hd, <2 x float> %i.ho)
  %i.hs = insertelement <2 x float> poison, float %i.hl, i64 0
  %i.ht = shufflevector <2 x float> %i.hs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ht, <2 x float> %i.hh, <2 x float> %i.hr) ; 2 uses
  %i.hv = extractelement <2 x float> %i.gy, i64 0
  %i.hw = fmul float %i.hv, %i.hk
  %i.hx = tail call float @llvm.fmuladd.f32(float %i.hj, float %i.gv, float %i.hw)
  %i.hy = extractelement <2 x float> %i.gy, i64 1
  %i.hz = tail call noundef float @llvm.fmuladd.f32(float %i.hl, float %i.hy, float %i.hx) ; 2 uses
  %i.ia = fsub <2 x float> %i.hi, %i.hu
  %i.ib = fsub float %.sroa.7128.0.copyload, %i.hz
  %.sroa.3.12.vec.insert.i109 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ib, i64 0
  store <2 x float> %i.ia, ptr %2, align 4
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i109, ptr %.sroa.44.0..sroa_idx, align 4, !tbaa !16
  %i.ic = fadd <2 x float> %i.hi, %i.hu
  %i.id = fadd float %.sroa.7128.0.copyload, %i.hz
  %.sroa.3.12.vec.insert.i114 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.id, i64 0
  store <2 x float> %i.ic, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i114, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %.loopexit

_ZNK13btConvexShape19getMarginNonVirtualEv.exit118: ; preds = %bb.a, %bb.a
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.if = load float, ptr %i.ie, align 8, !tbaa !24
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ij = load <2 x float>, ptr %i.ii, align 4
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.im = load float, ptr %i.il, align 4, !tbaa !15, !noalias !53
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.io = load float, ptr %i.in, align 4, !tbaa !15, !noalias !53 ; 2 uses
  %i.ip = tail call noundef float @llvm.fabs.f32(float %i.io)
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !15, !noalias !53 ; 2 uses
  %i.is = tail call noundef float @llvm.fabs.f32(float %i.ir)
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.iu = load float, ptr %i.it, align 4, !tbaa !15, !noalias !53 ; 2 uses
  %i.iv = tail call noundef float @llvm.fabs.f32(float %i.iu)
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !15
  %i.iz = load <3 x float>, ptr %i.ih, align 8, !tbaa !15 ; 2 uses
  %i.ja = load <3 x float>, ptr %i.ig, align 8, !tbaa !15 ; 2 uses
  %i.jb = fsub <3 x float> %i.iz, %i.ja
  %i.jc = fmul <3 x float> %i.jb, splat (float 5.000000e-01)
  %i.jd = insertelement <3 x float> poison, float %i.if, i64 0
  %i.je = shufflevector <3 x float> %i.jd, <3 x float> poison, <3 x i32> zeroinitializer
  %i.jf = fadd <3 x float> %i.je, %i.jc           ; 6 uses
  %i.jg = fadd <3 x float> %i.iz, %i.ja
  %i.jh = fmul <3 x float> %i.jg, splat (float 5.000000e-01) ; 6 uses
  %i.ji = load <2 x float>, ptr %1, align 4, !tbaa !15, !noalias !53 ; 2 uses
  %i.jj = load <2 x float>, ptr %i.ik, align 4, !tbaa !15, !noalias !53 ; 2 uses
  %i.jk = shufflevector <2 x float> %i.ji, <2 x float> %i.jj, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.jl = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.jk)
  %i.jm = shufflevector <2 x float> %i.ji, <2 x float> %i.jj, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.jn = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.jm)
  %i.jo = insertelement <2 x float> %i.ij, float %i.im, i64 1 ; 2 uses
  %i.jp = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.jo)
  %i.jq = shufflevector <3 x float> %i.jh, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jr = fmul <2 x float> %i.jq, %i.jm
  %i.js = shufflevector <3 x float> %i.jh, <3 x float> poison, <2 x i32> zeroinitializer
  %i.jt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.js, <2 x float> %i.jk, <2 x float> %i.jr)
  %i.ju = shufflevector <3 x float> %i.jh, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.jv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ju, <2 x float> %i.jo, <2 x float> %i.jt)
  %i.jw = extractelement <3 x float> %i.jh, i64 1
  %i.jx = fmul float %i.jw, %i.ir
  %i.jy = extractelement <3 x float> %i.jh, i64 0
  %i.jz = tail call float @llvm.fmuladd.f32(float %i.jy, float %i.io, float %i.jx)
  %i.ka = extractelement <3 x float> %i.jh, i64 2
  %i.kb = tail call noundef float @llvm.fmuladd.f32(float %i.ka, float %i.iu, float %i.jz)
  %i.kc = load <2 x float>, ptr %i.iw, align 4, !tbaa !15
  %i.kd = fadd <2 x float> %i.jv, %i.kc           ; 2 uses
  %i.ke = fadd float %i.kb, %i.iy                 ; 2 uses
  %i.kf = shufflevector <3 x float> %i.jf, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kg = fmul <2 x float> %i.kf, %i.jn
  %i.kh = shufflevector <3 x float> %i.jf, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ki = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kh, <2 x float> %i.jl, <2 x float> %i.kg)
  %i.kj = shufflevector <3 x float> %i.jf, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.kk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kj, <2 x float> %i.jp, <2 x float> %i.ki) ; 2 uses
  %i.kl = extractelement <3 x float> %i.jf, i64 1
  %i.km = fmul float %i.kl, %i.is
  %i.kn = extractelement <3 x float> %i.jf, i64 0
  %i.ko = tail call float @llvm.fmuladd.f32(float %i.kn, float %i.ip, float %i.km)
  %i.kp = extractelement <3 x float> %i.jf, i64 2
  %i.kq = tail call noundef float @llvm.fmuladd.f32(float %i.kp, float %i.iv, float %i.ko) ; 2 uses
  %i.kr = fsub <2 x float> %i.kd, %i.kk
  %i.ks = fsub float %i.ke, %i.kq
  %.sroa.3.12.vec.insert.i27.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ks, i64 0
  store <2 x float> %i.kr, ptr %2, align 4
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i27.i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 4, !tbaa !16
  %i.kt = fadd <2 x float> %i.kk, %i.kd
  %i.ku = fadd float %i.kq, %i.ke
  %.sroa.3.12.vec.insert.i32.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ku, i64 0
  store <2 x float> %i.kt, ptr %3, align 4
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i32.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !16
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.kv = load ptr, ptr %0, align 8, !tbaa !13
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.kx = load ptr, ptr %i.kw, align 8
  tail call void %i.kx(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.d, %_ZNK13btConvexShape19getMarginNonVirtualEv.exit118, %bb.c, %_ZNK13btConvexShape19getMarginNonVirtualEv.exit69, %_ZNK13btConvexShape19getMarginNonVirtualEv.exit
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

declare void @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #8

declare noundef float @_ZNK16btCollisionShape20getAngularMotionDiscEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #8

declare noundef float @_ZNK16btCollisionShape27getContactBreakingThresholdEf(ptr noundef nonnull align 8 dereferenceable(32), float noundef) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK16btCollisionShape38getAnisotropicRollingFrictionDirectionEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret { <2 x float>, <2 x float> } { <2 x float> splat (float 1.000000e+00), <2 x float> <float 1.000000e+00, float 0.000000e+00> }
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK16btCollisionShape28calculateSerializeBufferSizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i32 16
}

declare noundef ptr @_ZNK16btCollisionShape9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) unnamed_addr #8

declare void @_ZNK16btCollisionShape20serializeSingleShapeEP12btSerializer(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }

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
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"_ZTS16btCollisionShape", !6, i64 8, !9, i64 16, !6, i64 24, !6, i64 28}
!11 = !{!10, !6, i64 8}
!12 = !{!"vtable pointer", !4, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"float", !5, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!5, !5, i64 0}
!17 = !{i64 0, i64 16, !16}
!18 = !{!"_ZTS13btConvexShape", !10, i64 0}
!19 = !{!"_ZTS9btVector3", !5, i64 0}
!20 = !{!"_ZTS21btConvexInternalShape", !18, i64 0, !19, i64 32, !19, i64 48, !14, i64 64, !14, i64 68}
!21 = !{!"_ZTS14btCapsuleShape", !20, i64 0, !6, i64 72}
!22 = !{!21, !6, i64 72}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!20, !14, i64 64}
!25 = !{!10, !9, i64 16}
!26 = !{!10, !6, i64 24}
!27 = !{!10, !6, i64 28}
!28 = distinct !{!28, !23}
!29 = !{!"_ZTS15btCylinderShape", !20, i64 0, !6, i64 72}
!30 = !{!29, !6, i64 72}
!31 = !{!"p1 _ZTS18btConvexPolyhedron", !9, i64 0}
!32 = !{!"_ZTS23btPolyhedralConvexShape", !20, i64 0, !31, i64 72}
!33 = !{!"bool", !5, i64 0}
!34 = !{!"_ZTS34btPolyhedralConvexAabbCachingShape", !32, i64 0, !19, i64 80, !19, i64 96, !33, i64 112}
!35 = !{!"p1 _ZTS9btVector3", !9, i64 0}
!36 = !{!"_ZTS23btConvexPointCloudShape", !34, i64 0, !35, i64 120, !6, i64 128}
!37 = !{!36, !35, i64 120}
!38 = !{!36, !6, i64 128}
!39 = !{!"_ZTS18btAlignedAllocatorI9btVector3Lj16EE"}
!40 = !{!"_ZTS20btAlignedObjectArrayI9btVector3E", !39, i64 0, !6, i64 4, !6, i64 8, !35, i64 16, !33, i64 24}
!41 = !{!40, !35, i64 16}
!42 = !{!40, !6, i64 4}
!43 = !{ptr @_ZNK13btConvexShape19getMarginNonVirtualEv}
!44 = distinct !{!44, i1 false, !"_ZNK11btMatrix3x38absoluteEv"}
!45 = distinct !{!45, !44, !"_ZNK11btMatrix3x38absoluteEv: argument 0"}
!46 = distinct !{!46, !23}
!47 = distinct !{!47, i1 false, !"_ZNK11btMatrix3x38absoluteEv"}
!48 = distinct !{!48, !47, !"_ZNK11btMatrix3x38absoluteEv: argument 0"}
!49 = distinct !{!49, i1 false, !"_ZNK11btMatrix3x38absoluteEv"}
!50 = distinct !{!50, !49, !"_ZNK11btMatrix3x38absoluteEv: argument 0"}
!51 = !{!45}
!52 = !{!48}
!53 = !{!50}
end_hunk_1
