inline.NumInlined: 985
inline.NumDeleted: 561
begin_hunk_0
%"class.arrow::Result" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage" }
%"class.arrow::internal::AlignedStorage" = type { [8 x i8] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator.20" = type { i8 }
%"class.std::unique_ptr.79" = type { %"struct.std::__uniq_ptr_data.80" }
%"struct.std::__uniq_ptr_data.80" = type { %"class.std::__uniq_ptr_impl.81" }
%"class.std::__uniq_ptr_impl.81" = type { %"class.std::tuple.82" }
%"class.std::tuple.82" = type { %"struct.std::_Tuple_impl.83" }
%"struct.std::_Tuple_impl.83" = type { %"struct.std::_Head_base.86" }
%"struct.std::_Head_base.86" = type { ptr }
%"class.arrow::Result.60" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.63" }
%"class.arrow::internal::AlignedStorage.63" = type { [16 x i8] }
%"class.arrow::Result.64" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.67" }
%"class.arrow::internal::AlignedStorage.67" = type { [152 x i8] }
%"class.arrow::internal::SignalHandler" = type { %struct.sigaction }
%struct.sigaction = type { %union.anon.68, %struct.__sigset_t, i32, ptr }
%union.anon.68 = type { ptr }
%struct.__sigset_t = type { [16 x i64] }
%"class.arrow::util::ArrowLog" = type <{ %"class.arrow::util::ArrowLogBase", ptr, i8, [7 x i8] }>
%"class.arrow::util::ArrowLogBase" = type { ptr }
%"class.std::weak_ptr.38" = type { %"class.std::__weak_ptr.39" }
%"class.std::__weak_ptr.39" = type { ptr, %"class.std::__weak_count" }
%"class.std::__weak_count" = type { ptr }
%"class.std::any" = type { ptr, %"union.std::any::_Storage" }
%"union.std::any::_Storage" = type { ptr }
%"union.std::any::_Arg" = type { ptr }
%"class.arrow::internal::StringStreamWrapper" = type { %"class.std::unique_ptr.70", ptr }
%"class.std::unique_ptr.70" = type { %"struct.std::__uniq_ptr_data.71" }
%"struct.std::__uniq_ptr_data.71" = type { %"class.std::__uniq_ptr_impl.72" }
%"class.std::__uniq_ptr_impl.72" = type { %"class.std::tuple.73" }
%"class.std::tuple.73" = type { %"struct.std::_Tuple_impl.74" }
%"struct.std::_Tuple_impl.74" = type { %"struct.std::_Head_base.77" }
%"struct.std::_Head_base.77" = type { ptr }
%"class.arrow::Result.94" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.97" }
%"class.arrow::internal::AlignedStorage.97" = type { [8 x i8] }
%"class.std::shared_ptr.10" = type { %"class.std::__shared_ptr.11" }
%"class.std::__shared_ptr.11" = type { ptr, %"class.std::__shared_count" }

$_ZN5arrow8internal19CancelledFromSignalIJRA20_KcEEENS_6StatusEiDpOT_ = comdat any

$_ZN5arrow6ResultIPNS_10StopSourceEEC2ERKNS_6StatusE = comdat any

$__clang_call_terminate = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN5arrow6Status11DeleteStateEv = comdat any

$_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZSt20__throw_bad_any_castv = comdat any

$_ZNSt12bad_any_castD0Ev = comdat any

$_ZNKSt12bad_any_cast4whatEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow10StopSourceESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow10StopSourceESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow10StopSourceESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow10StopSourceESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZN5arrow6ResultISt10shared_ptrINS_8internal8SelfPipeEEED2Ev = comdat any

$_ZN5arrow6Status8FromArgsIJRA35_KcEEES0_NS_10StatusCodeEDpOT_ = comdat any

$_ZNSt12__shared_ptrIN5arrow8internal8SelfPipeELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt6thread24_M_thread_deps_never_runEv = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvSt10shared_ptrIN5arrow8internal8SelfPipeEEES7_EEEEED2Ev = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvSt10shared_ptrIN5arrow8internal8SelfPipeEEES7_EEEEED0Ev = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvSt10shared_ptrIN5arrow8internal8SelfPipeEEES7_EEEEE6_M_runEv = comdat any

$_ZN5arrow4util12ArrowLogBaselsIA24_cEERS1_RKT_ = comdat any

$_ZN5arrow4util12ArrowLogBaselsIA19_cEERS1_RKT_ = comdat any

$_ZN5arrow4util12ArrowLogBaselsIA38_cEERS1_RKT_ = comdat any

$_ZN5arrow4util12ArrowLogBaselsIA2_cEERS1_RKT_ = comdat any

$_ZN5arrow4util12ArrowLogBaselsIA11_cEERS1_RKT_ = comdat any

$_ZN5arrow4util12ArrowLogBaselsIA3_cEERS1_RKT_ = comdat any

$_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow14StopSourceImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow14StopSourceImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow14StopSourceImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow14StopSourceImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZN5arrow6Status8FromArgsIJRA20_KcEEES0_NS_10StatusCodeEDpOT_ = comdat any

$_ZN5arrow6Status17FromDetailAndArgsIJRA20_KcEEES0_NS_10StatusCodeESt10shared_ptrINS_12StatusDetailEEDpOT_ = comdat any

$_ZN5arrow6Status8FromArgsIJRA34_KcEEES0_NS_10StatusCodeEDpOT_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt19_Sp_make_shared_tag = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt12bad_any_cast = comdat any

$_ZTSSt12bad_any_cast = comdat any

$_ZTVSt12bad_any_cast = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow10StopSourceESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN5arrow10StopSourceESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow10StopSourceESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvSt10shared_ptrIN5arrow8internal8SelfPipeEEES7_EEEEEE = comdat any

$_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvSt10shared_ptrIN5arrow8internal8SelfPipeEEES7_EEEEEE = comdat any

$_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvSt10shared_ptrIN5arrow8internal8SelfPipeEEES7_EEEEEE = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow14StopSourceImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN5arrow14StopSourceImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow14StopSourceImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

@.str = private unnamed_addr constant [20 x i8] c"Operation cancelled\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Signal stop source already set up\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Signal stop source was not set up\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZZN5arrow12_GLOBAL__N_115SignalStopState8instanceEvE8instance = internal global %"class.std::shared_ptr.26" zeroinitializer, align 8
@_ZGVZN5arrow12_GLOBAL__N_115SignalStopState8instanceEvE8instance = internal global i64 0, align 8
@__dso_handle = external hidden global i8
@_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12_GLOBAL__N_115SignalStopStateESaIvELN9__gnu_cxx12_Lock_policyE2EE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5arrow12_GLOBAL__N_115SignalStopStateESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12_GLOBAL__N_115SignalStopStateESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12_GLOBAL__N_115SignalStopStateESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12_GLOBAL__N_115SignalStopStateESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12_GLOBAL__N_115SignalStopStateESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5arrow12_GLOBAL__N_115SignalStopStateESaIvELN9__gnu_cxx12_Lock_policyE2EE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow12_GLOBAL__N_115SignalStopStateESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow12_GLOBAL__N_115SignalStopStateESaIvELN9__gnu_cxx12_Lock_policyE2EE = internal constant [103 x i8] c"St23_Sp_counted_ptr_inplaceIN5arrow12_GLOBAL__N_115SignalStopStateESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to shutdown self-pipe\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [96 x i8] c"St23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEE, ptr @_ZTISt12__shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateELN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEE = internal constant [56 x i8] c"St10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEE\00", align 1
@_ZTISt12__shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateELN9__gnu_cxx12_Lock_policyE2EE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt12__shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt19__shared_ptr_accessIN5arrow12_GLOBAL__N_115SignalStopStateELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE }, align 8
@_ZTSSt12__shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateELN9__gnu_cxx12_Lock_policyE2EE = internal constant [87 x i8] c"St12__shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt19__shared_ptr_accessIN5arrow12_GLOBAL__N_115SignalStopStateELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt19__shared_ptr_accessIN5arrow12_GLOBAL__N_115SignalStopStateELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE }, align 8
@_ZTSSt19__shared_ptr_accessIN5arrow12_GLOBAL__N_115SignalStopStateELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE = internal constant [102 x i8] c"St19__shared_ptr_accessIN5arrow12_GLOBAL__N_115SignalStopStateELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE\00", align 1
@_ZTIZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlvE_ = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlvE_ }, align 8
@_ZTSZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlvE_ = internal constant [53 x i8] c"ZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlvE_\00", align 1
@_ZTIv = external constant ptr
@_ZTISt12bad_any_cast = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt12bad_any_cast, ptr @_ZTISt8bad_cast }, comdat, align 8
@_ZTSSt12bad_any_cast = linkonce_odr constant [17 x i8] c"St12bad_any_cast\00", comdat, align 1
@_ZTISt8bad_cast = external constant ptr
@_ZTVSt12bad_any_cast = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTISt12bad_any_cast, ptr @_ZNSt8bad_castD2Ev, ptr @_ZNSt12bad_any_castD0Ev, ptr @_ZNKSt12bad_any_cast4whatEv] }, comdat, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"bad any_cast\00", align 1
@_ZTIZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlSt3anyE_ = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlSt3anyE_ }, align 8
@_ZTSZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlSt3anyE_ = internal constant [58 x i8] c"ZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlSt3anyE_\00", align 1
@_ZTIZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlSt3anyE0_ = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlSt3anyE0_ }, align 8
@_ZTSZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlSt3anyE0_ = internal constant [59 x i8] c"ZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlSt3anyE0_\00", align 1
@_ZTISt12bad_weak_ptr = external constant ptr
@_ZTVSt12bad_weak_ptr = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow10StopSourceESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5arrow10StopSourceESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow10StopSourceESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow10StopSourceESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow10StopSourceESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow10StopSourceESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5arrow10StopSourceESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow10StopSourceESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow10StopSourceESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [84 x i8] c"St23_Sp_counted_ptr_inplaceIN5arrow10StopSourceESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Signal handlers already registered\00", align 1
@_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvSt10shared_ptrIN5arrow8internal8SelfPipeEEES7_EEEEEE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvSt10shared_ptrIN5arrow8internal8SelfPipeEEES7_EEEEEE, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvSt10shared_ptrIN5arrow8internal8SelfPipeEEES7_EEEEED2Ev, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvSt10shared_ptrIN5arrow8internal8SelfPipeEEES7_EEEEED0Ev, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvSt10shared_ptrIN5arrow8internal8SelfPipeEEES7_EEEEE6_M_runEv] }, comdat, align 8
@_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvSt10shared_ptrIN5arrow8internal8SelfPipeEEES7_EEEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvSt10shared_ptrIN5arrow8internal8SelfPipeEEES7_EEEEEE, ptr @_ZTINSt6thread6_StateE }, comdat, align 8
@_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvSt10shared_ptrIN5arrow8internal8SelfPipeEEES7_EEEEEE = linkonce_odr constant [103 x i8] c"NSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvSt10shared_ptrIN5arrow8internal8SelfPipeEEES7_EEEEEE\00", comdat, align 1
@_ZTINSt6thread6_StateE = external constant ptr
@.str.8 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"/opt-bench/work/arrow/arrow/cpp/src/arrow/util/cancel.cc\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c" Check failed: _s.ok() \00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Operation failed: \00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"SetSignalHandler(h.signum, h.handler)\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"Bad status\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c": \00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow14StopSourceImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5arrow14StopSourceImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow14StopSourceImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow14StopSourceImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow14StopSourceImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow14StopSourceImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5arrow14StopSourceImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow14StopSourceImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow14StopSourceImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [88 x i8] c"St23_Sp_counted_ptr_inplaceIN5arrow14StopSourceImplESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"Constructed with a non-error status: \00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

