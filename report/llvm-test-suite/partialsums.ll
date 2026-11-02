Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/partialsums?download=true
inline.NumInlined: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%.9f\09%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"(2/3)^k\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"k^-0.5\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"1/k(k+1)\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Flint Hills\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Cookson Hills\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Harmonic\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Riemann Zeta\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Alternating Harmonic\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Gregory\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x double> @make_vec(double noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %.0.vec.insert = insertelement <2 x double> poison, double %0, i64 0
  %.8.vec.insert = insertelement <2 x double> %.0.vec.insert, double %1, i64 1
  ret <2 x double> %.8.vec.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @sum_vec(<2 x double> noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %0)
  ret double %i.a
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.076.int = phi i32 [ 1, %bb.a ], [ %.int, %bb.b ] ; 3 uses
  %i.a = phi <4 x double> [ zeroinitializer, %bb.a ], [ %i.r, %bb.b ]
  %indvar.conv = uitofp nneg i32 %.076.int to double ; 6 uses
  %i.b = add nsw i32 %.076.int, -1
  %i.c = sitofp i32 %i.b to double
  %2 = tail call double @pow(double noundef f0x3FE5555555555555, double noundef %i.c) #5, !tbaa !7
  %3 = tail call double @sqrt(double noundef %indvar.conv) #5, !tbaa !7
  %i.d = fdiv double 1.000000e+00, %3
  %i.e = fmul double %indvar.conv, %indvar.conv
  %i.f = fmul double %i.e, %indvar.conv
  %4 = tail call double @sin(double noundef %indvar.conv) #5, !tbaa !7
  %5 = tail call double @cos(double noundef %indvar.conv) #5, !tbaa !7
  %i.g = insertelement <2 x double> poison, double %i.f, i64 0
  %i.h = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> zeroinitializer
  %i.i = insertelement <2 x double> poison, double %5, i64 0
  %i.j = insertelement <2 x double> %i.i, double %4, i64 1 ; 2 uses
  %i.k = fmul <2 x double> %i.h, %i.j
  %i.l = fmul <2 x double> %i.j, %i.k
  %i.m = fdiv <2 x double> splat (double 1.000000e+00), %i.l
  %i.n = insertelement <4 x double> poison, double %i.d, i64 2
  %i.o = insertelement <4 x double> %i.n, double %2, i64 3
  %i.p = shufflevector <2 x double> %i.m, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.q = shufflevector <4 x double> %i.p, <4 x double> %i.o, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.r = fadd <4 x double> %i.a, %i.q             ; 5 uses
  %.int = add nuw nsw i32 %.076.int, 1            ; 2 uses
  %exitcond = icmp eq i32 %.int, 2500001
  br i1 %exitcond, label %.preheader, label %bb.b, !llvm.loop !8

.preheader:                                       ; preds = %bb.b, %.preheader
  %.05482 = phi <2 x double> [ %i.af, %.preheader ], [ <double 1.000000e+00, double 2.000000e+00>, %bb.b ] ; 8 uses
  %.05581 = phi <2 x double> [ %i.ae, %.preheader ], [ zeroinitializer, %bb.b ]
  %.05680 = phi <2 x double> [ %i.ac, %.preheader ], [ zeroinitializer, %bb.b ]
  %.05779 = phi <2 x double> [ %i.v, %.preheader ], [ zeroinitializer, %bb.b ]
  %.05878 = phi <2 x double> [ %i.aa, %.preheader ], [ zeroinitializer, %bb.b ]
  %.05977 = phi <2 x double> [ %i.x, %.preheader ], [ zeroinitializer, %bb.b ]
  %i.s = fadd <2 x double> %.05482, splat (double 1.000000e+00)
  %i.t = fmul <2 x double> %.05482, %i.s
  %i.u = fdiv <2 x double> splat (double 1.000000e+00), %i.t
  %i.v = fadd <2 x double> %.05779, %i.u          ; 2 uses
  %i.w = fdiv <2 x double> splat (double 1.000000e+00), %.05482
  %i.x = fadd <2 x double> %.05977, %i.w          ; 2 uses
  %i.y = fmul <2 x double> %.05482, %.05482
  %i.z = fdiv <2 x double> splat (double 1.000000e+00), %i.y
  %i.aa = fadd <2 x double> %.05878, %i.z         ; 2 uses
  %i.ab = fdiv <2 x double> <double 1.000000e+00, double -1.000000e+00>, %.05482
  %i.ac = fadd <2 x double> %.05680, %i.ab        ; 2 uses
  %6 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %.05482, <2 x double> splat (double 2.000000e+00), <2 x double> splat (double -1.000000e+00))
  %i.ad = fdiv <2 x double> <double 1.000000e+00, double -1.000000e+00>, %6
  %i.ae = fadd <2 x double> %.05581, %i.ad        ; 2 uses
  %i.af = fadd <2 x double> %.05482, splat (double 2.000000e+00) ; 2 uses
  %.0.vec.extract = extractelement <2 x double> %i.af, i64 0
  %i.ag = fcmp ugt double %.0.vec.extract, 2.500000e+06
  br i1 %i.ag, label %bb.c, label %.preheader, !llvm.loop !9

bb.c:                                             ; preds = %.preheader
  %i.ah = extractelement <4 x double> %i.r, i64 3
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.ah, ptr noundef nonnull @.str.1) ; 0 uses
  %i.ai = extractelement <4 x double> %i.r, i64 2
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.ai, ptr noundef nonnull @.str.2) ; 0 uses
  %9 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.v)
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %9, ptr noundef nonnull @.str.3) ; 0 uses
  %i.aj = extractelement <4 x double> %i.r, i64 1
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.aj, ptr noundef nonnull @.str.4) ; 0 uses
  %i.ak = extractelement <4 x double> %i.r, i64 0
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.ak, ptr noundef nonnull @.str.5) ; 0 uses
  %13 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.x)
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %13, ptr noundef nonnull @.str.6) ; 0 uses
  %15 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.aa)
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %15, ptr noundef nonnull @.str.7) ; 0 uses
  %17 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ac)
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %17, ptr noundef nonnull @.str.8) ; 0 uses
  %19 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ae)
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %19, ptr noundef nonnull @.str.9) ; 0 uses
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = distinct !{!8, !10}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
end_hunk_0
