Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/expfit?download=true
inline.NumInlined: 139
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::filesystem::__cxx11::path" = type { %"class.std::__cxx11::basic_string", %"struct.std::filesystem::__cxx11::path::_List" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::filesystem::__cxx11::path::_List" = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }

$_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

@s_ffn = local_unnamed_addr global [13 x ptr] [ptr null, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr null, ptr null, ptr null, ptr null, ptr null], align 16
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"aexp\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"exp_exp\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"exp5\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"exp7\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"exp9\00", align 1
@_ZL7nfp_ffn = internal unnamed_addr constant [11 x i32] [i32 0, i32 1, i32 2, i32 3, i32 5, i32 7, i32 9, i32 2, i32 4, i32 3, i32 6], align 16
@_ZL9longs_ffn = internal unnamed_addr constant [11 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], align 16
@.str.7 = private unnamed_addr constant [7 x i8] c"no fit\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"y = exp(-x/|a0|)\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"y = a1 exp(-x/|a0|)\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"y = a1 exp(-x/|a0|) + (1-a1) exp(-x/(|a2|)), a2 > a0 > 0\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"y = a0 exp(-x/|a1|) +  a2 exp(-x/|a3|) + a4, a3 >= a1\00", align 1
@.str.12 = private unnamed_addr constant [78 x i8] c"y = a0 exp(-x/|a1|) +  a2 exp(-x/|a3|) + a4 exp(-x/|a5|) + a6, a5 >= a3 >= a1\00", align 1
@.str.13 = private unnamed_addr constant [102 x i8] c"y = a0 exp(-x/|a1|) +  a2 exp(-x/|a3|) + a4 exp(-x/|a5|) + a6 exp(-x/|a7|) + a8, a7 >= a5 >= a3 >= a1\00", align 1
@.str.14 = private unnamed_addr constant [70 x i8] c"y = exp(-v) (cosh(wv) + 1/w sinh(wv)), v = x/(2 a0), w = sqrt(1 - a1)\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"y = 1/2*(a0+a1) - 1/2*(a0-a1)*erf( (x-a2) /a3^2)\00", align 1
@.str.16 = private unnamed_addr constant [77 x i8] c"y = a1 *2*a0*((exp(-x/a0)-1)*(a0/x)+1)+(1-a1)*2*a2*((exp(-x/a2)-1)*(a2/x)+1)\00", align 1
@.str.17 = private unnamed_addr constant [58 x i8] c"y = (1-a0)*cos(x*a1)*exp(-(x/a2)^a3) + a0*exp(-(x/a4)^a5)\00", align 1
@lmcurves = local_unnamed_addr global [12 x ptr] [ptr @_ZL16lmc_exp_one_parmdPKd, ptr @_ZL16lmc_exp_one_parmdPKd, ptr @_ZL16lmc_exp_two_parmdPKd, ptr @_ZL11lmc_exp_expdPKd, ptr @_ZL14lmc_exp_5_parmdPKd, ptr @_ZL14lmc_exp_7_parmdPKd, ptr @_ZL14lmc_exp_9_parmdPKd, ptr @_ZL14lmc_vac_2_parmdPKd, ptr @_ZL10lmc_erffitdPKd, ptr @_ZL17lmc_errest_3_parmdPKd, ptr @_ZL15lmc_pres_6_parmdPKd, ptr null], align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [42 x i8] c"fitfn = %d, should be in the range 0..%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [69 x i8] c"Using fixed parameters in curve fitting is temporarily not working.\0A\00", align 1
@debug = external local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [37 x i8] c"There are %d points to fit %d vars!\0A\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"Fit to function %d from %g through %g, dt=%g\0A\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.23 = private unnamed_addr constant [76 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/correlationfunctions/expfit.cpp\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"dy\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"j= %d, i= %d, x= %g, y= %g, dy=%g, ttt=%g\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"Not enough (%d) data points for fitting, dt = %g!\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.28 = private unnamed_addr constant [8 x i8] c"initial\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"Fit failed!\0A\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"final\00", align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"FIT: Integral of fitted function: %g\0A\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"Data + Fit\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"Time (ps)\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"# fitparms[%d] = %g\0A\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"%10.5e  %10.5e  %10.5e\0A\00", align 1
@.str.38 = private unnamed_addr constant [62 x i8] c"There are %d data points, %d parameters, %s chi2 = %g\0Aparams:\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"  %10g\00", align 1
@.str.43 = private unnamed_addr constant [74 x i8] c"COR: Correlation time (plain integral from %6.3f to %6.3f ps) = %8.5f ps\0A\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"COR:   %s\0A\00", align 1
@.str.46 = private unnamed_addr constant [74 x i8] c"COR: Fit to correlation function from %6.3f ps to %6.3f ps, results in a\0A\00", align 1
@.str.47 = private unnamed_addr constant [34 x i8] c"COR:%11s%11s%11s%11s%11s%11s%11s\0A\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"Fit from\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"Integral\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"Tail Value\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"Sum (ps)\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c" a1 (ps)\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c" a2 ()\00", align 1
@.str.54 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.55 = private unnamed_addr constant [9 x i8] c" a3 (ps)\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"sig\00", align 1
@.str.57 = private unnamed_addr constant [27 x i8] c"tStart %g ct_estimate: %g\0A\00", align 1
@.str.58 = private unnamed_addr constant [29 x i8] c"COR:%11.4e%11.4e%11.4e%11.4e\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c" %11.4e\00", align 1
@str = private unnamed_addr constant [84 x i8] c"FIT: Note that the constant term is not taken into account when computing integral.\00", align 1
@str.1 = private unnamed_addr constant [5 x i8] c"COR:\00", align 1
@str.2 = private unnamed_addr constant [61 x i8] c"COR: Relaxation times are computed as fit to an exponential:\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_Z11effnNparamsi(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %or.cond = icmp ult i32 %0, 11
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = zext nneg i32 %0 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr @_ZL7nfp_ffn, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef ptr @_Z15effnDescriptioni(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %or.cond = icmp ult i32 %0, 11
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = zext nneg i32 %0 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @_ZL9longs_ffn, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 0, 11) i32 @_Z9sffn2effnPPKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %.not.1 = icmp eq ptr %i.b, null
  br i1 %.not.1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !12
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %i.b) #16
  %i.e = icmp eq i32 %i.d, 0
  %spec.select.1 = zext i1 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1.1 = phi i32 [ 0, %bb.a ], [ %spec.select.1, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12   ; 2 uses
  %.not.2 = icmp eq ptr %i.g, null
  br i1 %.not.2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !tbaa !12
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) %i.g) #16
  %i.j = icmp eq i32 %i.i, 0
  %spec.select.2 = select i1 %i.j, i32 2, i32 %.1.1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.2 = phi i32 [ %.1.1, %bb.c ], [ %spec.select.2, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12   ; 2 uses
  %.not.3 = icmp eq ptr %i.l, null
  br i1 %.not.3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %0, align 8, !tbaa !12
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %i.l) #16
  %i.o = icmp eq i32 %i.n, 0
  %spec.select.3 = select i1 %i.o, i32 3, i32 %.1.2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.3 = phi i32 [ %.1.2, %bb.e ], [ %spec.select.3, %bb.f ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !12   ; 2 uses
  %.not.4 = icmp eq ptr %i.q, null
  br i1 %.not.4, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %0, align 8, !tbaa !12
  %i.s = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(1) %i.q) #16
  %i.t = icmp eq i32 %i.s, 0
  %spec.select.4 = select i1 %i.t, i32 4, i32 %.1.3
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.4 = phi i32 [ %.1.3, %bb.g ], [ %spec.select.4, %bb.h ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !12   ; 2 uses
  %.not.5 = icmp eq ptr %i.v, null
  br i1 %.not.5, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %0, align 8, !tbaa !12
  %i.x = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.w, ptr noundef nonnull dereferenceable(1) %i.v) #16
  %i.y = icmp eq i32 %i.x, 0
  %spec.select.5 = select i1 %i.y, i32 5, i32 %.1.4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1.5 = phi i32 [ %.1.4, %bb.i ], [ %spec.select.5, %bb.j ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !12  ; 2 uses
  %.not.6 = icmp eq ptr %i.aa, null
  br i1 %.not.6, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %0, align 8, !tbaa !12
  %i.ac = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(1) %i.aa) #16
  %i.ad = icmp eq i32 %i.ac, 0
  %spec.select.6 = select i1 %i.ad, i32 6, i32 %.1.5
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.6 = phi i32 [ %.1.5, %bb.k ], [ %spec.select.6, %bb.l ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !12 ; 2 uses
  %.not.7 = icmp eq ptr %i.af, null
  br i1 %.not.7, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = load ptr, ptr %0, align 8, !tbaa !12
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull dereferenceable(1) %i.af) #16
  %i.ai = icmp eq i32 %i.ah, 0
  %spec.select.7 = select i1 %i.ai, i32 7, i32 %.1.6
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.7 = phi i32 [ %.1.6, %bb.m ], [ %spec.select.7, %bb.n ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !12 ; 2 uses
  %.not.8 = icmp eq ptr %i.ak, null
  br i1 %.not.8, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = load ptr, ptr %0, align 8, !tbaa !12
  %i.am = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.al, ptr noundef nonnull dereferenceable(1) %i.ak) #16
  %i.an = icmp eq i32 %i.am, 0
  %spec.select.8 = select i1 %i.an, i32 8, i32 %.1.7
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1.8 = phi i32 [ %.1.7, %bb.o ], [ %spec.select.8, %bb.p ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !12 ; 2 uses
  %.not.9 = icmp eq ptr %i.ap, null
  br i1 %.not.9, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = load ptr, ptr %0, align 8, !tbaa !12
  %i.ar = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aq, ptr noundef nonnull dereferenceable(1) %i.ap) #16
  %i.as = icmp eq i32 %i.ar, 0
  %spec.select.9 = select i1 %i.as, i32 9, i32 %.1.8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1.9 = phi i32 [ %.1.8, %bb.q ], [ %spec.select.9, %bb.r ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !12 ; 2 uses
  %.not.10 = icmp eq ptr %i.au, null
  br i1 %.not.10, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = load ptr, ptr %0, align 8, !tbaa !12
  %i.aw = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.av, ptr noundef nonnull dereferenceable(1) %i.au) #16
  %i.ax = icmp eq i32 %i.aw, 0
  %spec.select.10 = select i1 %i.ax, i32 10, i32 %.1.9
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1.10 = phi i32 [ %.1.9, %bb.s ], [ %spec.select.10, %bb.t ]
  ret i32 %.1.10
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define internal noundef double @_ZL16lmc_exp_one_parmdPKd(double noundef %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = fneg double %0
  %i.b = load double, ptr %1, align 8, !tbaa !14
  %i.c = tail call double @llvm.fabs.f64(double %i.b)
  %i.d = fdiv double %i.a, %i.c                   ; 3 uses
  %i.e = fcmp ugt double %i.d, -2.000000e+02
  br i1 %i.e, label %bb.b, label %_ZL8safe_expd.exit

bb.b:                                             ; preds = %bb.a
  %i.f = fcmp ult double %i.d, 2.000000e+02
  br i1 %i.f, label %bb.c, label %_ZL8safe_expd.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call double @exp(double noundef %i.d) #17
  br label %_ZL8safe_expd.exit

_ZL8safe_expd.exit:                               ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi double [ %i.g, %bb.c ], [ f0x2DE6061812054CFA, %bb.a ], [ f0x51F73F60EA79F5B9, %bb.b ]
  ret double %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define internal noundef double @_ZL16lmc_exp_two_parmdPKd(double noundef %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !14
  %i.c = fneg double %0
  %i.d = load double, ptr %1, align 8, !tbaa !14
  %i.e = tail call double @llvm.fabs.f64(double %i.d)
  %i.f = fdiv double %i.c, %i.e                   ; 3 uses
  %i.g = fcmp ugt double %i.f, -2.000000e+02
  br i1 %i.g, label %bb.b, label %_ZL8safe_expd.exit

bb.b:                                             ; preds = %bb.a
  %i.h = fcmp ult double %i.f, 2.000000e+02
  br i1 %i.h, label %bb.c, label %_ZL8safe_expd.exit

bb.c:                                             ; preds = %bb.b
  %i.i = tail call double @exp(double noundef %i.f) #17
  br label %_ZL8safe_expd.exit

_ZL8safe_expd.exit:                               ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi double [ %i.i, %bb.c ], [ f0x2DE6061812054CFA, %bb.a ], [ f0x51F73F60EA79F5B9, %bb.b ]
  %i.j = fmul double %i.b, %.0.i
  ret double %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define internal noundef double @_ZL11lmc_exp_expdPKd(double noundef %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = fneg double %0                           ; 2 uses
  %i.b = load double, ptr %1, align 8, !tbaa !14
  %i.c = tail call double @llvm.fabs.f64(double %i.b) ; 2 uses
  %i.d = fdiv double %i.a, %i.c                   ; 3 uses
  %i.e = fcmp ugt double %i.d, -2.000000e+02
  br i1 %i.e, label %bb.b, label %_ZL8safe_expd.exit

bb.b:                                             ; preds = %bb.a
  %i.f = fcmp ult double %i.d, 2.000000e+02
  br i1 %i.f, label %bb.c, label %_ZL8safe_expd.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call double @exp(double noundef %i.d) #17
  br label %_ZL8safe_expd.exit

_ZL8safe_expd.exit:                               ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi double [ %i.g, %bb.c ], [ f0x2DE6061812054CFA, %bb.a ], [ f0x51F73F60EA79F5B9, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !14
  %i.j = tail call double @llvm.fabs.f64(double %i.i)
  %i.k = fadd double %i.c, %i.j
  %i.l = fdiv double %i.a, %i.k                   ; 3 uses
  %i.m = fcmp ugt double %i.l, -2.000000e+02
  br i1 %i.m, label %bb.d, label %_ZL8safe_expd.exit10

bb.d:                                             ; preds = %_ZL8safe_expd.exit
  %i.n = fcmp ult double %i.l, 2.000000e+02
  br i1 %i.n, label %bb.e, label %_ZL8safe_expd.exit10

bb.e:                                             ; preds = %bb.d
  %i.o = tail call double @exp(double noundef %i.l) #17
  br label %_ZL8safe_expd.exit10

_ZL8safe_expd.exit10:                             ; preds = %_ZL8safe_expd.exit, %bb.d, %bb.e
  %.0.i9 = phi double [ %i.o, %bb.e ], [ f0x2DE6061812054CFA, %_ZL8safe_expd.exit ], [ f0x51F73F60EA79F5B9, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !14 ; 2 uses
  %i.r = fsub double 1.000000e+00, %i.q
  %i.s = fmul double %.0.i9, %i.r
  %i.t = tail call double @llvm.fmuladd.f64(double %i.q, double %.0.i, double %i.s)
  ret double %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define internal noundef double @_ZL14lmc_exp_5_parmdPKd(double noundef %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = fneg double %0                           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !14
  %i.d = tail call double @llvm.fabs.f64(double %i.c) ; 2 uses
  %i.e = fdiv double %i.a, %i.d                   ; 3 uses
  %i.f = fcmp ugt double %i.e, -2.000000e+02
  br i1 %i.f, label %bb.b, label %_ZL8safe_expd.exit

bb.b:                                             ; preds = %bb.a
  %i.g = fcmp ult double %i.e, 2.000000e+02
  br i1 %i.g, label %bb.c, label %_ZL8safe_expd.exit

bb.c:                                             ; preds = %bb.b
  %i.h = tail call double @exp(double noundef %i.e) #17
  br label %_ZL8safe_expd.exit

_ZL8safe_expd.exit:                               ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi double [ %i.h, %bb.c ], [ f0x2DE6061812054CFA, %bb.a ], [ f0x51F73F60EA79F5B9, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load double, ptr %i.i, align 8, !tbaa !14
  %i.k = tail call double @llvm.fabs.f64(double %i.j)
  %i.l = fadd double %i.d, %i.k
  %i.m = fdiv double %i.a, %i.l                   ; 3 uses
  %i.n = fcmp ugt double %i.m, -2.000000e+02
  br i1 %i.n, label %bb.d, label %_ZL8safe_expd.exit11

bb.d:                                             ; preds = %_ZL8safe_expd.exit
  %i.o = fcmp ult double %i.m, 2.000000e+02
  br i1 %i.o, label %bb.e, label %_ZL8safe_expd.exit11

bb.e:                                             ; preds = %bb.d
  %i.p = tail call double @exp(double noundef %i.m) #17
  br label %_ZL8safe_expd.exit11

_ZL8safe_expd.exit11:                             ; preds = %_ZL8safe_expd.exit, %bb.d, %bb.e
  %.0.i10 = phi double [ %i.p, %bb.e ], [ f0x2DE6061812054CFA, %_ZL8safe_expd.exit ], [ f0x51F73F60EA79F5B9, %bb.d ]
  %i.q = load double, ptr %1, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !14
  %i.t = fmul double %.0.i10, %i.s
  %i.u = tail call double @llvm.fmuladd.f64(double %i.q, double %.0.i, double %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load double, ptr %i.v, align 8, !tbaa !14
  %i.x = fadd double %i.w, %i.u
  ret double %i.x
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define internal noundef double @_ZL14lmc_exp_7_parmdPKd(double noundef %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !14
  %i.c = tail call double @llvm.fabs.f64(double %i.b) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load double, ptr %i.d, align 8, !tbaa !14
  %i.f = tail call double @llvm.fabs.f64(double %i.e)
  %i.g = fadd double %i.c, %i.f                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load double, ptr %i.h, align 8, !tbaa !14
  %i.j = tail call double @llvm.fabs.f64(double %i.i)
  %i.k = fadd double %i.g, %i.j
  %i.l = fneg double %0                           ; 3 uses
  %i.m = fdiv double %i.l, %i.c                   ; 3 uses
  %i.n = fcmp ugt double %i.m, -2.000000e+02
  br i1 %i.n, label %bb.b, label %_ZL8safe_expd.exit

bb.b:                                             ; preds = %bb.a
  %i.o = fcmp ult double %i.m, 2.000000e+02
  br i1 %i.o, label %bb.c, label %_ZL8safe_expd.exit

bb.c:                                             ; preds = %bb.b
  %i.p = tail call double @exp(double noundef %i.m) #17
  br label %_ZL8safe_expd.exit

_ZL8safe_expd.exit:                               ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi double [ %i.p, %bb.c ], [ f0x2DE6061812054CFA, %bb.a ], [ f0x51F73F60EA79F5B9, %bb.b ]
  %i.q = fdiv double %i.l, %i.g                   ; 3 uses
  %i.r = fcmp ugt double %i.q, -2.000000e+02
  br i1 %i.r, label %bb.d, label %_ZL8safe_expd.exit19

bb.d:                                             ; preds = %_ZL8safe_expd.exit
  %i.s = fcmp ult double %i.q, 2.000000e+02
  br i1 %i.s, label %bb.e, label %_ZL8safe_expd.exit19

bb.e:                                             ; preds = %bb.d
  %i.t = tail call double @exp(double noundef %i.q) #17
  br label %_ZL8safe_expd.exit19

_ZL8safe_expd.exit19:                             ; preds = %_ZL8safe_expd.exit, %bb.d, %bb.e
  %.0.i18 = phi double [ %i.t, %bb.e ], [ f0x2DE6061812054CFA, %_ZL8safe_expd.exit ], [ f0x51F73F60EA79F5B9, %bb.d ]
  %i.u = fdiv double %i.l, %i.k                   ; 3 uses
  %i.v = fcmp ugt double %i.u, -2.000000e+02
  br i1 %i.v, label %bb.f, label %_ZL8safe_expd.exit21

bb.f:                                             ; preds = %_ZL8safe_expd.exit19
  %i.w = fcmp ult double %i.u, 2.000000e+02
  br i1 %i.w, label %bb.g, label %_ZL8safe_expd.exit21

bb.g:                                             ; preds = %bb.f
  %i.x = tail call double @exp(double noundef %i.u) #17
  br label %_ZL8safe_expd.exit21

_ZL8safe_expd.exit21:                             ; preds = %_ZL8safe_expd.exit19, %bb.f, %bb.g
  %.0.i20 = phi double [ %i.x, %bb.g ], [ f0x2DE6061812054CFA, %_ZL8safe_expd.exit19 ], [ f0x51F73F60EA79F5B9, %bb.f ]
  %i.y = load double, ptr %1, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load double, ptr %i.z, align 8, !tbaa !14
  %i.ab = fmul double %.0.i18, %i.aa
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.y, double %.0.i, double %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !14
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ae, double %.0.i20, double %i.ac)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !14
  %i.ai = fadd double %i.ah, %i.af
  ret double %i.ai
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define internal noundef double @_ZL14lmc_exp_9_parmdPKd(double noundef %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !14
  %i.c = tail call double @llvm.fabs.f64(double %i.b) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load double, ptr %i.d, align 8, !tbaa !14
  %i.f = tail call double @llvm.fabs.f64(double %i.e)
  %i.g = fadd double %i.c, %i.f                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load double, ptr %i.h, align 8, !tbaa !14
  %i.j = tail call double @llvm.fabs.f64(double %i.i)
  %i.k = fadd double %i.g, %i.j                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load double, ptr %i.l, align 8, !tbaa !14
  %i.n = tail call double @llvm.fabs.f64(double %i.m)
  %i.o = fadd double %i.k, %i.n
  %i.p = fneg double %0                           ; 4 uses
  %i.q = fdiv double %i.p, %i.c                   ; 3 uses
  %i.r = fcmp ugt double %i.q, -2.000000e+02
  br i1 %i.r, label %bb.b, label %_ZL8safe_expd.exit

bb.b:                                             ; preds = %bb.a
  %i.s = fcmp ult double %i.q, 2.000000e+02
  br i1 %i.s, label %bb.c, label %_ZL8safe_expd.exit

bb.c:                                             ; preds = %bb.b
  %i.t = tail call double @exp(double noundef %i.q) #17
  br label %_ZL8safe_expd.exit

_ZL8safe_expd.exit:                               ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi double [ %i.t, %bb.c ], [ f0x2DE6061812054CFA, %bb.a ], [ f0x51F73F60EA79F5B9, %bb.b ]
  %i.u = fdiv double %i.p, %i.g                   ; 3 uses
  %i.v = fcmp ugt double %i.u, -2.000000e+02
  br i1 %i.v, label %bb.d, label %_ZL8safe_expd.exit25

bb.d:                                             ; preds = %_ZL8safe_expd.exit
  %i.w = fcmp ult double %i.u, 2.000000e+02
  br i1 %i.w, label %bb.e, label %_ZL8safe_expd.exit25

bb.e:                                             ; preds = %bb.d
  %i.x = tail call double @exp(double noundef %i.u) #17
  br label %_ZL8safe_expd.exit25

_ZL8safe_expd.exit25:                             ; preds = %_ZL8safe_expd.exit, %bb.d, %bb.e
  %.0.i24 = phi double [ %i.x, %bb.e ], [ f0x2DE6061812054CFA, %_ZL8safe_expd.exit ], [ f0x51F73F60EA79F5B9, %bb.d ]
  %i.y = fdiv double %i.p, %i.k                   ; 3 uses
  %i.z = fcmp ugt double %i.y, -2.000000e+02
  br i1 %i.z, label %bb.f, label %_ZL8safe_expd.exit27

bb.f:                                             ; preds = %_ZL8safe_expd.exit25
  %i.aa = fcmp ult double %i.y, 2.000000e+02
  br i1 %i.aa, label %bb.g, label %_ZL8safe_expd.exit27

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call double @exp(double noundef %i.y) #17
  br label %_ZL8safe_expd.exit27

_ZL8safe_expd.exit27:                             ; preds = %_ZL8safe_expd.exit25, %bb.f, %bb.g
  %.0.i26 = phi double [ %i.ab, %bb.g ], [ f0x2DE6061812054CFA, %_ZL8safe_expd.exit25 ], [ f0x51F73F60EA79F5B9, %bb.f ]
  %i.ac = fdiv double %i.p, %i.o                  ; 3 uses
  %i.ad = fcmp ugt double %i.ac, -2.000000e+02
  br i1 %i.ad, label %bb.h, label %_ZL8safe_expd.exit29

bb.h:                                             ; preds = %_ZL8safe_expd.exit27
  %i.ae = fcmp ult double %i.ac, 2.000000e+02
  br i1 %i.ae, label %bb.i, label %_ZL8safe_expd.exit29

bb.i:                                             ; preds = %bb.h
  %i.af = tail call double @exp(double noundef %i.ac) #17
  br label %_ZL8safe_expd.exit29

_ZL8safe_expd.exit29:                             ; preds = %_ZL8safe_expd.exit27, %bb.h, %bb.i
  %.0.i28 = phi double [ %i.af, %bb.i ], [ f0x2DE6061812054CFA, %_ZL8safe_expd.exit27 ], [ f0x51F73F60EA79F5B9, %bb.h ]
  %i.ag = load double, ptr %1, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !14
  %i.aj = fmul double %.0.i24, %i.ai
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.ag, double %.0.i, double %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = load double, ptr %i.al, align 8, !tbaa !14
  %i.an = tail call double @llvm.fmuladd.f64(double %i.am, double %.0.i26, double %i.ak)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !14
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ap, double %.0.i28, double %i.an)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.as = load double, ptr %i.ar, align 8, !tbaa !14
  %i.at = fadd double %i.as, %i.aq
  ret double %i.at
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define internal noundef double @_ZL14lmc_vac_2_parmdPKd(double noundef %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %sincos.sin = alloca double, align 8            ; 2 uses
  %sincos.cos = alloca double, align 8            ; 2 uses
  %i.a = load double, ptr %1, align 8, !tbaa !14
  %i.b = tail call double @llvm.fabs.f64(double %i.a)
  %i.c = fmul double %i.b, 2.000000e+00
  %i.d = fdiv double %0, %i.c                     ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !14
  %i.g = fsub double 1.000000e+00, %i.f           ; 3 uses
  %i.h = fneg double %i.d
  %i.i = fcmp ult double %i.d, 2.000000e+02
  br i1 %i.i, label %bb.b, label %_ZL8safe_expd.exit

bb.b:                                             ; preds = %bb.a
  %i.j = fcmp ugt double %i.d, -2.000000e+02
  br i1 %i.j, label %bb.c, label %_ZL8safe_expd.exit

bb.c:                                             ; preds = %bb.b
  %i.k = tail call double @exp(double noundef %i.h) #17
  br label %_ZL8safe_expd.exit

_ZL8safe_expd.exit:                               ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi double [ %i.k, %bb.c ], [ f0x2DE6061812054CFA, %bb.a ], [ f0x51F73F60EA79F5B9, %bb.b ] ; 4 uses
  %i.l = fcmp une double %i.g, 0.000000e+00
  br i1 %i.l, label %bb.d, label %bb.k

bb.d:                                             ; preds = %_ZL8safe_expd.exit
  %i.m = tail call double @llvm.fabs.f64(double %i.g)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.m) ; 2 uses
  %i.n = fmul double %i.d, %sqrt                  ; 2 uses
  %i.o = fcmp ogt double %i.n, 1.000000e+02
  %.sroa.speculated = select i1 %i.o, double 1.000000e+02, double %i.n ; 7 uses
  %i.p = fcmp ogt double %i.g, 0.000000e+00
  br i1 %i.p, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.q = fmul double %.0.i, 5.000000e-01          ; 2 uses
  %i.r = fcmp ugt double %.sroa.speculated, -2.000000e+02
  br i1 %i.r, label %bb.f, label %_ZL8safe_expd.exit36

bb.f:                                             ; preds = %bb.e
  %i.s = fcmp ult double %.sroa.speculated, 2.000000e+02
  br i1 %i.s, label %bb.g, label %_ZL8safe_expd.exit30

bb.g:                                             ; preds = %bb.f
  %i.t = tail call double @exp(double noundef %.sroa.speculated) #17
  br label %_ZL8safe_expd.exit30

_ZL8safe_expd.exit30:                             ; preds = %bb.f, %bb.g
  %.0.i29 = phi double [ %i.t, %bb.g ], [ f0x51F73F60EA79F5B9, %bb.f ] ; 2 uses
  %i.u = fcmp ult double %.sroa.speculated, 2.000000e+02
  br i1 %i.u, label %bb.h, label %_ZL8safe_expd.exit34

_ZL8safe_expd.exit34:                             ; preds = %_ZL8safe_expd.exit30
  %i.v = fadd double %.0.i29, f0x2DE6061812054CFA
  br label %_ZL8safe_expd.exit36

bb.h:                                             ; preds = %_ZL8safe_expd.exit30
  %i.w = fneg double %.sroa.speculated            ; 2 uses
  %i.x = tail call double @exp(double noundef %i.w) #17
  %i.y = fadd double %.0.i29, %i.x
  %i.z = tail call double @exp(double noundef %.sroa.speculated) #17
  %i.aa = tail call double @exp(double noundef %i.w) #17
  br label %_ZL8safe_expd.exit36

_ZL8safe_expd.exit36:                             ; preds = %bb.e, %_ZL8safe_expd.exit34, %bb.h
  %.0.i3354 = phi double [ %i.z, %bb.h ], [ f0x51F73F60EA79F5B9, %_ZL8safe_expd.exit34 ], [ f0x2DE6061812054CFA, %bb.e ]
  %.pn63 = phi double [ %i.y, %bb.h ], [ %i.v, %_ZL8safe_expd.exit34 ], [ f0x51F73F60EA79F5B9, %bb.e ]
  %.0.i35 = phi double [ %i.aa, %bb.h ], [ f0x2DE6061812054CFA, %_ZL8safe_expd.exit34 ], [ f0x51F73F60EA79F5B9, %bb.e ]
  %i.ab = fmul double %i.q, %.pn63
  %i.ac = fsub double %.0.i3354, %.0.i35
  %i.ad = fmul double %i.q, %i.ac
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  call void @sincos(double %.sroa.speculated, ptr nonnull %sincos.sin, ptr nonnull %sincos.cos)
  %sin = load double, ptr %sincos.sin, align 8
  %cos = load double, ptr %sincos.cos, align 8
  %2 = fmul double %.0.i, %cos
  %i.ae = fmul double %.0.i, %sin
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZL8safe_expd.exit36
  %.026 = phi double [ %i.ab, %_ZL8safe_expd.exit36 ], [ %2, %bb.i ]
  %.pn = phi double [ %i.ad, %_ZL8safe_expd.exit36 ], [ %i.ae, %bb.i ]
  %.0 = fdiv double %.pn, %sqrt
  %i.af = fadd double %.026, %.0
  br label %bb.l

bb.k:                                             ; preds = %_ZL8safe_expd.exit
  %i.ag = fadd double %i.d, 1.000000e+00
  %i.ah = fmul double %i.ag, %.0.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.027 = phi double [ %i.af, %bb.j ], [ %i.ah, %bb.k ]
  ret double %.027
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define internal noundef double @_ZL10lmc_erffitdPKd(double noundef %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load double, ptr %i.a, align 8, !tbaa !14 ; 3 uses
  %i.c = fcmp une double %i.b, 0.000000e+00
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !14 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = fsub double %0, %i.e
  %i.g = fmul double %i.b, %i.b
  %i.h = fdiv double %i.f, %i.g
  %i.i = tail call double @erf(double noundef %i.h) #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = fcmp olt double %0, %i.e
  %. = select i1 %i.j, double -1.000000e+00, double 1.000000e+00
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi double [ %i.i, %bb.b ], [ %., %bb.c ]
  %i.k = load double, ptr %1, align 8, !tbaa !14  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !14 ; 2 uses
  %i.n = fadd double %i.k, %i.m
  %i.o = fsub double %i.k, %i.m
  %i.p = fneg double %i.o
  %i.q = tail call double @llvm.fmuladd.f64(double %i.p, double %.0, double %i.n)
  %i.r = fmul double %i.q, 5.000000e-01
  ret double %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define internal noundef double @_ZL17lmc_errest_3_parmdPKd(double noundef %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !14  ; 2 uses
  %i.b = tail call double @llvm.fabs.f64(double %i.a) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !14 ; 2 uses
  %i.e = tail call double @llvm.fabs.f64(double %i.d)
  %i.f = fadd double %i.b, %i.e                   ; 3 uses
  %i.g = fcmp une double %i.a, 0.000000e+00
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = fneg double %0
  %i.i = fdiv double %i.h, %i.b                   ; 3 uses
  %i.j = fcmp ugt double %i.i, -2.000000e+02
  br i1 %i.j, label %bb.c, label %_ZL10safe_expm1d.exit

bb.c:                                             ; preds = %bb.b
  %i.k = fcmp ult double %i.i, 2.000000e+02
  br i1 %i.k, label %bb.d, label %_ZL10safe_expm1d.exit

bb.d:                                             ; preds = %bb.c
  %i.l = tail call double @expm1(double noundef %i.i) #17
  br label %_ZL10safe_expm1d.exit

_ZL10safe_expm1d.exit:                            ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi double [ %i.l, %bb.d ], [ -1.000000e+00, %bb.b ], [ f0x51F73F60EA79F5B9, %bb.c ]
  %i.m = fmul double %i.b, %.0.i
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZL10safe_expm1d.exit
  %.024 = phi double [ %i.m, %_ZL10safe_expm1d.exit ], [ 0.000000e+00, %bb.a ]
  %i.n = fcmp une double %i.d, 0.000000e+00
  br i1 %i.n, label %bb.f, label %_ZL10safe_expm1d.exit28

bb.f:                                             ; preds = %bb.e
  %i.o = fneg double %0
  %i.p = fdiv double %i.o, %i.f                   ; 3 uses
  %i.q = fcmp ugt double %i.p, -2.000000e+02
  br i1 %i.q, label %bb.g, label %_ZL10safe_expm1d.exit28

bb.g:                                             ; preds = %bb.f
  %i.r = fcmp ult double %i.p, 2.000000e+02
  br i1 %i.r, label %bb.h, label %_ZL10safe_expm1d.exit28

bb.h:                                             ; preds = %bb.g
  %i.s = tail call double @expm1(double noundef %i.p) #17
  br label %_ZL10safe_expm1d.exit28

_ZL10safe_expm1d.exit28:                          ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.0 = phi double [ 0.000000e+00, %bb.e ], [ %i.s, %bb.h ], [ -1.000000e+00, %bb.f ], [ f0x51F73F60EA79F5B9, %bb.g ]
  %i.t = fcmp ogt double %0, 0.000000e+00
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZL10safe_expm1d.exit28
  %i.u = insertelement <2 x double> poison, double %i.b, i64 0
  %i.v = insertelement <2 x double> %i.u, double %i.f, i64 1
  %i.w = fmul <2 x double> %i.v, splat (double 2.000000e+00)
  %i.x = fmul double %i.f, %.0
  %i.y = insertelement <2 x double> poison, double %.024, i64 0
  %i.z = insertelement <2 x double> %i.y, double %i.x, i64 1
  %i.aa = insertelement <2 x double> poison, double %0, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = fdiv <2 x double> %i.z, %i.ab
  %i.ad = fadd <2 x double> %i.ac, splat (double 1.000000e+00)
  %i.ae = fmul <2 x double> %i.w, %i.ad           ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load double, ptr %i.af, align 8, !tbaa !14 ; 2 uses
  %i.ah = fcmp ogt double %i.ag, 0.000000e+00
  %i.ai = select i1 %i.ah, double %i.ag, double 0.000000e+00 ; 2 uses
  %i.aj = fcmp olt double %i.ai, 1.000000e+00
  %.sroa.speculated = select i1 %i.aj, double %i.ai, double 1.000000e+00 ; 2 uses
  %i.ak = fsub double 1.000000e+00, %.sroa.speculated
  %i.al = extractelement <2 x double> %i.ae, i64 1
  %i.am = fmul double %i.al, %i.ak
  %i.an = extractelement <2 x double> %i.ae, i64 0
  %i.ao = tail call double @llvm.fmuladd.f64(double %.sroa.speculated, double %i.an, double %i.am)
  br label %bb.j

bb.j:                                             ; preds = %_ZL10safe_expm1d.exit28, %bb.i
  %.025 = phi double [ %i.ao, %bb.i ], [ 0.000000e+00, %_ZL10safe_expm1d.exit28 ]
  ret double %.025
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define internal noundef double @_ZL15lmc_pres_6_parmdPKd(double noundef %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load double, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  %i.c = fcmp une double %i.b, 0.000000e+00
  %.pre = load double, ptr %1, align 8, !tbaa !14 ; 3 uses
  %i.d = fcmp une double %.pre, 0.000000e+00
  %or.cond = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load double, ptr %i.e, align 8, !tbaa !14
  %i.g = tail call double @llvm.fabs.f64(double %i.f) ; 2 uses
  %i.h = fcmp ogt double %i.g, 1.000000e+01
  %.sroa.speculated24 = select i1 %i.h, double 1.000000e+01, double %i.g
  %i.i = tail call double @llvm.fabs.f64(double %i.b)
  %i.j = fdiv double %0, %i.i
  %i.k = tail call double @pow(double noundef %i.j, double noundef %.sroa.speculated24) #17 ; 3 uses
  %i.l = fneg double %i.k
  %i.m = fcmp ult double %i.k, 2.000000e+02
  br i1 %i.m, label %bb.c, label %_ZL8safe_expd.exit

bb.c:                                             ; preds = %bb.b
  %i.n = fcmp ugt double %i.k, -2.000000e+02
  br i1 %i.n, label %bb.d, label %_ZL8safe_expd.exit

bb.d:                                             ; preds = %bb.c
  %i.o = tail call double @exp(double noundef %i.l) #17
  br label %_ZL8safe_expd.exit

_ZL8safe_expd.exit:                               ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi double [ %i.o, %bb.d ], [ f0x2DE6061812054CFA, %bb.b ], [ f0x51F73F60EA79F5B9, %bb.c ]
  %i.p = fmul double %.pre, %.0.i
  br label %bb.e

bb.e:                                             ; preds = %_ZL8safe_expd.exit, %bb.a
  %.019 = phi double [ %i.p, %_ZL8safe_expd.exit ], [ 0.000000e+00, %bb.a ]
  %i.q = fsub double 1.000000e+00, %.pre          ; 2 uses
  %i.r = fcmp une double %i.q, 0.000000e+00
  br i1 %i.r, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load double, ptr %i.s, align 8, !tbaa !14 ; 2 uses
  %i.u = fcmp une double %i.t, 0.000000e+00
  br i1 %i.u, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load double, ptr %i.v, align 8, !tbaa !14
  %i.x = tail call double @llvm.fabs.f64(double %i.w) ; 2 uses
  %i.y = fcmp ogt double %i.x, 1.000000e+01
  %.sroa.speculated = select i1 %i.y, double 1.000000e+01, double %i.x
  %i.z = tail call double @llvm.fabs.f64(double %i.t)
  %i.aa = fdiv double %0, %i.z
  %i.ab = tail call double @pow(double noundef %i.aa, double noundef %.sroa.speculated) #17 ; 3 uses
  %i.ac = fneg double %i.ab
  %i.ad = fcmp ult double %i.ab, 2.000000e+02
  br i1 %i.ad, label %bb.h, label %_ZL8safe_expd.exit22

bb.h:                                             ; preds = %bb.g
  %i.ae = fcmp ugt double %i.ab, -2.000000e+02
  br i1 %i.ae, label %bb.i, label %_ZL8safe_expd.exit22

bb.i:                                             ; preds = %bb.h
  %i.af = tail call double @exp(double noundef %i.ac) #17
  br label %_ZL8safe_expd.exit22

_ZL8safe_expd.exit22:                             ; preds = %bb.g, %bb.h, %bb.i
  %.0.i21 = phi double [ %i.af, %bb.i ], [ f0x2DE6061812054CFA, %bb.g ], [ f0x51F73F60EA79F5B9, %bb.h ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !14
  %i.ai = tail call double @llvm.fabs.f64(double %i.ah)
  %i.aj = fmul double %0, %i.ai
  %i.ak = tail call double @cos(double noundef %i.aj) #17
  %i.al = fmul double %.0.i21, %i.ak
  br label %bb.j

bb.j:                                             ; preds = %_ZL8safe_expd.exit22, %bb.f, %bb.e
  %.0 = phi double [ %i.al, %_ZL8safe_expd.exit22 ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.am = tail call double @llvm.fmuladd.f64(double %i.q, double %.0, double %.019)
  ret double %i.am
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @erf(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @expm1(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef double @_Z12fit_functioniPKdd(i32 noundef %0, ptr noundef %1, double noundef %2) local_unnamed_addr #7 {
bb.a:
  %or.cond = icmp ugt i32 %0, 10
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.18, i32 noundef %0, i32 noundef 10) #18 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %0 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @lmcurves, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = tail call noundef double %i.e(double noundef %2, ptr noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi double [ 0.000000e+00, %bb.b ], [ %i.f, %bb.c ]
  ret double %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define noundef float @_Z8do_lmfitiPKfPffS0_ffPK16gmx_output_env_tbiPdiPKc(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, float noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, float noundef %5, float noundef %6, ptr noundef %7, i1 noundef zeroext %8, i32 noundef %9, ptr noundef %10, i32 noundef %11, ptr noundef %12) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %13 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  store ptr %12, ptr %i.a, align 8, !tbaa !12
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !16
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.19, i64 68, i64 1, ptr %i.b) #19 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr @debug, align 8, !tbaa !16 ; 2 uses
  %.not153 = icmp eq ptr %i.c, null
  br i1 %.not153, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %or.cond.i = icmp ult i32 %9, 11
  br i1 %or.cond.i, label %bb.e, label %_Z11effnNparamsi.exit

bb.e:                                             ; preds = %bb.d
  %i.d = zext nneg i32 %9 to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @_ZL7nfp_ffn, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !9
  br label %_Z11effnNparamsi.exit

_Z11effnNparamsi.exit:                            ; preds = %bb.d, %bb.e
  %.0.i = phi i32 [ %i.f, %bb.e ], [ -1, %bb.d ]
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.20, i32 noundef %0, i32 noundef %.0.i) #17 ; 0 uses
  %i.h = load ptr, ptr @debug, align 8, !tbaa !16
  %i.i = fpext float %5 to double
  %i.j = fpext float %6 to double
  %i.k = fpext float %3 to double
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.21, i32 noundef %9, double noundef %i.i, double noundef %i.j, double noundef %i.k) #17 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_Z11effnNparamsi.exit, %bb.c
  %i.m = sext i32 %0 to i64                       ; 3 uses
  %i.n = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 615, i64 noundef range(i64 -2147483648, 2147483648) %i.m, i64 noundef 8) ; 11 uses
  %i.o = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef 616, i64 noundef range(i64 -2147483648, 2147483648) %i.m, i64 noundef 8) ; 8 uses
  %i.p = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, i32 noundef 617, i64 noundef range(i64 -2147483648, 2147483648) %i.m, i64 noundef 8) ; 4 uses
  %i.q = icmp sgt i32 %0, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %.not159 = icmp eq ptr %4, null
  %i.r = icmp eq ptr %2, null
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 6 uses
  %.0144225 = phi i32 [ 0, %.lr.ph ], [ %.1145, %bb.p ] ; 4 uses
  br i1 %.not159, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.t = load float, ptr %i.s, align 4, !tbaa !19
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  %i.v = uitofp nneg i32 %i.u to float
  %i.w = fmul float %3, %i.v
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = phi float [ %i.t, %bb.h ], [ %i.w, %bb.i ] ; 3 uses
  %i.y = fpext float %i.x to double               ; 2 uses
  %i.z = fcmp ult float %i.x, %5
  %i.aa = fcmp ugt float %i.x, %6
  %or.cond = or i1 %i.z, %i.aa
  br i1 %or.cond, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = sext i32 %.0144225 to i64               ; 3 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ab ; 2 uses
  store double %i.y, ptr %i.ac, align 8, !tbaa !14
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !19
  %i.af = fpext float %i.ae to double
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ab ; 2 uses
  store double %i.af, ptr %i.ag, align 8, !tbaa !14
  br i1 %i.r, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !19
  %i.aj = fpext float %i.ai to double             ; 2 uses
  %i.ak = fcmp ogt double %i.aj, f0x3E7AD7F29ABCAF48
  %.sroa.speculated = select i1 %i.ak, double %i.aj, double f0x3E7AD7F29ABCAF48
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.al = phi double [ %.sroa.speculated, %bb.l ], [ 1.000000e+00, %bb.k ] ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ab
  store double %i.al, ptr %i.am, align 8, !tbaa !14
  %i.an = load ptr, ptr @debug, align 8, !tbaa !16 ; 2 uses
  %.not160 = icmp eq ptr %i.an, null
  br i1 %.not160, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = load double, ptr %i.ac, align 8, !tbaa !14
  %i.ap = load double, ptr %i.ag, align 8, !tbaa !14
  %i.aq = trunc nuw nsw i64 %indvars.iv to i32
  %i.ar = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.an, ptr noundef nonnull @.str.26, i32 noundef %.0144225, i32 noundef %i.aq, double noundef %i.ao, double noundef %i.ap, double noundef %i.al, double noundef %i.y) #17 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.as = add nsw i32 %.0144225, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %.1145 = phi i32 [ %i.as, %bb.o ], [ %.0144225, %bb.j ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.p, %bb.f
  %.0144.lcssa = phi i32 [ 0, %bb.f ], [ %.1145, %bb.p ] ; 10 uses
  %or.cond.i161 = icmp ugt i32 %9, 10             ; 4 uses
  br i1 %or.cond.i161, label %_Z11effnNparamsi.exit163, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.at = zext nneg i32 %9 to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr @_ZL7nfp_ffn, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !9
  br label %_Z11effnNparamsi.exit163

_Z11effnNparamsi.exit163:                         ; preds = %._crit_edge, %bb.q
  %.0.i162 = phi i32 [ %i.av, %bb.q ], [ -1, %._crit_edge ]
  %i.aw = icmp slt i32 %.0144.lcssa, %.0.i162
  br i1 %i.aw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_Z11effnNparamsi.exit163
  %i.ax = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.ay = fpext float %3 to double
  %i.az = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ax, ptr noundef nonnull @.str.27, i32 noundef %.0144.lcssa, double noundef %i.ay) #18 ; 0 uses
  br label %bb.bm

bb.s:                                             ; preds = %_Z11effnNparamsi.exit163
  br i1 %8, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ba = load ptr, ptr @stdout, align 8, !tbaa !16
  tail call fastcc void @_ZL17print_chi2_paramsP8_IO_FILEiPKdPKciS2_S2_(ptr noundef %i.ba, i32 noundef %9, ptr noundef %10, ptr noundef nonnull @.str.28, i32 noundef %.0144.lcssa, ptr noundef %i.n, ptr noundef %i.o)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  br i1 %or.cond.i161, label %_Z11effnNparamsi.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bb = zext nneg i32 %9 to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr @_ZL7nfp_ffn, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !9
  br label %_Z11effnNparamsi.exit.i

_Z11effnNparamsi.exit.i:                          ; preds = %bb.v, %bb.u
  %.0.i.i = phi i32 [ %i.bd, %bb.v ], [ -1, %bb.u ] ; 4 uses
  switch i32 %9, label %_ZL19initiate_fit_paramsiPd.exit [
    i32 9, label %bb.ac
    i32 1, label %bb.w
    i32 2, label %bb.w
    i32 3, label %bb.w
    i32 4, label %bb.y
    i32 5, label %bb.y
    i32 6, label %bb.y
  ]

bb.w:                                             ; preds = %_Z11effnNparamsi.exit.i, %_Z11effnNparamsi.exit.i, %_Z11effnNparamsi.exit.i
  %i.be = icmp sgt i32 %.0.i.i, 2
  br i1 %i.be, label %bb.x, label %_ZL19initiate_fit_paramsiPd.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !14
  %i.bh = tail call double @llvm.fabs.f64(double %i.bg)
  %i.bi = load double, ptr %10, align 8, !tbaa !14 ; 3 uses
  %i.bj = fsub double %i.bh, %i.bi                ; 2 uses
  %i.bk = fcmp olt double %i.bj, %i.bi
  %.sroa.speculated42.i = select i1 %i.bk, double %i.bi, double %i.bj
  store double %.sroa.speculated42.i, ptr %i.bf, align 8, !tbaa !14
  br label %_ZL19initiate_fit_paramsiPd.exit.thread

bb.y:                                             ; preds = %_Z11effnNparamsi.exit.i, %_Z11effnNparamsi.exit.i, %_Z11effnNparamsi.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !14
  %i.bn = tail call double @llvm.fabs.f64(double %i.bm) ; 4 uses
  store double %i.bn, ptr %i.bl, align 8, !tbaa !14
  %i.bo = icmp sgt i32 %.0.i.i, 3
  br i1 %i.bo, label %bb.z, label %_ZL19initiate_fit_paramsiPd.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !14
  %i.br = tail call double @llvm.fabs.f64(double %i.bq)
  %i.bs = fsub double %i.br, %i.bn                ; 2 uses
  %i.bt = fcmp olt double %i.bs, %i.bn
  %.sroa.speculated38.i = select i1 %i.bt, double %i.bn, double %i.bs ; 4 uses
  store double %.sroa.speculated38.i, ptr %i.bp, align 8, !tbaa !14
  %i.bu = icmp samesign ugt i32 %.0.i.i, 5
  br i1 %i.bu, label %bb.aa, label %_ZL19initiate_fit_paramsiPd.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !14
  %i.bx = tail call double @llvm.fabs.f64(double %i.bw)
  %i.by = fsub double %i.bx, %.sroa.speculated38.i ; 2 uses
  %i.bz = fcmp olt double %i.by, %.sroa.speculated38.i
  %.sroa.speculated34.i = select i1 %i.bz, double %.sroa.speculated38.i, double %i.by ; 4 uses
  store double %.sroa.speculated34.i, ptr %i.bv, align 8, !tbaa !14
  %i.ca = icmp samesign ugt i32 %.0.i.i, 7
  br i1 %i.ca, label %bb.ab, label %_ZL19initiate_fit_paramsiPd.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !14
  %i.cd = tail call double @llvm.fabs.f64(double %i.cc)
  %i.ce = fsub double %i.cd, %.sroa.speculated34.i ; 2 uses
  %i.cf = fcmp olt double %i.ce, %.sroa.speculated34.i
  %.sroa.speculated.i = select i1 %i.cf, double %.sroa.speculated34.i, double %i.ce
  store double %.sroa.speculated.i, ptr %i.cb, align 8, !tbaa !14
  br label %_ZL19initiate_fit_paramsiPd.exit.thread

bb.ac:                                            ; preds = %_Z11effnNparamsi.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !14
  %i.ci = tail call double @llvm.fabs.f64(double %i.ch)
  %i.cj = load double, ptr %10, align 8, !tbaa !14
  %i.ck = fsub double %i.ci, %i.cj
  store double %i.ck, ptr %i.cg, align 8, !tbaa !14
  br label %_ZL19initiate_fit_paramsiPd.exit.thread

_ZL19initiate_fit_paramsiPd.exit.thread:          ; preds = %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac
  %i.cl = tail call noundef zeroext i1 @_Z9lmfit_expiPKdS0_S0_Pdbii(i32 noundef %.0144.lcssa, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.p, ptr noundef %10, i1 noundef zeroext %8, i32 noundef %9, i32 noundef %11)
  br label %bb.ad

_ZL19initiate_fit_paramsiPd.exit:                 ; preds = %_Z11effnNparamsi.exit.i
  %i.cm = tail call noundef zeroext i1 @_Z9lmfit_expiPKdS0_S0_Pdbii(i32 noundef %.0144.lcssa, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.p, ptr noundef %10, i1 noundef zeroext %8, i32 noundef %9, i32 noundef %11) ; 2 uses
  br i1 %or.cond.i161, label %_Z11effnNparamsi.exit.i165, label %bb.ad

bb.ad:                                            ; preds = %_ZL19initiate_fit_paramsiPd.exit.thread, %_ZL19initiate_fit_paramsiPd.exit
  %i.cn = phi i1 [ %i.cl, %_ZL19initiate_fit_paramsiPd.exit.thread ], [ %i.cm, %_ZL19initiate_fit_paramsiPd.exit ]
  %i.co = zext nneg i32 %9 to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr @_ZL7nfp_ffn, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !9
  br label %_Z11effnNparamsi.exit.i165

_Z11effnNparamsi.exit.i165:                       ; preds = %bb.ad, %_ZL19initiate_fit_paramsiPd.exit
  %i.cr = phi i1 [ %i.cn, %bb.ad ], [ %i.cm, %_ZL19initiate_fit_paramsiPd.exit ]
  %.0.i.i166 = phi i32 [ %i.cq, %bb.ad ], [ -1, %_ZL19initiate_fit_paramsiPd.exit ] ; 8 uses
  switch i32 %9, label %_ZL18extract_fit_paramsiPd.exit [
    i32 7, label %bb.ae
    i32 1, label %bb.af
    i32 2, label %bb.af
    i32 3, label %bb.af
    i32 4, label %bb.ah
    i32 5, label %bb.ah
    i32 6, label %bb.ah
    i32 9, label %bb.al
    i32 10, label %.preheader.i
  ]

.preheader.i:                                     ; preds = %_Z11effnNparamsi.exit.i165
  %i.cs = icmp sgt i32 %.0.i.i166, 1
  br i1 %i.cs, label %iter.check, label %_ZL18extract_fit_paramsiPd.exit

iter.check:                                       ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %.0.i.i166 to i64 ; 2 uses
  %i.ct = add nsw i64 %wide.trip.count.i, -1      ; 5 uses
  %min.iters.check = icmp ult i32 %.0.i.i166, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check298 = icmp ult i32 %.0.i.i166, 17
  br i1 %min.iters.check298, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cu = and i64 %i.ct, 12
  %n.vec = and i64 %i.ct, -16                     ; 4 uses
  %i.cv = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %index ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 40 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 72 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 104 ; 2 uses
  %wide.load = load <4 x double>, ptr %i.cx, align 8, !tbaa !14
  %wide.load299 = load <4 x double>, ptr %i.cy, align 8, !tbaa !14
  %wide.load300 = load <4 x double>, ptr %i.cz, align 8, !tbaa !14
  %wide.load301 = load <4 x double>, ptr %i.da, align 8, !tbaa !14
  %i.db = tail call <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load)
  %i.dc = tail call <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load299)
  %i.dd = tail call <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load300)
  %i.de = tail call <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load301)
  store <4 x double> %i.db, ptr %i.cx, align 8, !tbaa !14
  store <4 x double> %i.dc, ptr %i.cy, align 8, !tbaa !14
  store <4 x double> %i.dd, ptr %i.cz, align 8, !tbaa !14
  store <4 x double> %i.de, ptr %i.da, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  br i1 %cmp.n, label %_ZL18extract_fit_paramsiPd.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !40

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec302 = and i64 %i.ct, -4                   ; 3 uses
  %i.dg = or disjoint i64 %n.vec302, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index303 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next305, %vec.epilog.vector.body ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %index303
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %wide.load304 = load <4 x double>, ptr %i.di, align 8, !tbaa !14
  %i.dj = tail call <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load304)
  store <4 x double> %i.dj, ptr %i.di, align 8, !tbaa !14
  %index.next305 = add nuw i64 %index303, 4       ; 2 uses
  %i.dk = icmp eq i64 %index.next305, %n.vec302
  br i1 %i.dk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !32

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n306 = icmp eq i64 %i.ct, %n.vec302
  br i1 %cmp.n306, label %_ZL18extract_fit_paramsiPd.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %iter.check ], [ %i.cv, %vec.epilog.iter.check ], [ %i.dg, %vec.epilog.middle.block ]
  br label %.lr.ph.i

