Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/stack-guard?download=true
inline.NumInlined: 243
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN2v88internal10StackGuard18PopInterruptsScopeEv:bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ca = load i64, ptr %i.bz, align 8
  %.sink.i = select i1 %.not9.i, i64 %i.ca, i64 -2
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic volatile i64 %.sink.i, ptr %i.cb monotonic, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cd = trunc i32 %i.by to i8
  %i.ce = and i8 %i.cd, 1
  store atomic volatile i8 %i.ce, ptr %i.cc monotonic, align 8
  %i.cf = and i32 %i.by, 3379
  %i.cg = icmp ne i32 %i.cf, 0
  %i.ch = zext i1 %i.cg to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 41
  store atomic volatile i8 %i.ch, ptr %i.ci monotonic, align 1
  %i.cj = and i32 %i.by, 4095
  %i.ck = icmp ne i32 %i.cj, 0
  %i.cl = zext i1 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 42
  store atomic volatile i8 %i.cl, ptr %i.cm monotonic, align 2
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  store ptr %i.co, ptr %i.c, align 8
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  ret void
}

declare noundef zeroext i1 @_ZN2v88internal15InterruptsScope9InterceptENS0_10StackGuard13InterruptFlagE(ptr noundef nonnull align 8 dereferenceable(25), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal10StackGuard14CheckInterruptENS1_13InterruptFlagE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 58672 ; 2 uses
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, %1
  %i.f = icmp ne i32 %i.e, 0
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10StackGuard16RequestInterruptENS1_13InterruptFlagE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 58672 ; 2 uses
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN2v88internal15InterruptsScope9InterceptENS0_10StackGuard13InterruptFlagE(ptr noundef nonnull align 8 dereferenceable(25) %i.d, i32 noundef %1) #5
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, %1                          ; 5 uses
  store i32 %i.h, ptr %i.f, align 8
  %.not9.i = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %.sink.i = select i1 %.not9.i, i64 %i.j, i64 -2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic volatile i64 %.sink.i, ptr %i.k monotonic, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = trunc i32 %i.h to i8
  %i.n = and i8 %i.m, 1
  store atomic volatile i8 %i.n, ptr %i.l monotonic, align 8
  %i.o = and i32 %i.h, 3379
  %i.p = icmp ne i32 %i.o, 0
  %i.q = zext i1 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 41
  store atomic volatile i8 %i.q, ptr %i.r monotonic, align 1
  %i.s = and i32 %i.h, 4095
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 42
  store atomic volatile i8 %i.u, ptr %i.v monotonic, align 2
  %i.w = load ptr, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 63856
  tail call void @_ZN2v88internal17FutexWaitListNode10NotifyWakeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.x) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  ret void
}