@_ZN5arrow10StopSourceC1Ev = unnamed_addr alias void (ptr), ptr @_ZN5arrow10StopSourceC2Ev
@_ZN5arrow10StopSourceD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5arrow10StopSourceD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow10StopSourceC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #26, !noalias !10 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !13, !noalias !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.d, align 4, !tbaa !15, !noalias !7
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow14StopSourceImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !16, !noalias !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false), !noalias !7
  store ptr %i.b, ptr %i.a, align 8, !tbaa !18, !alias.scope !7
  store ptr %i.e, ptr %0, align 8, !tbaa !22, !alias.scope !7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5arrow10StopSourceD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow14StopSourceImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !15
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !24
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !24
  br label %_ZNSt12__shared_ptrIN5arrow14StopSourceImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow14StopSourceImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !26

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt12__shared_ptrIN5arrow14StopSourceImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow14StopSourceImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow10StopSource11RequestStopEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.arrow::Status", align 8     ; 7 uses
  call void @_ZN5arrow6Status8FromArgsIJRA20_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %1, i8 noundef signext 8, ptr noundef nonnull align 1 dereferenceable(20) @.str)
  %i.a = load ptr, ptr %0, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #27 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.c) #28
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !27
  %i.e = load atomic i32, ptr %i.d seq_cst, align 4
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.f = load ptr, ptr %0, align 8, !tbaa !27
  store atomic i32 -1, ptr %i.f seq_cst, align 4
  %i.g = load ptr, ptr %0, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29   ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i, label %_ZN5arrow6StatusaSEOS0_.exit.i, label %bb.d, !prof !32

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !33, !range !44, !noundef !45
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN5arrow6StatusaSEOS0_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #27
  br label %_ZN5arrow6StatusaSEOS0_.exit.i

_ZN5arrow6StatusaSEOS0_.exit.i:                   ; preds = %bb.e, %bb.d, %bb.c
  %i.m = load ptr, ptr %1, align 8, !tbaa !29
  store ptr %i.m, ptr %i.h, align 8, !tbaa !29
  store ptr null, ptr %1, align 8, !tbaa !29
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6StatusaSEOS0_.exit.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.n = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #27 ; 0 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %.not.i2 = icmp eq ptr %i.o, null
  br i1 %.not.i2, label %_ZN5arrow6StatusD2Ev.exit, label %bb.g, !prof !32

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !33, !range !44, !noundef !45
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #27
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.f, %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %.not.i3 = icmp eq ptr %i.t, null
  br i1 %.not.i3, label %_ZN5arrow6StatusD2Ev.exit4, label %bb.j, !prof !32

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !33, !range !44, !noundef !45
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit4, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #27
  br label %_ZN5arrow6StatusD2Ev.exit4

_ZN5arrow6StatusD2Ev.exit4:                       ; preds = %bb.i, %bb.j, %bb.k
  resume { ptr, i32 } %i.s
}

end_hunk_0
begin_hunk_1_@_ZN5arrow31RegisterCancellingSignalHandlerERKSt6vectorIiSaIiEE:bb.a
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.y, label %_ZN5arrow6ResultISt10shared_ptrINS_8internal8SelfPipeEEE7DestroyEv.exit.thread.i.i, !prof !32

