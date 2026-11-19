Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/StripedEDFThreadPoolExecutor?download=true
inline.NumInlined: 1775
inline.NumDeleted: 1030
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.folly::f14::detail::F14EmptyTagVector" = type { %"struct.std::array.104", i8 }
%"struct.std::array.104" = type { [15 x i8] }
%"struct.folly::detail::safe_assert_arg" = type { ptr, ptr, i32, ptr, ptr }
%"struct.folly::c_array" = type { [2 x i8] }
%"class.folly::ParkingLot" = type { i64 }
%"struct.folly::variadic_noop_fn" = type { i8 }
%"class.folly::AtomicStruct.178" = type { %"struct.std::atomic.7" }
%"struct.std::atomic.7" = type { %"struct.std::__atomic_base.8" }
%"struct.std::__atomic_base.8" = type { i64 }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.folly::Function" = type { %"union.folly::detail::function::Data", ptr, ptr }
%"union.folly::detail::function::Data" = type { %"struct.folly::detail::function::Data::BigTrivialLayout", [24 x i8] }
%"struct.folly::detail::function::Data::BigTrivialLayout" = type { ptr, i64, i64 }
%"struct.folly::CPUThreadPoolExecutor::CPUTask" = type { %"struct.folly::ThreadPoolExecutor::Task", i64, [8 x i8] }
%"struct.folly::ThreadPoolExecutor::Task" = type { %"class.folly::Function", %"class.std::chrono::time_point", %"class.std::shared_ptr.67", %"class.std::unique_ptr.70", i8, i64 }
%"class.std::chrono::time_point" = type { %"class.std::chrono::duration.6" }
%"class.std::chrono::duration.6" = type { i64 }
%"class.std::shared_ptr.67" = type { %"class.std::__shared_ptr.68" }
%"class.std::__shared_ptr.68" = type { ptr, %"class.std::__shared_count" }
%"class.std::unique_ptr.70" = type { %"struct.std::__uniq_ptr_data.71" }
%"struct.std::__uniq_ptr_data.71" = type { %"class.std::__uniq_ptr_impl.72" }
%"class.std::__uniq_ptr_impl.72" = type { %"class.std::tuple.73" }
%"class.std::tuple.73" = type { %"struct.std::_Tuple_impl.74" }
%"struct.std::_Tuple_impl.74" = type { %"struct.std::_Head_base.77" }
%"struct.std::_Head_base.77" = type { ptr }
%"class.std::unique_ptr.21" = type { %"struct.std::__uniq_ptr_data.22" }
%"struct.std::__uniq_ptr_data.22" = type { %"class.std::__uniq_ptr_impl.23" }
%"class.std::__uniq_ptr_impl.23" = type { %"class.std::tuple.24" }
%"class.std::tuple.24" = type { %"struct.std::_Tuple_impl.25" }
%"struct.std::_Tuple_impl.25" = type { %"struct.std::_Head_base.28" }
%"struct.std::_Head_base.28" = type { ptr }
%"class.std::shared_ptr.3" = type { %"class.std::__shared_ptr.4" }
%"class.std::__shared_ptr.4" = type { ptr, %"class.std::__shared_count" }
%"class.google::LogMessageFatal" = type { %"class.google::LogMessage" }
%"class.google::LogMessage" = type { ptr, ptr, %"struct.google::LogMessageTime" }
%"struct.google::LogMessageTime" = type { %struct.tm, i64, i32, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%"struct.google::CheckOpString" = type { ptr }
%"class.folly::WaitOptions" = type <{ %"class.std::chrono::duration.6", i8, [7 x i8] }>
%"class.folly::Optional" = type { %"struct.folly::detail::OptionalCopyAssignBase" }
%"struct.folly::detail::OptionalCopyAssignBase" = type { %"struct.folly::detail::OptionalCopyBase" }
%"struct.folly::detail::OptionalCopyBase" = type { %"struct.folly::detail::OptionalStorage" }
%"struct.folly::detail::OptionalStorage" = type { %"struct.folly::detail::OptionalStorageNonTriviallyDestructible" }
%"struct.folly::detail::OptionalStorageNonTriviallyDestructible" = type <{ %union.anon, i8, [15 x i8] }>
%union.anon = type { %"struct.folly::CPUThreadPoolExecutor::CPUTask" }
%"class.google::base::CheckOpMessageBuilder" = type { ptr }
%"class.std::bad_array_new_length" = type { %"class.std::bad_alloc" }
%"class.std::bad_alloc" = type { %"class.std::exception" }
%"class.std::exception" = type { ptr }
%"class.folly::detail::ScopeGuardImpl" = type { %"class.folly::detail::ScopeGuardImplBase", %class.anon.110 }
%"class.folly::detail::ScopeGuardImplBase" = type { i8 }
%class.anon.110 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.std::array.111" = type { [256 x i8] }
%"class.std::bad_function_call" = type { %"class.std::exception" }
%class.anon.126 = type { ptr, ptr }
%"class.folly::small_vector" = type { %"struct.boost::operators_impl::totally_ordered1", %"union.folly::small_vector<std::pair<long, unsigned long>, 64>::Data" }
%"struct.boost::operators_impl::totally_ordered1" = type { %"struct.boost::operators_impl::less_than_comparable1" }
%"struct.boost::operators_impl::less_than_comparable1" = type { %"struct.boost::operators_impl::equality_comparable1" }
%"struct.boost::operators_impl::equality_comparable1" = type { %"struct.folly::detail::IntegralSizePolicy" }
%"struct.folly::detail::IntegralSizePolicy" = type { %"struct.folly::detail::IntegralSizePolicyBase" }
%"struct.folly::detail::IntegralSizePolicyBase" = type { i64 }
%"union.folly::small_vector<std::pair<long, unsigned long>, 64>::Data" = type { %"struct.folly::small_vector<std::pair<long, unsigned long>, 64>::HeapPtrWithCapacity", [1008 x i8] }
%"struct.folly::small_vector<std::pair<long, unsigned long>, 64>::HeapPtrWithCapacity" = type { ptr, i64 }
%"class.std::length_error" = type { %"class.std::logic_error" }
%"class.std::logic_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"struct.std::__cow_string" = type { %union.anon.129 }
%union.anon.129 = type { ptr }
%class.anon.132 = type { i8 }
%"struct.folly::detail::UsingJEMallocInitializer" = type { i8 }
%"struct.folly::detail::UsingTCMallocInitializer" = type { i8 }
%class.anon.156 = type { i8 }
%"class.folly::detail::distributed_mutex::RequestWithReturn" = type { %class.anon.148, %union.anon.149 }
%class.anon.148 = type { ptr }
%union.anon.149 = type { ptr }
%"class.folly::detail::distributed_mutex::DistributedMutex<>::DistributedMutexStateProxy" = type { ptr, i64, i8, i8, i64, ptr, ptr }
%"class.std::__exception_ptr::exception_ptr" = type { ptr }
%"class.folly::detail::distributed_mutex::Waiter" = type { %"struct.std::array.152", %"struct.std::atomic.7", %"struct.std::atomic.7", %union.anon.153, %"struct.std::array.152" }
%union.anon.153 = type { %"class.folly::detail::InlineFunctionRef" }
%"class.folly::detail::InlineFunctionRef" = type { ptr, %"struct.folly::detail::aligned_storage<40, 8>::type" }
%"struct.folly::detail::aligned_storage<40, 8>::type" = type { [40 x i8] }
%"struct.std::array.152" = type { [64 x i8] }
%struct.timespec = type { i64, i64 }
%class.anon.162 = type { ptr }
%"class.std::unique_ptr.197" = type { %"struct.std::__uniq_ptr_data.198" }
%"struct.std::__uniq_ptr_data.198" = type { %"class.std::__uniq_ptr_impl.199" }
%"class.std::__uniq_ptr_impl.199" = type { %"class.std::tuple.200" }
%"class.std::tuple.200" = type { %"struct.std::_Tuple_impl.201" }
%"struct.std::_Tuple_impl.201" = type { %"struct.std::_Head_base.204" }
%"struct.std::_Head_base.204" = type { ptr }
%"class.folly::Optional.164" = type { %"struct.folly::detail::OptionalCopyAssignBase.165" }
%"struct.folly::detail::OptionalCopyAssignBase.165" = type { %"struct.folly::detail::OptionalCopyBase.166" }
%"struct.folly::detail::OptionalCopyBase.166" = type { %"struct.folly::detail::OptionalStorage.167" }
%"struct.folly::detail::OptionalStorage.167" = type { %"struct.folly::detail::OptionalStorageNonTriviallyDestructible.168" }
%"struct.folly::detail::OptionalStorageNonTriviallyDestructible.168" = type <{ %union.anon.169, i8, [7 x i8] }>
%union.anon.169 = type { %"struct.folly::ThrottledLifoSem::Waiter" }
%"struct.folly::ThrottledLifoSem::Waiter" = type { %"class.folly::SaturatingSemaphore", %"class.boost::intrusive::list_member_hook" }
%"class.folly::SaturatingSemaphore" = type { %"struct.std::atomic" }
%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { i32 }
%"class.boost::intrusive::list_member_hook" = type { %"class.boost::intrusive::generic_hook" }
%"class.boost::intrusive::generic_hook" = type { %"struct.boost::intrusive::list_node" }
%"struct.boost::intrusive::list_node" = type { ptr, ptr }
%class.anon.171 = type { ptr, ptr, ptr }
%"class.folly::detail::distributed_mutex::RequestWithoutReturn" = type { %class.anon.171 }
%"class.folly::detail::distributed_mutex::RequestWithReturn.179" = type <{ %class.anon.172, %union.anon.180, [7 x i8] }>
%class.anon.172 = type { ptr, ptr }
%union.anon.180 = type { i8 }
%"class.folly::detail::ScopeGuardImpl.181" = type { %"class.folly::detail::ScopeGuardImplBase", %class.anon.182 }
%class.anon.182 = type { ptr, ptr }
%"class.folly::detail::distributed_mutex::RequestWithReturn.188" = type { %class.anon.173, %union.anon.189 }
%class.anon.173 = type { ptr }
%union.anon.189 = type { ptr }
%"class.folly::OptionalEmptyException" = type { %"class.std::runtime_error" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }

$_ZN5folly20SoftRealTimeExecutorD1Ev = comdat any

$_ZN5folly20SoftRealTimeExecutorD0Ev = comdat any

$_ZNK5folly8Executor16getNumPrioritiesEv = comdat any

$_ZN5folly24DefaultKeepAliveExecutor16keepAliveAcquireEv = comdat any

$_ZN5folly24DefaultKeepAliveExecutor16keepAliveReleaseEv = comdat any

$_ZN5folly18ThreadPoolExecutor18validateNumThreadsEm = comdat any

$_ZN5folly18ThreadPoolExecutor10makeThreadEv = comdat any

$_ZN5folly18ThreadPoolExecutor28handleObserverRegisterThreadEPNS0_12ThreadHandleERNS0_8ObserverE = comdat any

$_ZN5folly18ThreadPoolExecutor30handleObserverUnregisterThreadEPNS0_12ThreadHandleERNS0_8ObserverE = comdat any

$_ZTv0_n56_N5folly24DefaultKeepAliveExecutor16keepAliveAcquireEv = comdat any

$_ZTv0_n64_N5folly24DefaultKeepAliveExecutor16keepAliveReleaseEv = comdat any

$_ZN5folly24DefaultKeepAliveExecutorD1Ev = comdat any

$_ZN5folly24DefaultKeepAliveExecutorD0Ev = comdat any

$_ZTv0_n24_N5folly24DefaultKeepAliveExecutorD1Ev = comdat any

$_ZTv0_n24_N5folly24DefaultKeepAliveExecutorD0Ev = comdat any

$_ZN5folly28StripedEDFThreadPoolExecutorD1Ev = comdat any

$_ZN5folly28StripedEDFThreadPoolExecutorD0Ev = comdat any

$_ZThn64_N5folly28StripedEDFThreadPoolExecutorD1Ev = comdat any

$_ZThn64_N5folly28StripedEDFThreadPoolExecutorD0Ev = comdat any

$_ZThn560_N5folly28StripedEDFThreadPoolExecutorD1Ev = comdat any

$_ZThn560_N5folly28StripedEDFThreadPoolExecutorD0Ev = comdat any

$_ZNSt12__shared_ptrIN5folly13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN5folly13BlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEE15addWithPriorityEOS2_a = comdat any

$_ZN5folly13BlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEE16getNumPrioritiesEv = comdat any

$_ZN6google17MakeCheckOpStringImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc = comdat any

$_ZN5folly6detail16throw_exception_ISt20bad_array_new_lengthJEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionISt20bad_array_new_lengthEEvOT_ = comdat any

$_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionISt9bad_allocEEvOT_ = comdat any

$__clang_call_terminate = comdat any

$_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm = comdat any

$_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm = comdat any

$_ZN5folly6detail8function14FunctionTraitsIKFlvEE10uninitCallERNS1_4DataE = comdat any

$_ZN5folly6detail16throw_exception_ISt17bad_function_callJEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionISt17bad_function_callEEvOT_ = comdat any

$_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv = comdat any

$_ZN5folly3f146detail21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEE17afterFailedRehashEPSt4pairIKS3_S6_Em = comdat any

$_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_ = comdat any

$_ZN5folly12small_vectorISt4pairIlmELm64EvED2Ev = comdat any

$_ZN5folly12small_vectorISt4pairIlmELm64EvE16makeSizeInternalILb1ELb0EZNS3_12emplace_backIJRlRmEEERS2_DpOT_EUlPvE_EEvmOT1_m = comdat any

$_ZN5folly6detail16throw_exception_ISt12length_errorJPKcEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionISt12length_errorEEvOT_ = comdat any

$_ZNSt12length_errorC2EOS_ = comdat any

$_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv = comdat any

$_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvENKUlvE_clEv = comdat any

$_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEv = comdat any

$_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEv = comdat any

$_ZSt16__introsort_loopIPSt4pairIlmElN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_T0_ = comdat any

$_ZSt13__adjust_heapIPSt4pairIlmElS1_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_T0_SA_T1_T2_ = comdat any

$_ZSt22__move_median_to_firstIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_S9_S9_T0_ = comdat any

$_ZSt16__introsort_loopIPSt4pairIlmElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_ = comdat any

$_ZSt27__unguarded_partition_pivotIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_less_iterEET_S6_S6_T0_ = comdat any

$_ZSt13__adjust_heapIPSt4pairIlmElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_ = comdat any

$_ZN5folly16ThrottledLifoSem21maybeStartWakingChainEv = comdat any

$_ZN5folly6detail17distributed_mutex16DistributedMutexISt6atomicLb1EE12lock_combineIZNS_16ThrottledLifoSem21maybeStartWakingChainEvEUlvE_EENS_13invoke_detail6traitsIRKT_E6resultIEESA_ = comdat any

$_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_17RequestWithReturnIZNS_16ThrottledLifoSem21maybeStartWakingChainEvEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSB_RT1_RT2_ = comdat any

$_ZN5folly6detail17InlineFunctionRefIFvvELm48EE10callInlineIKNS0_17distributed_mutex16TaskWithCoalesceIZNS_16ThrottledLifoSem21maybeStartWakingChainEvEUlvE_NS5_6WaiterISt6atomicEEEEEEvRKNS0_15aligned_storageILm40ELm8EE4typeE = comdat any

$_ZN5folly6detail17distributed_mutex4spinINS1_6WaiterISt6atomicEEEEbRT_Rjj = comdat any

$_ZN5folly10ParkingLotIjE6unparkIPKSt6atomicImEZNS_6detail19atomic_notification22atomic_notify_one_implITtTpTyES3_mJEEEvPKT_IJT0_DpT1_EEEUlRKT_E_EEvSH_OSB_ = comdat any

$_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE22postSlowWaiterMayBlockEj = comdat any

$_ZN5folly18ThreadPoolExecutor4TaskD2Ev = comdat any

$_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN5folly3f146detail16F14VectorMapImplIPvNS_8FunctionIKFlvEEENS_23HeterogeneousAccessHashIS3_vEENS_26HeterogeneousAccessEqualToIS3_vEESaISt4pairIKS3_S6_EESt17integral_constantIbLb1EEE18eraseUnderlyingKeyIS3_RKNS_16variadic_noop_fnEEEmRKT_OT0_ = comdat any

$_ZN5folly3f146detail16F14VectorMapImplIPvNS_8FunctionIKFlvEEENS_23HeterogeneousAccessHashIS3_vEENS_26HeterogeneousAccessEqualToIS3_vEESaISt4pairIKS3_S6_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_ = comdat any

$_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapISA_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKS4_S7_EE_EEvSN_SP_ = comdat any

$_ZN5folly16ThrottledLifoSem14try_wait_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsE = comdat any

$_ZN5folly16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS2_10time_pointIT_T0_EE = comdat any

$_ZN5folly6detail17distributed_mutex16DistributedMutexISt6atomicLb1EE12lock_combineIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS8_10time_pointIT_T0_EEEUlvE_EENS_13invoke_detail6traitsIRKSG_E6resultIEESG_ = comdat any

$_ZN5folly6detail17distributed_mutex16DistributedMutexISt6atomicLb1EE12lock_combineIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS8_10time_pointIT_T0_EEEUlvE0_EENS_13invoke_detail6traitsIRKSG_E6resultIEESG_ = comdat any

$_ZN5folly6detail17distributed_mutex16DistributedMutexISt6atomicLb1EE12lock_combineIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS8_10time_pointIT_T0_EEEUlvE1_EENS_13invoke_detail6traitsIRKSG_E6resultIEESG_ = comdat any

$_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS8_10time_pointIT_T0_EEEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSP_RT1_RT2_ = comdat any

$_ZN5folly6detail17InlineFunctionRefIFvvELm48EE10callInlineIKNS0_17distributed_mutex19TaskWithoutCoalesceIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS9_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS9_10time_pointIT_T0_EEEUlvE_NS5_6WaiterISt6atomicEEEEEEvRKNS0_15aligned_storageILm40ELm8EE4typeE = comdat any

$_ZN5folly6detail16throw_exception_INS_22OptionalEmptyExceptionEJEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionINS_22OptionalEmptyExceptionEEEvOT_ = comdat any

$_ZN5folly22OptionalEmptyExceptionC2EOS0_ = comdat any

$_ZN5folly22OptionalEmptyExceptionD0Ev = comdat any

$_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowINSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS4_10time_pointIT_T0_EERKNS_11WaitOptionsE = comdat any

$_ZN5folly6detail11MemoryIdler14futexWaitUntilISt6atomicIjENSt6chrono10time_pointINS5_3_V212steady_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEESC_EENS0_11FutexResultERT_jRKT0_jRKT1_mf = comdat any

$_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_17RequestWithReturnIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS8_10time_pointIT_T0_EEEUlvE0_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSP_RT1_RT2_ = comdat any

$_ZN5folly6detail14ScopeGuardImplIZNS0_17distributed_mutex16DistributedMutexISt6atomicLb1EE12lock_combineIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS9_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS9_10time_pointIT_T0_EEEUlvE0_EENS_13invoke_detail6traitsIRKSH_E6resultIEESH_EUlvE_Lb1EED2Ev = comdat any

$_ZN5folly6detail17InlineFunctionRefIFvvELm48EE10callInlineIKNS0_17distributed_mutex16TaskWithCoalesceIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS9_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS9_10time_pointIT_T0_EEEUlvE0_NS5_6WaiterISt6atomicEEEEEEvRKNS0_15aligned_storageILm40ELm8EE4typeE = comdat any

$_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_17RequestWithReturnIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS8_10time_pointIT_T0_EEEUlvE1_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSP_RT1_RT2_ = comdat any

$_ZN5folly6detail17InlineFunctionRefIFvvELm48EE10callInlineIKNS0_17distributed_mutex16TaskWithCoalesceIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS9_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS9_10time_pointIT_T0_EEEUlvE1_NS5_6WaiterISt6atomicEEEEEEvRKNS0_15aligned_storageILm40ELm8EE4typeE = comdat any

$_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5folly18ThreadPoolExecutor6ThreadESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5folly18ThreadPoolExecutor6ThreadESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5folly18ThreadPoolExecutor6ThreadESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5folly18ThreadPoolExecutor6ThreadESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZN5folly18ThreadPoolExecutor6ThreadD2Ev = comdat any

$_ZN5folly18ThreadPoolExecutor6ThreadD0Ev = comdat any

$_ZTIN5folly20SoftRealTimeExecutorE = comdat any

$_ZTSN5folly20SoftRealTimeExecutorE = comdat any

$_ZTIN5folly24DefaultKeepAliveExecutorE = comdat any

$_ZTSN5folly24DefaultKeepAliveExecutorE = comdat any

$_ZTIN5folly13BlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEEE = comdat any

$_ZTSN5folly13BlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEEE = comdat any

$_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance = comdat any

$_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmE30__folly_detail_safe_assert_arg = comdat any

$_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE = comdat any

$_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0 = comdat any

$_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E = comdat any

$_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv = comdat any

$_ZGVZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv = comdat any

$_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE5flag_E = comdat any

$_ZZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv = comdat any

$_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv = comdat any

$_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE5flag_E = comdat any

$_ZZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv = comdat any

$_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv = comdat any

$_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg = comdat any

$_ZN5folly13variadic_noopE = comdat any

$_ZTIN5folly22OptionalEmptyExceptionE = comdat any

$_ZTSN5folly22OptionalEmptyExceptionE = comdat any

$_ZTVN5folly22OptionalEmptyExceptionE = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN5folly18ThreadPoolExecutor6ThreadESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN5folly18ThreadPoolExecutor6ThreadESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN5folly18ThreadPoolExecutor6ThreadESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTVN5folly18ThreadPoolExecutor6ThreadE = comdat any

$_ZTIN5folly18ThreadPoolExecutor6ThreadE = comdat any

$_ZTSN5folly18ThreadPoolExecutor6ThreadE = comdat any

$_ZTIN5folly18ThreadPoolExecutor12ThreadHandleE = comdat any

$_ZTSN5folly18ThreadPoolExecutor12ThreadHandleE = comdat any

$_ZTSSt19_Sp_make_shared_tag = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

@_ZTVN5folly28StripedEDFThreadPoolExecutorE = constant { [18 x ptr], [30 x ptr], [5 x ptr] } { [18 x ptr] [ptr null, ptr inttoptr (i64 64 to ptr), ptr inttoptr (i64 64 to ptr), ptr inttoptr (i64 64 to ptr), ptr inttoptr (i64 64 to ptr), ptr inttoptr (i64 64 to ptr), ptr null, ptr null, ptr @_ZTIN5folly28StripedEDFThreadPoolExecutorE, ptr @_ZN5folly28StripedEDFThreadPoolExecutorD1Ev, ptr @_ZN5folly28StripedEDFThreadPoolExecutorD0Ev, ptr @_ZTv0_n32_N5folly21CPUThreadPoolExecutor3addENS_8FunctionIFvvEEE, ptr @_ZTv0_n40_N5folly21CPUThreadPoolExecutor15addWithPriorityENS_8FunctionIFvvEEEa, ptr @_ZTv0_n48_NK5folly21CPUThreadPoolExecutor16getNumPrioritiesEv, ptr @_ZTv0_n56_N5folly24DefaultKeepAliveExecutor16keepAliveAcquireEv, ptr @_ZTv0_n64_N5folly24DefaultKeepAliveExecutor16keepAliveReleaseEv, ptr @_ZN5folly28StripedEDFThreadPoolExecutor3addENS_8FunctionIFvvEEEm, ptr @_ZN5folly28StripedEDFThreadPoolExecutor3addESt6vectorINS_8FunctionIFvvEEESaIS4_EEm], [30 x ptr] [ptr inttoptr (i64 -64 to ptr), ptr null, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i64 -64 to ptr), ptr inttoptr (i64 -64 to ptr), ptr @_ZTIN5folly28StripedEDFThreadPoolExecutorE, ptr @_ZThn64_N5folly28StripedEDFThreadPoolExecutorD1Ev, ptr @_ZThn64_N5folly28StripedEDFThreadPoolExecutorD0Ev, ptr @_ZN5folly21CPUThreadPoolExecutor3addENS_8FunctionIFvvEEE, ptr @_ZN5folly21CPUThreadPoolExecutor15addWithPriorityENS_8FunctionIFvvEEEa, ptr @_ZNK5folly21CPUThreadPoolExecutor16getNumPrioritiesEv, ptr @_ZN5folly24DefaultKeepAliveExecutor16keepAliveAcquireEv, ptr @_ZN5folly24DefaultKeepAliveExecutor16keepAliveReleaseEv, ptr @_ZN5folly21CPUThreadPoolExecutor3addENS_8FunctionIFvvEEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEES3_, ptr @_ZN5folly18ThreadPoolExecutor4stopEv, ptr @_ZN5folly18ThreadPoolExecutor4joinEv, ptr @_ZN5folly18ThreadPoolExecutor11addObserverESt10shared_ptrINS0_8ObserverEE, ptr @_ZN5folly18ThreadPoolExecutor14removeObserverESt10shared_ptrINS0_8ObserverEE, ptr @_ZN5folly18ThreadPoolExecutor18validateNumThreadsEm, ptr @_ZN5folly21CPUThreadPoolExecutor9threadRunESt10shared_ptrINS_18ThreadPoolExecutor6ThreadEE, ptr @_ZN5folly21CPUThreadPoolExecutor11stopThreadsEm, ptr @_ZN5folly18ThreadPoolExecutor10makeThreadEv, ptr @_ZNK5folly21CPUThreadPoolExecutor23getPendingTaskCountImplEv, ptr @_ZN5folly18ThreadPoolExecutor28handleObserverRegisterThreadEPNS0_12ThreadHandleERNS0_8ObserverE, ptr @_ZN5folly18ThreadPoolExecutor30handleObserverUnregisterThreadEPNS0_12ThreadHandleERNS0_8ObserverE, ptr @_ZN5folly21CPUThreadPoolExecutor3addENS_8FunctionIFvvEEEaNSt6chrono8durationIlSt5ratioILl1ELl1000EEEES3_, ptr @_ZN5folly21CPUThreadPoolExecutor20getThreadIdCollectorEv], [5 x ptr] [ptr inttoptr (i64 -560 to ptr), ptr @_ZTIN5folly28StripedEDFThreadPoolExecutorE, ptr @_ZThn560_N5folly28StripedEDFThreadPoolExecutorD1Ev, ptr @_ZThn560_N5folly28StripedEDFThreadPoolExecutorD0Ev, ptr @_ZThn496_N5folly21CPUThreadPoolExecutor20getThreadIdCollectorEv] }, align 8
@_ZTTN5folly28StripedEDFThreadPoolExecutorE = unnamed_addr constant [11 x ptr] [ptr getelementptr inbounds inrange(-72, 72) ({ [18 x ptr], [30 x ptr], [5 x ptr] }, ptr @_ZTVN5folly28StripedEDFThreadPoolExecutorE, i32 0, i32 0, i32 9), ptr getelementptr inbounds inrange(-72, 72) ({ [18 x ptr] }, ptr @_ZTCN5folly28StripedEDFThreadPoolExecutorE0_NS_20SoftRealTimeExecutorE, i32 0, i32 0, i32 9), ptr getelementptr inbounds inrange(-72, 72) ({ [18 x ptr] }, ptr @_ZTCN5folly28StripedEDFThreadPoolExecutorE0_NS_20SoftRealTimeExecutorE, i32 0, i32 0, i32 9), ptr getelementptr inbounds inrange(-72, 168) ({ [30 x ptr], [15 x ptr] }, ptr @_ZTCN5folly28StripedEDFThreadPoolExecutorE64_NS_21CPUThreadPoolExecutorE, i32 0, i32 0, i32 9), ptr getelementptr inbounds inrange(-72, 152) ({ [28 x ptr], [15 x ptr] }, ptr @_ZTCN5folly28StripedEDFThreadPoolExecutorE64_NS_18ThreadPoolExecutorE, i32 0, i32 0, i32 9), ptr getelementptr inbounds inrange(-72, 56) ({ [16 x ptr], [15 x ptr] }, ptr @_ZTCN5folly28StripedEDFThreadPoolExecutorE64_NS_24DefaultKeepAliveExecutorE, i32 0, i32 0, i32 9), ptr getelementptr inbounds inrange(-64, 56) ({ [16 x ptr], [15 x ptr] }, ptr @_ZTCN5folly28StripedEDFThreadPoolExecutorE64_NS_24DefaultKeepAliveExecutorE, i32 0, i32 1, i32 8), ptr getelementptr inbounds inrange(-64, 56) ({ [28 x ptr], [15 x ptr] }, ptr @_ZTCN5folly28StripedEDFThreadPoolExecutorE64_NS_18ThreadPoolExecutorE, i32 0, i32 1, i32 8), ptr getelementptr inbounds inrange(-64, 56) ({ [30 x ptr], [15 x ptr] }, ptr @_ZTCN5folly28StripedEDFThreadPoolExecutorE64_NS_21CPUThreadPoolExecutorE, i32 0, i32 1, i32 8), ptr getelementptr inbounds inrange(-72, 72) ({ [18 x ptr], [30 x ptr], [5 x ptr] }, ptr @_ZTVN5folly28StripedEDFThreadPoolExecutorE, i32 0, i32 0, i32 9), ptr getelementptr inbounds inrange(-72, 168) ({ [18 x ptr], [30 x ptr], [5 x ptr] }, ptr @_ZTVN5folly28StripedEDFThreadPoolExecutorE, i32 0, i32 1, i32 9)], align 8
@_ZTCN5folly28StripedEDFThreadPoolExecutorE0_NS_20SoftRealTimeExecutorE = constant { [18 x ptr] } { [18 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZTIN5folly20SoftRealTimeExecutorE, ptr @_ZN5folly20SoftRealTimeExecutorD1Ev, ptr @_ZN5folly20SoftRealTimeExecutorD0Ev, ptr @__cxa_pure_virtual, ptr @_ZN5folly8Executor15addWithPriorityENS_8FunctionIFvvEEEa, ptr @_ZNK5folly8Executor16getNumPrioritiesEv, ptr @_ZN5folly8Executor16keepAliveAcquireEv, ptr @_ZN5folly8Executor16keepAliveReleaseEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@_ZTIN5folly20SoftRealTimeExecutorE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN5folly20SoftRealTimeExecutorE, i32 0, i32 1, ptr @_ZTIN5folly8ExecutorE, i64 -18429 }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN5folly20SoftRealTimeExecutorE = linkonce_odr constant [31 x i8] c"N5folly20SoftRealTimeExecutorE\00", comdat, align 1
@_ZTIN5folly8ExecutorE = external constant ptr
@_ZTCN5folly28StripedEDFThreadPoolExecutorE64_NS_21CPUThreadPoolExecutorE = constant { [30 x ptr], [15 x ptr] } { [30 x ptr] [ptr inttoptr (i64 -64 to ptr), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZTIN5folly21CPUThreadPoolExecutorE, ptr @_ZN5folly21CPUThreadPoolExecutorD1Ev, ptr @_ZN5folly21CPUThreadPoolExecutorD0Ev, ptr @_ZN5folly21CPUThreadPoolExecutor3addENS_8FunctionIFvvEEE, ptr @_ZN5folly21CPUThreadPoolExecutor15addWithPriorityENS_8FunctionIFvvEEEa, ptr @_ZNK5folly21CPUThreadPoolExecutor16getNumPrioritiesEv, ptr @_ZN5folly24DefaultKeepAliveExecutor16keepAliveAcquireEv, ptr @_ZN5folly24DefaultKeepAliveExecutor16keepAliveReleaseEv, ptr @_ZN5folly21CPUThreadPoolExecutor3addENS_8FunctionIFvvEEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEES3_, ptr @_ZN5folly18ThreadPoolExecutor4stopEv, ptr @_ZN5folly18ThreadPoolExecutor4joinEv, ptr @_ZN5folly18ThreadPoolExecutor11addObserverESt10shared_ptrINS0_8ObserverEE, ptr @_ZN5folly18ThreadPoolExecutor14removeObserverESt10shared_ptrINS0_8ObserverEE, ptr @_ZN5folly18ThreadPoolExecutor18validateNumThreadsEm, ptr @_ZN5folly21CPUThreadPoolExecutor9threadRunESt10shared_ptrINS_18ThreadPoolExecutor6ThreadEE, ptr @_ZN5folly21CPUThreadPoolExecutor11stopThreadsEm, ptr @_ZN5folly18ThreadPoolExecutor10makeThreadEv, ptr @_ZNK5folly21CPUThreadPoolExecutor23getPendingTaskCountImplEv, ptr @_ZN5folly18ThreadPoolExecutor28handleObserverRegisterThreadEPNS0_12ThreadHandleERNS0_8ObserverE, ptr @_ZN5folly18ThreadPoolExecutor30handleObserverUnregisterThreadEPNS0_12ThreadHandleERNS0_8ObserverE, ptr @_ZN5folly21CPUThreadPoolExecutor3addENS_8FunctionIFvvEEEaNSt6chrono8durationIlSt5ratioILl1ELl1000EEEES3_, ptr @_ZN5folly21CPUThreadPoolExecutor20getThreadIdCollectorEv], [15 x ptr] [ptr inttoptr (i64 64 to ptr), ptr inttoptr (i64 64 to ptr), ptr inttoptr (i64 64 to ptr), ptr inttoptr (i64 64 to ptr), ptr inttoptr (i64 64 to ptr), ptr inttoptr (i64 64 to ptr), ptr inttoptr (i64 64 to ptr), ptr @_ZTIN5folly21CPUThreadPoolExecutorE, ptr @_ZTv0_n24_N5folly21CPUThreadPoolExecutorD1Ev, ptr @_ZTv0_n24_N5folly21CPUThreadPoolExecutorD0Ev, ptr @_ZTv0_n32_N5folly21CPUThreadPoolExecutor3addENS_8FunctionIFvvEEE, ptr @_ZTv0_n40_N5folly21CPUThreadPoolExecutor15addWithPriorityENS_8FunctionIFvvEEEa, ptr @_ZTv0_n48_NK5folly21CPUThreadPoolExecutor16getNumPrioritiesEv, ptr @_ZTv0_n56_N5folly24DefaultKeepAliveExecutor16keepAliveAcquireEv, ptr @_ZTv0_n64_N5folly24DefaultKeepAliveExecutor16keepAliveReleaseEv] }, align 8
@_ZTIN5folly21CPUThreadPoolExecutorE = external constant ptr
@_ZTCN5folly28StripedEDFThreadPoolExecutorE64_NS_18ThreadPoolExecutorE = constant { [28 x ptr], [15 x ptr] } { [28 x ptr] [ptr inttoptr (i64 -64 to ptr), ptr null, ptr null, ptr inttoptr (i64 -64 to ptr), ptr inttoptr (i64 -64 to ptr), ptr null, ptr null, ptr null, ptr @_ZTIN5folly18ThreadPoolExecutorE, ptr @_ZN5folly18ThreadPoolExecutorD1Ev, ptr @_ZN5folly18ThreadPoolExecutorD0Ev, ptr @__cxa_pure_virtual, ptr null, ptr null, ptr @_ZN5folly24DefaultKeepAliveExecutor16keepAliveAcquireEv, ptr @_ZN5folly24DefaultKeepAliveExecutor16keepAliveReleaseEv, ptr @_ZN5folly18ThreadPoolExecutor3addENS_8FunctionIFvvEEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEES3_, ptr @_ZN5folly18ThreadPoolExecutor4stopEv, ptr @_ZN5folly18ThreadPoolExecutor4joinEv, ptr @_ZN5folly18ThreadPoolExecutor11addObserverESt10shared_ptrINS0_8ObserverEE, ptr @_ZN5folly18ThreadPoolExecutor14removeObserverESt10shared_ptrINS0_8ObserverEE, ptr @_ZN5folly18ThreadPoolExecutor18validateNumThreadsEm, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN5folly18ThreadPoolExecutor10makeThreadEv, ptr @__cxa_pure_virtual, ptr @_ZN5folly18ThreadPoolExecutor28handleObserverRegisterThreadEPNS0_12ThreadHandleERNS0_8ObserverE, ptr @_ZN5folly18ThreadPoolExecutor30handleObserverUnregisterThreadEPNS0_12ThreadHandleERNS0_8ObserverE], [15 x ptr] [ptr inttoptr (i64 64 to ptr), ptr inttoptr (i64 64 to ptr), ptr null, ptr null, ptr inttoptr (i64 64 to ptr), ptr inttoptr (i64 64 to ptr), ptr inttoptr (i64 64 to ptr), ptr @_ZTIN5folly18ThreadPoolExecutorE, ptr @_ZTv0_n24_N5folly18ThreadPoolExecutorD1Ev, ptr @_ZTv0_n24_N5folly18ThreadPoolExecutorD0Ev, ptr @__cxa_pure_virtual, ptr @_ZN5folly8Executor15addWithPriorityENS_8FunctionIFvvEEEa, ptr @_ZNK5folly8Executor16getNumPrioritiesEv, ptr @_ZTv0_n56_N5folly24DefaultKeepAliveExecutor16keepAliveAcquireEv, ptr @_ZTv0_n64_N5folly24DefaultKeepAliveExecutor16keepAliveReleaseEv] }, align 8
@_ZTIN5folly18ThreadPoolExecutorE = external constant ptr
@_ZTCN5folly28StripedEDFThreadPoolExecutorE64_NS_24DefaultKeepAliveExecutorE = constant { [16 x ptr], [15 x ptr] } { [16 x ptr] [ptr inttoptr (i64 -64 to ptr), ptr null, ptr null, ptr inttoptr (i64 -64 to ptr), ptr inttoptr (i64 -64 to ptr), ptr inttoptr (i64 -64 to ptr), ptr null, ptr null, ptr @_ZTIN5folly24DefaultKeepAliveExecutorE, ptr @_ZN5folly24DefaultKeepAliveExecutorD1Ev, ptr @_ZN5folly24DefaultKeepAliveExecutorD0Ev, ptr null, ptr null, ptr null, ptr @_ZN5folly24DefaultKeepAliveExecutor16keepAliveAcquireEv, ptr @_ZN5folly24DefaultKeepAliveExecutor16keepAliveReleaseEv], [15 x ptr] [ptr inttoptr (i64 64 to ptr), ptr inttoptr (i64 64 to ptr), ptr null, ptr null, ptr null, ptr inttoptr (i64 64 to ptr), ptr inttoptr (i64 64 to ptr), ptr @_ZTIN5folly24DefaultKeepAliveExecutorE, ptr @_ZTv0_n24_N5folly24DefaultKeepAliveExecutorD1Ev, ptr @_ZTv0_n24_N5folly24DefaultKeepAliveExecutorD0Ev, ptr @__cxa_pure_virtual, ptr @_ZN5folly8Executor15addWithPriorityENS_8FunctionIFvvEEEa, ptr @_ZNK5folly8Executor16getNumPrioritiesEv, ptr @_ZTv0_n56_N5folly24DefaultKeepAliveExecutor16keepAliveAcquireEv, ptr @_ZTv0_n64_N5folly24DefaultKeepAliveExecutor16keepAliveReleaseEv] }, align 8
@_ZTIN5folly24DefaultKeepAliveExecutorE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN5folly24DefaultKeepAliveExecutorE, i32 0, i32 1, ptr @_ZTIN5folly8ExecutorE, i64 -18429 }, comdat, align 8
@_ZTSN5folly24DefaultKeepAliveExecutorE = linkonce_odr constant [35 x i8] c"N5folly24DefaultKeepAliveExecutorE\00", comdat, align 1
@_ZTIN5folly28StripedEDFThreadPoolExecutorE = constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN5folly28StripedEDFThreadPoolExecutorE, i32 2, i32 2, ptr @_ZTIN5folly20SoftRealTimeExecutorE, i64 2, ptr @_ZTIN5folly21CPUThreadPoolExecutorE, i64 16386 }, align 8
@_ZTSN5folly28StripedEDFThreadPoolExecutorE = constant [39 x i8] c"N5folly28StripedEDFThreadPoolExecutorE\00", align 1
@_ZTVN5folly12_GLOBAL__N_131StripedEDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEEE = internal constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN5folly12_GLOBAL__N_131StripedEDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEEE, ptr @_ZN5folly12_GLOBAL__N_131StripedEDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEED2Ev, ptr @_ZN5folly12_GLOBAL__N_131StripedEDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEED0Ev, ptr @_ZN5folly12_GLOBAL__N_131StripedEDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEE3addEOS3_, ptr @_ZN5folly13BlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEE15addWithPriorityEOS2_a, ptr @_ZN5folly13BlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEE16getNumPrioritiesEv, ptr @_ZN5folly12_GLOBAL__N_131StripedEDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4takeEv, ptr @_ZN5folly12_GLOBAL__N_131StripedEDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEE12try_take_forENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE, ptr @_ZN5folly12_GLOBAL__N_131StripedEDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4sizeEv, ptr @_ZN5folly12_GLOBAL__N_131StripedEDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEE15addWithDeadlineEOS3_m] }, align 8
@_ZTIN5folly12_GLOBAL__N_131StripedEDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly12_GLOBAL__N_131StripedEDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEEE, ptr @_ZTIN5folly12_GLOBAL__N_125BlockingQueueWithDeadlineINS_21CPUThreadPoolExecutor7CPUTaskEEE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5folly12_GLOBAL__N_131StripedEDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEEE = internal constant [93 x i8] c"N5folly12_GLOBAL__N_131StripedEDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEEE\00", align 1
@_ZTIN5folly12_GLOBAL__N_125BlockingQueueWithDeadlineINS_21CPUThreadPoolExecutor7CPUTaskEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly12_GLOBAL__N_125BlockingQueueWithDeadlineINS_21CPUThreadPoolExecutor7CPUTaskEEE, ptr @_ZTIN5folly13BlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEEE }, align 8
@_ZTSN5folly12_GLOBAL__N_125BlockingQueueWithDeadlineINS_21CPUThreadPoolExecutor7CPUTaskEEE = internal constant [87 x i8] c"N5folly12_GLOBAL__N_125BlockingQueueWithDeadlineINS_21CPUThreadPoolExecutor7CPUTaskEEE\00", align 1
@_ZTIN5folly13BlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5folly13BlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEEE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN5folly13BlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEEE = linkonce_odr constant [61 x i8] c"N5folly13BlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEEE\00", comdat, align 1
@.str = private unnamed_addr constant [15 x i8] c"numStripes > 0\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"/opt-bench/work/folly/folly/folly/synchronization/StripedThrottledLifoSem.h\00", align 1
@_ZTISt20bad_array_new_length = external constant ptr
@_ZTVSt20bad_array_new_length = external constant { [5 x ptr] }, align 8
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@_ZTISt9bad_alloc = external constant ptr
@.str.6 = private unnamed_addr constant [24 x i8] c"Check failed: inserted \00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"sem already subscribed\00", align 1
@_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance = linkonce_odr constant %"struct.folly::f14::detail::F14EmptyTagVector" { %"struct.std::array.104" zeroinitializer, i8 -1 }, comdat, align 16
@.str.8 = private unnamed_addr constant [11 x i8] c"rehashImpl\00", align 1
@_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmE30__folly_detail_safe_assert_arg = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.9, ptr @.str.10, i32 2479, ptr @.str.8, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8
@.str.9 = private unnamed_addr constant [33 x i8] c"hp.second == srcChunk->tag(srcI)\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"/opt-bench/work/folly/folly/folly/container/detail/F14Table.h\00", align 1
@_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE = linkonce_odr constant %"struct.folly::c_array" { [2 x i8] c"\01\00" }, comdat, align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTISt17bad_function_call = external constant ptr
@_ZTVSt17bad_function_call = external constant { [5 x ptr] }, align 8
@.str.12 = private unnamed_addr constant [7 x i8] c"setTag\00", align 1
@_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0 = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.13, ptr @.str.10, i32 779, ptr @.str.12, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8
@.str.13 = private unnamed_addr constant [18 x i8] c"tags_[index] == 0\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"max_size exceeded in small_vector\00", align 1
@.str.15 = private unnamed_addr constant [59 x i8] c"Requested new size exceeds size representable by size_type\00", align 1
@_ZTISt12length_error = external constant ptr
@_ZTVSt12length_error = external constant { [5 x ptr] }, align 8
@_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E = linkonce_odr local_unnamed_addr global { i8 } zeroinitializer, comdat, align 1
@_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv = linkonce_odr local_unnamed_addr global i8 0, comdat, align 1
@_ZGVZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv = linkonce_odr global i64 0, comdat, align 8
@_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE5flag_E = linkonce_odr local_unnamed_addr global { i8 } zeroinitializer, comdat, align 1
@_ZZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv = linkonce_odr local_unnamed_addr global i8 0, comdat, align 1
@_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv = linkonce_odr global i64 0, comdat, align 8
@_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE5flag_E = linkonce_odr local_unnamed_addr global { i8 } zeroinitializer, comdat, align 1
@_ZZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv = linkonce_odr local_unnamed_addr global i8 0, comdat, align 1
@_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv = linkonce_odr global i64 0, comdat, align 8
@_ZN5folly6detail19atomic_notification10parkingLotE = external global %"class.folly::ParkingLot", align 8
@.str.31 = private unnamed_addr constant [9 x i8] c"clearTag\00", align 1
@_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.32, ptr @.str.10, i32 784, ptr @.str.31, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8
@.str.32 = private unnamed_addr constant [18 x i8] c"tags_[index] != 0\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"erased == 1\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"sem was not subscribed\00", align 1
@_ZN5folly13variadic_noopE = linkonce_odr constant %"struct.folly::variadic_noop_fn" zeroinitializer, comdat, align 1
@_ZTIN5folly22OptionalEmptyExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly22OptionalEmptyExceptionE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN5folly22OptionalEmptyExceptionE = linkonce_odr constant [33 x i8] c"N5folly22OptionalEmptyExceptionE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTVN5folly22OptionalEmptyExceptionE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly22OptionalEmptyExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN5folly22OptionalEmptyExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.42 = private unnamed_addr constant [35 x i8] c"Empty Optional cannot be unwrapped\00", align 1
@_ZN5folly6detail11MemoryIdler18defaultIdleTimeoutE = external local_unnamed_addr global %"class.folly::AtomicStruct.178", align 8
@.str.44 = private unnamed_addr constant [77 x i8] c"/opt-bench/work/folly/folly/folly/executors/StripedEDFThreadPoolExecutor.cpp\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"Check failed: node \00", align 1
@_ZTVN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEEE = internal constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEEE, ptr @_ZN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEED2Ev, ptr @_ZN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEED0Ev, ptr @_ZN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEE3addEOS3_, ptr @_ZN5folly13BlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEE15addWithPriorityEOS2_a, ptr @_ZN5folly13BlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEE16getNumPrioritiesEv, ptr @_ZN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4takeEv, ptr @_ZN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEE12try_take_forENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE, ptr @_ZN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4sizeEv, ptr @_ZN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEE15addWithDeadlineEOS3_m] }, align 8
@_ZTIN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEEE, ptr @_ZTIN5folly12_GLOBAL__N_125BlockingQueueWithDeadlineINS_21CPUThreadPoolExecutor7CPUTaskEEE }, align 8
@_ZTSN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEEE = internal constant [86 x i8] c"N5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEEE\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"ThreadPoolExecutor: func\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN5folly18ThreadPoolExecutor6ThreadESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5folly18ThreadPoolExecutor6ThreadESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5folly18ThreadPoolExecutor6ThreadESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5folly18ThreadPoolExecutor6ThreadESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5folly18ThreadPoolExecutor6ThreadESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5folly18ThreadPoolExecutor6ThreadESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5folly18ThreadPoolExecutor6ThreadESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5folly18ThreadPoolExecutor6ThreadESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5folly18ThreadPoolExecutor6ThreadESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [99 x i8] c"St23_Sp_counted_ptr_inplaceIN5folly18ThreadPoolExecutor6ThreadESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN5folly18ThreadPoolExecutor6ThreadE = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5folly18ThreadPoolExecutor6ThreadE, ptr @_ZN5folly18ThreadPoolExecutor6ThreadD2Ev, ptr @_ZN5folly18ThreadPoolExecutor6ThreadD0Ev] }, comdat, align 8
@_ZN5folly18ThreadPoolExecutor6Thread6nextIdE = external global %"struct.std::atomic.7", align 8
@_ZTIN5folly18ThreadPoolExecutor6ThreadE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly18ThreadPoolExecutor6ThreadE, ptr @_ZTIN5folly18ThreadPoolExecutor12ThreadHandleE }, comdat, align 8
@_ZTSN5folly18ThreadPoolExecutor6ThreadE = linkonce_odr constant [36 x i8] c"N5folly18ThreadPoolExecutor6ThreadE\00", comdat, align 1
@_ZTIN5folly18ThreadPoolExecutor12ThreadHandleE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5folly18ThreadPoolExecutor12ThreadHandleE }, comdat, align 8
@_ZTSN5folly18ThreadPoolExecutor12ThreadHandleE = linkonce_odr constant [43 x i8] c"N5folly18ThreadPoolExecutor12ThreadHandleE\00", comdat, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@llvm.compiler.used = appending global [2 x ptr] [ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj], section "llvm.metadata"

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly20SoftRealTimeExecutorD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #40
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly20SoftRealTimeExecutorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #40
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

