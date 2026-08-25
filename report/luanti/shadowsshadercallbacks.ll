Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/shadowsshadercallbacks?download=true
inline.NumInlined: 445
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.core::CMatrix4" = type { [16 x float] }

$_ZN19CachedShaderSettingIfLm16ELb1EE3setEPKfPN5video25IMaterialRendererServicesE = comdat any

$_ZN20IShaderUniformSetterD2Ev = comdat any

$_ZN19ShadowUniformSetterD0Ev = comdat any

$_ZN20IShaderUniformSetter13onSetMaterialERKN5video9SMaterialE = comdat any

$_ZN22IShaderUniformSetterRCD2Ev = comdat any

$_ZN24ShadowDepthUniformSetterD0Ev = comdat any

$_ZThn16_N24ShadowDepthUniformSetterD1Ev = comdat any

$_ZThn16_N24ShadowDepthUniformSetterD0Ev = comdat any

$_ZTI20IShaderUniformSetter = comdat any

$_ZTS20IShaderUniformSetter = comdat any

$_ZTI22IShaderUniformSetterRC = comdat any

$_ZTS22IShaderUniformSetterRC = comdat any

$_ZTI17IReferenceCounted = comdat any

$_ZTS17IReferenceCounted = comdat any

@_ZTV19ShadowUniformSetter = dso_local local_unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTI19ShadowUniformSetter, ptr @_ZN20IShaderUniformSetterD2Ev, ptr @_ZN19ShadowUniformSetterD0Ev, ptr @_ZN19ShadowUniformSetter13onSetUniformsEPN5video25IMaterialRendererServicesE, ptr @_ZN20IShaderUniformSetter13onSetMaterialERKN5video9SMaterialE] }, align 8
@_ZTI19ShadowUniformSetter = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS19ShadowUniformSetter, ptr @_ZTI20IShaderUniformSetter }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS19ShadowUniformSetter = dso_local constant [22 x i8] c"19ShadowUniformSetter\00", align 1
@_ZTI20IShaderUniformSetter = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS20IShaderUniformSetter }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS20IShaderUniformSetter = linkonce_odr dso_local constant [23 x i8] c"20IShaderUniformSetter\00", comdat, align 1
@_ZTV24ShadowDepthUniformSetter = dso_local local_unnamed_addr constant { [5 x ptr], [6 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI24ShadowDepthUniformSetter, ptr @_ZN22IShaderUniformSetterRCD2Ev, ptr @_ZN24ShadowDepthUniformSetterD0Ev, ptr @_ZN24ShadowDepthUniformSetter13onSetUniformsEPN5video25IMaterialRendererServicesE], [6 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTI24ShadowDepthUniformSetter, ptr @_ZThn16_N24ShadowDepthUniformSetterD1Ev, ptr @_ZThn16_N24ShadowDepthUniformSetterD0Ev, ptr @_ZThn16_N24ShadowDepthUniformSetter13onSetUniformsEPN5video25IMaterialRendererServicesE, ptr @_ZN20IShaderUniformSetter13onSetMaterialERKN5video9SMaterialE] }, align 8
@_ZTI24ShadowDepthUniformSetter = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS24ShadowDepthUniformSetter, ptr @_ZTI22IShaderUniformSetterRC }, align 8
@_ZTS24ShadowDepthUniformSetter = dso_local constant [27 x i8] c"24ShadowDepthUniformSetter\00", align 1
@_ZTI22IShaderUniformSetterRC = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTS22IShaderUniformSetterRC, i32 0, i32 2, ptr @_ZTI17IReferenceCounted, i64 2, ptr @_ZTI20IShaderUniformSetter, i64 4098 }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTS22IShaderUniformSetterRC = linkonce_odr dso_local constant [25 x i8] c"22IShaderUniformSetterRC\00", comdat, align 1
@_ZTI17IReferenceCounted = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS17IReferenceCounted }, comdat, align 8
@_ZTS17IReferenceCounted = linkonce_odr dso_local constant [20 x i8] c"17IReferenceCounted\00", comdat, align 1
@_ZN15RenderingEngine11s_singletonE = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN19ShadowUniformSetter13onSetUniformsEPN5video25IMaterialRendererServicesE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 7 uses
  %i.b = alloca [3 x float], align 8              ; 6 uses
  %2 = alloca %"class.core::CMatrix4", align 16   ; 22 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca float, align 4                    ; 5 uses
  %i.f = alloca float, align 4                    ; 5 uses
  %i.g = alloca [4 x float], align 16             ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca float, align 4                    ; 7 uses
  %i.j = alloca float, align 4                    ; 7 uses
  %i.k = alloca float, align 4                    ; 7 uses
  %i.l = load ptr, ptr @_ZN15RenderingEngine11s_singletonE, align 8, !tbaa !9 ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZN15RenderingEngine19get_shadow_rendererEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12   ; 2 uses
  %.not2.i = icmp eq ptr %i.n, null
  br i1 %.not2.i, label %_ZN15RenderingEngine19get_shadow_rendererEv.exit.thread, label %_ZN15RenderingEngine19get_shadow_rendererEv.exit

