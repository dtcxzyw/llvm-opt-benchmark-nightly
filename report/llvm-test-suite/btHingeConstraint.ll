inline.NumInlined: 740
inline.NumDeleted: 107
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btVector3 = type { [4 x float] }
%class.btQuaternion = type { %class.btQuadWord }
%class.btQuadWord = type { [4 x float] }

$_Z21btAdjustAngleToLimitsfff = comdat any

$_ZN17btTypedConstraintD2Ev = comdat any

$_ZN17btHingeConstraintD0Ev = comdat any

$_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif = comdat any

$_ZNK11btMatrix3x311getRotationER12btQuaternion = comdat any

$_ZTI17btTypedConstraint = comdat any

$_ZTS17btTypedConstraint = comdat any

$_ZTI13btTypedObject = comdat any

$_ZTS13btTypedObject = comdat any

@_ZTV17btHingeConstraint = dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTI17btHingeConstraint, ptr @_ZN17btTypedConstraintD2Ev, ptr @_ZN17btHingeConstraintD0Ev, ptr @_ZN17btHingeConstraint13buildJacobianEv, ptr @_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif, ptr @_ZN17btHingeConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E, ptr @_ZN17btHingeConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E, ptr @_ZN17btHingeConstraint23solveConstraintObsoleteER12btSolverBodyS1_f] }, align 8
@_ZTI17btHingeConstraint = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17btHingeConstraint, ptr @_ZTI17btTypedConstraint }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS17btHingeConstraint = dso_local constant [20 x i8] c"17btHingeConstraint\00", align 1
@_ZTI17btTypedConstraint = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTS17btTypedConstraint, i32 0, i32 1, ptr @_ZTI13btTypedObject, i64 2050 }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTS17btTypedConstraint = linkonce_odr dso_local constant [20 x i8] c"17btTypedConstraint\00", comdat, align 1
@_ZTI13btTypedObject = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13btTypedObject }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS13btTypedObject = linkonce_odr dso_local constant [16 x i8] c"13btTypedObject\00", comdat, align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN17btHingeConstraintC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN17btHingeConstraintC2Ev
@_ZN17btHingeConstraintC1ER11btRigidBodyS1_RK9btVector3S4_RS2_S5_b = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr, i1), ptr @_ZN17btHingeConstraintC2ER11btRigidBodyS1_RK9btVector3S4_RS2_S5_b
@_ZN17btHingeConstraintC1ER11btRigidBodyRK9btVector3RS2_b = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i1), ptr @_ZN17btHingeConstraintC2ER11btRigidBodyRK9btVector3RS2_b
@_ZN17btHingeConstraintC1ER11btRigidBodyS1_RK11btTransformS4_b = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i1), ptr @_ZN17btHingeConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b
@_ZN17btHingeConstraintC1ER11btRigidBodyRK11btTransformb = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN17btHingeConstraintC2ER11btRigidBodyRK11btTransformb

; Function Attrs: uwtable
define dso_local void @_ZN17btHingeConstraintC2Ev(ptr noundef nonnull align 8 dereferenceable(792) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.preheader.preheader:
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintType(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 4)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV17btHingeConstraint, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 781
  store i8 0, ptr %i.a, align 1, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 783
  store i8 0, ptr %i.b, align 1, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i8 0, ptr %i.c, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 776
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !23
  ret void
}

declare void @_ZN17btTypedConstraintC2E21btTypedConstraintType(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: uwtable
define dso_local void @_ZN17btHingeConstraintC2ER11btRigidBodyS1_RK9btVector3S4_RS2_S5_b(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr noundef nonnull align 8 dereferenceable(564) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %6, i1 noundef zeroext %7) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.preheader.preheader:
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr noundef nonnull align 8 dereferenceable(564) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV17btHingeConstraint, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = zext i1 %7 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 780
  store i8 0, ptr %i.c, align 4, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 781
  store i8 0, ptr %i.d, align 1, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 783
  store i8 0, ptr %i.e, align 1, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i8 %i.a, ptr %i.f, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 648
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !25
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load float, ptr %i.h, align 8, !tbaa !27 ; 3 uses
  %i.l = load float, ptr %i.i, align 8, !tbaa !27 ; 3 uses
  %i.m = load float, ptr %i.j, align 8, !tbaa !27 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = load <2 x float>, ptr %5, align 4, !tbaa !27 ; 5 uses
  %i.q = load <2 x float>, ptr %i.n, align 4, !tbaa !27 ; 4 uses
  %i.r = extractelement <2 x float> %i.p, i64 1   ; 2 uses
  %i.s = fmul float %i.l, %i.r
  %i.t = extractelement <2 x float> %i.p, i64 0   ; 2 uses
  %i.u = tail call float @llvm.fmuladd.f32(float %i.t, float %i.k, float %i.s)
  %i.v = extractelement <2 x float> %i.q, i64 1
  %i.w = tail call noundef float @llvm.fmuladd.f32(float %i.v, float %i.m, float %i.u) ; 2 uses
  %i.x = fcmp ult float %i.w, f0x3F7FFFFE
  br i1 %i.x, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.preheader.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = load float, ptr %i.y, align 8, !tbaa !27
  %i.ac = load float, ptr %i.z, align 8, !tbaa !27
  %i.ad = load float, ptr %i.aa, align 8, !tbaa !27
  %i.ae = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.ac, i64 1
  %i.ag = fneg <2 x float> %i.af
  %i.ah = fneg float %i.ad
  %.sroa.3.12.vec.insert.i63 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ah, i64 0
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.al = load float, ptr %i.ai, align 4, !tbaa !27
  %.sroa.0.0.vec.insert.i66 = insertelement <2 x float> poison, float %i.al, i64 0
  %i.am = load float, ptr %i.aj, align 4, !tbaa !27
  %.sroa.0.4.vec.insert.i67 = insertelement <2 x float> %.sroa.0.0.vec.insert.i66, float %i.am, i64 1
  %i.an = load float, ptr %i.ak, align 4, !tbaa !27
  %.sroa.3.12.vec.insert.i68 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.an, i64 0
  br label %bb.e

bb.b:                                             ; preds = %.preheader.preheader
  %i.ao = fcmp ugt float %i.w, f0xBF7FFFFE
  br i1 %i.ao, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.as = load float, ptr %i.ap, align 8, !tbaa !27
  %.sroa.0.0.vec.insert.i71 = insertelement <2 x float> poison, float %i.as, i64 0
  %i.at = load float, ptr %i.aq, align 8, !tbaa !27
  %.sroa.0.4.vec.insert.i72 = insertelement <2 x float> %.sroa.0.0.vec.insert.i71, float %i.at, i64 1
  %i.au = load float, ptr %i.ar, align 8, !tbaa !27
  %.sroa.3.12.vec.insert.i73 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.au, i64 0
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ay = load float, ptr %i.av, align 4, !tbaa !27
  %.sroa.0.0.vec.insert.i76 = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.az = load float, ptr %i.aw, align 4, !tbaa !27
  %.sroa.0.4.vec.insert.i77 = insertelement <2 x float> %.sroa.0.0.vec.insert.i76, float %i.az, i64 1
  %i.ba = load float, ptr %i.ax, align 4, !tbaa !27
  %.sroa.3.12.vec.insert.i78 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ba, i64 0
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.bb = insertelement <2 x float> poison, float %i.k, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %i.l, i64 1 ; 2 uses
  %i.bd = fneg <2 x float> %i.bc
  %i.be = insertelement <2 x float> poison, float %i.m, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %i.k, i64 1
  %i.bg = fneg <2 x float> %i.bf
  %i.bh = fneg <2 x float> %i.q
  %i.bi = fmul <2 x float> %i.p, %i.bg
  %i.bj = fmul <2 x float> %i.q, %i.bd
  %i.bk = shufflevector <2 x float> %i.q, <2 x float> %i.p, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.bc, <2 x float> %i.bi) ; 4 uses
  %i.bm = insertelement <2 x float> poison, float %i.l, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.m, i64 1
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.bn, <2 x float> %i.bj) ; 3 uses
  %i.bp = shufflevector <2 x float> %i.bl, <2 x float> %i.bo, <2 x i32> <i32 3, i32 0>
  %i.bq = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.bl, <2 x i32> <i32 3, i32 1>
  %i.br = fmul <2 x float> %i.bo, %i.bh
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.bk, <2 x float> %i.br)
  %i.bt = fneg float %i.t
  %i.bu = extractelement <2 x float> %i.bl, i64 0
  %i.bv = fmul float %i.bu, %i.bt
  %i.bw = extractelement <2 x float> %i.bo, i64 1
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.r, float %i.bv)
  %.sroa.3.12.vec.insert.i88 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bx, i64 0
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.15.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i88, %bb.d ], [ %.sroa.3.12.vec.insert.i73, %bb.c ], [ %.sroa.3.12.vec.insert.i63, %bb.a ] ; 3 uses
  %.sroa.0121.0 = phi <2 x float> [ %i.bs, %bb.d ], [ %.sroa.0.4.vec.insert.i72, %bb.c ], [ %i.ag, %bb.a ] ; 3 uses
  %.sroa.10.0 = phi <2 x float> [ %i.bq, %bb.d ], [ %.sroa.3.12.vec.insert.i78, %bb.c ], [ %.sroa.3.12.vec.insert.i68, %bb.a ]
  %.sroa.0114.0 = phi <2 x float> [ %i.bp, %bb.d ], [ %.sroa.0.4.vec.insert.i77, %bb.c ], [ %.sroa.0.4.vec.insert.i67, %bb.a ] ; 2 uses
  %.sroa.0121.0.vec.extract125 = extractelement <2 x float> %.sroa.0121.0, i64 0 ; 3 uses
  store float %.sroa.0121.0.vec.extract125, ptr %i.b, align 8, !tbaa !27
  %.sroa.0114.0.vec.extract116 = extractelement <2 x float> %.sroa.0114.0, i64 0
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 604
  store float %.sroa.0114.0.vec.extract116, ptr %i.by, align 4, !tbaa !27
  %i.bz = load float, ptr %5, align 4, !tbaa !27
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 608
  store float %i.bz, ptr %i.ca, align 8, !tbaa !27
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 612
  store float 0.000000e+00, ptr %8, align 4, !tbaa !27
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 616
  %.sroa.0121.4.vec.extract131 = extractelement <2 x float> %.sroa.0121.0, i64 1 ; 4 uses
  store float %.sroa.0121.4.vec.extract131, ptr %i.cb, align 8, !tbaa !27
  %.sroa.0114.4.vec.extract118 = extractelement <2 x float> %.sroa.0114.0, i64 1
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 620
  store float %.sroa.0114.4.vec.extract118, ptr %i.cc, align 4, !tbaa !27
  %i.cd = load float, ptr %i.n, align 4, !tbaa !27
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 624
  store float %i.cd, ptr %i.ce, align 8, !tbaa !27
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 628
  store float 0.000000e+00, ptr %9, align 4, !tbaa !27
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 632
  %.sroa.15.8.vec.extract137 = extractelement <2 x float> %.sroa.15.0, i64 0 ; 3 uses
  store float %.sroa.15.8.vec.extract137, ptr %i.cf, align 8, !tbaa !27
  %.sroa.10.8.vec.extract120 = extractelement <2 x float> %.sroa.10.0, i64 0
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 636
  store float %.sroa.10.8.vec.extract120, ptr %i.cg, align 4, !tbaa !27
  %i.ch = load float, ptr %i.o, align 4, !tbaa !27
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 640
  store float %i.ch, ptr %i.ci, align 8, !tbaa !27
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 644
  store float 0.000000e+00, ptr %10, align 4, !tbaa !27
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.ck = load <2 x float>, ptr %i.n, align 4, !tbaa !27 ; 7 uses
  %i.cl = load <2 x float>, ptr %i.cj, align 4, !tbaa !27 ; 6 uses
  %i.cm = load float, ptr %6, align 4, !tbaa !27  ; 5 uses
  %i.cn = load float, ptr %5, align 4, !tbaa !27  ; 6 uses
  %i.co = extractelement <2 x float> %i.ck, i64 0 ; 5 uses
  %i.cp = extractelement <2 x float> %i.cl, i64 0 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.ck, %i.cl
  %i.cq = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.cm, float %i.cq)
  %i.cs = extractelement <2 x float> %i.ck, i64 1 ; 5 uses
  %i.ct = extractelement <2 x float> %i.cl, i64 1 ; 2 uses
  %i.cu = tail call noundef float @llvm.fmuladd.f32(float %i.cs, float %i.ct, float %i.cr) ; 2 uses
  %i.cv = fcmp olt float %i.cu, f0xBF7FFFFE
  br i1 %i.cv, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.cw = tail call noundef float @llvm.fabs.f32(float %i.cs)
  %i.cx = fcmp ogt float %i.cw, f0x3F3504F3
  br i1 %i.cx, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cy = fmul nnan float %i.cs, %i.cs
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.co, float %i.co, float %i.cy)
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.cz)
  %i.da = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.db = fneg float %i.cs
  %i.dc = fmul float %i.da, %i.db
  %i.dd = fmul float %i.co, %i.da
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i

