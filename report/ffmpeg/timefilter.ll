Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/timefilter?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define noalias ptr @ff_timefilter_new(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @av_mallocz(i64 noundef 40) #6 ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fmul nsz double %2, f0x401921FB54442D18
  %i.c = fmul nsz double %1, %i.b
  %i.d = fmul nsz double %0, %i.c                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %0, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = insertelement <2 x double> poison, double %i.d, i64 0
  %i.h = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> zeroinitializer
  %i.i = insertelement <2 x double> <double f0x3FF6A09E667F3BCD, double poison>, double %i.d, i64 1
  %i.j = fmul nsz <2 x double> %i.h, %i.i         ; 4 uses
  %i.k = fmul nsz <2 x double> %i.j, splat (double 5.000000e-01)
  %i.l = fdiv nsz <2 x double> %i.j, splat (double 3.000000e+00)
  %i.m = fadd nsz <2 x double> %i.l, splat (double 1.000000e+00)
  %i.n = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.k, <2 x double> %i.m, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %3 = extractelement <2 x double> %i.n, i64 0
  %i.o = extractelement <2 x double> %i.j, i64 0
  %4 = tail call nsz double @llvm.fmuladd.f64(double %i.o, double %3, double 1.000000e+00)
  %i.p = fdiv nsz double 1.000000e+00, %4
  %i.q = fsub nsz double 1.000000e+00, %i.p
  store double %i.q, ptr %i.f, align 8, !tbaa !12
  %5 = extractelement <2 x double> %i.n, i64 1
  %i.r = extractelement <2 x double> %i.j, i64 1
  %6 = tail call nsz double @llvm.fmuladd.f64(double %i.r, double %5, double 1.000000e+00)
  %i.s = fdiv nsz double 1.000000e+00, %6
  %i.t = fsub nsz double 1.000000e+00, %i.s
  %i.u = fdiv nsz double %i.t, %1
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.u, ptr %i.v, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @ff_timefilter_destroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !18
  call void @av_freep(ptr noundef nonnull %i.a) #6
  ret void
}

declare void @av_freep(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ff_timefilter_reset(ptr nofree noundef writeonly captures(none) initializes((32, 36)) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.a, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define double @ff_timefilter_update(ptr nofree noundef captures(none) %0, double noundef %1, double noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !14
  %i.d = icmp eq i32 %i.b, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !11 ; 2 uses
  %i.g = load double, ptr %0, align 8, !tbaa !15
  %i.h = tail call nsz double @llvm.fmuladd.f64(double %i.f, double %2, double %i.g) ; 2 uses
  %i.i = fsub nsz double %1, %i.h                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load double, ptr %i.j, align 8, !tbaa !12 ; 2 uses
  %i.l = sitofp nsz i32 %i.c to double
  %i.m = fdiv nsz double 1.000000e+00, %i.l       ; 2 uses
  %i.n = fcmp nsz ogt double %i.k, %i.m
  %. = select nsz i1 %i.n, double %i.k, double %i.m
  %i.o = tail call nsz double @llvm.fmuladd.f64(double %., double %i.i, double %i.h)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load double, ptr %i.p, align 8, !tbaa !13
  %i.r = tail call nsz double @llvm.fmuladd.f64(double %i.q, double %i.i, double %i.f)
  store double %i.r, ptr %i.e, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi double [ %i.o, %bb.b ], [ %1, %bb.a ] ; 2 uses
  store double %.sink, ptr %0, align 8, !tbaa !15
  ret double %.sink
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define double @ff_timefilter_eval(ptr nofree noundef readonly captures(none) %0, double noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load double, ptr %i.b, align 8, !tbaa !11
  %i.d = tail call nsz double @llvm.fmuladd.f64(double %i.c, double %1, double %i.a)
  ret double %i.d
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"double", !5, i64 0}
!10 = !{!"TimeFilter", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !6, i64 32}
!11 = !{!10, !9, i64 24}
!12 = !{!10, !9, i64 8}
!13 = !{!10, !9, i64 16}
!14 = !{!10, !6, i64 32}
!15 = !{!10, !9, i64 0}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!"p1 _ZTS10TimeFilter", !16, i64 0}
!18 = !{!17, !17, i64 0}
end_hunk_0
