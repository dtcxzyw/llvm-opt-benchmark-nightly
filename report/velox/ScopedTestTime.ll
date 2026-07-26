inline.NumInlined: 38
inline.NumDeleted: 25
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"union.std::_Optional_payload_base<unsigned long>::_Storage" = type { i64 }
%"struct.facebook::velox::detail::VeloxCheckFailArgs" = type { ptr, i64, ptr, ptr, ptr, ptr, i8 }
%"class.folly::BasicFixedString" = type { [8 x i8], i64 }
%"class.folly::BasicFixedString.0" = type { [17 x i8], i64 }

$_ZN8facebook5velox12error_source19kErrorSourceRuntimeE = comdat any

$_ZN8facebook5velox10error_code16kUnreachableCodeE = comdat any

@_ZN8facebook5velox6common8testutil14ScopedTestTime8enabled_E = local_unnamed_addr global i8 0, align 1
@_ZN8facebook5velox6common8testutil14ScopedTestTime11testTimeNs_E = local_unnamed_addr global { { %"union.std::_Optional_payload_base<unsigned long>::_Storage", i8 } } { { %"union.std::_Optional_payload_base<unsigned long>::_Storage", i8 } { %"union.std::_Optional_payload_base<unsigned long>::_Storage" undef, i8 0 } }, align 8
@_ZZN8facebook5velox6common8testutil14ScopedTestTimeC1EvE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 30, ptr @.str.1, ptr @.str.2, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code16kUnreachableCodeE, i8 0 }, align 8
@.str = private unnamed_addr constant [69 x i8] c"/opt-bench/work/velox/velox/velox/common/testutil/ScopedTestTime.cpp\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"ScopedTestTime\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZN8facebook5velox12error_source19kErrorSourceRuntimeE = linkonce_odr constant %"class.folly::BasicFixedString" { [8 x i8] c"RUNTIME\00", i64 7 }, comdat, align 8
@_ZN8facebook5velox10error_code16kUnreachableCodeE = linkonce_odr constant %"class.folly::BasicFixedString.0" { [17 x i8] c"UNREACHABLE_CODE\00", i64 16 }, comdat, align 8
@.str.3 = private unnamed_addr constant [49 x i8] c"ScopedTestTime should only be used in debug mode\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj], section "llvm.metadata"

@_ZN8facebook5velox6common8testutil14ScopedTestTimeC1Ev = unnamed_addr alias void (ptr), ptr @_ZN8facebook5velox6common8testutil14ScopedTestTimeC2Ev
@_ZN8facebook5velox6common8testutil14ScopedTestTimeD1Ev = unnamed_addr alias void (ptr), ptr @_ZN8facebook5velox6common8testutil14ScopedTestTimeD2Ev

