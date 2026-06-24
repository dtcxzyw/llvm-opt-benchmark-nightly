inline.NumInlined: 26
inline.NumDeleted: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN4absl24synchronization_internalL24thread_identity_freelistE = internal unnamed_addr global ptr null, align 8
@_ZN4absl24synchronization_internalL13freelist_lockE = internal global { { i32 } } zeroinitializer, align 4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl24synchronization_internal25OneTimeInitThreadIdentityEPNS_13base_internal14ThreadIdentityE(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @AbslInternalPerThreadSemInit(ptr noundef %0) #4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  store atomic i32 0, ptr %i.a monotonic, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 332
  store atomic i32 0, ptr %i.b monotonic, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 336
  store atomic i8 0, ptr %i.c monotonic, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4absl24synchronization_internal20CreateThreadIdentityEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN4absl24synchronization_internalL13freelist_lockE monotonic, align 4 ; 3 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.i.i.i, label %_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.thread.i.i.i

_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.i.i.i: ; preds = %bb.a
  %i.c = or disjoint i32 %i.a, 1
  %i.d = cmpxchg ptr @_ZN4absl24synchronization_internalL13freelist_lockE, i32 %i.a, i32 %i.c acquire monotonic, align 4
  %i.e = extractvalue { i32, i1 } %i.d, 0
  %.pre.i.i.i.i = and i32 %i.e, 1
  %i.f = icmp eq i32 %.pre.i.i.i.i, 0
  br i1 %i.f, label %_ZN4absl13base_internal14SpinLockHolderC2ERNS0_8SpinLockE.exit.i, label %_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.thread.i.i.i

_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.thread.i.i.i: ; preds = %_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.i.i.i, %bb.a
  tail call void @_ZN4absl13base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl24synchronization_internalL13freelist_lockE) #5
  br label %_ZN4absl13base_internal14SpinLockHolderC2ERNS0_8SpinLockE.exit.i

_ZN4absl13base_internal14SpinLockHolderC2ERNS0_8SpinLockE.exit.i: ; preds = %_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.thread.i.i.i, %_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.i.i.i
  %i.g = load ptr, ptr @_ZN4absl24synchronization_internalL24thread_identity_freelistE, align 8 ; 3 uses
  %.not.i = icmp eq ptr %i.g, null                ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN4absl13base_internal14SpinLockHolderC2ERNS0_8SpinLockE.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.i = load ptr, ptr %i.h, align 8
  store ptr %i.i, ptr @_ZN4absl24synchronization_internalL24thread_identity_freelistE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN4absl13base_internal14SpinLockHolderC2ERNS0_8SpinLockE.exit.i
  %i.j = load atomic i32, ptr @_ZN4absl24synchronization_internalL13freelist_lockE monotonic, align 4
  %i.k = and i32 %i.j, 2
  %i.l = atomicrmw xchg ptr @_ZN4absl24synchronization_internalL13freelist_lockE, i32 %i.k release, align 4 ; 2 uses
  %.not4.i.i.i = icmp ult i32 %i.l, 8
  br i1 %.not4.i.i.i, label %_ZN4absl13base_internal14SpinLockHolderD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4absl13base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl24synchronization_internalL13freelist_lockE, i32 noundef %i.l) #5
  br label %_ZN4absl13base_internal14SpinLockHolderD2Ev.exit.i

_ZN4absl13base_internal14SpinLockHolderD2Ev.exit.i: ; preds = %bb.d, %bb.c
  br i1 %.not.i, label %bb.e, label %_ZN4absl24synchronization_internalL17NewThreadIdentityEv.exit

bb.e:                                             ; preds = %_ZN4absl13base_internal14SpinLockHolderD2Ev.exit.i
  %i.m = tail call noundef ptr @_ZN4absl13base_internal13LowLevelAlloc5AllocEm(i64 noundef 607) #4
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = add nsw i64 %i.n, 255
  %i.p = and i64 %i.o, -256
  %i.q = inttoptr i64 %i.p to ptr                 ; 5 uses
  tail call void @AbslInternalPerThreadSemInit(ptr noundef %i.q) #4
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 328
  store atomic i32 0, ptr %i.r monotonic, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 332
  store atomic i32 0, ptr %i.s monotonic, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 336
  store atomic i8 0, ptr %i.t monotonic, align 16
  br label %_ZN4absl24synchronization_internalL17NewThreadIdentityEv.exit

