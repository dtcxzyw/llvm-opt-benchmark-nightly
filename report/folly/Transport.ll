Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Transport?download=true
inline.NumInlined: 1862
inline.NumDeleted: 905
begin_hunk_0
@_ZTVN5folly4coro9TransportE = constant { [18 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN5folly4coro9TransportE, ptr @_ZN5folly4coro9TransportD2Ev, ptr @_ZN5folly4coro9TransportD0Ev, ptr @_ZN5folly4coro9Transport12getEventBaseEv, ptr @_ZN5folly4coro9Transport4readENS_5RangeIPhEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE, ptr @_ZN5folly4coro9Transport4readERNS_10IOBufQueueEmmNSt6chrono8durationIlSt5ratioILl1ELl1000EEEE, ptr @_ZN5folly4coro9Transport5writeENS_5RangeIPKhEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS_10WriteFlagsEPNS0_11TransportIf9WriteInfoE, ptr @_ZN5folly4coro9Transport5writeERNS_10IOBufQueueENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS_10WriteFlagsEPNS0_11TransportIf9WriteInfoE, ptr @_ZNK5folly4coro9Transport15getLocalAddressEv, ptr @_ZNK5folly4coro9Transport14getPeerAddressEv, ptr @_ZN5folly4coro9Transport5closeEv, ptr @_ZN5folly4coro9Transport13shutdownWriteEv, ptr @_ZN5folly4coro9Transport14closeWithResetEv, ptr @_ZNK5folly4coro9Transport12getTransportEv, ptr @_ZNK5folly4coro9Transport18getPeerCertificateEv, ptr @_ZN5folly4coro11TransportIf15detachEventBaseEv, ptr @_ZN5folly4coro11TransportIf15attachEventBaseEPNS_9EventBaseE] }, align 8
@_ZTIN5folly4coro9TransportE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly4coro9TransportE, ptr @_ZTIN5folly4coro11TransportIfE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5folly4coro9TransportE = constant [24 x i8] c"N5folly4coro9TransportE\00", align 1
@_ZTIN5folly4coro11TransportIfE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5folly4coro11TransportIfE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN5folly4coro11TransportIfE = linkonce_odr constant [27 x i8] c"N5folly4coro11TransportIfE\00", comdat, align 1
@_ZTIN5folly18OperationCancelledE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly18OperationCancelledE, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSN5folly18OperationCancelledE = linkonce_odr constant [29 x i8] c"N5folly18OperationCancelledE\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@.str.6 = private unnamed_addr constant [34 x i8] c"Try does not contain an exception\00", align 1
@_ZTIN5folly12TryExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly12TryExceptionE, ptr @_ZTISt11logic_error }, comdat, align 8
@_ZTSN5folly12TryExceptionE = linkonce_odr constant [23 x i8] c"N5folly12TryExceptionE\00", comdat, align 1
@_ZTISt11logic_error = external constant ptr
@_ZTVN5folly12TryExceptionE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly12TryExceptionE, ptr @_ZNSt11logic_errorD2Ev, ptr @_ZN5folly12TryExceptionD0Ev, ptr @_ZNKSt11logic_error4whatEv] }, comdat, align 8
@_ZTVN5folly4coro15ConnectCallbackE = linkonce_odr constant { [7 x ptr], [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN5folly4coro15ConnectCallbackE, ptr @_ZN5folly4coro15ConnectCallbackD2Ev, ptr @_ZN5folly4coro15ConnectCallbackD0Ev, ptr @_ZN5folly4coro15ConnectCallback6cancelEv, ptr @_ZN5folly4coro15ConnectCallback14connectSuccessEv, ptr @_ZN5folly4coro15ConnectCallback10connectErrERKNS_20AsyncSocketExceptionE], [7 x ptr] [ptr inttoptr (i64 -32 to ptr), ptr @_ZTIN5folly4coro15ConnectCallbackE, ptr @_ZThn32_N5folly4coro15ConnectCallbackD1Ev, ptr @_ZThn32_N5folly4coro15ConnectCallbackD0Ev, ptr @_ZThn32_N5folly4coro15ConnectCallback14connectSuccessEv, ptr @_ZThn32_N5folly4coro15ConnectCallback10connectErrERKNS_20AsyncSocketExceptionE, ptr @_ZN5folly20AsyncSocketTransport15ConnectCallback10preConnectENS_13NetworkSocketE] }, comdat, align 8
@_ZTIN5folly4coro15ConnectCallbackE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN5folly4coro15ConnectCallbackE, i32 0, i32 2, ptr @_ZTIN5folly4coro21TransportCallbackBaseE, i64 2, ptr @_ZTIN5folly20AsyncSocketTransport15ConnectCallbackE, i64 8194 }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN5folly4coro15ConnectCallbackE = linkonce_odr constant [31 x i8] c"N5folly4coro15ConnectCallbackE\00", comdat, align 1
@_ZTIN5folly4coro21TransportCallbackBaseE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5folly4coro21TransportCallbackBaseE }, comdat, align 8
@_ZTSN5folly4coro21TransportCallbackBaseE = linkonce_odr constant [37 x i8] c"N5folly4coro21TransportCallbackBaseE\00", comdat, align 1
@_ZTIN5folly20AsyncSocketTransport15ConnectCallbackE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5folly20AsyncSocketTransport15ConnectCallbackE }, comdat, align 8
@_ZTSN5folly20AsyncSocketTransport15ConnectCallbackE = linkonce_odr constant [48 x i8] c"N5folly20AsyncSocketTransport15ConnectCallbackE\00", comdat, align 1
@_ZTVN5folly4coro21TransportCallbackBaseE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly4coro21TransportCallbackBaseE, ptr @_ZN5folly4coro21TransportCallbackBaseD2Ev, ptr @_ZN5folly4coro21TransportCallbackBaseD0Ev, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTIN5folly20AsyncSocketExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly20AsyncSocketExceptionE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN5folly20AsyncSocketExceptionE = linkonce_odr constant [31 x i8] c"N5folly20AsyncSocketExceptionE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTIN5folly12SSLExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly12SSLExceptionE, ptr @_ZTIN5folly20AsyncSocketExceptionE }, comdat, align 8
@_ZTSN5folly12SSLExceptionE = linkonce_odr constant [23 x i8] c"N5folly12SSLExceptionE\00", comdat, align 1
@_ZZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeINS_12SSLExceptionEJRKS3_EEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrESA_E3arg = linkonce_odr constant %"struct.folly::detail::make_exception_ptr_with_arg_" { i64 40, ptr @_ZTIN5folly12SSLExceptionE, ptr @_ZN5folly6detail28make_exception_ptr_with_arg_4makeIZNKS_26make_exception_ptr_with_fn4makeINS_12SSLExceptionEJRKS5_EEEDaDpOT0_EUlvE_S5_EEvPvSC_, ptr @_ZN5folly6detail28make_exception_ptr_with_arg_5dtor_INS_12SSLExceptionEEEvPv }, comdat, align 8
@_ZTVN5folly12SSLExceptionE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly12SSLExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN5folly12SSLExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZTVN5folly20AsyncSocketExceptionE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly20AsyncSocketExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN5folly20AsyncSocketExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeINS_20AsyncSocketExceptionEJRKS3_EEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrESA_E3arg = linkonce_odr constant %"struct.folly::detail::make_exception_ptr_with_arg_" { i64 24, ptr @_ZTIN5folly20AsyncSocketExceptionE, ptr @_ZN5folly6detail28make_exception_ptr_with_arg_4makeIZNKS_26make_exception_ptr_with_fn4makeINS_20AsyncSocketExceptionEJRKS5_EEEDaDpOT0_EUlvE_S5_EEvPvSC_, ptr @_ZN5folly6detail28make_exception_ptr_with_arg_5dtor_INS_20AsyncSocketExceptionEEEvPv }, comdat, align 8
@_ZZN5folly4coro21TransportCallbackBase4waitEvE8vlocal__ = linkonce_odr global %"struct.google::SiteFlag" zeroinitializer, comdat, align 8
@_ZN3fLI7FLAGS_vE = external global i32, align 4
@.str.14 = private unnamed_addr constant [66 x i8] c"/opt-bench/work/folly/folly/folly/io/coro/TransportCallbackBase.h\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"After baton await\00", align 1
@_ZZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeINS_18OperationCancelledEJEEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrES8_E3arg = linkonce_odr constant %"struct.folly::detail::make_exception_ptr_with_arg_" { i64 8, ptr @_ZTIN5folly18OperationCancelledE, ptr @_ZN5folly6detail28make_exception_ptr_with_arg_4makeIZNKS_26make_exception_ptr_with_fn4makeINS_18OperationCancelledEJEEEDaDpOT0_EUlvE_S5_EEvPvSA_, ptr @_ZN5folly6detail28make_exception_ptr_with_arg_5dtor_INS_18OperationCancelledEEEvPv }, comdat, align 8
@_ZTVN5folly18OperationCancelledE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly18OperationCancelledE, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN5folly18OperationCancelledD0Ev, ptr @_ZNK5folly18OperationCancelled4whatEv] }, comdat, align 8
@.str.16 = private unnamed_addr constant [30 x i8] c"coroutine operation cancelled\00", align 1
@_ZZZN5folly4coro21TransportCallbackBase4waitEvENKUlvE_clEvE8vlocal__ = linkonce_odr global %"struct.google::SiteFlag" zeroinitializer, comdat, align 8
@.str.17 = private unnamed_addr constant [24 x i8] c"Cancellation was called\00", align 1
@_ZTVN5folly4coro6detail12ViaCoroutineILb0EE12promise_typeE = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5folly4coro6detail12ViaCoroutineILb0EE12promise_typeE, ptr @_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev, ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE12promise_typeD0Ev] }, comdat, align 8
@_ZTIN5folly4coro6detail12ViaCoroutineILb0EE12promise_typeE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN5folly4coro6detail12ViaCoroutineILb0EE12promise_typeE, i32 0, i32 2, ptr @_ZTIN5folly4coro6detail23ViaCoroutinePromiseBaseE, i64 2, ptr @_ZTIN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEE, i64 18434 }, comdat, align 8
@_ZTSN5folly4coro6detail12ViaCoroutineILb0EE12promise_typeE = linkonce_odr constant [55 x i8] c"N5folly4coro6detail12ViaCoroutineILb0EE12promise_typeE\00", comdat, align 1
@_ZTIN5folly4coro6detail23ViaCoroutinePromiseBaseE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5folly4coro6detail23ViaCoroutinePromiseBaseE }, comdat, align 8
@_ZTSN5folly4coro6detail23ViaCoroutinePromiseBaseE = linkonce_odr constant [46 x i8] c"N5folly4coro6detail23ViaCoroutinePromiseBaseE\00", comdat, align 1
@_ZTIN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEE, ptr @_ZTIN5folly4coro23ExtendedCoroutineHandle11PromiseBaseE }, comdat, align 8
@_ZTSN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEE = linkonce_odr constant [92 x i8] c"N5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEE\00", comdat, align 1
@_ZTIN5folly4coro23ExtendedCoroutineHandle11PromiseBaseE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5folly4coro23ExtendedCoroutineHandle11PromiseBaseE }, comdat, align 8
@_ZTSN5folly4coro23ExtendedCoroutineHandle11PromiseBaseE = linkonce_odr constant [52 x i8] c"N5folly4coro23ExtendedCoroutineHandle11PromiseBaseE\00", comdat, align 1
@_ZTVN5folly4coro6detail23ViaCoroutinePromiseBaseE = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5folly4coro6detail23ViaCoroutinePromiseBaseE, ptr @_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev, ptr @_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD0Ev] }, comdat, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZZN5folly4coro9Transport4readENS_5RangeIPhEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8vlocal__ = internal global %"struct.google::SiteFlag" zeroinitializer, align 8
@.str.18 = private unnamed_addr constant [56 x i8] c"/opt-bench/work/folly/folly/folly/io/coro/Transport.cpp\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"Transport::read(), expecting max len \00", align 1
@_ZTVN5folly4coro12ReadCallbackE = linkonce_odr constant { [12 x ptr], [15 x ptr], [6 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN5folly4coro12ReadCallbackE, ptr @_ZN5folly4coro12ReadCallbackD2Ev, ptr @_ZN5folly4coro12ReadCallbackD0Ev, ptr @_ZN5folly4coro12ReadCallback6cancelEv, ptr @_ZN5folly4coro12ReadCallback15isBufferMovableEv, ptr @_ZN5folly4coro12ReadCallback19readBufferAvailableESt10unique_ptrINS_5IOBufESt14default_deleteIS3_EE, ptr @_ZN5folly4coro12ReadCallback13getReadBufferEPPvPm, ptr @_ZN5folly4coro12ReadCallback17readDataAvailableEm, ptr @_ZN5folly4coro12ReadCallback7readEOFEv, ptr @_ZN5folly4coro12ReadCallback7readErrERKNS_20AsyncSocketExceptionE, ptr @_ZN5folly4coro12ReadCallback14timeoutExpiredEv], [15 x ptr] [ptr inttoptr (i64 -32 to ptr), ptr @_ZTIN5folly4coro12ReadCallbackE, ptr @_ZThn32_N5folly4coro12ReadCallbackD1Ev, ptr @_ZThn32_N5folly4coro12ReadCallbackD0Ev, ptr @_ZThn32_N5folly4coro12ReadCallback13getReadBufferEPPvPm, ptr @_ZN5folly11AsyncReader12ReadCallback14getReadBuffersERSt6vectorI5iovecSaIS3_EE, ptr @_ZThn32_N5folly4coro12ReadCallback17readDataAvailableEm, ptr @_ZN5folly11AsyncReader12ReadCallback19readZeroCopyEnabledEv, ptr @_ZN5folly11AsyncReader12ReadCallback25getZeroCopyFallbackBufferEPPvPm, ptr @_ZN5folly11AsyncReader12ReadCallback25readZeroCopyDataAvailableEOSt10unique_ptrINS_5IOBufESt14default_deleteIS3_EEm, ptr @_ZThn32_N5folly4coro12ReadCallback15isBufferMovableEv, ptr @_ZNK5folly11AsyncReader12ReadCallback13maxBufferSizeEv, ptr @_ZThn32_N5folly4coro12ReadCallback19readBufferAvailableESt10unique_ptrINS_5IOBufESt14default_deleteIS3_EE, ptr @_ZThn32_N5folly4coro12ReadCallback7readEOFEv, ptr @_ZThn32_N5folly4coro12ReadCallback7readErrERKNS_20AsyncSocketExceptionE], [6 x ptr] [ptr inttoptr (i64 -48 to ptr), ptr @_ZTIN5folly4coro12ReadCallbackE, ptr @_ZThn48_N5folly4coro12ReadCallbackD1Ev, ptr @_ZThn48_N5folly4coro12ReadCallbackD0Ev, ptr @_ZThn48_N5folly4coro12ReadCallback14timeoutExpiredEv, ptr @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback16callbackCanceledEv] }, comdat, align 8
@_ZTIN5folly4coro12ReadCallbackE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN5folly4coro12ReadCallbackE, i32 0, i32 3, ptr @_ZTIN5folly4coro21TransportCallbackBaseE, i64 2, ptr @_ZTIN5folly11AsyncReader12ReadCallbackE, i64 8194, ptr @_ZTIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackE, i64 12290 }, comdat, align 8
@_ZTSN5folly4coro12ReadCallbackE = linkonce_odr constant [28 x i8] c"N5folly4coro12ReadCallbackE\00", comdat, align 1
@_ZTIN5folly11AsyncReader12ReadCallbackE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5folly11AsyncReader12ReadCallbackE }, comdat, align 8
@_ZTSN5folly11AsyncReader12ReadCallbackE = linkonce_odr constant [36 x i8] c"N5folly11AsyncReader12ReadCallbackE\00", comdat, align 1
@_ZTIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackE, i32 0, i32 1, ptr @_ZTIN5boost9intrusive14list_base_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEE, i64 2050 }, comdat, align 8
@_ZTSN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackE = linkonce_odr constant [82 x i8] c"N5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackE\00", comdat, align 1
@_ZTIN5boost9intrusive14list_base_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5boost9intrusive14list_base_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEE, ptr @_ZTIN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EEE }, comdat, align 8
@_ZTSN5boost9intrusive14list_base_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEE = linkonce_odr constant [80 x i8] c"N5boost9intrusive14list_base_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEE\00", comdat, align 1
@_ZTIN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EEE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EEE, i32 0, i32 2, ptr @_ZTIN5boost9intrusive11node_holderINS0_9list_nodeIPvEENS0_7dft_tagELj1EEE, i64 2, ptr @_ZTIN5boost9intrusive17hook_tags_definerINS0_12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EEELj1EEE, i64 2 }, comdat, align 8
@_ZTSN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EEE = linkonce_odr constant [143 x i8] c"N5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EEE\00", comdat, align 1
@_ZTIN5boost9intrusive11node_holderINS0_9list_nodeIPvEENS0_7dft_tagELj1EEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5boost9intrusive11node_holderINS0_9list_nodeIPvEENS0_7dft_tagELj1EEE, ptr @_ZTIN5boost9intrusive9list_nodeIPvEE }, comdat, align 8
@_ZTSN5boost9intrusive11node_holderINS0_9list_nodeIPvEENS0_7dft_tagELj1EEE = linkonce_odr constant [70 x i8] c"N5boost9intrusive11node_holderINS0_9list_nodeIPvEENS0_7dft_tagELj1EEE\00", comdat, align 1
@_ZTIN5boost9intrusive9list_nodeIPvEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5boost9intrusive9list_nodeIPvEE }, comdat, align 8
@_ZTSN5boost9intrusive9list_nodeIPvEE = linkonce_odr constant [33 x i8] c"N5boost9intrusive9list_nodeIPvEE\00", comdat, align 1
@_ZTIN5boost9intrusive17hook_tags_definerINS0_12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EEELj1EEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5boost9intrusive17hook_tags_definerINS0_12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EEELj1EEE }, comdat, align 8
@_ZTSN5boost9intrusive17hook_tags_definerINS0_12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EEELj1EEE = linkonce_odr constant [173 x i8] c"N5boost9intrusive17hook_tags_definerINS0_12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EEELj1EEE\00", comdat, align 1
@_ZTVN5folly11AsyncReader12ReadCallbackE = linkonce_odr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN5folly11AsyncReader12ReadCallbackE, ptr @_ZN5folly11AsyncReader12ReadCallbackD2Ev, ptr @_ZN5folly11AsyncReader12ReadCallbackD0Ev, ptr @__cxa_pure_virtual, ptr @_ZN5folly11AsyncReader12ReadCallback14getReadBuffersERSt6vectorI5iovecSaIS3_EE, ptr @__cxa_pure_virtual, ptr @_ZN5folly11AsyncReader12ReadCallback19readZeroCopyEnabledEv, ptr @_ZN5folly11AsyncReader12ReadCallback25getZeroCopyFallbackBufferEPPvPm, ptr @_ZN5folly11AsyncReader12ReadCallback25readZeroCopyDataAvailableEOSt10unique_ptrINS_5IOBufESt14default_deleteIS3_EEm, ptr @_ZN5folly11AsyncReader12ReadCallback15isBufferMovableEv, ptr @_ZNK5folly11AsyncReader12ReadCallback13maxBufferSizeEv, ptr @_ZN5folly11AsyncReader12ReadCallback19readBufferAvailableESt10unique_ptrINS_5IOBufESt14default_deleteIS3_EE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@.str.20 = private unnamed_addr constant [63 x i8] c"/opt-bench/work/folly/folly/folly/io/coro/TransportCallbacks.h\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"Check failed: readBuf_ \00", align 1
@_ZZN5folly4coro12ReadCallback13getReadBufferEPPvPmE8vlocal__ = linkonce_odr global %"struct.google::SiteFlag" zeroinitializer, comdat, align 8
@.str.22 = private unnamed_addr constant [22 x i8] c"getReadBuffer, size: \00", align 1
@_ZZN5folly4coro12ReadCallback17readDataAvailableEmE8vlocal__ = linkonce_odr global %"struct.google::SiteFlag" zeroinitializer, comdat, align 8
@.str.33 = private unnamed_addr constant [20 x i8] c"readDataAvailable: \00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c" bytes\00", align 1
@_ZZN5folly4coro12ReadCallback7readEOFEvE8vlocal__ = linkonce_odr global %"struct.google::SiteFlag" zeroinitializer, comdat, align 8
@.str.36 = private unnamed_addr constant [10 x i8] c"readEOF()\00", align 1
@_ZZN5folly4coro12ReadCallback7readErrERKNS_20AsyncSocketExceptionEE8vlocal__ = linkonce_odr global %"struct.google::SiteFlag" zeroinitializer, comdat, align 8
@.str.37 = private unnamed_addr constant [10 x i8] c"readErr()\00", align 1
@_ZZN5folly4coro12ReadCallback14timeoutExpiredEvE8vlocal__ = linkonce_odr global %"struct.google::SiteFlag" zeroinitializer, comdat, align 8
@.str.38 = private unnamed_addr constant [17 x i8] c"timeoutExpired()\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"Timed out waiting for data\00", align 1
@_ZZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeINS_20AsyncSocketExceptionEJONS3_24AsyncSocketExceptionTypeEPKcRiEEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrESD_E3arg = linkonce_odr constant %"struct.folly::detail::make_exception_ptr_with_arg_" { i64 24, ptr @_ZTIN5folly20AsyncSocketExceptionE, ptr @_ZN5folly6detail28make_exception_ptr_with_arg_4makeIZNKS_26make_exception_ptr_with_fn4makeINS_20AsyncSocketExceptionEJONS5_24AsyncSocketExceptionTypeEPKcRiEEEDaDpOT0_EUlvE_S5_EEvPvSF_, ptr @_ZN5folly6detail28make_exception_ptr_with_arg_5dtor_INS_20AsyncSocketExceptionEEEvPv }, comdat, align 8
@.str.40 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.42 = private unnamed_addr constant [60 x i8] c"/opt-bench/work/folly/folly/folly/io/async/AsyncTransport.h\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"Check failed: false \00", align 1
@_ZZN5folly4coro9Transport4readERNS_10IOBufQueueEmmNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8vlocal__ = internal global %"struct.google::SiteFlag" zeroinitializer, align 8
@.str.44 = private unnamed_addr constant [42 x i8] c"Transport::read(), expecting minReadSize=\00", align 1
@.str.45 = private unnamed_addr constant [36 x i8] c"IOBufQueue: chain length not cached\00", align 1
@_ZTISt16invalid_argument = external constant ptr
@_ZTVSt16invalid_argument = external constant { [5 x ptr] }, align 8
@_ZTVN5folly4coro13WriteCallbackE = linkonce_odr constant { [7 x ptr], [8 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN5folly4coro13WriteCallbackE, ptr @_ZN5folly4coro13WriteCallbackD2Ev, ptr @_ZN5folly4coro13WriteCallbackD0Ev, ptr @_ZN5folly4coro13WriteCallback6cancelEv, ptr @_ZN5folly4coro13WriteCallback12writeSuccessEv, ptr @_ZN5folly4coro13WriteCallback8writeErrEmRKNS_20AsyncSocketExceptionE], [8 x ptr] [ptr inttoptr (i64 -32 to ptr), ptr @_ZTIN5folly4coro13WriteCallbackE, ptr @_ZThn32_N5folly4coro13WriteCallbackD1Ev, ptr @_ZThn32_N5folly4coro13WriteCallbackD0Ev, ptr @_ZN5folly11AsyncWriter13WriteCallback13writeStartingEv, ptr @_ZThn32_N5folly4coro13WriteCallback12writeSuccessEv, ptr @_ZThn32_N5folly4coro13WriteCallback8writeErrEmRKNS_20AsyncSocketExceptionE, ptr @_ZN5folly11AsyncWriter13WriteCallback23getReleaseIOBufCallbackEv] }, comdat, align 8
@_ZTIN5folly4coro13WriteCallbackE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN5folly4coro13WriteCallbackE, i32 0, i32 2, ptr @_ZTIN5folly4coro21TransportCallbackBaseE, i64 2, ptr @_ZTIN5folly11AsyncWriter13WriteCallbackE, i64 8194 }, comdat, align 8
@_ZTSN5folly4coro13WriteCallbackE = linkonce_odr constant [29 x i8] c"N5folly4coro13WriteCallbackE\00", comdat, align 1
@_ZTIN5folly11AsyncWriter13WriteCallbackE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5folly11AsyncWriter13WriteCallbackE }, comdat, align 8
@_ZTSN5folly11AsyncWriter13WriteCallbackE = linkonce_odr constant [37 x i8] c"N5folly11AsyncWriter13WriteCallbackE\00", comdat, align 1
@_ZZN5folly4coro13WriteCallback12writeSuccessEvE8vlocal__ = linkonce_odr global %"struct.google::SiteFlag" zeroinitializer, comdat, align 8
@.str.46 = private unnamed_addr constant [13 x i8] c"writeSuccess\00", align 1
@_ZZN5folly4coro13WriteCallback8writeErrEmRKNS_20AsyncSocketExceptionEE8vlocal__ = linkonce_odr global %"struct.google::SiteFlag" zeroinitializer, comdat, align 8
@.str.47 = private unnamed_addr constant [17 x i8] c"writeErr, wrote \00", align 1
@_ZZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeINS_20AsyncSocketExceptionEJOS3_EEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrES9_E3arg = linkonce_odr constant %"struct.folly::detail::make_exception_ptr_with_arg_" { i64 24, ptr @_ZTIN5folly20AsyncSocketExceptionE, ptr @_ZN5folly6detail28make_exception_ptr_with_arg_4makeIZNKS_26make_exception_ptr_with_fn4makeINS_20AsyncSocketExceptionEJOS5_EEEDaDpOT0_EUlvE_S5_EEvPvSB_, ptr @_ZN5folly6detail28make_exception_ptr_with_arg_5dtor_INS_20AsyncSocketExceptionEEEvPv }, comdat, align 8
@.str.51 = private unnamed_addr constant [54 x i8] c"/opt-bench/work/folly/folly/folly/io/coro/Transport.h\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"not implemented\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj], section "llvm.metadata"

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly4coro9TransportD2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN5folly4coro9TransportE, i64 16), ptr %0, align 8, !tbaa !144
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly14AsyncTransportENS0_18DelayedDestruction10DestructorEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !144
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(13) %i.b)
          to label %_ZNSt10unique_ptrIN5folly14AsyncTransportENS0_18DelayedDestruction10DestructorEED2Ev.exit unwind label %bb.c, !inline_history !0

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #28
  unreachable

