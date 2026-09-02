Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btPoint2PointConstraint?download=true
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
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV23btPoint2PointConstraint, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 380
  store i8 0, ptr %i.a, align 4, !tbaa !19
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
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV23btPoint2PointConstraint, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 348
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 364
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 380
  store i8 0, ptr %i.c, align 4, !tbaa !19
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
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV23btPoint2PointConstraint, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 348
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !23
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load float, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load float, ptr %i.i, align 8, !tbaa !20
  %i.k = load <2 x float>, ptr %i.b, align 8, !tbaa !20 ; 2 uses
  %i.l = load float, ptr %i.c, align 4, !tbaa !20 ; 2 uses
  %i.m = load float, ptr %2, align 4, !tbaa !20   ; 2 uses
  %i.n = load float, ptr %i.f, align 4, !tbaa !20 ; 2 uses
  %i.o = load <2 x float>, ptr %i.h, align 8, !tbaa !20 ; 2 uses
  %3 = insertelement <2 x float> poison, float %i.l, i64 0
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer
  %5 = shufflevector <2 x float> %i.k, <2 x float> %i.o, <2 x i32> <i32 1, i32 3>
  %6 = fmul <2 x float> %4, %5
  %7 = shufflevector <2 x float> %i.k, <2 x float> %i.o, <2 x i32> <i32 0, i32 2>
  %i.p = insertelement <2 x float> poison, float %i.m, i64 0
  %8 = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %7, <2 x float> %8, <2 x float> %6)
  %i.r = insertelement <2 x float> poison, float %i.e, i64 0
  %i.s = insertelement <2 x float> %i.r, float %i.j, i64 1
  %i.t = insertelement <2 x float> poison, float %i.n, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.u, <2 x float> %i.q)
  %i.w = load <2 x float>, ptr %i.g, align 8, !tbaa !20
  %i.x = fadd <2 x float> %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load float, ptr %i.y, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !20
  %i.ac = fmul float %i.l, %i.ab
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.z, float %i.m, float %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.af = load float, ptr %i.ae, align 8, !tbaa !20
  %i.ag = tail call noundef float @llvm.fmuladd.f32(float %i.af, float %i.n, float %i.ad)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !20
  %i.aj = fadd float %i.ai, %i.ag
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aj, i64 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 364
  store <2 x float> %i.x, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 372
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 380
  store i8 0, ptr %i.am, align 4, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 384
  store <2 x float> <float 3.000000e-01, float 1.000000e+00>, ptr %i.an, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 392
  store float 0.000000e+00, ptr %i.ao, align 8, !tbaa !21
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25, !nonnull !26, !align !27 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !28, !nonnull !26, !align !27 ; 10 uses
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
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 428
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 428
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 360
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 436
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 436
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  store float 1.000000e+00, ptr %i.ag, align 4, !tbaa !20
  %i.ah = getelementptr inbounds nuw [84 x i8], ptr %i.b, i64 %indvars.iv ; 12 uses
  %i.ai = load float, ptr %i.h, align 8, !tbaa !20, !noalias !52 ; 2 uses
  %i.aj = load float, ptr %i.i, align 8, !tbaa !20, !noalias !52 ; 2 uses
  %i.ak = load float, ptr %i.j, align 8, !tbaa !20, !noalias !52 ; 2 uses
  %i.al = load float, ptr %i.p, align 8, !tbaa !20, !noalias !53 ; 2 uses
  %i.am = load float, ptr %i.q, align 8, !tbaa !20, !noalias !53 ; 2 uses
  %i.an = load float, ptr %i.r, align 8, !tbaa !20, !noalias !53 ; 2 uses
  %i.ao = load <4 x float>, ptr %i.s, align 4
  %i.ap = load <4 x float>, ptr %i.t, align 8
  %i.aq = load <4 x float>, ptr %i.u, align 4
  %i.ar = load <4 x float>, ptr %i.w, align 4
  %i.as = load <4 x float>, ptr %i.x, align 8
  %i.at = load <4 x float>, ptr %i.y, align 4
  %i.au = load float, ptr %i.ab, align 8, !tbaa !40
  %i.av = load float, ptr %i.ad, align 8, !tbaa !40
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.ba = load <2 x float>, ptr %i.e, align 8, !tbaa !20, !noalias !52 ; 3 uses
  %i.bb = load <2 x float>, ptr %i.f, align 8, !tbaa !20, !noalias !52 ; 3 uses
  %i.bc = load <2 x float>, ptr %i.g, align 8, !tbaa !20, !noalias !52 ; 2 uses
  %i.bd = shufflevector <2 x float> %i.ba, <2 x float> %i.bb, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.be = shufflevector <2 x float> %i.bc, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.bf = shufflevector <3 x float> %i.bd, <3 x float> %i.be, <3 x i32> <i32 0, i32 1, i32 4>
  %i.bg = shufflevector <4 x float> %i.ap, <4 x float> poison, <3 x i32> zeroinitializer
  %i.bh = fmul <3 x float> %i.bf, %i.bg
  %i.bi = shufflevector <2 x float> %i.ba, <2 x float> %i.bb, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.bj = shufflevector <3 x float> %i.bi, <3 x float> %i.be, <3 x i32> <i32 0, i32 1, i32 3>
  %i.bk = shufflevector <4 x float> %i.ao, <4 x float> poison, <3 x i32> zeroinitializer
  %i.bl = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bj, <3 x float> %i.bk, <3 x float> %i.bh)
  %i.bm = insertelement <3 x float> poison, float %i.ai, i64 0
  %i.bn = insertelement <3 x float> %i.bm, float %i.aj, i64 1
  %i.bo = insertelement <3 x float> %i.bn, float %i.ak, i64 2
  %i.bp = shufflevector <4 x float> %i.aq, <4 x float> poison, <3 x i32> zeroinitializer
  %i.bq = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bo, <3 x float> %i.bp, <3 x float> %i.bl)
  %i.br = load <3 x float>, ptr %i.v, align 8, !tbaa !20 ; 2 uses
  %i.bs = fadd <3 x float> %i.bq, %i.br
  %i.bt = fsub <3 x float> %i.bs, %i.br           ; 2 uses
  %i.bu = shufflevector <3 x float> %i.bt, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.bv = load <2 x float>, ptr %i.m, align 8, !tbaa !20, !noalias !53 ; 3 uses
  %i.bw = load <2 x float>, ptr %i.n, align 8, !tbaa !20, !noalias !53 ; 3 uses
  %i.bx = load <2 x float>, ptr %i.o, align 8, !tbaa !20, !noalias !53 ; 2 uses
  %i.by = shufflevector <2 x float> %i.bv, <2 x float> %i.bw, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.bz = shufflevector <2 x float> %i.bx, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.ca = shufflevector <3 x float> %i.by, <3 x float> %i.bz, <3 x i32> <i32 0, i32 1, i32 4>
  %i.cb = shufflevector <4 x float> %i.as, <4 x float> poison, <3 x i32> zeroinitializer
  %i.cc = fmul <3 x float> %i.ca, %i.cb
  %i.cd = shufflevector <2 x float> %i.bv, <2 x float> %i.bw, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.ce = shufflevector <3 x float> %i.cd, <3 x float> %i.bz, <3 x i32> <i32 0, i32 1, i32 3>
  %i.cf = shufflevector <4 x float> %i.ar, <4 x float> poison, <3 x i32> zeroinitializer
  %i.cg = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ce, <3 x float> %i.cf, <3 x float> %i.cc)
  %i.ch = insertelement <3 x float> poison, float %i.al, i64 0
  %i.ci = insertelement <3 x float> %i.ch, float %i.am, i64 1
  %i.cj = insertelement <3 x float> %i.ci, float %i.an, i64 2
  %i.ck = shufflevector <4 x float> %i.at, <4 x float> poison, <3 x i32> zeroinitializer
  %i.cl = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cj, <3 x float> %i.ck, <3 x float> %i.cg)
  %i.cm = load <3 x float>, ptr %i.z, align 8, !tbaa !20 ; 2 uses
  %i.cn = fadd <3 x float> %i.cl, %i.cm
  %i.co = fsub <3 x float> %i.cn, %i.cm           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %i.ah, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !23
  %i.cp = load float, ptr %i.ah, align 4, !tbaa !20
  %i.cq = load <3 x float>, ptr %i.ah, align 4, !tbaa !20 ; 4 uses
  %i.cr = shufflevector <3 x float> %i.cq, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.cs = extractelement <3 x float> %i.cq, i64 1
  %i.ct = fneg <3 x float> %i.cq                  ; 2 uses
  %i.cu = fneg float %i.cs
  %i.cv = fmul <3 x float> %i.bu, %i.ct
  %i.cw = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bt, <3 x float> %i.cr, <3 x float> %i.cv) ; 6 uses
  %i.cx = shufflevector <3 x float> %i.cw, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cy = fmul <2 x float> %i.bb, %i.cx
  %i.cz = shufflevector <3 x float> %i.cw, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.da = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.cz, <2 x float> %i.cy)
  %i.db = shufflevector <3 x float> %i.cw, <3 x float> poison, <2 x i32> zeroinitializer
  %i.dc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.db, <2 x float> %i.da) ; 4 uses
  %i.dd = extractelement <3 x float> %i.cw, i64 2
  %i.de = fmul float %i.aj, %i.dd
  %i.df = extractelement <3 x float> %i.cw, i64 1
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.df, float %i.de)
  %i.dh = extractelement <3 x float> %i.cw, i64 0
  %i.di = tail call noundef float @llvm.fmuladd.f32(float %i.ak, float %i.dh, float %i.dg) ; 3 uses
  %.sroa.3.12.vec.insert.i18.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.di, i64 0
  store <2 x float> %i.dc, ptr %i.aw, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i18.i, ptr %.sroa.46.0..sroa_idx.i, align 4, !tbaa !22
  %i.dj = shufflevector <3 x float> %i.cq, <3 x float> poison, <3 x i32> <i32 2, i32 poison, i32 1>
  %i.dk = insertelement <3 x float> %i.dj, float %i.cp, i64 1
  %i.dl = fmul <3 x float> %i.co, %i.dk
  %i.dm = shufflevector <3 x float> %i.dl, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.dn = insertelement <3 x float> poison, float %i.cu, i64 0
  %i.do = shufflevector <3 x float> %i.dn, <3 x float> %i.ct, <3 x i32> <i32 0, i32 5, i32 3>
  %i.dp = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.co, <3 x float> %i.do, <3 x float> %i.dm) ; 6 uses
  %i.dq = shufflevector <3 x float> %i.dp, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.dr = fmul <2 x float> %i.bw, %i.dq
  %i.ds = shufflevector <3 x float> %i.dp, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.ds, <2 x float> %i.dr)
  %i.du = shufflevector <3 x float> %i.dp, <3 x float> poison, <2 x i32> zeroinitializer
  %i.dv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.du, <2 x float> %i.dt) ; 4 uses
  %i.dw = extractelement <3 x float> %i.dp, i64 2
  %i.dx = fmul float %i.am, %i.dw
  %i.dy = extractelement <3 x float> %i.dp, i64 1
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.al, float %i.dy, float %i.dx)
  %i.ea = extractelement <3 x float> %i.dp, i64 0
  %i.eb = tail call noundef float @llvm.fmuladd.f32(float %i.an, float %i.ea, float %i.dz) ; 3 uses
  %.sroa.3.12.vec.insert.i33.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eb, i64 0
  store <2 x float> %i.dv, ptr %i.ax, align 4
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store <2 x float> %.sroa.3.12.vec.insert.i33.i, ptr %.sroa.44.0..sroa_idx.i, align 4, !tbaa !22
  %i.ec = extractelement <2 x float> %i.dc, i64 0
  %i.ed = load <2 x float>, ptr %i.aa, align 4, !tbaa !20
  %i.ee = fmul <2 x float> %i.dc, %i.ed           ; 3 uses
  %i.ef = load float, ptr %i.ae, align 4, !tbaa !20
  %i.eg = fmul float %i.di, %i.ef                 ; 2 uses
  %.sroa.3.12.vec.insert.i38.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eg, i64 0
  store <2 x float> %i.ee, ptr %i.ay, align 4
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i38.i, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !22
  %i.eh = extractelement <2 x float> %i.dv, i64 0
  %i.ei = load <2 x float>, ptr %i.ac, align 4, !tbaa !20
  %i.ej = fmul <2 x float> %i.dv, %i.ei           ; 3 uses
  %i.ek = load float, ptr %i.af, align 4, !tbaa !20
  %i.el = fmul float %i.eb, %i.ek                 ; 2 uses
  %.sroa.3.12.vec.insert.i43.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.el, i64 0
  store <2 x float> %i.ej, ptr %i.az, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i43.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !22
  %foldExtExtBinop = fmul <2 x float> %i.dc, %i.ee
  %i.em = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.en = extractelement <2 x float> %i.ee, i64 0
  %i.eo = tail call float @llvm.fmuladd.f32(float %i.en, float %i.ec, float %i.em)
  %i.ep = tail call noundef float @llvm.fmuladd.f32(float %i.eg, float %i.di, float %i.eo)
  %i.eq = fadd float %i.au, %i.ep
  %i.er = fadd float %i.av, %i.eq
  %foldExtExtBinop39 = fmul <2 x float> %i.dv, %i.ej
  %i.es = extractelement <2 x float> %foldExtExtBinop39, i64 1
  %i.et = extractelement <2 x float> %i.ej, i64 0
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.et, float %i.eh, float %i.es)
  %i.ev = tail call noundef float @llvm.fmuladd.f32(float %i.el, float %i.eb, float %i.eu)
  %i.ew = fadd float %i.er, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  store float %i.ew, ptr %i.ex, align 4, !tbaa !42
  store float 0.000000e+00, ptr %i.ag, align 4, !tbaa !20
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
  %i.b = load i8, ptr %i.a, align 4, !tbaa !19, !range !43, !noundef !26
  %i.c = trunc nuw i8 %i.b to i1
  %spec.select.i = select i1 %i.c, i32 0, i32 3   ; 2 uses
  store i32 %spec.select.i, ptr %1, align 4, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %spec.select.i, ptr %i.d, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN23btPoint2PointConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(396) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.b = load i8, ptr %i.a, align 4, !tbaa !19, !range !43, !noundef !26
  %i.c = trunc nuw i8 %i.b to i1
  %spec.select = select i1 %i.c, i32 0, i32 3     ; 2 uses
  store i32 %spec.select, ptr %1, align 4, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %spec.select, ptr %i.d, align 4, !tbaa !46
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 3 uses
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !58   ; 2 uses
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
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !59 ; 6 uses
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
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !20
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !20
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bq = load <4 x float>, ptr %i.bp, align 4
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !20
  %i.bv = load float, ptr %i.bk, align 8, !tbaa !20 ; 2 uses
  %i.bw = load float, ptr %i.bg, align 4, !tbaa !20 ; 2 uses
  %i.bx = load float, ptr %i.bn, align 4, !tbaa !20 ; 2 uses
  %i.by = fmul float %i.bj, %i.bv
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bw, float %i.by)
  %i.ca = tail call noundef float @llvm.fmuladd.f32(float %i.bm, float %i.bx, float %i.bz) ; 3 uses
  %i.cb = load <2 x float>, ptr %i.bo, align 4, !tbaa !20 ; 2 uses
  %4 = load <2 x float>, ptr %i.bs, align 4, !tbaa !20 ; 2 uses
  %5 = insertelement <2 x float> poison, float %i.bv, i64 0
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %7 = shufflevector <2 x float> %i.cb, <2 x float> %4, <2 x i32> <i32 1, i32 3>
  %8 = fmul <2 x float> %6, %7
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> %4, <2 x i32> <i32 0, i32 2>
  %i.cd = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.ce, <2 x float> %8)
  %i.cg = insertelement <2 x float> %i.br, float %i.bu, i64 1
  %i.ch = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.ci, <2 x float> %i.cf) ; 3 uses
  %i.ck = fneg float %i.ca
  %i.cl = fneg <2 x float> %i.cj                  ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !60 ; 6 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.e ; 4 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.i ; 3 uses
  store float 0.000000e+00, ptr %i.cn, align 4, !tbaa !20
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cr = extractelement <2 x float> %i.cl, i64 1
  store float %i.cr, ptr %i.cq, align 4, !tbaa !20
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.ct = extractelement <2 x float> %i.cj, i64 0 ; 2 uses
  store float %i.ct, ptr %i.cs, align 4, !tbaa !20
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  store float 0.000000e+00, ptr %i.cu, align 4, !tbaa !20
  %i.cv = extractelement <2 x float> %i.cj, i64 1 ; 2 uses
  store float %i.cv, ptr %i.co, align 4, !tbaa !20
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store float 0.000000e+00, ptr %i.cw, align 4, !tbaa !20
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store float %i.ck, ptr %i.cx, align 4, !tbaa !20
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  store float 0.000000e+00, ptr %i.cy, align 4, !tbaa !20
  %i.cz = extractelement <2 x float> %i.cl, i64 0
  store float %i.cz, ptr %i.cp, align 4, !tbaa !20
  %i.da = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store float %i.ca, ptr %i.da, align 4, !tbaa !20
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store <2 x float> zeroinitializer, ptr %i.db, align 4, !tbaa !20
  %i.dc = load float, ptr %1, align 8, !tbaa !61
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.de = load float, ptr %i.dd, align 4, !tbaa !62
  %i.df = fmul float %i.dc, %i.de                 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !63 ; 3 uses
  %i.dk = load float, ptr %i.dg, align 4, !tbaa !20
  %i.dl = fadd float %i.ca, %i.dk
  %i.dm = fsub float %i.dl, %i.y
  %i.dn = load float, ptr %i.dh, align 4, !tbaa !20
  %i.do = fsub float %i.dm, %i.dn
  %i.dp = fmul float %i.df, %i.do
  store float %i.dp, ptr %i.dj, align 4, !tbaa !20
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !20
  %i.ds = fadd float %i.ct, %i.dr
  %i.dt = fsub float %i.ds, %i.ah
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.dv = load float, ptr %i.du, align 4, !tbaa !20
  %i.dw = fsub float %i.dt, %i.dv
  %i.dx = fmul float %i.df, %i.dw
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.e
  store float %i.dx, ptr %i.dy, align 4, !tbaa !20
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !20
  %i.eb = fadd float %i.cv, %i.ea
  %i.ec = fsub float %i.eb, %i.aq
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !20
  %i.ef = fsub float %i.ec, %i.ee
  %i.eg = fmul float %i.df, %i.ef
  %i.eh = shl nsw i64 %i.e, 1                     ; 3 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.eh
  store float %i.eg, ptr %i.ei, align 4, !tbaa !20
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.ek = load float, ptr %i.ej, align 8, !tbaa !47 ; 5 uses
  %i.el = fneg float %i.ek                        ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.eo = fcmp ogt float %i.ek, 0.000000e+00
  br i1 %i.eo, label %.split.1, label %.split71.us

