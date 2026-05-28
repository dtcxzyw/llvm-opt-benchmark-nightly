inline.NumInlined: 122
inline.NumDeleted: 50
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.google::FlagRegisterer" = type { i8 }

@_ZN3fLI20FLAGS_codel_intervalE = global i32 100, align 4
@_ZN3fLIL16o_codel_intervalE = internal global %"class.google::FlagRegisterer" zeroinitializer, align 1
@.str = private unnamed_addr constant [15 x i8] c"codel_interval\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Codel default interval time in ms\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"/opt-bench/work/velox/velox/build/_deps/folly-src/folly/executors/Codel.cpp\00", align 1
@_ZN3fLIL22FLAGS_nocodel_intervalE = internal global i32 100, align 4
@_ZN3fLI24FLAGS_codel_target_delayE = global i32 5, align 4
@_ZN3fLIL20o_codel_target_delayE = internal global %"class.google::FlagRegisterer" zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"codel_target_delay\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Target codel queueing delay in ms\00", align 1
@_ZN3fLIL26FLAGS_nocodel_target_delayE = internal global i32 5, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Invalid arguments provided\00", align 1
@_ZTISt16invalid_argument = external constant ptr
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_Codel.cpp, ptr null }]

@_ZN5folly5CodelC1Ev = unnamed_addr alias void (ptr), ptr @_ZN5folly5CodelC2Ev
@_ZN5folly5CodelC1ERKNS0_7OptionsE = unnamed_addr alias void (ptr, ptr), ptr @_ZN5folly5CodelC2ERKNS0_7OptionsE

