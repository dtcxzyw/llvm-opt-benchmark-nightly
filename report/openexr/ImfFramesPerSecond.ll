Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfFramesPerSecond?download=true
inline.NumInlined: 25
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.Imf_3_4::Rational" = type { i32, i32 }

; Function Attrs: mustprogress uwtable
define i64 @_ZN7Imf_3_413guessExactFpsEd(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.Imf_3_4::Rational", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  call void @_ZN7Imf_3_48RationalC1Ed(ptr noundef nonnull align 4 dereferenceable(8) %1, double noundef %0)
  %i.a = load i32, ptr %1, align 8, !tbaa !8
  %i.b = sitofp i32 %i.a to double
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = uitofp i32 %i.d to double
  %i.f = fdiv double %i.b, %i.e                   ; 4 uses
  %i.g = fadd double %i.f, f0xC037F9DCB5112287
  %i.h = call noundef double @llvm.fabs.f64(double %i.g)
  %i.i = fcmp olt double %i.h, 2.000000e-03
  br i1 %i.i, label %_ZN7Imf_3_413guessExactFpsERKNS_8RationalE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = fadd double %i.f, f0xC03DF853E2556B28
  %i.k = call noundef double @llvm.fabs.f64(double %i.j)
  %i.l = fcmp olt double %i.k, 2.000000e-03
  br i1 %i.l, label %_ZN7Imf_3_413guessExactFpsERKNS_8RationalE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = fadd double %i.f, f0xC047F9DCB5112287
  %i.n = call noundef double @llvm.fabs.f64(double %i.m)
  %i.o = fcmp olt double %i.n, 2.000000e-03
  br i1 %i.o, label %_ZN7Imf_3_413guessExactFpsERKNS_8RationalE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = fadd double %i.f, f0xC04DF853E2556B28
  %i.q = call noundef double @llvm.fabs.f64(double %i.p)
  %i.r = fcmp olt double %i.q, 2.000000e-03
  br i1 %i.r, label %_ZN7Imf_3_413guessExactFpsERKNS_8RationalE.exit, label %2

2:                                                ; preds = %bb.d
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8
  br label %_ZN7Imf_3_413guessExactFpsERKNS_8RationalE.exit

_ZN7Imf_3_413guessExactFpsERKNS_8RationalE.exit:  ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %2
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i, %2 ], [ 4299262287296, %bb.a ], [ 4299262293296, %bb.b ], [ 4299262311296, %bb.c ], [ 4299262323296, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  ret i64 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @_ZN7Imf_3_413guessExactFpsERKNS_8RationalE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !8
  %i.b = sitofp i32 %i.a to double
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = uitofp i32 %i.d to double
  %i.f = fdiv double %i.b, %i.e                   ; 4 uses
  %i.g = fadd double %i.f, f0xC037F9DCB5112287
  %i.h = tail call noundef double @llvm.fabs.f64(double %i.g)
  %i.i = fcmp olt double %i.h, 2.000000e-03
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = fadd double %i.f, f0xC03DF853E2556B28
  %i.k = tail call noundef double @llvm.fabs.f64(double %i.j)
  %i.l = fcmp olt double %i.k, 2.000000e-03
  br i1 %i.l, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = fadd double %i.f, f0xC047F9DCB5112287
  %i.n = tail call noundef double @llvm.fabs.f64(double %i.m)
  %i.o = fcmp olt double %i.n, 2.000000e-03
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = fadd double %i.f, f0xC04DF853E2556B28
  %i.q = tail call noundef double @llvm.fabs.f64(double %i.p)
  %i.r = fcmp olt double %i.q, 2.000000e-03
  br i1 %i.r, label %bb.e, label %1

1:                                                ; preds = %bb.d
  %.sroa.0.0.copyload = load i64, ptr %0, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %1
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload, %1 ], [ 4299262287296, %bb.a ], [ 4299262293296, %bb.b ], [ 4299262311296, %bb.c ], [ 4299262323296, %bb.d ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZN7Imf_3_48RationalC1Ed(ptr noundef nonnull align 4 dereferenceable(8), double noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"_ZTSN7Imf_3_48RationalE", !5, i64 0, !5, i64 4}
!10 = !{!9, !5, i64 4}
end_hunk_0
