Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/vdso_support?download=true
inline.NumInlined: 28
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
%"class.absl::lts_20260526::debugging_internal::VDSOSupport" = type { %"class.absl::lts_20260526::debugging_internal::ElfMemImage" }
%"class.absl::lts_20260526::debugging_internal::ElfMemImage" = type { ptr, ptr, ptr, ptr, ptr, i32, i64, i64, i64 }
%"struct.absl::lts_20260526::debugging_internal::ElfMemImage::SymbolInfo" = type { ptr, ptr, ptr, ptr }

@_ZN4absl12lts_2026052618debugging_internal11ElfMemImage20kInvalidBaseSentinelE = external constant i32, align 4
@_ZN4absl12lts_2026052618debugging_internal11VDSOSupport10vdso_base_E = dso_local local_unnamed_addr global %"struct.std::atomic" { %"struct.std::__atomic_base" { ptr @_ZN4absl12lts_2026052618debugging_internal11ElfMemImage20kInvalidBaseSentinelE } }, align 8
@_ZN4absl12lts_2026052618debugging_internal11VDSOSupport10getcpu_fn_E = dso_local local_unnamed_addr global %"struct.std::atomic.1" { %"struct.std::__atomic_base.0" { ptr @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport13InitAndGetCPUEPjPvS4_ } }, align 8
@.str = private unnamed_addr constant [16 x i8] c"/proc/self/auxv\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"__vdso_getcpu\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"LINUX_2.6\00", align 1
@.str.3 = private unnamed_addr constant [78 x i8] c"/opt-bench/work/abseil-cpp/abseil-cpp/absl/debugging/internal/vdso_support.cc\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Check %s failed: %s\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"base != debugging_internal::ElfMemImage::kInvalidBase\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"internal error\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"fn != &InitAndGetCPU\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Init() did not set getcpu_fn_\00", align 1

@_ZN4absl12lts_2026052618debugging_internal11VDSOSupportC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4absl12lts_2026052618debugging_internal11VDSOSupportC2Ev

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport13InitAndGetCPUEPjPvS4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport4InitEv() ; 0 uses
  %i.b = load atomic ptr, ptr @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport10getcpu_fn_E monotonic, align 8 ; 2 uses
  %.not = icmp eq ptr %i.b, @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport13InitAndGetCPUEPjPvS4_
  br i1 %.not, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 62), i32 noundef 187, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 %i.b(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i64 %i.c
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052618debugging_internal11VDSOSupportC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic ptr, ptr @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport10vdso_base_E monotonic, align 8
  %i.b = icmp eq ptr %i.a, @_ZN4absl12lts_2026052618debugging_internal11ElfMemImage20kInvalidBaseSentinelE
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport4InitEv()
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = load atomic ptr, ptr @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport10vdso_base_E monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  tail call void @_ZN4absl12lts_2026052618debugging_internal11ElfMemImageC1EPKv(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %i.e)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport4InitEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %struct.Elf64_auxv_t, align 8       ; 5 uses
  %1 = alloca %"class.absl::lts_20260526::debugging_internal::VDSOSupport", align 8 ; 4 uses
  %2 = alloca %"struct.absl::lts_20260526::debugging_internal::ElfMemImage::SymbolInfo", align 8 ; 4 uses
  %i.a = load atomic ptr, ptr @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport10vdso_base_E monotonic, align 8
  %i.b = icmp eq ptr %i.a, @_ZN4absl12lts_2026052618debugging_internal11ElfMemImage20kInvalidBaseSentinelE
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #7     ; 2 uses
  store i32 0, ptr %i.c, align 4, !tbaa !11
  %i.d = tail call i64 @getauxval(i64 noundef 33) #8
  %i.e = load i32, ptr %i.c, align 4, !tbaa !11
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %i.d to ptr
  store atomic ptr %i.g, ptr @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport10vdso_base_E monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.h = load atomic ptr, ptr @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport10vdso_base_E monotonic, align 8
  %i.i = icmp eq ptr %i.h, @_ZN4absl12lts_2026052618debugging_internal11ElfMemImage20kInvalidBaseSentinelE
  br i1 %i.i, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str, i32 noundef 0) ; 3 uses
  %.not = icmp eq i32 %i.j, -1                    ; 2 uses
  br i1 %.not, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  store atomic ptr null, ptr @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport10vdso_base_E monotonic, align 8
  store atomic ptr @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport16GetCPUViaSyscallEPjPvS4_, ptr @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport10getcpu_fn_E monotonic, align 8
  br label %3

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.k = call i64 @read(i32 noundef %i.j, ptr noundef nonnull %0, i64 noundef 16)
  %i.l = icmp eq i64 %i.k, 16
  br i1 %i.l, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.m = load i64, ptr %0, align 8, !tbaa !14
  %i.n = icmp eq i64 %i.m, 33
  br i1 %i.n, label %bb.i, label %bb.g, !llvm.loop !10

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !16
  %i.q = inttoptr i64 %i.p to ptr
  store atomic ptr %i.q, ptr @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport10vdso_base_E monotonic, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.i
  %i.r = tail call i32 @close(i32 noundef %i.j)   ; 0 uses
  %i.s = load atomic ptr, ptr @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport10vdso_base_E monotonic, align 8
  %i.t = icmp eq ptr %i.s, @_ZN4absl12lts_2026052618debugging_internal11ElfMemImage20kInvalidBaseSentinelE
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  store atomic ptr null, ptr @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport10vdso_base_E monotonic, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #8
  br label %3