declare void @_ZN6google14FlagRegistererC1IiEEPKcS3_S3_PT_S5_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly5CodelC2Ev(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(34) initializes((0, 34)) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr @_ZN3fLI20FLAGS_codel_intervalE, align 4, !tbaa !7
  %i.b = sext i32 %i.a to i64
  %i.c = load i32, ptr @_ZN3fLI24FLAGS_codel_target_delayE, align 4, !tbaa !7
  %i.d = sext i32 %i.c to i64
  store i64 0, ptr %0, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #10
  store i64 %i.f, ptr %i.e, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.g, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.h, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.i, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 0, ptr %i.j, align 1, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly5CodelC2ERKNS0_7OptionsE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(34) initializes((0, 34)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 align 2 {
bb.a:
  store i64 0, ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #10
  store i64 %i.b, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i5 = load i64, ptr %i.d, align 8, !tbaa !14
  store i64 %.sroa.0.0.copyload.i5, ptr %i.c, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i6 = load i64, ptr %1, align 8, !tbaa !14
  store i64 %.sroa.0.0.copyload.i6, ptr %i.e, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.f, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 0, ptr %i.g, align 1, !tbaa !15
  ret void
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #2

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef zeroext i1 @_ZN5folly5Codel23overloaded_explicit_nowENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEENS1_10time_pointINS1_3_V212steady_clockES5_EE(ptr noundef nonnull align 8 captures(none) dereferenceable(34) %0, i64 %1, i64 %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i64, ptr %0 seq_cst, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load atomic i64, ptr %i.b monotonic, align 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load atomic i64, ptr %i.d monotonic, align 8
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.c, i64 %i.e) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load atomic i64, ptr %i.f seq_cst, align 8
  %i.h = icmp sgt i64 %2, %i.g
  br i1 %i.h, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load atomic i8, ptr %i.i acquire, align 8, !range !18, !noundef !19
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = atomicrmw xchg ptr %i.i, i8 1 seq_cst, align 1
  %i.m = trunc i8 %i.l to i1
  br i1 %i.m, label %.critedge, label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.c
  %i.n = mul nsw i64 %i.c, 1000000
  %i.o = add nsw i64 %i.n, %2
  store atomic i64 %i.o, ptr %i.f seq_cst, align 8
  %i.p = mul nsw i64 %.sroa.speculated.i, 1000000
  %i.q = icmp sgt i64 %i.a, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 33
  %. = zext i1 %i.q to i8
  store atomic i8 %., ptr %i.r seq_cst, align 1
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.a, %bb.b, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = load atomic i8, ptr %i.s acquire, align 8, !range !18, !noundef !19
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.critedge
  %i.v = atomicrmw xchg ptr %i.s, i8 0 seq_cst, align 1
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store atomic i64 %1, ptr %0 seq_cst, align 8
  br label %bb.j

bb.f:                                             ; preds = %bb.d, %.critedge
  %i.x = load atomic i64, ptr %0 seq_cst, align 8
  %i.y = icmp slt i64 %1, %i.x
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store atomic i64 %1, ptr %0 seq_cst, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.aa = load atomic i8, ptr %i.z seq_cst, align 1, !range !18, !noundef !19
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = mul nsw i64 %.sroa.speculated.i, 2000000
  %i.ad = icmp sgt i64 %1, %i.ac
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.e
  %.0 = phi i1 [ false, %bb.e ], [ false, %bb.h ], [ %i.ad, %bb.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define { i64, i64 } @_ZNK5folly5Codel10getOptionsEv(ptr noundef nonnull align 8 captures(none) dereferenceable(34) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load atomic i64, ptr %i.a monotonic, align 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load atomic i64, ptr %i.c monotonic, align 8
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.b, i64 %i.d)
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.b, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.speculated, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i64 -9223372036854775808, 9223372036854775807) i64 @_ZNK5folly5Codel16getSloughTimeoutENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(34) %0, i64 %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = shl nsw i64 %1, 1
  ret i64 %i.a
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef range(i32 -2147483648, 101) i32 @_ZN5folly5Codel7getLoadEv(ptr noundef nonnull align 8 captures(none) dereferenceable(34) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load atomic i64, ptr %i.c monotonic, align 8
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.b, i64 %i.d)
  %i.e = load atomic i64, ptr %0 seq_cst, align 8
  %i.f = mul nsw i64 %i.e, 100
  %i.g = mul nsw i64 %.sroa.speculated.i, 2000000
  %i.h = sdiv i64 %i.f, %i.g
  %i.i = trunc i64 %i.h to i32
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.i, i32 100)
  ret i32 %.sroa.speculated
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define i64 @_ZN5folly5Codel11getMinDelayEv(ptr noundef nonnull align 8 captures(none) dereferenceable(34) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i64, ptr %0 seq_cst, align 8
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly5Codel10setOptionsERKNS0_7OptionsE(ptr noundef nonnull align 8 captures(none) dereferenceable(34) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !14 ; 3 uses
  %.sroa.0.0.copyload.i11 = load i64, ptr %1, align 8, !tbaa !14 ; 2 uses
  %i.b = icmp sle i64 %.sroa.0.0.copyload.i11, %.sroa.0.0.copyload.i
  %i.c = icmp slt i64 %.sroa.0.0.copyload.i, 1
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #10 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.critedge
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #11
  unreachable

bb.c:                                             ; preds = %.critedge
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #10
  resume { ptr, i32 } %i.e

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic i64 %.sroa.0.0.copyload.i11, ptr %i.f monotonic, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store atomic i64 %.sroa.0.0.copyload.i, ptr %i.g monotonic, align 8
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #0

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt16invalid_argumentD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define i64 @_ZN5folly5Codel15getIntervalTimeEv(ptr noundef nonnull align 8 captures(none) dereferenceable(34) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic i64, ptr %i.a seq_cst, align 8
  ret i64 %i.b
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_Codel.cpp() #8 section ".text.startup" {
bb.a:
  tail call void @_ZN6google14FlagRegistererC1IiEEPKcS3_S3_PT_S5_(ptr noundef nonnull align 1 dereferenceable(1) @_ZN3fLIL16o_codel_intervalE, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @_ZN3fLI20FLAGS_codel_intervalE, ptr noundef nonnull @_ZN3fLIL22FLAGS_nocodel_intervalE)
  tail call void @_ZN6google14FlagRegistererC1IiEEPKcS3_S3_PT_S5_(ptr noundef nonnull align 1 dereferenceable(1) @_ZN3fLIL20o_codel_target_delayE, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, ptr noundef nonnull @_ZN3fLI24FLAGS_codel_target_delayE, ptr noundef nonnull @_ZN3fLIL26FLAGS_nocodel_target_delayE)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSSt13__atomic_baseImE", !13, i64 0}
!13 = !{!"long", !9, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!16, !17, i64 0}
!16 = !{!"_ZTSSt13__atomic_baseIbE", !17, i64 0}
!17 = !{!"bool", !9, i64 0}
!18 = !{i8 0, i8 2}
!19 = !{}
end_hunk_0
