inline.NumInlined: 3958
inline.NumDeleted: 1464
begin_hunk_0_@_ZN6Assimp3IFC8QuadrifyERKSt6vectorINS0_22ProjectedWindowContourESaIS2_EERNS0_8TempMeshE:bb.a
; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC16ProjectOntoPlaneERSt6vectorI10aiVector2tIdESaIS3_EERKNS0_8TempMeshERbR10aiVector3tIdE(ptr dead_on_unwind noalias writable writeonly sret(%class.aiMatrix4x4t) align 8 captures(none) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 1 dereferenceable(1) initializes((0, 1)) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.aiMatrix3x3t, align 16       ; 10 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp3IFC16ProjectOntoPlaneERSt6vectorI10aiVector2tIdESaIS3_EERKNS0_8TempMeshERbR10aiVector3tIdE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN6Assimp3IFC26DerivePlaneCoordinateSpaceERKNS0_8TempMeshERbR10aiVector3tIdE(ptr dead_on_unwind nonnull writable sret(%class.aiMatrix3x3t) align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %6 = load double, ptr %i.l, align 16            ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 40
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %9 = load <2 x double>, ptr %5, align 16        ; 4 uses
  %10 = load double, ptr %i.k, align 8
  %11 = load <2 x double>, ptr %i.m, align 8      ; 3 uses
  %12 = load <4 x double>, ptr %i.n, align 8      ; 5 uses
  %13 = load double, ptr %8, align 16             ; 3 uses
  %i.o = load double, ptr %7, align 16            ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.p = load i8, ptr %3, align 1, !range !143, !noundef !144
  %i.q = trunc nuw i8 %i.p to i1
end_hunk_1
begin_hunk_2_@_ZN6Assimp3IFC16ProjectOntoPlaneERSt6vectorI10aiVector2tIdESaIS3_EERKNS0_8TempMeshERbR10aiVector3tIdE:bb.a
  br i1 %.not142, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit
  %i.az = extractelement <4 x double> %12, i64 2
  %14 = shufflevector <2 x double> %9, <2 x double> %11, <2 x i32> <i32 1, i32 3>
  %15 = shufflevector <2 x double> %9, <2 x double> %11, <2 x i32> <i32 0, i32 2>
  %16 = shufflevector <4 x double> %12, <4 x double> poison, <2 x i32> <i32 poison, i32 0>
  %17 = insertelement <2 x double> %16, double %6, i64 0
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit
end_hunk_2
begin_hunk_3_@_ZN6Assimp3IFC16ProjectOntoPlaneERSt6vectorI10aiVector2tIdESaIS3_EERKNS0_8TempMeshERbR10aiVector3tIdE:bb.a
  %i.cm = load double, ptr %i.cl, align 8, !noalias !225 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.097.0143, i64 16
  %i.co = load double, ptr %i.cn, align 8, !noalias !225 ; 2 uses
  %i.cp = fmul double %i.az, %i.cm
  %i.cq = call double @llvm.fmuladd.f64(double %i.o, double %i.ck, double %i.cp)
  %i.cr = call double @llvm.fmuladd.f64(double %13, double %i.co, double %i.cq)
  %i.cs = fadd double %i.cr, 0.000000e+00
  %i.ct = fadd double %.0150, %i.cs               ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6Assimp3IFC16ProjectOntoPlaneERSt6vectorI10aiVector2tIdESaIS3_EERKNS0_8TempMeshERbR10aiVector3tIdE:bb.a
  %i.cz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %i.cy, <2 x double> %i.cw)
  %i.da = insertelement <2 x double> poison, double %i.co, i64 0
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> %i.db, <2 x double> %i.cz) ; 3 uses
  %i.dd = fadd <2 x double> %i.dc, zeroinitializer ; 4 uses
  %i.de = fcmp olt <2 x double> %i.cj, %i.dc
  %i.df = select <2 x i1> %i.de, <2 x double> %i.cj, <2 x double> %i.dd ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN6Assimp3IFC16ProjectOntoPlaneERSt6vectorI10aiVector2tIdESaIS3_EERKNS0_8TempMeshERbR10aiVector3tIdE:bb.a
  %i.ek = extractelement <2 x double> %i.ee, i64 1
  %i.el = fmul double %i.ek, 0.000000e+00
  %i.em = fmul <2 x double> %i.ee, %i.ef          ; 2 uses
  %18 = shufflevector <4 x double> %12, <4 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %19 = shufflevector <2 x double> %11, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %20 = shufflevector <4 x double> %19, <4 x double> %18, <6 x i32> <i32 0, i32 1, i32 6, i32 0, i32 1, i32 6>
  %21 = shufflevector <2 x double> %i.ee, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 1> ; 2 uses
  %22 = shufflevector <4 x double> %21, <4 x double> <double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double poison>, <6 x i32> <i32 4, i32 5, i32 6, i32 1, i32 1, i32 1>
  %i.en = fmul <6 x double> %20, %22              ; 4 uses
  %23 = shufflevector <2 x double> %9, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %24 = insertelement <4 x double> poison, double %6, i64 2
  %i.eo = insertelement <2 x double> poison, double %i.ej, i64 0
  %i.ep = insertelement <2 x double> %i.eo, double %i.el, i64 1
  %i.eq = fadd <2 x double> %i.ep, zeroinitializer
  %i.er = fadd <2 x double> %i.em, %i.eq
  %i.es = shufflevector <2 x double> %i.em, <2 x double> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 poison, i32 poison>
  %25 = shufflevector <4 x double> %12, <4 x double> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 poison, i32 poison>
  %26 = shufflevector <4 x double> %23, <4 x double> %24, <8 x i32> <i32 0, i32 1, i32 6, i32 0, i32 1, i32 6, i32 poison, i32 poison>
  %27 = shufflevector <4 x double> %21, <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <8 x i32> <i32 0, i32 0, i32 0, i32 5, i32 6, i32 7, i32 poison, i32 poison>
  %i.et = shufflevector <6 x double> %i.en, <6 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.eu = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %26, <8 x double> %27, <8 x double> %i.et)
  %i.ev = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %25, <8 x double> <double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double undef, double undef>, <8 x double> %i.eu)
  %i.ew = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.es, <8 x double> <double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double undef, double undef>, <8 x double> %i.ev)
  %i.ex = shufflevector <2 x double> %i.er, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ey = extractelement <6 x double> %i.en, i64 0
  %i.ez = extractelement <2 x double> %9, i64 0
  %i.fa = call double @llvm.fmuladd.f64(double %i.ez, double 0.000000e+00, double %i.ey) ; 2 uses
  %i.fb = fadd double %i.fa, %i.o
  %i.fc = call double @llvm.fmuladd.f64(double %i.eh, double 0.000000e+00, double %i.fb)
  %i.fd = extractelement <6 x double> %i.en, i64 1
  %i.fe = call double @llvm.fmuladd.f64(double %10, double 0.000000e+00, double %i.fd) ; 2 uses
  %28 = extractelement <4 x double> %12, i64 2    ; 2 uses
  %29 = fadd double %i.fe, %28
  %30 = call double @llvm.fmuladd.f64(double %i.eh, double 0.000000e+00, double %29)
  %i.ff = extractelement <6 x double> %i.en, i64 2
  %i.fg = call double @llvm.fmuladd.f64(double %6, double 0.000000e+00, double %i.ff) ; 2 uses
  %i.fh = fadd double %i.fg, %13
  %i.fi = call double @llvm.fmuladd.f64(double %i.eh, double 0.000000e+00, double %i.fh)
  %i.fj = call double @llvm.fmuladd.f64(double %i.o, double 0.000000e+00, double %i.fa)
  %i.fk = call double @llvm.fmuladd.f64(double %28, double 0.000000e+00, double %i.fe)
  %i.fl = fadd double %i.fk, 0.000000e+00
  %i.fm = call double @llvm.fmuladd.f64(double %13, double 0.000000e+00, double %i.fg)
  %i.fn = fadd double %i.fm, 0.000000e+00
  %i.fo = shufflevector <8 x double> %i.ew, <8 x double> %i.ex, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 3, i32 4, i32 5, i32 9>
  store <8 x double> %i.fo, ptr %0, align 8
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.fc, ptr %.sroa.35.0..sroa_idx, align 8
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %30, ptr %.sroa.39.0..sroa_idx, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.fi, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
end_hunk_5
begin_hunk_6_@_ZN12aiMatrix4x4tIdE7InverseEv:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load <14 x double>, ptr %i.g, align 8    ; 29 uses
  %i.m = load double, ptr %i.e, align 8           ; 6 uses
  %i.n = load double, ptr %i.h, align 8           ; 10 uses
  %i.o = load double, ptr %i.b, align 8           ; 5 uses
