Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btHingeConstraint?download=true
inline.NumInlined: 753
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btVector3 = type { [4 x float] }
%class.btQuaternion = type { %class.btQuadWord }
%class.btQuadWord = type { [4 x float] }

$_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif = comdat any

$_ZN17btTypedConstraint23solveConstraintObsoleteER12btSolverBodyS1_f = comdat any

$_ZN17btHingeConstraintD0Ev = comdat any

$_ZNK17btHingeConstraint28calculateSerializeBufferSizeEv = comdat any

$_ZNK17btHingeConstraint9serializeEPvP12btSerializer = comdat any

$_ZNK17btHingeConstraint8getFlagsEv = comdat any

$_ZN17btTypedConstraintD2Ev = comdat any

$_ZN33btHingeAccumulatedAngleConstraintD0Ev = comdat any

$_ZNK11btMatrix3x311getRotationER12btQuaternion = comdat any

$__clang_call_terminate = comdat any

$_ZTI17btTypedConstraint = comdat any

$_ZTS17btTypedConstraint = comdat any

$_ZTI13btTypedObject = comdat any

$_ZTS13btTypedObject = comdat any

@_ZTV17btHingeConstraint = dso_local constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTI17btHingeConstraint, ptr @_ZN17btTypedConstraintD2Ev, ptr @_ZN17btHingeConstraintD0Ev, ptr @_ZN17btHingeConstraint13buildJacobianEv, ptr @_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif, ptr @_ZN17btHingeConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E, ptr @_ZN17btHingeConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E, ptr @_ZN17btTypedConstraint23solveConstraintObsoleteER12btSolverBodyS1_f, ptr @_ZN17btHingeConstraint8setParamEifi, ptr @_ZNK17btHingeConstraint8getParamEii, ptr @_ZNK17btHingeConstraint28calculateSerializeBufferSizeEv, ptr @_ZNK17btHingeConstraint9serializeEPvP12btSerializer, ptr @_ZNK17btHingeConstraint8getFlagsEv] }, align 8
@_ZTI17btTypedConstraint = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTS17btTypedConstraint, i32 0, i32 1, ptr @_ZTI13btTypedObject, i64 2050 }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTS17btTypedConstraint = linkonce_odr dso_local constant [20 x i8] c"17btTypedConstraint\00", comdat, align 1
@_ZTI13btTypedObject = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13btTypedObject }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS13btTypedObject = linkonce_odr dso_local constant [16 x i8] c"13btTypedObject\00", comdat, align 1
@_ZTI17btHingeConstraint = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17btHingeConstraint, ptr @_ZTI17btTypedConstraint }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS17btHingeConstraint = dso_local constant [20 x i8] c"17btHingeConstraint\00", align 1
@_ZTV33btHingeAccumulatedAngleConstraint = dso_local local_unnamed_addr constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTI33btHingeAccumulatedAngleConstraint, ptr @_ZN17btTypedConstraintD2Ev, ptr @_ZN33btHingeAccumulatedAngleConstraintD0Ev, ptr @_ZN17btHingeConstraint13buildJacobianEv, ptr @_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif, ptr @_ZN33btHingeAccumulatedAngleConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E, ptr @_ZN17btHingeConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E, ptr @_ZN17btTypedConstraint23solveConstraintObsoleteER12btSolverBodyS1_f, ptr @_ZN17btHingeConstraint8setParamEifi, ptr @_ZNK17btHingeConstraint8getParamEii, ptr @_ZNK17btHingeConstraint28calculateSerializeBufferSizeEv, ptr @_ZNK17btHingeConstraint9serializeEPvP12btSerializer, ptr @_ZNK17btHingeConstraint8getFlagsEv] }, align 8
@_ZTI33btHingeAccumulatedAngleConstraint = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS33btHingeAccumulatedAngleConstraint, ptr @_ZTI17btHingeConstraint }, align 8
@_ZTS33btHingeAccumulatedAngleConstraint = dso_local constant [36 x i8] c"33btHingeAccumulatedAngleConstraint\00", align 1
@.str = private unnamed_addr constant [27 x i8] c"btHingeConstraintFloatData\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN17btHingeConstraintC1ER11btRigidBodyS1_RK9btVector3S4_S4_S4_b = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr, i1), ptr @_ZN17btHingeConstraintC2ER11btRigidBodyS1_RK9btVector3S4_S4_S4_b
@_ZN17btHingeConstraintC1ER11btRigidBodyRK9btVector3S4_b = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i1), ptr @_ZN17btHingeConstraintC2ER11btRigidBodyRK9btVector3S4_b
@_ZN17btHingeConstraintC1ER11btRigidBodyS1_RK11btTransformS4_b = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i1), ptr @_ZN17btHingeConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b
@_ZN17btHingeConstraintC1ER11btRigidBodyRK11btTransformb = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN17btHingeConstraintC2ER11btRigidBodyRK11btTransformb

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17btHingeConstraintC2ER11btRigidBodyS1_RK9btVector3S4_S4_S4_b(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr noundef nonnull align 8 dereferenceable(744) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %6, i1 noundef zeroext %7) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.preheader.preheader:
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr noundef nonnull align 8 dereferenceable(744) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV17btHingeConstraint, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = zext i1 %7 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 712
  store <4 x float> <float 0.000000e+00, float -1.000000e+00, float f0x3F666666, float 3.000000e-01>, ptr %i.c, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 728
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 732
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.e, i8 0, i64 9, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 760
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.f, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 764
  store i8 %i.a, ptr %i.g, align 4, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 772
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.h, i8 0, i64 20, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !27
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load float, ptr %i.j, align 8, !tbaa !11 ; 3 uses
  %i.n = load float, ptr %i.k, align 8, !tbaa !11 ; 3 uses
  %i.o = load float, ptr %i.l, align 8, !tbaa !11 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load <2 x float>, ptr %5, align 4, !tbaa !11 ; 5 uses
  %i.s = load <2 x float>, ptr %i.p, align 4, !tbaa !11 ; 4 uses
  %i.t = extractelement <2 x float> %i.r, i64 1   ; 2 uses
  %i.u = fmul float %i.n, %i.t
  %i.v = extractelement <2 x float> %i.r, i64 0   ; 2 uses
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float %i.m, float %i.u)
  %i.x = extractelement <2 x float> %i.s, i64 1
  %i.y = tail call noundef float @llvm.fmuladd.f32(float %i.x, float %i.o, float %i.w) ; 2 uses
  %i.z = fcmp ult float %i.y, f0x3F7FFFFE
  br i1 %i.z, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.preheader.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  %8 = load float, ptr %i.aa, align 8, !tbaa !11
  %9 = load float, ptr %i.ab, align 8, !tbaa !11
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !11
  %10 = insertelement <2 x float> poison, float %8, i64 0
  %i.ae = insertelement <2 x float> %10, float %9, i64 1
  %i.af = fneg <2 x float> %i.ae
  %i.ag = fneg float %i.ad
  %.sroa.3.12.vec.insert.i63 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ag, i64 0
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 44
  %11 = load float, ptr %i.ah, align 4, !tbaa !11
  %.sroa.0.0.vec.insert.i66 = insertelement <2 x float> poison, float %11, i64 0
  %i.ak = load float, ptr %i.ai, align 4, !tbaa !11
  %.sroa.0.4.vec.insert.i67 = insertelement <2 x float> %.sroa.0.0.vec.insert.i66, float %i.ak, i64 1
  %i.al = load float, ptr %i.aj, align 4, !tbaa !11
  %.sroa.3.12.vec.insert.i68 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.al, i64 0
  br label %bb.e

bb.b:                                             ; preds = %.preheader.preheader
  %i.am = fcmp ugt float %i.y, f0xBF7FFFFE
  br i1 %i.am, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %12 = load float, ptr %i.an, align 8, !tbaa !11
  %.sroa.0.0.vec.insert.i71 = insertelement <2 x float> poison, float %12, i64 0
  %i.aq = load float, ptr %i.ao, align 8, !tbaa !11
  %.sroa.0.4.vec.insert.i72 = insertelement <2 x float> %.sroa.0.0.vec.insert.i71, float %i.aq, i64 1
  %i.ar = load float, ptr %i.ap, align 8, !tbaa !11
  %.sroa.3.12.vec.insert.i73 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ar, i64 0
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 12
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 44
  %14 = load float, ptr %i.as, align 4, !tbaa !11
  %.sroa.0.0.vec.insert.i76 = insertelement <2 x float> poison, float %14, i64 0
  %15 = load float, ptr %13, align 4, !tbaa !11
  %.sroa.0.4.vec.insert.i77 = insertelement <2 x float> %.sroa.0.0.vec.insert.i76, float %15, i64 1
  %i.au = load float, ptr %i.at, align 4, !tbaa !11
  %.sroa.3.12.vec.insert.i78 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.au, i64 0
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.av = insertelement <2 x float> poison, float %i.m, i64 0
  %i.aw = insertelement <2 x float> %i.av, float %i.n, i64 1 ; 2 uses
  %i.ax = fneg <2 x float> %i.aw
  %i.ay = insertelement <2 x float> poison, float %i.o, i64 0
  %i.az = insertelement <2 x float> %i.ay, float %i.m, i64 1
  %i.ba = fneg <2 x float> %i.az
  %i.bb = fneg <2 x float> %i.s
  %i.bc = fmul <2 x float> %i.r, %i.ba
  %i.bd = fmul <2 x float> %i.s, %i.ax
  %i.be = shufflevector <2 x float> %i.s, <2 x float> %i.r, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.aw, <2 x float> %i.bc) ; 4 uses
  %i.bg = insertelement <2 x float> poison, float %i.n, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.o, i64 1
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.bh, <2 x float> %i.bd) ; 3 uses
  %i.bj = shufflevector <2 x float> %i.bf, <2 x float> %i.bi, <2 x i32> <i32 3, i32 0>
  %i.bk = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.bf, <2 x i32> <i32 3, i32 1>
  %i.bl = fmul <2 x float> %i.bi, %i.bb
  %i.bm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.be, <2 x float> %i.bl)
  %i.bn = fneg float %i.v
  %i.bo = extractelement <2 x float> %i.bf, i64 0
  %i.bp = fmul float %i.bo, %i.bn
  %i.bq = extractelement <2 x float> %i.bi, i64 1
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.t, float %i.bp)
  %.sroa.3.12.vec.insert.i88 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.br, i64 0
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.15.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i88, %bb.d ], [ %.sroa.3.12.vec.insert.i73, %bb.c ], [ %.sroa.3.12.vec.insert.i63, %bb.a ] ; 3 uses
  %.sroa.0119.0 = phi <2 x float> [ %i.bm, %bb.d ], [ %.sroa.0.4.vec.insert.i72, %bb.c ], [ %i.af, %bb.a ] ; 3 uses
  %.sroa.10.0 = phi <2 x float> [ %i.bk, %bb.d ], [ %.sroa.3.12.vec.insert.i78, %bb.c ], [ %.sroa.3.12.vec.insert.i68, %bb.a ]
  %.sroa.0112.0 = phi <2 x float> [ %i.bj, %bb.d ], [ %.sroa.0.4.vec.insert.i77, %bb.c ], [ %.sroa.0.4.vec.insert.i67, %bb.a ] ; 2 uses
  %.sroa.0119.0.vec.extract123 = extractelement <2 x float> %.sroa.0119.0, i64 0 ; 3 uses
  store float %.sroa.0119.0.vec.extract123, ptr %i.b, align 8, !tbaa !11
  %.sroa.0112.0.vec.extract114 = extractelement <2 x float> %.sroa.0112.0, i64 0
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 580
  store float %.sroa.0112.0.vec.extract114, ptr %i.bs, align 4, !tbaa !11
  %i.bt = load float, ptr %5, align 4, !tbaa !11
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 584
  store float %i.bt, ptr %i.bu, align 8, !tbaa !11
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 588
  store float 0.000000e+00, ptr %i.bv, align 4, !tbaa !11
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 592
  %.sroa.0119.4.vec.extract129 = extractelement <2 x float> %.sroa.0119.0, i64 1 ; 4 uses
  store float %.sroa.0119.4.vec.extract129, ptr %i.bw, align 8, !tbaa !11
  %.sroa.0112.4.vec.extract116 = extractelement <2 x float> %.sroa.0112.0, i64 1
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 596
  store float %.sroa.0112.4.vec.extract116, ptr %i.bx, align 4, !tbaa !11
  %i.by = load float, ptr %i.p, align 4, !tbaa !11
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 600
  store float %i.by, ptr %i.bz, align 8, !tbaa !11
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 604
  store float 0.000000e+00, ptr %i.ca, align 4, !tbaa !11
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 608
  %.sroa.15.8.vec.extract135 = extractelement <2 x float> %.sroa.15.0, i64 0 ; 3 uses
  store float %.sroa.15.8.vec.extract135, ptr %i.cb, align 8, !tbaa !11
  %.sroa.10.8.vec.extract118 = extractelement <2 x float> %.sroa.10.0, i64 0
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 612
  store float %.sroa.10.8.vec.extract118, ptr %i.cc, align 4, !tbaa !11
  %i.cd = load float, ptr %i.q, align 4, !tbaa !11
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 616
  store float %i.cd, ptr %i.ce, align 8, !tbaa !11
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 620
  store float 0.000000e+00, ptr %i.cf, align 4, !tbaa !11
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.ch = load <2 x float>, ptr %i.p, align 4, !tbaa !11 ; 7 uses
  %i.ci = load <2 x float>, ptr %i.cg, align 4, !tbaa !11 ; 6 uses
  %i.cj = load float, ptr %6, align 4, !tbaa !11  ; 5 uses
  %i.ck = load float, ptr %5, align 4, !tbaa !11  ; 6 uses
  %i.cl = extractelement <2 x float> %i.ch, i64 0 ; 5 uses
  %i.cm = extractelement <2 x float> %i.ci, i64 0 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.ch, %i.ci
  %i.cn = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.co = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.cj, float %i.cn)
  %i.cp = extractelement <2 x float> %i.ch, i64 1 ; 5 uses
  %i.cq = extractelement <2 x float> %i.ci, i64 1 ; 2 uses
  %i.cr = tail call noundef float @llvm.fmuladd.f32(float %i.cp, float %i.cq, float %i.co) ; 2 uses
  %i.cs = fcmp olt float %i.cr, f0xBF7FFFFE
  br i1 %i.cs, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ct = tail call noundef float @llvm.fabs.f32(float %i.cp)
  %i.cu = fcmp ogt float %i.ct, f0x3F3504F3
  br i1 %i.cu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cv = fmul nnan float %i.cp, %i.cp
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.cl, float %i.cv)
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.cw)
  %i.cx = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.cy = fneg float %i.cp
  %i.cz = fmul float %i.cx, %i.cy
  %i.da = fmul float %i.cl, %i.cx
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i