_ZNSt10unique_ptrIN5folly14AsyncTransportENS0_18DelayedDestruction10DestructorEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly4coro9TransportD0Ev(ptr noundef nonnull align 8 dereferenceable(25) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN5folly4coro9TransportE, i64 16), ptr %0, align 8, !tbaa !144
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5folly4coro9TransportD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !144
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(13) %i.b)
          to label %_ZN5folly4coro9TransportD2Ev.exit unwind label %bb.c, !inline_history !1

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #28, !inline_history !148
  unreachable

_ZN5folly4coro9TransportD2Ev.exit:                ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN5folly4coro9Transport12getEventBaseEv(ptr noundef nonnull align 8 dereferenceable(25) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly4coro9Transport4readENS_5RangeIPhEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE(ptr dead_on_unwind nofree writable writeonly sret(%"class.folly::coro::Task") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr %2, ptr %3, i64 %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.from.108:
  %i.a = tail call noundef ptr @folly_coro_async_malloc(i64 noundef 384) ; 12 uses
  store ptr @_ZN5folly4coro9Transport4readENS_5RangeIPhEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN5folly4coro9Transport4readENS_5RangeIPhEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE.destroy, ptr %destroy.addr, align 8
  %.reload.addr235 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.spill.addr219 = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store i64 %4, ptr %.spill.addr219, align 8
  %.spill.addr214 = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  store ptr %3, ptr %.spill.addr214, align 8
  %.spill.addr209 = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr %2, ptr %.spill.addr209, align 8
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store ptr %1, ptr %.spill.addr, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr235, i8 0, i64 58, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr null, ptr %i.b, align 8, !tbaa !161
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseImEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES8_SA_, ptr %i.c, align 8, !tbaa !163
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i32 2, ptr %i.d, align 8, !tbaa !166
  store ptr %i.a, ptr %0, align 8, !tbaa !167, !alias.scope !3079
  %index.addr236 = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  store i8 0, ptr %index.addr236, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly4coro9Transport4readERNS_10IOBufQueueEmmNSt6chrono8durationIlSt5ratioILl1ELl1000EEEE(ptr dead_on_unwind nofree writable writeonly sret(%"class.folly::coro::Task") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef %3, i64 noundef %4, i64 %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.from.119:
  %i.a = tail call noundef ptr @folly_coro_async_malloc(i64 noundef 416) ; 13 uses
  store ptr @_ZN5folly4coro9Transport4readERNS_10IOBufQueueEmmNSt6chrono8durationIlSt5ratioILl1ELl1000EEEE.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN5folly4coro9Transport4readERNS_10IOBufQueueEmmNSt6chrono8durationIlSt5ratioILl1ELl1000EEEE.destroy, ptr %destroy.addr, align 8
  %.reload.addr266 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.spill.addr241 = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  store i64 %5, ptr %.spill.addr241, align 8
  %.spill.addr238 = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store i64 %4, ptr %.spill.addr238, align 8
  %.spill.addr233 = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  store i64 %3, ptr %.spill.addr233, align 8
  %.spill.addr222 = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr %2, ptr %.spill.addr222, align 8
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store ptr %1, ptr %.spill.addr, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr266, i8 0, i64 58, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr null, ptr %i.b, align 8, !tbaa !161
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseImEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES8_SA_, ptr %i.c, align 8, !tbaa !163
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i32 2, ptr %i.d, align 8, !tbaa !166
  store ptr %i.a, ptr %0, align 8, !tbaa !167, !alias.scope !3082
  %index.addr267 = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  store i8 0, ptr %index.addr267, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly4coro9Transport5writeENS_5RangeIPKhEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS_10WriteFlagsEPNS0_11TransportIf9WriteInfoE(ptr dead_on_unwind nofree writable writeonly sret(%"class.folly::coro::Task.1") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr %2, ptr %3, i64 %4, i32 noundef %5, ptr noundef %6) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.from.91:
  %i.a = tail call noundef ptr @folly_coro_async_malloc(i64 noundef 296) ; 14 uses
  store ptr @_ZN5folly4coro9Transport5writeENS_5RangeIPKhEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS_10WriteFlagsEPNS0_11TransportIf9WriteInfoE.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN5folly4coro9Transport5writeENS_5RangeIPKhEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS_10WriteFlagsEPNS0_11TransportIf9WriteInfoE.destroy, ptr %destroy.addr, align 8
  %.reload.addr168 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.spill.addr148 = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store ptr %6, ptr %.spill.addr148, align 8
  %.spill.addr145 = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store i32 %5, ptr %.spill.addr145, align 8
  %.spill.addr142 = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store i64 %4, ptr %.spill.addr142, align 8
  %.spill.addr139 = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store ptr %3, ptr %.spill.addr139, align 8
  %.spill.addr136 = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store ptr %2, ptr %.spill.addr136, align 8
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store ptr %1, ptr %.spill.addr, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr168, i8 0, i64 58, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr null, ptr %i.b, align 8, !tbaa !161
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseINS_4UnitEEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_, ptr %i.c, align 8, !tbaa !163
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i32 2, ptr %i.d, align 8, !tbaa !170
  store ptr %i.a, ptr %0, align 8, !tbaa !167, !alias.scope !3085
  %index.addr169 = getelementptr inbounds nuw i8, ptr %i.a, i64 292
  store i8 0, ptr %index.addr169, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly4coro9Transport5writeERNS_10IOBufQueueENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS_10WriteFlagsEPNS0_11TransportIf9WriteInfoE(ptr dead_on_unwind nofree writable writeonly sret(%"class.folly::coro::Task.1") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 %3, i32 noundef %4, ptr noundef %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.from.93:
  %i.a = tail call noundef ptr @folly_coro_async_malloc(i64 noundef 288) ; 13 uses
  store ptr @_ZN5folly4coro9Transport5writeERNS_10IOBufQueueENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS_10WriteFlagsEPNS0_11TransportIf9WriteInfoE.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN5folly4coro9Transport5writeERNS_10IOBufQueueENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS_10WriteFlagsEPNS0_11TransportIf9WriteInfoE.destroy, ptr %destroy.addr, align 8
  %.reload.addr168 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.spill.addr148 = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store ptr %5, ptr %.spill.addr148, align 8
  %.spill.addr145 = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store i32 %4, ptr %.spill.addr145, align 8
  %.spill.addr142 = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store i64 %3, ptr %.spill.addr142, align 8
  %.spill.addr137 = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store ptr %2, ptr %.spill.addr137, align 8
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store ptr %1, ptr %.spill.addr, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr168, i8 0, i64 58, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr null, ptr %i.b, align 8, !tbaa !161
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseINS_4UnitEEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_, ptr %i.c, align 8, !tbaa !163
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i32 2, ptr %i.d, align 8, !tbaa !170
  store ptr %i.a, ptr %0, align 8, !tbaa !167, !alias.scope !3088
  %index.addr169 = getelementptr inbounds nuw i8, ptr %i.a, i64 284
  store i8 0, ptr %index.addr169, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK5folly4coro9Transport15getLocalAddressEv(ptr dead_on_unwind noalias writable sret(%"class.folly::SocketAddress") align 8 %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.folly::SocketAddress::IPAddr", align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZN5folly9IPAddressC1Ev(ptr noundef nonnull align 4 dereferenceable(26) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i16 0, ptr %i.a, align 4, !tbaa !174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !177
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.b, align 8, !tbaa !179
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !144
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull %0)
          to label %bb.c unwind label %bb.d, !call_target !3089

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #28
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK5folly4coro9Transport14getPeerAddressEv(ptr dead_on_unwind noalias writable sret(%"class.folly::SocketAddress") align 8 %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.folly::SocketAddress::IPAddr", align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZN5folly9IPAddressC1Ev(ptr noundef nonnull align 4 dereferenceable(26) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i16 0, ptr %i.a, align 4, !tbaa !174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !177
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.b, align 8, !tbaa !179
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !144
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull %0)
          to label %bb.c unwind label %bb.d, !call_target !3090

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #28
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly4coro9Transport5closeEv(ptr noundef nonnull align 8 dereferenceable(25) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !144
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %bb.c unwind label %bb.d, !call_target !3091

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #28
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly4coro9Transport13shutdownWriteEv(ptr noundef nonnull align 8 dereferenceable(25) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !144
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %bb.c unwind label %bb.d, !call_target !3092

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #28
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly4coro9Transport14closeWithResetEv(ptr noundef nonnull align 8 dereferenceable(25) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !144
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %bb.c unwind label %bb.d, !call_target !2018

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #28
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5folly4coro9Transport12getTransportEv(ptr noundef nonnull align 8 dereferenceable(25) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK5folly4coro9Transport18getPeerCertificateEv(ptr noundef nonnull align 8 dereferenceable(25) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !144
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(48) %i.b), !call_target !3098
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly4coro11TransportIf15detachEventBaseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str.51, i32 noundef 72)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.52)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #28
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly4coro11TransportIf15attachEventBaseEPNS_9EventBaseE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str.51, i32 noundef 74)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.52)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #28
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly4coro9Transport18newConnectedSocketEPNS_9EventBaseERKNS_13SocketAddressENSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKSt3mapINS_15SocketOptionKeyENS_17SocketOptionValueESt4lessISD_ESaISt4pairIKSD_SE_EEES6_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nofree writable writeonly sret(%"class.folly::coro::Task.10") align 8 captures(none) initializes((0, 8)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 %3, ptr noundef nonnull align 1 %4, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.from.103:
  %i.a = tail call noundef ptr @folly_coro_async_malloc(i64 noundef 328) ; 14 uses
  store ptr @_ZN5folly4coro9Transport18newConnectedSocketEPNS_9EventBaseERKNS_13SocketAddressENSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKSt3mapINS_15SocketOptionKeyENS_17SocketOptionValueESt4lessISD_ESaISt4pairIKSD_SE_EEES6_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN5folly4coro9Transport18newConnectedSocketEPNS_9EventBaseERKNS_13SocketAddressENSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKSt3mapINS_15SocketOptionKeyENS_17SocketOptionValueESt4lessISD_ESaISt4pairIKSD_SE_EEES6_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.destroy, ptr %destroy.addr, align 8
  %.reload.addr194 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.spill.addr167 = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store ptr %6, ptr %.spill.addr167, align 8
  %.spill.addr164 = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store ptr %5, ptr %.spill.addr164, align 8
  %.spill.addr161 = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store ptr %4, ptr %.spill.addr161, align 8
  %.spill.addr158 = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store i64 %3, ptr %.spill.addr158, align 8
  %.spill.addr155 = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store ptr %2, ptr %.spill.addr155, align 8
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store ptr %1, ptr %.spill.addr, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.reload.addr194, i8 0, i64 58, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr null, ptr %i.b, align 8, !tbaa !161
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseINS0_9TransportEEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_, ptr %i.c, align 8, !tbaa !163
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i32 2, ptr %i.d, align 8, !tbaa !2021
  store ptr %i.a, ptr %0, align 8, !tbaa !167, !alias.scope !3102
  %index.addr195 = getelementptr inbounds nuw i8, ptr %i.a, i64 324
  store i8 0, ptr %index.addr195, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformINS1_12TryAwaitableINS0_4TaskIS3_EEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOSB_(ptr dead_on_unwind noalias writable sret(%"class.folly::coro::detail::TryAwaitable") align 8 %0, ptr noundef nonnull align 8 dereferenceable(59) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !2024
  %i.c = icmp eq i8 %i.b, 2
  %i.d = zext i1 %i.c to i8
  store i8 %i.d, ptr %i.a, align 1, !tbaa !2024
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !2027, !noalias !3145
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !167, !noalias !3146 ; 5 uses
  store i64 0, ptr %2, align 8, !tbaa !167, !noalias !3146
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2029, !noalias !3147 ; 6 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5folly17CancellationTokenC2ERKS0_.exit.i.i.i.i.i.i, label %_ZN5folly17CancellationTokenC2ERKS0_.exit.thread.i.i.i.i.i.i

_ZN5folly17CancellationTokenC2ERKS0_.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 72 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !3156, !range !2037, !noalias !3157, !noundef !682
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS1_12TryAwaitableINS0_4TaskINS_4UnitEEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scSB_fp0_EERKNS_17CancellationTokenEOSB_.exit, label %bb.b

_ZN5folly17CancellationTokenC2ERKS0_.exit.thread.i.i.i.i.i.i: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.m = atomicrmw add ptr %i.l, i64 8 monotonic, align 8, !noalias !3158 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 72 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !3156, !range !2037, !noalias !3159, !noundef !682
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.g, label %bb.b

bb.b:                                             ; preds = %_ZN5folly17CancellationTokenC2ERKS0_.exit.thread.i.i.i.i.i.i, %_ZN5folly17CancellationTokenC2ERKS0_.exit.i.i.i.i.i.i
  %i.q = phi ptr [ %i.n, %_ZN5folly17CancellationTokenC2ERKS0_.exit.thread.i.i.i.i.i.i ], [ %i.i, %_ZN5folly17CancellationTokenC2ERKS0_.exit.i.i.i.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2029, !noalias !3157 ; 5 uses
  store ptr %i.h, ptr %i.r, align 8, !tbaa !2029, !noalias !3157
  %.not.i.i.i.i.i.i.i2.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i2.i.i.i.i.i.i, label %_ZN5folly4coro6detail11BasePromiseINS_4UnitEE20setCancellationTokenENS_17CancellationTokenE.exit.thread.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = atomicrmw sub ptr %i.t, i64 8 acq_rel, align 8, !noalias !3157 ; 2 uses
  %i.v = icmp ult i64 %i.u, 16
  br i1 %i.v, label %bb.d, label %_ZN5folly4coro6detail11BasePromiseINS_4UnitEE20setCancellationTokenENS_17CancellationTokenE.exit.thread.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.w = and i64 %i.u, 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.s) #30, !noalias !3157
  br label %_ZN5folly4coro6detail11BasePromiseINS_4UnitEE20setCancellationTokenENS_17CancellationTokenE.exit.thread.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !144, !noalias !3157
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noalias !3157
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.s) #30, !noalias !3157, !call_target !2042, !inline_history !3118
  br label %_ZN5folly4coro6detail11BasePromiseINS_4UnitEE20setCancellationTokenENS_17CancellationTokenE.exit.thread.i.i.i.i.i.i.i

_ZN5folly4coro6detail11BasePromiseINS_4UnitEE20setCancellationTokenENS_17CancellationTokenE.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.c, %bb.b
  store i8 1, ptr %i.q, align 8, !tbaa !3156, !noalias !3157
  br label %_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS1_12TryAwaitableINS0_4TaskINS_4UnitEEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scSB_fp0_EERKNS_17CancellationTokenEOSB_.exit

bb.g:                                             ; preds = %_ZN5folly17CancellationTokenC2ERKS0_.exit.thread.i.i.i.i.i.i
  %i.aa = atomicrmw sub ptr %i.l, i64 8 acq_rel, align 8, !noalias !3157 ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 16
  br i1 %i.ab, label %bb.h, label %_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS1_12TryAwaitableINS0_4TaskINS_4UnitEEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scSB_fp0_EERKNS_17CancellationTokenEOSB_.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = and i64 %i.aa, 4
  %.not.i.i.i.i.i3.i.i.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i3.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.h) #30, !noalias !3157
  br label %_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS1_12TryAwaitableINS0_4TaskINS_4UnitEEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scSB_fp0_EERKNS_17CancellationTokenEOSB_.exit

bb.j:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !144, !noalias !3157
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !3157
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(32) %i.h) #30, !noalias !3157, !call_target !2042, !inline_history !3119
  br label %_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS1_12TryAwaitableINS0_4TaskINS_4UnitEEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scSB_fp0_EERKNS_17CancellationTokenEOSB_.exit

_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS1_12TryAwaitableINS0_4TaskINS_4UnitEEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scSB_fp0_EERKNS_17CancellationTokenEOSB_.exit: ; preds = %bb.j, %bb.i, %bb.g, %_ZN5folly4coro6detail11BasePromiseINS_4UnitEE20setCancellationTokenENS_17CancellationTokenE.exit.thread.i.i.i.i.i.i.i, %_ZN5folly17CancellationTokenC2ERKS0_.exit.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 56 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !2027, !noalias !3160 ; 2 uses
  %i.ai = and i64 %i.ah, -4                       ; 2 uses
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS1_12TryAwaitableINS0_4TaskINS_4UnitEEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scSB_fp0_EERKNS_17CancellationTokenEOSB_.exit
  store i64 0, ptr %i.ag, align 8, !tbaa !2043, !noalias !3160
  %i.ak = and i64 %i.ah, 3
  %.not3.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !144, !noalias !3160
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !noalias !3160
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) #30, !noalias !3160, !call_target !2048, !inline_history !3130
  br label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit

_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit: ; preds = %bb.l, %bb.k, %_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS1_12TryAwaitableINS0_4TaskINS_4UnitEEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scSB_fp0_EERKNS_17CancellationTokenEOSB_.exit
  %i.ao = or i64 %i.f, 2
  store i64 %i.ao, ptr %i.ag, align 8, !tbaa !2027, !noalias !3160
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %0, align 8, !alias.scope !3161
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly4coro15ConnectCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %0, align 8, !tbaa !144
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2050
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5folly4coro21TransportCallbackBaseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #30, !inline_history !2051
  br label %_ZN5folly4coro21TransportCallbackBaseD2Ev.exit

_ZN5folly4coro21TransportCallbackBaseD2Ev.exit:   ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #30, !inline_history !2051
  ret void
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS0_9TransportEEES4_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @_ZN5folly17current_exceptionEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %1) #30
  %i.b = load i64, ptr %1, align 8, !noalias !3166 ; 2 uses
  store i64 0, ptr %1, align 8, !noalias !3166
  %i.c = load i32, ptr %i.a, align 8, !tbaa !2052
  store i32 2, ptr %i.a, align 8, !tbaa !2052
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  switch i32 %i.c, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.critedge [
    i32 0, label %bb.b
    i32 1, label %bb.e
  ], !prof !2053

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN5folly4coro9TransportE, i64 16), ptr %i.d, align 8, !tbaa !144
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !147  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN5folly17exception_wrapperD2Ev.exitthread-pre-split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !144
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(13) %i.f)
          to label %_ZN5folly17exception_wrapperD2Ev.exitthread-pre-split unwind label %bb.d, !inline_history !1

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #28, !inline_history !148
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !2050
  %.not.i.i2.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i2.i.i, label %_ZN5folly17exception_wrapperD2Ev.exitthread-pre-split, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #30
  br label %_ZN5folly17exception_wrapperD2Ev.exitthread-pre-split

_ZN5folly17exception_wrapperD2Ev.exitthread-pre-split: ; preds = %bb.b, %bb.c, %bb.e, %bb.f
  %.pr = load ptr, ptr %1, align 8, !tbaa !2050
  %i.m = icmp eq ptr %.pr, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
end_hunk_0
begin_hunk_1_@_ZN5folly11AsyncWriter13WriteCallback13writeStartingEv:bb.a
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn32_N5folly4coro13WriteCallback12writeSuccessEv(ptr noundef %0) unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN5folly4coro13WriteCallback12writeSuccessEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #30
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn32_N5folly4coro13WriteCallback8writeErrEmRKNS_20AsyncSocketExceptionE(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN5folly4coro13WriteCallback8writeErrEmRKNS_20AsyncSocketExceptionE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN5folly11AsyncWriter13WriteCallback23getReleaseIOBufCallbackEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt13runtime_erroraSERKS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZN5folly5IOBufdlEPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr ptr @_ZN5folly4coro4TaskINS_4UnitEE7Awaiter13await_suspendINS0_6detail11TaskPromiseIS2_EEEEDaNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2161   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %1, ptr %i.b, align 8, !tbaa !167
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !2120
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.e = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.e, ptr %i.f, align 8, !tbaa !2121
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2060 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.i, ptr %i.j, align 8, !tbaa !2060
  store ptr %i.g, ptr %i.d, align 8, !tbaa !2054
  store atomic ptr %i.d, ptr %i.i release, align 8
  store ptr null, ptr %i.h, align 8, !tbaa !2060
  %.sroa.06.0.copyload = load ptr, ptr %0, align 8, !tbaa !167
  ret ptr %.sroa.06.0.copyload
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail28make_exception_ptr_with_arg_4makeIZNKS_26make_exception_ptr_with_fn4makeINS_20AsyncSocketExceptionEJOS5_EEEDaDpOT0_EUlvE_S5_EEvPvSB_(ptr noundef %0, ptr noundef %1) #2 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3476)
  %i.a = load ptr, ptr %1, align 8, !tbaa !3478, !noalias !3476, !nonnull !682, !align !2067 ; 2 uses
  tail call void @_ZNSt13runtime_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a) #30
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly20AsyncSocketExceptionE, i64 16), ptr %0, align 8, !tbaa !144, !alias.scope !3476
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i64, ptr %i.c, align 8
  store i64 %i.d, ptr %i.b, align 8, !alias.scope !3476
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #2 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #2 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.resume(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0) #1 align 2 personality ptr @__gxx_personality_v0 {
CoroEnd:
  %.reload.addr13 = getelementptr inbounds nuw i8, ptr %0, i64 97
  store ptr null, ptr %0, align 8
  tail call void @_ZN5folly4coro6detail12ViaCoroutineILb0EE12promise_type12FinalAwaiter13await_suspendENSt7__n486116coroutine_handleIS4_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr13, ptr nonnull %0) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.destroy(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(104) initializes((16, 24)) %0) #1 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly4coro6detail23ViaCoroutinePromiseBaseE, i64 16), ptr %.reload.addr14, align 8, !tbaa !144
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2146 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.a

bb.a:                                             ; preds = %resume.entry
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !2148
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !2149
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !144
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !call_target !2154, !inline_history !77
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !144
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !call_target !2155, !inline_history !77
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.c:                                             ; preds = %bb.a
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !175
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from., label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11: ; preds = %bb.c
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !2141
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.: ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from., %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11
  %.0.i.i.i.i.i = phi i32 [ %i.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11 ], [ %i.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from. ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.d, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !2156

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !2159
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.b, %resume.entry
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !2027 ; 2 uses
  %i.t = and i64 %i.s, -4                         ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %.not.i.i1.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i1.i, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  store i64 0, ptr %i.r, align 8, !tbaa !2043
  %i.v = and i64 %i.s, 3
  %.not3.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not3.i.i.i, label %bb.f, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !144
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #30, !call_target !2048, !inline_history !78
  br label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit

_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.e, %bb.f
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 104)
          to label %CoroEnd unwind label %bb.g

bb.g:                                             ; preds = %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #28
  unreachable

CoroEnd:                                          ; preds = %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5folly4coro21TransportCallbackBase4waitEv.resume(ptr noundef nonnull align 16 dereferenceable(304) %0) #2 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %1 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %2 = alloca %"class.folly::exception_wrapper", align 8 ; 4 uses
  %3 = alloca %class.anon.248, align 1            ; 3 uses
  %4 = alloca %"class.folly::exception_wrapper", align 8 ; 4 uses
  %5 = alloca %class.anon.248, align 1            ; 3 uses
  %.reload.addr153 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %.reload.addr154 = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 6 uses
  %.reload.addr155 = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 6 uses
  %.reload.addr156 = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %.reload.addr157 = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %.reload.addr162 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 6 uses
  %index = load i8, ptr %index.addr, align 16
  switch i8 %index, label %unreachable [
    i8 0, label %AfterCoroSuspend
    i8 1, label %CoroEnd
    i8 2, label %AfterCoroSuspend89
    i8 3, label %CoroEnd
  ], !prof !3583

AfterCoroSuspend:                                 ; preds = %resume.entry
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %.reload.addr155, align 16, !tbaa !3584
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !2029 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread, label %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit

_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit: ; preds = %AfterCoroSuspend
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = atomicrmw add ptr %i.c, i64 8 monotonic, align 8, !noalias !3585 ; 0 uses
  store ptr %i.b, ptr %.reload.addr155, align 16, !tbaa !2029
  %i.e = load atomic i64, ptr %i.c acquire, align 8
  %i.f = trunc i64 %i.e to i1
  br i1 %i.f, label %bb.a, label %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread.from._ZNK5folly17CancellationToken23isCancellationRequestedEv.exit._ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread_crit_edge

_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread.from._ZNK5folly17CancellationToken23isCancellationRequestedEv.exit._ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread_crit_edge: ; preds = %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit
  %.pre67 = load ptr, ptr %.reload.addr155, align 16, !tbaa !2029
  br label %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread

bb.a:                                             ; preds = %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit
  %.reload.addr151 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.reload152 = load ptr, ptr %.reload.addr151, align 8, !tbaa !3587 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.h = load ptr, ptr %.reload152, align 8, !tbaa !144
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(32) %.reload152) #30, !call_target !3592
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5508)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !5508
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !5509
  call void @_ZN5folly6detail24make_exception_ptr_with_ERKNS0_28make_exception_ptr_with_arg_EPv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeINS_18OperationCancelledEJEEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrES8_E3arg, ptr noundef nonnull %3) #30, !noalias !5508
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !5509
  call void @llvm.experimental.noalias.scope.decl(metadata !5510)
  %i.k = load i64, ptr %2, align 8, !noalias !5511 ; 3 uses
  store i64 %i.k, ptr %.reload.addr156, align 8, !alias.scope !5511
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !5508
  %i.l = load i32, ptr %i.g, align 16, !tbaa !2133
  store i32 2, ptr %i.g, align 16, !tbaa !2133
  %cond.i.i.i = icmp eq i32 %i.l, 1
  br i1 %cond.i.i.i, label %bb.b, label %bb.c, !prof !2134

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2050
  %.not.i.i.i.i.i26 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i26, label %bb.c, label %.from.108

.from.108:                                        ; preds = %bb.b
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #30
  %.pre = load i64, ptr %.reload.addr156, align 8, !noalias !5512
  br label %bb.c

bb.c:                                             ; preds = %.from.108, %bb.a, %bb.b
  %i.o = phi i64 [ %.pre, %.from.108 ], [ %i.k, %bb.a ], [ %i.k, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !5512)
  store i64 %i.o, ptr %i.p, align 8, !alias.scope !5512
  store i64 0, ptr %.reload.addr156, align 8, !noalias !5512
  store i32 1, ptr %i.g, align 16, !tbaa !170
  store i8 1, ptr %index.addr, align 16
  %i.q = call noundef ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseINS_4UnitEEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr154, ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr162) #30 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  musttail call void %i.r(ptr nonnull %i.q)
  ret void