.split.1:                                         ; preds = %bb.a
  %i.ep = load ptr, ptr %i.em, align 8, !tbaa !64
  store float %i.el, ptr %i.ep, align 4, !tbaa !20
  %i.eq = load ptr, ptr %i.en, align 8, !tbaa !65
  store float %i.ek, ptr %i.eq, align 4, !tbaa !20
  %.pre = load float, ptr %i.ej, align 8, !tbaa !47 ; 2 uses
  %i.er = fcmp ogt float %.pre, 0.000000e+00
  br i1 %i.er, label %bb.b, label %.split.2

bb.b:                                             ; preds = %.split.1
  %i.es = load ptr, ptr %i.em, align 8, !tbaa !64
  %i.et = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.e
  store float %i.el, ptr %i.et, align 4, !tbaa !20
  %i.eu = load ptr, ptr %i.en, align 8, !tbaa !65
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.e
  store float %i.ek, ptr %i.ev, align 4, !tbaa !20
  %.pre89 = load float, ptr %i.ej, align 8, !tbaa !47
  br label %.split.2

.split.2:                                         ; preds = %bb.b, %.split.1
  %i.ew = phi float [ %.pre89, %bb.b ], [ %.pre, %.split.1 ]
  %i.ex = fcmp ogt float %i.ew, 0.000000e+00
  br i1 %i.ex, label %bb.c, label %.split71.us