bb.ae:                                            ; preds = %_Z11effnNparamsi.exit.i165
  %i.dl = load double, ptr %10, align 8, !tbaa !14
  %i.dm = tail call double @llvm.fabs.f64(double %i.dl)
  store double %i.dm, ptr %10, align 8, !tbaa !14
  br label %_ZL18extract_fit_paramsiPd.exit

bb.af:                                            ; preds = %_Z11effnNparamsi.exit.i165, %_Z11effnNparamsi.exit.i165, %_Z11effnNparamsi.exit.i165
  %i.dn = load double, ptr %10, align 8, !tbaa !14
  %i.do = tail call double @llvm.fabs.f64(double %i.dn) ; 2 uses
  store double %i.do, ptr %10, align 8, !tbaa !14
  %i.dp = icmp sgt i32 %.0.i.i166, 2
  br i1 %i.dp, label %bb.ag, label %_ZL18extract_fit_paramsiPd.exit

bb.ag:                                            ; preds = %bb.af
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !14
  %i.ds = tail call double @llvm.fabs.f64(double %i.dr)
  %i.dt = fadd double %i.do, %i.ds
  store double %i.dt, ptr %i.dq, align 8, !tbaa !14
  br label %_ZL18extract_fit_paramsiPd.exit

bb.ah:                                            ; preds = %_Z11effnNparamsi.exit.i165, %_Z11effnNparamsi.exit.i165, %_Z11effnNparamsi.exit.i165
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.dv = load double, ptr %i.du, align 8, !tbaa !14
  %i.dw = tail call double @llvm.fabs.f64(double %i.dv) ; 2 uses
  store double %i.dw, ptr %i.du, align 8, !tbaa !14
  %i.dx = icmp sgt i32 %.0.i.i166, 3
  br i1 %i.dx, label %bb.ai, label %_ZL18extract_fit_paramsiPd.exit

