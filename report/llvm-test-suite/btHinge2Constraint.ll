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
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #10
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN11btTransform11getIdentityEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 4 dereferenceable(48) ptr @_ZN11btMatrix3x311getIdentityEv()
          to label %bb.d unwind label %bb.e       ; 3 uses

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZN11btTransform11getIdentityEvE17identityTransform, ptr noundef nonnull align 4 dereferenceable(48) %i.d, i64 16, i1 false), !tbaa.struct !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 48), i8 0, i64 16, i1 false)
  %i.g = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZN11btTransform11getIdentityEvE17identityTransform) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #10
  br label %_ZN11btTransform11getIdentityEv.exit

common.resume:                                    ; preds = %bb.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.p, %bb.i ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #10
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
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #10
  %.not.i20 = icmp eq i32 %i.k, 0
  br i1 %.not.i20, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = invoke noundef nonnull align 4 dereferenceable(48) ptr @_ZN11btMatrix3x311getIdentityEv()
          to label %bb.h unwind label %bb.i       ; 3 uses

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZN11btTransform11getIdentityEvE17identityTransform, ptr noundef nonnull align 4 dereferenceable(48) %i.l, i64 16, i1 false), !tbaa.struct !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 48), i8 0, i64 16, i1 false)
  %i.o = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZN11btTransform11getIdentityEvE17identityTransform) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #10
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.j:                                             ; preds = %bb.h, %bb.f, %_ZN11btTransform11getIdentityEv.exit
  tail call void @_ZN29btGeneric6DofSpringConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b(ptr noundef nonnull align 8 dereferenceable(1344) %0, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr noundef nonnull align 8 dereferenceable(564) %2, ptr noundef nonnull align 4 dereferenceable(64) @_ZZN11btTransform11getIdentityEvE17identityTransform, ptr noundef nonnull align 4 dereferenceable(64) @_ZZN11btTransform11getIdentityEvE17identityTransform, i1 noundef zeroext true)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV18btHinge2Constraint, i64 16), ptr %0, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1344
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !9
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1360
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !9
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1376
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !9
  %i.t = load float, ptr %4, align 4, !tbaa !13   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !13 ; 3 uses
  %i.w = fmul float %i.v, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !13 ; 3 uses
  %i.aa = tail call noundef float @llvm.fmuladd.f32(float %i.z, float %i.z, float %i.x)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.aa)
  %i.ab = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.ac = fmul float %i.t, %i.ab                  ; 9 uses
  store float %i.ac, ptr %4, align 4, !tbaa !13
  %i.ad = fmul float %i.v, %i.ab                  ; 9 uses
  store float %i.ad, ptr %i.u, align 4, !tbaa !13
  %i.ae = fmul float %i.z, %i.ab                  ; 9 uses
  store float %i.ae, ptr %i.y, align 4, !tbaa !13
  %i.af = load float, ptr %5, align 4, !tbaa !13  ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !13 ; 3 uses
  %i.ai = fmul float %i.ah, %i.ah
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !13 ; 3 uses
  %i.am = tail call noundef float @llvm.fmuladd.f32(float %i.al, float %i.al, float %i.aj)
  %sqrt.i.i22 = tail call noundef float @llvm.sqrt.f32(float %i.am)
  %i.an = fdiv float 1.000000e+00, %sqrt.i.i22    ; 3 uses
  %i.ao = fmul float %i.af, %i.an                 ; 4 uses
  store float %i.ao, ptr %5, align 4, !tbaa !13
  %i.ap = fmul float %i.ah, %i.an                 ; 4 uses
  store float %i.ap, ptr %i.ag, align 4, !tbaa !13
  %i.aq = fmul float %i.al, %i.an                 ; 4 uses
  store float %i.aq, ptr %i.ak, align 4, !tbaa !13
  %i.ar = fneg float %i.ap
  %i.as = fmul float %i.ae, %i.ar
  %i.at = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.aq, float %i.as)
  %i.au = fneg float %i.aq
  %i.av = fmul float %i.ac, %i.au
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ao, float %i.av)
  %i.ax = fneg float %i.ao
  %i.ay = fmul float %i.ad, %i.ax
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ap, float %i.ay)
  %.sroa.42.48..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bg = load float, ptr %i.bd, align 8, !tbaa !13, !noalias !15 ; 2 uses
  %i.bh = load float, ptr %i.be, align 8, !tbaa !13, !noalias !15 ; 4 uses
  %i.bi = load float, ptr %i.bf, align 8, !tbaa !13, !noalias !15 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !13, !noalias !20
  %i.bl = fneg float %i.bk                        ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !13, !noalias !20
  %i.bo = fneg float %i.bn                        ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !13, !noalias !20
  %i.br = fneg float %i.bq                        ; 2 uses
  %6 = fmul float %i.ad, %i.bh
  %7 = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.bg, float %6)
  %8 = tail call noundef float @llvm.fmuladd.f32(float %i.ae, float %i.bi, float %7)
  %i.bs = load <2 x float>, ptr %i.ba, align 8, !tbaa !13, !noalias !15 ; 6 uses
  %i.bt = load <2 x float>, ptr %i.bb, align 8, !tbaa !13, !noalias !15 ; 6 uses
  %i.bu = load <2 x float>, ptr %i.bc, align 8, !tbaa !13, !noalias !15 ; 6 uses
  %i.bv = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x float> %i.bt, %i.bw
  %i.by = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.bz, <2 x float> %i.bx)
  %i.cb = insertelement <2 x float> poison, float %i.br, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.cc, <2 x float> %i.ca)
  %9 = extractelement <2 x float> %i.bt, i64 0
  %10 = fmul float %i.ad, %9
  %11 = extractelement <2 x float> %i.bs, i64 0
  %12 = tail call float @llvm.fmuladd.f32(float %i.ac, float %11, float %10)
  %13 = extractelement <2 x float> %i.bu, i64 0
  %14 = tail call noundef float @llvm.fmuladd.f32(float %i.ae, float %13, float %12)
  %15 = extractelement <2 x float> %i.bt, i64 1
  %16 = fmul float %i.ad, %15
  %17 = extractelement <2 x float> %i.bs, i64 1
  %18 = tail call float @llvm.fmuladd.f32(float %i.ac, float %17, float %16)
  %19 = extractelement <2 x float> %i.bu, i64 1
  %20 = tail call noundef float @llvm.fmuladd.f32(float %i.ae, float %19, float %18)
  %i.ce = load <2 x float>, ptr %3, align 4       ; 4 uses
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cg = fmul <2 x float> %i.cf, %i.bt
  %i.ch = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.ch, <2 x float> %i.cg)
  %i.cj = fmul float %i.bh, %i.bo
  %i.ck = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cm = insertelement <2 x float> %i.ce, float %i.bl, i64 1
  %i.cn = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 96
  %21 = insertelement <2 x float> poison, float %i.ap, i64 0
  %22 = insertelement <2 x float> %21, float %i.aw, i64 1 ; 6 uses
  %23 = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %24 = fmul <2 x float> %22, %23
  %25 = insertelement <2 x float> poison, float %i.ao, i64 0
  %26 = insertelement <2 x float> %25, float %i.at, i64 1 ; 6 uses
  %27 = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %28 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %26, <2 x float> %27, <2 x float> %24)
  %29 = insertelement <2 x float> poison, float %i.aq, i64 0
  %30 = insertelement <2 x float> %29, float %i.az, i64 1 ; 6 uses
  %31 = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %32 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %30, <2 x float> %31, <2 x float> %28)
  %.sroa.6104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.7105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %33 = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %34 = fmul <2 x float> %22, %33
  %35 = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %36 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %26, <2 x float> %35, <2 x float> %34)
  %37 = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %38 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %30, <2 x float> %37, <2 x float> %36)
  %.sroa.11108.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.12109.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %40 = insertelement <2 x float> poison, float %i.bh, i64 0
  %41 = shufflevector <2 x float> %40, <2 x float> poison, <2 x i32> zeroinitializer
  %42 = fmul <2 x float> %22, %41
  %43 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %26, <2 x float> %i.cl, <2 x float> %42)
  %44 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %30, <2 x float> %i.co, <2 x float> %43)
  %.sroa.16112.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.17113.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.20115.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.db = load <2 x float>, ptr %.sroa.42.48..sroa_idx, align 4 ; 5 uses
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.dd = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.de = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.dd, <2 x float> %i.ci)
  %i.df = fadd <2 x float> %i.de, %i.cd
  %i.dg = extractelement <2 x float> %i.db, i64 0
  %i.dh = fmul float %i.dg, %i.bh
  %i.di = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dj = insertelement <2 x float> %i.di, float %i.cj, i64 1
  %i.dk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cl, <2 x float> %i.cm, <2 x float> %i.dj)
  %i.dl = insertelement <2 x float> %i.dc, float %i.br, i64 1
  %i.dm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.co, <2 x float> %i.dl, <2 x float> %i.dk) ; 2 uses
  %shift = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.dm, %shift
  %.sroa.3.12.vec.insert.i.i155 = insertelement <2 x float> %foldExtExtBinop, float 0.000000e+00, i64 1
  store <2 x float> %32, ptr %i.cp, align 8
  store float %14, ptr %.sroa.6104.0..sroa_idx, align 8
  store float 0.000000e+00, ptr %.sroa.7105.0..sroa_idx, align 4, !tbaa !10
  store <2 x float> %38, ptr %i.cq, align 8
  store float %20, ptr %.sroa.11108.16..sroa_idx, align 8
  store float 0.000000e+00, ptr %.sroa.12109.16..sroa_idx, align 4, !tbaa !10
  store <2 x float> %44, ptr %39, align 8
  store float %8, ptr %.sroa.16112.32..sroa_idx, align 8
  store float 0.000000e+00, ptr %.sroa.17113.32..sroa_idx, align 4, !tbaa !10
  store <2 x float> %i.df, ptr %i.cr, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i155, ptr %.sroa.20115.48..sroa_idx, align 8, !tbaa !10
  %i.dn = load float, ptr %i.cv, align 8, !tbaa !13, !noalias !21 ; 2 uses
  %i.do = load float, ptr %i.cw, align 8, !tbaa !13, !noalias !21 ; 2 uses
  %i.dp = load float, ptr %i.cx, align 8, !tbaa !13, !noalias !21 ; 2 uses
  %i.dq = load float, ptr %i.cy, align 8, !tbaa !13, !noalias !26
  %i.dr = fneg float %i.dq                        ; 2 uses
  %i.ds = load float, ptr %i.cz, align 4, !tbaa !13, !noalias !26
  %i.dt = fneg float %i.ds                        ; 2 uses
  %i.du = load float, ptr %i.da, align 8, !tbaa !13, !noalias !26
  %i.dv = fneg float %i.du                        ; 2 uses
  %45 = fmul float %i.ad, %i.do
  %46 = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.dn, float %45)
  %47 = tail call noundef float @llvm.fmuladd.f32(float %i.ae, float %i.dp, float %46)
  %i.dw = load <2 x float>, ptr %i.cs, align 8, !tbaa !13, !noalias !21 ; 6 uses
  %i.dx = load <2 x float>, ptr %i.ct, align 8, !tbaa !13, !noalias !21 ; 6 uses
  %i.dy = load <2 x float>, ptr %i.cu, align 8, !tbaa !13, !noalias !21 ; 6 uses
  %i.dz = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x float> %i.dx, %i.ea
  %i.ec = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dw, <2 x float> %i.ed, <2 x float> %i.eb)
  %i.ef = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> %i.eg, <2 x float> %i.ee)
  %48 = extractelement <2 x float> %i.dx, i64 0
  %49 = fmul float %i.ad, %48
  %50 = extractelement <2 x float> %i.dw, i64 0
  %51 = tail call float @llvm.fmuladd.f32(float %i.ac, float %50, float %49)
  %52 = extractelement <2 x float> %i.dy, i64 0
  %53 = tail call noundef float @llvm.fmuladd.f32(float %i.ae, float %52, float %51)
  %54 = extractelement <2 x float> %i.dx, i64 1
  %55 = fmul float %i.ad, %54
  %56 = extractelement <2 x float> %i.dw, i64 1
  %57 = tail call float @llvm.fmuladd.f32(float %i.ac, float %56, float %55)
  %58 = extractelement <2 x float> %i.dy, i64 1
  %59 = tail call noundef float @llvm.fmuladd.f32(float %i.ae, float %58, float %57)
  %i.ei = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = fmul <2 x float> %i.ei, %i.dx
  %i.ek = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dw, <2 x float> %i.ch, <2 x float> %i.ej)
  %i.el = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> %i.dd, <2 x float> %i.ek)
  %i.em = fadd <2 x float> %i.el, %i.eh
  %i.en = insertelement <2 x float> poison, float %i.do, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ep = insertelement <2 x float> %i.db, float %i.dt, i64 1
  %i.eq = fmul <2 x float> %i.eo, %i.ep
  %i.er = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.et = insertelement <2 x float> %i.ce, float %i.dr, i64 1
  %i.eu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.et, <2 x float> %i.eq)
  %i.ev = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ex = insertelement <2 x float> %i.dc, float %i.dv, i64 1
  %i.ey = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ew, <2 x float> %i.ex, <2 x float> %i.eu) ; 2 uses
  %shift152 = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop153 = fadd <2 x float> %i.ey, %shift152
  %.sroa.3.12.vec.insert.i.i39156 = insertelement <2 x float> %foldExtExtBinop153, float 0.000000e+00, i64 1
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 160
  %60 = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %61 = fmul <2 x float> %22, %60
  %62 = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %63 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %26, <2 x float> %62, <2 x float> %61)
  %64 = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %65 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %30, <2 x float> %64, <2 x float> %63)
  store <2 x float> %65, ptr %i.ez, align 8
  %.sroa.682.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store float %53, ptr %.sroa.682.0..sroa_idx, align 8
  %.sroa.783.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 172
  store float 0.000000e+00, ptr %.sroa.783.0..sroa_idx, align 4, !tbaa !10
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 176
  %66 = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %67 = fmul <2 x float> %22, %66
  %68 = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %69 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %26, <2 x float> %68, <2 x float> %67)
  %70 = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %71 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %30, <2 x float> %70, <2 x float> %69)
  store <2 x float> %71, ptr %i.fa, align 8
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store float %59, ptr %.sroa.11.16..sroa_idx, align 8
  %.sroa.1285.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 188
  store float 0.000000e+00, ptr %.sroa.1285.16..sroa_idx, align 4, !tbaa !10
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %73 = fmul <2 x float> %22, %i.eo
  %74 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %26, <2 x float> %i.es, <2 x float> %73)
  %75 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %30, <2 x float> %i.ew, <2 x float> %74)
  store <2 x float> %75, ptr %72, align 8
  %.sroa.1686.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store float %47, ptr %.sroa.1686.32..sroa_idx, align 8
  %.sroa.1787.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 204
  store float 0.000000e+00, ptr %.sroa.1787.32..sroa_idx, align 4, !tbaa !10
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x float> %i.em, ptr %i.fb, align 8
  %.sroa.20.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store <2 x float> %.sroa.3.12.vec.insert.i.i39156, ptr %.sroa.20.48..sroa_idx, align 8, !tbaa !10
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 728
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00>, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 744
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 924
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 980
  store <2 x float> <float 1.000000e+00, float -1.000000e+00>, ptr %i.fe, align 4, !tbaa !13
  store <2 x float> zeroinitializer, ptr %i.ff, align 4, !tbaa !13
  store <2 x float> <float f0xBF490FDB, float f0x3F490FDB>, ptr %i.fg, align 4, !tbaa !13
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
  tail call void @_ZdlPv(ptr noundef nonnull %0) #11
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
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix) #10
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float 1.000000e+00, ptr @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix, align 4, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix, i64 4), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix, i64 20), align 4, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix, i64 24), i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix, i64 40), align 4, !tbaa !13
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix) #10
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

attributes #0 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"branch_weights", i32 1, i32 1048575}
!9 = !{i64 0, i64 16, !10}
!10 = !{!6, !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"vtable pointer", !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"float", !6, i64 0}
!15 = !{!16, !18}
!16 = distinct !{!16, !17, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!17 = distinct !{!17, !"_ZNK11btMatrix3x39transposeEv"}
!18 = distinct !{!18, !19, !"_ZNK11btTransform7inverseEv: argument 0"}
!19 = distinct !{!19, !"_ZNK11btTransform7inverseEv"}
!20 = !{!18}
!21 = !{!22, !24}
!22 = distinct !{!22, !23, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!23 = distinct !{!23, !"_ZNK11btMatrix3x39transposeEv"}
!24 = distinct !{!24, !25, !"_ZNK11btTransform7inverseEv: argument 0"}
!25 = distinct !{!25, !"_ZNK11btTransform7inverseEv"}
!26 = !{!24}
end_hunk_0
