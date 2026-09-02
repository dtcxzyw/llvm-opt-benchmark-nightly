Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btPoint2PointConstraint?download=true
inline.NumInlined: 117
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btVector3 = type { [4 x float] }

$_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif = comdat any

$_ZN17btTypedConstraint23solveConstraintObsoleteER12btSolverBodyS1_f = comdat any

$_ZN17btTypedConstraintD2Ev = comdat any

$_ZN23btPoint2PointConstraintD0Ev = comdat any

$_ZNK23btPoint2PointConstraint28calculateSerializeBufferSizeEv = comdat any

$_ZNK23btPoint2PointConstraint9serializeEPvP12btSerializer = comdat any

$_ZNK23btPoint2PointConstraint8getFlagsEv = comdat any

$__clang_call_terminate = comdat any

$_ZTI17btTypedConstraint = comdat any

$_ZTS17btTypedConstraint = comdat any

$_ZTI13btTypedObject = comdat any

$_ZTS13btTypedObject = comdat any

@_ZTV23btPoint2PointConstraint = dso_local constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTI23btPoint2PointConstraint, ptr @_ZN17btTypedConstraintD2Ev, ptr @_ZN23btPoint2PointConstraintD0Ev, ptr @_ZN23btPoint2PointConstraint13buildJacobianEv, ptr @_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif, ptr @_ZN23btPoint2PointConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E, ptr @_ZN23btPoint2PointConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E, ptr @_ZN17btTypedConstraint23solveConstraintObsoleteER12btSolverBodyS1_f, ptr @_ZN23btPoint2PointConstraint8setParamEifi, ptr @_ZNK23btPoint2PointConstraint8getParamEii, ptr @_ZNK23btPoint2PointConstraint28calculateSerializeBufferSizeEv, ptr @_ZNK23btPoint2PointConstraint9serializeEPvP12btSerializer, ptr @_ZNK23btPoint2PointConstraint8getFlagsEv] }, align 8
@_ZTI17btTypedConstraint = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTS17btTypedConstraint, i32 0, i32 1, ptr @_ZTI13btTypedObject, i64 2050 }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTS17btTypedConstraint = linkonce_odr dso_local constant [20 x i8] c"17btTypedConstraint\00", comdat, align 1
@_ZTI13btTypedObject = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13btTypedObject }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS13btTypedObject = linkonce_odr dso_local constant [16 x i8] c"13btTypedObject\00", comdat, align 1
@_ZTI23btPoint2PointConstraint = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS23btPoint2PointConstraint, ptr @_ZTI17btTypedConstraint }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS23btPoint2PointConstraint = dso_local constant [26 x i8] c"23btPoint2PointConstraint\00", align 1
@.str = private unnamed_addr constant [33 x i8] c"btPoint2PointConstraintFloatData\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN23btPoint2PointConstraintC1ER11btRigidBodyS1_RK9btVector3S4_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN23btPoint2PointConstraintC2ER11btRigidBodyS1_RK9btVector3S4_
@_ZN23btPoint2PointConstraintC1ER11btRigidBodyRK9btVector3 = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN23btPoint2PointConstraintC2ER11btRigidBodyRK9btVector3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23btPoint2PointConstraintC2ER11btRigidBodyS1_RK9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr noundef nonnull align 8 dereferenceable(744) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr noundef nonnull align 8 dereferenceable(744) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV23btPoint2PointConstraint, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 324
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 340
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 356
  store i32 0, ptr %i.c, align 4, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i8 0, ptr %i.d, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 372
  store <2 x float> <float 3.000000e-01, float 1.000000e+00>, ptr %i.e, align 4, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 380
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !26
  ret void
}