bb.ai:                                            ; preds = %bb.ah
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !14
  %i.ea = tail call double @llvm.fabs.f64(double %i.dz)
  %i.eb = fadd double %i.dw, %i.ea                ; 2 uses
  store double %i.eb, ptr %i.dy, align 8, !tbaa !14
  %i.ec = icmp samesign ugt i32 %.0.i.i166, 5
  br i1 %i.ec, label %bb.aj, label %_ZL18extract_fit_paramsiPd.exit

bb.aj:                                            ; preds = %bb.ai
  %i.ed = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !14
  %i.ef = tail call double @llvm.fabs.f64(double %i.ee)
  %i.eg = fadd double %i.eb, %i.ef                ; 2 uses
  store double %i.eg, ptr %i.ed, align 8, !tbaa !14
  %i.eh = icmp samesign ugt i32 %.0.i.i166, 7
  br i1 %i.eh, label %bb.ak, label %_ZL18extract_fit_paramsiPd.exit

bb.ak:                                            ; preds = %bb.aj
  %i.ei = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !14
  %i.ek = tail call double @llvm.fabs.f64(double %i.ej)
  %i.el = fadd double %i.eg, %i.ek
  store double %i.el, ptr %i.ei, align 8, !tbaa !14
  br label %_ZL18extract_fit_paramsiPd.exit