_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread: ; preds = %AfterCoroSuspend, %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread.from._ZNK5folly17CancellationToken23isCancellationRequestedEv.exit._ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread_crit_edge
  %i.s = phi ptr [ %.pre67, %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread.from._ZNK5folly17CancellationToken23isCancellationRequestedEv.exit._ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread_crit_edge ], [ null, %AfterCoroSuspend ] ; 3 uses
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !3587
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr153, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %.reload, ptr %i.u, align 16, !tbaa !5513
  store ptr @_ZN5folly6detail8function5call_IZNS_4coro21TransportCallbackBase4waitEvEUlvE_Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE, ptr %i.v, align 16, !tbaa !2158
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.w, align 8, !tbaa !2132
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr null, ptr %i.x, align 16, !tbaa !5514
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 0, ptr %i.y, align 8, !tbaa !5515
  %.not.i.i29 = icmp eq ptr %i.s, null
  br i1 %.not.i.i29, label %.from..i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread
  %i.z = tail call noundef zeroext i1 @_ZN5folly6detail17CancellationState14tryAddCallbackEPNS_20CancellationCallbackEb(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr153, i1 noundef zeroext true) #30
  br i1 %i.z, label %bb.e, label %.from..i.i.i.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.s, ptr %i.t, align 16, !tbaa !2131
  br label %.from..i.i.i.i

.from..i.i.i.i:                                   ; preds = %bb.e, %bb.d, %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread
  %.reload148 = load ptr, ptr %.reload.addr, align 8, !tbaa !3587
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !2024, !noalias !5516
  %i.ac = icmp eq i8 %i.ab, 2
  %i.ad = zext i1 %i.ac to i8
  store i8 %i.ad, ptr %i.aa, align 1, !tbaa !2024, !noalias !5516
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !2027, !noalias !5517
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5519)
  %i.ag = invoke noundef ptr @folly_coro_async_malloc(i64 noundef 104)
          to label %.from.110 unwind label %.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i, !noalias !5518 ; 8 uses

.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i: ; preds = %.from..i.i.i.i
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ac

.from.110:                                        ; preds = %.from..i.i.i.i
  %i.ai = or i64 %i.af, 2
  %i.aj = getelementptr inbounds nuw i8, ptr %.reload148, i64 8 ; 3 uses
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.resume, ptr %i.ag, align 8, !noalias !5520
  %destroy.addr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.destroy, ptr %destroy.addr.i.i.i.i, align 8, !noalias !5520
  %.reload.addr14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.al, i8 0, i64 56, i1 false), !noalias !5520
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_, ptr %i.am, align 8, !tbaa !163, !noalias !5520
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly4coro6detail12ViaCoroutineILb0EE12promise_typeE, i64 16), ptr %.reload.addr14.i.i.i.i, align 8, !tbaa !144, !noalias !5520
  store ptr %i.ag, ptr %.reload.addr154, align 16, !tbaa !167, !alias.scope !5521
  %index.addr15.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  store i8 0, ptr %index.addr15.i.i.i.i, align 8, !noalias !5520
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !2027, !noalias !5520
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.aj, ptr %i.an, align 8, !tbaa !5522, !alias.scope !5523
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr null, ptr %i.ao, align 16, !tbaa !5524, !alias.scope !5523
  %i.ap = load atomic ptr, ptr %i.aj acquire, align 8
  %i.aq = icmp eq ptr %i.ap, %i.aj
  br i1 %i.aq, label %AfterCoroSuspend89, label %AfterCoroSave87

AfterCoroSave87:                                  ; preds = %.from.110
  store i8 2, ptr %index.addr, align 16
  %i.ar = tail call noundef zeroext i1 @_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE13await_suspendINS0_6detail11TaskPromiseINS_4UnitEEEEEbNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr154, ptr nonnull %0) #30
  br i1 %i.ar, label %CoroEnd, label %AfterCoroSuspend89

AfterCoroSuspend89:                               ; preds = %resume.entry, %AfterCoroSave87, %.from.110
  %i.as = load ptr, ptr %.reload.addr154, align 16, !tbaa !2119 ; 3 uses
  %.not.i.i31 = icmp eq ptr %i.as, null
  br i1 %.not.i.i31, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit35.thread, label %bb.f

bb.f:                                             ; preds = %AfterCoroSuspend89
  store i64 0, ptr %.reload.addr154, align 16, !tbaa !167
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  invoke void %i.au(ptr nonnull %i.as)
          to label %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit unwind label %bb.g, !inline_history !118

bb.g:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #28
  unreachable

_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit: ; preds = %bb.f
  %.pr = load ptr, ptr %.reload.addr154, align 16, !tbaa !2119 ; 3 uses
  %.not.i.i32 = icmp eq ptr %.pr, null
  br i1 %.not.i.i32, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit35.thread, label %bb.h

bb.h:                                             ; preds = %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  invoke void %i.ay(ptr nonnull %.pr)
          to label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit35.thread unwind label %bb.i, !inline_history !118

bb.i:                                             ; preds = %bb.h
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  tail call void @__clang_call_terminate(ptr %i.ba) #28
  unreachable

_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit35.thread: ; preds = %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit, %bb.h, %AfterCoroSuspend89
  %i.bb = load ptr, ptr @_ZZN5folly4coro21TransportCallbackBase4waitEvE8vlocal__, align 8, !tbaa !2140 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.j, label %.split

bb.j:                                             ; preds = %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit35.thread
  %i.bd = invoke noundef zeroext i1 @_ZN6google11InitVLOG3__EPNS_8SiteFlagEPiPKci(ptr noundef nonnull @_ZZN5folly4coro21TransportCallbackBase4waitEvE8vlocal__, ptr noundef nonnull @_ZN3fLI7FLAGS_vE, ptr noundef nonnull @.str.14, i32 noundef 5)
          to label %bb.k unwind label %.from.133

.split:                                           ; preds = %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit35.thread
  %i.be = load i32, ptr %i.bb, align 4, !tbaa !2141
  %i.bf = icmp sgt i32 %i.be, 4
  br i1 %i.bf, label %bb.l, label %.critedge25

bb.k:                                             ; preds = %bb.j
  br i1 %i.bd, label %bb.l, label %.critedge25

bb.l:                                             ; preds = %bb.k, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  invoke void @_ZN6google10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str.14, i32 noundef 57)
          to label %bb.m unwind label %.from.122

bb.m:                                             ; preds = %bb.l
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.n unwind label %.from.125

bb.n:                                             ; preds = %bb.m
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull @.str.15, i64 noundef 17)
          to label %.critedge unwind label %.from.125 ; 0 uses

.critedge:                                        ; preds = %bb.n
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.critedge25

.critedge25:                                      ; preds = %.critedge, %bb.k, %.split
  %i.bi = load ptr, ptr %.reload.addr155, align 16, !tbaa !2029 ; 2 uses
  %.not.i.i36 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i36, label %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit37.thread, label %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit37

_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit37: ; preds = %.critedge25
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load atomic i64, ptr %i.bj acquire, align 8
  %i.bl = trunc i64 %i.bk to i1
  br i1 %i.bl, label %bb.o, label %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit37.thread

bb.o:                                             ; preds = %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit37
  %.reload.addr149 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.reload150 = load ptr, ptr %.reload.addr149, align 8, !tbaa !3587 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bn = load ptr, ptr %.reload150, align 8, !tbaa !144
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(32) %.reload150) #30, !call_target !3592
  call void @llvm.experimental.noalias.scope.decl(metadata !5525)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !5525
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !5526
  call void @_ZN5folly6detail24make_exception_ptr_with_ERKNS0_28make_exception_ptr_with_arg_EPv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeINS_18OperationCancelledEJEEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrES8_E3arg, ptr noundef nonnull %5) #30, !noalias !5525
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !5526
  call void @llvm.experimental.noalias.scope.decl(metadata !5527)
  %i.bq = load i64, ptr %4, align 8, !noalias !5528 ; 3 uses
  store i64 %i.bq, ptr %.reload.addr157, align 16, !alias.scope !5528
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !5525
  %i.br = load i32, ptr %i.bm, align 16, !tbaa !2133
  store i32 2, ptr %i.bm, align 16, !tbaa !2133
  %cond.i.i.i38 = icmp eq i32 %i.br, 1
  br i1 %cond.i.i.i38, label %bb.p, label %bb.q, !prof !2134

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !2050
  %.not.i.i.i.i.i39 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i39, label %bb.q, label %.from.120

.from.120:                                        ; preds = %bb.p
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs) #30
  %.pre68 = load i64, ptr %.reload.addr157, align 16, !noalias !5529
  br label %bb.q

bb.q:                                             ; preds = %.from.120, %bb.o, %bb.p
  %i.bu = phi i64 [ %.pre68, %.from.120 ], [ %i.bq, %bb.o ], [ %i.bq, %bb.p ]
  %.reload.addr160 = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !5529)
  store i64 %i.bu, ptr %i.bv, align 8, !alias.scope !5529
  store i64 0, ptr %.reload.addr157, align 16, !noalias !5529
  store i32 1, ptr %i.bm, align 16, !tbaa !170
  store i8 3, ptr %index.addr, align 16
  %i.bw = call noundef ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseINS_4UnitEEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr160, ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr162) #30 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  musttail call void %i.bx(ptr nonnull %i.bw)
  ret void

.from.133:                                        ; preds = %bb.j
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ac

.from.122:                                        ; preds = %bb.l
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.131

.from.125:                                        ; preds = %bb.m, %bb.n
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #30
  br label %.from.131

.from.131:                                        ; preds = %.from.122, %.from.125
  %.pn19 = phi { ptr, i32 } [ %i.ca, %.from.125 ], [ %i.bz, %.from.122 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.ac

_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit37.thread: ; preds = %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit37, %.critedge25
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 16, !tbaa !2133
  store i32 2, ptr %i.cb, align 16, !tbaa !2133
  %cond.i.i.i46 = icmp eq i32 %i.cc, 1
  br i1 %cond.i.i.i46, label %bb.r, label %bb.t, !prof !2134

bb.r:                                             ; preds = %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit37.thread
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !2050
  %.not.i.i.i.i.i47 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i47, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cd) #30
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit37.thread
  store i32 0, ptr %i.cb, align 16, !tbaa !170
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cg = load ptr, ptr %i.cf, align 16, !tbaa !2131 ; 2 uses
  %.not.i48 = icmp eq ptr %i.cg, null
  br i1 %.not.i48, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN5folly6detail17CancellationState14removeCallbackEPNS_20CancellationCallbackE(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr153) #30
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !2132 ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i49, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ck = call noundef i64 %i.ci(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.cj, ptr noundef null) #30, !inline_history !119 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cl = load ptr, ptr %.reload.addr155, align 16, !tbaa !2029 ; 5 uses
  %.not.i.i50 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i50, label %_ZN5folly17CancellationTokenD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = atomicrmw sub ptr %i.cm, i64 8 acq_rel, align 8 ; 2 uses
  %i.co = icmp ult i64 %i.cn, 16
  br i1 %i.co, label %bb.z, label %_ZN5folly17CancellationTokenD2Ev.exit

bb.z:                                             ; preds = %bb.y
  %i.cp = and i64 %i.cn, 4
  %.not.i.i.i.i = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.cl) #30
  br label %_ZN5folly17CancellationTokenD2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.cq = load ptr, ptr %i.cl, align 8, !tbaa !144
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(32) %i.cl) #30, !call_target !2042, !inline_history !120
  br label %_ZN5folly17CancellationTokenD2Ev.exit

bb.ac:                                            ; preds = %.from.131, %.from.133, %.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i
  %.pn20.pn = phi { ptr, i32 } [ %i.ah, %.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i ], [ %.pn19, %.from.131 ], [ %i.by, %.from.133 ]
  call void @_ZN5folly20CancellationCallbackD2Ev(ptr noundef nonnull align 16 dead_on_return(105) dereferenceable(105) %.reload.addr153) #30
  %.5 = extractvalue { ptr, i32 } %.pn20.pn, 0
  call void @_ZN5folly17CancellationTokenD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr155) #30
  %i.ct = call ptr @__cxa_begin_catch(ptr %.5) #30 ; 0 uses
  call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr162) #30
  invoke void @__cxa_end_catch()
          to label %_ZN5folly17CancellationTokenD2Ev.exit unwind label %bb.ad

_ZN5folly17CancellationTokenD2Ev.exit:            ; preds = %bb.x, %bb.y, %bb.aa, %bb.ab, %bb.ac
  %.reload.addr161 = getelementptr inbounds nuw i8, ptr %0, i64 290
  store ptr null, ptr %0, align 16
  store i8 4, ptr %index.addr, align 16
  %i.cu = call noundef ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseINS_4UnitEEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr161, ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr162) #30 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8
  musttail call void %i.cv(ptr nonnull %i.cu)
  ret void

CoroEnd:                                          ; preds = %AfterCoroSave87, %resume.entry, %resume.entry
  ret void

bb.ad:                                            ; preds = %bb.ac
  %i.cw = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 16
  store i8 4, ptr %index.addr, align 16
  resume { ptr, i32 } %i.cw

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro21TransportCallbackBase4waitEv.destroy(ptr noundef nonnull align 16 dereferenceable(304) %0) #1 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr153 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.reload.addr155 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.reload.addr156 = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %.reload.addr157 = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 288
  %index = load i8, ptr %index.addr, align 16
  switch i8 %index, label %unreachable [
    i8 0, label %AfterCoroSuspend
    i8 1, label %AfterCoroSuspend85
    i8 2, label %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit
    i8 3, label %AfterCoroSuspend93
    i8 4, label %AfterCoroSuspend
  ], !prof !5530

AfterCoroSuspend85:                               ; preds = %resume.entry
  %i.a = load ptr, ptr %.reload.addr156, align 8, !tbaa !2050
  %.not.i.i.i27 = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i27, label %.from._ZN5folly4coro8co_errorD2Ev.exit28, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend85
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr156) #30
  br label %.from._ZN5folly4coro8co_errorD2Ev.exit28

_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit: ; preds = %resume.entry
  %.reload.addr154 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.pr = load ptr, ptr %.reload.addr154, align 16, !tbaa !2119 ; 3 uses
  %.not.i.i32 = icmp eq ptr %.pr, null
  br i1 %.not.i.i32, label %.from._ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit35, label %bb.b

bb.b:                                             ; preds = %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr nonnull %.pr)
          to label %.from._ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit35 unwind label %bb.c, !inline_history !118

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #28
  unreachable

AfterCoroSuspend93:                               ; preds = %resume.entry
  %i.f = load ptr, ptr %.reload.addr157, align 16, !tbaa !2050
  %.not.i.i.i44 = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i44, label %.from._ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit35, label %bb.d

bb.d:                                             ; preds = %AfterCoroSuspend93
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr157) #30
  br label %.from._ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit35

.from._ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit35: ; preds = %bb.d, %AfterCoroSuspend93, %bb.b, %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !2131 ; 2 uses
  %.not.i48 = icmp eq ptr %i.h, null
  br i1 %.not.i48, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.from._ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit35
  tail call void @_ZN5folly6detail17CancellationState14removeCallbackEPNS_20CancellationCallbackE(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr153) #30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.from._ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit35
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2132 ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i49, label %.from._ZN5folly4coro8co_errorD2Ev.exit28, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = tail call noundef i64 %i.j(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.k, ptr noundef null) #30, !inline_history !119 ; 0 uses
  br label %.from._ZN5folly4coro8co_errorD2Ev.exit28

.from._ZN5folly4coro8co_errorD2Ev.exit28:         ; preds = %bb.g, %bb.f, %bb.a, %AfterCoroSuspend85
  %i.m = load ptr, ptr %.reload.addr155, align 16, !tbaa !2029 ; 5 uses
  %.not.i.i50 = icmp eq ptr %i.m, null
  br i1 %.not.i.i50, label %AfterCoroSuspend, label %bb.h

bb.h:                                             ; preds = %.from._ZN5folly4coro8co_errorD2Ev.exit28
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = atomicrmw sub ptr %i.n, i64 8 acq_rel, align 8 ; 2 uses
  %i.p = icmp ult i64 %i.o, 16
  br i1 %i.p, label %bb.i, label %AfterCoroSuspend

bb.i:                                             ; preds = %bb.h
  %i.q = and i64 %i.o, 4
  %.not.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.m) #30
  br label %AfterCoroSuspend

bb.k:                                             ; preds = %bb.i
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !144
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(32) %i.m) #30, !call_target !2042, !inline_history !120
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %.from._ZN5folly4coro8co_errorD2Ev.exit28, %bb.h, %bb.j, %bb.k, %resume.entry, %resume.entry
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = load i32, ptr %i.u, align 16, !tbaa !170
  %cond.i.i = icmp eq i32 %i.v, 1
  br i1 %cond.i.i, label %bb.l, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i, !prof !2134

bb.l:                                             ; preds = %AfterCoroSuspend
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2050
  %.not.i.i.i.i52 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i52, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #30
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i:   ; preds = %bb.m, %bb.l, %AfterCoroSuspend
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !2029 ; 5 uses
  %.not.i.i.i1.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i1.i, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = atomicrmw sub ptr %i.aa, i64 8 acq_rel, align 8 ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 16
  br i1 %i.ac, label %bb.o, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.ad = and i64 %i.ab, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.z) #30
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !144
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %i.z) #30, !call_target !2042, !inline_history !121
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

_ZN5folly17CancellationTokenD2Ev.exit.i.i:        ; preds = %bb.q, %bb.p, %bb.n, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !2027 ; 2 uses
  %i.aj = and i64 %i.ai, -4                       ; 2 uses
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  %.not.i.i1.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i1.i.i, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i
  store i64 0, ptr %i.ah, align 8, !tbaa !2043
  %i.al = and i64 %i.ai, 3
  %.not3.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not3.i.i.i.i, label %bb.s, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !144
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ak) #30, !call_target !2048, !inline_history !122
  br label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit

_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit: ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i, %bb.r, %bb.s
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 304)
          to label %CoroEnd unwind label %bb.t

bb.t:                                             ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #28
  unreachable

CoroEnd:                                          ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5folly4coro9Transport5writeERNS_10IOBufQueueENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS_10WriteFlagsEPNS0_11TransportIf9WriteInfoE.resume(ptr noundef nonnull align 8 dereferenceable(288) %0) #2 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %1 = alloca %"class.std::unique_ptr.100", align 8 ; 7 uses
  %2 = alloca %class.anon.395, align 8            ; 4 uses
  %.reload.addr157 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %.reload.addr158 = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %.reload.addr159 = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %.reload.addr160 = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %.reload.addr161 = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  %.reload.addr162 = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %.reload.addr163 = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %.reload.addr168 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 6 uses
  %index = load i8, ptr %index.addr, align 4
  switch i8 %index, label %unreachable [
    i8 0, label %AfterCoroSuspend
    i8 1, label %AfterCoroSuspend78
    i8 2, label %CoroEnd
    i8 3, label %CoroEnd
  ], !prof !5551

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.reload.addr143 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.reload144 = load i64, ptr %.reload.addr143, align 8, !tbaa !5553
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !5553
  %i.a = getelementptr inbounds nuw i8, ptr %.reload, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147  ; 2 uses
  %i.c = trunc i64 %.reload144 to i32
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !144
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i32 noundef %i.c)
          to label %bb.a unwind label %.from.131, !call_target !3031

bb.a:                                             ; preds = %AfterCoroSuspend
  %.reload.addr140 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.reload141 = load ptr, ptr %.reload.addr140, align 8, !tbaa !5553 ; 4 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !147  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr null, ptr %i.h, align 8, !tbaa !3032
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.g, ptr %i.i, align 8, !tbaa !147
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr null, ptr %i.j, align 8, !tbaa !2050
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 16), ptr %.reload.addr157, align 8, !tbaa !144
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 72), ptr %i.k, align 8, !tbaa !144
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 0, ptr %i.l, align 8, !tbaa !3028
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 0, ptr %i.m, align 8, !tbaa !3019
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5554)
  %i.n = getelementptr inbounds nuw i8, ptr %.reload141, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !3033, !noalias !5555 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.reload141, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !3008, !noalias !5555 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !3009, !noalias !5555 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.r
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.reload141, i64 8 ; 3 uses
  br i1 %.not.i.i.i, label %.from...noexc.i.i_crit_edge.i, label %.from.95

.from...noexc.i.i_crit_edge.i:                    ; preds = %bb.a
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !3017, !noalias !5554
  br label %bb.b

.from.95:                                         ; preds = %bb.a
  %i.s = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !5555 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !5558, !noalias !5555 ; 2 uses
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = ptrtoint ptr %i.o to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = load i64, ptr %i.u, align 8, !tbaa !5559, !noalias !5555
  %i.z = add i64 %i.x, %i.y
  store i64 %i.z, ptr %i.u, align 8, !tbaa !5559, !noalias !5555
  %i.aa = ptrtoint ptr %i.s to i64
  br label %bb.b

bb.b:                                             ; preds = %.from.95, %.from...noexc.i.i_crit_edge.i
  %i.ab = phi i64 [ %.pre.i, %.from...noexc.i.i_crit_edge.i ], [ %i.aa, %.from.95 ]
  %.reload.addr146 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.reload147 = load i32, ptr %.reload.addr146, align 8, !tbaa !5553
  store i64 %i.ab, ptr %1, align 8, !tbaa !3017, !alias.scope !5554
  store ptr null, ptr %.phi.trans.insert.i, align 8, !tbaa !3017, !noalias !5554
  %i.ac = getelementptr inbounds nuw i8, ptr %.reload141, i64 64
  store i64 0, ptr %i.ac, align 8, !tbaa !3034, !noalias !5554
  store ptr null, ptr %i.n, align 8, !tbaa !3033, !noalias !5554
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false), !noalias !5554
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !144
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull %i.k, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.reload147)
          to label %bb.c unwind label %.from.128, !call_target !3039

bb.c:                                             ; preds = %bb.b
  %i.ah = load ptr, ptr %1, align 8, !tbaa !3017  ; 3 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i: ; preds = %bb.c
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ah) #30
  call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.ah) #30
  br label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.ai = invoke noundef ptr @folly_coro_async_malloc(i64 noundef 304)
          to label %.from._ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit unwind label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit34.from.108, !inline_history !127 ; 9 uses

.from._ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit
  store ptr @_ZN5folly4coro21TransportCallbackBase4waitEv.resume, ptr %i.ai, align 8
  %destroy.addr.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @_ZN5folly4coro21TransportCallbackBase4waitEv.destroy, ptr %destroy.addr.i, align 8
  %.reload.addr162.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.spill.addr.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 280
  store ptr %.reload.addr157, ptr %.spill.addr.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr162.i, i8 0, i64 58, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  store ptr null, ptr %i.aj, align 8, !tbaa !161
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseINS_4UnitEEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_, ptr %i.ak, align 8, !tbaa !163
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  store i32 2, ptr %i.al, align 8, !tbaa !170
  %index.addr163.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 288
  store i8 0, ptr %index.addr163.i, align 8
  store ptr %i.ai, ptr %.reload.addr161, align 8, !alias.scope !5560
  invoke void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformINS1_12TryAwaitableINS0_4TaskIS3_EEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOSB_(ptr dead_on_unwind nonnull writable sret(%"class.folly::coro::detail::TryAwaitable") align 8 %.reload.addr160, ptr noundef nonnull align 8 dereferenceable(59) %.reload.addr168, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr161)
          to label %bb.d unwind label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit

bb.d:                                             ; preds = %.from._ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit
  store ptr %.reload.addr160, ptr %.reload.addr159, align 8
  store i8 1, ptr %index.addr, align 4
  %i.am = call noundef ptr @_ZN5folly4coro4TaskINS_4UnitEE7Awaiter13await_suspendINS0_6detail11TaskPromiseIS2_EEEEDaNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr160, ptr nonnull %0) #30 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  musttail call void %i.an(ptr nonnull %i.am)
  ret void

.from.131:                                        ; preds = %AfterCoroSuspend
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ad

.from.128:                                        ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.from.130

_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit34.from.108: ; preds = %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.130

AfterCoroSuspend78:                               ; preds = %resume.entry
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5561)
  %i.ar = load ptr, ptr %.reload.addr159, align 8, !tbaa !3068, !noalias !5561, !nonnull !682, !align !2067 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5562)
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2161, !noalias !5563 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  %i.au = load i32, ptr %i.at, align 8, !tbaa !170, !noalias !5563 ; 2 uses
  store i32 %i.au, ptr %.reload.addr158, align 8, !tbaa !170, !alias.scope !5563
  %cond.i.i.i.i = icmp eq i32 %i.au, 1
  br i1 %cond.i.i.i.i, label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from., label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i

_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from.:   ; preds = %AfterCoroSuspend78
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5564)
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !5565
  store i64 %i.ax, ptr %i.av, align 8, !alias.scope !5565
  store i64 0, ptr %i.aw, align 8, !noalias !5565
  %.sroa.0.0.copyload.i.i.i.i.i.pre.i.i = load ptr, ptr %i.ar, align 8, !tbaa !167, !noalias !5563
  br label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i

_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i:         ; preds = %AfterCoroSuspend78, %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from.
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.i.i, %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from. ], [ %i.as, %AfterCoroSuspend78 ] ; 2 uses
  store i64 0, ptr %i.ar, align 8, !tbaa !167, !noalias !5563
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  invoke void %i.az(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i)
          to label %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit unwind label %bb.e, !noalias !5563, !inline_history !128

bb.e:                                             ; preds = %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #28, !noalias !5563
  unreachable

_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit: ; preds = %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i
  %i.bc = load ptr, ptr %.reload.addr160, align 8, !tbaa !2161 ; 3 uses
  %.not.i.i27 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i27, label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit28, label %bb.f

bb.f:                                             ; preds = %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  invoke void %i.be(ptr nonnull %i.bc)
          to label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit28 unwind label %bb.g, !inline_history !128

bb.g:                                             ; preds = %bb.f
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #28
  unreachable

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit28: ; preds = %bb.f, %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
  %i.bh = load ptr, ptr %.reload.addr161, align 8, !tbaa !2161 ; 3 uses
  %.not.i.i29 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i29, label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit28
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  invoke void %i.bj(ptr nonnull %i.bh)
          to label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit unwind label %bb.i, !inline_history !128

bb.i:                                             ; preds = %bb.h
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  tail call void @__clang_call_terminate(ptr %i.bl) #28
  unreachable

_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit:          ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit28, %bb.h
  %i.bm = load i32, ptr %.reload.addr158, align 8, !tbaa !170
  %i.bn = icmp eq i32 %i.bm, 1
  br i1 %i.bn, label %bb.j, label %bb.q