bb.h:                                             ; preds = %bb.f
  %foldExtExtBinop140 = fmul <2 x float> %i.ch, %i.ch
  %i.db = extractelement <2 x float> %foldExtExtBinop140, i64 0
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.ck, float %i.db)
  %sqrt43.i.i = tail call float @llvm.sqrt.f32(float %i.dc)
  %i.dd = fdiv float 1.000000e+00, %sqrt43.i.i    ; 2 uses
  %i.de = fneg float %i.cl
  %i.df = fmul float %i.dd, %i.de
  %i.dg = fmul float %i.ck, %i.dd
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i

_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i: ; preds = %bb.h, %bb.g
  %.sroa.016.0.i = phi float [ 0.000000e+00, %bb.g ], [ %i.df, %bb.h ]
  %.sroa.618.0.i = phi float [ %i.cz, %bb.g ], [ %i.dg, %bb.h ]
  %.sroa.10.0.i = phi float [ %i.da, %bb.g ], [ 0.000000e+00, %bb.h ]
  %.sroa.022.0.vec.insert.i = insertelement <2 x float> poison, float %.sroa.016.0.i, i64 0
  %.sroa.022.4.vec.insert.i = insertelement <2 x float> %.sroa.022.0.vec.insert.i, float %.sroa.618.0.i, i64 1
  %.sroa.528.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.10.0.i, i64 0
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.dh = fneg float %i.cj
  %i.di = fmul float %i.cl, %i.dh
  %i.dj = fneg <2 x float> %i.ci
  %i.dk = fadd float %i.cr, 1.000000e+00
  %i.dl = fmul float %i.dk, 2.000000e+00
  %i.dm = tail call noundef float @sqrtf(float noundef %i.dl) #20 ; 2 uses
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.cm, float %i.di)
  %i.do = fdiv float 1.000000e+00, %i.dm          ; 2 uses
  %i.dp = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dq = insertelement <2 x float> %i.dp, float %i.ck, i64 1
  %i.dr = fmul <2 x float> %i.dq, %i.dj
  %i.ds = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dt = insertelement <2 x float> %i.ds, float %i.cj, i64 1
  %i.du = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> %i.dt, <2 x float> %i.dr)
  %i.dv = insertelement <2 x float> poison, float %i.do, i64 0
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = fmul <2 x float> %i.du, %i.dw
  %i.dy = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.dz = insertelement <2 x float> %i.dy, float %i.dm, i64 1
  %i.ea = insertelement <2 x float> <float poison, float 5.000000e-01>, float %i.do, i64 0
  %i.eb = fmul <2 x float> %i.dz, %i.ea
  br label %bb.j

