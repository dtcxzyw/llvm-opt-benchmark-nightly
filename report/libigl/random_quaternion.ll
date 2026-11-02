Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/random_quaternion?download=true
inline.NumInlined: 16
inline.NumDeleted: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.Eigen::Quaternion" = type { %"class.Eigen::Matrix" }
%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase" }
%"class.Eigen::PlainObjectBase" = type { %"class.Eigen::DenseStorage" }
%"class.Eigen::DenseStorage" = type { %"struct.Eigen::internal::plain_array" }
%"struct.Eigen::internal::plain_array" = type { [4 x double] }

$_ZN3igl17random_quaternionIdEEN5Eigen10QuaternionIT_Li0EEEv = comdat any

@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl17random_quaternionIdEEN5Eigen10QuaternionIT_Li0EEEv(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Quaternion") align 16 %0) local_unnamed_addr #0 comdat {
bb.a:
  %sincos.sin19 = alloca double, align 8          ; 2 uses
  %sincos.cos20 = alloca double, align 8          ; 2 uses
  %sincos.sin = alloca double, align 8            ; 2 uses
  %sincos.cos = alloca double, align 8            ; 2 uses
  %i.a = tail call i32 @rand() #4
  %i.b = tail call i32 @rand() #4
  %1 = insertelement <2 x i32> poison, i32 %i.a, i64 0
  %2 = insertelement <2 x i32> %1, i32 %i.b, i64 1
  %3 = sitofp <2 x i32> %2 to <2 x double>
  %4 = fdiv <2 x double> %3, splat (double f0x41DFFFFFFFC00000) ; 2 uses
  %5 = tail call i32 @rand() #4
  %6 = sitofp i32 %5 to double
  %7 = fdiv nnan double %6, f0x41DFFFFFFFC00000
  %8 = extractelement <2 x double> %4, i64 0      ; 2 uses
  %9 = fsub double 1.000000e+00, %8
  %i.c = tail call double @sqrt(double noundef %9) #4
  %i.d = tail call double @sqrt(double noundef %8) #4
  %i.e = extractelement <2 x double> %4, i64 1
  %10 = fmul nnan double %i.e, f0x401921FB54442D18
  %11 = fmul nnan double %7, f0x401921FB54442D18
  call void @sincos(double %10, ptr nonnull %sincos.sin, ptr nonnull %sincos.cos)
  %sin = load double, ptr %sincos.sin, align 8
  %cos = load double, ptr %sincos.cos, align 8
  call void @sincos(double %11, ptr nonnull %sincos.sin19, ptr nonnull %sincos.cos20)
  %sin21 = load double, ptr %sincos.sin19, align 8
  %cos22 = load double, ptr %sincos.cos20, align 8
  %i.f = insertelement <4 x double> poison, double %i.c, i64 0
  %i.g = insertelement <4 x double> %i.f, double %i.d, i64 1
  %i.h = shufflevector <4 x double> %i.g, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.i = insertelement <4 x double> poison, double %cos, i64 0
  %i.j = insertelement <4 x double> %i.i, double %sin21, i64 1
  %i.k = insertelement <4 x double> %i.j, double %cos22, i64 2
  %i.l = insertelement <4 x double> %i.k, double %sin, i64 3
  %i.m = fmul <4 x double> %i.h, %i.l
  store <4 x double> %i.m, ptr %0, align 16, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write)
declare void @sincos(double noundef, ptr, ptr) local_unnamed_addr #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"double", !5, i64 0}
!10 = !{!9, !9, i64 0}
end_hunk_0
