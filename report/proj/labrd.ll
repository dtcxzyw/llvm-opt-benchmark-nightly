Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/labrd?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
  %i.av = extractelement <2 x double> %i.au, i64 0
  %i.aw = extractelement <2 x double> %i.au, i64 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ay = fmul double %i.m, 2.000000e+00          ; 2 uses
  %i.az = fmul double %i.ab, %i.ad                ; 3 uses
  store double %i.az, ptr %i.a, align 8, !tbaa !45
  %1 = fmul double %i.o, %i.ao                    ; 2 uses
  %i.ba = fadd double %1, 1.000000e+00
  %2 = fsub double 1.000000e+00, %1
  %i.bb = fmul double %i.az, 1.200000e+01
  %3 = fmul double %i.az, %i.bb
  %i.bc = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.ba, i64 0
  %i.bd = insertelement <2 x double> poison, double %2, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %3, i64 1
  %i.bf = fdiv <2 x double> %i.bc, %i.be          ; 2 uses
  %i.bg = extractelement <2 x double> %i.bf, i64 0
  %i.bh = tail call double @log(double noundef %i.bg) #8
  %i.bi = tail call double @tan(double noundef %i.av) #8
  %i.bj = tail call double @log(double noundef %i.bi) #8
  %i.bk = fmul double %i.bj, %i.ar
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.bh, double %i.bk)
  %i.bm = tail call double @tan(double noundef %i.aw) #8
  %i.bn = tail call double @log(double noundef %i.bm) #8
  %i.bo = fadd double %i.bl, %i.bn
  store double %i.bo, ptr %i.ax, align 8, !tbaa !46
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bq = tail call double @cos(double noundef %i.ay) #8
  %i.br = fsub double 1.000000e+00, %i.bq
  %i.bs = extractelement <2 x double> %i.bf, i64 1 ; 2 uses
  %i.bt = fmul double %i.bs, %i.br                ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store double %i.bt, ptr %i.bu, align 8, !tbaa !47
  %i.bv = tail call double @sin(double noundef %i.ay) #8
  %i.bw = fmul double %i.bs, %i.bv                ; 4 uses
  store double %i.bw, ptr %i.bp, align 8, !tbaa !48
  %i.bx = fneg double %i.bw
  %i.by = fmul double %i.bw, %i.bx
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bt, double %i.by)
  %i.ca = fmul double %i.bz, 3.000000e+00
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store double %i.ca, ptr %i.cb, align 8, !tbaa !49
  %i.cc = fmul double %i.bt, 6.000000e+00
  %i.cd = fmul double %i.cc, %i.bw
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store double %i.cd, ptr %i.ce, align 8, !tbaa !50
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL15labrd_e_inverse5PJ_XYP8PJconsts, ptr %i.cf, align 8, !tbaa !59
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL15labrd_e_forward5PJ_LPP8PJconsts, ptr %i.cg, align 8, !tbaa !60
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
  %i.d = insertelement <2 x double> poison, double %0, i64 0
  %i.e = insertelement <2 x double> %i.d, double %1, i64 1 ; 4 uses
  %i.f = insertelement <2 x double> %i.e, double 1.000000e+00, i64 1
  %i.g = fmul <2 x double> %i.e, %i.f             ; 2 uses
  %i.h = fmul <2 x double> %i.e, <double 3.000000e+00, double 1.000000e+00>
  %i.i = extractelement <2 x double> %i.g, i64 0  ; 6 uses
  %i.j = fmul double %i.i, 3.000000e+00
  %i.k = fneg <2 x double> %i.g
  %i.l = insertelement <2 x double> %i.e, double %i.j, i64 1
  %i.m = fmul <2 x double> %i.l, %i.k
  %i.n = insertelement <2 x double> poison, double %i.c, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.h, <2 x double> %i.o, <2 x double> %i.m) ; 2 uses
  %i.q = fmul double %i.c, 5.000000e+00
  %i.r = tail call double @llvm.fmuladd.f64(double %i.c, double -1.000000e+01, double %i.i)
  %i.s = fmul double %i.i, %i.r
  %i.t = tail call double @llvm.fmuladd.f64(double %i.q, double %i.c, double %i.s)
  %i.u = fmul double %0, %i.t                     ; 2 uses
  %i.v = fmul double %i.i, 5.000000e+00
  %i.w = tail call double @llvm.fmuladd.f64(double %i.i, double -1.000000e+01, double %i.c)
  %i.x = fmul double %i.c, %i.w
  %i.y = tail call double @llvm.fmuladd.f64(double %i.v, double %i.i, double %i.x)
  %i.z = fmul double %1, %i.y                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !47 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !48 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.af = load double, ptr %i.ae, align 8, !tbaa !49 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !50 ; 2 uses
  %i.ai = extractelement <2 x double> %i.p, i64 1
  %i.aj = fneg double %i.ai                       ; 2 uses
  %i.ak = fmul double %i.ab, %i.aj
  %i.al = extractelement <2 x double> %i.p, i64 0 ; 2 uses
  %i.am = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.al, double %i.ak)
  %i.an = fneg double %i.ah
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.an, double %i.u, double %i.am)
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.af, double %i.z, double %i.ao)
  %i.aq = fadd double %1, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %i.at = load double, ptr %i.b, align 8, !tbaa !45 ; 5 uses
  %i.au = fdiv double %i.aq, %i.at
  %i.av = fadd double %i.as, %i.au                ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 448
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !38
  %i.ay = fadd double %i.ax, %i.av
  %i.az = fsub double %i.ay, %i.as
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !43 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !44 ; 3 uses
  %i.be = fmul double %i.bd, 5.000000e-01
  %i.bf = fmul double %i.bb, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !46
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0112 = phi i32 [ 20, %bb.a ], [ %i.cc, %bb.b ]
  %.0110111 = phi double [ %i.az, %bb.a ], [ %i.bz, %bb.b ] ; 3 uses
  %i.bi = tail call double @llvm.fmuladd.f64(double %.0110111, double 5.000000e-01, double f0x3FE921FB54442D18)
  %i.bj = tail call double @tan(double noundef %i.bi) #8
  %i.bk = tail call double @log(double noundef %i.bj) #8
  %i.bl = fmul double %i.bb, %i.bk
  %i.bm = tail call double @sin(double noundef %.0110111) #8
  %i.bn = fmul double %i.bd, %i.bm                ; 2 uses
  %i.bo = fadd double %i.bn, 1.000000e+00
  %i.bp = fsub double 1.000000e+00, %i.bn
  %i.bq = fdiv double %i.bo, %i.bp
  %i.br = tail call double @log(double noundef %i.bq) #8
  %i.bs = fmul double %i.bf, %i.br
  %i.bt = fsub double %i.bl, %i.bs
  %i.bu = fadd double %i.bh, %i.bt
  %i.bv = tail call double @exp(double noundef %i.bu) #8
  %i.bw = tail call double @atan(double noundef %i.bv) #8
  %i.bx = fadd double %i.bw, f0xBFE921FB54442D18
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bx, double -2.000000e+00, double %i.av) ; 2 uses
  %i.bz = fadd double %.0110111, %i.by            ; 3 uses
  %i.ca = tail call double @llvm.fabs.f64(double %i.by)
  %i.cb = fcmp olt double %i.ca, 1.000000e-10
  %i.cc = add nsw i32 %.0112, -1                  ; 2 uses
  %.not = icmp eq i32 %i.cc, 0
  %or.cond = select i1 %i.cb, i1 true, i1 %.not
  br i1 %or.cond, label %bb.c, label %bb.b, !llvm.loop !61