bb.j:                                             ; preds = %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit
  %.reload.addr155 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.reload156 = load ptr, ptr %.reload.addr155, align 8, !tbaa !5553 ; 2 uses
  %.not21 = icmp eq ptr %.reload156, null
  br i1 %.not21, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !3028
  store i64 %i.bp, ptr %.reload156, align 8, !tbaa !3070
  br label %bb.n

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit: ; preds = %.from._ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit
  %i.bq = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.br = load ptr, ptr %.reload.addr161, align 8, !tbaa !2161 ; 3 uses
  %.not.i.i31 = icmp eq ptr %i.br, null
  br i1 %.not.i.i31, label %.from.130, label %bb.l

bb.l:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr nonnull %i.br)
          to label %.from.130 unwind label %bb.m, !inline_history !128

bb.m:                                             ; preds = %bb.l
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #28
  unreachable

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5566)
  %i.by = load i64, ptr %i.bx, align 8, !noalias !5566 ; 3 uses
  store i64 %i.by, ptr %.reload.addr162, align 8, !alias.scope !5566
  store i64 0, ptr %i.bx, align 8, !noalias !5566
  %i.bz = load i32, ptr %i.bw, align 8, !tbaa !2133
  store i32 2, ptr %i.bw, align 8, !tbaa !2133
  %cond.i.i.i = icmp eq i32 %i.bz, 1
  br i1 %cond.i.i.i, label %bb.o, label %bb.p, !prof !2134

bb.o:                                             ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !2050
  %.not.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i, label %bb.p, label %.from.113

.from.113:                                        ; preds = %bb.o
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ca) #30
  %.pre = load i64, ptr %.reload.addr162, align 8, !noalias !5567
  br label %bb.p

bb.p:                                             ; preds = %.from.113, %bb.n, %bb.o
  %i.cc = phi i64 [ %.pre, %.from.113 ], [ %i.by, %bb.n ], [ %i.by, %bb.o ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5567)
  store i64 %i.cc, ptr %i.cd, align 8, !alias.scope !5567
  store i64 0, ptr %.reload.addr162, align 8, !noalias !5567
  store i32 1, ptr %i.bw, align 8, !tbaa !170
  store i8 2, ptr %index.addr, align 4
  %i.ce = tail call noundef ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseINS_4UnitEEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr159, ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr168) #30 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8
  musttail call void %i.cf(ptr nonnull %i.ce)
  ret void

bb.q:                                             ; preds = %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ci = load i8, ptr %i.cg, align 8, !tbaa !3019, !range !2037, !noundef !682
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %.reload.addr153 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.reload154 = load ptr, ptr %.reload.addr153, align 8, !tbaa !5553 ; 2 uses
  %.not = icmp eq ptr %.reload154, null
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !3028
  store i64 %i.cl, ptr %.reload154, align 8, !tbaa !3070
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ch, ptr %2, align 8, !noalias !5568
  call void @_ZN5folly6detail24make_exception_ptr_with_ERKNS0_28make_exception_ptr_with_arg_EPv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 dereferenceable(8) %.reload.addr163, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeINS_20AsyncSocketExceptionEJOS3_EEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrES9_E3arg, ptr noundef nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !2133
  store i32 2, ptr %i.cm, align 8, !tbaa !2133
  %cond.i.i.i39 = icmp eq i32 %i.cn, 1
  br i1 %cond.i.i.i39, label %bb.u, label %bb.w, !prof !2134

bb.u:                                             ; preds = %bb.t
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !2050
  %.not.i.i.i.i.i40 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i.i40, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.co) #30
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.u, %bb.v
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !5569)
  %i.cr = load i64, ptr %.reload.addr163, align 8, !noalias !5569
  store i64 %i.cr, ptr %i.cq, align 8, !alias.scope !5569
  store i64 0, ptr %.reload.addr163, align 8, !noalias !5569
  store i32 1, ptr %i.cm, align 8, !tbaa !170
  store i8 3, ptr %index.addr, align 4
  %i.cs = call noundef ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseINS_4UnitEEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr160, ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr168) #30 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8
  musttail call void %i.ct(ptr nonnull %i.cs)
  ret void

bb.x:                                             ; preds = %bb.q
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !2133
  store i32 2, ptr %i.cu, align 8, !tbaa !2133
  %cond.i.i.i47 = icmp eq i32 %i.cv, 1
  br i1 %cond.i.i.i47, label %bb.y, label %.thread, !prof !2134

bb.y:                                             ; preds = %bb.x
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !2050
  %.not.i.i.i.i.i48 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i.i48, label %.thread, label %bb.z

.thread:                                          ; preds = %bb.y, %bb.x
  store i32 0, ptr %i.cu, align 8, !tbaa !170
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit

bb.z:                                             ; preds = %bb.y
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cw) #30
  %.pre2 = load i32, ptr %.reload.addr158, align 8, !tbaa !170
  %i.cy = icmp eq i32 %.pre2, 1
  store i32 0, ptr %i.cu, align 8, !tbaa !170
  br i1 %i.cy, label %bb.aa, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, !prof !3071

bb.aa:                                            ; preds = %bb.z
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !2050
  %.not.i.i.i49 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i49, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from.

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from.: ; preds = %bb.aa
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cz) #30
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit:     ; preds = %.thread, %bb.aa, %bb.z, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from.
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 16), ptr %.reload.addr157, align 8, !tbaa !144
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 72), ptr %i.db, align 8, !tbaa !144
  %i.dc = load i8, ptr %i.cg, align 8, !tbaa !3019, !range !2037, !noundef !682
  %i.dd = trunc nuw i8 %i.dc to i1
  store i8 0, ptr %i.cg, align 8, !tbaa !3019
  br i1 %i.dd, label %bb.ab, label %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i

bb.ab:                                            ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(32) %i.ch) #30, !inline_history !3020
  br label %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i: ; preds = %bb.ab, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %.reload.addr157, align 8, !tbaa !144
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !2050
  %.not.i.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i, label %_ZN5folly4coro13WriteCallbackD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.de) #30, !inline_history !3021
  br label %_ZN5folly4coro13WriteCallbackD2Ev.exit

_ZN5folly4coro13WriteCallbackD2Ev.exit:           ; preds = %bb.ac, %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dg) #30, !inline_history !3021
  br label %bb.ae

.from.130:                                        ; preds = %.from.128, %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit34.from.108, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit, %bb.l
  %.pn22.pn.pn.pn = phi { ptr, i32 } [ %i.ap, %.from.128 ], [ %i.aq, %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit34.from.108 ], [ %i.bq, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit ], [ %i.bq, %bb.l ]
  call void @_ZN5folly4coro13WriteCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.reload.addr157) #30
  br label %bb.ad

bb.ad:                                            ; preds = %.from.130, %.from.131
  %.pn22.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn22.pn.pn.pn, %.from.130 ], [ %i.ao, %.from.131 ]
  %.8 = extractvalue { ptr, i32 } %.pn22.pn.pn.pn.pn, 0
  %i.dh = call ptr @__cxa_begin_catch(ptr %.8) #30 ; 0 uses
  call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr168) #30
  invoke void @__cxa_end_catch()
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad, %_ZN5folly4coro13WriteCallbackD2Ev.exit
  store ptr null, ptr %0, align 8
  store i8 4, ptr %index.addr, align 4
  %i.di = call noundef ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseINS_4UnitEEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr161, ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr168) #30 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8
  musttail call void %i.dj(ptr nonnull %i.di)
  ret void

CoroEnd:                                          ; preds = %resume.entry, %resume.entry
  ret void

bb.af:                                            ; preds = %bb.ad
  %i.dk = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  store i8 4, ptr %index.addr, align 4
  resume { ptr, i32 } %i.dk

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro9Transport5writeERNS_10IOBufQueueENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS_10WriteFlagsEPNS0_11TransportIf9WriteInfoE.destroy(ptr noundef nonnull align 8 dereferenceable(288) %0) #1 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr157 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.reload.addr158 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.reload.addr161 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 284
  %index = load i8, ptr %index.addr, align 4
  switch i8 %index, label %unreachable [
    i8 0, label %AfterCoroSuspend
    i8 1, label %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
    i8 2, label %AfterCoroSuspend82
    i8 3, label %AfterCoroSuspend86
    i8 4, label %AfterCoroSuspend
  ], !prof !5570

_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit: ; preds = %resume.entry
  %.reload.addr160 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.a = load ptr, ptr %.reload.addr160, align 8, !tbaa !2161 ; 3 uses
  %.not.i.i27 = icmp eq ptr %i.a, null
  br i1 %.not.i.i27, label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit28, label %bb.a

bb.a:                                             ; preds = %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr nonnull %i.a)
          to label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit28 unwind label %bb.b, !inline_history !128

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #28
  unreachable

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit28: ; preds = %bb.a, %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
  %i.f = load ptr, ptr %.reload.addr161, align 8, !tbaa !2161 ; 3 uses
  %.not.i.i29 = icmp eq ptr %i.f, null
  br i1 %.not.i.i29, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit28
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr nonnull %i.f)
          to label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit unwind label %bb.d, !inline_history !128

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #28
  unreachable

AfterCoroSuspend82:                               ; preds = %resume.entry
  %.reload.addr162 = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.k = load ptr, ptr %.reload.addr162, align 8, !tbaa !2050
  %.not.i.i.i37 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i37, label %.from._ZN5folly4coro8co_errorD2Ev.exit38, label %.from._ZN5folly4coro8co_errorD2Ev.exit38.sink.split

AfterCoroSuspend86:                               ; preds = %resume.entry
  %.reload.addr163 = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.l = load ptr, ptr %.reload.addr163, align 8, !tbaa !2050
  %.not.i.i.i45 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i45, label %.from._ZN5folly4coro8co_errorD2Ev.exit38, label %.from._ZN5folly4coro8co_errorD2Ev.exit38.sink.split

.from._ZN5folly4coro8co_errorD2Ev.exit38.sink.split: ; preds = %AfterCoroSuspend86, %AfterCoroSuspend82
  %.reload.addr163.sink = phi ptr [ %.reload.addr162, %AfterCoroSuspend82 ], [ %.reload.addr163, %AfterCoroSuspend86 ]
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr163.sink) #30
  br label %.from._ZN5folly4coro8co_errorD2Ev.exit38

.from._ZN5folly4coro8co_errorD2Ev.exit38:         ; preds = %.from._ZN5folly4coro8co_errorD2Ev.exit38.sink.split, %AfterCoroSuspend86, %AfterCoroSuspend82
  %i.m = load i32, ptr %.reload.addr158, align 8, !tbaa !170
  %cond.i = icmp eq i32 %i.m, 1
  br i1 %cond.i, label %bb.e, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, !prof !2134

bb.e:                                             ; preds = %.from._ZN5folly4coro8co_errorD2Ev.exit38
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2050
  %.not.i.i.i49 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i49, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from.

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from.: ; preds = %bb.e
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #30
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit:     ; preds = %bb.e, %.from._ZN5folly4coro8co_errorD2Ev.exit38, %bb.c, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit28, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from.
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 16), ptr %.reload.addr157, align 8, !tbaa !144
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 72), ptr %i.q, align 8, !tbaa !144
  %i.r = load i8, ptr %i.p, align 8, !tbaa !3019, !range !2037, !noundef !682
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.p, align 8, !tbaa !3019
  br i1 %i.s, label %bb.f, label %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i

bb.f:                                             ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(32) %i.t) #30, !inline_history !3020
  br label %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i: ; preds = %bb.f, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %.reload.addr157, align 8, !tbaa !144
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2050
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZN5folly4coro13WriteCallbackD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #30, !inline_history !3021
  br label %_ZN5folly4coro13WriteCallbackD2Ev.exit

_ZN5folly4coro13WriteCallbackD2Ev.exit:           ; preds = %bb.g, %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #30, !inline_history !3021
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %resume.entry, %_ZN5folly4coro13WriteCallbackD2Ev.exit, %resume.entry
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.y = load i32, ptr %i.x, align 8, !tbaa !170
  %cond.i.i = icmp eq i32 %i.y, 1
  br i1 %cond.i.i, label %bb.h, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i, !prof !2134

bb.h:                                             ; preds = %AfterCoroSuspend
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !2050
  %.not.i.i.i.i54 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i54, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #30
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i:   ; preds = %bb.i, %bb.h, %AfterCoroSuspend
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2029 ; 5 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i1.i, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = atomicrmw sub ptr %i.ad, i64 8 acq_rel, align 8 ; 2 uses
  %i.af = icmp ult i64 %i.ae, 16
  br i1 %i.af, label %bb.k, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.ag = and i64 %i.ae, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.ac) #30
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !144
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %i.ac) #30, !call_target !2042, !inline_history !121
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

_ZN5folly17CancellationTokenD2Ev.exit.i.i:        ; preds = %bb.m, %bb.l, %bb.j, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !2027 ; 2 uses
  %i.am = and i64 %i.al, -4                       ; 2 uses
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %.not.i.i1.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i1.i.i, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i
  store i64 0, ptr %i.ak, align 8, !tbaa !2043
  %i.ao = and i64 %i.al, 3
  %.not3.i.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not3.i.i.i.i, label %bb.o, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !144
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.an) #30, !call_target !2048, !inline_history !122
  br label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit

_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit: ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i, %bb.n, %bb.o
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 288)
          to label %CoroEnd unwind label %bb.p

bb.p:                                             ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #28
  unreachable

CoroEnd:                                          ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5folly4coro9Transport5writeENS_5RangeIPKhEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS_10WriteFlagsEPNS0_11TransportIf9WriteInfoE.resume(ptr noundef nonnull align 8 dereferenceable(296) %0) #2 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %1 = alloca %"class.std::unique_ptr.100", align 8 ; 7 uses
  %2 = alloca %class.anon.395, align 8            ; 4 uses
  %.reload.addr157 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %.reload.addr158 = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %.reload.addr159 = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %.reload.addr160 = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %.reload.addr161 = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  %.reload.addr162 = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %.reload.addr163 = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %.reload.addr168 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 6 uses
  %index = load i8, ptr %index.addr, align 4
  switch i8 %index, label %unreachable [
    i8 0, label %AfterCoroSuspend
    i8 1, label %AfterCoroSuspend76
    i8 2, label %CoroEnd
    i8 3, label %CoroEnd
  ], !prof !5587

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.reload.addr143 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.reload144 = load i64, ptr %.reload.addr143, align 8, !tbaa !5589
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !5589
  %i.a = getelementptr inbounds nuw i8, ptr %.reload, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147  ; 2 uses
  %i.c = trunc i64 %.reload144 to i32
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !144
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i32 noundef %i.c)
          to label %bb.a unwind label %.from.130, !call_target !3031

bb.a:                                             ; preds = %AfterCoroSuspend
  %.reload.addr140 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.reload141 = load ptr, ptr %.reload.addr140, align 8, !tbaa !5589
  %.reload.addr137 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.reload138 = load ptr, ptr %.reload.addr137, align 8, !tbaa !5589 ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !147  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr null, ptr %i.h, align 8, !tbaa !3032
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.g, ptr %i.i, align 8, !tbaa !147
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr null, ptr %i.j, align 8, !tbaa !2050
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 16), ptr %.reload.addr157, align 8, !tbaa !144
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 72), ptr %i.k, align 8, !tbaa !144
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 0, ptr %i.l, align 8, !tbaa !3028
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 0, ptr %i.m, align 8, !tbaa !3019
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.n = ptrtoint ptr %.reload141 to i64
  %i.o = ptrtoint ptr %.reload138 to i64
  %i.p = sub i64 %i.n, %i.o
  invoke void @_ZN5folly5IOBuf10wrapBufferEPKvm(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.100") align 8 %1, ptr noundef %.reload138, i64 noundef %i.p)
          to label %bb.b unwind label %.from.97

bb.b:                                             ; preds = %bb.a
  %.reload.addr146 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.reload147 = load i32, ptr %.reload.addr146, align 8, !tbaa !5589
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !144
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %i.k, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.reload147)
          to label %bb.c unwind label %.from.95, !call_target !3039

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %1, align 8, !tbaa !3017   ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i: ; preds = %bb.c
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.u) #30
  call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.u) #30
  br label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.v = invoke noundef ptr @folly_coro_async_malloc(i64 noundef 304)
          to label %.from._ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit unwind label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit33.from.108, !inline_history !127 ; 9 uses

.from._ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit
  store ptr @_ZN5folly4coro21TransportCallbackBase4waitEv.resume, ptr %i.v, align 8
  %destroy.addr.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_ZN5folly4coro21TransportCallbackBase4waitEv.destroy, ptr %destroy.addr.i, align 8
  %.reload.addr162.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.spill.addr.i = getelementptr inbounds nuw i8, ptr %i.v, i64 280
  store ptr %.reload.addr157, ptr %.spill.addr.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr162.i, i8 0, i64 58, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  store ptr null, ptr %i.w, align 8, !tbaa !161
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseINS_4UnitEEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_, ptr %i.x, align 8, !tbaa !163
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  store i32 2, ptr %i.y, align 8, !tbaa !170
  %index.addr163.i = getelementptr inbounds nuw i8, ptr %i.v, i64 288
  store i8 0, ptr %index.addr163.i, align 8
  store ptr %i.v, ptr %.reload.addr161, align 8, !alias.scope !5590
  invoke void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformINS1_12TryAwaitableINS0_4TaskIS3_EEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOSB_(ptr dead_on_unwind nonnull writable sret(%"class.folly::coro::detail::TryAwaitable") align 8 %.reload.addr160, ptr noundef nonnull align 8 dereferenceable(59) %.reload.addr168, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr161)
          to label %bb.d unwind label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit

bb.d:                                             ; preds = %.from._ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit
  store ptr %.reload.addr160, ptr %.reload.addr159, align 8
  store i8 1, ptr %index.addr, align 4
  %i.z = call noundef ptr @_ZN5folly4coro4TaskINS_4UnitEE7Awaiter13await_suspendINS0_6detail11TaskPromiseIS2_EEEEDaNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr160, ptr nonnull %0) #30 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  musttail call void %i.aa(ptr nonnull %i.z)
  ret void

.from.130:                                        ; preds = %AfterCoroSuspend
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ad

.from.97:                                         ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.128

.from.95:                                         ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #30
  br label %.from.128

.from.128:                                        ; preds = %.from.97, %.from.95
  %.pn = phi { ptr, i32 } [ %i.ad, %.from.95 ], [ %i.ac, %.from.97 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.from.129

_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit33.from.108: ; preds = %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.129

AfterCoroSuspend76:                               ; preds = %resume.entry
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5591)
  %i.af = load ptr, ptr %.reload.addr159, align 8, !tbaa !3068, !noalias !5591, !nonnull !682, !align !2067 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5592)
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2161, !noalias !5593 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !170, !noalias !5593 ; 2 uses
  store i32 %i.ai, ptr %.reload.addr158, align 8, !tbaa !170, !alias.scope !5593
  %cond.i.i.i.i = icmp eq i32 %i.ai, 1
  br i1 %cond.i.i.i.i, label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from., label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i

_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from.:   ; preds = %AfterCoroSuspend76
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5594)
  %i.al = load i64, ptr %i.ak, align 8, !noalias !5595
  store i64 %i.al, ptr %i.aj, align 8, !alias.scope !5595
  store i64 0, ptr %i.ak, align 8, !noalias !5595
  %.sroa.0.0.copyload.i.i.i.i.i.pre.i.i = load ptr, ptr %i.af, align 8, !tbaa !167, !noalias !5593
  br label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i

_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i:         ; preds = %AfterCoroSuspend76, %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from.
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.i.i, %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from. ], [ %i.ag, %AfterCoroSuspend76 ] ; 2 uses
  store i64 0, ptr %i.af, align 8, !tbaa !167, !noalias !5593
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  invoke void %i.an(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i)
          to label %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit unwind label %bb.e, !noalias !5593, !inline_history !128

bb.e:                                             ; preds = %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #28, !noalias !5593
  unreachable

_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit: ; preds = %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i
  %i.aq = load ptr, ptr %.reload.addr160, align 8, !tbaa !2161 ; 3 uses
  %.not.i.i26 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i26, label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit27, label %bb.f

bb.f:                                             ; preds = %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr nonnull %i.aq)
          to label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit27 unwind label %bb.g, !inline_history !128

bb.g:                                             ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #28
  unreachable

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit27: ; preds = %bb.f, %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
  %i.av = load ptr, ptr %.reload.addr161, align 8, !tbaa !2161 ; 3 uses
  %.not.i.i28 = icmp eq ptr %i.av, null
  br i1 %.not.i.i28, label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit27
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr nonnull %i.av)
          to label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit unwind label %bb.i, !inline_history !128

bb.i:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  tail call void @__clang_call_terminate(ptr %i.az) #28
  unreachable

_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit:          ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit27, %bb.h
  %i.ba = load i32, ptr %.reload.addr158, align 8, !tbaa !170
  %i.bb = icmp eq i32 %i.ba, 1
  br i1 %i.bb, label %bb.j, label %bb.q

bb.j:                                             ; preds = %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit
  %.reload.addr155 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.reload156 = load ptr, ptr %.reload.addr155, align 8, !tbaa !5589 ; 2 uses
  %.not20 = icmp eq ptr %.reload156, null
  br i1 %.not20, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !3028
  store i64 %i.bd, ptr %.reload156, align 8, !tbaa !3070
  br label %bb.n

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit: ; preds = %.from._ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit
  %i.be = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.bf = load ptr, ptr %.reload.addr161, align 8, !tbaa !2161 ; 3 uses
  %.not.i.i30 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i30, label %.from.129, label %bb.l

bb.l:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  invoke void %i.bh(ptr nonnull %i.bf)
          to label %.from.129 unwind label %bb.m, !inline_history !128

bb.m:                                             ; preds = %bb.l
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #28
  unreachable

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5596)
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !5596 ; 3 uses
  store i64 %i.bm, ptr %.reload.addr162, align 8, !alias.scope !5596
  store i64 0, ptr %i.bl, align 8, !noalias !5596
  %i.bn = load i32, ptr %i.bk, align 8, !tbaa !2133
  store i32 2, ptr %i.bk, align 8, !tbaa !2133
  %cond.i.i.i = icmp eq i32 %i.bn, 1
  br i1 %cond.i.i.i, label %bb.o, label %bb.p, !prof !2134

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !2050
  %.not.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i, label %bb.p, label %.from.113

.from.113:                                        ; preds = %bb.o
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bo) #30
  %.pre = load i64, ptr %.reload.addr162, align 8, !noalias !5597
  br label %bb.p

bb.p:                                             ; preds = %.from.113, %bb.n, %bb.o
  %i.bq = phi i64 [ %.pre, %.from.113 ], [ %i.bm, %bb.n ], [ %i.bm, %bb.o ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5597)
  store i64 %i.bq, ptr %i.br, align 8, !alias.scope !5597
  store i64 0, ptr %.reload.addr162, align 8, !noalias !5597
  store i32 1, ptr %i.bk, align 8, !tbaa !170
  store i8 2, ptr %index.addr, align 4
  %i.bs = tail call noundef ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseINS_4UnitEEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr159, ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr168) #30 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8
  musttail call void %i.bt(ptr nonnull %i.bs)
  ret void

bb.q:                                             ; preds = %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bw = load i8, ptr %i.bu, align 8, !tbaa !3019, !range !2037, !noundef !682
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %.reload.addr153 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.reload154 = load ptr, ptr %.reload.addr153, align 8, !tbaa !5589 ; 2 uses
  %.not = icmp eq ptr %.reload154, null
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !3028
  store i64 %i.bz, ptr %.reload154, align 8, !tbaa !3070
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.bv, ptr %2, align 8, !noalias !5598
  call void @_ZN5folly6detail24make_exception_ptr_with_ERKNS0_28make_exception_ptr_with_arg_EPv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 dereferenceable(8) %.reload.addr163, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeINS_20AsyncSocketExceptionEJOS3_EEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrES9_E3arg, ptr noundef nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !2133
  store i32 2, ptr %i.ca, align 8, !tbaa !2133
  %cond.i.i.i37 = icmp eq i32 %i.cb, 1
  br i1 %cond.i.i.i37, label %bb.u, label %bb.w, !prof !2134

bb.u:                                             ; preds = %bb.t
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !2050
  %.not.i.i.i.i.i38 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i38, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cc) #30
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.u, %bb.v
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !5599)
  %i.cf = load i64, ptr %.reload.addr163, align 8, !noalias !5599
  store i64 %i.cf, ptr %i.ce, align 8, !alias.scope !5599
  store i64 0, ptr %.reload.addr163, align 8, !noalias !5599
  store i32 1, ptr %i.ca, align 8, !tbaa !170
  store i8 3, ptr %index.addr, align 4
  %i.cg = call noundef ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseINS_4UnitEEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr160, ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr168) #30 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8
  musttail call void %i.ch(ptr nonnull %i.cg)
  ret void

bb.x:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !2133
  store i32 2, ptr %i.ci, align 8, !tbaa !2133
  %cond.i.i.i45 = icmp eq i32 %i.cj, 1
  br i1 %cond.i.i.i45, label %bb.y, label %.thread, !prof !2134

bb.y:                                             ; preds = %bb.x
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !2050
  %.not.i.i.i.i.i46 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i.i46, label %.thread, label %bb.z

.thread:                                          ; preds = %bb.y, %bb.x
  store i32 0, ptr %i.ci, align 8, !tbaa !170
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit

bb.z:                                             ; preds = %bb.y
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ck) #30
  %.pre2 = load i32, ptr %.reload.addr158, align 8, !tbaa !170
  %i.cm = icmp eq i32 %.pre2, 1
  store i32 0, ptr %i.ci, align 8, !tbaa !170
  br i1 %i.cm, label %bb.aa, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, !prof !3071

bb.aa:                                            ; preds = %bb.z
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !2050
  %.not.i.i.i47 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i47, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from.

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from.: ; preds = %bb.aa
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cn) #30
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit:     ; preds = %.thread, %bb.aa, %bb.z, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from.
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 16), ptr %.reload.addr157, align 8, !tbaa !144
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 72), ptr %i.cp, align 8, !tbaa !144
  %i.cq = load i8, ptr %i.bu, align 8, !tbaa !3019, !range !2037, !noundef !682
  %i.cr = trunc nuw i8 %i.cq to i1
  store i8 0, ptr %i.bu, align 8, !tbaa !3019
  br i1 %i.cr, label %bb.ab, label %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i

