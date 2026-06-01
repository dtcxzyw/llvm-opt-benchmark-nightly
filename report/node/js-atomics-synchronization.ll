inline.NumInlined: 1666
inline.NumDeleted: 907
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"struct.std::source_location::__impl" = type { ptr, ptr, i32, i32 }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.std::optional.463" = type { %"struct.std::_Optional_base.464" }
%"struct.std::_Optional_base.464" = type { %"struct.std::_Optional_payload.466" }
%"struct.std::_Optional_payload.466" = type { %"struct.std::_Optional_payload.base.470", [7 x i8] }
%"struct.std::_Optional_payload.base.470" = type { %"struct.std::_Optional_payload_base.base.469" }
%"struct.std::_Optional_payload_base.base.469" = type { %"union.std::_Optional_payload_base<v8::internal::detail::WaiterQueueLockGuard>::_Storage", i8 }
%"union.std::_Optional_payload_base<v8::internal::detail::WaiterQueueLockGuard>::_Storage" = type { %"class.v8::internal::detail::WaiterQueueLockGuard" }
%"class.v8::internal::detail::WaiterQueueLockGuard" = type <{ ptr, i32, [4 x i8] }>
%class.anon.695 = type { ptr, %class.anon.694 }
%class.anon.694 = type { ptr }
%"struct.std::pair.696" = type { i32, ptr }
%"struct.std::pair" = type { i32, ptr }
%class.anon.680 = type { ptr, %class.anon.679 }
%class.anon.679 = type { ptr, %"class.v8::base::TimeDelta", ptr }
%"class.v8::base::TimeDelta" = type { i64 }
%"class.v8::internal::detail::SyncWaiterQueueNode" = type <{ %"class.v8::internal::detail::WaiterQueueNode", %"class.v8::base::Mutex", %"class.v8::base::ConditionVariable", i8, [7 x i8] }>
%"class.v8::internal::detail::WaiterQueueNode" = type { ptr, ptr, ptr, ptr }
%"class.v8::base::Mutex" = type { %"class.absl::Mutex" }
%"class.absl::Mutex" = type { %"struct.std::atomic.14" }
%"struct.std::atomic.14" = type { %"struct.std::__atomic_base.15" }
%"struct.std::__atomic_base.15" = type { i64 }
%"class.v8::base::ConditionVariable" = type { %"class.absl::CondVar" }
%"class.absl::CondVar" = type { %"struct.std::atomic.14" }
%"class.v8::internal::detail::TaggedOperatorArrowRef" = type { %"class.v8::internal::JSAtomicsMutex" }
%"class.v8::internal::JSAtomicsMutex" = type { %"class.v8::internal::TorqueGeneratedJSAtomicsMutex" }
%"class.v8::internal::TorqueGeneratedJSAtomicsMutex" = type { %"class.v8::internal::JSSynchronizationPrimitive" }
%"class.v8::internal::JSSynchronizationPrimitive" = type { %"class.v8::internal::TorqueGeneratedJSSynchronizationPrimitive" }
%"class.v8::internal::TorqueGeneratedJSSynchronizationPrimitive" = type { %"class.v8::internal::AlwaysSharedSpaceJSObject" }
%"class.v8::internal::AlwaysSharedSpaceJSObject" = type { %"class.v8::internal::TorqueGeneratedAlwaysSharedSpaceJSObject" }
%"class.v8::internal::TorqueGeneratedAlwaysSharedSpaceJSObject" = type { %"class.v8::internal::JSObject" }
%"class.v8::internal::JSObject" = type { %"class.v8::internal::TorqueGeneratedJSObject" }
%"class.v8::internal::TorqueGeneratedJSObject" = type { %"class.v8::internal::JSReceiver" }
%"class.v8::internal::JSReceiver" = type { %"class.v8::internal::TorqueGeneratedJSReceiver" }
%"class.v8::internal::TorqueGeneratedJSReceiver" = type { %"class.v8::internal::HeapObject" }
%"class.v8::internal::HeapObject" = type { %"class.v8::internal::TaggedImpl" }
%"class.v8::internal::TaggedImpl" = type { i64 }
%class.anon.498 = type { ptr, %"class.v8::internal::DirectHandle.460", %"class.v8::internal::Handle.482", %"class.v8::internal::MaybeHandle", ptr, %"class.std::optional.474" }
%"class.v8::internal::DirectHandle.460" = type { %"class.v8::internal::Handle.461" }
%"class.v8::internal::Handle.461" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::HandleBase" = type { ptr }
%"class.v8::internal::Handle.482" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::MaybeHandle" = type { %"class.v8::internal::HandleBase" }
%"class.std::optional.474" = type { %"struct.std::_Optional_base.475" }
%"struct.std::_Optional_base.475" = type { %"struct.std::_Optional_payload.477" }
%"struct.std::_Optional_payload.477" = type { %"struct.std::_Optional_payload_base.base.479", [7 x i8] }
%"struct.std::_Optional_payload_base.base.479" = type <{ %"union.std::_Optional_payload_base<v8::base::TimeDelta>::_Storage", i8 }>
%"union.std::_Optional_payload_base<v8::base::TimeDelta>::_Storage" = type { %"class.v8::base::TimeDelta" }
%"class.v8::internal::DirectHandle.451" = type { %"class.v8::internal::Handle.452" }
%"class.v8::internal::Handle.452" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::Factory::JSFunctionBuilder" = type <{ ptr, %"class.v8::internal::DirectHandle.547", %"class.v8::internal::DirectHandle.489", %"class.v8::internal::MaybeDirectHandle.550", %"class.v8::internal::MaybeDirectHandle.552", i8, [7 x i8] }>
%"class.v8::internal::DirectHandle.547" = type { %"class.v8::internal::Handle.548" }
%"class.v8::internal::Handle.548" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::DirectHandle.489" = type { %"class.v8::internal::Handle.490" }
%"class.v8::internal::Handle.490" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::MaybeDirectHandle.550" = type { %"class.v8::internal::MaybeHandle.551" }
%"class.v8::internal::MaybeHandle.551" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::MaybeDirectHandle.552" = type { %"class.v8::internal::MaybeHandle.553" }
%"class.v8::internal::MaybeHandle.553" = type { %"class.v8::internal::HandleBase" }
%"class.v8::SourceLocation" = type { %"struct.std::source_location" }
%"struct.std::source_location" = type { ptr }
%"class.std::unique_ptr.511" = type { %"struct.std::__uniq_ptr_data.512" }
%"struct.std::__uniq_ptr_data.512" = type { %"class.std::__uniq_ptr_impl.513" }
%"class.std::__uniq_ptr_impl.513" = type { %"class.std::tuple.514" }
%"class.std::tuple.514" = type { %"struct.std::_Tuple_impl.515" }
%"struct.std::_Tuple_impl.515" = type { %"struct.std::_Head_base.518" }
%"struct.std::_Head_base.518" = type { ptr }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<std::unique_ptr<v8::internal::detail::WaiterQueueNode>, std::allocator<std::unique_ptr<v8::internal::detail::WaiterQueueNode>>>::_List_impl" }
%"struct.std::__cxx11::_List_base<std::unique_ptr<v8::internal::detail::WaiterQueueNode>, std::allocator<std::unique_ptr<v8::internal::detail::WaiterQueueNode>>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { ptr, ptr }
%"class.std::function.540" = type { %"class.std::_Function_base", ptr }
%"struct.heap::base::Stack::Segment" = type { ptr, ptr }
%"class.v8::Global" = type { %"class.v8::PersistentBase" }
%"class.v8::PersistentBase" = type { %"class.v8::api_internal::IndirectHandleBase" }
%"class.v8::api_internal::IndirectHandleBase" = type { ptr }
%"class.v8::Global.458" = type { %"class.v8::PersistentBase.459" }
%"class.v8::PersistentBase.459" = type { %"class.v8::api_internal::IndirectHandleBase" }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.v8::Global.456" = type { %"class.v8::PersistentBase.457" }
%"class.v8::PersistentBase.457" = type { %"class.v8::api_internal::IndirectHandleBase" }

