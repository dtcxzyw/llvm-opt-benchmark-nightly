Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btHingeConstraint?download=true
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
  %8 = load float, ptr %i.y, align 8, !tbaa !27
  %9 = load float, ptr %i.z, align 8, !tbaa !27
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !27
  %10 = insertelement <2 x float> poison, float %8, i64 0
  %i.ac = insertelement <2 x float> %10, float %9, i64 1
  %i.ad = fneg <2 x float> %i.ac
  %i.ae = fneg float %i.ab
  %.sroa.3.12.vec.insert.i63 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ae, i64 0
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 44
  %11 = load float, ptr %i.af, align 4, !tbaa !27
  %.sroa.0.0.vec.insert.i66 = insertelement <2 x float> poison, float %11, i64 0
  %i.ai = load float, ptr %i.ag, align 4, !tbaa !27
  %.sroa.0.4.vec.insert.i67 = insertelement <2 x float> %.sroa.0.0.vec.insert.i66, float %i.ai, i64 1
  %i.aj = load float, ptr %i.ah, align 4, !tbaa !27
  %.sroa.3.12.vec.insert.i68 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aj, i64 0
  br label %bb.e

bb.b:                                             ; preds = %.preheader.preheader
  %i.ak = fcmp ugt float %i.w, f0xBF7FFFFE
  br i1 %i.ak, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  %12 = load float, ptr %i.al, align 8, !tbaa !27
  %.sroa.0.0.vec.insert.i71 = insertelement <2 x float> poison, float %12, i64 0
  %i.ao = load float, ptr %i.am, align 8, !tbaa !27
  %.sroa.0.4.vec.insert.i72 = insertelement <2 x float> %.sroa.0.0.vec.insert.i71, float %i.ao, i64 1
  %i.ap = load float, ptr %i.an, align 8, !tbaa !27
  %.sroa.3.12.vec.insert.i73 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ap, i64 0
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 12
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 44
  %14 = load float, ptr %i.aq, align 4, !tbaa !27
  %.sroa.0.0.vec.insert.i76 = insertelement <2 x float> poison, float %14, i64 0
  %15 = load float, ptr %13, align 4, !tbaa !27
  %.sroa.0.4.vec.insert.i77 = insertelement <2 x float> %.sroa.0.0.vec.insert.i76, float %15, i64 1
  %i.as = load float, ptr %i.ar, align 4, !tbaa !27
  %.sroa.3.12.vec.insert.i78 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.as, i64 0
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.at = insertelement <2 x float> poison, float %i.k, i64 0
  %i.au = insertelement <2 x float> %i.at, float %i.l, i64 1 ; 2 uses
  %i.av = fneg <2 x float> %i.au
  %i.aw = insertelement <2 x float> poison, float %i.m, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.k, i64 1
  %i.ay = fneg <2 x float> %i.ax
  %i.az = fneg <2 x float> %i.q
  %i.ba = fmul <2 x float> %i.p, %i.ay
  %i.bb = fmul <2 x float> %i.q, %i.av
  %i.bc = shufflevector <2 x float> %i.q, <2 x float> %i.p, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.au, <2 x float> %i.ba) ; 4 uses
  %i.be = insertelement <2 x float> poison, float %i.l, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %i.m, i64 1
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.bf, <2 x float> %i.bb) ; 3 uses
  %i.bh = shufflevector <2 x float> %i.bd, <2 x float> %i.bg, <2 x i32> <i32 3, i32 0>
  %i.bi = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.bd, <2 x i32> <i32 3, i32 1>
  %i.bj = fmul <2 x float> %i.bg, %i.az
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.bc, <2 x float> %i.bj)
  %i.bl = fneg float %i.t
  %i.bm = extractelement <2 x float> %i.bd, i64 0
  %i.bn = fmul float %i.bm, %i.bl
  %i.bo = extractelement <2 x float> %i.bg, i64 1
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.r, float %i.bn)
  %.sroa.3.12.vec.insert.i88 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bp, i64 0
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.15.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i88, %bb.d ], [ %.sroa.3.12.vec.insert.i73, %bb.c ], [ %.sroa.3.12.vec.insert.i63, %bb.a ] ; 3 uses
  %.sroa.0121.0 = phi <2 x float> [ %i.bk, %bb.d ], [ %.sroa.0.4.vec.insert.i72, %bb.c ], [ %i.ad, %bb.a ] ; 3 uses
  %.sroa.10.0 = phi <2 x float> [ %i.bi, %bb.d ], [ %.sroa.3.12.vec.insert.i78, %bb.c ], [ %.sroa.3.12.vec.insert.i68, %bb.a ]
  %.sroa.0114.0 = phi <2 x float> [ %i.bh, %bb.d ], [ %.sroa.0.4.vec.insert.i77, %bb.c ], [ %.sroa.0.4.vec.insert.i67, %bb.a ] ; 2 uses
  %.sroa.0121.0.vec.extract125 = extractelement <2 x float> %.sroa.0121.0, i64 0 ; 3 uses
  store float %.sroa.0121.0.vec.extract125, ptr %i.b, align 8, !tbaa !27
  %.sroa.0114.0.vec.extract116 = extractelement <2 x float> %.sroa.0114.0, i64 0
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 604
  store float %.sroa.0114.0.vec.extract116, ptr %i.bq, align 4, !tbaa !27
  %i.br = load float, ptr %5, align 4, !tbaa !27
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 608
  store float %i.br, ptr %i.bs, align 8, !tbaa !27
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 612
  store float 0.000000e+00, ptr %i.bt, align 4, !tbaa !27
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 616
  %.sroa.0121.4.vec.extract131 = extractelement <2 x float> %.sroa.0121.0, i64 1 ; 4 uses
  store float %.sroa.0121.4.vec.extract131, ptr %i.bu, align 8, !tbaa !27
  %.sroa.0114.4.vec.extract118 = extractelement <2 x float> %.sroa.0114.0, i64 1
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 620
  store float %.sroa.0114.4.vec.extract118, ptr %i.bv, align 4, !tbaa !27
  %i.bw = load float, ptr %i.n, align 4, !tbaa !27
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 624
  store float %i.bw, ptr %i.bx, align 8, !tbaa !27
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 628
  store float 0.000000e+00, ptr %i.by, align 4, !tbaa !27
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 632
  %.sroa.15.8.vec.extract137 = extractelement <2 x float> %.sroa.15.0, i64 0 ; 3 uses
  store float %.sroa.15.8.vec.extract137, ptr %i.bz, align 8, !tbaa !27
  %.sroa.10.8.vec.extract120 = extractelement <2 x float> %.sroa.10.0, i64 0
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 636
  store float %.sroa.10.8.vec.extract120, ptr %i.ca, align 4, !tbaa !27
  %i.cb = load float, ptr %i.o, align 4, !tbaa !27
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 640
  store float %i.cb, ptr %i.cc, align 8, !tbaa !27
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 644
  store float 0.000000e+00, ptr %i.cd, align 4, !tbaa !27
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.cf = load <2 x float>, ptr %i.n, align 4, !tbaa !27 ; 7 uses
  %i.cg = load <2 x float>, ptr %i.ce, align 4, !tbaa !27 ; 6 uses
  %i.ch = load float, ptr %6, align 4, !tbaa !27  ; 5 uses
  %i.ci = load float, ptr %5, align 4, !tbaa !27  ; 6 uses
  %i.cj = extractelement <2 x float> %i.cf, i64 0 ; 5 uses
  %i.ck = extractelement <2 x float> %i.cg, i64 0 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.cf, %i.cg
  %i.cl = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.ch, float %i.cl)
  %i.cn = extractelement <2 x float> %i.cf, i64 1 ; 5 uses
  %i.co = extractelement <2 x float> %i.cg, i64 1 ; 2 uses
  %i.cp = tail call noundef float @llvm.fmuladd.f32(float %i.cn, float %i.co, float %i.cm) ; 2 uses
  %i.cq = fcmp olt float %i.cp, f0xBF7FFFFE
  br i1 %i.cq, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.cr = tail call noundef float @llvm.fabs.f32(float %i.cn)
  %i.cs = fcmp ogt float %i.cr, f0x3F3504F3
  br i1 %i.cs, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ct = fmul nnan float %i.cn, %i.cn
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.cj, float %i.ct)
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.cu)
  %i.cv = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.cw = fneg float %i.cn
  %i.cx = fmul float %i.cv, %i.cw
  %i.cy = fmul float %i.cj, %i.cv
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i