bb.y:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !18, !noalias !71 ; 8 uses
  %.not.i.i.i.i.i39.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i39.i, label %_ZN5arrow6ResultISt10shared_ptrINS_8internal8SelfPipeEEE7DestroyEv.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.as, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !15
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #27, !inline_history !85
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #27, !inline_history !85
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8internal8SelfPipeEEE7DestroyEv.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !71
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.av, %bb.ac ], [ %i.bf, %bb.ad ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.bg, label %bb.ae, label %_ZN5arrow6ResultISt10shared_ptrINS_8internal8SelfPipeEEE7DestroyEv.exit.i.i, !prof !26

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8internal8SelfPipeEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_8internal8SelfPipeEEE7DestroyEv.exit.i.i: ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.aa, %bb.y
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !29, !noalias !71 ; 2 uses
  %.not.i.i40.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i40.i, label %_ZN5arrow6ResultISt10shared_ptrINS_8internal8SelfPipeEEED2Ev.exit.i, label %_ZN5arrow6ResultISt10shared_ptrINS_8internal8SelfPipeEEE7DestroyEv.exit.thread.i.i, !prof !86

_ZN5arrow6ResultISt10shared_ptrINS_8internal8SelfPipeEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8internal8SelfPipeEEE7DestroyEv.exit.i.i, %_ZN5arrow6StatusC2ERKS0_.exit.i
  %i.bh = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_8internal8SelfPipeEEE7DestroyEv.exit.i.i ], [ %i.ao, %_ZN5arrow6StatusC2ERKS0_.exit.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !33, !range !44, !noundef !45
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %_ZN5arrow6ResultISt10shared_ptrINS_8internal8SelfPipeEEED2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8internal8SelfPipeEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8internal8SelfPipeEEED2Ev.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_8internal8SelfPipeEEED2Ev.exit.i: ; preds = %bb.af, %_ZN5arrow6ResultISt10shared_ptrINS_8internal8SelfPipeEEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_8internal8SelfPipeEEE7DestroyEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !71
  br i1 %i.s, label %bb.ag, label %_ZN5arrow12_GLOBAL__N_115SignalStopState16RegisterHandlersERKSt6vectorIiSaIiEE.exit

bb.ag:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8internal8SelfPipeEEED2Ev.exit.i, %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %_ZZN5arrow12_GLOBAL__N_115SignalStopState8instanceEvE8instance.val.i, i64 96 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !87, !noalias !71
  %.not65.i = icmp eq ptr %i.bm, null
  br i1 %.not65.i, label %bb.ah, label %_ZN5arrow12_GLOBAL__N_115SignalStopState26SpawnSignalReceivingThreadEv.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.bn = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #26
          to label %.noexc.i unwind label %bb.k   ; 4 uses

.noexc.i:                                         ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !89
  store i64 0, ptr %i.bn, align 8, !tbaa !92, !noalias !94
  %i.bo = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %.noexc.i.i.i unwind label %bb.ao, !noalias !94 ; 4 uses

.noexc.i.i.i:                                     ; preds = %.noexc.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvSt10shared_ptrIN5arrow8internal8SelfPipeEEES7_EEEEEE, i64 16), ptr %i.bo, align 8, !tbaa !16, !noalias !94
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %_ZZN5arrow12_GLOBAL__N_115SignalStopState8instanceEvE8instance.val.i, i64 128
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !18, !noalias !89 ; 2 uses
  %i.bs = load <2 x ptr>, ptr %i.p, align 8, !tbaa !46, !noalias !89
  store <2 x ptr> %i.bs, ptr %i.bp, align 8, !tbaa !46, !noalias !94
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %.noexc.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !89
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !3, !noalias !94
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !3, !noalias !94
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.bx = atomicrmw volatile add ptr %i.bt, i32 1 acq_rel, align 4, !noalias !94 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %.noexc.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr @_ZN5arrow12_GLOBAL__N_115SignalStopState14ReceiveSignalsESt10shared_ptrINS_8internal8SelfPipeEE, ptr %i.by, align 8, !tbaa !95, !noalias !94
  store ptr %i.bo, ptr %2, align 8, !tbaa !97, !noalias !89
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull %2, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.am unwind label %bb.an, !noalias !94

bb.am:                                            ; preds = %bb.al
  %i.bz = load ptr, ptr %2, align 8, !tbaa !97, !noalias !89 ; 3 uses
  %.not.i.i.i.i41.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i41.i, label %_ZSt11make_uniqueISt6threadJRFvSt10shared_ptrIN5arrow8internal8SelfPipeEEERS5_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.am
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !16, !noalias !94
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !94
  call void %i.cc(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bz) #27, !noalias !94, !inline_history !99
  br label %_ZSt11make_uniqueISt6threadJRFvSt10shared_ptrIN5arrow8internal8SelfPipeEEERS5_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i

bb.an:                                            ; preds = %bb.al
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = load ptr, ptr %2, align 8, !tbaa !97, !noalias !89 ; 3 uses
  %.not.i6.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i6.i.i.i.i, label %.body.i.i.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i7.i.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i7.i.i.i.i: ; preds = %bb.an
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !16, !noalias !94
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !94
  call void %i.ch(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ce) #27, !noalias !94, !inline_history !99
  br label %.body.i.i.i

bb.ao:                                            ; preds = %.noexc.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.ao, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i7.i.i.i.i, %bb.an
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ci, %bb.ao ], [ %i.cd, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i7.i.i.i.i ], [ %i.cd, %bb.an ]
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef 8) #29, !noalias !94
  br label %.body.i

_ZSt11make_uniqueISt6threadJRFvSt10shared_ptrIN5arrow8internal8SelfPipeEEERS5_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i: ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !89
  %i.cj = load ptr, ptr %i.bl, align 8, !tbaa !87, !noalias !71 ; 3 uses
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !87, !noalias !71
  %.not.i.i.i.i.i42.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i42.i, label %_ZN5arrow12_GLOBAL__N_115SignalStopState26SpawnSignalReceivingThreadEv.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_ZSt11make_uniqueISt6threadJRFvSt10shared_ptrIN5arrow8internal8SelfPipeEEERS5_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cj, align 8, !tbaa !100
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteISt6threadEclEPS0_.exit.i.i.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZSt9terminatev() #30
  unreachable

_ZNKSt14default_deleteISt6threadEclEPS0_.exit.i.i.i.i.i.i: ; preds = %bb.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef 8) #29
  br label %_ZN5arrow12_GLOBAL__N_115SignalStopState26SpawnSignalReceivingThreadEv.exit.i

_ZN5arrow12_GLOBAL__N_115SignalStopState26SpawnSignalReceivingThreadEv.exit.i: ; preds = %_ZNKSt14default_deleteISt6threadEclEPS0_.exit.i.i.i.i.i.i, %_ZSt11make_uniqueISt6threadJRFvSt10shared_ptrIN5arrow8internal8SelfPipeEEERS5_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i, %bb.ag
  %i.ck = getelementptr inbounds nuw i8, ptr %_ZZN5arrow12_GLOBAL__N_115SignalStopState8instanceEvE8instance.val.i, i64 136
  %i.cl = load ptr, ptr %i.p, align 8, !tbaa !76, !noalias !71
  store atomic ptr %i.cl, ptr %i.ck seq_cst, align 8, !noalias !71
  %i.cm = load ptr, ptr %1, align 8, !tbaa !101, !noalias !71 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !101, !noalias !71 ; 2 uses
  %i.cp = icmp eq ptr %i.cm, %i.co
  br i1 %i.cp, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5arrow12_GLOBAL__N_115SignalStopState26SpawnSignalReceivingThreadEv.exit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.6.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.6.i, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %_ZZN5arrow12_GLOBAL__N_115SignalStopState8instanceEvE8instance.val.i, i64 72 ; 2 uses
  br label %bb.as

bb.ar:                                            ; preds = %_ZN5arrow6ResultINS_8internal13SignalHandlerEED2Ev.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.057.066.i, i64 4 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.co
  br i1 %i.ct, label %.critedge.i, label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph.i
  %.sroa.057.066.i = phi ptr [ %i.cm, %.lr.ph.i ], [ %i.cs, %bb.ar ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.057.066.i) ]
  %i.cu = load i32, ptr %.sroa.057.066.i, align 4, !tbaa !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !71
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27, !noalias !71
  invoke void @_ZN5arrow8internal13SignalHandlerC1EPFviE(ptr noundef nonnull align 8 dereferenceable(152) %5, ptr noundef nonnull @_ZN5arrow12_GLOBAL__N_115SignalStopState12HandleSignalEi)
          to label %bb.at unwind label %bb.aw

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN5arrow8internal16SetSignalHandlerEiRKNS0_13SignalHandlerE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.64") align 8 %4, i32 noundef %i.cu, ptr noundef nonnull align 8 dereferenceable(152) %5)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !71
  %i.cv = load ptr, ptr %4, align 8, !tbaa !29, !noalias !71
  %i.cw = icmp eq ptr %i.cv, null                 ; 2 uses
  br i1 %i.cw, label %bb.ay, label %bb.av, !prof !32

bb.av:                                            ; preds = %bb.au
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !71
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN5arrow6StatusC2ERKS0_.exit44.i unwind label %bb.ax

bb.aw:                                            ; preds = %bb.at, %bb.as
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !71
  br label %.body.i

bb.ax:                                            ; preds = %bb.av
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ay:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(152) %.sroa.6.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(152) %i.cq, i64 152, i1 false), !noalias !71
  %i.cz = load ptr, ptr %i.m, align 8, !tbaa !103, !noalias !71 ; 6 uses
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !105, !noalias !71
  %.not.i.i45.i = icmp eq ptr %i.cz, %i.da
  br i1 %.not.i.i45.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i32 %i.cu, ptr %i.cz, align 8, !tbaa !3
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(156) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(156) %.sroa.6.i, i64 156, i1 false), !tbaa.struct !106
  %i.db = load ptr, ptr %i.m, align 8, !tbaa !103, !noalias !71
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 160
  store ptr %i.dc, ptr %i.m, align 8, !tbaa !103, !noalias !71
  br label %_ZNSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EE9push_backEOS3_.exit.i

