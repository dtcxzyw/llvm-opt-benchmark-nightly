Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btHinge2Constraint?download=true
inline.NumInlined: 157
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btTransform = type { %class.btMatrix3x3, %class.btVector3 }
%class.btMatrix3x3 = type { [3 x %class.btVector3] }
%class.btVector3 = type { [4 x float] }

$_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif = comdat any

$_ZN17btTypedConstraint23solveConstraintObsoleteER12btSolverBodyS1_f = comdat any

$_ZN17btTypedConstraintD2Ev = comdat any

$_ZN18btHinge2ConstraintD0Ev = comdat any

$_ZN30btGeneric6DofSpring2Constraint13buildJacobianEv = comdat any

$_ZNK30btGeneric6DofSpring2Constraint28calculateSerializeBufferSizeEv = comdat any

$_ZNK30btGeneric6DofSpring2Constraint9serializeEPvP12btSerializer = comdat any

$_ZN11btMatrix3x311getIdentityEv = comdat any

$__clang_call_terminate = comdat any

$_ZTV18btHinge2Constraint = comdat any

$_ZTI18btHinge2Constraint = comdat any

$_ZTS18btHinge2Constraint = comdat any

$_ZZN11btTransform11getIdentityEvE17identityTransform = comdat any

$_ZGVZN11btTransform11getIdentityEvE17identityTransform = comdat any

$_ZZN11btMatrix3x311getIdentityEvE14identityMatrix = comdat any

$_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix = comdat any

@_ZTV18btHinge2Constraint = linkonce_odr dso_local constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI18btHinge2Constraint, ptr @_ZN17btTypedConstraintD2Ev, ptr @_ZN18btHinge2ConstraintD0Ev, ptr @_ZN30btGeneric6DofSpring2Constraint13buildJacobianEv, ptr @_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif, ptr @_ZN30btGeneric6DofSpring2Constraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E, ptr @_ZN30btGeneric6DofSpring2Constraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E, ptr @_ZN17btTypedConstraint23solveConstraintObsoleteER12btSolverBodyS1_f, ptr @_ZN30btGeneric6DofSpring2Constraint8setParamEifi, ptr @_ZNK30btGeneric6DofSpring2Constraint8getParamEii, ptr @_ZNK30btGeneric6DofSpring2Constraint28calculateSerializeBufferSizeEv, ptr @_ZNK30btGeneric6DofSpring2Constraint9serializeEPvP12btSerializer] }, comdat, align 8
@_ZTI18btHinge2Constraint = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS18btHinge2Constraint, ptr @_ZTI30btGeneric6DofSpring2Constraint }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS18btHinge2Constraint = linkonce_odr dso_local constant [21 x i8] c"18btHinge2Constraint\00", comdat, align 1
@_ZTI30btGeneric6DofSpring2Constraint = external constant ptr
@_ZZN11btTransform11getIdentityEvE17identityTransform = linkonce_odr dso_local global %class.btTransform zeroinitializer, comdat, align 4
@_ZGVZN11btTransform11getIdentityEvE17identityTransform = linkonce_odr dso_local global i64 0, comdat, align 8
@_ZZN11btMatrix3x311getIdentityEvE14identityMatrix = linkonce_odr dso_local global %class.btMatrix3x3 zeroinitializer, comdat, align 4
@_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix = linkonce_odr dso_local global i64 0, comdat, align 8
@.str = private unnamed_addr constant [35 x i8] c"btGeneric6DofSpring2ConstraintData\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN18btHinge2ConstraintC1ER11btRigidBodyS1_R9btVector3S3_S3_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN18btHinge2ConstraintC2ER11btRigidBodyS1_R9btVector3S3_S3_

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18btHinge2ConstraintC2ER11btRigidBodyS1_R9btVector3S3_S3_(ptr noundef nonnull align 8 dereferenceable(1532) %0, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr noundef nonnull align 8 dereferenceable(744) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN11btTransform11getIdentityEvE17identityTransform acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN11btTransform11getIdentityEv.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #13
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN11btTransform11getIdentityEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 4 dereferenceable(48) ptr @_ZN11btMatrix3x311getIdentityEv()
          to label %bb.d unwind label %bb.e       ; 3 uses

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZN11btTransform11getIdentityEvE17identityTransform, ptr noundef nonnull align 4 dereferenceable(48) %i.d, i64 16, i1 false), !tbaa.struct !21
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 48), i8 0, i64 16, i1 false)
  %i.g = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZN11btTransform11getIdentityEvE17identityTransform) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #13
  br label %_ZN11btTransform11getIdentityEv.exit

