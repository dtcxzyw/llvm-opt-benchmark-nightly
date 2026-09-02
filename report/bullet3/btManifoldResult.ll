Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btManifoldResult?download=true
inline.NumInlined: 134
inline.NumDeleted: 37
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btManifoldPoint = type <{ %class.btVector3, %class.btVector3, %class.btVector3, %class.btVector3, %class.btVector3, float, float, float, float, float, i32, i32, i32, i32, [4 x i8], ptr, i32, float, float, float, float, float, float, %union.anon.0, %union.anon.1, float, i32, %class.btVector3, %class.btVector3, [4 x i8] }>
%union.anon.0 = type { float }
%union.anon.1 = type { float }
%class.btVector3 = type { [4 x float] }

$_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev = comdat any

$_ZN16btManifoldResultD0Ev = comdat any

$_ZN16btManifoldResult20setShapeIdentifiersAEii = comdat any

$_ZN16btManifoldResult20setShapeIdentifiersBEii = comdat any

$_ZTIN36btDiscreteCollisionDetectorInterface6ResultE = comdat any

$_ZTSN36btDiscreteCollisionDetectorInterface6ResultE = comdat any

@gContactAddedCallback = dso_local local_unnamed_addr global ptr null, align 8
@gCalculateCombinedRestitutionCallback = dso_local local_unnamed_addr global ptr @_ZN16btManifoldResult28calculateCombinedRestitutionEPK17btCollisionObjectS2_, align 8
@gCalculateCombinedFrictionCallback = dso_local local_unnamed_addr global ptr @_ZN16btManifoldResult25calculateCombinedFrictionEPK17btCollisionObjectS2_, align 8
@gCalculateCombinedRollingFrictionCallback = dso_local local_unnamed_addr global ptr @_ZN16btManifoldResult32calculateCombinedRollingFrictionEPK17btCollisionObjectS2_, align 8
@gCalculateCombinedSpinningFrictionCallback = dso_local local_unnamed_addr global ptr @_ZN16btManifoldResult33calculateCombinedSpinningFrictionEPK17btCollisionObjectS2_, align 8
@gCalculateCombinedContactDampingCallback = dso_local local_unnamed_addr global ptr @_ZN16btManifoldResult31calculateCombinedContactDampingEPK17btCollisionObjectS2_, align 8
@gCalculateCombinedContactStiffnessCallback = dso_local local_unnamed_addr global ptr @_ZN16btManifoldResult33calculateCombinedContactStiffnessEPK17btCollisionObjectS2_, align 8
@_ZTV16btManifoldResult = dso_local constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTI16btManifoldResult, ptr @_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev, ptr @_ZN16btManifoldResultD0Ev, ptr @_ZN16btManifoldResult20setShapeIdentifiersAEii, ptr @_ZN16btManifoldResult20setShapeIdentifiersBEii, ptr @_ZN16btManifoldResult15addContactPointERK9btVector3S2_f] }, align 8
@gContactStartedCallback = external local_unnamed_addr global ptr, align 8
@_ZTI16btManifoldResult = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS16btManifoldResult, ptr @_ZTIN36btDiscreteCollisionDetectorInterface6ResultE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS16btManifoldResult = dso_local constant [19 x i8] c"16btManifoldResult\00", align 1
@_ZTIN36btDiscreteCollisionDetectorInterface6ResultE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN36btDiscreteCollisionDetectorInterface6ResultE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN36btDiscreteCollisionDetectorInterface6ResultE = linkonce_odr dso_local constant [48 x i8] c"N36btDiscreteCollisionDetectorInterface6ResultE\00", comdat, align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN16btManifoldResultC1EPK24btCollisionObjectWrapperS2_ = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN16btManifoldResultC2EPK24btCollisionObjectWrapperS2_

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZN16btManifoldResult28calculateCombinedRestitutionEPK17btCollisionObjectS2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.b = load float, ptr %i.a, align 4, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.d = load float, ptr %i.c, align 4, !tbaa !30
  %i.e = fmul float %i.b, %i.d
  ret float %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZN16btManifoldResult25calculateCombinedFrictionEPK17btCollisionObjectS2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load float, ptr %i.a, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.d = load float, ptr %i.c, align 8, !tbaa !22
  %i.e = fmul float %i.b, %i.d                    ; 2 uses
  %i.f = fcmp olt float %i.e, -1.000000e+01
  %spec.store.select = select i1 %i.f, float -1.000000e+01, float %i.e ; 2 uses
  %i.g = fcmp ogt float %spec.store.select, 1.000000e+01
  %spec.store.select1 = select i1 %i.g, float 1.000000e+01, float %spec.store.select
  ret float %spec.store.select1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZN16btManifoldResult32calculateCombinedRollingFrictionEPK17btCollisionObjectS2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load float, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.d = load float, ptr %i.c, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.f = load float, ptr %i.e, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.h = load float, ptr %i.g, align 8, !tbaa !22
  %i.i = fmul float %i.f, %i.h
  %i.j = tail call float @llvm.fmuladd.f32(float %i.b, float %i.d, float %i.i) ; 2 uses
  %i.k = fcmp olt float %i.j, -1.000000e+01
  %spec.store.select = select i1 %i.k, float -1.000000e+01, float %i.j ; 2 uses
  %i.l = fcmp ogt float %spec.store.select, 1.000000e+01
  %spec.store.select1 = select i1 %i.l, float 1.000000e+01, float %spec.store.select
  ret float %spec.store.select1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZN16btManifoldResult33calculateCombinedSpinningFrictionEPK17btCollisionObjectS2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.b = load float, ptr %i.a, align 4, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.d = load float, ptr %i.c, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 260
  %i.f = load float, ptr %i.e, align 4, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.h = load float, ptr %i.g, align 8, !tbaa !22
  %i.i = fmul float %i.f, %i.h
  %i.j = tail call float @llvm.fmuladd.f32(float %i.b, float %i.d, float %i.i) ; 2 uses
  %i.k = fcmp olt float %i.j, -1.000000e+01
  %spec.store.select = select i1 %i.k, float -1.000000e+01, float %i.j ; 2 uses
  %i.l = fcmp ogt float %spec.store.select, 1.000000e+01
  %spec.store.select1 = select i1 %i.l, float 1.000000e+01, float %spec.store.select
  ret float %spec.store.select1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZN16btManifoldResult31calculateCombinedContactDampingEPK17btCollisionObjectS2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load float, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.d = load float, ptr %i.c, align 8, !tbaa !33
  %i.e = fadd float %i.b, %i.d
  ret float %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZN16btManifoldResult33calculateCombinedContactStiffnessEPK17btCollisionObjectS2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.b = load float, ptr %i.a, align 4, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 268
  %i.d = load float, ptr %i.c, align 4, !tbaa !34
  %i.e = insertelement <2 x float> poison, float %i.b, i64 0
  %i.f = insertelement <2 x float> %i.e, float %i.d, i64 1
  %i.g = fdiv <2 x float> splat (float 1.000000e+00), %i.f ; 2 uses
  %shift = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.g, %shift
  %i.h = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.i = fdiv float 1.000000e+00, %i.h
  ret float %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN16btManifoldResultC2EPK24btCollisionObjectWrapperS2_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(52) initializes((0, 52)) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV16btManifoldResult, i64 16), ptr %0, align 8, !tbaa !36
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.b, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 -1, i64 16, i1 false)
  store float 0.000000e+00, ptr %i.e, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16btManifoldResult15addContactPointERK9btVector3S2_f(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, float noundef %3) unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %class.btManifoldPoint, align 8     ; 37 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = tail call noundef float @_ZNK20btPersistentManifold27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(880) %i.b)
  %i.d = fcmp ogt float %3, %i.c
  br i1 %i.d, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 840
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48   ; 9 uses
  %.not = icmp eq ptr %i.g, %i.k                  ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 856
  %i.m = load i32, ptr %i.l, align 8, !tbaa !49
  %i.n = icmp eq i32 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %5 = load float, ptr %i.o, align 4, !tbaa !50
  %6 = load <3 x float>, ptr %2, align 4, !tbaa !50 ; 2 uses
  %i.p = load <3 x float>, ptr %1, align 4, !tbaa !50
  %i.q = insertelement <3 x float> poison, float %3, i64 0
  %i.r = shufflevector <3 x float> %i.q, <3 x float> poison, <3 x i32> zeroinitializer
  %i.s = fmul <3 x float> %i.r, %i.p
  %7 = insertelement <3 x float> %6, float %5, i64 1
  %i.t = fadd <3 x float> %i.s, %7                ; 4 uses
  %i.u = shufflevector <3 x float> %i.t, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.v = shufflevector <3 x float> %i.t, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.w = insertelement <2 x float> %i.v, float 0.000000e+00, i64 1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !48  ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ai = load float, ptr %i.af, align 4, !tbaa !50, !noalias !51
  %i.aj = load float, ptr %i.ag, align 4, !tbaa !50, !noalias !51
  %i.ak = load float, ptr %i.ah, align 4, !tbaa !50, !noalias !51
  %i.al = load <3 x float>, ptr %i.ac, align 4, !tbaa !50
  %i.am = fsub <3 x float> %i.t, %i.al            ; 6 uses
  %i.an = load <2 x float>, ptr %i.ab, align 4, !tbaa !50, !noalias !51
  %i.ao = load <2 x float>, ptr %i.ad, align 4, !tbaa !50, !noalias !51
  %i.ap = load <2 x float>, ptr %i.ae, align 4, !tbaa !50, !noalias !51
  %i.aq = shufflevector <3 x float> %i.am, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ar = fmul <2 x float> %i.aq, %i.ao
  %i.as = shufflevector <3 x float> %i.am, <3 x float> poison, <2 x i32> zeroinitializer
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.as, <2 x float> %i.ar)
  %i.au = shufflevector <3 x float> %i.am, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.au, <2 x float> %i.at)
  %i.aw = extractelement <3 x float> %i.am, i64 1
  %i.ax = fmul float %i.aw, %i.aj
  %i.ay = extractelement <3 x float> %i.am, i64 0
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.ay, float %i.ax)
  %i.ba = extractelement <3 x float> %i.am, i64 2
  %i.bb = tail call noundef float @llvm.fmuladd.f32(float %i.ak, float %i.ba, float %i.az)
  %.sroa.3.12.vec.insert.i4.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bb, i64 0
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.bj = load float, ptr %i.bg, align 4, !tbaa !50, !noalias !52
  %i.bk = load float, ptr %i.bh, align 4, !tbaa !50, !noalias !52
  %i.bl = load float, ptr %i.bi, align 4, !tbaa !50, !noalias !52
  %i.bm = load <3 x float>, ptr %i.bd, align 4, !tbaa !50
  %i.bn = fsub <3 x float> %i.t, %i.bm            ; 6 uses
  %i.bo = load <2 x float>, ptr %i.bc, align 4, !tbaa !50, !noalias !52
  %i.bp = load <2 x float>, ptr %i.be, align 4, !tbaa !50, !noalias !52
  %i.bq = load <2 x float>, ptr %i.bf, align 4, !tbaa !50, !noalias !52
  %i.br = shufflevector <3 x float> %i.bn, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bs = fmul <2 x float> %i.br, %i.bp
  %i.bt = shufflevector <3 x float> %i.bn, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.bt, <2 x float> %i.bs)
  %i.bv = shufflevector <3 x float> %i.bn, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.bv, <2 x float> %i.bu)
  %i.bx = extractelement <3 x float> %i.bn, i64 1
  %i.by = fmul float %i.bx, %i.bk
  %i.bz = extractelement <3 x float> %i.bn, i64 0
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bz, float %i.by)
  %i.cb = extractelement <3 x float> %i.bn, i64 2
  %i.cc = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %i.cb, float %i.ca)
  %.sroa.3.12.vec.insert.i4.i45 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cc, i64 0
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !29
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !48
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink137 = phi ptr [ %i.cg, %bb.d ], [ %i.k, %bb.c ] ; 7 uses
  %.sroa.554.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i4.i45, %bb.d ], [ %.sroa.3.12.vec.insert.i4.i, %bb.c ]
  %.sroa.053.0 = phi <2 x float> [ %i.bw, %bb.d ], [ %i.av, %bb.c ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.sink137, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %.sink137, i64 56
  %i.cj = getelementptr inbounds nuw i8, ptr %.sink137, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %.sink137, i64 40
  %i.cl = getelementptr inbounds nuw i8, ptr %.sink137, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %.sink137, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %.sink137, i64 48
  %i.co = load float, ptr %i.cl, align 4, !tbaa !50, !noalias !53
  %i.cp = load float, ptr %i.cm, align 4, !tbaa !50, !noalias !53
  %i.cq = load float, ptr %i.cn, align 4, !tbaa !50, !noalias !53
  %8 = load <3 x float>, ptr %i.ci, align 4, !tbaa !50
  %9 = fsub <3 x float> %6, %8                    ; 6 uses
  %i.cr = load <2 x float>, ptr %i.ch, align 4, !tbaa !50, !noalias !53
  %i.cs = load <2 x float>, ptr %i.cj, align 4, !tbaa !50, !noalias !53
  %i.ct = load <2 x float>, ptr %i.ck, align 4, !tbaa !50, !noalias !53
  %10 = shufflevector <3 x float> %9, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %11 = fmul <2 x float> %10, %i.cs
  %12 = shufflevector <3 x float> %9, <3 x float> poison, <2 x i32> zeroinitializer
  %13 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %12, <2 x float> %11)
  %14 = shufflevector <3 x float> %9, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %14, <2 x float> %13)
  %15 = extractelement <3 x float> %9, i64 1
  %16 = fmul float %15, %i.cp
  %17 = extractelement <3 x float> %9, i64 0
  %18 = tail call float @llvm.fmuladd.f32(float %i.co, float %17, float %16)
  %19 = extractelement <3 x float> %9, i64 2
  %i.cv = tail call noundef float @llvm.fmuladd.f32(float %i.cq, float %19, float %18)
  %.sroa.3.12.vec.insert.i4.i50 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cv, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store <2 x float> %.sroa.053.0, ptr %4, align 8
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.554.0, ptr %.sroa.554.0..sroa_idx, align 8, !tbaa !54
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <2 x float> %i.cu, ptr %i.cw, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i4.i50, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !54
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !55
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 80
  store float %3, ptr %i.cz, align 8, !tbaa !57
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 84 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 100 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.da, i8 0, i64 16, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.db, i8 -1, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %i.dc, i8 0, i64 84, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <2 x float> %i.u, ptr %i.dd, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  store <2 x float> %i.w, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !55
  %i.de = call noundef i32 @_ZNK20btPersistentManifold13getCacheEntryERK15btManifoldPoint(ptr noundef nonnull align 8 dereferenceable(880) %i.e, ptr noundef nonnull align 8 dereferenceable(204) %4) ; 3 uses
  %i.df = load ptr, ptr @gCalculateCombinedFrictionCallback, align 8, !tbaa !58
  %i.dg = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !48
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !29
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !48
  %i.dn = call noundef float %i.df(ptr noundef %i.di, ptr noundef %i.dm)
  store float %i.dn, ptr %i.da, align 4, !tbaa !59
  %i.do = load ptr, ptr @gCalculateCombinedRestitutionCallback, align 8, !tbaa !58
  %i.dp = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !48
  %i.ds = load ptr, ptr %i.dj, align 8, !tbaa !29
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !48
  %i.dv = call noundef float %i.do(ptr noundef %i.dr, ptr noundef %i.du)
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 96
  store float %i.dv, ptr %i.dw, align 8, !tbaa !60
  %i.dx = load ptr, ptr @gCalculateCombinedRollingFrictionCallback, align 8, !tbaa !58
  %i.dy = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !48
  %i.eb = load ptr, ptr %i.dj, align 8, !tbaa !29
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !48
  %i.ee = call noundef float %i.dx(ptr noundef %i.ea, ptr noundef %i.ed)
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 88
  store float %i.ee, ptr %i.ef, align 8, !tbaa !61
  %i.eg = load ptr, ptr @gCalculateCombinedSpinningFrictionCallback, align 8, !tbaa !58
  %i.eh = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !48
  %i.ek = load ptr, ptr %i.dj, align 8, !tbaa !29
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !48
  %i.en = call noundef float %i.eg(ptr noundef %i.ej, ptr noundef %i.em)
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 92
  store float %i.en, ptr %i.eo, align 4, !tbaa !62
  %i.ep = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !48 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 224
  %i.et = load i32, ptr %i.es, align 8, !tbaa !63 ; 2 uses
  %i.eu = and i32 %i.et, 128
  %.not25 = icmp eq i32 %i.eu, 0
  %.pre = load ptr, ptr %i.dj, align 8, !tbaa !29
  %i.ev = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !48 ; 2 uses
  br i1 %.not25, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 224
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !63
  %i.ez = and i32 %i.ey, 128
  %.not26 = icmp eq i32 %i.ez, 0
  br i1 %.not26, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.f
  %i.fa = load ptr, ptr @gCalculateCombinedContactDampingCallback, align 8, !tbaa !58
  %i.fb = call noundef float %i.fa(ptr noundef nonnull %i.er, ptr noundef %i.ew)
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 160
  store float %i.fb, ptr %i.fc, align 8, !tbaa !54
  %i.fd = load ptr, ptr @gCalculateCombinedContactStiffnessCallback, align 8, !tbaa !58
  %i.fe = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !48
  %i.fh = load ptr, ptr %i.dj, align 8, !tbaa !29
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !48
  %i.fk = call noundef float %i.fd(ptr noundef %i.fg, ptr noundef %i.fj)
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 156
  store float %i.fk, ptr %i.fl, align 4, !tbaa !54
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !64
  %i.fo = or i32 %i.fn, 8
  store i32 %i.fo, ptr %i.fm, align 8, !tbaa !64
  %.pre74 = load ptr, ptr %i.h, align 8, !tbaa !28
  %.phi.trans.insert75 = getelementptr inbounds nuw i8, ptr %.pre74, i64 16
  %.pre76 = load ptr, ptr %.phi.trans.insert75, align 8, !tbaa !48
  %.phi.trans.insert77 = getelementptr inbounds nuw i8, ptr %.pre76, i64 224
  %.pre78 = load i32, ptr %.phi.trans.insert77, align 8, !tbaa !63
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.fp = phi i32 [ %.pre78, %._crit_edge ], [ %i.et, %bb.f ]
  %i.fq = and i32 %i.fp, 512
  %.not27 = icmp eq i32 %i.fq, 0
  br i1 %.not27, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fr = load ptr, ptr %i.dj, align 8, !tbaa !29
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !48
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 224
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !63
  %i.fw = and i32 %i.fv, 512
  %.not28 = icmp eq i32 %i.fw, 0
  br i1 %.not28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !64
  %i.fz = or i32 %i.fy, 16
  store i32 %i.fz, ptr %i.fx, align 8, !tbaa !64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 172
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 188
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.gd = load float, ptr %i.gc, align 8, !tbaa !50 ; 6 uses
  %i.ge = call noundef float @llvm.fabs.f32(float %i.gd)
  %i.gf = fcmp ogt float %i.ge, f0x3F3504F3
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 180
  br i1 %i.gf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !50 ; 3 uses
  %i.gj = fmul nnan float %i.gd, %i.gd
  %i.gk = call float @llvm.fmuladd.f32(float %i.gi, float %i.gi, float %i.gj) ; 2 uses
  %sqrt.i = call float @llvm.sqrt.f32(float %i.gk)
  %i.gl = fdiv float 1.000000e+00, %sqrt.i        ; 3 uses
  %i.gm = fneg float %i.gd
  %i.gn = fmul float %i.gl, %i.gm                 ; 2 uses
  %i.go = fmul float %i.gi, %i.gl                 ; 2 uses
  %i.gp = fmul float %i.gk, %i.gl
  %i.gq = load float, ptr %i.cy, align 8, !tbaa !50 ; 2 uses
  %i.gr = fneg float %i.gq
  %i.gs = fmul float %i.go, %i.gr
  %i.gt = fmul float %i.gn, %i.gq
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit

