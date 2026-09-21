Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/ieeeck?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @ieeeck_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load float, ptr %2, align 4, !tbaa !9    ; 9 uses
  %i.b = load float, ptr %1, align 4, !tbaa !9    ; 9 uses
  %i.c = fdiv float %i.a, %i.b
  %i.d = fcmp ugt float %i.c, %i.a
  br i1 %i.d, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = fneg float %i.a
  %i.f = fdiv float %i.e, %i.b                    ; 2 uses
  %i.g = fcmp ult float %i.f, %i.b
  br i1 %i.g, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.h = fadd float %i.a, %i.f
  %i.i = fdiv float %i.a, %i.h                    ; 4 uses
  %i.j = fcmp une float %i.i, %i.b
  br i1 %i.j, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = fdiv float %i.a, %i.i                    ; 2 uses
  %i.l = fcmp ult float %i.k, %i.b
  br i1 %i.l, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.m = fadd float %i.b, %i.i                    ; 2 uses
  %i.n = fcmp une float %i.m, %i.b
  br i1 %i.n, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = fdiv float %i.a, %i.m                    ; 4 uses
  %i.p = fcmp ugt float %i.o, %i.a
  br i1 %i.p, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.q = fmul float %i.k, %i.o                    ; 4 uses
  %i.r = fcmp ult float %i.q, %i.b
  br i1 %i.r, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.s = fmul float %i.o, %i.o                    ; 4 uses
  %i.t = fcmp ugt float %i.s, %i.a
  br i1 %i.t, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.u = load i32, ptr %0, align 4, !tbaa !10
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = fadd float %i.s, %i.q
  %3 = insertelement <2 x float> poison, float %i.s, i64 0
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %5 = insertelement <2 x float> %4, float %i.q, i64 0
  %6 = fdiv <2 x float> %4, %5
  %i.x = fmul float %i.b, %i.s
  %i.y = fmul float %i.i, %i.q
  %7 = insertelement <4 x float> poison, float %i.w, i64 0
  %8 = shufflevector <2 x float> %6, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %9 = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %10 = insertelement <4 x float> %9, float %i.x, i64 3
  %i.z = fcmp uno float %i.y, 0.000000e+00
  %11 = fcmp ord <4 x float> %10, zeroinitializer
  %12 = bitcast <4 x i1> %11 to i4
  %13 = icmp eq i4 %12, 0
  %or.cond86.not = and i1 %13, %i.z
  %spec.select = zext i1 %or.cond86.not to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %spec.select, %bb.j ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ 1, %bb.i ]
  ret i32 %.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }

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
!8 = !{!"float", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!5, !5, i64 0}
end_hunk_0
