Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/MmapAllocator?download=true
inline.NumInlined: 3478
inline.NumDeleted: 1648
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 24
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.facebook::velox::detail::VeloxCheckFailArgs" = type { ptr, i64, ptr, ptr, ptr, ptr, i8 }
%"class.folly::BasicFixedString" = type { [8 x i8], i64 }
%"class.folly::BasicFixedString.19" = type { [14 x i8], i64 }
%"class.folly::detail::UniqueInstance" = type { i8 }
%"struct.std::atomic.71" = type { %"struct.std::__atomic_base.72" }
%"struct.std::__atomic_base.72" = type { ptr }
%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { i64 }
%"struct.std::atomic.102" = type { %"struct.std::__atomic_base.103" }
%"struct.std::__atomic_base.103" = type { ptr }
%"struct.folly::detail::UniqueInstance::Value" = type { ptr, ptr, i32, i32 }
%"struct.folly::threadlocal_detail::StaticMeta<facebook::velox::memory::MmapAllocator, folly::AccessModeStrict>::LocalCache" = type { ptr, i64 }
%"struct.folly::threadlocal_detail::StaticMeta<folly::TLRefCount, void>::LocalCache" = type { ptr, i64 }
%"struct.folly::Unit" = type { i8 }
%"class.folly::AtomicStruct" = type { %"struct.std::atomic" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.fmt::v11::detail::format_arg_store.116" = type { [1 x %"class.fmt::v11::detail::value"] }
%"class.fmt::v11::detail::value" = type { %union.anon.97 }
%union.anon.97 = type { i128 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.fmt::v11::detail::format_arg_store.113" = type { [2 x %"class.fmt::v11::detail::value"] }
%"struct.fmt::v11::detail::format_arg_store.122" = type { [2 x %"class.fmt::v11::detail::value"] }
%"struct.fmt::v11::detail::format_arg_store.121" = type { [2 x %"class.fmt::v11::detail::value"] }
%"class.google::LogMessage" = type { ptr, ptr, %"struct.google::LogMessageTime" }
%"struct.google::LogMessageTime" = type { %struct.tm, i64, i32, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%"struct.fmt::v11::detail::format_arg_store" = type { [2 x %"class.fmt::v11::detail::value"] }
%"class.folly::ReadMostlySharedPtr" = type { ptr, ptr }
%"struct.fmt::v11::detail::format_arg_store.123" = type { [2 x %"class.fmt::v11::detail::value"] }
%"struct.fmt::v11::detail::format_arg_store.132" = type { [4 x %"class.fmt::v11::detail::value"] }
%"struct.fmt::v11::detail::format_arg_store.131" = type { [2 x %"class.fmt::v11::detail::value"] }
%"struct.fmt::v11::detail::format_arg_store.124" = type { [4 x %"class.fmt::v11::detail::value"] }
%"struct.fmt::v11::detail::format_arg_store.133" = type { [4 x %"class.fmt::v11::detail::value"] }
%"struct.fmt::v11::detail::format_arg_store.144" = type { [2 x %"class.fmt::v11::detail::value"] }
%"class.facebook::velox::memory::Allocation" = type <{ ptr, %"class.std::vector.23", i32, [4 x i8] }>
%"class.std::vector.23" = type { %"struct.std::_Vector_base.24" }
%"struct.std::_Vector_base.24" = type { %"struct.std::_Vector_base<facebook::velox::memory::Allocation::PageRun, std::allocator<facebook::velox::memory::Allocation::PageRun>>::_Vector_impl" }
%"struct.std::_Vector_base<facebook::velox::memory::Allocation::PageRun, std::allocator<facebook::velox::memory::Allocation::PageRun>>::_Vector_impl" = type { %"struct.std::_Vector_base<facebook::velox::memory::Allocation::PageRun, std::allocator<facebook::velox::memory::Allocation::PageRun>>::_Vector_impl_data" }
%"struct.std::_Vector_base<facebook::velox::memory::Allocation::PageRun, std::allocator<facebook::velox::memory::Allocation::PageRun>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.facebook::velox::memory::MemoryAllocator::SizeMix" = type { %"class.std::vector.28", %"class.std::vector.28", i32, i32 }
%"class.std::vector.28" = type { %"struct.std::_Vector_base.29" }
%"struct.std::_Vector_base.29" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.facebook::velox::memory::ContiguousAllocation" = type { ptr, ptr, i64, i64 }
%"struct.fmt::v11::detail::format_arg_store.146" = type { [2 x %"class.fmt::v11::detail::value"] }
%"struct.fmt::v11::detail::format_arg_store.145" = type { [3 x %"class.fmt::v11::detail::value"] }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.xsimd::batch" = type { %"struct.xsimd::types::simd_register" }
%"struct.xsimd::types::simd_register" = type { %"struct.xsimd::types::simd_register.51" }
%"struct.xsimd::types::simd_register.51" = type { %"struct.xsimd::types::simd_register.52" }
%"struct.xsimd::types::simd_register.52" = type { <4 x i64> }
%"class.google::LogMessageFatal" = type { %"class.google::LogMessage" }
%"struct.facebook::velox::memory::Stats" = type { %"struct.std::array", i64 }
%"struct.std::array" = type { [20 x %"struct.facebook::velox::memory::SizeClassStats"] }
%"struct.facebook::velox::memory::SizeClassStats" = type { i32, %"struct.std::atomic", %"struct.std::atomic", %"struct.std::atomic.0", %"struct.std::atomic.0" }
%"struct.std::atomic.0" = type { %"struct.std::__atomic_base.1" }
%"struct.std::__atomic_base.1" = type { i64 }
%"class.folly::Function" = type { %"union.folly::detail::function::Data", ptr, ptr }
%"union.folly::detail::function::Data" = type { %"struct.folly::detail::function::Data::BigTrivialLayout", [24 x i8] }
%"struct.folly::detail::function::Data::BigTrivialLayout" = type { ptr, i64, i64 }
%"class.folly::Function.73" = type { %"union.folly::detail::function::Data", ptr, ptr }
%"struct.folly::SharedMutexImpl<false>::WaitForever" = type { i8 }
%"struct.folly::SharedMutexImpl<false>::WaitNever" = type { i8 }
%"class.folly::LockedPtr" = type { %"class.std::unique_lock" }
%"class.std::unique_lock" = type <{ ptr, i8, [7 x i8] }>
%"struct.folly::threadlocal_detail::ThreadEntrySet::Element" = type { %"struct.folly::threadlocal_detail::ElementWrapper", ptr }
%"struct.folly::threadlocal_detail::ElementWrapper" = type { ptr, i64 }
%"class.std::system_error" = type { %"class.std::runtime_error", %"class.std::error_code" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon.75 }
%union.anon.75 = type { ptr }
%"class.std::error_code" = type { i32, ptr }
%"class.std::bad_function_call" = type { %"class.std::exception" }
%"class.folly::ThreadLocalPtr<folly::ThreadCachedInt<long, facebook::velox::memory::MmapAllocator>::IntCache, facebook::velox::memory::MmapAllocator, folly::AccessModeStrict>::Accessor" = type { ptr, %"class.std::unique_lock", %"class.std::shared_lock", i32, [4 x i8], %"class.folly::LockedPtr" }
%"class.std::shared_lock" = type <{ ptr, %"struct.folly::SharedMutexToken", [4 x i8] }>
%"struct.folly::SharedMutexToken" = type { i16, i16 }
%"struct.fmt::v11::formatter" = type { %"struct.fmt::v11::formatter.125" }
%"struct.fmt::v11::formatter.125" = type { %"struct.fmt::v11::formatter.126" }
%"struct.fmt::v11::formatter.126" = type { %"struct.fmt::v11::detail::native_formatter" }
%"struct.fmt::v11::detail::native_formatter" = type { %"struct.fmt::v11::detail::dynamic_format_specs" }
%"struct.fmt::v11::detail::dynamic_format_specs" = type { %"struct.fmt::v11::format_specs", %"union.fmt::v11::detail::arg_ref", %"union.fmt::v11::detail::arg_ref" }
%"struct.fmt::v11::format_specs" = type { %"class.fmt::v11::basic_specs", i32, i32 }
%"class.fmt::v11::basic_specs" = type { i32, [4 x i8] }
%"union.fmt::v11::detail::arg_ref" = type { %"class.fmt::v11::basic_string_view" }
%"class.fmt::v11::basic_string_view" = type { ptr, i64 }
%"struct.fmt::v11::detail::dynamic_spec_handler" = type { ptr, ptr, ptr }
%"class.fmt::v11::loc_value" = type { %"class.fmt::v11::basic_format_arg" }
%"class.fmt::v11::basic_format_arg" = type <{ %"class.fmt::v11::detail::value", i32, [12 x i8] }>
%class.anon.130 = type { i8, i8 }
%class.anon.129 = type { i32, i32, ptr, ptr }
%"struct.fmt::v11::detail::find_escape_result" = type { ptr, ptr, i32 }
%"class.folly::detail::ScopeGuardImpl.139" = type { %"class.folly::detail::ScopeGuardImplBase", %class.anon.140 }
%"class.folly::detail::ScopeGuardImplBase" = type { i8 }
%class.anon.140 = type { ptr, ptr }
%"class.std::reference_wrapper" = type { ptr }
%"class.folly::detail::ScopeGuardImpl.135" = type { %"class.folly::detail::ScopeGuardImplBase", %class.anon.136 }
%class.anon.136 = type { ptr }
%"struct.std::__detail::_AllocNode" = type { ptr }
%"struct.folly::SharedMutexImpl<false, void, std::atomic, folly::shared_mutex_detail::PolicySuppressTSAN>::WaitForever" = type { i8 }
%"struct.folly::SharedMutexImpl<true>::WaitForever" = type { i8 }
%"class.folly::detail::TypeDescriptor" = type { %"struct.std::type_index", %"struct.std::type_index" }
%"struct.std::type_index" = type { ptr }
%"class.folly::LockedPtr.300" = type { %"class.std::shared_lock.301" }
%"class.std::shared_lock.301" = type <{ ptr, %"struct.folly::SharedMutexToken", [4 x i8] }>
%"class.std::shared_ptr.158" = type { %"class.std::__shared_ptr.159" }
%"class.std::__shared_ptr.159" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::shared_ptr.165" = type { %"class.std::__shared_ptr.166" }
%"class.std::__shared_ptr.166" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.152" = type { %"class.std::__shared_ptr.153" }
%"class.std::__shared_ptr.153" = type { ptr, %"class.std::__shared_count" }
%class.anon.305 = type { %"class.std::shared_ptr.158", %"class.std::shared_ptr.165", %"class.folly::detail::TypeDescriptor" }
%"class.folly::LockedPtr.306" = type { %"class.std::unique_lock.307" }
%"class.std::unique_lock.307" = type <{ ptr, i8, [7 x i8] }>
%"class.folly::LockedPtr.311" = type { %"class.std::unique_lock.307" }
%"class.folly::ReadMostlyMainPtr" = type { ptr, ptr }
%"class.std::chrono::time_point.389" = type { %"class.std::chrono::duration.33" }
%"class.std::chrono::duration.33" = type { i64 }
%"class.folly::WaitOptions" = type <{ %"class.std::chrono::duration.33", i8, [7 x i8] }>
%"class.folly::TLRefCount::LocalRefCount" = type { %"struct.std::atomic.0", %"struct.std::atomic.100", ptr, %"class.std::mutex", i64, %"class.std::shared_ptr.269" }
%"struct.std::atomic.100" = type { %"struct.std::__atomic_base.101" }
%"struct.std::__atomic_base.101" = type { i8 }
%"class.std::mutex" = type { %"class.std::__mutex_base" }
%"class.std::__mutex_base" = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::shared_ptr.269" = type { %"class.std::__shared_ptr.270" }
%"class.std::__shared_ptr.270" = type { ptr, %"class.std::__shared_count" }
%"class.folly::detail::ScopeGuardImpl.282" = type { %"class.folly::detail::ScopeGuardImplBase", %class.anon.283 }
%class.anon.283 = type { ptr, ptr }
%"class.folly::detail::ScopeGuardImpl.276" = type { %"class.folly::detail::ScopeGuardImplBase", %class.anon.277 }
%class.anon.277 = type { ptr }
%struct.timespec = type { i64, i64 }
%"struct.std::array.289" = type { [1 x ptr] }
%"class.std::vector.290" = type { %"struct.std::_Vector_base.291" }
%"struct.std::_Vector_base.291" = type { %"struct.std::_Vector_base<std::unique_lock<std::mutex>, std::allocator<std::unique_lock<std::mutex>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_lock<std::mutex>, std::allocator<std::unique_lock<std::mutex>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_lock<std::mutex>, std::allocator<std::unique_lock<std::mutex>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_lock<std::mutex>, std::allocator<std::unique_lock<std::mutex>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.folly::ThreadLocalPtr<folly::TLRefCount::LocalRefCount, folly::TLRefCount>::Accessor" = type { ptr, %"class.std::unique_lock", %"class.std::shared_lock", i32, [4 x i8], %"class.folly::LockedPtr" }
%"class.std::shared_ptr.272" = type { %"class.std::__shared_ptr.273" }
%"class.std::__shared_ptr.273" = type { ptr, %"class.std::__shared_count" }
%"class.folly::CoreAllocatorGuard" = type { i64, i64 }
%"class.folly::hash::StdHasher" = type { i8 }

$_ZN8facebook5velox6memory15MemoryAllocatorC2Em = comdat any

$_ZNSt12__shared_ptrIN8facebook5velox6memory5CacheELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN5folly15ThreadCachedIntIlN8facebook5velox6memory13MmapAllocatorEED2Ev = comdat any

$_ZNSt6vectorISt10unique_ptrIN8facebook5velox6memory13MmapAllocator9SizeClassESt14default_deleteIS5_EESaIS8_EED2Ev = comdat any

$_ZN8facebook5velox6memory15MemoryAllocatorD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNK8facebook5velox6memory10Allocation5emptyEv = comdat any

$_ZNK8facebook5velox6memory20ContiguousAllocation5emptyEv = comdat any

$_ZN8facebook5velox6memory15MemoryAllocator7SizeMixD2Ev = comdat any

$_ZN5folly15ThreadCachedIntIlN8facebook5velox6memory13MmapAllocatorEEmIEl = comdat any

$_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEED2Ev = comdat any

$_ZNK8facebook5velox6memory13MmapAllocator4kindEv = comdat any

$_ZN8facebook5velox6memory13MmapAllocator13registerCacheERKSt10shared_ptrINS1_5CacheEE = comdat any

$_ZNK8facebook5velox6memory13MmapAllocator8capacityEv = comdat any

$_ZNK8facebook5velox6memory15MemoryAllocator16largestSizeClassEv = comdat any

$_ZNK8facebook5velox6memory15MemoryAllocator11sizeClassesEv = comdat any

$_ZNK8facebook5velox6memory13MmapAllocator14totalUsedBytesEv = comdat any

$_ZNK8facebook5velox6memory13MmapAllocator12numAllocatedEv = comdat any

$_ZNK8facebook5velox6memory13MmapAllocator9numMappedEv = comdat any

$_ZNK8facebook5velox6memory13MmapAllocator17numExternalMappedEv = comdat any

$_ZNK8facebook5velox6memory13MmapAllocator5statsEv = comdat any

$_ZNK8facebook5velox6memory13MmapAllocator5cacheEv = comdat any

$_ZN5folly18threadlocal_detail10StaticMetaIN8facebook5velox6memory13MmapAllocatorENS_16AccessModeStrictEE6uniqueE = comdat any

$_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE6uniqueE = comdat any

$_ZNSt23enable_shared_from_thisIN8facebook5velox6memory15MemoryAllocatorEED2Ev = comdat any

$_ZNSt15__uniq_ptr_implIN8facebook5velox6memory17ManagedMmapArenasESt14default_deleteIS3_EE5resetEPS3_ = comdat any

$_ZNKSt14default_deleteIN8facebook5velox6memory17ManagedMmapArenasEEclEPS3_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN8facebook5velox6memory9MmapArenaEEESt10_Select1stIS8_ESt4lessImESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZN5folly6detail5thunk4makeINS_18threadlocal_detail10StaticMetaIN8facebook5velox6memory13MmapAllocatorENS_16AccessModeStrictEEEJEEEPvDpT0_ = comdat any

$_ZN5folly18threadlocal_detail10StaticMetaIN8facebook5velox6memory13MmapAllocatorENS_16AccessModeStrictEEC2Ev = comdat any

$_ZN5folly18threadlocal_detail10StaticMetaIN8facebook5velox6memory13MmapAllocatorENS_16AccessModeStrictEE18getThreadEntrySlowEv = comdat any

$_ZN5folly18threadlocal_detail10StaticMetaIN8facebook5velox6memory13MmapAllocatorENS_16AccessModeStrictEE7preForkEv = comdat any

$_ZN5folly18threadlocal_detail10StaticMetaIN8facebook5velox6memory13MmapAllocatorENS_16AccessModeStrictEE12onForkParentEv = comdat any

$_ZN5folly18threadlocal_detail10StaticMetaIN8facebook5velox6memory13MmapAllocatorENS_16AccessModeStrictEE11onForkChildEv = comdat any

$_ZN5folly18threadlocal_detail14StaticMetaBaseD2Ev = comdat any

$_ZN5folly24throwSystemErrorExplicitEiPKc = comdat any

$_ZN5folly15throw_exceptionISt12system_errorEEvOT_ = comdat any

$_ZNSt12system_errorC2ERKS_ = comdat any

$_ZNSt12system_errorC2ESt10error_codePKc = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_9WaitNeverEEEbRjjRT_ = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_9WaitNeverEEEvRjRT_ = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_9WaitNeverEEEvRjRT_j = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_ = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_ = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_ = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20yieldWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_ = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_j = comdat any

$_ZN5folly6detail8function5call_IPFbvELb1ELb0EbJEEET2_DpT3_RNS1_4DataE = comdat any

$_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_ = comdat any

$_ZN5folly6detail16throw_exception_ISt17bad_function_callJEEEvDpT0_ = comdat any
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox6memory13MmapAllocator9SizeClass14allocateLockedEiPmRNS1_10AllocationE:bb.a
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.113", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !271  ; 3 uses
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 5 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !111
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.e) ; 4 uses
  %i.f = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !158
  %i.i = sext i32 %i.h to i64
  tail call void @_ZN8facebook5velox6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS1_10AllocationE(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(36) %3)
  %i.j = load i32, ptr %i.g, align 8, !tbaa !158
  %i.k = sext i32 %i.j to i64
  %i.l = sub nsw i64 %i.k, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !184
  %i.o = udiv i64 %i.l, %i.n                      ; 3 uses
  %i.p = zext nneg i32 %.sroa.speculated to i64
  %.not = icmp eq i64 %i.o, %i.p
  br i1 %.not, label %bb.f, label %bb.c, !prof !119

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !308
  store i64 %i.o, ptr %4, align 16, !tbaa !110, !noalias !308
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.sroa.speculated, ptr %i.q, align 16, !tbaa !110, !noalias !308
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.46, i64 47, i64 20, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !308
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6memory13MmapAllocator9SizeClass14allocateLockedEiPmRNS1_10AllocationEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.46) #39
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %5, align 8, !tbaa !123    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.v = load i64, ptr %i.t, align 8, !tbaa !110
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  resume { ptr, i32 } %i.r

bb.f:                                             ; preds = %bb.b
  %i.x = load i32, ptr %i.d, align 4, !tbaa !208
  %i.y = trunc nuw nsw i64 %i.o to i32            ; 2 uses
  %i.z = sub i32 %i.x, %i.y
  store i32 %i.z, ptr %i.d, align 4, !tbaa !208
  %i.aa = sub i32 %1, %i.y
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %.049 = phi i32 [ %i.aa, %bb.f ], [ %1, %bb.a ] ; 2 uses
  %i.ab = icmp eq i32 %.049, 0
  br i1 %i.ab, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = icmp eq ptr %2, null
  br i1 %i.ac, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !272
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  br label %.split.outer

.split.outer:                                     ; preds = %_ZN8facebook5velox6memory13MmapAllocator9SizeClass11allocateAnyEiRiRmRNS1_10AllocationE.exit, %bb.i
  %.1.ph = phi i32 [ %i.cb, %_ZN8facebook5velox6memory13MmapAllocator9SizeClass11allocateAnyEiRiRmRNS1_10AllocationE.exit ], [ %.049, %bb.i ] ; 3 uses
  %.023.ph = phi i32 [ %spec.store.select, %_ZN8facebook5velox6memory13MmapAllocator9SizeClass11allocateAnyEiRiRmRNS1_10AllocationE.exit ], [ %i.ae, %bb.i ]
  %.0.ph = phi i32 [ %i.al, %_ZN8facebook5velox6memory13MmapAllocator9SizeClass11allocateAnyEiRiRmRNS1_10AllocationE.exit ], [ 0, %bb.i ] ; 3 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %.0.ph, i32 %i.b)
  %exitcond.not74.not = icmp ult i32 %.0.ph, %i.b
  br i1 %exitcond.not74.not, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %.split.outer
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !115
  br label %.lr.ph

.split:                                           ; preds = %.lr.ph
  %exitcond.not = icmp eq i32 %i.al, %umax
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !311

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.split
  %.076 = phi i32 [ %i.al, %.split ], [ %.0.ph, %.lr.ph.preheader ]
  %.02375 = phi i32 [ %spec.store.select, %.split ], [ %.023.ph, %.lr.ph.preheader ] ; 2 uses
  %i.al = add i32 %.076, 1                        ; 3 uses
  %i.am = add i32 %.02375, 1                      ; 2 uses
  %i.an = zext i32 %i.am to i64
  %.not29 = icmp ult i64 %i.an, %i.c
  %spec.store.select = select i1 %.not29, i32 %i.am, i32 0 ; 5 uses
  %i.ao = zext i32 %spec.store.select to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !70 ; 2 uses
  %.not31 = icmp eq i64 %i.aq, -1
  br i1 %.not31, label %.split, label %bb.j, !llvm.loop !311

bb.j:                                             ; preds = %.lr.ph
  %i.ar = sext i32 %spec.store.select to i64      ; 2 uses
  %i.as = xor i64 %i.aq, -1                       ; 2 uses
  %i.at = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.as)
  %i.au = trunc nuw nsw i64 %i.at to i32
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %.1.ph, i32 %i.au) ; 3 uses
  %i.av = icmp sgt i32 %.1.ph, 0
  br i1 %i.av, label %.lr.ph.i, label %_ZN8facebook5velox6memory13MmapAllocator9SizeClass11allocateAnyEiRiRmRNS1_10AllocationE.exit

