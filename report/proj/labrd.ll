Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/labrd?download=true
begin_hunk_0

@_ZL9des_labrd = internal constant [50 x i8] c"Laborde\0A\09Cyl, Sph\0A\09Special for Madagascar\0A\09lat_0=\00", align 16
@pj_s_labrd = hidden local_unnamed_addr constant ptr @_ZL9des_labrd, align 8
@.str = private unnamed_addr constant [6 x i8] c"labrd\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Invalid value for lat_0: lat_0 should be different from 0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"razi\00", align 1

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @pj_labrd(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_Z34pj_projection_specific_setup_labrdP8PJconsts(ptr noundef nonnull %0)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_Z6pj_newv()      ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @.str, ptr %i.d, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @_ZL9des_labrd, ptr %i.e, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store i32 1, ptr %i.f, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 380
  store i32 4, ptr %i.g, align 4, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  store i32 1, ptr %i.h, align 8, !tbaa !55
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z34pj_projection_specific_setup_labrdP8PJconsts(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #7 ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef %0, i32 noundef 4096)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.a, ptr %i.d, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !38
  %i.g = fcmp oeq double %i.f, 0.000000e+00
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.1)
  %i.h = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 1027)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.l = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.i, ptr noundef %i.k, ptr noundef nonnull @.str.2)
  %i.m = bitcast i64 %i.l to double
  %i.n = load double, ptr %i.e, align 8, !tbaa !38 ; 3 uses
  %i.o = tail call double @sin(double noundef %i.n) #8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.q = load double, ptr %i.p, align 8, !tbaa !58
  %i.r = fneg double %i.o
  %i.s = fmul double %i.q, %i.r
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double %i.o, double 1.000000e+00) ; 2 uses
  %i.u = tail call double @sqrt(double noundef %i.t) #8
  %i.v = fdiv double 1.000000e+00, %i.u           ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.x = load double, ptr %i.w, align 8, !tbaa !39
  %i.y = fmul double %i.x, %i.v
  %i.z = fdiv double %i.y, %i.t                   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !40
  %i.ac = fmul double %i.v, %i.z
  %i.ad = tail call double @sqrt(double noundef %i.ac) #8
  %i.ae = fdiv double %i.z, %i.v
  %i.af = tail call double @sqrt(double noundef %i.ae) #8
  %i.ag = tail call double @tan(double noundef %i.n) #8
  %i.ah = fmul double %i.af, %i.ag
  %i.ai = tail call double @atan(double noundef %i.ah) #8 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %i.ai, ptr %i.aj, align 8, !tbaa !42
  %i.ak = tail call double @sin(double noundef %i.ai) #8
  %i.al = fdiv double %i.o, %i.ak                 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.al, ptr %i.am, align 8, !tbaa !43
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ao = load double, ptr %i.an, align 8, !tbaa !44 ; 2 uses
  %i.ap = fmul double %i.ao, 5.000000e-01
  %i.aq = fmul double %i.al, %i.ap
  %i.ar = fneg double %i.al
  %i.as = insertelement <2 x double> poison, double %i.n, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.ai, i64 1
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> splat (double 5.000000e-01), <2 x double> splat (double f0x3FE921FB54442D18)) ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.aw = fmul double %i.m, 2.000000e+00          ; 2 uses
  %i.ax = fmul double %i.ab, %i.ad                ; 3 uses
  store double %i.ax, ptr %i.a, align 8, !tbaa !45
  %i.ay = fmul double %i.o, %i.ao                 ; 2 uses
  %i.az = fadd double %i.ay, 1.000000e+00
  %i.ba = fsub double 1.000000e+00, %i.ay
  %i.bb = fmul double %i.ax, 1.200000e+01
  %i.bc = fmul double %i.ax, %i.bb
  %i.bd = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.az, i64 0
  %i.be = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bc, i64 1
  %i.bg = fdiv <2 x double> %i.bd, %i.bf          ; 2 uses
  %i.bh = extractelement <2 x double> %i.bg, i64 0
  %i.bi = tail call double @log(double noundef %i.bh) #8
  %i.bj = extractelement <2 x double> %i.au, i64 0
  %i.bk = tail call double @tan(double noundef %i.bj) #8
  %i.bl = tail call double @log(double noundef %i.bk) #8
  %i.bm = fmul double %i.bl, %i.ar
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.bi, double %i.bm)
  %i.bo = extractelement <2 x double> %i.au, i64 1
  %i.bp = tail call double @tan(double noundef %i.bo) #8
  %i.bq = tail call double @log(double noundef %i.bp) #8
  %i.br = fadd double %i.bn, %i.bq
  store double %i.br, ptr %i.av, align 8, !tbaa !46
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bt = tail call double @cos(double noundef %i.aw) #8
  %i.bu = fsub double 1.000000e+00, %i.bt
  %i.bv = extractelement <2 x double> %i.bg, i64 1 ; 2 uses
  %i.bw = fmul double %i.bv, %i.bu                ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store double %i.bw, ptr %i.bx, align 8, !tbaa !47
  %i.by = tail call double @sin(double noundef %i.aw) #8
  %i.bz = fmul double %i.bv, %i.by                ; 4 uses
  store double %i.bz, ptr %i.bs, align 8, !tbaa !48
  %i.ca = fneg double %i.bz
  %i.cb = fmul double %i.bz, %i.ca
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.bw, double %i.cb)
  %i.cd = fmul double %i.cc, 3.000000e+00
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store double %i.cd, ptr %i.ce, align 8, !tbaa !49
  %i.cf = fmul double %i.bw, 6.000000e+00
  %i.cg = fmul double %i.cf, %i.bz
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store double %i.cg, ptr %i.ch, align 8, !tbaa !50
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL15labrd_e_inverse5PJ_XYP8PJconsts, ptr %i.ci, align 8, !tbaa !59
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL15labrd_e_forward5PJ_LPP8PJconsts, ptr %i.cj, align 8, !tbaa !60
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.h, %bb.d ], [ %0, %bb.e ]
  ret ptr %.0
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal { double, double } @_ZL15labrd_e_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 8 uses
  %i.c = fmul double %1, %1                       ; 6 uses
  %3 = insertelement <2 x double> poison, double %0, i64 0
  %i.d = insertelement <2 x double> %3, double %1, i64 1 ; 4 uses
  %i.e = insertelement <2 x double> %i.d, double 1.000000e+00, i64 1
  %4 = fmul <2 x double> %i.d, %i.e               ; 2 uses
  %i.f = fmul <2 x double> %i.d, <double 3.000000e+00, double 1.000000e+00>
  %5 = extractelement <2 x double> %4, i64 0      ; 6 uses
  %6 = fmul double %5, 3.000000e+00
  %i.g = fneg <2 x double> %4
  %i.h = insertelement <2 x double> %i.d, double %6, i64 1
  %i.i = fmul <2 x double> %i.h, %i.g
  %i.j = insertelement <2 x double> poison, double %i.c, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.f, <2 x double> %i.k, <2 x double> %i.i) ; 2 uses
  %i.m = fmul double %i.c, 5.000000e+00
  %i.n = tail call double @llvm.fmuladd.f64(double %i.c, double -1.000000e+01, double %5)
  %i.o = fmul double %5, %i.n
  %i.p = tail call double @llvm.fmuladd.f64(double %i.m, double %i.c, double %i.o)
  %i.q = fmul double %0, %i.p                     ; 2 uses
  %i.r = fmul double %5, 5.000000e+00
  %i.s = tail call double @llvm.fmuladd.f64(double %5, double -1.000000e+01, double %i.c)
  %i.t = fmul double %i.c, %i.s
  %i.u = tail call double @llvm.fmuladd.f64(double %i.r, double %5, double %i.t)
  %i.v = fmul double %1, %i.u                     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.x = load double, ptr %i.w, align 8, !tbaa !47 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.z = load double, ptr %i.y, align 8, !tbaa !48 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !49 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !50 ; 2 uses
  %i.ae = extractelement <2 x double> %i.l, i64 1
  %i.af = fneg double %i.ae                       ; 2 uses
  %i.ag = fmul double %i.x, %i.af
  %i.ah = extractelement <2 x double> %i.l, i64 0 ; 2 uses
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.z, double %i.ah, double %i.ag)
  %i.aj = fneg double %i.ad
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.q, double %i.ai)
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.v, double %i.ak)
  %i.am = fadd double %1, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ao = load double, ptr %i.an, align 8, !tbaa !42 ; 2 uses
  %i.ap = load double, ptr %i.b, align 8, !tbaa !45 ; 5 uses
  %i.aq = fdiv double %i.am, %i.ap
  %i.ar = fadd double %i.ao, %i.aq                ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 448
  %i.at = load double, ptr %i.as, align 8, !tbaa !38
  %i.au = fadd double %i.at, %i.ar
  %i.av = fsub double %i.au, %i.ao
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !43 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.az = load double, ptr %i.ay, align 8, !tbaa !44 ; 3 uses
  %i.ba = fmul double %i.az, 5.000000e-01
  %i.bb = fmul double %i.ax, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !46
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0112 = phi i32 [ 20, %bb.a ], [ %i.by, %bb.b ]
  %.0110111 = phi double [ %i.av, %bb.a ], [ %i.bv, %bb.b ] ; 3 uses
  %i.be = tail call double @llvm.fmuladd.f64(double %.0110111, double 5.000000e-01, double f0x3FE921FB54442D18)
  %i.bf = tail call double @tan(double noundef %i.be) #8
  %i.bg = tail call double @log(double noundef %i.bf) #8
  %i.bh = fmul double %i.ax, %i.bg
  %i.bi = tail call double @sin(double noundef %.0110111) #8
  %i.bj = fmul double %i.az, %i.bi                ; 2 uses
  %i.bk = fadd double %i.bj, 1.000000e+00
  %i.bl = fsub double 1.000000e+00, %i.bj
  %i.bm = fdiv double %i.bk, %i.bl
  %i.bn = tail call double @log(double noundef %i.bm) #8
  %i.bo = fmul double %i.bb, %i.bn
  %i.bp = fsub double %i.bh, %i.bo
  %i.bq = fadd double %i.bd, %i.bp
  %i.br = tail call double @exp(double noundef %i.bq) #8
  %i.bs = tail call double @atan(double noundef %i.br) #8
  %i.bt = fadd double %i.bs, f0xBFE921FB54442D18
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bt, double -2.000000e+00, double %i.ar) ; 2 uses
  %i.bv = fadd double %.0110111, %i.bu            ; 3 uses
  %i.bw = tail call double @llvm.fabs.f64(double %i.bu)
  %i.bx = fcmp olt double %i.bw, 1.000000e-10
  %i.by = add nsw i32 %.0112, -1                  ; 2 uses
  %.not = icmp eq i32 %i.by, 0
  %or.cond = select i1 %i.bx, i1 true, i1 %.not
  br i1 %or.cond, label %bb.c, label %bb.b, !llvm.loop !61