$_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_14JSAtomicsMutexEE27GetSynchronizationPrimitiveEv = comdat any

$_ZN2v88internal6detail19SyncWaiterQueueNodeD2Ev = comdat any

$_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_14JSAtomicsMutexEE30RemoveFromAsyncWaiterQueueListEPS4_ = comdat any

$_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEE30RemoveFromAsyncWaiterQueueListEPS4_ = comdat any

$_ZN2v88internal6detail19SyncWaiterQueueNodeD0Ev = comdat any

$_ZN2v88internal6detail19SyncWaiterQueueNode6NotifyEv = comdat any

$_ZN2v88internal6detail19SyncWaiterQueueNode28IsSameIsolateForAsyncCleanupEPNS0_7IsolateE = comdat any

$_ZN2v88internal6detail19SyncWaiterQueueNode27CleanupMatchingAsyncWaitersERKSt8functionIFbPNS1_15WaiterQueueNodeEEE = comdat any

$_ZN2v88internal6detail19SyncWaiterQueueNode23SetReadyForAsyncCleanupEv = comdat any

$_ZN4heap4base5Stack24SetMarkerAndCallbackImplIZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS4_6detail19SyncWaiterQueueNode7WaitForERKNS3_4base9TimeDeltaEEUlvE_EEvT_EUlvE_EEvPS1_PvPKv = comdat any

$_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_6detail19SyncWaiterQueueNode7WaitForERKNS_4base9TimeDeltaEEUlvE_EEvT_ENKUlvE_clEv = comdat any

$_ZN4heap4base5Stack43SetMarkerForBackgroundThreadAndCallbackImplIZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS4_6detail19SyncWaiterQueueNode7WaitForERKNS3_4base9TimeDeltaEEUlvE_EEvT_EUlvE_EEvPS1_PvPKv = comdat any

$_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEEixERS7_ = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_ = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE5eraseERS1_ = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E = comdat any

$_ZN4heap4base5Stack24SetMarkerAndCallbackImplIZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS4_6detail19SyncWaiterQueueNode4WaitEvEUlvE_EEvT_EUlvE_EEvPS1_PvPKv = comdat any

$_ZN4heap4base5Stack43SetMarkerForBackgroundThreadAndCallbackImplIZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS4_6detail19SyncWaiterQueueNode4WaitEvEUlvE_EEvT_EUlvE_EEvPS1_PvPKv = comdat any

$_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_14JSAtomicsMutexEEC2EPNS0_7IsolateENS0_12DirectHandleIS3_EE = comdat any

$_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_14JSAtomicsMutexEED2Ev = comdat any

$_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_14JSAtomicsMutexEED0Ev = comdat any

$_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_14JSAtomicsMutexEE6NotifyEv = comdat any

$_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_14JSAtomicsMutexEE28IsSameIsolateForAsyncCleanupEPNS0_7IsolateE = comdat any

$_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_14JSAtomicsMutexEE27CleanupMatchingAsyncWaitersERKSt8functionIFbPNS1_15WaiterQueueNodeEEE = comdat any

$_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_14JSAtomicsMutexEE23SetReadyForAsyncCleanupEv = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN2v88internal6detail21AsyncWaiterNotifyTaskINS0_14JSAtomicsMutexEED0Ev = comdat any

$_ZN2v88internal14CancelableTask3RunEv = comdat any

$_ZN2v88internal6detail21AsyncWaiterNotifyTaskINS0_14JSAtomicsMutexEE11RunInternalEv = comdat any

$_ZThn32_N2v88internal6detail21AsyncWaiterNotifyTaskINS0_14JSAtomicsMutexEED1Ev = comdat any

$_ZThn32_N2v88internal6detail21AsyncWaiterNotifyTaskINS0_14JSAtomicsMutexEED0Ev = comdat any

$_ZThn32_N2v88internal14CancelableTask3RunEv = comdat any

$_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_14JSAtomicsMutexEEC2EPNS0_7IsolateENS0_12DirectHandleIS3_EENS7_INS0_9JSPromiseEEENS0_17MaybeDirectHandleIS9_EE = comdat any

$_ZN2v88internal6detail22AsyncWaiterTimeoutTaskINS0_14JSAtomicsMutexEED0Ev = comdat any

$_ZN2v88internal6detail22AsyncWaiterTimeoutTaskINS0_14JSAtomicsMutexEE11RunInternalEv = comdat any

$_ZThn32_N2v88internal6detail22AsyncWaiterTimeoutTaskINS0_14JSAtomicsMutexEED1Ev = comdat any