bb.al:                                            ; preds = %_Z11effnNparamsi.exit.i165
  %i.em = load double, ptr %10, align 8, !tbaa !14
  %i.en = tail call double @llvm.fabs.f64(double %i.em) ; 2 uses
  store double %i.en, ptr %10, align 8, !tbaa !14
  %i.eo = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !14 ; 2 uses
  %i.eq = fcmp olt double %i.ep, 0.000000e+00
  br i1 %i.eq, label %.sink.split.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.er = fcmp ogt double %i.ep, 1.000000e+00
  br i1 %i.er, label %.sink.split.i, label %bb.an

.sink.split.i:                                    ; preds = %bb.am, %bb.al
  %.sink.i = phi double [ 0.000000e+00, %bb.al ], [ 1.000000e+00, %bb.am ]
  store double %.sink.i, ptr %i.eo, align 8, !tbaa !14
  br label %bb.an

bb.an:                                            ; preds = %.sink.split.i, %bb.am
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.et = load double, ptr %i.es, align 8, !tbaa !14
  %i.eu = tail call double @llvm.fabs.f64(double %i.et)
  %i.ev = fadd double %i.en, %i.eu
  store double %i.ev, ptr %i.es, align 8, !tbaa !14
  br label %_ZL18extract_fit_paramsiPd.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv.i ; 2 uses
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !14
  %i.ey = tail call double @llvm.fabs.f64(double %i.ex)
  store double %i.ey, ptr %i.ew, align 8, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL18extract_fit_paramsiPd.exit, label %.lr.ph.i, !llvm.loop !33

