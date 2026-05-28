inline.NumInlined: 665
inline.NumDeleted: 372
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::atomic.10" = type { %"struct.std::__atomic_base.11" }
%"struct.std::__atomic_base.11" = type { i64 }
%"struct.folly::c_array" = type { [20 x i64] }
%"struct.folly::c_array.57" = type { [100 x i16] }
%"struct.std::atomic.59" = type { %"struct.std::__atomic_base.60" }
%"struct.std::__atomic_base.60" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.folly::Range" = type { ptr, ptr }
%"struct.folly::SharedMutexImpl<false>::WaitForever" = type { i8 }
%"struct.std::array" = type { [5 x %"class.std::shared_ptr"] }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::shared_ptr<folly::LogHandler>, std::allocator<std::shared_ptr<folly::LogHandler>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::shared_ptr<folly::LogHandler>, std::allocator<std::shared_ptr<folly::LogHandler>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::shared_ptr<folly::LogHandler>, std::allocator<std::shared_ptr<folly::LogHandler>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::shared_ptr<folly::LogHandler>, std::allocator<std::shared_ptr<folly::LogHandler>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.folly::LockedPtr" = type { %"class.std::shared_lock" }
%"class.std::shared_lock" = type <{ ptr, %"struct.folly::SharedMutexToken", [4 x i8] }>
%"struct.folly::SharedMutexToken" = type { i16, i16 }
%"class.folly::basic_fbstring" = type { %"class.folly::fbstring_core" }
%"class.folly::fbstring_core" = type { %union.anon.58 }
%union.anon.58 = type { %"struct.folly::fbstring_core<char>::MediumLarge" }
%"struct.folly::fbstring_core<char>::MediumLarge" = type { ptr, i64, i64 }
%"class.folly::LockedPtr.64" = type { %"class.std::unique_lock" }
%"class.std::unique_lock" = type <{ ptr, i8, [7 x i8] }>

$__clang_call_terminate = comdat any

$_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EED2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN5folly13to_ascii_sizeILm10EEEmm = comdat any

$_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7EEEE4callIJA7_cNS_5RangeIPKcEEA2_cjA3_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_PSI_EEEvDpRKT_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEELm20EEEmRAT1__cm = comdat any

$_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EEaSERKS5_ = comdat any

$_ZN5folly9LockedPtrIKNS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSE_22SynchronizedMutexLevelE2ELNSE_23SynchronizedMutexMethodE0EEEED2Ev = comdat any

$_ZN5folly8LoggerDB15internalWarningIJRA27_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA19_S2_NS_14basic_fbstringIcS8_S9_NS_13fbstring_coreIcEEEEEEEvNS_5RangeIPS2_EEiDpOT_ = comdat any

$_ZNSt5arrayISt10shared_ptrIN5folly10LogHandlerEELm5EED2Ev = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_ = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_ = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20yieldWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_ = comdat any

$_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv = comdat any

$_ZN5folly14FallbackGetcpuINS_18SequentialThreadIdEE6getcpuEPjS3_Pv = comdat any

$_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3ELm4EEEE4callIJA27_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA19_cNS_14basic_fbstringIcSA_SB_NS_13fbstring_coreIcEEEEPSC_EEEvDpRKT_ = comdat any

$_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv = comdat any

$_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSD_22SynchronizedMutexLevelE1ELNSD_23SynchronizedMutexMethodE0EEEED2Ev = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_ = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_ = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_j = comdat any

$_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

$_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache = comdat any

$_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE26tls_lastDeferredReaderSlotEvE2tl = comdat any

$_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state = comdat any

$_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE21tls_lastTokenlessSlotEvE2tl = comdat any

@_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache = linkonce_odr global { i32 } zeroinitializer, comdat, align 4
@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE = external global [2048 x %"struct.std::atomic.10"], align 64
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [7 x i8] c"FATAL:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZN5folly6detail15to_ascii_powersILm10EmE4dataE = external local_unnamed_addr global %"struct.folly::c_array", align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE = external local_unnamed_addr global %"struct.folly::c_array.57", align 2
@_ZTISt9exception = external constant ptr
@.str.6 = private unnamed_addr constant [80 x i8] c"/opt-bench/work/velox/velox/build/_deps/folly-src/folly/logging/LogCategory.cpp\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"log handler for category \22\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"\22 threw an error: \00", align 1
@_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE26tls_lastDeferredReaderSlotEvE2tl = linkonce_odr thread_local local_unnamed_addr global { i32 } zeroinitializer, comdat, align 4
@_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state = linkonce_odr global { [257 x [256 x i8]], %"struct.std::atomic.59" } zeroinitializer, comdat, align 8
@_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE21tls_lastTokenlessSlotEvE2tl = linkonce_odr thread_local local_unnamed_addr global { i32 } zeroinitializer, comdat, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj], section "llvm.metadata"

@_ZN5folly11LogCategoryC1EPNS_8LoggerDBE = unnamed_addr alias void (ptr, ptr), ptr @_ZN5folly11LogCategoryC2EPNS_8LoggerDBE
@_ZN5folly11LogCategoryC1ENS_5RangeIPKcEEPS0_ = unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN5folly11LogCategoryC2ENS_5RangeIPKcEEPS0_

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5folly11LogCategoryC2EPNS_8LoggerDBE(ptr noundef nonnull align 8 dereferenceable(136) initializes((0, 12), (16, 24)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 1, ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4000, ptr %i.a, align 4, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 4000, ptr %i.b, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.c, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.f, align 8, !tbaa !40
  store i8 0, ptr %i.e, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.g, i8 0, i64 28, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %1, ptr %i.h, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define void @_ZN5folly11LogCategoryC2ENS_5RangeIPKcEEPS0_(ptr noundef nonnull align 8 dereferenceable(136) initializes((0, 12), (16, 24)) %0, ptr %1, ptr %2, ptr noundef %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 1, ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.c = load atomic i32, ptr %i.b acquire, align 4
  store i32 %i.c, ptr %i.a, align 4, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %i.d, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %3, ptr %i.e, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN5folly7LogName12canonicalizeB5cxx11ENS_5RangeIPKcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.f, ptr %1, ptr %2)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.g, i8 0, i64 28, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  store ptr %i.j, ptr %i.h, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr null, ptr %i.k, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43
  store ptr %i.o, ptr %i.l, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  store ptr %0, ptr %i.n, align 8, !tbaa !43
  ret void
}

declare void @_ZN5folly7LogName12canonicalizeB5cxx11ENS_5RangeIPKcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, ptr) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !52
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #17, !call_target !55, !inline_history !62
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #17, !call_target !63, !inline_history !62
  br label %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i, !prof !64

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #17
  br label %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !65

_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !45
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5folly10LogHandlerEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !67
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5folly10LogHandlerEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5folly10LogHandlerEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: cold
declare noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #17, !call_target !55, !inline_history !68
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !7    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #17, !call_target !63, !inline_history !68
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly11LogCategory12admitMessageERKNS_10LogMessageEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, i1 noundef zeroext %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.folly::Range", align 8      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.i = phi ptr [ %0, %bb.a ], [ %i.e, %bb.c ]  ; 3 uses
  tail call void @_ZNK5folly11LogCategory14processMessageERKNS_10LogMessageE(ptr noundef nonnull align 8 dereferenceable(136) %.0.i, ptr noundef nonnull align 8 dereferenceable(176) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  %.pre = load i32, ptr %i.c, align 8, !tbaa !69  ; 2 uses
  br i1 %.not.i, label %_ZN5folly11LogCategory20processMessageWalkerEPKS0_RKNS_10LogMessageE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load atomic i32, ptr %.0.i monotonic, align 8
  %.not6.i = icmp ult i32 %.pre, %i.f
  br i1 %.not6.i, label %_ZN5folly11LogCategory20processMessageWalkerEPKS0_RKNS_10LogMessageE.exit, label %bb.b, !llvm.loop !74

_ZN5folly11LogCategory20processMessageWalkerEPKS0_RKNS_10LogMessageE.exit: ; preds = %bb.b, %bb.c
  %i.g = icmp ugt i32 %.pre, 2147483646
  br i1 %i.g, label %bb.d, label %bb.q

bb.d:                                             ; preds = %_ZN5folly11LogCategory20processMessageWalkerEPKS0_RKNS_10LogMessageE.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.j = tail call noundef i64 @_ZN5folly8LoggerDB16flushAllHandlersEv(ptr noundef nonnull align 8 dereferenceable(232) %i.i)
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.l, align 8, !tbaa !75 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !75 ; 2 uses
  store ptr %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.2.0.copyload.i, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !76   ; 2 uses
  store i32 %i.o, ptr %i.b, align 4, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.q = load i64, ptr %i.p, align 8, !tbaa !40
  %i.r = icmp eq i64 %i.q, 0
  %.0.v.i = select i1 %i.r, i64 112, i64 144
  %.0.i9 = getelementptr inbounds nuw i8, ptr %1, i64 %.0.v.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  store ptr %i.s, ptr %3, align 8, !tbaa !39, !alias.scope !77
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.t, align 8, !tbaa !40, !alias.scope !77
  store i8 0, ptr %i.s, align 8, !tbaa !41, !alias.scope !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !77
  store ptr %3, ptr %i.a, align 8, !tbaa !80, !noalias !77
  %i.u = zext i32 %i.o to i64
  %i.v = invoke noundef i64 @_ZN5folly13to_ascii_sizeILm10EEEmm(i64 noundef %i.u)
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %bb.e
  %i.w = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.x = ptrtoint ptr %.sroa.2.0.copyload.i to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i9, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !40, !noalias !77
  %reass.sub = sub i64 %i.x, %i.w
  %i.aa = add i64 %reass.sub, 14
  %i.ab = add i64 %i.aa, %i.v
  %i.ac = add i64 %i.ab, %i.z                     ; 4 uses
  %i.ad = load ptr, ptr %3, align 8, !tbaa !82    ; 4 uses
  %i.ae = icmp eq ptr %i.ad, %i.s                 ; 2 uses
  %i.af = load i64, ptr %i.s, align 8             ; 2 uses
  %i.ag = select i1 %i.ae, i64 15, i64 %i.af      ; 2 uses
  %.not.i13 = icmp ugt i64 %i.ac, %i.ag
  br i1 %.not.i13, label %bb.f, label %.noexc9.i

bb.f:                                             ; preds = %.noexc.i
  %i.ah = icmp slt i64 %i.ac, 0
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ai = shl nuw i64 %i.ag, 1                    ; 2 uses
  %i.aj = icmp ult i64 %i.ac, %i.ai
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.ai, i64 9223372036854775807)
  %.0.i14 = select i1 %i.aj, i64 %spec.store.select.i.i, i64 %i.ac ; 2 uses
  %i.ak = add nuw i64 %.0.i14, 1                  ; 2 uses
  %i.al = icmp slt i64 %i.ak, 0
  br i1 %i.al, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !64

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt17__throw_bad_allocv() #27
          to label %.noexc17 unwind label %bb.l

.noexc17:                                         ; preds = %bb.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.h
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #28
          to label %.noexc18 unwind label %bb.l   ; 3 uses

.noexc18:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.an = load i64, ptr %i.t, align 8, !tbaa !40  ; 2 uses
  %i.ao = add i64 %i.an, 1                        ; 2 uses
  switch i64 %i.ao, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
  ]

bb.j:                                             ; preds = %.noexc18
  %i.ap = load i8, ptr %i.ad, align 1, !tbaa !41
  store i8 %i.ap, ptr %i.am, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.k:                                             ; preds = %.noexc18
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr align 1 %i.ad, i64 %i.ao, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %.noexc18
  br i1 %i.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
  %i.aq = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.aq)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
  %i.ar = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ar) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16
  store ptr %i.am, ptr %3, align 8, !tbaa !82
  store i64 %.0.i14, ptr %i.s, align 8, !tbaa !41
  br label %.noexc9.i

.noexc9.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i, %.noexc.i
  invoke void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7EEEE4callIJA7_cNS_5RangeIPKcEEA2_cjA3_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_PSI_EEEvDpRKT_(ptr noundef nonnull align 1 dereferenceable(7) @.str, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(2) @.str.1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(3) @.str.2, ptr noundef nonnull align 8 dereferenceable(32) %.0.i9, ptr noundef nonnull align 1 dereferenceable(2) @.str.3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA7_cNS_5RangeIPKcEEA2_cjA3_cS6_SC_ETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISF_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSI_EEEE5valueEiE4typeELi0EEESF_DpRKSH_.exit unwind label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, %bb.i, %bb.g, %.noexc9.i, %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !77
  %i.at = load ptr, ptr %3, align 8, !tbaa !82, !alias.scope !77 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.s
  br i1 %i.au, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.av = load i64, ptr %i.s, align 8, !tbaa !41, !alias.scope !77
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #26
  br label %common.resume

common.resume:                                    ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %common.resume.op = phi { ptr, i32 } [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.as, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA7_cNS_5RangeIPKcEEA2_cjA3_cS6_SC_ETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISF_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSI_EEEE5valueEiE4typeELi0EEESF_DpRKSH_.exit: ; preds = %.noexc9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.ax = load ptr, ptr %3, align 8, !tbaa !82
  %i.ay = load i64, ptr %i.t, align 8, !tbaa !40
  %i.az = invoke noundef i64 @_ZN5folly9writeFullEiPKvm(i32 noundef 2, ptr noundef %i.ax, i64 noundef %i.ay)
          to label %bb.m unwind label %bb.n       ; 0 uses

bb.m:                                             ; preds = %_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA7_cNS_5RangeIPKcEEA2_cjA3_cS6_SC_ETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISF_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSI_EEEE5valueEiE4typeELi0EEESF_DpRKSH_.exit
  %i.ba = load ptr, ptr %3, align 8, !tbaa !82    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.s
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.bc = load i64, ptr %i.s, align 8, !tbaa !41
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.o

bb.n:                                             ; preds = %_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA7_cNS_5RangeIPKcEEA2_cjA3_cS6_SC_ETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISF_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSI_EEEE5valueEiE4typeELi0EEESF_DpRKSH_.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %3, align 8, !tbaa !82    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.s
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.n
  %i.bh = load i64, ptr %i.s, align 8, !tbaa !41
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %common.resume

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  br i1 %2, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @abort() #25
  unreachable

bb.q:                                             ; preds = %bb.o, %_ZN5folly11LogCategory20processMessageWalkerEPKS0_RKNS_10LogMessageE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly11LogCategory20processMessageWalkerEPKS0_RKNS_10LogMessageE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(176) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.c, %bb.c ]    ; 3 uses
  tail call void @_ZNK5folly11LogCategory14processMessageERKNS_10LogMessageE(ptr noundef nonnull align 8 dereferenceable(136) %.0, ptr noundef nonnull align 8 dereferenceable(176) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.a, align 8, !tbaa !69
  %i.e = load atomic i32, ptr %.0 monotonic, align 8
  %.not6 = icmp ult i32 %i.d, %i.e
  br i1 %.not6, label %bb.d, label %bb.b, !llvm.loop !74

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

declare noundef i64 @_ZN5folly8LoggerDB16flushAllHandlersEv(ptr noundef nonnull align 8 dereferenceable(232)) local_unnamed_addr #5

declare noundef i64 @_ZN5folly9writeFullEiPKvm(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly13to_ascii_sizeILm10EEEmm(i64 noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = load i64, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, align 8, !tbaa !83
  %i.b = icmp ult i64 %0, %i.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 8), align 8
  %i.d = icmp ult i64 %0, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %i.d, !prof !84
  br i1 %or.cond, label %.loopexit, label %bb.b, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 16), align 8, !tbaa !83
  %i.f = icmp ult i64 %0, %i.e
  br i1 %i.f, label %.loopexit, label %bb.c, !prof !64

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 24), align 8, !tbaa !83
  %i.h = icmp ult i64 %0, %i.g
  br i1 %i.h, label %.loopexit, label %bb.d, !prof !64

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 32), align 8, !tbaa !83
  %i.j = icmp ult i64 %0, %i.i
  br i1 %i.j, label %.loopexit, label %bb.e, !prof !64

bb.e:                                             ; preds = %bb.d
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 40), align 8, !tbaa !83
  %i.l = icmp ult i64 %0, %i.k
  br i1 %i.l, label %.loopexit, label %bb.f, !prof !64

bb.f:                                             ; preds = %bb.e
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 48), align 8, !tbaa !83
  %i.n = icmp ult i64 %0, %i.m
  br i1 %i.n, label %.loopexit, label %bb.g, !prof !64

bb.g:                                             ; preds = %bb.f
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 56), align 8, !tbaa !83
  %i.p = icmp ult i64 %0, %i.o
  br i1 %i.p, label %.loopexit, label %bb.h, !prof !64

bb.h:                                             ; preds = %bb.g
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 64), align 8, !tbaa !83
  %i.r = icmp ult i64 %0, %i.q
  br i1 %i.r, label %.loopexit, label %bb.i, !prof !64

bb.i:                                             ; preds = %bb.h
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 72), align 8, !tbaa !83
  %i.t = icmp ult i64 %0, %i.s
  br i1 %i.t, label %.loopexit, label %bb.j, !prof !64

bb.j:                                             ; preds = %bb.i
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 80), align 8, !tbaa !83
  %i.v = icmp ult i64 %0, %i.u
  br i1 %i.v, label %.loopexit, label %bb.k, !prof !64

bb.k:                                             ; preds = %bb.j
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 88), align 8, !tbaa !83
  %i.x = icmp ult i64 %0, %i.w
  br i1 %i.x, label %.loopexit, label %bb.l, !prof !64

bb.l:                                             ; preds = %bb.k
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 96), align 8, !tbaa !83
  %i.z = icmp ult i64 %0, %i.y
  br i1 %i.z, label %.loopexit, label %bb.m, !prof !64

bb.m:                                             ; preds = %bb.l
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 104), align 8, !tbaa !83
  %i.ab = icmp ult i64 %0, %i.aa
  br i1 %i.ab, label %.loopexit, label %bb.n, !prof !64

bb.n:                                             ; preds = %bb.m
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 112), align 8, !tbaa !83
  %i.ad = icmp ult i64 %0, %i.ac
  br i1 %i.ad, label %.loopexit, label %bb.o, !prof !64

bb.o:                                             ; preds = %bb.n
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 120), align 8, !tbaa !83
  %i.af = icmp ult i64 %0, %i.ae
  br i1 %i.af, label %.loopexit, label %bb.p, !prof !64

bb.p:                                             ; preds = %bb.o
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 128), align 8, !tbaa !83
  %i.ah = icmp ult i64 %0, %i.ag
  br i1 %i.ah, label %.loopexit, label %bb.q, !prof !64

bb.q:                                             ; preds = %bb.p
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 136), align 8, !tbaa !83
  %i.aj = icmp ult i64 %0, %i.ai
  br i1 %i.aj, label %.loopexit, label %bb.r, !prof !64

bb.r:                                             ; preds = %bb.q
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 144), align 8, !tbaa !83
  %i.al = icmp ult i64 %0, %i.ak
  br i1 %i.al, label %.loopexit, label %bb.s, !prof !64

