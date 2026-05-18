inline.NumInlined: 134
inline.NumDeleted: 30
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btScaledTriangleCallback = type { %class.btTriangleCallback, ptr, %class.btVector3 }
%class.btTriangleCallback = type { ptr }
%class.btVector3 = type { [4 x float] }

$__clang_call_terminate = comdat any

$_ZNK28btScaledBvhTriangleMeshShape7getNameEv = comdat any

$_ZN14btConcaveShape9setMarginEf = comdat any

$_ZNK14btConcaveShape9getMarginEv = comdat any

$_ZN24btScaledTriangleCallbackD0Ev = comdat any

$_ZN24btScaledTriangleCallback15processTriangleEP9btVector3ii = comdat any

$_ZTV24btScaledTriangleCallback = comdat any

$_ZTI24btScaledTriangleCallback = comdat any

$_ZTS24btScaledTriangleCallback = comdat any

@_ZTV28btScaledBvhTriangleMeshShape = dso_local unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTI28btScaledBvhTriangleMeshShape, ptr @_ZN28btScaledBvhTriangleMeshShapeD2Ev, ptr @_ZN28btScaledBvhTriangleMeshShapeD0Ev, ptr @_ZNK28btScaledBvhTriangleMeshShape7getAabbERK11btTransformR9btVector3S4_, ptr @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf, ptr @_ZNK16btCollisionShape20getAngularMotionDiscEv, ptr @_ZNK16btCollisionShape27getContactBreakingThresholdEv, ptr @_ZN28btScaledBvhTriangleMeshShape15setLocalScalingERK9btVector3, ptr @_ZNK28btScaledBvhTriangleMeshShape15getLocalScalingEv, ptr @_ZNK28btScaledBvhTriangleMeshShape21calculateLocalInertiaEfR9btVector3, ptr @_ZNK28btScaledBvhTriangleMeshShape7getNameEv, ptr @_ZN14btConcaveShape9setMarginEf, ptr @_ZNK14btConcaveShape9getMarginEv, ptr @_ZNK28btScaledBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_] }, align 8
@_ZTI28btScaledBvhTriangleMeshShape = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS28btScaledBvhTriangleMeshShape, ptr @_ZTI14btConcaveShape }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS28btScaledBvhTriangleMeshShape = dso_local constant [31 x i8] c"28btScaledBvhTriangleMeshShape\00", align 1
@_ZTI14btConcaveShape = external constant ptr
@_ZTV24btScaledTriangleCallback = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI24btScaledTriangleCallback, ptr @_ZN18btTriangleCallbackD2Ev, ptr @_ZN24btScaledTriangleCallbackD0Ev, ptr @_ZN24btScaledTriangleCallback15processTriangleEP9btVector3ii] }, comdat, align 8
@_ZTI24btScaledTriangleCallback = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS24btScaledTriangleCallback, ptr @_ZTI18btTriangleCallback }, comdat, align 8
@_ZTS24btScaledTriangleCallback = linkonce_odr dso_local constant [27 x i8] c"24btScaledTriangleCallback\00", comdat, align 1
@_ZTI18btTriangleCallback = external constant ptr
@.str = private unnamed_addr constant [22 x i8] c"SCALEDBVHTRIANGLEMESH\00", align 1

@_ZN28btScaledBvhTriangleMeshShapeC1EP22btBvhTriangleMeshShapeRK9btVector3 = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN28btScaledBvhTriangleMeshShapeC2EP22btBvhTriangleMeshShapeRK9btVector3
@_ZN28btScaledBvhTriangleMeshShapeD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN28btScaledBvhTriangleMeshShapeD2Ev

; Function Attrs: uwtable
define dso_local void @_ZN28btScaledBvhTriangleMeshShapeC2EP22btBvhTriangleMeshShapeRK9btVector3(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN14btConcaveShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTV28btScaledBvhTriangleMeshShape, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %i.b, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 22, ptr %i.c, align 8, !tbaa !20
  ret void
}

declare void @_ZN14btConcaveShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_ZN14btConcaveShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN28btScaledBvhTriangleMeshShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN14btConcaveShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0)
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN28btScaledBvhTriangleMeshShapeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN14btConcaveShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %_ZN28btScaledBvhTriangleMeshShapeD2Ev.exit unwind label %bb.b

