Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/affine?download=true
inline.NumInlined: 7
inline.NumDeleted: 2
begin_hunk_0_@_Z35pj_projection_specific_setup_affineP8PJconsts:bb.a
  %i.dw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> %i.dv, <2 x double> %i.ds) ; 3 uses
  %i.dx = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dy = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.dz = insertelement <2 x double> %i.dy, double %i.cl, i64 1
  %i.ea = insertelement <2 x double> %i.cz, double %i.cl, i64 0
  %i.eb = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ec = insertelement <2 x double> %i.eb, double %i.dj, i64 0
  %i.ed = fneg <2 x double> %i.ec                 ; 3 uses
  %i.ee = shufflevector <2 x double> %i.ed, <2 x double> %i.cv, <2 x i32> <i32 0, i32 2>
  %i.ef = fmul <2 x double> %i.dx, %i.ee
  %i.eg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dz, <2 x double> %i.ea, <2 x double> %i.ef) ; 2 uses
  %i.eh = fmul <2 x double> %i.cw, %i.ed
  %i.ei = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.ej = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ek = shufflevector <2 x double> %i.cx, <2 x double> %i.dh, <2 x i32> <i32 0, i32 3>
  %i.el = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ej, <2 x double> %i.ek, <2 x double> %i.eh) ; 2 uses
  %i.em = extractelement <2 x double> %i.dw, i64 0
  %i.en = extractelement <2 x double> %i.el, i64 1
  %i.eo = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.em, double %i.en) ; 2 uses
  %i.ep = fcmp oeq double %i.eo, 0.000000e+00
  br i1 %i.ep, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cj, i64 104
  %i.er = load double, ptr %i.eq, align 8, !tbaa !80 ; 2 uses
  %i.es = fcmp oeq double %i.er, 0.000000e+00
  br i1 %i.es, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.et = load ptr, ptr %0, align 8, !tbaa !56
  %i.eu = tail call i32 @proj_log_level(ptr noundef %i.et, i32 noundef 4)
  %i.ev = icmp sgt i32 %i.eu, 1
  br i1 %i.ev, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ptr, ...) @_Z14proj_log_debugP8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.23)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store ptr null, ptr %i.m, align 8, !tbaa !51
  store ptr null, ptr %i.o, align 8, !tbaa !53
  store ptr null, ptr %i.q, align 8, !tbaa !55
  br label %_ZL24computeReverseParametersP8PJconsts.exit

bb.p:                                             ; preds = %bb.l
  %i.ew = shufflevector <2 x double> %i.dh, <2 x double> %i.do, <2 x i32> <i32 1, i32 3>
  %i.ex = insertelement <2 x double> poison, double %i.eo, i64 0 ; 2 uses
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ez = fdiv <2 x double> %i.ew, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cj, i64 112
  store <2 x double> %i.ez, ptr %i.fa, align 8, !tbaa !46
  %i.fb = shufflevector <2 x double> %i.dw, <2 x double> %i.ed, <2 x i32> <i32 1, i32 3>
  %i.fc = fdiv <2 x double> %i.fb, %i.ey
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cj, i64 128
  store <2 x double> %i.fc, ptr %i.fd, align 8, !tbaa !46
  %i.fe = fneg <2 x double> %i.eg
  %i.ff = shufflevector <2 x double> %i.eg, <2 x double> %i.fe, <2 x i32> <i32 1, i32 2>
  %i.fg = fdiv <2 x double> %i.ff, %i.ey
  %i.fh = getelementptr inbounds nuw i8, ptr %i.cj, i64 144
  store <2 x double> %i.fg, ptr %i.fh, align 8, !tbaa !46
  %i.fi = shufflevector <2 x double> %i.dw, <2 x double> %i.do, <2 x i32> <i32 0, i32 2>
  %i.fj = fdiv <2 x double> %i.fi, %i.ey
  %i.fk = getelementptr inbounds nuw i8, ptr %i.cj, i64 160
  store <2 x double> %i.fj, ptr %i.fk, align 8, !tbaa !46
  %i.fl = insertelement <2 x double> %i.el, double 1.000000e+00, i64 1
  %i.fm = insertelement <2 x double> %i.ex, double %i.er, i64 1
  %i.fn = fdiv <2 x double> %i.fl, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.cj, i64 176
  store <2 x double> %i.fn, ptr %i.fo, align 8, !tbaa !46
  br label %_ZL24computeReverseParametersP8PJconsts.exit