declare void @_ZN5folly8Executor15addWithPriorityENS_8FunctionIFvvEEEa(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 16, i8 noundef signext) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i8 @_ZNK5folly8Executor16getNumPrioritiesEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN5folly8Executor16keepAliveAcquireEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN5folly8Executor16keepAliveReleaseEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN5folly21CPUThreadPoolExecutorD1Ev(ptr noundef nonnull align 64 dereferenceable(2588)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN5folly21CPUThreadPoolExecutorD0Ev(ptr noundef nonnull align 64 dereferenceable(2588)) unnamed_addr #3

declare void @_ZN5folly21CPUThreadPoolExecutor3addENS_8FunctionIFvvEEE(ptr noundef nonnull align 64 dereferenceable(2588), ptr noundef align 16) unnamed_addr #1

declare void @_ZN5folly21CPUThreadPoolExecutor15addWithPriorityENS_8FunctionIFvvEEEa(ptr noundef nonnull align 64 dereferenceable(2588), ptr noundef align 16, i8 noundef signext) unnamed_addr #1

declare noundef zeroext i8 @_ZNK5folly21CPUThreadPoolExecutor16getNumPrioritiesEv(ptr noundef nonnull align 64 dereferenceable(2588)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly24DefaultKeepAliveExecutor16keepAliveAcquireEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8 ; 0 uses
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly24DefaultKeepAliveExecutor16keepAliveReleaseEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.c = atomicrmw add ptr %i.b, i64 -1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_ZN5folly5BatonILb1ESt6atomicE4postEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load atomic i32, ptr %i.e acquire, align 8
  switch i32 %i.f, label %bb.d [
    i32 0, label %bb.c
    i32 4, label %_ZN5folly5BatonILb1ESt6atomicE4postEv.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = cmpxchg ptr %i.e, i32 0, i32 1 release monotonic, align 4 ; 2 uses
  %i.h = extractvalue { i32, i1 } %i.g, 1
  %i.i = extractvalue { i32, i1 } %i.g, 0
  %i.j = icmp eq i32 %i.i, 4
  %or.cond.i = select i1 %i.h, i1 true, i1 %i.j
  br i1 %or.cond.i, label %_ZN5folly5BatonILb1ESt6atomicE4postEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store atomic i32 3, ptr %i.e release, align 8
  %i.k = invoke noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull align 4 dereferenceable(4) %i.e, i32 noundef 1, i32 noundef -1)
          to label %_ZN5folly5BatonILb1ESt6atomicE4postEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #40
  unreachable

_ZN5folly5BatonILb1ESt6atomicE4postEv.exit:       ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

declare void @_ZN5folly21CPUThreadPoolExecutor3addENS_8FunctionIFvvEEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEES3_(ptr noundef nonnull align 64 dereferenceable(2588), ptr noundef align 16, i64, ptr noundef align 16) unnamed_addr #1

declare void @_ZN5folly18ThreadPoolExecutor4stopEv(ptr noundef nonnull align 64 dereferenceable(496)) unnamed_addr #1

declare void @_ZN5folly18ThreadPoolExecutor4joinEv(ptr noundef nonnull align 64 dereferenceable(496)) unnamed_addr #1

declare void @_ZN5folly18ThreadPoolExecutor11addObserverESt10shared_ptrINS0_8ObserverEE() unnamed_addr

declare void @_ZN5folly18ThreadPoolExecutor14removeObserverESt10shared_ptrINS0_8ObserverEE() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly18ThreadPoolExecutor18validateNumThreadsEm(ptr noundef nonnull align 64 dereferenceable(496) %0, i64 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN5folly21CPUThreadPoolExecutor9threadRunESt10shared_ptrINS_18ThreadPoolExecutor6ThreadEE(ptr noundef nonnull align 64 dereferenceable(2588), ptr noundef align 8) unnamed_addr #1

declare void @_ZN5folly21CPUThreadPoolExecutor11stopThreadsEm(ptr noundef nonnull align 64 dereferenceable(2588), i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly18ThreadPoolExecutor10makeThreadEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 64 dereferenceable(496) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1788)
  store ptr null, ptr %0, align 8, !tbaa !1791, !alias.scope !1788
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noalias noundef nonnull align 64 dereferenceable(128) ptr @_ZnwmSt11align_val_t(i64 noundef 128, i64 noundef 64) #41, !noalias !1792 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !116, !noalias !1788
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.d, align 4, !tbaa !117, !noalias !1788
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5folly18ThreadPoolExecutor6ThreadESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 64, !tbaa !119, !noalias !1788
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly18ThreadPoolExecutor6ThreadE, i64 16), ptr %i.e, align 64, !tbaa !119, !noalias !1788
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.g = atomicrmw add ptr @_ZN5folly18ThreadPoolExecutor6Thread6nextIdE, i64 1 seq_cst, align 8, !noalias !1788
  store i64 %i.g, ptr %i.f, align 8, !tbaa !1805, !noalias !1788
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, i8 0, i64 16, i1 false), !noalias !1788
  store i8 1, ptr %i.i, align 32, !tbaa !1806, !noalias !1788
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.k = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34, !noalias !1788
  store i64 %i.k, ptr %i.j, align 8, !tbaa !125, !noalias !1788
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %i.l, i8 0, i64 9, i1 false), !noalias !1788
  store ptr %i.b, ptr %i.a, align 8, !tbaa !126, !alias.scope !1788
