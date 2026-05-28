inline.NumInlined: 135
inline.NumDeleted: 82
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CallbackAndCookie = type <{ ptr, ptr, %"struct.std::atomic", [4 x i8] }>
%"struct.std::atomic" = type { i32 }
%"struct.std::atomic.0" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { ptr }
%"struct.std::atomic.1" = type { %"struct.std::__atomic_base.2" }
%"struct.std::__atomic_base.2" = type { ptr }
%"struct.std::atomic.3" = type { %"struct.std::__atomic_base.4" }
%"struct.std::__atomic_base.4" = type { ptr }
%"class.llvh::StringRef" = type { ptr, i64 }
%struct.stack_t = type { ptr, i32, i64 }
%struct.anon = type { %struct.sigaction, i32 }
%struct.sigaction = type { %union.anon.8, %struct.__sigset_t, i32, ptr }
%union.anon.8 = type { ptr }
%struct.__sigset_t = type { [16 x i64] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

$_ZN4llvh14object_creatorINS_3sys10SmartMutexILb1EEEE4callEv = comdat any

$_ZN4llvh14object_deleterINS_3sys10SmartMutexILb1EEEE4callEPv = comdat any

@_ZL14CallBacksToRun = internal global [8 x %struct.CallbackAndCookie] zeroinitializer, align 16
@_ZL18NewAltStackPointer = internal global ptr null, align 8
@_ZN12_GLOBAL__N_126FilesToRemoveInterruptFuncE.0 = internal unnamed_addr global ptr null, align 8
@_ZL17InterruptFunction = internal global %"struct.std::atomic.0" zeroinitializer, align 8
@_ZZN4llvh3sys18RemoveFileOnSignalENS_9StringRefEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE20FilesToRemoveCleanup = internal global { %"struct.std::atomic.1", ptr, ptr } zeroinitializer, align 8
@_ZN12_GLOBAL__N_113FilesToRemoveE = internal global %"struct.std::atomic.3" zeroinitializer, align 8
@_ZL5Argv0 = internal unnamed_addr global %"class.llvh::StringRef" zeroinitializer, align 8
@_ZZL16RegisterHandlersvE30SignalHandlerRegistrationMutex = internal global { %"struct.std::atomic.1", ptr, ptr } zeroinitializer, align 8
@_ZL20NumRegisteredSignals = internal global { i32 } zeroinitializer, align 4
@_ZL11OldAltStack = internal global %struct.stack_t zeroinitializer, align 8
@.str = private unnamed_addr constant [18 x i8] c"Allocation failed\00", align 1
@_ZL20RegisteredSignalInfo = internal global [16 x %struct.anon] zeroinitializer, align 16
@_ZZN12_GLOBAL__N_116FileToRemoveList5eraseERSt6atomicIPS0_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4Lock = internal global { %"struct.std::atomic.1", ptr, ptr } zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"too many signal callbacks already registered\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @_ZL18NewAltStackPointer], section "llvm.metadata"

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh3sys17RunSignalHandlersEv() local_unnamed_addr #0 {
bb.a:
  %i.a = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 16), i32 2, i32 3 seq_cst seq_cst, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZL14CallBacksToRun, align 16, !tbaa !7
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 8), align 8, !tbaa !12
  tail call void %i.c(ptr noundef %i.d) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_ZL14CallBacksToRun, i8 0, i64 16, i1 false)
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 16) seq_cst, align 16
  br label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit

_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit: ; preds = %bb.a, %bb.b
  %i.e = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 40), i32 2, i32 3 seq_cst seq_cst, align 4
  %i.f = extractvalue { i32, i1 } %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.1

bb.c:                                             ; preds = %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 24), align 8, !tbaa !7
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 32), align 16, !tbaa !12
  tail call void %i.g(ptr noundef %i.h) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 24), i8 0, i64 16, i1 false)
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 40) seq_cst, align 8
  br label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.1

_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.1: ; preds = %bb.c, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit
  %i.i = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 64), i32 2, i32 3 seq_cst seq_cst, align 4
  %i.j = extractvalue { i32, i1 } %i.i, 1
  br i1 %i.j, label %bb.d, label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.2

bb.d:                                             ; preds = %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.1
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 48), align 16, !tbaa !7
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 56), align 8, !tbaa !12
  tail call void %i.k(ptr noundef %i.l) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 48), i8 0, i64 16, i1 false)
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 64) seq_cst, align 16
  br label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.2

_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.2: ; preds = %bb.d, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.1
  %i.m = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 88), i32 2, i32 3 seq_cst seq_cst, align 4
  %i.n = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.n, label %bb.e, label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.3

bb.e:                                             ; preds = %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.2
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 72), align 8, !tbaa !7
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 80), align 16, !tbaa !12
  tail call void %i.o(ptr noundef %i.p) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 72), i8 0, i64 16, i1 false)
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 88) seq_cst, align 8
  br label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.3

_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.3: ; preds = %bb.e, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.2
  %i.q = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 112), i32 2, i32 3 seq_cst seq_cst, align 4
  %i.r = extractvalue { i32, i1 } %i.q, 1
  br i1 %i.r, label %bb.f, label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.4

bb.f:                                             ; preds = %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.3
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 96), align 16, !tbaa !7
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 104), align 8, !tbaa !12
  tail call void %i.s(ptr noundef %i.t) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 96), i8 0, i64 16, i1 false)
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 112) seq_cst, align 16
  br label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.4

_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.4: ; preds = %bb.f, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.3
  %i.u = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 136), i32 2, i32 3 seq_cst seq_cst, align 4
  %i.v = extractvalue { i32, i1 } %i.u, 1
  br i1 %i.v, label %bb.g, label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.5

bb.g:                                             ; preds = %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.4
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 120), align 8, !tbaa !7
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 128), align 16, !tbaa !12
  tail call void %i.w(ptr noundef %i.x) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 120), i8 0, i64 16, i1 false)
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 136) seq_cst, align 8
  br label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.5

_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.5: ; preds = %bb.g, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.4
  %i.y = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 160), i32 2, i32 3 seq_cst seq_cst, align 4
  %i.z = extractvalue { i32, i1 } %i.y, 1
  br i1 %i.z, label %bb.h, label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.6

bb.h:                                             ; preds = %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.5
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 144), align 16, !tbaa !7
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 152), align 8, !tbaa !12
  tail call void %i.aa(ptr noundef %i.ab) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 144), i8 0, i64 16, i1 false)
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 160) seq_cst, align 16
  br label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.6

