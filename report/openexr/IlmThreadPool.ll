Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/IlmThreadPool?download=true
inline.NumInlined: 455
inline.NumDeleted: 259
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.IlmThread_3_4::ThreadPool" = type { ptr, ptr }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"struct.std::_Sp_locker" = type { i8, i8 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.30" }
%"struct.std::_Head_base.30" = type { ptr }
%"class.std::thread" = type { %"class.std::thread::id" }
%"class.std::thread::id" = type { i64 }
%"class.std::shared_ptr.7" = type { %"class.std::__shared_ptr.8" }
%"class.std::__shared_ptr.8" = type { ptr, %"class.std::__shared_count" }

$_ZN13IlmThread_3_410ThreadPool4Data11setProviderESt10shared_ptrINS_18ThreadPoolProviderEE = comdat any

$__clang_call_terminate = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt15_Sp_counted_ptrIPN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt15_Sp_counted_ptrIPN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt15_Sp_counted_ptrIPN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt15_Sp_counted_ptrIPN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt6vectorISt6threadSaIS0_EE17_M_default_appendEm = comdat any

$_ZNSt6thread24_M_thread_deps_never_runEv = comdat any

$_ZTVSt15_Sp_counted_ptrIPN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt15_Sp_counted_ptrIPN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt15_Sp_counted_ptrIPN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt19_Sp_make_shared_tag = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