end_hunk_0
begin_hunk_1_@_ZN5folly12_GLOBAL__N_19makeQueueERKNS_28StripedEDFThreadPoolExecutor7OptionsE:bb.a

_ZN6google12Check_GTImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.i.i.i: ; preds = %.noexc2.i
  %i.n = invoke noundef ptr @_ZN6google17MakeCheckOpStringImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull @.str)
          to label %.noexc3.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3593 ; 2 uses

.noexc3.i:                                        ; preds = %_ZN6google12Check_GTImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.i.i.i
  store ptr %i.n, ptr %3, align 8, !tbaa !1672, !noalias !3593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34, !noalias !3593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34, !noalias !3593
  %.not3.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not3.i.i.i, label %_ZN6google12Check_GTImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge.i.i.i, label %.noexc7.i.i

_ZN6google12Check_GTImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge.i.i.i: ; preds = %.noexc3.i
  %.pre.i.i.i = load i64, ptr %i.k, align 8, !tbaa !1668, !noalias !3593
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google12Check_GTImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge.i.i.i, %_ZN6google12Check_GTImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread.i.i.i
  %i.o = phi i64 [ %.pre.i.i.i, %_ZN6google12Check_GTImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge.i.i.i ], [ %i.m, %_ZN6google12Check_GTImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34, !noalias !3593
  %i.p = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.o, i64 384) ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  br i1 %i.q, label %_ZN5folly11checked_mulImQsr3stdE13is_unsigned_vIT_EEEbPS1_S1_S1_.exit.i.i.i.i, label %bb.e, !prof !198