bb.ab:                                            ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(32) %i.bv) #30, !inline_history !3020
  br label %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i: ; preds = %bb.ab, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %.reload.addr157, align 8, !tbaa !144
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !2050
  %.not.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i, label %_ZN5folly4coro13WriteCallbackD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cs) #30, !inline_history !3021
  br label %_ZN5folly4coro13WriteCallbackD2Ev.exit

_ZN5folly4coro13WriteCallbackD2Ev.exit:           ; preds = %bb.ac, %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cu) #30, !inline_history !3021
  br label %bb.ae

.from.129:                                        ; preds = %.from.128, %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit33.from.108, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit, %bb.l
  %.pn21.pn.pn.pn = phi { ptr, i32 } [ %.pn, %.from.128 ], [ %i.ae, %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit33.from.108 ], [ %i.be, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit ], [ %i.be, %bb.l ]
  call void @_ZN5folly4coro13WriteCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.reload.addr157) #30
  br label %bb.ad

bb.ad:                                            ; preds = %.from.129, %.from.130
  %.pn21.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn21.pn.pn.pn, %.from.129 ], [ %i.ab, %.from.130 ]
  %.8 = extractvalue { ptr, i32 } %.pn21.pn.pn.pn.pn, 0
  %i.cv = call ptr @__cxa_begin_catch(ptr %.8) #30 ; 0 uses
  call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr168) #30
  invoke void @__cxa_end_catch()
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad, %_ZN5folly4coro13WriteCallbackD2Ev.exit
  store ptr null, ptr %0, align 8
  store i8 4, ptr %index.addr, align 4
  %i.cw = call noundef ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseINS_4UnitEEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr161, ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr168) #30 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8
  musttail call void %i.cx(ptr nonnull %i.cw)
  ret void

CoroEnd:                                          ; preds = %resume.entry, %resume.entry
  ret void

bb.af:                                            ; preds = %bb.ad
  %i.cy = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  store i8 4, ptr %index.addr, align 4
  resume { ptr, i32 } %i.cy

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro9Transport5writeENS_5RangeIPKhEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS_10WriteFlagsEPNS0_11TransportIf9WriteInfoE.destroy(ptr noundef nonnull align 8 dereferenceable(296) %0) #1 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr157 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.reload.addr158 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.reload.addr161 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 292
  %index = load i8, ptr %index.addr, align 4
  switch i8 %index, label %unreachable [
    i8 0, label %AfterCoroSuspend
    i8 1, label %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
    i8 2, label %AfterCoroSuspend80
    i8 3, label %AfterCoroSuspend84
    i8 4, label %AfterCoroSuspend
  ], !prof !5600

_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit: ; preds = %resume.entry
  %.reload.addr160 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.a = load ptr, ptr %.reload.addr160, align 8, !tbaa !2161 ; 3 uses
  %.not.i.i26 = icmp eq ptr %i.a, null
  br i1 %.not.i.i26, label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit27, label %bb.a

bb.a:                                             ; preds = %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr nonnull %i.a)
          to label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit27 unwind label %bb.b, !inline_history !128

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #28
  unreachable

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit27: ; preds = %bb.a, %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
  %i.f = load ptr, ptr %.reload.addr161, align 8, !tbaa !2161 ; 3 uses
  %.not.i.i28 = icmp eq ptr %i.f, null
  br i1 %.not.i.i28, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit27
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr nonnull %i.f)
          to label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit unwind label %bb.d, !inline_history !128

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #28
  unreachable

AfterCoroSuspend80:                               ; preds = %resume.entry
  %.reload.addr162 = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.k = load ptr, ptr %.reload.addr162, align 8, !tbaa !2050
  %.not.i.i.i35 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i35, label %.from._ZN5folly4coro8co_errorD2Ev.exit36, label %.from._ZN5folly4coro8co_errorD2Ev.exit36.sink.split

AfterCoroSuspend84:                               ; preds = %resume.entry
  %.reload.addr163 = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.l = load ptr, ptr %.reload.addr163, align 8, !tbaa !2050
  %.not.i.i.i43 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i43, label %.from._ZN5folly4coro8co_errorD2Ev.exit36, label %.from._ZN5folly4coro8co_errorD2Ev.exit36.sink.split

.from._ZN5folly4coro8co_errorD2Ev.exit36.sink.split: ; preds = %AfterCoroSuspend84, %AfterCoroSuspend80
  %.reload.addr163.sink = phi ptr [ %.reload.addr162, %AfterCoroSuspend80 ], [ %.reload.addr163, %AfterCoroSuspend84 ]
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr163.sink) #30
  br label %.from._ZN5folly4coro8co_errorD2Ev.exit36

.from._ZN5folly4coro8co_errorD2Ev.exit36:         ; preds = %.from._ZN5folly4coro8co_errorD2Ev.exit36.sink.split, %AfterCoroSuspend84, %AfterCoroSuspend80
  %i.m = load i32, ptr %.reload.addr158, align 8, !tbaa !170
  %cond.i = icmp eq i32 %i.m, 1
  br i1 %cond.i, label %bb.e, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, !prof !2134

bb.e:                                             ; preds = %.from._ZN5folly4coro8co_errorD2Ev.exit36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2050
  %.not.i.i.i47 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i47, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from.

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from.: ; preds = %bb.e
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #30
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit:     ; preds = %bb.e, %.from._ZN5folly4coro8co_errorD2Ev.exit36, %bb.c, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit27, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from.
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 16), ptr %.reload.addr157, align 8, !tbaa !144
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 72), ptr %i.q, align 8, !tbaa !144
  %i.r = load i8, ptr %i.p, align 8, !tbaa !3019, !range !2037, !noundef !682
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.p, align 8, !tbaa !3019
  br i1 %i.s, label %bb.f, label %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i

bb.f:                                             ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(32) %i.t) #30, !inline_history !3020
  br label %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i: ; preds = %bb.f, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %.reload.addr157, align 8, !tbaa !144
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2050
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZN5folly4coro13WriteCallbackD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #30, !inline_history !3021
  br label %_ZN5folly4coro13WriteCallbackD2Ev.exit

_ZN5folly4coro13WriteCallbackD2Ev.exit:           ; preds = %bb.g, %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #30, !inline_history !3021
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %resume.entry, %_ZN5folly4coro13WriteCallbackD2Ev.exit, %resume.entry
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.y = load i32, ptr %i.x, align 8, !tbaa !170
  %cond.i.i = icmp eq i32 %i.y, 1
  br i1 %cond.i.i, label %bb.h, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i, !prof !2134

bb.h:                                             ; preds = %AfterCoroSuspend
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !2050
  %.not.i.i.i.i52 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i52, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #30
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i:   ; preds = %bb.i, %bb.h, %AfterCoroSuspend
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2029 ; 5 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i1.i, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = atomicrmw sub ptr %i.ad, i64 8 acq_rel, align 8 ; 2 uses
  %i.af = icmp ult i64 %i.ae, 16
  br i1 %i.af, label %bb.k, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.ag = and i64 %i.ae, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.ac) #30
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !144
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %i.ac) #30, !call_target !2042, !inline_history !121
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

_ZN5folly17CancellationTokenD2Ev.exit.i.i:        ; preds = %bb.m, %bb.l, %bb.j, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !2027 ; 2 uses
  %i.am = and i64 %i.al, -4                       ; 2 uses
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %.not.i.i1.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i1.i.i, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i
  store i64 0, ptr %i.ak, align 8, !tbaa !2043
  %i.ao = and i64 %i.al, 3
  %.not3.i.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not3.i.i.i.i, label %bb.o, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !144
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.an) #30, !call_target !2048, !inline_history !122
  br label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit

_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit: ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i, %bb.n, %bb.o
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 296)
          to label %CoroEnd unwind label %bb.p

bb.p:                                             ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #28
  unreachable

CoroEnd:                                          ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5folly4coro9Transport4readERNS_10IOBufQueueEmmNSt6chrono8durationIlSt5ratioILl1ELl1000EEEE.resume(ptr noundef nonnull align 8 dereferenceable(416) %0) #2 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %1 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %.reload.addr255 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %.reload.addr256 = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 6 uses
  %.reload.addr257 = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %.reload.addr258 = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 5 uses
  %.reload.addr259 = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 5 uses
  %.reload.addr260 = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %.reload.addr261 = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %.reload.addr266 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 6 uses
  %index = load i8, ptr %index.addr, align 8
  switch i8 %index, label %unreachable [
    i8 0, label %AfterCoroSuspend
    i8 1, label %AfterCoroSuspend103
    i8 2, label %CoroEnd
    i8 3, label %CoroEnd
  ], !prof !5619

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.reload.addr220 = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %.reload221 = load ptr, ptr %.reload.addr220, align 8, !tbaa !5621
  %i.a = getelementptr inbounds nuw i8, ptr %.reload221, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !3072, !range !2037, !noundef !682
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.a, label %bb.d

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store i8 0, ptr %i.a, align 8, !tbaa !3072
  %i.e = load i32, ptr %i.d, align 8, !tbaa !2162
  store i32 2, ptr %i.d, align 8, !tbaa !2162
  %cond.i.i.i = icmp eq i32 %i.e, 1
  br i1 %cond.i.i.i, label %bb.b, label %_ZN5folly4coro6detail11TaskPromiseImE12return_valueIiQnt21IsDeprecatedTryReturnITL0__EEEvOT_.exit, !prof !2134

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2050
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly4coro6detail11TaskPromiseImE12return_valueIiQnt21IsDeprecatedTryReturnITL0__EEEvOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #30
  br label %_ZN5folly4coro6detail11TaskPromiseImE12return_valueIiQnt21IsDeprecatedTryReturnITL0__EEEvOT_.exit

_ZN5folly4coro6detail11TaskPromiseImE12return_valueIiQnt21IsDeprecatedTryReturnITL0__EEEvOT_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.h, align 8, !tbaa !2043
  store i32 0, ptr %i.d, align 8, !tbaa !166
  br label %bb.au

bb.d:                                             ; preds = %AfterCoroSuspend
  %i.i = load ptr, ptr @_ZZN5folly4coro9Transport4readERNS_10IOBufQueueEmmNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8vlocal__, align 8, !tbaa !2140 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %.split

bb.e:                                             ; preds = %bb.d
  %i.k = invoke noundef zeroext i1 @_ZN6google11InitVLOG3__EPNS_8SiteFlagEPiPKci(ptr noundef nonnull @_ZZN5folly4coro9Transport4readERNS_10IOBufQueueEmmNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8vlocal__, ptr noundef nonnull @_ZN3fLI7FLAGS_vE, ptr noundef nonnull @.str.18, i32 noundef 5)
          to label %bb.f unwind label %.from.206

.split:                                           ; preds = %bb.d
  %i.l = load i32, ptr %i.i, align 4, !tbaa !2141
  %i.m = icmp sgt i32 %i.l, 4
  br i1 %i.m, label %bb.g, label %.critedge40

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.g, label %.critedge40

bb.g:                                             ; preds = %bb.f, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  invoke void @_ZN6google10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str.18, i32 noundef 88)
          to label %bb.h unwind label %.from.132

bb.h:                                             ; preds = %bb.g
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.i unwind label %.from.135  ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.44, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.from.135 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.i
  %.reload.addr236 = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.reload237 = load i64, ptr %.reload.addr236, align 8, !tbaa !5621
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef %.reload237)
          to label %.critedge unwind label %.from.135 ; 0 uses

.critedge:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.critedge40

.critedge40:                                      ; preds = %.critedge, %bb.f, %.split
  %.reload.addr231 = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %.reload232 = load ptr, ptr %.reload.addr231, align 8, !tbaa !5621 ; 4 uses
  %i.q = load i8, ptr %.reload232, align 8, !tbaa !5622, !range !2037, !noundef !682
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.k, label %bb.j, !prof !5623

bb.j:                                             ; preds = %.critedge40
  invoke void @_ZN5folly6detail16throw_exception_ISt16invalid_argumentJPKcEEEvDpT0_(ptr noundef nonnull @.str.45) #14
          to label %.noexc unwind label %.from.201

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %.critedge40
  %.reload219 = load ptr, ptr %.reload.addr220, align 8, !tbaa !5621
  %i.s = getelementptr inbounds nuw i8, ptr %.reload232, i64 64
  %i.t = load i64, ptr %i.s, align 8, !tbaa !3034
  %.spill.addr246 = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i64 %i.t, ptr %.spill.addr246, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.reload232, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !3008
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3009
  %.spill.addr249 = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %i.w, ptr %.spill.addr249, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.reload232, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !3033
  %.spill.addr252 = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr %i.y, ptr %.spill.addr252, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.reload219, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !159 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 128 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !3073 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %bb.l, label %_ZN5folly9EventBase5timerEv.exit

bb.l:                                             ; preds = %bb.k
  %i.ad = invoke noalias noundef nonnull dereferenceable(16696) ptr @_Znwm(i64 noundef 16696) #32
          to label %.noexc42 unwind label %.body.from.196 ; 4 uses

.noexc42:                                         ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ae, align 8, !tbaa !2043, !noalias !5624
  invoke void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEC1EPNS_14TimeoutManagerES5_NS7_12InternalEnumES5_(ptr noundef nonnull align 8 dereferenceable(16696) %i.ad, ptr noundef nonnull align 16 dereferenceable(632) %i.aa, i64 %.sroa.0.0.copyload.i.i, i32 noundef 1, i64 -1)
          to label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8newTimerIJPNS_9EventBaseERKS5_EEESt10unique_ptrIS6_NS_18DelayedDestruction10DestructorEEDpOT_.exit.i unwind label %.body.from., !noalias !5624

.body.from.:                                      ; preds = %.noexc42
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 16696) #29, !noalias !5624
  br label %.from..body

_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8newTimerIJPNS_9EventBaseERKS5_EEESt10unique_ptrIS6_NS_18DelayedDestruction10DestructorEEDpOT_.exit.i: ; preds = %.noexc42
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !3073 ; 2 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !3073
  %.not.i.i.i.i.i41 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i41, label %_ZN5folly9EventBase5timerEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8newTimerIJPNS_9EventBaseERKS5_EEESt10unique_ptrIS6_NS_18DelayedDestruction10DestructorEEDpOT_.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 184 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !144
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr noundef nonnull align 8 dereferenceable(13) %i.ah)
          to label %_ZN5folly9EventBase5timerEv.exit.from.._ZNSt10unique_ptrIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEENS0_18DelayedDestruction10DestructorEED2Ev.exit_crit_edge.i unwind label %bb.n, !inline_history !0

_ZN5folly9EventBase5timerEv.exit.from.._ZNSt10unique_ptrIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEENS0_18DelayedDestruction10DestructorEED2Ev.exit_crit_edge.i: ; preds = %bb.m
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !3073
  br label %_ZN5folly9EventBase5timerEv.exit

bb.n:                                             ; preds = %bb.m
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #28
  unreachable

_ZN5folly9EventBase5timerEv.exit:                 ; preds = %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8newTimerIJPNS_9EventBaseERKS5_EEESt10unique_ptrIS6_NS_18DelayedDestruction10DestructorEEDpOT_.exit.i, %bb.k, %_ZN5folly9EventBase5timerEv.exit.from.._ZNSt10unique_ptrIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEENS0_18DelayedDestruction10DestructorEED2Ev.exit_crit_edge.i
  %i.an = phi ptr [ %.pre.i, %_ZN5folly9EventBase5timerEv.exit.from.._ZNSt10unique_ptrIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEENS0_18DelayedDestruction10DestructorEED2Ev.exit_crit_edge.i ], [ %i.ac, %bb.k ], [ %i.ad, %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8newTimerIJPNS_9EventBaseERKS5_EEESt10unique_ptrIS6_NS_18DelayedDestruction10DestructorEEDpOT_.exit.i ]
  %.reload217 = load ptr, ptr %.reload.addr220, align 8, !tbaa !5621
  %i.ao = getelementptr inbounds nuw i8, ptr %.reload217, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !147
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %.reload.addr255, align 8, !tbaa !144
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr null, ptr %i.aq, align 8, !tbaa !3032
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !147
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr null, ptr %i.as, align 8, !tbaa !2050
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN5folly11AsyncReader12ReadCallbackE, i64 16), ptr %i.at, align 8, !tbaa !144
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.au, align 8, !tbaa !3074
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  invoke void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.av)
          to label %bb.o unwind label %.from.126

bb.o:                                             ; preds = %_ZN5folly9EventBase5timerEv.exit
  %.reload.addr244 = getelementptr inbounds nuw i8, ptr %0, i64 376
  %.reload245 = load i64, ptr %.reload.addr244, align 8, !tbaa !5621 ; 3 uses
  %.reload.addr234 = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.reload228 = load ptr, ptr %.reload.addr231, align 8, !tbaa !5621
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5folly4coro12ReadCallbackE, i64 16), ptr %.reload.addr255, align 8, !tbaa !144
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN5folly4coro12ReadCallbackE, i64 112), ptr %i.at, align 8, !tbaa !144
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5folly4coro12ReadCallbackE, i64 232), ptr %i.av, align 8, !tbaa !144
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 0, ptr %i.aw, align 8, !tbaa !3012
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 0, ptr %i.ax, align 8, !tbaa !3013
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %.reload228, ptr %i.az, align 8, !tbaa !2994
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bb = load <2 x i64>, ptr %.reload.addr234, align 8, !tbaa !5621
  store <2 x i64> %i.bb, ptr %i.ba, align 8, !tbaa !2043
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %.reload245, ptr %i.bc, align 8, !tbaa !2043
  %i.bd = icmp sgt i64 %.reload245, 0
  br i1 %i.bd, label %bb.p, label %_ZN5folly4coro12ReadCallbackC2ERNS_16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERNS_14AsyncTransportEPNS_10IOBufQueueEmmS7_.exit

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE15scheduleTimeoutEPNS6_8CallbackES5_(ptr noundef nonnull align 8 dereferenceable(16696) %i.an, ptr noundef nonnull %i.av, i64 %.reload245)
          to label %_ZN5folly4coro12ReadCallbackC2ERNS_16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERNS_14AsyncTransportEPNS_10IOBufQueueEmmS7_.exit unwind label %.from.123

.from.126:                                        ; preds = %_ZN5folly9EventBase5timerEv.exit
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.from.194

.from.123:                                        ; preds = %bb.p
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.av) #30
  br label %.body.from.194

.body.from.194:                                   ; preds = %.from.126, %.from.123
  %.pn.i = phi { ptr, i32 } [ %i.bf, %.from.123 ], [ %i.be, %.from.126 ]
  call void @_ZN5folly4coro21TransportCallbackBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(176) %.reload.addr255) #30
  br label %.from..body

_ZN5folly4coro12ReadCallbackC2ERNS_16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERNS_14AsyncTransportEPNS_10IOBufQueueEmmS7_.exit: ; preds = %bb.p, %bb.o
  %i.bg = load ptr, ptr %i.ao, align 8, !tbaa !147
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !144
  %i.bj = load ptr, ptr %i.bi, align 8
  invoke void %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull %i.at)
          to label %.from.101.i unwind label %.from.190, !call_target !2168

.from.101.i:                                      ; preds = %_ZN5folly4coro12ReadCallbackC2ERNS_16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERNS_14AsyncTransportEPNS_10IOBufQueueEmmS7_.exit
  %i.bk = invoke noundef ptr @folly_coro_async_malloc(i64 noundef 304)
          to label %.from.128 unwind label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit55.from.155, !inline_history !127 ; 9 uses

.from.128:                                        ; preds = %.from.101.i
  store ptr @_ZN5folly4coro21TransportCallbackBase4waitEv.resume, ptr %i.bk, align 8
  %destroy.addr.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr @_ZN5folly4coro21TransportCallbackBase4waitEv.destroy, ptr %destroy.addr.i, align 8
  %.reload.addr162.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %.spill.addr.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 280
  store ptr %.reload.addr255, ptr %.spill.addr.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr162.i, i8 0, i64 58, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  store ptr null, ptr %i.bl, align 8, !tbaa !161
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseINS_4UnitEEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_, ptr %i.bm, align 8, !tbaa !163
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 96
  store i32 2, ptr %i.bn, align 8, !tbaa !170
  %index.addr163.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 288
  store i8 0, ptr %index.addr163.i, align 8
  store ptr %i.bk, ptr %.reload.addr259, align 8, !alias.scope !5625
  invoke void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformINS1_12TryAwaitableINS0_4TaskIS3_EEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOSB_(ptr dead_on_unwind nonnull writable sret(%"class.folly::coro::detail::TryAwaitable") align 8 %.reload.addr258, ptr noundef nonnull align 8 dereferenceable(59) %.reload.addr266, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr259)
          to label %bb.q unwind label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit

bb.q:                                             ; preds = %.from.128
  store ptr %.reload.addr258, ptr %.reload.addr257, align 8
  store i8 1, ptr %index.addr, align 8
  %i.bo = call noundef ptr @_ZN5folly4coro4TaskINS_4UnitEE7Awaiter13await_suspendINS0_6detail11TaskPromiseImEEEEDaNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr258, ptr nonnull %0) #30 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  musttail call void %i.bp(ptr nonnull %i.bo)
  ret void

.from.206:                                        ; preds = %bb.e
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body

.from.132:                                        ; preds = %bb.g
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.204

.from.135:                                        ; preds = %bb.h, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #30
  br label %.from.204

.from.204:                                        ; preds = %.from.132, %.from.135
  %.pn = phi { ptr, i32 } [ %i.bs, %.from.135 ], [ %i.br, %.from.132 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.from..body

.from.201:                                        ; preds = %bb.j
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body

.body.from.196:                                   ; preds = %bb.l
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body

.from.190:                                        ; preds = %_ZN5folly4coro12ReadCallbackC2ERNS_16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERNS_14AsyncTransportEPNS_10IOBufQueueEmmS7_.exit
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.from.199

_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit55.from.155: ; preds = %.from.101.i
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.from.199

AfterCoroSuspend103:                              ; preds = %resume.entry
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5626)
  %i.bx = load ptr, ptr %.reload.addr257, align 8, !tbaa !3068, !noalias !5626, !nonnull !682, !align !2067 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5627)
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !2161, !noalias !5628 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 96
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !170, !noalias !5628 ; 2 uses
  store i32 %i.ca, ptr %.reload.addr256, align 8, !tbaa !170, !alias.scope !5628
  %cond.i.i.i.i = icmp eq i32 %i.ca, 1
  br i1 %cond.i.i.i.i, label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from., label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i

_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from.:   ; preds = %AfterCoroSuspend103
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5629)
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !5630
  store i64 %i.cd, ptr %i.cb, align 8, !alias.scope !5630
  store i64 0, ptr %i.cc, align 8, !noalias !5630
  %.sroa.0.0.copyload.i.i.i.i.i.pre.i.i = load ptr, ptr %i.bx, align 8, !tbaa !167, !noalias !5628
  br label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i

_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i:         ; preds = %AfterCoroSuspend103, %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from.
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.i.i, %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from. ], [ %i.by, %AfterCoroSuspend103 ] ; 2 uses
  store i64 0, ptr %i.bx, align 8, !tbaa !167, !noalias !5628
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  invoke void %i.cf(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i)
          to label %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit unwind label %bb.r, !noalias !5628, !inline_history !128

bb.r:                                             ; preds = %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  tail call void @__clang_call_terminate(ptr %i.ch) #28, !noalias !5628
  unreachable

_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit: ; preds = %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i
  %i.ci = load ptr, ptr %.reload.addr258, align 8, !tbaa !2161 ; 3 uses
  %.not.i.i46 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i46, label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit47, label %bb.s

bb.s:                                             ; preds = %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  invoke void %i.ck(ptr nonnull %i.ci)
          to label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit47 unwind label %bb.t, !inline_history !128

bb.t:                                             ; preds = %bb.s
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  tail call void @__clang_call_terminate(ptr %i.cm) #28
  unreachable

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit47: ; preds = %bb.s, %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
  %i.cn = load ptr, ptr %.reload.addr259, align 8, !tbaa !2161 ; 3 uses
  %.not.i.i48 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i48, label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit47
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  invoke void %i.cp(ptr nonnull %i.cn)
          to label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit unwind label %bb.v, !inline_history !128

bb.v:                                             ; preds = %bb.u
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  tail call void @__clang_call_terminate(ptr %i.cr) #28
  unreachable

_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit:          ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit47, %bb.u
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %.not85 = icmp eq ptr %i.ct, null
  %i.cu = ptrtoint ptr %i.ct to i64               ; 3 uses
  br i1 %.not85, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5631)
  store i64 %i.cu, ptr %.reload.addr260, align 8, !alias.scope !5631
  store i64 0, ptr %i.cs, align 8, !noalias !5631
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !2162
  store i32 2, ptr %i.cv, align 8, !tbaa !2162
  %cond.i.i.i50 = icmp eq i32 %i.cw, 1
  br i1 %cond.i.i.i50, label %bb.x, label %bb.y, !prof !2134

bb.x:                                             ; preds = %bb.w
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !2050
  %.not.i.i.i.i.i51 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i.i51, label %bb.y, label %.from.143

.from.143:                                        ; preds = %bb.x
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cx) #30
  %.pre = load i64, ptr %.reload.addr260, align 8, !noalias !5632
  br label %bb.y

bb.y:                                             ; preds = %.from.143, %bb.w, %bb.x
  %i.cz = phi i64 [ %.pre, %.from.143 ], [ %i.cu, %bb.w ], [ %i.cu, %bb.x ]
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5632)
  store i64 %i.cz, ptr %i.da, align 8, !alias.scope !5632
  store i64 0, ptr %.reload.addr260, align 8, !noalias !5632
  store i32 1, ptr %i.cv, align 8, !tbaa !166
  store i8 2, ptr %index.addr, align 8
  %i.db = tail call noundef ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseImEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr257, ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr266) #30 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8
  musttail call void %i.dc(ptr nonnull %i.db)
  ret void

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit: ; preds = %.from.128
  %i.dd = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.de = load ptr, ptr %.reload.addr259, align 8, !tbaa !2161 ; 3 uses
  %.not.i.i52 = icmp eq ptr %i.de, null
  br i1 %.not.i.i52, label %.body.from.199, label %bb.z

bb.z:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  invoke void %i.dg(ptr nonnull %i.de)
          to label %.body.from.199 unwind label %bb.aa, !inline_history !128

bb.aa:                                            ; preds = %bb.z
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #28
  unreachable

