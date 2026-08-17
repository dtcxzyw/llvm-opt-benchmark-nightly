inline.NumInlined: 117
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btVector3 = type { [4 x float] }

$_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif = comdat any

$_ZN17btTypedConstraint23solveConstraintObsoleteER12btSolverBodyS1_f = comdat any

$_ZN17btTypedConstraintD2Ev = comdat any

$_ZN23btPoint2PointConstraintD0Ev = comdat any

$_ZNK23btPoint2PointConstraint28calculateSerializeBufferSizeEv = comdat any

$_ZNK23btPoint2PointConstraint9serializeEPvP12btSerializer = comdat any

$_ZNK23btPoint2PointConstraint8getFlagsEv = comdat any

$__clang_call_terminate = comdat any

$_ZTI17btTypedConstraint = comdat any

$_ZTS17btTypedConstraint = comdat any

$_ZTI13btTypedObject = comdat any

$_ZTS13btTypedObject = comdat any

@_ZTV23btPoint2PointConstraint = dso_local constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTI23btPoint2PointConstraint, ptr @_ZN17btTypedConstraintD2Ev, ptr @_ZN23btPoint2PointConstraintD0Ev, ptr @_ZN23btPoint2PointConstraint13buildJacobianEv, ptr @_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif, ptr @_ZN23btPoint2PointConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E, ptr @_ZN23btPoint2PointConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E, ptr @_ZN17btTypedConstraint23solveConstraintObsoleteER12btSolverBodyS1_f, ptr @_ZN23btPoint2PointConstraint8setParamEifi, ptr @_ZNK23btPoint2PointConstraint8getParamEii, ptr @_ZNK23btPoint2PointConstraint28calculateSerializeBufferSizeEv, ptr @_ZNK23btPoint2PointConstraint9serializeEPvP12btSerializer, ptr @_ZNK23btPoint2PointConstraint8getFlagsEv] }, align 8
@_ZTI17btTypedConstraint = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTS17btTypedConstraint, i32 0, i32 1, ptr @_ZTI13btTypedObject, i64 2050 }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTS17btTypedConstraint = linkonce_odr dso_local constant [20 x i8] c"17btTypedConstraint\00", comdat, align 1
@_ZTI13btTypedObject = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13btTypedObject }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS13btTypedObject = linkonce_odr dso_local constant [16 x i8] c"13btTypedObject\00", comdat, align 1
@_ZTI23btPoint2PointConstraint = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS23btPoint2PointConstraint, ptr @_ZTI17btTypedConstraint }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS23btPoint2PointConstraint = dso_local constant [26 x i8] c"23btPoint2PointConstraint\00", align 1
@.str = private unnamed_addr constant [33 x i8] c"btPoint2PointConstraintFloatData\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN23btPoint2PointConstraintC1ER11btRigidBodyS1_RK9btVector3S4_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN23btPoint2PointConstraintC2ER11btRigidBodyS1_RK9btVector3S4_
@_ZN23btPoint2PointConstraintC1ER11btRigidBodyRK9btVector3 = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN23btPoint2PointConstraintC2ER11btRigidBodyRK9btVector3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23btPoint2PointConstraintC2ER11btRigidBodyS1_RK9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr noundef nonnull align 8 dereferenceable(744) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr noundef nonnull align 8 dereferenceable(744) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV23btPoint2PointConstraint, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 324
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 340
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 356
  store i32 0, ptr %i.c, align 4, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i8 0, ptr %i.d, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 372
  store <2 x float> <float 3.000000e-01, float 1.000000e+00>, ptr %i.e, align 4, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 380
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !26
  ret void
}

