inline.NumInlined: 1333
inline.NumDeleted: 686
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::shared_ptr.47" = type { %"class.std::__shared_ptr.48" }
%"class.std::__shared_ptr.48" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.arrow::Status" = type { ptr }
%"struct.arrow::internal::TaskHints" = type { i32, i64, i64, i64 }
%"class.std::shared_ptr.0" = type { %"class.std::__shared_ptr.1" }
%"class.std::__shared_ptr.1" = type { ptr, %"class.std::__shared_count" }
%"struct.arrow::internal::(anonymous namespace)::QueuedTask" = type { %"struct.arrow::internal::(anonymous namespace)::Task", i32, i64 }
%"struct.arrow::internal::(anonymous namespace)::Task" = type { %"class.arrow::internal::FnOnce", %"class.arrow::StopToken", %"class.arrow::internal::FnOnce.8" }
%"class.arrow::internal::FnOnce" = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.4" }
%"struct.std::_Head_base.4" = type { ptr }
%"class.arrow::StopToken" = type { %"class.std::shared_ptr.5" }
%"class.std::shared_ptr.5" = type { %"class.std::__shared_ptr.6" }
%"class.std::__shared_ptr.6" = type { ptr, %"class.std::__shared_count" }
%"class.arrow::internal::FnOnce.8" = type { %"class.std::unique_ptr.9" }
%"class.std::unique_ptr.9" = type { %"struct.std::__uniq_ptr_data.10" }
%"struct.std::__uniq_ptr_data.10" = type { %"class.std::__uniq_ptr_impl.11" }
%"class.std::__uniq_ptr_impl.11" = type { %"class.std::tuple.12" }
%"class.std::tuple.12" = type { %"struct.std::_Tuple_impl.13" }
%"struct.std::_Tuple_impl.13" = type { %"struct.std::_Head_base.16" }
%"struct.std::_Head_base.16" = type { ptr }
%"class.std::unique_lock" = type <{ ptr, i8, [7 x i8] }>
%"class.std::weak_ptr.41" = type { %"class.std::__weak_ptr.42" }
%"class.std::__weak_ptr.42" = type { ptr, %"class.std::__weak_count" }
%"class.std::__weak_count" = type { ptr }
%"class.std::unique_ptr.107" = type { %"struct.std::__uniq_ptr_data.108" }
%"struct.std::__uniq_ptr_data.108" = type { %"class.std::__uniq_ptr_impl.109" }
%"class.std::__uniq_ptr_impl.109" = type { %"class.std::tuple.110" }
%"class.std::tuple.110" = type { %"struct.std::_Tuple_impl.111" }
%"struct.std::_Tuple_impl.111" = type { %"struct.std::_Head_base.114" }
%"struct.std::_Head_base.114" = type { ptr }
%"class.std::shared_ptr.17" = type { %"class.std::__shared_ptr.18" }
%"class.std::__shared_ptr.18" = type { ptr, %"class.std::__shared_count" }
%"class.std::thread" = type { %"class.std::thread::id" }
%"class.std::thread::id" = type { i64 }
%"class.arrow::Result" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage" }
%"class.arrow::internal::AlignedStorage" = type { [16 x i8] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator.54" = type { i8 }
%"class.arrow::Result.50" = type <{ %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.53", [4 x i8] }>
%"class.arrow::internal::AlignedStorage.53" = type { [4 x i8] }
%"class.arrow::util::ArrowLog" = type <{ %"class.arrow::util::ArrowLogBase", ptr, i8, [7 x i8] }>
%"class.arrow::util::ArrowLogBase" = type { ptr }
%"class.arrow::Result.63" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.66" }
%"class.arrow::internal::AlignedStorage.66" = type { [32 x i8] }
%"class.arrow::internal::StringStreamWrapper" = type { %"class.std::unique_ptr.73", ptr }
%"class.std::unique_ptr.73" = type { %"struct.std::__uniq_ptr_data.74" }
%"struct.std::__uniq_ptr_data.74" = type { %"class.std::__uniq_ptr_impl.75" }
%"class.std::__uniq_ptr_impl.75" = type { %"class.std::tuple.76" }
%"class.std::tuple.76" = type { %"struct.std::_Tuple_impl.77" }
%"struct.std::_Tuple_impl.77" = type { %"struct.std::_Head_base.80" }
%"struct.std::_Head_base.80" = type { ptr }
%"class.std::any" = type { ptr, %"union.std::any::_Storage" }
%"union.std::any::_Storage" = type { ptr }
%"union.std::any::_Arg" = type { ptr }

$__clang_call_terminate = comdat any

$_ZNSt12__shared_ptrIN5arrow8internal14SerialExecutor5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIN5arrow8internal10ThreadPool5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEEC2ERKNS_6StatusE = comdat any

$_ZNSt12__shared_ptrIN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEED2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN5arrow8internal8Executor14OwnsThisThreadEv = comdat any

$_ZN5arrow8internal8Executor17IsCurrentExecutorEv = comdat any

$_ZN5arrow8internal14SerialExecutor11GetCapacityEv = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN5arrow6Status11DeleteStateEv = comdat any

$_ZNSt6vectorISt10shared_ptrIN5arrow8internal8Executor8ResourceEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal14SerialExecutor5StateESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal14SerialExecutor5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal14SerialExecutor5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal14SerialExecutor5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZN5arrow6Status8FromArgsIJRA92_KcEEES0_NS_10StatusCodeEDpOT_ = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal10ThreadPool5StateESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal10ThreadPool5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal10ThreadPool5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal10ThreadPool5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZN5arrow8internal10ThreadPool5StateD2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZNSt3any17_Manager_externalISt10shared_ptrIN5arrow8internal10ThreadPool5StateEEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE = comdat any

$_ZSt20__throw_bad_any_castv = comdat any

$_ZNSt12bad_any_castD0Ev = comdat any

$_ZNKSt12bad_any_cast4whatEv = comdat any

$_ZN5arrow6Status8FromArgsIJRA45_KcEEES0_NS_10StatusCodeEDpOT_ = comdat any

$_ZN5arrow6Status8FromArgsIJRA32_KcEEES0_NS_10StatusCodeEDpOT_ = comdat any

$_ZN5arrow6Status8FromArgsIJRA26_KcEEES0_NS_10StatusCodeEDpOT_ = comdat any

$_ZNSt6thread24_M_thread_deps_never_runEv = comdat any

$_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt15_Sp_counted_ptrIPN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt15_Sp_counted_ptrIPN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt15_Sp_counted_ptrIPN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt15_Sp_counted_ptrIPN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZTWN5arrow8internal20current_thread_pool_E = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow8internal14SerialExecutor5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN5arrow8internal14SerialExecutor5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow8internal14SerialExecutor5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt19_Sp_make_shared_tag = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow8internal10ThreadPool5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN5arrow8internal10ThreadPool5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow8internal10ThreadPool5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt10shared_ptrIN5arrow8internal10ThreadPool5StateEE = comdat any

$_ZTSSt10shared_ptrIN5arrow8internal10ThreadPool5StateEE = comdat any

$_ZTISt12__shared_ptrIN5arrow8internal10ThreadPool5StateELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt12__shared_ptrIN5arrow8internal10ThreadPool5StateELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt19__shared_ptr_accessIN5arrow8internal10ThreadPool5StateELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE = comdat any

$_ZTSSt19__shared_ptr_accessIN5arrow8internal10ThreadPool5StateELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE = comdat any

$_ZTISt12bad_any_cast = comdat any

$_ZTSSt12bad_any_cast = comdat any

$_ZTVSt12bad_any_cast = comdat any

$_ZTVSt15_Sp_counted_ptrIPN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt15_Sp_counted_ptrIPN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt15_Sp_counted_ptrIPN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EE = comdat any

@_ZTVN5arrow8internal14SerialExecutorE = unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN5arrow8internal14SerialExecutorE, ptr @_ZN5arrow8internal14SerialExecutorD1Ev, ptr @_ZN5arrow8internal14SerialExecutorD0Ev, ptr @_ZN5arrow8internal14SerialExecutor11GetCapacityEv, ptr @_ZN5arrow8internal14SerialExecutor14OwnsThisThreadEv, ptr @_ZN5arrow8internal8Executor17IsCurrentExecutorEv, ptr @_ZN5arrow8internal8Executor9KeepAliveESt10shared_ptrINS1_8ResourceEE, ptr @_ZN5arrow8internal14SerialExecutor9SpawnRealENS0_9TaskHintsENS0_6FnOnceIFvvEEENS_9StopTokenEONS3_IFvRKNS_6StatusEEEE, ptr @_ZN5arrow8internal14SerialExecutor7RunLoopEv] }, align 8
@.str = private unnamed_addr constant [92 x i8] c"Attempt to schedule a task on a serial executor that has already finished or been abandoned\00", align 1
@_ZTVN5arrow8internal10ThreadPoolE = unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN5arrow8internal10ThreadPoolE, ptr @_ZN5arrow8internal10ThreadPoolD1Ev, ptr @_ZN5arrow8internal10ThreadPoolD0Ev, ptr @_ZN5arrow8internal10ThreadPool11GetCapacityEv, ptr @_ZN5arrow8internal10ThreadPool14OwnsThisThreadEv, ptr @_ZN5arrow8internal8Executor17IsCurrentExecutorEv, ptr @_ZN5arrow8internal10ThreadPool9KeepAliveESt10shared_ptrINS0_8Executor8ResourceEE, ptr @_ZN5arrow8internal10ThreadPool9SpawnRealENS0_9TaskHintsENS0_6FnOnceIFvvEEENS_9StopTokenEONS3_IFvRKNS_6StatusEEEE] }, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"operation forbidden during or after shutdown\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ThreadPool capacity must be > 0\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Shutdown() already called\00", align 1
@_ZN5arrow8internal20current_thread_pool_E = thread_local global ptr null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"OMP_NUM_THREADS\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"/opt-bench/work/arrow/arrow/cpp/src/arrow/util/thread_pool.cc\00", align 1
@.str.6 = private unnamed_addr constant [91 x i8] c"Failed to determine the number of available threads, using a hardcoded arbitrary value of \00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"OMP_THREAD_LIMIT\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Failed to create global CPU thread pool\00", align 1
@_ZZN5arrow8internal16GetCpuThreadPoolEvE9singleton = internal global %"class.std::shared_ptr.47" zeroinitializer, align 8
@_ZGVZN5arrow8internal16GetCpuThreadPoolEvE9singleton = internal global i64 0, align 8
@__dso_handle = external hidden global i8
@_ZTVN5arrow8internal8ExecutorE = unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN5arrow8internal8ExecutorE, ptr @_ZN5arrow8internal8ExecutorD1Ev, ptr @_ZN5arrow8internal8ExecutorD0Ev, ptr @__cxa_pure_virtual, ptr @_ZN5arrow8internal8Executor14OwnsThisThreadEv, ptr @_ZN5arrow8internal8Executor17IsCurrentExecutorEv, ptr @_ZN5arrow8internal8Executor9KeepAliveESt10shared_ptrINS1_8ResourceEE, ptr @__cxa_pure_virtual] }, align 8
@_ZTIN5arrow8internal8ExecutorE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5arrow8internal8ExecutorE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN5arrow8internal8ExecutorE = constant [27 x i8] c"N5arrow8internal8ExecutorE\00", align 1
@_ZTIN5arrow8internal14SerialExecutorE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5arrow8internal14SerialExecutorE, ptr @_ZTIN5arrow8internal8ExecutorE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5arrow8internal14SerialExecutorE = constant [34 x i8] c"N5arrow8internal14SerialExecutorE\00", align 1
@_ZTIN5arrow8internal10ThreadPoolE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5arrow8internal10ThreadPoolE, ptr @_ZTIN5arrow8internal8ExecutorE }, align 8
@_ZTSN5arrow8internal10ThreadPoolE = constant [30 x i8] c"N5arrow8internal10ThreadPoolE\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"stoi\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow8internal14SerialExecutor5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5arrow8internal14SerialExecutor5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal14SerialExecutor5StateESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal14SerialExecutor5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal14SerialExecutor5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal14SerialExecutor5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5arrow8internal14SerialExecutor5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow8internal14SerialExecutor5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow8internal14SerialExecutor5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [103 x i8] c"St23_Sp_counted_ptr_inplaceIN5arrow8internal14SerialExecutor5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow8internal10ThreadPool5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5arrow8internal10ThreadPool5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal10ThreadPool5StateESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal10ThreadPool5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal10ThreadPool5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal10ThreadPool5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5arrow8internal10ThreadPool5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow8internal10ThreadPool5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow8internal10ThreadPool5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [99 x i8] c"St23_Sp_counted_ptr_inplaceIN5arrow8internal10ThreadPool5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [96 x i8] c"St23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt10shared_ptrIN5arrow8internal10ThreadPool5StateEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt10shared_ptrIN5arrow8internal10ThreadPool5StateEE, ptr @_ZTISt12__shared_ptrIN5arrow8internal10ThreadPool5StateELN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt10shared_ptrIN5arrow8internal10ThreadPool5StateEE = linkonce_odr constant [52 x i8] c"St10shared_ptrIN5arrow8internal10ThreadPool5StateEE\00", comdat, align 1
@_ZTISt12__shared_ptrIN5arrow8internal10ThreadPool5StateELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt12__shared_ptrIN5arrow8internal10ThreadPool5StateELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt19__shared_ptr_accessIN5arrow8internal10ThreadPool5StateELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE }, comdat, align 8
@_ZTSSt12__shared_ptrIN5arrow8internal10ThreadPool5StateELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [83 x i8] c"St12__shared_ptrIN5arrow8internal10ThreadPool5StateELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt19__shared_ptr_accessIN5arrow8internal10ThreadPool5StateELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt19__shared_ptr_accessIN5arrow8internal10ThreadPool5StateELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE }, comdat, align 8
@_ZTSSt19__shared_ptr_accessIN5arrow8internal10ThreadPool5StateELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE = linkonce_odr constant [98 x i8] c"St19__shared_ptr_accessIN5arrow8internal10ThreadPool5StateELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE\00", comdat, align 1
@"_ZTIZN5arrow8internal10ThreadPoolC1EvE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN5arrow8internal10ThreadPoolC1EvE3$_0" }, align 8
@"_ZTSZN5arrow8internal10ThreadPoolC1EvE3$_0" = internal constant [39 x i8] c"ZN5arrow8internal10ThreadPoolC1EvE3$_0\00", align 1
@_ZTIv = external local_unnamed_addr constant ptr
@_ZTISt12bad_any_cast = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt12bad_any_cast, ptr @_ZTISt8bad_cast }, comdat, align 8
@_ZTSSt12bad_any_cast = linkonce_odr constant [17 x i8] c"St12bad_any_cast\00", comdat, align 1
@_ZTISt8bad_cast = external constant ptr
@_ZTVSt12bad_any_cast = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTISt12bad_any_cast, ptr @_ZNSt8bad_castD2Ev, ptr @_ZNSt12bad_any_castD0Ev, ptr @_ZNKSt12bad_any_cast4whatEv] }, comdat, align 8
@.str.16 = private unnamed_addr constant [13 x i8] c"bad any_cast\00", align 1
@"_ZTIZN5arrow8internal10ThreadPoolC1EvE3$_1" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN5arrow8internal10ThreadPoolC1EvE3$_1" }, align 8
@"_ZTSZN5arrow8internal10ThreadPoolC1EvE3$_1" = internal constant [39 x i8] c"ZN5arrow8internal10ThreadPoolC1EvE3$_1\00", align 1
@"_ZTIZN5arrow8internal10ThreadPoolC1EvE3$_2" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN5arrow8internal10ThreadPoolC1EvE3$_2" }, align 8
@"_ZTSZN5arrow8internal10ThreadPoolC1EvE3$_2" = internal constant [39 x i8] c"ZN5arrow8internal10ThreadPoolC1EvE3$_2\00", align 1
@"_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEEEE" = internal unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @"_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEEEE", ptr @"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEEED2Ev", ptr @"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEEED0Ev", ptr @"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEEE6_M_runEv"] }, align 8
@"_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEEEE" = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @"_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEEEE", ptr @_ZTINSt6thread6_StateE }, align 8
@"_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEEEE" = internal constant [113 x i8] c"NSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEEEE\00", align 1
@_ZTINSt6thread6_StateE = external constant ptr
@_ZTVSt15_Sp_counted_ptrIPN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt15_Sp_counted_ptrIPN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt15_Sp_counted_ptrIPN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt15_Sp_counted_ptrIPN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt15_Sp_counted_ptrIPN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [81 x i8] c"St15_Sp_counted_ptrIPN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"Constructed with a non-error status: \00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