bb.ab:                                            ; preds = %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit
  %i.dj = load i32, ptr %.reload.addr256, align 8, !tbaa !170
  %i.dk = icmp eq i32 %i.dj, 1
  br i1 %i.dk, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.dl = tail call noundef ptr @_ZNK5folly3TryINS_4UnitEE21tryGetExceptionObjectINS_18OperationCancelledEEEPKT_v(ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr256) #30
  %.not32 = icmp eq ptr %i.dl, null
  br i1 %.not32, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.do = load i8, ptr %i.dm, align 8, !tbaa !3013, !range !2037, !noundef !682
  %i.dp = trunc nuw i8 %i.do to i1
  %i.dq = load i64, ptr %i.dn, align 8
  %i.dr = icmp ne i64 %i.dq, 0
  %or.cond.not = select i1 %i.dp, i1 true, i1 %i.dr
  br i1 %or.cond.not, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ds = load i32, ptr %.reload.addr256, align 8, !tbaa !170
  %i.dt = icmp eq i32 %i.ds, 1
  br i1 %i.dt, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN5folly6detail16throw_exception_INS_12TryExceptionEJPKcEEEvDpT0_(ptr noundef nonnull @.str.6) #14
          to label %.noexc58 unwind label %.from._ZN5folly4coro8co_errorD2Ev.exit63

.noexc58:                                         ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5633)
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !5633 ; 3 uses
  store i64 %i.dw, ptr %.reload.addr261, align 8, !alias.scope !5633
  store i64 0, ptr %i.dv, align 8, !noalias !5633
  %i.dx = load i32, ptr %i.du, align 8, !tbaa !2162
  store i32 2, ptr %i.du, align 8, !tbaa !2162
  %cond.i.i.i59 = icmp eq i32 %i.dx, 1
  br i1 %cond.i.i.i59, label %bb.ah, label %bb.ai, !prof !2134

bb.ah:                                            ; preds = %bb.ag
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !2050
  %.not.i.i.i.i.i60 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i60, label %bb.ai, label %.from.157

.from.157:                                        ; preds = %bb.ah
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dy) #30
  %.pre87 = load i64, ptr %.reload.addr261, align 8, !noalias !5634
  br label %bb.ai

bb.ai:                                            ; preds = %.from.157, %bb.ag, %bb.ah
  %i.ea = phi i64 [ %.pre87, %.from.157 ], [ %i.dw, %bb.ag ], [ %i.dw, %bb.ah ]
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5634)
  store i64 %i.ea, ptr %i.eb, align 8, !alias.scope !5634
  store i64 0, ptr %.reload.addr261, align 8, !noalias !5634
  store i32 1, ptr %i.du, align 8, !tbaa !166
  store i8 3, ptr %index.addr, align 8
  %i.ec = tail call noundef ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseImEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr258, ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr266) #30 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8
  musttail call void %i.ed(ptr nonnull %i.ec)
  ret void

.from._ZN5folly4coro8co_errorD2Ev.exit63:         ; preds = %bb.af
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ar

bb.aj:                                            ; preds = %bb.ad, %bb.ab
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !5621
  %i.ef = getelementptr inbounds nuw i8, ptr %.reload, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !147
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !144
  %i.ej = load ptr, ptr %i.ei, align 8
  invoke void %i.ej(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr noundef null)
          to label %bb.ak unwind label %.from.175, !call_target !2168

bb.ak:                                            ; preds = %bb.aj
  %.reload.addr225 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.reload226 = load ptr, ptr %.reload.addr225, align 8, !tbaa !5621 ; 4 uses
  %i.ek = load i8, ptr %.reload226, align 8, !tbaa !5622, !range !2037, !noundef !682
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.am, label %bb.al, !prof !5623

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN5folly6detail16throw_exception_ISt16invalid_argumentJPKcEEEvDpT0_(ptr noundef nonnull @.str.45) #14
          to label %.noexc67 unwind label %.from.172

.noexc67:                                         ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.ak
  %.reload.addr253 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.reload254 = load ptr, ptr %.reload.addr253, align 8, !tbaa !5621
  %.reload.addr250 = getelementptr inbounds nuw i8, ptr %0, i64 392
  %.reload251 = load ptr, ptr %.reload.addr250, align 8, !tbaa !5621
  %.reload.addr247 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.reload248 = load i64, ptr %.reload.addr247, align 8, !tbaa !5621
  %.reload215 = load ptr, ptr %.reload.addr, align 8, !tbaa !5621
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.en = ptrtoint ptr %.reload251 to i64
  %i.eo = ptrtoint ptr %.reload254 to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = add i64 %i.ep, %.reload248              ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.reload226, i64 24
  %i.es = getelementptr inbounds nuw i8, ptr %.reload226, i64 32
  %i.et = getelementptr inbounds nuw i8, ptr %.reload226, i64 64
  %i.eu = getelementptr inbounds nuw i8, ptr %.reload215, i64 24
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ew = load i64, ptr %i.et, align 8, !tbaa !3034
  %i.ex = load ptr, ptr %i.es, align 8, !tbaa !3008
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !3009
  %i.ez = load ptr, ptr %i.er, align 8, !tbaa !3033
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = add i64 %i.ew, %i.fa
  %i.fd = sub i64 %i.fc, %i.fb                    ; 2 uses
  %i.fe = sub i64 %i.fd, %i.eq
  %i.ff = load i8, ptr %i.em, align 8, !tbaa !3013, !range !2037, !noundef !682
  %.not = icmp eq i64 %i.fd, %i.eq
  %i.fg = select i1 %.not, i8 0, i8 %i.ff
  store i8 %i.fg, ptr %i.eu, align 8, !tbaa !3072
  %i.fh = load i32, ptr %i.ev, align 8, !tbaa !2162
  store i32 2, ptr %i.ev, align 8, !tbaa !2162
  %cond.i.i.i69 = icmp eq i32 %i.fh, 1
  br i1 %cond.i.i.i69, label %bb.an, label %bb.ap, !prof !2134

bb.an:                                            ; preds = %bb.am
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !2050
  %.not.i.i.i.i.i70 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i.i.i70, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fi) #30
  br label %bb.ap

.from.175:                                        ; preds = %bb.aj
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ar

.from.172:                                        ; preds = %bb.al
  %i.fl = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ar

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.fe, ptr %i.fm, align 8, !tbaa !2043
  store i32 0, ptr %i.ev, align 8, !tbaa !166
  %i.fn = load i32, ptr %.reload.addr256, align 8, !tbaa !170
  %cond.i = icmp eq i32 %i.fn, 1
  br i1 %cond.i, label %bb.aq, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, !prof !2134

bb.aq:                                            ; preds = %bb.ap
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !2050
  %.not.i.i.i71 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i71, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from.

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from.: ; preds = %bb.aq
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fo) #30
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit

bb.ar:                                            ; preds = %.from.172, %.from.175, %.from._ZN5folly4coro8co_errorD2Ev.exit63
  %.pn35 = phi { ptr, i32 } [ %i.fk, %.from.175 ], [ %i.ee, %.from._ZN5folly4coro8co_errorD2Ev.exit63 ], [ %i.fl, %.from.172 ] ; 3 uses
  %i.fq = load i32, ptr %.reload.addr256, align 8, !tbaa !170
  %cond.i72 = icmp eq i32 %i.fq, 1
  br i1 %cond.i72, label %bb.as, label %.body.from.199, !prof !2134

bb.as:                                            ; preds = %bb.ar
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !2050
  %.not.i.i.i73 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i73, label %.body.from.199, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit74.from.

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit74.from.: ; preds = %bb.as
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fr) #30
  br label %.body.from.199

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit:     ; preds = %bb.aq, %bb.ap, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from.
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ft) #30
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %.reload.addr255, align 8, !tbaa !144
  %i.fu = load ptr, ptr %i.cs, align 8, !tbaa !2050
  %.not.i.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i.i, label %_ZN5folly4coro12ReadCallbackD2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cs) #30, !inline_history !2051
  br label %_ZN5folly4coro12ReadCallbackD2Ev.exit

_ZN5folly4coro12ReadCallbackD2Ev.exit:            ; preds = %bb.at, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fv) #30, !inline_history !2051
  br label %bb.au

.body.from.199:                                   ; preds = %.from.190, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit74.from., %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit55.from.155, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit, %bb.z, %bb.ar, %bb.as
  %.pn35.pn.pn = phi { ptr, i32 } [ %i.bv, %.from.190 ], [ %.pn35, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit74.from. ], [ %i.dd, %bb.z ], [ %.pn35, %bb.ar ], [ %i.bw, %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit55.from.155 ], [ %i.dd, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit ], [ %.pn35, %bb.as ]
  call void @_ZN5folly4coro12ReadCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %.reload.addr255) #30
  br label %.from..body

.from..body:                                      ; preds = %.body.from.199, %.body.from.196, %.body.from.194, %.body.from., %.from.201, %.from.204, %.from.206
  %.pn35.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bq, %.from.206 ], [ %.pn, %.from.204 ], [ %i.bt, %.from.201 ], [ %.pn35.pn.pn, %.body.from.199 ], [ %i.af, %.body.from. ], [ %i.bu, %.body.from.196 ], [ %.pn.i, %.body.from.194 ]
  %.9 = extractvalue { ptr, i32 } %.pn35.pn.pn.pn.pn.pn, 0
  %i.fw = call ptr @__cxa_begin_catch(ptr %.9) #30 ; 0 uses
  call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseImEEmE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr266) #30
  invoke void @__cxa_end_catch()
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %_ZN5folly4coro6detail11TaskPromiseImE12return_valueIiQnt21IsDeprecatedTryReturnITL0__EEEvOT_.exit, %.from..body, %_ZN5folly4coro12ReadCallbackD2Ev.exit
  store ptr null, ptr %0, align 8
  store i8 4, ptr %index.addr, align 8
  %i.fx = call noundef ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseImEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr259, ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr266) #30 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8
  musttail call void %i.fy(ptr nonnull %i.fx)
  ret void

CoroEnd:                                          ; preds = %resume.entry, %resume.entry
  ret void

bb.av:                                            ; preds = %.from..body
  %i.fz = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  store i8 4, ptr %index.addr, align 8
  resume { ptr, i32 } %i.fz

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro9Transport4readERNS_10IOBufQueueEmmNSt6chrono8durationIlSt5ratioILl1ELl1000EEEE.destroy(ptr noundef nonnull align 8 dereferenceable(416) %0) #1 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr255 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.reload.addr256 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.reload.addr259 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 408
  %index = load i8, ptr %index.addr, align 8
  switch i8 %index, label %unreachable [
    i8 0, label %AfterCoroSuspend
    i8 1, label %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
    i8 2, label %AfterCoroSuspend107
    i8 3, label %AfterCoroSuspend111
    i8 4, label %AfterCoroSuspend
  ], !prof !5635

_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit: ; preds = %resume.entry
  %.reload.addr258 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.a = load ptr, ptr %.reload.addr258, align 8, !tbaa !2161 ; 3 uses
  %.not.i.i46 = icmp eq ptr %i.a, null
  br i1 %.not.i.i46, label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit47, label %bb.a

bb.a:                                             ; preds = %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr nonnull %i.a)
          to label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit47 unwind label %bb.b, !inline_history !128

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #28
  unreachable

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit47: ; preds = %bb.a, %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
  %i.f = load ptr, ptr %.reload.addr259, align 8, !tbaa !2161 ; 3 uses
  %.not.i.i48 = icmp eq ptr %i.f, null
  br i1 %.not.i.i48, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit47
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr nonnull %i.f)
          to label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit unwind label %bb.d, !inline_history !128

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #28
  unreachable

AfterCoroSuspend107:                              ; preds = %resume.entry
  %.reload.addr260 = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.k = load ptr, ptr %.reload.addr260, align 8, !tbaa !2050
  %.not.i.i.i56 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i56, label %.from._ZN5folly4coro8co_errorD2Ev.exit57, label %.from._ZN5folly4coro8co_errorD2Ev.exit57.sink.split

AfterCoroSuspend111:                              ; preds = %resume.entry
  %.reload.addr261 = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.l = load ptr, ptr %.reload.addr261, align 8, !tbaa !2050
  %.not.i.i.i65 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i65, label %.from._ZN5folly4coro8co_errorD2Ev.exit57, label %.from._ZN5folly4coro8co_errorD2Ev.exit57.sink.split

.from._ZN5folly4coro8co_errorD2Ev.exit57.sink.split: ; preds = %AfterCoroSuspend111, %AfterCoroSuspend107
  %.reload.addr261.sink = phi ptr [ %.reload.addr260, %AfterCoroSuspend107 ], [ %.reload.addr261, %AfterCoroSuspend111 ]
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr261.sink) #30
  br label %.from._ZN5folly4coro8co_errorD2Ev.exit57

.from._ZN5folly4coro8co_errorD2Ev.exit57:         ; preds = %.from._ZN5folly4coro8co_errorD2Ev.exit57.sink.split, %AfterCoroSuspend111, %AfterCoroSuspend107
  %i.m = load i32, ptr %.reload.addr256, align 8, !tbaa !170
  %cond.i = icmp eq i32 %i.m, 1
  br i1 %cond.i, label %bb.e, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, !prof !2134

bb.e:                                             ; preds = %.from._ZN5folly4coro8co_errorD2Ev.exit57
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2050
  %.not.i.i.i71 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i71, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from.

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from.: ; preds = %bb.e
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #30
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit:     ; preds = %bb.e, %.from._ZN5folly4coro8co_errorD2Ev.exit57, %bb.c, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit47, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from.
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  tail call void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.p) #30
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %.reload.addr255, align 8, !tbaa !144
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !2050
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZN5folly4coro12ReadCallbackD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #30, !inline_history !2051
  br label %_ZN5folly4coro12ReadCallbackD2Ev.exit

_ZN5folly4coro12ReadCallbackD2Ev.exit:            ; preds = %bb.f, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.s) #30, !inline_history !2051
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %resume.entry, %_ZN5folly4coro12ReadCallbackD2Ev.exit, %resume.entry
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load i32, ptr %i.t, align 8, !tbaa !166
  %cond.i.i = icmp eq i32 %i.u, 1
  br i1 %cond.i.i, label %bb.g, label %_ZN5folly6detail7TryBaseImED2Ev.exit.i, !prof !2134

bb.g:                                             ; preds = %AfterCoroSuspend
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2050
  %.not.i.i.i.i76 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i76, label %_ZN5folly6detail7TryBaseImED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #30
  br label %_ZN5folly6detail7TryBaseImED2Ev.exit.i

_ZN5folly6detail7TryBaseImED2Ev.exit.i:           ; preds = %bb.h, %bb.g, %AfterCoroSuspend
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2029 ; 5 uses
  %.not.i.i.i1.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i1.i, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN5folly6detail7TryBaseImED2Ev.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = atomicrmw sub ptr %i.z, i64 8 acq_rel, align 8 ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 16
  br i1 %i.ab, label %bb.j, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.ac = and i64 %i.aa, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.y) #30
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !144
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(32) %i.y) #30, !call_target !2042, !inline_history !129
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

_ZN5folly17CancellationTokenD2Ev.exit.i.i:        ; preds = %bb.l, %bb.k, %bb.i, %_ZN5folly6detail7TryBaseImED2Ev.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !2027 ; 2 uses
  %i.ai = and i64 %i.ah, -4                       ; 2 uses
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %.not.i.i1.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i1.i.i, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseImEEmED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i
  store i64 0, ptr %i.ag, align 8, !tbaa !2043
  %i.ak = and i64 %i.ah, 3
  %.not3.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not3.i.i.i.i, label %bb.n, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseImEEmED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !144
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) #30, !call_target !2048, !inline_history !130
  br label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseImEEmED2Ev.exit

_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseImEEmED2Ev.exit: ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i, %bb.m, %bb.n
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 416)
          to label %CoroEnd unwind label %bb.o

bb.o:                                             ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseImEEmED2Ev.exit
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #28
  unreachable

CoroEnd:                                          ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseImEEmED2Ev.exit
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5folly4coro9Transport4readENS_5RangeIPhEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE.resume(ptr noundef nonnull align 8 dereferenceable(384) %0) #2 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %1 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %.reload.addr224 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %.reload.addr225 = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 6 uses
  %.reload.addr226 = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %.reload.addr227 = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 5 uses
  %.reload.addr228 = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 5 uses
  %.reload.addr229 = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %.reload.addr230 = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %.reload.addr235 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 6 uses
  %index = load i8, ptr %index.addr, align 8
  switch i8 %index, label %unreachable [
    i8 0, label %AfterCoroSuspend
    i8 1, label %AfterCoroSuspend92
    i8 2, label %CoroEnd
    i8 3, label %CoroEnd
  ], !prof !5654

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.reload.addr207 = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %.reload208 = load ptr, ptr %.reload.addr207, align 8, !tbaa !5656
  %i.a = getelementptr inbounds nuw i8, ptr %.reload208, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !3072, !range !2037, !noundef !682
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.a, label %bb.d

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store i8 0, ptr %i.a, align 8, !tbaa !3072
  %i.e = load i32, ptr %i.d, align 8, !tbaa !2162
  store i32 2, ptr %i.d, align 8, !tbaa !2162
  %cond.i.i.i = icmp eq i32 %i.e, 1
  br i1 %cond.i.i.i, label %bb.b, label %_ZN5folly4coro6detail11TaskPromiseImE12return_valueIiQnt21IsDeprecatedTryReturnITL0__EEEvOT_.exit, !prof !2134

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2050
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly4coro6detail11TaskPromiseImE12return_valueIiQnt21IsDeprecatedTryReturnITL0__EEEvOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #30
  br label %_ZN5folly4coro6detail11TaskPromiseImE12return_valueIiQnt21IsDeprecatedTryReturnITL0__EEEvOT_.exit

_ZN5folly4coro6detail11TaskPromiseImE12return_valueIiQnt21IsDeprecatedTryReturnITL0__EEEvOT_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.h, align 8, !tbaa !2043
  store i32 0, ptr %i.d, align 8, !tbaa !166
  br label %bb.ap

bb.d:                                             ; preds = %AfterCoroSuspend
  %i.i = load ptr, ptr @_ZZN5folly4coro9Transport4readENS_5RangeIPhEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8vlocal__, align 8, !tbaa !2140 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %.split

bb.e:                                             ; preds = %bb.d
  %i.k = invoke noundef zeroext i1 @_ZN6google11InitVLOG3__EPNS_8SiteFlagEPiPKci(ptr noundef nonnull @_ZZN5folly4coro9Transport4readENS_5RangeIPhEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8vlocal__, ptr noundef nonnull @_ZN3fLI7FLAGS_vE, ptr noundef nonnull @.str.18, i32 noundef 5)
          to label %bb.f unwind label %.from.193

.split:                                           ; preds = %bb.d
  %i.l = load i32, ptr %i.i, align 4, !tbaa !2141
  %i.m = icmp sgt i32 %i.l, 4
  br i1 %i.m, label %bb.g, label %.critedge32

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.g, label %.critedge32

bb.g:                                             ; preds = %bb.f, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  invoke void @_ZN6google10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str.18, i32 noundef 60)
          to label %bb.h unwind label %.from.121

bb.h:                                             ; preds = %bb.g
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.i unwind label %.from.124  ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.19, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.from.124 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.i
  %.reload.addr217 = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.reload218 = load ptr, ptr %.reload.addr217, align 8, !tbaa !5656
  %.reload.addr212 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.reload213 = load ptr, ptr %.reload.addr212, align 8, !tbaa !5656
  %i.p = ptrtoint ptr %.reload218 to i64
  %i.q = ptrtoint ptr %.reload213 to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef %i.r)
          to label %.critedge unwind label %.from.124 ; 0 uses

.critedge:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.critedge32

.critedge32:                                      ; preds = %.critedge, %bb.f, %.split
  %.reload206 = load ptr, ptr %.reload.addr207, align 8, !tbaa !5656
  %i.t = getelementptr inbounds nuw i8, ptr %.reload206, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !159  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 128 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3073 ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %_ZN5folly9EventBase5timerEv.exit

bb.j:                                             ; preds = %.critedge32
  %i.x = invoke noalias noundef nonnull dereferenceable(16696) ptr @_Znwm(i64 noundef 16696) #32
          to label %.noexc unwind label %.body.from.186 ; 4 uses

.noexc:                                           ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.y, align 8, !tbaa !2043, !noalias !5657
  invoke void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEC1EPNS_14TimeoutManagerES5_NS7_12InternalEnumES5_(ptr noundef nonnull align 8 dereferenceable(16696) %i.x, ptr noundef nonnull align 16 dereferenceable(632) %i.u, i64 %.sroa.0.0.copyload.i.i, i32 noundef 1, i64 -1)
          to label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8newTimerIJPNS_9EventBaseERKS5_EEESt10unique_ptrIS6_NS_18DelayedDestruction10DestructorEEDpOT_.exit.i unwind label %.body.from., !noalias !5657

.body.from.:                                      ; preds = %.noexc
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 16696) #29, !noalias !5657
  br label %.from..body

_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8newTimerIJPNS_9EventBaseERKS5_EEESt10unique_ptrIS6_NS_18DelayedDestruction10DestructorEEDpOT_.exit.i: ; preds = %.noexc
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !3073 ; 2 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !3073
  %.not.i.i.i.i.i33 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i33, label %_ZN5folly9EventBase5timerEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8newTimerIJPNS_9EventBaseERKS5_EEESt10unique_ptrIS6_NS_18DelayedDestruction10DestructorEEDpOT_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 184 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !144
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(13) %i.ab)
          to label %_ZN5folly9EventBase5timerEv.exit.from.._ZNSt10unique_ptrIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEENS0_18DelayedDestruction10DestructorEED2Ev.exit_crit_edge.i unwind label %bb.l, !inline_history !0

_ZN5folly9EventBase5timerEv.exit.from.._ZNSt10unique_ptrIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEENS0_18DelayedDestruction10DestructorEED2Ev.exit_crit_edge.i: ; preds = %bb.k
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !3073
  br label %_ZN5folly9EventBase5timerEv.exit

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #28
  unreachable

_ZN5folly9EventBase5timerEv.exit:                 ; preds = %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8newTimerIJPNS_9EventBaseERKS5_EEESt10unique_ptrIS6_NS_18DelayedDestruction10DestructorEEDpOT_.exit.i, %.critedge32, %_ZN5folly9EventBase5timerEv.exit.from.._ZNSt10unique_ptrIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEENS0_18DelayedDestruction10DestructorEED2Ev.exit_crit_edge.i
  %i.ah = phi ptr [ %.pre.i, %_ZN5folly9EventBase5timerEv.exit.from.._ZNSt10unique_ptrIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEENS0_18DelayedDestruction10DestructorEED2Ev.exit_crit_edge.i ], [ %i.w, %.critedge32 ], [ %i.x, %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8newTimerIJPNS_9EventBaseERKS5_EEESt10unique_ptrIS6_NS_18DelayedDestruction10DestructorEEDpOT_.exit.i ]
  %.reload204 = load ptr, ptr %.reload.addr207, align 8, !tbaa !5656
  %i.ai = getelementptr inbounds nuw i8, ptr %.reload204, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !147
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %.reload.addr224, align 8, !tbaa !144
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr null, ptr %i.ak, align 8, !tbaa !3032
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !147
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr null, ptr %i.am, align 8, !tbaa !2050
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN5folly11AsyncReader12ReadCallbackE, i64 16), ptr %i.an, align 8, !tbaa !144
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.ao, align 8, !tbaa !3074
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  invoke void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.ap)
          to label %bb.m unwind label %.from.115

bb.m:                                             ; preds = %_ZN5folly9EventBase5timerEv.exit
  %.reload.addr222 = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.reload223 = load i64, ptr %.reload.addr222, align 8, !tbaa !5656 ; 3 uses
  %.reload.addr210 = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5folly4coro12ReadCallbackE, i64 16), ptr %.reload.addr224, align 8, !tbaa !144
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN5folly4coro12ReadCallbackE, i64 112), ptr %i.an, align 8, !tbaa !144
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5folly4coro12ReadCallbackE, i64 232), ptr %i.ap, align 8, !tbaa !144
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 0, ptr %i.aq, align 8, !tbaa !3012
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 0, ptr %i.ar, align 8, !tbaa !3013
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.at = load <2 x ptr>, ptr %.reload.addr210, align 8, !tbaa !5656
  store <2 x ptr> %i.at, ptr %i.as, align 8, !tbaa !3016
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  store i64 %.reload223, ptr %i.av, align 8, !tbaa !2043
  %i.aw = icmp sgt i64 %.reload223, 0
  br i1 %i.aw, label %bb.n, label %_ZN5folly4coro12ReadCallbackC2ERNS_16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERNS_14AsyncTransportENS_5RangeIPhEES7_.exit

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE15scheduleTimeoutEPNS6_8CallbackES5_(ptr noundef nonnull align 8 dereferenceable(16696) %i.ah, ptr noundef nonnull %i.ap, i64 %.reload223)
          to label %_ZN5folly4coro12ReadCallbackC2ERNS_16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERNS_14AsyncTransportENS_5RangeIPhEES7_.exit unwind label %.from.112

.from.115:                                        ; preds = %_ZN5folly9EventBase5timerEv.exit
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.from.184

.from.112:                                        ; preds = %bb.n
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ap) #30
  br label %.body.from.184

.body.from.184:                                   ; preds = %.from.115, %.from.112
  %.pn.i = phi { ptr, i32 } [ %i.ay, %.from.112 ], [ %i.ax, %.from.115 ]
  call void @_ZN5folly4coro21TransportCallbackBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(176) %.reload.addr224) #30
  br label %.from..body

_ZN5folly4coro12ReadCallbackC2ERNS_16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERNS_14AsyncTransportENS_5RangeIPhEES7_.exit: ; preds = %bb.n, %bb.m
  %i.az = load ptr, ptr %i.ai, align 8, !tbaa !147
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !144
  %i.bc = load ptr, ptr %i.bb, align 8
  invoke void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull %i.an)
          to label %.from.101.i unwind label %.from.180, !call_target !2168

.from.101.i:                                      ; preds = %_ZN5folly4coro12ReadCallbackC2ERNS_16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERNS_14AsyncTransportENS_5RangeIPhEES7_.exit
  %i.bd = invoke noundef ptr @folly_coro_async_malloc(i64 noundef 304)
          to label %.from.117 unwind label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit46.from.144, !inline_history !127 ; 9 uses