bb.c:                                             ; preds = %bb.b
  %i.cd = fneg double %i.ab
  %i.ce = fmul double %i.ad, %i.aj
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.al, double %i.ce)
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.af, double %i.u, double %i.cf)
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.z, double %i.cg)
  %i.ci = fadd double %0, %i.ch                   ; 2 uses
  %i.cj = tail call double @sin(double noundef %i.bz) #8
  %i.ck = fmul double %i.bd, %i.cj                ; 2 uses
  %i.cl = fneg double %i.ck
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.ck, double 1.000000e+00) ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.co = load double, ptr %i.cn, align 8, !tbaa !39
  %i.cp = tail call double @sqrt(double noundef %i.cm) #8
  %i.cq = fmul double %i.cm, %i.cp
  %3 = tail call double @tan(double noundef %i.av) #8 ; 3 uses
  %i.cr = fmul double %i.at, %i.at                ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 488
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !40
  %i.cu = tail call double @cos(double noundef %i.av) #8
  %4 = fdiv double %i.co, %i.cq
  %5 = fmul double %i.at, %i.cu
  %i.cv = insertelement <2 x double> poison, double %4, i64 0
  %i.cw = insertelement <2 x double> %i.cv, double %5, i64 1
  %i.cx = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.cy = insertelement <2 x double> %i.cx, double %i.bb, i64 1
  %i.cz = fmul <2 x double> %i.cw, %i.cy          ; 2 uses
  %i.da = insertelement <2 x double> poison, double %i.at, i64 0
  %i.db = insertelement <2 x double> %i.da, double %i.cr, i64 1
  %i.dc = fmul <2 x double> %i.db, %i.cz          ; 2 uses
  %i.dd = fmul <2 x double> %i.dc, <double 2.000000e+00, double 6.000000e+00>
  %i.de = fmul <2 x double> %i.dc, <double 2.400000e+01, double 1.200000e+02> ; 2 uses
  %i.df = extractelement <2 x double> %i.de, i64 0
  %i.dg = fmul double %i.cr, %i.df
  %i.dh = extractelement <2 x double> %i.de, i64 1
  %i.di = fmul double %i.cr, %i.dh
  %i.dj = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dk = insertelement <2 x double> %i.dj, double %i.di, i64 1
  %i.dl = insertelement <2 x double> poison, double %3, i64 0
  %i.dm = insertelement <2 x double> %i.dl, double %i.ci, i64 1 ; 2 uses
  %i.dn = fmul <2 x double> %i.dm, %i.dm          ; 5 uses
  %i.do = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> <double 3.000000e+00, double 2.000000e+00>, <2 x double> <double 5.000000e+00, double 1.000000e+00>) ; 2 uses
  %i.dq = extractelement <2 x double> %i.dp, i64 0
  %i.dr = fmul double %3, %i.dq
  %i.ds = fdiv double %i.dr, %i.dg
  %i.dt = insertelement <2 x double> %i.dp, double %3, i64 0
  %i.du = fneg <2 x double> %i.dt
  %i.dv = fdiv <2 x double> %i.du, %i.dd          ; 2 uses
  %i.dw = insertelement <2 x double> <double 2.400000e+01, double poison>, double %i.ds, i64 1
  %i.dx = shufflevector <2 x double> %i.dv, <2 x double> <double 2.800000e+01, double poison>, <2 x i32> <i32 2, i32 0>
  %i.dy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dn, <2 x double> %i.dw, <2 x double> %i.dx) ; 2 uses
  %i.dz = extractelement <2 x double> %i.dy, i64 0
  %i.ea = extractelement <2 x double> %i.dn, i64 0
  %i.eb = tail call double @llvm.fmuladd.f64(double %i.ea, double %i.dz, double 5.000000e+00)
  %i.ec = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.eb, i64 1
  %i.ed = fdiv <2 x double> %i.ec, %i.dk          ; 2 uses
  %i.ee = extractelement <2 x double> %i.dn, i64 1
  %i.ef = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.eg = shufflevector <2 x double> %i.dy, <2 x double> %i.ed, <2 x i32> <i32 1, i32 3>
  %i.eh = insertelement <2 x double> %i.dv, double %i.bz, i64 0
  %i.ei = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ef, <2 x double> %i.eg, <2 x double> %i.eh) ; 2 uses
  %i.ej = extractelement <2 x double> %i.ed, i64 0
  %i.ek = extractelement <2 x double> %i.ei, i64 1
  %i.el = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.ek, double %i.ej)
  %i.em = fmul double %i.ci, %i.el
  %.fca.0.insert = insertvalue { double, double } poison, double %i.em, 0
  %i.en = extractelement <2 x double> %i.ei, i64 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.en, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal { double, double } @_ZL15labrd_e_forward5PJ_LPP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %3 = load double, ptr %i.c, align 8, !tbaa !43  ; 7 uses
  %i.d = tail call double @llvm.fmuladd.f64(double %1, double 5.000000e-01, double f0x3FE921FB54442D18)
  %i.e = tail call double @tan(double noundef %i.d) #8
  %i.f = tail call double @log(double noundef %i.e) #8
  %4 = fmul double %3, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.h = load double, ptr %i.g, align 8, !tbaa !44 ; 2 uses
  %i.i = tail call double @sin(double noundef %1) #8
  %5 = fmul double %i.h, %i.i                     ; 2 uses
  %i.j = fmul double %i.h, 5.000000e-01
  %i.k = fmul double %3, %i.j
  %i.l = fadd double %5, 1.000000e+00
  %i.m = fsub double 1.000000e+00, %5
  %i.n = fdiv double %i.l, %i.m
  %i.o = tail call double @log(double noundef %i.n) #8
  %6 = fmul double %i.k, %i.o
  %7 = fsub double %4, %6
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = load double, ptr %i.p, align 8, !tbaa !46
  %8 = fadd double %i.q, %7
  %9 = tail call double @exp(double noundef %8) #8
  %10 = tail call double @atan(double noundef %9) #8
  %11 = fadd double %10, f0xBFE921FB54442D18
  %i.r = fmul double %11, 2.000000e+00            ; 3 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %13 = load double, ptr %12, align 8, !tbaa !42
  %14 = tail call double @cos(double noundef %i.r) #8 ; 3 uses
  %15 = fmul double %14, %14                      ; 4 uses
  %i.s = tail call double @sin(double noundef %i.r) #8 ; 3 uses
  %16 = fmul double %i.s, %i.s                    ; 4 uses
  %i.t = fmul double %3, 5.000000e-01
  %17 = fneg double %16
  %18 = fsub double %15, %16
  %19 = fmul double %3, %3
  %i.u = fmul double %15, 5.000000e+00
  %20 = tail call double @llvm.fmuladd.f64(double %15, double -1.800000e+01, double %16)
  %i.v = fmul double %16, %20
  %21 = load double, ptr %i.b, align 8, !tbaa !45 ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %23 = fsub double %i.r, %13
  %24 = insertelement <2 x double> poison, double %15, i64 0
  %25 = shufflevector <2 x double> %24, <2 x double> poison, <2 x i32> zeroinitializer
  %26 = insertelement <2 x double> <double poison, double 5.000000e+00>, double %i.u, i64 0
  %27 = insertelement <2 x double> poison, double %i.v, i64 0
  %28 = insertelement <2 x double> %27, double %17, i64 1
  %29 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %25, <2 x double> %26, <2 x double> %28) ; 2 uses
  %30 = extractelement <2 x double> %29, i64 0
  %i.w = fmul double %19, %30
  %i.x = fdiv double %i.w, 1.200000e+02
  %i.y = fmul double %3, %14                      ; 3 uses
  %31 = fmul double %i.t, %i.y
  %i.z = fmul double %i.s, %31                    ; 2 uses
  %i.aa = insertelement <2 x double> poison, double %3, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ac = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.y, i64 1
  %32 = fmul <2 x double> %i.ab, %i.ad
  %33 = fmul <2 x double> %i.ab, %32              ; 2 uses
  %34 = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ae = insertelement <2 x double> %34, double %18, i64 1
  %i.af = fmul <2 x double> %i.ae, %33
  %i.ag = fdiv <2 x double> %i.af, <double 1.200000e+01, double 6.000000e+00> ; 2 uses
  %i.ah = extractelement <2 x double> %33, i64 1
  %i.ai = fmul double %i.ah, %i.x
  %i.aj = fmul double %0, %0
  %i.ak = fmul double %0, %21
  %i.al = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.an = insertelement <2 x double> poison, double %i.ai, i64 0
  %35 = shufflevector <2 x double> %i.an, <2 x double> %i.ag, <2 x i32> <i32 0, i32 2>
  %36 = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ao = insertelement <2 x double> %36, double %i.z, i64 1
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %35, <2 x double> %i.ao)
  %i.aq = insertelement <2 x double> poison, double %i.y, i64 0
  %i.ar = insertelement <2 x double> %i.aq, double %23, i64 1
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.ap, <2 x double> %i.ar)
  %i.at = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.au = insertelement <2 x double> %i.at, double %21, i64 1
  %i.av = fmul <2 x double> %i.au, %i.as          ; 7 uses
  %foldExtExtBinop = fmul <2 x double> %i.av, %i.av
  %37 = load <2 x double>, ptr %22, align 8, !tbaa !63 ; 2 uses
  %i.aw = shufflevector <2 x double> %foldExtExtBinop, <2 x double> %i.av, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ax = insertelement <2 x double> %i.av, double 3.000000e+00, i64 0
  %38 = fmul <2 x double> %i.aw, %i.ax            ; 2 uses
  %i.ay = fmul <2 x double> %i.av, <double 3.000000e+00, double 1.000000e+00>
  %i.az = fneg <2 x double> %i.aw
  %i.ba = shufflevector <2 x double> %i.av, <2 x double> %38, <2 x i32> <i32 0, i32 2>
  %i.bb = fmul <2 x double> %i.ba, %i.az
  %i.bc = shufflevector <2 x double> %38, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.bc, <2 x double> %i.bb) ; 3 uses
  %i.be = shufflevector <2 x double> %37, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bf = fneg <2 x double> %i.bd
  %i.bg = shufflevector <2 x double> %i.bd, <2 x double> %i.bf, <2 x i32> <i32 1, i32 2>
  %i.bh = fmul <2 x double> %i.be, %i.bg
  %i.bi = shufflevector <2 x double> %37, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.bd, <2 x double> %i.bh)
  %i.bk = fadd <2 x double> %i.av, %i.bj          ; 2 uses
  %i.bl = extractelement <2 x double> %i.bk, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %i.bl, 0
  %i.bm = extractelement <2 x double> %i.bk, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.bm, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(0,1) }
attributes #8 = { nounwind }

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
!38 = !{!36, !14, i64 448}
!39 = !{!36, !14, i64 256}
!40 = !{!36, !14, i64 488}
!41 = !{!"_ZTSN12_GLOBAL__N_19pj_opaqueE", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56}
!42 = !{!41, !14, i64 8}
!43 = !{!41, !14, i64 16}
!44 = !{!36, !14, i64 208}
!45 = !{!41, !14, i64 0}
!46 = !{!41, !14, i64 24}
!47 = !{!41, !14, i64 32}
!48 = !{!41, !14, i64 40}
!49 = !{!41, !14, i64 48}
!50 = !{!41, !14, i64 56}
!51 = !{!36, !10, i64 8}
!52 = !{!36, !10, i64 16}
!53 = !{!36, !5, i64 360}
!54 = !{!36, !15, i64 380}
!55 = !{!36, !15, i64 384}
!56 = !{!36, !9, i64 0}
!57 = !{!36, !11, i64 24}
!58 = !{!36, !14, i64 216}
!59 = !{!36, !8, i64 112}
!60 = !{!36, !8, i64 104}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!14, !14, i64 0}
end_hunk_0
