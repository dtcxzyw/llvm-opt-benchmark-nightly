inline.NumInlined: 14
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::atomic.2" = type { %"struct.std::__atomic_base.3" }
%"struct.std::__atomic_base.3" = type { ptr }

@_ZN4absl12lts_2024011613base_internal10CycleClock19cycle_clock_source_E = external local_unnamed_addr global %"struct.std::atomic.2", align 8

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2024011612log_internal14LogEveryNState9ShouldLogEi(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i32, ptr %0 monotonic, align 4 ; 2 uses
  %i.c = add i32 %i.b, 1
  store atomic i32 %i.c, ptr %0 monotonic, align 4
  %i.d = urem i32 %i.b, %1
  %i.e = icmp eq i32 %i.d, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i1 [ false, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %i.f
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2024011612log_internal14LogFirstNState9ShouldLogEi(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load atomic i32, ptr %0 monotonic, align 4 ; 2 uses
  %i.b = zext i32 %i.a to i64
  %i.c = sext i32 %1 to i64
  %i.d = icmp slt i64 %i.b, %i.c                  ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = add i32 %i.a, 1
  store atomic i32 %i.e, ptr %0 monotonic, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2024011612log_internal17LogEveryPow2State9ShouldLogEv(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load atomic i32, ptr %0 monotonic, align 4 ; 2 uses
  %i.b = add i32 %i.a, 1                          ; 2 uses
  store atomic i32 %i.b, ptr %0 monotonic, align 4
  %i.c = and i32 %i.b, %i.a
  %i.d = icmp eq i32 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2024011612log_internal17LogEveryNSecState9ShouldLogEd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, double noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i32, ptr %0 monotonic, align 8
  %i.b = add i32 %i.a, 1
  store atomic i32 %i.b, ptr %0 monotonic, align 8
  %i.c = load atomic ptr, ptr @_ZN4absl12lts_2024011613base_internal10CycleClock19cycle_clock_source_E acquire, align 8 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { i64, i64 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !7 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1
  %i.h = shl i64 %i.g, 32
  %i.i = or i64 %i.h, %i.f
  br label %_ZN4absl12lts_2024011613base_internal10CycleClock3NowEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef i64 %i.c(), !inline_history !8
  br label %_ZN4absl12lts_2024011613base_internal10CycleClock3NowEv.exit

_ZN4absl12lts_2024011613base_internal10CycleClock3NowEv.exit: ; preds = %bb.b, %bb.c
  %.0.in.i = phi i64 [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %.0.i = ashr i64 %.0.in.i, 1                    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load atomic i64, ptr %i.k monotonic, align 8 ; 2 uses
  %.not7 = icmp sgt i64 %.0.i, %i.l
  br i1 %.not7, label %.lr.ph, label %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit.thread

.lr.ph:                                           ; preds = %_ZN4absl12lts_2024011613base_internal10CycleClock3NowEv.exit
  %i.m = sitofp i64 %.0.i to double
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph
  %.08 = phi i64 [ %i.l, %.lr.ph ], [ %i.t, %bb.d ]
  %i.n = tail call noundef double @_ZN4absl12lts_2024011613base_internal18UnscaledCycleClock9FrequencyEv()
  %i.o = fmul double %i.n, 5.000000e-01
  %i.p = tail call double @llvm.fmuladd.f64(double %1, double %i.o, double %i.m)
  %i.q = fptosi double %i.p to i64
  %i.r = cmpxchg weak ptr %i.k, i64 %.08, i64 %i.q monotonic monotonic, align 8 ; 2 uses
  %i.s = extractvalue { i64, i1 } %i.r, 1         ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.r, 0         ; 2 uses
  %.not = icmp sle i64 %.0.i, %i.t
  %or.cond.not = select i1 %i.s, i1 true, i1 %.not
  br i1 %or.cond.not, label %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit.thread, label %bb.d

_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit.thread: ; preds = %bb.d, %_ZN4absl12lts_2024011613base_internal10CycleClock3NowEv.exit
  %.not.lcssa = phi i1 [ false, %_ZN4absl12lts_2024011613base_internal10CycleClock3NowEv.exit ], [ %i.s, %bb.d ]
  ret i1 %.not.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

declare i32 @__gxx_personality_v0(...)

declare noundef double @_ZN4absl12lts_2024011613base_internal18UnscaledCycleClock9FrequencyEv() local_unnamed_addr #3

attributes #0 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!7 = !{i64 1258395}
!8 = distinct !{null}
end_hunk_0
