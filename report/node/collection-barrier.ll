inline.NumInlined: 416
inline.NumDeleted: 250
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"struct.std::source_location::__impl" = type { ptr, ptr, i32, i32 }
%"class.v8::SourceLocation" = type { %"struct.std::source_location" }
%"struct.std::source_location" = type { ptr }
%"class.std::unique_ptr.443" = type { %"struct.std::__uniq_ptr_data.444" }
%"struct.std::__uniq_ptr_data.444" = type { %"class.std::__uniq_ptr_impl.445" }
%"class.std::__uniq_ptr_impl.445" = type { %"class.std::tuple.446" }
%"class.std::tuple.446" = type { %"struct.std::_Tuple_impl.447" }
%"struct.std::_Tuple_impl.447" = type { %"struct.std::_Head_base.450" }
%"struct.std::_Head_base.450" = type { ptr }
%"struct.std::pair" = type { i32, ptr }
%class.anon.574 = type { ptr, %class.anon }
%class.anon = type { ptr, ptr }
%"class.std::unique_ptr.587" = type { %"struct.std::__uniq_ptr_data.588" }
%"struct.std::__uniq_ptr_data.588" = type { %"class.std::__uniq_ptr_impl.589" }
%"class.std::__uniq_ptr_impl.589" = type { %"class.std::tuple.590" }
%"class.std::tuple.590" = type { %"struct.std::_Tuple_impl.591" }
%"struct.std::_Tuple_impl.591" = type { %"struct.std::_Head_base.594" }
%"struct.std::_Head_base.594" = type { ptr }
%"class.v8::base::TimeDelta" = type { i64 }

$_ZN2v88internal14CancelableTaskD2Ev = comdat any

$_ZN2v88internal33BackgroundCollectionInterruptTaskD0Ev = comdat any

$_ZN2v88internal14CancelableTask3RunEv = comdat any

$_ZN2v88internal33BackgroundCollectionInterruptTask11RunInternalEv = comdat any

$_ZThn32_N2v88internal33BackgroundCollectionInterruptTaskD1Ev = comdat any

$_ZThn32_N2v88internal33BackgroundCollectionInterruptTaskD0Ev = comdat any

$_ZThn32_N2v88internal14CancelableTask3RunEv = comdat any

$_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEEixERS7_ = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_ = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE5eraseERS1_ = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E = comdat any

$_ZTVN2v88internal33BackgroundCollectionInterruptTaskE = comdat any

@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"!timer_.IsStarted()\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"timer_.IsStarted()\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"../../deps/v8/src/heap/collection-barrier.cc\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"bool v8::internal::CollectionBarrier::AwaitCollectionBackground(LocalHeap *)\00", align 1
@.constant = private unnamed_addr constant %"struct.std::source_location::__impl" { ptr @.str.3, ptr @.str.4, i32 115, i32 30 }, align 8
@_ZZN2v88internal17CollectionBarrier25StopTimeToCollectionTimerEvE28trace_event_unique_atomic149 = internal global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"disabled-by-default-v8.gc\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"V8.GC.TimeToCollectionOnBackground\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"duration\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVN2v88internal33BackgroundCollectionInterruptTaskE = linkonce_odr hidden unnamed_addr constant { [6 x ptr], [5 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal14CancelableTaskD2Ev, ptr @_ZN2v88internal33BackgroundCollectionInterruptTaskD0Ev, ptr @_ZN2v88internal14CancelableTask3RunEv, ptr @_ZN2v88internal33BackgroundCollectionInterruptTask11RunInternalEv], [5 x ptr] [ptr inttoptr (i64 -32 to ptr), ptr null, ptr @_ZThn32_N2v88internal33BackgroundCollectionInterruptTaskD1Ev, ptr @_ZThn32_N2v88internal33BackgroundCollectionInterruptTaskD0Ev, ptr @_ZThn32_N2v88internal14CancelableTask3RunEv] }, comdat, align 8
@_ZN2v88internal18g_current_isolate_E = external thread_local(localexec) local_unnamed_addr global ptr, align 8
@_ZN2v88internal21g_current_local_heap_E = external thread_local(localexec) local_unnamed_addr global ptr, align 8