bb.h:                                             ; preds = %bb.f
  %foldExtExtBinop142 = fmul <2 x float> %i.ck, %i.ck
  %i.de = extractelement <2 x float> %foldExtExtBinop142, i64 0
  %i.df = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.cn, float %i.de)
  %sqrt46.i.i = tail call float @llvm.sqrt.f32(float %i.df)
  %i.dg = fdiv float 1.000000e+00, %sqrt46.i.i    ; 2 uses
  %i.dh = fneg float %i.co
  %i.di = fmul float %i.dg, %i.dh
  %i.dj = fmul float %i.cn, %i.dg
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i

_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i:       ; preds = %bb.h, %bb.g
  %.sroa.8.0.i = phi float [ %i.dd, %bb.g ], [ 0.000000e+00, %bb.h ]
  %.sroa.517.0.i = phi float [ %i.dc, %bb.g ], [ %i.dj, %bb.h ]
  %.sroa.016.0.i = phi float [ 0.000000e+00, %bb.g ], [ %i.di, %bb.h ]
  %.sroa.020.0.vec.insert.i = insertelement <2 x float> poison, float %.sroa.016.0.i, i64 0
  %.sroa.020.4.vec.insert.i = insertelement <2 x float> %.sroa.020.0.vec.insert.i, float %.sroa.517.0.i, i64 1
  %.sroa.526.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.8.0.i, i64 0
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.dk = fneg float %i.cm
  %i.dl = fmul float %i.co, %i.dk
  %i.dm = fneg <2 x float> %i.cl
  %i.dn = fadd float %i.cu, 1.000000e+00
  %i.do = fmul float %i.dn, 2.000000e+00
  %i.dp = tail call noundef float @sqrtf(float noundef %i.do) #17, !tbaa !4 ; 2 uses
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.cp, float %i.dl)
  %i.dr = fdiv float 1.000000e+00, %i.dp          ; 2 uses
  %i.ds = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dt = insertelement <2 x float> %i.ds, float %i.cn, i64 1
  %i.du = fmul <2 x float> %i.dt, %i.dm
  %i.dv = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dw = insertelement <2 x float> %i.dv, float %i.cm, i64 1
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.dw, <2 x float> %i.du)
  %i.dy = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = fmul <2 x float> %i.dx, %i.dz
  %i.eb = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.ec = insertelement <2 x float> %i.eb, float %i.dp, i64 1
  %i.ed = insertelement <2 x float> <float poison, float 5.000000e-01>, float %i.dr, i64 0
  %i.ee = fmul <2 x float> %i.ec, %i.ed
  br label %bb.j

bb.j:                                             ; preds = %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i, %bb.i
  %.sroa.020.0.i = phi <2 x float> [ %.sroa.020.4.vec.insert.i, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i ], [ %i.ea, %bb.i ] ; 4 uses
  %.sroa.526.0.i = phi <2 x float> [ %.sroa.526.12.vec.insert.i, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i ], [ %i.ee, %bb.i ] ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 664
  %.sroa.6111.12.vec.extract = extractelement <2 x float> %.sroa.526.0.i, i64 1 ; 3 uses
  %.sroa.0110.4.vec.extract = extractelement <2 x float> %.sroa.020.0.i, i64 1 ; 2 uses
  %.sroa.6111.8.vec.extract = extractelement <2 x float> %.sroa.526.0.i, i64 0
  %i.eh = fneg float %.sroa.6111.8.vec.extract    ; 4 uses
  %.sroa.0110.0.vec.extract = extractelement <2 x float> %.sroa.020.0.i, i64 0 ; 2 uses
  %i.ei = fneg float %.sroa.0110.4.vec.extract    ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 712
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !25
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 668
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 676
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.eo = fneg float %.sroa.0121.4.vec.extract131
  %i.ep = shufflevector <2 x float> %.sroa.15.0, <2 x float> %.sroa.020.0.i, <4 x i32> <i32 0, i32 poison, i32 2, i32 3>
  %i.eq = insertelement <4 x float> %i.ep, float %.sroa.0121.0.vec.extract125, i64 1
  %i.er = shufflevector <2 x float> %.sroa.020.0.i, <2 x float> %.sroa.526.0.i, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.es = insertelement <4 x float> %i.er, float %.sroa.0121.4.vec.extract131, i64 2
  %i.et = insertelement <4 x float> %i.es, float %i.eo, i64 3
  %i.eu = fmul <4 x float> %i.eq, %i.et
  %11 = fneg float %.sroa.0110.0.vec.extract      ; 4 uses
  %i.ev = shufflevector <2 x float> %.sroa.526.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ew = insertelement <2 x float> %i.ev, float %11, i64 1
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ey = shufflevector <2 x float> %.sroa.0121.0, <2 x float> %.sroa.15.0, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ez = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ex, <4 x float> %i.ey, <4 x float> %i.eu) ; 4 uses
  %i.fa = extractelement <4 x float> %i.ez, i64 0
  %i.fb = tail call float @llvm.fmuladd.f32(float %i.eh, float %.sroa.0121.4.vec.extract131, float %i.fa) ; 3 uses
  %i.fc = extractelement <4 x float> %i.ez, i64 1
  %i.fd = tail call float @llvm.fmuladd.f32(float %11, float %.sroa.15.8.vec.extract137, float %i.fc) ; 3 uses
  %i.fe = extractelement <4 x float> %i.ez, i64 2
  %i.ff = tail call float @llvm.fmuladd.f32(float %i.ei, float %.sroa.0121.0.vec.extract125, float %i.fe) ; 3 uses
  %i.fg = extractelement <4 x float> %i.ez, i64 3
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.eh, float %.sroa.15.8.vec.extract137, float %i.fg) ; 3 uses
  %i.fi = fmul float %.sroa.6111.12.vec.extract, %i.fb
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.fh, float %11, float %i.fi)
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.fd, float %i.eh, float %i.fj)
  %i.fl = tail call float @llvm.fmuladd.f32(float %i.ff, float %.sroa.0110.4.vec.extract, float %i.fk) ; 3 uses
  %i.fm = fmul float %.sroa.6111.12.vec.extract, %i.fd
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.fh, float %i.ei, float %i.fm)
  %i.fo = fmul float %.sroa.6111.12.vec.extract, %i.ff
  %i.fp = tail call float @llvm.fmuladd.f32(float %i.fh, float %i.eh, float %i.fo)
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.fb, float %i.ei, float %i.fp)
  %i.fr = tail call float @llvm.fmuladd.f32(float %i.fd, float %.sroa.0110.0.vec.extract, float %i.fq) ; 3 uses
  %i.fs = fneg float %i.fr
  %i.ft = fmul float %i.cm, %i.fs
  %i.fu = tail call float @llvm.fmuladd.f32(float %i.ff, float %11, float %i.fn)
  %i.fv = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fw = insertelement <2 x float> %i.fv, float %i.fl, i64 1
  %i.fx = shufflevector <2 x float> %.sroa.526.0.i, <2 x float> %i.cl, <2 x i32> <i32 0, i32 3>
  %i.fy = insertelement <2 x float> poison, float %i.fu, i64 0
  %i.fz = insertelement <2 x float> %i.fy, float %i.ft, i64 1
  %i.ga = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fw, <2 x float> %i.fx, <2 x float> %i.fz) ; 2 uses
  %i.gb = extractelement <2 x float> %i.ga, i64 0 ; 2 uses
  %i.gc = fneg float %i.gb
  %i.gd = fmul float %i.ct, %i.gc
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.fr, float %i.gd)
  %i.gf = fneg float %i.fl
  %i.gg = fmul float %i.cp, %i.gf
  %i.gh = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.gb, float %i.gg)
  store float %i.fl, ptr %i.eg, align 8, !tbaa !27
  store float %i.ge, ptr %i.ek, align 4, !tbaa !27
  %i.gi = load float, ptr %6, align 4, !tbaa !27
  store float %i.gi, ptr %i.el, align 8, !tbaa !27
  store float 0.000000e+00, ptr %i.em, align 4, !tbaa !27
  store <2 x float> %i.ga, ptr %i.en, align 8, !tbaa !27
  %i.gj = load float, ptr %i.cj, align 4, !tbaa !27
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 688
  store float %i.gj, ptr %i.gk, align 8, !tbaa !27
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 692
  store float 0.000000e+00, ptr %i.gl, align 4, !tbaa !27
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 696
  store float %i.fr, ptr %i.gm, align 8, !tbaa !27
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 700
  store float %i.gh, ptr %i.gn, align 4, !tbaa !27
  %i.go = load float, ptr %i.ef, align 4, !tbaa !27
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 704
  store float %i.go, ptr %i.gp, align 8, !tbaa !27
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 708
  store float 0.000000e+00, ptr %i.gq, align 4, !tbaa !27
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 752
  store float -1.000000e+00, ptr %i.gr, align 8, !tbaa !28
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 736
  store <4 x float> <float f0x3F666666, float 3.000000e-01, float 1.000000e+00, float 1.000000e+00>, ptr %i.gs, align 8, !tbaa !27
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 782
  store i8 0, ptr %i.gt, align 2, !tbaa !29
  %i.gu = select i1 %7, float -1.000000e+00, float 1.000000e+00
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 776
  store float %i.gu, ptr %i.gv, align 8, !tbaa !23
  ret void
}

