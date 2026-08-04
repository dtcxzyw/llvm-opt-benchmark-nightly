begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@nsites = local_unnamed_addr global i64 0, align 8
@sqrt_nsites = local_unnamed_addr global i32 0, align 4
@xmin = local_unnamed_addr global double 0.000000e+00, align 8
@xmax = local_unnamed_addr global double 0.000000e+00, align 8
@ymin = local_unnamed_addr global double 0.000000e+00, align 8
@ymax = local_unnamed_addr global double 0.000000e+00, align 8
@deltax = local_unnamed_addr global double 0.000000e+00, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @geominit() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @nsites, align 8, !tbaa !8
  %i.b = add i64 %i.a, 4
  %i.c = uitofp i64 %i.b to double
  %sqrt = tail call double @llvm.sqrt.f64(double %i.c)
  %i.d = fptosi double %sqrt to i32
  store i32 %i.d, ptr @sqrt_nsites, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden double @dist_2(double %0, double %1, double %2, double %3) local_unnamed_addr #1 {
bb.a:
  %i.a = fsub double %0, %2                       ; 2 uses
  %i.b = fsub double %1, %3                       ; 2 uses
  %i.c = fmul double %i.b, %i.b
  %i.d = tail call double @llvm.fmuladd.f64(double %i.a, double %i.a, double %i.c)
  ret double %i.d
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @subpt(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, double %1, double %2, double %3, double %4) local_unnamed_addr #3 {
bb.a:
  %i.a = fsub double %1, %3
  store double %i.a, ptr %0, align 8, !tbaa !11
  %i.b = fsub double %2, %4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.b, ptr %i.c, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @addpt(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, double %1, double %2, double %3, double %4) local_unnamed_addr #3 {
bb.a:
  %i.a = fadd double %1, %3
  store double %i.a, ptr %0, align 8, !tbaa !11
  %i.b = fadd double %2, %4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.b, ptr %i.c, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden double @area_2(double %0, double %1, double %2, double %3, double %4, double %5) local_unnamed_addr #1 {
bb.a:
  %i.a = fsub double %1, %3
  %i.b = fsub double %4, %2
  %i.c = fsub double %5, %3
  %i.d = fsub double %0, %2
  %i.e = fneg double %i.d
  %i.f = fmul double %i.c, %i.e
  %i.g = tail call double @llvm.fmuladd.f64(double %i.a, double %i.b, double %i.f)
  ret double %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 2) i32 @leftOf(double %0, double %1, double %2, double %3, double %4, double %5) local_unnamed_addr #1 {
bb.a:
  %i.a = fsub double %1, %3
  %i.b = fsub double %4, %2
  %i.c = fsub double %5, %3
  %i.d = fsub double %0, %2
  %i.e = fneg double %i.d
  %i.f = fmul double %i.c, %i.e
  %i.g = tail call double @llvm.fmuladd.f64(double %i.a, double %i.b, double %i.f)
  %i.h = fcmp ogt double %i.g, 0.000000e+00
  %i.i = zext i1 %i.h to i32
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden range(i32 0, 2) i32 @intersection(double %0, double %1, double %2, double %3, double %4, double %5, double %6, double %7, ptr nofree noundef writeonly captures(none) %8) local_unnamed_addr #3 {
bb.a:
  %i.a = fsub double %7, %5                       ; 2 uses
  %i.b = fsub double %5, %7
  %i.c = fmul double %2, %i.b
  %i.d = tail call double @llvm.fmuladd.f64(double %0, double %i.a, double %i.c)
  %i.e = fsub double %3, %1                       ; 3 uses
  %i.f = tail call double @llvm.fmuladd.f64(double %6, double %i.e, double %i.d)
  %i.g = fsub double %1, %3
  %i.h = tail call double @llvm.fmuladd.f64(double %4, double %i.g, double %i.f) ; 2 uses
  %i.i = fcmp oeq double %i.h, 0.000000e+00
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %9 = fsub double %1, %7
  %10 = fmul double %4, %9
  %i.j = fsub double %5, %3
  %i.k = fsub double %1, %5
  %11 = fmul double %2, %i.k
  %12 = tail call double @llvm.fmuladd.f64(double %0, double %i.j, double %11)
  %13 = tail call double @llvm.fmuladd.f64(double %4, double %i.e, double %12)
  %14 = fsub double %2, %0
  %15 = fsub double %5, %1
  %i.l = fneg double %13
  %16 = tail call double @llvm.fmuladd.f64(double %0, double %i.a, double %10)
  %i.m = tail call double @llvm.fmuladd.f64(double %6, double %15, double %16)
  %i.n = insertelement <2 x double> poison, double %i.m, i64 0
  %i.o = insertelement <2 x double> %i.n, double %i.l, i64 1
  %i.p = insertelement <2 x double> poison, double %i.h, i64 0
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = fdiv <2 x double> %i.o, %i.q             ; 2 uses
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.t = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %17 = insertelement <2 x double> poison, double %14, i64 0
  %i.u = insertelement <2 x double> %17, double %i.e, i64 1
  %i.v = insertelement <2 x double> poison, double %0, i64 0
  %i.w = insertelement <2 x double> %i.v, double %1, i64 1
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.t, <2 x double> %i.u, <2 x double> %i.w)
  store <2 x double> %i.x, ptr %8, align 8, !tbaa !15
  %i.y = fcmp ole <4 x double> %i.s, <double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00>
  %i.z = fcmp oge <4 x double> %i.s, <double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00>
  %i.aa = shufflevector <4 x i1> %i.y, <4 x i1> %i.z, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ab = freeze <4 x i1> %i.aa
  %i.ac = bitcast <4 x i1> %i.ab to i4
  %i.ad = icmp eq i4 %i.ac, -1
  %. = zext i1 %i.ad to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!5, !5, i64 0}
!11 = !{!12, !13, i64 0}
!12 = !{!"Point", !13, i64 0, !13, i64 8}
!13 = !{!"double", !6, i64 0}
!14 = !{!12, !13, i64 8}
!15 = !{!13, !13, i64 0}
end_hunk_0
