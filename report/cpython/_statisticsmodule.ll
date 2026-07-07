inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PyModuleDef = type { %struct.PyModuleDef_Base, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.PyModuleDef_Base = type { %struct._object, ptr, i64, ptr }
%struct._object = type { %union.anon, ptr }
%union.anon = type { i64 }

@statisticsmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { %union.anon { i64 1407378104778752 }, ptr null }, ptr null, i64 0, ptr null }, ptr @.str, ptr @statistics_doc, i64 0, ptr @statistics_methods, ptr @_statisticsmodule_slots, ptr null, ptr null, ptr null }, align 8
@.str = private unnamed_addr constant [12 x i8] c"_statistics\00", align 1
@statistics_doc = internal constant [41 x i8] c"Accelerators for the statistics module.\0A\00", align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"_normal_dist_inv_cdf\00", align 1
@_statistics__normal_dist_inv_cdf__doc__ = internal constant [52 x i8] c"_normal_dist_inv_cdf($module, p, mu, sigma, /)\0A--\0A\0A\00", align 16
@statistics_methods = internal global [2 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.1, ptr @_statistics__normal_dist_inv_cdf, i32 128, [4 x i8] zeroinitializer, ptr @_statistics__normal_dist_inv_cdf__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@PyExc_TypeError = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [51 x i8] c"_normal_dist_inv_cdf expected 3 arguments, got %zd\00", align 1
@PyExc_ValueError = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"inv_cdf undefined for these parameters\00", align 1
@_statisticsmodule_slots = internal global [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr inttoptr (i64 2 to ptr) }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr inttoptr (i64 1 to ptr) }, { i32, [4 x i8], ptr } zeroinitializer], align 16

; Function Attrs: nounwind uwtable
define ptr @PyInit__statistics() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyModuleDef_Init(ptr noundef nonnull @statisticsmodule) #4
  ret ptr %i.a
}

declare ptr @PyModuleDef_Init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @_statistics__normal_dist_inv_cdf(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %.not = icmp eq i64 %2, 3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !10
  %i.b = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.a, ptr noundef nonnull @.str.3, i64 noundef %2) #4 ; 0 uses
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !10
  %i.d = tail call double @PyFloat_AsDouble(ptr noundef %i.c) #4 ; 6 uses
  %i.e = fcmp oeq double %i.d, -1.000000e+00
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @PyErr_Occurred() #4
  %.not15 = icmp eq ptr %i.f, null
  br i1 %.not15, label %bb.e, label %bb.u

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.i = tail call double @PyFloat_AsDouble(ptr noundef %i.h) #4 ; 2 uses
  %i.j = fcmp oeq double %i.i, -1.000000e+00
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = tail call ptr @PyErr_Occurred() #4
  %.not16 = icmp eq ptr %i.k, null
  br i1 %.not16, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = getelementptr i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !10
  %i.n = tail call double @PyFloat_AsDouble(ptr noundef %i.m) #4 ; 2 uses
  %i.o = fcmp oeq double %i.n, -1.000000e+00
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = tail call ptr @PyErr_Occurred() #4
  %.not17 = icmp eq ptr %i.p, null
  br i1 %.not17, label %bb.i, label %bb.u

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = fcmp ole double %i.d, 0.000000e+00
  %i.r = fcmp oge double %i.d, 1.000000e+00
  %or.cond.i = or i1 %i.q, %i.r
  br i1 %or.cond.i, label %_statistics__normal_dist_inv_cdf_impl.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = fadd double %i.d, -5.000000e-01          ; 6 uses
  %i.t = tail call double @llvm.fabs.f64(double %i.s)
  %i.u = fcmp ugt double %i.t, 4.250000e-01
  br i1 %i.u, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = fneg double %i.s
  %i.w = tail call double @llvm.fmuladd.f64(double %i.v, double %i.s, double 1.806250e-01) ; 14 uses
  %i.x = tail call double @llvm.fmuladd.f64(double %i.w, double f0x40B46A7ECA984B69, double f0x40DC0E457CB1AE76)
  %i.y = tail call double @llvm.fmuladd.f64(double %i.x, double %i.w, double f0x40E3317CAA64F4BE)
  %i.z = tail call double @llvm.fmuladd.f64(double %i.y, double %i.w, double f0x40D4B772D5D65266)
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double %i.w, double f0x40B512322E75C89F)
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.w, double f0x4085797EFDC8B3F7)
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.w, double f0x4045281B386E1AB5)
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.w, double 1.000000e+00) ; 2 uses
  %i.ae = fcmp oeq double %i.ad, 0.000000e+00
  br i1 %i.ae, label %_statistics__normal_dist_inv_cdf_impl.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = tail call double @llvm.fmuladd.f64(double %i.w, double f0x40A39A296F7D925E, double f0x40E052D26B2E45E4)
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.af, double %i.w, double f0x40F06C1C55B78F20)
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.w, double f0x40E66C3E869B752A)
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.w, double f0x40CAD1D8CD4EE71D)
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.w, double f0x409ECE5D2213C0CC)
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.w, double f0x4060A4888B1A436E)
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.w, double f0x400B18D91E9EEF75)
  %i.am = fmul double %i.s, %i.al
  %i.an = fdiv double %i.am, %i.ad
  br label %_statistics__normal_dist_inv_cdf_impl.exit

