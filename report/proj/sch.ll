Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/sch?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0_@_Z32pj_projection_specific_setup_schP8PJconsts:bb.a
  br i1 %.not.i97.i, label %_ZL17pj_sch_destructorP8PJconstsi.exit101.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 136
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !40 ; 3 uses
  %.not17.i98.i = icmp eq ptr %i.ct, null
  br i1 %.not17.i98.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 152
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !38
  %i.cw = tail call noundef ptr %i.cv(ptr noundef nonnull %i.ct, i32 noundef 4096), !inline_history !54 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 144
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !41 ; 3 uses
  %.not18.i99.i = icmp eq ptr %i.cy, null
  br i1 %.not18.i99.i, label %_ZL17pj_sch_destructorP8PJconstsi.exit101.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 152
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !38
  %i.db = tail call noundef ptr %i.da(ptr noundef nonnull %i.cy, i32 noundef 4096), !inline_history !54 ; 0 uses
  br label %_ZL17pj_sch_destructorP8PJconstsi.exit101.i

_ZL17pj_sch_destructorP8PJconstsi.exit101.i:      ; preds = %bb.v, %bb.u, %bb.r
  %i.dc = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 4096)
  br label %_ZL12pj_sch_setupP8PJconsts.exit

bb.w:                                             ; preds = %bb.q
  %i.dd = load double, ptr %i.cm, align 8, !tbaa !43
  %i.de = tail call noundef i32 @_Z24pj_calc_ellipsoid_paramsP8PJconstsdd(ptr noundef nonnull %i.co, double noundef %i.dd, double noundef 0.000000e+00) ; 0 uses
  %i.df = fmul double %i.bg, %i.bk
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store double %i.df, ptr %i.dg, align 8, !tbaa !44
  %i.dh = insertelement <2 x double> poison, double %i.cb, i64 0 ; 2 uses
  %i.di = insertelement <2 x double> %i.dh, double %i.cc, i64 1
  %i.dj = fneg <2 x double> %i.di                 ; 3 uses
  %i.dk = fmul double %i.bh, %i.bk
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.dm = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = fmul <2 x double> %i.dn, %i.dj
  %i.dp = shufflevector <2 x double> %i.dj, <2 x double> %i.dh, <2 x i32> <i32 1, i32 2>
  %i.dq = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> %i.dr, <2 x double> %i.do)
  store <2 x double> %i.ds, ptr %i.dl, align 8, !tbaa !44
  %i.dt = fmul double %i.bg, %i.bl
  %i.du = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  store double %i.dt, ptr %i.du, align 8, !tbaa !44
  %i.dv = fmul double %i.bh, %i.bl
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.dx = fneg double %i.bk
  %i.dy = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ea = fmul <2 x double> %i.dz, %i.dj
  %i.eb = insertelement <2 x double> poison, double %i.bk, i64 0 ; 2 uses
  %i.ec = insertelement <2 x double> %i.eb, double %i.dx, i64 1
  %i.ed = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.ee = insertelement <2 x double> %i.ed, double %i.cb, i64 1
  %i.ef = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ec, <2 x double> %i.ee, <2 x double> %i.ea)
  store <2 x double> %i.ef, ptr %i.dw, align 8, !tbaa !44
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  store double %i.bh, ptr %i.eg, align 8, !tbaa !44
  %i.eh = fmul double %i.bg, %i.cb
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  store double %i.eh, ptr %i.ei, align 8, !tbaa !44
  %i.ej = fmul double %i.bg, %i.cc
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  store double %i.ej, ptr %i.ek, align 8, !tbaa !44
  %i.el = load double, ptr %i.cd, align 8, !tbaa !61
  %i.em = load <2 x double>, ptr %i.ao, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.en = load ptr, ptr %i.ar, align 8, !tbaa !40 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 120
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !45
  %i.eq = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.eq, ptr %2, align 16, !tbaa !44
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.el, ptr %.sroa.5.0..sroa_idx.i, align 16, !tbaa !44
  call void %i.ep(ptr dead_on_unwind nonnull writable sret(%struct.PJ_XYZ) align 8 %1, ptr noundef nonnull byval(%struct.PJ_LPZ) align 8 %2, ptr noundef %i.en), !inline_history !55
  %i.er = load double, ptr %i.cm, align 8, !tbaa !43 ; 2 uses
  %i.es = fneg double %i.bg
  %i.et = fmul double %i.er, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.ev = load <2 x double>, ptr %1, align 16, !tbaa !44
  %i.ew = insertelement <2 x double> poison, double %i.et, i64 0
  %i.ex = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ey = insertelement <2 x double> %i.eb, double %i.bl, i64 1
  %i.ez = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ex, <2 x double> %i.ey, <2 x double> %i.ev)
  store <2 x double> %i.ez, ptr %i.eu, align 8, !tbaa !44
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fb = load double, ptr %i.fa, align 16, !tbaa !47
  %i.fc = fneg double %i.er
  %i.fd = call double @llvm.fmuladd.f64(double %i.fc, double %i.bh, double %i.fb)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  store double %i.fd, ptr %i.fe, align 8, !tbaa !44
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @_ZL13sch_forward3d6PJ_LPZP8PJconsts, ptr %i.ff, align 8, !tbaa !45
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr @_ZL13sch_inverse3d6PJ_XYZP8PJconsts, ptr %i.fg, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  br label %_ZL12pj_sch_setupP8PJconsts.exit