$_ZThn32_N2v88internal6detail22AsyncWaiterTimeoutTaskINS0_14JSAtomicsMutexEED0Ev = comdat any

$_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEEC2EPNS0_7IsolateENS0_12DirectHandleIS3_EENS7_INS0_9JSPromiseEEENS0_17MaybeDirectHandleIS9_EE = comdat any

$_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEED2Ev = comdat any

$_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEED0Ev = comdat any

$_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEE6NotifyEv = comdat any

$_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEE28IsSameIsolateForAsyncCleanupEPNS0_7IsolateE = comdat any

$_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEE27CleanupMatchingAsyncWaitersERKSt8functionIFbPNS1_15WaiterQueueNodeEEE = comdat any

$_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEE23SetReadyForAsyncCleanupEv = comdat any

$_ZN2v88internal6detail21AsyncWaiterNotifyTaskINS0_18JSAtomicsConditionEED0Ev = comdat any

$_ZN2v88internal6detail21AsyncWaiterNotifyTaskINS0_18JSAtomicsConditionEE11RunInternalEv = comdat any

$_ZThn32_N2v88internal6detail21AsyncWaiterNotifyTaskINS0_18JSAtomicsConditionEED1Ev = comdat any

$_ZThn32_N2v88internal6detail21AsyncWaiterNotifyTaskINS0_18JSAtomicsConditionEED0Ev = comdat any

$_ZN2v88internal14CancelableTaskD2Ev = comdat any

$_ZN2v88internal6detail22AsyncWaiterTimeoutTaskINS0_18JSAtomicsConditionEED0Ev = comdat any

$_ZN2v88internal6detail22AsyncWaiterTimeoutTaskINS0_18JSAtomicsConditionEE11RunInternalEv = comdat any

$_ZThn32_N2v88internal6detail22AsyncWaiterTimeoutTaskINS0_18JSAtomicsConditionEED1Ev = comdat any

$_ZThn32_N2v88internal6detail22AsyncWaiterTimeoutTaskINS0_18JSAtomicsConditionEED0Ev = comdat any

$_ZTVN2v88internal6detail19SyncWaiterQueueNodeE = comdat any

$_ZTVN2v88internal6detail20AsyncWaiterQueueNodeINS0_14JSAtomicsMutexEEE = comdat any

$_ZTVN2v88internal6detail21AsyncWaiterNotifyTaskINS0_14JSAtomicsMutexEEE = comdat any

$_ZTVN2v88internal6detail22AsyncWaiterTimeoutTaskINS0_14JSAtomicsMutexEEE = comdat any

$_ZTVN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEEE = comdat any

$_ZTVN2v88internal6detail21AsyncWaiterNotifyTaskINS0_18JSAtomicsConditionEEE = comdat any

$_ZTVN2v88internal6detail22AsyncWaiterTimeoutTaskINS0_18JSAtomicsConditionEEE = comdat any

