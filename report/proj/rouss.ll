Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/rouss?download=true
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
  store ptr @.str, ptr %i.d, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @_ZL9des_rouss, ptr %i.e, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store i32 1, ptr %i.f, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 380
  store i32 4, ptr %i.g, align 4, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  store i32 1, ptr %i.h, align 8, !tbaa !57
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
  store ptr %i.a, ptr %i.d, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !38
  %i.g = tail call noundef ptr @_Z14proj_mdist_inid(double noundef %i.f) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store ptr %i.g, ptr %i.h, align 8, !tbaa !40
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 4096)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !58 ; 3 uses
  %i.l = tail call double @sin(double noundef %i.k) #7 ; 3 uses
  %i.m = tail call double @cos(double noundef %i.k) #7
  %i.n = tail call noundef double @_Z10proj_mdistdddPKv(double noundef %i.k, double noundef %i.l, double noundef %i.m, ptr noundef nonnull %i.g)
  store double %i.n, ptr %i.a, align 8, !tbaa !41
  %i.o = load double, ptr %i.e, align 8, !tbaa !38
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
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.an = fmul double %i.l, %i.p                  ; 2 uses
  %i.ao = fsub double 1.000000e+00, %i.an         ; 3 uses
  %i.ap = tail call double @sqrt(double noundef %i.ao) #7
  %i.aq = fmul double %i.ao, %i.ao
  %i.ar = load double, ptr %i.q, align 8, !tbaa !59
  %i.as = load double, ptr %i.j, align 8, !tbaa !58
  %i.at = tail call double @tan(double noundef %i.as) #7 ; 5 uses
  %i.au = insertelement <2 x double> poison, double %i.an, i64 0
  %i.av = fdiv double %i.aq, %i.ar                ; 5 uses
  %i.aw = fmul double %i.av, 2.500000e-01         ; 2 uses
  store double %i.aw, ptr %i.r, align 8, !tbaa !42
  store double %i.aw, ptr %i.s, align 8, !tbaa !43
  %i.ax = insertelement <2 x double> poison, double %i.av, i64 0
  %i.ay = fdiv double %i.av, 1.200000e+01         ; 2 uses
  store double %i.ay, ptr %i.x, align 8, !tbaa !60
  %i.az = insertelement <2 x double> poison, double %i.at, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.av, i64 1 ; 2 uses
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bc = fmul <2 x double> %i.ba, %i.bb          ; 9 uses
  %i.bd = shufflevector <2 x double> %i.ax, <2 x double> %i.bc, <2 x i32> <i32 0, i32 2>
  %i.be = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = extractelement <2 x double> %i.bc, i64 1 ; 4 uses
  %i.bg = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.bh = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bi = fmul double %i.bf, 6.250000e-02
  store double %i.bi, ptr %i.ae, align 8, !tbaa !44
  %i.bj = shufflevector <2 x double> %i.bc, <2 x double> <double poison, double 1.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.bk = insertelement <2 x double> <double 1.200000e+02, double poison>, double %i.ap, i64 1
  %i.bl = fdiv <2 x double> %i.bj, %i.bk          ; 4 uses
  %i.bm = extractelement <2 x double> %i.bl, i64 1
  %i.bn = extractelement <2 x double> %i.bl, i64 0
  store double %i.bn, ptr %i.ab, align 8, !tbaa !45
  %i.bo = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bp = fmul <2 x double> %i.bo, <double 1.200000e+01, double 2.000000e+00> ; 2 uses
  %i.bq = shufflevector <2 x double> <double 1.200000e+01, double poison>, <2 x double> %i.bp, <2 x i32> <i32 0, i32 2>
  %i.br = insertelement <2 x double> %i.bp, double 2.400000e+02, i64 0
  %i.bs = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bt = fmul <2 x double> %i.bs, <double 2.400000e+01, double 8.000000e+00> ; 2 uses
  %i.bu = fmul <2 x double> %i.bs, <double 4.800000e+01, double 3.600000e+01>
  store double %i.ay, ptr %i.ah, align 8, !tbaa !46
  %i.bv = fmul <2 x double> %i.bo, <double 3.000000e+00, double 4.000000e+00> ; 2 uses
  %i.bw = insertelement <2 x double> %i.bv, double 2.400000e+02, i64 1
  %i.bx = shufflevector <2 x double> %i.bt, <2 x double> %i.bv, <2 x i32> <i32 1, i32 3>
  %i.by = fmul double %i.at, %i.at                ; 8 uses
  %i.bz = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.by, i64 0 ; 4 uses
  %i.ca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> <double 2.000000e+00, double 0.000000e+00>, <2 x double> <double -1.000000e+00, double 1.000000e+00>)
  %i.cb = insertelement <2 x double> %i.au, double %i.by, i64 1 ; 2 uses
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> <double -2.000000e+00, double 4.000000e+00>, <2 x double> %i.ca) ; 2 uses
  %i.cd = insertelement <2 x double> poison, double %i.by, i64 0 ; 2 uses
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer ; 7 uses
  %i.cf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> <double 1.200000e+01, double -2.000000e+00>, <2 x double> splat (double 1.100000e+01))
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %i.cf, <2 x double> <double -1.000000e+00, double -2.000000e+00>)
  %i.ch = fmul <2 x double> %i.bg, %i.cg          ; 2 uses
  %i.ci = shufflevector <2 x double> %i.bc, <2 x double> %i.ch, <2 x i32> <i32 1, i32 2>
  %i.cj = fdiv <2 x double> %i.ci, splat (double 2.400000e+01)
  store <2 x double> %i.cj, ptr %i.v, align 8, !tbaa !47
  %i.ck = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cl = insertelement <2 x double> %i.ck, double %i.at, i64 1
  %1 = fsub double 2.000000e+00, %i.by
  %2 = fmul <2 x double> %i.bd, %i.cc
  %i.cm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> <double 2.000000e+00, double 4.000000e+00>, <2 x double> <double 1.000000e+00, double 5.000000e+00>) ; 3 uses
  %i.cn = insertelement <2 x double> %i.cm, double 3.400000e+01, i64 1
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> <double -2.000000e+00, double 2.200000e+01>, <2 x double> %i.cn) ; 2 uses
  %i.cp = extractelement <2 x double> %i.co, i64 0
  %i.cq = fmul double %i.av, %i.cp
  %i.cr = fmul double %i.cq, 2.500000e-01         ; 2 uses
  store double %i.cr, ptr %i.y, align 8, !tbaa !48
  %i.cs = insertelement <2 x double> %i.cm, double %1, i64 0
  %i.ct = fmul <2 x double> %i.be, %i.cs
  %i.cu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> <double 6.000000e+00, double 1.200000e+01>, <2 x double> <double -5.000000e+00, double 1.900000e+01>)
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %i.cu, <2 x double> <double -2.000000e+00, double 5.000000e+00>)
  %i.cw = fmul <2 x double> %i.bh, %i.cv
  %i.cx = fdiv <2 x double> %i.cw, <double 4.800000e+01, double 2.400000e+01>
  store <2 x double> %i.cx, ptr %i.aa, align 8, !tbaa !47
  %i.cy = fadd double %i.by, 1.000000e+00
  %i.cz = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.da = shufflevector <2 x double> %i.co, <2 x double> <double poison, double 1.200000e+01>, <2 x i32> <i32 1, i32 3>
  %i.db = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %i.da, <2 x double> <double -3.000000e+00, double 1.300000e+01>) ; 2 uses
  %i.dc = shufflevector <2 x double> %i.cz, <2 x double> %i.db, <2 x i32> <i32 0, i32 2>
  %i.dd = fmul <2 x double> %i.bc, %i.dc          ; 2 uses
  %i.de = shufflevector <2 x double> %i.db, <2 x double> <double poison, double 1.600000e+01>, <2 x i32> <i32 1, i32 3>
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %i.de, <2 x double> <double 4.000000e+00, double 3.300000e+01>) ; 2 uses
  %i.dg = extractelement <2 x double> %i.df, i64 0
  %i.dh = fmul double %i.bf, %i.dg
  %i.di = fdiv double %i.dh, 2.400000e+01
  store double %i.di, ptr %i.ad, align 8, !tbaa !49
  %i.dj = fdiv <2 x double> %2, %i.bq             ; 2 uses
  %i.dk = extractelement <2 x double> %i.dj, i64 0
  store double %i.dk, ptr %i.u, align 8, !tbaa !61
  store <2 x double> %i.dj, ptr %i.t, align 8, !tbaa !47
  %i.dl = fdiv <2 x double> %i.cl, %i.br          ; 2 uses
  store <2 x double> %i.dl, ptr %i.w, align 8, !tbaa !47
  %i.dm = fdiv <2 x double> %i.ct, %i.bt
  store <2 x double> %i.dm, ptr %i.z, align 8, !tbaa !47
  %i.dn = fdiv <2 x double> %i.dd, %i.bw
  store <2 x double> %i.dn, ptr %i.ac, align 8, !tbaa !47
  %i.do = fmul double %i.at, %i.bf                ; 2 uses
  %i.dp = insertelement <2 x double> poison, double %i.do, i64 0
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dr = extractelement <2 x double> %i.dl, i64 1
  store double %i.dr, ptr %i.ag, align 8, !tbaa !50
  store double %i.cr, ptr %i.ai, align 8, !tbaa !51
  %foldExtExtBinop = fmul <2 x double> %i.bc, %i.cm
  %i.ds = shufflevector <2 x double> %i.dd, <2 x double> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.dt = fdiv <2 x double> %i.ds, %i.bx
  store <2 x double> %i.dt, ptr %i.aj, align 8, !tbaa !47
  %i.du = fmul double %i.by, %i.bf
  %i.dv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> <double 6.000000e+00, double 0.000000e+00>, <2 x double> <double 6.000000e+00, double 4.000000e+00>)
  %i.dw = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> %i.dv, <2 x double> <double 1.000000e+00, double 3.000000e+00>)
  %i.dy = insertelement <2 x double> %i.bg, double %i.du, i64 1
  %i.dz = fmul <2 x double> %i.dy, %i.dx
  %i.ea = fmul <2 x double> %i.dz, <double 6.250000e-02, double 1.250000e-01>
  store <2 x double> %i.ea, ptr %i.ak, align 8, !tbaa !47
  %i.eb = fneg double %i.by
  %i.ec = insertelement <2 x double> %i.cd, double %i.eb, i64 1
  %i.ed = shufflevector <2 x double> %i.df, <2 x double> <double poison, double 2.600000e+01>, <2 x i32> <i32 1, i32 3>
  %i.ee = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ec, <2 x double> %i.ed, <2 x double> <double 1.100000e+01, double 1.780000e+02>) ; 2 uses
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> %i.cc, <2 x i32> <i32 0, i32 3>
  %i.eg = fmul <2 x double> %i.dq, %i.ef
  %i.eh = fdiv <2 x double> %i.eg, %i.bu
  store <2 x double> %i.eh, ptr %i.af, align 8, !tbaa !47
  %i.ei = extractelement <2 x double> %i.ee, i64 1
  %i.ej = tail call double @llvm.fmuladd.f64(double %i.by, double %i.ei, double -2.100000e+01)
  %i.ek = fmul double %i.do, %i.ej
  %i.el = insertelement <2 x double> %i.bg, double %i.ek, i64 1
  %i.em = fdiv <2 x double> %i.el, <double 8.000000e+01, double 7.200000e+02>
  store <2 x double> %i.em, ptr %i.al, align 8, !tbaa !47
  %i.en = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> <double 4.800000e+01, double 0.000000e+00>, <2 x double> <double 8.600000e+01, double 4.400000e+01>)
  %i.eo = fmul double %i.bm, 9.600000e+01
  %i.ep = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> %i.en, <2 x double> <double 2.900000e+01, double 3.700000e+01>)
  %i.eq = fmul <2 x double> %i.dq, %i.ep
  %i.er = insertelement <2 x double> poison, double %i.eo, i64 0
  %i.es = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> zeroinitializer
  %i.et = fdiv <2 x double> %i.eq, %i.es
  store <2 x double> %i.et, ptr %i.am, align 8, !tbaa !47
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL15rouss_e_forward5PJ_LPP8PJconsts, ptr %i.eu, align 8, !tbaa !62
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL15rouss_e_inverse5PJ_XYP8PJconsts, ptr %i.ev, align 8, !tbaa !63
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr @_ZL19pj_rouss_destructorP8PJconstsi, ptr %i.ew, align 8, !tbaa !64
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 8 uses
  %i.c = tail call double @cos(double noundef %1) #7 ; 2 uses
  %i.d = tail call double @sin(double noundef %1) #7 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.g = tail call noundef double @_Z10proj_mdistdddPKv(double noundef %1, double noundef %i.d, double noundef %i.c, ptr noundef %i.f)
  %i.h = fmul double %0, %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.j = load double, ptr %i.i, align 8, !tbaa !38
  %i.k = fneg double %i.d
  %i.l = fmul double %i.j, %i.k
  %i.m = tail call double @llvm.fmuladd.f64(double %i.l, double %i.d, double 1.000000e+00)
  %i.n = tail call double @sqrt(double noundef %i.m) #7
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 488
  %i.p = load double, ptr %i.o, align 8, !tbaa !52 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %3 = load double, ptr %i.t, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.w = load <8 x double>, ptr %i.b, align 8, !tbaa !47 ; 6 uses
  %i.x = load double, ptr %i.q, align 8, !tbaa !42
  %i.y = extractelement <8 x double> %i.w, i64 0
  %i.z = extractelement <8 x double> %i.w, i64 4
  %i.aa = shufflevector <8 x double> %i.w, <8 x double> poison, <2 x i32> <i32 3, i32 poison>
  %i.ab = insertelement <2 x double> %i.aa, double 0.000000e+00, i64 1
  %i.ac = shufflevector <8 x double> %i.w, <8 x double> poison, <2 x i32> <i32 2, i32 7>
  %i.ad = shufflevector <8 x double> %i.w, <8 x double> poison, <2 x i32> <i32 5, i32 poison>
  %i.ae = insertelement <2 x double> %i.ad, double 0.000000e+00, i64 1
  %i.af = load <6 x double>, ptr %i.s, align 8, !tbaa !47 ; 3 uses
  %i.ag = load double, ptr %i.v, align 8, !tbaa !65
  %i.ah = load double, ptr %i.u, align 8, !tbaa !66
  %i.ai = load double, ptr %i.r, align 8, !tbaa !48
  %i.aj = shufflevector <6 x double> %i.af, <6 x double> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ak = shufflevector <8 x double> %i.w, <8 x double> %i.aj, <2 x i32> <i32 6, i32 10>
  %i.al = extractelement <6 x double> %i.af, i64 4
  %i.am = fdiv double %i.h, %i.n                  ; 2 uses
  %i.an = fmul double %i.p, %i.am
  %i.ao = fsub double %i.g, %i.y                  ; 5 uses
  %i.ap = insertelement <2 x double> poison, double %i.am, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.ao, i64 1 ; 2 uses
  %i.ar = fmul <2 x double> %i.aq, %i.aq          ; 5 uses
  %i.as = extractelement <2 x double> %i.ar, i64 1 ; 3 uses
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double %i.z, double %i.x)
  %i.au = tail call double @llvm.fmuladd.f64(double %i.as, double %i.at, double 1.000000e+00)
  %i.av = extractelement <2 x double> %i.ar, i64 0 ; 2 uses
  %i.aw = fneg double %i.av                       ; 2 uses
  %i.ax = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.ao, i64 0
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.ab, <2 x double> %i.ac)
  %i.az = shufflevector <2 x double> <double poison, double -0.000000e+00>, <2 x double> %i.ar, <2 x i32> <i32 3, i32 1>
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.ae, <2 x double> %i.ay)
  %i.bb = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.ak, <2 x double> %i.ba)
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.al, double %i.ai)
  %i.be = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %3, i64 1
  %i.bg = shufflevector <6 x double> %i.af, <6 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bh = insertelement <2 x double> %i.bg, double 1.000000e+00, i64 0
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.bf, <2 x double> %i.bh) ; 2 uses
  %i.bj = extractelement <2 x double> %i.bi, i64 0
  %i.bk = extractelement <2 x double> %i.bi, i64 1
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.as, double %i.bk, double %i.bj)
  %i.bm = fmul double %i.ao, %i.av
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.ag, double %i.ah)
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bn, double %i.bl)
  %i.bp = fmul double %i.ao, %i.bo
  %i.bq = insertelement <2 x double> %i.bb, double %i.aw, i64 0
  %i.br = insertelement <2 x double> poison, double %i.au, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.bp, i64 1
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.bc, <2 x double> %i.bs)
  %i.bu = insertelement <2 x double> poison, double %i.an, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %i.p, i64 1
  %i.bw = fmul <2 x double> %i.bv, %i.bt          ; 2 uses
  %i.bx = extractelement <2 x double> %i.bw, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %i.bx, 0
  %i.by = extractelement <2 x double> %i.bw, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.by, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL15rouss_e_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 488
  %i.d = load double, ptr %i.c, align 8, !tbaa !52 ; 2 uses
  %i.e = fdiv double %0, %i.d                     ; 3 uses
  %i.f = fdiv double %1, %i.d                     ; 12 uses
  %i.g = fmul double %i.e, %i.e                   ; 6 uses
  %i.h = fmul double %i.f, %i.f                   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.j = load double, ptr %i.i, align 8, !tbaa !43
  %i.k = fneg double %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.m = load <2 x double>, ptr %i.l, align 8, !tbaa !47 ; 2 uses
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
  %i.y = load double, ptr %i.x, align 8, !tbaa !49
  %i.z = tail call double @llvm.fmuladd.f64(double %i.y, double %i.h, double %i.w)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !68
  %i.ac = fneg double %i.g                        ; 2 uses
  %i.ad = fmul double %i.ab, %i.ac
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.f, double %i.z)
  %i.af = extractelement <2 x double> %i.r, i64 0
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.g, double %i.ae, double %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !44
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !69
  %i.al = fmul double %i.g, %i.ak
  %i.am = fneg double %i.f
  %i.an = fmul double %i.al, %i.am
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.h, double %i.an)
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.h, double %i.ao, double %i.ag)
  %i.aq = fmul double %i.e, %i.ap
  %i.ar = load double, ptr %i.b, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.at = load double, ptr %i.as, align 8, !tbaa !46
  %i.au = fneg double %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.aw = load double, ptr %i.av, align 8, !tbaa !70
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.h, double %i.au)
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.h, double %i.ax, double 1.000000e+00)
  %i.az = tail call double @llvm.fmuladd.f64(double %i.f, double %i.ay, double %i.ar)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !50
  %i.bc = fneg double %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.be = load double, ptr %i.bd, align 8, !tbaa !51
  %i.bf = fneg double %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !71
  %i.bi = fneg double %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !72
  %i.bl = fneg double %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !73
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.f, double %i.bn, double %i.bl)
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.f, double %i.bo, double %i.bi)
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.f, double %i.bp, double %i.bf)
  %i.br = tail call double @llvm.fmuladd.f64(double %i.f, double %i.bq, double %i.bc)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !74
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !75
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !76
  %i.by = tail call double @llvm.fmuladd.f64(double %i.f, double %i.bx, double %i.bv)
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.f, double %i.by, double %i.bt)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !77
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.cb, double %i.bz)
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.g, double %i.cc, double %i.br)
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.g, double %i.cd, double %i.az)
  %i.cf = load ptr, ptr %2, align 8, !tbaa !78
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !40
  %i.ci = tail call noundef double @_Z14proj_inv_mdistP6pj_ctxdPKv(ptr noundef %i.cf, double noundef %i.ce, ptr noundef %i.ch) ; 3 uses
  %i.cj = tail call double @sin(double noundef %i.ci) #7 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !38
  %i.cm = fneg double %i.cj
  %i.cn = fmul double %i.cl, %i.cm
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.cj, double 1.000000e+00)
  %i.cp = tail call double @sqrt(double noundef %i.co) #7
  %i.cq = fmul double %i.aq, %i.cp
  %i.cr = tail call double @cos(double noundef %i.ci) #7
  %i.cs = fdiv double %i.cq, %i.cr
  %.fca.0.insert = insertvalue { double, double } poison, double %i.cs, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.ci, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZL19pj_rouss_destructorP8PJconstsi(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.f) #7
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d, %bb.b
  %.sink = phi i32 [ %1, %bb.b ], [ 4096, %bb.d ], [ 4096, %bb.c ]
  %i.g = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef %.sink)
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.g, %.sink.split ]
  ret ptr %.0
}

declare noundef double @_Z14proj_inv_mdistP6pj_ctxdPKv(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0,1) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

end_hunk_0