declare void @_ZN2v88internal17FutexWaitListNode10NotifyWakeEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10StackGuard14ClearInterruptENS1_13InterruptFlagE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 58672 ; 2 uses
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.05 = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not6 = icmp eq ptr %.05, null
  %.pre = xor i32 %1, -1                          ; 2 uses
  br i1 %.not6, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, %.pre                      ; 5 uses
  store i32 %i.f, ptr %i.d, align 8
  %.not9.i = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %.sink.i = select i1 %.not9.i, i64 %i.h, i64 -2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic volatile i64 %.sink.i, ptr %i.i monotonic, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = trunc i32 %i.f to i8
  %i.l = and i8 %i.k, 1
  store atomic volatile i8 %i.l, ptr %i.j monotonic, align 8
  %i.m = and i32 %i.f, 3379
  %i.n = icmp ne i32 %i.m, 0
  %i.o = zext i1 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 41
  store atomic volatile i8 %i.o, ptr %i.p monotonic, align 1
  %i.q = and i32 %i.f, 4095
  %i.r = icmp ne i32 %i.q, 0
  %i.s = zext i1 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 42
  store atomic volatile i8 %i.s, ptr %i.t monotonic, align 2
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %.0, %.lr.ph ], [ %.05, %bb.a ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.07, i64 20 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, %.pre
  store i32 %i.w, ptr %i.u, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %.07, i64 8
  %.0 = load ptr, ptr %i.x, align 8               ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal10StackGuard21HasTerminationRequestEv(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load atomic volatile i8, ptr %i.b monotonic, align 8
  %.not2 = icmp eq i8 %i.c, 0
  br i1 %.not2, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 58672 ; 2 uses
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8              ; 4 uses
  %.not = trunc i32 %i.g to i1                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = and i32 %i.g, -2                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 8
  %.not9.i = icmp eq i32 %i.h, 0
  %i.i = load i64, ptr %i.a, align 8
  %.sink.i = select i1 %.not9.i, i64 %i.i, i64 -2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic volatile i64 %.sink.i, ptr %i.j monotonic, align 8
  store atomic volatile i8 0, ptr %i.b monotonic, align 8
  %i.k = and i32 %i.g, 3378
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 41
  store atomic volatile i8 %i.m, ptr %i.n monotonic, align 1
  %i.o = and i32 %i.g, 4094
  %i.p = icmp ne i32 %i.o, 0
  %i.q = zext i1 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 42
  store atomic volatile i8 %i.q, ptr %i.r monotonic, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.1 = phi i1 [ %.not, %bb.d ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 4096) i32 @_ZN2v88internal10StackGuard23FetchAndClearInterruptsENS1_14InterruptLevelE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 58672 ; 2 uses
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  %2 = insertelement <12 x i32> poison, i32 %1, i64 0
  %3 = shufflevector <12 x i32> %2, <12 x i32> poison, <12 x i32> zeroinitializer
  %4 = icmp sgt <12 x i32> %3, <i32 -1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1, i32 0, i32 0>
  %5 = bitcast <12 x i1> %4 to i12
  %6 = zext i12 %5 to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = and i32 %i.d, 1
  %.not = icmp eq i32 %i.e, 0
  %spec.store.select = select i1 %.not, i32 %6, i32 1 ; 2 uses
  %i.f = and i32 %spec.store.select, %i.d
  %i.g = xor i32 %spec.store.select, -1
  %i.h = and i32 %i.d, %i.g                       ; 5 uses
  store i32 %i.h, ptr %i.c, align 8
  %.not9.i = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %.sink.i = select i1 %.not9.i, i64 %i.j, i64 -2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic volatile i64 %.sink.i, ptr %i.k monotonic, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = trunc i32 %i.h to i8
  %i.n = and i8 %i.m, 1
  store atomic volatile i8 %i.n, ptr %i.l monotonic, align 8
  %i.o = and i32 %i.h, 3379
  %i.p = icmp ne i32 %i.o, 0
  %i.q = zext i1 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 41
  store atomic volatile i8 %i.q, ptr %i.r monotonic, align 1
  %i.s = and i32 %i.h, 4095
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 42
  store atomic volatile i8 %i.u, ptr %i.v monotonic, align 2
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  ret i32 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN2v88internal10StackGuard17ArchiveStackGuardEPc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef writeonly captures(ret: address, provenance) initializes((0, 56)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 58672 ; 2 uses
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  store i64 -8, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -8, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 2
  %.sroa.85.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %.sroa.85.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  ret ptr %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN2v88internal10StackGuard17RestoreStackGuardEPc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((8, 64)) %0, ptr nofree noundef readonly captures(ret: address, provenance) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 58672 ; 2 uses
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 1 dereferenceable(56) %1, i64 56, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10StackGuard19FreeThreadResourcesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call noundef ptr @_ZN2v88internal7Isolate40FindOrAllocatePerThreadDataForThisThreadEv(ptr noundef nonnull align 8 dereferenceable(64320) %i.a) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.e, align 8
  ret void
}

declare noundef ptr @_ZN2v88internal7Isolate40FindOrAllocatePerThreadDataForThisThreadEv(ptr noundef nonnull align 8 dereferenceable(64320)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10StackGuard11ThreadLocal10InitializeEPNS0_7IsolateERKNS0_15ExecutionAccessE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(56) initializes((0, 8)) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1464), align 8
  %i.b = shl nsw i32 %i.a, 10
  %i.c = sext i32 %i.b to i64
  %i.d = tail call i64 @_ZN2v84base5Stack13GetStackStartEv() #5
  %i.e = sub i64 %i.d, %i.c                       ; 2 uses
  store i64 %i.e, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store atomic volatile i64 %i.e, ptr %i.f monotonic, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.h, align 8
  ret void
}

declare i64 @_ZN2v84base5Stack13GetStackStartEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10StackGuard10InitThreadERKNS0_15ExecutionAccessE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(64) initializes((8, 16)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1464), align 8
  %i.c = shl nsw i32 %i.b, 10
  %i.d = sext i32 %i.c to i64
  %i.e = tail call i64 @_ZN2v84base5Stack13GetStackStartEv() #5
  %i.f = sub i64 %i.e, %i.d                       ; 2 uses
  store i64 %i.f, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store atomic volatile i64 %i.f, ptr %i.g monotonic, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.i, align 8
  %i.j = load ptr, ptr %0, align 8
  %i.k = tail call noundef ptr @_ZN2v88internal7Isolate40FindOrAllocatePerThreadDataForThisThreadEv(ptr noundef nonnull align 8 dereferenceable(64320) %i.j) #5
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 58672 ; 2 uses
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #5
  %i.p = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.q = load i64, ptr %i.a, align 8
  %i.r = icmp eq i64 %i.p, %i.q
  br i1 %i.r, label %bb.c, label %_ZN2v88internal10StackGuard13SetStackLimitEm.exit

bb.c:                                             ; preds = %bb.b
  store atomic volatile i64 %i.m, ptr %i.g monotonic, align 8
  br label %_ZN2v88internal10StackGuard13SetStackLimitEm.exit

_ZN2v88internal10StackGuard13SetStackLimitEm.exit: ; preds = %bb.b, %bb.c
  store i64 %i.m, ptr %i.a, align 8
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #5
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal10StackGuard13SetStackLimitEm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca [2 x %"class.std::unique_ptr.746"], align 16 ; 6 uses
  %3 = alloca [2 x %"class.std::unique_ptr.746"], align 16 ; 6 uses
  %4 = alloca [2 x %"class.std::unique_ptr.746"], align 16 ; 6 uses
  %5 = alloca [2 x %"class.std::unique_ptr.746"], align 16 ; 6 uses
  %6 = alloca [2 x %"class.std::unique_ptr.746"], align 16 ; 6 uses
  %7 = alloca [2 x %"class.std::unique_ptr.746"], align 16 ; 6 uses
  %8 = alloca [2 x %"class.std::unique_ptr.746"], align 16 ; 6 uses
  %9 = alloca [2 x %"class.std::unique_ptr.746"], align 16 ; 6 uses
  %10 = alloca [2 x %"class.std::unique_ptr.746"], align 16 ; 6 uses
  %11 = alloca [2 x %"class.std::unique_ptr.746"], align 16 ; 6 uses
  %12 = alloca [2 x %"class.std::unique_ptr.746"], align 16 ; 6 uses
  %13 = alloca [2 x %"class.std::unique_ptr.746"], align 16 ; 6 uses
  %14 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %15 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %16 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %17 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %18 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %19 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %20 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %21 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %22 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %23 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %24 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %25 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %i.a = load atomic volatile i64, ptr @_ZZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelEE28trace_event_unique_atomic299 acquire, align 8 ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #5 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str) #5 ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  store atomic volatile i64 %i.h, ptr @_ZZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelEE28trace_event_unique_atomic299 release, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.b ]  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #5
  store ptr null, ptr %14, align 8
  %i.i = load atomic volatile i8, ptr %.0 monotonic, align 1
  %i.j = and i8 %i.i, 5
  %.not97 = icmp eq i8 %i.j, 0
  br i1 %.not97, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %i.k = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #5 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 88, ptr noundef nonnull %.0, ptr noundef nonnull @.str.1, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %13, i32 noundef 0) #5, !inline_history !8
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %bb.d
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #5, !inline_history !9
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.u = load ptr, ptr %13, align 16              ; 3 uses
  %.not.i.1 = icmp eq ptr %i.u, null
  br i1 %.not.i.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.u) #5, !inline_history !9
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #5
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %.0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr @.str.1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i64 %i.o, ptr %i.aa, align 8
  store ptr %i.y, ptr %14, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 58672 ; 2 uses
  call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #5
  %26 = insertelement <12 x i32> poison, i32 %1, i64 0
  %27 = shufflevector <12 x i32> %26, <12 x i32> poison, <12 x i32> zeroinitializer
  %28 = icmp sgt <12 x i32> %27, <i32 -1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1, i32 0, i32 0>
  %29 = bitcast <12 x i1> %28 to i12
  %30 = zext i12 %29 to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8            ; 3 uses
  %i.af = and i32 %i.ae, 1
  %.not.i164 = icmp eq i32 %i.af, 0
  %spec.store.select.i = select i1 %.not.i164, i32 %30, i32 1 ; 2 uses
  %i.ag = and i32 %spec.store.select.i, %i.ae     ; 12 uses
  %i.ah = xor i32 %spec.store.select.i, -1
  %i.ai = and i32 %i.ae, %i.ah                    ; 5 uses
  store i32 %i.ai, ptr %i.ad, align 8
  %.not9.i.i = icmp eq i32 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load i64, ptr %i.aj, align 8
  %.sink.i.i = select i1 %.not9.i.i, i64 %i.ak, i64 -2
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic volatile i64 %.sink.i.i, ptr %i.al monotonic, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = trunc i32 %i.ai to i8
  %i.ao = and i8 %i.an, 1
  store atomic volatile i8 %i.ao, ptr %i.am monotonic, align 8
  %i.ap = and i32 %i.ai, 3379
  %i.aq = icmp ne i32 %i.ap, 0
  %i.ar = zext i1 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 41
  store atomic volatile i8 %i.ar, ptr %i.as monotonic, align 1
  %i.at = and i32 %i.ai, 4095
  %i.au = icmp ne i32 %i.at, 0
  %i.av = zext i1 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 42
  store atomic volatile i8 %i.av, ptr %i.aw monotonic, align 2
  call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #5
  %i.ax = and i32 %i.ag, 1
  %.not249 = icmp eq i32 %i.ax, 0
  br i1 %.not249, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = load atomic volatile i64, ptr @_ZZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelEE28trace_event_unique_atomic318 acquire, align 8 ; 2 uses
  %i.az = inttoptr i64 %i.ay to ptr
  %.not118 = icmp eq i64 %i.ay, 0
  br i1 %.not118, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ba = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #5 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call noundef ptr %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull @.str) #5 ; 2 uses
  %i.bf = ptrtoint ptr %i.be to i64
  store atomic volatile i64 %i.bf, ptr @_ZZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelEE28trace_event_unique_atomic318 release, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.074 = phi ptr [ %i.az, %bb.f ], [ %i.be, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #5
  store ptr null, ptr %15, align 8
  %i.bg = load atomic volatile i8, ptr %.074 monotonic, align 1
  %i.bh = and i8 %i.bg, 5
  %.not119 = icmp eq i8 %i.bh, 0
  br i1 %.not119, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %i.bi = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #5 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = call noundef i64 %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, i8 noundef signext 88, ptr noundef nonnull %.074, ptr noundef nonnull @.str.2, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %12, i32 noundef 0) #5, !inline_history !8
  %i.bn = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8            ; 3 uses
  %.not.i165 = icmp eq ptr %i.bo, null
  br i1 %.not.i165, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit167, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i166

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i166: ; preds = %bb.i
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bo) #5, !inline_history !9
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit167

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit167: ; preds = %bb.i, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i166
  %i.bs = load ptr, ptr %12, align 16             ; 3 uses
  %.not.i165.1 = icmp eq ptr %i.bs, null
  br i1 %.not.i165.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit167.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i166.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i166.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit167
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bs) #5, !inline_history !9
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit167.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit167.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i166.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit167
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #5
  %i.bw = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %.074, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr @.str.2, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i64 %i.bm, ptr %i.by, align 8
  store ptr %i.bw, ptr %15, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit167.1, %bb.h
  %i.bz = load ptr, ptr %0, align 8
  %i.ca = call i64 @_ZN2v88internal7Isolate18TerminateExecutionEv(ptr noundef nonnull align 8 dereferenceable(64320) %i.bz) #5
  %i.cb = load ptr, ptr %15, align 8
  %.not.i168 = icmp eq ptr %i.cb, null
  br i1 %.not.i168, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = load atomic volatile i8, ptr %i.cd monotonic, align 1
  %.not1.i = icmp eq i8 %i.ce, 0
  br i1 %.not1.i, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cf = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #5 ; 2 uses
  %i.cg = load ptr, ptr %i.cc, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = load ptr, ptr %i.cf, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef %i.cg, ptr noundef %i.ci, i64 noundef %i.ck) #5, !inline_history !10
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit:   ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #5
  br label %bb.ct