bb.ba:                                            ; preds = %bb.ay
  %.val16.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !107, !noalias !71 ; 5 uses
  %i.dd = ptrtoint ptr %i.cz to i64
  %i.de = ptrtoint ptr %.val16.i.i.i.i to i64
  %i.df = sub i64 %i.dd, %i.de                    ; 4 uses
  %i.dg = icmp eq i64 %i.df, 9223372036854775680
  br i1 %i.dg, label %bb.bb, label %_ZNKSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #28
          to label %.noexc48.i unwind label %.loopexit.split-lp.i

.noexc48.i:                                       ; preds = %bb.bb
  unreachable

_ZNKSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ba
  %i.dh = sdiv exact i64 %i.df, 160               ; 3 uses
  %i.di = icmp eq ptr %i.cz, %.val16.i.i.i.i      ; 2 uses
  %.sroa.speculated.i.i.i.i.i = select i1 %i.di, i64 1, i64 %i.dh
  %i.dj = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.dh ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.dh
  %i.dl = call i64 @llvm.umin.i64(i64 %i.dj, i64 57646075230342348)
  %i.dm = select i1 %i.dk, i64 57646075230342348, i64 %i.dl ; 3 uses
  %.not.i.i.i.i46.i = icmp ne i64 %i.dm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i46.i)
  %i.dn = mul nuw nsw i64 %i.dm, 160
  %i.do = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #26
          to label %.noexc49.i unwind label %.loopexit.i ; 5 uses

.noexc49.i:                                       ; preds = %_ZNKSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.df ; 2 uses
  store i32 %i.cu, ptr %i.dp, align 8, !tbaa !3
  %.sroa.6.0..sroa_idx54.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(156) %.sroa.6.0..sroa_idx54.i, ptr noundef nonnull align 4 dereferenceable(156) %.sroa.6.i, i64 156, i1 false), !tbaa.struct !106
  br i1 %i.di, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc49.i, %.lr.ph.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i.i.i ], [ %i.do, %.noexc49.i ] ; 2 uses
  %.092.i.i.i.i.i.i.i = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i.i.i ], [ %.val16.i.i.i.i, %.noexc49.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.03.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(160) %.092.i.i.i.i.i.i.i, i64 160, i1 false), !tbaa.struct !108, !alias.scope !109
  %i.dq = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 160 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.i.i.i47.i = icmp eq ptr %i.dq, %i.cz
  br i1 %.not.i.i.i.i.i.i47.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !113

_ZNSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc49.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.do, %.noexc49.i ], [ %i.dr, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 160
  %.not.i27.i.i.i.i = icmp eq ptr %.val16.i.i.i.i, null
  br i1 %.not.i27.i.i.i.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val16.i.i.i.i, i64 noundef %i.df) #29
  br label %_ZNSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.bc, %_ZNSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i.i.i
  store ptr %i.do, ptr %i.l, align 8, !tbaa !107, !noalias !71
  store ptr %i.ds, ptr %i.m, align 8, !tbaa !103, !noalias !71
  %i.dt = getelementptr inbounds nuw [160 x i8], ptr %i.do, i64 %i.dm
  store ptr %i.dt, ptr %i.cr, align 8, !tbaa !105, !noalias !71
  br label %_ZNSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EE9push_backEOS3_.exit.i

_ZNSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EE9push_backEOS3_.exit.i: ; preds = %_ZNSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_ZN5arrow6StatusC2ERKS0_.exit44.i

_ZN5arrow6StatusC2ERKS0_.exit44.i:                ; preds = %_ZNSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EE9push_backEOS3_.exit.i, %bb.av
  %i.du = load ptr, ptr %4, align 8, !tbaa !29, !noalias !71 ; 2 uses
  %.not.i.i50.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i50.i, label %_ZN5arrow6ResultINS_8internal13SignalHandlerEED2Ev.exit.i, label %bb.bd, !prof !32

bb.bd:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit44.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !33, !range !44, !noundef !45
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %_ZN5arrow6ResultINS_8internal13SignalHandlerEED2Ev.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(160) %4) #27
  br label %_ZN5arrow6ResultINS_8internal13SignalHandlerEED2Ev.exit.i

_ZN5arrow6ResultINS_8internal13SignalHandlerEED2Ev.exit.i: ; preds = %bb.be, %bb.bd, %_ZN5arrow6StatusC2ERKS0_.exit44.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !71
  br i1 %i.cw, label %bb.ar, label %_ZN5arrow12_GLOBAL__N_115SignalStopState16RegisterHandlersERKSt6vectorIiSaIiEE.exit

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit.split-lp.i:                             ; preds = %bb.bb
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bf:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.ax
  %.pn33.i = phi { ptr, i32 } [ %i.cy, %bb.ax ], [ %lpad.phi.i, %bb.bf ]
  %i.dy = load ptr, ptr %4, align 8, !tbaa !29, !noalias !71 ; 2 uses
  %.not.i.i51.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i51.i, label %_ZN5arrow6ResultINS_8internal13SignalHandlerEED2Ev.exit52.i, label %bb.bh, !prof !32

bb.bh:                                            ; preds = %bb.bg
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 1
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !33, !range !44, !noundef !45
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %_ZN5arrow6ResultINS_8internal13SignalHandlerEED2Ev.exit52.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(160) %4) #27
  br label %_ZN5arrow6ResultINS_8internal13SignalHandlerEED2Ev.exit52.i

_ZN5arrow6ResultINS_8internal13SignalHandlerEED2Ev.exit52.i: ; preds = %bb.bi, %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !71
  br label %.body.i

.critedge.i:                                      ; preds = %bb.ar, %_ZN5arrow12_GLOBAL__N_115SignalStopState26SpawnSignalReceivingThreadEv.exit.i
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !115
  br label %_ZN5arrow12_GLOBAL__N_115SignalStopState16RegisterHandlersERKSt6vectorIiSaIiEE.exit

.body.i:                                          ; preds = %_ZN5arrow6ResultINS_8internal13SignalHandlerEED2Ev.exit52.i, %bb.aw, %.body.i.i.i, %bb.q, %bb.p, %bb.k
  %.pn33.pn.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.t, %bb.p ], [ %i.u, %bb.q ], [ %i.o, %bb.k ], [ %.pn33.i, %_ZN5arrow6ResultINS_8internal13SignalHandlerEED2Ev.exit52.i ], [ %i.cx, %bb.aw ]
  %i.ec = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #27 ; 0 uses
  br label %common.resume

_ZN5arrow12_GLOBAL__N_115SignalStopState16RegisterHandlersERKSt6vectorIiSaIiEE.exit: ; preds = %_ZN5arrow6ResultINS_8internal13SignalHandlerEED2Ev.exit.i, %bb.j, %_ZN5arrow6ResultISt10shared_ptrINS_8internal8SelfPipeEEED2Ev.exit.i, %.critedge.i
  %i.ed = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #27 ; 0 uses
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN5arrow12_GLOBAL__N_115SignalStopState16RegisterHandlersERKSt6vectorIiSaIiEE.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow33UnregisterCancellingSignalHandlerEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5arrow12_GLOBAL__N_115SignalStopState8instanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5arrow12_GLOBAL__N_115SignalStopState8instanceEv.exit, !prof !57

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow12_GLOBAL__N_115SignalStopState8instanceEvE8instance) #27
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5arrow12_GLOBAL__N_115SignalStopState8instanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZZN5arrow12_GLOBAL__N_115SignalStopState8instanceEvENKUlvE_clEv()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt12__shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr nonnull @_ZZN5arrow12_GLOBAL__N_115SignalStopState8instanceEvE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow12_GLOBAL__N_115SignalStopState8instanceEvE8instance) #27
  br label %_ZN5arrow12_GLOBAL__N_115SignalStopState8instanceEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5arrow12_GLOBAL__N_115SignalStopState8instanceEvE8instance) #27
  resume { ptr, i32 } %i.e