_ZN5folly11checked_mulImQsr3stdE13is_unsigned_vIT_EEEbPS1_S1_S1_.exit.i.i.i.i: ; preds = %bb.d
  invoke void @_ZN5folly6detail16throw_exception_ISt20bad_array_new_lengthJEEEvDpT0_() #18
          to label %.noexc4.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3593

.noexc4.i:                                        ; preds = %_ZN5folly11checked_mulImQsr3stdE13is_unsigned_vIT_EEEbPS1_S1_S1_.exit.i.i.i.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.r = extractvalue { i64, i1 } %i.p, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34, !noalias !3593
  store ptr null, ptr %i.a, align 8, !tbaa !218, !noalias !3593
  %i.s = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef %i.r) #34, !noalias !3593 ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  %i.u = tail call ptr @__errno_location() #43    ; 2 uses
  br i1 %i.t, label %_ZN5folly14aligned_mallocEmm.exit.i.i.i.i.i, label %_ZN5folly14aligned_mallocEmm.exit.thread.i.i.i.i.i

_ZN5folly14aligned_mallocEmm.exit.thread.i.i.i.i.i: ; preds = %bb.e
  store i32 %i.s, ptr %i.u, align 4, !tbaa !197, !noalias !3593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34, !noalias !3593
  br label %.noexc6.i.i

_ZN5folly14aligned_mallocEmm.exit.i.i.i.i.i:      ; preds = %bb.e
  store i32 0, ptr %i.u, align 4, !tbaa !197, !noalias !3593
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !218, !noalias !3593 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34, !noalias !3593
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %.noexc6.i.i, label %_ZN5folly18checkedArrayMallocINS_23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEE6StripeEEEPT_m.exit.i.i.i

.noexc6.i.i:                                      ; preds = %_ZN5folly14aligned_mallocEmm.exit.i.i.i.i.i, %_ZN5folly14aligned_mallocEmm.exit.thread.i.i.i.i.i
  invoke void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #18
          to label %.noexc5.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3593

.noexc5.i:                                        ; preds = %.noexc6.i.i
  unreachable

_ZN5folly18checkedArrayMallocINS_23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEE6StripeEEEPT_m.exit.i.i.i: ; preds = %_ZN5folly14aligned_mallocEmm.exit.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !1673, !noalias !3593
  %.not4.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not4.i.i.i, label %_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEEC2ISt5tupleIJEEEEmRKT_RKNS_16ThrottledLifoSem7OptionsE.exit.i.i, label %.lr.ph.i.i.i

.noexc7.i.i:                                      ; preds = %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !3593
  invoke void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull @.str.1, i32 noundef 92, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc6.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3593

.noexc6.i:                                        ; preds = %.noexc7.i.i
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %4)
          to label %bb.f unwind label %bb.g, !noalias !3593 ; 0 uses

bb.f:                                             ; preds = %.noexc6.i
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #40, !noalias !3593
  unreachable

bb.g:                                             ; preds = %.noexc6.i
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #40, !noalias !3593
  unreachable

.lr.ph.i.i.i:                                     ; preds = %_ZN5folly18checkedArrayMallocINS_23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEE6StripeEEEPT_m.exit.i.i.i, %_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEE6StripeC2ISt5tupleIJEEEERKT_RKNS_16ThrottledLifoSem7OptionsE.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.am, %_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEE6StripeC2ISt5tupleIJEEEERKT_RKNS_16ThrottledLifoSem7OptionsE.exit.i.i.i ], [ %i.v, %_ZN5folly18checkedArrayMallocINS_23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEE6StripeEEEPT_m.exit.i.i.i ] ; 12 uses
  %.val.i.i.i = load i64, ptr %1, align 8, !tbaa !1669, !noalias !3593
  store i32 0, ptr %.05.i.i.i, align 4, !tbaa !3594, !noalias !3593
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  store i64 %.val.i.i.i, ptr %i.z, align 64, !tbaa !1669, !noalias !3593
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 128
  store i64 0, ptr %i.aa, align 64, !tbaa !125, !noalias !3593
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 192
  invoke void @_ZN5folly6detail17distributed_mutex16DistributedMutexISt6atomicLb1EEC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3593

.noexc7.i:                                        ; preds = %.lr.ph.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 200
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 3 uses
  store i64 0, ptr %i.ac, align 8, !noalias !3593
  store ptr %i.ad, ptr %i.ad, align 16, !tbaa !1676, !noalias !3593
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 216
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !1677, !noalias !3593
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 256
  store i64 0, ptr %i.af, align 64, !noalias !3593
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 320 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false), !alias.scope !3595, !noalias !3593
  invoke void @_ZN5folly6detail17distributed_mutex16DistributedMutexISt6atomicLb1EEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEE6StripeC2ISt5tupleIJEEEERKT_RKNS_16ThrottledLifoSem7OptionsE.exit.i.i.i unwind label %bb.h, !noalias !3593

bb.h:                                             ; preds = %.noexc7.i
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1676, !noalias !3596 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.ai
  br i1 %.not12.i.i.i.i.i.i.i.i, label %.body.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.06.013.i.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.aj, %bb.h ] ; 2 uses
  %i.ak = load ptr, ptr %.sroa.06.013.i.i.i.i.i.i.i.i, align 8, !tbaa !1676, !noalias !3593 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.013.i.i.i.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !3593
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.ai
  br i1 %.not.i.i.i.i.i.i.i.i, label %.body.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !81

_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEE6StripeC2ISt5tupleIJEEEERKT_RKNS_16ThrottledLifoSem7OptionsE.exit.i.i.i: ; preds = %.noexc7.i
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false), !alias.scope !3595, !noalias !3593
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 384 ; 2 uses
  %i.an = load ptr, ptr %i.w, align 8, !tbaa !1673, !noalias !3593
  %i.ao = load i64, ptr %i.k, align 8, !tbaa !1668, !noalias !3593
  %i.ap = getelementptr inbounds nuw [384 x i8], ptr %i.an, i64 %i.ao
  %.not.i.i.i = icmp eq ptr %i.am, %i.ap
  br i1 %.not.i.i.i, label %_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEEC2ISt5tupleIJEEEEmRKT_RKNS_16ThrottledLifoSem7OptionsE.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !3578

_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEEC2ISt5tupleIJEEEEmRKT_RKNS_16ThrottledLifoSem7OptionsE.exit.i.i: ; preds = %_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEE6StripeC2ISt5tupleIJEEEERKT_RKNS_16ThrottledLifoSem7OptionsE.exit.i.i.i, %_ZN5folly18checkedArrayMallocINS_23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEE6StripeEEEPT_m.exit.i.i.i
  invoke void @_ZN5folly31StripedThrottledLifoSemBalancer12ensureWorkerEv()
          to label %.noexc10.i.i unwind label %bb.aa, !noalias !3593

.noexc10.i.i:                                     ; preds = %_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEEC2ISt5tupleIJEEEEmRKT_RKNS_16ThrottledLifoSem7OptionsE.exit.i.i
  %i.aq = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZN5folly31StripedThrottledLifoSemBalancer8instanceEv()
          to label %.noexc11.i.i unwind label %bb.aa, !noalias !3593 ; 8 uses

.noexc11.i.i:                                     ; preds = %.noexc10.i.i
  %i.ar = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.aq) #34, !noalias !3593 ; 2 uses
  %.not.i.i.i9.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i9.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.noexc11.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ar) #44
          to label %.noexc12.i.i unwind label %bb.aa, !noalias !3593

.noexc12.i.i:                                     ; preds = %bb.i
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i:    ; preds = %.noexc11.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 88 ; 3 uses
  %i.at = ptrtoint ptr %i.k to i64                ; 2 uses
  %i.au = zext i64 %i.at to i128
  %i.av = mul nuw i128 %i.au, 14181476777654086739
  %i.aw = lshr i128 %i.av, 64
  %i.ax = trunc nuw i128 %i.aw to i64
  %i.ay = mul i64 %i.at, -4265267296055464877
  %i.az = xor i64 %i.ay, %i.ax
  %i.ba = mul i64 %i.az, -4265267296055464877     ; 2 uses
  %i.bb = lshr i64 %i.ba, 14
  %i.bc = and i64 %i.bb, 255
  %i.bd = lshr i64 %i.ba, 22                      ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bc, i64 1) ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 104 ; 4 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !1680, !noalias !3597 ; 4 uses
  %i.bg = lshr i64 %i.bf, 8                       ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i, label %..thread34_crit_edge.i.i.i.i.i.i, label %bb.j

..thread34_crit_edge.i.i.i.i.i.i:                 ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  %.pre.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !1686, !noalias !3597
  %.pre57.i.i.i.i.i.i = shl nuw i64 1, %i.bf
  br label %.thread34.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i
  %i.bh = shl nuw nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 1
  %i.bi = or disjoint i64 %i.bh, 1
  %i.bj = trunc nuw i64 %.sroa.speculated.i.i.i.i.i.i.i.i to i8
  %i.bk = insertelement <16 x i8> poison, i8 %i.bj, i64 0
  %i.bl = shufflevector <16 x i8> %i.bk, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bm = and i64 %i.bf, 255                      ; 4 uses
  %i.bn = shl nuw i64 1, %i.bm                    ; 3 uses
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.bm
  %i.bo = xor i64 %notmask.i.i.i.i.i.i.i, -1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1686, !noalias !3597 ; 3 uses
  %i.br = load ptr, ptr %i.as, align 8, !noalias !3597
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  %.023.i47.i.i.i.i.i.i = phi i64 [ %i.bn, %bb.j ], [ %i.cq, %bb.m ]
  %.025.i46.i.i.i.i.i.i = phi i64 [ %i.bd, %bb.j ], [ %i.cr, %bb.m ] ; 2 uses
  %i.bs = and i64 %.025.i46.i.i.i.i.i.i, %i.bo
  %i.bt = shl nuw nsw i64 %i.bs, 6
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bt ; 3 uses
  %i.bv = load <16 x i8>, ptr %i.bu, align 16, !noalias !3597 ; 2 uses
  %i.bw = icmp eq <16 x i8> %i.bv, %i.bl
  %i.bx = bitcast <16 x i1> %i.bw to i16
  %i.by = zext i16 %i.bx to i32                   ; 2 uses
  %i.bz = and i32 %i.by, 4095
  %.not36.i.i.i.i.i.i = icmp eq i32 %i.bz, 0
  %i.ca = extractelement <16 x i8> %i.bv, i64 15
  br i1 %.not36.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.k
  %5 = icmp ne ptr %i.bu, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %5)
  br label %bb.l

