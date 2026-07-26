inline.NumInlined: 25
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { ptr }
%"struct.std::atomic.1" = type { %"struct.std::__atomic_base.0" }
%"struct.std::__atomic_base.0" = type { ptr }
%struct.Elf64_auxv_t = type { i64, %union.anon }
%union.anon = type { i64 }
%"class.absl::lts_20240116::debugging_internal::VDSOSupport" = type { %"class.absl::lts_20240116::debugging_internal::ElfMemImage" }
%"class.absl::lts_20240116::debugging_internal::ElfMemImage" = type { ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64 }
%"struct.absl::lts_20240116::debugging_internal::ElfMemImage::SymbolInfo" = type { ptr, ptr, ptr, ptr }

@_ZN4absl12lts_2024011618debugging_internal11ElfMemImage20kInvalidBaseSentinelE = external constant i32, align 4
@_ZN4absl12lts_2024011618debugging_internal11VDSOSupport10vdso_base_E = local_unnamed_addr global %"struct.std::atomic" { %"struct.std::__atomic_base" { ptr @_ZN4absl12lts_2024011618debugging_internal11ElfMemImage20kInvalidBaseSentinelE } }, align 8
@_ZN4absl12lts_2024011618debugging_internal11VDSOSupport10getcpu_fn_E = local_unnamed_addr global %"struct.std::atomic.1" { %"struct.std::__atomic_base.0" { ptr @_ZN4absl12lts_2024011618debugging_internal11VDSOSupport13InitAndGetCPUEPjPvS4_ } }, align 8
@.str = private unnamed_addr constant [16 x i8] c"/proc/self/auxv\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"__vdso_getcpu\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"LINUX_2.6\00", align 1
@.str.3 = private unnamed_addr constant [89 x i8] c"/opt-bench/work/velox/velox/build/_deps/absl-src/absl/debugging/internal/vdso_support.cc\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Check %s failed: %s\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"base != debugging_internal::ElfMemImage::kInvalidBase\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"internal error\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"fn != &InitAndGetCPU\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Init() did not set getcpu_fn_\00", align 1