@_ZN5arrow8internal8ExecutorD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5arrow8internal8ExecutorD2Ev
@_ZN5arrow8internal14SerialExecutorC1Ev = unnamed_addr alias void (ptr), ptr @_ZN5arrow8internal14SerialExecutorC2Ev
@_ZN5arrow8internal14SerialExecutorD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5arrow8internal14SerialExecutorD2Ev
@_ZN5arrow8internal10ThreadPoolC1Ev = unnamed_addr alias void (ptr), ptr @_ZN5arrow8internal10ThreadPoolC2Ev
@_ZN5arrow8internal10ThreadPoolD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5arrow8internal10ThreadPoolD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN5arrow8internal8ExecutorD2Ev(ptr nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN5arrow8internal8ExecutorD0Ev(ptr nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN5arrow8internal8Executor9KeepAliveESt10shared_ptrINS1_8ResourceEE(ptr nonnull readnone align 8 captures(none) %0, ptr readnone captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal14SerialExecutorC2Ev(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5arrow8internal14SerialExecutorE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #31 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 1, ptr %i.d, align 8, !tbaa !12, !noalias !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 1, ptr %i.e, align 4, !tbaa !14, !noalias !9
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow8internal14SerialExecutor5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.c, align 8, !tbaa !7, !noalias !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.f, i8 0, i64 144, i1 false), !noalias !9
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.g) #32, !noalias !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i64 0, ptr %i.h, align 8, !tbaa !15, !noalias !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store i8 0, ptr %i.i, align 8, !tbaa !18, !noalias !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 153
  store i8 0, ptr %i.j, align 1, !tbaa !33, !noalias !9
  store ptr %i.c, ptr %i.b, align 8, !tbaa !34, !alias.scope !9
  store ptr %i.f, ptr %i.a, align 8, !tbaa !37, !alias.scope !9
  ret void
}
end_hunk_0
begin_hunk_1_@_ZN5arrow24GetCpuThreadPoolCapacityEv:bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(33) %i.f)
  ret i32 %i.j
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow24SetCpuThreadPoolCapacityEi(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5arrow8internal16GetCpuThreadPoolEvE9singleton acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5arrow8internal16GetCpuThreadPoolEv.exit, !prof !275

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal16GetCpuThreadPoolEvE9singleton) #32
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5arrow8internal16GetCpuThreadPoolEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5arrow8internal10ThreadPool17MakeCpuThreadPoolEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.47") align 8 @_ZZN5arrow8internal16GetCpuThreadPoolEvE9singleton)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt12__shared_ptrIN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr nonnull @_ZZN5arrow8internal16GetCpuThreadPoolEvE9singleton, ptr nonnull @__dso_handle) #32 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow8internal16GetCpuThreadPoolEvE9singleton) #32
  br label %_ZN5arrow8internal16GetCpuThreadPoolEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5arrow8internal16GetCpuThreadPoolEvE9singleton) #32
  resume { ptr, i32 } %i.e

_ZN5arrow8internal16GetCpuThreadPoolEv.exit:      ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr @_ZZN5arrow8internal16GetCpuThreadPoolEvE9singleton, align 8, !tbaa !231
  tail call void @_ZN5arrow8internal10ThreadPool11SetCapacityEi(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(33) %i.f, i32 noundef %1)
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal8Executor14OwnsThisThreadEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal8Executor17IsCurrentExecutorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN5arrow8internal14SerialExecutor11GetCapacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #32, !inline_history !276
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #32, !inline_history !276
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !84     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !14
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #32, !inline_history !277
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #32, !inline_history !277
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !44

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #32
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !237  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN5arrow6Status5StateD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !41
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #34
  br label %_ZN5arrow6Status5StateD2Ev.exit

