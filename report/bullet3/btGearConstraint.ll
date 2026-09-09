Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btGearConstraint?download=true
inline.NumInlined: 26
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN17btTypedConstraint13buildJacobianEv = comdat any

$_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif = comdat any

$_ZN17btTypedConstraint23solveConstraintObsoleteER12btSolverBodyS1_f = comdat any

$_ZN16btGearConstraint8setParamEifi = comdat any

$_ZNK16btGearConstraint8getParamEii = comdat any

$_ZNK16btGearConstraint28calculateSerializeBufferSizeEv = comdat any

$_ZNK16btGearConstraint9serializeEPvP12btSerializer = comdat any

$__clang_call_terminate = comdat any

$_ZTI17btTypedConstraint = comdat any

$_ZTS17btTypedConstraint = comdat any

$_ZTI13btTypedObject = comdat any

$_ZTS13btTypedObject = comdat any

@_ZTV16btGearConstraint = dso_local constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI16btGearConstraint, ptr @_ZN16btGearConstraintD2Ev, ptr @_ZN16btGearConstraintD0Ev, ptr @_ZN17btTypedConstraint13buildJacobianEv, ptr @_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif, ptr @_ZN16btGearConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E, ptr @_ZN16btGearConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E, ptr @_ZN17btTypedConstraint23solveConstraintObsoleteER12btSolverBodyS1_f, ptr @_ZN16btGearConstraint8setParamEifi, ptr @_ZNK16btGearConstraint8getParamEii, ptr @_ZNK16btGearConstraint28calculateSerializeBufferSizeEv, ptr @_ZNK16btGearConstraint9serializeEPvP12btSerializer] }, align 8
@_ZTI17btTypedConstraint = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTS17btTypedConstraint, i32 0, i32 1, ptr @_ZTI13btTypedObject, i64 2050 }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTS17btTypedConstraint = linkonce_odr dso_local constant [20 x i8] c"17btTypedConstraint\00", comdat, align 1
@_ZTI13btTypedObject = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13btTypedObject }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS13btTypedObject = linkonce_odr dso_local constant [16 x i8] c"13btTypedObject\00", comdat, align 1
@_ZTI16btGearConstraint = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS16btGearConstraint, ptr @_ZTI17btTypedConstraint }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS16btGearConstraint = dso_local constant [19 x i8] c"16btGearConstraint\00", align 1
@.str = private unnamed_addr constant [26 x i8] c"btGearConstraintFloatData\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN16btGearConstraintC1ER11btRigidBodyS1_RK9btVector3S4_f = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, float), ptr @_ZN16btGearConstraintC2ER11btRigidBodyS1_RK9btVector3S4_f
@_ZN16btGearConstraintD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN16btGearConstraintD2Ev

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16btGearConstraintC2ER11btRigidBodyS1_RK9btVector3S4_f(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr noundef nonnull align 8 dereferenceable(744) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, float noundef %5) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr noundef nonnull align 8 dereferenceable(744) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTV16btGearConstraint, i64 16), ptr %0, align 8, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 108
  store float %5, ptr %i.c, align 4, !tbaa !18
  ret void
}

declare void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(744), ptr noundef nonnull align 8 dereferenceable(744)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN16btGearConstraintD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(112) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN16btGearConstraintD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN17btTypedConstraintdlEPv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #12
  unreachable

