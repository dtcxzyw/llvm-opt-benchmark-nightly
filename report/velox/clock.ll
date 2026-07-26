inline.NumInlined: 36
inline.NumDeleted: 25
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec = type { i64, i64 }
%"class.absl::lts_20240116::Duration" = type { %"class.absl::lts_20240116::Duration::HiRep", i32 }
%"class.absl::lts_20240116::Duration::HiRep" = type { i32, i32 }

@.str = private unnamed_addr constant [95 x i8] c"/opt-bench/work/velox/velox/build/_deps/absl-src/absl/time/internal/get_current_time_posix.inc\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Check %s failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"clock_gettime(CLOCK_REALTIME, &ts) == 0\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to read real-time clock.\00", align 1

; Function Attrs: mustprogress uwtable
define { i64, i32 } @_ZN4absl12lts_202401163NowEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #5
  %i.a = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull %0) #5
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2024011619GetCurrentTimeNanosEv.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 68), i32 noundef 17, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3)
  unreachable

_ZN4absl12lts_2024011619GetCurrentTimeNanosEv.exit: ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !8
  %i.c = mul nsw i64 %i.b, 1000000000
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11
  %i.f = add nsw i64 %i.c, %i.e                   ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #5
  %i.g = icmp sgt i64 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4absl12lts_2024011619GetCurrentTimeNanosEv.exit
  %i.h = udiv i64 %i.f, 1000000000
  %i.i = urem i64 %i.f, 1000000000
  %.tr = trunc nuw nsw i64 %i.i to i32
  %i.j = shl nuw i32 %.tr, 2
  br label %bb.e

bb.d:                                             ; preds = %_ZN4absl12lts_2024011619GetCurrentTimeNanosEv.exit
  %.nonneg = sub i64 0, %i.f                      ; 2 uses
  %i.k = udiv i64 %.nonneg, 1000000000
  %i.l = urem i64 %.nonneg, 1000000000            ; 2 uses
  %.neg29 = sub nsw i64 0, %i.l                   ; 2 uses
  %.not = icmp eq i64 %i.l, 0
  %.tr.i.i = trunc nsw i64 %.neg29 to i32
  %i.m = shl i32 %.tr.i.i, 2
  %i.n = add i32 %i.m, -294967296
  %.lobit.i.i.i = ashr i64 %.neg29, 61
  %.pn17.i.i.i = sub nsw i64 %.lobit.i.i.i, %i.k
  %.pn15.i.i.i = select i1 %.not, i32 0, i32 %i.n
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn32 = phi i64 [ %i.h, %bb.c ], [ %.pn17.i.i.i, %bb.d ]
  %.pn30 = phi i32 [ %i.j, %bb.c ], [ %.pn15.i.i.i, %bb.d ]
  %.fca.0.insert.i.i.pn = insertvalue { i64, i32 } poison, i64 %.pn32, 0
  %.pn = insertvalue { i64, i32 } %.fca.0.insert.i.i.pn, i32 %.pn30, 1
  ret { i64, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN4absl12lts_2024011619GetCurrentTimeNanosEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #5
  %i.a = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull %0) #5
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %_ZN4absl12lts_2024011613time_internalL29GetCurrentTimeNanosFromSystemEv.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 68), i32 noundef 17, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3)
  unreachable

_ZN4absl12lts_2024011613time_internalL29GetCurrentTimeNanosFromSystemEv.exit: ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !8
  %i.c = mul nsw i64 %i.b, 1000000000
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11
  %i.f = add nsw i64 %i.c, %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #5
  ret i64 %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define weak void @AbslInternalSleepFor_lts_20240116(i64 %0, i32 %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 6 uses
  %3 = alloca %"class.absl::lts_20240116::Duration", align 8 ; 4 uses
  store i64 %0, ptr %3, align 8
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 %1, ptr %.sroa.224.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4absl12lts_2024011612_GLOBAL__N_19SleepOnceENS0_8DurationE.exit, %bb.a
  %.sroa.222.0.copyload = phi i32 [ %.sroa.222.0.copyload.pre, %_ZN4absl12lts_2024011612_GLOBAL__N_19SleepOnceENS0_8DurationE.exit ], [ %1, %bb.a ]
  %.val = phi i64 [ %.sroa.021.0.copyload.pre, %_ZN4absl12lts_2024011612_GLOBAL__N_19SleepOnceENS0_8DurationE.exit ], [ %0, %bb.a ] ; 5 uses
  %.sroa.222.0.copyload.fr = freeze i32 %.sroa.222.0.copyload ; 2 uses
  %.not.i.i = icmp eq i64 %.val, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_20240116gtENS0_8DurationES1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = icmp sgt i64 %.val, 0
  br i1 %i.b, label %.thread, label %bb.f

_ZN4absl12lts_20240116gtENS0_8DurationES1_.exit:  ; preds = %bb.b
  %.not = icmp eq i32 %.sroa.222.0.copyload.fr, 0
  br i1 %.not, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.c, %_ZN4absl12lts_20240116gtENS0_8DurationES1_.exit
  %.not.i.i25 = icmp eq i64 %.val, 9223372036854775807
  %i.c = select i1 %.not.i.i25, i32 0, i32 %.sroa.222.0.copyload.fr ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.d = call { i64, i64 } @_ZN4absl12lts_2024011610ToTimespecENS0_8DurationE(i64 %.val, i32 %i.c) #6 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  store i64 %i.e, ptr %2, align 8
  %i.f = extractvalue { i64, i64 } %i.d, 1
  store i64 %i.f, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.thread
  %i.g = call i32 @nanosleep(ptr noundef nonnull %2, ptr noundef nonnull %2)
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN4absl12lts_2024011612_GLOBAL__N_19SleepOnceENS0_8DurationE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @__errno_location() #6
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.j = icmp eq i32 %i.i, 4
  br i1 %i.j, label %bb.d, label %_ZN4absl12lts_2024011612_GLOBAL__N_19SleepOnceENS0_8DurationE.exit, !llvm.loop !12

_ZN4absl12lts_2024011612_GLOBAL__N_19SleepOnceENS0_8DurationE.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  %i.k = call noundef nonnull align 4 dereferenceable(12) ptr @_ZN4absl12lts_202401168DurationmIES1_(ptr noundef nonnull align 4 dereferenceable(12) %3, i64 %.val, i32 %i.c) ; 0 uses
  %.sroa.021.0.copyload.pre = load i64, ptr %3, align 8
  %.sroa.222.0.copyload.pre = load i32, ptr %.sroa.224.0..sroa_idx, align 8, !tbaa !3
  br label %bb.b, !llvm.loop !14

bb.f:                                             ; preds = %bb.c, %_ZN4absl12lts_20240116gtENS0_8DurationES1_.exit
  ret void
}

declare noundef nonnull align 4 dereferenceable(12) ptr @_ZN4absl12lts_202401168DurationmIES1_(ptr noundef nonnull align 4 dereferenceable(12), i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare { i64, i64 } @_ZN4absl12lts_2024011610ToTimespecENS0_8DurationE(i64, i32) local_unnamed_addr #4

declare i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(none) }

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
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTS8timespec", !10, i64 0, !10, i64 8}
!10 = !{!"long", !5, i64 0}
!11 = !{!9, !10, i64 8}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
end_hunk_0
