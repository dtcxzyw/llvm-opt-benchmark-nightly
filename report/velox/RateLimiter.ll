inline.NumInlined: 25
inline.NumDeleted: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec = type { i64, i64 }

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN5folly7logging19IntervalRateLimiter9checkSlowEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load atomic i64, ptr %i.a seq_cst, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #3
  %i.c = call i32 @clock_gettime(i32 noundef 6, ptr noundef nonnull %1) #3 ; 0 uses
  %i.d = load i64, ptr %1, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !12
  %i.g = mul nsw i64 %i.d, 1000000000
  %i.h = add nsw i64 %i.g, %i.f                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !14
  %i.k = add nsw i64 %i.j, %i.b
  %i.l = icmp slt i64 %i.h, %i.k
  br i1 %i.l, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = cmpxchg ptr %i.a, i64 %i.b, i64 %i.h seq_cst seq_cst, align 8
  %i.n = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.n, label %bb.c, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i64 %i.b, -9223372036854775808
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = atomicrmw add ptr %i.p, i64 1 acq_rel, align 8
  %i.r = load i64, ptr %0, align 8, !tbaa !16
  %i.s = icmp ult i64 %i.q, %i.r
  br label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

bb.e:                                             ; preds = %bb.c
  store atomic i64 1, ptr %i.p release, align 8
  br label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit: ; preds = %bb.b, %bb.a, %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.a ], [ %i.s, %bb.d ], [ true, %bb.e ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !10, i64 0}
!14 = !{!15, !13, i64 0}
!15 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE", !13, i64 0}
!16 = !{!17, !13, i64 0}
!17 = !{!"_ZTSN5folly7logging19IntervalRateLimiterE", !13, i64 0, !15, i64 8, !18, i64 16, !20, i64 24}
!18 = !{!"_ZTSSt6atomicImE", !19, i64 0}
!19 = !{!"_ZTSSt13__atomic_baseImE", !13, i64 0}
!20 = !{!"_ZTSSt6atomicIlE", !21, i64 0}
!21 = !{!"_ZTSSt13__atomic_baseIlE", !13, i64 0}
end_hunk_0
