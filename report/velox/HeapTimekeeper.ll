inline.NumInlined: 1026
inline.NumDeleted: 617
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.folly::c_array" = type { [43 x i8] }
%"struct.folly::detail::make_exception_ptr_with_arg_" = type { i64, ptr, ptr, ptr }
%"class.folly::ParkingLot" = type { i64 }
%"class.folly::AtomicStruct" = type { %"struct.std::atomic.19" }
%"struct.std::atomic.19" = type { %"struct.std::__atomic_base.20" }
%"struct.std::__atomic_base.20" = type { i64 }
%"class.folly::SemiFuture" = type { %"class.folly::futures::detail::FutureBase" }
%"class.folly::futures::detail::FutureBase" = type { ptr }
%"struct.std::pair" = type { %"class.std::unique_ptr", %"class.folly::SemiFuture" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.2" }
%"struct.std::_Head_base.2" = type { ptr }
%"struct.folly::SemiPromiseContract" = type { %"class.folly::Promise", %"class.folly::SemiFuture" }
%"class.folly::Promise" = type { i8, ptr }
%"class.std::bad_function_call" = type { %"class.std::exception" }
%"class.std::exception" = type { ptr }
%"class.folly::PromiseInvalid" = type { %"class.folly::PromiseException" }
%"class.folly::PromiseException" = type { %"class.std::logic_error" }
%"class.std::logic_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"struct.std::__cow_string" = type { %union.anon.21 }
%union.anon.21 = type { ptr }
%"class.std::unique_ptr.8" = type { %"struct.std::__uniq_ptr_data.9" }
%"struct.std::__uniq_ptr_data.9" = type { %"class.std::__uniq_ptr_impl.10" }
%"class.std::__uniq_ptr_impl.10" = type { %"class.std::tuple.11" }
%"class.std::tuple.11" = type { %"struct.std::_Tuple_impl.12" }
%"struct.std::_Tuple_impl.12" = type { %"struct.std::_Head_base.15" }
%"struct.std::_Head_base.15" = type { ptr }
%"class.folly::ExecutorKeepAlive" = type { i64 }
%class.anon = type { ptr }
%"class.folly::Try" = type { %"class.folly::detail::TryBase" }
%"class.folly::detail::TryBase" = type { i32, %union.anon.5 }
%union.anon.5 = type { %"class.folly::exception_wrapper" }
%"class.folly::exception_wrapper" = type { %"class.std::__exception_ptr::exception_ptr" }
%"class.std::__exception_ptr::exception_ptr" = type { ptr }
%"class.folly::BrokenPromise" = type { %"class.folly::PromiseException", ptr }
%class.anon.35 = type { %"class.std::unique_ptr", %"class.std::shared_ptr" }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%class.anon.49 = type { i8 }
%"class.folly::detail::distributed_mutex::Waiter" = type { %"struct.std::array", %"struct.std::atomic.19", %"struct.std::atomic.19", %union.anon.41, %"struct.std::array" }
%union.anon.41 = type { %"class.folly::detail::InlineFunctionRef" }
%"class.folly::detail::InlineFunctionRef" = type { ptr, %"union.std::aligned_storage<40, 8>::type" }
%"union.std::aligned_storage<40, 8>::type" = type { [40 x i8] }
%"struct.std::array" = type { [64 x i8] }
%class.anon.36 = type { ptr, ptr, ptr, ptr }
%"class.folly::detail::distributed_mutex::DistributedMutex<>::DistributedMutexStateProxy" = type { ptr, i64, i8, i8, i64, ptr, ptr }
%"class.folly::detail::ScopeGuardImpl" = type { %"class.folly::detail::ScopeGuardImplBase", %class.anon.40 }
%"class.folly::detail::ScopeGuardImplBase" = type { i8 }
%class.anon.40 = type { ptr, ptr }
%"struct.folly::HeapTimekeeper::State::Op" = type { i32, %"class.std::unique_ptr" }
%"class.folly::PromiseAlreadySatisfied" = type { %"class.folly::PromiseException" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<folly::HeapTimekeeper::State::Op, std::allocator<folly::HeapTimekeeper::State::Op>>::_Vector_impl" }
%"struct.std::_Vector_base<folly::HeapTimekeeper::State::Op, std::allocator<folly::HeapTimekeeper::State::Op>>::_Vector_impl" = type { %"struct.std::_Vector_base<folly::HeapTimekeeper::State::Op, std::allocator<folly::HeapTimekeeper::State::Op>>::_Vector_impl_data" }
%"struct.std::_Vector_base<folly::HeapTimekeeper::State::Op, std::allocator<folly::HeapTimekeeper::State::Op>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.google::LogMessageFatal" = type { %"class.google::LogMessage" }
%"class.google::LogMessage" = type { ptr, ptr, %"struct.google::LogMessageTime" }
%"struct.google::LogMessageTime" = type { %struct.tm, i64, i32, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%struct.timespec = type { i64, i64 }
%class.anon.87 = type { ptr }
%"class.std::chrono::time_point" = type { %"class.std::chrono::duration.0" }
%"class.std::chrono::duration.0" = type { i64 }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload.base", [3 x i8] }
%"struct.std::_Optional_payload.base" = type { %"struct.std::_Optional_payload_base.base" }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<folly::SaturatingSemaphore<>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<folly::SaturatingSemaphore<>>::_Storage" = type { %"class.folly::SaturatingSemaphore" }
%"class.folly::SaturatingSemaphore" = type { %"struct.std::atomic.37" }
%"struct.std::atomic.37" = type { %"struct.std::__atomic_base.38" }
%"struct.std::__atomic_base.38" = type { i32 }
%"class.folly::WaitOptions" = type <{ %"class.std::chrono::duration.0", i8, [7 x i8] }>
%"class.folly::FutureNoTimekeeper" = type { %"class.folly::FutureException" }
%"class.folly::FutureException" = type { %"class.std::logic_error" }
%"class.std::unique_ptr.95" = type { %"struct.std::__uniq_ptr_data.96" }
%"struct.std::__uniq_ptr_data.96" = type { %"class.std::__uniq_ptr_impl.97" }
%"class.std::__uniq_ptr_impl.97" = type { %"class.std::tuple.98" }
%"class.std::tuple.98" = type { %"struct.std::_Tuple_impl.99" }
%"struct.std::_Tuple_impl.99" = type { %"struct.std::_Head_base.102" }
%"struct.std::_Head_base.102" = type { ptr }
%"class.std::thread" = type { %"class.std::thread::id" }
%"class.std::thread::id" = type { i64 }
%"struct.google::CheckOpString" = type { ptr }
%"class.google::base::CheckOpMessageBuilder" = type { ptr }

$_ZN5folly7PromiseINS_4UnitEED2Ev = comdat any

$_ZNSt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS2_6DecRefEED2Ev = comdat any

$_ZN5folly19SemiPromiseContractINS_4UnitEED2Ev = comdat any

$_ZN5folly7futures6detail4CoreINS_4UnitEED2Ev = comdat any

$_ZN5folly7futures6detail4CoreINS_4UnitEED0Ev = comdat any

$_ZN5folly6detail8function14FunctionTraitsIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEE10uninitCallES6_SA_SC_RNS1_4DataE = comdat any

$_ZN5folly6detail16throw_exception_ISt17bad_function_callJEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionISt17bad_function_callEEvOT_ = comdat any

$__clang_call_terminate = comdat any

$_ZN5folly6detail16throw_exception_INS_14PromiseInvalidEJEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionINS_14PromiseInvalidEEEvOT_ = comdat any

$_ZN5folly14PromiseInvalidC2EOS0_ = comdat any

$_ZN5folly14PromiseInvalidD0Ev = comdat any

$_ZNK5folly14PromiseInvalid4whatEv = comdat any

$_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE = comdat any

$_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev = comdat any

$_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultINS_4UnitEEEvRNS1_4CoreIT_EE = comdat any

$_ZN5folly13BrokenPromiseD0Ev = comdat any

$_ZNK5folly13BrokenPromise4whatEv = comdat any

$_ZN5folly6detail28make_exception_ptr_with_arg_4makeIZNKS_26make_exception_ptr_with_fn4makeINS_13BrokenPromiseEJOS5_EEEDaDpOT0_EUlvE_S5_EEvPvSB_ = comdat any

$_ZN5folly6detail28make_exception_ptr_with_arg_5dtor_INS_13BrokenPromiseEEEvPv = comdat any

$_ZN5folly6detail15terminate_with_ISt11logic_errorJPKcEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionISt11logic_errorEEvOT_ = comdat any

$_ZNSt12__shared_ptrIN5folly14HeapTimekeeper5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN5folly7PromiseINS_4UnitEE6setTryEONS_3TryIS1_EE = comdat any

$_ZN5folly6detail16throw_exception_INS_23PromiseAlreadySatisfiedEJEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionINS_23PromiseAlreadySatisfiedEEEvOT_ = comdat any

$_ZN5folly23PromiseAlreadySatisfiedC2EOS0_ = comdat any

$_ZN5folly23PromiseAlreadySatisfiedD0Ev = comdat any

$_ZNK5folly23PromiseAlreadySatisfied4whatEv = comdat any

$_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EED2Ev = comdat any

$_ZN5folly14HeapTimekeeper5State2OpD2Ev = comdat any

$_ZN5folly6detail17distributed_mutex4spinINS1_6WaiterISt6atomicEEEEbRT_Rjj = comdat any

$_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

$_ZN5folly10ParkingLotIjE6unparkIPKSt6atomicImEZNS_6detail19atomic_notification22atomic_notify_one_implITtTpTyES3_mJEEEvPKT_IJT0_DpT1_EEEUlRKT_E_EEvSH_OSB_ = comdat any

$_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE22postSlowWaiterMayBlockEj = comdat any

$_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowINSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS4_10time_pointIT_T0_EERKNS_11WaitOptionsE = comdat any

$_ZN5folly6detail11MemoryIdler16futexWaitPreIdleISt6atomicIjENSt6chrono10time_pointINS5_3_V212steady_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEESC_EEbRNS0_11FutexResultERT_jRKT0_jT1_mf = comdat any

$_ZN5folly18FutureNoTimekeeperD0Ev = comdat any

$_ZNK5folly18FutureNoTimekeeper4whatEv = comdat any

$_ZN5folly6detail28make_exception_ptr_with_arg_4makeIZNKS_26make_exception_ptr_with_fn4makeINS_18FutureNoTimekeeperEJOS5_EEEDaDpOT0_EUlvE_S5_EEvPvSB_ = comdat any

$_ZN5folly6detail28make_exception_ptr_with_arg_5dtor_INS_18FutureNoTimekeeperEEEvPv = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5folly14HeapTimekeeper5StateESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5folly14HeapTimekeeper5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5folly14HeapTimekeeper5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5folly14HeapTimekeeper5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZN5folly14HeapTimekeeper5StateD2Ev = comdat any

$_ZN6google17MakeCheckOpStringImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc = comdat any

$_ZNSt6thread24_M_thread_deps_never_runEv = comdat any

$_ZNSt4pairISt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS3_6DecRefEENS1_10SemiFutureINS1_4UnitEEEED2Ev = comdat any

$_ZTIN5folly10TimekeeperE = comdat any

$_ZTSN5folly10TimekeeperE = comdat any

$_ZTVN5folly7futures6detail4CoreINS_4UnitEEE = comdat any

$_ZTIN5folly7futures6detail4CoreINS_4UnitEEE = comdat any

$_ZTSN5folly7futures6detail4CoreINS_4UnitEEE = comdat any

$_ZTIN5folly7futures6detail12ResultHolderINS_4UnitEEE = comdat any

$_ZTSN5folly7futures6detail12ResultHolderINS_4UnitEEE = comdat any

$_ZTIN5folly16PromiseExceptionE = comdat any

$_ZTSN5folly16PromiseExceptionE = comdat any

$_ZTIN5folly14PromiseInvalidE = comdat any

$_ZTSN5folly14PromiseInvalidE = comdat any

$_ZTVN5folly14PromiseInvalidE = comdat any

$_ZTVN5folly13BrokenPromiseE = comdat any

$_ZN5folly13BrokenPromise13error_messageINS_4UnitEEE = comdat any

$_ZTIN5folly13BrokenPromiseE = comdat any

$_ZTSN5folly13BrokenPromiseE = comdat any

$_ZZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeINS_13BrokenPromiseEJOS3_EEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrES9_E3arg = comdat any

$_ZTIN5folly23PromiseAlreadySatisfiedE = comdat any

$_ZTSN5folly23PromiseAlreadySatisfiedE = comdat any

$_ZTVN5folly23PromiseAlreadySatisfiedE = comdat any

$_ZTVN5folly18FutureNoTimekeeperE = comdat any

$_ZTIN5folly18FutureNoTimekeeperE = comdat any

$_ZTSN5folly18FutureNoTimekeeperE = comdat any

$_ZTIN5folly15FutureExceptionE = comdat any

$_ZTSN5folly15FutureExceptionE = comdat any

$_ZZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeINS_18FutureNoTimekeeperEJOS3_EEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrES9_E3arg = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN5folly14HeapTimekeeper5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN5folly14HeapTimekeeper5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN5folly14HeapTimekeeper5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any
end_hunk_0
begin_hunk_1_@_ZN5folly14HeapTimekeeperD0Ev:bb.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly14HeapTimekeeper5afterENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.folly::SemiFuture") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair", align 8        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #18
  %i.b = mul nsw i64 %2, 1000
  %i.c = add nsw i64 %i.a, %i.b
  call void @_ZN5folly14HeapTimekeeper7Timeout6createERS0_NSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11
  invoke void @_ZN5folly14HeapTimekeeper5State7enqueueENS1_2Op4TypeEOSt10unique_ptrINS0_7TimeoutENS5_6DecRefEE(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit.i unwind label %bb.h

_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit.i:      ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  store ptr %i.g, ptr %0, align 8, !tbaa !17
  store ptr null, ptr %i.f, align 8, !tbaa !17
  %i.h = load ptr, ptr %3, align 8, !tbaa !20     ; 5 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt4pairISt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS3_6DecRefEENS1_10SemiFutureINS1_4UnitEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = atomicrmw sub ptr %i.i, i8 1 acq_rel, align 1
  %.not.i.i.i1.i = icmp eq i8 %i.j, 1
  br i1 %.not.i.i.i1.i, label %bb.c, label %_ZNSt4pairISt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS3_6DecRefEENS1_10SemiFutureINS1_4UnitEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22   ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.n = load i8, ptr %i.m, align 8, !tbaa !25, !range !26, !noundef !27
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.l) #18
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = phi ptr [ %.pre.i.i.i.i.i.i.i, %bb.e ], [ %i.l, %bb.d ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultINS_4UnitEEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.p)
          to label %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #27
  unreachable

_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i.i.i: ; preds = %bb.f, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 noundef 56) #26
  br label %_ZNSt4pairISt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS3_6DecRefEENS1_10SemiFutureINS1_4UnitEEEED2Ev.exit

_ZNSt4pairISt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS3_6DecRefEENS1_10SemiFutureINS1_4UnitEEEED2Ev.exit: ; preds = %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit.i, %bb.b, %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.h:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairISt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS3_6DecRefEENS1_10SemiFutureINS1_4UnitEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly14HeapTimekeeper6workerEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  tail call void @_ZN5folly14HeapTimekeeper5State6workerEv(ptr noundef nonnull align 8 dereferenceable(64) %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly14HeapTimekeeper7Timeout6createERS0_NSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEE(ptr dead_on_unwind noalias writable writeonly sret(%"struct.std::pair") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.folly::SemiPromiseContract", align 8 ; 8 uses
  %4 = alloca %"class.folly::Promise", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #28, !noalias !28 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.b, align 16, !tbaa !31, !noalias !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEE10uninitCallES6_SA_SC_RNS1_4DataE, ptr %i.c, align 16, !tbaa !32, !noalias !28
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr null, ptr %i.d, align 8, !tbaa !34, !noalias !28
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i8 1, ptr %i.e, align 16, !tbaa !35, !noalias !28
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 81
  store i8 2, ptr %i.f, align 1, !tbaa !38, !noalias !28
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 82
  store i8 0, ptr %i.g, align 2, !tbaa !38, !noalias !28
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i32 0, ptr %i.h, align 8, !tbaa !40, !noalias !28
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.i, i8 0, i64 32, i1 false), !noalias !28
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly7futures6detail4CoreINS_4UnitEEE, i64 16), ptr %i.a, align 16, !tbaa !43, !noalias !28
  store i8 1, ptr %3, align 8, !tbaa !25, !alias.scope !28
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.a, ptr %i.j, align 8, !tbaa !22, !alias.scope !28
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.a, ptr %i.k, align 8, !tbaa !17, !alias.scope !28
  %i.l = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %bb.b unwind label %bb.i       ; 3 uses

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %3, align 8, !tbaa !45
  store i8 1, ptr %4, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr null, ptr %i.j, align 8, !tbaa !46
  store ptr %i.a, ptr %i.m, align 8, !tbaa !22
  invoke void @_ZN5folly14HeapTimekeeper7TimeoutC1ERS0_NSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEENS_7PromiseINS_4UnitEEE(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %2, ptr noundef nonnull %4)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22   ; 3 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS2_6DecRefEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i8, ptr %4, align 8, !tbaa !25, !range !26, !noundef !27
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.n) #18
  %.pre.i.i = load ptr, ptr %i.m, align 8, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %.pre.i.i, %bb.e ], [ %i.n, %bb.d ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultINS_4UnitEEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.q)
          to label %_ZNSt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS2_6DecRefEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #27
  unreachable

