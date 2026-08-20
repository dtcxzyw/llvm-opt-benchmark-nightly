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
  %i.ad = load float, ptr %i.aa, align 8, !tbaa !11
  %i.ae = load float, ptr %i.ab, align 8, !tbaa !11
  %i.af = load float, ptr %i.ac, align 8, !tbaa !11
  %i.ag = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %i.ae, i64 1
  %i.ai = fneg <2 x float> %i.ah
  %i.aj = fneg float %i.af
  %.sroa.3.12.vec.insert.i63 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aj, i64 0
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.an = load float, ptr %i.ak, align 4, !tbaa !11
  %.sroa.0.0.vec.insert.i66 = insertelement <2 x float> poison, float %i.an, i64 0
  %i.ao = load float, ptr %i.al, align 4, !tbaa !11
  %.sroa.0.4.vec.insert.i67 = insertelement <2 x float> %.sroa.0.0.vec.insert.i66, float %i.ao, i64 1
  %i.ap = load float, ptr %i.am, align 4, !tbaa !11
  %.sroa.3.12.vec.insert.i68 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ap, i64 0
  br label %bb.e

bb.b:                                             ; preds = %.preheader.preheader
  %i.aq = fcmp ugt float %i.y, f0xBF7FFFFE
  br i1 %i.aq, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = load float, ptr %i.ar, align 8, !tbaa !11
  %.sroa.0.0.vec.insert.i71 = insertelement <2 x float> poison, float %i.au, i64 0
  %i.av = load float, ptr %i.as, align 8, !tbaa !11
  %.sroa.0.4.vec.insert.i72 = insertelement <2 x float> %.sroa.0.0.vec.insert.i71, float %i.av, i64 1
  %i.aw = load float, ptr %i.at, align 8, !tbaa !11
  %.sroa.3.12.vec.insert.i73 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aw, i64 0
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ba = load float, ptr %i.ax, align 4, !tbaa !11
  %.sroa.0.0.vec.insert.i76 = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bb = load float, ptr %i.ay, align 4, !tbaa !11
  %.sroa.0.4.vec.insert.i77 = insertelement <2 x float> %.sroa.0.0.vec.insert.i76, float %i.bb, i64 1
  %i.bc = load float, ptr %i.az, align 4, !tbaa !11
  %.sroa.3.12.vec.insert.i78 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bc, i64 0
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.bd = insertelement <2 x float> poison, float %i.m, i64 0
  %i.be = insertelement <2 x float> %i.bd, float %i.n, i64 1 ; 2 uses
  %i.bf = fneg <2 x float> %i.be
  %i.bg = insertelement <2 x float> poison, float %i.o, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.m, i64 1
  %i.bi = fneg <2 x float> %i.bh
  %i.bj = fneg <2 x float> %i.s
  %i.bk = fmul <2 x float> %i.r, %i.bi
  %i.bl = fmul <2 x float> %i.s, %i.bf
  %i.bm = shufflevector <2 x float> %i.s, <2 x float> %i.r, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.be, <2 x float> %i.bk) ; 4 uses
  %i.bo = insertelement <2 x float> poison, float %i.n, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %i.o, i64 1
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.bp, <2 x float> %i.bl) ; 3 uses
  %i.br = shufflevector <2 x float> %i.bn, <2 x float> %i.bq, <2 x i32> <i32 3, i32 0>
  %i.bs = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.bn, <2 x i32> <i32 3, i32 1>
  %i.bt = fmul <2 x float> %i.bq, %i.bj
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bm, <2 x float> %i.bt)
  %i.bv = fneg float %i.v
  %i.bw = extractelement <2 x float> %i.bn, i64 0
  %i.bx = fmul float %i.bw, %i.bv
  %i.by = extractelement <2 x float> %i.bq, i64 1
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.by, float %i.t, float %i.bx)
  %.sroa.3.12.vec.insert.i88 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bz, i64 0
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.15.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i88, %bb.d ], [ %.sroa.3.12.vec.insert.i73, %bb.c ], [ %.sroa.3.12.vec.insert.i63, %bb.a ] ; 3 uses
  %.sroa.0119.0 = phi <2 x float> [ %i.bu, %bb.d ], [ %.sroa.0.4.vec.insert.i72, %bb.c ], [ %i.ai, %bb.a ] ; 3 uses
  %.sroa.10.0 = phi <2 x float> [ %i.bs, %bb.d ], [ %.sroa.3.12.vec.insert.i78, %bb.c ], [ %.sroa.3.12.vec.insert.i68, %bb.a ]
  %.sroa.0112.0 = phi <2 x float> [ %i.br, %bb.d ], [ %.sroa.0.4.vec.insert.i77, %bb.c ], [ %.sroa.0.4.vec.insert.i67, %bb.a ] ; 2 uses
  %.sroa.0119.0.vec.extract123 = extractelement <2 x float> %.sroa.0119.0, i64 0 ; 3 uses
  store float %.sroa.0119.0.vec.extract123, ptr %i.b, align 8, !tbaa !11
  %.sroa.0112.0.vec.extract114 = extractelement <2 x float> %.sroa.0112.0, i64 0
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 580
  store float %.sroa.0112.0.vec.extract114, ptr %i.ca, align 4, !tbaa !11
  %i.cb = load float, ptr %5, align 4, !tbaa !11
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 584
  %8 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cb, i64 0
  store <2 x float> %8, ptr %i.cc, align 8, !tbaa !11
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 592
  %.sroa.0119.4.vec.extract129 = extractelement <2 x float> %.sroa.0119.0, i64 1 ; 4 uses
  store float %.sroa.0119.4.vec.extract129, ptr %i.cd, align 8, !tbaa !11
  %.sroa.0112.4.vec.extract116 = extractelement <2 x float> %.sroa.0112.0, i64 1
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 596
  store float %.sroa.0112.4.vec.extract116, ptr %i.ce, align 4, !tbaa !11
  %i.cf = load float, ptr %i.p, align 4, !tbaa !11
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 600
  %9 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cf, i64 0
  store <2 x float> %9, ptr %i.cg, align 8, !tbaa !11
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 608
  %.sroa.15.8.vec.extract135 = extractelement <2 x float> %.sroa.15.0, i64 0 ; 3 uses
  store float %.sroa.15.8.vec.extract135, ptr %i.ch, align 8, !tbaa !11
  %.sroa.10.8.vec.extract118 = extractelement <2 x float> %.sroa.10.0, i64 0
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 612
  store float %.sroa.10.8.vec.extract118, ptr %i.ci, align 4, !tbaa !11
  %i.cj = load float, ptr %i.q, align 4, !tbaa !11
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 616
  %10 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cj, i64 0
  store <2 x float> %10, ptr %i.ck, align 8, !tbaa !11
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.cm = load <2 x float>, ptr %i.p, align 4, !tbaa !11 ; 7 uses
  %i.cn = load <2 x float>, ptr %i.cl, align 4, !tbaa !11 ; 6 uses
  %i.co = load float, ptr %6, align 4, !tbaa !11  ; 5 uses
  %i.cp = load float, ptr %5, align 4, !tbaa !11  ; 6 uses
  %i.cq = extractelement <2 x float> %i.cm, i64 0 ; 5 uses
  %i.cr = extractelement <2 x float> %i.cn, i64 0 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.cm, %i.cn
  %i.cs = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.co, float %i.cs)
  %i.cu = extractelement <2 x float> %i.cm, i64 1 ; 5 uses
  %i.cv = extractelement <2 x float> %i.cn, i64 1 ; 2 uses
  %i.cw = tail call noundef float @llvm.fmuladd.f32(float %i.cu, float %i.cv, float %i.ct) ; 2 uses
  %i.cx = fcmp olt float %i.cw, f0xBF7FFFFE
  br i1 %i.cx, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.cy = tail call noundef float @llvm.fabs.f32(float %i.cu)
  %i.cz = fcmp ogt float %i.cy, f0x3F3504F3
  br i1 %i.cz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.da = fmul nnan float %i.cu, %i.cu
  %i.db = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.cq, float %i.da)
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.db)
  %i.dc = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.dd = fneg float %i.cu
  %i.de = fmul float %i.dc, %i.dd
  %i.df = fmul float %i.cq, %i.dc
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i