bb.l:                                             ; preds = %.critedge.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.sroa.09.0.i.i.i.i.i.i = phi i32 [ %i.cn, %.critedge.i.i.i.i.i.i.i ], [ %i.by, %.preheader.i.i.i.i.i.i ] ; 4 uses
  %i.cb = icmp ne i32 %.sroa.09.0.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.cb)
  %i.cc = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.09.0.i.i.i.i.i.i, i1 true)
  %i.cd = shl nuw nsw i32 %i.cc, 2
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr i8, ptr %i.bu, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cf, i64 16
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !197, !noalias !3597
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [80 x i8], ptr %i.br, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !218, !noalias !3597
  %i.cl = icmp eq ptr %i.k, %i.ck
  br i1 %i.cl, label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE11try_emplaceIJZNS_31StripedThrottledLifoSemBalancer9subscribeINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEEEvRNS_23StripedThrottledLifoSemIT_EEEUlvE_EEESt4pairINS1_23VectorContainerIteratorIPSP_IKS4_S7_EEEbEOS4_DpOT_.exit.i.i.i, label %.critedge.i.i.i.i.i.i.i, !prof !1687

.critedge.i.i.i.i.i.i.i:                          ; preds = %bb.l
  %i.cm = add nuw nsw i32 %.sroa.09.0.i.i.i.i.i.i, 65535
  %i.cn = and i32 %i.cm, %.sroa.09.0.i.i.i.i.i.i  ; 2 uses
  %i.co = and i32 %i.cn, 4094
  %.not37.i.i.i.i.i.i = icmp eq i32 %i.co, 0
  br i1 %.not37.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %bb.l, !llvm.loop !82

.loopexit.i.i.i.i.i.i:                            ; preds = %.critedge.i.i.i.i.i.i.i, %bb.k
  %i.cp = icmp eq i8 %i.ca, 0
  br i1 %i.cp, label %.thread34.i.i.i.i.i.i, label %bb.m, !prof !1687

bb.m:                                             ; preds = %.loopexit.i.i.i.i.i.i
  %i.cq = add i64 %.023.i47.i.i.i.i.i.i, -1       ; 2 uses
  %i.cr = add i64 %i.bi, %.025.i46.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.thread34.i.i.i.i.i.i, label %bb.k, !llvm.loop !83

.thread34.i.i.i.i.i.i:                            ; preds = %bb.m, %.loopexit.i.i.i.i.i.i, %..thread34_crit_edge.i.i.i.i.i.i
  %.pre-phi58.i.i.i.i.i.i = phi i64 [ %.pre57.i.i.i.i.i.i, %..thread34_crit_edge.i.i.i.i.i.i ], [ %i.bn, %.loopexit.i.i.i.i.i.i ], [ %i.bn, %bb.m ] ; 2 uses
  %.pre-phi.i.i.i.i.i.i = phi i64 [ %i.bf, %..thread34_crit_edge.i.i.i.i.i.i ], [ %i.bm, %.loopexit.i.i.i.i.i.i ], [ %i.bm, %bb.m ]
  %i.cs = phi ptr [ %.pre.i.i.i.i.i.i, %..thread34_crit_edge.i.i.i.i.i.i ], [ %i.bq, %.loopexit.i.i.i.i.i.i ], [ %i.bq, %bb.m ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  %.0.copyload.i.i.i.i.i.i.i.i = load i16, ptr %i.ct, align 1, !noalias !3597
  %i.cu = zext i16 %.0.copyload.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.cv = add i64 %.pre-phi58.i.i.i.i.i.i, -1
  %i.cw = lshr i64 %i.cv, 12
  %i.cx = add nuw nsw i64 %i.cw, 1
  %i.cy = mul i64 %i.cx, %i.cu                    ; 2 uses
  %.not.i32.i.i.i.i.i.i = icmp ult i64 %i.bg, %i.cy
  br i1 %.not.i32.i.i.i.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.thread34.i.i.i.i.i.i
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 noundef %i.bg, i64 noundef %.pre-phi58.i.i.i.i.i.i, i64 noundef %i.cu, i64 noundef %i.cy)
          to label %.noexc.i.i.i unwind label %bb.w, !noalias !3593

.noexc.i.i.i:                                     ; preds = %bb.n
  %i.cz = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  %.pre54.i.i.i.i.i.i = load i64, ptr %i.be, align 8, !tbaa !1680, !noalias !3597
  %.pre55.i.i.i.i.i.i = load ptr, ptr %i.cz, align 8, !tbaa !1686, !noalias !3597
  %.pre59.i.i.i.i.i.i = and i64 %.pre54.i.i.i.i.i.i, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i.i, %.thread34.i.i.i.i.i.i
  %.pre-phi60.i.i.i.i.i.i = phi i64 [ %.pre-phi.i.i.i.i.i.i, %.thread34.i.i.i.i.i.i ], [ %.pre59.i.i.i.i.i.i, %.noexc.i.i.i ]
  %i.da = phi ptr [ %i.cs, %.thread34.i.i.i.i.i.i ], [ %.pre55.i.i.i.i.i.i, %.noexc.i.i.i ] ; 4 uses
  %notmask.i33.i.i.i.i.i.i = shl nsw i64 -1, %.pre-phi60.i.i.i.i.i.i
  %i.db = xor i64 %notmask.i33.i.i.i.i.i.i, -1    ; 2 uses
  %i.dc = and i64 %i.bd, %i.db
  %i.dd = shl nuw nsw i64 %i.dc, 6                ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dd ; 2 uses
  %i.df = load <16 x i8>, ptr %i.de, align 16, !tbaa !196, !noalias !3597
  %i.dg = icmp eq <16 x i8> %i.df, zeroinitializer
  %i.dh = bitcast <16 x i1> %i.dg to i16
  %i.di = and i16 %i.dh, 4095                     ; 2 uses
  %.not38.i.i.i.i.i.i = icmp eq i16 %i.di, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.o, label %bb.s

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i.i.i
  %i.dj = shl nuw nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 1
  %i.dk = or disjoint i64 %i.dj, 1
  br label %bb.p

bb.p:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i.i.i, %bb.o
  %i.dl = phi i64 [ %i.dd, %bb.o ], [ %i.ds, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i.i.i ]
  %.030.i.i.i.i.i.i = phi i64 [ %i.bd, %bb.o ], [ %i.dq, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i.i.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 15 ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !1690, !noalias !3597 ; 2 uses
  %.not.i34.i.i.i.i.i.i = icmp eq i8 %i.do, -2
  br i1 %.not.i34.i.i.i.i.i.i, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dp = add i8 %i.do, 1
  store i8 %i.dp, ptr %i.dn, align 1, !tbaa !1690, !noalias !3597
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i.i.i

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %i.dq = add i64 %i.dk, %.030.i.i.i.i.i.i        ; 2 uses
  %i.dr = and i64 %i.dq, %i.db
  %i.ds = shl nuw nsw i64 %i.dr, 6                ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ds
  %i.du = load <16 x i8>, ptr %i.dt, align 16, !noalias !3597 ; 2 uses
  %i.dv = icmp eq <16 x i8> %i.du, zeroinitializer
  %i.dw = bitcast <16 x i1> %i.dv to i16
  %i.dx = and i16 %i.dw, 4095                     ; 2 uses
  %.not39.i.i.i.i.i.i = icmp eq i16 %i.dx, 0
  br i1 %.not39.i.i.i.i.i.i, label %bb.p, label %bb.r, !llvm.loop !3585

bb.r:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ds ; 2 uses
  %i.dz = extractelement <16 x i8> %i.du, i64 14
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 14
  %i.eb = add i8 %i.dz, 16
  store i8 %i.eb, ptr %i.ea, align 2, !tbaa !1691, !noalias !3597
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i.i.i
  %.sroa.03.0.in.i.i.i.i.i.i = phi i16 [ %i.di, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i.i.i ], [ %i.dx, %bb.r ]
  %.1.i.i.i.i.i.i = phi ptr [ %i.de, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i.i.i ], [ %i.dy, %bb.r ] ; 3 uses
  %i.ec = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.03.0.in.i.i.i.i.i.i, i1 true)
  %i.ed = zext nneg i16 %i.ec to i64              ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 %i.ed ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !196, !noalias !3597
  %i.eg = icmp eq i8 %i.ef, 0
  br i1 %i.eg, label %_ZNSt10unique_ptrIN5folly12_GLOBAL__N_131StripedEDFPriorityBlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEESt14default_deleteIS5_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.11) #45, !noalias !3597
  unreachable

_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE11try_emplaceIJZNS_31StripedThrottledLifoSemBalancer9subscribeINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEEEvRNS_23StripedThrottledLifoSemIT_EEEUlvE_EEESt4pairINS1_23VectorContainerIteratorIPSP_IKS4_S7_EEEbEOS4_DpOT_.exit.i.i.i: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34, !noalias !3593
  invoke void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str.1, i32 noundef 314)
          to label %bb.u unwind label %bb.x, !noalias !3593

bb.u:                                             ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE11try_emplaceIJZNS_31StripedThrottledLifoSemBalancer9subscribeINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEEEvRNS_23StripedThrottledLifoSemIT_EEEUlvE_EEESt4pairINS1_23VectorContainerIteratorIPSP_IKS4_S7_EEEbEOS4_DpOT_.exit.i.i.i
  %i.eh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.v unwind label %bb.y, !noalias !3593 ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.ei = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr noundef nonnull @.str.6, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i unwind label %bb.y, !noalias !3593 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i: ; preds = %bb.v
  %i.ej = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr noundef nonnull @.str.7, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.i.i.i unwind label %bb.y, !noalias !3593 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #40, !noalias !3593
  unreachable

bb.w:                                             ; preds = %bb.n
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.x:                                             ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE11try_emplaceIJZNS_31StripedThrottledLifoSemBalancer9subscribeINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEEEvRNS_23StripedThrottledLifoSemIT_EEEUlvE_EEESt4pairINS1_23VectorContainerIteratorIPSP_IKS4_S7_EEEbEOS4_DpOT_.exit.i.i.i
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34, !noalias !3593
  br label %bb.z

bb.y:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i, %bb.v, %bb.u
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #40, !noalias !3593
  unreachable

bb.z:                                             ; preds = %bb.x, %bb.w
  %.pn.i.i.i = phi { ptr, i32 } [ %i.el, %bb.x ], [ %i.ek, %bb.w ]
  %i.en = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.aq) #34, !noalias !3593 ; 0 uses
  br label %.body13.i.i

bb.aa:                                            ; preds = %bb.i, %.noexc10.i.i, %_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEEC2ISt5tupleIJEEEEmRKT_RKNS_16ThrottledLifoSem7OptionsE.exit.i.i
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %.body13.i.i

.body13.i.i:                                      ; preds = %bb.aa, %bb.z
  %eh.lpad-body14.i.i = phi { ptr, i32 } [ %i.eo, %bb.aa ], [ %.pn.i.i.i, %bb.z ]
  %i.ep = load ptr, ptr %i.w, align 8, !tbaa !1673, !noalias !3593 ; 2 uses
  %i.eq = load i64, ptr %i.k, align 8, !tbaa !1668, !noalias !3593
  %.not9.i.i = icmp eq i64 %i.eq, 0
  br i1 %.not9.i.i, label %_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEED2Ev.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.body13.i.i, %_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEE6StripeD2Ev.exit.i.i
  %.010.i.i = phi ptr [ %i.ey, %_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEE6StripeD2Ev.exit.i.i ], [ %i.ep, %.body13.i.i ] ; 5 uses
  %i.er = load atomic i32, ptr %.010.i.i seq_cst, align 4, !noalias !3593 ; 0 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 128
  %i.et = load atomic i64, ptr %i.es seq_cst, align 8, !noalias !3593 ; 0 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 320
  call fastcc void @_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.eu) #34, !noalias !3593
  %i.ev = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 208 ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !1676, !noalias !3598 ; 2 uses
  %.not12.i.i.i.i.i.i.i = icmp eq ptr %i.ew, %i.ev
  br i1 %.not12.i.i.i.i.i.i.i, label %_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEE6StripeD2Ev.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.06.013.i.i.i.i.i.i.i = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ew, %.lr.ph.i.i ] ; 2 uses
  %i.ex = load ptr, ptr %.sroa.06.013.i.i.i.i.i.i.i, align 8, !tbaa !1676, !noalias !3593 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.013.i.i.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !3593
  %.not.i.i.i.i.i.i8.i = icmp eq ptr %i.ex, %i.ev
  br i1 %.not.i.i.i.i.i.i8.i, label %_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEE6StripeD2Ev.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !81

_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEE6StripeD2Ev.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 384 ; 2 uses
  %i.ez = load ptr, ptr %i.w, align 8, !tbaa !1673, !noalias !3593 ; 2 uses
  %i.fa = load i64, ptr %i.k, align 8, !tbaa !1668, !noalias !3593
  %i.fb = getelementptr inbounds nuw [384 x i8], ptr %i.ez, i64 %i.fa
  %.not.i.i = icmp eq ptr %i.ey, %i.fb
  br i1 %.not.i.i, label %_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEED2Ev.exit.i, label %.lr.ph.i.i, !llvm.loop !84

_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEED2Ev.exit.i: ; preds = %_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEE6StripeD2Ev.exit.i.i, %.body13.i.i
  %.lcssa.i.i = phi ptr [ %i.ep, %.body13.i.i ], [ %i.ez, %_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEE6StripeD2Ev.exit.i.i ]
  call void @free(ptr noundef %.lcssa.i.i) #34, !noalias !3593
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i, %.noexc7.i.i, %.noexc6.i.i, %_ZN5folly11checked_mulImQsr3stdE13is_unsigned_vIT_EEEbPS1_S1_S1_.exit.i.i.i.i, %_ZN6google12Check_GTImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.i.i.i, %.noexc.i, %bb.c
  %lpad.loopexit.split-lp55 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

common.resume:                                    ; preds = %.body.i3, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i4, %.body.i3 ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEED2Ev.exit.i, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp55, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %eh.lpad-body14.i.i, %_ZN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEED2Ev.exit.i ], [ %i.ah, %bb.h ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 24) #42, !noalias !3593
  br label %common.resume

_ZNSt10unique_ptrIN5folly12_GLOBAL__N_131StripedEDFPriorityBlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.s
  %i.fc = trunc nuw i64 %.sroa.speculated.i.i.i.i.i.i.i.i to i8
  store i8 %i.fc, ptr %i.ee, align 1, !tbaa !196, !noalias !3597
  %i.fd = shl nuw nsw i64 %i.ed, 2
  %i.fe = getelementptr i8, ptr %.1.i.i.i.i.i.i, i64 %i.fd
  %i.ff = getelementptr i8, ptr %i.fe, i64 16     ; 2 uses
  %6 = icmp ne ptr %.1.i.i.i.i.i.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %6)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ff) ]
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.as, align 8, !tbaa !1692, !noalias !3597, !nonnull !184, !noundef !184
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.be, align 8, !tbaa !1680, !noalias !3597 ; 3 uses
  %i.fg = lshr i64 %.val1.i.i.i.i.i.i.i.i, 8      ; 2 uses
  %i.fh = trunc i64 %i.fg to i32
  store i32 %i.fh, ptr %i.ff, align 4, !tbaa !197, !noalias !3597
  %i.fi = and i64 %i.fg, 4294967295
  %i.fj = getelementptr inbounds nuw [80 x i8], ptr %.val.i.i.i.i.i.i.i.i, i64 %i.fi ; 4 uses
  store ptr %i.k, ptr %i.fj, align 16, !tbaa !1695, !noalias !3597
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 72
  store ptr %i.k, ptr %i.fk, align 16, !tbaa !3599, !noalias !3597
  store ptr @_ZN5folly6detail8function5call_IKZNS_31StripedThrottledLifoSemBalancer9subscribeINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEEEvRNS_23StripedThrottledLifoSemIT_EEEUlvE_Lb1ELb0ElJEEET2_DpT3_RNS1_4DataE, ptr %i.fl, align 16, !tbaa !1697, !noalias !3597
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.fm, align 8, !tbaa !1698, !noalias !3597
  %i.fn = and i64 %.val1.i.i.i.i.i.i.i.i, -256
  %i.fo = add i64 %i.fn, 256
  %i.fp = and i64 %.val1.i.i.i.i.i.i.i.i, 255
  %i.fq = or disjoint i64 %i.fo, %i.fp
  store i64 %i.fq, ptr %i.be, align 8, !tbaa !1680, !noalias !3597
  %i.fr = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.aq) #34, !noalias !3593 ; 0 uses
  br label %bb.ae

bb.ab:                                            ; preds = %bb.b, %bb.a
  %i.fs = tail call noalias noundef nonnull align 64 dereferenceable(320) ptr @_ZnwmSt11align_val_t(i64 noundef 320, i64 noundef 64) #41, !noalias !3600 ; 12 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEEE, i64 16), ptr %i.fs, align 64, !tbaa !119, !noalias !3600
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 2 uses
  invoke void @_ZN5folly6detail17distributed_mutex16DistributedMutexISt6atomicLb1EEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ft)
          to label %.noexc.i5 unwind label %bb.ad, !noalias !3600