.lr.ph.i:                                         ; preds = %bb.j
  %i.aw = shl nsw i32 %spec.store.select, 6
  %i.ax = sext i32 %i.aw to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %.lr.ph.i
  %.023.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ca, %bb.n ]
  %.01922.i = phi i64 [ %i.as, %.lr.ph.i ], [ %i.bz, %bb.n ] ; 3 uses
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01922.i, i1 true) ; 4 uses
  %i.az = load ptr, ptr %i.af, align 8, !tbaa !115
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ar
  %i.bb = trunc nuw nsw i64 %i.ay to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = shl nuw i8 1, %i.bc
  %i.be = lshr i64 %i.ay, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.be ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !110
  %i.bh = or i8 %i.bd, %i.bg
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !110
  %i.bi = load ptr, ptr %i.ag, align 8, !tbaa !115
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ar
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !70
  %i.bl = shl nuw i64 1, %i.ay
  %i.bm = and i64 %i.bk, %i.bl
  %.not.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bn = load i64, ptr %i.ah, align 8, !tbaa !184
  %i.bo = load i64, ptr %2, align 8, !tbaa !70
  %i.bp = add i64 %i.bo, %i.bn
  store i64 %i.bp, ptr %2, align 8, !tbaa !70
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bq = load i32, ptr %i.d, align 4, !tbaa !208
  %i.br = add nsw i32 %i.bq, -1
  store i32 %i.br, ptr %i.d, align 4, !tbaa !208
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bs = load ptr, ptr %i.ai, align 8, !tbaa !182
  %i.bt = load i64, ptr %i.ah, align 8, !tbaa !184 ; 2 uses
  %i.bu = or disjoint i64 %i.ay, %i.ax
  %i.bv = shl nsw i64 %i.bu, 12
  %i.bw = mul i64 %i.bv, %i.bt
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bw
  tail call void @_ZN8facebook5velox6memory10Allocation6appendEPhm(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef %i.bx, i64 noundef %i.bt)
  %i.by = add i64 %.01922.i, -1
  %i.bz = and i64 %i.by, %.01922.i
  %i.ca = add nuw nsw i32 %.023.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ca, %.sroa.speculated.i
  br i1 %exitcond.not.i, label %_ZN8facebook5velox6memory13MmapAllocator9SizeClass11allocateAnyEiRiRmRNS1_10AllocationE.exit, label %bb.k, !llvm.loop !312