bb.h:                                             ; preds = %bb.f
  %foldExtExtBinop140 = fmul <2 x float> %i.cm, %i.cm
  %i.dg = extractelement <2 x float> %foldExtExtBinop140, i64 0
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.cp, float %i.dg)
  %sqrt43.i.i = tail call float @llvm.sqrt.f32(float %i.dh)
  %i.di = fdiv float 1.000000e+00, %sqrt43.i.i    ; 2 uses
  %i.dj = fneg float %i.cq
  %i.dk = fmul float %i.di, %i.dj
  %i.dl = fmul float %i.cp, %i.di
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i

_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i: ; preds = %bb.h, %bb.g
  %.sroa.016.0.i = phi float [ 0.000000e+00, %bb.g ], [ %i.dk, %bb.h ]
  %.sroa.618.0.i = phi float [ %i.de, %bb.g ], [ %i.dl, %bb.h ]
  %.sroa.10.0.i = phi float [ %i.df, %bb.g ], [ 0.000000e+00, %bb.h ]
  %.sroa.022.0.vec.insert.i = insertelement <2 x float> poison, float %.sroa.016.0.i, i64 0
  %.sroa.022.4.vec.insert.i = insertelement <2 x float> %.sroa.022.0.vec.insert.i, float %.sroa.618.0.i, i64 1
  %.sroa.528.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.10.0.i, i64 0
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.dm = fneg float %i.co
  %i.dn = fmul float %i.cq, %i.dm
  %i.do = fneg <2 x float> %i.cn
  %i.dp = fadd float %i.cw, 1.000000e+00
  %i.dq = fmul float %i.dp, 2.000000e+00
  %i.dr = tail call noundef float @sqrtf(float noundef %i.dq) #20 ; 2 uses
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.cr, float %i.dn)
  %i.dt = fdiv float 1.000000e+00, %i.dr          ; 2 uses
  %i.du = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dv = insertelement <2 x float> %i.du, float %i.cp, i64 1
  %i.dw = fmul <2 x float> %i.dv, %i.do
  %i.dx = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dy = insertelement <2 x float> %i.dx, float %i.co, i64 1
  %i.dz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %i.dy, <2 x float> %i.dw)
  %i.ea = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ec = fmul <2 x float> %i.dz, %i.eb
  %i.ed = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.ee = insertelement <2 x float> %i.ed, float %i.dr, i64 1
  %i.ef = insertelement <2 x float> <float poison, float 5.000000e-01>, float %i.dt, i64 0
  %i.eg = fmul <2 x float> %i.ee, %i.ef
  br label %bb.j