declare void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef, ptr noundef nonnull align 8 dereferenceable(564), ptr noundef nonnull align 8 dereferenceable(564)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: uwtable
define dso_local void @_ZN17btHingeConstraintC2ER11btRigidBodyRK9btVector3RS2_b(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, i1 noundef zeroext %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.preheader.preheader:
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBody(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(564) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV17btHingeConstraint, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = zext i1 %4 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 780
  store i8 0, ptr %i.c, align 4, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 781
  store i8 0, ptr %i.d, align 1, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 783
  store i8 0, ptr %i.e, align 1, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i8 %i.a, ptr %i.f, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !27 ; 6 uses
  %i.i = tail call noundef float @llvm.fabs.f32(float %i.h)
  %i.j = fcmp ogt float %i.i, f0x3F3504F3
  br i1 %i.j, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.preheader.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !27 ; 3 uses
  %i.m = fmul nnan float %i.h, %i.h
  %i.n = tail call float @llvm.fmuladd.f32(float %i.l, float %i.l, float %i.m) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.n)
  %i.o = fdiv float 1.000000e+00, %sqrt.i         ; 3 uses
  %i.p = fneg float %i.h
  %i.q = fmul float %i.o, %i.p                    ; 2 uses
  %i.r = fmul float %i.l, %i.o                    ; 2 uses
  %i.s = fmul float %i.n, %i.o
  %i.t = load float, ptr %3, align 4, !tbaa !27   ; 2 uses
  %i.u = fneg float %i.t
  %i.v = fmul float %i.r, %i.u
  %i.w = fmul float %i.t, %i.q
  br label %bb.c

bb.b:                                             ; preds = %.preheader.preheader
  %i.x = load float, ptr %3, align 4, !tbaa !27   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !27 ; 3 uses
  %i.aa = fmul float %i.z, %i.z
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.x, float %i.x, float %i.aa) ; 2 uses
  %sqrt46.i = tail call float @llvm.sqrt.f32(float %i.ab)
  %i.ac = fdiv float 1.000000e+00, %sqrt46.i      ; 3 uses
  %i.ad = fneg float %i.z
  %i.ae = fmul float %i.ac, %i.ad                 ; 2 uses
  %i.af = fmul float %i.x, %i.ac                  ; 2 uses
  %i.ag = fneg float %i.h
  %i.ah = fmul float %i.af, %i.ag
  %i.ai = fmul float %i.h, %i.ae
  %i.aj = fmul float %i.ab, %i.ac
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.11.0 = phi float [ %i.r, %bb.a ], [ 0.000000e+00, %bb.b ] ; 4 uses
  %.sroa.777.0 = phi float [ %i.q, %bb.a ], [ %i.af, %bb.b ] ; 4 uses
  %.sroa.075.0 = phi float [ 0.000000e+00, %bb.a ], [ %i.ae, %bb.b ] ; 4 uses
  %.sink48.i = phi float [ %i.s, %bb.a ], [ %i.ah, %bb.b ]
  %.sink47.i = phi float [ %i.v, %bb.a ], [ %i.ai, %bb.b ]
  %.sink.i = phi float [ %i.w, %bb.a ], [ %i.aj, %bb.b ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 648
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !25
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store float %.sroa.075.0, ptr %i.b, align 8, !tbaa !27
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 604
  store float %.sink48.i, ptr %i.am, align 4, !tbaa !27
  %i.an = load float, ptr %3, align 4, !tbaa !27
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ap = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.an, i64 0
  store <2 x float> %i.ap, ptr %i.ao, align 8, !tbaa !27
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 616
  store float %.sroa.777.0, ptr %i.aq, align 8, !tbaa !27
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 620
  store float %.sink47.i, ptr %i.ar, align 4, !tbaa !27
  %i.as = load float, ptr %i.al, align 4, !tbaa !27
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.au = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.as, i64 0
  store <2 x float> %i.au, ptr %i.at, align 8, !tbaa !27
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 632
  store float %.sroa.11.0, ptr %i.av, align 8, !tbaa !27
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 636
  store float %.sink.i, ptr %i.aw, align 4, !tbaa !27
  %i.ax = load float, ptr %i.g, align 4, !tbaa !27
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.az = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ax, i64 0
  store <2 x float> %i.az, ptr %i.ay, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load float, ptr %3, align 4, !tbaa !27  ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bf = load <2 x float>, ptr %i.ba, align 8, !tbaa !27 ; 3 uses
  %i.bg = load <2 x float>, ptr %i.bd, align 8, !tbaa !27 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bj = load <2 x float>, ptr %i.bh, align 8, !tbaa !27 ; 4 uses
  %i.bk = load <2 x float>, ptr %i.al, align 4, !tbaa !27 ; 9 uses
  %i.bl = load <2 x float>, ptr %i.bc, align 4, !tbaa !27 ; 3 uses
  %i.bm = load <2 x float>, ptr %i.be, align 4, !tbaa !27 ; 3 uses
  %i.bn = load <2 x float>, ptr %i.bi, align 4, !tbaa !27 ; 5 uses
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> %i.bl, <2 x i32> <i32 0, i32 2>
  %i.bp = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bq = fmul <2 x float> %i.bo, %i.bp
  %i.br = shufflevector <2 x float> %i.bm, <2 x float> %i.bn, <2 x i32> <i32 0, i32 2>
  %i.bs = fmul <2 x float> %i.bp, %i.br
  %i.bt = shufflevector <2 x float> %i.bj, <2 x float> %i.bf, <2 x i32> <i32 0, i32 2>
  %i.bu = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.bv, <2 x float> %i.bq)
  %i.bx = shufflevector <2 x float> %i.bg, <2 x float> %i.bj, <2 x i32> <i32 0, i32 2>
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.bv, <2 x float> %i.bs)
  %i.bz = shufflevector <2 x float> %i.bn, <2 x float> %i.bl, <2 x i32> <i32 1, i32 3>
  %i.ca = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.ca, <2 x float> %i.bw) ; 4 uses
  %i.cc = shufflevector <2 x float> %i.bm, <2 x float> %i.bn, <2 x i32> <i32 1, i32 3>
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.ca, <2 x float> %i.by) ; 3 uses
  %i.ce = extractelement <2 x float> %i.bk, i64 0 ; 5 uses
  %i.cf = extractelement <2 x float> %i.cd, i64 0 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.bk, %i.cd
  %i.cg = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ch = extractelement <2 x float> %i.cb, i64 1 ; 5 uses
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.ch, float %i.cg)
  %i.cj = extractelement <2 x float> %i.bk, i64 1 ; 5 uses
  %i.ck = extractelement <2 x float> %i.cb, i64 0 ; 3 uses
  %i.cl = tail call noundef float @llvm.fmuladd.f32(float %i.cj, float %i.ck, float %i.ci) ; 2 uses
  %i.cm = fcmp olt float %i.cl, f0xBF7FFFFE
  br i1 %i.cm, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.cn = tail call noundef float @llvm.fabs.f32(float %i.cj)
  %i.co = fcmp ogt float %i.cn, f0x3F3504F3
  br i1 %i.co, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cp = fmul nnan float %i.cj, %i.cj
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.ce, float %i.cp)
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.cq)
  %i.cr = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.cs = fneg float %i.cj
  %i.ct = fmul float %i.cr, %i.cs
  %i.cu = fmul float %i.ce, %i.cr
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i
end_hunk_0
begin_hunk_1_@_ZN17btHingeConstraint23solveConstraintObsoleteER12btSolverBodyS1_f:bb.a

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: uwtable
define dso_local void @_ZN17btHingeConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(792) %0, ptr nofree noundef captures(none) initializes((0, 8)) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 783
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21, !range !34, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4, !tbaa !83
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  store i32 5, ptr %1, align 4, !tbaa !83
  store i32 1, ptr %i.d, align 4, !tbaa !85
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31, !nonnull !32, !align !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37, !nonnull !32, !align !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = tail call noundef float @_ZN17btHingeConstraint13getHingeAngleERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.g, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.j) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 772 ; 2 uses
  store float %i.k, ptr %i.l, align 4, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 764
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.n, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 782 ; 3 uses
  store i8 0, ptr %i.o, align 2, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 748 ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !73 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.s = load float, ptr %i.r, align 8, !tbaa !28 ; 2 uses
  %i.t = fcmp ugt float %i.q, %i.s
  br i1 %i.t, label %_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.k, float noundef %i.q, float noundef %i.s) ; 4 uses
  store float %i.u, ptr %i.l, align 4, !tbaa !72
  %i.v = load float, ptr %i.p, align 4, !tbaa !73 ; 2 uses
  %i.w = fcmp ugt float %i.u, %i.v
  br i1 %i.w, label %bb.e, label %_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit.thread12