@.str = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"../../deps/v8/src/objects/js-atomics-synchronization.cc\00", align 1
@.str.3 = private unnamed_addr constant [228 x i8] c"static bool v8::internal::JSAtomicsMutex::LockAsyncSlowPath(Isolate *, DirectHandle<JSAtomicsMutex>, std::atomic<StateT> *, Handle<JSPromise>, MaybeHandle<JSPromise>, LockAsyncWaiterQueueNode **, std::optional<base::TimeDelta>)\00", align 1
@.constant = private unnamed_addr constant %"struct.std::source_location::__impl" { ptr @.str.2, ptr @.str.3, i32 930, i32 18 }, align 8
@.str.4 = private unnamed_addr constant [188 x i8] c"static MaybeDirectHandle<JSReceiver> v8::internal::JSAtomicsCondition::WaitAsync(Isolate *, DirectHandle<JSAtomicsCondition>, DirectHandle<JSAtomicsMutex>, std::optional<base::TimeDelta>)\00", align 1
@.constant.5 = private unnamed_addr constant %"struct.std::source_location::__impl" { ptr @.str.2, ptr @.str.4, i32 1324, i32 18 }, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@_ZTVN2v88internal6detail19SyncWaiterQueueNodeE = linkonce_odr hidden unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal6detail19SyncWaiterQueueNodeD2Ev, ptr @_ZN2v88internal6detail19SyncWaiterQueueNodeD0Ev, ptr @_ZN2v88internal6detail19SyncWaiterQueueNode6NotifyEv, ptr @_ZN2v88internal6detail19SyncWaiterQueueNode28IsSameIsolateForAsyncCleanupEPNS0_7IsolateE, ptr @_ZN2v88internal6detail19SyncWaiterQueueNode27CleanupMatchingAsyncWaitersERKSt8functionIFbPNS1_15WaiterQueueNodeEEE, ptr @_ZN2v88internal6detail19SyncWaiterQueueNode23SetReadyForAsyncCleanupEv] }, comdat, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"!is_null()\00", align 1
@_ZTVN2v88internal6detail20AsyncWaiterQueueNodeINS0_14JSAtomicsMutexEEE = linkonce_odr hidden unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_14JSAtomicsMutexEED2Ev, ptr @_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_14JSAtomicsMutexEED0Ev, ptr @_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_14JSAtomicsMutexEE6NotifyEv, ptr @_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_14JSAtomicsMutexEE28IsSameIsolateForAsyncCleanupEPNS0_7IsolateE, ptr @_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_14JSAtomicsMutexEE27CleanupMatchingAsyncWaitersERKSt8functionIFbPNS1_15WaiterQueueNodeEEE, ptr @_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_14JSAtomicsMutexEE23SetReadyForAsyncCleanupEv] }, comdat, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.10 = private unnamed_addr constant [131 x i8] c"virtual void v8::internal::detail::AsyncWaiterQueueNode<v8::internal::JSAtomicsMutex>::Notify() [T = v8::internal::JSAtomicsMutex]\00", align 1
@.constant.11 = private unnamed_addr constant %"struct.std::source_location::__impl" { ptr @.str.2, ptr @.str.10, i32 334, i32 19 }, align 8
@_ZTVN2v88internal6detail21AsyncWaiterNotifyTaskINS0_14JSAtomicsMutexEEE = linkonce_odr hidden unnamed_addr constant { [6 x ptr], [5 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal14CancelableTaskD2Ev, ptr @_ZN2v88internal6detail21AsyncWaiterNotifyTaskINS0_14JSAtomicsMutexEED0Ev, ptr @_ZN2v88internal14CancelableTask3RunEv, ptr @_ZN2v88internal6detail21AsyncWaiterNotifyTaskINS0_14JSAtomicsMutexEE11RunInternalEv], [5 x ptr] [ptr inttoptr (i64 -32 to ptr), ptr null, ptr @_ZThn32_N2v88internal6detail21AsyncWaiterNotifyTaskINS0_14JSAtomicsMutexEED1Ev, ptr @_ZThn32_N2v88internal6detail21AsyncWaiterNotifyTaskINS0_14JSAtomicsMutexEED0Ev, ptr @_ZThn32_N2v88internal14CancelableTask3RunEv] }, comdat, align 8
@_ZTVN2v88internal6detail22AsyncWaiterTimeoutTaskINS0_14JSAtomicsMutexEEE = linkonce_odr hidden unnamed_addr constant { [6 x ptr], [5 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal14CancelableTaskD2Ev, ptr @_ZN2v88internal6detail22AsyncWaiterTimeoutTaskINS0_14JSAtomicsMutexEED0Ev, ptr @_ZN2v88internal14CancelableTask3RunEv, ptr @_ZN2v88internal6detail22AsyncWaiterTimeoutTaskINS0_14JSAtomicsMutexEE11RunInternalEv], [5 x ptr] [ptr inttoptr (i64 -32 to ptr), ptr null, ptr @_ZThn32_N2v88internal6detail22AsyncWaiterTimeoutTaskINS0_14JSAtomicsMutexEED1Ev, ptr @_ZThn32_N2v88internal6detail22AsyncWaiterTimeoutTaskINS0_14JSAtomicsMutexEED0Ev, ptr @_ZThn32_N2v88internal14CancelableTask3RunEv] }, comdat, align 8
@_ZTVN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEEE = linkonce_odr hidden unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEED2Ev, ptr @_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEED0Ev, ptr @_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEE6NotifyEv, ptr @_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEE28IsSameIsolateForAsyncCleanupEPNS0_7IsolateE, ptr @_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEE27CleanupMatchingAsyncWaitersERKSt8functionIFbPNS1_15WaiterQueueNodeEEE, ptr @_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEE23SetReadyForAsyncCleanupEv] }, comdat, align 8
@.str.12 = private unnamed_addr constant [139 x i8] c"virtual void v8::internal::detail::AsyncWaiterQueueNode<v8::internal::JSAtomicsCondition>::Notify() [T = v8::internal::JSAtomicsCondition]\00", align 1
@.constant.13 = private unnamed_addr constant %"struct.std::source_location::__impl" { ptr @.str.2, ptr @.str.12, i32 334, i32 19 }, align 8
@_ZTVN2v88internal6detail21AsyncWaiterNotifyTaskINS0_18JSAtomicsConditionEEE = linkonce_odr hidden unnamed_addr constant { [6 x ptr], [5 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal14CancelableTaskD2Ev, ptr @_ZN2v88internal6detail21AsyncWaiterNotifyTaskINS0_18JSAtomicsConditionEED0Ev, ptr @_ZN2v88internal14CancelableTask3RunEv, ptr @_ZN2v88internal6detail21AsyncWaiterNotifyTaskINS0_18JSAtomicsConditionEE11RunInternalEv], [5 x ptr] [ptr inttoptr (i64 -32 to ptr), ptr null, ptr @_ZThn32_N2v88internal6detail21AsyncWaiterNotifyTaskINS0_18JSAtomicsConditionEED1Ev, ptr @_ZThn32_N2v88internal6detail21AsyncWaiterNotifyTaskINS0_18JSAtomicsConditionEED0Ev, ptr @_ZThn32_N2v88internal14CancelableTask3RunEv] }, comdat, align 8
@_ZTVN2v88internal6detail22AsyncWaiterTimeoutTaskINS0_18JSAtomicsConditionEEE = linkonce_odr hidden unnamed_addr constant { [6 x ptr], [5 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal14CancelableTaskD2Ev, ptr @_ZN2v88internal6detail22AsyncWaiterTimeoutTaskINS0_18JSAtomicsConditionEED0Ev, ptr @_ZN2v88internal14CancelableTask3RunEv, ptr @_ZN2v88internal6detail22AsyncWaiterTimeoutTaskINS0_18JSAtomicsConditionEE11RunInternalEv], [5 x ptr] [ptr inttoptr (i64 -32 to ptr), ptr null, ptr @_ZThn32_N2v88internal6detail22AsyncWaiterTimeoutTaskINS0_18JSAtomicsConditionEED1Ev, ptr @_ZThn32_N2v88internal6detail22AsyncWaiterTimeoutTaskINS0_18JSAtomicsConditionEED0Ev, ptr @_ZThn32_N2v88internal14CancelableTask3RunEv] }, comdat, align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal26JSSynchronizationPrimitive13IsolateDeinitEPNS0_7IsolateE(ptr noundef nonnull %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.std::function", align 8     ; 7 uses
  %i.a = ptrtoint ptr %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.d, align 8
  store i64 %i.a, ptr %1, align 8
  store ptr @"_ZNSt17_Function_handlerIFbPN2v88internal6detail15WaiterQueueNodeEEZNS1_26JSSynchronizationPrimitive13IsolateDeinitEPNS1_7IsolateEE3$_0E9_M_invokeERKSt9_Any_dataOS4_", ptr %i.c, align 8
  store ptr @"_ZNSt17_Function_handlerIFbPN2v88internal6detail15WaiterQueueNodeEEZNS1_26JSSynchronizationPrimitive13IsolateDeinitEPNS1_7IsolateEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation", ptr %i.b, align 8
  call void @_ZN2v88internal26JSSynchronizationPrimitive23CleanupAsyncWaiterListsEPNS0_7IsolateESt8functionIFbPNS0_6detail15WaiterQueueNodeEEE(ptr noundef %0, ptr noundef nonnull %1)
  %i.e = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #20, !inline_history !5 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal26JSSynchronizationPrimitive23CleanupAsyncWaiterListsEPNS0_7IsolateESt8functionIFbPNS0_6detail15WaiterQueueNodeEEE(ptr noundef nonnull %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal7Isolate24async_waiter_queue_nodesB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(64320) %0) #20 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, %i.b
  br i1 %i.d, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 5 uses
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8
  %i.l = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.b
  br i1 %i.m, label %._crit_edge.thread, label %.lr.ph
end_hunk_0
begin_hunk_1_@_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEE30RemoveFromAsyncWaiterQueueListEPS4_:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal18JSAtomicsCondition17HandleAsyncNotifyEPNS0_6detail20AsyncWaiterQueueNodeIS1_EE(ptr noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEE30RemoveFromAsyncWaiterQueueListEPS4_(ptr noundef nonnull %0)
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 560 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 568 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 576 ; 4 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 63904
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i32 @_ZN2v88internal21CancelableTaskManager8TryAbortEm(ptr noundef nonnull align 8 dereferenceable(81) %i.p, i64 noundef %i.n) #20 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.s = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEE16GetNativeContextEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.s, align 8
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = add i64 %i.v, 560
  %i.x = inttoptr i64 %i.w to ptr                 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %bb.g, label %_ZN2v89LocalBaseINS_7ContextEE3NewEPNS_7IsolateEm.exit.i, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.r) #20
  br label %_ZN2v89LocalBaseINS_7ContextEE3NewEPNS_7IsolateEm.exit.i

_ZN2v89LocalBaseINS_7ContextEE3NewEPNS_7IsolateEm.exit.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi ptr [ %i.ac, %bb.g ], [ %i.y, %bb.f ] ; 3 uses
  %i.ad = ptrtoint ptr %.0.i.i.i to i64
  %i.ae = add i64 %i.ad, 8
  %i.af = inttoptr i64 %i.ae to ptr
  store ptr %i.af, ptr %i.x, align 8
  store i64 %i.u, ptr %.0.i.i.i, align 8
  br label %_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEE16GetNativeContextEv.exit

_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEE16GetNativeContextEv.exit: ; preds = %bb.e, %_ZN2v89LocalBaseINS_7ContextEE3NewEPNS_7IsolateEm.exit.i
  %.sroa.03.0.i = phi ptr [ %.0.i.i.i, %_ZN2v89LocalBaseINS_7ContextEE3NewEPNS_7IsolateEm.exit.i ], [ null, %bb.e ] ; 2 uses
  tail call void @_ZN2v87Context5EnterEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.03.0.i) #20
  %i.ag = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEE16GetNativeContextEv.exit
  %i.ak = load i64, ptr %i.ai, align 8
  %i.al = ptrtoint ptr %i.ag to i64
  %i.am = add i64 %i.al, 560
  %i.an = inttoptr i64 %i.am to ptr               ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %bb.i, label %_ZN2v89LocalBaseINS_7PromiseEE3NewEPNS_7IsolateEm.exit.i, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.as = tail call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.ag) #20
  br label %_ZN2v89LocalBaseINS_7PromiseEE3NewEPNS_7IsolateEm.exit.i