@_ZN2v88internal17CollectionBarrierC1EPNS0_4HeapESt10shared_ptrINS_10TaskRunnerEE = hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN2v88internal17CollectionBarrierC2EPNS0_4HeapESt10shared_ptrINS_10TaskRunnerEE

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal17CollectionBarrierC2EPNS0_4HeapESt10shared_ptrINS_10TaskRunnerEE(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 8)) %0, ptr noundef %1, ptr noundef readonly captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2v84base17ConditionVariableC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.c, i8 0, i64 12, i1 false)
  %i.e = load ptr, ptr %2, align 8
  store ptr %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  store ptr %i.h, ptr %i.f, align 8
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN2v810TaskRunnerEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.i, align 4
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4
  br label %_ZNSt10shared_ptrIN2v810TaskRunnerEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN2v810TaskRunnerEEC2ERKS2_.exit

_ZNSt10shared_ptrIN2v810TaskRunnerEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

declare void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN2v84base17ConditionVariableC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define hidden noundef zeroext i1 @_ZN2v88internal17CollectionBarrier14WasGCRequestedEv(ptr noundef nonnull align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load atomic i8, ptr %i.a seq_cst, align 8, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal17CollectionBarrier12TryRequestGCEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 35
  %i.c = load i8, ptr %i.b, align 1, !range !5, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  br i1 %i.d, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = atomicrmw xchg ptr %i.e, i8 1 seq_cst, align 1
  %i.g = trunc i8 %i.f to i1
  br i1 %i.g, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.e, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = tail call i64 @_ZN2v84base9TimeTicks3NowEv() #13
  store i64 %i.j, ptr %i.h, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %bb.b, %bb.e, %bb.a
  %.0 = xor i1 %i.d, true
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #13
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal17CollectionBarrier23NotifyShutdownRequestedEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.b, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 1, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2v84base17ConditionVariable9NotifyAllEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #13
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #13
  ret void
}

declare void @_ZN2v84base17ConditionVariable9NotifyAllEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal17CollectionBarrier31ResumeThreadsAwaitingCollectionEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic i8 0, ptr %i.b seq_cst, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 0, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 1, ptr %i.d, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2v84base17ConditionVariable9NotifyAllEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #13
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal17CollectionBarrier32CancelCollectionAndResumeThreadsEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.b, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic i8 0, ptr %i.d seq_cst, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal17CollectionBarrier25StopTimeToCollectionTimerEv:bb.a
  call void %i.aj(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #13, !inline_history !15
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, %bb.f
  %i.ak = load ptr, ptr %0, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = add i64 %i.al, -55464
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 58656
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4600 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4624 ; 3 uses
  %i.as = load atomic ptr, ptr %i.ar acquire, align 8
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.i, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 4640 ; 2 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.au) #13
  %i.av = load atomic ptr, ptr %i.ar monotonic, align 8
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.j, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.ax = call noundef ptr @_ZNK2v88internal9Histogram15CreateHistogramEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aq) #13
  store atomic ptr %i.ax, ptr %i.ar release, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i:  ; preds = %bb.j, %bb.i
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.au) #13
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %bb.h, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i
  %.sroa.0.0.copyload = load i64, ptr %2, align 8
  call void @_ZN2v88internal14TimedHistogram14AddTimedSampleENS_4base9TimeDeltaE(ptr noundef nonnull align 8 dereferenceable(52) %i.aq, i64 %.sroa.0.0.copyload) #13
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #13
  br label %bb.k

bb.k:                                             ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, %bb.a
  ret void
}

declare noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() local_unnamed_addr #1

declare noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN2v88internal14TimedHistogram14AddTimedSampleENS_4base9TimeDeltaE(ptr noundef nonnull align 8 dereferenceable(52), i64) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i64 @_ZN2v84base9TimeTicks3NowEv() local_unnamed_addr #1