_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.6: ; preds = %bb.h, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.5
  %i.ac = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 184), i32 2, i32 3 seq_cst seq_cst, align 4
  %i.ad = extractvalue { i32, i1 } %i.ac, 1
  br i1 %i.ad, label %bb.i, label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.7

bb.i:                                             ; preds = %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.6
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 168), align 8, !tbaa !7
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 176), align 16, !tbaa !12
  tail call void %i.ae(ptr noundef %i.af) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 168), i8 0, i64 16, i1 false)
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 184) seq_cst, align 8
  br label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.7

_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.7: ; preds = %bb.i, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh3sys20RunInterruptHandlersEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic ptr, ptr @_ZN12_GLOBAL__N_126FilesToRemoveInterruptFuncE.0 seq_cst, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZL19RemoveFilesToRemovev() #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh3sys20SetInterruptFunctionEPFvvE(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = atomicrmw xchg ptr @_ZL17InterruptFunction, ptr %0 seq_cst, align 8 ; 0 uses
  tail call fastcc void @_ZL16RegisterHandlersv()
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL16RegisterHandlersv() unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.sigaction, align 8          ; 42 uses
  %1 = alloca %struct.sigaction, align 8          ; 26 uses
  %2 = alloca %struct.stack_t, align 8            ; 7 uses
  %i.a = load atomic ptr, ptr @_ZZL16RegisterHandlersvE30SignalHandlerRegistrationMutex acquire, align 8
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZL16RegisterHandlersvE30SignalHandlerRegistrationMutex, ptr noundef nonnull @_ZN4llvh14object_creatorINS_3sys10SmartMutexILb1EEEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterINS_3sys10SmartMutexILb1EEEE4callEPv) #17
  br label %_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit

_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit: ; preds = %bb.a, %bb.b
  %i.b = load atomic ptr, ptr @_ZZL16RegisterHandlersvE30SignalHandlerRegistrationMutex monotonic, align 8 ; 4 uses
  %i.c = tail call noundef zeroext i1 @_ZN4llvh21llvm_is_multithreadedEv() #17
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit
  %i.d = tail call noundef zeroext i1 @_ZN4llvh3sys9MutexImpl7acquireEv(ptr noundef nonnull align 8 dereferenceable(13) %i.b) #17 ; 0 uses
  br label %_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit

bb.d:                                             ; preds = %_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !13
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !13
  br label %_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit

_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit: ; preds = %bb.c, %bb.d
  %i.h = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit
  %i.i = tail call i64 @sysconf(i32 noundef 250) #17
  %i.j = add nsw i64 %i.i, 65536                  ; 3 uses
  %i.k = tail call i32 @sigaltstack(ptr noundef null, ptr noundef nonnull @_ZL11OldAltStack) #17
  %.not.i12 = icmp eq i32 %i.k, 0
  br i1 %.not.i12, label %bb.f, label %_ZL17CreateSigAltStackv.exit

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL11OldAltStack, i64 8), align 8, !tbaa !17
  %i.m = and i32 %i.l, 1
  %.not3.i = icmp eq i32 %i.m, 0
  br i1 %.not3.i, label %bb.g, label %_ZL17CreateSigAltStackv.exit

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr @_ZL11OldAltStack, align 8, !tbaa !20
  %.not4.i = icmp eq ptr %i.n, null
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL11OldAltStack, i64 16), align 8
  %.not5.i = icmp ult i64 %i.o, %i.j
  %or.cond.i = select i1 %.not4.i, i1 true, i1 %.not5.i
  br i1 %or.cond.i, label %bb.h, label %_ZL17CreateSigAltStackv.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.p, align 8
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.j) #18 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.i, label %_ZN4llvh11safe_mallocEm.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str, i1 noundef zeroext true) #17
  br label %_ZN4llvh11safe_mallocEm.exit.i

_ZN4llvh11safe_mallocEm.exit.i:                   ; preds = %bb.i, %bb.h
  store ptr %i.q, ptr %2, align 8, !tbaa !20
  store ptr %i.q, ptr @_ZL18NewAltStackPointer, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.j, ptr %i.s, align 8, !tbaa !22
  %i.t = call i32 @sigaltstack(ptr noundef nonnull %2, ptr noundef nonnull @_ZL11OldAltStack) #17
  %.not6.i = icmp eq i32 %i.t, 0
  br i1 %.not6.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4llvh11safe_mallocEm.exit.i
  %i.u = load ptr, ptr %2, align 8, !tbaa !20
  call void @free(ptr noundef %i.u) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4llvh11safe_mallocEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZL17CreateSigAltStackv.exit

