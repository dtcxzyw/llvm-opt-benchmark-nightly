begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZL9des_rouss = internal constant [34 x i8] c"Roussilhe Stereographic\0A\09Azi, Ell\00", align 16
@pj_s_rouss = hidden local_unnamed_addr constant ptr @_ZL9des_rouss, align 8
@.str = private unnamed_addr constant [6 x i8] c"rouss\00", align 1

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @pj_rouss(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_Z34pj_projection_specific_setup_roussP8PJconsts(ptr noundef nonnull %0)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_Z6pj_newv()      ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @.str, ptr %i.d, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @_ZL9des_rouss, ptr %i.e, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store i32 1, ptr %i.f, align 8, !tbaa !39
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
define hidden noundef ptr @_Z34pj_projection_specific_setup_roussP8PJconsts(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(280) ptr @calloc(i64 noundef 1, i64 noundef 280) #6 ; 26 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef %0, i32 noundef 4096)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.a, ptr %i.d, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !43
  %i.g = tail call noundef ptr @_Z14proj_mdist_inid(double noundef %i.f) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store ptr %i.g, ptr %i.h, align 8, !tbaa !44
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 4096)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !46 ; 3 uses
  %i.l = tail call double @sin(double noundef %i.k) #7 ; 3 uses
  %i.m = tail call double @cos(double noundef %i.k) #7
  %i.n = tail call noundef double @_Z10proj_mdistdddPKv(double noundef %i.k, double noundef %i.l, double noundef %i.m, ptr noundef nonnull %i.g)
  store double %i.n, ptr %i.a, align 8, !tbaa !47
  %i.o = load double, ptr %i.e, align 8, !tbaa !43
  %i.p = fmul double %i.l, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.aa = fmul double %i.l, %i.p                  ; 2 uses
  %i.ab = fsub double 1.000000e+00, %i.aa         ; 3 uses
  %i.ac = tail call double @sqrt(double noundef %i.ab) #7
  %i.ad = fdiv double 1.000000e+00, %i.ac         ; 6 uses
  %i.ae = fmul double %i.ab, %i.ab
  %i.af = load double, ptr %i.q, align 8, !tbaa !48
  %i.ag = fdiv double %i.ae, %i.af                ; 5 uses
  %i.ah = load double, ptr %i.j, align 8, !tbaa !46
  %i.ai = tail call double @tan(double noundef %i.ah) #7 ; 5 uses
  %i.aj = fmul double %i.ai, %i.ai                ; 9 uses
  %i.ak = fmul double %i.ag, 2.500000e-01         ; 2 uses
  store double %i.ak, ptr %i.r, align 8, !tbaa !49
  store double %i.ak, ptr %i.s, align 8, !tbaa !50
  %i.al = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.aj, i64 0 ; 6 uses
  %i.am = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> <double 2.000000e+00, double 0.000000e+00>, <2 x double> <double -1.000000e+00, double 1.000000e+00>)
  %i.an = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.aj, i64 1 ; 2 uses
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> <double -2.000000e+00, double 4.000000e+00>, <2 x double> %i.am) ; 2 uses
  %i.aq = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ar = fmul double %i.ad, 1.200000e+01
  %i.as = insertelement <2 x double> <double 1.200000e+01, double poison>, double %i.ar, i64 1
  %i.at = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> <double 1.200000e+01, double -2.000000e+00>, <2 x double> splat (double 1.100000e+01)) ; 2 uses
  %i.aw = extractelement <2 x double> %i.av, i64 0
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.aw, double -1.000000e+00)
  %i.ay = fmul double %i.ad, 2.000000e+00
  %i.az = insertelement <2 x double> <double 2.400000e+02, double poison>, double %i.ay, i64 1
  %i.ba = shufflevector <2 x double> %i.av, <2 x double> <double poison, double 2.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> %i.ba, <2 x double> <double -2.000000e+00, double 1.000000e+00>) ; 3 uses
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> <double poison, double 5.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> <double -2.000000e+00, double 4.000000e+00>, <2 x double> %i.bc) ; 2 uses
  %i.be = extractelement <2 x double> %i.bd, i64 0
  %i.bf = fmul double %i.ag, %i.be
  %i.bg = fmul double %i.bf, 2.500000e-01         ; 2 uses
  store double %i.bg, ptr %i.y, align 8, !tbaa !51
  %i.bh = fsub double 2.000000e+00, %i.aj
  %i.bi = insertelement <2 x double> %i.bd, double %i.bh, i64 0
  %i.bj = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.bk = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bl = fmul <2 x double> %i.bk, <double 2.400000e+01, double 8.000000e+00> ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> <double 6.000000e+00, double 1.200000e+01>, <2 x double> <double -5.000000e+00, double 1.900000e+01>)
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> %i.bn, <2 x double> <double -2.000000e+00, double 5.000000e+00>)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.bq = fmul double %i.ad, 3.000000e+00
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.bs = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.bt = insertelement <2 x double> %i.bs, double %i.ag, i64 1 ; 2 uses
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bv = fmul <2 x double> %i.bt, %i.bu          ; 9 uses
  %i.bw = extractelement <2 x double> %i.bv, i64 1 ; 4 uses
  %i.bx = shufflevector <2 x double> %i.aq, <2 x double> %i.bv, <2 x i32> <i32 0, i32 2>
  %i.by = fmul <2 x double> %i.bx, %i.ap
  %i.bz = fdiv <2 x double> %i.by, %i.as          ; 2 uses
  %i.ca = extractelement <2 x double> %i.bz, i64 0
  store double %i.ca, ptr %i.u, align 8, !tbaa !52
  store <2 x double> %i.bz, ptr %i.t, align 8, !tbaa !53
  %i.cb = fmul double %i.bw, %i.ax
  %i.cc = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cd = insertelement <2 x double> %i.cc, double %i.cb, i64 1
  %i.ce = fdiv <2 x double> %i.cd, splat (double 2.400000e+01)
  store <2 x double> %i.ce, ptr %i.v, align 8, !tbaa !53
  %i.cf = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cg = fmul <2 x double> %i.cf, %i.bi
  %i.ch = fdiv <2 x double> %i.cg, %i.bl
  store <2 x double> %i.ch, ptr %i.z, align 8, !tbaa !53
  %i.ci = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cj = fmul <2 x double> %i.ci, %i.bo
  %i.ck = fdiv <2 x double> %i.cj, <double 4.800000e+01, double 2.400000e+01>
  store <2 x double> %i.ck, ptr %i.bm, align 8, !tbaa !53
  %i.cl = insertelement <2 x double> %i.bv, double %i.ag, i64 0
  %i.cm = fdiv <2 x double> %i.cl, <double 1.200000e+01, double 1.200000e+02> ; 2 uses
  %i.cn = extractelement <2 x double> %i.cm, i64 0 ; 2 uses
  store double %i.cn, ptr %i.x, align 8, !tbaa !54
  %i.co = extractelement <2 x double> %i.cm, i64 1
  store double %i.co, ptr %i.bp, align 8, !tbaa !55
  %i.cp = fadd double %i.aj, 1.000000e+00         ; 2 uses
  %i.cq = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.cr = insertelement <2 x double> <double poison, double 2.400000e+02>, double %i.bq, i64 0
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> <double 2.200000e+01, double 1.200000e+01>, <2 x double> <double 3.400000e+01, double 1.300000e+01>)
  %i.ct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> %i.cs, <2 x double> <double -3.000000e+00, double 4.000000e+00>) ; 2 uses
  %i.cu = shufflevector <2 x double> %i.cq, <2 x double> %i.ct, <2 x i32> <i32 0, i32 2>
  %i.cv = fmul <2 x double> %i.bv, %i.cu
  %i.cw = fdiv <2 x double> %i.cv, %i.cr
  store <2 x double> %i.cw, ptr %i.br, align 8, !tbaa !53
  %i.cx = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.cy = shufflevector <2 x double> %i.bb, <2 x double> %i.ct, <2 x i32> <i32 0, i32 3>
  %i.cz = fmul <2 x double> %i.cx, %i.cy          ; 2 uses
  %i.da = insertelement <2 x double> %i.cz, double %i.ai, i64 1
  %i.db = fdiv <2 x double> %i.da, %i.az          ; 2 uses
  store <2 x double> %i.db, ptr %i.w, align 8, !tbaa !53
  %i.dc = extractelement <2 x double> %i.cz, i64 1
  %i.dd = fdiv double %i.dc, 2.400000e+01
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store double %i.dd, ptr %i.de, align 8, !tbaa !56
  %i.df = fmul double %i.bw, 6.250000e-02
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store double %i.df, ptr %i.dg, align 8, !tbaa !57
  %i.dh = fmul double %i.ai, %i.bw                ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %1 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> <double 1.600000e+01, double 0.000000e+00>, <2 x double> <double 3.300000e+01, double 0.000000e+00>)
  %2 = insertelement <2 x double> %i.ap, double 1.100000e+01, i64 0
  %3 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %1, <2 x double> %2)
  %i.dj = insertelement <2 x double> poison, double %i.dh, i64 0
  %i.dk = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %4 = fmul <2 x double> %i.dk, %3
  %i.dl = fmul <2 x double> %i.bk, <double 4.800000e+01, double 3.600000e+01>
  %5 = fdiv <2 x double> %4, %i.dl
  store <2 x double> %5, ptr %i.di, align 8, !tbaa !53
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.dn = extractelement <2 x double> %i.db, i64 1
  store double %i.dn, ptr %i.dm, align 8, !tbaa !58
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store double %i.cn, ptr %i.do, align 8, !tbaa !59
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store double %i.bg, ptr %i.dp, align 8, !tbaa !60
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.dr = fmul double %i.ad, 4.000000e+00
  %i.ds = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = insertelement <2 x double> %i.bb, double %i.cp, i64 0
  %i.du = fmul <2 x double> %i.ds, %i.dt
  %i.dv = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dw = insertelement <2 x double> %i.dv, double %i.dr, i64 1
  %i.dx = fdiv <2 x double> %i.du, %i.dw
  store <2 x double> %i.dx, ptr %i.dq, align 8, !tbaa !53
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.dz = fmul double %i.aj, %i.bw
  %i.ea = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> <double 6.000000e+00, double 0.000000e+00>, <2 x double> <double 6.000000e+00, double 4.000000e+00>)
  %i.eb = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ec = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %i.ea, <2 x double> <double 1.000000e+00, double 3.000000e+00>)
  %i.ed = insertelement <2 x double> %i.cx, double %i.dz, i64 1
  %i.ee = fmul <2 x double> %i.ed, %i.ec
  %i.ef = fmul <2 x double> %i.ee, <double 6.250000e-02, double 1.250000e-01>
  store <2 x double> %i.ef, ptr %i.dy, align 8, !tbaa !53
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.eh = fneg double %i.aj
  %6 = tail call double @llvm.fmuladd.f64(double %i.eh, double 2.600000e+01, double 1.780000e+02)
  %7 = tail call double @llvm.fmuladd.f64(double %i.aj, double %6, double -2.100000e+01)
  %i.ei = fmul double %i.dh, %7
  %i.ej = insertelement <2 x double> %i.cx, double %i.ei, i64 1
  %i.ek = fdiv <2 x double> %i.ej, <double 8.000000e+01, double 7.200000e+02>
  store <2 x double> %i.ek, ptr %i.eg, align 8, !tbaa !53
  %i.el = fmul double %i.ad, 9.600000e+01
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.en = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> <double 4.800000e+01, double 0.000000e+00>, <2 x double> <double 8.600000e+01, double 4.400000e+01>)
  %i.eo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %i.en, <2 x double> <double 2.900000e+01, double 3.700000e+01>)
  %i.ep = fmul <2 x double> %i.dk, %i.eo
  %i.eq = insertelement <2 x double> poison, double %i.el, i64 0
  %i.er = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.es = fdiv <2 x double> %i.ep, %i.er
  store <2 x double> %i.es, ptr %i.em, align 8, !tbaa !53
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL15rouss_e_forward5PJ_LPP8PJconsts, ptr %i.et, align 8, !tbaa !61
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL15rouss_e_inverse5PJ_XYP8PJconsts, ptr %i.eu, align 8, !tbaa !62
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr @_ZL19pj_rouss_destructorP8PJconstsi, ptr %i.ev, align 8, !tbaa !63
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.e ], [ %i.i, %bb.d ]
  ret ptr %.0
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_Z14proj_mdist_inid(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #3

declare noundef double @_Z10proj_mdistdddPKv(double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL15rouss_e_forward5PJ_LPP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 8 uses
  %i.c = tail call double @cos(double noundef %1) #7 ; 2 uses
  %i.d = tail call double @sin(double noundef %1) #7 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.g = tail call noundef double @_Z10proj_mdistdddPKv(double noundef %1, double noundef %i.d, double noundef %i.c, ptr noundef %i.f)
  %i.h = fmul double %0, %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.j = load double, ptr %i.i, align 8, !tbaa !43
  %i.k = fneg double %i.d
  %i.l = fmul double %i.j, %i.k
  %i.m = tail call double @llvm.fmuladd.f64(double %i.l, double %i.d, double 1.000000e+00)
  %i.n = tail call double @sqrt(double noundef %i.m) #7
  %i.o = fdiv double %i.h, %i.n                   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 488
  %i.q = load double, ptr %i.p, align 8, !tbaa !64 ; 2 uses
  %i.r = fmul double %i.q, %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.w = load double, ptr %i.v, align 8, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.z = load <8 x double>, ptr %i.b, align 8, !tbaa !53 ; 6 uses
  %i.aa = load double, ptr %i.s, align 8, !tbaa !49
  %i.ab = fmul double %i.o, %i.o                  ; 4 uses
  %i.ac = extractelement <8 x double> %i.z, i64 0
  %i.ad = fsub double %i.g, %i.ac                 ; 6 uses
  %i.ae = fneg double %i.ab                       ; 2 uses
  %i.af = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.ad, i64 0
  %i.ag = shufflevector <8 x double> %i.z, <8 x double> poison, <2 x i32> <i32 3, i32 poison>
  %i.ah = insertelement <2 x double> %i.ag, double 0.000000e+00, i64 1
  %i.ai = shufflevector <8 x double> %i.z, <8 x double> poison, <2 x i32> <i32 2, i32 7>
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> %i.ah, <2 x double> %i.ai)
  %i.ak = fmul double %i.ad, %i.ab
  %i.al = fmul double %i.ad, %i.ad                ; 5 uses
  %i.am = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.al, i64 0
  %i.an = shufflevector <8 x double> %i.z, <8 x double> poison, <2 x i32> <i32 5, i32 poison>
  %i.ao = insertelement <2 x double> %i.an, double 0.000000e+00, i64 1
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.ao, <2 x double> %i.aj)
  %i.aq = load <6 x double>, ptr %i.u, align 8, !tbaa !53 ; 3 uses
  %i.ar = load double, ptr %i.y, align 8, !tbaa !65
  %i.as = load double, ptr %i.x, align 8, !tbaa !66
  %i.at = load double, ptr %i.t, align 8, !tbaa !51
  %i.au = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aw = shufflevector <6 x double> %i.aq, <6 x double> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ax = shufflevector <8 x double> %i.z, <8 x double> %i.aw, <2 x i32> <i32 6, i32 10>
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.ax, <2 x double> %i.ap)
  %i.az = extractelement <6 x double> %i.aq, i64 4
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.az, double %i.at)
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.ba, double 1.000000e+00)
  %i.bc = extractelement <6 x double> %i.aq, i64 0
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.al, double %i.w, double %i.bc)
  %i.be = tail call double @llvm.fmuladd.f64(double %i.al, double %i.bd, double %i.bb)
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.ar, double %i.as)
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.bf, double %i.be)
  %i.bh = extractelement <8 x double> %i.z, i64 4
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.al, double %i.bh, double %i.aa)
  %i.bj = fmul double %i.ad, %i.bg
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.al, double %i.bi, double 1.000000e+00)
  %i.bl = insertelement <2 x double> %i.av, double %i.ae, i64 0
  %i.bm = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.bn = insertelement <2 x double> %i.bm, double %i.bj, i64 1
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> %i.ay, <2 x double> %i.bn)
  %i.bp = insertelement <2 x double> poison, double %i.r, i64 0
  %i.bq = insertelement <2 x double> %i.bp, double %i.q, i64 1
  %i.br = fmul <2 x double> %i.bq, %i.bo          ; 2 uses
  %i.bs = extractelement <2 x double> %i.br, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %i.bs, 0
  %i.bt = extractelement <2 x double> %i.br, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.bt, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL15rouss_e_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 488
  %i.d = load double, ptr %i.c, align 8, !tbaa !64 ; 2 uses
  %i.e = fdiv double %0, %i.d                     ; 3 uses
  %i.f = fdiv double %1, %i.d                     ; 12 uses
  %i.g = fmul double %i.e, %i.e                   ; 6 uses
  %i.h = fmul double %i.f, %i.f                   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.j = load double, ptr %i.i, align 8, !tbaa !50
  %i.k = fneg double %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.m = load <2 x double>, ptr %i.l, align 8, !tbaa !53 ; 2 uses
  %i.n = insertelement <2 x double> %i.m, double %i.k, i64 0
  %i.o = insertelement <2 x double> poison, double %i.h, i64 0
  %i.p = insertelement <2 x double> %i.o, double %i.f, i64 1
  %i.q = shufflevector <2 x double> %i.m, <2 x double> <double 1.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.r = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.p, <2 x double> %i.q) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.t = load double, ptr %i.s, align 8, !tbaa !67
  %i.u = fneg double %i.t
  %i.v = extractelement <2 x double> %i.r, i64 1
  %i.w = tail call double @llvm.fmuladd.f64(double %i.u, double %i.g, double %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.y = load double, ptr %i.x, align 8, !tbaa !56
  %i.z = tail call double @llvm.fmuladd.f64(double %i.y, double %i.h, double %i.w)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !68
  %i.ac = fneg double %i.g                        ; 2 uses
  %i.ad = fmul double %i.ab, %i.ac
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.f, double %i.z)
  %i.af = extractelement <2 x double> %i.r, i64 0
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.g, double %i.ae, double %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !57
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !69
  %i.al = fmul double %i.g, %i.ak
  %i.am = fneg double %i.f
  %i.an = fmul double %i.al, %i.am
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.h, double %i.an)
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.h, double %i.ao, double %i.ag)
  %i.aq = fmul double %i.e, %i.ap
  %i.ar = load double, ptr %i.b, align 8, !tbaa !47
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.at = load double, ptr %i.as, align 8, !tbaa !59
  %i.au = fneg double %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.aw = load double, ptr %i.av, align 8, !tbaa !70
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.h, double %i.au)
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.h, double %i.ax, double 1.000000e+00)
  %i.az = tail call double @llvm.fmuladd.f64(double %i.f, double %i.ay, double %i.ar)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !58
  %i.bc = fneg double %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.be = load double, ptr %i.bd, align 8, !tbaa !60
  %i.bf = fneg double %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !71
  %i.bi = fneg double %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !72
  %i.bl = fneg double %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 264
end_hunk_0
