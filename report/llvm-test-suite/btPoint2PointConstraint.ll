inline.NumInlined: 168
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btVector3 = type { [4 x float] }

$_ZN17btTypedConstraintD2Ev = comdat any

$_ZN23btPoint2PointConstraintD0Ev = comdat any

$_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif = comdat any

$_ZTI17btTypedConstraint = comdat any

$_ZTS17btTypedConstraint = comdat any

$_ZTI13btTypedObject = comdat any

$_ZTS13btTypedObject = comdat any

@_ZTV23btPoint2PointConstraint = dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTI23btPoint2PointConstraint, ptr @_ZN17btTypedConstraintD2Ev, ptr @_ZN23btPoint2PointConstraintD0Ev, ptr @_ZN23btPoint2PointConstraint13buildJacobianEv, ptr @_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif, ptr @_ZN23btPoint2PointConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E, ptr @_ZN23btPoint2PointConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E, ptr @_ZN23btPoint2PointConstraint23solveConstraintObsoleteER12btSolverBodyS1_f] }, align 8
@_ZTI23btPoint2PointConstraint = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS23btPoint2PointConstraint, ptr @_ZTI17btTypedConstraint }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS23btPoint2PointConstraint = dso_local constant [26 x i8] c"23btPoint2PointConstraint\00", align 1
@_ZTI17btTypedConstraint = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTS17btTypedConstraint, i32 0, i32 1, ptr @_ZTI13btTypedObject, i64 2050 }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTS17btTypedConstraint = linkonce_odr dso_local constant [20 x i8] c"17btTypedConstraint\00", comdat, align 1
@_ZTI13btTypedObject = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13btTypedObject }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS13btTypedObject = linkonce_odr dso_local constant [16 x i8] c"13btTypedObject\00", comdat, align 1

@_ZN23btPoint2PointConstraintC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN23btPoint2PointConstraintC2Ev
@_ZN23btPoint2PointConstraintC1ER11btRigidBodyS1_RK9btVector3S4_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN23btPoint2PointConstraintC2ER11btRigidBodyS1_RK9btVector3S4_
@_ZN23btPoint2PointConstraintC1ER11btRigidBodyRK9btVector3 = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN23btPoint2PointConstraintC2ER11btRigidBodyRK9btVector3

; Function Attrs: uwtable
define dso_local void @_ZN23btPoint2PointConstraintC2Ev(ptr noundef nonnull align 8 dereferenceable(396) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintType(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 3)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV23btPoint2PointConstraint, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 380
  store i8 0, ptr %i.a, align 4, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 384
  store <2 x float> <float 3.000000e-01, float 1.000000e+00>, ptr %i.b, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 392
  store float 0.000000e+00, ptr %i.c, align 8, !tbaa !21
  ret void
}

declare void @_ZN17btTypedConstraintC2E21btTypedConstraintType(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: uwtable
define dso_local void @_ZN23btPoint2PointConstraintC2ER11btRigidBodyS1_RK9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(396) %0, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr noundef nonnull align 8 dereferenceable(564) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr noundef nonnull align 8 dereferenceable(564) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV23btPoint2PointConstraint, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 348
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 364
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 380
  store i8 0, ptr %i.c, align 4, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 384
  store <2 x float> <float 3.000000e-01, float 1.000000e+00>, ptr %i.d, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392
  store float 0.000000e+00, ptr %i.e, align 8, !tbaa !21
  ret void
}

