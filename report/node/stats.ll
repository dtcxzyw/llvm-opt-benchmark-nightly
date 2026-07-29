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
  %2 = sitofp i64 %i.w to double                  ; 4 uses
  %i.x = mul nsw i64 %i.a, %i.a
  %i.y = mul nsw i64 %i.v, %i.v
  %i.z = uitofp nneg i64 %i.y to double           ; 2 uses
  %i.aa = mul nsw i64 %i.c, %i.c
  %i.ab = uitofp nneg i64 %i.aa to double         ; 2 uses
  %i.ac = sitofp i64 %i.c to double               ; 2 uses
  %i.ad = fmul nnan double %i.ac, %i.ab
  %i.ae = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ab, i64 1
  %i.ag = fdiv <2 x double> splat (double 1.000000e+00), %i.af ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load double, ptr %i.ah, align 8         ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8         ; 2 uses
  %i.al = fsub double %i.ai, %i.ak                ; 3 uses
  %i.am = sitofp i64 %i.v to double
  %i.an = fmul double %i.ai, %i.am
  %i.ao = extractelement <2 x double> %i.ag, i64 0 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %3 = load double, ptr %i.ap, align 8            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4 = load double, ptr %i.ar, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %5 = uitofp nneg i64 %i.x to double             ; 2 uses
  %6 = sitofp i64 %i.a to double                  ; 2 uses
  %7 = tail call double @llvm.fmuladd.f64(double %6, double %i.ak, double %i.an)
  %i.au = fmul double %i.ao, %7
  store double %i.au, ptr %i.aj, align 8
  %i.av = load double, ptr %i.aq, align 8         ; 2 uses
  %8 = fadd double %3, %i.av
  %9 = load double, ptr %i.as, align 8            ; 2 uses
  %10 = load i64, ptr %1, align 8                 ; 2 uses
  %11 = sub nsw i64 %i.a, %10
  %12 = sitofp i64 %11 to double
  %13 = sitofp i64 %10 to double
  %14 = fneg double %13                           ; 2 uses
  %15 = load double, ptr %i.at, align 8
  %16 = fsub nnan double %5, %2
  %17 = fadd nnan double %16, %i.z
  %18 = insertelement <2 x double> poison, double %3, i64 0
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %20 = insertelement <2 x double> poison, double %14, i64 0
  %i.aw = insertelement <2 x double> %20, double %i.z, i64 1
  %21 = fmul <2 x double> %19, %i.aw
  %22 = insertelement <2 x double> poison, double %6, i64 0 ; 2 uses
  %23 = insertelement <2 x double> %22, double %5, i64 1
  %24 = insertelement <2 x double> poison, double %i.av, i64 0
  %25 = shufflevector <2 x double> %24, <2 x double> poison, <2 x i32> zeroinitializer
  %26 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %23, <2 x double> %25, <2 x double> %21) ; 2 uses
  %i.ax = fmul double %i.al, 4.000000e+00
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %28 = load double, ptr %27, align 8
  %29 = insertelement <2 x double> poison, double %i.al, i64 0 ; 2 uses
  %30 = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> zeroinitializer
  %31 = insertelement <2 x double> %29, double 3.000000e+00, i64 1
  %32 = fmul <2 x double> %30, %31                ; 4 uses
  %33 = extractelement <2 x double> %32, i64 0    ; 2 uses
  %34 = fmul double %i.al, %33
  %foldExtExtBinop = fmul <2 x double> %32, %32
  %35 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %36 = fmul double %34, %2
  %i.ay = fmul double %36, %12
  %37 = extractelement <2 x double> %i.ag, i64 1
  %38 = fadd double %4, %9
  %39 = fmul double %4, %14
  %i.az = insertelement <2 x double> %22, double %i.ay, i64 1
  %i.ba = insertelement <2 x double> %i.ag, double %9, i64 0
  %40 = insertelement <2 x double> poison, double %39, i64 0
  %i.bb = insertelement <2 x double> %40, double %38, i64 1
  %41 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.ba, <2 x double> %i.bb) ; 2 uses
  %42 = extractelement <2 x double> %41, i64 0
  %43 = fmul double %i.ax, %42
  %44 = insertelement <2 x double> poison, double %2, i64 0
  %i.bc = shufflevector <2 x double> %44, <2 x double> %26, <2 x i32> <i32 0, i32 2>
  %i.bd = fmul <2 x double> %32, %i.bc
  %45 = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = insertelement <2 x double> %41, double %8, i64 0
  %i.bf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %45, <2 x double> %i.be)
  %46 = fmul double %35, %2
  %i.bg = fmul double %17, %46
  %i.bh = fdiv double %i.bg, %i.ad
  %i.bi = fadd double %i.bh, %15
  %i.bj = fmul double %33, 6.000000e+00
  %47 = extractelement <2 x double> %26, i64 1
  %i.bk = fmul double %i.bj, %47
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bk, double %37, double %i.bi)
  %i.bm = tail call double @llvm.fmuladd.f64(double %43, double %i.ao, double %i.bl)
  %i.bn = fadd double %28, %i.bm
  store double %i.bn, ptr %27, align 8
  store <2 x double> %i.bf, ptr %i.ap, align 8
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
end_hunk_0