common.resume:                                    ; preds = %bb.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.p, %bb.i ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #13
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN11btTransform11getIdentityEv.exit:             ; preds = %bb.a, %bb.b, %bb.d
  %i.i = load atomic i8, ptr @_ZGVZN11btTransform11getIdentityEvE17identityTransform acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.j, !prof !9

bb.f:                                             ; preds = %_ZN11btTransform11getIdentityEv.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #13
  %.not.i20 = icmp eq i32 %i.k, 0
  br i1 %.not.i20, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = invoke noundef nonnull align 4 dereferenceable(48) ptr @_ZN11btMatrix3x311getIdentityEv()
          to label %bb.h unwind label %bb.i       ; 3 uses

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZN11btTransform11getIdentityEvE17identityTransform, ptr noundef nonnull align 4 dereferenceable(48) %i.l, i64 16, i1 false), !tbaa.struct !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 48), i8 0, i64 16, i1 false)
  %i.o = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZN11btTransform11getIdentityEvE17identityTransform) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #13
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.j:                                             ; preds = %bb.h, %bb.f, %_ZN11btTransform11getIdentityEv.exit
  tail call void @_ZN30btGeneric6DofSpring2ConstraintC2ER11btRigidBodyS1_RK11btTransformS4_11RotateOrder(ptr noundef nonnull align 8 dereferenceable(1484) %0, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr noundef nonnull align 8 dereferenceable(744) %2, ptr noundef nonnull align 4 dereferenceable(64) @_ZZN11btTransform11getIdentityEvE17identityTransform, ptr noundef nonnull align 4 dereferenceable(64) @_ZZN11btTransform11getIdentityEvE17identityTransform, i32 noundef 0)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTV18btHinge2Constraint, i64 16), ptr %0, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1484
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !21
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1500
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !21
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1516
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !21
  %i.t = load float, ptr %4, align 4, !tbaa !12   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !12 ; 3 uses
  %i.w = fmul float %i.v, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !12 ; 3 uses
  %i.aa = tail call noundef float @llvm.fmuladd.f32(float %i.z, float %i.z, float %i.x)
  %i.ab = tail call noundef float @sqrtf(float noundef %i.aa) #13
  %i.ac = fdiv float 1.000000e+00, %i.ab          ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.sroa.42.48..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 60
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ad = fmul float %i.t, %i.ac                  ; 3 uses
  store float %i.ad, ptr %4, align 4, !tbaa !12
  %i.ae = fmul float %i.v, %i.ac                  ; 3 uses
  store float %i.ae, ptr %i.u, align 4, !tbaa !12
  %i.af = fmul float %i.z, %i.ac                  ; 3 uses
  store float %i.af, ptr %i.y, align 4, !tbaa !12
  %i.ag = load float, ptr %5, align 4, !tbaa !12  ; 3 uses
  %i.ah = load float, ptr %6, align 4, !tbaa !12  ; 3 uses
  %i.ai = fmul float %i.ah, %i.ah
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ag, float %i.ai)
  %i.ak = load float, ptr %7, align 4, !tbaa !12  ; 3 uses
  %i.al = tail call noundef float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float %i.aj)
  %i.am = tail call noundef float @sqrtf(float noundef %i.al) #13
  %i.an = fdiv float 1.000000e+00, %i.am          ; 3 uses
  %i.ao = fmul float %i.ag, %i.an                 ; 3 uses
  store float %i.ao, ptr %5, align 4, !tbaa !12
  %i.ap = fmul float %i.ah, %i.an                 ; 3 uses
  store float %i.ap, ptr %6, align 4, !tbaa !12
  %i.aq = fmul float %i.ak, %i.an                 ; 3 uses
  store float %i.aq, ptr %7, align 4, !tbaa !12
  %17 = load float, ptr %11, align 8, !tbaa !12, !noalias !24 ; 2 uses
  %18 = load float, ptr %12, align 8, !tbaa !12, !noalias !24 ; 2 uses
  %19 = load float, ptr %13, align 8, !tbaa !12, !noalias !24 ; 2 uses
  %20 = load float, ptr %14, align 8, !tbaa !12, !noalias !25
  %21 = fneg float %20                            ; 3 uses
  %22 = load float, ptr %15, align 4, !tbaa !12, !noalias !25 ; 2 uses
  %i.ar = fneg float %22                          ; 2 uses
  %23 = insertelement <4 x float> poison, float %i.aq, i64 0
  %24 = insertelement <4 x float> %23, float %i.ao, i64 1
  %25 = insertelement <4 x float> %24, float %i.ap, i64 2 ; 2 uses
  %26 = insertelement <4 x float> %25, float %22, i64 3
  %27 = fneg <4 x float> %26
  %28 = load float, ptr %16, align 8, !tbaa !12, !noalias !25
  %29 = fneg float %28                            ; 2 uses
  %30 = insertelement <4 x float> poison, float %i.ad, i64 0
  %31 = insertelement <4 x float> %30, float %i.ae, i64 1
  %32 = insertelement <4 x float> %31, float %i.af, i64 2 ; 2 uses
  %33 = shufflevector <4 x float> %25, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %34 = insertelement <4 x float> %33, float %21, i64 3
  %35 = load <2 x float>, ptr %8, align 8, !tbaa !12, !noalias !24 ; 3 uses
  %36 = load <2 x float>, ptr %9, align 8, !tbaa !12, !noalias !24 ; 3 uses
  %i.as = load <2 x float>, ptr %10, align 8, !tbaa !12, !noalias !24 ; 3 uses
  %37 = shufflevector <2 x float> %36, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %38 = shufflevector <4 x float> %32, <4 x float> %37, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %39 = fmul <4 x float> %38, %27
  %40 = shufflevector <4 x float> %32, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 poison>
  %41 = shufflevector <2 x float> %35, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %42 = shufflevector <4 x float> %40, <4 x float> %41, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %43 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %42, <4 x float> %34, <4 x float> %39) ; 4 uses
  %44 = extractelement <2 x float> %36, i64 1
  %45 = fmul float %44, %i.ar
  %46 = extractelement <2 x float> %35, i64 1
  %47 = tail call float @llvm.fmuladd.f32(float %46, float %21, float %45)
  %i.at = insertelement <2 x float> poison, float %29, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %48 = shufflevector <4 x float> %43, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.av = insertelement <2 x float> %48, float %47, i64 1
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.au, <2 x float> %i.av)
  %i.ax = load <2 x float>, ptr %3, align 4       ; 5 uses
  %49 = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.az = fmul <2 x float> %i.ay, %36
  %i.ba = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %35, <2 x float> %i.az)
  %i.bc = insertelement <2 x float> poison, float %18, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = insertelement <2 x float> %49, float %i.ar, i64 1
  %50 = fmul <2 x float> %i.bd, %i.be
  %i.bf = insertelement <2 x float> poison, float %17, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %51 = insertelement <2 x float> %i.ax, float %21, i64 1
  %52 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %51, <2 x float> %50)
  %53 = insertelement <2 x float> poison, float %19, i64 0
  %54 = shufflevector <2 x float> %53, <2 x float> poison, <2 x i32> zeroinitializer
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bh = shufflevector <4 x float> %37, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %56 = shufflevector <4 x float> %43, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 poison, i32 0, i32 poison, i32 7>
  %i.bi = insertelement <4 x float> %56, float %i.ap, i64 0
  %i.bj = insertelement <4 x float> %i.bi, float %i.ae, i64 2 ; 6 uses
  %i.bk = fmul <4 x float> %i.bh, %i.bj
  %57 = shufflevector <4 x float> %43, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 poison, i32 2, i32 poison, i32 7>
  %i.bl = insertelement <4 x float> %57, float %i.ao, i64 0
  %i.bm = insertelement <4 x float> %i.bl, float %i.ad, i64 2 ; 6 uses
  %i.bn = shufflevector <4 x float> %41, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %i.bn, <4 x float> %i.bk)
  %i.bp = insertelement <4 x float> %43, float 0.000000e+00, i64 3
  %i.bq = insertelement <4 x float> %i.bp, float %i.aq, i64 0
  %i.br = insertelement <4 x float> %i.bq, float %i.af, i64 2 ; 6 uses
  %i.bs = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %i.bt, <4 x float> %i.bo)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bw = shufflevector <4 x float> %37, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.bx = fmul <4 x float> %i.bw, %i.bj
  %i.by = shufflevector <4 x float> %41, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.bz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %i.by, <4 x float> %i.bx)
  %i.ca = shufflevector <4 x float> %i.bs, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %i.ca, <4 x float> %i.bz)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cd = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %18, i64 0
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cf = fmul <4 x float> %i.ce, %i.bj
  %i.cg = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %17, i64 0
  %i.ch = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ci = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %i.ch, <4 x float> %i.cf)
  %i.cj = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %19, i64 0
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %i.ck, <4 x float> %i.ci)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.20114.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 40
  %58 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cw = load <2 x float>, ptr %.sroa.42.48..sroa_idx, align 4 ; 4 uses
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.cy = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.as, <2 x float> %i.bb)
  %i.da = insertelement <2 x float> %i.cx, float %29, i64 1
  %i.db = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %54, <2 x float> %i.da, <2 x float> %52) ; 2 uses
  %i.dc = fadd <2 x float> %i.cz, %i.aw
  %shift = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.db, %shift
  %.sroa.3.12.vec.insert.i4.i.i154 = insertelement <2 x float> %foldExtExtBinop, float 0.000000e+00, i64 1
  store <4 x float> %i.bu, ptr %55, align 8
  store <4 x float> %i.cb, ptr %i.bv, align 8
  store <4 x float> %i.cl, ptr %i.cc, align 8
  store <2 x float> %i.dc, ptr %i.cm, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i154, ptr %.sroa.20114.48..sroa_idx, align 8, !tbaa !10
  %60 = load float, ptr %i.cn, align 8, !tbaa !12, !noalias !26 ; 2 uses
  %61 = load float, ptr %i.co, align 8, !tbaa !12, !noalias !26 ; 2 uses
  %62 = load float, ptr %58, align 4, !tbaa !12, !noalias !26 ; 2 uses
  %63 = load float, ptr %59, align 4, !tbaa !12, !noalias !26 ; 2 uses
  %i.dd = load <2 x float>, ptr %i.cp, align 8, !tbaa !12, !noalias !26 ; 3 uses
  %i.de = load float, ptr %i.cq, align 8, !tbaa !12, !noalias !26 ; 2 uses
  %i.df = load float, ptr %i.cr, align 8, !tbaa !12, !noalias !26 ; 2 uses
  %i.dg = load float, ptr %i.cs, align 8, !tbaa !12, !noalias !26 ; 2 uses
  %i.dh = load float, ptr %i.ct, align 8, !tbaa !12, !noalias !27
  %i.di = fneg float %i.dh                        ; 2 uses
  %i.dj = load float, ptr %i.cu, align 4, !tbaa !12, !noalias !27
  %i.dk = fneg float %i.dj                        ; 2 uses
  %i.dl = load float, ptr %i.cv, align 8, !tbaa !12, !noalias !27
  %i.dm = fneg float %i.dl                        ; 2 uses
  %64 = insertelement <2 x float> poison, float %61, i64 0
  %65 = insertelement <2 x float> %64, float %63, i64 1 ; 2 uses
  %i.dn = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = fmul <2 x float> %65, %i.do
  %66 = insertelement <2 x float> poison, float %60, i64 0
  %67 = insertelement <2 x float> %66, float %62, i64 1 ; 2 uses
  %i.dq = insertelement <2 x float> poison, float %i.di, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %67, <2 x float> %i.dr, <2 x float> %i.dp)
  %i.dt = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.du, <2 x float> %i.ds)
  %i.dw = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = fmul <2 x float> %i.dw, %65
  %i.dy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %67, <2 x float> %i.dx)
  %i.dz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.dd, <2 x float> %i.dy)
  %i.ea = insertelement <2 x float> poison, float %i.df, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ec = insertelement <2 x float> %i.cw, float %i.dk, i64 1
  %i.ed = fmul <2 x float> %i.eb, %i.ec
  %i.ee = insertelement <2 x float> %i.ax, float %i.di, i64 1
  %i.ef = insertelement <2 x float> poison, float %i.de, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.eg, <2 x float> %i.ed)
  %i.ei = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = insertelement <2 x float> %i.cx, float %i.dm, i64 1
  %i.el = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> %i.ek, <2 x float> %i.eh) ; 2 uses
  %i.em = fadd <2 x float> %i.dz, %i.dv
  %shift151 = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop152 = fadd <2 x float> %i.el, %shift151
  %.sroa.3.12.vec.insert.i4.i.i38155 = insertelement <2 x float> %foldExtExtBinop152, float 0.000000e+00, i64 1
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 136
  %68 = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %61, i64 0
  %69 = shufflevector <4 x float> %68, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.eo = fmul <4 x float> %69, %i.bj
  %70 = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %60, i64 0
  %71 = shufflevector <4 x float> %70, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ep = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %71, <4 x float> %i.eo)
  %i.eq = shufflevector <2 x float> %i.dd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.es = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %i.er, <4 x float> %i.ep)
  store <4 x float> %i.es, ptr %i.en, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 152
  %72 = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %63, i64 0
  %73 = shufflevector <4 x float> %72, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.eu = fmul <4 x float> %73, %i.bj
  %74 = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %62, i64 0
  %75 = shufflevector <4 x float> %74, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ev = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %75, <4 x float> %i.eu)
  %i.ew = shufflevector <4 x float> %i.eq, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ex = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %i.ew, <4 x float> %i.ev)
  store <4 x float> %i.ex, ptr %i.et, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 168
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
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 184
  store <2 x float> %i.em, ptr %i.fi, align 8
  %.sroa.20.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i38155, ptr %.sroa.20.48..sroa_idx, align 8, !tbaa !10
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 704
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00>, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 720
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 1168
  store <2 x float> <float 1.000000e+00, float -1.000000e+00>, ptr %i.fl, align 8, !tbaa !12
  store <2 x float> zeroinitializer, ptr %i.fm, align 8, !tbaa !12
  store <2 x float> <float f0xBF490FDB, float f0x3F490FDB>, ptr %i.fn, align 8, !tbaa !12
  tail call void @_ZN30btGeneric6DofSpring2Constraint12enableSpringEib(ptr noundef nonnull align 8 dereferenceable(1484) %0, i32 noundef 2, i1 noundef zeroext true)
  tail call void @_ZN30btGeneric6DofSpring2Constraint12setStiffnessEifb(ptr noundef nonnull align 8 dereferenceable(1484) %0, i32 noundef 2, float noundef f0x421DE9E7, i1 noundef zeroext true)
  tail call void @_ZN30btGeneric6DofSpring2Constraint10setDampingEifb(ptr noundef nonnull align 8 dereferenceable(1484) %0, i32 noundef 2, float noundef f0x3C23D70A, i1 noundef zeroext true)
  tail call void @_ZN30btGeneric6DofSpring2Constraint19setEquilibriumPointEv(ptr noundef nonnull align 8 dereferenceable(1484) %0)
  ret void
}