_ZN5arrow6Status5StateD2Ev.exit:                  ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #34
  br label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6Status5StateD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow8internal8Executor8ResourceEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !226  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !278    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow8internal8Executor8ResourceEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #33
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow8internal8Executor8ResourceEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %3 = icmp ult i64 %i.i, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %4 = select i1 %3, i64 576460752303423487, i64 %i.j ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %4, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = shl nuw nsw i64 %4, 4
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #31 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load <2 x ptr>, ptr %2, align 8, !tbaa !52
  store ptr null, ptr %i.p, align 8, !tbaa !34
  store <2 x ptr> %i.q, ptr %i.o, align 8, !tbaa !52
  store ptr null, ptr %2, align 8, !tbaa !228
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow8internal8Executor8ResourceEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow8internal8Executor8ResourceEESaIS5_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.n, %_ZNKSt6vectorISt10shared_ptrIN5arrow8internal8Executor8ResourceEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow8internal8Executor8ResourceEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.s = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !52, !alias.scope !282, !noalias !279
  store ptr null, ptr %i.r, align 8, !tbaa !34, !alias.scope !282, !noalias !279
  store <2 x ptr> %i.s, ptr %.012.i.i.i, align 8, !tbaa !52, !alias.scope !279, !noalias !282
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !228, !alias.scope !282, !noalias !279
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow8internal8Executor8ResourceEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !284

_ZNSt6vectorISt10shared_ptrIN5arrow8internal8Executor8ResourceEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow8internal8Executor8ResourceEESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %_ZNKSt6vectorISt10shared_ptrIN5arrow8internal8Executor8ResourceEESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.u, %.lr.ph.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN5arrow8internal8Executor8ResourceEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow8internal8Executor8ResourceEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.z, %.lr.ph.i.i.i17 ], [ %i.v, %_ZNSt6vectorISt10shared_ptrIN5arrow8internal8Executor8ResourceEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.y, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow8internal8Executor8ResourceEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !52, !alias.scope !288, !noalias !285
  store ptr null, ptr %i.w, align 8, !tbaa !34, !alias.scope !288, !noalias !285
  store <2 x ptr> %i.x, ptr %.012.i.i.i18, align 8, !tbaa !52, !alias.scope !285, !noalias !288
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !228, !alias.scope !288, !noalias !285
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN5arrow8internal8Executor8ResourceEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !284

_ZNSt6vectorISt10shared_ptrIN5arrow8internal8Executor8ResourceEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN5arrow8internal8Executor8ResourceEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.v, %_ZNSt6vectorISt10shared_ptrIN5arrow8internal8Executor8ResourceEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.z, %.lr.ph.i.i.i17 ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow8internal8Executor8ResourceEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow8internal8Executor8ResourceEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !227
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #34
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow8internal8Executor8ResourceEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow8internal8Executor8ResourceEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow8internal8Executor8ResourceEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, %bb.c
  store ptr %i.n, ptr %0, align 8, !tbaa !278
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !226
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %4
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !227
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #15

declare void @_ZN5arrow8internal9GetEnvVarB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.arrow::Result.63") align 8, i64, ptr) local_unnamed_addr #11

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !84     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, !prof !112

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !237  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !41
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #34
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !84 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, !prof !245

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit
  %i.i = phi ptr [ %.pr.pre, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !113, !range !48, !noundef !49
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #32
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt24__throw_invalid_argumentPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #18

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal14SerialExecutor5StateESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal14SerialExecutor5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.b) #32
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !46   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5arrow8internal12_GLOBAL__N_110QueuedTaskES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.a, %_ZSt8_DestroyIN5arrow8internal12_GLOBAL__N_110QueuedTaskEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.af, %_ZSt8_DestroyIN5arrow8internal12_GLOBAL__N_110QueuedTaskEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #32, !inline_history !290
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34   ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5arrow9StopTokenD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.m, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !14
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #32, !inline_history !291
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #32, !inline_history !291
  br label %_ZN5arrow9StopTokenD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.p, %bb.e ], [ %i.z, %bb.f ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.g, label %_ZN5arrow9StopTokenD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !44

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #32
  br label %_ZN5arrow9StopTokenD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN5arrow9StopTokenD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.c, %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ab = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !50 ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow8internal12_GLOBAL__N_110QueuedTaskEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvvEE4ImplEEclEPS5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvvEE4ImplEEclEPS5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5arrow9StopTokenD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ab) #32, !inline_history !292
  br label %_ZSt8_DestroyIN5arrow8internal12_GLOBAL__N_110QueuedTaskEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIN5arrow8internal12_GLOBAL__N_110QueuedTaskEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvvEE4ImplEEclEPS5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5arrow9StopTokenD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.af, %i.e
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5arrow8internal12_GLOBAL__N_110QueuedTaskES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !199

_ZSt8_DestroyIPN5arrow8internal12_GLOBAL__N_110QueuedTaskES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN5arrow8internal12_GLOBAL__N_110QueuedTaskEEvPT_.exit.i.i.i.i.i.i.i
  %.val.pr.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %_ZSt8_DestroyIPN5arrow8internal12_GLOBAL__N_110QueuedTaskES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN5arrow8internal12_GLOBAL__N_110QueuedTaskES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN5arrow8internal12_GLOBAL__N_110QueuedTaskES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %bb.a
  %.val.i.i.i.i.i = phi ptr [ %.val.pr.i.i.i.i.i, %_ZSt8_DestroyIPN5arrow8internal12_GLOBAL__N_110QueuedTaskES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.not.i.i2.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %.not.i.i2.i.i.i.i.i, label %_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow8internal14SerialExecutor5StateEEEvRS0_PT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN5arrow8internal12_GLOBAL__N_110QueuedTaskES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !90
  %i.ah = ptrtoint ptr %.val1.i.i.i.i.i to i64
  %i.ai = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.aj) #34
  br label %_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow8internal14SerialExecutor5StateEEEvRS0_PT_.exit

_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow8internal14SerialExecutor5StateEEEvRS0_PT_.exit: ; preds = %bb.h, %_ZSt8_DestroyIPN5arrow8internal12_GLOBAL__N_110QueuedTaskES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZN5arrow6Status8FromArgsIJRA26_KcEEES0_NS_10StatusCodeEDpOT_:bb.a
          to label %_ZN5arrow8internal12JoinToStringIJRA26_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !354
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA26_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !354
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA26_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !237    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !41
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA26_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !237    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !41
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %common.resume
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #10

declare void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread24_M_thread_deps_never_runEv() #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEEED2Ev"(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEEEE", i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !tbaa !34  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i.i.i, label %"_ZNSt6thread8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEED2Ev.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967297
  %i.e = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !14
  %i.g = load ptr, ptr %.val, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %.val) #32, !inline_history !357
  %i.j = load ptr, ptr %.val, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %.val) #32, !inline_history !357
  br label %"_ZNSt6thread8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEED2Ev.exit"

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.e, -1
  store i32 %i.n, ptr %i.b, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.p, label %bb.g, label %"_ZNSt6thread8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEED2Ev.exit", !prof !44

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val) #32
  br label %"_ZNSt6thread8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEED2Ev.exit"

"_ZNSt6thread8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEED2Ev.exit": ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #32
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEEED0Ev"(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEEEE", i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !34 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEEED2Ev.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967297
  %i.e = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !14
  %i.g = load ptr, ptr %.val.i, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #32, !inline_history !358
  %i.j = load ptr, ptr %.val.i, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #32, !inline_history !358
  br label %"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEEED2Ev.exit"

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.e, -1
  store i32 %i.n, ptr %i.b, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.p, label %bb.g, label %"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEEED2Ev.exit", !prof !44

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #32, !inline_history !359
  br label %"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEEED2Ev.exit"

"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEEED2Ev.exit": ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.g
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #32, !inline_history !359
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEEE6_M_runEv"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_lock", align 8  ; 10 uses
  %2 = alloca %"struct.arrow::internal::(anonymous namespace)::Task", align 8 ; 13 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr.17", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !212
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5arrow8internal20current_thread_pool_E)
  store ptr %i.b, ptr %i.c, align 8, !tbaa !221
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !333  ; 3 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !333
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34   ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !34
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow8internal10ThreadPool5StateEEC2ERKS4_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.i, align 4, !tbaa !3
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8internal10ThreadPool5StateEEC2ERKS4_.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !333
  br label %_ZNSt10shared_ptrIN5arrow8internal10ThreadPool5StateEEC2ERKS4_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN5arrow8internal10ThreadPool5StateEEC2ERKS4_.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.a
  %i.n = phi ptr [ %i.e, %bb.a ], [ %i.e, %bb.c ], [ %.pre.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !216 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  store ptr %i.n, ptr %1, align 8, !tbaa !106
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.q = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #32 ; 2 uses
  %.not.i.i.i.i2.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i2.i.i.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8internal10ThreadPool5StateEEC2ERKS4_.exit.i.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.q) #33
          to label %.noexc.i.i.i.i.i unwind label %bb.bh

