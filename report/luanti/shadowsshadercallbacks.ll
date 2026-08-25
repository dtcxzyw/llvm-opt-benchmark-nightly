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
  %i.aw = load <2 x float>, ptr %i.s, align 4, !tbaa !18
  %i.ax = load float, ptr %i.w, align 4, !tbaa !18
  %i.ay = load <4 x float>, ptr %i.aa, align 4, !tbaa !18 ; 4 uses
  %i.az = load float, ptr %i.ac, align 4, !tbaa !18 ; 2 uses
  %i.ba = load float, ptr %i.ab, align 4, !tbaa !18
  %i.bb = shufflevector <2 x float> %i.af, <2 x float> %i.ae, <2 x i32> <i32 0, i32 3>
  %i.bc = shufflevector <2 x float> %i.aw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> %i.ay, <2 x i32> <i32 1, i32 5>
  %i.be = fmul nsz <2 x float> %i.bb, %i.bd
  %i.bf = insertelement <2 x float> %i.ae, float %.sroa.0124.0.copyload, i64 1 ; 3 uses
  %i.bg = shufflevector <4 x float> %i.bc, <4 x float> %i.ay, <2 x i32> <i32 0, i32 4>
  %i.bh = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.bg, <2 x float> %i.be)
  %i.bi = shufflevector <2 x float> %i.ag, <2 x float> %i.af, <2 x i32> <i32 0, i32 3>
  %i.bj = shufflevector <4 x float> %i.ay, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.bk = insertelement <2 x float> %i.bj, float %i.ax, i64 0
  %i.bl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bk, <2 x float> %i.bh)
  %i.bm = insertelement <2 x float> %i.ag, float %.sroa.63.0.copyload, i64 0
  %i.bn = shufflevector <4 x float> %i.ay, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.bo = insertelement <2 x float> %i.bn, float %i.ak, i64 0
  %i.bp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.bo, <2 x float> %i.bl)
  store <2 x float> %i.bp, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !18
  %i.bq = load float, ptr %i.aa, align 4, !tbaa !18
  %i.br = fmul nsz float %.sroa.23.0.copyload, %i.ba
  %i.bs = tail call nsz float @llvm.fmuladd.f32(float %.sroa.7.0.copyload, float %i.bq, float %i.br)
  %i.bt = tail call nsz float @llvm.fmuladd.f32(float %.sroa.39.0.copyload, float %i.az, float %i.bs)
  %i.bu = extractelement <2 x float> %i.af, i64 0
  %i.bv = extractelement <2 x float> %i.ae, i64 0
  %i.bw = extractelement <2 x float> %i.ag, i64 0
  %i.bx = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.s, i64 36 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.s, i64 44
  %i.cb = load float, ptr %i.ad, align 4, !tbaa !18 ; 3 uses
  %i.cc = tail call nsz float @llvm.fmuladd.f32(float %.sroa.55.0.copyload, float %i.cb, float %i.bt)
  store float %i.cc, ptr %.sroa.23.0..sroa_idx, align 4, !tbaa !18
  %i.cd = load float, ptr %i.aa, align 4, !tbaa !18
  %i.ce = load float, ptr %i.ab, align 4, !tbaa !18
  %i.cf = fmul nsz float %.sroa.27.0.copyload, %i.ce
  %i.cg = tail call nsz float @llvm.fmuladd.f32(float %.sroa.11131.0.copyload, float %i.cd, float %i.cf)
  %i.ch = tail call nsz float @llvm.fmuladd.f32(float %.sroa.43.0.copyload, float %i.az, float %i.cg)
  %i.ci = tail call nsz float @llvm.fmuladd.f32(float %.sroa.59.0.copyload, float %i.cb, float %i.ch)
  store float %i.ci, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !18
  %3 = load <2 x float>, ptr %i.aa, align 4, !tbaa !18
  %i.cj = load float, ptr %i.ac, align 4, !tbaa !18
  %i.ck = load <4 x float>, ptr %i.bx, align 4, !tbaa !18 ; 4 uses
  %i.cl = load float, ptr %i.bz, align 4, !tbaa !18 ; 2 uses
  %i.cm = load float, ptr %i.by, align 4, !tbaa !18
  %i.cn = insertelement <2 x float> %i.af, float %.sroa.19.0.copyload, i64 1 ; 2 uses
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.co = shufflevector <4 x float> %4, <4 x float> %i.ck, <2 x i32> <i32 1, i32 5>
  %i.cp = fmul nsz <2 x float> %i.cn, %i.co
  %i.cq = shufflevector <4 x float> %4, <4 x float> %i.ck, <2 x i32> <i32 0, i32 4>
  %i.cr = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.cq, <2 x float> %i.cp)
  %i.cs = insertelement <2 x float> %i.ag, float %.sroa.35.0.copyload, i64 1 ; 2 uses
  %i.ct = shufflevector <4 x float> %i.ck, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.cu = insertelement <2 x float> %i.ct, float %i.cj, i64 0
  %i.cv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.cu, <2 x float> %i.cr)
  %i.cw = insertelement <2 x float> poison, float %.sroa.63.0.copyload, i64 0
  %i.cx = insertelement <2 x float> %i.cw, float %.sroa.51.0.copyload, i64 1 ; 2 uses
  %i.cy = shufflevector <4 x float> %i.ck, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.cz = insertelement <2 x float> %i.cy, float %i.cb, i64 0
  %i.da = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.cz, <2 x float> %i.cv)
  store <2 x float> %i.da, ptr %.sroa.31.0..sroa_idx, align 4, !tbaa !18
  %i.db = load float, ptr %i.bx, align 4, !tbaa !18
  %i.dc = fmul nsz float %.sroa.23.0.copyload, %i.cm
  %i.dd = tail call nsz float @llvm.fmuladd.f32(float %.sroa.7.0.copyload, float %i.db, float %i.dc)
  %i.de = tail call nsz float @llvm.fmuladd.f32(float %.sroa.39.0.copyload, float %i.cl, float %i.dd)
  %i.df = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.s, i64 52 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.s, i64 56 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.s, i64 60
  %i.dj = load float, ptr %i.ca, align 4, !tbaa !18 ; 3 uses
  %i.dk = tail call nsz float @llvm.fmuladd.f32(float %.sroa.55.0.copyload, float %i.dj, float %i.de)
  store float %i.dk, ptr %.sroa.39.0..sroa_idx, align 4, !tbaa !18
  %i.dl = load float, ptr %i.bx, align 4, !tbaa !18
  %i.dm = load float, ptr %i.by, align 4, !tbaa !18
  %i.dn = fmul nsz float %.sroa.27.0.copyload, %i.dm
  %i.do = tail call nsz float @llvm.fmuladd.f32(float %.sroa.11131.0.copyload, float %i.dl, float %i.dn)
  %i.dp = tail call nsz float @llvm.fmuladd.f32(float %.sroa.43.0.copyload, float %i.cl, float %i.do)
  %i.dq = tail call nsz float @llvm.fmuladd.f32(float %.sroa.59.0.copyload, float %i.dj, float %i.dp)
  store float %i.dq, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !18
  %5 = load <2 x float>, ptr %i.bx, align 4, !tbaa !18
  %i.dr = load float, ptr %i.bz, align 4, !tbaa !18
  %i.ds = load <4 x float>, ptr %i.df, align 4, !tbaa !18 ; 4 uses
  %i.dt = load float, ptr %i.di, align 4, !tbaa !18 ; 3 uses
  %i.du = load float, ptr %i.dh, align 4, !tbaa !18 ; 2 uses
  %i.dv = load float, ptr %i.dg, align 4, !tbaa !18
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dw = shufflevector <4 x float> %6, <4 x float> %i.ds, <2 x i32> <i32 1, i32 5>
  %i.dx = fmul nsz <2 x float> %i.cn, %i.dw
  %i.dy = shufflevector <4 x float> %6, <4 x float> %i.ds, <2 x i32> <i32 0, i32 4>
  %i.dz = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.dy, <2 x float> %i.dx)
  %i.ea = shufflevector <4 x float> %i.ds, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.eb = insertelement <2 x float> %i.ea, float %i.dr, i64 0
  %i.ec = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.eb, <2 x float> %i.dz)
  %i.ed = shufflevector <4 x float> %i.ds, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.ee = insertelement <2 x float> %i.ed, float %i.dj, i64 0
  %i.ef = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.ee, <2 x float> %i.ec)
  store <2 x float> %i.ef, ptr %.sroa.47.0..sroa_idx, align 4, !tbaa !18
  %i.eg = load float, ptr %i.df, align 4, !tbaa !18
  %i.eh = fmul nsz float %.sroa.23.0.copyload, %i.dv
  %i.ei = tail call nsz float @llvm.fmuladd.f32(float %.sroa.7.0.copyload, float %i.eg, float %i.eh)
  %i.ej = tail call nsz float @llvm.fmuladd.f32(float %.sroa.39.0.copyload, float %i.du, float %i.ei)
  %i.ek = tail call nsz float @llvm.fmuladd.f32(float %.sroa.55.0.copyload, float %i.dt, float %i.ej)
  store float %i.ek, ptr %.sroa.55.0..sroa_idx, align 4, !tbaa !18
  %i.el = load float, ptr %i.df, align 4, !tbaa !18
  %i.em = load float, ptr %i.dg, align 4, !tbaa !18
  %i.en = fmul nsz float %.sroa.27.0.copyload, %i.em
  %i.eo = tail call nsz float @llvm.fmuladd.f32(float %.sroa.11131.0.copyload, float %i.el, float %i.en)
  %i.ep = tail call nsz float @llvm.fmuladd.f32(float %.sroa.43.0.copyload, float %i.du, float %i.eo)
  %i.eq = tail call nsz float @llvm.fmuladd.f32(float %.sroa.59.0.copyload, float %i.dt, float %i.ep)
  store float %i.eq, ptr %.sroa.59.0..sroa_idx, align 8, !tbaa !18
  %i.er = load float, ptr %i.df, align 4, !tbaa !18
  %i.es = load float, ptr %i.dg, align 4, !tbaa !18
  %i.et = fmul nsz float %i.bu, %i.es
  %i.eu = tail call nsz float @llvm.fmuladd.f32(float %i.bv, float %i.er, float %i.et)
  %i.ev = load float, ptr %i.dh, align 4, !tbaa !18
  %i.ew = tail call nsz float @llvm.fmuladd.f32(float %i.bw, float %i.ev, float %i.eu)
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
  %i.gw = trunc nuw i8 %i.gv to i1
  %i.gx = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.gy = load float, ptr %i.gx, align 8
  %i.gz = select nsz i1 %i.gw, float %i.gy, float 0.000000e+00 ; 2 uses
  store float %i.gz, ptr %i.d, align 4, !tbaa !18
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 4, !tbaa !37, !range !24, !noundef !25
  %i.hd = trunc nuw i8 %i.hc to i1
  br i1 %i.hd, label %.lr.ph.i.i.i.i.preheader.i42, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i39