declare void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN2v88internal10StackGuard16RequestInterruptENS1_13InterruptFlagE(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #1

declare void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef ptr @_ZNK2v88internal9Histogram15CreateHistogramEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

declare void @_ZN2v88internal14CancelableTaskC2EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal14CancelableTaskD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN2v88internal10CancelableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal33BackgroundCollectionInterruptTaskD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN2v88internal10CancelableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(48) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal14CancelableTask3RunEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = cmpxchg ptr %i.a, i32 0, i32 2 acq_rel acquire, align 4
  %i.c = extractvalue { i32, i1 } %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal33BackgroundCollectionInterruptTask11RunInternalEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, -55464
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @_ZN2v88internal7Isolate10SetCurrentEPS1_(ptr noundef %i.e) #13
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = add i64 %i.i, -55464
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = tail call noundef ptr @_ZN2v88internal7Isolate22main_thread_local_heapEv(ptr noundef nonnull align 8 dereferenceable(64320) %i.k) #13
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal21g_current_local_heap_E)
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @_ZN2v88internal9LocalHeap10SetCurrentEPS1_(ptr noundef %i.l) #13
  %i.o = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal4Heap24CheckCollectionRequestedEv(ptr noundef nonnull align 8 dereferenceable(2992) %i.o) #13
  tail call void @_ZN2v88internal9LocalHeap10SetCurrentEPS1_(ptr noundef %i.n) #13
  tail call void @_ZN2v88internal7Isolate10SetCurrentEPS1_(ptr noundef %i.g) #13
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr hidden void @_ZThn32_N2v88internal33BackgroundCollectionInterruptTaskD1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN2v88internal10CancelableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(48) %i.a) #13
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr hidden void @_ZThn32_N2v88internal33BackgroundCollectionInterruptTaskD0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32 ; 2 uses
  tail call void @_ZN2v88internal10CancelableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(48) %i.a) #13
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef 48) #16
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr hidden void @_ZThn32_N2v88internal14CancelableTask3RunEv(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = cmpxchg ptr %i.a, i32 0, i32 2 acq_rel acquire, align 4
  %i.c = extractvalue { i32, i1 } %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZN2v88internal14CancelableTask3RunEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #13, !inline_history !16
  br label %_ZN2v88internal14CancelableTask3RunEv.exit

_ZN2v88internal14CancelableTask3RunEv.exit:       ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2v88internal10CancelableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @_ZN2v88internal4Heap24CheckCollectionRequestedEv(ptr noundef nonnull align 8 dereferenceable(2992)) local_unnamed_addr #1

declare void @_ZN2v88internal7Isolate10SetCurrentEPS1_(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #10

declare noundef ptr @_ZN2v88internal7Isolate22main_thread_local_heapEv(ptr noundef nonnull align 8 dereferenceable(64320)) local_unnamed_addr #1

declare void @_ZN2v88internal9LocalHeap10SetCurrentEPS1_(ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(80) ptr @_ZN2v88internal4Heap5stackEv(ptr noundef nonnull align 8 dereferenceable(2992)) local_unnamed_addr #1

declare void @_ZN4heap4base5Stack24TrampolineCallbackHelperEPvPFvPS1_S2_PKvE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4heap4base5Stack24SetMarkerAndCallbackImplIZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS4_17CollectionBarrier25AwaitCollectionBackgroundEPS5_E3$_0EEvT_EUlvE_EEvPS1_PvPKv"(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef %2) #0 align 2 {
bb.a:
  %.sroa.0.0.copyload = load <2 x ptr>, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = load ptr, ptr %1, align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 9 ; 2 uses
  %i.h = cmpxchg weak ptr %i.g, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.i = extractvalue { i8, i1 } %i.h, 1
  br i1 %i.i, label %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal9LocalHeap12ParkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.b) #13
  br label %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i

_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i: ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #13
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 33 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !range !5, !noundef !6
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 35
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.p = load i8, ptr %i.n, align 1, !range !5, !noundef !6
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %"_ZZN2v88internal17CollectionBarrier25AwaitCollectionBackgroundEPNS0_9LocalHeapEENK3$_0clEv.exit.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v84base17ConditionVariable4WaitEPNS0_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.j) #13
  %i.r = load i8, ptr %i.k, align 1, !range !5, !noundef !6
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.c, label %._crit_edge.i.i, !llvm.loop !17

._crit_edge.i.i:                                  ; preds = %bb.d, %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 34
  %i.u = load i8, ptr %i.t, align 2, !range !5, !noundef !6
  br label %"_ZZN2v88internal17CollectionBarrier25AwaitCollectionBackgroundEPNS0_9LocalHeapEENK3$_0clEv.exit.i"

"_ZZN2v88internal17CollectionBarrier25AwaitCollectionBackgroundEPNS0_9LocalHeapEENK3$_0clEv.exit.i": ; preds = %bb.c, %._crit_edge.i.i
  %storemerge.i.i = phi i8 [ %i.u, %._crit_edge.i.i ], [ 0, %bb.c ]
  store i8 %storemerge.i.i, ptr %.sroa.2.0.copyload.i, align 1
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #13
  %i.v = load i32, ptr %i.d, align 4
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.d, align 4
  %i.x = cmpxchg weak ptr %i.g, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.y = extractvalue { i8, i1 } %i.x, 1
  br i1 %i.y, label %"_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_17CollectionBarrier25AwaitCollectionBackgroundEPS1_E3$_0EEvT_ENKUlvE_clEv.exit", label %bb.e

bb.e:                                             ; preds = %"_ZZN2v88internal17CollectionBarrier25AwaitCollectionBackgroundEPNS0_9LocalHeapEENK3$_0clEv.exit.i"
  tail call void @_ZN2v88internal9LocalHeap14UnparkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.b) #13
  br label %"_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_17CollectionBarrier25AwaitCollectionBackgroundEPS1_E3$_0EEvT_ENKUlvE_clEv.exit"

"_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_17CollectionBarrier25AwaitCollectionBackgroundEPS1_E3$_0EEvT_ENKUlvE_clEv.exit": ; preds = %"_ZZN2v88internal17CollectionBarrier25AwaitCollectionBackgroundEPNS0_9LocalHeapEENK3$_0clEv.exit.i", %bb.e
  store <2 x ptr> %.sroa.0.0.copyload, ptr %0, align 8
  ret void
}

