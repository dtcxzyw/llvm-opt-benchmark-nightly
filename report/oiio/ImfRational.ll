inline.NumInlined: 6
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN27OpenImageIO_v3_1_Imf__3_3_58RationalC1Ed = unnamed_addr alias void (ptr, double), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_58RationalC2Ed

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_58RationalC2Ed(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) initializes((0, 8)) %0, double noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = fcmp ult double %1, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp olt double %1, 0.000000e+00
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = fneg double %1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i32 0, ptr %0, align 4, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !9
  br label %bb.h

bb.e:                                             ; preds = %bb.a, %bb.c
  %.011 = phi i32 [ -1, %bb.c ], [ 1, %bb.a ]     ; 2 uses
  %.0 = phi double [ %i.c, %bb.c ], [ %1, %bb.a ] ; 5 uses
  %i.e = fcmp ult double %.0, f0x41DFFFFFFFE00000
  br i1 %i.e, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %.011, ptr %0, align 4, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !9
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.g = fcmp olt double %.0, 1.000000e+00
  %i.h = select i1 %i.g, double 1.000000e+00, double %.0
  %i.i = fmul nnan double %i.h, f0x3E10000000000000
  %i.j = tail call fastcc noundef double @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_15denomEdd(double noundef %.0, double noundef %i.i)
  %i.k = fptoui double %i.j to i32                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.k, ptr %i.l, align 4, !tbaa !9
  %i.m = uitofp i32 %i.k to double
  %i.n = tail call double @llvm.fmuladd.f64(double %.0, double %i.m, double 5.000000e-01)
  %i.o = tail call double @llvm.floor.f64(double %i.n)
  %i.p = fptosi double %i.o to i32
  %i.q = mul nsw i32 %.011, %i.p
  store i32 %i.q, ptr %0, align 4, !tbaa !7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef double @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_15denomEdd(double noundef %0, double noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = fadd double %0, %1
  %i.b = tail call double @llvm.floor.f64(double %i.a)
  %i.c = fsub double %0, %i.b
  %i.d = fcmp ogt double %1, %i.c
  br i1 %i.d, label %common.ret24, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fdiv double 1.000000e+00, %0             ; 2 uses
  %i.f = fadd double %i.e, %1
  %i.g = tail call double @llvm.floor.f64(double %i.f) ; 3 uses
  %i.h = fsub double %i.e, %i.g                   ; 4 uses
  %i.i = fcmp ogt double %1, %i.h
  br i1 %i.i, label %common.ret24, label %bb.c

common.ret24:                                     ; preds = %bb.b, %bb.a, %bb.c
  %common.ret24.op = phi double [ %i.p, %bb.c ], [ %i.g, %bb.b ], [ 1.000000e+00, %bb.a ]
  ret double %common.ret24.op

bb.c:                                             ; preds = %bb.b
  %i.j = fdiv double 1.000000e+00, %i.h           ; 2 uses
  %i.k = fadd double %1, %i.j
  %i.l = tail call double @llvm.floor.f64(double %i.k)
  %i.m = fsub double %i.j, %i.l
  %i.n = fmul double %0, %i.h
  %2 = insertelement <2 x double> poison, double %i.n, i64 0
  %3 = insertelement <2 x double> %2, double %0, i64 1 ; 2 uses
  %4 = fmul <2 x double> %3, %3
  %5 = insertelement <2 x double> poison, double %1, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %7 = fdiv <2 x double> %6, %4                   ; 2 uses
  %8 = extractelement <2 x double> %7, i64 0
  %9 = tail call fastcc noundef double @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_15denomEdd(double noundef %i.m, double noundef %8)
  %10 = extractelement <2 x double> %7, i64 1
  %i.o = tail call fastcc noundef double @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_15denomEdd(double noundef %i.h, double noundef %10)
  %i.p = tail call double @llvm.fmuladd.f64(double %i.g, double %i.o, double %9)
  br label %common.ret24
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_58RationalE", !4, i64 0, !4, i64 4}
!9 = !{!8, !4, i64 4}
end_hunk_0
