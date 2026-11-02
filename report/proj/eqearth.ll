Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/eqearth?download=true
inline.NumInlined: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZL11des_eqearth = internal constant [27 x i8] c"Equal Earth\0A\09PCyl, Sph&Ell\00", align 16
@pj_s_eqearth = hidden local_unnamed_addr constant ptr @_ZL11des_eqearth, align 8
@.str = private unnamed_addr constant [8 x i8] c"eqearth\00", align 1

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @pj_eqearth(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_Z36pj_projection_specific_setup_eqearthP8PJconsts(ptr noundef nonnull %0)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_Z6pj_newv()      ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @.str, ptr %i.d, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @_ZL11des_eqearth, ptr %i.e, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store i32 1, ptr %i.f, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 380
  store i32 4, ptr %i.g, align 4, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  store i32 1, ptr %i.h, align 8, !tbaa !48
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z36pj_projection_specific_setup_eqearthP8PJconsts(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #7 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef %0, i32 noundef 4096)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.a, ptr %i.d, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr @_ZL10destructorP8PJconstsi, ptr %i.e, align 8, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL17eqearth_e_forward5PJ_LPP8PJconsts, ptr %i.f, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL17eqearth_e_inverse5PJ_XYP8PJconsts, ptr %i.g, align 8, !tbaa !51
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store double 1.000000e+00, ptr %i.h, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.j = load double, ptr %i.i, align 8, !tbaa !41
  %i.k = fcmp une double %i.j, 0.000000e+00
  br i1 %i.k, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.m = load double, ptr %i.l, align 8, !tbaa !52
  %i.n = tail call noundef ptr @_Z30pj_authalic_lat_compute_coeffsd(double noundef %i.m) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !42
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZL10destructorP8PJconstsi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42
  tail call void @free(ptr noundef %i.t) #8
  br label %_ZL10destructorP8PJconstsi.exit

_ZL10destructorP8PJconstsi.exit:                  ; preds = %bb.e, %bb.f
  %i.u = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 4096)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.v = tail call noundef double @_Z17pj_authalic_lat_qdPK8PJconsts(double noundef 1.000000e+00, ptr noundef nonnull %0) ; 2 uses
  store double %i.v, ptr %i.a, align 8, !tbaa !43
  %i.w = fmul double %i.v, 5.000000e-01
  %i.x = tail call double @sqrt(double noundef %i.w) #8
  store double %i.x, ptr %i.h, align 8, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g, %_ZL10destructorP8PJconstsi.exit, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.u, %_ZL10destructorP8PJconstsi.exit ], [ %0, %bb.g ], [ %0, %bb.c ]
  ret ptr %.0
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZL10destructorP8PJconstsi(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42
  tail call void @free(ptr noundef %i.f) #8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %i.g = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.g, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL17eqearth_e_forward5PJ_LPP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = tail call double @sin(double noundef %1) #8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.e = load double, ptr %i.d, align 8, !tbaa !41
  %i.f = fcmp une double %i.e, 0.000000e+00
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef double @_Z17pj_authalic_lat_qdPK8PJconsts(double noundef %i.c, ptr noundef nonnull %2)
  %i.h = load double, ptr %i.b, align 8, !tbaa !43
  %i.i = fdiv double %i.g, %i.h                   ; 3 uses
  %i.j = tail call double @llvm.fabs.f64(double %i.i)
  %i.k = fcmp ogt double %i.j, 1.000000e+00
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = fcmp ogt double %i.i, 0.000000e+00
  %i.m = select i1 %i.l, double 1.000000e+00, double -1.000000e+00
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi double [ %i.m, %bb.c ], [ %i.i, %bb.b ], [ %i.c, %bb.a ]
  %i.n = fmul double %.0, f0x3FEBB67AE8584CAA
  %i.o = tail call double @asin(double noundef %i.n) #8 ; 4 uses
  %i.p = fmul double %i.o, %i.o                   ; 6 uses
  %i.q = fmul double %i.p, %i.p
  %i.r = fmul double %i.p, %i.q                   ; 2 uses
  %i.s = tail call double @cos(double noundef %i.o) #8
  %i.t = fmul double %0, %i.s
  %i.u = insertelement <2 x double> poison, double %i.p, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> <double f0xBFCF250B524399B2, double 3.416400e-02>, <2 x double> <double f0x3FF571B8AA00192A, double f0x3F799AA60913A4F9>) ; 2 uses
  %i.x = extractelement <2 x double> %i.w, i64 0
  %i.y = extractelement <2 x double> %i.w, i64 1
  %i.z = tail call double @llvm.fmuladd.f64(double %i.r, double %i.y, double %i.x)
  %i.aa = fmul double %i.z, f0x3FEBB67AE8584CAA
  %i.ab = fdiv double %i.t, %i.aa
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.p, double f0xBFB4C35CE1826677, double f0x3FF571B8AA00192A)
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.p, double 3.796000e-03, double 8.930000e-04)
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.r, double %i.ad, double %i.ac)
  %i.af = fmul double %i.o, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !40 ; 2 uses
  %i.ai = fmul double %i.ah, %i.ab
  %i.aj = fmul double %i.ah, %i.af
  %.fca.0.insert = insertvalue { double, double } poison, double %i.ai, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.aj, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL17eqearth_e_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %sincos.sin = alloca double, align 8            ; 2 uses
  %sincos.cos = alloca double, align 8            ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !40 ; 2 uses
  %i.e = fdiv double %0, %i.d
  %i.f = fdiv double %1, %i.d                     ; 3 uses
  %i.g = fcmp ogt double %i.f, f0x3FF513EAF8F8CA2B
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = fcmp olt double %i.f, f0xBFF513EAF8F8CA2B
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.4.0 = phi double [ %i.f, %bb.b ], [ f0xBFF513EAF8F8CA2B, %bb.c ], [ f0x3FF513EAF8F8CA2B, %bb.a ] ; 5 uses
  %i.i = fmul double %.sroa.4.0, %.sroa.4.0       ; 6 uses
  %i.j = fmul double %i.i, %i.i
  %i.k = fmul double %i.i, %i.j                   ; 2 uses
  %i.l = fneg double %.sroa.4.0
  %i.m = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.i, i64 0 ; 2 uses
  %i.n = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> <double f0xBFB4C35CE1826677, double 0.000000e+00>, <2 x double> <double f0x3FF571B8AA00192A, double f0x3F799AA60913A4F9>)
  %i.o = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> <double 3.796000e-03, double 0.000000e+00>, <2 x double> <double 8.930000e-04, double 3.416400e-02>)
  %i.p = tail call double @llvm.fmuladd.f64(double %i.i, double f0xBFCF250B524399B2, double f0x3FF571B8AA00192A)
  %i.q = insertelement <2 x double> poison, double %i.k, i64 0
  %i.r = insertelement <2 x double> %i.q, double %i.i, i64 1
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %i.o, <2 x double> %i.n)
  %i.t = insertelement <2 x double> poison, double %.sroa.4.0, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.k, i64 1
  %i.v = insertelement <2 x double> poison, double %i.l, i64 0 ; 12 uses
  %i.w = insertelement <2 x double> %i.v, double %i.p, i64 1
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.s, <2 x double> %i.w) ; 2 uses
  %i.y = extractelement <2 x double> %i.x, i64 0
  %i.z = extractelement <2 x double> %i.x, i64 1
  %i.aa = fdiv double %i.y, %i.z                  ; 2 uses
  %i.ab = fsub double %.sroa.4.0, %i.aa           ; 5 uses
  %i.ac = tail call double @llvm.fabs.f64(double %i.aa)
  %i.ad = fcmp olt double %i.ac, f0x3DA5FD7FE1796495
  br i1 %i.ad, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = fmul double %i.ab, %i.ab                ; 6 uses
  %i.af = fmul double %i.ae, %i.ae
  %i.ag = fmul double %i.ae, %i.af                ; 2 uses
  %i.ah = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.ae, i64 0 ; 2 uses
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> <double f0xBFB4C35CE1826677, double 0.000000e+00>, <2 x double> <double f0x3FF571B8AA00192A, double f0x3F799AA60913A4F9>)
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> <double 3.796000e-03, double 0.000000e+00>, <2 x double> <double 8.930000e-04, double 3.416400e-02>)
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.ae, double f0xBFCF250B524399B2, double f0x3FF571B8AA00192A)
  %i.al = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.ae, i64 1
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.aj, <2 x double> %i.ai)
  %i.ao = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %i.ag, i64 1
  %i.aq = insertelement <2 x double> %i.v, double %i.ak, i64 1
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> %i.an, <2 x double> %i.aq) ; 2 uses
  %i.as = extractelement <2 x double> %i.ar, i64 0
  %i.at = extractelement <2 x double> %i.ar, i64 1
  %i.au = fdiv double %i.as, %i.at                ; 2 uses
  %i.av = fsub double %i.ab, %i.au                ; 5 uses
  %i.aw = tail call double @llvm.fabs.f64(double %i.au)
  %i.ax = fcmp olt double %i.aw, f0x3DA5FD7FE1796495
  br i1 %i.ax, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = fmul double %i.av, %i.av                ; 6 uses
  %i.az = fmul double %i.ay, %i.ay
  %i.ba = fmul double %i.ay, %i.az                ; 2 uses
  %i.bb = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.ay, i64 0 ; 2 uses
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> <double f0xBFB4C35CE1826677, double 0.000000e+00>, <2 x double> <double f0x3FF571B8AA00192A, double f0x3F799AA60913A4F9>)
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> <double 3.796000e-03, double 0.000000e+00>, <2 x double> <double 8.930000e-04, double 3.416400e-02>)
  %i.be = tail call double @llvm.fmuladd.f64(double %i.ay, double f0xBFCF250B524399B2, double f0x3FF571B8AA00192A)
  %i.bf = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bg = insertelement <2 x double> %i.bf, double %i.ay, i64 1
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> %i.bd, <2 x double> %i.bc)
  %i.bi = insertelement <2 x double> poison, double %i.av, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %i.ba, i64 1
  %i.bk = insertelement <2 x double> %i.v, double %i.be, i64 1
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bh, <2 x double> %i.bk) ; 2 uses
  %i.bm = extractelement <2 x double> %i.bl, i64 0
  %i.bn = extractelement <2 x double> %i.bl, i64 1
  %i.bo = fdiv double %i.bm, %i.bn                ; 2 uses
  %i.bp = fsub double %i.av, %i.bo                ; 5 uses
  %i.bq = tail call double @llvm.fabs.f64(double %i.bo)
  %i.br = fcmp olt double %i.bq, f0x3DA5FD7FE1796495
  br i1 %i.br, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bs = fmul double %i.bp, %i.bp                ; 6 uses
  %i.bt = fmul double %i.bs, %i.bs
  %i.bu = fmul double %i.bs, %i.bt                ; 2 uses
  %i.bv = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.bs, i64 0 ; 2 uses
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> <double f0xBFB4C35CE1826677, double 0.000000e+00>, <2 x double> <double f0x3FF571B8AA00192A, double f0x3F799AA60913A4F9>)
  %i.bx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> <double 3.796000e-03, double 0.000000e+00>, <2 x double> <double 8.930000e-04, double 3.416400e-02>)
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bs, double f0xBFCF250B524399B2, double f0x3FF571B8AA00192A)
  %i.bz = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.ca = insertelement <2 x double> %i.bz, double %i.bs, i64 1
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.bx, <2 x double> %i.bw)
  %i.cc = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.cd = insertelement <2 x double> %i.cc, double %i.bu, i64 1
  %i.ce = insertelement <2 x double> %i.v, double %i.by, i64 1
  %i.cf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %i.cb, <2 x double> %i.ce) ; 2 uses
  %i.cg = extractelement <2 x double> %i.cf, i64 0
  %i.ch = extractelement <2 x double> %i.cf, i64 1
  %i.ci = fdiv double %i.cg, %i.ch                ; 2 uses
  %i.cj = fsub double %i.bp, %i.ci                ; 5 uses
  %i.ck = tail call double @llvm.fabs.f64(double %i.ci)
  %i.cl = fcmp olt double %i.ck, f0x3DA5FD7FE1796495
  br i1 %i.cl, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cm = fmul double %i.cj, %i.cj                ; 6 uses
  %i.cn = fmul double %i.cm, %i.cm
  %i.co = fmul double %i.cm, %i.cn                ; 2 uses
  %i.cp = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.cm, i64 0 ; 2 uses
  %i.cq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> <double f0xBFB4C35CE1826677, double 0.000000e+00>, <2 x double> <double f0x3FF571B8AA00192A, double f0x3F799AA60913A4F9>)
  %i.cr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> <double 3.796000e-03, double 0.000000e+00>, <2 x double> <double 8.930000e-04, double 3.416400e-02>)
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cm, double f0xBFCF250B524399B2, double f0x3FF571B8AA00192A)
  %i.ct = insertelement <2 x double> poison, double %i.co, i64 0
  %i.cu = insertelement <2 x double> %i.ct, double %i.cm, i64 1
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %i.cr, <2 x double> %i.cq)
  %i.cw = insertelement <2 x double> poison, double %i.cj, i64 0
  %i.cx = insertelement <2 x double> %i.cw, double %i.co, i64 1
  %i.cy = insertelement <2 x double> %i.v, double %i.cs, i64 1
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.cv, <2 x double> %i.cy) ; 2 uses
  %i.da = extractelement <2 x double> %i.cz, i64 0
  %i.db = extractelement <2 x double> %i.cz, i64 1
  %i.dc = fdiv double %i.da, %i.db                ; 2 uses
  %i.dd = fsub double %i.cj, %i.dc                ; 5 uses
  %i.de = tail call double @llvm.fabs.f64(double %i.dc)
  %i.df = fcmp olt double %i.de, f0x3DA5FD7FE1796495
  br i1 %i.df, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dg = fmul double %i.dd, %i.dd                ; 6 uses
  %i.dh = fmul double %i.dg, %i.dg
  %i.di = fmul double %i.dg, %i.dh                ; 2 uses
  %i.dj = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.dg, i64 0 ; 2 uses
  %i.dk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> <double f0xBFB4C35CE1826677, double 0.000000e+00>, <2 x double> <double f0x3FF571B8AA00192A, double f0x3F799AA60913A4F9>)
  %i.dl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> <double 3.796000e-03, double 0.000000e+00>, <2 x double> <double 8.930000e-04, double 3.416400e-02>)
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dg, double f0xBFCF250B524399B2, double f0x3FF571B8AA00192A)
  %i.dn = insertelement <2 x double> poison, double %i.di, i64 0
  %i.do = insertelement <2 x double> %i.dn, double %i.dg, i64 1
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> %i.dl, <2 x double> %i.dk)
  %i.dq = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.dr = insertelement <2 x double> %i.dq, double %i.di, i64 1
  %i.ds = insertelement <2 x double> %i.v, double %i.dm, i64 1
  %i.dt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> %i.dp, <2 x double> %i.ds) ; 2 uses
  %i.du = extractelement <2 x double> %i.dt, i64 0
  %i.dv = extractelement <2 x double> %i.dt, i64 1
  %i.dw = fdiv double %i.du, %i.dv                ; 2 uses
  %i.dx = fsub double %i.dd, %i.dw                ; 5 uses
  %i.dy = tail call double @llvm.fabs.f64(double %i.dw)
  %i.dz = fcmp olt double %i.dy, f0x3DA5FD7FE1796495
  br i1 %i.dz, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ea = fmul double %i.dx, %i.dx                ; 6 uses
  %i.eb = fmul double %i.ea, %i.ea
  %i.ec = fmul double %i.ea, %i.eb                ; 2 uses
  %i.ed = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.ea, i64 0 ; 2 uses
  %i.ee = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> <double f0xBFB4C35CE1826677, double 0.000000e+00>, <2 x double> <double f0x3FF571B8AA00192A, double f0x3F799AA60913A4F9>)
  %i.ef = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> <double 3.796000e-03, double 0.000000e+00>, <2 x double> <double 8.930000e-04, double 3.416400e-02>)
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.ea, double f0xBFCF250B524399B2, double f0x3FF571B8AA00192A)
  %i.eh = insertelement <2 x double> poison, double %i.ec, i64 0
  %i.ei = insertelement <2 x double> %i.eh, double %i.ea, i64 1
  %i.ej = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> %i.ef, <2 x double> %i.ee)
  %i.ek = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.el = insertelement <2 x double> %i.ek, double %i.ec, i64 1
  %i.em = insertelement <2 x double> %i.v, double %i.eg, i64 1
  %i.en = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> %i.ej, <2 x double> %i.em) ; 2 uses
  %i.eo = extractelement <2 x double> %i.en, i64 0
  %i.ep = extractelement <2 x double> %i.en, i64 1
  %i.eq = fdiv double %i.eo, %i.ep                ; 2 uses
  %i.er = fsub double %i.dx, %i.eq                ; 5 uses
  %i.es = tail call double @llvm.fabs.f64(double %i.eq)
  %i.et = fcmp olt double %i.es, f0x3DA5FD7FE1796495
  br i1 %i.et, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eu = fmul double %i.er, %i.er                ; 6 uses
  %i.ev = fmul double %i.eu, %i.eu
  %i.ew = fmul double %i.eu, %i.ev                ; 2 uses
  %i.ex = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.eu, i64 0 ; 2 uses
  %i.ey = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ex, <2 x double> <double f0xBFB4C35CE1826677, double 0.000000e+00>, <2 x double> <double f0x3FF571B8AA00192A, double f0x3F799AA60913A4F9>)
  %i.ez = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ex, <2 x double> <double 3.796000e-03, double 0.000000e+00>, <2 x double> <double 8.930000e-04, double 3.416400e-02>)
  %i.fa = tail call double @llvm.fmuladd.f64(double %i.eu, double f0xBFCF250B524399B2, double f0x3FF571B8AA00192A)
  %i.fb = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.fc = insertelement <2 x double> %i.fb, double %i.eu, i64 1
  %i.fd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fc, <2 x double> %i.ez, <2 x double> %i.ey)
  %i.fe = insertelement <2 x double> poison, double %i.er, i64 0
  %i.ff = insertelement <2 x double> %i.fe, double %i.ew, i64 1
  %i.fg = insertelement <2 x double> %i.v, double %i.fa, i64 1
  %i.fh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ff, <2 x double> %i.fd, <2 x double> %i.fg) ; 2 uses
  %i.fi = extractelement <2 x double> %i.fh, i64 0
  %i.fj = extractelement <2 x double> %i.fh, i64 1
  %i.fk = fdiv double %i.fi, %i.fj                ; 2 uses
  %i.fl = fsub double %i.er, %i.fk                ; 5 uses
  %i.fm = tail call double @llvm.fabs.f64(double %i.fk)
  %i.fn = fcmp olt double %i.fm, f0x3DA5FD7FE1796495
  br i1 %i.fn, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fo = fmul double %i.fl, %i.fl                ; 6 uses
  %i.fp = fmul double %i.fo, %i.fo
  %i.fq = fmul double %i.fo, %i.fp                ; 2 uses
  %i.fr = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.fo, i64 0 ; 2 uses
  %i.fs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> <double f0xBFB4C35CE1826677, double 0.000000e+00>, <2 x double> <double f0x3FF571B8AA00192A, double f0x3F799AA60913A4F9>)
  %i.ft = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> <double 3.796000e-03, double 0.000000e+00>, <2 x double> <double 8.930000e-04, double 3.416400e-02>)
  %i.fu = tail call double @llvm.fmuladd.f64(double %i.fo, double f0xBFCF250B524399B2, double f0x3FF571B8AA00192A)
  %i.fv = insertelement <2 x double> poison, double %i.fq, i64 0
  %i.fw = insertelement <2 x double> %i.fv, double %i.fo, i64 1
  %i.fx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fw, <2 x double> %i.ft, <2 x double> %i.fs)
  %i.fy = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.fz = insertelement <2 x double> %i.fy, double %i.fq, i64 1
  %i.ga = insertelement <2 x double> %i.v, double %i.fu, i64 1
  %i.gb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.fx, <2 x double> %i.ga) ; 2 uses
  %i.gc = extractelement <2 x double> %i.gb, i64 0
  %i.gd = extractelement <2 x double> %i.gb, i64 1
  %i.ge = fdiv double %i.gc, %i.gd                ; 2 uses
  %i.gf = fsub double %i.fl, %i.ge                ; 5 uses
  %i.gg = tail call double @llvm.fabs.f64(double %i.ge)
  %i.gh = fcmp olt double %i.gg, f0x3DA5FD7FE1796495
  br i1 %i.gh, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gi = fmul double %i.gf, %i.gf                ; 6 uses
  %i.gj = fmul double %i.gi, %i.gi
  %i.gk = fmul double %i.gi, %i.gj                ; 2 uses
  %i.gl = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.gi, i64 0 ; 2 uses
  %i.gm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gl, <2 x double> <double f0xBFB4C35CE1826677, double 0.000000e+00>, <2 x double> <double f0x3FF571B8AA00192A, double f0x3F799AA60913A4F9>)
  %i.gn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gl, <2 x double> <double 3.796000e-03, double 0.000000e+00>, <2 x double> <double 8.930000e-04, double 3.416400e-02>)
  %i.go = tail call double @llvm.fmuladd.f64(double %i.gi, double f0xBFCF250B524399B2, double f0x3FF571B8AA00192A)
  %i.gp = insertelement <2 x double> poison, double %i.gk, i64 0
  %i.gq = insertelement <2 x double> %i.gp, double %i.gi, i64 1
  %i.gr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gq, <2 x double> %i.gn, <2 x double> %i.gm)
  %i.gs = insertelement <2 x double> poison, double %i.gf, i64 0
  %i.gt = insertelement <2 x double> %i.gs, double %i.gk, i64 1
  %i.gu = insertelement <2 x double> %i.v, double %i.go, i64 1
  %i.gv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> %i.gr, <2 x double> %i.gu) ; 2 uses
  %i.gw = extractelement <2 x double> %i.gv, i64 0
  %i.gx = extractelement <2 x double> %i.gv, i64 1
  %i.gy = fdiv double %i.gw, %i.gx                ; 2 uses
  %i.gz = fsub double %i.gf, %i.gy                ; 5 uses
  %i.ha = tail call double @llvm.fabs.f64(double %i.gy)
  %i.hb = fcmp olt double %i.ha, f0x3DA5FD7FE1796495
  br i1 %i.hb, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hc = fmul double %i.gz, %i.gz                ; 6 uses
  %i.hd = fmul double %i.hc, %i.hc
  %i.he = fmul double %i.hc, %i.hd                ; 2 uses
  %i.hf = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.hc, i64 0 ; 2 uses
  %i.hg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hf, <2 x double> <double f0xBFB4C35CE1826677, double 0.000000e+00>, <2 x double> <double f0x3FF571B8AA00192A, double f0x3F799AA60913A4F9>)
  %i.hh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hf, <2 x double> <double 3.796000e-03, double 0.000000e+00>, <2 x double> <double 8.930000e-04, double 3.416400e-02>)
  %i.hi = tail call double @llvm.fmuladd.f64(double %i.hc, double f0xBFCF250B524399B2, double f0x3FF571B8AA00192A)
  %i.hj = insertelement <2 x double> poison, double %i.he, i64 0
  %i.hk = insertelement <2 x double> %i.hj, double %i.hc, i64 1
  %i.hl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hk, <2 x double> %i.hh, <2 x double> %i.hg)
  %i.hm = insertelement <2 x double> poison, double %i.gz, i64 0
  %i.hn = insertelement <2 x double> %i.hm, double %i.he, i64 1
  %i.ho = insertelement <2 x double> %i.v, double %i.hi, i64 1
  %i.hp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hn, <2 x double> %i.hl, <2 x double> %i.ho) ; 2 uses
  %i.hq = extractelement <2 x double> %i.hp, i64 0
  %i.hr = extractelement <2 x double> %i.hp, i64 1
  %i.hs = fdiv double %i.hq, %i.hr                ; 2 uses
  %i.ht = fsub double %i.gz, %i.hs                ; 5 uses
  %i.hu = tail call double @llvm.fabs.f64(double %i.hs)
  %i.hv = fcmp olt double %i.hu, f0x3DA5FD7FE1796495
  br i1 %i.hv, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hw = fmul double %i.ht, %i.ht                ; 6 uses
  %i.hx = fmul double %i.hw, %i.hw
  %i.hy = fmul double %i.hw, %i.hx                ; 2 uses
  %i.hz = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.hw, i64 0 ; 2 uses
  %i.ia = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hz, <2 x double> <double f0xBFB4C35CE1826677, double 0.000000e+00>, <2 x double> <double f0x3FF571B8AA00192A, double f0x3F799AA60913A4F9>)
  %i.ib = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hz, <2 x double> <double 3.796000e-03, double 0.000000e+00>, <2 x double> <double 8.930000e-04, double 3.416400e-02>)
  %i.ic = tail call double @llvm.fmuladd.f64(double %i.hw, double f0xBFCF250B524399B2, double f0x3FF571B8AA00192A)
  %i.id = insertelement <2 x double> poison, double %i.hy, i64 0
  %i.ie = insertelement <2 x double> %i.id, double %i.hw, i64 1
  %i.if = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ie, <2 x double> %i.ib, <2 x double> %i.ia)
  %i.ig = insertelement <2 x double> poison, double %i.ht, i64 0
  %i.ih = insertelement <2 x double> %i.ig, double %i.hy, i64 1
  %i.ii = insertelement <2 x double> %i.v, double %i.ic, i64 1
  %i.ij = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ih, <2 x double> %i.if, <2 x double> %i.ii) ; 2 uses
  %i.ik = extractelement <2 x double> %i.ij, i64 0
  %i.il = extractelement <2 x double> %i.ij, i64 1
  %i.im = fdiv double %i.ik, %i.il                ; 2 uses
  %i.in = fsub double %i.ht, %i.im
  %i.io = tail call double @llvm.fabs.f64(double %i.im)
  %i.ip = fcmp olt double %i.io, f0x3DA5FD7FE1796495
  br i1 %i.ip, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.iq = load ptr, ptr %2, align 8, !tbaa !53
  tail call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %i.iq, i32 noundef 2050)
  br label %bb.s

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.lcssa = phi double [ %i.ab, %bb.d ], [ %i.av, %bb.e ], [ %i.bp, %bb.f ], [ %i.cj, %bb.g ], [ %i.dd, %bb.h ], [ %i.dx, %bb.i ], [ %i.er, %bb.j ], [ %i.fl, %bb.k ], [ %i.gf, %bb.l ], [ %i.gz, %bb.m ], [ %i.ht, %bb.n ], [ %i.in, %bb.o ] ; 3 uses
  %i.ir = fmul double %.lcssa, %.lcssa            ; 4 uses
  %i.is = fmul double %i.ir, %i.ir
  %i.it = fmul double %i.ir, %i.is
  %i.iu = fmul double %i.e, f0x3FEBB67AE8584CAA
  %i.iv = insertelement <2 x double> poison, double %i.ir, i64 0
  %i.iw = shufflevector <2 x double> %i.iv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ix = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iw, <2 x double> <double f0xBFCF250B524399B2, double 3.416400e-02>, <2 x double> <double f0x3FF571B8AA00192A, double f0x3F799AA60913A4F9>) ; 2 uses
  %i.iy = extractelement <2 x double> %i.ix, i64 0
  %i.iz = extractelement <2 x double> %i.ix, i64 1
  %i.ja = tail call double @llvm.fmuladd.f64(double %i.it, double %i.iz, double %i.iy)
  %i.jb = fmul double %i.iu, %i.ja
  call void @sincos(double %.lcssa, ptr nonnull %sincos.sin, ptr nonnull %sincos.cos)
  %sin = load double, ptr %sincos.sin, align 8
  %cos = load double, ptr %sincos.cos, align 8
  %3 = fdiv double %i.jb, %cos                    ; 2 uses
  %i.jc = fdiv double %sin, f0x3FEBB67AE8584CAA
  %4 = call double @asin(double noundef %i.jc) #8 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.je = load double, ptr %i.jd, align 8, !tbaa !41
  %i.jf = fcmp une double %i.je, 0.000000e+00
  br i1 %i.jf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.jg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !42
  %i.ji = load double, ptr %i.b, align 8, !tbaa !43
  %5 = call noundef double @_Z23pj_authalic_lat_inversedPKdPK8PJconstsd(double noundef %4, ptr noundef %i.jh, ptr noundef nonnull %2, double noundef %i.ji)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p
  %.sroa.3.1 = phi double [ 0.000000e+00, %bb.p ], [ %5, %bb.r ], [ %4, %bb.q ]
  %.sroa.043.0 = phi double [ 0.000000e+00, %bb.p ], [ %3, %bb.r ], [ %3, %bb.q ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.043.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.3.1, 1
  ret { double, double } %.fca.1.insert
}

declare noundef ptr @_Z30pj_authalic_lat_compute_coeffsd(double noundef) local_unnamed_addr #1

declare noundef double @_Z17pj_authalic_lat_qdPK8PJconsts(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asin(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

declare void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef double @_Z23pj_authalic_lat_inversedPKdPK8PJconstsd(double noundef, ptr noundef, ptr noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write)
declare void @sincos(double noundef, ptr, ptr) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!38 = !{!"p1 double", !8, i64 0}
!39 = !{!"_ZTSN12_GLOBAL__N_110pj_eqearthE", !14, i64 0, !14, i64 8, !38, i64 16}
!40 = !{!39, !14, i64 8}
!41 = !{!36, !14, i64 216}
!42 = !{!39, !38, i64 16}
!43 = !{!39, !14, i64 0}
!44 = !{!36, !10, i64 8}
!45 = !{!36, !10, i64 16}
!46 = !{!36, !5, i64 360}
!47 = !{!36, !15, i64 380}
!48 = !{!36, !15, i64 384}
!49 = !{!36, !8, i64 152}
!50 = !{!36, !8, i64 104}
!51 = !{!36, !8, i64 112}
!52 = !{!36, !14, i64 288}
!53 = !{!36, !9, i64 0}
end_hunk_0
