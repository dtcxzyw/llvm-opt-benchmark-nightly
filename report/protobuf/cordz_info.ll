inline.NumInlined: 137
inline.NumDeleted: 72
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::atomic.1" = type { %"struct.std::__atomic_base.0" }
%"struct.std::__atomic_base.0" = type { ptr }
%"struct.absl::lts_20250512::cord_internal::CordzStatistics" = type { i64, i64, i64, i64, %"struct.absl::lts_20250512::cord_internal::CordzStatistics::NodeCounts", i32, i32, %"class.absl::lts_20250512::cord_internal::CordzUpdateTracker" }
%"struct.absl::lts_20250512::cord_internal::CordzStatistics::NodeCounts" = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%"class.absl::lts_20250512::cord_internal::CordzUpdateTracker" = type { [25 x %"class.absl::lts_20250512::cord_internal::CordzUpdateTracker::Counter"] }
%"class.absl::lts_20250512::cord_internal::CordzUpdateTracker::Counter" = type { %"struct.std::atomic.2" }
%"struct.std::atomic.2" = type { %"struct.std::__atomic_base.3" }
%"struct.std::__atomic_base.3" = type { i64 }
%"class.absl::lts_20250512::cord_internal::(anonymous namespace)::CordRepAnalyzer" = type { ptr, %"struct.absl::lts_20250512::cord_internal::(anonymous namespace)::CordRepAnalyzer::MemoryUsage" }
%"struct.absl::lts_20250512::cord_internal::(anonymous namespace)::CordRepAnalyzer::MemoryUsage" = type { i64, double }

$_ZN4absl12lts_2025051213cord_internal18CordzUpdateTracker8LossyAddERKS2_ = comdat any

$__clang_call_terminate = comdat any

@_ZN4absl12lts_2025051213cord_internal9CordzInfo12global_list_E = global { { { i32 } }, %"struct.std::atomic.1" } { { { i32 } } { { i32 } { i32 2 } }, %"struct.std::atomic.1" zeroinitializer }, align 8
@_ZTVN4absl12lts_2025051213cord_internal9CordzInfoE = unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN4absl12lts_2025051213cord_internal9CordzInfoE, ptr @_ZN4absl12lts_2025051213cord_internal9CordzInfoD1Ev, ptr @_ZN4absl12lts_2025051213cord_internal9CordzInfoD0Ev] }, align 8
@_ZTIN4absl12lts_2025051213cord_internal9CordzInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4absl12lts_2025051213cord_internal9CordzInfoE, ptr @_ZTIN4absl12lts_2025051213cord_internal11CordzHandleE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4absl12lts_2025051213cord_internal9CordzInfoE = constant [47 x i8] c"N4absl12lts_2025051213cord_internal9CordzInfoE\00", align 1
@_ZTIN4absl12lts_2025051213cord_internal11CordzHandleE = external constant ptr

@_ZN4absl12lts_2025051213cord_internal9CordzInfoC1EPNS1_7CordRepEPKS2_NS1_18CordzUpdateTracker16MethodIdentifierEl = unnamed_addr alias void (ptr, ptr, ptr, i32, i64), ptr @_ZN4absl12lts_2025051213cord_internal9CordzInfoC2EPNS1_7CordRepEPKS2_NS1_18CordzUpdateTracker16MethodIdentifierEl
@_ZN4absl12lts_2025051213cord_internal9CordzInfoD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4absl12lts_2025051213cord_internal9CordzInfoD2Ev

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef ptr @_ZN4absl12lts_2025051213cord_internal9CordzInfo4HeadERKNS1_13CordzSnapshotE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051213cord_internal9CordzInfo12global_list_E, i64 8) acquire, align 8
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef ptr @_ZNK4absl12lts_2025051213cord_internal9CordzInfo4NextERKNS1_13CordzSnapshotE(ptr noundef nonnull align 8 captures(none) dereferenceable(1344) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load atomic ptr, ptr %i.a acquire, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051213cord_internal9CordzInfo9TrackCordERNS1_10InlineDataENS1_18CordzUpdateTracker16MethodIdentifierEl(ptr noundef nonnull align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(1344) ptr @_Znwm(i64 noundef 1344) #16 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  invoke void @_ZN4absl12lts_2025051213cord_internal9CordzInfoC1EPNS1_7CordRepEPKS2_NS1_18CordzUpdateTracker16MethodIdentifierEl(ptr noundef nonnull align 8 dereferenceable(1344) %i.a, ptr noundef %i.c, ptr noundef null, i32 noundef %1, i64 noundef %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = or i64 %i.d, 1
  store i64 %i.e, ptr %0, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 6 uses
  %i.h = load atomic i32, ptr %i.g monotonic, align 4 ; 3 uses
  %i.i = and i32 %i.h, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.i: ; preds = %bb.b
  %i.j = or disjoint i32 %i.h, 1
  %i.k = cmpxchg ptr %i.g, i32 %i.h, i32 %i.j acquire monotonic, align 4
  %i.l = extractvalue { i32, i1 } %i.k, 0
  %.pre.i.i.i.i = and i32 %i.l, 1
  %i.m = icmp eq i32 %.pre.i.i.i.i, 0
  br i1 %i.m, label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i.i: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.i, %bb.b
  tail call void @_ZN4absl12lts_2025051213base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) %i.g) #17
  br label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit.i

_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit.i: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i.i, %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.i
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load atomic ptr, ptr %i.o acquire, align 8 ; 3 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %.split.i, label %.split5.i

.split5.i:                                        ; preds = %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store atomic ptr %i.a, ptr %i.q release, align 8
  br label %.split.i

.split.i:                                         ; preds = %.split5.i, %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store atomic ptr %i.p, ptr %i.r release, align 8
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store atomic ptr %i.a, ptr %i.t release, align 8
  %i.u = load atomic i32, ptr %i.g monotonic, align 4
  %i.v = and i32 %i.u, 2
  %i.w = atomicrmw xchg ptr %i.g, i32 %i.v release, align 4 ; 2 uses
  %.not4.i.i.i = icmp ult i32 %i.w, 8
  br i1 %.not4.i.i.i, label %_ZN4absl12lts_2025051213cord_internal9CordzInfo5TrackEv.exit, label %bb.c

bb.c:                                             ; preds = %.split.i
  invoke void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) %i.g, i32 noundef %i.w) #17
          to label %_ZN4absl12lts_2025051213cord_internal9CordzInfo5TrackEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #18
  unreachable

_ZN4absl12lts_2025051213cord_internal9CordzInfo5TrackEv.exit: ; preds = %.split.i, %bb.c
  ret void

bb.e:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1344) #19
  resume { ptr, i32 } %i.z
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051213cord_internal9CordzInfo5TrackEv(ptr noundef nonnull align 8 dereferenceable(1344) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 6 uses
  %i.c = load atomic i32, ptr %i.b monotonic, align 4 ; 3 uses
  %i.d = and i32 %i.c, 1
  %.not.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i: ; preds = %bb.a
  %i.e = or disjoint i32 %i.c, 1
  %i.f = cmpxchg ptr %i.b, i32 %i.c, i32 %i.e acquire monotonic, align 4
  %i.g = extractvalue { i32, i1 } %i.f, 0
  %.pre.i.i.i = and i32 %i.g, 1
  %i.h = icmp eq i32 %.pre.i.i.i, 0
  br i1 %i.h, label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i, %bb.a
  tail call void @_ZN4absl12lts_2025051213base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) %i.b) #17
  br label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit

_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i, %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load atomic ptr, ptr %i.j acquire, align 8 ; 3 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.split, label %.split5

.split5:                                          ; preds = %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store atomic ptr %0, ptr %i.l release, align 8
  br label %.split

.split:                                           ; preds = %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit, %.split5
  %.sink = phi ptr [ %i.k, %.split5 ], [ null, %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store atomic ptr %.sink, ptr %i.m release, align 8
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store atomic ptr %0, ptr %i.o release, align 8
  %i.p = load atomic i32, ptr %i.b monotonic, align 4
  %i.q = and i32 %i.p, 2
  %i.r = atomicrmw xchg ptr %i.b, i32 %i.q release, align 4 ; 2 uses
  %.not4.i.i = icmp ult i32 %i.r, 8
  br i1 %.not4.i.i, label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %.split
  invoke void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.r) #17
          to label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #18
  unreachable

_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev.exit: ; preds = %.split, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051213cord_internal9CordzInfo9TrackCordERNS1_10InlineDataERKS3_NS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !7
  %i.b = add nsw i64 %i.a, -1                     ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @_ZN4absl12lts_2025051213cord_internal9CordzInfo7UntrackEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = tail call noalias noundef nonnull dereferenceable(1344) ptr @_Znwm(i64 noundef 1344) #16 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.g = load i64, ptr %1, align 8, !tbaa !7
  %i.h = add nsw i64 %i.g, -1
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1336
  %i.k = load i64, ptr %i.j, align 8, !tbaa !28
  invoke void @_ZN4absl12lts_2025051213cord_internal9CordzInfoC1EPNS1_7CordRepEPKS2_NS1_18CordzUpdateTracker16MethodIdentifierEl(ptr noundef nonnull align 8 dereferenceable(1344) %i.d, ptr noundef %i.f, ptr noundef nonnull %i.i, i32 noundef %2, i64 noundef %i.k)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = ptrtoint ptr %i.d to i64
  %i.m = or i64 %i.l, 1
  store i64 %i.m, ptr %0, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8    ; 6 uses
  %i.p = load atomic i32, ptr %i.o monotonic, align 4 ; 3 uses
  %i.q = and i32 %i.p, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.i: ; preds = %bb.d
  %i.r = or disjoint i32 %i.p, 1
  %i.s = cmpxchg ptr %i.o, i32 %i.p, i32 %i.r acquire monotonic, align 4
  %i.t = extractvalue { i32, i1 } %i.s, 0
  %.pre.i.i.i.i = and i32 %i.t, 1
  %i.u = icmp eq i32 %.pre.i.i.i.i, 0
  br i1 %i.u, label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i.i: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.i, %bb.d
  tail call void @_ZN4absl12lts_2025051213base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) %i.o) #17
  br label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit.i

_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit.i: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i.i, %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.i
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load atomic ptr, ptr %i.w acquire, align 8 ; 3 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %.split.i, label %.split5.i

.split5.i:                                        ; preds = %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store atomic ptr %i.d, ptr %i.y release, align 8
  br label %.split.i

.split.i:                                         ; preds = %.split5.i, %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store atomic ptr %i.x, ptr %i.z release, align 8
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store atomic ptr %i.d, ptr %i.ab release, align 8
  %i.ac = load atomic i32, ptr %i.o monotonic, align 4
  %i.ad = and i32 %i.ac, 2
  %i.ae = atomicrmw xchg ptr %i.o, i32 %i.ad release, align 4 ; 2 uses
  %.not4.i.i.i = icmp ult i32 %i.ae, 8
  br i1 %.not4.i.i.i, label %_ZN4absl12lts_2025051213cord_internal9CordzInfo5TrackEv.exit, label %bb.e

bb.e:                                             ; preds = %.split.i
  invoke void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) %i.o, i32 noundef %i.ae) #17
          to label %_ZN4absl12lts_2025051213cord_internal9CordzInfo5TrackEv.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #18
  unreachable

_ZN4absl12lts_2025051213cord_internal9CordzInfo5TrackEv.exit: ; preds = %.split.i, %bb.e
  ret void

bb.g:                                             ; preds = %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 1344) #19
  resume { ptr, i32 } %i.ah
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051213cord_internal9CordzInfo7UntrackEv(ptr noundef nonnull align 8 dereferenceable(1344) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 6 uses
  %i.c = load atomic i32, ptr %i.b monotonic, align 4 ; 3 uses
  %i.d = and i32 %i.c, 1
  %.not.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i: ; preds = %bb.a
  %i.e = or disjoint i32 %i.c, 1
  %i.f = cmpxchg ptr %i.b, i32 %i.c, i32 %i.e acquire monotonic, align 4
  %i.g = extractvalue { i32, i1 } %i.f, 0
  %.pre.i.i.i = and i32 %i.g, 1
  %i.h = icmp eq i32 %.pre.i.i.i, 0
  br i1 %i.h, label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i, %bb.a
  tail call void @_ZN4absl12lts_2025051213base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) %i.b) #17
  br label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit

_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i, %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load atomic ptr, ptr %i.j acquire, align 8 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load atomic ptr, ptr %i.l acquire, align 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load atomic ptr, ptr %i.n acquire, align 8 ; 3 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store atomic ptr %i.o, ptr %i.p release, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit
  %.not11 = icmp eq ptr %i.o, null
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store atomic ptr %i.m, ptr %i.q release, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store atomic ptr %i.m, ptr %i.s release, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = load atomic i32, ptr %i.b monotonic, align 4
  %i.u = and i32 %i.t, 2
  %i.v = atomicrmw xchg ptr %i.b, i32 %i.u release, align 4 ; 2 uses
  %.not4.i.i = icmp ult i32 %i.v, 8
  br i1 %.not4.i.i, label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.v) #17
          to label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #18
  unreachable

_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev.exit: ; preds = %bb.f, %bb.g
  %i.y = tail call noundef zeroext i1 @_ZNK4absl12lts_2025051213cord_internal11CordzHandle12SafeToDeleteEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.z, align 8, !tbaa !29
  %i.aa = load ptr, ptr %0, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(1344) %0) #20
  br label %bb.n