bb.s:                                             ; preds = %bb.r
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 152), align 8, !tbaa !83
  %i.an = icmp ult i64 %0, %i.am
  br i1 %i.an, label %_ZN5folly6detail19to_ascii_size_arrayILm10EEEmm.exit, label %.loopexit, !prof !64

_ZN5folly6detail19to_ascii_size_arrayILm10EEEmm.exit: ; preds = %bb.s
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %_ZN5folly6detail19to_ascii_size_arrayILm10EEEmm.exit
  %i.ao = phi i64 [ 20, %bb.s ], [ 1, %bb.a ], [ 19, %_ZN5folly6detail19to_ascii_size_arrayILm10EEEmm.exit ], [ 2, %bb.b ], [ 3, %bb.c ], [ 4, %bb.d ], [ 5, %bb.e ], [ 6, %bb.f ], [ 7, %bb.g ], [ 8, %bb.h ], [ 9, %bb.i ], [ 10, %bb.j ], [ 11, %bb.k ], [ 12, %bb.l ], [ 13, %bb.m ], [ 14, %bb.n ], [ 15, %bb.o ], [ 16, %bb.p ], [ 17, %bb.q ], [ 18, %bb.r ]
  ret i64 %i.ao
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7EEEE4callIJA7_cNS_5RangeIPKcEEA2_cjA3_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_PSI_EEEvDpRKT_(ptr noundef nonnull align 1 dereferenceable(7) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(2) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 1 dereferenceable(3) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(2) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  %i.b = load ptr, ptr %7, align 8, !tbaa !80     ; 23 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(7) %0) #17 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 14 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !40   ; 5 uses
  %i.f = sub i64 9223372036854775807, %i.e
  %i.g = icmp ult i64 %i.f, %i.c
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #27
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.h = add i64 %i.e, %i.c                       ; 3 uses
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !82   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 14 uses
  %i.k = icmp eq ptr %i.i, %i.j                   ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = icmp ult i64 %i.e, 16
  tail call void @llvm.assume(i1 %i.l)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.m = load i64, ptr %i.j, align 8
  %i.n = select i1 %i.k, i64 15, i64 %i.m
  %.not.i.i.i = icmp ugt i64 %i.h, %i.n
  br i1 %.not.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not8.i.i.i, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.e ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.c, 1
  br i1 %cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = load i8, ptr %0, align 1, !tbaa !41
  store i8 %i.p, ptr %i.o, align 1, !tbaa !41
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 dereferenceable(7) %0, i64 %i.c, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.e, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(7) %0, i64 noundef %i.c)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  store i64 %i.h, ptr %i.d, align 8, !tbaa !40
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.h
  store i8 0, ptr %i.r, align 1, !tbaa !41
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !75 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !75 ; 2 uses
  %i.s = ptrtoint ptr %.sroa.2.0.copyload.i to i64
  %i.t = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.u = sub i64 %i.s, %i.t                       ; 5 uses
  %i.v = load i64, ptr %i.d, align 8, !tbaa !40   ; 5 uses
  %i.w = sub i64 9223372036854775807, %i.v
  %i.x = icmp ult i64 %i.w, %i.u
  br i1 %i.x, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i24

bb.i:                                             ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #27
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i24: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit
  %i.y = add i64 %i.u, %i.v                       ; 3 uses
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !82   ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.j                  ; 2 uses
  br i1 %i.aa, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i25

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i24
  %i.ab = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.ab)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i25: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i24
  %i.ac = load i64, ptr %i.j, align 8
  %i.ad = select i1 %i.aa, i64 15, i64 %i.ac
  %.not.i.i.i26 = icmp ugt i64 %i.y, %i.ad
  br i1 %.not.i.i.i26, label %bb.o, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i25
  %.not8.i.i.i27 = icmp eq ptr %.sroa.2.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %.not8.i.i.i27, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.v ; 2 uses
  %cond.i.i.i28 = icmp eq i64 %i.u, 1
  br i1 %cond.i.i.i28, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.af = load i8, ptr %.sroa.0.0.copyload.i, align 1, !tbaa !41
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !41
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %.sroa.0.0.copyload.i, i64 %i.u, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i25
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.v, i64 noundef 0, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %i.u)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit: ; preds = %bb.k, %bb.m, %bb.n, %bb.o
  store i64 %i.y, ptr %i.d, align 8, !tbaa !40
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.y
  store i8 0, ptr %i.ah, align 1, !tbaa !41
  %i.ai = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %2) #17 ; 6 uses
  %i.aj = load i64, ptr %i.d, align 8, !tbaa !40  ; 5 uses
  %i.ak = sub i64 9223372036854775807, %i.aj
  %i.al = icmp ult i64 %i.ak, %i.ai
  br i1 %i.al, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i29

bb.p:                                             ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #27
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i29: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit
  %i.am = add i64 %i.aj, %i.ai                    ; 3 uses
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !82  ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.j                 ; 2 uses
  br i1 %i.ao, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i30

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i29
  %i.ap = icmp ult i64 %i.aj, 16
  tail call void @llvm.assume(i1 %i.ap)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i30: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i29
  %i.aq = load i64, ptr %i.j, align 8
  %i.ar = select i1 %i.ao, i64 15, i64 %i.aq
  %.not.i.i.i31 = icmp ugt i64 %i.am, %i.ar
  br i1 %.not.i.i.i31, label %bb.v, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i30
  %.not8.i.i.i32 = icmp eq i64 %i.ai, 0
  br i1 %.not8.i.i.i32, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit34, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aj ; 2 uses
  %cond.i.i.i33 = icmp eq i64 %i.ai, 1
  br i1 %cond.i.i.i33, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.at = load i8, ptr %2, align 1, !tbaa !41
  store i8 %i.at, ptr %i.as, align 1, !tbaa !41
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit34

bb.u:                                             ; preds = %bb.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr nonnull align 1 dereferenceable(2) %2, i64 %i.ai, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit34

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i30
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.aj, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(2) %2, i64 noundef %i.ai)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit34

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit34: ; preds = %bb.r, %bb.t, %bb.u, %bb.v
  store i64 %i.am, ptr %i.d, align 8, !tbaa !40
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.am
  store i8 0, ptr %i.av, align 1, !tbaa !41
  %i.aw = load i32, ptr %3, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.ax = zext i32 %i.aw to i64
  %i.ay = call noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEELm20EEEmRAT1__cm(ptr noundef nonnull align 1 dereferenceable(20) %i.a, i64 noundef %i.ax) ; 6 uses
  %i.az = load i64, ptr %i.d, align 8, !tbaa !40  ; 5 uses
  %i.ba = sub i64 9223372036854775807, %i.az
  %i.bb = icmp ult i64 %i.ba, %i.ay
  br i1 %i.bb, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i35

bb.w:                                             ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit34
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #27
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i35: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit34
  %i.bc = add i64 %i.az, %i.ay                    ; 3 uses
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !82  ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.j                 ; 2 uses
  br i1 %i.be, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i36

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i35
  %i.bf = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.bf)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i36: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i35
  %i.bg = load i64, ptr %i.j, align 8
  %i.bh = select i1 %i.be, i64 15, i64 %i.bg
  %.not.i.i.i37 = icmp ugt i64 %i.bc, %i.bh
  br i1 %.not.i.i.i37, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i36
  %.not8.i.i.i38 = icmp eq i64 %i.ay, 0
  br i1 %.not8.i.i.i38, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.az ; 2 uses
  %cond.i.i.i39 = icmp eq i64 %i.ay, 1
  br i1 %cond.i.i.i39, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bj = load i8, ptr %i.a, align 16, !tbaa !41
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !41
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr nonnull align 16 %i.a, i64 %i.ay, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i36
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.az, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.ay)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit: ; preds = %bb.y, %bb.aa, %bb.ab, %bb.ac
  store i64 %i.bc, ptr %i.d, align 8, !tbaa !40
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc
  store i8 0, ptr %i.bl, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.bm = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(3) %4) #17 ; 6 uses
  %i.bn = load i64, ptr %i.d, align 8, !tbaa !40  ; 5 uses
  %i.bo = sub i64 9223372036854775807, %i.bn
  %i.bp = icmp ult i64 %i.bo, %i.bm
  br i1 %i.bp, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i40

bb.ad:                                            ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #27
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i40: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit
  %i.bq = add i64 %i.bn, %i.bm                    ; 3 uses
  %i.br = load ptr, ptr %i.b, align 8, !tbaa !82  ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.j                 ; 2 uses
  br i1 %i.bs, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i41

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i40
  %i.bt = icmp ult i64 %i.bn, 16
  call void @llvm.assume(i1 %i.bt)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i41: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i40
  %i.bu = load i64, ptr %i.j, align 8
  %i.bv = select i1 %i.bs, i64 15, i64 %i.bu
  %.not.i.i.i42 = icmp ugt i64 %i.bq, %i.bv
  br i1 %.not.i.i.i42, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i41
  %.not8.i.i.i43 = icmp eq i64 %i.bm, 0
  br i1 %.not8.i.i.i43, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit45, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bn ; 2 uses
  %cond.i.i.i44 = icmp eq i64 %i.bm, 1
  br i1 %cond.i.i.i44, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.bx = load i8, ptr %4, align 1, !tbaa !41
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !41
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit45

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr nonnull align 1 dereferenceable(3) %4, i64 %i.bm, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit45

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i41
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.bn, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(3) %4, i64 noundef %i.bm)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit45

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit45: ; preds = %bb.af, %bb.ah, %bb.ai, %bb.aj
  store i64 %i.bq, ptr %i.d, align 8, !tbaa !40
  %i.by = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bq
  store i8 0, ptr %i.bz, align 1, !tbaa !41
  %i.ca = load ptr, ptr %5, align 8, !tbaa !82    ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !40 ; 6 uses
  %i.cd = load i64, ptr %i.d, align 8, !tbaa !40  ; 5 uses
  %i.ce = sub i64 9223372036854775807, %i.cd
  %i.cf = icmp ult i64 %i.ce, %i.cc
  br i1 %i.cf, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.ak:                                            ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit45
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #27
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit45
  %i.cg = add i64 %i.cd, %i.cc                    ; 3 uses
  %i.ch = load ptr, ptr %i.b, align 8, !tbaa !82  ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.j                 ; 2 uses
  br i1 %i.ci, label %bb.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cj = icmp ult i64 %i.cd, 16
  call void @llvm.assume(i1 %i.cj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ck = load i64, ptr %i.j, align 8
  %i.cl = select i1 %i.ci, i64 15, i64 %i.ck
  %.not.i.i.i.i = icmp ugt i64 %i.cg, %i.cl
  br i1 %.not.i.i.i.i, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.cc, 0
  br i1 %.not8.i.i.i.i, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeERKS8_PS9_.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cd ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.cc, 1
  br i1 %cond.i.i.i.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.cn = load i8, ptr %i.ca, align 1, !tbaa !41
  store i8 %i.cn, ptr %i.cm, align 1, !tbaa !41
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeERKS8_PS9_.exit

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cm, ptr align 1 %i.ca, i64 %i.cc, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeERKS8_PS9_.exit

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.cd, i64 noundef 0, ptr noundef %i.ca, i64 noundef %i.cc)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeERKS8_PS9_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeERKS8_PS9_.exit: ; preds = %bb.am, %bb.ao, %bb.ap, %bb.aq
  store i64 %i.cg, ptr %i.d, align 8, !tbaa !40
  %i.co = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cg
  store i8 0, ptr %i.cp, align 1, !tbaa !41
  %i.cq = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %6) #17 ; 6 uses
  %i.cr = load i64, ptr %i.d, align 8, !tbaa !40  ; 5 uses
  %i.cs = sub i64 9223372036854775807, %i.cr
  %i.ct = icmp ult i64 %i.cs, %i.cq
  br i1 %i.ct, label %bb.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i46

bb.ar:                                            ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeERKS8_PS9_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #27
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i46: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeERKS8_PS9_.exit
  %i.cu = add i64 %i.cr, %i.cq                    ; 3 uses
  %i.cv = load ptr, ptr %i.b, align 8, !tbaa !82  ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.j                 ; 2 uses
  br i1 %i.cw, label %bb.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i47

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i46
  %i.cx = icmp ult i64 %i.cr, 16
  call void @llvm.assume(i1 %i.cx)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i47: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i46
  %i.cy = load i64, ptr %i.j, align 8
  %i.cz = select i1 %i.cw, i64 15, i64 %i.cy
  %.not.i.i.i48 = icmp ugt i64 %i.cu, %i.cz
  br i1 %.not.i.i.i48, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i47
  %.not8.i.i.i49 = icmp eq i64 %i.cq, 0
  br i1 %.not8.i.i.i49, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit51, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cr ; 2 uses
  %cond.i.i.i50 = icmp eq i64 %i.cq, 1
  br i1 %cond.i.i.i50, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.db = load i8, ptr %6, align 1, !tbaa !41
  store i8 %i.db, ptr %i.da, align 1, !tbaa !41
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit51

bb.aw:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.da, ptr nonnull align 1 dereferenceable(2) %6, i64 %i.cq, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit51

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i47
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.cr, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(2) %6, i64 noundef %i.cq)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit51

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit51: ; preds = %bb.at, %bb.av, %bb.aw, %bb.ax
  store i64 %i.cu, ptr %i.d, align 8, !tbaa !40
  %i.dc = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cu
  store i8 0, ptr %i.dd, align 1, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !40   ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !82     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 3 uses
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.k = load i64, ptr %i.h, align 8              ; 2 uses
  %i.l = select i1 %i.i, i64 15, i64 %i.k         ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
  unreachable

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi i64 [ %spec.store.select.i, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !64

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.g
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #28 ; 5 uses
  switch i64 %1, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !41
  store i8 %i.t, ptr %i.s, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.j, %bb.i
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load i8, ptr %3, align 1, !tbaa !41
  store i8 %i.x, ptr %i.w, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !41
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ae) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.s, ptr %0, align 8, !tbaa !82
  store i64 %.0, ptr %i.h, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEELm20EEEmRAT1__cm(ptr noundef nonnull align 1 dereferenceable(20) %0, i64 noundef %1) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = load i64, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, align 8, !tbaa !83
  %i.b = icmp ult i64 %1, %i.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 8), align 8
  %i.d = icmp ult i64 %1, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %i.d, !prof !84
  br i1 %or.cond, label %._crit_edge.thread, label %bb.b, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 16), align 8, !tbaa !83
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %._crit_edge.thread14, label %bb.c, !prof !64

._crit_edge.thread14:                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %1
  %i.h = load i16, ptr %i.g, align 2, !tbaa !85
  br label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 24), align 8, !tbaa !83
  %i.j = icmp ult i64 %1, %i.i
  br i1 %i.j, label %.lr.ph.preheader, label %bb.d, !prof !64

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 32), align 8, !tbaa !83
  %i.l = icmp ult i64 %1, %i.k
  br i1 %i.l, label %.lr.ph.preheader, label %bb.e, !prof !64

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 40), align 8, !tbaa !83
  %i.n = icmp ult i64 %1, %i.m
  br i1 %i.n, label %.lr.ph.preheader, label %bb.f, !prof !64

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 48), align 8, !tbaa !83
  %i.p = icmp ult i64 %1, %i.o
  br i1 %i.p, label %.lr.ph.preheader, label %bb.g, !prof !64

bb.g:                                             ; preds = %bb.f
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 56), align 8, !tbaa !83
  %i.r = icmp ult i64 %1, %i.q
  br i1 %i.r, label %.lr.ph.preheader, label %bb.h, !prof !64

bb.h:                                             ; preds = %bb.g
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 64), align 8, !tbaa !83
  %i.t = icmp ult i64 %1, %i.s
  br i1 %i.t, label %.lr.ph.preheader, label %bb.i, !prof !64

bb.i:                                             ; preds = %bb.h
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 72), align 8, !tbaa !83
  %i.v = icmp ult i64 %1, %i.u
  br i1 %i.v, label %.lr.ph.preheader, label %bb.j, !prof !64

bb.j:                                             ; preds = %bb.i
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 80), align 8, !tbaa !83
  %i.x = icmp ult i64 %1, %i.w
  br i1 %i.x, label %.lr.ph.preheader, label %bb.k, !prof !64

bb.k:                                             ; preds = %bb.j
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 88), align 8, !tbaa !83
  %i.z = icmp ult i64 %1, %i.y
  br i1 %i.z, label %.lr.ph.preheader, label %bb.l, !prof !64

bb.l:                                             ; preds = %bb.k
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 96), align 8, !tbaa !83
  %i.ab = icmp ult i64 %1, %i.aa
  br i1 %i.ab, label %.lr.ph.preheader, label %bb.m, !prof !64

bb.m:                                             ; preds = %bb.l
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 104), align 8, !tbaa !83
  %i.ad = icmp ult i64 %1, %i.ac
  br i1 %i.ad, label %.lr.ph.preheader, label %bb.n, !prof !64

bb.n:                                             ; preds = %bb.m
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 112), align 8, !tbaa !83
  %i.af = icmp ult i64 %1, %i.ae
  br i1 %i.af, label %.lr.ph.preheader, label %bb.o, !prof !64

bb.o:                                             ; preds = %bb.n
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 120), align 8, !tbaa !83
  %i.ah = icmp ult i64 %1, %i.ag
  br i1 %i.ah, label %.lr.ph.preheader, label %bb.p, !prof !64

bb.p:                                             ; preds = %bb.o
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 128), align 8, !tbaa !83
  %i.aj = icmp ult i64 %1, %i.ai
  br i1 %i.aj, label %.lr.ph.preheader, label %bb.q, !prof !64

bb.q:                                             ; preds = %bb.p
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 136), align 8, !tbaa !83
  %i.al = icmp ult i64 %1, %i.ak
  br i1 %i.al, label %.lr.ph.preheader, label %bb.r, !prof !64

bb.r:                                             ; preds = %bb.q
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 144), align 8, !tbaa !83
  %i.an = icmp ult i64 %1, %i.am
  br i1 %i.an, label %.lr.ph.preheader, label %bb.s, !prof !64

bb.s:                                             ; preds = %bb.r
  %i.ao = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 152), align 8, !tbaa !83
  %i.ap = icmp ult i64 %1, %i.ao
  br i1 %i.ap, label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit, label %.lr.ph.preheader, !prof !64