@_ZN4absl12lts_2024011618debugging_internal11VDSOSupportC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4absl12lts_2024011618debugging_internal11VDSOSupportC2Ev

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN4absl12lts_2024011618debugging_internal11VDSOSupport13InitAndGetCPUEPjPvS4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4absl12lts_2024011618debugging_internal11VDSOSupport4InitEv() ; 0 uses
  %i.b = load atomic ptr, ptr @_ZN4absl12lts_2024011618debugging_internal11VDSOSupport10getcpu_fn_E monotonic, align 8 ; 2 uses
  %.not = icmp eq ptr %i.b, @_ZN4absl12lts_2024011618debugging_internal11VDSOSupport13InitAndGetCPUEPjPvS4_
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 73), i32 noundef 186, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 %i.b(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i64 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011618debugging_internal11VDSOSupportC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic ptr, ptr @_ZN4absl12lts_2024011618debugging_internal11VDSOSupport10vdso_base_E monotonic, align 8
  %i.b = icmp eq ptr %i.a, @_ZN4absl12lts_2024011618debugging_internal11ElfMemImage20kInvalidBaseSentinelE
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN4absl12lts_2024011618debugging_internal11VDSOSupport4InitEv()
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = load atomic ptr, ptr @_ZN4absl12lts_2024011618debugging_internal11VDSOSupport10vdso_base_E monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  tail call void @_ZN4absl12lts_2024011618debugging_internal11ElfMemImageC1EPKv(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %i.e)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4absl12lts_2024011618debugging_internal11VDSOSupport4InitEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %struct.Elf64_auxv_t, align 8       ; 5 uses
  %1 = alloca %"class.absl::lts_20240116::debugging_internal::VDSOSupport", align 8 ; 4 uses
  %2 = alloca %"struct.absl::lts_20240116::debugging_internal::ElfMemImage::SymbolInfo", align 8 ; 4 uses
  %i.a = load atomic ptr, ptr @_ZN4absl12lts_2024011618debugging_internal11VDSOSupport10vdso_base_E monotonic, align 8
  %i.b = icmp eq ptr %i.a, @_ZN4absl12lts_2024011618debugging_internal11ElfMemImage20kInvalidBaseSentinelE
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #7     ; 2 uses
  store i32 0, ptr %i.c, align 4, !tbaa !3
  %i.d = tail call i64 @getauxval(i64 noundef 33) #8
  %i.e = load i32, ptr %i.c, align 4, !tbaa !3
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %i.d to ptr
  store atomic ptr %i.g, ptr @_ZN4absl12lts_2024011618debugging_internal11VDSOSupport10vdso_base_E monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.h = load atomic ptr, ptr @_ZN4absl12lts_2024011618debugging_internal11VDSOSupport10vdso_base_E monotonic, align 8
  %i.i = icmp eq ptr %i.h, @_ZN4absl12lts_2024011618debugging_internal11ElfMemImage20kInvalidBaseSentinelE
  br i1 %i.i, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str, i32 noundef 0) ; 3 uses
  %.not = icmp eq i32 %i.j, -1
  br i1 %.not, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  store atomic ptr null, ptr @_ZN4absl12lts_2024011618debugging_internal11VDSOSupport10vdso_base_E monotonic, align 8
  store atomic ptr @_ZN4absl12lts_2024011618debugging_internal11VDSOSupport16GetCPUViaSyscallEPjPvS4_, ptr @_ZN4absl12lts_2024011618debugging_internal11VDSOSupport10getcpu_fn_E monotonic, align 8
  br label %bb.o

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.k = call i64 @read(i32 noundef %i.j, ptr noundef nonnull %0, i64 noundef 16)
  %i.l = icmp eq i64 %i.k, 16
  br i1 %i.l, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.m = load i64, ptr %0, align 8, !tbaa !8
  %i.n = icmp eq i64 %i.m, 33
  br i1 %i.n, label %bb.i, label %bb.g, !llvm.loop !11

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !13
  %i.q = inttoptr i64 %i.p to ptr
  store atomic ptr %i.q, ptr @_ZN4absl12lts_2024011618debugging_internal11VDSOSupport10vdso_base_E monotonic, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.i
  %i.r = tail call i32 @close(i32 noundef %i.j)   ; 0 uses
  %i.s = load atomic ptr, ptr @_ZN4absl12lts_2024011618debugging_internal11VDSOSupport10vdso_base_E monotonic, align 8
  %i.t = icmp eq ptr %i.s, @_ZN4absl12lts_2024011618debugging_internal11ElfMemImage20kInvalidBaseSentinelE
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  store atomic ptr null, ptr @_ZN4absl12lts_2024011618debugging_internal11VDSOSupport10vdso_base_E monotonic, align 8
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %i.u = load atomic ptr, ptr @_ZN4absl12lts_2024011618debugging_internal11VDSOSupport10vdso_base_E monotonic, align 8
  %.not10 = icmp eq ptr %i.u, null
  br i1 %.not10, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @_ZN4absl12lts_2024011618debugging_internal11VDSOSupportC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.v = call noundef zeroext i1 @_ZNK4absl12lts_2024011618debugging_internal11ElfMemImage12LookupSymbolEPKcS4_iPNS2_10SymbolInfoE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 2, ptr noundef nonnull %2)
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %.0 = select i1 %i.v, ptr %i.x, ptr @_ZN4absl12lts_2024011618debugging_internal11VDSOSupport16GetCPUViaSyscallEPjPvS4_
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1 = phi ptr [ %.0, %bb.m ], [ @_ZN4absl12lts_2024011618debugging_internal11VDSOSupport16GetCPUViaSyscallEPjPvS4_, %bb.l ]
  store atomic ptr %.1, ptr @_ZN4absl12lts_2024011618debugging_internal11VDSOSupport10getcpu_fn_E monotonic, align 8
  %i.y = load atomic ptr, ptr @_ZN4absl12lts_2024011618debugging_internal11VDSOSupport10vdso_base_E monotonic, align 8
  br label %bb.o