; Function Attrs: mustprogress noreturn uwtable
define void @_ZN8facebook5velox6common8testutil14ScopedTestTimeC2Ev(ptr nofree nonnull readnone align 1 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6common8testutil14ScopedTestTimeC1EvE18veloxCheckFailArgs, ptr noundef nonnull @.str.3) #5
  unreachable
}

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN8facebook5velox6common8testutil14ScopedTestTimeD2Ev(ptr nofree nonnull readnone align 1 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox6common8testutil14ScopedTestTime11testTimeNs_E, i64 8), align 8, !tbaa !7
  store i8 0, ptr @_ZN8facebook5velox6common8testutil14ScopedTestTime8enabled_E, align 1, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN8facebook5velox6common8testutil14ScopedTestTime21setCurrentTestTimeSecEm(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = mul i64 %1, 1000000000
  store i64 %i.a, ptr @_ZN8facebook5velox6common8testutil14ScopedTestTime11testTimeNs_E, align 8
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox6common8testutil14ScopedTestTime11testTimeNs_E, i64 8), align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN8facebook5velox6common8testutil14ScopedTestTime22setCurrentTestTimeNanoEm(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i64 %1, ptr @_ZN8facebook5velox6common8testutil14ScopedTestTime11testTimeNs_E, align 8
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox6common8testutil14ScopedTestTime11testTimeNs_E, i64 8), align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN8facebook5velox6common8testutil14ScopedTestTime20setCurrentTestTimeMsEm(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = mul i64 %1, 1000000
  store i64 %i.a, ptr @_ZN8facebook5velox6common8testutil14ScopedTestTime11testTimeNs_E, align 8
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox6common8testutil14ScopedTestTime11testTimeNs_E, i64 8), align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN8facebook5velox6common8testutil14ScopedTestTime23setCurrentTestTimeMicroEm(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = mul i64 %1, 1000
  store i64 %i.a, ptr @_ZN8facebook5velox6common8testutil14ScopedTestTime11testTimeNs_E, align 8
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox6common8testutil14ScopedTestTime11testTimeNs_E, i64 8), align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define { i64, i8 } @_ZN8facebook5velox6common8testutil14ScopedTestTime21getCurrentTestTimeSecEv() local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox6common8testutil14ScopedTestTime11testTimeNs_E, i64 8), align 8, !tbaa !7, !range !11, !noundef !12 ; 2 uses
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i64, ptr @_ZN8facebook5velox6common8testutil14ScopedTestTime11testTimeNs_E, align 8 ; 2 uses
  %i.d = udiv i64 %i.c, 1000000000
  %.pn2 = select i1 %i.b, i64 %i.d, i64 %i.c
  %.fca.0.insert.i.pn = insertvalue { i64, i8 } poison, i64 %.pn2, 0
  %.fca.1.insert.merged = insertvalue { i64, i8 } %.fca.0.insert.i.pn, i8 %i.a, 1
  ret { i64, i8 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define { i64, i8 } @_ZN8facebook5velox6common8testutil14ScopedTestTime20getCurrentTestTimeMsEv() local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox6common8testutil14ScopedTestTime11testTimeNs_E, i64 8), align 8, !tbaa !7, !range !11, !noundef !12 ; 2 uses
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i64, ptr @_ZN8facebook5velox6common8testutil14ScopedTestTime11testTimeNs_E, align 8 ; 2 uses
  %i.d = udiv i64 %i.c, 1000000
  %.pn2 = select i1 %i.b, i64 %i.d, i64 %i.c
  %.fca.0.insert.i.pn = insertvalue { i64, i8 } poison, i64 %.pn2, 0
  %.fca.1.insert.merged = insertvalue { i64, i8 } %.fca.0.insert.i.pn, i8 %i.a, 1
  ret { i64, i8 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define { i64, i8 } @_ZN8facebook5velox6common8testutil14ScopedTestTime23getCurrentTestTimeMicroEv() local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox6common8testutil14ScopedTestTime11testTimeNs_E, i64 8), align 8, !tbaa !7, !range !11, !noundef !12 ; 2 uses
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i64, ptr @_ZN8facebook5velox6common8testutil14ScopedTestTime11testTimeNs_E, align 8 ; 2 uses
  %i.d = udiv i64 %i.c, 1000
  %.pn2 = select i1 %i.b, i64 %i.d, i64 %i.c
  %.fca.0.insert.i.pn = insertvalue { i64, i8 } poison, i64 %.pn2, 0
  %.fca.1.insert.merged = insertvalue { i64, i8 } %.fca.0.insert.i.pn, i8 %i.a, 1
  ret { i64, i8 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define { i64, i8 } @_ZN8facebook5velox6common8testutil14ScopedTestTime22getCurrentTestTimeNanoEv() local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr @_ZN8facebook5velox6common8testutil14ScopedTestTime11testTimeNs_E, align 8
  %.sroa.2.0.copyload = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox6common8testutil14ScopedTestTime11testTimeNs_E, i64 8), align 8
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.0.copyload, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #4 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #4 align 2

declare i32 @__gxx_personality_v0(...)

attributes #0 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { noreturn }

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
!7 = !{!8, !9, i64 8}
!8 = !{!"_ZTSSt22_Optional_payload_baseImE", !5, i64 0, !9, i64 8}
!9 = !{!"bool", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{i8 0, i8 2}
!12 = !{}
end_hunk_0
