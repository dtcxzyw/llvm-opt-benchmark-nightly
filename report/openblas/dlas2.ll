Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlas2?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @dlas2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !9   ; 3 uses
  %i.b = load double, ptr %1, align 8, !tbaa !9   ; 3 uses
  %i.c = fneg double %i.b
  %i.d = load double, ptr %2, align 8, !tbaa !9   ; 3 uses
  %i.e = fcmp ult double %i.a, 0.000000e+00
  %i.f = fneg double %i.a
  %i.g = select i1 %i.e, double %i.f, double %i.a ; 4 uses
  %i.h = fcmp ult double %i.d, 0.000000e+00
  %i.i = fneg double %i.d
  %5 = select i1 %i.h, double %i.i, double %i.d   ; 4 uses
  %6 = fcmp ult double %i.b, 0.000000e+00
  %i.j = select i1 %6, double %i.c, double %i.b   ; 11 uses
  %i.k = fcmp ole double %i.g, %5
  %i.l = select i1 %i.k, double %i.g, double %5   ; 8 uses
  %i.m = fcmp oge double %i.g, %5
  %i.n = select i1 %i.m, double %i.g, double %5   ; 15 uses
  %i.o = fcmp oeq double %i.l, 0.000000e+00
  br i1 %i.o, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store double 0.000000e+00, ptr %3, align 8, !tbaa !9
  %i.p = fcmp oeq double %i.n, 0.000000e+00
  br i1 %i.p, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = fcmp ole double %i.n, %i.j
  %i.r = select i1 %i.q, double %i.n, double %i.j
  %i.s = fcmp oge double %i.n, %i.j
  %i.t = select i1 %i.s, double %i.n, double %i.j ; 2 uses
  %i.u = fdiv double %i.r, %i.t                   ; 2 uses
  %i.v = tail call double @llvm.fmuladd.f64(double %i.u, double %i.u, double 1.000000e+00)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.v)
  %i.w = fmul double %i.t, %sqrt
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.x = fcmp olt double %i.j, %i.n
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %7 = insertelement <2 x double> poison, double %i.l, i64 0
  %8 = insertelement <2 x double> %7, double %i.j, i64 1
  %9 = insertelement <2 x double> poison, double %i.n, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = fdiv <2 x double> %8, %10                 ; 3 uses
  %i.y = fsub double %i.n, %i.l
  %foldExtExtBinop = fmul <2 x double> %11, %11
  %12 = extractelement <2 x double> %11, i64 0
  %13 = fadd double %12, 1.000000e+00
  %i.z = fdiv double %i.y, %i.n
  %14 = insertelement <2 x double> poison, double %13, i64 0
  %15 = insertelement <2 x double> %14, double %i.z, i64 1 ; 2 uses
  %16 = shufflevector <2 x double> %foldExtExtBinop, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %17 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %15, <2 x double> %16)
  %18 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %17) ; 2 uses
  %shift = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop111 = fadd <2 x double> %18, %shift
  %19 = extractelement <2 x double> %foldExtExtBinop111, i64 0
  %i.aa = fdiv double 2.000000e+00, %19           ; 2 uses
  %i.ab = fmul double %i.l, %i.aa
  store double %i.ab, ptr %3, align 8, !tbaa !9
  %i.ac = fdiv double %i.n, %i.aa
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.ad = fdiv double %i.n, %i.j                  ; 3 uses
  %i.ae = fcmp oeq double %i.ad, 0.000000e+00
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = fmul double %i.l, %i.n
  %i.ag = fdiv double %i.af, %i.j
  store double %i.ag, ptr %3, align 8, !tbaa !9
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ah = fdiv double %i.l, %i.n
  %i.ai = fsub double %i.n, %i.l
  %i.aj = fadd double %i.ah, 1.000000e+00
  %i.ak = fdiv double %i.ai, %i.n
  %i.al = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.ak, i64 1
  %i.ap = fmul <2 x double> %i.am, %i.ao          ; 2 uses
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> %i.ap, <2 x double> splat (double 1.000000e+00))
  %i.ar = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.aq) ; 2 uses
  %shift.a = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.a = fadd <2 x double> %i.ar, %shift.a
  %i.as = extractelement <2 x double> %foldExtExtBinop.a, i64 0
  %i.at = fdiv double 1.000000e+00, %i.as         ; 3 uses
  %i.au = fmul double %i.l, %i.at
  %i.av = fmul double %i.ad, %i.au                ; 2 uses
  %i.aw = fadd double %i.av, %i.av
  store double %i.aw, ptr %3, align 8, !tbaa !9
  %i.ax = fadd double %i.at, %i.at
  %i.ay = fdiv double %i.j, %i.ax
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.e, %bb.h, %bb.g, %bb.c
  %.sink = phi double [ %i.ac, %bb.e ], [ %i.ay, %bb.h ], [ %i.j, %bb.g ], [ %i.w, %bb.c ], [ %i.j, %bb.b ]
  store double %.sink, ptr %4, align 8, !tbaa !9
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #1

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