_ZN15RenderingEngine19get_shadow_rendererEv.exit: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !14   ; 9 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %_ZN15RenderingEngine19get_shadow_rendererEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN15RenderingEngine19get_shadow_rendererEv.exit
  %i.q = tail call noundef nonnull align 4 dereferenceable(413) ptr @_ZN14ShadowRenderer19getDirectionalLightEj(ptr noundef nonnull align 8 dereferenceable(208) %i.p, i32 noundef 0) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.r = tail call noundef nonnull align 4 dereferenceable(64) ptr @_ZNK16DirectionalLight19getProjectionMatrixEv(ptr noundef nonnull align 4 dereferenceable(413) %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %i.r, i64 64, i1 false), !tbaa.struct !16
  %i.s = tail call noundef nonnull align 4 dereferenceable(64) ptr @_ZNK16DirectionalLight13getViewMatrixEv(ptr noundef nonnull align 4 dereferenceable(413) %i.q) ; 19 uses
  %.sroa.0124.0.copyload = load float, ptr %2, align 16 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4 ; 4 uses
  %.sroa.11131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.11131.0.copyload = load float, ptr %.sroa.11131.0..sroa_idx, align 8 ; 4 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %.sroa.23.0.copyload = load float, ptr %.sroa.23.0..sroa_idx, align 4 ; 4 uses
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.27.0.copyload = load float, ptr %.sroa.27.0..sroa_idx, align 8 ; 4 uses
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %.sroa.39.0.copyload = load float, ptr %.sroa.39.0..sroa_idx, align 4 ; 4 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %.sroa.43.0.copyload = load float, ptr %.sroa.43.0..sroa_idx, align 8 ; 4 uses
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %.sroa.55.0.copyload = load float, ptr %.sroa.55.0..sroa_idx, align 4 ; 4 uses
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %.sroa.59.0.copyload = load float, ptr %.sroa.59.0..sroa_idx, align 8 ; 4 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 2 uses
  %.sroa.63.0.copyload = load float, ptr %.sroa.63.0..sroa_idx, align 4, !tbaa !17 ; 3 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !18 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !18 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.z = fmul nsz float %.sroa.23.0.copyload, %i.v
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 20 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  %i.ae = load <2 x float>, ptr %.sroa.15.0..sroa_idx, align 4 ; 3 uses
  %.sroa.19.0.copyload = load float, ptr %.sroa.19.0..sroa_idx, align 16 ; 2 uses
  %i.af = load <2 x float>, ptr %.sroa.31.0..sroa_idx, align 4 ; 4 uses
  %.sroa.35.0.copyload = load float, ptr %.sroa.35.0..sroa_idx, align 16 ; 2 uses
  %i.ag = load <2 x float>, ptr %.sroa.47.0..sroa_idx, align 4 ; 4 uses
  %.sroa.51.0.copyload = load float, ptr %.sroa.51.0..sroa_idx, align 16 ; 2 uses
  %i.ah = fmul nsz float %.sroa.19.0.copyload, %i.v
  %i.ai = tail call nsz float @llvm.fmuladd.f32(float %.sroa.0124.0.copyload, float %i.t, float %i.ah)
  %i.aj = tail call nsz float @llvm.fmuladd.f32(float %.sroa.35.0.copyload, float %i.x, float %i.ai)
  %i.ak = load float, ptr %i.y, align 4, !tbaa !18 ; 4 uses
  %i.al = tail call nsz float @llvm.fmuladd.f32(float %.sroa.51.0.copyload, float %i.ak, float %i.aj)
  store float %i.al, ptr %2, align 16, !tbaa !18
  %i.am = load float, ptr %i.s, align 4, !tbaa !18
  %i.an = tail call nsz float @llvm.fmuladd.f32(float %.sroa.7.0.copyload, float %i.am, float %i.z)
  %i.ao = tail call nsz float @llvm.fmuladd.f32(float %.sroa.39.0.copyload, float %i.x, float %i.an)
  %i.ap = tail call nsz float @llvm.fmuladd.f32(float %.sroa.55.0.copyload, float %i.ak, float %i.ao)
  store float %i.ap, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !18
  %i.aq = load float, ptr %i.s, align 4, !tbaa !18
  %i.ar = load float, ptr %i.u, align 4, !tbaa !18
  %i.as = fmul nsz float %.sroa.27.0.copyload, %i.ar
  %i.at = tail call nsz float @llvm.fmuladd.f32(float %.sroa.11131.0.copyload, float %i.aq, float %i.as)
  %i.au = tail call nsz float @llvm.fmuladd.f32(float %.sroa.43.0.copyload, float %i.x, float %i.at)
  %i.av = tail call nsz float @llvm.fmuladd.f32(float %.sroa.59.0.copyload, float %i.ak, float %i.au)
  store float %i.av, ptr %.sroa.11131.0..sroa_idx, align 8, !tbaa !18
  %3 = load <4 x float>, ptr %i.s, align 4        ; 2 uses
  %i.aw = load float, ptr %i.w, align 4, !tbaa !18
  %i.ax = load <4 x float>, ptr %i.aa, align 4, !tbaa !18 ; 4 uses
  %i.ay = load float, ptr %i.ac, align 4, !tbaa !18 ; 2 uses
  %i.az = load float, ptr %i.ab, align 4, !tbaa !18
  %i.ba = shufflevector <2 x float> %i.af, <2 x float> %i.ae, <2 x i32> <i32 0, i32 3>
  %i.bb = shufflevector <4 x float> %3, <4 x float> %i.ax, <2 x i32> <i32 1, i32 5>
  %i.bc = fmul nsz <2 x float> %i.ba, %i.bb
  %i.bd = insertelement <2 x float> %i.ae, float %.sroa.0124.0.copyload, i64 1 ; 3 uses
  %i.be = shufflevector <4 x float> %3, <4 x float> %i.ax, <2 x i32> <i32 0, i32 4>
  %i.bf = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.be, <2 x float> %i.bc)
  %i.bg = shufflevector <2 x float> %i.ag, <2 x float> %i.af, <2 x i32> <i32 0, i32 3>
  %i.bh = shufflevector <4 x float> %i.ax, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.bi = insertelement <2 x float> %i.bh, float %i.aw, i64 0
  %i.bj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.bi, <2 x float> %i.bf)
  %i.bk = insertelement <2 x float> %i.ag, float %.sroa.63.0.copyload, i64 0
  %i.bl = shufflevector <4 x float> %i.ax, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.bm = insertelement <2 x float> %i.bl, float %i.ak, i64 0
  %i.bn = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.bm, <2 x float> %i.bj)
  store <2 x float> %i.bn, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !18
  %i.bo = load float, ptr %i.aa, align 4, !tbaa !18
  %i.bp = fmul nsz float %.sroa.23.0.copyload, %i.az
  %i.bq = tail call nsz float @llvm.fmuladd.f32(float %.sroa.7.0.copyload, float %i.bo, float %i.bp)
  %i.br = tail call nsz float @llvm.fmuladd.f32(float %.sroa.39.0.copyload, float %i.ay, float %i.bq)
  %i.bs = extractelement <2 x float> %i.af, i64 0
  %i.bt = extractelement <2 x float> %i.ae, i64 0
  %i.bu = extractelement <2 x float> %i.ag, i64 0
  %i.bv = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 36 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.s, i64 44
  %i.bz = load float, ptr %i.ad, align 4, !tbaa !18 ; 3 uses
  %i.ca = tail call nsz float @llvm.fmuladd.f32(float %.sroa.55.0.copyload, float %i.bz, float %i.br)
  store float %i.ca, ptr %.sroa.23.0..sroa_idx, align 4, !tbaa !18
  %i.cb = load float, ptr %i.aa, align 4, !tbaa !18
  %i.cc = load float, ptr %i.ab, align 4, !tbaa !18
  %i.cd = fmul nsz float %.sroa.27.0.copyload, %i.cc
  %i.ce = tail call nsz float @llvm.fmuladd.f32(float %.sroa.11131.0.copyload, float %i.cb, float %i.cd)
  %i.cf = tail call nsz float @llvm.fmuladd.f32(float %.sroa.43.0.copyload, float %i.ay, float %i.ce)
  %i.cg = tail call nsz float @llvm.fmuladd.f32(float %.sroa.59.0.copyload, float %i.bz, float %i.cf)
  store float %i.cg, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !18
  %i.ch = load <4 x float>, ptr %i.aa, align 4    ; 2 uses
  %i.ci = load float, ptr %i.ac, align 4, !tbaa !18
  %i.cj = load <4 x float>, ptr %i.bv, align 4, !tbaa !18 ; 4 uses
  %i.ck = load float, ptr %i.bx, align 4, !tbaa !18 ; 2 uses
  %i.cl = load float, ptr %i.bw, align 4, !tbaa !18
  %i.cm = insertelement <2 x float> %i.af, float %.sroa.19.0.copyload, i64 1 ; 2 uses
  %i.cn = shufflevector <4 x float> %i.ch, <4 x float> %i.cj, <2 x i32> <i32 1, i32 5>
  %i.co = fmul nsz <2 x float> %i.cm, %i.cn
  %i.cp = shufflevector <4 x float> %i.ch, <4 x float> %i.cj, <2 x i32> <i32 0, i32 4>
  %i.cq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.cp, <2 x float> %i.co)
  %i.cr = insertelement <2 x float> %i.ag, float %.sroa.35.0.copyload, i64 1 ; 2 uses
  %i.cs = shufflevector <4 x float> %i.cj, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ct = insertelement <2 x float> %i.cs, float %i.ci, i64 0
  %i.cu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %i.ct, <2 x float> %i.cq)
  %i.cv = insertelement <2 x float> poison, float %.sroa.63.0.copyload, i64 0
  %i.cw = insertelement <2 x float> %i.cv, float %.sroa.51.0.copyload, i64 1 ; 2 uses
  %i.cx = shufflevector <4 x float> %i.cj, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.cy = insertelement <2 x float> %i.cx, float %i.bz, i64 0
  %i.cz = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> %i.cy, <2 x float> %i.cu)
  store <2 x float> %i.cz, ptr %.sroa.31.0..sroa_idx, align 4, !tbaa !18
  %i.da = load float, ptr %i.bv, align 4, !tbaa !18
  %i.db = fmul nsz float %.sroa.23.0.copyload, %i.cl
  %i.dc = tail call nsz float @llvm.fmuladd.f32(float %.sroa.7.0.copyload, float %i.da, float %i.db)
  %i.dd = tail call nsz float @llvm.fmuladd.f32(float %.sroa.39.0.copyload, float %i.ck, float %i.dc)
  %i.de = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.s, i64 52 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.s, i64 56 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.s, i64 60
  %i.di = load float, ptr %i.by, align 4, !tbaa !18 ; 3 uses
  %i.dj = tail call nsz float @llvm.fmuladd.f32(float %.sroa.55.0.copyload, float %i.di, float %i.dd)
  store float %i.dj, ptr %.sroa.39.0..sroa_idx, align 4, !tbaa !18
  %i.dk = load float, ptr %i.bv, align 4, !tbaa !18
  %i.dl = load float, ptr %i.bw, align 4, !tbaa !18
  %i.dm = fmul nsz float %.sroa.27.0.copyload, %i.dl
  %i.dn = tail call nsz float @llvm.fmuladd.f32(float %.sroa.11131.0.copyload, float %i.dk, float %i.dm)
  %i.do = tail call nsz float @llvm.fmuladd.f32(float %.sroa.43.0.copyload, float %i.ck, float %i.dn)
  %i.dp = tail call nsz float @llvm.fmuladd.f32(float %.sroa.59.0.copyload, float %i.di, float %i.do)
  store float %i.dp, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !18
  %i.dq = load <4 x float>, ptr %i.bv, align 4    ; 2 uses
  %i.dr = load float, ptr %i.bx, align 4, !tbaa !18
  %i.ds = load <4 x float>, ptr %i.de, align 4, !tbaa !18 ; 4 uses
  %i.dt = load float, ptr %i.dh, align 4, !tbaa !18 ; 3 uses
  %i.du = load float, ptr %i.dg, align 4, !tbaa !18 ; 2 uses
  %i.dv = load float, ptr %i.df, align 4, !tbaa !18
  %i.dw = shufflevector <4 x float> %i.dq, <4 x float> %i.ds, <2 x i32> <i32 1, i32 5>
  %i.dx = fmul nsz <2 x float> %i.cm, %i.dw
  %i.dy = shufflevector <4 x float> %i.dq, <4 x float> %i.ds, <2 x i32> <i32 0, i32 4>
  %i.dz = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.dy, <2 x float> %i.dx)
  %i.ea = shufflevector <4 x float> %i.ds, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.eb = insertelement <2 x float> %i.ea, float %i.dr, i64 0
  %i.ec = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %i.eb, <2 x float> %i.dz)
  %i.ed = shufflevector <4 x float> %i.ds, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.ee = insertelement <2 x float> %i.ed, float %i.di, i64 0
  %i.ef = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> %i.ee, <2 x float> %i.ec)
  store <2 x float> %i.ef, ptr %.sroa.47.0..sroa_idx, align 4, !tbaa !18
  %i.eg = load float, ptr %i.de, align 4, !tbaa !18
  %i.eh = fmul nsz float %.sroa.23.0.copyload, %i.dv
  %i.ei = tail call nsz float @llvm.fmuladd.f32(float %.sroa.7.0.copyload, float %i.eg, float %i.eh)
  %i.ej = tail call nsz float @llvm.fmuladd.f32(float %.sroa.39.0.copyload, float %i.du, float %i.ei)
  %i.ek = tail call nsz float @llvm.fmuladd.f32(float %.sroa.55.0.copyload, float %i.dt, float %i.ej)
  store float %i.ek, ptr %.sroa.55.0..sroa_idx, align 4, !tbaa !18
  %i.el = load float, ptr %i.de, align 4, !tbaa !18
  %i.em = load float, ptr %i.df, align 4, !tbaa !18
  %i.en = fmul nsz float %.sroa.27.0.copyload, %i.em
  %i.eo = tail call nsz float @llvm.fmuladd.f32(float %.sroa.11131.0.copyload, float %i.el, float %i.en)
  %i.ep = tail call nsz float @llvm.fmuladd.f32(float %.sroa.43.0.copyload, float %i.du, float %i.eo)
  %i.eq = tail call nsz float @llvm.fmuladd.f32(float %.sroa.59.0.copyload, float %i.dt, float %i.ep)
  store float %i.eq, ptr %.sroa.59.0..sroa_idx, align 8, !tbaa !18
  %i.er = load float, ptr %i.de, align 4, !tbaa !18
  %i.es = load float, ptr %i.df, align 4, !tbaa !18
  %i.et = fmul nsz float %i.bs, %i.es
  %i.eu = tail call nsz float @llvm.fmuladd.f32(float %i.bt, float %i.er, float %i.et)
  %i.ev = load float, ptr %i.dg, align 4, !tbaa !18
  %i.ew = tail call nsz float @llvm.fmuladd.f32(float %i.bu, float %i.ev, float %i.eu)
  %i.ex = tail call nsz float @llvm.fmuladd.f32(float %.sroa.63.0.copyload, float %i.dt, float %i.ew)
  store float %i.ex, ptr %.sroa.63.0..sroa_idx, align 4, !tbaa !18
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN19CachedShaderSettingIfLm16ELb1EE3setEPKfPN5video25IMaterialRendererServicesE(ptr noundef nonnull align 8 dereferenceable(74) %i.ey, ptr noundef nonnull %2, ptr noundef %1)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.ez, align 4 ; 3 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %.sroa.02.0.vec.extract.i = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 0
  %.sroa.02.4.vec.extract.i = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 1
  store <2 x float> %.sroa.01.0.copyload.i, ptr %i.b, align 8, !tbaa !18
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float %.sroa.22.0.copyload.i, ptr %i.fa, align 8, !tbaa !18
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 4, !tbaa !20, !range !24, !noundef !25
  %i.fd = trunc nuw i8 %i.fc to i1
  %.0810.i.i.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.fe = load float, ptr %.0810.i.i.i.i.ptr.i.i, align 8
  %i.ff = fcmp nsz oeq float %i.fe, %.sroa.02.0.vec.extract.i
  %or.cond.i = select i1 %i.fd, i1 %i.ff, i1 false
  %.0810.i.i.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.fg = load float, ptr %.0810.i.i.i.i.ptr.1.i.i, align 4
  %i.fh = fcmp nsz oeq float %i.fg, %.sroa.02.4.vec.extract.i
  %or.cond5.i = select i1 %or.cond.i, i1 %i.fh, i1 false
  %.0810.i.i.i.i.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fi = load float, ptr %.0810.i.i.i.i.ptr.2.i.i, align 8
  %i.fj = fcmp nsz oeq float %i.fi, %.sroa.22.0.copyload.i
  %or.cond7.i = select i1 %or.cond5.i, i1 %i.fj, i1 false
  br i1 %or.cond7.i, label %_ZN19CachedShaderSettingIfLm3ELb1EE3setIfEENSt9enable_ifIXaaaasr3stdE9is_same_vIfT_Esr3stdE9is_same_vIS3_fEeqLm3ELi3EEvE4typeEN4core8vector3dIfEEPN5video25IMaterialRendererServicesE.exit, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i.i