_ZNSt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS2_6DecRefEED2Ev.exit: ; preds = %bb.f, %bb.c
  %i.t = ptrtoint ptr %i.l to i64
  store i64 %i.t, ptr %0, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.u, align 8, !tbaa !17
  invoke void @_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE(ptr noundef null)
          to label %_ZN5folly19SemiPromiseContractINS_4UnitEED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS2_6DecRefEED2Ev.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #27
  unreachable

_ZN5folly19SemiPromiseContractINS_4UnitEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS2_6DecRefEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.i:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly7PromiseINS_4UnitEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 56) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.y, %bb.j ], [ %i.x, %bb.i ]
  call void @_ZN5folly19SemiPromiseContractINS_4UnitEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly7PromiseINS_4UnitEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5folly7PromiseINS_4UnitEE6detachEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 8, !tbaa !25, !range !26, !noundef !27
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.b) #18
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = phi ptr [ %.pre.i, %bb.c ], [ %i.b, %bb.b ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultINS_4UnitEEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.e)
          to label %_ZN5folly7PromiseINS_4UnitEE6detachEv.exit unwind label %bb.e

_ZN5folly7PromiseINS_4UnitEE6detachEv.exit:       ; preds = %bb.d, %bb.a
  ret void

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #27
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS2_6DecRefEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNK5folly14HeapTimekeeper7Timeout6DecRefclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = atomicrmw sub ptr %i.b, i8 1 acq_rel, align 1
  %.not.i.i = icmp eq i8 %i.c, 1
  br i1 %.not.i.i, label %bb.c, label %_ZNK5folly14HeapTimekeeper7Timeout6DecRefclEPS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = load i8, ptr %i.f, align 8, !tbaa !25, !range !26, !noundef !27
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.e) #18
  %.pre.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = phi ptr [ %.pre.i.i.i.i.i, %bb.e ], [ %i.e, %bb.d ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultINS_4UnitEEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.i)
          to label %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #27
  unreachable

