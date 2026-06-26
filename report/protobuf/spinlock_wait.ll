inline.NumInlined: 6
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN4absl12lts_2025051213base_internalL10delay_randE.0 = internal unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress uwtable
define weak void @AbslInternalSpinLockDelay_lts_20250512(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @__errno_location() #5     ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3
  %i.c = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef %0, i32 noundef 128, i32 noundef %1, ptr noundef null) #6 ; 0 uses
  store i32 %i.b, ptr %i.a, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind
declare i64 @syscall(i64 noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define weak void @AbslInternalSpinLockWake_lts_20250512(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = select i1 %1, i32 2147483647, i32 1
  %i.b = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef %0, i32 noundef 129, i32 noundef %i.a, i32 noundef 0) #6 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN4absl12lts_2025051213base_internal12SpinLockWaitEPSt6atomicIjEiPKNS1_22SpinLockWaitTransitionENS1_14SchedulingModeE(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not37 = icmp eq i32 %1, 0
  br i1 %.not37, label %.outer32.us, label %.outer.preheader

.outer.preheader:                                 ; preds = %bb.a
  %i.a = zext i32 %1 to i64
  br label %.outer32.outer

.outer32.us:                                      ; preds = %bb.a, %.outer32.us
  %.020.ph33.us = phi i32 [ %i.c, %.outer32.us ], [ 0, %bb.a ]
  %i.b = load atomic i32, ptr %0 acquire, align 4
  %i.c = add nuw nsw i32 %.020.ph33.us, 1         ; 2 uses
  tail call void @AbslInternalSpinLockDelay_lts_20250512(ptr noundef nonnull %0, i32 noundef %i.b, i32 noundef %i.c, i32 noundef %3)
  br label %.outer32.us, !llvm.loop !7

.outer32:                                         ; preds = %.outer32.outer, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread
  br label %.lr.ph

.lr.ph:                                           ; preds = %.outer32, %bb.d
  %i.d = load atomic i32, ptr %0 acquire, align 4 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !9
  %.not24 = icmp eq i32 %i.d, %i.f
  br i1 %.not24, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.a
  br i1 %.not, label %._crit_edge39, label %bb.b, !llvm.loop !12

._crit_edge39:                                    ; preds = %bb.c
  %i.g = add nuw nsw i32 %.020.ph33.ph, 1         ; 2 uses
  tail call void @AbslInternalSpinLockDelay_lts_20250512(ptr noundef nonnull %0, i32 noundef %i.d, i32 noundef %i.g, i32 noundef %3)
  br label %.outer32.outer, !llvm.loop !7

.outer32.outer:                                   ; preds = %.outer.preheader, %._crit_edge39
  %.020.ph33.ph = phi i32 [ 0, %.outer.preheader ], [ %i.g, %._crit_edge39 ]
  br label %.outer32

.critedge:                                        ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !13   ; 2 uses
  %i.j = icmp eq i32 %i.i, %i.d
  br i1 %i.j, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.k = cmpxchg ptr %0, i32 %i.d, i32 %i.i acquire monotonic, align 4
  %i.l = extractvalue { i32, i1 } %i.k, 1
  br i1 %i.l, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread, label %.lr.ph, !llvm.loop !7

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread: ; preds = %bb.d, %.critedge
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load i8, ptr %i.m, align 4, !tbaa !14, !range !15, !noundef !16
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.e, label %.outer32, !llvm.loop !7

bb.e:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread
  ret i32 %i.d
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 131072, 4194304) i32 @_ZN4absl12lts_2025051213base_internal24SpinLockSuggestedDelayNSEi(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load atomic i64, ptr @_ZN4absl12lts_2025051213base_internalL10delay_randE.0 monotonic, align 8
  %i.b = mul i64 %i.a, 25214903917
  %i.c = add i64 %i.b, 11                         ; 2 uses
  store atomic i64 %i.c, ptr @_ZN4absl12lts_2025051213base_internalL10delay_randE.0 monotonic, align 8
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %0, i32 32)
  %i.d = lshr i32 %spec.store.select, 3
  %i.e = shl nuw nsw i32 131072, %i.d             ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  %i.g = trunc i64 %i.c to i32
  %i.h = and i32 %i.f, %i.g
  %i.i = or i32 %i.h, %i.e
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind willreturn memory(none) }
attributes #6 = { nounwind }

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
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10, !4, i64 0}
!10 = !{!"_ZTSN4absl12lts_2025051213base_internal22SpinLockWaitTransitionE", !4, i64 0, !4, i64 4, !11, i64 8}
!11 = !{!"bool", !5, i64 0}
!12 = distinct !{!12, !8}
!13 = !{!10, !4, i64 4}
!14 = !{!10, !11, i64 8}
!15 = !{i8 0, i8 2}
!16 = !{}
end_hunk_0