declare void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(744), ptr noundef nonnull align 8 dereferenceable(744)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23btPoint2PointConstraintC2ER11btRigidBodyRK9btVector3(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBody(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(744) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV23btPoint2PointConstraint, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 324
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !11
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load float, ptr %2, align 4, !tbaa !25   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !25 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !25 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load float, ptr %i.j, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load float, ptr %i.l, align 8, !tbaa !25
  %i.n = load float, ptr %i.d, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.p = load float, ptr %i.o, align 4, !tbaa !25
  %i.q = fmul float %i.g, %i.p
  %i.r = tail call float @llvm.fmuladd.f32(float %i.e, float %i.n, float %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load float, ptr %i.s, align 8, !tbaa !25
  %i.u = tail call noundef float @llvm.fmuladd.f32(float %i.i, float %i.t, float %i.r)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.w = load <2 x float>, ptr %i.b, align 8, !tbaa !25 ; 2 uses
  %i.x = load <2 x float>, ptr %i.c, align 8, !tbaa !25 ; 2 uses
  %i.y = insertelement <2 x float> poison, float %i.g, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = shufflevector <2 x float> %i.w, <2 x float> %i.x, <2 x i32> <i32 1, i32 3>
  %i.ab = fmul <2 x float> %i.z, %i.aa
  %i.ac = insertelement <2 x float> poison, float %i.e, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = shufflevector <2 x float> %i.w, <2 x float> %i.x, <2 x i32> <i32 0, i32 2>
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.ae, <2 x float> %i.ab)
  %i.ag = insertelement <2 x float> poison, float %i.i, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = insertelement <2 x float> poison, float %i.k, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.m, i64 1
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.aj, <2 x float> %i.af)
  %i.al = load <2 x float>, ptr %i.v, align 8, !tbaa !25
  %i.am = fadd <2 x float> %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ao = load float, ptr %i.an, align 8, !tbaa !25
  %i.ap = fadd float %i.u, %i.ao
  %.sroa.3.12.vec.insert.i4.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ap, i64 0
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 340
  store <2 x float> %i.am, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 348
  store <2 x float> %.sroa.3.12.vec.insert.i4.i, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 356
  store i32 0, ptr %i.as, align 4, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i8 0, ptr %i.at, align 8, !tbaa !24
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 372
  store <2 x float> <float 3.000000e-01, float 1.000000e+00>, ptr %i.au, align 4, !tbaa !25
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 380
  store float 0.000000e+00, ptr %i.av, align 4, !tbaa !26
  ret void
}

