inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZZN4absl12lts_2024011618profiling_internal17ExponentialBiased10InitializeEvE11global_rand = internal global { i32 } zeroinitializer, align 4

; Function Attrs: mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN4absl12lts_2024011618profiling_internal17ExponentialBiased12GetSkipCountEl(ptr noundef nonnull align 8 dereferenceable(17) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !7, !range !12, !noundef !13
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %._crit_edge, label %bb.b, !prof !14

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i64, ptr %0, align 8, !tbaa !15
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %0 to i64
  %i.e = atomicrmw add ptr @_ZZN4absl12lts_2024011618profiling_internal17ExponentialBiased10InitializeEvE11global_rand, i32 1 monotonic, align 4
  %i.f = zext i32 %i.e to i64
  %i.g = add i64 %i.f, %i.d
  %i.h = mul i64 %i.g, 193905135338833
  %i.i = add i64 %i.h, 83935042429844
  %i.j = and i64 %i.i, 281474976710655
  store i8 1, ptr %i.a, align 8, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.k = phi i64 [ %.pre, %._crit_edge ], [ %i.j, %bb.b ]
  %i.l = mul i64 %i.k, 25214903917
  %i.m = add i64 %i.l, 11
  %i.n = and i64 %i.m, 281474976710655            ; 2 uses
  store i64 %i.n, ptr %0, align 8, !tbaa !15
  %i.o = lshr i64 %i.n, 22
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = add nuw nsw i32 %i.p, 1
  %i.r = uitofp nneg i32 %i.q to double
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !16
  %i.u = tail call double @llvm.log2.f64(double %i.r), !tbaa !3
  %i.v = fadd double %i.u, -2.600000e+01
  %i.w = sitofp i64 %1 to double
  %i.x = fmul nnan double %i.w, f0xBFE62E42FEFA39EF
  %i.y = tail call double @llvm.fmuladd.f64(double %i.v, double %i.x, double %i.t) ; 3 uses
  %i.z = fcmp ogt double %i.y, f0x43D0000000000000
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = tail call double @llvm.rint.f64(double %i.y) ; 2 uses
  %i.ab = fsub double %i.y, %i.aa
  store double %i.ab, ptr %i.s, align 8, !tbaa !16
  %i.ac = fptosi double %i.aa to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i64 [ %i.ac, %bb.d ], [ 4611686018427387903, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4absl12lts_2024011618profiling_internal17ExponentialBiased10InitializeEv(ptr noundef nonnull align 8 dereferenceable(17) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = atomicrmw add ptr @_ZZN4absl12lts_2024011618profiling_internal17ExponentialBiased10InitializeEvE11global_rand, i32 1 monotonic, align 4
  %i.c = zext i32 %i.b to i64
  %i.d = add i64 %i.c, %i.a
  %i.e = mul i64 %i.d, 193905135338833
  %i.f = add i64 %i.e, 83935042429844
  %i.g = and i64 %i.f, 281474976710655
  store i64 %i.g, ptr %0, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.h, align 8, !tbaa !7
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.rint.f64(double) #2

; Function Attrs: mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i64 -9223372036854775807, -9223372036854775808) i64 @_ZN4absl12lts_2024011618profiling_internal17ExponentialBiased9GetStrideEl(ptr noundef nonnull align 8 dereferenceable(17) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = add nsw i64 %1, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !7, !range !12, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._crit_edge.i, label %bb.b, !prof !14

._crit_edge.i:                                    ; preds = %bb.a
  %.pre.i = load i64, ptr %0, align 8, !tbaa !15
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %0 to i64
  %i.f = atomicrmw add ptr @_ZZN4absl12lts_2024011618profiling_internal17ExponentialBiased10InitializeEvE11global_rand, i32 1 monotonic, align 4
  %i.g = zext i32 %i.f to i64
  %i.h = add i64 %i.g, %i.e
  %i.i = mul i64 %i.h, 193905135338833
  %i.j = add i64 %i.i, 83935042429844
  store i8 1, ptr %i.b, align 8, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %i.k = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.j, %bb.b ]
  %i.l = mul i64 %i.k, 25214903917
  %i.m = add i64 %i.l, 11
  %i.n = and i64 %i.m, 281474976710655            ; 2 uses
  store i64 %i.n, ptr %0, align 8, !tbaa !15
  %i.o = lshr i64 %i.n, 22
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = add nuw nsw i32 %i.p, 1
  %i.r = uitofp nneg i32 %i.q to double
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !16
  %i.u = tail call double @llvm.log2.f64(double %i.r), !tbaa !3
  %i.v = fadd double %i.u, -2.600000e+01
  %i.w = sitofp i64 %i.a to double
  %i.x = fmul nnan double %i.w, f0xBFE62E42FEFA39EF
  %i.y = tail call double @llvm.fmuladd.f64(double %i.v, double %i.x, double %i.t) ; 3 uses
  %i.z = fcmp ogt double %i.y, f0x43D0000000000000
  br i1 %i.z, label %_ZN4absl12lts_2024011618profiling_internal17ExponentialBiased12GetSkipCountEl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = tail call double @llvm.rint.f64(double %i.y) ; 2 uses
  %i.ab = fsub double %i.y, %i.aa
  store double %i.ab, ptr %i.s, align 8, !tbaa !16
  %i.ac = fptosi double %i.aa to i64
  %i.ad = add nsw i64 %i.ac, 1
  br label %_ZN4absl12lts_2024011618profiling_internal17ExponentialBiased12GetSkipCountEl.exit

_ZN4absl12lts_2024011618profiling_internal17ExponentialBiased12GetSkipCountEl.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.ad, %bb.d ], [ 4611686018427387904, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log2.f64(double) #2

attributes #0 = { mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !11, i64 16}
!8 = !{!"_ZTSN4absl12lts_2024011618profiling_internal17ExponentialBiasedE", !9, i64 0, !10, i64 8, !11, i64 16}
!9 = !{!"long", !5, i64 0}
!10 = !{!"double", !5, i64 0}
!11 = !{!"bool", !5, i64 0}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!15 = !{!8, !9, i64 0}
!16 = !{!8, !10, i64 8}
end_hunk_0
