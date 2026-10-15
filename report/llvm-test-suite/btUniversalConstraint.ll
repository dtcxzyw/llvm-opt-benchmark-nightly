Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btUniversalConstraint?download=true
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

$_ZN21btUniversalConstraintD0Ev = comdat any

$_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif = comdat any

$_ZN11btMatrix3x311getIdentityEv = comdat any

$_ZTV21btUniversalConstraint = comdat any

$_ZTI21btUniversalConstraint = comdat any

$_ZTS21btUniversalConstraint = comdat any

$_ZZN11btTransform11getIdentityEvE17identityTransform = comdat any

$_ZGVZN11btTransform11getIdentityEvE17identityTransform = comdat any

$_ZZN11btMatrix3x311getIdentityEvE14identityMatrix = comdat any

$_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix = comdat any

@_ZTV21btUniversalConstraint = linkonce_odr dso_local unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTI21btUniversalConstraint, ptr @_ZN17btTypedConstraintD2Ev, ptr @_ZN21btUniversalConstraintD0Ev, ptr @_ZN23btGeneric6DofConstraint13buildJacobianEv, ptr @_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif, ptr @_ZN23btGeneric6DofConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E, ptr @_ZN23btGeneric6DofConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E, ptr @_ZN23btGeneric6DofConstraint23solveConstraintObsoleteER12btSolverBodyS1_f, ptr @_ZN23btGeneric6DofConstraint13calcAnchorPosEv] }, comdat, align 8
@_ZTI21btUniversalConstraint = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS21btUniversalConstraint, ptr @_ZTI23btGeneric6DofConstraint }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS21btUniversalConstraint = linkonce_odr dso_local constant [24 x i8] c"21btUniversalConstraint\00", comdat, align 1
@_ZTI23btGeneric6DofConstraint = external constant ptr
@_ZZN11btTransform11getIdentityEvE17identityTransform = linkonce_odr dso_local global %class.btTransform zeroinitializer, comdat, align 4
@_ZGVZN11btTransform11getIdentityEvE17identityTransform = linkonce_odr dso_local global i64 0, comdat, align 8
@_ZZN11btMatrix3x311getIdentityEvE14identityMatrix = linkonce_odr dso_local global %class.btMatrix3x3 zeroinitializer, comdat, align 4
@_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix = linkonce_odr dso_local global i64 0, comdat, align 8

@_ZN21btUniversalConstraintC1ER11btRigidBodyS1_R9btVector3S3_S3_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN21btUniversalConstraintC2ER11btRigidBodyS1_R9btVector3S3_S3_