bb.j:                                             ; preds = %_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !29 ; 2 uses
  %.not12 = icmp eq ptr %i.af, null
  br i1 %.not12, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = atomicrmw add ptr %i.ag, i32 2 monotonic, align 4 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit13 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #18
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit13:      ; preds = %bb.l
  tail call void @_ZN4absl12lts_2025051213cord_internal11CordzHandle6DeleteEPS2_(ptr noundef nonnull %0)
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %_ZN4absl12lts_202505129MutexLockD2Ev.exit13
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051213cord_internal9CordzInfo18MaybeTrackCordImplERNS1_10InlineDataERKS3_NS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !7
  %.not = icmp eq i64 %i.a, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4absl12lts_2025051213cord_internal9CordzInfo9TrackCordERNS1_10InlineDataERKS3_NS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !7      ; 2 uses
  %.not6 = icmp eq i64 %i.b, 1
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = add nsw i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr
  tail call void @_ZN4absl12lts_2025051213cord_internal9CordzInfo7UntrackEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.d)
  store i64 1, ptr %0, align 8, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZN4absl12lts_2025051213cord_internal9CordzInfo15GetParentMethodEPKS2_(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1116
  %i.c = load i32, ptr %i.b, align 4, !tbaa !32   ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.e = load i32, ptr %i.d, align 8, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.e, %bb.c ], [ %i.c, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i64 @_ZN4absl12lts_2025051213cord_internal9CordzInfo15FillParentStackEPKS2_PPv(ptr noundef readonly captures(address_is_null) %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.e = shl i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr nonnull align 8 %i.d, i64 %i.e, i1 false)
  %i.f = load i64, ptr %i.b, align 8, !tbaa !34
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !35
  %i.j = shl i64 %i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr nonnull align 8 %i.g, i64 %i.j, i1 false)
  %i.k = load i64, ptr %i.h, align 8, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i64 [ %i.k, %bb.d ], [ %i.f, %bb.c ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051213cord_internal9CordzInfoC2EPNS1_7CordRepEPKS2_NS1_18CordzUpdateTracker16MethodIdentifierEl(ptr noundef nonnull align 8 dereferenceable(1344) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4absl12lts_2025051213cord_internal11CordzHandleC2Eb(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2025051213cord_internal9CordzInfoE, i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @_ZN4absl12lts_2025051213cord_internal9CordzInfo12global_list_E, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = invoke noundef i32 @_ZN4absl12lts_2025051213GetStackTraceEPPvii(ptr noundef nonnull %i.d, i32 noundef 64, i32 noundef 1)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.g = sext i32 %i.e to i64
  store i64 %i.g, ptr %i.f, align 8, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.j = icmp eq ptr %2, null                     ; 2 uses
  br i1 %i.j, label %_ZN4absl12lts_2025051213cord_internal9CordzInfo15FillParentStackEPKS2_PPv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1104 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !34   ; 2 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 584
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 1096 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !35
  br label %bb.f

_ZN4absl12lts_2025051213cord_internal9CordzInfo15FillParentStackEPKS2_PPv.exit: ; preds = %bb.b
  store i64 0, ptr %i.h, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store i32 %3, ptr %i.q, align 8, !tbaa !33
  br label %_ZN4absl12lts_2025051213cord_internal9CordzInfo15GetParentMethodEPKS2_.exit

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sink16 = phi i64 [ %i.l, %bb.d ], [ %i.p, %bb.e ]
  %.sink = phi ptr [ %i.m, %bb.d ], [ %i.n, %bb.e ]
  %.0.i.ph.in = phi ptr [ %i.k, %bb.d ], [ %i.o, %bb.e ]
  %i.r = shl i64 %.sink16, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull readonly align 8 %.sink, i64 %i.r, i1 false)
  %.0.i.ph = load i64, ptr %.0.i.ph.in, align 8, !tbaa !36
  store i64 %.0.i.ph, ptr %i.h, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store i32 %3, ptr %i.s, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 1116
  %i.u = load i32, ptr %i.t, align 4, !tbaa !32   ; 2 uses
  %.not.i10 = icmp eq i32 %i.u, 0
  br i1 %.not.i10, label %bb.g, label %_ZN4absl12lts_2025051213cord_internal9CordzInfo15GetParentMethodEPKS2_.exit

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 1112
  %i.w = load i32, ptr %i.v, align 8, !tbaa !33
  br label %_ZN4absl12lts_2025051213cord_internal9CordzInfo15GetParentMethodEPKS2_.exit

_ZN4absl12lts_2025051213cord_internal9CordzInfo15GetParentMethodEPKS2_.exit: ; preds = %_ZN4absl12lts_2025051213cord_internal9CordzInfo15FillParentStackEPKS2_PPv.exit, %bb.f, %bb.g
  %.0.i11 = phi i32 [ 0, %_ZN4absl12lts_2025051213cord_internal9CordzInfo15FillParentStackEPKS2_PPv.exit ], [ %i.w, %bb.g ], [ %i.u, %bb.f ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1116
  store i32 %.0.i11, ptr %i.x, align 4, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.y, i8 0, i64 200, i1 false), !tbaa !37
  %i.z = invoke { i64, i32 } @_ZN4absl12lts_202505123NowEv()
          to label %bb.h unwind label %bb.j       ; 2 uses

bb.h:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal9CordzInfo15GetParentMethodEPKS2_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %.fca.0.extract = extractvalue { i64, i32 } %i.z, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.z, 1
  store i64 %.fca.0.extract, ptr %i.aa, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1328
  store i32 %.fca.1.extract, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store i64 %4, ptr %i.ab, align 8, !tbaa !28
  %i.ac = zext i32 %3 to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ac ; 2 uses
  %i.ae = load atomic i64, ptr %i.ad monotonic, align 8
  %i.af = add nsw i64 %i.ae, 1
  store atomic i64 %i.af, ptr %i.ad monotonic, align 8
  br i1 %i.j, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 1120
  invoke void @_ZN4absl12lts_2025051213cord_internal18CordzUpdateTracker8LossyAddERKS2_(ptr noundef nonnull align 8 dereferenceable(200) %i.y, ptr noundef nonnull align 8 dereferenceable(200) %i.ag)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4absl12lts_2025051213cord_internal9CordzInfo15GetParentMethodEPKS2_.exit, %bb.a
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4absl12lts_2025051213cord_internal11CordzHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #20
  resume { ptr, i32 } %i.ah

bb.k:                                             ; preds = %bb.i, %bb.h
  ret void
}

declare noundef i32 @_ZN4absl12lts_2025051213GetStackTraceEPPvii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare { i64, i32 } @_ZN4absl12lts_202505123NowEv() local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051213cord_internal18CordzUpdateTracker8LossyAddERKS2_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i64, ptr %1 monotonic, align 8 ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i64, ptr %0 monotonic, align 8
  %i.c = add nsw i64 %i.b, %i.a
  store atomic i64 %i.c, ptr %0 monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load atomic i64, ptr %i.d monotonic, align 8 ; 2 uses
  %.not.1 = icmp eq i64 %i.e, 0
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load atomic i64, ptr %i.f monotonic, align 8
  %i.h = add nsw i64 %i.g, %i.e
  store atomic i64 %i.h, ptr %i.f monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load atomic i64, ptr %i.i monotonic, align 8 ; 2 uses
  %.not.2 = icmp eq i64 %i.j, 0
  br i1 %.not.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load atomic i64, ptr %i.k monotonic, align 8
  %i.m = add nsw i64 %i.l, %i.j
  store atomic i64 %i.m, ptr %i.k monotonic, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load atomic i64, ptr %i.n monotonic, align 8 ; 2 uses
  %.not.3 = icmp eq i64 %i.o, 0
  br i1 %.not.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load atomic i64, ptr %i.p monotonic, align 8
  %i.r = add nsw i64 %i.q, %i.o
  store atomic i64 %i.r, ptr %i.p monotonic, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load atomic i64, ptr %i.s monotonic, align 8 ; 2 uses
  %.not.4 = icmp eq i64 %i.t, 0
  br i1 %.not.4, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load atomic i64, ptr %i.u monotonic, align 8
  %i.w = add nsw i64 %i.v, %i.t
  store atomic i64 %i.w, ptr %i.u monotonic, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load atomic i64, ptr %i.x monotonic, align 8 ; 2 uses
  %.not.5 = icmp eq i64 %i.y, 0
  br i1 %.not.5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aa = load atomic i64, ptr %i.z monotonic, align 8
  %i.ab = add nsw i64 %i.aa, %i.y
  store atomic i64 %i.ab, ptr %i.z monotonic, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ad = load atomic i64, ptr %i.ac monotonic, align 8 ; 2 uses
  %.not.6 = icmp eq i64 %i.ad, 0
  br i1 %.not.6, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.af = load atomic i64, ptr %i.ae monotonic, align 8
  %i.ag = add nsw i64 %i.af, %i.ad
  store atomic i64 %i.ag, ptr %i.ae monotonic, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ai = load atomic i64, ptr %i.ah monotonic, align 8 ; 2 uses
  %.not.7 = icmp eq i64 %i.ai, 0
  br i1 %.not.7, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ak = load atomic i64, ptr %i.aj monotonic, align 8
  %i.al = add nsw i64 %i.ak, %i.ai
  store atomic i64 %i.al, ptr %i.aj monotonic, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.an = load atomic i64, ptr %i.am monotonic, align 8 ; 2 uses
  %.not.8 = icmp eq i64 %i.an, 0
  br i1 %.not.8, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ap = load atomic i64, ptr %i.ao monotonic, align 8
  %i.aq = add nsw i64 %i.ap, %i.an
  store atomic i64 %i.aq, ptr %i.ao monotonic, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.as = load atomic i64, ptr %i.ar monotonic, align 8 ; 2 uses
  %.not.9 = icmp eq i64 %i.as, 0
  br i1 %.not.9, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.au = load atomic i64, ptr %i.at monotonic, align 8
  %i.av = add nsw i64 %i.au, %i.as
  store atomic i64 %i.av, ptr %i.at monotonic, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ax = load atomic i64, ptr %i.aw monotonic, align 8 ; 2 uses
  %.not.10 = icmp eq i64 %i.ax, 0
  br i1 %.not.10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.az = load atomic i64, ptr %i.ay monotonic, align 8
  %i.ba = add nsw i64 %i.az, %i.ax
  store atomic i64 %i.ba, ptr %i.ay monotonic, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bc = load atomic i64, ptr %i.bb monotonic, align 8 ; 2 uses
  %.not.11 = icmp eq i64 %i.bc, 0
  br i1 %.not.11, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.be = load atomic i64, ptr %i.bd monotonic, align 8
  %i.bf = add nsw i64 %i.be, %i.bc
  store atomic i64 %i.bf, ptr %i.bd monotonic, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bh = load atomic i64, ptr %i.bg monotonic, align 8 ; 2 uses
  %.not.12 = icmp eq i64 %i.bh, 0
  br i1 %.not.12, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bj = load atomic i64, ptr %i.bi monotonic, align 8
  %i.bk = add nsw i64 %i.bj, %i.bh
  store atomic i64 %i.bk, ptr %i.bi monotonic, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bm = load atomic i64, ptr %i.bl monotonic, align 8 ; 2 uses
  %.not.13 = icmp eq i64 %i.bm, 0
  br i1 %.not.13, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bo = load atomic i64, ptr %i.bn monotonic, align 8
  %i.bp = add nsw i64 %i.bo, %i.bm
  store atomic i64 %i.bp, ptr %i.bn monotonic, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.br = load atomic i64, ptr %i.bq monotonic, align 8 ; 2 uses
  %.not.14 = icmp eq i64 %i.br, 0
  br i1 %.not.14, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bt = load atomic i64, ptr %i.bs monotonic, align 8
  %i.bu = add nsw i64 %i.bt, %i.br
  store atomic i64 %i.bu, ptr %i.bs monotonic, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bw = load atomic i64, ptr %i.bv monotonic, align 8 ; 2 uses
  %.not.15 = icmp eq i64 %i.bw, 0
  br i1 %.not.15, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.by = load atomic i64, ptr %i.bx monotonic, align 8
  %i.bz = add nsw i64 %i.by, %i.bw
  store atomic i64 %i.bz, ptr %i.bx monotonic, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cb = load atomic i64, ptr %i.ca monotonic, align 8 ; 2 uses
  %.not.16 = icmp eq i64 %i.cb, 0
  br i1 %.not.16, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.cd = load atomic i64, ptr %i.cc monotonic, align 8
  %i.ce = add nsw i64 %i.cd, %i.cb
  store atomic i64 %i.ce, ptr %i.cc monotonic, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.cg = load atomic i64, ptr %i.cf monotonic, align 8 ; 2 uses
  %.not.17 = icmp eq i64 %i.cg, 0
  br i1 %.not.17, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ci = load atomic i64, ptr %i.ch monotonic, align 8
  %i.cj = add nsw i64 %i.ci, %i.cg
  store atomic i64 %i.cj, ptr %i.ch monotonic, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.cl = load atomic i64, ptr %i.ck monotonic, align 8 ; 2 uses
  %.not.18 = icmp eq i64 %i.cl, 0
  br i1 %.not.18, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.cn = load atomic i64, ptr %i.cm monotonic, align 8
  %i.co = add nsw i64 %i.cn, %i.cl
  store atomic i64 %i.co, ptr %i.cm monotonic, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cq = load atomic i64, ptr %i.cp monotonic, align 8 ; 2 uses
  %.not.19 = icmp eq i64 %i.cq, 0
  br i1 %.not.19, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.cs = load atomic i64, ptr %i.cr monotonic, align 8
  %i.ct = add nsw i64 %i.cs, %i.cq
  store atomic i64 %i.ct, ptr %i.cr monotonic, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.cv = load atomic i64, ptr %i.cu monotonic, align 8 ; 2 uses
  %.not.20 = icmp eq i64 %i.cv, 0
  br i1 %.not.20, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.cx = load atomic i64, ptr %i.cw monotonic, align 8
  %i.cy = add nsw i64 %i.cx, %i.cv
  store atomic i64 %i.cy, ptr %i.cw monotonic, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.da = load atomic i64, ptr %i.cz monotonic, align 8 ; 2 uses
  %.not.21 = icmp eq i64 %i.da, 0
  br i1 %.not.21, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.dc = load atomic i64, ptr %i.db monotonic, align 8
  %i.dd = add nsw i64 %i.dc, %i.da
  store atomic i64 %i.dd, ptr %i.db monotonic, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.df = load atomic i64, ptr %i.de monotonic, align 8 ; 2 uses
  %.not.22 = icmp eq i64 %i.df, 0
  br i1 %.not.22, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.dh = load atomic i64, ptr %i.dg monotonic, align 8
  %i.di = add nsw i64 %i.dh, %i.df
  store atomic i64 %i.di, ptr %i.dg monotonic, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.dk = load atomic i64, ptr %i.dj monotonic, align 8 ; 2 uses
  %.not.23 = icmp eq i64 %i.dk, 0
  br i1 %.not.23, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.dm = load atomic i64, ptr %i.dl monotonic, align 8
  %i.dn = add nsw i64 %i.dm, %i.dk
  store atomic i64 %i.dn, ptr %i.dl monotonic, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.dp = load atomic i64, ptr %i.do monotonic, align 8 ; 2 uses
  %.not.24 = icmp eq i64 %i.dp, 0
  br i1 %.not.24, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.dr = load atomic i64, ptr %i.dq monotonic, align 8
  %i.ds = add nsw i64 %i.dr, %i.dp
  store atomic i64 %i.ds, ptr %i.dq monotonic, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4absl12lts_2025051213cord_internal11CordzHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4absl12lts_2025051213cord_internal9CordzInfoD2Ev(ptr noundef nonnull align 8 dereferenceable(1344) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2025051213cord_internal9CordzInfoE, i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 2 acq_rel, align 4
  %.not.i = icmp eq i32 %i.d, 2
  br i1 %.not.i, label %bb.c, label %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit, !prof !39

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %i.b)
          to label %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit unwind label %bb.d

_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit: ; preds = %bb.b, %bb.c, %bb.a
  tail call void @_ZN4absl12lts_2025051213cord_internal11CordzHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #20
  ret void

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #18
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4absl12lts_2025051213cord_internal9CordzInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(1344) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN4absl12lts_2025051213cord_internal9CordzInfoD1Ev(ptr noundef nonnull align 8 dereferenceable(1344) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1344) #19
  ret void
}