declare void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef, ptr noundef nonnull align 8 dereferenceable(564), ptr noundef nonnull align 8 dereferenceable(564)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: uwtable
define dso_local void @_ZN23btPoint2PointConstraintC2ER11btRigidBodyRK9btVector3(ptr noundef nonnull align 8 dereferenceable(396) %0, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBody(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(564) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV23btPoint2PointConstraint, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 348
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !22
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %2, align 4, !tbaa !20   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !20 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load float, ptr %i.f, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !20 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load float, ptr %i.l, align 8, !tbaa !20
  %i.n = load <2 x float>, ptr %i.b, align 8, !tbaa !20 ; 2 uses
  %i.o = load <2 x float>, ptr %i.k, align 8, !tbaa !20 ; 2 uses
  %i.p = insertelement <2 x float> poison, float %i.e, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = shufflevector <2 x float> %i.n, <2 x float> %i.o, <2 x i32> <i32 1, i32 3>
  %i.s = fmul <2 x float> %i.q, %i.r
  %i.t = shufflevector <2 x float> %i.n, <2 x float> %i.o, <2 x i32> <i32 0, i32 2>
  %i.u = insertelement <2 x float> poison, float %i.c, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.v, <2 x float> %i.s)
  %i.x = insertelement <2 x float> poison, float %i.g, i64 0
  %i.y = insertelement <2 x float> %i.x, float %i.m, i64 1
  %i.z = insertelement <2 x float> poison, float %i.i, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.aa, <2 x float> %i.w)
  %i.ac = load <2 x float>, ptr %i.j, align 8, !tbaa !20
  %i.ad = fadd <2 x float> %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = load float, ptr %i.ae, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !20
  %i.ai = fmul float %i.e, %i.ah
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.af, float %i.c, float %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.al = load float, ptr %i.ak, align 8, !tbaa !20
  %i.am = tail call noundef float @llvm.fmuladd.f32(float %i.al, float %i.i, float %i.aj)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ao = load float, ptr %i.an, align 8, !tbaa !20
  %i.ap = fadd float %i.ao, %i.am
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ap, i64 0
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 364
  store <2 x float> %i.ad, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 372
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 380
  store i8 0, ptr %i.as, align 4, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 384
  store <2 x float> <float 3.000000e-01, float 1.000000e+00>, ptr %i.at, align 8, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 392
  store float 0.000000e+00, ptr %i.au, align 8, !tbaa !21
  ret void
}