_ZN8facebook5velox6memory13MmapAllocator9SizeClass11allocateAnyEiRiRmRNS1_10AllocationE.exit: ; preds = %bb.n, %bb.j
  %i.cb = sub nsw i32 %.1.ph, %.sroa.speculated.i ; 2 uses
  %i.cc = sext i32 %.sroa.speculated.i to i64
  %i.cd = load i64, ptr %i.aj, align 8, !tbaa !313
  %i.ce = add i64 %i.cd, %i.cc
  store i64 %i.ce, ptr %i.aj, align 8, !tbaa !313
  %.not32 = icmp eq i32 %i.cb, 0
  br i1 %.not32, label %.split.thread, label %.split.outer

.split.thread:                                    ; preds = %_ZN8facebook5velox6memory13MmapAllocator9SizeClass11allocateAnyEiRiRmRNS1_10AllocationE.exit
  store i32 %.02375, ptr %i.ad, align 8, !tbaa !272
  br label %.thread

.thread:                                          ; preds = %.split.outer, %.split, %.split.thread, %bb.h, %bb.g
  %.5 = phi i1 [ false, %bb.h ], [ true, %bb.g ], [ true, %.split.thread ], [ false, %.split ], [ false, %.split.outer ]
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS1_10AllocationE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.xsimd::batch", align 32     ; 5 uses
  %4 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  br label %.thread64