declare noundef zeroext i1 @_ZNK4absl12lts_2025051213cord_internal11CordzHandle12SafeToDeleteEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

declare void @_ZN4absl12lts_2025051213cord_internal11CordzHandle6DeleteEPS2_(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051213cord_internal9CordzInfo4LockENS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(1344) %0, i32 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load atomic i64, ptr %i.d monotonic, align 8
  %i.f = add nsw i64 %i.e, 1
  store atomic i64 %i.f, ptr %i.d monotonic, align 8
  ret void
}

declare void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051213cord_internal9CordzInfo6UnlockEv(ptr noundef nonnull align 8 dereferenceable(1344) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4absl12lts_2025051213cord_internal9CordzInfo7UntrackEv(ptr noundef nonnull align 8 dereferenceable(1344) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_ZNK4absl12lts_2025051213cord_internal9CordzInfo8GetStackEv(ptr noundef nonnull align 8 dereferenceable(1344) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.c = load i64, ptr %i.b, align 8, !tbaa !35
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.c, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_ZNK4absl12lts_2025051213cord_internal9CordzInfo14GetParentStackEv(ptr noundef nonnull align 8 dereferenceable(1344) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.c = load i64, ptr %i.b, align 8, !tbaa !34
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.c, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4absl12lts_2025051213cord_internal9CordzInfo18GetCordzStatisticsEv(ptr dead_on_unwind noalias writable sret(%"struct.absl::lts_20250512::cord_internal::CordzStatistics") align 8 initializes((0, 336)) %0, ptr noundef nonnull align 8 dereferenceable(1344) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::cord_internal::(anonymous namespace)::CordRepAnalyzer", align 8 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %0, i8 0, i64 336, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1112
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load <2 x i32>, ptr %i.a, align 8, !tbaa !40
  store <2 x i32> %i.c, ptr %i.b, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1120
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load atomic i64, ptr %i.d monotonic, align 8
  store atomic i64 %i.f, ptr %i.e monotonic, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1128
  %i.i = load atomic i64, ptr %i.h monotonic, align 8
  store atomic i64 %i.i, ptr %i.g monotonic, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1136
  %i.l = load atomic i64, ptr %i.k monotonic, align 8
  store atomic i64 %i.l, ptr %i.j monotonic, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1144
  %i.o = load atomic i64, ptr %i.n monotonic, align 8
  store atomic i64 %i.o, ptr %i.m monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1152
  %i.r = load atomic i64, ptr %i.q monotonic, align 8
  store atomic i64 %i.r, ptr %i.p monotonic, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1160
  %i.u = load atomic i64, ptr %i.t monotonic, align 8
  store atomic i64 %i.u, ptr %i.s monotonic, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1168
  %i.x = load atomic i64, ptr %i.w monotonic, align 8
  store atomic i64 %i.x, ptr %i.v monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1176
  %i.aa = load atomic i64, ptr %i.z monotonic, align 8
  store atomic i64 %i.aa, ptr %i.y monotonic, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1184
  %i.ad = load atomic i64, ptr %i.ac monotonic, align 8
  store atomic i64 %i.ad, ptr %i.ab monotonic, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1192
  %i.ag = load atomic i64, ptr %i.af monotonic, align 8
  store atomic i64 %i.ag, ptr %i.ae monotonic, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1200
  %i.aj = load atomic i64, ptr %i.ai monotonic, align 8
  store atomic i64 %i.aj, ptr %i.ah monotonic, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 1208
  %i.am = load atomic i64, ptr %i.al monotonic, align 8
  store atomic i64 %i.am, ptr %i.ak monotonic, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 1216
  %i.ap = load atomic i64, ptr %i.ao monotonic, align 8
  store atomic i64 %i.ap, ptr %i.an monotonic, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 1224
  %i.as = load atomic i64, ptr %i.ar monotonic, align 8
  store atomic i64 %i.as, ptr %i.aq monotonic, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 1232
  %i.av = load atomic i64, ptr %i.au monotonic, align 8
  store atomic i64 %i.av, ptr %i.at monotonic, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 1240
  %i.ay = load atomic i64, ptr %i.ax monotonic, align 8
  store atomic i64 %i.ay, ptr %i.aw monotonic, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 1248
  %i.bb = load atomic i64, ptr %i.ba monotonic, align 8
  store atomic i64 %i.bb, ptr %i.az monotonic, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 1256
  %i.be = load atomic i64, ptr %i.bd monotonic, align 8
  store atomic i64 %i.be, ptr %i.bc monotonic, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 1264
  %i.bh = load atomic i64, ptr %i.bg monotonic, align 8
  store atomic i64 %i.bh, ptr %i.bf monotonic, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 1272
  %i.bk = load atomic i64, ptr %i.bj monotonic, align 8
  store atomic i64 %i.bk, ptr %i.bi monotonic, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 1280
  %i.bn = load atomic i64, ptr %i.bm monotonic, align 8
  store atomic i64 %i.bn, ptr %i.bl monotonic, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 1288
  %i.bq = load atomic i64, ptr %i.bp monotonic, align 8
  store atomic i64 %i.bq, ptr %i.bo monotonic, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 1296
  %i.bt = load atomic i64, ptr %i.bs monotonic, align 8
  store atomic i64 %i.bt, ptr %i.br monotonic, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 1304
  %i.bw = load atomic i64, ptr %i.bv monotonic, align 8
  store atomic i64 %i.bw, ptr %i.bu monotonic, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 1312
  %i.bz = load atomic i64, ptr %i.by monotonic, align 8
  store atomic i64 %i.bz, ptr %i.bx monotonic, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !29 ; 8 uses
  %.not.i = icmp eq ptr %i.cc, null               ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = atomicrmw add ptr %i.cd, i32 2 monotonic, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ca)
          to label %_ZNK4absl12lts_2025051213cord_internal9CordzInfo10RefCordRepEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  tail call void @__clang_call_terminate(ptr %i.cg) #18
  unreachable

_ZNK4absl12lts_2025051213cord_internal9CordzInfo10RefCordRepEv.exit: ; preds = %bb.c
  br i1 %.not.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %_ZNK4absl12lts_2025051213cord_internal9CordzInfo10RefCordRepEv.exit
  %i.ch = load i64, ptr %i.cc, align 8, !tbaa !41
  store i64 %i.ch, ptr %0, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %0, ptr %2, align 8, !tbaa !49
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.ck = load atomic i32, ptr %i.cj acquire, align 8
  %i.cl = ashr i32 %i.ck, 1
  %i.cm = tail call i32 @llvm.umax.i32(i32 %i.cl, i32 2)
  %i.cn = sext i32 %i.cm to i64
  %i.co = add nsw i64 %i.cn, -1                   ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.cq = load i8, ptr %i.cp, align 4, !tbaa !51
  %i.cr = icmp eq i8 %i.cq, 2
  br i1 %i.cr, label %bb.f, label %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit.i

bb.f:                                             ; preds = %bb.e
  %i.cs = load ptr, ptr %2, align 8, !tbaa !52, !nonnull !56, !align !57 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !58
  %i.cv = add i64 %i.cu, 1
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !58
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 120 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !59
  %i.cy = add i64 %i.cx, 1
  store i64 %i.cy, ptr %i.cw, align 8, !tbaa !59
  %i.cz = load i64, ptr %i.ci, align 8, !tbaa !60
  %i.da = add i64 %i.cz, 32
  store i64 %i.da, ptr %i.ci, align 8, !tbaa !60
  %i.db = uitofp i64 %i.co to double
  %i.dc = fdiv double 3.200000e+01, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !61
  %i.df = fadd double %i.dc, %i.de
  store double %i.df, ptr %i.dd, align 8, !tbaa !61
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !62 ; 3 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dk = load atomic i32, ptr %i.dj acquire, align 4
  %i.dl = ashr i32 %i.dk, 1
  %i.dm = sext i32 %i.dl to i64
  %i.dn = mul nsw i64 %i.co, %i.dm
  br label %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit.i

_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.10.0.i = phi i64 [ %i.co, %bb.e ], [ %i.dn, %bb.g ], [ 0, %bb.f ]
  %.sroa.0.0.i = phi ptr [ %i.cc, %bb.e ], [ %i.dh, %bb.g ], [ null, %bb.f ]
  %i.do = call fastcc { ptr, i64 } @_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer15CountLinearRepsENS3_6RepRefERNS3_11MemoryUsageE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %.sroa.0.0.i, i64 %.sroa.10.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ci) ; 2 uses
  %i.dp = extractvalue { ptr, i64 } %i.do, 0      ; 3 uses
  %i.dq = extractvalue { ptr, i64 } %i.do, 1
  %.not.i11.i = icmp eq ptr %i.dp, null
  br i1 %.not.i11.i, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer14AnalyzeCordRepEPKNS1_7CordRepE.exit, label %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit12.i

_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit12.i: ; preds = %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.ds = load i8, ptr %i.dr, align 4, !tbaa !51
  %cond.i = icmp eq i8 %i.ds, 3
  br i1 %cond.i, label %bb.h, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer14AnalyzeCordRepEPKNS1_7CordRepE.exit

bb.h:                                             ; preds = %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit12.i
  call fastcc void @_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer12AnalyzeBtreeENS3_6RepRefE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nonnull %i.dp, i64 %i.dq)
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer14AnalyzeCordRepEPKNS1_7CordRepE.exit

_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer14AnalyzeCordRepEPKNS1_7CordRepE.exit: ; preds = %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit.i, %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit12.i, %bb.h
  %i.dt = load i64, ptr %i.ci, align 8, !tbaa !66
  %i.du = load ptr, ptr %2, align 8, !tbaa !52, !nonnull !56, !align !57 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !67
  %i.dx = add i64 %i.dw, %i.dt
  store i64 %i.dx, ptr %i.dv, align 8, !tbaa !67
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !68
  %i.ea = fptoui double %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !69
  %i.ed = add i64 %i.ec, %i.ea
  store i64 %i.ed, ptr %i.eb, align 8, !tbaa !69
  %i.ee = atomicrmw sub ptr %i.cj, i32 2 acq_rel, align 4
  %.not.i5 = icmp eq i32 %i.ee, 2
  br i1 %.not.i5, label %bb.i, label %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit, !prof !39

bb.i:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer14AnalyzeCordRepEPKNS1_7CordRepE.exit
  tail call void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %i.cc)
  br label %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit

_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit: ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer14AnalyzeCordRepEPKNS1_7CordRepE.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit, %_ZNK4absl12lts_2025051213cord_internal9CordzInfo10RefCordRepEv.exit
  ret void
}