_ZN5arrow12_GLOBAL__N_115SignalStopState8instanceEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  %_ZZN5arrow12_GLOBAL__N_115SignalStopState8instanceEvE8instance.val.i = load ptr, ptr @_ZZN5arrow12_GLOBAL__N_115SignalStopState8instanceEvE8instance, align 8, !tbaa !58
  tail call fastcc void @_ZN5arrow12_GLOBAL__N_115SignalStopState18UnregisterHandlersEv(ptr noundef nonnull align 8 dereferenceable(144) %_ZZN5arrow12_GLOBAL__N_115SignalStopState8instanceEvE8instance.val.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_115SignalStopState18UnregisterHandlersEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.arrow::Status", align 8     ; 12 uses
  %2 = alloca %"class.arrow::Result.64", align 8  ; 11 uses
  %3 = alloca %"class.arrow::util::ArrowLog", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #27 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #28
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  store atomic ptr null, ptr %i.c seq_cst, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !107  ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !103  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !105  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.j = icmp eq ptr %i.e, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.e to i64
  %i.n = sub i64 %i.l, %i.m
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.n) #29
  br label %_ZNSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EED2Ev.exit

_ZNSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EED2Ev.exit: ; preds = %._crit_edge, %bb.c
  %i.o = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #27 ; 0 uses
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZN5arrow6StatusD2Ev.exit
  %.sroa.051.059 = phi ptr [ %i.e, %.lr.ph ], [ %i.ao, %_ZN5arrow6StatusD2Ev.exit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.051.059) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.p = load i32, ptr %.sroa.051.059, align 8, !tbaa !118
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.051.059, i64 8
  invoke void @_ZN5arrow8internal16SetSignalHandlerEiRKNS0_13SignalHandlerE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.64") align 8 %2, i32 noundef %i.p, ptr noundef nonnull align 8 dereferenceable(152) %i.q)
          to label %bb.e unwind label %bb.u

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.r = load ptr, ptr %2, align 8, !tbaa !29
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.critedge31.thread, label %bb.f, !prof !32

.critedge31.thread:                               ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %_ZN5arrow6StatusD2Ev.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5arrow8internal19UninitializedResultEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %1)
          to label %bb.g unwind label %bb.v

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %2, align 8, !tbaa !29, !noalias !132 ; 3 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !29, !alias.scope !132 ; 3 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !29, !noalias !132
  store ptr %i.t, ptr %1, align 8, !tbaa !29, !alias.scope !132
  %.not.i.i40 = icmp eq ptr %i.u, null
  br i1 %.not.i.i40, label %_ZN5arrow6ResultINS_8internal13SignalHandlerEED2Ev.exit, label %bb.h, !prof !133

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !33, !range !44, !noundef !45
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZN5arrow6ResultINS_8internal13SignalHandlerEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(160) %2) #27
  %.pr.pre = load ptr, ptr %1, align 8, !tbaa !29
  br label %_ZN5arrow6ResultINS_8internal13SignalHandlerEED2Ev.exit

_ZN5arrow6ResultINS_8internal13SignalHandlerEED2Ev.exit: ; preds = %bb.h, %bb.i, %bb.g
  %i.y = phi ptr [ %i.t, %bb.g ], [ %.pr.pre, %bb.i ], [ %i.t, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZN5arrow6StatusD2Ev.exit, label %bb.j, !prof !133

bb.j:                                             ; preds = %_ZN5arrow6ResultINS_8internal13SignalHandlerEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef nonnull @.str.9, i32 noundef 172, i32 noundef 3)
          to label %bb.k unwind label %bb.y

bb.k:                                             ; preds = %bb.j
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA24_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(24) @.str.10)
          to label %bb.l unwind label %bb.z

bb.l:                                             ; preds = %bb.k
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA19_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 1 dereferenceable(19) @.str.11)
          to label %bb.m unwind label %bb.z

bb.m:                                             ; preds = %bb.l
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA38_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 1 dereferenceable(38) @.str.12)
          to label %bb.n unwind label %bb.z

bb.n:                                             ; preds = %bb.m
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA2_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 1 dereferenceable(2) @.str.13)
          to label %bb.o unwind label %bb.z

bb.o:                                             ; preds = %bb.n
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA11_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 1 dereferenceable(11) @.str.14)
          to label %bb.p unwind label %bb.z

bb.p:                                             ; preds = %bb.o
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA3_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 1 dereferenceable(3) @.str.15)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.r unwind label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.critedge unwind label %bb.ab ; 0 uses

.critedge:                                        ; preds = %bb.r
  %i.ah = load ptr, ptr %4, align 8, !tbaa !69    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.k
  br i1 %i.ai, label %.critedge31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.aj = load i64, ptr %i.k, align 8, !tbaa !25
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #29
  br label %.critedge31

.critedge31:                                      ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.pr57.pre = load ptr, ptr %1, align 8, !tbaa !29 ; 2 uses
  %.not.i = icmp eq ptr %.pr57.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.s, !prof !133

bb.s:                                             ; preds = %.critedge31
  %i.al = getelementptr inbounds nuw i8, ptr %.pr57.pre, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !33, !range !44, !noundef !45
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_ZN5arrow6StatusD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #27
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultINS_8internal13SignalHandlerEED2Ev.exit, %.critedge31.thread, %.critedge31, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.051.059, i64 160 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.g
  br i1 %i.ap, label %._crit_edge, label %bb.d

bb.u:                                             ; preds = %bb.d
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6ResultINS_8internal13SignalHandlerEED2Ev.exit42

bb.v:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.as = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.as, null
  br i1 %.not.i.i41, label %_ZN5arrow6ResultINS_8internal13SignalHandlerEED2Ev.exit42, label %bb.w, !prof !32

bb.w:                                             ; preds = %bb.v
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !33, !range !44, !noundef !45
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %_ZN5arrow6ResultINS_8internal13SignalHandlerEED2Ev.exit42, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(160) %2) #27
  br label %_ZN5arrow6ResultINS_8internal13SignalHandlerEED2Ev.exit42

_ZN5arrow6ResultINS_8internal13SignalHandlerEED2Ev.exit42: ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.u ], [ %i.ar, %bb.v ], [ %i.ar, %bb.w ], [ %i.ar, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %_ZN5arrow6StatusD2Ev.exit47

bb.y:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.z:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.aa:                                            ; preds = %bb.q
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.ab:                                            ; preds = %bb.r
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %4, align 8, !tbaa !69    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.k
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.ab
  %i.bc = load i64, ptr %i.k, align 8, !tbaa !25
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.aa
  %.pn24 = phi { ptr, i32 } [ %i.ay, %bb.aa ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %i.az, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %.pn24.pn = phi { ptr, i32 } [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %i.ax, %bb.z ]
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %3) #27
  br label %bb.ad

bb.ad:                                            ; preds = %bb.y, %bb.ac
  %.pn24.pn.pn = phi { ptr, i32 } [ %.pn24.pn, %bb.ac ], [ %i.aw, %bb.y ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.be = load ptr, ptr %1, align 8, !tbaa !29    ; 2 uses
  %.not.i46 = icmp eq ptr %i.be, null
  br i1 %.not.i46, label %_ZN5arrow6StatusD2Ev.exit47, label %bb.ae, !prof !32

bb.ae:                                            ; preds = %bb.ad
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !33, !range !44, !noundef !45
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %_ZN5arrow6StatusD2Ev.exit47, label %bb.af

bb.af:                                            ; preds = %bb.ae
end_hunk_1
begin_hunk_2_@_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12_GLOBAL__N_115SignalStopStateESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:bb.a
  %i.bf = load ptr, ptr %1, align 8, !tbaa !29
  %i.bg = icmp eq ptr %i.bf, null
  %i.bh = load ptr, ptr %i.ao, align 8, !tbaa !87 ; 2 uses
  br i1 %i.bg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bh)
          to label %bb.z unwind label %bb.bc

bb.y:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i
  invoke void @_ZNSt6thread6detachEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bh)
          to label %bb.z unwind label %bb.bc

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bi = load ptr, ptr %1, align 8, !tbaa !29    ; 2 uses
  %.not.i6.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i6.i.i.i, label %_ZN5arrow6StatusD2Ev.exit7.i.i.i, label %bb.aa, !prof !32

bb.aa:                                            ; preds = %bb.z
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !33, !range !44, !noundef !45
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %_ZN5arrow6StatusD2Ev.exit7.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #27
  br label %_ZN5arrow6StatusD2Ev.exit7.i.i.i