_ZSt5equalIPfPKfEbT_S3_T0_.exit.i.i:              ; preds = %bb.c
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 109
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !26, !range !24, !noundef !25
  %i.fn = trunc nuw i8 %i.fm to i1                ; 2 uses
  %i.fo = load ptr, ptr %i.fk, align 8, !tbaa !27
  %i.fp = load ptr, ptr %1, align 8, !tbaa !28
  %..i.i = select i1 %i.fn, i64 56, i64 24
  %.18.i.i = select i1 %i.fn, i64 64, i64 32
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %..i.i
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = call noundef i32 %i.fr(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.fo), !inline_history !30
  %i.ft = load ptr, ptr %1, align 8, !tbaa !28
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %.18.i.i
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = call noundef zeroext i1 %i.fv(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.fs, ptr noundef nonnull %i.b, i32 noundef 3), !inline_history !30 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.0810.i.i.i.i.ptr.i.i, ptr noundef nonnull align 8 dereferenceable(12) %i.b, i64 12, i1 false)
  store i8 1, ptr %i.fb, align 4, !tbaa !20
  br label %_ZN19CachedShaderSettingIfLm3ELb1EE3setIfEENSt9enable_ifIXaaaasr3stdE9is_same_vIfT_Esr3stdE9is_same_vIS3_fEeqLm3ELi3EEvE4typeEN4core8vector3dIfEEPN5video25IMaterialRendererServicesE.exit

_ZN19CachedShaderSettingIfLm3ELb1EE3setIfEENSt9enable_ifIXaaaasr3stdE9is_same_vIfT_Esr3stdE9is_same_vIS3_fEeqLm3ELi3EEvE4typeEN4core8vector3dIfEEPN5video25IMaterialRendererServicesE.exit: ; preds = %bb.c, %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.fx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !31
  %i.fz = uitofp nsz i32 %i.fy to float           ; 2 uses
  store float %i.fz, ptr %i.c, align 4, !tbaa !18
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 4, !tbaa !37, !range !24, !noundef !25
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %.lr.ph.i.i.i.i.preheader.i, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZN19CachedShaderSettingIfLm3ELb1EE3setIfEENSt9enable_ifIXaaaasr3stdE9is_same_vIfT_Esr3stdE9is_same_vIS3_fEeqLm3ELi3EEvE4typeEN4core8vector3dIfEEPN5video25IMaterialRendererServicesE.exit
  %.0810.i.i.i.i.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ge = load float, ptr %.0810.i.i.i.i.ptr.i, align 8, !tbaa !18
  %i.gf = fcmp nsz oeq float %i.ge, %i.fz
  br i1 %i.gf, label %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i