_ZL18extract_fit_paramsiPd.exit:                  ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %_Z11effnNparamsi.exit.i165, %.preheader.i, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.an
  br i1 %i.cr, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZL18extract_fit_paramsiPd.exit
  %i.ez = load ptr, ptr @stderr, align 8, !tbaa !16
  %fwrite154 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 12, i64 1, ptr %i.ez) #19 ; 0 uses
  br label %bb.bl

bb.ap:                                            ; preds = %_ZL18extract_fit_paramsiPd.exit
  br i1 %8, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fa = load ptr, ptr @stdout, align 8, !tbaa !16
  tail call fastcc void @_ZL17print_chi2_paramsP8_IO_FILEiPKdPKciS2_S2_(ptr noundef %i.fa, i32 noundef %9, ptr noundef %10, ptr noundef nonnull @.str.30, i32 noundef %.0144.lcssa, ptr noundef %i.n, ptr noundef %i.o)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  switch i32 %9, label %.preheader223 [
    i32 1, label %bb.as
    i32 2, label %bb.au
    i32 3, label %bb.aw
    i32 4, label %bb.az
    i32 5, label %bb.az
    i32 6, label %bb.az
  ]

.preheader223:                                    ; preds = %bb.ar
  %i.fb = icmp sgt i32 %.0144.lcssa, 1
  br i1 %i.fb, label %.lr.ph230, label %.loopexit

.lr.ph230:                                        ; preds = %.preheader223
  %i.fc = add nsw i32 %.0144.lcssa, -1
  %i.fd = sext i32 %9 to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr @lmcurves, i64 %i.fd ; 2 uses
  %wide.trip.count249 = zext nneg i32 %i.fc to i64
  %.pre = load double, ptr %i.n, align 8, !tbaa !14
  br label %bb.be

bb.as:                                            ; preds = %bb.ar
  %i.ff = load double, ptr %10, align 8, !tbaa !14 ; 3 uses
  %i.fg = fcmp oeq double %i.ff, 0.000000e+00
  br i1 %i.fg, label %_ZL5myexpddd.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fh = fpext float %5 to double
  %i.fi = fneg double %i.fh
  %i.fj = fdiv double %i.fi, %i.ff
  %i.fk = tail call double @exp(double noundef %i.fj) #17
  br label %_ZL5myexpddd.exit

_ZL5myexpddd.exit:                                ; preds = %bb.as, %bb.at
  %.0.i168 = phi double [ %i.fk, %bb.at ], [ 0.000000e+00, %bb.as ]
  %i.fl = fmul double %i.ff, %.0.i168
  br label %.loopexit

bb.au:                                            ; preds = %bb.ar
  %i.fm = load double, ptr %10, align 8, !tbaa !14 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !14 ; 2 uses
  %i.fp = fcmp oeq double %i.fo, 0.000000e+00
  %i.fq = fcmp oeq double %i.fm, 0.000000e+00
  %or.cond.i169 = or i1 %i.fq, %i.fp
  br i1 %or.cond.i169, label %_ZL5myexpddd.exit171, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fr = fpext float %5 to double
  %i.fs = fneg double %i.fr
  %i.ft = fdiv double %i.fs, %i.fm
  %i.fu = tail call double @exp(double noundef %i.ft) #17
  %i.fv = fmul double %i.fo, %i.fu
  br label %_ZL5myexpddd.exit171

_ZL5myexpddd.exit171:                             ; preds = %bb.au, %bb.av
  %.0.i170 = phi double [ %i.fv, %bb.av ], [ 0.000000e+00, %bb.au ]
  %i.fw = fmul double %i.fm, %.0.i170
  br label %.loopexit