_ZN5arrow6StatusD2Ev.exit7.i.i.i:                 ; preds = %bb.ab, %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit7.i.i.i, %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !18 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8internal8SelfPipeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.bo, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !15
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #27, !inline_history !167
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #27, !inline_history !167
  br label %_ZNSt12__shared_ptrIN5arrow8internal8SelfPipeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i8.i.i.i.a = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i8.i.i.i.a, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ca = add nsw i32 %i.br, -1
  store i32 %i.ca, ptr %i.bo, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.cb = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.br, %bb.ag ], [ %i.cb, %bb.ah ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.cc, label %bb.ai, label %_ZNSt12__shared_ptrIN5arrow8internal8SelfPipeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !26

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #27
  br label %_ZNSt12__shared_ptrIN5arrow8internal8SelfPipeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN5arrow8internal8SelfPipeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ae, %bb.ac
  %i.cd = load ptr, ptr %i.c, align 8, !tbaa !18  ; 8 uses
  %.not.i.i9.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i9.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8internal8SelfPipeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 4 uses
  %i.cf = load atomic i64, ptr %i.ce acquire, align 8 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 4294967297
  %i.ch = trunc i64 %i.cf to i32                  ; 2 uses
  br i1 %i.cg, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.ce, align 8, !tbaa !13
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i32 0, ptr %i.ci, align 4, !tbaa !15
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #27, !inline_history !168
  %i.cm = load ptr, ptr %i.cd, align 8, !tbaa !16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #27, !inline_history !168
  br label %_ZNSt12__shared_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.cp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i10.i.i.i = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i10.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cq = add nsw i32 %i.ch, -1
  store i32 %i.cq, ptr %i.ce, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i11.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.cr = atomicrmw volatile add ptr %i.ce, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i11.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i11.i.i.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i12.i.i.i = phi i32 [ %i.ch, %bb.am ], [ %i.cr, %bb.an ]
  %i.cs = icmp eq i32 %.0.i.i.i.i12.i.i.i, 1
  br i1 %i.cs, label %bb.ao, label %_ZNSt12__shared_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !26

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i11.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #27
  br label %_ZNSt12__shared_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i11.i.i.i, %bb.ak, %_ZNSt12__shared_ptrIN5arrow8internal8SelfPipeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.ct = load ptr, ptr %i.ao, align 8, !tbaa !87 ; 3 uses
  %.not.i13.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i13.i.i.i, label %_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EED2Ev.exit.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ct, align 8, !tbaa !100
  %.not.i.i.i14.i.i.i.a = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i14.i.i.i.a, label %_ZNKSt14default_deleteISt6threadEclEPS0_.exit.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZSt9terminatev() #30
  unreachable

_ZNKSt14default_deleteISt6threadEclEPS0_.exit.i.i.i.i: ; preds = %bb.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef 8) #29
  br label %_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteISt6threadEclEPS0_.exit.i.i.i.i, %_ZNSt12__shared_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.cu = load ptr, ptr %i.w, align 8, !tbaa !18  ; 8 uses
  %.not.i.i15.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i15.i.i.i, label %_ZNSt12__shared_ptrIN5arrow10StopSourceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EED2Ev.exit.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 4 uses
  %i.cw = load atomic i64, ptr %i.cv acquire, align 8 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 4294967297
  %i.cy = trunc i64 %i.cw to i32                  ; 2 uses
  br i1 %i.cx, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.cv, align 8, !tbaa !13
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  store i32 0, ptr %i.cz, align 4, !tbaa !15
  %i.da = load ptr, ptr %i.cu, align 8, !tbaa !16
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #27, !inline_history !169
  %i.dd = load ptr, ptr %i.cu, align 8, !tbaa !16
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #27, !inline_history !169
  br label %_ZNSt12__shared_ptrIN5arrow10StopSourceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.dg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i16.i.i.i = icmp eq i8 %i.dg, 0
  br i1 %.not.i.i.i16.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dh = add nsw i32 %i.cy, -1
  store i32 %i.dh, ptr %i.cv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.di = atomicrmw volatile add ptr %i.cv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17.i.i.i: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i18.i.i.i = phi i32 [ %i.cy, %bb.au ], [ %i.di, %bb.av ]
  %i.dj = icmp eq i32 %.0.i.i.i.i18.i.i.i, 1
  br i1 %i.dj, label %bb.aw, label %_ZNSt12__shared_ptrIN5arrow10StopSourceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !26

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #27
  br label %_ZNSt12__shared_ptrIN5arrow10StopSourceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN5arrow10StopSourceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.aw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17.i.i.i, %bb.as, %_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EED2Ev.exit.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i.i.i.a = load ptr, ptr %i.dk, align 8, !tbaa !107 ; 3 uses
  %.not.i.i.i19.i.i.i = icmp eq ptr %.val.i.i.i.a, null
  br i1 %.not.i.i.i19.i.i.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EED2Ev.exit.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow10StopSourceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val1.i.i.i = load ptr, ptr %i.dl, align 8, !tbaa !105
  %i.dm = ptrtoint ptr %.val1.i.i.i to i64
  %i.dn = ptrtoint ptr %.val.i.i.i.a to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.a, i64 noundef %i.do) #29
  br label %_ZNSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EED2Ev.exit.i.i.i

_ZNSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EED2Ev.exit.i.i.i: ; preds = %bb.ax, %_ZNSt12__shared_ptrIN5arrow10StopSourceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i.i = load ptr, ptr %i.dp, align 8, !tbaa !144 ; 4 uses
  %.not.i.i.i20.i.i.i = icmp eq ptr %.val2.i.i.i, null
  br i1 %.not.i.i.i20.i.i.i, label %_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow12_GLOBAL__N_115SignalStopStateEEEvRS0_PT_.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EED2Ev.exit.i.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 12 ; 3 uses
  %i.dr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i21.i.i.i = icmp eq i8 %i.dr, 0
  br i1 %.not.i.i.i.i21.i.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ds = load i32, ptr %i.dq, align 4, !tbaa !3  ; 2 uses
  %i.dt = add nsw i32 %i.ds, -1
  store i32 %i.dt, ptr %i.dq, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i22.i.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.du = atomicrmw volatile add ptr %i.dq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i22.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i22.i.i.i: ; preds = %bb.ba, %bb.az
  %.0.i.i.i.i.i23.i.i.i = phi i32 [ %i.ds, %bb.az ], [ %i.du, %bb.ba ]
  %i.dv = icmp eq i32 %.0.i.i.i.i.i23.i.i.i, 1
  br i1 %i.dv, label %bb.bb, label %_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow12_GLOBAL__N_115SignalStopStateEEEvRS0_PT_.exit

bb.bb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i22.i.i.i
  %i.dw = load ptr, ptr %.val2.i.i.i, align 8, !tbaa !16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %.val2.i.i.i) #27, !inline_history !170
  br label %_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow12_GLOBAL__N_115SignalStopStateEEEvRS0_PT_.exit

bb.bc:                                            ; preds = %bb.y, %bb.x, %bb.t, %bb.s, %bb.r, %bb.q, %bb.i, %_ZNSt12__shared_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i
  %i.dz = landingpad { ptr, i32 }
          catch ptr null
  %i.ea = extractvalue { ptr, i32 } %i.dz, 0
  call void @__clang_call_terminate(ptr %i.ea) #30
  unreachable

_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow12_GLOBAL__N_115SignalStopStateEEEvRS0_PT_.exit: ; preds = %bb.bb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i22.i.i.i, %_ZNSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EED2Ev.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12_GLOBAL__N_115SignalStopStateESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12_GLOBAL__N_115SignalStopStateESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12_GLOBAL__N_115SignalStopStateESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(160) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !171  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !25
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #27
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
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

declare void @_ZNK5arrow6Status4WarnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !173
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.4) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #28
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !26

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !69
  store i64 %i.c, ptr %i.a, align 8, !tbaa !25
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !25
  store i8 %i.j, ptr %i.i, align 1, !tbaa !25
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !174
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !25
  ret void
}

declare void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

declare void @_ZNSt6thread6detachEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #16