_ZN2v89LocalBaseINS_7PromiseEE3NewEPNS_7IsolateEm.exit.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i17 = phi ptr [ %i.as, %bb.i ], [ %i.ao, %bb.h ] ; 3 uses
  %i.at = ptrtoint ptr %.0.i.i.i17 to i64
  %i.au = add i64 %i.at, 8
  %i.av = inttoptr i64 %i.au to ptr
  store ptr %i.av, ptr %i.an, align 8
  store i64 %i.ak, ptr %.0.i.i.i17, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZN2v89LocalBaseINS_7PromiseEE3NewEPNS_7IsolateEm.exit.i, %_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEE16GetNativeContextEv.exit
  %.sroa.04.0.i = phi ptr [ %.0.i.i.i17, %_ZN2v89LocalBaseINS_7PromiseEE3NewEPNS_7IsolateEm.exit.i ], [ null, %_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEE16GetNativeContextEv.exit ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 648
  %i.ax = tail call ptr @_ZN2v88internal9JSPromise7ResolveENS0_12DirectHandleIS1_EENS2_INS0_6ObjectEEE(ptr %.sroa.04.0.i, ptr nonnull %i.aw) #20 ; 0 uses
  tail call void @_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEE30RemoveFromAsyncWaiterQueueListEPS4_(ptr noundef nonnull %0)
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_130RemovePromiseFromNativeContextEPNS0_7IsolateENS0_12DirectHandleINS0_9JSPromiseEEE(ptr noundef nonnull %i.b, ptr %.sroa.04.0.i)
  tail call void @_ZN2v87Context4ExitEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.03.0.i) #20
  store ptr %i.g, ptr %i.f, align 8
  %i.ay = load i32, ptr %i.j, align 8
  %i.az = add nsw i32 %i.ay, -1
  store i32 %i.az, ptr %i.j, align 8
  %i.ba = load ptr, ptr %i.h, align 8
  %.not.i = icmp eq ptr %i.ba, %i.i
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.k, !prof !36

bb.k:                                             ; preds = %bb.j
  store ptr %i.i, ptr %i.h, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.b) #20
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.j, %bb.k, %bb.b
  ret void
}

declare void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN2v88internal8ThreadId18GetCurrentThreadIdEv() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #7

declare void @_ZN2v88internal6detail15WaiterQueueNodeC2EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #2

declare void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN2v84base17ConditionVariableC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal6detail19SyncWaiterQueueNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN2v84base17ConditionVariableD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN2v84base5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #20
  tail call void @_ZN2v88internal6detail15WaiterQueueNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(56) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal6detail19SyncWaiterQueueNode6NotifyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN2v84base17ConditionVariable9NotifyOneEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #20
  tail call void @_ZN2v88internal6detail15WaiterQueueNode27SetNotInListForVerificationEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal6detail19SyncWaiterQueueNode28IsSameIsolateForAsyncCleanupEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal6detail19SyncWaiterQueueNode27CleanupMatchingAsyncWaitersERKSt8functionIFbPNS1_15WaiterQueueNodeEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.8) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal6detail19SyncWaiterQueueNode23SetReadyForAsyncCleanupEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.8) #21
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZN2v84base17ConditionVariable9NotifyOneEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal7Isolate22main_thread_local_heapEv(ptr noundef nonnull align 8 dereferenceable(64320)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(80) ptr @_ZN2v88internal4Heap5stackEv(ptr noundef nonnull align 8 dereferenceable(2992)) local_unnamed_addr #2

declare void @_ZN4heap4base5Stack24TrampolineCallbackHelperEPvPFvPS1_S2_PKvE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base5Stack24SetMarkerAndCallbackImplIZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS4_6detail19SyncWaiterQueueNode7WaitForERKNS3_4base9TimeDeltaEEUlvE_EEvT_EUlvE_EEvPS1_PvPKv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.heap::base::Stack::Segment", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  tail call void @_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_6detail19SyncWaiterQueueNode7WaitForERKNS_4base9TimeDeltaEEUlvE_EEvT_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_6detail19SyncWaiterQueueNode7WaitForERKNS_4base9TimeDeltaEEUlvE_EEvT_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %1 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.01.0.copyload = load ptr, ptr %i.b, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 9 ; 2 uses
  %i.g = cmpxchg weak ptr %i.f, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.h = extractvalue { i8, i1 } %i.g, 1
  br i1 %i.h, label %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal9LocalHeap12ParkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.a) #20
  br label %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit

_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 32 ; 3 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #20
  %i.j = tail call i64 @_ZN2v84base9TimeTicks3NowEv() #20
  %i.k = tail call noundef i64 @_ZN2v84base4bits20SignedSaturatedAdd64Ell(i64 noundef %.sroa.2.0.copyload, i64 noundef %i.j) #20 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 48 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !range !14, !noundef !15
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.lr.ph.i, label %_ZZN2v88internal6detail19SyncWaiterQueueNode7WaitForERKNS_4base9TimeDeltaEENKUlvE_clEv.exit

.lr.ph.i:                                         ; preds = %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 40
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %i.p = call i64 @_ZN2v84base9TimeTicks3NowEv() #20 ; 2 uses
  %.not.i = icmp slt i64 %i.p, %i.k
  br i1 %.not.i, label %bb.d, label %_ZZN2v88internal6detail19SyncWaiterQueueNode7WaitForERKNS_4base9TimeDeltaEENKUlvE_clEv.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.q = sub nsw i64 %i.k, %i.p
  store i64 %i.q, ptr %1, align 8
  %i.r = call noundef zeroext i1 @_ZN2v84base17ConditionVariable7WaitForEPNS0_5MutexERKNS0_9TimeDeltaE(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(8) %1) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.s = load i8, ptr %i.l, align 8, !range !14, !noundef !15
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %_ZZN2v88internal6detail19SyncWaiterQueueNode7WaitForERKNS_4base9TimeDeltaEENKUlvE_clEv.exit, !llvm.loop !67

_ZZN2v88internal6detail19SyncWaiterQueueNode7WaitForERKNS_4base9TimeDeltaEENKUlvE_clEv.exit: ; preds = %bb.c, %bb.d, %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit
  %.sink.i = phi i8 [ 1, %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit ], [ 0, %bb.c ], [ 1, %bb.d ]
  store i8 %.sink.i, ptr %.sroa.3.0.copyload, align 1
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #20
  %i.u = load i32, ptr %i.c, align 4
  %i.v = add nsw i32 %i.u, -1
  store i32 %i.v, ptr %i.c, align 4
  %i.w = cmpxchg weak ptr %i.f, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.x = extractvalue { i8, i1 } %i.w, 1
  br i1 %i.x, label %_ZN2v88internal11ParkedScopeD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZZN2v88internal6detail19SyncWaiterQueueNode7WaitForERKNS_4base9TimeDeltaEENKUlvE_clEv.exit
  call void @_ZN2v88internal9LocalHeap14UnparkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.a) #20
  br label %_ZN2v88internal11ParkedScopeD2Ev.exit

_ZN2v88internal11ParkedScopeD2Ev.exit:            ; preds = %_ZZN2v88internal6detail19SyncWaiterQueueNode7WaitForERKNS_4base9TimeDeltaEENKUlvE_clEv.exit, %bb.e
  ret void
}

declare void @_ZN2v88internal9LocalHeap12ParkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944)) local_unnamed_addr #2

declare i64 @_ZN2v84base9TimeTicks3NowEv() local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v84base17ConditionVariable7WaitForEPNS0_5MutexERKNS0_9TimeDeltaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef i64 @_ZN2v84base4bits20SignedSaturatedAdd64Ell(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN2v88internal9LocalHeap14UnparkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base5Stack43SetMarkerForBackgroundThreadAndCallbackImplIZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS4_6detail19SyncWaiterQueueNode7WaitForERKNS3_4base9TimeDeltaEEUlvE_EEvT_EUlvE_EEvPS1_PvPKv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::pair", align 8        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #20
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
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %bb.b, !llvm.loop !68

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
  %i.p = tail call i64 @_ZN2v84base5Stack13GetStackStartEv() #20
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 2 uses
  store ptr %i.q, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #20
  %i.s = load ptr, ptr %i.a, align 8
  call void @_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_6detail19SyncWaiterQueueNode7WaitForERKNS_4base9TimeDeltaEEUlvE_EEvT_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(32) %i.s)
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #20
  %.not = icmp eq ptr %.sroa.5.0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
  %i.t = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 2 uses
  store ptr %.sroa.023.0, ptr %i.t, align 8
  %.sroa.5.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx25, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit16

bb.e:                                             ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
  %i.u = call noundef i64 @_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE5eraseERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 0 uses
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit16

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit16:    ; preds = %bb.e, %bb.d
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

declare i64 @_ZN2v84base5Stack13GetStackStartEv() local_unnamed_addr #2

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
  br i1 %.not.i.i.i, label %_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !68

