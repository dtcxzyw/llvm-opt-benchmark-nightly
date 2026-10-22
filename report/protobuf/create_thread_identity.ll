Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/create_thread_identity?download=true
inline.NumInlined: 26
inline.NumDeleted: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$__clang_call_terminate = comdat any

@_ZN4absl12lts_2025051224synchronization_internalL24thread_identity_freelistE = internal unnamed_addr global ptr null, align 8
@_ZN4absl12lts_2025051224synchronization_internalL13freelist_lockE = internal global { { i32 } } zeroinitializer, align 4

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051224synchronization_internal25OneTimeInitThreadIdentityEPNS0_13base_internal14ThreadIdentityE(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @AbslInternalPerThreadSemInit_lts_20250512(ptr noundef %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  store atomic i32 0, ptr %i.a monotonic, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 332
  store atomic i32 0, ptr %i.b monotonic, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 336
  store atomic i8 0, ptr %i.c monotonic, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4absl12lts_2025051224synchronization_internal20CreateThreadIdentityEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN4absl12lts_2025051224synchronization_internalL13freelist_lockE monotonic, align 4 ; 3 uses
  %0 = and i32 %i.a, 1
  %.not.i.i.i.i.i = icmp eq i32 %0, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.i.a, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.i.a: ; preds = %bb.a
  %i.b = or disjoint i32 %i.a, 1
  %i.c = cmpxchg ptr @_ZN4absl12lts_2025051224synchronization_internalL13freelist_lockE, i32 %i.a, i32 %i.b acquire monotonic, align 4
  %i.d = extractvalue { i32, i1 } %i.c, 0
  %.pre.i.i.i.i = and i32 %i.d, 1
  %1 = icmp eq i32 %.pre.i.i.i.i, 0
  br i1 %1, label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i.i: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.i.a, %bb.a
  tail call void @_ZN4absl12lts_2025051213base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl12lts_2025051224synchronization_internalL13freelist_lockE) #6
  br label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit.i

_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit.i: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i.i, %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.i.a
  %i.e = load ptr, ptr @_ZN4absl12lts_2025051224synchronization_internalL24thread_identity_freelistE, align 8, !tbaa !9 ; 3 uses
  %.not.i = icmp eq ptr %i.e, null                ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 344
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  store ptr %i.g, ptr @_ZN4absl12lts_2025051224synchronization_internalL24thread_identity_freelistE, align 8, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit.i
  %i.h = load atomic i32, ptr @_ZN4absl12lts_2025051224synchronization_internalL13freelist_lockE monotonic, align 4
  %i.i = and i32 %i.h, 2
  %i.j = atomicrmw xchg ptr @_ZN4absl12lts_2025051224synchronization_internalL13freelist_lockE, i32 %i.i release, align 4 ; 2 uses
  %.not4.i.i.i = icmp ult i32 %i.j, 8
  br i1 %.not4.i.i.i, label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl12lts_2025051224synchronization_internalL13freelist_lockE, i32 noundef %i.j) #6
          to label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #7
  unreachable

_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev.exit.i: ; preds = %bb.d, %bb.c
  br i1 %.not.i, label %bb.f, label %_ZN4absl12lts_2025051224synchronization_internalL17NewThreadIdentityEv.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev.exit.i
  %i.m = tail call noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc5AllocEm(i64 noundef 607)
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = add nsw i64 %i.n, 255
  %i.p = and i64 %i.o, -256
  %i.q = inttoptr i64 %i.p to ptr                 ; 5 uses
  tail call void @AbslInternalPerThreadSemInit_lts_20250512(ptr noundef %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 328
  store atomic i32 0, ptr %i.r monotonic, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 332
  store atomic i32 0, ptr %i.s monotonic, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 336
  store atomic i8 0, ptr %i.t monotonic, align 16
  br label %_ZN4absl12lts_2025051224synchronization_internalL17NewThreadIdentityEv.exit

_ZN4absl12lts_2025051224synchronization_internalL17NewThreadIdentityEv.exit: ; preds = %_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev.exit.i, %bb.f
  %.1.i = phi ptr [ %i.q, %bb.f ], [ %i.e, %_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev.exit.i ] ; 13 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.1.i, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %.1.i, i64 24
  store i32 0, ptr %i.v, align 8, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %.1.i, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.1.i, i8 0, i64 17, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  store atomic i32 0, ptr %i.w monotonic, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %.1.i, i64 17
  store <4 x i8> zeroinitializer, ptr %i.x, align 1, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %.1.i, i64 56
  store ptr null, ptr %i.y, align 8, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i, i64 320
  store ptr null, ptr %i.z, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i, i64 328
  store atomic i32 0, ptr %i.aa monotonic, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.1.i, i64 332
  store atomic i32 0, ptr %i.ab monotonic, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i, i64 336
  store atomic i8 0, ptr %i.ac monotonic, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i, i64 344
  store ptr null, ptr %i.ad, align 8, !tbaa !25
  tail call void @_ZN4absl12lts_2025051213base_internal24SetCurrentThreadIdentityEPNS1_14ThreadIdentityEPFvPvE(ptr noundef nonnull %.1.i, ptr noundef nonnull @_ZN4absl12lts_2025051224synchronization_internalL21ReclaimThreadIdentityEPv)
  ret ptr %.1.i
}