bb.j:                                             ; preds = %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i, %bb.i
  %.sroa.022.0.i = phi <2 x float> [ %.sroa.022.4.vec.insert.i, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i ], [ %i.dx, %bb.i ] ; 4 uses
  %.sroa.528.0.i = phi <2 x float> [ %.sroa.528.12.vec.insert.i, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i ], [ %i.eb, %bb.i ] ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 640
  %.sroa.6109.12.vec.extract = extractelement <2 x float> %.sroa.528.0.i, i64 1 ; 3 uses
  %.sroa.0108.4.vec.extract = extractelement <2 x float> %.sroa.022.0.i, i64 1 ; 2 uses
  %.sroa.6109.8.vec.extract = extractelement <2 x float> %.sroa.528.0.i, i64 0
  %i.ee = fneg float %.sroa.6109.8.vec.extract    ; 4 uses
  %.sroa.0108.0.vec.extract = extractelement <2 x float> %.sroa.022.0.i, i64 0 ; 2 uses
  %i.ef = fneg float %.sroa.0108.4.vec.extract    ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 688
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eg, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !27
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ek = fneg float %.sroa.0119.4.vec.extract129
  %i.el = shufflevector <2 x float> %.sroa.15.0, <2 x float> %.sroa.022.0.i, <4 x i32> <i32 0, i32 poison, i32 2, i32 3>
  %i.em = insertelement <4 x float> %i.el, float %.sroa.0119.0.vec.extract123, i64 1
  %i.en = shufflevector <2 x float> %.sroa.022.0.i, <2 x float> %.sroa.528.0.i, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.eo = insertelement <4 x float> %i.en, float %.sroa.0119.4.vec.extract129, i64 2
  %i.ep = insertelement <4 x float> %i.eo, float %i.ek, i64 3
  %i.eq = fmul <4 x float> %i.em, %i.ep
  %i.er = fneg float %.sroa.0108.0.vec.extract    ; 4 uses
  %i.es = shufflevector <2 x float> %.sroa.528.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.et = insertelement <2 x float> %i.es, float %i.er, i64 1
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ev = shufflevector <2 x float> %.sroa.0119.0, <2 x float> %.sroa.15.0, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ew = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> %i.ev, <4 x float> %i.eq) ; 4 uses
  %i.ex = extractelement <4 x float> %i.ew, i64 0
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.ee, float %.sroa.0119.4.vec.extract129, float %i.ex) ; 3 uses
  %i.ez = extractelement <4 x float> %i.ew, i64 1
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.er, float %.sroa.15.8.vec.extract135, float %i.ez) ; 3 uses
  %i.fb = extractelement <4 x float> %i.ew, i64 2
  %i.fc = tail call float @llvm.fmuladd.f32(float %i.ef, float %.sroa.0119.0.vec.extract123, float %i.fb) ; 3 uses
  %i.fd = extractelement <4 x float> %i.ew, i64 3
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.ee, float %.sroa.15.8.vec.extract135, float %i.fd) ; 3 uses
  %i.ff = fmul float %.sroa.6109.12.vec.extract, %i.ey
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.fe, float %i.er, float %i.ff)
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.fa, float %i.ee, float %i.fg)
  %i.fi = tail call float @llvm.fmuladd.f32(float %i.fc, float %.sroa.0108.4.vec.extract, float %i.fh) ; 3 uses
  %i.fj = fmul float %.sroa.6109.12.vec.extract, %i.fa
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.fe, float %i.ef, float %i.fj)
  %i.fl = fmul float %.sroa.6109.12.vec.extract, %i.fc
  %i.fm = tail call float @llvm.fmuladd.f32(float %i.fe, float %i.ee, float %i.fl)
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.ey, float %i.ef, float %i.fm)
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.fa, float %.sroa.0108.0.vec.extract, float %i.fn) ; 3 uses
  %i.fp = fneg float %i.fo
  %i.fq = fmul float %i.cj, %i.fp
  %i.fr = tail call float @llvm.fmuladd.f32(float %i.fc, float %i.er, float %i.fk)
  %i.fs = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.ft = insertelement <2 x float> %i.fs, float %i.fi, i64 1
  %i.fu = shufflevector <2 x float> %.sroa.528.0.i, <2 x float> %i.ci, <2 x i32> <i32 0, i32 3>
  %i.fv = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.fw = insertelement <2 x float> %i.fv, float %i.fq, i64 1
  %i.fx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.fu, <2 x float> %i.fw) ; 2 uses
  %i.fy = extractelement <2 x float> %i.fx, i64 0 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBody

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17btHingeConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr noundef nonnull align 8 dereferenceable(744) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4, i1 noundef zeroext %5) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
.preheader.preheader:
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr noundef nonnull align 8 dereferenceable(744) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV17btHingeConstraint, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(64) %3, i64 16, i1 false), !tbaa.struct !27
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 592
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !27
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 608
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 4 dereferenceable(64) %4, i64 16, i1 false), !tbaa.struct !27
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 656
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !27
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 672
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !27
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !27
  %i.o = zext i1 %5 to i8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 712
  store <4 x float> <float 0.000000e+00, float -1.000000e+00, float f0x3F666666, float 3.000000e-01>, ptr %i.p, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 728
  store float 1.000000e+00, ptr %i.q, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 732
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.r, i8 0, i64 9, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 760
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.s, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 764
  store i8 %i.o, ptr %i.t, align 4, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 772
  %i.v = select i1 %5, float -1.000000e+00, float 1.000000e+00
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 756
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.u, i8 0, i64 20, i1 false)
  store float %i.v, ptr %i.w, align 4, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17btHingeConstraintC2ER11btRigidBodyRK11btTransformb(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.preheader.preheader:
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBody(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(744) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV17btHingeConstraint, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = zext i1 %3 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !27
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 592
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !27
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 608
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 656
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !27
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 672
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !27
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !27
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 712
  store <4 x float> <float 0.000000e+00, float -1.000000e+00, float f0x3F666666, float 3.000000e-01>, ptr %i.m, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 728
  store float 1.000000e+00, ptr %i.n, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 732
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.o, i8 0, i64 9, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 760
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.p, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 764
  store i8 %i.a, ptr %i.q, align 4, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 772
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.r, i8 0, i64 20, i1 false)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !30, !nonnull !31, !align !32 ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.x = load float, ptr %i.g, align 8, !tbaa !11 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.z = load float, ptr %i.y, align 4, !tbaa !11 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !11 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.af = load float, ptr %i.ae, align 8, !tbaa !11
  %i.ag = load float, ptr %i.w, align 8, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 44
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !11
  %i.aj = fmul float %i.z, %i.ai
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.x, float %i.ag, float %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.am = load float, ptr %i.al, align 8, !tbaa !11
  %i.an = tail call noundef float @llvm.fmuladd.f32(float %i.ab, float %i.am, float %i.ak)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.ap = load <2 x float>, ptr %i.u, align 8, !tbaa !11 ; 2 uses
  %i.aq = load <2 x float>, ptr %i.v, align 8, !tbaa !11 ; 2 uses
  %i.ar = insertelement <2 x float> poison, float %i.z, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = shufflevector <2 x float> %i.ap, <2 x float> %i.aq, <2 x i32> <i32 1, i32 3>
  %i.au = fmul <2 x float> %i.as, %i.at
  %i.av = insertelement <2 x float> poison, float %i.x, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = shufflevector <2 x float> %i.ap, <2 x float> %i.aq, <2 x i32> <i32 0, i32 2>
  %i.ay = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.ax, <2 x float> %i.au)
  %i.az = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %i.af, i64 1
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.bc, <2 x float> %i.ay)
  %i.be = load <2 x float>, ptr %i.ao, align 8, !tbaa !11
  %i.bf = fadd <2 x float> %i.bd, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !11
  %i.bi = fadd float %i.an, %i.bh
  %.sroa.3.12.vec.insert.i4.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bi, i64 0
  store <2 x float> %i.bf, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 696
  store <2 x float> %.sroa.3.12.vec.insert.i4.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !28
  %i.bj = select i1 %3, float -1.000000e+00, float 1.000000e+00
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 756
  store float %i.bj, ptr %i.bk, align 4, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17btHingeConstraint13buildJacobianEv(ptr noundef nonnull align 8 dereferenceable(792) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca [3 x %class.btVector3], align 16    ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 762
  %i.b = load i8, ptr %i.a, align 2, !tbaa !33, !range !34, !noundef !31
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float 0.000000e+00, ptr %i.d, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 768
  store float 0.000000e+00, ptr %i.e, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.g = load i8, ptr %i.f, align 8, !tbaa !37, !range !34, !noundef !31
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30, !nonnull !31, !align !32 ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.p = load <4 x float>, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.r = load float, ptr %i.q, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.t = load float, ptr %i.s, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.v = load float, ptr %i.u, align 8, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  %i.y = load float, ptr %i.x, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !38, !nonnull !31, !align !32 ; 12 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 692
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !11 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  %i.al = load float, ptr %i.ak, align 8, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 2 uses
  %i.an = load float, ptr %i.am, align 8, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 56 ; 2 uses
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 60 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.as = load <2 x float>, ptr %i.l, align 8, !tbaa !11 ; 2 uses
  %i.at = load <2 x float>, ptr %i.k, align 8, !tbaa !11 ; 2 uses
  %i.au = load <2 x float>, ptr %i.m, align 8, !tbaa !11 ; 2 uses
  %i.av = load <2 x float>, ptr %i.n, align 8, !tbaa !11
  %i.aw = load <2 x float>, ptr %i.w, align 8, !tbaa !11
  %i.ax = load <2 x float>, ptr %i.ac, align 8, !tbaa !11 ; 3 uses
  %2 = load float, ptr %i.af, align 4, !tbaa !11
  %i.ay = load <2 x float>, ptr %i.ad, align 8, !tbaa !11
  %i.az = load <2 x float>, ptr %i.aq, align 4, !tbaa !11
  %i.ba = load float, ptr %i.ar, align 8, !tbaa !11
  %i.bb = shufflevector <2 x float> %i.as, <2 x float> %i.ax, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.bc = shufflevector <2 x float> %i.at, <2 x float> %i.au, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.bd = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.be = shufflevector <4 x float> %i.bc, <4 x float> %i.bd, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.bf = shufflevector <2 x float> %i.ay, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bg = shufflevector <4 x float> %i.be, <4 x float> %i.bf, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bh = fmul <4 x float> %i.bb, %i.bg
  %i.bi = shufflevector <2 x float> %i.as, <2 x float> %i.ax, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.bj = shufflevector <2 x float> %i.at, <2 x float> %i.au, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> %i.bd, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> %i.bf, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bi, <4 x float> %i.bl, <4 x float> %i.bh)
  %i.bn = insertelement <4 x float> %i.p, float %i.ah, i64 1
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bp = insertelement <4 x float> poison, float %i.r, i64 0
  %i.bq = insertelement <4 x float> %i.bp, float %i.t, i64 1
  %i.br = insertelement <4 x float> %i.bq, float %i.v, i64 2
  %i.bs = insertelement <4 x float> %i.br, float %i.al, i64 3
  %i.bt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bo, <4 x float> %i.bs, <4 x float> %i.bm)
  %i.bu = insertelement <4 x float> poison, float %i.y, i64 2
  %i.bv = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bw = shufflevector <4 x float> %i.bu, <4 x float> %i.bv, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %i.bx = shufflevector <2 x float> %i.aw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> %i.bw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bz = fadd <4 x float> %i.bt, %i.by           ; 4 uses
  %shift = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop = fsub <4 x float> %shift, %i.bz
  %i.ca = extractelement <4 x float> %foldExtExtBinop, i64 1 ; 3 uses
  %i.cb = load <2 x float>, ptr %i.ab, align 8, !tbaa !11 ; 2 uses
  %i.cc = load <2 x float>, ptr %i.ae, align 8, !tbaa !11 ; 2 uses
  %3 = insertelement <2 x float> poison, float %2, i64 0
  %i.cd = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = shufflevector <2 x float> %i.cb, <2 x float> %i.cc, <2 x i32> <i32 1, i32 3>
  %i.cf = fmul <2 x float> %i.cd, %i.ce
  %i.cg = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = shufflevector <2 x float> %i.cb, <2 x float> %i.cc, <2 x i32> <i32 0, i32 2>
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.ch, <2 x float> %i.cf)
  %i.cj = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.cm = insertelement <2 x float> %i.cl, float %i.an, i64 1
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.cm, <2 x float> %i.ci)
  %i.co = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.cp = insertelement <2 x float> %i.co, float %i.ba, i64 1
  %i.cq = fadd <2 x float> %i.cn, %i.cp           ; 3 uses
  %i.cr = shufflevector <4 x float> %i.bz, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.cs = fsub <2 x float> %i.cq, %i.cr           ; 3 uses
  %i.ct = fmul float %i.ca, %i.ca
  %i.cu = extractelement <2 x float> %i.cs, i64 0 ; 2 uses
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.cu, float %i.ct)
  %i.cw = extractelement <2 x float> %i.cs, i64 1 ; 2 uses
  %i.cx = tail call noundef float @llvm.fmuladd.f32(float %i.cw, float %i.cw, float %i.cv) ; 2 uses
  %i.cy = fcmp ogt float %i.cx, f0x34000000
  br i1 %i.cy, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.cx)
  %i.cz = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.da = fmul float %i.ca, %i.cz                 ; 2 uses
  %i.db = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = fmul <2 x float> %i.cs, %i.dc           ; 5 uses
  %i.de = extractelement <2 x float> %i.dd, i64 1
  %i.df = extractelement <2 x float> %i.dd, i64 0
  %.sroa.0.4.vec.insert.i11 = insertelement <2 x float> %i.dd, float %i.da, i64 1
  %.sroa.8.8.vec.insert.i = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.dd, <2 x i32> <i32 3, i32 1>
  store <2 x float> %.sroa.0.4.vec.insert.i11, ptr %1, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x float> %.sroa.8.8.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !28
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %1, align 16, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.dg = phi float [ 1.000000e+00, %bb.e ], [ %i.df, %bb.d ] ; 4 uses
  %i.dh = phi float [ 0.000000e+00, %bb.e ], [ %i.da, %bb.d ] ; 6 uses
  %i.di = phi float [ 0.000000e+00, %bb.e ], [ %i.de, %bb.d ] ; 5 uses
  %i.dj = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %bb.e ], [ %i.dd, %bb.d ]
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dm = tail call noundef float @llvm.fabs.f32(float %i.di)
  %i.dn = fcmp ogt float %i.dm, f0x3F3504F3
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 24
  br i1 %i.dn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dp = fmul nnan float %i.di, %i.di
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.dh, float %i.dp) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.dq)
  %i.dr = fdiv float 1.000000e+00, %sqrt.i        ; 3 uses
  %i.ds = fneg <2 x float> %i.dj                  ; 2 uses
  %i.dt = extractelement <2 x float> %i.ds, i64 1
  %i.du = fmul float %i.dr, %i.dt                 ; 2 uses
  %i.dv = fmul float %i.dh, %i.dr                 ; 2 uses
  %i.dw = fmul float %i.dq, %i.dr
  %i.dx = extractelement <2 x float> %i.ds, i64 0
  %i.dy = fmul float %i.dv, %i.dx
  %i.dz = fmul float %i.du, %i.dg
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit

bb.h:                                             ; preds = %bb.f
  %i.ea = fmul float %i.dh, %i.dh
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.dg, float %i.ea) ; 2 uses
  %sqrt43.i = tail call float @llvm.sqrt.f32(float %i.eb)
  %i.ec = fdiv float 1.000000e+00, %sqrt43.i      ; 3 uses
  %i.ed = fneg float %i.dh
  %i.ee = fmul float %i.ec, %i.ed                 ; 2 uses
  %i.ef = fmul float %i.dg, %i.ec                 ; 2 uses
  %i.eg = fneg float %i.di
  %i.eh = fmul float %i.ef, %i.eg
  %i.ei = fmul float %i.di, %i.ee
  %i.ej = fmul float %i.eb, %i.ec
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit

_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit:   ; preds = %bb.g, %bb.h
  %.sink275 = phi float [ 0.000000e+00, %bb.g ], [ %i.ee, %bb.h ]
  %.sink274 = phi float [ %i.du, %bb.g ], [ %i.ef, %bb.h ]
  %.sink273 = phi float [ %i.dv, %bb.g ], [ 0.000000e+00, %bb.h ]
  %.sink272 = phi float [ %i.dw, %bb.g ], [ %i.eh, %bb.h ]
  %.sink = phi float [ %i.dy, %bb.g ], [ %i.ei, %bb.h ]
  %.sink.i = phi float [ %i.dz, %bb.g ], [ %i.ej, %bb.h ]
  store float %.sink275, ptr %i.dk, align 16, !tbaa !11
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float %.sink274, ptr %i.ek, align 4, !tbaa !11
  store float %.sink273, ptr %i.do, align 8, !tbaa !11
  store float %.sink272, ptr %i.dl, align 16, !tbaa !11
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 36
  store float %.sink, ptr %i.el, align 4, !tbaa !11
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %.sink.i, ptr %i.em, align 8, !tbaa !11
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.eo = getelementptr inbounds nuw i8, ptr %i.j, i64 504
  %i.ep = getelementptr inbounds nuw i8, ptr %i.j, i64 452
  %i.eq = getelementptr inbounds nuw i8, ptr %i.aa, i64 504
  %i.er = getelementptr inbounds nuw i8, ptr %i.aa, i64 452
  %i.es = getelementptr inbounds nuw i8, ptr %i.j, i64 512
  %i.et = getelementptr inbounds nuw i8, ptr %i.aa, i64 512
  %i.eu = extractelement <2 x float> %i.cq, i64 0
  %i.ev = extractelement <2 x float> %i.cq, i64 1
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.k