.noexc.i.i.i.i.i:                                 ; preds = %bb.e
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIN5arrow8internal10ThreadPool5StateEEC2ERKS4_.exit.i.i.i.i.i
  store i8 1, ptr %i.p, align 8, !tbaa !109
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.ao, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i.i.i.i.i
  %i.u = load ptr, ptr %4, align 8, !tbaa !333    ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 232 ; 2 uses
  %.val68.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !42 ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 240
  %.val1369.i.i.i.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !42
  %i.x = icmp eq ptr %.val68.i.i.i.i.i.i, %.val1369.i.i.i.i.i.i
  br i1 %i.x, label %.critedge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f, %bb.am
  %.val70.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i, %bb.am ], [ %.val68.i.i.i.i.i.i, %bb.f ] ; 5 uses
  %i.y = phi ptr [ %i.ek, %bb.am ], [ %i.v, %bb.f ]
  %i.z = phi ptr [ %i.ee, %bb.am ], [ %i.u, %bb.f ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 281
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !194, !range !48, !noundef !49
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.critedge.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ad = getelementptr i8, ptr %i.z, i64 200
  %.val15.val.val.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !208
  %i.ae = getelementptr i8, ptr %i.z, i64 272
  %.val15.val.val17.i.i.i.i.i.i = load i32, ptr %i.ae, align 8, !tbaa !207
  %i.af = sext i32 %.val15.val.val17.i.i.i.i.i.i to i64
  %i.ag = icmp ugt i64 %.val15.val.val.i.i.i.i.i.i, %i.af
  br i1 %i.ag, label %.critedge.i.i.i.i.i.i, label %bb.h

.loopexit51.i.i.i.i.i.i:                          ; preds = %bb.ao
  %lpad.loopexit53.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp52.i.i.i.i.i.i:                 ; preds = %bb.ar
  %lpad.loopexit.split-lp54.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.ah = load i64, ptr %.val70.i.i.i.i.i.i, align 8, !tbaa !50
  store i64 %i.ah, ptr %2, align 8, !tbaa !50
  store ptr null, ptr %.val70.i.i.i.i.i.i, align 8, !tbaa !50
  %i.ai = getelementptr inbounds nuw i8, ptr %.val70.i.i.i.i.i.i, i64 8 ; 2 uses
  store ptr null, ptr %i.s, align 8, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %.val70.i.i.i.i.i.i, i64 16
  %i.ak = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !52
  store ptr null, ptr %i.aj, align 8, !tbaa !34
  store <2 x ptr> %i.ak, ptr %i.r, align 8, !tbaa !52
  store ptr null, ptr %i.ai, align 8, !tbaa !53
  %i.al = getelementptr inbounds nuw i8, ptr %.val70.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !56
  store i64 %i.am, ptr %i.t, align 8, !tbaa !56
  store ptr null, ptr %i.al, align 8, !tbaa !56
  call fastcc void @_ZNSt14priority_queueIN5arrow8internal12_GLOBAL__N_110QueuedTaskESt6vectorIS3_SaIS3_EESt4lessIS3_EE3popEv(ptr noundef nonnull align 8 dereferenceable(25) %i.y)
  %i.an = load i8, ptr %i.p, align 8, !tbaa !109, !range !48, !noundef !49
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.i, label %.invoke.i.i.i.i.i.i

.invoke.i.i.i.i.i.i:                              ; preds = %bb.ad, %bb.ac, %_ZN5arrow8internal12_GLOBAL__N_14TaskD2Ev.exit.i.i.i.i.i.i, %bb.h
  %i.ap = phi i32 [ %i.df, %bb.ad ], [ 35, %bb.ac ], [ 1, %_ZN5arrow8internal12_GLOBAL__N_14TaskD2Ev.exit.i.i.i.i.i.i ], [ 1, %bb.h ]
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ap) #33
          to label %.cont.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i

.cont.i.i.i.i.i.i:                                ; preds = %.invoke.i.i.i.i.i.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %1, align 8, !tbaa !106   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11unique_lockISt5mutexE6unlockEv.exit.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.aq) #32 ; 0 uses
  store i8 0, ptr %i.p, align 8, !tbaa !109
  br label %_ZNSt11unique_lockISt5mutexE6unlockEv.exit.i.i.i.i.i.i

_ZNSt11unique_lockISt5mutexE6unlockEv.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.as = invoke noundef zeroext i1 @_ZNK5arrow9StopToken15IsStopRequestedEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %bb.k unwind label %.loopexit.i.i.i.i.i.i

bb.k:                                             ; preds = %_ZNSt11unique_lockISt5mutexE6unlockEv.exit.i.i.i.i.i.i
  br i1 %i.as, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = load i64, ptr %2, align 8, !tbaa !50
  %i.au = inttoptr i64 %i.at to ptr               ; 6 uses
  store ptr null, ptr %2, align 8, !tbaa !50
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.au)
          to label %_ZNO5arrow8internal6FnOnceIFvvEEclEv.exit.i.i.i.i.i.i unwind label %_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFvvEE4ImplESt14default_deleteIS5_EED2Ev.exit4.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFvvEE4ImplESt14default_deleteIS5_EED2Ev.exit4.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.au) #32, !inline_history !360
  br label %.body.i.i.i.i.i.i

_ZNO5arrow8internal6FnOnceIFvvEEclEv.exit.i.i.i.i.i.i: ; preds = %bb.l
  %i.bc = load ptr, ptr %i.au, align 8, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.au) #32, !inline_history !360
  br label %thread-pre-split.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %_ZNSt11unique_lockISt5mutexE6unlockEv.exit.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i:                   ; preds = %.invoke.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bf = load ptr, ptr %i.t, align 8, !tbaa !56  ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  %i.bg = ptrtoint ptr %i.bf to i64
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  invoke void @_ZNK5arrow9StopToken4PollEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bh = load i64, ptr %i.t, align 8, !tbaa !56
  %i.bi = inttoptr i64 %i.bh to ptr               ; 6 uses
  store ptr null, ptr %i.t, align 8, !tbaa !56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.p unwind label %_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplESt14default_deleteIS8_EED2Ev.exit5.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplESt14default_deleteIS8_EED2Ev.exit5.i.i.i.i.i.i.i: ; preds = %bb.o
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bn = load ptr, ptr %i.bi, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bi) #32, !inline_history !361
  %i.bq = load ptr, ptr %3, align 8, !tbaa !84    ; 2 uses
  %.not.i22.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i22.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit23.i.i.i.i.i.i, label %bb.t, !prof !112

bb.p:                                             ; preds = %bb.o
  %i.br = load ptr, ptr %i.bi, align 8, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bi) #32, !inline_history !361
  %i.bu = load ptr, ptr %3, align 8, !tbaa !84    ; 2 uses
  %.not.i21.i.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i21.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i, label %bb.q, !prof !112

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !113, !range !48, !noundef !49
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #32
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i:            ; preds = %bb.r, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %thread-pre-split.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.n
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6StatusD2Ev.exit23.i.i.i.i.i.i

bb.t:                                             ; preds = %_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplESt14default_deleteIS8_EED2Ev.exit5.i.i.i.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !113, !range !48, !noundef !49
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %_ZN5arrow6StatusD2Ev.exit23.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #32
  br label %_ZN5arrow6StatusD2Ev.exit23.i.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit23.i.i.i.i.i.i:          ; preds = %bb.u, %bb.t, %bb.s, %_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplESt14default_deleteIS8_EED2Ev.exit5.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.by, %bb.s ], [ %i.bm, %_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplESt14default_deleteIS8_EED2Ev.exit5.i.i.i.i.i.i.i ], [ %i.bm, %bb.t ], [ %i.bm, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %.body.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i:                     ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i, %_ZNO5arrow8internal6FnOnceIFvvEEclEv.exit.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load i64, ptr %i.t, align 8, !tbaa !56
  br label %bb.v

bb.v:                                             ; preds = %thread-pre-split.i.i.i.i.i.i, %bb.m
  %i.cc = phi i64 [ %.pr.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i ], [ %i.bg, %bb.m ] ; 2 uses
  %i.cd = load i64, ptr %2, align 8, !tbaa !50    ; 2 uses
  %i.ce = inttoptr i64 %i.cd to ptr               ; 2 uses
  store ptr null, ptr %2, align 8, !tbaa !50
  %i.cf = load ptr, ptr %i.s, align 8, !tbaa !34  ; 8 uses
  %.not.i.i.i24.i.i.i.i.i.i = icmp eq i64 %i.cc, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i24.i.i.i.i.i.i, label %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.v
  %i.cg = inttoptr i64 %i.cc to ptr               ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cg) #32, !inline_history !362
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit.i.i.i.i.i.i.i

_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i.i.i.i.i.i.i.i, %bb.v
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5arrow9StopTokenD2Ev.exit.i.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit.i.i.i.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 4 uses
  %i.cl = load atomic i64, ptr %i.ck acquire, align 8 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 4294967297
  %i.cn = trunc i64 %i.cl to i32                  ; 2 uses
  br i1 %i.cm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.ck, align 8, !tbaa !12
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 0, ptr %i.co, align 4, !tbaa !14
  %i.cp = load ptr, ptr %i.cf, align 8, !tbaa !7
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #32, !inline_history !363
  %i.cs = load ptr, ptr %i.cf, align 8, !tbaa !7
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #32, !inline_history !363
  br label %_ZN5arrow9StopTokenD2Ev.exit.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.cv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cw = add nsw i32 %i.cn, -1
  store i32 %i.cw, ptr %i.ck, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.cx = atomicrmw volatile add ptr %i.ck, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cn, %bb.z ], [ %i.cx, %bb.aa ]
  %i.cy = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cy, label %bb.ab, label %_ZN5arrow9StopTokenD2Ev.exit.i.i.i.i.i.i.i, !prof !44

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #32
  br label %_ZN5arrow9StopTokenD2Ev.exit.i.i.i.i.i.i.i

_ZN5arrow9StopTokenD2Ev.exit.i.i.i.i.i.i.i:       ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.x, %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit.i.i.i.i.i.i.i
  %.not.i.i1.i.i.i.i.i.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i1.i.i.i.i.i.i.i, label %_ZN5arrow8internal12_GLOBAL__N_14TaskD2Ev.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvvEE4ImplEEclEPS5_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvvEE4ImplEEclEPS5_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5arrow9StopTokenD2Ev.exit.i.i.i.i.i.i.i
  %i.cz = load ptr, ptr %i.ce, align 8, !tbaa !7
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ce) #32, !inline_history !364
  br label %_ZN5arrow8internal12_GLOBAL__N_14TaskD2Ev.exit.i.i.i.i.i.i

