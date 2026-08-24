Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/dynamicshadows?download=true
inline.NumInlined: 177
inline.NumDeleted: 47
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.core::vector3d" = type { float, float, float }
%"class.core::CMatrix4" = type { [16 x float] }

$_ZN4core8CMatrix4IfE25buildCameraLookAtMatrixLHERKNS_8vector3dIfEES5_S5_ = comdat any

$_ZNK4core8CMatrix4IfEmlERKS1_ = comdat any

$_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE = comdat any

$_ZNSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS0_EED2Ev = comdat any

@_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE = linkonce_odr dso_local global { { { ptr } } } zeroinitializer, comdat, align 8
@_ZGVN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE = linkonce_odr dso_local local_unnamed_addr global i64 0, comdat($_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE), align 8
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE], section "llvm.metadata"

@_ZN16DirectionalLightC1EjRKN4core8vector3dIfEEN5video7SColorfEf = dso_local unnamed_addr alias void (ptr, i32, ptr, <2 x float>, <2 x float>, float), ptr @_ZN16DirectionalLightC2EjRKN4core8vector3dIfEEN5video7SColorfEf

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16DirectionalLight19createSplitMatricesEPK6Camera(ptr noundef nonnull align 4 dereferenceable(413) initializes((252, 260), (388, 412)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.core::vector3d", align 8    ; 5 uses
  %3 = alloca %"class.core::vector3d", align 8    ; 5 uses
  %4 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.a, align 8 ; 5 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !9 ; 4 uses
  %.sroa.0281.0.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 0 ; 2 uses
  %foldExtExtBinop = fmul nsz <2 x float> %.sroa.01.0.copyload.i, %.sroa.01.0.copyload.i
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.c = tail call nsz float @llvm.fmuladd.f32(float %.sroa.0281.0.vec.extract, float %.sroa.0281.0.vec.extract, float %i.b)
  %i.d = tail call nsz float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i, float %.sroa.22.0.copyload.i, float %i.c) ; 2 uses
  %i.e = fcmp nsz oeq float %i.d, 0.000000e+00
  br i1 %i.e, label %_ZN4core8vector3dIfE9normalizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = fpext nsz float %i.d to double
  %i.g = tail call nsz double @llvm.sqrt.f64(double %i.f)
  %i.h = fdiv nsz double 1.000000e+00, %i.g       ; 2 uses
  %i.i = fpext <2 x float> %.sroa.01.0.copyload.i to <2 x double>
  %i.j = insertelement <2 x double> poison, double %i.h, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fmul nsz <2 x double> %i.k, %i.i
  %i.m = fptrunc <2 x double> %i.l to <2 x float>
  %i.n = fpext nsz float %.sroa.22.0.copyload.i to double
  %i.o = fmul nsz double %i.h, %i.n
  %i.p = fptrunc nsz double %i.o to float
  br label %_ZN4core8vector3dIfE9normalizeEv.exit

_ZN4core8vector3dIfE9normalizeEv.exit:            ; preds = %bb.a, %bb.b
  %.sroa.8284.0 = phi nsz float [ %.sroa.22.0.copyload.i, %bb.a ], [ %i.p, %bb.b ] ; 3 uses
  %i.q = phi <2 x float> [ %.sroa.01.0.copyload.i, %bb.a ], [ %i.m, %bb.b ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.u = load float, ptr %i.t, align 4, !tbaa !13
  %i.v = extractelement <2 x float> %i.q, i64 1
  %i.w = fmul nsz float %i.v, %i.u
  %i.x = extractelement <2 x float> %i.q, i64 0
  %i.y = tail call nsz float @llvm.fmuladd.f32(float %i.x, float %i.s, float %i.w)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !14 ; 2 uses
  %i.ab = tail call nsz noundef float @llvm.fmuladd.f32(float %.sroa.8284.0, float %i.aa, float %i.y)
  %i.ac = fcmp nsz ult float %i.ab, f0x3F7746ED
  br i1 %i.ac, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit
  %.sroa.0285.0.copyload = load <2 x float>, ptr %i.r, align 4
  br label %bb.e

bb.d:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit
  store <2 x float> %i.q, ptr %i.r, align 4
  store float %.sroa.8284.0, ptr %i.z, align 4, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0285.0 = phi nsz <2 x float> [ %i.q, %bb.d ], [ %.sroa.0285.0.copyload, %bb.c ] ; 6 uses
  %.sroa.19.0 = phi nsz float [ %.sroa.8284.0, %bb.d ], [ %i.aa, %bb.c ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.af = load <2 x float>, ptr %i.ae, align 4, !tbaa !9
  %i.ag = load float, ptr %i.ad, align 8, !tbaa !15
  %i.ah = fmul nsz <2 x float> %i.af, splat (float 5.000000e-01)
  %i.ai = tail call nsz <2 x float> @llvm.tan.v2f32(<2 x float> %i.ah) ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !59 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.am = load float, ptr %i.al, align 4, !tbaa !64
  %i.an = fptosi float %i.am to i16
  %i.ao = tail call noundef signext i16 @_Z10adjustDistsf(i16 noundef signext %i.an, float noundef %i.ag)
  %i.ap = sitofp nsz i16 %i.ao to float           ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.01.0.copyload.i119 = load <2 x float>, ptr %i.aq, align 4 ; 4 uses
  %.sroa.22.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %1, i64 68
  %.sroa.22.0.copyload.i121 = load float, ptr %.sroa.22.0..sroa_idx.i120, align 4, !tbaa !9 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %.sroa.0260.0.vec.extract262 = extractelement <2 x float> %.sroa.01.0.copyload.i119, i64 0
  %i.as = load float, ptr %i.ar, align 4, !tbaa !11
  %i.at = fsub nsz float %.sroa.0260.0.vec.extract262, %i.as ; 2 uses
  %.sroa.0260.4.vec.extract270 = extractelement <2 x float> %.sroa.01.0.copyload.i119, i64 1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.av = load float, ptr %i.au, align 4, !tbaa !13
  %i.aw = fsub nsz float %.sroa.0260.4.vec.extract270, %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !14 ; 2 uses
  %i.az = fsub nsz float %.sroa.22.0.copyload.i121, %i.ay ; 2 uses
  %i.ba = fmul nsz float %i.aw, %i.aw
  %i.bb = tail call nsz float @llvm.fmuladd.f32(float %i.at, float %i.at, float %i.ba)
  %i.bc = tail call nsz noundef float @llvm.fmuladd.f32(float %i.az, float %i.az, float %i.bb)
  %i.bd = fcmp nsz olt float %i.bc, 1.000000e+02
  br i1 %i.bd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.0260.0.copyload = load <2 x float>, ptr %i.ar, align 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store <2 x float> %.sroa.01.0.copyload.i119, ptr %i.ar, align 4
  store float %.sroa.22.0.copyload.i121, ptr %i.ax, align 4, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.15.0 = phi nsz float [ %.sroa.22.0.copyload.i121, %bb.g ], [ %i.ay, %bb.f ] ; 2 uses
  %i.be = phi <2 x float> [ %.sroa.01.0.copyload.i119, %bb.g ], [ %.sroa.0260.0.copyload, %bb.f ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 84
  %.sroa.0.0.copyload.i = load i48, ptr %i.bf, align 4 ; 3 uses
  %.sroa.388.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i, 16
  %i.bg = ashr i48 %.sroa.0.0.copyload.i, 32
  %i.bh = trunc nsw i48 %i.bg to i32
  %i.bi = sitofp nsz i32 %i.bh to float
  %i.bj = fneg nsz float %i.bi
  %i.bk = tail call nsz float @llvm.fmuladd.f32(float %i.bj, float 1.000000e+01, float %.sroa.15.0)
  %.sroa.0285.0.vec.extract287 = extractelement <2 x float> %.sroa.0285.0, i64 0
  %.sroa.0285.4.vec.extract300 = extractelement <2 x float> %.sroa.0285.0, i64 1
  %i.bl = fmul nsz float %.sroa.19.0, %i.ak       ; 2 uses
  %5 = fadd nsz float %i.bl, %i.bk                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %6 = fmul nsz float %.sroa.19.0, 3.500000e-01
  %7 = fsub nsz float %i.ap, %i.ak                ; 2 uses
  %8 = insertelement <2 x float> poison, float %i.ak, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %10 = fmul nsz <2 x float> %.sroa.0285.0, %9    ; 2 uses
  %11 = fmul nsz <2 x float> %.sroa.0285.0, splat (float 3.500000e-01)
  %i.bm = insertelement <2 x float> poison, float %7, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fmul nsz <2 x float> %11, %i.bn         ; 2 uses
  %12 = fmul nsz float %6, %7                     ; 2 uses
  %13 = trunc i48 %.sroa.0.0.copyload.i to i16
  %14 = insertelement <2 x i16> poison, i16 %13, i64 0
  %15 = trunc i48 %.sroa.388.0.extract.shift to i16
  %16 = insertelement <2 x i16> %14, i16 %15, i64 1
  %17 = sitofp <2 x i16> %16 to <2 x float>
  %18 = fneg nsz <2 x float> %17
  %19 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %18, <2 x float> splat (float 1.000000e+01), <2 x float> %i.be)
  %20 = fadd nsz <2 x float> %10, %19             ; 3 uses
  %i.bp = fadd nsz <2 x float> %i.bo, %20         ; 4 uses
  %i.bq = fadd nsz float %12, %5                  ; 3 uses
  store <2 x float> %i.bp, ptr %2, align 8
  %.sroa.269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.bq, ptr %.sroa.269.0..sroa_idx, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !65 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !66
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 360
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.bv(ptr noundef nonnull align 8 dereferenceable(233) %i.bs) ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.by = load <2 x float>, ptr %i.bx, align 4, !tbaa !9 ; 3 uses
  %i.bz = load <2 x float>, ptr %i.bw, align 4, !tbaa !9 ; 4 uses
  %i.ca = fneg nsz <2 x float> %i.by
  %i.cb = shufflevector <2 x float> %.sroa.0285.0, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cc = insertelement <2 x float> %i.cb, float %.sroa.19.0, i64 0
  %i.cd = fmul nsz <2 x float> %i.cc, %i.ca
  %i.ce = insertelement <2 x float> %i.cb, float %.sroa.19.0, i64 1
  %i.cf = shufflevector <2 x float> %i.by, <2 x float> %i.bz, <2 x i32> <i32 1, i32 2>
  %i.cg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.cf, <2 x float> %i.cd)
  %i.ch = extractelement <2 x float> %i.bz, i64 0
  %i.ci = fneg nsz float %i.ch
  %i.cj = fmul nsz float %.sroa.0285.4.vec.extract300, %i.ci
  %i.ck = extractelement <2 x float> %i.bz, i64 1
  %i.cl = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = fmul nsz <2 x float> %i.cl, %i.cg
  %i.cn = fadd nsz <2 x float> %.sroa.0285.0, %i.cm
  %i.co = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cp = fmul nsz <2 x float> %i.co, %i.bz
  %i.cq = tail call nsz float @llvm.fmuladd.f32(float %.sroa.0285.0.vec.extract287, float %i.ck, float %i.cj)
  %i.cr = insertelement <2 x float> %i.by, float %i.cq, i64 0
  %i.cs = fmul nsz <2 x float> %i.ai, %i.cr       ; 2 uses
  %i.ct = extractelement <2 x float> %i.cs, i64 0
  %i.cu = fadd nsz float %.sroa.19.0, %i.ct
  %i.cv = fadd nsz <2 x float> %i.cp, %i.cn       ; 5 uses
  %i.cw = extractelement <2 x float> %i.cs, i64 1
  %i.cx = fadd nsz float %i.cw, %i.cu             ; 4 uses
  %foldExtExtBinop325 = fmul nsz <2 x float> %i.cv, %i.cv
  %i.cy = extractelement <2 x float> %foldExtExtBinop325, i64 1
  %i.cz = extractelement <2 x float> %i.cv, i64 0 ; 2 uses
  %i.da = tail call nsz float @llvm.fmuladd.f32(float %i.cz, float %i.cz, float %i.cy)
  %i.db = tail call nsz float @llvm.fmuladd.f32(float %i.cx, float %i.cx, float %i.da) ; 2 uses
  %i.dc = fcmp nsz oeq float %i.db, 0.000000e+00
  br i1 %i.dc, label %_ZN4core8vector3dIfE9normalizeEv.exit176, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dd = fpext nsz float %i.db to double
  %i.de = tail call nsz double @llvm.sqrt.f64(double %i.dd)
  %i.df = fdiv nsz double 1.000000e+00, %i.de     ; 2 uses
  %i.dg = fpext <2 x float> %i.cv to <2 x double>
  %i.dh = insertelement <2 x double> poison, double %i.df, i64 0
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dj = fmul nsz <2 x double> %i.di, %i.dg
  %i.dk = fptrunc <2 x double> %i.dj to <2 x float>
  %i.dl = fpext nsz float %i.cx to double
  %i.dm = fmul nsz double %i.df, %i.dl
  %i.dn = fptrunc nsz double %i.dm to float
  br label %_ZN4core8vector3dIfE9normalizeEv.exit176

_ZN4core8vector3dIfE9normalizeEv.exit176:         ; preds = %bb.h, %bb.i
  %.sroa.8.0 = phi nsz float [ %i.cx, %bb.h ], [ %i.dn, %bb.i ]
  %.sroa.0231.0 = phi nsz <2 x float> [ %i.cv, %bb.h ], [ %i.dk, %bb.i ] ; 2 uses
  %.sroa.0234.0.vec.extract = extractelement <2 x float> %.sroa.0231.0, i64 0
  %i.do = fmul nsz float %.sroa.0234.0.vec.extract, %i.ap
  %.sroa.0234.4.vec.extract = extractelement <2 x float> %.sroa.0231.0, i64 1
  %i.dp = fmul nsz float %.sroa.0234.4.vec.extract, %i.ap
  %i.dq = fmul nsz float %.sroa.8.0, %i.ap
  %i.dr = extractelement <2 x float> %20, i64 0   ; 2 uses
  %i.ds = fadd nsz float %i.dr, %i.do
  %i.dt = extractelement <2 x float> %20, i64 1   ; 2 uses
  %i.du = fadd nsz float %i.dt, %i.dp
  %i.dv = fadd nsz float %5, %i.dq
  %i.dw = extractelement <2 x float> %i.bp, i64 0
  %i.dx = fsub nsz float %i.ds, %i.dw             ; 2 uses
  %i.dy = extractelement <2 x float> %i.bp, i64 1
  %i.dz = fsub nsz float %i.du, %i.dy             ; 2 uses
  %i.ea = fsub nsz float %i.dv, %i.bq             ; 2 uses
  %i.eb = fmul nsz float %i.dz, %i.dz
  %i.ec = tail call nsz float @llvm.fmuladd.f32(float %i.dx, float %i.dx, float %i.eb)
  %i.ed = tail call nsz float @llvm.fmuladd.f32(float %i.ea, float %i.ea, float %i.ec)
  %i.ee = tail call nsz noundef float @llvm.sqrt.f32(float %i.ed) ; 3 uses
  %i.ef = fmul nsz float %i.ee, 3.000000e+00      ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eh = load <2 x float>, ptr %i.eg, align 4, !tbaa !9
  %i.ei = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = fmul nsz <2 x float> %i.eh, %i.ej       ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.em = load float, ptr %i.el, align 4, !tbaa !14
  %i.en = fmul nsz float %i.em, %i.ef             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.eo = extractelement <2 x float> %i.ek, i64 0 ; 2 uses
  %i.ep = extractelement <2 x float> %i.ek, i64 1 ; 2 uses
  %i.eq = fsub nsz <2 x float> %i.bp, %i.ek
  %i.er = fsub nsz float %i.bq, %i.en
  store <2 x float> %i.eq, ptr %3, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.er, ptr %.sroa.29.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %4, align 8, !tbaa !9
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float 0.000000e+00, ptr %i.es, align 8, !tbaa !14
  %i.et = fneg nsz float %i.en
  %i.eu = tail call nsz float @llvm.fmuladd.f32(float %i.ep, float 0.000000e+00, float %i.et) ; 2 uses
  %i.ev = fmul nsz float %i.eo, -0.000000e+00
  %i.ew = tail call nsz float @llvm.fmuladd.f32(float %i.en, float 0.000000e+00, float %i.ev) ; 2 uses
  %i.ex = fmul nsz float %i.ep, 0.000000e+00
  %i.ey = fsub nsz float %i.eo, %i.ex             ; 2 uses
  %i.ez = fmul nsz float %i.ew, %i.ew
  %i.fa = tail call nsz float @llvm.fmuladd.f32(float %i.eu, float %i.eu, float %i.ez)
  %i.fb = tail call nsz noundef float @llvm.fmuladd.f32(float %i.ey, float %i.ey, float %i.fa)
  %i.fc = tail call nsz noundef float @llvm.fabs.f32(float %i.fb)
  %i.fd = fcmp nsz ugt float %i.fc, f0x358637BD
  br i1 %i.fd, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit176
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %4, align 8, !tbaa !9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4core8vector3dIfE9normalizeEv.exit176
  %i.fe = fadd nsz float %i.bl, %.sroa.15.0
  %i.ff = fadd nsz float %12, %i.fe
  %21 = fadd nsz <2 x float> %10, %i.be
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 400
  store float %i.dr, ptr %i.fg, align 4, !tbaa !9
  %.sroa.8255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 404
  store float %i.dt, ptr %.sroa.8255.0..sroa_idx, align 4, !tbaa !9
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 408
  store float %5, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !9
  %i.fh = fadd nsz <2 x float> %i.bo, %21
  %i.fi = fsub nsz <2 x float> %i.fh, %i.ek
  %i.fj = fsub nsz float %i.ff, %i.en
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 388
  store <2 x float> %i.fi, ptr %i.fk, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 396
  store float %i.fj, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !9
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 252
  store float %i.ef, ptr %i.fl, align 4, !tbaa !68
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 256
  store float %i.ee, ptr %i.fm, align 4, !tbaa !69
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.fo = call noundef nonnull align 4 dereferenceable(64) ptr @_ZN4core8CMatrix4IfE25buildCameraLookAtMatrixLHERKNS_8vector3dIfEES5_S5_(ptr noundef nonnull align 4 dereferenceable(64) %i.fn, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %4) ; 0 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.fq = fdiv nsz float 2.000000e+00, %i.ee      ; 2 uses
  store float %i.fq, ptr %i.fp, align 4, !tbaa !9
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fr, i8 0, i64 16, i1 false)
  store float %i.fq, ptr %i.fs, align 4, !tbaa !9
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ft, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.fu, align 4, !tbaa !9
  %i.fv = fneg nsz float %i.ef
  %i.fw = fdiv nsz float %i.fv, %i.ef
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 300
  %.sink14.i = fdiv nsz float 2.000000e+00, %i.ef
  %i.fy = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.sink14.i, i64 0
  store <4 x float> %i.fy, ptr %i.fx, align 4, !tbaa !9
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 316
  store float %i.fw, ptr %i.fz, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef signext i16 @_Z10adjustDistsf(i16 noundef signext, float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZN4core8CMatrix4IfE25buildCameraLookAtMatrixLHERKNS_8vector3dIfEES5_S5_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load <2 x float>, ptr %2, align 4, !tbaa !9
  %i.b = load <2 x float>, ptr %1, align 4, !tbaa !9
  %i.c = fsub nsz <2 x float> %i.a, %i.b          ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !14
  %i.h = fsub nsz float %i.e, %i.g                ; 4 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.c, %i.c
  %i.i = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.j = extractelement <2 x float> %i.c, i64 0   ; 2 uses
  %i.k = tail call nsz float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.i)
  %i.l = tail call nsz float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.k) ; 2 uses
  %i.m = fcmp nsz oeq float %i.l, 0.000000e+00
  br i1 %i.m, label %_ZN4core8vector3dIfE9normalizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = fpext nsz float %i.l to double
  %i.o = tail call nsz double @llvm.sqrt.f64(double %i.n)
  %i.p = fdiv nsz double 1.000000e+00, %i.o       ; 2 uses
  %i.q = fpext <2 x float> %i.c to <2 x double>
  %i.r = insertelement <2 x double> poison, double %i.p, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = fmul nsz <2 x double> %i.s, %i.q
  %i.u = fptrunc <2 x double> %i.t to <2 x float>
  %i.v = fpext nsz float %i.h to double
  %i.w = fmul nsz double %i.p, %i.v
  %i.x = fptrunc nsz double %i.w to float
  br label %_ZN4core8vector3dIfE9normalizeEv.exit