end_hunk_6
begin_hunk_7_@_ZN12aiMatrix4x4tIdE7InverseEv:bb.a
  %i.ct = fmul <4 x double> %i.cs, %i.cq
  %i.cu = fneg double %i.d                        ; 2 uses
  %i.cv = fneg double %i.ae                       ; 2 uses
  %i.cw = fneg double %i.cr                       ; 2 uses
  %i.cx = fneg double %i.n                        ; 4 uses
  %i.cy = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 8, i32 4, i32 4, i32 7>
  %i.cz = insertelement <4 x double> poison, double %i.cu, i64 0
  %i.da = insertelement <4 x double> %i.cz, double %i.at, i64 1
  %1 = shufflevector <4 x double> %i.da, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.db = fmul <4 x double> %i.cy, %1
  %i.dc = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 12, i32 6, i32 8, i32 10>
  %i.dd = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 2, i32 poison, i32 6, i32 11> ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN12aiMatrix4x4tIdE7InverseEv:bb.a
  %i.dh = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 poison, i32 5, i32 10, i32 9> ; 2 uses
  %i.di = insertelement <4 x double> poison, double %i.d, i64 0
  %i.dj = insertelement <4 x double> %i.dh, double %i.d, i64 0
  %2 = shufflevector <4 x double> %i.dh, <4 x double> %i.di, <4 x i32> <i32 3, i32 4, i32 1, i32 4>
  %i.dk = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dj, <4 x double> %2, <4 x double> %i.ct) ; 3 uses
  %i.dl = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 9, i32 5, i32 5, i32 9>
  %i.dm = insertelement <4 x double> poison, double %i.cv, i64 0
  %i.dn = insertelement <4 x double> %i.dm, double %i.ah, i64 2
  %i.do = insertelement <4 x double> %i.dn, double %i.cx, i64 3
  %i.dp = shufflevector <4 x double> %i.do, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.dq = fmul <4 x double> %i.dl, %i.dp
  %3 = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 8, i32 4, i32 9, i32 7>
  %i.dr = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 13, i32 13, i32 4, i32 13>
  %i.ds = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %3, <4 x double> %i.dr, <4 x double> %i.dq) ; 5 uses
  %i.dt = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.du = fmul <4 x double> %i.dt, %i.dg
  %i.dv = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
end_hunk_8
begin_hunk_9_@_ZN12aiMatrix4x4tIdE7InverseEv:bb.a
  %i.fa = shufflevector <4 x double> %i.ds, <4 x double> %i.ez, <4 x i32> <i32 3, i32 4, i32 poison, i32 poison>
  %i.fb = shufflevector <2 x double> %i.ey, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fc = shufflevector <4 x double> %i.fa, <4 x double> %i.fb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fd = insertelement <4 x double> poison, double %i.cr, i64 0
  %i.fe = insertelement <4 x double> %i.fd, double %i.cw, i64 1 ; 2 uses
  %i.ff = shufflevector <4 x double> %i.fe, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.fg = fmul double %i.ak, %i.ah
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.t, double %i.w, double %i.fg)
end_hunk_9
begin_hunk_10_@_ZN12aiMatrix4x4tIdE7InverseEv:bb.a
  %i.hu = insertelement <4 x double> %i.ht, double %i.q, i64 3
  %i.hv = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hu, <4 x double> %i.gq, <4 x double> %i.go)
  %i.hw = fmul <4 x double> %i.hv, %i.eb
  %4 = shufflevector <4 x double> %i.fe, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.hx = fmul <4 x double> %i.hs, %4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
end_hunk_10