.thread64:                                        ; preds = %._crit_edge, %bb.a
  %.039 = phi i32 [ %1, %bb.a ], [ %.24160, %._crit_edge ]
  %i.f = tail call noundef i32 @_ZN8facebook5velox6memory13MmapAllocator9SizeClass19findMappedFreeGroupEv(ptr noundef nonnull align 8 dereferenceable(192) %0) ; 4 uses
  %i.g = shl i32 %i.f, 3                          ; 3 uses
  %i.h = add i32 %i.g, 8                          ; 3 uses
  %.not100 = icmp eq i32 %i.g, -8
  br i1 %.not100, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread64
  %i.i = sext i32 %i.g to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread55
  %indvars.iv113 = phi i64 [ %i.i, %.lr.ph.preheader ], [ %indvars.iv.next114, %.thread55 ] ; 5 uses
  %.01998 = phi i1 [ false, %.lr.ph.preheader ], [ %.12062, %.thread55 ]
  %.14096 = phi i32 [ %.039, %.lr.ph.preheader ], [ %.24160, %.thread55 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.k = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv113
  %i.l = load <4 x i64>, ptr %i.k, align 1, !tbaa !110
  %i.m = xor <4 x i64> %i.l, splat (i64 -1)
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !115
  %i.o = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv113
  %i.p = load <4 x i64>, ptr %i.o, align 1, !tbaa !110
  %i.q = and <4 x i64> %i.p, %i.m                 ; 2 uses
  store <4 x i64> %i.q, ptr %3, align 32
  %i.r = icmp ne <4 x i64> %i.q, zeroinitializer
  %i.s = bitcast <4 x i1> %i.r to i4              ; 2 uses
  %i.t = icmp eq i4 %i.s, 0
  %.pre = trunc nsw i64 %indvars.iv113 to i32     ; 2 uses
  br i1 %i.t, label %.thread55, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph
  %i.u = tail call range(i4 0, 5) i4 @llvm.cttz.i4(i4 %i.s, i1 true)
  %i.v = shl i64 %indvars.iv113, 6
  %i.w = zext nneg i4 %i.u to i64
  %i.x = shl nuw nsw i64 %i.w, 6
  br label %bb.b

bb.b:                                             ; preds = %"_ZZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_ENKUliE_clEi.exit.i.i", %.lr.ph.i.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %"_ZZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_ENKUliE_clEi.exit.i.i" ], [ %i.x, %.lr.ph.i.i ] ; 4 uses
  %.4 = phi i32 [ %.6, %"_ZZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_ENKUliE_clEi.exit.i.i" ], [ %.14096, %.lr.ph.i.i ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %i.y = lshr exact i64 %indvars.iv, 3
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !70  ; 2 uses
  %.not.i46.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i46.i.i, label %"_ZZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_ENKUliE_clEi.exit.i.i", label %.preheader.i47.i.i.preheader

.preheader.i47.i.i.preheader:                     ; preds = %bb.b
  %i.ab = add i64 %i.v, %indvars.iv
  %i.ac = and i64 %i.ab, 4294967232
  %.not.i.not.not.i49.i.i141 = icmp eq i32 %.4, 0
  br i1 %.not.i.not.not.i49.i.i141, label %.thread64.thread, label %.lr.ph144

.preheader.i47.i.i:                               ; preds = %.lr.ph144
  %.not.i.not.not.i49.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.not.not.i49.i.i, label %.thread64.thread, label %.lr.ph144, !llvm.loop !314

.lr.ph144:                                        ; preds = %.preheader.i47.i.i.preheader, %.preheader.i47.i.i
  %.012.i.i.i143 = phi i64 [ %i.au, %.preheader.i47.i.i ], [ %i.aa, %.preheader.i47.i.i.preheader ] ; 3 uses
  %.5142 = phi i32 [ %i.as, %.preheader.i47.i.i ], [ %.4, %.preheader.i47.i.i.preheader ]
  %i.ad = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i.i.i143, i1 true) ; 2 uses
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.af = or disjoint i64 %i.ad, %i.ac            ; 2 uses
  %i.ag = trunc nuw nsw i64 %i.ad to i8
  %i.ah = and i8 %i.ag, 7
  %i.ai = shl nuw i8 1, %i.ah
  %i.aj = lshr i64 %i.af, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !110
  %i.am = or i8 %i.al, %i.ai
  store i8 %i.am, ptr %i.ak, align 1, !tbaa !110
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !182
  %i.ao = load i64, ptr %i.d, align 8, !tbaa !184 ; 2 uses
  %i.ap = shl nuw nsw i64 %i.af, 12
  %i.aq = mul i64 %i.ap, %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aq
  tail call void @_ZN8facebook5velox6memory10Allocation6appendEPhm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %i.ar, i64 noundef %i.ao)
  %i.as = add nsw i32 %.5142, -1                  ; 3 uses
  %i.at = add i64 %.012.i.i.i143, -1
  %i.au = and i64 %i.at, %.012.i.i.i143           ; 2 uses
  %.not11.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not11.i.i.i, label %"_ZZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_ENKUliE_clEi.exit.i.i", label %.preheader.i47.i.i, !llvm.loop !314

