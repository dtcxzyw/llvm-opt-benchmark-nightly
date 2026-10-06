Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/create_thread_identity?download=true
inline.NumInlined: 40
inline.NumDeleted: 23
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$__clang_call_terminate = comdat any

@_ZN4absl12lts_2026052624synchronization_internalL24thread_identity_freelistE = internal unnamed_addr global ptr null, align 8
@_ZN4absl12lts_2026052624synchronization_internalL13freelist_lockE = internal global { { i32 } } zeroinitializer, align 4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052624synchronization_internal25OneTimeInitThreadIdentityEPNS0_13base_internal14ThreadIdentityE(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @AbslInternalPerThreadSemInit_lts_20260526(ptr noundef %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  store atomic i32 0, ptr %i.a monotonic, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 396
  store atomic i32 0, ptr %i.b monotonic, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400
  store atomic i8 0, ptr %i.c monotonic, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.d, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4absl12lts_2026052624synchronization_internal20CreateThreadIdentityEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN4absl12lts_2026052624synchronization_internalL13freelist_lockE monotonic, align 4 ; 10 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.a, 2
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %.thread.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv() ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.d, label %.thread13.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = or disjoint i32 %i.a, 1
  %i.g = cmpxchg ptr @_ZN4absl12lts_2026052624synchronization_internalL13freelist_lockE, i32 %i.a, i32 %i.f acquire monotonic, align 4
  %i.h = extractvalue { i32, i1 } %i.g, 0
  br label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i.i

.thread13.i.i.i.i.i.i:                            ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 76 ; 2 uses
  %i.j = load atomic i32, ptr %i.i monotonic, align 4
  %i.k = add nsw i32 %i.j, 1
  store atomic i32 %i.k, ptr %i.i monotonic, align 4
  %i.l = or i32 %i.a, 5
  %i.m = cmpxchg ptr @_ZN4absl12lts_2026052624synchronization_internalL13freelist_lockE, i32 %i.a, i32 %i.l acquire monotonic, align 4 ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.n, label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i.i, label %bb.e

.thread.i.i.i.i.i.i:                              ; preds = %bb.b
  %i.o = or disjoint i32 %i.a, 1
  %i.p = cmpxchg ptr @_ZN4absl12lts_2026052624synchronization_internalL13freelist_lockE, i32 %i.a, i32 %i.o acquire monotonic, align 4
  %i.q = extractvalue { i32, i1 } %i.p, 0
  br label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i.i

bb.e:                                             ; preds = %.thread13.i.i.i.i.i.i
  %i.r = extractvalue { i32, i1 } %i.m, 0
  %i.s = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv()
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 76 ; 2 uses
  %i.u = load atomic i32, ptr %i.t monotonic, align 4
  %i.v = add nsw i32 %i.u, -1
  store atomic i32 %i.v, ptr %i.t monotonic, align 4
  br label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i.i

_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i.i: ; preds = %bb.e, %.thread.i.i.i.i.i.i, %.thread13.i.i.i.i.i.i, %bb.d, %bb.a
  %.04.i.i.i.i.i.i = phi i32 [ %i.a, %bb.a ], [ %i.r, %bb.e ], [ %i.h, %bb.d ], [ %i.a, %.thread13.i.i.i.i.i.i ], [ %i.q, %.thread.i.i.i.i.i.i ]
  %i.w = and i32 %.04.i.i.i.i.i.i, 1
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN4absl12lts_2026052613base_internal14SpinLockHolderC2ERNS1_8SpinLockE.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i.i
  tail call void @_ZN4absl12lts_2026052613base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl12lts_2026052624synchronization_internalL13freelist_lockE) #6
  br label %_ZN4absl12lts_2026052613base_internal14SpinLockHolderC2ERNS1_8SpinLockE.exit.i

_ZN4absl12lts_2026052613base_internal14SpinLockHolderC2ERNS1_8SpinLockE.exit.i: ; preds = %bb.f, %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i.i
  %i.y = load ptr, ptr @_ZN4absl12lts_2026052624synchronization_internalL24thread_identity_freelistE, align 8, !tbaa !11 ; 3 uses
  %.not.i = icmp eq ptr %i.y, null                ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2026052613base_internal14SpinLockHolderC2ERNS1_8SpinLockE.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 408
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !32
  store ptr %i.aa, ptr @_ZN4absl12lts_2026052624synchronization_internalL24thread_identity_freelistE, align 8, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4absl12lts_2026052613base_internal14SpinLockHolderC2ERNS1_8SpinLockE.exit.i
  %i.ab = load atomic i32, ptr @_ZN4absl12lts_2026052624synchronization_internalL13freelist_lockE monotonic, align 4
  %i.ac = and i32 %i.ab, 2
  %i.ad = atomicrmw xchg ptr @_ZN4absl12lts_2026052624synchronization_internalL13freelist_lockE, i32 %i.ac release, align 4 ; 3 uses
  %i.ae = and i32 %i.ad, 4
  %.not.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = invoke noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv()
          to label %.noexc.i.i unwind label %bb.l

.noexc.i.i:                                       ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 76 ; 2 uses
  %i.ah = load atomic i32, ptr %i.ag monotonic, align 4
  %i.ai = add nsw i32 %i.ah, -1
  store atomic i32 %i.ai, ptr %i.ag monotonic, align 4
  br label %bb.j

bb.j:                                             ; preds = %.noexc.i.i, %bb.h
  %.not4.i.i.i = icmp ult i32 %i.ad, 8
  br i1 %.not4.i.i.i, label %_ZNSt10lock_guardIN4absl12lts_2026052613base_internal8SpinLockEED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4absl12lts_2026052613base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl12lts_2026052624synchronization_internalL13freelist_lockE, i32 noundef %i.ad) #6
          to label %_ZNSt10lock_guardIN4absl12lts_2026052613base_internal8SpinLockEED2Ev.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #7
  unreachable