_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i:   ; preds = %bb.f, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef 56) #26
  br label %_ZNK5folly14HeapTimekeeper7Timeout6DecRefclEPS1_.exit

_ZNK5folly14HeapTimekeeper7Timeout6DecRefclEPS1_.exit: ; preds = %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly19SemiPromiseContractINS_4UnitEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  invoke void @_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE(ptr noundef %i.b)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.c) #18
  br label %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #27
  unreachable

_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit:        ; preds = %bb.b, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22   ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5folly7PromiseINS_4UnitEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit
  %i.h = load i8, ptr %0, align 8, !tbaa !25, !range !26, !noundef !27
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.g) #18
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = phi ptr [ %.pre.i.i, %bb.f ], [ %i.g, %bb.e ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultINS_4UnitEEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.j)
          to label %_ZN5folly7PromiseINS_4UnitEED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #27
  unreachable

_ZN5folly7PromiseINS_4UnitEED2Ev.exit:            ; preds = %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly7futures6detail4CoreINS_4UnitEED2Ev(ptr noundef nonnull align 16 dereferenceable(160) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5folly7futures6detail8CoreBase14destroyDerivedEv(ptr noundef nonnull align 16 dereferenceable(136) %0) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load i32, ptr %i.b, align 8
  %cond.i = icmp eq i32 %i.c, 1
  %or.cond = select i1 %i.a, i1 %cond.i, i1 false, !prof !47
  br i1 %or.cond, label %bb.b, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !48
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #18
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit:     ; preds = %bb.c, %bb.b, %bb.a
  tail call void @_ZN5folly7futures6detail8CoreBaseD2Ev(ptr noundef nonnull align 16 dead_on_return(136) dereferenceable(136) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly7futures6detail4CoreINS_4UnitEED0Ev(ptr noundef nonnull align 16 dereferenceable(160) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5folly7futures6detail8CoreBase14destroyDerivedEv(ptr noundef nonnull align 16 dereferenceable(160) %0) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load i32, ptr %i.b, align 8
  %cond.i.i = icmp eq i32 %i.c, 1
  %or.cond.i = select i1 %i.a, i1 %cond.i.i, i1 false, !prof !47
  br i1 %or.cond.i, label %bb.b, label %_ZN5folly7futures6detail4CoreINS_4UnitEED2Ev.exit, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !48
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN5folly7futures6detail4CoreINS_4UnitEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #18
  br label %_ZN5folly7futures6detail4CoreINS_4UnitEED2Ev.exit

_ZN5folly7futures6detail4CoreINS_4UnitEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN5folly7futures6detail8CoreBaseD2Ev(ptr noundef nonnull align 16 dead_on_return(136) dereferenceable(160) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

end_hunk_1
begin_hunk_2_@_ZN5folly14HeapTimekeeper7Timeout16interruptHandlerESt10unique_ptrIS1_NS1_6DecRefEESt10shared_ptrINS0_5StateEENS_17exception_wrapperE:bb.a
bb.k:                                             ; preds = %.body
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !48
  %.not.i.i.i3 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i3, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit4, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #18
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit4

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit4:    ; preds = %.body, %bb.k, %bb.l
  %i.y = load ptr, ptr %5, align 8, !tbaa !48
  %.not.i.i5 = icmp eq ptr %i.y, null
  br i1 %.not.i.i5, label %_ZN5folly17exception_wrapperD2Ev.exit6, label %bb.m

bb.m:                                             ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit4
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  br label %_ZN5folly17exception_wrapperD2Ev.exit6

_ZN5folly17exception_wrapperD2Ev.exit6:           ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit4, %bb.m
  resume { ptr, i32 } %i.s

bb.n:                                             ; preds = %_ZN5folly17exception_wrapperD2Ev.exit
  %i.z = load ptr, ptr %1, align 8, !tbaa !11
  call void @_ZN5folly14HeapTimekeeper5State7enqueueENS1_2Op4TypeEOSt10unique_ptrINS0_7TimeoutENS5_6DecRefEE(ptr noundef nonnull align 8 dereferenceable(64) %i.z, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %bb.o

bb.o:                                             ; preds = %_ZN5folly17exception_wrapperD2Ev.exit, %bb.n
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5folly14HeapTimekeeper5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !141  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !144
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !146
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !call_target !147, !inline_history !229
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !call_target !178, !inline_history !229
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !215

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !call_target !147, !inline_history !230
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
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
  %i.j = load ptr, ptr %0, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !call_target !178, !inline_history !230
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5folly14HeapTimekeeper7Timeout10tryFulfillENS_3TryINS_4UnitEEE(ptr noundef nonnull align 8 captures(none) dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::Promise", align 8    ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.b = atomicrmw xchg ptr %i.a, i8 1 monotonic, align 1
  %i.c = trunc i8 %i.b to i1                      ; 2 uses
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !45, !range !26, !noundef !27
  store i8 0, ptr %i.d, align 8, !tbaa !45
  store i8 %i.e, ptr %2, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46
  store ptr null, ptr %i.g, align 8, !tbaa !46
  store ptr %i.h, ptr %i.f, align 8, !tbaa !22
  invoke void @_ZN5folly7PromiseINS_4UnitEE6setTryEONS_3TryIS1_EE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !22   ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN5folly7PromiseINS_4UnitEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %2, align 8, !tbaa !25, !range !26, !noundef !27
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.i) #18
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi ptr [ %.pre.i.i, %bb.e ], [ %i.i, %bb.d ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultINS_4UnitEEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.l)
          to label %_ZN5folly7PromiseINS_4UnitEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #27
  unreachable

_ZN5folly7PromiseINS_4UnitEED2Ev.exit:            ; preds = %bb.c, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly7PromiseINS_4UnitEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %i.o

bb.i:                                             ; preds = %bb.a, %_ZN5folly7PromiseINS_4UnitEED2Ev.exit
  %.0 = xor i1 %i.c, true
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly14HeapTimekeeper5State7enqueueENS1_2Op4TypeEOSt10unique_ptrINS0_7TimeoutENS5_6DecRefEE(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS2_6DecRefEEaSEOS4_.exit:
  %3 = alloca %class.anon.49, align 1             ; 3 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 6 uses
  %5 = alloca %"class.folly::detail::distributed_mutex::Waiter", align 64 ; 13 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %.sroa.017.i = alloca %class.anon.36, align 8   ; 5 uses
  %6 = alloca %"class.folly::detail::distributed_mutex::DistributedMutex<>::DistributedMutexStateProxy", align 8 ; 18 uses
  %7 = alloca %"class.folly::detail::ScopeGuardImpl", align 8 ; 7 uses
  %8 = alloca %class.anon.36, align 8             ; 8 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %9 = alloca %"struct.folly::HeapTimekeeper::State::Op", align 8 ; 7 uses
  store i32 %1, ptr %i.b, align 4, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.d = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i32 %1, ptr %9, align 8, !tbaa !233
  store ptr null, ptr %2, align 8, !tbaa !20
  store ptr %i.d, ptr %i.e, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %0, ptr %8, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.b, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %9, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.017.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.017.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %8, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.g = ptrtoint ptr %5 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 3 uses
  %.sroa.516.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.i = or disjoint i64 %i.g, 1                  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 5 uses
  br label %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i

_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i: ; preds = %bb.i, %_ZNSt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS2_6DecRefEEaSEOS4_.exit
  %.022.i.i = phi ptr [ null, %_ZNSt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS2_6DecRefEEaSEOS4_.exit ], [ %.227.i.i, %bb.i ] ; 5 uses
  %.020.i.i = phi i8 [ 0, %_ZNSt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS2_6DecRefEEaSEOS4_.exit ], [ %i.p, %bb.i ]
  %.018.i.i = phi i32 [ 4, %_ZNSt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS2_6DecRefEEaSEOS4_.exit ], [ %.017.i.i, %bb.i ]
  %.017.i.i = phi i32 [ 8, %_ZNSt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS2_6DecRefEEaSEOS4_.exit ], [ %.018.i.i, %bb.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !241
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.516.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.017.i, i64 32, i1 false), !noalias !241
  %i.l = zext nneg i32 %.017.i.i to i64
  store ptr @"_ZN5folly6detail17InlineFunctionRefIFvvELm48EE10callInlineIKNS0_17distributed_mutex16TaskWithCoalesceIZNS_14HeapTimekeeper5State7enqueueENS8_2Op4TypeEOSt10unique_ptrINS7_7TimeoutENSC_6DecRefEEE3$_0NS5_6WaiterISt6atomicEEEEEEvRKNSt15aligned_storageILm40ELm8EE4typeE", ptr %i.h, align 16, !tbaa !218, !noalias !241
  store ptr %5, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !31, !noalias !241
  store atomic i64 %i.l, ptr %i.f release, align 64, !noalias !241
  %i.m = atomicrmw xchg ptr %0, i64 %i.i acq_rel, align 8, !noalias !241 ; 3 uses
  %i.n = and i64 %i.m, 2
  %.not.i27.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i27.i.i, label %_ZN5folly6detail17distributed_mutex33recordTimedWaiterAndClearTimedBitERbRm.exit.i.i, label %bb.a, !prof !244

bb.a:                                             ; preds = %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i
  %i.o = and i64 %i.m, -3
  br label %_ZN5folly6detail17distributed_mutex33recordTimedWaiterAndClearTimedBitERbRm.exit.i.i

_ZN5folly6detail17distributed_mutex33recordTimedWaiterAndClearTimedBitERbRm.exit.i.i: ; preds = %bb.a, %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i
  %i.p = phi i8 [ %.020.i.i, %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i ], [ 1, %bb.a ] ; 4 uses
  %.0.i.i = phi i64 [ %i.m, %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i ], [ %i.o, %bb.a ] ; 4 uses
  store atomic i64 %.0.i.i, ptr %i.j monotonic, align 8, !noalias !241
  %i.q = icmp eq i64 %.0.i.i, 0
  br i1 %i.q, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %_ZN5folly6detail17distributed_mutex33recordTimedWaiterAndClearTimedBitERbRm.exit.i.i
  store ptr null, ptr %6, align 8, !tbaa !245, !alias.scope !241
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.i, ptr %i.r, align 8, !tbaa !248, !alias.scope !241
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 %i.p, ptr %i.s, align 8, !tbaa !249, !alias.scope !241
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 0, ptr %i.t, align 1, !tbaa !250, !alias.scope !241
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false), !alias.scope !241
  store ptr %.022.i.i, ptr %i.v, align 8, !tbaa !251, !alias.scope !241
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !241
  br label %bb.k

bb.b:                                             ; preds = %_ZN5folly6detail17distributed_mutex33recordTimedWaiterAndClearTimedBitERbRm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18, !noalias !241
  store i32 0, ptr %i.a, align 4, !tbaa !7, !noalias !241
  %i.w = icmp eq i32 %.017.i.i, 4
  br i1 %i.w, label %bb.c, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.x = atomicrmw xchg ptr %i.k, i32 5 acq_rel, align 4, !noalias !241
  switch i32 %i.x, label %.lr.ph.i.i.preheader.i.i [
    i32 5, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i
    i32 2, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i
  ]

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.c
  %.not.i.i.i.peel.i.i = icmp eq ptr %.022.i.i, null
  br i1 %.not.i.i.i.peel.i.i, label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.preheader.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 96 ; 2 uses
  store atomic i32 2, ptr %i.y release, align 4, !noalias !241
  %i.z = invoke noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull %i.y, i32 noundef 1, i32 noundef -1)
          to label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i unwind label %.loopexit.split-lp ; 0 uses

_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i: ; preds = %bb.d, %.lr.ph.i.i.preheader.i.i
  %i.aa = invoke noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull %i.k, i32 noundef 5, ptr noundef null, ptr noundef null, i32 noundef -1)
          to label %.noexc7 unwind label %.loopexit.split-lp ; 0 uses

.noexc7:                                          ; preds = %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i
  %i.ab = load atomic i32, ptr %i.k acquire, align 32, !noalias !241
  %.not.i.i.peel.i.i = icmp eq i32 %i.ab, 2
  br i1 %.not.i.i.peel.i.i, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i, label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i

_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i: ; preds = %.noexc7, %.noexc8
  %i.ac = invoke noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull %i.k, i32 noundef 5, ptr noundef null, ptr noundef null, i32 noundef -1)
          to label %.noexc8 unwind label %.loopexit ; 0 uses

.noexc8:                                          ; preds = %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i
  %i.ad = load atomic i32, ptr %i.k acquire, align 32, !noalias !241
  %.not.i.i.i.i6 = icmp eq i32 %i.ad, 2
  br i1 %.not.i.i.i.i6, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i, label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i, !llvm.loop !252

_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i: ; preds = %.noexc8, %.noexc7, %bb.c
  %i.ae = load atomic i64, ptr %i.j monotonic, align 8, !noalias !241
  %i.af = and i64 %i.ae, -2
  %i.ag = inttoptr i64 %i.af to ptr
  br label %bb.i, !llvm.loop !255

_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i: ; preds = %bb.b
  %i.ah = invoke noundef zeroext i1 @_ZN5folly6detail17distributed_mutex4spinINS1_6WaiterISt6atomicEEEEbRT_Rjj(ptr noundef nonnull align 64 dereferenceable(192) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %.017.i.i)
          to label %.noexc9 unwind label %.loopexit.split-lp

.noexc9:                                          ; preds = %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i
  br i1 %i.ah, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i, label %bb.i, !llvm.loop !255

_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i: ; preds = %.noexc9, %bb.c
  %i.ai = load i64, ptr %i.h, align 16, !noalias !241 ; 3 uses
  %i.aj = icmp eq i64 %.0.i.i, %i.ai              ; 2 uses
  %spec.select.i.i = select i1 %i.aj, i64 1, i64 %i.i
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !7, !noalias !241 ; 4 uses
  %i.al = icmp eq i32 %i.ak, 7
  %i.am = icmp eq i32 %i.ak, 10                   ; 2 uses
  %or.cond.i.i = or i1 %i.al, %i.am
  %i.an = inttoptr i64 %i.ai to ptr               ; 2 uses
  switch i32 %i.ak, label %bb.j [
    i32 10, label %bb.e
    i32 7, label %bb.e
  ]

bb.e:                                             ; preds = %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !241
  br i1 %i.am, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i, label %"_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_14HeapTimekeeper5State7enqueueENS7_2Op4TypeEOSt10unique_ptrINS6_7TimeoutENSB_6DecRefEEE3$_0EEvRNS1_17RequestWithReturnIT0_EERT_bRNS_4UnitE.exit.i.i", !prof !215

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i: ; preds = %bb.e
  store ptr null, ptr %i.h, align 16, !tbaa !48, !noalias !241
  store ptr %i.an, ptr %4, align 8, !tbaa !48, !noalias !241
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull %4) #29
          to label %bb.f unwind label %bb.g, !noalias !241

bb.f:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i
  unreachable

bb.g:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %4, align 8, !tbaa !48, !noalias !241
  %.not.i6.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i6.i.i.i.i, label %.body.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #18, !noalias !241
  br label %.body.i

"_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_14HeapTimekeeper5State7enqueueENS7_2Op4TypeEOSt10unique_ptrINS6_7TimeoutENSB_6DecRefEEE3$_0EEvRNS1_17RequestWithReturnIT0_EERT_bRNS_4UnitE.exit.i.i": ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !241
  br label %bb.j

bb.i:                                             ; preds = %.noexc9, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i
  %.227.i.i = phi ptr [ %.022.i.i, %.noexc9 ], [ %i.ag, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18, !noalias !241
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !241
  br label %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i

bb.j:                                             ; preds = %"_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_14HeapTimekeeper5State7enqueueENS7_2Op4TypeEOSt10unique_ptrINS6_7TimeoutENSB_6DecRefEEE3$_0EEvRNS1_17RequestWithReturnIT0_EERT_bRNS_4UnitE.exit.i.i", %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i
  %.sroa.5.0.i = phi ptr [ undef, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i ], [ %i.an, %"_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_14HeapTimekeeper5State7enqueueENS7_2Op4TypeEOSt10unique_ptrINS6_7TimeoutENSB_6DecRefEEE3$_0EEvRNS1_17RequestWithReturnIT0_EERT_bRNS_4UnitE.exit.i.i" ] ; 2 uses
  %i.aq = and i64 %.0.i.i, -2
  %i.ar = select i1 %i.aj, i64 0, i64 %i.aq
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load i64, ptr %.sroa.516.0..sroa_idx.i.i, align 8, !tbaa !31, !noalias !241
  %i.au = and i64 %i.at, -2
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = zext i1 %or.cond.i.i to i8
  store ptr %i.as, ptr %6, align 8, !tbaa !245, !alias.scope !241
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %spec.select.i.i, ptr %i.ax, align 8, !tbaa !248, !alias.scope !241
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 %i.p, ptr %i.ay, align 8, !tbaa !249, !alias.scope !241
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 %i.aw, ptr %i.az, align 1, !tbaa !250, !alias.scope !241
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.ai, ptr %i.ba, align 8, !tbaa !256, !alias.scope !241
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.av, ptr %i.bb, align 8, !tbaa !257, !alias.scope !241
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %.022.i.i, ptr %i.bc, align 8, !tbaa !251, !alias.scope !241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18, !noalias !241
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !241
  switch i32 %i.ak, label %bb.k [
    i32 10, label %bb.o
    i32 7, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j, %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store i8 0, ptr %7, align 8, !tbaa !258, !alias.scope !260
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %i.bd, align 8, !tbaa !263
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %6, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !265
  %i.be = invoke fastcc noundef ptr @"_ZZN5folly14HeapTimekeeper5State7enqueueENS1_2Op4TypeEOSt10unique_ptrINS0_7TimeoutENS5_6DecRefEEENK3$_0clEv"(ptr noundef nonnull readonly align 8 dereferenceable(32) %8)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5folly6detail17distributed_mutex16DistributedMutexISt6atomicLb1EE6unlockERKNS4_26DistributedMutexStateProxyE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %"_ZN5folly6detail14ScopeGuardImplIZNS0_17distributed_mutex16DistributedMutexISt6atomicLb1EE12lock_combineIZNS_14HeapTimekeeper5State7enqueueENS8_2Op4TypeEOSt10unique_ptrINS7_7TimeoutENSC_6DecRefEEE3$_0EENS_13invoke_detail6traitsIRKT_E6resultIEESJ_EUlvE_Lb1EED2Ev.exit.i" unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #27
  unreachable

"_ZN5folly6detail14ScopeGuardImplIZNS0_17distributed_mutex16DistributedMutexISt6atomicLb1EE12lock_combineIZNS_14HeapTimekeeper5State7enqueueENS8_2Op4TypeEOSt10unique_ptrINS7_7TimeoutENSC_6DecRefEEE3$_0EENS_13invoke_detail6traitsIRKT_E6resultIEESJ_EUlvE_Lb1EED2Ev.exit.i": ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.s

bb.n:                                             ; preds = %bb.k
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN5folly6detail14ScopeGuardImplIZNS0_17distributed_mutex16DistributedMutexISt6atomicLb1EE12lock_combineIZNS_14HeapTimekeeper5State7enqueueENS8_2Op4TypeEOSt10unique_ptrINS7_7TimeoutENSC_6DecRefEEE3$_0EENS_13invoke_detail6traitsIRKT_E6resultIEESJ_EUlvE_Lb1EED2Ev"(ptr noundef nonnull align 8 dereferenceable(24) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.r

bb.o:                                             ; preds = %bb.j, %bb.j
  %i.bi = trunc nuw i8 %i.p to i1
  br i1 %i.bi, label %bb.p, label %bb.s, !prof !215

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  invoke void @_ZN5folly10ParkingLotIjE6unparkIPKSt6atomicImEZNS_6detail19atomic_notification22atomic_notify_one_implITtTpTyES3_mJEEEvPKT_IJT0_DpT1_EEEUlRKT_E_EEvSH_OSB_(ptr noundef nonnull align 8 dereferenceable(8) @_ZN5folly6detail19atomic_notification10parkingLotE, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc16.i unwind label %bb.q

.noexc16.i:                                       ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn.i = phi { ptr, i32 } [ %i.bj, %bb.q ], [ %i.bh, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.body.i

.body.i:                                          ; preds = %bb.r, %bb.h, %bb.g
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.r ], [ %i.ao, %bb.g ], [ %i.ao, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.017.i)
  br label %.body

bb.s:                                             ; preds = %.noexc16.i, %bb.o, %"_ZN5folly6detail14ScopeGuardImplIZNS0_17distributed_mutex16DistributedMutexISt6atomicLb1EE12lock_combineIZNS_14HeapTimekeeper5State7enqueueENS8_2Op4TypeEOSt10unique_ptrINS7_7TimeoutENSC_6DecRefEEE3$_0EENS_13invoke_detail6traitsIRKT_E6resultIEESJ_EUlvE_Lb1EED2Ev.exit.i"
  %.010.i = phi ptr [ %i.be, %"_ZN5folly6detail14ScopeGuardImplIZNS0_17distributed_mutex16DistributedMutexISt6atomicLb1EE12lock_combineIZNS_14HeapTimekeeper5State7enqueueENS8_2Op4TypeEOSt10unique_ptrINS7_7TimeoutENSC_6DecRefEEE3$_0EENS_13invoke_detail6traitsIRKT_E6resultIEESJ_EUlvE_Lb1EED2Ev.exit.i" ], [ %.sroa.5.0.i, %.noexc16.i ], [ %.sroa.5.0.i, %bb.o ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.017.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.not = icmp eq ptr %.010.i, null
  br i1 %.not, label %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE22postFastWaiterMayBlockEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = cmpxchg ptr %.010.i, i32 0, i32 1 release monotonic, align 4 ; 2 uses
  %i.bl = extractvalue { i32, i1 } %i.bk, 1
  br i1 %i.bl, label %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE22postFastWaiterMayBlockEv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bm = extractvalue { i32, i1 } %i.bk, 0
  call void @_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE22postSlowWaiterMayBlockEj(ptr noundef nonnull align 4 dereferenceable(4) %.010.i, i32 noundef %i.bm) #18
  br label %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE22postFastWaiterMayBlockEv.exit

.loopexit:                                        ; preds = %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.d, %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.pn.i, %.body.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN5folly14HeapTimekeeper5State2OpD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  resume { ptr, i32 } %eh.lpad-body

_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE22postFastWaiterMayBlockEv.exit: ; preds = %bb.t, %bb.u, %bb.s
  %i.bn = load ptr, ptr %i.e, align 8, !tbaa !20  ; 5 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %_ZN5folly14HeapTimekeeper5State2OpD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE22postFastWaiterMayBlockEv.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = atomicrmw sub ptr %i.bo, i8 1 acq_rel, align 1
  %.not.i.i.i.i10 = icmp eq i8 %i.bp, 1
  br i1 %.not.i.i.i.i10, label %bb.w, label %_ZN5folly14HeapTimekeeper5State2OpD2Ev.exit

bb.w:                                             ; preds = %bb.v
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 48 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !25, !range !26, !noundef !27
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.br) #18
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.bq, align 8, !tbaa !22
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bv = phi ptr [ %.pre.i.i.i.i.i.i.i, %bb.y ], [ %i.br, %bb.x ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultINS_4UnitEEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.bv)
          to label %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i.i.i unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #27
  unreachable

_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i.i.i: ; preds = %bb.z, %bb.w
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(56) %i.bn, i64 noundef 56) #26
  br label %_ZN5folly14HeapTimekeeper5State2OpD2Ev.exit

_ZN5folly14HeapTimekeeper5State2OpD2Ev.exit:      ; preds = %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE22postFastWaiterMayBlockEv.exit, %bb.v, %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly7PromiseINS_4UnitEE6setTryEONS_3TryIS1_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::ExecutorKeepAlive", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZNK5folly7PromiseINS_4UnitEE7getCoreEv.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_14PromiseInvalidEJEEEvDpT0_() #9
  unreachable

_ZNK5folly7PromiseINS_4UnitEE7getCoreEv.exit.i:   ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNK5folly7futures6detail8CoreBase9hasResultEv(ptr noundef nonnull align 16 dereferenceable(136) %i.b) #18
  br i1 %i.c, label %bb.c, label %_ZNK5folly7PromiseINS_4UnitEE16throwIfFulfilledEv.exit

bb.c:                                             ; preds = %_ZNK5folly7PromiseINS_4UnitEE7getCoreEv.exit.i
  tail call void @_ZN5folly6detail16throw_exception_INS_23PromiseAlreadySatisfiedEJEEEvDpT0_() #9
  unreachable

_ZNK5folly7PromiseINS_4UnitEE16throwIfFulfilledEv.exit: ; preds = %_ZNK5folly7PromiseINS_4UnitEE7getCoreEv.exit.i
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store i64 0, ptr %2, align 8, !tbaa !68
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.f = load i32, ptr %1, align 8, !tbaa !62     ; 2 uses
  store i32 %i.f, ptr %i.e, align 8, !tbaa !62
  %cond.i.i.i.i = icmp eq i32 %i.f, 1
  br i1 %cond.i.i.i.i, label %bb.d, label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i

bb.d:                                             ; preds = %_ZNK5folly7PromiseINS_4UnitEE16throwIfFulfilledEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %i.i = load i64, ptr %i.h, align 8, !noalias !267
  store i64 %i.i, ptr %i.g, align 8, !alias.scope !267
  store i64 0, ptr %i.h, align 8, !noalias !267
  br label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i

_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i:         ; preds = %bb.d, %_ZNK5folly7PromiseINS_4UnitEE16throwIfFulfilledEv.exit
  invoke void @_ZN5folly7futures6detail8CoreBase10setResult_EONS_17ExecutorKeepAliveINS_8ExecutorEEE(ptr noundef nonnull align 16 dereferenceable(160) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZN5folly7futures6detail4CoreINS_4UnitEE9setResultEONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS3_EE.exit.i unwind label %bb.g

_ZN5folly7futures6detail4CoreINS_4UnitEE9setResultEONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS3_EE.exit.i: ; preds = %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i
  %i.j = load i64, ptr %2, align 8, !tbaa !68     ; 2 uses
  %i.k = and i64 %i.j, -4                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %.not.i.i.i2 = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i2, label %_ZN5folly7futures6detail4CoreINS_4UnitEE9setResultEONS_3TryIS3_EE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5folly7futures6detail4CoreINS_4UnitEE9setResultEONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS3_EE.exit.i
  store i64 0, ptr %2, align 8, !tbaa !75
  %i.m = and i64 %i.j, 3
  %.not3.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not3.i.i.i, label %bb.f, label %_ZN5folly7futures6detail4CoreINS_4UnitEE9setResultEONS_3TryIS3_EE.exit

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #18, !call_target !77, !inline_history !84
  br label %_ZN5folly7futures6detail4CoreINS_4UnitEE9setResultEONS_3TryIS3_EE.exit

bb.g:                                             ; preds = %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load i64, ptr %2, align 8, !tbaa !68     ; 2 uses
  %i.s = and i64 %i.r, -4                         ; 2 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %.not.i.i3.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i3.i, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit5.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %2, align 8, !tbaa !75
  %i.u = and i64 %i.r, 3
  %.not3.i.i4.i = icmp eq i64 %i.u, 0
  br i1 %.not3.i.i4.i, label %bb.i, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit5.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.t) #18, !call_target !77, !inline_history !84
  br label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit5.i

_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit5.i: ; preds = %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %i.q

_ZN5folly7futures6detail4CoreINS_4UnitEE9setResultEONS_3TryIS3_EE.exit: ; preds = %_ZN5folly7futures6detail4CoreINS_4UnitEE9setResultEONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS3_EE.exit.i, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_23PromiseAlreadySatisfiedEJEEEvDpT0_() local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.folly::PromiseAlreadySatisfied", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly23PromiseAlreadySatisfiedE, i64 16), ptr %0, align 8, !tbaa !43
  invoke void @_ZN5folly15throw_exceptionINS_23PromiseAlreadySatisfiedEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_23PromiseAlreadySatisfiedEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 2 uses
  tail call void @_ZN5folly23PromiseAlreadySatisfiedC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly23PromiseAlreadySatisfiedE, ptr nonnull @_ZNSt11logic_errorD2Ev) #29
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly23PromiseAlreadySatisfiedC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly23PromiseAlreadySatisfiedE, i64 16), ptr %0, align 8, !tbaa !43
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly23PromiseAlreadySatisfiedD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5folly23PromiseAlreadySatisfied4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
end_hunk_2