bb.h:                                             ; preds = %bb.f
  %foldExtExtBinop142 = fmul <2 x float> %i.cf, %i.cf
  %i.cz = extractelement <2 x float> %foldExtExtBinop142, i64 0
  %i.da = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.ci, float %i.cz)
  %sqrt46.i.i = tail call float @llvm.sqrt.f32(float %i.da)
  %i.db = fdiv float 1.000000e+00, %sqrt46.i.i    ; 2 uses
  %i.dc = fneg float %i.cj
  %i.dd = fmul float %i.db, %i.dc
  %i.de = fmul float %i.ci, %i.db
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i

_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i:       ; preds = %bb.h, %bb.g
  %.sroa.8.0.i = phi float [ %i.cy, %bb.g ], [ 0.000000e+00, %bb.h ]
  %.sroa.517.0.i = phi float [ %i.cx, %bb.g ], [ %i.de, %bb.h ]
  %.sroa.016.0.i = phi float [ 0.000000e+00, %bb.g ], [ %i.dd, %bb.h ]
  %.sroa.020.0.vec.insert.i = insertelement <2 x float> poison, float %.sroa.016.0.i, i64 0
  %.sroa.020.4.vec.insert.i = insertelement <2 x float> %.sroa.020.0.vec.insert.i, float %.sroa.517.0.i, i64 1
  %.sroa.526.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.8.0.i, i64 0
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.df = fneg float %i.ch
  %i.dg = fmul float %i.cj, %i.df
  %i.dh = fneg <2 x float> %i.cg
  %i.di = fadd float %i.cp, 1.000000e+00
  %i.dj = fmul float %i.di, 2.000000e+00
  %i.dk = tail call noundef float @sqrtf(float noundef %i.dj) #17, !tbaa !4 ; 2 uses
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.ck, float %i.dg)
  %i.dm = fdiv float 1.000000e+00, %i.dk          ; 2 uses
  %i.dn = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.do = insertelement <2 x float> %i.dn, float %i.ci, i64 1
  %i.dp = fmul <2 x float> %i.do, %i.dh
  %i.dq = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dr = insertelement <2 x float> %i.dq, float %i.ch, i64 1
  %i.ds = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> %i.dr, <2 x float> %i.dp)
  %i.dt = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = fmul <2 x float> %i.ds, %i.du
  %i.dw = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.dx = insertelement <2 x float> %i.dw, float %i.dk, i64 1
  %i.dy = insertelement <2 x float> <float poison, float 5.000000e-01>, float %i.dm, i64 0
  %i.dz = fmul <2 x float> %i.dx, %i.dy
  br label %bb.j