_ZNSt10lock_guardIN4absl12lts_2026052613base_internal8SpinLockEED2Ev.exit.i: ; preds = %bb.k, %bb.j
  br i1 %.not.i, label %bb.m, label %_ZN4absl12lts_2026052624synchronization_internalL17NewThreadIdentityEv.exit

bb.m:                                             ; preds = %_ZNSt10lock_guardIN4absl12lts_2026052613base_internal8SpinLockEED2Ev.exit.i
  %i.al = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc5AllocEm(i64 noundef 671)
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = add nsw i64 %i.am, 255
  %i.ao = and i64 %i.an, -256
  %i.ap = inttoptr i64 %i.ao to ptr               ; 5 uses
  tail call void @AbslInternalPerThreadSemInit_lts_20260526(ptr noundef %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 392
  store atomic i32 0, ptr %i.aq monotonic, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 396
  store atomic i32 0, ptr %i.ar monotonic, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 400
  store atomic i8 0, ptr %i.as monotonic, align 16
  br label %_ZN4absl12lts_2026052624synchronization_internalL17NewThreadIdentityEv.exit

_ZN4absl12lts_2026052624synchronization_internalL17NewThreadIdentityEv.exit: ; preds = %_ZNSt10lock_guardIN4absl12lts_2026052613base_internal8SpinLockEED2Ev.exit.i, %bb.m
  %.1.i = phi ptr [ %i.ap, %bb.m ], [ %i.y, %_ZNSt10lock_guardIN4absl12lts_2026052613base_internal8SpinLockEED2Ev.exit.i ] ; 19 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.1.i, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %.1.i, i64 24
  store i32 0, ptr %i.au, align 8, !tbaa !35
  %i.av = getelementptr inbounds nuw i8, ptr %.1.i, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.1.i, i8 0, i64 17, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  store atomic i32 0, ptr %i.av monotonic, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %.1.i, i64 17
  store <4 x i8> zeroinitializer, ptr %i.aw, align 1, !tbaa !36
  %i.ax = getelementptr inbounds nuw i8, ptr %.1.i, i64 56
  store ptr null, ptr %i.ax, align 8, !tbaa !37
  %i.ay = getelementptr inbounds nuw i8, ptr %.1.i, i64 64
  store atomic ptr null, ptr %i.ay monotonic, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.1.i, i64 72
  store i32 0, ptr %i.az, align 8, !tbaa !38
  %i.ba = getelementptr inbounds nuw i8, ptr %.1.i, i64 76
  store atomic i32 0, ptr %i.ba monotonic, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.1.i, i64 80
  %i.bc = getelementptr inbounds nuw i8, ptr %.1.i, i64 404
  store i32 0, ptr %i.bc, align 4, !tbaa !39
  %i.bd = getelementptr inbounds nuw i8, ptr %.1.i, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bb, i8 0, i64 9, i1 false)
  store atomic i8 0, ptr %i.bd monotonic, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %.1.i, i64 384
  store ptr null, ptr %i.be, align 8, !tbaa !40
  %i.bf = getelementptr inbounds nuw i8, ptr %.1.i, i64 392
  store atomic i32 0, ptr %i.bf monotonic, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.1.i, i64 396
  store atomic i32 0, ptr %i.bg monotonic, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %.1.i, i64 400
  store atomic i8 0, ptr %i.bh monotonic, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.i, i64 408
  store ptr null, ptr %i.bi, align 8, !tbaa !32
  tail call void @_ZN4absl12lts_2026052613base_internal24SetCurrentThreadIdentityEPNS1_14ThreadIdentityEPFvPvE(ptr noundef nonnull %.1.i, ptr noundef nonnull @_ZN4absl12lts_2026052624synchronization_internalL21ReclaimThreadIdentityEPv)
  ret ptr %.1.i
}

