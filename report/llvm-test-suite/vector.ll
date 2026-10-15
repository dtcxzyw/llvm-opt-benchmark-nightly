Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/vector?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.VEC2 = type { double, double, double }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local double @V2_cprod(ptr nofree noundef readonly byval(%struct.VEC2) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.VEC2) align 8 captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !11
  %i.f = load double, ptr %1, align 8, !tbaa !10
  %i.g = fneg double %i.f
  %i.h = fmul double %i.e, %i.g
  %i.i = tail call double @llvm.fmuladd.f64(double %i.a, double %i.c, double %i.h)
  ret double %i.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local double @V2_dot(ptr nofree noundef readonly byval(%struct.VEC2) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.VEC2) align 8 captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !10
  %i.b = load double, ptr %1, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !11
  %i.g = fmul double %i.d, %i.f
  %i.h = tail call double @llvm.fmuladd.f64(double %i.a, double %i.b, double %i.g)
  ret double %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @V2_times(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.VEC2) align 8 captures(none) initializes((0, 16)) %0, double noundef %1, ptr nofree noundef readonly byval(%struct.VEC2) align 8 captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load <2 x double>, ptr %2, align 8, !tbaa !12
  %i.b = insertelement <2 x double> poison, double %1, i64 0
  %i.c = shufflevector <2 x double> %i.b, <2 x double> poison, <2 x i32> zeroinitializer
  %i.d = fmul <2 x double> %i.c, %i.a
  store <2 x double> %i.d, ptr %0, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @V2_sum(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.VEC2) align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly byval(%struct.VEC2) align 8 captures(none) %1, ptr nofree noundef readonly byval(%struct.VEC2) align 8 captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load <2 x double>, ptr %1, align 8, !tbaa !12
  %i.b = load <2 x double>, ptr %2, align 8, !tbaa !12
  %i.c = fadd <2 x double> %i.a, %i.b
  store <2 x double> %i.c, ptr %0, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @V2_sub(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.VEC2) align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly byval(%struct.VEC2) align 8 captures(none) %1, ptr nofree noundef readonly byval(%struct.VEC2) align 8 captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load <2 x double>, ptr %1, align 8, !tbaa !12
  %i.b = load <2 x double>, ptr %2, align 8, !tbaa !12
  %i.c = fsub <2 x double> %i.a, %i.b
  store <2 x double> %i.c, ptr %0, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define dso_local double @V2_magn(ptr nofree noundef readonly byval(%struct.VEC2) align 8 captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !10  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !11 ; 2 uses
  %i.d = fmul double %i.c, %i.c
  %i.e = tail call double @llvm.fmuladd.f64(double %i.a, double %i.a, double %i.d)
  %sqrt = tail call double @sqrt(double noundef %i.e) #5, !tbaa !7
  ret double %sqrt
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @V2_cross(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.VEC2) align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly byval(%struct.VEC2) align 8 captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !11
  store double %i.b, ptr %0, align 8, !tbaa !10
  %i.c = load double, ptr %1, align 8, !tbaa !10
  %i.d = fneg double %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.d, ptr %i.e, align 8, !tbaa !11
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!"double", !5, i64 0}
!9 = !{!"VEC2", !8, i64 0, !8, i64 8, !8, i64 16}
!10 = !{!9, !8, i64 0}
!11 = !{!9, !8, i64 8}
!12 = !{!8, !8, i64 0}
end_hunk_0
