inline.NumInlined: 84
inline.NumDeleted: 20
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btVector3 = type { [4 x float] }

$_ZNK18btStaticPlaneShape7getNameEv = comdat any

$_ZN14btConcaveShape9setMarginEf = comdat any

$_ZNK14btConcaveShape9getMarginEv = comdat any

@_ZTV18btStaticPlaneShape = dso_local unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTI18btStaticPlaneShape, ptr @_ZN18btStaticPlaneShapeD2Ev, ptr @_ZN18btStaticPlaneShapeD0Ev, ptr @_ZNK18btStaticPlaneShape7getAabbERK11btTransformR9btVector3S4_, ptr @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf, ptr @_ZNK16btCollisionShape20getAngularMotionDiscEv, ptr @_ZNK16btCollisionShape27getContactBreakingThresholdEv, ptr @_ZN18btStaticPlaneShape15setLocalScalingERK9btVector3, ptr @_ZNK18btStaticPlaneShape15getLocalScalingEv, ptr @_ZNK18btStaticPlaneShape21calculateLocalInertiaEfR9btVector3, ptr @_ZNK18btStaticPlaneShape7getNameEv, ptr @_ZN14btConcaveShape9setMarginEf, ptr @_ZNK14btConcaveShape9getMarginEv, ptr @_ZNK18btStaticPlaneShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_] }, align 8
@_ZTI18btStaticPlaneShape = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS18btStaticPlaneShape, ptr @_ZTI14btConcaveShape }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS18btStaticPlaneShape = dso_local constant [21 x i8] c"18btStaticPlaneShape\00", align 1
@_ZTI14btConcaveShape = external constant ptr
@.str = private unnamed_addr constant [12 x i8] c"STATICPLANE\00", align 1

@_ZN18btStaticPlaneShapeC1ERK9btVector3f = dso_local unnamed_addr alias void (ptr, ptr, float), ptr @_ZN18btStaticPlaneShapeC2ERK9btVector3f
@_ZN18btStaticPlaneShapeD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN18btStaticPlaneShapeD2Ev

; Function Attrs: uwtable
define dso_local void @_ZN18btStaticPlaneShapeC2ERK9btVector3f(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, float noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN14btConcaveShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTV18btStaticPlaneShape, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !10 ; 3 uses
  %3 = load <2 x float>, ptr %1, align 4, !tbaa !10 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %3, %3
  %4 = extractelement <2 x float> %foldExtExtBinop, i64 1
  %5 = extractelement <2 x float> %3, i64 0       ; 2 uses
  %i.c = tail call float @llvm.fmuladd.f32(float %5, float %5, float %4)
  %6 = tail call noundef float @llvm.fmuladd.f32(float %i.b, float %i.b, float %i.c)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %6)
  %7 = fdiv float 1.000000e+00, %sqrt.i.i         ; 2 uses
  %8 = insertelement <2 x float> poison, float %7, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %10 = fmul <2 x float> %3, %9
  %11 = fmul float %i.b, %7
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %11, i64 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  store <2 x float> %10, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76
  store float %2, ptr %i.f, align 4, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store i32 28, ptr %i.h, align 8, !tbaa !18
  ret void
}

declare void @_ZN14btConcaveShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_ZN14btConcaveShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN18btStaticPlaneShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN14btConcaveShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0)
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN18btStaticPlaneShapeD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN14btConcaveShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %_ZN18btStaticPlaneShapeD2Ev.exit unwind label %bb.b