bb.j:                                             ; preds = %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i, %bb.i
  %.sroa.022.0.i = phi <2 x float> [ %.sroa.022.4.vec.insert.i, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i ], [ %i.ec, %bb.i ] ; 4 uses
  %.sroa.528.0.i = phi <2 x float> [ %.sroa.528.12.vec.insert.i, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i ], [ %i.eg, %bb.i ] ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 640
  %.sroa.6109.12.vec.extract = extractelement <2 x float> %.sroa.528.0.i, i64 1 ; 3 uses
  %.sroa.0108.4.vec.extract = extractelement <2 x float> %.sroa.022.0.i, i64 1 ; 2 uses
  %.sroa.6109.8.vec.extract = extractelement <2 x float> %.sroa.528.0.i, i64 0
  %i.ej = fneg float %.sroa.6109.8.vec.extract    ; 4 uses
  %.sroa.0108.0.vec.extract = extractelement <2 x float> %.sroa.022.0.i, i64 0 ; 2 uses
  %11 = fneg float %.sroa.0108.4.vec.extract      ; 3 uses
  %i.ek = fneg float %.sroa.0119.4.vec.extract129
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 688
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !27
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ep = fneg float %.sroa.0108.0.vec.extract    ; 4 uses
  %i.eq = shufflevector <2 x float> %.sroa.15.0, <2 x float> %.sroa.022.0.i, <4 x i32> <i32 0, i32 poison, i32 2, i32 3>
  %i.er = insertelement <4 x float> %i.eq, float %.sroa.0119.0.vec.extract123, i64 1
  %i.es = shufflevector <2 x float> %.sroa.022.0.i, <2 x float> %.sroa.528.0.i, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.et = insertelement <4 x float> %i.es, float %.sroa.0119.4.vec.extract129, i64 2
  %i.eu = insertelement <4 x float> %i.et, float %i.ek, i64 3
  %i.ev = fmul <4 x float> %i.er, %i.eu
  %i.ew = shufflevector <2 x float> %.sroa.528.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ex = insertelement <2 x float> %i.ew, float %i.ep, i64 1
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ez = shufflevector <2 x float> %.sroa.0119.0, <2 x float> %.sroa.15.0, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.fa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ey, <4 x float> %i.ez, <4 x float> %i.ev) ; 4 uses
  %i.fb = extractelement <4 x float> %i.fa, i64 0
  %i.fc = tail call float @llvm.fmuladd.f32(float %i.ej, float %.sroa.0119.4.vec.extract129, float %i.fb) ; 3 uses
  %i.fd = extractelement <4 x float> %i.fa, i64 1
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.ep, float %.sroa.15.8.vec.extract135, float %i.fd) ; 3 uses
  %i.ff = extractelement <4 x float> %i.fa, i64 2
  %i.fg = tail call float @llvm.fmuladd.f32(float %11, float %.sroa.0119.0.vec.extract123, float %i.ff) ; 3 uses
  %i.fh = extractelement <4 x float> %i.fa, i64 3
  %i.fi = tail call float @llvm.fmuladd.f32(float %i.ej, float %.sroa.15.8.vec.extract135, float %i.fh) ; 3 uses
  %i.fj = fmul float %.sroa.6109.12.vec.extract, %i.fc
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.fi, float %i.ep, float %i.fj)
  %i.fl = tail call float @llvm.fmuladd.f32(float %i.fe, float %i.ej, float %i.fk)
  %i.fm = tail call float @llvm.fmuladd.f32(float %i.fg, float %.sroa.0108.4.vec.extract, float %i.fl) ; 3 uses
  %i.fn = fmul float %.sroa.6109.12.vec.extract, %i.fe
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.fi, float %11, float %i.fn)
  %i.fp = fmul float %.sroa.6109.12.vec.extract, %i.fg
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.fi, float %i.ej, float %i.fp)
  %i.fr = tail call float @llvm.fmuladd.f32(float %i.fc, float %11, float %i.fq)
  %i.fs = tail call float @llvm.fmuladd.f32(float %i.fe, float %.sroa.0108.0.vec.extract, float %i.fr) ; 3 uses
  %i.ft = fneg float %i.fs
  %i.fu = fmul float %i.co, %i.ft
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.fg, float %i.ep, float %i.fo)
  %i.fw = insertelement <2 x float> poison, float %i.fc, i64 0
  %i.fx = insertelement <2 x float> %i.fw, float %i.fm, i64 1
  %i.fy = shufflevector <2 x float> %.sroa.528.0.i, <2 x float> %i.cn, <2 x i32> <i32 0, i32 3>
  %i.fz = insertelement <2 x float> poison, float %i.fv, i64 0
  %i.ga = insertelement <2 x float> %i.fz, float %i.fu, i64 1
  %i.gb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> %i.fy, <2 x float> %i.ga) ; 2 uses
  %i.gc = extractelement <2 x float> %i.gb, i64 0 ; 2 uses
  %i.gd = fneg float %i.gc
  %i.ge = fmul float %i.cv, %i.gd
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.fs, float %i.ge)
  %i.gg = fneg float %i.fm
  %i.gh = fmul float %i.cr, %i.gg
  %i.gi = tail call float @llvm.fmuladd.f32(float %i.co, float %i.gc, float %i.gh)
  store float %i.fm, ptr %i.ei, align 8, !tbaa !11
  store float %i.gf, ptr %i.em, align 4, !tbaa !11
  %i.gj = load float, ptr %6, align 4, !tbaa !11
  %i.gk = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gj, i64 0
  store <2 x float> %i.gk, ptr %i.en, align 8, !tbaa !11
  store <2 x float> %i.gb, ptr %i.eo, align 8, !tbaa !11
  %i.gl = load float, ptr %i.cl, align 4, !tbaa !11
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.gn = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gl, i64 0
  store <2 x float> %i.gn, ptr %i.gm, align 8, !tbaa !11
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 672
  store float %i.fs, ptr %i.go, align 8, !tbaa !11
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 676
  store float %i.gi, ptr %i.gp, align 4, !tbaa !11
  %i.gq = load float, ptr %i.eh, align 4, !tbaa !11
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.gs = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gq, i64 0
  store <2 x float> %i.gs, ptr %i.gr, align 8, !tbaa !11
  %i.gt = select i1 %7, float -1.000000e+00, float 1.000000e+00
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 756
  store float %i.gt, ptr %i.gu, align 4, !tbaa !29
  ret void
}

declare void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(744), ptr noundef nonnull align 8 dereferenceable(744)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17btHingeConstraintC2ER11btRigidBodyRK9btVector3S4_b(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, i1 noundef zeroext %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.preheader.preheader:
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBody(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(744) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV17btHingeConstraint, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = zext i1 %4 to i8
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
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.h, i8 0, i64 20, i1 false)
  %i.j = load float, ptr %i.i, align 4, !tbaa !11 ; 6 uses
  %i.k = tail call noundef float @llvm.fabs.f32(float %i.j)
  %i.l = fcmp ogt float %i.k, f0x3F3504F3
  br i1 %i.l, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.preheader.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !11 ; 3 uses
  %i.o = fmul nnan float %i.j, %i.j
  %i.p = tail call float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.o) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.p)
  %i.q = fdiv float 1.000000e+00, %sqrt.i         ; 3 uses
  %i.r = fneg float %i.j
  %i.s = fmul float %i.q, %i.r                    ; 2 uses
  %i.t = fmul float %i.n, %i.q                    ; 2 uses
  %i.u = fmul float %i.p, %i.q
  %i.v = load float, ptr %3, align 4, !tbaa !11   ; 2 uses
  %i.w = fneg float %i.v
  %i.x = fmul float %i.t, %i.w
  %i.y = fmul float %i.v, %i.s
  br label %bb.c

