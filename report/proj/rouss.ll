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
  %i.bc = fmul <2 x double> %i.ba, %i.bb          ; 8 uses
  %i.bd = shufflevector <2 x double> %i.ax, <2 x double> %i.bc, <2 x i32> <i32 0, i32 2>
  %i.be = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = extractelement <2 x double> %i.bc, i64 1 ; 5 uses
  %1 = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> <i32 1, i32 poison> ; 3 uses
  %i.bg = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bh = fmul double %i.bf, 6.250000e-02
  store double %i.bh, ptr %i.ae, align 8, !tbaa !44
  %i.bi = shufflevector <2 x double> %i.bc, <2 x double> <double poison, double 1.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.bj = insertelement <2 x double> <double 1.200000e+02, double poison>, double %i.ap, i64 1
  %i.bk = fdiv <2 x double> %i.bi, %i.bj          ; 4 uses
  %i.bl = extractelement <2 x double> %i.bk, i64 1
  %i.bm = extractelement <2 x double> %i.bk, i64 0
  store double %i.bm, ptr %i.ab, align 8, !tbaa !45
  %i.bn = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bo = fmul <2 x double> %i.bn, <double 1.200000e+01, double 2.000000e+00> ; 2 uses
  %i.bp = shufflevector <2 x double> <double 1.200000e+01, double poison>, <2 x double> %i.bo, <2 x i32> <i32 0, i32 2>
  %i.bq = insertelement <2 x double> %i.bo, double 2.400000e+02, i64 0
  %i.br = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bs = fmul <2 x double> %i.br, <double 2.400000e+01, double 8.000000e+00> ; 2 uses
  %i.bt = fmul <2 x double> %i.br, <double 4.800000e+01, double 3.600000e+01>
  store double %i.ay, ptr %i.ah, align 8, !tbaa !46
  %i.bu = fmul <2 x double> %i.bn, <double 3.000000e+00, double 4.000000e+00> ; 2 uses
  %i.bv = insertelement <2 x double> %i.bu, double 2.400000e+02, i64 1
  %i.bw = shufflevector <2 x double> %i.bs, <2 x double> %i.bu, <2 x i32> <i32 1, i32 3>
  %i.bx = fmul double %i.at, %i.at                ; 8 uses
  %i.by = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.bx, i64 0 ; 4 uses
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> <double 2.000000e+00, double 0.000000e+00>, <2 x double> <double -1.000000e+00, double 1.000000e+00>)
  %i.ca = insertelement <2 x double> %i.au, double %i.bx, i64 1 ; 2 uses
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> <double -2.000000e+00, double 4.000000e+00>, <2 x double> %i.bz) ; 2 uses
  %i.cc = insertelement <2 x double> poison, double %i.bx, i64 0 ; 2 uses
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer ; 7 uses
  %i.ce = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> <double 1.200000e+01, double -2.000000e+00>, <2 x double> splat (double 1.100000e+01)) ; 2 uses
  %2 = extractelement <2 x double> %i.ce, i64 0
  %3 = tail call double @llvm.fmuladd.f64(double %i.bx, double %2, double -1.000000e+00)
  %4 = fmul double %i.bf, %3
  %5 = insertelement <2 x double> %1, double %4, i64 1
  %i.cf = fdiv <2 x double> %5, splat (double 2.400000e+01)
  store <2 x double> %i.cf, ptr %i.v, align 8, !tbaa !47
  %6 = shufflevector <2 x double> %i.ce, <2 x double> <double poison, double 2.000000e+00>, <2 x i32> <i32 1, i32 3>
  %7 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %6, <2 x double> <double -2.000000e+00, double 1.000000e+00>) ; 3 uses
  %8 = extractelement <2 x double> %7, i64 0
  %9 = fmul double %i.bf, %8
  %10 = insertelement <2 x double> poison, double %9, i64 0
  %i.cg = insertelement <2 x double> %10, double %i.at, i64 1
  %11 = shufflevector <2 x double> %7, <2 x double> <double poison, double 5.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.ch = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> <double -2.000000e+00, double 4.000000e+00>, <2 x double> %11) ; 2 uses
  %i.ci = extractelement <2 x double> %i.ch, i64 0
  %i.cj = fmul double %i.av, %i.ci
  %i.ck = fmul double %i.cj, 2.500000e-01         ; 2 uses
  store double %i.ck, ptr %i.y, align 8, !tbaa !48
  %12 = fsub double 2.000000e+00, %i.bx
  %13 = fmul <2 x double> %i.bd, %i.cb
  %i.cl = insertelement <2 x double> %i.ch, double %12, i64 0
  %i.cm = fmul <2 x double> %i.be, %i.cl
  %i.cn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> <double 6.000000e+00, double 1.200000e+01>, <2 x double> <double -5.000000e+00, double 1.900000e+01>)
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %i.cn, <2 x double> <double -2.000000e+00, double 5.000000e+00>)
  %i.cp = fmul <2 x double> %i.bg, %i.co
  %i.cq = fdiv <2 x double> %i.cp, <double 4.800000e+01, double 2.400000e+01>
  store <2 x double> %i.cq, ptr %i.aa, align 8, !tbaa !47
  %i.cr = fadd double %i.bx, 1.000000e+00
  %i.cs = insertelement <2 x double> poison, double %i.cr, i64 0
  %14 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> <double 2.200000e+01, double 1.200000e+01>, <2 x double> <double 3.400000e+01, double 1.300000e+01>)
  %i.ct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %14, <2 x double> <double -3.000000e+00, double 4.000000e+00>) ; 2 uses
  %i.cu = shufflevector <2 x double> %i.cs, <2 x double> %i.ct, <2 x i32> <i32 0, i32 2>
  %i.cv = fmul <2 x double> %i.bc, %i.cu          ; 2 uses
  %i.cw = fdiv <2 x double> %13, %i.bp            ; 2 uses
  %i.cx = extractelement <2 x double> %i.cw, i64 0
  store double %i.cx, ptr %i.u, align 8, !tbaa !61
  store <2 x double> %i.cw, ptr %i.t, align 8, !tbaa !47
  %i.cy = fdiv <2 x double> %i.cg, %i.bq          ; 2 uses
  store <2 x double> %i.cy, ptr %i.w, align 8, !tbaa !47
  %i.cz = fdiv <2 x double> %i.cm, %i.bs
  store <2 x double> %i.cz, ptr %i.z, align 8, !tbaa !47
  %i.da = fdiv <2 x double> %i.cv, %i.bv
  store <2 x double> %i.da, ptr %i.ac, align 8, !tbaa !47
  %i.db = fmul double %i.at, %i.bf                ; 2 uses
  %i.dc = insertelement <2 x double> poison, double %i.db, i64 0
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.de = extractelement <2 x double> %i.cy, i64 1
  store double %i.de, ptr %i.ag, align 8, !tbaa !49
  store double %i.ck, ptr %i.ai, align 8, !tbaa !50
  %15 = shufflevector <2 x double> %7, <2 x double> %i.ct, <2 x i32> <i32 1, i32 3>
  %i.df = fmul <2 x double> %i.bc, %15            ; 2 uses
  %16 = extractelement <2 x double> %i.df, i64 1
  %17 = fdiv double %16, 2.400000e+01
  store double %17, ptr %i.ad, align 8, !tbaa !51
  %i.dg = shufflevector <2 x double> %i.cv, <2 x double> %i.df, <2 x i32> <i32 0, i32 2>
  %i.dh = fdiv <2 x double> %i.dg, %i.bw
  store <2 x double> %i.dh, ptr %i.aj, align 8, !tbaa !47
  %i.di = fmul double %i.bx, %i.bf
  %i.dj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> <double 6.000000e+00, double 0.000000e+00>, <2 x double> <double 6.000000e+00, double 4.000000e+00>)
  %i.dk = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.dj, <2 x double> <double 1.000000e+00, double 3.000000e+00>)
  %i.dm = insertelement <2 x double> %1, double %i.di, i64 1
  %i.dn = fmul <2 x double> %i.dm, %i.dl
  %i.do = fmul <2 x double> %i.dn, <double 6.250000e-02, double 1.250000e-01>
  store <2 x double> %i.do, ptr %i.ak, align 8, !tbaa !47
  %i.dp = fneg double %i.bx
  %i.dq = insertelement <2 x double> %i.cc, double %i.dp, i64 1
  %18 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dq, <2 x double> <double 1.600000e+01, double 2.600000e+01>, <2 x double> <double 3.300000e+01, double 1.780000e+02>)
  %i.dr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %18, <2 x double> <double 1.100000e+01, double -2.100000e+01>) ; 2 uses
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> %i.cb, <2 x i32> <i32 0, i32 3>
  %i.dt = fmul <2 x double> %i.dd, %i.ds
  %i.du = fdiv <2 x double> %i.dt, %i.bt
  store <2 x double> %i.du, ptr %i.af, align 8, !tbaa !47
  %i.dv = extractelement <2 x double> %i.dr, i64 1
  %i.dw = fmul double %i.db, %i.dv
  %i.dx = insertelement <2 x double> %1, double %i.dw, i64 1
  %i.dy = fdiv <2 x double> %i.dx, <double 8.000000e+01, double 7.200000e+02>
  store <2 x double> %i.dy, ptr %i.al, align 8, !tbaa !47
  %i.dz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> <double 4.800000e+01, double 0.000000e+00>, <2 x double> <double 8.600000e+01, double 4.400000e+01>)
  %i.ea = fmul double %i.bl, 9.600000e+01
  %i.eb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.dz, <2 x double> <double 2.900000e+01, double 3.700000e+01>)
  %i.ec = fmul <2 x double> %i.dd, %i.eb
  %i.ed = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.ee = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ef = fdiv <2 x double> %i.ec, %i.ee
  store <2 x double> %i.ef, ptr %i.am, align 8, !tbaa !47
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL15rouss_e_forward5PJ_LPP8PJconsts, ptr %i.eg, align 8, !tbaa !62
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL15rouss_e_inverse5PJ_XYP8PJconsts, ptr %i.eh, align 8, !tbaa !63
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr @_ZL19pj_rouss_destructorP8PJconstsi, ptr %i.ei, align 8, !tbaa !64
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
  %i.u = load double, ptr %i.t, align 8, !tbaa !45
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.x = load <8 x double>, ptr %i.b, align 8, !tbaa !47 ; 6 uses
  %i.y = load double, ptr %i.q, align 8, !tbaa !42
  %i.z = extractelement <8 x double> %i.x, i64 0
  %i.aa = extractelement <8 x double> %i.x, i64 4
  %i.ab = shufflevector <8 x double> %i.x, <8 x double> poison, <2 x i32> <i32 3, i32 poison>
  %i.ac = insertelement <2 x double> %i.ab, double 0.000000e+00, i64 1
  %i.ad = shufflevector <8 x double> %i.x, <8 x double> poison, <2 x i32> <i32 2, i32 7>
  %i.ae = shufflevector <8 x double> %i.x, <8 x double> poison, <2 x i32> <i32 5, i32 poison>
  %i.af = insertelement <2 x double> %i.ae, double 0.000000e+00, i64 1
  %i.ag = load <6 x double>, ptr %i.s, align 8, !tbaa !47 ; 3 uses
  %i.ah = load double, ptr %i.w, align 8, !tbaa !65
  %i.ai = load double, ptr %i.v, align 8, !tbaa !66
  %i.aj = load double, ptr %i.r, align 8, !tbaa !48
  %i.ak = shufflevector <6 x double> %i.ag, <6 x double> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.al = shufflevector <8 x double> %i.x, <8 x double> %i.ak, <2 x i32> <i32 6, i32 10>
  %i.am = extractelement <6 x double> %i.ag, i64 4
  %i.an = fdiv double %i.h, %i.n                  ; 2 uses
  %i.ao = fmul double %i.p, %i.an
  %i.ap = fsub double %i.g, %i.z                  ; 5 uses
  %i.aq = insertelement <2 x double> poison, double %i.an, i64 0
  %i.ar = insertelement <2 x double> %i.aq, double %i.ap, i64 1 ; 2 uses
  %i.as = fmul <2 x double> %i.ar, %i.ar          ; 5 uses
  %i.at = extractelement <2 x double> %i.as, i64 1 ; 3 uses
  %i.au = tail call double @llvm.fmuladd.f64(double %i.at, double %i.aa, double %i.y)
  %i.av = tail call double @llvm.fmuladd.f64(double %i.at, double %i.au, double 1.000000e+00)
  %i.aw = extractelement <2 x double> %i.as, i64 0 ; 2 uses
  %i.ax = fneg double %i.aw                       ; 2 uses
  %i.ay = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.ap, i64 0
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.ac, <2 x double> %i.ad)
  %i.ba = shufflevector <2 x double> <double poison, double -0.000000e+00>, <2 x double> %i.as, <2 x i32> <i32 3, i32 1>
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.af, <2 x double> %i.az)
  %i.bc = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.al, <2 x double> %i.bb)
  %i.be = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.am, double %i.aj)
  %i.bf = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bg = insertelement <2 x double> %i.bf, double %i.u, i64 1
  %i.bh = shufflevector <6 x double> %i.ag, <6 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bi = insertelement <2 x double> %i.bh, double 1.000000e+00, i64 0
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.bg, <2 x double> %i.bi) ; 2 uses
  %i.bk = extractelement <2 x double> %i.bj, i64 0
  %i.bl = extractelement <2 x double> %i.bj, i64 1
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.at, double %i.bl, double %i.bk)
  %i.bn = fmul double %i.ap, %i.aw
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.ah, double %i.ai)
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.bo, double %i.bm)
  %i.bq = fmul double %i.ap, %i.bp
  %i.br = insertelement <2 x double> %i.bc, double %i.ax, i64 0
  %i.bs = insertelement <2 x double> poison, double %i.av, i64 0
  %i.bt = insertelement <2 x double> %i.bs, double %i.bq, i64 1
  %i.bu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %i.bd, <2 x double> %i.bt)
  %i.bv = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %i.p, i64 1
  %i.bx = fmul <2 x double> %i.bw, %i.bu          ; 2 uses
  %i.by = extractelement <2 x double> %i.bx, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %i.by, 0
  %i.bz = extractelement <2 x double> %i.bx, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.bz, 1
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
  %i.y = load double, ptr %i.x, align 8, !tbaa !51
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
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !49
  %i.bc = fneg double %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.be = load double, ptr %i.bd, align 8, !tbaa !50
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
!38 = !{!36, !14, i64 216}
!39 = !{!"_ZTSN12_GLOBAL__N_113pj_rouss_dataE", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !8, i64 272}
!40 = !{!39, !8, i64 272}
!41 = !{!39, !14, i64 0}
!42 = !{!39, !14, i64 8}
!43 = !{!39, !14, i64 120}
!44 = !{!39, !14, i64 160}
!45 = !{!39, !14, i64 112}
!46 = !{!39, !14, i64 192}
!47 = !{!14, !14, i64 0}
!48 = !{!39, !14, i64 72}
!49 = !{!39, !14, i64 184}
!50 = !{!39, !14, i64 200}
!51 = !{!39, !14, i64 152}
!52 = !{!36, !14, i64 488}
!53 = !{!36, !10, i64 8}
!54 = !{!36, !10, i64 16}
!55 = !{!36, !5, i64 360}
!56 = !{!36, !15, i64 380}
!57 = !{!36, !15, i64 384}
!58 = !{!36, !14, i64 448}
!59 = !{!36, !14, i64 256}
!60 = !{!39, !14, i64 64}
!61 = !{!39, !14, i64 128}
!62 = !{!36, !8, i64 104}
!63 = !{!36, !8, i64 112}
!64 = !{!36, !8, i64 152}
!65 = !{!39, !14, i64 104}
!66 = !{!39, !14, i64 88}
!67 = !{!39, !14, i64 144}
!68 = !{!39, !14, i64 168}
!69 = !{!39, !14, i64 176}
!70 = !{!39, !14, i64 240}
!71 = !{!39, !14, i64 216}
!72 = !{!39, !14, i64 232}
!73 = !{!39, !14, i64 264}
!74 = !{!39, !14, i64 208}
!75 = !{!39, !14, i64 224}
!76 = !{!39, !14, i64 256}
!77 = !{!39, !14, i64 248}
!78 = !{!36, !9, i64 0}
end_hunk_0