bb.m:                                             ; preds = %bb.j
  %i.ao = fcmp ole double %i.s, 0.000000e+00
  %i.ap = fsub double 1.000000e+00, %i.d
  %i.aq = select i1 %i.ao, double %i.d, double %i.ap ; 3 uses
  %i.ar = fcmp ole double %i.aq, 0.000000e+00
  %i.as = fcmp oge double %i.aq, 1.000000e+00
  %or.cond3.i = or i1 %i.ar, %i.as
  br i1 %or.cond3.i, label %_statistics__normal_dist_inv_cdf_impl.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = tail call double @llvm.log.f64(double %i.aq), !tbaa !6
  %i.au = fneg double %i.at
  %i.av = tail call double @sqrt(double noundef %i.au) #4, !tbaa !6 ; 3 uses
  %i.aw = fcmp ugt double %i.av, 5.000000e+00
  br i1 %i.aw, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = fadd double %i.av, -1.600000e+00        ; 14 uses
  %3 = tail call double @llvm.fmuladd.f64(double %i.ax, double f0x3F49615AC0B7ACE9, double f0x3F9744EB6C45EC67)
  %4 = tail call double @llvm.fmuladd.f64(double %3, double %i.ax, double f0x3FCEF2ABB9B85C37)
  %5 = tail call double @llvm.fmuladd.f64(double %4, double %i.ax, double f0x3FF453CC085375B2)
  %6 = tail call double @llvm.fmuladd.f64(double %5, double %i.ax, double f0x400D2ECB1A3D02C4)
  %7 = tail call double @llvm.fmuladd.f64(double %6, double %i.ax, double f0x401713F71462256A)
  %8 = tail call double @llvm.fmuladd.f64(double %7, double %i.ax, double f0x4012857748CAB19B)
  %9 = tail call double @llvm.fmuladd.f64(double %8, double %i.ax, double f0x3FF6C665FDE9526A)
  %10 = tail call double @llvm.fmuladd.f64(double %i.ax, double f0x3E120D3F686439E4, double f0x3F41F18CBFDF2728)
  %11 = tail call double @llvm.fmuladd.f64(double %10, double %i.ax, double f0x3F8F207A7EAB17BF)
  %12 = tail call double @llvm.fmuladd.f64(double %11, double %i.ax, double f0x3FC2F5123394F040)
  %13 = tail call double @llvm.fmuladd.f64(double %12, double %i.ax, double f0x3FE61292F23385C9)
  %14 = tail call double @llvm.fmuladd.f64(double %13, double %i.ax, double f0x3FFAD278E6526633)
  %15 = tail call double @llvm.fmuladd.f64(double %14, double %i.ax, double f0x40006CEFBB46A449)
  %16 = tail call double @llvm.fmuladd.f64(double %15, double %i.ax, double 1.000000e+00)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ay = fadd double %i.av, -5.000000e+00        ; 14 uses
  %17 = tail call double @llvm.fmuladd.f64(double %i.ay, double f0x3E8AFB74D693BF93, double f0x3EFC6EC6CC59E02A)
  %18 = tail call double @llvm.fmuladd.f64(double %17, double %i.ay, double f0x3F545C1908425345)
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %i.ay, double f0x3F9B2B41193B4EE7)
  %20 = tail call double @llvm.fmuladd.f64(double %19, double %i.ay, double f0x3FD2FAD9315255CF)
  %21 = tail call double @llvm.fmuladd.f64(double %20, double %i.ay, double f0x3FFC8EA6461FA445)
  %22 = tail call double @llvm.fmuladd.f64(double %21, double %i.ay, double f0x4015DAEA6E875003)
  %23 = tail call double @llvm.fmuladd.f64(double %22, double %i.ay, double f0x401AA1B1C13EE526)
  %24 = tail call double @llvm.fmuladd.f64(double %i.ay, double f0x3CE269BFF1F8C190, double f0x3E831446F740B9E0)
  %25 = tail call double @llvm.fmuladd.f64(double %24, double %i.ay, double f0x3EF35C2C496374BF)
  %26 = tail call double @llvm.fmuladd.f64(double %25, double %i.ay, double f0x3F49C8BC979DC5D7)
  %27 = tail call double @llvm.fmuladd.f64(double %26, double %i.ay, double f0x3F8E76F93215462A)
  %28 = tail call double @llvm.fmuladd.f64(double %27, double %i.ay, double f0x3FC186EB183443FB)
  %29 = tail call double @llvm.fmuladd.f64(double %28, double %i.ay, double f0x3FE331D34FC7D77F)
  %30 = tail call double @llvm.fmuladd.f64(double %29, double %i.ay, double 1.000000e+00)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.077.i = phi double [ %9, %bb.o ], [ %23, %bb.p ]
  %.076.i = phi double [ %16, %bb.o ], [ %30, %bb.p ] ; 2 uses
  %i.az = fcmp oeq double %.076.i, 0.000000e+00
  br i1 %i.az, label %_statistics__normal_dist_inv_cdf_impl.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = fdiv double %.077.i, %.076.i            ; 2 uses
  %i.bb = fcmp olt double %i.s, 0.000000e+00
  %i.bc = fneg double %i.ba
  %.0.i = select i1 %i.bb, double %i.bc, double %i.ba
  br label %_statistics__normal_dist_inv_cdf_impl.exit