declare void @_ZN4absl12lts_2025051213cord_internal11CordzHandleC2Eb(ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) unnamed_addr #7

declare void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef) local_unnamed_addr #7

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051213base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #12

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal fastcc { ptr, i64 } @_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer15CountLinearRepsENS3_6RepRefERNS3_11MemoryUsageE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %3) unnamed_addr #13 align 2 {
bb.a:
  %.not.i25 = icmp eq ptr %1, null
  br i1 %.not.i25, label %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit15.thread, label %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit.lr.ph

_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit.lr.ph: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load i8, ptr %i.b, align 4, !tbaa !51    ; 2 uses
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %.lr.ph, label %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit13

.lr.ph:                                           ; preds = %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit.lr.ph, %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit
  %.sroa.0.02648 = phi ptr [ %i.s, %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit ], [ %1, %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit.lr.ph ]
  %storemerge2747 = phi i64 [ %i.y, %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit ], [ %2, %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit.lr.ph ] ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !52, !nonnull !56, !align !57 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !58
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.f, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !70
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !70
  %i.l = load i64, ptr %3, align 8, !tbaa !60
  %i.m = add i64 %i.l, 32
  store i64 %i.m, ptr %3, align 8, !tbaa !60
  %i.n = uitofp i64 %storemerge2747 to double
  %i.o = fdiv double 3.200000e+01, %i.n
  %i.p = load double, ptr %i.a, align 8, !tbaa !61
  %i.q = fadd double %i.o, %i.p
  store double %i.q, ptr %i.a, align 8, !tbaa !61
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.02648, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !71   ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit15.thread, label %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit

_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit: ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load atomic i32, ptr %i.u acquire, align 4
  %i.w = ashr i32 %i.v, 1
  %i.x = sext i32 %i.w to i64
  %i.y = mul i64 %storemerge2747, %i.x            ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !51   ; 2 uses
  %i.ab = icmp eq i8 %i.aa, 1
  br i1 %i.ab, label %.lr.ph, label %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit13, !llvm.loop !73

_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit13: ; preds = %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit, %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit.lr.ph
  %storemerge27.lcssa = phi i64 [ %2, %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit.lr.ph ], [ %i.y, %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit ] ; 2 uses
  %.sroa.0.026.lcssa = phi ptr [ %1, %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit.lr.ph ], [ %i.s, %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit ] ; 2 uses
  %.lcssa = phi i8 [ %i.c, %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit.lr.ph ], [ %i.aa, %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit ] ; 5 uses
  %i.ac = icmp ugt i8 %.lcssa, 5
  br i1 %i.ac, label %bb.b, label %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit15

bb.b:                                             ; preds = %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit13
  %i.ad = zext i8 %.lcssa to i32
  %i.ae = icmp ult i8 %.lcssa, 67                 ; 2 uses
  %i.af = icmp ult i8 %.lcssa, -69                ; 2 uses
  %..i.i = select i1 %i.af, i32 6, i32 12
  %.7.i.i = select i1 %i.af, i32 -3712, i32 -753664
  %.sink6.i.i = select i1 %i.ae, i32 3, i32 %..i.i
  %.sink5.i.i = select i1 %i.ae, i32 -16, i32 %.7.i.i
  %i.ag = shl nuw nsw i32 %i.ad, %.sink6.i.i
  %i.ah = add nsw i32 %i.ag, %.sink5.i.i          ; 6 uses
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %.val11 = load ptr, ptr %0, align 8, !tbaa !52  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val11, i64 24 ; 2 uses
  %i.ak = load <2 x i64>, ptr %i.aj, align 8, !tbaa !36
  %i.al = add <2 x i64> %i.ak, splat (i64 1)
  store <2 x i64> %i.al, ptr %i.aj, align 8, !tbaa !36
  %i.am = icmp ult i32 %i.ah, 65
  br i1 %i.am, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = icmp ult i32 %i.ah, 129
  br i1 %i.an, label %.sink.split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = icmp ult i32 %i.ah, 257
  br i1 %i.ao, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = icmp ult i32 %i.ah, 513
  br i1 %i.ap, label %.sink.split.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = icmp ult i32 %i.ah, 1025
  br i1 %i.aq, label %.sink.split.i, label %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit15.thread.sink.split