bb.l:                                             ; preds = %bb.j
  %i.gu = load float, ptr %i.cy, align 8, !tbaa !50 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !50 ; 3 uses
  %i.gx = fmul float %i.gw, %i.gw
  %i.gy = call float @llvm.fmuladd.f32(float %i.gu, float %i.gu, float %i.gx) ; 2 uses
  %sqrt43.i = call float @llvm.sqrt.f32(float %i.gy)
  %i.gz = fdiv float 1.000000e+00, %sqrt43.i      ; 3 uses
  %i.ha = fneg float %i.gw
  %i.hb = fmul float %i.gz, %i.ha                 ; 2 uses
  %i.hc = fmul float %i.gu, %i.gz                 ; 2 uses
  %i.hd = fneg float %i.gd
  %i.he = fmul float %i.hc, %i.hd
  %i.hf = fmul float %i.gd, %i.hb
  %i.hg = fmul float %i.gy, %i.gz
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit

_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit:   ; preds = %bb.k, %bb.l
  %.sink68 = phi float [ 0.000000e+00, %bb.k ], [ %i.hb, %bb.l ]
  %.sink67 = phi float [ %i.gn, %bb.k ], [ %i.hc, %bb.l ]
  %.sink66 = phi float [ %i.go, %bb.k ], [ 0.000000e+00, %bb.l ]
  %.sink65 = phi float [ %i.gp, %bb.k ], [ %i.he, %bb.l ]
  %.sink = phi float [ %i.gs, %bb.k ], [ %i.hf, %bb.l ]
  %.sink.i = phi float [ %i.gt, %bb.k ], [ %i.hg, %bb.l ]
  store float %.sink68, ptr %i.ga, align 4, !tbaa !50
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 176
  store float %.sink67, ptr %i.hh, align 8, !tbaa !50
  store float %.sink66, ptr %i.gg, align 4, !tbaa !50
  store float %.sink65, ptr %i.gb, align 4, !tbaa !50
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 192
  store float %.sink, ptr %i.hi, align 8, !tbaa !50
  %i.hj = getelementptr inbounds nuw i8, ptr %4, i64 196
  store float %.sink.i, ptr %i.hj, align 4, !tbaa !50
  %.142 = select i1 %.not, i64 32, i64 36
  %.143 = select i1 %.not, i64 36, i64 32
  %.144 = select i1 %.not, i64 40, i64 44
  %.145 = select i1 %.not, i64 44, i64 40
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 %.142
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 %.143
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 %.144
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 %.145
  %.sink69 = load i32, ptr %i.hn, align 4, !tbaa !65
  %.sink70 = load i32, ptr %i.hm, align 4, !tbaa !65
  %.sink71 = load i32, ptr %i.hl, align 4, !tbaa !65
  %.sink72 = load i32, ptr %i.hk, align 4, !tbaa !65
  store i32 %.sink72, ptr %i.db, align 4, !tbaa !66
end_hunk_0