_ZN4core8vector3dIfE9normalizeEv.exit:            ; preds = %bb.a, %bb.b
  %.sroa.047.0 = phi nsz <2 x float> [ %i.c, %bb.a ], [ %i.u, %bb.b ] ; 3 uses
  %.sroa.15.0 = phi nsz float [ %i.h, %bb.a ], [ %i.x, %bb.b ] ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.047.4.vec.extract61 = extractelement <2 x float> %.sroa.047.0, i64 1 ; 6 uses
  %.sroa.047.0.vec.extract52 = extractelement <2 x float> %.sroa.047.0, i64 0 ; 5 uses
  %i.z = load float, ptr %3, align 4, !tbaa !11   ; 2 uses
  %i.aa = load <2 x float>, ptr %i.y, align 4, !tbaa !9 ; 3 uses
  %i.ab = fneg nsz float %.sroa.15.0
  %i.ac = fneg nsz float %.sroa.047.4.vec.extract61
  %i.ad = fmul nsz float %i.z, %i.ab
  %i.ae = extractelement <2 x float> %i.aa, i64 1
  %i.af = fmul nsz float %i.ae, %i.ac
  %i.ag = shufflevector <2 x float> %.sroa.047.0, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ah = insertelement <2 x float> %i.ag, float %.sroa.15.0, i64 0
  %i.ai = insertelement <2 x float> poison, float %i.af, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.ad, i64 1
  %i.ak = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.ah, <2 x float> %i.aj) ; 5 uses
  %i.al = fneg nsz float %.sroa.047.0.vec.extract52
  %i.am = extractelement <2 x float> %i.aa, i64 0
  %i.an = fmul nsz float %i.am, %i.al
  %i.ao = tail call nsz float @llvm.fmuladd.f32(float %i.z, float %.sroa.047.4.vec.extract61, float %i.an) ; 4 uses
  %foldExtExtBinop72 = fmul nsz <2 x float> %i.ak, %i.ak
  %i.ap = extractelement <2 x float> %foldExtExtBinop72, i64 1
  %i.aq = extractelement <2 x float> %i.ak, i64 0 ; 2 uses
  %i.ar = tail call nsz float @llvm.fmuladd.f32(float %i.aq, float %i.aq, float %i.ap)
  %i.as = tail call nsz float @llvm.fmuladd.f32(float %i.ao, float %i.ao, float %i.ar) ; 2 uses
  %i.at = fcmp nsz oeq float %i.as, 0.000000e+00
  br i1 %i.at, label %_ZN4core8vector3dIfE9normalizeEv.exit19, label %bb.c