.sink.split.i:                                    ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink3.i = phi i64 [ 40, %bb.b ], [ 56, %bb.d ], [ 64, %bb.e ], [ 48, %bb.c ], [ 72, %bb.f ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink3.i ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !36
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !36
  br label %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit15.thread.sink.split

_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit15: ; preds = %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit13
  %i.au = icmp eq i8 %.lcssa, 5
  br i1 %i.au, label %bb.g, label %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit15.thread

bb.g:                                             ; preds = %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit15
  %i.av = load ptr, ptr %0, align 8, !tbaa !52, !nonnull !56, !align !57 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !58
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !58
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 80 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !75
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !75
  %i.bc = load i64, ptr %.sroa.0.026.lcssa, align 8, !tbaa !41
  %i.bd = add i64 %i.bc, 40
  br label %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit15.thread.sink.split

_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit15.thread.sink.split: ; preds = %.sink.split.i, %bb.f, %bb.g
  %.sink43 = phi i64 [ %i.bd, %bb.g ], [ %i.ai, %bb.f ], [ %i.ai, %.sink.split.i ] ; 2 uses
  %i.be = load i64, ptr %3, align 8, !tbaa !60
  %i.bf = add i64 %i.be, %.sink43
  store i64 %i.bf, ptr %3, align 8, !tbaa !60
  %i.bg = uitofp i64 %.sink43 to double
  %i.bh = uitofp i64 %storemerge27.lcssa to double
  %i.bi = fdiv double %i.bg, %i.bh
  %i.bj = load double, ptr %i.a, align 8, !tbaa !61
  %i.bk = fadd double %i.bi, %i.bj
  store double %i.bk, ptr %i.a, align 8, !tbaa !61
  br label %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit15.thread

_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit15.thread: ; preds = %.lr.ph, %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit15.thread.sink.split, %bb.a, %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit15
  %.sroa.06.0 = phi ptr [ null, %bb.a ], [ null, %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit15.thread.sink.split ], [ %.sroa.0.026.lcssa, %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit15 ], [ null, %.lr.ph ]
  %.sroa.47.0 = phi i64 [ %2, %bb.a ], [ 0, %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit15.thread.sink.split ], [ %storemerge27.lcssa, %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit15 ], [ 0, %.lr.ph ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.06.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.47.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer12AnalyzeBtreeENS3_6RepRefE(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr readonly captures(address) %1, i64 %2) unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !52, !nonnull !56, !align !57 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !58
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !76
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !76
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !60
  %i.j = add i64 %i.i, 64
  store i64 %i.j, ptr %i.h, align 8, !tbaa !60
  %i.k = uitofp i64 %2 to double
  %i.l = fdiv double 6.400000e+01, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !61
  %i.o = fadd double %i.l, %i.n
  store double %i.o, ptr %i.m, align 8, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.q = load i8, ptr %i.p, align 1, !tbaa !7
  %.not39 = icmp eq i8 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.t = load i8, ptr %i.s, align 1, !tbaa !7     ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.v = load i8, ptr %i.u, align 1, !tbaa !7     ; 2 uses
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.w ; 2 uses
  %.not43 = icmp eq i8 %i.t, %i.v                 ; 2 uses
  br i1 %.not39, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not43, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.y = zext i8 %i.t to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.y
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit
  %.042 = phi ptr [ %i.ah, %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit ], [ %i.z, %.lr.ph.preheader ] ; 2 uses
  %i.aa = load ptr, ptr %.042, align 8, !tbaa !77 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load atomic i32, ptr %i.ac acquire, align 4
  %i.ae = ashr i32 %i.ad, 1
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul i64 %2, %i.af
  br label %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit

_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit: ; preds = %.lr.ph, %bb.c
  %.sroa.3.0.i = phi i64 [ %i.ag, %bb.c ], [ 0, %.lr.ph ]
  tail call fastcc void @_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer12AnalyzeBtreeENS3_6RepRefE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.aa, i64 %.sroa.3.0.i)
  %i.ah = getelementptr inbounds nuw i8, ptr %.042, i64 8 ; 2 uses
  %.not22 = icmp eq ptr %i.ah, %i.x
  br i1 %.not22, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %bb.a
  br i1 %.not43, label %.loopexit, label %.lr.ph45.preheader

.lr.ph45.preheader:                               ; preds = %bb.d
  %i.ai = zext i8 %i.t to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ai
  br label %.lr.ph45

.lr.ph45:                                         ; preds = %.lr.ph45.preheader, %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit31
  %.02144 = phi ptr [ %i.as, %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit31 ], [ %i.aj, %.lr.ph45.preheader ] ; 2 uses
  %i.ak = load ptr, ptr %.02144, align 8, !tbaa !77 ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit31, label %bb.e

bb.e:                                             ; preds = %.lr.ph45
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load atomic i32, ptr %i.am acquire, align 4
  %i.ao = ashr i32 %i.an, 1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul i64 %2, %i.ap
  br label %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit31

_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit31: ; preds = %.lr.ph45, %bb.e
  %.sroa.3.0.i28 = phi i64 [ %i.aq, %bb.e ], [ 0, %.lr.ph45 ]
  %i.ar = tail call fastcc { ptr, i64 } @_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer15CountLinearRepsENS3_6RepRefERNS3_11MemoryUsageE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ak, i64 %.sroa.3.0.i28, ptr noundef nonnull align 8 dereferenceable(16) %i.h) ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.02144, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.as, %i.x
  br i1 %.not, label %.loopexit, label %.lr.ph45