_ZN17btTypedConstraintdlEPv.exit:                 ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN16btGearConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) unnamed_addr #5 align 2 {
bb.a:
  store i32 1, ptr %1, align 4, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 1, ptr %i.a, align 4, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN16btGearConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load float, ptr %i.e, align 8, !tbaa !19
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load float, ptr %i.h, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.l = load float, ptr %i.k, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30, !nonnull !28, !align !29 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load float, ptr %i.q, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load float, ptr %i.s, align 8, !tbaa !19 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.w = load float, ptr %i.v, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.z = load float, ptr %i.y, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !33 ; 2 uses
  %i.ac = load <2 x float>, ptr %i.c, align 8, !tbaa !19 ; 2 uses
  %i.ad = load float, ptr %2, align 8, !tbaa !19  ; 2 uses
  %i.ae = load <2 x float>, ptr %i.g, align 8, !tbaa !19 ; 2 uses
  %i.af = shufflevector <2 x float> %i.ac, <2 x float> %i.ae, <2 x i32> <i32 1, i32 3>
  %i.ag = shufflevector <2 x float> %i.ac, <2 x float> %i.ae, <2 x i32> <i32 0, i32 2>
  %i.ah = insertelement <2 x float> poison, float %i.f, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.i, i64 1
  %3 = insertelement <2 x float> poison, float %i.ad, i64 0
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = load <2 x float>, ptr %i.j, align 8, !tbaa !19
  %i.ak = load <2 x float>, ptr %i.o, align 8, !tbaa !19 ; 2 uses
  %i.al = load <2 x float>, ptr %i.p, align 8, !tbaa !19 ; 2 uses
  %i.am = load <2 x float>, ptr %i.u, align 8, !tbaa !19 ; 2 uses
  %i.an = load <2 x float>, ptr %i.x, align 8, !tbaa !19
  %5 = load <2 x float>, ptr %i.d, align 8, !tbaa !19 ; 4 uses
  %6 = shufflevector <2 x float> %i.al, <2 x float> %5, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ao = shufflevector <2 x float> %i.ak, <2 x float> %i.am, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ap = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aq = shufflevector <4 x float> %i.ao, <4 x float> %i.ap, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ar = shufflevector <2 x float> %i.aj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.as = shufflevector <4 x float> %i.aq, <4 x float> %i.ar, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.at = fmul <4 x float> %6, %i.as
  %i.au = shufflevector <2 x float> %i.ak, <2 x float> %i.am, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.av = shufflevector <4 x float> %i.au, <4 x float> %i.ap, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> %i.ar, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %7 = shufflevector <2 x float> %i.al, <2 x float> %5, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.ax = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aw, <4 x float> %7, <4 x float> %i.at) ; 4 uses
  %i.ay = extractelement <4 x float> %i.ax, i64 0
  %i.az = tail call noundef float @llvm.fmuladd.f32(float %i.r, float %i.t, float %i.ay)
  %i.ba = extractelement <4 x float> %i.ax, i64 1
  %i.bb = tail call noundef float @llvm.fmuladd.f32(float %i.w, float %i.t, float %i.ba)
  %i.bc = extractelement <4 x float> %i.ax, i64 2
  %i.bd = tail call noundef float @llvm.fmuladd.f32(float %i.z, float %i.t, float %i.bc)
  %8 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %9 = fmul <2 x float> %8, %i.af
  %10 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %10, <2 x float> %9)
  %12 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %4, <2 x float> %11)
  %i.be = extractelement <4 x float> %i.ax, i64 3
  %i.bf = tail call noundef float @llvm.fmuladd.f32(float %i.l, float %i.ad, float %i.be)
  store <2 x float> %12, ptr %i.ab, align 4, !tbaa !19
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store float %i.bf, ptr %i.bg, align 4, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !18
  %i.bj = fmul float %i.az, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !34 ; 3 uses
  store float %i.bj, ptr %i.bl, align 4, !tbaa !19
  %i.bm = load float, ptr %i.bh, align 4, !tbaa !18
  %i.bn = fmul float %i.bb, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store float %i.bn, ptr %i.bo, align 4, !tbaa !19
  %i.bp = load float, ptr %i.bh, align 4, !tbaa !18
  %i.bq = fmul float %i.bd, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store float %i.bq, ptr %i.br, align 4, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraint13buildJacobianEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 %1, i32 noundef %2, i32 noundef %3, float noundef %4) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraint23solveConstraintObsoleteER12btSolverBodyS1_f(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, ptr noundef nonnull align 8 dereferenceable(248) %2, float noundef %3) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