bb.c:                                             ; preds = %.split.2
  %i.ey = load ptr, ptr %i.em, align 8, !tbaa !64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.eh
  store float %i.el, ptr %i.ez, align 4, !tbaa !20
  %i.fa = load ptr, ptr %i.en, align 8, !tbaa !65
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.eh
  store float %i.ek, ptr %i.fb, align 4, !tbaa !20
  br label %.split71.us

.split71.us:                                      ; preds = %.split.2, %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN23btPoint2PointConstraint23solveConstraintObsoleteER12btSolverBodyS1_f(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(396) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %2, float noundef %3) unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %class.btVector3, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.b = load i8, ptr %i.a, align 4, !tbaa !19, !range !43, !noundef !26
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25, !nonnull !26, !align !27 ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.h = load <4 x float>, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.j = load <4 x float>, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load float, ptr %i.k, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.n = load <4 x float>, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.r = load float, ptr %i.q, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.u = load float, ptr %i.t, align 8, !tbaa !20
  %i.v = load <2 x float>, ptr %i.f, align 8, !tbaa !20 ; 2 uses
  %i.w = load <2 x float>, ptr %i.p, align 8, !tbaa !20 ; 2 uses
  %i.x = load <2 x float>, ptr %i.s, align 8, !tbaa !20
  %i.y = shufflevector <4 x float> %i.j, <4 x float> poison, <3 x i32> zeroinitializer
  %i.z = shufflevector <2 x float> %i.v, <2 x float> %i.w, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.aa = shufflevector <2 x float> %i.x, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.ab = shufflevector <3 x float> %i.z, <3 x float> %i.aa, <3 x i32> <i32 0, i32 1, i32 4>
  %i.ac = fmul <3 x float> %i.y, %i.ab
  %i.ad = shufflevector <2 x float> %i.v, <2 x float> %i.w, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.ae = shufflevector <3 x float> %i.ad, <3 x float> %i.aa, <3 x i32> <i32 0, i32 1, i32 3>
  %i.af = shufflevector <4 x float> %i.h, <4 x float> poison, <3 x i32> zeroinitializer
  %i.ag = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ae, <3 x float> %i.af, <3 x float> %i.ac)
  %i.ah = insertelement <3 x float> poison, float %i.l, i64 0
  %i.ai = insertelement <3 x float> %i.ah, float %i.r, i64 1
  %i.aj = insertelement <3 x float> %i.ai, float %i.u, i64 2
  %i.ak = shufflevector <4 x float> %i.n, <4 x float> poison, <3 x i32> zeroinitializer
  %i.al = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aj, <3 x float> %i.ak, <3 x float> %i.ag)
  %i.am = load <3 x float>, ptr %i.o, align 8, !tbaa !20
  %i.an = fadd <3 x float> %i.al, %i.am           ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !28, !nonnull !26, !align !27 ; 15 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.as = load <4 x float>, ptr %i.ar, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.au = load <4 x float>, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.aw = load float, ptr %i.av, align 8, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.ay = load <4 x float>, ptr %i.ax, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 56 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.bc = load float, ptr %i.bb, align 8, !tbaa !20
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.bf = load float, ptr %i.be, align 8, !tbaa !20
  %i.bg = load <2 x float>, ptr %i.aq, align 8, !tbaa !20 ; 2 uses
  %i.bh = load <2 x float>, ptr %i.ba, align 8, !tbaa !20 ; 2 uses
  %i.bi = load <2 x float>, ptr %i.bd, align 8, !tbaa !20
  %i.bj = shufflevector <4 x float> %i.au, <4 x float> poison, <3 x i32> zeroinitializer
  %i.bk = shufflevector <2 x float> %i.bg, <2 x float> %i.bh, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.bl = shufflevector <2 x float> %i.bi, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.bm = shufflevector <3 x float> %i.bk, <3 x float> %i.bl, <3 x i32> <i32 0, i32 1, i32 4>
  %i.bn = fmul <3 x float> %i.bj, %i.bm
  %i.bo = shufflevector <2 x float> %i.bg, <2 x float> %i.bh, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.bp = shufflevector <3 x float> %i.bo, <3 x float> %i.bl, <3 x i32> <i32 0, i32 1, i32 3>
  %i.bq = shufflevector <4 x float> %i.as, <4 x float> poison, <3 x i32> zeroinitializer
  %i.br = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bp, <3 x float> %i.bq, <3 x float> %i.bn)
  %i.bs = insertelement <3 x float> poison, float %i.aw, i64 0
  %i.bt = insertelement <3 x float> %i.bs, float %i.bc, i64 1
  %i.bu = insertelement <3 x float> %i.bt, float %i.bf, i64 2
  %i.bv = shufflevector <4 x float> %i.ay, <4 x float> poison, <3 x i32> zeroinitializer
  %i.bw = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bu, <3 x float> %i.bv, <3 x float> %i.br)
  %i.bx = load <3 x float>, ptr %i.az, align 8, !tbaa !20
  %i.by = fadd <3 x float> %i.bw, %i.bx           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_0
