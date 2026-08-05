inline.NumInlined: 173
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumUnrolled: 71
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.geod_geodesicline = type { double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, [7 x double], [7 x double], [7 x double], [6 x double], [6 x double], i32 }
%struct.geod_polygon = type { double, double, double, double, [2 x double], [2 x double], i32, i32, i32 }

@init = internal unnamed_addr global i1 false, align 4
@tol2 = internal unnamed_addr global double 0.000000e+00, align 8
@NaN = internal unnamed_addr global double 0.000000e+00, align 8
@degree = internal unnamed_addr global double 0.000000e+00, align 8
@tiny = internal unnamed_addr global double 0.000000e+00, align 8
@pi = internal unnamed_addr global double 0.000000e+00, align 8
@maxit1 = internal unnamed_addr global i1 false, align 4
@maxit2 = internal unnamed_addr global i1 false, align 4
@tol0 = internal unnamed_addr global double 0.000000e+00, align 8
@tol1 = internal unnamed_addr global double 0.000000e+00, align 8
@tolb = internal unnamed_addr global double 0.000000e+00, align 8
@xthresh = internal unnamed_addr global double 0.000000e+00, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define void @geod_init(ptr nofree noundef writeonly initializes((0, 408)) %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @init, align 4
  br i1 %.b, label %bb.b, label %Init.exit

Init.exit:                                        ; preds = %bb.a
  store double f0x400921FB54442D18, ptr @pi, align 8, !tbaa !8
  store i1 true, ptr @maxit1, align 4
  store i1 true, ptr @maxit2, align 4
  store double f0x2000000000000000, ptr @tiny, align 8, !tbaa !8
  store double f0x3CB0000000000000, ptr @tol0, align 8, !tbaa !8
  store double f0x3D29000000000000, ptr @tol1, align 8, !tbaa !8
  store double f0x3E50000000000000, ptr @tol2, align 8, !tbaa !8
  store double f0x3CB0000000000000, ptr @tolb, align 8, !tbaa !8
  store double f0x3EEF400000000000, ptr @xthresh, align 8, !tbaa !8
  store double f0x3F91DF46A2529D39, ptr @degree, align 8, !tbaa !8
  store double +qnan, ptr @NaN, align 8, !tbaa !8
  store i1 true, ptr @init, align 4
  br label %bb.b

bb.b:                                             ; preds = %Init.exit, %bb.a
  store double %1, ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %2, ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = fsub double 1.000000e+00, %2             ; 4 uses
  store double %i.e, ptr %i.b, align 8, !tbaa !13
  %i.f = fsub double 2.000000e+00, %2             ; 2 uses
  %i.g = fmul double %i.e, %i.e
  %i.h = fmul double %2, %i.f                     ; 7 uses
  store double %i.h, ptr %i.c, align 8, !tbaa !14
  %i.i = insertelement <2 x double> poison, double %i.h, i64 0
  %i.j = insertelement <2 x double> %i.i, double %2, i64 1
  %i.k = insertelement <2 x double> poison, double %i.g, i64 0
  %i.l = insertelement <2 x double> %i.k, double %i.f, i64 1
  %i.m = fdiv <2 x double> %i.j, %i.l             ; 7 uses
  store <2 x double> %i.m, ptr %i.d, align 8, !tbaa !8
  %i.n = fmul double %1, %i.e                     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.n, ptr %i.o, align 8, !tbaa !15
  %i.p = fcmp oeq double %i.h, 0.000000e+00
  br i1 %i.p, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = fcmp ogt double %i.h, 0.000000e+00
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = tail call double @sqrt(double noundef %i.h) #15
  %i.s = tail call double @atanh(double noundef %i.r) #15
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = fneg double %i.h
  %i.u = tail call double @sqrt(double noundef %i.t) #15
  %i.v = tail call double @atan(double noundef %i.u) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = phi double [ %i.s, %bb.d ], [ %i.v, %bb.e ]
  %i.x = tail call double @llvm.fabs.f64(double %i.h)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.x)
  %i.y = fdiv double %i.w, %sqrt
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f
  %i.z = phi double [ %i.y, %bb.f ], [ 1.000000e+00, %bb.b ]
  %i.aa = extractelement <2 x double> %i.m, i64 1 ; 7 uses
  %i.ab = fmul double %i.n, %i.n
  %i.ac = fmul double %1, %1
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.z, double %i.ac)
  %i.ae = fmul double %i.ad, 5.000000e-01
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.ae, ptr %i.af, align 8, !tbaa !16
  %3 = load double, ptr @tol2, align 8, !tbaa !8
  %i.ag = tail call nsz double @llvm.fabs.f64(double %2)
  %i.ah = tail call nsz double @llvm.maxnum.f64(double %i.ag, double 1.000000e-03)
  %i.ai = fmul nsz double %2, 5.000000e-01
  %i.aj = fsub nsz double 1.000000e+00, %i.ai
  %i.ak = tail call nsz double @llvm.minnum.f64(double %i.aj, double 1.000000e+00)
  %i.al = fmul double %i.ah, %i.ak
  %i.am = fmul double %i.al, 5.000000e-01
  %i.an = tail call double @sqrt(double noundef %i.am) #15
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double -2.343750e-02, ptr %i.ap, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ar = fsub double -3.000000e+00, %i.aa
  %i.as = insertelement <2 x double> <double -2.000000e+00, double poison>, double %i.ar, i64 1
  %i.at = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 20 uses
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.at, <2 x double> <double -3.000000e+00, double -1.000000e+00>)
  %i.av = fmul <2 x double> %i.au, <double 1.562500e-02, double 6.250000e-02>
  store <2 x double> %i.av, ptr %i.aq, align 8, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aa, double 3.000000e+00, double -1.000000e+00)
  %i.ay = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.az = fadd <2 x double> %i.ay, <double -1.000000e+00, double 3.000000e+00> ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x double> <double 1.000000e+00, double 2.343750e-02>, ptr %i.ba, align 8, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bc = fsub <2 x double> <double 3.000000e+00, double 0.000000e+00>, %i.ay ; 2 uses
  %i.bd = shufflevector <2 x double> <double 2.000000e+00, double poison>, <2 x double> %i.bc, <2 x i32> <i32 0, i32 2>
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.at, <2 x double> <double 5.000000e+00, double 3.000000e+00>)
  %i.bf = fmul <2 x double> %i.be, <double 7.812500e-03, double 1.562500e-02>
  store <2 x double> %i.bf, ptr %i.bb, align 8, !tbaa !8
  %i.bg = insertelement <2 x double> %i.bc, double %i.ax, i64 0
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> %i.at, <2 x double> <double -2.000000e+00, double 1.000000e+00>) ; 2 uses
  %i.bi = shufflevector <2 x double> %i.bh, <2 x double> %i.az, <2 x i32> <i32 0, i32 2>
  %i.bj = fmul <2 x double> %i.bi, <double 1.250000e-01, double 5.000000e-01>
  store <2 x double> %i.bj, ptr %i.aw, align 8, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bl = fsub double 1.000000e+00, %i.aa
  %i.bm = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bn = insertelement <2 x double> %i.bm, double %i.bl, i64 1
  %i.bo = fmul <2 x double> %i.bn, <double 1.250000e-01, double 2.500000e-01>
  store <2 x double> %i.bo, ptr %i.bk, align 8, !tbaa !8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 160
  store double f0x3F94000000000000, ptr %i.bp, align 8, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.br = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bs = fadd double %i.aa, -3.000000e+00
  %i.bt = insertelement <2 x double> <double -3.000000e+00, double poison>, double %i.bs, i64 1
  %i.bu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.at, <2 x double> <double -2.000000e+00, double 2.000000e+00>) ; 2 uses
  %i.bv = extractelement <2 x double> %i.bu, i64 0
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.aa, double 3.000000e+00)
  %i.bx = insertelement <2 x double> %i.br, double %i.bw, i64 1
  %i.by = fmul <2 x double> %i.bx, <double 7.812500e-03, double 1.562500e-02>
  store <2 x double> %i.by, ptr %i.bq, align 8, !tbaa !8
  %i.bz = extractelement <2 x double> %i.bu, i64 1
  %i.ca = fmul double %i.bz, 3.125000e-02
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 184
  store double %i.ca, ptr %i.cb, align 8, !tbaa !8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 192
  store double f0x3F8C000000000000, ptr %i.cc, align 8, !tbaa !8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ce = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> <double 5.000000e+00, double -1.400000e+01>, <2 x double> <double -9.000000e+00, double 7.000000e+00>) ; 2 uses
  %i.cf = shufflevector <2 x double> <double -1.000000e+01, double poison>, <2 x double> %i.ce, <2 x i32> <i32 0, i32 2>
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> %i.at, <2 x double> <double 9.000000e+00, double 5.000000e+00>)
  %i.ch = fdiv <2 x double> %i.cg, <double 3.840000e+02, double 1.920000e+02>
  store <2 x double> %i.ch, ptr %i.cd, align 8, !tbaa !8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double f0x3F8C000000000000, ptr %i.ci, align 8, !tbaa !8
  %i.cj = extractelement <2 x double> %i.ce, i64 1
  %i.ck = fmul double %i.cj, f0x3F60000000000000
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 224
  store double %i.ck, ptr %i.cl, align 8, !tbaa !8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 232
  store <2 x double> <double f0x3F80CCCCCCCCCCCD, double f0x3F7A7604778D4A49>, ptr %i.cm, align 8, !tbaa !8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> <double -2.240000e+02, double 6.400000e+01>, <2 x double> <double -4.784000e+03, double 6.240000e+02>) ; 2 uses
  %i.cp = shufflevector <2 x double> <double 1.088000e+03, double poison>, <2 x double> %i.co, <2 x i32> <i32 0, i32 2>
  %i.cq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> %i.at, <2 x double> <double 1.560000e+02, double 1.573000e+03>)
  %i.cr = fdiv <2 x double> %i.cq, splat (double 4.504500e+04)
  store <2 x double> %i.cr, ptr %i.cn, align 8, !tbaa !8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ct = insertelement <2 x double> %i.co, double -1.065600e+04, i64 0
  %i.cu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %i.at, <2 x double> <double 1.414400e+04, double -4.576000e+03>)
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %i.at, <2 x double> <double -4.576000e+03, double 6.864000e+03>)
  %i.cw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cv, <2 x double> %i.at, <2 x double> <double -8.580000e+02, double -3.003000e+03>)
  %i.cx = fdiv <2 x double> %i.cw, <double 4.504500e+04, double 1.501500e+04>
  store <2 x double> %i.cx, ptr %i.cs, align 8, !tbaa !8
  %i.cy = fmul double %3, 1.000000e-01
  %i.cz = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.da = insertelement <2 x double> <double poison, double 4.504500e+04>, double %i.an, i64 0
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 288
  store double f0x3F1D191762EA8BC0, ptr %i.dc, align 8, !tbaa !8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.de = shufflevector <2 x double> <double poison, double -0.000000e+00>, <2 x double> %i.m, <2 x i32> <i32 3, i32 1>
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> <double 1.000000e+02, double 0.000000e+00>, <2 x double> <double 2.080000e+02, double -0.000000e+00>)
  %i.dg = shufflevector <2 x double> %i.m, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.dg, <2 x double> <double 5.720000e+02, double -0.000000e+00>)
  %i.di = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dh, <2 x double> %i.dg, <2 x double> <double 3.432000e+03, double 5.792000e+03>)
  %i.dj = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.di, <2 x double> %i.dj, <2 x double> <double -1.201200e+04, double 1.040000e+03>) ; 2 uses
  %i.dl = extractelement <2 x double> %i.dk, i64 0
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.aa, double 3.003000e+04)
  %i.dn = insertelement <2 x double> %i.cz, double %i.dm, i64 1
  %i.do = fdiv <2 x double> %i.dn, %i.da          ; 2 uses
  %i.dp = extractelement <2 x double> %i.do, i64 0
  store double %i.dp, ptr %i.ao, align 8, !tbaa !17
  %i.dq = extractelement <2 x double> %i.do, i64 1
  store double %i.dq, ptr %i.db, align 8, !tbaa !8
  %i.dr = insertelement <2 x double> %i.dk, double -2.944000e+03, i64 0
  %i.ds = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> %i.at, <2 x double> <double 4.680000e+02, double -1.287000e+03>)
  %i.dt = fdiv <2 x double> %i.ds, splat (double 1.351350e+05)
  store <2 x double> %i.dt, ptr %i.dd, align 8, !tbaa !8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.dv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> <double -6.400000e+01, double -8.448000e+03>, <2 x double> <double -6.240000e+02, double 4.992000e+03>) ; 2 uses
  %i.dw = shufflevector <2 x double> <double 5.952000e+03, double poison>, <2 x double> %i.dv, <2 x i32> <i32 0, i32 2>
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> %i.at, <2 x double> <double -1.164800e+04, double 4.576000e+03>)
  %i.dy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dx, <2 x double> %i.at, <2 x double> <double 9.152000e+03, double -6.864000e+03>)
  %i.dz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.at, <2 x double> <double -2.574000e+03, double 3.003000e+03>)
  %i.ea = fdiv <2 x double> %i.dz, splat (double 1.351350e+05)
  store <2 x double> %i.ea, ptr %i.du, align 8, !tbaa !8
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 328
  store double f0x3F48713C9AC504C0, ptr %i.eb, align 8, !tbaa !8
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ed = insertelement <2 x double> %i.dv, double 1.856000e+03, i64 0
  %i.ee = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> %i.at, <2 x double> <double -9.360000e+02, double -1.144000e+03>)
  %i.ef = fdiv <2 x double> %i.ee, splat (double 2.252250e+05)
  store <2 x double> %i.ef, ptr %i.ec, align 8, !tbaa !8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 360
  store double f0xBF61AAA9A0A0B047, ptr %i.eh, align 8, !tbaa !8
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ej = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> <double -1.440000e+03, double 3.584000e+03>, <2 x double> <double 4.160000e+03, double -3.328000e+03>) ; 2 uses
  %i.ek = insertelement <2 x double> %i.ej, double 1.024000e+03, i64 0
  %i.el = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %i.at, <2 x double> <double -2.080000e+02, double 1.144000e+03>)
  %i.em = fdiv <2 x double> %i.el, <double 1.051050e+05, double 3.153150e+05>
  store <2 x double> %i.em, ptr %i.ei, align 8, !tbaa !8
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 384
  store double f0xBF4F09B28BA4D955, ptr %i.en, align 8, !tbaa !8
  %i.eo = extractelement <2 x double> %i.ej, i64 0
  %i.ep = tail call double @llvm.fmuladd.f64(double %i.eo, double %i.aa, double -4.576000e+03)
  %i.eq = insertelement <2 x double> <double poison, double -2.560000e+03>, double %i.ep, i64 0
  %i.er = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> %i.at, <2 x double> <double 1.716000e+03, double 8.320000e+02>)
  %i.es = fdiv <2 x double> %i.er, <double 2.252250e+05, double 4.054050e+05> ; 2 uses
  %i.et = extractelement <2 x double> %i.es, i64 0
  store double %i.et, ptr %i.eg, align 8, !tbaa !8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ev = extractelement <2 x double> %i.es, i64 1
  store double %i.ev, ptr %i.eu, align 8, !tbaa !8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 400
  store double f0x3F5529855F363717, ptr %i.ew, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atanh(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, errnomem: readwrite, target_mem: none) uwtable