"_ZZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_ENKUliE_clEi.exit.i.i": ; preds = %.lr.ph144, %bb.b
  %.6 = phi i32 [ %.4, %bb.b ], [ %i.as, %.lr.ph144 ] ; 3 uses
  %i.av = icmp samesign ugt i64 %indvars.iv, 128
  br i1 %i.av, label %"_ZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_.exit", label %bb.b, !llvm.loop !315

"_ZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_.exit": ; preds = %"_ZZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_ENKUliE_clEi.exit.i.i"
  %.not = icmp eq i32 %.6, 0
  br i1 %.not, label %.preheader, label %.thread55

.preheader:                                       ; preds = %"_ZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_.exit"
  %storemerge24145.a = add nuw i32 %.pre, 4       ; 2 uses
  %i.aw = icmp ult i32 %storemerge24145.a, %i.h
  br i1 %i.aw, label %.lr.ph147.preheader, label %._crit_edge148

.lr.ph147.preheader:                              ; preds = %.preheader
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !115
  br label %.lr.ph147

bb.c:                                             ; preds = %.lr.ph147
  %storemerge24 = add nuw i32 %storemerge24146, 4 ; 2 uses
  %i.az = icmp ult i32 %storemerge24, %i.h
  br i1 %i.az, label %.lr.ph147, label %._crit_edge148, !llvm.loop !316

