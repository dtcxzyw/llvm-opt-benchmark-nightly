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
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.a, align 8, !tbaa !10 ; 5 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !10 ; 4 uses
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
  %i.s = load float, ptr %i.r, align 4, !tbaa !12
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
  %.sroa.0285.0.copyload = load <2 x float>, ptr %i.r, align 4, !tbaa !10
  br label %bb.e

bb.d:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit
  store <2 x float> %i.q, ptr %i.r, align 4, !tbaa !10
  store float %.sroa.8284.0, ptr %i.z, align 4, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0285.0 = phi nsz <2 x float> [ %i.q, %bb.d ], [ %.sroa.0285.0.copyload, %bb.c ] ; 6 uses
  %.sroa.19.0 = phi nsz float [ %.sroa.8284.0, %bb.d ], [ %i.aa, %bb.c ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.af = load <2 x float>, ptr %i.ae, align 4, !tbaa !10
  %i.ag = load float, ptr %i.ad, align 8, !tbaa !74
  %i.ah = fmul nsz <2 x float> %i.af, splat (float 5.000000e-01)
  %i.ai = tail call nsz <2 x float> @llvm.tan.v2f32(<2 x float> %i.ah) ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !62 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.am = load float, ptr %i.al, align 4, !tbaa !63
  %i.an = fptosi float %i.am to i16
  %i.ao = tail call noundef signext i16 @_Z10adjustDistsf(i16 noundef signext %i.an, float noundef %i.ag)
  %i.ap = sitofp nsz i16 %i.ao to float           ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.01.0.copyload.i119 = load <2 x float>, ptr %i.aq, align 4, !tbaa !10 ; 4 uses
  %.sroa.22.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %1, i64 68
  %.sroa.22.0.copyload.i121 = load float, ptr %.sroa.22.0..sroa_idx.i120, align 4, !tbaa !10 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %.sroa.0260.0.vec.extract262 = extractelement <2 x float> %.sroa.01.0.copyload.i119, i64 0
  %i.as = load float, ptr %i.ar, align 4, !tbaa !12
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
  %.sroa.0260.0.copyload = load <2 x float>, ptr %i.ar, align 4, !tbaa !10
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store <2 x float> %.sroa.01.0.copyload.i119, ptr %i.ar, align 4, !tbaa !10
  store float %.sroa.22.0.copyload.i121, ptr %i.ax, align 4, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.15.0 = phi nsz float [ %.sroa.22.0.copyload.i121, %bb.g ], [ %i.ay, %bb.f ] ; 2 uses
  %i.be = phi <2 x float> [ %.sroa.01.0.copyload.i119, %bb.g ], [ %.sroa.0260.0.copyload, %bb.f ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 84
  %.sroa.0.0.copyload.i = load i48, ptr %i.bf, align 4, !tbaa !75 ; 2 uses
  %i.bg = ashr i48 %.sroa.0.0.copyload.i, 32
  %i.bh = trunc nsw i48 %i.bg to i32
  %i.bi = sitofp nsz i32 %i.bh to float
  %i.bj = fneg nsz float %i.bi
  %i.bk = tail call nsz float @llvm.fmuladd.f32(float %i.bj, float 1.000000e+01, float %.sroa.15.0)
  %.sroa.0285.0.vec.extract287 = extractelement <2 x float> %.sroa.0285.0, i64 0
  %.sroa.0285.4.vec.extract300 = extractelement <2 x float> %.sroa.0285.0, i64 1
  %i.bl = fmul nsz float %.sroa.19.0, %i.ak       ; 2 uses
  %i.bm = bitcast i48 %.sroa.0.0.copyload.i to <3 x i16>
  %i.bn = shufflevector <3 x i16> %i.bm, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.bo = sitofp <2 x i16> %i.bn to <2 x float>
  %i.bp = fneg nsz <2 x float> %i.bo
  %i.bq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> splat (float 1.000000e+01), <2 x float> %i.be)
  %i.br = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = fmul nsz <2 x float> %.sroa.0285.0, %i.bs ; 2 uses
  %i.bu = fadd nsz <2 x float> %i.bt, %i.bq       ; 4 uses
  %i.bv = fadd nsz float %i.bl, %i.bk             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.bw = fmul nsz float %.sroa.19.0, 3.500000e-01
  %i.bx = fsub nsz float %i.ap, %i.ak             ; 2 uses
  %i.by = fmul nsz <2 x float> %.sroa.0285.0, splat (float 3.500000e-01)
  %i.bz = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fmul nsz <2 x float> %i.by, %i.ca       ; 2 uses
  %i.cc = fmul nsz float %i.bw, %i.bx             ; 2 uses
  %i.cd = fadd nsz <2 x float> %i.cb, %i.bu       ; 4 uses
  %i.ce = fadd nsz float %i.cc, %i.bv             ; 3 uses
  store <2 x float> %i.cd, ptr %2, align 8
  %.sroa.269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.ce, ptr %.sroa.269.0..sroa_idx, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !64 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !66
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 360
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.cj(ptr noundef nonnull align 8 dereferenceable(233) %i.cg) ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cm = load <2 x float>, ptr %i.cl, align 4, !tbaa !10 ; 3 uses
  %i.cn = load <2 x float>, ptr %i.ck, align 4, !tbaa !10 ; 4 uses
  %i.co = fneg nsz <2 x float> %i.cm
  %i.cp = shufflevector <2 x float> %.sroa.0285.0, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cq = insertelement <2 x float> %i.cp, float %.sroa.19.0, i64 0
  %i.cr = fmul nsz <2 x float> %i.cq, %i.co
  %i.cs = insertelement <2 x float> %i.cp, float %.sroa.19.0, i64 1
  %i.ct = shufflevector <2 x float> %i.cm, <2 x float> %i.cn, <2 x i32> <i32 1, i32 2>
  %i.cu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.ct, <2 x float> %i.cr)
  %i.cv = extractelement <2 x float> %i.cn, i64 0
  %i.cw = fneg nsz float %i.cv
  %i.cx = fmul nsz float %.sroa.0285.4.vec.extract300, %i.cw
  %i.cy = extractelement <2 x float> %i.cn, i64 1
  %i.cz = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = fmul nsz <2 x float> %i.cz, %i.cu
  %i.db = fadd nsz <2 x float> %.sroa.0285.0, %i.da
  %i.dc = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dd = fmul nsz <2 x float> %i.dc, %i.cn
  %i.de = tail call nsz float @llvm.fmuladd.f32(float %.sroa.0285.0.vec.extract287, float %i.cy, float %i.cx)
  %i.df = insertelement <2 x float> %i.cm, float %i.de, i64 0
  %i.dg = fmul nsz <2 x float> %i.ai, %i.df       ; 2 uses
  %i.dh = extractelement <2 x float> %i.dg, i64 0
  %i.di = fadd nsz float %.sroa.19.0, %i.dh
  %i.dj = fadd nsz <2 x float> %i.dd, %i.db       ; 5 uses
  %i.dk = extractelement <2 x float> %i.dg, i64 1
  %i.dl = fadd nsz float %i.dk, %i.di             ; 4 uses
  %foldExtExtBinop325 = fmul nsz <2 x float> %i.dj, %i.dj
  %i.dm = extractelement <2 x float> %foldExtExtBinop325, i64 1
  %i.dn = extractelement <2 x float> %i.dj, i64 0 ; 2 uses
  %i.do = tail call nsz float @llvm.fmuladd.f32(float %i.dn, float %i.dn, float %i.dm)
  %i.dp = tail call nsz float @llvm.fmuladd.f32(float %i.dl, float %i.dl, float %i.do) ; 2 uses
  %i.dq = fcmp nsz oeq float %i.dp, 0.000000e+00
  br i1 %i.dq, label %_ZN4core8vector3dIfE9normalizeEv.exit176, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dr = fpext nsz float %i.dp to double
  %i.ds = tail call nsz double @llvm.sqrt.f64(double %i.dr)
  %i.dt = fdiv nsz double 1.000000e+00, %i.ds     ; 2 uses
  %i.du = fpext <2 x float> %i.dj to <2 x double>
  %i.dv = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.dw = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = fmul nsz <2 x double> %i.dw, %i.du
  %i.dy = fptrunc <2 x double> %i.dx to <2 x float>
  %i.dz = fpext nsz float %i.dl to double
  %i.ea = fmul nsz double %i.dt, %i.dz
  %i.eb = fptrunc nsz double %i.ea to float
  br label %_ZN4core8vector3dIfE9normalizeEv.exit176