bb.j:                                             ; preds = %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i, %bb.i
  %.sroa.020.0.i = phi <2 x float> [ %.sroa.020.4.vec.insert.i, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i ], [ %i.dv, %bb.i ] ; 4 uses
  %.sroa.526.0.i = phi <2 x float> [ %.sroa.526.12.vec.insert.i, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i ], [ %i.dz, %bb.i ] ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 664
  %.sroa.6111.12.vec.extract = extractelement <2 x float> %.sroa.526.0.i, i64 1 ; 3 uses
  %.sroa.0110.4.vec.extract = extractelement <2 x float> %.sroa.020.0.i, i64 1 ; 2 uses
  %.sroa.6111.8.vec.extract = extractelement <2 x float> %.sroa.526.0.i, i64 0
  %i.ec = fneg float %.sroa.6111.8.vec.extract    ; 4 uses
  %.sroa.0110.0.vec.extract = extractelement <2 x float> %.sroa.020.0.i, i64 0 ; 2 uses
  %i.ed = fneg float %.sroa.0110.4.vec.extract    ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 712
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !25
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 668
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 676
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ej = fneg float %.sroa.0121.4.vec.extract131
  %i.ek = shufflevector <2 x float> %.sroa.15.0, <2 x float> %.sroa.020.0.i, <4 x i32> <i32 0, i32 poison, i32 2, i32 3>
  %i.el = insertelement <4 x float> %i.ek, float %.sroa.0121.0.vec.extract125, i64 1
  %i.em = shufflevector <2 x float> %.sroa.020.0.i, <2 x float> %.sroa.526.0.i, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.en = insertelement <4 x float> %i.em, float %.sroa.0121.4.vec.extract131, i64 2
  %i.eo = insertelement <4 x float> %i.en, float %i.ej, i64 3
  %i.ep = fmul <4 x float> %i.el, %i.eo
  %i.eq = fneg float %.sroa.0110.0.vec.extract    ; 4 uses
  %i.er = shufflevector <2 x float> %.sroa.526.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.es = insertelement <2 x float> %i.er, float %i.eq, i64 1
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.eu = shufflevector <2 x float> %.sroa.0121.0, <2 x float> %.sroa.15.0, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ev = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.eu, <4 x float> %i.ep) ; 4 uses
  %i.ew = extractelement <4 x float> %i.ev, i64 0
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.ec, float %.sroa.0121.4.vec.extract131, float %i.ew) ; 3 uses
  %i.ey = extractelement <4 x float> %i.ev, i64 1
  %i.ez = tail call float @llvm.fmuladd.f32(float %i.eq, float %.sroa.15.8.vec.extract137, float %i.ey) ; 3 uses
  %i.fa = extractelement <4 x float> %i.ev, i64 2
  %i.fb = tail call float @llvm.fmuladd.f32(float %i.ed, float %.sroa.0121.0.vec.extract125, float %i.fa) ; 3 uses
  %i.fc = extractelement <4 x float> %i.ev, i64 3
  %i.fd = tail call float @llvm.fmuladd.f32(float %i.ec, float %.sroa.15.8.vec.extract137, float %i.fc) ; 3 uses
  %i.fe = fmul float %.sroa.6111.12.vec.extract, %i.ex
  %i.ff = tail call float @llvm.fmuladd.f32(float %i.fd, float %i.eq, float %i.fe)
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.ez, float %i.ec, float %i.ff)
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.fb, float %.sroa.0110.4.vec.extract, float %i.fg) ; 3 uses
  %i.fi = fmul float %.sroa.6111.12.vec.extract, %i.ez
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.fd, float %i.ed, float %i.fi)
  %i.fk = fmul float %.sroa.6111.12.vec.extract, %i.fb
  %i.fl = tail call float @llvm.fmuladd.f32(float %i.fd, float %i.ec, float %i.fk)
  %i.fm = tail call float @llvm.fmuladd.f32(float %i.ex, float %i.ed, float %i.fl)
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.ez, float %.sroa.0110.0.vec.extract, float %i.fm) ; 3 uses
  %i.fo = fneg float %i.fn
  %i.fp = fmul float %i.ch, %i.fo
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.fb, float %i.eq, float %i.fj)
  %i.fr = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fs = insertelement <2 x float> %i.fr, float %i.fh, i64 1
  %i.ft = shufflevector <2 x float> %.sroa.526.0.i, <2 x float> %i.cg, <2 x i32> <i32 0, i32 3>
  %i.fu = insertelement <2 x float> poison, float %i.fq, i64 0
  %i.fv = insertelement <2 x float> %i.fu, float %i.fp, i64 1
  %i.fw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fs, <2 x float> %i.ft, <2 x float> %i.fv) ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN17btHingeConstraintC2ER11btRigidBodyRK9btVector3RS2_b:.preheader.preheader
  store i8 0, ptr %i.hk, align 2, !tbaa !29
  %i.hl = select i1 %4, float -1.000000e+00, float 1.000000e+00
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 776
  store float %i.hl, ptr %i.hm, align 8, !tbaa !23
  ret void
}