declare void @_ZN30btGeneric6DofSpring2ConstraintC2ER11btRigidBodyS1_RK11btTransformS4_11RotateOrder(ptr noundef nonnull align 8 dereferenceable(1484), ptr noundef nonnull align 8 dereferenceable(744), ptr noundef nonnull align 8 dereferenceable(744), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), i32 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN30btGeneric6DofSpring2Constraint12enableSpringEib(ptr noundef nonnull align 8 dereferenceable(1484), i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN30btGeneric6DofSpring2Constraint12setStiffnessEifb(ptr noundef nonnull align 8 dereferenceable(1484), i32 noundef, float noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN30btGeneric6DofSpring2Constraint10setDampingEifb(ptr noundef nonnull align 8 dereferenceable(1484), i32 noundef, float noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN30btGeneric6DofSpring2Constraint19setEquilibriumPointEv(ptr noundef nonnull align 8 dereferenceable(1484)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 %1, i32 noundef %2, i32 noundef %3, float noundef %4) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraint23solveConstraintObsoleteER12btSolverBodyS1_f(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, ptr noundef nonnull align 8 dereferenceable(248) %2, float noundef %3) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

declare noundef ptr @_ZNK17btTypedConstraint9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraintD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18btHinge2ConstraintD0Ev(ptr noundef nonnull align 8 dereferenceable(1532) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN18btHinge2ConstraintdlEPv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #14
  unreachable

_ZN18btHinge2ConstraintdlEPv.exit:                ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN30btGeneric6DofSpring2Constraint13buildJacobianEv(ptr noundef nonnull align 8 dereferenceable(1484) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN30btGeneric6DofSpring2Constraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E(ptr noundef nonnull align 8 dereferenceable(1484), ptr noundef) unnamed_addr #1

declare void @_ZN30btGeneric6DofSpring2Constraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E(ptr noundef nonnull align 8 dereferenceable(1484), ptr noundef) unnamed_addr #1

declare void @_ZN30btGeneric6DofSpring2Constraint8setParamEifi(ptr noundef nonnull align 8 dereferenceable(1484), i32 noundef, float noundef, i32 noundef) unnamed_addr #1

declare noundef float @_ZNK30btGeneric6DofSpring2Constraint8getParamEii(ptr noundef nonnull align 8 dereferenceable(1484), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK30btGeneric6DofSpring2Constraint28calculateSerializeBufferSizeEv(ptr noundef nonnull align 8 dereferenceable(1484) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 656
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK30btGeneric6DofSpring2Constraint9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(1484) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK17btTypedConstraint9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load float, ptr %i.b, align 8, !tbaa !12
  store float %i.d, ptr %i.c, align 4, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.f = load float, ptr %i.e, align 4, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 68
  store float %i.f, ptr %i.g, align 4, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load float, ptr %i.h, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  store float %i.i, ptr %i.j, align 4, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.l = load float, ptr %i.k, align 4, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 76
  store float %i.l, ptr %i.m, align 4, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.p = load float, ptr %i.n, align 8, !tbaa !12
  store float %i.p, ptr %i.o, align 4, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.r = load float, ptr %i.q, align 4, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 84
  store float %i.r, ptr %i.s, align 4, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load float, ptr %i.t, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88
  store float %i.u, ptr %i.v, align 4, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.x = load float, ptr %i.w, align 4, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 92
  store float %i.x, ptr %i.y, align 4, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ab = load float, ptr %i.z, align 8, !tbaa !12
  store float %i.ab, ptr %i.aa, align 4, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 100
  store float %i.ad, ptr %i.ae, align 4, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ag = load float, ptr %i.af, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 104
  store float %i.ag, ptr %i.ah, align 4, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !12
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 108
  store float %i.aj, ptr %i.ak, align 4, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.an = load float, ptr %i.al, align 8, !tbaa !12
  store float %i.an, ptr %i.am, align 4, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 116
  store float %i.ap, ptr %i.aq, align 4, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.as = load float, ptr %i.ar, align 8, !tbaa !12
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 120
  store float %i.as, ptr %i.at, align 4, !tbaa !12
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.av = load float, ptr %i.au, align 4, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 124
  store float %i.av, ptr %i.aw, align 4, !tbaa !12
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.az = load float, ptr %i.ax, align 8, !tbaa !12
  store float %i.az, ptr %i.ay, align 4, !tbaa !12
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 132
  store float %i.bb, ptr %i.bc, align 4, !tbaa !12
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.be = load float, ptr %i.bd, align 8, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 136
  store float %i.be, ptr %i.bf, align 4, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !12
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 140
  store float %i.bh, ptr %i.bi, align 4, !tbaa !12
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bl = load float, ptr %i.bj, align 8, !tbaa !12
  store float %i.bl, ptr %i.bk, align 4, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !12
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 148
  store float %i.bn, ptr %i.bo, align 4, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 160
end_hunk_0
