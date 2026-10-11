Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/cordz_info?download=true
inline.NumInlined: 137
inline.NumDeleted: 72
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
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
define noundef ptr @_ZN4absl12lts_2025051213cord_internal9CordzInfo4HeadERKNS1_13CordzSnapshotE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051213cord_internal9CordzInfo12global_list_E, i64 8) acquire, align 8
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef ptr @_ZNK4absl12lts_2025051213cord_internal9CordzInfo4NextERKNS1_13CordzSnapshotE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1344) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load atomic ptr, ptr %i.a acquire, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051213cord_internal9CordzInfo9TrackCordERNS1_10InlineDataENS1_18CordzUpdateTracker16MethodIdentifierEl(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27   ; 6 uses
  %i.h = load atomic i32, ptr %i.g monotonic, align 4 ; 4 uses
  %.not.i.i.i.i.i = trunc i32 %i.h to i1
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.i.a

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.i.a: ; preds = %bb.b
  %i.i = or disjoint i32 %i.h, 1
  %i.j = cmpxchg ptr %i.g, i32 %i.h, i32 %i.i acquire monotonic, align 4
  %i.k = extractvalue { i32, i1 } %i.j, 0
  br label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.i: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.i.a, %bb.b
  %.04.i.i.i.i.i = phi i32 [ %i.h, %bb.b ], [ %i.k, %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.i.a ]
  %3 = trunc i32 %.04.i.i.i.i.i to i1
  br i1 %3, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i.i, label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i.i: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.i
  tail call void @_ZN4absl12lts_2025051213base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) %i.g) #17
  br label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit.i

_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit.i: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i.i, %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.i
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load atomic ptr, ptr %i.m acquire, align 8 ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %.split.i, label %.split5.i

.split5.i:                                        ; preds = %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store atomic ptr %i.a, ptr %i.o release, align 8
  br label %.split.i

.split.i:                                         ; preds = %.split5.i, %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store atomic ptr %i.n, ptr %i.p release, align 8
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store atomic ptr %i.a, ptr %i.r release, align 8
  %i.s = load atomic i32, ptr %i.g monotonic, align 4
  %i.t = and i32 %i.s, 2
  %i.u = atomicrmw xchg ptr %i.g, i32 %i.t release, align 4 ; 2 uses
  %.not4.i.i.i = icmp ult i32 %i.u, 8
  br i1 %.not4.i.i.i, label %_ZN4absl12lts_2025051213cord_internal9CordzInfo5TrackEv.exit, label %bb.c

bb.c:                                             ; preds = %.split.i
  invoke void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) %i.g, i32 noundef %i.u) #17
          to label %_ZN4absl12lts_2025051213cord_internal9CordzInfo5TrackEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #18
  unreachable

_ZN4absl12lts_2025051213cord_internal9CordzInfo5TrackEv.exit: ; preds = %.split.i, %bb.c
  ret void

bb.e:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1344) #19
  resume { ptr, i32 } %i.x
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 6 uses
  %i.c = load atomic i32, ptr %i.b monotonic, align 4 ; 4 uses
  %.not.i.i.i.i = trunc i32 %i.c to i1
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.a

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.a: ; preds = %bb.a
  %i.d = or disjoint i32 %i.c, 1
  %i.e = cmpxchg ptr %i.b, i32 %i.c, i32 %i.d acquire monotonic, align 4
  %i.f = extractvalue { i32, i1 } %i.e, 0
  br label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.a, %bb.a
  %.04.i.i.i.i = phi i32 [ %i.c, %bb.a ], [ %i.f, %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.a ]
  %1 = trunc i32 %.04.i.i.i.i to i1
  br i1 %1, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i, label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i
  tail call void @_ZN4absl12lts_2025051213base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) %i.b) #17
  br label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit

_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i, %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load atomic ptr, ptr %i.h acquire, align 8 ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.split, label %.split5

.split5:                                          ; preds = %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store atomic ptr %0, ptr %i.j release, align 8
  br label %.split

.split:                                           ; preds = %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit, %.split5
  %.sink = phi ptr [ %i.i, %.split5 ], [ null, %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store atomic ptr %.sink, ptr %i.k release, align 8
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store atomic ptr %0, ptr %i.m release, align 8
  %i.n = load atomic i32, ptr %i.b monotonic, align 4
  %i.o = and i32 %i.n, 2
  %i.p = atomicrmw xchg ptr %i.b, i32 %i.o release, align 4 ; 2 uses
  %.not4.i.i = icmp ult i32 %i.p, 8
  br i1 %.not4.i.i, label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %.split
  invoke void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.p) #17
          to label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #18
  unreachable

_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev.exit: ; preds = %.split, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051213cord_internal9CordzInfo9TrackCordERNS1_10InlineDataERKS3_NS1_18CordzUpdateTracker16MethodIdentifierE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27   ; 6 uses
  %i.p = load atomic i32, ptr %i.o monotonic, align 4 ; 4 uses
  %.not.i.i.i.i.i = trunc i32 %i.p to i1
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.i.a

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.i.a: ; preds = %bb.d
  %i.q = or disjoint i32 %i.p, 1
  %i.r = cmpxchg ptr %i.o, i32 %i.p, i32 %i.q acquire monotonic, align 4
  %i.s = extractvalue { i32, i1 } %i.r, 0
  br label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.i: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.i.a, %bb.d
  %.04.i.i.i.i.i = phi i32 [ %i.p, %bb.d ], [ %i.s, %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.i.a ]
  %3 = trunc i32 %.04.i.i.i.i.i to i1
  br i1 %3, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i.i, label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i.i: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.i
  tail call void @_ZN4absl12lts_2025051213base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) %i.o) #17
  br label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit.i