_ZN18btStaticPlaneShapeD2Ev.exit:                 ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #11
  ret void

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #11
  resume { ptr, i32 } %i.a
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZNK18btStaticPlaneShape7getAabbERK11btTransformR9btVector3S4_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %3) unnamed_addr #5 align 2 {
bb.a:
  store <4 x float> <float f0xDD5E0B6B, float f0xDD5E0B6B, float f0xDD5E0B6B, float 0.000000e+00>, ptr %2, align 4, !tbaa !10
  store <4 x float> <float f0x5D5E0B6B, float f0x5D5E0B6B, float f0x5D5E0B6B, float 0.000000e+00>, ptr %3, align 4, !tbaa !10
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZNK18btStaticPlaneShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca [3 x %class.btVector3], align 16    ; 11 uses
  %i.a = load float, ptr %3, align 4, !tbaa !10   ; 2 uses
  %i.b = load float, ptr %2, align 4, !tbaa !10   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !10 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !10 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !10 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !10 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.m = load float, ptr %i.l, align 4, !tbaa !10 ; 8 uses
  %i.n = tail call noundef float @llvm.fabs.f32(float %i.m)
  %i.o = fcmp ogt float %i.n, f0x3F3504F3
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load float, ptr %i.p, align 8, !tbaa !10 ; 4 uses
  %i.r = fmul nnan float %i.m, %i.m
  %i.s = tail call float @llvm.fmuladd.f32(float %i.q, float %i.q, float %i.r) ; 2 uses
  %sqrt.i33 = tail call float @llvm.sqrt.f32(float %i.s)
  %i.t = fdiv float 1.000000e+00, %sqrt.i33       ; 3 uses
  %i.u = fneg float %i.m
  %i.v = fmul float %i.t, %i.u                    ; 2 uses
  %i.w = fmul float %i.q, %i.t                    ; 2 uses
  %i.x = fmul float %i.s, %i.t
  %i.y = load float, ptr %i.k, align 4, !tbaa !10 ; 3 uses
  %i.z = fneg float %i.y
  %i.aa = fmul float %i.w, %i.z
  %i.ab = fmul float %i.y, %i.v
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit

bb.c:                                             ; preds = %bb.a
  %i.ac = load float, ptr %i.k, align 4, !tbaa !10 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !10 ; 4 uses
  %i.af = fmul float %i.ae, %i.ae
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %i.af) ; 2 uses
  %sqrt46.i = tail call float @llvm.sqrt.f32(float %i.ag)
  %i.ah = fdiv float 1.000000e+00, %sqrt46.i      ; 3 uses
  %i.ai = fneg float %i.ae
  %i.aj = fmul float %i.ah, %i.ai                 ; 2 uses
  %i.ak = fmul float %i.ac, %i.ah                 ; 2 uses
  %i.al = fneg float %i.m
  %i.am = fmul float %i.ak, %i.al
  %i.an = fmul float %i.m, %i.aj
  %i.ao = fmul float %i.ag, %i.ah
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit

_Z13btPlaneSpace1RK9btVector3RS_S2_.exit:         ; preds = %bb.b, %bb.c
  %i.ap = phi float [ %i.q, %bb.b ], [ %i.ae, %bb.c ] ; 2 uses
  %i.aq = phi float [ %i.y, %bb.b ], [ %i.ac, %bb.c ] ; 2 uses
  %.sroa.0244.0 = phi float [ 0.000000e+00, %bb.b ], [ %i.aj, %bb.c ]
  %.sroa.10.0 = phi float [ %i.v, %bb.b ], [ %i.ak, %bb.c ]
  %.sroa.18.0 = phi float [ %i.w, %bb.b ], [ 0.000000e+00, %bb.c ]
  %.sink48.i = phi float [ %i.x, %bb.b ], [ %i.am, %bb.c ]
  %.sink47.i = phi float [ %i.aa, %bb.b ], [ %i.an, %bb.c ]
  %.sink.i = phi float [ %i.ab, %bb.b ], [ %i.ao, %bb.c ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.as = load float, ptr %i.ar, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.at = fadd float %i.h, %i.j
  %i.au = fmul float %i.at, 5.000000e-01          ; 2 uses
  %i.av = fadd float %i.a, %i.b
  %i.aw = fmul float %i.av, 5.000000e-01          ; 2 uses
  %i.ax = fadd float %i.d, %i.f
  %i.ay = fmul float %i.ax, 5.000000e-01          ; 2 uses
  %i.az = fmul float %i.ay, %i.ap
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.aw, float %i.az)
  %i.bb = tail call noundef float @llvm.fmuladd.f32(float %i.m, float %i.au, float %i.ba)
  %i.bc = fsub float %i.bb, %i.as                 ; 3 uses
  %i.bd = fmul float %i.m, %i.bc
  %i.be = fsub float %i.au, %i.bd                 ; 2 uses
  %i.bf = fmul float %i.ap, %i.bc
  %i.bg = fsub float %i.ay, %i.bf                 ; 2 uses
  %i.bh = fmul float %i.aq, %i.bc
  %i.bi = fsub float %i.aw, %i.bh                 ; 2 uses
  %i.bj = fsub float %i.h, %i.j
  %i.bk = fmul float %i.bj, 5.000000e-01          ; 2 uses
  %i.bl = fsub float %i.a, %i.b
  %i.bm = fmul float %i.bl, 5.000000e-01          ; 2 uses
  %i.bn = fsub float %i.d, %i.f
  %i.bo = fmul float %i.bn, 5.000000e-01          ; 2 uses
  %i.bp = fmul float %i.bo, %i.bo
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.bm, float %i.bp)
  %i.br = tail call noundef float @llvm.fmuladd.f32(float %i.bk, float %i.bk, float %i.bq)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.br) ; 6 uses
  %i.bs = fmul float %sqrt.i, %.sroa.0244.0       ; 2 uses
  %i.bt = fmul float %sqrt.i, %.sroa.10.0         ; 2 uses
  %i.bu = fmul float %sqrt.i, %.sroa.18.0         ; 2 uses
  %i.bv = fadd float %i.bs, %i.bi                 ; 2 uses
  %i.bw = fadd float %i.bt, %i.bg                 ; 2 uses
  %i.bx = fadd float %i.bu, %i.be                 ; 2 uses
  %i.by = fmul float %sqrt.i, %.sink48.i          ; 4 uses
  %i.bz = fmul float %sqrt.i, %.sink47.i          ; 4 uses
  %i.ca = fmul float %sqrt.i, %.sink.i            ; 4 uses
  %i.cb = fadd float %i.by, %i.bv
  %i.cc = fadd float %i.bz, %i.bw
  %i.cd = fadd float %i.ca, %i.bx
  %.sroa.0.0.vec.insert.i54 = insertelement <2 x float> poison, float %i.cb, i64 0
  %.sroa.0.4.vec.insert.i55 = insertelement <2 x float> %.sroa.0.0.vec.insert.i54, float %i.cc, i64 1 ; 2 uses
  %.sroa.3.12.vec.insert.i56 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cd, i64 0 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i55, ptr %4, align 16
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i56, ptr %.sroa.410.0..sroa_idx, align 8, !tbaa !19
  %i.ce = fsub float %i.bv, %i.by
  %i.cf = fsub float %i.bw, %i.bz
  %i.cg = fsub float %i.bx, %i.ca
  %.sroa.0.0.vec.insert.i74 = insertelement <2 x float> poison, float %i.ce, i64 0
  %.sroa.0.4.vec.insert.i75 = insertelement <2 x float> %.sroa.0.0.vec.insert.i74, float %i.cf, i64 1
  %.sroa.3.12.vec.insert.i76 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cg, i64 0
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i75, ptr %i.ch, align 16
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i76, ptr %.sroa.48.0..sroa_idx, align 8, !tbaa !19
  %i.ci = fsub float %i.bi, %i.bs                 ; 2 uses
  %i.cj = fsub float %i.bg, %i.bt                 ; 2 uses
  %i.ck = fsub float %i.be, %i.bu                 ; 2 uses
  %i.cl = fsub float %i.ci, %i.by
  %i.cm = fsub float %i.cj, %i.bz
  %i.cn = fsub float %i.ck, %i.ca
  %.sroa.0.0.vec.insert.i94 = insertelement <2 x float> poison, float %i.cl, i64 0
  %.sroa.0.4.vec.insert.i95 = insertelement <2 x float> %.sroa.0.0.vec.insert.i94, float %i.cm, i64 1 ; 2 uses
  %.sroa.3.12.vec.insert.i96 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cn, i64 0 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i95, ptr %i.co, align 16
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i96, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !19
  %i.cp = load ptr, ptr %1, align 8, !tbaa !8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0)
  store <2 x float> %.sroa.0.4.vec.insert.i95, ptr %4, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i96, ptr %.sroa.410.0..sroa_idx, align 8, !tbaa !19
  %i.cs = fadd float %i.by, %i.ci
  %i.ct = fadd float %i.bz, %i.cj
end_hunk_0