declare void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(744), ptr noundef nonnull align 8 dereferenceable(744)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23btPoint2PointConstraintC2ER11btRigidBodyRK9btVector3(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBody(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(744) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV23btPoint2PointConstraint, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 324
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load float, ptr %i.g, align 8, !tbaa !25
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load float, ptr %i.i, align 8, !tbaa !25
  %i.k = load float, ptr %i.d, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.m = load float, ptr %i.l, align 4, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = load float, ptr %i.n, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.q = load <2 x float>, ptr %i.b, align 8, !tbaa !25
  %i.r = load float, ptr %3, align 4, !tbaa !25
  %i.s = load float, ptr %i.e, align 4, !tbaa !25 ; 3 uses
  %i.t = load float, ptr %2, align 4, !tbaa !25   ; 2 uses
  %5 = load float, ptr %i.f, align 4, !tbaa !25   ; 2 uses
  %6 = load <2 x float>, ptr %i.c, align 8, !tbaa !25
  %7 = load float, ptr %4, align 4, !tbaa !25
  %8 = fmul float %i.s, %7
  %9 = fmul float %i.s, %i.r
  %i.u = insertelement <2 x float> poison, float %i.t, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = shufflevector <2 x float> %i.q, <2 x float> %6, <2 x i32> <i32 0, i32 2>
  %10 = insertelement <2 x float> poison, float %9, i64 0
  %11 = insertelement <2 x float> %10, float %8, i64 1
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.w, <2 x float> %11)
  %i.y = insertelement <2 x float> poison, float %5, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = insertelement <2 x float> poison, float %i.h, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.j, i64 1
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.ab, <2 x float> %i.x)
  %i.ad = fmul float %i.s, %i.m
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.t, float %i.k, float %i.ad)
  %i.af = tail call noundef float @llvm.fmuladd.f32(float %5, float %i.o, float %i.ae)
  %i.ag = load <2 x float>, ptr %i.p, align 8, !tbaa !25
  %i.ah = fadd <2 x float> %i.ac, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !25
  %i.ak = fadd float %i.af, %i.aj
  %.sroa.3.12.vec.insert.i4.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ak, i64 0
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 340
  store <2 x float> %i.ah, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 348
  store <2 x float> %.sroa.3.12.vec.insert.i4.i, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 356
  store i32 0, ptr %i.an, align 4, !tbaa !23
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i8 0, ptr %i.ao, align 8, !tbaa !24
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 372
  store <2 x float> <float 3.000000e-01, float 1.000000e+00>, ptr %i.ap, align 4, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 380
  store float 0.000000e+00, ptr %i.aq, align 4, !tbaa !26
  ret void
}

