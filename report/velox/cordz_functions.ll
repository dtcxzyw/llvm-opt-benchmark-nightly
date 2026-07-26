inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZTWN4absl12lts_2024011613cord_internal17cordz_next_sampleE = comdat any

@_ZN4absl12lts_2024011613cord_internal17cordz_next_sampleE = thread_local global i64 -1, align 8
@_ZZN4absl12lts_2024011613cord_internal25cordz_should_profile_slowEvE28exponential_biased_generator = internal thread_local global { i64, double, i8 } zeroinitializer, align 8
@_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_121g_cordz_mean_intervalE.0 = internal unnamed_addr global i32 50000, align 4

; Function Attrs: mustprogress noinline uwtable
define noundef zeroext i1 @_ZN4absl12lts_2024011613cord_internal25cordz_should_profile_slowEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4absl12lts_2024011613cord_internal17cordz_next_sampleE) ; 3 uses
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN4absl12lts_2024011613cord_internal25cordz_should_profile_slowEvE28exponential_biased_generator)
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.e, %bb.a
  %i.c = load atomic i32, ptr @_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_121g_cordz_mean_intervalE.0 acquire, align 4 ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0                     ; 3 uses
  br i1 %i.d, label %bb.b, label %_ZN4absl12lts_2024011613cord_internal20cordz_should_profileEv.exit.sink.split

bb.b:                                             ; preds = %tailrecurse
  %i.e = icmp eq i32 %i.c, 1
  br i1 %i.e, label %_ZN4absl12lts_2024011613cord_internal20cordz_should_profileEv.exit.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.g = icmp slt i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i64 %i.f, -1
  %i.h = zext nneg i32 %i.c to i64
  %i.i = tail call noundef i64 @_ZN4absl12lts_2024011618profiling_internal17ExponentialBiased9GetStrideEl(ptr noundef nonnull align 8 dereferenceable(17) %i.b, i64 noundef %i.h) ; 3 uses
  store i64 %i.i, ptr %i.a, align 8, !tbaa !8
  br i1 %.not, label %bb.e, label %_ZN4absl12lts_2024011613cord_internal20cordz_should_profileEv.exit

bb.e:                                             ; preds = %bb.d
  %i.j = icmp sgt i64 %i.i, 1
  br i1 %i.j, label %bb.f, label %tailrecurse, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.k = add nsw i64 %i.i, -1
  br label %_ZN4absl12lts_2024011613cord_internal20cordz_should_profileEv.exit.sink.split

bb.g:                                             ; preds = %bb.c
  %i.l = add nsw i64 %i.f, -1
  br label %_ZN4absl12lts_2024011613cord_internal20cordz_should_profileEv.exit.sink.split

_ZN4absl12lts_2024011613cord_internal20cordz_should_profileEv.exit.sink.split: ; preds = %bb.b, %tailrecurse, %bb.g, %bb.f
  %.sink = phi i64 [ %i.k, %bb.f ], [ %i.l, %bb.g ], [ 65536, %tailrecurse ], [ 1, %bb.b ]
  %.0.ph = phi i1 [ false, %bb.f ], [ false, %bb.g ], [ %i.d, %tailrecurse ], [ %i.d, %bb.b ]
  store i64 %.sink, ptr %i.a, align 8, !tbaa !8
  br label %_ZN4absl12lts_2024011613cord_internal20cordz_should_profileEv.exit

_ZN4absl12lts_2024011613cord_internal20cordz_should_profileEv.exit: ; preds = %bb.d, %_ZN4absl12lts_2024011613cord_internal20cordz_should_profileEv.exit.sink.split
  %.0 = phi i1 [ %.0.ph, %_ZN4absl12lts_2024011613cord_internal20cordz_should_profileEv.exit.sink.split ], [ true, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef i32 @_ZN4absl12lts_2024011613cord_internal23get_cordz_mean_intervalEv() local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_121g_cordz_mean_intervalE.0 acquire, align 4
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #2

declare noundef i64 @_ZN4absl12lts_2024011618profiling_internal17ExponentialBiased9GetStrideEl(ptr noundef nonnull align 8 dereferenceable(17), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4absl12lts_2024011613cord_internal33cordz_set_next_sample_for_testingEl(i64 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4absl12lts_2024011613cord_internal17cordz_next_sampleE)
  store i64 %0, ptr %i.a, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define void @_ZN4absl12lts_2024011613cord_internal23set_cordz_mean_intervalEi(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  store atomic i32 %0, ptr @_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_121g_cordz_mean_intervalE.0 release, align 4
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: uwtable
define weak_odr hidden noundef ptr @_ZTWN4absl12lts_2024011613cord_internal17cordz_next_sampleE() local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4absl12lts_2024011613cord_internal17cordz_next_sampleE)
  ret ptr %i.a
}

attributes #0 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }

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
!9 = !{!"long", !6, i64 0}
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
