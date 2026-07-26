inline.NumInlined: 19
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011624synchronization_internal12PerThreadSem23SetThreadBlockedCounterEPSt6atomicIiE(ptr noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4absl12lts_2024011613base_internal30CurrentThreadIdentityIfPresentEv() ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2024011624synchronization_internal32GetOrCreateCurrentThreadIdentityEv.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN4absl12lts_2024011624synchronization_internal20CreateThreadIdentityEv()
  br label %_ZN4absl12lts_2024011624synchronization_internal32GetOrCreateCurrentThreadIdentityEv.exit

_ZN4absl12lts_2024011624synchronization_internal32GetOrCreateCurrentThreadIdentityEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i, i64 320
  store ptr %0, ptr %i.d, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4absl12lts_2024011624synchronization_internal12PerThreadSem23GetThreadBlockedCounterEv() local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4absl12lts_2024011613base_internal30CurrentThreadIdentityIfPresentEv() ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2024011624synchronization_internal32GetOrCreateCurrentThreadIdentityEv.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN4absl12lts_2024011624synchronization_internal20CreateThreadIdentityEv()
  br label %_ZN4absl12lts_2024011624synchronization_internal32GetOrCreateCurrentThreadIdentityEv.exit

_ZN4absl12lts_2024011624synchronization_internal32GetOrCreateCurrentThreadIdentityEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i, i64 320
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011624synchronization_internal12PerThreadSem4TickEPNS0_13base_internal14ThreadIdentityE(ptr noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = atomicrmw add ptr %i.a, i32 1 monotonic, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.d = load atomic i32, ptr %i.c monotonic, align 4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.f = load atomic i8, ptr %i.e monotonic, align 4, !range !26, !noundef !27
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = add nsw i32 %i.b, 1
  %i.i = sub i32 %i.h, %i.d
  %i.j = icmp slt i32 %i.i, 61
  %or.cond = or i1 %i.j, %i.g
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @AbslInternalPerThreadSemPoke_lts_20240116(ptr noundef nonnull %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak void @AbslInternalPerThreadSemPoke_lts_20240116(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN4absl12lts_2024011624synchronization_internal11FutexWaiter4PokeEv(ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak void @AbslInternalPerThreadSemInit_lts_20240116(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.a, align 4, !tbaa !28
  ret void
}

; Function Attrs: mustprogress uwtable
define weak void @AbslInternalPerThreadSemPost_lts_20240116(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN4absl12lts_2024011624synchronization_internal11FutexWaiter4PostEv(ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  ret void
}

declare void @_ZN4absl12lts_2024011624synchronization_internal11FutexWaiter4PostEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare void @_ZN4absl12lts_2024011624synchronization_internal11FutexWaiter4PokeEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define weak zeroext i1 @AbslInternalPerThreadSemWait_lts_20240116(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4absl12lts_2024011613base_internal30CurrentThreadIdentityIfPresentEv() ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2024011624synchronization_internal32GetOrCreateCurrentThreadIdentityEv.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN4absl12lts_2024011624synchronization_internal20CreateThreadIdentityEv()
  br label %_ZN4absl12lts_2024011624synchronization_internal32GetOrCreateCurrentThreadIdentityEv.exit

_ZN4absl12lts_2024011624synchronization_internal32GetOrCreateCurrentThreadIdentityEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i, i64 328
  %i.e = load atomic i32, ptr %i.d monotonic, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i, i64 332 ; 2 uses
  %i.g = tail call i32 @llvm.umax.i32(i32 %i.e, i32 1)
  store atomic i32 %i.g, ptr %i.f monotonic, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i, i64 336 ; 2 uses
  store atomic i8 0, ptr %i.h monotonic, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 320 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8    ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2024011624synchronization_internal32GetOrCreateCurrentThreadIdentityEv.exit
  %i.k = atomicrmw add ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4absl12lts_2024011624synchronization_internal32GetOrCreateCurrentThreadIdentityEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %i.m = tail call noundef zeroext i1 @_ZN4absl12lts_2024011624synchronization_internal11FutexWaiter4WaitENS1_13KernelTimeoutE(ptr noundef nonnull align 4 dereferenceable(4) %i.l, i64 %0)
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !8    ; 2 uses
  %.not14 = icmp eq ptr %i.n, null
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = atomicrmw sub ptr %i.n, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store atomic i8 0, ptr %i.h monotonic, align 8
  store atomic i32 0, ptr %i.f monotonic, align 4
  ret i1 %i.m
}

declare noundef zeroext i1 @_ZN4absl12lts_2024011624synchronization_internal11FutexWaiter4WaitENS1_13KernelTimeoutE(ptr noundef nonnull align 4 dereferenceable(4), i64) local_unnamed_addr #1

declare noundef ptr @_ZN4absl12lts_2024011613base_internal30CurrentThreadIdentityIfPresentEv() local_unnamed_addr #1

declare noundef ptr @_ZN4absl12lts_2024011624synchronization_internal20CreateThreadIdentityEv() local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
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
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{!9, !20, i64 320}
!9 = !{!"_ZTSN4absl12lts_2024011613base_internal14ThreadIdentityE", !10, i64 0, !19, i64 64, !20, i64 320, !21, i64 328, !21, i64 332, !23, i64 336, !25, i64 344}
!10 = !{!"_ZTSN4absl12lts_2024011613base_internal14PerThreadSynchE", !11, i64 0, !11, i64 8, !13, i64 16, !13, i64 17, !13, i64 18, !13, i64 19, !13, i64 20, !4, i64 24, !14, i64 28, !16, i64 32, !17, i64 40, !17, i64 48, !18, i64 56}
!11 = !{!"p1 _ZTSN4absl12lts_2024011613base_internal14PerThreadSynchE", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"bool", !5, i64 0}
!14 = !{!"_ZTSSt6atomicIN4absl12lts_2024011613base_internal14PerThreadSynch5StateEE", !15, i64 0}
!15 = !{!"_ZTSN4absl12lts_2024011613base_internal14PerThreadSynch5StateE", !5, i64 0}
!16 = !{!"p1 _ZTSN4absl12lts_2024011615SynchWaitParamsE", !12, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = !{!"p1 _ZTSN4absl12lts_2024011614SynchLocksHeldE", !12, i64 0}
!19 = !{!"_ZTSN4absl12lts_2024011613base_internal14ThreadIdentity11WaiterStateE", !5, i64 0}
!20 = !{!"p1 _ZTSSt6atomicIiE", !12, i64 0}
!21 = !{!"_ZTSSt6atomicIiE", !22, i64 0}
!22 = !{!"_ZTSSt13__atomic_baseIiE", !4, i64 0}
!23 = !{!"_ZTSSt6atomicIbE", !24, i64 0}
!24 = !{!"_ZTSSt13__atomic_baseIbE", !13, i64 0}
!25 = !{!"p1 _ZTSN4absl12lts_2024011613base_internal14ThreadIdentityE", !12, i64 0}
!26 = !{i8 0, i8 2}
!27 = !{}
!28 = !{!22, !4, i64 0}
end_hunk_0