.noexc.i5:                                        ; preds = %bb.ab
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fu, i8 0, i64 16, i1 false), !noalias !3600
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 64
  %i.fw = load i64, ptr %1, align 8, !tbaa !1669, !noalias !3600
  store i64 %i.fw, ptr %i.fv, align 64, !tbaa !1669, !noalias !3600
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 128
  store i64 0, ptr %i.fx, align 64, !tbaa !125, !noalias !3600
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fs, i64 192
  invoke void @_ZN5folly6detail17distributed_mutex16DistributedMutexISt6atomicLb1EEC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.fy)
          to label %_ZNSt10unique_ptrIN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEESt14default_deleteIS5_EED2Ev.exit unwind label %bb.ac, !noalias !3600

bb.ac:                                            ; preds = %.noexc.i5
  %i.fz = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ft) #34, !noalias !3600
  br label %.body.i3

bb.ad:                                            ; preds = %bb.ab
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %.body.i3

.body.i3:                                         ; preds = %bb.ad, %bb.ac
  %eh.lpad-body.i4 = phi { ptr, i32 } [ %i.ga, %bb.ad ], [ %i.fz, %bb.ac ]
  tail call void @_ZdlPvSt11align_val_t(ptr noundef nonnull %i.fs, i64 noundef 64) #42, !noalias !3600
  br label %common.resume

_ZNSt10unique_ptrIN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %.noexc.i5
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fs, i64 200
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fs, i64 208 ; 3 uses
  store i64 0, ptr %i.gb, align 8, !noalias !3600
  store ptr %i.gc, ptr %i.gc, align 16, !tbaa !1676, !noalias !3600
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fs, i64 216
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !1677, !noalias !3600
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fs, i64 256
  store i64 0, ptr %i.ge, align 64, !noalias !3600
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt10unique_ptrIN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEESt14default_deleteIS5_EED2Ev.exit, %_ZNSt10unique_ptrIN5folly12_GLOBAL__N_131StripedEDFPriorityBlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEESt14default_deleteIS5_EED2Ev.exit
  %storemerge = phi ptr [ %i.j, %_ZNSt10unique_ptrIN5folly12_GLOBAL__N_131StripedEDFPriorityBlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEESt14default_deleteIS5_EED2Ev.exit ], [ %i.fs, %_ZNSt10unique_ptrIN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEESt14default_deleteIS5_EED2Ev.exit ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !3602
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZN5folly21CPUThreadPoolExecutorC2ESt4pairImmESt10unique_ptrINS_13BlockingQueueINS0_7CPUTaskEEESt14default_deleteIS6_EESt10shared_ptrINS_13ThreadFactoryEENS0_7OptionsE(ptr noundef nonnull align 64 dereferenceable(2588), ptr noundef, i64, i64, ptr noundef align 8, ptr noundef align 8, i32) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5folly13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !116
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !117
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !119
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !call_target !135, !inline_history !85
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !119
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !call_target !150, !inline_history !85
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !196
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !197
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !198

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN5folly17LLCAccessSpreader3getEv() local_unnamed_addr #1

declare noundef i64 @_ZNK5folly17LLCAccessSpreader10numStripesEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly12_GLOBAL__N_131StripedEDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %"struct.google::CheckOpString", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %2 = alloca %"class.google::LogMessageFatal", align 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZN5folly31StripedThrottledLifoSemBalancer8instanceEv()
          to label %.noexc unwind label %bb.o     ; 4 uses

.noexc:                                           ; preds = %bb.a
  %i.f = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #34 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %.noexc
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.f) #44
          to label %.noexc1 unwind label %bb.o

.noexc1:                                          ; preds = %bb.b
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store ptr %i.d, ptr %i.a, align 8, !tbaa !218
  %i.h = invoke noundef i64 @_ZN5folly3f146detail16F14VectorMapImplIPvNS_8FunctionIKFlvEEENS_23HeterogeneousAccessHashIS3_vEENS_26HeterogeneousAccessEqualToIS3_vEESaISt4pairIKS3_S6_EESt17integral_constantIbLb1EEE18eraseUnderlyingKeyIS3_RKNS_16variadic_noop_fnEEEmRKT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5folly13variadic_noopE)
          to label %_ZN5folly3f146detail16F14VectorMapImplIPvNS_8FunctionIKFlvEEENS_23HeterogeneousAccessHashIS3_vEENS_26HeterogeneousAccessEqualToIS3_vEESaISt4pairIKS3_S6_EESt17integral_constantIbLb1EEE5eraseERSC_.exit.i unwind label %bb.d ; 2 uses

_ZN5folly3f146detail16F14VectorMapImplIPvNS_8FunctionIKFlvEEENS_23HeterogeneousAccessHashIS3_vEENS_26HeterogeneousAccessEqualToIS3_vEESaISt4pairIKS3_S6_EESt17integral_constantIbLb1EEE5eraseERSC_.exit.i: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store i64 %i.h, ptr %i.b, align 8, !tbaa !1669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  store i32 1, ptr %i.c, align 4, !tbaa !197
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %_ZN6google12Check_EQImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread.i, label %bb.c, !prof !1687

_ZN6google12Check_EQImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread.i: ; preds = %_ZN5folly3f146detail16F14VectorMapImplIPvNS_8FunctionIKFlvEEENS_23HeterogeneousAccessHashIS3_vEENS_26HeterogeneousAccessEqualToIS3_vEESaISt4pairIKS3_S6_EESt17integral_constantIbLb1EEE5eraseERSC_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %bb.n

bb.c:                                             ; preds = %_ZN5folly3f146detail16F14VectorMapImplIPvNS_8FunctionIKFlvEEENS_23HeterogeneousAccessHashIS3_vEENS_26HeterogeneousAccessEqualToIS3_vEESaISt4pairIKS3_S6_EESt17integral_constantIbLb1EEE5eraseERSC_.exit.i
  %i.j = invoke noundef ptr @_ZN6google17MakeCheckOpStringImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull @.str.37)
          to label %_ZN6google12Check_EQImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.i unwind label %bb.e ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNSo9_M_insertImEERSoT_

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #16

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt20bad_array_new_lengthJEEEvDpT0_() local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_array_new_length", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #34
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt20bad_array_new_length, i64 16), ptr %0, align 8, !tbaa !119
  invoke void @_ZN5folly15throw_exceptionISt20bad_array_new_lengthEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #34
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt20bad_array_new_lengthEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #34 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt20bad_array_new_length, i64 16), ptr %i.a, align 8, !tbaa !119
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt20bad_array_new_length, ptr nonnull @_ZNSt20bad_array_new_lengthD1Ev) #44
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #18

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noundef i32 @posix_memalign(ptr noundef writeonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #20

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #34
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %0, align 8, !tbaa !119
  invoke void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #34
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #34 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.a, align 8, !tbaa !119
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #44
  unreachable
}

declare void @_ZN5folly6detail17distributed_mutex16DistributedMutexISt6atomicLb1EEC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #22 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #34 ; 0 uses
  tail call void @_ZSt9terminatev() #40
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #23

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #24

declare void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN5folly31StripedThrottledLifoSemBalancer12ensureWorkerEv() local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(120) ptr @_ZN5folly31StripedThrottledLifoSemBalancer8instanceEv() local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #25

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #18
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1680
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.111", align 1   ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !1669
  store i64 %2, ptr %i.b, align 8, !tbaa !1669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1686 ; 5 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !1705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !1669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6                            ; 2 uses
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !1669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !1669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i53 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i53, ptr %i.g, align 8, !tbaa !1669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.ac = sub i64 0, %.0.i53
  %i.ad = and i64 %i.ac, -16                      ; 2 uses
  %i.ae = mul i64 %i.x, 80
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #46 ; 15 uses
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !1707
  %i.ah = load ptr, ptr %0, align 8, !tbaa !1692  ; 2 uses
  %i.ai = sub i64 0, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 2 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt10destroy_atISt4pairIKPvN5folly8FunctionIKFlvEEEEEvPT_.exit.i.i
  %.020.i.i = phi i64 [ %i.av, %_ZSt10destroy_atISt4pairIKPvN5folly8FunctionIKFlvEEEEEvPT_.exit.i.i ], [ 0, %bb.a ]
  %.01419.i.i = phi ptr [ %i.aw, %_ZSt10destroy_atISt4pairIKPvN5folly8FunctionIKFlvEEEEEvPT_.exit.i.i ], [ %i.ah, %bb.a ] ; 5 uses
  %.01518.i.i = phi ptr [ %i.ax, %_ZSt10destroy_atISt4pairIKPvN5folly8FunctionIKFlvEEEEEvPT_.exit.i.i ], [ %i.aj, %bb.a ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01518.i.i) ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.01419.i.i, i64 16 ; 2 uses
  %i.al = load ptr, ptr %.01419.i.i, align 8, !tbaa !218
  store ptr %i.al, ptr %.01518.i.i, align 16, !tbaa !1695
  %i.am = getelementptr inbounds nuw i8, ptr %.01518.i.i, i64 16 ; 2 uses
  store ptr null, ptr %i.am, align 16, !tbaa !196
  %i.an = getelementptr inbounds nuw i8, ptr %.01518.i.i, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %.01419.i.i, i64 64 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01518.i.i, i64 72
  %i.aq = getelementptr inbounds nuw i8, ptr %.01419.i.i, i64 72 ; 2 uses
  %i.ar = load <2 x ptr>, ptr %i.ao, align 16, !tbaa !218
  store <2 x ptr> %i.ar, ptr %i.an, align 16, !tbaa !218
  store ptr @_ZN5folly6detail8function14FunctionTraitsIKFlvEE10uninitCallERNS1_4DataE, ptr %i.ao, align 16, !tbaa !1697
  store ptr null, ptr %i.aq, align 8, !tbaa !1698
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !1698 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt10destroy_atISt4pairIKPvN5folly8FunctionIKFlvEEEEEvPT_.exit.i.i, label %_ZSt12construct_atISt4pairIKPvN5folly8FunctionIKFlvEEEEJS0_IOS1_OS6_EEEDTgsnwcvS1_Li0E_T_pispclsr3stdE7declvalIT0_EEEEPSB_DpOSC_.exit.i.i

_ZSt12construct_atISt4pairIKPvN5folly8FunctionIKFlvEEEEJS0_IOS1_OS6_EEEDTgsnwcvS1_Li0E_T_pispclsr3stdE7declvalIT0_EEEEPSB_DpOSC_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.at = tail call noundef i64 %i.as(i32 noundef 0, ptr noundef nonnull align 16 dereferenceable(64) %i.ak, ptr noundef nonnull align 16 dereferenceable(64) %i.am) #34, !inline_history !3611 ; 0 uses
  %.pre.i.i = load ptr, ptr %i.aq, align 8, !tbaa !1698 ; 2 uses
  %.not.i.i.i.i17.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i.i.i17.i.i, label %_ZSt10destroy_atISt4pairIKPvN5folly8FunctionIKFlvEEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt12construct_atISt4pairIKPvN5folly8FunctionIKFlvEEEEJS0_IOS1_OS6_EEEDTgsnwcvS1_Li0E_T_pispclsr3stdE7declvalIT0_EEEEPSB_DpOSC_.exit.i.i
  %i.au = tail call noundef i64 %.pre.i.i(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.ak, ptr noundef null) #34, !inline_history !3612 ; 0 uses
  br label %_ZSt10destroy_atISt4pairIKPvN5folly8FunctionIKFlvEEEEEvPT_.exit.i.i

_ZSt10destroy_atISt4pairIKPvN5folly8FunctionIKFlvEEEEEvPT_.exit.i.i: ; preds = %bb.b, %_ZSt12construct_atISt4pairIKPvN5folly8FunctionIKFlvEEEEJS0_IOS1_OS6_EEEDTgsnwcvS1_Li0E_T_pispclsr3stdE7declvalIT0_EEEEPSB_DpOSC_.exit.i.i, %.lr.ph.i.i
  %i.av = add nuw i64 %.020.i.i, 1                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01419.i.i, i64 80
  %i.ax = getelementptr inbounds nuw i8, ptr %.01518.i.i, i64 80
  %exitcond.not.i.i = icmp eq i64 %i.av, %1
  br i1 %exitcond.not.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %.lr.ph.i.i, !llvm.loop !88

_ZN5folly3f146detail21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit: ; preds = %_ZSt10destroy_atISt4pairIKPvN5folly8FunctionIKFlvEEEEEvPT_.exit.i.i, %bb.a
  store ptr %i.aj, ptr %0, align 8, !tbaa !1692
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !1708
  %.not.i54 = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i54, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.ay = icmp ult i64 %4, 8
  br i1 %i.ay, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bw, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.az = shl nsw i64 %.08.i, 6
  %i.ba = getelementptr inbounds i8, ptr %i.ag, i64 %i.az
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  %i.bb = shl i64 %.08.i, 6
  %i.bc = getelementptr i8, ptr %i.ag, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  %i.be = shl i64 %.08.i, 6
  %i.bf = getelementptr i8, ptr %i.ag, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  %i.bh = shl i64 %.08.i, 6
  %i.bi = getelementptr i8, ptr %i.ag, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false)
  %i.bk = shl i64 %.08.i, 6
  %i.bl = getelementptr i8, ptr %i.ag, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.bn = shl i64 %.08.i, 6
  %i.bo = getelementptr i8, ptr %i.ag, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  %i.bq = shl i64 %.08.i, 6
  %i.br = getelementptr i8, ptr %i.ag, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bs, i8 0, i64 16, i1 false)
  %i.bt = shl i64 %.08.i, 6
  %i.bu = getelementptr i8, ptr %i.ag, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false)
  %i.bw = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !3613

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bw, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod176 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod176)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.bz, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bx = shl nsw i64 %.08.i.epil, 6
  %i.by = getelementptr inbounds i8, ptr %i.ag, i64 %i.bx
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.by, i8 0, i64 16, i1 false)
  %i.bz = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !3614

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZN5folly3f146detail21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %i.ca = trunc i64 %5 to i16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i16 %i.ca, ptr %i.cb, align 1
  store ptr %i.ag, ptr %i.k, align 8, !tbaa !1686
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !1680
  %i.cf = and i64 %i.ce, -256
  %i.cg = select i1 %.not.i54, i64 4294967295, i64 %i.cd
  %i.ch = or i64 %i.cf, %i.cg
  store i64 %i.ch, ptr %i.cc, align 8, !tbaa !1680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !1710
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !1712, !alias.scope !3621
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.ci, align 8, !tbaa !1714
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.484.0..sroa_idx, align 8, !tbaa !1716
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.585.0..sroa_idx, align 8, !tbaa !3622
  %.sroa.686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.686.0..sroa_idx, align 8, !tbaa !1716
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !3623
  %.sroa.887.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.887.0..sroa_idx, align 8, !tbaa !1716
  %.sroa.988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.988.0..sroa_idx, align 8, !tbaa !3624
  %.sroa.1089.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1089.0..sroa_idx, align 8, !tbaa !1716
  %.sroa.1190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1190.0..sroa_idx, align 8, !tbaa !3625
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1716
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1716
  br i1 %.not.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.y, %i.q
  br i1 %or.cond, label %.lr.ph131, label %bb.h

.lr.ph131:                                        ; preds = %bb.c
  %8 = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph131, %bb.g
  %.042129 = phi i64 [ 0, %.lr.ph131 ], [ %.143, %bb.g ] ; 4 uses
  %.044128 = phi i64 [ 0, %.lr.ph131 ], [ %i.cw, %bb.g ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 %.044128
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !196 ; 2 uses
  %.not109 = icmp eq i8 %i.ck, 0
  br i1 %.not109, label %bb.g, label %bb.e, !prof !198

bb.e:                                             ; preds = %bb.d
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.042129 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !196
  %i.cn = icmp eq i8 %i.cm, 0
  br i1 %i.cn, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.11) #45
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.e
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !196
  %i.co = shl i64 %.042129, 2
  %i.cp = getelementptr i8, ptr %i.ag, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 16
  call void @llvm.assume(i1 %8)
  %i.cr = shl i64 %.044128, 2
  %i.cs = getelementptr i8, ptr %i.l, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 16
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !197
  store i32 %i.cu, ptr %i.cq, align 4, !tbaa !197
  %i.cv = add nuw i64 %.042129, 1
  br label %bb.g

bb.g:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, %bb.d
  %.143 = phi i64 [ %i.cv, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ], [ %.042129, %bb.d ] ; 2 uses
  %i.cw = add i64 %.044128, 1
  %i.cx = icmp ult i64 %.143, %1
  br i1 %i.cx, label %bb.d, label %.loopexit, !llvm.loop !3617

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %7, i8 0, i64 %4, i1 false)
  br label %.lr.ph127.preheader