_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit: ; preds = %bb.s
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit
  %.ph = phi i64 [ 19, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit ], [ 18, %bb.r ], [ 17, %bb.q ], [ 16, %bb.p ], [ 15, %bb.o ], [ 14, %bb.n ], [ 13, %bb.m ], [ 12, %bb.l ], [ 11, %bb.k ], [ 10, %bb.j ], [ 9, %bb.i ], [ 8, %bb.h ], [ 7, %bb.g ], [ 6, %bb.f ], [ 5, %bb.e ], [ 4, %bb.d ], [ 3, %bb.c ], [ 20, %bb.s ] ; 5 uses
  %i.aq = add nsw i64 %.ph, -3                    ; 2 uses
  %i.ar = and i64 %i.aq, 2
  %lcmp.mod.not.not = icmp eq i64 %i.ar, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.as = add nsw i64 %.ph, -2                    ; 3 uses
  %i.at = udiv i64 %1, 100                        ; 2 uses
  %i.au = urem i64 %1, 100
  %i.av = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !85
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.as
  store i16 %i.aw, ptr %i.ax, align 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0.i6.unr = phi i64 [ %1, %.lr.ph.preheader ], [ %i.at, %.lr.ph.prol ]
  %.014.i5.unr = phi i64 [ %.ph, %.lr.ph.preheader ], [ %i.as, %.lr.ph.prol ]
  %.lcssa20.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.as, %.lr.ph.prol ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.at, %.lr.ph.prol ]
  %i.ay = icmp ult i64 %i.aq, 2
  br i1 %i.ay, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0.i6 = phi i64 [ %i.bg, %.lr.ph ], [ %.0.i6.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.014.i5 = phi i64 [ %i.bf, %.lr.ph ], [ %.014.i5.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.az = udiv i64 %.0.i6, 100
  %i.ba = urem i64 %.0.i6, 100
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !85
  %i.bd = getelementptr i8, ptr %0, i64 %.014.i5
  %i.be = getelementptr i8, ptr %i.bd, i64 -2
  store i16 %i.bc, ptr %i.be, align 1
  %i.bf = add i64 %.014.i5, -4                    ; 4 uses
  %i.bg = udiv i64 %.0.i6, 10000                  ; 2 uses
  %i.bh = urem i64 %i.az, 100
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !85
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf
  store i16 %i.bj, ptr %i.bk, align 1
  %i.bl = icmp ugt i64 %i.bf, 2
  br i1 %i.bl, label %.lr.ph, label %._crit_edge, !llvm.loop !87

._crit_edge.thread:                               ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %1
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !85
  br label %bb.u

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.lcssa20 = phi i64 [ %.lcssa20.unr, %.lr.ph.prol.loopexit ], [ %i.bf, %.lr.ph ]
  %.lcssa = phi i64 [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.bg, %.lr.ph ]
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.lcssa
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !85 ; 2 uses
  %i.bq = icmp eq i64 %.lcssa20, 2
  br i1 %i.bq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.thread14, %._crit_edge
  %i.br = phi i16 [ %i.h, %._crit_edge.thread14 ], [ %i.bp, %._crit_edge ]
  %i.bs = phi i64 [ 2, %._crit_edge.thread14 ], [ %.ph, %._crit_edge ]
  store i16 %i.br, ptr %0, align 1
  br label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEvPcmm.exit

bb.u:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.bt = phi i16 [ %i.bn, %._crit_edge.thread ], [ %i.bp, %._crit_edge ]
  %i.bu = phi i64 [ 1, %._crit_edge.thread ], [ %.ph, %._crit_edge ]
  %i.bv = lshr i16 %i.bt, 8
  %i.bw = trunc nuw i16 %i.bv to i8
  store i8 %i.bw, ptr %0, align 1, !tbaa !41
  br label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEvPcmm.exit

_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEvPcmm.exit: ; preds = %bb.t, %bb.u
  %i.bx = phi i64 [ %i.bs, %bb.t ], [ %i.bu, %bb.u ]
  ret i64 %i.bx
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly11LogCategory14processMessageERKNS_10LogMessageE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(176) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNK5folly11LogCategory14processMessageERKNS_10LogMessageE:bb.a
  br i1 %i.x, label %.preheader, label %bb.r

.preheader:                                       ; preds = %bb.e
  %.not = icmp eq ptr %i.r, %i.s
  br i1 %.not, label %.loopexit41, label %.lr.ph

bb.f:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.g:                                             ; preds = %bb.r
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrIKNS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSE_22SynchronizedMutexLevelE2ELNSE_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #17
  br label %bb.aj

.lr.ph:                                           ; preds = %.preheader, %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit
  %.01844 = phi i64 [ %i.bf, %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit ], [ 0, %.preheader ] ; 3 uses
  %i.aa = load ptr, ptr %5, align 8, !tbaa !91    ; 2 uses
  %.not.i.i30 = icmp eq ptr %i.aa, null
  %.neg.i.i31 = select i1 %.not.i.i30, i64 0, i64 -24
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %.neg.i.i31
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !45
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.01844 ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.01844 ; 2 uses
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !98
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !98
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !47 ; 4 uses
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %.not7.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !7
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !7
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !47
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.k, %bb.j, %bb.h
  %i.ap = phi ptr [ %i.aj, %bb.h ], [ %i.aj, %bb.j ], [ %.pr.pre.i.i.i, %bb.k ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.aq, align 8, !tbaa !50
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !52
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !53
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #17, !call_target !55, !inline_history !101
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !53
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #17, !call_target !63, !inline_history !101
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i9.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i9.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i = phi i32 [ %i.at, %bb.o ], [ %i.bd, %bb.p ]
  %i.be = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.be, label %bb.q, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !64

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #17
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !47
  br label %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit

_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit: ; preds = %.lr.ph, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.bf = add nuw i64 %.01844, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bf, %i.w
  br i1 %exitcond.not, label %.loopexit41, label %.lr.ph, !llvm.loop !102

bb.r:                                             ; preds = %bb.e
  %i.bg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.s unwind label %bb.g       ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.bh = load ptr, ptr %4, align 8, !tbaa !45
  br label %.loopexit41

.loopexit41:                                      ; preds = %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit, %.preheader, %bb.s
  %.0 = phi ptr [ %i.bh, %bb.s ], [ %3, %.preheader ], [ %3, %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit ]
  %i.bi = load i16, ptr %i.e, align 8, !tbaa !96  ; 2 uses
  %.not.i.i34 = icmp eq i16 %i.bi, 0
  br i1 %.not.i.i34, label %_ZN5folly9LockedPtrIKNS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSE_22SynchronizedMutexLevelE2ELNSE_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %.loopexit41
  %i.bj = load ptr, ptr %5, align 8, !tbaa !91    ; 7 uses
  switch i16 %i.bi, label %bb.z [
    i16 1, label %bb.u
    i16 3, label %bb.y
  ]

bb.u:                                             ; preds = %bb.t
  %i.bk = load atomic i32, ptr %i.bj acquire, align 4
  %i.bl = and i32 %i.bk, 768
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bn = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.bj)
          to label %.noexc38 unwind label %bb.ab

.noexc38:                                         ; preds = %bb.v
  br i1 %i.bn, label %_ZN5folly9LockedPtrIKNS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSE_22SynchronizedMutexLevelE2ELNSE_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %.noexc38, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.bo = atomicrmw sub ptr %i.bj, i32 2048 seq_cst, align 4 ; 2 uses
  %i.bp = add i32 %i.bo, -2048                    ; 2 uses
  store i32 %i.bp, ptr %i.b, align 4, !tbaa !7
  %i.bq = icmp ugt i32 %i.bp, 2047
  %i.br = and i32 %i.bo, 16
  %.not.i.i.i.i37 = icmp eq i32 %i.br, 0
  %or.cond.i.i.i = or i1 %i.bq, %.not.i.i.i.i37
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.x, !prof !103

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.bj, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.ab

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSE_22SynchronizedMutexLevelE2ELNSE_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.y:                                             ; preds = %bb.t
  %i.bs = load i16, ptr %i.f, align 2, !tbaa !97
  %i.bt = zext i16 %i.bs to i64
  %i.bu = ptrtoint ptr %i.bj to i64
  %.idx.i = shl nuw nsw i64 %i.bt, 5
  %i.bv = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.bw = cmpxchg ptr %i.bv, i64 %i.bu, i64 0 seq_cst seq_cst, align 8
  %i.bx = extractvalue { i64, i1 } %i.bw, 1
  br i1 %i.bx, label %_ZN5folly9LockedPtrIKNS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSE_22SynchronizedMutexLevelE2ELNSE_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.by = atomicrmw sub ptr %i.bj, i32 2048 seq_cst, align 4 ; 2 uses
  %i.bz = add i32 %i.by, -2048                    ; 2 uses
  store i32 %i.bz, ptr %i.a, align 4, !tbaa !7
  %i.ca = icmp ugt i32 %i.bz, 2047
  %i.cb = and i32 %i.by, 16
  %.not.i.i.i36 = icmp eq i32 %i.cb, 0
  %or.cond.i.i = or i1 %i.ca, %.not.i.i.i36
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.aa, !prof !103

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.bj, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.ab

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSE_22SynchronizedMutexLevelE2ELNSE_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.ab:                                            ; preds = %bb.aa, %bb.x, %bb.v
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #25
  unreachable

_ZN5folly9LockedPtrIKNS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSE_22SynchronizedMutexLevelE2ELNSE_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.y, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc38, %.loopexit41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %.not47 = icmp eq ptr %i.r, %i.s
  br i1 %.not47, label %._crit_edge, label %.lr.ph46

.lr.ph46:                                         ; preds = %_ZN5folly9LockedPtrIKNS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSE_22SynchronizedMutexLevelE2ELNSE_23SynchronizedMutexMethodE0EEEED2Ev.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 23
  br label %bb.ak

._crit_edge:                                      ; preds = %bb.ap, %_ZN5folly9LockedPtrIKNS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSE_22SynchronizedMutexLevelE2ELNSE_23SynchronizedMutexMethodE0EEEED2Ev.exit
  %i.cg = load ptr, ptr %4, align 8, !tbaa !45    ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !46 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.cg, %i.ci
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.da, %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i.i ], [ %i.cg, %._crit_edge ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !47 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 4 uses
  %i.cm = load atomic i64, ptr %i.cl acquire, align 8 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 4294967297
  %i.co = trunc i64 %i.cm to i32                  ; 2 uses
  br i1 %i.cn, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.cl, align 8, !tbaa !50
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store i32 0, ptr %i.cp, align 4, !tbaa !52
  %i.cq = load ptr, ptr %i.ck, align 8, !tbaa !53
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #17, !call_target !55, !inline_history !104
  %i.ct = load ptr, ptr %i.ck, align 8, !tbaa !53
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #17, !call_target !63, !inline_history !104
  br label %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cx = add nsw i32 %i.co, -1
  store i32 %i.cx, ptr %i.cl, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.cy = atomicrmw volatile add ptr %i.cl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.co, %bb.af ], [ %i.cy, %bb.ag ]
  %i.cz = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cz, label %bb.ah, label %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i.i, !prof !64

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #17
  br label %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i.i: ; preds = %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.ad, %.lr.ph.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.da, %i.ci
  br i1 %.not.i.i.i35, label %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !65

_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !45
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.db = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.cg, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !67
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.db to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.dg) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exit.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZNSt5arrayISt10shared_ptrIN5folly10LogHandlerEELm5EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void

bb.aj:                                            ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.y, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %.loopexit

bb.ak:                                            ; preds = %.lr.ph46, %bb.ap
  %.01745 = phi i64 [ 0, %.lr.ph46 ], [ %i.du, %bb.ap ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %.0, i64 %.01745
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !98 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !53
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  invoke void %i.dl(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull %0)
          to label %bb.ap unwind label %bb.al, !call_target !105

bb.al:                                            ; preds = %bb.ak
  %i.dm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.dn = extractvalue { ptr, i32 } %i.dm, 1
  %i.do = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #17
  %i.dp = icmp eq i32 %i.dn, %i.do
  br i1 %i.dp, label %bb.am, label %.loopexit

bb.am:                                            ; preds = %bb.al
  %i.dq = extractvalue { ptr, i32 } %i.dm, 0
  %i.dr = call ptr @__cxa_begin_catch(ptr %i.dq) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZN5folly12exceptionStrERKSt9exception(ptr dead_on_unwind nonnull writable sret(%"class.folly::basic_fbstring") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.dr)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %bb.am
  call void @_ZN5folly8LoggerDB15internalWarningIJRA27_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA19_S2_NS_14basic_fbstringIcS8_S9_NS_13fbstring_coreIcEEEEEEEvNS_5RangeIPS2_EEiDpOT_(ptr nonnull @.str.6, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 79), i32 noundef 129, ptr noundef nonnull align 1 dereferenceable(27) @.str.7, ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull align 1 dereferenceable(19) @.str.8, ptr noundef nonnull align 8 dereferenceable(24) %6) #17
  %i.ds = load i8, ptr %i.cf, align 1, !tbaa !41
  %i.dt = icmp ult i8 %i.ds, 64
  br i1 %i.dt, label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #17
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit

_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit: ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  invoke void @__cxa_end_catch()
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit, %bb.ak
  %i.du = add nuw i64 %.01745, 1                  ; 2 uses
  %exitcond51.not = icmp eq i64 %i.du, %i.w
  br i1 %exitcond51.not, label %._crit_edge, label %bb.ak, !llvm.loop !3852

bb.aq:                                            ; preds = %bb.am
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  invoke void @__cxa_end_catch()
          to label %.loopexit unwind label %bb.as

bb.ar:                                            ; preds = %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %bb.al, %bb.aq, %bb.ar, %bb.aj
  %.merged = phi { ptr, i32 } [ %.pn, %bb.aj ], [ %i.dv, %bb.aq ], [ %i.dw, %bb.ar ], [ %i.dm, %bb.al ]
  call void @_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZNSt5arrayISt10shared_ptrIN5folly10LogHandlerEELm5EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %.merged

bb.as:                                            ; preds = %bb.aq
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #25
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.au, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !45     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67
  %i.j = load ptr, ptr %0, align 8, !tbaa !45     ; 6 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE11_M_allocateEm.exit.i, !prof !64

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt12_Vector_baseISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28 ; 3 uses
  %i.q = icmp eq ptr %i.c, %i.b
  br i1 %i.q, label %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.aa, %_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !47   ; 2 uses
  %i.t = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !3853
  store <2 x ptr> %i.t, ptr %.08.i.i.i.i.i, align 8, !tbaa !3853
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %i.u, align 4, !tbaa !7
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !7
  br label %_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16
  %i.ab = icmp eq ptr %i.z, %i.b
  br i1 %i.ab, label %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3854

_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.loopexit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre58 = load ptr, ptr %0, align 8, !tbaa !45
  br label %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit

_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.loopexit, %_ZNSt12_Vector_baseISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE11_M_allocateEm.exit.i
  %i.ac = phi ptr [ %.pre58, %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.loopexit ], [ %i.j, %_ZNSt12_Vector_baseISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !46 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.aw, %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i ], [ %i.ac, %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !47 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ah, align 8, !tbaa !50
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !52
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !53
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #17, !call_target !55, !inline_history !62
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !53
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #17, !call_target !63, !inline_history !62
  br label %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = add nsw i32 %i.ak, -1
  store i32 %i.at, ptr %i.ah, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.au = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ak, %bb.k ], [ %i.au, %bb.l ]
  %i.av = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.av, label %bb.m, label %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i, !prof !64

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #17
  br label %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.i, %.lr.ph.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.aw, %i.ae
  br i1 %.not.i.i25, label %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEEEvT_S5_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !65

_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEEEvT_S5_.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !45
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEEEvT_S5_.exit

_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEEEvT_S5_.exitthread-pre-split, %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit
  %i.ax = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEEEvT_S5_.exitthread-pre-split ], [ %i.ac, %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEEEvT_S5_.exit
  %i.ay = load ptr, ptr %i.h, align 8, !tbaa !67
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bb) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEEEvT_S5_.exit, %bb.n
  store ptr %i.p, ptr %0, align 8, !tbaa !45
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.bc, ptr %i.h, align 8, !tbaa !67
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5folly10LogHandlerEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

bb.o:                                             ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !46 ; 3 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.bg, %i.f
  br i1 %.not24, label %bb.ag, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = icmp sgt i64 %i.g, 0
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5folly10LogHandlerEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

.lr.ph.i.i.i.i.i26:                               ; preds = %bb.p, %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ck, %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit.i.i.i.i.i ], [ %i.g, %bb.p ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.cj, %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit.i.i.i.i.i ], [ %i.j, %bb.p ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ci, %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit.i.i.i.i.i ], [ %i.c, %bb.p ] ; 3 uses
  %i.bi = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !98
  store ptr %i.bi, ptr %.0811.i.i.i.i.i, align 8, !tbaa !98
  %i.bj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !47 ; 4 uses
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bl, %i.bm
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i26
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 3 uses
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i.i.i.i.i27 = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i27, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !7
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bn, align 4, !tbaa !7
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.br = atomicrmw volatile add ptr %i.bn, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.bj, align 8, !tbaa !47
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.q
  %i.bs = phi ptr [ %i.bm, %bb.q ], [ %i.bm, %bb.s ], [ %.pr.pre.i.i.i.i.i.i.i.i, %bb.t ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not8.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 4 uses
  %i.bu = load atomic i64, ptr %i.bt acquire, align 8 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 4294967297
  %i.bw = trunc i64 %i.bu to i32                  ; 2 uses
  br i1 %i.bv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bt, align 8, !tbaa !50
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 0, ptr %i.bx, align 4, !tbaa !52
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !53
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  tail call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #17, !call_target !55, !inline_history !3855
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !53
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  tail call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #17, !call_target !63, !inline_history !3855
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.ce = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i9.i.i.i.i.i.i.i.i = icmp eq i8 %i.ce, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = add nsw i32 %i.bw, -1
  store i32 %i.cf, ptr %i.bt, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.cg = atomicrmw volatile add ptr %i.bt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bw, %bb.x ], [ %i.cg, %bb.y ]
  %i.ch = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ch, label %bb.z, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, !prof !64

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #17
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.v, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !47
  br label %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit.i.i.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i26
  %i.ci = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 3 uses
  %i.ck = add nsw i64 %.012.i.i.i.i.i, -1
  %i.cl = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5folly10LogHandlerEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit, !llvm.loop !3856

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5folly10LogHandlerEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit: ; preds = %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.bd, align 8, !tbaa !3857
  %.pre64 = ptrtoint ptr %i.cj to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5folly10LogHandlerEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5folly10LogHandlerEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5folly10LogHandlerEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit, %bb.p
  %.pre-phi65 = phi i64 [ %.pre64, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5folly10LogHandlerEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.l, %bb.p ]
  %i.cm = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5folly10LogHandlerEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.be, %bb.p ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.cj, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5folly10LogHandlerEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.j, %bb.p ]
  %i.cn = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.cm
  br i1 %i.cn, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5folly10LogHandlerEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i28.preheader