declare void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBody(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(744)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN23btPoint2PointConstraint13buildJacobianEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(384) initializes((56, 60)) %0) unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %class.btVector3, align 4           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float 0.000000e+00, ptr %i.a, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27, !nonnull !28, !align !29 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30, !nonnull !28, !align !29 ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 504
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 452
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 504
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 452
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 512
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 512
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  store float 1.000000e+00, ptr %i.ag, align 4, !tbaa !25
  %i.ah = getelementptr inbounds nuw [84 x i8], ptr %i.b, i64 %indvars.iv ; 12 uses
  %i.ai = load float, ptr %i.h, align 8, !tbaa !25, !noalias !43 ; 2 uses
  %i.aj = load float, ptr %i.i, align 8, !tbaa !25, !noalias !43 ; 2 uses
  %i.ak = load float, ptr %i.j, align 8, !tbaa !25, !noalias !43 ; 2 uses
  %i.al = load float, ptr %i.p, align 8, !tbaa !25, !noalias !44 ; 2 uses
  %i.am = load float, ptr %i.q, align 8, !tbaa !25, !noalias !44 ; 2 uses
  %i.an = load float, ptr %i.r, align 8, !tbaa !25, !noalias !44 ; 2 uses
  %i.ao = load <4 x float>, ptr %i.s, align 4
  %i.ap = load <4 x float>, ptr %i.t, align 8
  %i.aq = load <4 x float>, ptr %i.u, align 4
  %i.ar = load <4 x float>, ptr %i.w, align 4
  %i.as = load <4 x float>, ptr %i.x, align 8
  %i.at = load <4 x float>, ptr %i.y, align 4
  %i.au = load float, ptr %i.ab, align 4, !tbaa !59
  %i.av = load float, ptr %i.ad, align 4, !tbaa !59
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.ba = load <2 x float>, ptr %i.e, align 8, !tbaa !25, !noalias !43 ; 3 uses
  %i.bb = load <2 x float>, ptr %i.f, align 8, !tbaa !25, !noalias !43 ; 3 uses
  %i.bc = load <2 x float>, ptr %i.g, align 8, !tbaa !25, !noalias !43 ; 2 uses
  %i.bd = shufflevector <2 x float> %i.ba, <2 x float> %i.bb, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.be = shufflevector <2 x float> %i.bc, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.bf = shufflevector <3 x float> %i.bd, <3 x float> %i.be, <3 x i32> <i32 0, i32 1, i32 4>
  %i.bg = shufflevector <4 x float> %i.ap, <4 x float> poison, <3 x i32> zeroinitializer
  %i.bh = fmul <3 x float> %i.bf, %i.bg
  %i.bi = shufflevector <4 x float> %i.ao, <4 x float> poison, <3 x i32> zeroinitializer
  %i.bj = shufflevector <2 x float> %i.ba, <2 x float> %i.bb, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.bk = shufflevector <3 x float> %i.bj, <3 x float> %i.be, <3 x i32> <i32 0, i32 1, i32 3>
  %i.bl = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bi, <3 x float> %i.bk, <3 x float> %i.bh)
  %i.bm = shufflevector <4 x float> %i.aq, <4 x float> poison, <3 x i32> zeroinitializer
  %i.bn = insertelement <3 x float> poison, float %i.ai, i64 0
  %i.bo = insertelement <3 x float> %i.bn, float %i.aj, i64 1
  %i.bp = insertelement <3 x float> %i.bo, float %i.ak, i64 2
  %i.bq = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bm, <3 x float> %i.bp, <3 x float> %i.bl)
  %i.br = load <3 x float>, ptr %i.v, align 8, !tbaa !25 ; 2 uses
  %i.bs = fadd <3 x float> %i.br, %i.bq
  %i.bt = fsub <3 x float> %i.bs, %i.br           ; 2 uses
  %i.bu = shufflevector <3 x float> %i.bt, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.bv = load <2 x float>, ptr %i.m, align 8, !tbaa !25, !noalias !44 ; 3 uses
  %i.bw = load <2 x float>, ptr %i.n, align 8, !tbaa !25, !noalias !44 ; 3 uses
  %i.bx = load <2 x float>, ptr %i.o, align 8, !tbaa !25, !noalias !44 ; 2 uses
  %i.by = shufflevector <2 x float> %i.bv, <2 x float> %i.bw, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.bz = shufflevector <2 x float> %i.bx, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.ca = shufflevector <3 x float> %i.by, <3 x float> %i.bz, <3 x i32> <i32 0, i32 1, i32 4>
  %i.cb = shufflevector <4 x float> %i.as, <4 x float> poison, <3 x i32> zeroinitializer
  %i.cc = fmul <3 x float> %i.ca, %i.cb
  %i.cd = shufflevector <4 x float> %i.ar, <4 x float> poison, <3 x i32> zeroinitializer
  %i.ce = shufflevector <2 x float> %i.bv, <2 x float> %i.bw, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.cf = shufflevector <3 x float> %i.ce, <3 x float> %i.bz, <3 x i32> <i32 0, i32 1, i32 3>
  %i.cg = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cd, <3 x float> %i.cf, <3 x float> %i.cc)
  %i.ch = shufflevector <4 x float> %i.at, <4 x float> poison, <3 x i32> zeroinitializer
  %i.ci = insertelement <3 x float> poison, float %i.al, i64 0
  %i.cj = insertelement <3 x float> %i.ci, float %i.am, i64 1
  %i.ck = insertelement <3 x float> %i.cj, float %i.an, i64 2
  %i.cl = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ch, <3 x float> %i.ck, <3 x float> %i.cg)
  %i.cm = load <3 x float>, ptr %i.z, align 8, !tbaa !25 ; 2 uses
  %i.cn = fadd <3 x float> %i.cm, %i.cl
  %i.co = fsub <3 x float> %i.cn, %i.cm           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %i.ah, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !12
  %i.cp = load float, ptr %i.ah, align 4, !tbaa !25
  %i.cq = load <3 x float>, ptr %i.ah, align 4, !tbaa !25 ; 4 uses
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
  store <2 x float> %.sroa.3.12.vec.insert.i18.i, ptr %.sroa.46.0..sroa_idx.i, align 4, !tbaa !11
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
  store <2 x float> %.sroa.3.12.vec.insert.i33.i, ptr %.sroa.44.0..sroa_idx.i, align 4, !tbaa !11
  %i.ec = extractelement <2 x float> %i.dc, i64 0
  %i.ed = load <2 x float>, ptr %i.aa, align 8, !tbaa !25
  %i.ee = fmul <2 x float> %i.dc, %i.ed           ; 3 uses
  %i.ef = load float, ptr %i.ae, align 8, !tbaa !25
  %i.eg = fmul float %i.di, %i.ef                 ; 2 uses
  %.sroa.3.12.vec.insert.i38.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eg, i64 0
  store <2 x float> %i.ee, ptr %i.ay, align 4
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i38.i, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !11
  %i.eh = extractelement <2 x float> %i.dv, i64 0
  %i.ei = load <2 x float>, ptr %i.ac, align 8, !tbaa !25
  %i.ej = fmul <2 x float> %i.dv, %i.ei           ; 3 uses
  %i.ek = load float, ptr %i.af, align 8, !tbaa !25
  %i.el = fmul float %i.eb, %i.ek                 ; 2 uses
  %.sroa.3.12.vec.insert.i43.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.el, i64 0
  store <2 x float> %i.ej, ptr %i.az, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i43.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !11
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
  store float %i.ew, ptr %i.ex, align 4, !tbaa !61
  store float 0.000000e+00, ptr %i.ag, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !41
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN23btPoint2PointConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(384) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load i8, ptr %i.a, align 8, !tbaa !24, !range !31, !noundef !28
  %i.c = trunc nuw i8 %i.b to i1
  %spec.select.i = select i1 %i.c, i32 0, i32 3   ; 2 uses
  store i32 %spec.select.i, ptr %1, align 4, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %spec.select.i, ptr %i.d, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN23btPoint2PointConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(384) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load i8, ptr %i.a, align 8, !tbaa !24, !range !31, !noundef !28
  %i.c = trunc nuw i8 %i.b to i1
  %spec.select = select i1 %i.c, i32 0, i32 3     ; 2 uses
  store i32 %spec.select, ptr %1, align 4, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %spec.select, ptr %i.d, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN23btPoint2PointConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(384) %0, ptr nofree noundef captures(none) %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30, !nonnull !28, !align !29
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZN23btPoint2PointConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(64) %i.f)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN23btPoint2PointConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(384) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 3 uses
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !66   ; 2 uses
  %i.e = sext i32 %i.d to i64                     ; 9 uses
  %i.f = getelementptr [4 x i8], ptr %i.b, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 4
  store float 1.000000e+00, ptr %i.g, align 4, !tbaa !25
  %i.h = shl nsw i32 %i.d, 1
  %i.i = sext i32 %i.h to i64                     ; 4 uses
  %i.j = getelementptr [4 x i8], ptr %i.b, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 8
  store float 1.000000e+00, ptr %i.k, align 4, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.m = load float, ptr %2, align 4, !tbaa !25
  %i.n = load float, ptr %i.l, align 4, !tbaa !25 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.r = load float, ptr %i.q, align 8, !tbaa !25 ; 3 uses
  %i.s = fmul float %i.p, %i.r
  %i.t = tail call float @llvm.fmuladd.f32(float %i.m, float %i.n, float %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load float, ptr %i.u, align 4, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.x = load float, ptr %i.w, align 4, !tbaa !25 ; 3 uses
  %i.y = tail call noundef float @llvm.fmuladd.f32(float %i.v, float %i.x, float %i.t) ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load float, ptr %i.z, align 4, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !25
  %i.ad = fmul float %i.r, %i.ac
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.n, float %i.ad)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ag = load float, ptr %i.af, align 4, !tbaa !25
  %i.ah = tail call noundef float @llvm.fmuladd.f32(float %i.ag, float %i.x, float %i.ae) ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !25
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.al = load float, ptr %i.ak, align 4, !tbaa !25
  %i.am = fmul float %i.r, %i.al
  %i.an = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.n, float %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !25
  %i.aq = tail call noundef float @llvm.fmuladd.f32(float %i.ap, float %i.x, float %i.an) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !67 ; 6 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.e ; 4 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.i ; 3 uses
  %i.av = fneg float %i.y
  %i.aw = fneg float %i.ah
  %i.ax = fneg float %i.aq
  store float 0.000000e+00, ptr %i.as, align 4, !tbaa !25
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store float %i.aq, ptr %i.ay, align 4, !tbaa !25
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store float %i.aw, ptr %i.az, align 4, !tbaa !25
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store float 0.000000e+00, ptr %i.ba, align 4, !tbaa !25
  store float %i.ax, ptr %i.at, align 4, !tbaa !25
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store float 0.000000e+00, ptr %i.bb, align 4, !tbaa !25
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store float %i.y, ptr %i.bc, align 4, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store float 0.000000e+00, ptr %i.bd, align 4, !tbaa !25
  store float %i.ah, ptr %i.au, align 4, !tbaa !25
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store float %i.av, ptr %i.be, align 4, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store <2 x float> zeroinitializer, ptr %i.bf, align 4, !tbaa !25
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !68 ; 3 uses
  store float -1.000000e+00, ptr %i.bh, align 4, !tbaa !25
  %i.bi = getelementptr [4 x i8], ptr %i.bh, i64 %i.e
  %i.bj = getelementptr i8, ptr %i.bi, i64 4
  store float -1.000000e+00, ptr %i.bj, align 4, !tbaa !25
  %i.bk = getelementptr [4 x i8], ptr %i.bh, i64 %i.i
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  store float -1.000000e+00, ptr %i.bl, align 4, !tbaa !25
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 340
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bp = load <4 x float>, ptr %i.bo, align 4
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !25
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !25
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.by = load float, ptr %i.bx, align 4, !tbaa !25
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !25
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !69 ; 6 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.e ; 4 uses
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.i ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cl = load <2 x float>, ptr %3, align 4, !tbaa !25
  %i.cm = load float, ptr %4, align 4, !tbaa !25
  %i.cn = load float, ptr %i.bn, align 8, !tbaa !25 ; 3 uses
  %i.co = load float, ptr %i.bm, align 4, !tbaa !25 ; 2 uses
  %6 = load float, ptr %i.br, align 4, !tbaa !25  ; 2 uses
  %7 = load <2 x float>, ptr %i.bs, align 4, !tbaa !25
  %8 = load float, ptr %5, align 4, !tbaa !25
  %9 = fmul float %i.cn, %8
  %10 = fmul float %i.cm, %i.cn
  %i.cp = shufflevector <2 x float> %i.cl, <2 x float> %7, <2 x i32> <i32 0, i32 2>
  %i.cq = insertelement <2 x float> poison, float %i.co, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = insertelement <2 x float> poison, float %10, i64 0
  %12 = insertelement <2 x float> %11, float %9, i64 1
  %i.cs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cp, <2 x float> %i.cr, <2 x float> %12)
  %i.ct = insertelement <2 x float> %i.bq, float %i.bu, i64 1
  %i.cu = insertelement <2 x float> poison, float %6, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.cv, <2 x float> %i.cs) ; 3 uses
  %i.cx = fmul float %i.cn, %i.by
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.co, float %i.cx)
  %i.cz = tail call noundef float @llvm.fmuladd.f32(float %i.ca, float %6, float %i.cy) ; 3 uses
  %i.da = fneg float %i.cz
  store float 0.000000e+00, ptr %i.cc, align 4, !tbaa !25
  store float %i.da, ptr %i.cf, align 4, !tbaa !25
  %i.db = extractelement <2 x float> %i.cw, i64 1 ; 2 uses
  store float %i.db, ptr %i.cg, align 4, !tbaa !25
  store float 0.000000e+00, ptr %i.ch, align 4, !tbaa !25
  store float %i.cz, ptr %i.cd, align 4, !tbaa !25
  store float 0.000000e+00, ptr %i.ci, align 4, !tbaa !25
  %i.dc = fneg <2 x float> %i.cw                  ; 2 uses
  %i.dd = extractelement <2 x float> %i.dc, i64 0
  store float %i.dd, ptr %i.cj, align 4, !tbaa !25
  store float 0.000000e+00, ptr %i.ck, align 4, !tbaa !25
  %i.de = extractelement <2 x float> %i.dc, i64 1
  store float %i.de, ptr %i.ce, align 4, !tbaa !25
  %i.df = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.dg = extractelement <2 x float> %i.cw, i64 0 ; 2 uses
  store float %i.dg, ptr %i.df, align 4, !tbaa !25
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store <2 x float> zeroinitializer, ptr %i.dh, align 4, !tbaa !25
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !23 ; 2 uses
  %i.dk = and i32 %i.dj, 1
  %.not = icmp eq i32 %i.dk, 0
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.in = select i1 %.not, ptr %i.dm, ptr %i.dl
  %i.dn = load float, ptr %.in, align 4, !tbaa !25
  %i.do = load float, ptr %1, align 8, !tbaa !70
  %i.dp = fmul float %i.dn, %i.do                 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !71 ; 3 uses
  %i.du = load float, ptr %i.dq, align 4, !tbaa !25
  %i.dv = fadd float %i.dg, %i.du
  %i.dw = fsub float %i.dv, %i.y
  %i.dx = load float, ptr %i.dr, align 4, !tbaa !25
  %i.dy = fsub float %i.dw, %i.dx
  %i.dz = fmul float %i.dp, %i.dy
  store float %i.dz, ptr %i.dt, align 4, !tbaa !25
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !25
  %i.ec = fadd float %i.db, %i.eb
  %i.ed = fsub float %i.ec, %i.ah
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !25
  %i.eg = fsub float %i.ed, %i.ef
  %i.eh = fmul float %i.dp, %i.eg
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.e
  store float %i.eh, ptr %i.ei, align 4, !tbaa !25
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !25
  %i.el = fadd float %i.cz, %i.ek
  %i.em = fsub float %i.el, %i.aq
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.eo = load float, ptr %i.en, align 4, !tbaa !25
  %i.ep = fsub float %i.em, %i.eo
  %i.eq = fmul float %i.dp, %i.ep
  %i.er = shl nsw i64 %i.e, 1                     ; 4 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.er
  store float %i.eq, ptr %i.es, align 4, !tbaa !25
  %i.et = and i32 %i.dj, 2
  %.not59 = icmp eq i32 %i.et, 0
  br i1 %.not59, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 364 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !72 ; 3 uses
  %i.ex = load float, ptr %i.eu, align 4, !tbaa !35 ; 2 uses
  store float %i.ex, ptr %i.ew, align 4, !tbaa !25
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.e
  store float %i.ex, ptr %i.ey, align 4, !tbaa !25
  %i.ez = load float, ptr %i.eu, align 4, !tbaa !35
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.er
  store float %i.ez, ptr %i.fa, align 4, !tbaa !25
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.a
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 3 uses
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !73 ; 5 uses
  %i.fd = fneg float %i.fc                        ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.fg = fcmp ogt float %i.fc, 0.000000e+00
  br i1 %i.fg, label %.split.1, label %.split80.us