_ZN4absl24synchronization_internalL17NewThreadIdentityEv.exit: ; preds = %_ZN4absl13base_internal14SpinLockHolderD2Ev.exit.i, %bb.e
  %.1.i = phi ptr [ %i.q, %bb.e ], [ %i.g, %_ZN4absl13base_internal14SpinLockHolderD2Ev.exit.i ] ; 13 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.1.i, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %.1.i, i64 24
  store i32 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.1.i, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.1.i, i8 0, i64 17, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  store atomic i32 0, ptr %i.w monotonic, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %.1.i, i64 17
  store <4 x i8> zeroinitializer, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %.1.i, i64 56
  store ptr null, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i, i64 320
  store ptr null, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i, i64 328
  store atomic i32 0, ptr %i.aa monotonic, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.1.i, i64 332
  store atomic i32 0, ptr %i.ab monotonic, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i, i64 336
  store atomic i8 0, ptr %i.ac monotonic, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i, i64 344
  store ptr null, ptr %i.ad, align 8
  tail call void @_ZN4absl13base_internal24SetCurrentThreadIdentityEPNS0_14ThreadIdentityEPFvPvE(ptr noundef nonnull %.1.i, ptr noundef nonnull @_ZN4absl24synchronization_internalL21ReclaimThreadIdentityEPv) #4
  ret ptr %.1.i
}

declare void @_ZN4absl13base_internal24SetCurrentThreadIdentityEPNS0_14ThreadIdentityEPFvPvE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl24synchronization_internalL21ReclaimThreadIdentityEPv(ptr noundef initializes((344, 352)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef nonnull %i.b) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4absl13base_internal26ClearCurrentThreadIdentityEv() #4
  %i.c = load atomic i32, ptr @_ZN4absl24synchronization_internalL13freelist_lockE monotonic, align 4 ; 3 uses
  %i.d = and i32 %i.c, 1
  %.not.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.i.i, label %_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.thread.i.i

_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.i.i: ; preds = %bb.c
  %i.e = or disjoint i32 %i.c, 1
  %i.f = cmpxchg ptr @_ZN4absl24synchronization_internalL13freelist_lockE, i32 %i.c, i32 %i.e acquire monotonic, align 4
  %i.g = extractvalue { i32, i1 } %i.f, 0
  %.pre.i.i.i = and i32 %i.g, 1
  %i.h = icmp eq i32 %.pre.i.i.i, 0
  br i1 %i.h, label %_ZN4absl13base_internal14SpinLockHolderC2ERNS0_8SpinLockE.exit, label %_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.thread.i.i

_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.thread.i.i: ; preds = %_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.i.i, %bb.c
  tail call void @_ZN4absl13base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl24synchronization_internalL13freelist_lockE) #5
  br label %_ZN4absl13base_internal14SpinLockHolderC2ERNS0_8SpinLockE.exit

_ZN4absl13base_internal14SpinLockHolderC2ERNS0_8SpinLockE.exit: ; preds = %_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.i.i, %_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.thread.i.i
  %i.i = load ptr, ptr @_ZN4absl24synchronization_internalL24thread_identity_freelistE, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.i, ptr %i.j, align 8
  store ptr %0, ptr @_ZN4absl24synchronization_internalL24thread_identity_freelistE, align 8
  %i.k = load atomic i32, ptr @_ZN4absl24synchronization_internalL13freelist_lockE monotonic, align 4
  %i.l = and i32 %i.k, 2
  %i.m = atomicrmw xchg ptr @_ZN4absl24synchronization_internalL13freelist_lockE, i32 %i.l release, align 4 ; 2 uses
  %.not4.i.i = icmp ult i32 %i.m, 8
  br i1 %.not4.i.i, label %_ZN4absl13base_internal14SpinLockHolderD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4absl13base_internal14SpinLockHolderC2ERNS0_8SpinLockE.exit
  tail call void @_ZN4absl13base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl24synchronization_internalL13freelist_lockE, i32 noundef %i.m) #5
  br label %_ZN4absl13base_internal14SpinLockHolderD2Ev.exit

_ZN4absl13base_internal14SpinLockHolderD2Ev.exit: ; preds = %_ZN4absl13base_internal14SpinLockHolderC2ERNS0_8SpinLockE.exit, %bb.d
  ret void
}

declare void @AbslInternalPerThreadSemInit(ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN4absl13base_internal13LowLevelAlloc5AllocEm(i64 noundef) local_unnamed_addr #1 section "malloc_hook"

; Function Attrs: cold
declare void @_ZN4absl13base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: cold
declare void @_ZN4absl13base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) local_unnamed_addr #2

declare void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef) local_unnamed_addr #1 section "malloc_hook"

declare void @_ZN4absl13base_internal26ClearCurrentThreadIdentityEv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
end_hunk_0