_ZSt5equalIPfPKfEbT_S3_T0_.exit.i:                ; preds = %.lr.ph.i.i.i.i.preheader.i, %_ZN19CachedShaderSettingIfLm3ELb1EE3setIfEENSt9enable_ifIXaaaasr3stdE9is_same_vIfT_Esr3stdE9is_same_vIS3_fEeqLm3ELi3EEvE4typeEN4core8vector3dIfEEPN5video25IMaterialRendererServicesE.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 125
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !39, !range !24, !noundef !25
  %i.gi = trunc nuw i8 %i.gh to i1                ; 2 uses
  %i.gj = load ptr, ptr %i.ga, align 8, !tbaa !40
  %i.gk = load ptr, ptr %1, align 8, !tbaa !28
  %..i = select i1 %i.gi, i64 56, i64 24
  %.18.i = select i1 %i.gi, i64 64, i64 32
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %..i
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = call noundef i32 %i.gm(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.gj), !inline_history !41
  %i.go = load ptr, ptr %1, align 8, !tbaa !28
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %.18.i
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = call noundef zeroext i1 %i.gq(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.gn, ptr noundef nonnull %i.c, i32 noundef 1), !inline_history !41 ; 0 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gt = load float, ptr %i.c, align 4, !tbaa !18
  store float %i.gt, ptr %i.gs, align 8, !tbaa !18
  store i8 1, ptr %i.gb, align 4, !tbaa !37
  br label %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit

_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.gu = getelementptr inbounds nuw i8, ptr %i.p, i64 137
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !42, !range !24, !noundef !25
end_hunk_0
begin_hunk_1_@_ZN19CachedShaderSettingIfLm16ELb1EE3setEPKfPN5video25IMaterialRendererServicesE:bb.a
  %i.l = load float, ptr %.0810.i.i.i.i.ptr.2, align 8, !tbaa !18
  %i.m = load float, ptr %i.k, align 4, !tbaa !18
  %i.n = fcmp nsz oeq float %i.l, %i.m
  br i1 %i.n, label %.lr.ph.i.i.i.i.3, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit

.lr.ph.i.i.i.i.3:                                 ; preds = %.lr.ph.i.i.i.i.2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.0810.i.i.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.p = load float, ptr %.0810.i.i.i.i.ptr.3, align 4, !tbaa !18
  %i.q = load float, ptr %i.o, align 4, !tbaa !18
  %i.r = fcmp nsz oeq float %i.p, %i.q
  br i1 %i.r, label %.lr.ph.i.i.i.i.4, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit

.lr.ph.i.i.i.i.4:                                 ; preds = %.lr.ph.i.i.i.i.3
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.0810.i.i.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load float, ptr %.0810.i.i.i.i.ptr.4, align 8, !tbaa !18
  %i.u = load float, ptr %i.s, align 4, !tbaa !18
  %i.v = fcmp nsz oeq float %i.t, %i.u
  br i1 %i.v, label %.lr.ph.i.i.i.i.5, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit

.lr.ph.i.i.i.i.5:                                 ; preds = %.lr.ph.i.i.i.i.4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.0810.i.i.i.i.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.x = load float, ptr %.0810.i.i.i.i.ptr.5, align 4, !tbaa !18
  %i.y = load float, ptr %i.w, align 4, !tbaa !18
  %i.z = fcmp nsz oeq float %i.x, %i.y
  br i1 %i.z, label %.lr.ph.i.i.i.i.6, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit

.lr.ph.i.i.i.i.6:                                 ; preds = %.lr.ph.i.i.i.i.5
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.0810.i.i.i.i.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load float, ptr %.0810.i.i.i.i.ptr.6, align 8, !tbaa !18
  %i.ac = load float, ptr %i.aa, align 4, !tbaa !18
  %i.ad = fcmp nsz oeq float %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph.i.i.i.i.7, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit

.lr.ph.i.i.i.i.7:                                 ; preds = %.lr.ph.i.i.i.i.6
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.0810.i.i.i.i.ptr.7 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.af = load float, ptr %.0810.i.i.i.i.ptr.7, align 4, !tbaa !18
  %i.ag = load float, ptr %i.ae, align 4, !tbaa !18
  %i.ah = fcmp nsz oeq float %i.af, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i.i.i.8, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit

.lr.ph.i.i.i.i.8:                                 ; preds = %.lr.ph.i.i.i.i.7
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.0810.i.i.i.i.ptr.8 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load float, ptr %.0810.i.i.i.i.ptr.8, align 8, !tbaa !18
  %i.ak = load float, ptr %i.ai, align 4, !tbaa !18
  %i.al = fcmp nsz oeq float %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.i.i.9, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit

.lr.ph.i.i.i.i.9:                                 ; preds = %.lr.ph.i.i.i.i.8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.0810.i.i.i.i.ptr.9 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.an = load float, ptr %.0810.i.i.i.i.ptr.9, align 4, !tbaa !18
  %i.ao = load float, ptr %i.am, align 4, !tbaa !18
  %i.ap = fcmp nsz oeq float %i.an, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i.i.i.10, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit

.lr.ph.i.i.i.i.10:                                ; preds = %.lr.ph.i.i.i.i.9
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.0810.i.i.i.i.ptr.10 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load float, ptr %.0810.i.i.i.i.ptr.10, align 8, !tbaa !18
  %i.as = load float, ptr %i.aq, align 4, !tbaa !18
  %i.at = fcmp nsz oeq float %i.ar, %i.as
  br i1 %i.at, label %.lr.ph.i.i.i.i.11, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit

.lr.ph.i.i.i.i.11:                                ; preds = %.lr.ph.i.i.i.i.10
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.0810.i.i.i.i.ptr.11 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.av = load float, ptr %.0810.i.i.i.i.ptr.11, align 4, !tbaa !18
  %i.aw = load float, ptr %i.au, align 4, !tbaa !18
  %i.ax = fcmp nsz oeq float %i.av, %i.aw
  br i1 %i.ax, label %.lr.ph.i.i.i.i.12, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit

.lr.ph.i.i.i.i.12:                                ; preds = %.lr.ph.i.i.i.i.11
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.0810.i.i.i.i.ptr.12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.az = load float, ptr %.0810.i.i.i.i.ptr.12, align 8, !tbaa !18
  %i.ba = load float, ptr %i.ay, align 4, !tbaa !18
  %i.bb = fcmp nsz oeq float %i.az, %i.ba
  br i1 %i.bb, label %.lr.ph.i.i.i.i.13, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit

.lr.ph.i.i.i.i.13:                                ; preds = %.lr.ph.i.i.i.i.12
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.0810.i.i.i.i.ptr.13 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bd = load float, ptr %.0810.i.i.i.i.ptr.13, align 4, !tbaa !18
  %i.be = load float, ptr %i.bc, align 4, !tbaa !18
  %i.bf = fcmp nsz oeq float %i.bd, %i.be
  br i1 %i.bf, label %.lr.ph.i.i.i.i.14, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit

.lr.ph.i.i.i.i.14:                                ; preds = %.lr.ph.i.i.i.i.13
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.0810.i.i.i.i.ptr.14 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bh = load float, ptr %.0810.i.i.i.i.ptr.14, align 8, !tbaa !18
  %i.bi = load float, ptr %i.bg, align 4, !tbaa !18
  %i.bj = fcmp nsz oeq float %i.bh, %i.bi
  br i1 %i.bj, label %.lr.ph.i.i.i.i.15, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit

.lr.ph.i.i.i.i.15:                                ; preds = %.lr.ph.i.i.i.i.14
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.0810.i.i.i.i.ptr.15 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bl = load float, ptr %.0810.i.i.i.i.ptr.15, align 4, !tbaa !18
  %i.bm = load float, ptr %i.bk, align 4, !tbaa !18
  %i.bn = fcmp nsz oeq float %i.bl, %i.bm
  br i1 %i.bn, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.thread, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit

_ZSt5equalIPfPKfEbT_S3_T0_.exit:                  ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i.2, %.lr.ph.i.i.i.i.3, %.lr.ph.i.i.i.i.4, %.lr.ph.i.i.i.i.5, %.lr.ph.i.i.i.i.6, %.lr.ph.i.i.i.i.7, %.lr.ph.i.i.i.i.8, %.lr.ph.i.i.i.i.9, %.lr.ph.i.i.i.i.10, %.lr.ph.i.i.i.i.11, %.lr.ph.i.i.i.i.12, %.lr.ph.i.i.i.i.13, %.lr.ph.i.i.i.i.14, %.lr.ph.i.i.i.i.15, %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !85, !range !24, !noundef !25
  %i.bq = trunc nuw i8 %i.bp to i1                ; 2 uses
  %i.br = load ptr, ptr %0, align 8, !tbaa !86
  %i.bs = load ptr, ptr %2, align 8, !tbaa !28
  %. = select i1 %i.bq, i64 56, i64 24
  %.18 = select i1 %i.bq, i64 64, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef i32 %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.br)
  %i.bw = load ptr, ptr %2, align 8, !tbaa !28
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.18
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef zeroext i1 %i.by(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.bv, ptr noundef %1, i32 noundef 16) ; 0 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ca, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 64, i1 false)
  store i8 1, ptr %i.a, align 8, !tbaa !83
  br label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.thread

_ZSt5equalIPfPKfEbT_S3_T0_.exit.thread:           ; preds = %.lr.ph.i.i.i.i.15, %_ZSt5equalIPfPKfEbT_S3_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef float @_ZNK14ShadowRenderer15getMaxShadowFarEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare { <2 x float>, float } @_ZNK16DirectionalLight12getPlayerPosEv(ptr noundef nonnull align 4 dereferenceable(413)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN24ShadowDepthUniformSetter13onSetUniformsEPN5video25IMaterialRendererServicesE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.core::CMatrix4", align 16   ; 13 uses
  %i.a = alloca [4 x float], align 16             ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca float, align 4                    ; 5 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef nonnull align 4 dereferenceable(64) ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef 2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %i.m, i64 64, i1 false), !tbaa.struct !16
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef nonnull align 4 dereferenceable(64) ptr %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef 0) ; 16 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.r = load <4 x float>, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.t = load <4 x float>, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.v = load <4 x float>, ptr %i.u, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.x = load <4 x float>, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.ad = load <4 x float>, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  %i.af = load <4 x float>, ptr %i.ae, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ah = load <4 x float>, ptr %i.ag, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 44
  %i.aj = load <4 x float>, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.al = load <4 x float>, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 52
  %i.an = load float, ptr %i.am, align 4, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 60
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load <4 x float>, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 44
  %4 = load <4 x float>, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  %5 = load <4 x float>, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ay = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load <4 x float>, ptr %2, align 16      ; 4 uses
  %i.bc = load <4 x float>, ptr %.sroa.19.0..sroa_idx, align 16 ; 4 uses
  %i.bd = load <4 x float>, ptr %.sroa.35.0..sroa_idx, align 16 ; 4 uses
  %i.be = load <4 x float>, ptr %.sroa.51.0..sroa_idx, align 16 ; 4 uses
  %i.bf = shufflevector <4 x float> %i.t, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bg = fmul nsz <4 x float> %i.bc, %i.bf
  %i.bh = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bi = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> %i.bh, <4 x float> %i.bg)
  %i.bj = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bk = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bd, <4 x float> %i.bj, <4 x float> %i.bi)
  %i.bl = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bm = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.bl, <4 x float> %i.bk) ; 2 uses
  store <4 x float> %i.bm, ptr %2, align 16, !tbaa !18
  %i.bn = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bo = fmul nsz <4 x float> %i.bc, %i.bn
  %i.bp = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bq = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> %i.bp, <4 x float> %i.bo)
  %i.br = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bs = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bd, <4 x float> %i.br, <4 x float> %i.bq)
  %i.bt = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bu = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.bt, <4 x float> %i.bs) ; 5 uses
  %i.bv = insertelement <4 x float> poison, float %i.an, i64 0
  %i.bw = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bx = fmul nsz <4 x float> %i.bc, %i.bw
  %i.by = shufflevector <4 x float> %i.al, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bz = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> %i.by, <4 x float> %i.bx)
  %i.ca = insertelement <4 x float> poison, float %i.ap, i64 0
  %i.cb = shufflevector <4 x float> %i.ca, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cc = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bd, <4 x float> %i.cb, <4 x float> %i.bz)
  %i.cd = insertelement <4 x float> poison, float %i.ar, i64 0
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cf = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.ce, <4 x float> %i.cc) ; 5 uses
  %6 = load <4 x float>, ptr %i.ab, align 4
  %7 = load <4 x float>, ptr %i.aa, align 4
  %8 = load <4 x float>, ptr %i.z, align 4
  %9 = load <4 x float>, ptr %i.y, align 4
  %i.cg = tail call noundef nonnull align 4 dereferenceable(64) ptr %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef 1) ; 16 uses
  %i.ch = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ci = fmul nsz <4 x float> %i.bc, %i.ch
  %i.cj = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ck = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> %i.cj, <4 x float> %i.ci)
  %i.cl = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cm = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bd, <4 x float> %i.cl, <4 x float> %i.ck)
  %i.cn = shufflevector <4 x float> %6, <4 x float> poison, <4 x i32> zeroinitializer
  %i.co = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.cn, <4 x float> %i.cm) ; 6 uses
  %i.cp = extractelement <4 x float> %i.co, i64 0
  store float %i.cp, ptr %.sroa.19.0..sroa_idx, align 16, !tbaa !18
  %i.cq = extractelement <4 x float> %i.co, i64 1
  store float %i.cq, ptr %.sroa.23.0..sroa_idx, align 4, !tbaa !18
  %i.cr = extractelement <4 x float> %i.co, i64 2
  store float %i.cr, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !18
  %i.cs = load <2 x float>, ptr %.sroa.19.0..sroa_idx, align 16 ; 2 uses
  %i.ct = load <2 x float>, ptr %.sroa.23.0..sroa_idx, align 4 ; 2 uses
  %i.cu = shufflevector <4 x float> %4, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cv = fmul nsz <4 x float> %i.co, %i.cu
  %i.cw = shufflevector <4 x float> %3, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cx = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> %i.bm, <4 x float> %i.cv)
  %i.cy = shufflevector <4 x float> %5, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cz = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cy, <4 x float> %i.bu, <4 x float> %i.cx)
  %i.da = fadd nsz <4 x float> %i.cf, %i.cz
  store <4 x float> %i.da, ptr %i.a, align 16, !tbaa !18
  %10 = load <4 x float>, ptr %2, align 16        ; 4 uses
  %i.db = load <4 x float>, ptr %i.cg, align 4
  %11 = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.dc = load <4 x float>, ptr %11, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %12 = load <4 x float>, ptr %i.dd, align 4
  %13 = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  %14 = load <4 x float>, ptr %13, align 4
  %i.de = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.df = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> zeroinitializer
  %15 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> zeroinitializer
  %16 = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %17 = load <4 x float>, ptr %i.dg, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cg, i64 20
  %18 = load <4 x float>, ptr %i.dh, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %19 = load <4 x float>, ptr %i.di, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cg, i64 28
  %20 = load <4 x float>, ptr %i.dj, align 4
  %i.dk = shufflevector <2 x float> %i.cs, <2 x float> %i.ct, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> %i.co, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.dm = fmul nsz <4 x float> %i.dl, %i.de
  %i.dn = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> %i.df, <4 x float> %i.dm)
  %i.do = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bu, <4 x float> %15, <4 x float> %i.dn)
  %i.dp = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cf, <4 x float> %16, <4 x float> %i.do)
  store <4 x float> %i.dp, ptr %2, align 16, !tbaa !18
  %i.dq = shufflevector <4 x float> %18, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dr = fmul nsz <4 x float> %i.dl, %i.dq
  %i.ds = shufflevector <4 x float> %17, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dt = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> %i.ds, <4 x float> %i.dr)
  %i.du = shufflevector <4 x float> %19, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dv = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bu, <4 x float> %i.du, <4 x float> %i.dt)
  %i.dw = shufflevector <4 x float> %20, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dx = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cf, <4 x float> %i.dw, <4 x float> %i.dv)
  store <4 x float> %i.dx, ptr %.sroa.19.0..sroa_idx, align 16, !tbaa !18
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %21 = load <4 x float>, ptr %i.dy, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cg, i64 36
  %22 = load <4 x float>, ptr %i.dz, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %23 = load <4 x float>, ptr %i.ea, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cg, i64 44
  %24 = load <4 x float>, ptr %i.eb, align 4
  %i.ec = shufflevector <2 x float> %i.cs, <2 x float> %i.ct, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ed = shufflevector <4 x float> %i.ec, <4 x float> %i.co, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.ee = shufflevector <4 x float> %22, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ef = fmul nsz <4 x float> %i.ed, %i.ee
  %i.eg = shufflevector <4 x float> %21, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eh = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> %i.eg, <4 x float> %i.ef)
  %i.ei = shufflevector <4 x float> %23, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ej = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bu, <4 x float> %i.ei, <4 x float> %i.eh)
  %i.ek = shufflevector <4 x float> %24, <4 x float> poison, <4 x i32> zeroinitializer
  %i.el = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cf, <4 x float> %i.ek, <4 x float> %i.ej)
  store <4 x float> %i.el, ptr %.sroa.35.0..sroa_idx, align 16, !tbaa !18
  %i.em = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %25 = load <4 x float>, ptr %i.em, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %i.cg, i64 52
  %i.eo = load float, ptr %i.en, align 4, !tbaa !18
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !18
  %i.er = getelementptr inbounds nuw i8, ptr %i.cg, i64 60
  %i.es = load float, ptr %i.er, align 4, !tbaa !18
  %i.et = insertelement <4 x float> poison, float %i.eo, i64 0
  %i.eu = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ev = fmul nsz <4 x float> %i.ed, %i.eu
  %i.ew = shufflevector <4 x float> %25, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ex = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> %i.ew, <4 x float> %i.ev)
  %i.ey = insertelement <4 x float> poison, float %i.eq, i64 0
  %i.ez = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fa = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bu, <4 x float> %i.ez, <4 x float> %i.ex)
  %i.fb = insertelement <4 x float> poison, float %i.es, i64 0
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fd = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cf, <4 x float> %i.fc, <4 x float> %i.fa)
  store <4 x float> %i.fd, ptr %.sroa.51.0..sroa_idx, align 16, !tbaa !18
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_ZN19CachedShaderSettingIfLm16ELb1EE3setEPKfPN5video25IMaterialRendererServicesE(ptr noundef nonnull align 8 dereferenceable(74) %i.fe, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull %1)
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 4, !tbaa !37, !range !24, !noundef !25
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %.lr.ph.i.i.i.i.preheader.i, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.a
  %.0810.i.i.i.i.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.fk = load float, ptr %.0810.i.i.i.i.ptr.i, align 8, !tbaa !18
  %i.fl = load float, ptr %i.fg, align 4, !tbaa !18
  %i.fm = fcmp nsz oeq float %i.fk, %i.fl
  br i1 %i.fm, label %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i