bb.j:                                             ; preds = %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit, %bb.j
  %indvars.iv = phi i64 [ 0, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [84 x i8], ptr %i.en, i64 %indvars.iv ; 13 uses
  %i.ex = load float, ptr %i.q, align 8, !tbaa !11, !noalias !39
  %i.ey = load float, ptr %i.s, align 8, !tbaa !11, !noalias !39
  %i.ez = load float, ptr %i.u, align 8, !tbaa !11, !noalias !39
  %i.fa = load float, ptr %i.ai, align 8, !tbaa !11, !noalias !42
  %i.fb = load float, ptr %i.ak, align 8, !tbaa !11, !noalias !42
  %i.fc = load float, ptr %i.am, align 8, !tbaa !11, !noalias !42
  %i.fd = load float, ptr %i.x, align 8, !tbaa !11
  %i.fe = load float, ptr %i.ao, align 8, !tbaa !11
  %i.ff = fsub float %i.eu, %i.fe                 ; 2 uses
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv
  %i.fh = load float, ptr %i.ep, align 4, !tbaa !45
  %i.fi = load float, ptr %i.er, align 4, !tbaa !45
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ew, i64 48
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ew, i64 64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.fp = load <2 x float>, ptr %i.k, align 8, !tbaa !11, !noalias !39
  %i.fq = load <2 x float>, ptr %i.m, align 8, !tbaa !11, !noalias !39
  %i.fr = load <2 x float>, ptr %i.n, align 8, !tbaa !11, !noalias !39
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.fs = load <2 x float>, ptr %i.ab, align 8, !tbaa !11, !noalias !42
  %i.ft = load <2 x float>, ptr %i.ad, align 8, !tbaa !11, !noalias !42
  %i.fu = load <2 x float>, ptr %i.ae, align 8, !tbaa !11, !noalias !42
  %i.fv = load <2 x float>, ptr %i.w, align 8, !tbaa !11
  %i.fw = load <2 x float>, ptr %i.aq, align 4, !tbaa !11
  %i.fx = load float, ptr %i.ar, align 8, !tbaa !11
  %i.fy = insertelement <4 x float> poison, float %i.fd, i64 2
  %i.fz = shufflevector <2 x float> %i.fw, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ga = shufflevector <4 x float> %i.fy, <4 x float> %i.fz, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %i.gb = shufflevector <2 x float> %i.fv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> %i.ga, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gd = fsub <4 x float> %i.bz, %i.gc           ; 3 uses
  %i.ge = fsub float %i.ev, %i.fx                 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %i.ew, ptr noundef nonnull align 16 dereferenceable(16) %i.fg, i64 16, i1 false), !tbaa.struct !27
  %i.gf = load float, ptr %i.fn, align 4, !tbaa !11 ; 3 uses
  %i.gg = load <2 x float>, ptr %i.ew, align 4, !tbaa !11 ; 2 uses
  %i.gh = load float, ptr %i.fo, align 4, !tbaa !11
  %i.gi = fneg float %i.gh                        ; 2 uses
  %i.gj = fneg float %i.gf
  %i.gk = extractelement <2 x float> %i.gg, i64 0 ; 2 uses
  %i.gl = fneg float %i.gk                        ; 2 uses
  %i.gm = insertelement <4 x float> %i.gd, float %i.ge, i64 3
  %i.gn = insertelement <4 x float> poison, float %i.gj, i64 0
  %i.go = insertelement <4 x float> %i.gn, float %i.gl, i64 1
  %i.gp = insertelement <4 x float> %i.go, float %i.gi, i64 2
  %i.gq = shufflevector <2 x float> %i.gg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gr = shufflevector <4 x float> %i.gp, <4 x float> %i.gq, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.gs = fmul <4 x float> %i.gm, %i.gr
  %i.gt = shufflevector <4 x float> %i.gs, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.gu = shufflevector <4 x float> %i.gq, <4 x float> %i.gr, <4 x i32> <i32 1, i32 poison, i32 0, i32 4>
  %i.gv = insertelement <4 x float> %i.gu, float %i.gf, i64 1
  %i.gw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gd, <4 x float> %i.gv, <4 x float> %i.gt) ; 8 uses
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gy = fmul <2 x float> %i.fq, %i.gx
  %i.gz = shufflevector <4 x float> %i.gw, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ha = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fp, <2 x float> %i.gz, <2 x float> %i.gy)
  %i.hb = shufflevector <4 x float> %i.gw, <4 x float> poison, <2 x i32> zeroinitializer
  %i.hc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fr, <2 x float> %i.hb, <2 x float> %i.ha) ; 4 uses
  %i.hd = extractelement <4 x float> %i.gw, i64 2
  %i.he = fmul float %i.ey, %i.hd
  %i.hf = extractelement <4 x float> %i.gw, i64 1
  %i.hg = tail call float @llvm.fmuladd.f32(float %i.ex, float %i.hf, float %i.he)
  %i.hh = extractelement <4 x float> %i.gw, i64 0
  %i.hi = tail call noundef float @llvm.fmuladd.f32(float %i.ez, float %i.hh, float %i.hg) ; 3 uses
  %.sroa.3.12.vec.insert.i18.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hi, i64 0
  store <2 x float> %i.hc, ptr %i.fj, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i18.i, ptr %.sroa.46.0..sroa_idx.i, align 4, !tbaa !28
  %i.hj = fmul float %i.ff, %i.gf
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.ge, float %i.gl, float %i.hj) ; 2 uses
  %i.hl = extractelement <4 x float> %i.gd, i64 3
  %i.hm = fmul float %i.hl, %i.gk
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.ff, float %i.gi, float %i.hm) ; 2 uses
  %i.ho = insertelement <2 x float> poison, float %i.hk, i64 0
  %i.hp = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hq = fmul <2 x float> %i.ft, %i.hp
  %i.hr = shufflevector <4 x float> %i.gw, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.hs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fs, <2 x float> %i.hr, <2 x float> %i.hq)
  %i.ht = insertelement <2 x float> poison, float %i.hn, i64 0
  %i.hu = shufflevector <2 x float> %i.ht, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fu, <2 x float> %i.hu, <2 x float> %i.hs) ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN17btHingeConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E:bb.a
  %i.bj = load float, ptr %i.r, align 4, !tbaa !11
  %i.bk = extractelement <2 x float> %i.ad, i64 1
  %i.bl = fmul float %i.bj, %i.bk
  %i.bm = extractelement <2 x float> %i.bi, i64 0
  %i.bn = extractelement <2 x float> %i.ab, i64 1
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.bn, float %i.bl)
  %i.bp = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.y, float %i.bo)
  %i.bq = load <2 x float>, ptr %i.bf, align 8, !tbaa !11 ; 2 uses
  %i.br = insertelement <2 x float> %i.ad, float %i.av, i64 1
  %i.bs = shufflevector <2 x float> %i.bi, <2 x float> %i.bq, <2 x i32> <i32 1, i32 3>
  %i.bt = fmul <2 x float> %i.br, %i.bs
  %i.bu = shufflevector <2 x float> %i.bi, <2 x float> %i.bq, <2 x i32> <i32 0, i32 2>
  %i.bv = insertelement <2 x float> %i.ab, float %i.au, i64 1
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bv, <2 x float> %i.bt)
  %i.bx = insertelement <2 x float> poison, float %i.t, i64 0
  %i.by = insertelement <2 x float> %i.bx, float %i.bh, i64 1
  %i.bz = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ca = insertelement <2 x float> %i.bz, float %i.aw, i64 1
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.ca, <2 x float> %i.bw) ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.cd = load float, ptr %i.cc, align 8, !tbaa !11
  %i.ce = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !11
  %i.cg = fmul float %i.av, %i.cf
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.au, float %i.cg)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.cj = load float, ptr %i.ci, align 8, !tbaa !11
  %i.ck = tail call noundef float @llvm.fmuladd.f32(float %i.cj, float %i.aw, float %i.ch) ; 2 uses
  %i.cl = extractelement <2 x float> %i.cb, i64 0
  %i.cm = extractelement <2 x float> %i.cb, i64 1 ; 2 uses
  %i.cn = fmul float %i.cl, %i.cm
  %i.co = tail call float @llvm.fmuladd.f32(float %i.be, float %i.ak, float %i.cn)
  %i.cp = tail call noundef float @llvm.fmuladd.f32(float %i.ck, float %i.am, float %i.co)
  %i.cq = fmul float %i.bp, %i.cm
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.be, float %i.ao, float %i.cq)
  %i.cs = tail call noundef float @llvm.fmuladd.f32(float %i.ck, float %i.aq, float %i.cr)
  %i.ct = tail call noundef float @atan2f(float noundef %i.cp, float noundef %i.cs) #20
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 756
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !29
  %i.cw = fmul float %i.ct, %i.cv                 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 752
  store float %i.cw, ptr %i.cx, align 8, !tbaa !78
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 712
  tail call void @_ZN14btAngularLimit4testEf(ptr noundef nonnull align 4 dereferenceable(29) %i.cy, float noundef %i.cw)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 740
  %i.da = load i8, ptr %i.cz, align 4, !tbaa !85, !range !34, !noundef !31
  %.not = icmp eq i8 %i.da, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 761
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !86, !range !34, !noundef !31
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.de = load i32, ptr %1, align 4, !tbaa !82
  %i.df = add nsw i32 %i.de, 1
  store i32 %i.df, ptr %1, align 4, !tbaa !82
  %i.dg = load i32, ptr %i.d, align 4, !tbaa !84
  %i.dh = add nsw i32 %i.dg, -1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.e
  %.sink = phi i32 [ %i.dh, %bb.e ], [ 0, %bb.b ]
  store i32 %.sink, ptr %i.d, align 4, !tbaa !84
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN17btHingeConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(792) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 762
  %i.b = load i8, ptr %i.a, align 2, !tbaa !33, !range !34, !noundef !31
  %i.c = trunc nuw i8 %i.b to i1
  %spec.select = select i1 %i.c, i32 0, i32 6
  store i32 %spec.select, ptr %1, align 4, !tbaa !82
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17btHingeConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 763
  %i.b = load i8, ptr %i.a, align 1, !tbaa !87, !range !34, !noundef !31
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30, !nonnull !31, !align !32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38, !nonnull !31, !align !32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 436 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 436 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17btHingeConstraint32getInfo2InternalUsingFrameOffsetEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(64) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.k)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN17btHingeConstraint16getInfo2InternalEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(64) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.k)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17btHingeConstraint32getInfo2InternalUsingFrameOffsetEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !88   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 580
  %i.f = load float, ptr %i.e, align 4, !tbaa !11, !noalias !91 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.h = load float, ptr %i.g, align 4, !tbaa !11, !noalias !91 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.j = load float, ptr %i.i, align 4, !tbaa !11, !noalias !91 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.l = load float, ptr %i.k, align 8, !tbaa !11, !noalias !91 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.n = load float, ptr %i.m, align 8, !tbaa !11, !noalias !91 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.p = load float, ptr %i.o, align 8, !tbaa !11, !noalias !91 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.x = load <4 x float>, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.z = load <4 x float>, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ab = load <4 x float>, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !11, !noalias !96
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.af = load <2 x float>, ptr %2, align 4, !tbaa !11, !noalias !91 ; 4 uses
  %i.ag = extractelement <2 x float> %i.af, i64 0
  %i.ah = load <2 x float>, ptr %i.q, align 4, !tbaa !11, !noalias !91 ; 4 uses
  %i.ai = load <2 x float>, ptr %i.c, align 4, !tbaa !11, !noalias !91 ; 4 uses
  %i.aj = load float, ptr %i.d, align 4, !tbaa !11, !noalias !91
  %i.ak = load <2 x float>, ptr %i.r, align 4, !tbaa !11, !noalias !91 ; 4 uses
  %i.al = load float, ptr %i.s, align 4, !tbaa !11, !noalias !91
  %i.am = insertelement <2 x float> poison, float %i.h, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = shufflevector <2 x float> %i.ai, <2 x float> %i.ak, <2 x i32> <i32 0, i32 2>
  %i.ap = fmul <2 x float> %i.an, %i.ao
  %i.aq = insertelement <2 x float> poison, float %i.f, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = shufflevector <2 x float> %i.af, <2 x float> %i.ah, <2 x i32> <i32 0, i32 2>
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %i.as, <2 x float> %i.ap)
  %i.au = extractelement <2 x float> %i.ai, i64 0
  %i.av = fmul float %i.au, %i.n
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.l, float %i.ag, float %i.av)
  %i.ax = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.aj, float %i.aw) ; 4 uses
  %i.ay = insertelement <2 x float> poison, float %i.j, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = shufflevector <2 x float> %i.ai, <2 x float> %i.ak, <2 x i32> <i32 1, i32 3>
  %i.bb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %i.ba, <2 x float> %i.at)
  %i.bc = load <2 x float>, ptr %i.t, align 4, !tbaa !11, !noalias !91 ; 6 uses
  %i.bd = extractelement <2 x float> %i.bc, i64 0
  %i.be = shufflevector <2 x float> %i.ah, <2 x float> %i.bc, <2 x i32> <i32 1, i32 3>
  %i.bf = shufflevector <4 x float> %i.z, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bg = fmul <2 x float> %i.be, %i.bf
  %i.bh = shufflevector <2 x float> %i.bc, <2 x float> %i.af, <2 x i32> <i32 1, i32 3>
  %i.bi = fmul <2 x float> %i.bh, %i.bf
  %i.bj = shufflevector <4 x float> %i.x, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bk = shufflevector <2 x float> %i.ah, <2 x float> %i.bc, <2 x i32> <i32 0, i32 2>
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.bk, <2 x float> %i.bg)
  %i.bm = shufflevector <2 x float> %i.bc, <2 x float> %i.af, <2 x i32> <i32 0, i32 2>
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.bm, <2 x float> %i.bi)
  %i.bo = shufflevector <4 x float> %i.ab, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bp = load <2 x float>, ptr %i.ae, align 4, !tbaa !11, !noalias !96 ; 3 uses
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.br = insertelement <2 x float> %i.bq, float %i.ad, i64 1 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !11, !noalias !97 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.bw = load float, ptr %i.bv, align 8, !tbaa !11, !noalias !97 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.by = load float, ptr %i.bx, align 8, !tbaa !11, !noalias !97 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !11, !noalias !97 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 688
  %6 = load float, ptr %i.cf, align 8, !tbaa !11, !noalias !102
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 692
  %7 = load float, ptr %i.cg, align 4, !tbaa !11, !noalias !102
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 696
  %8 = load float, ptr %i.ch, align 8, !tbaa !11, !noalias !102
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !11, !noalias !102
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.cl = load <2 x float>, ptr %3, align 4, !tbaa !11, !noalias !97 ; 3 uses
  %i.cm = load float, ptr %i.bs, align 4, !tbaa !11, !noalias !97
  %i.cn = fmul float %i.cm, %i.by
  %i.co = extractelement <2 x float> %i.cl, i64 0
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.co, float %i.cn)
  %i.cq = tail call noundef float @llvm.fmuladd.f32(float %i.ca, float %i.bu, float %i.cp) ; 4 uses
  %i.cr = load <2 x float>, ptr %i.cb, align 4, !tbaa !11, !noalias !97 ; 3 uses
  %i.cs = load <2 x float>, ptr %i.cd, align 4, !tbaa !11, !noalias !97 ; 5 uses
  %i.ct = shufflevector <2 x float> %i.cr, <2 x float> %i.cs, <2 x i32> <i32 1, i32 3>
  %9 = insertelement <2 x float> poison, float %7, i64 0
  %i.cu = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cv = fmul <2 x float> %i.ct, %i.cu
  %i.cw = shufflevector <2 x float> %i.cs, <2 x float> %i.cl, <2 x i32> <i32 1, i32 3>
  %i.cx = fmul <2 x float> %i.cw, %i.cu
  %10 = insertelement <2 x float> poison, float %6, i64 0
  %i.cy = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cz = shufflevector <2 x float> %i.cr, <2 x float> %i.cs, <2 x i32> <i32 0, i32 2>
  %i.da = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.cz, <2 x float> %i.cv)
  %i.db = shufflevector <2 x float> %i.cs, <2 x float> %i.cl, <2 x i32> <i32 0, i32 2>
  %i.dc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.db, <2 x float> %i.cx)
  %11 = insertelement <2 x float> poison, float %8, i64 0
  %i.dd = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.de = load <2 x float>, ptr %i.ck, align 4, !tbaa !11, !noalias !102 ; 3 uses
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dg = insertelement <2 x float> %i.df, float %i.cj, i64 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !30, !nonnull !31, !align !32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 452
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !45 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !38, !nonnull !31, !align !32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 452
  %i.do = load float, ptr %i.dn, align 4, !tbaa !45 ; 3 uses
  %i.dp = fcmp olt float %i.dk, f0x34000000
  %i.dq = fcmp olt float %i.do, f0x34000000
  %i.dr = or i1 %i.dp, %i.dq                      ; 2 uses
  %i.ds = fadd float %i.dk, %i.do                 ; 2 uses
  %i.dt = fcmp ogt float %i.ds, 0.000000e+00
  %i.du = fdiv float %i.do, %i.ds
  %storemerge = select i1 %i.dt, float %i.du, float 5.000000e-01 ; 5 uses
  %i.dv = fsub float 1.000000e+00, %storemerge    ; 4 uses
  %i.dw = fmul float %i.ax, %storemerge
  %i.dx = fmul float %i.cq, %i.dv
  %i.dy = load <2 x float>, ptr %i.cc, align 4, !tbaa !11, !noalias !97 ; 3 uses
  %i.dz = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ea = insertelement <2 x float> %i.dz, float %i.by, i64 1 ; 2 uses
  %i.eb = shufflevector <2 x float> %i.ak, <2 x float> %i.dy, <2 x i32> <i32 0, i32 2>
  %i.ec = fmul <2 x float> %i.ea, %i.eb
  %i.ed = insertelement <2 x float> poison, float %i.l, i64 0
  %i.ee = insertelement <2 x float> %i.ed, float %i.bw, i64 1 ; 2 uses
  %i.ef = shufflevector <2 x float> %i.ah, <2 x float> %i.cr, <2 x i32> <i32 0, i32 2>
  %i.eg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.ef, <2 x float> %i.ec)
  %i.eh = insertelement <2 x float> poison, float %i.p, i64 0
  %i.ei = insertelement <2 x float> %i.eh, float %i.ca, i64 1 ; 2 uses
  %i.ej = insertelement <2 x float> %i.dy, float %i.al, i64 0
  %i.ek = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.ej, <2 x float> %i.eg) ; 5 uses
  %i.el = insertelement <2 x float> poison, float %storemerge, i64 0
  %i.em = insertelement <2 x float> %i.el, float %i.dv, i64 1 ; 2 uses
  %i.en = fmul <2 x float> %i.ek, %i.em           ; 2 uses
  %i.eo = load <2 x float>, ptr %i.u, align 4, !tbaa !11, !noalias !91 ; 5 uses
  %i.ep = load float, ptr %i.v, align 4, !tbaa !11, !noalias !91
  %i.eq = extractelement <2 x float> %i.eo, i64 0
  %i.er = fmul float %i.h, %i.eq
  %i.es = tail call float @llvm.fmuladd.f32(float %i.f, float %i.bd, float %i.er)
  %i.et = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.ep, float %i.es)
  %i.eu = shufflevector <2 x float> %i.ak, <2 x float> %i.eo, <2 x i32> <i32 1, i32 3>
  %i.ev = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.eu, <2 x float> %i.bl)
  %i.ew = shufflevector <2 x float> %i.eo, <2 x float> %i.ai, <2 x i32> <i32 1, i32 3>
  %i.ex = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.ew, <2 x float> %i.bn)
  %i.ey = fadd <2 x float> %i.ev, %i.bp           ; 3 uses
  %i.ez = fadd <2 x float> %i.ex, %i.br           ; 2 uses
  %i.fa = load <2 x float>, ptr %i.ce, align 4, !tbaa !11, !noalias !97 ; 4 uses
  %i.fb = shufflevector <2 x float> %i.eo, <2 x float> %i.fa, <2 x i32> <i32 0, i32 2>
  %i.fc = fmul <2 x float> %i.ea, %i.fb
  %i.fd = shufflevector <2 x float> %i.bc, <2 x float> %i.cs, <2 x i32> <i32 0, i32 2>
  %i.fe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.fd, <2 x float> %i.fc)
  %i.ff = shufflevector <2 x float> %i.eo, <2 x float> %i.fa, <2 x i32> <i32 1, i32 3>
  %i.fg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.ff, <2 x float> %i.fe) ; 5 uses
  %i.fh = shufflevector <2 x float> %i.dy, <2 x float> %i.fa, <2 x i32> <i32 1, i32 3>
  %i.fi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.fh, <2 x float> %i.da)
  %i.fj = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fk = insertelement <2 x float> %i.fj, float %i.bu, i64 1
  %i.fl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.fk, <2 x float> %i.dc)
  %i.fm = fadd <2 x float> %i.fi, %i.de           ; 3 uses
  %i.fn = fadd <2 x float> %i.fl, %i.dg           ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.fn, %i.ez
  %i.fo = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 3 uses
  %foldExtExtBinop804 = fsub <2 x float> %i.fm, %i.ey ; 2 uses
  %i.fp = extractelement <2 x float> %foldExtExtBinop804, i64 0 ; 2 uses
  %foldExtExtBinop806 = fsub <2 x float> %i.fm, %i.ey
  %i.fq = extractelement <2 x float> %foldExtExtBinop806, i64 1 ; 3 uses
  %i.fr = fmul <2 x float> %i.fg, %i.em           ; 2 uses
  %i.fs = fadd float %i.dw, %i.dx                 ; 3 uses
  %shift = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop808 = fadd <2 x float> %i.en, %shift ; 3 uses
  %shift810 = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop811 = fadd <2 x float> %i.fr, %shift810 ; 2 uses
  %i.ft = extractelement <2 x float> %foldExtExtBinop811, i64 0 ; 2 uses
  %.sroa.0.0.vec.insert.i302 = insertelement <2 x float> poison, float %i.fs, i64 0
  %.sroa.0.4.vec.insert.i303 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i302, <2 x float> %foldExtExtBinop808, <2 x i32> <i32 0, i32 2>
  %.sroa.3.12.vec.insert.i304827 = insertelement <2 x float> %foldExtExtBinop811, float 0.000000e+00, i64 1
  %foldExtExtBinop813 = fmul <2 x float> %foldExtExtBinop808, %foldExtExtBinop808
  %i.fu = extractelement <2 x float> %foldExtExtBinop813, i64 0
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.fs, float %i.fs, float %i.fu)
  %i.fw = tail call noundef float @llvm.fmuladd.f32(float %i.ft, float %i.ft, float %i.fv)
  %i.fx = fcmp olt float %i.fw, f0x34000000
  %i.fy = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.fz = insertelement <2 x float> %i.fy, float %storemerge, i64 1
  br i1 %i.fx, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ga = extractelement <2 x float> %i.fg, i64 0
  %i.gb = fmul float %i.ga, 0.000000e+00
  %i.gc = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gd = insertelement <2 x float> %i.gc, float %i.ax, i64 0
  %i.ge = fmul <2 x float> %i.gd, zeroinitializer
  %i.gf = insertelement <2 x float> %i.ek, float %i.cq, i64 0
  %i.gg = fadd <2 x float> %i.ge, %i.gf
  %i.gh = extractelement <2 x float> %i.fg, i64 1
  %i.gi = fadd float %i.gb, %i.gh
  %.sroa.3.12.vec.insert.i319 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gi, i64 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.15.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i319, %bb.b ], [ %.sroa.3.12.vec.insert.i304827, %bb.a ] ; 3 uses
  %.sroa.0769.0 = phi <2 x float> [ %i.gg, %bb.b ], [ %.sroa.0.4.vec.insert.i303, %bb.a ] ; 5 uses
  %.0649 = phi float [ 0.000000e+00, %bb.b ], [ %storemerge, %bb.a ] ; 4 uses
  %.0648 = phi float [ 1.000000e+00, %bb.b ], [ %i.dv, %bb.a ] ; 4 uses
  %i.gj = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %bb.b ], [ %i.fz, %bb.a ] ; 3 uses
  %.sroa.0769.0.vec.extract771 = extractelement <2 x float> %.sroa.0769.0, i64 0 ; 2 uses
  %foldExtExtBinop815 = fmul <2 x float> %.sroa.0769.0, %.sroa.0769.0
  %i.gk = extractelement <2 x float> %foldExtExtBinop815, i64 1
  %i.gl = tail call float @llvm.fmuladd.f32(float %.sroa.0769.0.vec.extract771, float %.sroa.0769.0.vec.extract771, float %i.gk)
  %.sroa.15.8.vec.extract786 = extractelement <2 x float> %.sroa.15.0, i64 0 ; 2 uses
  %i.gm = tail call noundef float @llvm.fmuladd.f32(float %.sroa.15.8.vec.extract786, float %.sroa.15.8.vec.extract786, float %i.gl)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.gm)
  %i.gn = fdiv float 1.000000e+00, %sqrt.i.i
  %i.go = shl i32 %i.b, 1
  %i.gp = fsub <2 x float> %i.fn, %i.dg           ; 2 uses
  %i.gq = fsub <2 x float> %i.fm, %i.de           ; 3 uses
  %i.gr = fsub <2 x float> %i.ez, %i.br           ; 2 uses
  %i.gs = fsub <2 x float> %i.ey, %i.bp           ; 3 uses
  %i.gt = shufflevector <2 x float> %.sroa.15.0, <2 x float> %.sroa.0769.0, <2 x i32> <i32 0, i32 2>
  %i.gu = insertelement <2 x float> poison, float %i.gn, i64 0
  %i.gv = shufflevector <2 x float> %i.gu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gw = fmul <2 x float> %i.gt, %i.gv           ; 8 uses
  %i.gx = shufflevector <2 x float> %.sroa.0769.0, <2 x float> %.sroa.15.0, <2 x i32> <i32 1, i32 2>
  %i.gy = fmul <2 x float> %i.gx, %i.gv           ; 13 uses
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> %i.gw, <2 x i32> <i32 3, i32 0>
  %i.ha = extractelement <2 x float> %i.gy, i64 0 ; 3 uses
  %foldExtExtBinop817 = fmul <2 x float> %i.gy, %i.gq
  %i.hb = extractelement <2 x float> %foldExtExtBinop817, i64 0
  %i.hc = extractelement <2 x float> %i.gw, i64 1 ; 7 uses
  %i.hd = extractelement <2 x float> %i.gp, i64 1
  %i.he = tail call float @llvm.fmuladd.f32(float %i.hd, float %i.hc, float %i.hb)
  %i.hf = extractelement <2 x float> %i.gy, i64 1 ; 8 uses
  %i.hg = extractelement <2 x float> %i.gq, i64 1
  %i.hh = tail call noundef float @llvm.fmuladd.f32(float %i.hg, float %i.hf, float %i.he)
  %i.hi = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hk = fmul <2 x float> %i.gy, %i.hj           ; 3 uses
  %i.hl = fmul <2 x float> %i.gw, %i.hj           ; 2 uses
  %foldExtExtBinop819 = fmul <2 x float> %i.gs, %i.gy
  %i.hm = extractelement <2 x float> %foldExtExtBinop819, i64 0
  %i.hn = extractelement <2 x float> %i.gr, i64 1
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.hn, float %i.hc, float %i.hm)
  %i.hp = extractelement <2 x float> %i.gs, i64 1
  %i.hq = tail call noundef float @llvm.fmuladd.f32(float %i.hp, float %i.hf, float %i.ho)
  %i.hr = insertelement <2 x float> poison, float %i.hq, i64 0
  %i.hs = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ht = fmul <2 x float> %i.gy, %i.hs           ; 2 uses
  %i.hu = fmul <2 x float> %i.gw, %i.hs           ; 2 uses
  %i.hv = fsub <2 x float> %i.gs, %i.ht           ; 3 uses
  %i.hw = fsub <2 x float> %i.gr, %i.hu           ; 2 uses
  %i.hx = fsub <2 x float> %i.ht, %i.hk           ; 3 uses
  %i.hy = fsub <2 x float> %i.hu, %i.hl           ; 2 uses
  %i.hz = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.ia = fmul <2 x float> %i.hz, %i.hx
  %i.ib = fmul <2 x float> %i.hz, %i.hy
  %i.ic = fadd <2 x float> %i.hv, %i.ia           ; 7 uses
  %i.id = fadd <2 x float> %i.hw, %i.ib           ; 4 uses
  %i.ie = fsub <2 x float> %i.gq, %i.hk           ; 3 uses
  %i.if = shufflevector <2 x float> %i.hk, <2 x float> %i.hl, <2 x i32> <i32 1, i32 3>
  %i.ig = fsub <2 x float> %i.gp, %i.if           ; 2 uses
  %i.ih = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ii = fmul <2 x float> %i.ih, %i.hx
  %i.ij = shufflevector <2 x float> %i.hx, <2 x float> %i.hy, <2 x i32> <i32 1, i32 3>
  %i.ik = fmul <2 x float> %i.ih, %i.ij
  %i.il = fsub <2 x float> %i.ie, %i.ii           ; 8 uses
  %i.im = fsub <2 x float> %i.ig, %i.ik           ; 4 uses
  %i.in = extractelement <2 x float> %i.ig, i64 1
  %i.io = fmul float %.0649, %i.in
  %i.ip = extractelement <2 x float> %i.ie, i64 0
  %i.iq = fmul float %.0649, %i.ip
  %i.ir = extractelement <2 x float> %i.ie, i64 1
  %i.is = fmul float %.0649, %i.ir
  %i.it = extractelement <2 x float> %i.hw, i64 1
  %i.iu = fmul float %.0648, %i.it
  %i.iv = extractelement <2 x float> %i.hv, i64 0
  %i.iw = fmul float %.0648, %i.iv
  %i.ix = extractelement <2 x float> %i.hv, i64 1
  %i.iy = fmul float %.0648, %i.ix
  %i.iz = fadd float %i.iu, %i.io                 ; 3 uses
  %i.ja = fadd float %i.iw, %i.iq                 ; 3 uses
  %i.jb = fadd float %i.iy, %i.is                 ; 3 uses
  %i.jc = fmul float %i.ja, %i.ja
  %i.jd = tail call float @llvm.fmuladd.f32(float %i.iz, float %i.iz, float %i.jc)
  %i.je = tail call noundef float @llvm.fmuladd.f32(float %i.jb, float %i.jb, float %i.jd) ; 2 uses
  %i.jf = fcmp ogt float %i.je, f0x34000000
  br i1 %i.jf, label %bb.d, label %.preheader663

