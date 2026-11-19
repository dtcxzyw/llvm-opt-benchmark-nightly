Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlargv?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @dlargv_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %5, i64 -8 ; 4 uses
  %i.b = getelementptr inbounds i8, ptr %3, i64 -8
  %i.c = getelementptr inbounds i8, ptr %1, i64 -8
  %i.d = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  %.not71 = icmp slt i32 %i.d, 1
  br i1 %.not71, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = load i32, ptr %6, align 4, !tbaa !9
  %i.f = load i32, ptr %4, align 4, !tbaa !9
  %i.g = load i32, ptr %2, align 4, !tbaa !9
  %7 = sext i32 %i.f to i64
  %i.h = sext i32 %i.g to i64
  %i.i = sext i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv78 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next79, %bb.i ] ; 5 uses
  %indvars.iv76 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next77, %bb.i ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %.06772 = phi i32 [ 1, %.lr.ph ], [ %i.ag, %bb.i ] ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv76 ; 4 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !11 ; 5 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv ; 4 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !11 ; 6 uses
  %i.n = fcmp oeq double %i.m, 0.000000e+00
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv78
  store double 1.000000e+00, ptr %i.o, align 8, !tbaa !11
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.p = fcmp oeq double %i.k, 0.000000e+00
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv78
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !11
  store double 1.000000e+00, ptr %i.l, align 8, !tbaa !11
  store double %i.m, ptr %i.j, align 8, !tbaa !11
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.r = tail call double @llvm.fabs.f64(double %i.k)
  %i.s = tail call double @llvm.fabs.f64(double %i.m)
  %i.t = fcmp ogt double %i.r, %i.s
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = fdiv double %i.m, %i.k                   ; 3 uses
  %i.v = tail call double @llvm.fmuladd.f64(double %i.u, double %i.u, double 1.000000e+00)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.v) ; 2 uses
  %i.w = fdiv double 1.000000e+00, %sqrt          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv78
  store double %i.w, ptr %i.x, align 8, !tbaa !11
  %i.y = fmul double %i.u, %i.w
  store double %i.y, ptr %i.l, align 8, !tbaa !11
  %i.z = fmul double %i.k, %sqrt
  store double %i.z, ptr %i.j, align 8, !tbaa !11
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aa = fdiv double %i.k, %i.m                  ; 3 uses
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.aa, double 1.000000e+00)
  %sqrt70 = tail call double @llvm.sqrt.f64(double %i.ab) ; 2 uses
  %i.ac = fdiv double 1.000000e+00, %sqrt70       ; 2 uses
  store double %i.ac, ptr %i.l, align 8, !tbaa !11
  %i.ad = fmul double %i.aa, %i.ac
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv78
  store double %i.ad, ptr %i.ae, align 8, !tbaa !11
  %i.af = fmul double %i.m, %sqrt70
  store double %i.af, ptr %i.j, align 8, !tbaa !11
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g, %bb.c
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, %i.i
  %indvars.iv.next = add nsw i64 %indvars.iv, %7
  %indvars.iv.next77 = add nsw i64 %indvars.iv76, %i.h
  %i.ag = add nuw i32 %.06772, 1
  %exitcond.not = icmp eq i32 %.06772, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.i, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
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
!8 = distinct !{!8, !12}
!9 = !{!5, !5, i64 0}
!10 = !{!"double", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
end_hunk_0