bb.b:                                             ; preds = %.preheader.preheader
  %i.z = load float, ptr %3, align 4, !tbaa !11   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !11 ; 3 uses
  %i.ac = fmul float %i.ab, %i.ab
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.z, float %i.z, float %i.ac) ; 2 uses
  %sqrt43.i = tail call float @llvm.sqrt.f32(float %i.ad)
  %i.ae = fdiv float 1.000000e+00, %sqrt43.i      ; 3 uses
  %i.af = fneg float %i.ab
  %i.ag = fmul float %i.ae, %i.af                 ; 2 uses
  %i.ah = fmul float %i.z, %i.ae                  ; 2 uses
  %i.ai = fneg float %i.j
  %i.aj = fmul float %i.ah, %i.ai
  %i.ak = fmul float %i.j, %i.ag
  %i.al = fmul float %i.ad, %i.ae
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.872.0 = phi float [ %i.s, %bb.a ], [ %i.ah, %bb.b ] ; 4 uses
  %.sroa.069.0 = phi float [ 0.000000e+00, %bb.a ], [ %i.ag, %bb.b ] ; 4 uses
  %.sroa.13.0 = phi float [ %i.t, %bb.a ], [ 0.000000e+00, %bb.b ] ; 4 uses
  %.sroa.668.0 = phi float [ %i.x, %bb.a ], [ %i.ak, %bb.b ]
  %.sroa.067.0 = phi float [ %i.u, %bb.a ], [ %i.aj, %bb.b ]
  %.sink.i = phi float [ %i.y, %bb.a ], [ %i.al, %bb.b ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 624
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store float %.sroa.069.0, ptr %i.b, align 8, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 580
  store float %.sroa.067.0, ptr %i.ao, align 4, !tbaa !11
  %i.ap = load float, ptr %3, align 4, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.ar = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ap, i64 0
  store <2 x float> %i.ar, ptr %i.aq, align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 592
  store float %.sroa.872.0, ptr %i.as, align 8, !tbaa !11
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 596
  store float %.sroa.668.0, ptr %i.at, align 4, !tbaa !11
  %i.au = load float, ptr %i.an, align 4, !tbaa !11
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.aw = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.au, i64 0
  store <2 x float> %i.aw, ptr %i.av, align 8, !tbaa !11
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 608
  store float %.sroa.13.0, ptr %i.ax, align 8, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 612
  store float %.sink.i, ptr %i.ay, align 4, !tbaa !11
  %i.az = load float, ptr %i.i, align 4, !tbaa !11
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.bb = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.az, i64 0
  store <2 x float> %i.bb, ptr %i.ba, align 8, !tbaa !11
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load float, ptr %3, align 4, !tbaa !11  ; 7 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bh = load <2 x float>, ptr %i.bc, align 8, !tbaa !11 ; 3 uses
  %i.bi = load <2 x float>, ptr %i.bf, align 8, !tbaa !11 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bl = load <2 x float>, ptr %i.bj, align 8, !tbaa !11 ; 3 uses
  %i.bm = load <2 x float>, ptr %i.an, align 4, !tbaa !11 ; 9 uses
  %i.bn = load <2 x float>, ptr %i.be, align 4, !tbaa !11 ; 3 uses
  %i.bo = load <2 x float>, ptr %i.bg, align 4, !tbaa !11 ; 3 uses
  %i.bp = load <2 x float>, ptr %i.bk, align 4, !tbaa !11 ; 5 uses
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> %i.bn, <2 x i32> <i32 0, i32 2>
  %i.br = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bs = fmul <2 x float> %i.bq, %i.br
  %i.bt = shufflevector <2 x float> %i.bo, <2 x float> %i.bp, <2 x i32> <i32 0, i32 2>
  %i.bu = fmul <2 x float> %i.br, %i.bt
  %i.bv = shufflevector <2 x float> %i.bl, <2 x float> %i.bh, <2 x i32> <i32 0, i32 2>
  %i.bw = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.bx, <2 x float> %i.bs)
  %i.bz = shufflevector <2 x float> %i.bi, <2 x float> %i.bl, <2 x i32> <i32 0, i32 2>
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.bx, <2 x float> %i.bu)
  %i.cb = shufflevector <2 x float> %i.bp, <2 x float> %i.bn, <2 x i32> <i32 1, i32 3>
  %i.cc = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.cc, <2 x float> %i.by) ; 4 uses
  %i.ce = shufflevector <2 x float> %i.bo, <2 x float> %i.bp, <2 x i32> <i32 1, i32 3>
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.cc, <2 x float> %i.ca) ; 3 uses
  %i.cg = extractelement <2 x float> %i.bm, i64 0 ; 5 uses
  %i.ch = extractelement <2 x float> %i.cf, i64 0 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.bm, %i.cf
  %i.ci = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cj = extractelement <2 x float> %i.cd, i64 1 ; 5 uses
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.cj, float %i.ci)
  %i.cl = extractelement <2 x float> %i.bm, i64 1 ; 5 uses
  %i.cm = extractelement <2 x float> %i.cd, i64 0 ; 3 uses
  %i.cn = tail call noundef float @llvm.fmuladd.f32(float %i.cl, float %i.cm, float %i.ck) ; 2 uses
  %i.co = fcmp olt float %i.cn, f0xBF7FFFFE
  br i1 %i.co, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.cp = tail call noundef float @llvm.fabs.f32(float %i.cl)
  %i.cq = fcmp ogt float %i.cp, f0x3F3504F3
  br i1 %i.cq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cr = fmul nnan float %i.cl, %i.cl
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.cg, float %i.cr)
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.cs)
  %i.ct = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.cu = fneg float %i.cl
  %i.cv = fmul float %i.ct, %i.cu
  %i.cw = fmul float %i.cg, %i.ct
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i