bb.aw:                                            ; preds = %bb.ar
  %i.fx = load double, ptr %10, align 8, !tbaa !14 ; 3 uses
  %i.fy = fpext float %5 to double                ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !14 ; 3 uses
  %i.gb = fcmp oeq double %i.ga, 0.000000e+00
  %i.gc = fcmp oeq double %i.fx, 0.000000e+00
  %or.cond.i172 = or i1 %i.gc, %i.gb
  br i1 %or.cond.i172, label %_ZL5myexpddd.exit174, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gd = fneg double %i.fy
  %i.ge = fdiv double %i.gd, %i.fx
  %i.gf = tail call double @exp(double noundef %i.ge) #17
  %i.gg = fmul double %i.ga, %i.gf
  br label %_ZL5myexpddd.exit174

_ZL5myexpddd.exit174:                             ; preds = %bb.aw, %bb.ax
  %.0.i173 = phi double [ %i.gg, %bb.ax ], [ 0.000000e+00, %bb.aw ]
  %i.gh = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !14 ; 3 uses
  %i.gj = fsub double 1.000000e+00, %i.ga         ; 2 uses
  %i.gk = fcmp oeq double %i.gj, 0.000000e+00
  %i.gl = fcmp oeq double %i.gi, 0.000000e+00
  %or.cond.i175 = or i1 %i.gk, %i.gl
  br i1 %or.cond.i175, label %_ZL5myexpddd.exit177, label %bb.ay

bb.ay:                                            ; preds = %_ZL5myexpddd.exit174
  %i.gm = fneg double %i.fy
  %i.gn = fdiv double %i.gm, %i.gi
  %i.go = tail call double @exp(double noundef %i.gn) #17
  %i.gp = fmul double %i.gj, %i.go
  br label %_ZL5myexpddd.exit177

_ZL5myexpddd.exit177:                             ; preds = %_ZL5myexpddd.exit174, %bb.ay
  %.0.i176 = phi double [ %i.gp, %bb.ay ], [ 0.000000e+00, %_ZL5myexpddd.exit174 ]
  %i.gq = fmul double %i.gi, %.0.i176
  %i.gr = tail call double @llvm.fmuladd.f64(double %i.fx, double %.0.i173, double %i.gq)
  br label %.loopexit

bb.az:                                            ; preds = %bb.ar, %bb.ar, %bb.ar
  %i.gs = zext nneg i32 %9 to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr @_ZL7nfp_ffn, i64 %i.gs
  %i.gu = fpext float %5 to double
  %i.gv = fneg double %i.gu
  br label %bb.ba

bb.ba:                                            ; preds = %_ZL5myexpddd.exit183, %bb.az
  %indvars.iv243 = phi i64 [ %indvars.iv.next244, %_ZL5myexpddd.exit183 ], [ 0, %bb.az ] ; 3 uses
  %.0140 = phi double [ %i.hk, %_ZL5myexpddd.exit183 ], [ 0.000000e+00, %bb.az ] ; 2 uses
  br i1 %or.cond.i161, label %_Z11effnNparamsi.exit180, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gw = load i32, ptr %i.gt, align 4, !tbaa !9
  %i.gx = add nsw i32 %i.gw, -1
  %i.gy = sdiv i32 %i.gx, 2
  %i.gz = sext i32 %i.gy to i64
  br label %_Z11effnNparamsi.exit180

_Z11effnNparamsi.exit180:                         ; preds = %bb.ba, %bb.bb
  %.0.i179 = phi i64 [ %i.gz, %bb.bb ], [ -1, %bb.ba ]
  %i.ha = icmp slt i64 %indvars.iv243, %.0.i179
  br i1 %i.ha, label %bb.bc, label %.loopexit

bb.bc:                                            ; preds = %_Z11effnNparamsi.exit180
  %.idx = shl nuw nsw i64 %indvars.iv243, 4
  %i.hb = getelementptr inbounds nuw i8, ptr %10, i64 %.idx ; 2 uses
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !14 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.he = load double, ptr %i.hd, align 8, !tbaa !14 ; 2 uses
  %i.hf = fcmp oeq double %i.he, 0.000000e+00
  %i.hg = fcmp oeq double %i.hc, 0.000000e+00
  %or.cond.i181 = or i1 %i.hg, %i.hf
  br i1 %or.cond.i181, label %_ZL5myexpddd.exit183, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hh = fdiv double %i.gv, %i.hc
  %i.hi = tail call double @exp(double noundef %i.hh) #17
  %i.hj = fmul double %i.he, %i.hi
  br label %_ZL5myexpddd.exit183

_ZL5myexpddd.exit183:                             ; preds = %bb.bc, %bb.bd
  %.0.i182 = phi double [ %i.hj, %bb.bd ], [ 0.000000e+00, %bb.bc ]
  %i.hk = tail call double @llvm.fmuladd.f64(double %i.hc, double %.0.i182, double %.0140)
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1
  br label %bb.ba, !llvm.loop !34

bb.be:                                            ; preds = %.lr.ph230, %bb.be
  %i.hl = phi double [ %.pre, %.lr.ph230 ], [ %i.ht, %bb.be ]
  %indvars.iv246 = phi i64 [ 0, %.lr.ph230 ], [ %indvars.iv.next247, %bb.be ] ; 2 uses
  %.1141228 = phi double [ 0.000000e+00, %.lr.ph230 ], [ %i.hy, %bb.be ]
  %i.hm = load ptr, ptr %i.fe, align 8, !tbaa !17
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv246
  %i.ho = tail call noundef double %i.hm(double noundef %i.hl, ptr noundef %10)
  %i.hp = load ptr, ptr %i.fe, align 8, !tbaa !17
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 3 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next247 ; 2 uses
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !14
  %i.hs = tail call noundef double %i.hp(double noundef %i.hr, ptr noundef %10)
  %i.ht = load double, ptr %i.hq, align 8, !tbaa !14 ; 2 uses
  %i.hu = load double, ptr %i.hn, align 8, !tbaa !14
  %i.hv = fsub double %i.ht, %i.hu
  %i.hw = fadd double %i.ho, %i.hs
  %i.hx = fmul double %i.hw, %i.hv
  %i.hy = tail call double @llvm.fmuladd.f64(double %i.hx, double 5.000000e-01, double %.1141228) ; 2 uses
  %exitcond250.not = icmp eq i64 %indvars.iv.next247, %wide.trip.count249
  br i1 %exitcond250.not, label %.loopexit, label %bb.be, !llvm.loop !35

.loopexit:                                        ; preds = %_Z11effnNparamsi.exit180, %bb.be, %.preheader223, %_ZL5myexpddd.exit177, %_ZL5myexpddd.exit171, %_ZL5myexpddd.exit
  %.2142 = phi double [ %i.hy, %bb.be ], [ %i.fl, %_ZL5myexpddd.exit ], [ %i.fw, %_ZL5myexpddd.exit171 ], [ %i.gr, %_ZL5myexpddd.exit177 ], [ 0.000000e+00, %.preheader223 ], [ %.0140, %_Z11effnNparamsi.exit180 ] ; 3 uses
  br i1 %8, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %.loopexit
  %i.hz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, double noundef %.2142) ; 0 uses
  %i.ia = add i32 %9, -4
  %or.cond3 = icmp ult i32 %i.ia, 3
  br i1 %or.cond3, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %.loopexit
  %.not155 = icmp eq ptr %12, null
  br i1 %.not155, label %bb.bl, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef zeroext 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.ib = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.ib, ptr %14, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ib, ptr noundef nonnull align 1 dereferenceable(9) @.str.34, i64 9, i1 false)
  %i.ic = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 9, ptr %i.ic, align 8, !tbaa !25
  %i.id = getelementptr inbounds nuw i8, ptr %14, i64 25
  store i8 0, ptr %i.id, align 1, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.ie = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.ie, ptr %15, align 8, !tbaa !22
  store i64 2987056572392563012, ptr %i.ie, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 8, ptr %i.if, align 8, !tbaa !25
  %i.ig = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i8 0, ptr %i.ig, align 8, !tbaa !26
  %i.ih = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull @.str.33, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef %7)
          to label %bb.bi unwind label %bb.bk     ; 4 uses

bb.bi:                                            ; preds = %._crit_edge.i.i
  %i.ii = load ptr, ptr %15, align 8, !tbaa !27   ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.ie
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bi
  %i.ik = load i64, ptr %i.ie, align 8, !tbaa !26
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.il) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  %i.im = load ptr, ptr %14, align 8, !tbaa !27   ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.ib
  br i1 %i.in, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.io = load i64, ptr %i.ib, align 8, !tbaa !26
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.ip) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  %i.iq = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ir, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.iq, ptr noundef nonnull %i.ir) #17
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190
  %i.is = load ptr, ptr %13, align 8, !tbaa !27   ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.iu = icmp eq ptr %i.is, %i.it
  br i1 %i.iu, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.iv = load i64, ptr %i.it, align 8, !tbaa !26
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iw) #20
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %i.ix = add i32 %9, -11
  %or.cond295 = icmp ult i32 %i.ix, -10
  br i1 %or.cond295, label %.preheader, label %_Z11effnNparamsi.exit193.us.preheader

_Z11effnNparamsi.exit193.us.preheader:            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.iy = zext nneg i32 %9 to i64
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr @_ZL7nfp_ffn, i64 %i.iy
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !9
  %smax = call i32 @llvm.smax.i32(i32 %i.ja, i32 1)
  %wide.trip.count254 = zext nneg i32 %smax to i64
  br label %_Z11effnNparamsi.exit193.us

_Z11effnNparamsi.exit193.us:                      ; preds = %_Z11effnNparamsi.exit193.us.preheader, %_Z11effnNparamsi.exit193.us
  %indvars.iv251 = phi i64 [ 0, %_Z11effnNparamsi.exit193.us.preheader ], [ %indvars.iv.next252, %_Z11effnNparamsi.exit193.us ] ; 3 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv251
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !14
  %i.jd = trunc nuw nsw i64 %indvars.iv251 to i32
  %i.je = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ih, ptr noundef nonnull @.str.36, i32 noundef %i.jd, double noundef %i.jc) #17 ; 0 uses
  %indvars.iv.next252 = add nuw nsw i64 %indvars.iv251, 1 ; 2 uses
  %exitcond255.not = icmp eq i64 %indvars.iv.next252, %wide.trip.count254
  br i1 %exitcond255.not, label %.preheader, label %_Z11effnNparamsi.exit193.us, !llvm.loop !36

.preheader:                                       ; preds = %_Z11effnNparamsi.exit193.us, %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.jf = icmp sgt i32 %.0144.lcssa, 0
  br i1 %i.jf, label %.lr.ph237, label %._crit_edge238

.lr.ph237:                                        ; preds = %.preheader
  %.not158 = icmp eq ptr %4, null
  %i.jg = sext i32 %9 to i64
  %i.jh = getelementptr inbounds [8 x i8], ptr @lmcurves, i64 %i.jg ; 2 uses
  %wide.trip.count264 = zext nneg i32 %.0144.lcssa to i64 ; 2 uses
  br i1 %.not158, label %.lr.ph237.split.us, label %.lr.ph237.split

.lr.ph237.split.us:                               ; preds = %.lr.ph237, %.lr.ph237.split.us
  %indvars.iv261 = phi i64 [ %indvars.iv.next262, %.lr.ph237.split.us ], [ 0, %.lr.ph237 ] ; 4 uses
  %i.ji = trunc nuw nsw i64 %indvars.iv261 to i32
  %i.jj = uitofp nneg i32 %i.ji to float
  %i.jk = fmul float %3, %i.jj
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv261
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !14
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv261
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !14
  %i.jp = load ptr, ptr %i.jh, align 8, !tbaa !17
  %i.jq = fpext float %i.jk to double
  %i.jr = call noundef double %i.jp(double noundef %i.jq, ptr noundef %10)
  %i.js = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ih, ptr noundef nonnull @.str.37, double noundef %i.jm, double noundef %i.jo, double noundef %i.jr) #17 ; 0 uses
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next262, %wide.trip.count264
  br i1 %exitcond265.not, label %._crit_edge238, label %.lr.ph237.split.us, !llvm.loop !37

bb.bk:                                            ; preds = %._crit_edge.i.i
  %i.jt = landingpad { ptr, i32 }
          cleanup
  %i.ju = load ptr, ptr %15, align 8, !tbaa !27   ; 2 uses
  %i.jv = icmp eq ptr %i.ju, %i.ie
  br i1 %i.jv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194: ; preds = %bb.bk
  %i.jw = load i64, ptr %i.ie, align 8, !tbaa !26
  %i.jx = add i64 %i.jw, 1
  call void @_ZdlPvm(ptr noundef %i.ju, i64 noundef %i.jx) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  %i.jy = load ptr, ptr %14, align 8, !tbaa !27   ; 2 uses
  %i.jz = icmp eq ptr %i.jy, %i.ib
  br i1 %i.jz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196
  %i.ka = load i64, ptr %i.ib, align 8, !tbaa !26
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  resume { ptr, i32 } %i.jt