declare void @_ZN2v88internal9LocalHeap12ParkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944)) local_unnamed_addr #1

declare void @_ZN2v84base17ConditionVariable4WaitEPNS0_5MutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare void @_ZN2v88internal9LocalHeap14UnparkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4heap4base5Stack43SetMarkerForBackgroundThreadAndCallbackImplIZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS4_17CollectionBarrier25AwaitCollectionBackgroundEPS5_E3$_0EEvT_EUlvE_EEvPS1_PvPKv"(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) #0 align 2 {
bb.a:
  %3 = alloca %"struct.std::pair", align 8        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.g = load i32, ptr %3, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp slt i32 %i.i, %i.g                  ; 2 uses
  %.19.i.i.i = select i1 %i.j, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.j, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %bb.b, !llvm.loop !19

_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %bb.b
  %i.k = icmp eq ptr %.19.i.i.i, %i.f
  br i1 %i.k, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit

_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp slt i32 %i.g, %i.m
  br i1 %i.n, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %.sroa.023.0.copyload = load ptr, ptr %i.o, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 48
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.a, %_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit, %bb.c
  %.sroa.5.0 = phi ptr [ null, %_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit ], [ %.sroa.5.0.copyload, %bb.c ], [ null, %bb.a ], [ null, %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i ] ; 2 uses
  %.sroa.023.0 = phi ptr [ null, %_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit ], [ %.sroa.023.0.copyload, %bb.c ], [ null, %bb.a ], [ null, %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i ]
  %i.p = tail call i64 @_ZN2v84base5Stack13GetStackStartEv() #13
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 2 uses
  store ptr %i.q, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #13
  %i.s = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.u, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 12 ; 4 uses
  %i.w = load i32, ptr %i.v, align 4
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 9 ; 2 uses
  %i.z = cmpxchg weak ptr %i.y, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.aa = extractvalue { i8, i1 } %i.z, 1
  br i1 %i.aa, label %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
  call void @_ZN2v88internal9LocalHeap12ParkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.t) #13
  br label %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i