_ZL17CreateSigAltStackv.exit:                     ; preds = %bb.e, %bb.f, %bb.g, %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.x = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store ptr @_ZL13SignalHandleri, ptr %1, align 8, !tbaa !23
  store i32 -939524096, ptr %i.v, align 8, !tbaa !24
  %i.y = call i32 @sigemptyset(ptr noundef nonnull %i.w) #17 ; 0 uses
  %i.z = zext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [160 x i8], ptr @_ZL20RegisteredSignalInfo, i64 %i.z ; 2 uses
  %i.ab = call i32 @sigaction(i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %i.aa) #17 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  store i32 1, ptr %i.ac, align 8, !tbaa !27
  %i.ad = atomicrmw add ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.ae = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store ptr @_ZL13SignalHandleri, ptr %1, align 8, !tbaa !23
  store i32 -939524096, ptr %i.v, align 8, !tbaa !24
  %i.af = call i32 @sigemptyset(ptr noundef nonnull %i.w) #17 ; 0 uses
  %i.ag = zext i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [160 x i8], ptr @_ZL20RegisteredSignalInfo, i64 %i.ag ; 2 uses
  %i.ai = call i32 @sigaction(i32 noundef 2, ptr noundef nonnull %1, ptr noundef nonnull %i.ah) #17 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 152
  store i32 2, ptr %i.aj, align 8, !tbaa !27
  %i.ak = atomicrmw add ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.al = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store ptr @_ZL13SignalHandleri, ptr %1, align 8, !tbaa !23
  store i32 -939524096, ptr %i.v, align 8, !tbaa !24
  %i.am = call i32 @sigemptyset(ptr noundef nonnull %i.w) #17 ; 0 uses
  %i.an = zext i32 %i.al to i64
  %i.ao = getelementptr inbounds nuw [160 x i8], ptr @_ZL20RegisteredSignalInfo, i64 %i.an ; 2 uses
  %i.ap = call i32 @sigaction(i32 noundef 13, ptr noundef nonnull %1, ptr noundef nonnull %i.ao) #17 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 152
  store i32 13, ptr %i.aq, align 8, !tbaa !27
  %i.ar = atomicrmw add ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.as = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store ptr @_ZL13SignalHandleri, ptr %1, align 8, !tbaa !23
  store i32 -939524096, ptr %i.v, align 8, !tbaa !24
  %i.at = call i32 @sigemptyset(ptr noundef nonnull %i.w) #17 ; 0 uses
  %i.au = zext i32 %i.as to i64
  %i.av = getelementptr inbounds nuw [160 x i8], ptr @_ZL20RegisteredSignalInfo, i64 %i.au ; 2 uses
  %i.aw = call i32 @sigaction(i32 noundef 15, ptr noundef nonnull %1, ptr noundef nonnull %i.av) #17 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 152
  store i32 15, ptr %i.ax, align 8, !tbaa !27
  %i.ay = atomicrmw add ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.az = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store ptr @_ZL13SignalHandleri, ptr %1, align 8, !tbaa !23
  store i32 -939524096, ptr %i.v, align 8, !tbaa !24
  %i.ba = call i32 @sigemptyset(ptr noundef nonnull %i.w) #17 ; 0 uses
  %i.bb = zext i32 %i.az to i64
  %i.bc = getelementptr inbounds nuw [160 x i8], ptr @_ZL20RegisteredSignalInfo, i64 %i.bb ; 2 uses
  %i.bd = call i32 @sigaction(i32 noundef 10, ptr noundef nonnull %1, ptr noundef nonnull %i.bc) #17 ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 152
  store i32 10, ptr %i.be, align 8, !tbaa !27
  %i.bf = atomicrmw add ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.bg = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store ptr @_ZL13SignalHandleri, ptr %1, align 8, !tbaa !23
  store i32 -939524096, ptr %i.v, align 8, !tbaa !24
  %i.bh = call i32 @sigemptyset(ptr noundef nonnull %i.w) #17 ; 0 uses
  %i.bi = zext i32 %i.bg to i64
  %i.bj = getelementptr inbounds nuw [160 x i8], ptr @_ZL20RegisteredSignalInfo, i64 %i.bi ; 2 uses
  %i.bk = call i32 @sigaction(i32 noundef 12, ptr noundef nonnull %1, ptr noundef nonnull %i.bj) #17 ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 152
  store i32 12, ptr %i.bl, align 8, !tbaa !27
  %i.bm = atomicrmw add ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 10 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.bp = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  store ptr @_ZL13SignalHandleri, ptr %0, align 8, !tbaa !23
  store i32 -939524096, ptr %i.bn, align 8, !tbaa !24
  %i.bq = call i32 @sigemptyset(ptr noundef nonnull %i.bo) #17 ; 0 uses
  %i.br = zext i32 %i.bp to i64
  %i.bs = getelementptr inbounds nuw [160 x i8], ptr @_ZL20RegisteredSignalInfo, i64 %i.br ; 2 uses
  %i.bt = call i32 @sigaction(i32 noundef 4, ptr noundef nonnull %0, ptr noundef nonnull %i.bs) #17 ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 152
  store i32 4, ptr %i.bu, align 8, !tbaa !27
  %i.bv = atomicrmw add ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  %i.bw = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  store ptr @_ZL13SignalHandleri, ptr %0, align 8, !tbaa !23
  store i32 -939524096, ptr %i.bn, align 8, !tbaa !24
  %i.bx = call i32 @sigemptyset(ptr noundef nonnull %i.bo) #17 ; 0 uses
  %i.by = zext i32 %i.bw to i64
  %i.bz = getelementptr inbounds nuw [160 x i8], ptr @_ZL20RegisteredSignalInfo, i64 %i.by ; 2 uses
  %i.ca = call i32 @sigaction(i32 noundef 5, ptr noundef nonnull %0, ptr noundef nonnull %i.bz) #17 ; 0 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 152
  store i32 5, ptr %i.cb, align 8, !tbaa !27
  %i.cc = atomicrmw add ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  %i.cd = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  store ptr @_ZL13SignalHandleri, ptr %0, align 8, !tbaa !23
  store i32 -939524096, ptr %i.bn, align 8, !tbaa !24
  %i.ce = call i32 @sigemptyset(ptr noundef nonnull %i.bo) #17 ; 0 uses
  %i.cf = zext i32 %i.cd to i64
  %i.cg = getelementptr inbounds nuw [160 x i8], ptr @_ZL20RegisteredSignalInfo, i64 %i.cf ; 2 uses
  %i.ch = call i32 @sigaction(i32 noundef 6, ptr noundef nonnull %0, ptr noundef nonnull %i.cg) #17 ; 0 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 152
  store i32 6, ptr %i.ci, align 8, !tbaa !27
  %i.cj = atomicrmw add ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  %i.ck = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  store ptr @_ZL13SignalHandleri, ptr %0, align 8, !tbaa !23
  store i32 -939524096, ptr %i.bn, align 8, !tbaa !24
  %i.cl = call i32 @sigemptyset(ptr noundef nonnull %i.bo) #17 ; 0 uses
  %i.cm = zext i32 %i.ck to i64
  %i.cn = getelementptr inbounds nuw [160 x i8], ptr @_ZL20RegisteredSignalInfo, i64 %i.cm ; 2 uses
  %i.co = call i32 @sigaction(i32 noundef 8, ptr noundef nonnull %0, ptr noundef nonnull %i.cn) #17 ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 152
  store i32 8, ptr %i.cp, align 8, !tbaa !27
  %i.cq = atomicrmw add ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  %i.cr = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  store ptr @_ZL13SignalHandleri, ptr %0, align 8, !tbaa !23
  store i32 -939524096, ptr %i.bn, align 8, !tbaa !24
  %i.cs = call i32 @sigemptyset(ptr noundef nonnull %i.bo) #17 ; 0 uses
  %i.ct = zext i32 %i.cr to i64
  %i.cu = getelementptr inbounds nuw [160 x i8], ptr @_ZL20RegisteredSignalInfo, i64 %i.ct ; 2 uses
  %i.cv = call i32 @sigaction(i32 noundef 7, ptr noundef nonnull %0, ptr noundef nonnull %i.cu) #17 ; 0 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 152
  store i32 7, ptr %i.cw, align 8, !tbaa !27
  %i.cx = atomicrmw add ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  %i.cy = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  store ptr @_ZL13SignalHandleri, ptr %0, align 8, !tbaa !23
  store i32 -939524096, ptr %i.bn, align 8, !tbaa !24
  %i.cz = call i32 @sigemptyset(ptr noundef nonnull %i.bo) #17 ; 0 uses
  %i.da = zext i32 %i.cy to i64
  %i.db = getelementptr inbounds nuw [160 x i8], ptr @_ZL20RegisteredSignalInfo, i64 %i.da ; 2 uses
  %i.dc = call i32 @sigaction(i32 noundef 11, ptr noundef nonnull %0, ptr noundef nonnull %i.db) #17 ; 0 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 152
  store i32 11, ptr %i.dd, align 8, !tbaa !27
  %i.de = atomicrmw add ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  %i.df = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  store ptr @_ZL13SignalHandleri, ptr %0, align 8, !tbaa !23
  store i32 -939524096, ptr %i.bn, align 8, !tbaa !24
  %i.dg = call i32 @sigemptyset(ptr noundef nonnull %i.bo) #17 ; 0 uses
  %i.dh = zext i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [160 x i8], ptr @_ZL20RegisteredSignalInfo, i64 %i.dh ; 2 uses
  %i.dj = call i32 @sigaction(i32 noundef 3, ptr noundef nonnull %0, ptr noundef nonnull %i.di) #17 ; 0 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 152
  store i32 3, ptr %i.dk, align 8, !tbaa !27
  %i.dl = atomicrmw add ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  %i.dm = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  store ptr @_ZL13SignalHandleri, ptr %0, align 8, !tbaa !23
  store i32 -939524096, ptr %i.bn, align 8, !tbaa !24
  %i.dn = call i32 @sigemptyset(ptr noundef nonnull %i.bo) #17 ; 0 uses
  %i.do = zext i32 %i.dm to i64
  %i.dp = getelementptr inbounds nuw [160 x i8], ptr @_ZL20RegisteredSignalInfo, i64 %i.do ; 2 uses
  %i.dq = call i32 @sigaction(i32 noundef 31, ptr noundef nonnull %0, ptr noundef nonnull %i.dp) #17 ; 0 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 152
  store i32 31, ptr %i.dr, align 8, !tbaa !27
  %i.ds = atomicrmw add ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  %i.dt = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  store ptr @_ZL13SignalHandleri, ptr %0, align 8, !tbaa !23
  store i32 -939524096, ptr %i.bn, align 8, !tbaa !24
  %i.du = call i32 @sigemptyset(ptr noundef nonnull %i.bo) #17 ; 0 uses
  %i.dv = zext i32 %i.dt to i64
  %i.dw = getelementptr inbounds nuw [160 x i8], ptr @_ZL20RegisteredSignalInfo, i64 %i.dv ; 2 uses
  %i.dx = call i32 @sigaction(i32 noundef 24, ptr noundef nonnull %0, ptr noundef nonnull %i.dw) #17 ; 0 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 152
  store i32 24, ptr %i.dy, align 8, !tbaa !27
  %i.dz = atomicrmw add ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  %i.ea = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  store ptr @_ZL13SignalHandleri, ptr %0, align 8, !tbaa !23
  store i32 -939524096, ptr %i.bn, align 8, !tbaa !24
  %i.eb = call i32 @sigemptyset(ptr noundef nonnull %i.bo) #17 ; 0 uses
  %i.ec = zext i32 %i.ea to i64
  %i.ed = getelementptr inbounds nuw [160 x i8], ptr @_ZL20RegisteredSignalInfo, i64 %i.ec ; 2 uses
  %i.ee = call i32 @sigaction(i32 noundef 25, ptr noundef nonnull %0, ptr noundef nonnull %i.ed) #17 ; 0 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 152
  store i32 25, ptr %i.ef, align 8, !tbaa !27
  %i.eg = atomicrmw add ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  br label %.loopexit