bb.i:                                             ; preds = %bb.h
  %i.cy = icmp slt i64 %4, 0
  br i1 %i.cy, label %bb.j, label %bb.k, !prof !198

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt17__throw_bad_allocv() #44
          to label %.noexc unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.cz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %bb.l unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit ; 3 uses

bb.l:                                             ; preds = %bb.k
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1705
  %.pre139 = load i64, ptr %i.b, align 8, !tbaa !1669
  %.pre140 = load i64, ptr %i.a, align 8, !tbaa !1669 ; 2 uses
  %.pre142 = shl i64 %.pre139, 6
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cz, i8 0, i64 %4, i1 false)
  %.not46124 = icmp eq i64 %.pre140, 0
  br i1 %.not46124, label %._crit_edge.thread, label %.lr.ph127.preheader

.lr.ph127.preheader:                              ; preds = %.thread, %bb.l
  %.0101157 = phi ptr [ %7, %.thread ], [ %i.cz, %bb.l ] ; 4 uses
  %i.da = phi ptr [ %i.l, %.thread ], [ %.pre, %bb.l ]
  %i.db = phi i64 [ %1, %.thread ], [ %.pre140, %bb.l ]
  %.pre-phi156 = phi i64 [ %i.t, %.thread ], [ %.pre142, %bb.l ]
  %i.dc = getelementptr i8, ptr %i.da, i64 %.pre-phi156
  br label %.lr.ph127

.loopexit110:                                     ; preds = %bb.u, %.lr.ph127
  %.1.lcssa = phi i64 [ %.0125, %.lr.ph127 ], [ %i.du, %bb.u ] ; 2 uses
  %.not46 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not46, label %._crit_edge, label %.lr.ph127, !llvm.loop !3618

.lr.ph127:                                        ; preds = %.lr.ph127.preheader, %.loopexit110
  %.034126.pn = phi ptr [ %.034126, %.loopexit110 ], [ %i.dc, %.lr.ph127.preheader ]
  %.0125 = phi i64 [ %.1.lcssa, %.loopexit110 ], [ %i.db, %.lr.ph127.preheader ] ; 2 uses
  %.034126 = getelementptr i8, ptr %.034126.pn, i64 -64 ; 6 uses
  %i.dd = load <16 x i8>, ptr %.034126, align 16, !tbaa !196
  %i.de = icmp eq <16 x i8> %i.dd, zeroinitializer
  %i.df = bitcast <16 x i1> %i.de to i16
  %i.dg = and i16 %i.df, 4095                     ; 2 uses
  %i.dh = xor i16 %i.dg, 4095
  %.sroa.070.0.extract.trunc = zext nneg i16 %i.dh to i32 ; 2 uses
  %cond = icmp eq i16 %i.dg, 4095
  br i1 %cond, label %.loopexit110, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph127
  %9 = icmp ne ptr %.034126, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %9)
  %i.di = load ptr, ptr %0, align 8, !tbaa !1692
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.067.0117 = phi i32 [ %.sroa.070.0.extract.trunc, %.lr.ph ], [ %.sroa.067.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %.sroa.8.0116 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %i.dj = and i32 %.sroa.067.0117, 1
  %.not.i56 = icmp eq i32 %i.dj, 0
  br i1 %.not.i56, label %bb.n, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !198

bb.n:                                             ; preds = %bb.m
  %i.dk = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.067.0117, i1 true) ; 2 uses
  %i.dl = add i32 %i.dk, %.sroa.8.0116
  %i.dm = add nuw nsw i32 %i.dk, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.m, %bb.n
  %.sroa.8.1.in = phi i32 [ %i.dl, %bb.n ], [ %.sroa.8.0116, %bb.m ] ; 2 uses
  %.pn108 = phi i32 [ %i.dm, %bb.n ], [ 1, %bb.m ]
  %.sroa.067.1 = lshr i32 %.sroa.067.0117, %.pn108 ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %i.dn = zext i32 %.sroa.8.1.in to i64
  %i.do = shl nuw nsw i64 %i.dn, 2
  %i.dp = getelementptr i8, ptr %.034126, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.dp, i64 16
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !197
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [80 x i8], ptr %i.di, i64 %i.ds
  call void @llvm.prefetch.p0(ptr %i.dt, i32 0, i32 3, i32 1)
  %.not105 = icmp eq i32 %.sroa.067.1, 0
  br i1 %.not105, label %.lr.ph122, label %bb.m

.lr.ph122:                                        ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %bb.u
  %.1121 = phi i64 [ %i.du, %bb.u ], [ %.0125, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ]
  %.sroa.070.0120 = phi i32 [ %.sroa.070.1, %bb.u ], [ %.sroa.070.0.extract.trunc, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %.sroa.872.0119 = phi i32 [ %.sroa.872.1, %bb.u ], [ 0, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %i.du = add i64 %.1121, -1                      ; 2 uses
  %i.dv = and i32 %.sroa.070.0120, 1
  %.not.i58 = icmp eq i32 %i.dv, 0
  br i1 %.not.i58, label %bb.o, label %bb.p, !prof !198

bb.o:                                             ; preds = %.lr.ph122
  %i.dw = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.070.0120, i1 true) ; 2 uses
  %i.dx = add i32 %i.dw, %.sroa.872.0119
  %i.dy = add nuw nsw i32 %i.dw, 1
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph122, %bb.o
  %.sroa.872.1.in = phi i32 [ %i.dx, %bb.o ], [ %.sroa.872.0119, %.lr.ph122 ] ; 2 uses
  %.pn107 = phi i32 [ %i.dy, %bb.o ], [ 1, %.lr.ph122 ]
  %.sroa.070.1 = lshr i32 %.sroa.070.0120, %.pn107 ; 2 uses
  %.sroa.872.1 = add i32 %.sroa.872.1.in, 1
  %i.dz = zext i32 %.sroa.872.1.in to i64         ; 2 uses
  %i.ea = shl nuw nsw i64 %i.dz, 2
  %i.eb = getelementptr i8, ptr %.034126, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.eb, i64 16     ; 2 uses
  %i.ed = load ptr, ptr %0, align 8, !tbaa !1692
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !197
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [80 x i8], ptr %i.ed, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !218
  %i.ei = ptrtoint ptr %i.eh to i64               ; 2 uses
  %i.ej = zext i64 %i.ei to i128
  %i.ek = mul nuw i128 %i.ej, 14181476777654086739
  %i.el = lshr i128 %i.ek, 64
  %i.em = trunc nuw i128 %i.el to i64
  %i.en = mul i64 %i.ei, -4265267296055464877
  %i.eo = xor i64 %i.en, %i.em
  %i.ep = mul i64 %i.eo, -4265267296055464877     ; 2 uses
  %i.eq = lshr i64 %i.ep, 14
  %i.er = and i64 %i.eq, 255
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.er, i64 1) ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.034126, i64 %i.dz
  %i.et = load i8, ptr %i.es, align 1, !tbaa !196
  %i.eu = zext i8 %i.et to i64
  %i.ev = icmp eq i64 %.sroa.speculated.i.i, %i.eu
  br i1 %i.ev, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.11) #45
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ew = lshr i64 %i.ep, 22
  %i.ex = shl nuw nsw i64 %.sroa.speculated.i.i, 1
  %i.ey = or disjoint i64 %i.ex, 1
  %i.ez = load i64, ptr %i.cc, align 8, !tbaa !1680
  %i.fa = and i64 %i.ez, 255
  %notmask.i.i = shl nsw i64 -1, %i.fa
  %i.fb = xor i64 %notmask.i.i, -1                ; 2 uses
  %i.fc = load ptr, ptr %i.k, align 8, !tbaa !1686 ; 2 uses
  %i.fd = and i64 %i.ew, %i.fb                    ; 4 uses
  %i.fe = shl nuw nsw i64 %i.fd, 6                ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.0101157, i64 %i.fd
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !196 ; 2 uses
  %i.fh = icmp ult i8 %i.fg, 12
  br i1 %i.fh, label %._crit_edge.i, label %.lr.ph.i61, !prof !3626

.lr.ph.i61:                                       ; preds = %bb.r, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i
  %i.fi = phi i64 [ %i.fq, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ], [ %i.fe, %bb.r ]
  %i.fj = phi i64 [ %i.fp, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ], [ %i.fd, %bb.r ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fi
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 15 ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !1690 ; 2 uses
  %.not.i.i = icmp eq i8 %i.fm, -2
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i61
  %i.fn = add i8 %i.fm, 1
  store i8 %i.fn, ptr %i.fl, align 1, !tbaa !1690
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i: ; preds = %bb.s, %.lr.ph.i61
  %i.fo = add i64 %i.ey, %i.fj
  %i.fp = and i64 %i.fo, %i.fb                    ; 4 uses
  %i.fq = shl nuw nsw i64 %i.fp, 6                ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.0101157, i64 %i.fp
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !196 ; 2 uses
  %i.ft = icmp ult i8 %i.fs, 12
  br i1 %i.ft, label %._crit_edge.i, label %.lr.ph.i61, !prof !3627, !llvm.loop !3619

._crit_edge.i:                                    ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i, %bb.r
  %.lcssa22.i = phi i64 [ %i.fd, %bb.r ], [ %i.fp, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ]
  %.0.lcssa.i = phi i8 [ 0, %bb.r ], [ 16, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ]
  %.pn.i = phi i64 [ %i.fe, %bb.r ], [ %i.fq, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ]
  %.lcssa.i = phi i8 [ %i.fg, %bb.r ], [ %i.fs, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ] ; 2 uses
  %.lcssa21.i = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.pn.i ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0101157, i64 %.lcssa22.i
  %i.fv = add nuw nsw i8 %.lcssa.i, 1
  store i8 %i.fv, ptr %i.fu, align 1, !tbaa !196
  %i.fw = zext nneg i8 %.lcssa.i to i64           ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 %i.fw ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !196
  %i.fz = icmp eq i8 %i.fy, 0
  br i1 %i.fz, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge.i
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.11) #45
  unreachable

bb.u:                                             ; preds = %._crit_edge.i
  %i.ga = trunc nuw i64 %.sroa.speculated.i.i to i8
  store i8 %i.ga, ptr %i.fx, align 1, !tbaa !196
  %i.gb = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 14 ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 2, !tbaa !1691
  %i.gd = add i8 %i.gc, %.0.lcssa.i
  store i8 %i.gd, ptr %i.gb, align 2, !tbaa !1691
  %i.ge = shl nuw nsw i64 %i.fw, 2
  %i.gf = getelementptr i8, ptr %.lcssa21.i, i64 %i.ge
  %i.gg = getelementptr i8, ptr %i.gf, i64 16     ; 2 uses
  %10 = icmp ne ptr %.lcssa21.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %10)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gg) ]
  %i.gh = load i32, ptr %i.ec, align 4, !tbaa !197
  store i32 %i.gh, ptr %i.gg, align 4, !tbaa !197
  %.not106 = icmp eq i32 %.sroa.070.1, 0
  br i1 %.not106, label %.loopexit110, label %.lr.ph122, !llvm.loop !3620

._crit_edge:                                      ; preds = %.loopexit110
  br i1 %.not, label %._crit_edge.thread, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

._crit_edge.thread:                               ; preds = %bb.l, %._crit_edge
  %.0101158160 = phi ptr [ %.0101157, %._crit_edge ], [ %i.cz, %bb.l ]
  call void @_ZdlPvm(ptr noundef nonnull %.0101158160, i64 noundef %4) #42
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %._crit_edge, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %.loopexit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.k, %bb.j
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(88) %i.ci) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  resume { ptr, i32 } %i.gi

.loopexit:                                        ; preds = %bb.g, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !1710
  %i.gj = load i64, ptr %i.d, align 8, !tbaa !1669 ; 2 uses
  %.not.i65 = icmp eq i64 %i.gj, 0
  br i1 %.not.i65, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit63, label %.noexc.i

.noexc.i:                                         ; preds = %.loopexit
  %i.gk = load ptr, ptr %i.c, align 8, !tbaa !1705 ; 2 uses
  %.not.i.i64 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i64, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit63, label %bb.v

bb.v:                                             ; preds = %.noexc.i
  %i.gl = load i64, ptr %i.e, align 8, !tbaa !1669
  %i.gm = sub i64 0, %i.gl
  %i.gn = and i64 %i.gm, -16
  %i.go = mul i64 %i.gj, 80
  %i.gp = sub i64 %i.go, %i.gn
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.gp) #34
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit63

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit63: ; preds = %.loopexit, %bb.v, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #27

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly6detail8function14FunctionTraitsIKFlvEE10uninitCallERNS1_4DataE(ptr noundef nonnull align 16 dereferenceable(48) %0) #4 comdat align 2 {
bb.a:
  tail call void @_ZN5folly6detail16throw_exception_ISt17bad_function_callJEEEvDpT0_() #18
  unreachable
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt17bad_function_callJEEEvDpT0_() local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_function_call", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #34
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %0, align 8, !tbaa !119
  invoke void @_ZN5folly15throw_exceptionISt17bad_function_callEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt17bad_function_callD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #34
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt17bad_function_callEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #34 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %i.a, align 8, !tbaa !119
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt17bad_function_call, ptr nonnull @_ZNSt17bad_function_callD1Ev) #44
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt17bad_function_callD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #27

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #25

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #29

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3629 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !3630, !nonnull !184
  %i.d = load i8, ptr %i.c, align 1, !tbaa !1710, !range !1665, !noundef !184
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d, !prof !1687

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3631, !nonnull !184, !align !1722
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1669 ; 3 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.noexc, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !3632, !nonnull !184, !align !1722
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1705
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3633, !nonnull !184, !align !1722
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1669
  br label %.noexc

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !3634, !nonnull !184, !align !1722
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1707 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3635, !nonnull !184, !align !1722
  %i.t = load i64, ptr %i.s, align 8, !tbaa !1669 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !3632, !nonnull !184, !align !1722
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1705
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !1686
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !3636, !nonnull !184, !align !1722
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !1669 ; 2 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ab, i1 true)
  %i.ad = icmp eq i64 %i.ab, 0
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !1680
  %i.af = and i64 %i.ae, -256
  %i.ag = select i1 %i.ad, i64 4294967295, i64 %i.ac
  %i.ah = or i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.y, align 8, !tbaa !1680
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE1EE5checkEv() #34
  %.pre = load ptr, ptr %0, align 8, !tbaa !3630
  %.pre3 = load i8, ptr %.pre, align 1, !tbaa !1710, !range !1665
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !3631
  %.pre5 = load i64, ptr %.pre4, align 8, !tbaa !1669
  %i.ai = trunc nuw i8 %.pre3 to i1
  br i1 %i.ai, label %.noexc, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !3637, !nonnull !184, !align !1722
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1669
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !3638, !nonnull !184, !align !1722
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !1669
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !3639, !nonnull !184, !align !1722
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1708
  invoke void @_ZN5folly3f146detail21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEE17afterFailedRehashEPSt4pairIKS3_S6_Em(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.ar, i64 noundef %i.ao)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %.010 = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ 0, %bb.b ], [ %i.n, %bb.c ]
  %.029 = phi ptr [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ null, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.as = phi i64 [ %.pre5, %bb.d ], [ %i.al, %bb.e ], [ %i.h, %bb.b ], [ %i.h, %bb.c ]
  %.not.i = icmp eq ptr %.029, null
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS3_S6_EbmmmPhm.exit, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.at = sub i64 0, %.010
  %i.au = and i64 %i.at, -16
  %i.av = mul i64 %i.as, 80
end_hunk_2
begin_hunk_3_@_ZN5folly18ThreadPoolExecutor4TaskD2Ev:bb.a

_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEEclEPS3_.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !126 ; 8 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.i, align 8, !tbaa !116
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !117
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !119
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #34, !call_target !135, !inline_history !5
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !119
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #34, !call_target !150, !inline_history !5
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !196
  %.not.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !197
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !198

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #34
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !130  ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.y, null
  br i1 %.not.i.i1, label %_ZN5folly8FunctionIFvvEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.z = tail call noundef i64 %i.y(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef null) #34, !inline_history !0 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit

_ZN5folly8FunctionIFvvEED2Ev.exit:                ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !116
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !117
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !119
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !call_target !135, !inline_history !85
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !119
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !call_target !150, !inline_history !85
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !196
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !197
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !198

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #35 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #34, !call_target !135, !inline_history !3701
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !196
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !197  ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !197
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !119
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #34, !call_target !150, !inline_history !3701
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly3f146detail16F14VectorMapImplIPvNS_8FunctionIKFlvEEENS_23HeterogeneousAccessHashIS3_vEENS_26HeterogeneousAccessEqualToIS3_vEESaISt4pairIKS3_S6_EESt17integral_constantIbLb1EEE18eraseUnderlyingKeyIS3_RKNS_16variadic_noop_fnEEEmRKT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1680 ; 2 uses
  %i.c = icmp ult i64 %i.b, 256
  br i1 %i.c, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !218    ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = zext i64 %i.e to i128
  %i.g = mul nuw i128 %i.f, 14181476777654086739
  %i.h = lshr i128 %i.g, 64
  %i.i = trunc nuw i128 %i.h to i64
  %i.j = mul i64 %i.e, -4265267296055464877
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, -4265267296055464877       ; 2 uses
  %i.m = lshr i64 %i.l, 14
  %i.n = and i64 %i.m, 255
  %i.o = lshr i64 %i.l, 22
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1) ; 2 uses
  %i.p = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.q = or disjoint i64 %i.p, 1
  %i.r = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.s = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.u = and i64 %i.b, 255                        ; 2 uses
  %i.v = shl nuw i64 1, %i.u
  %notmask.i = shl nsw i64 -1, %i.u
  %i.w = xor i64 %notmask.i, -1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1686
  %i.z = load ptr, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.023.i.i42 = phi i64 [ %i.v, %bb.b ], [ %i.ay, %bb.e ]
  %.025.i.i41 = phi i64 [ %i.o, %bb.b ], [ %i.az, %bb.e ] ; 2 uses
  %i.aa = and i64 %.025.i.i41, %i.w
  %i.ab = shl nuw nsw i64 %i.aa, 6
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab ; 3 uses
  %i.ad = load <16 x i8>, ptr %i.ac, align 16     ; 2 uses
  %i.ae = icmp eq <16 x i8> %i.ad, %i.t
  %i.af = bitcast <16 x i1> %i.ae to i16
  %i.ag = zext i16 %i.af to i32                   ; 2 uses
  %i.ah = and i32 %i.ag, 4095
  %.not = icmp eq i32 %i.ah, 0
  %i.ai = extractelement <16 x i8> %i.ad, i64 15
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %3 = icmp ne ptr %i.ac, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %3)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i.i
  %.sroa.05.0 = phi i32 [ %i.av, %.critedge.i.i ], [ %i.ag, %.preheader ] ; 4 uses
  %i.aj = icmp ne i32 %.sroa.05.0, 0
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.05.0, i1 true)
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 2
  %i.an = getelementptr i8, ptr %i.ac, i64 %i.am  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !197
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [80 x i8], ptr %i.z, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !218
  %i.at = icmp eq ptr %i.d, %i.as
  br i1 %i.at, label %bb.f, label %.critedge.i.i, !prof !1687

