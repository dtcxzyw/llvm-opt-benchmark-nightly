Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CSceneCollisionManager?download=true
inline.NumInlined: 59
inline.NumDeleted: 23
begin_hunk_0_@_ZN5scene22CSceneCollisionManager27getRayFromScreenCoordinatesERKN4core8vector2dIiEEPKNS_16ICameraSceneNodeE:bb.a
  %i.bn = call noundef float @llvm.fmuladd.f32(float %i.bl, float %i.bm, float %i.bj) ; 2 uses
  %i.bo = fcmp une float %i.bn, 0.000000e+00
  br i1 %i.bo, label %bb.g, label %_ZNK5scene12SViewFrustum13getFarRightUpEv.exit

bb.g:                                             ; preds = %bb.f
  %i.bp = load float, ptr %i.ay, align 8, !tbaa !24 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.br = load float, ptr %i.bq, align 4, !tbaa !27
  %i.bs = load <2 x float>, ptr %6, align 8, !tbaa !22 ; 3 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 1
  %i.bu = fmul float %i.be, %i.bt
  %i.bv = extractelement <2 x float> %i.bs, i64 0
  %i.bw = call float @llvm.fmuladd.f32(float %i.bc, float %i.bv, float %i.bu)
  %i.bx = call noundef float @llvm.fmuladd.f32(float %i.bl, float %i.bp, float %i.bw)
  %i.by = fadd float %i.br, %i.bx
  %i.bz = fneg float %i.by
  %i.ca = fdiv float %i.bz, %i.bn                 ; 2 uses
  %i.cb = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fmul <2 x float> %i.bf, %i.cc
  %i.ce = fmul float %i.bm, %i.ca
  %i.cf = fadd <2 x float> %i.bs, %i.cd
  %i.cg = fadd float %i.bp, %i.ce
  br label %_ZNK5scene12SViewFrustum13getFarRightUpEv.exit