@_ZTVN13IlmThread_3_44TaskE = constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN13IlmThread_3_44TaskE, ptr @_ZN13IlmThread_3_44TaskD1Ev, ptr @_ZN13IlmThread_3_44TaskD0Ev, ptr @__cxa_pure_virtual] }, align 8
@_ZTVN13IlmThread_3_418ThreadPoolProviderE = constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN13IlmThread_3_418ThreadPoolProviderE, ptr @_ZN13IlmThread_3_418ThreadPoolProviderD1Ev, ptr @_ZN13IlmThread_3_418ThreadPoolProviderD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@_ZTVN13IlmThread_3_410ThreadPoolE = constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN13IlmThread_3_410ThreadPoolE, ptr @_ZN13IlmThread_3_410ThreadPoolD1Ev, ptr @_ZN13IlmThread_3_410ThreadPoolD0Ev] }, align 8
@.str = private unnamed_addr constant [75 x i8] c"Attempt to set the number of threads in a thread pool to a negative value.\00", align 1
@_ZTIN7Iex_3_46ArgExcE = external constant ptr
@_ZZN13IlmThread_3_410ThreadPool16globalThreadPoolEvE11gThreadPool = internal global %"class.IlmThread_3_4::ThreadPool" zeroinitializer, align 8
@_ZGVZN13IlmThread_3_410ThreadPool16globalThreadPoolEvE11gThreadPool = internal global i64 0, align 8
@__dso_handle = external hidden global i8
@_ZTIN13IlmThread_3_44TaskE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN13IlmThread_3_44TaskE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN13IlmThread_3_44TaskE = constant [23 x i8] c"N13IlmThread_3_44TaskE\00", align 1
@_ZTIN13IlmThread_3_418ThreadPoolProviderE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN13IlmThread_3_418ThreadPoolProviderE }, align 8
@_ZTSN13IlmThread_3_418ThreadPoolProviderE = constant [38 x i8] c"N13IlmThread_3_418ThreadPoolProviderE\00", align 1
@_ZTIN13IlmThread_3_410ThreadPoolE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN13IlmThread_3_410ThreadPoolE }, align 8
@_ZTSN13IlmThread_3_410ThreadPoolE = constant [30 x i8] c"N13IlmThread_3_410ThreadPoolE\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVSt15_Sp_counted_ptrIPN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt15_Sp_counted_ptrIPN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt15_Sp_counted_ptrIPN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt15_Sp_counted_ptrIPN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSSt15_Sp_counted_ptrIPN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [89 x i8] c"St15_Sp_counted_ptrIPN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderESaIvELN9__gnu_cxx12_Lock_policyE2EE = internal constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderESaIvELN9__gnu_cxx12_Lock_policyE2EE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderESaIvELN9__gnu_cxx12_Lock_policyE2EE = internal constant [122 x i8] c"St23_Sp_counted_ptr_inplaceIN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTVN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderE, ptr @_ZN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderD2Ev, ptr @_ZN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderD0Ev, ptr @_ZNK13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProvider10numThreadsEv, ptr @_ZN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProvider13setNumThreadsEi, ptr @_ZN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProvider7addTaskEPNS_4TaskE, ptr @_ZN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProvider6finishEv] }, align 8
@_ZTIN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderE, ptr @_ZTIN13IlmThread_3_418ThreadPoolProviderE }, align 8
@_ZTSN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderE = internal constant [59 x i8] c"N13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderE\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = internal constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = internal constant [118 x i8] c"St23_Sp_counted_ptr_inplaceIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS4_21DefaultThreadPoolDataEEEPS5_S8_EEEEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS4_21DefaultThreadPoolDataEEEPS5_S8_EEEEEE, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS4_21DefaultThreadPoolDataEEEPS5_S8_EEEEED2Ev, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS4_21DefaultThreadPoolDataEEEPS5_S8_EEEEED0Ev, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS4_21DefaultThreadPoolDataEEEPS5_S8_EEEEE6_M_runEv] }, align 8
@_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS4_21DefaultThreadPoolDataEEEPS5_S8_EEEEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS4_21DefaultThreadPoolDataEEEPS5_S8_EEEEEE, ptr @_ZTINSt6thread6_StateE }, align 8
@_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS4_21DefaultThreadPoolDataEEEPS5_S8_EEEEEE = internal constant [167 x i8] c"NSt6thread11_State_implINS_8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS4_21DefaultThreadPoolDataEEEPS5_S8_EEEEEE\00", align 1
@_ZTINSt6thread6_StateE = external constant ptr
@.str.2 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN13IlmThread_3_49TaskGroup4DataC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN13IlmThread_3_49TaskGroup4DataC2Ev
@_ZN13IlmThread_3_49TaskGroup4DataD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN13IlmThread_3_49TaskGroup4DataD2Ev
@_ZN13IlmThread_3_410ThreadPool4DataC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN13IlmThread_3_410ThreadPool4DataC2Ev
@_ZN13IlmThread_3_410ThreadPool4DataC1EPNS_18ThreadPoolProviderE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN13IlmThread_3_410ThreadPool4DataC2EPNS_18ThreadPoolProviderE
@_ZN13IlmThread_3_410ThreadPool4DataD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN13IlmThread_3_410ThreadPool4DataD2Ev
@_ZN13IlmThread_3_44TaskD1Ev = unnamed_addr alias void (ptr), ptr @_ZN13IlmThread_3_44TaskD2Ev
@_ZN13IlmThread_3_49TaskGroupC1Ev = unnamed_addr alias void (ptr), ptr @_ZN13IlmThread_3_49TaskGroupC2Ev
@_ZN13IlmThread_3_49TaskGroupD1Ev = unnamed_addr alias void (ptr), ptr @_ZN13IlmThread_3_49TaskGroupD2Ev
@_ZN13IlmThread_3_418ThreadPoolProviderD1Ev = unnamed_addr alias void (ptr), ptr @_ZN13IlmThread_3_418ThreadPoolProviderD2Ev
@_ZN13IlmThread_3_410ThreadPoolC1Ej = unnamed_addr alias void (ptr, i32), ptr @_ZN13IlmThread_3_410ThreadPoolC2Ej
@_ZN13IlmThread_3_410ThreadPoolC1EONS0_4DataE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN13IlmThread_3_410ThreadPoolC2EONS0_4DataE
@_ZN13IlmThread_3_410ThreadPoolD1Ev = unnamed_addr alias void (ptr), ptr @_ZN13IlmThread_3_410ThreadPoolD2Ev

; Function Attrs: mustprogress uwtable
define hidden void @_ZN13IlmThread_3_49TaskGroup4DataC2Ev(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN13IlmThread_3_49SemaphoreC1Ej(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef 1)
  ret void
}

declare void @_ZN13IlmThread_3_49SemaphoreC1Ej(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN13IlmThread_3_49TaskGroup4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN13IlmThread_3_49SemaphoreD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.a) #26
  ret void
}

; Function Attrs: nounwind
declare void @_ZN13IlmThread_3_49SemaphoreD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN13IlmThread_3_49TaskGroup4Data12waitForEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN13IlmThread_3_49Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.03 = phi i32 [ %.1, %bb.c ], [ 0, %bb.a ]     ; 2 uses
  %i.e = add nsw i32 %.03, 1
  %i.f = icmp sgt i32 %.03, 99
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.g = tail call noundef i32 @sched_yield() #26 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.1 = phi i32 [ 0, %bb.b ], [ %i.e, %.lr.ph ]
  %i.h = load atomic i32, ptr %i.b seq_cst, align 4
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void
}