.lr.ph.i.i28.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5folly10LogHandlerEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit
  %i.co = sub i64 %.pre-phi65, %i.l
  %i.cp = getelementptr inbounds i8, ptr %i.j, i64 %i.co
  br label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %.lr.ph.i.i28.preheader, %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i33
  %.sroa.01.04.i.i = phi ptr [ %i.dh, %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i33 ], [ %i.cp, %.lr.ph.i.i28.preheader ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !47 ; 8 uses
  %.not.i.i.i.i.i.i29 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i.i.i29, label %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i33, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i28
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 4 uses
  %i.ct = load atomic i64, ptr %i.cs acquire, align 8 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 4294967297
  %i.cv = trunc i64 %i.ct to i32                  ; 2 uses
  br i1 %i.cu, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.cs, align 8, !tbaa !50
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 0, ptr %i.cw, align 4, !tbaa !52
  %i.cx = load ptr, ptr %i.cr, align 8, !tbaa !53
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  tail call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #17, !call_target !55, !inline_history !3858
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !53
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  tail call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #17, !call_target !63, !inline_history !3858
  br label %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i33

bb.ac:                                            ; preds = %bb.aa
  %i.dd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i.i.i30 = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i.i.i.i.i.i30, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.de = add nsw i32 %i.cv, -1
  store i32 %i.de, ptr %i.cs, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i31

bb.ae:                                            ; preds = %bb.ac
  %i.df = atomicrmw volatile add ptr %i.cs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i31: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i.i.i32 = phi i32 [ %i.cv, %bb.ad ], [ %i.df, %bb.ae ]
  %i.dg = icmp eq i32 %.0.i.i.i.i.i.i.i.i32, 1
  br i1 %i.dg, label %bb.af, label %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i33, !prof !64

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i31
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #17
  br label %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i33

_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i33: ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i31, %bb.ab, %.lr.ph.i.i28
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.cm
  br i1 %i.di, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5folly10LogHandlerEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i28, !llvm.loop !3859

bb.ag:                                            ; preds = %bb.o
  %i.dj = ashr exact i64 %i.bg, 4                 ; 2 uses
  %i.dk = icmp sgt i64 %i.dj, 0
  br i1 %i.dk, label %.lr.ph.i.i.i.i.i35, label %_ZSt4copyIPSt10shared_ptrIN5folly10LogHandlerEES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i35:                               ; preds = %bb.ag, %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit.i.i.i.i.i48
  %.012.i.i.i.i.i36 = phi i64 [ %i.en, %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit.i.i.i.i.i48 ], [ %i.dj, %bb.ag ] ; 2 uses
  %.0811.i.i.i.i.i37 = phi ptr [ %i.em, %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit.i.i.i.i.i48 ], [ %i.j, %bb.ag ] ; 3 uses
  %.0910.i.i.i.i.i38 = phi ptr [ %i.el, %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit.i.i.i.i.i48 ], [ %i.c, %bb.ag ] ; 3 uses
  %i.dl = load ptr, ptr %.0910.i.i.i.i.i38, align 8, !tbaa !98
  store ptr %i.dl, ptr %.0811.i.i.i.i.i37, align 8, !tbaa !98
  %i.dm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i37, i64 8 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i38, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !47 ; 4 uses
  %i.dp = load ptr, ptr %i.dm, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i.i.i.i.i.i39 = icmp eq ptr %i.do, %i.dp
  br i1 %.not.i.i.i.i.i.i.i.i39, label %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit.i.i.i.i.i48, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i35
  %.not7.i.i.i.i.i.i.i.i40 = icmp eq ptr %i.do, null
  br i1 %.not7.i.i.i.i.i.i.i.i40, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i42, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 3 uses
  %i.dr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i.i.i.i.i41 = icmp eq i8 %i.dr, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i41, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ds = load i32, ptr %i.dq, align 4, !tbaa !7
  %i.dt = add nsw i32 %i.ds, 1
  store i32 %i.dt, ptr %i.dq, align 4, !tbaa !7
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i42

bb.ak:                                            ; preds = %bb.ai
  %i.du = atomicrmw volatile add ptr %i.dq, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i49 = load ptr, ptr %i.dm, align 8, !tbaa !47
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i42

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i42: ; preds = %bb.ak, %bb.aj, %bb.ah
  %i.dv = phi ptr [ %i.dp, %bb.ah ], [ %i.dp, %bb.aj ], [ %.pr.pre.i.i.i.i.i.i.i.i49, %bb.ak ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i43 = icmp eq ptr %i.dv, null
  br i1 %.not8.i.i.i.i.i.i.i.i43, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i47, label %bb.al

bb.al:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i42
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 4 uses
  %i.dx = load atomic i64, ptr %i.dw acquire, align 8 ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 4294967297
  %i.dz = trunc i64 %i.dx to i32                  ; 2 uses
  br i1 %i.dy, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.dw, align 8, !tbaa !50
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  store i32 0, ptr %i.ea, align 4, !tbaa !52
  %i.eb = load ptr, ptr %i.dv, align 8, !tbaa !53
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8
  tail call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #17, !call_target !55, !inline_history !3860
  %i.ee = load ptr, ptr %i.dv, align 8, !tbaa !53
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8
  tail call void %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #17, !call_target !63, !inline_history !3860
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i47

bb.an:                                            ; preds = %bb.al
  %i.eh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i9.i.i.i.i.i.i.i.i44 = icmp eq i8 %i.eh, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i44, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ei = add nsw i32 %i.dz, -1
  store i32 %i.ei, ptr %i.dw, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i45

bb.ap:                                            ; preds = %bb.an
  %i.ej = atomicrmw volatile add ptr %i.dw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i45

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i45: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i.i.i.i.i.i46 = phi i32 [ %i.dz, %bb.ao ], [ %i.ej, %bb.ap ]
  %i.ek = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i46, 1
  br i1 %i.ek, label %bb.aq, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i47, !prof !64

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i45
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #17
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i47

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i47: ; preds = %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i45, %bb.am, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i42
  store ptr %i.do, ptr %i.dm, align 8, !tbaa !47
  br label %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit.i.i.i.i.i48

_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit.i.i.i.i.i48: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i47, %.lr.ph.i.i.i.i.i35
  %i.el = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i38, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i37, i64 16
  %i.en = add nsw i64 %.012.i.i.i.i.i36, -1
  %i.eo = icmp sgt i64 %.012.i.i.i.i.i36, 1
  br i1 %i.eo, label %.lr.ph.i.i.i.i.i35, label %_ZSt4copyIPSt10shared_ptrIN5folly10LogHandlerEES4_ET0_T_S6_S5_.exit.loopexit, !llvm.loop !3861

_ZSt4copyIPSt10shared_ptrIN5folly10LogHandlerEES4_ET0_T_S6_S5_.exit.loopexit: ; preds = %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit.i.i.i.i.i48
  %.pre54 = load ptr, ptr %1, align 8, !tbaa !45
  %.pre55 = load ptr, ptr %i.bd, align 8, !tbaa !46 ; 2 uses
  %.pre56 = load ptr, ptr %0, align 8, !tbaa !45
  %.pre57 = load ptr, ptr %i.a, align 8, !tbaa !46
  %.pre59 = ptrtoint ptr %.pre55 to i64
  %.pre60 = ptrtoint ptr %.pre56 to i64
  %.pre62 = sub i64 %.pre59, %.pre60
  br label %_ZSt4copyIPSt10shared_ptrIN5folly10LogHandlerEES4_ET0_T_S6_S5_.exit

_ZSt4copyIPSt10shared_ptrIN5folly10LogHandlerEES4_ET0_T_S6_S5_.exit: ; preds = %_ZSt4copyIPSt10shared_ptrIN5folly10LogHandlerEES4_ET0_T_S6_S5_.exit.loopexit, %bb.ag
  %.pre-phi63 = phi i64 [ %.pre62, %_ZSt4copyIPSt10shared_ptrIN5folly10LogHandlerEES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.bg, %bb.ag ]
  %i.ep = phi ptr [ %.pre57, %_ZSt4copyIPSt10shared_ptrIN5folly10LogHandlerEES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.b, %bb.ag ] ; 2 uses
  %i.eq = phi ptr [ %.pre55, %_ZSt4copyIPSt10shared_ptrIN5folly10LogHandlerEES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.be, %bb.ag ]
  %i.er = phi ptr [ %.pre54, %_ZSt4copyIPSt10shared_ptrIN5folly10LogHandlerEES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.c, %bb.ag ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %.pre-phi63 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.es, %i.ep
  br i1 %.not9.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5folly10LogHandlerEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPSt10shared_ptrIN5folly10LogHandlerEES4_ET0_T_S6_S5_.exit, %_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.fc, %_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.eq, %_ZSt4copyIPSt10shared_ptrIN5folly10LogHandlerEES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.fb, %_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.es, %_ZSt4copyIPSt10shared_ptrIN5folly10LogHandlerEES4_ET0_T_S6_S5_.exit ] ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !47 ; 2 uses
  %i.ev = load <2 x ptr>, ptr %.0810.i.i.i.i, align 8, !tbaa !3853
  store <2 x ptr> %i.ev, ptr %.011.i.i.i.i, align 8, !tbaa !3853
  %.not.i.i.i.i.i.i.i.i50 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i.i.i.i.i.i50, label %_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 3 uses
  %i.ex = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i.i.i.i.i51 = icmp eq i8 %i.ex, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i51, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ey = load i32, ptr %i.ew, align 4, !tbaa !7
  %i.ez = add nsw i32 %i.ey, 1
  store i32 %i.ez, ptr %i.ew, align 4, !tbaa !7
  br label %_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.fa = atomicrmw volatile add ptr %i.ew, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.at, %bb.as, %.lr.ph.i.i.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.fb, %i.ep
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5folly10LogHandlerEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3862

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5folly10LogHandlerEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i33, %_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4copyIPSt10shared_ptrIN5folly10LogHandlerEES4_ET0_T_S6_S5_.exit, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5folly10LogHandlerEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, %_ZNSt12_Vector_baseISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.fd = load ptr, ptr %0, align 8, !tbaa !45
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.f
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !46
  br label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5folly10LogHandlerEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrIKNS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSE_22SynchronizedMutexLevelE2ELNSE_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !96
  %.not.i = icmp eq i16 %i.b, 0
  br i1 %.not.i, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !91
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.a)
          to label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #25
  unreachable

_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly8LoggerDB15internalWarningIJRA27_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA19_S2_NS_14basic_fbstringIcS8_S9_NS_13fbstring_coreIcEEEEEEEvNS_5RangeIPS2_EEiDpOT_(ptr %0, ptr %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(27) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(19) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3863)
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.b, ptr %7, align 8, !tbaa !39, !alias.scope !3863
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !40, !alias.scope !3863
  store i8 0, ptr %i.b, align 8, !tbaa !41, !alias.scope !3863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !3863
  store ptr %7, ptr %i.a, align 8, !tbaa !80, !noalias !3863
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !40, !noalias !3863
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !41, !noalias !3863
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 23
  %i.i = load i8, ptr %i.h, align 1, !tbaa !41, !noalias !3863 ; 2 uses
  %i.j = zext i8 %i.i to i64
  %i.k = sub nsw i64 23, %i.j
  %i.l = icmp ult i8 %i.i, 24
  %i.m = select i1 %i.l, i64 %i.k, i64 %i.g
  %i.n = add i64 %i.e, 46
  %i.o = add i64 %i.n, %i.m                       ; 3 uses
  %.not.i = icmp ugt i64 %i.o, 15
  br i1 %.not.i, label %bb.a, label %.noexc.i

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %.0.i = call i64 @llvm.umax.i64(i64 %i.o, i64 30) ; 2 uses
  %i.q = add nuw i64 %.0.i, 1                     ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !64

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #27
          to label %.noexc8 unwind label %bb.e

.noexc8:                                          ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.c
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #28
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i unwind label %bb.e ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  store i8 0, ptr %i.s, align 1, !tbaa !41
  store ptr %i.s, ptr %7, align 8, !tbaa !82
  store i64 %.0.i, ptr %i.b, align 8, !tbaa !41
  br label %.noexc.i

.noexc.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3ELm4EEEE4callIJA27_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA19_cNS_14basic_fbstringIcSA_SB_NS_13fbstring_coreIcEEEEPSC_EEEvDpRKT_(ptr noundef nonnull align 1 dereferenceable(27) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(19) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, %bb.d, %bb.b, %.noexc.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !3863
  %i.u = load ptr, ptr %7, align 8, !tbaa !82, !alias.scope !3863 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.b
  br i1 %i.v, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.w = load i64, ptr %i.b, align 8, !tbaa !41, !alias.scope !3863
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #26
  br label %.body

bb.f:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !3863
  call void @_ZN5folly8LoggerDB19internalWarningImplENS_5RangeIPKcEEiONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %0, ptr %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  %i.y = load ptr, ptr %7, align 8, !tbaa !82     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.b
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !41
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  ret void

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ac = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.ac) #25
  unreachable
}

declare void @_ZN5folly12exceptionStrERKSt9exception(ptr dead_on_unwind writable sret(%"class.folly::basic_fbstring") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5arrayISt10shared_ptrIN5folly10LogHandlerEELm5EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !52
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !call_target !55, !inline_history !3866
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !call_target !63, !inline_history !3866
  br label %_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !64

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  br label %_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !47   ; 8 uses
  %.not.i.i.1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.1, label %_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.1 = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %i.t, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.1

bb.k:                                             ; preds = %bb.i
  %i.z = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.1

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.1: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.1 = phi i32 [ %i.w, %bb.j ], [ %i.z, %bb.k ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.1, 1
  br i1 %i.aa, label %bb.l, label %_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1, !prof !64

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.1
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #17
  br label %_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1

bb.m:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !50
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !52
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !53
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #17, !call_target !55, !inline_history !3866
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !53
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #17, !call_target !63, !inline_history !3866
  br label %_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1

_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1: ; preds = %bb.m, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.1, %_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !47 ; 8 uses
  %.not.i.i.2 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.2, label %_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.2 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.2, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = add nsw i32 %i.an, -1
  store i32 %i.ap, ptr %i.ak, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.2

bb.q:                                             ; preds = %bb.o
  %i.aq = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.2

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.2: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.2 = phi i32 [ %i.an, %bb.p ], [ %i.aq, %bb.q ]
  %i.ar = icmp eq i32 %.0.i.i.i.i.2, 1
  br i1 %i.ar, label %bb.r, label %_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2, !prof !64

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.2
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #17
  br label %_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2

bb.s:                                             ; preds = %bb.n
  store i32 0, ptr %i.ak, align 8, !tbaa !50
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.as, align 4, !tbaa !52
  %i.at = load ptr, ptr %i.aj, align 8, !tbaa !53
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #17, !call_target !55, !inline_history !3866
  %i.aw = load ptr, ptr %i.aj, align 8, !tbaa !53
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #17, !call_target !63, !inline_history !3866
  br label %_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2

_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2: ; preds = %bb.s, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.2, %_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !47 ; 8 uses
  %.not.i.i.3 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.3, label %_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.3, label %bb.t

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 4 uses
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 4294967297
  %i.be = trunc i64 %i.bc to i32                  ; 2 uses
  br i1 %i.bd, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.3 = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.3, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bg = add nsw i32 %i.be, -1
  store i32 %i.bg, ptr %i.bb, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.3

bb.w:                                             ; preds = %bb.u
  %i.bh = atomicrmw volatile add ptr %i.bb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.3: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.3 = phi i32 [ %i.be, %bb.v ], [ %i.bh, %bb.w ]
  %i.bi = icmp eq i32 %.0.i.i.i.i.3, 1
  br i1 %i.bi, label %bb.x, label %_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.3, !prof !64

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #17
  br label %_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.3

bb.y:                                             ; preds = %bb.t
  store i32 0, ptr %i.bb, align 8, !tbaa !50
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 0, ptr %i.bj, align 4, !tbaa !52
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !53
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #17, !call_target !55, !inline_history !3866
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !53
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #17, !call_target !63, !inline_history !3866
  br label %_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.3

_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.3: ; preds = %bb.y, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.3, %_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !47 ; 8 uses
  %.not.i.i.4 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.4, label %_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.4, label %bb.z

bb.z:                                             ; preds = %_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 4 uses
  %i.bt = load atomic i64, ptr %i.bs acquire, align 8 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 4294967297
  %i.bv = trunc i64 %i.bt to i32                  ; 2 uses
  br i1 %i.bu, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.4 = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i.4, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bx = add nsw i32 %i.bv, -1
  store i32 %i.bx, ptr %i.bs, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.4

bb.ac:                                            ; preds = %bb.aa
  %i.by = atomicrmw volatile add ptr %i.bs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.4

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.4: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.4 = phi i32 [ %i.bv, %bb.ab ], [ %i.by, %bb.ac ]
  %i.bz = icmp eq i32 %.0.i.i.i.i.4, 1
  br i1 %i.bz, label %bb.ad, label %_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.4, !prof !64

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.4
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #17
  br label %_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.4

bb.ae:                                            ; preds = %bb.z
  store i32 0, ptr %i.bs, align 8, !tbaa !50
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 0, ptr %i.ca, align 4, !tbaa !52
  %i.cb = load ptr, ptr %i.br, align 8, !tbaa !53
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  tail call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #17, !call_target !55, !inline_history !3866
  %i.ce = load ptr, ptr %i.br, align 8, !tbaa !53
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  tail call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #17, !call_target !63, !inline_history !3866
  br label %_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.4

_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.4: ; preds = %bb.ae, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.4, %_ZNSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = load atomic i32, ptr @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache) #29
  br label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit

_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.e, %bb.b ], [ %i.d, %bb.a ]
  %i.g = tail call nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE26tls_lastDeferredReaderSlotEvE2tl) ; 2 uses
  %i.h = tail call i32 @llvm.umin.i32(i32 %i.f, i32 256)
  %.sroa.speculated.i = zext nneg i32 %i.h to i64
  %i.i = getelementptr inbounds nuw [256 x i8], ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 %.sroa.speculated.i
  %i.j = icmp eq ptr %2, null                     ; 2 uses
  %i.k = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.l = or disjoint i64 %i.k, 1
  %i.m = tail call nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE21tls_lastTokenlessSlotEvE2tl)
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit
  %i.n = load i32, ptr %1, align 4, !tbaa !7      ; 2 uses
  %i.o = and i32 %i.n, 128
  %.not49 = icmp eq i32 %i.o, 0
  br i1 %.not49, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %bb.d, !prof !3867

bb.d:                                             ; preds = %bb.c
  %i.p = call noundef i64 @llvm.x86.rdtsc()
  %i.q = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.q, ptr %1, align 4, !tbaa !7
  %i.r = and i32 %i.q, 128
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %i.t = call noundef i64 @llvm.x86.rdtsc()
  %i.u = sub i64 %i.t, %i.p
  %i.v = icmp ult i64 %i.u, 4000
  br i1 %i.v, label %bb.e, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, !prof !3867

bb.e:                                             ; preds = %.lr.ph.i
  call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !3868
  %i.w = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.w, ptr %1, align 4, !tbaa !7
  %i.x = and i32 %i.w, 128
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %.lr.ph.i, !llvm.loop !3869

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit: ; preds = %.lr.ph.i
  %i.z = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20yieldWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 128, i32 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 0 uses
  %.pre = load i32, ptr %1, align 4, !tbaa !7
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread: ; preds = %bb.e, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, %bb.d, %bb.c
  %i.aa = phi i32 [ %i.n, %bb.c ], [ %.pre, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit ], [ %i.q, %bb.d ], [ %i.w, %bb.e ] ; 3 uses
  %i.ab = load atomic i32, ptr %i.g monotonic, align 4 ; 2 uses
  %i.ac = and i32 %i.aa, -1536
  %or.cond = icmp eq i32 %i.ac, 0
  br i1 %or.cond, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread
  %i.ad = shl i32 %i.ab, 2
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.ae
  %i.ag = load atomic i64, ptr %i.af monotonic, align 32
  %.not = icmp eq i64 %i.ag, 0
  br i1 %.not, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 65792) acquire, align 8
  %.not.i59 = icmp eq ptr %i.ah, null
  br i1 %.not.i59, label %bb.h, label %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit, !prof !64