declare void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBody(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(744)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN23btPoint2PointConstraint13buildJacobianEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(384) initializes((56, 60)) %0) unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %class.btVector3, align 4           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float 0.000000e+00, ptr %i.a, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28, !nonnull !29, !align !30 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !31, !nonnull !29, !align !30 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 504
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 452
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 504
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 452
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 512
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 512
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  store float 1.000000e+00, ptr %i.ai, align 4, !tbaa !25
  %i.aj = getelementptr inbounds nuw [84 x i8], ptr %i.b, i64 %indvars.iv ; 13 uses
  %i.ak = load float, ptr %i.h, align 8, !tbaa !25, !noalias !32 ; 2 uses
  %i.al = load float, ptr %i.i, align 8, !tbaa !25, !noalias !32 ; 2 uses
  %i.am = load float, ptr %i.j, align 8, !tbaa !25, !noalias !32 ; 2 uses
  %i.an = load float, ptr %i.p, align 8, !tbaa !25, !noalias !35 ; 2 uses
  %i.ao = load float, ptr %i.q, align 8, !tbaa !25, !noalias !35 ; 2 uses
  %i.ap = load float, ptr %i.r, align 8, !tbaa !25, !noalias !35 ; 2 uses
  %i.aq = load <4 x float>, ptr %i.t, align 4
  %i.ar = load float, ptr %i.v, align 8, !tbaa !25
  %i.as = load float, ptr %i.y, align 4, !tbaa !25 ; 3 uses
  %i.at = load float, ptr %i.z, align 8, !tbaa !25 ; 2 uses
  %i.au = load float, ptr %i.ad, align 4, !tbaa !38
  %i.av = load float, ptr %i.af, align 4, !tbaa !38
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.bc = load <2 x float>, ptr %i.e, align 8, !tbaa !25, !noalias !32 ; 3 uses
  %i.bd = load <2 x float>, ptr %i.f, align 8, !tbaa !25, !noalias !32 ; 3 uses
  %i.be = load <2 x float>, ptr %i.g, align 8, !tbaa !25, !noalias !32 ; 3 uses
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.bg = load <2 x float>, ptr %i.m, align 8, !tbaa !25, !noalias !35 ; 3 uses
  %i.bh = load <2 x float>, ptr %i.n, align 8, !tbaa !25, !noalias !35 ; 3 uses
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bj = load <2 x float>, ptr %i.o, align 8, !tbaa !25, !noalias !35 ; 3 uses
  %i.bk = extractelement <2 x float> %i.bg, i64 1
  %i.bl = extractelement <2 x float> %i.bg, i64 0
  %i.bm = extractelement <2 x float> %i.bj, i64 1
  %i.bn = extractelement <2 x float> %i.bj, i64 0
  %i.bo = load <2 x float>, ptr %i.s, align 4, !tbaa !25 ; 2 uses
  %i.bp = load <2 x float>, ptr %i.u, align 8, !tbaa !25
  %i.bq = load <2 x float>, ptr %i.w, align 4, !tbaa !25 ; 3 uses
  %i.br = load float, ptr %i.x, align 8, !tbaa !25 ; 2 uses
  %i.bs = load <2 x float>, ptr %i.aa, align 4, !tbaa !25
  %i.bt = load float, ptr %i.ab, align 8, !tbaa !25 ; 2 uses
  %i.bu = fmul float %i.bk, %i.br
  %i.bv = extractelement <2 x float> %i.bq, i64 0 ; 2 uses
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.bl, float %i.bu)
  %i.bx = tail call noundef float @llvm.fmuladd.f32(float %i.as, float %i.an, float %i.bw)
  %i.by = shufflevector <2 x float> %i.bc, <2 x float> %i.bd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.bz = shufflevector <2 x float> %i.be, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ca = shufflevector <4 x float> %i.by, <4 x float> %i.bz, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.cb = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cc = shufflevector <4 x float> %i.ca, <4 x float> %i.cb, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cd = shufflevector <2 x float> %i.bo, <2 x float> %i.bq, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ce = fmul <4 x float> %i.cc, %i.cd
  %i.cf = fmul float %i.bm, %i.br
  %i.cg = shufflevector <2 x float> %i.bo, <2 x float> %i.bq, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.ch = shufflevector <2 x float> %i.bc, <2 x float> %i.bd, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
