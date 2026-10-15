Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlapy3?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define double @dlapy3_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !9
  %i.b = load double, ptr %1, align 8, !tbaa !9
  %i.c = insertelement <2 x double> poison, double %i.a, i64 0
  %i.d = insertelement <2 x double> %i.c, double %i.b, i64 1 ; 3 uses
  %i.e = fcmp ult <2 x double> %i.d, zeroinitializer
  %i.f = fneg <2 x double> %i.d
  %i.g = select <2 x i1> %i.e, <2 x double> %i.f, <2 x double> %i.d ; 3 uses
  %i.h = load double, ptr %2, align 8, !tbaa !9   ; 3 uses
  %i.i = fcmp ult double %i.h, 0.000000e+00
  %i.j = fneg double %i.h
  %i.k = select i1 %i.i, double %i.j, double %i.h ; 4 uses
  %i.l = extractelement <2 x double> %i.g, i64 0  ; 3 uses
  %i.m = extractelement <2 x double> %i.g, i64 1  ; 3 uses
  %i.n = fcmp oge double %i.l, %i.m
  %i.o = select i1 %i.n, double %i.l, double %i.m ; 2 uses
  %i.p = fcmp oge double %i.o, %i.k
  %i.q = select i1 %i.p, double %i.o, double %i.k ; 4 uses
  %i.r = fcmp oeq double %i.q, 0.000000e+00
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = fadd double %i.l, %i.m
  %i.t = fadd double %i.s, %i.k
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = insertelement <2 x double> poison, double %i.q, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fdiv <2 x double> %i.g, %i.v             ; 3 uses
  %i.x = fdiv double %i.k, %i.q                   ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.w, %i.w
  %i.y = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.z = extractelement <2 x double> %i.w, i64 0  ; 2 uses
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double %i.z, double %i.y)
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.x, double %i.x, double %i.aa)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.ab)
  %i.ac = fmul double %i.q, %sqrt
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi double [ %i.t, %bb.b ], [ %i.ac, %bb.c ]
  ret double %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
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
