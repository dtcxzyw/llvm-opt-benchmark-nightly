inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define noundef double @_ZN4geos9algorithm6Length6ofLineEPKNS_4geom18CoordinateSequenceE(ptr noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !10 ; 2 uses
  %i.e = icmp ult i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 0)
  %i.j = load <2 x double>, ptr %i.i, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %.02432 = phi double [ 0.000000e+00, %bb.b ], [ %i.t, %bb.c ]
  %.02729 = phi i64 [ 1, %bb.b ], [ %i.u, %bb.c ] ; 2 uses
  %i.k = phi <2 x double> [ %i.j, %bb.b ], [ %i.p, %bb.c ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %.02729)
  %i.p = load <2 x double>, ptr %i.o, align 8, !tbaa !11 ; 2 uses
  %i.q = fsub <2 x double> %i.p, %i.k             ; 2 uses
  %i.r = fmul <2 x double> %i.q, %i.q             ; 2 uses
  %shift = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.r, %shift
  %i.s = extractelement <2 x double> %foldExtExtBinop, i64 0
  %sqrt = tail call double @llvm.sqrt.f64(double %i.s)
  %i.t = fadd double %.02432, %sqrt               ; 2 uses
  %i.u = add nuw i64 %.02729, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.d
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !13

.loopexit:                                        ; preds = %bb.c, %bb.a
  %.0 = phi double [ 0.000000e+00, %bb.a ], [ %i.t, %bb.c ]
  ret double %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = distinct !{null}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
end_hunk_0
