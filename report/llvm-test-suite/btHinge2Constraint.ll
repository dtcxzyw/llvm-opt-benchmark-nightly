Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btHinge2Constraint?download=true
inline.NumInlined: 138
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btTransform = type { %class.btMatrix3x3, %class.btVector3 }
%class.btMatrix3x3 = type { [3 x %class.btVector3] }
%class.btVector3 = type { [4 x float] }

$_ZN17btTypedConstraintD2Ev = comdat any

$_ZN18btHinge2ConstraintD0Ev = comdat any

$_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif = comdat any

$_ZN11btMatrix3x311getIdentityEv = comdat any

$_ZTV18btHinge2Constraint = comdat any

$_ZTI18btHinge2Constraint = comdat any

$_ZTS18btHinge2Constraint = comdat any

$_ZZN11btTransform11getIdentityEvE17identityTransform = comdat any

$_ZGVZN11btTransform11getIdentityEvE17identityTransform = comdat any

$_ZZN11btMatrix3x311getIdentityEvE14identityMatrix = comdat any

$_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix = comdat any

@_ZTV18btHinge2Constraint = linkonce_odr dso_local unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTI18btHinge2Constraint, ptr @_ZN17btTypedConstraintD2Ev, ptr @_ZN18btHinge2ConstraintD0Ev, ptr @_ZN23btGeneric6DofConstraint13buildJacobianEv, ptr @_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif, ptr @_ZN23btGeneric6DofConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E, ptr @_ZN29btGeneric6DofSpringConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E, ptr @_ZN23btGeneric6DofConstraint23solveConstraintObsoleteER12btSolverBodyS1_f, ptr @_ZN23btGeneric6DofConstraint13calcAnchorPosEv] }, comdat, align 8
@_ZTI18btHinge2Constraint = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS18btHinge2Constraint, ptr @_ZTI29btGeneric6DofSpringConstraint }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS18btHinge2Constraint = linkonce_odr dso_local constant [21 x i8] c"18btHinge2Constraint\00", comdat, align 1
@_ZTI29btGeneric6DofSpringConstraint = external constant ptr
@_ZZN11btTransform11getIdentityEvE17identityTransform = linkonce_odr dso_local global %class.btTransform zeroinitializer, comdat, align 4
@_ZGVZN11btTransform11getIdentityEvE17identityTransform = linkonce_odr dso_local global i64 0, comdat, align 8
@_ZZN11btMatrix3x311getIdentityEvE14identityMatrix = linkonce_odr dso_local global %class.btMatrix3x3 zeroinitializer, comdat, align 4
@_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix = linkonce_odr dso_local global i64 0, comdat, align 8

@_ZN18btHinge2ConstraintC1ER11btRigidBodyS1_R9btVector3S3_S3_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN18btHinge2ConstraintC2ER11btRigidBodyS1_R9btVector3S3_S3_

; Function Attrs: uwtable
define dso_local void @_ZN18btHinge2ConstraintC2ER11btRigidBodyS1_R9btVector3S3_S3_(ptr noundef nonnull align 8 dereferenceable(1392) %0, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr noundef nonnull align 8 dereferenceable(564) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN11btTransform11getIdentityEvE17identityTransform acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN11btTransform11getIdentityEv.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #11
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN11btTransform11getIdentityEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 4 dereferenceable(48) ptr @_ZN11btMatrix3x311getIdentityEv()
          to label %bb.d unwind label %bb.e       ; 3 uses

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZN11btTransform11getIdentityEvE17identityTransform, ptr noundef nonnull align 4 dereferenceable(48) %i.d, i64 16, i1 false), !tbaa.struct !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 48), i8 0, i64 16, i1 false)
  %i.g = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZN11btTransform11getIdentityEvE17identityTransform) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #11
  br label %_ZN11btTransform11getIdentityEv.exit

common.resume:                                    ; preds = %bb.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.p, %bb.i ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #11
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN11btTransform11getIdentityEv.exit:             ; preds = %bb.a, %bb.b, %bb.d
  %i.i = load atomic i8, ptr @_ZGVZN11btTransform11getIdentityEvE17identityTransform acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.j, !prof !8