declare void @_ZN4absl12lts_2025051213base_internal24SetCurrentThreadIdentityEPNS1_14ThreadIdentityEPFvPvE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2025051224synchronization_internalL21ReclaimThreadIdentityEPv(ptr noundef initializes((344, 352)) %0) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4absl12lts_2025051213base_internal26ClearCurrentThreadIdentityEv()
  %i.c = load atomic i32, ptr @_ZN4absl12lts_2025051224synchronization_internalL13freelist_lockE monotonic, align 4 ; 3 uses
  %1 = and i32 %i.c, 1
  %.not.i.i.i.i = icmp eq i32 %1, 0
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.a, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.a: ; preds = %bb.c
  %i.d = or disjoint i32 %i.c, 1
  %i.e = cmpxchg ptr @_ZN4absl12lts_2025051224synchronization_internalL13freelist_lockE, i32 %i.c, i32 %i.d acquire monotonic, align 4
  %i.f = extractvalue { i32, i1 } %i.e, 0
  %.pre.i.i.i = and i32 %i.f, 1
  %2 = icmp eq i32 %.pre.i.i.i, 0
  br i1 %2, label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.a, %bb.c
  tail call void @_ZN4absl12lts_2025051213base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl12lts_2025051224synchronization_internalL13freelist_lockE) #6
  br label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit

_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.a, %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i
  %i.g = load ptr, ptr @_ZN4absl12lts_2025051224synchronization_internalL24thread_identity_freelistE, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.g, ptr %i.h, align 8, !tbaa !25
  store ptr %0, ptr @_ZN4absl12lts_2025051224synchronization_internalL24thread_identity_freelistE, align 8, !tbaa !9
  %i.i = load atomic i32, ptr @_ZN4absl12lts_2025051224synchronization_internalL13freelist_lockE monotonic, align 4
  %i.j = and i32 %i.i, 2
  %i.k = atomicrmw xchg ptr @_ZN4absl12lts_2025051224synchronization_internalL13freelist_lockE, i32 %i.j release, align 4 ; 2 uses
  %.not4.i.i = icmp ult i32 %i.k, 8
  br i1 %.not4.i.i, label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit
  invoke void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl12lts_2025051224synchronization_internalL13freelist_lockE, i32 noundef %i.k) #6
          to label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #7
  unreachable

_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev.exit: ; preds = %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit, %bb.d
  ret void
}

declare void @AbslInternalPerThreadSemInit_lts_20250512(ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #8 ; 0 uses
  tail call void @_ZSt9terminatev() #7
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

declare noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc5AllocEm(i64 noundef) local_unnamed_addr #1 section "malloc_hook"

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051213base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) local_unnamed_addr #4

declare void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef) local_unnamed_addr #1 section "malloc_hook"

declare void @_ZN4absl12lts_2025051213base_internal26ClearCurrentThreadIdentityEv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { cold }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!"p1 _ZTSN4absl12lts_2025051213base_internal14ThreadIdentityE", !7, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"p1 _ZTSN4absl12lts_2025051213base_internal14PerThreadSynchE", !7, i64 0}
!11 = !{!"bool", !4, i64 0}
!12 = !{!"_ZTSN4absl12lts_2025051213base_internal14PerThreadSynch5StateE", !4, i64 0}
!13 = !{!"_ZTSSt6atomicIN4absl12lts_2025051213base_internal14PerThreadSynch5StateEE", !12, i64 0}
!14 = !{!"p1 _ZTSN4absl12lts_2025051215SynchWaitParamsE", !7, i64 0}
!15 = !{!"long", !4, i64 0}
!16 = !{!"p1 _ZTSN4absl12lts_2025051214SynchLocksHeldE", !7, i64 0}
!17 = !{!"_ZTSN4absl12lts_2025051213base_internal14PerThreadSynchE", !10, i64 0, !10, i64 8, !11, i64 16, !11, i64 17, !11, i64 18, !11, i64 19, !11, i64 20, !5, i64 24, !13, i64 28, !14, i64 32, !15, i64 40, !15, i64 48, !16, i64 56}
!18 = !{!"_ZTSN4absl12lts_2025051213base_internal14ThreadIdentity11WaiterStateE", !4, i64 0}
!19 = !{!"p1 _ZTSSt6atomicIiE", !7, i64 0}
!20 = !{!"_ZTSSt13__atomic_baseIiE", !5, i64 0}
!21 = !{!"_ZTSSt6atomicIiE", !20, i64 0}
!22 = !{!"_ZTSSt13__atomic_baseIbE", !11, i64 0}
!23 = !{!"_ZTSSt6atomicIbE", !22, i64 0}
!24 = !{!"_ZTSN4absl12lts_2025051213base_internal14ThreadIdentityE", !17, i64 0, !18, i64 64, !19, i64 320, !21, i64 328, !21, i64 332, !23, i64 336, !8, i64 344}
!25 = !{!24, !8, i64 344}
!26 = !{!17, !5, i64 24}
!27 = !{!11, !11, i64 0}
!28 = !{!17, !16, i64 56}
!29 = !{!24, !19, i64 320}
!30 = !{!24, !16, i64 56}
end_hunk_0
