Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/sundials_math?download=true
inline.NumInlined: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define i32 @SUNIpowerI(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not7 = icmp slt i32 %1, 1
  br i1 %.not7, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, 2147483640                 ; 3 uses
  %i.a = or disjoint i32 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %0, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi10 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.c, %vector.body ]
  %i.b = mul <4 x i32> %vec.phi, %broadcast.splat ; 2 uses
  %i.c = mul <4 x i32> %vec.phi10, %broadcast.splat ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.d = icmp eq i32 %index.next, %n.vec
  br i1 %i.d, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.c, %i.b
  %i.e = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader11

.lr.ph.preheader11:                               ; preds = %.lr.ph.preheader, %middle.block
  %.09.ph = phi i32 [ 1, %.lr.ph.preheader ], [ %i.e, %middle.block ]
  %.068.ph = phi i32 [ 1, %.lr.ph.preheader ], [ %i.a, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader11, %.lr.ph
  %.09 = phi i32 [ %i.f, %.lr.ph ], [ %.09.ph, %.lr.ph.preheader11 ]
  %.068 = phi i32 [ %i.g, %.lr.ph ], [ %.068.ph, %.lr.ph.preheader11 ] ; 2 uses
  %i.f = mul nsw i32 %.09, %0                     ; 2 uses
  %i.g = add nuw i32 %.068, 1
  %exitcond.not = icmp eq i32 %.068, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 1, %bb.a ], [ %i.e, %middle.block ], [ %i.f, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define double @SUNRpowerI(double noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %.not9 = icmp eq i32 %1, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %2
  %3 = tail call i32 @llvm.abs.i32(i32 %1, i1 false) ; 3 uses
  %xtraiter = and i32 %3, 7                       ; 3 uses
  %4 = icmp ult i32 %3, 8
  br i1 %4, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %3, -8
  br label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.lr.ph.a, %.lr.ph.preheader.new
  %.011 = phi double [ 1.000000e+00, %.lr.ph.preheader.new ], [ %12, %.lr.ph.a ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph.a ]
  %5 = fmul double %0, %.011
  %6 = fmul double %0, %5
  %7 = fmul double %0, %6
  %8 = fmul double %0, %7
  %9 = fmul double %0, %8
  %10 = fmul double %0, %9
  %11 = fmul double %0, %10
  %12 = fmul double %0, %11                       ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.a

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.a
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.011.epil.init = phi double [ 1.000000e+00, %.lr.ph.preheader ], [ %12, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod13 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.011.epil = phi double [ %i.a, %.lr.ph.epil ], [ %.011.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.a = fmul double %0, %.011.epil               ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !12

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %2
  %.0.lcssa = phi double [ 1.000000e+00, %2 ], [ %12, %._crit_edge.loopexit.unr-lcssa ], [ %i.a, %.lr.ph.epil ] ; 2 uses
  %i.b = icmp slt i32 %1, 0
  %i.c = fdiv double 1.000000e+00, %.0.lcssa
  %.1 = select i1 %i.b, double %i.c, double %.0.lcssa
  ret double %.1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @SUNRCompare(double noundef %0, double noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = fcmp oeq double %0, %1
  br i1 %i.a, label %SUNRCompareTol.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fsub double %0, %1
  %i.c = tail call double @llvm.fabs.f64(double %i.b)
  %i.d = fadd double %0, %1
  %i.e = tail call double @llvm.fabs.f64(double %i.d) ; 2 uses
  %i.f = fcmp olt double %i.e, f0x7FEFFFFFFFFFFFFF
  %i.g = select i1 %i.f, double %i.e, double f0x7FEFFFFFFFFFFFFF
  %i.h = fmul nnan double %i.g, f0x3CE4000000000000 ; 2 uses
  %i.i = fcmp olt double %i.h, f0x3CE4000000000000
  %i.j = select i1 %i.i, double f0x3CE4000000000000, double %i.h
  %i.k = fcmp uge double %i.c, %i.j
  %i.l = zext i1 %i.k to i32
  br label %SUNRCompareTol.exit

SUNRCompareTol.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.l, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @SUNRCompareTol(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = fcmp oeq double %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fsub double %0, %1
  %i.c = tail call double @llvm.fabs.f64(double %i.b)
  %i.d = fadd double %0, %1
  %i.e = tail call double @llvm.fabs.f64(double %i.d) ; 2 uses
  %i.f = fcmp olt double %i.e, f0x7FEFFFFFFFFFFFFF
  %i.g = select i1 %i.f, double %i.e, double f0x7FEFFFFFFFFFFFFF
  %i.h = fmul double %2, %i.g                     ; 2 uses
  %i.i = fcmp olt double %i.h, f0x3CE4000000000000
  %i.j = select i1 %i.i, double f0x3CE4000000000000, double %i.h
  %i.k = fcmp uge double %i.c, %i.j
  %i.l = zext i1 %i.k to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.l, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nofree norecurse nounwind willreturn uwtable
define double @SUNStrToReal(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = call double @strtod(ptr noundef %0, ptr noundef nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret double %i.b
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !10, !11}
!9 = distinct !{!9, !11, !10}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