declare noundef ptr @_ZNK17btTypedConstraint9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16btGearConstraint8setParamEifi(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, float noundef %2, i32 noundef %3) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef float @_ZNK16btGearConstraint8getParamEii(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 {
bb.a:
  ret float 0.000000e+00
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK16btGearConstraint28calculateSerializeBufferSizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i32 104
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK16btGearConstraint9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK17btTypedConstraint9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load float, ptr %i.b, align 8, !tbaa !19
  store float %i.d, ptr %i.c, align 4, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.f = load float, ptr %i.e, align 4, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 68
  store float %i.f, ptr %i.g, align 4, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load float, ptr %i.h, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  store float %i.i, ptr %i.j, align 4, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.l = load float, ptr %i.k, align 4, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 76
  store float %i.l, ptr %i.m, align 4, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.p = load float, ptr %i.n, align 8, !tbaa !19
  store float %i.p, ptr %i.o, align 4, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.r = load float, ptr %i.q, align 4, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 84
  store float %i.r, ptr %i.s, align 4, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load float, ptr %i.t, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88
  store float %i.u, ptr %i.v, align 4, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.x = load float, ptr %i.w, align 4, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 92
  store float %i.x, ptr %i.y, align 4, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.aa = load float, ptr %i.z, align 4, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 96
  store float %i.aa, ptr %i.ab, align 8, !tbaa !40
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 100
  store i32 0, ptr %i.ac, align 4
  ret ptr @.str
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"_ZTS13btTypedObject", !6, i64 0}
!10 = !{!"float", !5, i64 0}
!11 = !{!"bool", !5, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTS11btRigidBody", !12, i64 0}
!14 = !{!"p1 _ZTS15btJointFeedback", !12, i64 0}
!15 = !{!"_ZTS17btTypedConstraint", !9, i64 8, !6, i64 12, !5, i64 16, !10, i64 24, !11, i64 28, !11, i64 29, !6, i64 32, !13, i64 40, !13, i64 48, !10, i64 56, !10, i64 60, !14, i64 64}
!16 = !{!"_ZTS9btVector3", !5, i64 0}
!17 = !{!"_ZTS16btGearConstraint", !15, i64 0, !16, i64 72, !16, i64 88, !11, i64 104, !10, i64 108}
!18 = !{!17, !10, i64 108}
!19 = !{!10, !10, i64 0}
!20 = !{!"vtable pointer", !4, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!5, !5, i64 0}
!23 = !{i64 0, i64 16, !22}
!24 = !{!"_ZTSN17btTypedConstraint17btConstraintInfo1E", !6, i64 0, !6, i64 4}
!25 = !{!24, !6, i64 0}
!26 = !{!24, !6, i64 4}
!27 = !{!15, !13, i64 40}
!28 = !{}
!29 = !{i64 8}
!30 = !{!15, !13, i64 48}
!31 = !{!"p1 float", !12, i64 0}
!32 = !{!"_ZTSN17btTypedConstraint17btConstraintInfo2E", !10, i64 0, !10, i64 4, !31, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !6, i64 40, !31, i64 48, !31, i64 56, !31, i64 64, !31, i64 72, !6, i64 80, !10, i64 84}
!33 = !{!32, !31, i64 16}
!34 = !{!32, !31, i64 32}
!35 = !{!"p1 _ZTS20btRigidBodyFloatData", !12, i64 0}
!36 = !{!"p1 omnipotent char", !12, i64 0}
!37 = !{!"_ZTS26btTypedConstraintFloatData", !35, i64 0, !35, i64 8, !36, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !10, i64 40, !10, i64 44, !6, i64 48, !6, i64 52, !10, i64 56, !6, i64 60}
!38 = !{!"_ZTS18btVector3FloatData", !5, i64 0}
!39 = !{!"_ZTS25btGearConstraintFloatData", !37, i64 0, !38, i64 64, !38, i64 80, !10, i64 96, !5, i64 100}
!40 = !{!39, !10, i64 96}
end_hunk_0