.lr.ph147:                                        ; preds = %.lr.ph147.preheader, %bb.c
  %storemerge24146 = phi i32 [ %storemerge24, %bb.c ], [ %storemerge24145.a, %.lr.ph147.preheader ] ; 2 uses
  %i.ba = sext i32 %storemerge24146 to i64        ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ba
  %i.bc = load <4 x i64>, ptr %i.bb, align 1, !tbaa !110
  %i.bd = xor <4 x i64> %i.bc, splat (i64 -1)
  %i.be = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.ba
  %i.bf = load <4 x i64>, ptr %i.be, align 1, !tbaa !110
  %i.bg = and <4 x i64> %i.bf, %i.bd
  %i.bh = icmp ne <4 x i64> %i.bg, zeroinitializer
  %i.bi = bitcast <4 x i1> %i.bh to i4
  %i.bj = icmp eq i4 %i.bi, 0
  br i1 %i.bj, label %bb.c, label %.thread64.thread, !llvm.loop !316

._crit_edge148:                                   ; preds = %bb.c, %.preheader
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !115
  %i.bl = zext i32 %i.f to i64                    ; 2 uses
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bm ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !110
  %i.bp = and i64 %i.bl, 7
  %i.bq = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !110
  %i.bs = and i8 %i.br, %i.bo
  store i8 %i.bs, ptr %i.bn, align 1, !tbaa !110
  br label %.thread64.thread