declare void @_ZN13IlmThread_3_49Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN13IlmThread_3_49TaskGroup4Data7addTaskEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = atomicrmw add ptr %i.a, i32 1 seq_cst, align 4 ; 0 uses
  %i.c = atomicrmw add ptr %0, i32 1 seq_cst, align 4
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN13IlmThread_3_49Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN13IlmThread_3_49TaskGroup4Data10removeTaskEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = atomicrmw add ptr %0, i32 -1 seq_cst, align 4
  %i.a = icmp eq i32 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN13IlmThread_3_49Semaphore4postEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %2 = atomicrmw add ptr %i.c, i32 -1 seq_cst, align 4 ; 0 uses
  ret void
}

declare void @_ZN13IlmThread_3_49Semaphore4postEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN13IlmThread_3_410ThreadPool4DataC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN13IlmThread_3_410ThreadPool4DataC2EPNS_18ThreadPoolProviderE(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 16)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.h unwind label %bb.b       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #26 ; 0 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1) #26, !inline_history !1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #28
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #29
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

bb.h:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.l, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.m, align 4, !tbaa !23
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.n, align 8, !tbaa !27
  store ptr %1, ptr %0, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31   ; 8 uses
  store ptr %i.a, ptr %i.o, align 8, !tbaa !31
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.q, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !23
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #26, !inline_history !73
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #26, !inline_history !73
  br label %_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !33
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi i32 [ %i.t, %bb.l ], [ %i.ad, %bb.m ]
  %i.ae = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ae, label %bb.n, label %_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !34

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #26
  br label %_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.j, %bb.h
  ret void

.body:                                            ; preds = %bb.e
  tail call void @_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  resume { ptr, i32 } %i.i
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN13IlmThread_3_410ThreadPool4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr", align 8   ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  invoke void @_ZN13IlmThread_3_410ThreadPool4Data11setProviderESt10shared_ptrINS_18ThreadPoolProviderEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 %1)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.c, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !23
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !2
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !2
  br label %_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !33
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.f ], [ %i.p, %bb.g ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.h, label %_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !34

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.t, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !23
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
end_hunk_0
begin_hunk_1_@_ZN13IlmThread_3_410ThreadPool4Data11setProviderESt10shared_ptrINS_18ThreadPoolProviderEE:bb.a
bb.h:                                             ; preds = %bb.f, %bb.e, %_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.not.i.i5 = icmp eq ptr %i.k, null
  br i1 %.not.i.i5, label %_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.r, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !23
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #26, !inline_history !2
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #26, !inline_history !2
  br label %_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9

bb.k:                                             ; preds = %bb.i
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i6 = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i6, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !33
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

bb.m:                                             ; preds = %bb.k
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i8 = phi i32 [ %i.u, %bb.l ], [ %i.ae, %bb.m ]
  %i.af = icmp eq i32 %.0.i.i.i.i8, 1
  br i1 %i.af, label %bb.n, label %_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9, !prof !34

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #26
  br label %_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9

_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9: ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN13IlmThread_3_44TaskC2EPNS_9TaskGroupE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13IlmThread_3_44TaskE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !40
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZN13IlmThread_3_49TaskGroup4Data7addTaskEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !43     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = atomicrmw add ptr %i.c, i32 1 seq_cst, align 4 ; 0 uses
  %i.e = atomicrmw add ptr %i.b, i32 1 seq_cst, align 4
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN13IlmThread_3_49TaskGroup4Data7addTaskEv.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @_ZN13IlmThread_3_49Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.g)
  br label %_ZN13IlmThread_3_49TaskGroup4Data7addTaskEv.exit

_ZN13IlmThread_3_49TaskGroup4Data7addTaskEv.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN13IlmThread_3_44TaskD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(16) %0) unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN13IlmThread_3_44TaskD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @llvm.trap() #29
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZN13IlmThread_3_44Task5groupEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN13IlmThread_3_49TaskGroupC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27 ; 5 uses
  store i32 0, ptr %i.a, align 4, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_ZN13IlmThread_3_49SemaphoreC1Ej(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i32 noundef 1)
          to label %_ZN13IlmThread_3_49TaskGroup4DataC2Ev.exit unwind label %bb.b