.lr.ph237.split:                                  ; preds = %.lr.ph237, %.lr.ph237.split
  %indvars.iv256 = phi i64 [ %indvars.iv.next257, %.lr.ph237.split ], [ 0, %.lr.ph237 ] ; 4 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv256
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !19
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv256
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !14
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv256
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !14
  %i.ki = load ptr, ptr %i.jh, align 8, !tbaa !17
  %i.kj = fpext float %i.kd to double
  %i.kk = call noundef double %i.ki(double noundef %i.kj, ptr noundef %10)
  %i.kl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ih, ptr noundef nonnull @.str.37, double noundef %i.kf, double noundef %i.kh, double noundef %i.kk) #17 ; 0 uses
  %indvars.iv.next257 = add nuw nsw i64 %indvars.iv256, 1 ; 2 uses
  %exitcond260.not = icmp eq i64 %indvars.iv.next257, %wide.trip.count264
  br i1 %exitcond260.not, label %._crit_edge238, label %.lr.ph237.split, !llvm.loop !37

._crit_edge238:                                   ; preds = %.lr.ph237.split, %.lr.ph237.split.us, %.preheader
  call void @_Z9xvgrcloseP8_IO_FILE(ptr noundef %i.ih)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bh, %._crit_edge238, %bb.ao
  %.3143 = phi double [ %.2142, %._crit_edge238 ], [ %.2142, %bb.bh ], [ 0.000000e+00, %bb.ao ]
  %i.km = fptrunc double %.3143 to float
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.r
  %.4 = phi float [ 0.000000e+00, %bb.r ], [ %i.km, %bb.bl ]
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 730, ptr noundef %i.n)
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef 731, ptr noundef %i.o)
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, i32 noundef 732, ptr noundef %i.p)
  ret float %.4
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL17print_chi2_paramsP8_IO_FILEiPKdPKciS2_S2_(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr @lmcurves, i64 %i.b
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.02227 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.l, %bb.b ]
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.f = load double, ptr %i.e, align 8, !tbaa !14
  %i.g = tail call noundef double %i.d(double noundef %i.f, ptr noundef %2)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  %i.i = load double, ptr %i.h, align 8, !tbaa !14
  %i.j = fsub double %i.i, %i.g                   ; 2 uses
  %i.k = fmul double %i.j, %i.j
  %i.l = fadd double %.02227, %i.k                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !41

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.022.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.l, %bb.b ] ; 2 uses
  %or.cond.i = icmp ult i32 %1, 11
  br i1 %or.cond.i, label %_Z11effnNparamsi.exit, label %_Z11effnNparamsi.exit.split.critedge

_Z11effnNparamsi.exit:                            ; preds = %._crit_edge
  %i.m = zext nneg i32 %1 to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @_ZL7nfp_ffn, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !9    ; 2 uses
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.38, i32 noundef %4, i32 noundef %i.o, ptr noundef %3, double noundef %.022.lcssa) #17 ; 0 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.split.us, label %_Z11effnNparamsi.exit26.us.preheader

_Z11effnNparamsi.exit26.us.preheader:             ; preds = %_Z11effnNparamsi.exit
  %smax = tail call i32 @llvm.smax.i32(i32 %i.o, i32 1)
  %wide.trip.count37 = zext nneg i32 %smax to i64
  br label %_Z11effnNparamsi.exit26.us

_Z11effnNparamsi.exit26.us:                       ; preds = %_Z11effnNparamsi.exit26.us.preheader, %_Z11effnNparamsi.exit26.us
  %indvars.iv34 = phi i64 [ 0, %_Z11effnNparamsi.exit26.us.preheader ], [ %indvars.iv.next35, %_Z11effnNparamsi.exit26.us ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv34
  %i.r = load double, ptr %i.q, align 8, !tbaa !14
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.39, double noundef %i.r) #17 ; 0 uses
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 2 uses
  %exitcond38.not = icmp eq i64 %indvars.iv.next35, %wide.trip.count37
  br i1 %exitcond38.not, label %.split.us, label %_Z11effnNparamsi.exit26.us, !llvm.loop !42

_Z11effnNparamsi.exit.split.critedge:             ; preds = %._crit_edge
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.38, i32 noundef %4, i32 noundef -1, ptr noundef %3, double noundef %.022.lcssa) #17 ; 0 uses
  br label %.split.us

.split.us:                                        ; preds = %_Z11effnNparamsi.exit26.us, %_Z11effnNparamsi.exit.split.critedge, %_Z11effnNparamsi.exit
  %fputc = tail call i32 @fputc(i32 10, ptr %0)   ; 0 uses
  ret void
}

declare noundef zeroext i1 @_Z9lmfit_expiPKdS0_S0_Pdbii(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #8

declare noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %2) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !12     ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #17 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.c, ptr %i.a, align 8, !tbaa !43
  %i.e = icmp ugt i64 %i.c, 15
  br i1 %i.e, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !27
  %i.g = load i64, ptr %i.a, align 8, !tbaa !43
  store i64 %i.g, ptr %i.d, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.h = phi ptr [ %i.f, %.noexc.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.c, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.i = load i8, ptr %i.b, align 1, !tbaa !26
  store i8 %i.i, ptr %i.h, align 1, !tbaa !26
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %i.b, i64 %i.c, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !25
  %i.l = load ptr, ptr %0, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !29   ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.q) #17
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.p, %bb.h ], [ %i.p, %bb.i ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.t = load i64, ptr %i.d, align 8, !tbaa !26
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #17
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !26
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_Z9xvgrcloseP8_IO_FILE(ptr noundef) local_unnamed_addr #9

declare noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #12

declare void @_Z9save_freePKcS0_iPv(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define noundef float @_Z7fit_acfiiPK16gmx_output_env_tbfffPfS2_(i32 noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3, float noundef %4, float noundef %5, float noundef %6, ptr noundef %7, ptr nofree noundef writeonly captures(address_is_null) %8) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [3 x double], align 16            ; 8 uses
  %i.b = alloca [3 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  br i1 %3, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_Z10bDebugModev()
  br i1 %i.c, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a, %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.d = phi i1 [ true, %.thread ], [ false, %bb.b ] ; 2 uses
  %i.e = fcmp ugt float %5, 0.000000e+00
  %i.f = sitofp i32 %0 to float
  %i.g = fmul float %6, %i.f                      ; 7 uses
  %.0 = select i1 %i.e, float %5, float %i.g      ; 8 uses
  %i.h = fdiv float %.0, %6
  %i.i = fptosi float %i.h to i32
  %.sroa.speculated131 = tail call i32 @llvm.smin.i32(i32 %0, i32 %i.i) ; 2 uses
  %i.j = load ptr, ptr @debug, align 8, !tbaa !16
  %i.k = tail call noundef float @_Z19print_and_integrateP8_IO_FILEifPKfS2_i(ptr noundef %i.j, i32 noundef %.sroa.speculated131, float noundef %6, ptr noundef %7, ptr noundef null, i32 noundef 1)
  br i1 %i.d, label %bb.d, label %.critedge114

bb.d:                                             ; preds = %bb.c
  %i.l = fpext float %i.k to double
  %i.m = sitofp i32 %.sroa.speculated131 to float
  %i.n = fmul float %6, %i.m
  %i.o = fpext float %i.n to double
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, double noundef 0.000000e+00, double noundef %i.o, double noundef %i.l) ; 0 uses
  %puts111 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %or.cond.i = icmp ult i32 %1, 11
  br i1 %or.cond.i, label %_Z15effnDescriptioni.exit, label %_Z11effnNparamsi.exit121.thread.critedge

_Z15effnDescriptioni.exit:                        ; preds = %bb.d
  %i.q = zext nneg i32 %1 to i64                  ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @_ZL9longs_ffn, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, ptr noundef %i.s) ; 0 uses
  %i.u = fpext float %4 to double
  %i.v = fcmp olt float %.0, %i.g
  %.sroa.speculated128 = select i1 %i.v, float %.0, float %i.g
  %i.w = fpext float %.sroa.speculated128 to double
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, double noundef %i.u, double noundef %i.w) ; 0 uses
  %i.y = icmp samesign ugt i32 %1, 1
  %spec.select = select i1 %i.y, ptr @.str.53, ptr @.str.54
  %i.z = lshr i64 1912, %i.q
  %.fr = freeze i64 %i.z
  %i.aa = trunc i64 %.fr to i1
  %spec.select162 = select i1 %i.aa, ptr @.str.55, ptr @.str.54
  br label %_Z11effnNparamsi.exit121.thread

_Z11effnNparamsi.exit121.thread.critedge:         ; preds = %bb.d
  %i.ab = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, ptr noundef null) ; 0 uses
  %i.ac = fpext float %4 to double
  %i.ad = fcmp olt float %.0, %i.g
  %.sroa.speculated128.c = select i1 %i.ad, float %.0, float %i.g
  %i.ae = fpext float %.sroa.speculated128.c to double
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, double noundef %i.ac, double noundef %i.ae) ; 0 uses
  br label %_Z11effnNparamsi.exit121.thread

_Z11effnNparamsi.exit121.thread:                  ; preds = %_Z15effnDescriptioni.exit, %_Z11effnNparamsi.exit121.thread.critedge
  %i.ag = phi ptr [ @.str.54, %_Z11effnNparamsi.exit121.thread.critedge ], [ %spec.select, %_Z15effnDescriptioni.exit ]
  %i.ah = phi ptr [ @.str.54, %_Z11effnNparamsi.exit121.thread.critedge ], [ %spec.select162, %_Z15effnDescriptioni.exit ]
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ah) ; 0 uses
  br label %.critedge114

.critedge114:                                     ; preds = %bb.c, %_Z11effnNparamsi.exit121.thread
  %i.aj = sext i32 %0 to i64
  %i.ak = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.23, i32 noundef 792, i64 noundef range(i64 -2147483648, 2147483648) %i.aj, i64 noundef 4) ; 7 uses
  %i.al = fcmp ule float %4, 0.000000e+00         ; 2 uses
  %i.am = fpext float %.0 to double               ; 2 uses
  %i.an = fpext float %i.g to double
  %i.ao = fcmp ogt float %.0, 0.000000e+00
  %i.ap = fcmp ogt float %i.g, 0.000000e+00
  %or.cond165185 = and i1 %i.ao, %i.ap
  br i1 %or.cond165185, label %.preheader163.lr.ph, label %.critedge

.preheader163.lr.ph:                              ; preds = %.critedge114
  %i.aq = icmp sgt i32 %0, 0                      ; 3 uses
  %i.ar = fpext float %6 to double                ; 4 uses
  %i.as = icmp eq i32 %1, 3                       ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.av = sitofp i32 %0 to double                 ; 2 uses
  %i.aw = fmul nnan double %i.av, 2.000000e-03
  %i.ax = fmul double %i.aw, %i.ar
  %i.ay = fmul nnan double %i.av, 2.000000e-01
  %i.az = fmul double %i.ay, %i.ar
  %.not112 = icmp ne ptr %8, null
  %i.ba = sext i32 %1 to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr @lmcurves, i64 %i.ba
  %i.bc = zext nneg i32 %1 to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr @_ZL7nfp_ffn, i64 %i.bc
  %i.be = fpext float %4 to double
  %wide.trip.count = zext i32 %0 to i64           ; 3 uses
  %wide.trip.count202 = zext nneg i32 %0 to i64
  %not. = xor i1 %i.al, true
  %storemerge215 = select i1 %i.as, double f0x3FEE666666666666, double 1.000000e+00
  %storemerge = select i1 %i.as, double %i.az, double 1.000000e+00
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.bf = icmp ult i32 %0, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod217 = icmp ne i64 %xtraiter, 0
  %i.bg = add i32 %1, -11
  %brmerge = icmp ult i32 %i.bg, -10
  br label %.preheader163

.preheader163:                                    ; preds = %.preheader163.lr.ph, %bb.n
  %.0100187 = phi i32 [ 0, %.preheader163.lr.ph ], [ %i.es, %bb.n ] ; 3 uses
  %.0108186 = phi double [ 0.000000e+00, %.preheader163.lr.ph ], [ %i.er, %bb.n ] ; 7 uses
  br i1 %i.aq, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %.preheader163, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %.preheader163 ] ; 5 uses
  %.0102167 = phi double [ %.1103, %bb.i ], [ 0.000000e+00, %.preheader163 ] ; 3 uses
  %.0105166 = phi double [ %.1106, %bb.i ], [ -1.000000e+00, %.preheader163 ] ; 4 uses
  %i.bh = trunc nuw nsw i64 %indvars.iv to i32
  %i.bi = uitofp nneg i32 %i.bh to float
  %i.bj = fmul float %6, %i.bi
  %i.bk = fpext float %i.bj to double             ; 2 uses
  %i.bl = fcmp ogt double %.0108186, %i.bk
  br i1 %i.bl, label %.critedge4, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !19
  %i.bo = fcmp ogt float %i.bn, 0.000000e+00
  br i1 %i.bo, label %.critedge4, label %.critedge2

.critedge4:                                       ; preds = %.lr.ph, %bb.e
  %i.bp = fcmp olt double %.0105166, 0.000000e+00
  br i1 %i.bp, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.critedge4
  %i.bq = fcmp ugt double %.0108186, %i.bk
  br i1 %i.bq, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv
  %i.bs = load float, ptr %i.br, align 4, !tbaa !19
  %i.bt = fpext float %i.bs to double             ; 2 uses
  %i.bu = fmul double %i.bt, 5.000000e-01
  br label %bb.i