.split.1:                                         ; preds = %.loopexit
  %i.fh = load ptr, ptr %i.fe, align 8, !tbaa !74
  store float %i.fd, ptr %i.fh, align 4, !tbaa !25
  %i.fi = load ptr, ptr %i.ff, align 8, !tbaa !75
  store float %i.fc, ptr %i.fi, align 4, !tbaa !25
  %.pre = load float, ptr %i.fb, align 4, !tbaa !73 ; 2 uses
  %i.fj = fcmp ogt float %.pre, 0.000000e+00
  br i1 %i.fj, label %bb.b, label %.split.2

bb.b:                                             ; preds = %.split.1
  %i.fk = load ptr, ptr %i.fe, align 8, !tbaa !74
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fk, i64 %i.e
  store float %i.fd, ptr %i.fl, align 4, !tbaa !25
  %i.fm = load ptr, ptr %i.ff, align 8, !tbaa !75
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.e
  store float %i.fc, ptr %i.fn, align 4, !tbaa !25
  %.pre99 = load float, ptr %i.fb, align 4, !tbaa !73
  br label %.split.2

.split.2:                                         ; preds = %bb.b, %.split.1
  %i.fo = phi float [ %.pre99, %bb.b ], [ %.pre, %.split.1 ]
  %i.fp = fcmp ogt float %i.fo, 0.000000e+00
  br i1 %i.fp, label %bb.c, label %.split80.us