declare void @_ZN5arrow8internal14RegisterAtForkESt8weak_ptrINS0_13AtForkHandlerEE(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal13AtForkHandlerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !156  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_ZNSt17_Function_handlerIFSt3anyvEZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation:bb.a

_ZZN5arrow12_GLOBAL__N_115SignalStopState4InitEvENUlvE_D2Ev.exit.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val9.i, i64 noundef 16) #29
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit: ; preds = %bb.a, %_ZZN5arrow12_GLOBAL__N_115SignalStopState4InitEvENUlvE_D2Ev.exit.i.i, %bb.h, %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlvE_E15_M_init_functorIRKS4_EEvRSt9_Any_dataOT_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt3any17_Manager_externalISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 7 uses
  switch i32 %0, label %bb.q [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.h
    i32 4, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %2, align 8, !tbaa !25
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  store ptr @_ZTISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEE, ptr %2, align 8, !tbaa !25
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26 ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val14 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  %i.e = load <2 x ptr>, ptr %i.b, align 8, !tbaa !46
  store <2 x ptr> %i.e, ptr %i.c, align 8, !tbaa !46
  %.not.i.i.i = icmp eq ptr %.val14, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEC2ERKS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.val14, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEC2ERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEC2ERKS3_.exit

_ZNSt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEC2ERKS3_.exit: ; preds = %bb.d, %bb.f, %bb.g
  %i.k = load ptr, ptr %2, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.c, ptr %i.l, align 8, !tbaa !25
  %i.m = load ptr, ptr %1, align 8, !tbaa !190
  %i.n = load ptr, ptr %2, align 8, !tbaa !25
  store ptr %i.m, ptr %i.n, align 8, !tbaa !190
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  %i.o = icmp eq ptr %i.b, null
  br i1 %i.o, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !18   ; 8 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.r, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !15
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #27, !inline_history !195
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #27, !inline_history !195
  br label %_ZNSt12__shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i15 = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i15, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.u, %bb.m ], [ %i.ae, %bb.n ]
  %i.af = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.af, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !26

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #27
  br label %_ZNSt12__shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 16) #29
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %2, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.b, ptr %i.ah, align 8, !tbaa !25
  %i.ai = load ptr, ptr %1, align 8, !tbaa !190
  %i.aj = load ptr, ptr %2, align 8, !tbaa !25
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !190
  store ptr null, ptr %1, align 8, !tbaa !190
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %_ZNSt12__shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.p, %_ZNSt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEC2ERKS3_.exit, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvSt3anyEZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlS0_E_E9_M_invokeERKSt9_Any_dataOS0_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"union.std::any::_Arg", align 8    ; 4 uses
  %3 = alloca %"union.std::any::_Arg", align 8    ; 4 uses
  %4 = alloca %"class.std::any", align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !25
  %i.b = load ptr, ptr %1, align 8, !tbaa !190    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %.thread.i.i, label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  store ptr null, ptr %4, align 8, !tbaa !190
  br label %_ZNKSt3any4typeEv.exit.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %4, ptr %3, align 8, !tbaa !25
  invoke void %i.b(i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3)
          to label %_ZNSt3anyC2EOS_.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  call void @__clang_call_terminate(ptr %i.d) #30
  unreachable

_ZNSt3anyC2EOS_.exit.i.i:                         ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.pr.i.i = load ptr, ptr %4, align 8, !tbaa !190, !noalias !196 ; 3 uses
  %i.e = icmp eq ptr %.pr.i.i, @_ZNSt3any17_Manager_externalISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE
  br i1 %i.e, label %_ZSt8any_castISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEEPT_PSt3any.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt3anyC2EOS_.exit.i.i
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt3any4typeEv.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27, !noalias !196
  invoke void %.pr.i.i(i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %2)
          to label %bb.f unwind label %bb.g, !noalias !196

bb.f:                                             ; preds = %bb.e
  %i.f = load ptr, ptr %2, align 8, !tbaa !25, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !196
  br label %_ZNKSt3any4typeEv.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #30, !noalias !196
  unreachable

_ZNKSt3any4typeEv.exit.i.i.i.i.i.i:               ; preds = %bb.f, %bb.d, %.thread.i.i
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.f, %bb.f ], [ @_ZTIv, %bb.d ], [ @_ZTIv, %.thread.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i.i.i.i.i.i) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !171, !noalias !196 ; 3 uses
  %i.k = icmp eq ptr %i.j, @_ZTSSt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEE
  br i1 %i.k, label %_ZSt8any_castISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEEPT_PSt3any.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt3any4typeEv.exit.i.i.i.i.i.i
  %i.l = load i8, ptr %i.j, align 1, !tbaa !25, !noalias !196
  %.not.i4.i.i.i.i.i.i = icmp eq i8 %i.l, 42
  br i1 %.not.i4.i.i.i.i.i.i, label %_ZSt8any_castISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEEPT_PSt3any.exit.thread.i.i.i.i, label %_ZNKSt9type_infoeqERKS_.exit.i.i.i.i.i.i

_ZNKSt9type_infoeqERKS_.exit.i.i.i.i.i.i:         ; preds = %bb.h
  %i.m = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(56) @_ZTSSt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEE) #27, !noalias !196
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZSt8any_castISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEEPT_PSt3any.exit.i.i.i.i, label %_ZSt8any_castISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEEPT_PSt3any.exit.thread.i.i.i.i

_ZSt8any_castISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEEPT_PSt3any.exit.i.i.i.i: ; preds = %_ZNKSt9type_infoeqERKS_.exit.i.i.i.i.i.i, %_ZNKSt3any4typeEv.exit.i.i.i.i.i.i, %_ZNSt3anyC2EOS_.exit.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !25, !noalias !196 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZSt8any_castISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEEPT_PSt3any.exit.thread.i.i.i.i, label %bb.i

_ZSt8any_castISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEEPT_PSt3any.exit.thread.i.i.i.i: ; preds = %_ZSt8any_castISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEEPT_PSt3any.exit.i.i.i.i, %_ZNKSt9type_infoeqERKS_.exit.i.i.i.i.i.i, %bb.h
  invoke void @_ZSt20__throw_bad_any_castv() #28
          to label %.noexc.i.i unwind label %bb.r

.noexc.i.i:                                       ; preds = %_ZSt8any_castISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEEPT_PSt3any.exit.thread.i.i.i.i
  unreachable

bb.i:                                             ; preds = %_ZSt8any_castISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEEPT_PSt3any.exit.i.i.i.i
  %i.o = load ptr, ptr %.val.i.i.i.i.i.i, align 8, !tbaa !58, !noalias !196
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !18, !noalias !196 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i.i.i.i, i8 0, i64 16, i1 false)
  %i.s = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.r) #27 ; 0 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_115SignalStopState4InitEvENKUlSt3anyE_clES2_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.t, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !15
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #27, !inline_history !199
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #27, !inline_history !199
  br label %_ZZN5arrow12_GLOBAL__N_115SignalStopState4InitEvENKUlSt3anyE_clES2_.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i1.i.i.i = phi i32 [ %i.w, %bb.m ], [ %i.ag, %bb.n ]
  %i.ah = icmp eq i32 %.0.i.i.i.i1.i.i.i, 1
  br i1 %i.ah, label %bb.o, label %_ZZN5arrow12_GLOBAL__N_115SignalStopState4InitEvENKUlSt3anyE_clES2_.exit.i.i, !prof !26

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #27
  br label %_ZZN5arrow12_GLOBAL__N_115SignalStopState4InitEvENKUlSt3anyE_clES2_.exit.i.i

_ZZN5arrow12_GLOBAL__N_115SignalStopState4InitEvENKUlSt3anyE_clES2_.exit.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.k, %bb.i
  %i.ai = load ptr, ptr %4, align 8, !tbaa !190   ; 2 uses
  %.not.i.i3.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i3.i.i, label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlSt3anyE_JS3_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit, label %bb.p

bb.p:                                             ; preds = %_ZZN5arrow12_GLOBAL__N_115SignalStopState4InitEvENKUlSt3anyE_clES2_.exit.i.i
  invoke void %i.ai(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef null)
          to label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlSt3anyE_JS3_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #30
  unreachable

bb.r:                                             ; preds = %_ZSt8any_castISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEEPT_PSt3any.exit.thread.i.i.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %4, align 8, !tbaa !190   ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i4.i.i, label %_ZNSt3anyD2Ev.exit5.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void %i.am(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef null)
          to label %_ZNSt3anyD2Ev.exit5.i.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #30
  unreachable