_ZN5arrow8internal12_GLOBAL__N_14TaskD2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvvEE4ImplEEclEPS5_.exit.i.i.i.i.i.i.i.i.i, %_ZN5arrow9StopTokenD2Ev.exit.i.i.i.i.i.i.i
  %i.dc = load ptr, ptr %1, align 8, !tbaa !106   ; 2 uses
  %.not.i25.i.i.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i25.i.i.i.i.i.i, label %.invoke.i.i.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZN5arrow8internal12_GLOBAL__N_14TaskD2Ev.exit.i.i.i.i.i.i
  %i.dd = load i8, ptr %i.p, align 8, !tbaa !109, !range !48, !noundef !49
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %.invoke.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.df = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.dc) #32 ; 2 uses
  %.not.i.i26.i.i.i.i.i.i = icmp eq i32 %i.df, 0
  br i1 %.not.i.i26.i.i.i.i.i.i, label %bb.ae, label %.invoke.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  store i8 1, ptr %i.p, align 8, !tbaa !109
  %i.dg = load ptr, ptr %i.t, align 8, !tbaa !56  ; 3 uses
  %.not.i.i.i30.i.i.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i30.i.i.i.i.i.i, label %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit.i32.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i.i31.i.i.i.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i.i31.i.i.i.i.i.i: ; preds = %bb.ae
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !7
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dg) #32, !inline_history !362
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit.i32.i.i.i.i.i.i

_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit.i32.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i.i31.i.i.i.i.i.i, %bb.ae
  %i.dk = load ptr, ptr %i.s, align 8, !tbaa !34  ; 8 uses
  %.not.i.i.i.i33.i.i.i.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i33.i.i.i.i.i.i, label %_ZN5arrow9StopTokenD2Ev.exit.i37.i.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit.i32.i.i.i.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 4 uses
  %i.dm = load atomic i64, ptr %i.dl acquire, align 8 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 4294967297
  %i.do = trunc i64 %i.dm to i32                  ; 2 uses
  br i1 %i.dn, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.dl, align 8, !tbaa !12
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  store i32 0, ptr %i.dp, align 4, !tbaa !14
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !7
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #32, !inline_history !363
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !7
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #32, !inline_history !363
  br label %_ZN5arrow9StopTokenD2Ev.exit.i37.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.dw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i34.i.i.i.i.i.i = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i.i.i34.i.i.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dx = add nsw i32 %i.do, -1
  store i32 %i.dx, ptr %i.dl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i35.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.dy = atomicrmw volatile add ptr %i.dl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i35.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i35.i.i.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i36.i.i.i.i.i.i = phi i32 [ %i.do, %bb.ai ], [ %i.dy, %bb.aj ]
  %i.dz = icmp eq i32 %.0.i.i.i.i.i.i36.i.i.i.i.i.i, 1
  br i1 %i.dz, label %bb.ak, label %_ZN5arrow9StopTokenD2Ev.exit.i37.i.i.i.i.i.i, !prof !44

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i35.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #32
  br label %_ZN5arrow9StopTokenD2Ev.exit.i37.i.i.i.i.i.i

_ZN5arrow9StopTokenD2Ev.exit.i37.i.i.i.i.i.i:     ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i35.i.i.i.i.i.i, %bb.ag, %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit.i32.i.i.i.i.i.i
  %i.ea = load ptr, ptr %2, align 8, !tbaa !50    ; 3 uses
  %.not.i.i1.i38.i.i.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i1.i38.i.i.i.i.i.i, label %_ZN5arrow8internal12_GLOBAL__N_14TaskD2Ev.exit40.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvvEE4ImplEEclEPS5_.exit.i.i.i39.i.i.i.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvvEE4ImplEEclEPS5_.exit.i.i.i39.i.i.i.i.i.i: ; preds = %_ZN5arrow9StopTokenD2Ev.exit.i37.i.i.i.i.i.i
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !7
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ea) #32, !inline_history !364
  br label %_ZN5arrow8internal12_GLOBAL__N_14TaskD2Ev.exit40.i.i.i.i.i.i

_ZN5arrow8internal12_GLOBAL__N_14TaskD2Ev.exit40.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvvEE4ImplEEclEPS5_.exit.i.i.i39.i.i.i.i.i.i, %_ZN5arrow9StopTokenD2Ev.exit.i37.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.ee = load ptr, ptr %4, align 8, !tbaa !333   ; 6 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 276 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !146
  %i.eh = add nsw i32 %i.eg, -1                   ; 2 uses
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !146
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.al, label %bb.am, !prof !44

bb.al:                                            ; preds = %_ZN5arrow8internal12_GLOBAL__N_14TaskD2Ev.exit40.i.i.i.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 136
  call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ej) #32
  br label %bb.am

.body.i.i.i.i.i.i:                                ; preds = %_ZN5arrow6StatusD2Ev.exit23.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i, %_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFvvEE4ImplESt14default_deleteIS5_EED2Ev.exit4.i.i.i.i.i.i.i
  %.pn8.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ay, %_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFvvEE4ImplESt14default_deleteIS5_EED2Ev.exit4.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit23.i.i.i.i.i.i ], [ %lpad.loopexit.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i ]
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_14TaskD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.ax

bb.am:                                            ; preds = %bb.al, %_ZN5arrow8internal12_GLOBAL__N_14TaskD2Ev.exit40.i.i.i.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 232 ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ek, align 8, !tbaa !42 ; 2 uses
  %i.el = getelementptr i8, ptr %i.ee, i64 240
  %.val13.i.i.i.i.i.i = load ptr, ptr %i.el, align 8, !tbaa !42
  %i.em = icmp eq ptr %.val.i.i.i.i.i.i, %.val13.i.i.i.i.i.i
  br i1 %i.em, label %.critedge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !365

.critedge.i.i.i.i.i.i:                            ; preds = %bb.am, %bb.g, %.lr.ph.i.i.i.i.i.i, %bb.f
  %.lcssa57.i.i.i.i.i.i = phi ptr [ %i.u, %bb.f ], [ %i.ee, %bb.am ], [ %i.z, %bb.g ], [ %i.z, %.lr.ph.i.i.i.i.i.i ] ; 8 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.lcssa57.i.i.i.i.i.i, i64 280
  %i.eo = load i8, ptr %i.en, align 8, !tbaa !193, !range !48, !noundef !49
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.eq = getelementptr i8, ptr %.lcssa57.i.i.i.i.i.i, i64 200
  %.val16.val.val.i.i.i.i.i.i = load i64, ptr %i.eq, align 8, !tbaa !208
  %i.er = getelementptr i8, ptr %.lcssa57.i.i.i.i.i.i, i64 272
  %.val16.val.val18.i.i.i.i.i.i = load i32, ptr %i.er, align 8, !tbaa !207
  %i.es = sext i32 %.val16.val.val18.i.i.i.i.i.i to i64
  %i.et = icmp ugt i64 %.val16.val.val.i.i.i.i.i.i, %i.es
  br i1 %i.et, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eu = getelementptr inbounds nuw i8, ptr %.lcssa57.i.i.i.i.i.i, i64 40
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.eu, ptr noundef nonnull align 8 dereferenceable(9) %1)
          to label %bb.f unwind label %.loopexit51.i.i.i.i.i.i, !llvm.loop !366

bb.ap:                                            ; preds = %bb.an, %.critedge.i.i.i.i.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 16 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.lcssa57.i.i.i.i.i.i, i64 216 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !202 ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.lcssa57.i.i.i.i.i.i, i64 224
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !316
  %.not.i.i41.i.i.i.i.i.i = icmp eq ptr %i.ex, %i.ez
  br i1 %.not.i.i41.i.i.i.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i64 0, ptr %i.ex, align 8, !tbaa !15
  %i.fa = load i64, ptr %i.ev, align 8, !tbaa !105
  store i64 %i.fa, ptr %i.ex, align 8, !tbaa !105
  store i64 0, ptr %i.ev, align 8, !tbaa !105
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr %i.fb, ptr %i.ew, align 8, !tbaa !202
  br label %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit.i.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.fc = getelementptr inbounds nuw i8, ptr %.lcssa57.i.i.i.i.i.i, i64 208
  invoke void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.fc, ptr %i.ex, ptr noundef nonnull align 8 dereferenceable(8) %i.ev)
          to label %._ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit_crit_edge.i.i.i.i.i.i unwind label %.loopexit.split-lp52.i.i.i.i.i.i

._ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit_crit_edge.i.i.i.i.i.i: ; preds = %bb.ar
  %.pre78.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !333
  br label %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit.i.i.i.i.i.i

_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit.i.i.i.i.i.i: ; preds = %._ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit_crit_edge.i.i.i.i.i.i, %bb.aq
  %5 = phi ptr [ %.pre78.i.i.i.i.i.i, %._ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit_crit_edge.i.i.i.i.i.i ], [ %.lcssa57.i.i.i.i.i.i, %bb.aq ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !208
  %i.ff = add i64 %i.fe, -1
  store i64 %i.ff, ptr %i.fd, align 8, !tbaa !208
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.copyload.i.i.i.i.i) #32
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ev, align 8, !tbaa !105
  %.not.i.i.i.i43.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i43.i.i.i.i.i.i, label %_ZNSt7__cxx114listISt6threadSaIS1_EE5eraseESt20_List_const_iteratorIS1_E.exit.i.i.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit.i.i.i.i.i.i
  call void @_ZSt9terminatev() #30
  unreachable

_ZNSt7__cxx114listISt6threadSaIS1_EE5eraseESt20_List_const_iteratorIS1_E.exit.i.i.i.i.i.i: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.copyload.i.i.i.i.i, i64 noundef 24) #34
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 280
  %i.fg = load i8, ptr %6, align 8, !tbaa !193, !range !48, !noundef !49
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZNSt7__cxx114listISt6threadSaIS1_EE5eraseESt20_List_const_iteratorIS1_E.exit.i.i.i.i.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 88
  call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.fi) #32
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZNSt7__cxx114listISt6threadSaIS1_EE5eraseESt20_List_const_iteratorIS1_E.exit.i.i.i.i.i.i
  %i.fj = load i8, ptr %i.p, align 8, !tbaa !109, !range !48, !noundef !49
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %bb.au
  %i.fl = load ptr, ptr %1, align 8, !tbaa !106   ; 2 uses
  %.not.i.i44.i.i.i.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i44.i.i.i.i.i.i, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fm = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.fl) #32 ; 0 uses
  br label %bb.ba