_statistics__normal_dist_inv_cdf_impl.exit.thread: ; preds = %bb.i, %bb.k, %bb.m, %bb.q
  %i.bd = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !10
  tail call void @PyErr_SetString(ptr noundef %i.bd, ptr noundef nonnull @.str.4) #4
  br label %bb.s

_statistics__normal_dist_inv_cdf_impl.exit:       ; preds = %bb.l, %bb.r
  %.sink = phi double [ %i.an, %bb.l ], [ %.0.i, %bb.r ]
  %i.be = tail call double @llvm.fmuladd.f64(double %.sink, double %i.n, double %i.i) ; 2 uses
  %i.bf = fcmp oeq double %i.be, -1.000000e+00
  br i1 %i.bf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_statistics__normal_dist_inv_cdf_impl.exit.thread, %_statistics__normal_dist_inv_cdf_impl.exit
  %i.bg = tail call ptr @PyErr_Occurred() #4
  %.not18 = icmp eq ptr %i.bg, null
  br i1 %.not18, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %_statistics__normal_dist_inv_cdf_impl.exit
  %.078.i20 = phi double [ -1.000000e+00, %bb.s ], [ %i.be, %_statistics__normal_dist_inv_cdf_impl.exit ]
  %i.bh = tail call ptr @PyFloat_FromDouble(double noundef %.078.i20) #4
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.h, %bb.f, %bb.d, %bb.t, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.h ], [ null, %bb.s ], [ %i.bh, %bb.t ]
  ret ptr %.0
}

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare double @PyFloat_AsDouble(ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Occurred() local_unnamed_addr #1

declare ptr @PyFloat_FromDouble(double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTS7_object", !12, i64 0}
!12 = !{!"any pointer", !8, i64 0}
end_hunk_0