declare void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBody(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef, ptr noundef nonnull align 8 dereferenceable(564)) unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN17btHingeConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr noundef nonnull align 8 dereferenceable(564) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4, i1 noundef zeroext %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.preheader.preheader:
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr noundef nonnull align 8 dereferenceable(564) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV17btHingeConstraint, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(64) %3, i64 16, i1 false), !tbaa.struct !25
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !25
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 632
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 664
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 4 dereferenceable(64) %4, i64 16, i1 false), !tbaa.struct !25
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 680
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !25
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 696
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !25
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !25
  %i.o = zext i1 %5 to i8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i8 %i.o, ptr %i.q, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 752
  store float -1.000000e+00, ptr %i.r, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 736
  store <4 x float> <float f0x3F666666, float 3.000000e-01, float 1.000000e+00, float 1.000000e+00>, ptr %i.s, align 8, !tbaa !27
  store <4 x i8> zeroinitializer, ptr %i.p, align 4, !tbaa !30
  %i.t = select i1 %5, float -1.000000e+00, float 1.000000e+00
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 776
  store float %i.t, ptr %i.u, align 8, !tbaa !23
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN17btHingeConstraintC2ER11btRigidBodyRK11btTransformb(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, i1 noundef zeroext %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.preheader.preheader:
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBody(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(564) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV17btHingeConstraint, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = zext i1 %3 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 600
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !25
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !25
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 632
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !25
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 664
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !25
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 680
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !25
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 696
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !25
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i8 %i.a, ptr %i.n, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31, !nonnull !32, !align !33 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load float, ptr %i.g, align 8, !tbaa !27 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.t = load float, ptr %i.s, align 4, !tbaa !27 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.v = load float, ptr %i.u, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.x = load float, ptr %i.w, align 8, !tbaa !27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !27
  %i.ac = load <2 x float>, ptr %i.q, align 8, !tbaa !27 ; 2 uses
  %i.ad = load <2 x float>, ptr %i.z, align 8, !tbaa !27 ; 2 uses
  %i.ae = insertelement <2 x float> poison, float %i.t, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = shufflevector <2 x float> %i.ac, <2 x float> %i.ad, <2 x i32> <i32 1, i32 3>
  %i.ah = fmul <2 x float> %i.af, %i.ag
  %i.ai = shufflevector <2 x float> %i.ac, <2 x float> %i.ad, <2 x i32> <i32 0, i32 2>
  %i.aj = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.ak, <2 x float> %i.ah)
  %i.am = insertelement <2 x float> poison, float %i.v, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.ab, i64 1
  %i.ao = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.ap, <2 x float> %i.al)
  %i.ar = load <2 x float>, ptr %i.y, align 8, !tbaa !27
  %i.as = fadd <2 x float> %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.au = load float, ptr %i.at, align 8, !tbaa !27
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  %i.aw = load float, ptr %i.av, align 4, !tbaa !27
  %i.ax = fmul float %i.t, %i.aw
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.au, float %i.r, float %i.ax)
  %i.az = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.ba = load float, ptr %i.az, align 8, !tbaa !27
  %i.bb = tail call noundef float @llvm.fmuladd.f32(float %i.ba, float %i.x, float %i.ay)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !27
  %i.be = fadd float %i.bd, %i.bb
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.be, i64 0
  store <2 x float> %i.as, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 720
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !26
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 752
  store float -1.000000e+00, ptr %i.bf, align 8, !tbaa !28
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 736
  store <4 x float> <float f0x3F666666, float 3.000000e-01, float 1.000000e+00, float 1.000000e+00>, ptr %i.bg, align 8, !tbaa !27
  store <4 x i8> zeroinitializer, ptr %i.m, align 4, !tbaa !30
  %i.bh = select i1 %3, float -1.000000e+00, float 1.000000e+00
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 776
  store float %i.bh, ptr %i.bi, align 8, !tbaa !23
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN17btHingeConstraint13buildJacobianEv(ptr nofree noundef nonnull align 8 dereferenceable(792) %0) unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca [3 x %class.btVector3], align 16    ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 783
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21, !range !34, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 0.000000e+00, ptr %i.d, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 788
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.g = load i8, ptr %i.f, align 4, !tbaa !24, !range !34, !noundef !32
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31, !nonnull !32, !align !33 ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.n = load float, ptr %i.m, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.p = load <4 x float>, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.t = load float, ptr %i.s, align 8, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.w = load float, ptr %i.v, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  %i.y = load float, ptr %i.x, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !37, !nonnull !32, !align !33 ; 12 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 716
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.af = load float, ptr %i.ae, align 8, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !27 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 56 ; 2 uses
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  %i.am = load float, ptr %i.al, align 8, !tbaa !27
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 60 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !27
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.as = load <2 x float>, ptr %i.k, align 8, !tbaa !27 ; 2 uses
  %i.at = load <2 x float>, ptr %i.l, align 8, !tbaa !27 ; 2 uses
  %i.au = load <2 x float>, ptr %i.r, align 8, !tbaa !27 ; 2 uses
  %i.av = load <2 x float>, ptr %i.q, align 8, !tbaa !27
  %i.aw = load <2 x float>, ptr %i.u, align 8, !tbaa !27
  %i.ax = load <2 x float>, ptr %i.ac, align 8, !tbaa !27 ; 3 uses
  %2 = load float, ptr %i.ad, align 4, !tbaa !27
  %i.ay = load <2 x float>, ptr %i.ak, align 8, !tbaa !27
  %i.az = load <2 x float>, ptr %i.an, align 4, !tbaa !27
  %i.ba = load float, ptr %i.ar, align 8, !tbaa !27
  %i.bb = shufflevector <2 x float> %i.at, <2 x float> %i.ax, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.bc = shufflevector <2 x float> %i.as, <2 x float> %i.au, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.bd = shufflevector <2 x float> %i.aw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.be = shufflevector <4 x float> %i.bc, <4 x float> %i.bd, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.bf = shufflevector <2 x float> %i.ay, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bg = shufflevector <4 x float> %i.be, <4 x float> %i.bf, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bh = fmul <4 x float> %i.bb, %i.bg
  %i.bi = shufflevector <2 x float> %i.as, <2 x float> %i.au, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> %i.bd, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> %i.bf, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bl = shufflevector <2 x float> %i.at, <2 x float> %i.ax, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.bm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bk, <4 x float> %i.bl, <4 x float> %i.bh)
  %i.bn = insertelement <4 x float> poison, float %i.n, i64 0
  %i.bo = insertelement <4 x float> %i.bn, float %i.t, i64 1
  %i.bp = insertelement <4 x float> %i.bo, float %i.w, i64 2
  %i.bq = insertelement <4 x float> %i.bp, float %i.am, i64 3
  %i.br = insertelement <4 x float> %i.p, float %i.ah, i64 1
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bq, <4 x float> %i.bs, <4 x float> %i.bm)
  %i.bu = insertelement <4 x float> poison, float %i.y, i64 2
  %i.bv = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bw = shufflevector <4 x float> %i.bu, <4 x float> %i.bv, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %i.bx = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> %i.bw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bz = fadd <4 x float> %i.bt, %i.by           ; 4 uses
  %shift = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop = fsub <4 x float> %shift, %i.bz
  %i.ca = extractelement <4 x float> %foldExtExtBinop, i64 1 ; 3 uses
  %i.cb = load <2 x float>, ptr %i.ab, align 8, !tbaa !27 ; 2 uses
  %i.cc = load <2 x float>, ptr %i.ao, align 8, !tbaa !27 ; 2 uses
  %i.cd = shufflevector <2 x float> %i.cb, <2 x float> %i.cc, <2 x i32> <i32 1, i32 3>
  %3 = insertelement <2 x float> poison, float %2, i64 0
  %i.ce = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = fmul <2 x float> %i.cd, %i.ce
  %i.cg = shufflevector <2 x float> %i.cb, <2 x float> %i.cc, <2 x i32> <i32 0, i32 2>
  %i.ch = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.ch, <2 x float> %i.cf)
  %i.cj = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ck = insertelement <2 x float> %i.cj, float %i.aq, i64 1
  %i.cl = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.cm, <2 x float> %i.ci)
  %i.co = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.cp = insertelement <2 x float> %i.co, float %i.ba, i64 1
  %i.cq = fadd <2 x float> %i.cp, %i.cn           ; 3 uses
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
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.cx)
  %i.cz = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.da = fmul float %i.ca, %i.cz                 ; 2 uses
  %i.db = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = fmul <2 x float> %i.cs, %i.dc           ; 5 uses
  %i.de = extractelement <2 x float> %i.dd, i64 1
  %i.df = extractelement <2 x float> %i.dd, i64 0
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %i.dd, float %i.da, i64 1
  %.sroa.3.12.vec.insert.i.i.i = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.dd, <2 x i32> <i32 3, i32 1>
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i, ptr %1, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %1, align 16, !tbaa !27
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
  br i1 %i.dn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.do = fmul nnan float %i.di, %i.di
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.dh, float %i.do) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.dp)
  %i.dq = fdiv float 1.000000e+00, %sqrt.i        ; 3 uses
  %i.dr = fneg <2 x float> %i.dj                  ; 2 uses
  %i.ds = extractelement <2 x float> %i.dr, i64 1
  %i.dt = fmul float %i.dq, %i.ds                 ; 2 uses
  %i.du = fmul float %i.dh, %i.dq                 ; 2 uses
  %i.dv = fmul float %i.dp, %i.dq
  %i.dw = extractelement <2 x float> %i.dr, i64 0
  %i.dx = fmul float %i.du, %i.dw
  %i.dy = fmul float %i.dt, %i.dg
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit

bb.h:                                             ; preds = %bb.f
  %i.dz = fmul float %i.dh, %i.dh
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.dg, float %i.dz) ; 2 uses
  %sqrt46.i = tail call float @llvm.sqrt.f32(float %i.ea)
  %i.eb = fdiv float 1.000000e+00, %sqrt46.i      ; 3 uses
  %i.ec = fneg float %i.dh
  %i.ed = fmul float %i.eb, %i.ec                 ; 2 uses
  %i.ee = fmul float %i.dg, %i.eb                 ; 2 uses
  %i.ef = fneg float %i.di
  %i.eg = fmul float %i.ee, %i.ef
  %i.eh = fmul float %i.di, %i.ed
  %i.ei = fmul float %i.ea, %i.eb
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit

_Z13btPlaneSpace1RK9btVector3RS_S2_.exit:         ; preds = %bb.g, %bb.h
  %.sink281 = phi float [ 0.000000e+00, %bb.g ], [ %i.ed, %bb.h ]
  %.sink280 = phi float [ %i.dt, %bb.g ], [ %i.ee, %bb.h ]
  %.sink = phi float [ %i.du, %bb.g ], [ 0.000000e+00, %bb.h ]
  %.sink48.i = phi float [ %i.dv, %bb.g ], [ %i.eg, %bb.h ]
  %.sink47.i = phi float [ %i.dx, %bb.g ], [ %i.eh, %bb.h ]
  %.sink.i = phi float [ %i.dy, %bb.g ], [ %i.ei, %bb.h ]
  store float %.sink281, ptr %i.dk, align 16, !tbaa !27
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float %.sink280, ptr %i.ej, align 4, !tbaa !27
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %.sink, ptr %i.ek, align 8, !tbaa !27
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float 0.000000e+00, ptr %i.el, align 4, !tbaa !27
  store float %.sink48.i, ptr %i.dl, align 16, !tbaa !27
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 36
  store float %.sink47.i, ptr %i.em, align 4, !tbaa !27
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %.sink.i, ptr %i.en, align 8, !tbaa !27
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 44
  store float 0.000000e+00, ptr %i.eo, align 4, !tbaa !27
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.eq = getelementptr inbounds nuw i8, ptr %i.j, i64 428
  %i.er = getelementptr inbounds nuw i8, ptr %i.j, i64 360
  %i.es = getelementptr inbounds nuw i8, ptr %i.aa, i64 428
  %i.et = getelementptr inbounds nuw i8, ptr %i.aa, i64 360
  %i.eu = getelementptr inbounds nuw i8, ptr %i.j, i64 436
  %i.ev = getelementptr inbounds nuw i8, ptr %i.aa, i64 436
  %i.ew = extractelement <2 x float> %i.cq, i64 0
  %i.ex = extractelement <2 x float> %i.cq, i64 1
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.k

bb.j:                                             ; preds = %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit, %bb.j
  %indvars.iv = phi i64 [ 0, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.ey = getelementptr inbounds nuw [84 x i8], ptr %i.ep, i64 %indvars.iv ; 13 uses
  %i.ez = load float, ptr %i.m, align 8, !tbaa !27, !noalias !38
  %i.fa = load float, ptr %i.s, align 8, !tbaa !27, !noalias !38
  %i.fb = load float, ptr %i.v, align 8, !tbaa !27, !noalias !38
  %i.fc = load float, ptr %i.ae, align 8, !tbaa !27, !noalias !41
  %i.fd = load float, ptr %i.al, align 8, !tbaa !27, !noalias !41
  %i.fe = load float, ptr %i.ap, align 8, !tbaa !27, !noalias !41
  %i.ff = load float, ptr %i.x, align 8, !tbaa !27
  %i.fg = load float, ptr %i.ai, align 8, !tbaa !27
  %i.fh = fsub float %i.ew, %i.fg                 ; 2 uses
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv
  %i.fj = load float, ptr %i.er, align 8, !tbaa !44
  %i.fk = load float, ptr %i.et, align 8, !tbaa !44
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ey, i64 64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fr = load <2 x float>, ptr %i.k, align 8, !tbaa !27, !noalias !38
  %i.fs = load <2 x float>, ptr %i.r, align 8, !tbaa !27, !noalias !38
  %i.ft = load <2 x float>, ptr %i.u, align 8, !tbaa !27, !noalias !38
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fu = load <2 x float>, ptr %i.ab, align 8, !tbaa !27, !noalias !41
  %i.fv = load <2 x float>, ptr %i.ak, align 8, !tbaa !27, !noalias !41
  %i.fw = load <2 x float>, ptr %i.ao, align 8, !tbaa !27, !noalias !41
  %i.fx = load <2 x float>, ptr %i.q, align 8, !tbaa !27
  %i.fy = load <2 x float>, ptr %i.an, align 4, !tbaa !27
  %i.fz = load float, ptr %i.ar, align 8, !tbaa !27
  %i.ga = insertelement <4 x float> poison, float %i.ff, i64 2
  %i.gb = shufflevector <2 x float> %i.fy, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gc = shufflevector <4 x float> %i.ga, <4 x float> %i.gb, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %i.gd = shufflevector <2 x float> %i.fx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ge = shufflevector <4 x float> %i.gd, <4 x float> %i.gc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gf = fsub <4 x float> %i.bz, %i.ge           ; 3 uses
  %i.gg = fsub float %i.ex, %i.fz                 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %i.ey, ptr noundef nonnull align 16 dereferenceable(16) %i.fi, i64 16, i1 false), !tbaa.struct !25
  %i.gh = load float, ptr %i.fp, align 4, !tbaa !27 ; 3 uses
  %i.gi = load <2 x float>, ptr %i.ey, align 4, !tbaa !27 ; 2 uses
  %i.gj = load float, ptr %i.fq, align 4, !tbaa !27
  %i.gk = fneg float %i.gj                        ; 2 uses
  %i.gl = fneg float %i.gh
  %i.gm = extractelement <2 x float> %i.gi, i64 0 ; 2 uses
  %i.gn = fneg float %i.gm                        ; 2 uses
  %i.go = insertelement <4 x float> %i.gf, float %i.gg, i64 3
  %i.gp = insertelement <4 x float> poison, float %i.gl, i64 0
  %i.gq = insertelement <4 x float> %i.gp, float %i.gn, i64 1
  %i.gr = insertelement <4 x float> %i.gq, float %i.gk, i64 2
  %i.gs = shufflevector <2 x float> %i.gi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gt = shufflevector <4 x float> %i.gr, <4 x float> %i.gs, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.gu = fmul <4 x float> %i.go, %i.gt
  %i.gv = shufflevector <4 x float> %i.gu, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.gw = shufflevector <4 x float> %i.gs, <4 x float> %i.gt, <4 x i32> <i32 1, i32 poison, i32 0, i32 4>
  %i.gx = insertelement <4 x float> %i.gw, float %i.gh, i64 1
  %i.gy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gf, <4 x float> %i.gx, <4 x float> %i.gv) ; 8 uses
  %i.gz = shufflevector <4 x float> %i.gy, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ha = fmul <2 x float> %i.fs, %i.gz
  %i.hb = shufflevector <4 x float> %i.gy, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fr, <2 x float> %i.hb, <2 x float> %i.ha)
  %i.hd = shufflevector <4 x float> %i.gy, <4 x float> poison, <2 x i32> zeroinitializer
  %i.he = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.hd, <2 x float> %i.hc) ; 4 uses
  %i.hf = extractelement <4 x float> %i.gy, i64 2
  %i.hg = fmul float %i.fa, %i.hf
  %i.hh = extractelement <4 x float> %i.gy, i64 1
  %i.hi = tail call float @llvm.fmuladd.f32(float %i.ez, float %i.hh, float %i.hg)
  %i.hj = extractelement <4 x float> %i.gy, i64 0
  %i.hk = tail call noundef float @llvm.fmuladd.f32(float %i.fb, float %i.hj, float %i.hi) ; 3 uses
  %.sroa.3.12.vec.insert.i18.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hk, i64 0
  store <2 x float> %i.he, ptr %i.fl, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i18.i, ptr %.sroa.46.0..sroa_idx.i, align 4, !tbaa !26
  %i.hl = fmul float %i.fh, %i.gh
  %i.hm = tail call float @llvm.fmuladd.f32(float %i.gg, float %i.gn, float %i.hl) ; 2 uses
  %i.hn = extractelement <4 x float> %i.gf, i64 3
  %i.ho = fmul float %i.hn, %i.gm
  %i.hp = tail call float @llvm.fmuladd.f32(float %i.fh, float %i.gk, float %i.ho) ; 2 uses
  %i.hq = insertelement <2 x float> poison, float %i.hm, i64 0
  %i.hr = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hs = fmul <2 x float> %i.fv, %i.hr
  %i.ht = shufflevector <4 x float> %i.gy, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.hu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fu, <2 x float> %i.ht, <2 x float> %i.hs)