.critedge.i.i:                                    ; preds = %bb.d
  %i.au = add nuw nsw i32 %.sroa.05.0, 65535
  %i.av = and i32 %i.au, %.sroa.05.0              ; 2 uses
  %i.aw = and i32 %i.av, 4094
  %.not36 = icmp eq i32 %i.aw, 0
  br i1 %.not36, label %.loopexit, label %bb.d, !llvm.loop !82

.loopexit:                                        ; preds = %.critedge.i.i, %bb.c
  %i.ax = icmp eq i8 %i.ai, 0
  br i1 %i.ax, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.e, !prof !1687

bb.e:                                             ; preds = %.loopexit
  %i.ay = add i64 %.023.i.i42, -1                 ; 2 uses
  %i.az = add i64 %i.q, %.025.i.i41
  %.not.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.c, !llvm.loop !83

bb.f:                                             ; preds = %bb.d
  %i.ba = getelementptr i8, ptr %i.an, i64 16
  tail call void @_ZN5folly3f146detail16F14VectorMapImplIPvNS_8FunctionIKFlvEEENS_23HeterogeneousAccessHashIS3_vEENS_26HeterogeneousAccessEqualToIS3_vEESaISt4pairIKS3_S6_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.ba, i64 %i.al, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread: ; preds = %.loopexit, %bb.e, %bb.a, %bb.f
  %.0 = phi i64 [ 1, %bb.f ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %.loopexit ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail16F14VectorMapImplIPvNS_8FunctionIKFlvEEENS_23HeterogeneousAccessHashIS3_vEENS_26HeterogeneousAccessEqualToIS3_vEESaISt4pairIKS3_S6_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.162, align 8            ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1692   ; 3 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !197    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store ptr %3, ptr %4, align 8, !tbaa !3706
  call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapISA_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKS4_S7_EE_EEvSN_SP_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw [80 x i8], ptr %i.a, i64 %i.c ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1698 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZSt10destroy_atISt4pairIKPvN5folly8FunctionIKFlvEEEEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = call noundef i64 %i.f(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.g, ptr noundef null) #34, !inline_history !3702 ; 0 uses
  br label %_ZSt10destroy_atISt4pairIKPvN5folly8FunctionIKFlvEEEEEvPT_.exit

_ZSt10destroy_atISt4pairIKPvN5folly8FunctionIKFlvEEEEEvPT_.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1680 ; 2 uses
  %i.k = lshr i64 %i.j, 8                         ; 5 uses
  %.not = icmp eq i64 %i.k, %i.c
  br i1 %.not, label %_ZN5folly3f146detail21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS3_S6_EEPSC_SF_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt10destroy_atISt4pairIKPvN5folly8FunctionIKFlvEEEEEvPT_.exit
  %i.l = trunc i64 %i.k to i32
  %i.m = icmp ne i64 %i.k, 0
  call void @llvm.assume(i1 %i.m)
  %i.n = load ptr, ptr %0, align 8, !tbaa !1692
  %i.o = and i64 %i.k, 4294967295
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %i.n, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !218
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.s = zext i64 %i.r to i128
  %i.t = mul nuw i128 %i.s, 14181476777654086739
  %i.u = lshr i128 %i.t, 64
  %i.v = trunc nuw i128 %i.u to i64
  %i.w = mul i64 %i.r, -4265267296055464877
  %i.x = xor i64 %i.w, %i.v
  %i.y = mul i64 %i.x, -4265267296055464877       ; 2 uses
  %i.z = lshr i64 %i.y, 14
  %i.aa = and i64 %i.z, 255
  %i.ab = lshr i64 %i.y, 22
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aa, i64 1) ; 2 uses
  %i.ac = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.ad = or disjoint i64 %i.ac, 1
  %i.ae = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.af = insertelement <16 x i8> poison, i8 %i.ae, i64 0
  %i.ag = shufflevector <16 x i8> %i.af, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ah = and i64 %i.j, 255
  %notmask.i = shl nsw i64 -1, %i.ah
  %i.ai = xor i64 %notmask.i, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1686
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %bb.c
  %.025.i = phi i64 [ %i.ab, %bb.c ], [ %i.be, %.loopexit ] ; 2 uses
  %i.al = and i64 %.025.i, %i.ai
  %i.am = shl nuw nsw i64 %i.al, 6
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.am ; 3 uses
  %i.ao = load <16 x i8>, ptr %i.an, align 16
  %i.ap = icmp eq <16 x i8> %i.ao, %i.ag
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %i.ar = zext i16 %i.aq to i32                   ; 2 uses
  %i.as = and i32 %i.ar, 4095
  %.not45 = icmp eq i32 %i.as, 0
  br i1 %.not45, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d
  %5 = icmp ne ptr %i.an, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %5)
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.024.0 = phi i32 [ %i.bc, %.critedge.i ], [ %i.ar, %.preheader ] ; 4 uses
  %i.at = icmp ne i32 %.sroa.024.0, 0
  call void @llvm.assume(i1 %i.at)
  %i.au = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.024.0, i1 true)
  %i.av = shl nuw nsw i32 %i.au, 2
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr i8, ptr %i.an, i64 %i.aw  ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !197
  %i.ba = icmp eq i32 %i.az, %i.l
  br i1 %i.ba, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSB_8PrefetchE.exit, label %.critedge.i, !prof !1687

.critedge.i:                                      ; preds = %bb.e
  %i.bb = add nuw nsw i32 %.sroa.024.0, 65535
  %i.bc = and i32 %i.bb, %.sroa.024.0             ; 2 uses
  %i.bd = and i32 %i.bc, 4094
  %.not46 = icmp eq i32 %i.bd, 0
  br i1 %.not46, label %.loopexit, label %bb.e, !llvm.loop !3703

.loopexit:                                        ; preds = %.critedge.i, %bb.d
  %i.be = add i64 %i.ad, %.025.i
  br label %bb.d, !llvm.loop !3704

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSB_8PrefetchE.exit: ; preds = %bb.e
  %i.bf = getelementptr i8, ptr %i.ax, i64 16
  store i32 %i.b, ptr %i.bf, align 4, !tbaa !197
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %i.bg = getelementptr inbounds nuw [80 x i8], ptr %i.a, i64 %i.k ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !218
  store ptr %i.bi, ptr %i.d, align 16, !tbaa !1695
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store ptr null, ptr %i.bj, align 16, !tbaa !196
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 64 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 72 ; 2 uses
  %i.bn = load <2 x ptr>, ptr %i.bl, align 16, !tbaa !218
  store <2 x ptr> %i.bn, ptr %i.bk, align 16, !tbaa !218
  store ptr @_ZN5folly6detail8function14FunctionTraitsIKFlvEE10uninitCallERNS1_4DataE, ptr %i.bl, align 16, !tbaa !1697
  store ptr null, ptr %i.bm, align 8, !tbaa !1698
  %i.bo = load ptr, ptr %i.e, align 8, !tbaa !1698 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS3_S6_EEPSC_SF_m.exit, label %_ZSt12construct_atISt4pairIKPvN5folly8FunctionIKFlvEEEEJS0_IOS1_OS6_EEEDTgsnwcvS1_Li0E_T_pispclsr3stdE7declvalIT0_EEEEPSB_DpOSC_.exit.i

_ZSt12construct_atISt4pairIKPvN5folly8FunctionIKFlvEEEEJS0_IOS1_OS6_EEEDTgsnwcvS1_Li0E_T_pispclsr3stdE7declvalIT0_EEEEPSB_DpOSC_.exit.i: ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSB_8PrefetchE.exit
  %i.bp = call noundef i64 %i.bo(i32 noundef 0, ptr noundef nonnull align 16 dereferenceable(64) %i.bh, ptr noundef nonnull align 16 dereferenceable(64) %i.bj) #34, !inline_history !89 ; 0 uses
  %.pre.i = load ptr, ptr %i.bm, align 8, !tbaa !1698 ; 2 uses
  %.not.i.i.i.i17.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i.i17.i, label %_ZN5folly3f146detail21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS3_S6_EEPSC_SF_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt12construct_atISt4pairIKPvN5folly8FunctionIKFlvEEEEJS0_IOS1_OS6_EEEDTgsnwcvS1_Li0E_T_pispclsr3stdE7declvalIT0_EEEEPSB_DpOSC_.exit.i
  %i.bq = call noundef i64 %.pre.i(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.bh, ptr noundef null) #34, !inline_history !90 ; 0 uses
  br label %_ZN5folly3f146detail21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS3_S6_EEPSC_SF_m.exit

_ZN5folly3f146detail21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS3_S6_EEPSC_SF_m.exit: ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSB_8PrefetchE.exit, %_ZSt12construct_atISt4pairIKPvN5folly8FunctionIKFlvEEEEJS0_IOS1_OS6_EEEDTgsnwcvS1_Li0E_T_pispclsr3stdE7declvalIT0_EEEEPSB_DpOSC_.exit.i, %bb.f, %_ZSt10destroy_atISt4pairIKPvN5folly8FunctionIKFlvEEEEEvPT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapISA_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKS4_S7_EE_EEvSN_SP_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i = mul i64 %2, -4
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 %.neg.i.i ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 14 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2, !tbaa !1691
  %.not = icmp ult i8 %i.d, 16
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !1692
  %i.f = load i32, ptr %1, align 4, !tbaa !197
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [80 x i8], ptr %i.e, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !218
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = zext i64 %i.j to i128
  %i.l = mul nuw i128 %i.k, 14181476777654086739
  %i.m = lshr i128 %i.l, 64
  %i.n = trunc nuw i128 %i.m to i64
  %i.o = mul i64 %i.j, -4265267296055464877
  %i.p = xor i64 %i.o, %i.n
  %i.q = mul i64 %i.p, -4265267296055464877       ; 2 uses
  %i.r = lshr i64 %i.q, 14
  %i.s = and i64 %i.r, 255
  %i.t = lshr i64 %i.q, 22
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.u = shl nuw nsw i64 %.sroa.speculated.i.i, 1
  %i.v = or disjoint i64 %i.u, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0 = phi i64 [ 1, %bb.a ], [ %i.v, %bb.b ]
  %.sroa.04.0 = phi i64 [ 0, %bb.a ], [ %i.t, %bb.b ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !1680
  %i.y = add i64 %i.x, -256
  store i64 %i.y, ptr %i.w, align 8, !tbaa !1680
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 %2 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !196
  %.not.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.d, label %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.11) #45
  unreachable

_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i: ; preds = %bb.c
  store i8 0, ptr %i.z, align 1, !tbaa !196
  %i.ab = load i8, ptr %i.c, align 2, !tbaa !1691
  %.not.i.i = icmp ult i8 %i.ab, 16
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !1680
  %i.ad = and i64 %i.ac, 255
  %notmask.i.i.i = shl nsw i64 -1, %i.ad
  %i.ae = xor i64 %notmask.i.i.i, -1              ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1686 ; 4 uses
  %i.ah = and i64 %.sroa.04.0, %i.ae
  %i.ai = shl nuw nsw i64 %i.ah, 6                ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %i.ak = icmp eq ptr %i.aj, %i.b
  br i1 %i.ak, label %.thread.i.i, label %.lr.ph.i.i

.thread.i.i:                                      ; preds = %bb.g, %bb.e
  %.010.lcssa.i.i = phi i8 [ 0, %bb.e ], [ -16, %bb.g ]
  %i.al = phi i64 [ %i.ai, %bb.e ], [ %i.ax, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 14 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 2, !tbaa !1691
  %i.ap = add i8 %i.ao, %.010.lcssa.i.i
  store i8 %i.ap, ptr %i.an, align 2, !tbaa !1691
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.g
  %i.aq = phi i64 [ %i.ax, %bb.g ], [ %i.ai, %bb.e ]
  %.01126.i.i = phi i64 [ %i.av, %bb.g ], [ %.sroa.04.0, %bb.e ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 15 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !1690 ; 2 uses
  %.not.i17.i.i = icmp eq i8 %i.at, -2
  br i1 %.not.i17.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.au = add i8 %i.at, -1
  store i8 %i.au, ptr %i.as, align 1, !tbaa !1690
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.av = add i64 %.01126.i.i, %.sroa.5.0         ; 2 uses
  %i.aw = and i64 %i.av, %i.ae
  %i.ax = shl nuw nsw i64 %i.aw, 6                ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ax
  %i.az = icmp eq ptr %i.ay, %i.b
  br i1 %i.az, label %.thread.i.i, label %.lr.ph.i.i

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i, %.thread.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEv(ptr dead_on_unwind noalias writable align 16 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.156, align 1            ; 3 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 6 uses
  %4 = alloca %"class.folly::detail::distributed_mutex::Waiter", align 64 ; 12 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"class.folly::detail::distributed_mutex::DistributedMutex<>::DistributedMutexStateProxy", align 8 ; 16 uses
  %6 = alloca %"class.std::unique_ptr.197", align 8 ; 10 uses
  %7 = alloca %"class.google::LogMessageFatal", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store ptr null, ptr %6, align 8, !tbaa !3713
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3714)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.c = ptrtoint ptr %4 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 3 uses
  %.sroa.516.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 6 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.e = or disjoint i64 %i.c, 1                  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  br label %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i

_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i: ; preds = %bb.j, %bb.a
  %.022.i.i = phi i32 [ 4, %bb.a ], [ %.017.i.i, %bb.j ]
  %.020.i.i = phi i8 [ 0, %bb.a ], [ %i.k, %bb.j ]
  %.018.i.i = phi ptr [ null, %bb.a ], [ %.227.i.i, %bb.j ] ; 5 uses
  %.017.i.i = phi i32 [ 8, %bb.a ], [ %.022.i.i, %bb.j ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !3714
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !noalias !3714
  %i.g = zext nneg i32 %.017.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i.i, i8 0, i64 24, i1 false), !noalias !3714
  store ptr @_ZN5folly6detail17InlineFunctionRefIFvvELm48EE10callInlineIKNS0_17distributed_mutex19TaskWithoutCoalesceIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_NS5_6WaiterISt6atomicEEEEEEvRKNS0_15aligned_storageILm40ELm8EE4typeE, ptr %i.d, align 16, !tbaa !218, !noalias !3714
  store ptr %6, ptr %.sroa.516.0..sroa_idx.i.i, align 8, !noalias !3714
end_hunk_3
