inline.NumInlined: 86
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN3igl5orthoIN5Eigen6MatrixIfLi4ELi4ELi0ELi4ELi4EEEEEvNT_6ScalarES5_S5_S5_S5_S5_RNS1_15PlainObjectBaseIS4_EE = comdat any

@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl5orthoIN5Eigen6MatrixIfLi4ELi4ELi0ELi4ELi4EEEEEvNT_6ScalarES5_S5_S5_S5_S5_RNS1_15PlainObjectBaseIS4_EE(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, ptr noundef nonnull align 16 dereferenceable(64) %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, i8 0, i64 48, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 40
  %7 = insertelement <2 x float> poison, float %0, i64 0
  %8 = insertelement <2 x float> %7, float %2, i64 1
  %9 = insertelement <2 x float> poison, float %1, i64 0
  %10 = insertelement <2 x float> %9, float %3, i64 1
  %11 = fadd <2 x float> %8, %10
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 48
  %12 = fneg <2 x float> %11
  %13 = fadd float %4, %5
  %14 = fneg float %13
  %i.d = insertelement <2 x float> poison, float %3, i64 0
  %i.e = insertelement <2 x float> %i.d, float %5, i64 1
  %15 = insertelement <2 x float> poison, float %2, i64 0
  %16 = insertelement <2 x float> %15, float %4, i64 1
  %i.f = fsub <2 x float> %i.e, %16               ; 2 uses
  %i.g = fsub float %1, %0                        ; 2 uses
  %i.h = fdiv float 2.000000e+00, %i.g
  store float %i.h, ptr %6, align 16, !tbaa !9
  %i.i = fdiv <2 x float> <float 2.000000e+00, float -2.000000e+00>, %i.f ; 2 uses
  %i.j = extractelement <2 x float> %i.i, i64 0
  store float %i.j, ptr %i.a, align 4, !tbaa !9
  %i.k = extractelement <2 x float> %i.i, i64 1
  store float %i.k, ptr %i.b, align 8, !tbaa !9
  %17 = shufflevector <2 x float> %12, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %18 = insertelement <4 x float> %17, float 1.000000e+00, i64 3
  %19 = insertelement <4 x float> %18, float %14, i64 2
  %i.l = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.g, i64 0
  %i.m = shufflevector <2 x float> %i.f, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.n = shufflevector <4 x float> %i.l, <4 x float> %i.m, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.o = fdiv <4 x float> %19, %i.n
  store <4 x float> %i.o, ptr %i.c, align 16, !tbaa !9
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !7, i64 0}
end_hunk_0