bb.d:                                             ; preds = %bb.c
  %sqrt = tail call float @llvm.sqrt.f32(float %i.je)
  %i.jg = fdiv float 1.000000e+00, %sqrt          ; 3 uses
  %i.jh = fmul float %i.iz, %i.jg
  %i.ji = insertelement <2 x float> poison, float %i.jh, i64 0
  %i.jj = fmul float %i.ja, %i.jg
  %.sroa.0697.4.vec.insert = insertelement <2 x float> %i.ji, float %i.jj, i64 1
  %i.jk = fmul float %i.jb, %i.jg
  br label %.preheader663

.preheader663:                                    ; preds = %bb.c, %bb.d
end_hunk_2
begin_hunk_3_@_ZN17btHingeConstraint32getInfo2InternalUsingFrameOffsetEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_:bb.a

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.sv = load float, ptr %i.su, align 8, !tbaa !78
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.sx = load float, ptr %i.sw, align 8, !tbaa !114
  %i.sy = load float, ptr %1, align 8, !tbaa !107
  %i.sz = fmul float %i.sn, %i.sy
  %i.ta = tail call noundef float @_ZN17btTypedConstraint14getMotorFactorEfffff(ptr noundef nonnull align 8 dereferenceable(72) %0, float noundef %i.sv, float noundef %i.se, float noundef %i.sf, float noundef %i.sx, float noundef %i.sz)
  %i.tb = load float, ptr %i.sw, align 8, !tbaa !114
  %i.tc = fmul float %i.ta, %i.tb
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 756
  %i.te = load float, ptr %i.td, align 4, !tbaa !29
  %i.tf = load ptr, ptr %i.qs, align 8, !tbaa !106 ; 2 uses
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.tf, i64 %i.rq ; 2 uses
  %i.th = load float, ptr %i.tg, align 4, !tbaa !11
  %i.ti = tail call float @llvm.fmuladd.f32(float %i.tc, float %i.te, float %i.th)
  store float %i.ti, ptr %i.tg, align 4, !tbaa !11
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 708 ; 2 uses
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !115
  %i.tl = fneg float %i.tk
  %i.tm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !116
  %i.to = getelementptr inbounds [4 x i8], ptr %i.tn, i64 %i.rq
  store float %i.tl, ptr %i.to, align 4, !tbaa !11
  %i.tp = load float, ptr %i.tj, align 4, !tbaa !115
  %i.tq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !117
  %i.ts = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %i.rq
  store float %i.tp, ptr %i.ts, align 4, !tbaa !11
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.tt = phi ptr [ %i.tf, %bb.o ], [ %i.sh, %bb.l ]
  br i1 %.not264, label %bb.ad, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.tu = load float, ptr %1, align 8, !tbaa !107
  %i.tv = fmul float %i.sn, %i.tu
  %i.tw = getelementptr inbounds [4 x i8], ptr %i.tt, i64 %i.rq ; 7 uses
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !11
  %i.ty = tail call float @llvm.fmuladd.f32(float %i.tv, float %.0255653, float %i.tx)
  store float %i.ty, ptr %i.tw, align 4, !tbaa !11
  %i.tz = load i32, ptr %i.nd, align 4, !tbaa !105
  %i.ua = and i32 %i.tz, 1
  %.not267 = icmp eq i32 %i.ua, 0
  br i1 %.not267, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.uc = load float, ptr %i.ub, align 8, !tbaa !118
  %i.ud = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !113
  %i.uf = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.rq
  store float %i.uc, ptr %i.uf, align 4, !tbaa !11
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ug = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !116
  %i.ui = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.rq
  br i1 %i.sg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %. = select i1 %.0254654, float 0.000000e+00, float f0xFF7FFFFF
  %.802 = select i1 %.0254654, float f0x7F7FFFFF, float 0.000000e+00
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink801 = phi float [ %., %bb.t ], [ f0xFF7FFFFF, %bb.s ]
  %.sink798 = phi float [ %.802, %bb.t ], [ f0x7F7FFFFF, %bb.s ]
  store float %.sink801, ptr %i.ui, align 4, !tbaa !11
  %.sink800.in = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sink800 = load ptr, ptr %.sink800.in, align 8, !tbaa !117
  %i.uj = getelementptr inbounds [4 x i8], ptr %.sink800, i64 %i.rq
  store float %.sink798, ptr %i.uj, align 4, !tbaa !11
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.ul = load float, ptr %i.uk, align 8, !tbaa !13 ; 3 uses
  %i.um = fcmp ogt float %i.ul, 0.000000e+00
  br i1 %i.um, label %bb.v, label %._crit_edge

