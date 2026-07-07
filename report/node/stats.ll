inline.NumInlined: 54
inline.NumDeleted: 43
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

@.str = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Count=%9zu \00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"../../deps/v8/third_party/highway/src/hwy/stats.cc\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Assert %s: %s\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ret > 0\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Mean=%8.2e SD=%7.1e \00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Mean=%8.6e SD=%7.5e \00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Min=%8.5e Max=%8.5e \00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Skew=%5.2f Kurt=%7.2f \00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"GeoMean=%9.6f \00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"pos < static_cast<int>(sizeof(buf))\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN3hwy5Stats10AssimilateERKS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 6 uses
  %i.b = load i64, ptr %1, align 8
  %i.c = add nsw i64 %i.b, %i.a                   ; 5 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load float, ptr %i.f, align 8            ; 2 uses
  %i.h = load float, ptr %i.e, align 8            ; 2 uses
  %i.i = fcmp olt float %i.g, %i.h
  %i.j = select i1 %i.i, float %i.g, float %i.h
  store float %i.j, ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = load float, ptr %i.k, align 4            ; 2 uses
  %i.n = load float, ptr %i.l, align 4            ; 2 uses
  %i.o = fcmp olt float %i.m, %i.n
  %i.p = select i1 %i.o, float %i.n, float %i.m
  store float %i.p, ptr %i.k, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load double, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load double, ptr %i.s, align 8
  %i.u = fadd double %i.r, %i.t
  store double %i.u, ptr %i.s, align 8
  %i.v = load i64, ptr %1, align 8                ; 4 uses
  %i.w = mul nsw i64 %i.v, %i.a
  %i.x = sitofp i64 %i.w to double                ; 4 uses
  %i.y = mul nsw i64 %i.a, %i.a
  %i.z = mul nsw i64 %i.v, %i.v
  %i.aa = uitofp nneg i64 %i.z to double          ; 2 uses
  %i.ab = mul nsw i64 %i.c, %i.c
  %i.ac = uitofp nneg i64 %i.ab to double         ; 2 uses
  %i.ad = sitofp i64 %i.c to double               ; 2 uses
  %i.ae = fmul nnan double %i.ad, %i.ac
  %2 = insertelement <2 x double> poison, double %i.ad, i64 0
  %3 = insertelement <2 x double> %2, double %i.ac, i64 1
  %4 = fdiv <2 x double> splat (double 1.000000e+00), %3 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = load double, ptr %i.af, align 8         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8         ; 2 uses
  %i.aj = fsub double %i.ag, %i.ai                ; 3 uses
  %5 = sitofp i64 %i.v to double
  %i.ak = fmul double %i.ag, %5
  %6 = extractelement <2 x double> %4, i64 0      ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %8 = load double, ptr %7, align 8               ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %11 = load double, ptr %10, align 8             ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %14 = uitofp nneg i64 %i.y to double            ; 2 uses
  %15 = sitofp i64 %i.a to double                 ; 2 uses
  %i.al = tail call double @llvm.fmuladd.f64(double %15, double %i.ai, double %i.ak)
  %i.am = fmul double %6, %i.al
  store double %i.am, ptr %i.ah, align 8
  %16 = load double, ptr %9, align 8              ; 2 uses
  %17 = fadd double %8, %16
  %i.an = load double, ptr %12, align 8           ; 2 uses
  %18 = load i64, ptr %1, align 8                 ; 2 uses
  %19 = sub nsw i64 %i.a, %18
  %20 = sitofp i64 %19 to double
  %21 = sitofp i64 %18 to double
  %22 = fneg double %21                           ; 2 uses
  %i.ao = load double, ptr %13, align 8
  %23 = fsub nnan double %14, %i.x
  %i.ap = fadd nnan double %23, %i.aa
  %24 = insertelement <2 x double> poison, double %8, i64 0
  %25 = shufflevector <2 x double> %24, <2 x double> poison, <2 x i32> zeroinitializer
  %26 = insertelement <2 x double> poison, double %22, i64 0
  %27 = insertelement <2 x double> %26, double %i.aa, i64 1
  %28 = fmul <2 x double> %25, %27
  %29 = insertelement <2 x double> poison, double %15, i64 0 ; 2 uses
  %30 = insertelement <2 x double> %29, double %14, i64 1
  %31 = insertelement <2 x double> poison, double %16, i64 0
  %32 = shufflevector <2 x double> %31, <2 x double> poison, <2 x i32> zeroinitializer
  %33 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %30, <2 x double> %32, <2 x double> %28) ; 2 uses
  %34 = fmul double %i.aj, 4.000000e+00
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %36 = load double, ptr %35, align 8
  %37 = insertelement <2 x double> poison, double %i.aj, i64 0 ; 2 uses
  %38 = shufflevector <2 x double> %37, <2 x double> poison, <2 x i32> zeroinitializer
  %39 = insertelement <2 x double> %37, double 3.000000e+00, i64 1
  %40 = fmul <2 x double> %38, %39                ; 4 uses
  %41 = extractelement <2 x double> %40, i64 0    ; 2 uses
  %i.aq = fmul double %i.aj, %41
  %foldExtExtBinop = fmul <2 x double> %40, %40
  %42 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %43 = fmul double %i.aq, %i.x
  %i.ar = fmul double %43, %20
  %44 = extractelement <2 x double> %4, i64 1
  %i.as = fadd double %11, %i.an
  %i.at = fmul double %11, %22
  %45 = insertelement <2 x double> %29, double %i.ar, i64 1
  %46 = insertelement <2 x double> %4, double %i.an, i64 0
  %47 = insertelement <2 x double> poison, double %i.at, i64 0
  %48 = insertelement <2 x double> %47, double %i.as, i64 1
  %49 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %45, <2 x double> %46, <2 x double> %48) ; 2 uses
  %50 = extractelement <2 x double> %49, i64 0
  %i.au = fmul double %34, %50
  %51 = insertelement <2 x double> poison, double %i.x, i64 0
  %52 = shufflevector <2 x double> %51, <2 x double> %33, <2 x i32> <i32 0, i32 2>
  %53 = fmul <2 x double> %40, %52
  %54 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %55 = insertelement <2 x double> %49, double %17, i64 0
  %56 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %53, <2 x double> %54, <2 x double> %55)
  %i.av = fmul double %42, %i.x
  %i.aw = fmul double %i.ap, %i.av
  %57 = fdiv double %i.aw, %i.ae
  %58 = fadd double %57, %i.ao
  %i.ax = fmul double %41, 6.000000e+00
  %59 = extractelement <2 x double> %33, i64 1
  %60 = fmul double %i.ax, %59
  %61 = tail call double @llvm.fmuladd.f64(double %60, double %44, double %58)
  %62 = tail call double @llvm.fmuladd.f64(double %i.au, double %6, double %61)
  %63 = fadd double %36, %62
  store double %63, ptr %35, align 8
  store <2 x double> %56, ptr %7, align 8
  store i64 %i.c, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK3hwy5Stats8ToStringB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [300 x i8], align 16              ; 10 uses
  %i.b = load i64, ptr %1, align 8                ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.d, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.d, ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.f, align 2
  br label %bb.ak

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.g = and i32 %2, 1
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 300, ptr noundef nonnull @.str.1, i64 noundef %i.b) #9 ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_ZN3hwy5AbortEPKciS1_z(ptr noundef nonnull @.str.2, i32 noundef 78, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.i, %bb.c ]     ; 3 uses
  %i.k = and i32 %2, 2
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.m = load i64, ptr %1, align 8                ; 2 uses
  switch i64 %i.m, label %bb.h [
    i64 0, label %_ZNK3hwy5Stats17StandardDeviationEv.exit
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load double, ptr %i.n, align 8
  br label %_ZNK3hwy5Stats17StandardDeviationEv.exit

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load double, ptr %i.p, align 8
  %i.r = trunc i64 %i.m to i32
  %i.s = add i32 %i.r, -1
  %i.t = sitofp i32 %i.s to double
  %i.u = fdiv double %i.q, %i.t
  br label %_ZNK3hwy5Stats17StandardDeviationEv.exit

_ZNK3hwy5Stats17StandardDeviationEv.exit:         ; preds = %bb.f, %bb.g, %bb.h
  %.0.i.i = phi double [ %i.u, %bb.h ], [ %i.o, %bb.g ], [ 0.000000e+00, %bb.f ]
  %i.v = tail call noundef double @sqrt(double noundef %.0.i.i) #9 ; 2 uses
  %i.w = fptrunc double %i.v to float
  %i.x = fcmp ogt double %i.v, f0x4059000010000000
  %i.y = zext nneg i32 %.0 to i64                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y
  %i.aa = sub nsw i64 300, %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load double, ptr %i.ab, align 8
  %i.ad = fpext float %i.w to double
  %.str.6..str.7 = select i1 %i.x, ptr @.str.6, ptr @.str.7
  %i.ae = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.z, i64 noundef %i.aa, ptr noundef nonnull %.str.6..str.7, double noundef %i.ac, double noundef %i.ad) #9 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK3hwy5Stats17StandardDeviationEv.exit
  tail call void (ptr, i32, ptr, ...) @_ZN3hwy5AbortEPKciS1_z(ptr noundef nonnull @.str.2, i32 noundef 91, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
  unreachable

bb.j:                                             ; preds = %_ZNK3hwy5Stats17StandardDeviationEv.exit
  %i.ag = add nuw nsw i32 %i.ae, %.0
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  %.1 = phi i32 [ %i.ag, %bb.j ], [ %.0, %bb.e ]  ; 3 uses
  %i.ah = and i32 %2, 4
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.aj = zext nneg i32 %.1 to i64                ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aj
  %i.al = sub nsw i64 300, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load float, ptr %i.am, align 8
  %i.ao = fpext float %i.an to double
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aq = load float, ptr %i.ap, align 4
  %i.ar = fpext float %i.aq to double
  %i.as = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ak, i64 noundef %i.al, ptr noundef nonnull @.str.8, double noundef %i.ao, double noundef %i.ar) #9 ; 2 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @_ZN3hwy5AbortEPKciS1_z(ptr noundef nonnull @.str.2, i32 noundef 98, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.au = add nuw nsw i32 %i.as, %.1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.2 = phi i32 [ %i.au, %bb.n ], [ %.1, %bb.k ]  ; 3 uses
  %i.av = and i32 %2, 8
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.ax = zext nneg i32 %.2 to i64                ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  %i.az = sub nsw i64 300, %i.ax
  %i.ba = load i64, ptr %1, align 8               ; 5 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_ZNK3hwy5Stats8KurtosisEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bd = load double, ptr %i.bc, align 8         ; 4 uses
  %i.be = tail call double @llvm.fabs.f64(double %i.bd)
  %i.bf = fcmp olt double %i.be, f0x3E7AD7F29ABCAF48 ; 2 uses
  br i1 %i.bf, label %._ZNK3hwy5Stats14SampleSkewnessEv.exit_crit_edge.i, label %bb.r