_ZN28btScaledBvhTriangleMeshShapeD2Ev.exit:       ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  resume { ptr, i32 } %i.a
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: uwtable
define dso_local void @_ZNK28btScaledBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.btScaledTriangleCallback, align 8 ; 9 uses
  %5 = alloca %class.btVector3, align 8           ; 6 uses
  %6 = alloca %class.btVector3, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV24btScaledTriangleCallback, i64 16), ptr %4, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %7 = load float, ptr %i.d, align 4, !tbaa !25   ; 3 uses
  %8 = fdiv float 1.000000e+00, %7                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %9 = load <2 x float>, ptr %i.a, align 4, !tbaa !25 ; 3 uses
  %10 = fdiv <2 x float> splat (float 1.000000e+00), %9 ; 2 uses
  %11 = fcmp ult <2 x float> %9, zeroinitializer
  %12 = load <2 x float>, ptr %2, align 4         ; 2 uses
  %13 = load <2 x float>, ptr %3, align 4         ; 2 uses
  %14 = select <2 x i1> %11, <2 x float> %13, <2 x float> %12
  %15 = fmul <2 x float> %10, %14
  store <2 x float> %15, ptr %5, align 8, !tbaa !25
  %16 = fcmp ult float %7, 0.000000e+00
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load float, ptr %17, align 4             ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load float, ptr %18, align 4             ; 2 uses
  %.v27 = select i1 %16, float %i.f, float %i.e
  %19 = fmul float %8, %.v27
  %20 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %19, ptr %20, align 8, !tbaa !25
  %21 = fcmp ugt <2 x float> %9, zeroinitializer
  %22 = select <2 x i1> %21, <2 x float> %13, <2 x float> %12
  %23 = fmul <2 x float> %10, %22
  store <2 x float> %23, ptr %6, align 8, !tbaa !25
  %24 = fcmp ugt float %7, 0.000000e+00
  %.v30 = select i1 %24, float %i.f, float %i.e
  %25 = fmul float %8, %.v30
  %26 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %25, ptr %26, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(93) %i.h, ptr noundef nonnull %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  invoke void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #14
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: uwtable
define dso_local void @_ZNK28btScaledBvhTriangleMeshShape7getAabbERK11btTransformR9btVector3S4_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %2, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %3) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.sroa.0139.0.copyload = load float, ptr %i.c, align 4
  %.sroa.7142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.7142.0.copyload = load float, ptr %.sroa.7142.0..sroa_idx, align 4
  %.sroa.11145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %.sroa.11145.0.copyload = load float, ptr %.sroa.11145.0..sroa_idx, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %.sroa.0129.0.copyload = load float, ptr %i.d, align 4
  %.sroa.7132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.7132.0.copyload = load float, ptr %.sroa.7132.0..sroa_idx, align 4
  %.sroa.11135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %.sroa.11135.0.copyload = load float, ptr %.sroa.11135.0..sroa_idx, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load float, ptr %i.e, align 4, !tbaa !25 ; 4 uses
  %i.g = fmul float %.sroa.0139.0.copyload, %i.f  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load float, ptr %i.h, align 8, !tbaa !25 ; 4 uses
  %i.j = fmul float %.sroa.7142.0.copyload, %i.i  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.l = load float, ptr %i.k, align 4, !tbaa !25 ; 4 uses
  %i.m = fmul float %.sroa.11145.0.copyload, %i.l ; 2 uses
  %i.n = fmul float %.sroa.0129.0.copyload, %i.f  ; 2 uses
  %i.o = fmul float %.sroa.7132.0.copyload, %i.i  ; 2 uses
  %i.p = fmul float %.sroa.11135.0.copyload, %i.l ; 2 uses
  %i.q = fcmp ult float %i.f, 0.000000e+00
  %.in.sroa.speculated = select i1 %i.q, float %i.n, float %i.g ; 2 uses
  %i.r = fcmp ult float %i.i, 0.000000e+00
  %.pn.sroa.phi.sroa.speculated = select i1 %i.r, float %i.o, float %i.j ; 2 uses
  %i.s = fcmp ult float %i.l, 0.000000e+00
  %.pn9.sroa.phi.sroa.speculated = select i1 %i.s, float %i.p, float %i.m ; 2 uses
  %i.t = fcmp ugt float %i.f, 0.000000e+00
  %.in10.sroa.speculated = select i1 %i.t, float %i.n, float %i.g ; 2 uses
  %i.u = fcmp ugt float %i.i, 0.000000e+00
  %.pn12.sroa.phi.sroa.speculated = select i1 %i.u, float %i.o, float %i.j ; 2 uses
  %i.v = fcmp ugt float %i.l, 0.000000e+00
  %.pn14.sroa.phi.sroa.speculated = select i1 %i.v, float %i.p, float %i.m ; 2 uses
  %i.w = fsub float %.in10.sroa.speculated, %.in.sroa.speculated
  %i.x = fsub float %.pn12.sroa.phi.sroa.speculated, %.pn.sroa.phi.sroa.speculated
  %i.y = fsub float %.pn14.sroa.phi.sroa.speculated, %.pn9.sroa.phi.sroa.speculated
  %i.z = fmul float %i.w, 5.000000e-01
  %i.aa = fmul float %i.x, 5.000000e-01
  %i.ab = fmul float %i.y, 5.000000e-01
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef float %i.ae(ptr noundef nonnull align 8 dereferenceable(28) %i.b) ; 3 uses
  %i.ag = fadd float %i.z, %i.af                  ; 3 uses
  %i.ah = fadd float %i.af, %i.aa                 ; 3 uses
  %i.ai = fadd float %i.af, %i.ab                 ; 3 uses
  %i.aj = fadd float %.in10.sroa.speculated, %.in.sroa.speculated
  %i.ak = fadd float %.pn12.sroa.phi.sroa.speculated, %.pn.sroa.phi.sroa.speculated
  %i.al = fadd float %.pn14.sroa.phi.sroa.speculated, %.pn9.sroa.phi.sroa.speculated
  %i.am = fmul float %i.aj, 5.000000e-01          ; 3 uses
  %i.an = fmul float %i.ak, 5.000000e-01          ; 3 uses
  %i.ao = fmul float %i.al, 5.000000e-01          ; 3 uses
  %i.ap = load float, ptr %1, align 4, !tbaa !25, !noalias !26 ; 2 uses
  %i.aq = tail call noundef float @llvm.fabs.f32(float %i.ap)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !25, !noalias !26 ; 2 uses
  %i.at = tail call noundef float @llvm.fabs.f32(float %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load float, ptr %i.au, align 4, !tbaa !25, !noalias !26 ; 2 uses
  %i.aw = tail call noundef float @llvm.fabs.f32(float %i.av)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !25, !noalias !26 ; 2 uses
  %i.az = tail call noundef float @llvm.fabs.f32(float %i.ay)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !25, !noalias !26 ; 2 uses
  %i.bc = tail call noundef float @llvm.fabs.f32(float %i.bb)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.be = load float, ptr %i.bd, align 4, !tbaa !25, !noalias !26 ; 2 uses
  %i.bf = tail call noundef float @llvm.fabs.f32(float %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !25, !noalias !26 ; 2 uses
  %i.bi = tail call noundef float @llvm.fabs.f32(float %i.bh)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !25, !noalias !26 ; 2 uses
  %i.bl = tail call noundef float @llvm.fabs.f32(float %i.bk)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !25, !noalias !26 ; 2 uses
  %i.bo = tail call noundef float @llvm.fabs.f32(float %i.bn)
  %i.bp = fmul float %i.an, %i.as
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.am, float %i.bp)
  %i.br = tail call noundef float @llvm.fmuladd.f32(float %i.av, float %i.ao, float %i.bq)
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !25
  %i.bu = fadd float %i.br, %i.bt                 ; 2 uses
  %i.bv = fmul float %i.an, %i.bb
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.am, float %i.bv)
  %i.bx = tail call noundef float @llvm.fmuladd.f32(float %i.be, float %i.ao, float %i.bw)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bz = load float, ptr %i.by, align 4, !tbaa !25
  %i.ca = fadd float %i.bx, %i.bz                 ; 2 uses
  %i.cb = fmul float %i.an, %i.bk
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.am, float %i.cb)
  %i.cd = tail call noundef float @llvm.fmuladd.f32(float %i.bn, float %i.ao, float %i.cc)
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !25
  %i.cg = fadd float %i.cd, %i.cf                 ; 2 uses
  %i.ch = fmul float %i.ah, %i.at
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.ag, float %i.ch)
  %i.cj = tail call noundef float @llvm.fmuladd.f32(float %i.aw, float %i.ai, float %i.ci) ; 2 uses
  %i.ck = fmul float %i.ah, %i.bc
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.az, float %i.ag, float %i.ck)
  %i.cm = tail call noundef float @llvm.fmuladd.f32(float %i.bf, float %i.ai, float %i.cl) ; 2 uses
  %i.cn = fmul float %i.ah, %i.bl
  %i.co = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.ag, float %i.cn)
  %i.cp = tail call noundef float @llvm.fmuladd.f32(float %i.bo, float %i.ai, float %i.co) ; 2 uses
  %i.cq = fsub float %i.bu, %i.cj
  %i.cr = fsub float %i.ca, %i.cm
  %i.cs = fsub float %i.cg, %i.cp
  %.sroa.0.0.vec.insert.i40 = insertelement <2 x float> poison, float %i.cq, i64 0
  %.sroa.0.4.vec.insert.i41 = insertelement <2 x float> %.sroa.0.0.vec.insert.i40, float %i.cr, i64 1
  %.sroa.3.12.vec.insert.i42 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cs, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i41, ptr %2, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i42, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !11
  %i.ct = fadd float %i.cj, %i.bu
  %i.cu = fadd float %i.cm, %i.ca
  %i.cv = fadd float %i.cp, %i.cg
  %.sroa.0.0.vec.insert.i45 = insertelement <2 x float> poison, float %i.ct, i64 0
  %.sroa.0.4.vec.insert.i46 = insertelement <2 x float> %.sroa.0.0.vec.insert.i45, float %i.cu, i64 1
  %.sroa.3.12.vec.insert.i47 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cv, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i46, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i47, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN28btScaledBvhTriangleMeshShape15setLocalScalingERK9btVector3(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(56) initializes((28, 44)) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK28btScaledBvhTriangleMeshShape15getLocalScalingEv(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(56) %0) unnamed_addr #8 align 2 {
end_hunk_0
