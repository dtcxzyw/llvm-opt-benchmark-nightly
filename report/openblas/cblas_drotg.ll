Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/cblas_drotg?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @cblas_drotg(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !9   ; 3 uses
  %i.b = fpext double %i.a to x86_fp80            ; 3 uses
  %i.c = load double, ptr %1, align 8, !tbaa !9   ; 3 uses
  %i.d = fpext double %i.c to x86_fp80            ; 3 uses
  %i.e = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.b) ; 4 uses
  %i.f = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.d) ; 4 uses
  %i.g = fcmp olt x86_fp80 %i.e, %i.f
  %i.h = select i1 %i.g, x86_fp80 %i.f, x86_fp80 %i.e ; 2 uses
  %i.i = fcmp oeq double %i.c, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store double 1.000000e+00, ptr %2, align 8, !tbaa !9
  store double 0.000000e+00, ptr %3, align 8, !tbaa !9
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = fcmp oeq double %i.a, 0.000000e+00
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store double 0.000000e+00, ptr %2, align 8, !tbaa !9
  store double 1.000000e+00, ptr %3, align 8, !tbaa !9
  %i.k = load double, ptr %1, align 8, !tbaa !9
  store double %i.k, ptr %0, align 8, !tbaa !9
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = fcmp ogt x86_fp80 %i.h, f0x3C018000000000000000
  %i.m = select i1 %i.l, x86_fp80 %i.h, x86_fp80 f0x3C018000000000000000 ; 2 uses
  %i.n = fcmp ogt x86_fp80 %i.m, f0x43FD8000000000000000
  %. = select i1 %i.n, x86_fp80 f0x43FD8000000000000000, x86_fp80 %i.m ; 3 uses
  %i.o = fcmp ogt x86_fp80 %i.e, %i.f             ; 2 uses
  %4 = tail call double @llvm.copysign.f64(double 1.000000e+00, double %i.a)
  %i.p = tail call double @llvm.copysign.f64(double 1.000000e+00, double %i.c)
  %.073.in = select i1 %i.o, double %4, double %i.p
  %.073 = fpext nnan ninf double %.073.in to x86_fp80
  %i.q = fdiv x86_fp80 %i.b, %.                   ; 2 uses
  %i.r = fdiv x86_fp80 %i.d, %.                   ; 2 uses
  %i.s = fmul x86_fp80 %i.r, %i.r
  %i.t = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %i.q, x86_fp80 %i.q, x86_fp80 %i.s)
  %i.u = fptrunc x86_fp80 %i.t to double
  %sqrt = tail call double @llvm.sqrt.f64(double %i.u)
  %i.v = fpext double %sqrt to x86_fp80
  %i.w = fmul x86_fp80 %., %i.v
  %i.x = fmul x86_fp80 %i.w, %.073                ; 3 uses
  %i.y = fdiv x86_fp80 %i.b, %i.x                 ; 3 uses
  %i.z = fdiv x86_fp80 %i.d, %i.x                 ; 2 uses
  %.0 = select i1 %i.o, x86_fp80 %i.z, x86_fp80 1.000000e+00
  %i.aa = fcmp ole x86_fp80 %i.e, %i.f
  %i.ab = fcmp une x86_fp80 %i.y, 0.000000e+00
  %or.cond = select i1 %i.aa, i1 %i.ab, i1 false
  %i.ac = fdiv x86_fp80 1.000000e+00, %i.y
  %.1 = select i1 %or.cond, x86_fp80 %i.ac, x86_fp80 %.0
  %i.ad = fptrunc x86_fp80 %i.y to double
  store double %i.ad, ptr %2, align 8, !tbaa !9
  %i.ae = fptrunc x86_fp80 %i.z to double
  store double %i.ae, ptr %3, align 8, !tbaa !9
  %i.af = fptrunc x86_fp80 %i.x to double
  store double %i.af, ptr %0, align 8, !tbaa !9
  %i.ag = fptrunc x86_fp80 %.1 to double
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.sink = phi double [ 1.000000e+00, %bb.d ], [ %i.ag, %bb.e ], [ 0.000000e+00, %bb.b ]
  store double %.sink, ptr %1, align 8, !tbaa !9
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fmuladd.f80(x86_fp80, x86_fp80, x86_fp80) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"double", !4, i64 0}
!9 = !{!8, !8, i64 0}
end_hunk_0
