begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZL11des_mbt_fps = internal constant [48 x i8] c"McBryde-Thomas Flat-Pole Sine (No. 2)\0A\09Cyl, Sph\00", align 16
@pj_s_mbt_fps = hidden local_unnamed_addr constant ptr @_ZL11des_mbt_fps, align 8
@.str = private unnamed_addr constant [8 x i8] c"mbt_fps\00", align 1

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @pj_mbt_fps(ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL17mbt_fps_s_inverse5PJ_XYP8PJconsts, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL17mbt_fps_s_forward5PJ_LPP8PJconsts, ptr %i.c, align 8, !tbaa !39
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_Z6pj_newv()      ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @.str, ptr %i.f, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @_ZL11des_mbt_fps, ptr %i.g, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  store i32 1, ptr %i.h, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 380
  store i32 4, ptr %i.i, align 4, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  store i32 1, ptr %i.j, align 8, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %0, %bb.b ], [ %i.d, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden noundef ptr @_Z36pj_projection_specific_setup_mbt_fpsP8PJconsts(ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((104, 120), (216, 224)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL17mbt_fps_s_inverse5PJ_XYP8PJconsts, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL17mbt_fps_s_forward5PJ_LPP8PJconsts, ptr %i.c, align 8, !tbaa !39
  ret ptr %0
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL17mbt_fps_s_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !45
  %i.b = fdiv double %1, 1.444920e+00
  %i.c = tail call noundef double @_Z5aasinP6pj_ctxd(ptr noundef %i.a, double noundef %i.b) ; 3 uses
  %i.d = fmul double %i.c, 1.365090e+00           ; 2 uses
  %i.e = tail call double @cos(double noundef %i.d) #6
  %i.f = fmul double %i.e, 3.000000e+00
  %i.g = tail call double @cos(double noundef %i.c) #6
  %i.h = fdiv double %i.f, %i.g
  %i.i = fadd double %i.h, 1.000000e+00
  %i.j = fmul double %i.i, 2.224800e-01
  %3 = fdiv double %0, %i.j
  %i.k = load ptr, ptr %2, align 8, !tbaa !45
  %i.l = tail call double @sin(double noundef %i.c) #6
  %i.m = tail call double @sin(double noundef %i.d) #6
  %i.n = tail call double @llvm.fmuladd.f64(double %i.l, double 4.550300e-01, double %i.m)
  %4 = fdiv double %i.n, 1.415460e+00
  %i.o = tail call noundef double @_Z5aasinP6pj_ctxd(ptr noundef %i.k, double noundef %4)
  %.fca.0.insert = insertvalue { double, double } poison, double %3, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.o, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal { double, double } @_ZL17mbt_fps_s_forward5PJ_LPP8PJconsts(double %0, double %1, ptr nofree readnone captures(none) %2) #3 {
bb.a:
  %i.a = tail call double @sin(double noundef %1) #6
  %i.b = fmul double %i.a, 1.415460e+00           ; 10 uses
  %i.c = fdiv double %1, 1.365090e+00             ; 2 uses
  %i.d = tail call double @sin(double noundef %i.c) #6
  %i.e = tail call double @sin(double noundef %1) #6
  %i.f = tail call double @cos(double noundef %i.c) #6
  %i.g = tail call double @cos(double noundef %1) #6
  %i.h = insertelement <2 x double> poison, double %i.d, i64 0
  %i.i = insertelement <2 x double> %i.h, double %i.f, i64 1
  %i.j = insertelement <2 x double> poison, double %i.e, i64 0
  %i.k = insertelement <2 x double> %i.j, double %i.g, i64 1
  %i.l = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.i, <2 x double> <double 4.550300e-01, double f0x3FD5555555555555>, <2 x double> %i.k) ; 2 uses
  %i.m = extractelement <2 x double> %i.l, i64 0
  %i.n = fsub double %i.m, %i.b
  %i.o = extractelement <2 x double> %i.l, i64 1
  %i.p = fdiv double %i.n, %i.o                   ; 2 uses
  %i.q = fsub double %1, %i.p                     ; 5 uses
  %i.r = tail call double @llvm.fabs.f64(double %i.p)
  %i.s = fcmp uge double %i.r, f0x3E7AD7F29ABCAF48
  br i1 %i.s, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.t = fdiv double %i.q, 1.365090e+00           ; 2 uses
  %i.u = tail call double @sin(double noundef %i.t) #6
  %i.v = tail call double @sin(double noundef %i.q) #6
  %i.w = tail call double @cos(double noundef %i.t) #6
  %i.x = tail call double @cos(double noundef %i.q) #6
  %i.y = insertelement <2 x double> poison, double %i.u, i64 0
  %i.z = insertelement <2 x double> %i.y, double %i.w, i64 1
  %i.aa = insertelement <2 x double> poison, double %i.v, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %i.x, i64 1
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> <double 4.550300e-01, double f0x3FD5555555555555>, <2 x double> %i.ab) ; 2 uses
  %i.ad = extractelement <2 x double> %i.ac, i64 0
  %i.ae = fsub double %i.ad, %i.b
  %i.af = extractelement <2 x double> %i.ac, i64 1
  %i.ag = fdiv double %i.ae, %i.af                ; 2 uses
  %i.ah = fsub double %i.q, %i.ag                 ; 5 uses
  %i.ai = tail call double @llvm.fabs.f64(double %i.ag)
  %i.aj = fcmp uge double %i.ai, f0x3E7AD7F29ABCAF48
  br i1 %i.aj, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.ak = fdiv double %i.ah, 1.365090e+00         ; 2 uses
  %i.al = tail call double @sin(double noundef %i.ak) #6
  %i.am = tail call double @sin(double noundef %i.ah) #6
  %i.an = tail call double @cos(double noundef %i.ak) #6
  %i.ao = tail call double @cos(double noundef %i.ah) #6
  %i.ap = insertelement <2 x double> poison, double %i.al, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.an, i64 1
  %i.ar = insertelement <2 x double> poison, double %i.am, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.ao, i64 1
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> <double 4.550300e-01, double f0x3FD5555555555555>, <2 x double> %i.as) ; 2 uses
  %i.au = extractelement <2 x double> %i.at, i64 0
  %i.av = fsub double %i.au, %i.b
  %i.aw = extractelement <2 x double> %i.at, i64 1
  %i.ax = fdiv double %i.av, %i.aw                ; 2 uses
  %i.ay = fsub double %i.ah, %i.ax                ; 5 uses
  %i.az = tail call double @llvm.fabs.f64(double %i.ax)
  %i.ba = fcmp uge double %i.az, f0x3E7AD7F29ABCAF48
  br i1 %i.ba, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.bb = fdiv double %i.ay, 1.365090e+00         ; 2 uses
  %i.bc = tail call double @sin(double noundef %i.bb) #6
  %i.bd = tail call double @sin(double noundef %i.ay) #6
  %i.be = tail call double @cos(double noundef %i.bb) #6
  %i.bf = tail call double @cos(double noundef %i.ay) #6
  %i.bg = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.bh = insertelement <2 x double> %i.bg, double %i.be, i64 1
  %i.bi = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %i.bf, i64 1
  %i.bk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> <double 4.550300e-01, double f0x3FD5555555555555>, <2 x double> %i.bj) ; 2 uses
  %i.bl = extractelement <2 x double> %i.bk, i64 0
  %i.bm = fsub double %i.bl, %i.b
  %i.bn = extractelement <2 x double> %i.bk, i64 1
  %i.bo = fdiv double %i.bm, %i.bn                ; 2 uses
  %i.bp = fsub double %i.ay, %i.bo                ; 5 uses
  %i.bq = tail call double @llvm.fabs.f64(double %i.bo)
  %i.br = fcmp uge double %i.bq, f0x3E7AD7F29ABCAF48
  br i1 %i.br, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.bs = fdiv double %i.bp, 1.365090e+00         ; 2 uses
  %i.bt = tail call double @sin(double noundef %i.bs) #6
  %i.bu = tail call double @sin(double noundef %i.bp) #6
  %i.bv = tail call double @cos(double noundef %i.bs) #6
  %i.bw = tail call double @cos(double noundef %i.bp) #6
  %i.bx = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.bv, i64 1
  %i.bz = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.ca = insertelement <2 x double> %i.bz, double %i.bw, i64 1
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> <double 4.550300e-01, double f0x3FD5555555555555>, <2 x double> %i.ca) ; 2 uses
  %i.cc = extractelement <2 x double> %i.cb, i64 0
  %i.cd = fsub double %i.cc, %i.b
  %i.ce = extractelement <2 x double> %i.cb, i64 1
  %i.cf = fdiv double %i.cd, %i.ce                ; 2 uses
  %i.cg = fsub double %i.bp, %i.cf                ; 5 uses
  %i.ch = tail call double @llvm.fabs.f64(double %i.cf)
  %i.ci = fcmp uge double %i.ch, f0x3E7AD7F29ABCAF48
  br i1 %i.ci, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.cj = fdiv double %i.cg, 1.365090e+00         ; 2 uses
  %i.ck = tail call double @sin(double noundef %i.cj) #6
  %i.cl = tail call double @sin(double noundef %i.cg) #6
  %i.cm = tail call double @cos(double noundef %i.cj) #6
  %i.cn = tail call double @cos(double noundef %i.cg) #6
  %i.co = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.cp = insertelement <2 x double> %i.co, double %i.cm, i64 1
  %i.cq = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %i.cn, i64 1
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> <double 4.550300e-01, double f0x3FD5555555555555>, <2 x double> %i.cr) ; 2 uses
  %i.ct = extractelement <2 x double> %i.cs, i64 0
  %i.cu = fsub double %i.ct, %i.b
  %i.cv = extractelement <2 x double> %i.cs, i64 1
  %i.cw = fdiv double %i.cu, %i.cv                ; 2 uses
  %i.cx = fsub double %i.cg, %i.cw                ; 5 uses
  %i.cy = tail call double @llvm.fabs.f64(double %i.cw)
  %i.cz = fcmp uge double %i.cy, f0x3E7AD7F29ABCAF48
  br i1 %i.cz, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.da = fdiv double %i.cx, 1.365090e+00         ; 2 uses
  %i.db = tail call double @sin(double noundef %i.da) #6
  %i.dc = tail call double @sin(double noundef %i.cx) #6
  %i.dd = tail call double @cos(double noundef %i.da) #6
  %i.de = tail call double @cos(double noundef %i.cx) #6
  %i.df = insertelement <2 x double> poison, double %i.db, i64 0
  %i.dg = insertelement <2 x double> %i.df, double %i.dd, i64 1
  %i.dh = insertelement <2 x double> poison, double %i.dc, i64 0
  %i.di = insertelement <2 x double> %i.dh, double %i.de, i64 1
  %i.dj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> <double 4.550300e-01, double f0x3FD5555555555555>, <2 x double> %i.di) ; 2 uses
  %i.dk = extractelement <2 x double> %i.dj, i64 0
  %i.dl = fsub double %i.dk, %i.b
  %i.dm = extractelement <2 x double> %i.dj, i64 1
  %i.dn = fdiv double %i.dl, %i.dm                ; 2 uses
  %i.do = fsub double %i.cx, %i.dn                ; 5 uses
  %i.dp = tail call double @llvm.fabs.f64(double %i.dn)
  %i.dq = fcmp uge double %i.dp, f0x3E7AD7F29ABCAF48
  br i1 %i.dq, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.dr = fdiv double %i.do, 1.365090e+00         ; 2 uses
  %i.ds = tail call double @sin(double noundef %i.dr) #6
  %i.dt = tail call double @sin(double noundef %i.do) #6
  %i.du = tail call double @cos(double noundef %i.dr) #6
  %i.dv = tail call double @cos(double noundef %i.do) #6
  %i.dw = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.dx = insertelement <2 x double> %i.dw, double %i.du, i64 1
  %i.dy = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.dz = insertelement <2 x double> %i.dy, double %i.dv, i64 1
  %i.ea = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dx, <2 x double> <double 4.550300e-01, double f0x3FD5555555555555>, <2 x double> %i.dz) ; 2 uses
  %i.eb = extractelement <2 x double> %i.ea, i64 0
  %i.ec = fsub double %i.eb, %i.b
  %i.ed = extractelement <2 x double> %i.ea, i64 1
  %i.ee = fdiv double %i.ec, %i.ed                ; 2 uses
  %i.ef = fsub double %i.do, %i.ee                ; 5 uses
  %i.eg = tail call double @llvm.fabs.f64(double %i.ee)
  %i.eh = fcmp uge double %i.eg, f0x3E7AD7F29ABCAF48
  br i1 %i.eh, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ei = fdiv double %i.ef, 1.365090e+00         ; 2 uses
  %i.ej = tail call double @sin(double noundef %i.ei) #6
  %i.ek = tail call double @sin(double noundef %i.ef) #6
  %i.el = tail call double @cos(double noundef %i.ei) #6
  %i.em = tail call double @cos(double noundef %i.ef) #6
  %i.en = insertelement <2 x double> poison, double %i.ej, i64 0
  %i.eo = insertelement <2 x double> %i.en, double %i.el, i64 1
  %i.ep = insertelement <2 x double> poison, double %i.ek, i64 0
  %i.eq = insertelement <2 x double> %i.ep, double %i.em, i64 1
  %i.er = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> <double 4.550300e-01, double f0x3FD5555555555555>, <2 x double> %i.eq) ; 2 uses
  %i.es = extractelement <2 x double> %i.er, i64 0
  %i.et = fsub double %i.es, %i.b
  %i.eu = extractelement <2 x double> %i.er, i64 1
  %i.ev = fdiv double %i.et, %i.eu                ; 2 uses
  %i.ew = fsub double %i.ef, %i.ev                ; 5 uses
  %i.ex = tail call double @llvm.fabs.f64(double %i.ev)
  %i.ey = fcmp uge double %i.ex, f0x3E7AD7F29ABCAF48
  br i1 %i.ey, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ez = fdiv double %i.ew, 1.365090e+00         ; 2 uses
  %i.fa = tail call double @sin(double noundef %i.ez) #6
  %i.fb = tail call double @sin(double noundef %i.ew) #6
  %i.fc = tail call double @cos(double noundef %i.ez) #6
  %i.fd = tail call double @cos(double noundef %i.ew) #6
  %i.fe = insertelement <2 x double> poison, double %i.fa, i64 0
  %i.ff = insertelement <2 x double> %i.fe, double %i.fc, i64 1
  %i.fg = insertelement <2 x double> poison, double %i.fb, i64 0
  %i.fh = insertelement <2 x double> %i.fg, double %i.fd, i64 1
  %i.fi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ff, <2 x double> <double 4.550300e-01, double f0x3FD5555555555555>, <2 x double> %i.fh) ; 2 uses
  %i.fj = extractelement <2 x double> %i.fi, i64 0
end_hunk_0