end_hunk_1
begin_hunk_2_@_ZN17btHingeConstraint23solveConstraintObsoleteER12btSolverBodyS1_f:bb.a
  %i.all = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.alk, <2 x float> %i.ajn, <2 x float> %i.ali)
  store <2 x float> %i.akt, ptr %2, align 8, !tbaa !27
  store float %i.akw, ptr %i.aku, align 8, !tbaa !27
  %i.alm = load <2 x float>, ptr %i.akx, align 8, !tbaa !27
  %i.aln = insertelement <2 x float> poison, float %i.ako, i64 0
  %i.alo = shufflevector <2 x float> %i.aln, <2 x float> poison, <2 x i32> zeroinitializer
  %i.alp = fmul <2 x float> %i.alm, %i.alo
  %i.alq = fmul <2 x float> %i.all, %i.alp
  %i.alr = load <2 x float>, ptr %i.alc, align 8, !tbaa !27
  %i.als = fadd <2 x float> %i.alq, %i.alr
  store <2 x float> %i.als, ptr %i.alc, align 8, !tbaa !27
  %i.alt = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.alu = load float, ptr %i.alt, align 8, !tbaa !27
  %i.alv = fadd float %i.alb, %i.alu
  store float %i.alv, ptr %i.alt, align 8, !tbaa !27
  br label %bb.t