bb.o:                                             ; preds = %.thread, %bb.n
  %.18 = phi ptr [ %i.y, %bb.n ], [ null, %.thread ]
  ret ptr %.18
}

declare void @_ZN4absl12lts_2024011618debugging_internal11ElfMemImageC1EPKv(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @getauxval(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZN4absl12lts_2024011618debugging_internal11VDSOSupport16GetCPUViaSyscallEPjPvS4_(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #6 align 2 {
bb.a:
  %i.a = tail call i64 (i64, ...) @syscall(i64 noundef 309, ptr noundef %0, ptr noundef null, ptr noundef null) #8
  ret i64 %i.a
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

declare i32 @close(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4absl12lts_2024011618debugging_internal11VDSOSupport12LookupSymbolEPKcS4_iPNS1_11ElfMemImage10SymbolInfoE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4absl12lts_2024011618debugging_internal11ElfMemImage12LookupSymbolEPKcS4_iPNS2_10SymbolInfoE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4absl12lts_2024011618debugging_internal11VDSOSupport7SetBaseEPKv(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, @_ZN4absl12lts_2024011618debugging_internal11ElfMemImage20kInvalidBaseSentinelE
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 73), i32 noundef 147, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = load atomic ptr, ptr @_ZN4absl12lts_2024011618debugging_internal11VDSOSupport10vdso_base_E monotonic, align 8
  store atomic ptr %1, ptr @_ZN4absl12lts_2024011618debugging_internal11VDSOSupport10vdso_base_E monotonic, align 8
  tail call void @_ZN4absl12lts_2024011618debugging_internal11ElfMemImage4InitEPKv(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1)
  store atomic ptr @_ZN4absl12lts_2024011618debugging_internal11VDSOSupport13InitAndGetCPUEPjPvS4_, ptr @_ZN4absl12lts_2024011618debugging_internal11VDSOSupport10getcpu_fn_E monotonic, align 8
  ret ptr %i.a
}

declare void @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @_ZN4absl12lts_2024011618debugging_internal11ElfMemImage4InitEPKv(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4absl12lts_2024011618debugging_internal11ElfMemImage12LookupSymbolEPKcS4_iPNS2_10SymbolInfoE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4absl12lts_2024011618debugging_internal11VDSOSupport21LookupSymbolByAddressEPKvPNS1_11ElfMemImage10SymbolInfoE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4absl12lts_2024011618debugging_internal11ElfMemImage21LookupSymbolByAddressEPKvPNS2_10SymbolInfoE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2)
  ret i1 %i.a
}

declare noundef zeroext i1 @_ZNK4absl12lts_2024011618debugging_internal11ElfMemImage21LookupSymbolByAddressEPKvPNS2_10SymbolInfoE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @syscall(i64 noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN4absl12lts_2024011618debugging_internal6GetCPUEv() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = load atomic ptr, ptr @_ZN4absl12lts_2024011618debugging_internal11VDSOSupport10getcpu_fn_E seq_cst, align 8
  %i.c = call noundef i64 %i.b(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null) ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = load i32, ptr %i.a, align 4
  %i.f = trunc i64 %i.c to i32
  %i.g = select i1 %i.d, i32 %i.e, i32 %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %i.g
}

declare i32 @__gxx_personality_v0(...)

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(none) }
attributes #8 = { nounwind }

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
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTS12Elf64_auxv_t", !10, i64 0, !5, i64 8}
!10 = !{!"long", !5, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!5, !5, i64 0}
end_hunk_0