bb.ax:                                            ; preds = %.body.i.i.i.i.i.i, %.loopexit.split-lp52.i.i.i.i.i.i, %.loopexit51.i.i.i.i.i.i
  %.pn11.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn8.pn.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %lpad.loopexit53.i.i.i.i.i.i, %.loopexit51.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp54.i.i.i.i.i.i, %.loopexit.split-lp52.i.i.i.i.i.i ]
  %i.fn = load i8, ptr %i.p, align 8, !tbaa !109, !range !48, !noundef !49
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.ay, label %_ZNSt11unique_lockISt5mutexED2Ev.exit46.i.i.i.i.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.fp = load ptr, ptr %1, align 8, !tbaa !106   ; 2 uses
  %.not.i.i45.i.i.i.i.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i45.i.i.i.i.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit46.i.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fq = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.fp) #32 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit46.i.i.i.i.i.i

_ZNSt11unique_lockISt5mutexED2Ev.exit46.i.i.i.i.i.i: ; preds = %bb.az, %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %.body.i.i.i.i.i

bb.ba:                                            ; preds = %bb.aw, %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  %i.fr = load ptr, ptr %i.f, align 8, !tbaa !34  ; 8 uses
  %.not.i.i3.i.i.i.i.i = icmp eq ptr %i.fr, null
  br i1 %.not.i.i3.i.i.i.i.i, label %"_ZNSt6thread8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEclEv.exit", label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 4 uses
  %i.ft = load atomic i64, ptr %i.fs acquire, align 8 ; 2 uses
  %i.fu = icmp eq i64 %i.ft, 4294967297
  %i.fv = trunc i64 %i.ft to i32                  ; 2 uses
  br i1 %i.fu, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.fs, align 8, !tbaa !12
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  store i32 0, ptr %i.fw, align 4, !tbaa !14
  %i.fx = load ptr, ptr %i.fr, align 8, !tbaa !7
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(16) %i.fr) #32, !inline_history !367
  %i.ga = load ptr, ptr %i.fr, align 8, !tbaa !7
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(16) %i.fr) #32, !inline_history !367
  br label %"_ZNSt6thread8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEclEv.exit"

bb.bd:                                            ; preds = %bb.bb
  %i.gd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i4.i.i.i.i.i = icmp eq i8 %i.gd, 0
  br i1 %.not.i.i.i4.i.i.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ge = add nsw i32 %i.fv, -1
  store i32 %i.ge, ptr %i.fs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.gf = atomicrmw volatile add ptr %i.fs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.fv, %bb.be ], [ %i.gf, %bb.bf ]
  %i.gg = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.gg, label %bb.bg, label %"_ZNSt6thread8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEclEv.exit", !prof !44

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fr) #32
  br label %"_ZNSt6thread8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEclEv.exit"

bb.bh:                                            ; preds = %bb.e
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.bh, %_ZNSt11unique_lockISt5mutexED2Ev.exit46.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.gh, %bb.bh ], [ %.pn11.i.i.i.i.i.i, %_ZNSt11unique_lockISt5mutexED2Ev.exit46.i.i.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow8internal10ThreadPool5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #32
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i

"_ZNSt6thread8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEclEv.exit": ; preds = %bb.ba, %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
  %4 = ptrtoint ptr %1 to i64                     ; 4 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %6 = load ptr, ptr %5, align 8, !tbaa !202      ; 3 uses
  %7 = load ptr, ptr %0, align 8, !tbaa !201      ; 10 uses
  %8 = ptrtoint ptr %6 to i64                     ; 3 uses
  %9 = ptrtoint ptr %7 to i64                     ; 5 uses
  %10 = sub i64 %8, %9                            ; 2 uses
  %11 = icmp eq i64 %10, 9223372036854775800
  br i1 %11, label %12, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

12:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #33
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %3
  %13 = ashr exact i64 %10, 3                     ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %13, i64 1)
  %14 = add nsw i64 %.sroa.speculated.i, %13      ; 2 uses
  %15 = icmp ult i64 %14, %13
  %16 = tail call i64 @llvm.umin.i64(i64 %14, i64 1152921504606846975)
  %17 = select i1 %15, i64 1152921504606846975, i64 %16 ; 3 uses
  %18 = ptrtoint ptr %1 to i64
  %19 = sub i64 %18, %9
  %.not.i = icmp ne i64 %17, 0
  tail call void @llvm.assume(i1 %.not.i)
  %20 = shl nuw nsw i64 %17, 3
  %21 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %20) #31 ; 10 uses
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 %19
  %23 = load i64, ptr %2, align 8, !tbaa !105
  store i64 %23, ptr %22, align 8, !tbaa !105
  store i64 0, ptr %2, align 8, !tbaa !105
  %.not10.i.i.i = icmp eq ptr %7, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %24 = add i64 %4, -8
  %25 = sub i64 %24, %9                           ; 2 uses
  %26 = lshr i64 %25, 3
  %27 = add nuw nsw i64 %26, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %25, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader62, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %28 = add i64 %4, -8
  %29 = sub i64 %28, %9
  %30 = and i64 %29, -8
  %31 = add i64 %30, 8                            ; 2 uses
  %scevgep = getelementptr i8, ptr %21, i64 %31
  %scevgep35 = getelementptr i8, ptr %7, i64 %31
  %bound0 = icmp ult ptr %21, %scevgep35
  %bound1 = icmp ult ptr %7, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader62, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %27, 4611686018427387900       ; 3 uses
  %32 = shl i64 %n.vec, 3                         ; 2 uses
  %33 = getelementptr i8, ptr %21, i64 %32        ; 2 uses
  %34 = getelementptr i8, ptr %7, i64 %32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %35 = shl i64 %index, 3                         ; 2 uses
  %next.gep = getelementptr i8, ptr %21, i64 %35  ; 2 uses
  %next.gep36 = getelementptr i8, ptr %7, i64 %35 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %36 = getelementptr i8, ptr %next.gep36, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !105, !alias.scope !373, !noalias !368
  %wide.load37 = load <2 x i64>, ptr %36, align 8, !tbaa !105, !alias.scope !373, !noalias !368
  %37 = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !105, !alias.scope !376, !noalias !373
  store <2 x i64> %wide.load37, ptr %37, align 8, !tbaa !105, !alias.scope !376, !noalias !373
  store <2 x i64> zeroinitializer, ptr %next.gep36, align 8, !tbaa !105, !alias.scope !373, !noalias !368
  store <2 x i64> zeroinitializer, ptr %36, align 8, !tbaa !105, !alias.scope !373, !noalias !368
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %38 = icmp eq i64 %index.next, %n.vec
  br i1 %38, label %middle.block, label %vector.body, !llvm.loop !378

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %27, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.preheader62

.lr.ph.i.i.i.preheader62:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %21, %vector.memcheck ], [ %21, %.lr.ph.i.i.i.preheader ], [ %33, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %7, %vector.memcheck ], [ %7, %.lr.ph.i.i.i.preheader ], [ %34, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader62, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %41, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader62 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %40, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader62 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %39 = load i64, ptr %.0911.i.i.i, align 8, !tbaa !105, !alias.scope !371, !noalias !368
  store i64 %39, ptr %.012.i.i.i, align 8, !tbaa !105, !alias.scope !368, !noalias !371
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !105, !alias.scope !371, !noalias !368
  %40 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %41 = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %40, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !381

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %21, %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit ], [ %33, %middle.block ], [ %41, %.lr.ph.i.i.i ] ; 2 uses
  %42 = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %6
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %43 = add i64 %8, -8
  %44 = sub i64 %43, %4                           ; 2 uses
  %45 = lshr i64 %44, 3
  %46 = add nuw nsw i64 %45, 1                    ; 2 uses
  %min.iters.check46 = icmp ult i64 %44, 184
  br i1 %min.iters.check46, label %.lr.ph.i.i.i17.preheader61, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i.i.i17.preheader
  %47 = add i64 %8, -8
  %48 = sub i64 %47, %4
  %49 = and i64 %48, -8                           ; 2 uses
  %50 = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %49
  %scevgep40 = getelementptr i8, ptr %50, i64 16
  %51 = getelementptr i8, ptr %1, i64 %49
  %scevgep41 = getelementptr i8, ptr %51, i64 8
  %bound042 = icmp ult ptr %42, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader61, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec49 = and i64 %46, 4611686018427387900     ; 3 uses
  %52 = shl i64 %n.vec49, 3                       ; 2 uses
  %53 = getelementptr i8, ptr %42, i64 %52        ; 2 uses
  %54 = getelementptr i8, ptr %1, i64 %52
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph47
  %index51 = phi i64 [ 0, %vector.ph47 ], [ %index.next56, %vector.body50 ] ; 2 uses
  %55 = shl i64 %index51, 3                       ; 2 uses
  %next.gep52 = getelementptr i8, ptr %42, i64 %55 ; 2 uses
  %next.gep53 = getelementptr i8, ptr %1, i64 %55 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %56 = getelementptr i8, ptr %next.gep53, i64 16 ; 2 uses
  %wide.load54 = load <2 x i64>, ptr %next.gep53, align 8, !tbaa !105, !alias.scope !387, !noalias !382
  %wide.load55 = load <2 x i64>, ptr %56, align 8, !tbaa !105, !alias.scope !387, !noalias !382
  %57 = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x i64> %wide.load54, ptr %next.gep52, align 8, !tbaa !105, !alias.scope !390, !noalias !387
  store <2 x i64> %wide.load55, ptr %57, align 8, !tbaa !105, !alias.scope !390, !noalias !387
  store <2 x i64> zeroinitializer, ptr %next.gep53, align 8, !tbaa !105, !alias.scope !387, !noalias !382
  store <2 x i64> zeroinitializer, ptr %56, align 8, !tbaa !105, !alias.scope !387, !noalias !382
  %index.next56 = add nuw i64 %index51, 4         ; 2 uses
  %58 = icmp eq i64 %index.next56, %n.vec49
  br i1 %58, label %middle.block57, label %vector.body50, !llvm.loop !392

middle.block57:                                   ; preds = %vector.body50
  %cmp.n58 = icmp eq i64 %46, %n.vec49
  br i1 %cmp.n58, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, label %.lr.ph.i.i.i17.preheader61