_ZN13IlmThread_3_49TaskGroup4DataC2Ev.exit:       ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !43
  ret void

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #30
  resume { ptr, i32 } %i.d
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN13IlmThread_3_49TaskGroupD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !43     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_ZN13IlmThread_3_49Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.d = load atomic i32, ptr %i.c seq_cst, align 4
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %_ZN13IlmThread_3_49TaskGroup4Data12waitForEmptyEv.exit

.lr.ph.i:                                         ; preds = %.noexc, %bb.c
  %.03.i = phi i32 [ %.1.i, %bb.c ], [ 0, %.noexc ] ; 2 uses
  %i.f = add nsw i32 %.03.i, 1
  %i.g = icmp sgt i32 %.03.i, 99
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = tail call noundef i32 @sched_yield() #26 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.1.i = phi i32 [ 0, %bb.b ], [ %i.f, %.lr.ph.i ]
  %i.i = load atomic i32, ptr %i.c seq_cst, align 4
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %_ZN13IlmThread_3_49TaskGroup4Data12waitForEmptyEv.exit, !llvm.loop !0

_ZN13IlmThread_3_49TaskGroup4Data12waitForEmptyEv.exit: ; preds = %bb.c, %.noexc
  %i.k = load ptr, ptr %0, align 8, !tbaa !43     ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN13IlmThread_3_49TaskGroup4Data12waitForEmptyEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  tail call void @_ZN13IlmThread_3_49SemaphoreD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.m) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN13IlmThread_3_49TaskGroup4Data12waitForEmptyEv.exit
  ret void

bb.f:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN13IlmThread_3_49TaskGroup13finishOneTaskEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !43     ; 3 uses
  %1 = atomicrmw add ptr %i.a, i32 -1 seq_cst, align 4
  %i.b = icmp eq i32 %1, 1
  br i1 %i.b, label %bb.b, label %_ZN13IlmThread_3_49TaskGroup4Data10removeTaskEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @_ZN13IlmThread_3_49Semaphore4postEv(ptr noundef nonnull align 8 dereferenceable(40) %i.c)
  br label %_ZN13IlmThread_3_49TaskGroup4Data10removeTaskEv.exit

_ZN13IlmThread_3_49TaskGroup4Data10removeTaskEv.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %2 = atomicrmw add ptr %i.d, i32 -1 seq_cst, align 4 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN13IlmThread_3_418ThreadPoolProviderC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #5 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN13IlmThread_3_418ThreadPoolProviderE, i64 16), ptr %0, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN13IlmThread_3_418ThreadPoolProviderD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN13IlmThread_3_418ThreadPoolProviderD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @llvm.trap() #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN13IlmThread_3_410ThreadPoolC2Ej(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN13IlmThread_3_410ThreadPoolE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !46
  tail call void @_ZN13IlmThread_3_410ThreadPool13setNumThreadsEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN13IlmThread_3_410ThreadPool13setNumThreadsEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Sp_locker", align 1  ; 4 uses
  %3 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %4 = alloca %"class.std::shared_ptr", align 8   ; 4 uses
  %5 = alloca %"class.std::shared_ptr", align 8   ; 4 uses
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 72) #26 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #26
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !94
  call void @_ZNSt10_Sp_lockerC1EPKv(ptr noundef nonnull align 1 dereferenceable(2) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26, !noalias !94
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37, !noalias !94 ; 3 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !37, !alias.scope !94
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31, !noalias !94 ; 3 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !31, !alias.scope !94
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK13IlmThread_3_410ThreadPool4Data11getProviderEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32, !noalias !94
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load i32, ptr %i.j, align 4, !tbaa !33, !noalias !94
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !33, !noalias !94
  br label %_ZNK13IlmThread_3_410ThreadPool4Data11getProviderEv.exit

bb.h:                                             ; preds = %bb.f
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4, !noalias !94 ; 0 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !37
  br label %_ZNK13IlmThread_3_410ThreadPool4Data11getProviderEv.exit

_ZNK13IlmThread_3_410ThreadPool4Data11getProviderEv.exit: ; preds = %bb.e, %bb.g, %bb.h
  %i.o = phi ptr [ %i.f, %bb.e ], [ %i.f, %bb.g ], [ %.pre, %bb.h ] ; 5 uses
  call void @_ZNSt10_Sp_lockerD1Ev(ptr noundef nonnull align 1 dead_on_return(2) dereferenceable(2) %2) #26, !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !94
  %.not28 = icmp eq ptr %i.o, null
  br i1 %.not28, label %.critedge, label %bb.i

bb.i:                                             ; preds = %_ZNK13IlmThread_3_410ThreadPool4Data11getProviderEv.exit
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef i32 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.t = icmp eq i32 %i.s, %1
  br i1 %i.t, label %.critedge, label %bb.l

bb.k:                                             ; preds = %bb.m, %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %common.resume

bb.l:                                             ; preds = %bb.j
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i32 noundef %1)
          to label %.critedge unwind label %bb.k