_ZNSt3anyD2Ev.exit5.i.i:                          ; preds = %bb.s, %bb.r
  resume { ptr, i32 } %i.al

_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlSt3anyE_JS3_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit: ; preds = %_ZZN5arrow12_GLOBAL__N_115SignalStopState4InitEvENKUlSt3anyE_clES2_.exit.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvSt3anyEZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlS0_E_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlSt3anyE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlSt3anyE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlSt3anyE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlSt3anyE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlSt3anyE_, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !46
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlSt3anyE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlSt3anyE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlSt3anyE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZSt20__throw_bad_any_castv() local_unnamed_addr #19 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_any_cast, i64 16), ptr %i.a, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12bad_any_cast, ptr nonnull @_ZNSt8bad_castD2Ev) #28
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #20

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12bad_any_castD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #21 comdat align 2 {
bb.a:
  tail call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNKSt12bad_any_cast4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr @.str.6
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvSt3anyEZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlS0_E0_E9_M_invokeERKSt9_Any_dataOS0_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"union.std::any::_Arg", align 8    ; 4 uses
  %3 = alloca %"class.std::shared_ptr.26", align 8 ; 7 uses
  %4 = alloca %"union.std::any::_Arg", align 8    ; 4 uses
  %5 = alloca %"class.std::any", align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !25
  %i.b = load ptr, ptr %1, align 8, !tbaa !190    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %.thread.i.i, label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  store ptr null, ptr %5, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  br label %_ZNKSt3any4typeEv.exit.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %5, ptr %4, align 8, !tbaa !25
  invoke void %i.b(i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %4)
          to label %_ZNSt3anyC2EOS_.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  call void @__clang_call_terminate(ptr %i.d) #30
  unreachable

_ZNSt3anyC2EOS_.exit.i.i:                         ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %.pr.i.i = load ptr, ptr %5, align 8, !tbaa !190, !noalias !200 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.e = icmp eq ptr %.pr.i.i, @_ZNSt3any17_Manager_externalISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE
  br i1 %i.e, label %_ZSt8any_castISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEEPT_PSt3any.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt3anyC2EOS_.exit.i.i
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt3any4typeEv.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27, !noalias !200
  invoke void %.pr.i.i(i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %2)
          to label %bb.f unwind label %bb.g, !noalias !200

bb.f:                                             ; preds = %bb.e
  %i.f = load ptr, ptr %2, align 8, !tbaa !25, !noalias !200
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !200
  br label %_ZNKSt3any4typeEv.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #30, !noalias !200
  unreachable

_ZNKSt3any4typeEv.exit.i.i.i.i.i.i:               ; preds = %bb.f, %bb.d, %.thread.i.i
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.f, %bb.f ], [ @_ZTIv, %bb.d ], [ @_ZTIv, %.thread.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i.i.i.i.i.i) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !171, !noalias !200 ; 3 uses
  %i.k = icmp eq ptr %i.j, @_ZTSSt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEE
  br i1 %i.k, label %_ZSt8any_castISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEEPT_PSt3any.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt3any4typeEv.exit.i.i.i.i.i.i
  %i.l = load i8, ptr %i.j, align 1, !tbaa !25, !noalias !200
  %.not.i4.i.i.i.i.i.i = icmp eq i8 %i.l, 42
  br i1 %.not.i4.i.i.i.i.i.i, label %_ZSt8any_castISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEEPT_PSt3any.exit.thread.i.i.i.i, label %_ZNKSt9type_infoeqERKS_.exit.i.i.i.i.i.i

_ZNKSt9type_infoeqERKS_.exit.i.i.i.i.i.i:         ; preds = %bb.h
  %i.m = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(56) @_ZTSSt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEE) #27, !noalias !200
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZSt8any_castISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEEPT_PSt3any.exit.i.i.i.i, label %_ZSt8any_castISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEEPT_PSt3any.exit.thread.i.i.i.i

_ZSt8any_castISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEEPT_PSt3any.exit.i.i.i.i: ; preds = %_ZNKSt9type_infoeqERKS_.exit.i.i.i.i.i.i, %_ZNKSt3any4typeEv.exit.i.i.i.i.i.i, %_ZNSt3anyC2EOS_.exit.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !25, !noalias !200 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZSt8any_castISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEEPT_PSt3any.exit.thread.i.i.i.i, label %_ZSt8any_castISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEET_OSt3any.exit.i.i.i

_ZSt8any_castISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEEPT_PSt3any.exit.thread.i.i.i.i: ; preds = %_ZSt8any_castISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEEPT_PSt3any.exit.i.i.i.i, %_ZNKSt9type_infoeqERKS_.exit.i.i.i.i.i.i, %bb.h
  invoke void @_ZSt20__throw_bad_any_castv() #28
          to label %.noexc.i.i unwind label %bb.s

.noexc.i.i:                                       ; preds = %_ZSt8any_castISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEEPT_PSt3any.exit.thread.i.i.i.i
  unreachable

_ZSt8any_castISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEET_OSt3any.exit.i.i.i: ; preds = %_ZSt8any_castISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEEPT_PSt3any.exit.i.i.i.i
  %i.o = load ptr, ptr %.val.i.i.i.i.i.i, align 8, !tbaa !58, !noalias !200 ; 4 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !58, !alias.scope !200
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !18, !noalias !200 ; 9 uses
  store ptr null, ptr %i.q, align 8, !tbaa !18, !noalias !200
  store ptr %i.r, ptr %i.p, align 8, !tbaa !18, !alias.scope !200
  store ptr null, ptr %.val.i.i.i.i.i.i, align 8, !tbaa !58, !noalias !200
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, i8 0, i64 40, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  store ptr null, ptr %i.t, align 8, !tbaa !87
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_115SignalStopState18UnregisterHandlersEv(ptr noundef nonnull align 8 dereferenceable(144) %i.o)
          to label %_ZN5arrow12_GLOBAL__N_115SignalStopState14ChildAfterForkEv.exit.i.i.i unwind label %bb.o

_ZN5arrow12_GLOBAL__N_115SignalStopState14ChildAfterForkEv.exit.i.i.i: ; preds = %_ZSt8any_castISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEET_OSt3any.exit.i.i.i
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow12_GLOBAL__N_115SignalStopState14ChildAfterForkEv.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.u, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !15
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #27, !inline_history !203
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #27, !inline_history !203
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i1.i.i.i = phi i32 [ %i.x, %bb.l ], [ %i.ah, %bb.m ]
  %i.ai = icmp eq i32 %.0.i.i.i.i1.i.i.i, 1
  br i1 %i.ai, label %bb.n, label %bb.p, !prof !26

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #27
  br label %bb.p

bb.o:                                             ; preds = %_ZSt8any_castISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEET_OSt3any.exit.i.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.body.i.i

bb.p:                                             ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.j, %_ZN5arrow12_GLOBAL__N_115SignalStopState14ChildAfterForkEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.ak = load ptr, ptr %5, align 8, !tbaa !190   ; 2 uses
  %.not.i.i3.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i3.i.i, label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlSt3anyE0_JS3_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void %i.ak(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef null)
          to label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlSt3anyE0_JS3_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #30
  unreachable

bb.s:                                             ; preds = %_ZSt8any_castISt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEEEPT_PSt3any.exit.thread.i.i.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.s, %bb.o
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.an, %bb.s ], [ %i.aj, %bb.o ]
  %i.ao = load ptr, ptr %5, align 8, !tbaa !190   ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i4.i.i, label %_ZNSt3anyD2Ev.exit5.i.i, label %bb.t

bb.t:                                             ; preds = %.body.i.i
  invoke void %i.ao(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef null)
          to label %_ZNSt3anyD2Ev.exit5.i.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #30
  unreachable

_ZNSt3anyD2Ev.exit5.i.i:                          ; preds = %bb.t, %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlSt3anyE0_JS3_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvSt3anyEZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlS0_E0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlSt3anyE0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlSt3anyE0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlSt3anyE0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlSt3anyE0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlSt3anyE0_, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !46
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlSt3anyE0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlSt3anyE0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlSt3anyE0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: nounwind
declare void @_ZNSt12bad_weak_ptrD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow10StopSourceESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow10StopSourceESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow10StopSourceEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5arrow10StopSourceD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow10StopSourceESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow10StopSourceESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow10StopSourceESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !171  ; 3 uses
end_hunk_3