3:                                                ; preds = %bb.k, %.thread
  br i1 %.not, label %bb.q, label %bb.l

bb.l:                                             ; preds = %3, %bb.d
  %i.u = load atomic ptr, ptr @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport10vdso_base_E monotonic, align 8
  %.not10 = icmp eq ptr %i.u, null
  br i1 %.not10, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.v = load atomic ptr, ptr @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport10vdso_base_E monotonic, align 8
  %i.w = icmp eq ptr %i.v, @_ZN4absl12lts_2026052618debugging_internal11ElfMemImage20kInvalidBaseSentinelE
  br i1 %i.w, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.x = tail call noundef ptr @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport4InitEv(), !inline_history !17
  br label %_ZN4absl12lts_2026052618debugging_internal11VDSOSupportC2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.y = load atomic ptr, ptr @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport10vdso_base_E monotonic, align 8
  br label %_ZN4absl12lts_2026052618debugging_internal11VDSOSupportC2Ev.exit

_ZN4absl12lts_2026052618debugging_internal11VDSOSupportC2Ev.exit: ; preds = %bb.n, %bb.o
  %i.z = phi ptr [ %i.x, %bb.n ], [ %i.y, %bb.o ]
  call void @_ZN4absl12lts_2026052618debugging_internal11ElfMemImageC1EPKv(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %i.z), !inline_history !17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.aa = call noundef zeroext i1 @_ZNK4absl12lts_2026052618debugging_internal11ElfMemImage12LookupSymbolEPKcS4_iPNS2_10SymbolInfoE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 2, ptr noundef nonnull %2)
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %.0 = select i1 %i.aa, ptr %i.ac, ptr @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport16GetCPUViaSyscallEPjPvS4_
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %bb.p

bb.p:                                             ; preds = %_ZN4absl12lts_2026052618debugging_internal11VDSOSupportC2Ev.exit, %bb.l
  %.1 = phi ptr [ %.0, %_ZN4absl12lts_2026052618debugging_internal11VDSOSupportC2Ev.exit ], [ @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport16GetCPUViaSyscallEPjPvS4_, %bb.l ]
  store atomic ptr %.1, ptr @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport10getcpu_fn_E monotonic, align 8
  %i.ad = load atomic ptr, ptr @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport10vdso_base_E monotonic, align 8
  br label %bb.q

bb.q:                                             ; preds = %3, %bb.p
  %.18 = phi ptr [ %i.ad, %bb.p ], [ null, %3 ]
  ret ptr %.18
}

declare void @_ZN4absl12lts_2026052618debugging_internal11ElfMemImageC1EPKv(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #1

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
define dso_local noundef i64 @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport16GetCPUViaSyscallEPjPvS4_(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #6 align 2 {
bb.a:
  %i.a = tail call i64 (i64, ...) @syscall(i64 noundef 309, ptr noundef %0, ptr noundef null, ptr noundef null) #8
  ret i64 %i.a
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

declare i32 @close(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4absl12lts_2026052618debugging_internal11VDSOSupport12LookupSymbolEPKcS4_iPNS1_11ElfMemImage10SymbolInfoE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4absl12lts_2026052618debugging_internal11ElfMemImage12LookupSymbolEPKcS4_iPNS2_10SymbolInfoE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport7SetBaseEPKv(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, @_ZN4absl12lts_2026052618debugging_internal11ElfMemImage20kInvalidBaseSentinelE
  br i1 %.not, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 62), i32 noundef 148, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = load atomic ptr, ptr @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport10vdso_base_E monotonic, align 8
  store atomic ptr %1, ptr @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport10vdso_base_E monotonic, align 8
  tail call void @_ZN4absl12lts_2026052618debugging_internal11ElfMemImage4InitEPKv(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1)
  store atomic ptr @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport13InitAndGetCPUEPjPvS4_, ptr @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport10getcpu_fn_E monotonic, align 8
  ret ptr %i.a
}

declare void @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @_ZN4absl12lts_2026052618debugging_internal11ElfMemImage4InitEPKv(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4absl12lts_2026052618debugging_internal11ElfMemImage12LookupSymbolEPKcS4_iPNS2_10SymbolInfoE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4absl12lts_2026052618debugging_internal11VDSOSupport21LookupSymbolByAddressEPKvPNS1_11ElfMemImage10SymbolInfoE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4absl12lts_2026052618debugging_internal11ElfMemImage21LookupSymbolByAddressEPKvPNS2_10SymbolInfoE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2)
  ret i1 %i.a
}

declare noundef zeroext i1 @_ZNK4absl12lts_2026052618debugging_internal11ElfMemImage21LookupSymbolByAddressEPKvPNS2_10SymbolInfoE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @syscall(i64 noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN4absl12lts_2026052618debugging_internal6GetCPUEv() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = load atomic ptr, ptr @_ZN4absl12lts_2026052618debugging_internal11VDSOSupport10getcpu_fn_E seq_cst, align 8
  %i.c = call noundef i64 %i.b(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null) ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = load i32, ptr %i.a, align 4
  %i.f = trunc i64 %i.c to i32
  %i.g = select i1 %i.d, i32 %i.e, i32 %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %i.g
}

declare i32 @__gxx_personality_v0(...)

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = distinct !{!10, !15}
!11 = !{!6, !6, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"_ZTS12Elf64_auxv_t", !12, i64 0, !5, i64 8}
!14 = !{!13, !12, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!5, !5, i64 0}
!17 = !{ptr @_ZN4absl12lts_2026052618debugging_internal11VDSOSupportC2Ev}
end_hunk_0
