inline.NumInlined: 8
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@llvm.compiler.used = appending global [2 x ptr] [ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj], section "llvm.metadata"

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN8facebook5velox9functions7iceberg13Murmur3Hash329hashInt64Em(i64 noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN8facebook5velox9functions17Murmur3Hash32Base9hashInt64Emj(i64 noundef %0, i32 noundef 0)
  ret i32 %i.a
}

declare noundef i32 @_ZN8facebook5velox9functions17Murmur3Hash32Base9hashInt64Emj(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN8facebook5velox9functions7iceberg13Murmur3Hash329hashBytesEPKcj(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = lshr i32 %1, 2                           ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.022.lcssa = phi i32 [ 0, %bb.a ], [ %i.j, %.lr.ph ] ; 2 uses
  %i.b = and i32 %1, -4
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 3 uses
  %i.e = and i32 %1, 3
  switch i32 %i.e, label %default.unreachable30 [
    i32 3, label %bb.b
    i32 2, label %bb.c
    i32 1, label %bb.d
    i32 0, label %bb.e
  ]

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.02227 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.j, %.lr.ph ]
  %i.f = shl nuw nsw i64 %indvars.iv, 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !8
  %i.i = tail call noundef i32 @_ZN8facebook5velox9functions17Murmur3Hash32Base5mixK1Ej(i32 noundef %i.h)
  %i.j = tail call noundef i32 @_ZN8facebook5velox9functions17Murmur3Hash32Base5mixH1Ejj(i32 noundef %.02227, i32 noundef %i.i) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 16
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.0 = phi i32 [ %i.n, %bb.b ], [ 0, %._crit_edge ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !11
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 8
  %i.s = or disjoint i32 %i.r, %.0
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.1 = phi i32 [ %i.s, %bb.c ], [ 0, %._crit_edge ]
  %i.t = load i8, ptr %i.d, align 1, !tbaa !11
  %i.u = zext i8 %i.t to i32
  %i.v = xor i32 %.1, %i.u
  %i.w = tail call noundef i32 @_ZN8facebook5velox9functions17Murmur3Hash32Base5mixK1Ej(i32 noundef %i.v)
  %i.x = xor i32 %i.w, %.022.lcssa
  br label %bb.e

default.unreachable30:                            ; preds = %._crit_edge
  unreachable

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.123 = phi i32 [ %i.x, %bb.d ], [ %.022.lcssa, %._crit_edge ]
  %i.y = tail call noundef i32 @_ZN8facebook5velox9functions17Murmur3Hash32Base4fmixEjj(i32 noundef %.123, i32 noundef %1)
  ret i32 %i.y
}

declare noundef i32 @_ZN8facebook5velox9functions17Murmur3Hash32Base5mixK1Ej(i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN8facebook5velox9functions17Murmur3Hash32Base5mixH1Ejj(i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN8facebook5velox9functions17Murmur3Hash32Base4fmixEjj(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }

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
!8 = !{!5, !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!6, !6, i64 0}
end_hunk_0