._ZNK3hwy5Stats14SampleSkewnessEv.exit_crit_edge.i: ; preds = %bb.q
  %.pre.i = sitofp i64 %i.ba to double
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bh = load double, ptr %i.bg, align 8
  %i.bi = sitofp i64 %i.ba to double              ; 2 uses
  %i.bj = tail call double @sqrt(double noundef %i.bi) #9
  %i.bk = fmul double %i.bh, %i.bj
  %i.bl = tail call double @pow(double noundef %i.bd, double noundef 1.500000e+00) #9
  %i.bm = fdiv double %i.bk, %i.bl
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._ZNK3hwy5Stats14SampleSkewnessEv.exit_crit_edge.i
  %.pre-phi.i = phi double [ %.pre.i, %._ZNK3hwy5Stats14SampleSkewnessEv.exit_crit_edge.i ], [ %i.bi, %bb.r ] ; 2 uses
  %.0.i.i43 = phi double [ 0.000000e+00, %._ZNK3hwy5Stats14SampleSkewnessEv.exit_crit_edge.i ], [ %i.bm, %bb.r ]
  %i.bn = fadd double %.pre-phi.i, -1.000000e+00
  %i.bo = fdiv double %i.bn, %.pre-phi.i
  %i.bp = tail call double @pow(double noundef %i.bo, double noundef 1.500000e+00) #9
  %i.bq = fmul double %.0.i.i43, %i.bp
  br i1 %i.bf, label %._ZNK3hwy5Stats14SampleKurtosisEv.exit_crit_edge.i, label %bb.t