bb.e:                                             ; preds = %bb.d
  %i.x = load float, ptr %i.r, align 8, !tbaa !28 ; 2 uses
  %i.y = fcmp ult float %i.u, %i.x
  br i1 %i.y, label %_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit, label %_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit.thread12

_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit.thread12: ; preds = %bb.d, %bb.e
  %.sink12.i = phi float [ %i.v, %bb.d ], [ %i.x, %bb.e ]
  %.sink.i = phi float [ 1.000000e+00, %bb.d ], [ -1.000000e+00, %bb.e ]
  %i.z = fsub float %.sink12.i, %i.u
  store float %i.z, ptr %i.m, align 4, !tbaa !74
  store float %.sink.i, ptr %i.n, align 8, !tbaa !75
  store i8 1, ptr %i.o, align 2, !tbaa !29
  br label %bb.f

_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit: ; preds = %bb.e
  %.pre = load i8, ptr %i.o, align 2, !tbaa !29, !range !34
  %i.aa = icmp eq i8 %.pre, 0
  br i1 %i.aa, label %_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit.thread, label %bb.f

_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit.thread: ; preds = %bb.c, %_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 781
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !10, !range !34, !noundef !32
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit.thread12, %_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit.thread, %_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit
  %i.ae = load i32, ptr %1, align 4, !tbaa !83
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %1, align 4, !tbaa !83
  %i.ag = load i32, ptr %i.d, align 4, !tbaa !85
  %i.ah = add nsw i32 %i.ag, -1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.f
  %.sink = phi i32 [ %i.ah, %bb.f ], [ 0, %bb.b ]
  store i32 %.sink, ptr %i.d, align 4, !tbaa !85
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN17btHingeConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(792) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 783
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21, !range !34, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1
  %spec.select = select i1 %i.c, i32 0, i32 6
  store i32 %spec.select, ptr %1, align 4, !tbaa !83
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !85
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN17btHingeConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31, !nonnull !32, !align !33 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37, !nonnull !32, !align !33 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 344
  tail call void @_ZN17btHingeConstraint16getInfo2InternalEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.h)
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN17btHingeConstraint16getInfo2InternalEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !86   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !27, !noalias !90 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.j = load float, ptr %i.i, align 8, !tbaa !27, !noalias !90 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.l = load float, ptr %i.k, align 8, !tbaa !27, !noalias !90 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.n = load float, ptr %i.m, align 8, !tbaa !27, !noalias !90 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = load float, ptr %i.q, align 4, !tbaa !27, !noalias !90 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.v = load float, ptr %i.u, align 4, !tbaa !27, !noalias !90 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.z = load float, ptr %i.y, align 8, !tbaa !27, !noalias !95 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !27, !noalias !95
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = load float, ptr %i.af, align 4, !tbaa !27, !noalias !96 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !27, !noalias !96 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.ak = load float, ptr %i.aj, align 8, !tbaa !27, !noalias !96 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.am = load float, ptr %i.al, align 8, !tbaa !27, !noalias !96 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !27, !noalias !96 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.au = load float, ptr %i.at, align 4, !tbaa !27, !noalias !96 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !27, !noalias !101 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.ba = load <2 x float>, ptr %i.s, align 4, !tbaa !27, !noalias !90 ; 4 uses
  %i.bb = load float, ptr %i.t, align 4, !tbaa !27, !noalias !90 ; 2 uses
  %i.bc = load <2 x float>, ptr %i.w, align 8, !tbaa !27, !noalias !95 ; 3 uses
  %i.bd = load float, ptr %i.x, align 4, !tbaa !27, !noalias !95
  %i.be = load <2 x float>, ptr %3, align 4, !tbaa !27, !noalias !96 ; 3 uses
  %i.bf = load float, ptr %i.ae, align 4, !tbaa !27, !noalias !96
  %i.bg = load <2 x float>, ptr %i.an, align 4, !tbaa !27, !noalias !96 ; 2 uses
  %i.bh = load float, ptr %i.ao, align 4, !tbaa !27, !noalias !96
  %i.bi = load <2 x float>, ptr %i.ar, align 4, !tbaa !27, !noalias !96 ; 2 uses
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bk = load float, ptr %i.as, align 4, !tbaa !27, !noalias !96
  %i.bl = load <2 x float>, ptr %i.av, align 8, !tbaa !27, !noalias !101 ; 2 uses
  %i.bm = shufflevector <2 x float> %i.ba, <2 x float> %i.be, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.bn = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bo = shufflevector <4 x float> %i.bm, <4 x float> %i.bn, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.bp = shufflevector <2 x float> %i.bi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bq = shufflevector <4 x float> %i.bo, <4 x float> %i.bp, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.br = shufflevector <2 x float> %i.bc, <2 x float> %i.bl, <4 x i32> <i32 1, i32 3, i32 3, i32 3>
  %i.bs = fmul <4 x float> %i.bq, %i.br
  %i.bt = shufflevector <2 x float> %i.ba, <2 x float> %i.be, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.bu = shufflevector <4 x float> %i.bt, <4 x float> %i.bn, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.bv = shufflevector <4 x float> %i.bu, <4 x float> %i.bp, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bw = shufflevector <2 x float> %i.bc, <2 x float> %i.bl, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.bx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> %i.bw, <4 x float> %i.bs) ; 3 uses
  %i.by = extractelement <4 x float> %i.bx, i64 0
  %i.bz = tail call noundef float @llvm.fmuladd.f32(float %i.v, float %i.z, float %i.by)
  %i.ca = fadd float %i.bz, %i.ad                 ; 2 uses
  %6 = extractelement <4 x float> %i.bx, i64 1
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !27, !noalias !101
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !102 ; 3 uses
  %i.cf = sext i32 %i.b to i64                    ; 5 uses
  %i.cg = getelementptr [4 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 4
  %i.ci = shl nsw i32 %i.b, 1
  %i.cj = sext i32 %i.ci to i64                   ; 3 uses
  %i.ck = getelementptr [4 x i8], ptr %i.ce, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !103 ; 14 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.cf ; 4 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.cj ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %.idx = shl nsw i64 %i.cf, 3
  %i.db = extractelement <2 x float> %i.ba, i64 0
  %i.dc = load <2 x float>, ptr %i.c, align 8, !tbaa !27, !noalias !90 ; 3 uses
  %i.dd = load <2 x float>, ptr %i.d, align 8, !tbaa !27, !noalias !90 ; 3 uses
  %i.de = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.df = shufflevector <2 x float> %i.dc, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %i.dg = insertelement <3 x float> poison, float %i.ax, i64 0
  %i.dh = shufflevector <3 x float> %i.dg, <3 x float> %i.df, <4 x i32> <i32 0, i32 0, i32 4, i32 5>
  %i.di = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.dj = insertelement <4 x float> %i.di, float %i.aq, i64 0
  %i.dk = insertelement <4 x float> %i.dj, float %i.au, i64 1
  %i.dl = shufflevector <2 x float> %i.dd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dm = shufflevector <2 x float> %i.de, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.dn = fmul <4 x float> %i.dl, %i.dm
  %i.do = shufflevector <4 x float> %i.bx, <4 x float> %i.dn, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.dp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> %i.dk, <4 x float> %i.do) ; 3 uses
  %i.dq = extractelement <4 x float> %i.dp, i64 1
  %i.dr = fadd float %i.dq, %i.cc                 ; 2 uses
  %i.ds = fsub float %i.dr, %i.ca
  %i.dt = fmul float %i.l, %i.bb
  %i.du = tail call float @llvm.fmuladd.f32(float %i.j, float %i.db, float %i.dt)
  %i.dv = tail call noundef float @llvm.fmuladd.f32(float %i.n, float %i.v, float %i.du) ; 6 uses
  %i.dw = fmul float %i.bf, %i.ak
  %i.dx = extractelement <2 x float> %i.be, i64 0
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.dx, float %i.dw)
  %i.dz = tail call noundef float @llvm.fmuladd.f32(float %i.am, float %i.ag, float %i.dy) ; 2 uses
  %i.ea = mul nsw i32 %i.b, 3                     ; 3 uses
  %i.eb = shl nsw i32 %i.b, 2                     ; 2 uses
  %i.ec = sext i32 %i.ea to i64                   ; 3 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.ec
  %i.ee = add nsw i32 %i.ea, 1
  %i.ef = sext i32 %i.ee to i64                   ; 2 uses
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.ef
  %i.eh = add nsw i32 %i.ea, 2
  %i.ei = sext i32 %i.eh to i64                   ; 2 uses
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.ei
  %i.ek = sext i32 %i.eb to i64                   ; 3 uses
  %i.el = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.ek
  %i.em = load <2 x float>, ptr %2, align 4, !tbaa !27, !noalias !90 ; 5 uses
  %i.en = load float, ptr %i.e, align 4, !tbaa !27, !noalias !90 ; 2 uses
  %i.eo = load <2 x float>, ptr %i.o, align 4, !tbaa !27, !noalias !90 ; 4 uses
  %i.ep = load float, ptr %i.p, align 4, !tbaa !27, !noalias !90 ; 2 uses
  %i.eq = insertelement <4 x float> poison, float %i.bh, i64 0
  %i.er = insertelement <4 x float> %i.eq, float %i.en, i64 1
  %i.es = insertelement <4 x float> %i.er, float %i.bk, i64 2
  %i.et = insertelement <4 x float> %i.es, float %i.ep, i64 3
  %i.eu = insertelement <4 x float> poison, float %i.ak, i64 0
  %i.ev = insertelement <4 x float> %i.eu, float %i.bd, i64 1
  %i.ew = shufflevector <4 x float> %i.ev, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ex = fmul <4 x float> %i.et, %i.ew
  %i.ey = shufflevector <2 x float> %i.em, <2 x float> %i.eo, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.ez = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.fa = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.fb = shufflevector <4 x float> %i.fa, <4 x float> %i.ey, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.fc = shufflevector <2 x float> %i.bg, <2 x float> %i.bc, <4 x i32> <i32 0, i32 2, i32 poison, i32 2>
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> %i.bj, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.fe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> %i.fd, <4 x float> %i.ex) ; 2 uses
  %i.ff = load <2 x float>, ptr %i.aa, align 4, !tbaa !27, !noalias !95
  %i.fg = load <2 x float>, ptr %i.ay, align 4, !tbaa !27, !noalias !101
  %7 = tail call noundef float @llvm.fmuladd.f32(float %i.ag, float %i.ax, float %6)
  %8 = shufflevector <4 x float> %i.dp, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %9 = insertelement <2 x float> %8, float %7, i64 0
  %i.fh = fadd <2 x float> %i.fg, %9              ; 3 uses
  %i.fi = insertelement <2 x float> poison, float %i.h, i64 0
  %i.fj = insertelement <2 x float> %i.fi, float %i.r, i64 1 ; 2 uses
  %i.fk = insertelement <2 x float> poison, float %i.z, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = shufflevector <4 x float> %i.fe, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.fn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %i.fl, <2 x float> %i.fm)
  %i.fo = fadd <2 x float> %i.ff, %i.fn           ; 3 uses
  %i.fp = extractelement <2 x float> %i.fo, i64 0
  %i.fq = extractelement <2 x float> %i.fo, i64 1
  %i.fr = extractelement <2 x float> %i.fh, i64 0
  %i.fs = extractelement <2 x float> %i.fh, i64 1
  %i.ft = fsub <2 x float> %i.fh, %i.fo           ; 2 uses
  %i.fu = extractelement <2 x float> %i.ft, i64 0
  %i.fv = extractelement <2 x float> %i.ft, i64 1
  %i.fw = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fx = shufflevector <2 x float> %i.em, <2 x float> %i.eo, <2 x i32> <i32 1, i32 3>
  %i.fy = fmul <2 x float> %i.fw, %i.fx
  %i.fz = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ga = shufflevector <2 x float> %i.em, <2 x float> %i.eo, <2 x i32> <i32 0, i32 2>
  %i.gb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fz, <2 x float> %i.ga, <2 x float> %i.fy)
  %i.gc = insertelement <2 x float> %i.dd, float %i.l, i64 1
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ge = insertelement <4 x float> poison, float %i.en, i64 0
  %i.gf = insertelement <4 x float> %i.ge, float %i.ep, i64 1
  %i.gg = shufflevector <4 x float> %i.gf, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gh = fmul <4 x float> %i.gd, %i.gg
  %i.gi = shufflevector <2 x float> %i.dc, <2 x float> %i.em, <4 x i32> <i32 0, i32 0, i32 2, i32 poison>
  %i.gj = insertelement <4 x float> %i.gi, float %i.j, i64 3
  %i.gk = shufflevector <2 x float> %i.em, <2 x float> %i.eo, <4 x i32> <i32 0, i32 2, i32 poison, i32 2>
  %i.gl = insertelement <4 x float> %i.gk, float %i.j, i64 2
  %i.gm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gj, <4 x float> %i.gl, <4 x float> %i.gh) ; 4 uses
  %i.gn = extractelement <4 x float> %i.gm, i64 0
  %i.go = extractelement <4 x float> %i.gm, i64 2
  %i.gp = tail call noundef float @llvm.fmuladd.f32(float %i.n, float %i.h, float %i.go) ; 6 uses
  %i.gq = extractelement <4 x float> %i.gm, i64 1
  %i.gr = extractelement <4 x float> %i.gm, i64 3
  %i.gs = tail call noundef float @llvm.fmuladd.f32(float %i.n, float %i.r, float %i.gr) ; 6 uses
  %i.gt = or disjoint i32 %i.eb, 2
  %i.gu = sext i32 %i.gt to i64                   ; 2 uses
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.gu
  %i.gw = load <2 x float>, ptr %i.f, align 8, !tbaa !27, !noalias !90 ; 3 uses
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.gy = insertelement <3 x float> %i.gx, float %i.am, i64 2
  %i.gz = shufflevector <3 x float> %i.gy, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.ha = insertelement <4 x float> poison, float %i.v, i64 0
  %i.hb = insertelement <4 x float> %i.ha, float %i.aq, i64 1
  %i.hc = insertelement <4 x float> %i.hb, float %i.au, i64 2
  %i.hd = shufflevector <4 x float> %i.hc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  %i.he = shufflevector <4 x float> %i.dp, <4 x float> %i.fe, <4 x i32> <i32 2, i32 3, i32 4, i32 6>
  %i.hf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gz, <4 x float> %i.hd, <4 x float> %i.he) ; 5 uses
  store float 1.000000e+00, ptr %i.ce, align 4, !tbaa !27
  store float 1.000000e+00, ptr %i.ch, align 4, !tbaa !27
  store float 1.000000e+00, ptr %i.cl, align 4, !tbaa !27
  %i.hg = load float, ptr %i.aa, align 4, !tbaa !27
  %i.hh = fsub float %i.fp, %i.hg                 ; 2 uses
  %i.hi = load float, ptr %i.ab, align 4, !tbaa !27
  %i.hj = fsub float %i.fq, %i.hi                 ; 2 uses
  %i.hk = load float, ptr %i.ac, align 4, !tbaa !27
  %i.hl = fsub float %i.ca, %i.hk                 ; 2 uses
  %i.hm = fneg float %i.hh
  %i.hn = fneg float %i.hj
  %i.ho = fneg float %i.hl
  store float 0.000000e+00, ptr %i.cn, align 4, !tbaa !27
  store float %i.hl, ptr %i.cq, align 4, !tbaa !27
  store float %i.hn, ptr %i.cr, align 4, !tbaa !27
  store float 0.000000e+00, ptr %i.cs, align 4, !tbaa !27
  store float %i.ho, ptr %i.co, align 4, !tbaa !27
  store float 0.000000e+00, ptr %i.ct, align 4, !tbaa !27
  store float %i.hh, ptr %i.cu, align 4, !tbaa !27
  store float 0.000000e+00, ptr %i.cv, align 4, !tbaa !27
  store float %i.hj, ptr %i.cp, align 4, !tbaa !27
  store float %i.hm, ptr %i.cw, align 4, !tbaa !27
  store <2 x float> zeroinitializer, ptr %i.cx, align 4, !tbaa !27
  %i.hp = load float, ptr %i.ay, align 4, !tbaa !27
  %i.hq = fsub float %i.fr, %i.hp                 ; 2 uses
  %i.hr = load float, ptr %i.az, align 4, !tbaa !27
  %i.hs = fsub float %i.fs, %i.hr                 ; 2 uses
  %i.ht = load float, ptr %i.cb, align 4, !tbaa !27
  %i.hu = fsub float %i.dr, %i.ht                 ; 2 uses
  %i.hv = load ptr, ptr %i.cy, align 8, !tbaa !104 ; 14 uses
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %i.cf ; 4 uses
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %i.cj ; 3 uses
  %i.hy = fneg float %i.hu
  store float 0.000000e+00, ptr %i.hv, align 4, !tbaa !27
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  store float %i.hy, ptr %i.hz, align 4, !tbaa !27
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store float %i.hs, ptr %i.ia, align 4, !tbaa !27
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hv, i64 12
  store float 0.000000e+00, ptr %i.ib, align 4, !tbaa !27
  %i.ic = fneg float %i.hq
  store float %i.hu, ptr %i.hw, align 4, !tbaa !27
  %i.id = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  store float 0.000000e+00, ptr %i.id, align 4, !tbaa !27
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store float %i.ic, ptr %i.ie, align 4, !tbaa !27
  %i.if = getelementptr inbounds nuw i8, ptr %i.hw, i64 12
  store float 0.000000e+00, ptr %i.if, align 4, !tbaa !27
  %i.ig = fneg float %i.hs
  store float %i.ig, ptr %i.hx, align 4, !tbaa !27
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  store float %i.hq, ptr %i.ih, align 4, !tbaa !27
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store <2 x float> zeroinitializer, ptr %i.ii, align 4, !tbaa !27
  %i.ij = load float, ptr %1, align 8, !tbaa !105
  %i.ik = load float, ptr %i.cz, align 4, !tbaa !106
  %i.il = fmul float %i.ij, %i.ik                 ; 5 uses
  %i.im = load ptr, ptr %i.da, align 8, !tbaa !107 ; 3 uses
  %i.in = fmul float %i.il, %i.fu
  store float %i.in, ptr %i.im, align 4, !tbaa !27
  %i.io = fmul float %i.il, %i.fv
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.im, i64 %i.cf
  store float %i.io, ptr %i.ip, align 4, !tbaa !27
  %i.iq = fmul float %i.il, %i.ds
  %i.ir = getelementptr inbounds i8, ptr %i.im, i64 %.idx
  store float %i.iq, ptr %i.ir, align 4, !tbaa !27
  %i.is = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.it = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.is, <2 x float> %i.fj, <2 x float> %i.gb) ; 4 uses
  %i.iu = extractelement <2 x float> %i.gw, i64 0 ; 2 uses
  %i.iv = tail call noundef float @llvm.fmuladd.f32(float %i.iu, float %i.h, float %i.gn) ; 3 uses
  %i.iw = tail call noundef float @llvm.fmuladd.f32(float %i.iu, float %i.r, float %i.gq) ; 3 uses
  store float %i.iv, ptr %i.ed, align 4, !tbaa !27
  store float %i.iw, ptr %i.eg, align 4, !tbaa !27
  %i.ix = extractelement <4 x float> %i.hf, i64 0 ; 2 uses
  store float %i.ix, ptr %i.ej, align 4, !tbaa !27
  store <2 x float> %i.it, ptr %i.el, align 4, !tbaa !27
  %i.iy = extractelement <4 x float> %i.hf, i64 1 ; 2 uses
  store float %i.iy, ptr %i.gv, align 4, !tbaa !27
  %i.iz = fneg float %i.iv
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %i.ec
  store float %i.iz, ptr %i.ja, align 4, !tbaa !27
  %i.jb = fneg float %i.iw
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %i.ef
  store float %i.jb, ptr %i.jc, align 4, !tbaa !27
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %i.ei
  %i.je = fneg <4 x float> %i.hf                  ; 4 uses
  %i.jf = extractelement <4 x float> %i.je, i64 0
  store float %i.jf, ptr %i.jd, align 4, !tbaa !27
  %i.jg = extractelement <2 x float> %i.it, i64 0
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %i.ek
  %i.ji = extractelement <2 x float> %i.it, i64 1
  %i.jj = fneg <2 x float> %i.it
  store <2 x float> %i.jj, ptr %i.jh, align 4, !tbaa !27
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %i.gu
  %i.jl = extractelement <4 x float> %i.je, i64 1
  store float %i.jl, ptr %i.jk, align 4, !tbaa !27
  %i.jm = extractelement <4 x float> %i.je, i64 2
  %i.jn = fmul float %i.dv, %i.jm
  %i.jo = extractelement <4 x float> %i.hf, i64 3
  %i.jp = tail call float @llvm.fmuladd.f32(float %i.gs, float %i.jo, float %i.jn) ; 2 uses
  %i.jq = extractelement <4 x float> %i.je, i64 3
  %i.jr = fmul float %i.gp, %i.jq
  %i.js = tail call float @llvm.fmuladd.f32(float %i.dv, float %i.dz, float %i.jr) ; 2 uses
  %i.jt = fneg float %i.dz
  %i.ju = fmul float %i.gs, %i.jt
  %i.jv = extractelement <4 x float> %i.hf, i64 2
  %i.jw = tail call float @llvm.fmuladd.f32(float %i.gp, float %i.jv, float %i.ju) ; 2 uses
  %i.jx = fmul float %i.iw, %i.js
  %i.jy = tail call float @llvm.fmuladd.f32(float %i.jp, float %i.iv, float %i.jx)
  %i.jz = tail call noundef float @llvm.fmuladd.f32(float %i.jw, float %i.ix, float %i.jy)
  %i.ka = fmul float %i.jz, %i.il
  %i.kb = load ptr, ptr %i.da, align 8, !tbaa !107 ; 4 uses
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.kb, i64 %i.ec
  store float %i.ka, ptr %i.kc, align 4, !tbaa !27
  %i.kd = fmul float %i.ji, %i.js
  %i.ke = tail call float @llvm.fmuladd.f32(float %i.jp, float %i.jg, float %i.kd)
  %i.kf = tail call noundef float @llvm.fmuladd.f32(float %i.jw, float %i.iy, float %i.ke)
  %i.kg = fmul float %i.kf, %i.il
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.kb, i64 %i.ek
  store float %i.kg, ptr %i.kh, align 4, !tbaa !27
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 782
  %i.kj = load i8, ptr %i.ki, align 2, !tbaa !29, !range !34, !noundef !32
  %.not = icmp ne i8 %i.kj, 0                     ; 3 uses
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 764
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !74
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.kn = load float, ptr %i.km, align 8, !tbaa !23
  %i.ko = fmul float %i.kl, %i.kn                 ; 2 uses
  %i.kp = fcmp ogt float %i.ko, 0.000000e+00
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 781
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !10, !range !34, !noundef !32
  %i.ks = icmp eq i8 %i.kr, 0
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 781
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !10, !range !34, !noundef !32
  %i.kv = trunc nuw i8 %i.ku to i1
  br i1 %i.kv, label %bb.c, label %bb.q