end_hunk_0
begin_hunk_1_@_ZN23btPoint2PointConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_:bb.a
  store float %i.y, ptr %i.bc, align 4, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store float 0.000000e+00, ptr %i.bd, align 4, !tbaa !25
  store float %i.ah, ptr %i.au, align 4, !tbaa !25
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store float %i.av, ptr %i.be, align 4, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store <2 x float> zeroinitializer, ptr %i.bf, align 4, !tbaa !25
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !66 ; 3 uses
  store float -1.000000e+00, ptr %i.bh, align 4, !tbaa !25
  %i.bi = getelementptr [4 x i8], ptr %i.bh, i64 %i.e
  %i.bj = getelementptr i8, ptr %i.bi, i64 4
  store float -1.000000e+00, ptr %i.bj, align 4, !tbaa !25
  %i.bk = getelementptr [4 x i8], ptr %i.bh, i64 %i.i
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  store float -1.000000e+00, ptr %i.bl, align 4, !tbaa !25
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !25 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !25 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load <4 x float>, ptr %i.bq, align 4
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !25 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !25
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bz = load float, ptr %i.by, align 4, !tbaa !25
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !25
  %i.cc = fmul float %i.bp, %i.cb
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bn, float %i.cc)
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !25
  %i.cg = tail call noundef float @llvm.fmuladd.f32(float %i.cf, float %i.bu, float %i.cd) ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !67 ; 6 uses
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.e ; 4 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.i ; 3 uses
  %i.cl = fneg float %i.cg
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %i.cs = load <2 x float>, ptr %3, align 4, !tbaa !25 ; 2 uses
  %i.ct = load <2 x float>, ptr %i.bv, align 4, !tbaa !25 ; 2 uses
  %i.cu = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = shufflevector <2 x float> %i.cs, <2 x float> %i.ct, <2 x i32> <i32 1, i32 3>
  %i.cx = fmul <2 x float> %i.cv, %i.cw
  %i.cy = shufflevector <2 x float> %i.cs, <2 x float> %i.ct, <2 x i32> <i32 0, i32 2>
  %i.cz = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.da, <2 x float> %i.cx)
  %i.dc = insertelement <2 x float> %i.bs, float %i.bx, i64 1
  %i.dd = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> %i.de, <2 x float> %i.db) ; 3 uses
  store float 0.000000e+00, ptr %i.ci, align 4, !tbaa !25
  store float %i.cl, ptr %i.cm, align 4, !tbaa !25
  %i.dg = extractelement <2 x float> %i.df, i64 1 ; 2 uses
  store float %i.dg, ptr %i.cn, align 4, !tbaa !25
  store float 0.000000e+00, ptr %i.co, align 4, !tbaa !25
  store float %i.cg, ptr %i.cj, align 4, !tbaa !25
  store float 0.000000e+00, ptr %i.cp, align 4, !tbaa !25
  %i.dh = fneg <2 x float> %i.df                  ; 2 uses
  %i.di = extractelement <2 x float> %i.dh, i64 0
  store float %i.di, ptr %i.cq, align 4, !tbaa !25
  store float 0.000000e+00, ptr %i.cr, align 4, !tbaa !25
  %i.dj = extractelement <2 x float> %i.dh, i64 1
  store float %i.dj, ptr %i.ck, align 4, !tbaa !25
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.dl = extractelement <2 x float> %i.df, i64 0 ; 2 uses
  store float %i.dl, ptr %i.dk, align 4, !tbaa !25
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store <2 x float> zeroinitializer, ptr %i.dm, align 4, !tbaa !25
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !13 ; 2 uses
  %i.dp = and i32 %i.do, 1
  %.not = icmp eq i32 %i.dp, 0
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.in = select i1 %.not, ptr %i.dr, ptr %i.dq
  %i.ds = load float, ptr %.in, align 4, !tbaa !25
  %i.dt = load float, ptr %1, align 8, !tbaa !68
  %i.du = fmul float %i.ds, %i.dt                 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !69 ; 3 uses
  %i.dz = load float, ptr %i.dv, align 4, !tbaa !25
  %i.ea = fadd float %i.dl, %i.dz
  %i.eb = fsub float %i.ea, %i.y
  %i.ec = load float, ptr %i.dw, align 4, !tbaa !25
  %i.ed = fsub float %i.eb, %i.ec
  %i.ee = fmul float %i.du, %i.ed
  store float %i.ee, ptr %i.dy, align 4, !tbaa !25
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !25
  %i.eh = fadd float %i.dg, %i.eg
  %i.ei = fsub float %i.eh, %i.ah
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !25
  %i.el = fsub float %i.ei, %i.ek
  %i.em = fmul float %i.du, %i.el
  %i.en = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.e
  store float %i.em, ptr %i.en, align 4, !tbaa !25
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !25
  %i.eq = fadd float %i.cg, %i.ep
  %i.er = fsub float %i.eq, %i.aq
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.et = load float, ptr %i.es, align 4, !tbaa !25
  %i.eu = fsub float %i.er, %i.et
  %i.ev = fmul float %i.du, %i.eu
  %i.ew = shl nsw i64 %i.e, 1                     ; 4 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.ew
  store float %i.ev, ptr %i.ex, align 4, !tbaa !25
  %i.ey = and i32 %i.do, 2
  %.not59 = icmp eq i32 %i.ey, 0
  br i1 %.not59, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 364 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !70 ; 3 uses
  %i.fc = load float, ptr %i.ez, align 4, !tbaa !71 ; 2 uses
  store float %i.fc, ptr %i.fb, align 4, !tbaa !25
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.e
  store float %i.fc, ptr %i.fd, align 4, !tbaa !25
  %i.fe = load float, ptr %i.ez, align 4, !tbaa !71
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.ew
  store float %i.fe, ptr %i.ff, align 4, !tbaa !25
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.a
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 3 uses
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !72 ; 5 uses
  %i.fi = fneg float %i.fh                        ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.fl = fcmp ogt float %i.fh, 0.000000e+00
  br i1 %i.fl, label %.split.1, label %.split80.us