.lr.ph.i.i.i17.preheader61:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block57
  %.012.i.i.i18.ph = phi ptr [ %42, %vector.memcheck39 ], [ %42, %.lr.ph.i.i.i17.preheader ], [ %53, %middle.block57 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %54, %middle.block57 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader61, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %61, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader61 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %60, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %59 = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !105, !alias.scope !385, !noalias !382
  store i64 %59, ptr %.012.i.i.i18, align 8, !tbaa !105, !alias.scope !382, !noalias !385
  store i64 0, ptr %.0911.i.i.i19, align 8, !tbaa !105, !alias.scope !385, !noalias !382
  %60 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %61 = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %60, %6
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !393

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block57, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %42, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %53, %middle.block57 ], [ %61, %.lr.ph.i.i.i17 ]
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %7, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %63

63:                                               ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22
  %64 = load ptr, ptr %62, align 8, !tbaa !316
  %65 = ptrtoint ptr %64 to i64
  %66 = sub i64 %65, %9
  tail call void @_ZdlPvm(ptr noundef nonnull %7, i64 noundef %66) #34
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, %63
  store ptr %21, ptr %0, align 8, !tbaa !201
  store ptr %.0.lcssa.i.i.i21, ptr %5, align 8, !tbaa !202
  %67 = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %17
  store ptr %67, ptr %62, align 8, !tbaa !316
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #10

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !234  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(33) %i.b) #32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr null
}