_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i: ; preds = %bb.d, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) #13
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 33 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !range !5, !noundef !6
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 35
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.ah = load i8, ptr %i.af, align 1, !range !5, !noundef !6
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %"_ZZN2v88internal17CollectionBarrier25AwaitCollectionBackgroundEPNS0_9LocalHeapEENK3$_0clEv.exit.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN2v84base17ConditionVariable4WaitEPNS0_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull %i.ab) #13
  %i.aj = load i8, ptr %i.ac, align 1, !range !5, !noundef !6
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.e, label %._crit_edge.i.i, !llvm.loop !17

._crit_edge.i.i:                                  ; preds = %bb.f, %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 34
  %i.am = load i8, ptr %i.al, align 2, !range !5, !noundef !6
  br label %"_ZZN2v88internal17CollectionBarrier25AwaitCollectionBackgroundEPNS0_9LocalHeapEENK3$_0clEv.exit.i"

"_ZZN2v88internal17CollectionBarrier25AwaitCollectionBackgroundEPNS0_9LocalHeapEENK3$_0clEv.exit.i": ; preds = %bb.e, %._crit_edge.i.i
  %storemerge.i.i = phi i8 [ %i.am, %._crit_edge.i.i ], [ 0, %bb.e ]
  store i8 %storemerge.i.i, ptr %.sroa.2.0.copyload.i, align 1
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) #13
  %i.an = load i32, ptr %i.v, align 4
  %i.ao = add nsw i32 %i.an, -1
  store i32 %i.ao, ptr %i.v, align 4
  %i.ap = cmpxchg weak ptr %i.y, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.aq = extractvalue { i8, i1 } %i.ap, 1
  br i1 %i.aq, label %"_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_17CollectionBarrier25AwaitCollectionBackgroundEPS1_E3$_0EEvT_ENKUlvE_clEv.exit", label %bb.g

bb.g:                                             ; preds = %"_ZZN2v88internal17CollectionBarrier25AwaitCollectionBackgroundEPNS0_9LocalHeapEENK3$_0clEv.exit.i"
  call void @_ZN2v88internal9LocalHeap14UnparkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.t) #13
  br label %"_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_17CollectionBarrier25AwaitCollectionBackgroundEPS1_E3$_0EEvT_ENKUlvE_clEv.exit"

"_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_17CollectionBarrier25AwaitCollectionBackgroundEPS1_E3$_0EEvT_ENKUlvE_clEv.exit": ; preds = %"_ZZN2v88internal17CollectionBarrier25AwaitCollectionBackgroundEPNS0_9LocalHeapEENK3$_0clEv.exit.i", %bb.g
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #13
  %.not = icmp eq ptr %.sroa.5.0, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %"_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_17CollectionBarrier25AwaitCollectionBackgroundEPS1_E3$_0EEvT_ENKUlvE_clEv.exit"
  %i.ar = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 2 uses
  store ptr %.sroa.023.0, ptr %i.ar, align 8
  %.sroa.5.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx25, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit16

bb.i:                                             ; preds = %"_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_17CollectionBarrier25AwaitCollectionBackgroundEPS1_E3$_0EEvT_ENKUlvE_clEv.exit"
  %i.as = call noundef i64 @_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE5eraseERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 0 uses
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit16

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit16:    ; preds = %bb.i, %bb.h
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void
}

declare i64 @_ZN2v84base5Stack13GetStackStartEv() local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  %.pre = load i32, ptr %1, align 4               ; 3 uses
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp slt i32 %i.e, %.pre                 ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !19

_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp slt i32 %.pre, %i.i
  br i1 %i.j, label %.critedge, label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit, %bb.b
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.b ], [ %.19.i.i.i, %_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit ], [ %i.c, %bb.a ]
  %i.k = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #15 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  store i32 %.pre, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.n = tail call { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 4 dereferenceable(4) %i.l) ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.p, null
end_hunk_1