.critedge:                                        ; preds = %bb.m, %bb.j, %_ZNK13IlmThread_3_410ThreadPool4Data11getProviderEv.exit, %bb.l
  %i.y = phi i1 [ true, %_ZNK13IlmThread_3_410ThreadPool4Data11getProviderEv.exit ], [ true, %bb.l ], [ false, %bb.j ], [ false, %bb.m ]
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !31   ; 8 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.aa, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !23
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #26, !inline_history !2
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #26, !inline_history !2
  br label %_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 8, !tbaa !33
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i = phi i32 [ %i.ad, %bb.q ], [ %i.an, %bb.r ]
  %i.ao = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ao, label %bb.s, label %_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !34

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #26
  br label %_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.critedge, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %i.y, label %bb.t, label %_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit15

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ap = icmp eq i32 %1, 0
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !46  ; 2 uses
  br i1 %i.ap, label %bb.u, label %bb.ad

bb.u:                                             ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN13IlmThread_3_410ThreadPool4Data11setProviderESt10shared_ptrINS_18ThreadPoolProviderEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 %4)
          to label %bb.v unwind label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31 ; 8 uses
  %.not.i.i11 = icmp eq ptr %i.as, null
  br i1 %.not.i.i11, label %_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit15, label %bb.w
end_hunk_1
begin_hunk_2_@_ZN13IlmThread_3_410ThreadPool17setThreadProviderEPNS_18ThreadPoolProviderE:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  store ptr %1, ptr %2, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %_ZNSt10shared_ptrIN13IlmThread_3_418ThreadPoolProviderEEC2IS1_vEEPT_.exit unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #26 ; 0 uses
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %1, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %1) #26, !inline_history !1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #28
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.f

common.resume:                                    ; preds = %bb.e, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.o ], [ %i.l, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #29
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

_ZNSt10shared_ptrIN13IlmThread_3_418ThreadPoolProviderEEC2IS1_vEEPT_.exit: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 1, ptr %i.o, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 1, ptr %i.p, align 4, !tbaa !23
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %1, ptr %i.q, align 8, !tbaa !27
  store ptr %i.d, ptr %i.c, align 8, !tbaa !31
  invoke void @_ZN13IlmThread_3_410ThreadPool4Data11setProviderESt10shared_ptrINS_18ThreadPoolProviderEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 %2)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN13IlmThread_3_418ThreadPoolProviderEEC2IS1_vEEPT_.exit
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !31   ; 8 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.s, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !23
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #26, !inline_history !2
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #26, !inline_history !2
  br label %_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !33
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.v, %bb.l ], [ %i.af, %bb.m ]
  %i.ag = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ag, label %bb.n, label %_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !34

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #26
  br label %_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  ret void

bb.o:                                             ; preds = %_ZNSt10shared_ptrIN13IlmThread_3_418ThreadPoolProviderEEC2IS1_vEEPT_.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN13IlmThread_3_410ThreadPool7addTaskEPNS_4TaskE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Sp_locker", align 1  ; 4 uses
  %3 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !118
  call void @_ZNSt10_Sp_lockerC1EPKv(ptr noundef nonnull align 1 dereferenceable(2) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !noalias !118
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37, !noalias !118 ; 3 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !37, !alias.scope !118
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31, !noalias !118 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !31, !alias.scope !118
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK13IlmThread_3_410ThreadPool4Data11getProviderEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32, !noalias !118
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.g, align 4, !tbaa !33, !noalias !118
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !33, !noalias !118
  br label %_ZNK13IlmThread_3_410ThreadPool4Data11getProviderEv.exit

bb.e:                                             ; preds = %bb.c
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4, !noalias !118 ; 0 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !37
  br label %_ZNK13IlmThread_3_410ThreadPool4Data11getProviderEv.exit

_ZNK13IlmThread_3_410ThreadPool4Data11getProviderEv.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.l = phi ptr [ %i.c, %bb.b ], [ %i.c, %bb.d ], [ %.pre, %bb.e ] ; 3 uses
  call void @_ZNSt10_Sp_lockerD1Ev(ptr noundef nonnull align 1 dead_on_return(2) dereferenceable(2) %2) #26, !noalias !118
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !118
  %.not6 = icmp eq ptr %i.l, null
  br i1 %.not6, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNK13IlmThread_3_410ThreadPool4Data11getProviderEv.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  invoke void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %1)
          to label %_ZN13IlmThread_3_412_GLOBAL__N_117handleProcessTaskEPNS_4TaskE.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.h, %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.p