.thread64.thread:                                 ; preds = %.preheader.i47.i.i.preheader, %.preheader.i47.i.i, %.lr.ph147, %._crit_edge148
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.f

.thread55:                                        ; preds = %"_ZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_.exit", %.lr.ph
  %.12062 = phi i1 [ %.01998, %.lr.ph ], [ true, %"_ZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_.exit" ] ; 2 uses
  %.24160 = phi i32 [ %.14096, %.lr.ph ], [ %.6, %"_ZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_.exit" ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.bt = add nuw i32 %.pre, 4
  %i.bu = icmp ult i32 %i.bt, %i.h
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 4
  br i1 %i.bu, label %.lr.ph, label %._crit_edge, !llvm.loop !317

._crit_edge:                                      ; preds = %.thread55
  %i.bv = load ptr, ptr %i.e, align 8, !tbaa !115
  %i.bw = zext i32 %i.f to i64                    ; 2 uses
  %i.bx = lshr i64 %i.bw, 3
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bx ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !110
  %i.ca = and i64 %i.bw, 7
  %i.cb = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !110
  %i.cd = and i8 %i.cc, %i.bz
  store i8 %i.cd, ptr %i.by, align 1, !tbaa !110
  br i1 %.12062, label %.thread64, label %.loopexit, !llvm.loop !318

.critedge:                                        ; preds = %.thread64
  %i.ce = load ptr, ptr %i.e, align 8, !tbaa !115
  %i.cf = lshr i32 %i.f, 3
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cg ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !110
  %i.cj = and i8 %i.ci, 127
  store i8 %i.cj, ptr %i.ch, align 1, !tbaa !110
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull @.str, i32 noundef 774, i32 noundef 2)
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %4)
          to label %bb.d unwind label %bb.e       ; 3 uses

bb.d:                                             ; preds = %.loopexit
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef nonnull @.str.5, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef nonnull @.str.48, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cn = load i64, ptr %i.d, align 8, !tbaa !184
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, i64 noundef %i.cn)
          to label %.thread70 unwind label %bb.e  ; 0 uses

.thread70:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.f

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %.loopexit
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %i.cp

