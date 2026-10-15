Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/normalize_quat?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN3igl14normalize_quatIdEEbPKT_PS1_ = comdat any

$_ZN3igl14normalize_quatIfEEbPKT_PS1_ = comdat any

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN3igl14normalize_quatIdEEbPKT_PS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !10  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !10 ; 2 uses
  %i.d = fmul double %i.c, %i.c
  %i.e = tail call double @llvm.fmuladd.f64(double %i.a, double %i.a, double %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !10 ; 2 uses
  %i.h = tail call double @llvm.fmuladd.f64(double %i.g, double %i.g, double %i.e)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !10 ; 2 uses
  %i.k = tail call double @llvm.fmuladd.f64(double %i.j, double %i.j, double %i.h)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.k) ; 5 uses
  %i.l = fdiv double %i.a, %sqrt
  store double %i.l, ptr %1, align 8, !tbaa !10
  %i.m = load double, ptr %i.b, align 8, !tbaa !10
  %i.n = fdiv double %i.m, %sqrt
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.n, ptr %i.o, align 8, !tbaa !10
  %i.p = load double, ptr %i.f, align 8, !tbaa !10
  %i.q = fdiv double %i.p, %sqrt
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.q, ptr %i.r, align 8, !tbaa !10
  %i.s = load double, ptr %i.i, align 8, !tbaa !10
  %i.t = fdiv double %i.s, %sqrt
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double %i.t, ptr %i.u, align 8, !tbaa !10
  %i.v = tail call noundef double @_ZN3igl3EPSIdEET_v()
  %i.w = fcmp ogt double %sqrt, %i.v
  ret i1 %i.w
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

declare noundef double @_ZN3igl3EPSIdEET_v() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN3igl14normalize_quatIfEEbPKT_PS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 16
  %i.d = add i64 %i.a, 16
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec, !prof !11

.rtvec:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !13 ; 2 uses
  %i.g = fmul float %i.f, %i.f
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load float, ptr %2, align 4, !tbaa !13     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !13 ; 2 uses
  %4 = load <4 x float>, ptr %0, align 4, !tbaa !13 ; 2 uses
  %5 = extractelement <4 x float> %4, i64 0       ; 2 uses
  %6 = tail call float @llvm.fmuladd.f32(float %5, float %5, float %i.g)
  %i.j = tail call float @llvm.fmuladd.f32(float %3, float %3, float %6)
  %7 = tail call float @llvm.fmuladd.f32(float %i.i, float %i.i, float %i.j)
  %sqrt = tail call float @llvm.sqrt.f32(float %7) ; 2 uses
  %i.k = insertelement <4 x float> poison, float %sqrt, i64 0
  %i.l = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> zeroinitializer
  %i.m = fdiv <4 x float> %4, %i.l
  store <4 x float> %i.m, ptr %1, align 4, !tbaa !13
  %i.n = tail call noundef float @_ZN3igl3EPSIfEET_v()
  %i.o = fcmp ogt float %sqrt, %i.n
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.p = load float, ptr %0, align 4, !tbaa !13   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !13 ; 2 uses
  %i.s = fmul float %i.r, %i.r
  %i.t = tail call float @llvm.fmuladd.f32(float %i.p, float %i.p, float %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !13 ; 2 uses
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float %i.v, float %i.t)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !13 ; 2 uses
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float %i.y, float %i.w)
  %sqrt.scalar = tail call float @llvm.sqrt.f32(float %i.z) ; 5 uses
  %i.aa = fdiv float %i.p, %sqrt.scalar
  store float %i.aa, ptr %1, align 4, !tbaa !13
  %i.ab = load float, ptr %i.q, align 4, !tbaa !13
  %i.ac = fdiv float %i.ab, %sqrt.scalar
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.ac, ptr %i.ad, align 4, !tbaa !13
  %i.ae = load float, ptr %i.u, align 4, !tbaa !13
  %i.af = fdiv float %i.ae, %sqrt.scalar
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.af, ptr %i.ag, align 4, !tbaa !13
  %i.ah = load float, ptr %i.x, align 4, !tbaa !13
  %i.ai = fdiv float %i.ah, %sqrt.scalar
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.ai, ptr %i.aj, align 4, !tbaa !13
  %i.ak = tail call noundef float @_ZN3igl3EPSIfEET_v()
  %i.al = fcmp ogt float %sqrt.scalar, %i.ak
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  %.rtmerge = phi i1 [ %i.o, %.rtvec ], [ %i.al, %.rtscalar ]
  ret i1 %.rtmerge
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

declare noundef float @_ZN3igl3EPSIfEET_v() local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!11 = !{!"branch_weights", i32 1, i32 1048575}
!12 = !{!"float", !5, i64 0}
!13 = !{!12, !12, i64 0}
end_hunk_0