_ZNK5scene12SViewFrustum13getFarRightUpEv.exit:   ; preds = %_ZNK5scene12SViewFrustum12getFarLeftUpEv.exit, %bb.f, %bb.g
  %.sroa.4.0.i73 = phi float [ %i.cg, %bb.g ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %_ZNK5scene12SViewFrustum12getFarLeftUpEv.exit ]
  %.sroa.0.0.i74 = phi <2 x float> [ %i.cf, %bb.g ], [ zeroinitializer, %bb.f ], [ zeroinitializer, %_ZNK5scene12SViewFrustum12getFarLeftUpEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.ch = fsub <2 x float> %.sroa.0.0.i74, %.sroa.0.0.i ; 2 uses
  %i.ci = fsub float %.sroa.4.0.i73, %.sroa.4.0.i ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.m, i64 76
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !22
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.ck, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !22
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.cl, align 8, !tbaa !24
  %i.cm = call noundef zeroext i1 @_ZNK4core7plane3dIfE24getIntersectionWithPlaneERKS1_RNS_8vector3dIfEES6_(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(16) %i.cj, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %5)
  br i1 %i.cm, label %bb.h, label %_ZNK5scene12SViewFrustum14getFarLeftDownEv.exit

bb.h:                                             ; preds = %_ZNK5scene12SViewFrustum13getFarRightUpEv.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.m, i64 44
  %i.co = load float, ptr %i.cn, align 4, !tbaa !25 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !33 ; 2 uses
  %i.cr = load <2 x float>, ptr %5, align 8, !tbaa !22 ; 3 uses
  %i.cs = extractelement <2 x float> %i.cr, i64 1
  %i.ct = fmul float %i.cq, %i.cs
  %i.cu = extractelement <2 x float> %i.cr, i64 0
  %i.cv = call float @llvm.fmuladd.f32(float %i.co, float %i.cu, float %i.ct)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !24 ; 2 uses
  %i.cy = load float, ptr %i.cl, align 8, !tbaa !24 ; 2 uses
  %i.cz = call noundef float @llvm.fmuladd.f32(float %i.cx, float %i.cy, float %i.cv) ; 2 uses
  %i.da = fcmp une float %i.cz, 0.000000e+00
  br i1 %i.da, label %bb.i, label %_ZNK5scene12SViewFrustum14getFarLeftDownEv.exit

bb.i:                                             ; preds = %bb.h
  %i.db = load float, ptr %i.ck, align 8, !tbaa !24 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !27
  %i.de = load <2 x float>, ptr %4, align 8, !tbaa !22 ; 3 uses
  %i.df = extractelement <2 x float> %i.de, i64 1
  %i.dg = fmul float %i.cq, %i.df
  %i.dh = extractelement <2 x float> %i.de, i64 0
  %i.di = call float @llvm.fmuladd.f32(float %i.co, float %i.dh, float %i.dg)
  %i.dj = call noundef float @llvm.fmuladd.f32(float %i.cx, float %i.db, float %i.di)
  %i.dk = fadd float %i.dd, %i.dj
  %i.dl = fneg float %i.dk
  %i.dm = fdiv float %i.dl, %i.cz                 ; 2 uses
  %i.dn = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = fmul <2 x float> %i.cr, %i.do
  %i.dq = fmul float %i.cy, %i.dm
  %i.dr = fadd <2 x float> %i.de, %i.dp
  %i.ds = fadd float %i.db, %i.dq
  br label %_ZNK5scene12SViewFrustum14getFarLeftDownEv.exit

_ZNK5scene12SViewFrustum14getFarLeftDownEv.exit:  ; preds = %_ZNK5scene12SViewFrustum13getFarRightUpEv.exit, %bb.h, %bb.i
  %.sroa.4.0.i81 = phi float [ %i.ds, %bb.i ], [ 0.000000e+00, %bb.h ], [ 0.000000e+00, %_ZNK5scene12SViewFrustum13getFarRightUpEv.exit ]
  %.sroa.0.0.i82 = phi <2 x float> [ %i.dr, %bb.i ], [ zeroinitializer, %bb.h ], [ zeroinitializer, %_ZNK5scene12SViewFrustum13getFarRightUpEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.dt = fsub <2 x float> %.sroa.0.0.i82, %.sroa.0.0.i ; 2 uses
  %i.du = fsub float %.sroa.4.0.i81, %.sroa.4.0.i ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !17 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !10
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 352
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = call noundef nonnull align 4 dereferenceable(16) ptr %i.dz(ptr noundef nonnull align 8 dereferenceable(8) %i.dw) ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load <2 x i32>, ptr %i.eb, align 4, !tbaa !34
  %i.ed = load <2 x i32>, ptr %i.ea, align 4, !tbaa !34
  %i.ee = sub nsw <2 x i32> %i.ec, %i.ed
  %i.ef = load <2 x i32>, ptr %2, align 4, !tbaa !34
  %i.eg = sitofp <2 x i32> %i.ef to <2 x float>
  %i.eh = uitofp <2 x i32> %i.ee to <2 x float>
  %i.ei = fdiv <2 x float> %i.eg, %i.eh           ; 5 uses
  %i.ej = load ptr, ptr %.0165, align 8, !tbaa !10
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 456
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = call noundef zeroext i1 %i.el(ptr noundef nonnull align 8 dereferenceable(233) %.0165)
  br i1 %i.em, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK5scene12SViewFrustum14getFarLeftDownEv.exit
  %i.en = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.eo = load float, ptr %i.en, align 4, !tbaa !24
  %i.ep = fadd <2 x float> %i.ei, splat (float -5.000000e-01) ; 4 uses
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = fmul <2 x float> %i.ch, %i.eq
  %i.es = extractelement <2 x float> %i.ep, i64 0
  %i.et = fmul float %i.ci, %i.es
  %i.eu = load <2 x float>, ptr %i.m, align 4, !tbaa !22
  %i.ev = fadd <2 x float> %i.er, %i.eu
  %i.ew = fadd float %i.et, %i.eo
  %i.ex = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ey = fmul <2 x float> %i.dt, %i.ex
  %i.ez = extractelement <2 x float> %i.ep, i64 1
  %i.fa = fmul float %i.du, %i.ez
  %i.fb = fadd <2 x float> %i.ey, %i.ev
  %i.fc = fadd float %i.fa, %i.ew
  store <2 x float> %i.fb, ptr %0, align 4, !tbaa !22
  store float %i.fc, ptr %i.a, align 4, !tbaa !22
  br label %bb.l

bb.k:                                             ; preds = %_ZNK5scene12SViewFrustum14getFarLeftDownEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.m, i64 12, i1 false), !tbaa.struct !35
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.fd = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fe = fmul <2 x float> %i.ch, %i.fd
  %i.ff = extractelement <2 x float> %i.ei, i64 0
  %i.fg = fmul float %i.ci, %i.ff
  %i.fh = fadd float %.sroa.4.0.i, %i.fg
  %i.fi = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fj = fmul <2 x float> %i.dt, %i.fi
  %i.fk = extractelement <2 x float> %i.ei, i64 1
  %i.fl = fmul float %i.du, %i.fk
  %i.fm = fadd <2 x float> %.sroa.0.0.i, %i.fe
  %i.fn = fadd <2 x float> %i.fm, %i.fj
  %i.fo = fadd float %i.fh, %i.fl
  store <2 x float> %i.fn, ptr %i.b, align 4, !tbaa !22
  store float %i.fo, ptr %i.c, align 4, !tbaa !22
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %bb.a, %bb.l
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene22ISceneCollisionManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #13
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene22ISceneCollisionManagerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #13
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5scene22ISceneCollisionManagerD1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #13
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5scene22ISceneCollisionManagerD0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #13
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4core7plane3dIfE24getIntersectionWithPlaneERKS1_RNS_8vector3dIfEES6_(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %5 = load float, ptr %0, align 4, !tbaa !25     ; 5 uses
  %i.c = load <2 x float>, ptr %4, align 4, !tbaa !22 ; 5 uses
  %6 = load float, ptr %i.a, align 4, !tbaa !24   ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.c, %i.c
  %i.d = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.e = tail call float @llvm.fmuladd.f32(float %5, float %5, float %i.d)
  %i.f = tail call float @llvm.fmuladd.f32(float %6, float %6, float %i.e)
  %i.g = tail call noundef float @sqrtf(float noundef %i.f) #14 ; 2 uses
  %i.h = load float, ptr %1, align 4, !tbaa !25   ; 5 uses
  %i.i = load <2 x float>, ptr %i.b, align 4, !tbaa !22 ; 7 uses
  %foldExtExtBinop54 = fmul <2 x float> %i.c, %i.i
  %i.j = extractelement <2 x float> %foldExtExtBinop54, i64 0
  %i.k = tail call float @llvm.fmuladd.f32(float %5, float %i.h, float %i.j)
  %i.l = extractelement <2 x float> %i.i, i64 1   ; 3 uses
  %i.m = tail call noundef float @llvm.fmuladd.f32(float %6, float %i.l, float %i.k) ; 3 uses
  %foldExtExtBinop56 = fmul <2 x float> %i.i, %i.i
  %i.n = extractelement <2 x float> %foldExtExtBinop56, i64 0
  %i.o = tail call float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.n)
  %i.p = tail call float @llvm.fmuladd.f32(float %i.l, float %i.l, float %i.o)
  %i.q = tail call noundef float @sqrtf(float noundef %i.p) #14 ; 2 uses
  %i.r = fneg float %i.m
  %i.s = fmul float %i.m, %i.r
  %i.t = tail call float @llvm.fmuladd.f32(float %i.g, float %i.q, float %i.s)
  %i.u = fpext float %i.t to double               ; 2 uses
  %i.v = tail call double @llvm.fabs.f64(double %i.u)
  %i.w = fcmp uge double %i.v, 1.000000e-08       ; 2 uses
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = extractelement <2 x float> %i.i, i64 0
  %i.y = extractelement <2 x float> %i.c, i64 0
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = fdiv double 1.000000e+00, %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !27 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !27 ; 2 uses
  %7 = insertelement <2 x float> poison, float %i.ac, i64 0
  %8 = insertelement <2 x float> %7, float %i.ae, i64 1
  %9 = fneg <2 x float> %8
  %i.af = fneg <2 x float> %i.i
  %10 = insertelement <4 x float> poison, float %i.m, i64 0
  %11 = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %12 = shufflevector <4 x float> %10, <4 x float> %11, <4 x i32> <i32 0, i32 poison, i32 5, i32 poison>
  %13 = insertelement <4 x float> %12, float %5, i64 3
  %14 = shufflevector <4 x float> %13, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %15 = insertelement <4 x float> poison, float %i.ae, i64 0
  %16 = insertelement <4 x float> %15, float %i.ac, i64 1
  %17 = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %18 = shufflevector <4 x float> %16, <4 x float> %17, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %19 = fmul <4 x float> %14, %18
  %20 = insertelement <4 x float> %11, float %i.q, i64 0
  %21 = insertelement <4 x float> %20, float %i.g, i64 1
  %22 = shufflevector <2 x float> %9, <2 x float> %i.i, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %23 = insertelement <4 x float> %22, float %i.h, i64 3
  %24 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %21, <4 x float> %23, <4 x float> %19) ; 2 uses
  %25 = fneg float %i.h
  %26 = fmul float %i.y, %25
  %27 = tail call float @llvm.fmuladd.f32(float %5, float %i.x, float %26)
  %28 = shufflevector <4 x float> %24, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %28, ptr %3, align 4, !tbaa !22
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %27, ptr %.sroa.415.0..sroa_idx, align 4, !tbaa !22
  %29 = load <4 x float>, ptr %0, align 4
  %30 = shufflevector <4 x float> %29, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %31 = load float, ptr %i.z, align 4, !tbaa !24
  %32 = shufflevector <4 x float> %24, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ag = fpext <2 x float> %32 to <2 x double>
  %i.ah = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = fmul <2 x double> %i.ai, %i.ag
  %i.ak = load <2 x float>, ptr %0, align 4, !tbaa !22
  %i.al = fptrunc <2 x double> %i.aj to <2 x float> ; 3 uses
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %i.ak, %i.am
  %i.ao = load <2 x float>, ptr %1, align 4, !tbaa !22
  %i.ap = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aq = fmul <2 x float> %i.ao, %i.ap
  %i.ar = insertelement <2 x float> %30, float %31, i64 1
  %i.as = fmul <2 x float> %i.ar, %i.al
  %i.at = fadd <2 x float> %i.an, %i.aq
  %i.au = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.as)
  store <2 x float> %i.at, ptr %2, align 4, !tbaa !22
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.au, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.w
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{ptr @_ZN5scene22CSceneCollisionManagerD1Ev, ptr @_ZN5scene22CSceneCollisionManagerD2Ev, null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"_ZTSN5scene22ISceneCollisionManagerE"}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTSN5scene13ISceneManagerE", !12, i64 0}
!14 = !{!"p1 _ZTSN5video12IVideoDriverE", !12, i64 0}
!15 = !{!"_ZTSN5scene22CSceneCollisionManagerE", !11, i64 0, !13, i64 8, !14, i64 16}
!16 = !{!15, !13, i64 8}
!17 = !{!15, !14, i64 16}
!18 = !{!"_ZTS17IReferenceCounted", !6, i64 8}
!19 = !{!18, !6, i64 8}
!20 = !{ptr @_ZN5scene22CSceneCollisionManagerD1Ev}
!21 = !{!"float", !5, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"_ZTSN4core8vector3dIfEE", !21, i64 0, !21, i64 4, !21, i64 8}
!24 = !{!23, !21, i64 8}
!25 = !{!23, !21, i64 0}
!26 = !{!"_ZTSN4core7plane3dIfEE", !23, i64 0, !21, i64 12}
!27 = !{!26, !21, i64 12}
!28 = distinct !{null}
!29 = distinct !{ptr @_ZN5scene22CSceneCollisionManagerD2Ev, null}
!30 = distinct !{ptr @_ZN5scene22CSceneCollisionManagerD0Ev, ptr @_ZN5scene22CSceneCollisionManagerD1Ev, ptr @_ZN5scene22CSceneCollisionManagerD2Ev, null}
!31 = !{ptr @_ZN5scene22CSceneCollisionManagerD0Ev, ptr @_ZN5scene22CSceneCollisionManagerD1Ev}
!32 = !{ptr @_ZN5scene22CSceneCollisionManagerD0Ev}
!33 = !{!23, !21, i64 4}
!34 = !{!6, !6, i64 0}
!35 = !{i64 0, i64 4, !22, i64 4, i64 4, !22, i64 8, i64 4, !22}
end_hunk_0