bb.c:                                             ; preds = %.thread, %bb.b
  %spec.select308.in = phi i1 [ %i.ks, %.thread ], [ false, %bb.b ]
  %.0156307 = phi i1 [ %i.kp, %.thread ], [ false, %bb.b ] ; 3 uses
  %.0157306 = phi float [ %i.ko, %.thread ], [ 0.000000e+00, %bb.b ]
  %i.kw = mul nsw i32 %i.b, 5                     ; 3 uses
  %i.kx = sext i32 %i.kw to i64                   ; 11 uses
end_hunk_1
begin_hunk_2_@_ZN17btHingeConstraint13getHingeAngleERK11btTransformS2_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.cn = fsub float %i.ck, %i.cl
  %i.co = fadd float %i.ck, %i.cl
  %i.cp = fdiv float %i.cn, %i.co
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cp, float f0xBF490FDB, float f0x3F490FDB)
  br label %_Z11btAtan2Fastff.exit

bb.c:                                             ; preds = %bb.a
  %i.cr = fadd float %i.ck, %i.cl
  %i.cs = fsub float %i.cl, %i.ck
  %i.ct = fdiv float %i.cr, %i.cs
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ct, float f0xBF490FDB, float f0x4016CBE4)
  br label %_Z11btAtan2Fastff.exit