_ZL12pj_sch_setupP8PJconsts.exit:                 ; preds = %_ZL17pj_sch_destructorP8PJconstsi.exit.i, %_ZL17pj_sch_destructorP8PJconstsi.exit101.i, %bb.w
  %.1.i = phi ptr [ %i.be, %_ZL17pj_sch_destructorP8PJconstsi.exit.i ], [ %i.dc, %_ZL17pj_sch_destructorP8PJconstsi.exit101.i ], [ %0, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.x

bb.x:                                             ; preds = %_ZL12pj_sch_setupP8PJconsts.exit, %bb.i, %bb.g, %bb.e, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %.1.i, %_ZL12pj_sch_setupP8PJconsts.exit ], [ %i.ak, %bb.i ], [ %i.ab, %bb.g ], [ %i.s, %bb.e ]
  ret ptr %.0
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZL17pj_sch_destructorP8PJconstsi(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40   ; 3 uses
  %.not17 = icmp eq ptr %i.e, null
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull %i.e, i32 noundef %1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41   ; 3 uses
  %.not18 = icmp eq ptr %i.j, null
  br i1 %.not18, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull %i.j, i32 noundef %1) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b
  %i.n = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.0 = phi ptr [ %i.n, %bb.g ], [ null, %bb.a ]
  ret ptr %.0
}