._ZNK3hwy5Stats14SampleKurtosisEv.exit_crit_edge.i: ; preds = %bb.s
  %.pre.i47 = sitofp i64 %i.ba to double
  br label %_ZNK3hwy5Stats14SampleKurtosisEv.exit.i

bb.t:                                             ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bs = load double, ptr %i.br, align 8
  %i.bt = sitofp i64 %i.ba to double              ; 2 uses
  %i.bu = fmul double %i.bs, %i.bt
  %i.bv = fmul double %i.bd, %i.bd
  %i.bw = fdiv double %i.bu, %i.bv
  br label %_ZNK3hwy5Stats14SampleKurtosisEv.exit.i

_ZNK3hwy5Stats14SampleKurtosisEv.exit.i:          ; preds = %bb.t, %._ZNK3hwy5Stats14SampleKurtosisEv.exit_crit_edge.i
  %.pre-phi.i44 = phi double [ %.pre.i47, %._ZNK3hwy5Stats14SampleKurtosisEv.exit_crit_edge.i ], [ %i.bt, %bb.t ] ; 2 uses
  %.0.i.i45 = phi double [ 0.000000e+00, %._ZNK3hwy5Stats14SampleKurtosisEv.exit_crit_edge.i ], [ %i.bw, %bb.t ]
  %i.bx = fadd double %.pre-phi.i44, -1.000000e+00
  %i.by = fdiv double %i.bx, %.pre-phi.i44        ; 2 uses
  %i.bz = fmul double %.0.i.i45, %i.by
  %i.ca = fmul double %i.by, %i.bz
  br label %_ZNK3hwy5Stats8KurtosisEv.exit