bb.h:                                             ; preds = %bb.g
  %i.ai = call noundef zeroext i1 @_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE(ptr noundef nonnull align 8 dereferenceable(65800) @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, ptr noundef nonnull @_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv, ptr noundef nonnull @_ZN5folly13CacheLocality6systemISt6atomicEERKS0_v) ; 0 uses
  br label %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit

_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.aj = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 65792) monotonic, align 8
  %i.ak = call noundef i32 %i.aj(ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null), !inline_history !3870 ; 0 uses
  %i.al = load i32, ptr %i.c, align 4, !tbaa !7
  %i.am = and i32 %i.al, 255                      ; 2 uses
  store i32 %i.am, ptr %i.c, align 4, !tbaa !7
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.an
  %i.ap = load atomic i8, ptr %i.ao monotonic, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.aq = zext i8 %i.ap to i32                    ; 3 uses
  %i.ar = shl nuw nsw i32 %i.aq, 2
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.as
  %i.au = load atomic i64, ptr %i.at monotonic, align 32
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit
  %i.aw = xor i32 %i.aq, 1                        ; 2 uses
  %i.ax = shl nuw nsw i32 %i.aw, 2
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.ay
  %i.ba = load atomic i64, ptr %i.az monotonic, align 32
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.j, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.i
  %.pre90 = load i32, ptr %1, align 4, !tbaa !7
  br label %.loopexit

bb.j:                                             ; preds = %bb.i, %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit
  %.lcssa = phi i32 [ %i.aq, %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit ], [ %i.aw, %bb.i ] ; 2 uses
  store atomic i32 %.lcssa, ptr %i.g monotonic, align 4
  %.pre89 = load i32, ptr %1, align 4, !tbaa !7
  br label %bb.m

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread
  %i.bc = phi i32 [ %.pre90, %.loopexit.loopexit ], [ %i.aa, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread ] ; 2 uses
  %i.bd = add i32 %i.bc, 2048
  %i.be = cmpxchg ptr %0, i32 %i.bc, i32 %i.bd seq_cst seq_cst, align 4 ; 2 uses
  %i.bf = extractvalue { i32, i1 } %i.be, 1
  br i1 %i.bf, label %bb.k, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit: ; preds = %.loopexit
  %i.bg = extractvalue { i32, i1 } %i.be, 0
  store i32 %i.bg, ptr %1, align 4
  br label %.backedge

bb.k:                                             ; preds = %.loopexit
  br i1 %i.j, label %.thread80, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i16 2, ptr %2, align 2, !tbaa !96
  br label %.thread80

bb.m:                                             ; preds = %bb.f, %bb.j
  %i.bh = phi i32 [ %.pre89, %bb.j ], [ %i.aa, %bb.f ] ; 3 uses
  %.246.ph = phi i32 [ %.lcssa, %bb.j ], [ %i.ab, %bb.f ] ; 3 uses
  %i.bi = and i32 %i.bh, 512
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.n, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit57.thread

bb.n:                                             ; preds = %bb.m
  %i.bk = or disjoint i32 %i.bh, 512
  %i.bl = cmpxchg ptr %0, i32 %i.bh, i32 %i.bk seq_cst seq_cst, align 4 ; 2 uses
  %i.bm = extractvalue { i32, i1 } %i.bl, 1
  br i1 %i.bm, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit57.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = extractvalue { i32, i1 } %i.bl, 0       ; 2 uses
  store i32 %i.bn, ptr %1, align 4
  %i.bo = and i32 %i.bn, 640
  %.not52 = icmp eq i32 %i.bo, 512
  br i1 %.not52, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit57.thread, label %.backedge

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit57.thread: ; preds = %bb.n, %bb.o, %bb.m
  %i.bp = shl i32 %.246.ph, 2
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.bq ; 3 uses
  br i1 %i.j, label %bb.p, label %.thread76

bb.p:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit57.thread
  %i.bs = cmpxchg ptr %i.br, i64 0, i64 %i.l seq_cst seq_cst, align 8
  %i.bt = extractvalue { i64, i1 } %i.bs, 1
  br i1 %i.bt, label %.thread78, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

.thread76:                                        ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit57.thread
  %i.bu = cmpxchg ptr %i.br, i64 0, i64 %i.k seq_cst seq_cst, align 8
  %i.bv = extractvalue { i64, i1 } %i.bu, 1
  br i1 %i.bv, label %bb.q, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit: ; preds = %.thread76, %bb.p
  %i.bw = load atomic i32, ptr %0 acquire, align 4
  store i32 %i.bw, ptr %1, align 4, !tbaa !7
  br label %.backedge

.backedge:                                        ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit, %bb.u, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63, %.thread81, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit, %bb.o
  br label %bb.c, !llvm.loop !3871

bb.q:                                             ; preds = %.thread76
  %i.bx = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.bx, ptr %1, align 4, !tbaa !7
  %i.by = and i32 %i.bx, 512
  %.not53 = icmp eq i32 %i.by, 0
  br i1 %.not53, label %bb.u, label %bb.r

.thread78:                                        ; preds = %bb.p
  %i.bz = load atomic i32, ptr %0 acquire, align 4
  store i32 %i.bz, ptr %1, align 4, !tbaa !7
  store atomic i32 %.246.ph, ptr %i.m monotonic, align 4
  %i.ca = load i32, ptr %1, align 4, !tbaa !7
  %i.cb = and i32 %i.ca, 512
  %.not5379 = icmp eq i32 %i.cb, 0
  br i1 %.not5379, label %.thread81, label %.thread80

bb.r:                                             ; preds = %bb.q
  store i16 3, ptr %2, align 2, !tbaa !96
  %i.cc = trunc i32 %.246.ph to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.cc, ptr %i.cd, align 2, !tbaa !97
  br label %.thread80

.thread81:                                        ; preds = %.thread78
  %i.ce = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %0)
  br i1 %i.ce, label %.backedge, label %bb.s

bb.s:                                             ; preds = %.thread81
end_hunk_1
begin_hunk_2_@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_:bb.a

.thread:                                          ; preds = %.lr.ph
  %i.h = tail call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20yieldWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  tail call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !3868
  %i.i = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.i, ptr %1, align 4, !tbaa !7
  %i.j = and i32 %i.i, %2
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.loopexit, label %.lr.ph, !llvm.loop !3869

.loopexit:                                        ; preds = %bb.b, %bb.a, %.thread
  %.2 = phi i1 [ %i.h, %.thread ], [ true, %bb.a ], [ true, %bb.b ]
  ret i1 %.2
}

declare noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20yieldWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @sched_yield() #17 ; 0 uses
  %i.b = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.b, ptr %1, align 4, !tbaa !7
  %i.c = and i32 %i.b, %2
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @sched_yield() #17 ; 0 uses
  %i.f = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.f, ptr %1, align 4, !tbaa !7
  %i.g = and i32 %i.f, %2
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_ZN5folly19shared_mutex_detail45getCurrentThreadInvoluntaryContextSwitchCountEv() ; 0 uses
  %i.j = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.j, ptr %1, align 4, !tbaa !7
  %i.k = and i32 %i.j, %2
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load atomic i32, ptr %0 acquire, align 4 ; 4 uses
  store i32 %i.m, ptr %1, align 4, !tbaa !7
  %i.n = and i32 %i.m, %2
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.p = icmp eq i32 %3, 12
  br i1 %i.p, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.g
  %i.q = phi i32 [ %i.y, %bb.g ], [ %i.m, %.lr.ph.i ] ; 6 uses
  %i.r = and i32 %i.q, 4
  %.not.us.i = icmp eq i32 %i.r, 0
  br i1 %.not.us.i, label %.thread.us.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us.i
  %i.s = or i32 %i.q, 8                           ; 2 uses
  %.not22.us.i = icmp eq i32 %i.s, %i.q
  br i1 %.not22.us.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.us.i, label %bb.f

.thread.us.i:                                     ; preds = %.lr.ph.split.us.i
  %i.t = or disjoint i32 %i.q, 4
  br label %bb.f

bb.f:                                             ; preds = %.thread.us.i, %bb.e
  %.01925.us.i = phi i32 [ %i.t, %.thread.us.i ], [ %i.s, %bb.e ] ; 2 uses
  %i.u = cmpxchg ptr %0, i32 %i.q, i32 %.01925.us.i seq_cst seq_cst, align 4 ; 2 uses
  %i.v = extractvalue { i32, i1 } %i.u, 1
  br i1 %i.v, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.us.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.us.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.us.i: ; preds = %bb.f
  %i.w = extractvalue { i32, i1 } %i.u, 0
  store i32 %i.w, ptr %1, align 4
  br label %bb.g, !llvm.loop !3872

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.us.i: ; preds = %bb.f, %bb.e
  %.01926.us.i = phi i32 [ %i.q, %bb.e ], [ %.01925.us.i, %bb.f ]
  %i.x = tail call noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %.01926.us.i, ptr noundef null, ptr noundef null, i32 noundef 12) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.us.i, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.us.i
  %i.y = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.y, ptr %1, align 4, !tbaa !7
  %i.z = and i32 %i.y, %2
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, label %.lr.ph.split.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.i
  %i.ab = phi i32 [ %i.ah, %bb.i ], [ %i.m, %.lr.ph.i ] ; 3 uses
  %i.ac = or i32 %i.ab, %3                        ; 3 uses
  %.not22.i = icmp eq i32 %i.ac, %i.ab
  br i1 %.not22.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.i
  %i.ad = cmpxchg ptr %0, i32 %i.ab, i32 %i.ac seq_cst seq_cst, align 4 ; 2 uses
  %i.ae = extractvalue { i32, i1 } %i.ad, 1
  br i1 %i.ae, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i: ; preds = %bb.h
  %i.af = extractvalue { i32, i1 } %i.ad, 0
  store i32 %i.af, ptr %1, align 4
  br label %bb.i, !llvm.loop !3872

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i: ; preds = %bb.h, %.lr.ph.split.i
  %i.ag = tail call noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %i.ac, ptr noundef null, ptr noundef null, i32 noundef %3) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i
  %i.ah = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.ah, ptr %1, align 4, !tbaa !7
  %i.ai = and i32 %i.ah, %2
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, label %.lr.ph.split.i

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit: ; preds = %bb.i, %bb.g, %bb.a, %bb.b, %bb.c, %bb.d
  ret i1 true
}

; Function Attrs: nounwind
declare i64 @llvm.x86.rdtsc() #17

declare noundef i64 @_ZN5folly19shared_mutex_detail45getCurrentThreadInvoluntaryContextSwitchCountEv() local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #18

declare noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #19

declare noundef zeroext i1 @_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE(ptr noundef nonnull align 8 dereferenceable(65800), ptr noundef nonnull, ptr noundef nonnull) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv() #4 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5folly6Getcpu15resolveVdsoFuncEv() ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = select i1 %.not, ptr @_ZN5folly14FallbackGetcpuINS_18SequentialThreadIdEE6getcpuEPjS3_Pv, ptr %i.a
  ret ptr %i.b
}

declare noundef nonnull align 8 dereferenceable(80) ptr @_ZN5folly13CacheLocality6systemISt6atomicEERKS0_v() #5

declare noundef ptr @_ZN5folly6Getcpu15resolveVdsoFuncEv() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5folly14FallbackGetcpuINS_18SequentialThreadIdEE6getcpuEPjS3_Pv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5folly18SequentialThreadId3getEv() ; 2 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.a, ptr %0, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.a, ptr %1, align 4, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 0
}

declare noundef i32 @_ZN5folly18SequentialThreadId3getEv() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #4 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 2 dereferenceable(4)) local_unnamed_addr #4 align 2

; Function Attrs: nounwind
declare void @_ZN5folly8LoggerDB19internalWarningImplENS_5RangeIPKcEEiONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr, ptr, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3ELm4EEEE4callIJA27_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA19_cNS_14basic_fbstringIcSA_SB_NS_13fbstring_coreIcEEEEPSC_EEEvDpRKT_(ptr noundef nonnull align 1 dereferenceable(27) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(19) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !80     ; 14 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(27) %0) #17 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 8 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !40   ; 5 uses
  %i.e = sub i64 9223372036854775807, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #27
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.g = add i64 %i.d, %i.b                       ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !82   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 8 uses
  %i.j = icmp eq ptr %i.h, %i.i                   ; 2 uses
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.k = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = load i64, ptr %i.i, align 8
  %i.m = select i1 %i.j, i64 15, i64 %i.l
  %.not.i.i.i = icmp ugt i64 %i.g, %i.m
  br i1 %.not.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not8.i.i.i, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.b, 1
  br i1 %cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load i8, ptr %0, align 1, !tbaa !41
  store i8 %i.o, ptr %i.n, align 1, !tbaa !41
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 dereferenceable(27) %0, i64 %i.b, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.d, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(27) %0, i64 noundef %i.b)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  store i64 %i.g, ptr %i.c, align 8, !tbaa !40
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 0, ptr %i.q, align 1, !tbaa !41
  %i.r = load ptr, ptr %1, align 8, !tbaa !82     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !40   ; 6 uses
  %i.u = load i64, ptr %i.c, align 8, !tbaa !40   ; 5 uses
  %i.v = sub i64 9223372036854775807, %i.u
  %i.w = icmp ult i64 %i.v, %i.t
  br i1 %i.w, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.i:                                             ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #27
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit
  %i.x = add i64 %i.u, %i.t                       ; 3 uses
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !82   ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.i                   ; 2 uses
  br i1 %i.z, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.aa = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.aa)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ab = load i64, ptr %i.i, align 8
  %i.ac = select i1 %i.z, i64 15, i64 %i.ab
  %.not.i.i.i.i = icmp ugt i64 %i.x, %i.ac
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not8.i.i.i.i, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeERKS8_PS9_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.u ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %cond.i.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = load i8, ptr %i.r, align 1, !tbaa !41
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !41
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeERKS8_PS9_.exit

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.r, i64 %i.t, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeERKS8_PS9_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.u, i64 noundef 0, ptr noundef %i.r, i64 noundef %i.t)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeERKS8_PS9_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeERKS8_PS9_.exit: ; preds = %bb.k, %bb.m, %bb.n, %bb.o
  store i64 %i.x, ptr %i.c, align 8, !tbaa !40
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.x
  store i8 0, ptr %i.ag, align 1, !tbaa !41
  %i.ah = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(19) %2) #17 ; 6 uses
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !40  ; 5 uses
  %i.aj = sub i64 9223372036854775807, %i.ai
  %i.ak = icmp ult i64 %i.aj, %i.ah
  br i1 %i.ak, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15

bb.p:                                             ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeERKS8_PS9_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #27
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeERKS8_PS9_.exit
  %i.al = add i64 %i.ai, %i.ah                    ; 3 uses
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.i                 ; 2 uses
  br i1 %i.an, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15
  %i.ao = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.ao)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15
  %i.ap = load i64, ptr %i.i, align 8
  %i.aq = select i1 %i.an, i64 15, i64 %i.ap
  %.not.i.i.i17 = icmp ugt i64 %i.al, %i.aq
  br i1 %.not.i.i.i17, label %bb.v, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16
  %.not8.i.i.i18 = icmp eq i64 %i.ah, 0
  br i1 %.not8.i.i.i18, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit20, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ai ; 2 uses
  %cond.i.i.i19 = icmp eq i64 %i.ah, 1
  br i1 %cond.i.i.i19, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.as = load i8, ptr %2, align 1, !tbaa !41
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !41
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit20

bb.u:                                             ; preds = %bb.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr nonnull align 1 dereferenceable(19) %2, i64 %i.ah, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit20

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.ai, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(19) %2, i64 noundef %i.ah)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit20

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit20: ; preds = %bb.r, %bb.t, %bb.u, %bb.v
  store i64 %i.al, ptr %i.c, align 8, !tbaa !40
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.al
  store i8 0, ptr %i.au, align 1, !tbaa !41
  %i.av = load ptr, ptr %3, align 8, !tbaa !41
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 23
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !41  ; 3 uses
  %i.ay = icmp ult i8 %i.ax, 64
  %i.az = select i1 %i.ay, ptr %3, ptr %i.av      ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !41
  %i.bc = zext i8 %i.ax to i64
  %i.bd = sub nsw i64 23, %i.bc
  %i.be = icmp ult i8 %i.ax, 24
  %i.bf = select i1 %i.be, i64 %i.bd, i64 %i.bb   ; 6 uses
  %i.bg = load i64, ptr %i.c, align 8, !tbaa !40  ; 5 uses
  %i.bh = sub i64 9223372036854775807, %i.bg
  %i.bi = icmp ult i64 %i.bh, %i.bf
  br i1 %i.bi, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i21

bb.w:                                             ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit20
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #27
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i21: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit20
  %i.bj = add i64 %i.bf, %i.bg                    ; 3 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.i                 ; 2 uses
  br i1 %i.bl, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i22

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i21
  %i.bm = icmp ult i64 %i.bg, 16
  tail call void @llvm.assume(i1 %i.bm)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i22: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i21
  %i.bn = load i64, ptr %i.i, align 8
  %i.bo = select i1 %i.bl, i64 15, i64 %i.bn
  %.not.i.i.i23 = icmp ugt i64 %i.bj, %i.bo
  br i1 %.not.i.i.i23, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i22
  %.not8.i.i.i24 = icmp eq i64 %i.bf, 0
  br i1 %.not8.i.i.i24, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeERKNS_14basic_fbstringIcS4_S5_NS_13fbstring_coreIcEEEEPS8_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bg ; 2 uses
  %cond.i.i.i25 = icmp eq i64 %i.bf, 1
  br i1 %cond.i.i.i25, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bq = load i8, ptr %i.az, align 1, !tbaa !41
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !41
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeERKNS_14basic_fbstringIcS4_S5_NS_13fbstring_coreIcEEEEPS8_.exit

bb.ab:                                            ; preds = %bb.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr align 1 %i.az, i64 %i.bf, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeERKNS_14basic_fbstringIcS4_S5_NS_13fbstring_coreIcEEEEPS8_.exit

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i22
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.bg, i64 noundef 0, ptr noundef %i.az, i64 noundef %i.bf)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeERKNS_14basic_fbstringIcS4_S5_NS_13fbstring_coreIcEEEEPS8_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeERKNS_14basic_fbstringIcS4_S5_NS_13fbstring_coreIcEEEEPS8_.exit: ; preds = %bb.y, %bb.aa, %bb.ab, %bb.ac
  store i64 %i.bj, ptr %i.c, align 8, !tbaa !40
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bj
  store i8 0, ptr %i.bs, align 1, !tbaa !41
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.b = load i8, ptr %i.a, align 1, !tbaa !41
  %i.c = icmp slt i8 %i.b, -64
  %i.d = load ptr, ptr %0, align 8, !tbaa !41     ; 2 uses
  br i1 %i.c, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 2 uses
  %i.f = atomicrmw sub ptr %i.e, i64 1 acq_rel, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit

_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split: ; preds = %bb.b, %bb.a
  %.sink = phi ptr [ %i.d, %bb.a ], [ %i.e, %bb.b ]
  tail call void @free(ptr noundef %.sink) #17
  br label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit

_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit: ; preds = %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define void @_ZN5folly11LogCategory10addHandlerESt10shared_ptrINS_10LogHandlerEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %3 = alloca %"class.folly::LockedPtr.64", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3873)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !3876, !alias.scope !3873
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i8 0, ptr %i.d, align 8, !tbaa !3879, !alias.scope !3873
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !3873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17, !noalias !3873
  %i.e = load atomic i32, ptr %i.c acquire, align 8, !noalias !3873 ; 4 uses
  store i32 %i.e, ptr %i.b, align 4, !tbaa !7, !noalias !3873
  %i.f = and i32 %i.e, -1312
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %.critedge.i.i.i.i.i.i, !prof !3867

bb.b:                                             ; preds = %bb.a
  %i.h = or disjoint i32 %i.e, 128
  %i.i = cmpxchg ptr %i.c, i32 %i.e, i32 %i.h seq_cst seq_cst, align 4, !noalias !3873 ; 2 uses
  %i.j = extractvalue { i32, i1 } %i.i, 1
  br i1 %i.j, label %bb.c, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, !prof !3880

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = extractvalue { i32, i1 } %i.i, 0
  store i32 %i.k, ptr %i.b, align 4, !noalias !3873
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, %bb.a
  %i.l = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %2), !noalias !3873 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17, !noalias !3873
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !3873
  store i8 1, ptr %i.d, align 8, !tbaa !3879, !alias.scope !3873
  %i.m = load ptr, ptr %3, align 8, !tbaa !3876   ; 4 uses
  %.not.i.i = icmp eq ptr %i.m, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -24
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %.neg.i.i ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46   ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67
  %.not.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr null, ptr %i.s, align 8, !tbaa !47
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load <2 x ptr>, ptr %1, align 8, !tbaa !3853
  store ptr null, ptr %i.t, align 8, !tbaa !47
  store <2 x ptr> %i.u, ptr %i.p, align 8, !tbaa !3853
  store ptr null, ptr %1, align 8, !tbaa !98
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.v, ptr %i.o, align 8, !tbaa !46
  br label %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  invoke void @_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr %i.p, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit unwind label %bb.h

_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.w = atomicrmw and ptr %i.m, i32 -401 seq_cst, align 4 ; 2 uses
  %i.x = and i32 %i.w, -401
  store i32 %i.x, ptr %i.a, align 4, !tbaa !7
  %i.y = and i32 %i.w, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSD_22SynchronizedMutexLevelE1ELNSD_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.f, !prof !3867

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSD_22SynchronizedMutexLevelE1ELNSD_23SynchronizedMutexMethodE0EEEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #25
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSD_22SynchronizedMutexLevelE1ELNSD_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void

bb.h:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSD_22SynchronizedMutexLevelE1ELNSD_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSD_22SynchronizedMutexLevelE1ELNSD_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !3879, !range !3881, !noundef !537
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !3876   ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.f = atomicrmw and ptr %i.e, i32 -401 seq_cst, align 4 ; 2 uses
  %i.g = and i32 %i.f, -401
  store i32 %i.g, ptr %i.a, align 4, !tbaa !7
  %i.h = and i32 %i.f, 15
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i, label %bb.d, !prof !3867

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i unwind label %bb.e

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #25
  unreachable

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.pre = load i32, ptr %1, align 4, !tbaa !7
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %i.a = phi i32 [ %i.p, %bb.i ], [ %.pre, %bb.a ] ; 2 uses
  %i.b = and i32 %i.a, %2
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.c, !prof !3867

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, i32 noundef 12, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 0 uses
  %.pre35 = load i32, ptr %1, align 4, !tbaa !7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = phi i32 [ %.pre35, %bb.c ], [ %i.a, %bb.b ] ; 3 uses
  %i.e = lshr i32 %i.d, 1
  %i.f = and i32 %i.e, 256
  %i.g = and i32 %i.d, -673
  %i.h = or i32 %i.g, %i.f
  %i.i = or disjoint i32 %i.h, 128                ; 3 uses
  %i.j = cmpxchg ptr %0, i32 %i.d, i32 %i.i seq_cst seq_cst, align 4 ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %1, align 4, !tbaa !7
  store i32 %i.i, ptr %1, align 4, !tbaa !7
  %i.m = and i32 %i.l, 512
  %.not27 = icmp eq i32 %i.m, 0
  br i1 %.not27, label %bb.g, label %bb.f, !prof !3867

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %.pr = load i32, ptr %1, align 4, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = phi i32 [ %.pr, %bb.f ], [ %i.i, %bb.e ]
  %.not28 = icmp ult i32 %i.n, 2048
  br i1 %.not28, label %bb.j, label %bb.h, !prof !3867

bb.h:                                             ; preds = %bb.g
  %i.o = tail call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef -2048, i32 noundef 16, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.p = extractvalue { i32, i1 } %i.j, 0         ; 2 uses
  store i32 %i.p, ptr %1, align 4
  br label %bb.b

bb.j:                                             ; preds = %bb.h, %bb.g
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache) #29
  br label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit

_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit: ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  %i.d = tail call noundef i64 @llvm.x86.rdtsc()
  %i.e = ptrtoint ptr %0 to i64
  br label %.outer

.outer:                                           ; preds = %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit, %bb.d
  %.1.ph = phi i32 [ 0, %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit ], [ %i.l, %bb.d ] ; 3 uses
  %i.f = shl i32 %.1.ph, 2
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.g
  br label %bb.c

bb.c:                                             ; preds = %.outer, %bb.f
  %i.i = load atomic i64, ptr %i.h acquire, align 32
  %i.j = and i64 %i.i, -2
  %i.k = icmp eq i64 %i.j, %i.e
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i32 %.1.ph, 1                        ; 2 uses
  %i.m = icmp eq i32 %i.l, %i.c
  br i1 %i.m, label %.loopexit, label %.outer, !llvm.loop !3882

bb.e:                                             ; preds = %bb.c
  %i.n = tail call noundef i64 @llvm.x86.rdtsc()
  %i.o = sub i64 %i.n, %i.d
  %i.p = icmp ult i64 %i.o, 4000
  br i1 %i.p, label %bb.f, label %.thread, !prof !3867

.thread:                                          ; preds = %bb.e
  tail call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_j(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %.1.ph)
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !3868
  br label %bb.c, !llvm.loop !3883

.loopexit:                                        ; preds = %bb.d, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_j(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.b, %bb.b ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 6 uses
  %i.e = tail call noundef i32 @sched_yield() #17 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.2 = phi i32 [ %3, %bb.c ], [ %i.l, %bb.e ]    ; 3 uses
  %i.f = shl i32 %.2, 2
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.g
  %i.i = load atomic i64, ptr %i.h acquire, align 32
  %i.j = and i64 %i.i, -2
  %i.k = icmp eq i64 %i.j, %i.d
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = add i32 %.2, 1                           ; 2 uses
  %i.m = icmp eq i32 %i.l, %i.c
  br i1 %i.m, label %.critedge, label %bb.d, !llvm.loop !3884

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noundef i32 @sched_yield() #17 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.2.1 = phi i32 [ %.2, %bb.f ], [ %i.u, %bb.h ] ; 3 uses
  %i.o = shl i32 %.2.1, 2
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.p
  %i.r = load atomic i64, ptr %i.q acquire, align 32
  %i.s = and i64 %i.r, -2
  %i.t = icmp eq i64 %i.s, %i.d
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = add i32 %.2.1, 1                         ; 2 uses
  %i.v = icmp eq i32 %i.u, %i.c
  br i1 %i.v, label %.critedge, label %bb.g, !llvm.loop !3884

bb.i:                                             ; preds = %bb.g
  %i.w = tail call noundef i64 @_ZN5folly19shared_mutex_detail45getCurrentThreadInvoluntaryContextSwitchCountEv() ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.2.2 = phi i32 [ %.2.1, %bb.i ], [ %i.ad, %bb.k ] ; 4 uses
  %i.x = shl i32 %.2.2, 2
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.y
  %i.aa = load atomic i64, ptr %i.z acquire, align 32
  %i.ab = and i64 %i.aa, -2
  %i.ac = icmp eq i64 %i.ab, %i.d
  br i1 %i.ac, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = add i32 %.2.2, 1                        ; 2 uses
  %i.ae = icmp eq i32 %i.ad, %i.c
  br i1 %i.ae, label %.critedge, label %bb.j, !llvm.loop !3884

bb.l:                                             ; preds = %bb.j
  %i.af = icmp ult i32 %.2.2, %i.c
  br i1 %i.af, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.l
  %i.ag = zext i32 %.2.2 to i64                   ; 4 uses
  %wide.trip.count = zext i32 %i.c to i64         ; 2 uses
  %i.ah = sub nsw i64 %wide.trip.count, %i.ag     ; 3 uses
  %xtraiter = and i64 %i.ah, 1
  %i.ai = add nsw i64 %wide.trip.count, -1
  %i.aj = icmp eq i64 %i.ai, %i.ag
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ah, -2
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %.lr.ph.new
  %indvars.iv = phi i64 [ %i.ag, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.q ] ; 3 uses
  %.02651 = phi i32 [ 0, %.lr.ph.new ], [ %.127.1, %bb.q ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.q ]
  %i.ak = shl i64 %indvars.iv, 2
  %i.al = and i64 %i.ak, 4294967292
  %i.am = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.al ; 2 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 32 ; 2 uses
  %i.ao = and i64 %i.an, -2
  %i.ap = icmp eq i64 %i.ao, %i.d
  br i1 %i.ap, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aq = cmpxchg ptr %i.am, i64 %i.an, i64 0 seq_cst seq_cst, align 8
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  %i.as = zext i1 %i.ar to i32
  %..026 = add i32 %.02651, %i.as
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.127 = phi i32 [ %.02651, %bb.m ], [ %..026, %bb.n ] ; 2 uses
  %indvars.iv.next = shl i64 %indvars.iv, 2
  %i.at = add i64 %indvars.iv.next, 4
  %i.au = and i64 %i.at, 4294967292
  %i.av = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.au ; 2 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 32 ; 2 uses
  %i.ax = and i64 %i.aw, -2
  %i.ay = icmp eq i64 %i.ax, %i.d
  br i1 %i.ay, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.az = cmpxchg ptr %i.av, i64 %i.aw, i64 0 seq_cst seq_cst, align 8
  %i.ba = extractvalue { i64, i1 } %i.az, 1
  %i.bb = zext i1 %i.ba to i32
  %..026.1 = add i32 %.127, %i.bb
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.127.1 = phi i32 [ %.127, %bb.o ], [ %..026.1, %bb.p ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.m, !llvm.loop !3885

._crit_edge.unr-lcssa:                            ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ %i.ag, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.02651.epil.init = phi i32 [ 0, %.lr.ph ], [ %.127.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod92 = trunc i64 %i.ah to i1
  tail call void @llvm.assume(i1 %lcmp.mod92)
  %i.bc = shl i64 %indvars.iv.epil.init, 2
  %i.bd = and i64 %i.bc, 4294967292
  %i.be = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.bd ; 2 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 32 ; 2 uses
  %i.bg = and i64 %i.bf, -2
  %i.bh = icmp eq i64 %i.bg, %i.d
  br i1 %i.bh, label %bb.r, label %._crit_edge

bb.r:                                             ; preds = %.epil.preheader
  %i.bi = cmpxchg ptr %i.be, i64 %i.bf, i64 0 seq_cst seq_cst, align 8
  %i.bj = extractvalue { i64, i1 } %i.bi, 1
  %i.bk = zext i1 %i.bj to i32
  %..026.epil = add i32 %.02651.epil.init, %i.bk
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.r, %._crit_edge.unr-lcssa
  %.127.lcssa = phi i32 [ %.127.1, %._crit_edge.unr-lcssa ], [ %.02651.epil.init, %.epil.preheader ], [ %..026.epil, %bb.r ] ; 2 uses
  %.not40 = icmp eq i32 %.127.lcssa, 0
  br i1 %.not40, label %.critedge, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.bl = shl i32 %.127.lcssa, 11                 ; 2 uses
  %i.bm = atomicrmw add ptr %0, i32 %i.bl seq_cst, align 4
  %i.bn = add i32 %i.bm, %i.bl
  store i32 %i.bn, ptr %1, align 4, !tbaa !7
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.h, %bb.k, %bb.l, %._crit_edge, %bb.s
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !45     ; 13 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775792
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #27
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 576460752303423487)
  %i.m = select i1 %i.k, i64 576460752303423487, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 4
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #28 ; 13 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !3853
  store ptr null, ptr %i.s, align 8, !tbaa !47
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !3853
  store ptr null, ptr %2, align 8, !tbaa !98
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.u = add i64 %i.a, -16
  %i.v = sub i64 %i.u, %i.f                       ; 2 uses
  %i.w = lshr i64 %i.v, 4
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 304
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader91, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.y = add i64 %i.a, -16
  %i.z = sub i64 %i.y, %i.f
  %i.aa = and i64 %i.z, -16                       ; 2 uses
  %i.ab = or disjoint i64 %i.aa, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.ab
  %scevgep35 = getelementptr i8, ptr %i.d, i64 %i.ab
  %scevgep36 = getelementptr i8, ptr %i.d, i64 8
  %i.ac = add i64 %i.aa, 16                       ; 2 uses
  %scevgep37 = getelementptr i8, ptr %i.d, i64 %i.ac
  %scevgep38 = getelementptr i8, ptr %i.q, i64 8
  %scevgep39 = getelementptr i8, ptr %i.q, i64 %i.ac
  %bound0 = icmp ult ptr %i.q, %scevgep35
  %bound1 = icmp ult ptr %i.d, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound040 = icmp ult ptr %scevgep36, %scevgep39
  %bound141 = icmp ult ptr %scevgep38, %scevgep37
  %found.conflict42 = and i1 %bound040, %bound141
  %conflict.rdx = or i1 %found.conflict, %found.conflict42
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.preheader91, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 2305843009213693944      ; 3 uses
  %i.ad = shl i64 %n.vec, 4                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.q, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.d, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 4                       ; 3 uses
  %i.ah = or disjoint i64 %i.ag, 64               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ag
  %next.gep43 = getelementptr i8, ptr %i.q, i64 %i.ah
  %next.gep44 = getelementptr i8, ptr %i.d, i64 %i.ag ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.d, i64 %i.ah ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3889)
  %wide.vec = load <8 x ptr>, ptr %next.gep44, align 8, !tbaa !3853, !alias.scope !3889, !noalias !3886
  %wide.vec47 = load <8 x ptr>, ptr %next.gep45, align 8, !tbaa !3853, !alias.scope !3889, !noalias !3886
  store <8 x ptr> %wide.vec, ptr %next.gep, align 8, !tbaa !3853, !alias.scope !3886, !noalias !3889
  store <8 x ptr> %wide.vec47, ptr %next.gep43, align 8, !tbaa !3853, !alias.scope !3886, !noalias !3889
  store <8 x ptr> splat (ptr null), ptr %next.gep44, align 8, !tbaa !3853, !alias.scope !3889, !noalias !3886
  store <8 x ptr> splat (ptr null), ptr %next.gep45, align 8, !tbaa !3853, !alias.scope !3889, !noalias !3886
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !3891

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.preheader91

.lr.ph.i.i.i.preheader91:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader91, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader91 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader91 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3889)
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !3853, !alias.scope !3889, !noalias !3886
  store ptr null, ptr %i.aj, align 8, !tbaa !47, !alias.scope !3889, !noalias !3886
  store <2 x ptr> %i.ak, ptr %.012.i.i.i, align 8, !tbaa !3853, !alias.scope !3886, !noalias !3889
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !98, !alias.scope !3889, !noalias !3886
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !3894

_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %_ZNKSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.ae, %middle.block ], [ %i.am, %.lr.ph.i.i.i ] ; 4 uses
  %i.an = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 16 ; 7 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.ao = add i64 %i.e, -16
  %i.ap = sub i64 %i.ao, %i.a                     ; 2 uses
  %i.aq = lshr i64 %i.ap, 4
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check67 = icmp ult i64 %i.ap, 368
  br i1 %min.iters.check67, label %.lr.ph.i.i.i17.preheader90, label %vector.memcheck52

vector.memcheck52:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.as = add i64 %i.e, -16
  %i.at = sub i64 %i.as, %i.a
  %i.au = and i64 %i.at, -16                      ; 4 uses
  %i.av = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.au
  %scevgep53 = getelementptr i8, ptr %i.av, i64 24
  %i.aw = getelementptr i8, ptr %1, i64 %i.au
  %scevgep54 = getelementptr i8, ptr %i.aw, i64 8
  %scevgep55 = getelementptr i8, ptr %1, i64 8
  %i.ax = getelementptr i8, ptr %1, i64 %i.au
  %scevgep56 = getelementptr i8, ptr %i.ax, i64 16
  %scevgep57 = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 24
  %i.ay = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.au
  %scevgep58 = getelementptr i8, ptr %i.ay, i64 32
  %bound059 = icmp ult ptr %i.an, %scevgep54
  %bound160 = icmp ult ptr %1, %scevgep53
  %found.conflict61 = and i1 %bound059, %bound160
  %bound062 = icmp ult ptr %scevgep55, %scevgep58
  %bound163 = icmp ult ptr %scevgep57, %scevgep56
  %found.conflict64 = and i1 %bound062, %bound163
  %conflict.rdx65 = or i1 %found.conflict61, %found.conflict64
  br i1 %conflict.rdx65, label %.lr.ph.i.i.i17.preheader90, label %vector.ph68

vector.ph68:                                      ; preds = %vector.memcheck52
  %n.vec70 = and i64 %i.ar, 2305843009213693944   ; 3 uses
  %i.az = shl i64 %n.vec70, 4                     ; 2 uses
  %i.ba = getelementptr i8, ptr %i.an, i64 %i.az  ; 2 uses
  %i.bb = getelementptr i8, ptr %1, i64 %i.az
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph68
  %index72 = phi i64 [ 0, %vector.ph68 ], [ %index.next85, %vector.body71 ] ; 2 uses
  %i.bc = shl i64 %index72, 4                     ; 3 uses
  %i.bd = or disjoint i64 %i.bc, 64               ; 2 uses
  %next.gep73 = getelementptr i8, ptr %i.an, i64 %i.bc
  %next.gep74 = getelementptr i8, ptr %i.an, i64 %i.bd
  %next.gep75 = getelementptr i8, ptr %1, i64 %i.bc ; 2 uses
  %next.gep76 = getelementptr i8, ptr %1, i64 %i.bd ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3898)
  %wide.vec77 = load <8 x ptr>, ptr %next.gep75, align 8, !tbaa !3853, !alias.scope !3898, !noalias !3895
  %wide.vec80 = load <8 x ptr>, ptr %next.gep76, align 8, !tbaa !3853, !alias.scope !3898, !noalias !3895
  store <8 x ptr> %wide.vec77, ptr %next.gep73, align 8, !tbaa !3853, !alias.scope !3895, !noalias !3898
  store <8 x ptr> %wide.vec80, ptr %next.gep74, align 8, !tbaa !3853, !alias.scope !3895, !noalias !3898
  store <8 x ptr> splat (ptr null), ptr %next.gep75, align 8, !tbaa !3853, !alias.scope !3898, !noalias !3895
  store <8 x ptr> splat (ptr null), ptr %next.gep76, align 8, !tbaa !3853, !alias.scope !3898, !noalias !3895
  %index.next85 = add nuw i64 %index72, 8         ; 2 uses
  %i.be = icmp eq i64 %index.next85, %n.vec70
  br i1 %i.be, label %middle.block86, label %vector.body71, !llvm.loop !3900