; Function Attrs: uwtable
define dso_local void @_ZN21btUniversalConstraintC2ER11btRigidBodyS1_R9btVector3S3_S3_(ptr noundef nonnull align 8 dereferenceable(1316) %0, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr noundef nonnull align 8 dereferenceable(564) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  tail call void @_ZN23btGeneric6DofConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr noundef nonnull align 8 dereferenceable(564) %2, ptr noundef nonnull align 4 dereferenceable(64) @_ZZN11btTransform11getIdentityEvE17identityTransform, ptr noundef nonnull align 4 dereferenceable(64) @_ZZN11btTransform11getIdentityEvE17identityTransform, i1 noundef zeroext true)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV21btUniversalConstraint, i64 16), ptr %0, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1268
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !20
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1284
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !20
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1300
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !20
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
  %8 = fneg float %i.ae
  %9 = fmul float %i.aq, %8
  %10 = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.af, float %9)
  %11 = fneg float %i.af
  %12 = fmul float %i.ao, %11
  %13 = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.ad, float %12)
  %14 = fneg float %i.ad
  %15 = fmul float %i.ap, %14
  %16 = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.ae, float %15)
  %.sroa.42.48..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = load float, ptr %20, align 8, !tbaa !10, !noalias !23 ; 2 uses
  %23 = load float, ptr %21, align 8, !tbaa !10, !noalias !23 ; 3 uses
  %24 = load float, ptr %22, align 8, !tbaa !10, !noalias !23 ; 2 uses
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 60
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %28 = load <2 x float>, ptr %17, align 8, !tbaa !10, !noalias !23 ; 3 uses
  %29 = load <2 x float>, ptr %18, align 8, !tbaa !10, !noalias !23 ; 3 uses
  %30 = load <2 x float>, ptr %19, align 8, !tbaa !10, !noalias !23 ; 3 uses
  %31 = load float, ptr %25, align 8, !tbaa !10, !noalias !24
  %32 = fneg float %31                            ; 2 uses
  %33 = load float, ptr %26, align 4, !tbaa !10, !noalias !24
  %34 = fneg float %33                            ; 2 uses
  %35 = load float, ptr %27, align 8, !tbaa !10, !noalias !24
  %36 = fneg float %35                            ; 2 uses
  %i.as = insertelement <2 x float> poison, float %34, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %37 = fmul <2 x float> %29, %i.at
  %i.au = insertelement <2 x float> poison, float %32, i64 0
  %38 = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %39 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %28, <2 x float> %38, <2 x float> %37)
  %i.av = insertelement <2 x float> poison, float %36, i64 0
  %40 = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %41 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %30, <2 x float> %40, <2 x float> %39)
  %i.aw = load <2 x float>, ptr %3, align 4       ; 4 uses
  %42 = fmul float %23, %34
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ay = fmul <2 x float> %i.ax, %29
  %i.az = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %28, <2 x float> %i.az, <2 x float> %i.ay)
  %i.bb = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = insertelement <2 x float> %i.aw, float %32, i64 1
  %i.be = insertelement <2 x float> poison, float %24, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %43 = shufflevector <2 x float> %29, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %44 = shufflevector <4 x float> %43, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bh = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %13, i64 0
  %i.bi = insertelement <4 x float> %i.bh, float %i.ap, i64 1
  %i.bj = insertelement <4 x float> %i.bi, float %i.ae, i64 2 ; 6 uses
  %i.bk = fmul <4 x float> %44, %i.bj
  %45 = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %10, i64 0
  %i.bl = insertelement <4 x float> %45, float %i.ao, i64 1
  %i.bm = insertelement <4 x float> %i.bl, float %i.ad, i64 2 ; 6 uses
  %46 = shufflevector <2 x float> %28, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %47 = shufflevector <4 x float> %46, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %47, <4 x float> %i.bk)
  %48 = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %16, i64 0
  %i.bo = insertelement <4 x float> %48, float %i.aq, i64 1
  %i.bp = insertelement <4 x float> %i.bo, float %i.af, i64 2 ; 6 uses
  %i.bq = shufflevector <2 x float> %30, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> %i.br, <4 x float> %i.bn)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 112
  %49 = shufflevector <4 x float> %43, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.bu = fmul <4 x float> %49, %i.bj
  %50 = shufflevector <4 x float> %46, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.bv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %50, <4 x float> %i.bu)
  %i.bw = shufflevector <4 x float> %i.bq, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.bx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> %i.bw, <4 x float> %i.bv)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bz = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %23, i64 0
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cb = fmul <4 x float> %i.ca, %i.bj
  %i.cc = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.ar, i64 0
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ce = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %i.cd, <4 x float> %i.cb)
  %i.cf = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %24, i64 0
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ch = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> %i.cg, <4 x float> %i.ce)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.20114.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cs = load <2 x float>, ptr %.sroa.42.48..sroa_idx, align 4 ; 5 uses
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.cu = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %30, <2 x float> %i.cu, <2 x float> %i.ba)
  %i.cw = fadd <2 x float> %i.cv, %41
  %51 = extractelement <2 x float> %i.cs, i64 0
  %52 = fmul float %51, %23
  %53 = insertelement <2 x float> poison, float %52, i64 0
  %54 = insertelement <2 x float> %53, float %42, i64 1
  %55 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.bd, <2 x float> %54)
  %i.cx = insertelement <2 x float> %i.ct, float %36, i64 1
  %i.cy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.cx, <2 x float> %55) ; 2 uses
  %shift = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.cy, %shift
  %.sroa.3.12.vec.insert.i.i154 = insertelement <2 x float> %foldExtExtBinop, float 0.000000e+00, i64 1
  store <4 x float> %i.bs, ptr %i.bg, align 8
  store <4 x float> %i.bx, ptr %i.bt, align 8
  store <4 x float> %i.ch, ptr %i.by, align 8
  store <2 x float> %i.cw, ptr %i.ci, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i154, ptr %.sroa.20114.48..sroa_idx, align 8, !tbaa !19
  %i.cz = load <2 x float>, ptr %i.cj, align 8, !tbaa !10, !noalias !25 ; 3 uses
  %i.da = load <2 x float>, ptr %i.ck, align 8, !tbaa !10, !noalias !25 ; 3 uses
  %i.db = load <2 x float>, ptr %i.cl, align 8, !tbaa !10, !noalias !25 ; 3 uses
  %i.dc = load float, ptr %i.cm, align 8, !tbaa !10, !noalias !25 ; 2 uses
  %i.dd = load float, ptr %i.cn, align 8, !tbaa !10, !noalias !25 ; 2 uses
  %i.de = load float, ptr %i.co, align 8, !tbaa !10, !noalias !25 ; 2 uses
  %i.df = load float, ptr %i.cp, align 8, !tbaa !10, !noalias !26
  %i.dg = fneg float %i.df                        ; 2 uses
  %i.dh = load float, ptr %i.cq, align 4, !tbaa !10, !noalias !26
  %i.di = fneg float %i.dh                        ; 2 uses
  %i.dj = load float, ptr %i.cr, align 8, !tbaa !10, !noalias !26
  %i.dk = fneg float %i.dj                        ; 2 uses
  %i.dl = insertelement <2 x float> poison, float %i.di, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = fmul <2 x float> %i.da, %i.dm
  %i.do = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.dp, <2 x float> %i.dn)
  %i.dr = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> %i.ds, <2 x float> %i.dq)
  %i.du = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = fmul <2 x float> %i.du, %i.da
  %i.dw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.az, <2 x float> %i.dv)
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> %i.cu, <2 x float> %i.dw)
  %i.dy = fadd <2 x float> %i.dx, %i.dt
  %i.dz = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = insertelement <2 x float> %i.cs, float %i.di, i64 1
  %i.ec = fmul <2 x float> %i.ea, %i.eb
  %i.ed = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = insertelement <2 x float> %i.aw, float %i.dg, i64 1
  %i.eg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.ef, <2 x float> %i.ec)
  %i.eh = insertelement <2 x float> poison, float %i.de, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = insertelement <2 x float> %i.ct, float %i.dk, i64 1
  %i.ek = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.ej, <2 x float> %i.eg) ; 2 uses
  %shift151 = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop152 = fadd <2 x float> %i.ek, %shift151
  %.sroa.3.12.vec.insert.i.i38155 = insertelement <2 x float> %foldExtExtBinop152, float 0.000000e+00, i64 1
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.em = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.en = shufflevector <4 x float> %i.em, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.eo = fmul <4 x float> %i.en, %i.bj
  %i.ep = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.er = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %i.eq, <4 x float> %i.eo)
  %i.es = shufflevector <2 x float> %i.db, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.et = shufflevector <4 x float> %i.es, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.eu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> %i.et, <4 x float> %i.er)
  store <4 x float> %i.eu, ptr %i.el, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ew = shufflevector <4 x float> %i.em, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ex = fmul <4 x float> %i.ew, %i.bj
  %i.ey = shufflevector <4 x float> %i.ep, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ez = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %i.ey, <4 x float> %i.ex)
  %i.fa = shufflevector <4 x float> %i.es, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.fb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> %i.fa, <4 x float> %i.ez)
  store <4 x float> %i.fb, ptr %i.ev, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.fd = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.dd, i64 0
  %i.fe = shufflevector <4 x float> %i.fd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ff = fmul <4 x float> %i.fe, %i.bj
  %i.fg = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.dc, i64 0
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %i.fh, <4 x float> %i.ff)
  %i.fj = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.de, i64 0
  %i.fk = shufflevector <4 x float> %i.fj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> %i.fk, <4 x float> %i.fi)
  store <4 x float> %i.fl, ptr %i.fc, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x float> %i.dy, ptr %i.fm, align 8
  %.sroa.20.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store <2 x float> %.sroa.3.12.vec.insert.i.i38155, ptr %.sroa.20.48..sroa_idx, align 8, !tbaa !19
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 924
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fn, i8 0, i64 32, i1 false)
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 980
  store <2 x float> zeroinitializer, ptr %i.fo, align 4, !tbaa !10
  store <2 x float> <float f0xBFC7C82D, float f0x3FC7C82D>, ptr %i.fp, align 4, !tbaa !10
  store <2 x float> <float f0xC0486C04, float f0x40486C04>, ptr %i.fq, align 4, !tbaa !10
  ret void
}

declare void @_ZN23btGeneric6DofConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b(ptr noundef nonnull align 8 dereferenceable(1266), ptr noundef nonnull align 8 dereferenceable(564), ptr noundef nonnull align 8 dereferenceable(564), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraintD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN21btUniversalConstraintD0Ev(ptr noundef nonnull align 8 dereferenceable(1316) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
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

declare void @_ZN23btGeneric6DofConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E(ptr noundef nonnull align 8 dereferenceable(1266), ptr noundef) unnamed_addr #1

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

end_hunk_0