.loopexit:                                        ; preds = %_ZL17CreateSigAltStackv.exit, %_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit
  %i.eh = call noundef zeroext i1 @_ZN4llvh21llvm_is_multithreadedEv() #17
  br i1 %i.eh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit
  %i.ei = call noundef zeroext i1 @_ZN4llvh3sys9MutexImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(13) %i.b) #17 ; 0 uses
  br label %_ZN4llvh3sys15SmartScopedLockILb1EED2Ev.exit

bb.m:                                             ; preds = %.loopexit
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !13
  %i.el = add i32 %i.ek, -1
  store i32 %i.el, ptr %i.ej, align 8, !tbaa !13
  br label %_ZN4llvh3sys15SmartScopedLockILb1EED2Ev.exit

_ZN4llvh3sys15SmartScopedLockILb1EED2Ev.exit:     ; preds = %bb.l, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4llvh3sys18RemoveFileOnSignalENS_9StringRefEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr readonly captures(address_is_null) %0, i64 %1, ptr noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = load atomic ptr, ptr @_ZZN4llvh3sys18RemoveFileOnSignalENS_9StringRefEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE20FilesToRemoveCleanup acquire, align 8
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_120FilesToRemoveCleanupENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4llvh3sys18RemoveFileOnSignalENS_9StringRefEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE20FilesToRemoveCleanup, ptr noundef nonnull @_ZN4llvh14object_creatorIN12_GLOBAL__N_120FilesToRemoveCleanupEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterIN12_GLOBAL__N_120FilesToRemoveCleanupEE4callEPv) #17
  br label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_120FilesToRemoveCleanupENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit

_ZN4llvh13ManagedStaticIN12_GLOBAL__N_120FilesToRemoveCleanupENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit: ; preds = %bb.a, %bb.b
  %i.c = load atomic ptr, ptr @_ZZN4llvh3sys18RemoveFileOnSignalENS_9StringRefEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE20FilesToRemoveCleanup monotonic, align 8 ; 0 uses
  store atomic ptr @_ZL19RemoveFilesToRemovev, ptr @_ZN12_GLOBAL__N_126FilesToRemoveInterruptFuncE.0 seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %.not.i1 = icmp eq ptr %0, null
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !32, !alias.scope !29
  br i1 %.not.i1, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_120FilesToRemoveCleanupENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !35, !alias.scope !29
  store i8 0, ptr %i.d, align 8, !tbaa !23, !alias.scope !29
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit

bb.d:                                             ; preds = %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_120FilesToRemoveCleanupENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !29
  store i64 %1, ptr %i.a, align 8, !tbaa !37, !noalias !29
  %i.f = icmp ugt i64 %1, 15
  br i1 %i.f, label %bb.e, label %._crit_edge.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #17 ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !38, !alias.scope !29
  %i.h = load i64, ptr %i.a, align 8, !tbaa !37, !noalias !29
  store i64 %i.h, ptr %i.d, align 8, !tbaa !23, !alias.scope !29
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.e, %bb.d
  %i.i = phi ptr [ %i.g, %bb.e ], [ %i.d, %bb.d ] ; 2 uses
  switch i64 %1, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %0, align 1, !tbaa !23
  store i8 %i.j, ptr %i.i, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %0, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !37, !noalias !29 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !35, !alias.scope !29
  %i.m = load ptr, ptr %3, align 8, !tbaa !38, !alias.scope !29
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !29
  %.val.pre = load ptr, ptr %3, align 8
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit

_ZNK4llvh9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  %.val = phi ptr [ %i.d, %bb.c ], [ %.val.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i ]
  %i.o = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19 ; 4 uses
  %i.p = call noalias ptr @strdup(ptr noundef readonly %.val) #17
  store ptr %i.p, ptr %i.o, align 8, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr null, ptr %i.q, align 8, !tbaa !41
  %i.r = cmpxchg ptr @_ZN12_GLOBAL__N_113FilesToRemoveE, ptr null, ptr %i.o seq_cst seq_cst, align 8 ; 2 uses
  %i.s = extractvalue { ptr, i1 } %i.r, 1
  br i1 %i.s, label %_ZN12_GLOBAL__N_116FileToRemoveList6insertERSt6atomicIPS0_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4llvh9StringRef3strB5cxx11Ev.exit, %.lr.ph.i
  %i.t = phi { ptr, i1 } [ %i.w, %.lr.ph.i ], [ %i.r, %_ZNK4llvh9StringRef3strB5cxx11Ev.exit ]
  %i.u = extractvalue { ptr, i1 } %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = cmpxchg ptr %i.v, ptr null, ptr %i.o seq_cst seq_cst, align 8 ; 2 uses
  %i.x = extractvalue { ptr, i1 } %i.w, 1
  br i1 %i.x, label %_ZN12_GLOBAL__N_116FileToRemoveList6insertERSt6atomicIPS0_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i, !llvm.loop !44

_ZN12_GLOBAL__N_116FileToRemoveList6insertERSt6atomicIPS0_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i, %_ZNK4llvh9StringRef3strB5cxx11Ev.exit
  %i.y = load ptr, ptr %3, align 8, !tbaa !38     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN12_GLOBAL__N_116FileToRemoveList6insertERSt6atomicIPS0_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !23
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN12_GLOBAL__N_116FileToRemoveList6insertERSt6atomicIPS0_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call fastcc void @_ZL16RegisterHandlersv()
  ret i1 false
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal void @_ZL19RemoveFilesToRemovev() #2 {
bb.a:
  %0 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = atomicrmw xchg ptr @_ZN12_GLOBAL__N_113FilesToRemoveE, ptr null seq_cst, align 8 ; 3 uses
  %.not1.i = icmp eq ptr %i.a, null
  br i1 %.not1.i, label %_ZN12_GLOBAL__N_116FileToRemoveList14removeAllFilesERSt6atomicIPS0_E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %.02.i = phi ptr [ %i.a, %.lr.ph.i ], [ %i.k, %bb.f ] ; 3 uses
  %i.c = atomicrmw xchg ptr %.02.i, ptr null seq_cst, align 8 ; 4 uses
  %.not14.i = icmp eq ptr %i.c, null
  br i1 %.not14.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  %i.d = call i32 @stat(ptr noundef nonnull %i.c, ptr noundef nonnull %0) #17
  %.not15.i = icmp eq i32 %i.d, 0
  br i1 %.not15.i, label %bb.d, label %.sink.split.i

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr %i.b, align 8, !tbaa !46
  %i.f = and i32 %i.e, 61440
  %i.g = icmp eq i32 %i.f, 32768
  br i1 %i.g, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @unlink(ptr noundef nonnull %i.c) #17 ; 0 uses
  %i.i = atomicrmw xchg ptr %.02.i, ptr %i.c seq_cst, align 8 ; 0 uses
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  br label %bb.f

bb.f:                                             ; preds = %.sink.split.i, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.02.i, i64 8
  %i.k = load atomic ptr, ptr %i.j seq_cst, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_116FileToRemoveList14removeAllFilesERSt6atomicIPS0_E.exit, label %bb.b, !llvm.loop !49

_ZN12_GLOBAL__N_116FileToRemoveList14removeAllFilesERSt6atomicIPS0_E.exit: ; preds = %bb.f, %bb.a
  %i.l = atomicrmw xchg ptr @_ZN12_GLOBAL__N_113FilesToRemoveE, ptr %i.a seq_cst, align 8 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh3sys22DontRemoveFileOnSignalENS_9StringRefE(ptr readonly captures(address_is_null) %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %.not.i = icmp eq ptr %0, null
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !32, !alias.scope !50
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !35, !alias.scope !50
  store i8 0, ptr %i.b, align 8, !tbaa !23, !alias.scope !50
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !50
  store i64 %1, ptr %i.a, align 8, !tbaa !37, !noalias !50
  %i.d = icmp ugt i64 %1, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #17 ; 2 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !38, !alias.scope !50
  %i.f = load i64, ptr %i.a, align 8, !tbaa !37, !noalias !50
  store i64 %i.f, ptr %i.b, align 8, !tbaa !23, !alias.scope !50
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.g = phi ptr [ %i.e, %bb.d ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %1, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.h = load i8, ptr %0, align 1, !tbaa !23
  store i8 %i.h, ptr %i.g, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %0, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !37, !noalias !50 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !35, !alias.scope !50
  %i.k = load ptr, ptr %2, align 8, !tbaa !38, !alias.scope !50
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !50
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit

_ZNK4llvh9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  %i.m = load atomic ptr, ptr @_ZZN12_GLOBAL__N_116FileToRemoveList5eraseERSt6atomicIPS0_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4Lock acquire, align 8
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.g, label %_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit.i

bb.g:                                             ; preds = %_ZNK4llvh9StringRef3strB5cxx11Ev.exit
  call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN12_GLOBAL__N_116FileToRemoveList5eraseERSt6atomicIPS0_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4Lock, ptr noundef nonnull @_ZN4llvh14object_creatorINS_3sys10SmartMutexILb1EEEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterINS_3sys10SmartMutexILb1EEEE4callEPv) #17
  br label %_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit.i

_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit.i: ; preds = %bb.g, %_ZNK4llvh9StringRef3strB5cxx11Ev.exit
  %i.n = load atomic ptr, ptr @_ZZN12_GLOBAL__N_116FileToRemoveList5eraseERSt6atomicIPS0_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4Lock monotonic, align 8 ; 4 uses
  %i.o = call noundef zeroext i1 @_ZN4llvh21llvm_is_multithreadedEv() #17
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit.i
  %i.p = call noundef zeroext i1 @_ZN4llvh3sys9MutexImpl7acquireEv(ptr noundef nonnull align 8 dereferenceable(13) %i.n) #17 ; 0 uses
  br label %_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit.i

bb.i:                                             ; preds = %_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !13
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !13
  br label %_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit.i

_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit.i: ; preds = %bb.i, %bb.h
  %i.t = load atomic ptr, ptr @_ZN12_GLOBAL__N_113FilesToRemoveE seq_cst, align 8 ; 2 uses
  %.not3.i = icmp eq ptr %i.t, null
  br i1 %.not3.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.l

._crit_edge.i:                                    ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i, %_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit.i
  %i.v = call noundef zeroext i1 @_ZN4llvh21llvm_is_multithreadedEv() #17
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i
  %i.w = call noundef zeroext i1 @_ZN4llvh3sys9MutexImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(13) %i.n) #17 ; 0 uses
  br label %_ZN12_GLOBAL__N_116FileToRemoveList5eraseERSt6atomicIPS0_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.k:                                             ; preds = %._crit_edge.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !13
  %i.z = add i32 %i.y, -1
  store i32 %i.z, ptr %i.x, align 8, !tbaa !13
  br label %_ZN12_GLOBAL__N_116FileToRemoveList5eraseERSt6atomicIPS0_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.l:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i, %.lr.ph.i
  %.04.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.ai, %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i ] ; 3 uses
  %i.aa = load atomic ptr, ptr %.04.i seq_cst, align 8 ; 3 uses
  %.not12.i = icmp eq ptr %i.aa, null
  br i1 %.not12.i, label %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = load i64, ptr %i.u, align 8, !tbaa !35  ; 3 uses
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #17
  %i.ad = icmp eq i64 %i.ab, %i.ac
  br i1 %i.ad, label %bb.n, label %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i