._crit_edge:                                      ; preds = %bb.u
  %.pre791 = load float, ptr %i.tw, align 4, !tbaa !11
  br label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.un = load float, ptr %4, align 4, !tbaa !11
  %i.uo = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.up = load float, ptr %i.uo, align 4, !tbaa !11
  %i.uq = fmul float %i.ha, %i.up
  %i.ur = tail call float @llvm.fmuladd.f32(float %i.un, float %i.hc, float %i.uq)
  %i.us = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ut = load float, ptr %i.us, align 4, !tbaa !11
  %i.uu = tail call noundef float @llvm.fmuladd.f32(float %i.ut, float %i.hf, float %i.ur)
  %i.uv = load float, ptr %5, align 4, !tbaa !11
  %i.uw = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ux = load float, ptr %i.uw, align 4, !tbaa !11
  %i.uy = fmul float %i.ha, %i.ux
  %i.uz = tail call float @llvm.fmuladd.f32(float %i.uv, float %i.hc, float %i.uy)
  %i.va = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.vb = load float, ptr %i.va, align 4, !tbaa !11
  %i.vc = tail call noundef float @llvm.fmuladd.f32(float %i.vb, float %i.hf, float %i.uz)
  %i.vd = fsub float %i.uu, %i.vc                 ; 4 uses
  %.pre792 = load float, ptr %i.tw, align 4, !tbaa !11 ; 6 uses
  br i1 %.0254654, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.ve = fcmp olt float %i.vd, 0.000000e+00
  br i1 %i.ve, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.vf = fneg float %i.ul
  %i.vg = fmul nnan float %i.vd, %i.vf            ; 3 uses
  %i.vh = fcmp ogt float %i.vg, %.pre792
  br i1 %i.vh, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  store float %i.vg, ptr %i.tw, align 4, !tbaa !11
  br label %bb.ac