define void @geod_lineinit(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, double noundef %2, double noundef %3, double noundef %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca double, align 8                   ; 7 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = tail call double @remainder(double noundef %4, double noundef 3.600000e+02) #15 ; 2 uses
  %i.e = tail call double @llvm.fabs.f64(double %i.d)
  %i.f = fcmp oeq double %i.e, 1.800000e+02
  %i.g = tail call double @llvm.copysign.f64(double 1.800000e+02, double %4)
  %i.h = select i1 %i.f, double %i.g, double %i.d ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = tail call double @llvm.fabs.f64(double %i.h)
  store volatile double %i.i, ptr %i.b, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.0..0..0..0..0..0.2.i = load volatile double, ptr %i.b, align 8, !tbaa !8
  %i.j = fsub double 6.250000e-02, %.0..0..0..0..0..0.2.i
  store volatile double %i.j, ptr %i.c, align 8, !tbaa !8
  %.0..0..0..0..0..0..i = load volatile double, ptr %i.c, align 8, !tbaa !8
  %i.k = fcmp ogt double %.0..0..0..0..0..0..i, 0.000000e+00
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.0..0..0..0..0..0.1.i = load volatile double, ptr %i.c, align 8, !tbaa !8
  %i.l = fsub double 6.250000e-02, %.0..0..0..0..0..0.1.i
  br label %AngRound.exit

bb.c:                                             ; preds = %bb.a
  %.0..0..0..0..0..0.3.i = load volatile double, ptr %i.b, align 8, !tbaa !8
  br label %AngRound.exit

AngRound.exit:                                    ; preds = %bb.b, %bb.c
  %i.m = phi double [ %i.l, %bb.b ], [ %.0..0..0..0..0..0.3.i, %bb.c ]
  store volatile double %i.m, ptr %i.b, align 8, !tbaa !8
  %.0..0..0..0..0..0.4.i = load volatile double, ptr %i.b, align 8, !tbaa !8
  %i.n = tail call double @llvm.copysign.f64(double %.0..0..0..0..0..0.4.i, double %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !18
  %i.o = call double @remquo(double noundef %i.n, double noundef 9.000000e+01, ptr noundef nonnull %i.a) #15
  %i.p = load double, ptr @degree, align 8, !tbaa !8
  %i.q = fmul double %i.o, %i.p                   ; 2 uses
  %i.r = tail call double @sin(double noundef %i.q) #15 ; 4 uses
  %i.s = tail call double @cos(double noundef %i.q) #15 ; 4 uses
  %i.t = load i32, ptr %i.a, align 4, !tbaa !18
  %i.u = and i32 %i.t, 3
  switch i32 %i.u, label %default.unreachable [
    i32 0, label %sincosdx.exit
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.d:                                             ; preds = %AngRound.exit
  %i.v = fneg double %i.r
  br label %sincosdx.exit

bb.e:                                             ; preds = %AngRound.exit
  %i.w = fneg double %i.r
  %i.x = fneg double %i.s
  br label %sincosdx.exit

default.unreachable:                              ; preds = %AngRound.exit
  unreachable

bb.f:                                             ; preds = %AngRound.exit
  %i.y = fneg double %i.s
  br label %sincosdx.exit

sincosdx.exit:                                    ; preds = %AngRound.exit, %bb.f, %bb.e, %bb.d
  %.0 = phi double [ %i.y, %bb.f ], [ %i.s, %bb.d ], [ %i.w, %bb.e ], [ %i.r, %AngRound.exit ] ; 3 uses
  %i.z = phi double [ %i.r, %bb.f ], [ %i.v, %bb.d ], [ %i.x, %bb.e ], [ %i.s, %AngRound.exit ]
  %i.aa = fadd double %i.z, 0.000000e+00
  %i.ab = fcmp oeq double %.0, 0.000000e+00
  %i.ac = tail call double @llvm.copysign.f64(double %.0, double %i.h)
  %.1 = select i1 %i.ab, double %i.ac, double %.0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  tail call fastcc void @geod_lineinit_int(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3, double noundef %i.h, double noundef %.1, double noundef %i.aa, i32 noundef %5)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, errnomem: readwrite, target_mem: none) uwtable
define internal fastcc void @geod_lineinit_int(ptr nofree noundef initializes((0, 56), (72, 96), (504, 508)) %0, ptr nofree noundef readonly captures(none) %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, i32 noundef %7) unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca double, align 8                   ; 7 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !12
  %i.g = load <2 x double>, ptr %1, align 8, !tbaa !8
  store <2 x double> %i.g, ptr %i.d, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load <2 x double>, ptr %i.h, align 8, !tbaa !8
  store <2 x double> %i.j, ptr %i.i, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !13 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %i.l, ptr %i.m, align 8, !tbaa !19
  %.not = icmp eq i32 %7, 0
  %i.n = or i32 %7, 33408
  %i.o = select i1 %.not, i32 35723, i32 %i.n     ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i32 %i.o, ptr %i.p, align 8, !tbaa !21
  %i.q = tail call double @llvm.fabs.f64(double %2)
  %i.r = fcmp ogt double %i.q, 9.000000e+01
  %i.s = load double, ptr @NaN, align 8
end_hunk_0