.from.117:                                        ; preds = %.from.101.i
  store ptr @_ZN5folly4coro21TransportCallbackBase4waitEv.resume, ptr %i.bd, align 8
  %destroy.addr.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr @_ZN5folly4coro21TransportCallbackBase4waitEv.destroy, ptr %destroy.addr.i, align 8
  %.reload.addr162.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.spill.addr.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 280
  store ptr %.reload.addr224, ptr %.spill.addr.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr162.i, i8 0, i64 58, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  store ptr null, ptr %i.be, align 8, !tbaa !161
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseINS_4UnitEEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_, ptr %i.bf, align 8, !tbaa !163
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  store i32 2, ptr %i.bg, align 8, !tbaa !170
  %index.addr163.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 288
  store i8 0, ptr %index.addr163.i, align 8
  store ptr %i.bd, ptr %.reload.addr228, align 8, !alias.scope !5658
  invoke void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformINS1_12TryAwaitableINS0_4TaskIS3_EEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOSB_(ptr dead_on_unwind nonnull writable sret(%"class.folly::coro::detail::TryAwaitable") align 8 %.reload.addr227, ptr noundef nonnull align 8 dereferenceable(59) %.reload.addr235, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr228)
          to label %bb.o unwind label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit

bb.o:                                             ; preds = %.from.117
  store ptr %.reload.addr227, ptr %.reload.addr226, align 8
  store i8 1, ptr %index.addr, align 8
  %i.bh = call noundef ptr @_ZN5folly4coro4TaskINS_4UnitEE7Awaiter13await_suspendINS0_6detail11TaskPromiseImEEEEDaNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr227, ptr nonnull %0) #30 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  musttail call void %i.bi(ptr nonnull %i.bh)
  ret void

.from.193:                                        ; preds = %bb.e
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body

.from.121:                                        ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.191

.from.124:                                        ; preds = %bb.h, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #30
  br label %.from.191

.from.191:                                        ; preds = %.from.121, %.from.124
  %.pn = phi { ptr, i32 } [ %i.bl, %.from.124 ], [ %i.bk, %.from.121 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.from..body

.body.from.186:                                   ; preds = %bb.j
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body

.from.180:                                        ; preds = %_ZN5folly4coro12ReadCallbackC2ERNS_16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERNS_14AsyncTransportENS_5RangeIPhEES7_.exit
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.from.189

_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit46.from.144: ; preds = %.from.101.i
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.from.189

AfterCoroSuspend92:                               ; preds = %resume.entry
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5659)
  %i.bp = load ptr, ptr %.reload.addr226, align 8, !tbaa !3068, !noalias !5659, !nonnull !682, !align !2067 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5660)
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !2161, !noalias !5661 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 96
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !170, !noalias !5661 ; 2 uses
  store i32 %i.bs, ptr %.reload.addr225, align 8, !tbaa !170, !alias.scope !5661
  %cond.i.i.i.i = icmp eq i32 %i.bs, 1
  br i1 %cond.i.i.i.i, label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from., label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i

_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from.:   ; preds = %AfterCoroSuspend92
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5662)
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !5663
  store i64 %i.bv, ptr %i.bt, align 8, !alias.scope !5663
  store i64 0, ptr %i.bu, align 8, !noalias !5663
  %.sroa.0.0.copyload.i.i.i.i.i.pre.i.i = load ptr, ptr %i.bp, align 8, !tbaa !167, !noalias !5661
  br label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i

_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i:         ; preds = %AfterCoroSuspend92, %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from.
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.i.i, %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from. ], [ %i.bq, %AfterCoroSuspend92 ] ; 2 uses
  store i64 0, ptr %i.bp, align 8, !tbaa !167, !noalias !5661
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  invoke void %i.bx(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i)
          to label %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit unwind label %bb.p, !noalias !5661, !inline_history !128

bb.p:                                             ; preds = %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  tail call void @__clang_call_terminate(ptr %i.bz) #28, !noalias !5661
  unreachable

_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit: ; preds = %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i
  %i.ca = load ptr, ptr %.reload.addr227, align 8, !tbaa !2161 ; 3 uses
  %.not.i.i37 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i37, label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit38, label %bb.q

bb.q:                                             ; preds = %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  invoke void %i.cc(ptr nonnull %i.ca)
          to label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit38 unwind label %bb.r, !inline_history !128

bb.r:                                             ; preds = %bb.q
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  tail call void @__clang_call_terminate(ptr %i.ce) #28
  unreachable

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit38: ; preds = %bb.q, %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
  %i.cf = load ptr, ptr %.reload.addr228, align 8, !tbaa !2161 ; 3 uses
  %.not.i.i39 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i39, label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit38
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  invoke void %i.ch(ptr nonnull %i.cf)
          to label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit unwind label %bb.t, !inline_history !128

bb.t:                                             ; preds = %bb.s
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  tail call void @__clang_call_terminate(ptr %i.cj) #28
  unreachable

_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit:          ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit38, %bb.s
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %.not74 = icmp eq ptr %i.cl, null
  %i.cm = ptrtoint ptr %i.cl to i64               ; 3 uses
  br i1 %.not74, label %bb.z, label %bb.u

bb.u:                                             ; preds = %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5664)
  store i64 %i.cm, ptr %.reload.addr229, align 8, !alias.scope !5664
  store i64 0, ptr %i.ck, align 8, !noalias !5664
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !2162
  store i32 2, ptr %i.cn, align 8, !tbaa !2162
  %cond.i.i.i41 = icmp eq i32 %i.co, 1
  br i1 %cond.i.i.i41, label %bb.v, label %bb.w, !prof !2134

bb.v:                                             ; preds = %bb.u
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !2050
  %.not.i.i.i.i.i42 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i42, label %bb.w, label %.from.132

.from.132:                                        ; preds = %bb.v
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp) #30
  %.pre = load i64, ptr %.reload.addr229, align 8, !noalias !5665
  br label %bb.w

bb.w:                                             ; preds = %.from.132, %bb.u, %bb.v
  %i.cr = phi i64 [ %.pre, %.from.132 ], [ %i.cm, %bb.u ], [ %i.cm, %bb.v ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5665)
  store i64 %i.cr, ptr %i.cs, align 8, !alias.scope !5665
  store i64 0, ptr %.reload.addr229, align 8, !noalias !5665
  store i32 1, ptr %i.cn, align 8, !tbaa !166
  store i8 2, ptr %index.addr, align 8
  %i.ct = tail call noundef ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseImEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr226, ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr235) #30 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8
  musttail call void %i.cu(ptr nonnull %i.ct)
  ret void

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit: ; preds = %.from.117
  %i.cv = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.cw = load ptr, ptr %.reload.addr228, align 8, !tbaa !2161 ; 3 uses
  %.not.i.i43 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i43, label %.body.from.189, label %bb.x

bb.x:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  invoke void %i.cy(ptr nonnull %i.cw)
          to label %.body.from.189 unwind label %bb.y, !inline_history !128

bb.y:                                             ; preds = %bb.x
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #28
  unreachable

bb.z:                                             ; preds = %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit
  %i.db = load i32, ptr %.reload.addr225, align 8, !tbaa !170
  %i.dc = icmp eq i32 %i.db, 1
  br i1 %i.dc, label %bb.aa, label %bb.ah

bb.aa:                                            ; preds = %bb.z
  %i.dd = tail call noundef ptr @_ZNK5folly3TryINS_4UnitEE21tryGetExceptionObjectINS_18OperationCancelledEEEPKT_v(ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr225) #30
  %.not25 = icmp eq ptr %i.dd, null
  br i1 %.not25, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.dg = load i8, ptr %i.de, align 8, !tbaa !3013, !range !2037, !noundef !682
  %i.dh = trunc nuw i8 %i.dg to i1
  %i.di = load i64, ptr %i.df, align 8
  %i.dj = icmp ne i64 %i.di, 0
  %or.cond.not = select i1 %i.dh, i1 true, i1 %i.dj
  br i1 %or.cond.not, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dk = load i32, ptr %.reload.addr225, align 8, !tbaa !170
  %i.dl = icmp eq i32 %i.dk, 1
  br i1 %i.dl, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN5folly6detail16throw_exception_INS_12TryExceptionEJPKcEEEvDpT0_(ptr noundef nonnull @.str.6) #14
          to label %.noexc49 unwind label %.from._ZN5folly4coro8co_errorD2Ev.exit54

.noexc49:                                         ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5666)
  %i.do = load i64, ptr %i.dn, align 8, !noalias !5666 ; 3 uses
  store i64 %i.do, ptr %.reload.addr230, align 8, !alias.scope !5666
  store i64 0, ptr %i.dn, align 8, !noalias !5666
  %i.dp = load i32, ptr %i.dm, align 8, !tbaa !2162
  store i32 2, ptr %i.dm, align 8, !tbaa !2162
  %cond.i.i.i50 = icmp eq i32 %i.dp, 1
  br i1 %cond.i.i.i50, label %bb.af, label %bb.ag, !prof !2134

bb.af:                                            ; preds = %bb.ae
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !2050
  %.not.i.i.i.i.i51 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i.i51, label %bb.ag, label %.from.146

.from.146:                                        ; preds = %bb.af
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dq) #30
  %.pre76 = load i64, ptr %.reload.addr230, align 8, !noalias !5667
  br label %bb.ag

bb.ag:                                            ; preds = %.from.146, %bb.ae, %bb.af
  %i.ds = phi i64 [ %.pre76, %.from.146 ], [ %i.do, %bb.ae ], [ %i.do, %bb.af ]
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5667)
  store i64 %i.ds, ptr %i.dt, align 8, !alias.scope !5667
  store i64 0, ptr %.reload.addr230, align 8, !noalias !5667
  store i32 1, ptr %i.dm, align 8, !tbaa !166
  store i8 3, ptr %index.addr, align 8
  %i.du = tail call noundef ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseImEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr227, ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr235) #30 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8
  musttail call void %i.dv(ptr nonnull %i.du)
  ret void

.from._ZN5folly4coro8co_errorD2Ev.exit54:         ; preds = %bb.ad
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.am

bb.ah:                                            ; preds = %bb.ab, %bb.z
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !5656
  %i.dx = getelementptr inbounds nuw i8, ptr %.reload, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !147
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !144
  %i.eb = load ptr, ptr %i.ea, align 8
  invoke void %i.eb(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, ptr noundef null)
          to label %bb.ai unwind label %.from.165, !call_target !2168

bb.ai:                                            ; preds = %bb.ah
  %.reload202 = load ptr, ptr %.reload.addr, align 8, !tbaa !5656
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.reload202, i64 24
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.eg = load i8, ptr %i.ec, align 8, !tbaa !3013, !range !2037, !noundef !682
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = load i64, ptr %i.ed, align 8            ; 3 uses
  %i.ej = icmp ne i64 %i.ei, 0
  %i.ek = select i1 %i.eh, i1 %i.ej, i1 false
  %i.el = zext i1 %i.ek to i8
  store i8 %i.el, ptr %i.ee, align 8, !tbaa !3072
  %i.em = load i32, ptr %i.ef, align 8, !tbaa !2162
  store i32 2, ptr %i.ef, align 8, !tbaa !2162
  %cond.i.i.i58 = icmp eq i32 %i.em, 1
  br i1 %cond.i.i.i58, label %bb.aj, label %bb.ak, !prof !2134

bb.aj:                                            ; preds = %bb.ai
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !2050
  %.not.i.i.i.i.i59 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i.i59, label %bb.ak, label %_ZN5folly4coro6detail11TaskPromiseImE12return_valueIRmQnt21IsDeprecatedTryReturnITL0__EEEvOT_.exit.from.160

_ZN5folly4coro6detail11TaskPromiseImE12return_valueIRmQnt21IsDeprecatedTryReturnITL0__EEEvOT_.exit.from.160: ; preds = %bb.aj
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.en) #30
  %.pre75 = load i64, ptr %i.ed, align 8, !tbaa !2043
  br label %bb.ak

.from.165:                                        ; preds = %bb.ah
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.am

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %_ZN5folly4coro6detail11TaskPromiseImE12return_valueIRmQnt21IsDeprecatedTryReturnITL0__EEEvOT_.exit.from.160
  %i.eq = phi i64 [ %.pre75, %_ZN5folly4coro6detail11TaskPromiseImE12return_valueIRmQnt21IsDeprecatedTryReturnITL0__EEEvOT_.exit.from.160 ], [ %i.ei, %bb.ai ], [ %i.ei, %bb.aj ]
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !2043
  store i32 0, ptr %i.ef, align 8, !tbaa !166
  %i.es = load i32, ptr %.reload.addr225, align 8, !tbaa !170
  %cond.i = icmp eq i32 %i.es, 1
  br i1 %cond.i, label %bb.al, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, !prof !2134

bb.al:                                            ; preds = %bb.ak
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !2050
  %.not.i.i.i60 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i60, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from.

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from.: ; preds = %bb.al
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.et) #30
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit

bb.am:                                            ; preds = %.from.165, %.from._ZN5folly4coro8co_errorD2Ev.exit54
  %.pn28 = phi { ptr, i32 } [ %i.ep, %.from.165 ], [ %i.dw, %.from._ZN5folly4coro8co_errorD2Ev.exit54 ] ; 3 uses
  %i.ev = load i32, ptr %.reload.addr225, align 8, !tbaa !170
  %cond.i61 = icmp eq i32 %i.ev, 1
  br i1 %cond.i61, label %bb.an, label %.body.from.189, !prof !2134

bb.an:                                            ; preds = %bb.am
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !2050
  %.not.i.i.i62 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i62, label %.body.from.189, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit63.from.

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit63.from.: ; preds = %bb.an
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ew) #30
  br label %.body.from.189

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit:     ; preds = %bb.al, %bb.ak, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from.
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ey) #30
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %.reload.addr224, align 8, !tbaa !144
  %i.ez = load ptr, ptr %i.ck, align 8, !tbaa !2050
  %.not.i.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i.i, label %_ZN5folly4coro12ReadCallbackD2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ck) #30, !inline_history !2051
  br label %_ZN5folly4coro12ReadCallbackD2Ev.exit

_ZN5folly4coro12ReadCallbackD2Ev.exit:            ; preds = %bb.ao, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fa) #30, !inline_history !2051
  br label %bb.ap

.body.from.189:                                   ; preds = %.from.180, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit63.from., %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit46.from.144, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit, %bb.x, %bb.am, %bb.an
  %.pn28.pn.pn = phi { ptr, i32 } [ %i.bn, %.from.180 ], [ %.pn28, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit63.from. ], [ %i.cv, %bb.x ], [ %.pn28, %bb.am ], [ %i.bo, %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit46.from.144 ], [ %i.cv, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit ], [ %.pn28, %bb.an ]
  call void @_ZN5folly4coro12ReadCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %.reload.addr224) #30
  br label %.from..body

.from..body:                                      ; preds = %.body.from.189, %.body.from.186, %.body.from.184, %.body.from., %.from.191, %.from.193
  %.pn28.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bj, %.from.193 ], [ %.pn, %.from.191 ], [ %.pn28.pn.pn, %.body.from.189 ], [ %i.z, %.body.from. ], [ %i.bm, %.body.from.186 ], [ %.pn.i, %.body.from.184 ]
  %.8 = extractvalue { ptr, i32 } %.pn28.pn.pn.pn.pn, 0
  %i.fb = call ptr @__cxa_begin_catch(ptr %.8) #30 ; 0 uses
  call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseImEEmE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr235) #30
  invoke void @__cxa_end_catch()
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %_ZN5folly4coro6detail11TaskPromiseImE12return_valueIiQnt21IsDeprecatedTryReturnITL0__EEEvOT_.exit, %.from..body, %_ZN5folly4coro12ReadCallbackD2Ev.exit
  store ptr null, ptr %0, align 8
  store i8 4, ptr %index.addr, align 8
  %i.fc = call noundef ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseImEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr228, ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr235) #30 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8
  musttail call void %i.fd(ptr nonnull %i.fc)
  ret void

CoroEnd:                                          ; preds = %resume.entry, %resume.entry
  ret void

bb.aq:                                            ; preds = %.from..body
  %i.fe = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  store i8 4, ptr %index.addr, align 8
  resume { ptr, i32 } %i.fe

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro9Transport4readENS_5RangeIPhEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE.destroy(ptr noundef nonnull align 8 dereferenceable(384) %0) #1 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr224 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.reload.addr225 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.reload.addr228 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 376
  %index = load i8, ptr %index.addr, align 8
  switch i8 %index, label %unreachable [
    i8 0, label %AfterCoroSuspend
    i8 1, label %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
    i8 2, label %AfterCoroSuspend96
    i8 3, label %AfterCoroSuspend100
    i8 4, label %AfterCoroSuspend
  ], !prof !5668

_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit: ; preds = %resume.entry
  %.reload.addr227 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.a = load ptr, ptr %.reload.addr227, align 8, !tbaa !2161 ; 3 uses
  %.not.i.i37 = icmp eq ptr %i.a, null
  br i1 %.not.i.i37, label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit38, label %bb.a

bb.a:                                             ; preds = %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr nonnull %i.a)
          to label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit38 unwind label %bb.b, !inline_history !128

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #28
  unreachable

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit38: ; preds = %bb.a, %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
  %i.f = load ptr, ptr %.reload.addr228, align 8, !tbaa !2161 ; 3 uses
  %.not.i.i39 = icmp eq ptr %i.f, null
  br i1 %.not.i.i39, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit38
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr nonnull %i.f)
          to label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit unwind label %bb.d, !inline_history !128

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #28
  unreachable

AfterCoroSuspend96:                               ; preds = %resume.entry
  %.reload.addr229 = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.k = load ptr, ptr %.reload.addr229, align 8, !tbaa !2050
  %.not.i.i.i47 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i47, label %.from._ZN5folly4coro8co_errorD2Ev.exit48, label %.from._ZN5folly4coro8co_errorD2Ev.exit48.sink.split

AfterCoroSuspend100:                              ; preds = %resume.entry
  %.reload.addr230 = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.l = load ptr, ptr %.reload.addr230, align 8, !tbaa !2050
  %.not.i.i.i56 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i56, label %.from._ZN5folly4coro8co_errorD2Ev.exit48, label %.from._ZN5folly4coro8co_errorD2Ev.exit48.sink.split

.from._ZN5folly4coro8co_errorD2Ev.exit48.sink.split: ; preds = %AfterCoroSuspend100, %AfterCoroSuspend96
  %.reload.addr230.sink = phi ptr [ %.reload.addr229, %AfterCoroSuspend96 ], [ %.reload.addr230, %AfterCoroSuspend100 ]
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr230.sink) #30
  br label %.from._ZN5folly4coro8co_errorD2Ev.exit48

.from._ZN5folly4coro8co_errorD2Ev.exit48:         ; preds = %.from._ZN5folly4coro8co_errorD2Ev.exit48.sink.split, %AfterCoroSuspend100, %AfterCoroSuspend96
  %i.m = load i32, ptr %.reload.addr225, align 8, !tbaa !170
  %cond.i = icmp eq i32 %i.m, 1
  br i1 %cond.i, label %bb.e, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, !prof !2134

bb.e:                                             ; preds = %.from._ZN5folly4coro8co_errorD2Ev.exit48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2050
  %.not.i.i.i60 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i60, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from.

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from.: ; preds = %bb.e
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #30
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit:     ; preds = %bb.e, %.from._ZN5folly4coro8co_errorD2Ev.exit48, %bb.c, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit38, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from.
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  tail call void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.p) #30
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %.reload.addr224, align 8, !tbaa !144
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !2050
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZN5folly4coro12ReadCallbackD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #30, !inline_history !2051
  br label %_ZN5folly4coro12ReadCallbackD2Ev.exit

_ZN5folly4coro12ReadCallbackD2Ev.exit:            ; preds = %bb.f, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.s) #30, !inline_history !2051
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %resume.entry, %_ZN5folly4coro12ReadCallbackD2Ev.exit, %resume.entry
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load i32, ptr %i.t, align 8, !tbaa !166
  %cond.i.i = icmp eq i32 %i.u, 1
  br i1 %cond.i.i, label %bb.g, label %_ZN5folly6detail7TryBaseImED2Ev.exit.i, !prof !2134

bb.g:                                             ; preds = %AfterCoroSuspend
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2050
  %.not.i.i.i.i65 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i65, label %_ZN5folly6detail7TryBaseImED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #30
  br label %_ZN5folly6detail7TryBaseImED2Ev.exit.i

_ZN5folly6detail7TryBaseImED2Ev.exit.i:           ; preds = %bb.h, %bb.g, %AfterCoroSuspend
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2029 ; 5 uses
  %.not.i.i.i1.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i1.i, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN5folly6detail7TryBaseImED2Ev.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = atomicrmw sub ptr %i.z, i64 8 acq_rel, align 8 ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 16
  br i1 %i.ab, label %bb.j, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.ac = and i64 %i.aa, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.y) #30
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !144
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(32) %i.y) #30, !call_target !2042, !inline_history !129
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

_ZN5folly17CancellationTokenD2Ev.exit.i.i:        ; preds = %bb.l, %bb.k, %bb.i, %_ZN5folly6detail7TryBaseImED2Ev.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !2027 ; 2 uses
  %i.ai = and i64 %i.ah, -4                       ; 2 uses
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %.not.i.i1.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i1.i.i, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseImEEmED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i
  store i64 0, ptr %i.ag, align 8, !tbaa !2043
  %i.ak = and i64 %i.ah, 3
  %.not3.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not3.i.i.i.i, label %bb.n, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseImEEmED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !144
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) #30, !call_target !2048, !inline_history !130
  br label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseImEEmED2Ev.exit

_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseImEEmED2Ev.exit: ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i, %bb.m, %bb.n
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 384)
          to label %CoroEnd unwind label %bb.o

bb.o:                                             ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseImEEmED2Ev.exit
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #28
  unreachable

CoroEnd:                                          ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseImEEmED2Ev.exit
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5folly4coro9Transport18newConnectedSocketEPNS_9EventBaseERKNS_13SocketAddressENSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKSt3mapINS_15SocketOptionKeyENS_17SocketOptionValueESt4lessISD_ESaISt4pairIKSD_SE_EEES6_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.resume(ptr noundef nonnull align 8 dereferenceable(328) %0) #2 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %1 = alloca %"class.std::variant.170", align 8  ; 10 uses
  %.reload.addr181 = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %.reload.addr182 = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %.reload.addr183 = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %.reload.addr184 = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %.reload.addr186 = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %.reload.addr187 = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %.reload.addr188 = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %.reload.addr189 = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %.reload.addr194 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 6 uses
  %index = load i8, ptr %index.addr, align 4
  switch i8 %index, label %unreachable [
    i8 0, label %AfterCoroSuspend
    i8 1, label %AfterCoroSuspend88
    i8 2, label %CoroEnd
    i8 3, label %CoroEnd
  ], !prof !5706

AfterCoroSuspend:                                 ; preds = %resume.entry
  %i.a = invoke noalias noundef nonnull dereferenceable(1200) ptr @_Znwm(i64 noundef 1200) #32
          to label %.noexc unwind label %.body.from.146 ; 9 uses

.noexc:                                           ; preds = %AfterCoroSuspend
  %.spill.addr170 = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  store ptr %i.a, ptr %.spill.addr170, align 8
  %.reload.addr153 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.reload154 = load ptr, ptr %.reload.addr153, align 8, !tbaa !3076
  invoke void @_ZN5folly11AsyncSocketC1EPNS_9EventBaseE(ptr noundef nonnull align 8 dereferenceable(1193) %i.a, ptr noundef %.reload154)
          to label %_ZN5folly11AsyncSocket9newSocketEPNS_9EventBaseE.exit unwind label %.body.from.147, !noalias !5707

.body.from.147:                                   ; preds = %.noexc
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1200) #29, !noalias !5707
  br label %.body

_ZN5folly11AsyncSocket9newSocketEPNS_9EventBaseE.exit: ; preds = %.noexc
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !144
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 536
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(1193) %i.a, ptr noundef null)
          to label %bb.a unwind label %.from.143, !call_target !5712

bb.a:                                             ; preds = %_ZN5folly11AsyncSocket9newSocketEPNS_9EventBaseE.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr null, ptr %i.f, align 8, !tbaa !3032
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.a, ptr %i.g, align 8, !tbaa !147
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.h, align 8, !tbaa !2050
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly4coro15ConnectCallbackE, i64 16), ptr %.reload.addr181, align 8, !tbaa !144
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly4coro15ConnectCallbackE, i64 72), ptr %i.i, align 8, !tbaa !144
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.a, ptr %i.j, align 8, !tbaa !5713
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  invoke void @_ZN5folly9IPAddressC1Ev(ptr noundef nonnull align 4 dereferenceable(26) %.reload.addr182)
          to label %.noexc22 unwind label %.body23.from.111

.noexc22:                                         ; preds = %bb.a
  %.reload.addr165 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.reload166 = load ptr, ptr %.reload.addr165, align 8, !tbaa !3076
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i16 0, ptr %i.k, align 8, !tbaa !174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr noundef nonnull align 8 dereferenceable(28) %.reload.addr182, i64 28, i1 false), !tbaa.struct !177
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  store i8 0, ptr %i.l, align 8, !tbaa !179
  store ptr %1, ptr %.reload.addr184, align 8, !tbaa !2114
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Copy_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS5_16ExternalUnixAddrENS5_9VsockAddrEEEaSERKS9_EUlOT_T0_E_JRKSt7variantIJS6_S7_S8_EEEEDcOSE_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr184, ptr noundef nonnull align 8 dereferenceable(40) %.reload166)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %.noexc22
  %i.m = landingpad { ptr, i32 }
          catch ptr null                          ; 3 uses
  %i.n = load i8, ptr %i.l, align 8, !tbaa !179
  %cond.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.n, 1
  br i1 %cond.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %.from..body23, !prof !5714

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %1, align 8, !tbaa !2117   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.from..body23, label %.body23.from.109

.body23.from.109:                                 ; preds = %bb.c
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 110) #29
  br label %.from..body23

bb.d:                                             ; preds = %.noexc22
  %.reload.addr168 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.reload169 = load ptr, ptr %.reload.addr168, align 8, !tbaa !3076
  %.reload.addr162 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.reload163 = load ptr, ptr %.reload.addr162, align 8, !tbaa !3076
  %.reload.addr159 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.reload160 = load i64, ptr %.reload.addr159, align 8, !tbaa !3076
  %.reload.addr156 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.reload157 = load ptr, ptr %.reload.addr156, align 8, !tbaa !3076
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store i8 0, ptr %i.q, align 8, !tbaa !5716
  %i.r = trunc i64 %.reload160 to i32
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !144
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 384
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(1193) %i.a, ptr noundef nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(40) %.reload157, i32 noundef %i.r, ptr noundef nonnull align 1 %.reload163, ptr noundef nonnull align 8 dereferenceable(41) %1, ptr noundef nonnull align 8 dereferenceable(32) %.reload169) #30, !call_target !5727
  %i.v = load i8, ptr %i.q, align 8, !tbaa !5716  ; 2 uses
  %.not.i.i = icmp eq i8 %i.v, -1
  br i1 %.not.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddressENS2_13NetworkSocketEEED2Ev.exit, label %bb.e, !prof !2156