bb.n:                                             ; preds = %bb.m
  %i.ae = icmp eq i64 %i.ab, 0
  br i1 %i.ae, label %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread1.i, label %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i

_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i: ; preds = %bb.n
  %i.af = load ptr, ptr %2, align 8, !tbaa !38
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.af, ptr nonnull %i.aa, i64 %i.ab)
  %.not2.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not2.i, label %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread1.i, label %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i

_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread1.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i, %bb.n
  %i.ag = atomicrmw xchg ptr %.04.i, ptr null seq_cst, align 8 ; 2 uses
  %.not13.i = icmp eq ptr %i.ag, null
  br i1 %.not13.i, label %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread1.i
  call void @free(ptr noundef nonnull %i.ag) #17
  br label %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i

_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i: ; preds = %bb.o, %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread1.i, %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i, %bb.m, %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %.04.i, i64 8
  %i.ai = load atomic ptr, ptr %i.ah seq_cst, align 8 ; 2 uses
  %.not.i1 = icmp eq ptr %i.ai, null
  br i1 %.not.i1, label %._crit_edge.i, label %bb.l, !llvm.loop !53

_ZN12_GLOBAL__N_116FileToRemoveList5eraseERSt6atomicIPS0_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.j, %bb.k
  %i.aj = load ptr, ptr %2, align 8, !tbaa !38    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN12_GLOBAL__N_116FileToRemoveList5eraseERSt6atomicIPS0_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !23
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN12_GLOBAL__N_116FileToRemoveList5eraseERSt6atomicIPS0_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh3sys16AddSignalHandlerEPFvPvES1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 16), i32 0, i32 1 seq_cst seq_cst, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %_ZL19insertSignalHandlerPFvPvES_.exit, label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.1.i

_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.1.i: ; preds = %bb.a
  %i.c = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 40), i32 0, i32 1 seq_cst seq_cst, align 4
  %i.d = extractvalue { i32, i1 } %i.c, 1
  br i1 %i.d, label %_ZL19insertSignalHandlerPFvPvES_.exit, label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.2.i

_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.2.i: ; preds = %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.1.i
  %i.e = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 64), i32 0, i32 1 seq_cst seq_cst, align 4
  %i.f = extractvalue { i32, i1 } %i.e, 1
  br i1 %i.f, label %_ZL19insertSignalHandlerPFvPvES_.exit, label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.3.i

_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.3.i: ; preds = %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.2.i
  %i.g = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 88), i32 0, i32 1 seq_cst seq_cst, align 4
  %i.h = extractvalue { i32, i1 } %i.g, 1
  br i1 %i.h, label %_ZL19insertSignalHandlerPFvPvES_.exit, label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.4.i

_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.4.i: ; preds = %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.3.i
  %i.i = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 112), i32 0, i32 1 seq_cst seq_cst, align 4
  %i.j = extractvalue { i32, i1 } %i.i, 1
  br i1 %i.j, label %_ZL19insertSignalHandlerPFvPvES_.exit, label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.5.i

_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.5.i: ; preds = %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.4.i
  %i.k = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 136), i32 0, i32 1 seq_cst seq_cst, align 4
  %i.l = extractvalue { i32, i1 } %i.k, 1
  br i1 %i.l, label %_ZL19insertSignalHandlerPFvPvES_.exit, label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.6.i

_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.6.i: ; preds = %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.5.i
  %i.m = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 160), i32 0, i32 1 seq_cst seq_cst, align 4
  %i.n = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.n, label %_ZL19insertSignalHandlerPFvPvES_.exit, label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.7.i

_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.7.i: ; preds = %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.6.i
  %i.o = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 184), i32 0, i32 1 seq_cst seq_cst, align 4
  %i.p = extractvalue { i32, i1 } %i.o, 1
  br i1 %i.p, label %_ZL19insertSignalHandlerPFvPvES_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.7.i
  tail call void @_ZN4llvh18report_fatal_errorEPKcb(ptr noundef nonnull @.str.3, i1 noundef zeroext true) #21
  unreachable