bb.c:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit
  %i.au = fpext nsz float %i.as to double
  %i.av = tail call nsz double @llvm.sqrt.f64(double %i.au)
  %i.aw = fdiv nsz double 1.000000e+00, %i.av     ; 2 uses
  %i.ax = fpext <2 x float> %i.ak to <2 x double>
  %i.ay = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = fmul nsz <2 x double> %i.az, %i.ax
  %i.bb = fptrunc <2 x double> %i.ba to <2 x float>
  %i.bc = fpext nsz float %i.ao to double
  %i.bd = fmul nsz double %i.aw, %i.bc
  %i.be = fptrunc nsz double %i.bd to float
  br label %_ZN4core8vector3dIfE9normalizeEv.exit19

_ZN4core8vector3dIfE9normalizeEv.exit19:          ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit, %bb.c
  %.sroa.13.0 = phi nsz float [ %i.ao, %_ZN4core8vector3dIfE9normalizeEv.exit ], [ %i.be, %bb.c ] ; 4 uses
  %.sroa.029.0 = phi nsz <2 x float> [ %i.ak, %_ZN4core8vector3dIfE9normalizeEv.exit ], [ %i.bb, %bb.c ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %.sroa.029.4.vec.extract41 = extractelement <2 x float> %.sroa.029.0, i64 1 ; 4 uses
  %i.bg = fneg nsz float %.sroa.029.4.vec.extract41
  %i.bh = fmul nsz float %.sroa.15.0, %i.bg
  %i.bi = tail call nsz float @llvm.fmuladd.f32(float %.sroa.047.4.vec.extract61, float %.sroa.13.0, float %i.bh) ; 2 uses
  %.sroa.029.0.vec.extract34 = extractelement <2 x float> %.sroa.029.0, i64 0 ; 4 uses
  %i.bj = fneg nsz float %.sroa.13.0
  %i.bk = fmul nsz float %.sroa.047.0.vec.extract52, %i.bj
  %i.bl = tail call nsz float @llvm.fmuladd.f32(float %.sroa.15.0, float %.sroa.029.0.vec.extract34, float %i.bk) ; 2 uses
  %i.bm = fneg nsz float %.sroa.029.0.vec.extract34
  %i.bn = fmul nsz float %.sroa.047.4.vec.extract61, %i.bm
  %i.bo = tail call nsz float @llvm.fmuladd.f32(float %.sroa.047.0.vec.extract52, float %.sroa.029.4.vec.extract41, float %i.bn) ; 2 uses
  store float %.sroa.029.0.vec.extract34, ptr %0, align 4, !tbaa !9
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.bi, ptr %i.bp, align 4, !tbaa !9
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.047.0.vec.extract52, ptr %i.bq, align 4, !tbaa !9
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float 0.000000e+00, ptr %i.br, align 4, !tbaa !9
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %.sroa.029.4.vec.extract41, ptr %i.bs, align 4, !tbaa !9
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.bl, ptr %i.bt, align 4, !tbaa !9
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %.sroa.047.4.vec.extract61, ptr %i.bu, align 4, !tbaa !9
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 0.000000e+00, ptr %i.bv, align 4, !tbaa !9
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %.sroa.13.0, ptr %i.bw, align 4, !tbaa !9
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.bo, ptr %i.bx, align 4, !tbaa !9
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %.sroa.15.0, ptr %i.by, align 4, !tbaa !9
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float 0.000000e+00, ptr %i.bz, align 4, !tbaa !9
  %i.ca = load float, ptr %1, align 4, !tbaa !11
  %i.cb = load float, ptr %i.bf, align 4, !tbaa !13
  %i.cc = fmul nsz float %.sroa.029.4.vec.extract41, %i.cb
  %i.cd = tail call nsz float @llvm.fmuladd.f32(float %.sroa.029.0.vec.extract34, float %i.ca, float %i.cc)
  %i.ce = load float, ptr %i.f, align 4, !tbaa !14
  %i.cf = tail call nsz noundef float @llvm.fmuladd.f32(float %.sroa.13.0, float %i.ce, float %i.cd)
  %i.cg = fneg nsz float %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.cg, ptr %i.ch, align 4, !tbaa !9
  %i.ci = load float, ptr %1, align 4, !tbaa !11
  %i.cj = load float, ptr %i.bf, align 4, !tbaa !13
  %i.ck = fmul nsz float %i.bl, %i.cj
  %i.cl = tail call nsz float @llvm.fmuladd.f32(float %i.bi, float %i.ci, float %i.ck)
  %i.cm = load float, ptr %i.f, align 4, !tbaa !14
  %i.cn = tail call nsz noundef float @llvm.fmuladd.f32(float %i.bo, float %i.cm, float %i.cl)
  %i.co = fneg nsz float %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.co, ptr %i.cp, align 4, !tbaa !9
  %i.cq = load float, ptr %1, align 4, !tbaa !11
  %i.cr = load float, ptr %i.bf, align 4, !tbaa !13
  %i.cs = fmul nsz float %.sroa.047.4.vec.extract61, %i.cr
  %i.ct = tail call nsz float @llvm.fmuladd.f32(float %.sroa.047.0.vec.extract52, float %i.cq, float %i.cs)
  %i.cu = load float, ptr %i.f, align 4, !tbaa !14
  %i.cv = tail call nsz noundef float @llvm.fmuladd.f32(float %.sroa.15.0, float %i.cu, float %i.ct)
  %i.cw = fneg nsz float %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.cw, ptr %i.cx, align 4, !tbaa !9
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %i.cy, align 4, !tbaa !9
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN16DirectionalLightC2EjRKN4core8vector3dIfEEN5video7SColorfEf(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(413) initializes((0, 1), (4, 413)) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2, <2 x float> %3, <2 x float> %4, float noundef %5) unnamed_addr #5 align 2 {
end_hunk_0
