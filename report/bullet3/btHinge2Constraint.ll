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
          to label %bb.d unwind label %bb.h       ; 3 uses

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

_ZN11btTransform11getIdentityEv.exit:             ; preds = %bb.a, %bb.b, %bb.d
  %i.h = load atomic i8, ptr @_ZGVZN11btTransform11getIdentityEvE17identityTransform acquire, align 8
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.i, !prof !9

bb.e:                                             ; preds = %_ZN11btTransform11getIdentityEv.exit
  %i.j = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #13
  %.not.i20 = icmp eq i32 %i.j, 0
  br i1 %.not.i20, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = invoke noundef nonnull align 4 dereferenceable(48) ptr @_ZN11btMatrix3x311getIdentityEv()
          to label %bb.g unwind label %bb.h       ; 3 uses

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZN11btTransform11getIdentityEvE17identityTransform, ptr noundef nonnull align 4 dereferenceable(48) %i.k, i64 16, i1 false), !tbaa.struct !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 48), i8 0, i64 16, i1 false)
  %i.n = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZN11btTransform11getIdentityEvE17identityTransform) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #13
  br label %bb.i

bb.h:                                             ; preds = %bb.c, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #13
  resume { ptr, i32 } %i.o

bb.i:                                             ; preds = %bb.g, %bb.e, %_ZN11btTransform11getIdentityEv.exit
  tail call void @_ZN30btGeneric6DofSpring2ConstraintC2ER11btRigidBodyS1_RK11btTransformS4_11RotateOrder(ptr noundef nonnull align 8 dereferenceable(1484) %0, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr noundef nonnull align 8 dereferenceable(744) %2, ptr noundef nonnull align 4 dereferenceable(64) @_ZZN11btTransform11getIdentityEvE17identityTransform, ptr noundef nonnull align 4 dereferenceable(64) @_ZZN11btTransform11getIdentityEvE17identityTransform, i32 noundef 0)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTV18btHinge2Constraint, i64 16), ptr %0, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1484
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.p, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !21
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1500
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !21
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1516
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !21
  %i.s = load float, ptr %4, align 4, !tbaa !12   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !12 ; 3 uses
  %i.v = fmul float %i.u, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !12 ; 3 uses
  %i.z = tail call noundef float @llvm.fmuladd.f32(float %i.y, float %i.y, float %i.w)
  %i.aa = tail call noundef float @sqrtf(float noundef %i.z) #13
  %i.ab = fdiv float 1.000000e+00, %i.aa          ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.sroa.42.48..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.an = fmul float %i.s, %i.ab                  ; 3 uses
  store float %i.an, ptr %4, align 4, !tbaa !12
  %i.ao = fmul float %i.u, %i.ab                  ; 3 uses
  store float %i.ao, ptr %i.t, align 4, !tbaa !12
  %i.ap = fmul float %i.y, %i.ab                  ; 3 uses
  store float %i.ap, ptr %i.x, align 4, !tbaa !12
  %i.aq = load float, ptr %5, align 4, !tbaa !12  ; 3 uses
  %i.ar = load float, ptr %i.ac, align 4, !tbaa !12 ; 3 uses
  %i.as = fmul float %i.ar, %i.ar
  %i.at = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.aq, float %i.as)
  %i.au = load float, ptr %i.ad, align 4, !tbaa !12 ; 3 uses
  %i.av = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %i.au, float %i.at)
  %i.aw = tail call noundef float @sqrtf(float noundef %i.av) #13
  %i.ax = fdiv float 1.000000e+00, %i.aw          ; 3 uses
  %i.ay = fmul float %i.aq, %i.ax                 ; 3 uses
  store float %i.ay, ptr %5, align 4, !tbaa !12
  %i.az = fmul float %i.ar, %i.ax                 ; 3 uses
  store float %i.az, ptr %i.ac, align 4, !tbaa !12
  %i.ba = fmul float %i.au, %i.ax                 ; 3 uses
  store float %i.ba, ptr %i.ad, align 4, !tbaa !12
  %i.bb = load float, ptr %i.ah, align 8, !tbaa !12, !noalias !24 ; 2 uses
  %i.bc = load float, ptr %i.ai, align 8, !tbaa !12, !noalias !24 ; 2 uses
  %i.bd = load float, ptr %i.aj, align 8, !tbaa !12, !noalias !24 ; 2 uses
  %i.be = load float, ptr %i.ak, align 8, !tbaa !12, !noalias !25
  %i.bf = fneg float %i.be                        ; 3 uses
  %i.bg = load float, ptr %i.al, align 4, !tbaa !12, !noalias !25 ; 2 uses
  %i.bh = fneg float %i.bg                        ; 2 uses
  %i.bi = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.bj = insertelement <4 x float> %i.bi, float %i.ay, i64 1
  %i.bk = insertelement <4 x float> %i.bj, float %i.az, i64 2 ; 2 uses
  %i.bl = insertelement <4 x float> %i.bk, float %i.bg, i64 3
  %i.bm = fneg <4 x float> %i.bl
  %i.bn = load float, ptr %i.am, align 8, !tbaa !12, !noalias !25
  %i.bo = fneg float %i.bn                        ; 2 uses
  %i.bp = insertelement <4 x float> poison, float %i.an, i64 0
  %i.bq = insertelement <4 x float> %i.bp, float %i.ao, i64 1
  %i.br = insertelement <4 x float> %i.bq, float %i.ap, i64 2 ; 2 uses
  %i.bs = shufflevector <4 x float> %i.bk, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.bt = insertelement <4 x float> %i.bs, float %i.bf, i64 3
  %i.bu = load <2 x float>, ptr %i.ae, align 8, !tbaa !12, !noalias !24 ; 3 uses
  %i.bv = load <2 x float>, ptr %i.af, align 8, !tbaa !12, !noalias !24 ; 3 uses
  %i.bw = load <2 x float>, ptr %i.ag, align 8, !tbaa !12, !noalias !24 ; 3 uses
  %i.bx = shufflevector <2 x float> %i.bv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.by = shufflevector <4 x float> %i.br, <4 x float> %i.bx, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bz = fmul <4 x float> %i.by, %i.bm
  %i.ca = shufflevector <4 x float> %i.br, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 poison>
  %i.cb = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.cc = shufflevector <4 x float> %i.ca, <4 x float> %i.cb, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> %i.bt, <4 x float> %i.bz) ; 4 uses
  %i.ce = extractelement <2 x float> %i.bv, i64 1
  %i.cf = fmul float %i.ce, %i.bh
  %i.cg = extractelement <2 x float> %i.bu, i64 1
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.bf, float %i.cf)
  %i.ci = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = shufflevector <4 x float> %i.cd, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.cl = insertelement <2 x float> %i.ck, float %i.ch, i64 1
  %i.cm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.cj, <2 x float> %i.cl)
  %i.cn = load <2 x float>, ptr %3, align 4       ; 5 uses
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cp = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cq = fmul <2 x float> %i.cp, %i.bv
  %i.cr = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %i.bu, <2 x float> %i.cq)
  %i.ct = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = insertelement <2 x float> %i.co, float %i.bh, i64 1
  %i.cw = fmul <2 x float> %i.cu, %i.cv
  %i.cx = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = insertelement <2 x float> %i.cn, float %i.bf, i64 1
  %i.da = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.cz, <2 x float> %i.cw)
  %i.db = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.de = shufflevector <4 x float> %i.bx, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.df = shufflevector <4 x float> %i.cd, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 poison, i32 0, i32 poison, i32 7>
  %i.dg = insertelement <4 x float> %i.df, float %i.az, i64 0
  %i.dh = insertelement <4 x float> %i.dg, float %i.ao, i64 2 ; 6 uses
  %i.di = fmul <4 x float> %i.de, %i.dh
  %i.dj = shufflevector <4 x float> %i.cd, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 poison, i32 2, i32 poison, i32 7>
  %i.dk = insertelement <4 x float> %i.dj, float %i.ay, i64 0
  %i.dl = insertelement <4 x float> %i.dk, float %i.an, i64 2 ; 6 uses
  %i.dm = shufflevector <4 x float> %i.cb, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.dn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.dm, <4 x float> %i.di)
  %i.do = insertelement <4 x float> %i.cd, float 0.000000e+00, i64 3
  %i.dp = insertelement <4 x float> %i.do, float %i.ba, i64 0
  %i.dq = insertelement <4 x float> %i.dp, float %i.ap, i64 2 ; 6 uses
  %i.dr = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.dt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dq, <4 x float> %i.ds, <4 x float> %i.dn)
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dv = shufflevector <4 x float> %i.bx, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.dw = fmul <4 x float> %i.dv, %i.dh
  %i.dx = shufflevector <4 x float> %i.cb, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.dy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.dx, <4 x float> %i.dw)
  %i.dz = shufflevector <4 x float> %i.dr, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ea = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dq, <4 x float> %i.dz, <4 x float> %i.dy)
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ec = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.bc, i64 0
  %i.ed = shufflevector <4 x float> %i.ec, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ee = fmul <4 x float> %i.ed, %i.dh
  %i.ef = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.bb, i64 0
  %i.eg = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.eh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.eg, <4 x float> %i.ee)
  %i.ei = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.bd, i64 0
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ek = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dq, <4 x float> %i.ej, <4 x float> %i.eh)
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.20114.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ex = load <2 x float>, ptr %.sroa.42.48..sroa_idx, align 4 ; 4 uses
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.ez = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.bw, <2 x float> %i.cs)
  %i.fb = insertelement <2 x float> %i.ey, float %i.bo, i64 1
  %i.fc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> %i.fb, <2 x float> %i.da) ; 2 uses
  %i.fd = fadd <2 x float> %i.fa, %i.cm
  %shift = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.fc, %shift
  %.sroa.3.12.vec.insert.i4.i.i154 = insertelement <2 x float> %foldExtExtBinop, float 0.000000e+00, i64 1
  store <4 x float> %i.dt, ptr %i.dd, align 8
  store <4 x float> %i.ea, ptr %i.du, align 8
  store <4 x float> %i.ek, ptr %i.eb, align 8
  store <2 x float> %i.fd, ptr %i.el, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i154, ptr %.sroa.20114.48..sroa_idx, align 8, !tbaa !10
  %i.fe = load float, ptr %i.em, align 8, !tbaa !12, !noalias !26 ; 2 uses
  %i.ff = load float, ptr %i.en, align 8, !tbaa !12, !noalias !26 ; 2 uses
  %i.fg = load float, ptr %i.ep, align 4, !tbaa !12, !noalias !26 ; 2 uses
  %i.fh = load float, ptr %i.eq, align 4, !tbaa !12, !noalias !26 ; 2 uses
  %i.fi = load <2 x float>, ptr %i.eo, align 8, !tbaa !12, !noalias !26 ; 3 uses
  %i.fj = load float, ptr %i.er, align 8, !tbaa !12, !noalias !26 ; 2 uses
  %i.fk = load float, ptr %i.es, align 8, !tbaa !12, !noalias !26 ; 2 uses
  %i.fl = load float, ptr %i.et, align 8, !tbaa !12, !noalias !26 ; 2 uses
  %i.fm = load float, ptr %i.eu, align 8, !tbaa !12, !noalias !27
  %i.fn = fneg float %i.fm                        ; 2 uses
  %i.fo = load float, ptr %i.ev, align 4, !tbaa !12, !noalias !27
  %i.fp = fneg float %i.fo                        ; 2 uses
  %i.fq = load float, ptr %i.ew, align 8, !tbaa !12, !noalias !27
  %i.fr = fneg float %i.fq                        ; 2 uses
  %i.fs = insertelement <2 x float> poison, float %i.ff, i64 0
  %i.ft = insertelement <2 x float> %i.fs, float %i.fh, i64 1 ; 2 uses
  %i.fu = insertelement <2 x float> poison, float %i.fp, i64 0
  %i.fv = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fw = fmul <2 x float> %i.ft, %i.fv
  %i.fx = insertelement <2 x float> poison, float %i.fe, i64 0
  %i.fy = insertelement <2 x float> %i.fx, float %i.fg, i64 1 ; 2 uses
  %i.fz = insertelement <2 x float> poison, float %i.fn, i64 0
  %i.ga = shufflevector <2 x float> %i.fz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> %i.ga, <2 x float> %i.fw)
  %i.gc = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ge = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fi, <2 x float> %i.gd, <2 x float> %i.gb)
  %i.gf = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gg = fmul <2 x float> %i.gf, %i.ft
  %i.gh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %i.fy, <2 x float> %i.gg)
  %i.gi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.fi, <2 x float> %i.gh)
  %i.gj = insertelement <2 x float> poison, float %i.fk, i64 0
end_hunk_0