bb.f:                                             ; preds = %.thread64.thread, %.thread70
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6memory13MmapAllocator9SizeClass11allocateAnyEiRiRmRNS1_10AllocationE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(36) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = sext i32 %1 to i64                       ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.b
  %i.e = load i64, ptr %i.d, align 8, !tbaa !70
  %i.f = xor i64 %i.e, -1                         ; 2 uses
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.f)
  %i.h = trunc nuw nsw i64 %i.g to i32
  %i.i = load i32, ptr %2, align 4, !tbaa !111    ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %i.h) ; 3 uses
  %i.j = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = shl nsw i32 %1, 6
  %i.p = sext i32 %i.o to i64
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = load i32, ptr %2, align 4, !tbaa !111
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.q = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.i, %bb.a ]
  %i.r = sub nsw i32 %i.q, %.sroa.speculated
  store i32 %i.r, ptr %2, align 4, !tbaa !111
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.023 = phi i32 [ 0, %.lr.ph ], [ %i.au, %bb.e ]
  %.01922 = phi i64 [ %i.f, %.lr.ph ], [ %i.at, %bb.e ] ; 3 uses
  %i.s = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01922, i1 true) ; 4 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.b
  %i.v = trunc nuw nsw i64 %i.s to i8
  %i.w = and i8 %i.v, 7
  %i.x = shl nuw i8 1, %i.w
  %i.y = lshr i64 %i.s, 3
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.y ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !110
  %i.ab = or i8 %i.aa, %i.x
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !110
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !115
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.b
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !70
  %i.af = shl nuw i64 1, %i.s
  %i.ag = and i64 %i.ae, %i.af
  %.not = icmp eq i64 %i.ag, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ah = load i64, ptr %i.m, align 8, !tbaa !184
  %i.ai = load i64, ptr %3, align 8, !tbaa !70
  %i.aj = add i64 %i.ai, %i.ah
  store i64 %i.aj, ptr %3, align 8, !tbaa !70
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ak = load i32, ptr %i.l, align 4, !tbaa !208
  %i.al = add nsw i32 %i.ak, -1
  store i32 %i.al, ptr %i.l, align 4, !tbaa !208
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.am = load ptr, ptr %i.n, align 8, !tbaa !182
  %i.an = load i64, ptr %i.m, align 8, !tbaa !184 ; 2 uses
  %i.ao = or disjoint i64 %i.s, %i.p
  %i.ap = shl nsw i64 %i.ao, 12
  %i.aq = mul i64 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aq
  tail call void @_ZN8facebook5velox6memory10Allocation6appendEPhm(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %i.ar, i64 noundef %i.an)
  %i.as = add i64 %.01922, -1
  %i.at = and i64 %i.as, %.01922
  %i.au = add nuw nsw i32 %.023, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.au, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !312
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN8facebook5velox6memory13MmapAllocator9SizeClass19findMappedFreeGroupEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !273  ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  %spec.store.select = select i1 %i.d, i32 0, i32 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !274
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !115  ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = add nsw i64 %i.l, 8
  %i.n = add nsw i64 %i.l, -4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ]
  %.02039 = phi i32 [ %spec.store.select, %bb.a ], [ %i.v, %bb.c ] ; 3 uses
  %i.o = sext i32 %.02039 to i64                  ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.o
  %i.q = load <4 x i64>, ptr %i.p, align 1, !tbaa !110
  %i.r = icmp eq <4 x i64> %i.q, zeroinitializer
  %i.s = bitcast <4 x i1> %i.r to i4              ; 2 uses
  %.not26 = icmp eq i4 %i.s, -1
  br i1 %.not26, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.t = add nsw i32 %.02039, 4                   ; 2 uses
  %i.u = sext i32 %i.t to i64
  %.not27 = icmp ult i64 %i.n, %i.u
  %i.v = select i1 %.not27, i32 0, i32 %i.t
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp ult i64 %i.m, %indvars.iv.next
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !319

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i32 0, ptr %i.a, align 4, !tbaa !111
  %i.w = call noundef i32 @_ZNK8facebook5velox6memory13MmapAllocator9SizeClass16checkConsistencyERiS4_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str, i32 noundef 710)
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.d unwind label %bb.f       ; 3 uses

bb.d:                                             ; preds = %.critedge
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.5, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.47, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !184
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i64 noundef %i.ab)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #40
  unreachable

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28, %.critedge
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #40
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.ae = xor i4 %i.s, -1
  store i32 %.02039, ptr %i.b, align 8, !tbaa !273
  %i.af = tail call range(i4 0, 5) i4 @llvm.cttz.i4(i4 %i.ae, i1 true)
  %i.ag = zext nneg i4 %i.af to i64
  %i.ah = add nsw i64 %i.ag, %i.o                 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !70
  %i.ak = tail call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aj, i1 false)
  %i.al = shl nsw i64 %i.ah, 6
  %i.am = add nsw i64 %i.ak, %i.al
  %i.an = trunc i64 %i.am to i32
  ret i32 %i.an
}

declare void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef) unnamed_addr #9

; Function Attrs: noreturn nounwind
declare void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96)) unnamed_addr #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define <4 x i64> @_ZN8facebook5velox6memory13MmapAllocator9SizeClass14mappedFreeBitsEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, i32 noundef %1) local_unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load <4 x i64>, ptr %i.d, align 1, !tbaa !110
  %i.f = xor <4 x i64> %i.e, splat (i64 -1)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !115
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.c
  %i.j = load <4 x i64>, ptr %i.i, align 1, !tbaa !110
  %i.k = and <4 x i64> %i.j, %i.f
  ret <4 x i64> %i.k
end_hunk_1