_ZL19insertSignalHandlerPFvPvES_.exit:            ; preds = %bb.a, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.1.i, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.2.i, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.3.i, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.4.i, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.5.i, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.6.i, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.7.i
  %.lcssa22.i = phi ptr [ @_ZL14CallBacksToRun, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 24), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.1.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 48), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.2.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 72), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.3.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 96), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.4.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 120), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.5.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 144), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.6.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 168), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.7.i ] ; 2 uses
  %.lcssa.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 16), %bb.a ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 40), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.1.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 64), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.2.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 88), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.3.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 112), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.4.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 136), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.5.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 160), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.6.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 184), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.7.i ]
  store ptr %0, ptr %.lcssa22.i, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %.lcssa22.i, i64 8
  store ptr %1, ptr %i.q, align 8, !tbaa !12
  store atomic i32 2, ptr %.lcssa.i seq_cst, align 4
  tail call fastcc void @_ZL16RegisterHandlersv()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN4llvh3sys15PrintStackTraceERNS_11raw_ostreamE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(36) %0) local_unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN4llvh3sys27DisableSystemDialogsOnCrashEv() local_unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh3sys28PrintStackTraceOnErrorSignalENS_9StringRefEb(ptr %0, i64 %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  store ptr %0, ptr @_ZL5Argv0, align 8, !tbaa !54
  store i64 %1, ptr getelementptr inbounds nuw (i8, ptr @_ZL5Argv0, i64 8), align 8, !tbaa !37
  %i.a = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 16), i32 0, i32 1 seq_cst seq_cst, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %_ZN4llvh3sys16AddSignalHandlerEPFvPvES1_.exit, label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.1.i.i

_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.1.i.i: ; preds = %bb.a
  %i.c = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 40), i32 0, i32 1 seq_cst seq_cst, align 4
  %i.d = extractvalue { i32, i1 } %i.c, 1
  br i1 %i.d, label %_ZN4llvh3sys16AddSignalHandlerEPFvPvES1_.exit, label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.2.i.i

_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.2.i.i: ; preds = %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.1.i.i
  %i.e = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 64), i32 0, i32 1 seq_cst seq_cst, align 4
  %i.f = extractvalue { i32, i1 } %i.e, 1
  br i1 %i.f, label %_ZN4llvh3sys16AddSignalHandlerEPFvPvES1_.exit, label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.3.i.i

_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.3.i.i: ; preds = %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.2.i.i
  %i.g = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 88), i32 0, i32 1 seq_cst seq_cst, align 4
  %i.h = extractvalue { i32, i1 } %i.g, 1
  br i1 %i.h, label %_ZN4llvh3sys16AddSignalHandlerEPFvPvES1_.exit, label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.4.i.i

_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.4.i.i: ; preds = %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.3.i.i
  %i.i = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 112), i32 0, i32 1 seq_cst seq_cst, align 4
  %i.j = extractvalue { i32, i1 } %i.i, 1
  br i1 %i.j, label %_ZN4llvh3sys16AddSignalHandlerEPFvPvES1_.exit, label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.5.i.i

_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.5.i.i: ; preds = %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.4.i.i
  %i.k = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 136), i32 0, i32 1 seq_cst seq_cst, align 4
  %i.l = extractvalue { i32, i1 } %i.k, 1
  br i1 %i.l, label %_ZN4llvh3sys16AddSignalHandlerEPFvPvES1_.exit, label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.6.i.i

_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.6.i.i: ; preds = %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.5.i.i
  %i.m = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 160), i32 0, i32 1 seq_cst seq_cst, align 4
  %i.n = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.n, label %_ZN4llvh3sys16AddSignalHandlerEPFvPvES1_.exit, label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.7.i.i

_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.7.i.i: ; preds = %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.6.i.i
  %i.o = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 184), i32 0, i32 1 seq_cst seq_cst, align 4
  %i.p = extractvalue { i32, i1 } %i.o, 1
  br i1 %i.p, label %_ZN4llvh3sys16AddSignalHandlerEPFvPvES1_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.7.i.i
  tail call void @_ZN4llvh18report_fatal_errorEPKcb(ptr noundef nonnull @.str.3, i1 noundef zeroext true) #21
  unreachable

_ZN4llvh3sys16AddSignalHandlerEPFvPvES1_.exit:    ; preds = %bb.a, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.1.i.i, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.2.i.i, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.3.i.i, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.4.i.i, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.5.i.i, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.6.i.i, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.7.i.i
  %.lcssa22.i.i = phi ptr [ @_ZL14CallBacksToRun, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 24), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.1.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 48), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.2.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 72), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.3.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 96), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.4.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 120), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.5.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 144), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.6.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 168), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.7.i.i ] ; 2 uses
  %.lcssa.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 16), %bb.a ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 40), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.1.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 64), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.2.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 88), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.3.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 112), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.4.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 136), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.5.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 160), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.6.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 184), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.7.i.i ]
  store ptr @_ZL28PrintStackTraceSignalHandlerPv, ptr %.lcssa22.i.i, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %.lcssa22.i.i, i64 8
  store ptr null, ptr %i.q, align 8, !tbaa !12
  store atomic i32 2, ptr %.lcssa.i.i seq_cst, align 4
  tail call fastcc void @_ZL16RegisterHandlersv()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL28PrintStackTraceSignalHandlerPv(ptr readnone captures(none) %0) #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #17 ; 0 uses
  ret void
}