bb.e:                                             ; preds = %bb.d
  %i.w = icmp eq i8 %i.v, 0
  %i.x = load i8, ptr %i.l, align 8
  %cond.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.x, 1
  %or.cond.i.i.i = select i1 %i.w, i1 %cond.i.i.i.i.i.i.i.i.i.i.i, i1 false, !prof !6062
  br i1 %or.cond.i.i.i, label %bb.f, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddressENS2_13NetworkSocketEEED2Ev.exit, !prof !6062

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %1, align 8, !tbaa !2117   ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddressENS2_13NetworkSocketEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 110) #29
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddressENS2_13NetworkSocketEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddressENS2_13NetworkSocketEEED2Ev.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.aa = invoke noundef ptr @folly_coro_async_malloc(i64 noundef 304)
          to label %.from._ZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddressENS2_13NetworkSocketEEED2Ev.exit unwind label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit34.from.122, !inline_history !127 ; 9 uses

.from._ZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddressENS2_13NetworkSocketEEED2Ev.exit: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddressENS2_13NetworkSocketEEED2Ev.exit
  store ptr @_ZN5folly4coro21TransportCallbackBase4waitEv.resume, ptr %i.aa, align 8
  %destroy.addr.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_ZN5folly4coro21TransportCallbackBase4waitEv.destroy, ptr %destroy.addr.i, align 8
  %.reload.addr162.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.spill.addr.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 280
  store ptr %.reload.addr181, ptr %.spill.addr.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr162.i, i8 0, i64 58, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  store ptr null, ptr %i.ab, align 8, !tbaa !161
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseINS_4UnitEEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_, ptr %i.ac, align 8, !tbaa !163
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  store i32 2, ptr %i.ad, align 8, !tbaa !170
  %index.addr163.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 288
  store i8 0, ptr %index.addr163.i, align 8
  store ptr %i.aa, ptr %.reload.addr187, align 8, !alias.scope !6063
  invoke void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformINS1_12TryAwaitableINS0_4TaskIS3_EEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOSB_(ptr dead_on_unwind nonnull writable sret(%"class.folly::coro::detail::TryAwaitable") align 8 %.reload.addr186, ptr noundef nonnull align 8 dereferenceable(59) %.reload.addr194, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr187)
          to label %bb.h unwind label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit

bb.h:                                             ; preds = %.from._ZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddressENS2_13NetworkSocketEEED2Ev.exit
  store ptr %.reload.addr186, ptr %.reload.addr184, align 8
  store i8 1, ptr %index.addr, align 4
  %i.ae = call noundef ptr @_ZN5folly4coro4TaskINS_4UnitEE7Awaiter13await_suspendINS0_6detail11TaskPromiseINS0_9TransportEEEEEDaNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr186, ptr nonnull %0) #30 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  musttail call void %i.af(ptr nonnull %i.ae)
  ret void

.body.from.146:                                   ; preds = %AfterCoroSuspend
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.from.143:                                        ; preds = %_ZN5folly11AsyncSocket9newSocketEPNS_9EventBaseE.exit
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.an

.body23.from.111:                                 ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body23

.from..body23:                                    ; preds = %.body23.from.109, %.body23.from.111, %bb.b, %bb.c
  %eh.lpad-body24 = phi { ptr, i32 } [ %i.ai, %.body23.from.111 ], [ %i.m, %.body23.from.109 ], [ %i.m, %bb.b ], [ %i.m, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.from.145

_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit34.from.122: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddressENS2_13NetworkSocketEEED2Ev.exit
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.145

AfterCoroSuspend88:                               ; preds = %resume.entry
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6064)
  %i.ak = load ptr, ptr %.reload.addr184, align 8, !tbaa !3068, !noalias !6064, !nonnull !682, !align !2067 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6065)
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2161, !noalias !6066 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  %i.an = load i32, ptr %i.am, align 8, !tbaa !170, !noalias !6066 ; 2 uses
  store i32 %i.an, ptr %.reload.addr183, align 8, !tbaa !170, !alias.scope !6066
  %cond.i.i.i.i = icmp eq i32 %i.an, 1
  br i1 %cond.i.i.i.i, label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from., label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i

_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from.:   ; preds = %AfterCoroSuspend88
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6067)
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !6068
  store i64 %i.aq, ptr %i.ao, align 8, !alias.scope !6068
  store i64 0, ptr %i.ap, align 8, !noalias !6068
  %.sroa.0.0.copyload.i.i.i.i.i.pre.i.i = load ptr, ptr %i.ak, align 8, !tbaa !167, !noalias !6066
  br label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i

_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i:         ; preds = %AfterCoroSuspend88, %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from.
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.i.i, %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from. ], [ %i.al, %AfterCoroSuspend88 ] ; 2 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !167, !noalias !6066
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i)
          to label %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit unwind label %bb.i, !noalias !6066, !inline_history !128

bb.i:                                             ; preds = %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #28, !noalias !6066
  unreachable

_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit: ; preds = %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i
  %i.av = load ptr, ptr %.reload.addr186, align 8, !tbaa !2161 ; 3 uses
  %.not.i.i27 = icmp eq ptr %i.av, null
  br i1 %.not.i.i27, label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit28, label %bb.j

bb.j:                                             ; preds = %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr nonnull %i.av)
          to label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit28 unwind label %bb.k, !inline_history !128

bb.k:                                             ; preds = %bb.j
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  tail call void @__clang_call_terminate(ptr %i.az) #28
  unreachable

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit28: ; preds = %bb.j, %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
  %i.ba = load ptr, ptr %.reload.addr187, align 8, !tbaa !2161 ; 3 uses
  %.not.i.i29 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i29, label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit28
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  invoke void %i.bc(ptr nonnull %i.ba)
          to label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit unwind label %bb.m, !inline_history !128

bb.m:                                             ; preds = %bb.l
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  tail call void @__clang_call_terminate(ptr %i.be) #28
  unreachable

_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit:          ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit28, %bb.l
  %i.bf = load i32, ptr %.reload.addr183, align 8, !tbaa !170
  %i.bg = icmp eq i32 %i.bf, 1
  br i1 %i.bg, label %bb.n, label %bb.w

bb.n:                                             ; preds = %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6069)
  %i.bj = load i64, ptr %i.bi, align 8, !noalias !6069
  store i64 %i.bj, ptr %.reload.addr188, align 8, !alias.scope !6069
  store i64 0, ptr %i.bi, align 8, !noalias !6069
  %i.bk = load i32, ptr %i.bh, align 8, !tbaa !2052
  store i32 2, ptr %i.bh, align 8, !tbaa !2052
  switch i32 %i.bk, label %bb.t [
    i32 0, label %bb.o
    i32 1, label %bb.r
  ], !prof !2053

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN5folly4coro9TransportE, i64 16), ptr %i.bl, align 8, !tbaa !144
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !147 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !144
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(13) %i.bn)
          to label %bb.t unwind label %bb.q, !inline_history !1

bb.q:                                             ; preds = %bb.p
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  tail call void @__clang_call_terminate(ptr %i.bs) #28, !inline_history !148
  unreachable

bb.r:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !2050
  %.not.i.i2.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i2.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bt) #30
  br label %bb.t

bb.t:                                             ; preds = %bb.n, %bb.o, %bb.p, %bb.r, %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6070)
  %i.bw = load i64, ptr %.reload.addr188, align 8, !noalias !6070
  store i64 %i.bw, ptr %i.bv, align 8, !alias.scope !6070
  store i64 0, ptr %.reload.addr188, align 8, !noalias !6070
  store i32 1, ptr %i.bh, align 8, !tbaa !2021
  store i8 2, ptr %index.addr, align 4
  %i.bx = tail call noundef ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseINS0_9TransportEEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr186, ptr noundef nonnull align 8 dereferenceable(120) %.reload.addr194) #30 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8
  musttail call void %i.by(ptr nonnull %i.bx)
  ret void

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit: ; preds = %.from._ZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddressENS2_13NetworkSocketEEED2Ev.exit
  %i.bz = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ca = load ptr, ptr %.reload.addr187, align 8, !tbaa !2161 ; 3 uses
  %.not.i.i31 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i31, label %.from.145, label %bb.u

bb.u:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  invoke void %i.cc(ptr nonnull %i.ca)
          to label %.from.145 unwind label %bb.v, !inline_history !128

bb.v:                                             ; preds = %bb.u
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #28
  unreachable

bb.w:                                             ; preds = %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  %.not72 = icmp eq ptr %i.cg, null
  br i1 %.not72, label %bb.ae, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ci = ptrtoint ptr %i.cg to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6071)
  store i64 %i.ci, ptr %.reload.addr189, align 8, !alias.scope !6071
  store i64 0, ptr %i.cf, align 8, !noalias !6071
  %i.cj = load i32, ptr %i.ch, align 8, !tbaa !2052
  store i32 2, ptr %i.ch, align 8, !tbaa !2052
  switch i32 %i.cj, label %bb.ad [
    i32 0, label %bb.y
    i32 1, label %bb.ab
  ], !prof !2053

bb.y:                                             ; preds = %bb.x
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN5folly4coro9TransportE, i64 16), ptr %i.ck, align 8, !tbaa !144
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !147 ; 3 uses
  %.not.i.i.i.i.i38 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i.i38, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !144
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  invoke void %i.cp(ptr noundef nonnull align 8 dereferenceable(13) %i.cm)
          to label %bb.ad unwind label %bb.aa, !inline_history !1

bb.aa:                                            ; preds = %bb.z
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  tail call void @__clang_call_terminate(ptr %i.cr) #28, !inline_history !148
  unreachable

bb.ab:                                            ; preds = %bb.x
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !2050
  %.not.i.i2.i.i.i37 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i2.i.i.i37, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cs) #30
  br label %bb.ad

bb.ad:                                            ; preds = %bb.x, %bb.y, %bb.z, %bb.ab, %bb.ac
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6072)
  %i.cv = load i64, ptr %.reload.addr189, align 8, !noalias !6072
  store i64 %i.cv, ptr %i.cu, align 8, !alias.scope !6072
  store i64 0, ptr %.reload.addr189, align 8, !noalias !6072
  store i32 1, ptr %i.ch, align 8, !tbaa !2021
  store i8 3, ptr %index.addr, align 4
  %i.cw = tail call noundef ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseINS0_9TransportEEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr187, ptr noundef nonnull align 8 dereferenceable(120) %.reload.addr194) #30 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8
  musttail call void %i.cx(ptr nonnull %i.cw)
  ret void

bb.ae:                                            ; preds = %bb.w
  %.reload.addr177 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.reload178 = load ptr, ptr %.reload.addr177, align 8, !tbaa !3076
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.cz = ptrtoint ptr %.reload178 to i64
  %i.da = load i32, ptr %i.cy, align 8, !tbaa !2052
  store i32 2, ptr %i.cy, align 8, !tbaa !2052
  switch i32 %i.da, label %bb.ak [
    i32 0, label %bb.af
    i32 1, label %bb.ai
  ], !prof !2053

bb.af:                                            ; preds = %bb.ae
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN5folly4coro9TransportE, i64 16), ptr %i.db, align 8, !tbaa !144
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !147 ; 3 uses
  %.not.i.i.i.i.i46 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i.i46, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !144
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  invoke void %i.dg(ptr noundef nonnull align 8 dereferenceable(13) %i.dd)
          to label %bb.ak unwind label %bb.ah, !inline_history !1

bb.ah:                                            ; preds = %bb.ag
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  tail call void @__clang_call_terminate(ptr %i.di) #28, !inline_history !148
  unreachable

bb.ai:                                            ; preds = %bb.ae
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !2050
  %.not.i.i2.i.i.i45 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i2.i.i.i45, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dj) #30
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ag, %bb.af, %bb.ae
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !3076
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN5folly4coro9TransportE, i64 16), ptr %i.dl, align 8, !tbaa !144
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.reload, ptr %i.dm, align 8, !tbaa !159
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.cz, ptr %i.dn, align 8, !tbaa !147
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %i.do, align 8, !tbaa !3072
  store i32 0, ptr %i.cy, align 8, !tbaa !2021
  %i.dp = load i32, ptr %.reload.addr183, align 8, !tbaa !170
  %cond.i = icmp eq i32 %i.dp, 1
  br i1 %cond.i, label %bb.al, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, !prof !2134

bb.al:                                            ; preds = %bb.ak
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !2050
  %.not.i.i.i49 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i49, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from.

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from.: ; preds = %bb.al
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dq) #30
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit:     ; preds = %bb.al, %bb.ak, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from.
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %.reload.addr181, align 8, !tbaa !144
  %i.ds = load ptr, ptr %i.cf, align 8, !tbaa !2050
  %.not.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN5folly11AsyncSocketENS0_18DelayedDestruction10DestructorEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cf) #30, !inline_history !2051
  br label %_ZNSt10unique_ptrIN5folly11AsyncSocketENS0_18DelayedDestruction10DestructorEED2Ev.exit

_ZNSt10unique_ptrIN5folly11AsyncSocketENS0_18DelayedDestruction10DestructorEED2Ev.exit: ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, %bb.am
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dt) #30, !inline_history !2051
  br label %bb.ap

.from.145:                                        ; preds = %.from..body23, %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit34.from.122, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit, %bb.u
  %.pn18.pn.pn.pn = phi { ptr, i32 } [ %eh.lpad-body24, %.from..body23 ], [ %i.aj, %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit34.from.122 ], [ %i.bz, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit ], [ %i.bz, %bb.u ]
  call void @_ZN5folly4coro15ConnectCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.reload.addr181) #30
  br label %bb.an

bb.an:                                            ; preds = %.from.145, %.from.143
  %.pn18.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn18.pn.pn.pn, %.from.145 ], [ %i.ah, %.from.143 ]
  %.reload180 = load ptr, ptr %.spill.addr170, align 8, !tbaa !3076 ; 2 uses
  %i.du = load ptr, ptr %.reload180, align 8, !tbaa !144
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  invoke void %i.dw(ptr noundef nonnull align 8 dereferenceable(13) %.reload180)
          to label %.body unwind label %bb.ao, !inline_history !0

bb.ao:                                            ; preds = %bb.an
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #28
  unreachable

.body:                                            ; preds = %bb.an, %.body.from.146, %.body.from.147
  %.pn18.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.b, %.body.from.147 ], [ %i.ag, %.body.from.146 ], [ %.pn18.pn.pn.pn.pn.pn, %bb.an ]
  %.8 = extractvalue { ptr, i32 } %.pn18.pn.pn.pn.pn.pn.pn, 0
  %i.dz = call ptr @__cxa_begin_catch(ptr %.8) #30 ; 0 uses
  call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS0_9TransportEEES4_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(120) %.reload.addr194) #30
  invoke void @__cxa_end_catch()
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %.body, %_ZNSt10unique_ptrIN5folly11AsyncSocketENS0_18DelayedDestruction10DestructorEED2Ev.exit
  %.reload.addr193 = getelementptr inbounds nuw i8, ptr %0, i64 325
  store ptr null, ptr %0, align 8
  store i8 4, ptr %index.addr, align 4
  %i.ea = call noundef ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseINS0_9TransportEEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr193, ptr noundef nonnull align 8 dereferenceable(120) %.reload.addr194) #30 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8
  musttail call void %i.eb(ptr nonnull %i.ea)
  ret void

CoroEnd:                                          ; preds = %resume.entry, %resume.entry
  ret void

bb.aq:                                            ; preds = %.body
  %i.ec = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  store i8 4, ptr %index.addr, align 4
  resume { ptr, i32 } %i.ec

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro9Transport18newConnectedSocketEPNS_9EventBaseERKNS_13SocketAddressENSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKSt3mapINS_15SocketOptionKeyENS_17SocketOptionValueESt4lessISD_ESaISt4pairIKSD_SE_EEES6_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.destroy(ptr noundef nonnull align 8 dereferenceable(328) %0) #1 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr181 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.reload.addr183 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.reload.addr187 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.reload.addr194 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 324
  %index = load i8, ptr %index.addr, align 4
  switch i8 %index, label %unreachable [
    i8 0, label %AfterCoroSuspend
    i8 1, label %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
    i8 2, label %AfterCoroSuspend92
    i8 3, label %AfterCoroSuspend96
    i8 4, label %AfterCoroSuspend
  ], !prof !6073

_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit: ; preds = %resume.entry
  %.reload.addr186 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.a = load ptr, ptr %.reload.addr186, align 8, !tbaa !2161 ; 3 uses
  %.not.i.i27 = icmp eq ptr %i.a, null
  br i1 %.not.i.i27, label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit28, label %bb.a

bb.a:                                             ; preds = %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr nonnull %i.a)
          to label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit28 unwind label %bb.b, !inline_history !128

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #28
  unreachable

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit28: ; preds = %bb.a, %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
  %i.f = load ptr, ptr %.reload.addr187, align 8, !tbaa !2161 ; 3 uses
  %.not.i.i29 = icmp eq ptr %i.f, null
  br i1 %.not.i.i29, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from._ZN5folly4coro4TaskINS_4UnitEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit28
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr nonnull %i.f)
          to label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from._ZN5folly4coro4TaskINS_4UnitEED2Ev.exit unwind label %bb.d, !inline_history !128

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #28
  unreachable

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from._ZN5folly4coro4TaskINS_4UnitEED2Ev.exit: ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit28, %bb.c
  %.reload.addr171 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.reload172 = load ptr, ptr %.reload.addr171, align 8, !tbaa !3076
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit

AfterCoroSuspend92:                               ; preds = %resume.entry
  %.reload.addr188 = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.k = load ptr, ptr %.reload.addr188, align 8, !tbaa !2050
  %.not.i.i.i35 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i35, label %.from._ZN5folly4coro8co_errorD2Ev.exit36, label %.from._ZN5folly4coro8co_errorD2Ev.exit36.sink.split

AfterCoroSuspend96:                               ; preds = %resume.entry
  %.reload.addr189 = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.l = load ptr, ptr %.reload.addr189, align 8, !tbaa !2050
  %.not.i.i.i43 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i43, label %.from._ZN5folly4coro8co_errorD2Ev.exit36, label %.from._ZN5folly4coro8co_errorD2Ev.exit36.sink.split

.from._ZN5folly4coro8co_errorD2Ev.exit36.sink.split: ; preds = %AfterCoroSuspend96, %AfterCoroSuspend92
  %.reload.addr189.sink = phi ptr [ %.reload.addr188, %AfterCoroSuspend92 ], [ %.reload.addr189, %AfterCoroSuspend96 ]
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr189.sink) #30
  br label %.from._ZN5folly4coro8co_errorD2Ev.exit36

.from._ZN5folly4coro8co_errorD2Ev.exit36:         ; preds = %.from._ZN5folly4coro8co_errorD2Ev.exit36.sink.split, %AfterCoroSuspend96, %AfterCoroSuspend92
  %.sroa.062.0.in = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.sroa.062.0 = load ptr, ptr %.sroa.062.0.in, align 8, !tbaa !3076 ; 3 uses
  %i.m = load i32, ptr %.reload.addr183, align 8, !tbaa !170
  %cond.i = icmp eq i32 %i.m, 1
  br i1 %cond.i, label %bb.e, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, !prof !2134

bb.e:                                             ; preds = %.from._ZN5folly4coro8co_errorD2Ev.exit36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2050
  %.not.i.i.i49 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i49, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from.

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from.: ; preds = %bb.e
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #30
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit:     ; preds = %bb.e, %.from._ZN5folly4coro8co_errorD2Ev.exit36, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from., %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from._ZN5folly4coro4TaskINS_4UnitEED2Ev.exit
  %.sroa.062.1 = phi ptr [ %.reload172, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from._ZN5folly4coro4TaskINS_4UnitEED2Ev.exit ], [ %.sroa.062.0, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.from. ], [ %.sroa.062.0, %.from._ZN5folly4coro8co_errorD2Ev.exit36 ], [ %.sroa.062.0, %bb.e ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %.reload.addr181, align 8, !tbaa !144
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !2050
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN5folly4coro15ConnectCallbackD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) #30, !inline_history !2051
  br label %_ZN5folly4coro15ConnectCallbackD2Ev.exit

_ZN5folly4coro15ConnectCallbackD2Ev.exit:         ; preds = %bb.f, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.r) #30, !inline_history !2051
  %.not.i53 = icmp eq ptr %.sroa.062.1, null
  br i1 %.not.i53, label %AfterCoroSuspend, label %bb.g

bb.g:                                             ; preds = %_ZN5folly4coro15ConnectCallbackD2Ev.exit
  %i.s = load ptr, ptr %.sroa.062.1, align 8, !tbaa !144
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr noundef nonnull align 8 dereferenceable(13) %.sroa.062.1)
          to label %AfterCoroSuspend unwind label %bb.h, !inline_history !0

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #28
  unreachable

AfterCoroSuspend:                                 ; preds = %resume.entry, %_ZN5folly4coro15ConnectCallbackD2Ev.exit, %bb.g, %resume.entry
  tail call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS0_9TransportEEES4_ED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %.reload.addr194) #30
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 328)
          to label %CoroEnd unwind label %bb.i

bb.i:                                             ; preds = %AfterCoroSuspend
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #28
  unreachable

CoroEnd:                                          ; preds = %AfterCoroSuspend
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #21 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #24 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { noreturn nounwind }
attributes #29 = { builtin nounwind }
attributes #30 = { nounwind }
attributes #31 = { noreturn }
attributes #32 = { builtin allocsize(0) }
attributes #33 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}
!llvm.errno.tbaa = !{!142}

!0 = distinct !{null}
!1 = distinct !{ptr @_ZN5folly4coro9TransportD2Ev, null}
!2 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !407, line: 565, size: 384, flags: DIFlagFwdDecl, identifier: "_ZTS8addrinfo")
!3 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !408, line: 196, size: 1024, flags: DIFlagTypePassByValue, elements: !415, identifier: "_ZTS16sockaddr_storage")
!4 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_un", file: !416, line: 29, size: 880, flags: DIFlagTypePassByValue, elements: !422, identifier: "_ZTS11sockaddr_un")
!5 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6, file: !423, line: 223, size: 128, flags: DIFlagTypePassByValue, elements: !450, identifier: "_ZTSN8in6_addrUt_E")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !423, line: 221, size: 128, flags: DIFlagTypePassByValue, elements: !434, identifier: "_ZTS8in6_addr")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !423, line: 262, size: 224, flags: DIFlagTypePassByValue, elements: !432, identifier: "_ZTS12sockaddr_in6")
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !423, line: 31, size: 32, flags: DIFlagTypePassByValue, elements: !459, identifier: "_ZTS7in_addr")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !423, line: 247, size: 128, flags: DIFlagTypePassByValue, elements: !456, identifier: "_ZTS11sockaddr_in")
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NetworkSocket", scope: !187, file: !460, line: 32, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !480, identifier: "_ZTSN5folly13NetworkSocketE")
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_cv<const char>", scope: !206, file: !555, line: 1542, size: 8, flags: DIFlagTypePassByValue, elements: !682, templateParams: !684, identifier: "_ZTSSt9remove_cvIKcE")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, folly::Range<const char *>, folly::Range<const char *> >", scope: !206, file: !555, line: 2240, size: 8, flags: DIFlagTypePassByValue, elements: !682, templateParams: !688, identifier: "_ZTSSt11conditionalILb0EN5folly5RangeIPKcEES4_E")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__add_lvalue_reference_helper<const char, void>", scope: !206, file: !555, line: 1067, size: 8, flags: DIFlagTypePassByValue, elements: !682, templateParams: !690, identifier: "_ZTSSt29__add_lvalue_reference_helperIKcvE")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "add_lvalue_reference<const char>", scope: !206, file: !555, line: 1629, size: 8, flags: DIFlagTypePassByValue, elements: !682, templateParams: !684, identifier: "_ZTSSt20add_lvalue_referenceIKcE")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional_<true>", scope: !691, file: !554, line: 835, size: 8, flags: DIFlagTypePassByValue, elements: !682, templateParams: !693, identifier: "_ZTSN5folly6detail12conditional_ILb1EEE")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<const char *>", scope: !206, file: !546, line: 198, size: 8, flags: DIFlagTypePassByValue, elements: !682, templateParams: !695, identifier: "_ZTSSt15iterator_traitsIPKcE")
!17 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Range<const char *>", scope: !187, file: !275, line: 256, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !681, templateParams: !697, identifier: "_ZTSN5folly5RangeIPKcEE")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !408, line: 183, size: 128, flags: DIFlagTypePassByValue, elements: !703, identifier: "_ZTS8sockaddr")
!19 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "IPAddress", scope: !187, file: !704, line: 54, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly9IPAddressE")
!20 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >", scope: !206, file: !1133, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE")
!21 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >", scope: !206, file: !1133, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE")
!22 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<char>", scope: !206, file: !1134, line: 45, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16initializer_listIcE")
!23 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<const char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >", scope: !1135, file: !1133, line: 1047, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1183, templateParams: !1185, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE")
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<char *>", scope: !206, file: !546, line: 198, size: 8, flags: DIFlagTypePassByValue, elements: !682, templateParams: !1236, identifier: "_ZTSSt15iterator_traitsIPcE")
!25 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >", scope: !1135, file: !1133, line: 1047, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1234, templateParams: !1237, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE")
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sv_wrapper", scope: !39, file: !705, line: 160, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12__sv_wrapperE")
!27 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<const char *>", scope: !206, file: !1133, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIPKcE")
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !206, file: !1386, line: 337, size: 8, flags: DIFlagTypePassByValue, elements: !1434, templateParams: !1435, identifier: "_ZTSSt11char_traitsIcE")
!29 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string_view<char, std::char_traits<char> >", scope: !206, file: !1238, line: 106, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1382, templateParams: !1385, identifier: "_ZTSSt17basic_string_viewIcSt11char_traitsIcEE")
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1512, line: 26, size: 128, flags: DIFlagTypePassByValue, elements: !1516, identifier: "_ZTS5iovec")
!31 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__new_allocator<iovec>", scope: !206, file: !1459, line: 63, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1511, templateParams: !1518, identifier: "_ZTSSt15__new_allocatorI5iovecE")
end_hunk_1