middle.block86:                                   ; preds = %vector.body71
  %cmp.n87 = icmp eq i64 %i.ar, %n.vec70
  br i1 %cmp.n87, label %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17.preheader90

.lr.ph.i.i.i17.preheader90:                       ; preds = %vector.memcheck52, %.lr.ph.i.i.i17.preheader, %middle.block86
  %.012.i.i.i18.ph = phi ptr [ %i.an, %vector.memcheck52 ], [ %i.an, %.lr.ph.i.i.i17.preheader ], [ %i.ba, %middle.block86 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck52 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.bb, %middle.block86 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader90, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bi, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader90 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.bh, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader90 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3898)
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bg = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !3853, !alias.scope !3898, !noalias !3895
  store ptr null, ptr %i.bf, align 8, !tbaa !47, !alias.scope !3898, !noalias !3895
  store <2 x ptr> %i.bg, ptr %.012.i.i.i18, align 8, !tbaa !3853, !alias.scope !3895, !noalias !3898
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !98, !alias.scope !3898, !noalias !3895
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.bh, %i.c
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !3901

_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block86, %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.an, %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ba, %middle.block86 ], [ %i.bi, %.lr.ph.i.i.i17 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.d, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !67
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bm) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.q, ptr %0, align 8, !tbaa !45
  store ptr %.0.lcssa.i.i.i21, ptr %i.b, align 8, !tbaa !46
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bn, ptr %i.bj, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly11LogCategory13clearHandlersEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %2 = alloca %"class.std::vector", align 16      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17, !noalias !3902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17, !noalias !3902
  %i.d = load atomic i32, ptr %i.c acquire, align 8, !noalias !3902 ; 4 uses
  store i32 %i.d, ptr %i.b, align 4, !tbaa !7, !noalias !3902
  %i.e = and i32 %i.d, -1312
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %.critedge.i.i.i.i.i.i, !prof !3867

bb.b:                                             ; preds = %bb.a
  %i.g = or disjoint i32 %i.d, 128
  %i.h = cmpxchg ptr %i.c, i32 %i.d, i32 %i.g seq_cst seq_cst, align 4, !noalias !3902 ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %bb.c, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, !prof !3880

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = extractvalue { i32, i1 } %i.h, 0
  store i32 %i.j, ptr %i.b, align 4, !noalias !3902
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, %bb.a
  %i.k = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.c unwind label %bb.m       ; 0 uses

bb.c:                                             ; preds = %.critedge.i.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17, !noalias !3902
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17, !noalias !3902
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !67
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load <2 x ptr>, ptr %2, align 16, !tbaa !3857
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !67
  store ptr %i.r, ptr %i.m, align 8, !tbaa !67
  %i.s = load <2 x ptr>, ptr %i.l, align 8, !tbaa !3857
  store <2 x ptr> %i.p, ptr %i.l, align 8, !tbaa !3857
  store <2 x ptr> %i.s, ptr %2, align 16, !tbaa !3857
  store ptr %i.n, ptr %i.q, align 16, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.t = atomicrmw and ptr %i.c, i32 -401 seq_cst, align 4 ; 2 uses
  %i.u = and i32 %i.t, -401
  store i32 %i.u, ptr %i.a, align 4, !tbaa !7
  %i.v = and i32 %i.t, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSD_22SynchronizedMutexLevelE1ELNSD_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.d, !prof !3867

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSD_22SynchronizedMutexLevelE1ELNSD_23SynchronizedMutexMethodE0EEEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #25
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSD_22SynchronizedMutexLevelE1ELNSD_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.y = load ptr, ptr %2, align 16, !tbaa !45    ; 3 uses
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !46   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSD_22SynchronizedMutexLevelE1ELNSD_23SynchronizedMutexMethodE0EEEED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ar, %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i.i ], [ %i.y, %_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSD_22SynchronizedMutexLevelE1ELNSD_23SynchronizedMutexMethodE0EEEED2Ev.exit ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ac, align 8, !tbaa !50
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !52
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !53
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #17, !call_target !55, !inline_history !104
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !53
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #17, !call_target !63, !inline_history !104
  br label %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.af, %bb.i ], [ %i.ap, %bb.j ]
  %i.aq = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.aq, label %bb.k, label %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i.i, !prof !64

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #17
  br label %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.g, %.lr.ph.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.ar, %i.z
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !65

_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5folly10LogHandlerEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 16, !tbaa !45
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSD_22SynchronizedMutexLevelE1ELNSD_23SynchronizedMutexMethodE0EEEED2Ev.exit
  %i.as = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.y, %_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSD_22SynchronizedMutexLevelE1ELNSD_23SynchronizedMutexMethodE0EEEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exit.i
  %i.at = load ptr, ptr %i.q, align 16, !tbaa !67
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.aw) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.m:                                             ; preds = %.critedge.i.i.i.i.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %i.ax
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly11LogCategory11getHandlersEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %3 = alloca %"class.folly::LockedPtr", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3905)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !91, !alias.scope !3905
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i16 0, ptr %i.e, align 8, !tbaa !96, !alias.scope !3905
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 2 uses
  store i16 0, ptr %i.f, align 2, !tbaa !97, !alias.scope !3905
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !3905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17, !noalias !3905
  %i.g = load atomic i32, ptr %i.d monotonic, align 8, !noalias !3905 ; 4 uses
  store i32 %i.g, ptr %i.c, align 4, !tbaa !7, !noalias !3905
  %i.h = and i32 %i.g, -1408
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = or disjoint i32 %i.g, 2048
  %i.k = cmpxchg ptr %i.d, i32 %i.g, i32 %i.j seq_cst seq_cst, align 4, !noalias !3905 ; 2 uses
  %i.l = extractvalue { i32, i1 } %i.k, 1
  br i1 %i.l, label %bb.c, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = extractvalue { i32, i1 } %i.k, 0
  store i32 %i.m, ptr %i.c, align 4, !noalias !3905
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i16 2, ptr %i.e, align 8, !tbaa !96, !alias.scope !3905
  br label %_ZNK5folly16SynchronizedBaseINS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5rlockEv.exit

bb.d:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, %bb.a
  %i.n = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 0 uses
  br label %_ZNK5folly16SynchronizedBaseINS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5rlockEv.exit

_ZNK5folly16SynchronizedBaseINS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5rlockEv.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17, !noalias !3905
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !3905
  %i.o = load ptr, ptr %3, align 8, !tbaa !91     ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -24
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 %.neg.i.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !46   ; 3 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !45   ; 3 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i.i.i, label %.noexc2.thread, label %bb.e

.noexc2.thread:                                   ; preds = %_ZNK5folly16SynchronizedBaseINS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5rlockEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr null, i64 %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.x, ptr %i.y, align 8, !tbaa !67
  br label %.loopexit

bb.e:                                             ; preds = %_ZNK5folly16SynchronizedBaseINS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5rlockEv.exit
  %i.z = icmp ugt i64 %i.v, 9223372036854775792
  br i1 %i.z, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt10shared_ptrIN5folly10LogHandlerEEE8allocateEmPKv.exit.i.i.i.i, !prof !64

.noexc.i.i:                                       ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt10shared_ptrIN5folly10LogHandlerEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.e
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #28
          to label %.lr.ph.i.i.i.i.i.preheader unwind label %bb.r ; 4 uses

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5folly10LogHandlerEEE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.aa, ptr %0, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !46
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.v
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !67
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.an, %_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.aa, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.am, %_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !47 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !3853
  store <2 x ptr> %i.ag, ptr %.08.i.i.i.i.i, align 8, !tbaa !3853
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !7
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !7
  br label %_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.al = atomicrmw volatile add ptr %i.ah, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g, %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.r
  br i1 %i.ao, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3854

.loopexit:                                        ; preds = %_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc2.thread
  %i.ap = phi ptr [ %i.w, %.noexc2.thread ], [ %i.ab, %_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.noexc2.thread ], [ %i.an, %_ZSt10_ConstructISt10shared_ptrIN5folly10LogHandlerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ap, align 8, !tbaa !46
  %i.aq = load i16, ptr %i.e, align 8, !tbaa !96  ; 2 uses
  %.not.i.i3 = icmp eq i16 %i.aq, 0
  br i1 %.not.i.i3, label %_ZN5folly9LockedPtrIKNS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSE_22SynchronizedMutexLevelE2ELNSE_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.ar = load ptr, ptr %3, align 8, !tbaa !91    ; 7 uses
  switch i16 %i.aq, label %bb.o [
    i16 1, label %bb.j
    i16 3, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i
  %i.as = load atomic i32, ptr %i.ar acquire, align 4
  %i.at = and i32 %i.as, 768
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.ar)
          to label %.noexc5 unwind label %bb.q

.noexc5:                                          ; preds = %bb.k
  br i1 %i.av, label %_ZN5folly9LockedPtrIKNS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSE_22SynchronizedMutexLevelE2ELNSE_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %.noexc5, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.aw = atomicrmw sub ptr %i.ar, i32 2048 seq_cst, align 4 ; 2 uses
  %i.ax = add i32 %i.aw, -2048                    ; 2 uses
  store i32 %i.ax, ptr %i.b, align 4, !tbaa !7
  %i.ay = icmp ugt i32 %i.ax, 2047
  %i.az = and i32 %i.aw, 16
  %.not.i.i.i.i4 = icmp eq i32 %i.az, 0
  %or.cond.i.i.i = or i1 %i.ay, %.not.i.i.i.i4
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.m, !prof !103

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.q

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSE_22SynchronizedMutexLevelE2ELNSE_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.n:                                             ; preds = %bb.i
  %i.ba = load i16, ptr %i.f, align 2, !tbaa !97
  %i.bb = zext i16 %i.ba to i64
  %i.bc = ptrtoint ptr %i.ar to i64
  %.idx.i = shl nuw nsw i64 %i.bb, 5
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.be = cmpxchg ptr %i.bd, i64 %i.bc, i64 0 seq_cst seq_cst, align 8
  %i.bf = extractvalue { i64, i1 } %i.be, 1
  br i1 %i.bf, label %_ZN5folly9LockedPtrIKNS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSE_22SynchronizedMutexLevelE2ELNSE_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.bg = atomicrmw sub ptr %i.ar, i32 2048 seq_cst, align 4 ; 2 uses
  %i.bh = add i32 %i.bg, -2048                    ; 2 uses
  store i32 %i.bh, ptr %i.a, align 4, !tbaa !7
  %i.bi = icmp ugt i32 %i.bh, 2047
  %i.bj = and i32 %i.bg, 16
  %.not.i.i.i = icmp eq i32 %i.bj, 0
  %or.cond.i.i = or i1 %i.bi, %.not.i.i.i
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.p, !prof !103

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.q

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSE_22SynchronizedMutexLevelE2ELNSE_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.q:                                             ; preds = %bb.p, %bb.m, %bb.k
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #25
  unreachable

_ZN5folly9LockedPtrIKNS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSE_22SynchronizedMutexLevelE2ELNSE_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.n, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc5, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void

bb.r:                                             ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5folly10LogHandlerEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrIKNS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSE_22SynchronizedMutexLevelE2ELNSE_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %i.bm
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly11LogCategory15replaceHandlersESt6vectorISt10shared_ptrINS_10LogHandlerEESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef captures(none) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !3908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17, !noalias !3908
  %i.d = load atomic i32, ptr %i.c acquire, align 8, !noalias !3908 ; 4 uses
  store i32 %i.d, ptr %i.b, align 4, !tbaa !7, !noalias !3908
  %i.e = and i32 %i.d, -1312
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %.critedge.i.i.i.i.i.i, !prof !3867

bb.b:                                             ; preds = %bb.a
  %i.g = or disjoint i32 %i.d, 128
  %i.h = cmpxchg ptr %i.c, i32 %i.d, i32 %i.g seq_cst seq_cst, align 4, !noalias !3908 ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %bb.c, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, !prof !3880

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = extractvalue { i32, i1 } %i.h, 0
  store i32 %i.j, ptr %i.b, align 4, !noalias !3908
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, %bb.a
  %i.k = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %2), !noalias !3908 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17, !noalias !3908
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !3908
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !67
  %i.o = load <2 x ptr>, ptr %1, align 8, !tbaa !3857
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = load <2 x ptr>, ptr %i.l, align 8, !tbaa !3857
  store <2 x ptr> %i.o, ptr %i.l, align 8, !tbaa !3857
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !67
  store ptr %i.r, ptr %i.m, align 8, !tbaa !67
  store <2 x ptr> %i.q, ptr %1, align 8, !tbaa !3857
  store ptr %i.n, ptr %i.p, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.s = atomicrmw and ptr %i.c, i32 -401 seq_cst, align 4 ; 2 uses
  %i.t = and i32 %i.s, -401
  store i32 %i.t, ptr %i.a, align 4, !tbaa !7
  %i.u = and i32 %i.s, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSD_22SynchronizedMutexLevelE1ELNSD_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.d, !prof !3867

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSD_22SynchronizedMutexLevelE1ELNSD_23SynchronizedMutexMethodE0EEEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #25
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSD_22SynchronizedMutexLevelE1ELNSD_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly11LogCategory14updateHandlersERKSt13unordered_mapISt10shared_ptrINS_10LogHandlerEES4_St4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S4_EEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !3911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17, !noalias !3911
  %i.d = load atomic i32, ptr %i.c acquire, align 8, !noalias !3911 ; 4 uses
  store i32 %i.d, ptr %i.b, align 4, !tbaa !7, !noalias !3911
  %i.e = and i32 %i.d, -1312
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %.critedge.i.i.i.i.i.i, !prof !3867

bb.b:                                             ; preds = %bb.a
  %i.g = or disjoint i32 %i.d, 128
  %i.h = cmpxchg ptr %i.c, i32 %i.d, i32 %i.g seq_cst seq_cst, align 4, !noalias !3911 ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, !prof !3880

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = extractvalue { i32, i1 } %i.h, 0
  store i32 %i.j, ptr %i.b, align 4, !noalias !3911
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, %bb.a
  %i.k = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %2), !noalias !3911 ; 0 uses
  br label %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit

_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit: ; preds = %bb.b, %.critedge.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17, !noalias !3911
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !3911
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3857 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !3857 ; 2 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit, %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.t = atomicrmw and ptr %i.c, i32 -401 seq_cst, align 4 ; 2 uses
  %i.u = and i32 %i.t, -401
  store i32 %i.u, ptr %i.a, align 4, !tbaa !7
  %i.v = and i32 %i.t, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSD_22SynchronizedMutexLevelE1ELNSD_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.c, !prof !3867