declare void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvh14object_creatorINS_3sys10SmartMutexILb1EEEE4callEv() #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19 ; 4 uses
  tail call void @_ZN4llvh3sys9MutexImplC1Eb(ptr noundef nonnull align 8 dereferenceable(13) %i.a, i1 noundef zeroext true) #17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 1, ptr %i.c, align 4, !tbaa !55
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh14object_deleterINS_3sys10SmartMutexILb1EEEE4callEPv(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvh3sys9MutexImplD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(13) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

declare void @_ZN4llvh3sys9MutexImplC1Eb(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN4llvh3sys9MutexImplD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

declare noundef zeroext i1 @_ZN4llvh21llvm_is_multithreadedEv() local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvh3sys9MutexImpl7acquireEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @sigaltstack(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

declare void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL13SignalHandleri(i32 noundef %0) #0 {
bb.a:
  %1 = alloca %struct.__sigset_t, align 8         ; 4 uses
  %i.a = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4 ; 2 uses
  %.not5.i = icmp eq i32 %i.a, 0
  br i1 %.not5.i, label %_ZL18UnregisterHandlersv.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.b = zext i32 %i.a to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.c = getelementptr inbounds nuw [160 x i8], ptr @_ZL20RegisteredSignalInfo, i64 %indvars.iv.i ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.e = load i32, ptr %i.d, align 8, !tbaa !27
  %i.f = tail call i32 @sigaction(i32 noundef %i.e, ptr noundef nonnull %i.c, ptr noundef null) #17 ; 0 uses
  %i.g = atomicrmw sub ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.b
  br i1 %.not.i, label %_ZL18UnregisterHandlersv.exit, label %.lr.ph.i, !llvm.loop !56

_ZL18UnregisterHandlersv.exit:                    ; preds = %.lr.ph.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.h = call i32 @sigfillset(ptr noundef nonnull %1) #17 ; 0 uses
  %i.i = call i32 @sigprocmask(i32 noundef 1, ptr noundef nonnull %1, ptr noundef null) #17 ; 0 uses
  %i.j = load atomic ptr, ptr @_ZN12_GLOBAL__N_126FilesToRemoveInterruptFuncE.0 seq_cst, align 8
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZL18UnregisterHandlersv.exit
  call void @_ZL19RemoveFilesToRemovev() #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZL18UnregisterHandlersv.exit
  switch i32 %0, label %_ZSt4findIPKiiET_S2_S2_RKT0_.exit.thread12 [
    i32 1, label %_ZSt4findIPKiiET_S2_S2_RKT0_.exit.thread
    i32 2, label %_ZSt4findIPKiiET_S2_S2_RKT0_.exit.thread
    i32 13, label %_ZSt4findIPKiiET_S2_S2_RKT0_.exit.thread
    i32 15, label %_ZSt4findIPKiiET_S2_S2_RKT0_.exit.thread
    i32 12, label %_ZSt4findIPKiiET_S2_S2_RKT0_.exit.thread
    i32 10, label %_ZSt4findIPKiiET_S2_S2_RKT0_.exit.thread
  ]

_ZSt4findIPKiiET_S2_S2_RKT0_.exit.thread:         ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.k = atomicrmw xchg ptr @_ZL17InterruptFunction, ptr null seq_cst, align 8 ; 2 uses
  %.not7 = icmp eq ptr %i.k, null
  br i1 %.not7, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZSt4findIPKiiET_S2_S2_RKT0_.exit.thread
  call void %i.k() #17
  br label %bb.e

.critedge:                                        ; preds = %_ZSt4findIPKiiET_S2_S2_RKT0_.exit.thread
  %i.l = call i32 @raise(i32 noundef %0) #17      ; 0 uses
  br label %bb.e

_ZSt4findIPKiiET_S2_S2_RKT0_.exit.thread12:       ; preds = %bb.c
  call void @_ZN4llvh3sys17RunSignalHandlersEv()
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZSt4findIPKiiET_S2_S2_RKT0_.exit.thread12, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @sigfillset(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @sigprocmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @raise(i32 noundef) local_unnamed_addr #7

declare noundef zeroext i1 @_ZN4llvh3sys9MutexImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #12

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZN4llvh18report_fatal_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #14

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN4llvh14object_creatorIN12_GLOBAL__N_120FilesToRemoveCleanupEE4callEv() #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #19
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4llvh14object_deleterIN12_GLOBAL__N_120FilesToRemoveCleanupEE4callEPv(ptr noundef %0) #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = atomicrmw xchg ptr @_ZN12_GLOBAL__N_113FilesToRemoveE, ptr null seq_cst, align 8 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_120FilesToRemoveCleanupD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN12_GLOBAL__N_116FileToRemoveListD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 16) #20
  br label %_ZN12_GLOBAL__N_120FilesToRemoveCleanupD2Ev.exit

_ZN12_GLOBAL__N_120FilesToRemoveCleanupD2Ev.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1) #20
  br label %bb.d

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_120FilesToRemoveCleanupD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116FileToRemoveListD2Ev(ptr noundef nonnull align 8 captures(none) dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = atomicrmw xchg ptr %i.a, ptr null seq_cst, align 8 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN12_GLOBAL__N_116FileToRemoveListD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 16) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = atomicrmw xchg ptr %0, ptr null seq_cst, align 8 ; 2 uses
  %.not6 = icmp eq ptr %i.c, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.c) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { builtin nounwind allocsize(0) }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn nounwind }

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
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTS17CallbackAndCookie", !9, i64 0, !9, i64 8, !10, i64 16}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"_ZTSSt6atomicIN17CallbackAndCookie6StatusEE", !11, i64 0}
!11 = !{!"_ZTSN17CallbackAndCookie6StatusE", !5, i64 0}
!12 = !{!8, !9, i64 8}
!13 = !{!14, !4, i64 8}
!14 = !{!"_ZTSN4llvh3sys10SmartMutexILb1EEE", !15, i64 0, !4, i64 8, !16, i64 12}
!15 = !{!"_ZTSN4llvh3sys9MutexImplE", !9, i64 0}
!16 = !{!"bool", !5, i64 0}
!17 = !{!18, !4, i64 8}
!18 = !{!"_ZTS7stack_t", !9, i64 0, !4, i64 8, !19, i64 16}
!19 = !{!"long", !5, i64 0}
!20 = !{!18, !9, i64 0}
!21 = !{!9, !9, i64 0}
!22 = !{!18, !19, i64 16}
!23 = !{!5, !5, i64 0}
!24 = !{!25, !4, i64 136}
!25 = !{!"_ZTS9sigaction", !5, i64 0, !26, i64 8, !4, i64 136, !9, i64 144}
!26 = !{!"_ZTS10__sigset_t", !5, i64 0}
!27 = !{!28, !4, i64 152}
!28 = !{!"_ZTS3$_1", !25, i64 0, !4, i64 152}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZNK4llvh9StringRef3strB5cxx11Ev: argument 0"}
!31 = distinct !{!31, !"_ZNK4llvh9StringRef3strB5cxx11Ev"}
!32 = !{!33, !34, i64 0}
!33 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !34, i64 0}
!34 = !{!"p1 omnipotent char", !9, i64 0}
!35 = !{!36, !19, i64 8}
!36 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !33, i64 0, !19, i64 8, !5, i64 16}
!37 = !{!19, !19, i64 0}
!38 = !{!36, !34, i64 0}
!39 = !{!40, !34, i64 0}
!40 = !{!"_ZTSSt13__atomic_baseIPcE", !34, i64 0}
!41 = !{!42, !43, i64 0}
!42 = !{!"_ZTSSt13__atomic_baseIPN12_GLOBAL__N_116FileToRemoveListEE", !43, i64 0}
!43 = !{!"p1 _ZTSN12_GLOBAL__N_116FileToRemoveListE", !9, i64 0}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!47, !4, i64 24}
!47 = !{!"_ZTS4stat", !19, i64 0, !19, i64 8, !19, i64 16, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !48, i64 72, !48, i64 88, !48, i64 104, !5, i64 120}
!48 = !{!"_ZTS8timespec", !19, i64 0, !19, i64 8}
!49 = distinct !{!49, !45}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZNK4llvh9StringRef3strB5cxx11Ev: argument 0"}
!52 = distinct !{!52, !"_ZNK4llvh9StringRef3strB5cxx11Ev"}
!53 = distinct !{!53, !45}
!54 = !{!34, !34, i64 0}
!55 = !{!14, !16, i64 12}
!56 = distinct !{!56, !45}
end_hunk_0