bb.h:                                             ; preds = %_ZNK13IlmThread_3_410ThreadPool4Data11getProviderEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40   ; 2 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc unwind label %bb.g, !inline_history !4

.noexc:                                           ; preds = %bb.h
  %i.v = load ptr, ptr %1, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %1) #26, !inline_history !4
  %.not7.i = icmp eq ptr %i.r, null
  br i1 %.not7.i, label %_ZN13IlmThread_3_412_GLOBAL__N_117handleProcessTaskEPNS_4TaskE.exit, label %bb.i

bb.i:                                             ; preds = %.noexc
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !43   ; 3 uses
  %4 = atomicrmw add ptr %i.y, i32 -1 seq_cst, align 4
  %i.z = icmp eq i32 %4, 1
  br i1 %i.z, label %bb.j, label %_ZN13IlmThread_3_49TaskGroup13finishOneTaskEv.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  invoke void @_ZN13IlmThread_3_49Semaphore4postEv(ptr noundef nonnull align 8 dereferenceable(40) %i.aa)
          to label %_ZN13IlmThread_3_49TaskGroup13finishOneTaskEv.exit.i unwind label %bb.g

_ZN13IlmThread_3_49TaskGroup13finishOneTaskEv.exit.i: ; preds = %bb.j, %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %5 = atomicrmw add ptr %i.ab, i32 -1 seq_cst, align 4 ; 0 uses
  br label %_ZN13IlmThread_3_412_GLOBAL__N_117handleProcessTaskEPNS_4TaskE.exit

_ZN13IlmThread_3_412_GLOBAL__N_117handleProcessTaskEPNS_4TaskE.exit: ; preds = %_ZN13IlmThread_3_49TaskGroup13finishOneTaskEv.exit.i, %.noexc, %bb.f
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !31  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN13IlmThread_3_412_GLOBAL__N_117handleProcessTaskEPNS_4TaskE.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ad, align 8, !tbaa !22
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !23
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #26, !inline_history !2
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !20
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #26, !inline_history !2
  br label %_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !33
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.ag, %bb.n ], [ %i.aq, %bb.o ]
  %i.ar = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ar, label %bb.p, label %_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !34

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #26
  br label %_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN13IlmThread_3_412_GLOBAL__N_117handleProcessTaskEPNS_4TaskE.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN13IlmThread_3_410ThreadPool16globalThreadPoolEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN13IlmThread_3_410ThreadPool16globalThreadPoolEvE11gThreadPool acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN13IlmThread_3_410ThreadPool16globalThreadPoolEvE11gThreadPool) #26
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN13IlmThread_3_410ThreadPoolC1Ej(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN13IlmThread_3_410ThreadPool16globalThreadPoolEvE11gThreadPool, i32 noundef 0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN13IlmThread_3_410ThreadPoolD1Ev, ptr nonnull @_ZZN13IlmThread_3_410ThreadPool16globalThreadPoolEvE11gThreadPool, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN13IlmThread_3_410ThreadPool16globalThreadPoolEvE11gThreadPool) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  ret ptr @_ZZN13IlmThread_3_410ThreadPool16globalThreadPoolEvE11gThreadPool

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN13IlmThread_3_410ThreadPool16globalThreadPoolEvE11gThreadPool) #26
  resume { ptr, i32 } %i.e
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define void @_ZN13IlmThread_3_410ThreadPool13addGlobalTaskEPNS_4TaskE(ptr noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN13IlmThread_3_410ThreadPool16globalThreadPoolEvE11gThreadPool acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN13IlmThread_3_410ThreadPool16globalThreadPoolEv.exit, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN13IlmThread_3_410ThreadPool16globalThreadPoolEvE11gThreadPool) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN13IlmThread_3_410ThreadPool16globalThreadPoolEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN13IlmThread_3_410ThreadPoolC1Ej(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN13IlmThread_3_410ThreadPool16globalThreadPoolEvE11gThreadPool, i32 noundef 0)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN13IlmThread_3_410ThreadPoolD1Ev, ptr nonnull @_ZZN13IlmThread_3_410ThreadPool16globalThreadPoolEvE11gThreadPool, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN13IlmThread_3_410ThreadPool16globalThreadPoolEvE11gThreadPool) #26
  br label %_ZN13IlmThread_3_410ThreadPool16globalThreadPoolEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN13IlmThread_3_410ThreadPool16globalThreadPoolEvE11gThreadPool) #26
  resume { ptr, i32 } %i.e