_ZL24computeReverseParametersP8PJconsts.exit:     ; preds = %bb.p, %bb.o, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.o ], [ %0, %bb.p ]
  ret ptr %.0
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #1

declare noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL10forward_4dR8PJ_COORDP8PJconsts(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load double, ptr %0, align 8, !tbaa !62  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !62 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !62 ; 3 uses
  %i.i = load double, ptr %i.b, align 8, !tbaa !58
  %i.j = load double, ptr %i.c, align 8, !tbaa !63
  %i.k = tail call double @llvm.fmuladd.f64(double %i.j, double %i.d, double %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.m = load double, ptr %i.l, align 8, !tbaa !64
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double %i.f, double %i.k)
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.p = load double, ptr %i.o, align 8, !tbaa !65
  %i.q = tail call double @llvm.fmuladd.f64(double %i.p, double %i.h, double %i.n)
  store double %i.q, ptr %0, align 8, !tbaa !62
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load double, ptr %i.r, align 8, !tbaa !59
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.u = load double, ptr %i.t, align 8, !tbaa !66
  %i.v = tail call double @llvm.fmuladd.f64(double %i.u, double %i.d, double %i.s)
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.x = load double, ptr %i.w, align 8, !tbaa !67
  %i.y = tail call double @llvm.fmuladd.f64(double %i.x, double %i.f, double %i.v)
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.aa = load double, ptr %i.z, align 8, !tbaa !68
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.h, double %i.y)
  store double %i.ab, ptr %i.e, align 8, !tbaa !62
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !60
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.af = load double, ptr %i.ae, align 8, !tbaa !69
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.af, double %i.d, double %i.ad)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !70
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.f, double %i.ag)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.al = load double, ptr %i.ak, align 8, !tbaa !71
  %i.am = tail call double @llvm.fmuladd.f64(double %i.al, double %i.h, double %i.aj)
  store double %i.am, ptr %i.g, align 8, !tbaa !62
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ao = load double, ptr %i.an, align 8, !tbaa !61
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !72
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !62
  %i.at = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.as, double %i.ao)
  store double %i.at, ptr %i.ar, align 8, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL10reverse_4dR8PJ_COORDP8PJconsts(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load double, ptr %0, align 8, !tbaa !62
  %i.e = load double, ptr %i.b, align 8, !tbaa !58
  %i.f = fsub double %i.d, %i.e                   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !59
  %i.k = fsub double %i.h, %i.j                   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !62
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load double, ptr %i.n, align 8, !tbaa !60
  %i.p = fsub double %i.m, %i.o                   ; 3 uses
  %i.q = load double, ptr %i.c, align 8, !tbaa !63
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.s = load double, ptr %i.r, align 8, !tbaa !64
  %i.t = fmul double %i.k, %i.s
  %i.u = tail call double @llvm.fmuladd.f64(double %i.q, double %i.f, double %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.w = load double, ptr %i.v, align 8, !tbaa !65
  %i.x = tail call double @llvm.fmuladd.f64(double %i.w, double %i.p, double %i.u)
  store double %i.x, ptr %0, align 8, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.z = load double, ptr %i.y, align 8, !tbaa !66
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !67
  %i.ac = fmul double %i.k, %i.ab
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.z, double %i.f, double %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.af = load double, ptr %i.ae, align 8, !tbaa !68
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.af, double %i.p, double %i.ad)
  store double %i.ag, ptr %i.g, align 8, !tbaa !62
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !69
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !70
  %i.al = fmul double %i.k, %i.ak
  %i.am = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.f, double %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.ao = load double, ptr %i.an, align 8, !tbaa !71
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.p, double %i.am)
  store double %i.ap, ptr %i.l, align 8, !tbaa !62
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !72
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !62
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.av = load double, ptr %i.au, align 8, !tbaa !61
  %i.aw = fsub double %i.at, %i.av
  %i.ax = fmul double %i.ar, %i.aw
  store double %i.ax, ptr %i.as, align 8, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL10forward_3d6PJ_LPZP8PJconsts(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.PJ_XYZ) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly byval(%struct.PJ_LPZ) align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.h = load double, ptr %i.g, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.j = load double, ptr %i.i, align 8, !tbaa !70
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %3 = load double, ptr %i.k, align 8, !tbaa !71
  %i.l = load double, ptr %1, align 8, !tbaa !46  ; 2 uses
  %.sroa.7.0.copyload = load double, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !46 ; 2 uses
  %.sroa.7.0.copyload.a = load double, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !46 ; 2 uses
  %i.m = load <2 x double>, ptr %i.b, align 8, !tbaa !46
  %i.n = load <4 x double>, ptr %i.c, align 8, !tbaa !46 ; 3 uses
  %i.o = shufflevector <4 x double> %i.n, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %4 = insertelement <2 x double> poison, double %i.l, i64 0
  %i.p = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> %i.p, <2 x double> %i.m)
  %i.r = load <2 x double>, ptr %i.d, align 8, !tbaa !46
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.t = shufflevector <4 x double> %i.n, <4 x double> %i.s, <2 x i32> <i32 1, i32 4>
  %5 = insertelement <2 x double> poison, double %.sroa.7.0.copyload, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %i.u = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.t, <2 x double> %6, <2 x double> %i.q)
  %i.v = shufflevector <4 x double> %i.n, <4 x double> %i.s, <2 x i32> <i32 2, i32 5>
  %7 = insertelement <2 x double> poison, double %.sroa.7.0.copyload.a, i64 0
  %8 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %9 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %8, <2 x double> %i.u)
  %i.w = tail call double @llvm.fmuladd.f64(double %i.h, double %i.l, double %i.f)
  %i.x = tail call double @llvm.fmuladd.f64(double %i.j, double %.sroa.7.0.copyload, double %i.w)
  %i.y = tail call double @llvm.fmuladd.f64(double %3, double %.sroa.7.0.copyload.a, double %i.x)
  store <2 x double> %9, ptr %0, align 8, !tbaa !46
  %.sroa.9.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.y, ptr %.sroa.9.0..sroa_idx4, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL10reverse_3d6PJ_XYZP8PJconsts(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.PJ_LPZ) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly byval(%struct.PJ_XYZ) align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load double, ptr %i.e, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.h = load double, ptr %i.g, align 8, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.j = load double, ptr %i.i, align 8, !tbaa !71
  %i.k = load <3 x double>, ptr %1, align 8, !tbaa !46
  %i.l = load <3 x double>, ptr %i.b, align 8, !tbaa !46
  %i.m = fsub <3 x double> %i.k, %i.l             ; 6 uses
  %i.n = load <4 x double>, ptr %i.c, align 8, !tbaa !46 ; 3 uses
  %i.o = load <2 x double>, ptr %i.d, align 8, !tbaa !46
  %i.p = shufflevector <3 x double> %i.m, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.q = shufflevector <2 x double> %i.o, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.r = shufflevector <4 x double> %i.n, <4 x double> %i.q, <2 x i32> <i32 1, i32 4>
  %i.s = fmul <2 x double> %i.p, %i.r
  %i.t = shufflevector <4 x double> %i.n, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.u = shufflevector <3 x double> %i.m, <3 x double> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.t, <2 x double> %i.u, <2 x double> %i.s)
  %i.w = shufflevector <4 x double> %i.n, <4 x double> %i.q, <2 x i32> <i32 2, i32 5>
  %i.x = shufflevector <3 x double> %i.m, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.x, <2 x double> %i.v)
  %i.z = extractelement <3 x double> %i.m, i64 1
  %i.aa = fmul double %i.z, %i.h
  %i.ab = extractelement <3 x double> %i.m, i64 0
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.f, double %i.ab, double %i.aa)
  %i.ad = extractelement <3 x double> %i.m, i64 2
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.j, double %i.ad, double %i.ac)
  store <2 x double> %i.y, ptr %0, align 8, !tbaa !46
  %.sroa.9.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ae, ptr %.sroa.9.0..sroa_idx4, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { double, double } @_ZL10forward_2d5PJ_LPP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.e = load <2 x double>, ptr %i.b, align 8, !tbaa !46
  %i.f = load <4 x double>, ptr %i.c, align 8, !tbaa !46 ; 3 uses
  %i.g = shufflevector <4 x double> %i.f, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.h = insertelement <2 x double> poison, double %0, i64 0
  %i.i = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.j = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> %i.i, <2 x double> %i.e)
  %i.k = load <2 x double>, ptr %i.d, align 8, !tbaa !46
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.m = shufflevector <4 x double> %i.f, <4 x double> %i.l, <2 x i32> <i32 1, i32 4>
  %i.n = insertelement <2 x double> poison, double %1, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.o, <2 x double> %i.j)
  %i.q = shufflevector <4 x double> %i.f, <4 x double> %i.l, <2 x i32> <i32 2, i32 5>
  %i.r = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> zeroinitializer, <2 x double> %i.p) ; 2 uses
  %vec2struct.slot.sroa.0.0.vec.extract = extractelement <2 x double> %i.r, i64 0
  %i.s = insertvalue { double, double } poison, double %vec2struct.slot.sroa.0.0.vec.extract, 0
  %vec2struct.slot.sroa.0.8.vec.extract = extractelement <2 x double> %i.r, i64 1
  %vec2struct5 = insertvalue { double, double } %i.s, double %vec2struct.slot.sroa.0.8.vec.extract, 1
  ret { double, double } %vec2struct5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { double, double } @_ZL10reverse_2d5PJ_XYP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 4 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %4 = load double, ptr %i.c, align 8, !tbaa !60
  %5 = load <2 x double>, ptr %i.b, align 8, !tbaa !46
  %6 = insertelement <2 x double> poison, double %0, i64 0
  %7 = insertelement <2 x double> %6, double %1, i64 1
  %8 = fsub <2 x double> %7, %5                   ; 2 uses
  %9 = fsub double 0.000000e+00, %4
  %i.e = load <4 x double>, ptr %3, align 8, !tbaa !46 ; 3 uses
  %i.f = load <2 x double>, ptr %i.d, align 8, !tbaa !46
  %i.g = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.h = shufflevector <2 x double> %i.f, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.i = shufflevector <4 x double> %i.e, <4 x double> %i.h, <2 x i32> <i32 1, i32 4>
  %i.j = fmul <2 x double> %i.g, %i.i
  %i.k = shufflevector <4 x double> %i.e, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.l = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.k, <2 x double> %i.l, <2 x double> %i.j)
  %i.n = shufflevector <4 x double> %i.e, <4 x double> %i.h, <2 x i32> <i32 2, i32 5>
  %10 = insertelement <2 x double> poison, double %9, i64 0
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %11, <2 x double> %i.m) ; 2 uses
  %vec2struct.slot.sroa.0.0.vec.extract = extractelement <2 x double> %i.o, i64 0
  %i.p = insertvalue { double, double } poison, double %vec2struct.slot.sroa.0.0.vec.extract, 0
  %vec2struct.slot.sroa.0.8.vec.extract = extractelement <2 x double> %i.o, i64 1
  %vec2struct5 = insertvalue { double, double } %i.p, double %vec2struct.slot.sroa.0.8.vec.extract, 1
  ret { double, double } %vec2struct5
}