bb.t:                                             ; preds = %bb.n, %bb.s, %bb.a
  ret void
}

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
  %6 = load float, ptr %i.ao, align 4, !tbaa !27, !noalias !96
  %i.bh = load <2 x float>, ptr %i.ar, align 4, !tbaa !27, !noalias !96 ; 2 uses
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bj = load float, ptr %i.as, align 4, !tbaa !27, !noalias !96
  %i.bk = load <2 x float>, ptr %i.av, align 8, !tbaa !27, !noalias !101 ; 2 uses
  %i.bl = shufflevector <2 x float> %i.ba, <2 x float> %i.be, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.bm = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bn = shufflevector <4 x float> %i.bl, <4 x float> %i.bm, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.bo = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bp = shufflevector <4 x float> %i.bn, <4 x float> %i.bo, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bq = shufflevector <2 x float> %i.bc, <2 x float> %i.bk, <4 x i32> <i32 1, i32 3, i32 3, i32 3>
  %i.br = fmul <4 x float> %i.bp, %i.bq
  %i.bs = shufflevector <2 x float> %i.ba, <2 x float> %i.be, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> %i.bm, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.bu = shufflevector <4 x float> %i.bt, <4 x float> %i.bo, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bv = shufflevector <2 x float> %i.bc, <2 x float> %i.bk, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.bw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bu, <4 x float> %i.bv, <4 x float> %i.br) ; 3 uses
  %i.bx = extractelement <4 x float> %i.bw, i64 0
  %i.by = tail call noundef float @llvm.fmuladd.f32(float %i.v, float %i.z, float %i.bx)
  %i.bz = fadd float %i.by, %i.ad                 ; 2 uses
  %i.ca = extractelement <4 x float> %i.bw, i64 1
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
  %i.do = shufflevector <4 x float> %i.bw, <4 x float> %i.dn, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.dp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> %i.dk, <4 x float> %i.do) ; 3 uses
  %i.dq = extractelement <4 x float> %i.dp, i64 1
  %i.dr = fadd float %i.dq, %i.cc                 ; 2 uses
  %i.ds = fsub float %i.dr, %i.bz
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
  %7 = insertelement <4 x float> poison, float %6, i64 0
  %i.eq = insertelement <4 x float> %7, float %i.en, i64 1
  %i.er = insertelement <4 x float> %i.eq, float %i.bj, i64 2
  %i.es = insertelement <4 x float> %i.er, float %i.ep, i64 3
  %i.et = insertelement <4 x float> poison, float %i.ak, i64 0
  %i.eu = insertelement <4 x float> %i.et, float %i.bd, i64 1
  %i.ev = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ew = fmul <4 x float> %i.es, %i.ev
  %i.ex = shufflevector <2 x float> %i.em, <2 x float> %i.eo, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.ey = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.ez = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.fa = shufflevector <4 x float> %i.ez, <4 x float> %i.ex, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.fb = shufflevector <2 x float> %i.bg, <2 x float> %i.bc, <4 x i32> <i32 0, i32 2, i32 poison, i32 2>
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.fd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fa, <4 x float> %i.fc, <4 x float> %i.ew) ; 2 uses
  %i.fe = load <2 x float>, ptr %i.aa, align 4, !tbaa !27, !noalias !95
  %i.ff = load <2 x float>, ptr %i.ay, align 4, !tbaa !27, !noalias !101
  %i.fg = tail call noundef float @llvm.fmuladd.f32(float %i.ag, float %i.ax, float %i.ca)
  %i.fh = shufflevector <4 x float> %i.dp, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fi = insertelement <2 x float> %i.fh, float %i.fg, i64 0
  %i.fj = fadd <2 x float> %i.ff, %i.fi           ; 3 uses
  %i.fk = insertelement <2 x float> poison, float %i.h, i64 0
  %i.fl = insertelement <2 x float> %i.fk, float %i.r, i64 1 ; 2 uses
  %i.fm = insertelement <2 x float> poison, float %i.z, i64 0
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fo = shufflevector <4 x float> %i.fd, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.fp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> %i.fn, <2 x float> %i.fo)
  %i.fq = fadd <2 x float> %i.fe, %i.fp           ; 3 uses
  %i.fr = extractelement <2 x float> %i.fq, i64 0
  %i.fs = extractelement <2 x float> %i.fq, i64 1
  %i.ft = extractelement <2 x float> %i.fj, i64 0
  %i.fu = extractelement <2 x float> %i.fj, i64 1
  %i.fv = fsub <2 x float> %i.fj, %i.fq           ; 2 uses
  %i.fw = extractelement <2 x float> %i.fv, i64 0
  %i.fx = extractelement <2 x float> %i.fv, i64 1
  %i.fy = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fz = shufflevector <2 x float> %i.em, <2 x float> %i.eo, <2 x i32> <i32 1, i32 3>
  %i.ga = fmul <2 x float> %i.fy, %i.fz
  %i.gb = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gc = shufflevector <2 x float> %i.em, <2 x float> %i.eo, <2 x i32> <i32 0, i32 2>
  %i.gd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gb, <2 x float> %i.gc, <2 x float> %i.ga)
  %i.ge = insertelement <2 x float> %i.dd, float %i.l, i64 1
  %i.gf = shufflevector <2 x float> %i.ge, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.gg = insertelement <4 x float> poison, float %i.en, i64 0
  %i.gh = insertelement <4 x float> %i.gg, float %i.ep, i64 1
  %i.gi = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gj = fmul <4 x float> %i.gf, %i.gi
  %i.gk = shufflevector <2 x float> %i.dc, <2 x float> %i.em, <4 x i32> <i32 0, i32 0, i32 2, i32 poison>
  %i.gl = insertelement <4 x float> %i.gk, float %i.j, i64 3
  %i.gm = shufflevector <2 x float> %i.em, <2 x float> %i.eo, <4 x i32> <i32 0, i32 2, i32 poison, i32 2>
  %i.gn = insertelement <4 x float> %i.gm, float %i.j, i64 2
  %i.go = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gl, <4 x float> %i.gn, <4 x float> %i.gj) ; 4 uses
  %i.gp = extractelement <4 x float> %i.go, i64 0
  %i.gq = extractelement <4 x float> %i.go, i64 2
  %i.gr = tail call noundef float @llvm.fmuladd.f32(float %i.n, float %i.h, float %i.gq) ; 6 uses
  %i.gs = extractelement <4 x float> %i.go, i64 1
  %i.gt = extractelement <4 x float> %i.go, i64 3
  %i.gu = tail call noundef float @llvm.fmuladd.f32(float %i.n, float %i.r, float %i.gt) ; 6 uses
  %i.gv = or disjoint i32 %i.eb, 2
  %i.gw = sext i32 %i.gv to i64                   ; 2 uses
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.gw
  %i.gy = load <2 x float>, ptr %i.f, align 8, !tbaa !27, !noalias !90 ; 3 uses
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.ha = insertelement <3 x float> %i.gz, float %i.am, i64 2
  %i.hb = shufflevector <3 x float> %i.ha, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.hc = insertelement <4 x float> poison, float %i.v, i64 0
  %i.hd = insertelement <4 x float> %i.hc, float %i.aq, i64 1
  %i.he = insertelement <4 x float> %i.hd, float %i.au, i64 2
  %i.hf = shufflevector <4 x float> %i.he, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  %i.hg = shufflevector <4 x float> %i.dp, <4 x float> %i.fd, <4 x i32> <i32 2, i32 3, i32 4, i32 6>
  %i.hh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hb, <4 x float> %i.hf, <4 x float> %i.hg) ; 5 uses
  store float 1.000000e+00, ptr %i.ce, align 4, !tbaa !27
  store float 1.000000e+00, ptr %i.ch, align 4, !tbaa !27
  store float 1.000000e+00, ptr %i.cl, align 4, !tbaa !27
  %i.hi = load float, ptr %i.aa, align 4, !tbaa !27
  %i.hj = fsub float %i.fr, %i.hi                 ; 2 uses
  %i.hk = load float, ptr %i.ab, align 4, !tbaa !27
  %i.hl = fsub float %i.fs, %i.hk                 ; 2 uses
  %i.hm = load float, ptr %i.ac, align 4, !tbaa !27
  %i.hn = fsub float %i.bz, %i.hm                 ; 2 uses
  %i.ho = fneg float %i.hj
  %i.hp = fneg float %i.hl
  %i.hq = fneg float %i.hn
  store float 0.000000e+00, ptr %i.cn, align 4, !tbaa !27
  store float %i.hn, ptr %i.cq, align 4, !tbaa !27
  store float %i.hp, ptr %i.cr, align 4, !tbaa !27
  store float 0.000000e+00, ptr %i.cs, align 4, !tbaa !27
  store float %i.hq, ptr %i.co, align 4, !tbaa !27
  store float 0.000000e+00, ptr %i.ct, align 4, !tbaa !27
  store float %i.hj, ptr %i.cu, align 4, !tbaa !27
  store float 0.000000e+00, ptr %i.cv, align 4, !tbaa !27
  store float %i.hl, ptr %i.cp, align 4, !tbaa !27
  store float %i.ho, ptr %i.cw, align 4, !tbaa !27
  store <2 x float> zeroinitializer, ptr %i.cx, align 4, !tbaa !27
  %i.hr = load float, ptr %i.ay, align 4, !tbaa !27
  %i.hs = fsub float %i.ft, %i.hr                 ; 2 uses
  %i.ht = load float, ptr %i.az, align 4, !tbaa !27
  %i.hu = fsub float %i.fu, %i.ht                 ; 2 uses
  %i.hv = load float, ptr %i.cb, align 4, !tbaa !27
  %i.hw = fsub float %i.dr, %i.hv                 ; 2 uses
  %i.hx = load ptr, ptr %i.cy, align 8, !tbaa !104 ; 14 uses
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.cf ; 4 uses
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.cj ; 3 uses
  %i.ia = fneg float %i.hw
  store float 0.000000e+00, ptr %i.hx, align 4, !tbaa !27
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  store float %i.ia, ptr %i.ib, align 4, !tbaa !27
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store float %i.hu, ptr %i.ic, align 4, !tbaa !27
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  store float 0.000000e+00, ptr %i.id, align 4, !tbaa !27
  %i.ie = fneg float %i.hs
  store float %i.hw, ptr %i.hy, align 4, !tbaa !27
  %i.if = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  store float 0.000000e+00, ptr %i.if, align 4, !tbaa !27
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store float %i.ie, ptr %i.ig, align 4, !tbaa !27
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hy, i64 12
  store float 0.000000e+00, ptr %i.ih, align 4, !tbaa !27
  %i.ii = fneg float %i.hu
  store float %i.ii, ptr %i.hz, align 4, !tbaa !27
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  store float %i.hs, ptr %i.ij, align 4, !tbaa !27
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store <2 x float> zeroinitializer, ptr %i.ik, align 4, !tbaa !27
  %i.il = load float, ptr %1, align 8, !tbaa !105
  %i.im = load float, ptr %i.cz, align 4, !tbaa !106
  %i.in = fmul float %i.il, %i.im                 ; 5 uses
  %i.io = load ptr, ptr %i.da, align 8, !tbaa !107 ; 3 uses
  %i.ip = fmul float %i.in, %i.fw
  store float %i.ip, ptr %i.io, align 4, !tbaa !27
  %i.iq = fmul float %i.in, %i.fx
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.io, i64 %i.cf
  store float %i.iq, ptr %i.ir, align 4, !tbaa !27
  %i.is = fmul float %i.in, %i.ds
  %i.it = getelementptr inbounds i8, ptr %i.io, i64 %.idx
  store float %i.is, ptr %i.it, align 4, !tbaa !27
  %i.iu = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.iv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iu, <2 x float> %i.fl, <2 x float> %i.gd) ; 4 uses
  %i.iw = extractelement <2 x float> %i.gy, i64 0 ; 2 uses
  %i.ix = tail call noundef float @llvm.fmuladd.f32(float %i.iw, float %i.h, float %i.gp) ; 3 uses
  %i.iy = tail call noundef float @llvm.fmuladd.f32(float %i.iw, float %i.r, float %i.gs) ; 3 uses
  store float %i.ix, ptr %i.ed, align 4, !tbaa !27
  store float %i.iy, ptr %i.eg, align 4, !tbaa !27
  %i.iz = extractelement <4 x float> %i.hh, i64 0 ; 2 uses
  store float %i.iz, ptr %i.ej, align 4, !tbaa !27
  store <2 x float> %i.iv, ptr %i.el, align 4, !tbaa !27
  %i.ja = extractelement <4 x float> %i.hh, i64 1 ; 2 uses
  store float %i.ja, ptr %i.gx, align 4, !tbaa !27
  %i.jb = fneg float %i.ix
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.ec
  store float %i.jb, ptr %i.jc, align 4, !tbaa !27
  %i.jd = fneg float %i.iy
  %i.je = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.ef
  store float %i.jd, ptr %i.je, align 4, !tbaa !27
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.ei
  %i.jg = fneg <4 x float> %i.hh                  ; 4 uses
  %i.jh = extractelement <4 x float> %i.jg, i64 0
  store float %i.jh, ptr %i.jf, align 4, !tbaa !27
  %i.ji = extractelement <2 x float> %i.iv, i64 0
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.ek
  %i.jk = extractelement <2 x float> %i.iv, i64 1
  %i.jl = fneg <2 x float> %i.iv
  store <2 x float> %i.jl, ptr %i.jj, align 4, !tbaa !27
  %i.jm = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.gw
  %i.jn = extractelement <4 x float> %i.jg, i64 1
  store float %i.jn, ptr %i.jm, align 4, !tbaa !27
  %i.jo = extractelement <4 x float> %i.jg, i64 2
  %i.jp = fmul float %i.dv, %i.jo
  %i.jq = extractelement <4 x float> %i.hh, i64 3
  %i.jr = tail call float @llvm.fmuladd.f32(float %i.gu, float %i.jq, float %i.jp) ; 2 uses
  %i.js = extractelement <4 x float> %i.jg, i64 3
  %i.jt = fmul float %i.gr, %i.js
  %i.ju = tail call float @llvm.fmuladd.f32(float %i.dv, float %i.dz, float %i.jt) ; 2 uses
  %i.jv = fneg float %i.dz
  %i.jw = fmul float %i.gu, %i.jv
  %i.jx = extractelement <4 x float> %i.hh, i64 2
  %i.jy = tail call float @llvm.fmuladd.f32(float %i.gr, float %i.jx, float %i.jw) ; 2 uses
  %i.jz = fmul float %i.iy, %i.ju
  %i.ka = tail call float @llvm.fmuladd.f32(float %i.jr, float %i.ix, float %i.jz)
  %i.kb = tail call noundef float @llvm.fmuladd.f32(float %i.jy, float %i.iz, float %i.ka)
  %i.kc = fmul float %i.kb, %i.in
  %i.kd = load ptr, ptr %i.da, align 8, !tbaa !107 ; 4 uses
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.kd, i64 %i.ec
  store float %i.kc, ptr %i.ke, align 4, !tbaa !27
  %i.kf = fmul float %i.jk, %i.ju
  %i.kg = tail call float @llvm.fmuladd.f32(float %i.jr, float %i.ji, float %i.kf)
  %i.kh = tail call noundef float @llvm.fmuladd.f32(float %i.jy, float %i.ja, float %i.kg)
  %i.ki = fmul float %i.kh, %i.in
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.kd, i64 %i.ek
  store float %i.ki, ptr %i.kj, align 4, !tbaa !27
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 782
  %i.kl = load i8, ptr %i.kk, align 2, !tbaa !29, !range !34, !noundef !32
  %.not = icmp ne i8 %i.kl, 0                     ; 3 uses
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 764
  %i.kn = load float, ptr %i.km, align 4, !tbaa !74
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.kp = load float, ptr %i.ko, align 8, !tbaa !23
  %i.kq = fmul float %i.kn, %i.kp                 ; 2 uses
end_hunk_2