bb.f:                                             ; preds = %bb.d
end_hunk_0
begin_hunk_1_@_ZN17btHingeConstraint9setFramesERK11btTransformS2_:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !27
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 592
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !27
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 608
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !27
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 624
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !27
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 656
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !27
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 672
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !27
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 688
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !27
  %i.o = load ptr, ptr %0, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(792) %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN17btHingeConstraint9updateRHSEf(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(792) %0, float noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define dso_local noundef float @_ZN17btHingeConstraint13getHingeAngleERK11btTransformS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(792) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.d = load float, ptr %i.c, align 8, !tbaa !11 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load float, ptr %i.i, align 4, !tbaa !11 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load float, ptr %i.l, align 4, !tbaa !11 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.o = load float, ptr %i.n, align 4, !tbaa !11 ; 3 uses
  %i.p = load <2 x float>, ptr %1, align 4, !tbaa !11 ; 2 uses
  %i.q = load <2 x float>, ptr %i.k, align 4, !tbaa !11 ; 2 uses
  %i.r = load <2 x float>, ptr %i.a, align 8, !tbaa !11 ; 3 uses
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.t = load <2 x float>, ptr %i.b, align 8, !tbaa !11 ; 3 uses
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.v = shufflevector <2 x float> %i.p, <2 x float> %i.q, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.w = fmul <4 x float> %i.v, %i.u
  %i.x = shufflevector <2 x float> %i.p, <2 x float> %i.q, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.y = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> %i.s, <4 x float> %i.w) ; 4 uses
  %i.z = extractelement <4 x float> %i.y, i64 0
  %i.aa = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.d, float %i.z)
  %i.ab = extractelement <4 x float> %i.y, i64 2
  %i.ac = tail call noundef float @llvm.fmuladd.f32(float %i.m, float %i.d, float %i.ab)
  %i.ad = extractelement <4 x float> %i.y, i64 1
  %i.ae = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.o, float %i.ad)
  %i.af = extractelement <4 x float> %i.y, i64 3
  %i.ag = tail call noundef float @llvm.fmuladd.f32(float %i.m, float %i.o, float %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 660
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 676
  %i.ak = load float, ptr %i.ah, align 4, !tbaa !11 ; 3 uses
  %i.al = load float, ptr %i.ai, align 4, !tbaa !11 ; 3 uses
  %i.am = load float, ptr %i.aj, align 4, !tbaa !11 ; 3 uses
  %i.an = load float, ptr %2, align 4, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !11
  %i.aq = fmul float %i.al, %i.ap
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.an, float %i.ak, float %i.aq)
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = load float, ptr %i.as, align 4, !tbaa !11
  %i.au = tail call noundef float @llvm.fmuladd.f32(float %i.at, float %i.am, float %i.ar) ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !11
  %i.ay = load <2 x float>, ptr %i.g, align 4, !tbaa !11 ; 3 uses
  %i.az = load float, ptr %i.h, align 4, !tbaa !11
  %i.ba = extractelement <2 x float> %i.t, i64 1
  %i.bb = fmul float %i.az, %i.ba
  %i.bc = extractelement <2 x float> %i.ay, i64 0
  %i.bd = extractelement <2 x float> %i.r, i64 1
  %i.be = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.bd, float %i.bb)
  %i.bf = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.o, float %i.be)
  %i.bg = load <2 x float>, ptr %i.av, align 4, !tbaa !11 ; 2 uses
  %i.bh = insertelement <2 x float> %i.t, float %i.al, i64 1
  %i.bi = shufflevector <2 x float> %i.ay, <2 x float> %i.bg, <2 x i32> <i32 1, i32 3>
  %i.bj = fmul <2 x float> %i.bh, %i.bi
  %i.bk = shufflevector <2 x float> %i.ay, <2 x float> %i.bg, <2 x i32> <i32 0, i32 2>
  %i.bl = insertelement <2 x float> %i.r, float %i.ak, i64 1
  %i.bm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.bl, <2 x float> %i.bj)
  %i.bn = insertelement <2 x float> poison, float %i.j, i64 0
  %i.bo = insertelement <2 x float> %i.bn, float %i.ax, i64 1
  %i.bp = insertelement <2 x float> poison, float %i.d, i64 0
  %i.bq = insertelement <2 x float> %i.bp, float %i.am, i64 1
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.bq, <2 x float> %i.bm) ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !11
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !11
  %i.bw = fmul float %i.al, %i.bv
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.ak, float %i.bw)
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bz = load float, ptr %i.by, align 4, !tbaa !11
  %i.ca = tail call noundef float @llvm.fmuladd.f32(float %i.bz, float %i.am, float %i.bx) ; 2 uses
  %i.cb = extractelement <2 x float> %i.br, i64 0
  %i.cc = extractelement <2 x float> %i.br, i64 1 ; 2 uses
  %i.cd = fmul float %i.cb, %i.cc
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.au, float %i.aa, float %i.cd)
  %i.cf = tail call noundef float @llvm.fmuladd.f32(float %i.ca, float %i.ac, float %i.ce)
  %i.cg = fmul float %i.bf, %i.cc
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.au, float %i.ae, float %i.cg)
  %i.ci = tail call noundef float @llvm.fmuladd.f32(float %i.ca, float %i.ag, float %i.ch)
  %i.cj = tail call noundef float @atan2f(float noundef %i.cf, float noundef %i.ci) #20
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 756
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !29
  %i.cm = fmul float %i.cj, %i.cl
  ret float %i.cm
}