_ZSt5equalIPfPKfEbT_S3_T0_.exit.i:                ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.a
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !39, !range !24, !noundef !25
  %i.fp = trunc nuw i8 %i.fo to i1                ; 2 uses
  %i.fq = load ptr, ptr %i.ff, align 8, !tbaa !40
  %i.fr = load ptr, ptr %1, align 8, !tbaa !28
  %..i = select i1 %i.fp, i64 56, i64 24
  %.18.i = select i1 %i.fp, i64 64, i64 32
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %..i
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = call noundef i32 %i.ft(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.fq), !inline_history !41
  %i.fv = load ptr, ptr %1, align 8, !tbaa !28
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.18.i
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = call noundef zeroext i1 %i.fx(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.fu, ptr noundef nonnull %i.fg, i32 noundef 1), !inline_history !41 ; 0 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ga = load float, ptr %i.fg, align 4, !tbaa !18
  store float %i.ga, ptr %i.fz, align 8, !tbaa !18
  store i8 1, ptr %i.fh, align 4, !tbaa !37
  br label %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit

_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 4, !tbaa !37, !range !24, !noundef !25
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %.lr.ph.i.i.i.i.preheader.i16, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i13

.lr.ph.i.i.i.i.preheader.i16:                     ; preds = %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit
  %.0810.i.i.i.i.ptr.i17 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.gg = load float, ptr %.0810.i.i.i.i.ptr.i17, align 8, !tbaa !18
  %i.gh = load float, ptr %i.gc, align 8, !tbaa !18
  %i.gi = fcmp nsz oeq float %i.gg, %i.gh
  br i1 %i.gi, label %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit18, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i13

_ZSt5equalIPfPKfEbT_S3_T0_.exit.i13:              ; preds = %.lr.ph.i.i.i.i.preheader.i16, %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 165
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !39, !range !24, !noundef !25
  %i.gl = trunc nuw i8 %i.gk to i1                ; 2 uses
  %i.gm = load ptr, ptr %i.gb, align 8, !tbaa !40
  %i.gn = load ptr, ptr %1, align 8, !tbaa !28
  %..i14 = select i1 %i.gl, i64 56, i64 24
  %.18.i15 = select i1 %i.gl, i64 64, i64 32
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %..i14
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = call noundef i32 %i.gp(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.gm), !inline_history !41
  %i.gr = load ptr, ptr %1, align 8, !tbaa !28
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.18.i15
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = call noundef zeroext i1 %i.gt(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.gq, ptr noundef nonnull %i.gc, i32 noundef 1), !inline_history !41 ; 0 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.gw = load float, ptr %i.gc, align 8, !tbaa !18
  store float %i.gw, ptr %i.gv, align 8, !tbaa !18
  store i8 1, ptr %i.gd, align 4, !tbaa !37
  br label %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit18

_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit18: ; preds = %.lr.ph.i.i.i.i.preheader.i16, %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 0, ptr %i.b, align 4, !tbaa !68
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 4, !tbaa !76, !range !24, !noundef !25
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit18
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 176
  %lhsv = load i32, ptr %i.hb, align 8
  %.not = icmp eq i32 %lhsv, 0
  br i1 %.not, label %_ZN19CachedShaderSettingIiLm1ELb1EE3setEPKiPN5video25IMaterialRendererServicesE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit18
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 181
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !78, !range !24, !noundef !25
  %i.he = trunc nuw i8 %i.hd to i1                ; 2 uses
  %i.hf = load ptr, ptr %i.gx, align 8, !tbaa !79
  %i.hg = load ptr, ptr %1, align 8, !tbaa !28
  %..i19 = select i1 %i.he, i64 56, i64 24
  %.16.i = select i1 %i.he, i64 72, i64 40
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %..i19
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = call noundef i32 %i.hi(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.hf), !inline_history !80
  %i.hk = load ptr, ptr %1, align 8, !tbaa !28
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %.16.i
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = call noundef zeroext i1 %i.hm(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.hj, ptr noundef nonnull %i.b, i32 noundef 1), !inline_history !80 ; 0 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.hp = load i32, ptr %i.b, align 4, !tbaa !68
  store i32 %i.hp, ptr %i.ho, align 8, !tbaa !68
  store i8 1, ptr %i.gy, align 4, !tbaa !76
  br label %_ZN19CachedShaderSettingIiLm1ELb1EE3setEPKiPN5video25IMaterialRendererServicesE.exit

_ZN19CachedShaderSettingIiLm1ELb1EE3setEPKiPN5video25IMaterialRendererServicesE.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hr = load float, ptr %i.hq, align 8, !tbaa !87 ; 3 uses
  store float %i.hr, ptr %i.c, align 4, !tbaa !18
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.hu = load i8, ptr %i.ht, align 4, !tbaa !37, !range !24, !noundef !25
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %.lr.ph.i.i.i.i.preheader.i23, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i20

.lr.ph.i.i.i.i.preheader.i23:                     ; preds = %_ZN19CachedShaderSettingIiLm1ELb1EE3setEPKiPN5video25IMaterialRendererServicesE.exit
  %.0810.i.i.i.i.ptr.i24 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.hw = load float, ptr %.0810.i.i.i.i.ptr.i24, align 8, !tbaa !18
  %i.hx = fcmp nsz oeq float %i.hw, %i.hr
  br i1 %i.hx, label %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit25, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i20