.split.1:                                         ; preds = %.loopexit
  %i.fm = load ptr, ptr %i.fj, align 8, !tbaa !73
  store float %i.fi, ptr %i.fm, align 4, !tbaa !25
  %i.fn = load ptr, ptr %i.fk, align 8, !tbaa !74
  store float %i.fh, ptr %i.fn, align 4, !tbaa !25
  %.pre = load float, ptr %i.fg, align 4, !tbaa !72 ; 2 uses
  %i.fo = fcmp ogt float %.pre, 0.000000e+00
  br i1 %i.fo, label %bb.b, label %.split.2

bb.b:                                             ; preds = %.split.1
  %i.fp = load ptr, ptr %i.fj, align 8, !tbaa !73
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.e
  store float %i.fi, ptr %i.fq, align 4, !tbaa !25
  %i.fr = load ptr, ptr %i.fk, align 8, !tbaa !74
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.e
  store float %i.fh, ptr %i.fs, align 4, !tbaa !25
  %.pre99 = load float, ptr %i.fg, align 4, !tbaa !72
  br label %.split.2

.split.2:                                         ; preds = %bb.b, %.split.1
  %i.ft = phi float [ %.pre99, %bb.b ], [ %.pre, %.split.1 ]
  %i.fu = fcmp ogt float %i.ft, 0.000000e+00
  br i1 %i.fu, label %bb.c, label %.split80.us

bb.c:                                             ; preds = %.split.2
  %i.fv = load ptr, ptr %i.fj, align 8, !tbaa !73
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %i.ew
  store float %i.fi, ptr %i.fw, align 4, !tbaa !25
  %i.fx = load ptr, ptr %i.fk, align 8, !tbaa !74
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.ew
  store float %i.fh, ptr %i.fy, align 4, !tbaa !25
  br label %.split80.us

.split80.us:                                      ; preds = %.split.2, %bb.c, %.loopexit
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ga = load float, ptr %i.fz, align 8, !tbaa !75
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 84
  store float %i.ga, ptr %i.gb, align 4, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN23btPoint2PointConstraint9updateRHSEf(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(384) %0, float noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN23btPoint2PointConstraint8setParamEifi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(384) %0, i32 noundef %1, float noundef %2, i32 noundef %3) unnamed_addr #5 align 2 {
bb.a:
  %.not = icmp eq i32 %3, -1
  br i1 %.not, label %4, label %bb.c

4:                                                ; preds = %bb.a
  switch i32 %1, label %bb.c [
    i32 1, label %5
    i32 2, label %5
    i32 3, label %bb.b
    i32 4, label %bb.b
  ]

5:                                                ; preds = %4, %4
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 360
  store float %2, ptr %6, align 8, !tbaa !77
  br label %.sink.split

bb.b:                                             ; preds = %4, %4
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 364
  store float %2, ptr %7, align 4, !tbaa !71
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %5
  %.sink6 = phi i32 [ 1, %5 ], [ 2, %bb.b ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = or i32 %i.b, %.sink6
  store i32 %i.c, ptr %i.a, align 4, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %4, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZNK23btPoint2PointConstraint8getParamEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(384) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 align 2 {
bb.a:
  %.not = icmp eq i32 %2, -1
  br i1 %.not, label %3, label %bb.d

3:                                                ; preds = %bb.a
  switch i32 %1, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.b
    i32 3, label %bb.c
    i32 4, label %bb.c
  ]

bb.b:                                             ; preds = %3, %3
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 360
  %5 = load float, ptr %4, align 8, !tbaa !77
  br label %bb.d

bb.c:                                             ; preds = %3, %3
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.b = load float, ptr %i.a, align 4, !tbaa !71
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %3, %bb.a
  %.0 = phi float [ f0x7F7FFFFF, %bb.a ], [ f0x7F7FFFFF, %3 ], [ %5, %bb.b ], [ %i.b, %bb.c ]
  ret float %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 %1, i32 noundef %2, i32 noundef %3, float noundef %4) unnamed_addr #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraint23solveConstraintObsoleteER12btSolverBodyS1_f(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, ptr noundef nonnull align 8 dereferenceable(248) %2, float noundef %3) unnamed_addr #10 comdat align 2 {