_Z11btAtan2Fastff.exit:                           ; preds = %bb.b, %bb.c
  %.0.i = phi float [ %i.cq, %bb.b ], [ %i.cu, %bb.c ] ; 2 uses
  %i.cv = fcmp olt float %i.cg, 0.000000e+00
  %i.cw = fneg float %.0.i
  %i.cx = select i1 %i.cv, float %i.cw, float %.0.i
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.cz = load float, ptr %i.cy, align 8, !tbaa !23
  %i.da = fmul float %i.cz, %i.cx
  ret float %i.da
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = fcmp ult float %1, %2
  br i1 %i.a, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp olt float %0, %1
  br i1 %i.b, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.c = fsub float %1, %0
  %i.d = tail call noundef float @fmodf(float noundef %i.c, float noundef f0x40C90FDB) #17, !tbaa !4 ; 5 uses
  %i.e = fcmp olt float %i.d, f0xC0490FDB
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = fadd float %i.d, f0x40C90FDB
  br label %_Z16btNormalizeAnglef.exit

bb.e:                                             ; preds = %bb.c
  %i.g = fcmp ogt float %i.d, f0x40490FDB
  br i1 %i.g, label %bb.f, label %_Z16btNormalizeAnglef.exit

bb.f:                                             ; preds = %bb.e
  %i.h = fadd float %i.d, f0xC0C90FDB
  br label %_Z16btNormalizeAnglef.exit

_Z16btNormalizeAnglef.exit:                       ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi float [ %i.f, %bb.d ], [ %i.h, %bb.f ], [ %i.d, %bb.e ]
  %i.i = fsub float %2, %0
  %i.j = tail call noundef float @fmodf(float noundef %i.i, float noundef f0x40C90FDB) #17, !tbaa !4 ; 5 uses
  %i.k = fcmp olt float %i.j, f0xC0490FDB
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_Z16btNormalizeAnglef.exit
  %i.l = fadd float %i.j, f0x40C90FDB
  br label %_Z16btNormalizeAnglef.exit29

bb.h:                                             ; preds = %_Z16btNormalizeAnglef.exit
  %i.m = fcmp ogt float %i.j, f0x40490FDB
  br i1 %i.m, label %bb.i, label %_Z16btNormalizeAnglef.exit29

bb.i:                                             ; preds = %bb.h
  %i.n = fadd float %i.j, f0xC0C90FDB
  br label %_Z16btNormalizeAnglef.exit29

_Z16btNormalizeAnglef.exit29:                     ; preds = %bb.g, %bb.h, %bb.i
  %.0.i28 = phi float [ %i.l, %bb.g ], [ %i.n, %bb.i ], [ %i.j, %bb.h ]
  %i.o = tail call noundef float @llvm.fabs.f32(float %.0.i28)
  %i.p = fcmp olt float %.0.i, %i.o
  %i.q = fadd float %0, f0x40C90FDB
  %i.r = select i1 %i.p, float %0, float %i.q
  br label %bb.r

bb.j:                                             ; preds = %bb.b
  %i.s = fcmp ogt float %0, %2
  br i1 %i.s, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.t = fsub float %0, %2
  %i.u = tail call noundef float @fmodf(float noundef %i.t, float noundef f0x40C90FDB) #17, !tbaa !4 ; 5 uses
  %i.v = fcmp olt float %i.u, f0xC0490FDB
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.w = fadd float %i.u, f0x40C90FDB
  br label %_Z16btNormalizeAnglef.exit31

bb.m:                                             ; preds = %bb.k
  %i.x = fcmp ogt float %i.u, f0x40490FDB
  br i1 %i.x, label %bb.n, label %_Z16btNormalizeAnglef.exit31

bb.n:                                             ; preds = %bb.m
  %i.y = fadd float %i.u, f0xC0C90FDB
  br label %_Z16btNormalizeAnglef.exit31

_Z16btNormalizeAnglef.exit31:                     ; preds = %bb.l, %bb.m, %bb.n
  %.0.i30 = phi float [ %i.w, %bb.l ], [ %i.y, %bb.n ], [ %i.u, %bb.m ]
  %i.z = fsub float %0, %1
  %i.aa = tail call noundef float @fmodf(float noundef %i.z, float noundef f0x40C90FDB) #17, !tbaa !4 ; 5 uses
  %i.ab = fcmp olt float %i.aa, f0xC0490FDB
  br i1 %i.ab, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_Z16btNormalizeAnglef.exit31
  %i.ac = fadd float %i.aa, f0x40C90FDB
  br label %_Z16btNormalizeAnglef.exit33

bb.p:                                             ; preds = %_Z16btNormalizeAnglef.exit31
  %i.ad = fcmp ogt float %i.aa, f0x40490FDB
  br i1 %i.ad, label %bb.q, label %_Z16btNormalizeAnglef.exit33

bb.q:                                             ; preds = %bb.p
  %i.ae = fadd float %i.aa, f0xC0C90FDB
  br label %_Z16btNormalizeAnglef.exit33