_ZSt5equalIPfPKfEbT_S3_T0_.exit.i20:              ; preds = %.lr.ph.i.i.i.i.preheader.i23, %_ZN19CachedShaderSettingIiLm1ELb1EE3setEPKiPN5video25IMaterialRendererServicesE.exit
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 197
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !39, !range !24, !noundef !25
  %i.ia = trunc nuw i8 %i.hz to i1                ; 2 uses
  %i.ib = load ptr, ptr %i.hs, align 8, !tbaa !40
  %i.ic = load ptr, ptr %1, align 8, !tbaa !28
  %..i21 = select i1 %i.ia, i64 56, i64 24
  %.18.i22 = select i1 %i.ia, i64 64, i64 32
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %..i21
  %i.ie = load ptr, ptr %i.id, align 8
  %i.if = call noundef i32 %i.ie(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ib), !inline_history !41
  %i.ig = load ptr, ptr %1, align 8, !tbaa !28
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.18.i22
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = call noundef zeroext i1 %i.ii(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.if, ptr noundef nonnull %i.c, i32 noundef 1), !inline_history !41 ; 0 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.il = load float, ptr %i.c, align 4, !tbaa !18 ; 2 uses
  store float %i.il, ptr %i.ik, align 8, !tbaa !18
  store i8 1, ptr %i.ht, align 4, !tbaa !37
  br label %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit25