declare void @_ZN14btAngularLimit4testEf(ptr noundef nonnull align 4 dereferenceable(29), float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17btHingeConstraint14setMotorTargetERK12btQuaternionf(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, float noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %3 = alloca %class.btQuaternion, align 8        ; 5 uses
  %4 = alloca %class.btQuaternion, align 8        ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 640
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %4)
  %.fca.0.load.i = load <2 x float>, ptr %4, align 8 ; 6 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.sroa.087.0.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 0
  %.sroa.087.4.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 1
  %.sroa.588.8.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 0 ; 2 uses
  %.sroa.588.12.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 1 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load float, ptr %i.c, align 4, !tbaa !11 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.fca.1.gep.i17 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = fneg float %.sroa.087.0.vec.extract
  %i.h = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.fca.0.load.i, <2 x i32> <i32 0, i32 2>
  %i.i = fneg <2 x float> %i.h
  %i.j = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 1, i32 2>
  %i.k = fneg <2 x float> %i.j                    ; 2 uses
  %i.l = load <2 x float>, ptr %1, align 4, !tbaa !11 ; 5 uses
  %i.m = load <2 x float>, ptr %i.e, align 4, !tbaa !11 ; 3 uses
  %i.n = fmul float %i.d, %i.g
  %i.o = insertelement <2 x float> poison, float %i.d, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x float> %i.p, %i.k
  %i.r = shufflevector <2 x float> %.fca.1.load.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.s = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.m, <2 x float> %i.q)
  %i.t = extractelement <2 x float> %i.l, i64 0
  %i.u = call float @llvm.fmuladd.f32(float %.sroa.588.12.vec.extract, float %i.t, float %i.n)
  %i.v = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.i, <2 x float> %i.l, <2 x float> %i.s)
  %i.w = extractelement <2 x float> %i.m, i64 1   ; 2 uses
  %i.x = extractelement <2 x float> %i.k, i64 0
  %i.y = call float @llvm.fmuladd.f32(float %i.x, float %i.w, float %i.u)
  %i.z = shufflevector <2 x float> %i.m, <2 x float> %i.l, <2 x i32> <i32 1, i32 2>
  %i.aa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.fca.0.load.i, <2 x float> %i.z, <2 x float> %i.v) ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %.fca.0.load.i, %i.l
  %i.ab = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ac = call float @llvm.fmuladd.f32(float %.sroa.588.12.vec.extract, float %i.d, float %i.ab)
  %i.ad = extractelement <2 x float> %i.l, i64 1  ; 2 uses
  %i.ae = call float @llvm.fmuladd.f32(float %.sroa.087.4.vec.extract, float %i.ad, float %i.ac)
  %i.af = call float @llvm.fmuladd.f32(float %.sroa.588.8.vec.extract, float %i.w, float %i.ae) ; 3 uses
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %3)
  %.fca.0.load.i15 = load <2 x float>, ptr %3, align 8 ; 5 uses
  %.fca.1.load.i18 = load <2 x float>, ptr %.fca.1.gep.i17, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.sroa.085.0.vec.extract = extractelement <2 x float> %.fca.0.load.i15, i64 0 ; 2 uses
  %.sroa.586.12.vec.extract = extractelement <2 x float> %.fca.1.load.i18, i64 1 ; 2 uses
  %.sroa.586.8.vec.extract = extractelement <2 x float> %.fca.1.load.i18, i64 0 ; 2 uses
  %.sroa.085.4.vec.extract = extractelement <2 x float> %.fca.0.load.i15, i64 1 ; 2 uses
  %i.ag = extractelement <2 x float> %i.aa, i64 0
  %i.ah = fmul float %i.ag, %.sroa.586.12.vec.extract
  %i.ai = call float @llvm.fmuladd.f32(float %i.af, float %.sroa.085.4.vec.extract, float %i.ah)
  %i.aj = extractelement <2 x float> %i.aa, i64 1
  %i.ak = call float @llvm.fmuladd.f32(float %i.aj, float %.sroa.085.0.vec.extract, float %i.ai)
  %i.al = fneg <2 x float> %i.aa                  ; 3 uses
  %i.am = call float @llvm.fmuladd.f32(float %.sroa.588.8.vec.extract, float %i.ad, float %i.y) ; 4 uses
  %i.an = fneg float %i.am
  %i.ao = fneg float %.sroa.085.0.vec.extract
  %i.ap = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aq = insertelement <2 x float> %i.ap, float %i.am, i64 1
  %i.ar = shufflevector <2 x float> %.fca.1.load.i18, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.as = fmul <2 x float> %i.aq, %i.ar
  %i.at = fmul float %i.am, %i.ao
  %i.au = insertelement <2 x float> poison, float %i.af, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = shufflevector <2 x float> %.fca.1.load.i18, <2 x float> %.fca.0.load.i15, <2 x i32> <i32 0, i32 2>
  %i.ax = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> %i.aw, <2 x float> %i.as)
  %i.ay = call float @llvm.fmuladd.f32(float %i.af, float %.sroa.586.12.vec.extract, float %i.at)
  %i.az = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> %i.aa, <2 x i32> <i32 0, i32 2>
  %i.bb = shufflevector <2 x float> %.fca.0.load.i15, <2 x float> %.fca.1.load.i18, <2 x i32> <i32 1, i32 2>
  %i.bc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.bb, <2 x float> %i.ax)
  %i.bd = extractelement <2 x float> %i.al, i64 0
  %i.be = call float @llvm.fmuladd.f32(float %i.bd, float %.sroa.085.4.vec.extract, float %i.ay)
  %i.bf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %.fca.0.load.i15, <2 x float> %i.bc) ; 3 uses
  %i.bg = extractelement <2 x float> %i.al, i64 1
  %i.bh = call float @llvm.fmuladd.f32(float %i.bg, float %.sroa.586.8.vec.extract, float %i.be) ; 3 uses
  %5 = extractelement <2 x float> %i.bf, i64 1    ; 2 uses
  %i.bi = extractelement <2 x float> %i.bf, i64 0 ; 2 uses
  %i.bj = call float @llvm.fmuladd.f32(float %i.an, float %.sroa.586.8.vec.extract, float %i.ak) ; 3 uses
  %6 = fmul float %i.bj, %i.bj
  %7 = call float @llvm.fmuladd.f32(float %5, float %5, float %6)
  %i.bk = call float @llvm.fmuladd.f32(float %i.bi, float %i.bi, float %7)
  %i.bl = call noundef float @llvm.fmuladd.f32(float %i.bh, float %i.bh, float %i.bk)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.bl)
  %i.bm = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.bn = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x float> %i.bf, %i.bo           ; 5 uses
  %i.bq = fmul float %i.bh, %i.bm                 ; 9 uses
  %i.br = extractelement <2 x float> %i.bp, i64 0 ; 5 uses
  %i.bs = fmul float %i.br, 0.000000e+00
  %i.bt = call float @llvm.fmuladd.f32(float %i.bq, float 0.000000e+00, float %i.bs)
  %i.bu = extractelement <2 x float> %i.bp, i64 1 ; 6 uses
  %i.bv = fsub float %i.bt, %i.bu                 ; 3 uses
  %i.bw = fmul float %i.bu, 0.000000e+00
  %i.bx = fmul float %i.bj, %i.bm                 ; 7 uses
  %i.by = fadd float %i.bq, %i.bw
  %i.bz = call float @llvm.fmuladd.f32(float %i.bq, float 0.000000e+00, float %i.bx)
  %i.ca = fneg float %i.br
  %i.cb = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.cc = insertelement <2 x float> %i.cb, float %i.bx, i64 0
  %i.cd = fneg <2 x float> %i.cc                  ; 3 uses
  %i.ce = fneg float %i.bu                        ; 3 uses
  %i.cf = insertelement <2 x float> poison, float %i.by, i64 0
  %i.cg = insertelement <2 x float> %i.cf, float %i.bz, i64 1
  %i.ch = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> zeroinitializer, <2 x float> %i.cg) ; 4 uses
  %i.ci = fmul float %i.bx, -0.000000e+00
  %i.cj = call float @llvm.fmuladd.f32(float %i.ce, float 0.000000e+00, float %i.ci)
  %i.ck = fsub float %i.cj, %i.br                 ; 2 uses
  %i.cl = extractelement <2 x float> %i.ch, i64 1
  %i.cm = fmul float %i.bq, %i.cl
  %i.cn = call float @llvm.fmuladd.f32(float %i.ck, float %i.ce, float %i.cm)
  %i.co = call float @llvm.fmuladd.f32(float %i.bv, float %i.ca, float %i.cn)
  %i.cp = extractelement <2 x float> %i.ch, i64 0
  %i.cq = call float @llvm.fmuladd.f32(float %i.cp, float %i.bx, float %i.co) ; 3 uses
  %i.cr = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cu = insertelement <2 x float> %i.ct, float %i.bv, i64 0
  %i.cv = fmul <2 x float> %i.cs, %i.cu
  %i.cw = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.cd, <2 x float> %i.cv)
  %i.cz = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.da = insertelement <2 x float> %i.cz, float %i.ce, i64 0
  %i.db = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> %i.da, <2 x float> %i.cy)
  %i.dc = insertelement <2 x float> %i.ct, float %i.bv, i64 1
  %i.dd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> %i.bp, <2 x float> %i.db) ; 4 uses
  %foldExtExtBinop117 = fmul <2 x float> %i.dd, %i.dd
  %i.de = extractelement <2 x float> %foldExtExtBinop117, i64 0
  %i.df = call float @llvm.fmuladd.f32(float %i.cq, float %i.cq, float %i.de)
  %i.dg = extractelement <2 x float> %i.dd, i64 1 ; 2 uses
  %i.dh = call noundef float @llvm.fmuladd.f32(float %i.dg, float %i.dg, float %i.df)
  %sqrt.i.i29 = call noundef float @llvm.sqrt.f32(float %i.dh)
  %i.di = fdiv float 1.000000e+00, %sqrt.i.i29    ; 2 uses
  %i.dj = fmul float %i.cq, %i.di                 ; 3 uses
  %i.dk = insertelement <2 x float> poison, float %i.di, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = fmul <2 x float> %i.dd, %i.dl           ; 4 uses
  %i.dn = extractelement <2 x float> %i.dm, i64 0
  %i.do = fmul float %i.dn, 0.000000e+00
  %i.dp = call float @llvm.fmuladd.f32(float %i.dj, float 0.000000e+00, float %i.do)
  %i.dq = extractelement <2 x float> %i.dm, i64 1 ; 2 uses
  %i.dr = fadd float %i.dq, %i.dp                 ; 2 uses
  %i.ds = fcmp olt float %i.dr, f0xBF7FFFFE
  br i1 %i.ds, label %_Z15shortestArcQuatRK9btVector3S1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.dt = fmul float %i.dj, -0.000000e+00
  %i.du = fmul float %i.dq, -0.000000e+00
  %i.dv = fadd float %i.dj, %i.du
  %i.dw = fadd float %i.dr, 1.000000e+00
  %i.dx = fmul float %i.dw, 2.000000e+00
  %i.dy = call noundef float @sqrtf(float noundef %i.dx) #20 ; 2 uses
  %i.dz = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.ea = fneg <2 x float> %i.dm
  %i.eb = shufflevector <2 x float> %i.dz, <2 x float> %i.ea, <2 x i32> <i32 0, i32 2>
  %i.ec = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> zeroinitializer, <2 x float> %i.eb) ; 2 uses
  %i.ed = fdiv float 1.000000e+00, %i.dy          ; 3 uses
  %i.ee = extractelement <2 x float> %i.ec, i64 1
  %i.ef = fmul float %i.ee, %i.ed
  %i.eg = fmul float %i.dv, %i.ed
  %i.eh = insertelement <2 x float> %i.ec, float %i.dy, i64 1
  %i.ei = insertelement <2 x float> <float poison, float 5.000000e-01>, float %i.ed, i64 0
  %i.ej = fmul <2 x float> %i.eh, %i.ei
  %.sroa.022.0.vec.insert25.i = insertelement <2 x float> poison, float %i.ef, i64 0
  %.sroa.022.4.vec.insert27.i = insertelement <2 x float> %.sroa.022.0.vec.insert25.i, float %i.eg, i64 1
  br label %_Z15shortestArcQuatRK9btVector3S1_.exit