bb.c:                                             ; preds = %bb.b
  %i.bz = fneg double %i.x
  %i.ca = fmul double %i.z, %i.af
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.ah, double %i.ca)
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.q, double %i.cb)
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.v, double %i.cc)
  %i.ce = fadd double %0, %i.cd                   ; 2 uses
  %i.cf = tail call double @sin(double noundef %i.bv) #8
  %i.cg = fmul double %i.az, %i.cf                ; 2 uses
  %i.ch = fneg double %i.cg
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.cg, double 1.000000e+00) ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !39
  %i.cl = tail call double @sqrt(double noundef %i.ci) #8
  %i.cm = fmul double %i.ci, %i.cl
  %i.cn = fmul double %i.ap, %i.ap                ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 488
  %i.cp = fdiv double %i.ck, %i.cm
  %i.cq = tail call double @tan(double noundef %i.ar) #8 ; 3 uses
  %i.cr = load double, ptr %i.co, align 8, !tbaa !40
  %i.cs = tail call double @cos(double noundef %i.ar) #8
  %i.ct = fmul double %i.ap, %i.cs
  %i.cu = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.cv = insertelement <2 x double> %i.cu, double %i.ct, i64 1
  %i.cw = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.cx = insertelement <2 x double> %i.cw, double %i.ax, i64 1
  %i.cy = fmul <2 x double> %i.cv, %i.cx          ; 2 uses
  %i.cz = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %i.cn, i64 1
  %i.db = fmul <2 x double> %i.da, %i.cy          ; 2 uses
  %i.dc = fmul <2 x double> %i.db, <double 2.000000e+00, double 6.000000e+00>
  %i.dd = fmul <2 x double> %i.db, <double 2.400000e+01, double 1.200000e+02> ; 2 uses
  %i.de = extractelement <2 x double> %i.dd, i64 0
  %i.df = fmul double %i.cn, %i.de
  %i.dg = extractelement <2 x double> %i.dd, i64 1
  %i.dh = fmul double %i.cn, %i.dg
  %i.di = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dj = insertelement <2 x double> %i.di, double %i.dh, i64 1
  %i.dk = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.dl = insertelement <2 x double> %i.dk, double %i.ce, i64 1 ; 2 uses
  %i.dm = fmul <2 x double> %i.dl, %i.dl          ; 4 uses
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dn, <2 x double> <double 3.000000e+00, double 2.000000e+00>, <2 x double> <double 5.000000e+00, double 1.000000e+00>) ; 2 uses
  %i.dp = extractelement <2 x double> %i.do, i64 0
  %i.dq = fmul double %i.cq, %i.dp
  %i.dr = fdiv double %i.dq, %i.df
  %i.ds = insertelement <2 x double> %i.do, double %i.cq, i64 0
  %i.dt = fneg <2 x double> %i.ds
  %i.du = fdiv <2 x double> %i.dt, %i.dc          ; 2 uses
  %i.dv = insertelement <2 x double> <double 2.400000e+01, double poison>, double %i.dr, i64 1
  %i.dw = shufflevector <2 x double> %i.du, <2 x double> <double 2.800000e+01, double poison>, <2 x i32> <i32 2, i32 0>
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> %i.dv, <2 x double> %i.dw)
  %i.dy = extractelement <2 x double> %i.dm, i64 1 ; 2 uses
  %i.dz = insertelement <2 x double> <double 5.000000e+00, double poison>, double %i.bv, i64 1
  %i.ea = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> %i.dx, <2 x double> %i.dz) ; 2 uses
  %i.eb = shufflevector <2 x double> <double 1.000000e+00, double poison>, <2 x double> %i.ea, <2 x i32> <i32 0, i32 2>
  %i.ec = fdiv <2 x double> %i.eb, %i.dj          ; 2 uses
  %i.ed = extractelement <2 x double> %i.ec, i64 1
  %i.ee = extractelement <2 x double> %i.du, i64 1
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.dy, double %i.ed, double %i.ee)
  %i.eg = extractelement <2 x double> %i.ec, i64 0
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.dy, double %i.ef, double %i.eg)
  %i.ei = fmul double %i.ce, %i.eh
  %.fca.0.insert = insertvalue { double, double } poison, double %i.ei, 0
  %i.ej = extractelement <2 x double> %i.ea, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.ej, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal { double, double } @_ZL15labrd_e_forward5PJ_LPP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = tail call double @llvm.fmuladd.f64(double %1, double 5.000000e-01, double f0x3FE921FB54442D18)
  %i.e = tail call double @tan(double noundef %i.d) #8
  %i.f = tail call double @log(double noundef %i.e) #8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.h = load double, ptr %i.g, align 8, !tbaa !44 ; 2 uses
  %i.i = tail call double @sin(double noundef %1) #8
  %i.j = fmul double %i.h, %i.i                   ; 2 uses
  %i.k = fmul double %i.h, 5.000000e-01
  %i.l = fadd double %i.j, 1.000000e+00
  %i.m = fsub double 1.000000e+00, %i.j
  %i.n = fdiv double %i.l, %i.m
  %i.o = tail call double @log(double noundef %i.n) #8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = load double, ptr %i.p, align 8, !tbaa !46
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.t = load double, ptr %i.c, align 8, !tbaa !43 ; 8 uses
  %i.u = fmul double %i.t, %i.f
  %i.v = fmul double %i.t, %i.k
  %i.w = fmul double %i.v, %i.o
  %i.x = fsub double %i.u, %i.w
  %i.y = fadd double %i.q, %i.x
  %i.z = tail call double @exp(double noundef %i.y) #8
  %i.aa = tail call double @atan(double noundef %i.z) #8
  %i.ab = fadd double %i.aa, f0xBFE921FB54442D18
  %i.ac = fmul double %i.ab, 2.000000e+00         ; 3 uses
  %i.ad = load double, ptr %i.r, align 8, !tbaa !42
  %i.ae = fsub double %i.ac, %i.ad
  %i.af = tail call double @cos(double noundef %i.ac) #8 ; 3 uses
  %i.ag = tail call double @sin(double noundef %i.ac) #8 ; 3 uses
  %i.ah = fmul double %i.t, %i.af                 ; 3 uses
  %i.ai = fmul double %i.t, 5.000000e-01
  %i.aj = fmul double %i.ai, %i.ah
  %i.ak = fmul double %i.ag, %i.aj                ; 2 uses
  %i.al = fmul double %i.t, %i.ak
  %i.am = fmul double %i.t, %i.al
  %i.an = fmul double %i.t, %i.ah
  %i.ao = fmul double %i.af, %i.af                ; 5 uses
  %i.ap = fmul double %i.ag, %i.ag                ; 4 uses
  %i.aq = fneg double %i.ap
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.ao, double 5.000000e+00, double %i.aq)
  %i.as = fmul double %i.ar, %i.am
  %i.at = fdiv double %i.as, 1.200000e+01
  %i.au = fsub double %i.ao, %i.ap
  %i.av = insertelement <2 x double> poison, double %i.t, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ax = insertelement <2 x double> %i.aw, double %i.an, i64 0
  %i.ay = fmul <2 x double> %i.aw, %i.ax          ; 2 uses
  %i.az = fmul double %i.ao, 5.000000e+00
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.ao, double -1.800000e+01, double %i.ap)
  %i.bb = fmul double %i.ap, %i.ba
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.az, double %i.ao, double %i.bb)
  %i.bd = insertelement <2 x double> poison, double %i.au, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.bc, i64 1
  %i.bf = fmul <2 x double> %i.ay, %i.be
  %i.bg = fdiv <2 x double> %i.bf, <double 6.000000e+00, double 1.200000e+02> ; 2 uses
  %i.bh = fmul double %0, %0
  %i.bi = load double, ptr %i.b, align 8, !tbaa !45 ; 2 uses
  %i.bj = fmul double %0, %i.bi
  %i.bk = insertelement <2 x double> poison, double %i.bh, i64 0
end_hunk_0