_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit25: ; preds = %.lr.ph.i.i.i.i.preheader.i23, %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i20
  %i.im = phi float [ %i.hr, %.lr.ph.i.i.i.i.preheader.i23 ], [ %i.il, %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i20 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.in = fsub nsz float 1.000000e+00, %i.im
  %i.io = fadd nsz float %i.in, f0x3727C5AC       ; 2 uses
  store float %i.io, ptr %i.d, align 4, !tbaa !18
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.ir = load i8, ptr %i.iq, align 4, !tbaa !37, !range !24, !noundef !25
  %i.is = trunc nuw i8 %i.ir to i1
  br i1 %i.is, label %.lr.ph.i.i.i.i.preheader.i29, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i26

.lr.ph.i.i.i.i.preheader.i29:                     ; preds = %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit25
  %.0810.i.i.i.i.ptr.i30 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.it = load float, ptr %.0810.i.i.i.i.ptr.i30, align 8, !tbaa !18
  %i.iu = fcmp nsz oeq float %i.it, %i.io
  br i1 %i.iu, label %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit31, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i26

_ZSt5equalIPfPKfEbT_S3_T0_.exit.i26:              ; preds = %.lr.ph.i.i.i.i.preheader.i29, %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit25
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 213
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !39, !range !24, !noundef !25
  %i.ix = trunc nuw i8 %i.iw to i1                ; 2 uses
  %i.iy = load ptr, ptr %i.ip, align 8, !tbaa !40
  %i.iz = load ptr, ptr %1, align 8, !tbaa !28
  %..i27 = select i1 %i.ix, i64 56, i64 24
  %.18.i28 = select i1 %i.ix, i64 64, i64 32
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %..i27
  %i.jb = load ptr, ptr %i.ja, align 8
  %i.jc = call noundef i32 %i.jb(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.iy), !inline_history !41
  %i.jd = load ptr, ptr %1, align 8, !tbaa !28
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.18.i28
  %i.jf = load ptr, ptr %i.je, align 8
  %i.jg = call noundef zeroext i1 %i.jf(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.jc, ptr noundef nonnull %i.d, i32 noundef 1), !inline_history !41 ; 0 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ji = load float, ptr %i.d, align 4, !tbaa !18
  store float %i.ji, ptr %i.jh, align 8, !tbaa !18
  store i8 1, ptr %i.iq, align 4, !tbaa !37
  br label %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit31

_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit31: ; preds = %.lr.ph.i.i.i.i.preheader.i29, %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !96 ; 2 uses
  store float %i.jk, ptr %i.e, align 4, !tbaa !18
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.jn = load i8, ptr %i.jm, align 4, !tbaa !37, !range !24, !noundef !25
  %i.jo = trunc nuw i8 %i.jn to i1
  br i1 %i.jo, label %.lr.ph.i.i.i.i.preheader.i35, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i32

.lr.ph.i.i.i.i.preheader.i35:                     ; preds = %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit31
  %.0810.i.i.i.i.ptr.i36 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.jp = load float, ptr %.0810.i.i.i.i.ptr.i36, align 8, !tbaa !18
  %i.jq = fcmp nsz oeq float %i.jp, %i.jk
  br i1 %i.jq, label %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit37, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i32

_ZSt5equalIPfPKfEbT_S3_T0_.exit.i32:              ; preds = %.lr.ph.i.i.i.i.preheader.i35, %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit31
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 229
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !39, !range !24, !noundef !25
  %i.jt = trunc nuw i8 %i.js to i1                ; 2 uses
  %i.ju = load ptr, ptr %i.jl, align 8, !tbaa !40
  %i.jv = load ptr, ptr %1, align 8, !tbaa !28
  %..i33 = select i1 %i.jt, i64 56, i64 24
  %.18.i34 = select i1 %i.jt, i64 64, i64 32
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 %..i33
  %i.jx = load ptr, ptr %i.jw, align 8
  %i.jy = call noundef i32 %i.jx(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ju), !inline_history !41
  %i.jz = load ptr, ptr %1, align 8, !tbaa !28
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 %.18.i34
  %i.kb = load ptr, ptr %i.ka, align 8
  %i.kc = call noundef zeroext i1 %i.kb(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.jy, ptr noundef nonnull %i.e, i32 noundef 1), !inline_history !41 ; 0 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ke = load float, ptr %i.e, align 4, !tbaa !18
  store float %i.ke, ptr %i.kd, align 8, !tbaa !18
  store i8 1, ptr %i.jm, align 4, !tbaa !37
  br label %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit37

_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit37: ; preds = %.lr.ph.i.i.i.i.preheader.i35, %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i32
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.kh = load i8, ptr %i.kg, align 8, !tbaa !71, !range !24, !noundef !25
  %i.ki = trunc nuw i8 %i.kh to i1
  br i1 %i.ki, label %.lr.ph.i.i.i.i.preheader.i41, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i38

.lr.ph.i.i.i.i.preheader.i41:                     ; preds = %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit37
  %.0810.i.i.i.i.ptr.i42 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.kj = load float, ptr %.0810.i.i.i.i.ptr.i42, align 8, !tbaa !18
  %i.kk = load float, ptr %i.a, align 16, !tbaa !18
  %i.kl = fcmp nsz oeq float %i.kj, %i.kk
  br i1 %i.kl, label %.lr.ph.i.i.i.i.1.i, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i38

.lr.ph.i.i.i.i.1.i:                               ; preds = %.lr.ph.i.i.i.i.preheader.i41
  %.0810.i.i.i.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.km = load float, ptr %.0810.i.i.i.i.ptr.1.i, align 4, !tbaa !18
  %i.kn = load float, ptr %i.av, align 4, !tbaa !18
  %i.ko = fcmp nsz oeq float %i.km, %i.kn
  br i1 %i.ko, label %.lr.ph.i.i.i.i.2.i, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i38

.lr.ph.i.i.i.i.2.i:                               ; preds = %.lr.ph.i.i.i.i.1.i
  %.0810.i.i.i.i.ptr.2.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.kp = load float, ptr %.0810.i.i.i.i.ptr.2.i, align 8, !tbaa !18
  %i.kq = load float, ptr %i.aw, align 8, !tbaa !18
  %i.kr = fcmp nsz oeq float %i.kp, %i.kq
  br i1 %i.kr, label %.lr.ph.i.i.i.i.3.i, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i38

.lr.ph.i.i.i.i.3.i:                               ; preds = %.lr.ph.i.i.i.i.2.i
  %.0810.i.i.i.i.ptr.3.i = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.ks = load float, ptr %.0810.i.i.i.i.ptr.3.i, align 4, !tbaa !18
  %i.kt = load float, ptr %i.ax, align 4, !tbaa !18
  %i.ku = fcmp nsz oeq float %i.ks, %i.kt
  br i1 %i.ku, label %_ZN19CachedShaderSettingIfLm4ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i38

_ZSt5equalIPfPKfEbT_S3_T0_.exit.i38:              ; preds = %.lr.ph.i.i.i.i.3.i, %.lr.ph.i.i.i.i.2.i, %.lr.ph.i.i.i.i.1.i, %.lr.ph.i.i.i.i.preheader.i41, %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit37
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 257
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !73, !range !24, !noundef !25
  %i.kx = trunc nuw i8 %i.kw to i1                ; 2 uses
  %i.ky = load ptr, ptr %i.kf, align 8, !tbaa !74
  %i.kz = load ptr, ptr %1, align 8, !tbaa !28
  %..i39 = select i1 %i.kx, i64 56, i64 24
  %.18.i40 = select i1 %i.kx, i64 64, i64 32
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 %..i39
  %i.lb = load ptr, ptr %i.la, align 8
  %i.lc = call noundef i32 %i.lb(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ky), !inline_history !75
  %i.ld = load ptr, ptr %1, align 8, !tbaa !28
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 %.18.i40
  %i.lf = load ptr, ptr %i.le, align 8
  %i.lg = call noundef zeroext i1 %i.lf(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.lc, ptr noundef nonnull %i.a, i32 noundef 4), !inline_history !75 ; 0 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lh, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  store i8 1, ptr %i.kg, align 8, !tbaa !71
  br label %_ZN19CachedShaderSettingIfLm4ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit

_ZN19CachedShaderSettingIfLm4ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit: ; preds = %.lr.ph.i.i.i.i.3.i, %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZThn16_N24ShadowDepthUniformSetter13onSetUniformsEPN5video25IMaterialRendererServicesE(ptr noundef %0, ptr noundef %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN24ShadowDepthUniformSetter13onSetUniformsEPN5video25IMaterialRendererServicesE(ptr noundef nonnull align 8 dereferenceable(264) %i.a, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20IShaderUniformSetterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN19ShadowUniformSetterD0Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 344) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20IShaderUniformSetter13onSetMaterialERKN5video9SMaterialE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(127) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN22IShaderUniformSetterRCD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN24ShadowDepthUniformSetterD0Ev(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 264) #11
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N24ShadowDepthUniformSetterD1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N24ShadowDepthUniformSetterD0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(264) %i.a, i64 noundef 264) #11
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS15RenderingEngine", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS13RenderingCore", !11, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTS14ShadowRenderer", !11, i64 0}
!16 = !{i64 0, i64 64, !17}
!17 = !{!7, !7, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"float", !7, i64 0}
!20 = !{!21, !23, i64 20}
!21 = !{!"_ZTS19CachedShaderSettingIfLm3ELb1EE", !22, i64 0, !7, i64 8, !23, i64 20, !23, i64 21}
!22 = !{!"p1 omnipotent char", !11, i64 0}
!23 = !{!"bool", !7, i64 0}
!24 = !{i8 0, i8 2}
!25 = !{}
!26 = !{!21, !23, i64 21}
!27 = !{!21, !22, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"vtable pointer", !8, i64 0}
!30 = distinct !{null, null}
!31 = !{!32, !6, i64 24}
!32 = !{!"_ZTS16DirectionalLight", !23, i64 0, !33, i64 4, !19, i64 20, !6, i64 24, !34, i64 28, !34, i64 40, !34, i64 52, !34, i64 64, !35, i64 76, !35, i64 244, !23, i64 412}
!33 = !{!"_ZTSN5video7SColorfE", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12}
!34 = !{!"_ZTSN4core8vector3dIfEE", !19, i64 0, !19, i64 4, !19, i64 8}
!35 = !{!"_ZTS13shadowFrustum", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !36, i64 16, !36, i64 80, !34, i64 144, !34, i64 156}
!36 = !{!"_ZTSN4core8CMatrix4IfEE", !7, i64 0}
!37 = !{!38, !23, i64 12}
!38 = !{!"_ZTS19CachedShaderSettingIfLm1ELb1EE", !22, i64 0, !7, i64 8, !23, i64 12, !23, i64 13}
!39 = !{!38, !23, i64 13}
!40 = !{!38, !22, i64 0}
!41 = distinct !{null}
!42 = !{!43, !23, i64 137}
!43 = !{!"_ZTS14ShadowRenderer", !44, i64 0, !45, i64 8, !46, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !47, i64 56, !48, i64 64, !53, i64 88, !19, i64 112, !58, i64 116, !19, i64 120, !19, i64 124, !6, i64 128, !19, i64 132, !23, i64 136, !23, i64 137, !23, i64 138, !23, i64 139, !23, i64 140, !7, i64 141, !7, i64 142, !19, i64 144, !19, i64 148, !59, i64 152, !59, i64 156, !60, i64 160, !60, i64 164, !60, i64 168, !60, i64 172, !61, i64 176, !67, i64 200}
!44 = !{!"p1 _ZTSN5scene13ISceneManagerE", !11, i64 0}
!45 = !{!"p1 _ZTSN5video12IVideoDriverE", !11, i64 0}
!46 = !{!"p1 _ZTS6Client", !11, i64 0}
!47 = !{!"p1 _ZTSN5video8ITextureE", !11, i64 0}
!48 = !{!"_ZTSSt6vectorI16DirectionalLightSaIS0_EE", !49, i64 0}
!49 = !{!"_ZTSSt12_Vector_baseI16DirectionalLightSaIS0_EE", !50, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseI16DirectionalLightSaIS0_EE12_Vector_implE", !51, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseI16DirectionalLightSaIS0_EE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!52 = !{!"p1 _ZTS16DirectionalLight", !11, i64 0}
!53 = !{!"_ZTSSt6vectorI11NodeToApplySaIS0_EE", !54, i64 0}
!54 = !{!"_ZTSSt12_Vector_baseI11NodeToApplySaIS0_EE", !55, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseI11NodeToApplySaIS0_EE12_Vector_implE", !56, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseI11NodeToApplySaIS0_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!57 = !{!"p1 _ZTS11NodeToApply", !11, i64 0}
!58 = !{!"_ZTSN5video6SColorE", !6, i64 0}
!59 = !{!"_ZTSN5video13ECOLOR_FORMATE", !7, i64 0}
!60 = !{!"_ZTSN5video15E_MATERIAL_TYPEE", !7, i64 0}
!61 = !{!"_ZTSSt6vectorIP24ShadowDepthUniformSetterSaIS1_EE", !62, i64 0}
!62 = !{!"_ZTSSt12_Vector_baseIP24ShadowDepthUniformSetterSaIS1_EE", !63, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIP24ShadowDepthUniformSetterSaIS1_EE12_Vector_implE", !64, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIP24ShadowDepthUniformSetterSaIS1_EE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!65 = !{!"p2 _ZTS24ShadowDepthUniformSetter", !66, i64 0}
!66 = !{!"any p2 pointer", !11, i64 0}
!67 = !{!"p1 _ZTS16ShadowScreenQuad", !11, i64 0}
!68 = !{!6, !6, i64 0}
!69 = distinct !{null, null}
!70 = !{!43, !19, i64 132}
!71 = !{!72, !23, i64 24}
!72 = !{!"_ZTS19CachedShaderSettingIfLm4ELb1EE", !22, i64 0, !7, i64 8, !23, i64 24, !23, i64 25}
!73 = !{!72, !23, i64 25}
!74 = !{!72, !22, i64 0}
!75 = distinct !{null}
!76 = !{!77, !23, i64 12}
!77 = !{!"_ZTS19CachedShaderSettingIiLm1ELb1EE", !22, i64 0, !7, i64 8, !23, i64 12, !23, i64 13}
!78 = !{!77, !23, i64 13}
!79 = !{!77, !22, i64 0}
!80 = distinct !{null}
!81 = !{!43, !19, i64 144}
!82 = !{!43, !19, i64 148}
!83 = !{!84, !23, i64 72}
!84 = !{!"_ZTS19CachedShaderSettingIfLm16ELb1EE", !22, i64 0, !7, i64 8, !23, i64 72, !23, i64 73}
!85 = !{!84, !23, i64 73}
!86 = !{!84, !22, i64 0}
!87 = !{!88, !19, i64 32}
!88 = !{!"_ZTS24ShadowDepthUniformSetter", !89, i64 0, !19, i64 24, !19, i64 28, !19, i64 32, !19, i64 36, !34, i64 40, !92, i64 56, !93, i64 136, !93, i64 152, !94, i64 168, !93, i64 184, !93, i64 200, !93, i64 216, !95, i64 232}
!89 = !{!"_ZTS22IShaderUniformSetterRC", !90, i64 0, !91, i64 16}
!90 = !{!"_ZTS17IReferenceCounted", !6, i64 8}
!91 = !{!"_ZTS20IShaderUniformSetter"}
!92 = !{!"_ZTS25CachedVertexShaderSettingIfLm16ELb1EE", !84, i64 0}
!93 = !{!"_ZTS25CachedVertexShaderSettingIfLm1ELb1EE", !38, i64 0}
!94 = !{!"_ZTS24CachedPixelShaderSettingIiLm1ELb1EE", !77, i64 0}
!95 = !{!"_ZTS25CachedVertexShaderSettingIfLm4ELb1EE", !72, i64 0}
!96 = !{!88, !19, i64 36}
end_hunk_1