_ZN13IlmThread_3_410ThreadPool16globalThreadPoolEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  tail call void @_ZN13IlmThread_3_410ThreadPool7addTaskEPNS_4TaskE(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN13IlmThread_3_410ThreadPool16globalThreadPoolEvE11gThreadPool, ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN13IlmThread_3_410ThreadPool28estimateThreadCountForFileIOEv() local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNSt6thread20hardware_concurrencyEv() #26 ; 2 uses
  %or.cond = icmp slt i32 %i.a, 1
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @sysconf(i32 noundef 84) #26
  %i.c = trunc i64 %i.b to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare noundef i32 @_ZNSt6thread20hardware_concurrencyEv() local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #3

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #26, !inline_history !119
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !33   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !33
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #26, !inline_history !119
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

end_hunk_2
begin_hunk_3_@_ZN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProvider6finishEv:bb.a
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.i
  tail call void @_ZSt9terminatev() #29
  unreachable

_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i.i: ; preds = %bb.c
  store ptr %i.o, ptr %i.p, align 8, !tbaa !56
  br label %bb.e

.lr.ph19.i:                                       ; preds = %.noexc, %.noexc2
  %.018.i = phi i64 [ %i.u, %.noexc2 ], [ 0, %.noexc ] ; 2 uses
  %.val11.i = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.r = getelementptr inbounds nuw i8, ptr %.val11.i, i64 144
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !57
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.018.i
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %.noexc2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2:                                          ; preds = %.lr.ph19.i
  %i.u = add i64 %.018.i, 1                       ; 2 uses
  %.not9.i = icmp eq i64 %i.u, %i.l
  br i1 %.not9.i, label %._crit_edge.i.loopexit, label %.lr.ph19.i, !llvm.loop !7

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i.i, %._crit_edge.i
  %i.v = getelementptr inbounds nuw i8, ptr %.val10.i, i64 168
  store atomic i32 0, ptr %i.v seq_cst, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %.val10.i, i64 172
  store atomic i8 0, ptr %i.w seq_cst, align 4
  %i.x = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #26 ; 0 uses
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph19.i, %.lr.ph.i
  %lpad.loopexit.split-lp16 = landingpad { ptr, i32 }
          cleanup
  %i.y = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #26 ; 0 uses
  resume { ptr, i32 } %lpad.loopexit.split-lp16
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.i

bb.b:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.i:      ; preds = %bb.a, %bb.b
  %.05.i.i.i.i.i = phi ptr [ %i.e, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.05.i.i.i.i.i, align 8, !tbaa !59
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.i
  tail call void @_ZSt9terminatev() #29
  unreachable

_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i.i: ; preds = %bb.b, %bb.a
  %.not.i.i1.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !71
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.j) #30
  br label %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit.i.i

_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit.i.i:      ; preds = %bb.d, %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !70   ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i1.i.i, label %_ZSt8_DestroyIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataEEvPT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !67
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #30
  br label %_ZSt8_DestroyIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataEEvPT_.exit

_ZSt8_DestroyIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataEEvPT_.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit.i.i, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN13IlmThread_3_49SemaphoreD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(173) %i.r) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(192) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !32
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #26
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define internal void @_ZN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProvider10threadLoopESt10shared_ptrINS0_21DefaultThreadPoolDataEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val721 = load ptr, ptr %1, align 8, !tbaa !49
  tail call void @_ZN13IlmThread_3_49Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(40) %.val721)
  %.val622 = load ptr, ptr %1, align 8, !tbaa !49
  %i.a = getelementptr inbounds nuw i8, ptr %.val622, i64 40 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #26 ; 2 uses
  %.not.i.i.i23 = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i23, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %._crit_edge

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.ac, %.backedge ]
  tail call void @_ZSt20__throw_system_errori(i32 noundef %.lcssa) #28
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a, %.backedge
  %i.c = phi ptr [ %i.ab, %.backedge ], [ %i.a, %bb.a ] ; 2 uses
  %.val5 = load ptr, ptr %1, align 8, !tbaa !49   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val5, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !132
  %i.f = getelementptr inbounds nuw i8, ptr %.val5, i64 88 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !132  ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %_ZN13IlmThread_3_412_GLOBAL__N_117handleProcessTaskEPNS_4TaskE.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !69   ; 6 uses
  store ptr %i.i, ptr %i.f, align 8, !tbaa !66
  %i.k = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #26 ; 0 uses
  %.not.i8 = icmp eq ptr %i.j, null
  br i1 %.not.i8, label %.backedge, label %.noexc9