bb.a:
  ret void
}

declare noundef ptr @_ZNK17btTypedConstraint9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraintD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN23btPoint2PointConstraintD0Ev(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN23btPoint2PointConstraintdlEPv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #18
  unreachable

_ZN23btPoint2PointConstraintdlEPv.exit:           ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK23btPoint2PointConstraint28calculateSerializeBufferSizeEv(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  ret i32 96
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK23btPoint2PointConstraint9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK17btTypedConstraint9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load float, ptr %i.b, align 4, !tbaa !25
  store float %i.d, ptr %i.c, align 4, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.f = load float, ptr %i.e, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 68
  store float %i.f, ptr %i.g, align 4, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.i = load float, ptr %i.h, align 4, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  store float %i.i, ptr %i.j, align 4, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.l = load float, ptr %i.k, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 76
  store float %i.l, ptr %i.m, align 4, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.p = load float, ptr %i.n, align 4, !tbaa !25
  store float %i.p, ptr %i.o, align 4, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.r = load float, ptr %i.q, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 84
  store float %i.r, ptr %i.s, align 4, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.u = load float, ptr %i.t, align 4, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88
  store float %i.u, ptr %i.v, align 4, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.x = load float, ptr %i.w, align 8, !tbaa !25
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 92
  store float %i.x, ptr %i.y, align 4, !tbaa !25
  ret ptr @.str
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK23btPoint2PointConstraint8getFlagsEv(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  ret i32 %i.b
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{i64 0, i64 16, !12}
!12 = !{!7, !7, i64 0}
!13 = !{!14, !6, i64 356}
!14 = !{!"_ZTS23btPoint2PointConstraint", !15, i64 0, !7, i64 72, !22, i64 324, !22, i64 340, !6, i64 356, !17, i64 360, !17, i64 364, !18, i64 368, !23, i64 372}
!15 = !{!"_ZTS17btTypedConstraint", !16, i64 8, !6, i64 12, !7, i64 16, !17, i64 24, !18, i64 28, !18, i64 29, !6, i64 32, !19, i64 40, !19, i64 48, !17, i64 56, !17, i64 60, !21, i64 64}
!16 = !{!"_ZTS13btTypedObject", !6, i64 0}
!17 = !{!"float", !7, i64 0}
!18 = !{!"bool", !7, i64 0}
!19 = !{!"p1 _ZTS11btRigidBody", !20, i64 0}
!20 = !{!"any pointer", !7, i64 0}
!21 = !{!"p1 _ZTS15btJointFeedback", !20, i64 0}
!22 = !{!"_ZTS9btVector3", !7, i64 0}
!23 = !{!"_ZTS19btConstraintSetting", !17, i64 0, !17, i64 4, !17, i64 8}
!24 = !{!14, !18, i64 368}
!25 = !{!17, !17, i64 0}
!26 = !{!23, !17, i64 8}
!27 = !{!15, !17, i64 56}
!28 = !{!15, !19, i64 40}
!29 = !{}
!30 = !{i64 8}
!31 = !{!15, !19, i64 48}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!34 = distinct !{!34, !"_ZNK11btMatrix3x39transposeEv"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!37 = distinct !{!37, !"_ZNK11btMatrix3x39transposeEv"}
!38 = !{!39, !17, i64 452}
!39 = !{!"_ZTS11btRigidBody", !40, i64 0, !42, i64 372, !22, i64 420, !22, i64 436, !17, i64 452, !22, i64 456, !22, i64 472, !22, i64 488, !22, i64 504, !22, i64 520, !22, i64 536, !17, i64 552, !17, i64 556, !18, i64 560, !17, i64 564, !17, i64 568, !17, i64 572, !17, i64 576, !17, i64 580, !17, i64 584, !49, i64 592, !50, i64 600, !6, i64 632, !6, i64 636, !22, i64 640, !22, i64 656, !22, i64 672, !22, i64 688, !22, i64 704, !22, i64 720, !6, i64 736, !6, i64 740}
!40 = !{!"_ZTS17btCollisionObject", !41, i64 8, !41, i64 72, !22, i64 136, !22, i64 152, !22, i64 168, !6, i64 184, !17, i64 188, !43, i64 192, !44, i64 200, !20, i64 208, !44, i64 216, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !17, i64 244, !17, i64 248, !17, i64 252, !17, i64 256, !17, i64 260, !17, i64 264, !17, i64 268, !6, i64 272, !20, i64 280, !6, i64 288, !6, i64 292, !6, i64 296, !17, i64 300, !17, i64 304, !17, i64 308, !6, i64 312, !45, i64 320, !6, i64 352, !22, i64 356}
!41 = !{!"_ZTS11btTransform", !42, i64 0, !22, i64 48}
!42 = !{!"_ZTS11btMatrix3x3", !7, i64 0}
!43 = !{!"p1 _ZTS17btBroadphaseProxy", !20, i64 0}
!44 = !{!"p1 _ZTS16btCollisionShape", !20, i64 0}
!45 = !{!"_ZTS20btAlignedObjectArrayIPK17btCollisionObjectE", !46, i64 0, !6, i64 4, !6, i64 8, !47, i64 16, !18, i64 24}
!46 = !{!"_ZTS18btAlignedAllocatorIPK17btCollisionObjectLj16EE"}
!47 = !{!"p2 _ZTS17btCollisionObject", !48, i64 0}
!48 = !{!"any p2 pointer", !20, i64 0}
!49 = !{!"p1 _ZTS13btMotionState", !20, i64 0}
!50 = !{!"_ZTS20btAlignedObjectArrayIP17btTypedConstraintE", !51, i64 0, !6, i64 4, !6, i64 8, !52, i64 16, !18, i64 24}
!51 = !{!"_ZTS18btAlignedAllocatorIP17btTypedConstraintLj16EE"}
!52 = !{!"p2 _ZTS17btTypedConstraint", !48, i64 0}
!53 = !{!54, !17, i64 80}
!54 = !{!"_ZTS15btJacobianEntry", !22, i64 0, !22, i64 16, !22, i64 32, !22, i64 48, !22, i64 64, !17, i64 80}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{i8 0, i8 2}
!58 = !{!59, !6, i64 0}
!59 = !{!"_ZTSN17btTypedConstraint17btConstraintInfo1E", !6, i64 0, !6, i64 4}
!60 = !{!59, !6, i64 4}
!61 = !{!62, !63, i64 8}
!62 = !{!"_ZTSN17btTypedConstraint17btConstraintInfo2E", !17, i64 0, !17, i64 4, !63, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !6, i64 40, !63, i64 48, !63, i64 56, !63, i64 64, !63, i64 72, !6, i64 80, !17, i64 84}
!63 = !{!"p1 float", !20, i64 0}
!64 = !{!62, !6, i64 40}
!65 = !{!62, !63, i64 16}
!66 = !{!62, !63, i64 24}
!67 = !{!62, !63, i64 32}
!68 = !{!62, !17, i64 0}
!69 = !{!62, !63, i64 48}
!70 = !{!62, !63, i64 56}
!71 = !{!14, !17, i64 364}
!72 = !{!14, !17, i64 380}
!73 = !{!62, !63, i64 64}
!74 = !{!62, !63, i64 72}
!75 = !{!14, !17, i64 376}
!76 = !{!62, !17, i64 84}
!77 = !{!14, !17, i64 360}
end_hunk_1