.lr.ph.i.i.i.i.preheader.i42:                     ; preds = %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit
  %.0810.i.i.i.i.ptr.i43 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.he = load float, ptr %.0810.i.i.i.i.ptr.i43, align 8, !tbaa !18
  %i.hf = fcmp nsz oeq float %i.he, %i.gz
  br i1 %i.hf, label %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit44, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i39

_ZSt5equalIPfPKfEbT_S3_T0_.exit.i39:              ; preds = %.lr.ph.i.i.i.i.preheader.i42, %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 141
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !39, !range !24, !noundef !25
  %i.hi = trunc nuw i8 %i.hh to i1                ; 2 uses
  %i.hj = load ptr, ptr %i.ha, align 8, !tbaa !40
  %i.hk = load ptr, ptr %1, align 8, !tbaa !28
  %..i40 = select i1 %i.hi, i64 56, i64 24
  %.18.i41 = select i1 %i.hi, i64 64, i64 32
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %..i40
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = call noundef i32 %i.hm(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.hj), !inline_history !41
  %i.ho = load ptr, ptr %1, align 8, !tbaa !28
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.18.i41
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = call noundef zeroext i1 %i.hq(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.hn, ptr noundef nonnull %i.d, i32 noundef 1), !inline_history !41 ; 0 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ht = load float, ptr %i.d, align 4, !tbaa !18
  store float %i.ht, ptr %i.hs, align 8, !tbaa !18
  store i8 1, ptr %i.hb, align 4, !tbaa !37
  br label %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit44