_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load i32, ptr %i.h, align 4
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_:bb.a
.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = icmp slt i32 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8     ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !69

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #24 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i32 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp slt i32 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE5eraseERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %.041.i = load ptr, ptr %i.a, align 8           ; 3 uses
  %.not42.i = icmp eq ptr %.041.i, null
  br i1 %.not42.i, label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE11equal_rangeERS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4                ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %.044.i = phi ptr [ %.041.i, %.lr.ph.i ], [ %.0.i, %bb.e ] ; 7 uses
  %.02243.i = phi ptr [ %i.b, %.lr.ph.i ], [ %.123.i, %bb.e ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.044.i, i64 32
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp slt i32 %i.e, %i.c
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i32 %i.c, %i.e
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.044.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.044.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not10.i.i = icmp eq ptr %i.i, null
  br i1 %.not10.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %.1.i.i, %.lr.ph.i.i ], [ %i.i, %bb.d ] ; 3 uses
  %.0811.i.i = phi ptr [ %.19.i.i, %.lr.ph.i.i ], [ %.044.i, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 32
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp slt i32 %i.m, %i.c                  ; 2 uses
  %.19.i.i = select i1 %i.n, ptr %.0811.i.i, ptr %.012.i.i ; 2 uses
  %.1.in.v.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 %.1.in.v.i.i
  %.1.i.i = load ptr, ptr %.1.in.i.i, align 8     ; 2 uses
  %.not.i.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i, label %.lr.ph.i.i, !llvm.loop !68

_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i: ; preds = %.lr.ph.i.i, %bb.d
  %.08.lcssa.i.i = phi ptr [ %.044.i, %bb.d ], [ %.19.i.i, %.lr.ph.i.i ] ; 2 uses
  %.not10.i24.i = icmp eq ptr %i.k, null
  br i1 %.not10.i24.i, label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE11equal_rangeERS1_.exit, label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i, %.lr.ph.i25.i
  %.012.i26.i = phi ptr [ %.1.i31.i, %.lr.ph.i25.i ], [ %i.k, %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i ] ; 3 uses
  %.0811.i27.i = phi ptr [ %.19.i28.i, %.lr.ph.i25.i ], [ %.02243.i, %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i26.i, i64 32
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp slt i32 %i.c, %i.p                  ; 2 uses
  %.19.i28.i = select i1 %i.q, ptr %.012.i26.i, ptr %.0811.i27.i ; 2 uses
  %.1.in.v.i29.i = select i1 %i.q, i64 16, i64 24
  %.1.in.i30.i = getelementptr inbounds nuw i8, ptr %.012.i26.i, i64 %.1.in.v.i29.i
  %.1.i31.i = load ptr, ptr %.1.in.i30.i, align 8 ; 2 uses
  %.not.i32.i = icmp eq ptr %.1.i31.i, null
  br i1 %.not.i32.i, label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE11equal_rangeERS1_.exit, label %.lr.ph.i25.i, !llvm.loop !70

bb.e:                                             ; preds = %bb.c, %bb.b
  %.sink.i = phi i64 [ 24, %bb.b ], [ 16, %bb.c ]
  %.123.i = phi ptr [ %.02243.i, %bb.b ], [ %.044.i, %bb.c ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.044.i, i64 %.sink.i
  %.0.i = load ptr, ptr %i.r, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE11equal_rangeERS1_.exit, label %bb.b, !llvm.loop !71

_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE11equal_rangeERS1_.exit: ; preds = %bb.e, %.lr.ph.i25.i, %bb.a, %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i
  %.sroa.037.0.i = phi ptr [ %.08.lcssa.i.i, %.lr.ph.i25.i ], [ %.08.lcssa.i.i, %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i ], [ %i.b, %bb.a ], [ %.123.i, %bb.e ] ; 3 uses
  %.sroa.3.0.i = phi ptr [ %.19.i28.i, %.lr.ph.i25.i ], [ %.02243.i, %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i ], [ %i.b, %bb.a ], [ %.123.i, %bb.e ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %.sroa.037.0.i, %i.v
  %i.x = icmp eq ptr %.sroa.3.0.i, %i.b
  %or.cond = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE11equal_rangeERS1_.exit
  tail call void @_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %.041.i)
  store ptr null, ptr %i.a, align 8
  store ptr %i.b, ptr %i.u, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %i.y, align 8
  store i64 0, ptr %i.s, align 8
  br label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS6_ESE_.exit

.critedge.i:                                      ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE11equal_rangeERS1_.exit
  %i.z = icmp eq ptr %.sroa.037.0.i, %.sroa.3.0.i
  br i1 %i.z, label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS6_ESE_.exit, label %.lr.ph.i2

.lr.ph.i2:                                        ; preds = %.critedge.i, %.lr.ph.i2
  %.sroa.06.08.i = phi ptr [ %i.aa, %.lr.ph.i2 ], [ %.sroa.037.0.i, %.critedge.i ] ; 2 uses
  %i.aa = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.08.i) #24 ; 2 uses
  %i.ab = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.08.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 56) #22
  %i.ac = load i64, ptr %i.s, align 8
  %i.ad = add i64 %i.ac, -1                       ; 2 uses
  store i64 %i.ad, ptr %i.s, align 8
  %i.ae = icmp eq ptr %i.aa, %.sroa.3.0.i
  br i1 %i.ae, label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS6_ESE_.exit, label %.lr.ph.i2, !llvm.loop !72

_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS6_ESE_.exit: ; preds = %.lr.ph.i2, %bb.f, %.critedge.i
  %i.af = phi i64 [ %i.t, %.critedge.i ], [ 0, %bb.f ], [ %i.ad, %.lr.ph.i2 ]
  %i.ag = sub i64 %i.t, %i.af
  ret i64 %i.ag
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 56) #22
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !73

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base5Stack24SetMarkerAndCallbackImplIZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS4_6detail19SyncWaiterQueueNode4WaitEvEUlvE_EEvT_EUlvE_EEvPS1_PvPKv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.heap::base::Stack::Segment", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = load ptr, ptr %1, align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 9 ; 2 uses
  %i.h = cmpxchg weak ptr %i.g, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.i = extractvalue { i8, i1 } %i.h, 1
  br i1 %i.i, label %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal9LocalHeap12ParkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.b) #20
  br label %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i

_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i: ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32 ; 3 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #20
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 48 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !range !14, !noundef !15
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.lr.ph.i.i, label %_ZZN2v88internal6detail19SyncWaiterQueueNode4WaitEvENKUlvE_clEv.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  tail call void @_ZN2v84base17ConditionVariable4WaitEPNS0_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.j) #20
  %i.o = load i8, ptr %i.k, align 8, !range !14, !noundef !15
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %_ZZN2v88internal6detail19SyncWaiterQueueNode4WaitEvENKUlvE_clEv.exit.i, !llvm.loop !74

_ZZN2v88internal6detail19SyncWaiterQueueNode4WaitEvENKUlvE_clEv.exit.i: ; preds = %bb.c, %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #20
  %i.q = load i32, ptr %i.d, align 4
  %i.r = add nsw i32 %i.q, -1
  store i32 %i.r, ptr %i.d, align 4
  %i.s = cmpxchg weak ptr %i.g, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.t = extractvalue { i8, i1 } %i.s, 1
  br i1 %i.t, label %_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_6detail19SyncWaiterQueueNode4WaitEvEUlvE_EEvT_ENKUlvE_clEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZZN2v88internal6detail19SyncWaiterQueueNode4WaitEvENKUlvE_clEv.exit.i
  tail call void @_ZN2v88internal9LocalHeap14UnparkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.b) #20
  br label %_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_6detail19SyncWaiterQueueNode4WaitEvEUlvE_EEvT_ENKUlvE_clEv.exit