bb.m:                                             ; preds = %bb.e
  %i.co = and i32 %i.ag, 2
  %.not250 = icmp eq i32 %i.co, 0
  br i1 %.not250, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cp = load atomic volatile i64, ptr @_ZZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelEE28trace_event_unique_atomic323 acquire, align 8 ; 2 uses
  %i.cq = inttoptr i64 %i.cp to ptr
  %.not98 = icmp eq i64 %i.cp, 0
  br i1 %.not98, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cr = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #5 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = call noundef ptr %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef nonnull @.str.3) #5 ; 2 uses
  %i.cw = ptrtoint ptr %i.cv to i64
  store atomic volatile i64 %i.cw, ptr @_ZZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelEE28trace_event_unique_atomic323 release, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.076 = phi ptr [ %i.cq, %bb.n ], [ %i.cv, %bb.o ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #5
  store ptr null, ptr %16, align 8
  %i.cx = load atomic volatile i8, ptr %.076 monotonic, align 1
  %i.cy = and i8 %i.cx, 5
  %.not99 = icmp eq i8 %i.cy, 0
  br i1 %.not99, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.cz = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #5 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = call noundef i64 %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, i8 noundef signext 88, ptr noundef nonnull %.076, ptr noundef nonnull @.str.4, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %11, i32 noundef 0) #5, !inline_history !8
  %i.de = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.df = load ptr, ptr %i.de, align 8            ; 3 uses
  %.not.i169 = icmp eq ptr %i.df, null
  br i1 %.not.i169, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit171, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i170

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i170: ; preds = %bb.q
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.df) #5, !inline_history !9
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit171

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit171: ; preds = %bb.q, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i170
  %i.dj = load ptr, ptr %11, align 16             ; 3 uses
  %.not.i169.1 = icmp eq ptr %i.dj, null
  br i1 %.not.i169.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit171.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i170.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i170.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit171
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dj) #5, !inline_history !9
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit171.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit171.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i170.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit171
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #5
  %i.dn = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store ptr %.076, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr @.str.4, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i64 %i.dd, ptr %i.dp, align 8
  store ptr %i.dn, ptr %16, align 8
  br label %bb.r