bb.z:                                             ; preds = %bb.v
  %i.vi = fcmp ogt float %i.vd, 0.000000e+00
  br i1 %i.vi, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.vj = fneg float %i.ul
  %i.vk = fmul nnan float %i.vd, %i.vj            ; 3 uses
  %i.vl = fcmp olt float %i.vk, %.pre792
  br i1 %i.vl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store float %i.vk, ptr %i.tw, align 4, !tbaa !11
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge, %bb.w, %bb.z, %bb.y, %bb.x, %bb.ab, %bb.aa
  %i.vm = phi float [ %.pre791, %._crit_edge ], [ %.pre792, %bb.w ], [ %.pre792, %bb.z ], [ %i.vg, %bb.y ], [ %.pre792, %bb.x ], [ %i.vk, %bb.ab ], [ %.pre792, %bb.aa ]
  %i.vn = getelementptr inbounds nuw i8, ptr %0, i64 724
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !119
  %i.vp = fmul float %i.vo, %i.vm
  store float %i.vp, ptr %i.tw, align 4, !tbaa !11
  br label %bb.ad

bb.ad:                                            ; preds = %bb.p, %bb.ac, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17btHingeConstraint16getInfo2InternalEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !88   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.g = load float, ptr %i.f, align 8, !tbaa !11, !noalias !120 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !11, !noalias !120 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.k = load float, ptr %i.j, align 4, !tbaa !11, !noalias !120 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.m = load float, ptr %i.l, align 8, !tbaa !11, !noalias !120 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.o = load float, ptr %i.n, align 8, !tbaa !11, !noalias !120 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.q = load float, ptr %i.p, align 8, !tbaa !11, !noalias !120 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.u = load float, ptr %i.t, align 4, !tbaa !11, !noalias !120 ; 3 uses
  %i.v = load <2 x float>, ptr %2, align 4, !tbaa !11, !noalias !120 ; 4 uses
  %i.w = load float, ptr %i.e, align 4, !tbaa !11, !noalias !120 ; 2 uses
  %i.x = load <2 x float>, ptr %i.r, align 4, !tbaa !11, !noalias !120 ; 4 uses
  %i.y = load float, ptr %i.s, align 4, !tbaa !11, !noalias !120 ; 2 uses
  %i.z = shufflevector <2 x float> %i.v, <2 x float> %i.x, <2 x i32> <i32 1, i32 3>
  %i.aa = shufflevector <2 x float> %i.v, <2 x float> %i.x, <2 x i32> <i32 0, i32 2>
  %i.ab = insertelement <2 x float> poison, float %i.k, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = insertelement <2 x float> poison, float %i.i, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %i.u, i64 1
  %i.af = insertelement <4 x float> poison, float %i.w, i64 0
  %i.ag = insertelement <4 x float> %i.af, float %i.y, i64 1
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ai = shufflevector <2 x float> %i.v, <2 x float> %i.x, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.am = load float, ptr %i.al, align 4, !tbaa !11, !noalias !120 ; 4 uses
  %i.an = load <2 x float>, ptr %i.c, align 8, !tbaa !11, !noalias !120 ; 2 uses
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ap = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 1> ; 2 uses
  %i.aq = insertelement <4 x float> %i.ap, float %i.m, i64 1
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.as = insertelement <4 x float> %i.ap, float %i.g, i64 0
  %i.at = insertelement <4 x float> %i.as, float %i.q, i64 2
  %i.au = insertelement <4 x float> poison, float %i.u, i64 0
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !11, !noalias !125 ; 2 uses
  %i.ay = load <2 x float>, ptr %i.aj, align 4, !tbaa !11, !noalias !120 ; 2 uses
  %6 = load float, ptr %i.ak, align 4, !tbaa !11, !noalias !120
  %i.az = load <2 x float>, ptr %i.d, align 8, !tbaa !11, !noalias !120 ; 3 uses
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bb = fmul <2 x float> %i.ba, %i.z
  %i.bc = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bd = insertelement <4 x float> %i.bc, float %i.o, i64 1
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bf = fmul <4 x float> %i.be, %i.ah
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.aa, <2 x float> %i.bb)
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ae, <2 x float> %i.bg) ; 4 uses
  %i.bi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ar, <4 x float> %i.ai, <4 x float> %i.bf) ; 3 uses
  %i.bj = extractelement <4 x float> %i.bi, i64 0
  %i.bk = tail call noundef float @llvm.fmuladd.f32(float %i.g, float %i.i, float %i.bj) ; 3 uses
  %i.bl = extractelement <4 x float> %i.bi, i64 2
  %i.bm = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.i, float %i.bl) ; 6 uses
  %7 = insertelement <2 x float> poison, float %6, i64 0
  %i.bn = shufflevector <2 x float> %i.ay, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0> ; 2 uses
  %i.bo = shufflevector <4 x float> %i.au, <4 x float> %i.bn, <4 x i32> <i32 0, i32 4, i32 0, i32 4>
  %i.bp = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bq = shufflevector <2 x float> %7, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.br = fmul <4 x float> %i.bp, %i.bq
  %i.bs = shufflevector <4 x float> %i.bi, <4 x float> %i.br, <4 x i32> <i32 1, i32 4, i32 3, i32 5>
  %i.bt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.at, <4 x float> %i.bo, <4 x float> %i.bs) ; 4 uses
  %i.bu = extractelement <4 x float> %i.bt, i64 1
  %i.bv = tail call noundef float @llvm.fmuladd.f32(float %i.g, float %i.am, float %i.bu) ; 3 uses
  %i.bw = extractelement <4 x float> %i.bt, i64 3
  %i.bx = tail call noundef float @llvm.fmuladd.f32(float %i.k, float %i.am, float %i.bw) ; 3 uses
  %i.by = load <2 x float>, ptr %i.av, align 8, !tbaa !11, !noalias !125 ; 2 uses
  %i.bz = shufflevector <2 x float> %i.ay, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ca = insertelement <4 x float> %i.bz, float %i.w, i64 1
  %i.cb = insertelement <4 x float> %i.ca, float %i.y, i64 2
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.cd = insertelement <2 x float> %i.by, float %i.o, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.cf = fmul <4 x float> %i.cc, %i.ce
  %i.cg = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ch = insertelement <2 x float> %i.cg, float %i.m, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.cj = shufflevector <2 x float> %i.v, <2 x float> %i.x, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.ck = shufflevector <4 x float> %i.bn, <4 x float> %i.cj, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.cl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ci, <4 x float> %i.ck, <4 x float> %i.cf) ; 3 uses
  %i.cm = extractelement <4 x float> %i.cl, i64 0
  %i.cn = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.am, float %i.cm) ; 6 uses
  %i.co = extractelement <4 x float> %i.cl, i64 1
  %i.cp = tail call noundef float @llvm.fmuladd.f32(float %i.ax, float %i.i, float %i.co)
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !11, !noalias !125 ; 2 uses
  %i.cs = fadd float %i.cr, %i.cp                 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !11, !noalias !126 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.cx = load float, ptr %i.cw, align 8, !tbaa !11, !noalias !126
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.cz = load float, ptr %i.cy, align 8, !tbaa !11, !noalias !126
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.db = load float, ptr %i.da, align 8, !tbaa !11, !noalias !126 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 692
  %i.dj = load <2 x float>, ptr %3, align 4, !tbaa !11, !noalias !126 ; 2 uses
  %i.dk = load <2 x float>, ptr %i.dc, align 4, !tbaa !11, !noalias !126 ; 3 uses
  %i.dl = load <2 x float>, ptr %i.df, align 4, !tbaa !11, !noalias !126 ; 2 uses
  %i.dm = load <2 x float>, ptr %i.dh, align 8, !tbaa !11, !noalias !131 ; 2 uses
  %8 = load float, ptr %i.di, align 4, !tbaa !11, !noalias !131
  %i.dn = shufflevector <2 x float> %i.dj, <2 x float> %i.dk, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.do = shufflevector <2 x float> %i.dl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dp = shufflevector <4 x float> %i.dn, <4 x float> %i.do, <4 x i32> <i32 0, i32 1, i32 5, i32 0>
  %i.dq = insertelement <2 x float> %i.dm, float %i.cz, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ds = fmul <4 x float> %i.dp, %i.dr
  %i.dt = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.du = insertelement <2 x float> %i.dt, float %i.cx, i64 0
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dw = shufflevector <2 x float> %i.dj, <2 x float> %i.dk, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dx = shufflevector <4 x float> %i.dw, <4 x float> %i.do, <4 x i32> <i32 0, i32 1, i32 4, i32 0>
  %i.dy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dv, <4 x float> %i.dx, <4 x float> %i.ds) ; 3 uses
  %i.dz = extractelement <4 x float> %i.dy, i64 1
  %i.ea = insertelement <2 x float> poison, float %i.db, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ec = shufflevector <4 x float> %i.dy, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.ee = load float, ptr %i.ed, align 8, !tbaa !11, !noalias !131 ; 2 uses
  %i.ef = extractelement <4 x float> %i.dy, i64 3
  %i.eg = tail call noundef float @llvm.fmuladd.f32(float %i.ee, float %i.cv, float %i.ef)
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !11, !noalias !131
  %i.ej = fadd float %i.ei, %i.eg                 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.em = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.en = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eo = insertelement <2 x float> poison, float %i.u, i64 0
  %i.ep = insertelement <2 x float> %i.eo, float %i.am, i64 1
  %i.eq = shufflevector <4 x float> %i.cl, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.er = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.en, <2 x float> %i.ep, <2 x float> %i.eq)
  %i.es = load <2 x float>, ptr %i.ct, align 4, !tbaa !11, !noalias !125 ; 3 uses
  %i.et = fadd <2 x float> %i.er, %i.es           ; 3 uses
  %i.eu = load <2 x float>, ptr %i.dd, align 4, !tbaa !11, !noalias !126 ; 2 uses
  %i.ev = load float, ptr %i.de, align 4, !tbaa !11, !noalias !126
  %i.ew = load <2 x float>, ptr %i.dg, align 4, !tbaa !11, !noalias !126 ; 3 uses
  %i.ex = tail call noundef float @llvm.fmuladd.f32(float %i.db, float %i.ev, float %i.dz) ; 2 uses
  %i.ey = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ez = insertelement <2 x float> %i.ey, float %i.cv, i64 1
  %i.fa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> %i.ez, <2 x float> %i.ec) ; 3 uses
  %i.fb = shufflevector <2 x float> %i.eu, <2 x float> %i.ew, <2 x i32> <i32 0, i32 2>
  %9 = insertelement <2 x float> poison, float %8, i64 0
  %i.fc = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = fmul <2 x float> %i.fb, %i.fc
  %i.fe = shufflevector <2 x float> %i.dk, <2 x float> %i.dl, <2 x i32> <i32 0, i32 2>
  %i.ff = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dt, <2 x float> %i.fe, <2 x float> %i.fd)
  %i.fg = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = shufflevector <2 x float> %i.eu, <2 x float> %i.ew, <2 x i32> <i32 1, i32 3>
  %i.fj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fh, <2 x float> %i.fi, <2 x float> %i.ff)
  %i.fk = load <2 x float>, ptr %i.ek, align 4, !tbaa !11, !noalias !131
  %i.fl = fadd <2 x float> %i.fj, %i.fk           ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.fn = load i8, ptr %i.fm, align 8, !tbaa !37, !range !34, !noundef !31
  %i.fo = trunc nuw i8 %i.fn to i1                ; 2 uses
  br i1 %i.fo, label %._crit_edge339, label %bb.b

