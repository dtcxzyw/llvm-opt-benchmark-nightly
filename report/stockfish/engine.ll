Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/engine?download=true
inline.NumInlined: 3406
inline.NumDeleted: 1747
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0
@.str.10 = private unnamed_addr constant [8 x i8] c"Threads\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Clear Hash\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"Ponder\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"MultiPV\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"Skill Level\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Move Overhead\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"nodestime\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"UCI_Chess960\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"UCI_LimitStrength\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"UCI_Elo\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"UCI_ShowWDL\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"SyzygyPath\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"SyzygyProbeDepth\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"Syzygy50MoveRule\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"SyzygyProbeLimit\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"EvalFileSmall\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"hardware\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"Network replica \00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"No allocation.\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"Local memory.\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"Shared memory.\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"Unknown status.\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c" \00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.38 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"Available processors: \00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"Using \00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c" threads\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c" thread\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c" with NUMA node thread binding: \00", align 1
@_ZTIN9Stockfish18NumaReplicatedBaseE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN9Stockfish18NumaReplicatedBaseE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN9Stockfish18NumaReplicatedBaseE = linkonce_odr dso_local constant [33 x i8] c"N9Stockfish18NumaReplicatedBaseE\00", comdat, align 1
@_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E = linkonce_odr dso_local global %"class.std::vector.136" zeroinitializer, comdat, align 8
@_ZGVN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E = linkonce_odr dso_local global i64 0, comdat($_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E), align 8
@.str.47 = private unnamed_addr constant [28 x i8] c"/sys/devices/system/cpu/cpu\00", align 1
@.str.48 = private unnamed_addr constant [30 x i8] c"/cache/index3/shared_cpu_list\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"basic_string_view::substr\00", align 1
@.str.53 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1
@.str.54 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"map::at\00", align 1
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@.str.56 = private unnamed_addr constant [32 x i8] c"/sys/devices/system/node/online\00", align 1
@.str.57 = private unnamed_addr constant [30 x i8] c"/sys/devices/system/node/node\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"/cpulist\00", align 1
@.str.60 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.61 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZN9StockfishL17DefaultNumaPolicyE = internal constant { %"union.std::__detail::__variant::_Variadic_union", i8 } { %"union.std::__detail::__variant::_Variadic_union" { %"union.std::__detail::__variant::_Variadic_union.62" { %"union.std::__detail::__variant::_Variadic_union.64" { %"struct.std::__detail::__variant::_Uninitialized.65" { %"struct.Stockfish::BundledL3Policy" { i64 32 } } } } }, i8 2 }, align 8
@__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@.str.63 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@_ZTVN9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEE, ptr @_ZN9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE22on_numa_config_changedEv, ptr @_ZN9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEED2Ev, ptr @_ZN9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEED0Ev] }, comdat, align 8, !type !0, !type !1, !type !2, !type !3
@_ZTIN9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEE, ptr @_ZTIN9Stockfish18NumaReplicatedBaseE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEE = linkonce_odr dso_local constant [68 x i8] c"N9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEE\00", comdat, align 1
@_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNS3_28LazyNumaReplicatedSystemWideINS3_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS9_St14default_deleteIS9_EEEUlvE_EEvmOT_EUlvE_EEEEEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNS3_28LazyNumaReplicatedSystemWideINS3_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS9_St14default_deleteIS9_EEEUlvE_EEvmOT_EUlvE_EEEEEE, ptr @_ZNSt6thread6_StateD2Ev, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNS3_28LazyNumaReplicatedSystemWideINS3_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS9_St14default_deleteIS9_EEEUlvE_EEvmOT_EUlvE_EEEEED0Ev, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNS3_28LazyNumaReplicatedSystemWideINS3_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS9_St14default_deleteIS9_EEEUlvE_EEvmOT_EUlvE_EEEEE6_M_runEv] }, comdat, align 8, !type !4, !type !5, !type !6, !type !7
@_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNS3_28LazyNumaReplicatedSystemWideINS3_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS9_St14default_deleteIS9_EEEUlvE_EEvmOT_EUlvE_EEEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNS3_28LazyNumaReplicatedSystemWideINS3_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS9_St14default_deleteIS9_EEEUlvE_EEvmOT_EUlvE_EEEEEE, ptr @_ZTINSt6thread6_StateE }, comdat, align 8
@_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNS3_28LazyNumaReplicatedSystemWideINS3_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS9_St14default_deleteIS9_EEEUlvE_EEvmOT_EUlvE_EEEEEE = linkonce_odr dso_local constant [250 x i8] c"NSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNS3_28LazyNumaReplicatedSystemWideINS3_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS9_St14default_deleteIS9_EEEUlvE_EEvmOT_EUlvE_EEEEEE\00", comdat, align 1
@_ZTINSt6thread6_StateE = external constant ptr
@.str.64 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@_ZTVN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEE = linkonce_odr dso_local constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEE, ptr @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEED2Ev, ptr @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEED0Ev, ptr @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE5closeEb, ptr @_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE4nameB5cxx11Ev] }, comdat, align 8, !type !8, !type !9, !type !10, !type !11, !type !12, !type !13
@_ZTIN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEE, ptr @_ZTIN9Stockfish3shm6detail16SharedMemoryBaseE }, comdat, align 8
@_ZTSN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEE = linkonce_odr dso_local constant [56 x i8] c"N9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEE\00", comdat, align 1
@_ZTIN9Stockfish3shm6detail16SharedMemoryBaseE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN9Stockfish3shm6detail16SharedMemoryBaseE }, comdat, align 8
@_ZTSN9Stockfish3shm6detail16SharedMemoryBaseE = linkonce_odr dso_local constant [42 x i8] c"N9Stockfish3shm6detail16SharedMemoryBaseE\00", comdat, align 1
@_ZN9Stockfish3shm6detail20SharedMemoryRegistry15registry_mutex_E = linkonce_odr dso_local global { %union.pthread_mutex_t } zeroinitializer, comdat, align 8
@.str.66 = private unnamed_addr constant [9 x i8] c"/dev/shm\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"/dev/shm/\00", align 1
@.str.69 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.72 = private unnamed_addr constant [21 x i8] c"Local\\sf_%zu$%zu$%zu\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"/sf_\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"/proc/self/exe\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"%016lx\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"sfshm_%016lu\00", align 1
@_ZN9Stockfish3shm6detail12CleanupHooks14register_once_E = linkonce_odr dso_local global %"struct.std::once_flag" zeroinitializer, comdat, align 4
@_ZSt15__once_callable = external thread_local local_unnamed_addr global ptr, align 8
@_ZSt11__once_call = external thread_local local_unnamed_addr global ptr, align 8
@.str.77 = private unnamed_addr constant [16 x i8] c"/dev/shm/%s.%ld\00", align 1
@"_ZTIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0" }, align 8
@"_ZTSZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0" = internal constant [93 x i8] c"ZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0\00", align 1
@"_ZTIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_1" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_1" }, align 8
@"_ZTSZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_1" = internal constant [93 x i8] c"ZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_1\00", align 1
@"_ZTIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_2" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_2" }, align 8
@"_ZTSZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_2" = internal constant [93 x i8] c"ZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_2\00", align 1
@"_ZTIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_3" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_3" }, align 8
@"_ZTSZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_3" = internal constant [93 x i8] c"ZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_3\00", align 1
@"_ZTIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_4" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_4" }, align 8
@"_ZTSZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_4" = internal constant [93 x i8] c"ZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_4\00", align 1
@"_ZTIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_5" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_5" }, align 8
@"_ZTSZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_5" = internal constant [93 x i8] c"ZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_5\00", align 1
@"_ZTIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_6" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_6" }, align 8
@"_ZTSZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_6" = internal constant [93 x i8] c"ZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_6\00", align 1
@"_ZTIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_7" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_7" }, align 8
@"_ZTSZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_7" = internal constant [93 x i8] c"ZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_7\00", align 1
@.str.81 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.82 = private unnamed_addr constant [30 x i8] c"Shared memory not initialized\00", align 1
@.str.83 = private unnamed_addr constant [26 x i8] c"Shared memory is not open\00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c"Not initialized\00", align 1
@.str.85 = private unnamed_addr constant [66 x i8] c"Shared memory not supported by the OS. Local allocation fallback.\00", align 1
@_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external constant { [5 x ptr], [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external constant { [4 x ptr] }, align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@llvm.global_ctors = appending global [3 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.46, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN9Stockfish17SYSTEM_THREADS_NBE }, { i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_engine.cpp, ptr null }]
@llvm.used = appending global [2 x ptr] [ptr @_ZN9Stockfish17SYSTEM_THREADS_NBE, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E], section "llvm.metadata"

@_ZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN9Stockfish6EngineC2ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" comdat($_ZN9Stockfish17SYSTEM_THREADS_NBE) {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVN9Stockfish17SYSTEM_THREADS_NBE acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVN9Stockfish17SYSTEM_THREADS_NBE) #28
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef i32 @_ZNSt6thread20hardware_concurrencyEv() #28
  %i.e = tail call i32 @llvm.umax.i32(i32 %i.d, i32 1)
  %.sroa.speculated = zext i32 %i.e to i64
  store i64 %.sroa.speculated, ptr @_ZN9Stockfish17SYSTEM_THREADS_NBE, align 8, !tbaa !25
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN9Stockfish17SYSTEM_THREADS_NBE) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVN9Stockfish17SYSTEM_THREADS_NBE) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish20get_process_affinityEv(ptr dead_on_unwind noalias writable sret(%"class.std::set") align 8 %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i32 0, ptr %i.a, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i64 0, ptr %i.e, align 8, !tbaa !36
  %i.f = tail call ptr @__sched_cpualloc(i64 noundef 65536) #28 ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @exit(i32 noundef 1) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.f, i8 0, i64 8192, i1 false)
  %i.h = tail call i32 @sched_getaffinity(i32 noundef 0, i64 noundef 8192, ptr noundef nonnull %i.f) #28
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__sched_cpufree(ptr noundef nonnull %i.f) #28
  tail call void @exit(i32 noundef 1) #29
  unreachable

bb.e:                                             ; preds = %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit
  tail call void @__sched_cpufree(ptr noundef nonnull %i.f) #28
  ret void

.preheader:                                       ; preds = %bb.c, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit
  %storemerge19 = phi i64 [ %i.ad, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit ], [ 0, %bb.c ] ; 7 uses
  %i.i = and i64 %storemerge19, 63
  %i.j = lshr i64 %storemerge19, 6
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !25
  %1 = shl nuw i64 1, %i.i
  %2 = and i64 %i.l, %1
  %.not13 = icmp eq i64 %2, 0
  br i1 %.not13, label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit, label %bb.f

bb.f:                                             ; preds = %.preheader
  %.02022.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !37 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %bb.f ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !25   ; 2 uses
  %i.o = icmp ult i64 %storemerge19, %i.n         ; 2 uses
  %.in.v.i.i.i = select i1 %i.o, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !38

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.o, label %._crit_edge.thread.i.i.i, label %bb.h

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.f
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.a, %bb.f ] ; 4 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.q = icmp eq ptr %.019.lcssa29.i.i.i, %i.p
  br i1 %i.q, label %select.unfold.i.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.r = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #30
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  %i.s = phi i64 [ %.pre.i.i, %bb.g ], [ %i.n, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.g ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.t = icmp ult i64 %i.s, %storemerge19
  br i1 %i.t, label %select.unfold.i.i, label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit

select.unfold.i.i:                                ; preds = %bb.h, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.h ] ; 3 uses
  %i.u = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.a
  br i1 %i.u, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %select.unfold.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !25
  %i.x = icmp ult i64 %storemerge19, %i.w
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.i, %select.unfold.i.i
  %i.y = phi i1 [ %i.x, %bb.i ], [ true, %select.unfold.i.i ]
  %i.z = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store i64 %storemerge19, ptr %i.aa, align 8, !tbaa !25
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.y, ptr noundef nonnull %i.z, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #28
  %i.ab = load i64, ptr %i.e, align 8, !tbaa !36
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.e, align 8, !tbaa !36
  br label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit

_ZNSt3setImSt4lessImESaImEE6insertERKm.exit:      ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, %bb.h, %.preheader
  %i.ad = add nuw nsw i64 %storemerge19, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, 65536
  br i1 %exitcond.not, label %bb.e, label %.preheader, !llvm.loop !40
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3setImSt4lessImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  tail call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish18NumaReplicatedBaseD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #32
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6EngineC2ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(1680) %0, ptr nofree noundef readonly align 8 captures(none) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.Stockfish::NumaConfig", align 16 ; 16 uses
  %4 = alloca %"class.std::unique_ptr.71", align 8 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %8 = alloca %"class.std::function.79", align 8  ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %11 = alloca %"class.std::function.79", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %14 = alloca %"class.std::function.79", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %17 = alloca %"class.std::function.79", align 8 ; 7 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %20 = alloca %"class.std::function.79", align 8 ; 7 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %23 = alloca %"class.std::function.79", align 8 ; 5 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %25 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %26 = alloca %"class.std::function.79", align 8 ; 5 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %29 = alloca %"class.std::function.79", align 8 ; 5 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %32 = alloca %"class.std::function.79", align 8 ; 5 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %34 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %35 = alloca %"class.std::function.79", align 8 ; 5 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %37 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %38 = alloca %"class.std::function.79", align 8 ; 5 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %40 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %41 = alloca %"class.std::function.79", align 8 ; 5 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %43 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %44 = alloca %"class.std::function.79", align 8 ; 5 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %46 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %47 = alloca %"class.std::function.79", align 8 ; 5 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %49 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %50 = alloca %"class.std::function.79", align 8 ; 6 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %52 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %53 = alloca %"class.std::function.79", align 8 ; 5 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %55 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %56 = alloca %"class.std::function.79", align 8 ; 5 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %58 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %59 = alloca %"class.std::function.79", align 8 ; 5 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %61 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %62 = alloca %"class.std::function.79", align 8 ; 7 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %64 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %65 = alloca %"class.std::function.79", align 8 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i8, ptr %i.g, align 8, !tbaa !41, !range !44, !noundef !45
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %._crit_edge.i.i12

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !46
  %i.k = load ptr, ptr %1, align 8, !tbaa !49     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !51   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  store i64 %i.m, ptr %i.f, align 8, !tbaa !25
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) #28 ; 2 uses
  store ptr %i.o, ptr %2, align 8, !tbaa !49
  %i.p = load i64, ptr %i.f, align 8, !tbaa !25
  store i64 %i.p, ptr %i.j, align 8, !tbaa !52
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.o, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  switch i64 %i.m, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %.critedge6
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %i.k, align 1, !tbaa !52
  store i8 %i.r, ptr %i.q, align 1, !tbaa !52
  br label %.critedge6

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %.critedge6

end_hunk_0