end_hunk_0
begin_hunk_1_@_ZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelE:bb.a
  %i.my = load ptr, ptr %i.mx, align 8
  %i.mz = call noundef ptr %i.my(ptr noundef nonnull align 8 dereferenceable(8) %i.mv, ptr noundef nonnull @.str.11) #5 ; 2 uses
  %i.na = ptrtoint ptr %i.mz to i64
  store atomic volatile i64 %i.na, ptr @_ZZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelEE28trace_event_unique_atomic361 release, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.081 = phi ptr [ %i.mu, %bb.bm ], [ %i.mz, %bb.bn ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #5
  store ptr null, ptr %22, align 8
  %i.nb = load atomic volatile i8, ptr %.081 monotonic, align 1
  %i.nc = and i8 %i.nb, 5
  %.not111 = icmp eq i8 %i.nc, 0
  br i1 %.not111, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.nd = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #5 ; 2 uses
  %i.ne = load ptr, ptr %i.nd, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 24
  %i.ng = load ptr, ptr %i.nf, align 8
  %i.nh = call noundef i64 %i.ng(ptr noundef nonnull align 8 dereferenceable(8) %i.nd, i8 noundef signext 88, ptr noundef nonnull %.081, ptr noundef nonnull @.str.12, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %5, i32 noundef 0) #5, !inline_history !8
  %i.ni = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8            ; 3 uses
  %.not.i206 = icmp eq ptr %i.nj, null
  br i1 %.not.i206, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit208, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i207

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i207: ; preds = %bb.bp
  %i.nk = load ptr, ptr %i.nj, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.nm = load ptr, ptr %i.nl, align 8
  call void %i.nm(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.nj) #5, !inline_history !9
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit208

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit208: ; preds = %bb.bp, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i207
  %i.nn = load ptr, ptr %5, align 16              ; 3 uses
  %.not.i206.1 = icmp eq ptr %i.nn, null
  br i1 %.not.i206.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit208.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i207.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i207.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit208
  %i.no = load ptr, ptr %i.nn, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nq = load ptr, ptr %i.np, align 8
  call void %i.nq(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.nn) #5, !inline_history !9
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit208.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit208.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i207.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit208
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  %i.nr = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  store ptr %.081, ptr %i.nr, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %22, i64 16
  store ptr @.str.12, ptr %i.ns, align 8
  %i.nt = getelementptr inbounds nuw i8, ptr %22, i64 24
  store i64 %i.nh, ptr %i.nt, align 8
  store ptr %i.nr, ptr %22, align 8
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit208.1, %bb.bo
  %i.nu = load ptr, ptr %0, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 63472
  %i.nw = load ptr, ptr %i.nv, align 8
  call void @_ZN2v88internal27OptimizingCompileDispatcher25InstallOptimizedFunctionsEv(ptr noundef nonnull align 8 dereferenceable(105) %i.nw) #5
  %i.nx = load ptr, ptr %22, align 8
  %.not.i209 = icmp eq ptr %i.nx, null
  br i1 %.not.i209, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit211, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ny = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.nz = load ptr, ptr %i.ny, align 8
  %i.oa = load atomic volatile i8, ptr %i.nz monotonic, align 1
  %.not1.i210 = icmp eq i8 %i.oa, 0
  br i1 %.not1.i210, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit211, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ob = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #5 ; 2 uses
  %i.oc = load ptr, ptr %i.ny, align 8
  %i.od = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.oe = load ptr, ptr %i.od, align 8
  %i.of = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.og = load i64, ptr %i.of, align 8
  %i.oh = load ptr, ptr %i.ob, align 8
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 40
  %i.oj = load ptr, ptr %i.oi, align 8
  call void %i.oj(ptr noundef nonnull align 8 dereferenceable(8) %i.ob, ptr noundef %i.oc, ptr noundef %i.oe, i64 noundef %i.og) #5, !inline_history !10
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit211

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit211: ; preds = %bb.bq, %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #5
  br label %bb.bt

bb.bt:                                            ; preds = %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit211, %bb.bl
  %i.ok = and i32 %i.ag, 8
  %.not258 = icmp eq i32 %i.ok, 0
  br i1 %.not258, label %bb.cb, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ol = load atomic volatile i64, ptr @_ZZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelEE28trace_event_unique_atomic369 acquire, align 8 ; 2 uses
  %i.om = inttoptr i64 %i.ol to ptr
  %.not112 = icmp eq i64 %i.ol, 0
  br i1 %.not112, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.on = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #5 ; 2 uses
  %i.oo = load ptr, ptr %i.on, align 8
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %i.oq = load ptr, ptr %i.op, align 8
  %i.or = call noundef ptr %i.oq(ptr noundef nonnull align 8 dereferenceable(8) %i.on, ptr noundef nonnull @.str.11) #5 ; 2 uses
  %i.os = ptrtoint ptr %i.or to i64
  store atomic volatile i64 %i.os, ptr @_ZZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelEE28trace_event_unique_atomic369 release, align 8
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.079 = phi ptr [ %i.om, %bb.bu ], [ %i.or, %bb.bv ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #5
  store ptr null, ptr %23, align 8
  %i.ot = load atomic volatile i8, ptr %.079 monotonic, align 1
  %i.ou = and i8 %i.ot, 5
  %.not113 = icmp eq i8 %i.ou, 0
  br i1 %.not113, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.ov = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #5 ; 2 uses
  %i.ow = load ptr, ptr %i.ov, align 8
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 24
  %i.oy = load ptr, ptr %i.ox, align 8
  %i.oz = call noundef i64 %i.oy(ptr noundef nonnull align 8 dereferenceable(8) %i.ov, i8 noundef signext 88, ptr noundef nonnull %.079, ptr noundef nonnull @.str.13, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %4, i32 noundef 0) #5, !inline_history !8
  %i.pa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.pb = load ptr, ptr %i.pa, align 8            ; 3 uses
  %.not.i212 = icmp eq ptr %i.pb, null
  br i1 %.not.i212, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit214, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i213

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i213: ; preds = %bb.bx
  %i.pc = load ptr, ptr %i.pb, align 8
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pe = load ptr, ptr %i.pd, align 8
  call void %i.pe(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.pb) #5, !inline_history !9
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit214

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit214: ; preds = %bb.bx, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i213
  %i.pf = load ptr, ptr %4, align 16              ; 3 uses
  %.not.i212.1 = icmp eq ptr %i.pf, null
  br i1 %.not.i212.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit214.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i213.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i213.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit214
  %i.pg = load ptr, ptr %i.pf, align 8
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  %i.pi = load ptr, ptr %i.ph, align 8
  call void %i.pi(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.pf) #5, !inline_history !9
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit214.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit214.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i213.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit214
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  %i.pj = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  store ptr %.079, ptr %i.pj, align 8
  %i.pk = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr @.str.13, ptr %i.pk, align 8
  %i.pl = getelementptr inbounds nuw i8, ptr %23, i64 24
  store i64 %i.oz, ptr %i.pl, align 8
  store ptr %i.pj, ptr %23, align 8
  br label %bb.by

bb.by:                                            ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit214.1, %bb.bw
  %i.pm = load ptr, ptr %0, align 8
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 59552
  %i.po = load ptr, ptr %i.pn, align 8
  call void @_ZN2v88internal8baseline21BaselineBatchCompiler12InstallBatchEv(ptr noundef nonnull align 8 dereferenceable(40) %i.po) #5
  %i.pp = load ptr, ptr %23, align 8
  %.not.i215 = icmp eq ptr %i.pp, null
  br i1 %.not.i215, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit217, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.pq = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.pr = load ptr, ptr %i.pq, align 8
  %i.ps = load atomic volatile i8, ptr %i.pr monotonic, align 1
  %.not1.i216 = icmp eq i8 %i.ps, 0
  br i1 %.not1.i216, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit217, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.pt = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #5 ; 2 uses
  %i.pu = load ptr, ptr %i.pq, align 8
  %i.pv = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.pw = load ptr, ptr %i.pv, align 8
  %i.px = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.py = load i64, ptr %i.px, align 8
  %i.pz = load ptr, ptr %i.pt, align 8
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 40
  %i.qb = load ptr, ptr %i.qa, align 8
  call void %i.qb(ptr noundef nonnull align 8 dereferenceable(8) %i.pt, ptr noundef %i.pu, ptr noundef %i.pw, i64 noundef %i.py) #5, !inline_history !10
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit217

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit217: ; preds = %bb.by, %bb.bz, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #5
  br label %bb.cb

bb.cb:                                            ; preds = %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit217, %bb.bt
  %i.qc = and i32 %i.ag, 512
  %.not259 = icmp eq i32 %i.qc, 0
  br i1 %.not259, label %bb.cj, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.qd = load atomic volatile i64, ptr @_ZZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelEE28trace_event_unique_atomic377 acquire, align 8 ; 2 uses
  %i.qe = inttoptr i64 %i.qd to ptr
  %.not114 = icmp eq i64 %i.qd, 0
  br i1 %.not114, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.qf = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #5 ; 2 uses
  %i.qg = load ptr, ptr %i.qf, align 8
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 16
  %i.qi = load ptr, ptr %i.qh, align 8
  %i.qj = call noundef ptr %i.qi(ptr noundef nonnull align 8 dereferenceable(8) %i.qf, ptr noundef nonnull @.str.11) #5 ; 2 uses
  %i.qk = ptrtoint ptr %i.qj to i64
  store atomic volatile i64 %i.qk, ptr @_ZZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelEE28trace_event_unique_atomic377 release, align 8
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.077 = phi ptr [ %i.qe, %bb.cc ], [ %i.qj, %bb.cd ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #5
  store ptr null, ptr %24, align 8
  %i.ql = load atomic volatile i8, ptr %.077 monotonic, align 1
  %i.qm = and i8 %i.ql, 5
  %.not115 = icmp eq i8 %i.qm, 0
  br i1 %.not115, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.qn = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #5 ; 2 uses
  %i.qo = load ptr, ptr %i.qn, align 8
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 24
  %i.qq = load ptr, ptr %i.qp, align 8
  %i.qr = call noundef i64 %i.qq(ptr noundef nonnull align 8 dereferenceable(8) %i.qn, i8 noundef signext 88, ptr noundef nonnull %.077, ptr noundef nonnull @.str.14, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %3, i32 noundef 0) #5, !inline_history !8
  %i.qs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.qt = load ptr, ptr %i.qs, align 8            ; 3 uses
  %.not.i218 = icmp eq ptr %i.qt, null
  br i1 %.not.i218, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit220, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i219

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i219: ; preds = %bb.cf
  %i.qu = load ptr, ptr %i.qt, align 8
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %i.qw = load ptr, ptr %i.qv, align 8
  call void %i.qw(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.qt) #5, !inline_history !9
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit220

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit220: ; preds = %bb.cf, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i219
  %i.qx = load ptr, ptr %3, align 16              ; 3 uses
  %.not.i218.1 = icmp eq ptr %i.qx, null
  br i1 %.not.i218.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit220.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i219.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i219.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit220
  %i.qy = load ptr, ptr %i.qx, align 8
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.ra = load ptr, ptr %i.qz, align 8
  call void %i.ra(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.qx) #5, !inline_history !9
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit220.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit220.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i219.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit220
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.rb = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  store ptr %.077, ptr %i.rb, align 8
  %i.rc = getelementptr inbounds nuw i8, ptr %24, i64 16
  store ptr @.str.14, ptr %i.rc, align 8
  %i.rd = getelementptr inbounds nuw i8, ptr %24, i64 24
  store i64 %i.qr, ptr %i.rd, align 8
  store ptr %i.rb, ptr %24, align 8
  br label %bb.cg

bb.cg:                                            ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit220.1, %bb.ce
  %i.re = load ptr, ptr %0, align 8
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 59560
  %i.rg = load ptr, ptr %i.rf, align 8
  call void @_ZN2v88internal6maglev26MaglevConcurrentDispatcher20FinalizeFinishedJobsEv(ptr noundef nonnull align 8 dereferenceable(136) %i.rg) #5
  %i.rh = load ptr, ptr %24, align 8
  %.not.i221 = icmp eq ptr %i.rh, null
  br i1 %.not.i221, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit223, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ri = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.rj = load ptr, ptr %i.ri, align 8
  %i.rk = load atomic volatile i8, ptr %i.rj monotonic, align 1
  %.not1.i222 = icmp eq i8 %i.rk, 0
  br i1 %.not1.i222, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit223, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.rl = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #5 ; 2 uses
  %i.rm = load ptr, ptr %i.ri, align 8
  %i.rn = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.ro = load ptr, ptr %i.rn, align 8
  %i.rp = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.rq = load i64, ptr %i.rp, align 8
  %i.rr = load ptr, ptr %i.rl, align 8
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 40
  %i.rt = load ptr, ptr %i.rs, align 8
  call void %i.rt(ptr noundef nonnull align 8 dereferenceable(8) %i.rl, ptr noundef %i.rm, ptr noundef %i.ro, i64 noundef %i.rq) #5, !inline_history !10
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit223

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit223: ; preds = %bb.cg, %bb.ch, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #5
  br label %bb.cj

bb.cj:                                            ; preds = %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit223, %bb.cb
  %31 = and i32 %i.ag, 16
  %.not260 = icmp eq i32 %31, 0
  br i1 %.not260, label %bb.cr, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ru = load atomic volatile i64, ptr @_ZZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelEE28trace_event_unique_atomic383 acquire, align 8 ; 2 uses
  %i.rv = inttoptr i64 %i.ru to ptr
  %.not116 = icmp eq i64 %i.ru, 0
  br i1 %.not116, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.rw = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #5 ; 2 uses
  %i.rx = load ptr, ptr %i.rw, align 8
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 16
  %i.rz = load ptr, ptr %i.ry, align 8
  %i.sa = call noundef ptr %i.rz(ptr noundef nonnull align 8 dereferenceable(8) %i.rw, ptr noundef nonnull @.str) #5 ; 2 uses
  %i.sb = ptrtoint ptr %i.sa to i64
  store atomic volatile i64 %i.sb, ptr @_ZZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelEE28trace_event_unique_atomic383 release, align 8
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.075 = phi ptr [ %i.rv, %bb.ck ], [ %i.sa, %bb.cl ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #5
  store ptr null, ptr %25, align 8
  %i.sc = load atomic volatile i8, ptr %.075 monotonic, align 1
  %i.sd = and i8 %i.sc, 5
  %.not117 = icmp eq i8 %i.sd, 0
  br i1 %.not117, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.se = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #5 ; 2 uses
  %i.sf = load ptr, ptr %i.se, align 8
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 24
  %i.sh = load ptr, ptr %i.sg, align 8
  %i.si = call noundef i64 %i.sh(ptr noundef nonnull align 8 dereferenceable(8) %i.se, i8 noundef signext 88, ptr noundef nonnull %.075, ptr noundef nonnull @.str.15, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %2, i32 noundef 0) #5, !inline_history !8
  %i.sj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.sk = load ptr, ptr %i.sj, align 8            ; 3 uses
  %.not.i224 = icmp eq ptr %i.sk, null
  br i1 %.not.i224, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit226, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i225

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i225: ; preds = %bb.cn
  %i.sl = load ptr, ptr %i.sk, align 8
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  %i.sn = load ptr, ptr %i.sm, align 8
  call void %i.sn(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.sk) #5, !inline_history !9
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit226

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit226: ; preds = %bb.cn, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i225
  %i.so = load ptr, ptr %2, align 16              ; 3 uses
  %.not.i224.1 = icmp eq ptr %i.so, null
  br i1 %.not.i224.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit226.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i225.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i225.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit226
  %i.sp = load ptr, ptr %i.so, align 8
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  %i.sr = load ptr, ptr %i.sq, align 8
  call void %i.sr(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.so) #5, !inline_history !9
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit226.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit226.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i225.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit226
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  %i.ss = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  store ptr %.075, ptr %i.ss, align 8
  %i.st = getelementptr inbounds nuw i8, ptr %25, i64 16
  store ptr @.str.15, ptr %i.st, align 8
  %i.su = getelementptr inbounds nuw i8, ptr %25, i64 24
  store i64 %i.si, ptr %i.su, align 8
  store ptr %i.ss, ptr %25, align 8
  br label %bb.co

bb.co:                                            ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit226.1, %bb.cm
  %i.sv = load ptr, ptr %0, align 8
  call void @_ZN2v88internal7Isolate27InvokeApiInterruptCallbacksEv(ptr noundef nonnull align 8 dereferenceable(64320) %i.sv) #5
  %i.sw = load ptr, ptr %25, align 8
  %.not.i227 = icmp eq ptr %i.sw, null
  br i1 %.not.i227, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit229, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.sx = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.sy = load ptr, ptr %i.sx, align 8
  %i.sz = load atomic volatile i8, ptr %i.sy monotonic, align 1
  %.not1.i228 = icmp eq i8 %i.sz, 0
  br i1 %.not1.i228, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit229, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ta = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #5 ; 2 uses
  %i.tb = load ptr, ptr %i.sx, align 8
  %i.tc = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.td = load ptr, ptr %i.tc, align 8
  %i.te = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.tf = load i64, ptr %i.te, align 8
  %i.tg = load ptr, ptr %i.ta, align 8
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 40
  %i.ti = load ptr, ptr %i.th, align 8
  call void %i.ti(ptr noundef nonnull align 8 dereferenceable(8) %i.ta, ptr noundef %i.tb, ptr noundef %i.td, i64 noundef %i.tf) #5, !inline_history !10
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit229

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit229: ; preds = %bb.co, %bb.cp, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #5
  br label %bb.cr

bb.cr:                                            ; preds = %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit229, %bb.cj
  %i.tj = load ptr, ptr %0, align 8
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 58656
  %i.tl = load ptr, ptr %i.tk, align 8            ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 7944
  %i.tn = load atomic ptr, ptr %i.tm acquire, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.tn, null
  br i1 %.not.i.i, label %bb.cs, label %_ZN2v88internal12StatsCounter9IncrementEi.exit, !prof !12

bb.cs:                                            ; preds = %bb.cr
  %i.to = getelementptr inbounds nuw i8, ptr %i.tl, i64 7928
  %i.tp = call noundef ptr @_ZN2v88internal12StatsCounter22SetupPtrFromStatsTableEv(ptr noundef nonnull align 8 dereferenceable(24) %i.to) #5
  br label %_ZN2v88internal12StatsCounter9IncrementEi.exit

_ZN2v88internal12StatsCounter9IncrementEi.exit:   ; preds = %bb.cr, %bb.cs
  %.0.i.i = phi ptr [ %i.tp, %bb.cs ], [ %i.tn, %bb.cr ]
  %i.tq = atomicrmw add ptr %.0.i.i, i32 1 monotonic, align 4 ; 0 uses
  %i.tr = load ptr, ptr %0, align 8
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 648
  %i.tt = load i64, ptr %i.ts, align 8
  br label %bb.ct

bb.ct:                                            ; preds = %_ZN2v88internal12StatsCounter9IncrementEi.exit, %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit
  %.sroa.0245.0 = phi i64 [ %i.ca, %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit ], [ %i.tt, %_ZN2v88internal12StatsCounter9IncrementEi.exit ]
  %i.tu = load ptr, ptr %14, align 8
  %.not.i230 = icmp eq ptr %i.tu, null
  br i1 %.not.i230, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit232, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.tv = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.tw = load ptr, ptr %i.tv, align 8
  %i.tx = load atomic volatile i8, ptr %i.tw monotonic, align 1
  %.not1.i231 = icmp eq i8 %i.tx, 0
  br i1 %.not1.i231, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit232, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ty = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #5 ; 2 uses
  %i.tz = load ptr, ptr %i.tv, align 8
  %i.ua = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ub = load ptr, ptr %i.ua, align 8
  %i.uc = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ud = load i64, ptr %i.uc, align 8
  %i.ue = load ptr, ptr %i.ty, align 8
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 40
  %i.ug = load ptr, ptr %i.uf, align 8
  call void %i.ug(ptr noundef nonnull align 8 dereferenceable(8) %i.ty, ptr noundef %i.tz, ptr noundef %i.ub, i64 noundef %i.ud) #5, !inline_history !10
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit232

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit232: ; preds = %bb.ct, %bb.cu, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #5
  ret i64 %.sroa.0245.0
}

declare noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() local_unnamed_addr #3

declare i64 @_ZN2v88internal7Isolate18TerminateExecutionEv(ptr noundef nonnull align 8 dereferenceable(64320)) local_unnamed_addr #3

declare void @_ZN2v88internal4Heap15HandleGCRequestEv(ptr noundef nonnull align 8 dereferenceable(2992)) local_unnamed_addr #3

declare void @_ZN2v88internal4Heap34StartIncrementalMarkingOnInterruptEv(ptr noundef nonnull align 8 dereferenceable(2992)) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal7Isolate22main_thread_local_heapEv(ptr noundef nonnull align 8 dereferenceable(64320)) local_unnamed_addr #3

declare void @_ZN2v88internal12BackingStore29UpdateSharedWasmMemoryObjectsEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal4wasm13GetWasmEngineEv() local_unnamed_addr #3

declare void @_ZN2v88internal4wasm10WasmEngine29LogOutstandingCodesForIsolateEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8488), ptr noundef) local_unnamed_addr #3

declare void @_ZN2v88internal4wasm10WasmEngine28ReportLiveCodeFromStackForGCEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8488), ptr noundef) local_unnamed_addr #3

declare void @_ZN2v88internal4Heap26DeoptMarkedAllocationSitesEv(ptr noundef nonnull align 8 dereferenceable(2992)) local_unnamed_addr #3

declare void @_ZN2v88internal27OptimizingCompileDispatcher25InstallOptimizedFunctionsEv(ptr noundef nonnull align 8 dereferenceable(105)) local_unnamed_addr #3

declare void @_ZN2v88internal8baseline21BaselineBatchCompiler12InstallBatchEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare void @_ZN2v88internal6maglev26MaglevConcurrentDispatcher20FinalizeFinishedJobsEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #3

declare void @_ZN2v88internal7Isolate27InvokeApiInterruptCallbacksEv(ptr noundef nonnull align 8 dereferenceable(64320)) local_unnamed_addr #3

declare void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @_ZN2v88internal9LocalHeap17SafepointSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944)) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal12StatsCounter22SetupPtrFromStatsTableEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

end_hunk_1