bb.h:                                             ; preds = %.critedge4
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !19
  %i.bx = fpext float %i.bw to double
  %i.by = fadd double %.0102167, %i.bx
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.1106 = phi double [ %i.bt, %bb.g ], [ %.0105166, %bb.f ], [ %.0105166, %bb.h ] ; 2 uses
  %.1103 = phi double [ %i.bu, %bb.g ], [ %.0102167, %bb.f ], [ %i.by, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph, !llvm.loop !44

.critedge2:                                       ; preds = %bb.e, %bb.i, %.preheader163
  %.0105.lcssa = phi double [ -1.000000e+00, %.preheader163 ], [ %.1106, %bb.i ], [ %.0105166, %bb.e ] ; 2 uses
  %.0102.lcssa = phi double [ 0.000000e+00, %.preheader163 ], [ %.1103, %bb.i ], [ %.0102167, %bb.e ]
  %i.bz = fcmp ogt double %.0105.lcssa, 0.000000e+00
  %i.ca = fdiv double %i.ar, %.0105.lcssa
  %i.cb = fmul double %.0102.lcssa, %i.ca
  %.2104 = select i1 %i.bz, double %i.cb, double %i.am ; 7 uses
  %i.cc = load ptr, ptr @debug, align 8, !tbaa !16 ; 2 uses
  %.not = icmp eq ptr %i.cc, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.critedge2
  %i.cd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.cc, ptr noundef nonnull @.str.57, double noundef %.0108186, double noundef %.2104) #17 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge2
  %storemerge216 = select i1 %i.as, double %i.ax, double %.2104
  store double %storemerge216, ptr %i.a, align 16, !tbaa !14
  store double %storemerge215, ptr %i.at, align 8, !tbaa !14
  store double %storemerge, ptr %i.au, align 16, !tbaa !14
  br i1 %i.aq, label %.lr.ph174.preheader, label %._crit_edge

.lr.ph174.preheader:                              ; preds = %bb.k
  br i1 %i.bf, label %.lr.ph174.epil.preheader, label %.lr.ph174

.lr.ph174:                                        ; preds = %.lr.ph174.preheader, %.lr.ph174
  %indvars.iv191 = phi i64 [ %indvars.iv.next192.3, %.lr.ph174 ], [ 0, %.lr.ph174.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph174 ], [ 0, %.lr.ph174.preheader ]
  %i.ce = trunc nuw nsw i64 %indvars.iv191 to i32
  %i.cf = uitofp nneg i32 %i.ce to float
  %i.cg = fmul float %6, %i.cf
  %i.ch = fpext float %i.cg to double
  %i.ci = fadd double %.2104, %i.ch
  %i.cj = call double @sqrt(double noundef %i.ci) #17
  %i.ck = fptrunc double %i.cj to float
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv191
  store float %i.ck, ptr %i.cl, align 4, !tbaa !19
  %indvars.iv.next192 = or disjoint i64 %indvars.iv191, 1 ; 2 uses
  %i.cm = trunc nuw nsw i64 %indvars.iv.next192 to i32
  %i.cn = uitofp nneg i32 %i.cm to float
  %i.co = fmul float %6, %i.cn
  %i.cp = fpext float %i.co to double
  %i.cq = fadd double %.2104, %i.cp
  %i.cr = call double @sqrt(double noundef %i.cq) #17
  %i.cs = fptrunc double %i.cr to float
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next192
  store float %i.cs, ptr %i.ct, align 4, !tbaa !19
  %indvars.iv.next192.1 = or disjoint i64 %indvars.iv191, 2 ; 2 uses
  %i.cu = trunc nuw nsw i64 %indvars.iv.next192.1 to i32
  %i.cv = uitofp nneg i32 %i.cu to float
  %i.cw = fmul float %6, %i.cv
  %i.cx = fpext float %i.cw to double
  %i.cy = fadd double %.2104, %i.cx
  %i.cz = call double @sqrt(double noundef %i.cy) #17
  %i.da = fptrunc double %i.cz to float
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next192.1
  store float %i.da, ptr %i.db, align 4, !tbaa !19
  %indvars.iv.next192.2 = or disjoint i64 %indvars.iv191, 3 ; 2 uses
  %i.dc = trunc nuw nsw i64 %indvars.iv.next192.2 to i32
  %i.dd = uitofp nneg i32 %i.dc to float
  %i.de = fmul float %6, %i.dd
  %i.df = fpext float %i.de to double
  %i.dg = fadd double %.2104, %i.df
  %i.dh = call double @sqrt(double noundef %i.dg) #17
  %i.di = fptrunc double %i.dh to float
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next192.2
  store float %i.di, ptr %i.dj, align 4, !tbaa !19
  %indvars.iv.next192.3 = add nuw nsw i64 %indvars.iv191, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph174, !llvm.loop !45

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph174
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph174.epil.preheader

.lr.ph174.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph174.preheader
  %indvars.iv191.epil.init = phi i64 [ 0, %.lr.ph174.preheader ], [ %indvars.iv.next192.3, %._crit_edge.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod217)
  br label %.lr.ph174.epil

.lr.ph174.epil:                                   ; preds = %.lr.ph174.epil, %.lr.ph174.epil.preheader
  %indvars.iv191.epil = phi i64 [ %indvars.iv.next192.epil, %.lr.ph174.epil ], [ %indvars.iv191.epil.init, %.lr.ph174.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph174.epil ], [ 0, %.lr.ph174.epil.preheader ]
  %i.dk = trunc nuw nsw i64 %indvars.iv191.epil to i32
  %i.dl = uitofp nneg i32 %i.dk to float
  %i.dm = fmul float %6, %i.dl
  %i.dn = fpext float %i.dm to double
  %i.do = fadd double %.2104, %i.dn
  %i.dp = call double @sqrt(double noundef %i.do) #17
  %i.dq = fptrunc double %i.dp to float
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv191.epil
  store float %i.dq, ptr %i.dr, align 4, !tbaa !19
  %indvars.iv.next192.epil = add nuw nsw i64 %indvars.iv191.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph174.epil, !llvm.loop !46

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph174.epil, %bb.k
  %i.ds = fadd double %.0108186, 1.000000e-04
  %i.dt = fdiv double %i.ds, %i.ar
  %i.du = fptosi double %i.dt to i32
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %0, i32 %i.du)
  %i.dv = load ptr, ptr @debug, align 8, !tbaa !16
  %i.dw = call noundef float @_Z19print_and_integrateP8_IO_FILEifPKfS2_i(ptr noundef %i.dv, i32 noundef %.sroa.speculated, float noundef %6, ptr noundef %7, ptr noundef null, i32 noundef 1)
  %i.dx = fpext float %i.dw to double             ; 2 uses
  %i.dy = fptrunc double %.0108186 to float
  %i.dz = call noundef zeroext i1 @_Z10bDebugModev()
  %i.ea = call noundef float @_Z8do_lmfitiPKfPffS0_ffPK16gmx_output_env_tbiPdiPKc(i32 noundef %0, ptr noundef %7, ptr noundef %i.ak, float noundef %6, ptr noundef null, float noundef %i.dy, float noundef %.0, ptr noundef %2, i1 noundef zeroext %i.dz, i32 noundef %1, ptr noundef nonnull %i.a, i32 noundef 0, ptr noundef null)
  %i.eb = fpext float %i.ea to double             ; 2 uses
  %i.ec = fadd double %i.dx, %i.eb                ; 2 uses
  %i.ed = icmp eq i32 %.0100187, 1
  %or.cond = or i1 %i.al, %i.ed
  %or.cond115 = and i1 %.not112, %or.cond
  br i1 %or.cond115, label %.preheader, label %bb.l

.preheader:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, ptr noundef nonnull align 16 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa !14
  br i1 %i.aq, label %.lr.ph177, label %._crit_edge178

.lr.ph177:                                        ; preds = %.preheader, %.lr.ph177
  %indvars.iv199 = phi i64 [ %indvars.iv.next200, %.lr.ph177 ], [ 0, %.preheader ] ; 3 uses
  %i.ee = load ptr, ptr %i.bb, align 8, !tbaa !17
  %i.ef = trunc nuw nsw i64 %indvars.iv199 to i32
  %i.eg = uitofp nneg i32 %i.ef to float
  %i.eh = fmul float %6, %i.eg
  %i.ei = fpext float %i.eh to double
  %i.ej = call noundef double %i.ee(double noundef %i.ei, ptr noundef nonnull %i.b)
  %i.ek = fptrunc double %i.ej to float
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv199
  store float %i.ek, ptr %i.el, align 4, !tbaa !19
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %exitcond203.not = icmp eq i64 %indvars.iv.next200, %wide.trip.count202
  br i1 %exitcond203.not, label %._crit_edge178, label %.lr.ph177, !llvm.loop !47

._crit_edge178:                                   ; preds = %.lr.ph177, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge178, %._crit_edge
  br i1 %i.d, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.em = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.58, double noundef %.0108186, double noundef %i.dx, double noundef %i.eb, double noundef %i.ec) ; 0 uses
  br i1 %brmerge, label %.split180.us, label %_Z11effnNparamsi.exit125.us.preheader

_Z11effnNparamsi.exit125.us.preheader:            ; preds = %bb.m
  %i.en = load i32, ptr %i.bd, align 4, !tbaa !9
  %smax = call i32 @llvm.smax.i32(i32 %i.en, i32 1)
  %wide.trip.count207 = zext nneg i32 %smax to i64
  br label %_Z11effnNparamsi.exit125.us

_Z11effnNparamsi.exit125.us:                      ; preds = %_Z11effnNparamsi.exit125.us.preheader, %_Z11effnNparamsi.exit125.us
  %indvars.iv204 = phi i64 [ 0, %_Z11effnNparamsi.exit125.us.preheader ], [ %indvars.iv.next205, %_Z11effnNparamsi.exit125.us ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv204
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !14
  %i.eq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59, double noundef %i.ep) ; 0 uses
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1 ; 2 uses
  %exitcond208.not = icmp eq i64 %indvars.iv.next205, %wide.trip.count207
  br i1 %exitcond208.not, label %.split180.us, label %_Z11effnNparamsi.exit125.us, !llvm.loop !48

.split180.us:                                     ; preds = %_Z11effnNparamsi.exit125.us, %bb.m
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %.split180.us, %bb.l
  %i.er = fadd double %.0108186, %i.be            ; 3 uses
  %i.es = add nuw nsw i32 %.0100187, 1
  %i.et = icmp samesign ult i32 %.0100187, 2
  %i.eu = select i1 %not., i1 %i.et, i1 false
  %i.ev = fcmp olt double %i.er, %i.am
  %i.ew = fcmp olt double %i.er, %i.an
  %i.ex = and i1 %i.ev, %i.ew
  %or.cond165 = select i1 %i.eu, i1 %i.ex, i1 false
  br i1 %or.cond165, label %.preheader163, label %.critedge.loopexit, !llvm.loop !49

.critedge.loopexit:                               ; preds = %bb.n
  %i.ey = fptrunc double %i.ec to float
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.critedge114
  %.0107.lcssa = phi float [ 0.000000e+00, %.critedge114 ], [ %i.ey, %.critedge.loopexit ]
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.23, i32 noundef 884, ptr noundef %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret float %.0107.lcssa
}

declare noundef zeroext i1 @_Z10bDebugModev() local_unnamed_addr #9

declare noundef float @_Z19print_and_integrateP8_IO_FILEifPKfS2_i(ptr noundef, i32 noundef, float noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write)
declare void @sincos(double noundef, ptr, ptr) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fabs.v4f64(<4 x double>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { nofree nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { cold }
attributes #20 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"double", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!10, !10, i64 0}
!18 = !{!"float", !5, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!22 = !{!21, !11, i64 0}
!23 = !{!"long", !5, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0, !23, i64 8, !5, i64 16}
!25 = !{!24, !23, i64 8}
!26 = !{!5, !5, i64 0}
!27 = !{!24, !11, i64 0}
!28 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !10, i64 0}
!29 = !{!28, !28, i64 0}
!30 = distinct !{!30, !20}
!31 = distinct !{!31, !20, !38, !39}
!32 = distinct !{!32, !20, !38, !39}
!33 = distinct !{!33, !20, !39, !38}
!34 = distinct !{!34, !20}
!35 = distinct !{!35, !20}
!36 = distinct !{!36, !20}
!37 = distinct !{!37, !20}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = !{!"branch_weights", i32 4, i32 12}
!41 = distinct !{!41, !20}
!42 = distinct !{!42, !20}
!43 = !{!23, !23, i64 0}
!44 = distinct !{!44, !20}
!45 = distinct !{!45, !20}
!46 = distinct !{!46, !50}
!47 = distinct !{!47, !20}
!48 = distinct !{!48, !20}
!49 = distinct !{!49, !20}
!50 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