_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_6detail19SyncWaiterQueueNode4WaitEvEUlvE_EEvT_ENKUlvE_clEv.exit: ; preds = %_ZZN2v88internal6detail19SyncWaiterQueueNode4WaitEvENKUlvE_clEv.exit.i, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

declare void @_ZN2v84base17ConditionVariable4WaitEPNS0_5MutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base5Stack43SetMarkerForBackgroundThreadAndCallbackImplIZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS4_6detail19SyncWaiterQueueNode4WaitEvEUlvE_EEvT_EUlvE_EEvPS1_PvPKv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::pair.696", align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #20
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
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %bb.b, !llvm.loop !68

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
  %i.p = tail call i64 @_ZN2v84base5Stack13GetStackStartEv() #20
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 2 uses
  store ptr %i.q, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #20
  %i.s = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.u, align 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 12 ; 4 uses
  %i.w = load i32, ptr %i.v, align 4
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 9 ; 2 uses
  %i.z = cmpxchg weak ptr %i.y, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.aa = extractvalue { i8, i1 } %i.z, 1
  br i1 %i.aa, label %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
  call void @_ZN2v88internal9LocalHeap12ParkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.t) #20
  br label %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i

_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i: ; preds = %bb.d, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32 ; 3 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) #20
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 48 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !range !14, !noundef !15
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %.lr.ph.i.i, label %_ZZN2v88internal6detail19SyncWaiterQueueNode4WaitEvENKUlvE_clEv.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i
  call void @_ZN2v84base17ConditionVariable4WaitEPNS0_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %i.ab) #20
  %i.ag = load i8, ptr %i.ac, align 8, !range !14, !noundef !15
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.e, label %_ZZN2v88internal6detail19SyncWaiterQueueNode4WaitEvENKUlvE_clEv.exit.i, !llvm.loop !74

_ZZN2v88internal6detail19SyncWaiterQueueNode4WaitEvENKUlvE_clEv.exit.i: ; preds = %bb.e, %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) #20
  %i.ai = load i32, ptr %i.v, align 4
  %i.aj = add nsw i32 %i.ai, -1
  store i32 %i.aj, ptr %i.v, align 4
  %i.ak = cmpxchg weak ptr %i.y, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.al = extractvalue { i8, i1 } %i.ak, 1
  br i1 %i.al, label %_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_6detail19SyncWaiterQueueNode4WaitEvEUlvE_EEvT_ENKUlvE_clEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZZN2v88internal6detail19SyncWaiterQueueNode4WaitEvENKUlvE_clEv.exit.i
  call void @_ZN2v88internal9LocalHeap14UnparkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.t) #20
  br label %_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_6detail19SyncWaiterQueueNode4WaitEvEUlvE_EEvT_ENKUlvE_clEv.exit

_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_6detail19SyncWaiterQueueNode4WaitEvEUlvE_EEvT_ENKUlvE_clEv.exit: ; preds = %_ZZN2v88internal6detail19SyncWaiterQueueNode4WaitEvENKUlvE_clEv.exit.i, %bb.f
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #20
  %.not = icmp eq ptr %.sroa.5.0, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_6detail19SyncWaiterQueueNode4WaitEvEUlvE_EEvT_ENKUlvE_clEv.exit
  %i.am = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 2 uses
  store ptr %.sroa.023.0, ptr %i.am, align 8
  %.sroa.5.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx25, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit16

bb.h:                                             ; preds = %_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_6detail19SyncWaiterQueueNode4WaitEvEUlvE_EEvT_ENKUlvE_clEv.exit
  %i.an = call noundef i64 @_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE5eraseERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 0 uses
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit16

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit16:    ; preds = %bb.h, %bb.g
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2v84base17ConditionVariableD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZN2v84base5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZN2v88internal6detail15WaiterQueueNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #11

declare ptr @_ZN2v88internal9Execution11CallBuiltinEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS4_INS0_6ObjectEEENS_4base6VectorIKS8_EE(ptr noundef, ptr, ptr, ptr, i64) local_unnamed_addr #2

declare void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64, i64 noundef, i64) local_unnamed_addr #2

declare void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64, i64, i64) local_unnamed_addr #2

declare ptr @_ZN2v88internal14OrderedHashSet3AddINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS5_9MaybeTypeEPNS0_7IsolateES5_NS6_INS0_6ObjectEEE(ptr noundef, ptr, ptr) local_unnamed_addr #2

declare void @_ZN2v87Context5EnterEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE6DeleteEPNS0_7IsolateENS0_6TaggedIS2_EENS6_INS0_6ObjectEEE(ptr noundef, i64, i64) local_unnamed_addr #2

declare ptr @_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE6ShrinkINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS7_EEEEET_IS2_EPNS0_7IsolateESC_(ptr noundef, ptr) local_unnamed_addr #2

declare void @_ZN2v87Context4ExitEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbPN2v88internal6detail15WaiterQueueNodeEEZNS1_26JSSynchronizationPrimitive13IsolateDeinitEPNS1_7IsolateEE3$_0E9_M_invokeERKSt9_Any_dataOS4_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %.val2 = load ptr, ptr %1, align 8              ; 2 uses
  %i.a = load ptr, ptr %.val2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %.val2, ptr noundef %.val) #20, !inline_history !75
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbPN2v88internal6detail15WaiterQueueNodeEEZNS1_26JSSynchronizationPrimitive13IsolateDeinitEPNS1_7IsolateEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #12 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal26JSSynchronizationPrimitive13IsolateDeinitEPNS2_7IsolateEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal26JSSynchronizationPrimitive13IsolateDeinitEPNS2_7IsolateEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal26JSSynchronizationPrimitive13IsolateDeinitEPNS2_7IsolateEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal26JSSynchronizationPrimitive13IsolateDeinitEPNS2_7IsolateEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2v88internal26JSSynchronizationPrimitive13IsolateDeinitEPNS2_7IsolateEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #7
end_hunk_2