bb.c:                                             ; preds = %.split.2
  %i.fq = load ptr, ptr %i.fe, align 8, !tbaa !74
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.er
  store float %i.fd, ptr %i.fr, align 4, !tbaa !25
  %i.fs = load ptr, ptr %i.ff, align 8, !tbaa !75
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %i.er
  store float %i.fc, ptr %i.ft, align 4, !tbaa !25
  br label %.split80.us

.split80.us:                                      ; preds = %.split.2, %bb.c, %.loopexit
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.fv = load float, ptr %i.fu, align 8, !tbaa !76
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 84
  store float %i.fv, ptr %i.fw, align 4, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN23btPoint2PointConstraint9updateRHSEf(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(384) %0, float noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN23btPoint2PointConstraint8setParamEifi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(384) %0, i32 noundef %1, float noundef %2, i32 noundef %3) unnamed_addr #5 align 2 {
bb.a:
  %.not = icmp eq i32 %3, -1
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.e [
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  store float %2, ptr %i.a, align 8, !tbaa !36
  br label %.sink.split

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 364
  store float %2, ptr %i.b, align 4, !tbaa !35
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.c
  %.sink6 = phi i32 [ 1, %bb.c ], [ 2, %bb.d ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23
  %i.e = or i32 %i.d, %.sink6
  store i32 %i.e, ptr %i.c, align 4, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZNK23btPoint2PointConstraint8getParamEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(384) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 align 2 {
bb.a:
  %.not = icmp eq i32 %2, -1
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.e [
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load float, ptr %i.a, align 8, !tbaa !36
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.d = load float, ptr %i.c, align 4, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %.0 = phi float [ f0x7F7FFFFF, %bb.a ], [ f0x7F7FFFFF, %bb.b ], [ %i.b, %bb.c ], [ %i.d, %bb.d ]
  ret float %.0
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