bb.f:                                             ; preds = %_ZN11btTransform11getIdentityEv.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #11
  %.not.i20 = icmp eq i32 %i.k, 0
  br i1 %.not.i20, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = invoke noundef nonnull align 4 dereferenceable(48) ptr @_ZN11btMatrix3x311getIdentityEv()
          to label %bb.h unwind label %bb.i       ; 3 uses

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZN11btTransform11getIdentityEvE17identityTransform, ptr noundef nonnull align 4 dereferenceable(48) %i.l, i64 16, i1 false), !tbaa.struct !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 48), i8 0, i64 16, i1 false)
  %i.o = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZN11btTransform11getIdentityEvE17identityTransform) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #11
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.j:                                             ; preds = %bb.h, %bb.f, %_ZN11btTransform11getIdentityEv.exit
  tail call void @_ZN29btGeneric6DofSpringConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b(ptr noundef nonnull align 8 dereferenceable(1344) %0, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr noundef nonnull align 8 dereferenceable(564) %2, ptr noundef nonnull align 4 dereferenceable(64) @_ZZN11btTransform11getIdentityEvE17identityTransform, ptr noundef nonnull align 4 dereferenceable(64) @_ZZN11btTransform11getIdentityEvE17identityTransform, i1 noundef zeroext true)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV18btHinge2Constraint, i64 16), ptr %0, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1344
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !20
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1360
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !20
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1376
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !20
  %i.t = load float, ptr %4, align 4, !tbaa !10   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !10 ; 3 uses
  %i.w = fmul float %i.v, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !10 ; 3 uses
  %i.aa = tail call noundef float @llvm.fmuladd.f32(float %i.z, float %i.z, float %i.x)
  %i.ab = tail call noundef float @sqrtf(float noundef %i.aa) #11, !tbaa !7
  %i.ac = fdiv float 1.000000e+00, %i.ab          ; 3 uses
  %i.ad = fmul float %i.t, %i.ac                  ; 4 uses
  store float %i.ad, ptr %4, align 4, !tbaa !10
  %i.ae = fmul float %i.v, %i.ac                  ; 4 uses
  store float %i.ae, ptr %i.u, align 4, !tbaa !10
  %i.af = fmul float %i.z, %i.ac                  ; 4 uses
  store float %i.af, ptr %i.y, align 4, !tbaa !10
  %i.ag = load float, ptr %5, align 4, !tbaa !10  ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.ah = load float, ptr %6, align 4, !tbaa !10  ; 3 uses
  %i.ai = fmul float %i.ah, %i.ah
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ag, float %i.ai)
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ak = load float, ptr %7, align 4, !tbaa !10  ; 3 uses
  %i.al = tail call noundef float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float %i.aj)
  %i.am = tail call noundef float @sqrtf(float noundef %i.al) #11, !tbaa !7
  %i.an = fdiv float 1.000000e+00, %i.am          ; 3 uses
  %i.ao = fmul float %i.ag, %i.an                 ; 4 uses
  store float %i.ao, ptr %5, align 4, !tbaa !10
  %i.ap = fmul float %i.ah, %i.an                 ; 4 uses
  store float %i.ap, ptr %6, align 4, !tbaa !10
  %i.aq = fmul float %i.ak, %i.an                 ; 4 uses
  store float %i.aq, ptr %7, align 4, !tbaa !10
  %8 = fneg float %i.ap
  %9 = fmul float %i.af, %8
  %10 = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.aq, float %9)
  %11 = fneg float %i.aq
  %12 = fmul float %i.ad, %11
  %13 = tail call float @llvm.fmuladd.f32(float %i.af, float %i.ao, float %12)
  %i.ar = fneg float %i.ao
  %14 = fmul float %i.ae, %i.ar
  %15 = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ap, float %14)
  %.sroa.42.48..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %22 = load float, ptr %19, align 8, !tbaa !10, !noalias !23 ; 2 uses
  %23 = load float, ptr %20, align 8, !tbaa !10, !noalias !23 ; 3 uses
  %24 = load float, ptr %21, align 8, !tbaa !10, !noalias !23 ; 2 uses
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 60
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.as = load <2 x float>, ptr %16, align 8, !tbaa !10, !noalias !23 ; 3 uses
  %28 = load <2 x float>, ptr %17, align 8, !tbaa !10, !noalias !23 ; 3 uses
  %29 = load <2 x float>, ptr %18, align 8, !tbaa !10, !noalias !23 ; 3 uses
  %30 = load float, ptr %25, align 8, !tbaa !10, !noalias !24
  %31 = fneg float %30                            ; 2 uses
  %32 = load float, ptr %26, align 4, !tbaa !10, !noalias !24
  %33 = fneg float %32                            ; 2 uses
  %34 = load float, ptr %27, align 8, !tbaa !10, !noalias !24
  %35 = fneg float %34                            ; 2 uses
  %36 = insertelement <2 x float> poison, float %33, i64 0
  %37 = shufflevector <2 x float> %36, <2 x float> poison, <2 x i32> zeroinitializer
  %38 = fmul <2 x float> %28, %37
  %i.at = insertelement <2 x float> poison, float %31, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %39 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.au, <2 x float> %38)
  %i.av = insertelement <2 x float> poison, float %35, i64 0
  %40 = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %29, <2 x float> %40, <2 x float> %39)
  %i.ax = load <2 x float>, ptr %3, align 4       ; 4 uses
  %41 = fmul float %23, %33
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.az = fmul <2 x float> %i.ay, %28
  %i.ba = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.ba, <2 x float> %i.az)
  %i.bc = insertelement <2 x float> poison, float %22, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = insertelement <2 x float> %i.ax, float %31, i64 1
  %i.bf = insertelement <2 x float> poison, float %24, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %43 = shufflevector <2 x float> %28, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bh = shufflevector <4 x float> %43, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %44 = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ap, i64 0
  %i.bi = insertelement <4 x float> %44, float %13, i64 1
  %i.bj = insertelement <4 x float> %i.bi, float %i.ae, i64 2 ; 6 uses
  %i.bk = fmul <4 x float> %i.bh, %i.bj
  %45 = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ao, i64 0
  %i.bl = insertelement <4 x float> %45, float %10, i64 1
  %i.bm = insertelement <4 x float> %i.bl, float %i.ad, i64 2 ; 6 uses
  %46 = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bn = shufflevector <4 x float> %46, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %i.bn, <4 x float> %i.bk)
  %i.bp = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.aq, i64 0
  %i.bq = insertelement <4 x float> %i.bp, float %15, i64 1
  %i.br = insertelement <4 x float> %i.bq, float %i.af, i64 2 ; 6 uses
  %i.bs = shufflevector <2 x float> %29, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %i.bt, <4 x float> %i.bo)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bw = shufflevector <4 x float> %43, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.bx = fmul <4 x float> %i.bw, %i.bj
  %i.by = shufflevector <4 x float> %46, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.bz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %i.by, <4 x float> %i.bx)
  %i.ca = shufflevector <4 x float> %i.bs, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %i.ca, <4 x float> %i.bz)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cd = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %23, i64 0
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cf = fmul <4 x float> %i.ce, %i.bj
  %i.cg = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %22, i64 0
  %i.ch = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ci = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %i.ch, <4 x float> %i.cf)
  %i.cj = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %24, i64 0
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %i.ck, <4 x float> %i.ci)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.20114.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cw = load <2 x float>, ptr %.sroa.42.48..sroa_idx, align 4 ; 5 uses
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.cy = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %29, <2 x float> %i.cy, <2 x float> %i.bb)
  %i.da = fadd <2 x float> %i.cz, %i.aw
  %47 = extractelement <2 x float> %i.cw, i64 0
  %48 = fmul float %47, %23
  %49 = insertelement <2 x float> poison, float %48, i64 0
  %50 = insertelement <2 x float> %49, float %41, i64 1
  %51 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.be, <2 x float> %50)
  %i.db = insertelement <2 x float> %i.cx, float %35, i64 1
  %i.dc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.db, <2 x float> %51) ; 2 uses
  %shift = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.dc, %shift
  %.sroa.3.12.vec.insert.i.i154 = insertelement <2 x float> %foldExtExtBinop, float 0.000000e+00, i64 1
  store <4 x float> %i.bu, ptr %42, align 8
  store <4 x float> %i.cb, ptr %i.bv, align 8
  store <4 x float> %i.cl, ptr %i.cc, align 8
  store <2 x float> %i.da, ptr %i.cm, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i154, ptr %.sroa.20114.48..sroa_idx, align 8, !tbaa !19
  %52 = load <2 x float>, ptr %i.cn, align 8, !tbaa !10, !noalias !25 ; 3 uses
  %53 = load <2 x float>, ptr %i.co, align 8, !tbaa !10, !noalias !25 ; 3 uses
  %i.dd = load <2 x float>, ptr %i.cp, align 8, !tbaa !10, !noalias !25 ; 3 uses
  %i.de = load float, ptr %i.cq, align 8, !tbaa !10, !noalias !25 ; 2 uses
  %i.df = load float, ptr %i.cr, align 8, !tbaa !10, !noalias !25 ; 2 uses
  %i.dg = load float, ptr %i.cs, align 8, !tbaa !10, !noalias !25 ; 2 uses
  %i.dh = load float, ptr %i.ct, align 8, !tbaa !10, !noalias !26
  %i.di = fneg float %i.dh                        ; 2 uses
  %i.dj = load float, ptr %i.cu, align 4, !tbaa !10, !noalias !26
  %i.dk = fneg float %i.dj                        ; 2 uses
  %i.dl = load float, ptr %i.cv, align 8, !tbaa !10, !noalias !26
  %i.dm = fneg float %i.dl                        ; 2 uses
  %i.dn = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = fmul <2 x float> %53, %i.do
  %i.dq = insertelement <2 x float> poison, float %i.di, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %52, <2 x float> %i.dr, <2 x float> %i.dp)
  %i.dt = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.du, <2 x float> %i.ds)
  %i.dw = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = fmul <2 x float> %i.dw, %53
  %i.dy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %52, <2 x float> %i.ba, <2 x float> %i.dx)
  %i.dz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.cy, <2 x float> %i.dy)
  %i.ea = fadd <2 x float> %i.dz, %i.dv
  %i.eb = insertelement <2 x float> poison, float %i.df, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = insertelement <2 x float> %i.cw, float %i.dk, i64 1
  %i.ee = fmul <2 x float> %i.ec, %i.ed
  %i.ef = insertelement <2 x float> poison, float %i.de, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = insertelement <2 x float> %i.ax, float %i.di, i64 1
  %i.ei = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eg, <2 x float> %i.eh, <2 x float> %i.ee)
  %i.ej = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = insertelement <2 x float> %i.cx, float %i.dm, i64 1
  %i.em = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.el, <2 x float> %i.ei) ; 2 uses
  %shift151 = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop152 = fadd <2 x float> %i.em, %shift151
  %.sroa.3.12.vec.insert.i.i38155 = insertelement <2 x float> %foldExtExtBinop152, float 0.000000e+00, i64 1
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 160
  %54 = shufflevector <2 x float> %53, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %55 = shufflevector <4 x float> %54, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.eo = fmul <4 x float> %55, %i.bj
  %56 = shufflevector <2 x float> %52, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %57 = shufflevector <4 x float> %56, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.ep = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %57, <4 x float> %i.eo)
  %i.eq = shufflevector <2 x float> %i.dd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.es = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %i.er, <4 x float> %i.ep)
  store <4 x float> %i.es, ptr %i.en, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 176
  %58 = shufflevector <4 x float> %54, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.eu = fmul <4 x float> %58, %i.bj
  %59 = shufflevector <4 x float> %56, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ev = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %59, <4 x float> %i.eu)
  %i.ew = shufflevector <4 x float> %i.eq, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ex = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %i.ew, <4 x float> %i.ev)
  store <4 x float> %i.ex, ptr %i.et, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ez = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.df, i64 0
  %i.fa = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fb = fmul <4 x float> %i.fa, %i.bj
  %i.fc = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.de, i64 0
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %i.fd, <4 x float> %i.fb)
  %i.ff = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.dg, i64 0
  %i.fg = shufflevector <4 x float> %i.ff, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %i.fg, <4 x float> %i.fe)
  store <4 x float> %i.fh, ptr %i.ey, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x float> %i.ea, ptr %i.fi, align 8
  %.sroa.20.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store <2 x float> %.sroa.3.12.vec.insert.i.i38155, ptr %.sroa.20.48..sroa_idx, align 8, !tbaa !19
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 728
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00>, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 744
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 924
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 980
  store <2 x float> <float 1.000000e+00, float -1.000000e+00>, ptr %i.fl, align 4, !tbaa !10
  store <2 x float> zeroinitializer, ptr %i.fm, align 4, !tbaa !10
  store <2 x float> <float f0xBF490FDB, float f0x3F490FDB>, ptr %i.fn, align 4, !tbaa !10
  tail call void @_ZN29btGeneric6DofSpringConstraint12enableSpringEib(ptr noundef nonnull align 8 dereferenceable(1344) %0, i32 noundef 2, i1 noundef zeroext true)
  tail call void @_ZN29btGeneric6DofSpringConstraint12setStiffnessEif(ptr noundef nonnull align 8 dereferenceable(1344) %0, i32 noundef 2, float noundef f0x421DE9E7)
  tail call void @_ZN29btGeneric6DofSpringConstraint10setDampingEif(ptr noundef nonnull align 8 dereferenceable(1344) %0, i32 noundef 2, float noundef f0x3C23D70A)
  tail call void @_ZN29btGeneric6DofSpringConstraint19setEquilibriumPointEv(ptr noundef nonnull align 8 dereferenceable(1344) %0)
  ret void
}