_ZNK3hwy5Stats8KurtosisEv.exit:                   ; preds = %bb.p, %_ZNK3hwy5Stats14SampleKurtosisEv.exit.i
  %.0.i53 = phi double [ %i.bq, %_ZNK3hwy5Stats14SampleKurtosisEv.exit.i ], [ 0.000000e+00, %bb.p ]
  %.0.i46 = phi double [ %i.ca, %_ZNK3hwy5Stats14SampleKurtosisEv.exit.i ], [ 0.000000e+00, %bb.p ]
  %i.cb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ay, i64 noundef %i.az, ptr noundef nonnull @.str.9, double noundef %.0.i53, double noundef %.0.i46) #9 ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK3hwy5Stats8KurtosisEv.exit
  tail call void (ptr, i32, ptr, ...) @_ZN3hwy5AbortEPKciS1_z(ptr noundef nonnull @.str.2, i32 noundef 105, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
  unreachable

bb.v:                                             ; preds = %_ZNK3hwy5Stats8KurtosisEv.exit
  %i.cd = add nuw nsw i32 %i.cb, %.2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.o
  %.3 = phi i32 [ %i.cd, %bb.v ], [ %.2, %bb.o ]  ; 3 uses
  %i.ce = and i32 %2, 16
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.cg = zext nneg i32 %.3 to i64                ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cg
  %i.ci = sub nsw i64 300, %i.cg
  %i.cj = load i64, ptr %1, align 8               ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %_ZNK3hwy5Stats13GeometricMeanEv.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cm = load double, ptr %i.cl, align 8
  %i.cn = sitofp i64 %i.cj to double
  %i.co = fdiv double %i.cm, %i.cn
  %i.cp = tail call double @exp(double noundef %i.co) #9
  br label %_ZNK3hwy5Stats13GeometricMeanEv.exit

_ZNK3hwy5Stats13GeometricMeanEv.exit:             ; preds = %bb.x, %bb.y
  %i.cq = phi double [ %i.cp, %bb.y ], [ 0.000000e+00, %bb.x ]
  %i.cr = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ch, i64 noundef %i.ci, ptr noundef nonnull @.str.10, double noundef %i.cq) #9 ; 2 uses
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNK3hwy5Stats13GeometricMeanEv.exit
  tail call void (ptr, i32, ptr, ...) @_ZN3hwy5AbortEPKciS1_z(ptr noundef nonnull @.str.2, i32 noundef 112, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
  unreachable

bb.aa:                                            ; preds = %_ZNK3hwy5Stats13GeometricMeanEv.exit
  %i.ct = add nuw nsw i32 %i.cr, %.3
  br label %bb.ab

bb.ab:                                            ; preds = %bb.w, %bb.aa
  %.4 = phi i32 [ %i.ct, %bb.aa ], [ %.3, %bb.w ]
  %i.cu = icmp samesign ult i32 %.4, 300
  br i1 %i.cu, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void (ptr, i32, ptr, ...) @_ZN3hwy5AbortEPKciS1_z(ptr noundef nonnull @.str.2, i32 noundef 116, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.5) #10
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cv, ptr %0, align 8
  %i.cw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #9 ; 8 uses
  %i.cx = icmp ugt i64 %i.cw, 15
  br i1 %i.cx, label %bb.ae, label %._crit_edge.i.i48

bb.ae:                                            ; preds = %bb.ad
  %i.cy = icmp slt i64 %i.cw, 0
  br i1 %i.cy, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #10
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.cz = add nuw i64 %i.cw, 1                    ; 2 uses
  %i.da = icmp slt i64 %i.cz, 0
  br i1 %i.da, label %bb.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i49, !prof !5

bb.ah:                                            ; preds = %bb.ag
  tail call void @_ZSt17__throw_bad_allocv() #10
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i49: ; preds = %bb.ag
  %i.db = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #11 ; 2 uses
  store ptr %i.db, ptr %0, align 8
  store i64 %i.cw, ptr %i.cv, align 8
  br label %._crit_edge.i.i48

._crit_edge.i.i48:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i49, %bb.ad
  %i.dc = phi ptr [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i49 ], [ %i.cv, %bb.ad ] ; 3 uses
  switch i64 %i.cw, label %bb.aj [
    i64 1, label %bb.ai
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit50
  ]

bb.ai:                                            ; preds = %._crit_edge.i.i48
  %i.dd = load i8, ptr %i.a, align 16
  store i8 %i.dd, ptr %i.dc, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit50

bb.aj:                                            ; preds = %._crit_edge.i.i48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dc, ptr nonnull align 16 %i.a, i64 %i.cw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit50: ; preds = %._crit_edge.i.i48, %bb.ai, %bb.aj
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cw, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cw
  store i8 0, ptr %i.df, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit50, %._crit_edge.i.i
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZN3hwy5AbortEPKciS1_z(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_0