declare i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @pj_geogoffset(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_Z39pj_projection_specific_setup_geogoffsetP8PJconsts(ptr noundef nonnull %0)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_Z6pj_newv()      ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @.str.19, ptr %i.d, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @_ZL14des_geogoffset, ptr %i.e, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store i32 0, ptr %i.f, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 380
  store i32 4, ptr %i.g, align 4, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  store i32 1, ptr %i.h, align 8, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z39pj_projection_specific_setup_geogoffsetP8PJconsts(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(192) ptr @calloc(i64 noundef 1, i64 noundef 192) #6 ; 11 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef %0, i32 noundef 4096)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store double 1.000000e+00, ptr %i.e, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store <2 x double> splat (double 1.000000e+00), ptr %i.f, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store double 1.000000e+00, ptr %i.g, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store double 1.000000e+00, ptr %i.h, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <2 x double> splat (double 1.000000e+00), ptr %i.i, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.a, ptr %i.j, align 8, !tbaa !49
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr @_ZL10forward_4dR8PJ_COORDP8PJconsts, ptr %i.k, align 8, !tbaa !50
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr @_ZL10reverse_4dR8PJ_COORDP8PJconsts, ptr %i.l, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @_ZL10forward_3d6PJ_LPZP8PJconsts, ptr %i.m, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr @_ZL10reverse_3d6PJ_XYZP8PJconsts, ptr %i.n, align 8, !tbaa !53
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL10forward_2d5PJ_LPP8PJconsts, ptr %i.o, align 8, !tbaa !54
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL10reverse_2d5PJ_XYP8PJconsts, ptr %i.p, align 8, !tbaa !55
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 380
  store i32 4, ptr %i.q, align 4, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i32 4, ptr %i.r, align 8, !tbaa !41
  %i.s = load ptr, ptr %0, align 8, !tbaa !56
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !57
  %i.v = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.s, ptr noundef %i.u, ptr noundef nonnull @.str.20)
  %i.w = bitcast i64 %i.v to double
  %i.x = fmul double %i.w, f0x3ED455A5B2FF8F9D
  store double %i.x, ptr %i.a, align 8, !tbaa !58
  %i.y = load ptr, ptr %0, align 8, !tbaa !56
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !57
  %i.aa = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.y, ptr noundef %i.z, ptr noundef nonnull @.str.21)
  %i.ab = bitcast i64 %i.aa to double
  %i.ac = fmul double %i.ab, f0x3ED455A5B2FF8F9D
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %i.ac, ptr %i.ad, align 8, !tbaa !59
  %i.ae = load ptr, ptr %0, align 8, !tbaa !56
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !57
  %i.ag = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.ae, ptr noundef %i.af, ptr noundef nonnull @.str.22)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !60
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