declare void @_ZN4absl12lts_2026052613base_internal24SetCurrentThreadIdentityEPNS1_14ThreadIdentityEPFvPvE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052624synchronization_internalL21ReclaimThreadIdentityEPv(ptr noundef initializes((408, 416)) %0) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc4FreeEPv(ptr noundef nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4absl12lts_2026052613base_internal26ClearCurrentThreadIdentityEv()
  %i.c = load atomic i32, ptr @_ZN4absl12lts_2026052624synchronization_internalL13freelist_lockE monotonic, align 4 ; 10 uses
  %i.d = and i32 %i.c, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.e = and i32 %i.c, 2
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %.thread.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.g = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv() ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.not.i.i.i.i.i, label %bb.f, label %.thread13.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.h = or disjoint i32 %i.c, 1
  %i.i = cmpxchg ptr @_ZN4absl12lts_2026052624synchronization_internalL13freelist_lockE, i32 %i.c, i32 %i.h acquire monotonic, align 4
  %i.j = extractvalue { i32, i1 } %i.i, 0
  br label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i

.thread13.i.i.i.i.i:                              ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 76 ; 2 uses
  %i.l = load atomic i32, ptr %i.k monotonic, align 4
  %i.m = add nsw i32 %i.l, 1
  store atomic i32 %i.m, ptr %i.k monotonic, align 4
  %i.n = or i32 %i.c, 5
  %i.o = cmpxchg ptr @_ZN4absl12lts_2026052624synchronization_internalL13freelist_lockE, i32 %i.c, i32 %i.n acquire monotonic, align 4 ; 2 uses
  %i.p = extractvalue { i32, i1 } %i.o, 1
  br i1 %i.p, label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i, label %bb.g

.thread.i.i.i.i.i:                                ; preds = %bb.d
  %i.q = or disjoint i32 %i.c, 1
  %i.r = cmpxchg ptr @_ZN4absl12lts_2026052624synchronization_internalL13freelist_lockE, i32 %i.c, i32 %i.q acquire monotonic, align 4
  %i.s = extractvalue { i32, i1 } %i.r, 0
  br label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i

bb.g:                                             ; preds = %.thread13.i.i.i.i.i
  %i.t = extractvalue { i32, i1 } %i.o, 0
  %i.u = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv()
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 76 ; 2 uses
  %i.w = load atomic i32, ptr %i.v monotonic, align 4
  %i.x = add nsw i32 %i.w, -1
  store atomic i32 %i.x, ptr %i.v monotonic, align 4
  br label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i

_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i: ; preds = %bb.g, %.thread.i.i.i.i.i, %.thread13.i.i.i.i.i, %bb.f, %bb.c
  %.04.i.i.i.i.i = phi i32 [ %i.c, %bb.c ], [ %i.t, %bb.g ], [ %i.j, %bb.f ], [ %i.c, %.thread13.i.i.i.i.i ], [ %i.s, %.thread.i.i.i.i.i ]
  %i.y = and i32 %.04.i.i.i.i.i, 1
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_ZN4absl12lts_2026052613base_internal14SpinLockHolderC2ERNS1_8SpinLockE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i
  tail call void @_ZN4absl12lts_2026052613base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl12lts_2026052624synchronization_internalL13freelist_lockE) #6
  br label %_ZN4absl12lts_2026052613base_internal14SpinLockHolderC2ERNS1_8SpinLockE.exit

_ZN4absl12lts_2026052613base_internal14SpinLockHolderC2ERNS1_8SpinLockE.exit: ; preds = %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i, %bb.h
  %i.aa = load ptr, ptr @_ZN4absl12lts_2026052624synchronization_internalL24thread_identity_freelistE, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 408
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !32
  store ptr %0, ptr @_ZN4absl12lts_2026052624synchronization_internalL24thread_identity_freelistE, align 8, !tbaa !11
  %i.ac = load atomic i32, ptr @_ZN4absl12lts_2026052624synchronization_internalL13freelist_lockE monotonic, align 4
  %i.ad = and i32 %i.ac, 2
  %i.ae = atomicrmw xchg ptr @_ZN4absl12lts_2026052624synchronization_internalL13freelist_lockE, i32 %i.ad release, align 4 ; 3 uses
  %i.af = and i32 %i.ae, 4
  %.not.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2026052613base_internal14SpinLockHolderC2ERNS1_8SpinLockE.exit
  %i.ag = invoke noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv()
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 76 ; 2 uses
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 4
  %i.aj = add nsw i32 %i.ai, -1
  store atomic i32 %i.aj, ptr %i.ah monotonic, align 4
  br label %bb.j