.noexc9:                                          ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.j), !inline_history !4
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #26, !inline_history !4
  %.not7.i = icmp eq ptr %i.m, null
  br i1 %.not7.i, label %.backedge, label %bb.c

bb.c:                                             ; preds = %.noexc9
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !43   ; 3 uses
  %2 = atomicrmw add ptr %i.t, i32 -1 seq_cst, align 4
  %i.u = icmp eq i32 %2, 1
  br i1 %i.u, label %bb.d, label %_ZN13IlmThread_3_49TaskGroup13finishOneTaskEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  tail call void @_ZN13IlmThread_3_49Semaphore4postEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v)
  br label %_ZN13IlmThread_3_49TaskGroup13finishOneTaskEv.exit.i

_ZN13IlmThread_3_49TaskGroup13finishOneTaskEv.exit.i: ; preds = %bb.d, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %3 = atomicrmw add ptr %i.w, i32 -1 seq_cst, align 4 ; 0 uses
  br label %.backedge

_ZN13IlmThread_3_412_GLOBAL__N_117handleProcessTaskEPNS_4TaskE.exit: ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.val5, i64 172
  %i.y = load atomic i8, ptr %i.x monotonic, align 4, !range !133, !noundef !72
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #26 ; 0 uses
  br i1 %i.z, label %bb.e, label %.backedge

.backedge:                                        ; preds = %bb.b, %.noexc9, %_ZN13IlmThread_3_49TaskGroup13finishOneTaskEv.exit.i, %_ZN13IlmThread_3_412_GLOBAL__N_117handleProcessTaskEPNS_4TaskE.exit
  %.val7 = load ptr, ptr %1, align 8, !tbaa !49
  tail call void @_ZN13IlmThread_3_49Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(40) %.val7)
  %.val6 = load ptr, ptr %1, align 8, !tbaa !49
  %i.ab = getelementptr inbounds nuw i8, ptr %.val6, i64 40 ; 2 uses
  %i.ac = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ab) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %._crit_edge

bb.e:                                             ; preds = %_ZN13IlmThread_3_412_GLOBAL__N_117handleProcessTaskEPNS_4TaskE.exit
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #22

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

declare void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt6threadSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !57     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt6threadmS0_ET_S2_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt6threadmS0_ET_S2_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !61
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !56
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #28
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #27 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !61
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.x = load i64, ptr %.0911.i.i.i, align 8, !tbaa !59, !alias.scope !139
  store i64 %i.x, ptr %.012.i.i.i, align 8, !tbaa !59, !alias.scope !138
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !59, !alias.scope !139
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !137

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ac) #30
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit37

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit37: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !57
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !56
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !71
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt6threadmS0_ET_S2_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit37, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #22

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

declare void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6thread24_M_thread_deps_never_runEv() #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS4_21DefaultThreadPoolDataEEEPS5_S8_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS4_21DefaultThreadPoolDataEEEPS5_S8_EEEEEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !31  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i.i, label %_ZNSt6thread8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS3_21DefaultThreadPoolDataEEEPS4_S7_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967297
  %i.e = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !23
  %i.g = load ptr, ptr %.val, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %.val) #26, !inline_history !140
  %i.j = load ptr, ptr %.val, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %.val) #26, !inline_history !140
  br label %_ZNSt6thread8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS3_21DefaultThreadPoolDataEEEPS4_S7_EEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.e, -1
  store i32 %i.n, ptr %i.b, align 8, !tbaa !33
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.p, label %bb.g, label %_ZNSt6thread8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS3_21DefaultThreadPoolDataEEEPS4_S7_EEED2Ev.exit, !prof !34

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val) #26
  br label %_ZNSt6thread8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS3_21DefaultThreadPoolDataEEEPS4_S7_EEED2Ev.exit

_ZNSt6thread8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS3_21DefaultThreadPoolDataEEEPS4_S7_EEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS4_21DefaultThreadPoolDataEEEPS5_S8_EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS4_21DefaultThreadPoolDataEEEPS5_S8_EEEEEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_3