declare i32 @proj_log_level(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z14proj_log_debugP8PJconstsPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind allocsize(0,1) }

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
!37 = !{!36, !10, i64 8}
!38 = !{!36, !10, i64 16}
!39 = !{!36, !5, i64 360}
!40 = !{!36, !15, i64 380}
!41 = !{!36, !15, i64 384}
!42 = !{!"_ZTSN12_GLOBAL__N_116pj_affine_coeffsE", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72}
!43 = !{!"_ZTSN12_GLOBAL__N_116pj_opaque_affineE", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !42, i64 32, !42, i64 112}
!44 = !{!43, !14, i64 32}
!45 = !{!43, !14, i64 64}
!46 = !{!14, !14, i64 0}
!47 = !{!43, !14, i64 112}
!48 = !{!43, !14, i64 144}
!49 = !{!36, !8, i64 88}
!50 = !{!36, !8, i64 136}
!51 = !{!36, !8, i64 144}
!52 = !{!36, !8, i64 120}
!53 = !{!36, !8, i64 128}
!54 = !{!36, !8, i64 104}
!55 = !{!36, !8, i64 112}
!56 = !{!36, !9, i64 0}
!57 = !{!36, !11, i64 24}
!58 = !{!43, !14, i64 0}
!59 = !{!43, !14, i64 8}
!60 = !{!43, !14, i64 16}
!61 = !{!43, !14, i64 24}
!62 = !{!4, !4, i64 0}
!63 = !{!42, !14, i64 0}
!64 = !{!42, !14, i64 8}
end_hunk_0