declare i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @proj_create(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z24pj_inherit_ellipsoid_defPK8PJconstsPS_(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

declare noundef i32 @_Z24pj_calc_ellipsoid_paramsP8PJconstsdd(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal void @_ZL13sch_forward3d6PJ_LPZP8PJconsts(ptr dead_on_unwind noalias writable sret(%struct.PJ_XYZ) align 8 %0, ptr nofree noundef byval(%struct.PJ_LPZ) align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45
  tail call void %i.f(ptr dead_on_unwind writable sret(%struct.PJ_XYZ) align 8 %0, ptr noundef nonnull byval(%struct.PJ_LPZ) align 8 %1, ptr noundef %i.d)
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %5 = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.j = load double, ptr %i.i, align 8, !tbaa !44
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %7 = load double, ptr %6, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %8 = load double, ptr %i.k, align 8, !tbaa !44
  %9 = load <3 x double>, ptr %3, align 8, !tbaa !44
  %10 = load <3 x double>, ptr %0, align 8, !tbaa !44
  %11 = fsub <3 x double> %10, %9                 ; 6 uses
  %i.l = load <2 x double>, ptr %i.g, align 8, !tbaa !44
  %i.m = load <2 x double>, ptr %i.h, align 8, !tbaa !44
  %i.n = shufflevector <3 x double> %11, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.o = fmul <2 x double> %i.n, %i.m
  %i.p = shufflevector <3 x double> %11, <3 x double> poison, <2 x i32> zeroinitializer
  %i.q = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.l, <2 x double> %i.p, <2 x double> %i.o)
  %i.r = load <2 x double>, ptr %5, align 8, !tbaa !44
  %12 = shufflevector <3 x double> %11, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %12, <2 x double> %i.q)
  %i.t = extractelement <3 x double> %11, i64 1
  %i.u = fmul double %i.t, %7
  %i.v = extractelement <3 x double> %11, i64 0
  %i.w = tail call double @llvm.fmuladd.f64(double %i.j, double %i.v, double %i.u)
  %13 = extractelement <3 x double> %11, i64 2
  %i.x = tail call double @llvm.fmuladd.f64(double %8, double %13, double %i.w)
  store <2 x double> %i.s, ptr %0, align 8, !tbaa !44
  store double %i.x, ptr %4, align 8, !tbaa !44
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !41   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 128
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !48
  call void %i.ab(ptr dead_on_unwind nonnull writable sret(%struct.PJ_LPZ) align 8 %1, ptr noundef nonnull byval(%struct.PJ_XYZ) align 8 %0, ptr noundef %i.z)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.af = load double, ptr %i.ae, align 8, !tbaa !42
  %i.ag = fdiv double %i.ad, %i.af
  %i.ah = load <2 x double>, ptr %1, align 8, !tbaa !44
  %i.ai = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = fmul <2 x double> %i.ah, %i.aj
  store <2 x double> %i.ak, ptr %0, align 8, !tbaa !44
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load double, ptr %i.al, align 8, !tbaa !64
  store double %i.am, ptr %4, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL13sch_inverse3d6PJ_XYZP8PJconsts(ptr dead_on_unwind noalias writable sret(%struct.PJ_LPZ) align 8 %0, ptr nofree noundef byval(%struct.PJ_XYZ) align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.PJ_LPZ, align 16            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.d = load double, ptr %i.c, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.f = load double, ptr %i.e, align 8, !tbaa !43
  %i.g = fdiv double %i.d, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !45
  %i.o = load <2 x double>, ptr %1, align 8, !tbaa !44
  %i.p = insertelement <2 x double> poison, double %i.g, i64 0
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = fmul <2 x double> %i.o, %i.q
  store <2 x double> %i.r, ptr %3, align 16, !tbaa !44
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.j, ptr %.sroa.53.0..sroa_idx, align 16, !tbaa !44
  call void %i.n(ptr dead_on_unwind nonnull writable sret(%struct.PJ_XYZ) align 8 %1, ptr noundef nonnull byval(%struct.PJ_LPZ) align 8 %3, ptr noundef %i.l)
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.u = load double, ptr %i.t, align 8, !tbaa !44
  %i.v = load double, ptr %i.i, align 8, !tbaa !47 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.x = load double, ptr %1, align 8, !tbaa !65  ; 2 uses
  %i.y = load <2 x double>, ptr %i.s, align 8, !tbaa !44 ; 2 uses
  %i.z = load double, ptr %i.h, align 8, !tbaa !66 ; 2 uses
  %i.aa = load <2 x double>, ptr %i.w, align 8, !tbaa !44 ; 2 uses
  %i.ab = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = shufflevector <2 x double> %i.y, <2 x double> %i.aa, <2 x i32> <i32 1, i32 3>
  %i.ae = fmul <2 x double> %i.ac, %i.ad
  %i.af = shufflevector <2 x double> %i.y, <2 x double> %i.aa, <2 x i32> <i32 0, i32 2>
  %i.ag = insertelement <2 x double> poison, double %i.x, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> %i.ah, <2 x double> %i.ae)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !44
  %i.al = insertelement <2 x double> poison, double %i.u, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.ak, i64 1
  %i.an = insertelement <2 x double> poison, double %i.v, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.ao, <2 x double> %i.ai) ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !44
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.at = load double, ptr %i.as, align 8, !tbaa !44
  %i.au = fmul double %i.z, %i.at
  %i.av = call double @llvm.fmuladd.f64(double %i.ar, double %i.x, double %i.au)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !44
  %i.ay = call double @llvm.fmuladd.f64(double %i.ax, double %i.v, double %i.av)
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ba = load double, ptr %i.az, align 8, !tbaa !44
  %i.bb = extractelement <2 x double> %i.ap, i64 0
  %i.bc = fadd double %i.bb, %i.ba
  store double %i.bc, ptr %1, align 8, !tbaa !65
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.be = load double, ptr %i.bd, align 8, !tbaa !44
  %i.bf = extractelement <2 x double> %i.ap, i64 1
  %i.bg = fadd double %i.bf, %i.be
  store double %i.bg, ptr %i.h, align 8, !tbaa !66
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !44
  %i.bj = fadd double %i.ay, %i.bi
  store double %i.bj, ptr %i.i, align 8, !tbaa !47
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !40 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !48
  call void %i.bn(ptr dead_on_unwind writable sret(%struct.PJ_LPZ) align 8 %0, ptr noundef nonnull byval(%struct.PJ_XYZ) align 8 %1, ptr noundef %i.bl)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind allocsize(0,1) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS6pj_ctx", !8, i64 0}
!10 = !{!"p1 omnipotent char", !8, i64 0}
!11 = !{!"p1 _ZTS8ARG_list", !8, i64 0}
!12 = !{!"p1 _ZTS8PJconsts", !8, i64 0}
!13 = !{!"p1 _ZTS13geod_geodesic", !8, i64 0}
!14 = !{!"double", !4, i64 0}
!15 = !{!"_ZTS11pj_io_units", !4, i64 0}
!16 = !{!"p1 _ZTSN5osgeo4proj4util10BaseObjectE", !8, i64 0}
!17 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 0}
!18 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!19 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0, !18, i64 8}
!20 = !{!"_ZTSSt10shared_ptrIN5osgeo4proj4util10BaseObjectEE", !19, i64 0}
!21 = !{!"bool", !4, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!23 = !{!"long", !4, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !23, i64 8, !4, i64 16}
!25 = !{!"p1 _ZTSN5osgeo4proj9operation15GridDescriptionE", !8, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !28, i64 0}
!30 = !{!"_ZTS7PJ_TYPE", !4, i64 0}
!31 = !{!"p1 _ZTS16PJCoordOperation", !8, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE12_Vector_implE", !32, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseI16PJCoordOperationSaIS0_EE", !33, i64 0}
!35 = !{!"_ZTSSt6vectorI16PJCoordOperationSaIS0_EE", !34, i64 0}
!36 = !{!"_ZTS8PJconsts", !9, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !10, i64 32, !12, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !13, i64 80, !8, i64 88, !5, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !14, i64 336, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !15, i64 380, !15, i64 384, !12, i64 392, !12, i64 400, !12, i64 408, !12, i64 416, !12, i64 424, !12, i64 432, !14, i64 440, !14, i64 448, !14, i64 456, !14, i64 464, !14, i64 472, !14, i64 480, !14, i64 488, !14, i64 496, !14, i64 504, !14, i64 512, !14, i64 520, !5, i64 528, !4, i64 536, !5, i64 592, !8, i64 600, !8, i64 608, !14, i64 616, !14, i64 624, !5, i64 632, !4, i64 636, !20, i64 640, !21, i64 656, !14, i64 664, !21, i64 672, !24, i64 680, !24, i64 712, !24, i64 744, !21, i64 776, !29, i64 784, !30, i64 808, !35, i64 816, !5, i64 840, !21, i64 844, !21, i64 845, !21, i64 846, !12, i64 848}
!37 = !{!36, !8, i64 88}
!38 = !{!36, !8, i64 152}
!39 = !{!"_ZTSN12_GLOBAL__N_111pj_sch_dataE", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !4, i64 32, !4, i64 104, !14, i64 128, !12, i64 136, !12, i64 144}
!40 = !{!39, !12, i64 136}
!41 = !{!39, !12, i64 144}
!42 = !{!36, !14, i64 168}
!43 = !{!39, !14, i64 128}
!44 = !{!14, !14, i64 0}
!45 = !{!36, !8, i64 120}
!46 = !{!"_ZTS6PJ_XYZ", !14, i64 0, !14, i64 8, !14, i64 16}
!47 = !{!46, !14, i64 16}
!48 = !{!36, !8, i64 128}
!49 = !{!36, !10, i64 8}
!50 = !{!36, !10, i64 16}
!51 = !{!36, !5, i64 360}
!52 = !{!36, !15, i64 380}
!53 = !{!36, !15, i64 384}
!54 = distinct !{null, ptr @_ZL17pj_sch_destructorP8PJconstsi}
!55 = distinct !{null}
!56 = !{!36, !9, i64 0}
!57 = !{!36, !11, i64 24}
!58 = !{!39, !14, i64 0}
!59 = !{!39, !14, i64 8}
!60 = !{!39, !14, i64 16}
!61 = !{!39, !14, i64 24}
!62 = !{!36, !14, i64 216}
!63 = !{!"_ZTS6PJ_LPZ", !14, i64 0, !14, i64 8, !14, i64 16}
!64 = !{!63, !14, i64 16}
!65 = !{!46, !14, i64 0}
!66 = !{!46, !14, i64 8}
end_hunk_0