declare void @_ZN29btGeneric6DofSpringConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b(ptr noundef nonnull align 8 dereferenceable(1344), ptr noundef nonnull align 8 dereferenceable(564), ptr noundef nonnull align 8 dereferenceable(564), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN29btGeneric6DofSpringConstraint12enableSpringEib(ptr noundef nonnull align 8 dereferenceable(1344), i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN29btGeneric6DofSpringConstraint12setStiffnessEif(ptr noundef nonnull align 8 dereferenceable(1344), i32 noundef, float noundef) local_unnamed_addr #1

declare void @_ZN29btGeneric6DofSpringConstraint10setDampingEif(ptr noundef nonnull align 8 dereferenceable(1344), i32 noundef, float noundef) local_unnamed_addr #1

declare void @_ZN29btGeneric6DofSpringConstraint19setEquilibriumPointEv(ptr noundef nonnull align 8 dereferenceable(1344)) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraintD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN18btHinge2ConstraintD0Ev(ptr noundef nonnull align 8 dereferenceable(1392) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

declare void @_ZN23btGeneric6DofConstraint13buildJacobianEv(ptr noundef nonnull align 8 dereferenceable(1266)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 1 %1, i32 noundef %2, i32 noundef %3, float noundef %4) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN23btGeneric6DofConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E(ptr noundef nonnull align 8 dereferenceable(1266), ptr noundef) unnamed_addr #1

declare void @_ZN29btGeneric6DofSpringConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E(ptr noundef nonnull align 8 dereferenceable(1344), ptr noundef) unnamed_addr #1

declare void @_ZN23btGeneric6DofConstraint23solveConstraintObsoleteER12btSolverBodyS1_f(ptr noundef nonnull align 8 dereferenceable(1266), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(112), float noundef) unnamed_addr #1

declare void @_ZN23btGeneric6DofConstraint13calcAnchorPosEv(ptr noundef nonnull align 8 dereferenceable(1266)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #5

; Function Attrs: uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(48) ptr @_ZN11btMatrix3x311getIdentityEv() local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix) #11
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float 1.000000e+00, ptr @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix, align 4, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix, i64 4), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix, i64 20), align 4, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix, i64 24), i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix, i64 40), align 4, !tbaa !10
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

attributes #0 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"branch_weights", i32 1, i32 1048575}
!9 = !{!"float", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = distinct !{!11, i1 false, !"_ZNK11btTransform7inverseEv"}
!12 = distinct !{!12, !11, !"_ZNK11btTransform7inverseEv: argument 0"}
!13 = distinct !{!13, i1 false, !"_ZNK11btMatrix3x39transposeEv"}
!14 = distinct !{!14, !13, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!15 = distinct !{!15, i1 false, !"_ZNK11btTransform7inverseEv"}
!16 = distinct !{!16, !15, !"_ZNK11btTransform7inverseEv: argument 0"}
!17 = distinct !{!17, i1 false, !"_ZNK11btMatrix3x39transposeEv"}
!18 = distinct !{!18, !17, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!19 = !{!5, !5, i64 0}
!20 = !{i64 0, i64 16, !19}
!21 = !{!"vtable pointer", !4, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!14, !12}
!24 = !{!12}
!25 = !{!18, !16}
!26 = !{!16}
end_hunk_0