_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit.i: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i.i, %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.i
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load atomic ptr, ptr %i.u acquire, align 8 ; 3 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %.split.i, label %.split5.i

.split5.i:                                        ; preds = %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store atomic ptr %i.d, ptr %i.w release, align 8
  br label %.split.i

.split.i:                                         ; preds = %.split5.i, %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store atomic ptr %i.v, ptr %i.x release, align 8
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store atomic ptr %i.d, ptr %i.z release, align 8
  %i.aa = load atomic i32, ptr %i.o monotonic, align 4
  %i.ab = and i32 %i.aa, 2
  %i.ac = atomicrmw xchg ptr %i.o, i32 %i.ab release, align 4 ; 2 uses
  %.not4.i.i.i = icmp ult i32 %i.ac, 8
  br i1 %.not4.i.i.i, label %_ZN4absl12lts_2025051213cord_internal9CordzInfo5TrackEv.exit, label %bb.e

bb.e:                                             ; preds = %.split.i
  invoke void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) %i.o, i32 noundef %i.ac) #17
          to label %_ZN4absl12lts_2025051213cord_internal9CordzInfo5TrackEv.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #18
  unreachable

_ZN4absl12lts_2025051213cord_internal9CordzInfo5TrackEv.exit: ; preds = %.split.i, %bb.e
  ret void

bb.g:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 1344) #19
  resume { ptr, i32 } %i.af
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051213cord_internal9CordzInfo7UntrackEv(ptr noundef nonnull align 8 dereferenceable(1344) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 6 uses
  %i.c = load atomic i32, ptr %i.b monotonic, align 4 ; 4 uses
  %.not.i.i.i.i = trunc i32 %i.c to i1
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.a

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.a: ; preds = %bb.a
  %i.d = or disjoint i32 %i.c, 1
  %i.e = cmpxchg ptr %i.b, i32 %i.c, i32 %i.d acquire monotonic, align 4
  %i.f = extractvalue { i32, i1 } %i.e, 0
  br label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.a, %bb.a
  %.04.i.i.i.i = phi i32 [ %i.c, %bb.a ], [ %i.f, %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i.a ]
  %1 = trunc i32 %.04.i.i.i.i to i1
  br i1 %1, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i, label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i
  tail call void @_ZN4absl12lts_2025051213base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) %i.b) #17
  br label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit

_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i, %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load atomic ptr, ptr %i.h acquire, align 8 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load atomic ptr, ptr %i.j acquire, align 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load atomic ptr, ptr %i.l acquire, align 8 ; 3 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store atomic ptr %i.m, ptr %i.n release, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit
  %.not11 = icmp eq ptr %i.m, null
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store atomic ptr %i.k, ptr %i.o release, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store atomic ptr %i.k, ptr %i.q release, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = load atomic i32, ptr %i.b monotonic, align 4
  %i.s = and i32 %i.r, 2
  %i.t = atomicrmw xchg ptr %i.b, i32 %i.s release, align 4 ; 2 uses
  %.not4.i.i = icmp ult i32 %i.t, 8
  br i1 %.not4.i.i, label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.t) #17
          to label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #18
  unreachable

_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev.exit: ; preds = %bb.f, %bb.g
  %i.w = tail call noundef zeroext i1 @_ZNK4absl12lts_2025051213cord_internal11CordzHandle12SafeToDeleteEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.x, align 8, !tbaa !29
  %i.y = load ptr, ptr %0, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(1344) %0) #20
  br label %bb.n

bb.j:                                             ; preds = %_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !29 ; 2 uses
  %.not12 = icmp eq ptr %i.ad, null
  br i1 %.not12, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = atomicrmw add ptr %i.ae, i32 2 monotonic, align 4 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit13 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #18
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit13:      ; preds = %bb.l
  tail call void @_ZN4absl12lts_2025051213cord_internal11CordzHandle6DeleteEPS2_(ptr noundef nonnull %0)
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %_ZN4absl12lts_202505129MutexLockD2Ev.exit13
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051213cord_internal9CordzInfo18MaybeTrackCordImplERNS1_10InlineDataERKS3_NS1_18CordzUpdateTracker16MethodIdentifierE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #2 align 2 {
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
define noundef i32 @_ZN4absl12lts_2025051213cord_internal9CordzInfo15GetParentMethodEPKS2_(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #5 align 2 {
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
define noundef i64 @_ZN4absl12lts_2025051213cord_internal9CordzInfo15FillParentStackEPKS2_PPv(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #6 align 2 {
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
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2025051213cord_internal9CordzInfoE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @_ZN4absl12lts_2025051213cord_internal9CordzInfo12global_list_E, ptr %i.a, align 8, !tbaa !27
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
end_hunk_0