.loopexit:                                        ; preds = %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit, %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit31, %bb.b, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

attributes #0 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { cold }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { nounwind }

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
!7 = !{!5, !5, i64 0}
!8 = !{!9, !14, i64 32}
!9 = !{!"_ZTSN4absl12lts_2025051213cord_internal9CordzInfoE", !10, i64 0, !14, i64 32, !15, i64 40, !15, i64 48, !18, i64 56, !22, i64 64, !5, i64 72, !5, i64 584, !21, i64 1096, !21, i64 1104, !23, i64 1112, !23, i64 1116, !24, i64 1120, !25, i64 1320, !21, i64 1336}
!10 = !{!"_ZTSN4absl12lts_2025051213cord_internal11CordzHandleE", !11, i64 8, !12, i64 16, !12, i64 24}
!11 = !{!"bool", !5, i64 0}
!12 = !{!"p1 _ZTSN4absl12lts_2025051213cord_internal11CordzHandleE", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 _ZTSN4absl12lts_2025051213cord_internal9CordzInfo4ListE", !13, i64 0}
!15 = !{!"_ZTSSt6atomicIPN4absl12lts_2025051213cord_internal9CordzInfoEE", !16, i64 0}
!16 = !{!"_ZTSSt13__atomic_baseIPN4absl12lts_2025051213cord_internal9CordzInfoEE", !17, i64 0}
!17 = !{!"p1 _ZTSN4absl12lts_2025051213cord_internal9CordzInfoE", !13, i64 0}
!18 = !{!"_ZTSN4absl12lts_202505125MutexE", !19, i64 0}
!19 = !{!"_ZTSSt6atomicIlE", !20, i64 0}
!20 = !{!"_ZTSSt13__atomic_baseIlE", !21, i64 0}
!21 = !{!"long", !5, i64 0}
!22 = !{!"p1 _ZTSN4absl12lts_2025051213cord_internal7CordRepE", !13, i64 0}
!23 = !{!"_ZTSN4absl12lts_2025051213cord_internal18CordzUpdateTracker16MethodIdentifierE", !5, i64 0}
!24 = !{!"_ZTSN4absl12lts_2025051213cord_internal18CordzUpdateTrackerE", !5, i64 0}
!25 = !{!"_ZTSN4absl12lts_202505124TimeE", !26, i64 0}
!26 = !{!"_ZTSN4absl12lts_202505128DurationE", !27, i64 0, !4, i64 8}
!27 = !{!"_ZTSN4absl12lts_202505128Duration5HiRepE", !4, i64 0, !4, i64 4}
!28 = !{!9, !21, i64 1336}
!29 = !{!9, !22, i64 64}
!30 = !{!31, !31, i64 0}
!31 = !{!"vtable pointer", !6, i64 0}
!32 = !{!9, !23, i64 1116}
!33 = !{!9, !23, i64 1112}
!34 = !{!9, !21, i64 1104}
!35 = !{!9, !21, i64 1096}
!36 = !{!21, !21, i64 0}
!37 = !{!20, !21, i64 0}
!38 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!39 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!40 = !{!23, !23, i64 0}
!41 = !{!42, !21, i64 0}
!42 = !{!"_ZTSN4absl12lts_2025051213cord_internal7CordRepE", !21, i64 0, !43, i64 8, !5, i64 12, !5, i64 13}
!43 = !{!"_ZTSN4absl12lts_2025051213cord_internal16RefcountAndFlagsE", !44, i64 0}
!44 = !{!"_ZTSSt6atomicIiE", !45, i64 0}
!45 = !{!"_ZTSSt13__atomic_baseIiE", !4, i64 0}
!46 = !{!47, !21, i64 0}
!47 = !{!"_ZTSN4absl12lts_2025051213cord_internal15CordzStatisticsE", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !48, i64 32, !23, i64 128, !23, i64 132, !24, i64 136}
!48 = !{!"_ZTSN4absl12lts_2025051213cord_internal15CordzStatistics10NodeCountsE", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !21, i64 72, !21, i64 80, !21, i64 88}
!49 = !{!50, !50, i64 0}
!50 = !{!"p1 _ZTSN4absl12lts_2025051213cord_internal15CordzStatisticsE", !13, i64 0}
!51 = !{!42, !5, i64 12}
!52 = !{!53, !50, i64 0}
!53 = !{!"_ZTSN4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzerE", !50, i64 0, !54, i64 8}
!54 = !{!"_ZTSN4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer11MemoryUsageE", !21, i64 0, !55, i64 8}
!55 = !{!"double", !5, i64 0}
!56 = !{}
!57 = !{i64 8}
!58 = !{!47, !21, i64 24}
!59 = !{!47, !21, i64 120}
!60 = !{!54, !21, i64 0}
!61 = !{!54, !55, i64 8}
!62 = !{!63, !22, i64 16}
!63 = !{!"_ZTSN4absl12lts_2025051213cord_internal10CordRepCrcE", !42, i64 0, !22, i64 16, !64, i64 24}
!64 = !{!"_ZTSN4absl12lts_2025051212crc_internal12CrcCordStateE", !65, i64 0}
!65 = !{!"p1 _ZTSN4absl12lts_2025051212crc_internal12CrcCordState13RefcountedRepE", !13, i64 0}
!66 = !{!53, !21, i64 8}
!67 = !{!47, !21, i64 8}
!68 = !{!53, !55, i64 16}
!69 = !{!47, !21, i64 16}
!70 = !{!47, !21, i64 88}
!71 = !{!72, !22, i64 24}
!72 = !{!"_ZTSN4absl12lts_2025051213cord_internal16CordRepSubstringE", !42, i64 0, !21, i64 16, !22, i64 24}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!47, !21, i64 80}
!76 = !{!47, !21, i64 112}
!77 = !{!22, !22, i64 0}
end_hunk_0