declare void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBody(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef, ptr noundef nonnull align 8 dereferenceable(564)) unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN23btPoint2PointConstraint13buildJacobianEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(396) initializes((40, 44)) %0) unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %class.btVector3, align 4           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 0.000000e+00, ptr %i.a, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25, !nonnull !26, !align !27 ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !28, !nonnull !26, !align !27 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 428
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 428
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 360
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 436
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 436
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  store float 1.000000e+00, ptr %i.ak, align 4, !tbaa !20
  %i.al = getelementptr inbounds nuw [84 x i8], ptr %i.b, i64 %indvars.iv ; 13 uses
  %i.am = load float, ptr %i.h, align 8, !tbaa !20, !noalias !29 ; 2 uses
  %i.an = load float, ptr %i.i, align 8, !tbaa !20, !noalias !29 ; 2 uses
  %i.ao = load float, ptr %i.p, align 8, !tbaa !20, !noalias !32 ; 2 uses
  %i.ap = load float, ptr %i.q, align 8, !tbaa !20, !noalias !32 ; 2 uses
  %i.aq = load float, ptr %i.r, align 8, !tbaa !20, !noalias !32 ; 2 uses
  %i.ar = load float, ptr %i.s, align 4, !tbaa !20 ; 3 uses
  %i.as = load float, ptr %i.t, align 8, !tbaa !20 ; 3 uses
  %i.at = load float, ptr %i.u, align 4, !tbaa !20 ; 3 uses
  %i.au = load float, ptr %i.v, align 8, !tbaa !20 ; 2 uses
  %i.av = load float, ptr %i.w, align 4, !tbaa !20 ; 2 uses
  %i.aw = load float, ptr %i.x, align 8, !tbaa !20 ; 2 uses
  %i.ax = load float, ptr %i.y, align 4, !tbaa !20 ; 2 uses
  %i.ay = load float, ptr %i.z, align 8, !tbaa !20 ; 2 uses
  %i.az = load float, ptr %i.aa, align 4, !tbaa !20 ; 2 uses
  %i.ba = load float, ptr %i.ad, align 8, !tbaa !20
  %i.bb = load float, ptr %i.af, align 8, !tbaa !35
  %i.bc = load float, ptr %i.ah, align 8, !tbaa !35
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.bj = load <2 x float>, ptr %i.e, align 8, !tbaa !20, !noalias !29 ; 3 uses
  %i.bk = load <2 x float>, ptr %i.f, align 8, !tbaa !20, !noalias !29 ; 3 uses
  %i.bl = load <2 x float>, ptr %i.g, align 8, !tbaa !20, !noalias !29 ; 3 uses
  %i.bm = extractelement <2 x float> %i.bj, i64 1
  %i.bn = fmul float %i.bm, %i.as
  %i.bo = extractelement <2 x float> %i.bj, i64 0
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.ar, float %i.bn)
  %i.bq = tail call noundef float @llvm.fmuladd.f32(float %i.am, float %i.at, float %i.bp)
  %i.br = fadd float %i.au, %i.bq
  %i.bs = extractelement <2 x float> %i.bk, i64 1
  %i.bt = fmul float %i.bs, %i.as
  %i.bu = extractelement <2 x float> %i.bk, i64 0
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.ar, float %i.bt)
  %i.bw = tail call noundef float @llvm.fmuladd.f32(float %i.an, float %i.at, float %i.bv)
  %i.bx = fadd float %i.av, %i.bw
  %i.by = extractelement <2 x float> %i.bl, i64 1
  %i.bz = fmul float %i.by, %i.as
  %i.ca = extractelement <2 x float> %i.bl, i64 0
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.ar, float %i.bz)
  %i.cc = fsub float %i.br, %i.au                 ; 2 uses
  %i.cd = fsub float %i.bx, %i.av                 ; 2 uses
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.ce = load <2 x float>, ptr %i.m, align 8, !tbaa !20, !noalias !32 ; 3 uses
  %i.cf = load <2 x float>, ptr %i.n, align 8, !tbaa !20, !noalias !32 ; 3 uses
  %i.cg = load <2 x float>, ptr %i.o, align 8, !tbaa !20, !noalias !32 ; 3 uses
  %i.ch = extractelement <2 x float> %i.cf, i64 1
  %i.ci = fmul float %i.ch, %i.ay
  %i.cj = extractelement <2 x float> %i.cf, i64 0
  %2 = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.ax, float %i.ci)
  %i.ck = tail call noundef float @llvm.fmuladd.f32(float %i.ap, float %i.az, float %2)
  %3 = load float, ptr %i.j, align 8, !tbaa !20, !noalias !29 ; 2 uses
  %4 = load float, ptr %i.ac, align 4, !tbaa !20
  %5 = load float, ptr %i.ab, align 8, !tbaa !20
  %i.cl = tail call noundef float @llvm.fmuladd.f32(float %3, float %i.at, float %i.cb)
  %i.cm = fadd float %i.cl, %i.aw
  %6 = fsub float %i.cm, %i.aw                    ; 2 uses
  %7 = shufflevector <2 x float> %i.cg, <2 x float> %i.ce, <2 x i32> <i32 1, i32 3>
  %8 = insertelement <2 x float> poison, float %i.ay, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %10 = fmul <2 x float> %7, %9
  %11 = shufflevector <2 x float> %i.cg, <2 x float> %i.ce, <2 x i32> <i32 0, i32 2>
  %12 = insertelement <2 x float> poison, float %i.ax, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> %13, <2 x float> %10)
  %15 = insertelement <2 x float> poison, float %i.aq, i64 0
  %16 = insertelement <2 x float> %15, float %i.ao, i64 1
  %17 = insertelement <2 x float> poison, float %i.az, i64 0
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %19 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %16, <2 x float> %18, <2 x float> %14)
  %20 = insertelement <4 x float> poison, float %3, i64 0
  %21 = insertelement <4 x float> %20, float %4, i64 1
  %22 = insertelement <4 x float> %21, float %i.ba, i64 2
  %23 = insertelement <4 x float> %22, float %5, i64 3 ; 2 uses
  %24 = insertelement <4 x float> <float -0.000000e+00, float poison, float poison, float poison>, float %i.ck, i64 1
  %25 = shufflevector <2 x float> %19, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %26 = shufflevector <4 x float> %24, <4 x float> %25, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %27 = fadd <4 x float> %23, %26
  %28 = insertelement <4 x float> %23, float 0.000000e+00, i64 0
  %29 = fsub <4 x float> %27, %28                 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %i.al, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !22
  %i.cn = load float, ptr %i.bh, align 4, !tbaa !20 ; 3 uses
  %30 = load <2 x float>, ptr %i.al, align 4, !tbaa !20 ; 2 uses
  %i.co = load float, ptr %i.bi, align 4, !tbaa !20 ; 2 uses
  %i.cp = fneg float %i.co                        ; 2 uses
  %i.cq = fmul float %6, %i.cp
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.cn, float %i.cq) ; 2 uses
  %31 = fneg float %i.cn                          ; 2 uses
  %32 = fmul float %i.cc, %31
  %33 = extractelement <2 x float> %30, i64 0     ; 2 uses
  %i.cs = tail call float @llvm.fmuladd.f32(float %6, float %33, float %32) ; 2 uses
  %i.ct = fneg float %33                          ; 2 uses
  %i.cu = fmul float %i.cd, %i.ct
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.co, float %i.cu) ; 2 uses
  %i.cw = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x float> %i.bk, %i.cx
  %i.cz = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.da, <2 x float> %i.cy)
  %i.dc = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.dd, <2 x float> %i.db) ; 4 uses
  %i.df = fmul float %i.an, %i.cs
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.am, float %i.cr, float %i.df)
  %34 = shufflevector <2 x float> %30, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 0>
  %35 = insertelement <4 x float> %34, float %i.dg, i64 0
  %36 = insertelement <4 x float> %35, float %i.cn, i64 2
  %37 = shufflevector <4 x float> %29, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 2, i32 3, i32 1>
  %38 = fmul <4 x float> %36, %37
  %39 = insertelement <4 x float> poison, float %i.cv, i64 0
  %40 = insertelement <4 x float> %39, float %31, i64 1
  %41 = insertelement <4 x float> %40, float %i.ct, i64 2
  %42 = insertelement <4 x float> %41, float %i.cp, i64 3
  %43 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %29, <4 x float> %42, <4 x float> %38) ; 8 uses
  %44 = shufflevector <4 x float> %43, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.dh = insertelement <2 x float> %44, float 0.000000e+00, i64 1
  store <2 x float> %i.de, ptr %i.bd, align 4
  store <2 x float> %i.dh, ptr %.sroa.46.0..sroa_idx.i, align 4, !tbaa !23
  %45 = shufflevector <4 x float> %43, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %46 = fmul <2 x float> %i.cf, %45
  %47 = shufflevector <4 x float> %43, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %47, <2 x float> %46)
  %48 = shufflevector <4 x float> %43, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %49 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %48, <2 x float> %i.di) ; 4 uses
  %50 = extractelement <4 x float> %43, i64 2
  %i.dj = fmul float %i.ap, %50
  %51 = extractelement <4 x float> %43, i64 1
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.ao, float %51, float %i.dj)
  %52 = extractelement <4 x float> %43, i64 3
  %i.dl = tail call noundef float @llvm.fmuladd.f32(float %i.aq, float %52, float %i.dk) ; 3 uses
  %.sroa.3.12.vec.insert.i33.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dl, i64 0
  store <2 x float> %49, ptr %i.be, align 4
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store <2 x float> %.sroa.3.12.vec.insert.i33.i, ptr %.sroa.44.0..sroa_idx.i, align 4, !tbaa !23
  %i.dm = extractelement <2 x float> %i.de, i64 0
  %i.dn = load <2 x float>, ptr %i.ae, align 4, !tbaa !20
  %i.do = fmul <2 x float> %i.de, %i.dn           ; 3 uses
  %i.dp = load float, ptr %i.ai, align 4, !tbaa !20
  %53 = extractelement <4 x float> %43, i64 0     ; 2 uses
  %i.dq = fmul float %53, %i.dp                   ; 2 uses
  %.sroa.3.12.vec.insert.i38.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dq, i64 0
  store <2 x float> %i.do, ptr %i.bf, align 4
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i38.i, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !23
  %i.dr = extractelement <2 x float> %49, i64 0
  %i.ds = load <2 x float>, ptr %i.ag, align 4, !tbaa !20
  %i.dt = fmul <2 x float> %49, %i.ds             ; 3 uses
  %i.du = load float, ptr %i.aj, align 4, !tbaa !20
  %i.dv = fmul float %i.dl, %i.du                 ; 2 uses
  %.sroa.3.12.vec.insert.i43.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dv, i64 0
  store <2 x float> %i.dt, ptr %i.bg, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i43.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !23
  %foldExtExtBinop = fmul <2 x float> %i.de, %i.do
  %i.dw = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.dx = extractelement <2 x float> %i.do, i64 0
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.dx, float %i.dm, float %i.dw)
  %i.dz = tail call noundef float @llvm.fmuladd.f32(float %i.dq, float %53, float %i.dy)
  %i.ea = fadd float %i.bb, %i.dz
  %i.eb = fadd float %i.bc, %i.ea
  %foldExtExtBinop39 = fmul <2 x float> %49, %i.dt
  %i.ec = extractelement <2 x float> %foldExtExtBinop39, i64 1
  %i.ed = extractelement <2 x float> %i.dt, i64 0
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ed, float %i.dr, float %i.ec)
  %i.ef = tail call noundef float @llvm.fmuladd.f32(float %i.dv, float %i.dl, float %i.ee)
  %i.eg = fadd float %i.eb, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  store float %i.eg, ptr %i.eh, align 4, !tbaa !47
  store float 0.000000e+00, ptr %i.ak, align 4, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.b, label %bb.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN23btPoint2PointConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(396) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.b = load i8, ptr %i.a, align 4, !tbaa !10, !range !49, !noundef !26
  %i.c = trunc nuw i8 %i.b to i1
  %spec.select.i = select i1 %i.c, i32 0, i32 3   ; 2 uses
  store i32 %spec.select.i, ptr %1, align 4, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %spec.select.i, ptr %i.d, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN23btPoint2PointConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(396) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.b = load i8, ptr %i.a, align 4, !tbaa !10, !range !49, !noundef !26
  %i.c = trunc nuw i8 %i.b to i1
  %spec.select = select i1 %i.c, i32 0, i32 3     ; 2 uses
  store i32 %spec.select, ptr %1, align 4, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %spec.select, ptr %i.d, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN23btPoint2PointConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(396) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28, !nonnull !26, !align !27
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZN23btPoint2PointConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_(ptr noundef nonnull align 8 dereferenceable(396) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(64) %i.f)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN23btPoint2PointConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(396) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 3 uses
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.e = sext i32 %i.d to i64                     ; 7 uses
  %i.f = getelementptr [4 x i8], ptr %i.b, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 4
  store float 1.000000e+00, ptr %i.g, align 4, !tbaa !20
  %i.h = shl nsw i32 %i.d, 1
  %i.i = sext i32 %i.h to i64                     ; 3 uses
  %i.j = getelementptr [4 x i8], ptr %i.b, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 8
  store float 1.000000e+00, ptr %i.k, align 4, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.m = load float, ptr %2, align 4, !tbaa !20
  %i.n = load float, ptr %i.l, align 4, !tbaa !20 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.r = load float, ptr %i.q, align 8, !tbaa !20 ; 3 uses
  %i.s = fmul float %i.p, %i.r
  %i.t = tail call float @llvm.fmuladd.f32(float %i.m, float %i.n, float %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load float, ptr %i.u, align 4, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.x = load float, ptr %i.w, align 4, !tbaa !20 ; 3 uses
  %i.y = tail call noundef float @llvm.fmuladd.f32(float %i.v, float %i.x, float %i.t) ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load float, ptr %i.z, align 4, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !20
  %i.ad = fmul float %i.r, %i.ac
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.n, float %i.ad)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ag = load float, ptr %i.af, align 4, !tbaa !20
  %i.ah = tail call noundef float @llvm.fmuladd.f32(float %i.ag, float %i.x, float %i.ae) ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.al = load float, ptr %i.ak, align 4, !tbaa !20
  %i.am = fmul float %i.r, %i.al
  %i.an = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.n, float %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !20
  %i.aq = tail call noundef float @llvm.fmuladd.f32(float %i.ap, float %i.x, float %i.an) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !58 ; 6 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.e ; 4 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.i ; 3 uses
  %i.av = fneg float %i.y
  %i.aw = fneg float %i.ah
  %i.ax = fneg float %i.aq
  store float 0.000000e+00, ptr %i.as, align 4, !tbaa !20
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store float %i.aq, ptr %i.ay, align 4, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store float %i.aw, ptr %i.az, align 4, !tbaa !20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store float 0.000000e+00, ptr %i.ba, align 4, !tbaa !20
  store float %i.ax, ptr %i.at, align 4, !tbaa !20
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store float 0.000000e+00, ptr %i.bb, align 4, !tbaa !20
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store float %i.y, ptr %i.bc, align 4, !tbaa !20
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store float 0.000000e+00, ptr %i.bd, align 4, !tbaa !20
  store float %i.ah, ptr %i.au, align 4, !tbaa !20
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store float %i.av, ptr %i.be, align 4, !tbaa !20
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store <2 x float> zeroinitializer, ptr %i.bf, align 4, !tbaa !20
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.bh = load float, ptr %3, align 4, !tbaa !20
  %i.bi = load float, ptr %i.bg, align 4, !tbaa !20 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !20
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !20 ; 3 uses
  %i.bn = fmul float %i.bk, %i.bm
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bi, float %i.bn)
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !20
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.bs = load float, ptr %i.br, align 4, !tbaa !20 ; 3 uses
  %i.bt = tail call noundef float @llvm.fmuladd.f32(float %i.bq, float %i.bs, float %i.bo) ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !20
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !20
  %i.by = fmul float %i.bm, %i.bx
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.bi, float %i.by)
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !20
  %i.cc = tail call noundef float @llvm.fmuladd.f32(float %i.cb, float %i.bs, float %i.bz) ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !20
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !20
  %i.ch = fmul float %i.bm, %i.cg
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.bi, float %i.ch)
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !20
  %i.cl = tail call noundef float @llvm.fmuladd.f32(float %i.ck, float %i.bs, float %i.ci) ; 3 uses
  %i.cm = fneg float %i.bt
  %i.cn = fneg float %i.cc
  %i.co = fneg float %i.cl
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !59 ; 6 uses
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.e ; 4 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.i ; 3 uses
  store float 0.000000e+00, ptr %i.cq, align 4, !tbaa !20
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store float %i.co, ptr %i.ct, align 4, !tbaa !20
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store float %i.cc, ptr %i.cu, align 4, !tbaa !20
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store float 0.000000e+00, ptr %i.cv, align 4, !tbaa !20
  store float %i.cl, ptr %i.cr, align 4, !tbaa !20
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store float 0.000000e+00, ptr %i.cw, align 4, !tbaa !20
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store float %i.cm, ptr %i.cx, align 4, !tbaa !20
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store float 0.000000e+00, ptr %i.cy, align 4, !tbaa !20
  store float %i.cn, ptr %i.cs, align 4, !tbaa !20
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store float %i.bt, ptr %i.cz, align 4, !tbaa !20
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store <2 x float> zeroinitializer, ptr %i.da, align 4, !tbaa !20
  %i.db = load float, ptr %1, align 8, !tbaa !60
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !61
  %i.de = fmul float %i.db, %i.dd                 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !62 ; 3 uses
  %i.dj = load float, ptr %i.df, align 4, !tbaa !20
end_hunk_0