declare void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #24 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !260  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !260  ; 7 uses
  %i.e = add i64 %i.d, %i.b                       ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !237    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 3 uses
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.j = load i64, ptr %i.g, align 8
  %i.k = select i1 %i.h, i64 15, i64 %i.j
  %i.l = icmp ugt i64 %i.e, %i.k                  ; 2 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !237   ; 4 uses
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %.pre, %i.m                  ; 2 uses
  br i1 %i.n, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.o)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12: ; preds = %bb.c, %bb.d
  %i.p = load i64, ptr %i.m, align 8
  %i.q = select i1 %i.n, i64 15, i64 %i.p
  %.not = icmp ugt i64 %i.e, %i.q
  br i1 %.not, label %bb.f, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12
  %i.r = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !258
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !237  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.e:                                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !260  ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %.critedge
  store ptr %i.t, ptr %0, align 8, !tbaa !237
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !41
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !260
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !260
  store ptr %i.u, ptr %i.r, align 8, !tbaa !237
  store i64 0, ptr %i.ab, align 8, !tbaa !260
  store i8 0, ptr %i.u, align 8, !tbaa !41
  br label %bb.o

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.ae = sub i64 9223372036854775807, %i.b
  %i.af = icmp ult i64 %i.ae, %i.d
  br i1 %i.af, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #33
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.f
  br i1 %i.h, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ag = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ag)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  br i1 %i.l, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.d, 1
  br i1 %cond.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = load i8, ptr %.pre, align 1, !tbaa !41
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %.pre, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.b, i64 noundef 0, ptr noundef %.pre, i64 noundef %i.d)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.i, %bb.k, %bb.l, %bb.m
  store i64 %i.e, ptr %i.a, align 8, !tbaa !260
  %i.aj = load ptr, ptr %1, align 8, !tbaa !237
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.e
  store i8 0, ptr %i.ak, align 1, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !258
  %i.am = load ptr, ptr %1, align 8, !tbaa !237   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.g
  br i1 %i.an, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !260 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.aq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.am, ptr %0, align 8, !tbaa !237
  %i.ar = load i64, ptr %i.g, align 8, !tbaa !41
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !41
  %.pre15 = load i64, ptr %i.a, align 8, !tbaa !260
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
  %i.as = phi i64 [ %i.ao, %bb.n ], [ %.pre15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13 ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !260
  store ptr %i.g, ptr %1, align 8, !tbaa !237
end_hunk_2
begin_hunk_3_@llvm.umin.i32
!167 = distinct !{!167, !98}
!168 = !{!169}
!169 = distinct !{!169, !170, !"_ZSt11make_sharedIN5arrow8internal10ThreadPool5StateEJEESt10shared_ptrIT_EDpOT0_: argument 0"}
!170 = distinct !{!170, !"_ZSt11make_sharedIN5arrow8internal10ThreadPool5StateEJEESt10shared_ptrIT_EDpOT0_"}
!171 = !{!152, !153, i64 8}
!172 = !{!152, !153, i64 0}
!173 = !{!145, !145, i64 0}
!174 = !{!141, !32, i64 32}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_ZSt11make_sharedIN5arrow8internal13AtForkHandlerEJZNS1_10ThreadPoolC1EvE3$_0ZNS3_C1EvE3$_1ZNS3_C1EvE3$_2EESt10shared_ptrIT_EDpOT0_: argument 0"}
!177 = distinct !{!177, !"_ZSt11make_sharedIN5arrow8internal13AtForkHandlerEJZNS1_10ThreadPoolC1EvE3$_0ZNS3_C1EvE3$_1ZNS3_C1EvE3$_2EESt10shared_ptrIT_EDpOT0_"}
!178 = !{!179, !145, i64 0}
!179 = !{!"_ZTSSt10__weak_ptrIN5arrow8internal10ThreadPool5StateELN9__gnu_cxx12_Lock_policyE2EE", !145, i64 0, !180, i64 8}
!180 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !36, i64 0}
!181 = !{!180, !36, i64 0}
!182 = !{!183, !26, i64 24}
!183 = !{!"_ZTSSt8functionIFSt3anyvEE", !184, i64 0, !26, i64 24}
!184 = !{!"_ZTSSt14_Function_base", !5, i64 0, !26, i64 16}
!185 = !{!184, !26, i64 16}
!186 = !{!187, !26, i64 24}
!187 = !{!"_ZTSSt8functionIFvSt3anyEE", !184, i64 0, !26, i64 24}
!188 = !{!166, !166, i64 0}
!189 = distinct !{null, null, null, null, null}
!190 = distinct !{null, null, null}
!191 = distinct !{null, null, null, null}
!192 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow8internal10ThreadPool5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!193 = !{!147, !32, i64 280}
!194 = !{!147, !32, i64 281}
!195 = distinct !{!195, !98}
!196 = distinct !{null, null, null, null, null, null, ptr @_ZN5arrow8internal12_GLOBAL__N_110QueuedTaskD2Ev, ptr @_ZN5arrow8internal12_GLOBAL__N_14TaskD2Ev, null, null, null}
!197 = distinct !{null, null, null, null, null, null, ptr @_ZN5arrow8internal12_GLOBAL__N_110QueuedTaskD2Ev, ptr @_ZN5arrow8internal12_GLOBAL__N_14TaskD2Ev, null, null, null, null}
!198 = distinct !{null, null, null, null, null, null, ptr @_ZN5arrow8internal12_GLOBAL__N_110QueuedTaskD2Ev, ptr @_ZN5arrow8internal12_GLOBAL__N_14TaskD2Ev, null, null, null}
!199 = distinct !{!199, !98}
!200 = !{!158, !158, i64 0}
!201 = !{!157, !158, i64 0}
!202 = !{!157, !158, i64 8}
!203 = distinct !{!203, !98}
!204 = !{!205}
!205 = distinct !{!205, !206, !"_ZN5arrow6Status2OKEv: argument 0"}
!206 = distinct !{!206, !"_ZN5arrow6Status2OKEv"}
!207 = !{!147, !4, i64 272}
!208 = !{!149, !17, i64 16}
!209 = !{!210}
!210 = distinct !{!210, !211, !"_ZN5arrow6Status2OKEv: argument 0"}
!211 = distinct !{!211, !"_ZN5arrow6Status2OKEv"}
!212 = !{!213, !214, i64 0}
!213 = !{!"_ZTSZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0", !214, i64 0, !143, i64 8, !215, i64 24}
!214 = !{!"p1 _ZTSN5arrow8internal10ThreadPoolE", !26, i64 0}
!215 = !{!"_ZTSSt14_List_iteratorISt6threadE", !153, i64 0}
!216 = !{!153, !153, i64 0}
!217 = !{!218, !218, i64 0}
!218 = !{!"p1 _ZTSNSt6thread6_StateE", !26, i64 0}
!219 = distinct !{null, null, null}
!220 = distinct !{!220, !98}
!221 = !{!214, !214, i64 0}
!222 = !{!147, !17, i64 264}
!223 = !{!224}
!224 = distinct !{!224, !225, !"_ZN5arrow6Status2OKEv: argument 0"}
!225 = distinct !{!225, !"_ZN5arrow6Status2OKEv"}
!226 = !{!162, !163, i64 8}
!227 = !{!162, !163, i64 16}
!228 = !{!229, !230, i64 0}
!229 = !{!"_ZTSSt12__shared_ptrIN5arrow8internal8Executor8ResourceELN9__gnu_cxx12_Lock_policyE2EE", !230, i64 0, !35, i64 8}
!230 = !{!"p1 _ZTSN5arrow8internal8Executor8ResourceE", !26, i64 0}
!231 = !{!232, !214, i64 0}
!232 = !{!"_ZTSSt12__shared_ptrIN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EE", !214, i64 0, !35, i64 8}
!233 = distinct !{null, null, null, null}
!234 = !{!235, !214, i64 16}
!235 = !{!"_ZTSSt15_Sp_counted_ptrIPN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0, !214, i64 16}
!236 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!237 = !{!116, !118, i64 0}
!238 = !{!239, !241}
!239 = distinct !{!239, !240, !"_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE15MoveValueUnsafeEv: argument 0"}
!240 = distinct !{!240, !"_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE15MoveValueUnsafeEv"}
!241 = distinct !{!241, !242, !"_ZNO5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE11ValueUnsafeEv: argument 0"}
!242 = distinct !{!242, !"_ZNO5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE11ValueUnsafeEv"}
!243 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!244 = distinct !{ptr @_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEED2Ev, null, null, ptr @_ZNSt12__shared_ptrIN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!245 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!246 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!247 = distinct !{null}
!248 = distinct !{null}
!249 = !{!250}
!250 = distinct !{!250, !251, !"_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv: argument 0"}
!251 = distinct !{!251, !"_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv"}
!252 = !{!253}
!253 = distinct !{!253, !254, !"_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10ValueOrDieEv: argument 0"}
!254 = distinct !{!254, !"_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10ValueOrDieEv"}
!255 = !{!256}
!256 = distinct !{!256, !257, !"_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MoveValueUnsafeEv: argument 0"}
!257 = distinct !{!257, !"_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MoveValueUnsafeEv"}
!258 = !{!117, !118, i64 0}
!259 = !{!256, !253, !250}
!260 = !{!116, !17, i64 8}
!261 = !{!262}
!262 = distinct !{!262, !263, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!263 = distinct !{!263, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!264 = !{!118, !118, i64 0}
!265 = !{!266}
!266 = distinct !{!266, !267, !"_ZNO5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEEdeEv: argument 0"}
!267 = distinct !{!267, !"_ZNO5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEEdeEv"}
!268 = !{!269}
!269 = distinct !{!269, !270, !"_ZNO5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE10ValueOrDieEv: argument 0"}
!270 = distinct !{!270, !"_ZNO5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE10ValueOrDieEv"}
!271 = !{!272}
!272 = distinct !{!272, !273, !"_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE15MoveValueUnsafeEv: argument 0"}
!273 = distinct !{!273, !"_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE15MoveValueUnsafeEv"}
!274 = !{!272, !269, !266}
!275 = !{!"branch_weights", i32 1, i32 1048575}
!276 = distinct !{null}
!277 = distinct !{null, null, null, null}
!278 = !{!162, !163, i64 0}
!279 = !{!280}
!280 = distinct !{!280, !281, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow8internal8Executor8ResourceEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!281 = distinct !{!281, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow8internal8Executor8ResourceEES5_SaIS5_EEvPT_PT0_RT1_"}
!282 = !{!283}
!283 = distinct !{!283, !281, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow8internal8Executor8ResourceEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!284 = distinct !{!284, !98}
!285 = !{!286}
!286 = distinct !{!286, !287, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow8internal8Executor8ResourceEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!287 = distinct !{!287, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow8internal8Executor8ResourceEES5_SaIS5_EEvPT_PT0_RT1_"}
!288 = !{!289}
!289 = distinct !{!289, !287, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow8internal8Executor8ResourceEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!290 = distinct !{null, null, null, null, null, null, null, null, null, ptr @_ZN5arrow8internal12_GLOBAL__N_110QueuedTaskD2Ev, ptr @_ZN5arrow8internal12_GLOBAL__N_14TaskD2Ev, null, null, null}
!291 = distinct !{null, null, null, null, null, null, null, null, null, ptr @_ZN5arrow8internal12_GLOBAL__N_110QueuedTaskD2Ev, ptr @_ZN5arrow8internal12_GLOBAL__N_14TaskD2Ev, null, null, null, null}
!292 = distinct !{null, null, null, null, null, null, null, null, null, ptr @_ZN5arrow8internal12_GLOBAL__N_110QueuedTaskD2Ev, ptr @_ZN5arrow8internal12_GLOBAL__N_14TaskD2Ev, null, null, null}
!293 = !{!294, !118, i64 8}
!294 = !{!"_ZTSSt9type_info", !118, i64 8}
!295 = !{!296}
!296 = distinct !{!296, !297, !"_ZN5arrow8internal12JoinToStringIJRA92_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!297 = distinct !{!297, !"_ZN5arrow8internal12JoinToStringIJRA92_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!298 = !{!299, !307, i64 8}
!299 = !{!"_ZTSN5arrow8internal19StringStreamWrapperE", !300, i64 0, !307, i64 8}
!300 = !{!"_ZTSSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !301, i64 0}
!301 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !302, i64 0}
!302 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !303, i64 0}
!303 = !{!"_ZTSSt5tupleIJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !304, i64 0}
!304 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !305, i64 0}
!305 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEELb0EE", !306, i64 0}
!306 = !{!"p1 _ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !26, i64 0}
!307 = !{!"p1 _ZTSSo", !26, i64 0}
!308 = !{i64 8}
!309 = distinct !{null, null, null, null, null, null, null, null}
!310 = distinct !{null, null, null, null, null, null, null, null}
!311 = distinct !{null, null, null, null, null, null, null, null}
!312 = distinct !{!312, !98}
!313 = distinct !{null, null, null}
!314 = distinct !{null, null, null, null, null, null, null, null}
!315 = distinct !{!315, !98}
!316 = !{!157, !158, i64 16}
!317 = distinct !{!317, !98}
!318 = !{!319}
!319 = distinct !{!319, !320, !"_ZSt10__invoke_rISt3anyRZN5arrow8internal10ThreadPoolC1EvE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_: argument 0"}
!320 = distinct !{!320, !"_ZSt10__invoke_rISt3anyRZN5arrow8internal10ThreadPoolC1EvE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_"}
!321 = !{!322}
!322 = distinct !{!322, !323, !"_ZSt13__invoke_implISt10shared_ptrIN5arrow8internal10ThreadPool5StateEERZNS3_C1EvE3$_0JEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!323 = distinct !{!323, !"_ZSt13__invoke_implISt10shared_ptrIN5arrow8internal10ThreadPool5StateEERZNS3_C1EvE3$_0JEET_St14__invoke_otherOT0_DpOT1_"}
!324 = !{!325}
!325 = distinct !{!325, !326, !"_ZZN5arrow8internal10ThreadPoolC1EvENK3$_0clEv: argument 0"}
!326 = distinct !{!326, !"_ZZN5arrow8internal10ThreadPoolC1EvENK3$_0clEv"}
!327 = !{!328}
!328 = distinct !{!328, !329, !"_ZNKSt8weak_ptrIN5arrow8internal10ThreadPool5StateEE4lockEv: argument 0"}
!329 = distinct !{!329, !"_ZNKSt8weak_ptrIN5arrow8internal10ThreadPool5StateEE4lockEv"}
!330 = !{!328, !325, !322, !319}
!331 = !{!328, !325, !322}
!332 = distinct !{!332, !98}
!333 = !{!144, !145, i64 0}
!334 = !{!325, !322, !319}
!335 = !{!336, !26, i64 0}
!336 = !{!"_ZTSSt3any", !26, i64 0, !5, i64 8}
!337 = !{!338, !338, i64 0}
!338 = !{!"p1 _ZTSSt9type_info", !26, i64 0}
!339 = distinct !{null, null, null, null, null, null}
!340 = !{!341}
!341 = distinct !{!341, !342, !"_ZSt8any_castISt10shared_ptrIN5arrow8internal10ThreadPool5StateEEET_RSt3any: argument 0"}
!342 = distinct !{!342, !"_ZSt8any_castISt10shared_ptrIN5arrow8internal10ThreadPool5StateEEET_RSt3any"}
!343 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow8internal10ThreadPool5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!344 = !{!345}
!345 = distinct !{!345, !346, !"_ZSt8any_castISt10shared_ptrIN5arrow8internal10ThreadPool5StateEEET_RSt3any: argument 0"}
!346 = distinct !{!346, !"_ZSt8any_castISt10shared_ptrIN5arrow8internal10ThreadPool5StateEEET_RSt3any"}
!347 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow8internal10ThreadPool5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!348 = !{!349}
!349 = distinct !{!349, !350, !"_ZN5arrow8internal12JoinToStringIJRA45_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!350 = distinct !{!350, !"_ZN5arrow8internal12JoinToStringIJRA45_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!351 = !{!352}
!352 = distinct !{!352, !353, !"_ZN5arrow8internal12JoinToStringIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!353 = distinct !{!353, !"_ZN5arrow8internal12JoinToStringIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!354 = !{!355}
!355 = distinct !{!355, !356, !"_ZN5arrow8internal12JoinToStringIJRA26_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!356 = distinct !{!356, !"_ZN5arrow8internal12JoinToStringIJRA26_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!357 = distinct !{null, null, ptr @"_ZZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiEN3$_0D2Ev", ptr @_ZNSt12__shared_ptrIN5arrow8internal10ThreadPool5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!358 = distinct !{ptr @"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEEED2Ev", null, null, ptr @"_ZZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiEN3$_0D2Ev", ptr @_ZNSt12__shared_ptrIN5arrow8internal10ThreadPool5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!359 = !{ptr @"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEEED2Ev"}
!360 = distinct !{null, null, null, null, null, null, null, null, null}
!361 = distinct !{null, null, null, null, null, null, null, null, null}
!362 = distinct !{null, null, null, null, null, null, ptr @_ZN5arrow8internal12_GLOBAL__N_14TaskD2Ev, null, null, null}
!363 = distinct !{null, null, null, null, null, null, ptr @_ZN5arrow8internal12_GLOBAL__N_14TaskD2Ev, null, null, null, null}
!364 = distinct !{null, null, null, null, null, null, ptr @_ZN5arrow8internal12_GLOBAL__N_14TaskD2Ev, null, null, null}
!365 = distinct !{!365, !98}
!366 = distinct !{!366, !98}
!367 = distinct !{null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow8internal10ThreadPool5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!368 = !{!369}
!369 = distinct !{!369, !370, !"_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!370 = distinct !{!370, !"_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_"}
!371 = !{!372}
!372 = distinct !{!372, !370, !"_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!373 = !{!372, !374}
!374 = distinct !{!374, !375}
!375 = distinct !{!375, !"LVerDomain"}
!376 = !{!369, !377}
!377 = distinct !{!377, !375}
!378 = distinct !{!378, !98, !379, !380}
!379 = !{!"llvm.loop.isvectorized", i32 1}
!380 = !{!"llvm.loop.unroll.runtime.disable"}
!381 = distinct !{!381, !98, !379}
!382 = !{!383}
!383 = distinct !{!383, !384, !"_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!384 = distinct !{!384, !"_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_"}
!385 = !{!386}
!386 = distinct !{!386, !384, !"_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!387 = !{!386, !388}
!388 = distinct !{!388, !389}
!389 = distinct !{!389, !"LVerDomain"}
!390 = !{!383, !391}
!391 = distinct !{!391, !389}
!392 = distinct !{!392, !98, !379, !380}
!393 = distinct !{!393, !98, !379}
end_hunk_3