bb.j:                                             ; preds = %.noexc.i, %_ZN4absl12lts_2026052613base_internal14SpinLockHolderC2ERNS1_8SpinLockE.exit
  %.not4.i.i = icmp ult i32 %i.ae, 8
  br i1 %.not4.i.i, label %_ZNSt10lock_guardIN4absl12lts_2026052613base_internal8SpinLockEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4absl12lts_2026052613base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl12lts_2026052624synchronization_internalL13freelist_lockE, i32 noundef %i.ae) #6
          to label %_ZNSt10lock_guardIN4absl12lts_2026052613base_internal8SpinLockEED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #7
  unreachable

_ZNSt10lock_guardIN4absl12lts_2026052613base_internal8SpinLockEED2Ev.exit: ; preds = %bb.j, %bb.k
  ret void
}

declare void @AbslInternalPerThreadSemInit_lts_20260526(ptr noundef) local_unnamed_addr #1

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

declare noundef ptr @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc5AllocEm(i64 noundef) local_unnamed_addr #1 section "malloc_hook"

; Function Attrs: cold
declare void @_ZN4absl12lts_2026052613base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv() local_unnamed_addr #1

; Function Attrs: cold
declare void @_ZN4absl12lts_2026052613base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) local_unnamed_addr #4

declare void @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc4FreeEPv(ptr noundef) local_unnamed_addr #1 section "malloc_hook"

declare void @_ZN4absl12lts_2026052613base_internal26ClearCurrentThreadIdentityEv() local_unnamed_addr #1

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
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTSN4absl12lts_2026052613base_internal14ThreadIdentityE", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"p1 _ZTSN4absl12lts_2026052613base_internal14PerThreadSynchE", !9, i64 0}
!13 = !{!"bool", !5, i64 0}
!14 = !{!"_ZTSN4absl12lts_2026052613base_internal14PerThreadSynch5StateE", !5, i64 0}
!15 = !{!"_ZTSSt6atomicIN4absl12lts_2026052613base_internal14PerThreadSynch5StateEE", !14, i64 0}
!16 = !{!"p1 _ZTSN4absl12lts_2026052615SynchWaitParamsE", !9, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = !{!"p1 _ZTSN4absl12lts_2026052614SynchLocksHeldE", !9, i64 0}
!19 = !{!"_ZTSN4absl12lts_2026052613base_internal14PerThreadSynchE", !12, i64 0, !12, i64 8, !13, i64 16, !13, i64 17, !13, i64 18, !13, i64 19, !13, i64 20, !6, i64 24, !15, i64 28, !16, i64 32, !17, i64 40, !17, i64 48, !18, i64 56}
!20 = !{!"_ZTSSt13__atomic_baseIPvE", !9, i64 0}
!21 = !{!"_ZTSSt6atomicIPvE", !20, i64 0}
!22 = !{!"_ZTSSt13__atomic_baseIiE", !6, i64 0}
!23 = !{!"_ZTSSt6atomicIiE", !22, i64 0}
!24 = !{!"_ZTSN4absl12lts_2026052613base_internal14ThreadIdentity14SchedulerStateE", !21, i64 0, !6, i64 8, !23, i64 12, !6, i64 16, !6, i64 20, !13, i64 24}
!25 = !{!"_ZTSN4absl12lts_2026052613base_internal14ThreadIdentity9WaitStateE", !5, i64 0}
!26 = !{!"_ZTSSt6atomicIN4absl12lts_2026052613base_internal14ThreadIdentity9WaitStateEE", !25, i64 0}
!27 = !{!"_ZTSN4absl12lts_2026052613base_internal14ThreadIdentity11WaiterStateE", !5, i64 0}
!28 = !{!"p1 _ZTSSt6atomicIiE", !9, i64 0}
!29 = !{!"_ZTSSt13__atomic_baseIbE", !13, i64 0}
!30 = !{!"_ZTSSt6atomicIbE", !29, i64 0}
!31 = !{!"_ZTSN4absl12lts_2026052613base_internal14ThreadIdentityE", !19, i64 0, !24, i64 64, !26, i64 96, !5, i64 97, !27, i64 128, !28, i64 384, !23, i64 392, !23, i64 396, !30, i64 400, !6, i64 404, !10, i64 408}
!32 = !{!31, !10, i64 408}
!33 = !{!"_ZTSSt13__atomic_baseIjE", !6, i64 0}
!34 = !{!33, !6, i64 0}
!35 = !{!19, !6, i64 24}
!36 = !{!13, !13, i64 0}
!37 = !{!19, !18, i64 56}
!38 = !{!24, !6, i64 8}
!39 = !{!31, !6, i64 404}
!40 = !{!31, !28, i64 384}
!41 = !{!31, !18, i64 56}
end_hunk_0