_ZN4core8vector3dIfE9normalizeEv.exit176:         ; preds = %bb.h, %bb.i
  %.sroa.8.0 = phi nsz float [ %i.dl, %bb.h ], [ %i.eb, %bb.i ]
  %.sroa.0231.0 = phi nsz <2 x float> [ %i.dj, %bb.h ], [ %i.dy, %bb.i ] ; 2 uses
  %.sroa.0234.0.vec.extract = extractelement <2 x float> %.sroa.0231.0, i64 0
  %i.ec = fmul nsz float %.sroa.0234.0.vec.extract, %i.ap
  %.sroa.0234.4.vec.extract = extractelement <2 x float> %.sroa.0231.0, i64 1
  %i.ed = fmul nsz float %.sroa.0234.4.vec.extract, %i.ap
  %i.ee = fmul nsz float %.sroa.8.0, %i.ap
  %i.ef = extractelement <2 x float> %i.bu, i64 0
  %i.eg = fadd nsz float %i.ef, %i.ec
  %i.eh = extractelement <2 x float> %i.bu, i64 1
  %i.ei = fadd nsz float %i.eh, %i.ed
  %i.ej = fadd nsz float %i.bv, %i.ee
  %i.ek = extractelement <2 x float> %i.cd, i64 0
  %i.el = fsub nsz float %i.eg, %i.ek             ; 2 uses
  %i.em = extractelement <2 x float> %i.cd, i64 1
  %i.en = fsub nsz float %i.ei, %i.em             ; 2 uses
  %i.eo = fsub nsz float %i.ej, %i.ce             ; 2 uses
  %i.ep = fmul nsz float %i.en, %i.en
  %i.eq = tail call nsz float @llvm.fmuladd.f32(float %i.el, float %i.el, float %i.ep)
  %i.er = tail call nsz float @llvm.fmuladd.f32(float %i.eo, float %i.eo, float %i.eq)
  %i.es = tail call nsz noundef float @llvm.sqrt.f32(float %i.er) ; 3 uses
  %i.et = fmul nsz float %i.es, 3.000000e+00      ; 6 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ev = load <2 x float>, ptr %i.eu, align 4, !tbaa !10
  %i.ew = insertelement <2 x float> poison, float %i.et, i64 0
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ey = fmul nsz <2 x float> %i.ev, %i.ex       ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !14
  %i.fb = fmul nsz float %i.fa, %i.et             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.fc = extractelement <2 x float> %i.ey, i64 0 ; 2 uses
  %i.fd = extractelement <2 x float> %i.ey, i64 1 ; 2 uses
  %i.fe = fsub nsz <2 x float> %i.cd, %i.ey
  %i.ff = fsub nsz float %i.ce, %i.fb
  store <2 x float> %i.fe, ptr %3, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.ff, ptr %.sroa.29.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %4, align 8, !tbaa !10
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float 0.000000e+00, ptr %i.fg, align 8, !tbaa !14
  %i.fh = fneg nsz float %i.fb
  %i.fi = tail call nsz float @llvm.fmuladd.f32(float %i.fd, float 0.000000e+00, float %i.fh) ; 2 uses
  %i.fj = fmul nsz float %i.fc, -0.000000e+00
  %i.fk = tail call nsz float @llvm.fmuladd.f32(float %i.fb, float 0.000000e+00, float %i.fj) ; 2 uses
  %i.fl = fmul nsz float %i.fd, 0.000000e+00
  %i.fm = fsub nsz float %i.fc, %i.fl             ; 2 uses
  %i.fn = fmul nsz float %i.fk, %i.fk
  %i.fo = tail call nsz float @llvm.fmuladd.f32(float %i.fi, float %i.fi, float %i.fn)
  %i.fp = tail call nsz noundef float @llvm.fmuladd.f32(float %i.fm, float %i.fm, float %i.fo)
  %i.fq = tail call nsz noundef float @llvm.fabs.f32(float %i.fp)
  %i.fr = fcmp nsz ugt float %i.fq, f0x358637BD
  br i1 %i.fr, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit176
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %4, align 8, !tbaa !10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4core8vector3dIfE9normalizeEv.exit176
  %i.fs = fadd nsz float %i.bl, %.sroa.15.0
  %i.ft = fadd nsz float %i.cc, %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 400
  store <2 x float> %i.bu, ptr %i.fu, align 4, !tbaa !10
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 408
  store float %i.bv, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !10
  %i.fv = fadd nsz <2 x float> %i.bt, %i.be
  %i.fw = fadd nsz <2 x float> %i.cb, %i.fv
  %i.fx = fsub nsz <2 x float> %i.fw, %i.ey
  %i.fy = fsub nsz float %i.ft, %i.fb
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 388
  store <2 x float> %i.fx, ptr %i.fz, align 4, !tbaa !10
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 396
  store float %i.fy, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !10
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 252
  store float %i.et, ptr %i.ga, align 4, !tbaa !67
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 256
  store float %i.es, ptr %i.gb, align 4, !tbaa !68
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.gd = call noundef nonnull align 4 dereferenceable(64) ptr @_ZN4core8CMatrix4IfE25buildCameraLookAtMatrixLHERKNS_8vector3dIfEES5_S5_(ptr noundef nonnull align 4 dereferenceable(64) %i.gc, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %4) ; 0 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.gf = fdiv nsz float 2.000000e+00, %i.es      ; 2 uses
  store float %i.gf, ptr %i.ge, align 4, !tbaa !10
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gg, i8 0, i64 16, i1 false)
  store float %i.gf, ptr %i.gh, align 4, !tbaa !10
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gi, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.gj, align 4, !tbaa !10
  %i.gk = fneg nsz float %i.et
  %i.gl = fdiv nsz float %i.gk, %i.et
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 300
  %.sink14.i = fdiv nsz float 2.000000e+00, %i.et
  %i.gn = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.sink14.i, i64 0
  store <4 x float> %i.gn, ptr %i.gm, align 4, !tbaa !10
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 316
  store float %i.gl, ptr %i.go, align 4, !tbaa !10
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
  %i.a = load <2 x float>, ptr %2, align 4, !tbaa !10
  %i.b = load <2 x float>, ptr %1, align 4, !tbaa !10
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
  %i.z = load float, ptr %3, align 4, !tbaa !12   ; 2 uses
  %i.aa = load <2 x float>, ptr %i.y, align 4, !tbaa !10 ; 3 uses
  %i.ab = fneg nsz float %.sroa.047.4.vec.extract61
  %i.ac = extractelement <2 x float> %i.aa, i64 1
  %i.ad = fmul nsz float %i.ac, %i.ab
  %i.ae = fneg nsz float %.sroa.15.0
  %i.af = fmul nsz float %i.z, %i.ae
  %i.ag = shufflevector <2 x float> %.sroa.047.0, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ah = insertelement <2 x float> %i.ag, float %.sroa.15.0, i64 0
  %i.ai = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.af, i64 1
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
  store float %.sroa.029.0.vec.extract34, ptr %0, align 4, !tbaa !10
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.bi, ptr %i.bp, align 4, !tbaa !10
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.047.0.vec.extract52, ptr %i.bq, align 4, !tbaa !10
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float 0.000000e+00, ptr %i.br, align 4, !tbaa !10
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %.sroa.029.4.vec.extract41, ptr %i.bs, align 4, !tbaa !10
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.bl, ptr %i.bt, align 4, !tbaa !10
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %.sroa.047.4.vec.extract61, ptr %i.bu, align 4, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 0.000000e+00, ptr %i.bv, align 4, !tbaa !10
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %.sroa.13.0, ptr %i.bw, align 4, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.bo, ptr %i.bx, align 4, !tbaa !10
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %.sroa.15.0, ptr %i.by, align 4, !tbaa !10
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float 0.000000e+00, ptr %i.bz, align 4, !tbaa !10
  %i.ca = load float, ptr %1, align 4, !tbaa !12
  %i.cb = load float, ptr %i.bf, align 4, !tbaa !13
  %i.cc = fmul nsz float %.sroa.029.4.vec.extract41, %i.cb
  %i.cd = tail call nsz float @llvm.fmuladd.f32(float %.sroa.029.0.vec.extract34, float %i.ca, float %i.cc)
  %i.ce = load float, ptr %i.f, align 4, !tbaa !14
  %i.cf = tail call nsz noundef float @llvm.fmuladd.f32(float %.sroa.13.0, float %i.ce, float %i.cd)
  %i.cg = fneg nsz float %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.cg, ptr %i.ch, align 4, !tbaa !10
  %i.ci = load float, ptr %1, align 4, !tbaa !12
  %i.cj = load float, ptr %i.bf, align 4, !tbaa !13
  %i.ck = fmul nsz float %i.bl, %i.cj
  %i.cl = tail call nsz float @llvm.fmuladd.f32(float %i.bi, float %i.ci, float %i.ck)
  %i.cm = load float, ptr %i.f, align 4, !tbaa !14
  %i.cn = tail call nsz noundef float @llvm.fmuladd.f32(float %i.bo, float %i.cm, float %i.cl)
  %i.co = fneg nsz float %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.co, ptr %i.cp, align 4, !tbaa !10
  %i.cq = load float, ptr %1, align 4, !tbaa !12
  %i.cr = load float, ptr %i.bf, align 4, !tbaa !13
  %i.cs = fmul nsz float %.sroa.047.4.vec.extract61, %i.cr
  %i.ct = tail call nsz float @llvm.fmuladd.f32(float %.sroa.047.0.vec.extract52, float %i.cq, float %i.cs)
  %i.cu = load float, ptr %i.f, align 4, !tbaa !14
  %i.cv = tail call nsz noundef float @llvm.fmuladd.f32(float %.sroa.15.0, float %i.cu, float %i.ct)
  %i.cw = fneg nsz float %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.cw, ptr %i.cx, align 4, !tbaa !10
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %i.cy, align 4, !tbaa !10
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN16DirectionalLightC2EjRKN4core8vector3dIfEEN5video7SColorfEf(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(413) initializes((0, 1), (4, 413)) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2, <2 x float> %3, <2 x float> %4, float noundef %5) unnamed_addr #5 align 2 {
bb.a:
  store i8 1, ptr %0, align 4, !tbaa !69
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <2 x float> %3, ptr %i.a, align 4, !tbaa !10
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %4, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %5, ptr %i.b, align 4, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %1, ptr %i.c, align 4, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !77
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.e, i8 0, i64 28, i1 false)
  store float 1.000000e+00, ptr %i.f, align 4, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.g, i8 0, i64 20, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 132
  store float 1.000000e+00, ptr %i.k, align 4, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  store float 1.000000e+00, ptr %i.l, align 4, !tbaa !10
  store float 1.000000e+00, ptr %i.h, align 4, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.m, i8 0, i64 56, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216
  store float 1.000000e+00, ptr %i.n, align 4, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 196
  store float 1.000000e+00, ptr %i.o, align 4, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176
  store float 1.000000e+00, ptr %i.p, align 4, !tbaa !10
  store <2 x float> splat (float 1.000000e+00), ptr %i.j, align 4, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.s, i8 0, i64 56, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.q, i8 0, i64 40, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 300
  store float 1.000000e+00, ptr %i.u, align 4, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 280
  store float 1.000000e+00, ptr %i.v, align 4, !tbaa !10
  store float 1.000000e+00, ptr %i.r, align 4, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.w, i8 0, i64 56, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 384
  store float 1.000000e+00, ptr %i.x, align 4, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 364
  store float 1.000000e+00, ptr %i.y, align 4, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 344
  store float 1.000000e+00, ptr %i.z, align 4, !tbaa !10
  store <2 x float> splat (float 1.000000e+00), ptr %i.t, align 4, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 388
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(25) %i.aa, i8 0, i64 25, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16DirectionalLight18updateCameraOffsetEPK6Camera(ptr noundef nonnull align 4 dereferenceable(413) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load float, ptr %i.a, align 4, !tbaa !63
  %i.c = fcmp nsz oeq float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN16DirectionalLight19createSplitMatricesEPK6Camera(ptr noundef nonnull align 4 dereferenceable(413) %0, ptr noundef %1)
  store i8 1, ptr %0, align 4, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 412
  store i8 1, ptr %i.d, align 4, !tbaa !71
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16DirectionalLight13updateFrustumEPK6CameraP6Client(ptr noundef nonnull align 4 dereferenceable(413) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !71, !range !72, !noundef !73
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 368
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call nsz noundef float %i.h(ptr noundef nonnull align 8 dereferenceable(233) %i.e)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.k = load float, ptr %i.j, align 4, !tbaa !70
  %i.l = fmul nsz float %i.k, 1.000000e+01        ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 4 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(656) ptr @_ZN17ClientEnvironment12getClientMapEv(ptr noundef nonnull align 8 dereferenceable(440) %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 408
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !130, !nonnull !73, !align !131
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i8, ptr %i.q, align 4, !tbaa !133, !range !72, !noundef !73
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = tail call noundef nonnull align 8 dereferenceable(656) ptr @_ZN17ClientEnvironment12getClientMapEv(ptr noundef nonnull align 8 dereferenceable(440) %i.m)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 408
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !130, !nonnull !73, !align !131
  %i.w = load float, ptr %i.v, align 4, !tbaa !134
  %i.x = fmul nsz float %i.w, 1.000000e+01
  %i.y = fcmp nsz olt float %i.l, %i.x
  br i1 %i.y, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = tail call noundef nonnull align 8 dereferenceable(656) ptr @_ZN17ClientEnvironment12getClientMapEv(ptr noundef nonnull align 8 dereferenceable(440) %i.m)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 408
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !130, !nonnull !73, !align !131
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !134
  %i.ad = fmul nsz float %i.ac, 1.000000e+01
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi nsz float [ %i.l, %bb.b ], [ %i.ad, %bb.d ], [ %i.l, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 244
  store float %i.i, ptr %i.ae, align 4, !tbaa !62
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 248
  store float %.0, ptr %i.af, align 4, !tbaa !63
  tail call void @_ZN16DirectionalLight19createSplitMatricesEPK6Camera(ptr noundef nonnull align 4 dereferenceable(413) %0, ptr noundef nonnull %1)
  %i.ag = tail call noundef nonnull align 8 dereferenceable(656) ptr @_ZN17ClientEnvironment12getClientMapEv(ptr noundef nonnull align 8 dereferenceable(440) %i.m)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 220
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.ah, align 4, !tbaa !10
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 228
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.copyload.i24 = load <2 x float>, ptr %i.ai, align 4, !tbaa !10
  %.sroa.22.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.22.0.copyload.i26 = load float, ptr %.sroa.22.0..sroa_idx.i25, align 4, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !68
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.am = load float, ptr %i.al, align 4, !tbaa !67
  tail call void @_ZN9ClientMap20updateDrawListShadowEN4core8vector3dIfEES2_ff(ptr noundef nonnull align 8 dereferenceable(656) %i.ag, <2 x float> %.sroa.01.0.copyload.i, float %.sroa.22.0.copyload.i, <2 x float> %.sroa.01.0.copyload.i24, float %.sroa.22.0.copyload.i26, float noundef %i.ak, float noundef %i.am)
  store i8 1, ptr %0, align 4, !tbaa !69
  store i8 1, ptr %i.a, align 4, !tbaa !71
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

declare noundef nonnull align 8 dereferenceable(656) ptr @_ZN17ClientEnvironment12getClientMapEv(ptr noundef nonnull align 8 dereferenceable(440)) local_unnamed_addr #2

declare void @_ZN9ClientMap20updateDrawListShadowEN4core8vector3dIfEES2_ff(ptr noundef nonnull align 8 dereferenceable(656), <2 x float>, float, <2 x float>, float, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, float } @_ZNK16DirectionalLight11getPositionEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(413) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 220
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.a, align 4, !tbaa !10
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 228
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !10
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.01.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.22.0.copyload, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN16DirectionalLight13commitFrustumEv(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(413) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !71, !range !72, !noundef !73
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(168) %i.e, ptr noundef nonnull align 4 dereferenceable(168) %i.d, i64 168, i1 false), !tbaa.struct !136
  store i8 0, ptr %i.a, align 4, !tbaa !71
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN16DirectionalLight12setDirectionEN4core8vector3dIfEE(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(413) initializes((40, 52)) %0, <2 x float> %1, float %2) local_unnamed_addr #9 align 2 {
bb.a:
  %.sroa.0.0.vec.extract = extractelement <2 x float> %1, i64 0 ; 2 uses
  %i.a = fneg nsz <2 x float> %1                  ; 2 uses
  %i.b = fneg nsz float %2                        ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store <2 x float> %i.a, ptr %i.c, align 4, !tbaa !10
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store float %i.b, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !10
  %foldExtExtBinop = fmul nsz <2 x float> %1, %1
  %i.d = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.e = tail call nsz float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract, float %.sroa.0.0.vec.extract, float %i.d)
  %i.f = tail call nsz float @llvm.fmuladd.f32(float %2, float %2, float %i.e) ; 2 uses
  %i.g = fcmp nsz oeq float %i.f, 0.000000e+00
  br i1 %i.g, label %_ZN4core8vector3dIfE9normalizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = fpext nsz float %i.f to double
  %i.i = tail call nsz double @llvm.sqrt.f64(double %i.h)
  %i.j = fdiv nsz double 1.000000e+00, %i.i       ; 2 uses
  %i.k = fpext <2 x float> %i.a to <2 x double>
  %i.l = insertelement <2 x double> poison, double %i.j, i64 0
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = fmul nsz <2 x double> %i.m, %i.k
  %i.o = fptrunc <2 x double> %i.n to <2 x float>
  store <2 x float> %i.o, ptr %i.c, align 4, !tbaa !10
  %i.p = fpext nsz float %i.b to double
  %i.q = fmul nsz double %i.j, %i.p
  %i.r = fptrunc nsz double %i.q to float
  store float %i.r, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !14
  br label %_ZN4core8vector3dIfE9normalizeEv.exit

_ZN4core8vector3dIfE9normalizeEv.exit:            ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, float } @_ZNK16DirectionalLight12getPlayerPosEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(413) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.a, align 4, !tbaa !10
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !10
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.01.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.22.0.copyload, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, float } @_ZNK16DirectionalLight18getFuturePlayerPosEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(413) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.a, align 4, !tbaa !10
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 408
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !10
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.01.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.22.0.copyload, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZNK16DirectionalLight13getViewMatrixEv(ptr nofree noundef nonnull readnone align 4 captures(ret: address, provenance) dereferenceable(413) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 156
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZNK16DirectionalLight19getProjectionMatrixEv(ptr nofree noundef nonnull readnone align 4 captures(ret: address, provenance) dereferenceable(413) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZNK16DirectionalLight19getFutureViewMatrixEv(ptr nofree noundef nonnull readnone align 4 captures(ret: address, provenance) dereferenceable(413) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 324
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZNK16DirectionalLight25getFutureProjectionMatrixEv(ptr nofree noundef nonnull readnone align 4 captures(ret: address, provenance) dereferenceable(413) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 260
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16DirectionalLight17getViewProjMatrixEv(ptr dead_on_unwind noalias writable sret(%"class.core::CMatrix4") align 4 %0, ptr noundef nonnull align 4 dereferenceable(413) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 156
  tail call void @_ZNK4core8CMatrix4IfEmlERKS1_(ptr dead_on_unwind writable sret(%"class.core::CMatrix4") align 4 %0, ptr noundef nonnull align 4 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(64) %i.b)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4core8CMatrix4IfEmlERKS1_(ptr dead_on_unwind noalias writable sret(%"class.core::CMatrix4") align 4 %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %2) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load <4 x float>, ptr %2, align 4, !tbaa !10 ; 4 uses
  %i.e = load <4 x float>, ptr %1, align 4, !tbaa !10 ; 4 uses
  %i.f = load <4 x float>, ptr %i.a, align 4, !tbaa !10 ; 4 uses
  %i.g = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.h = fmul nsz <4 x float> %i.g, %i.f
  %i.i = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> zeroinitializer
  %i.j = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.e, <4 x float> %i.i, <4 x float> %i.h)
  %i.k = load <4 x float>, ptr %i.b, align 4, !tbaa !10 ; 4 uses
  %i.l = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.m = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.k, <4 x float> %i.l, <4 x float> %i.j)
  %i.n = load <4 x float>, ptr %i.c, align 4, !tbaa !10 ; 4 uses
  %i.o = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.p = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.n, <4 x float> %i.o, <4 x float> %i.m)
  store <4 x float> %i.p, ptr %0, align 4, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load <4 x float>, ptr %i.q, align 4, !tbaa !10 ; 4 uses
  %i.t = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.u = fmul nsz <4 x float> %i.f, %i.t
  %i.v = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> zeroinitializer
  %i.w = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.e, <4 x float> %i.v, <4 x float> %i.u)
  %i.x = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.y = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.k, <4 x float> %i.x, <4 x float> %i.w)
  %i.z = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.aa = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.n, <4 x float> %i.z, <4 x float> %i.y)
  store <4 x float> %i.aa, ptr %i.r, align 4, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load <4 x float>, ptr %i.ab, align 4, !tbaa !10 ; 4 uses
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.af = fmul nsz <4 x float> %i.f, %i.ae
  %i.ag = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ah = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.e, <4 x float> %i.ag, <4 x float> %i.af)
  %i.ai = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aj = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.k, <4 x float> %i.ai, <4 x float> %i.ah)
  %i.ak = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.al = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.n, <4 x float> %i.ak, <4 x float> %i.aj)
  store <4 x float> %i.al, ptr %i.ac, align 4, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load <4 x float>, ptr %i.am, align 4, !tbaa !10 ; 4 uses
  %i.ap = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aq = fmul nsz <4 x float> %i.f, %i.ap
  %i.ar = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> zeroinitializer
  %i.as = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.e, <4 x float> %i.ar, <4 x float> %i.aq)
  %i.at = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.au = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.k, <4 x float> %i.at, <4 x float> %i.as)
  %i.av = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.aw = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.n, <4 x float> %i.av, <4 x float> %i.au)
  store <4 x float> %i.aw, ptr %i.an, align 4, !tbaa !10
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @__cxx_global_var_init() #12 section ".text.startup" comdat($_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, align 8
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS0_EED2Ev, ptr nonnull @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, ptr nonnull @__dso_handle) #17 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !139    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit

_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit: ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #17, !inline_history !137
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.tan.v2f32(<2 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
