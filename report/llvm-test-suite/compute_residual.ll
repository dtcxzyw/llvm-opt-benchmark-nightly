Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/compute_residual?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_Z16compute_residualiPKdS0_Pd(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 !guid !10 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %0, 10
  br i1 %min.iters.check, label %.lr.ph.preheader21, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph.epil.preheader, %.lr.ph.preheader.new
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader.new ], [ %index.next, %.lr.ph.epil.preheader ] ; 4 uses
  %vec.phi = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader.new ], [ %13, %.lr.ph.epil.preheader ] ; 3 uses
  %vec.phi16 = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader.new ], [ %14, %.lr.ph.epil.preheader ] ; 3 uses
  %4 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil.init ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %wide.load = load <2 x double>, ptr %4, align 8, !tbaa !12
  %wide.load17 = load <2 x double>, ptr %5, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil.init ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load18 = load <2 x double>, ptr %i.b, align 8, !tbaa !12
  %wide.load19 = load <2 x double>, ptr %6, align 8, !tbaa !12
  %7 = fsub <2 x double> %wide.load, %wide.load18
  %8 = fsub <2 x double> %wide.load17, %wide.load19
  %.fr = freeze <2 x double> %7                   ; 2 uses
  %9 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %.fr) ; 2 uses
  %.fr20 = freeze <2 x double> %8                 ; 2 uses
  %10 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %.fr20) ; 2 uses
  %11 = fcmp ogt <2 x double> %9, %vec.phi
  %12 = fcmp ogt <2 x double> %10, %vec.phi16
  %13 = select <2 x i1> %11, <2 x double> %9, <2 x double> %vec.phi ; 2 uses
  %14 = select <2 x i1> %12, <2 x double> %10, <2 x double> %vec.phi16 ; 2 uses
  %index.next = add nuw i64 %indvars.iv.epil.init, 4 ; 2 uses
  %15 = fcmp uno <2 x double> %.fr, %.fr20
  %16 = bitcast <2 x i1> %15 to i2
  %17 = icmp ne i2 %16, 0                         ; 5 uses
  %18 = icmp eq i64 %index.next, %unroll_iter
  %19 = or i1 %17, %18
  br i1 %19, label %middle.block, label %.lr.ph.epil.preheader, !llvm.loop !8

middle.block:                                     ; preds = %.lr.ph.epil.preheader
  %20 = select i1 %17, <2 x double> %vec.phi, <2 x double> %13
  %21 = select i1 %17, <2 x double> %vec.phi16, <2 x double> %14
  %22 = select i1 %17, i64 %indvars.iv.epil.init, i64 %unroll_iter
  %rdx.minmax = tail call nnan <2 x double> @llvm.maxnum.v2f64(<2 x double> %20, <2 x double> %21)
  %23 = tail call nnan double @llvm.vector.reduce.fmax.v2f64(<2 x double> %rdx.minmax) ; 2 uses
  %cmp.n = icmp ne i64 %unroll_iter, %wide.trip.count
  %.not = or i1 %cmp.n, %17
  br i1 %.not, label %.lr.ph.preheader21, label %._crit_edge

.lr.ph.preheader21:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %22, %middle.block ]
  %.01113.ph = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %23, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.011.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %23, %middle.block ], [ %.1.1, %.lr.ph ]
  store double %.011.lcssa, ptr %3, align 8, !tbaa !12
  ret i32 0

.lr.ph:                                           ; preds = %.lr.ph.preheader21, %.lr.ph
  %indvars.iv = phi i64 [ %niter.next.1, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader21 ] ; 3 uses
  %.01113 = phi double [ %.1.1, %.lr.ph ], [ %.01113.ph, %.lr.ph.preheader21 ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.d = load double, ptr %i.c, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.f = load double, ptr %i.e, align 8, !tbaa !12
  %i.g = fsub double %i.d, %i.f
  %i.h = tail call double @llvm.fabs.f64(double %i.g) ; 2 uses
  %i.i = fcmp ogt double %i.h, %.01113
  %.1.1 = select i1 %i.i, double %i.h, double %.01113 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %indvars.iv, 1  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %wide.trip.count
  br i1 %niter.ncmp.1, label %._crit_edge, label %.lr.ph, !llvm.loop !9
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fmax.v2f64(<2 x double>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = distinct !{!8, !13, !14, !15}
!9 = distinct !{!9, !13, !15, !14}
!10 = !{i64 -7499864728721774353}
!11 = !{!"double", !5, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