._crit_edge339:                                   ; preds = %bb.a
  %.pre340 = shl nsw i32 %i.b, 1
  %i.fp = extractelement <2 x float> %i.es, i64 0
  %i.fq = extractelement <2 x float> %i.es, i64 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !108 ; 3 uses
  store float 1.000000e+00, ptr %i.ft, align 4, !tbaa !11
  %i.fu = add nsw i32 %i.b, 1
  %i.fv = sext i32 %i.fu to i64                   ; 2 uses
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.fv
  store float 1.000000e+00, ptr %i.fw, align 4, !tbaa !11
  %i.fx = shl nsw i32 %i.b, 1                     ; 2 uses
  %i.fy = add nsw i32 %i.fx, 2
  %i.fz = sext i32 %i.fy to i64                   ; 2 uses
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.fz
  store float 1.000000e+00, ptr %i.ga, align 4, !tbaa !11
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !109 ; 3 uses
  store float -1.000000e+00, ptr %i.gc, align 4, !tbaa !11
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.fv
  store float -1.000000e+00, ptr %i.gd, align 4, !tbaa !11
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.fz
  store float -1.000000e+00, ptr %i.ge, align 4, !tbaa !11
  %.pre = load float, ptr %i.cq, align 4, !tbaa !11
  %.pre333 = load float, ptr %i.ct, align 4, !tbaa !11
  %.pre334 = load float, ptr %i.fr, align 4, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge339, %bb.b
  %.pre-phi = phi i32 [ %.pre340, %._crit_edge339 ], [ %i.fx, %bb.b ]
  %i.gf = phi float [ %i.fq, %._crit_edge339 ], [ %.pre334, %bb.b ]
  %i.gg = phi float [ %i.fp, %._crit_edge339 ], [ %.pre333, %bb.b ]
  %i.gh = phi float [ %i.cr, %._crit_edge339 ], [ %.pre, %bb.b ]
  %i.gi = fsub float %i.cs, %i.gh                 ; 2 uses
  %i.gj = extractelement <2 x float> %i.et, i64 0
  %i.gk = fsub float %i.gj, %i.gg                 ; 2 uses
  %i.gl = extractelement <2 x float> %i.et, i64 1
  %i.gm = fsub float %i.gl, %i.gf                 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !103 ; 14 uses
  %i.gp = sext i32 %i.b to i64                    ; 4 uses
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.gp ; 4 uses
  %i.gr = sext i32 %.pre-phi to i64               ; 2 uses
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.gr ; 3 uses
  %i.gt = fneg float %i.gi
  %i.gu = fneg float %i.gk
  %i.gv = fneg float %i.gm
  store float 0.000000e+00, ptr %i.go, align 4, !tbaa !11
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  store float %i.gm, ptr %i.gw, align 4, !tbaa !11
  %i.gx = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store float %i.gu, ptr %i.gx, align 4, !tbaa !11
  %i.gy = getelementptr inbounds nuw i8, ptr %i.go, i64 12
  store float 0.000000e+00, ptr %i.gy, align 4, !tbaa !11
  store float %i.gv, ptr %i.gq, align 4, !tbaa !11
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  store float 0.000000e+00, ptr %i.gz, align 4, !tbaa !11
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store float %i.gi, ptr %i.ha, align 4, !tbaa !11
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gq, i64 12
  store float 0.000000e+00, ptr %i.hb, align 4, !tbaa !11
  store float %i.gk, ptr %i.gs, align 4, !tbaa !11
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  store float %i.gt, ptr %i.hc, align 4, !tbaa !11
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store <2 x float> zeroinitializer, ptr %i.hd, align 4, !tbaa !11
  %i.he = load float, ptr %i.eh, align 4, !tbaa !11
  %i.hf = fsub float %i.ej, %i.he                 ; 2 uses
  %i.hg = load float, ptr %i.ek, align 4, !tbaa !11
  %i.hh = extractelement <2 x float> %i.fl, i64 0
  %i.hi = fsub float %i.hh, %i.hg                 ; 2 uses
  %i.hj = load float, ptr %i.el, align 4, !tbaa !11
  %i.hk = extractelement <2 x float> %i.fl, i64 1
  %i.hl = fsub float %i.hk, %i.hj                 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !104 ; 14 uses
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %i.gp ; 4 uses
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %i.gr ; 3 uses
  %i.hq = fneg float %i.hl
  store float 0.000000e+00, ptr %i.hn, align 4, !tbaa !11
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  store float %i.hq, ptr %i.hr, align 4, !tbaa !11
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store float %i.hi, ptr %i.hs, align 4, !tbaa !11
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  store float 0.000000e+00, ptr %i.ht, align 4, !tbaa !11
  %i.hu = fneg float %i.hf
  store float %i.hl, ptr %i.ho, align 4, !tbaa !11
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  store float 0.000000e+00, ptr %i.hv, align 4, !tbaa !11
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  store float %i.hu, ptr %i.hw, align 4, !tbaa !11
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ho, i64 12
  store float 0.000000e+00, ptr %i.hx, align 4, !tbaa !11
  %i.hy = fneg float %i.hi
  store float %i.hy, ptr %i.hp, align 4, !tbaa !11
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  store float %i.hf, ptr %i.hz, align 4, !tbaa !11
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store <2 x float> zeroinitializer, ptr %i.ia, align 4, !tbaa !11
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 772 ; 3 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !105
  %i.id = and i32 %i.ic, 8
  %.not = icmp eq i32 %i.id, 0
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.in = select i1 %.not, ptr %i.if, ptr %i.ie
  %i.ig = load float, ptr %.in, align 4, !tbaa !11 ; 2 uses
  %i.ih = load float, ptr %1, align 8, !tbaa !107
  %i.ii = fmul float %i.ig, %i.ih                 ; 5 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.pre335 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !106 ; 5 uses
  br i1 %i.fo, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.ij = fsub float %i.ej, %i.cs
  %i.ik = fmul float %i.ii, %i.ij
  store float %i.ik, ptr %.pre335, align 4, !tbaa !11
  %i.il = fsub <2 x float> %i.fl, %i.et           ; 2 uses
  %i.im = extractelement <2 x float> %i.il, i64 0
  %i.in = fmul float %i.ii, %i.im
  %i.io = getelementptr inbounds [4 x i8], ptr %.pre335, i64 %i.gp
  store float %i.in, ptr %i.io, align 4, !tbaa !11
  %i.ip = extractelement <2 x float> %i.il, i64 1
  %i.iq = fmul float %i.ii, %i.ip
  %.idx = shl nsw i64 %i.gp, 3
  %i.ir = getelementptr inbounds i8, ptr %.pre335, i64 %.idx
  store float %i.iq, ptr %i.ir, align 4, !tbaa !11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.preheader
  %i.is = mul nsw i32 %i.b, 3                     ; 3 uses
  %i.it = shl nsw i32 %i.b, 2                     ; 2 uses
  %i.iu = sext i32 %i.is to i64                   ; 3 uses
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.iu
  store float %i.bk, ptr %i.iv, align 4, !tbaa !11
  %i.iw = add nsw i32 %i.is, 1
  %i.ix = sext i32 %i.iw to i64                   ; 2 uses
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.ix
  %i.iz = extractelement <4 x float> %i.bt, i64 0 ; 3 uses
  store float %i.iz, ptr %i.iy, align 4, !tbaa !11
  %i.ja = add nsw i32 %i.is, 2
  %i.jb = sext i32 %i.ja to i64                   ; 2 uses
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.jb
  store float %i.bv, ptr %i.jc, align 4, !tbaa !11
  %i.jd = sext i32 %i.it to i64                   ; 3 uses
  %i.je = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.jd
  store <2 x float> %i.bh, ptr %i.je, align 4, !tbaa !11
  %i.jf = or disjoint i32 %i.it, 2
  %i.jg = sext i32 %i.jf to i64                   ; 2 uses
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.jg
  store float %i.bx, ptr %i.jh, align 4, !tbaa !11
  %i.ji = fneg float %i.bk
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %i.iu
  store float %i.ji, ptr %i.jj, align 4, !tbaa !11
  %i.jk = fneg float %i.iz
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %i.ix
  store float %i.jk, ptr %i.jl, align 4, !tbaa !11
  %i.jm = fneg float %i.bv
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %i.jb
  store float %i.jm, ptr %i.jn, align 4, !tbaa !11
  %i.jo = extractelement <2 x float> %i.bh, i64 0
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %i.jd
  %i.jq = extractelement <2 x float> %i.bh, i64 1
  %i.jr = fneg <2 x float> %i.bh
  store <2 x float> %i.jr, ptr %i.jp, align 4, !tbaa !11
  %i.js = fneg float %i.bx
  %i.jt = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %i.jg
  store float %i.js, ptr %i.jt, align 4, !tbaa !11
  %i.ju = fneg float %i.ex
  %i.jv = fmul float %i.cn, %i.ju
  %i.jw = extractelement <4 x float> %i.bt, i64 2 ; 6 uses
  %i.jx = extractelement <2 x float> %i.fa, i64 0
  %i.jy = tail call float @llvm.fmuladd.f32(float %i.jw, float %i.jx, float %i.jv) ; 2 uses
  %i.jz = fneg <2 x float> %i.fa                  ; 2 uses
  %i.ka = extractelement <2 x float> %i.jz, i64 0
  %i.kb = fmul float %i.bm, %i.ka
  %i.kc = extractelement <2 x float> %i.fa, i64 1
  %i.kd = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.kc, float %i.kb) ; 2 uses
  %i.ke = extractelement <2 x float> %i.jz, i64 1
  %i.kf = fmul float %i.jw, %i.ke
  %i.kg = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.ex, float %i.kf) ; 2 uses
end_hunk_3