_Z15shortestArcQuatRK9btVector3S1_.exit:          ; preds = %bb.a, %bb.b
  %.sroa.022.0.i = phi <2 x float> [ %.sroa.022.4.vec.insert27.i, %bb.b ], [ <float 0.000000e+00, float -1.000000e+00>, %bb.a ] ; 4 uses
  %.sroa.528.0.i = phi <2 x float> [ %i.ej, %bb.b ], [ zeroinitializer, %bb.a ] ; 4 uses
  %.sroa.073.0.vec.extract = extractelement <2 x float> %.sroa.022.0.i, i64 0 ; 3 uses
  %i.ek = fneg float %.sroa.073.0.vec.extract     ; 2 uses
  %.sroa.073.4.vec.extract = extractelement <2 x float> %.sroa.022.0.i, i64 1
  %i.el = fneg float %.sroa.073.4.vec.extract     ; 2 uses
  %.sroa.574.8.vec.extract = extractelement <2 x float> %.sroa.528.0.i, i64 0 ; 2 uses
  %i.em = fneg float %.sroa.574.8.vec.extract     ; 2 uses
  %.sroa.574.12.vec.extract = extractelement <2 x float> %.sroa.528.0.i, i64 1 ; 2 uses
  %i.en = fmul float %i.bq, %i.ek
  %i.eo = call float @llvm.fmuladd.f32(float %.sroa.574.12.vec.extract, float %i.bu, float %i.en)
  %i.ep = call float @llvm.fmuladd.f32(float %i.el, float %i.br, float %i.eo)
  %i.eq = call float @llvm.fmuladd.f32(float %.sroa.574.8.vec.extract, float %i.bx, float %i.ep) ; 2 uses
  %i.er = fmul float %i.bq, %i.el
  %i.es = call float @llvm.fmuladd.f32(float %.sroa.574.12.vec.extract, float %i.bx, float %i.er)
  %i.et = call float @llvm.fmuladd.f32(float %i.em, float %i.bu, float %i.es)
  %i.eu = call float @llvm.fmuladd.f32(float %.sroa.073.0.vec.extract, float %i.br, float %i.et) ; 2 uses
  %i.ev = fmul float %i.eu, %i.eu
  %i.ew = call float @llvm.fmuladd.f32(float %i.eq, float %i.eq, float %i.ev)
  %i.ex = fmul float %i.bq, %i.em
  %i.ey = fmul float %i.bu, %.sroa.073.0.vec.extract
  %i.ez = shufflevector <2 x float> %.sroa.528.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fa = insertelement <2 x float> %i.cb, float %i.bq, i64 0
  %i.fb = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.fc = insertelement <2 x float> %i.fb, float %i.ex, i64 1
  %i.fd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.fa, <2 x float> %i.fc)
  %i.fe = shufflevector <2 x float> %.sroa.022.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ff = insertelement <2 x float> %i.fe, float %i.ek, i64 1
  %i.fg = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ff, <2 x float> %i.fh, <2 x float> %i.fd)
  %i.fj = shufflevector <2 x float> %.sroa.528.0.i, <2 x float> %.sroa.022.0.i, <2 x i32> <i32 0, i32 3>
  %i.fk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %i.bp, <2 x float> %i.fi) ; 3 uses
  %i.fl = extractelement <2 x float> %i.fk, i64 1 ; 2 uses
  %i.fm = call float @llvm.fmuladd.f32(float %i.fl, float %i.fl, float %i.ew)
  %i.fn = extractelement <2 x float> %i.fk, i64 0 ; 2 uses
  %i.fo = call noundef float @llvm.fmuladd.f32(float %i.fn, float %i.fn, float %i.fm)
  %sqrt.i.i45 = call noundef float @llvm.sqrt.f32(float %i.fo)
  %i.fp = fdiv float 1.000000e+00, %sqrt.i.i45
  %i.fq = insertelement <2 x float> poison, float %i.fp, i64 0
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fs = fmul <2 x float> %i.fk, %i.fr           ; 3 uses
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fu = extractelement <2 x float> %i.fs, i64 0 ; 2 uses
  %i.fv = fcmp olt float %i.fu, -1.000000e+00
  %.0.i.i = select i1 %i.fv, float -1.000000e+00, float %i.fu ; 2 uses
  %i.fw = fcmp ogt float %.0.i.i, 1.000000e+00
  %.1.i.i = select i1 %i.fw, float 1.000000e+00, float %.0.i.i
  %i.fx = call noundef float @acosf(float noundef %.1.i.i) #20
  %i.fy = fmul float %i.fx, 2.000000e+00          ; 2 uses
  %i.fz = fcmp ogt float %i.fy, f0x40490FDB
  br i1 %i.fz, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_Z15shortestArcQuatRK9btVector3S1_.exit
  %i.ga = fneg <2 x float> %i.fs                  ; 2 uses
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gc = extractelement <2 x float> %i.ga, i64 0 ; 2 uses
  %i.gd = fcmp olt float %i.gc, -1.000000e+00
  %.0.i.i52 = select i1 %i.gd, float -1.000000e+00, float %i.gc ; 2 uses
  %i.ge = fcmp ogt float %.0.i.i52, 1.000000e+00
  %.1.i.i53 = select i1 %i.ge, float 1.000000e+00, float %.0.i.i52
  %i.gf = call noundef float @acosf(float noundef %.1.i.i53) #20
  %i.gg = fmul float %i.gf, 2.000000e+00
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_Z15shortestArcQuatRK9btVector3S1_.exit
  %.sroa.10.0 = phi <2 x float> [ %i.gb, %bb.c ], [ %i.ft, %_Z15shortestArcQuatRK9btVector3S1_.exit ]
  %.0 = phi float [ %i.gg, %bb.c ], [ %i.fy, %_Z15shortestArcQuatRK9btVector3S1_.exit ] ; 2 uses
  %.sroa.10.8.vec.extract65 = extractelement <2 x float> %.sroa.10.0, i64 0
  %i.gh = fcmp olt float %.sroa.10.8.vec.extract65, 0.000000e+00
  %i.gi = fneg float %.0
  %.1 = select i1 %i.gh, float %i.gi, float %.0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float %.1, ptr %i.a, align 4, !tbaa !11
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 712
  call void @_ZNK14btAngularLimit3fitERf(ptr noundef nonnull align 4 dereferenceable(29) %i.gj, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !30, !nonnull !31, !align !32 ; 7 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !38, !nonnull !31, !align !32 ; 8 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.gs = load float, ptr %i.gr, align 8, !tbaa !11 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gu = load float, ptr %i.gt, align 8, !tbaa !11 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gl, i64 28
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.gy = load float, ptr %i.gx, align 8, !tbaa !11 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gl, i64 40
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gl, i64 48
  %i.hb = load float, ptr %i.ha, align 8, !tbaa !11 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !11 ; 3 uses
  %i.he = load <2 x float>, ptr %i.gm, align 8, !tbaa !11 ; 2 uses
  %i.hf = load <2 x float>, ptr %i.gz, align 8, !tbaa !11 ; 2 uses
  %i.hg = load <2 x float>, ptr %i.f, align 8, !tbaa !11 ; 3 uses
  %i.hh = shufflevector <2 x float> %i.hg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hi = load <2 x float>, ptr %i.gq, align 8, !tbaa !11 ; 3 uses
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hk = shufflevector <2 x float> %i.he, <2 x float> %i.hf, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.hl = fmul <4 x float> %i.hk, %i.hj
  %i.hm = shufflevector <2 x float> %i.he, <2 x float> %i.hf, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.hn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hm, <4 x float> %i.hh, <4 x float> %i.hl) ; 4 uses
  %i.ho = extractelement <4 x float> %i.hn, i64 0
  %i.hp = call noundef float @llvm.fmuladd.f32(float %i.gu, float %i.gs, float %i.ho)
  %i.hq = extractelement <4 x float> %i.hn, i64 2
  %i.hr = call noundef float @llvm.fmuladd.f32(float %i.hb, float %i.gs, float %i.hq)
  %i.hs = extractelement <4 x float> %i.hn, i64 1
  %i.ht = call noundef float @llvm.fmuladd.f32(float %i.gu, float %i.hd, float %i.hs)
  %i.hu = extractelement <4 x float> %i.hn, i64 3
  %i.hv = call noundef float @llvm.fmuladd.f32(float %i.hb, float %i.hd, float %i.hu)
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 660
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 676
  %i.hz = load float, ptr %i.hw, align 4, !tbaa !11 ; 3 uses
  %i.ia = load float, ptr %i.hx, align 4, !tbaa !11 ; 3 uses
  %i.ib = load float, ptr %i.hy, align 4, !tbaa !11 ; 3 uses
  %i.ic = load float, ptr %i.gp, align 8, !tbaa !11
  %i.id = getelementptr inbounds nuw i8, ptr %i.go, i64 12
  %i.ie = load float, ptr %i.id, align 4, !tbaa !11
  %i.if = fmul float %i.ia, %i.ie
  %i.ig = call float @llvm.fmuladd.f32(float %i.ic, float %i.hz, float %i.if)
  %i.ih = getelementptr inbounds nuw i8, ptr %i.go, i64 16
end_hunk_1