_Z16btNormalizeAnglef.exit33:                     ; preds = %bb.o, %bb.p, %bb.q
  %.0.i32 = phi float [ %i.ac, %bb.o ], [ %i.ae, %bb.q ], [ %i.aa, %bb.p ]
  %i.af = tail call noundef float @llvm.fabs.f32(float %.0.i32)
  %i.ag = fcmp olt float %i.af, %.0.i30
  %i.ah = fadd float %0, f0xC0C90FDB
  %i.ai = select i1 %i.ag, float %i.ah, float %0
  br label %bb.r

bb.r:                                             ; preds = %bb.j, %bb.a, %_Z16btNormalizeAnglef.exit33, %_Z16btNormalizeAnglef.exit29
  %.0 = phi float [ %0, %bb.a ], [ %i.r, %_Z16btNormalizeAnglef.exit29 ], [ %i.ai, %_Z16btNormalizeAnglef.exit33 ], [ %0, %bb.j ]
  ret float %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZN17btHingeConstraint14setMotorTargetERK12btQuaternionf(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, float noundef %2) local_unnamed_addr #11 align 2 {
bb.a:
  %3 = alloca %class.btQuaternion, align 8        ; 5 uses
  %4 = alloca %class.btQuaternion, align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 664
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %4)
  %.fca.0.load.i = load <2 x float>, ptr %4, align 8 ; 6 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.sroa.087.0.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 0
  %.sroa.087.4.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 1
  %.sroa.588.8.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 0 ; 2 uses
  %.sroa.588.12.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 1 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load float, ptr %i.b, align 4, !tbaa !27 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 600
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.fca.1.gep.i17 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = fneg float %.sroa.087.0.vec.extract
  %i.g = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.fca.0.load.i, <2 x i32> <i32 0, i32 2>
  %i.h = fneg <2 x float> %i.g
  %i.i = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 1, i32 2>
  %i.j = fneg <2 x float> %i.i                    ; 2 uses
  %i.k = load <2 x float>, ptr %1, align 4, !tbaa !27 ; 5 uses
  %i.l = load <2 x float>, ptr %i.d, align 4, !tbaa !27 ; 3 uses
  %i.m = fmul float %i.c, %i.f
  %i.n = insertelement <2 x float> poison, float %i.c, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x float> %i.o, %i.j
  %i.q = shufflevector <2 x float> %.fca.1.load.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.r = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.l, <2 x float> %i.p)
  %i.s = extractelement <2 x float> %i.k, i64 0
  %i.t = call float @llvm.fmuladd.f32(float %.sroa.588.12.vec.extract, float %i.s, float %i.m)
  %i.u = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %i.k, <2 x float> %i.r)
  %i.v = extractelement <2 x float> %i.l, i64 1   ; 2 uses
  %i.w = extractelement <2 x float> %i.j, i64 0
  %i.x = call float @llvm.fmuladd.f32(float %i.w, float %i.v, float %i.t)
  %i.y = shufflevector <2 x float> %i.l, <2 x float> %i.k, <2 x i32> <i32 1, i32 2>
  %i.z = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.fca.0.load.i, <2 x float> %i.y, <2 x float> %i.u) ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %.fca.0.load.i, %i.k
  %i.aa = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ab = call float @llvm.fmuladd.f32(float %.sroa.588.12.vec.extract, float %i.c, float %i.aa)
  %i.ac = extractelement <2 x float> %i.k, i64 1  ; 2 uses
  %i.ad = call float @llvm.fmuladd.f32(float %.sroa.087.4.vec.extract, float %i.ac, float %i.ab)
  %i.ae = call float @llvm.fmuladd.f32(float %.sroa.588.8.vec.extract, float %i.v, float %i.ad) ; 3 uses
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %3)
  %.fca.0.load.i15 = load <2 x float>, ptr %3, align 8 ; 5 uses
  %.fca.1.load.i18 = load <2 x float>, ptr %.fca.1.gep.i17, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.sroa.085.0.vec.extract = extractelement <2 x float> %.fca.0.load.i15, i64 0 ; 2 uses
  %.sroa.586.12.vec.extract = extractelement <2 x float> %.fca.1.load.i18, i64 1 ; 2 uses
  %.sroa.586.8.vec.extract = extractelement <2 x float> %.fca.1.load.i18, i64 0 ; 2 uses
  %.sroa.085.4.vec.extract = extractelement <2 x float> %.fca.0.load.i15, i64 1 ; 2 uses
  %i.af = extractelement <2 x float> %i.z, i64 0
  %i.ag = fmul float %i.af, %.sroa.586.12.vec.extract
  %i.ah = call float @llvm.fmuladd.f32(float %i.ae, float %.sroa.085.4.vec.extract, float %i.ag)
  %i.ai = extractelement <2 x float> %i.z, i64 1
  %i.aj = call float @llvm.fmuladd.f32(float %i.ai, float %.sroa.085.0.vec.extract, float %i.ah)
  %i.ak = fneg <2 x float> %i.z                   ; 3 uses
  %i.al = call float @llvm.fmuladd.f32(float %.sroa.588.8.vec.extract, float %i.ac, float %i.x) ; 4 uses
  %i.am = fneg float %i.al
  %5 = call float @llvm.fmuladd.f32(float %i.am, float %.sroa.586.8.vec.extract, float %i.aj) ; 3 uses
  %i.an = fneg float %.sroa.085.0.vec.extract
  %i.ao = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ap = insertelement <2 x float> %i.ao, float %i.al, i64 1
  %i.aq = shufflevector <2 x float> %.fca.1.load.i18, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ar = fmul <2 x float> %i.ap, %i.aq
  %i.as = fmul float %i.al, %i.an
  %i.at = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = shufflevector <2 x float> %.fca.1.load.i18, <2 x float> %.fca.0.load.i15, <2 x i32> <i32 0, i32 2>
  %i.aw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.av, <2 x float> %i.ar)
  %i.ax = call float @llvm.fmuladd.f32(float %i.ae, float %.sroa.586.12.vec.extract, float %i.as)
  %i.ay = insertelement <2 x float> poison, float %i.al, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> %i.z, <2 x i32> <i32 0, i32 2>
  %i.ba = shufflevector <2 x float> %.fca.0.load.i15, <2 x float> %.fca.1.load.i18, <2 x i32> <i32 1, i32 2>
  %i.bb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %i.ba, <2 x float> %i.aw)
  %i.bc = extractelement <2 x float> %i.ak, i64 0
  %i.bd = call float @llvm.fmuladd.f32(float %i.bc, float %.sroa.085.4.vec.extract, float %i.ax)
  %i.be = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %.fca.0.load.i15, <2 x float> %i.bb) ; 3 uses
  %i.bf = extractelement <2 x float> %i.ak, i64 1
  %i.bg = call float @llvm.fmuladd.f32(float %i.bf, float %.sroa.586.8.vec.extract, float %i.bd) ; 3 uses
  %6 = fmul float %5, %5
  %i.bh = extractelement <2 x float> %i.be, i64 1 ; 2 uses
  %i.bi = call float @llvm.fmuladd.f32(float %i.bh, float %i.bh, float %6)
  %7 = extractelement <2 x float> %i.be, i64 0    ; 2 uses
  %i.bj = call float @llvm.fmuladd.f32(float %7, float %7, float %i.bi)
  %i.bk = call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.bg, float %i.bj)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.bk)
  %i.bl = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.bm = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x float> %i.be, %i.bn           ; 5 uses
  %i.bp = fmul float %i.bg, %i.bl                 ; 9 uses
  %i.bq = extractelement <2 x float> %i.bo, i64 0 ; 5 uses
  %i.br = fmul float %i.bq, 0.000000e+00
  %i.bs = call float @llvm.fmuladd.f32(float %i.bp, float 0.000000e+00, float %i.br)
  %i.bt = extractelement <2 x float> %i.bo, i64 1 ; 6 uses
  %i.bu = fsub float %i.bs, %i.bt                 ; 3 uses
  %i.bv = fmul float %i.bt, 0.000000e+00
  %i.bw = fmul float %5, %i.bl                    ; 7 uses
  %i.bx = fadd float %i.bp, %i.bv
  %i.by = call float @llvm.fmuladd.f32(float %i.bp, float 0.000000e+00, float %i.bw)
  %i.bz = fneg float %i.bq
  %i.ca = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.cb = insertelement <2 x float> %i.ca, float %i.bw, i64 0
  %i.cc = fneg <2 x float> %i.cb                  ; 3 uses
  %i.cd = fneg float %i.bt                        ; 3 uses
  %i.ce = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.cf = insertelement <2 x float> %i.ce, float %i.by, i64 1
  %i.cg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> zeroinitializer, <2 x float> %i.cf) ; 4 uses
  %i.ch = fmul float %i.bw, -0.000000e+00
  %i.ci = call float @llvm.fmuladd.f32(float %i.cd, float 0.000000e+00, float %i.ch)
  %i.cj = fsub float %i.ci, %i.bq                 ; 2 uses
  %i.ck = extractelement <2 x float> %i.cg, i64 1
  %i.cl = fmul float %i.bp, %i.ck
  %i.cm = call float @llvm.fmuladd.f32(float %i.cj, float %i.cd, float %i.cl)
  %i.cn = call float @llvm.fmuladd.f32(float %i.bu, float %i.bz, float %i.cm)
  %i.co = extractelement <2 x float> %i.cg, i64 0
  %i.cp = call float @llvm.fmuladd.f32(float %i.co, float %i.bw, float %i.cn) ; 3 uses
  %i.cq = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ct = insertelement <2 x float> %i.cs, float %i.bu, i64 0
  %i.cu = fmul <2 x float> %i.cr, %i.ct
  %i.cv = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> %i.cc, <2 x float> %i.cu)
  %i.cy = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cz = insertelement <2 x float> %i.cy, float %i.cd, i64 0
  %i.da = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.cz, <2 x float> %i.cx)
  %i.db = insertelement <2 x float> %i.cs, float %i.bu, i64 1
  %i.dc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> %i.bo, <2 x float> %i.da) ; 4 uses
  %foldExtExtBinop119 = fmul <2 x float> %i.dc, %i.dc
  %i.dd = extractelement <2 x float> %foldExtExtBinop119, i64 0
  %i.de = call float @llvm.fmuladd.f32(float %i.cp, float %i.cp, float %i.dd)
  %i.df = extractelement <2 x float> %i.dc, i64 1 ; 2 uses
  %i.dg = call noundef float @llvm.fmuladd.f32(float %i.df, float %i.df, float %i.de)
  %sqrt.i.i29 = call noundef float @llvm.sqrt.f32(float %i.dg)
  %i.dh = fdiv float 1.000000e+00, %sqrt.i.i29    ; 2 uses
  %i.di = fmul float %i.cp, %i.dh                 ; 3 uses
  %i.dj = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = fmul <2 x float> %i.dc, %i.dk           ; 4 uses
  %i.dm = extractelement <2 x float> %i.dl, i64 0
  %i.dn = fmul float %i.dm, 0.000000e+00
  %i.do = call float @llvm.fmuladd.f32(float %i.di, float 0.000000e+00, float %i.dn)
  %i.dp = extractelement <2 x float> %i.dl, i64 1 ; 2 uses
  %i.dq = fadd float %i.dp, %i.do                 ; 2 uses
  %i.dr = fcmp olt float %i.dq, f0xBF7FFFFE
  br i1 %i.dr, label %_Z15shortestArcQuatRK9btVector3S1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ds = fmul float %i.di, -0.000000e+00
  %i.dt = fmul float %i.dp, -0.000000e+00
  %i.du = fadd float %i.di, %i.dt
  %i.dv = fadd float %i.dq, 1.000000e+00
  %i.dw = fmul float %i.dv, 2.000000e+00
  %i.dx = call noundef float @sqrtf(float noundef %i.dw) #17, !tbaa !4 ; 2 uses
  %i.dy = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.dz = fneg <2 x float> %i.dl
  %i.ea = shufflevector <2 x float> %i.dy, <2 x float> %i.dz, <2 x i32> <i32 0, i32 2>
  %i.eb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> zeroinitializer, <2 x float> %i.ea) ; 2 uses
  %i.ec = fdiv float 1.000000e+00, %i.dx          ; 3 uses
  %i.ed = extractelement <2 x float> %i.eb, i64 1
  %i.ee = fmul float %i.ed, %i.ec
  %i.ef = fmul float %i.du, %i.ec
  %i.eg = insertelement <2 x float> %i.eb, float %i.dx, i64 1
  %i.eh = insertelement <2 x float> <float poison, float 5.000000e-01>, float %i.ec, i64 0
  %i.ei = fmul <2 x float> %i.eg, %i.eh
  %.sroa.020.0.vec.insert23.i = insertelement <2 x float> poison, float %i.ee, i64 0
  %.sroa.020.4.vec.insert25.i = insertelement <2 x float> %.sroa.020.0.vec.insert23.i, float %i.ef, i64 1
  br label %_Z15shortestArcQuatRK9btVector3S1_.exit