_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit44: ; preds = %.lr.ph.i.i.i.i.preheader.i42, %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i39
  %i.hu = getelementptr inbounds nuw i8, ptr %i.p, i64 116
  %.sroa.0.0.copyload.i = load i32, ptr %i.hu, align 4, !tbaa !68 ; 3 uses
  %i.hv = lshr i32 %.sroa.0.0.copyload.i, 16
  %i.hw = and i32 %i.hv, 255
  %i.hx = uitofp nsz nneg i32 %i.hw to float
  %i.hy = fmul nnan nsz float %i.hx, f0x3B808081  ; 2 uses
  %i.hz = lshr i32 %.sroa.0.0.copyload.i, 8
  %i.ia = and i32 %i.hz, 255
  %i.ib = uitofp nsz nneg i32 %i.ia to float
  %i.ic = fmul nnan nsz float %i.ib, f0x3B808081  ; 2 uses
  %i.id = and i32 %.sroa.0.0.copyload.i, 255
  %i.ie = uitofp nsz nneg i32 %i.id to float
  %i.if = fmul nnan nsz float %i.ie, f0x3B808081  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store float %i.hy, ptr %i.a, align 4, !tbaa !18
  %i.ig = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float %i.ic, ptr %i.ig, align 4, !tbaa !18
  %i.ih = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.if, ptr %i.ih, align 4, !tbaa !18
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.ij = load i8, ptr %i.ii, align 4, !tbaa !20, !range !24, !noundef !25
  %i.ik = trunc nuw i8 %i.ij to i1
  %.0810.i.i.i.i.ptr.i.i45 = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.il = load float, ptr %.0810.i.i.i.i.ptr.i.i45, align 8
  %i.im = fcmp nsz oeq float %i.il, %i.hy
  %or.cond.i46 = select i1 %i.ik, i1 %i.im, i1 false
  %.0810.i.i.i.i.ptr.1.i.i47 = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.in = load float, ptr %.0810.i.i.i.i.ptr.1.i.i47, align 4
  %i.io = fcmp nsz oeq float %i.in, %i.ic
  %or.cond4.i = select i1 %or.cond.i46, i1 %i.io, i1 false
  %.0810.i.i.i.i.ptr.2.i.i48 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ip = load float, ptr %.0810.i.i.i.i.ptr.2.i.i48, align 8
  %i.iq = fcmp nsz oeq float %i.ip, %i.if
  %or.cond6.i = select i1 %or.cond4.i, i1 %i.iq, i1 false
  br i1 %or.cond6.i, label %_ZN19CachedShaderSettingIfLm3ELb1EE3setIfEENSt9enable_ifIXaaaasr3stdE9is_same_vIfT_Esr3stdE9is_same_vIS3_fEooeqLm3ELi3EeqLm3ELi4EEvE4typeEN5video7SColorfEPNS6_25IMaterialRendererServicesE.exit, label %_ZSt5equalIPfPKfEbT_S3_T0_.exit.i.i49

_ZSt5equalIPfPKfEbT_S3_T0_.exit.i.i49:            ; preds = %_ZN19CachedShaderSettingIfLm1ELb1EE3setEPKfPN5video25IMaterialRendererServicesE.exit44
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 165
end_hunk_0