bb.c:                                             ; preds = %._crit_edge
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSD_22SynchronizedMutexLevelE1ELNSD_23SynchronizedMutexMethodE0EEEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #25
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSD_22SynchronizedMutexLevelE1ELNSD_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit
  %.sroa.011.020 = phi ptr [ %i.m, %.lr.ph ], [ %i.bv, %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit ] ; 4 uses
  %i.y = load i64, ptr %i.q, align 8, !tbaa !3914
  %.not.not.i.i.i = icmp eq i64 %i.y, 0
  %i.z = load ptr, ptr %.sroa.011.020, align 8    ; 4 uses
  br i1 %.not.not.i.i.i, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.e, %bb.f
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.f ], [ %i.s, %bb.e ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !3921 ; 4 uses
  %i.aa = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %i.aa, label %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit, label %bb.f

bb.f:                                             ; preds = %.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !98
  %i.ad = icmp eq ptr %i.z, %i.ac
  br i1 %i.ad, label %.loopexit, label %.preheader, !llvm.loop !3922

bb.g:                                             ; preds = %bb.e
  %i.ae = ptrtoint ptr %i.z to i64
  %i.af = load i64, ptr %i.r, align 8, !tbaa !3923 ; 2 uses
  %i.ag = urem i64 %i.ae, %i.af                   ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !3924
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !3925 ; 2 uses
  %.not.i.i.i.i.i9 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i9, label %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !3921 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !98
  %i.an = icmp eq ptr %i.z, %i.am
  br i1 %i.an, label %.loopexit, label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %bb.j
  %i.ao = icmp eq ptr %i.z, %i.ar
  br i1 %i.ao, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3926

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %bb.i
  %.020.i.i.i.i.i = phi ptr [ %i.ap, %bb.i ], [ %i.ak, %bb.h ]
  %i.ap = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !3921 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not18.i.i.i.i.i, label %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !98 ; 2 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = urem i64 %i.as, %i.af
  %.not19.i.i.i.i.i = icmp eq i64 %i.at, %i.ag
  br i1 %.not19.i.i.i.i.i, label %bb.i, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !3926

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.j
  br label %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit, !llvm.loop !3926

.loopexit:                                        ; preds = %bb.i, %bb.f, %bb.h
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.f ], [ %i.ak, %bb.h ], [ %i.ap, %bb.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !98
  store ptr %i.av, ptr %.sroa.011.020, align 8, !tbaa !98
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.011.020, i64 8 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47 ; 4 uses
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i.i.i10, label %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %.not7.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !7
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.ba, align 4, !tbaa !7
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.be = atomicrmw volatile add ptr %i.ba, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !47
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.n, %bb.m, %bb.k
  %i.bf = phi ptr [ %i.az, %bb.k ], [ %i.az, %bb.m ], [ %.pr.pre.i.i.i, %bb.n ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.bg, align 8, !tbaa !50
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !52
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !53
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #17, !call_target !55, !inline_history !101
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !53
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #17, !call_target !63, !inline_history !101
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i9.i.i.i = icmp eq i8 %i.br, 0
  br i1 %.not.i9.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i = phi i32 [ %i.bj, %bb.r ], [ %i.bt, %bb.s ]
  %i.bu = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bu, label %bb.t, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !64

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #17
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.p, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !47
  br label %_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit

_ZNSt10shared_ptrIN5folly10LogHandlerEEaSERKS2_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.preheader, %bb.g, %..loopexit_crit_edge21.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %.loopexit
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.011.020, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.o
  br i1 %i.bw, label %._crit_edge, label %bb.e
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly11LogCategory8setLevelENS_8LogLevelEb(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  tail call void @_ZN5folly8LoggerDB8setLevelEPNS_11LogCategoryENS_8LogLevelEb(ptr noundef nonnull align 8 dereferenceable(232) %i.b, ptr noundef nonnull %0, i32 noundef %1, i1 noundef zeroext %2)
  ret void
}

declare void @_ZN5folly8LoggerDB8setLevelEPNS_11LogCategoryENS_8LogLevelEb(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5folly11LogCategory33setPropagateLevelMessagesToParentENS_8LogLevelE(ptr noundef nonnull align 8 captures(none) dereferenceable(136) %0, i32 noundef %1) local_unnamed_addr #21 align 2 {
bb.a:
  store atomic i32 %1, ptr %0 monotonic, align 8
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @_ZNK5folly11LogCategory40getPropagateLevelMessagesToParentRelaxedEv(ptr noundef nonnull align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = load atomic i32, ptr %0 monotonic, align 8
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly11LogCategory14setLevelLockedENS_8LogLevelEb(ptr noundef nonnull align 8 captures(none) dereferenceable(136) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  %.sroa.speculate.load.false10.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %.sroa.speculated11 = select i1 %i.a, i32 2147483647, i32 %.sroa.speculate.load.false10.sroa.speculated ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %.not = icmp ne ptr %i.c, null
  %spec.select = and i1 %2, %.not                 ; 2 uses
  %i.d = or i32 %.sroa.speculated11, -2147483648
  %.08 = select i1 %spec.select, i32 %i.d, i32 %.sroa.speculated11 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = atomicrmw xchg ptr %i.e, i32 %.08 acq_rel, align 4
  %i.g = icmp eq i32 %i.f, %.08
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %spec.select, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load atomic i32, ptr %i.i acquire, align 4
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %.sroa.speculated11)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %.sroa.speculated, %bb.c ], [ %.sroa.speculated11, %bb.b ]
  tail call void @_ZN5folly11LogCategory20updateEffectiveLevelENS_8LogLevelE(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %.0)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly11LogCategory20updateEffectiveLevelENS_8LogLevelE(ptr noundef nonnull align 8 captures(none) dereferenceable(136) %0, i32 noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = atomicrmw xchg ptr %i.a, i32 %1 acq_rel, align 4
  %i.c = icmp eq i32 %1, %i.b
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3927 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3927 ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.019 = load ptr, ptr %i.i, align 8, !tbaa !3928 ; 2 uses
  %.not20 = icmp eq ptr %.019, null
  br i1 %.not20, label %.loopexit, label %.lr.ph23

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.012.018 = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = load ptr, ptr %.sroa.012.018, align 8, !tbaa !3929
  store atomic i32 %1, ptr %i.j release, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.012.018, i64 8 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.g
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph23:                                         ; preds = %._crit_edge, %_ZN5folly11LogCategory18parentLevelUpdatedENS_8LogLevelE.exit
  %.021 = phi ptr [ %.0, %_ZN5folly11LogCategory18parentLevelUpdatedENS_8LogLevelE.exit ], [ %.019, %._crit_edge ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.021, i64 8
  %i.n = load atomic i32, ptr %i.m acquire, align 4 ; 2 uses
  %.not.i = icmp sgt i32 %i.n, -1
  br i1 %.not.i, label %_ZN5folly11LogCategory18parentLevelUpdatedENS_8LogLevelE.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph23
  %i.o = and i32 %i.n, 2147483647
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.o)
  tail call void @_ZN5folly11LogCategory20updateEffectiveLevelENS_8LogLevelE(ptr noundef nonnull align 8 dereferenceable(136) %.021, i32 noundef %.sroa.speculated), !inline_history !3931
  br label %_ZN5folly11LogCategory18parentLevelUpdatedENS_8LogLevelE.exit

_ZN5folly11LogCategory18parentLevelUpdatedENS_8LogLevelE.exit: ; preds = %.lr.ph23, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.021, i64 104
  %.0 = load ptr, ptr %i.p, align 8, !tbaa !3928  ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.loopexit, label %.lr.ph23, !llvm.loop !3932

.loopexit:                                        ; preds = %_ZN5folly11LogCategory18parentLevelUpdatedENS_8LogLevelE.exit, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly11LogCategory18parentLevelUpdatedENS_8LogLevelE(ptr noundef nonnull align 8 captures(none) dereferenceable(136) %0, i32 noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic i32, ptr %i.a acquire, align 8 ; 2 uses
  %.not = icmp sgt i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.b, 2147483647
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.c)
  tail call void @_ZN5folly11LogCategory20updateEffectiveLevelENS_8LogLevelE(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %.sroa.speculated)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly11LogCategory17registerXlogLevelEPSt6atomicINS_8LogLevelEE(ptr noundef nonnull align 8 captures(none) dereferenceable(136) %0, ptr noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3933 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3934
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.c, align 8, !tbaa !3929
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.b, align 8, !tbaa !3933
  br label %_ZNSt6vectorIPSt6atomicIN5folly8LogLevelEESaIS4_EE9push_backERKS4_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !3935 ; 4 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 6 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIPSt6atomicIN5folly8LogLevelEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #27
  unreachable

_ZNKSt6vectorIPSt6atomicIN5folly8LogLevelEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #28 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  store ptr %1, ptr %i.s, align 8, !tbaa !3929
  %i.t = icmp sgt i64 %i.j, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIPSt6atomicIN5folly8LogLevelEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPSt6atomicIN5folly8LogLevelEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIPSt6atomicIN5folly8LogLevelEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPSt6atomicIN5folly8LogLevelEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPSt6atomicIN5folly8LogLevelEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPSt6atomicIN5folly8LogLevelEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPSt6atomicIN5folly8LogLevelEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.j) #26
  br label %_ZNSt6vectorIPSt6atomicIN5folly8LogLevelEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPSt6atomicIN5folly8LogLevelEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPSt6atomicIN5folly8LogLevelEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !3935
  store ptr %i.u, ptr %i.b, align 8, !tbaa !3933
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.v, ptr %i.d, align 8, !tbaa !3934
  br label %_ZNSt6vectorIPSt6atomicIN5folly8LogLevelEESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPSt6atomicIN5folly8LogLevelEESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.b, %_ZNSt6vectorIPSt6atomicIN5folly8LogLevelEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #4 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nounwind memory(none) }
attributes #15 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }
attributes #18 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { noreturn nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSSt6atomicIN5folly8LogLevelEE", !13, i64 0}
!13 = !{!"_ZTSN5folly8LogLevelE", !9, i64 0}
!14 = !{!15, !8, i64 0}
!15 = !{!"_ZTSSt13__atomic_baseIjE", !8, i64 0}
!16 = !{!17, !19, i64 16}
!17 = !{!"_ZTSN5folly11LogCategoryE", !12, i64 0, !12, i64 4, !18, i64 8, !19, i64 16, !21, i64 24, !25, i64 56, !32, i64 88, !19, i64 96, !19, i64 104, !33, i64 112}
!18 = !{!"_ZTSSt6atomicIjE", !15, i64 0}
!19 = !{!"p1 _ZTSN5folly11LogCategoryE", !20, i64 0}
!20 = !{!"any pointer", !9, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !24, i64 8, !9, i64 16}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!23 = !{!"p1 omnipotent char", !20, i64 0}
!24 = !{!"long", !9, i64 0}
!25 = !{!"_ZTSN5folly12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEE", !26, i64 0, !31, i64 24}
!26 = !{!"_ZTSSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE", !27, i64 0}
!27 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE", !28, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE12_Vector_implE", !29, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!30 = !{!"p1 _ZTSSt10shared_ptrIN5folly10LogHandlerEE", !20, i64 0}
!31 = !{!"_ZTSN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEE", !18, i64 0}
!32 = !{!"p1 _ZTSN5folly8LoggerDBE", !20, i64 0}
!33 = !{!"_ZTSSt6vectorIPSt6atomicIN5folly8LogLevelEESaIS4_EE", !34, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseIPSt6atomicIN5folly8LogLevelEESaIS4_EE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIPSt6atomicIN5folly8LogLevelEESaIS4_EE12_Vector_implE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIPSt6atomicIN5folly8LogLevelEESaIS4_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!37 = !{!"p2 _ZTSSt6atomicIN5folly8LogLevelEE", !38, i64 0}
!38 = !{!"any p2 pointer", !20, i64 0}
!39 = !{!22, !23, i64 0}
!40 = !{!21, !24, i64 8}
!41 = !{!9, !9, i64 0}
!42 = !{!17, !32, i64 88}
!43 = !{!17, !19, i64 96}
!44 = !{!17, !19, i64 104}
!45 = !{!29, !30, i64 0}
!46 = !{!29, !30, i64 8}
!47 = !{!48, !49, i64 0}
!48 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !49, i64 0}
!49 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !20, i64 0}
!50 = !{!51, !8, i64 8}
!51 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 8, !8, i64 12}
!52 = !{!51, !8, i64 12}
!53 = !{!54, !54, i64 0}
!54 = !{!"vtable pointer", !10, i64 0}
!55 = !DISubprogram(name: "_M_dispose", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv", scope: !57, file: !56, line: 139, type: !59, scopeLine: 139, containingType: !57, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!56 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/shared_ptr_base.h", directory: "", checksumkind: CSK_MD5, checksum: "398b697f034a380e2062e59e71a6eec9")
!57 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>", scope: !58, file: !56, line: 125, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE")
!58 = !DINamespace(name: "std", scope: null)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !61}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!62 = distinct !{null, null, null, null, null, null, null}
!63 = !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv", scope: !57, file: !56, line: 143, type: !59, scopeLine: 143, containingType: !57, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!64 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!29, !30, i64 16}
!68 = distinct !{null}
!69 = !{!70, !13, i64 8}
!70 = !{!"_ZTSN5folly10LogMessageE", !19, i64 0, !13, i64 8, !24, i64 16, !71, i64 24, !73, i64 32, !8, i64 48, !73, i64 56, !24, i64 72, !21, i64 80, !21, i64 112, !21, i64 144}
!71 = !{!"_ZTSNSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEE", !72, i64 0}
!72 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE", !24, i64 0}
!73 = !{!"_ZTSN5folly5RangeIPKcEE", !23, i64 0, !23, i64 8}
!74 = distinct !{!74, !66}
!75 = !{!23, !23, i64 0}
!76 = !{!70, !8, i64 48}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA7_cNS_5RangeIPKcEEA2_cjA3_cS6_SC_ETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISF_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSI_EEEE5valueEiE4typeELi0EEESF_DpRKSH_: argument 0"}
!79 = distinct !{!79, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA7_cNS_5RangeIPKcEEA2_cjA3_cS6_SC_ETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISF_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSI_EEEE5valueEiE4typeELi0EEESF_DpRKSH_"}
!80 = !{!81, !81, i64 0}
!81 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0}
!82 = !{!21, !23, i64 0}
!83 = !{!24, !24, i64 0}
!84 = !{!"branch_weights", i32 4001, i32 4000000}
!85 = !{!86, !86, i64 0}
!86 = !{!"short", !9, i64 0}
!87 = distinct !{!87, !66}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZNK5folly16SynchronizedBaseINS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5rlockEv: argument 0"}
!90 = distinct !{!90, !"_ZNK5folly16SynchronizedBaseINS_12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5rlockEv"}
!91 = !{!92, !93, i64 0}
!92 = !{!"_ZTSSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE", !93, i64 0, !94, i64 8}
!93 = !{!"p1 _ZTSN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEE", !20, i64 0}
!94 = !{!"_ZTSN5folly16SharedMutexTokenE", !95, i64 0, !86, i64 2}
!95 = !{!"_ZTSN5folly16SharedMutexToken5StateE", !9, i64 0}
!96 = !{!94, !95, i64 0}
!97 = !{!94, !86, i64 2}
!98 = !{!99, !100, i64 0}
!99 = !{!"_ZTSSt12__shared_ptrIN5folly10LogHandlerELN9__gnu_cxx12_Lock_policyE2EE", !100, i64 0, !48, i64 8}
!100 = !{!"p1 _ZTSN5folly10LogHandlerE", !20, i64 0}
!101 = distinct !{null, null, null, null}
!102 = distinct !{!102, !66}
!103 = !{!"branch_weights", i32 4001, i32 1}
!104 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EED2Ev, null, null, null, null, null, null, null}
!105 = !DISubprogram(name: "handleMessage", linkageName: "_ZN5folly10LogHandler13handleMessageERKNS_10LogMessageEPKNS_11LogCategoryE", scope: !107, file: !106, line: 67, type: !109, scopeLine: 67, containingType: !107, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!106 = !DIFile(filename: "_deps/folly-src/folly/logging/LogHandler.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "e17748b7eb721a327e1d97745e6baced")
!107 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LogHandler", scope: !108, file: !106, line: 45, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly10LogHandlerE")
!108 = !DINamespace(name: "folly", scope: null)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !111, !112, !116}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!112 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LogMessage", scope: !108, file: !115, line: 40, size: 1408, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly10LogMessageE")
!115 = !DIFile(filename: "_deps/folly-src/folly/logging/LogMessage.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "00ca54459188d03152f46a4f83e0da59")
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!118 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LogCategory", scope: !108, file: !119, line: 44, size: 1088, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !120, identifier: "_ZTSN5folly11LogCategoryE")
!119 = !DIFile(filename: "_deps/folly-src/folly/logging/LogCategory.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "5f0603c0a960698916c7ec164577aa9e")
!120 = !{!121, !267, !268, !424, !427, !1515, !3017, !3022, !3023, !3024, !3514, !3518, !3734, !3739, !3742, !3788, !3789, !3790, !3793, !3796, !3799, !3800, !3803, !3806, !3809, !3812, !3815, !3822, !3825, !3826, !3829, !3833, !3837, !3841, !3844, !3847, !3850, !3851}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "propagateLevelMessagesToParent_", scope: !118, file: !119, line: 279, baseType: !122, size: 32)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<folly::LogLevel>", scope: !58, file: !123, line: 198, size: 32, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !124, templateParams: !265, identifier: "_ZTSSt6atomicIN5folly8LogLevelEE")
!123 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/atomic", directory: "")
!124 = !{!125, !128, !129, !170, !173, !177, !178, !183, !187, !192, !195, !199, !204, !207, !210, !213, !216, !228, !231, !234, !237, !240, !243, !247, !250, !253, !256, !257, !258, !259, !260, !263, !264}
!125 = !DIDerivedType(tag: DW_TAG_variable, name: "_S_min_alignment", scope: !122, file: !123, line: 204, baseType: !126, flags: DIFlagPrivate | DIFlagStaticMember, extraData: i32 4)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!127 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!128 = !DIDerivedType(tag: DW_TAG_variable, name: "_S_alignment", scope: !122, file: !123, line: 208, baseType: !126, flags: DIFlagPrivate | DIFlagStaticMember, extraData: i32 4)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_M_i", scope: !122, file: !123, line: 211, baseType: !130, size: 32, align: 32, flags: DIFlagPrivate)
!130 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "LogLevel", scope: !108, file: !131, line: 39, baseType: !132, size: 32, flags: DIFlagEnumClass, elements: !137, identifier: "_ZTSN5folly8LogLevelE")
!131 = !DIFile(filename: "_deps/folly-src/folly/logging/LogLevel.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "c105c466e9bbd02ad66c872e08165aaf")
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !133, line: 26, baseType: !134)
!133 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !135, line: 42, baseType: !136)
!135 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!136 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!138 = !DIEnumerator(name: "UNINITIALIZED", value: 0, isUnsigned: true)
!139 = !DIEnumerator(name: "NONE", value: 1, isUnsigned: true)
!140 = !DIEnumerator(name: "MIN_LEVEL", value: 1, isUnsigned: true)
!141 = !DIEnumerator(name: "DBG", value: 1000, isUnsigned: true)
!142 = !DIEnumerator(name: "DBG0", value: 1999, isUnsigned: true)
!143 = !DIEnumerator(name: "DBG1", value: 1998, isUnsigned: true)
!144 = !DIEnumerator(name: "DBG2", value: 1997, isUnsigned: true)
!145 = !DIEnumerator(name: "DBG3", value: 1996, isUnsigned: true)
!146 = !DIEnumerator(name: "DBG4", value: 1995, isUnsigned: true)
!147 = !DIEnumerator(name: "DBG5", value: 1994, isUnsigned: true)
!148 = !DIEnumerator(name: "DBG6", value: 1993, isUnsigned: true)
!149 = !DIEnumerator(name: "DBG7", value: 1992, isUnsigned: true)
!150 = !DIEnumerator(name: "DBG8", value: 1991, isUnsigned: true)
!151 = !DIEnumerator(name: "DBG9", value: 1990, isUnsigned: true)
!152 = !DIEnumerator(name: "INFO", value: 2000, isUnsigned: true)
!153 = !DIEnumerator(name: "INFO0", value: 2999, isUnsigned: true)
!154 = !DIEnumerator(name: "INFO1", value: 2998, isUnsigned: true)
!155 = !DIEnumerator(name: "INFO2", value: 2997, isUnsigned: true)
!156 = !DIEnumerator(name: "INFO3", value: 2996, isUnsigned: true)
!157 = !DIEnumerator(name: "INFO4", value: 2995, isUnsigned: true)
!158 = !DIEnumerator(name: "INFO5", value: 2994, isUnsigned: true)
!159 = !DIEnumerator(name: "INFO6", value: 2993, isUnsigned: true)
!160 = !DIEnumerator(name: "INFO7", value: 2992, isUnsigned: true)
!161 = !DIEnumerator(name: "INFO8", value: 2991, isUnsigned: true)
!162 = !DIEnumerator(name: "INFO9", value: 2990, isUnsigned: true)
!163 = !DIEnumerator(name: "WARN", value: 3000, isUnsigned: true)
!164 = !DIEnumerator(name: "WARNING", value: 3000, isUnsigned: true)
!165 = !DIEnumerator(name: "ERR", value: 4000, isUnsigned: true)
!166 = !DIEnumerator(name: "CRITICAL", value: 5000, isUnsigned: true)
!167 = !DIEnumerator(name: "DFATAL", value: 2147483646, isUnsigned: true)
!168 = !DIEnumerator(name: "FATAL", value: 2147483647, isUnsigned: true)
!169 = !DIEnumerator(name: "MAX_LEVEL", value: 2147483647, isUnsigned: true)
!170 = !DIDerivedType(tag: DW_TAG_variable, name: "is_always_lock_free", scope: !122, file: !123, line: 272, baseType: !171, flags: DIFlagStaticMember)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!172 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!173 = !DISubprogram(name: "atomic", linkageName: "_ZNSt6atomicIN5folly8LogLevelEEC4Ev", scope: !122, file: !123, line: 227, type: !174, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !176}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!177 = !DISubprogram(name: "~atomic", linkageName: "_ZNSt6atomicIN5folly8LogLevelEED4Ev", scope: !122, file: !123, line: 228, type: !174, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!178 = !DISubprogram(name: "atomic", linkageName: "_ZNSt6atomicIN5folly8LogLevelEEC4ERKS2_", scope: !122, file: !123, line: 229, type: !179, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !176, !181}
!181 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!183 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6atomicIN5folly8LogLevelEEaSERKS2_", scope: !122, file: !123, line: 230, type: !184, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!184 = !DISubroutineType(types: !185)
!185 = !{!186, !176, !181}
!186 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !122, size: 64)
!187 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt6atomicIN5folly8LogLevelEEaSERKS2_", scope: !122, file: !123, line: 231, type: !188, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!188 = !DISubroutineType(types: !189)
!189 = !{!186, !190, !181}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!191 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !122)
!192 = !DISubprogram(name: "atomic", linkageName: "_ZNSt6atomicIN5folly8LogLevelEEC4ES1_", scope: !122, file: !123, line: 233, type: !193, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !176, !130}
end_hunk_2