_Z15shortestArcQuatRK9btVector3S1_.exit:          ; preds = %bb.a, %bb.b
  %.sroa.020.0.i = phi <2 x float> [ %.sroa.020.4.vec.insert25.i, %bb.b ], [ <float 0.000000e+00, float -1.000000e+00>, %bb.a ] ; 4 uses
  %.sroa.526.0.i = phi <2 x float> [ %i.ei, %bb.b ], [ zeroinitializer, %bb.a ] ; 4 uses
  %.sroa.073.0.vec.extract = extractelement <2 x float> %.sroa.020.0.i, i64 0 ; 3 uses
  %i.ej = fneg float %.sroa.073.0.vec.extract     ; 2 uses
  %.sroa.073.4.vec.extract = extractelement <2 x float> %.sroa.020.0.i, i64 1
  %i.ek = fneg float %.sroa.073.4.vec.extract     ; 2 uses
  %.sroa.574.8.vec.extract = extractelement <2 x float> %.sroa.526.0.i, i64 0 ; 2 uses
  %i.el = fneg float %.sroa.574.8.vec.extract     ; 2 uses
  %.sroa.574.12.vec.extract = extractelement <2 x float> %.sroa.526.0.i, i64 1 ; 2 uses
  %i.em = fmul float %i.bp, %i.ej
  %i.en = call float @llvm.fmuladd.f32(float %.sroa.574.12.vec.extract, float %i.bt, float %i.em)
  %i.eo = call float @llvm.fmuladd.f32(float %i.ek, float %i.bq, float %i.en)
  %i.ep = call float @llvm.fmuladd.f32(float %.sroa.574.8.vec.extract, float %i.bw, float %i.eo) ; 2 uses
  %i.eq = fmul float %i.bp, %i.ek
  %i.er = call float @llvm.fmuladd.f32(float %.sroa.574.12.vec.extract, float %i.bw, float %i.eq)
  %i.es = call float @llvm.fmuladd.f32(float %i.el, float %i.bt, float %i.er)
  %i.et = call float @llvm.fmuladd.f32(float %.sroa.073.0.vec.extract, float %i.bq, float %i.es) ; 2 uses
  %i.eu = fmul float %i.et, %i.et
  %i.ev = call float @llvm.fmuladd.f32(float %i.ep, float %i.ep, float %i.eu)
  %i.ew = fmul float %i.bp, %i.el
  %i.ex = fmul float %i.bt, %.sroa.073.0.vec.extract
  %i.ey = shufflevector <2 x float> %.sroa.526.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ez = insertelement <2 x float> %i.ca, float %i.bp, i64 0
  %i.fa = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fb = insertelement <2 x float> %i.fa, float %i.ew, i64 1
  %i.fc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> %i.ez, <2 x float> %i.fb)
  %i.fd = shufflevector <2 x float> %.sroa.020.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fe = insertelement <2 x float> %i.fd, float %i.ej, i64 1
  %i.ff = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fe, <2 x float> %i.fg, <2 x float> %i.fc)
  %i.fi = shufflevector <2 x float> %.sroa.526.0.i, <2 x float> %.sroa.020.0.i, <2 x i32> <i32 0, i32 3>
  %i.fj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fi, <2 x float> %i.bo, <2 x float> %i.fh) ; 3 uses
  %i.fk = extractelement <2 x float> %i.fj, i64 1 ; 2 uses
  %i.fl = call float @llvm.fmuladd.f32(float %i.fk, float %i.fk, float %i.ev)
  %i.fm = extractelement <2 x float> %i.fj, i64 0 ; 2 uses
  %i.fn = call noundef float @llvm.fmuladd.f32(float %i.fm, float %i.fm, float %i.fl)
  %sqrt.i.i47 = call noundef float @llvm.sqrt.f32(float %i.fn)
  %i.fo = fdiv float 1.000000e+00, %sqrt.i.i47
  %i.fp = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fr = fmul <2 x float> %i.fj, %i.fq           ; 3 uses
  %i.fs = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ft = extractelement <2 x float> %i.fr, i64 0
  %i.fu = call noundef float @acosf(float noundef %i.ft) #17, !tbaa !4
  %i.fv = fmul float %i.fu, 2.000000e+00          ; 2 uses
  %i.fw = fcmp ogt float %i.fv, f0x40490FDB
  br i1 %i.fw, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_Z15shortestArcQuatRK9btVector3S1_.exit
  %i.fx = fneg <2 x float> %i.fr                  ; 2 uses
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fz = extractelement <2 x float> %i.fx, i64 0
  %i.ga = call noundef float @acosf(float noundef %i.fz) #17, !tbaa !4
  %i.gb = fmul float %i.ga, 2.000000e+00
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_Z15shortestArcQuatRK9btVector3S1_.exit
  %.sroa.10.0 = phi <2 x float> [ %i.fy, %bb.c ], [ %i.fs, %_Z15shortestArcQuatRK9btVector3S1_.exit ]
  %.0 = phi float [ %i.gb, %bb.c ], [ %i.fv, %_Z15shortestArcQuatRK9btVector3S1_.exit ] ; 2 uses
  %.sroa.10.8.vec.extract65 = extractelement <2 x float> %.sroa.10.0, i64 0
  %i.gc = fcmp olt float %.sroa.10.8.vec.extract65, 0.000000e+00
  %i.gd = fneg float %.0
  %.1 = select i1 %i.gc, float %i.gd, float %.0   ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 748
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !73 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.gh = load float, ptr %i.gg, align 8, !tbaa !28 ; 3 uses
  %i.gi = fcmp olt float %i.gf, %i.gh
  br i1 %i.gi, label %bb.e, label %_ZN17btHingeConstraint14setMotorTargetEff.exit

bb.e:                                             ; preds = %bb.d
  %i.gj = fcmp olt float %.1, %i.gf
  br i1 %i.gj, label %_ZN17btHingeConstraint14setMotorTargetEff.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.gk = fcmp ogt float %.1, %i.gh
  br i1 %i.gk, label %bb.g, label %_ZN17btHingeConstraint14setMotorTargetEff.exit

bb.g:                                             ; preds = %bb.f
  br label %_ZN17btHingeConstraint14setMotorTargetEff.exit

_ZN17btHingeConstraint14setMotorTargetEff.exit:   ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi float [ %.1, %bb.d ], [ %i.gh, %bb.g ], [ %.1, %bb.f ], [ %i.gf, %bb.e ]
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !31, !nonnull !32, !align !33
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !37, !nonnull !32, !align !33
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = call noundef float @_ZN17btHingeConstraint13getHingeAngleERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull align 4 dereferenceable(64) %i.gn, ptr noundef nonnull align 4 dereferenceable(64) %i.gq)
  %i.gs = fsub float %.0.i, %i.gr
  %i.gt = fdiv float %i.gs, %2
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 728
  store float %i.gt, ptr %i.gu, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN17btHingeConstraint14setMotorTargetEff(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(792) %0, float noundef %1, float noundef %2) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 748
  %i.b = load float, ptr %i.a, align 4, !tbaa !73 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.d = load float, ptr %i.c, align 8, !tbaa !28 ; 3 uses
  %i.e = fcmp olt float %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = fcmp olt float %1, %i.b
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = fcmp ogt float %1, %i.d
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.0 = phi float [ %1, %bb.a ], [ %i.d, %bb.d ], [ %1, %bb.c ], [ %i.b, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31, !nonnull !32, !align !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37, !nonnull !32, !align !33
end_hunk_2
